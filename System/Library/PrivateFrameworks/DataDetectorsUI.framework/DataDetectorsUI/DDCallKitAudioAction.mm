@interface DDCallKitAudioAction
+ (BOOL)providerIsValid:(id)a3 forHandleType:(int64_t)a4;
+ (id)_callKitProvidersForHandleType:(uint64_t)a1;
+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 defaultAppsOnly:(BOOL)a6;
+ (id)defaultActionWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5;
+ (id)patchedSchemeForScheme:(id)a3;
+ (id)providersIfHandleIsEmergency:(id)a3;
- (id)_nonSymbolBadgeForSenderIdentityCompact:(BOOL)a3;
- (id)_senderIdentityInitialForSymbolName;
- (id)_serviceIdentifier;
- (id)baseIconName;
- (id)compactIcon;
- (id)defaultAction;
- (id)dialRequest;
- (id)dialRequestWithProvider:(void *)a1;
- (id)icon;
- (id)iconName;
- (id)localizedName;
- (id)menuIcon;
- (id)menuName;
- (id)notificationIconBundleIdentifier;
- (id)serviceName;
@end

@implementation DDCallKitAudioAction

- (id)notificationIconBundleIdentifier
{
  v24 = *MEMORY[0x277D85DE8];
  if (self->super._defaultAppPolicy)
  {
    v3 = [(TUCallProvider *)self->_provider identifier];
    v4 = [v3 isEqualToString:@"com.apple.coretelephony"];

    v5 = @"com.apple.mobilephone";
    if ((v4 & 1) == 0)
    {
      v6 = [(TUCallProvider *)self->_provider displayAppBundleIdentifier];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      else
      {
        v8 = @"com.apple.mobilephone";
      }

      v5 = v8;
    }
  }

  else
  {
    if (dd_isLSTrusted())
    {
      v9 = [MEMORY[0x277CC1E80] defaultWorkspace];
      v19 = 0;
      v10 = [v9 defaultApplicationForCategory:4 error:&v19];
      v11 = v19;

      if (v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        v12 = [MEMORY[0x277CCA8D8] mainBundle];
        v13 = [v12 bundleIdentifier];
        *buf = 138412546;
        v21 = v13;
        v22 = 2112;
        v23 = v11;
        _os_log_impl(&dword_21AB70000, MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT, "Couldn't get default phone app from %@. Error: %@", buf, 0x16u);
      }
    }

    else
    {
      v11 = 0;
      v10 = 0;
    }

    v14 = [v10 bundleIdentifier];
    v15 = v14;
    v16 = @"com.apple.mobilephone";
    if (v14)
    {
      v16 = v14;
    }

    v5 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v5;
}

- (id)defaultAction
{
  v9.receiver = self;
  v9.super_class = DDCallKitAudioAction;
  v3 = [(DDCallAction *)&v9 defaultAction];
  v4 = v3;
  if (!v3)
  {
    goto LABEL_8;
  }

  objc_storeStrong((v3 + 184), self->_provider);
  objc_storeStrong(v4 + 24, self->_senderIdentity);
  v5 = [MEMORY[0x277D75418] currentDevice];
  if ([v5 userInterfaceIdiom] != 1)
  {
LABEL_7:

    goto LABEL_8;
  }

  v6 = [(TUCallProvider *)self->_provider identifier];
  if (([v6 isEqualToString:@"com.apple.coretelephony"] & 1) == 0)
  {

    goto LABEL_7;
  }

  defaultAppPolicy = self->super._defaultAppPolicy;

  if (defaultAppPolicy == 1)
  {
    self->super._defaultAppPolicy = 0;
  }

LABEL_8:

  return v4;
}

+ (id)_callKitProvidersForHandleType:(uint64_t)a1
{
  v3 = objc_opt_self();
  if (dd_isDeviceLocked())
  {
    v4 = 0;
  }

  else
  {
    v6 = objc_alloc_init(MEMORY[0x277D6EE28]);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 3221225472;
    v8[2] = __55__DDCallKitAudioAction__callKitProvidersForHandleType___block_invoke;
    v8[3] = &__block_descriptor_48_e24_B16__0__TUCallProvider_8l;
    v8[4] = v3;
    v8[5] = a2;
    v7 = [v6 sortedProvidersPassingTest:v8];

    v4 = v7;
  }

  return v4;
}

+ (BOOL)providerIsValid:(id)a3 forHandleType:(int64_t)a4
{
  v5 = a3;
  if ([v5 supportsAudioOnly])
  {
    v6 = [v5 supportsHandleType:a4];

    return v6;
  }

  else
  {

    return 0;
  }
}

+ (id)defaultActionWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5
{
  v5 = [a1 actionsWithURL:a3 result:a4 context:a5 defaultAppsOnly:0];
  v6 = [v5 firstObject];
  v7 = [v6 defaultAction];

  return v7;
}

+ (id)providersIfHandleIsEmergency:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = v3;
  if (v3 && [v3 type] != 3)
  {
    v6 = objc_alloc_init(MEMORY[0x277D6EE28]);
    v7 = [v6 telephonyProvider];
    if (v7)
    {
      v8 = objc_alloc_init(MEMORY[0x277D6EF38]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      v9 = [v7 prioritizedSenderIdentities];
      v5 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
      if (v5)
      {
        v18 = v6;
        v10 = *v20;
        while (2)
        {
          for (i = 0; i != v5; i = i + 1)
          {
            if (*v20 != v10)
            {
              objc_enumerationMutation(v9);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            v13 = [v4 value];
            v14 = [v12 UUID];
            v15 = [v8 isEmergencyNumberForDigits:v13 senderIdentityUUID:v14];

            if (v15)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                +[DDCallKitAudioAction providersIfHandleIsEmergency:];
              }

              v23 = v7;
              v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
              goto LABEL_17;
            }
          }

          v5 = [v9 countByEnumeratingWithState:&v19 objects:v24 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }

LABEL_17:
        v6 = v18;
      }
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  v16 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)actionsWithURL:(id)a3 result:(__DDResult *)a4 context:(id)a5 defaultAppsOnly:(BOOL)a6
{
  v6 = a6;
  v10 = a3;
  v11 = a5;
  v44 = a4;
  v12 = [(DDTelephoneNumberAction *)[DDCallAction alloc] initWithURL:v10 result:a4 context:v11];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = v12->super._phoneNumber;
  v16 = v15;
  if (v15)
  {
    v41 = v6;
    v43 = v12;
    if ([(NSString *)v15 containsString:@"@"])
    {
      v17 = 3;
    }

    else
    {
      v17 = 2;
    }

    obj = [objc_alloc(MEMORY[0x277D6EEE8]) initWithType:v17 value:v16];
    v18 = [v10 scheme];
    v19 = [v18 lowercaseString];

    v20 = [a1 facetimeScheme];
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v47 = v14;
    v42 = v20;
    if ([v19 isEqualToString:v20])
    {
      v21 = 1;
    }

    else
    {
      v22 = [v20 stringByAppendingString:@"-prompt"];
      v21 = [v19 isEqualToString:v22];
    }

    v66 = v21;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    if ([v19 isEqualToString:@"telephony"])
    {
      v23 = 1;
    }

    else
    {
      v23 = [v19 isEqualToString:@"telephonyprompt"];
    }

    v62 = v23;
    v24 = [a1 providersIfHandleIsEmergency:obj];
    v45 = v13;
    v46 = v11;
    if (v24)
    {
      if ([a1 video])
      {

        _Block_object_dispose(v61, 8);
        _Block_object_dispose(&v63, 8);

        v25 = 0;
        v12 = v43;
        v14 = v47;
        goto LABEL_26;
      }

      v26 = 0;
      v28 = v24;
      v27 = v46;
    }

    else
    {
      v26 = dd_hostApplicationCanListCallProviders();
      [(DDCallKitAudioAction *)a1 _callKitProvidersForHandleType:v17];
      v28 = v27 = v46;
    }

    v29 = v24 != 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __70__DDCallKitAudioAction_actionsWithURL_result_context_defaultAppsOnly___block_invoke;
    v49[3] = &unk_278291880;
    v57 = a1;
    v30 = v10;
    v50 = v30;
    v58 = v44;
    v31 = v27;
    v51 = v31;
    v39 = obj;
    v52 = v39;
    v32 = v47;
    v59 = v26;
    v60 = v29;
    v53 = v32;
    v55 = &v63;
    v33 = v45;
    v54 = v33;
    v56 = v61;
    v40 = v28;
    [v28 enumerateObjectsUsingBlock:v49];
    if (!(v26 & 1 | ((v64[3] & 1) == 0)) && [a1 facetimeAvailable])
    {
      v34 = objc_alloc_init(MEMORY[0x277D6EE28]);
      v35 = [v34 faceTimeProvider];
      if (v35)
      {
        v36 = [a1 actionWithURL:v30 result:v44 context:v31];
        objc_storeStrong((v36 + 168), obj);
        objc_storeStrong((v36 + 184), v35);
        *(v36 + 176) = 2;
        [v33 insertObject:v36 atIndex:0];
      }
    }

    if (v41 && [v33 count] >= 2)
    {
      v37 = [v33 firstObject];
      [v33 removeAllObjects];
      [v33 addObject:v37];
    }

    [v33 addObjectsFromArray:v32];

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&v63, 8);

    v13 = v45;
    v11 = v46;
    v12 = v43;
    v14 = v47;
  }

  v25 = v13;
LABEL_26:

  return v25;
}

void __70__DDCallKitAudioAction_actionsWithURL_result_context_defaultAppsOnly___block_invoke(uint64_t a1, void *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"com.apple.coretelephony"];

  v6 = [v3 bundleIdentifier];
  v7 = [v6 isEqualToString:@"com.apple.facetime"];

  if (v7)
  {
    if (([*(a1 + 88) facetimeAvailable] & 1) == 0)
    {
      goto LABEL_30;
    }

LABEL_17:
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 3221225472;
    aBlock[2] = __70__DDCallKitAudioAction_actionsWithURL_result_context_defaultAppsOnly___block_invoke_2;
    aBlock[3] = &unk_278291858;
    v41 = *(a1 + 88);
    v15 = *(a1 + 32);
    v16 = *(a1 + 96);
    v35 = v15;
    v42 = v16;
    v36 = *(a1 + 40);
    v37 = *(a1 + 48);
    v17 = v3;
    v38 = v17;
    v43 = *(a1 + 105);
    v44 = *(a1 + 104);
    v45 = v7;
    v29 = *(a1 + 64);
    v18 = v29;
    v39 = v29;
    v40 = *(a1 + 80);
    v46 = v5;
    v19 = _Block_copy(aBlock);
    if (v5)
    {
      v20 = [v17 prioritizedSenderIdentities];
      if ([v20 count] < 2)
      {
LABEL_19:
        (*(v19 + 2))(v19, 0, 0, 1);
LABEL_29:

        goto LABEL_30;
      }
    }

    else
    {
      v20 = 0;
      if ([0 count] < 2)
      {
        goto LABEL_19;
      }
    }

    v21 = [v20 count];
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v33 = 0u;
    v22 = v20;
    v23 = [v22 countByEnumeratingWithState:&v30 objects:v51 count:16];
    if (v23)
    {
      v24 = v23;
      v25 = 0;
      v26 = *v31;
      do
      {
        for (i = 0; i != v24; ++i)
        {
          if (*v31 != v26)
          {
            objc_enumerationMutation(v22);
          }

          (*(v19 + 2))(v19, *(*(&v30 + 1) + 8 * i), v25++, v21);
        }

        v24 = [v22 countByEnumeratingWithState:&v30 objects:v51 count:16];
      }

      while (v24);
    }

    goto LABEL_29;
  }

  if (!v5)
  {
    goto LABEL_17;
  }

  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v52[0] = objc_opt_class();
  v52[1] = objc_opt_class();
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v52 count:2];
  v9 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
  if (v9)
  {
    v10 = v9;
    v11 = *v48;
    do
    {
      for (j = 0; j != v10; ++j)
      {
        if (*v48 == v11)
        {
          v13 = *(*(&v47 + 1) + 8 * j);
          if (![v13 isAvailable])
          {
            continue;
          }
        }

        else
        {
          objc_enumerationMutation(v8);
          v13 = *(*(&v47 + 1) + 8 * j);
          if (![v13 isAvailable])
          {
            continue;
          }
        }

        v14 = [v13 actionWithURL:*(a1 + 32) result:*(a1 + 96) context:*(a1 + 40)];
        objc_storeStrong((v14 + 168), *(a1 + 48));
        *(v14 + 176) = 2;
        [*(a1 + 56) addObject:v14];
      }

      v10 = [v8 countByEnumeratingWithState:&v47 objects:v53 count:16];
    }

    while (v10);
  }

  if (*(a1 + 104) != 1 || +[DDCallAction isAvailable])
  {
    goto LABEL_17;
  }

LABEL_30:

  v28 = *MEMORY[0x277D85DE8];
}

void __70__DDCallKitAudioAction_actionsWithURL_result_context_defaultAppsOnly___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v9 = a2;
  v8 = [*(a1 + 88) actionWithURL:*(a1 + 32) result:*(a1 + 96) context:*(a1 + 40)];
  objc_storeStrong((v8 + 168), *(a1 + 48));
  objc_storeStrong((v8 + 184), *(a1 + 56));
  if (*(a1 + 104) == 1)
  {
    *(v8 + 176) = 2;
  }

  else
  {
    *(v8 + 176) = *(a1 + 105) == 1;
  }

  objc_storeStrong((v8 + 192), a2);
  if (*(*(*(a1 + 72) + 8) + 24) == 1 && *(a1 + 106) == 1)
  {
    [*(a1 + 64) insertObject:v8 atIndex:0];
    *(*(*(a1 + 72) + 8) + 24) = 0;
  }

  else if (*(*(*(a1 + 80) + 8) + 24) == 1 && *(a1 + 107) == 1)
  {
    *(v8 + 176) = 2;
    [*(a1 + 64) insertObject:v8 atIndex:a3];
    *(*(*(a1 + 80) + 8) + 24) = a3 + 1 < a4;
  }

  else
  {
    [*(a1 + 64) addObject:v8];
  }
}

- (id)localizedName
{
  v3 = [(DDCallKitAudioAction *)self serviceName];
  if (!v3)
  {
LABEL_13:
    v14.receiver = self;
    v14.super_class = DDCallKitAudioAction;
    v3 = [(DDCallAction *)&v14 localizedName];

    return v3;
  }

  if (self->super.super.super._disambiguatedTitle)
  {
    v4 = v3;
    v5 = [(NSDictionary *)self->super.super.super._context objectForKeyedSubscript:@"HeyBarcodeSheet"];
    v6 = [v5 BOOLValue];

    if (v6)
    {
      v7 = [(DDCallKitAudioAction *)self menuName];

      v3 = v7;
      if (!v7)
      {
        goto LABEL_13;
      }
    }

    else
    {
      v8 = [objc_opt_class() video];
      v9 = MEMORY[0x277CCACA8];
      if (v8)
      {
        v10 = @"Video (%@)";
      }

      else
      {
        v10 = @"Call (%@)";
      }

      v11 = DDLocalizedString(v10);
      v12 = [v9 stringWithFormat:v11, v4];

      v3 = v12;
      if (!v12)
      {
        goto LABEL_13;
      }
    }
  }

  return v3;
}

- (id)dialRequest
{
  v3 = [(DDCallKitAudioAction *)self callProvider];
  v4 = [(DDCallKitAudioAction *)self dialRequestWithProvider:v3];

  return v4;
}

- (id)baseIconName
{
  v4.receiver = self;
  v4.super_class = DDCallKitAudioAction;
  v2 = [(DDTelephoneNumberAction *)&v4 iconName];

  return v2;
}

- (id)_senderIdentityInitialForSymbolName
{
  senderIdentity = self->_senderIdentity;
  if (senderIdentity)
  {
    v3 = [(TUSenderIdentity *)senderIdentity localizedName];
    v4 = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [v4 mutableCopy];

    v6 = [MEMORY[0x277CCA900] controlCharacterSet];
    [v5 formUnionWithCharacterSet:v6];

    v7 = [MEMORY[0x277CCA900] illegalCharacterSet];
    [v5 formUnionWithCharacterSet:v7];

    v8 = [MEMORY[0x277CCA900] punctuationCharacterSet];
    [v5 formUnionWithCharacterSet:v8];

    v9 = [v3 stringByTrimmingCharactersInSet:v5];

    if (![v9 length] || ((v10 = objc_msgSend(v9, "rangeOfComposedCharacterSequenceAtIndex:", 0)) == 0 ? (v12 = v11 == 0) : (v12 = 1), v12))
    {

      senderIdentity = 0;
      goto LABEL_24;
    }

    v13 = v10;
    if (v11 == 1)
    {
      v3 = [v9 substringWithRange:{v10, 1}];
      v14 = [v3 characterAtIndex:0];
      if ((v14 - 48) < 0xA || (v14 & 0xFFFFFFDF) - 65 < 0x1A)
      {
LABEL_23:

        senderIdentity = v3;
        goto LABEL_24;
      }

      v11 = 1;
    }

    v16 = [v9 substringWithRange:{v13, v11}];
    if (stringContainsEmoji(v16) || [v9 length] < 3)
    {
      goto LABEL_21;
    }

    v27 = 0;
    v28 = &v27;
    v29 = 0x3032000000;
    v30 = __Block_byref_object_copy__5;
    v31 = __Block_byref_object_dispose__5;
    v32 = 0;
    v17 = [v9 length];
    v18 = *MEMORY[0x277CCA408];
    v21 = MEMORY[0x277D85DD0];
    v22 = 3221225472;
    v23 = __59__DDCallKitAudioAction__senderIdentityInitialForSymbolName__block_invoke;
    v24 = &unk_2782918A8;
    v26 = &v27;
    v25 = v9;
    [v25 enumerateLinguisticTagsInRange:0 scheme:v17 options:v18 orthography:6 usingBlock:{0, &v21}];
    v19 = [v28[5] length] - 3;
    if (v19 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v3 = v28[5];
    }

    _Block_object_dispose(&v27, 8);
    if (v19 < 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_21:
      v3 = v16;
    }

    goto LABEL_23;
  }

LABEL_24:

  return senderIdentity;
}

uint64_t __59__DDCallKitAudioAction__senderIdentityInitialForSymbolName__block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) substringWithRange:?];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;

  return MEMORY[0x2821F96F8]();
}

- (id)_nonSymbolBadgeForSenderIdentityCompact:(BOOL)a3
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (self->_senderIdentity)
  {
    v4 = [(DDCallKitAudioAction *)self _senderIdentityInitialForSymbolName];
    if (v4)
    {
      v5 = v4;
      v6 = [MEMORY[0x277D74300] systemFontOfSize:64.0 weight:*MEMORY[0x277D74420]];
      v7 = [v6 fontDescriptor];
      v8 = [v7 fontDescriptorWithDesign:*MEMORY[0x277D74368]];

      v9 = [MEMORY[0x277D74300] fontWithDescriptor:v8 size:0.0];

      v39 = *MEMORY[0x277D740A8];
      v40[0] = v9;
      v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:&v39 count:1];
      [v5 sizeWithAttributes:v10];
      v12 = v11;
      v14 = v13;

      v15 = fmax(v12, v14);
      v16 = v15 * 0.1;
      v17 = v15 * 0.571428571;
      if (v12 <= v14)
      {
        v18 = (v15 * 1.67142857 - v12) * 0.5;
        v27 = (v15 * 1.67142857 - v14) * 0.5;
        v19 = v15 * 1.67142857;
        v14 = v15;
        v12 = v15;
        v20 = v15 * 1.67142857;
      }

      else
      {
        v17 = fmax(v17 + (v14 - v12) * 0.571428571, 0.0);
        v16 = v16 * v14 / v12;
        v18 = (v17 + v16) * 0.5;
        v19 = v17 + v16 + v12;
        v20 = v17 + v16 + v14;
        v27 = v18;
      }

      v21 = [objc_alloc(MEMORY[0x277D75560]) initWithSize:{v19, v20}];
      v28[0] = MEMORY[0x277D85DD0];
      v28[1] = 3221225472;
      v28[2] = __64__DDCallKitAudioAction__nonSymbolBadgeForSenderIdentityCompact___block_invoke;
      v28[3] = &unk_2782918D0;
      v31 = v16;
      v32 = v17;
      v33 = v12;
      v34 = v14;
      v38 = a3;
      v35 = v15;
      v36 = v18;
      v37 = v27;
      v29 = v5;
      v30 = v9;
      v22 = v9;
      v23 = v5;
      v24 = [v21 imageWithActions:v28];

      v4 = v24;
    }
  }

  else
  {
    v4 = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v4;
}

void __64__DDCallKitAudioAction__nonSymbolBadgeForSenderIdentityCompact___block_invoke(uint64_t a1, void *a2)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v3 = a2;
  v4 = [MEMORY[0x277D75208] bezierPathWithRoundedRect:(*(a1 + 56) + *(a1 + 48)) * 0.5 cornerRadius:{(*(a1 + 56) + *(a1 + 48)) * 0.5, *(a1 + 64), *(a1 + 72), *(a1 + 80) * 0.166666667}];
  v5 = [MEMORY[0x277D75348] labelColor];
  v6 = v5;
  if (*(a1 + 104) == 1)
  {
    [v5 setFill];
    [v4 fill];
    v7 = [MEMORY[0x277D75348] blackColor];

    if (!stringContainsEmoji(*(a1 + 32)))
    {
      CGContextSetBlendMode([v3 CGContext], kCGBlendModeClear);
    }
  }

  else
  {
    [v4 setLineWidth:*(a1 + 48)];
    [v6 setStroke];
    [v4 stroke];
    v7 = v6;
  }

  v9 = *(a1 + 32);
  v8 = *(a1 + 40);
  v10 = *MEMORY[0x277D740C0];
  v13[0] = *MEMORY[0x277D740A8];
  v13[1] = v10;
  v14[0] = v8;
  v14[1] = v7;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:2];
  [v9 drawAtPoint:v11 withAttributes:{*(a1 + 88), *(a1 + 96)}];

  v12 = *MEMORY[0x277D85DE8];
}

- (id)compactIcon
{
  v3 = [(DDCallKitAudioAction *)self _nonSymbolBadgeForSenderIdentityCompact:1];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDCallKitAudioAction;
    v5 = [(DDAction *)&v8 compactIcon];
  }

  v6 = v5;

  return v6;
}

- (id)menuIcon
{
  v3 = [(DDCallKitAudioAction *)self baseIconName];
  v4 = [(DDAction *)self _iconFromName:v3];
  v5 = v4;
  if (v4)
  {
    v6 = v4;
  }

  else
  {
    v6 = [(DDCallKitAudioAction *)self icon];
  }

  v7 = v6;

  return v7;
}

- (id)icon
{
  v3 = [(DDCallKitAudioAction *)self _nonSymbolBadgeForSenderIdentityCompact:0];
  v4 = v3;
  if (v3)
  {
    v5 = v3;
  }

  else
  {
    if (!self->super.super.super._isDefaultAction && !self->_senderIdentity)
    {
      [(TUCallProvider *)self->_provider displayAppBundleIdentifier];
    }

    v8.receiver = self;
    v8.super_class = DDCallKitAudioAction;
    v5 = [(DDAction *)&v8 icon];
  }

  v6 = v5;

  return v6;
}

- (id)iconName
{
  if (!self->super.super.super._isDefaultAction && self->_senderIdentity)
  {
    v2 = self;
    v3 = [(TUSenderIdentity *)self->_senderIdentity localizedName];
    v4 = [v3 lowercaseString];

    if ([v4 length])
    {
      v5 = [v4 characterAtIndex:0];
      v11 = v5;
      if ((v5 - 48) < 0xA || (v5 - 97) < 0x1A)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&v11 length:1];

        v8 = [v7 stringByAppendingString:@".square"];

        v9 = v8;

        return v9;
      }
    }

    self = v2;
  }

  v9 = [(DDCallKitAudioAction *)self baseIconName];

  return v9;
}

- (id)menuName
{
  v3 = [(DDTelephoneNumberAction *)self bizItem];

  if (v3)
  {
    if (self->_senderIdentity)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = DDLocalizedStringWithDefaultValue(@"AUDIO_CALL_WITH_SERVICE", 0, 0, @"Call (%@)");
      v6 = [(TUSenderIdentity *)self->_senderIdentity localizedName];
      v7 = [v4 localizedStringWithFormat:v5, v6];

      v8 = v7;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = DDCallKitAudioAction;
      v8 = [(DDCallAction *)&v10 localizedName];
    }
  }

  else
  {
    v8 = DDLocalizedStringWithDefaultValue(@"AUDIO_CALL", 0, 0, @"Call");
  }

  return v8;
}

- (id)serviceName
{
  v3 = [(DDCallKitAudioAction *)self callProvider];
  v4 = [v3 identifier];
  v5 = [v4 isEqualToString:@"com.apple.coretelephony"];

  if (!v5)
  {
    v7 = [(DDCallKitAudioAction *)self callProvider];
    v6 = [v7 localizedName];

    if (!self->_senderIdentity)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = DDLocalizedString(@"Phone");
  if (self->_senderIdentity)
  {
LABEL_5:
    v8 = MEMORY[0x277CCACA8];
    v9 = DDLocalizedStringWithDefaultValue(@"CALL_EXT_SERVICE_NAME_FORMAT", 0, 0, @"%@ (%@)");
    v10 = [(TUSenderIdentity *)self->_senderIdentity localizedName];
    v11 = [v8 localizedStringWithFormat:v9, v6, v10];

    v6 = v11;
  }

LABEL_6:

  return v6;
}

- (id)_serviceIdentifier
{
  senderIdentity = self->_senderIdentity;
  v4 = [(DDCallKitAudioAction *)self callProvider];
  v5 = [v4 identifier];
  if (senderIdentity)
  {
    v6 = [(TUSenderIdentity *)self->_senderIdentity accountUUID];
    v7 = [v5 stringByAppendingFormat:@"+%@", v6];

    v5 = v7;
  }

  return v5;
}

+ (id)patchedSchemeForScheme:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (!v4)
  {
    goto LABEL_8;
  }

  if ([v4 isEqualToString:@"facetime"])
  {
    v6 = @"facetime-audio";
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"facetime-prompt"])
  {
    v6 = @"facetime-audio-prompt";
    goto LABEL_9;
  }

  v7 = [a1 matchingSchemes];
  v8 = [v7 containsObject:v5];

  if (v8)
  {
    v6 = v5;
  }

  else
  {
LABEL_8:
    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)dialRequestWithProvider:(void *)a1
{
  if (a1)
  {
    v7.receiver = a1;
    v7.super_class = DDCallKitAudioAction;
    v3 = objc_msgSendSuper2(&v7, sel_dialRequestWithProvider_, a2);
    [v3 setVideo:{objc_msgSend(objc_opt_class(), "video")}];
    v4 = a1[24];
    if (v4)
    {
      v5 = [v4 accountUUID];
      [v3 setLocalSenderIdentityAccountUUID:v5];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end