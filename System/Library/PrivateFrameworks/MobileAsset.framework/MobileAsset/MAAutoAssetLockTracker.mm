@interface MAAutoAssetLockTracker
+ (id)summaryNewMaxColumnStrings;
+ (id)summaryPaddedBanner:(id)banner;
+ (id)summaryPaddedHeader:(id)header;
+ (id)summaryPaddedString:(id)string paddingToLenghtOfString:(id)ofString paddingWith:(id)with paddingBefore:(BOOL)before;
- (MAAutoAssetLockTracker)initWithCoder:(id)coder;
- (id)_initForClientLockReason:(id)reason forClientProcessName:(id)name withClientProcessID:(int64_t)d lockingWithUsagePolicy:(id)policy;
- (id)copy;
- (id)description;
- (id)newSummaryDictionary;
- (id)summary;
- (id)summaryPadded:(id)padded;
- (void)encodeWithCoder:(id)coder;
- (void)summaryBuildMaxColumnStrings:(id)strings;
@end

@implementation MAAutoAssetLockTracker

- (id)_initForClientLockReason:(id)reason forClientProcessName:(id)name withClientProcessID:(int64_t)d lockingWithUsagePolicy:(id)policy
{
  reasonCopy = reason;
  nameCopy = name;
  policyCopy = policy;
  v19.receiver = self;
  v19.super_class = MAAutoAssetLockTracker;
  v14 = [(MAAutoAssetLockTracker *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_clientLockReason, reason);
    objc_storeStrong(&v15->_clientProcessName, name);
    v15->_clientProcessID = d;
    objc_storeStrong(&v15->_lockUsagePolicy, policy);
    *&v15->_activeLockCount = vdupq_n_s64(1uLL);
    *&v15->_totalLockCount = xmmword_197B62330;
    date = [MEMORY[0x1E695DF00] date];
    firstLockTimestamp = v15->_firstLockTimestamp;
    v15->_firstLockTimestamp = date;

    objc_storeStrong(&v15->_lastRefreshTimestamp, v15->_firstLockTimestamp);
  }

  return v15;
}

- (MAAutoAssetLockTracker)initWithCoder:(id)coder
{
  coderCopy = coder;
  v17.receiver = self;
  v17.super_class = MAAutoAssetLockTracker;
  v5 = [(MAAutoAssetLockTracker *)&v17 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientLockReason"];
    clientLockReason = v5->_clientLockReason;
    v5->_clientLockReason = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"clientProcessName"];
    clientProcessName = v5->_clientProcessName;
    v5->_clientProcessName = v8;

    v5->_clientProcessID = [coderCopy decodeIntegerForKey:@"clientProcessID"];
    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lockUsagePolicy"];
    lockUsagePolicy = v5->_lockUsagePolicy;
    v5->_lockUsagePolicy = v10;

    v5->_activeLockCount = [coderCopy decodeIntegerForKey:@"activeLockCount"];
    v5->_maximumLockCount = [coderCopy decodeIntegerForKey:@"maximumLockCount"];
    v5->_totalLockCount = [coderCopy decodeIntegerForKey:@"totalLockCount"];
    v5->_continueCount = [coderCopy decodeIntegerForKey:@"continueLockCount"];
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"firstLockTimestamp"];
    firstLockTimestamp = v5->_firstLockTimestamp;
    v5->_firstLockTimestamp = v12;

    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"lastRefreshTimestamp"];
    lastRefreshTimestamp = v5->_lastRefreshTimestamp;
    v5->_lastRefreshTimestamp = v14;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  [coderCopy encodeObject:clientLockReason forKey:@"clientLockReason"];

  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  [coderCopy encodeObject:clientProcessName forKey:@"clientProcessName"];

  [coderCopy encodeInteger:-[MAAutoAssetLockTracker clientProcessID](self forKey:{"clientProcessID"), @"clientProcessID"}];
  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  [coderCopy encodeObject:lockUsagePolicy forKey:@"lockUsagePolicy"];

  [coderCopy encodeInteger:-[MAAutoAssetLockTracker activeLockCount](self forKey:{"activeLockCount"), @"activeLockCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetLockTracker maximumLockCount](self forKey:{"maximumLockCount"), @"maximumLockCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetLockTracker totalLockCount](self forKey:{"totalLockCount"), @"totalLockCount"}];
  [coderCopy encodeInteger:-[MAAutoAssetLockTracker continueCount](self forKey:{"continueCount"), @"continueLockCount"}];
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  [coderCopy encodeObject:firstLockTimestamp forKey:@"firstLockTimestamp"];

  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  [coderCopy encodeObject:lastRefreshTimestamp forKey:@"lastRefreshTimestamp"];
}

- (id)copy
{
  v3 = [MAAutoAssetLockTracker alloc];
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  v6 = [(MAAutoAssetLockTracker *)v3 initForClientLockReason:clientLockReason lockingWithUsagePolicy:lockUsagePolicy];

  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  [v6 setClientProcessName:clientProcessName];

  [v6 setClientProcessID:{-[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")}];
  [v6 setActiveLockCount:{-[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")}];
  [v6 setMaximumLockCount:{-[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v6 setTotalLockCount:{-[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")}];
  [v6 setContinueCount:{-[MAAutoAssetLockTracker continueCount](self, "continueCount")}];
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v9 = [firstLockTimestamp copy];
  [v6 setFirstLockTimestamp:v9];

  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v11 = [lastRefreshTimestamp copy];
  [v6 setLastRefreshTimestamp:v11];

  return v6;
}

- (id)description
{
  v17 = MEMORY[0x1E696AEC0];
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];
  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  if (clientProcessName)
  {
    clientProcessName2 = [(MAAutoAssetLockTracker *)self clientProcessName];
  }

  else
  {
    clientProcessName2 = @"N";
  }

  clientProcessID = [(MAAutoAssetLockTracker *)self clientProcessID];
  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  activeLockCount = [(MAAutoAssetLockTracker *)self activeLockCount];
  maximumLockCount = [(MAAutoAssetLockTracker *)self maximumLockCount];
  totalLockCount = [(MAAutoAssetLockTracker *)self totalLockCount];
  continueCount = [(MAAutoAssetLockTracker *)self continueCount];
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v13 = [v17 stringWithFormat:@">>>\n        clientLockReason: %@\n       clientProcessName: %@\n         clientProcessID: %ld\n         lockUsagePolicy: %@\n         activeLockCount: %lld\n        maximumLockCount: %lld\n          totalLockCount: %lld\n           continueCount: %lld\n      firstLockTimestamp: %@\n    lastRefreshTimestamp: %@\n<<<]", summary, clientProcessName2, clientProcessID, summary2, activeLockCount, maximumLockCount, totalLockCount, continueCount, firstLockTimestamp, lastRefreshTimestamp];

  if (lockUsagePolicy)
  {
  }

  if (clientProcessName)
  {
  }

  return v13;
}

- (id)summary
{
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  if (clientProcessName)
  {
    v5 = objc_alloc(MEMORY[0x1E696AEC0]);
    clientProcessName2 = [(MAAutoAssetLockTracker *)self clientProcessName];
    v22 = [v5 initWithFormat:@"%@(%ld)", clientProcessName2, -[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")];
  }

  else
  {
    v22 = @"N";
  }

  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")];
  v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker continueCount](self, "continueCount")];
  v14 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v16 = [v14 initWithFormat:@"%@", firstLockTimestamp];

  v17 = objc_alloc(MEMORY[0x1E696AEC0]);
  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v19 = [v17 initWithFormat:@"%@", lastRefreshTimestamp];

  v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"clientReason:%@|clientProcess:%@|policy:%@|locks active:%@, max:%@, total:%@|continues:%@|first:%@|last:%@", summary, v22, summary2, v10, v11, v12, v13, v16, v19];

  return v20;
}

- (id)newSummaryDictionary
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = objc_alloc_init(MEMORY[0x1E696AB78]);
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  newSummaryDictionary = [clientLockReason newSummaryDictionary];
  [v3 setSafeObject:newSummaryDictionary forKey:@"clientLockReason"];

  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  [v3 setSafeObject:clientProcessName forKey:@"clientProcessName"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")}];
  [v3 setSafeObject:v8 forKey:@"clientProcessID"];

  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  newSummaryDictionary2 = [lockUsagePolicy newSummaryDictionary];
  [v3 setSafeObject:newSummaryDictionary2 forKey:@"lockUsagePolicy"];

  v11 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")}];
  [v3 setSafeObject:v11 forKey:@"activeLockCount"];

  v12 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")}];
  [v3 setSafeObject:v12 forKey:@"maximumLockCount"];

  v13 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")}];
  [v3 setSafeObject:v13 forKey:@"totalLockCount"];

  v14 = [MEMORY[0x1E696AD98] numberWithInteger:{-[MAAutoAssetLockTracker continueCount](self, "continueCount")}];
  [v3 setSafeObject:v14 forKey:@"continueLockCount"];

  [v4 setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v16 = [v4 stringFromDate:firstLockTimestamp];
  [v3 setSafeObject:v16 forKey:@"firstLockTimestamp"];

  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v18 = [v4 stringFromDate:lastRefreshTimestamp];
  [v3 setSafeObject:v18 forKey:@"lastRefreshTimestamp"];

  return v3;
}

- (void)summaryBuildMaxColumnStrings:(id)strings
{
  stringsCopy = strings;
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  v49 = summary;
  if (clientProcessName)
  {
    clientProcessName2 = [(MAAutoAssetLockTracker *)self clientProcessName];
  }

  else
  {
    clientProcessName2 = @"NONE";
  }

  v51 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")];
  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v9 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")];
  v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")];
  v11 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")];
  v12 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker continueCount](self, "continueCount")];
  v13 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v15 = [v13 initWithFormat:@"%@", firstLockTimestamp];

  v16 = objc_alloc(MEMORY[0x1E696AEC0]);
  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v18 = [v16 initWithFormat:@"%@", lastRefreshTimestamp];

  v19 = [v49 length];
  v20 = [stringsCopy safeStringForKey:@"clientLockReason"];
  v21 = [v20 length];

  if (v19 > v21)
  {
    [stringsCopy setSafeObject:v49 forKey:@"clientLockReason"];
  }

  v22 = [(__CFString *)clientProcessName2 length];
  v23 = [stringsCopy safeStringForKey:@"clientProcessName"];
  v24 = [v23 length];

  if (v22 > v24)
  {
    [stringsCopy setSafeObject:clientProcessName2 forKey:@"clientProcessName"];
  }

  v25 = [v51 length];
  v26 = [stringsCopy safeStringForKey:@"clientProcessID"];
  v27 = [v26 length];

  if (v25 > v27)
  {
    [stringsCopy setSafeObject:v51 forKey:@"clientProcessID"];
  }

  v28 = [(__CFString *)summary2 length];
  v29 = [stringsCopy safeStringForKey:@"lockUsagePolicy"];
  v30 = [v29 length];

  if (v28 > v30)
  {
    [stringsCopy setSafeObject:summary2 forKey:@"lockUsagePolicy"];
  }

  v31 = [v9 length];
  v32 = [stringsCopy safeStringForKey:@"activeLockCount"];
  v33 = [v32 length];

  if (v31 > v33)
  {
    [stringsCopy setSafeObject:v9 forKey:@"activeLockCount"];
  }

  v34 = [v10 length];
  v35 = [stringsCopy safeStringForKey:@"maximumLockCount"];
  v36 = [v35 length];

  if (v34 > v36)
  {
    [stringsCopy setSafeObject:v10 forKey:@"maximumLockCount"];
  }

  v37 = [v11 length];
  v38 = [stringsCopy safeStringForKey:@"totalLockCount"];
  v39 = [v38 length];

  if (v37 > v39)
  {
    [stringsCopy setSafeObject:v11 forKey:@"totalLockCount"];
  }

  v40 = [v12 length];
  v41 = [stringsCopy safeStringForKey:@"continueLockCount"];
  v42 = [v41 length];

  if (v40 > v42)
  {
    [stringsCopy setSafeObject:v12 forKey:@"continueLockCount"];
  }

  v43 = [v15 length];
  v44 = [stringsCopy safeStringForKey:@"firstLockTimestamp"];
  v45 = [v44 length];

  if (v43 > v45)
  {
    [stringsCopy setSafeObject:v15 forKey:@"firstLockTimestamp"];
  }

  v46 = [v18 length];
  v47 = [stringsCopy safeStringForKey:@"lastRefreshTimestamp"];
  v48 = [v47 length];

  if (v46 > v48)
  {
    [stringsCopy setSafeObject:v18 forKey:@"lastRefreshTimestamp"];
  }
}

- (id)summaryPadded:(id)padded
{
  paddedCopy = padded;
  clientLockReason = [(MAAutoAssetLockTracker *)self clientLockReason];
  summary = [clientLockReason summary];

  clientProcessName = [(MAAutoAssetLockTracker *)self clientProcessName];
  if (clientProcessName)
  {
    clientProcessName2 = [(MAAutoAssetLockTracker *)self clientProcessName];
  }

  else
  {
    clientProcessName2 = @"NONE";
  }

  v43 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%ld", -[MAAutoAssetLockTracker clientProcessID](self, "clientProcessID")];
  lockUsagePolicy = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
  if (lockUsagePolicy)
  {
    lockUsagePolicy2 = [(MAAutoAssetLockTracker *)self lockUsagePolicy];
    summary2 = [lockUsagePolicy2 summary];
  }

  else
  {
    summary2 = @"NONE";
  }

  v41 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker activeLockCount](self, "activeLockCount")];
  v37 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker maximumLockCount](self, "maximumLockCount")];
  v29 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker totalLockCount](self, "totalLockCount")];
  v40 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"%lld", -[MAAutoAssetLockTracker continueCount](self, "continueCount")];
  v9 = objc_alloc(MEMORY[0x1E696AEC0]);
  firstLockTimestamp = [(MAAutoAssetLockTracker *)self firstLockTimestamp];
  v39 = [v9 initWithFormat:@"%@", firstLockTimestamp];

  v11 = objc_alloc(MEMORY[0x1E696AEC0]);
  lastRefreshTimestamp = [(MAAutoAssetLockTracker *)self lastRefreshTimestamp];
  v38 = [v11 initWithFormat:@"%@", lastRefreshTimestamp];

  v31 = MEMORY[0x1E696AEC0];
  v35 = [paddedCopy safeStringForKey:@"clientLockReason"];
  v36 = [MAAutoAssetLockTracker summaryPaddedString:summary paddingToLenghtOfString:v35 paddingWith:@" " paddingBefore:0];
  v34 = [paddedCopy safeStringForKey:@"clientProcessName"];
  v27 = [MAAutoAssetLockTracker summaryPaddedString:clientProcessName2 paddingToLenghtOfString:v34 paddingWith:@" " paddingBefore:0];
  v33 = [paddedCopy safeStringForKey:@"clientProcessID"];
  v25 = [MAAutoAssetLockTracker summaryPaddedString:v43 paddingToLenghtOfString:v33 paddingWith:@" " paddingBefore:0];
  v30 = [paddedCopy safeStringForKey:@"lockUsagePolicy"];
  v24 = [MAAutoAssetLockTracker summaryPaddedString:summary2 paddingToLenghtOfString:v30 paddingWith:@" " paddingBefore:0];
  v28 = [paddedCopy safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetLockTracker summaryPaddedString:v41 paddingToLenghtOfString:v28 paddingWith:@" " paddingBefore:1];
  v26 = [paddedCopy safeStringForKey:@"maximumLockCount"];
  v21 = [MAAutoAssetLockTracker summaryPaddedString:v37 paddingToLenghtOfString:v26 paddingWith:@" " paddingBefore:1];
  v23 = [paddedCopy safeStringForKey:@"totalLockCount"];
  v14 = [MAAutoAssetLockTracker summaryPaddedString:v29 paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:1];
  v22 = [paddedCopy safeStringForKey:@"continueLockCount"];
  v15 = [MAAutoAssetLockTracker summaryPaddedString:v40 paddingToLenghtOfString:v22 paddingWith:@" " paddingBefore:1];
  v16 = [paddedCopy safeStringForKey:@"firstLockTimestamp"];
  v17 = [MAAutoAssetLockTracker summaryPaddedString:v39 paddingToLenghtOfString:v16 paddingWith:@" " paddingBefore:1];
  v18 = [paddedCopy safeStringForKey:@"lastRefreshTimestamp"];

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
  v21 = MEMORY[0x1E696AEC0];
  headerCopy = header;
  v25 = [headerCopy safeStringForKey:@"clientLockReason"];
  v26 = [MAAutoAssetLockTracker summaryPaddedString:@"clientLockReason" paddingToLenghtOfString:v25 paddingWith:@" " paddingBefore:0];
  v24 = [headerCopy safeStringForKey:@"clientProcessName"];
  v18 = [MAAutoAssetLockTracker summaryPaddedString:@"clientProcessName" paddingToLenghtOfString:v24 paddingWith:@" " paddingBefore:0];
  v23 = [headerCopy safeStringForKey:@"clientProcessID"];
  v16 = [MAAutoAssetLockTracker summaryPaddedString:@"clientProcessID" paddingToLenghtOfString:v23 paddingWith:@" " paddingBefore:0];
  v20 = [headerCopy safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetLockTracker summaryPaddedString:@"lockUsagePolicy" paddingToLenghtOfString:v20 paddingWith:@" " paddingBefore:0];
  v19 = [headerCopy safeStringForKey:@"activeLockCount"];
  v13 = [MAAutoAssetLockTracker summaryPaddedString:@"activeLockCount" paddingToLenghtOfString:v19 paddingWith:@" " paddingBefore:0];
  v17 = [headerCopy safeStringForKey:@"maximumLockCount"];
  v11 = [MAAutoAssetLockTracker summaryPaddedString:@"maximumLockCount" paddingToLenghtOfString:v17 paddingWith:@" " paddingBefore:0];
  v14 = [headerCopy safeStringForKey:@"totalLockCount"];
  v10 = [MAAutoAssetLockTracker summaryPaddedString:@"totalLockCount" paddingToLenghtOfString:v14 paddingWith:@" " paddingBefore:0];
  v12 = [headerCopy safeStringForKey:@"continueLockCount"];
  v4 = [MAAutoAssetLockTracker summaryPaddedString:@"continueLockCount" paddingToLenghtOfString:v12 paddingWith:@" " paddingBefore:0];
  v5 = [headerCopy safeStringForKey:@"firstLockTimestamp"];
  v6 = [MAAutoAssetLockTracker summaryPaddedString:@"firstLockTimestamp" paddingToLenghtOfString:v5 paddingWith:@" " paddingBefore:0];
  v7 = [headerCopy safeStringForKey:@"lastRefreshTimestamp"];

  v8 = [MAAutoAssetLockTracker summaryPaddedString:@"lastRefreshTimestamp" paddingToLenghtOfString:v7 paddingWith:@" " paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v13, v11, v10, v4, v6, v8];

  return v22;
}

+ (id)summaryPaddedBanner:(id)banner
{
  v21 = MEMORY[0x1E696AEC0];
  bannerCopy = banner;
  v25 = [bannerCopy safeStringForKey:@"clientLockReason"];
  v26 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v25 paddingWith:@"=" paddingBefore:0];
  v24 = [bannerCopy safeStringForKey:@"clientProcessName"];
  v18 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v24 paddingWith:@"=" paddingBefore:0];
  v23 = [bannerCopy safeStringForKey:@"clientProcessID"];
  v16 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v23 paddingWith:@"=" paddingBefore:0];
  v20 = [bannerCopy safeStringForKey:@"lockUsagePolicy"];
  v15 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v20 paddingWith:@"=" paddingBefore:0];
  v19 = [bannerCopy safeStringForKey:@"activeLockCount"];
  v11 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v19 paddingWith:@"=" paddingBefore:0];
  v17 = [bannerCopy safeStringForKey:@"maximumLockCount"];
  v12 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v17 paddingWith:@"=" paddingBefore:0];
  v14 = [bannerCopy safeStringForKey:@"totalLockCount"];
  v4 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v14 paddingWith:@"=" paddingBefore:0];
  v13 = [bannerCopy safeStringForKey:@"continueLockCount"];
  v5 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v13 paddingWith:@"=" paddingBefore:0];
  v6 = [bannerCopy safeStringForKey:@"firstLockTimestamp"];
  v7 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v6 paddingWith:@"=" paddingBefore:0];
  v8 = [bannerCopy safeStringForKey:@"lastRefreshTimestamp"];

  v9 = [MAAutoAssetLockTracker summaryPaddedString:&stru_1F0C1B388 paddingToLenghtOfString:v8 paddingWith:@"=" paddingBefore:0];
  v22 = [v21 stringWithFormat:@"%@|%@|%@|%@|%@|%@|%@|%@|%@|%@", v26, v18, v16, v15, v11, v12, v4, v5, v7, v9];

  return v22;
}

@end