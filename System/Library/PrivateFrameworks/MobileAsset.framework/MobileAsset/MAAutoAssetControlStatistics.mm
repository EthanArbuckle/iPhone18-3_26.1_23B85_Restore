@interface MAAutoAssetControlStatistics
+ (id)allocStringForBytes:(int64_t)bytes;
- (MAAutoAssetControlStatistics)initWithCoder:(id)coder;
- (MAAutoAssetControlStatistics)initWithInitialValue:(int64_t)value;
- (id)copy;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetControlStatistics

- (MAAutoAssetControlStatistics)initWithInitialValue:(int64_t)value
{
  v28.receiver = self;
  v28.super_class = MAAutoAssetControlStatistics;
  v4 = [(MAAutoAssetControlStatistics *)&v28 init];
  if (v4)
  {
    v5 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalClientRequests = v4->_totalClientRequests;
    v4->_totalClientRequests = v5;

    v7 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalClientRepliesSuccess = v4->_totalClientRepliesSuccess;
    v4->_totalClientRepliesSuccess = v7;

    v9 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalClientRepliesFailure = v4->_totalClientRepliesFailure;
    v4->_totalClientRepliesFailure = v9;

    v11 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalQueuedClientRequests = v4->_totalQueuedClientRequests;
    v4->_totalQueuedClientRequests = v11;

    v13 = [[MAAutoAssetControlStatisticsByCommand alloc] initWithInitialValue:value];
    totalDequeuedClientRequests = v4->_totalDequeuedClientRequests;
    v4->_totalDequeuedClientRequests = v13;

    v4->_totalAutoAssetJobsStarted = value;
    v4->_totalAutoJobsFinished = value;
    v4->_totalStagerDetermineJobsStarted = value;
    v4->_totalStagerDetermineJobsFinished = value;
    v4->_totalStagerDownloadJobsStarted = value;
    v4->_totalStagerDownloadJobsFinished = value;
    v4->_totalResumedInFlightJobs = value;
    v4->_totalSchedulerTriggeredJobs = value;
    v4->_totalFailuresToStartJobs = value;
    v15 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    previouslyDownloaded = v4->_previouslyDownloaded;
    v4->_previouslyDownloaded = v15;

    v17 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalDownloaded = v4->_totalDownloaded;
    v4->_totalDownloaded = v17;

    v19 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalStaged = v4->_totalStaged;
    v4->_totalStaged = v19;

    v21 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalUnstaged = v4->_totalUnstaged;
    v4->_totalUnstaged = v21;

    v23 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalPromoted = v4->_totalPromoted;
    v4->_totalPromoted = v23;

    v25 = [[MAAutoAssetControlStatisticsBySize alloc] initWithInitialValue:value];
    totalRemoved = v4->_totalRemoved;
    v4->_totalRemoved = v25;

    v4->_finishedJobSchedulerNetworkFailure = value;
    v4->_finishedJobSchedulerNotNetworkRelated = value;
    v4->_finishedJobClientNetworkFailure = value;
    v4->_finishedJobClientNotNetworkRelated = value;
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

- (MAAutoAssetControlStatistics)initWithCoder:(id)coder
{
  coderCopy = coder;
  v29.receiver = self;
  v29.super_class = MAAutoAssetControlStatistics;
  v5 = [(MAAutoAssetControlStatistics *)&v29 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRequests"];
    totalClientRequests = v5->_totalClientRequests;
    v5->_totalClientRequests = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesSuccess"];
    totalClientRepliesSuccess = v5->_totalClientRepliesSuccess;
    v5->_totalClientRepliesSuccess = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalClientRepliesFailure"];
    totalClientRepliesFailure = v5->_totalClientRepliesFailure;
    v5->_totalClientRepliesFailure = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalQueuedClientRequests"];
    totalQueuedClientRequests = v5->_totalQueuedClientRequests;
    v5->_totalQueuedClientRequests = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDequeuedClientRequests"];
    totalDequeuedClientRequests = v5->_totalDequeuedClientRequests;
    v5->_totalDequeuedClientRequests = v14;

    v5->_totalAutoAssetJobsStarted = [coderCopy decodeInt64ForKey:@"totalAutoAssetJobsStarted"];
    v5->_totalAutoJobsFinished = [coderCopy decodeInt64ForKey:@"totalAutoJobsFinished"];
    v5->_totalStagerDetermineJobsStarted = [coderCopy decodeInt64ForKey:@"totalStagerDetermineJobsStarted"];
    v5->_totalStagerDetermineJobsFinished = [coderCopy decodeInt64ForKey:@"totalStagerDetermineJobsFinished"];
    v5->_totalStagerDownloadJobsStarted = [coderCopy decodeInt64ForKey:@"totalStagerDownloadJobsStarted"];
    v5->_totalStagerDownloadJobsFinished = [coderCopy decodeInt64ForKey:@"totalStagerDownloadJobsFinished"];
    v5->_totalResumedInFlightJobs = [coderCopy decodeInt64ForKey:@"totalResumedInFlightJobs"];
    v5->_totalSchedulerTriggeredJobs = [coderCopy decodeInt64ForKey:@"totalSchedulerTriggeredJobs"];
    v5->_totalFailuresToStartJobs = [coderCopy decodeInt64ForKey:@"totalFailuresToStartJobs"];
    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"previouslyDownloaded"];
    previouslyDownloaded = v5->_previouslyDownloaded;
    v5->_previouslyDownloaded = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalDownloaded"];
    totalDownloaded = v5->_totalDownloaded;
    v5->_totalDownloaded = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalStaged"];
    totalStaged = v5->_totalStaged;
    v5->_totalStaged = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalUnstaged"];
    totalUnstaged = v5->_totalUnstaged;
    v5->_totalUnstaged = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalPromoted"];
    totalPromoted = v5->_totalPromoted;
    v5->_totalPromoted = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"totalRemoved"];
    totalRemoved = v5->_totalRemoved;
    v5->_totalRemoved = v26;

    v5->_finishedJobSchedulerNetworkFailure = [coderCopy decodeInt64ForKey:@"finishedJobSchedulerNetworkFailure"];
    v5->_finishedJobSchedulerNotNetworkRelated = [coderCopy decodeInt64ForKey:@"finishedJobSchedulerNotNetworkRelated"];
    v5->_finishedJobClientNetworkFailure = [coderCopy decodeInt64ForKey:@"finishedJobClientNetworkFailure"];
    v5->_finishedJobClientNotNetworkRelated = [coderCopy decodeInt64ForKey:@"finishedJobClientNotNetworkRelated"];
    v5->_garbageCollectionPerformed = [coderCopy decodeBoolForKey:@"garbageCollectionPerformed"];
    v5->_garbageCollectionReclaimSpace = [coderCopy decodeBoolForKey:@"garbageCollectionReclaimSpace"];
    v5->_garbageCollectionTotalReclaimedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionTotalReclaimedSpace"];
    v5->_garbageCollectionReclaimedV2AssetCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetCount"];
    v5->_garbageCollectionReclaimedV2AssetSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedV2AssetSpace"];
    v5->_garbageCollectionReclaimedUnlockedCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedCount"];
    v5->_garbageCollectionReclaimedUnlockedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedUnlockedSpace"];
    v5->_garbageCollectionReclaimedLockedOverridableCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableCount"];
    v5->_garbageCollectionReclaimedLockedOverridableSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedOverridableSpace"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveCount"];
    v5->_garbageCollectionReclaimedLockedNeverRemoveSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedLockedNeverRemoveSpace"];
    v5->_garbageCollectionReclaimedStagedCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedStagedCount"];
    v5->_garbageCollectionReclaimedStagedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedStagedSpace"];
    v5->_garbageCollectionReclaimedMetadataBlockedCount = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedCount"];
    v5->_garbageCollectionReclaimedMetadataBlockedSpace = [coderCopy decodeInt64ForKey:@"garbageCollectionReclaimedMetadataBlockedSpace"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  totalClientRequests = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  [coderCopy encodeObject:totalClientRequests forKey:@"totalClientRequests"];

  totalClientRepliesSuccess = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  [coderCopy encodeObject:totalClientRepliesSuccess forKey:@"totalClientRepliesSuccess"];

  totalClientRepliesFailure = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  [coderCopy encodeObject:totalClientRepliesFailure forKey:@"totalClientRepliesFailure"];

  totalQueuedClientRequests = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  [coderCopy encodeObject:totalQueuedClientRequests forKey:@"totalQueuedClientRequests"];

  totalDequeuedClientRequests = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  [coderCopy encodeObject:totalDequeuedClientRequests forKey:@"totalDequeuedClientRequests"];

  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalAutoAssetJobsStarted](self forKey:{"totalAutoAssetJobsStarted"), @"totalAutoAssetJobsStarted"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalAutoJobsFinished](self forKey:{"totalAutoJobsFinished"), @"totalAutoJobsFinished"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalStagerDetermineJobsStarted](self forKey:{"totalStagerDetermineJobsStarted"), @"totalStagerDetermineJobsStarted"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalStagerDetermineJobsFinished](self forKey:{"totalStagerDetermineJobsFinished"), @"totalStagerDetermineJobsFinished"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalStagerDownloadJobsStarted](self forKey:{"totalStagerDownloadJobsStarted"), @"totalStagerDownloadJobsStarted"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalStagerDownloadJobsFinished](self forKey:{"totalStagerDownloadJobsFinished"), @"totalStagerDownloadJobsFinished"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalResumedInFlightJobs](self forKey:{"totalResumedInFlightJobs"), @"totalResumedInFlightJobs"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalSchedulerTriggeredJobs](self forKey:{"totalSchedulerTriggeredJobs"), @"totalSchedulerTriggeredJobs"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics totalFailuresToStartJobs](self forKey:{"totalFailuresToStartJobs"), @"totalFailuresToStartJobs"}];
  previouslyDownloaded = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  [coderCopy encodeObject:previouslyDownloaded forKey:@"previouslyDownloaded"];

  totalDownloaded = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  [coderCopy encodeObject:totalDownloaded forKey:@"totalDownloaded"];

  totalStaged = [(MAAutoAssetControlStatistics *)self totalStaged];
  [coderCopy encodeObject:totalStaged forKey:@"totalStaged"];

  totalUnstaged = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  [coderCopy encodeObject:totalUnstaged forKey:@"totalUnstaged"];

  totalPromoted = [(MAAutoAssetControlStatistics *)self totalPromoted];
  [coderCopy encodeObject:totalPromoted forKey:@"totalPromoted"];

  totalRemoved = [(MAAutoAssetControlStatistics *)self totalRemoved];
  [coderCopy encodeObject:totalRemoved forKey:@"totalRemoved"];

  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self forKey:{"finishedJobSchedulerNetworkFailure"), @"finishedJobSchedulerNetworkFailure"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self forKey:{"finishedJobSchedulerNotNetworkRelated"), @"finishedJobSchedulerNotNetworkRelated"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics finishedJobClientNetworkFailure](self forKey:{"finishedJobClientNetworkFailure"), @"finishedJobClientNetworkFailure"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self forKey:{"finishedJobClientNotNetworkRelated"), @"finishedJobClientNotNetworkRelated"}];
  [coderCopy encodeBool:-[MAAutoAssetControlStatistics garbageCollectionPerformed](self forKey:{"garbageCollectionPerformed"), @"garbageCollectionPerformed"}];
  [coderCopy encodeBool:-[MAAutoAssetControlStatistics garbageCollectionReclaimSpace](self forKey:{"garbageCollectionReclaimSpace"), @"garbageCollectionReclaimSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionTotalReclaimedSpace](self forKey:{"garbageCollectionTotalReclaimedSpace"), @"garbageCollectionTotalReclaimedSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedV2AssetCount](self forKey:{"garbageCollectionReclaimedV2AssetCount"), @"garbageCollectionReclaimedV2AssetCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedV2AssetSpace](self forKey:{"garbageCollectionReclaimedV2AssetSpace"), @"garbageCollectionReclaimedV2AssetSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedUnlockedCount](self forKey:{"garbageCollectionReclaimedUnlockedCount"), @"garbageCollectionReclaimedUnlockedCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedUnlockedSpace](self forKey:{"garbageCollectionReclaimedUnlockedSpace"), @"garbageCollectionReclaimedUnlockedSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableCount](self forKey:{"garbageCollectionReclaimedLockedOverridableCount"), @"garbageCollectionReclaimedLockedOverridableCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedOverridableSpace](self forKey:{"garbageCollectionReclaimedLockedOverridableSpace"), @"garbageCollectionReclaimedLockedOverridableSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveCount](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveCount"), @"garbageCollectionReclaimedLockedNeverRemoveCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedLockedNeverRemoveSpace](self forKey:{"garbageCollectionReclaimedLockedNeverRemoveSpace"), @"garbageCollectionReclaimedLockedNeverRemoveSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedStagedCount](self forKey:{"garbageCollectionReclaimedStagedCount"), @"garbageCollectionReclaimedStagedCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedStagedSpace](self forKey:{"garbageCollectionReclaimedStagedSpace"), @"garbageCollectionReclaimedStagedSpace"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedCount](self forKey:{"garbageCollectionReclaimedMetadataBlockedCount"), @"garbageCollectionReclaimedMetadataBlockedCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStatistics garbageCollectionReclaimedMetadataBlockedSpace](self forKey:{"garbageCollectionReclaimedMetadataBlockedSpace"), @"garbageCollectionReclaimedMetadataBlockedSpace"}];
}

- (id)copy
{
  v3 = objc_alloc_init(MAAutoAssetControlStatistics);
  totalClientRequests = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  v5 = [totalClientRequests copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalClientRequests:v5];

  totalClientRepliesSuccess = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v7 = [totalClientRepliesSuccess copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalClientRepliesSuccess:v7];

  totalClientRepliesFailure = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v9 = [totalClientRepliesFailure copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalClientRepliesFailure:v9];

  totalQueuedClientRequests = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v11 = [totalQueuedClientRequests copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalQueuedClientRequests:v11];

  totalDequeuedClientRequests = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v13 = [totalDequeuedClientRequests copy];
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
  previouslyDownloaded = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  v15 = [previouslyDownloaded copy];
  [(MAAutoAssetControlStatistics *)v3 setPreviouslyDownloaded:v15];

  totalDownloaded = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  v17 = [totalDownloaded copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalDownloaded:v17];

  totalStaged = [(MAAutoAssetControlStatistics *)self totalStaged];
  v19 = [totalStaged copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalStaged:v19];

  totalUnstaged = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  v21 = [totalUnstaged copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalUnstaged:v21];

  totalPromoted = [(MAAutoAssetControlStatistics *)self totalPromoted];
  v23 = [totalPromoted copy];
  [(MAAutoAssetControlStatistics *)v3 setTotalPromoted:v23];

  totalRemoved = [(MAAutoAssetControlStatistics *)self totalRemoved];
  v25 = [totalRemoved copy];
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

+ (id)allocStringForBytes:(int64_t)bytes
{
  if (!bytes)
  {
    return @"0 bytes";
  }

  v4 = @"NEGATIVE ";
  if (bytes < 0)
  {
    bytesCopy = bytes + 0x3FFFFFFF;
  }

  else
  {
    v4 = &stru_1F0C1B388;
    bytesCopy = bytes;
  }

  v6 = v4;
  v7 = bytes - (bytesCopy & 0xFFFFFFFFC0000000);
  if (bytes >= (bytesCopy & 0xFFFFFFFFC0000000))
  {
    v8 = bytes - (bytesCopy & 0xFFFFFFFFC0000000);
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
  if (bytes < 0x40000000)
  {
    if (v7 < 0x100000)
    {
      v16 = objc_alloc(MEMORY[0x1E696AEC0]);
      if (v9 < 1024)
      {
        v15 = [v16 initWithFormat:@"%@%lld bytes", v6, bytes, v18, v19, v20];
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
    v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%@%lldGB %lldMB %lldKB%@", &stru_1F0C1B388, bytesCopy >> 30, v14, v10 >> 10, v12];
  }

  v13 = v15;

  return v13;
}

- (id)description
{
  v105[5] = *MEMORY[0x1E69E9840];
  v3 = objc_opt_new();
  v104[0] = @"totalClientRequests";
  totalClientRequests = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  v105[0] = totalClientRequests;
  v104[1] = @"totalClientRepliesSuccess";
  totalClientRepliesSuccess = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  v105[1] = totalClientRepliesSuccess;
  v104[2] = @"totalClientRepliesFailure";
  totalClientRepliesFailure = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  v105[2] = totalClientRepliesFailure;
  v104[3] = @"totalQueuedClientRequests";
  totalQueuedClientRequests = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  v105[3] = totalQueuedClientRequests;
  v104[4] = @"totalDequeuedClientRequests";
  selfCopy = self;
  totalDequeuedClientRequests = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  v105[4] = totalDequeuedClientRequests;
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
  totalAutoAssetJobsStarted = [(MAAutoAssetControlStatistics *)selfCopy totalAutoAssetJobsStarted];
  totalAutoJobsFinished = [(MAAutoAssetControlStatistics *)selfCopy totalAutoJobsFinished];
  totalStagerDetermineJobsStarted = [(MAAutoAssetControlStatistics *)selfCopy totalStagerDetermineJobsStarted];
  totalStagerDetermineJobsFinished = [(MAAutoAssetControlStatistics *)selfCopy totalStagerDetermineJobsFinished];
  totalStagerDownloadJobsStarted = [(MAAutoAssetControlStatistics *)selfCopy totalStagerDownloadJobsStarted];
  totalStagerDownloadJobsFinished = [(MAAutoAssetControlStatistics *)selfCopy totalStagerDownloadJobsFinished];
  totalResumedInFlightJobs = [(MAAutoAssetControlStatistics *)selfCopy totalResumedInFlightJobs];
  totalSchedulerTriggeredJobs = [(MAAutoAssetControlStatistics *)selfCopy totalSchedulerTriggeredJobs];
  totalFailuresToStartJobs = [(MAAutoAssetControlStatistics *)selfCopy totalFailuresToStartJobs];
  previouslyDownloaded = [(MAAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  patchedAssets = [previouslyDownloaded patchedAssets];
  previouslyDownloaded2 = [(MAAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  patchedBytes = [previouslyDownloaded2 patchedBytes];
  previouslyDownloaded3 = [(MAAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  fullAssets = [previouslyDownloaded3 fullAssets];
  previouslyDownloaded4 = [(MAAutoAssetControlStatistics *)selfCopy previouslyDownloaded];
  fullBytes = [previouslyDownloaded4 fullBytes];
  totalDownloaded = [(MAAutoAssetControlStatistics *)selfCopy totalDownloaded];
  patchedAssets2 = [totalDownloaded patchedAssets];
  totalDownloaded2 = [(MAAutoAssetControlStatistics *)selfCopy totalDownloaded];
  patchedBytes2 = [totalDownloaded2 patchedBytes];
  totalDownloaded3 = [(MAAutoAssetControlStatistics *)selfCopy totalDownloaded];
  fullAssets2 = [totalDownloaded3 fullAssets];
  totalDownloaded4 = [(MAAutoAssetControlStatistics *)selfCopy totalDownloaded];
  fullBytes2 = [totalDownloaded4 fullBytes];
  totalStaged = [(MAAutoAssetControlStatistics *)selfCopy totalStaged];
  patchedAssets3 = [totalStaged patchedAssets];
  totalStaged2 = [(MAAutoAssetControlStatistics *)selfCopy totalStaged];
  patchedBytes3 = [totalStaged2 patchedBytes];
  totalStaged3 = [(MAAutoAssetControlStatistics *)selfCopy totalStaged];
  fullAssets3 = [totalStaged3 fullAssets];
  totalStaged4 = [(MAAutoAssetControlStatistics *)selfCopy totalStaged];
  fullBytes3 = [totalStaged4 fullBytes];
  totalUnstaged = [(MAAutoAssetControlStatistics *)selfCopy totalUnstaged];
  patchedAssets4 = [totalUnstaged patchedAssets];
  totalUnstaged2 = [(MAAutoAssetControlStatistics *)selfCopy totalUnstaged];
  patchedBytes4 = [totalUnstaged2 patchedBytes];
  totalUnstaged3 = [(MAAutoAssetControlStatistics *)selfCopy totalUnstaged];
  fullAssets4 = [totalUnstaged3 fullAssets];
  totalUnstaged4 = [(MAAutoAssetControlStatistics *)selfCopy totalUnstaged];
  fullBytes4 = [totalUnstaged4 fullBytes];
  totalPromoted = [(MAAutoAssetControlStatistics *)selfCopy totalPromoted];
  patchedAssets5 = [totalPromoted patchedAssets];
  totalPromoted2 = [(MAAutoAssetControlStatistics *)selfCopy totalPromoted];
  patchedBytes5 = [totalPromoted2 patchedBytes];
  totalPromoted3 = [(MAAutoAssetControlStatistics *)selfCopy totalPromoted];
  fullAssets5 = [totalPromoted3 fullAssets];
  totalPromoted4 = [(MAAutoAssetControlStatistics *)selfCopy totalPromoted];
  fullBytes5 = [totalPromoted4 fullBytes];
  totalRemoved = [(MAAutoAssetControlStatistics *)selfCopy totalRemoved];
  patchedAssets6 = [totalRemoved patchedAssets];
  totalRemoved2 = [(MAAutoAssetControlStatistics *)selfCopy totalRemoved];
  patchedBytes6 = [totalRemoved2 patchedBytes];
  totalRemoved3 = [(MAAutoAssetControlStatistics *)selfCopy totalRemoved];
  fullAssets6 = [totalRemoved3 fullAssets];
  totalRemoved4 = [(MAAutoAssetControlStatistics *)selfCopy totalRemoved];
  fullBytes6 = [totalRemoved4 fullBytes];
  finishedJobSchedulerNetworkFailure = [(MAAutoAssetControlStatistics *)selfCopy finishedJobSchedulerNetworkFailure];
  finishedJobSchedulerNotNetworkRelated = [(MAAutoAssetControlStatistics *)selfCopy finishedJobSchedulerNotNetworkRelated];
  finishedJobClientNetworkFailure = [(MAAutoAssetControlStatistics *)selfCopy finishedJobClientNetworkFailure];
  finishedJobClientNotNetworkRelated = [(MAAutoAssetControlStatistics *)selfCopy finishedJobClientNotNetworkRelated];
  if ([(MAAutoAssetControlStatistics *)selfCopy garbageCollectionPerformed])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v34 = v16;
  if ([(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimSpace])
  {
    v17 = @"Y";
  }

  else
  {
    v17 = @"N";
  }

  v33 = v17;
  v35 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionTotalReclaimedSpace]];
  garbageCollectionReclaimedV2AssetCount = [(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedV2AssetCount];
  v32 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedV2AssetSpace]];
  garbageCollectionReclaimedUnlockedCount = [(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedUnlockedCount];
  v30 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedUnlockedSpace]];
  garbageCollectionReclaimedLockedOverridableCount = [(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedOverridableCount];
  v28 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedOverridableSpace]];
  garbageCollectionReclaimedLockedNeverRemoveCount = [(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedNeverRemoveCount];
  v19 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedLockedNeverRemoveSpace]];
  garbageCollectionReclaimedStagedCount = [(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedStagedCount];
  v21 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedStagedSpace]];
  garbageCollectionReclaimedMetadataBlockedCount = [(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedMetadataBlockedCount];
  v23 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)selfCopy garbageCollectionReclaimedMetadataBlockedSpace]];
  v24 = [v91 stringWithFormat:@">>>\nCategory                    Statistic                   Value\n=========================== =========================== ================================\n%@autoJobs                     totalAutoAssetJobsStarted: %lld\nautoJobs                         totalAutoJobsFinished: %lld\nstagerJobs             totalStagerDetermineJobsStarted: %lld\nstagerJobs            totalStagerDetermineJobsFinished: %lld\nstagerJobs              totalStagerDownloadJobsStarted: %lld\nstagerJobs             totalStagerDownloadJobsFinished: %lld\nresumedInFlightJobs           totalResumedInFlightJobs: %lld\nscheduledJobs              totalSchedulerTriggeredJobs: %lld\nfailuresToStartJobs           totalFailuresToStartJobs: %lld\n\npreviously           previouslyDownloadedPatchedAssets: %lld\npreviously            previouslyDownloadedPatchedBytes: %lld\npreviously              previouslyDownloadedFullAssets: %lld\npreviously               previouslyDownloadedFullBytes: %lld\n\ndownloaded                totalDownloadedPatchedAssets: %lld\ndownloaded                 totalDownloadedPatchedBytes: %lld\ndownloaded                   totalDownloadedFullAssets: %lld\ndownloaded                    totalDownloadedFullBytes: %lld\n\nstaged                        totalStagedPatchedAssets: %lld\nstaged                         totalStagedPatchedBytes: %lld\nstaged                           totalStagedFullAssets: %lld\nstaged                            totalStagedFullBytes: %lld\n\nunstaged                    totalUnstagedPatchedAssets: %lld\nunstaged                     totalUnstagedPatchedBytes: %lld\nunstaged                       totalUnstagedFullAssets: %lld\nunstaged                        totalUnstagedFullBytes: %lld\n\npromoted                    totalPromotedPatchedAssets: %lld\npromoted                     totalPromotedPatchedBytes: %lld\npromoted                       totalPromotedFullAssets: %lld\npromoted                        totalPromotedFullBytes: %lld\n\nremoved                      totalRemovedPatchedAssets: %lld\nremoved                       totalRemovedPatchedBytes: %lld\nremoved                         totalRemovedFullAssets: %lld\nremoved                          totalRemovedFullBytes: %lld\n\nfinishedJobs        finishedJobSchedulerNetworkFailure: %lld\nfinishedJobs     finishedJobSchedulerNotNetworkRelated: %lld\nfinishedJobs           finishedJobClientNetworkFailure: %lld\nfinishedJobs        finishedJobClientNotNetworkRelated: %lld\n\ngarbageColection                             performed: %@\ngarbageColection                          reclaimSpace: %@\ngarbageColection                   totalReclaimedSpace: %@\ngarbageColection                 reclaimedV2AssetCount: %ld\ngarbageColection                 reclaimedV2AssetSpace: %@\ngarbageColection                reclaimedUnlockedCount: %ld\ngarbageColection                reclaimedUnlockedSpace: %@\ngarbageColection       reclaimedLockedOverridableCount: %ld\ngarbageColection       reclaimedLockedOverridableSpace: %@\ngarbageColection       reclaimedLockedNeverRemoveCount: %ld\ngarbageColection       reclaimedLockedNeverRemoveSpace: %@\ngarbageColection                  reclaimedStagedCount: %ld\ngarbageColection                  reclaimedStagedSpace: %@\ngarbageColection         reclaimedMetadataBlockedCount: %ld\ngarbageColection         reclaimedMetadataBlockedSpace: %@\n<<<]", v3, totalAutoAssetJobsStarted, totalAutoJobsFinished, totalStagerDetermineJobsStarted, totalStagerDetermineJobsFinished, totalStagerDownloadJobsStarted, totalStagerDownloadJobsFinished, totalResumedInFlightJobs, totalSchedulerTriggeredJobs, totalFailuresToStartJobs, patchedAssets, patchedBytes, fullAssets, fullBytes, patchedAssets2, patchedBytes2, fullAssets2, fullBytes2, patchedAssets3, patchedBytes3, fullAssets3, fullBytes3, patchedAssets4, patchedBytes4, fullAssets4, fullBytes4, patchedAssets5, patchedBytes5, fullAssets5, fullBytes5, patchedAssets6, patchedBytes6, fullAssets6, fullBytes6, finishedJobSchedulerNetworkFailure, finishedJobSchedulerNotNetworkRelated, finishedJobClientNetworkFailure, finishedJobClientNotNetworkRelated, v34, v33, v35, garbageCollectionReclaimedV2AssetCount, v32, garbageCollectionReclaimedUnlockedCount, v30, garbageCollectionReclaimedLockedOverridableCount, v28, garbageCollectionReclaimedLockedNeverRemoveCount, v19, garbageCollectionReclaimedStagedCount, v21, garbageCollectionReclaimedMetadataBlockedCount, v23];

  v25 = *MEMORY[0x1E69E9840];

  return v24;
}

- (id)summary
{
  totalClientRequests = [(MAAutoAssetControlStatistics *)self totalClientRequests];
  total = [totalClientRequests total];

  totalClientRepliesSuccess = [(MAAutoAssetControlStatistics *)self totalClientRepliesSuccess];
  total2 = [totalClientRepliesSuccess total];

  totalClientRepliesFailure = [(MAAutoAssetControlStatistics *)self totalClientRepliesFailure];
  total3 = [totalClientRepliesFailure total];

  totalQueuedClientRequests = [(MAAutoAssetControlStatistics *)self totalQueuedClientRequests];
  total4 = [totalQueuedClientRequests total];

  totalDequeuedClientRequests = [(MAAutoAssetControlStatistics *)self totalDequeuedClientRequests];
  total5 = [totalDequeuedClientRequests total];

  totalAutoAssetJobsStarted = [(MAAutoAssetControlStatistics *)self totalAutoAssetJobsStarted];
  totalStagerDetermineJobsStarted = [(MAAutoAssetControlStatistics *)self totalStagerDetermineJobsStarted];
  totalStagerDownloadJobsStarted = [(MAAutoAssetControlStatistics *)self totalStagerDownloadJobsStarted];
  totalAutoJobsFinished = [(MAAutoAssetControlStatistics *)self totalAutoJobsFinished];
  totalStagerDetermineJobsFinished = [(MAAutoAssetControlStatistics *)self totalStagerDetermineJobsFinished];
  totalStagerDownloadJobsFinished = [(MAAutoAssetControlStatistics *)self totalStagerDownloadJobsFinished];
  totalResumedInFlightJobs = [(MAAutoAssetControlStatistics *)self totalResumedInFlightJobs];
  totalSchedulerTriggeredJobs = [(MAAutoAssetControlStatistics *)self totalSchedulerTriggeredJobs];
  totalFailuresToStartJobs = [(MAAutoAssetControlStatistics *)self totalFailuresToStartJobs];
  previouslyDownloaded = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  patchedAssets = [previouslyDownloaded patchedAssets];
  previouslyDownloaded2 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  fullAssets = [previouslyDownloaded2 fullAssets];

  previouslyDownloaded3 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  patchedBytes = [previouslyDownloaded3 patchedBytes];
  previouslyDownloaded4 = [(MAAutoAssetControlStatistics *)self previouslyDownloaded];
  fullBytes = [previouslyDownloaded4 fullBytes];

  totalDownloaded = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  patchedAssets2 = [totalDownloaded patchedAssets];
  totalDownloaded2 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  fullAssets2 = [totalDownloaded2 fullAssets];

  totalDownloaded3 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  patchedBytes2 = [totalDownloaded3 patchedBytes];
  totalDownloaded4 = [(MAAutoAssetControlStatistics *)self totalDownloaded];
  fullBytes2 = [totalDownloaded4 fullBytes];

  totalStaged = [(MAAutoAssetControlStatistics *)self totalStaged];
  patchedAssets3 = [totalStaged patchedAssets];
  totalStaged2 = [(MAAutoAssetControlStatistics *)self totalStaged];
  fullAssets3 = [totalStaged2 fullAssets];

  totalStaged3 = [(MAAutoAssetControlStatistics *)self totalStaged];
  patchedBytes3 = [totalStaged3 patchedBytes];
  totalStaged4 = [(MAAutoAssetControlStatistics *)self totalStaged];
  fullBytes3 = [totalStaged4 fullBytes];

  totalUnstaged = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  patchedAssets4 = [totalUnstaged patchedAssets];
  totalUnstaged2 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  fullAssets4 = [totalUnstaged2 fullAssets];

  totalUnstaged3 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  patchedBytes4 = [totalUnstaged3 patchedBytes];
  totalUnstaged4 = [(MAAutoAssetControlStatistics *)self totalUnstaged];
  fullBytes4 = [totalUnstaged4 fullBytes];

  totalPromoted = [(MAAutoAssetControlStatistics *)self totalPromoted];
  patchedAssets5 = [totalPromoted patchedAssets];
  totalPromoted2 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  fullAssets5 = [totalPromoted2 fullAssets];

  totalPromoted3 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  patchedBytes5 = [totalPromoted3 patchedBytes];
  totalPromoted4 = [(MAAutoAssetControlStatistics *)self totalPromoted];
  fullBytes5 = [totalPromoted4 fullBytes];

  totalRemoved = [(MAAutoAssetControlStatistics *)self totalRemoved];
  patchedAssets6 = [totalRemoved patchedAssets];
  totalRemoved2 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  fullAssets6 = [totalRemoved2 fullAssets];

  totalRemoved3 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  patchedBytes6 = [totalRemoved3 patchedBytes];
  totalRemoved4 = [(MAAutoAssetControlStatistics *)self totalRemoved];
  fullBytes6 = [totalRemoved4 fullBytes];

  v64 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"|jobFinished schedNWFail:%lld, schedOther:%lld, clientNWFail:%lld, clientOther:%lld", -[MAAutoAssetControlStatistics finishedJobSchedulerNetworkFailure](self, "finishedJobSchedulerNetworkFailure"), -[MAAutoAssetControlStatistics finishedJobSchedulerNotNetworkRelated](self, "finishedJobSchedulerNotNetworkRelated"), -[MAAutoAssetControlStatistics finishedJobClientNetworkFailure](self, "finishedJobClientNetworkFailure"), -[MAAutoAssetControlStatistics finishedJobClientNotNetworkRelated](self, "finishedJobClientNotNetworkRelated")];
  if ([(MAAutoAssetControlStatistics *)self garbageCollectionPerformed])
  {
    v58 = objc_alloc(MEMORY[0x1E696AEC0]);
    garbageCollectionReclaimSpace = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimSpace];
    v34 = @"garbageDetermined";
    if (garbageCollectionReclaimSpace)
    {
      v34 = @"garbageReclaimed";
    }

    v57 = v34;
    garbageCollectionReclaimedV2AssetCount = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetCount];
    v55 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedV2AssetSpace]];
    garbageCollectionReclaimedUnlockedCount = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedCount];
    v53 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedUnlockedSpace]];
    garbageCollectionReclaimedLockedOverridableCount = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableCount];
    v35 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedOverridableSpace]];
    garbageCollectionReclaimedLockedNeverRemoveCount = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveCount];
    v36 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedLockedNeverRemoveSpace]];
    garbageCollectionReclaimedStagedCount = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedCount];
    v38 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedStagedSpace]];
    garbageCollectionReclaimedMetadataBlockedCount = [(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedCount];
    v40 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionReclaimedMetadataBlockedSpace]];
    v41 = [MAAutoAssetControlStatistics allocStringForBytes:[(MAAutoAssetControlStatistics *)self garbageCollectionTotalReclaimedSpace]];
    v42 = [v58 initWithFormat:@"|%@ v2Assets:%ld(%@), unlocked:%ld(%@), lockedOverridable:%ld(%@), lockedNeverRemove:%ld(%@), staged:%ld(%@), metadataBlocked:%ld(%@), totalSpace:%@", v57, garbageCollectionReclaimedV2AssetCount, v55, garbageCollectionReclaimedUnlockedCount, v53, garbageCollectionReclaimedLockedOverridableCount, v35, garbageCollectionReclaimedLockedNeverRemoveCount, v36, garbageCollectionReclaimedStagedCount, v38, garbageCollectionReclaimedMetadataBlockedCount, v40, v41];
  }

  else
  {
    v42 = &stru_1F0C1B388;
  }

  v87 = totalStagerDetermineJobsFinished + totalAutoJobsFinished + totalStagerDownloadJobsFinished;
  v89 = MEMORY[0x1E696AEC0];
  v43 = [MAAutoAssetControlStatistics allocStringForBytes:fullBytes + patchedBytes];
  v44 = [MAAutoAssetControlStatistics allocStringForBytes:fullBytes2 + patchedBytes2];
  v45 = [MAAutoAssetControlStatistics allocStringForBytes:fullBytes3 + patchedBytes3];
  v46 = [MAAutoAssetControlStatistics allocStringForBytes:fullBytes4 + patchedBytes4];
  v47 = [MAAutoAssetControlStatistics allocStringForBytes:fullBytes5 + patchedBytes5];
  v48 = [MAAutoAssetControlStatistics allocStringForBytes:fullBytes6 + patchedBytes6];
  v49 = [v89 stringWithFormat:@"[totalClient requests:%lld, success:%lld, failure:%lld, queued:%lld, dequeued:%lld|totalJobs started:%lld, finished:%lld|totalInFlight:%lld|totalScheduler:%lld|totalFailuresToStart:%lld|previouslyDownloaded assets:%lld(%@)|totalDownloaded assets:%lld(%@)|totalStaged assets:%lld(%@)|totalUnstaged assets:%lld(%@)|totalPromoted assets:%lld(%@)|totalRemoved assets:%lld(%@)%@%@]", total, total2, total3, total4, total5, totalStagerDetermineJobsStarted + totalAutoAssetJobsStarted + totalStagerDownloadJobsStarted, v87, totalResumedInFlightJobs, totalSchedulerTriggeredJobs, totalFailuresToStartJobs, fullAssets + patchedAssets, v43, fullAssets2 + patchedAssets2, v44, fullAssets3 + patchedAssets3, v45, fullAssets4 + patchedAssets4, v46, fullAssets5 + patchedAssets5, v47, fullAssets6 + patchedAssets6, v48, v64, v42];

  return v49;
}

@end