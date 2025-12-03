@interface CHSpotlightSearchQueryUtilities
+ (BOOL)shouldReindexCallsDueToVersionMismatch;
+ (NSUserDefaults)userDefaults;
+ (id)lastFourDigitsFrom:(int64_t)from;
+ (id)searchQueryWithSearchString:(id)string;
+ (id)searchStringForCallsMatchingHandles:(id)handles orContactIdentifier:(id)identifier;
+ (unint64_t)callsDeferredReindexingReason;
+ (void)logEventReindexingFinishedForReason:(unint64_t)reason timeTaken:(double)taken;
+ (void)logEventReindexingRequestedForReason:(unint64_t)reason;
+ (void)setCallsNeedsDeferredReindexingForReason:(unint64_t)reason;
@end

@implementation CHSpotlightSearchQueryUtilities

+ (id)searchStringForCallsMatchingHandles:(id)handles orContactIdentifier:(id)identifier
{
  v30 = *MEMORY[0x1E69E9840];
  handlesCopy = handles;
  identifierCopy = identifier;
  if ([identifierCopy length])
  {
    identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=='*%@*'c", *MEMORY[0x1E69649E8], identifierCopy];
    v8 = [identifierCopy stringByAppendingString:@" || "];

    identifierCopy2 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=='*%@*'c", *MEMORY[0x1E6963CF8], identifierCopy];
    v10 = [v8 stringByAppendingString:identifierCopy2];
  }

  else
  {
    v10 = &stru_1F438BFD8;
  }

  if ([handlesCopy count])
  {
    v23 = identifierCopy;
    v24 = handlesCopy;
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    v11 = handlesCopy;
    v12 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v26;
      v15 = *MEMORY[0x1E69646B0];
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v26 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v17 = *(*(&v25 + 1) + 8 * i);
          if ([(__CFString *)v10 length])
          {
            v18 = [(__CFString *)v10 stringByAppendingString:@" || "];

            v10 = v18;
          }

          v19 = v10;
          v20 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@=='*%@*'c", v15, v17];
          v10 = [(__CFString *)v10 stringByAppendingString:v20];
        }

        v13 = [v11 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v13);
    }

    identifierCopy = v23;
    handlesCopy = v24;
  }

  v21 = *MEMORY[0x1E69E9840];

  return v10;
}

+ (id)searchQueryWithSearchString:(id)string
{
  v12[1] = *MEMORY[0x1E69E9840];
  stringCopy = string;
  v4 = objc_opt_new();
  v12[0] = @"com.apple.mobilephone";
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  [v4 setBundleIDs:v5];

  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ == %@", *MEMORY[0x1E6963EA0], @"kSpotlightItemTypeCall"];
  v11 = v6;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [v4 setFilterQueries:v7];

  v8 = [objc_alloc(MEMORY[0x1E6964E68]) initWithQueryString:stringCopy queryContext:v4];
  v9 = *MEMORY[0x1E69E9840];

  return v8;
}

+ (id)lastFourDigitsFrom:(int64_t)from
{
  from = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lld", from];
  v4 = [from length];
  if (v4 < 5)
  {
    v5 = from;
  }

  else
  {
    v5 = [from substringFromIndex:v4 - 4];
  }

  v6 = v5;

  return v6;
}

+ (BOOL)shouldReindexCallsDueToVersionMismatch
{
  v11 = *MEMORY[0x1E69E9840];
  userDefaults = [self userDefaults];
  v3 = [userDefaults integerForKey:@"kCHSpotlightIndexVersion"];
  v4 = ch_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134218240;
    v8 = v3;
    v9 = 2048;
    v10 = 9;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "Current spotlight index version for calls: %ld, expected index version: %ld", &v7, 0x16u);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3 != 9;
}

+ (unint64_t)callsDeferredReindexingReason
{
  v9 = *MEMORY[0x1E69E9840];
  userDefaults = [self userDefaults];
  v3 = [userDefaults integerForKey:@"CHSpotlightReindexingReasonKey"];
  v4 = ch_framework_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 134217984;
    v8 = v3;
    _os_log_impl(&dword_1C3E90000, v4, OS_LOG_TYPE_DEFAULT, "CHSpotlightSearchQueryUtilities: callsDeferredReindexingReason: %ld", &v7, 0xCu);
  }

  v5 = *MEMORY[0x1E69E9840];
  return v3;
}

+ (void)setCallsNeedsDeferredReindexingForReason:(unint64_t)reason
{
  v12 = *MEMORY[0x1E69E9840];
  userDefaults = [self userDefaults];
  v6 = [userDefaults integerForKey:@"CHSpotlightReindexingReasonKey"];
  if ((v6 & reason) == 0)
  {
    [userDefaults setInteger:v6 | reason forKey:@"CHSpotlightReindexingReasonKey"];
    [self logEventReindexingRequestedForReason:reason];
    v7 = ch_framework_log();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
      v10 = 138412290;
      v11 = v8;
      _os_log_impl(&dword_1C3E90000, v7, OS_LOG_TYPE_DEFAULT, "CHSpotlightSearchQueryUtilities: setNeedsDeferredReindexingForReason:%@", &v10, 0xCu);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (void)logEventReindexingRequestedForReason:(unint64_t)reason
{
  v18[2] = *MEMORY[0x1E69E9840];
  v17[0] = @"spotlightReindexingDataSource";
  v17[1] = @"spotlightReindexingReason";
  v18[0] = &unk_1F43A2D58;
  v4 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  v18[1] = v4;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:v17 count:2];
  v6 = [v5 mutableCopy];

  userDefaults = [self userDefaults];
  v8 = [userDefaults objectForKey:@"CHLastReindexCompletionDate"];

  if (v8)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v11 = [currentCalendar components:32 fromDate:v8 toDate:date options:0];
      hour = [v11 hour];

      v13 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
      [v6 setObject:v13 forKeyedSubscript:@"spotlightReindexingLastReindexTimeDelta"];
    }
  }

  v16 = v6;
  v14 = v6;
  AnalyticsSendEventLazy();

  v15 = *MEMORY[0x1E69E9840];
}

+ (void)logEventReindexingFinishedForReason:(unint64_t)reason timeTaken:(double)taken
{
  v21[3] = *MEMORY[0x1E69E9840];
  v21[0] = &unk_1F43A2D58;
  v20[0] = @"spotlightReindexingDataSource";
  v20[1] = @"spotlightReindexingReason";
  v6 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:reason];
  v21[1] = v6;
  v20[2] = @"spotlightReindexingLatency";
  v7 = [MEMORY[0x1E696AD98] numberWithDouble:taken];
  v21[2] = v7;
  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v9 = [v8 mutableCopy];

  userDefaults = [self userDefaults];
  v11 = [userDefaults objectForKey:@"CHLastReindexCompletionDate"];

  if (v11)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      currentCalendar = [MEMORY[0x1E695DEE8] currentCalendar];
      date = [MEMORY[0x1E695DF00] date];
      v14 = [currentCalendar components:32 fromDate:v11 toDate:date options:0];
      hour = [v14 hour];

      v16 = [MEMORY[0x1E696AD98] numberWithInteger:hour];
      [v9 setObject:v16 forKeyedSubscript:@"spotlightReindexingLastReindexTimeDelta"];
    }
  }

  v19 = v9;
  v17 = v9;
  AnalyticsSendEventLazy();

  v18 = *MEMORY[0x1E69E9840];
}

+ (NSUserDefaults)userDefaults
{
  if (userDefaults_onceToken_0 != -1)
  {
    +[CHSpotlightSearchQueryUtilities userDefaults];
  }

  v3 = userDefaults_sUserDefaults_0;

  return v3;
}

void __47__CHSpotlightSearchQueryUtilities_userDefaults__block_invoke()
{
  v5 = kSyncHelperServiceIdentifier;
  v0 = [MEMORY[0x1E696AAE8] mainBundle];
  v1 = [v0 bundleIdentifier];
  v2 = [v1 isEqualToString:v5];

  if (v2)
  {
    v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  }

  else
  {
    v3 = [objc_alloc(MEMORY[0x1E695E000]) initWithSuiteName:v5];
  }

  v4 = userDefaults_sUserDefaults_0;
  userDefaults_sUserDefaults_0 = v3;
}

@end