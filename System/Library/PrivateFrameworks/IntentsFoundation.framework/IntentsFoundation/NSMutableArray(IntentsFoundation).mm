@interface NSMutableArray(IntentsFoundation)
- (void)if_addObjectIfNonNil:()IntentsFoundation;
@end

@implementation NSMutableArray(IntentsFoundation)

- (void)if_addObjectIfNonNil:()IntentsFoundation
{
  if (a3)
  {
    return [self addObject:?];
  }

  return self;
}

@end