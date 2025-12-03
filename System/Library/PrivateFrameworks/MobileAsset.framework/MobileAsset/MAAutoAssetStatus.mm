@interface MAAutoAssetStatus
+ (id)newCurrentLockUsageSummary:(id)summary;
- (MAAutoAssetStatus)initWithAssetSelector:(id)selector withNotifications:(id)notifications withAvailableForUseAttributes:(id)attributes withNewerVersionAttributes:(id)versionAttributes withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)self0 withDownloadedFilesystemBytes:(int64_t)self1 withDownloadedAsPatch:(BOOL)self2 withPatchedFromBaseSelector:(id)self3 withPatchedFromBaseFilesystemBytes:(int64_t)self4 withPatchingAttempted:(BOOL)self5 withStagedPriorToAvailable:(BOOL)self6 withStagedFromOSVersion:(id)self7 withStagedFromBuildVersion:(id)self8 withCurrentLockUsage:(id)self9 withAvailableForUseError:(id)error withPatchingAttemptError:(id)attemptError withNewerVersionError:(id)versionError;
- (MAAutoAssetStatus)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)getAvailableForUseAttributesAssetFormat:(id *)format assetBuild:(id *)build minOSVersion:(id *)version maxOSVersion:(id *)sVersion prerequisiteBuilds:(id *)builds;
@end

@implementation MAAutoAssetStatus

- (MAAutoAssetStatus)initWithAssetSelector:(id)selector withNotifications:(id)notifications withAvailableForUseAttributes:(id)attributes withNewerVersionAttributes:(id)versionAttributes withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadProgress:(id)progress withDownloadedNetworkBytes:(int64_t)self0 withDownloadedFilesystemBytes:(int64_t)self1 withDownloadedAsPatch:(BOOL)self2 withPatchedFromBaseSelector:(id)self3 withPatchedFromBaseFilesystemBytes:(int64_t)self4 withPatchingAttempted:(BOOL)self5 withStagedPriorToAvailable:(BOOL)self6 withStagedFromOSVersion:(id)self7 withStagedFromBuildVersion:(id)self8 withCurrentLockUsage:(id)self9 withAvailableForUseError:(id)error withPatchingAttemptError:(id)attemptError withNewerVersionError:(id)versionError
{
  selectorCopy = selector;
  notificationsCopy = notifications;
  attributesCopy = attributes;
  attributesCopy2 = attributes;
  versionAttributesCopy = versionAttributes;
  versionAttributesCopy2 = versionAttributes;
  progressCopy = progress;
  baseSelectorCopy = baseSelector;
  versionCopy = version;
  buildVersionCopy = buildVersion;
  usageCopy = usage;
  errorCopy = error;
  attemptErrorCopy = attemptError;
  versionErrorCopy = versionError;
  v46.receiver = self;
  v46.super_class = MAAutoAssetStatus;
  v31 = [(MAAutoAssetStatus *)&v46 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_assetSelector, selector);
    objc_storeStrong(&v32->_notifications, notifications);
    objc_storeStrong(&v32->_availableForUseAttributes, attributesCopy);
    objc_storeStrong(&v32->_newerVersionAttributes, versionAttributesCopy);
    v32->_neverBeenLocked = locked;
    v32->_downloadUserInitiated = initiated;
    objc_storeStrong(&v32->_downloadProgress, progress);
    v32->_downloadedNetworkBytes = bytes;
    v32->_downloadedFilesystemBytes = filesystemBytes;
    v32->_downloadedAsPatch = patch;
    objc_storeStrong(&v32->_patchedFromBaseSelector, baseSelector);
    v32->_patchedFromBaseFilesystemBytes = baseFilesystemBytes;
    v32->_patchingAttempted = attempted;
    v32->_stagedPriorToAvailable = available;
    objc_storeStrong(&v32->_stagedFromOSVersion, version);
    objc_storeStrong(&v32->_stagedFromBuildVersion, buildVersion);
    objc_storeStrong(&v32->_currentLockUsage, usage);
    objc_storeStrong(&v32->_availableForUseError, error);
    objc_storeStrong(&v32->_patchingAttemptError, attemptError);
    objc_storeStrong(&v32->_newerVersionError, versionError);
  }

  return v32;
}

- (MAAutoAssetStatus)initWithCoder:(id)coder
{
  v40[8] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v38.receiver = self;
  v38.super_class = MAAutoAssetStatus;
  v5 = [(MAAutoAssetStatus *)&v38 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v40[0] = objc_opt_class();
    v40[1] = objc_opt_class();
    v40[2] = objc_opt_class();
    v40[3] = objc_opt_class();
    v40[4] = objc_opt_class();
    v40[5] = objc_opt_class();
    v40[6] = objc_opt_class();
    v40[7] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:8];
    v8 = [v6 setWithArray:v7];

    v9 = MEMORY[0x1E695DFD8];
    v39[0] = objc_opt_class();
    v39[1] = objc_opt_class();
    v39[2] = objc_opt_class();
    v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:3];
    v11 = [v9 setWithArray:v10];

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v14;

    v16 = [coderCopy decodeObjectOfClasses:v8 forKey:@"availableForUseAttributes"];
    availableForUseAttributes = v5->_availableForUseAttributes;
    v5->_availableForUseAttributes = v16;

    v18 = [coderCopy decodeObjectOfClasses:v8 forKey:@"newerVersionAttributes"];
    newerVersionAttributes = v5->_newerVersionAttributes;
    v5->_newerVersionAttributes = v18;

    v5->_neverBeenLocked = [coderCopy decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v20 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v20;

    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_downloadedAsPatch = [coderCopy decodeBoolForKey:@"downloadedAsPatch"];
    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patchedFromBaseSelector"];
    patchedFromBaseSelector = v5->_patchedFromBaseSelector;
    v5->_patchedFromBaseSelector = v22;

    v5->_patchedFromBaseFilesystemBytes = [coderCopy decodeIntegerForKey:@"patchedFromBaseFilesystemBytes"];
    v5->_patchingAttempted = [coderCopy decodeBoolForKey:@"patchingAttempted"];
    v5->_stagedPriorToAvailable = [coderCopy decodeBoolForKey:@"stagedPriorToAvailable"];
    v24 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromOSVersion"];
    stagedFromOSVersion = v5->_stagedFromOSVersion;
    v5->_stagedFromOSVersion = v24;

    v26 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromBuildVersion"];
    stagedFromBuildVersion = v5->_stagedFromBuildVersion;
    v5->_stagedFromBuildVersion = v26;

    v28 = [coderCopy decodeObjectOfClasses:v11 forKey:@"currentLockUsage"];
    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v28;

    v30 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v30;

    v32 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"patchingAttemptError"];
    patchingAttemptError = v5->_patchingAttemptError;
    v5->_patchingAttemptError = v32;

    v34 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v34;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  assetSelector = [(MAAutoAssetStatus *)self assetSelector];
  [coderCopy encodeObject:assetSelector forKey:@"assetSelector"];

  notifications = [(MAAutoAssetStatus *)self notifications];
  [coderCopy encodeObject:notifications forKey:@"notifications"];

  availableForUseAttributes = [(MAAutoAssetStatus *)self availableForUseAttributes];
  [coderCopy encodeObject:availableForUseAttributes forKey:@"availableForUseAttributes"];

  newerVersionAttributes = [(MAAutoAssetStatus *)self newerVersionAttributes];
  [coderCopy encodeObject:newerVersionAttributes forKey:@"newerVersionAttributes"];

  [coderCopy encodeBool:-[MAAutoAssetStatus neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [coderCopy encodeBool:-[MAAutoAssetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  downloadProgress = [(MAAutoAssetStatus *)self downloadProgress];
  [coderCopy encodeObject:downloadProgress forKey:@"downloadProgress"];

  [coderCopy encodeInteger:-[MAAutoAssetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MAAutoAssetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [coderCopy encodeBool:-[MAAutoAssetStatus downloadedAsPatch](self forKey:{"downloadedAsPatch"), @"downloadedAsPatch"}];
  patchedFromBaseSelector = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  [coderCopy encodeObject:patchedFromBaseSelector forKey:@"patchedFromBaseSelector"];

  [coderCopy encodeInteger:-[MAAutoAssetStatus patchedFromBaseFilesystemBytes](self forKey:{"patchedFromBaseFilesystemBytes"), @"patchedFromBaseFilesystemBytes"}];
  [coderCopy encodeBool:-[MAAutoAssetStatus patchingAttempted](self forKey:{"patchingAttempted"), @"patchingAttempted"}];
  [coderCopy encodeBool:-[MAAutoAssetStatus stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
  stagedFromOSVersion = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  [coderCopy encodeObject:stagedFromOSVersion forKey:@"stagedFromOSVersion"];

  stagedFromBuildVersion = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  [coderCopy encodeObject:stagedFromBuildVersion forKey:@"stagedFromBuildVersion"];

  currentLockUsage = [(MAAutoAssetStatus *)self currentLockUsage];
  [coderCopy encodeObject:currentLockUsage forKey:@"currentLockUsage"];

  availableForUseError = [(MAAutoAssetStatus *)self availableForUseError];
  [coderCopy encodeObject:availableForUseError forKey:@"availableForUseError"];

  patchingAttemptError = [(MAAutoAssetStatus *)self patchingAttemptError];
  [coderCopy encodeObject:patchingAttemptError forKey:@"patchingAttemptError"];

  newerVersionError = [(MAAutoAssetStatus *)self newerVersionError];
  [coderCopy encodeObject:newerVersionError forKey:@"newerVersionError"];
}

- (id)copy
{
  v27 = [MAAutoAssetStatus alloc];
  assetSelector = [(MAAutoAssetStatus *)self assetSelector];
  v26 = [assetSelector copy];
  notifications = [(MAAutoAssetStatus *)self notifications];
  v25 = [notifications copy];
  availableForUseAttributes = [(MAAutoAssetStatus *)self availableForUseAttributes];
  newerVersionAttributes = [(MAAutoAssetStatus *)self newerVersionAttributes];
  neverBeenLocked = [(MAAutoAssetStatus *)self neverBeenLocked];
  downloadUserInitiated = [(MAAutoAssetStatus *)self downloadUserInitiated];
  downloadProgress = [(MAAutoAssetStatus *)self downloadProgress];
  v32 = [downloadProgress copy];
  downloadedNetworkBytes = [(MAAutoAssetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetStatus *)self downloadedFilesystemBytes];
  downloadedAsPatch = [(MAAutoAssetStatus *)self downloadedAsPatch];
  patchedFromBaseSelector = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  v15 = [patchedFromBaseSelector copy];
  patchedFromBaseFilesystemBytes = [(MAAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  patchingAttempted = [(MAAutoAssetStatus *)self patchingAttempted];
  stagedPriorToAvailable = [(MAAutoAssetStatus *)self stagedPriorToAvailable];
  stagedFromOSVersion = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  stagedFromBuildVersion = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  currentLockUsage = [(MAAutoAssetStatus *)self currentLockUsage];
  v7 = [currentLockUsage copy];
  availableForUseError = [(MAAutoAssetStatus *)self availableForUseError];
  patchingAttemptError = [(MAAutoAssetStatus *)self patchingAttemptError];
  newerVersionError = [(MAAutoAssetStatus *)self newerVersionError];
  BYTE1(v13) = stagedPriorToAvailable;
  LOBYTE(v13) = patchingAttempted;
  LOBYTE(v12) = downloadedAsPatch;
  v28 = [(MAAutoAssetStatus *)v27 initWithAssetSelector:v26 withNotifications:v25 withAvailableForUseAttributes:availableForUseAttributes withNewerVersionAttributes:newerVersionAttributes withNeverBeenLocked:neverBeenLocked withDownloadUserInitiated:downloadUserInitiated withDownloadProgress:v32 withDownloadedNetworkBytes:downloadedNetworkBytes withDownloadedFilesystemBytes:downloadedFilesystemBytes withDownloadedAsPatch:v12 withPatchedFromBaseSelector:v15 withPatchedFromBaseFilesystemBytes:patchedFromBaseFilesystemBytes withPatchingAttempted:v13 withStagedPriorToAvailable:stagedFromOSVersion withStagedFromOSVersion:stagedFromBuildVersion withStagedFromBuildVersion:v7 withCurrentLockUsage:availableForUseError withAvailableForUseError:patchingAttemptError withPatchingAttemptError:newerVersionError withNewerVersionError:?];

  return v28;
}

- (id)description
{
  v58 = MEMORY[0x1E696AD60];
  assetSelector = [(MAAutoAssetStatus *)self assetSelector];
  summary = [assetSelector summary];
  notifications = [(MAAutoAssetStatus *)self notifications];
  summary2 = [notifications summary];
  availableForUseAttributes = [(MAAutoAssetStatus *)self availableForUseAttributes];
  stagedFromOSVersion2 = @"N";
  if (availableForUseAttributes)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  newerVersionAttributes = [(MAAutoAssetStatus *)self newerVersionAttributes];
  if (newerVersionAttributes)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v56 = v9;
  if ([(MAAutoAssetStatus *)self neverBeenLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v54 = v10;
  if ([(MAAutoAssetStatus *)self downloadUserInitiated])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v53 = v11;
  downloadProgress = [(MAAutoAssetStatus *)self downloadProgress];
  if (downloadProgress)
  {
    downloadProgress2 = [(MAAutoAssetStatus *)self downloadProgress];
    summary3 = [downloadProgress2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  downloadedNetworkBytes = [(MAAutoAssetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  patchedFromBaseSelector = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  if (patchedFromBaseSelector)
  {
    patchedFromBaseSelector2 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
    summary4 = [patchedFromBaseSelector2 summary];
  }

  else
  {
    summary4 = @"N";
  }

  patchedFromBaseFilesystemBytes = [(MAAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  if ([(MAAutoAssetStatus *)self patchingAttempted])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v46 = v15;
  if ([(MAAutoAssetStatus *)self stagedPriorToAvailable])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v45 = v16;
  stagedFromOSVersion = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  if (stagedFromOSVersion)
  {
    stagedFromOSVersion2 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  }

  stagedFromBuildVersion = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  if (stagedFromBuildVersion)
  {
    stagedFromBuildVersion2 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    stagedFromBuildVersion2 = @"N";
  }

  currentLockUsage = [(MAAutoAssetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    v62 = [MAAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v62 = @"N";
  }

  availableForUseError = [(MAAutoAssetStatus *)self availableForUseError];
  v52 = stagedFromBuildVersion;
  if (availableForUseError)
  {
    availableForUseError2 = [(MAAutoAssetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
  }

  else
  {
    checkedSummary = @"N";
  }

  patchingAttemptError = [(MAAutoAssetStatus *)self patchingAttemptError];
  v55 = stagedFromOSVersion;
  if (patchingAttemptError)
  {
    patchingAttemptError2 = [(MAAutoAssetStatus *)self patchingAttemptError];
    checkedSummary2 = [patchingAttemptError2 checkedSummary];
  }

  else
  {
    checkedSummary2 = @"N";
  }

  newerVersionError = [(MAAutoAssetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    [(MAAutoAssetStatus *)self newerVersionError];
    v44 = downloadProgress;
    v42 = newerVersionAttributes;
    v21 = availableForUseAttributes;
    v22 = notifications;
    v24 = v23 = assetSelector;
    [v24 checkedSummary];
    v26 = v25 = patchedFromBaseSelector;
    v59 = [v58 stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v62, checkedSummary, checkedSummary2, v26];

    patchedFromBaseSelector = v25;
    assetSelector = v23;
    notifications = v22;
    availableForUseAttributes = v21;
    newerVersionAttributes = v42;
    downloadProgress = v44;
  }

  else
  {
    v59 = [v58 stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v62, checkedSummary, checkedSummary2, @"N"];
  }

  if (patchingAttemptError)
  {
  }

  if (availableForUseError)
  {
  }

  if (currentLockUsage)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (patchedFromBaseSelector)
  {
  }

  if (downloadProgress)
  {
  }

  availableForUseAttributes2 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes2)
  {
    v72 = 0;
    v73[0] = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    [(MAAutoAssetStatus *)self getAvailableForUseAttributesAssetFormat:v73 assetBuild:&v72 minOSVersion:&v71 maxOSVersion:&v70 prerequisiteBuilds:&v69];
    v28 = v73[0];
    v29 = v72;
    v30 = v71;
    v31 = v70;
    v32 = v69;
    v33 = v32;
    v34 = @"Missing";
    if (v29)
    {
      v34 = v29;
    }

    v35 = @"N";
    if (v30)
    {
      v36 = v30;
    }

    else
    {
      v36 = @"N";
    }

    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = @"N";
    }

    if (v32)
    {
      v35 = v32;
    }

    [v59 appendFormat:@"                     assetFormat: %@\n                      assetBuild: %@\n                    minOSVersion: %@\n                    maxOSVersion: %@\n         prerequisiteAssetBuilds: %@\n", v28, v34, v36, v37, v35];
  }

  return v59;
}

- (id)summary
{
  v58 = MEMORY[0x1E696AD60];
  assetSelector = [(MAAutoAssetStatus *)self assetSelector];
  summary = [assetSelector summary];
  notifications = [(MAAutoAssetStatus *)self notifications];
  summary2 = [notifications summary];
  availableForUseAttributes = [(MAAutoAssetStatus *)self availableForUseAttributes];
  stagedFromOSVersion2 = @"N";
  if (availableForUseAttributes)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  newerVersionAttributes = [(MAAutoAssetStatus *)self newerVersionAttributes];
  if (newerVersionAttributes)
  {
    v9 = @"Y";
  }

  else
  {
    v9 = @"N";
  }

  v56 = v9;
  if ([(MAAutoAssetStatus *)self neverBeenLocked])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v54 = v10;
  if ([(MAAutoAssetStatus *)self downloadUserInitiated])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  v53 = v11;
  downloadProgress = [(MAAutoAssetStatus *)self downloadProgress];
  if (downloadProgress)
  {
    downloadProgress2 = [(MAAutoAssetStatus *)self downloadProgress];
    summary3 = [downloadProgress2 summary];
  }

  else
  {
    summary3 = @"N";
  }

  downloadedNetworkBytes = [(MAAutoAssetStatus *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  patchedFromBaseSelector = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  if (patchedFromBaseSelector)
  {
    patchedFromBaseSelector2 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
    summary4 = [patchedFromBaseSelector2 summary];
  }

  else
  {
    summary4 = @"N";
  }

  patchedFromBaseFilesystemBytes = [(MAAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  if ([(MAAutoAssetStatus *)self patchingAttempted])
  {
    v15 = @"Y";
  }

  else
  {
    v15 = @"N";
  }

  v46 = v15;
  if ([(MAAutoAssetStatus *)self stagedPriorToAvailable])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v45 = v16;
  stagedFromOSVersion = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  if (stagedFromOSVersion)
  {
    stagedFromOSVersion2 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  }

  stagedFromBuildVersion = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  if (stagedFromBuildVersion)
  {
    stagedFromBuildVersion2 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    stagedFromBuildVersion2 = @"N";
  }

  currentLockUsage = [(MAAutoAssetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    v62 = [MAAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v62 = @"N";
  }

  availableForUseError = [(MAAutoAssetStatus *)self availableForUseError];
  v55 = stagedFromOSVersion;
  if (availableForUseError)
  {
    availableForUseError2 = [(MAAutoAssetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
  }

  else
  {
    checkedSummary = @"N";
  }

  patchingAttemptError = [(MAAutoAssetStatus *)self patchingAttemptError];
  v52 = stagedFromBuildVersion;
  if (patchingAttemptError)
  {
    patchingAttemptError2 = [(MAAutoAssetStatus *)self patchingAttemptError];
    checkedSummary2 = [patchingAttemptError2 checkedSummary];
  }

  else
  {
    checkedSummary2 = @"N";
  }

  newerVersionError = [(MAAutoAssetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    [(MAAutoAssetStatus *)self newerVersionError];
    v21 = v42 = patchedFromBaseSelector;
    [v21 checkedSummary];
    v44 = downloadProgress;
    v22 = newerVersionAttributes;
    v23 = availableForUseAttributes;
    v24 = notifications;
    v26 = v25 = assetSelector;
    v59 = [v58 stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v62, checkedSummary, checkedSummary2, v26];

    assetSelector = v25;
    notifications = v24;
    availableForUseAttributes = v23;
    newerVersionAttributes = v22;
    downloadProgress = v44;

    patchedFromBaseSelector = v42;
  }

  else
  {
    v59 = [v58 stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", summary, summary2, v57, v56, v54, v53, summary3, downloadedNetworkBytes, downloadedFilesystemBytes, v49, summary4, patchedFromBaseFilesystemBytes, v46, v45, stagedFromOSVersion2, stagedFromBuildVersion2, v62, checkedSummary, checkedSummary2, @"N"];
  }

  if (patchingAttemptError)
  {
  }

  if (availableForUseError)
  {
  }

  if (currentLockUsage)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (patchedFromBaseSelector)
  {
  }

  if (downloadProgress)
  {
  }

  availableForUseAttributes2 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes2)
  {
    v72 = 0;
    v73[0] = 0;
    v70 = 0;
    v71 = 0;
    v69 = 0;
    [(MAAutoAssetStatus *)self getAvailableForUseAttributesAssetFormat:v73 assetBuild:&v72 minOSVersion:&v71 maxOSVersion:&v70 prerequisiteBuilds:&v69];
    v28 = v73[0];
    v29 = v72;
    v30 = v71;
    v31 = v70;
    v32 = v69;
    v33 = v32;
    v34 = @"Missing";
    if (v29)
    {
      v34 = v29;
    }

    v35 = @"N";
    if (v30)
    {
      v36 = v30;
    }

    else
    {
      v36 = @"N";
    }

    if (v31)
    {
      v37 = v31;
    }

    else
    {
      v37 = @"N";
    }

    if (v32)
    {
      v35 = v32;
    }

    [v59 appendFormat:@"|assetFormat:%@|assetBuild:%@|minOSVersion:%@|maxOSVersion:%@|prerequisiteAssetBuilds:%@", v28, v34, v36, v37, v35];
  }

  [v59 appendString:@"]"];

  return v59;
}

- (void)getAvailableForUseAttributesAssetFormat:(id *)format assetBuild:(id *)build minOSVersion:(id *)version maxOSVersion:(id *)sVersion prerequisiteBuilds:(id *)builds
{
  v35 = *MEMORY[0x1E69E9840];
  availableForUseAttributes = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes)
  {
    if (format)
    {
      availableForUseAttributes2 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *format = [availableForUseAttributes2 safeStringForKey:@"AssetFormat"];

      if (!*format)
      {
        *format = @"StreamingZip";
      }
    }

    if (build)
    {
      availableForUseAttributes3 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *build = [availableForUseAttributes3 safeStringForKey:@"Build"];
    }

    if (version)
    {
      availableForUseAttributes4 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *version = [availableForUseAttributes4 safeStringForKey:@"_MinOSVersion"];
    }

    if (sVersion)
    {
      availableForUseAttributes5 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *sVersion = [availableForUseAttributes5 safeStringForKey:@"_MaxOSVersion"];
    }

    if (builds)
    {
      availableForUseAttributes6 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      v19 = [availableForUseAttributes6 safeObjectForKey:@"PrerequisiteAssetBuilds" ofClass:objc_opt_class()];

      if (v19)
      {
        v32 = 0u;
        v33 = 0u;
        v30 = 0u;
        v31 = 0u;
        v20 = v19;
        v21 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
        if (v21)
        {
          v22 = v21;
          v29 = v19;
          v23 = 0;
          v24 = *v31;
          do
          {
            for (i = 0; i != v22; ++i)
            {
              if (*v31 != v24)
              {
                objc_enumerationMutation(v20);
              }

              v26 = *(*(&v30 + 1) + 8 * i);
              objc_opt_class();
              if (objc_opt_isKindOfClass())
              {
                if (v23)
                {
                  [v23 appendFormat:@", %@", v26];
                }

                else
                {
                  v23 = [MEMORY[0x1E696AD60] stringWithFormat:@"%@", v26];
                }
              }
            }

            v22 = [v20 countByEnumeratingWithState:&v30 objects:v34 count:16];
          }

          while (v22);

          if (v23)
          {
            v27 = v23;
          }

          v19 = v29;
        }

        else
        {

          v23 = 0;
        }

        *builds = v23;
      }

      else
      {
        *builds = 0;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  assetSelector = [(MAAutoAssetStatus *)self assetSelector];
  newSummaryDictionary = [assetSelector newSummaryDictionary];
  [v3 setSafeObject:newSummaryDictionary forKey:@"assetSelector"];

  notifications = [(MAAutoAssetStatus *)self notifications];
  newSummaryDictionary2 = [notifications newSummaryDictionary];
  [v3 setSafeObject:newSummaryDictionary2 forKey:@"notifications"];

  availableForUseAttributes = [(MAAutoAssetStatus *)self availableForUseAttributes];
  if (availableForUseAttributes)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setSafeObject:v9 forKey:@"availableForUseError"];

  newerVersionAttributes = [(MAAutoAssetStatus *)self newerVersionAttributes];
  if (newerVersionAttributes)
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  [v3 setSafeObject:v11 forKey:@"newerVersionAttributes"];

  if ([(MAAutoAssetStatus *)self neverBeenLocked])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  [v3 setSafeObject:v12 forKey:@"neverBeenLocked"];
  if ([(MAAutoAssetStatus *)self downloadUserInitiated])
  {
    v13 = @"YES";
  }

  else
  {
    v13 = @"NO";
  }

  [v3 setSafeObject:v13 forKey:@"downloadUserInitiated"];
  downloadProgress = [(MAAutoAssetStatus *)self downloadProgress];
  if (downloadProgress)
  {
    downloadProgress2 = [(MAAutoAssetStatus *)self downloadProgress];
    newSummaryDictionary3 = [downloadProgress2 newSummaryDictionary];
    [v3 setSafeObject:newSummaryDictionary3 forKey:@"downloadProgress"];
  }

  else
  {
    downloadProgress2 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:downloadProgress2 forKey:@"downloadProgress"];
  }

  v17 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetStatus downloadedNetworkBytes](self, "downloadedNetworkBytes")}];
  [v3 setSafeObject:v17 forKey:@"downloadedNetworkBytes"];

  v18 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetStatus downloadedFilesystemBytes](self, "downloadedFilesystemBytes")}];
  [v3 setSafeObject:v18 forKey:@"downloadedFilesystemBytes"];

  if ([(MAAutoAssetStatus *)self downloadedAsPatch])
  {
    v19 = @"YES";
  }

  else
  {
    v19 = @"NO";
  }

  [v3 setSafeObject:v19 forKey:@"downloadedAsPatch"];
  patchedFromBaseSelector = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  if (patchedFromBaseSelector)
  {
    patchedFromBaseSelector2 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
    newSummaryDictionary4 = [patchedFromBaseSelector2 newSummaryDictionary];
    [v3 setSafeObject:newSummaryDictionary4 forKey:@"patchedFromBaseSelector"];
  }

  else
  {
    patchedFromBaseSelector2 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:patchedFromBaseSelector2 forKey:@"patchedFromBaseSelector"];
  }

  v23 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetStatus patchedFromBaseFilesystemBytes](self, "patchedFromBaseFilesystemBytes")}];
  [v3 setSafeObject:v23 forKey:@"patchedFromBaseFilesystemBytes"];

  if ([(MAAutoAssetStatus *)self patchingAttempted])
  {
    v24 = @"YES";
  }

  else
  {
    v24 = @"NO";
  }

  [v3 setSafeObject:v24 forKey:@"patchingAttempted"];
  if ([(MAAutoAssetStatus *)self stagedPriorToAvailable])
  {
    v25 = @"YES";
  }

  else
  {
    v25 = @"NO";
  }

  [v3 setSafeObject:v25 forKey:@"stagedPriorToAvailable"];
  stagedFromOSVersion = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  if (stagedFromOSVersion)
  {
    stagedFromOSVersion2 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
    [v3 setSafeObject:stagedFromOSVersion2 forKey:@"stagedFromOSVersion"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"stagedFromOSVersion"];
  }

  stagedFromBuildVersion = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  if (stagedFromBuildVersion)
  {
    stagedFromBuildVersion2 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
    [v3 setSafeObject:stagedFromBuildVersion2 forKey:@"stagedFromBuildVersion"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"stagedFromBuildVersion"];
  }

  currentLockUsage = [(MAAutoAssetStatus *)self currentLockUsage];
  if (currentLockUsage)
  {
    currentLockUsage2 = [(MAAutoAssetStatus *)self currentLockUsage];
  }

  else
  {
    currentLockUsage2 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v32 = currentLockUsage2;
  [v3 setSafeObject:currentLockUsage2 forKey:@"currentLockUsage"];

  availableForUseError = [(MAAutoAssetStatus *)self availableForUseError];
  if (availableForUseError)
  {
    availableForUseError2 = [(MAAutoAssetStatus *)self availableForUseError];
    checkedSummary = [availableForUseError2 checkedSummary];
    [v3 setSafeObject:checkedSummary forKey:@"availableForUseError"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"availableForUseError"];
  }

  patchingAttemptError = [(MAAutoAssetStatus *)self patchingAttemptError];
  if (patchingAttemptError)
  {
    patchingAttemptError2 = [(MAAutoAssetStatus *)self patchingAttemptError];
    checkedSummary2 = [patchingAttemptError2 checkedSummary];
    [v3 setSafeObject:checkedSummary2 forKey:@"patchingAttemptError"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"patchingAttemptError"];
  }

  newerVersionError = [(MAAutoAssetStatus *)self newerVersionError];
  if (newerVersionError)
  {
    newerVersionError2 = [(MAAutoAssetStatus *)self newerVersionError];
    checkedSummary3 = [newerVersionError2 checkedSummary];
    [v3 setSafeObject:checkedSummary3 forKey:@"newerVersionError"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"newerVersionError"];
  }

  availableForUseAttributes2 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (availableForUseAttributes2)
  {
    v56 = 0;
    v57 = 0;
    v54 = 0;
    v55 = 0;
    v53 = 0;
    [(MAAutoAssetStatus *)self getAvailableForUseAttributesAssetFormat:&v57 assetBuild:&v56 minOSVersion:&v55 maxOSVersion:&v54 prerequisiteBuilds:&v53];
    v43 = v57;
    v44 = v56;
    v45 = v55;
    v46 = v54;
    v47 = v53;
    [v3 setObject:v43 forKey:@"assetFormat"];
    if (v44)
    {
      v48 = v44;
    }

    else
    {
      v48 = @"VALUE-SHOULD-BE-DEFINED-BUT-MISSING";
    }

    [v3 setObject:v48 forKey:@"assetBuild"];
    if (v45)
    {
      v49 = v45;
    }

    else
    {
      v49 = @"NO";
    }

    [v3 setObject:v49 forKey:@"minOSVersion"];
    if (v46)
    {
      v50 = v46;
    }

    else
    {
      v50 = @"NO";
    }

    [v3 setObject:v50 forKey:@"maxOSVersion"];
    if (v47)
    {
      v51 = v47;
    }

    else
    {
      v51 = @"NO";
    }

    [v3 setObject:v51 forKey:@"prerequisiteAssetBuilds"];
  }

  return v3;
}

+ (id)newCurrentLockUsageSummary:(id)summary
{
  v23 = *MEMORY[0x1E69E9840];
  summaryCopy = summary;
  currentLockUsage = [summaryCopy currentLockUsage];

  if (currentLockUsage)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [summaryCopy currentLockUsage];
    v6 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v19;
      v9 = 1;
      do
      {
        v10 = 0;
        do
        {
          if (*v19 != v8)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v18 + 1) + 8 * v10);
          currentLockUsage2 = [summaryCopy currentLockUsage];
          v13 = [currentLockUsage2 safeIntegerForKey:v11];

          if ((v9 & 1) == 0)
          {
            [(__CFString *)v5 appendString:@", "];
          }

          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [(__CFString *)v5 appendFormat:@"%@:%ld", v11, v13];
          }

          else
          {
            [(__CFString *)v5 appendFormat:@"?:%ld", v13, v16];
          }

          v9 = 0;
          ++v10;
        }

        while (v7 != v10);
        v7 = [obj countByEnumeratingWithState:&v18 objects:v22 count:16];
        v9 = 0;
      }

      while (v7);
    }

    [(__CFString *)v5 appendString:@"}"];
  }

  else
  {
    v5 = &stru_1F0C1B388;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

@end