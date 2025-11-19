@interface ArraySlice
- (ArraySlice)initWithArray:(id)a3 offset:(unint64_t)a4 count:(unint64_t)a5;
- (id)objectAtIndex:(unint64_t)a3;
@end

@implementation ArraySlice

- (ArraySlice)initWithArray:(id)a3 offset:(unint64_t)a4 count:(unint64_t)a5
{
  v9 = a3;
  v13.receiver = self;
  v13.super_class = ArraySlice;
  v10 = [(ArraySlice *)&v13 init];
  v11 = v10;
  if (v10)
  {
    objc_storeStrong(&v10->_array, a3);
    v11->_offset = a4;
    v11->_count = a5;
  }

  return v11;
}

- (id)objectAtIndex:(unint64_t)a3
{
  count = self->_count;
  if (count <= a3)
  {
    v6 = MEMORY[0x277CBEAD8];
    v7 = *MEMORY[0x277CBE730];
    v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"Attempt to index beyond end of array. Count of items is %lu, index is %lu", count, a3];
    v9 = [v6 exceptionWithName:v7 reason:v8 userInfo:0];

    [v9 raise];
  }

  array = self->_array;
  v11 = self->_offset + a3;

  return [(NSArray *)array objectAtIndexedSubscript:v11];
}

@end