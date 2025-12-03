@interface UIView(ICAccessibility)
- (id)icaxRecursiveSubviewsPassingTest:()ICAccessibility;
@end

@implementation UIView(ICAccessibility)

- (id)icaxRecursiveSubviewsPassingTest:()ICAccessibility
{
  v4 = a3;
  array = [MEMORY[0x277CBEB18] array];
  array2 = [MEMORY[0x277CBEB18] array];
  subviews = [self subviews];
  [array2 addObjectsFromArray:subviews];

  while ([array2 count])
  {
    firstObject = [array2 firstObject];
    [array2 removeObjectAtIndex:0];
    if (v4[2](v4, firstObject))
    {
      [array addObject:firstObject];
    }

    subviews2 = [firstObject subviews];
    [array2 addObjectsFromArray:subviews2];
  }

  v10 = [array copy];

  return v10;
}

@end