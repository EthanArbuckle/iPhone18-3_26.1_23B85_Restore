@interface RouteRecommendationLocalOutputContextSuppressor
- (id)suppressionPolicyWithContext:(id)context;
@end

@implementation RouteRecommendationLocalOutputContextSuppressor

- (id)suppressionPolicyWithContext:(id)context
{
  contextCopy = context;

  v4 = sub_10034E364(contextCopy);

  return v4;
}

@end