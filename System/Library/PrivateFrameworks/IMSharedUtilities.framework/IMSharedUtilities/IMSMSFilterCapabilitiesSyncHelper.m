@interface IMSMSFilterCapabilitiesSyncHelper
+ (BOOL)isSMSFilteringEnabledInSMSFilterCapabilitiesOptions;
+ (BOOL)shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:(id)a3 smsFilterCapabilitiesOptions:(unint64_t)a4 filterExtensionName:(id)a5;
+ (id)fetchFilterExtensionNameForDeviceID:(id)a3;
+ (id)fetchSMSFilterSyncDeviceParams;
+ (unint64_t)IMSMSFilterCapabilitiesOptionForFilterSubAction:(int64_t)a3 action:(int64_t)a4;
+ (unint64_t)fetchSMSFilterCapabilitiesOptions;
+ (unint64_t)fetchSMSFilterCapabilitiesOptionsForDeviceID:(id)a3;
+ (void)storeSMSFilterCapabilitiesOptions:(unint64_t)a3;
+ (void)storeSMSFilterSyncDeviceParams:(id)a3;
+ (void)updateFilterExtensionName;
+ (void)updateSMSFilterCapabilitiesOptions;
+ (void)updateSMSFilterCapabilitiesOptionsCache;
+ (void)updateSMSFilterCapabilitiesOptionsForDeviceID:(id)a3 smsFilterCapabilitiesOptions:(unint64_t)a4 filterExtensionName:(id)a5;
+ (void)updateSMSFilterCapabilitiesOptionsForSelf;
+ (void)updateSMSFilterSyncDeviceParamsCache;
+ (void)verifyCurrentRelayDevicesActive:(id)a3;
@end

@implementation IMSMSFilterCapabilitiesSyncHelper

+ (id)fetchSMSFilterSyncDeviceParams
{
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v3 = qword_1EB3095A8;
    if (!qword_1EB3095A8)
    {
      [a1 updateSMSFilterSyncDeviceParamsCache];
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

+ (BOOL)shouldUpdateSMSFilterSyncDeviceParamsForDeviceID:(id)a3 smsFilterCapabilitiesOptions:(unint64_t)a4 filterExtensionName:(id)a5
{
  v26 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = [a1 fetchSMSFilterSyncDeviceParams];
    v11 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v21 + 1) + 8 * i);
          v16 = [v15 deviceUniqueID];
          if ([v16 isEqualToString:v8] && objc_msgSend(v15, "smsFilterCapabilitiesOptions") == a4)
          {
            v17 = [v15 filterExtensionName];
            v18 = [v17 isEqualToString:v9];

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

        v12 = [v10 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

+ (void)updateSMSFilterCapabilitiesOptionsForDeviceID:(id)a3 smsFilterCapabilitiesOptions:(unint64_t)a4 filterExtensionName:(id)a5
{
  v41 = *MEMORY[0x1E69E9840];
  v8 = a3;
  v9 = a5;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v29 = a1;
    v10 = [a1 fetchSMSFilterSyncDeviceParams];
    v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v12 = objc_alloc_init(SMSFilterSyncDeviceParams);
    v13 = v12;
    v32 = a4;
    if (a4)
    {
      [(SMSFilterSyncDeviceParams *)v12 setDeviceUniqueID:v8];
      [(SMSFilterSyncDeviceParams *)v13 setSmsFilterCapabilitiesOptions:a4];
      [(SMSFilterSyncDeviceParams *)v13 setFilterExtensionName:v9];
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
    v31 = v9;
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    obj = v10;
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
          v22 = [v21 deviceUniqueID];
          v23 = [v22 isEqualToString:v8];

          if (v23)
          {
            if (v32)
            {
              v15 = 3;
            }

            v18 |= v32 == 0;
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
    if (v32 || (v18 & 1) != 0)
    {
      [v29 storeSMSFilterSyncDeviceParams:v14];
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

    v9 = v31;
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
    v4 = [a1 fetchSMSFilterSyncDeviceParams];
    v5 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
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
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v16 + 1) + 8 * i);
          v10 = [v9 filterExtensionName];
          v11 = [v10 length];

          if (v11)
          {
            v12 = [v9 filterExtensionName];
            [v3 addObject:v12];
          }
        }

        v6 = [v4 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v6);
    }

    v13 = [v3 count];
    if (v13)
    {
      if (v13 == 1)
      {
        v14 = [v3 anyObject];
      }

      else
      {
        v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu", v13];
        v14 = [v15 stringByAppendingString:@" filters"];
      }
    }

    else
    {
      v14 = 0;
    }

    CFPreferencesSetAppValue(@"spamFiltrationExtensionName", v14, @"com.apple.MobileSMS");
  }
}

+ (void)storeSMSFilterSyncDeviceParams:(id)a3
{
  v4 = a3;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v5 = [a1 fetchSMSFilterSyncDeviceParams];
    v6 = [v4 isEqualToArray:v5];

    if ((v6 & 1) == 0)
    {
      qword_1ED8C8810 = -1;
      v7 = qword_1EB3095A8;
      qword_1EB3095A8 = 0;

      if ([v4 count])
      {
        v8 = objc_alloc_init(MEMORY[0x1E695DF90]);
        v9 = [v4 copy];
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
      [a1 updateFilterExtensionName];
      [a1 updateSMSFilterCapabilitiesOptions];
      if ([a1 isSMSFilteringEnabledInSMSFilterCapabilitiesOptions])
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

+ (id)fetchFilterExtensionNameForDeviceID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a1 fetchSMSFilterSyncDeviceParams];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; i = i + 1)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 deviceUniqueID];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = [v9 filterExtensionName];
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
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
    v6 = 0;
  }

  return v6;
}

+ (unint64_t)fetchSMSFilterCapabilitiesOptionsForDeviceID:(id)a3
{
  v18 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = [a1 fetchSMSFilterSyncDeviceParams];
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = *v14;
      while (2)
      {
        for (i = 0; i != v6; ++i)
        {
          if (*v14 != v7)
          {
            objc_enumerationMutation(v5);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          v10 = [v9 deviceUniqueID];
          v11 = [v10 isEqualToString:v4];

          if (v11)
          {
            v6 = [v9 smsFilterCapabilitiesOptions];
            goto LABEL_13;
          }
        }

        v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v6)
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
    v6 = 0;
  }

  return v6;
}

+ (void)verifyCurrentRelayDevicesActive:(id)a3
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = a3;
  if (+[IMSMSFilterHelper supportsIncomingSMSRelayFiltering])
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v14 = 0u;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v6 = [a1 fetchSMSFilterSyncDeviceParams];
    v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v14 + 1) + 8 * i);
          v12 = [v11 deviceUniqueID];
          v13 = [v4 containsObject:v12];

          if (v13)
          {
            [v5 addObject:v11];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
      }

      while (v8);
    }

    [a1 storeSMSFilterSyncDeviceParams:v5];
  }
}

+ (BOOL)isSMSFilteringEnabledInSMSFilterCapabilitiesOptions
{
  LODWORD(v3) = +[IMSMSFilterHelper supportsIncomingSMSRelayFiltering];
  if (v3)
  {
    return ([a1 fetchSMSFilterCapabilitiesOptions] >> 1) & 1;
  }

  return v3;
}

+ (unint64_t)fetchSMSFilterCapabilitiesOptions
{
  result = qword_1ED8C8810;
  if (qword_1ED8C8810 == -1)
  {
    [a1 updateSMSFilterCapabilitiesOptionsCache];
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
              v8 |= [a1 IMSMSFilterCapabilitiesOptionForFilterSubAction:objc_msgSend(v10 action:{"subAction"), objc_msgSend(v10, "action")}];
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

    [a1 storeSMSFilterCapabilitiesOptions:{v8, v11}];
  }
}

+ (void)updateSMSFilterCapabilitiesOptions
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [a1 fetchSMSFilterSyncDeviceParams];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
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
          objc_enumerationMutation(v3);
        }

        v7 |= [*(*(&v9 + 1) + 8 * i) smsFilterCapabilitiesOptions];
      }

      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  else
  {
    v7 = 1;
  }

  [a1 storeSMSFilterCapabilitiesOptions:v7];
}

+ (void)storeSMSFilterCapabilitiesOptions:(unint64_t)a3
{
  qword_1ED8C8810 = -1;
  CFPreferencesSetAppValue(@"spamFilterExtensionCapabilitiesOptions", [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a3], @"com.apple.MobileSMS");
  v3 = *MEMORY[0x1E695E8B8];
  CFPreferencesSynchronize(@"com.apple.MobileSMS", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E8B0]);
  v4 = *MEMORY[0x1E695E898];

  CFPreferencesSynchronize(@"com.apple.MobileSMS", v3, v4);
}

+ (void)updateSMSFilterCapabilitiesOptionsCache
{
  v3 = IMGetCachedDomainValueForKey();
  if (v3 || ([a1 updateSMSFilterCapabilitiesOptionsForSelf], IMGetCachedDomainValueForKey(), (v3 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v4 = v3;
    v5 = [v3 unsignedIntegerValue];
  }

  else
  {
    v5 = 0;
  }

  qword_1ED8C8810 = v5;
}

+ (unint64_t)IMSMSFilterCapabilitiesOptionForFilterSubAction:(int64_t)a3 action:(int64_t)a4
{
  v4 = 1 << (a3 + 1);
  if (a4 != 4)
  {
    v4 = 0;
  }

  if (a4 == 3)
  {
    return 1 << (a3 + 7);
  }

  else
  {
    return v4;
  }
}

@end