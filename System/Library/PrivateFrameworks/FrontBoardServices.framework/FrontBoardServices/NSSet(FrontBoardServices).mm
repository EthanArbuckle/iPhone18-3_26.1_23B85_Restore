@interface NSSet(FrontBoardServices)
- (id)fbs_singleLineDescriptionOfBSActions;
@end

@implementation NSSet(FrontBoardServices)

- (id)fbs_singleLineDescriptionOfBSActions
{
  allObjects = [self allObjects];
  v2 = [allObjects bs_map:&__block_literal_global_21];
  v3 = [v2 componentsJoinedByString:{@", "}];

  return v3;
}

@end