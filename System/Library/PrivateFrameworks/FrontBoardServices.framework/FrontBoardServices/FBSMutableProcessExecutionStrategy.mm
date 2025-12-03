@interface FBSMutableProcessExecutionStrategy
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FBSMutableProcessExecutionStrategy

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [[FBSProcessExecutionStrategy allocWithZone:?]];
  [(FBSProcessExecutionStrategy *)v4 setSchedulingPolicy:[(FBSProcessExecutionStrategy *)self schedulingPolicy]];
  [(FBSProcessExecutionStrategy *)v4 setGraphicsPolicy:[(FBSProcessExecutionStrategy *)self graphicsPolicy]];
  [(FBSProcessExecutionStrategy *)v4 setJetsamPolicy:[(FBSProcessExecutionStrategy *)self jetsamPolicy]];
  [(FBSProcessExecutionStrategy *)v4 setReason:[(FBSProcessExecutionStrategy *)self reason]];
  [(FBSProcessExecutionStrategy *)v4 setFlags:[(FBSProcessExecutionStrategy *)self flags]];
  [(FBSProcessExecutionStrategy *)v4 setCustomPolicy:[(FBSProcessExecutionStrategy *)self isCustomPolicy]];
  strategyName = [(FBSProcessExecutionStrategy *)self strategyName];
  [(FBSProcessExecutionStrategy *)v4 setStrategyName:strategyName];

  return v4;
}

@end