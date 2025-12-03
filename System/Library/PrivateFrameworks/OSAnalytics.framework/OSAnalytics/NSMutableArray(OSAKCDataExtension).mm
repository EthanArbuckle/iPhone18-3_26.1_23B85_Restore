@interface NSMutableArray(OSAKCDataExtension)
- (id)parent;
- (id)pop;
@end

@implementation NSMutableArray(OSAKCDataExtension)

- (id)pop
{
  lastObject = [self lastObject];
  [self removeLastObject];

  return lastObject;
}

- (id)parent
{
  v2 = [self count];
  if (v2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [self objectAtIndex:v2 - 2];
  }

  return v3;
}

@end