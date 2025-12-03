@interface NSArray
- (void)mb_enumerateFirstAndLastNObjects:(int64_t)objects fromIndex:(int64_t)index block:(id)block;
@end

@implementation NSArray

- (void)mb_enumerateFirstAndLastNObjects:(int64_t)objects fromIndex:(int64_t)index block:(id)block
{
  blockCopy = block;
  v8 = [(NSArray *)self count];
  v9 = v8;
  if (objects >= 1 && v8 > index)
  {
    v10 = 1;
    do
    {
      v11 = [(NSArray *)self objectAtIndexedSubscript:index];
      blockCopy[2](blockCopy, v11, index);

      if (++index >= v9)
      {
        break;
      }
    }

    while (v10++ < objects);
  }

  if (index <= v9 - objects)
  {
    index = v9 - objects;
  }

  if (index < v9)
  {
    do
    {
      v13 = [(NSArray *)self objectAtIndexedSubscript:index];
      blockCopy[2](blockCopy, v13, index);

      ++index;
    }

    while (v9 != index);
  }
}

@end