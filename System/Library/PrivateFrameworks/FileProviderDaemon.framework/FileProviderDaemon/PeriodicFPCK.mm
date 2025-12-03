@interface PeriodicFPCK
- (void)saveCheckpointWithReport:(id)report;
- (void)shouldPauseWithCompletion:(id)completion;
@end

@implementation PeriodicFPCK

- (void)shouldPauseWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  _Block_copy(v3);

  sub_1CF702014(v4, v3);
  _Block_release(v3);
  _Block_release(v3);
}

- (void)saveCheckpointWithReport:(id)report
{
  v4 = *&self->saveCheckpoint[13];
  v3 = *&self->diagnosticsManager[5];
  reportCopy = report;

  v4(reportCopy);
}

@end