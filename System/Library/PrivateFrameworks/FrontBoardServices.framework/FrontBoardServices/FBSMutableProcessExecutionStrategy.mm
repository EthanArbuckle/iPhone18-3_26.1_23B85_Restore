@interface FBSMutableProcessExecutionStrategy
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FBSMutableProcessExecutionStrategy

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [[FBSProcessExecutionStrategy allocWithZone:?]];
  [(FBSProcessExecutionStrategy *)v4 setSchedulingPolicy:[(FBSProcessExecutionStrategy *)self schedulingPolicy]];
  [(FBSProcessExecutionStrategy *)v4 setGraphicsPolicy:[(FBSProcessExecutionStrategy *)self graphicsPolicy]];
  [(FBSProcessExecutionStrategy *)v4 setJetsamPolicy:[(FBSProcessExecutionStrategy *)self jetsamPolicy]];
  [(FBSProcessExecutionStrategy *)v4 setReason:[(FBSProcessExecutionStrategy *)self reason]];
  [(FBSProcessExecutionStrategy *)v4 setFlags:[(FBSProcessExecutionStrategy *)self flags]];
  [(FBSProcessExecutionStrategy *)v4 setCustomPolicy:[(FBSProcessExecutionStrategy *)self isCustomPolicy]];
  v5 = [(FBSProcessExecutionStrategy *)self strategyName];
  [(FBSProcessExecutionStrategy *)v4 setStrategyName:v5];

  return v4;
}

@end