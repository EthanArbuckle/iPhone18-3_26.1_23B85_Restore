@interface MAAutoAssetControlStagerInformation
+ (id)previousOTASituationName:(int64_t)a3;
- (MAAutoAssetControlStagerInformation)init;
- (MAAutoAssetControlStagerInformation)initWithCoder:(id)a3;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetControlStagerInformation

- (MAAutoAssetControlStagerInformation)init
{
  v18.receiver = self;
  v18.super_class = MAAutoAssetControlStagerInformation;
  v2 = [(MAAutoAssetControlStagerInformation *)&v18 init];
  v3 = v2;
  if (v2)
  {
    startupLastStagingFromOSVersion = v2->_startupLastStagingFromOSVersion;
    *&v2->_persistedStateCount = 0u;
    *&v2->_persistedAvailableForStagingByTargetCount = 0u;

    startupLastStagingFromBuildVersion = v3->_startupLastStagingFromBuildVersion;
    v3->_startupLastStagingFromBuildVersion = 0;

    startupAssetTargetOSVersion = v3->_startupAssetTargetOSVersion;
    v3->_startupAssetTargetOSVersion = 0;

    startupAssetTargetBuildVersion = v3->_startupAssetTargetBuildVersion;
    v3->_startupAssetTargetBuildVersion = 0;

    *&v3->_startupStagedAssetCount = 0u;
    *&v3->_startupActivelyStagingAssetCount = 0u;
    *&v3->_startupCandidateAssetCount = 0u;
    stagingFromOSVersion = v3->_stagingFromOSVersion;
    v3->_startupPreviousOTASituation = 0;
    v3->_stagingFromOSVersion = 0;

    stagingFromBuildVersion = v3->_stagingFromBuildVersion;
    v3->_stagingFromBuildVersion = 0;

    *&v3->_loadPersistedPostponed = 0;
    assetTargetOSVersion = v3->_assetTargetOSVersion;
    v3->_assetTargetOSVersion = 0;

    assetTargetBuildVersion = v3->_assetTargetBuildVersion;
    v3->_assetTargetBuildVersion = 0;

    assetTargetTrainName = v3->_assetTargetTrainName;
    v3->_assetTargetTrainName = 0;

    assetTargetRestoreVersion = v3->_assetTargetRestoreVersion;
    v3->_assetTargetRestoreVersion = 0;

    optionalAssetSizeAllowed = v3->_optionalAssetSizeAllowed;
    v3->_optionalAssetSizeAllowed = 0;

    *&v3->_activeTargetCandidateSetConfigurationsOptionalCount = 0u;
    *&v3->_activeTargetCandidatesForStagingOptionalCount = 0u;
    *&v3->_activeTargetOTASituation = 0u;
    otherTargetName = v3->_otherTargetName;
    v3->_activeTargetAvailableForStagingOptionalCount = 0;
    v3->_otherTargetName = 0;

    *&v3->_otherTargetOTASituation = 0u;
    *&v3->_stagingClientDownloadRequestActive = 0;
    *&v3->_otherTargetCandidatesForStagingOptionalCount = 0u;
    *&v3->_otherTargetCandidateSetConfigurationsOptionalCount = 0u;
    *&v3->_otherTargetAvailableForStagingOptionalCount = 0u;
    stagingClientName = v3->_stagingClientName;
    v3->_stagingClientName = 0;

    v3->_eliminationSetConfigurationCurrentJob = 0;
    *&v3->_setConfigurationsCount = 0u;
    *&v3->_scheduledJobsCount = 0u;
    *&v3->_candidateSetConfigurationsCount = 0u;
    *&v3->_baseForStagingDescriptorsCount = 0u;
    *&v3->_availableForStagingCount = 0u;
    *&v3->_successfullyStagedCount = 0u;
    *&v3->_overallStagedDownloadedSoFarBytes = 0u;
    *&v3->_currentStagedRemainingBytes = 0u;
    v3->_eliminationSelectorsAcknowledgedCount = 0;
  }

  return v3;
}

- (MAAutoAssetControlStagerInformation)initWithCoder:(id)a3
{
  v4 = a3;
  v33.receiver = self;
  v33.super_class = MAAutoAssetControlStagerInformation;
  v5 = [(MAAutoAssetControlStagerInformation *)&v33 init];
  if (v5)
  {
    v5->_persistedStateCount = [v4 decodeIntegerForKey:@"persistedStateCount"];
    v5->_persistedTargetLookupResultsCount = [v4 decodeInt64ForKey:@"persistedTargetLookupResultsCount"];
    v5->_persistedAvailableForStagingByTargetCount = [v4 decodeInt64ForKey:@"persistedAvailableForStagingByTargetCount"];
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromOSVersion"];
    startupLastStagingFromOSVersion = v5->_startupLastStagingFromOSVersion;
    v5->_startupLastStagingFromOSVersion = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromBuildVersion"];
    startupLastStagingFromBuildVersion = v5->_startupLastStagingFromBuildVersion;
    v5->_startupLastStagingFromBuildVersion = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetOSVersion"];
    startupAssetTargetOSVersion = v5->_startupAssetTargetOSVersion;
    v5->_startupAssetTargetOSVersion = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetBuildVersion"];
    startupAssetTargetBuildVersion = v5->_startupAssetTargetBuildVersion;
    v5->_startupAssetTargetBuildVersion = v12;

    v5->_startupCandidateAssetCount = [v4 decodeInt64ForKey:@"startupCandidateAssetCount"];
    v5->_startupDeterminedAvailableAssetCount = [v4 decodeInt64ForKey:@"startupDeterminedAvailableAssetCount"];
    v5->_startupActivelyStagingAssetCount = [v4 decodeInt64ForKey:@"startupActivelyStagingAssetCount"];
    v5->_startupAwaitingStagingAssetCount = [v4 decodeInt64ForKey:@"startupAwaitingStagingAssetCount"];
    v5->_startupStagedAssetCount = [v4 decodeInt64ForKey:@"startupStagedAssetCount"];
    v5->_startupStagedAssetTotalContentBytes = [v4 decodeInt64ForKey:@"startupStagedAssetTotalContentBytes"];
    v5->_startupPreviousOTASituation = [v4 decodeIntegerForKey:@"startupPreviousOTASituation"];
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromOSVersion"];
    stagingFromOSVersion = v5->_stagingFromOSVersion;
    v5->_stagingFromOSVersion = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromBuildVersion"];
    stagingFromBuildVersion = v5->_stagingFromBuildVersion;
    v5->_stagingFromBuildVersion = v16;

    v5->_loadPersistedPostponed = [v4 decodeBoolForKey:@"loadPersistedPostponed"];
    v5->_alwaysPromoteStagedAssets = [v4 decodeBoolForKey:@"alwaysPromoteStagedAssets"];
    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetOSVersion"];
    assetTargetOSVersion = v5->_assetTargetOSVersion;
    v5->_assetTargetOSVersion = v18;

    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetBuildVersion"];
    assetTargetBuildVersion = v5->_assetTargetBuildVersion;
    v5->_assetTargetBuildVersion = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetTrainName"];
    assetTargetTrainName = v5->_assetTargetTrainName;
    v5->_assetTargetTrainName = v22;

    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetRestoreVersion"];
    assetTargetRestoreVersion = v5->_assetTargetRestoreVersion;
    v5->_assetTargetRestoreVersion = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"optionalAssetSizeAllowed"];
    optionalAssetSizeAllowed = v5->_optionalAssetSizeAllowed;
    v5->_optionalAssetSizeAllowed = v26;

    v5->_activeTargetOTASituation = [v4 decodeIntegerForKey:@"activeTargetOTASituation"];
    v5->_activeTargetCandidatesForStagingRequiredCount = [v4 decodeInt64ForKey:@"activeTargetCandidatesForStagingRequiredCount"];
    v5->_activeTargetCandidatesForStagingOptionalCount = [v4 decodeInt64ForKey:@"activeTargetCandidatesForStagingOptionalCount"];
    v5->_activeTargetCandidateSetConfigurationsRequiredCount = [v4 decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsRequiredCount"];
    v5->_activeTargetCandidateSetConfigurationsOptionalCount = [v4 decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsOptionalCount"];
    v5->_activeTargetAvailableForStagingRequiredCount = [v4 decodeInt64ForKey:@"activeTargetAvailableForStagingRequiredCount"];
    v5->_activeTargetAvailableForStagingOptionalCount = [v4 decodeInt64ForKey:@"activeTargetAvailableForStagingOptionalCount"];
    v28 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"otherTargetName"];
    otherTargetName = v5->_otherTargetName;
    v5->_otherTargetName = v28;

    v5->_otherTargetOTASituation = [v4 decodeIntegerForKey:@"otherTargetOTASituation"];
    v5->_otherTargetCandidatesForStagingRequiredCount = [v4 decodeInt64ForKey:@"otherTargetCandidatesForStagingRequiredCount"];
    v5->_otherTargetCandidatesForStagingOptionalCount = [v4 decodeInt64ForKey:@"otherTargetCandidatesForStagingOptionalCount"];
    v5->_otherTargetCandidateSetConfigurationsRequiredCount = [v4 decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsRequiredCount"];
    v5->_otherTargetCandidateSetConfigurationsOptionalCount = [v4 decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsOptionalCount"];
    v5->_otherTargetAvailableForStagingRequiredCount = [v4 decodeInt64ForKey:@"otherTargetAvailableForStagingRequiredCount"];
    v5->_otherTargetAvailableForStagingOptionalCount = [v4 decodeInt64ForKey:@"otherTargetAvailableForStagingOptionalCount"];
    v5->_stagingClientDetermineRequestsCount = [v4 decodeInt64ForKey:@"stagingClientDetermineRequestsCount"];
    v5->_stagingClientDownloadRequestActive = [v4 decodeBoolForKey:@"stagingClientDownloadRequestActive"];
    v5->_stagingClientRequestActive = [v4 decodeBoolForKey:@"stagingClientRequestActive"];
    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagingClientName"];
    stagingClientName = v5->_stagingClientName;
    v5->_stagingClientName = v30;

    v5->_setConfigurationsCount = [v4 decodeInt64ForKey:@"setConfigurationsCount"];
    v5->_setTargetsCount = [v4 decodeInt64ForKey:@"setTargetsCount"];
    v5->_scheduledJobsCount = [v4 decodeInt64ForKey:@"scheduledJobsCount"];
    v5->_candidatesForStagingCount = [v4 decodeInt64ForKey:@"candidatesForStagingCount"];
    v5->_candidateSetConfigurationsCount = [v4 decodeInt64ForKey:@"candidateSetConfigurationsCount"];
    v5->_setLookupResultsCount = [v4 decodeInt64ForKey:@"setLookupResultsCount"];
    v5->_baseForStagingDescriptorsCount = [v4 decodeInt64ForKey:@"baseForStagingDescriptorsCount"];
    v5->_determiningBySelectorCount = [v4 decodeInt64ForKey:@"determiningBySelectorCount"];
    v5->_availableForStagingCount = [v4 decodeInt64ForKey:@"availableForStagingCount"];
    v5->_awaitingStagingAttemptCount = [v4 decodeInt64ForKey:@"awaitingStagingAttemptCount"];
    v5->_successfullyStagedCount = [v4 decodeInt64ForKey:@"successfullyStagedCount"];
    v5->_overallStagedTotalExpectedBytes = [v4 decodeInt64ForKey:@"overallStagedTotalExpectedBytes"];
    v5->_overallStagedDownloadedSoFarBytes = [v4 decodeInt64ForKey:@"overallStagedDownloadedSoFarBytes"];
    v5->_currentStagedLastWrittenBytes = [v4 decodeInt64ForKey:@"currentStagedLastWrittenBytes"];
    v5->_currentStagedRemainingBytes = [v4 decodeInt64ForKey:@"currentStagedRemainingBytes"];
    v5->_eliminationSelectorsCount = [v4 decodeInt64ForKey:@"eliminationSelectorsCount"];
    v5->_eliminationSetConfigurationCurrentJob = [v4 decodeBoolForKey:@"eliminationSetConfigurationCurrentJob"];
    v5->_eliminationSelectorsAcknowledgedCount = [v4 decodeInt64ForKey:@"eliminationSelectorsAcknowledgedCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v17 = a3;
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation persistedStateCount](self forKey:{"persistedStateCount"), @"persistedStateCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation persistedTargetLookupResultsCount](self forKey:{"persistedTargetLookupResultsCount"), @"persistedTargetLookupResultsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation persistedAvailableForStagingByTargetCount](self forKey:{"persistedAvailableForStagingByTargetCount"), @"persistedAvailableForStagingByTargetCount"}];
  v4 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  [v17 encodeObject:v4 forKey:@"startupLastStagingFromOSVersion"];

  v5 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  [v17 encodeObject:v5 forKey:@"startupLastStagingFromBuildVersion"];

  v6 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  [v17 encodeObject:v6 forKey:@"startupAssetTargetOSVersion"];

  v7 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  [v17 encodeObject:v7 forKey:@"startupAssetTargetBuildVersion"];

  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation startupCandidateAssetCount](self forKey:{"startupCandidateAssetCount"), @"startupCandidateAssetCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation startupDeterminedAvailableAssetCount](self forKey:{"startupDeterminedAvailableAssetCount"), @"startupDeterminedAvailableAssetCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation startupActivelyStagingAssetCount](self forKey:{"startupActivelyStagingAssetCount"), @"startupActivelyStagingAssetCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation startupAwaitingStagingAssetCount](self forKey:{"startupAwaitingStagingAssetCount"), @"startupAwaitingStagingAssetCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation startupStagedAssetCount](self forKey:{"startupStagedAssetCount"), @"startupStagedAssetCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation startupStagedAssetTotalContentBytes](self forKey:{"startupStagedAssetTotalContentBytes"), @"startupStagedAssetTotalContentBytes"}];
  [v17 encodeInteger:-[MAAutoAssetControlStagerInformation startupPreviousOTASituation](self forKey:{"startupPreviousOTASituation"), @"startupPreviousOTASituation"}];
  v8 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  [v17 encodeObject:v8 forKey:@"stagingFromOSVersion"];

  v9 = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  [v17 encodeObject:v9 forKey:@"stagingFromBuildVersion"];

  [v17 encodeBool:-[MAAutoAssetControlStagerInformation loadPersistedPostponed](self forKey:{"loadPersistedPostponed"), @"loadPersistedPostponed"}];
  [v17 encodeBool:-[MAAutoAssetControlStagerInformation alwaysPromoteStagedAssets](self forKey:{"alwaysPromoteStagedAssets"), @"alwaysPromoteStagedAssets"}];
  v10 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  [v17 encodeObject:v10 forKey:@"assetTargetOSVersion"];

  v11 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  [v17 encodeObject:v11 forKey:@"assetTargetBuildVersion"];

  v12 = [(MAAutoAssetControlStagerInformation *)self assetTargetTrainName];
  [v17 encodeObject:v12 forKey:@"assetTargetTrainName"];

  v13 = [(MAAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  [v17 encodeObject:v13 forKey:@"assetTargetRestoreVersion"];

  v14 = [(MAAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  [v17 encodeObject:v14 forKey:@"optionalAssetSizeAllowed"];

  [v17 encodeInteger:-[MAAutoAssetControlStagerInformation activeTargetOTASituation](self forKey:{"activeTargetOTASituation"), @"activeTargetOTASituation"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidatesForStagingRequiredCount](self forKey:{"activeTargetCandidatesForStagingRequiredCount"), @"activeTargetCandidatesForStagingRequiredCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidatesForStagingOptionalCount](self forKey:{"activeTargetCandidatesForStagingOptionalCount"), @"activeTargetCandidatesForStagingOptionalCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsRequiredCount](self forKey:{"activeTargetCandidateSetConfigurationsRequiredCount"), @"activeTargetCandidateSetConfigurationsRequiredCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsOptionalCount](self forKey:{"activeTargetCandidateSetConfigurationsOptionalCount"), @"activeTargetCandidateSetConfigurationsOptionalCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetAvailableForStagingRequiredCount](self forKey:{"activeTargetAvailableForStagingRequiredCount"), @"activeTargetAvailableForStagingRequiredCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetAvailableForStagingOptionalCount](self forKey:{"activeTargetAvailableForStagingOptionalCount"), @"activeTargetAvailableForStagingOptionalCount"}];
  v15 = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  [v17 encodeObject:v15 forKey:@"otherTargetName"];

  [v17 encodeInteger:-[MAAutoAssetControlStagerInformation otherTargetOTASituation](self forKey:{"otherTargetOTASituation"), @"otherTargetOTASituation"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidatesForStagingRequiredCount](self forKey:{"otherTargetCandidatesForStagingRequiredCount"), @"otherTargetCandidatesForStagingRequiredCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidatesForStagingOptionalCount](self forKey:{"otherTargetCandidatesForStagingOptionalCount"), @"otherTargetCandidatesForStagingOptionalCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsRequiredCount](self forKey:{"otherTargetCandidateSetConfigurationsRequiredCount"), @"otherTargetCandidateSetConfigurationsRequiredCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsOptionalCount](self forKey:{"otherTargetCandidateSetConfigurationsOptionalCount"), @"otherTargetCandidateSetConfigurationsOptionalCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingRequiredCount](self forKey:{"otherTargetAvailableForStagingRequiredCount"), @"otherTargetAvailableForStagingRequiredCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingOptionalCount](self forKey:{"otherTargetAvailableForStagingOptionalCount"), @"otherTargetAvailableForStagingOptionalCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation stagingClientDetermineRequestsCount](self forKey:{"stagingClientDetermineRequestsCount"), @"stagingClientDetermineRequestsCount"}];
  [v17 encodeBool:-[MAAutoAssetControlStagerInformation stagingClientDownloadRequestActive](self forKey:{"stagingClientDownloadRequestActive"), @"stagingClientDownloadRequestActive"}];
  [v17 encodeBool:-[MAAutoAssetControlStagerInformation stagingClientRequestActive](self forKey:{"stagingClientRequestActive"), @"stagingClientRequestActive"}];
  v16 = [(MAAutoAssetControlStagerInformation *)self stagingClientName];
  [v17 encodeObject:v16 forKey:@"stagingClientName"];

  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation setConfigurationsCount](self forKey:{"setConfigurationsCount"), @"setConfigurationsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation setTargetsCount](self forKey:{"setTargetsCount"), @"setTargetsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation scheduledJobsCount](self forKey:{"scheduledJobsCount"), @"scheduledJobsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation candidatesForStagingCount](self forKey:{"candidatesForStagingCount"), @"candidatesForStagingCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation candidateSetConfigurationsCount](self forKey:{"candidateSetConfigurationsCount"), @"candidateSetConfigurationsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation setLookupResultsCount](self forKey:{"setLookupResultsCount"), @"setLookupResultsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation baseForStagingDescriptorsCount](self forKey:{"baseForStagingDescriptorsCount"), @"baseForStagingDescriptorsCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation determiningBySelectorCount](self forKey:{"determiningBySelectorCount"), @"determiningBySelectorCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation availableForStagingCount](self forKey:{"availableForStagingCount"), @"availableForStagingCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation awaitingStagingAttemptCount](self forKey:{"awaitingStagingAttemptCount"), @"awaitingStagingAttemptCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation successfullyStagedCount](self forKey:{"successfullyStagedCount"), @"successfullyStagedCount"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation overallStagedTotalExpectedBytes](self forKey:{"overallStagedTotalExpectedBytes"), @"overallStagedTotalExpectedBytes"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation overallStagedDownloadedSoFarBytes](self forKey:{"overallStagedDownloadedSoFarBytes"), @"overallStagedDownloadedSoFarBytes"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation currentStagedLastWrittenBytes](self forKey:{"currentStagedLastWrittenBytes"), @"currentStagedLastWrittenBytes"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation currentStagedRemainingBytes](self forKey:{"currentStagedRemainingBytes"), @"currentStagedRemainingBytes"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation eliminationSelectorsCount](self forKey:{"eliminationSelectorsCount"), @"eliminationSelectorsCount"}];
  [v17 encodeBool:-[MAAutoAssetControlStagerInformation eliminationSetConfigurationCurrentJob](self forKey:{"eliminationSetConfigurationCurrentJob"), @"eliminationSetConfigurationCurrentJob"}];
  [v17 encodeInt64:-[MAAutoAssetControlStagerInformation eliminationSelectorsAcknowledgedCount](self forKey:{"eliminationSelectorsAcknowledgedCount"), @"eliminationSelectorsAcknowledgedCount"}];
}

- (id)description
{
  v65 = MEMORY[0x1E696AEC0];
  v64 = [(MAAutoAssetControlStagerInformation *)self persistedStateCount];
  v63 = [(MAAutoAssetControlStagerInformation *)self persistedTargetLookupResultsCount];
  v62 = [(MAAutoAssetControlStagerInformation *)self persistedAvailableForStagingByTargetCount];
  v3 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (v3)
  {
    v4 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    v4 = @"N";
  }

  v71 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (v71)
  {
    v70 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    v70 = @"N";
  }

  v5 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (v5)
  {
    v6 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v72 = v4;
  v73 = v3;
  if (v7)
  {
    v8 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    v8 = @"N";
  }

  v60 = [(MAAutoAssetControlStagerInformation *)self startupCandidateAssetCount];
  v59 = [(MAAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  v58 = [(MAAutoAssetControlStagerInformation *)self startupActivelyStagingAssetCount];
  v57 = [(MAAutoAssetControlStagerInformation *)self startupAwaitingStagingAssetCount];
  v56 = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  v55 = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v9 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  v90 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (v90)
  {
    v81 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    v81 = @"N";
  }

  [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  v89 = v10 = @"N";
  if (v89)
  {
    v80 = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    v80 = @"N";
  }

  if ([(MAAutoAssetControlStagerInformation *)self loadPersistedPostponed])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v54 = v11;
  if ([(MAAutoAssetControlStagerInformation *)self alwaysPromoteStagedAssets])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  v53 = v12;
  v88 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (v88)
  {
    v10 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  v87 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  if (v87)
  {
    v78 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    v78 = @"N";
  }

  v86 = [(MAAutoAssetControlStagerInformation *)self assetTargetTrainName];
  if (v86)
  {
    v77 = [(MAAutoAssetControlStagerInformation *)self assetTargetTrainName];
  }

  else
  {
    v77 = @"N";
  }

  v85 = [(MAAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  if (v85)
  {
    v76 = [(MAAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  }

  else
  {
    v76 = @"N";
  }

  v84 = [(MAAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  v79 = v10;
  if (v84)
  {
    v75 = [(MAAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  }

  else
  {
    v75 = @"N";
  }

  v83 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  v52 = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingRequiredCount];
  v51 = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingOptionalCount];
  v50 = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsRequiredCount];
  v49 = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsOptionalCount];
  v48 = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  v47 = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  v82 = v13 = @"N";
  if (v82)
  {
    v74 = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    v74 = @"N";
  }

  v14 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  v45 = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingRequiredCount];
  v43 = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingOptionalCount];
  v42 = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsRequiredCount];
  v41 = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsOptionalCount];
  v39 = [(MAAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingRequiredCount];
  v38 = [(MAAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingOptionalCount];
  v37 = [(MAAutoAssetControlStagerInformation *)self stagingClientDetermineRequestsCount];
  if ([(MAAutoAssetControlStagerInformation *)self stagingClientDownloadRequestActive])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v36 = v15;
  if ([(MAAutoAssetControlStagerInformation *)self stagingClientRequestActive])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v35 = v16;
  v44 = [(MAAutoAssetControlStagerInformation *)self stagingClientName];
  v69 = v5;
  v68 = v6;
  v67 = v7;
  v66 = v8;
  v61 = v9;
  v46 = v14;
  if (v44)
  {
    v40 = [(MAAutoAssetControlStagerInformation *)self stagingClientName];
  }

  else
  {
    v40 = @"N";
  }

  v34 = [(MAAutoAssetControlStagerInformation *)self setConfigurationsCount];
  v33 = [(MAAutoAssetControlStagerInformation *)self setTargetsCount];
  v32 = [(MAAutoAssetControlStagerInformation *)self scheduledJobsCount];
  v31 = [(MAAutoAssetControlStagerInformation *)self candidatesForStagingCount];
  v30 = [(MAAutoAssetControlStagerInformation *)self candidateSetConfigurationsCount];
  v29 = [(MAAutoAssetControlStagerInformation *)self setLookupResultsCount];
  v28 = [(MAAutoAssetControlStagerInformation *)self baseForStagingDescriptorsCount];
  v27 = [(MAAutoAssetControlStagerInformation *)self determiningBySelectorCount];
  v17 = [(MAAutoAssetControlStagerInformation *)self availableForStagingCount];
  v18 = [(MAAutoAssetControlStagerInformation *)self awaitingStagingAttemptCount];
  v19 = [(MAAutoAssetControlStagerInformation *)self successfullyStagedCount];
  v20 = [(MAAutoAssetControlStagerInformation *)self overallStagedTotalExpectedBytes];
  v21 = [(MAAutoAssetControlStagerInformation *)self overallStagedDownloadedSoFarBytes];
  v22 = [(MAAutoAssetControlStagerInformation *)self currentStagedLastWrittenBytes];
  v23 = [(MAAutoAssetControlStagerInformation *)self currentStagedRemainingBytes];
  v24 = [(MAAutoAssetControlStagerInformation *)self eliminationSelectorsCount];
  if ([(MAAutoAssetControlStagerInformation *)self eliminationSetConfigurationCurrentJob])
  {
    v13 = @"Y";
  }

  v25 = [v65 stringWithFormat:@">>>\nPERSISTED COUNTS:\n                            General: %llu\n                TargetLookupResults: %llu\n        AvailableForStagingByTarget: %llu\n\nSTARTUP:\n           LastStagingFromOSVersion: %@\n        LastStagingFromBuildVersion: %@\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n                CandidateAssetCount: %llu\n      DeterminedAvailableAssetCount: %llu\n          ActivelyStagingAssetCount: %llu\n          AwaitingStagingAssetCount: %llu\n                   StagedAssetCount: %llu\n       StagedAssetTotalContentBytes: %llu\n               PreviousOTASituation: %@\n               StagingFromOSVersion: %@\n            StagingFromBuildVersion: %@\n\nCONTROL:\n             LoadPersistedPostponed: %@\n          AlwaysPromoteStagedAssets: %@\n\nMOST-RECENT TARGET:\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n               AssetTargetTrainName: %@\n          AssetTargetRestoreVersion: %@\n           OptionalAssetSizeAllowed: %@\n           ActiveTargetOTASituation: %@\n      ActiveCandidatesRequiredCount: %llu\n      ActiveCandidatesOptionalCount: %llu\n      ActiveSetConfigsRequiredCount: %llu\n      ActiveSetConfigsOptionalCount: %llu\n       ActiveAvailableRequiredCount: %llu\n       ActiveAvaialbleOptionalCount: %llu\n\nOTHER TARGET:\n                    OtherTargetName: %@\n            OtherTargetOTASituation: %@\n       OtherCandidatesRequiredCount: %llu\n       OtherCandidatesOptionalCount: %llu\n       OtherSetConfigsRequiredCount: %llu\n       OtherSetConfigsOptionalCount: %llu\n        OtherAvailableRequiredCount: %llu\n        OtherAvaialbleOptionalCount: %llu\n\nSTAGING-CLIENT REQUESTS:\n                     DetermineCount: %llu\n                     DownloadActive: %@\n                             Active: %@\n                               Name: %@\n\nDETERMINE:\n             SetConfigurationsCount: %llu\n                    SetTargetsCount: %llu\n                 ScheduledJobsCount: %llu\n\nCANDIDATES:\n          CandidatesForStagingCount: %llu\n             SetConfigurationsCount: %llu\n              SetLookupResultsCount: %llu\n     BaseForStagingDescriptorsCount: %llu\n         DeterminingBySelectorCount: %llu\n\nAVAILABLE-OR-STAGED:\n           AvailableForStagingCount: %llu\n        AwaitingStagingAttemptCount: %llu\n            SuccessfullyStagedCount: %llu\n\nPROGRESS:\n    OverallStagedTotalExpectedBytes: %llu\n  OverallStagedDownloadedSoFarBytes: %llu\n      CurrentStagedLastWrittenBytes: %llu\n        CurrentStagedRemainingBytes: %llu\n\nELIMINATION:\n    SelectorsCount: %llu\n    SetConfigurationCurrentJob: %@\n    SelectorsAcknowledgedCount: %llu\n<<<]", v64, v63, v62, v72, v70, v68, v66, v60, v59, v58, v57, v56, v55, v61, v81, v80, v54, v53, v79, v78, v77, v76, v75, v83, v52, v51, v50, v49, v48, v47, v74, v46, v45, v43, v42, v41, v39, v38, v37, v36, v35, v40, v34, v33, v32, v31, v30, v29, v28, v27, v17, v18, v19, v20, v21, v22, v23, v24, v13, -[MAAutoAssetControlStagerInformation eliminationSelectorsAcknowledgedCount](self, "eliminationSelectorsAcknowledgedCount")];
  if (v44)
  {
  }

  if (v82)
  {
  }

  if (v84)
  {
  }

  if (v85)
  {
  }

  if (v86)
  {
  }

  if (v87)
  {
  }

  if (v88)
  {
  }

  if (v89)
  {
  }

  if (v90)
  {
  }

  if (v67)
  {
  }

  if (v69)
  {
  }

  if (v71)
  {
  }

  if (v73)
  {
  }

  return v25;
}

- (id)summary
{
  v24 = MEMORY[0x1E696AEC0];
  v3 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (v3)
  {
    v4 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    v4 = @"N";
  }

  v5 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (v5)
  {
    v6 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    v6 = @"N";
  }

  v7 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (v7)
  {
    v8 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    v8 = @"N";
  }

  v25 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v29 = v3;
  v27 = v5;
  if (v25)
  {
    v34 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    v34 = @"N";
  }

  v22 = [(MAAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  v21 = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  v20 = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v36 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  v9 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (v9)
  {
    v33 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    v33 = @"N";
  }

  v10 = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  if (v10)
  {
    v32 = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    v32 = @"N";
  }

  v35 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (v35)
  {
    v31 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  else
  {
    v31 = @"N";
  }

  v19 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  v28 = v4;
  v26 = v8;
  v23 = v10;
  if (v19)
  {
    v30 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    v30 = @"N";
  }

  v11 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  v12 = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  v13 = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  v14 = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  if (v14)
  {
    v15 = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    v15 = @"N";
  }

  v16 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  v17 = [v24 stringWithFormat:@"STARTUP{lastStagingFrom:%@(%@)|target:%@(%@)|determined:%llu|staged:%llu(%llu bytes)|situation:%@|from:%@(%@)}|MOST-RECENT{target:%@(%@)|situation:%@|(available)R:%llu, O:%llu}|OTHER{target:%@|situation:%@|(available)R:%llu, O:%llu}|staged:%llu", v28, v6, v26, v34, v22, v21, v20, v36, v33, v32, v31, v30, v11, v12, v13, v15, v16, -[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingRequiredCount](self, "otherTargetAvailableForStagingRequiredCount"), -[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingOptionalCount](self, "otherTargetAvailableForStagingOptionalCount"), -[MAAutoAssetControlStagerInformation successfullyStagedCount](self, "successfullyStagedCount")];

  if (v14)
  {
  }

  if (v19)
  {
  }

  if (v35)
  {
  }

  if (v23)
  {
  }

  if (v9)
  {
  }

  if (v25)
  {
  }

  if (v7)
  {
  }

  if (v27)
  {
  }

  if (v29)
  {
  }

  return v17;
}

+ (id)previousOTASituationName:(int64_t)a3
{
  v3 = @"UNKNOWN";
  if (a3 > 299)
  {
    v4 = @"STAGED_PARTIAL";
    v9 = @"STAGED_ALL_DESIRED";
    if (a3 != 501)
    {
      v9 = @"UNKNOWN";
    }

    if (a3 != 500)
    {
      v4 = v9;
    }

    v10 = @"DOWNLOADED_EMPTIED";
    v11 = @"DOWNLOADED_BLOCKED";
    if (a3 != 403)
    {
      v11 = @"UNKNOWN";
    }

    if (a3 != 402)
    {
      v10 = v11;
    }

    if (a3 <= 499)
    {
      v4 = v10;
    }

    if (a3 == 401)
    {
      v3 = @"DOWNLOADED_NOTHING";
    }

    if (a3 == 301)
    {
      v3 = @"CLIENT_SET_TARGET";
    }

    if (a3 == 300)
    {
      v3 = @"CLIENT_ALTERED";
    }

    v8 = a3 <= 401;
  }

  else
  {
    v4 = @"DETERMINED_AVAILABLE";
    v5 = @"DETERMINED_PURGED";
    if (a3 != 204)
    {
      v5 = @"UNKNOWN";
    }

    if (a3 != 203)
    {
      v4 = v5;
    }

    v6 = @"DETERMINED_NO_NEWER";
    v7 = @"DETERMINED_BLOCKED";
    if (a3 != 202)
    {
      v7 = @"UNKNOWN";
    }

    if (a3 != 201)
    {
      v6 = v7;
    }

    if (a3 <= 202)
    {
      v4 = v6;
    }

    if (a3 == 200)
    {
      v3 = @"DETERMINED_PARTIAL";
    }

    if (a3 == 101)
    {
      v3 = @"OTA_FROM_LEGACY";
    }

    if (a3 == 100)
    {
      v3 = @"OTA_NEVER";
    }

    v8 = a3 <= 200;
  }

  if (v8)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

@end