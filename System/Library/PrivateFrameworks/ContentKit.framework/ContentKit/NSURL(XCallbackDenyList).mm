@interface NSURL(XCallbackDenyList)
- (uint64_t)wf_isAllowedInXCallback;
@end

@implementation NSURL(XCallbackDenyList)

- (uint64_t)wf_isAllowedInXCallback
{
  scheme = [self scheme];
  if (!scheme)
  {
    return 1;
  }

  v3 = scheme;
  scheme2 = [self scheme];
  v5 = [scheme2 length];

  if (!v5)
  {
    return 1;
  }

  if (WFHighRiskURLSchemes_onceToken != -1)
  {
    dispatch_once(&WFHighRiskURLSchemes_onceToken, &__block_literal_global_9723);
  }

  v6 = WFHighRiskURLSchemes_schemes;
  scheme3 = [self scheme];
  lowercaseString = [scheme3 lowercaseString];
  v9 = [v6 containsObject:lowercaseString];

  v10 = v9 ^ 1u;
  return v10;
}

@end