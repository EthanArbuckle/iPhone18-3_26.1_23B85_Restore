@interface CEViewBuilders
+ (id)buildRecommendationFlowControllerWithAction:(id)a3;
@end

@implementation CEViewBuilders

+ (id)buildRecommendationFlowControllerWithAction:(id)a3
{
  v3 = objc_alloc_init([a3 detailControllerClass]);
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