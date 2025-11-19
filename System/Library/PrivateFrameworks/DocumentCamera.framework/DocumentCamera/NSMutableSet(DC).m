@interface NSMutableSet(DC)
- (void)dc_addNonNilObject:()DC;
- (void)dc_removeNonNilObject:()DC;
@end

@implementation NSMutableSet(DC)

- (void)dc_addNonNilObject:()DC
{
  if (a3)
  {
    return [a1 addObject:?];
  }

  return a1;
}

- (void)dc_removeNonNilObject:()DC
{
  if (a3)
  {
    return [a1 removeObject:?];
  }

  return a1;
}

@end