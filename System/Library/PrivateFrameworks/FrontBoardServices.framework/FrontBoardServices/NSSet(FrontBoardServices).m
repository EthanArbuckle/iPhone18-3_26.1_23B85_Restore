@interface NSSet(FrontBoardServices)
- (id)fbs_singleLineDescriptionOfBSActions;
@end

@implementation NSSet(FrontBoardServices)

- (id)fbs_singleLineDescriptionOfBSActions
{
  v1 = [a1 allObjects];
  v2 = [v1 bs_map:&__block_literal_global_21];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

@end