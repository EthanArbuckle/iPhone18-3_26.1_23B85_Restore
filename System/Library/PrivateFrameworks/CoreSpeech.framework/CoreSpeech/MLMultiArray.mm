@interface MLMultiArray
- (id)convert1dMLMultiArrayToNSArray;
@end

@implementation MLMultiArray

- (id)convert1dMLMultiArrayToNSArray
{
  v3 = +[NSMutableArray array];
  shape = [(MLMultiArray *)self shape];
  lastObject = [shape lastObject];
  unsignedIntegerValue = [lastObject unsignedIntegerValue];

  if (unsignedIntegerValue)
  {
    for (i = 0; i != unsignedIntegerValue; ++i)
    {
      v8 = [(MLMultiArray *)self objectAtIndexedSubscript:i];
      [v3 addObject:v8];
    }
  }

  return v3;
}

@end