@interface MAAutoAssetSetInstanceDescriptor
+ (id)newMaxColumnStrings;
+ (id)paddedBanner:(id)a3;
+ (id)paddedHeader:(id)a3;
+ (id)paddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (MAAutoAssetSetInstanceDescriptor)initWithCoder:(id)a3;
- (id)description:(BOOL)a3;
- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withAtomicInstanceEntries:(id)a5 withFullyDownloaded:(BOOL)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadedNetworkBytes:(int64_t)a9 withDownloadedFilesystemBytes:(int64_t)a10 withStagedPriorToAvailable:(BOOL)a11;
- (id)padded:(id)a3;
- (id)summary;
- (void)buildMaxColumnStrings:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MAAutoAssetSetInstanceDescriptor

- (id)initForClientDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withAtomicInstanceEntries:(id)a5 withFullyDownloaded:(BOOL)a6 withNeverBeenLocked:(BOOL)a7 withDownloadUserInitiated:(BOOL)a8 withDownloadedNetworkBytes:(int64_t)a9 withDownloadedFilesystemBytes:(int64_t)a10 withStagedPriorToAvailable:(BOOL)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v24.receiver = self;
  v24.super_class = MAAutoAssetSetInstanceDescriptor;
  v21 = [(MAAutoAssetSetInstanceDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_clientDomainName, a3);
    objc_storeStrong(&v22->_assetSetIdentifier, a4);
    objc_storeStrong(&v22->_atomicInstanceEntries, a5);
    v22->_isFullyDownloaded = a6;
    v22->_neverBeenLocked = a7;
    v22->_downloadUserInitiated = a8;
    v22->_downloadedNetworkBytes = a9;
    v22->_downloadedFilesystemBytes = a10;
    v22->_stagedPriorToAvailable = a11;
  }

  return v22;
}

- (MAAutoAssetSetInstanceDescriptor)initWithCoder:(id)a3
{
  v18[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MAAutoAssetSetInstanceDescriptor;
  v5 = [(MAAutoAssetSetInstanceDescriptor *)&v17 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v11;

    v13 = [v4 decodeObjectOfClasses:v8 forKey:@"atomicInstanceEntries"];
    atomicInstanceEntries = v5->_atomicInstanceEntries;
    v5->_atomicInstanceEntries = v13;

    v5->_isFullyDownloaded = [v4 decodeBoolForKey:@"isFullyDownloaded"];
    v5->_neverBeenLocked = [v4 decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [v4 decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [v4 decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [v4 decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_stagedPriorToAvailable = [v4 decodeBoolForKey:@"stagedPriorToAvailable"];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7 = a3;
  v4 = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  [v7 encodeObject:v4 forKey:@"clientDomainName"];

  v5 = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  [v7 encodeObject:v5 forKey:@"assetSetIdentifier"];

  v6 = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  [v7 encodeObject:v6 forKey:@"atomicInstanceEntries"];

  [v7 encodeBool:-[MAAutoAssetSetInstanceDescriptor isFullyDownloaded](self forKey:{"isFullyDownloaded"), @"isFullyDownloaded"}];
  [v7 encodeBool:-[MAAutoAssetSetInstanceDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [v7 encodeBool:-[MAAutoAssetSetInstanceDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [v7 encodeInteger:-[MAAutoAssetSetInstanceDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [v7 encodeInteger:-[MAAutoAssetSetInstanceDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [v7 encodeBool:-[MAAutoAssetSetInstanceDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
}

- (id)description:(BOOL)a3
{
  v3 = a3;
  v5 = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v6 = v5;
  if (v3)
  {
    v20 = [v5 description];
  }

  else
  {
    v7 = [v5 count];

    if (v7 >= 2)
    {
      v8 = @"entries";
    }

    else
    {
      v8 = @"entry";
    }

    v20 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%d %@", v7, v8];
  }

  v19 = MEMORY[0x1E696AEC0];
  v9 = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  v10 = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  if ([(MAAutoAssetSetInstanceDescriptor *)self isFullyDownloaded])
  {
    v11 = @"Y";
  }

  else
  {
    v11 = @"N";
  }

  if ([(MAAutoAssetSetInstanceDescriptor *)self neverBeenLocked])
  {
    v12 = @"Y";
  }

  else
  {
    v12 = @"N";
  }

  if ([(MAAutoAssetSetInstanceDescriptor *)self downloadUserInitiated])
  {
    v13 = @"Y";
  }

  else
  {
    v13 = @"N";
  }

  v14 = [(MAAutoAssetSetInstanceDescriptor *)self downloadedNetworkBytes];
  v15 = [(MAAutoAssetSetInstanceDescriptor *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = [v19 stringWithFormat:@">>>\n                clientDomainName: %@\n              assetSetIdentifier: %@\n           atomicInstanceEntries: %@\n                 fullyDownloaded: %@\n                 neverBeenLocked: %@\n                   userInitiated: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n          stagedPriorToAvailable: %@\n<<<]", v9, v10, v20, v11, v12, v13, v14, v15, v16];

  return v17;
}

- (id)summary
{
  v15 = MEMORY[0x1E696AEC0];
  v14 = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  v3 = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  v4 = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v13 = [v4 count];
  if ([(MAAutoAssetSetInstanceDescriptor *)self isFullyDownloaded])
  {
    v5 = @"Y";
  }

  else
  {
    v5 = @"N";
  }

  if ([(MAAutoAssetSetInstanceDescriptor *)self neverBeenLocked])
  {
    v6 = @"Y";
  }

  else
  {
    v6 = @"N";
  }

  if ([(MAAutoAssetSetInstanceDescriptor *)self downloadUserInitiated])
  {
    v7 = @"Y";
  }

  else
  {
    v7 = @"N";
  }

  v8 = [(MAAutoAssetSetInstanceDescriptor *)self downloadedNetworkBytes];
  v9 = [(MAAutoAssetSetInstanceDescriptor *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [v15 stringWithFormat:@"[clientDomainName:%@, assetSetIdentifier:%@, numAtomicInstanceEntries:%ld, fullyDownloaded:%@, neverBeenLocked:%@, userInitiated:%@, networkBytes:%ld, fsBytes:%ld, stagedPrior:%@]", v14, v3, v13, v5, v6, v7, v8, v9, v10];

  return v11;
}

- (void)buildMaxColumnStrings:(id)a3
{
  v45 = a3;
  v4 = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  v5 = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  v6 = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v7 = [v6 description];

  if ([(MAAutoAssetSetInstanceDescriptor *)self isFullyDownloaded])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v9 = v8;
  if ([(MAAutoAssetSetInstanceDescriptor *)self neverBeenLocked])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v43 = v10;
  if ([(MAAutoAssetSetInstanceDescriptor *)self downloadUserInitiated])
  {
    v11 = @"YES";
  }

  else
  {
    v11 = @"NO";
  }

  v44 = v11;
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetInstanceDescriptor downloadedNetworkBytes](self, "downloadedNetworkBytes")];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetInstanceDescriptor downloadedFilesystemBytes](self, "downloadedFilesystemBytes")];
  if ([(MAAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v14 = @"YES";
  }

  else
  {
    v14 = @"NO";
  }

  v15 = v14;
  v16 = [v4 length];
  v17 = [v45 safeStringForKey:@"clientDomainName"];
  v18 = [v17 length];

  if (v16 > v18)
  {
    [v45 setSafeObject:v4 forKey:@"clientDomainName"];
  }

  v19 = [v5 length];
  v20 = [v45 safeStringForKey:@"assetSetIdentifier"];
  v21 = [v20 length];

  if (v19 > v21)
  {
    [v45 setSafeObject:v5 forKey:@"assetSetIdentifier"];
  }

  v22 = [v7 length];
  v23 = [v45 safeStringForKey:@"atomicInstanceEntries"];
  v24 = [v23 length];

  if (v22 > v24)
  {
    [v45 setSafeObject:v7 forKey:@"atomicInstanceEntries"];
  }

  v25 = [(__CFString *)v9 length];
  v26 = [v45 safeStringForKey:@"isFullyDownloaded"];
  v27 = [v26 length];

  if (v25 > v27)
  {
    [v45 setSafeObject:v9 forKey:@"isFullyDownloaded"];
  }

  v28 = [(__CFString *)v43 length];
  v29 = [v45 safeStringForKey:@"neverBeenLocked"];
  v30 = [v29 length];

  if (v28 > v30)
  {
    [v45 setSafeObject:v43 forKey:@"neverBeenLocked"];
  }

  v31 = [(__CFString *)v44 length];
  v32 = [v45 safeStringForKey:@"downloadUserInitiated"];
  v33 = [v32 length];

  if (v31 > v33)
  {
    [v45 setSafeObject:v44 forKey:@"downloadUserInitiated"];
  }

  v34 = [v12 length];
  v35 = [v45 safeStringForKey:@"downloadedNetworkBytes"];
  v36 = [v35 length];

  if (v34 > v36)
  {
    [v45 setSafeObject:v12 forKey:@"downloadedNetworkBytes"];
  }

  v37 = [v13 length];
  v38 = [v45 safeStringForKey:@"downloadedFilesystemBytes"];
  v39 = [v38 length];

  if (v37 > v39)
  {
    [v45 setSafeObject:v13 forKey:@"downloadedFilesystemBytes"];
  }

  v40 = [(__CFString *)v15 length];
  v41 = [v45 safeStringForKey:@"stagedPriorToAvailable"];
  v42 = [v41 length];

  if (v40 > v42)
  {
    [v45 setSafeObject:v15 forKey:@"stagedPriorToAvailable"];
  }
}

- (id)padded:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  v35 = v5;
  v6 = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  v34 = v6;
  v7 = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v42 = [v7 description];

  if ([(MAAutoAssetSetInstanceDescriptor *)self isFullyDownloaded])
  {
    v8 = @"YES";
  }

  else
  {
    v8 = @"NO";
  }

  v41 = v8;
  if ([(MAAutoAssetSetInstanceDescriptor *)self neverBeenLocked])
  {
    v9 = @"YES";
  }

  else
  {
    v9 = @"NO";
  }

  v40 = v9;
  if ([(MAAutoAssetSetInstanceDescriptor *)self downloadUserInitiated])
  {
    v10 = @"YES";
  }

  else
  {
    v10 = @"NO";
  }

  v11 = MEMORY[0x1E696AEC0];
  v39 = v10;
  v38 = [[v11 alloc] initWithFormat:@"%lld", -[MAAutoAssetSetInstanceDescriptor downloadedNetworkBytes](self, "downloadedNetworkBytes")];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetInstanceDescriptor downloadedFilesystemBytes](self, "downloadedFilesystemBytes")];
  if ([(MAAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v12 = @"YES";
  }

  else
  {
    v12 = @"NO";
  }

  v29 = MEMORY[0x1E696AEC0];
  v27 = v12;
  v33 = [v4 safeStringForKey:@"clientDomainName"];
  v36 = [MAAutoAssetSetInstanceDescriptor paddedString:v5 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v32 = [v4 safeStringForKey:@"assetSetIdentifier"];
  v26 = [MAAutoAssetSetInstanceDescriptor paddedString:v6 paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v31 = [v4 safeStringForKey:@"atomicInstanceEntries"];
  v24 = [MAAutoAssetSetInstanceDescriptor paddedString:v42 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v28 = [v4 safeStringForKey:@"isFullyDownloaded"];
  v22 = [MAAutoAssetSetInstanceDescriptor paddedString:v41 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:0];
  v25 = [v4 safeStringForKey:@"neverBeenLocked"];
  v13 = [MAAutoAssetSetInstanceDescriptor paddedString:v40 paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v23 = [v4 safeStringForKey:@"downloadUserInitiated"];
  v14 = [MAAutoAssetSetInstanceDescriptor paddedString:v39 paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v21 = [v4 safeStringForKey:@"downloadedNetworkBytes"];
  v15 = [MAAutoAssetSetInstanceDescriptor paddedString:v38 paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v16 = [v4 safeStringForKey:@"downloadedFilesystemBytes"];
  v17 = [MAAutoAssetSetInstanceDescriptor paddedString:v37 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v18 = [v4 safeStringForKey:@"stagedPriorToAvailable"];

  v19 = [MAAutoAssetSetInstanceDescriptor paddedString:v27 paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];

  v30 = [v29 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@", v36, v26, v24, v22, v13, v14, v15, v17, v19];

  return v30;
}

+ (id)newMaxColumnStrings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setSafeObject:@"clientDomainName" forKey:@"clientDomainName"];
  [v2 setSafeObject:@"assetSetIdentifier" forKey:@"assetSetIdentifier"];
  [v2 setSafeObject:@"atomicInstanceEntries" forKey:@"atomicInstanceEntries"];
  [v2 setSafeObject:@"isFullyDownloaded" forKey:@"isFullyDownloaded"];
  [v2 setSafeObject:@"neverBeenLocked" forKey:@"neverBeenLocked"];
  [v2 setSafeObject:@"downloadUserInitiated" forKey:@"downloadUserInitiated"];
  [v2 setSafeObject:@"downloadedNetworkBytes" forKey:@"downloadedNetworkBytes"];
  [v2 setSafeObject:@"downloadedFilesystemBytes" forKey:@"downloadedFilesystemBytes"];
  [v2 setSafeObject:@"stagedPriorToAvailable" forKey:@"stagedPriorToAvailable"];
  return v2;
}

+ (id)paddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6
{
  v6 = a6;
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = v9;
  v13 = [v12 length];
  v14 = v12;
  if (v13 < [v10 length])
  {
    v15 = [v10 length];
    v16 = v15 - [v12 length];
    v17 = [MEMORY[0x1E696AEC0] string];
    v18 = [v17 stringByPaddingToLength:v16 withString:v11 startingAtIndex:0];

    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (v6)
    {
      v20 = [v19 initWithFormat:@"%@%@", v18, v12];
    }

    else
    {
      v20 = [v19 initWithFormat:@"%@%@", v12, v18];
    }

    v14 = v20;
  }

  return v14;
}

+ (id)paddedHeader:(id)a3
{
  v19 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v23 = [v3 safeStringForKey:@"clientDomainName"];
  v24 = [MAAutoAssetSetInstanceDescriptor paddedString:@"clientDomainName" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v22 = [v3 safeStringForKey:@"assetSetIdentifier"];
  v17 = [MAAutoAssetSetInstanceDescriptor paddedString:@"assetSetIdentifier" paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:0];
  v21 = [v3 safeStringForKey:@"atomicInstanceEntries"];
  v15 = [MAAutoAssetSetInstanceDescriptor paddedString:@"atomicInstanceEntries" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v18 = [v3 safeStringForKey:@"isFullyDownloaded"];
  v13 = [MAAutoAssetSetInstanceDescriptor paddedString:@"isFullyDownloaded" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [v3 safeStringForKey:@"neverBeenLocked"];
  v11 = [MAAutoAssetSetInstanceDescriptor paddedString:@"neverBeenLocked" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [v3 safeStringForKey:@"downloadUserInitiated"];
  v4 = [MAAutoAssetSetInstanceDescriptor paddedString:@"downloadUserInitiated" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"downloadedNetworkBytes"];
  v5 = [MAAutoAssetSetInstanceDescriptor paddedString:@"downloadedNetworkBytes" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [v3 safeStringForKey:@"downloadedFilesystemBytes"];
  v7 = [MAAutoAssetSetInstanceDescriptor paddedString:@"downloadedFilesystemBytes" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [v3 safeStringForKey:@"stagedPriorToAvailable"];

  v9 = [MAAutoAssetSetInstanceDescriptor paddedString:@"stagedPriorToAvailable" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@", v24, v17, v15, v13, v11, v4, v5, v7, v9];

  return v20;
}

+ (id)paddedBanner:(id)a3
{
  v19 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v23 = [v3 safeStringForKey:@"clientDomainName"];
  v24 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v22 = [v3 safeStringForKey:@"assetSetIdentifier"];
  v17 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v22 paddingWith:@"=" paddingBefore:0];
  v21 = [v3 safeStringForKey:@"atomicInstanceEntries"];
  v15 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v18 = [v3 safeStringForKey:@"isFullyDownloaded"];
  v13 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [v3 safeStringForKey:@"neverBeenLocked"];
  v4 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v14 = [v3 safeStringForKey:@"downloadUserInitiated"];
  v5 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v12 = [v3 safeStringForKey:@"downloadedNetworkBytes"];
  v6 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v7 = [v3 safeStringForKey:@"downloadedFilesystemBytes"];
  v8 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v7 paddingWith:@"=" paddingBefore:0];
  v9 = [v3 safeStringForKey:@"stagedPriorToAvailable"];

  v10 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v9 paddingWith:@"=" paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@", v24, v17, v15, v13, v4, v5, v6, v8, v10];

  return v20;
}

@end