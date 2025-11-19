@interface MLMultiArray
- (id)convert1dMLMultiArrayToNSArray;
@end

@implementation MLMultiArray

- (id)convert1dMLMultiArrayToNSArray
{
  v3 = +[NSMutableArray array];
  v4 = [(MLMultiArray *)self shape];
  v5 = [v4 lastObject];
  v6 = [v5 unsignedIntegerValue];

  if (v6)
  {
    for (i = 0; i != v6; ++i)
    {
      v8 = [(MLMultiArray *)self objectAtIndexedSubscript:i];
      [v3 addObject:v8];
    }
  }

  return v3;
}

@end