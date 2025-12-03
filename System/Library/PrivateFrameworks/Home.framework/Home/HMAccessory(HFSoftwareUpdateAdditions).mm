@interface HMAccessory(HFSoftwareUpdateAdditions)
- (id)hf_fetchAvailableSoftwareUpdateWithOptions:()HFSoftwareUpdateAdditions;
- (id)hf_softwareUpdateDependentClasses;
- (id)hf_softwareUpdateDependentObjects;
- (id)hf_softwareUpdateDisplayableVersion;
- (id)hf_softwareUpdateDocumentation;
- (id)hf_softwareUpdateHash;
- (id)hf_softwareUpdatePortionComplete;
- (id)hf_softwareUpdateReleaseDate;
- (id)hf_softwareUpdateVersion;
- (id)hf_startSoftwareUpdate;
- (uint64_t)hf_hasNewValidSoftwareOrFirmwareUpdate;
- (uint64_t)hf_hasNewValidSoftwareUpdate;
- (uint64_t)hf_hasRequestedSoftwareUpdate;
- (uint64_t)hf_hasSoftwareUpdate;
- (uint64_t)hf_hasValidSoftwareOrFirmwareUpdate;
- (uint64_t)hf_hasValidSoftwareUpdate;
- (uint64_t)hf_isDownloadingSoftwareUpdate;
- (uint64_t)hf_isInstallingSoftwareUpdate;
- (uint64_t)hf_isReadyToInstallSoftwareUpdate;
- (uint64_t)hf_isSoftwareUpdateInProgress;
- (uint64_t)hf_isSoftwareUpdateInstalled;
- (uint64_t)hf_softwareUpdateDownloadSize;
- (uint64_t)hf_softwareUpdatePossessesNecessaryDocumentation;
- (uint64_t)hf_supportsSoftwareUpdate;
@end

@implementation HMAccessory(HFSoftwareUpdateAdditions)

- (uint64_t)hf_supportsSoftwareUpdate
{
  if ([self supportsSoftwareUpdateV2])
  {
    return 1;
  }

  softwareUpdateController = [self softwareUpdateController];
  v2 = softwareUpdateController != 0;

  return v2;
}

- (uint64_t)hf_hasValidSoftwareOrFirmwareUpdate
{
  if ([self isFirmwareUpdateAvailable])
  {
    return 1;
  }

  return [self hf_hasValidSoftwareUpdate];
}

- (uint64_t)hf_hasNewValidSoftwareOrFirmwareUpdate
{
  if ([self isFirmwareUpdateAvailable])
  {
    return 1;
  }

  return [self hf_hasNewValidSoftwareUpdate];
}

- (uint64_t)hf_hasSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager hasSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_hasValidSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager hasValidSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_hasNewValidSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager hasNewValidSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_hasRequestedSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager hasRequestedSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_isReadyToInstallSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager isReadyToInstallSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_isDownloadingSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager isDownloadingSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_isInstallingSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager isInstallingSoftwareUpdate:self];

  return v4;
}

- (uint64_t)hf_isSoftwareUpdateInProgress
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager isSoftwareUpdateInProgress:self];

  return v4;
}

- (uint64_t)hf_isSoftwareUpdateInstalled
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager isSoftwareUpdateInstalled:self];

  return v4;
}

- (uint64_t)hf_softwareUpdatePossessesNecessaryDocumentation
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdatePossessesNecessaryDocumentation:self];

  return v4;
}

- (id)hf_softwareUpdateDocumentation
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdateDocumentation:self];

  return v4;
}

- (id)hf_softwareUpdateVersion
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdateVersion:self];

  return v4;
}

- (id)hf_softwareUpdateDisplayableVersion
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdateDisplayableVersion:self];

  return v4;
}

- (id)hf_softwareUpdateReleaseDate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdateReleaseDate:self];

  return v4;
}

- (uint64_t)hf_softwareUpdateDownloadSize
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdateDownloadSize:self];

  return v4;
}

- (id)hf_softwareUpdatePortionComplete
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager softwareUpdatePortionComplete:self];

  return v4;
}

- (id)hf_fetchAvailableSoftwareUpdateWithOptions:()HFSoftwareUpdateAdditions
{
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v5 softwareUpdateManager];
  v7 = [softwareUpdateManager fetchAvailableSoftwareUpdate:self options:a3];

  return v7;
}

- (id)hf_startSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  softwareUpdateManager = [v2 softwareUpdateManager];
  v4 = [softwareUpdateManager startSoftwareUpdate:self];

  return v4;
}

- (id)hf_softwareUpdateHash
{
  v2 = MEMORY[0x277CCACA8];
  category = [self category];
  categoryType = [category categoryType];
  manufacturer = [self manufacturer];
  hf_softwareUpdateVersion = [self hf_softwareUpdateVersion];
  v7 = [v2 stringWithFormat:@"%@-%@-%@", categoryType, manufacturer, hf_softwareUpdateVersion];

  return v7;
}

- (id)hf_softwareUpdateDependentObjects
{
  v2 = objc_opt_new();
  if (([self supportsSoftwareUpdateV2] & 1) == 0)
  {
    softwareUpdateController = [self softwareUpdateController];
    [v2 na_safeAddObject:softwareUpdateController];

    softwareUpdateController2 = [self softwareUpdateController];
    availableUpdate = [softwareUpdateController2 availableUpdate];
    [v2 na_safeAddObject:availableUpdate];
  }

  return v2;
}

- (id)hf_softwareUpdateDependentClasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if (([self supportsSoftwareUpdateV2] & 1) == 0)
  {
    v6[0] = objc_opt_class();
    v6[1] = objc_opt_class();
    v3 = [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:2];
    [v2 addObjectsFromArray:v3];
  }

  v4 = *MEMORY[0x277D85DE8];

  return v2;
}

@end