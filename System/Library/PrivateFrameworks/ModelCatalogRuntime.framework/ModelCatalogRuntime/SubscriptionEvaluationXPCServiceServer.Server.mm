@interface SubscriptionEvaluationXPCServiceServer.Server
- (void)runEvaluationWithReason:(id)reason with:(id)with;
@end

@implementation SubscriptionEvaluationXPCServiceServer.Server

- (void)runEvaluationWithReason:(id)reason with:(id)with
{
  v5 = _Block_copy(with);
  v6 = sub_22D8B19FC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  selfCopy = self;
  sub_22D88571C(v6, v8, sub_22D886550, v9);
}

@end