@interface MAAutoAssetStatus
+ (id)newCurrentLockUsageSummary:(id)a3;
- (MAAutoAssetStatus)initWithAssetSelector:(id)a3 withNotifications:(id)a4 withAvailableForUseAttributes:(id)a5 withNewerVersionAttributes:(id)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadProgress:(id)a9 withDownloadedNetworkBytes:(int64_t)a10 withDownloadedFilesystemBytes:(int64_t)a11 withDownloadedAsPatch:(BOOL)a12 withPatchedFromBaseSelector:(id)a13 withPatchedFromBaseFilesystemBytes:(int64_t)a14 withPatchingAttempted:(BOOL)a15 withStagedPriorToAvailable:(BOOL)a16 withStagedFromOSVersion:(id)a17 withStagedFromBuildVersion:(id)a18 withCurrentLockUsage:(id)a19 withAvailableForUseError:(id)a20 withPatchingAttemptError:(id)a21 withNewerVersionError:(id)a22;
- (MAAutoAssetStatus)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)getAvailableForUseAttributesAssetFormat:(id *)a3 assetBuild:(id *)a4 minOSVersion:(id *)a5 maxOSVersion:(id *)a6 prerequisiteBuilds:(id *)a7;
@end

@implementation MAAutoAssetStatus

- (MAAutoAssetStatus)initWithAssetSelector:(id)a3 withNotifications:(id)a4 withAvailableForUseAttributes:(id)a5 withNewerVersionAttributes:(id)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadProgress:(id)a9 withDownloadedNetworkBytes:(int64_t)a10 withDownloadedFilesystemBytes:(int64_t)a11 withDownloadedAsPatch:(BOOL)a12 withPatchedFromBaseSelector:(id)a13 withPatchedFromBaseFilesystemBytes:(int64_t)a14 withPatchingAttempted:(BOOL)a15 withStagedPriorToAvailable:(BOOL)a16 withStagedFromOSVersion:(id)a17 withStagedFromBuildVersion:(id)a18 withCurrentLockUsage:(id)a19 withAvailableForUseError:(id)a20 withPatchingAttemptError:(id)a21 withNewerVersionError:(id)a22
{
  v42 = a3;
  v45 = a4;
  v35 = a5;
  v44 = a5;
  v36 = a6;
  v40 = a6;
  v25 = a9;
  v43 = a13;
  v41 = a17;
  v26 = a18;
  v27 = a19;
  v28 = a20;
  v29 = a21;
  v30 = a22;
  v46.receiver = self;
  v46.super_class = MAAutoAssetStatus;
  v31 = [(MAAutoAssetStatus *)&v46 init];
  v32 = v31;
  if (v31)
  {
    objc_storeStrong(&v31->_assetSelector, a3);
    objc_storeStrong(&v32->_notifications, a4);
    objc_storeStrong(&v32->_availableForUseAttributes, v35);
    objc_storeStrong(&v32->_newerVersionAttributes, v36);
    v32->_neverBeenLocked = a7;
    v32->_downloadUserInitiated = a8;
    objc_storeStrong(&v32->_downloadProgress, a9);
    v32->_downloadedNetworkBytes = a10;
    v32->_downloadedFilesystemBytes = a11;
    v32->_downloadedAsPatch = a12;
    objc_storeStrong(&v32->_patchedFromBaseSelector, a13);
    v32->_patchedFromBaseFilesystemBytes = a14;
    v32->_patchingAttempted = a15;
    v32->_stagedPriorToAvailable = a16;
    objc_storeStrong(&v32->_stagedFromOSVersion, a17);
    objc_storeStrong(&v32->_stagedFromBuildVersion, a18);
    objc_storeStrong(&v32->_currentLockUsage, a19);
    objc_storeStrong(&v32->_availableForUseError, a20);
    objc_storeStrong(&v32->_patchingAttemptError, a21);
    objc_storeStrong(&v32->_newerVersionError, a22);
  }

  return v32;
}

- (MAAutoAssetStatus)initWithCoder:(id)a3
{
  v40[8] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSelector"];
    assetSelector = v5->_assetSelector;
    v5->_assetSelector = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"notifications"];
    notifications = v5->_notifications;
    v5->_notifications = v14;

    v16 = [v4 decodeObjectOfClasses:v8 forKey:@"availableForUseAttributes"];
    availableForUseAttributes = v5->_availableForUseAttributes;
    v5->_availableForUseAttributes = v16;

    v18 = [v4 decodeObjectOfClasses:v8 forKey:@"newerVersionAttributes"];
    newerVersionAttributes = v5->_newerVersionAttributes;
    v5->_newerVersionAttributes = v18;

    v5->_neverBeenLocked = [v4 decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v20 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"downloadProgress"];
    downloadProgress = v5->_downloadProgress;
    v5->_downloadProgress = v20;

    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_downloadedAsPatch = [v4 decodeBoolForKey:@"downloadedAsPatch"];
    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patchedFromBaseSelector"];
    patchedFromBaseSelector = v5->_patchedFromBaseSelector;
    v5->_patchedFromBaseSelector = v22;

    v5->_patchedFromBaseFilesystemBytes = [v4 decodeIntegerForKey:@"patchedFromBaseFilesystemBytes"];
    v5->_patchingAttempted = [v4 decodeBoolForKey:@"patchingAttempted"];
    v5->_stagedPriorToAvailable = [v4 decodeBoolForKey:@"stagedPriorToAvailable"];
    v24 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromOSVersion"];
    stagedFromOSVersion = v5->_stagedFromOSVersion;
    v5->_stagedFromOSVersion = v24;

    v26 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"stagedFromBuildVersion"];
    stagedFromBuildVersion = v5->_stagedFromBuildVersion;
    v5->_stagedFromBuildVersion = v26;

    v28 = [v4 decodeObjectOfClasses:v11 forKey:@"currentLockUsage"];
    currentLockUsage = v5->_currentLockUsage;
    v5->_currentLockUsage = v28;

    v30 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"availableForUseError"];
    availableForUseError = v5->_availableForUseError;
    v5->_availableForUseError = v30;

    v32 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"patchingAttemptError"];
    patchingAttemptError = v5->_patchingAttemptError;
    v5->_patchingAttemptError = v32;

    v34 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"newerVersionError"];
    newerVersionError = v5->_newerVersionError;
    v5->_newerVersionError = v34;
  }

  v36 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetStatus *)self assetSelector];
  [v4 encodeObject:v5 forKey:@"assetSelector"];

  v6 = [(MAAutoAssetStatus *)self notifications];
  [v4 encodeObject:v6 forKey:@"notifications"];

  v7 = [(MAAutoAssetStatus *)self availableForUseAttributes];
  [v4 encodeObject:v7 forKey:@"availableForUseAttributes"];

  v8 = [(MAAutoAssetStatus *)self newerVersionAttributes];
  [v4 encodeObject:v8 forKey:@"newerVersionAttributes"];

  [v4 encodeBool:-[MAAutoAssetStatus neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [v4 encodeBool:-[MAAutoAssetStatus downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  v9 = [(MAAutoAssetStatus *)self downloadProgress];
  [v4 encodeObject:v9 forKey:@"downloadProgress"];

  [v4 encodeInteger:-[MAAutoAssetStatus downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v4 encodeInteger:-[MAAutoAssetStatus downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [v4 encodeBool:-[MAAutoAssetStatus downloadedAsPatch](self forKey:{"downloadedAsPatch"), @"downloadedAsPatch"}];
  v10 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  [v4 encodeObject:v10 forKey:@"patchedFromBaseSelector"];

  [v4 encodeInteger:-[MAAutoAssetStatus patchedFromBaseFilesystemBytes](self forKey:{"patchedFromBaseFilesystemBytes"), @"patchedFromBaseFilesystemBytes"}];
  [v4 encodeBool:-[MAAutoAssetStatus patchingAttempted](self forKey:{"patchingAttempted"), @"patchingAttempted"}];
  [v4 encodeBool:-[MAAutoAssetStatus stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
  v11 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  [v4 encodeObject:v11 forKey:@"stagedFromOSVersion"];

  v12 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  [v4 encodeObject:v12 forKey:@"stagedFromBuildVersion"];

  v13 = [(MAAutoAssetStatus *)self currentLockUsage];
  [v4 encodeObject:v13 forKey:@"currentLockUsage"];

  v14 = [(MAAutoAssetStatus *)self availableForUseError];
  [v4 encodeObject:v14 forKey:@"availableForUseError"];

  v15 = [(MAAutoAssetStatus *)self patchingAttemptError];
  [v4 encodeObject:v15 forKey:@"patchingAttemptError"];

  v16 = [(MAAutoAssetStatus *)self newerVersionError];
  [v4 encodeObject:v16 forKey:@"newerVersionError"];
}

- (id)copy
{
  v27 = [MAAutoAssetStatus alloc];
  v31 = [(MAAutoAssetStatus *)self assetSelector];
  v26 = [v31 copy];
  v30 = [(MAAutoAssetStatus *)self notifications];
  v25 = [v30 copy];
  v24 = [(MAAutoAssetStatus *)self availableForUseAttributes];
  v23 = [(MAAutoAssetStatus *)self newerVersionAttributes];
  v21 = [(MAAutoAssetStatus *)self neverBeenLocked];
  v20 = [(MAAutoAssetStatus *)self downloadUserInitiated];
  v29 = [(MAAutoAssetStatus *)self downloadProgress];
  v32 = [v29 copy];
  v19 = [(MAAutoAssetStatus *)self downloadedNetworkBytes];
  v18 = [(MAAutoAssetStatus *)self downloadedFilesystemBytes];
  v17 = [(MAAutoAssetStatus *)self downloadedAsPatch];
  v22 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  v15 = [v22 copy];
  v16 = [(MAAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
  v3 = [(MAAutoAssetStatus *)self patchingAttempted];
  v4 = [(MAAutoAssetStatus *)self stagedPriorToAvailable];
  v14 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  v5 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  v6 = [(MAAutoAssetStatus *)self currentLockUsage];
  v7 = [v6 copy];
  v8 = [(MAAutoAssetStatus *)self availableForUseError];
  v9 = [(MAAutoAssetStatus *)self patchingAttemptError];
  v10 = [(MAAutoAssetStatus *)self newerVersionError];
  BYTE1(v13) = v4;
  LOBYTE(v13) = v3;
  LOBYTE(v12) = v17;
  v28 = [(MAAutoAssetStatus *)v27 initWithAssetSelector:v26 withNotifications:v25 withAvailableForUseAttributes:v24 withNewerVersionAttributes:v23 withNeverBeenLocked:v21 withDownloadUserInitiated:v20 withDownloadProgress:v32 withDownloadedNetworkBytes:v19 withDownloadedFilesystemBytes:v18 withDownloadedAsPatch:v12 withPatchedFromBaseSelector:v15 withPatchedFromBaseFilesystemBytes:v16 withPatchingAttempted:v13 withStagedPriorToAvailable:v14 withStagedFromOSVersion:v5 withStagedFromBuildVersion:v7 withCurrentLockUsage:v8 withAvailableForUseError:v9 withPatchingAttemptError:v10 withNewerVersionError:?];

  return v28;
}

- (id)description
{
  v58 = MEMORY[0x1E696AD60];
  v3 = [(MAAutoAssetStatus *)self assetSelector];
  v68 = [v3 summary];
  v4 = [(MAAutoAssetStatus *)self notifications];
  v67 = [v4 summary];
  v5 = [(MAAutoAssetStatus *)self availableForUseAttributes];
  v6 = @"N";
  if (v5)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  v8 = [(MAAutoAssetStatus *)self newerVersionAttributes];
  if (v8)
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
  v12 = [(MAAutoAssetStatus *)self downloadProgress];
  if (v12)
  {
    v43 = [(MAAutoAssetStatus *)self downloadProgress];
    v65 = [v43 summary];
  }

  else
  {
    v65 = @"N";
  }

  v51 = [(MAAutoAssetStatus *)self downloadedNetworkBytes];
  v50 = [(MAAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  v14 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  if (v14)
  {
    v41 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
    v64 = [v41 summary];
  }

  else
  {
    v64 = @"N";
  }

  v48 = [(MAAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
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
  v17 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  if (v17)
  {
    v6 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  }

  v18 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  if (v18)
  {
    v63 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    v63 = @"N";
  }

  v66 = [(MAAutoAssetStatus *)self currentLockUsage];
  if (v66)
  {
    v62 = [MAAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v62 = @"N";
  }

  v47 = [(MAAutoAssetStatus *)self availableForUseError];
  v52 = v18;
  if (v47)
  {
    v40 = [(MAAutoAssetStatus *)self availableForUseError];
    v61 = [v40 checkedSummary];
  }

  else
  {
    v61 = @"N";
  }

  v19 = [(MAAutoAssetStatus *)self patchingAttemptError];
  v55 = v17;
  if (v19)
  {
    v39 = [(MAAutoAssetStatus *)self patchingAttemptError];
    v60 = [v39 checkedSummary];
  }

  else
  {
    v60 = @"N";
  }

  v20 = [(MAAutoAssetStatus *)self newerVersionError];
  if (v20)
  {
    [(MAAutoAssetStatus *)self newerVersionError];
    v44 = v12;
    v42 = v8;
    v21 = v5;
    v22 = v4;
    v24 = v23 = v3;
    [v24 checkedSummary];
    v26 = v25 = v14;
    v59 = [v58 stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", v68, v67, v57, v56, v54, v53, v65, v51, v50, v49, v64, v48, v46, v45, v6, v63, v62, v61, v60, v26];

    v14 = v25;
    v3 = v23;
    v4 = v22;
    v5 = v21;
    v8 = v42;
    v12 = v44;
  }

  else
  {
    v59 = [v58 stringWithFormat:@"                   assetSelector: %@\n                   notifications: %@\n       availableForUseAttributes: %@\n          newerVersionAttributes: %@\n                 neverBeenLocked: %@\n           downloadUserInitiated: %@\n                downloadProgress: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n               downloadedAsPatch: %@\n         patchedFromBaseSelector: %@\n  patchedFromBaseFilesystemBytes: %ld\n               patchingAttempted: %@\n          stagedPriorToAvailable: %@\n             stagedFromOSVersion: %@\n          stagedFromBuildVersion: %@\n                currentLockUsage: %@\n            availableForUseError: %@\n            patchingAttemptError: %@\n               newerVersionError: %@\n", v68, v67, v57, v56, v54, v53, v65, v51, v50, v49, v64, v48, v46, v45, v6, v63, v62, v61, v60, @"N"];
  }

  if (v19)
  {
  }

  if (v47)
  {
  }

  if (v66)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (v14)
  {
  }

  if (v12)
  {
  }

  v27 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (v27)
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
  v3 = [(MAAutoAssetStatus *)self assetSelector];
  v68 = [v3 summary];
  v4 = [(MAAutoAssetStatus *)self notifications];
  v67 = [v4 summary];
  v5 = [(MAAutoAssetStatus *)self availableForUseAttributes];
  v6 = @"N";
  if (v5)
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v57 = v7;
  v8 = [(MAAutoAssetStatus *)self newerVersionAttributes];
  if (v8)
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
  v12 = [(MAAutoAssetStatus *)self downloadProgress];
  if (v12)
  {
    v43 = [(MAAutoAssetStatus *)self downloadProgress];
    v65 = [v43 summary];
  }

  else
  {
    v65 = @"N";
  }

  v51 = [(MAAutoAssetStatus *)self downloadedNetworkBytes];
  v50 = [(MAAutoAssetStatus *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetStatus *)self downloadedAsPatch])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v49 = v13;
  v14 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  if (v14)
  {
    v41 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
    v64 = [v41 summary];
  }

  else
  {
    v64 = @"N";
  }

  v48 = [(MAAutoAssetStatus *)self patchedFromBaseFilesystemBytes];
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
  v17 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  if (v17)
  {
    v6 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  }

  v18 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  if (v18)
  {
    v63 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  }

  else
  {
    v63 = @"N";
  }

  v66 = [(MAAutoAssetStatus *)self currentLockUsage];
  if (v66)
  {
    v62 = [MAAutoAssetStatus newCurrentLockUsageSummary:self];
  }

  else
  {
    v62 = @"N";
  }

  v47 = [(MAAutoAssetStatus *)self availableForUseError];
  v55 = v17;
  if (v47)
  {
    v40 = [(MAAutoAssetStatus *)self availableForUseError];
    v61 = [v40 checkedSummary];
  }

  else
  {
    v61 = @"N";
  }

  v19 = [(MAAutoAssetStatus *)self patchingAttemptError];
  v52 = v18;
  if (v19)
  {
    v39 = [(MAAutoAssetStatus *)self patchingAttemptError];
    v60 = [v39 checkedSummary];
  }

  else
  {
    v60 = @"N";
  }

  v20 = [(MAAutoAssetStatus *)self newerVersionError];
  if (v20)
  {
    [(MAAutoAssetStatus *)self newerVersionError];
    v21 = v42 = v14;
    [v21 checkedSummary];
    v44 = v12;
    v22 = v8;
    v23 = v5;
    v24 = v4;
    v26 = v25 = v3;
    v59 = [v58 stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", v68, v67, v57, v56, v54, v53, v65, v51, v50, v49, v64, v48, v46, v45, v6, v63, v62, v61, v60, v26];

    v3 = v25;
    v4 = v24;
    v5 = v23;
    v8 = v22;
    v12 = v44;

    v14 = v42;
  }

  else
  {
    v59 = [v58 stringWithFormat:@"[assetSelector:%@|notifications:%@|availableForUseAttributes:%@|newerVersionAttributes:%@|neverBeenLocked:%@|downloadUserInitiated:%@|downloadProgress:%@|downloadedNetworkBytes:%ld|downloadedFilesystemBytes:%ld|downloadedAsPatch:%@|patchedFromBaseSelector:%@|patchedFromBaseBytes:%ld|patchingAttempted:%@|stagedPriorToAvailable:%@|stagedFromOSVersion:%@|stagedFromBuildVersion:%@|currentLockUsage:%@|availableForUseError:%@|patchingAttemptError:%@|newerVersionError:%@", v68, v67, v57, v56, v54, v53, v65, v51, v50, v49, v64, v48, v46, v45, v6, v63, v62, v61, v60, @"N"];
  }

  if (v19)
  {
  }

  if (v47)
  {
  }

  if (v66)
  {
  }

  if (v52)
  {
  }

  if (v55)
  {
  }

  if (v14)
  {
  }

  if (v12)
  {
  }

  v27 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (v27)
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

- (void)getAvailableForUseAttributesAssetFormat:(id *)a3 assetBuild:(id *)a4 minOSVersion:(id *)a5 maxOSVersion:(id *)a6 prerequisiteBuilds:(id *)a7
{
  v35 = *MEMORY[0x1E69E9840];
  v13 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (v13)
  {
    if (a3)
    {
      v14 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *a3 = [v14 safeStringForKey:@"AssetFormat"];

      if (!*a3)
      {
        *a3 = @"StreamingZip";
      }
    }

    if (a4)
    {
      v15 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *a4 = [v15 safeStringForKey:@"Build"];
    }

    if (a5)
    {
      v16 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *a5 = [v16 safeStringForKey:@"_MinOSVersion"];
    }

    if (a6)
    {
      v17 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      *a6 = [v17 safeStringForKey:@"_MaxOSVersion"];
    }

    if (a7)
    {
      v18 = [(MAAutoAssetStatus *)self availableForUseAttributes];
      v19 = [v18 safeObjectForKey:@"PrerequisiteAssetBuilds" ofClass:objc_opt_class()];

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

        *a7 = v23;
      }

      else
      {
        *a7 = 0;
      }
    }
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(MAAutoAssetStatus *)self assetSelector];
  v5 = [v4 newSummaryDictionary];
  [v3 setSafeObject:v5 forKey:@"assetSelector"];

  v6 = [(MAAutoAssetStatus *)self notifications];
  v7 = [v6 newSummaryDictionary];
  [v3 setSafeObject:v7 forKey:@"notifications"];

  v8 = [(MAAutoAssetStatus *)self availableForUseAttributes];
  if (v8)
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  [v3 setSafeObject:v9 forKey:@"availableForUseError"];

  v10 = [(MAAutoAssetStatus *)self newerVersionAttributes];
  if (v10)
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
  v14 = [(MAAutoAssetStatus *)self downloadProgress];
  if (v14)
  {
    v15 = [(MAAutoAssetStatus *)self downloadProgress];
    v16 = [v15 newSummaryDictionary];
    [v3 setSafeObject:v16 forKey:@"downloadProgress"];
  }

  else
  {
    v15 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:v15 forKey:@"downloadProgress"];
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
  v20 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
  if (v20)
  {
    v21 = [(MAAutoAssetStatus *)self patchedFromBaseSelector];
    v22 = [v21 newSummaryDictionary];
    [v3 setSafeObject:v22 forKey:@"patchedFromBaseSelector"];
  }

  else
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF20]);
    [v3 setSafeObject:v21 forKey:@"patchedFromBaseSelector"];
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
  v26 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
  if (v26)
  {
    v27 = [(MAAutoAssetStatus *)self stagedFromOSVersion];
    [v3 setSafeObject:v27 forKey:@"stagedFromOSVersion"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"stagedFromOSVersion"];
  }

  v28 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
  if (v28)
  {
    v29 = [(MAAutoAssetStatus *)self stagedFromBuildVersion];
    [v3 setSafeObject:v29 forKey:@"stagedFromBuildVersion"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"stagedFromBuildVersion"];
  }

  v30 = [(MAAutoAssetStatus *)self currentLockUsage];
  if (v30)
  {
    v31 = [(MAAutoAssetStatus *)self currentLockUsage];
  }

  else
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF20]);
  }

  v32 = v31;
  [v3 setSafeObject:v31 forKey:@"currentLockUsage"];

  v33 = [(MAAutoAssetStatus *)self availableForUseError];
  if (v33)
  {
    v34 = [(MAAutoAssetStatus *)self availableForUseError];
    v35 = [v34 checkedSummary];
    [v3 setSafeObject:v35 forKey:@"availableForUseError"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"availableForUseError"];
  }

  v36 = [(MAAutoAssetStatus *)self patchingAttemptError];
  if (v36)
  {
    v37 = [(MAAutoAssetStatus *)self patchingAttemptError];
    v38 = [v37 checkedSummary];
    [v3 setSafeObject:v38 forKey:@"patchingAttemptError"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"patchingAttemptError"];
  }

  v39 = [(MAAutoAssetStatus *)self newerVersionError];
  if (v39)
  {
    v40 = [(MAAutoAssetStatus *)self newerVersionError];
    v41 = [v40 checkedSummary];
    [v3 setSafeObject:v41 forKey:@"newerVersionError"];
  }

  else
  {
    [v3 setSafeObject:@"NO" forKey:@"newerVersionError"];
  }

  v42 = [(MAAutoAssetStatus *)self availableForUseAttributes];

  if (v42)
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

+ (id)newCurrentLockUsageSummary:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = [v3 currentLockUsage];

  if (v4)
  {
    v5 = [objc_alloc(MEMORY[0x1E696AD60]) initWithString:@"{"];
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    obj = [v3 currentLockUsage];
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
          v12 = [v3 currentLockUsage];
          v13 = [v12 safeIntegerForKey:v11];

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