@interface ICInstrumentationUtilities
+ (id)autoSortSelectionCountUserDefaultsKeyForState:(BOOL)state;
+ (id)passwordChangeCountUserDefaultsKeyAsReset:(BOOL)reset;
+ (id)recentPasswordModesForAccount:(id)account;
+ (id)recentPasswordModesKeyForAccount:(id)account;
+ (int64_t)autoSortSelectionChangeCountForState:(BOOL)state;
+ (int64_t)recentPasswordChangeCountAsReset:(BOOL)reset;
+ (void)addRecentPasswordMode:(id)mode forAccount:(id)account;
+ (void)clearAutoSortSelectionChangeCountForState:(BOOL)state;
+ (void)clearRecentPasswordChangeCountAsReset:(BOOL)reset;
+ (void)clearRecentPasswordModesForAccount:(id)account;
+ (void)incrementAutoSortSelectionChangeCountForState:(BOOL)state;
+ (void)incrementRecentPasswordChangeCountAsReset:(BOOL)reset;
@end

@implementation ICInstrumentationUtilities

+ (int64_t)autoSortSelectionChangeCountForState:(BOOL)state
{
  stateCopy = state;
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [self autoSortSelectionCountUserDefaultsKeyForState:stateCopy];
  v7 = [mEMORY[0x277D36180] integerForKey:v6];

  return v7;
}

+ (void)incrementAutoSortSelectionChangeCountForState:(BOOL)state
{
  stateCopy = state;
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v5 = [self autoSortSelectionCountUserDefaultsKeyForState:stateCopy];
  [mEMORY[0x277D36180] setInteger:objc_msgSend(mEMORY[0x277D36180] forKey:{"integerForKey:", v5) + 1, v5}];
}

+ (void)clearAutoSortSelectionChangeCountForState:(BOOL)state
{
  stateCopy = state;
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v5 = [self autoSortSelectionCountUserDefaultsKeyForState:stateCopy];
  [mEMORY[0x277D36180] setInteger:0 forKey:v5];
}

+ (id)autoSortSelectionCountUserDefaultsKeyForState:(BOOL)state
{
  if (state)
  {
    return @"AnalyticsChecklistAutoSortSelectionCountOn";
  }

  else
  {
    return @"AnalyticsChecklistAutoSortSelectionCountOff";
  }
}

+ (int64_t)recentPasswordChangeCountAsReset:(BOOL)reset
{
  resetCopy = reset;
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [self passwordChangeCountUserDefaultsKeyAsReset:resetCopy];
  v7 = [mEMORY[0x277D36180] integerForKey:v6];

  return v7;
}

+ (void)incrementRecentPasswordChangeCountAsReset:(BOOL)reset
{
  resetCopy = reset;
  v15 = *MEMORY[0x277D85DE8];
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v6 = [self passwordChangeCountUserDefaultsKeyAsReset:resetCopy];
  v7 = [mEMORY[0x277D36180] integerForKey:v6];
  v8 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v9 = 134218496;
    v10 = v7;
    v11 = 2048;
    v12 = v7 + 1;
    v13 = 1024;
    v14 = resetCopy;
    _os_log_debug_impl(&dword_214D51000, v8, OS_LOG_TYPE_DEBUG, "Incrementing password change count from %lu to %lu, isReset = %d", &v9, 0x1Cu);
  }

  [mEMORY[0x277D36180] setInteger:v7 + 1 forKey:v6];
}

+ (void)clearRecentPasswordChangeCountAsReset:(BOOL)reset
{
  resetCopy = reset;
  v5 = os_log_create("com.apple.notes", "Analytics");
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [(ICInstrumentationUtilities *)resetCopy clearRecentPasswordChangeCountAsReset:v5];
  }

  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v7 = [self passwordChangeCountUserDefaultsKeyAsReset:resetCopy];
  [mEMORY[0x277D36180] setInteger:0 forKey:v7];
}

+ (id)passwordChangeCountUserDefaultsKeyAsReset:(BOOL)reset
{
  if (reset)
  {
    return @"ICInstrumentationUtilitiesRecentPasswordResetCountKey";
  }

  else
  {
    return @"ICInstrumentationUtilitiesRecentPasswordChangeCountKey";
  }
}

+ (id)recentPasswordModesKeyForAccount:(id)account
{
  v3 = MEMORY[0x277CCACA8];
  identifier = [account identifier];
  v5 = [v3 stringWithFormat:@"ICInstrumentationUtilitiesRecentPasswordMode-%@", identifier];

  return v5;
}

+ (id)recentPasswordModesForAccount:(id)account
{
  v4 = MEMORY[0x277D36180];
  accountCopy = account;
  sharedAppGroupDefaults = [v4 sharedAppGroupDefaults];
  v7 = [self recentPasswordModesKeyForAccount:accountCopy];

  v8 = [sharedAppGroupDefaults objectForKey:v7];

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

+ (void)addRecentPasswordMode:(id)mode forAccount:(id)account
{
  accountCopy = account;
  modeCopy = mode;
  v8 = [self recentPasswordModesForAccount:accountCopy];
  v12 = [v8 arrayByAddingObject:modeCopy];

  v9 = [MEMORY[0x277CCAAB0] archivedDataWithRootObject:v12 requiringSecureCoding:1 error:0];
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v11 = [self recentPasswordModesKeyForAccount:accountCopy];

  [mEMORY[0x277D36180] setObject:v9 forKey:v11];
}

+ (void)clearRecentPasswordModesForAccount:(id)account
{
  v4 = MEMORY[0x277CCAAB0];
  accountCopy = account;
  v8 = [v4 archivedDataWithRootObject:MEMORY[0x277CBEBF8] requiringSecureCoding:1 error:0];
  mEMORY[0x277D36180] = [MEMORY[0x277D36180] sharedAppGroupDefaults];
  v7 = [self recentPasswordModesKeyForAccount:accountCopy];

  [mEMORY[0x277D36180] setObject:v8 forKey:v7];
}

+ (void)clearRecentPasswordChangeCountAsReset:(char)a1 .cold.1(char a1, NSObject *a2)
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 67109120;
  v2[1] = a1 & 1;
  _os_log_debug_impl(&dword_214D51000, a2, OS_LOG_TYPE_DEBUG, "Clearing password change count for isReset = %d", v2, 8u);
}

@end