@interface NSURL(XCallbackDenyList)
- (uint64_t)wf_isAllowedInXCallback;
@end

@implementation NSURL(XCallbackDenyList)

- (uint64_t)wf_isAllowedInXCallback
{
  v2 = [a1 scheme];
  if (!v2)
  {
    return 1;
  }

  v3 = v2;
  v4 = [a1 scheme];
  v5 = [v4 length];

  if (!v5)
  {
    return 1;
  }

  if (WFHighRiskURLSchemes_onceToken != -1)
  {
    dispatch_once(&WFHighRiskURLSchemes_onceToken, &__block_literal_global_9723);
  }

  v6 = WFHighRiskURLSchemes_schemes;
  v7 = [a1 scheme];
  v8 = [v7 lowercaseString];
  v9 = [v6 containsObject:v8];

  v10 = v9 ^ 1u;
  return v10;
}

@end