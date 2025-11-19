@interface FBMutableProcessExecutionContext
- (id)copyWithZone:(_NSZone *)a3;
@end

@implementation FBMutableProcessExecutionContext

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [FBProcessExecutionContext allocWithZone:a3];

  return [(FBProcessExecutionContext *)v4 _initWithExecutionContext:self];
}

@end