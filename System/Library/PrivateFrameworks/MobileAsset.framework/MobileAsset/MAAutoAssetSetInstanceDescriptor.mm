@interface MAAutoAssetSetInstanceDescriptor
+ (id)newMaxColumnStrings;
+ (id)paddedBanner:(id)banner;
+ (id)paddedHeader:(id)header;
+ (id)paddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (MAAutoAssetSetInstanceDescriptor)initWithCoder:(id)coder;
- (id)description:(BOOL)description;
- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withAtomicInstanceEntries:(id)entries withFullyDownloaded:(BOOL)downloaded withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)self0 withStagedPriorToAvailable:(BOOL)self1;
- (id)padded:(id)padded;
- (id)summary;
- (void)buildMaxColumnStrings:(id)strings;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MAAutoAssetSetInstanceDescriptor

- (id)initForClientDomainName:(id)name forAssetSetIdentifier:(id)identifier withAtomicInstanceEntries:(id)entries withFullyDownloaded:(BOOL)downloaded withNeverBeenLocked:(BOOL)locked withDownloadUserInitiated:(BOOL)initiated withDownloadedNetworkBytes:(int64_t)bytes withDownloadedFilesystemBytes:(int64_t)self0 withStagedPriorToAvailable:(BOOL)self1
{
  nameCopy = name;
  identifierCopy = identifier;
  entriesCopy = entries;
  v24.receiver = self;
  v24.super_class = MAAutoAssetSetInstanceDescriptor;
  v21 = [(MAAutoAssetSetInstanceDescriptor *)&v24 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_clientDomainName, name);
    objc_storeStrong(&v22->_assetSetIdentifier, identifier);
    objc_storeStrong(&v22->_atomicInstanceEntries, entries);
    v22->_isFullyDownloaded = downloaded;
    v22->_neverBeenLocked = locked;
    v22->_downloadUserInitiated = initiated;
    v22->_downloadedNetworkBytes = bytes;
    v22->_downloadedFilesystemBytes = filesystemBytes;
    v22->_stagedPriorToAvailable = available;
  }

  return v22;
}

- (MAAutoAssetSetInstanceDescriptor)initWithCoder:(id)coder
{
  v18[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
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

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v11;

    v13 = [coderCopy decodeObjectOfClasses:v8 forKey:@"atomicInstanceEntries"];
    atomicInstanceEntries = v5->_atomicInstanceEntries;
    v5->_atomicInstanceEntries = v13;

    v5->_isFullyDownloaded = [coderCopy decodeBoolForKey:@"isFullyDownloaded"];
    v5->_neverBeenLocked = [coderCopy decodeBoolForKey:@"neverBeenLocked"];
    v5->_downloadUserInitiated = [coderCopy decodeBoolForKey:@"downloadUserInitiated"];
    v5->_downloadedNetworkBytes = [coderCopy decodeIntegerForKey:@"downloadedNetworkBytes"];
    v5->_downloadedFilesystemBytes = [coderCopy decodeIntegerForKey:@"downloadedFilesystemBytes"];
    v5->_stagedPriorToAvailable = [coderCopy decodeBoolForKey:@"stagedPriorToAvailable"];
  }

  v15 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  atomicInstanceEntries = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  [coderCopy encodeObject:atomicInstanceEntries forKey:@"atomicInstanceEntries"];

  [coderCopy encodeBool:-[MAAutoAssetSetInstanceDescriptor isFullyDownloaded](self forKey:{"isFullyDownloaded"), @"isFullyDownloaded"}];
  [coderCopy encodeBool:-[MAAutoAssetSetInstanceDescriptor neverBeenLocked](self forKey:{"neverBeenLocked"), @"neverBeenLocked"}];
  [coderCopy encodeBool:-[MAAutoAssetSetInstanceDescriptor downloadUserInitiated](self forKey:{"downloadUserInitiated"), @"downloadUserInitiated"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetInstanceDescriptor downloadedNetworkBytes](self forKey:{"downloadedNetworkBytes"), @"downloadedNetworkBytes"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetInstanceDescriptor downloadedFilesystemBytes](self forKey:{"downloadedFilesystemBytes"), @"downloadedFilesystemBytes"}];
  [coderCopy encodeBool:-[MAAutoAssetSetInstanceDescriptor stagedPriorToAvailable](self forKey:{"stagedPriorToAvailable"), @"stagedPriorToAvailable"}];
}

- (id)description:(BOOL)description
{
  descriptionCopy = description;
  atomicInstanceEntries = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v6 = atomicInstanceEntries;
  if (descriptionCopy)
  {
    v20 = [atomicInstanceEntries description];
  }

  else
  {
    v7 = [atomicInstanceEntries count];

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
  clientDomainName = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
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

  downloadedNetworkBytes = [(MAAutoAssetSetInstanceDescriptor *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetSetInstanceDescriptor *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v16 = @"Y";
  }

  else
  {
    v16 = @"N";
  }

  v17 = [v19 stringWithFormat:@">>>\n                clientDomainName: %@\n              assetSetIdentifier: %@\n           atomicInstanceEntries: %@\n                 fullyDownloaded: %@\n                 neverBeenLocked: %@\n                   userInitiated: %@\n          downloadedNetworkBytes: %ld\n       downloadedFilesystemBytes: %ld\n          stagedPriorToAvailable: %@\n<<<]", clientDomainName, assetSetIdentifier, v20, v11, v12, v13, downloadedNetworkBytes, downloadedFilesystemBytes, v16];

  return v17;
}

- (id)summary
{
  v15 = MEMORY[0x1E696AEC0];
  clientDomainName = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  atomicInstanceEntries = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v13 = [atomicInstanceEntries count];
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

  downloadedNetworkBytes = [(MAAutoAssetSetInstanceDescriptor *)self downloadedNetworkBytes];
  downloadedFilesystemBytes = [(MAAutoAssetSetInstanceDescriptor *)self downloadedFilesystemBytes];
  if ([(MAAutoAssetSetInstanceDescriptor *)self stagedPriorToAvailable])
  {
    v10 = @"Y";
  }

  else
  {
    v10 = @"N";
  }

  v11 = [v15 stringWithFormat:@"[clientDomainName:%@, assetSetIdentifier:%@, numAtomicInstanceEntries:%ld, fullyDownloaded:%@, neverBeenLocked:%@, userInitiated:%@, networkBytes:%ld, fsBytes:%ld, stagedPrior:%@]", clientDomainName, assetSetIdentifier, v13, v5, v6, v7, downloadedNetworkBytes, downloadedFilesystemBytes, v10];

  return v11;
}

- (void)buildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  clientDomainName = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  atomicInstanceEntries = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v7 = [atomicInstanceEntries description];

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
  v16 = [clientDomainName length];
  v17 = [stringsCopy safeStringForKey:@"clientDomainName"];
  v18 = [v17 length];

  if (v16 > v18)
  {
    [stringsCopy setSafeObject:clientDomainName forKey:@"clientDomainName"];
  }

  v19 = [assetSetIdentifier length];
  v20 = [stringsCopy safeStringForKey:@"assetSetIdentifier"];
  v21 = [v20 length];

  if (v19 > v21)
  {
    [stringsCopy setSafeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];
  }

  v22 = [v7 length];
  v23 = [stringsCopy safeStringForKey:@"atomicInstanceEntries"];
  v24 = [v23 length];

  if (v22 > v24)
  {
    [stringsCopy setSafeObject:v7 forKey:@"atomicInstanceEntries"];
  }

  v25 = [(__CFString *)v9 length];
  v26 = [stringsCopy safeStringForKey:@"isFullyDownloaded"];
  v27 = [v26 length];

  if (v25 > v27)
  {
    [stringsCopy setSafeObject:v9 forKey:@"isFullyDownloaded"];
  }

  v28 = [(__CFString *)v43 length];
  v29 = [stringsCopy safeStringForKey:@"neverBeenLocked"];
  v30 = [v29 length];

  if (v28 > v30)
  {
    [stringsCopy setSafeObject:v43 forKey:@"neverBeenLocked"];
  }

  v31 = [(__CFString *)v44 length];
  v32 = [stringsCopy safeStringForKey:@"downloadUserInitiated"];
  v33 = [v32 length];

  if (v31 > v33)
  {
    [stringsCopy setSafeObject:v44 forKey:@"downloadUserInitiated"];
  }

  v34 = [v12 length];
  v35 = [stringsCopy safeStringForKey:@"downloadedNetworkBytes"];
  v36 = [v35 length];

  if (v34 > v36)
  {
    [stringsCopy setSafeObject:v12 forKey:@"downloadedNetworkBytes"];
  }

  v37 = [v13 length];
  v38 = [stringsCopy safeStringForKey:@"downloadedFilesystemBytes"];
  v39 = [v38 length];

  if (v37 > v39)
  {
    [stringsCopy setSafeObject:v13 forKey:@"downloadedFilesystemBytes"];
  }

  v40 = [(__CFString *)v15 length];
  v41 = [stringsCopy safeStringForKey:@"stagedPriorToAvailable"];
  v42 = [v41 length];

  if (v40 > v42)
  {
    [stringsCopy setSafeObject:v15 forKey:@"stagedPriorToAvailable"];
  }
}

- (id)padded:(id)padded
{
  paddedCopy = padded;
  clientDomainName = [(MAAutoAssetSetInstanceDescriptor *)self clientDomainName];
  v35 = clientDomainName;
  assetSetIdentifier = [(MAAutoAssetSetInstanceDescriptor *)self assetSetIdentifier];
  v34 = assetSetIdentifier;
  atomicInstanceEntries = [(MAAutoAssetSetInstanceDescriptor *)self atomicInstanceEntries];
  v42 = [atomicInstanceEntries description];

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
  v33 = [paddedCopy safeStringForKey:@"clientDomainName"];
  v36 = [MAAutoAssetSetInstanceDescriptor paddedString:clientDomainName paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v32 = [paddedCopy safeStringForKey:@"assetSetIdentifier"];
  v26 = [MAAutoAssetSetInstanceDescriptor paddedString:assetSetIdentifier paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v31 = [paddedCopy safeStringForKey:@"atomicInstanceEntries"];
  v24 = [MAAutoAssetSetInstanceDescriptor paddedString:v42 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v28 = [paddedCopy safeStringForKey:@"isFullyDownloaded"];
  v22 = [MAAutoAssetSetInstanceDescriptor paddedString:v41 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:0];
  v25 = [paddedCopy safeStringForKey:@"neverBeenLocked"];
  v13 = [MAAutoAssetSetInstanceDescriptor paddedString:v40 paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v23 = [paddedCopy safeStringForKey:@"downloadUserInitiated"];
  v14 = [MAAutoAssetSetInstanceDescriptor paddedString:v39 paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v21 = [paddedCopy safeStringForKey:@"downloadedNetworkBytes"];
  v15 = [MAAutoAssetSetInstanceDescriptor paddedString:v38 paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v16 = [paddedCopy safeStringForKey:@"downloadedFilesystemBytes"];
  v17 = [MAAutoAssetSetInstanceDescriptor paddedString:v37 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v18 = [paddedCopy safeStringForKey:@"stagedPriorToAvailable"];

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

+ (id)paddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before
{
  beforeCopy = before;
  stringCopy = string;
  ofStringCopy = ofString;
  withCopy = with;
  v12 = stringCopy;
  v13 = [v12 length];
  v14 = v12;
  if (v13 < [ofStringCopy length])
  {
    v15 = [ofStringCopy length];
    v16 = v15 - [v12 length];
    string = [MEMORY[0x1E696AEC0] string];
    v18 = [string stringByPaddingToLength:v16 withString:withCopy startingAtIndex:0];

    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    if (beforeCopy)
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

+ (id)paddedHeader:(id)header
{
  v19 = MEMORY[0x1E696AEC0];
  headerCopy = header;
  v23 = [headerCopy safeStringForKey:@"clientDomainName"];
  v24 = [MAAutoAssetSetInstanceDescriptor paddedString:@"clientDomainName" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v22 = [headerCopy safeStringForKey:@"assetSetIdentifier"];
  v17 = [MAAutoAssetSetInstanceDescriptor paddedString:@"assetSetIdentifier" paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:0];
  v21 = [headerCopy safeStringForKey:@"atomicInstanceEntries"];
  v15 = [MAAutoAssetSetInstanceDescriptor paddedString:@"atomicInstanceEntries" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v18 = [headerCopy safeStringForKey:@"isFullyDownloaded"];
  v13 = [MAAutoAssetSetInstanceDescriptor paddedString:@"isFullyDownloaded" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [headerCopy safeStringForKey:@"neverBeenLocked"];
  v11 = [MAAutoAssetSetInstanceDescriptor paddedString:@"neverBeenLocked" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [headerCopy safeStringForKey:@"downloadUserInitiated"];
  v4 = [MAAutoAssetSetInstanceDescriptor paddedString:@"downloadUserInitiated" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"downloadedNetworkBytes"];
  v5 = [MAAutoAssetSetInstanceDescriptor paddedString:@"downloadedNetworkBytes" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [headerCopy safeStringForKey:@"downloadedFilesystemBytes"];
  v7 = [MAAutoAssetSetInstanceDescriptor paddedString:@"downloadedFilesystemBytes" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [headerCopy safeStringForKey:@"stagedPriorToAvailable"];

  v9 = [MAAutoAssetSetInstanceDescriptor paddedString:@"stagedPriorToAvailable" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@", v24, v17, v15, v13, v11, v4, v5, v7, v9];

  return v20;
}

+ (id)paddedBanner:(id)banner
{
  v19 = MEMORY[0x1E696AEC0];
  bannerCopy = banner;
  v23 = [bannerCopy safeStringForKey:@"clientDomainName"];
  v24 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v22 = [bannerCopy safeStringForKey:@"assetSetIdentifier"];
  v17 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v22 paddingWith:@"=" paddingBefore:0];
  v21 = [bannerCopy safeStringForKey:@"atomicInstanceEntries"];
  v15 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v18 = [bannerCopy safeStringForKey:@"isFullyDownloaded"];
  v13 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [bannerCopy safeStringForKey:@"neverBeenLocked"];
  v4 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v14 = [bannerCopy safeStringForKey:@"downloadUserInitiated"];
  v5 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v12 = [bannerCopy safeStringForKey:@"downloadedNetworkBytes"];
  v6 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v7 = [bannerCopy safeStringForKey:@"downloadedFilesystemBytes"];
  v8 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v7 paddingWith:@"=" paddingBefore:0];
  v9 = [bannerCopy safeStringForKey:@"stagedPriorToAvailable"];

  v10 = [MAAutoAssetSetInstanceDescriptor paddedString:&stru_1F0C1B388 paddingToLenghtOfString:v9 paddingWith:@"=" paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@", v24, v17, v15, v13, v4, v5, v6, v8, v10];

  return v20;
}

@end