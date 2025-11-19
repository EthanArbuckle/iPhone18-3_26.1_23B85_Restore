@interface _ICInputContextFactory
+ (id)lexiconManager;
+ (id)predictionManager;
@end

@implementation _ICInputContextFactory

+ (id)predictionManager
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 addObject:v3];

  v4 = objc_opt_new();
  [v2 addObject:v4];

  if (_os_feature_enabled_impl())
  {
    v5 = objc_opt_new();
    [v2 addObject:v5];
  }

  v6 = [[_ICPredictionManager alloc] initWithPredictionSources:v2];

  return v6;
}

+ (id)lexiconManager
{
  v2 = objc_opt_new();
  v3 = objc_opt_new();
  [v2 addObject:v3];

  v4 = [[_ICLexiconManager alloc] initWithLexiconSources:v2];

  return v4;
}

@end