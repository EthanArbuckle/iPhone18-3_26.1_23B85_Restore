@interface NSMutableSet(DC)
- (void)dc_addNonNilObject:()DC;
- (void)dc_removeNonNilObject:()DC;
@end

@implementation NSMutableSet(DC)

- (void)dc_addNonNilObject:()DC
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

- (void)dc_removeNonNilObject:()DC
{
  if (a3)
  {
    return [self removeObject:?];
  }

  return self;
}

@end