@interface IMSMSFilterCapabilitiesSyncHelper
+ (BOOL)isSMSFilteringEnabledInSMSFilterCapabilitiesOptions;
+ (BOOL)shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name;
+ (id)fetchFilterExtensionNameForDeviceID:(id)d;
+ (id)fetchSMSFilterSyncDeviceParams;
+ (unint64_t)IMSMSFilterCapabilitiesOptionForFilterSubAction:(int64_t)action action:(int64_t)a4;
+ (unint64_t)fetchSMSFilterCapabilitiesOptions;
+ (unint64_t)fetchSMSFilterCapabilitiesOptionsForDeviceID:(id)d;
+ (void)storeSMSFilterCapabilitiesOptions:(unint64_t)options;
+ (void)storeSMSFilterSyncDeviceParams:(id)params;
+ (void)updateFilterExtensionName;
+ (void)updateSMSFilterCapabilitiesOptions;
+ (void)updateSMSFilterCapabilitiesOptionsCache;
+ (void)updateSMSFilterCapabilitiesOptionsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name;
+ (void)updateSMSFilterCapabilitiesOptionsForSelf;
+ (void)updateSMSFilterSyncDeviceParamsCache;
+ (void)verifyCurrentRelayDevicesActive:(id)active;
@end

@implementation IMSMSFilterCapabilitiesSyncHelper

+ (id)fetchSMSFilterSyncDeviceParams
{
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v3 = qword_1EB3095A8;
    if (!qword_1EB3095A8)
    {
      [self updateSMSFilterSyncDeviceParamsCache];
      v3 = qword_1EB3095A8;
    }

    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

+ (BOOL)shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name
{
  v26 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    v11 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v21 objects:v25 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v22;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v22 != v13)
          {
            objc_enumerationMutation(fetchSMSFilterSyncDeviceParams);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          deviceUniqueID = [v15 deviceUniqueID];
          if ([deviceUniqueID isEqualToString:dCopy] && objc_msgSend(v15, "smsFilterCapabilitiesOptions") == options)
          {
            filterExtensionName = [v15 filterExtensionName];
            v18 = [filterExtensionName isEqualToString:nameCopy];

            if (v18)
            {
              v19 = 0;
              goto LABEL_16;
            }
          }

          else
          {
          }
        }

        v12 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v21 objects:v25 count:16];
      }

      while (v12);
    }

    v19 = 1;
LABEL_16:
  }

  else
  {
    v19 = 0;
  }

  return v19;
}

+ (void)updateSMSFilterCapabilitiesOptionsForDeviceID:(id)d smsFilterCapabilitiesOptions:(unint64_t)options filterExtensionName:(id)name
{
  v41 = *MEMORY[0x1E69E9840];
  dCopy = d;
  nameCopy = name;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    selfCopy = self;
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(SMSFilterSyncDeviceParams);
    v13 = v12;
    optionsCopy = options;
    if (options)
    {
      [(SMSFilterSyncDeviceParams *)v12 setDeviceUniqueID:dCopy];
      [(SMSFilterSyncDeviceParams *)v13 setSmsFilterCapabilitiesOptions:options];
      [(SMSFilterSyncDeviceParams *)v13 setFilterExtensionName:nameCopy];
      v14 = v11;
      [v11 addObject:v13];
      v15 = 1;
    }

    else
    {
      v14 = v11;
      v15 = 2;
    }

    v30 = v13;
    v31 = nameCopy;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = fetchSMSFilterSyncDeviceParams;
    v16 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = 0;
      v19 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v21 = *(*(&v34 + 1) + 8 * i);
          deviceUniqueID = [v21 deviceUniqueID];
          v23 = [deviceUniqueID isEqualToString:dCopy];

          if (v23)
          {
            if (optionsCopy)
            {
              v15 = 3;
            }

            v18 |= optionsCopy == 0;
          }

          else
          {
            [v14 addObject:v21];
          }
        }

        v17 = [obj countByEnumeratingWithState:&v34 objects:v40 count:16];
      }

      while (v17);
    }

    else
    {
      v18 = 0;
    }

    v24 = v14;
    if (optionsCopy || (v18 & 1) != 0)
    {
      [selfCopy storeSMSFilterSyncDeviceParams:v14];
      CFPreferencesSetAppValue(@"sForceDisableSMSFilteringIpadCompleted", *MEMORY[0x1E695E4D0], @"com.apple.MobileSMS");
      v38[0] = @"IMMetricsCollectorEventSMSFilterSyncDeviceCount";
      v25 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{objc_msgSend(v14, "count")}];
      v39[0] = v25;
      v38[1] = @"IMMetricsCollectorEventSMSFilterSyncStateChangedTypeKey";
      v26 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:v15];
      v39[1] = v26;
      v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v39 forKeys:v38 count:2];

      v28 = +[IMMetricsCollector sharedInstance];
      [v28 trackEvent:@"com.apple.Messages.IMMetricsCollectorEventSMSFilterSyncStateChanged" withDictionary:v27];
    }

    nameCopy = v31;
  }
}

+ (void)updateFilterExtensionName
{
  v21 = *MEMORY[0x1E69E9840];
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    v5 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v17;
      do
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v17 != v7)
          {
            objc_enumerationMutation(fetchSMSFilterSyncDeviceParams);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          filterExtensionName = [v9 filterExtensionName];
          v11 = [filterExtensionName length];

          if (v11)
          {
            filterExtensionName2 = [v9 filterExtensionName];
            [v3 addObject:filterExtensionName2];
          }
        }

        v6 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v13 = [v3 count];
    if (v13)
    {
      if (v13 == 1)
      {
        anyObject = [v3 anyObject];
      }

      else
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v13];
        anyObject = [v15 stringByAppendingString:@" filters"];
      }
    }

    else
    {
      anyObject = 0;
    }

    CFPreferencesSetAppValue(@"spamFiltrationExtensionName", anyObject, @"com.apple.MobileSMS");
  }
}

+ (void)storeSMSFilterSyncDeviceParams:(id)params
{
  paramsCopy = params;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    v6 = [paramsCopy isEqualToArray:fetchSMSFilterSyncDeviceParams];

    if ((v6 & 1) == 0)
    {
      qword_1ED8C8810 = -1;
      v7 = qword_1EB3095A8;
      qword_1EB3095A8 = 0;

      if ([paramsCopy count])
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [paramsCopy copy];
        v14 = 0;
        v10 = [MEMORY[0x1E696ACC8] archivedDataWithRootObject:v9 requiringSecureCoding:1 error:&v14];
        v11 = v14;
        if (v11)
        {
          v12 = v11;

LABEL_10:
          goto LABEL_11;
        }

        [v8 setValue:v10 forKey:@"smsFilterSyncDeviceParams"];
      }

      else
      {
        v8 = 0;
      }

      CFPreferencesSetAppValue(@"smsFilterSyncDeviceParams", v8, @"com.apple.MobileSMS");
      v13 = *MEMORY[0x1E695E8B8];
      CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
      CFPreferencesSynchronize(@"com.apple.MobileSMS", v13, *MEMORY[0x1E695E898]);
      [self updateFilterExtensionName];
      [self updateSMSFilterCapabilitiesOptions];
      if ([self isSMSFilteringEnabledInSMSFilterCapabilitiesOptions])
      {
        +[IMSMSFilterCapabilitiesBinder handleSMSFilterCapabilitiesOptionsChange];
      }

      goto LABEL_10;
    }
  }

LABEL_11:
}

+ (void)updateSMSFilterSyncDeviceParamsCache
{
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v2 = IMGetCachedDomainValueForKey();
    v3 = v2;
    if (v2)
    {
      if ([v2 count])
      {
        v4 = [v3 objectForKey:@"smsFilterSyncDeviceParams"];
        v12 = 0;
        v5 = [objc_alloc(MEMORY[0x1E696ACD0]) initForReadingFromData:v4 error:&v12];
        v6 = v12;
        v7 = MEMORY[0x1E695DFD8];
        v8 = objc_opt_class();
        v9 = [v7 setWithObjects:{v8, objc_opt_class(), 0}];
        [v5 _enableStrictSecureDecodingMode];
        v10 = [v5 decodeObjectOfClasses:v9 forKey:*MEMORY[0x1E696A508]];
        v11 = qword_1EB3095A8;
        qword_1EB3095A8 = v10;
      }
    }
  }
}

+ (id)fetchFilterExtensionNameForDeviceID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    filterExtensionName = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (filterExtensionName)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != filterExtensionName; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(fetchSMSFilterSyncDeviceParams);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          deviceUniqueID = [v9 deviceUniqueID];
          v11 = [deviceUniqueID isEqualToString:dCopy];

          if (v11)
          {
            filterExtensionName = [v9 filterExtensionName];
            goto LABEL_13;
          }
        }

        filterExtensionName = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (filterExtensionName)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    filterExtensionName = 0;
  }

  return filterExtensionName;
}

+ (unint64_t)fetchSMSFilterCapabilitiesOptionsForDeviceID:(id)d
{
  v18 = *MEMORY[0x1E69E9840];
  dCopy = d;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    smsFilterCapabilitiesOptions = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (smsFilterCapabilitiesOptions)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != smsFilterCapabilitiesOptions; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(fetchSMSFilterSyncDeviceParams);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          deviceUniqueID = [v9 deviceUniqueID];
          v11 = [deviceUniqueID isEqualToString:dCopy];

          if (v11)
          {
            smsFilterCapabilitiesOptions = [v9 smsFilterCapabilitiesOptions];
            goto LABEL_13;
          }
        }

        smsFilterCapabilitiesOptions = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (smsFilterCapabilitiesOptions)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    smsFilterCapabilitiesOptions = 0;
  }

  return smsFilterCapabilitiesOptions;
}

+ (void)verifyCurrentRelayDevicesActive:(id)active
{
  v19 = *MEMORY[0x1E69E9840];
  activeCopy = active;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
    v7 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v15;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v15 != v9)
          {
            objc_enumerationMutation(fetchSMSFilterSyncDeviceParams);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          deviceUniqueID = [v11 deviceUniqueID];
          v13 = [activeCopy containsObject:deviceUniqueID];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [self storeSMSFilterSyncDeviceParams:v5];
  }
}

+ (BOOL)isSMSFilteringEnabledInSMSFilterCapabilitiesOptions
{
  LODWORD(v3) = +[IMSMSFilterHelper supportsIncomingSMSRelayFiltering];
  if (v3)
  {
    return ([self fetchSMSFilterCapabilitiesOptions] >> 1) & 1;
  }

  return v3;
}

+ (unint64_t)fetchSMSFilterCapabilitiesOptions
{
  result = qword_1ED8C8810;
  if (qword_1ED8C8810 == -1)
  {
    [self updateSMSFilterCapabilitiesOptionsCache];
    return qword_1ED8C8810;
  }

  return result;
}

+ (void)updateSMSFilterCapabilitiesOptionsForSelf
{
  v16 = *MEMORY[0x1E69E9840];
  if (!IMSharedHelperDeviceIsiPad())
  {
    v3 = +[IMSMSFilterHelper fetchSMSFilterExtensionParams];
    if ([v3 count])
    {
      v13 = 0u;
      v14 = 0u;
      v11 = 0u;
      v12 = 0u;
      v4 = v3;
      v5 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v5)
      {
        v6 = v5;
        v7 = *v12;
        v8 = 3;
        do
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v12 != v7)
            {
              objc_enumerationMutation(v4);
            }

            v10 = *(*(&v11 + 1) + 8 * i);
            if ([v10 subAction])
            {
              v8 |= [self IMSMSFilterCapabilitiesOptionForFilterSubAction:objc_msgSend(v10 action:{"subAction"), objc_msgSend(v10, "action")}];
            }
          }

          v6 = [v4 countByEnumeratingWithState:&v11 objects:v15 count:16];
        }

        while (v6);
      }

      else
      {
        v8 = 3;
      }
    }

    else
    {
      v8 = 1;
    }

    [self storeSMSFilterCapabilitiesOptions:{v8, v11}];
  }
}

+ (void)updateSMSFilterCapabilitiesOptions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  fetchSMSFilterSyncDeviceParams = [self fetchSMSFilterSyncDeviceParams];
  v4 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    v7 = 1;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(fetchSMSFilterSyncDeviceParams);
        }

        v7 |= [*(*(&v9 + 1) + 8 * i) smsFilterCapabilitiesOptions];
      }

      v5 = [fetchSMSFilterSyncDeviceParams countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  [self storeSMSFilterCapabilitiesOptions:v7];
}

+ (void)storeSMSFilterCapabilitiesOptions:(unint64_t)options
{
  qword_1ED8C8810 = -1;
  CFPreferencesSetAppValue(@"spamFilterExtensionCapabilitiesOptions", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:options], @"com.apple.MobileSMS");
  v3 = *MEMORY[0x1E695E8B8];
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
}

+ (void)updateSMSFilterCapabilitiesOptionsCache
{
  v3 = IMGetCachedDomainValueForKey();
  if (v3 || ([self updateSMSFilterCapabilitiesOptionsForSelf], IMGetCachedDomainValueForKey(), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    unsignedIntegerValue = [v3 unsignedIntegerValue];
  }

  else
  {
    unsignedIntegerValue = 0;
  }

  qword_1ED8C8810 = unsignedIntegerValue;
}

+ (unint64_t)IMSMSFilterCapabilitiesOptionForFilterSubAction:(int64_t)action action:(int64_t)a4
{
  v4 = 1 << (action + 1);
  if (a4 != 4)
  {
    v4 = 0;
  }

  if (a4 == 3)
  {
    return 1 << (action + 7);
  }

  else
  {
    return v4;
  }
}

@end