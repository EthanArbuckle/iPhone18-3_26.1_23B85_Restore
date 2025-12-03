@interface IMSMSFilterCapabilitiesBinder
+ (BOOL)firstPartyFilterExtensionActive;
+ (BOOL)isValidSubAction:(int64_t)action subAction:(int64_t)subAction;
+ (id)subActionsForAction:(int64_t)action;
+ (int)updateFilterParamsBindings:(id)bindings promotionalSubActions:(id)actions;
+ (int64_t)deLocalizeSubAction:(int64_t)action action:(int64_t)a4;
+ (int64_t)localizeSubAction:(int64_t)action;
+ (void)IMMetricsCollectorForSMSSubClassification:(unint64_t)classification;
+ (void)executeCompletionBlockForFilterParamsUpdate:(id)update promo:(id)promo;
+ (void)handleSMSFilterCapabilitiesOptionsChange;
@end

@implementation IMSMSFilterCapabilitiesBinder

+ (int64_t)localizeSubAction:(int64_t)action
{
  v3 = 0xFFFFLL;
  if ((action - 20000) < 3)
  {
    v3 = action - 19990;
  }

  if ((action - 10000) <= 8)
  {
    return action - 9999;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)deLocalizeSubAction:(int64_t)action action:(int64_t)a4
{
  v4 = 0xFFFFLL;
  if (a4 == 4)
  {
    v4 = action + 9999;
  }

  if (a4 == 3)
  {
    return action + 19990;
  }

  else
  {
    return v4;
  }
}

+ (id)subActionsForAction:(int64_t)action
{
  v3 = MEMORY[0x1E695E0F0];
  if (action == 3)
  {
    v3 = &unk_1F1BFAC70;
  }

  if (action == 4)
  {
    return &unk_1F1BFAC58;
  }

  else
  {
    return v3;
  }
}

+ (BOOL)isValidSubAction:(int64_t)action subAction:(int64_t)subAction
{
  v4 = (subAction - 1) < 9;
  if (action != 4)
  {
    v4 = 0;
  }

  if (action == 3)
  {
    return (subAction - 10) < 3;
  }

  else
  {
    return v4;
  }
}

+ (void)executeCompletionBlockForFilterParamsUpdate:(id)update promo:(id)promo
{
  updateCopy = update;
  promoCopy = promo;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (updateCopy)
  {
    v9 = [updateCopy count];
    v10 = updateCopy;
    if (v9)
    {
      for (i = 0; i < v18; ++i)
      {
        v12 = [v10 objectAtIndex:i];
        intValue = [v12 intValue];

        v14 = [self localizeSubAction:intValue];
        if ([self isValidSubAction:4 subAction:v14])
        {
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
          v16 = [v7 containsObject:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
            [v7 addObject:v17];
          }
        }

        v18 = [updateCopy count];
        v10 = updateCopy;
      }
    }
  }

  if (promoCopy && [promoCopy count])
  {
    v19 = 0;
    do
    {
      v20 = [promoCopy objectAtIndex:v19];
      intValue2 = [v20 intValue];

      v22 = [self localizeSubAction:intValue2];
      if ([self isValidSubAction:3 subAction:v22])
      {
        v23 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
        v24 = [v8 containsObject:v23];

        if ((v24 & 1) == 0)
        {
          v25 = [MEMORY[0x1E696AD98] numberWithInteger:v22];
          [v8 addObject:v25];
        }
      }

      ++v19;
    }

    while ([promoCopy count] > v19);
  }

  v26 = [v7 mutableCopy];
  v27 = [v8 mutableCopy];
  [self updateFilterParamsBindings:v26 promotionalSubActions:v27];
}

+ (BOOL)firstPartyFilterExtensionActive
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = [v2 isEqualToString:@"com.apple.smsFilter.extension"];

  return v3;
}

+ (void)IMMetricsCollectorForSMSSubClassification:(unint64_t)classification
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (([self firstPartyFilterExtensionActive] & 1) == 0)
  {
    v4 = +[IMMetricsCollector sharedInstance];
    v7 = @"type";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:classification];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventFilteringAction" withDictionary:v6];
  }
}

+ (int)updateFilterParamsBindings:(id)bindings promotionalSubActions:(id)actions
{
  v84 = *MEMORY[0x1E69E9840];
  bindingsCopy = bindings;
  actionsCopy = actions;
  v8 = [bindingsCopy count];
  v70 = actionsCopy;
  v9 = [actionsCopy count] + v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9 + 2];
  if (([self firstPartyFilterExtensionActive] & 1) == 0 && v9 >= 1)
  {
    v11 = +[IMMetricsCollector sharedInstance];
    [v11 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventFilteringAction" withDictionary:&unk_1F1BFB108];
  }

  v12 = objc_alloc_init(SMSFilterExtensionParams);
  [(SMSFilterExtensionParams *)v12 setAction:4];
  [(SMSFilterExtensionParams *)v12 setSubAction:0];
  [(SMSFilterExtensionParams *)v12 setFilterMode:4];
  [(SMSFilterExtensionParams *)v12 setFilterModeStringValue:@"IMConversationListFilterModeSMSTransactional"];
  [(SMSFilterExtensionParams *)v12 setCategory:3];
  [(SMSFilterExtensionParams *)v12 setSubCategory:0];
  [(SMSFilterExtensionParams *)v12 setOrderOfPlacementInUI:0];
  [(SMSFilterExtensionParams *)v12 setLabel:@"smsft"];
  [(SMSFilterExtensionParams *)v12 setIconName:@"arrow.left.arrow.right"];
  if ([bindingsCopy count])
  {
    v13 = @"FILTERHANDLE_FOLDER_NAME_ALL_TRANSACTIONS";
  }

  else
  {
    v13 = @"FILTERHANDLE_FOLDER_NAME_TRANSACTIONS";
  }

  [(SMSFilterExtensionParams *)v12 setFolderName:v13];
  v72 = v12;
  [v10 addObject:v12];
  v80 = 0u;
  v81 = 0u;
  v78 = 0u;
  v79 = 0u;
  v14 = bindingsCopy;
  v15 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v79;
    do
    {
      v18 = 0;
      do
      {
        if (*v79 != v17)
        {
          objc_enumerationMutation(v14);
        }

        v19 = *(*(&v78 + 1) + 8 * v18);
        v20 = objc_alloc_init(SMSFilterExtensionParams);
        [(SMSFilterExtensionParams *)v20 setAction:4];
        -[SMSFilterExtensionParams setSubAction:](v20, "setSubAction:", [v19 intValue]);
        [(SMSFilterExtensionParams *)v20 setFilterMode:[(SMSFilterExtensionParams *)v20 action]& 0xF | (16 * [(SMSFilterExtensionParams *)v20 subAction])];
        [(SMSFilterExtensionParams *)v20 setCategory:3];
        [(SMSFilterExtensionParams *)v20 setLabel:@"smsft"];
        subAction = [(SMSFilterExtensionParams *)v20 subAction];
        if (subAction <= 4)
        {
          if (subAction > 2)
          {
            if (subAction == 3)
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSOrders"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:3];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:2];
              label = [(SMSFilterExtensionParams *)v20 label];
              v35 = [label stringByAppendingString:@"_or"];
              [(SMSFilterExtensionParams *)v20 setLabel:v35];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_ORDERS"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"shippingbox"];
              selfCopy9 = self;
              v25 = 10;
            }

            else
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSReminder"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:4];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:3];
              label2 = [(SMSFilterExtensionParams *)v20 label];
              v29 = [label2 stringByAppendingString:@"_rm"];
              [(SMSFilterExtensionParams *)v20 setLabel:v29];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_REMINDERS"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"calendar.badge.clock"];
              selfCopy9 = self;
              v25 = 11;
            }

            goto LABEL_31;
          }

          if (subAction == 1)
          {
            [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSTransactionalOthers"];
            [(SMSFilterExtensionParams *)v20 setSubCategory:1];
            [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:11];
            label3 = [(SMSFilterExtensionParams *)v20 label];
            v33 = [label3 stringByAppendingString:@"_ot"];
            [(SMSFilterExtensionParams *)v20 setLabel:v33];

            [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_OTHERS"];
            [(SMSFilterExtensionParams *)v20 setIconName:@"ellipsis.circle"];
            selfCopy9 = self;
            v25 = 17;
            goto LABEL_31;
          }

          if (subAction == 2)
          {
            [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSFinance"];
            [(SMSFilterExtensionParams *)v20 setSubCategory:2];
            [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:1];
            label4 = [(SMSFilterExtensionParams *)v20 label];
            v27 = [label4 stringByAppendingString:@"_fi"];
            [(SMSFilterExtensionParams *)v20 setLabel:v27];

            [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_FINANCE"];
            [(SMSFilterExtensionParams *)v20 setIconName:@"creditcard"];
            selfCopy9 = self;
            v25 = 9;
            goto LABEL_31;
          }
        }

        else
        {
          if (subAction <= 6)
          {
            if (subAction == 5)
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSHealth"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:5];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:4];
              label5 = [(SMSFilterExtensionParams *)v20 label];
              v39 = [label5 stringByAppendingString:@"_ht"];
              [(SMSFilterExtensionParams *)v20 setLabel:v39];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_HEALTH"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"heart"];
              selfCopy9 = self;
              v25 = 12;
            }

            else
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSWeather"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:6];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:6];
              label6 = [(SMSFilterExtensionParams *)v20 label];
              v31 = [label6 stringByAppendingString:@"_we"];
              [(SMSFilterExtensionParams *)v20 setLabel:v31];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_WEATHER"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"cloud.sun"];
              selfCopy9 = self;
              v25 = 13;
            }

            goto LABEL_31;
          }

          switch(subAction)
          {
            case 7:
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSCarrier"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:7];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:7];
              label7 = [(SMSFilterExtensionParams *)v20 label];
              v37 = [label7 stringByAppendingString:@"_cr"];
              [(SMSFilterExtensionParams *)v20 setLabel:v37];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_CARRIER"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"antenna.radiowaves.left.and.right"];
              selfCopy9 = self;
              v25 = 14;
              goto LABEL_31;
            case 8:
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSRewards"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:8];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:8];
              label8 = [(SMSFilterExtensionParams *)v20 label];
              v41 = [label8 stringByAppendingString:@"_rw"];
              [(SMSFilterExtensionParams *)v20 setLabel:v41];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_REWARDS"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"star"];
              selfCopy9 = self;
              v25 = 15;
              goto LABEL_31;
            case 9:
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSPublicServices"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:9];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:5];
              label9 = [(SMSFilterExtensionParams *)v20 label];
              v23 = [label9 stringByAppendingString:@"_ps"];
              [(SMSFilterExtensionParams *)v20 setLabel:v23];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_PUBLIC_SERVICES"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"building.2"];
              selfCopy9 = self;
              v25 = 16;
LABEL_31:
              [selfCopy9 IMMetricsCollectorForSMSSubClassification:v25];
              goto LABEL_32;
          }
        }

        [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:&stru_1F1BB91F0];
        [(SMSFilterExtensionParams *)v20 setSubCategory:0];
        [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:0];
        [(SMSFilterExtensionParams *)v20 setLabel:@"none"];
        [(SMSFilterExtensionParams *)v20 setFolderName:@"None"];
        [(SMSFilterExtensionParams *)v20 setIconName:0];
LABEL_32:
        [v10 addObject:v20];

        ++v18;
      }

      while (v16 != v18);
      v42 = [v14 countByEnumeratingWithState:&v78 objects:v83 count:16];
      v16 = v42;
    }

    while (v42);
  }

  v71 = v14;

  v43 = objc_alloc_init(SMSFilterExtensionParams);
  [(SMSFilterExtensionParams *)v43 setAction:3];
  [(SMSFilterExtensionParams *)v43 setSubAction:0];
  [(SMSFilterExtensionParams *)v43 setFilterMode:5];
  [(SMSFilterExtensionParams *)v43 setFilterModeStringValue:@"IMConversationListFilterModeSMSPromotional"];
  [(SMSFilterExtensionParams *)v43 setCategory:2];
  [(SMSFilterExtensionParams *)v43 setSubCategory:0];
  [(SMSFilterExtensionParams *)v43 setOrderOfPlacementInUI:0];
  [(SMSFilterExtensionParams *)v43 setLabel:@"smsfp"];
  [(SMSFilterExtensionParams *)v43 setIconName:@"megaphone"];
  if ([v70 count])
  {
    v44 = @"FILTERHANDLE_FOLDER_NAME_ALL_PROMOTIONS";
  }

  else
  {
    v44 = @"FILTERHANDLE_FOLDER_NAME_PROMOTIONS";
  }

  [(SMSFilterExtensionParams *)v43 setFolderName:v44];
  v69 = v43;
  [v10 addObject:v43];
  v76 = 0u;
  v77 = 0u;
  v74 = 0u;
  v75 = 0u;
  v45 = v70;
  v46 = [v45 countByEnumeratingWithState:&v74 objects:v82 count:16];
  if (v46)
  {
    v47 = v46;
    v48 = *v75;
    do
    {
      for (i = 0; i != v47; ++i)
      {
        if (*v75 != v48)
        {
          objc_enumerationMutation(v45);
        }

        v50 = *(*(&v74 + 1) + 8 * i);
        v51 = objc_alloc_init(SMSFilterExtensionParams);
        [(SMSFilterExtensionParams *)v51 setAction:3];
        -[SMSFilterExtensionParams setSubAction:](v51, "setSubAction:", [v50 intValue]);
        [(SMSFilterExtensionParams *)v51 setFilterMode:[(SMSFilterExtensionParams *)v51 action]& 0xF | (16 * [(SMSFilterExtensionParams *)v51 subAction])];
        [(SMSFilterExtensionParams *)v51 setCategory:2];
        [(SMSFilterExtensionParams *)v51 setLabel:@"smsfp"];
        subAction2 = [(SMSFilterExtensionParams *)v51 subAction];
        switch(subAction2)
        {
          case 10:
            [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:@"IMMessageFilterSubActionSMSPromotionalOthers"];
            [(SMSFilterExtensionParams *)v51 setSubCategory:10];
            [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:11];
            label10 = [(SMSFilterExtensionParams *)v51 label];
            v60 = [label10 stringByAppendingString:@"_ot"];
            [(SMSFilterExtensionParams *)v51 setLabel:v60];

            [(SMSFilterExtensionParams *)v51 setFolderName:@"FILTERHANDLE_FOLDER_NAME_OTHERS"];
            [(SMSFilterExtensionParams *)v51 setIconName:@"ellipsis.circle"];
            selfCopy12 = self;
            v56 = 20;
            goto LABEL_50;
          case 12:
            [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:@"IMMessageFilterSubActionSMSCoupons"];
            [(SMSFilterExtensionParams *)v51 setSubCategory:12];
            [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:9];
            label11 = [(SMSFilterExtensionParams *)v51 label];
            v58 = [label11 stringByAppendingString:@"_cu"];
            [(SMSFilterExtensionParams *)v51 setLabel:v58];

            [(SMSFilterExtensionParams *)v51 setFolderName:@"FILTERHANDLE_FOLDER_NAME_COUPONS"];
            [(SMSFilterExtensionParams *)v51 setIconName:@"wallet.pass"];
            selfCopy12 = self;
            v56 = 18;
            goto LABEL_50;
          case 11:
            [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:@"IMMessageFilterSubActionSMSOffers"];
            [(SMSFilterExtensionParams *)v51 setSubCategory:11];
            [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:10];
            label12 = [(SMSFilterExtensionParams *)v51 label];
            v54 = [label12 stringByAppendingString:@"_of"];
            [(SMSFilterExtensionParams *)v51 setLabel:v54];

            [(SMSFilterExtensionParams *)v51 setFolderName:@"FILTERHANDLE_FOLDER_NAME_OFFERS"];
            [(SMSFilterExtensionParams *)v51 setIconName:@"tag"];
            selfCopy12 = self;
            v56 = 19;
LABEL_50:
            [selfCopy12 IMMetricsCollectorForSMSSubClassification:v56];
            goto LABEL_52;
        }

        [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:&stru_1F1BB91F0];
        [(SMSFilterExtensionParams *)v51 setSubCategory:0];
        [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:0];
        [(SMSFilterExtensionParams *)v51 setLabel:@"none"];
        [(SMSFilterExtensionParams *)v51 setFolderName:@"None"];
        [(SMSFilterExtensionParams *)v51 setIconName:0];
LABEL_52:
        [v10 addObject:v51];
      }

      v47 = [v45 countByEnumeratingWithState:&v74 objects:v82 count:16];
    }

    while (v47);
  }

  [v10 sortUsingComparator:&unk_1F1BA59A8];
  v61 = [v10 copy];
  v62 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v73 = 0;
  v63 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v61 requiringSecureCoding:1 error:&v73];
  v64 = v73;
  if (v64)
  {
    v65 = IMLogHandleForCategory("FilterCapabilitiesBinder");
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C0D7C(v64, v65);
    }
  }

  else
  {
    [v62 setValue:v63 forKey:@"spamFilterExtensionParams"];
    CFPreferencesSetAppValue(@"spamFilterExtensionParams", v62, @"com.apple.MobileSMS");
    v66 = *MEMORY[0x1E695E8B8];
    CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
    CFPreferencesSynchronize(@"com.apple.MobileSMS", v66, *MEMORY[0x1E695E898]);
    +[IMSMSFilterHelper updateSMSFilterExtensionParams];
    if (+[IMSpamFilterHelper isFilterUnknownSendersEnabled])
    {
      DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
      CFNotificationCenterPostNotification(DarwinNotifyCenter, @"CKSMSFilterExtensionParamsUpdateDistributedNotification", 0, 0, 1u);
    }

    +[IMSMSFilterCapabilitiesSyncHelper updateSMSFilterCapabilitiesOptionsForSelf];
  }

  return 0;
}

+ (void)handleSMSFilterCapabilitiesOptionsChange
{
  if (!+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    return;
  }

  v3 = +[IMSMSFilterCapabilitiesSyncHelper fetchSMSFilterCapabilitiesOptions];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  for (i = 1; i != 13; ++i)
  {
    if (i > 9)
    {
      v9 = [IMSMSFilterCapabilitiesSyncHelper isSubActionActiveInSMSFilterCapabilitiesOptions:v3 subAction:i action:3];
      v7 = 3;
      v8 = v4;
      if (!v9)
      {
        continue;
      }

LABEL_7:
      v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{+[IMSMSFilterCapabilitiesBinder deLocalizeSubAction:action:](IMSMSFilterCapabilitiesBinder, "deLocalizeSubAction:action:", i, v7)}];
      [v8 addObject:v10];

      continue;
    }

    v6 = [IMSMSFilterCapabilitiesSyncHelper isSubActionActiveInSMSFilterCapabilitiesOptions:v3 subAction:i action:4];
    v7 = 4;
    v8 = v11;
    if (v6)
    {
      goto LABEL_7;
    }
  }

  [self executeCompletionBlockForFilterParamsUpdate:v11 promo:v4];
}

@end