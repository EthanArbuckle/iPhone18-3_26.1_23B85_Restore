@interface CHSWidgetRefreshStrategyFactory
+ (CHSWidgetRefreshStrategy)defaultStrategy;
+ (CHSWidgetRefreshStrategy)disabledStrategy;
+ (id)rateLimitedWithPolicyIdentifier:(id)a3;
@end

@implementation CHSWidgetRefreshStrategyFactory

+ (CHSWidgetRefreshStrategy)defaultStrategy
{
  v2 = [[_CHSSimpleWidgetRefreshStrategy alloc] initWithDefaultStrategy];

  return v2;
}

+ (CHSWidgetRefreshStrategy)disabledStrategy
{
  v2 = [[_CHSSimpleWidgetRefreshStrategy alloc] initWithDisabledStrategy];

  return v2;
}

+ (id)rateLimitedWithPolicyIdentifier:(id)a3
{
  v5 = a3;
  if (!v5)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    [v8 handleFailureInMethod:a2 object:a1 file:@"CHSWidgetRefreshStrategy.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [[_CHSSimpleWidgetRefreshStrategy alloc] initWithRateLimitIdentifier:v5];

  return v6;
}

@end