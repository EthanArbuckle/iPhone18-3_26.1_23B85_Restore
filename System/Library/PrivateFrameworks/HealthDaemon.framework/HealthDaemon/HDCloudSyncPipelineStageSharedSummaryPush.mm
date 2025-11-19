@interface HDCloudSyncPipelineStageSharedSummaryPush
- (void)main;
@end

@implementation HDCloudSyncPipelineStageSharedSummaryPush

- (void)main
{
  v3 = [(HDCloudSyncOperation *)self profile];
  v4 = [v3 daemon];
  v5 = [v4 behavior];
  v6 = [v5 healthAppHidden];

  v7 = off_27860E030;
  if (!v6)
  {
    v7 = off_27860E078;
  }

  v8 = objc_alloc(*v7);
  v9 = [(HDCloudSyncOperation *)self configuration];
  v10 = [v8 initWithConfiguration:v9 cloudState:0];

  [(HDCloudSyncOperation *)self delegateToOperation:v10];
}

@end