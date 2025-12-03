@interface NSMutableOrderedSet(PKSetAdditions)
- (void)pk_safelyAddObject:()PKSetAdditions;
@end

@implementation NSMutableOrderedSet(PKSetAdditions)

- (void)pk_safelyAddObject:()PKSetAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end