@interface ICInstrumentationUtilities
+ (id)autoSortSelectionCountUserDefaultsKeyForState:(BOOL)a3;
+ (id)passwordChangeCountUserDefaultsKeyAsReset:(BOOL)a3;
+ (id)recentPasswordModesForAccount:(id)a3;
+ (id)recentPasswordModesKeyForAccount:(id)a3;
+ (int64_t)autoSortSelectionChangeCountForState:(BOOL)a3;
+ (int64_t)recentPasswordChangeCountAsReset:(BOOL)a3;
+ (void)addRecentPasswordMode:(id)a3 forAccount:(id)a4;
+ (void)clearAutoSortSelectionChangeCountForState:(BOOL)a3;
+ (void)clearRecentPasswordChangeCountAsReset:(BOOL)a3;
+ (void)clearRecentPasswordModesForAccount:(id)a3;
+ (void)incrementAutoSortSelectionChangeCountForState:(BOOL)a3;
+ (void)incrementRecentPasswordChangeCountAsReset:(BOOL)a3;
@end

@implementation ICInstrumentationUtilities

+ (int64_t)autoSortSelectionChangeCountForState:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [a1 autoSortSelectionCountUserDefaultsKeyForState:v3];
  v7 = [v5 integerForKey:v6];

  return v7;
}

+ (void)incrementAutoSortSelectionChangeCountForState:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v5 = [a1 autoSortSelectionCountUserDefaultsKeyForState:v3];
  [v6 setInteger:objc_msgSend(v6 forKey:{"integerForKey:", v5) + 1, v5}];
}

+ (void)clearAutoSortSelectionChangeCountForState:(BOOL)a3
{
  v3 = a3;
  v6 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v5 = [a1 autoSortSelectionCountUserDefaultsKeyForState:v3];
  [v6 setInteger:0 forKey:v5];
}

+ (id)autoSortSelectionCountUserDefaultsKeyForState:(BOOL)a3
{
  if (a3)
  {
    return @"AnalyticsChecklistAutoSortSelectionCountOn";
  }

  else
  {
    return @"AnalyticsChecklistAutoSortSelectionCountOff";
  }
}

+ (int64_t)recentPasswordChangeCountAsReset:(BOOL)a3
{
  v3 = a3;
  v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [a1 passwordChangeCountUserDefaultsKeyAsReset:v3];
  v7 = [v5 integerForKey:v6];

  return v7;
}

+ (void)incrementRecentPasswordChangeCountAsReset:(BOOL)a3
{
  v3 = a3;
  v15 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [a1 passwordChangeCountUserDefaultsKeyAsReset:v3];
  v7 = [v5 integerForKey:v6];
  v8 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = v7;
    v11 = 2048;
    v12 = v7 + 1;
    v13 = 1024;
    v14 = v3;
    _os_log_debug_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEBUG, "Incrementing password change count from %lu to %lu, isReset = %d", &v9, 0x1Cu);
  }

  [v5 setInteger:v7 + 1 forKey:v6];
}

+ (void)clearRecentPasswordChangeCountAsReset:(BOOL)a3
{
  v3 = a3;
  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInstrumentationUtilities *)v3 clearRecentPasswordChangeCountAsReset:v5];
  }

  v6 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v7 = [a1 passwordChangeCountUserDefaultsKeyAsReset:v3];
  [v6 setInteger:0 forKey:v7];
}

+ (id)passwordChangeCountUserDefaultsKeyAsReset:(BOOL)a3
{
  if (a3)
  {
    return @"ICInstrumentationUtilitiesRecentPasswordResetCountKey";
  }

  else
  {
    return @"ICInstrumentationUtilitiesRecentPasswordChangeCountKey";
  }
}

+ (id)recentPasswordModesKeyForAccount:(id)a3
{
  v3 = MEMORY[0x277CCACA8];
  v4 = [a3 identifier];
  v5 = [v3 stringWithFormat:@"ICInstrumentationUtilitiesRecentPasswordMode-%@", v4];

  return v5;
}

+ (id)recentPasswordModesForAccount:(id)a3
{
  v4 = MEMORY[0x277D36180];
  v5 = a3;
  v6 = [v4 sharedAppGroupDefaults];
  v7 = [a1 recentPasswordModesKeyForAccount:v5];

  v8 = [v6 objectForKey:v7];

  if (v8)
  {
    v9 = [MEMORY[0x277CCAAC8] unarchivedArrayOfObjectsOfClass:objc_opt_class() fromData:v8 error:0];
  }

  else
  {
    v9 = MEMORY[0x277CBEBF8];
  }

  return v9;
}

+ (void)addRecentPasswordMode:(id)a3 forAccount:(id)a4
{
  v6 = a4;
  v7 = a3;
  v8 = [a1 recentPasswordModesForAccount:v6];
  v12 = [v8 arrayByAddingObject:v7];

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  v10 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v11 = [a1 recentPasswordModesKeyForAccount:v6];

  [v10 setObject:v9 forKey:v11];
}

+ (void)clearRecentPasswordModesForAccount:(id)a3
{
  v4 = MEMORY[0x277CCAAB0];
  v5 = a3;
  v8 = [v4 archivedDataWithRootObject:MEMORY[0x277CBEBF8] requiringSecureCoding:1 error:0];
  v6 = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v7 = [a1 recentPasswordModesKeyForAccount:v5];

  [v6 setObject:v8 forKey:v7];
}

+ (void)clearRecentPasswordChangeCountAsReset:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Clearing password change count for isReset = %d", v2, 8u);
}

@end