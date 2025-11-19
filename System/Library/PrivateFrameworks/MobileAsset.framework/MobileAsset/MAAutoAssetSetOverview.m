@interface MAAutoAssetSetOverview
+ (id)overviewNewMaxColumnStrings;
+ (id)overviewPaddedBanner:(id)a3;
+ (id)overviewPaddedHeader:(id)a3;
+ (id)overviewPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (MAAutoAssetSetOverview)initWithCoder:(id)a3;
- (MAAutoAssetSetOverview)initWithDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withLatestDownloadedAtomicInstance:(id)a6 withDownloadedAtomicInstances:(id)a7 withDiscoveredAtomicInstance:(id)a8 withActiveClientCount:(int64_t)a9 withActiveMonitorCount:(int64_t)a10 withMaximumClientCount:(int64_t)a11 withTotalClientCount:(int64_t)a12;
- (id)_entry_string_to_use:(int64_t)a3;
- (id)description:(BOOL)a3;
- (id)overviewPadded:(id)a3;
- (id)summary;
- (void)encodeWithCoder:(id)a3;
- (void)overviewBuildMaxColumnStrings:(id)a3;
@end

@implementation MAAutoAssetSetOverview

- (MAAutoAssetSetOverview)initWithDomainName:(id)a3 forAssetSetIdentifier:(id)a4 withConfiguredAssetEntries:(id)a5 withLatestDownloadedAtomicInstance:(id)a6 withDownloadedAtomicInstances:(id)a7 withDiscoveredAtomicInstance:(id)a8 withActiveClientCount:(int64_t)a9 withActiveMonitorCount:(int64_t)a10 withMaximumClientCount:(int64_t)a11 withTotalClientCount:(int64_t)a12
{
  v19 = a3;
  v20 = a4;
  v27 = a5;
  v26 = a6;
  v25 = a7;
  v21 = a8;
  v28.receiver = self;
  v28.super_class = MAAutoAssetSetOverview;
  v22 = [(MAAutoAssetSetOverview *)&v28 init];
  v23 = v22;
  if (v22)
  {
    objc_storeStrong(&v22->_clientDomainName, a3);
    objc_storeStrong(&v23->_assetSetIdentifier, a4);
    objc_storeStrong(&v23->_configuredAssetEntries, a5);
    objc_storeStrong(&v23->_latestDownloadedAtomicInstance, a6);
    objc_storeStrong(&v23->_downloadedAtomicInstances, a7);
    objc_storeStrong(&v23->_discoveredAtomicInstance, a8);
    v23->_activeClientCount = a9;
    v23->_activeMonitorCount = a10;
    v23->_maximumClientCount = a11;
    v23->_totalClientCount = a12;
  }

  return v23;
}

- (MAAutoAssetSetOverview)initWithCoder:(id)a3
{
  v28[2] = *MEMORY[0x1E69E9840];
  v4 = a3;
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

    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientDomainName"];
    clientDomainName = v5->_clientDomainName;
    v5->_clientDomainName = v9;

    v11 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"assetSetIdentifier"];
    assetSetIdentifier = v5->_assetSetIdentifier;
    v5->_assetSetIdentifier = v11;

    v13 = objc_alloc(MEMORY[0x1E695DFD8]);
    v27[0] = objc_opt_class();
    v27[1] = objc_opt_class();
    v27[2] = objc_opt_class();
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];
    v15 = [v13 initWithArray:v14];
    v16 = [v4 decodeObjectOfClasses:v15 forKey:@"configuredAssetEntries"];
    configuredAssetEntries = v5->_configuredAssetEntries;
    v5->_configuredAssetEntries = v16;

    v18 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"latestDownloadedAtomicInstance"];
    latestDownloadedAtomicInstance = v5->_latestDownloadedAtomicInstance;
    v5->_latestDownloadedAtomicInstance = v18;

    v20 = [v4 decodeObjectOfClasses:v8 forKey:@"downloadedAtomicInstances"];
    downloadedAtomicInstances = v5->_downloadedAtomicInstances;
    v5->_downloadedAtomicInstances = v20;

    v22 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"discoveredAtomicInstance"];
    discoveredAtomicInstance = v5->_discoveredAtomicInstance;
    v5->_discoveredAtomicInstance = v22;

    v5->_activeClientCount = [v4 decodeIntegerForKey:@"activeClientCount"];
    v5->_activeMonitorCount = [v4 decodeIntegerForKey:@"activeMonitorCount"];
    v5->_maximumClientCount = [v4 decodeIntegerForKey:@"maximumClientCount"];
    v5->_totalClientCount = [v4 decodeIntegerForKey:@"totalClientCount"];
  }

  v24 = *MEMORY[0x1E69E9840];
  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v10 = a3;
  v4 = [(MAAutoAssetSetOverview *)self clientDomainName];
  [v10 encodeObject:v4 forKey:@"clientDomainName"];

  v5 = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  [v10 encodeObject:v5 forKey:@"assetSetIdentifier"];

  v6 = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  [v10 encodeObject:v6 forKey:@"configuredAssetEntries"];

  v7 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  [v10 encodeObject:v7 forKey:@"latestDownloadedAtomicInstance"];

  v8 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  [v10 encodeObject:v8 forKey:@"downloadedAtomicInstances"];

  v9 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  [v10 encodeObject:v9 forKey:@"discoveredAtomicInstance"];

  [v10 encodeInteger:-[MAAutoAssetSetOverview activeClientCount](self forKey:{"activeClientCount"), @"activeClientCount"}];
  [v10 encodeInteger:-[MAAutoAssetSetOverview activeMonitorCount](self forKey:{"activeMonitorCount"), @"activeMonitorCount"}];
  [v10 encodeInteger:-[MAAutoAssetSetOverview maximumClientCount](self forKey:{"maximumClientCount"), @"maximumClientCount"}];
  [v10 encodeInteger:-[MAAutoAssetSetOverview totalClientCount](self forKey:{"totalClientCount"), @"totalClientCount"}];
}

- (id)description:(BOOL)a3
{
  v3 = a3;
  v5 = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v6 = v5;
  if (v3)
  {
    v7 = [v5 description];

    v8 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    if (v9)
    {
      v10 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
      v11 = [v8 initWithFormat:@"%@", v10];

      goto LABEL_10;
    }

    v18 = [v8 initWithFormat:@"%@", @"NONE", v27];
  }

  else
  {
    v12 = [v5 count];

    v13 = objc_alloc(MEMORY[0x1E696AEC0]);
    v14 = [(MAAutoAssetSetOverview *)self _entry_string_to_use:v12];
    v7 = [v13 initWithFormat:@"%d %@", v12, v14];

    v15 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    if (v15)
    {
      v16 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
      v17 = [v16 count];
    }

    else
    {
      v17 = 0;
    }

    v19 = objc_alloc(MEMORY[0x1E696AEC0]);
    v9 = [(MAAutoAssetSetOverview *)self _entry_string_to_use:v17];
    v18 = [v19 initWithFormat:@"%d %@", v17, v9];
  }

  v11 = v18;
LABEL_10:

  v28 = MEMORY[0x1E696AEC0];
  v20 = [(MAAutoAssetSetOverview *)self clientDomainName];
  v29 = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  v21 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v21)
  {
    v22 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v22 = @"NONE";
  }

  v23 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  if (v23)
  {
    v24 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    v24 = @"NONE";
  }

  v25 = [v28 stringWithFormat:@">>>\n                clientDomainName: %@\n              assetSetIdentifier: %@\n          configuredAssetEntries: %@\n  latestDownloadedAtomicInstance: %@\n        discoveredAtomicInstance: %@\n       downloadedAtomicInstances: %@\n               activeClientCount: %ld\n              activeMonitorCount: %ld\n              maximumClientCount: %ld\n                totalClientCount: %ld\n<<<]", v20, v29, v7, v22, v24, v11, -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount"), -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount"), -[MAAutoAssetSetOverview maximumClientCount](self, "maximumClientCount"), -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  if (v23)
  {
  }

  if (v21)
  {
  }

  return v25;
}

- (id)_entry_string_to_use:(int64_t)a3
{
  if (a3 >= 2)
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
  v3 = [(MAAutoAssetSetOverview *)self clientDomainName];
  v4 = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  v17 = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v14 = [v17 count];
  v5 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v5)
  {
    v16 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v16 = @"NONE";
  }

  v6 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (v6)
  {
    v12 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    v13 = [v12 count];
  }

  else
  {
    v13 = 0;
  }

  v7 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v7)
  {
    v8 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    v8 = @"NONE";
  }

  v9 = v4;
  v10 = [v15 stringWithFormat:@"clientDomain:%@|assetIdentifier:%@|numConfiguredEntries:%ld|latestDownloadedEntry:%@|numDownloadedEntries:%ld|discoveredEntry:%@|clients:%lld|monitors:%lld|maxClients:%lld|totalClients:%lld", v3, v4, v14, v16, v13, v8, -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount"), -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount"), -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount"), -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  if (v7)
  {
  }

  if (v6)
  {
  }

  if (v5)
  {
  }

  return v10;
}

- (void)overviewBuildMaxColumnStrings:(id)a3
{
  v52 = a3;
  v4 = [(MAAutoAssetSetOverview *)self clientDomainName];
  v51 = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v50 = [v5 initWithFormat:@"%lld", objc_msgSend(v6, "count")];

  v7 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v7)
  {
    v8 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v8 = @"NONE";
  }

  v9 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (v9)
  {
    v10 = objc_alloc(MEMORY[0x1E696AEC0]);
    v11 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    v12 = [v10 initWithFormat:@"%lld", objc_msgSend(v11, "count")];
  }

  else
  {
    v12 = @"NONE";
  }

  v13 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v13)
  {
    v14 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    v14 = @"NONE";
  }

  v15 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount")];
  v16 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount")];
  v17 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview maximumClientCount](self, "maximumClientCount")];
  v18 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  v49 = v4;
  v19 = [v4 length];
  v20 = [v52 safeStringForKey:@"assetSetIdentifier"];
  v21 = [v20 length];

  if (v19 > v21)
  {
    [v52 setSafeObject:v49 forKey:@"assetSetIdentifier"];
  }

  v22 = [v51 length];
  v23 = [v52 safeStringForKey:@"assetSetIdentifier"];
  v24 = [v23 length];

  if (v22 > v24)
  {
    [v52 setSafeObject:v51 forKey:@"assetSetIdentifier"];
  }

  v25 = [v50 length];
  v26 = [v52 safeStringForKey:@"configuredAssetEntries"];
  v27 = [v26 length];

  if (v25 > v27)
  {
    [v52 setSafeObject:v50 forKey:@"configuredAssetEntries"];
  }

  v28 = [(__CFString *)v8 length];
  v29 = [v52 safeStringForKey:@"latestDownloadedAtomicInstance"];
  v30 = [v29 length];

  if (v28 > v30)
  {
    [v52 setSafeObject:v8 forKey:@"latestDownloadedAtomicInstance"];
  }

  v31 = [(__CFString *)v12 length];
  v32 = [v52 safeStringForKey:@"downloadedAtomicInstances"];
  v33 = [v32 length];

  if (v31 > v33)
  {
    [v52 setSafeObject:v12 forKey:@"downloadedAtomicInstances"];
  }

  v34 = [(__CFString *)v14 length];
  v35 = [v52 safeStringForKey:@"discoveredAtomicInstance"];
  v36 = [v35 length];

  if (v34 > v36)
  {
    [v52 setSafeObject:v14 forKey:@"discoveredAtomicInstance"];
  }

  v37 = [v15 length];
  v38 = [v52 safeStringForKey:@"activeClientCount"];
  v39 = [v38 length];

  if (v37 > v39)
  {
    [v52 setSafeObject:v15 forKey:@"activeClientCount"];
  }

  v40 = [v16 length];
  v41 = [v52 safeStringForKey:@"activeMonitorCount"];
  v42 = [v41 length];

  if (v40 > v42)
  {
    [v52 setSafeObject:v16 forKey:@"activeMonitorCount"];
  }

  v43 = [v17 length];
  v44 = [v52 safeStringForKey:@"maximumClientCount"];
  v45 = [v44 length];

  if (v43 > v45)
  {
    [v52 setSafeObject:v17 forKey:@"maximumClientCount"];
  }

  v46 = [v18 length];
  v47 = [v52 safeStringForKey:@"totalClientCount"];
  v48 = [v47 length];

  if (v46 > v48)
  {
    [v52 setSafeObject:v18 forKey:@"totalClientCount"];
  }
}

- (id)overviewPadded:(id)a3
{
  v4 = a3;
  v44 = [(MAAutoAssetSetOverview *)self clientDomainName];
  v45 = [(MAAutoAssetSetOverview *)self assetSetIdentifier];
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  v6 = [(MAAutoAssetSetOverview *)self configuredAssetEntries];
  v43 = [v5 initWithFormat:@"%lld", objc_msgSend(v6, "count")];

  v7 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v7)
  {
    v39 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  }

  else
  {
    v39 = @"NONE";
  }

  v8 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
  if (v8)
  {
    v9 = objc_alloc(MEMORY[0x1E696AEC0]);
    v10 = [(MAAutoAssetSetOverview *)self downloadedAtomicInstances];
    v42 = [v9 initWithFormat:@"%lld", objc_msgSend(v10, "count")];
  }

  else
  {
    v42 = @"NONE";
  }

  v11 = [(MAAutoAssetSetOverview *)self latestDownloadedAtomicInstance];
  if (v11)
  {
    v12 = [(MAAutoAssetSetOverview *)self discoveredAtomicInstance];
  }

  else
  {
    v12 = @"NONE";
  }

  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeClientCount](self, "activeClientCount")];
  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview activeMonitorCount](self, "activeMonitorCount")];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview maximumClientCount](self, "maximumClientCount")];
  v38 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetOverview totalClientCount](self, "totalClientCount")];
  v32 = MEMORY[0x1E696AEC0];
  v37 = [v4 safeStringForKey:@"clientDomainName"];
  v29 = [MAAutoAssetSetOverview overviewPaddedString:v44 paddingToLenghtOfString:v37 paddingWith:@" " paddingBefore:0];
  v36 = [v4 safeStringForKey:@"assetSetIdentifier"];
  v27 = [MAAutoAssetSetOverview overviewPaddedString:v45 paddingToLenghtOfString:v36 paddingWith:@" " paddingBefore:0];
  v35 = [v4 safeStringForKey:@"configuredAssetEntries"];
  v21 = [MAAutoAssetSetOverview overviewPaddedString:v43 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v31 = [v4 safeStringForKey:@"latestDownloadedAtomicInstance"];
  v25 = [MAAutoAssetSetOverview overviewPaddedString:v39 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v28 = [v4 safeStringForKey:@"downloadedAtomicInstances"];
  v23 = [MAAutoAssetSetOverview overviewPaddedString:v42 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:0];
  v26 = [v4 safeStringForKey:@"discoveredAtomicInstance"];
  v34 = v12;
  v20 = [MAAutoAssetSetOverview overviewPaddedString:v12 paddingToLenghtOfString:v26 paddingWith:@" " paddingBefore:0];
  v24 = [v4 safeStringForKey:@"activeClientCount"];
  v13 = [MAAutoAssetSetOverview overviewPaddedString:v30 paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:1];
  v22 = [v4 safeStringForKey:@"activeMonitorCount"];
  v14 = [MAAutoAssetSetOverview overviewPaddedString:v41 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v15 = [v4 safeStringForKey:@"maximumClientCount"];
  v16 = [MAAutoAssetSetOverview overviewPaddedString:v40 paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:1];
  v17 = [v4 safeStringForKey:@"totalClientCount"];

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

+ (id)overviewPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6
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

+ (id)overviewPaddedHeader:(id)a3
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v25 = [v3 safeStringForKey:@"clientDomainName"];
  v26 = [MAAutoAssetSetOverview overviewPaddedString:@"clientDomainName" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [v3 safeStringForKey:@"assetSetIdentifier"];
  v18 = [MAAutoAssetSetOverview overviewPaddedString:@"assetSetIdentifier" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [v3 safeStringForKey:@"configuredAssetEntries"];
  v16 = [MAAutoAssetSetOverview overviewPaddedString:@"configuredAssetEntries" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v20 = [v3 safeStringForKey:@"latestDownloadedAtomicInstance"];
  v15 = [MAAutoAssetSetOverview overviewPaddedString:@"latestDownloadedAtomicInstance" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v19 = [v3 safeStringForKey:@"downloadedAtomicInstances"];
  v13 = [MAAutoAssetSetOverview overviewPaddedString:@"downloadedAtomicInstances" paddingToLenghtOfString:v19 paddingWith:@" " paddingBefore:0];
  v17 = [v3 safeStringForKey:@"discoveredAtomicInstance"];
  v11 = [MAAutoAssetSetOverview overviewPaddedString:@"discoveredAtomicInstance" paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:0];
  v14 = [v3 safeStringForKey:@"activeClientCount"];
  v10 = [MAAutoAssetSetOverview overviewPaddedString:@"activeClientCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"activeMonitorCount"];
  v4 = [MAAutoAssetSetOverview overviewPaddedString:@"activeMonitorCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v5 = [v3 safeStringForKey:@"maximumClientCount"];
  v6 = [MAAutoAssetSetOverview overviewPaddedString:@"maximumClientCount" paddingToLenghtOfString:v5 paddingWith:@" " paddingBefore:0];
  v7 = [v3 safeStringForKey:@"totalClientCount"];

  v8 = [MAAutoAssetSetOverview overviewPaddedString:@"totalClientCount" paddingToLenghtOfString:v7 paddingWith:@" " paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v13, v11, v10, v4, v6, v8];

  return v22;
}

+ (id)overviewPaddedBanner:(id)a3
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v25 = [v3 safeStringForKey:@"clientDomainName"];
  v26 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v25 paddingWith:@"=" paddingBefore:0];
  v24 = [v3 safeStringForKey:@"assetSetIdentifier"];
  v18 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [v3 safeStringForKey:@"configuredAssetEntries"];
  v16 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v20 = [v3 safeStringForKey:@"latestDownloadedAtomicInstance"];
  v15 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [v3 safeStringForKey:@"downloadedAtomicInstances"];
  v11 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v17 = [v3 safeStringForKey:@"discoveredAtomicInstance"];
  v12 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v17 paddingWith:@"=" paddingBefore:0];
  v14 = [v3 safeStringForKey:@"activeClientCount"];
  v4 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v13 = [v3 safeStringForKey:@"activeMonitorCount"];
  v5 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v13 paddingWith:@"=" paddingBefore:0];
  v6 = [v3 safeStringForKey:@"maximumClientCount"];
  v7 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [v3 safeStringForKey:@"totalClientCount"];

  v9 = [MAAutoAssetSetOverview overviewPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v11, v12, v4, v5, v7, v9];

  return v22;
}

@end