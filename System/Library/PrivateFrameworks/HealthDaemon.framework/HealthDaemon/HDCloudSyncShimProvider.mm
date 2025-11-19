@interface HDCloudSyncShimProvider
- (HDCloudSyncShimProvider)initWithProfile:(id)a3;
@end

@implementation HDCloudSyncShimProvider

- (HDCloudSyncShimProvider)initWithProfile:(id)a3
{
  v4 = a3;
  v20.receiver = self;
  v20.super_class = HDCloudSyncShimProvider;
  v5 = [(HDCloudSyncShimProvider *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, v4);
    v7 = [[HDCloudSyncSummarySharingEntryShim alloc] initWithProfile:v4];
    summarySharingEntryShim = v6->_summarySharingEntryShim;
    v6->_summarySharingEntryShim = v7;

    v9 = [[HDCloudSyncSharedSummariesShim alloc] initWithProfile:v4];
    sharedSummariesShim = v6->_sharedSummariesShim;
    v6->_sharedSummariesShim = v9;

    v11 = [[HDCloudSyncStateSyncShim alloc] initWithProfile:v4];
    stateSyncShim = v6->_stateSyncShim;
    v6->_stateSyncShim = v11;

    v13 = [[HDCloudSyncProfileManagementShim alloc] initWithProfile:v4];
    profileManagementShim = v6->_profileManagementShim;
    v6->_profileManagementShim = v13;

    v15 = [[HDCloudSyncSharedSummariesShim alloc] initWithProfile:v4];
    v16 = v6->_sharedSummariesShim;
    v6->_sharedSummariesShim = v15;

    v17 = [[HDCloudSyncContextSyncShim alloc] initWithProfile:v4];
    contextSyncShim = v6->_contextSyncShim;
    v6->_contextSyncShim = v17;
  }

  return v6;
}

@end