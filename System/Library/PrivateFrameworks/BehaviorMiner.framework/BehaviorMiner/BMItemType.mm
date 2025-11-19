@interface BMItemType
+ (BMItemType)alarmSnoozedAny;
+ (BMItemType)alarmSnoozedWithID;
+ (BMItemType)alarmStoppedAny;
+ (BMItemType)alarmStoppedWithID;
+ (BMItemType)appActivityType;
+ (BMItemType)appInFocus;
+ (BMItemType)appIntentAutomationHash;
+ (BMItemType)appIntentClass;
+ (BMItemType)appLaunchedReason;
+ (BMItemType)appOpened;
+ (BMItemType)bluetoothConnectedToDevice;
+ (BMItemType)bluetoothConnectedToDeviceWithAddress;
+ (BMItemType)bluetoothConnectedToDeviceWithName;
+ (BMItemType)bundleIdOfHostOpenedShareExtension;
+ (BMItemType)bundleIdOfShareExtensionOpened;
+ (BMItemType)connectedToCarPlay;
+ (BMItemType)connectedToExternalAudioOutput;
+ (BMItemType)dayOfWeek;
+ (BMItemType)enterLocation;
+ (BMItemType)exitLocation;
+ (BMItemType)firstBacklightAfterWakeup;
+ (BMItemType)hourOfDay;
+ (BMItemType)hourOfDaySlot;
+ (BMItemType)interactionContentURL;
+ (BMItemType)interactionDirection;
+ (BMItemType)interactionExtractedTopicFromAttachment;
+ (BMItemType)interactionMechanism;
+ (BMItemType)interactionPhotoContact;
+ (BMItemType)interactionPhotoLocation;
+ (BMItemType)interactionPhotoScene;
+ (BMItemType)interactionRecipients;
+ (BMItemType)interactionSender;
+ (BMItemType)interactionSharingSourceBundleID;
+ (BMItemType)interactionTargetBundleID;
+ (BMItemType)interactionTextTopic;
+ (BMItemType)interactionUTIType;
+ (BMItemType)isWeekend;
+ (BMItemType)locationIdentifier;
+ (BMItemType)mediaGenreStartedPlaying;
+ (BMItemType)mediaIsPlaying;
+ (BMItemType)relevanceAppActivityHash;
+ (BMItemType)relevanceCoarseAppActivityHash;
+ (BMItemType)relevanceCoarseIntentHash;
+ (BMItemType)relevanceIntentHash;
+ (BMItemType)toggledAirplaneMode;
+ (BMItemType)toggledDoNotDisturb;
+ (BMItemType)toggledLowPowerMode;
+ (BMItemType)wifiConnectedToSSID;
+ (BMItemType)wifiDisconnectedFromSSID;
+ (BMItemType)wifiIsConnectedToSSID;
+ (NSMutableSet)allRegisteredItemTypes;
+ (NSSet)allItemTypes;
+ (NSSet)interactionItemTypes;
+ (NSSet)temporalItemTypes;
+ (id)allItemTypesDictionary;
+ (id)taskSpecificItemWithIdentifier:(id)a3 valueClass:(Class)a4;
+ (void)registerItemType:(id)a3;
+ (void)unregisterItemType:(id)a3;
- (BMItemType)initWithCoder:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (id)extractEventFromDKEvent:(id)a3;
- (id)extractItemFromDKEvent:(id)a3;
- (id)extractValueFromDKEvent:(id)a3;
- (unint64_t)hash;
@end

@implementation BMItemType

+ (BMItemType)toggledDoNotDisturb
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"ToggledDoNotDisturb"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] doNotDisturbStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global];

  return v2;
}

uint64_t __47__BMItemType_DoNotDisturb__toggledDoNotDisturb__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 BOOLValue];

  return [v2 numberWithBool:v3];
}

+ (BMItemType)appIntentClass
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppIntentClass"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appIntentsStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_0];

  return v2;
}

id __37__BMItemType_Intents__appIntentClass__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [MEMORY[0x277CFE1F8] intentClass];
  v5 = [v3 objectForKeyedSubscript:v4];

  if (v5 && ([v5 isEqualToString:@"INSendMessageIntent"] & 1) == 0)
  {
    v7 = MEMORY[0x277CCACA8];
    v8 = [v2 source];
    v9 = [v8 bundleID];
    v6 = [v7 stringWithFormat:@"%@:%@", v9, v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

+ (BMItemType)appIntentAutomationHash
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppIntentAutomationHash"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appIntentsStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_15];

  return v2;
}

id __46__BMItemType_Intents__appIntentAutomationHash__block_invoke(uint64_t a1, void *a2)
{
  v53 = *MEMORY[0x277D85DE8];
  v26 = a2;
  v27 = [v26 interaction];
  if ([v27 direction] == 2)
  {
    v2 = 0;
    goto LABEL_20;
  }

  v3 = [v26 metadata];
  v4 = [MEMORY[0x277CFE1F8] intentClass];
  v25 = [v3 objectForKeyedSubscript:v4];

  if (v25)
  {
    v5 = [v27 intent];
    v6 = INIntentWithTypedIntent();

    if ([v6 _isEligibleForSuggestions])
    {
      v7 = [v6 _parameterCombinations];
      v8 = [v7 count];

      if (v8)
      {
        v9 = objc_alloc_init(MEMORY[0x277CBEB58]);
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v51 = 0u;
        v10 = [v6 _validParameterCombinations];
        v11 = 0;
        v12 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
        if (v12)
        {
          v13 = *v49;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v49 != v13)
              {
                objc_enumerationMutation(v10);
              }

              v15 = *(*(&v48 + 1) + 8 * i);
              v16 = [v6 _validParameterCombinations];
              v17 = [v16 objectForKey:v15];

              [v9 unionSet:v15];
              LOBYTE(v15) = [v17 isPrimary];

              v11 |= v15;
            }

            v12 = [v10 countByEnumeratingWithState:&v48 objects:v52 count:16];
          }

          while (v12);
        }

        v42 = 0;
        v43 = &v42;
        v44 = 0x3032000000;
        v45 = __Block_byref_object_copy_;
        v46 = __Block_byref_object_dispose_;
        v47 = 0;
        v36 = 0;
        v37 = &v36;
        v38 = 0x3032000000;
        v39 = __Block_byref_object_copy_;
        v40 = __Block_byref_object_dispose_;
        v41 = 0;
        v34[0] = 0;
        v34[1] = v34;
        v34[2] = 0x2020000000;
        v35 = (v11 & 1) == 0;
        v18 = [v6 _validParameterCombinations];
        v28[0] = MEMORY[0x277D85DD0];
        v28[1] = 3221225472;
        v28[2] = __46__BMItemType_Intents__appIntentAutomationHash__block_invoke_17;
        v28[3] = &unk_278D06648;
        v30 = v34;
        v31 = &v42;
        v6 = v6;
        v29 = v6;
        v32 = &v36;
        v33 = v11 & 1;
        [v18 enumerateKeysAndObjectsUsingBlock:v28];
        if (v43[5] && v37[5])
        {
          v19 = MEMORY[0x277CCACA8];
          v20 = [v26 source];
          v21 = [v20 bundleID];
          v22 = [v43[5] debugDescription];
          v2 = [v19 stringWithFormat:@"%@:%@:%@", v21, v22, v37[5]];
        }

        else
        {
          v2 = 0;
        }

        _Block_object_dispose(v34, 8);
        _Block_object_dispose(&v36, 8);

        _Block_object_dispose(&v42, 8);
        goto LABEL_19;
      }
    }
  }

  else
  {
    v6 = BMLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      __46__BMItemType_Intents__appIntentAutomationHash__block_invoke_cold_1(v26, v6);
    }
  }

  v2 = 0;
LABEL_19:

LABEL_20:
  v23 = *MEMORY[0x277D85DE8];

  return v2;
}

void __46__BMItemType_Intents__appIntentAutomationHash__block_invoke_17(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a2;
  if (([a3 isPrimary] & 1) != 0 || *(*(*(a1 + 40) + 8) + 24) == 1 && (!objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count") || (v22 = objc_msgSend(v8, "count"), v22 > objc_msgSend(*(*(*(a1 + 48) + 8) + 40), "count"))))
  {
    objc_storeStrong((*(*(a1 + 48) + 8) + 40), a2);
    v9 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{objc_msgSend(v8, "count")}];
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v10 = *(*(*(a1 + 48) + 8) + 40);
    v11 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v26;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v26 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v25 + 1) + 8 * i);
          v16 = [*(a1 + 32) valueForKey:v15];
          [v9 setObject:v16 forKeyedSubscript:v15];
        }

        v12 = [v10 countByEnumeratingWithState:&v25 objects:v29 count:16];
      }

      while (v12);
    }

    v24 = 0;
    v17 = [MEMORY[0x277CFE098] md5forDictionary:v9 error:&v24];
    v18 = v24;
    v19 = *(*(a1 + 56) + 8);
    v20 = *(v19 + 40);
    *(v19 + 40) = v17;

    if (v18)
    {
      v21 = BMLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        __46__BMItemType_Intents__appIntentAutomationHash__block_invoke_17_cold_1(a1, v21);
      }
    }

    if ([v8 containsObject:@"content"])
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
    }

    else if (*(a1 + 64) == 1)
    {
      *a4 = 1;
    }
  }

  v23 = *MEMORY[0x277D85DE8];
}

+ (BMItemType)relevanceIntentHash
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"RelevanceIntentHash"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appIntentsStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_31];

  return v2;
}

id __42__BMItemType_Intents__relevanceIntentHash__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 interaction];
  v4 = [v3 intent];
  v5 = BMCreateShortcutFilter();
  v6 = [v5 intentByFilteringIntent:v4 withLevel:0];

  v7 = 0;
  if (v5 && v6)
  {
    v8 = [v2 value];
    v9 = [v8 stringValue];
    v7 = [v5 identifierForIntent:v6 bundleIdentifier:v9];
  }

  return v7;
}

+ (BMItemType)relevanceCoarseIntentHash
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"RelevanceCoarseIntentHash"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appIntentsStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_36];

  return v2;
}

id __48__BMItemType_Intents__relevanceCoarseIntentHash__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 interaction];
  v4 = [v3 intent];
  v5 = BMCreateShortcutFilter();
  v6 = [v5 intentByFilteringIntent:v4 withLevel:0];

  v7 = 0;
  if (v5 && v6)
  {
    v8 = [v2 value];
    v9 = [v8 stringValue];
    v7 = [v5 identifierForIntent:v6 bundleIdentifier:v9];
  }

  return v7;
}

+ (BMItemType)appActivityType
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppActivityType"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appActivityStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_1];

  return v2;
}

id __42__BMItemType_AppActivity__appActivityType__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = objc_autoreleasePoolPush();
  v4 = [v2 stringValue];
  v5 = v4;
  if (!v4 || ([v4 isEqualToString:@"com.apple.mobilemail"] & 1) != 0 || (objc_msgSend(v5, "isEqualToString:", @"com.apple.mobilesafari") & 1) != 0)
  {
    v6 = 0;
  }

  else
  {
    v8 = [v2 metadata];
    v9 = [MEMORY[0x277CFE170] isEligibleForPrediction];
    v10 = [v8 objectForKeyedSubscript:v9];

    if (![v10 BOOLValue])
    {
      goto LABEL_11;
    }

    v11 = [v2 metadata];
    v12 = [MEMORY[0x277CFE170] activityType];
    v13 = [v11 objectForKeyedSubscript:v12];

    if (v13)
    {
      v6 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v5, v13];
    }

    else
    {
LABEL_11:
      v6 = 0;
    }
  }

  objc_autoreleasePoolPop(v3);

  return v6;
}

+ (BMItemType)relevanceAppActivityHash
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"RelevanceAppActivityHash"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appActivityStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_18];

  return v2;
}

id __51__BMItemType_AppActivity__relevanceAppActivityHash__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [MEMORY[0x277CFE170] userActivityRequiredString];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:v5 secondaryString:0 optionalData:0];
  v7 = BMCreateShortcutFilter();
  v8 = [v7 userActivityByFilteringUserActivity:v6 withLevel:0];

  v9 = 0;
  if (v7 && v8)
  {
    v10 = [v2 value];
    v11 = [v10 stringValue];
    v9 = [v7 identifierForUserActivity:v8 bundleIdentifier:v11];
  }

  return v9;
}

+ (BMItemType)relevanceCoarseAppActivityHash
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"RelevanceCoarseAppActivityHash"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appActivityStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_23];

  return v2;
}

id __57__BMItemType_AppActivity__relevanceCoarseAppActivityHash__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [MEMORY[0x277CFE170] userActivityRequiredString];
  v5 = [v3 objectForKeyedSubscript:v4];

  v6 = [objc_alloc(MEMORY[0x277CC1EF0]) _initWithUserActivityStrings:v5 secondaryString:0 optionalData:0];
  v7 = BMCreateShortcutFilter();
  v8 = [v7 userActivityByFilteringUserActivity:v6 withLevel:0];

  v9 = 0;
  if (v7 && v8)
  {
    v10 = [v2 value];
    v11 = [v10 stringValue];
    v9 = [v7 identifierForUserActivity:v8 bundleIdentifier:v11];
  }

  return v9;
}

+ (BMItemType)toggledLowPowerMode
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"ToggledLowPowerMode"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] deviceLowPowerModeStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_2];

  return v2;
}

uint64_t __47__BMItemType_LowPowerMode__toggledLowPowerMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 BOOLValue];

  return [v2 numberWithBool:v3];
}

+ (BMItemType)firstBacklightAfterWakeup
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"FirstBacklightAfterWakeup"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] userIsFirstBacklightOnAfterWakeup];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_3];

  return v2;
}

id __45__BMItemType_User__firstBacklightAfterWakeup__block_invoke(uint64_t a1, void *a2)
{
  if ([a2 BOOLValue])
  {
    v2 = MEMORY[0x277CBEC38];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

+ (BMItemType)bluetoothConnectedToDevice
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"BluetoothConnectedToDevice"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] bluetoothIsConnectedStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_4];

  return v2;
}

id __51__BMItemType_Bluetooth__bluetoothConnectedToDevice__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [MEMORY[0x277CFE198] deviceType];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

+ (BMItemType)bluetoothConnectedToDeviceWithName
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"BluetoothConnectedToDeviceWithName"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] bluetoothIsConnectedStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_11];

  return v2;
}

id __59__BMItemType_Bluetooth__bluetoothConnectedToDeviceWithName__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [MEMORY[0x277CFE198] name];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

+ (BMItemType)bluetoothConnectedToDeviceWithAddress
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"BluetoothConnectedToDeviceWithAddress"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] bluetoothIsConnectedStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_16];

  return v2;
}

id __62__BMItemType_Bluetooth__bluetoothConnectedToDeviceWithAddress__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [MEMORY[0x277CFE198] address];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

+ (BMItemType)mediaIsPlaying
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"MediaIsPlaying"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];
  v3 = [MEMORY[0x277CFE298] nowPlayingStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_5];

  return v2;
}

uint64_t __35__BMItemType_Media__mediaIsPlaying__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [MEMORY[0x277CFE248] playing];
  v4 = [v2 objectForKeyedSubscript:v3];
  v5 = [v4 integerValue];

  if (v5 == 1)
  {
    return MEMORY[0x277CBEC38];
  }

  else
  {
    return 0;
  }
}

+ (BMItemType)mediaGenreStartedPlaying
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"MediaGenreStartedPlaying"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] nowPlayingStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_11_0];

  return v2;
}

id __45__BMItemType_Media__mediaGenreStartedPlaying__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 metadata];
  v3 = [MEMORY[0x277CFE248] genre];
  v4 = [v2 objectForKeyedSubscript:v3];

  return v4;
}

+ (BMItemType)hourOfDay
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"HourOfDay"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];

  return v2;
}

+ (BMItemType)hourOfDaySlot
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"HourOfDaySlot"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];

  return v2;
}

+ (BMItemType)dayOfWeek
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"DayOfWeek"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];

  return v2;
}

+ (BMItemType)isWeekend
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"IsWeekend"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];

  return v2;
}

+ (NSSet)temporalItemTypes
{
  v2 = objc_alloc(MEMORY[0x277CBEB98]);
  v3 = +[BMItemType hourOfDay];
  v4 = +[BMItemType hourOfDaySlot];
  v5 = +[BMItemType dayOfWeek];
  v6 = +[BMItemType isWeekend];
  v7 = [v2 initWithObjects:{v3, v4, v5, v6, 0}];

  return v7;
}

+ (BMItemType)appOpened
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppOpened"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appInFocusStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_6];

  return v2;
}

id __35__BMItemType_AppInFocus__appOpened__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (BMIsNotAppExtension(v2))
  {
    v3 = [v2 value];
    v4 = [v3 stringValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BMItemType)appLaunchedReason
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppLaunchedReason"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appInFocusStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_9];

  return v2;
}

id __43__BMItemType_AppInFocus__appLaunchedReason__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (BMIsNotAppExtension(v2))
  {
    v3 = [v2 metadata];
    v4 = [MEMORY[0x277CFE178] launchReason];
    v5 = [v3 objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BMItemType)appInFocus
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppInFocus"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];
  v3 = [MEMORY[0x277CFE298] appInFocusStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_14];

  return v2;
}

id __36__BMItemType_AppInFocus__appInFocus__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (BMIsNotAppExtension(v2))
  {
    v3 = [v2 value];
    v4 = [v3 stringValue];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BMItemType)bundleIdOfShareExtensionOpened
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"ShareExtensionOpened"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appInFocusStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_19];

  return v2;
}

id __56__BMItemType_AppInFocus__bundleIdOfShareExtensionOpened__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (BMIsShareExtension(v2))
  {
    v3 = [v2 stringValue];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

+ (BMItemType)bundleIdOfHostOpenedShareExtension
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AppHostOpenedShareExtension"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] appInFocusStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_24];

  return v2;
}

id __60__BMItemType_AppInFocus__bundleIdOfHostOpenedShareExtension__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  if (BMIsShareExtension(v2))
  {
    v3 = [v2 metadata];
    v4 = [MEMORY[0x277CFE178] extensionHostIdentifier];
    v5 = [v3 objectForKeyedSubscript:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

+ (BMItemType)alarmSnoozedAny
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AlarmSnoozedAny"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] alarmStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_7];

  return v2;
}

__CFString *__36__BMItemType_Alarm__alarmSnoozedAny__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [MEMORY[0x277CFE140] snoozed];
  if ([v2 isEqual:v3])
  {
    v4 = @"ANY";
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (BMItemType)alarmStoppedAny
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AlarmStoppedAny"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] alarmStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_12];

  return v2;
}

__CFString *__36__BMItemType_Alarm__alarmStoppedAny__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [MEMORY[0x277CFE140] stopped];
  if ([v2 isEqual:v3])
  {
    v4 = @"ANY";
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (BMItemType)alarmSnoozedWithID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AlarmSnoozedWithID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] alarmStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_17];

  return v2;
}

void *__39__BMItemType_Alarm__alarmSnoozedWithID__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [MEMORY[0x277CFE138] isSleep];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = @"WAKEUP";
  if (!v5)
  {
    v6 = @"EXISTING";
  }

  v7 = v6;

  v8 = MEMORY[0x277CCACA8];
  v9 = [v2 metadata];
  v10 = [MEMORY[0x277CFE138] alarmID];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 stringWithFormat:@"%@:%@", v7, v11];

  v13 = [v2 value];

  v14 = [MEMORY[0x277CFE140] snoozed];
  if ([v13 isEqual:v14])
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

+ (BMItemType)alarmStoppedWithID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"AlarmStoppedWithID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] alarmStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_32];

  return v2;
}

void *__39__BMItemType_Alarm__alarmStoppedWithID__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 metadata];
  v4 = [MEMORY[0x277CFE138] isSleep];
  v5 = [v3 objectForKeyedSubscript:v4];
  v6 = @"WAKEUP";
  if (!v5)
  {
    v6 = @"EXISTING";
  }

  v7 = v6;

  v8 = MEMORY[0x277CCACA8];
  v9 = [v2 metadata];
  v10 = [MEMORY[0x277CFE138] alarmID];
  v11 = [v9 objectForKeyedSubscript:v10];
  v12 = [v8 stringWithFormat:@"%@:%@", v7, v11];

  v13 = [v2 value];

  v14 = [MEMORY[0x277CFE140] stopped];
  if ([v13 isEqual:v14])
  {
    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = v15;

  return v15;
}

+ (BMItemType)connectedToCarPlay
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"ConnectedToCarPlay"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] carPlayIsConnectedStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_8];

  return v2;
}

uint64_t __41__BMItemType_CarPlay__connectedToCarPlay__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 BOOLValue];

  return [v2 numberWithBool:v3];
}

+ (BMItemType)locationIdentifier
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"CoreRoutineLocationIdentifier"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)enterLocation
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"CoreRoutineEnterLocation"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)exitLocation
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"CoreRoutineExitLocation"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:2];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionMechanism
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionMechanism"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionDirection
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionDirection"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionContentURL
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionContentURL"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionSender
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionSender"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionRecipients
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionRecipients"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionPhotoScene
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionPhotoScene"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionPhotoContact
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionPhotoContact"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionPhotoLocation
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionPhotoLocation"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionUTIType
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionUTIType"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionTextTopic
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionTextTopic"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionSharingSourceBundleID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionSharingSourceBundleID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionTargetBundleID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionTargetBundleID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (BMItemType)interactionExtractedTopicFromAttachment
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"InteractionExtractedTopicFromAttachment"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  [(BMItemType *)v2 setEventStream:0];
  [(BMItemType *)v2 setValueExtractBlock:0];

  return v2;
}

+ (NSSet)interactionItemTypes
{
  v15 = MEMORY[0x277CBEB98];
  v18 = [a1 interactionMechanism];
  v17 = [a1 interactionDirection];
  v3 = [a1 interactionContentURL];
  v14 = [a1 interactionSender];
  v13 = [a1 interactionRecipients];
  v4 = [a1 interactionPhotoScene];
  v5 = [a1 interactionPhotoContact];
  v6 = [a1 interactionPhotoLocation];
  v7 = [a1 interactionUTIType];
  v8 = [a1 interactionTextTopic];
  v9 = [a1 interactionSharingSourceBundleID];
  v10 = [a1 interactionTargetBundleID];
  v11 = [a1 interactionExtractedTopicFromAttachment];
  v16 = [v15 setWithObjects:{v18, v17, v3, v14, v13, v4, v5, v6, v7, v8, v9, v10, v11, 0}];

  return v16;
}

+ (BMItemType)connectedToExternalAudioOutput
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"ConnectedToExternalAudioOutput"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] audioOutputRouteStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_10];

  return v2;
}

void *__51__BMItemType_Audio__connectedToExternalAudioOutput__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [MEMORY[0x277CFE188] external];
  if ([v2 isEqual:v3])
  {
    v4 = MEMORY[0x277CBEC38];
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  return v4;
}

+ (id)taskSpecificItemWithIdentifier:(id)a3 valueClass:(Class)a4
{
  v5 = a3;
  v6 = objc_alloc_init(BMItemType);
  [(BMItemType *)v6 setIdentifier:v5];

  [(BMItemType *)v6 setValueClass:a4];
  [(BMItemType *)v6 setEdge:1];
  [(BMItemType *)v6 setEventStream:0];
  [(BMItemType *)v6 setValueExtractBlock:0];

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc_init(BMItemType);
  v5 = [(BMItemType *)self identifier];
  [(BMItemType *)v4 setIdentifier:v5];

  [(BMItemType *)v4 setValueClass:[(BMItemType *)self valueClass]];
  [(BMItemType *)v4 setEdge:[(BMItemType *)self edge]];
  v6 = [(BMItemType *)self eventStream];
  [(BMItemType *)v4 setEventStream:v6];

  v7 = [(BMItemType *)self valueExtractBlock];
  [(BMItemType *)v4 setValueExtractBlock:v7];

  return v4;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v8 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      v6 = [(BMItemType *)self identifier];
      v7 = [(BMItemType *)v5 identifier];

      v8 = [v6 isEqualToString:v7];
    }

    else
    {
      v8 = 0;
    }
  }

  return v8;
}

- (unint64_t)hash
{
  v2 = [(BMItemType *)self identifier];
  v3 = [v2 hash];

  return v3;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(BMItemType *)self identifier];
  v6 = [v3 stringWithFormat:@"<%@: %p> identifier: %@", v4, self, v5];

  return v6;
}

- (id)extractValueFromDKEvent:(id)a3
{
  v4 = a3;
  v5 = [(BMItemType *)self eventStream];
  v6 = [v4 stream];
  if (([v5 isEqual:v6] & 1) == 0)
  {

    v8 = 0;
    goto LABEL_5;
  }

  v7 = [(BMItemType *)self valueExtractBlock];

  if (v7)
  {
    v5 = [(BMItemType *)self valueExtractBlock];
    v8 = (v5)[2](v5, v4);
LABEL_5:

    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (id)extractItemFromDKEvent:(id)a3
{
  v4 = [(BMItemType *)self extractValueFromDKEvent:a3];
  if (v4)
  {
    v5 = [[BMItem alloc] initWithType:self value:v4];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)extractEventFromDKEvent:(id)a3
{
  v4 = a3;
  v5 = [(BMItemType *)self extractItemFromDKEvent:v4];
  if (!v5)
  {
    v10 = 0;
    goto LABEL_9;
  }

  v6 = [v4 startDate];
  v7 = [v4 endDate];
  v8 = [(BMItemType *)self edge];
  if (!v8)
  {
    v9 = v6;
    v6 = v7;
    goto LABEL_7;
  }

  if (v8 == 2)
  {
    v9 = v7;
LABEL_7:
    v7 = v9;

    v6 = v7;
  }

  v10 = [[BMEvent alloc] initWithStartDate:v6 endDate:v7 item:v5];

LABEL_9:

  return v10;
}

+ (NSMutableSet)allRegisteredItemTypes
{
  v2 = a1;
  objc_sync_enter(v2);
  v3 = _allRegisteredItemTypes;
  if (!_allRegisteredItemTypes)
  {
    v4 = objc_alloc_init(MEMORY[0x277CBEB58]);
    v5 = _allRegisteredItemTypes;
    _allRegisteredItemTypes = v4;

    v3 = _allRegisteredItemTypes;
  }

  v6 = v3;
  objc_sync_exit(v2);

  return v6;
}

+ (void)registerItemType:(id)a3
{
  v6 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  if (v6)
  {
    v5 = [v4 allRegisteredItemTypes];
    [v5 addObject:v6];
  }

  objc_sync_exit(v4);
}

+ (void)unregisterItemType:(id)a3
{
  v6 = a3;
  v4 = a1;
  objc_sync_enter(v4);
  if (v6)
  {
    v5 = [v4 allRegisteredItemTypes];
    [v5 removeObject:v6];
  }

  objc_sync_exit(v4);
}

+ (NSSet)allItemTypes
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __26__BMItemType_allItemTypes__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
  if (allItemTypes_onceToken != -1)
  {
    dispatch_once(&allItemTypes_onceToken, block);
  }

  v3 = [a1 allRegisteredItemTypes];
  v4 = [v3 copy];

  return v4;
}

void __26__BMItemType_allItemTypes__block_invoke(uint64_t a1)
{
  v87 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v3 = [v2 hourOfDay];
  [v2 registerItemType:v3];

  v4 = *(a1 + 32);
  v5 = [v4 hourOfDaySlot];
  [v4 registerItemType:v5];

  v6 = *(a1 + 32);
  v7 = [v6 dayOfWeek];
  [v6 registerItemType:v7];

  v8 = *(a1 + 32);
  v9 = [v8 isWeekend];
  [v8 registerItemType:v9];

  v10 = *(a1 + 32);
  v11 = [v10 appOpened];
  [v10 registerItemType:v11];

  v12 = *(a1 + 32);
  v13 = [v12 appLaunchedReason];
  [v12 registerItemType:v13];

  v14 = *(a1 + 32);
  v15 = [v14 appInFocus];
  [v14 registerItemType:v15];

  v16 = *(a1 + 32);
  v17 = [v16 bundleIdOfShareExtensionOpened];
  [v16 registerItemType:v17];

  v18 = *(a1 + 32);
  v19 = [v18 bundleIdOfHostOpenedShareExtension];
  [v18 registerItemType:v19];

  v20 = *(a1 + 32);
  v21 = [v20 appIntentClass];
  [v20 registerItemType:v21];

  v22 = *(a1 + 32);
  v23 = [v22 appIntentAutomationHash];
  [v22 registerItemType:v23];

  v24 = *(a1 + 32);
  v25 = [v24 relevanceIntentHash];
  [v24 registerItemType:v25];

  v26 = *(a1 + 32);
  v27 = [v26 relevanceCoarseIntentHash];
  [v26 registerItemType:v27];

  v28 = *(a1 + 32);
  v29 = [v28 appActivityType];
  [v28 registerItemType:v29];

  v30 = *(a1 + 32);
  v31 = [v30 relevanceAppActivityHash];
  [v30 registerItemType:v31];

  v32 = *(a1 + 32);
  v33 = [v32 relevanceCoarseAppActivityHash];
  [v32 registerItemType:v33];

  v34 = *(a1 + 32);
  v35 = [v34 bluetoothConnectedToDevice];
  [v34 registerItemType:v35];

  v36 = *(a1 + 32);
  v37 = [v36 bluetoothConnectedToDeviceWithName];
  [v36 registerItemType:v37];

  v38 = *(a1 + 32);
  v39 = [v38 bluetoothConnectedToDeviceWithAddress];
  [v38 registerItemType:v39];

  v40 = *(a1 + 32);
  v41 = [v40 locationIdentifier];
  [v40 registerItemType:v41];

  v42 = *(a1 + 32);
  v43 = [v42 enterLocation];
  [v42 registerItemType:v43];

  v44 = *(a1 + 32);
  v45 = [v44 exitLocation];
  [v44 registerItemType:v45];

  v46 = *(a1 + 32);
  v47 = [v46 mediaIsPlaying];
  [v46 registerItemType:v47];

  v48 = *(a1 + 32);
  v49 = [v48 mediaGenreStartedPlaying];
  [v48 registerItemType:v49];

  v50 = *(a1 + 32);
  v51 = [v50 connectedToExternalAudioOutput];
  [v50 registerItemType:v51];

  v52 = *(a1 + 32);
  v53 = [v52 firstBacklightAfterWakeup];
  [v52 registerItemType:v53];

  v54 = *(a1 + 32);
  v55 = [v54 toggledAirplaneMode];
  [v54 registerItemType:v55];

  v56 = *(a1 + 32);
  v57 = [v56 connectedToCarPlay];
  [v56 registerItemType:v57];

  v58 = *(a1 + 32);
  v59 = [v58 toggledDoNotDisturb];
  [v58 registerItemType:v59];

  v60 = *(a1 + 32);
  v61 = [v60 toggledLowPowerMode];
  [v60 registerItemType:v61];

  v62 = *(a1 + 32);
  v63 = [v62 wifiConnectedToSSID];
  [v62 registerItemType:v63];

  v64 = *(a1 + 32);
  v65 = [v64 wifiDisconnectedFromSSID];
  [v64 registerItemType:v65];

  v66 = *(a1 + 32);
  v67 = [v66 wifiIsConnectedToSSID];
  [v66 registerItemType:v67];

  v68 = *(a1 + 32);
  v69 = [v68 alarmStoppedAny];
  [v68 registerItemType:v69];

  v70 = *(a1 + 32);
  v71 = [v70 alarmSnoozedAny];
  [v70 registerItemType:v71];

  v72 = *(a1 + 32);
  v73 = [v72 alarmStoppedWithID];
  [v72 registerItemType:v73];

  v74 = *(a1 + 32);
  v75 = [v74 alarmSnoozedWithID];
  [v74 registerItemType:v75];

  v84 = 0u;
  v85 = 0u;
  v82 = 0u;
  v83 = 0u;
  v76 = +[BMItemType interactionItemTypes];
  v77 = [v76 countByEnumeratingWithState:&v82 objects:v86 count:16];
  if (v77)
  {
    v78 = v77;
    v79 = *v83;
    do
    {
      for (i = 0; i != v78; ++i)
      {
        if (*v83 != v79)
        {
          objc_enumerationMutation(v76);
        }

        [*(a1 + 32) registerItemType:*(*(&v82 + 1) + 8 * i)];
      }

      v78 = [v76 countByEnumeratingWithState:&v82 objects:v86 count:16];
    }

    while (v78);
  }

  v81 = *MEMORY[0x277D85DE8];
}

+ (id)allItemTypesDictionary
{
  v19 = *MEMORY[0x277D85DE8];
  v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = [a1 allItemTypes];
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * i);
        v10 = [v9 identifier];
        [v3 setObject:v9 forKeyedSubscript:v10];
      }

      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = [v3 copy];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (BMItemType)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"identifier"];

  v6 = [objc_opt_class() allItemTypesDictionary];
  v7 = [v6 objectForKey:v5];

  return v7;
}

+ (BMItemType)toggledAirplaneMode
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"ToggledAirplaneMode"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] airplaneModeStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_11];

  return v2;
}

uint64_t __47__BMItemType_AirplaneMode__toggledAirplaneMode__block_invoke(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CCABB0];
  v3 = [a2 BOOLValue];

  return [v2 numberWithBool:v3];
}

+ (BMItemType)wifiConnectedToSSID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"WiFiConnectedToSSID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:0];
  v3 = [MEMORY[0x277CFE298] wifiConnectionStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_13];

  return v2;
}

id __39__BMItemType_WiFi__wifiConnectedToSSID__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

+ (BMItemType)wifiDisconnectedFromSSID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"WiFiDisconnectedFromSSID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:2];
  v3 = [MEMORY[0x277CFE298] wifiConnectionStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_8];

  return v2;
}

id __44__BMItemType_WiFi__wifiDisconnectedFromSSID__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

+ (BMItemType)wifiIsConnectedToSSID
{
  v2 = objc_alloc_init(BMItemType);
  [(BMItemType *)v2 setIdentifier:@"WiFiIsConnectedToSSID"];
  [(BMItemType *)v2 setValueClass:objc_opt_class()];
  [(BMItemType *)v2 setEdge:1];
  v3 = [MEMORY[0x277CFE298] wifiConnectionStream];
  [(BMItemType *)v2 setEventStream:v3];

  [(BMItemType *)v2 setValueExtractBlock:&__block_literal_global_13];

  return v2;
}

id __41__BMItemType_WiFi__wifiIsConnectedToSSID__block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 value];
  v3 = [v2 stringValue];

  return v3;
}

void __46__BMItemType_Intents__appIntentAutomationHash__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_241ACA000, a2, OS_LOG_TYPE_ERROR, "No intentClass found on intent considered for mining: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

void __46__BMItemType_Intents__appIntentAutomationHash__block_invoke_17_cold_1(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [*(a1 + 32) _className];
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_241ACA000, a2, OS_LOG_TYPE_ERROR, "Error hashing combinations for intent %@", &v5, 0xCu);

  v4 = *MEMORY[0x277D85DE8];
}

@end