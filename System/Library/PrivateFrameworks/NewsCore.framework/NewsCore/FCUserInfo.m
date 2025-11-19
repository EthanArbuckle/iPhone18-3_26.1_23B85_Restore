@interface FCUserInfo
+ (id)backingRecordZoneIDs;
+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4;
+ (id)desiredKeys;
+ (id)overrideFeldsparID;
+ (id)userInfoCKRecordFromUserInfoDictionary:(uint64_t)a1;
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
- (FCUserInfo)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5;
- (NSDate)newsletterSignupLastSeenDate;
- (NSString)adsUserID;
- (NSString)feldsparID;
- (NSString)sportsUserID;
- (double)ageOfPlaceholderFSID;
- (id)_temporaryUserIDForKey:(uint64_t)a1;
- (id)_userInfoValueForKey:(id *)a1;
- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3;
- (id)asCKRecord;
- (id)recordsForRestoringZoneName:(id)a3;
- (int64_t)shortcutsOnboardingState;
- (int64_t)sportsOnboardingState;
- (int64_t)sportsSyncState;
- (uint64_t)_modifyUserInfoWithBlock:(uint64_t)result;
- (uint64_t)_shouldRotateAdsUserIDWithCreatedDate:(id *)a1;
- (unint64_t)progressivePersonalization;
- (unint64_t)sportsTopicNotificationsEnabledState;
- (void)_clearTemporaryUserIDForKey:(uint64_t)a1;
- (void)_generateTemporaryUserIDIfNeededForKey:(uint64_t)a1;
- (void)_persistAdsUserID:(void *)a3 createdDate:;
- (void)_persistSportsUserID:(id *)a1;
- (void)_setUserInfoValue:(void *)a3 forKey:;
- (void)accessTokenDidChangeForTagID:(id)a3;
- (void)addObserver:(id)a3;
- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4;
- (void)handleSyncWithUserInfoRecord:(id *)a1;
- (void)loadFeldsparIDWithCompletion:(id)a3;
- (void)loadLocalCachesFromStore;
- (void)markSavedAsViewed;
- (void)markSharedWithYouAsViewed;
- (void)maybeUpdateOnboardingVersion:(id)a3;
- (void)prepareForUse;
- (void)refreshOnboardingVersion:(id)a3;
- (void)removeObserver:(id)a3;
- (void)resetPuzzleNotificationsState;
- (void)resetRecipeBoxInitialImport;
- (void)resetSportsID;
- (void)resetUserIDs;
- (void)setALaCarteSubscriptionMeteredCountLastResetDate:(id)a3;
- (void)setAdsUserID:(id)a3;
- (void)setAppLaunchUpsellLastPresenterBundleID:(id)a3;
- (void)setAppLaunchUpsellLastSeenDate:(id)a3;
- (void)setAppLaunchUpsellLastShownCampaignID:(id)a3;
- (void)setAppReviewRequestLastShownDate:(id)a3;
- (void)setBundleSubscriptionMeteredCountLastResetDate:(id)a3;
- (void)setCanonicalLanguage:(id)a3;
- (void)setDateLastOpened:(id)a3;
- (void)setEditorialArticleVersion:(id)a3;
- (void)setFeldsparID:(id)a3;
- (void)setImportSavedToRecipeVersion:(id)a3;
- (void)setLastAppLaunchUpsellInstanceID:(id)a3;
- (void)setMonthlyALaCarteSubscriptionMeteredCount:(id)a3;
- (void)setMonthlyBundleSubscriptionMeteredCount:(id)a3;
- (void)setNewsletterSignupLastSeenDate:(id)a3;
- (void)setOnboardingVersionNumber:(id)a3;
- (void)setPostPurchaseOnboardingLastShownDate:(id)a3;
- (void)setPuzzleStatsStartDate:(id)a3;
- (void)setReadOnlyUserInfo:(uint64_t)a1;
- (void)setShortcutsOnboardingState:(int64_t)a3;
- (void)setSportsFavoritesLastModifiedDate:(id)a3;
- (void)setSportsOnboardingState:(int64_t)a3;
- (void)setSportsSyncState:(int64_t)a3;
- (void)setSportsTopicNotificationsEnabledState:(unint64_t)a3;
- (void)setSportsUserID:(id)a3;
- (void)setUpsellAppLaunchCount:(id)a3;
- (void)setUserStartDate:(id)a3;
- (void)settingsDataDidChangeForPuzzleTypeID:(id)a3;
- (void)syncWithCompletion:(id)a3;
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
  v3 = [(FCUserInfo *)self notificationsUserID];
  if (!v3 || (v4 = v3, -[FCUserInfo notificationsUserID](self, "notificationsUserID"), v5 = objc_claimAutoreleasedReturnValue(), v6 = [v5 length], v5, v4, !v6))
  {
    v7 = [MEMORY[0x1E696AFB0] UUID];
    v8 = [v7 UUIDString];

    [(FCUserInfo *)self _setUserInfoValue:v8 forKey:@"notificationsUserID"];
    v9 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v24 = v8;
      _os_log_impl(&dword_1B63EF000, v9, OS_LOG_TYPE_INFO, "Generated a new notificationsUserID: %@", buf, 0xCu);
    }
  }

  v10 = +[FCAppleAccount sharedAccount];
  v11 = [v10 isPrivateDataSyncingEnabled];

  if ((v11 & 1) == 0)
  {
    v12 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    if (([v12 hasSuffix:@"-NoSync"] & 1) == 0)
    {
      v13 = [MEMORY[0x1E696AFB0] UUID];
      v14 = [v13 UUIDString];

      v12 = [v14 stringByAppendingString:@"-NoSync"];

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
    v18 = [MEMORY[0x1E696AFB0] UUID];
    v19 = [v18 UUIDString];

    [(FCUserInfo *)self _setUserInfoValue:v19 forKey:@"adsUserID"];
    v20 = [MEMORY[0x1E695DF00] date];
    [(FCUserInfo *)self _setUserInfoValue:v20 forKey:@"adsUserIDCreatedDate"];
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (void)loadLocalCachesFromStore
{
  v3 = [(FCPrivateDataController *)self localStore];
  v4 = [v3 asDictionary];
  [(FCUserInfo *)self setReadOnlyUserInfo:v4];

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
        v14 = [MEMORY[0x1E696AFB0] UUID];
        v15 = [v14 UUIDString];
        [v13 setObject:v15 forKey:@"temporary-fsid"];
      }

      v16 = NewsCoreSensitiveUserDefaults();
      v17 = [MEMORY[0x1E695DF00] date];
      [v16 setObject:v17 forKey:@"temporary-fsid-creation-date"];

      v11 = 0;
    }
  }

  [(FCUserInfo *)self _generateTemporaryUserIDIfNeededForKey:?];
  [(FCUserInfo *)self _generateTemporaryUserIDIfNeededForKey:?];
  v18 = [(FCUserInfo *)self tagSettings];
  [v18 loadLocalCachesFromStore];

  v19 = [(FCUserInfo *)self puzzleTypeSettings];
  [v19 loadLocalCachesFromStore];
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
  v3 = [v2 integerValue];

  return v3;
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
  v3 = [v2 integerValue];

  return v3;
}

- (BOOL)newIssueNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)marketingNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)endOfAudioTrackNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v3 = [v2 BOOLValue];

  return v3;
}

- (BOOL)puzzleNotificationsEnabled
{
  v2 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v3 = [v2 BOOLValue];

  return v3;
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
  v3 = [(FCUserInfo *)self onboardingVersionNumber];
  v4 = [v3 integerValue];

  if (v4 > 6)
  {
    return 0;
  }

  v6 = [(FCUserInfo *)self onboardingVersionNumber];
  v7 = [v6 integerValue];

  return v7 != 6;
}

- (FCUserInfo)initWithContext:(id)a3 pushNotificationCenter:(id)a4 storeDirectory:(id)a5
{
  v17.receiver = self;
  v17.super_class = FCUserInfo;
  v5 = [(FCPrivateDataController *)&v17 initWithContext:a3 pushNotificationCenter:a4 storeDirectory:a5];
  if (v5)
  {
    v6 = [FCTagSettings alloc];
    v7 = [(FCPrivateDataController *)v5 localStore];
    v8 = [(FCTagSettings *)v6 initWithStore:v7 tagSettingsDelegate:v5];
    tagSettings = v5->_tagSettings;
    v5->_tagSettings = v8;

    v10 = [FCPuzzleTypeSettings alloc];
    v11 = [(FCPrivateDataController *)v5 localStore];
    v12 = [(FCPuzzleTypeSettings *)v10 initWithStore:v11 delegate:v5];
    puzzleTypeSettings = v5->_puzzleTypeSettings;
    v5->_puzzleTypeSettings = v12;

    v14 = objc_alloc_init(FCMTWriterLock);
    userInfoLock = v5->_userInfoLock;
    v5->_userInfoLock = v14;
  }

  return v5;
}

- (void)_setUserInfoValue:(void *)a3 forKey:
{
  v5 = a2;
  v6 = a3;
  v7 = v6;
  if (a1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __39__FCUserInfo__setUserInfoValue_forKey___block_invoke;
    v8[3] = &unk_1E7C3C220;
    v9 = v6;
    v10 = v5;
    [(FCUserInfo *)a1 _modifyUserInfoWithBlock:v8];
  }
}

- (id)_userInfoValueForKey:(id *)a1
{
  v3 = a2;
  if (a1)
  {
    [a1 assertReadyForUse];
    v9 = 0;
    v10 = &v9;
    v11 = 0x3032000000;
    v12 = __Block_byref_object_copy__26;
    v13 = __Block_byref_object_dispose__26;
    v14 = 0;
    v4 = a1[15];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __35__FCUserInfo__userInfoValueForKey___block_invoke;
    v6[3] = &unk_1E7C37138;
    v8 = &v9;
    v6[4] = a1;
    v7 = v3;
    [v4 performReadSync:v6];

    a1 = v10[5];
    _Block_object_dispose(&v9, 8);
  }

  return a1;
}

- (uint64_t)_shouldRotateAdsUserIDWithCreatedDate:(id *)a1
{
  v3 = a2;
  v4 = v3;
  if (a1)
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
      v9 = [MEMORY[0x1E695DF00] date];
      v10 = [v8 fc_isEarlierThanOrEqualTo:v9];
    }

    else
    {
      v6 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
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

- (void)setOnboardingVersionNumber:(id)a3
{
  v31 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = FCDefaultLog;
  if (os_log_type_enabled(FCDefaultLog, OS_LOG_TYPE_INFO))
  {
    v6 = v5;
    v7 = NSStringFromFCOnboardingVersionNumber([v4 integerValue]);
    *buf = 138412546;
    v28 = v4;
    v29 = 2112;
    v30 = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_INFO, "Onboarding version number being set to %@ (%@)", buf, 0x16u);
  }

  if ([v4 intValue] == 4)
  {
    v8 = [(FCUserInfo *)self onboardingVersionNumber];
    v9 = [v8 intValue];

    if (v9 == 3)
    {
      v10 = [MEMORY[0x1E695E000] standardUserDefaults];
      [v10 setBool:1 forKey:@"onboarding_completed_from_personalize_news"];
    }
  }

  [(FCUserInfo *)self _setUserInfoValue:v4 forKey:@"finishFirstLaunchVersion"];
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v11 = [(FCPrivateDataController *)self observers];
  v12 = [v11 copy];

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
  v19 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v20 = [(FCModifyUserInfoCommand *)v18 initWithUserInfoRecord:v19];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v20];
  v21 = *MEMORY[0x1E69E9840];
}

- (id)asCKRecord
{
  v1 = a1;
  if (a1)
  {
    v5 = 0;
    v6 = &v5;
    v7 = 0x3032000000;
    v8 = __Block_byref_object_copy__26;
    v9 = __Block_byref_object_dispose__26;
    v10 = 0;
    v2 = a1[15];
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __24__FCUserInfo_asCKRecord__block_invoke;
    v4[3] = &unk_1E7C37160;
    v4[4] = v1;
    v4[5] = &v5;
    [v2 performReadSync:v4];

    v1 = v6[5];
    _Block_object_dispose(&v5, 8);
  }

  return v1;
}

- (void)loadFeldsparIDWithCompletion:(id)a3
{
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];

  if (v5)
  {
    v9[1] = MEMORY[0x1E69E9820];
    v9[2] = 3221225472;
    v9[3] = __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke;
    v9[4] = &unk_1E7C379C8;
    v6 = &v10;
    v10 = v4;
    v4[2](v4);
  }

  else
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __43__FCUserInfo_loadFeldsparIDWithCompletion___block_invoke_2;
    v8[3] = &unk_1E7C39C20;
    v6 = v9;
    v8[4] = self;
    v9[0] = v4;
    v7 = v4;
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
    v5 = [v2 localStore];
    v4[2](v4, v5);

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
  v8 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v9 = [(FCModifyUserInfoCommand *)v7 initWithUserInfoRecord:v8];

  v18 = v9;
  [(FCPrivateDataController *)self addCommandToCommandQueue:v9];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = [(FCPrivateDataController *)self observers];
  v11 = [v10 copy];

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

- (void)_clearTemporaryUserIDForKey:(uint64_t)a1
{
  if (a1)
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
  v5 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v6 = [(FCModifyUserInfoCommand *)v4 initWithUserInfoRecord:v5];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v6];
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v7 = [(FCPrivateDataController *)self observers];
  v8 = [v7 copy];

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

- (void)setFeldsparID:(id)a3
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v4 forKey:@"feldsparID"];
  v5 = [FCModifyUserInfoCommand alloc];
  v6 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v7 = [(FCModifyUserInfoCommand *)v5 initWithUserInfoRecord:v6];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(FCPrivateDataController *)self observers];
  v9 = [v8 copy];

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

- (void)setAdsUserID:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  v6 = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)&self->super.super.isa _persistAdsUserID:v5 createdDate:v6];
}

- (void)_persistAdsUserID:(void *)a3 createdDate:
{
  v22 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a1)
  {
    [(FCUserInfo *)a1 _setUserInfoValue:a2 forKey:@"adsUserID"];
    [(FCUserInfo *)a1 _setUserInfoValue:v5 forKey:@"adsUserIDCreatedDate"];
    v6 = [FCModifyUserInfoCommand alloc];
    v7 = [(FCUserInfo *)a1 asCKRecord];
    v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

    [a1 addCommandToCommandQueue:v8];
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [a1 observers];
    v10 = [v9 copy];

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
            [v15 userInfoDidChangeAdsUserID:a1 fromCloud:0];
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

- (id)_temporaryUserIDForKey:(uint64_t)a1
{
  if (a1)
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

- (void)setSportsUserID:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)&self->super.super.isa _persistSportsUserID:v5];
}

- (void)_persistSportsUserID:(id *)a1
{
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    [(FCUserInfo *)a1 _setUserInfoValue:a2 forKey:@"sportsUserID"];
    v3 = [FCModifyUserInfoCommand alloc];
    v4 = [(FCUserInfo *)a1 asCKRecord];
    v5 = [(FCModifyUserInfoCommand *)v3 initWithUserInfoRecord:v4];

    [a1 addCommandToCommandQueue:v5];
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v6 = [a1 observers];
    v7 = [v6 copy];

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
            [v12 userInfoDidChangeSportsUserID:a1];
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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setUserStartDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"userStartDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setDateLastOpened:(id)a3
{
  v11 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v4 = [(FCUserInfo *)self dateLastOpened];
  v5 = v4;
  if (!v4 || ([v4 dateByAddingTimeInterval:86400.0], v6 = objc_claimAutoreleasedReturnValue(), v7 = objc_msgSend(v11, "fc_isLaterThan:", v6), v6, v7))
  {
    [(FCUserInfo *)self _setUserInfoValue:v11 forKey:@"lastOpenedDate"];
    v8 = [FCModifyUserInfoCommand alloc];
    v9 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v10 = [(FCModifyUserInfoCommand *)v8 initWithUserInfoRecord:v9];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v10];
  }
}

- (BOOL)shouldShowDefaultForYou
{
  v2 = [(FCUserInfo *)self onboardingVersionNumber];
  v3 = [v2 integerValue];

  return v3 == 3;
}

- (BOOL)hasShownProgressivePersonalizationWelcomeBrick
{
  v2 = [MEMORY[0x1E695E000] standardUserDefaults];
  v3 = [v2 BOOLForKey:@"personalization_reset_progressive_personalization_opt_in"];

  if (v3)
  {
    v4 = NewsCoreUserDefaults();
    [v4 setBool:0 forKey:@"has_show_personalization_brick"];

    v5 = [MEMORY[0x1E695E000] standardUserDefaults];
    [v5 setBool:0 forKey:@"personalization_reset_progressive_personalization_opt_in"];
  }

  v6 = [objc_opt_class() progressivePersonalization];
  if (v6 != 1)
  {
    v7 = NewsCoreUserDefaults();
    v8 = [v7 BOOLForKey:@"has_show_personalization_brick"];

    LOBYTE(v6) = v8;
  }

  return v6;
}

- (BOOL)userHasCompletedFavoritesSetup
{
  v2 = NewsCoreUserDefaults();
  v3 = [v2 BOOLForKey:@"user_has_completed_favorites_setup"];

  return v3;
}

- (void)setSportsOnboardingState:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"sportsOnboardingState"];

  v6 = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:v6 forKey:@"sportsOnboardingCompletedDate"];

  v7 = [FCModifyUserInfoCommand alloc];
  v8 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v9 = [(FCModifyUserInfoCommand *)v7 initWithUserInfoRecord:v8];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v9];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(FCPrivateDataController *)self observers];
  v11 = [v10 copy];

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

- (void)setShortcutsOnboardingState:(int64_t)a3
{
  v23 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"shortcutsOnboardingState"];

  v6 = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:v6 forKey:@"shortcutsOnboardingCompletedDate"];

  v7 = [FCModifyUserInfoCommand alloc];
  v8 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v9 = [(FCModifyUserInfoCommand *)v7 initWithUserInfoRecord:v8];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v9];
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v10 = [(FCPrivateDataController *)self observers];
  v11 = [v10 copy];

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
  v3 = [v2 integerValue];

  return v3;
}

- (void)setSportsSyncState:(int64_t)a3
{
  v25 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
  v6 = [MEMORY[0x1E696AD98] numberWithInteger:a3];

  v7 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  [(FCUserInfo *)self _setUserInfoValue:v7 forKey:@"sportsSyncState"];

  v8 = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:v8 forKey:@"sportsSyncStateLastSavedDate"];

  v9 = [FCModifyUserInfoCommand alloc];
  v10 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v11 = [(FCModifyUserInfoCommand *)v9 initWithUserInfoRecord:v10];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v11];
  if (v5 != v6)
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(FCPrivateDataController *)self observers];
    v13 = [v12 copy];

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

- (void)setSportsFavoritesLastModifiedDate:(id)a3
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v6 = v5;
    v7 = [v4 description];
    v12 = 138412290;
    v13 = v7;
    _os_log_impl(&dword_1B63EF000, v6, OS_LOG_TYPE_DEFAULT, "Setting sports favorites last modified date=%@", &v12, 0xCu);
  }

  [(FCUserInfo *)self _setUserInfoValue:v4 forKey:@"sportsFavoritesLastModifiedDate"];
  v8 = [FCModifyUserInfoCommand alloc];
  v9 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v10 = [(FCModifyUserInfoCommand *)v8 initWithUserInfoRecord:v9];

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

  v9 = [v6 firstObject];

  return v9;
}

- (void)setNewsletterSignupLastSeenDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"newsletterSignupLastSeenDate"];
  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v18 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v18];
  if (self)
  {
    v8 = MEMORY[0x1E696AF00];
    v9 = v5;
    [v8 isMainThread];
    [(FCUserInfo *)self _setUserInfoValue:v9 forKey:@"personalizedNewsletterSignupLastSeenDate"];

    v10 = [FCModifyUserInfoCommand alloc];
    v11 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v12 = [(FCModifyUserInfoCommand *)v10 initWithUserInfoRecord:v11];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v12];
    v13 = MEMORY[0x1E696AF00];
    v14 = v9;
    [v13 isMainThread];
    [(FCUserInfo *)self _setUserInfoValue:v14 forKey:@"issuesNewsletterOptinLastSeenDate"];

    v15 = [FCModifyUserInfoCommand alloc];
    v16 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v17 = [(FCModifyUserInfoCommand *)v15 initWithUserInfoRecord:v16];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v17];
  }
}

- (void)setMonthlyALaCarteSubscriptionMeteredCount:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"monthlyMeteredCount"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setALaCarteSubscriptionMeteredCountLastResetDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"meteredCountLastResetDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setMonthlyBundleSubscriptionMeteredCount:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"monthlyPaidBundleMeteredCount"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setBundleSubscriptionMeteredCountLastResetDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"paidBundleMeteredCountLastResetDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setUpsellAppLaunchCount:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"upsellAppLaunchCount"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setLastAppLaunchUpsellInstanceID:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"lastAppLaunchUpsellInstanceID"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setAppLaunchUpsellLastSeenDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"upsellAppLaunchLastSeenDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setAppLaunchUpsellLastShownCampaignID:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"upsellAppLaunchLastShownCampaignID"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setAppLaunchUpsellLastPresenterBundleID:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"upsellAppLaunchLastPresenterBundleID"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)setPostPurchaseOnboardingLastShownDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"postPurchaseOnboardingLastSeenDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
}

- (void)refreshOnboardingVersion:(id)a3
{
  v4 = a3;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __39__FCUserInfo_refreshOnboardingVersion___block_invoke;
  v6[3] = &unk_1E7C39C20;
  v6[4] = self;
  v7 = v4;
  v5 = v4;
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
  v3 = [(FCUserInfo *)self onboardingVersionNumber];
  v4 = [v3 integerValue];

  if (v4 < 5)
  {
    [(FCUserInfo *)self setMarketingNotificationsEnabled:1];
    [(FCUserInfo *)self setOnboardingVersionNumber:&unk_1F2E70218];
  }

  v5 = [(FCUserInfo *)self onboardingVersionNumber];
  v6 = [v5 integerValue];

  if (v6 <= 5)
  {
    [(FCUserInfo *)self setEndOfAudioTrackNotificationsEnabled:1];
    [(FCUserInfo *)self setOnboardingVersionNumber:&unk_1F2E70230];
  }

  v7 = FCBundle();
  v9 = [v7 objectForInfoDictionaryKey:@"CFBundleShortVersionString"];

  v8 = [MEMORY[0x1E696AD98] numberWithInteger:FCIntegerRepresentationOfBundleShortVersionString(v9)];
  [(FCUserInfo *)self setOnboardingVersionNumber:v8];
}

- (void)maybeUpdateOnboardingVersion:(id)a3
{
  v4 = a3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 3221225472;
  aBlock[2] = __43__FCUserInfo_maybeUpdateOnboardingVersion___block_invoke;
  aBlock[3] = &unk_1E7C36F40;
  aBlock[4] = self;
  v5 = _Block_copy(aBlock);
  if (v5[2]())
  {
    if (v4)
    {
      v4[2](v4, 0);
    }
  }

  else
  {
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __43__FCUserInfo_maybeUpdateOnboardingVersion___block_invoke_2;
    v6[3] = &unk_1E7C3C1F8;
    v7 = v5;
    v8 = v4;
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
  v3 = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:v3 forKey:@"lastViewedSavedDate"];
  v4 = [FCModifyUserInfoCommand alloc];
  v5 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v6 = [(FCModifyUserInfoCommand *)v4 initWithUserInfoRecord:v5];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(FCPrivateDataController *)self observers];
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
          [v12 userInfoDidChangeDateLastViewedSaved:self fromCloud:0];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v9);
  }

  v13 = *MEMORY[0x1E69E9840];
}

- (void)setEditorialArticleVersion:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    v5 = v4;
    if (!v4 || ([v4 isEqualToString:v9] & 1) == 0)
    {
      [(FCUserInfo *)self _setUserInfoValue:v9 forKey:@"editorialArticleVersion"];
      v6 = [FCModifyUserInfoCommand alloc];
      v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
      v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

      [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
    }
  }
}

- (void)setCanonicalLanguage:(id)a3
{
  v9 = a3;
  if (v9)
  {
    v4 = [(FCUserInfo *)&self->super.super.isa _userInfoValueForKey:?];
    v5 = v4;
    if (!v4 || ([v4 isEqualToString:v9] & 1) == 0)
    {
      [(FCUserInfo *)self _setUserInfoValue:v9 forKey:@"canonicalLanguage"];
      v6 = [FCModifyUserInfoCommand alloc];
      v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
      v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

      [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
    }
  }
}

- (void)setSportsTopicNotificationsEnabledState:(unint64_t)a3
{
  v29 = *MEMORY[0x1E69E9840];
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = [(FCUserInfo *)self sportsTopicNotificationsEnabledState];
  if (v5 != a3)
  {
    v6 = v5;
    v7 = FCPushNotificationsLog;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      v26 = v6;
      v27 = 2048;
      v28 = a3;
      _os_log_impl(&dword_1B63EF000, v7, OS_LOG_TYPE_DEFAULT, "Changing the sports topic notifications from: %ld to: %ld", buf, 0x16u);
    }

    v8 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
    [(FCUserInfo *)self _setUserInfoValue:v8 forKey:@"sportsTopicNotificationsEnabledState2"];

    v9 = [FCModifyUserInfoCommand alloc];
    v10 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
    v11 = [(FCModifyUserInfoCommand *)v9 initWithUserInfoRecord:v10];

    [(FCPrivateDataController *)self addCommandToCommandQueue:v11];
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v12 = [(FCPrivateDataController *)self observers];
    v13 = [v12 copy];

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

- (void)setAppReviewRequestLastShownDate:(id)a3
{
  v4 = MEMORY[0x1E696AF00];
  v5 = a3;
  [v4 isMainThread];
  [(FCUserInfo *)self _setUserInfoValue:v5 forKey:@"appReviewRequestLastSeenDate"];

  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

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
  v6 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v7 = [(FCModifyUserInfoCommand *)v5 initWithUserInfoRecord:v6];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v7];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = [(FCPrivateDataController *)self observers];
  v9 = [v8 copy];

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

- (void)setPuzzleStatsStartDate:(id)a3
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412290;
    v22 = v4;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Changing the puzzle stats start date to: %@", buf, 0xCu);
  }

  [(FCUserInfo *)self _setUserInfoValue:v4 forKey:@"puzzleStatsStartDate"];
  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v8];
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v9 = [(FCPrivateDataController *)self observers];
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
          [v14 userInfoDidChangeDatePuzzleStatsStart:self fromCloud:0];
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

- (void)setImportSavedToRecipeVersion:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  [MEMORY[0x1E696AF00] isMainThread];
  v5 = FCUserInfoLog;
  if (os_log_type_enabled(FCUserInfoLog, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138412290;
    v11 = v4;
    _os_log_impl(&dword_1B63EF000, v5, OS_LOG_TYPE_DEFAULT, "Changing the import saved to recipe version number to: %@", &v10, 0xCu);
  }

  [(FCUserInfo *)self _setUserInfoValue:v4 forKey:@"importSavedToRecipeVersion"];
  v6 = [FCModifyUserInfoCommand alloc];
  v7 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v8 = [(FCModifyUserInfoCommand *)v6 initWithUserInfoRecord:v7];

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

+ (id)userInfoCKRecordFromUserInfoDictionary:(uint64_t)a1
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

- (void)setReadOnlyUserInfo:(uint64_t)a1
{
  if (a1)
  {
    objc_storeStrong((a1 + 112), a2);
  }
}

- (void)_generateTemporaryUserIDIfNeededForKey:(uint64_t)a1
{
  if (a1)
  {
    v3 = a2;
    v11 = [@"temporary-user-id-" stringByAppendingString:v3];
    v4 = [*(a1 + 112) objectForKeyedSubscript:v3];

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
        v9 = [MEMORY[0x1E696AFB0] UUID];
        v10 = [v9 UUIDString];
        [v8 setObject:v10 forKey:v11];

        v6 = 0;
      }
    }
  }
}

- (void)addObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCUserInfo;
  [(FCPrivateDataController *)&v3 addObserver:a3];
}

- (void)removeObserver:(id)a3
{
  v3.receiver = self;
  v3.super_class = FCUserInfo;
  [(FCPrivateDataController *)&v3 removeObserver:a3];
}

- (void)syncWithCompletion:(id)a3
{
  v4 = a3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __33__FCUserInfo_syncWithCompletion___block_invoke;
  v7[3] = &unk_1E7C3B860;
  v7[4] = self;
  v8 = v4;
  v6.receiver = self;
  v6.super_class = FCUserInfo;
  v5 = v4;
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

- (void)accessTokenDidChangeForTagID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(FCPrivateDataController *)self observers];
  v6 = [v5 copy];

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
          v12 = [v4 copy];
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

- (void)settingsDataDidChangeForPuzzleTypeID:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [(FCPrivateDataController *)self observers];
  v6 = [v5 copy];

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
          v12 = [v4 copy];
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

- (void)handleSyncWithChangedRecords:(id)a3 deletedRecordNames:(id)a4
{
  v55 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v42 = a4;
  obj = v6;
  v49 = 0u;
  v50 = 0u;
  v51 = 0u;
  v52 = 0u;
  v7 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v49 + 1) + 8 * i);
        v12 = [v11 recordType];
        if ([v12 isEqualToString:@"UserInfo"])
        {
          [(FCUserInfo *)&self->super.super.isa handleSyncWithUserInfoRecord:v11];
          goto LABEL_13;
        }

        if ([v12 isEqualToString:@"TagSettings"])
        {
          v13 = [(FCUserInfo *)self tagSettings];
          [v13 handleSyncWithTagSettingsRecord:v11];
        }

        else
        {
          if (![v12 isEqualToString:@"PuzzleTypeSettings"])
          {
            goto LABEL_13;
          }

          v13 = [(FCUserInfo *)self puzzleTypeSettings];
          [v13 handleSyncWithPuzzleTypeSettingsRecord:v11];
        }

LABEL_13:
      }

      v8 = [v6 countByEnumeratingWithState:&v49 objects:v54 count:16];
    }

    while (v8);
  }

  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = v42;
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

          v20 = [(FCPrivateDataController *)self localStore];
          v21 = __FCCKUserInfoKeys_block_invoke();
          [v20 removeObjectsForKeys:v21];

          v22 = [(FCPrivateDataController *)self localStore];
          v23 = [MEMORY[0x1E696AFB0] UUID];
          v24 = [v23 UUIDString];
          [v22 setObject:v24 forKey:@"feldsparID"];

          v25 = [(FCPrivateDataController *)self localStore];
          v26 = [MEMORY[0x1E696AFB0] UUID];
          v27 = [v26 UUIDString];
          [v25 setObject:v27 forKey:@"notificationsUserID"];

          v28 = [(FCPrivateDataController *)self localStore];
          v29 = [MEMORY[0x1E696AFB0] UUID];
          v30 = [v29 UUIDString];
          [v28 setObject:v30 forKey:@"adsUserID"];

          v31 = [(FCPrivateDataController *)self localStore];
          v32 = [MEMORY[0x1E696AFB0] UUID];
          v33 = [v32 UUIDString];
          [v31 setObject:v33 forKey:@"sportsUserID"];

          v34 = [(FCPrivateDataController *)self localStore];
          v35 = [MEMORY[0x1E695DF00] date];
          [v34 setObject:v35 forKey:@"adsUserIDCreatedDate"];

          v36 = [(FCPrivateDataController *)self localStore];
          v37 = [MEMORY[0x1E695DF00] date];
          [v36 setObject:v37 forKey:@"lastOpenedDate"];

          v38 = [(FCPrivateDataController *)self localStore];
          v39 = [MEMORY[0x1E695DF00] date];
          [v38 setObject:v39 forKey:@"userStartDate"];
        }

        else if (FCIsTagSettingsRecordName(v18, v19))
        {
          v38 = [(FCUserInfo *)self tagSettings];
          [v38 handleSyncWithDeletedTagSettingsRecordName:v18];
        }

        else
        {
          if (!FCIsPuzzleTypeSettingsRecordName(v18, v40))
          {
            continue;
          }

          v38 = [(FCUserInfo *)self puzzleTypeSettings];
          [v38 handleSyncWithDeletedPuzzleTypeSettingsRecordName:v18];
        }
      }

      v15 = [v43 countByEnumeratingWithState:&v45 objects:v53 count:16];
    }

    while (v15);
  }

  v41 = *MEMORY[0x1E69E9840];
}

- (void)handleSyncWithUserInfoRecord:(id *)a1
{
  v263 = *MEMORY[0x1E69E9840];
  v3 = a2;
  if (!a1)
  {
    goto LABEL_222;
  }

  v227 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v226 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v230 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v225 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v224 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v223 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v222 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v221 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v220 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v4 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v228 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v186 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v193 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v195 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v200 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v217 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v205 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v203 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v191 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v215 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v213 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v209 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v207 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v211 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
  v231 = [(FCUserInfo *)a1 _userInfoValueForKey:?];
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
  [(FCUserInfo *)a1 _modifyUserInfoWithBlock:v246];
  v10 = [MEMORY[0x1E696AD88] defaultCenter];
  v241 = a1;
  [v10 postNotificationName:@"FCUserInfoChangedNotificationName" object:a1];

  v11 = [v9 objectForKeyedSubscript:@"notificationsUserID"];
  v12 = v4;
  v13 = v11;
  v14 = v13;
  v239 = v9;
  v202 = v12;
  v199 = v8;
  if (!v13 || ![v13 length])
  {
    if (!v12 || ![v12 length] || (v15 = v12, objc_msgSend(v12, "hasSuffix:", @"-NoSync")))
    {
      v18 = [MEMORY[0x1E696AFB0] UUID];
      v15 = [v18 UUIDString];

      v19 = FCPushNotificationsLog;
      if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
      {
        *buf = 138412290;
        v256 = v15;
        _os_log_impl(&dword_1B63EF000, v19, OS_LOG_TYPE_INFO, "Syncing enabled, generated a new notificationsUserID: %@", buf, 0xCu);
      }
    }

    [(FCUserInfo *)a1 _setUserInfoValue:v15 forKey:@"notificationsUserID"];
    v20 = [FCModifyUserInfoCommand alloc];
    v21 = [(FCUserInfo *)a1 asCKRecord];
    v22 = [(FCModifyUserInfoCommand *)v20 initWithUserInfoRecord:v21];

    [a1 addCommandToCommandQueue:v22];
    goto LABEL_18;
  }

  if (v12 && [v12 length])
  {
    v15 = v12;
    if ([v12 isEqualToString:v14])
    {
      goto LABEL_28;
    }

    [(FCUserInfo *)a1 _setUserInfoValue:v14 forKey:@"notificationsUserID"];
    v16 = FCPushNotificationsLog;
    v15 = v12;
    if (os_log_type_enabled(FCPushNotificationsLog, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v256 = v14;
      v17 = "Syncing enabled, updated with remote notificationsUserID: %@";
LABEL_17:
      _os_log_impl(&dword_1B63EF000, v16, OS_LOG_TYPE_INFO, v17, buf, 0xCu);
      v15 = v12;
    }
  }

  else
  {
    [(FCUserInfo *)a1 _setUserInfoValue:v14 forKey:@"notificationsUserID"];
    v16 = FCPushNotificationsLog;
    v15 = v12;
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
  v23 = [a1 observers];
  v24 = [v23 copy];

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
          [v29 userInfoDidChangeNotificationsUserID:v241];
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
    v36 = v241;
    if (!v32 || (v38 = v32, v37 = v229, ![v32 length]))
    {
      v41 = [(FCUserInfo *)v241 _temporaryUserIDForKey:?];
      v42 = v41;
      if (v41)
      {
        v38 = v41;
        v43 = v32;
      }

      else
      {
        v43 = [MEMORY[0x1E696AFB0] UUID];
        v38 = [v43 UUIDString];
      }

      v37 = [MEMORY[0x1E695DF00] date];
    }

    v39 = v241;
    v40 = v38;
LABEL_45:
    [(FCUserInfo *)v39 _persistAdsUserID:v40 createdDate:v37];
    goto LABEL_46;
  }

  v36 = v241;
  if (v32 && [v32 length])
  {
    if ([v32 isEqualToString:v33] & 1) != 0 || (-[FCUserInfo _shouldRotateAdsUserIDWithCreatedDate:](v241, v35))
    {
      v37 = v229;
      v38 = v32;
      if (![(FCUserInfo *)v241 _shouldRotateAdsUserIDWithCreatedDate:v35])
      {
        goto LABEL_56;
      }

      v39 = v241;
      v38 = v32;
      v40 = v32;
      v37 = v229;
      goto LABEL_45;
    }

    [(FCUserInfo *)v241 _setUserInfoValue:v33 forKey:@"adsUserID"];
    v44 = v241;
    v45 = v35;
    v46 = @"adsUserIDCreatedDate";
  }

  else
  {
    v44 = v241;
    v45 = v33;
    v46 = @"adsUserID";
  }

  [(FCUserInfo *)v44 _setUserInfoValue:v45 forKey:v46];
  v37 = v229;
  v38 = v32;
LABEL_46:
  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v47 = [v36 observers];
  v48 = [v47 copy];

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
          [v53 userInfoDidChangeAdsUserID:v241 fromCloud:1];
        }
      }

      v50 = [v48 countByEnumeratingWithState:&v249 objects:buf count:16];
    }

    while (v50);
  }

  v9 = v239;
  v36 = v241;
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
        v58 = v55;
        if ([v55 isEqualToString:v57])
        {
          goto LABEL_80;
        }
      }
    }

    [(FCUserInfo *)v36 _setUserInfoValue:v57 forKey:@"sportsUserID"];
    v58 = v55;
  }

  else
  {
    if (!v55 || (v58 = v55, ![v55 length]))
    {
      v59 = [(FCUserInfo *)v36 _temporaryUserIDForKey:?];
      v60 = v59;
      if (v59)
      {
        v58 = v59;
      }

      else
      {
        [MEMORY[0x1E696AFB0] UUID];
        v55 = v61 = v55;
        v58 = [v55 UUIDString];
      }
    }

    [(FCUserInfo *)v36 _persistSportsUserID:v58];
  }

  v251 = 0u;
  v252 = 0u;
  v249 = 0u;
  v250 = 0u;
  v62 = [v36 observers];
  v63 = [v62 copy];

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

  v86 = [v80 BOOLValue];
  if (v86 != [v82 BOOLValue])
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
    v89 = [v36 observers];
    v90 = [v89 copy];

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
    v108 = [v36 observers];
    v109 = [v108 copy];

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
            [v114 userInfoDidChangeSportsSyncState:v241];
          }
        }

        v111 = [v109 countByEnumeratingWithState:&v249 objects:buf count:16];
      }

      while (v111);
    }

    v9 = v239;
    v36 = v241;
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
    v126 = [v36 observers];
    v127 = [v126 copy];

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
            [v132 userInfoDidChangeSportsOnboardingState:v241];
          }
        }

        v129 = [v127 countByEnumeratingWithState:&v249 objects:buf count:16];
      }

      while (v129);
    }

    v9 = v239;
    v36 = v241;
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
      v145 = [v36 observers];
      v146 = [v145 copy];

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
  v161 = [v224 BOOLValue];
  v162 = [v9 objectForKeyedSubscript:@"marketingNotificationsEnabled"];
  v163 = [v162 BOOLValue];

  v164 = [v223 BOOLValue];
  v165 = [v9 objectForKeyedSubscript:@"newIssueNotificationsEnabled"];
  v166 = [v165 BOOLValue];

  v233 = [v222 BOOLValue];
  v167 = [v9 objectForKeyedSubscript:@"endOfAudioNotificationsEnabled"];
  v232 = [v167 BOOLValue];

  v235 = [v221 integerValue];
  v168 = [v9 objectForKeyedSubscript:@"sportsTopicNotificationsEnabledState2"];
  v169 = [v168 integerValue];

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

  v172 = v161 ^ v163;
  v173 = v164 ^ v166;
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
    v177 = [v241 observers];
    v178 = [v177 copy];

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
              [v183 userInfoDidChangeFeldsparID:v241 fromCloud:1];
            }
          }

          if (v237 & 1) == 0 && (objc_opt_respondsToSelector())
          {
            [v183 userInfoDidChangeOnboardingStatus:v241];
          }

          if (v236 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeDateLastViewedSaved:v241 fromCloud:1];
          }

          if (v240 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeEditorialArticleVersion:v241];
          }

          if (v172 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeMarketingNotificationsEnabled:v241 fromCloud:1];
          }

          if (v173 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeNewIssueNotificationsEnabled:v241 fromCloud:1];
          }

          if (v233 != v232 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeEndOfAudioTrackNotificationsEnabled:v241 fromCloud:1];
          }

          if (v235 != v169 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeSportsTopicNotificationsEnabledState:v241 fromCloud:1];
          }

          if (v171 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeDateLastViewedSharedWithYou:v241 fromCloud:1];
          }

          if (v176 && (objc_opt_respondsToSelector() & 1) != 0)
          {
            [v183 userInfoDidChangeDatePuzzleStatsStart:v241 fromCloud:1];
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

- (id)allKnownRecordNamesWithinRecordZoneWithID:(id)a3
{
  [MEMORY[0x1E696AF00] isMainThread];
  v4 = [MEMORY[0x1E695DF70] array];
  [v4 addObject:@"user_info_static_record_name"];
  v5 = [(FCUserInfo *)self tagSettings];
  v6 = [v5 allTagSettingsRecordNames];
  [v4 addObjectsFromArray:v6];

  v7 = [(FCUserInfo *)self puzzleTypeSettings];
  v8 = [v7 allPuzzleTypeSettingsRecordNames];
  [v4 addObjectsFromArray:v8];

  return v4;
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
  v3 = [MEMORY[0x1E695DF00] date];
  [(FCUserInfo *)self _setUserInfoValue:v3 forKey:@"lastViewedSharedWithYouDate"];
  v4 = [FCModifyUserInfoCommand alloc];
  v5 = [(FCUserInfo *)&self->super.super.isa asCKRecord];
  v6 = [(FCModifyUserInfoCommand *)v4 initWithUserInfoRecord:v5];

  [(FCPrivateDataController *)self addCommandToCommandQueue:v6];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v7 = [(FCPrivateDataController *)self observers];
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
          [v12 userInfoDidChangeDateLastViewedSharedWithYou:self fromCloud:0];
        }

        ++v11;
      }

      while (v9 != v11);
      v9 = [v7 countByEnumeratingWithState:&v14 objects:v18 count:16];
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

+ (id)commandsToMergeLocalDataToCloud:(id)a3 privateDataDirectory:(id)a4
{
  v5 = MEMORY[0x1E695DF70];
  v6 = a3;
  v7 = [v5 array];
  v8 = [FCModifyUserInfoCommand alloc];
  v9 = [v6 asDictionary];
  v10 = [(FCUserInfo *)a1 userInfoCKRecordFromUserInfoDictionary:v9];
  v11 = [(FCModifyUserInfoCommand *)v8 initWithUserInfoRecord:v10];

  [v7 addObject:v11];
  v12 = [FCTagSettings commandsToMergeLocalDataToCloud:v6];
  [v7 addObjectsFromArray:v12];
  v13 = [FCPuzzleTypeSettings commandsToMergeLocalDataToCloud:v6];

  [v7 addObjectsFromArray:v13];

  return v7;
}

- (id)recordsForRestoringZoneName:(id)a3
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