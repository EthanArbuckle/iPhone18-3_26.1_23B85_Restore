@interface PeriodicFPCK
- (void)saveCheckpointWithReport:(id)a3;
- (void)shouldPauseWithCompletion:(id)a3;
@end

@implementation PeriodicFPCK

- (void)shouldPauseWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
  _Block_copy(v3);

  sub_1CF702014(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)saveCheckpointWithReport:(id)a3
{
  v4 = *&self->saveCheckpoint[13];
  v3 = *&self->diagnosticsManager[5];
  v5 = a3;

  v4(v5);
}

@end