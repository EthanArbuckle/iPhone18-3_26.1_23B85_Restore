@interface MAAutoAssetControlStagerInformation
+ (id)previousOTASituationName:(int64_t)name;
- (MAAutoAssetControlStagerInformation)init;
- (MAAutoAssetControlStagerInformation)initWithCoder:(id)coder;
- (id)description;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
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

- (MAAutoAssetControlStagerInformation)initWithCoder:(id)coder
{
  coderCopy = coder;
  v33.receiver = self;
  v33.super_class = MAAutoAssetControlStagerInformation;
  v5 = [(MAAutoAssetControlStagerInformation *)&v33 init];
  if (v5)
  {
    v5->_persistedStateCount = [coderCopy decodeIntegerForKey:@"persistedStateCount"];
    v5->_persistedTargetLookupResultsCount = [coderCopy decodeInt64ForKey:@"persistedTargetLookupResultsCount"];
    v5->_persistedAvailableForStagingByTargetCount = [coderCopy decodeInt64ForKey:@"persistedAvailableForStagingByTargetCount"];
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromOSVersion"];
    startupLastStagingFromOSVersion = v5->_startupLastStagingFromOSVersion;
    v5->_startupLastStagingFromOSVersion = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupLastStagingFromBuildVersion"];
    startupLastStagingFromBuildVersion = v5->_startupLastStagingFromBuildVersion;
    v5->_startupLastStagingFromBuildVersion = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetOSVersion"];
    startupAssetTargetOSVersion = v5->_startupAssetTargetOSVersion;
    v5->_startupAssetTargetOSVersion = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"startupAssetTargetBuildVersion"];
    startupAssetTargetBuildVersion = v5->_startupAssetTargetBuildVersion;
    v5->_startupAssetTargetBuildVersion = v12;

    v5->_startupCandidateAssetCount = [coderCopy decodeInt64ForKey:@"startupCandidateAssetCount"];
    v5->_startupDeterminedAvailableAssetCount = [coderCopy decodeInt64ForKey:@"startupDeterminedAvailableAssetCount"];
    v5->_startupActivelyStagingAssetCount = [coderCopy decodeInt64ForKey:@"startupActivelyStagingAssetCount"];
    v5->_startupAwaitingStagingAssetCount = [coderCopy decodeInt64ForKey:@"startupAwaitingStagingAssetCount"];
    v5->_startupStagedAssetCount = [coderCopy decodeInt64ForKey:@"startupStagedAssetCount"];
    v5->_startupStagedAssetTotalContentBytes = [coderCopy decodeInt64ForKey:@"startupStagedAssetTotalContentBytes"];
    v5->_startupPreviousOTASituation = [coderCopy decodeIntegerForKey:@"startupPreviousOTASituation"];
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromOSVersion"];
    stagingFromOSVersion = v5->_stagingFromOSVersion;
    v5->_stagingFromOSVersion = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingFromBuildVersion"];
    stagingFromBuildVersion = v5->_stagingFromBuildVersion;
    v5->_stagingFromBuildVersion = v16;

    v5->_loadPersistedPostponed = [coderCopy decodeBoolForKey:@"loadPersistedPostponed"];
    v5->_alwaysPromoteStagedAssets = [coderCopy decodeBoolForKey:@"alwaysPromoteStagedAssets"];
    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetOSVersion"];
    assetTargetOSVersion = v5->_assetTargetOSVersion;
    v5->_assetTargetOSVersion = v18;

    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetBuildVersion"];
    assetTargetBuildVersion = v5->_assetTargetBuildVersion;
    v5->_assetTargetBuildVersion = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetTrainName"];
    assetTargetTrainName = v5->_assetTargetTrainName;
    v5->_assetTargetTrainName = v22;

    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetTargetRestoreVersion"];
    assetTargetRestoreVersion = v5->_assetTargetRestoreVersion;
    v5->_assetTargetRestoreVersion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"optionalAssetSizeAllowed"];
    optionalAssetSizeAllowed = v5->_optionalAssetSizeAllowed;
    v5->_optionalAssetSizeAllowed = v26;

    v5->_activeTargetOTASituation = [coderCopy decodeIntegerForKey:@"activeTargetOTASituation"];
    v5->_activeTargetCandidatesForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidatesForStagingRequiredCount"];
    v5->_activeTargetCandidatesForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidatesForStagingOptionalCount"];
    v5->_activeTargetCandidateSetConfigurationsRequiredCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsRequiredCount"];
    v5->_activeTargetCandidateSetConfigurationsOptionalCount = [coderCopy decodeInt64ForKey:@"activeTargetCandidateSetConfigurationsOptionalCount"];
    v5->_activeTargetAvailableForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"activeTargetAvailableForStagingRequiredCount"];
    v5->_activeTargetAvailableForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"activeTargetAvailableForStagingOptionalCount"];
    v28 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"otherTargetName"];
    otherTargetName = v5->_otherTargetName;
    v5->_otherTargetName = v28;

    v5->_otherTargetOTASituation = [coderCopy decodeIntegerForKey:@"otherTargetOTASituation"];
    v5->_otherTargetCandidatesForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidatesForStagingRequiredCount"];
    v5->_otherTargetCandidatesForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidatesForStagingOptionalCount"];
    v5->_otherTargetCandidateSetConfigurationsRequiredCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsRequiredCount"];
    v5->_otherTargetCandidateSetConfigurationsOptionalCount = [coderCopy decodeInt64ForKey:@"otherTargetCandidateSetConfigurationsOptionalCount"];
    v5->_otherTargetAvailableForStagingRequiredCount = [coderCopy decodeInt64ForKey:@"otherTargetAvailableForStagingRequiredCount"];
    v5->_otherTargetAvailableForStagingOptionalCount = [coderCopy decodeInt64ForKey:@"otherTargetAvailableForStagingOptionalCount"];
    v5->_stagingClientDetermineRequestsCount = [coderCopy decodeInt64ForKey:@"stagingClientDetermineRequestsCount"];
    v5->_stagingClientDownloadRequestActive = [coderCopy decodeBoolForKey:@"stagingClientDownloadRequestActive"];
    v5->_stagingClientRequestActive = [coderCopy decodeBoolForKey:@"stagingClientRequestActive"];
    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagingClientName"];
    stagingClientName = v5->_stagingClientName;
    v5->_stagingClientName = v30;

    v5->_setConfigurationsCount = [coderCopy decodeInt64ForKey:@"setConfigurationsCount"];
    v5->_setTargetsCount = [coderCopy decodeInt64ForKey:@"setTargetsCount"];
    v5->_scheduledJobsCount = [coderCopy decodeInt64ForKey:@"scheduledJobsCount"];
    v5->_candidatesForStagingCount = [coderCopy decodeInt64ForKey:@"candidatesForStagingCount"];
    v5->_candidateSetConfigurationsCount = [coderCopy decodeInt64ForKey:@"candidateSetConfigurationsCount"];
    v5->_setLookupResultsCount = [coderCopy decodeInt64ForKey:@"setLookupResultsCount"];
    v5->_baseForStagingDescriptorsCount = [coderCopy decodeInt64ForKey:@"baseForStagingDescriptorsCount"];
    v5->_determiningBySelectorCount = [coderCopy decodeInt64ForKey:@"determiningBySelectorCount"];
    v5->_availableForStagingCount = [coderCopy decodeInt64ForKey:@"availableForStagingCount"];
    v5->_awaitingStagingAttemptCount = [coderCopy decodeInt64ForKey:@"awaitingStagingAttemptCount"];
    v5->_successfullyStagedCount = [coderCopy decodeInt64ForKey:@"successfullyStagedCount"];
    v5->_overallStagedTotalExpectedBytes = [coderCopy decodeInt64ForKey:@"overallStagedTotalExpectedBytes"];
    v5->_overallStagedDownloadedSoFarBytes = [coderCopy decodeInt64ForKey:@"overallStagedDownloadedSoFarBytes"];
    v5->_currentStagedLastWrittenBytes = [coderCopy decodeInt64ForKey:@"currentStagedLastWrittenBytes"];
    v5->_currentStagedRemainingBytes = [coderCopy decodeInt64ForKey:@"currentStagedRemainingBytes"];
    v5->_eliminationSelectorsCount = [coderCopy decodeInt64ForKey:@"eliminationSelectorsCount"];
    v5->_eliminationSetConfigurationCurrentJob = [coderCopy decodeBoolForKey:@"eliminationSetConfigurationCurrentJob"];
    v5->_eliminationSelectorsAcknowledgedCount = [coderCopy decodeInt64ForKey:@"eliminationSelectorsAcknowledgedCount"];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation persistedStateCount](self forKey:{"persistedStateCount"), @"persistedStateCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation persistedTargetLookupResultsCount](self forKey:{"persistedTargetLookupResultsCount"), @"persistedTargetLookupResultsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation persistedAvailableForStagingByTargetCount](self forKey:{"persistedAvailableForStagingByTargetCount"), @"persistedAvailableForStagingByTargetCount"}];
  startupLastStagingFromOSVersion = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  [coderCopy encodeObject:startupLastStagingFromOSVersion forKey:@"startupLastStagingFromOSVersion"];

  startupLastStagingFromBuildVersion = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  [coderCopy encodeObject:startupLastStagingFromBuildVersion forKey:@"startupLastStagingFromBuildVersion"];

  startupAssetTargetOSVersion = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  [coderCopy encodeObject:startupAssetTargetOSVersion forKey:@"startupAssetTargetOSVersion"];

  startupAssetTargetBuildVersion = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  [coderCopy encodeObject:startupAssetTargetBuildVersion forKey:@"startupAssetTargetBuildVersion"];

  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation startupCandidateAssetCount](self forKey:{"startupCandidateAssetCount"), @"startupCandidateAssetCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation startupDeterminedAvailableAssetCount](self forKey:{"startupDeterminedAvailableAssetCount"), @"startupDeterminedAvailableAssetCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation startupActivelyStagingAssetCount](self forKey:{"startupActivelyStagingAssetCount"), @"startupActivelyStagingAssetCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation startupAwaitingStagingAssetCount](self forKey:{"startupAwaitingStagingAssetCount"), @"startupAwaitingStagingAssetCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation startupStagedAssetCount](self forKey:{"startupStagedAssetCount"), @"startupStagedAssetCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation startupStagedAssetTotalContentBytes](self forKey:{"startupStagedAssetTotalContentBytes"), @"startupStagedAssetTotalContentBytes"}];
  [coderCopy encodeInteger:-[MAAutoAssetControlStagerInformation startupPreviousOTASituation](self forKey:{"startupPreviousOTASituation"), @"startupPreviousOTASituation"}];
  stagingFromOSVersion = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  [coderCopy encodeObject:stagingFromOSVersion forKey:@"stagingFromOSVersion"];

  stagingFromBuildVersion = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  [coderCopy encodeObject:stagingFromBuildVersion forKey:@"stagingFromBuildVersion"];

  [coderCopy encodeBool:-[MAAutoAssetControlStagerInformation loadPersistedPostponed](self forKey:{"loadPersistedPostponed"), @"loadPersistedPostponed"}];
  [coderCopy encodeBool:-[MAAutoAssetControlStagerInformation alwaysPromoteStagedAssets](self forKey:{"alwaysPromoteStagedAssets"), @"alwaysPromoteStagedAssets"}];
  assetTargetOSVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  [coderCopy encodeObject:assetTargetOSVersion forKey:@"assetTargetOSVersion"];

  assetTargetBuildVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  [coderCopy encodeObject:assetTargetBuildVersion forKey:@"assetTargetBuildVersion"];

  assetTargetTrainName = [(MAAutoAssetControlStagerInformation *)self assetTargetTrainName];
  [coderCopy encodeObject:assetTargetTrainName forKey:@"assetTargetTrainName"];

  assetTargetRestoreVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  [coderCopy encodeObject:assetTargetRestoreVersion forKey:@"assetTargetRestoreVersion"];

  optionalAssetSizeAllowed = [(MAAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  [coderCopy encodeObject:optionalAssetSizeAllowed forKey:@"optionalAssetSizeAllowed"];

  [coderCopy encodeInteger:-[MAAutoAssetControlStagerInformation activeTargetOTASituation](self forKey:{"activeTargetOTASituation"), @"activeTargetOTASituation"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidatesForStagingRequiredCount](self forKey:{"activeTargetCandidatesForStagingRequiredCount"), @"activeTargetCandidatesForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidatesForStagingOptionalCount](self forKey:{"activeTargetCandidatesForStagingOptionalCount"), @"activeTargetCandidatesForStagingOptionalCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsRequiredCount](self forKey:{"activeTargetCandidateSetConfigurationsRequiredCount"), @"activeTargetCandidateSetConfigurationsRequiredCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetCandidateSetConfigurationsOptionalCount](self forKey:{"activeTargetCandidateSetConfigurationsOptionalCount"), @"activeTargetCandidateSetConfigurationsOptionalCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetAvailableForStagingRequiredCount](self forKey:{"activeTargetAvailableForStagingRequiredCount"), @"activeTargetAvailableForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation activeTargetAvailableForStagingOptionalCount](self forKey:{"activeTargetAvailableForStagingOptionalCount"), @"activeTargetAvailableForStagingOptionalCount"}];
  otherTargetName = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  [coderCopy encodeObject:otherTargetName forKey:@"otherTargetName"];

  [coderCopy encodeInteger:-[MAAutoAssetControlStagerInformation otherTargetOTASituation](self forKey:{"otherTargetOTASituation"), @"otherTargetOTASituation"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidatesForStagingRequiredCount](self forKey:{"otherTargetCandidatesForStagingRequiredCount"), @"otherTargetCandidatesForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidatesForStagingOptionalCount](self forKey:{"otherTargetCandidatesForStagingOptionalCount"), @"otherTargetCandidatesForStagingOptionalCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsRequiredCount](self forKey:{"otherTargetCandidateSetConfigurationsRequiredCount"), @"otherTargetCandidateSetConfigurationsRequiredCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetCandidateSetConfigurationsOptionalCount](self forKey:{"otherTargetCandidateSetConfigurationsOptionalCount"), @"otherTargetCandidateSetConfigurationsOptionalCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingRequiredCount](self forKey:{"otherTargetAvailableForStagingRequiredCount"), @"otherTargetAvailableForStagingRequiredCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingOptionalCount](self forKey:{"otherTargetAvailableForStagingOptionalCount"), @"otherTargetAvailableForStagingOptionalCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation stagingClientDetermineRequestsCount](self forKey:{"stagingClientDetermineRequestsCount"), @"stagingClientDetermineRequestsCount"}];
  [coderCopy encodeBool:-[MAAutoAssetControlStagerInformation stagingClientDownloadRequestActive](self forKey:{"stagingClientDownloadRequestActive"), @"stagingClientDownloadRequestActive"}];
  [coderCopy encodeBool:-[MAAutoAssetControlStagerInformation stagingClientRequestActive](self forKey:{"stagingClientRequestActive"), @"stagingClientRequestActive"}];
  stagingClientName = [(MAAutoAssetControlStagerInformation *)self stagingClientName];
  [coderCopy encodeObject:stagingClientName forKey:@"stagingClientName"];

  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation setConfigurationsCount](self forKey:{"setConfigurationsCount"), @"setConfigurationsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation setTargetsCount](self forKey:{"setTargetsCount"), @"setTargetsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation scheduledJobsCount](self forKey:{"scheduledJobsCount"), @"scheduledJobsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation candidatesForStagingCount](self forKey:{"candidatesForStagingCount"), @"candidatesForStagingCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation candidateSetConfigurationsCount](self forKey:{"candidateSetConfigurationsCount"), @"candidateSetConfigurationsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation setLookupResultsCount](self forKey:{"setLookupResultsCount"), @"setLookupResultsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation baseForStagingDescriptorsCount](self forKey:{"baseForStagingDescriptorsCount"), @"baseForStagingDescriptorsCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation determiningBySelectorCount](self forKey:{"determiningBySelectorCount"), @"determiningBySelectorCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation availableForStagingCount](self forKey:{"availableForStagingCount"), @"availableForStagingCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation awaitingStagingAttemptCount](self forKey:{"awaitingStagingAttemptCount"), @"awaitingStagingAttemptCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation successfullyStagedCount](self forKey:{"successfullyStagedCount"), @"successfullyStagedCount"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation overallStagedTotalExpectedBytes](self forKey:{"overallStagedTotalExpectedBytes"), @"overallStagedTotalExpectedBytes"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation overallStagedDownloadedSoFarBytes](self forKey:{"overallStagedDownloadedSoFarBytes"), @"overallStagedDownloadedSoFarBytes"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation currentStagedLastWrittenBytes](self forKey:{"currentStagedLastWrittenBytes"), @"currentStagedLastWrittenBytes"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation currentStagedRemainingBytes](self forKey:{"currentStagedRemainingBytes"), @"currentStagedRemainingBytes"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation eliminationSelectorsCount](self forKey:{"eliminationSelectorsCount"), @"eliminationSelectorsCount"}];
  [coderCopy encodeBool:-[MAAutoAssetControlStagerInformation eliminationSetConfigurationCurrentJob](self forKey:{"eliminationSetConfigurationCurrentJob"), @"eliminationSetConfigurationCurrentJob"}];
  [coderCopy encodeInt64:-[MAAutoAssetControlStagerInformation eliminationSelectorsAcknowledgedCount](self forKey:{"eliminationSelectorsAcknowledgedCount"), @"eliminationSelectorsAcknowledgedCount"}];
}

- (id)description
{
  v65 = MEMORY[0x1E696AEC0];
  persistedStateCount = [(MAAutoAssetControlStagerInformation *)self persistedStateCount];
  persistedTargetLookupResultsCount = [(MAAutoAssetControlStagerInformation *)self persistedTargetLookupResultsCount];
  persistedAvailableForStagingByTargetCount = [(MAAutoAssetControlStagerInformation *)self persistedAvailableForStagingByTargetCount];
  startupLastStagingFromOSVersion = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (startupLastStagingFromOSVersion)
  {
    startupLastStagingFromOSVersion2 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    startupLastStagingFromOSVersion2 = @"N";
  }

  startupLastStagingFromBuildVersion = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (startupLastStagingFromBuildVersion)
  {
    startupLastStagingFromBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    startupLastStagingFromBuildVersion2 = @"N";
  }

  startupAssetTargetOSVersion = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (startupAssetTargetOSVersion)
  {
    startupAssetTargetOSVersion2 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    startupAssetTargetOSVersion2 = @"N";
  }

  startupAssetTargetBuildVersion = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v72 = startupLastStagingFromOSVersion2;
  v73 = startupLastStagingFromOSVersion;
  if (startupAssetTargetBuildVersion)
  {
    startupAssetTargetBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    startupAssetTargetBuildVersion2 = @"N";
  }

  startupCandidateAssetCount = [(MAAutoAssetControlStagerInformation *)self startupCandidateAssetCount];
  startupDeterminedAvailableAssetCount = [(MAAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  startupActivelyStagingAssetCount = [(MAAutoAssetControlStagerInformation *)self startupActivelyStagingAssetCount];
  startupAwaitingStagingAssetCount = [(MAAutoAssetControlStagerInformation *)self startupAwaitingStagingAssetCount];
  startupStagedAssetCount = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  startupStagedAssetTotalContentBytes = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v9 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  stagingFromOSVersion = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (stagingFromOSVersion)
  {
    stagingFromOSVersion2 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    stagingFromOSVersion2 = @"N";
  }

  [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  v89 = assetTargetOSVersion2 = @"N";
  if (v89)
  {
    stagingFromBuildVersion = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    stagingFromBuildVersion = @"N";
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
  assetTargetOSVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (assetTargetOSVersion)
  {
    assetTargetOSVersion2 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  assetTargetBuildVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  if (assetTargetBuildVersion)
  {
    assetTargetBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    assetTargetBuildVersion2 = @"N";
  }

  assetTargetTrainName = [(MAAutoAssetControlStagerInformation *)self assetTargetTrainName];
  if (assetTargetTrainName)
  {
    assetTargetTrainName2 = [(MAAutoAssetControlStagerInformation *)self assetTargetTrainName];
  }

  else
  {
    assetTargetTrainName2 = @"N";
  }

  assetTargetRestoreVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  if (assetTargetRestoreVersion)
  {
    assetTargetRestoreVersion2 = [(MAAutoAssetControlStagerInformation *)self assetTargetRestoreVersion];
  }

  else
  {
    assetTargetRestoreVersion2 = @"N";
  }

  optionalAssetSizeAllowed = [(MAAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  v79 = assetTargetOSVersion2;
  if (optionalAssetSizeAllowed)
  {
    optionalAssetSizeAllowed2 = [(MAAutoAssetControlStagerInformation *)self optionalAssetSizeAllowed];
  }

  else
  {
    optionalAssetSizeAllowed2 = @"N";
  }

  v83 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  activeTargetCandidatesForStagingRequiredCount = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingRequiredCount];
  activeTargetCandidatesForStagingOptionalCount = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidatesForStagingOptionalCount];
  activeTargetCandidateSetConfigurationsRequiredCount = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsRequiredCount];
  activeTargetCandidateSetConfigurationsOptionalCount = [(MAAutoAssetControlStagerInformation *)self activeTargetCandidateSetConfigurationsOptionalCount];
  activeTargetAvailableForStagingRequiredCount = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  activeTargetAvailableForStagingOptionalCount = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  v82 = v13 = @"N";
  if (v82)
  {
    otherTargetName = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    otherTargetName = @"N";
  }

  v14 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  otherTargetCandidatesForStagingRequiredCount = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingRequiredCount];
  otherTargetCandidatesForStagingOptionalCount = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidatesForStagingOptionalCount];
  otherTargetCandidateSetConfigurationsRequiredCount = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsRequiredCount];
  otherTargetCandidateSetConfigurationsOptionalCount = [(MAAutoAssetControlStagerInformation *)self otherTargetCandidateSetConfigurationsOptionalCount];
  otherTargetAvailableForStagingRequiredCount = [(MAAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingRequiredCount];
  otherTargetAvailableForStagingOptionalCount = [(MAAutoAssetControlStagerInformation *)self otherTargetAvailableForStagingOptionalCount];
  stagingClientDetermineRequestsCount = [(MAAutoAssetControlStagerInformation *)self stagingClientDetermineRequestsCount];
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
  stagingClientName = [(MAAutoAssetControlStagerInformation *)self stagingClientName];
  v69 = startupAssetTargetOSVersion;
  v68 = startupAssetTargetOSVersion2;
  v67 = startupAssetTargetBuildVersion;
  v66 = startupAssetTargetBuildVersion2;
  v61 = v9;
  v46 = v14;
  if (stagingClientName)
  {
    stagingClientName2 = [(MAAutoAssetControlStagerInformation *)self stagingClientName];
  }

  else
  {
    stagingClientName2 = @"N";
  }

  setConfigurationsCount = [(MAAutoAssetControlStagerInformation *)self setConfigurationsCount];
  setTargetsCount = [(MAAutoAssetControlStagerInformation *)self setTargetsCount];
  scheduledJobsCount = [(MAAutoAssetControlStagerInformation *)self scheduledJobsCount];
  candidatesForStagingCount = [(MAAutoAssetControlStagerInformation *)self candidatesForStagingCount];
  candidateSetConfigurationsCount = [(MAAutoAssetControlStagerInformation *)self candidateSetConfigurationsCount];
  setLookupResultsCount = [(MAAutoAssetControlStagerInformation *)self setLookupResultsCount];
  baseForStagingDescriptorsCount = [(MAAutoAssetControlStagerInformation *)self baseForStagingDescriptorsCount];
  determiningBySelectorCount = [(MAAutoAssetControlStagerInformation *)self determiningBySelectorCount];
  availableForStagingCount = [(MAAutoAssetControlStagerInformation *)self availableForStagingCount];
  awaitingStagingAttemptCount = [(MAAutoAssetControlStagerInformation *)self awaitingStagingAttemptCount];
  successfullyStagedCount = [(MAAutoAssetControlStagerInformation *)self successfullyStagedCount];
  overallStagedTotalExpectedBytes = [(MAAutoAssetControlStagerInformation *)self overallStagedTotalExpectedBytes];
  overallStagedDownloadedSoFarBytes = [(MAAutoAssetControlStagerInformation *)self overallStagedDownloadedSoFarBytes];
  currentStagedLastWrittenBytes = [(MAAutoAssetControlStagerInformation *)self currentStagedLastWrittenBytes];
  currentStagedRemainingBytes = [(MAAutoAssetControlStagerInformation *)self currentStagedRemainingBytes];
  eliminationSelectorsCount = [(MAAutoAssetControlStagerInformation *)self eliminationSelectorsCount];
  if ([(MAAutoAssetControlStagerInformation *)self eliminationSetConfigurationCurrentJob])
  {
    v13 = @"Y";
  }

  v25 = [v65 stringWithFormat:@">>>\nPERSISTED COUNTS:\n                            General: %llu\n                TargetLookupResults: %llu\n        AvailableForStagingByTarget: %llu\n\nSTARTUP:\n           LastStagingFromOSVersion: %@\n        LastStagingFromBuildVersion: %@\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n                CandidateAssetCount: %llu\n      DeterminedAvailableAssetCount: %llu\n          ActivelyStagingAssetCount: %llu\n          AwaitingStagingAssetCount: %llu\n                   StagedAssetCount: %llu\n       StagedAssetTotalContentBytes: %llu\n               PreviousOTASituation: %@\n               StagingFromOSVersion: %@\n            StagingFromBuildVersion: %@\n\nCONTROL:\n             LoadPersistedPostponed: %@\n          AlwaysPromoteStagedAssets: %@\n\nMOST-RECENT TARGET:\n               AssetTargetOSVersion: %@\n            AssetTargetBuildVersion: %@\n               AssetTargetTrainName: %@\n          AssetTargetRestoreVersion: %@\n           OptionalAssetSizeAllowed: %@\n           ActiveTargetOTASituation: %@\n      ActiveCandidatesRequiredCount: %llu\n      ActiveCandidatesOptionalCount: %llu\n      ActiveSetConfigsRequiredCount: %llu\n      ActiveSetConfigsOptionalCount: %llu\n       ActiveAvailableRequiredCount: %llu\n       ActiveAvaialbleOptionalCount: %llu\n\nOTHER TARGET:\n                    OtherTargetName: %@\n            OtherTargetOTASituation: %@\n       OtherCandidatesRequiredCount: %llu\n       OtherCandidatesOptionalCount: %llu\n       OtherSetConfigsRequiredCount: %llu\n       OtherSetConfigsOptionalCount: %llu\n        OtherAvailableRequiredCount: %llu\n        OtherAvaialbleOptionalCount: %llu\n\nSTAGING-CLIENT REQUESTS:\n                     DetermineCount: %llu\n                     DownloadActive: %@\n                             Active: %@\n                               Name: %@\n\nDETERMINE:\n             SetConfigurationsCount: %llu\n                    SetTargetsCount: %llu\n                 ScheduledJobsCount: %llu\n\nCANDIDATES:\n          CandidatesForStagingCount: %llu\n             SetConfigurationsCount: %llu\n              SetLookupResultsCount: %llu\n     BaseForStagingDescriptorsCount: %llu\n         DeterminingBySelectorCount: %llu\n\nAVAILABLE-OR-STAGED:\n           AvailableForStagingCount: %llu\n        AwaitingStagingAttemptCount: %llu\n            SuccessfullyStagedCount: %llu\n\nPROGRESS:\n    OverallStagedTotalExpectedBytes: %llu\n  OverallStagedDownloadedSoFarBytes: %llu\n      CurrentStagedLastWrittenBytes: %llu\n        CurrentStagedRemainingBytes: %llu\n\nELIMINATION:\n    SelectorsCount: %llu\n    SetConfigurationCurrentJob: %@\n    SelectorsAcknowledgedCount: %llu\n<<<]", persistedStateCount, persistedTargetLookupResultsCount, persistedAvailableForStagingByTargetCount, v72, startupLastStagingFromBuildVersion2, v68, v66, startupCandidateAssetCount, startupDeterminedAvailableAssetCount, startupActivelyStagingAssetCount, startupAwaitingStagingAssetCount, startupStagedAssetCount, startupStagedAssetTotalContentBytes, v61, stagingFromOSVersion2, stagingFromBuildVersion, v54, v53, v79, assetTargetBuildVersion2, assetTargetTrainName2, assetTargetRestoreVersion2, optionalAssetSizeAllowed2, v83, activeTargetCandidatesForStagingRequiredCount, activeTargetCandidatesForStagingOptionalCount, activeTargetCandidateSetConfigurationsRequiredCount, activeTargetCandidateSetConfigurationsOptionalCount, activeTargetAvailableForStagingRequiredCount, activeTargetAvailableForStagingOptionalCount, otherTargetName, v46, otherTargetCandidatesForStagingRequiredCount, otherTargetCandidatesForStagingOptionalCount, otherTargetCandidateSetConfigurationsRequiredCount, otherTargetCandidateSetConfigurationsOptionalCount, otherTargetAvailableForStagingRequiredCount, otherTargetAvailableForStagingOptionalCount, stagingClientDetermineRequestsCount, v36, v35, stagingClientName2, setConfigurationsCount, setTargetsCount, scheduledJobsCount, candidatesForStagingCount, candidateSetConfigurationsCount, setLookupResultsCount, baseForStagingDescriptorsCount, determiningBySelectorCount, availableForStagingCount, awaitingStagingAttemptCount, successfullyStagedCount, overallStagedTotalExpectedBytes, overallStagedDownloadedSoFarBytes, currentStagedLastWrittenBytes, currentStagedRemainingBytes, eliminationSelectorsCount, v13, -[MAAutoAssetControlStagerInformation eliminationSelectorsAcknowledgedCount](self, "eliminationSelectorsAcknowledgedCount")];
  if (stagingClientName)
  {
  }

  if (v82)
  {
  }

  if (optionalAssetSizeAllowed)
  {
  }

  if (assetTargetRestoreVersion)
  {
  }

  if (assetTargetTrainName)
  {
  }

  if (assetTargetBuildVersion)
  {
  }

  if (assetTargetOSVersion)
  {
  }

  if (v89)
  {
  }

  if (stagingFromOSVersion)
  {
  }

  if (v67)
  {
  }

  if (v69)
  {
  }

  if (startupLastStagingFromBuildVersion)
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
  startupLastStagingFromOSVersion = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  if (startupLastStagingFromOSVersion)
  {
    startupLastStagingFromOSVersion2 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromOSVersion];
  }

  else
  {
    startupLastStagingFromOSVersion2 = @"N";
  }

  startupLastStagingFromBuildVersion = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  if (startupLastStagingFromBuildVersion)
  {
    startupLastStagingFromBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self startupLastStagingFromBuildVersion];
  }

  else
  {
    startupLastStagingFromBuildVersion2 = @"N";
  }

  startupAssetTargetOSVersion = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  if (startupAssetTargetOSVersion)
  {
    startupAssetTargetOSVersion2 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetOSVersion];
  }

  else
  {
    startupAssetTargetOSVersion2 = @"N";
  }

  startupAssetTargetBuildVersion = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  v29 = startupLastStagingFromOSVersion;
  v27 = startupLastStagingFromBuildVersion;
  if (startupAssetTargetBuildVersion)
  {
    startupAssetTargetBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self startupAssetTargetBuildVersion];
  }

  else
  {
    startupAssetTargetBuildVersion2 = @"N";
  }

  startupDeterminedAvailableAssetCount = [(MAAutoAssetControlStagerInformation *)self startupDeterminedAvailableAssetCount];
  startupStagedAssetCount = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetCount];
  startupStagedAssetTotalContentBytes = [(MAAutoAssetControlStagerInformation *)self startupStagedAssetTotalContentBytes];
  v36 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self startupPreviousOTASituation]];
  stagingFromOSVersion = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  if (stagingFromOSVersion)
  {
    stagingFromOSVersion2 = [(MAAutoAssetControlStagerInformation *)self stagingFromOSVersion];
  }

  else
  {
    stagingFromOSVersion2 = @"N";
  }

  stagingFromBuildVersion = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  if (stagingFromBuildVersion)
  {
    stagingFromBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self stagingFromBuildVersion];
  }

  else
  {
    stagingFromBuildVersion2 = @"N";
  }

  assetTargetOSVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  if (assetTargetOSVersion)
  {
    assetTargetOSVersion2 = [(MAAutoAssetControlStagerInformation *)self assetTargetOSVersion];
  }

  else
  {
    assetTargetOSVersion2 = @"N";
  }

  assetTargetBuildVersion = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  v28 = startupLastStagingFromOSVersion2;
  v26 = startupAssetTargetOSVersion2;
  v23 = stagingFromBuildVersion;
  if (assetTargetBuildVersion)
  {
    assetTargetBuildVersion2 = [(MAAutoAssetControlStagerInformation *)self assetTargetBuildVersion];
  }

  else
  {
    assetTargetBuildVersion2 = @"N";
  }

  v11 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self activeTargetOTASituation]];
  activeTargetAvailableForStagingRequiredCount = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingRequiredCount];
  activeTargetAvailableForStagingOptionalCount = [(MAAutoAssetControlStagerInformation *)self activeTargetAvailableForStagingOptionalCount];
  otherTargetName = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  if (otherTargetName)
  {
    otherTargetName2 = [(MAAutoAssetControlStagerInformation *)self otherTargetName];
  }

  else
  {
    otherTargetName2 = @"N";
  }

  v16 = [MAAutoAssetControlStagerInformation previousOTASituationName:[(MAAutoAssetControlStagerInformation *)self otherTargetOTASituation]];
  v17 = [v24 stringWithFormat:@"STARTUP{lastStagingFrom:%@(%@)|target:%@(%@)|determined:%llu|staged:%llu(%llu bytes)|situation:%@|from:%@(%@)}|MOST-RECENT{target:%@(%@)|situation:%@|(available)R:%llu, O:%llu}|OTHER{target:%@|situation:%@|(available)R:%llu, O:%llu}|staged:%llu", v28, startupLastStagingFromBuildVersion2, v26, startupAssetTargetBuildVersion2, startupDeterminedAvailableAssetCount, startupStagedAssetCount, startupStagedAssetTotalContentBytes, v36, stagingFromOSVersion2, stagingFromBuildVersion2, assetTargetOSVersion2, assetTargetBuildVersion2, v11, activeTargetAvailableForStagingRequiredCount, activeTargetAvailableForStagingOptionalCount, otherTargetName2, v16, -[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingRequiredCount](self, "otherTargetAvailableForStagingRequiredCount"), -[MAAutoAssetControlStagerInformation otherTargetAvailableForStagingOptionalCount](self, "otherTargetAvailableForStagingOptionalCount"), -[MAAutoAssetControlStagerInformation successfullyStagedCount](self, "successfullyStagedCount")];

  if (otherTargetName)
  {
  }

  if (assetTargetBuildVersion)
  {
  }

  if (assetTargetOSVersion)
  {
  }

  if (v23)
  {
  }

  if (stagingFromOSVersion)
  {
  }

  if (startupAssetTargetBuildVersion)
  {
  }

  if (startupAssetTargetOSVersion)
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

+ (id)previousOTASituationName:(int64_t)name
{
  v3 = @"UNKNOWN";
  if (name > 299)
  {
    v4 = @"STAGED_PARTIAL";
    v9 = @"STAGED_ALL_DESIRED";
    if (name != 501)
    {
      v9 = @"UNKNOWN";
    }

    if (name != 500)
    {
      v4 = v9;
    }

    v10 = @"DOWNLOADED_EMPTIED";
    v11 = @"DOWNLOADED_BLOCKED";
    if (name != 403)
    {
      v11 = @"UNKNOWN";
    }

    if (name != 402)
    {
      v10 = v11;
    }

    if (name <= 499)
    {
      v4 = v10;
    }

    if (name == 401)
    {
      v3 = @"DOWNLOADED_NOTHING";
    }

    if (name == 301)
    {
      v3 = @"CLIENT_SET_TARGET";
    }

    if (name == 300)
    {
      v3 = @"CLIENT_ALTERED";
    }

    v8 = name <= 401;
  }

  else
  {
    v4 = @"DETERMINED_AVAILABLE";
    v5 = @"DETERMINED_PURGED";
    if (name != 204)
    {
      v5 = @"UNKNOWN";
    }

    if (name != 203)
    {
      v4 = v5;
    }

    v6 = @"DETERMINED_NO_NEWER";
    v7 = @"DETERMINED_BLOCKED";
    if (name != 202)
    {
      v7 = @"UNKNOWN";
    }

    if (name != 201)
    {
      v6 = v7;
    }

    if (name <= 202)
    {
      v4 = v6;
    }

    if (name == 200)
    {
      v3 = @"DETERMINED_PARTIAL";
    }

    if (name == 101)
    {
      v3 = @"OTA_FROM_LEGACY";
    }

    if (name == 100)
    {
      v3 = @"OTA_NEVER";
    }

    v8 = name <= 200;
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