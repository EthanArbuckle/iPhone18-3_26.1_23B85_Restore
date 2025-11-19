@interface NSArray
- (void)mb_enumerateFirstAndLastNObjects:(int64_t)a3 fromIndex:(int64_t)a4 block:(id)a5;
@end

@implementation NSArray

- (void)mb_enumerateFirstAndLastNObjects:(int64_t)a3 fromIndex:(int64_t)a4 block:(id)a5
{
  v14 = a5;
  v8 = [(NSArray *)self count];
  v9 = v8;
  if (a3 >= 1 && v8 > a4)
  {
    v10 = 1;
    do
    {
      v11 = [(NSArray *)self objectAtIndexedSubscript:a4];
      v14[2](v14, v11, a4);

      if (++a4 >= v9)
      {
        break;
      }
    }

    while (v10++ < a3);
  }

  if (a4 <= v9 - a3)
  {
    a4 = v9 - a3;
  }

  if (a4 < v9)
  {
    do
    {
      v13 = [(NSArray *)self objectAtIndexedSubscript:a4];
      v14[2](v14, v13, a4);

      ++a4;
    }

    while (v9 != a4);
  }
}

@end