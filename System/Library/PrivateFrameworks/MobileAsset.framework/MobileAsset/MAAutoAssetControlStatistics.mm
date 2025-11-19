@interface MAAutoAssetControlStatistics
+ (id)allocStringForBytes:(int64_t)a3;
- (MAAutoAssetControlStatistics)initWithCoder:(id)a3;
- (MAAutoAssetControlStatistics)initWithInitialValue:(int64_t)a3;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetControlStatistics

- (MAAutoAssetControlStatistics)initWithInitialValue:(int64_t)a3
{
  v28.receiver = self;
  v28.super_class = MAAutoAssetControlStatistics;
  v4 = [(MAAutoAssetControlStatistics *)&v28 init];
  if (v4)
  {
    v5 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalClientRequests = v4->_totalClientRequests;
    v4->_totalClientRequests = v5;

    v7 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalClientRepliesSuccess = v4->_totalClientRepliesSuccess;
    v4->_totalClientRepliesSuccess = v7;

    v9 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalClientRepliesFailure = v4->_totalClientRepliesFailure;
    v4->_totalClientRepliesFailure = v9;

    v11 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalQueuedClientRequests = v4->_totalQueuedClientRequests;
    v4->_totalQueuedClientRequests = v11;

    v13 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:a3];
    totalDequeuedClientRequests = v4->_totalDequeuedClientRequests;
    v4->_totalDequeuedClientRequests = v13;

    v4->_totalAutoAssetJobsStarted = a3;
    v4->_totalAutoJobsFinished = a3;
    v4->_totalStagerDetermineJobsStarted = a3;
    v4->_totalStagerDetermineJobsFinished = a3;
    v4->_totalStagerDownloadJobsStarted = a3;
    v4->_totalStagerDownloadJobsFinished = a3;
    v4->_totalResumedInFlightJobs = a3;
    v4->_totalSchedulerTriggeredJobs = a3;
    v4->_totalFailuresToStartJobs = a3;
    v15 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    previouslyDownloaded = v4->_previouslyDownloaded;
    v4->_previouslyDownloaded = v15;

    v17 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalDownloaded = v4->_totalDownloaded;
    v4->_totalDownloaded = v17;

    v19 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalStaged = v4->_totalStaged;
    v4->_totalStaged = v19;

    v21 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalUnstaged = v4->_totalUnstaged;
    v4->_totalUnstaged = v21;

    v23 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalPromoted = v4->_totalPromoted;
    v4->_totalPromoted = v23;

    v25 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:a3];
    totalRemoved = v4->_totalRemoved;
    v4->_totalRemoved = v25;

    v4->_finishedJobSchedulerNetworkFailure = a3;
    v4->_finishedJobSchedulerNotNetworkRelated = a3;
    v4->_finishedJobClientNetworkFailure = a3;
    v4->_finishedJobClientNotNetworkRelated = a3;
    *&v4->_garbageCollectionPerformed = 0;
    *&v4->_garbageCollectionTotalReclaimedSpace = 0u;
    *&v4->_garbageCollectionReclaimedV2AssetSpace = 0u;
    *&v4->_garbageCollectionReclaimedUnlockedSpace = 0u;
    *&v4->_garbageCollectionReclaimedLockedOverridableSpace = 0u;
    *&v4->_garbageCollectionReclaimedLockedNeverRemoveSpace = 0u;
    *&v4->_garbageCollectionReclaimedStagedSpace = 0u;
    v4->_garbageCollectionReclaimedMetadataBlockedSpace = 0;
  }

  return v4;
}

- (MAAutoAssetControlStatistics)initWithCoder:(id)a3
{
  v4 = a3;
  v29.receiver = self;
  v29.super_class = MAAutoAssetControlStatistics;
  v5 = [(MAAutoAssetControlStatistics *)&v29 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRequests"];
    totalClientRequests = v5->_totalClientRequests;
    v5->_totalClientRequests = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesSuccess"];
    totalClientRepliesSuccess = v5->_totalClientRepliesSuccess;
    v5->_totalClientRepliesSuccess = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesFailure"];
    totalClientRepliesFailure = v5->_totalClientRepliesFailure;
    v5->_totalClientRepliesFailure = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalQueuedClientRequests"];
    totalQueuedClientRequests = v5->_totalQueuedClientRequests;
    v5->_totalQueuedClientRequests = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDequeuedClientRequests"];
    totalDequeuedClientRequests = v5->_totalDequeuedClientRequests;
    v5->_totalDequeuedClientRequests = v14;

    v5->_totalAutoAssetJobsStarted = [v4 decodeInt64ForKey:@"totalAutoAssetJobsStarted"];
    v5->_totalAutoJobsFinished = [v4 decodeInt64ForKey:@"totalAutoJobsFinished"];
    v5->_totalStagerDetermineJobsStarted = [v4 decodeInt64ForKey:@"totalStagerDetermineJobsStarted"];
    v5->_totalStagerDetermineJobsFinished = [v4 decodeInt64ForKey:@"totalStagerDetermineJobsFinished"];
    v5->_totalStagerDownloadJobsStarted = [v4 decodeInt64ForKey:@"totalStagerDownloadJobsStarted"];
    v5->_totalStagerDownloadJobsFinished = [v4 decodeInt64ForKey:@"totalStagerDownloadJobsFinished"];
    v5->_totalResumedInFlightJobs = [v4 decodeInt64ForKey:@"totalResumedInFlightJobs"];
    v5->_totalSchedulerTriggeredJobs = [v4 decodeInt64ForKey:@"totalSchedulerTriggeredJobs"];
    v5->_totalFailuresToStartJobs = [v4 decodeInt64ForKey:@"totalFailuresToStartJobs"];
    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"previouslyDownloaded"];
    previouslyDownloaded = v5->_previouslyDownloaded;
    v5->_previouslyDownloaded = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalDownloaded"];
    totalDownloaded = v5->_totalDownloaded;
    v5->_totalDownloaded = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalStaged"];
    totalStaged = v5->_totalStaged;
    v5->_totalStaged = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalUnstaged"];
    totalUnstaged = v5->_totalUnstaged;
    v5->_totalUnstaged = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalPromoted"];
    totalPromoted = v5->_totalPromoted;
    v5->_totalPromoted = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"totalRemoved"];
    totalRemoved = v5->_totalRemoved;
    v5->_totalRemoved = v26;

    v5->_finishedJobSchedulerNetworkFailure = [v4 decodeInt64ForKey:@"finishedJobSchedulerNetworkFailure"];
    v5->_finishedJobSchedulerNotNetworkRelated = [v4 decodeInt64ForKey:@"finishedJobSchedulerNotNetworkRelated"];
    v5->_finishedJobClientNetworkFailure = [v4 decodeInt64ForKey:@"finishedJobClientNetworkFailure"];
    v5->_finishedJobClientNotNetworkRelated = [v4 decodeInt64ForKey:@"finishedJobClientNotNetworkRelated"];
    v5->_garbageCollectionPerformed = [v4 decodeBoolForKey:@"garbageCollectionPerformed"];
    v5->_garbageCollectionReclaimSpace = [v4 decodeBoolForKey:@"garbageCollectionReclaimSpace"];
    v5->_garbageCollectionTotalReclaimedSpace = [v4 decodeInt64ForKey:@"garbageCollectionTotalReclaimedSpace"];
    v5->_garbageCollectionReclaimedV2AssetCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetCount"];
    v5->_garbageCollectionReclaimedV2AssetSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetSpace"];
    v5->_garbageCollectionReclaimedUnlockedCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedCount"];
    v5->_garbageCollectionReclaimedUnlockedSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedSpace"];
    v5->_garbageCollectionReclaimedLockedOverridableCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableCount"];
    v5->_garbageCollectionReclaimedLockedOverridableSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableSpace"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveCount"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveSpace"];
    v5->_garbageCollectionReclaimedStagedCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedStagedCount"];
    v5->_garbageCollectionReclaimedStagedSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedStagedSpace"];
    v5->_garbageCollectionReclaimedMetadataBlockedCount = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedCount"];
    v5->_garbageCollectionReclaimedMetadataBlockedSpace = [v4 decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  [v15 encodeObject:v4 forKey:@"totalClientRequests"];

  v5 = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  [v15 encodeObject:v5 forKey:@"totalClientRepliesSuccess"];

  v6 = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  [v15 encodeObject:v6 forKey:@"totalClientRepliesFailure"];

  v7 = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  [v15 encodeObject:v7 forKey:@"totalQueuedClientRequests"];

  v8 = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  [v15 encodeObject:v8 forKey:@"totalDequeuedClientRequests"];

  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalAutoAssetJobsStarted](self forKey:{"totalAutoAssetJobsStarted"), @"totalAutoAssetJobsStarted"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalAutoJobsFinished](self forKey:{"totalAutoJobsFinished"), @"totalAutoJobsFinished"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalStagerDetermineJobsStarted](self forKey:{"totalStagerDetermineJobsStarted"), @"totalStagerDetermineJobsStarted"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalStagerDetermineJobsFinished](self forKey:{"totalStagerDetermineJobsFinished"), @"totalStagerDetermineJobsFinished"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalStagerDownloadJobsStarted](self forKey:{"totalStagerDownloadJobsStarted"), @"totalStagerDownloadJobsStarted"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalStagerDownloadJobsFinished](self forKey:{"totalStagerDownloadJobsFinished"), @"totalStagerDownloadJobsFinished"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalResumedInFlightJobs](self forKey:{"totalResumedInFlightJobs"), @"totalResumedInFlightJobs"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalSchedulerTriggeredJobs](self forKey:{"totalSchedulerTriggeredJobs"), @"totalSchedulerTriggeredJobs"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics totalFailuresToStartJobs](self forKey:{"totalFailuresToStartJobs"), @"totalFailuresToStartJobs"}];
  v9 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  [v15 encodeObject:v9 forKey:@"previouslyDownloaded"];

  v10 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  [v15 encodeObject:v10 forKey:@"totalDownloaded"];

  v11 = [(MAAutoAssetControlStatistics *)self totalStaged];
  [v15 encodeObject:v11 forKey:@"totalStaged"];

  v12 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  [v15 encodeObject:v12 forKey:@"totalUnstaged"];

  v13 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  [v15 encodeObject:v13 forKey:@"totalPromoted"];

  v14 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  [v15 encodeObject:v14 forKey:@"totalRemoved"];

  [v15 encodeInt64:-[MAAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self forKey:{"finishedJobSchedulerNetworkFailure"), @"finishedJobSchedulerNetworkFailure"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self forKey:{"finishedJobSchedulerNotNetworkRelated"), @"finishedJobSchedulerNotNetworkRelated"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics finishedJobClientNetworkFailure](self forKey:{"finishedJobClientNetworkFailure"), @"finishedJobClientNetworkFailure"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self forKey:{"finishedJobClientNotNetworkRelated"), @"finishedJobClientNotNetworkRelated"}];
  [v15 encodeBool:-[MAAutoAssetControlStatistics garbageCollectionPerformed](self forKey:{"garbageCollectionPerformed"), @"garbageCollectionPerformed"}];
  [v15 encodeBool:-[MAAutoAssetControlStatistics garbageCollectionReclaimSpace](self forKey:{"garbageCollectionReclaimSpace"), @"garbageCollectionReclaimSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionTotalReclaimedSpace](self forKey:{"garbageCollectionTotalReclaimedSpace"), @"garbageCollectionTotalReclaimedSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedV2AssetCount](self forKey:{"garbageCollectionReclaimedV2AssetCount"), @"garbageCollectionReclaimedV2AssetCount"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedV2AssetSpace](self forKey:{"garbageCollectionReclaimedV2AssetSpace"), @"garbageCollectionReclaimedV2AssetSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedUnlockedCount](self forKey:{"garbageCollectionReclaimedUnlockedCount"), @"garbageCollectionReclaimedUnlockedCount"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedUnlockedSpace](self forKey:{"garbageCollectionReclaimedUnlockedSpace"), @"garbageCollectionReclaimedUnlockedSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableCount](self forKey:{"garbageCollectionReclaimedLockedOverridableCount"), @"garbageCollectionReclaimedLockedOverridableCount"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableSpace](self forKey:{"garbageCollectionReclaimedLockedOverridableSpace"), @"garbageCollectionReclaimedLockedOverridableSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveCount](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveCount"), @"garbageCollectionReclaimedLockedNeverRemoveCount"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveSpace](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveSpace"), @"garbageCollectionReclaimedLockedNeverRemoveSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedStagedCount](self forKey:{"garbageCollectionReclaimedStagedCount"), @"garbageCollectionReclaimedStagedCount"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedStagedSpace](self forKey:{"garbageCollectionReclaimedStagedSpace"), @"garbageCollectionReclaimedStagedSpace"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedCount](self forKey:{"garbageCollectionReclaimedMetadataBlockedCount"), @"garbageCollectionReclaimedMetadataBlockedCount"}];
  [v15 encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedSpace](self forKey:{"garbageCollectionReclaimedMetadataBlockedSpace"), @"garbageCollectionReclaimedMetadataBlockedSpace"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetControlStatistics);
  v4 = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  v5 = [v4 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalClientRequests:v5];

  v6 = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v7 = [v6 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalClientRepliesSuccess:v7];

  v8 = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v9 = [v8 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalClientRepliesFailure:v9];

  v10 = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v11 = [v10 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalQueuedClientRequests:v11];

  v12 = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v13 = [v12 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalDequeuedClientRequests:v13];

  [(MAAutoAssetControlStatistics *)v3 setTotalAutoAssetJobsStarted:[(MAAutoAssetControlStatistics *)self totalAutoAssetJobsStarted]];
  [(MAAutoAssetControlStatistics *)v3 setTotalAutoJobsFinished:[(MAAutoAssetControlStatistics *)self totalAutoJobsFinished]];
  [(MAAutoAssetControlStatistics *)v3 setTotalStagerDetermineJobsStarted:[(MAAutoAssetControlStatistics *)self totalStagerDetermineJobsStarted]];
  [(MAAutoAssetControlStatistics *)v3 setTotalStagerDetermineJobsFinished:[(MAAutoAssetControlStatistics *)self totalStagerDetermineJobsFinished]];
  [(MAAutoAssetControlStatistics *)v3 setTotalStagerDownloadJobsStarted:[(MAAutoAssetControlStatistics *)self totalStagerDownloadJobsStarted]];
  [(MAAutoAssetControlStatistics *)v3 setTotalStagerDownloadJobsFinished:[(MAAutoAssetControlStatistics *)self totalStagerDownloadJobsFinished]];
  [(MAAutoAssetControlStatistics *)v3 setTotalResumedInFlightJobs:[(MAAutoAssetControlStatistics *)self totalResumedInFlightJobs]];
  [(MAAutoAssetControlStatistics *)v3 setTotalSchedulerTriggeredJobs:[(MAAutoAssetControlStatistics *)self totalSchedulerTriggeredJobs]];
  [(MAAutoAssetControlStatistics *)v3 setTotalFailuresToStartJobs:[(MAAutoAssetControlStatistics *)self totalFailuresToStartJobs]];
  v14 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  v15 = [v14 copy];
  [(MAAutoAssetControlStatistics *)v3 setPreviouslyDownloaded:v15];

  v16 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  v17 = [v16 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalDownloaded:v17];

  v18 = [(MAAutoAssetControlStatistics *)self totalStaged];
  v19 = [v18 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalStaged:v19];

  v20 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  v21 = [v20 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalUnstaged:v21];

  v22 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  v23 = [v22 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalPromoted:v23];

  v24 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  v25 = [v24 copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalRemoved:v25];

  [(MAAutoAssetControlStatistics *)v3 setFinishedJobSchedulerNetworkFailure:[(MAAutoAssetControlStatistics *)self finishedJobSchedulerNetworkFailure]];
  [(MAAutoAssetControlStatistics *)v3 setFinishedJobSchedulerNotNetworkRelated:[(MAAutoAssetControlStatistics *)self finishedJobSchedulerNotNetworkRelated]];
  [(MAAutoAssetControlStatistics *)v3 setFinishedJobClientNetworkFailure:[(MAAutoAssetControlStatistics *)self finishedJobClientNetworkFailure]];
  [(MAAutoAssetControlStatistics *)v3 setFinishedJobClientNotNetworkRelated:[(MAAutoAssetControlStatistics *)self finishedJobClientNotNetworkRelated]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionPerformed:[(MAAutoAssetControlStatistics *)self garbageCollectionPerformed]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionTotalReclaimedSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionTotalReclaimedSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedV2AssetCount:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetCount]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedV2AssetSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedUnlockedCount:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedCount]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedUnlockedSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedOverridableCount:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableCount]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedOverridableSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedNeverRemoveCount:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveCount]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedLockedNeverRemoveSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedStagedCount:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedCount]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedStagedSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedSpace]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedMetadataBlockedCount:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedCount]];
  [(MAAutoAssetControlStatistics *)v3 setGarbageCollectionReclaimedMetadataBlockedSpace:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedSpace]];
  return v3;
}

+ (id)allocStringForBytes:(int64_t)a3
{
  if (!a3)
  {
    return @"0 bytes";
  }

  v4 = @"NEGATIVE ";
  if (a3 < 0)
  {
    v5 = a3 + 0x3FFFFFFF;
  }

  else
  {
    v4 = &stru_1F0C1B388;
    v5 = a3;
  }

  v6 = v4;
  v7 = a3 - (v5 & 0xFFFFFFFFC0000000);
  if (a3 >= (v5 & 0xFFFFFFFFC0000000))
  {
    v8 = a3 - (v5 & 0xFFFFFFFFC0000000);
  }

  else
  {
    v8 = v7 + 0xFFFFF;
  }

  v9 = v7 - (v8 & 0xFFFFFFFFFFF00000);
  if (v7 >= (v8 & 0xFFFFFFFFFFF00000))
  {
    v10 = v7 - (v8 & 0xFFFFFFFFFFF00000);
  }

  else
  {
    v10 = v9 + 1023;
  }

  v11 = v9 - (v10 & 0xFFFFFFFFFFFFFC00);
  if (v11 == 1)
  {
    v12 = @" 1 byte";
  }

  else if (v11 < 2)
  {
    v12 = &stru_1F0C1B388;
  }

  else
  {
    v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@" %lld bytes", v9 - (v10 & 0xFFFFFFFFFFFFFC00)];
  }

  v14 = v8 >> 20;
  if (a3 < 0x40000000)
  {
    if (v7 < 0x100000)
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v9 < 1024)
      {
        v15 = [v16 initWithFormat:@"%@%lld bytes", v6, a3, v18, v19, v20];
      }

      else
      {
        v15 = [v16 initWithFormat:@"%@%lldKB%@", v6, v10 >> 10, v12, v19, v20];
      }
    }

    else
    {
      v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%lldMB %lldKB%@", v6, v14, v10 >> 10, v12, v20];
    }
  }

  else
  {
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%lldGB %lldMB %lldKB%@", &stru_1F0C1B388, v5 >> 30, v14, v10 >> 10, v12];
  }

  v13 = v15;

  return v13;
}

- (id)description
{
  v105[5] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v104[0] = @"totalClientRequests";
  v4 = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  v105[0] = v4;
  v104[1] = @"totalClientRepliesSuccess";
  v5 = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v105[1] = v5;
  v104[2] = @"totalClientRepliesFailure";
  v6 = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v105[2] = v6;
  v104[3] = @"totalQueuedClientRequests";
  v7 = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v105[3] = v7;
  v104[4] = @"totalDequeuedClientRequests";
  v98 = self;
  v8 = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v105[4] = v8;
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v105 forKeys:v104 count:5];

  v102 = 0u;
  v101 = 0u;
  v99 = 0u;
  v100 = 0u;
  v10 = [&unk_1F0C33388 countByEnumeratingWithState:&v99 objects:v103 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v100;
    do
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v100 != v12)
        {
          objc_enumerationMutation(&unk_1F0C33388);
        }

        v14 = *(*(&v99 + 1) + 8 * i);
        v15 = [v9 objectForKeyedSubscript:v14];
        if (v15)
        {
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "interestInContent:", objc_msgSend(v15, "interestInContent")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "checkForNewer:", objc_msgSend(v15, "checkForNewer")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "determineIfAvailable:", objc_msgSend(v15, "determineIfAvailable")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "currentStatus:", objc_msgSend(v15, "currentStatus")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "lockContent:", objc_msgSend(v15, "lockContent")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "continueLockUsage:", objc_msgSend(v15, "continueLockUsage")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "endLockUsage:", objc_msgSend(v15, "endLockUsage")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "endPreviousLocks:", objc_msgSend(v15, "endPreviousLocks")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "endAllPreviousLocks:", objc_msgSend(v15, "endAllPreviousLocks")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stageDetermineAllAvailable:", objc_msgSend(v15, "stageDetermineAllAvailable")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stageDownloadAll:", objc_msgSend(v15, "stageDownloadAll")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stagePurgeAll:", objc_msgSend(v15, "stagePurgeAll")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "stageEraseAll:", objc_msgSend(v15, "stageEraseAll")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "estEvictableBytesForSU:", objc_msgSend(v15, "estimateEvictableBytesForSoftwareUpdate")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "suspendForSU:", objc_msgSend(v15, "suspendForSoftwareUpdate")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "resumeFromSU:", objc_msgSend(v15, "resumeFromSoftwareUpdate")];
          [v3 appendFormat:@"%-27s %27s %-32lld\n", objc_msgSend(v14, "UTF8String"), "suspendResumeStatusForSU:", objc_msgSend(v15, "suspendResumeStatusForSoftwareUpdate")];
          [v3 appendFormat:@"\n"];
        }
      }

      v11 = [&unk_1F0C33388 countByEnumeratingWithState:&v99 objects:v103 count:16];
    }

    while (v11);
  }

  v91 = MEMORY[0x1E696AEC0];
  v90 = [(MAAutoAssetControlStatistics *)v98 totalAutoAssetJobsStarted];
  v88 = [(MAAutoAssetControlStatistics *)v98 totalAutoJobsFinished];
  v87 = [(MAAutoAssetControlStatistics *)v98 totalStagerDetermineJobsStarted];
  v85 = [(MAAutoAssetControlStatistics *)v98 totalStagerDetermineJobsFinished];
  v84 = [(MAAutoAssetControlStatistics *)v98 totalStagerDownloadJobsStarted];
  v82 = [(MAAutoAssetControlStatistics *)v98 totalStagerDownloadJobsFinished];
  v81 = [(MAAutoAssetControlStatistics *)v98 totalResumedInFlightJobs];
  v79 = [(MAAutoAssetControlStatistics *)v98 totalSchedulerTriggeredJobs];
  v78 = [(MAAutoAssetControlStatistics *)v98 totalFailuresToStartJobs];
  v97 = [(MAAutoAssetControlStatistics *)v98 previouslyDownloaded];
  v76 = [v97 patchedAssets];
  v96 = [(MAAutoAssetControlStatistics *)v98 previouslyDownloaded];
  v74 = [v96 patchedBytes];
  v95 = [(MAAutoAssetControlStatistics *)v98 previouslyDownloaded];
  v73 = [v95 fullAssets];
  v94 = [(MAAutoAssetControlStatistics *)v98 previouslyDownloaded];
  v71 = [v94 fullBytes];
  v93 = [(MAAutoAssetControlStatistics *)v98 totalDownloaded];
  v69 = [v93 patchedAssets];
  v92 = [(MAAutoAssetControlStatistics *)v98 totalDownloaded];
  v67 = [v92 patchedBytes];
  v89 = [(MAAutoAssetControlStatistics *)v98 totalDownloaded];
  v66 = [v89 fullAssets];
  v86 = [(MAAutoAssetControlStatistics *)v98 totalDownloaded];
  v64 = [v86 fullBytes];
  v83 = [(MAAutoAssetControlStatistics *)v98 totalStaged];
  v62 = [v83 patchedAssets];
  v80 = [(MAAutoAssetControlStatistics *)v98 totalStaged];
  v60 = [v80 patchedBytes];
  v77 = [(MAAutoAssetControlStatistics *)v98 totalStaged];
  v58 = [v77 fullAssets];
  v75 = [(MAAutoAssetControlStatistics *)v98 totalStaged];
  v57 = [v75 fullBytes];
  v72 = [(MAAutoAssetControlStatistics *)v98 totalUnstaged];
  v55 = [v72 patchedAssets];
  v70 = [(MAAutoAssetControlStatistics *)v98 totalUnstaged];
  v53 = [v70 patchedBytes];
  v68 = [(MAAutoAssetControlStatistics *)v98 totalUnstaged];
  v51 = [v68 fullAssets];
  v65 = [(MAAutoAssetControlStatistics *)v98 totalUnstaged];
  v49 = [v65 fullBytes];
  v63 = [(MAAutoAssetControlStatistics *)v98 totalPromoted];
  v48 = [v63 patchedAssets];
  v61 = [(MAAutoAssetControlStatistics *)v98 totalPromoted];
  v46 = [v61 patchedBytes];
  v59 = [(MAAutoAssetControlStatistics *)v98 totalPromoted];
  v45 = [v59 fullAssets];
  v56 = [(MAAutoAssetControlStatistics *)v98 totalPromoted];
  v44 = [v56 fullBytes];
  v54 = [(MAAutoAssetControlStatistics *)v98 totalRemoved];
  v43 = [v54 patchedAssets];
  v52 = [(MAAutoAssetControlStatistics *)v98 totalRemoved];
  v42 = [v52 patchedBytes];
  v50 = [(MAAutoAssetControlStatistics *)v98 totalRemoved];
  v41 = [v50 fullAssets];
  v47 = [(MAAutoAssetControlStatistics *)v98 totalRemoved];
  v40 = [v47 fullBytes];
  v39 = [(MAAutoAssetControlStatistics *)v98 finishedJobSchedulerNetworkFailure];
  v38 = [(MAAutoAssetControlStatistics *)v98 finishedJobSchedulerNotNetworkRelated];
  v37 = [(MAAutoAssetControlStatistics *)v98 finishedJobClientNetworkFailure];
  v36 = [(MAAutoAssetControlStatistics *)v98 finishedJobClientNotNetworkRelated];
  if ([(MAAutoAssetControlStatistics *)v98 garbageCollectionPerformed])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v34 = v16;
  if ([(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimSpace])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v33 = v17;
  v35 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionTotalReclaimedSpace]];
  v31 = [(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedV2AssetCount];
  v32 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedV2AssetSpace]];
  v29 = [(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedUnlockedCount];
  v30 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedUnlockedSpace]];
  v27 = [(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedLockedOverridableCount];
  v28 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedLockedOverridableSpace]];
  v18 = [(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedLockedNeverRemoveCount];
  v19 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedLockedNeverRemoveSpace]];
  v20 = [(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedStagedCount];
  v21 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedStagedSpace]];
  v22 = [(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedMetadataBlockedCount];
  v23 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)v98 garbageCollectionReclaimedMetadataBlockedSpace]];
  v24 = [v91 stringWithFormat:@">>>\nCategory                    Statistic                   Value\n=========================== =========================== ================================\n%@autoJobs                     totalAutoAssetJobsStarted: %lld\nautoJobs                         totalAutoJobsFinished: %lld\nstagerJobs             totalStagerDetermineJobsStarted: %lld\nstagerJobs            totalStagerDetermineJobsFinished: %lld\nstagerJobs              totalStagerDownloadJobsStarted: %lld\nstagerJobs             totalStagerDownloadJobsFinished: %lld\nresumedInFlightJobs           totalResumedInFlightJobs: %lld\nscheduledJobs              totalSchedulerTriggeredJobs: %lld\nfailuresToStartJobs           totalFailuresToStartJobs: %lld\n\npreviously           previouslyDownloadedPatchedAssets: %lld\npreviously            previouslyDownloadedPatchedBytes: %lld\npreviously              previouslyDownloadedFullAssets: %lld\npreviously               previouslyDownloadedFullBytes: %lld\n\ndownloaded                totalDownloadedPatchedAssets: %lld\ndownloaded                 totalDownloadedPatchedBytes: %lld\ndownloaded                   totalDownloadedFullAssets: %lld\ndownloaded                    totalDownloadedFullBytes: %lld\n\nstaged                        totalStagedPatchedAssets: %lld\nstaged                         totalStagedPatchedBytes: %lld\nstaged                           totalStagedFullAssets: %lld\nstaged                            totalStagedFullBytes: %lld\n\nunstaged                    totalUnstagedPatchedAssets: %lld\nunstaged                     totalUnstagedPatchedBytes: %lld\nunstaged                       totalUnstagedFullAssets: %lld\nunstaged                        totalUnstagedFullBytes: %lld\n\npromoted                    totalPromotedPatchedAssets: %lld\npromoted                     totalPromotedPatchedBytes: %lld\npromoted                       totalPromotedFullAssets: %lld\npromoted                        totalPromotedFullBytes: %lld\n\nremoved                      totalRemovedPatchedAssets: %lld\nremoved                       totalRemovedPatchedBytes: %lld\nremoved                         totalRemovedFullAssets: %lld\nremoved                          totalRemovedFullBytes: %lld\n\nfinishedJobs        finishedJobSchedulerNetworkFailure: %lld\nfinishedJobs     finishedJobSchedulerNotNetworkRelated: %lld\nfinishedJobs           finishedJobClientNetworkFailure: %lld\nfinishedJobs        finishedJobClientNotNetworkRelated: %lld\n\ngarbageColection                             performed: %@\ngarbageColection                          reclaimSpace: %@\ngarbageColection                   totalReclaimedSpace: %@\ngarbageColection                 reclaimedV2AssetCount: %ld\ngarbageColection                 reclaimedV2AssetSpace: %@\ngarbageColection                reclaimedUnlockedCount: %ld\ngarbageColection                reclaimedUnlockedSpace: %@\ngarbageColection       reclaimedLockedOverridableCount: %ld\ngarbageColection       reclaimedLockedOverridableSpace: %@\ngarbageColection       reclaimedLockedNeverRemoveCount: %ld\ngarbageColection       reclaimedLockedNeverRemoveSpace: %@\ngarbageColection                  reclaimedStagedCount: %ld\ngarbageColection                  reclaimedStagedSpace: %@\ngarbageColection         reclaimedMetadataBlockedCount: %ld\ngarbageColection         reclaimedMetadataBlockedSpace: %@\n<<<]", v3, v90, v88, v87, v85, v84, v82, v81, v79, v78, v76, v74, v73, v71, v69, v67, v66, v64, v62, v60, v58, v57, v55, v53, v51, v49, v48, v46, v45, v44, v43, v42, v41, v40, v39, v38, v37, v36, v34, v33, v35, v31, v32, v29, v30, v27, v28, v18, v19, v20, v21, v22, v23];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)summary
{
  v3 = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  v98 = [v3 total];

  v4 = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v97 = [v4 total];

  v5 = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v96 = [v5 total];

  v6 = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v95 = [v6 total];

  v7 = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v94 = [v7 total];

  v59 = [(MAAutoAssetControlStatistics *)self totalAutoAssetJobsStarted];
  v71 = [(MAAutoAssetControlStatistics *)self totalStagerDetermineJobsStarted];
  v90 = [(MAAutoAssetControlStatistics *)self totalStagerDownloadJobsStarted];
  v88 = [(MAAutoAssetControlStatistics *)self totalAutoJobsFinished];
  v86 = [(MAAutoAssetControlStatistics *)self totalStagerDetermineJobsFinished];
  v85 = [(MAAutoAssetControlStatistics *)self totalStagerDownloadJobsFinished];
  v93 = [(MAAutoAssetControlStatistics *)self totalResumedInFlightJobs];
  v92 = [(MAAutoAssetControlStatistics *)self totalSchedulerTriggeredJobs];
  v91 = [(MAAutoAssetControlStatistics *)self totalFailuresToStartJobs];
  v8 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  v84 = [v8 patchedAssets];
  v9 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  v83 = [v9 fullAssets];

  v10 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  v82 = [v10 patchedBytes];
  v11 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  v81 = [v11 fullBytes];

  v12 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  v80 = [v12 patchedAssets];
  v13 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  v78 = [v13 fullAssets];

  v14 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  v79 = [v14 patchedBytes];
  v15 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  v77 = [v15 fullBytes];

  v16 = [(MAAutoAssetControlStatistics *)self totalStaged];
  v75 = [v16 patchedAssets];
  v17 = [(MAAutoAssetControlStatistics *)self totalStaged];
  v73 = [v17 fullAssets];

  v18 = [(MAAutoAssetControlStatistics *)self totalStaged];
  v76 = [v18 patchedBytes];
  v19 = [(MAAutoAssetControlStatistics *)self totalStaged];
  v74 = [v19 fullBytes];

  v20 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  v21 = [v20 patchedAssets];
  v22 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  v69 = [v22 fullAssets];

  v23 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  v72 = [v23 patchedBytes];
  v24 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  v70 = [v24 fullBytes];

  v25 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  v66 = [v25 patchedAssets];
  v26 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  v65 = [v26 fullAssets];

  v27 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  v68 = [v27 patchedBytes];
  v28 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  v67 = [v28 fullBytes];

  v29 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  v61 = [v29 patchedAssets];
  v30 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  v60 = [v30 fullAssets];

  v31 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  v63 = [v31 patchedBytes];
  v32 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  v62 = [v32 fullBytes];

  v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"|jobFinished schedNWFail:%lld, schedOther:%lld, clientNWFail:%lld, clientOther:%lld", -[MAAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self, "finishedJobSchedulerNetworkFailure"), -[MAAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self, "finishedJobSchedulerNotNetworkRelated"), -[MAAutoAssetControlStatistics finishedJobClientNetworkFailure](self, "finishedJobClientNetworkFailure"), -[MAAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self, "finishedJobClientNotNetworkRelated")];
  if ([(MAAutoAssetControlStatistics *)self garbageCollectionPerformed])
  {
    v58 = objc_alloc(MEMORY[0x1E696AEC0]);
    v33 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimSpace];
    v34 = @"garbageDetermined";
    if (v33)
    {
      v34 = @"garbageReclaimed";
    }

    v57 = v34;
    v56 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetCount];
    v55 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetSpace]];
    v54 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedCount];
    v53 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedSpace]];
    v52 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableCount];
    v35 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableSpace]];
    v51 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveCount];
    v36 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveSpace]];
    v37 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedCount];
    v38 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedSpace]];
    v39 = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedCount];
    v40 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedSpace]];
    v41 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionTotalReclaimedSpace]];
    v42 = [v58 initWithFormat:@"|%@ v2Assets:%ld(%@), unlocked:%ld(%@), lockedOverridable:%ld(%@), lockedNeverRemove:%ld(%@), staged:%ld(%@), metadataBlocked:%ld(%@), totalSpace:%@", v57, v56, v55, v54, v53, v52, v35, v51, v36, v37, v38, v39, v40, v41];
  }

  else
  {
    v42 = &stru_1F0C1B388;
  }

  v87 = v86 + v88 + v85;
  v89 = MEMORY[0x1E696AEC0];
  v43 = [MAAutoAssetControlStatistics allocStringForBytes:v81 + v82];
  v44 = [MAAutoAssetControlStatistics allocStringForBytes:v77 + v79];
  v45 = [MAAutoAssetControlStatistics allocStringForBytes:v74 + v76];
  v46 = [MAAutoAssetControlStatistics allocStringForBytes:v70 + v72];
  v47 = [MAAutoAssetControlStatistics allocStringForBytes:v67 + v68];
  v48 = [MAAutoAssetControlStatistics allocStringForBytes:v62 + v63];
  v49 = [v89 stringWithFormat:@"[totalClient requests:%lld, success:%lld, failure:%lld, queued:%lld, dequeued:%lld|totalJobs started:%lld, finished:%lld|totalInFlight:%lld|totalScheduler:%lld|totalFailuresToStart:%lld|previouslyDownloaded assets:%lld(%@)|totalDownloaded assets:%lld(%@)|totalStaged assets:%lld(%@)|totalUnstaged assets:%lld(%@)|totalPromoted assets:%lld(%@)|totalRemoved assets:%lld(%@)%@%@]", v98, v97, v96, v95, v94, v71 + v59 + v90, v87, v93, v92, v91, v83 + v84, v43, v78 + v80, v44, v73 + v75, v45, v69 + v21, v46, v65 + v66, v47, v60 + v61, v48, v64, v42];

  return v49;
}

@end