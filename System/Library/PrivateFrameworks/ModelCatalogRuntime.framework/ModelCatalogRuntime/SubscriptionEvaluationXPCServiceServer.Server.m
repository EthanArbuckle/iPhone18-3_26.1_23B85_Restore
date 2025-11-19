@interface SubscriptionEvaluationXPCServiceServer.Server
- (void)runEvaluationWithReason:(id)a3 with:(id)a4;
@end

@implementation SubscriptionEvaluationXPCServiceServer.Server

- (void)runEvaluationWithReason:(id)a3 with:(id)a4
{
  v5 = _Block_copy(a4);
  v6 = sub_22D8B19FC();
  v8 = v7;
  v9 = swift_allocObject();
  *(v9 + 16) = v5;
  v10 = self;
  sub_22D88571C(v6, v8, sub_22D886550, v9);
}

@end