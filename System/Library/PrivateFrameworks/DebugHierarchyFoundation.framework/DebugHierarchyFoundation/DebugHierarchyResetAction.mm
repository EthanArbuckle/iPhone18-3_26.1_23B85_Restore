@interface DebugHierarchyResetAction
+ (id)resetRequest;
- (void)performInContext:(id)a3;
@end

@implementation DebugHierarchyResetAction

+ (id)resetRequest
{
  v2 = objc_alloc_init(DebugHierarchyResetAction);
  v6 = v2;
  v3 = [NSArray arrayWithObjects:&v6 count:1];
  v4 = [DebugHierarchyRequest requestWithDiscoveryType:0 actions:v3 completion:&__block_literal_global_2];

  [v4 setName:@"Cleanup"];

  return v4;
}

- (void)performInContext:(id)a3
{
  v3 = +[DebugHierarchyTargetHub sharedHub];
  [v3 clearAllRequestsAndData];
}

@end