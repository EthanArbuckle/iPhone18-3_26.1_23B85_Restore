@interface MAAutoAssetLockTracker
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)a3;
+ (id)summaryPaddedHeader:(id)a3;
+ (id)summaryPaddedString:(id)a3 paddingToLenghtOfString:(id)a4 paddingWith:(id)a5 paddingBefore:(BOOL)a6;
- (MAAutoAssetLockTracker)initWithCoder:(id)a3;
- (id)_initForClientLockReason:(id)a3 forClientProcessName:(id)a4 withClientProcessID:(int64_t)a5 lockingWithUsagePolicy:(id)a6;
- (id)copy;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (id)summaryPadded:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)summaryBuildMaxColumnStrings:(id)a3;
@end

@implementation MAAutoAssetLockTracker

- (id)_initForClientLockReason:(id)a3 forClientProcessName:(id)a4 withClientProcessID:(int64_t)a5 lockingWithUsagePolicy:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = MAAutoAssetLockTracker;
  v14 = [(MAAutoAssetLockTracker *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_clientLockReason, a3);
    objc_storeStrong(&v15->_clientProcessName, a4);
    v15->_clientProcessID = a5;
    objc_storeStrong(&v15->_lockUsagePolicy, a6);
    *&v15->_activeLockCount = vdupq_n_s64(1uLL);
    *&v15->_totalLockCount = xmmword_197B62330;
    v16 = [MEMORY[0x1E695DF00] date];
    firstLockTimestamp = v15->_firstLockTimestamp;
    v15->_firstLockTimestamp = v16;

    objc_storeStrong(&v15->_lastRefreshTimestamp, v15->_firstLockTimestamp);
  }

  return v15;
}

- (MAAutoAssetLockTracker)initWithCoder:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = MAAutoAssetLockTracker;
  v5 = [(MAAutoAssetLockTracker *)&v17 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientLockReason"];
    clientLockReason = v5->_clientLockReason;
    v5->_clientLockReason = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v8;

    v5->_clientProcessID = [v4 decodeIntegerForKey:@"clientProcessID"];
    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lockUsagePolicy"];
    lockUsagePolicy = v5->_lockUsagePolicy;
    v5->_lockUsagePolicy = v10;

    v5->_activeLockCount = [v4 decodeIntegerForKey:@"activeLockCount"];
    v5->_maximumLockCount = [v4 decodeIntegerForKey:@"maximumLockCount"];
    v5->_totalLockCount = [v4 decodeIntegerForKey:@"totalLockCount"];
    v5->_continueCount = [v4 decodeIntegerForKey:@"continueLockCount"];
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"firstLockTimestamp"];
    firstLockTimestamp = v5->_firstLockTimestamp;
    v5->_firstLockTimestamp = v12;

    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"lastRefreshTimestamp"];
    lastRefreshTimestamp = v5->_lastRefreshTimestamp;
    v5->_lastRefreshTimestamp = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetLockTracker *)self clientLockReason];
  [v4 encodeObject:v5 forKey:@"clientLockReason"];

  v6 = [(MAAutoAssetLockTracker *)self clientProcessName];
  [v4 encodeObject:v6 forKey:@"clientProcessName"];

  [v4 encodeInteger:-[MAAutoAssetLockTracker clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  v7 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  [v4 encodeObject:v7 forKey:@"lockUsagePolicy"];

  [v4 encodeInteger:-[MAAutoAssetLockTracker activeLockCount](self forKey:{"activeLockCount"), @"activeLockCount"}];
  [v4 encodeInteger:-[MAAutoAssetLockTracker maximumLockCount](self forKey:{"maximumLockCount"), @"maximumLockCount"}];
  [v4 encodeInteger:-[MAAutoAssetLockTracker totalLockCount](self forKey:{"totalLockCount"), @"totalLockCount"}];
  [v4 encodeInteger:-[MAAutoAssetLockTracker continueCount](self forKey:{"continueCount"), @"continueLockCount"}];
  v8 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  [v4 encodeObject:v8 forKey:@"firstLockTimestamp"];

  v9 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  [v4 encodeObject:v9 forKey:@"lastRefreshTimestamp"];
}

- (id)copy
{
  v3 = [MAAutoAssetLockTracker alloc];
  v4 = [(MAAutoAssetLockTracker *)self clientLockReason];
  v5 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  v6 = [(MAAutoAssetLockTracker *)v3 initForClientLockReason:v4 lockingWithUsagePolicy:v5];

  v7 = [(MAAutoAssetLockTracker *)self clientProcessName];
  [v6 setClientProcessName:v7];

  [v6 setClientProcessID:{-[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")}];
  [v6 setActiveLockCount:{-[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")}];
  [v6 setMaximumLockCount:{-[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v6 setTotalLockCount:{-[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")}];
  [v6 setContinueCount:{-[MAAutoAssetLockTracker continueCount](self, "continueCount")}];
  v8 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v9 = [v8 copy];
  [v6 setFirstLockTimestamp:v9];

  v10 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v11 = [v10 copy];
  [v6 setLastRefreshTimestamp:v11];

  return v6;
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  v19 = [(MAAutoAssetLockTracker *)self clientLockReason];
  v3 = [v19 summary];
  v4 = [(MAAutoAssetLockTracker *)self clientProcessName];
  if (v4)
  {
    v18 = [(MAAutoAssetLockTracker *)self clientProcessName];
  }

  else
  {
    v18 = @"N";
  }

  v16 = [(MAAutoAssetLockTracker *)self clientProcessID];
  v5 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (v5)
  {
    v15 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    v6 = [v15 summary];
  }

  else
  {
    v6 = @"NONE";
  }

  v7 = [(MAAutoAssetLockTracker *)self activeLockCount];
  v8 = [(MAAutoAssetLockTracker *)self maximumLockCount];
  v9 = [(MAAutoAssetLockTracker *)self totalLockCount];
  v10 = [(MAAutoAssetLockTracker *)self continueCount];
  v11 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v12 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v13 = [v17 stringWithFormat:@">>>\n        clientLockReason: %@\n       clientProcessName: %@\n         clientProcessID: %ld\n         lockUsagePolicy: %@\n         activeLockCount: %lld\n        maximumLockCount: %lld\n          totalLockCount: %lld\n           continueCount: %lld\n      firstLockTimestamp: %@\n    lastRefreshTimestamp: %@\n<<<]", v3, v18, v16, v6, v7, v8, v9, v10, v11, v12];

  if (v5)
  {
  }

  if (v4)
  {
  }

  return v13;
}

- (id)summary
{
  v3 = [(MAAutoAssetLockTracker *)self clientLockReason];
  v23 = [v3 summary];

  v4 = [(MAAutoAssetLockTracker *)self clientProcessName];
  if (v4)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    v6 = [(MAAutoAssetLockTracker *)self clientProcessName];
    v22 = [v5 initWithFormat:@"%@(%ld)", v6, -[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")];
  }

  else
  {
    v22 = @"N";
  }

  v7 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (v7)
  {
    v8 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    v9 = [v8 summary];
  }

  else
  {
    v9 = @"NONE";
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker continueCount](self, "continueCount")];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  v15 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v16 = [v14 initWithFormat:@"%@", v15];

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  v18 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v19 = [v17 initWithFormat:@"%@", v18];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientReason:%@|clientProcess:%@|policy:%@|locks active:%@, max:%@, total:%@|continues:%@|first:%@|last:%@", v23, v22, v9, v10, v11, v12, v13, v16, v19];

  return v20;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  v5 = [(MAAutoAssetLockTracker *)self clientLockReason];
  v6 = [v5 newSummaryDictionary];
  [v3 setSafeObject:v6 forKey:@"clientLockReason"];

  v7 = [(MAAutoAssetLockTracker *)self clientProcessName];
  [v3 setSafeObject:v7 forKey:@"clientProcessName"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")}];
  [v3 setSafeObject:v8 forKey:@"clientProcessID"];

  v9 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  v10 = [v9 newSummaryDictionary];
  [v3 setSafeObject:v10 forKey:@"lockUsagePolicy"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")}];
  [v3 setSafeObject:v11 forKey:@"activeLockCount"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v3 setSafeObject:v12 forKey:@"maximumLockCount"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")}];
  [v3 setSafeObject:v13 forKey:@"totalLockCount"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker continueCount](self, "continueCount")}];
  [v3 setSafeObject:v14 forKey:@"continueLockCount"];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  v15 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v16 = [v4 stringFromDate:v15];
  [v3 setSafeObject:v16 forKey:@"firstLockTimestamp"];

  v17 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v18 = [v4 stringFromDate:v17];
  [v3 setSafeObject:v18 forKey:@"lastRefreshTimestamp"];

  return v3;
}

- (void)summaryBuildMaxColumnStrings:(id)a3
{
  v53 = a3;
  v4 = [(MAAutoAssetLockTracker *)self clientLockReason];
  v5 = [v4 summary];

  v6 = [(MAAutoAssetLockTracker *)self clientProcessName];
  v49 = v5;
  if (v6)
  {
    v52 = [(MAAutoAssetLockTracker *)self clientProcessName];
  }

  else
  {
    v52 = @"NONE";
  }

  v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")];
  v7 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (v7)
  {
    v8 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    v50 = [v8 summary];
  }

  else
  {
    v50 = @"NONE";
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker continueCount](self, "continueCount")];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  v14 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v15 = [v13 initWithFormat:@"%@", v14];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  v17 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v18 = [v16 initWithFormat:@"%@", v17];

  v19 = [v49 length];
  v20 = [v53 safeStringForKey:@"clientLockReason"];
  v21 = [v20 length];

  if (v19 > v21)
  {
    [v53 setSafeObject:v49 forKey:@"clientLockReason"];
  }

  v22 = [(__CFString *)v52 length];
  v23 = [v53 safeStringForKey:@"clientProcessName"];
  v24 = [v23 length];

  if (v22 > v24)
  {
    [v53 setSafeObject:v52 forKey:@"clientProcessName"];
  }

  v25 = [v51 length];
  v26 = [v53 safeStringForKey:@"clientProcessID"];
  v27 = [v26 length];

  if (v25 > v27)
  {
    [v53 setSafeObject:v51 forKey:@"clientProcessID"];
  }

  v28 = [(__CFString *)v50 length];
  v29 = [v53 safeStringForKey:@"lockUsagePolicy"];
  v30 = [v29 length];

  if (v28 > v30)
  {
    [v53 setSafeObject:v50 forKey:@"lockUsagePolicy"];
  }

  v31 = [v9 length];
  v32 = [v53 safeStringForKey:@"activeLockCount"];
  v33 = [v32 length];

  if (v31 > v33)
  {
    [v53 setSafeObject:v9 forKey:@"activeLockCount"];
  }

  v34 = [v10 length];
  v35 = [v53 safeStringForKey:@"maximumLockCount"];
  v36 = [v35 length];

  if (v34 > v36)
  {
    [v53 setSafeObject:v10 forKey:@"maximumLockCount"];
  }

  v37 = [v11 length];
  v38 = [v53 safeStringForKey:@"totalLockCount"];
  v39 = [v38 length];

  if (v37 > v39)
  {
    [v53 setSafeObject:v11 forKey:@"totalLockCount"];
  }

  v40 = [v12 length];
  v41 = [v53 safeStringForKey:@"continueLockCount"];
  v42 = [v41 length];

  if (v40 > v42)
  {
    [v53 setSafeObject:v12 forKey:@"continueLockCount"];
  }

  v43 = [v15 length];
  v44 = [v53 safeStringForKey:@"firstLockTimestamp"];
  v45 = [v44 length];

  if (v43 > v45)
  {
    [v53 setSafeObject:v15 forKey:@"firstLockTimestamp"];
  }

  v46 = [v18 length];
  v47 = [v53 safeStringForKey:@"lastRefreshTimestamp"];
  v48 = [v47 length];

  if (v46 > v48)
  {
    [v53 setSafeObject:v18 forKey:@"lastRefreshTimestamp"];
  }
}

- (id)summaryPadded:(id)a3
{
  v4 = a3;
  v5 = [(MAAutoAssetLockTracker *)self clientLockReason];
  v45 = [v5 summary];

  v6 = [(MAAutoAssetLockTracker *)self clientProcessName];
  if (v6)
  {
    v44 = [(MAAutoAssetLockTracker *)self clientProcessName];
  }

  else
  {
    v44 = @"NONE";
  }

  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")];
  v7 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (v7)
  {
    v8 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    v42 = [v8 summary];
  }

  else
  {
    v42 = @"NONE";
  }

  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker continueCount](self, "continueCount")];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  v10 = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v39 = [v9 initWithFormat:@"%@", v10];

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  v12 = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v38 = [v11 initWithFormat:@"%@", v12];

  v31 = MEMORY[0x1E696AEC0];
  v35 = [v4 safeStringForKey:@"clientLockReason"];
  v36 = [MAAutoAssetLockTracker summaryPaddedString:v45 paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v34 = [v4 safeStringForKey:@"clientProcessName"];
  v27 = [MAAutoAssetLockTracker summaryPaddedString:v44 paddingToLenghtOfString:v34 paddingWith:@" " paddingBefore:0];
  v33 = [v4 safeStringForKey:@"clientProcessID"];
  v25 = [MAAutoAssetLockTracker summaryPaddedString:v43 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v30 = [v4 safeStringForKey:@"lockUsagePolicy"];
  v24 = [MAAutoAssetLockTracker summaryPaddedString:v42 paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v28 = [v4 safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetLockTracker summaryPaddedString:v41 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v26 = [v4 safeStringForKey:@"maximumLockCount"];
  v21 = [MAAutoAssetLockTracker summaryPaddedString:v37 paddingToLenghtOfString:v26 paddingWith:@" " paddingBefore:1];
  v23 = [v4 safeStringForKey:@"totalLockCount"];
  v14 = [MAAutoAssetLockTracker summaryPaddedString:v29 paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:1];
  v22 = [v4 safeStringForKey:@"continueLockCount"];
  v15 = [MAAutoAssetLockTracker summaryPaddedString:v40 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v16 = [v4 safeStringForKey:@"firstLockTimestamp"];
  v17 = [MAAutoAssetLockTracker summaryPaddedString:v39 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:1];
  v18 = [v4 safeStringForKey:@"lastRefreshTimestamp"];

  v19 = [MAAutoAssetLockTracker summaryPaddedString:v38 paddingToLenghtOfString:v18 paddingWith:@" " paddingBefore:1];
  v32 = [v31 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v36, v27, v25, v24, v13, v21, v14, v15, v17, v19];

  return v32;
}

+ (id)summaryNewMaxColumnStrings
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF90]);
  [v2 setSafeObject:@"clientLockReason" forKey:@"clientLockReason"];
  [v2 setSafeObject:@"clientProcessName" forKey:@"clientProcessName"];
  [v2 setSafeObject:@"clientProcessID" forKey:@"clientProcessID"];
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
  v21 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v25 = [v3 safeStringForKey:@"clientLockReason"];
  v26 = [MAAutoAssetLockTracker summaryPaddedString:@"clientLockReason" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [v3 safeStringForKey:@"clientProcessName"];
  v18 = [MAAutoAssetLockTracker summaryPaddedString:@"clientProcessName" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [v3 safeStringForKey:@"clientProcessID"];
  v16 = [MAAutoAssetLockTracker summaryPaddedString:@"clientProcessID" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v20 = [v3 safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetLockTracker summaryPaddedString:@"lockUsagePolicy" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v19 = [v3 safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetLockTracker summaryPaddedString:@"activeLockCount" paddingToLenghtOfString:v19 paddingWith:@" " paddingBefore:0];
  v17 = [v3 safeStringForKey:@"maximumLockCount"];
  v11 = [MAAutoAssetLockTracker summaryPaddedString:@"maximumLockCount" paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:0];
  v14 = [v3 safeStringForKey:@"totalLockCount"];
  v10 = [MAAutoAssetLockTracker summaryPaddedString:@"totalLockCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [v3 safeStringForKey:@"continueLockCount"];
  v4 = [MAAutoAssetLockTracker summaryPaddedString:@"continueLockCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v5 = [v3 safeStringForKey:@"firstLockTimestamp"];
  v6 = [MAAutoAssetLockTracker summaryPaddedString:@"firstLockTimestamp" paddingToLenghtOfString:v5 paddingWith:@" " paddingBefore:0];
  v7 = [v3 safeStringForKey:@"lastRefreshTimestamp"];

  v8 = [MAAutoAssetLockTracker summaryPaddedString:@"lastRefreshTimestamp" paddingToLenghtOfString:v7 paddingWith:@" " paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v13, v11, v10, v4, v6, v8];

  return v22;
}

+ (id)summaryPaddedBanner:(id)a3
{
  v21 = MEMORY[0x1E696AEC0];
  v3 = a3;
  v25 = [v3 safeStringForKey:@"clientLockReason"];
  v26 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v25 paddingWith:@"=" paddingBefore:0];
  v24 = [v3 safeStringForKey:@"clientProcessName"];
  v18 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [v3 safeStringForKey:@"clientProcessID"];
  v16 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v20 = [v3 safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [v3 safeStringForKey:@"activeLockCount"];
  v11 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v17 = [v3 safeStringForKey:@"maximumLockCount"];
  v12 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v17 paddingWith:@"=" paddingBefore:0];
  v14 = [v3 safeStringForKey:@"totalLockCount"];
  v4 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v13 = [v3 safeStringForKey:@"continueLockCount"];
  v5 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v13 paddingWith:@"=" paddingBefore:0];
  v6 = [v3 safeStringForKey:@"firstLockTimestamp"];
  v7 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [v3 safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v11, v12, v4, v5, v7, v9];

  return v22;
}

@end