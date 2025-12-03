@interface CEViewBuilders
+ (id)buildRecommendationFlowControllerWithAction:(id)action;
@end

@implementation CEViewBuilders

+ (id)buildRecommendationFlowControllerWithAction:(id)action
{
  v3 = objc_alloc_init([action detailControllerClass]);
  if ([v3 conformsToProtocol:&unk_2856CF720])
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end