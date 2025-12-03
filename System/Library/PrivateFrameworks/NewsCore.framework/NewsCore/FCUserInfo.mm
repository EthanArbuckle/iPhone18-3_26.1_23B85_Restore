@interface FCUserInfo
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory;
+ (id)desiredKeys;
+ (id)overrideFeldsparID;
+ (id)userInfoCKRecordFromUserInfoDictionary:(uint64_t)dictionary;
+ (unint64_t)progressivePersonalization;
- (BOOL)endOfAudioTrackNotificationsEnabled;
- (BOOL)hasShownProgressivePersonalizationWelcomeBrick;
- (BOOL)isUsingPlaceholderFSID;
- (BOOL)marketingNotificationsEnabled;
- (BOOL)mightNeedToUpdateOnboardingVersion;
- (BOOL)newIssueNotificationsEnabled;
- (BOOL)puzzleNotificationsEnabled;
- (BOOL)shouldShowDefaultForYou;
- (BOOL)userHasCompletedFavoritesSetup;
- (FCUserInfo)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory;
- (NSDate)newsletterSignupLastSeenDate;
- (NSString)adsUserID;
- (NSString)feldsparID;
- (NSString)sportsUserID;
- (double)ageOfPlaceholderFSID;
- (id)_temporaryUserIDForKey:(uint64_t)key;
- (id)_userInfoValueForKey:(id *)key;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d;
- (id)asCKRecord;
- (id)recordsForRestoringZoneName:(id)name;
- (int64_t)shortcutsOnboardingState;
- (int64_t)sportsOnboardingState;
- (int64_t)sportsSyncState;
- (uint64_t)_modifyUserInfoWithBlock:(uint64_t)result;
- (uint64_t)_shouldRotateAdsUserIDWithCreatedDate:(id *)date;
- (unint64_t)progressivePersonalization;
- (unint64_t)sportsTopicNotificationsEnabledState;
- (void)_clearTemporaryUserIDForKey:(uint64_t)key;
- (void)_generateTemporaryUserIDIfNeededForKey:(uint64_t)key;
- (void)_persistAdsUserID:(void *)d createdDate:;
- (void)_persistSportsUserID:(id *)d;
- (void)_setUserInfoValue:(void *)value forKey:;
- (void)accessTokenDidChangeForTagID:(id)d;
- (void)addObserver:(id)observer;
- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names;
- (void)handleSyncWithUserInfoRecord:(id *)record;
- (void)loadFeldsparIDWithCompletion:(id)completion;
- (void)loadLocalCachesFromStore;
- (void)markSavedAsViewed;
- (void)markSharedWithYouAsViewed;
- (void)maybeUpdateOnboardingVersion:(id)version;
- (void)prepareForUse;
- (void)refreshOnboardingVersion:(id)version;
- (void)removeObserver:(id)observer;
- (void)resetPuzzleNotificationsState;
- (void)resetRecipeBoxInitialImport;
- (void)resetSportsID;
- (void)resetUserIDs;
- (void)setALaCarteSubscriptionMeteredCountLastResetDate:(id)date;
- (void)setAdsUserID:(id)d;
- (void)setAppLaunchUpsellLastPresenterBundleID:(id)d;
- (void)setAppLaunchUpsellLastSeenDate:(id)date;
- (void)setAppLaunchUpsellLastShownCampaignID:(id)d;
- (void)setAppReviewRequestLastShownDate:(id)date;
- (void)setBundleSubscriptionMeteredCountLastResetDate:(id)date;
- (void)setCanonicalLanguage:(id)language;
- (void)setDateLastOpened:(id)opened;
- (void)setEditorialArticleVersion:(id)version;
- (void)setFeldsparID:(id)d;
- (void)setImportSavedToRecipeVersion:(id)version;
- (void)setLastAppLaunchUpsellInstanceID:(id)d;
- (void)setMonthlyALaCarteSubscriptionMeteredCount:(id)count;
- (void)setMonthlyBundleSubscriptionMeteredCount:(id)count;
- (void)setNewsletterSignupLastSeenDate:(id)date;
- (void)setOnboardingVersionNumber:(id)number;
- (void)setPostPurchaseOnboardingLastShownDate:(id)date;
- (void)setPuzzleStatsStartDate:(id)date;
- (void)setReadOnlyUserInfo:(uint64_t)info;
- (void)setShortcutsOnboardingState:(int64_t)state;
- (void)setSportsFavoritesLastModifiedDate:(id)date;
- (void)setSportsOnboardingState:(int64_t)state;
- (void)setSportsSyncState:(int64_t)state;
- (void)setSportsTopicNotificationsEnabledState:(unint64_t)state;
- (void)setSportsUserID:(id)d;
- (void)setUpsellAppLaunchCount:(id)count;
- (void)setUserStartDate:(id)date;
- (void)settingsDataDidChangeForPuzzleTypeID:(id)d;
- (void)syncWithCompletion:(id)completion;
- (void)updateOnboardingVersion;
@end

@implementation FCUserInfo

void __32__FCUserInfo_overrideFeldsparID__block_invoke()
{
  if (NFInternalBuild())
  {
    v4 = NewsCoreUserDefaults();
    if ([v4 BOOLForKey:@"enable_overrides_user_segmentation"])
    {
      v0 = NewsCoreUserDefaults();
      v1 = [v0 stringForKey:@"override_feldspar_id_user_segmentation"];
      v2 = qword_1EDB26A20;
      qword_1EDB26A20 = v1;
    }

    else
    {
      v0 = qword_1EDB26A20;
      qword_1EDB26A20 = 0;
    }

    v3 = v4;
  }

  else
  {
    v3 = qword_1EDB26A20;
    qword_1EDB26A20 = 0;
  }
}

+ (id)overrideFeldsparID
{
  if (qword_1EDB26A28 != -1)
  {
    dispatch_once(&qword_1EDB26A28, &__block_literal_global_174);
  }

  v3 = qword_1EDB26A20;

  return v3;
}

- (void)prepareForUse
{
  v25 = *MEMORY[0x1E69E9840];
  v22.receiver = self;
  v22.super_class = FCUserInfo;
  [(FCPrivateDataController *)&v22 prepareForUse];
  notificationsUserID = [(FCUserInfo *)self notificationsUserID];
  if (!notificationsUserID || (v4 = notificationsUserID, -[FCUserInfo notificationsUserID](self, "notificationsUserID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {
    uUID = [MEMORY[0x1E696AFB0] UUID];
    uUIDString = [uUID UUIDString];

    [(FCUserInfo *)self _setUserInfoValue:uUIDString forKey:@"notificationsUserID"];
    v9 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = uUIDString;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_INFO, "Generated a new notificationsUserID: %@", buf, 0xCu);
    }
  }

  v10 = +[FCAppleAccount sharedAccount];
  isPrivateDataSyncingEnabled = [v10 isPrivateDataSyncingEnabled];

  if ((isPrivateDataSyncingEnabled & 1) == 0)
  {
    v12 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    if (([v12 hasSuffix:@"-NoSync"] & 1) == 0)
    {
      uUID2 = [MEMORY[0x1E696AFB0] UUID];
      uUIDString2 = [uUID2 UUIDString];

      v12 = [uUIDString2 stringByAppendingString:@"-NoSync"];

      [(FCUserInfo *)self _setUserInfoValue:v12 forKey:@"notificationsUserID"];
      v15 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v24 = v12;
        _os_log_impl(&dword_1B63EF000, v15, OS_LOG_TYPE_INFO, "Private data syncing is disabled, generated a new notificationsUserID: %@", buf, 0xCu);
      }
    }
  }

  if (self)
  {
    v16 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  }

  else
  {
    v16 = 0;
  }

  v17 = [(FCUserInfo *)&self->super.super.isa _shouldRotateAdsUserIDWithCreatedDate:v16];

  if (v17)
  {
    uUID3 = [MEMORY[0x1E696AFB0] UUID];
    uUIDString3 = [uUID3 UUIDString];

    [(FCUserInfo *)self _setUserInfoValue:uUIDString3 forKey:@"adsUserID"];
    date = [MEMORY[0x1E695DF00] date];
    [(FCUserInfo *)self _setUserInfoValue:date forKey:@"adsUserIDCreatedDate"];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)loadLocalCachesFromStore
{
  localStore = [(FCPrivateDataController *)self localStore];
  asDictionary = [localStore asDictionary];
  [(FCUserInfo *)self setReadOnlyUserInfo:asDictionary];

  v5 = NewsCoreSensitiveUserDefaults();
  v20 = [v5 stringForKey:@"widget_assigned_user_id"];

  v6 = NewsCoreSensitiveUserDefaults();
  [v6 removeObjectForKey:@"widget_assigned_user_id"];

  if (self)
  {
    readOnlyUserInfo = self->_readOnlyUserInfo;
  }

  else
  {
    readOnlyUserInfo = 0;
  }

  v8 = [(NSDictionary *)readOnlyUserInfo objectForKeyedSubscript:@"feldsparID"];

  v9 = NewsCoreSensitiveUserDefaults();
  v10 = v9;
  if (v8)
  {
    [v9 removeObjectForKey:@"temporary-fsid"];

    v11 = NewsCoreSensitiveUserDefaults();
    [v11 removeObjectForKey:@"temporary-fsid-creation-date"];
  }

  else
  {
    v11 = [v9 objectForKey:@"temporary-fsid"];

    if (!v11)
    {
      v12 = NewsCoreSensitiveUserDefaults();
      v13 = v12;
      if (v20)
      {
        [v12 setObject:v20 forKey:@"temporary-fsid"];
      }

      else
      {
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [v13 setObject:uUIDString forKey:@"temporary-fsid"];
      }

      v16 = NewsCoreSensitiveUserDefaults();
      date = [MEMORY[0x1E695DF00] date];
      [v16 setObject:date forKey:@"temporary-fsid-creation-date"];

      v11 = 0;
    }
  }

  [(FCUserInfo *)self _generateTemporaryUserIDIfNeededForKey:?];
  [(FCUserInfo *)self _generateTemporaryUserIDIfNeededForKey:?];
  tagSettings = [(FCUserInfo *)self tagSettings];
  [tagSettings loadLocalCachesFromStore];

  puzzleTypeSettings = [(FCUserInfo *)self puzzleTypeSettings];
  [puzzleTypeSettings loadLocalCachesFromStore];
}

+ (unint64_t)progressivePersonalization
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.news"];

  if (v3)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int64_t)sportsSyncState
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (unint64_t)progressivePersonalization
{
  v2 = objc_opt_class();

  return [v2 progressivePersonalization];
}

- (NSString)feldsparID
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = +[FCUserInfo overrideFeldsparID];
  if ([v3 length])
  {
    v4 = v3;
  }

  else
  {
    v5 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    v6 = v5;
    if (v5)
    {
      v4 = v5;
    }

    else
    {
      v7 = NewsCoreSensitiveUserDefaults();
      v4 = [v7 objectForKey:@"temporary-fsid"];

      if (!v4)
      {
        if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
        {
          v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"FSID was requested from UserInfo before a temporary one had been generated"];
          v11 = 136315906;
          v12 = "[FCUserInfo feldsparID]";
          v13 = 2080;
          v14 = "FCUserInfo.m";
          v15 = 1024;
          v16 = 358;
          v17 = 2114;
          v18 = v10;
          _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTemporaryFSID) : %s %s:%d %{public}@", &v11, 0x26u);
        }

        v4 = 0;
      }
    }
  }

  v8 = *MEMORY[0x1E69E9840];

  return v4;
}

- (int64_t)sportsOnboardingState
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (BOOL)newIssueNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)marketingNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)endOfAudioTrackNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (BOOL)puzzleNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  bOOLValue = [v2 BOOLValue];

  return bOOLValue;
}

- (NSString)sportsUserID
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCUserInfo *)self _temporaryUserIDForKey:?];
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Sports user ID was requested from UserInfo before a temporary one had been generated"];
        v9 = 136315906;
        v10 = "[FCUserInfo sportsUserID]";
        v11 = 2080;
        v12 = "FCUserInfo.m";
        v13 = 1024;
        v14 = 409;
        v15 = 2114;
        v16 = v8;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTemporarySportsUserID) : %s %s:%d %{public}@", &v9, 0x26u);
      }

      v5 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (NSString)adsUserID
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = [(FCUserInfo *)self _temporaryUserIDForKey:?];
    if (!v5)
    {
      if (os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT))
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"Ads user ID was requested from UserInfo before a temporary one had been generated"];
        v9 = 136315906;
        v10 = "[FCUserInfo adsUserID]";
        v11 = 2080;
        v12 = "FCUserInfo.m";
        v13 = 1024;
        v14 = 396;
        v15 = 2114;
        v16 = v8;
        _os_log_fault_impl(&dword_1B63EF000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_FAULT, "*** Assertion failure (Identifier: MissingTemporaryAdsUserID) : %s %s:%d %{public}@", &v9, 0x26u);
      }

      v5 = 0;
    }
  }

  v6 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)isUsingPlaceholderFSID
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v3 = v2 == 0;

  return v3;
}

- (BOOL)mightNeedToUpdateOnboardingVersion
{
  onboardingVersionNumber = [(FCUserInfo *)self onboardingVersionNumber];
  integerValue = [onboardingVersionNumber integerValue];

  if (integerValue > 6)
  {
    return 0;
  }

  onboardingVersionNumber2 = [(FCUserInfo *)self onboardingVersionNumber];
  integerValue2 = [onboardingVersionNumber2 integerValue];

  return integerValue2 != 6;
}

- (FCUserInfo)initWithContext:(id)context pushNotificationCenter:(id)center storeDirectory:(id)directory
{
  v17.receiver = self;
  v17.super_class = FCUserInfo;
  v5 = [(FCPrivateDataController *)&v17 initWithContext:context pushNotificationCenter:center storeDirectory:directory];
  if (v5)
  {
    v6 = [FCTagSettings alloc];
    localStore = [(FCPrivateDataController *)v5 localStore];
    v8 = [(FCTagSettings *)v6 initWithStore:localStore tagSettingsDelegate:v5];
    tagSettings = v5->_tagSettings;
    v5->_tagSettings = v8;

    v10 = [FCPuzzleTypeSettings alloc];
    localStore2 = [(FCPrivateDataController *)v5 localStore];
    v12 = [(FCPuzzleTypeSettings *)v10 initWithStore:localStore2 delegate:v5];
    puzzleTypeSettings = v5->_puzzleTypeSettings;
    v5->_puzzleTypeSettings = v12;

    v14 = objc_alloc_init(FCMTWriterLock);
    userInfoLock = v5->_userInfoLock;
    v5->_userInfoLock = v14;
  }

  return v5;
}

- (void)_setUserInfoValue:(void *)value forKey:
{
  v5 = a2;
  valueCopy = value;
  v7 = valueCopy;
  if (self)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__FCUserInfo__setUserInfoValue_forKey___block_invoke;
    v8[3] = &unk_1E7C3C220;
    v9 = valueCopy;
    v10 = v5;
    [(FCUserInfo *)self _modifyUserInfoWithBlock:v8];
  }
}

- (id)_userInfoValueForKey:(id *)key
{
  v3 = a2;
  if (key)
  {
    [key assertReadyForUse];
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__26;
    v13 = __Block_byref_object_dispose__26;
    v14 = 0;
    v4 = key[15];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__FCUserInfo__userInfoValueForKey___block_invoke;
    v6[3] = &unk_1E7C37138;
    v8 = &v9;
    v6[4] = key;
    v7 = v3;
    [v4 performReadSync:v6];

    key = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return key;
}

- (uint64_t)_shouldRotateAdsUserIDWithCreatedDate:(id *)date
{
  v3 = a2;
  v4 = v3;
  if (date)
  {
    if (v3)
    {
      v5 = NewsCoreUserDefaults();
      v6 = [v5 objectForKey:@"settings.analytics.identifiers.ad_identifier_rotation_interval"];

      v7 = 5184000.0;
      if (v6)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [v6 integerValue] * 86400.0;
        }
      }

      v8 = [v4 dateByAddingTimeInterval:v7];
      date = [MEMORY[0x1E695DF00] date];
      v10 = [v8 fc_isEarlierThanOrEqualTo:date];
    }

    else
    {
      v6 = [(FCUserInfo *)date _userInfoValueForKey:?];
      v10 = v6 != 0;
    }
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

+ (id)desiredKeys
{
  if (qword_1EDB26A18 != -1)
  {
    dispatch_once(&qword_1EDB26A18, &__block_literal_global_83_0);
  }

  v3 = _MergedGlobals_13_0;

  return v3;
}

void __25__FCUserInfo_desiredKeys__block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = __FCCKUserInfoKeys_block_invoke();
  [v0 addObjectsFromArray:v1];

  v2 = __FCCKTagSettingsKeys_block_invoke();
  [v0 addObjectsFromArray:v2];

  v3 = __FCCKPuzzleTypeSettingsKeys_block_invoke();
  [v0 addObjectsFromArray:v3];

  v4 = _MergedGlobals_13_0;
  _MergedGlobals_13_0 = v0;
}

- (void)setOnboardingVersionNumber:(id)number
{
  v31 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromFCOnboardingVersionNumber([numberCopy integerValue]);
    *buf = 138412546;
    v28 = numberCopy;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_INFO, "Onboarding version number being set to %@ (%@)", buf, 0x16u);
  }

  if ([numberCopy intValue] == 4)
  {
    onboardingVersionNumber = [(FCUserInfo *)self onboardingVersionNumber];
    intValue = [onboardingVersionNumber intValue];

    if (intValue == 3)
    {
      standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
      [standardUserDefaults setBool:1 forKey:@"onboarding_completed_from_personalize_news"];
    }
  }

  [(FCUserInfo *)self _setUserInfoValue:numberCopy forKey:@"finishFirstLaunchVersion"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v12 = [observers copy];

  v13 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v23;
    do
    {
      v16 = 0;
      do
      {
        if (*v23 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v22 + 1) + 8 * v16);
        if (objc_opt_respondsToSelector())
        {
          [v17 userInfoDidChangeOnboardingStatus:self];
        }

        ++v16;
      }

      while (v14 != v16);
      v14 = [v12 countByEnumeratingWithState:&v22 objects:v26 count:16];
    }

    while (v14);
  }

  v18 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v20 = [(FCModifyUserInfoCommand *)v18 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v20];
  v21 = *MEMORY[0x1E69E9840];
}

- (id)asCKRecord
{
  selfCopy = self;
  if (self)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v2 = self[15];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __24__FCUserInfo_asCKRecord__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = selfCopy;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    selfCopy = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return selfCopy;
}

- (void)loadFeldsparIDWithCompletion:(id)completion
{
  completionCopy = completion;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];

  if (v5)
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke;
    v9[4] = &unk_1E7C379C8;
    v6 = &v10;
    v10 = completionCopy;
    completionCopy[2](completionCopy);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7C39C20;
    v6 = v9;
    v8[4] = self;
    v9[0] = completionCopy;
    v7 = completionCopy;
    [(FCPrivateDataController *)self performFirstSyncWithCallbackQueue:MEMORY[0x1E69E96A0] completion:v8];
  }
}

void __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v31 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v25 = MEMORY[0x1E69E9820];
    v26 = 3221225472;
    v27 = __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke_3;
    v28 = &unk_1E7C379C8;
    v29 = *(a1 + 40);
    v29[2]();
    v4 = v29;
  }

  else
  {
    v5 = [(FCUserInfo *)*(a1 + 32) _userInfoValueForKey:?];

    if (v5)
    {
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke_4;
      v23 = &unk_1E7C379C8;
      v24 = *(a1 + 40);
      v24[2]();
      v4 = v24;
    }

    else
    {
      [(FCUserInfo *)*(a1 + 32) _modifyUserInfoWithBlock:?];
      v6 = [FCModifyUserInfoCommand alloc];
      v7 = [(FCUserInfo *)*(a1 + 32) asCKRecord];
      v4 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

      [*(a1 + 32) addCommandToCommandQueue:v4];
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v8 = [*(a1 + 32) observers];
      v9 = [v8 copy];

      v10 = [v9 countByEnumeratingWithState:&v16 objects:v30 count:16];
      if (v10)
      {
        v11 = v10;
        v12 = *v17;
        do
        {
          v13 = 0;
          do
          {
            if (*v17 != v12)
            {
              objc_enumerationMutation(v9);
            }

            v14 = *(*(&v16 + 1) + 8 * v13);
            if (objc_opt_respondsToSelector())
            {
              [v14 userInfoDidChangeFeldsparID:*(a1 + 32) fromCloud:0];
            }

            ++v13;
          }

          while (v11 != v13);
          v11 = [v9 countByEnumeratingWithState:&v16 objects:v30 count:16];
        }

        while (v11);
      }

      (*(*(a1 + 40) + 16))();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = NewsCoreSensitiveUserDefaults();
  v4 = [v3 objectForKey:@"temporary-fsid"];
  v5 = v4;
  if (v4)
  {
    v7 = v4;
  }

  else
  {
    v6 = [MEMORY[0x1E696AFB0] UUID];
    v7 = [v6 UUIDString];
  }

  [v2 setObject:v7 forKeyedSubscript:@"feldsparID"];
}

- (uint64_t)_modifyUserInfoWithBlock:(uint64_t)result
{
  if (result)
  {
    v2 = result;
    v3 = MEMORY[0x1E696AF00];
    v4 = a2;
    [v3 isMainThread];
    localStore = [v2 localStore];
    v4[2](v4, localStore);

    v6 = v2[15];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __39__FCUserInfo__modifyUserInfoWithBlock___block_invoke;
    v7[3] = &unk_1E7C36EA0;
    v7[4] = v2;
    return [v6 performWriteSync:v7];
  }

  return result;
}

- (void)resetUserIDs
{
  v25 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Resetting user IDs", buf, 2u);
  }

  [(FCUserInfo *)self _modifyUserInfoWithBlock:?];
  v4 = NewsCoreSensitiveUserDefaults();
  [v4 removeObjectForKey:@"temporary-fsid"];

  v5 = NewsCoreSensitiveUserDefaults();
  [v5 removeObjectForKey:@"temporary-fsid-creation-date"];

  v6 = NewsCoreSensitiveUserDefaults();
  [v6 removeObjectForKey:@"report_concern_user_id"];

  [(FCUserInfo *)self _clearTemporaryUserIDForKey:?];
  [(FCUserInfo *)self _clearTemporaryUserIDForKey:?];
  v7 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v9 = [(FCModifyUserInfoCommand *)v7 initWithUserInfoRecord:asCKRecord];

  v18 = v9;
  [(FCPrivateDataController *)self addCommandToCommandQueue:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v11 = [observers copy];

  v12 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      v15 = 0;
      do
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 userInfoDidChangeFeldsparID:self fromCloud:0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v16 userInfoDidChangeAdsUserID:self fromCloud:0];
        }

        if (objc_opt_respondsToSelector())
        {
          [v16 userInfoDidChangeSportsUserID:self];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v19 objects:v24 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

void __26__FCUserInfo_resetUserIDs__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v4 = [v2 UUID];
  v5 = [v4 UUIDString];
  [v3 setObject:v5 forKeyedSubscript:@"feldsparID"];

  v6 = [MEMORY[0x1E696AFB0] UUID];
  v7 = [v6 UUIDString];
  [v3 setObject:v7 forKeyedSubscript:@"adsUserID"];

  v9 = [MEMORY[0x1E696AFB0] UUID];
  v8 = [v9 UUIDString];
  [v3 setObject:v8 forKeyedSubscript:@"sportsUserID"];
}

- (void)_clearTemporaryUserIDForKey:(uint64_t)key
{
  if (key)
  {
    v3 = [@"temporary-user-id-" stringByAppendingString:a2];
    v2 = NewsCoreSensitiveUserDefaults();
    [v2 removeObjectForKey:v3];
  }
}

- (void)resetSportsID
{
  v21 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Resetting Sports ID", buf, 2u);
  }

  [(FCUserInfo *)self _modifyUserInfoWithBlock:?];
  [(FCUserInfo *)self _clearTemporaryUserIDForKey:?];
  v4 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v6 = [(FCModifyUserInfoCommand *)v4 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v8 = [observers copy];

  v9 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v16;
    do
    {
      v12 = 0;
      do
      {
        if (*v16 != v11)
        {
          objc_enumerationMutation(v8);
        }

        v13 = *(*(&v15 + 1) + 8 * v12);
        if (objc_opt_respondsToSelector())
        {
          [v13 userInfoDidChangeSportsUserID:self];
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v8 countByEnumeratingWithState:&v15 objects:v20 count:16];
    }

    while (v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void __27__FCUserInfo_resetSportsID__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x1E696AFB0];
  v3 = a2;
  v5 = [v2 UUID];
  v4 = [v5 UUIDString];
  [v3 setObject:v4 forKeyedSubscript:@"sportsUserID"];
}

- (void)setFeldsparID:(id)d
{
  v21 = *MEMORY[0x1E69E9840];
  dCopy = d;
  [MEMORY[0x1E696AF00] isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dCopy forKey:@"feldsparID"];
  v5 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v7 = [(FCModifyUserInfoCommand *)v5 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v9 = [observers copy];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 userInfoDidChangeFeldsparID:self fromCloud:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (double)ageOfPlaceholderFSID
{
  v2 = NewsCoreSensitiveUserDefaults();
  v3 = [v2 objectForKey:@"temporary-fsid-creation-date"];

  if (v3)
  {
    [v3 fc_timeIntervalUntilNow];
    v5 = v4;
  }

  else
  {
    v5 = 0.0;
  }

  return v5;
}

- (void)setAdsUserID:(id)d
{
  v4 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v4 isMainThread];
  date = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)&self->super.super.isa _persistAdsUserID:dCopy createdDate:date];
}

- (void)_persistAdsUserID:(void *)d createdDate:
{
  v22 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (self)
  {
    [(FCUserInfo *)self _setUserInfoValue:a2 forKey:@"adsUserID"];
    [(FCUserInfo *)self _setUserInfoValue:dCopy forKey:@"adsUserIDCreatedDate"];
    v6 = [FCModifyUserInfoCommand alloc];
    asCKRecord = [(FCUserInfo *)self asCKRecord];
    v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

    [self addCommandToCommandQueue:v8];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    observers = [self observers];
    v10 = [observers copy];

    v11 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v18;
      do
      {
        v14 = 0;
        do
        {
          if (*v18 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v17 + 1) + 8 * v14);
          if (objc_opt_respondsToSelector())
          {
            [v15 userInfoDidChangeAdsUserID:self fromCloud:0];
          }

          ++v14;
        }

        while (v12 != v14);
        v12 = [v10 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v12);
    }
  }

  v16 = *MEMORY[0x1E69E9840];
}

- (id)_temporaryUserIDForKey:(uint64_t)key
{
  if (key)
  {
    v2 = [@"temporary-user-id-" stringByAppendingString:a2];
    v3 = NewsCoreSensitiveUserDefaults();
    v4 = [v3 objectForKey:v2];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setSportsUserID:(id)d
{
  v4 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v4 isMainThread];
  [(FCUserInfo *)&self->super.super.isa _persistSportsUserID:dCopy];
}

- (void)_persistSportsUserID:(id *)d
{
  v19 = *MEMORY[0x1E69E9840];
  if (d)
  {
    [(FCUserInfo *)d _setUserInfoValue:a2 forKey:@"sportsUserID"];
    v3 = [FCModifyUserInfoCommand alloc];
    asCKRecord = [(FCUserInfo *)d asCKRecord];
    v5 = [(FCModifyUserInfoCommand *)v3 initWithUserInfoRecord:asCKRecord];

    [d addCommandToCommandQueue:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    observers = [d observers];
    v7 = [observers copy];

    v8 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v15;
      do
      {
        v11 = 0;
        do
        {
          if (*v15 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v14 + 1) + 8 * v11);
          if (objc_opt_respondsToSelector())
          {
            [v12 userInfoDidChangeSportsUserID:d];
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v9);
    }
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (unint64_t)sportsTopicNotificationsEnabledState
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setUserStartDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"userStartDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setDateLastOpened:(id)opened
{
  openedCopy = opened;
  [MEMORY[0x1E696AF00] isMainThread];
  dateLastOpened = [(FCUserInfo *)self dateLastOpened];
  v5 = dateLastOpened;
  if (!dateLastOpened || ([dateLastOpened dateByAddingTimeInterval:86400.0], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(openedCopy, "fc_isLaterThan:", v6), v6, v7))
  {
    [(FCUserInfo *)self _setUserInfoValue:openedCopy forKey:@"lastOpenedDate"];
    v8 = [FCModifyUserInfoCommand alloc];
    asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v10 = [(FCModifyUserInfoCommand *)v8 initWithUserInfoRecord:asCKRecord];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v10];
  }
}

- (BOOL)shouldShowDefaultForYou
{
  onboardingVersionNumber = [(FCUserInfo *)self onboardingVersionNumber];
  integerValue = [onboardingVersionNumber integerValue];

  return integerValue == 3;
}

- (BOOL)hasShownProgressivePersonalizationWelcomeBrick
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [standardUserDefaults BOOLForKey:@"personalization_reset_progressive_personalization_opt_in"];

  if (v3)
  {
    v4 = NewsCoreUserDefaults();
    [v4 setBool:0 forKey:@"has_show_personalization_brick"];

    standardUserDefaults2 = [MEMORY[0x1E695E000] standardUserDefaults];
    [standardUserDefaults2 setBool:0 forKey:@"personalization_reset_progressive_personalization_opt_in"];
  }

  progressivePersonalization = [objc_opt_class() progressivePersonalization];
  if (progressivePersonalization != 1)
  {
    v7 = NewsCoreUserDefaults();
    v8 = [v7 BOOLForKey:@"has_show_personalization_brick"];

    LOBYTE(progressivePersonalization) = v8;
  }

  return progressivePersonalization;
}

- (BOOL)userHasCompletedFavoritesSetup
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:@"user_has_completed_favorites_setup"];

  return v3;
}

- (void)setSportsOnboardingState:(int64_t)state
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"sportsOnboardingState"];

  date = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:date forKey:@"sportsOnboardingCompletedDate"];

  v7 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v9 = [(FCModifyUserInfoCommand *)v7 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v9];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v11 = [observers copy];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 userInfoDidChangeSportsOnboardingState:self];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)setShortcutsOnboardingState:(int64_t)state
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"shortcutsOnboardingState"];

  date = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:date forKey:@"shortcutsOnboardingCompletedDate"];

  v7 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v9 = [(FCModifyUserInfoCommand *)v7 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v9];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v11 = [observers copy];

  v12 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v19;
    do
    {
      v15 = 0;
      do
      {
        if (*v19 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v18 + 1) + 8 * v15);
        if (objc_opt_respondsToSelector())
        {
          [v16 userInfoDidChangeShortcutsOnboardingState:self];
        }

        ++v15;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v18 objects:v22 count:16];
    }

    while (v13);
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (int64_t)shortcutsOnboardingState
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  integerValue = [v2 integerValue];

  return integerValue;
}

- (void)setSportsSyncState:(int64_t)state
{
  v25 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:state];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:state];
  [(FCUserInfo *)self _setUserInfoValue:v7 forKey:@"sportsSyncState"];

  date = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:date forKey:@"sportsSyncStateLastSavedDate"];

  v9 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v11 = [(FCModifyUserInfoCommand *)v9 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v11];
  if (v5 != v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    v13 = [observers copy];

    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 userInfoDidChangeSportsSyncState:self];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setSportsFavoritesLastModifiedDate:(id)date
{
  v14 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  v5 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [dateCopy description];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Setting sports favorites last modified date=%@", &v12, 0xCu);
  }

  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"sportsFavoritesLastModifiedDate"];
  v8 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v10 = [(FCModifyUserInfoCommand *)v8 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v10];
  v11 = *MEMORY[0x1E69E9840];
}

- (NSDate)newsletterSignupLastSeenDate
{
  p_isa = &self->super.super.isa;
  v3 = MEMORY[0x1E695DF70];
  v4 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  if (p_isa)
  {
    v5 = [(FCUserInfo *)p_isa _userInfoValueForKey:?];
    p_isa = [(FCUserInfo *)p_isa _userInfoValueForKey:?];
  }

  else
  {
    v5 = 0;
  }

  v6 = [v3 arrayWithObjects:{v4, v5, p_isa, 0}];

  v7 = [objc_alloc(MEMORY[0x1E696AEB0]) initWithKey:0 ascending:0];
  v8 = [MEMORY[0x1E695DEC8] arrayWithObject:v7];
  [v6 sortUsingDescriptors:v8];

  firstObject = [v6 firstObject];

  return firstObject;
}

- (void)setNewsletterSignupLastSeenDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"newsletterSignupLastSeenDate"];
  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v18 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v18];
  if (self)
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = dateCopy;
    [v8 isMainThread];
    [(FCUserInfo *)self _setUserInfoValue:v9 forKey:@"personalizedNewsletterSignupLastSeenDate"];

    v10 = [FCModifyUserInfoCommand alloc];
    asCKRecord2 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v12 = [(FCModifyUserInfoCommand *)v10 initWithUserInfoRecord:asCKRecord2];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v12];
    v13 = MEMORY[0x1E696AF00];
    v14 = v9;
    [v13 isMainThread];
    [(FCUserInfo *)self _setUserInfoValue:v14 forKey:@"issuesNewsletterOptinLastSeenDate"];

    v15 = [FCModifyUserInfoCommand alloc];
    asCKRecord3 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v17 = [(FCModifyUserInfoCommand *)v15 initWithUserInfoRecord:asCKRecord3];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v17];
  }
}

- (void)setMonthlyALaCarteSubscriptionMeteredCount:(id)count
{
  v4 = MEMORY[0x1E696AF00];
  countCopy = count;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:countCopy forKey:@"monthlyMeteredCount"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setALaCarteSubscriptionMeteredCountLastResetDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"meteredCountLastResetDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setMonthlyBundleSubscriptionMeteredCount:(id)count
{
  v4 = MEMORY[0x1E696AF00];
  countCopy = count;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:countCopy forKey:@"monthlyPaidBundleMeteredCount"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setBundleSubscriptionMeteredCountLastResetDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"paidBundleMeteredCountLastResetDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setUpsellAppLaunchCount:(id)count
{
  v4 = MEMORY[0x1E696AF00];
  countCopy = count;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:countCopy forKey:@"upsellAppLaunchCount"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setLastAppLaunchUpsellInstanceID:(id)d
{
  v4 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dCopy forKey:@"lastAppLaunchUpsellInstanceID"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setAppLaunchUpsellLastSeenDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"upsellAppLaunchLastSeenDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setAppLaunchUpsellLastShownCampaignID:(id)d
{
  v4 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dCopy forKey:@"upsellAppLaunchLastShownCampaignID"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setAppLaunchUpsellLastPresenterBundleID:(id)d
{
  v4 = MEMORY[0x1E696AF00];
  dCopy = d;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dCopy forKey:@"upsellAppLaunchLastPresenterBundleID"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setPostPurchaseOnboardingLastShownDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"postPurchaseOnboardingLastSeenDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)refreshOnboardingVersion:(id)version
{
  versionCopy = version;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__FCUserInfo_refreshOnboardingVersion___block_invoke;
  v6[3] = &unk_1E7C39C20;
  v6[4] = self;
  v7 = versionCopy;
  v5 = versionCopy;
  [(FCPrivateDataController *)self performFirstSyncWithCallbackQueue:MEMORY[0x1E69E96A0] completion:v6];
}

void __39__FCUserInfo_refreshOnboardingVersion___block_invoke(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1)
  {
    v2 = [*(a1 + 32) onboardingVersionNumber];
    (*(v1 + 16))(v1, v2, 0);
  }
}

- (void)updateOnboardingVersion
{
  onboardingVersionNumber = [(FCUserInfo *)self onboardingVersionNumber];
  integerValue = [onboardingVersionNumber integerValue];

  if (integerValue < 5)
  {
    [(FCUserInfo *)self setMarketingNotificationsEnabled:1];
    [(FCUserInfo *)self setOnboardingVersionNumber:&unk_1F2E70218];
  }

  onboardingVersionNumber2 = [(FCUserInfo *)self onboardingVersionNumber];
  integerValue2 = [onboardingVersionNumber2 integerValue];

  if (integerValue2 <= 5)
  {
    [(FCUserInfo *)self setEndOfAudioTrackNotificationsEnabled:1];
    [(FCUserInfo *)self setOnboardingVersionNumber:&unk_1F2E70230];
  }

  v7 = FCBundle();
  v9 = [v7 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:FCIntegerRepresentationOfBundleShortVersionString(v9)];
  [(FCUserInfo *)self setOnboardingVersionNumber:v8];
}

- (void)maybeUpdateOnboardingVersion:(id)version
{
  versionCopy = version;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__FCUserInfo_maybeUpdateOnboardingVersion___block_invoke;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (v5[2]())
  {
    if (versionCopy)
    {
      versionCopy[2](versionCopy, 0);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__FCUserInfo_maybeUpdateOnboardingVersion___block_invoke_2;
    v6[3] = &unk_1E7C3C1F8;
    v7 = v5;
    v8 = versionCopy;
    v6[4] = self;
    [(FCPrivateDataController *)self performFirstSyncWithCallbackQueue:MEMORY[0x1E69E96A0] completion:v6];
  }
}

void __43__FCUserInfo_maybeUpdateOnboardingVersion___block_invoke_2(uint64_t a1)
{
  if ((*(*(a1 + 40) + 16))())
  {
    v2 = *(a1 + 48);
    if (v2)
    {
      v3 = *(v2 + 16);

      v3();
    }
  }

  else
  {
    v5 = [*(a1 + 32) onboardingVersionNumber];
    if (v5)
    {
      if ([v5 integerValue] < 5)
      {
        [*(a1 + 32) setMarketingNotificationsEnabled:1];
        [*(a1 + 32) setOnboardingVersionNumber:&unk_1F2E70218];
      }

      if ([v5 integerValue] <= 5)
      {
        [*(a1 + 32) setEndOfAudioTrackNotificationsEnabled:1];
        [*(a1 + 32) setOnboardingVersionNumber:&unk_1F2E70230];
      }
    }

    v4 = *(a1 + 48);
    if (v4)
    {
      (*(v4 + 16))(v4, 0);
    }
  }
}

- (void)markSavedAsViewed
{
  v19 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  date = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:date forKey:@"lastViewedSavedDate"];
  v4 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v6 = [(FCModifyUserInfoCommand *)v4 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v8 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(observers);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 userInfoDidChangeDateLastViewedSaved:self fromCloud:0];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setEditorialArticleVersion:(id)version
{
  versionCopy = version;
  if (versionCopy)
  {
    v4 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    v5 = v4;
    if (!v4 || ([v4 isEqualToString:versionCopy] & 1) == 0)
    {
      [(FCUserInfo *)self _setUserInfoValue:versionCopy forKey:@"editorialArticleVersion"];
      v6 = [FCModifyUserInfoCommand alloc];
      asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
      v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

      [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
    }
  }
}

- (void)setCanonicalLanguage:(id)language
{
  languageCopy = language;
  if (languageCopy)
  {
    v4 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    v5 = v4;
    if (!v4 || ([v4 isEqualToString:languageCopy] & 1) == 0)
    {
      [(FCUserInfo *)self _setUserInfoValue:languageCopy forKey:@"canonicalLanguage"];
      v6 = [FCModifyUserInfoCommand alloc];
      asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
      v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

      [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
    }
  }
}

- (void)setSportsTopicNotificationsEnabledState:(unint64_t)state
{
  v29 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  sportsTopicNotificationsEnabledState = [(FCUserInfo *)self sportsTopicNotificationsEnabledState];
  if (sportsTopicNotificationsEnabledState != state)
  {
    v6 = sportsTopicNotificationsEnabledState;
    v7 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v26 = v6;
      v27 = 2048;
      stateCopy = state;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Changing the sports topic notifications from: %ld to: %ld", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:state];
    [(FCUserInfo *)self _setUserInfoValue:v8 forKey:@"sportsTopicNotificationsEnabledState2"];

    v9 = [FCModifyUserInfoCommand alloc];
    asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v11 = [(FCModifyUserInfoCommand *)v9 initWithUserInfoRecord:asCKRecord];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v11];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    observers = [(FCPrivateDataController *)self observers];
    v13 = [observers copy];

    v14 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v21;
      do
      {
        v17 = 0;
        do
        {
          if (*v21 != v16)
          {
            objc_enumerationMutation(v13);
          }

          v18 = *(*(&v20 + 1) + 8 * v17);
          if (objc_opt_respondsToSelector())
          {
            [v18 userInfoDidChangeSportsTopicNotificationsEnabledState:self fromCloud:0];
          }

          ++v17;
        }

        while (v15 != v17);
        v15 = [v13 countByEnumeratingWithState:&v20 objects:v24 count:16];
      }

      while (v15);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
}

- (void)setAppReviewRequestLastShownDate:(id)date
{
  v4 = MEMORY[0x1E696AF00];
  dateCopy = date;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"appReviewRequestLastSeenDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)resetPuzzleNotificationsState
{
  v22 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v3 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Resetting puzzle notifications state", buf, 2u);
  }

  v4 = [MEMORY[0x1E696AD98] numberWithBool:0];
  [(FCUserInfo *)self _setUserInfoValue:v4 forKey:@"puzzleNotificationsEnabled2"];

  [(FCUserInfo *)self _setUserInfoValue:@"puzzleNotificationsLastChangedDate" forKey:?];
  v5 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v7 = [(FCModifyUserInfoCommand *)v5 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v9 = [observers copy];

  v10 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(v9);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 userInfoDidChangePuzzleNotificationsEnabled:self fromCloud:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [v9 countByEnumeratingWithState:&v16 objects:v21 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)resetRecipeBoxInitialImport
{
  v3 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    *v5 = 0;
    _os_log_impl(&dword_1B63EF000, v3, OS_LOG_TYPE_DEFAULT, "Resetting recipe box initial import state", v5, 2u);
  }

  v4 = NewsCoreUserDefaults();
  [v4 setBool:1 forKey:@"import_saved_to_recipe_version_should_reset"];

  [(FCUserInfo *)self setImportSavedToRecipeVersion:&unk_1F2E70248];
}

- (void)setPuzzleStatsStartDate:(id)date
{
  v23 = *MEMORY[0x1E69E9840];
  dateCopy = date;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = dateCopy;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Changing the puzzle stats start date to: %@", buf, 0xCu);
  }

  [(FCUserInfo *)self _setUserInfoValue:dateCopy forKey:@"puzzleStatsStartDate"];
  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v10 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v10)
  {
    v11 = v10;
    v12 = *v17;
    do
    {
      v13 = 0;
      do
      {
        if (*v17 != v12)
        {
          objc_enumerationMutation(observers);
        }

        v14 = *(*(&v16 + 1) + 8 * v13);
        if (objc_opt_respondsToSelector())
        {
          [v14 userInfoDidChangeDatePuzzleStatsStart:self fromCloud:0];
        }

        ++v13;
      }

      while (v11 != v13);
      v11 = [observers countByEnumeratingWithState:&v16 objects:v20 count:16];
    }

    while (v11);
  }

  v15 = *MEMORY[0x1E69E9840];
}

- (void)setImportSavedToRecipeVersion:(id)version
{
  v12 = *MEMORY[0x1E69E9840];
  versionCopy = version;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = versionCopy;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Changing the import saved to recipe version number to: %@", &v10, 0xCu);
  }

  [(FCUserInfo *)self _setUserInfoValue:versionCopy forKey:@"importSavedToRecipeVersion"];
  v6 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
  v9 = *MEMORY[0x1E69E9840];
}

void __24__FCUserInfo_asCKRecord__block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if (v2)
  {
    v2 = v2[14];
  }

  v6 = v2;
  v3 = [FCUserInfo userInfoCKRecordFromUserInfoDictionary:v6];
  v4 = *(*(a1 + 40) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;
}

+ (id)userInfoCKRecordFromUserInfoDictionary:(uint64_t)dictionary
{
  v2 = a2;
  objc_opt_self();
  v48 = [v2 objectForKey:@"feldsparID"];
  v47 = [v2 objectForKey:?];
  v46 = [v2 objectForKey:?];
  v45 = [v2 objectForKey:?];
  v44 = [v2 objectForKey:?];
  v43 = [v2 objectForKey:@"monthlyMeteredCount"];
  v42 = [v2 objectForKey:@"meteredCountLastResetDate"];
  v41 = [v2 objectForKey:?];
  v40 = [v2 objectForKey:?];
  v39 = [v2 objectForKey:?];
  v38 = [v2 objectForKey:?];
  v37 = [v2 objectForKey:?];
  v36 = [v2 objectForKey:?];
  v35 = [v2 objectForKey:?];
  v34 = [v2 objectForKey:?];
  v33 = [v2 objectForKey:?];
  v32 = [v2 objectForKey:?];
  v19 = [v2 objectForKey:@"lastOpenedDate"];
  v31 = [v2 objectForKey:?];
  v12 = [v2 objectForKey:@"lastViewedSavedDate"];
  v8 = [v2 objectForKey:@"lastViewedSharedWithYouDate"];
  v30 = [v2 objectForKey:?];
  v29 = [v2 objectForKey:?];
  v28 = [v2 objectForKey:?];
  v27 = [v2 objectForKey:?];
  v26 = [v2 objectForKey:?];
  v25 = [v2 objectForKey:?];
  v24 = [v2 objectForKey:?];
  v23 = [v2 objectForKey:?];
  v22 = [v2 objectForKey:?];
  v21 = [v2 objectForKey:?];
  v20 = [v2 objectForKey:?];
  v18 = [v2 objectForKey:?];
  v17 = [v2 objectForKey:?];
  v16 = [v2 objectForKey:?];
  v15 = [v2 objectForKey:?];
  v14 = [v2 objectForKey:?];
  v13 = [v2 objectForKey:?];
  v11 = [v2 objectForKey:?];
  v10 = [v2 objectForKey:?];
  v9 = [v2 objectForKey:?];

  v3 = objc_alloc(MEMORY[0x1E695BA90]);
  v7 = [v3 initWithZoneName:@"UserInfo" ownerName:*MEMORY[0x1E695B728]];
  v6 = [objc_alloc(MEMORY[0x1E695BA70]) initWithRecordName:@"user_info_static_record_name" zoneID:v7];
  v4 = [objc_alloc(MEMORY[0x1E695BA60]) initWithRecordType:@"UserInfo" recordID:v6];
  [v4 setValue:v44 forKey:@"finishFirstLaunchVersion"];
  [v4 setValue:v48 forKey:@"feldsparID"];
  [v4 setValue:v47 forKey:@"notificationsUserID"];
  [v4 setValue:v46 forKey:@"adsUserID"];
  [v4 setValue:v45 forKey:@"adsUserIDCreatedDate"];
  [v4 setValue:v19 forKey:@"lastOpenedDate"];
  [v4 setValue:v12 forKey:@"lastViewedSavedDate"];
  [v4 setValue:v8 forKey:@"lastViewedSharedWithYouDate"];
  [v4 setValue:v43 forKey:@"monthlyMeteredCount"];
  [v4 setValue:v42 forKey:@"meteredCountLastResetDate"];
  [v4 setValue:v41 forKey:@"monthlyPaidBundleMeteredCount"];
  [v4 setValue:v40 forKey:@"paidBundleMeteredCountLastResetDate"];
  [v4 setValue:v39 forKey:@"upsellAppLaunchCount"];
  [v4 setValue:v38 forKey:@"lastAppLaunchUpsellInstanceID"];
  [v4 setValue:v37 forKey:@"upsellAppLaunchLastSeenDate"];
  [v4 setValue:v36 forKey:@"upsellAppLaunchLastShownCampaignID"];
  [v4 setValue:v35 forKey:@"upsellAppLaunchLastPresenterBundleID"];
  [v4 setValue:v34 forKey:@"newsletterSignupLastSeenDate"];
  [v4 setValue:v33 forKey:@"personalizedNewsletterSignupLastSeenDate"];
  [v4 setValue:v32 forKey:@"issuesNewsletterOptinLastSeenDate"];
  [v4 setValue:v31 forKey:@"userStartDate"];
  [v4 setValue:v30 forKey:@"editorialArticleVersion"];
  [v4 setValue:v29 forKey:@"canonicalLanguage"];
  [v4 setValue:v28 forKey:@"marketingNotificationsEnabled"];
  [v4 setValue:v27 forKey:@"newIssueNotificationsEnabled"];
  [v4 setValue:v26 forKey:@"endOfAudioNotificationsEnabled"];
  [v4 setValue:v25 forKey:@"sportsTopicNotificationsEnabledState2"];
  [v4 setValue:v24 forKey:@"postPurchaseOnboardingLastSeenDate"];
  [v4 setValue:v23 forKey:@"appReviewRequestLastSeenDate"];
  [v4 setValue:v22 forKey:@"sportsOnboardingState"];
  [v4 setValue:v21 forKey:@"shortcutsOnboardingState"];
  [v4 setValue:v20 forKey:@"shortcutsOnboardingCompletedDate"];
  [v4 setValue:v18 forKey:@"sportsSyncState"];
  [v4 setValue:v17 forKey:@"sportsSyncStateLastSavedDate"];
  [v4 setValue:v16 forKey:@"sportsFavoritesLastModifiedDate"];
  [v4 setValue:v15 forKey:@"sportsOnboardingCompletedDate"];
  [v4 setValue:v14 forKey:@"sportsUserID"];
  [v4 setValue:v13 forKey:@"puzzleNotificationsEnabled2"];
  [v4 setValue:v11 forKey:@"puzzleNotificationsLastChangedDate"];
  [v4 setValue:v10 forKey:@"puzzleStatsStartDate"];
  [v4 setValue:v9 forKey:@"importSavedToRecipeVersion"];

  return v4;
}

- (void)setReadOnlyUserInfo:(uint64_t)info
{
  if (info)
  {
    objc_storeStrong((info + 112), a2);
  }
}

- (void)_generateTemporaryUserIDIfNeededForKey:(uint64_t)key
{
  if (key)
  {
    v3 = a2;
    v11 = [@"temporary-user-id-" stringByAppendingString:v3];
    v4 = [*(key + 112) objectForKeyedSubscript:v3];

    v5 = NewsCoreSensitiveUserDefaults();
    v6 = v5;
    if (v4)
    {
      [v5 removeObjectForKey:v11];
    }

    else
    {
      v7 = [v5 objectForKey:v11];

      v6 = v7;
      if (!v7)
      {
        v8 = NewsCoreSensitiveUserDefaults();
        uUID = [MEMORY[0x1E696AFB0] UUID];
        uUIDString = [uUID UUIDString];
        [v8 setObject:uUIDString forKey:v11];

        v6 = 0;
      }
    }
  }
}

- (void)addObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCUserInfo;
  [(FCPrivateDataController *)&v3 addObserver:observer];
}

- (void)removeObserver:(id)observer
{
  v3.receiver = self;
  v3.super_class = FCUserInfo;
  [(FCPrivateDataController *)&v3 removeObserver:observer];
}

- (void)syncWithCompletion:(id)completion
{
  completionCopy = completion;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__FCUserInfo_syncWithCompletion___block_invoke;
  v7[3] = &unk_1E7C3B860;
  v7[4] = self;
  v8 = completionCopy;
  v6.receiver = self;
  v6.super_class = FCUserInfo;
  v5 = completionCopy;
  [(FCPrivateDataController *)&v6 syncWithCompletion:v7];
}

void __33__FCUserInfo_syncWithCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v11 = a3;
  v4 = [MEMORY[0x1E695E000] standardUserDefaults];
  v5 = [v4 BOOLForKey:@"reset_onboarding_version"];

  if (v5)
  {
    v6 = [MEMORY[0x1E695E000] standardUserDefaults];
    v7 = [v6 integerForKey:@"onboarding_version_to_reset_to"];

    v8 = *(a1 + 32);
    v9 = [MEMORY[0x1E696AD98] numberWithInteger:v7];
    [v8 setOnboardingVersionNumber:v9];

    v10 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v10 setBool:0 forKey:@"reset_onboarding_version"];
  }

  (*(*(a1 + 40) + 16))();
}

- (void)accessTokenDidChangeForTagID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v6 = [observers copy];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [dCopy copy];
          [v11 userInfo:self didChangeAccessTokenForTagID:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)settingsDataDidChangeForPuzzleTypeID:(id)d
{
  v19 = *MEMORY[0x1E69E9840];
  dCopy = d;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v6 = [observers copy];

  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if (objc_opt_respondsToSelector())
        {
          v12 = [dCopy copy];
          [v11 userInfo:self didChangePuzzleTypeSettingsForPuzzleTypeID:v12];
        }

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)handleSyncWithChangedRecords:(id)records deletedRecordNames:(id)names
{
  v55 = *MEMORY[0x1E69E9840];
  recordsCopy = records;
  namesCopy = names;
  obj = recordsCopy;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [recordsCopy countByEnumeratingWithState:&v49 objects:v54 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v50;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v50 != v9)
        {
          objc_enumerationMutation(recordsCopy);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        recordType = [v11 recordType];
        if ([recordType isEqualToString:@"UserInfo"])
        {
          [(FCUserInfo *)&self->super.super.isa handleSyncWithUserInfoRecord:v11];
          goto LABEL_13;
        }

        if ([recordType isEqualToString:@"TagSettings"])
        {
          tagSettings = [(FCUserInfo *)self tagSettings];
          [tagSettings handleSyncWithTagSettingsRecord:v11];
        }

        else
        {
          if (![recordType isEqualToString:@"PuzzleTypeSettings"])
          {
            goto LABEL_13;
          }

          tagSettings = [(FCUserInfo *)self puzzleTypeSettings];
          [tagSettings handleSyncWithPuzzleTypeSettingsRecord:v11];
        }

LABEL_13:
      }

      v8 = [recordsCopy countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v8);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = namesCopy;
  v14 = [v43 countByEnumeratingWithState:&v45 objects:v53 count:16];
  if (v14)
  {
    v15 = v14;
    v16 = *v46;
    do
    {
      for (j = 0; j != v15; ++j)
      {
        if (*v46 != v16)
        {
          objc_enumerationMutation(v43);
        }

        v18 = *(*(&v45 + 1) + 8 * j);
        if ([v18 isEqualToString:@"user_info_static_record_name"])
        {
          if (!self)
          {
            continue;
          }

          localStore = [(FCPrivateDataController *)self localStore];
          v21 = __FCCKUserInfoKeys_block_invoke();
          [localStore removeObjectsForKeys:v21];

          localStore2 = [(FCPrivateDataController *)self localStore];
          uUID = [MEMORY[0x1E696AFB0] UUID];
          uUIDString = [uUID UUIDString];
          [localStore2 setObject:uUIDString forKey:@"feldsparID"];

          localStore3 = [(FCPrivateDataController *)self localStore];
          uUID2 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString2 = [uUID2 UUIDString];
          [localStore3 setObject:uUIDString2 forKey:@"notificationsUserID"];

          localStore4 = [(FCPrivateDataController *)self localStore];
          uUID3 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString3 = [uUID3 UUIDString];
          [localStore4 setObject:uUIDString3 forKey:@"adsUserID"];

          localStore5 = [(FCPrivateDataController *)self localStore];
          uUID4 = [MEMORY[0x1E696AFB0] UUID];
          uUIDString4 = [uUID4 UUIDString];
          [localStore5 setObject:uUIDString4 forKey:@"sportsUserID"];

          localStore6 = [(FCPrivateDataController *)self localStore];
          date = [MEMORY[0x1E695DF00] date];
          [localStore6 setObject:date forKey:@"adsUserIDCreatedDate"];

          localStore7 = [(FCPrivateDataController *)self localStore];
          date2 = [MEMORY[0x1E695DF00] date];
          [localStore7 setObject:date2 forKey:@"lastOpenedDate"];

          localStore8 = [(FCPrivateDataController *)self localStore];
          date3 = [MEMORY[0x1E695DF00] date];
          [localStore8 setObject:date3 forKey:@"userStartDate"];
        }

        else if (FCIsTagSettingsRecordName(v18, v19))
        {
          localStore8 = [(FCUserInfo *)self tagSettings];
          [localStore8 handleSyncWithDeletedTagSettingsRecordName:v18];
        }

        else
        {
          if (!FCIsPuzzleTypeSettingsRecordName(v18, v40))
          {
            continue;
          }

          localStore8 = [(FCUserInfo *)self puzzleTypeSettings];
          [localStore8 handleSyncWithDeletedPuzzleTypeSettingsRecordName:v18];
        }
      }

      v15 = [v43 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v15);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)handleSyncWithUserInfoRecord:(id *)record
{
  v263 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!record)
  {
    goto LABEL_222;
  }

  v227 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v226 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v230 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v225 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v224 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v223 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v222 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v221 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v220 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v4 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v228 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v186 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v193 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v195 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v200 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v217 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v205 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v203 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v191 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v215 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v213 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v209 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v207 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v211 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v231 = [(FCUserInfo *)record _userInfoValueForKey:?];
  v5 = MEMORY[0x1E695DFD8];
  v254[0] = @"lastAppLaunchUpsellInstanceID";
  v254[1] = @"upsellAppLaunchLastSeenDate";
  v254[2] = @"puzzleNotificationsEnabled2";
  v254[3] = @"puzzleNotificationsLastChangedDate";
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v254 count:4];
  v7 = [v5 setWithArray:v6];

  v246[0] = MEMORY[0x1E69E9820];
  v246[1] = 3221225472;
  v246[2] = __43__FCUserInfo_handleSyncWithUserInfoRecord___block_invoke;
  v246[3] = &unk_1E7C3C220;
  v8 = v7;
  v247 = v8;
  v212 = v3;
  v9 = v3;
  v248 = v9;
  [(FCUserInfo *)record _modifyUserInfoWithBlock:v246];
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  recordCopy = record;
  [defaultCenter postNotificationName:@"FCUserInfoChangedNotificationName" object:record];

  v11 = [v9 objectForKeyedSubscript:@"notificationsUserID"];
  v12 = v4;
  v13 = v11;
  v14 = v13;
  v239 = v9;
  v202 = v12;
  v199 = v8;
  if (!v13 || ![v13 length])
  {
    if (!v12 || ![v12 length] || (uUIDString = v12, objc_msgSend(v12, "hasSuffix:", @"-NoSync")))
    {
      uUID = [MEMORY[0x1E696AFB0] UUID];
      uUIDString = [uUID UUIDString];

      v19 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v256 = uUIDString;
        _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_INFO, "Syncing enabled, generated a new notificationsUserID: %@", buf, 0xCu);
      }
    }

    [(FCUserInfo *)record _setUserInfoValue:uUIDString forKey:@"notificationsUserID"];
    v20 = [FCModifyUserInfoCommand alloc];
    asCKRecord = [(FCUserInfo *)record asCKRecord];
    v22 = [(FCModifyUserInfoCommand *)v20 initWithUserInfoRecord:asCKRecord];

    [record addCommandToCommandQueue:v22];
    goto LABEL_18;
  }

  if (v12 && [v12 length])
  {
    uUIDString = v12;
    if ([v12 isEqualToString:v14])
    {
      goto LABEL_28;
    }

    [(FCUserInfo *)record _setUserInfoValue:v14 forKey:@"notificationsUserID"];
    v16 = FCPushNotificationsLog;
    uUIDString = v12;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v256 = v14;
      v17 = "Syncing enabled, updated with remote notificationsUserID: %@";
LABEL_17:
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
      uUIDString = v12;
    }
  }

  else
  {
    [(FCUserInfo *)record _setUserInfoValue:v14 forKey:@"notificationsUserID"];
    v16 = FCPushNotificationsLog;
    uUIDString = v12;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v256 = v14;
      v17 = "Syncing enabled, merged remote notificationsUserID: %@";
      goto LABEL_17;
    }
  }

LABEL_18:
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  observers = [record observers];
  v24 = [observers copy];

  v25 = [v24 countByEnumeratingWithState:&v249 objects:buf count:16];
  if (v25)
  {
    v26 = v25;
    v27 = *v250;
    do
    {
      for (i = 0; i != v26; ++i)
      {
        if (*v250 != v27)
        {
          objc_enumerationMutation(v24);
        }

        v29 = *(*(&v249 + 1) + 8 * i);
        if (objc_opt_respondsToSelector())
        {
          [v29 userInfoDidChangeNotificationsUserID:recordCopy];
        }
      }

      v26 = [v24 countByEnumeratingWithState:&v249 objects:buf count:16];
    }

    while (v26);
  }

  v9 = v239;
LABEL_28:

  v30 = [v9 objectForKeyedSubscript:@"adsUserID"];
  v31 = [v9 objectForKeyedSubscript:@"adsUserIDCreatedDate"];
  v32 = v228;
  v229 = v186;
  v33 = v30;
  v34 = v31;
  v219 = v32;
  v187 = v34;
  if (!v33 || (v35 = v34, ![v33 length]))
  {
    v36 = recordCopy;
    if (!v32 || (uUIDString2 = v32, date = v229, ![v32 length]))
    {
      v41 = [(FCUserInfo *)recordCopy _temporaryUserIDForKey:?];
      v42 = v41;
      if (v41)
      {
        uUIDString2 = v41;
        uUID2 = v32;
      }

      else
      {
        uUID2 = [MEMORY[0x1E696AFB0] UUID];
        uUIDString2 = [uUID2 UUIDString];
      }

      date = [MEMORY[0x1E695DF00] date];
    }

    v39 = recordCopy;
    v40 = uUIDString2;
LABEL_45:
    [(FCUserInfo *)v39 _persistAdsUserID:v40 createdDate:date];
    goto LABEL_46;
  }

  v36 = recordCopy;
  if (v32 && [v32 length])
  {
    if ([v32 isEqualToString:v33] & 1) != 0 || (-[FCUserInfo _shouldRotateAdsUserIDWithCreatedDate:](recordCopy, v35))
    {
      date = v229;
      uUIDString2 = v32;
      if (![(FCUserInfo *)recordCopy _shouldRotateAdsUserIDWithCreatedDate:v35])
      {
        goto LABEL_56;
      }

      v39 = recordCopy;
      uUIDString2 = v32;
      v40 = v32;
      date = v229;
      goto LABEL_45;
    }

    [(FCUserInfo *)recordCopy _setUserInfoValue:v33 forKey:@"adsUserID"];
    v44 = recordCopy;
    v45 = v35;
    v46 = @"adsUserIDCreatedDate";
  }

  else
  {
    v44 = recordCopy;
    v45 = v33;
    v46 = @"adsUserID";
  }

  [(FCUserInfo *)v44 _setUserInfoValue:v45 forKey:v46];
  date = v229;
  uUIDString2 = v32;
LABEL_46:
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  observers2 = [v36 observers];
  v48 = [observers2 copy];

  v49 = [v48 countByEnumeratingWithState:&v249 objects:buf count:16];
  if (v49)
  {
    v50 = v49;
    v51 = *v250;
    do
    {
      for (j = 0; j != v50; ++j)
      {
        if (*v250 != v51)
        {
          objc_enumerationMutation(v48);
        }

        v53 = *(*(&v249 + 1) + 8 * j);
        if (objc_opt_respondsToSelector())
        {
          [v53 userInfoDidChangeAdsUserID:recordCopy fromCloud:1];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v249 objects:buf count:16];
    }

    while (v50);
  }

  v9 = v239;
  v36 = recordCopy;
  v35 = v187;
LABEL_56:

  v54 = [v9 objectForKeyedSubscript:@"sportsUserID"];
  v55 = v200;
  v56 = v54;
  v57 = v56;
  v201 = v55;
  if (v56 && [v56 length])
  {
    if (v55)
    {
      if ([v55 length])
      {
        uUIDString3 = v55;
        if ([v55 isEqualToString:v57])
        {
          goto LABEL_80;
        }
      }
    }

    [(FCUserInfo *)v36 _setUserInfoValue:v57 forKey:@"sportsUserID"];
    uUIDString3 = v55;
  }

  else
  {
    if (!v55 || (uUIDString3 = v55, ![v55 length]))
    {
      v59 = [(FCUserInfo *)v36 _temporaryUserIDForKey:?];
      v60 = v59;
      if (v59)
      {
        uUIDString3 = v59;
      }

      else
      {
        [MEMORY[0x1E696AFB0] UUID];
        v55 = v61 = v55;
        uUIDString3 = [v55 UUIDString];
      }
    }

    [(FCUserInfo *)v36 _persistSportsUserID:uUIDString3];
  }

  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  observers3 = [v36 observers];
  v63 = [observers3 copy];

  v64 = [v63 countByEnumeratingWithState:&v249 objects:buf count:16];
  if (v64)
  {
    v65 = v64;
    v66 = *v250;
    do
    {
      for (k = 0; k != v65; ++k)
      {
        if (*v250 != v66)
        {
          objc_enumerationMutation(v63);
        }

        v68 = *(*(&v249 + 1) + 8 * k);
        if (objc_opt_respondsToSelector())
        {
          [v68 userInfoDidChangeSportsUserID:v36];
        }
      }

      v65 = [v63 countByEnumeratingWithState:&v249 objects:buf count:16];
    }

    while (v65);
  }

  v9 = v239;
LABEL_80:

  v69 = [v9 objectForKeyedSubscript:@"upsellAppLaunchLastSeenDate"];
  v70 = [v9 objectForKeyedSubscript:@"lastAppLaunchUpsellInstanceID"];
  v71 = v195;
  v72 = v193;
  v73 = v69;
  v74 = v70;
  if (v73 && (!v71 || [v73 compare:v71] == 1))
  {
    [(FCUserInfo *)v36 _setUserInfoValue:v73 forKey:@"upsellAppLaunchLastSeenDate"];
  }

  v75 = [v72 fc_numberFollowingString:@"v"];
  v76 = [v74 fc_numberFollowingString:@"v"];
  v77 = v76;
  if (v76 && (!v75 || [v76 compare:v75] == 1))
  {
    [(FCUserInfo *)v36 _setUserInfoValue:v74 forKey:@"lastAppLaunchUpsellInstanceID"];
  }

  v78 = [v9 objectForKeyedSubscript:@"puzzleNotificationsEnabled2"];
  v79 = [v9 objectForKeyedSubscript:@"puzzleNotificationsLastChangedDate"];
  v80 = v209;
  v81 = v207;
  v82 = v78;
  v83 = v79;
  v84 = v83;
  v194 = v72;
  v196 = v71;
  v208 = v81;
  v210 = v80;
  if (v83)
  {
    if (v81 && ![v83 fc_isLaterThan:v81])
    {
      goto LABEL_112;
    }

    v85 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v256 = v81;
      v257 = 2112;
      v258 = v84;
      _os_log_impl(&dword_1B63EF000, v85, OS_LOG_TYPE_DEFAULT, "Changing the puzzle notifications last change date from: %@ to: %@", buf, 0x16u);
    }

    [(FCUserInfo *)v36 _setUserInfoValue:v84 forKey:@"puzzleNotificationsLastChangedDate"];
  }

  else if (v81)
  {
    goto LABEL_112;
  }

  bOOLValue = [v80 BOOLValue];
  if (bOOLValue != [v82 BOOLValue])
  {
    v87 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v256 = v80;
      v257 = 2112;
      v258 = v82;
      _os_log_impl(&dword_1B63EF000, v87, OS_LOG_TYPE_DEFAULT, "Changing the puzzle notifications enabled state from: %@ to: %@", buf, 0x16u);
    }

    [(FCUserInfo *)v36 _setUserInfoValue:v82 forKey:@"puzzleNotificationsEnabled2"];
    goto LABEL_100;
  }

  if (v84)
  {
LABEL_100:
    v88 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v88, OS_LOG_TYPE_DEFAULT, "Applying changes to puzzle notification state and notifying observers.", buf, 2u);
    }

    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    observers4 = [v36 observers];
    v90 = [observers4 copy];

    v91 = [v90 countByEnumeratingWithState:&v249 objects:buf count:16];
    if (v91)
    {
      v92 = v91;
      v93 = *v250;
      do
      {
        for (m = 0; m != v92; ++m)
        {
          if (*v250 != v93)
          {
            objc_enumerationMutation(v90);
          }

          v95 = *(*(&v249 + 1) + 8 * m);
          if (objc_opt_respondsToSelector())
          {
            [v95 userInfoDidChangePuzzleNotificationsEnabled:v36 fromCloud:1];
          }
        }

        v92 = [v90 countByEnumeratingWithState:&v249 objects:buf count:16];
      }

      while (v92);
    }

    v9 = v239;
    v81 = v208;
    v80 = v210;
    goto LABEL_114;
  }

LABEL_112:
  v96 = FCPushNotificationsLog;
  if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1B63EF000, v96, OS_LOG_TYPE_DEFAULT, "No changes to existing puzzle notification state, skipping...", buf, 2u);
  }

LABEL_114:

  v97 = [v9 objectForKeyedSubscript:@"sportsSyncState"];
  v98 = [v9 objectForKeyedSubscript:@"sportsSyncStateLastSavedDate"];
  v99 = v217;
  v100 = v205;
  v101 = v97;
  v102 = v98;
  v103 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v104 = v103;
    v105 = [v100 description];
    v106 = [v102 description];
    *buf = 138413058;
    v256 = v99;
    v257 = 2112;
    v258 = v105;
    v259 = 2112;
    v260 = v101;
    v261 = 2112;
    v262 = v106;
    _os_log_impl(&dword_1B63EF000, v104, OS_LOG_TYPE_DEFAULT, "Sync local sports sync state, local=%@ localDate=%@, with remote=%@, remoteDate=%@", buf, 0x2Au);
  }

  v206 = v99;
  v218 = v100;
  if (v100 && ([v100 isEqualToDate:v102] & 1) == 0)
  {
    v107 = FCUserInfoLog;
    if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v107, OS_LOG_TYPE_DEFAULT, "Remote date and local sports sync state has changed, firing observers", buf, 2u);
    }

    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    observers5 = [v36 observers];
    v109 = [observers5 copy];

    v110 = [v109 countByEnumeratingWithState:&v249 objects:buf count:16];
    if (v110)
    {
      v111 = v110;
      v112 = *v250;
      do
      {
        for (n = 0; n != v111; ++n)
        {
          if (*v250 != v112)
          {
            objc_enumerationMutation(v109);
          }

          v114 = *(*(&v249 + 1) + 8 * n);
          if (objc_opt_respondsToSelector())
          {
            [v114 userInfoDidChangeSportsSyncState:recordCopy];
          }
        }

        v111 = [v109 countByEnumeratingWithState:&v249 objects:buf count:16];
      }

      while (v111);
    }

    v9 = v239;
    v36 = recordCopy;
    v99 = v206;
    v100 = v218;
  }

  v115 = [v9 objectForKeyedSubscript:@"sportsOnboardingState"];
  v116 = [v9 objectForKeyedSubscript:@"sportsOnboardingCompletedDate"];
  v117 = v203;
  v118 = v191;
  v119 = v115;
  v120 = v116;
  v121 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v122 = v121;
    v123 = [v118 description];
    v124 = [v120 description];
    *buf = 138413058;
    v256 = v117;
    v257 = 2112;
    v258 = v123;
    v259 = 2112;
    v260 = v119;
    v261 = 2112;
    v262 = v124;
    _os_log_impl(&dword_1B63EF000, v122, OS_LOG_TYPE_DEFAULT, "Sync local sports onboarding state, local=%@ localDate=%@, with remote=%@, remoteDate=%@", buf, 0x2Au);
  }

  v204 = v117;
  if (v118 && ([v118 isEqualToDate:v120] & 1) == 0)
  {
    v125 = FCUserInfoLog;
    if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1B63EF000, v125, OS_LOG_TYPE_DEFAULT, "Remote date and local sports onboarding state has changed, firing observers", buf, 2u);
    }

    v251 = 0u;
    v252 = 0u;
    v249 = 0u;
    v250 = 0u;
    observers6 = [v36 observers];
    v127 = [observers6 copy];

    v128 = [v127 countByEnumeratingWithState:&v249 objects:buf count:16];
    if (v128)
    {
      v129 = v128;
      v130 = *v250;
      do
      {
        for (ii = 0; ii != v129; ++ii)
        {
          if (*v250 != v130)
          {
            objc_enumerationMutation(v127);
          }

          v132 = *(*(&v249 + 1) + 8 * ii);
          if (objc_opt_respondsToSelector())
          {
            [v132 userInfoDidChangeSportsOnboardingState:recordCopy];
          }
        }

        v129 = [v127 countByEnumeratingWithState:&v249 objects:buf count:16];
      }

      while (v129);
    }

    v9 = v239;
    v36 = recordCopy;
    v100 = v218;
    v117 = v204;
  }

  v192 = v118;
  v133 = [v9 objectForKeyedSubscript:@"shortcutsOnboardingState"];
  v134 = [v9 objectForKeyedSubscript:@"shortcutsOnboardingCompletedDate"];
  v135 = v215;
  v136 = v213;
  v137 = v133;
  v138 = v134;
  v139 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v140 = v139;
    v141 = [v136 description];
    v142 = [v138 description];
    *buf = 138413058;
    v256 = v135;
    v257 = 2112;
    v258 = v141;
    v259 = 2112;
    v260 = v137;
    v261 = 2112;
    v262 = v142;
    _os_log_impl(&dword_1B63EF000, v140, OS_LOG_TYPE_DEFAULT, "Sync local shortcuts onboarding state, local=%@ localDate=%@, with remote=%@, remoteDate=%@", buf, 0x2Au);
  }

  v214 = v136;
  v216 = v135;
  if (v136 == v138)
  {
    if (v135 != v137)
    {
LABEL_153:
      v144 = FCUserInfoLog;
      if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1B63EF000, v144, OS_LOG_TYPE_DEFAULT, "Remote date and local shortcuts onboarding state has changed, firing observers", buf, 2u);
      }

      v251 = 0u;
      v252 = 0u;
      v249 = 0u;
      v250 = 0u;
      observers7 = [v36 observers];
      v146 = [observers7 copy];

      v147 = [v146 countByEnumeratingWithState:&v249 objects:buf count:16];
      if (v147)
      {
        v148 = v147;
        v149 = *v250;
        do
        {
          for (jj = 0; jj != v148; ++jj)
          {
            if (*v250 != v149)
            {
              objc_enumerationMutation(v146);
            }

            v151 = *(*(&v249 + 1) + 8 * jj);
            if (objc_opt_respondsToSelector())
            {
              [v151 userInfoDidChangeShortcutsOnboardingState:v36];
            }
          }

          v148 = [v146 countByEnumeratingWithState:&v249 objects:buf count:16];
        }

        while (v148);
      }

      v9 = v239;
      v100 = v218;
      v136 = v214;
    }
  }

  else
  {
    v143 = [v136 isEqualToDate:v138];
    if (v135 != v137 || (v143 & 1) == 0)
    {
      goto LABEL_153;
    }
  }

  v152 = [v9 objectForKeyedSubscript:@"importSavedToRecipeVersion"];
  v153 = v231;
  v154 = v152;
  v155 = v154;
  if (v154 && (!v153 || [v154 compare:v153] == 1))
  {
    [(FCUserInfo *)v36 _setUserInfoValue:v155 forKey:@"importSavedToRecipeVersion"];
  }

  v156 = [v9 objectForKeyedSubscript:@"feldsparID"];
  v238 = [v227 isEqualToString:v156];

  v157 = [v9 objectForKeyedSubscript:@"finishFirstLaunchVersion"];
  v237 = [v225 isEqual:v157];

  v158 = [v9 objectForKeyedSubscript:@"lastViewedSavedDate"];
  if (v226 == v158)
  {
    v236 = 0;
  }

  else
  {
    v236 = [v226 isEqualToDate:v158] ^ 1;
  }

  v159 = [v9 objectForKeyedSubscript:@"editorialArticleVersion"];
  v160 = v159;
  v240 = 0;
  v197 = v158;
  v198 = v153;
  if (v230 && v159)
  {
    v240 = [v230 isEqualToString:v159] ^ 1;
  }

  v190 = v160;
  bOOLValue2 = [v224 BOOLValue];
  v162 = [v9 objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  bOOLValue3 = [v162 BOOLValue];

  bOOLValue4 = [v223 BOOLValue];
  v165 = [v9 objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  bOOLValue5 = [v165 BOOLValue];

  bOOLValue6 = [v222 BOOLValue];
  v167 = [v9 objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  bOOLValue7 = [v167 BOOLValue];

  integerValue = [v221 integerValue];
  v168 = [v9 objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  integerValue2 = [v168 integerValue];

  v170 = [v9 objectForKeyedSubscript:@"lastViewedSharedWithYouDate"];
  v189 = v170;
  if (v220 == v170)
  {
    v171 = 0;
  }

  else
  {
    v171 = [v220 isEqualToDate:v170] ^ 1;
  }

  v172 = bOOLValue2 ^ bOOLValue3;
  v173 = bOOLValue4 ^ bOOLValue5;
  v174 = [v9 objectForKeyedSubscript:@"puzzleStatsStartDate"];
  v175 = v211;
  if (v211 == v174)
  {
    v176 = 0;
  }

  else
  {
    v176 = [v211 isEqualToDate:v174] ^ 1;
  }

  v3 = v212;
  if (((v238 & v237 ^ 1 | v236 | v240 | v172 | v173 | v171) & 1) != 0 || v176)
  {
    v188 = v174;
    v244 = 0u;
    v245 = 0u;
    v242 = 0u;
    v243 = 0u;
    observers8 = [recordCopy observers];
    v178 = [observers8 copy];

    obj = v178;
    v179 = [v178 countByEnumeratingWithState:&v242 objects:v253 count:16];
    if (v179)
    {
      v180 = v179;
      v181 = *v243;
      do
      {
        for (kk = 0; kk != v180; ++kk)
        {
          if (*v243 != v181)
          {
            objc_enumerationMutation(obj);
          }

          v183 = *(*(&v242 + 1) + 8 * kk);
          if ((v238 & 1) == 0)
          {
            v184 = *(*(&v242 + 1) + 8 * kk);
            if (objc_opt_respondsToSelector())
            {
              [v183 userInfoDidChangeFeldsparID:recordCopy fromCloud:1];
            }
          }

          if (v237 & 1) == 0 && (objc_opt_respondsToSelector())
          {
            [v183 userInfoDidChangeOnboardingStatus:recordCopy];
          }

          if (v236 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeDateLastViewedSaved:recordCopy fromCloud:1];
          }

          if (v240 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeEditorialArticleVersion:recordCopy];
          }

          if (v172 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeMarketingNotificationsEnabled:recordCopy fromCloud:1];
          }

          if (v173 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeNewIssueNotificationsEnabled:recordCopy fromCloud:1];
          }

          if (bOOLValue6 != bOOLValue7 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeEndOfAudioTrackNotificationsEnabled:recordCopy fromCloud:1];
          }

          if (integerValue != integerValue2 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeSportsTopicNotificationsEnabledState:recordCopy fromCloud:1];
          }

          if (v171 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeDateLastViewedSharedWithYou:recordCopy fromCloud:1];
          }

          if (v176 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeDatePuzzleStatsStart:recordCopy fromCloud:1];
          }
        }

        v180 = [obj countByEnumeratingWithState:&v242 objects:v253 count:16];
      }

      while (v180);
    }

    v175 = v211;
    v3 = v212;
    v100 = v218;
    v174 = v188;
  }

LABEL_222:
  v185 = *MEMORY[0x1E69E9840];
}

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)d
{
  [MEMORY[0x1E696AF00] isMainThread];
  array = [MEMORY[0x1E695DF70] array];
  [array addObject:@"user_info_static_record_name"];
  tagSettings = [(FCUserInfo *)self tagSettings];
  allTagSettingsRecordNames = [tagSettings allTagSettingsRecordNames];
  [array addObjectsFromArray:allTagSettingsRecordNames];

  puzzleTypeSettings = [(FCUserInfo *)self puzzleTypeSettings];
  allPuzzleTypeSettingsRecordNames = [puzzleTypeSettings allPuzzleTypeSettingsRecordNames];
  [array addObjectsFromArray:allPuzzleTypeSettingsRecordNames];

  return array;
}

void __43__FCUserInfo_handleSyncWithUserInfoRecord___block_invoke(uint64_t a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = __FCCKUserInfoKeys_block_invoke();
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if (([*(a1 + 32) containsObject:{v9, v12}] & 1) == 0)
        {
          v10 = [*(a1 + 40) objectForKeyedSubscript:v9];
          [v3 setObject:v10 forKey:v9];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)markSharedWithYouAsViewed
{
  v19 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  date = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:date forKey:@"lastViewedSharedWithYouDate"];
  v4 = [FCModifyUserInfoCommand alloc];
  asCKRecord = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v6 = [(FCModifyUserInfoCommand *)v4 initWithUserInfoRecord:asCKRecord];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  observers = [(FCPrivateDataController *)self observers];
  v8 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v15;
    do
    {
      v11 = 0;
      do
      {
        if (*v15 != v10)
        {
          objc_enumerationMutation(observers);
        }

        v12 = *(*(&v14 + 1) + 8 * v11);
        if (objc_opt_respondsToSelector())
        {
          [v12 userInfoDidChangeDateLastViewedSharedWithYou:self fromCloud:0];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [observers countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

+ (id)backingRecordZoneIDs
{
  v7[1] = *MEMORY[0x1E69E9840];
  v2 = objc_alloc(MEMORY[0x1E695BA90]);
  v3 = [v2 initWithZoneName:@"UserInfo" ownerName:*MEMORY[0x1E695B728]];
  v7[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v7 count:1];

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

+ (id)commandsToMergeLocalDataToCloud:(id)cloud privateDataDirectory:(id)directory
{
  v5 = MEMORY[0x1E695DF70];
  cloudCopy = cloud;
  array = [v5 array];
  v8 = [FCModifyUserInfoCommand alloc];
  asDictionary = [cloudCopy asDictionary];
  v10 = [(FCUserInfo *)self userInfoCKRecordFromUserInfoDictionary:asDictionary];
  v11 = [(FCModifyUserInfoCommand *)v8 initWithUserInfoRecord:v10];

  [array addObject:v11];
  v12 = [FCTagSettings commandsToMergeLocalDataToCloud:cloudCopy];
  [array addObjectsFromArray:v12];
  v13 = [FCPuzzleTypeSettings commandsToMergeLocalDataToCloud:cloudCopy];

  [array addObjectsFromArray:v13];

  return array;
}

- (id)recordsForRestoringZoneName:(id)name
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __42__FCUserInfo_recordsForRestoringZoneName___block_invoke;
  v5[3] = &unk_1E7C36D40;
  v5[4] = self;
  v3 = [MEMORY[0x1E695DEC8] fc_array:v5];

  return v3;
}

void __42__FCUserInfo_recordsForRestoringZoneName___block_invoke(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v4 = a2;
  v5 = [(FCUserInfo *)v3 asCKRecord];
  [v4 addObject:v5];

  v6 = [*(a1 + 32) tagSettings];
  v7 = [v6 allTagSettingsRecords];
  [v4 addObjectsFromArray:v7];

  v9 = [*(a1 + 32) puzzleTypeSettings];
  v8 = [v9 allPuzzleTypeSettingsRecords];
  [v4 addObjectsFromArray:v8];
}

void __39__FCUserInfo__modifyUserInfoWithBlock___block_invoke(uint64_t a1)
{
  v3 = [*(a1 + 32) localStore];
  v2 = [v3 asDictionary];
  [(FCUserInfo *)*(a1 + 32) setReadOnlyUserInfo:v2];
}

void __35__FCUserInfo__userInfoValueForKey___block_invoke(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v2 = v2[14];
  }

  v3 = a1[5];
  v7 = v2;
  v4 = [v7 objectForKeyedSubscript:v3];
  v5 = *(a1[6] + 8);
  v6 = *(v5 + 40);
  *(v5 + 40) = v4;
}

@end