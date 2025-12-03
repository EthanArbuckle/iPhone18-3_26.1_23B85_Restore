@interface NSMutableSet(IntentsFoundation)
- (void)if_addObjectIfNonNil:()IntentsFoundation;
@end

@implementation NSMutableSet(IntentsFoundation)

- (void)if_addObjectIfNonNil:()IntentsFoundation
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end