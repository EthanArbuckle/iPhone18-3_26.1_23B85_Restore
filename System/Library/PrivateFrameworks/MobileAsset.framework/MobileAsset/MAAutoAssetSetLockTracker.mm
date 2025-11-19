@interface MAAutoAssetSetLockTracker
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)a3;
+ (id)summaryPaddedHeader:(id)a3;
+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (MAAutoAssetSetLockTracker)initWithCoder:(id)a3;
- (id)copy;
- (id)description;
- (id)initForClientLockReason:(id)a3 lockingWithUsagePolicy:(id)a4;
- (id)summary;
- (id)summaryPadded:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)summaryBuildMaxColumnStrings:(id)a3;
@end

@implementation MAAutoAssetSetLockTracker

- (id)initForClientLockReason:(id)a3 lockingWithUsagePolicy:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = MAAutoAssetSetLockTracker;
  v9 = [(MAAutoAssetSetLockTracker *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_clientLockReason, a3);
    objc_storeStrong(&v10->_lockUsagePolicy, a4);
    *&v10->_activeLockCount = vdupq_n_s64(1uLL);
    *&v10->_totalLockCount = xmmword_197B62330;
    v11 = [MEMORY[0x1E695DF00] date];
    firstLockTimestamp = v10->_firstLockTimestamp;
    v10->_firstLockTimestamp = v11;

    objc_storeStrong(&v10->_lastRefreshTimestamp, v10->_firstLockTimestamp);
  }

  return v10;
}

- (MAAutoAssetSetLockTracker)initWithCoder:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = MAAutoAssetSetLockTracker;
  v5 = [(MAAutoAssetSetLockTracker *)&v15 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientLockReason"];
    clientLockReason = v5->_clientLockReason;
    v5->_clientLockReason = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockUsagePolicy"];
    lockUsagePolicy = v5->_lockUsagePolicy;
    v5->_lockUsagePolicy = v8;

    v5->_activeLockCount = [v4 decodeIntegerForKey:@"activeLockCount"];
    v5->_maximumLockCount = [v4 decodeIntegerForKey:@"maximumLockCount"];
    v5->_totalLockCount = [v4 decodeIntegerForKey:@"totalLockCount"];
    v5->_continueCount = [v4 decodeIntegerForKey:@"continueLockCount"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstLockTimestamp"];
    firstLockTimestamp = v5->_firstLockTimestamp;
    v5->_firstLockTimestamp = v10;

    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastRefreshTimestamp"];
    lastRefreshTimestamp = v5->_lastRefreshTimestamp;
    v5->_lastRefreshTimestamp = v12;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  [v4 encodeObject:v5 forKey:@"clientLockReason"];

  v6 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  [v4 encodeObject:v6 forKey:@"lockUsagePolicy"];

  [v4 encodeInteger:-[MAAutoAssetSetLockTracker activeLockCount](self forKey:{"activeLockCount"), @"activeLockCount"}];
  [v4 encodeInteger:-[MAAutoAssetSetLockTracker maximumLockCount](self forKey:{"maximumLockCount"), @"maximumLockCount"}];
  [v4 encodeInteger:-[MAAutoAssetSetLockTracker totalLockCount](self forKey:{"totalLockCount"), @"totalLockCount"}];
  [v4 encodeInteger:-[MAAutoAssetSetLockTracker continueCount](self forKey:{"continueCount"), @"continueLockCount"}];
  v7 = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  [v4 encodeObject:v7 forKey:@"firstLockTimestamp"];

  v8 = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  [v4 encodeObject:v8 forKey:@"lastRefreshTimestamp"];
}

- (id)copy
{
  v3 = [MAAutoAssetSetLockTracker alloc];
  v4 = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  v5 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  v6 = [(MAAutoAssetSetLockTracker *)v3 initForClientLockReason:v4 lockingWithUsagePolicy:v5];

  [v6 setActiveLockCount:{-[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")}];
  [v6 setMaximumLockCount:{-[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v6 setTotalLockCount:{-[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")}];
  [v6 setContinueCount:{-[MAAutoAssetSetLockTracker continueCount](self, "continueCount")}];
  v7 = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v8 = [v7 copy];
  [v6 setFirstLockTimestamp:v8];

  v9 = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v10 = [v9 copy];
  [v6 setLastRefreshTimestamp:v10];

  return v6;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v16 = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  v4 = [v16 summary];
  v5 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v5)
  {
    v15 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    v6 = [v15 summary];
  }

  else
  {
    v6 = @"NONE";
  }

  v7 = [(MAAutoAssetSetLockTracker *)self activeLockCount];
  v8 = [(MAAutoAssetSetLockTracker *)self maximumLockCount];
  v9 = [(MAAutoAssetSetLockTracker *)self totalLockCount];
  v10 = [(MAAutoAssetSetLockTracker *)self continueCount];
  v11 = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v12 = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v13 = [v3 stringWithFormat:@">>>\n        clientLockReason: %@\n         lockUsagePolicy: %@\n         activeLockCount: %lld\n        maximumLockCount: %lld\n          totalLockCount: %lld\n           continueCount: %lld\n      firstLockTimestamp: %@\n    lastRefreshTimestamp: %@\n<<<]", v4, v6, v7, v8, v9, v10, v11, v12];

  if (v5)
  {
  }

  return v13;
}

- (id)summary
{
  v3 = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  v19 = [v3 summary];

  v4 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v4)
  {
    v5 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    v6 = [v5 summary];
  }

  else
  {
    v6 = @"NONE";
  }

  v7 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v13 = [v11 initWithFormat:@"%@", v12];

  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v16 = [v14 initWithFormat:@"%@", v15];

  v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientReason:%@|policy:%@|locks active:%@, max:%@, total:%@|continues:%@|first:%@|last:%@", v19, v6, v7, v8, v9, v10, v13, v16];

  return v17;
}

- (void)summaryBuildMaxColumnStrings:(id)a3
{
  v43 = a3;
  v4 = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  v42 = [v4 summary];

  v5 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v5)
  {
    v6 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    v7 = [v6 summary];
  }

  else
  {
    v7 = @"NONE";
  }

  v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v12 = objc_alloc(MEMORY[0x1E696AEC0]);
  v13 = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v14 = [v12 initWithFormat:@"%@", v13];

  v15 = objc_alloc(MEMORY[0x1E696AEC0]);
  v16 = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v17 = [v15 initWithFormat:@"%@", v16];

  v18 = [v42 length];
  v19 = [v43 safeStringForKey:@"clientLockReason"];
  v20 = [v19 length];

  if (v18 > v20)
  {
    [v43 setSafeObject:v42 forKey:@"clientLockReason"];
  }

  v21 = [(__CFString *)v7 length];
  v22 = [v43 safeStringForKey:@"lockUsagePolicy"];
  v23 = [v22 length];

  if (v21 > v23)
  {
    [v43 setSafeObject:v7 forKey:@"lockUsagePolicy"];
  }

  v24 = [v8 length];
  v25 = [v43 safeStringForKey:@"activeLockCount"];
  v26 = [v25 length];

  if (v24 > v26)
  {
    [v43 setSafeObject:v8 forKey:@"activeLockCount"];
  }

  v27 = [v9 length];
  v28 = [v43 safeStringForKey:@"maximumLockCount"];
  v29 = [v28 length];

  if (v27 > v29)
  {
    [v43 setSafeObject:v9 forKey:@"maximumLockCount"];
  }

  v30 = [v10 length];
  v31 = [v43 safeStringForKey:@"totalLockCount"];
  v32 = [v31 length];

  if (v30 > v32)
  {
    [v43 setSafeObject:v10 forKey:@"totalLockCount"];
  }

  v33 = [v11 length];
  v34 = [v43 safeStringForKey:@"continueLockCount"];
  v35 = [v34 length];

  if (v33 > v35)
  {
    [v43 setSafeObject:v11 forKey:@"continueLockCount"];
  }

  v36 = [v14 length];
  v37 = [v43 safeStringForKey:@"firstLockTimestamp"];
  v38 = [v37 length];

  if (v36 > v38)
  {
    [v43 setSafeObject:v14 forKey:@"firstLockTimestamp"];
  }

  v39 = [v17 length];
  v40 = [v43 safeStringForKey:@"lastRefreshTimestamp"];
  v41 = [v40 length];

  if (v39 > v41)
  {
    [v43 setSafeObject:v17 forKey:@"lastRefreshTimestamp"];
  }
}

- (id)summaryPadded:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetSetLockTracker *)self clientLockReason];
  v38 = [v5 summary];

  v6 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
  if (v6)
  {
    v7 = [(MAAutoAssetSetLockTracker *)self lockUsagePolicy];
    v37 = [v7 summary];
  }

  else
  {
    v37 = @"NONE";
  }

  v36 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker activeLockCount](self, "activeLockCount")];
  v30 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker maximumLockCount](self, "maximumLockCount")];
  v28 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker totalLockCount](self, "totalLockCount")];
  v35 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetSetLockTracker continueCount](self, "continueCount")];
  v8 = objc_alloc(MEMORY[0x1E696AEC0]);
  v9 = [(MAAutoAssetSetLockTracker *)self firstLockTimestamp];
  v34 = [v8 initWithFormat:@"%@", v9];

  v10 = objc_alloc(MEMORY[0x1E696AEC0]);
  v11 = [(MAAutoAssetSetLockTracker *)self lastRefreshTimestamp];
  v33 = [v10 initWithFormat:@"%@", v11];

  v26 = MEMORY[0x1E696AEC0];
  v32 = [v4 safeStringForKey:@"clientLockReason"];
  v25 = [MAAutoAssetSetLockTracker summaryPaddedString:v38 paddingToLenghtOfString:v32 paddingWith:@" " paddingBefore:0];
  v31 = [v4 safeStringForKey:@"lockUsagePolicy"];
  v23 = [MAAutoAssetSetLockTracker summaryPaddedString:v37 paddingToLenghtOfString:v31 paddingWith:@" " paddingBefore:0];
  v29 = [v4 safeStringForKey:@"activeLockCount"];
  v21 = [MAAutoAssetSetLockTracker summaryPaddedString:v36 paddingToLenghtOfString:v29 paddingWith:@" " paddingBefore:1];
  v24 = [v4 safeStringForKey:@"maximumLockCount"];
  v12 = [MAAutoAssetSetLockTracker summaryPaddedString:v30 paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:1];
  v22 = [v4 safeStringForKey:@"totalLockCount"];
  v13 = [MAAutoAssetSetLockTracker summaryPaddedString:v28 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v20 = [v4 safeStringForKey:@"continueLockCount"];
  v14 = [MAAutoAssetSetLockTracker summaryPaddedString:v35 paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:1];
  v15 = [v4 safeStringForKey:@"firstLockTimestamp"];
  v16 = [MAAutoAssetSetLockTracker summaryPaddedString:v34 paddingToLenghtOfString:v15 paddingWith:@" " paddingBefore:1];
  v17 = [v4 safeStringForKey:@"lastRefreshTimestamp"];

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

+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6
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

+ (id)summaryPaddedHeader:(id)a3
{
  v19 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v22 = [v3 safeStringForKey:@"clientLockReason"];
  v17 = [MAAutoAssetSetLockTracker summaryPaddedString:@"clientLockReason" paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:0];
  v21 = [v3 safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetSetLockTracker summaryPaddedString:@"lockUsagePolicy" paddingToLenghtOfString:v21 paddingWith:@" " paddingBefore:0];
  v18 = [v3 safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetSetLockTracker summaryPaddedString:@"activeLockCount" paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:0];
  v16 = [v3 safeStringForKey:@"maximumLockCount"];
  v11 = [MAAutoAssetSetLockTracker summaryPaddedString:@"maximumLockCount" paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:0];
  v14 = [v3 safeStringForKey:@"totalLockCount"];
  v4 = [MAAutoAssetSetLockTracker summaryPaddedString:@"totalLockCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"continueLockCount"];
  v5 = [MAAutoAssetSetLockTracker summaryPaddedString:@"continueLockCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v6 = [v3 safeStringForKey:@"firstLockTimestamp"];
  v7 = [MAAutoAssetSetLockTracker summaryPaddedString:@"firstLockTimestamp" paddingToLenghtOfString:v6 paddingWith:@" " paddingBefore:0];
  v8 = [v3 safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MAAutoAssetSetLockTracker summaryPaddedString:@"lastRefreshTimestamp" paddingToLenghtOfString:v8 paddingWith:@" " paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v20;
}

+ (id)summaryPaddedBanner:(id)a3
{
  v19 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v22 = [v3 safeStringForKey:@"clientLockReason"];
  v17 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v22 paddingWith:@"=" paddingBefore:0];
  v21 = [v3 safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v21 paddingWith:@"=" paddingBefore:0];
  v18 = [v3 safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v18 paddingWith:@"=" paddingBefore:0];
  v16 = [v3 safeStringForKey:@"maximumLockCount"];
  v11 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v16 paddingWith:@"=" paddingBefore:0];
  v14 = [v3 safeStringForKey:@"totalLockCount"];
  v4 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v12 = [v3 safeStringForKey:@"continueLockCount"];
  v5 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v12 paddingWith:@"=" paddingBefore:0];
  v6 = [v3 safeStringForKey:@"firstLockTimestamp"];
  v7 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [v3 safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MAAutoAssetSetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v20 = [v19 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@", v17, v15, v13, v11, v4, v5, v7, v9];

  return v20;
}

@end