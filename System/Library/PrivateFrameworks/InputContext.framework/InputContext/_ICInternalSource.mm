@interface _ICInternalSource
- (_ICInternalSource)init;
- (id)localizedStringForKey:(id)key withLocale:(id)locale;
- (void)predictedItemsWithProactiveTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds handler:(id)handler;
@end

@implementation _ICInternalSource

- (_ICInternalSource)init
{
  v6.receiver = self;
  v6.super_class = _ICInternalSource;
  v2 = [(_ICInternalSource *)&v6 init];
  v3 = v2;
  if (v2)
  {
    name = v2->_name;
    v2->_name = @"_ICInternalSource";
  }

  return v3;
}

- (void)predictedItemsWithProactiveTrigger:(id)trigger searchContext:(id)context limit:(unint64_t)limit timeoutInMilliseconds:(unint64_t)milliseconds handler:(id)handler
{
  v52[1] = *MEMORY[0x277D85DE8];
  triggerCopy = trigger;
  contextCopy = context;
  handlerCopy = handler;
  v13 = mach_absolute_time();
  attributedString = [triggerCopy attributedString];
  v15 = [attributedString valueForKey:*MEMORY[0x277D23050]];

  attributedString2 = [triggerCopy attributedString];
  v17 = [attributedString2 valueForKey:*MEMORY[0x277D23028]];

  attributedString3 = [triggerCopy attributedString];
  v49 = [attributedString3 valueForKey:*MEMORY[0x277D22FF8]];

  array = [MEMORY[0x277CBEB18] array];
  date = [MEMORY[0x277CBEAA8] date];
  applicationBundleIdentifier = [contextCopy applicationBundleIdentifier];
  if ([v15 isEqualToString:*MEMORY[0x277D22FB8]] && objc_msgSend(v17, "isEqualToString:", *MEMORY[0x277D22F28]))
  {
    availableApps = [triggerCopy availableApps];
    v21 = [availableApps containsObject:@"com.apple.messages.currentLocation"];

    if (v21)
    {
      v47 = v17;
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:@"com.apple.messages.currentLocation" forKey:@"bundleID"];
      v23 = MEMORY[0x277CCACA8];
      v24 = [(_ICInternalSource *)self localizedStringForKey:@"SEND_CURRENT_LOCATION_BUTTON_CAPTION" withLocale:contextCopy];
      v25 = [v23 stringWithValidatedFormat:v24 validFormatSpecifiers:@"%@" error:0, @""];

      LOWORD(v46) = 0;
      v26 = [[_ICPredictedItem alloc] initWithIdentifier:@"currentLocation" itemType:1 score:v25 value:0 label:0 name:date date:1.0 originatingBundleID:applicationBundleIdentifier originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v46 flags:@"com.apple.messages.currentLocation" targetBundleID:dictionary operationData:triggerCopy proactiveTrigger:?];
      [array addObject:v26];
      goto LABEL_12;
    }
  }

  else if ([v15 isEqualToString:@"money"])
  {
    availableApps2 = [triggerCopy availableApps];
    v28 = [availableApps2 containsObject:@"com.apple.messages.surf"];

    if (v28)
    {
      dictionary = [MEMORY[0x277CBEB38] dictionary];
      [dictionary setObject:@"com.apple.messages.surf" forKey:@"bundleID"];
      v25 = [v49 objectForKey:@"Currency"];
      if (!v25)
      {
LABEL_13:

        goto LABEL_14;
      }

      [dictionary setObject:v25 forKey:@"Currency"];
      v47 = v17;
      LOWORD(v46) = 0;
      v26 = [[_ICPredictedItem alloc] initWithIdentifier:@"surf" itemType:1 score:@"Pay" value:0 label:0 name:date date:1.0 originatingBundleID:0 originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v46 flags:0 targetBundleID:dictionary operationData:triggerCopy proactiveTrigger:?];
      [(_ICPredictedItem *)v26 setLayoutHint:1];
      [array addObject:v26];
LABEL_12:

      v17 = v47;
      goto LABEL_13;
    }
  }

  else
  {
    if (![v15 isEqualToString:@"photosharing"])
    {
LABEL_14:
      v35 = 1;
      goto LABEL_16;
    }

    availableApps3 = [triggerCopy availableApps];
    v30 = [availableApps3 containsObject:@"com.apple.messages.photos"];

    if (v30)
    {
      v47 = v17;
      v31 = MEMORY[0x277CBEB38];
      attributedString4 = [triggerCopy attributedString];
      dictionary = [v31 dictionaryWithDictionary:attributedString4];

      [dictionary setObject:@"com.apple.messages.photos" forKey:@"bundleID"];
      v33 = MEMORY[0x277CCACA8];
      v34 = [(_ICInternalSource *)self localizedStringForKey:@"CHOOSE_PHOTOS_CAPTION" withLocale:contextCopy];
      v25 = [v33 stringWithValidatedFormat:v34 validFormatSpecifiers:@"%@" error:0, @""];

      LOWORD(v46) = 0;
      v26 = [[_ICPredictedItem alloc] initWithIdentifier:@"choosePhotos" itemType:1 score:v25 value:0 label:0 name:date date:1.0 originatingBundleID:0 originatingWebsiteURL:0 predictionAge:30 shouldAggregate:v46 flags:0 targetBundleID:dictionary operationData:triggerCopy proactiveTrigger:?];
      [(_ICPredictedItem *)v26 setLayoutHint:0];
      [array addObject:v26];
      goto LABEL_12;
    }
  }

  v35 = 0;
LABEL_16:
  if ([array count])
  {
    v36 = 1;
  }

  else
  {
    v36 = v35;
  }

  if (v36)
  {
    v37 = 0;
  }

  else
  {
    v38 = MEMORY[0x277CCA9B8];
    v51 = *MEMORY[0x277CCA450];
    v52[0] = @"NotSupByAp";
    v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:&v51 count:1];
    v37 = [v38 errorWithDomain:@"com.apple.inputcontext.errors" code:5 userInfo:v39];
  }

  handlerCopy[2](handlerCopy, array, v37);
  v40 = mach_absolute_time();
  v41 = _ICMachTimeToNanoseconds(v40 - v13);
  v42 = _ICProactiveQuickTypeOSLogFacility();
  if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
  {
    [_ICInternalSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
  }

  if (!v41)
  {
    v43 = mach_absolute_time();
    _ICMachTimeToNanoseconds(v43 - v13);
    v44 = _ICProactiveQuickTypeOSLogFacility();
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEBUG))
    {
      [_ICInternalSource predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:];
    }
  }

  v45 = *MEMORY[0x277D85DE8];
}

- (id)localizedStringForKey:(id)key withLocale:(id)locale
{
  v34[1] = *MEMORY[0x277D85DE8];
  keyCopy = key;
  localeCopy = locale;
  locale = [localeCopy locale];
  if (localizedStringForKey_withLocale__onceToken != -1)
  {
    [_ICInternalSource localizedStringForKey:withLocale:];
  }

  v8 = localizedStringForKey_withLocale__localizationsCache;
  locale2 = [localeCopy locale];
  v10 = [v8 objectForKey:locale2];

  if (!v10 || ([v10 objectForKeyedSubscript:keyCopy], (v11 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    if (!v10)
    {
      v27 = localeCopy;
      v28 = keyCopy;
      v34[0] = locale;
      v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v34 count:1];
      v14 = MEMORY[0x277CCA8D8];
      localizations = [v12 localizations];
      v16 = [v14 preferredLocalizationsFromArray:localizations forPreferences:v13];

      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v17 = v16;
      v18 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
      if (v18)
      {
        v19 = v18;
        v20 = *v30;
LABEL_8:
        v21 = 0;
        while (1)
        {
          if (*v30 != v20)
          {
            objc_enumerationMutation(v17);
          }

          v22 = [v12 pathForResource:@"Predictions" ofType:@"strings" inDirectory:0 forLocalization:*(*(&v29 + 1) + 8 * v21)];
          v23 = [MEMORY[0x277CBEAC0] dictionaryWithContentsOfFile:v22];
          if (v23)
          {
            break;
          }

          if (v19 == ++v21)
          {
            v19 = [v17 countByEnumeratingWithState:&v29 objects:v33 count:16];
            if (v19)
            {
              goto LABEL_8;
            }

            goto LABEL_14;
          }
        }

        v24 = v23;
        [localizedStringForKey_withLocale__localizationsCache setObject:v23 forKey:locale];
        keyCopy = v28;
        v11 = [v24 objectForKeyedSubscript:v28];

        if (!v11)
        {
          goto LABEL_17;
        }

        localeCopy = v27;
        v10 = 0;
        goto LABEL_19;
      }

LABEL_14:

      keyCopy = v28;
LABEL_17:

      localeCopy = v27;
      v10 = 0;
    }

    v11 = [v12 localizedStringForKey:keyCopy value:&stru_28670C3F8 table:@"Predictions"];
LABEL_19:
  }

  v25 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)predictedItemsWithProactiveTrigger:searchContext:limit:timeoutInMilliseconds:handler:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 138412546;
  OUTLINED_FUNCTION_3();
  _os_log_debug_impl(&dword_254BD0000, v0, OS_LOG_TYPE_DEBUG, "_ICScales: %@ took %f seconds", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

@end