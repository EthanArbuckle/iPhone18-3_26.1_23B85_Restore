@interface NSMutableArray(OSAKCDataExtension)
- (id)parent;
- (id)pop;
@end

@implementation NSMutableArray(OSAKCDataExtension)

- (id)pop
{
  v2 = [a1 lastObject];
  [a1 removeLastObject];

  return v2;
}

- (id)parent
{
  v2 = [a1 count];
  if (v2 < 2)
  {
    v3 = 0;
  }

  else
  {
    v3 = [a1 objectAtIndex:v2 - 2];
  }

  return v3;
}

@end