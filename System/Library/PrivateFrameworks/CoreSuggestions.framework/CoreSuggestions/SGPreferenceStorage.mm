@interface SGPreferenceStorage
+ (BOOL)allowAgeBasedPruning;
+ (BOOL)allowAnyDomainForMarkup;
+ (BOOL)allowGeocode;
+ (BOOL)allowUnverifiedSourceForMarkup;
+ (BOOL)alwaysShowCancelledEvents;
+ (BOOL)detectContacts;
+ (BOOL)detectMessageEventsML;
+ (BOOL)detectNLEvents;
+ (BOOL)detectReminders;
+ (BOOL)detectRemindersInMail;
+ (BOOL)detectStructuredEvents;
+ (BOOL)detectStructuredEventsML;
+ (BOOL)enableDKIMEnforcement;
+ (BOOL)mailIntelligenceSPILogging;
+ (BOOL)onlyShowSignificantNLEvents;
+ (BOOL)onlyShowSignificantPseudoContacts;
+ (BOOL)shouldHarvestEvents;
+ (BOOL)showContactsFoundInMail;
+ (BOOL)showEventsFoundInMail;
+ (BOOL)showOperatingSystemVersionInSnippets;
+ (BOOL)showPastEvents;
+ (BOOL)showSuggestionsCalendar;
+ (BOOL)syncHistoryToCloud;
+ (BOOL)useMLModelForContactSharing;
+ (BOOL)useMLModelForContacts;
+ (BOOL)useMLModelForSelfId;
+ (BOOL)useManateeSaltForHistory;
+ (double)harvestBudgetCPUTimeSeconds;
+ (float)contactSharingNegativeSamplingRate;
+ (id)cloudKitPersistedState;
+ (id)defaults;
+ (id)detectSalientMails;
+ (id)didKVSMigrationTokenForIdentifier:(id)a3;
+ (id)disabledEventUpdateCategories;
+ (id)followUpComputeCustomTimeRangeForLanguage:(id)a3;
+ (id)followUpTimeRangeForDebugging;
+ (id)userAccountsPersistedState;
+ (int)registerBlockOnSuggestionsSettingsChange:(id)a3;
+ (int64_t)harvestBudgetNumberOfOperations;
+ (int64_t)hashedSessionsLogging;
+ (int64_t)messagesToProcessImmediately;
+ (int64_t)preExtractionMaxDocumentAgeDays;
+ (int64_t)suggestionsLogLevel;
+ (void)removeDeprecatedDefaults;
+ (void)resetAllPreferences;
+ (void)resumeNotificationQueue;
+ (void)setCloudKitPersistedState:(id)a3;
+ (void)setContactSharingNegativeSamplingRate:(float)a3;
+ (void)setDidKVSMigrationToken:(id)a3 forIdentifier:(id)a4;
+ (void)setDisabledEventUpdateCategories:(id)a3;
+ (void)setHarvestBudgetCPUTimeSeconds:(double)a3;
+ (void)setHarvestBudgetNumberOfOperations:(int64_t)a3;
+ (void)setMessagesToProcessImmediately:(int64_t)a3;
+ (void)setMessagesToProcessImmediatelyForTests:(int64_t)a3;
+ (void)setSyncHistoryToCloud:(BOOL)a3;
+ (void)setUserAccountsPersistedState:(id)a3;
+ (void)suspendNotificationQueue;
+ (void)updateIntSettingKey:(id)a3 withValue:(int)a4;
@end

@implementation SGPreferenceStorage

+ (id)defaults
{
  v2 = +[SGPreferenceManager defaultManager];
  v3 = v2[1];
  v4 = v3;

  return v3;
}

+ (BOOL)allowAnyDomainForMarkup
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsAllowAnyDomainForMarkup"];

  return v3;
}

+ (BOOL)detectStructuredEvents
{
  if (structuredEventsDetectionEnabledForTests)
  {
    v3 = structuredEventsDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsDetectStructuredEvents"];

    return v6;
  }
}

+ (void)resumeNotificationQueue
{
  v2 = +[SGPreferenceManager defaultManager];
  [v2 _resumeNotificationQueue];

  notificationQueueSuspended = 0;
}

+ (void)suspendNotificationQueue
{
  notificationQueueSuspended = 1;
  v2 = +[SGPreferenceManager defaultManager];
  [v2 _suspendNotificationQueue];
}

+ (void)setMessagesToProcessImmediatelyForTests:(int64_t)a3
{
  v3 = [MEMORY[0x1E696AD98] numberWithInteger:a3];
  v4 = messagesToProcessImmediatelyForTests;
  messagesToProcessImmediatelyForTests = v3;

  _blockingNotifySettingsChanged();
}

+ (BOOL)enableDKIMEnforcement
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"EnableDKIMEnforcement"];

  return v3;
}

+ (BOOL)mailIntelligenceSPILogging
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsMailIntelligenceSPILogging"];

  return v3;
}

+ (id)followUpComputeCustomTimeRangeForLanguage:(id)a3
{
  v4 = a3;
  v5 = [a1 defaults];
  v6 = [v5 dictionaryForKey:@"SuggestionsFollowUpComputeCustomTimeRange"];
  v7 = [v6 objectForKeyedSubscript:v4];

  return v7;
}

+ (id)followUpTimeRangeForDebugging
{
  v2 = [a1 defaults];
  v3 = [v2 dictionaryForKey:@"SuggestionsFollowUpTimeRangeForDebugging"];

  return v3;
}

+ (int64_t)preExtractionMaxDocumentAgeDays
{
  v2 = [a1 defaults];
  v3 = [v2 integerForKey:@"SuggestionsPreExtractionMaxDocumentAgeDays"];

  return v3;
}

+ (void)setHarvestBudgetCPUTimeSeconds:(double)a3
{
  v4 = [a1 defaults];
  [v4 setDouble:@"SuggestionsHarvestBudgetCPUTimeSeconds" forKey:a3];
}

+ (double)harvestBudgetCPUTimeSeconds
{
  v2 = [a1 defaults];
  [v2 doubleForKey:@"SuggestionsHarvestBudgetCPUTimeSeconds"];
  v4 = v3;

  return v4;
}

+ (void)setHarvestBudgetNumberOfOperations:(int64_t)a3
{
  v4 = [a1 defaults];
  [v4 setInteger:a3 forKey:@"SuggestionsHarvestBudgetNumberOfOperations"];
}

+ (int64_t)harvestBudgetNumberOfOperations
{
  v2 = [a1 defaults];
  v3 = [v2 integerForKey:@"SuggestionsHarvestBudgetNumberOfOperations"];

  return v3;
}

+ (BOOL)showOperatingSystemVersionInSnippets
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"ShowOperatingSystemVersionInSnippets"];

  return v3;
}

+ (void)setDidKVSMigrationToken:(id)a3 forIdentifier:(id)a4
{
  v22 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = a1;
  objc_sync_enter(v8);
  v9 = [v8 defaults];
  v10 = [v9 dictionaryForKey:@"DidKVSMigrationToken"];
  v11 = v10;
  if (!v10)
  {
    v10 = MEMORY[0x1E695E0F8];
  }

  v12 = [v10 mutableCopy];

  [v12 setObject:v6 forKeyedSubscript:v7];
  v13 = sgLogHandle();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v16 = 138543874;
    v17 = v6;
    v18 = 2114;
    v19 = v7;
    v20 = 2114;
    v21 = v12;
    _os_log_impl(&dword_1BA729000, v13, OS_LOG_TYPE_DEFAULT, "setDidKVSMigrationToken:%{public}@ forIdentifier:%{public}@, new dict: %{public}@", &v16, 0x20u);
  }

  v14 = [v8 defaults];
  [v14 setObject:v12 forKey:@"DidKVSMigrationToken"];

  objc_sync_exit(v8);
  v15 = *MEMORY[0x1E69E9840];
}

+ (id)didKVSMigrationTokenForIdentifier:(id)a3
{
  v4 = a3;
  v5 = [a1 defaults];
  v6 = [v5 dictionaryForKey:@"DidKVSMigrationToken"];

  v7 = [v6 objectForKeyedSubscript:v4];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

+ (BOOL)useManateeSaltForHistory
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"UseManateeSaltForHistory"];

  return v3;
}

+ (void)setUserAccountsPersistedState:(id)a3
{
  v4 = a3;
  v5 = [a1 defaults];
  [v5 setValue:v4 forKey:@"UserAccountsPersistedState"];
}

+ (id)userAccountsPersistedState
{
  v2 = [a1 defaults];
  v3 = [v2 stringArrayForKey:@"UserAccountsPersistedState"];

  return v3;
}

+ (void)setCloudKitPersistedState:(id)a3
{
  v4 = a3;
  v5 = [a1 defaults];
  [v5 setValue:v4 forKey:@"CloudKitPersistedState"];
}

+ (id)cloudKitPersistedState
{
  v2 = [a1 defaults];
  v3 = [v2 dataForKey:@"CloudKitPersistedState"];

  return v3;
}

+ (BOOL)shouldHarvestEvents
{
  if (!firstPartyCalendarAppIsInstalled || (v2 = [firstPartyCalendarAppIsInstalled BOOLValue]) != 0)
  {
    LOBYTE(v2) = 1;
  }

  return v2;
}

+ (id)detectSalientMails
{
  if (mailSaliencyDetectionEnabledForTests)
  {
    v2 = mailSaliencyDetectionEnabledForTests;
  }

  else
  {
    v3 = [a1 defaults];
    v2 = [v3 objectForKey:@"SuggestionsDetectSalientMails"];
  }

  return v2;
}

+ (BOOL)detectRemindersInMail
{
  if (remindersDetectionInMailEnabledForTests)
  {
    v3 = remindersDetectionInMailEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsDetectRemindersInMail"];

    return v6;
  }
}

+ (BOOL)detectStructuredEventsML
{
  if (structuredEventsMLDetectionEnabledForTests)
  {
    v3 = structuredEventsMLDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsDetectStructuredsEventML"];

    return v6;
  }
}

+ (BOOL)detectReminders
{
  if (remindersDetectionEnabledForTests)
  {
    v3 = remindersDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsDetectReminders"];

    return v6;
  }
}

+ (BOOL)detectMessageEventsML
{
  if (messageEventsMLDetectionEnabledForTests)
  {
    v3 = messageEventsMLDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsShowMessageEventsML"];

    return v6;
  }
}

+ (BOOL)detectNLEvents
{
  if (nlEventsDetectionEnabledForTests)
  {
    v3 = nlEventsDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsShowNLEvents"];

    return v6;
  }
}

+ (BOOL)detectContacts
{
  if (contactsDetectionEnabledForTests)
  {
    v3 = contactsDetectionEnabledForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsDetectContacts"];

    return v6;
  }
}

+ (void)setContactSharingNegativeSamplingRate:(float)a3
{
  v5 = [a1 defaults];
  *&v6 = a3;
  [v5 setFloat:@"SuggestionsContactSharingNegativeSamplingRate" forKey:v6];

  v7 = [a1 defaults];
  [v7 synchronize];

  v8 = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(v8);
}

+ (float)contactSharingNegativeSamplingRate
{
  v2 = [a1 defaults];
  [v2 floatForKey:@"SuggestionsContactSharingNegativeSamplingRate"];
  v4 = v3;

  return v4;
}

+ (BOOL)useMLModelForContactSharing
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsUseMLModelForContactSharing"];

  return v3;
}

+ (BOOL)useMLModelForSelfId
{
  if (useMLModelForSelfId)
  {
    v3 = useMLModelForSelfId;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsUseMLModelForSelfId"];

    return v6;
  }
}

+ (BOOL)useMLModelForContacts
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsUseMLModelForContacts"];

  return v3;
}

+ (BOOL)allowAgeBasedPruning
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsAllowAgeBasedPruning"];

  return v3;
}

+ (void)setDisabledEventUpdateCategories:(id)a3
{
  v4 = a3;
  v5 = [a1 defaults];
  [v5 setObject:v4 forKey:@"DisableEventUpdateCategories"];
}

+ (id)disabledEventUpdateCategories
{
  v2 = [a1 defaults];
  v3 = [v2 stringArrayForKey:@"DisableEventUpdateCategories"];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v5 = MEMORY[0x1E695E0F0];
  }

  v6 = v5;

  return v5;
}

+ (BOOL)allowUnverifiedSourceForMarkup
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsAllowUnverifiedSourceForMarkup"];

  return v3;
}

+ (BOOL)allowGeocode
{
  if (allowGeocode)
  {
    v2 = allowGeocode;
  }

  else
  {
    v2 = MEMORY[0x1E695E118];
  }

  return [v2 BOOLValue];
}

+ (void)setSyncHistoryToCloud:(BOOL)a3
{
  v3 = a3;
  pthread_mutex_lock(&syncHistoryToCloudLock);
  v5 = [a1 defaults];
  [v5 setBool:!v3 forKey:@"SuggestionsSuppressSyncHistoryToCloud"];

  syncHistoryToCloud = v3;

  pthread_mutex_unlock(&syncHistoryToCloudLock);
}

+ (BOOL)syncHistoryToCloud
{
  pthread_mutex_lock(&syncHistoryToCloudLock);
  v3 = syncHistoryToCloud;
  if (syncHistoryToCloud == 255)
  {
    v4 = [a1 defaults];
    syncHistoryToCloud = [v4 BOOLForKey:@"SuggestionsSuppressSyncHistoryToCloud"] ^ 1;

    v3 = syncHistoryToCloud;
  }

  v5 = v3 != 0;
  pthread_mutex_unlock(&syncHistoryToCloudLock);
  return v5;
}

+ (void)setMessagesToProcessImmediately:(int64_t)a3
{
  v5 = [a1 defaults];
  [v5 setInteger:a3 forKey:@"SuggestionsMessagesToProcessImmediately"];

  v6 = [a1 defaults];
  [v6 synchronize];

  v7 = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(v7);
}

+ (int64_t)messagesToProcessImmediately
{
  if (messagesToProcessImmediatelyForTests)
  {
    v3 = messagesToProcessImmediatelyForTests;

    return [v3 integerValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 integerForKey:@"SuggestionsMessagesToProcessImmediately"];

    return v6;
  }
}

+ (void)removeDeprecatedDefaults
{
  v15 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [&unk_1F38744E0 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F38744E0);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [a1 defaults];
        [v8 removeObjectForKey:v7];

        ++v6;
      }

      while (v4 != v6);
      v4 = [&unk_1F38744E0 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x1E69E9840];
}

+ (int)registerBlockOnSuggestionsSettingsChange:(id)a3
{
  v3 = a3;
  v4 = +[SGPreferenceManager defaultManager];
  v5 = [v4 registerBlock:v3];

  return v5;
}

+ (BOOL)showSuggestionsCalendar
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsShowSuggestionsCalendar"];

  return v3;
}

+ (int64_t)hashedSessionsLogging
{
  v2 = [a1 defaults];
  v3 = [v2 integerForKey:@"SuggestionsHashedSessionsLogging"];

  return v3;
}

+ (BOOL)onlyShowSignificantNLEvents
{
  v2 = [a1 defaults];
  v3 = [v2 BOOLForKey:@"SuggestionsOnlyShowSignificantNLEvents"];

  return v3;
}

+ (BOOL)onlyShowSignificantPseudoContacts
{
  if (onlyShowSignificantPseudoContactsForTests)
  {
    v3 = onlyShowSignificantPseudoContactsForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsOnlyShowSignificantPseudoContacts"];

    return v6;
  }
}

+ (void)updateIntSettingKey:(id)a3 withValue:(int)a4
{
  v6 = a3;
  v7 = [a1 defaults];
  [v7 setInteger:a4 forKey:v6];

  v8 = [a1 defaults];
  [v8 synchronize];

  v9 = [@"com.apple.suggestions.settingsChanged" UTF8String];

  notify_post(v9);
}

+ (BOOL)alwaysShowCancelledEvents
{
  if (showCancelledEventsForTests)
  {
    v3 = showCancelledEventsForTests;

    return [v3 BOOLValue];
  }

  else
  {
    v5 = [a1 defaults];
    v6 = [v5 BOOLForKey:@"SuggestionsAlwaysShowCancelledEvents"];

    return v6;
  }
}

+ (BOOL)showPastEvents
{
  if (hidePastEventsForTests)
  {
    if ([hidePastEventsForTests BOOLValue])
    {
      return 0;
    }

    if (![hidePastEventsForTests BOOLValue])
    {
      return 1;
    }
  }

  pthread_mutex_lock(&shouldShowPastEventsLock);
  v4 = shouldShowPastEvents;
  if (shouldShowPastEvents == 255)
  {
    v5 = [a1 defaults];
    shouldShowPastEvents = [v5 BOOLForKey:@"SuggestionsShowPastEvents"];

    v4 = shouldShowPastEvents;
  }

  v3 = v4 != 0;
  pthread_mutex_unlock(&shouldShowPastEventsLock);
  return v3;
}

+ (int64_t)suggestionsLogLevel
{
  v2 = [a1 defaults];
  v3 = [v2 integerForKey:@"SuggestionsLoggingLevel"];

  return v3;
}

+ (void)resetAllPreferences
{
  v3 = [a1 defaults];
  [v3 removeObjectForKey:@"SuggestionsAlwaysShowCancelledEvents"];

  v4 = [a1 defaults];
  [v4 removeObjectForKey:@"SuggestionsLoggingLevel"];

  v5 = [a1 defaults];
  [v5 removeObjectForKey:@"SuggestionsMessagesToProcessImmediately"];

  v6 = [a1 defaults];
  [v6 removeObjectForKey:@"SuggestionsOnlyShowSignificantPseudoContacts"];

  v7 = [a1 defaults];
  [v7 removeObjectForKey:@"SuggestionsOnlyShowSignificantNLEvents"];

  v8 = [a1 defaults];
  [v8 removeObjectForKey:@"SuggestionsShowPastEvents"];

  v9 = [a1 defaults];
  [v9 removeObjectForKey:@"SuggestionsShowSuggestionsCalendar"];

  v10 = [a1 defaults];
  [v10 removeObjectForKey:@"SuggestionsSuppressSyncHistoryToCloud"];

  v11 = [a1 defaults];
  [v11 removeObjectForKey:@"SuggestionsAllowGeocode"];

  v12 = [a1 defaults];
  [v12 removeObjectForKey:@"SuggestionsAllowUnverifiedSourceForMarkup"];

  v13 = [a1 defaults];
  [v13 removeObjectForKey:@"SuggestionsAllowAnyDomainForMarkup"];

  v14 = [a1 defaults];
  [v14 removeObjectForKey:@"SuggestionsUseMLModelForContacts"];

  v15 = [a1 defaults];
  [v15 removeObjectForKey:@"SuggestionsUseMLModelForSelfId"];

  v16 = [a1 defaults];
  [v16 removeObjectForKey:@"SuggestionsAllowAgeBasedPruning"];

  v17 = [a1 defaults];
  [v17 removeObjectForKey:@"SuggestionsDetectContacts"];

  v18 = [a1 defaults];
  [v18 removeObjectForKey:@"SuggestionsShowNLEvents"];

  v19 = [a1 defaults];
  [v19 removeObjectForKey:@"SuggestionsShowMessageEventsML"];

  v20 = [a1 defaults];
  [v20 removeObjectForKey:@"SuggestionsDetectStructuredEvents"];

  v21 = [a1 defaults];
  [v21 removeObjectForKey:@"SuggestionsDetectReminders"];

  v22 = [a1 defaults];
  [v22 removeObjectForKey:@"SuggestionsDetectStructuredsEventML"];

  v23 = [a1 defaults];
  [v23 removeObjectForKey:@"SuggestionsDetectRemindersInMail"];

  v24 = [a1 defaults];
  [v24 removeObjectForKey:@"SuggestionsDetectSalientMails"];

  v25 = [a1 defaults];
  [v25 removeObjectForKey:@"SuggestionsFollowUpTimeRangeForDebugging"];

  v26 = [a1 defaults];
  [v26 removeObjectForKey:@"SuggestionsFollowUpComputeCustomTimeRange"];

  v27 = [a1 defaults];
  [v27 removeObjectForKey:@"SuggestionsMailIntelligenceSPILogging"];

  v28 = [a1 defaults];
  [v28 removeObjectForKey:@"SuggestionsHashedSessionsLogging"];

  v29 = [a1 defaults];
  [v29 removeObjectForKey:@"CloudKitPersistedState"];

  v30 = [a1 defaults];
  [v30 removeObjectForKey:@"UserAccountsPersistedState"];

  v31 = [a1 defaults];
  [v31 removeObjectForKey:@"SuggestionsUseMLModelForContactSharing"];

  v32 = [a1 defaults];
  [v32 removeObjectForKey:@"SuggestionsContactSharingNegativeSamplingRate"];

  v33 = [a1 defaults];
  [v33 removeObjectForKey:@"SuggestionsHarvestBudgetNumberOfOperations"];

  v34 = [a1 defaults];
  [v34 removeObjectForKey:@"SuggestionsHarvestBudgetCPUTimeSeconds"];

  v35 = [a1 defaults];
  [v35 removeObjectForKey:@"DisableEventUpdateCategories"];

  v36 = [a1 defaults];
  [v36 removeObjectForKey:@"SuggestionsPreExtractionMaxDocumentAgeDays"];
}

+ (BOOL)showEventsFoundInMail
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.mobilecal"];

  return v3 ^ 1;
}

+ (BOOL)showContactsFoundInMail
{
  v2 = CFPreferencesCopyAppValue(@"AppCanShowSiriSuggestionsBlacklist", @"com.apple.suggestions");
  v3 = [v2 containsObject:@"com.apple.MobileAddressBook"];

  return v3 ^ 1;
}

@end