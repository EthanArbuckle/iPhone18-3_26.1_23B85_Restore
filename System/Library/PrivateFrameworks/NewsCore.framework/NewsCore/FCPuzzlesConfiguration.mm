@interface FCPuzzlesConfiguration
- (FCPuzzlesConfiguration)initWithConfigDictionary:(id)dictionary storefrontID:(id)d defaultSupportedStorefronts:(id)storefronts;
@end

@implementation FCPuzzlesConfiguration

- (FCPuzzlesConfiguration)initWithConfigDictionary:(id)dictionary storefrontID:(id)d defaultSupportedStorefronts:(id)storefronts
{
  v108 = *MEMORY[0x1E69E9840];
  dictionaryCopy = dictionary;
  dCopy = d;
  storefrontsCopy = storefronts;
  v104.receiver = self;
  v104.super_class = FCPuzzlesConfiguration;
  v11 = [(FCPuzzlesConfiguration *)&v104 init];
  if (v11)
  {
    if ([storefrontsCopy containsObject:dCopy])
    {
      v12 = 0xFFFFFFFFLL;
    }

    else
    {
      v12 = 0;
    }

    v82 = storefrontsCopy;
    v83 = dCopy;
    v13 = ([storefrontsCopy containsObject:dCopy] & 1) != 0 || +[FCFeatureEnablementChecker enabledInConfig:forKey:withDefaultLevel:](FCFeatureEnablementChecker, "enabledInConfig:forKey:withDefaultLevel:", dictionaryCopy, @"puzzlesEnabled", v12);
    v11->_puzzlesEnabled = v13;
    v11->_puzzlesArchiveAPIEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"puzzlesArchiveAPIEnabled" withDefaultLevel:v12];
    v11->_puzzleLeaderboardsEnabled = [FCFeatureEnablementChecker enabledInConfig:dictionaryCopy forKey:@"puzzleLeaderboardsEnabled" withDefaultLevel:v12];
    v14 = FCAppConfigurationStringValue(dictionaryCopy, @"puzzleHubTagId", 0);
    puzzleHubTagID = v11->_puzzleHubTagID;
    v11->_puzzleHubTagID = v14;

    v16 = FCAppConfigurationStringValue(dictionaryCopy, @"puzzleFullArchiveTagId", 0);
    puzzleFullArchiveTagID = v11->_puzzleFullArchiveTagID;
    v11->_puzzleFullArchiveTagID = v16;

    v18 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"puzzleTypes", 0);
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v18, "count")}];
    v100 = 0u;
    v101 = 0u;
    v102 = 0u;
    v103 = 0u;
    v20 = v18;
    v21 = [v20 countByEnumeratingWithState:&v100 objects:v107 count:16];
    if (v21)
    {
      v22 = v21;
      v23 = *v101;
      do
      {
        for (i = 0; i != v22; ++i)
        {
          if (*v101 != v23)
          {
            objc_enumerationMutation(v20);
          }

          v25 = FCAppConfigurationStringValue(*(*(&v100 + 1) + 8 * i), @"identifier", 0);
          if (v25)
          {
            [v19 addObject:v25];
          }
        }

        v22 = [v20 countByEnumeratingWithState:&v100 objects:v107 count:16];
      }

      while (v22);
    }

    v80 = v20;

    v81 = v19;
    v26 = [MEMORY[0x1E695DEC8] arrayWithArray:v19];
    puzzleTypes = v11->_puzzleTypes;
    v11->_puzzleTypes = v26;

    v11->_autoEnableNotificationMinimumPlayCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"autoEnableNotificationMinimumPlayCount", 0x7FFFFFFFFFFFFFFFLL);
    v11->_autoEnableNotificationPlayTimeInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"autoEnableNotificationPlayTimeInterval", 0);
    v11->_autoDisableNotificationEngagementInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"autoDisableNotificationEngagementInterval", 2592000);
    v11->_progressUpdateTimeInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"progressUpdateTimeInterval", 5);
    v11->_badgingUpdateQuiesenceInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"badgingUpdateQuiesenceInterval", 21600);
    v11->_numberOfHistoryPuzzlesToPrewarm = FCAppConfigurationIntegerValue(dictionaryCopy, @"numberOfHistoryPuzzlesToPrewarm", 5);
    v11->_puzzleHistoryPrewarmTimeInterval = FCAppConfigurationDoubleValue(dictionaryCopy, @"puzzleHistoryPrewarmTimeInterval", 604800.0);
    v11->_puzzlesPrewarmTimeInterval = FCAppConfigurationDoubleValue(dictionaryCopy, @"puzzlesPrewarmTimeInterval", 43200.0);
    v11->_puzzlesEngineRefreshTimeInterval = FCAppConfigurationDoubleValue(dictionaryCopy, @"puzzlesEngineRefreshTimeInterval", 86400.0);
    v11->_puzzlesCacheLifetime = FCAppConfigurationDoubleValue(dictionaryCopy, @"puzzlesCacheLifetime", 21600.0);
    v11->_recentPuzzlesCacheLifetime = FCAppConfigurationDoubleValue(dictionaryCopy, @"recentPuzzlesCacheLifetime", 3600.0);
    v85 = v11;
    v11->_puzzleTypeThumbnailsCacheLifetime = FCAppConfigurationDoubleValue(dictionaryCopy, @"puzzleTypeThumbnailsCacheLifetime", 86400.0);
    v28 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"puzzleDifficulties", 0);
    v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v28, "count")}];
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v30 = v28;
    v31 = [v30 countByEnumeratingWithState:&v96 objects:v106 count:16];
    if (v31)
    {
      v32 = v31;
      v33 = *v97;
      do
      {
        for (j = 0; j != v32; ++j)
        {
          if (*v97 != v33)
          {
            objc_enumerationMutation(v30);
          }

          v35 = *(*(&v96 + 1) + 8 * j);
          v36 = FCAppConfigurationNumberValue(v35, @"index", 0);
          v37 = FCAppConfigurationStringValue(v35, @"label", 0);
          [v29 fc_safelySetObjectAllowingNil:v37 forKeyAllowingNil:v36];
        }

        v32 = [v30 countByEnumeratingWithState:&v96 objects:v106 count:16];
      }

      while (v32);
    }

    v38 = [v29 copy];
    difficultyDescriptions = v85->_difficultyDescriptions;
    v85->_difficultyDescriptions = v38;

    v40 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"puzzlesFullArchiveMenuConfig", 0);
    dictionary = [MEMORY[0x1E695DF90] dictionary];
    v94[0] = MEMORY[0x1E69E9820];
    v94[1] = 3221225472;
    v94[2] = __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke;
    v94[3] = &unk_1E7C3F200;
    v78 = dictionary;
    v79 = v40;
    v95 = v78;
    [v40 enumerateKeysAndObjectsUsingBlock:v94];
    objc_storeStrong(&v85->_puzzleFullArchiveMenuOptionsConfigByPuzzleTypeID, dictionary);
    dictionary2 = [MEMORY[0x1E695DF90] dictionary];
    v43 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"puzzleTypeLeaderboards", 0);
    v92[0] = MEMORY[0x1E69E9820];
    v92[1] = 3221225472;
    v92[2] = __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_3;
    v92[3] = &unk_1E7C3F200;
    v76 = dictionary2;
    v77 = v43;
    v93 = v76;
    [v43 enumerateKeysAndObjectsUsingBlock:v92];
    objc_storeStrong(&v85->_puzzleTypeLeaderboards, dictionary2);
    v44 = FCAppConfigurationDictionaryValueWithDefaultValue(dictionaryCopy, @"puzzleTypeRanks", 0);
    dictionary3 = [MEMORY[0x1E695DF90] dictionary];
    v90[0] = MEMORY[0x1E69E9820];
    v90[1] = 3221225472;
    v90[2] = __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_4;
    v90[3] = &unk_1E7C3A5F0;
    v74 = dictionary3;
    v75 = v44;
    v91 = v74;
    [v44 enumerateKeysAndObjectsUsingBlock:v90];
    objc_storeStrong(&v85->_puzzleRanksByPuzzleTypeID, dictionary3);
    v84 = dictionaryCopy;
    v46 = FCAppConfigurationArrayValueWithDefaultValue(dictionaryCopy, @"puzzleGameCenterActivities", 0);
    v47 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v46, "count")}];
    v86 = 0u;
    v87 = 0u;
    v88 = 0u;
    v89 = 0u;
    v48 = v46;
    v49 = [v48 countByEnumeratingWithState:&v86 objects:v105 count:16];
    if (v49)
    {
      v50 = v49;
      v51 = *v87;
      do
      {
        for (k = 0; k != v50; ++k)
        {
          if (*v87 != v51)
          {
            objc_enumerationMutation(v48);
          }

          v53 = [[FCPuzzlesGameCenterActivity alloc] initWithDictionary:*(*(&v86 + 1) + 8 * k)];
          if (v53)
          {
            [v47 addObject:v53];
          }
        }

        v50 = [v48 countByEnumeratingWithState:&v86 objects:v105 count:16];
      }

      while (v50);
    }

    v54 = [MEMORY[0x1E695DEC8] arrayWithArray:v47];
    v11 = v85;
    puzzleGameCenterActivities = v85->_puzzleGameCenterActivities;
    v85->_puzzleGameCenterActivities = v54;

    dCopy = v83;
    dictionaryCopy = v84;
    storefrontsCopy = v82;
  }

  v11->_streakCheckLocalTimeInterval = FCAppConfigurationIntegerValue(dictionaryCopy, @"streakCheckLocalTimeInterval", 66600);
  v11->_streakNotificationDeliveryLocalTime = FCAppConfigurationIntegerValue(dictionaryCopy, @"streakNotificationDeliveryLocalTime", 68400);
  v11->_streakLapseNotificationMinimumStreakCount = FCAppConfigurationIntegerValue(dictionaryCopy, @"streakLapseNotificationMinimumStreakCount", 7);
  v56 = FCBundle();
  v57 = [v56 localizedStringForKey:@"Apple News+ Puzzles" value:&stru_1F2DC7DC0 table:0];
  v58 = FCAppConfigurationStringValue(dictionaryCopy, @"streakNotificationTitle", v57);
  streakNotificationTitle = v11->_streakNotificationTitle;
  v11->_streakNotificationTitle = v58;

  v60 = FCBundle();
  v61 = [v60 localizedStringForKey:@"Keep your streak going by solving today’s %@." value:&stru_1F2DC7DC0 table:0];
  v62 = FCAppConfigurationStringValue(dictionaryCopy, @"streakNotificationBodyOneStreak", v61);
  streakNotificationBodyOneStreak = v11->_streakNotificationBodyOneStreak;
  v11->_streakNotificationBodyOneStreak = v62;

  v64 = FCBundle();
  v65 = [v64 localizedStringForKey:@"Keep your streaks going by solving today’s %@ and %@." value:&stru_1F2DC7DC0 table:0];
  v66 = FCAppConfigurationStringValue(dictionaryCopy, @"streakNotificationBodyTwoStreaks", v65);
  streakNotificationBodyTwoStreaks = v11->_streakNotificationBodyTwoStreaks;
  v11->_streakNotificationBodyTwoStreaks = v66;

  v68 = FCBundle();
  v69 = [v68 localizedStringForKey:@"Keep your streaks going by solving today’s puzzles." value:&stru_1F2DC7DC0 table:0];
  v70 = FCAppConfigurationStringValue(dictionaryCopy, @"streakNotificationBodyMultipleStreaks", v69);
  streakNotificationBodyMultipleStreaks = v11->_streakNotificationBodyMultipleStreaks;
  v11->_streakNotificationBodyMultipleStreaks = v70;

  v11->_allowLowerProgressOnCompletedPuzzles = FCAppConfigurationBoolValue(dictionaryCopy, @"allowLowerProgressOnCompletedPuzzles", 0);
  v72 = *MEMORY[0x1E69E9840];
  return v11;
}

void __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = FCAppConfigurationDictionaryValueWithDefaultValue(a3, @"sections", 0);
  objc_opt_class();
  if (v6)
  {
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  v9 = [MEMORY[0x1E695DF70] array];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_2;
  v11[3] = &unk_1E7C393D0;
  v12 = v9;
  v10 = v9;
  [v8 enumerateObjectsUsingBlock:v11];
  [*(a1 + 32) setObject:v10 forKey:v5];
}

void __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = [[FCPuzzleFullArchiveMenuOptionsConfiguration alloc] initWithConfigDictionary:v3];

  v4 = v5;
  if (v5)
  {
    [*(a1 + 32) addObject:v5];
    v4 = v5;
  }
}

void __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_3(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;
  v6 = a2;
  v7 = [[FCPuzzleTypeLeaderboard alloc] initWithDictionary:v5];

  [*(a1 + 32) setObject:v7 forKey:v6];
}

void __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_4(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = FCAppConfigurationArrayValueWithDefaultValue(a3, @"puzzleRanks", 0);
  v7 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v6, "count")}];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_5;
  v9[3] = &unk_1E7C393D0;
  v10 = v7;
  v8 = v7;
  [v6 enumerateObjectsUsingBlock:v9];
  [*(a1 + 32) setObject:v8 forKey:v5];
}

void __92__FCPuzzlesConfiguration_initWithConfigDictionary_storefrontID_defaultSupportedStorefronts___block_invoke_5(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v7 = [[FCPuzzleRank alloc] initWithDictionary:v5 index:a3];

  v6 = v7;
  if (v7)
  {
    [*(a1 + 32) addObject:v7];
    v6 = v7;
  }
}

@end