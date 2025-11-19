@interface PDAnimateTimeBehavior
- (PDAnimateTimeBehavior)init;
@end

@implementation PDAnimateTimeBehavior

- (PDAnimateTimeBehavior)init
{
  v3.receiver = self;
  v3.super_class = PDAnimateTimeBehavior;
  return [(PDAnimateBehavior *)&v3 init];
}

@end