@interface UIView(ICAccessibility)
- (id)icaxRecursiveSubviewsPassingTest:()ICAccessibility;
@end

@implementation UIView(ICAccessibility)

- (id)icaxRecursiveSubviewsPassingTest:()ICAccessibility
{
  v4 = a3;
  v5 = [MEMORY[0x277CBEB18] array];
  v6 = [MEMORY[0x277CBEB18] array];
  v7 = [a1 subviews];
  [v6 addObjectsFromArray:v7];

  while ([v6 count])
  {
    v8 = [v6 firstObject];
    [v6 removeObjectAtIndex:0];
    if (v4[2](v4, v8))
    {
      [v5 addObject:v8];
    }

    v9 = [v8 subviews];
    [v6 addObjectsFromArray:v9];
  }

  v10 = [v5 copy];

  return v10;
}

@end