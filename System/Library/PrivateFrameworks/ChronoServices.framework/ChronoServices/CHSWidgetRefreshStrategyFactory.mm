@interface CHSWidgetRefreshStrategyFactory
+ (CHSWidgetRefreshStrategy)defaultStrategy;
+ (CHSWidgetRefreshStrategy)disabledStrategy;
+ (id)rateLimitedWithPolicyIdentifier:(id)identifier;
@end

@implementation CHSWidgetRefreshStrategyFactory

+ (CHSWidgetRefreshStrategy)defaultStrategy
{
  initWithDefaultStrategy = [[_CHSSimpleWidgetRefreshStrategy alloc] initWithDefaultStrategy];

  return initWithDefaultStrategy;
}

+ (CHSWidgetRefreshStrategy)disabledStrategy
{
  initWithDisabledStrategy = [[_CHSSimpleWidgetRefreshStrategy alloc] initWithDisabledStrategy];

  return initWithDisabledStrategy;
}

+ (id)rateLimitedWithPolicyIdentifier:(id)identifier
{
  identifierCopy = identifier;
  if (!identifierCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetRefreshStrategy.m" lineNumber:27 description:{@"Invalid parameter not satisfying: %@", @"identifier"}];
  }

  v6 = [[_CHSSimpleWidgetRefreshStrategy alloc] initWithRateLimitIdentifier:identifierCopy];

  return v6;
}

@end