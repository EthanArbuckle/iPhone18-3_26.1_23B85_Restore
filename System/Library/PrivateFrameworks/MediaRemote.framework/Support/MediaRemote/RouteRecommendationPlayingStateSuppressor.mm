@interface RouteRecommendationPlayingStateSuppressor
- (id)suppressionPolicyWithContext:(id)context;
@end

@implementation RouteRecommendationPlayingStateSuppressor

- (id)suppressionPolicyWithContext:(id)context
{
  contextCopy = context;

  v4 = sub_100359E60(contextCopy);

  return v4;
}

@end