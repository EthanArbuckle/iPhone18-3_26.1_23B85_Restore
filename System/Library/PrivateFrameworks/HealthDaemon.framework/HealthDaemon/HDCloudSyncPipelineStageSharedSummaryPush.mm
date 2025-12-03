@interface HDCloudSyncPipelineStageSharedSummaryPush
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryPush

- (void)main
{
  profile = [(HDCloudSyncOperation *)self profile];
  daemon = [profile daemon];
  behavior = [daemon behavior];
  healthAppHidden = [behavior healthAppHidden];

  v7 = off_27860E030;
  if (!healthAppHidden)
  {
    v7 = off_27860E078;
  }

  v8 = objc_alloc(*v7);
  configuration = [(HDCloudSyncOperation *)self configuration];
  v10 = [v8 initWithConfiguration:configuration cloudState:0];

  [(HDCloudSyncOperation *)self delegateToOperation:v10];
}

@end