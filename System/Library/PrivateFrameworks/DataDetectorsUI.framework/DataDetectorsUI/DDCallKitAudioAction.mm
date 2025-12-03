@interface DDCallKitAudioAction
+ (BOOL)providerIsValid:(id)valid forHandleType:(int64_t)type;
+ (id)_callKitProvidersForHandleType:(uint64_t)type;
+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context defaultAppsOnly:(BOOL)only;
+ (id)defaultActionWithURL:(id)l result:(__DDResult *)result context:(id)context;
+ (id)patchedSchemeForScheme:(id)scheme;
+ (id)providersIfHandleIsEmergency:(id)emergency;
- (id)_nonSymbolBadgeForSenderIdentityCompact:(BOOL)compact;
- (id)_senderIdentityInitialForSymbolName;
- (id)_serviceIdentifier;
- (id)baseIconName;
- (id)compactIcon;
- (id)defaultAction;
- (id)dialRequest;
- (id)dialRequestWithProvider:(void *)provider;
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
    identifier = [(TUCallProvider *)self->_provider identifier];
    v4 = [identifier isEqualToString:@"com.apple.coretelephony"];

    v5 = @"com.apple.mobilephone";
    if ((v4 & 1) == 0)
    {
      displayAppBundleIdentifier = [(TUCallProvider *)self->_provider displayAppBundleIdentifier];
      v7 = displayAppBundleIdentifier;
      if (displayAppBundleIdentifier)
      {
        v8 = displayAppBundleIdentifier;
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
      defaultWorkspace = [MEMORY[0x277CC1E80] defaultWorkspace];
      v19 = 0;
      v10 = [defaultWorkspace defaultApplicationForCategory:4 error:&v19];
      v11 = v19;

      if (v11 && os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_DEFAULT))
      {
        mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
        bundleIdentifier = [mainBundle bundleIdentifier];
        *buf = 138412546;
        v21 = bundleIdentifier;
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

    bundleIdentifier2 = [v10 bundleIdentifier];
    v15 = bundleIdentifier2;
    v16 = @"com.apple.mobilephone";
    if (bundleIdentifier2)
    {
      v16 = bundleIdentifier2;
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
  defaultAction = [(DDCallAction *)&v9 defaultAction];
  v4 = defaultAction;
  if (!defaultAction)
  {
    goto LABEL_8;
  }

  objc_storeStrong((defaultAction + 184), self->_provider);
  objc_storeStrong(v4 + 24, self->_senderIdentity);
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  if ([currentDevice userInterfaceIdiom] != 1)
  {
LABEL_7:

    goto LABEL_8;
  }

  identifier = [(TUCallProvider *)self->_provider identifier];
  if (([identifier isEqualToString:@"com.apple.coretelephony"] & 1) == 0)
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

+ (id)_callKitProvidersForHandleType:(uint64_t)type
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

+ (BOOL)providerIsValid:(id)valid forHandleType:(int64_t)type
{
  validCopy = valid;
  if ([validCopy supportsAudioOnly])
  {
    v6 = [validCopy supportsHandleType:type];

    return v6;
  }

  else
  {

    return 0;
  }
}

+ (id)defaultActionWithURL:(id)l result:(__DDResult *)result context:(id)context
{
  v5 = [self actionsWithURL:l result:result context:context defaultAppsOnly:0];
  firstObject = [v5 firstObject];
  defaultAction = [firstObject defaultAction];

  return defaultAction;
}

+ (id)providersIfHandleIsEmergency:(id)emergency
{
  v25 = *MEMORY[0x277D85DE8];
  emergencyCopy = emergency;
  v4 = emergencyCopy;
  if (emergencyCopy && [emergencyCopy type] != 3)
  {
    v6 = objc_alloc_init(MEMORY[0x277D6EE28]);
    telephonyProvider = [v6 telephonyProvider];
    if (telephonyProvider)
    {
      v8 = objc_alloc_init(MEMORY[0x277D6EF38]);
      v19 = 0u;
      v20 = 0u;
      v21 = 0u;
      v22 = 0u;
      prioritizedSenderIdentities = [telephonyProvider prioritizedSenderIdentities];
      v5 = [prioritizedSenderIdentities countByEnumeratingWithState:&v19 objects:v24 count:16];
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
              objc_enumerationMutation(prioritizedSenderIdentities);
            }

            v12 = *(*(&v19 + 1) + 8 * i);
            value = [v4 value];
            uUID = [v12 UUID];
            v15 = [v8 isEmergencyNumberForDigits:value senderIdentityUUID:uUID];

            if (v15)
            {
              if (os_log_type_enabled(MEMORY[0x277D86220], OS_LOG_TYPE_ERROR))
              {
                +[DDCallKitAudioAction providersIfHandleIsEmergency:];
              }

              v23 = telephonyProvider;
              v5 = [MEMORY[0x277CBEA60] arrayWithObjects:&v23 count:1];
              goto LABEL_17;
            }
          }

          v5 = [prioritizedSenderIdentities countByEnumeratingWithState:&v19 objects:v24 count:16];
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

+ (id)actionsWithURL:(id)l result:(__DDResult *)result context:(id)context defaultAppsOnly:(BOOL)only
{
  onlyCopy = only;
  lCopy = l;
  contextCopy = context;
  resultCopy = result;
  v12 = [(DDTelephoneNumberAction *)[DDCallAction alloc] initWithURL:lCopy result:result context:contextCopy];
  v13 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v15 = v12->super._phoneNumber;
  v16 = v15;
  if (v15)
  {
    v41 = onlyCopy;
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
    scheme = [lCopy scheme];
    lowercaseString = [scheme lowercaseString];

    facetimeScheme = [self facetimeScheme];
    v63 = 0;
    v64 = &v63;
    v65 = 0x2020000000;
    v47 = v14;
    v42 = facetimeScheme;
    if ([lowercaseString isEqualToString:facetimeScheme])
    {
      v21 = 1;
    }

    else
    {
      v22 = [facetimeScheme stringByAppendingString:@"-prompt"];
      v21 = [lowercaseString isEqualToString:v22];
    }

    v66 = v21;
    v61[0] = 0;
    v61[1] = v61;
    v61[2] = 0x2020000000;
    if ([lowercaseString isEqualToString:@"telephony"])
    {
      v23 = 1;
    }

    else
    {
      v23 = [lowercaseString isEqualToString:@"telephonyprompt"];
    }

    v62 = v23;
    v24 = [self providersIfHandleIsEmergency:obj];
    v45 = v13;
    v46 = contextCopy;
    if (v24)
    {
      if ([self video])
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
      [(DDCallKitAudioAction *)self _callKitProvidersForHandleType:v17];
      v28 = v27 = v46;
    }

    v29 = v24 != 0;
    v49[0] = MEMORY[0x277D85DD0];
    v49[1] = 3221225472;
    v49[2] = __70__DDCallKitAudioAction_actionsWithURL_result_context_defaultAppsOnly___block_invoke;
    v49[3] = &unk_278291880;
    selfCopy = self;
    v30 = lCopy;
    v50 = v30;
    v58 = resultCopy;
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
    if (!(v26 & 1 | ((v64[3] & 1) == 0)) && [self facetimeAvailable])
    {
      v34 = objc_alloc_init(MEMORY[0x277D6EE28]);
      faceTimeProvider = [v34 faceTimeProvider];
      if (faceTimeProvider)
      {
        v36 = [self actionWithURL:v30 result:resultCopy context:v31];
        objc_storeStrong((v36 + 168), obj);
        objc_storeStrong((v36 + 184), faceTimeProvider);
        *(v36 + 176) = 2;
        [v33 insertObject:v36 atIndex:0];
      }
    }

    if (v41 && [v33 count] >= 2)
    {
      firstObject = [v33 firstObject];
      [v33 removeAllObjects];
      [v33 addObject:firstObject];
    }

    [v33 addObjectsFromArray:v32];

    _Block_object_dispose(v61, 8);
    _Block_object_dispose(&v63, 8);

    v13 = v45;
    contextCopy = v46;
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
  serviceName = [(DDCallKitAudioAction *)self serviceName];
  if (!serviceName)
  {
LABEL_13:
    v14.receiver = self;
    v14.super_class = DDCallKitAudioAction;
    serviceName = [(DDCallAction *)&v14 localizedName];

    return serviceName;
  }

  if (self->super.super.super._disambiguatedTitle)
  {
    v4 = serviceName;
    v5 = [(NSDictionary *)self->super.super.super._context objectForKeyedSubscript:@"HeyBarcodeSheet"];
    bOOLValue = [v5 BOOLValue];

    if (bOOLValue)
    {
      menuName = [(DDCallKitAudioAction *)self menuName];

      serviceName = menuName;
      if (!menuName)
      {
        goto LABEL_13;
      }
    }

    else
    {
      video = [objc_opt_class() video];
      v9 = MEMORY[0x277CCACA8];
      if (video)
      {
        v10 = @"Video (%@)";
      }

      else
      {
        v10 = @"Call (%@)";
      }

      v11 = DDLocalizedString(v10);
      v12 = [v9 stringWithFormat:v11, v4];

      serviceName = v12;
      if (!v12)
      {
        goto LABEL_13;
      }
    }
  }

  return serviceName;
}

- (id)dialRequest
{
  callProvider = [(DDCallKitAudioAction *)self callProvider];
  v4 = [(DDCallKitAudioAction *)self dialRequestWithProvider:callProvider];

  return v4;
}

- (id)baseIconName
{
  v4.receiver = self;
  v4.super_class = DDCallKitAudioAction;
  iconName = [(DDTelephoneNumberAction *)&v4 iconName];

  return iconName;
}

- (id)_senderIdentityInitialForSymbolName
{
  senderIdentity = self->_senderIdentity;
  if (senderIdentity)
  {
    localizedName = [(TUSenderIdentity *)senderIdentity localizedName];
    whitespaceAndNewlineCharacterSet = [MEMORY[0x277CCA900] whitespaceAndNewlineCharacterSet];
    v5 = [whitespaceAndNewlineCharacterSet mutableCopy];

    controlCharacterSet = [MEMORY[0x277CCA900] controlCharacterSet];
    [v5 formUnionWithCharacterSet:controlCharacterSet];

    illegalCharacterSet = [MEMORY[0x277CCA900] illegalCharacterSet];
    [v5 formUnionWithCharacterSet:illegalCharacterSet];

    punctuationCharacterSet = [MEMORY[0x277CCA900] punctuationCharacterSet];
    [v5 formUnionWithCharacterSet:punctuationCharacterSet];

    v9 = [localizedName stringByTrimmingCharactersInSet:v5];

    if (![v9 length] || ((v10 = objc_msgSend(v9, "rangeOfComposedCharacterSequenceAtIndex:", 0)) == 0 ? (v12 = v11 == 0) : (v12 = 1), v12))
    {

      senderIdentity = 0;
      goto LABEL_24;
    }

    v13 = v10;
    if (v11 == 1)
    {
      localizedName = [v9 substringWithRange:{v10, 1}];
      v14 = [localizedName characterAtIndex:0];
      if ((v14 - 48) < 0xA || (v14 & 0xFFFFFFDF) - 65 < 0x1A)
      {
LABEL_23:

        senderIdentity = localizedName;
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
      localizedName = v28[5];
    }

    _Block_object_dispose(&v27, 8);
    if (v19 < 0xFFFFFFFFFFFFFFFELL)
    {
LABEL_21:
      localizedName = v16;
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

- (id)_nonSymbolBadgeForSenderIdentityCompact:(BOOL)compact
{
  v40[1] = *MEMORY[0x277D85DE8];
  if (self->_senderIdentity)
  {
    _senderIdentityInitialForSymbolName = [(DDCallKitAudioAction *)self _senderIdentityInitialForSymbolName];
    if (_senderIdentityInitialForSymbolName)
    {
      v5 = _senderIdentityInitialForSymbolName;
      v6 = [MEMORY[0x277D74300] systemFontOfSize:64.0 weight:*MEMORY[0x277D74420]];
      fontDescriptor = [v6 fontDescriptor];
      v8 = [fontDescriptor fontDescriptorWithDesign:*MEMORY[0x277D74368]];

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
      compactCopy = compact;
      v35 = v15;
      v36 = v18;
      v37 = v27;
      v29 = v5;
      v30 = v9;
      v22 = v9;
      v23 = v5;
      v24 = [v21 imageWithActions:v28];

      _senderIdentityInitialForSymbolName = v24;
    }
  }

  else
  {
    _senderIdentityInitialForSymbolName = 0;
  }

  v25 = *MEMORY[0x277D85DE8];

  return _senderIdentityInitialForSymbolName;
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
    compactIcon = v3;
  }

  else
  {
    v8.receiver = self;
    v8.super_class = DDCallKitAudioAction;
    compactIcon = [(DDAction *)&v8 compactIcon];
  }

  v6 = compactIcon;

  return v6;
}

- (id)menuIcon
{
  baseIconName = [(DDCallKitAudioAction *)self baseIconName];
  v4 = [(DDAction *)self _iconFromName:baseIconName];
  v5 = v4;
  if (v4)
  {
    icon = v4;
  }

  else
  {
    icon = [(DDCallKitAudioAction *)self icon];
  }

  v7 = icon;

  return v7;
}

- (id)icon
{
  v3 = [(DDCallKitAudioAction *)self _nonSymbolBadgeForSenderIdentityCompact:0];
  v4 = v3;
  if (v3)
  {
    icon = v3;
  }

  else
  {
    if (!self->super.super.super._isDefaultAction && !self->_senderIdentity)
    {
      [(TUCallProvider *)self->_provider displayAppBundleIdentifier];
    }

    v8.receiver = self;
    v8.super_class = DDCallKitAudioAction;
    icon = [(DDAction *)&v8 icon];
  }

  v6 = icon;

  return v6;
}

- (id)iconName
{
  if (!self->super.super.super._isDefaultAction && self->_senderIdentity)
  {
    selfCopy = self;
    localizedName = [(TUSenderIdentity *)self->_senderIdentity localizedName];
    lowercaseString = [localizedName lowercaseString];

    if ([lowercaseString length])
    {
      v5 = [lowercaseString characterAtIndex:0];
      v11 = v5;
      if ((v5 - 48) < 0xA || (v5 - 97) < 0x1A)
      {
        v7 = [MEMORY[0x277CCACA8] stringWithCharacters:&v11 length:1];

        v8 = [v7 stringByAppendingString:@".square"];

        baseIconName = v8;

        return baseIconName;
      }
    }

    self = selfCopy;
  }

  baseIconName = [(DDCallKitAudioAction *)self baseIconName];

  return baseIconName;
}

- (id)menuName
{
  bizItem = [(DDTelephoneNumberAction *)self bizItem];

  if (bizItem)
  {
    if (self->_senderIdentity)
    {
      v4 = MEMORY[0x277CCACA8];
      v5 = DDLocalizedStringWithDefaultValue(@"AUDIO_CALL_WITH_SERVICE", 0, 0, @"Call (%@)");
      localizedName = [(TUSenderIdentity *)self->_senderIdentity localizedName];
      v7 = [v4 localizedStringWithFormat:v5, localizedName];

      localizedName2 = v7;
    }

    else
    {
      v10.receiver = self;
      v10.super_class = DDCallKitAudioAction;
      localizedName2 = [(DDCallAction *)&v10 localizedName];
    }
  }

  else
  {
    localizedName2 = DDLocalizedStringWithDefaultValue(@"AUDIO_CALL", 0, 0, @"Call");
  }

  return localizedName2;
}

- (id)serviceName
{
  callProvider = [(DDCallKitAudioAction *)self callProvider];
  identifier = [callProvider identifier];
  v5 = [identifier isEqualToString:@"com.apple.coretelephony"];

  if (!v5)
  {
    callProvider2 = [(DDCallKitAudioAction *)self callProvider];
    localizedName = [callProvider2 localizedName];

    if (!self->_senderIdentity)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  localizedName = DDLocalizedString(@"Phone");
  if (self->_senderIdentity)
  {
LABEL_5:
    v8 = MEMORY[0x277CCACA8];
    v9 = DDLocalizedStringWithDefaultValue(@"CALL_EXT_SERVICE_NAME_FORMAT", 0, 0, @"%@ (%@)");
    localizedName2 = [(TUSenderIdentity *)self->_senderIdentity localizedName];
    v11 = [v8 localizedStringWithFormat:v9, localizedName, localizedName2];

    localizedName = v11;
  }

LABEL_6:

  return localizedName;
}

- (id)_serviceIdentifier
{
  senderIdentity = self->_senderIdentity;
  callProvider = [(DDCallKitAudioAction *)self callProvider];
  identifier = [callProvider identifier];
  if (senderIdentity)
  {
    accountUUID = [(TUSenderIdentity *)self->_senderIdentity accountUUID];
    v7 = [identifier stringByAppendingFormat:@"+%@", accountUUID];

    identifier = v7;
  }

  return identifier;
}

+ (id)patchedSchemeForScheme:(id)scheme
{
  schemeCopy = scheme;
  v5 = schemeCopy;
  if (!schemeCopy)
  {
    goto LABEL_8;
  }

  if ([schemeCopy isEqualToString:@"facetime"])
  {
    v6 = @"facetime-audio";
    goto LABEL_9;
  }

  if ([v5 isEqualToString:@"facetime-prompt"])
  {
    v6 = @"facetime-audio-prompt";
    goto LABEL_9;
  }

  matchingSchemes = [self matchingSchemes];
  v8 = [matchingSchemes containsObject:v5];

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

- (id)dialRequestWithProvider:(void *)provider
{
  if (provider)
  {
    v7.receiver = provider;
    v7.super_class = DDCallKitAudioAction;
    v3 = objc_msgSendSuper2(&v7, sel_dialRequestWithProvider_, a2);
    [v3 setVideo:{objc_msgSend(objc_opt_class(), "video")}];
    v4 = provider[24];
    if (v4)
    {
      accountUUID = [v4 accountUUID];
      [v3 setLocalSenderIdentityAccountUUID:accountUUID];
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

@end