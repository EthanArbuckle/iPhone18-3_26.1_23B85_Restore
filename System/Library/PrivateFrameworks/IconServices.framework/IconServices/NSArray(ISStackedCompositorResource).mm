@interface NSArray(ISStackedCompositorResource)
- (id)resourceStack;
@end

@implementation NSArray(ISStackedCompositorResource)

- (id)resourceStack
{
  v2 = [MEMORY[0x1E696AE18] predicateWithBlock:&__block_literal_global_3];
  v3 = [a1 filteredArrayUsingPredicate:v2];

  return v3;
}

@end