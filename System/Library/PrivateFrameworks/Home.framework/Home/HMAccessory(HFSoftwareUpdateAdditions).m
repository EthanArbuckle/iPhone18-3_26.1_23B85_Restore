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
  if ([a1 supportsSoftwareUpdateV2])
  {
    return 1;
  }

  v3 = [a1 softwareUpdateController];
  v2 = v3 != 0;

  return v2;
}

- (uint64_t)hf_hasValidSoftwareOrFirmwareUpdate
{
  if ([a1 isFirmwareUpdateAvailable])
  {
    return 1;
  }

  return [a1 hf_hasValidSoftwareUpdate];
}

- (uint64_t)hf_hasNewValidSoftwareOrFirmwareUpdate
{
  if ([a1 isFirmwareUpdateAvailable])
  {
    return 1;
  }

  return [a1 hf_hasNewValidSoftwareUpdate];
}

- (uint64_t)hf_hasSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 hasSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_hasValidSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 hasValidSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_hasNewValidSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 hasNewValidSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_hasRequestedSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 hasRequestedSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_isReadyToInstallSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 isReadyToInstallSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_isDownloadingSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 isDownloadingSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_isInstallingSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 isInstallingSoftwareUpdate:a1];

  return v4;
}

- (uint64_t)hf_isSoftwareUpdateInProgress
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 isSoftwareUpdateInProgress:a1];

  return v4;
}

- (uint64_t)hf_isSoftwareUpdateInstalled
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 isSoftwareUpdateInstalled:a1];

  return v4;
}

- (uint64_t)hf_softwareUpdatePossessesNecessaryDocumentation
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdatePossessesNecessaryDocumentation:a1];

  return v4;
}

- (id)hf_softwareUpdateDocumentation
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdateDocumentation:a1];

  return v4;
}

- (id)hf_softwareUpdateVersion
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdateVersion:a1];

  return v4;
}

- (id)hf_softwareUpdateDisplayableVersion
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdateDisplayableVersion:a1];

  return v4;
}

- (id)hf_softwareUpdateReleaseDate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdateReleaseDate:a1];

  return v4;
}

- (uint64_t)hf_softwareUpdateDownloadSize
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdateDownloadSize:a1];

  return v4;
}

- (id)hf_softwareUpdatePortionComplete
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 softwareUpdatePortionComplete:a1];

  return v4;
}

- (id)hf_fetchAvailableSoftwareUpdateWithOptions:()HFSoftwareUpdateAdditions
{
  v5 = +[HFHomeKitDispatcher sharedDispatcher];
  v6 = [v5 softwareUpdateManager];
  v7 = [v6 fetchAvailableSoftwareUpdate:a1 options:a3];

  return v7;
}

- (id)hf_startSoftwareUpdate
{
  v2 = +[HFHomeKitDispatcher sharedDispatcher];
  v3 = [v2 softwareUpdateManager];
  v4 = [v3 startSoftwareUpdate:a1];

  return v4;
}

- (id)hf_softwareUpdateHash
{
  v2 = MEMORY[0x277CCACA8];
  v3 = [a1 category];
  v4 = [v3 categoryType];
  v5 = [a1 manufacturer];
  v6 = [a1 hf_softwareUpdateVersion];
  v7 = [v2 stringWithFormat:@"%@-%@-%@", v4, v5, v6];

  return v7;
}

- (id)hf_softwareUpdateDependentObjects
{
  v2 = objc_opt_new();
  if (([a1 supportsSoftwareUpdateV2] & 1) == 0)
  {
    v3 = [a1 softwareUpdateController];
    [v2 na_safeAddObject:v3];

    v4 = [a1 softwareUpdateController];
    v5 = [v4 availableUpdate];
    [v2 na_safeAddObject:v5];
  }

  return v2;
}

- (id)hf_softwareUpdateDependentClasses
{
  v6[2] = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  if (([a1 supportsSoftwareUpdateV2] & 1) == 0)
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