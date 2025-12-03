@interface HMTrigger(HFAdditions)
+ (__CFString)hf_localizedStringForSignficantEvent:()HFAdditions offset:;
+ (id)hf_sanitizeTriggerName:()HFAdditions home:;
- (id)hf_anonymousActions;
- (id)hf_forceDisableReasons;
- (id)hf_naturalLanguageNameWithHome:()HFAdditions type:;
- (uint64_t)hf_affectsCharacteristics:()HFAdditions;
- (uint64_t)hf_affectsHomeKitObject:()HFAdditions;
- (uint64_t)hf_affectsMatterAccessory:()HFAdditions;
- (uint64_t)hf_affectsProfiles:()HFAdditions;
- (uint64_t)hf_isShortcutOwned;
- (uint64_t)hf_shouldDisplayTrigger;
@end

@implementation HMTrigger(HFAdditions)

- (id)hf_naturalLanguageNameWithHome:()HFAdditions type:
{
  v6 = a3;
  v7 = [[HFTriggerNaturalLanguageOptions alloc] initWithHome:v6 nameType:a4];

  v8 = [self hf_naturalLanguageNameWithOptions:v7];

  return v8;
}

- (uint64_t)hf_isShortcutOwned
{
  actionSets = [self actionSets];
  v2 = [actionSets na_any:&__block_literal_global_144];

  return v2;
}

- (id)hf_anonymousActions
{
  actionSets = [self actionSets];
  v3 = [actionSets count];

  if (!v3)
  {
    if (_MergedGlobals_277 != -1)
    {
      dispatch_once(&_MergedGlobals_277, &__block_literal_global_8_6);
    }
  }

  v4 = MEMORY[0x277CBEB98];
  actionSets2 = [self actionSets];
  v6 = [v4 setWithArray:actionSets2];
  v7 = [v6 na_flatMap:&__block_literal_global_12_5];

  return v7;
}

- (uint64_t)hf_shouldDisplayTrigger
{
  objc_opt_class();
  selfCopy = self;
  if (objc_opt_isKindOfClass())
  {
    v3 = selfCopy;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3;

  if (v4)
  {
    creator = [v4 creator];
    if (creator)
    {

LABEL_10:
      events = [v4 events];
      v6 = [events na_any:&__block_literal_global_19_5];

      goto LABEL_11;
    }

    events2 = [v4 events];
    v8 = [events2 na_all:&__block_literal_global_16_5];

    if ((v8 & 1) == 0)
    {
      goto LABEL_10;
    }

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

LABEL_11:

  return v6;
}

- (id)hf_forceDisableReasons
{
  if (![self hf_requiresConfirmationToRun] || +[HFUtilities isAMac](HFUtilities, "isAMac") || +[HFUtilities isAVisionPro](HFUtilities, "isAVisionPro"))
  {
    v1 = [MEMORY[0x277D2C900] futureWithResult:&unk_282524408];
  }

  else
  {
    v3 = +[HFUserNotificationCenter sharedInstance];
    notificationSettings = [v3 notificationSettings];
    v1 = [notificationSettings flatMap:&__block_literal_global_25_10];
  }

  return v1;
}

+ (__CFString)hf_localizedStringForSignficantEvent:()HFAdditions offset:
{
  v7 = a3;
  v8 = a4;
  if (v8)
  {
    v9 = objc_alloc_init(MEMORY[0x277CCA958]);
    mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
    preferredLocalizations = [mainBundle preferredLocalizations];
    firstObject = [preferredLocalizations firstObject];
    if ([firstObject isEqualToString:@"en"])
    {
      v13 = 3;
    }

    else
    {
      v13 = 2;
    }

    [v9 setUnitsStyle:v13];

    [v9 setAllowedUnits:96];
    hf_absoluteValue = [v8 hf_absoluteValue];
    v15 = [v9 stringFromDateComponents:hf_absoluteValue];

    v16 = [MEMORY[0x277CBEAA8] dateWithTimeIntervalSinceReferenceDate:0.0];
    currentCalendar = [MEMORY[0x277CBEA80] currentCalendar];
    v18 = [currentCalendar dateByAddingComponents:v8 toDate:v16 options:0];

    v19 = [v16 isEqual:v18];
    v20 = [v16 earlierDate:v18];

    if ([v7 isEqualToString:*MEMORY[0x277CD0FA8]])
    {
      if (!v19)
      {
        if (v20 == v16)
        {
          HFLocalizedStringWithFormat(@"HFTimerTriggerTimeStringSunriseWithPositiveOffset", @"%@", v21, v22, v23, v24, v25, v26, v15);
        }

        else
        {
          HFLocalizedStringWithFormat(@"HFTimerTriggerTimeStringSunriseWithNegativeOffset", @"%@", v21, v22, v23, v24, v25, v26, v15);
        }

        v34 = LABEL_22:;
        goto LABEL_23;
      }

      goto LABEL_11;
    }

    if ([v7 isEqualToString:*MEMORY[0x277CD0FB0]])
    {
      if (!v19)
      {
        if (v20 == v16)
        {
          HFLocalizedStringWithFormat(@"HFTimerTriggerTimeStringSunseteWithPositiveOffset", @"%@", v28, v29, v30, v31, v32, v33, v15);
        }

        else
        {
          HFLocalizedStringWithFormat(@"HFTimerTriggerTimeStringSunsetWithNegativeOffset", @"%@", v28, v29, v30, v31, v32, v33, v15);
        }

        goto LABEL_22;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (([v7 isEqualToString:*MEMORY[0x277CD0FA8]] & 1) == 0)
  {
    v15 = 0;
    if ([v7 isEqualToString:*MEMORY[0x277CD0FB0]])
    {
LABEL_17:
      v27 = @"HFTimerTriggerTimeStringSunset";
      goto LABEL_18;
    }

LABEL_19:
    currentHandler = [MEMORY[0x277CCA890] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"HMTrigger+HFAdditions.m" lineNumber:170 description:{@"Unsupport significant event type: %@", v7}];

    v36 = &stru_2824B1A78;
    goto LABEL_24;
  }

  v15 = 0;
LABEL_11:
  v27 = @"HFTimerTriggerTimeStringSunrise";
LABEL_18:
  v34 = _HFLocalizedStringWithDefaultValue(v27, v27, 1);
LABEL_23:
  v36 = v34;
LABEL_24:

  return v36;
}

+ (id)hf_sanitizeTriggerName:()HFAdditions home:
{
  v5 = MEMORY[0x277CBEB98];
  v6 = a3;
  triggers = [a4 triggers];
  v8 = [v5 setWithArray:triggers];
  v9 = [v8 na_map:&__block_literal_global_70_5];

  v10 = [HFUtilities sanitizeAutoGeneratedHomeKitName:v6];

  v11 = [HFUtilities uniqueHomeKitNameForName:v10 allNames:v9];

  return v11;
}

- (uint64_t)hf_affectsHomeKitObject:()HFAdditions
{
  v4 = a3;
  v5 = objc_opt_new();
  v6 = objc_opt_new();
  objc_opt_class();
  v7 = v4;
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    characteristics = [v9 characteristics];
    [v5 addObjectsFromArray:characteristics];
  }

  objc_opt_class();
  v11 = v7;
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    services = [v13 services];
    v15 = [services na_flatMap:&__block_literal_global_76_0];
    [v5 addObjectsFromArray:v15];

    profiles = [v13 profiles];
    [v6 addObjectsFromArray:profiles];
  }

  objc_opt_class();
  v17 = v11;
  if (objc_opt_isKindOfClass())
  {
    v18 = v17;
  }

  else
  {
    v18 = 0;
  }

  v19 = v18;

  if (v19)
  {
    services2 = [v19 services];
    v21 = [services2 na_flatMap:&__block_literal_global_79_0];
    [v5 addObjectsFromArray:v21];
  }

  objc_opt_class();
  v22 = v17;
  if (objc_opt_isKindOfClass())
  {
    v23 = v22;
  }

  else
  {
    v23 = 0;
  }

  v24 = v23;

  if (v24)
  {
    [v6 addObject:v24];
  }

  v25 = v22;
  if ([v25 conformsToProtocol:&unk_282584A38])
  {
    v26 = v25;
  }

  else
  {
    v26 = 0;
  }

  v27 = v26;

  if (v27)
  {
    mediaProfiles = [v27 mediaProfiles];
    [v6 unionSet:mediaProfiles];
  }

  if ([self hf_affectsCharacteristics:v5] & 1) != 0 || (objc_msgSend(self, "hf_affectsProfiles:", v6))
  {
    v29 = 1;
  }

  else
  {
    v29 = [self hf_affectsMatterAccessory:v13];
  }

  return v29;
}

- (uint64_t)hf_affectsMatterAccessory:()HFAdditions
{
  v4 = a3;
  matterNodeID = [v4 matterNodeID];
  if (matterNodeID && (v6 = matterNodeID, [v4 matterNodeID], v7 = objc_claimAutoreleasedReturnValue(), v7, v6, v7))
  {
    actionSets = [self actionSets];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __52__HMTrigger_HFAdditions__hf_affectsMatterAccessory___block_invoke;
    v11[3] = &unk_277DF4280;
    v12 = v4;
    v9 = [actionSets na_any:v11];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (uint64_t)hf_affectsCharacteristics:()HFAdditions
{
  v4 = a3;
  actionSets = [self actionSets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __52__HMTrigger_HFAdditions__hf_affectsCharacteristics___block_invoke;
  v9[3] = &unk_277DF4280;
  v10 = v4;
  v6 = v4;
  v7 = [actionSets na_any:v9];

  return v7;
}

- (uint64_t)hf_affectsProfiles:()HFAdditions
{
  v4 = a3;
  actionSets = [self actionSets];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __45__HMTrigger_HFAdditions__hf_affectsProfiles___block_invoke;
  v9[3] = &unk_277DF4280;
  v10 = v4;
  v6 = v4;
  v7 = [actionSets na_any:v9];

  return v7;
}

@end