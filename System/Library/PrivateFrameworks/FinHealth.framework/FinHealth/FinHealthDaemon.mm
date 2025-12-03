@interface FinHealthDaemon
- (void)didReceiveInsightChangeUpdate:(unint64_t)update completion:(id)completion;
@end

@implementation FinHealthDaemon

- (void)didReceiveInsightChangeUpdate:(unint64_t)update completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  v7[2] = update;
  v7[3] = v6;
  v7[4] = self;

  sub_1000043BC(&unk_10000F370, v7);
}

@end