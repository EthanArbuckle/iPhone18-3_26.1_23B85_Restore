@interface HDCloudSyncShimProvider
- (HDCloudSyncShimProvider)initWithProfile:(id)profile;
@end

@implementation HDCloudSyncShimProvider

- (HDCloudSyncShimProvider)initWithProfile:(id)profile
{
  profileCopy = profile;
  v20.receiver = self;
  v20.super_class = HDCloudSyncShimProvider;
  v5 = [(HDCloudSyncShimProvider *)&v20 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_profile, profileCopy);
    v7 = [[HDCloudSyncSummarySharingEntryShim alloc] initWithProfile:profileCopy];
    summarySharingEntryShim = v6->_summarySharingEntryShim;
    v6->_summarySharingEntryShim = v7;

    v9 = [[HDCloudSyncSharedSummariesShim alloc] initWithProfile:profileCopy];
    sharedSummariesShim = v6->_sharedSummariesShim;
    v6->_sharedSummariesShim = v9;

    v11 = [[HDCloudSyncStateSyncShim alloc] initWithProfile:profileCopy];
    stateSyncShim = v6->_stateSyncShim;
    v6->_stateSyncShim = v11;

    v13 = [[HDCloudSyncProfileManagementShim alloc] initWithProfile:profileCopy];
    profileManagementShim = v6->_profileManagementShim;
    v6->_profileManagementShim = v13;

    v15 = [[HDCloudSyncSharedSummariesShim alloc] initWithProfile:profileCopy];
    v16 = v6->_sharedSummariesShim;
    v6->_sharedSummariesShim = v15;

    v17 = [[HDCloudSyncContextSyncShim alloc] initWithProfile:profileCopy];
    contextSyncShim = v6->_contextSyncShim;
    v6->_contextSyncShim = v17;
  }

  return v6;
}

@end