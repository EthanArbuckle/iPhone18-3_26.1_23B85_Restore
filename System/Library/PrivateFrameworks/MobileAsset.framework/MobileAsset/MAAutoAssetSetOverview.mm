@interface MAAutoAssetSetOverview
+ (id)overviewNewMaxColumnStrings;
+ (id)overviewPaddedBanner:(id)banner;
+ (id)overviewPaddedHeader:(id)header;
+ (id)overviewPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (MAAutoAssetSetOverview)initWithCoder:(id)coder;
- (MAAutoAssetSetOverview)initWithDomainName:(id)name forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withLatestDownloadedAtomicInstance:(id)instance withDownloadedAtomicInstances:(id)instances withDiscoveredAtomicInstance:(id)atomicInstance withActiveClientCount:(int64_t)count withActiveMonitorCount:(int64_t)self0 withMaximumClientCount:(int64_t)self1 withTotalClientCount:(int64_t)self2;
- (id)_entry_string_to_use:(int64_t)_entry_string_to_use;
- (id)description:(BOOL)description;
- (id)overviewPadded:(id)padded;
- (id)summary;
- (void)encodeWithCoder:(id)coder;
- (void)overviewBuildMaxColumnStrings:(id)strings;
@end

@implementation MAAutoAssetSetOverview

- (MAAutoAssetSetOverview)initWithDomainName:(id)name forAssetSetIdentifier:(id)identifier withConfiguredAssetEntries:(id)entries withLatestDownloadedAtomicInstance:(id)instance withDownloadedAtomicInstances:(id)instances withDiscoveredAtomicInstance:(id)atomicInstance withActiveClientCount:(int64_t)count withActiveMonitorCount:(int64_t)self0 withMaximumClientCount:(int64_t)self1 withTotalClientCount:(int64_t)self2
{
  nameCopy = name;
  identifierCopy = identifier;
  entriesCopy = entries;
  instanceCopy = instance;
  instancesCopy = instances;
  atomicInstanceCopy = atomicInstance;
  v28.receiver = self;
  v28.super_class = MAAutoAssetSetOverview;
  v22 = [(MAAutoAssetSetOverview *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_clientDomainName, name);
    objc_storeStrong(&v23->_assetSetIdentifier, identifier);
    objc_storeStrong(&v23->_configuredAssetEntries, entries);
    objc_storeStrong(&v23->_latestDownloadedAtomicInstance, instance);
    objc_storeStrong(&v23->_downloadedAtomicInstances, instances);
    objc_storeStrong(&v23->_discoveredAtomicInstance, atomicInstance);
    v23->_activeClientCount = count;
    v23->_activeMonitorCount = monitorCount;
    v23->_maximumClientCount = clientCount;
    v23->_totalClientCount = totalClientCount;
  }

  return v23;
}

- (MAAutoAssetSetOverview)initWithCoder:(id)coder
{
  v28[2] = *MEMORY[0x1E69E9840];
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = MAAutoAssetSetOverview;
  v5 = [(MAAutoAssetSetOverview *)&v26 init];
  if (v5)
  {
    v6 = MEMORY[0x1E695DFD8];
    v28[0] = objc_opt_class();
    v28[1] = objc_opt_class();
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v28 count:2];
    v8 = [v6 setWithArray:v7];

    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v9;

    v11 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v11;

    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    v15 = [v13 initWithArray:v14];
    v16 = [coderCopy decodeObjectOfClasses:v15 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v16;

    v18 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v18;

    v20 = [coderCopy decodeObjectOfClasses:v8 forKey:@"downloadedAtomicInstances"];
    downloadedAtomicInstances = v5->_downloadedAtomicInstances;
    v5->_downloadedAtomicInstances = v20;

    v22 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"discoveredAtomicInstance"];
    discoveredAtomicInstance = v5->_discoveredAtomicInstance;
    v5->_discoveredAtomicInstance = v22;

    v5->_activeClientCount = [coderCopy decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [coderCopy decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [coderCopy decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [coderCopy decodeIntegerForKey:@"totalClientCount"];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientDomainName = [(MAAutoAssetSetOverview *)self clientDomainName];
  [coderCopy encodeObject:clientDomainName forKey:@"clientDomainName"];

  assetSetIdentifier = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  [coderCopy encodeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];

  configuredAssetEntries = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  [coderCopy encodeObject:configuredAssetEntries forKey:@"configuredAssetEntries"];

  latestDownloadedAtomicInstance = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  [coderCopy encodeObject:latestDownloadedAtomicInstance forKey:@"latestDownloadedAtomicInstance"];

  downloadedAtomicInstances = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  [coderCopy encodeObject:downloadedAtomicInstances forKey:@"downloadedAtomicInstances"];

  discoveredAtomicInstance = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  [coderCopy encodeObject:discoveredAtomicInstance forKey:@"discoveredAtomicInstance"];

  [coderCopy encodeInteger:-[MAAutoAssetSetOverview activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetOverview activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetOverview maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetOverview totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
}

- (id)description:(BOOL)description
{
  descriptionCopy = description;
  configuredAssetEntries = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v6 = configuredAssetEntries;
  if (descriptionCopy)
  {
    v7 = [configuredAssetEntries description];

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    downloadedAtomicInstances = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    if (downloadedAtomicInstances)
    {
      downloadedAtomicInstances2 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
      v11 = [v8 initWithFormat:@"%@", downloadedAtomicInstances2];

      goto LABEL_10;
    }

    v18 = [v8 initWithFormat:@"%@", @"NONE", v27];
  }

  else
  {
    v12 = [configuredAssetEntries count];

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [(MAAutoAssetSetOverview *)self _entry_string_to_use:v12];
    v7 = [v13 initWithFormat:@"%d %@", v12, v14];

    downloadedAtomicInstances3 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    if (downloadedAtomicInstances3)
    {
      downloadedAtomicInstances4 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
      v17 = [downloadedAtomicInstances4 count];
    }

    else
    {
      v17 = 0;
    }

    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    downloadedAtomicInstances = [(MAAutoAssetSetOverview *)self _entry_string_to_use:v17];
    v18 = [v19 initWithFormat:@"%d %@", v17, downloadedAtomicInstances];
  }

  v11 = v18;
LABEL_10:

  v28 = MEMORY[0x1E696AEC0];
  clientDomainName = [(MAAutoAssetSetOverview *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  latestDownloadedAtomicInstance = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"NONE";
  }

  discoveredAtomicInstance = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  if (discoveredAtomicInstance)
  {
    discoveredAtomicInstance2 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance2 = @"NONE";
  }

  v25 = [v28 stringWithFormat:@">>>\n                clientDomainName: %@\n              assetSetIdentifier: %@\n          configuredAssetEntries: %@\n  latestDownloadedAtomicInstance: %@\n        discoveredAtomicInstance: %@\n       downloadedAtomicInstances: %@\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n<<<]", clientDomainName, assetSetIdentifier, v7, latestDownloadedAtomicInstance2, discoveredAtomicInstance2, v11, -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount"), -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount"), -[MAAutoAssetSetOverview maximumClientCount](self, "maximumClientCount"), -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  if (discoveredAtomicInstance)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  return v25;
}

- (id)_entry_string_to_use:(int64_t)_entry_string_to_use
{
  if (_entry_string_to_use >= 2)
  {
    return @"entries";
  }

  else
  {
    return @"entry";
  }
}

- (id)summary
{
  v15 = MEMORY[0x1E696AEC0];
  clientDomainName = [(MAAutoAssetSetOverview *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  configuredAssetEntries = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v14 = [configuredAssetEntries count];
  latestDownloadedAtomicInstance = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"NONE";
  }

  downloadedAtomicInstances = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (downloadedAtomicInstances)
  {
    downloadedAtomicInstances2 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    v13 = [downloadedAtomicInstances2 count];
  }

  else
  {
    v13 = 0;
  }

  latestDownloadedAtomicInstance3 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance3)
  {
    discoveredAtomicInstance = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance = @"NONE";
  }

  v9 = assetSetIdentifier;
  v10 = [v15 stringWithFormat:@"clientDomain:%@|assetIdentifier:%@|numConfiguredEntries:%ld|latestDownloadedEntry:%@|numDownloadedEntries:%ld|discoveredEntry:%@|clients:%lld|monitors:%lld|maxClients:%lld|totalClients:%lld", clientDomainName, assetSetIdentifier, v14, latestDownloadedAtomicInstance2, v13, discoveredAtomicInstance, -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount"), -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount"), -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount"), -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  if (latestDownloadedAtomicInstance3)
  {
  }

  if (downloadedAtomicInstances)
  {
  }

  if (latestDownloadedAtomicInstance)
  {
  }

  return v10;
}

- (void)overviewBuildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  clientDomainName = [(MAAutoAssetSetOverview *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  configuredAssetEntries = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v50 = [v5 initWithFormat:@"%lld", objc_msgSend(configuredAssetEntries, "count")];

  latestDownloadedAtomicInstance = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"NONE";
  }

  downloadedAtomicInstances = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (downloadedAtomicInstances)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    downloadedAtomicInstances2 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    v12 = [v10 initWithFormat:@"%lld", objc_msgSend(downloadedAtomicInstances2, "count")];
  }

  else
  {
    v12 = @"NONE";
  }

  latestDownloadedAtomicInstance3 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance3)
  {
    discoveredAtomicInstance = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance = @"NONE";
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount")];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount")];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview maximumClientCount](self, "maximumClientCount")];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  v49 = clientDomainName;
  v19 = [clientDomainName length];
  v20 = [stringsCopy safeStringForKey:@"assetSetIdentifier"];
  v21 = [v20 length];

  if (v19 > v21)
  {
    [stringsCopy setSafeObject:v49 forKey:@"assetSetIdentifier"];
  }

  v22 = [assetSetIdentifier length];
  v23 = [stringsCopy safeStringForKey:@"assetSetIdentifier"];
  v24 = [v23 length];

  if (v22 > v24)
  {
    [stringsCopy setSafeObject:assetSetIdentifier forKey:@"assetSetIdentifier"];
  }

  v25 = [v50 length];
  v26 = [stringsCopy safeStringForKey:@"configuredAssetEntries"];
  v27 = [v26 length];

  if (v25 > v27)
  {
    [stringsCopy setSafeObject:v50 forKey:@"configuredAssetEntries"];
  }

  v28 = [(__CFString *)latestDownloadedAtomicInstance2 length];
  v29 = [stringsCopy safeStringForKey:@"latestDownloadedAtomicInstance"];
  v30 = [v29 length];

  if (v28 > v30)
  {
    [stringsCopy setSafeObject:latestDownloadedAtomicInstance2 forKey:@"latestDownloadedAtomicInstance"];
  }

  v31 = [(__CFString *)v12 length];
  v32 = [stringsCopy safeStringForKey:@"downloadedAtomicInstances"];
  v33 = [v32 length];

  if (v31 > v33)
  {
    [stringsCopy setSafeObject:v12 forKey:@"downloadedAtomicInstances"];
  }

  v34 = [(__CFString *)discoveredAtomicInstance length];
  v35 = [stringsCopy safeStringForKey:@"discoveredAtomicInstance"];
  v36 = [v35 length];

  if (v34 > v36)
  {
    [stringsCopy setSafeObject:discoveredAtomicInstance forKey:@"discoveredAtomicInstance"];
  }

  v37 = [v15 length];
  v38 = [stringsCopy safeStringForKey:@"activeClientCount"];
  v39 = [v38 length];

  if (v37 > v39)
  {
    [stringsCopy setSafeObject:v15 forKey:@"activeClientCount"];
  }

  v40 = [v16 length];
  v41 = [stringsCopy safeStringForKey:@"activeMonitorCount"];
  v42 = [v41 length];

  if (v40 > v42)
  {
    [stringsCopy setSafeObject:v16 forKey:@"activeMonitorCount"];
  }

  v43 = [v17 length];
  v44 = [stringsCopy safeStringForKey:@"maximumClientCount"];
  v45 = [v44 length];

  if (v43 > v45)
  {
    [stringsCopy setSafeObject:v17 forKey:@"maximumClientCount"];
  }

  v46 = [v18 length];
  v47 = [stringsCopy safeStringForKey:@"totalClientCount"];
  v48 = [v47 length];

  if (v46 > v48)
  {
    [stringsCopy setSafeObject:v18 forKey:@"totalClientCount"];
  }
}

- (id)overviewPadded:(id)padded
{
  paddedCopy = padded;
  clientDomainName = [(MAAutoAssetSetOverview *)self clientDomainName];
  assetSetIdentifier = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  configuredAssetEntries = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v43 = [v5 initWithFormat:@"%lld", objc_msgSend(configuredAssetEntries, "count")];

  latestDownloadedAtomicInstance = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance)
  {
    latestDownloadedAtomicInstance2 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    latestDownloadedAtomicInstance2 = @"NONE";
  }

  downloadedAtomicInstances = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (downloadedAtomicInstances)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    downloadedAtomicInstances2 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    v42 = [v9 initWithFormat:@"%lld", objc_msgSend(downloadedAtomicInstances2, "count")];
  }

  else
  {
    v42 = @"NONE";
  }

  latestDownloadedAtomicInstance3 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (latestDownloadedAtomicInstance3)
  {
    discoveredAtomicInstance = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    discoveredAtomicInstance = @"NONE";
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount")];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount")];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview maximumClientCount](self, "maximumClientCount")];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  v32 = MEMORY[0x1E696AEC0];
  v37 = [paddedCopy safeStringForKey:@"clientDomainName"];
  v29 = [MAAutoAssetSetOverview overviewPaddedString:clientDomainName paddingToLenghtOfString:v37 paddingWith:@" " paddingBefore:0];
  v36 = [paddedCopy safeStringForKey:@"assetSetIdentifier"];
  v27 = [MAAutoAssetSetOverview overviewPaddedString:assetSetIdentifier paddingToLenghtOfString:v36 paddingWith:@" " paddingBefore:0];
  v35 = [paddedCopy safeStringForKey:@"configuredAssetEntries"];
  v21 = [MAAutoAssetSetOverview overviewPaddedString:v43 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v31 = [paddedCopy safeStringForKey:@"latestDownloadedAtomicInstance"];
  v25 = [MAAutoAssetSetOverview overviewPaddedString:latestDownloadedAtomicInstance2 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v28 = [paddedCopy safeStringForKey:@"downloadedAtomicInstances"];
  v23 = [MAAutoAssetSetOverview overviewPaddedString:v42 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:0];
  v26 = [paddedCopy safeStringForKey:@"discoveredAtomicInstance"];
  v34 = discoveredAtomicInstance;
  v20 = [MAAutoAssetSetOverview overviewPaddedString:discoveredAtomicInstance paddingToLenghtOfString:v26 paddingWith:@" " paddingBefore:0];
  v24 = [paddedCopy safeStringForKey:@"activeClientCount"];
  v13 = [MAAutoAssetSetOverview overviewPaddedString:v30 paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:1];
  v22 = [paddedCopy safeStringForKey:@"activeMonitorCount"];
  v14 = [MAAutoAssetSetOverview overviewPaddedString:v41 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v15 = [paddedCopy safeStringForKey:@"maximumClientCount"];
  v16 = [MAAutoAssetSetOverview overviewPaddedString:v40 paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:1];
  v17 = [paddedCopy safeStringForKey:@"totalClientCount"];

  v18 = [MAAutoAssetSetOverview overviewPaddedString:v38 paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:1];
  v33 = [v32 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v29, v27, v21, v25, v23, v20, v13, v14, v16, v18];

  return v33;
}

+ (id)overviewNewMaxColumnStrings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setSafeObject:@"clientDomainName" forKey:@"clientDomainName"];
  [v2 setSafeObject:@"assetSetIdentifier" forKey:@"assetSetIdentifier"];
  [v2 setSafeObject:@"configuredAssetEntries" forKey:@"configuredAssetEntries"];
  [v2 setSafeObject:@"latestDownloadedAtomicInstance" forKey:@"latestDownloadedAtomicInstance"];
  [v2 setSafeObject:@"downloadedAtomicInstances" forKey:@"downloadedAtomicInstances"];
  [v2 setSafeObject:@"discoveredAtomicInstance" forKey:@"discoveredAtomicInstance"];
  [v2 setSafeObject:@"activeClientCount" forKey:@"activeClientCount"];
  [v2 setSafeObject:@"activeMonitorCount" forKey:@"activeMonitorCount"];
  [v2 setSafeObject:@"maximumClientCount" forKey:@"maximumClientCount"];
  [v2 setSafeObject:@"totalClientCount" forKey:@"totalClientCount"];

  return v2;
}

+ (id)overviewPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before
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

+ (id)overviewPaddedHeader:(id)header
{
  v21 = MEMORY[0x1E696AEC0];
  headerCopy = header;
  v25 = [headerCopy safeStringForKey:@"clientDomainName"];
  v26 = [MAAutoAssetSetOverview overviewPaddedString:@"clientDomainName" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [headerCopy safeStringForKey:@"assetSetIdentifier"];
  v18 = [MAAutoAssetSetOverview overviewPaddedString:@"assetSetIdentifier" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [headerCopy safeStringForKey:@"configuredAssetEntries"];
  v16 = [MAAutoAssetSetOverview overviewPaddedString:@"configuredAssetEntries" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v20 = [headerCopy safeStringForKey:@"latestDownloadedAtomicInstance"];
  v15 = [MAAutoAssetSetOverview overviewPaddedString:@"latestDownloadedAtomicInstance" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v19 = [headerCopy safeStringForKey:@"downloadedAtomicInstances"];
  v13 = [MAAutoAssetSetOverview overviewPaddedString:@"downloadedAtomicInstances" paddingToLenghtOfString:v19 paddingWith:@" " paddingBefore:0];
  v17 = [headerCopy safeStringForKey:@"discoveredAtomicInstance"];
  v11 = [MAAutoAssetSetOverview overviewPaddedString:@"discoveredAtomicInstance" paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:0];
  v14 = [headerCopy safeStringForKey:@"activeClientCount"];
  v10 = [MAAutoAssetSetOverview overviewPaddedString:@"activeClientCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"activeMonitorCount"];
  v4 = [MAAutoAssetSetOverview overviewPaddedString:@"activeMonitorCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v5 = [headerCopy safeStringForKey:@"maximumClientCount"];
  v6 = [MAAutoAssetSetOverview overviewPaddedString:@"maximumClientCount" paddingToLenghtOfString:v5 paddingWith:@" " paddingBefore:0];
  v7 = [headerCopy safeStringForKey:@"totalClientCount"];

  v8 = [MAAutoAssetSetOverview overviewPaddedString:@"totalClientCount" paddingToLenghtOfString:v7 paddingWith:@" " paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v13, v11, v10, v4, v6, v8];

  return v22;
}

+ (id)overviewPaddedBanner:(id)banner
{
  v21 = MEMORY[0x1E696AEC0];
  bannerCopy = banner;
  v25 = [bannerCopy safeStringForKey:@"clientDomainName"];
  v26 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v25 paddingWith:@"=" paddingBefore:0];
  v24 = [bannerCopy safeStringForKey:@"assetSetIdentifier"];
  v18 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [bannerCopy safeStringForKey:@"configuredAssetEntries"];
  v16 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v20 = [bannerCopy safeStringForKey:@"latestDownloadedAtomicInstance"];
  v15 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [bannerCopy safeStringForKey:@"downloadedAtomicInstances"];
  v11 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v17 = [bannerCopy safeStringForKey:@"discoveredAtomicInstance"];
  v12 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v17 paddingWith:@"=" paddingBefore:0];
  v14 = [bannerCopy safeStringForKey:@"activeClientCount"];
  v4 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v13 = [bannerCopy safeStringForKey:@"activeMonitorCount"];
  v5 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v13 paddingWith:@"=" paddingBefore:0];
  v6 = [bannerCopy safeStringForKey:@"maximumClientCount"];
  v7 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [bannerCopy safeStringForKey:@"totalClientCount"];

  v9 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v11, v12, v4, v5, v7, v9];

  return v22;
}

@end