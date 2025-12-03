@interface FBMutableProcessExecutionContext
- (id)copyWithZone:(_NSZone *)zone;
@end

@implementation FBMutableProcessExecutionContext

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [FBProcessExecutionContext allocWithZone:zone];

  return [(FBProcessExecutionContext *)v4 _initWithExecutionContext:self];
}

@end