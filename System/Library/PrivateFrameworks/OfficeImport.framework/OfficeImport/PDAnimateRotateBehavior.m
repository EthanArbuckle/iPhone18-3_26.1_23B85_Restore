@interface PDAnimateRotateBehavior
- (PDAnimateRotateBehavior)init;
@end

@implementation PDAnimateRotateBehavior

- (PDAnimateRotateBehavior)init
{
  v3.receiver = self;
  v3.super_class = PDAnimateRotateBehavior;
  return [(PDAnimateBehavior *)&v3 init];
}

@end