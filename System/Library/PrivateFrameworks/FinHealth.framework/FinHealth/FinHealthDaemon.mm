@interface FinHealthDaemon
- (void)didReceiveInsightChangeUpdate:(unint64_t)a3 completion:(id)a4;
@end

@implementation FinHealthDaemon

- (void)didReceiveInsightChangeUpdate:(unint64_t)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = v6;
  v7[4] = self;

  sub_1000043BC(&unk_10000F370, v7);
}

@end