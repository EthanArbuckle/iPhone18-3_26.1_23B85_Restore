@interface MAAutoAssetSetLockTracker
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)banner;
+ (id)summaryPaddedHeader:(id)header;
+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (MAAutoAssetSetLockTracker)initWithCoder:(id)coder;
- (id)copy;
- (id)description;
- (id)initForClientLockReason:(id)reason lockingWithUsagePolicy:(id)policy;
- (id)summary;
- (id)summaryPadded:(id)padded;
- (void)encodeWithCoder:(id)coder;
- (void)summaryBuildMaxColumnStrings:(id)strings;
@end

@implementation MAAutoAssetSetLockTracker

- (id)initForClientLockReason:(id)reason lockingWithUsagePolicy:(id)policy
{
  reasonCopy = reason;
  policyCopy = policy;
  v14.receiver = self;
  v14.super_class = MAAutoAssetSetLockTracker;
  v9 = [(MAAutoAssetSetLockTracker *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientLockReason, reason);
    objc_storeStrong(&v10->_lockUsagePolicy, policy);
    *&v10->_activeLockCount = vdupq_n_s64(1uLL);
    *&v10->_totalLockCount = xmmword_197B62330;
    date = [MEMORY[0x1E695DF00] date];
    firstLockTimestamp = v10->_firstLockTimestamp;
    v10->_firstLockTimestamp = date;

    objc_storeStrong(&v10->_lastRefreshTimestamp, v10->_firstLockTimestamp);
  }

  return v10;
}

- (MAAutoAssetSetLockTracker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSetLockTracker;
  v5 = [(MAAutoAssetSetLockTracker *)&v15 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientLockReason"];
    clientLockReason = v5->_clientLockReason;
    v5->_clientLockReason = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockUsagePolicy"];
    lockUsagePolicy = v5->_lockUsagePolicy;
    v5->_lockUsagePolicy = v8;

    v5->_activeLockCount = [coderCopy decodeIntegerForKey:@"activeLockCount"];
    v5->_maximumLockCount = [coderCopy decodeIntegerForKey:@"maximumLockCount"];
    v5->_totalLockCount = [coderCopy decodeIntegerForKey:@"totalLockCount"];
    v5->_continueCount = [coderCopy decodeIntegerForKey:@"continueLockCount"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstLockTimestamp"];
    firstLockTimestamp = v5->_firstLockTimestamp;
    v5->_firstLockTimestamp = v10;

    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastRefreshTimestamp"];
    lastRefreshTimestamp = v5->_lastRefreshTimestamp;
    v5->_lastRefreshTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientLockReason = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  [coderCopy encodeObject:clientLockReason forKey:@"clientLockReason"];

  lockUsagePolicy = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  [coderCopy encodeObject:lockUsagePolicy forKey:@"lockUsagePolicy"];

  [coderCopy encodeInteger:-[MAAutoAssetSetLockTracker activeLockCount](self forKey:{"activeLockCount"), @"activeLockCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetLockTracker maximumLockCount](self forKey:{"maximumLockCount"), @"maximumLockCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetLockTracker totalLockCount](self forKey:{"totalLockCount"), @"totalLockCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetSetLockTracker continueCount](self forKey:{"continueCount"), @"continueLockCount"}];
  firstLockTimestamp = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  [coderCopy encodeObject:firstLockTimestamp forKey:@"firstLockTimestamp"];

  lastRefreshTimestamp = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  [coderCopy encodeObject:lastRefreshTimestamp forKey:@"lastRefreshTimestamp"];
}

- (id)copy
{
  v3 = [MAAutoAssetSetLockTracker alloc];
  clientLockReason = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  lockUsagePolicy = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  v6 = [(MAAutoAssetSetLockTracker *)v3 initForClientLockReason:clientLockReason lockingWithUsagePolicy:lockUsagePolicy];

  [v6 setActiveLockCount:{-[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")}];
  [v6 setMaximumLockCount:{-[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v6 setTotalLockCount:{-[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")}];
  [v6 setContinueCount:{-[MAAutoAssetSetLockTracker continueCount](self, "continueCount")}];
  firstLockTimestamp = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v8 = [firstLockTimestamp copy];
  [v6 setFirstLockTimestamp:v8];

  lastRefreshTimestamp = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v10 = [lastRefreshTimestamp copy];
  [v6 setLastRefreshTimestamp:v10];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  clientLockReason = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];
  lockUsagePolicy = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  activeLockCount = [(MAAutoAssetSetLockTracker *)self activeLockCount];
  maximumLockCount = [(MAAutoAssetSetLockTracker *)self maximumLockCount];
  totalLockCount = [(MAAutoAssetSetLockTracker *)self totalLockCount];
  continueCount = [(MAAutoAssetSetLockTracker *)self continueCount];
  firstLockTimestamp = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  lastRefreshTimestamp = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v13 = [v3 stringWithFormat:@">>>\n        clientLockReason: %@\n         lockUsagePolicy: %@\n         activeLockCount: %lld\n        maximumLockCount: %lld\n          totalLockCount: %lld\n           continueCount: %lld\n      firstLockTimestamp: %@\n    lastRefreshTimestamp: %@\n<<<]", summary, summary2, activeLockCount, maximumLockCount, totalLockCount, continueCount, firstLockTimestamp, lastRefreshTimestamp];

  if (lockUsagePolicy)
  {
  }

  return v13;
}

- (id)summary
{
  clientLockReason = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  lockUsagePolicy = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstLockTimestamp = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v13 = [v11 initWithFormat:@"%@", firstLockTimestamp];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  lastRefreshTimestamp = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v16 = [v14 initWithFormat:@"%@", lastRefreshTimestamp];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientReason:%@|policy:%@|locks active:%@, max:%@, total:%@|continues:%@|first:%@|last:%@", summary, summary2, v7, v8, v9, v10, v13, v16];

  return v17;
}

- (void)summaryBuildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  clientLockReason = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  lockUsagePolicy = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstLockTimestamp = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v14 = [v12 initWithFormat:@"%@", firstLockTimestamp];

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  lastRefreshTimestamp = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v17 = [v15 initWithFormat:@"%@", lastRefreshTimestamp];

  v18 = [summary length];
  v19 = [stringsCopy safeStringForKey:@"clientLockReason"];
  v20 = [v19 length];

  if (v18 > v20)
  {
    [stringsCopy setSafeObject:summary forKey:@"clientLockReason"];
  }

  v21 = [(__CFString *)summary2 length];
  v22 = [stringsCopy safeStringForKey:@"lockUsagePolicy"];
  v23 = [v22 length];

  if (v21 > v23)
  {
    [stringsCopy setSafeObject:summary2 forKey:@"lockUsagePolicy"];
  }

  v24 = [v8 length];
  v25 = [stringsCopy safeStringForKey:@"activeLockCount"];
  v26 = [v25 length];

  if (v24 > v26)
  {
    [stringsCopy setSafeObject:v8 forKey:@"activeLockCount"];
  }

  v27 = [v9 length];
  v28 = [stringsCopy safeStringForKey:@"maximumLockCount"];
  v29 = [v28 length];

  if (v27 > v29)
  {
    [stringsCopy setSafeObject:v9 forKey:@"maximumLockCount"];
  }

  v30 = [v10 length];
  v31 = [stringsCopy safeStringForKey:@"totalLockCount"];
  v32 = [v31 length];

  if (v30 > v32)
  {
    [stringsCopy setSafeObject:v10 forKey:@"totalLockCount"];
  }

  v33 = [v11 length];
  v34 = [stringsCopy safeStringForKey:@"continueLockCount"];
  v35 = [v34 length];

  if (v33 > v35)
  {
    [stringsCopy setSafeObject:v11 forKey:@"continueLockCount"];
  }

  v36 = [v14 length];
  v37 = [stringsCopy safeStringForKey:@"firstLockTimestamp"];
  v38 = [v37 length];

  if (v36 > v38)
  {
    [stringsCopy setSafeObject:v14 forKey:@"firstLockTimestamp"];
  }

  v39 = [v17 length];
  v40 = [stringsCopy safeStringForKey:@"lastRefreshTimestamp"];
  v41 = [v40 length];

  if (v39 > v41)
  {
    [stringsCopy setSafeObject:v17 forKey:@"lastRefreshTimestamp"];
  }
}

- (id)summaryPadded:(id)padded
{
  paddedCopy = padded;
  clientLockReason = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  lockUsagePolicy = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstLockTimestamp = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v34 = [v8 initWithFormat:@"%@", firstLockTimestamp];

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  lastRefreshTimestamp = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v33 = [v10 initWithFormat:@"%@", lastRefreshTimestamp];

  v26 = MEMORY[0x1E696AEC0];
  v32 = [paddedCopy safeStringForKey:@"clientLockReason"];
  v25 = [MAAutoAssetSetLockTracker summaryPaddedString:summary paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v31 = [paddedCopy safeStringForKey:@"lockUsagePolicy"];
  v23 = [MAAutoAssetSetLockTracker summaryPaddedString:summary2 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v29 = [paddedCopy safeStringForKey:@"activeLockCount"];
  v21 = [MAAutoAssetSetLockTracker summaryPaddedString:v36 paddingToLenghtOfString:v29 paddingWith:@" " paddingBefore:1];
  v24 = [paddedCopy safeStringForKey:@"maximumLockCount"];
  v12 = [MAAutoAssetSetLockTracker summaryPaddedString:v30 paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:1];
  v22 = [paddedCopy safeStringForKey:@"totalLockCount"];
  v13 = [MAAutoAssetSetLockTracker summaryPaddedString:v28 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v20 = [paddedCopy safeStringForKey:@"continueLockCount"];
  v14 = [MAAutoAssetSetLockTracker summaryPaddedString:v35 paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:1];
  v15 = [paddedCopy safeStringForKey:@"firstLockTimestamp"];
  v16 = [MAAutoAssetSetLockTracker summaryPaddedString:v34 paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:1];
  v17 = [paddedCopy safeStringForKey:@"lastRefreshTimestamp"];

  v18 = [MAAutoAssetSetLockTracker summaryPaddedString:v33 paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:1];
  v27 = [v26 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v25, v23, v21, v12, v13, v14, v16, v18];

  return v27;
}

+ (id)summaryNewMaxColumnStrings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setSafeObject:@"clientLockReason" forKey:@"clientLockReason"];
  [v2 setSafeObject:@"lockUsagePolicy" forKey:@"lockUsagePolicy"];
  [v2 setSafeObject:@"activeLockCount" forKey:@"activeLockCount"];
  [v2 setSafeObject:@"maximumLockCount" forKey:@"maximumLockCount"];
  [v2 setSafeObject:@"totalLockCount" forKey:@"totalLockCount"];
  [v2 setSafeObject:@"continueLockCount" forKey:@"continueLockCount"];
  [v2 setSafeObject:@"firstLockTimestamp" forKey:@"firstLockTimestamp"];
  [v2 setSafeObject:@"lastRefreshTimestamp" forKey:@"lastRefreshTimestamp"];

  return v2;
}

+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before
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

+ (id)summaryPaddedHeader:(id)header
{
  v19 = MEMORY[0x1E696AEC0];
  headerCopy = header;
  v22 = [headerCopy safeStringForKey:@"clientLockReason"];
  v17 = [MAAutoAssetSetLockTracker summaryPaddedString:@"clientLockReason" paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:0];
  v21 = [headerCopy safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetSetLockTracker summaryPaddedString:@"lockUsagePolicy" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v18 = [headerCopy safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetSetLockTracker summaryPaddedString:@"activeLockCount" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [headerCopy safeStringForKey:@"maximumLockCount"];
  v11 = [MAAutoAssetSetLockTracker summaryPaddedString:@"maximumLockCount" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [headerCopy safeStringForKey:@"totalLockCount"];
  v4 = [MAAutoAssetSetLockTracker summaryPaddedString:@"totalLockCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"continueLockCount"];
  v5 = [MAAutoAssetSetLockTracker summaryPaddedString:@"continueLockCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [headerCopy safeStringForKey:@"firstLockTimestamp"];
  v7 = [MAAutoAssetSetLockTracker summaryPaddedString:@"firstLockTimestamp" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [headerCopy safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MAAutoAssetSetLockTracker summaryPaddedString:@"lastRefreshTimestamp" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v20;
}

+ (id)summaryPaddedBanner:(id)banner
{
  v19 = MEMORY[0x1E696AEC0];
  bannerCopy = banner;
  v22 = [bannerCopy safeStringForKey:@"clientLockReason"];
  v17 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v22 paddingWith:@"=" paddingBefore:0];
  v21 = [bannerCopy safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v18 = [bannerCopy safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [bannerCopy safeStringForKey:@"maximumLockCount"];
  v11 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v14 = [bannerCopy safeStringForKey:@"totalLockCount"];
  v4 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v12 = [bannerCopy safeStringForKey:@"continueLockCount"];
  v5 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v6 = [bannerCopy safeStringForKey:@"firstLockTimestamp"];
  v7 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [bannerCopy safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v20;
}

@end