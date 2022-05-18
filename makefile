
CXX = g++

SRC_DIR = ./src/
TARGET = main
OBJ = bpt.o main.o

$(TARGET):$(OBJ)
	$(CXX) -o $(TARGET) $(OBJ)
	rm -rf $(OBJ)

bpt.o:
	$(CXX) -std=c++11 -c $(SRC_DIR)bpt.cpp

main.o:
	$(CXX) -std=c++11 -c $(SRC_DIR)main.cpp

clean:
	rm -rf $(OBJ) $(TARGET)
