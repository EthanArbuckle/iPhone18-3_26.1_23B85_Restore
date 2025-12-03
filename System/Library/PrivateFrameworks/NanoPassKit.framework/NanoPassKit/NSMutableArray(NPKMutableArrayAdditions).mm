@interface NSMutableArray(NPKMutableArrayAdditions)
- (void)npkSafelyAddObject:()NPKMutableArrayAdditions;
@end

@implementation NSMutableArray(NPKMutableArrayAdditions)

- (void)npkSafelyAddObject:()NPKMutableArrayAdditions
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end