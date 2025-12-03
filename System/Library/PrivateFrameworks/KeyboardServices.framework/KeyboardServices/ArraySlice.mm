@interface ArraySlice
- (ArraySlice)initWithArray:(id)array offset:(unint64_t)offset count:(unint64_t)count;
- (id)objectAtIndex:(unint64_t)index;
@end

@implementation ArraySlice

- (ArraySlice)initWithArray:(id)array offset:(unint64_t)offset count:(unint64_t)count
{
  arrayCopy = array;
  v13.receiver = self;
  v13.super_class = ArraySlice;
  v10 = [(ArraySlice *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_array, array);
    v11->_offset = offset;
    v11->_count = count;
  }

  return v11;
}

- (id)objectAtIndex:(unint64_t)index
{
  count = self->_count;
  if (count <= index)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    index = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to index beyond end of array. Count of items is %lu, index is %lu", count, index];
    v9 = [v6 exceptionWithName:v7 reason:index userInfo:0];

    [v9 raise];
  }

  array = self->_array;
  v11 = self->_offset + index;

  return [(NSArray *)array objectAtIndexedSubscript:v11];
}

@end