@interface IMSMSFilterCapabilitiesBinder
+ (BOOL)firstPartyFilterExtensionActive;
+ (BOOL)isValidSubAction:(int64_t)a3 subAction:(int64_t)a4;
+ (id)subActionsForAction:(int64_t)a3;
+ (int)updateFilterParamsBindings:(id)a3 promotionalSubActions:(id)a4;
+ (int64_t)deLocalizeSubAction:(int64_t)a3 action:(int64_t)a4;
+ (int64_t)localizeSubAction:(int64_t)a3;
+ (void)IMMetricsCollectorForSMSSubClassification:(unint64_t)a3;
+ (void)executeCompletionBlockForFilterParamsUpdate:(id)a3 promo:(id)a4;
+ (void)handleSMSFilterCapabilitiesOptionsChange;
@end

@implementation IMSMSFilterCapabilitiesBinder

+ (int64_t)localizeSubAction:(int64_t)a3
{
  v3 = 0xFFFFLL;
  if ((a3 - 20000) < 3)
  {
    v3 = a3 - 19990;
  }

  if ((a3 - 10000) <= 8)
  {
    return a3 - 9999;
  }

  else
  {
    return v3;
  }
}

+ (int64_t)deLocalizeSubAction:(int64_t)a3 action:(int64_t)a4
{
  v4 = 0xFFFFLL;
  if (a4 == 4)
  {
    v4 = a3 + 9999;
  }

  if (a4 == 3)
  {
    return a3 + 19990;
  }

  else
  {
    return v4;
  }
}

+ (id)subActionsForAction:(int64_t)a3
{
  v3 = MEMORY[0x1E695E0F0];
  if (a3 == 3)
  {
    v3 = &unk_1F1BFAC70;
  }

  if (a3 == 4)
  {
    return &unk_1F1BFAC58;
  }

  else
  {
    return v3;
  }
}

+ (BOOL)isValidSubAction:(int64_t)a3 subAction:(int64_t)a4
{
  v4 = (a4 - 1) < 9;
  if (a3 != 4)
  {
    v4 = 0;
  }

  if (a3 == 3)
  {
    return (a4 - 10) < 3;
  }

  else
  {
    return v4;
  }
}

+ (void)executeCompletionBlockForFilterParamsUpdate:(id)a3 promo:(id)a4
{
  v28 = a3;
  v6 = a4;
  v7 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v8 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v28)
  {
    v9 = [v28 count];
    v10 = v28;
    if (v9)
    {
      for (i = 0; i < v18; ++i)
      {
        v12 = [v10 objectAtIndex:i];
        v13 = [v12 intValue];

        v14 = [a1 localizeSubAction:v13];
        if ([a1 isValidSubAction:4 subAction:v14])
        {
          v15 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
          v16 = [v7 containsObject:v15];

          if ((v16 & 1) == 0)
          {
            v17 = [MEMORY[0x1E696AD98] numberWithInteger:v14];
            [v7 addObject:v17];
          }
        }

        v18 = [v28 count];
        v10 = v28;
      }
    }
  }

  if (v6 && [v6 count])
  {
    v19 = 0;
    do
    {
      v20 = [v6 objectAtIndex:v19];
      v21 = [v20 intValue];

      v22 = [a1 localizeSubAction:v21];
      if ([a1 isValidSubAction:3 subAction:v22])
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

    while ([v6 count] > v19);
  }

  v26 = [v7 mutableCopy];
  v27 = [v8 mutableCopy];
  [a1 updateFilterParamsBindings:v26 promotionalSubActions:v27];
}

+ (BOOL)firstPartyFilterExtensionActive
{
  v2 = IMGetCachedDomainValueForKey();
  v3 = [v2 isEqualToString:@"com.apple.smsFilter.extension"];

  return v3;
}

+ (void)IMMetricsCollectorForSMSSubClassification:(unint64_t)a3
{
  v8[1] = *MEMORY[0x1E69E9840];
  if (([a1 firstPartyFilterExtensionActive] & 1) == 0)
  {
    v4 = +[IMMetricsCollector sharedInstance];
    v7 = @"type";
    v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3];
    v8[0] = v5;
    v6 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];
    [v4 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventFilteringAction" withDictionary:v6];
  }
}

+ (int)updateFilterParamsBindings:(id)a3 promotionalSubActions:(id)a4
{
  v84 = *MEMORY[0x1E69E9840];
  v6 = a3;
  v7 = a4;
  v8 = [v6 count];
  v70 = v7;
  v9 = [v7 count] + v8;
  v10 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:v9 + 2];
  if (([a1 firstPartyFilterExtensionActive] & 1) == 0 && v9 >= 1)
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
  if ([v6 count])
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
  v14 = v6;
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
        v21 = [(SMSFilterExtensionParams *)v20 subAction];
        if (v21 <= 4)
        {
          if (v21 > 2)
          {
            if (v21 == 3)
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSOrders"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:3];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:2];
              v34 = [(SMSFilterExtensionParams *)v20 label];
              v35 = [v34 stringByAppendingString:@"_or"];
              [(SMSFilterExtensionParams *)v20 setLabel:v35];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_ORDERS"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"shippingbox"];
              v24 = a1;
              v25 = 10;
            }

            else
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSReminder"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:4];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:3];
              v28 = [(SMSFilterExtensionParams *)v20 label];
              v29 = [v28 stringByAppendingString:@"_rm"];
              [(SMSFilterExtensionParams *)v20 setLabel:v29];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_REMINDERS"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"calendar.badge.clock"];
              v24 = a1;
              v25 = 11;
            }

            goto LABEL_31;
          }

          if (v21 == 1)
          {
            [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSTransactionalOthers"];
            [(SMSFilterExtensionParams *)v20 setSubCategory:1];
            [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:11];
            v32 = [(SMSFilterExtensionParams *)v20 label];
            v33 = [v32 stringByAppendingString:@"_ot"];
            [(SMSFilterExtensionParams *)v20 setLabel:v33];

            [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_OTHERS"];
            [(SMSFilterExtensionParams *)v20 setIconName:@"ellipsis.circle"];
            v24 = a1;
            v25 = 17;
            goto LABEL_31;
          }

          if (v21 == 2)
          {
            [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSFinance"];
            [(SMSFilterExtensionParams *)v20 setSubCategory:2];
            [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:1];
            v26 = [(SMSFilterExtensionParams *)v20 label];
            v27 = [v26 stringByAppendingString:@"_fi"];
            [(SMSFilterExtensionParams *)v20 setLabel:v27];

            [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_FINANCE"];
            [(SMSFilterExtensionParams *)v20 setIconName:@"creditcard"];
            v24 = a1;
            v25 = 9;
            goto LABEL_31;
          }
        }

        else
        {
          if (v21 <= 6)
          {
            if (v21 == 5)
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSHealth"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:5];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:4];
              v38 = [(SMSFilterExtensionParams *)v20 label];
              v39 = [v38 stringByAppendingString:@"_ht"];
              [(SMSFilterExtensionParams *)v20 setLabel:v39];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_HEALTH"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"heart"];
              v24 = a1;
              v25 = 12;
            }

            else
            {
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSWeather"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:6];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:6];
              v30 = [(SMSFilterExtensionParams *)v20 label];
              v31 = [v30 stringByAppendingString:@"_we"];
              [(SMSFilterExtensionParams *)v20 setLabel:v31];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_WEATHER"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"cloud.sun"];
              v24 = a1;
              v25 = 13;
            }

            goto LABEL_31;
          }

          switch(v21)
          {
            case 7:
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSCarrier"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:7];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:7];
              v36 = [(SMSFilterExtensionParams *)v20 label];
              v37 = [v36 stringByAppendingString:@"_cr"];
              [(SMSFilterExtensionParams *)v20 setLabel:v37];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_CARRIER"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"antenna.radiowaves.left.and.right"];
              v24 = a1;
              v25 = 14;
              goto LABEL_31;
            case 8:
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSRewards"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:8];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:8];
              v40 = [(SMSFilterExtensionParams *)v20 label];
              v41 = [v40 stringByAppendingString:@"_rw"];
              [(SMSFilterExtensionParams *)v20 setLabel:v41];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_REWARDS"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"star"];
              v24 = a1;
              v25 = 15;
              goto LABEL_31;
            case 9:
              [(SMSFilterExtensionParams *)v20 setFilterModeStringValue:@"IMMessageFilterSubActionSMSPublicServices"];
              [(SMSFilterExtensionParams *)v20 setSubCategory:9];
              [(SMSFilterExtensionParams *)v20 setOrderOfPlacementInUI:5];
              v22 = [(SMSFilterExtensionParams *)v20 label];
              v23 = [v22 stringByAppendingString:@"_ps"];
              [(SMSFilterExtensionParams *)v20 setLabel:v23];

              [(SMSFilterExtensionParams *)v20 setFolderName:@"FILTERHANDLE_FOLDER_NAME_PUBLIC_SERVICES"];
              [(SMSFilterExtensionParams *)v20 setIconName:@"building.2"];
              v24 = a1;
              v25 = 16;
LABEL_31:
              [v24 IMMetricsCollectorForSMSSubClassification:v25];
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
        v52 = [(SMSFilterExtensionParams *)v51 subAction];
        switch(v52)
        {
          case 10:
            [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:@"IMMessageFilterSubActionSMSPromotionalOthers"];
            [(SMSFilterExtensionParams *)v51 setSubCategory:10];
            [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:11];
            v59 = [(SMSFilterExtensionParams *)v51 label];
            v60 = [v59 stringByAppendingString:@"_ot"];
            [(SMSFilterExtensionParams *)v51 setLabel:v60];

            [(SMSFilterExtensionParams *)v51 setFolderName:@"FILTERHANDLE_FOLDER_NAME_OTHERS"];
            [(SMSFilterExtensionParams *)v51 setIconName:@"ellipsis.circle"];
            v55 = a1;
            v56 = 20;
            goto LABEL_50;
          case 12:
            [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:@"IMMessageFilterSubActionSMSCoupons"];
            [(SMSFilterExtensionParams *)v51 setSubCategory:12];
            [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:9];
            v57 = [(SMSFilterExtensionParams *)v51 label];
            v58 = [v57 stringByAppendingString:@"_cu"];
            [(SMSFilterExtensionParams *)v51 setLabel:v58];

            [(SMSFilterExtensionParams *)v51 setFolderName:@"FILTERHANDLE_FOLDER_NAME_COUPONS"];
            [(SMSFilterExtensionParams *)v51 setIconName:@"wallet.pass"];
            v55 = a1;
            v56 = 18;
            goto LABEL_50;
          case 11:
            [(SMSFilterExtensionParams *)v51 setFilterModeStringValue:@"IMMessageFilterSubActionSMSOffers"];
            [(SMSFilterExtensionParams *)v51 setSubCategory:11];
            [(SMSFilterExtensionParams *)v51 setOrderOfPlacementInUI:10];
            v53 = [(SMSFilterExtensionParams *)v51 label];
            v54 = [v53 stringByAppendingString:@"_of"];
            [(SMSFilterExtensionParams *)v51 setLabel:v54];

            [(SMSFilterExtensionParams *)v51 setFolderName:@"FILTERHANDLE_FOLDER_NAME_OFFERS"];
            [(SMSFilterExtensionParams *)v51 setIconName:@"tag"];
            v55 = a1;
            v56 = 19;
LABEL_50:
            [v55 IMMetricsCollectorForSMSSubClassification:v56];
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

  [a1 executeCompletionBlockForFilterParamsUpdate:v11 promo:v4];
}

@end