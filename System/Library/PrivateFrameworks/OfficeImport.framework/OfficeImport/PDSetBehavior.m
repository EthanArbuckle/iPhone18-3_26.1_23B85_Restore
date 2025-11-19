@interface PDSetBehavior
- (PDSetBehavior)init;
@end

@implementation PDSetBehavior

- (PDSetBehavior)init
{
  v3.receiver = self;
  v3.super_class = PDSetBehavior;
  return [(PDAnimateBehavior *)&v3 init];
}

@end