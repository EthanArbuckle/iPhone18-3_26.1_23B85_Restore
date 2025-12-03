@interface IMCTSubscriptionUtilities
+ (id)sharedInstance;
- (BOOL)__unlocked_deviceSupportsMultipleSubscriptions;
- (BOOL)deviceSupportsMultipleSubscriptions;
- (BOOL)isDataConnectionExpensive;
- (BOOL)isLowDataMode;
- (BOOL)isWiFiLowDataMode;
- (BOOL)simInHomeCountryWithSubscriptionContext:(id)context;
- (BOOL)wifiCallingEnabledForSubscriptionContext:(id)context;
- (IMCTSubscriptionUtilities)init;
- (NSArray)ctServiceSubscriptions;
- (NSArray)registeredPhoneNumbers;
- (NSArray)registeredSIMIDs;
- (NSArray)registeredSubscriptionSlotIDs;
- (NSSet)allowedChatBotExtensions;
- (NSString)ctPhoneNumber;
- (id)__unlocked_cachedCarrierSettings;
- (id)__unlocked_createSettingsDictionaryForUniqueID:(id)d;
- (id)__unlocked_ctActiveContextsWithError:(id *)error;
- (id)__unlocked_ctSubscriptionInfoWithError:(id *)error;
- (id)__unlocked_getCachedSettingOrReadFromBundleForCarrierBundleKey:(id)key bundleType:(int64_t)type forContext:(id)context defaultValue:(id)value;
- (id)__unlocked_getCarrierSettingsForUniqueID:(id)d;
- (id)_cachedCarrierKeyForKeyHierarchy:(id)hierarchy bundleType:(int64_t)type;
- (id)_cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:(id)context;
- (id)_getCachedCarrierSettingValueForBundleKey:(id)key uniqueID:(id)d;
- (id)_iMessageService;
- (id)_registeredSims;
- (id)copyBundleValueForSubscriptionContext:(id)context keyHierarchy:(id)hierarchy bundleType:(int64_t)type defaultValue:(id)value valueIfError:(id)error;
- (id)copyIsoCountryCodeForSubscriptionContext:(id)context;
- (id)ctActiveContextsWithError:(id *)error;
- (id)ctSubscriptionInfoWithError:(id *)error;
- (id)newSubscriptionContextWithPhoneNumber:(id)number labelID:(id)d isDefaultVoice:(id)voice isDefaultData:(id)data slot:(int64_t)slot;
- (id)newSubscriptionContextWithSlot:(int64_t)slot;
- (id)rcsConfigurationForSubscriptionContext:(id)context;
- (id)stringForBundleType:(int64_t)type;
- (unint64_t)numberOfSubscriptions;
- (void)__unlocked_fetchAllowedChatBotExtensionsIfNecessary;
- (void)__unlocked_resetCachedCarrierSettingsForUniqueID:(id)d;
- (void)__unlocked_setCachedCarrierSettingValue:(id)value bundleKey:(id)key uniqueID:(id)d;
- (void)__unlocked_setCarrierSettings:(id)settings uniqueID:(id)d;
- (void)_performCurrentNetworkBlock:(id)block withDevice:(__WiFiDeviceClient *)device async:(BOOL)async;
- (void)_registerForWRM;
- (void)activeSubscriptionsDidChange;
- (void)carrierBundleChange:(id)change;
- (void)fetchAllowedChatBotExtensionsIfNecessary;
- (void)generateTokenForUPIWithHostBundleID:(id)d subscriptionContext:(id)context;
- (void)resetCacheSubscriptionInfo;
- (void)resetCacheSubscriptionInfoAndPostNotification;
- (void)setAllowedChatBotExtensions:(id)extensions;
- (void)subscriptionInfoDidChange;
@end

@implementation IMCTSubscriptionUtilities

+ (id)sharedInstance
{
  if (qword_1ED8CA400 != -1)
  {
    sub_1A85EE1F0();
  }

  v3 = qword_1ED8CA368;

  return v3;
}

- (NSArray)ctServiceSubscriptions
{
  v12 = *MEMORY[0x1E69E9840];
  if (qword_1ED8CA320)
  {
    v2 = qword_1ED8CA328 == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || !self->_coreTelephonyClient)
  {
    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        LOWORD(v10) = 0;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Classes CTXPCServiceSubscriptionInfo and CTXPCServiceSubscriptionContext were not weak linked properly, returning nil.", &v10, 2u);
      }
    }

    subscriptions = 0;
  }

  else
  {
    ctSubscriptionInfo = [(IMCTSubscriptionUtilities *)self ctSubscriptionInfo];
    v4 = ctSubscriptionInfo;
    if (ctSubscriptionInfo)
    {
      subscriptions = [ctSubscriptionInfo subscriptions];
    }

    else
    {
      subscriptions = 0;
    }

    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        __im_logCTXPCServiceSubscriptionContext = [subscriptions __im_logCTXPCServiceSubscriptionContext];
        v10 = 138412290;
        v11 = __im_logCTXPCServiceSubscriptionContext;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "Returning subscriptions %@", &v10, 0xCu);
      }
    }
  }

  return subscriptions;
}

- (IMCTSubscriptionUtilities)init
{
  v13.receiver = self;
  v13.super_class = IMCTSubscriptionUtilities;
  v2 = [(IMCTSubscriptionUtilities *)&v13 init];
  if (v2)
  {
    v3 = dispatch_queue_create("ctSubscriptionInfoAccessQueue", 0);
    queue = v2->_queue;
    v2->_queue = v3;

    if (qword_1ED8CA310 != -1)
    {
      sub_1A85EE284();
    }

    v5 = [objc_alloc(MEMORY[0x1AC570AA0](@"CoreTelephonyClient" @"CoreTelephony"))];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v5;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    v7 = objc_alloc_init(MEMORY[0x1E69A4898]);
    phoneSubscriptionSelector = v2->_phoneSubscriptionSelector;
    v2->_phoneSubscriptionSelector = v7;

    allowedChatBotExtensions = v2->_allowedChatBotExtensions;
    v2->_allowedChatBotExtensions = 0;

    v10 = +[IMFeatureFlags sharedFeatureFlags];
    isDynamicLQMDisabledByWRM = [v10 isDynamicLQMDisabledByWRM];

    if (isDynamicLQMDisabledByWRM)
    {
      [(IMCTSubscriptionUtilities *)v2 _registerForWRM];
    }
  }

  return v2;
}

- (void)_registerForWRM
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = +[IMFeatureFlags sharedFeatureFlags];
  isDynamicLQMDisabledByWRM = [v3 isDynamicLQMDisabledByWRM];

  if (isDynamicLQMDisabledByWRM)
  {
    out_token = 0;
    wrmNetworkPreference = self->_wrmNetworkPreference;
    self->_wrmNetworkPreference = &unk_1F1BFA610;

    wrmCellScore = self->_wrmCellScore;
    self->_wrmCellScore = &unk_1F1BFA628;

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = sub_1A85F7624;
    v9[3] = &unk_1E78281C0;
    v9[4] = self;
    v7 = notify_register_dispatch("com.apple.WRM.iRAT_event.linkRecommendation", &out_token, MEMORY[0x1E69E96A0], v9);
    if (v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          v12 = v7;
          _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "LQM-WRM Failed to register for com.apple.WRM.iRAT_event.linkRecommendation (%u)", buf, 8u);
        }
      }
    }
  }
}

- (BOOL)deviceSupportsMultipleSubscriptions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A85F95F4;
  v5[3] = &unk_1E78282D0;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = *(v7 + 24);
  _Block_object_dispose(&v6, 8);
  return v3;
}

- (BOOL)__unlocked_deviceSupportsMultipleSubscriptions
{
  v12 = *MEMORY[0x1E69E9840];
  if (!self->_fetchedHasMultipleSubscriptionsWithoutError)
  {
    v9 = 0;
    v3 = [(IMCTSubscriptionUtilities *)self __unlocked_ctSubscriptionInfoWithError:&v9];
    v4 = v9;
    if (v4)
    {
      if (IMOSLoggingEnabled())
      {
        v5 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v11 = v4;
          _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, "Error occured fetching subscription info %@", buf, 0xCu);
        }
      }
    }

    else
    {
      if (v3)
      {
        self->_hasMultipleSubscriptions = [v3 __im_hasMultipleSubscriptions];
      }

      self->_fetchedHasMultipleSubscriptionsWithoutError = 1;
    }

    if (IMOSLoggingEnabled())
    {
      v6 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
      {
        if (self->_hasMultipleSubscriptions)
        {
          v7 = @"YES";
        }

        else
        {
          v7 = @"NO";
        }

        *buf = 138412290;
        v11 = v7;
        _os_log_impl(&dword_1A85E5000, v6, OS_LOG_TYPE_INFO, "Device supports multiple subscriptions ? %@", buf, 0xCu);
      }
    }
  }

  return self->_hasMultipleSubscriptions;
}

- (unint64_t)numberOfSubscriptions
{
  ctSubscriptionInfo = [(IMCTSubscriptionUtilities *)self ctSubscriptionInfo];
  subscriptions = [ctSubscriptionInfo subscriptions];
  v4 = [subscriptions count];

  return v4;
}

- (id)__unlocked_cachedCarrierSettings
{
  v25 = *MEMORY[0x1E69E9840];
  p_cachedCarrierSettings = &self->_cachedCarrierSettings;
  cachedCarrierSettings = self->_cachedCarrierSettings;
  if (!cachedCarrierSettings)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v6 = [(IMCTSubscriptionUtilities *)self __unlocked_ctSubscriptionInfoWithError:0, 0];
    subscriptions = [v6 subscriptions];

    v8 = [subscriptions countByEnumeratingWithState:&v18 objects:v24 count:16];
    if (v8)
    {
      v9 = *v19;
      v10 = MEMORY[0x1E695E0F8];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v19 != v9)
          {
            objc_enumerationMutation(subscriptions);
          }

          v12 = *(*(&v18 + 1) + 8 * i);
          v13 = [(IMCTSubscriptionUtilities *)self _cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:v12];
          v14 = v13;
          if (v12 && [v13 length])
          {
            [v5 setObject:v10 forKey:v14];
          }
        }

        v8 = [subscriptions countByEnumeratingWithState:&v18 objects:v24 count:16];
      }

      while (v8);
    }

    objc_storeStrong(p_cachedCarrierSettings, v5);
    if (IMOSLoggingEnabled())
    {
      v15 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
      {
        v16 = *p_cachedCarrierSettings;
        *buf = 138412290;
        v23 = v16;
        _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Created the cached carrier settings dict %@", buf, 0xCu);
      }
    }

    cachedCarrierSettings = *p_cachedCarrierSettings;
  }

  return cachedCarrierSettings;
}

- (BOOL)isDataConnectionExpensive
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMPCDoesInterfaceExist())
  {
    ctSubscriptionInfo = [(IMCTSubscriptionUtilities *)self ctSubscriptionInfo];
    __im_preferredDataSubscriptionContext = [ctSubscriptionInfo __im_preferredDataSubscriptionContext];

    if (__im_preferredDataSubscriptionContext)
    {
      v5 = [MEMORY[0x1E6965070] descriptorWithSubscriptionContext:__im_preferredDataSubscriptionContext];
      coreTelephonyClient = self->_coreTelephonyClient;
      v13 = 0;
      v7 = [(CoreTelephonyClient *)coreTelephonyClient interfaceCostExpensive:v5 error:&v13];
      v8 = v13;
      v9 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "LQM-WRM Error occurred trying to get interfaceCostExpensive %@", buf, 0xCu);
          }
        }

        LOBYTE(v7) = 1;
      }

      else if (v9)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v15) = v7;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "LQM-WRM interfaceCostExpensive returned %d", buf, 8u);
        }
      }
    }

    else
    {
      LOBYTE(v7) = 1;
    }
  }

  else
  {
    LOBYTE(v7) = 1;
  }

  return v7;
}

- (BOOL)isLowDataMode
{
  v16 = *MEMORY[0x1E69E9840];
  if (IMPCDoesInterfaceExist())
  {
    ctSubscriptionInfo = [(IMCTSubscriptionUtilities *)self ctSubscriptionInfo];
    __im_preferredDataSubscriptionContext = [ctSubscriptionInfo __im_preferredDataSubscriptionContext];

    if (__im_preferredDataSubscriptionContext)
    {
      v5 = [MEMORY[0x1E6965070] descriptorWithSubscriptionContext:__im_preferredDataSubscriptionContext];
      coreTelephonyClient = self->_coreTelephonyClient;
      v13 = 0;
      v7 = [(CoreTelephonyClient *)coreTelephonyClient lowDataMode:v5 error:&v13];
      v8 = v13;
      v9 = IMOSLoggingEnabled();
      if (v8)
      {
        if (v9)
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v15 = v8;
            _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "LQM-WRM Error occurred trying to get interfaceCostExpensive %@", buf, 0xCu);
          }
        }

        LOBYTE(v7) = 0;
      }

      else if (v9)
      {
        v11 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
        {
          *buf = 67109120;
          LODWORD(v15) = v7;
          _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "LQM-WRM interfaceCostExpensive returned %d", buf, 8u);
        }
      }
    }

    else
    {
      LOBYTE(v7) = 0;
    }
  }

  else
  {
    LOBYTE(v7) = 0;
  }

  return v7;
}

- (BOOL)isWiFiLowDataMode
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  v3 = WiFiManagerClientCreate();
  if (v3)
  {
    v4 = WiFiManagerClientCopyDevices();
    v5 = v4;
    if (v4 && [v4 count])
    {
      v6 = [v5 objectAtIndex:0];
      v7 = v6;
      if (v6)
      {
        CFRetain(v6);
      }
    }

    else
    {
      v7 = 0;
    }

    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A86690C0;
    aBlock[3] = &unk_1E78281E8;
    aBlock[4] = &v12;
    v8 = _Block_copy(aBlock);
    [(IMCTSubscriptionUtilities *)self _performCurrentNetworkBlock:v8 withDevice:v7 async:0];
    if (v7)
    {
      CFRelease(v7);
    }

    CFRelease(v3);
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

- (void)_performCurrentNetworkBlock:(id)block withDevice:(__WiFiDeviceClient *)device async:(BOOL)async
{
  blockCopy = block;
  v7 = blockCopy;
  if (blockCopy)
  {
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3221225472;
    aBlock[2] = sub_1A86691C8;
    aBlock[3] = &unk_1E7828210;
    v11 = blockCopy;
    v8 = _Block_copy(aBlock);
    if (device)
    {
      v9 = objc_autoreleasePoolPush();
      v8[2](v8, device);
      objc_autoreleasePoolPop(v9);
    }
  }
}

- (id)_iMessageService
{
  if (qword_1EB30A918 != -1)
  {
    sub_1A88C1CF0();
  }

  v3 = qword_1EB30A910;

  return v3;
}

- (id)_registeredSims
{
  v19 = *MEMORY[0x1E69E9840];
  _iMessageService = [(IMCTSubscriptionUtilities *)self _iMessageService];
  accounts = [_iMessageService accounts];

  v4 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(accounts, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = accounts;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        if ([v10 isActive])
        {
          matchingSim = [v10 matchingSim];
          if (matchingSim)
          {
            [v4 addObject:matchingSim];
          }
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v12 = [v4 copy];

  return v12;
}

- (NSArray)registeredSubscriptionSlotIDs
{
  _registeredSims = [(IMCTSubscriptionUtilities *)self _registeredSims];
  v3 = [_registeredSims __imArrayByApplyingBlock:&unk_1F1BA6108];

  return v3;
}

- (NSArray)registeredSIMIDs
{
  _registeredSims = [(IMCTSubscriptionUtilities *)self _registeredSims];
  v3 = [_registeredSims arrayByApplyingSelector:sel_SIMIdentifier];

  return v3;
}

- (NSArray)registeredPhoneNumbers
{
  v18 = *MEMORY[0x1E69E9840];
  array = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  registeredSubscriptionSlotIDs = [(IMCTSubscriptionUtilities *)self registeredSubscriptionSlotIDs];
  v5 = [registeredSubscriptionSlotIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(registeredSubscriptionSlotIDs);
        }

        intValue = [*(*(&v13 + 1) + 8 * i) intValue];
        ctSubscriptionInfo = [(IMCTSubscriptionUtilities *)self ctSubscriptionInfo];
        v11 = [ctSubscriptionInfo __im_phoneNumberForSlotID:intValue];

        if (array && v11)
        {
          CFArrayAppendValue(array, v11);
        }
      }

      v6 = [registeredSubscriptionSlotIDs countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v6);
  }

  return array;
}

- (NSSet)allowedChatBotExtensions
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_1A8601EC8;
  v10 = sub_1A860215C;
  v11 = 0;
  queue = self->_queue;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = sub_1A86697A0;
  v5[3] = &unk_1E7828258;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(queue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)fetchAllowedChatBotExtensionsIfNecessary
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A866985C;
  block[3] = &unk_1E7828050;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)setAllowedChatBotExtensions:(id)extensions
{
  extensionsCopy = extensions;
  queue = self->_queue;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = sub_1A86698FC;
  v7[3] = &unk_1E78260F0;
  v8 = extensionsCopy;
  selfCopy = self;
  v6 = extensionsCopy;
  dispatch_sync(queue, v7);
}

- (id)_cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:(id)context
{
  contextCopy = context;
  v4 = contextCopy;
  if (contextCopy)
  {
    labelID = [contextCopy labelID];
    if ([labelID length])
    {
      [v4 labelID];
    }

    else
    {
      [v4 phoneNumber];
    }
    v6 = ;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)__unlocked_createSettingsDictionaryForUniqueID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    __unlocked_cachedCarrierSettings = [(IMCTSubscriptionUtilities *)self __unlocked_cachedCarrierSettings];
    [__unlocked_cachedCarrierSettings setObject:MEMORY[0x1E695E0F8] forKey:dCopy];
  }

  else
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_4;
    }

    __unlocked_cachedCarrierSettings = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(__unlocked_cachedCarrierSettings, OS_LOG_TYPE_INFO))
    {
      *v7 = 0;
      _os_log_impl(&dword_1A85E5000, __unlocked_cachedCarrierSettings, OS_LOG_TYPE_INFO, "Could not create settings dictionary because uniqueID is nil", v7, 2u);
    }
  }

LABEL_4:
  return MEMORY[0x1E695E0F8];
}

- (void)__unlocked_resetCachedCarrierSettingsForUniqueID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    v5 = [(IMCTSubscriptionUtilities *)self __unlocked_createSettingsDictionaryForUniqueID:dCopy];
    allowedChatBotExtensions = self->_allowedChatBotExtensions;
    self->_allowedChatBotExtensions = 0;

    if (IMIsRunningInImagent())
    {
      [(IMCTSubscriptionUtilities *)self __unlocked_fetchAllowedChatBotExtensionsIfNecessary];
    }
  }

  else if (IMOSLoggingEnabled())
  {
    v7 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      *v8 = 0;
      _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "UniqueID is nil, can not reset cache.", v8, 2u);
    }
  }
}

- (id)__unlocked_getCarrierSettingsForUniqueID:(id)d
{
  dCopy = d;
  if ([dCopy length])
  {
    __unlocked_cachedCarrierSettings = [(IMCTSubscriptionUtilities *)self __unlocked_cachedCarrierSettings];
    v6 = [__unlocked_cachedCarrierSettings objectForKey:dCopy];

    if (!v6)
    {
      v6 = [(IMCTSubscriptionUtilities *)self __unlocked_createSettingsDictionaryForUniqueID:dCopy];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v9 = 0;
        _os_log_impl(&dword_1A85E5000, v7, OS_LOG_TYPE_INFO, "UniqueID is nil.", v9, 2u);
      }
    }

    v6 = 0;
  }

  return v6;
}

- (void)__unlocked_setCarrierSettings:(id)settings uniqueID:(id)d
{
  settingsCopy = settings;
  dCopy = d;
  if (settingsCopy && [dCopy length])
  {
    __unlocked_cachedCarrierSettings = [(IMCTSubscriptionUtilities *)self __unlocked_cachedCarrierSettings];
    [__unlocked_cachedCarrierSettings setObject:settingsCopy forKey:dCopy];
  }
}

- (id)stringForBundleType:(int64_t)type
{
  if ((type - 1) > 3)
  {
    return @"CTBundleTypeUnknown";
  }

  else
  {
    return off_1E7828310[type - 1];
  }
}

- (id)_cachedCarrierKeyForKeyHierarchy:(id)hierarchy bundleType:(int64_t)type
{
  v23 = *MEMORY[0x1E69E9840];
  hierarchyCopy = hierarchy;
  if ([hierarchyCopy count] && (objc_msgSend(hierarchyCopy, "lastObject"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "length"), v7, v8))
  {
    v9 = MEMORY[0x1E696AD60];
    v10 = [(IMCTSubscriptionUtilities *)self stringForBundleType:type];
    v11 = [v9 stringWithString:v10];

    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v12 = hierarchyCopy;
    v13 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
    if (v13)
    {
      v14 = v13;
      v15 = *v19;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v19 != v15)
          {
            objc_enumerationMutation(v12);
          }

          [v11 appendFormat:@"-%@", *(*(&v18 + 1) + 8 * i)];
        }

        v14 = [v12 countByEnumeratingWithState:&v18 objects:v22 count:16];
      }

      while (v14);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

- (id)_getCachedCarrierSettingValueForBundleKey:(id)key uniqueID:(id)d
{
  keyCopy = key;
  dCopy = d;
  if ([dCopy length] && objc_msgSend(keyCopy, "length"))
  {
    v8 = [(IMCTSubscriptionUtilities *)self __unlocked_getCarrierSettingsForUniqueID:dCopy];
    v9 = [v8 objectForKey:keyCopy];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (void)__unlocked_setCachedCarrierSettingValue:(id)value bundleKey:(id)key uniqueID:(id)d
{
  v20 = *MEMORY[0x1E69E9840];
  valueCopy = value;
  keyCopy = key;
  dCopy = d;
  if ([dCopy length])
  {
    v11 = [(IMCTSubscriptionUtilities *)self __unlocked_getCarrierSettingsForUniqueID:dCopy];
    v12 = [v11 mutableCopy];

    if (valueCopy)
    {
      if (v12)
      {
        if ([keyCopy length])
        {
          [v12 setObject:valueCopy forKey:keyCopy];
          [(IMCTSubscriptionUtilities *)self __unlocked_setCarrierSettings:v12 uniqueID:dCopy];
          if (IMOSLoggingEnabled())
          {
            v13 = OSLogHandleForIMFoundationCategory();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
            {
              v14 = 138412802;
              v15 = valueCopy;
              v16 = 2112;
              v17 = keyCopy;
              v18 = 2112;
              v19 = v12;
              _os_log_impl(&dword_1A85E5000, v13, OS_LOG_TYPE_INFO, "Request to set value %@ for key %@. Carrier settings dict is now %@", &v14, 0x20u);
            }
          }
        }
      }
    }
  }
}

- (id)__unlocked_getCachedSettingOrReadFromBundleForCarrierBundleKey:(id)key bundleType:(int64_t)type forContext:(id)context defaultValue:(id)value
{
  v36 = *MEMORY[0x1E69E9840];
  keyCopy = key;
  contextCopy = context;
  valueCopy = value;
  v13 = [(IMCTSubscriptionUtilities *)self _cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:contextCopy];
  v14 = [(IMCTSubscriptionUtilities *)self _cachedCarrierKeyForKeyHierarchy:keyCopy bundleType:type];
  v15 = [(IMCTSubscriptionUtilities *)self _getCachedCarrierSettingValueForBundleKey:v14 uniqueID:v13];
  if (!v15)
  {
    if (IMOSLoggingEnabled())
    {
      v16 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
      {
        *buf = 138412546;
        v29 = v14;
        v30 = 2112;
        v31 = v13;
        _os_log_impl(&dword_1A85E5000, v16, OS_LOG_TYPE_INFO, "There is no cached value for key %@, fetching from carrier bundle with uniqueID %@", buf, 0x16u);
      }
    }

    v26 = [[qword_1ED8CA330 alloc] initWithBundleType:type];
    v17 = valueCopy;
    coreTelephonyClient = self->_coreTelephonyClient;
    v27 = 0;
    v19 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValueWithDefault:contextCopy keyHierarchy:keyCopy bundleType:v26 error:&v27];
    v20 = v27;
    if (v19)
    {
      if (IMOSLoggingEnabled())
      {
        v21 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v29 = v19;
          v30 = 2112;
          v31 = keyCopy;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Retrieved carrier bundle value %@ for key %@ for uniqueID %@", buf, 0x20u);
        }
      }

      v22 = v19;
    }

    else
    {
      v22 = v17;
      if (IMOSLoggingEnabled())
      {
        v23 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
        {
          *buf = 138413058;
          v29 = 0;
          v30 = 2112;
          v31 = v17;
          v32 = 2112;
          v33 = keyCopy;
          v34 = 2112;
          v35 = v13;
          _os_log_impl(&dword_1A85E5000, v23, OS_LOG_TYPE_INFO, "Retrieved nil carrier bundle value %@, defaulting to value %@ for key %@ for uniqueID %@", buf, 0x2Au);
        }

        v22 = v17;
      }
    }

    if (v20)
    {
      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          *buf = 138412802;
          v29 = v20;
          v30 = 2112;
          v31 = keyCopy;
          v32 = 2112;
          v33 = v13;
          _os_log_impl(&dword_1A85E5000, v24, OS_LOG_TYPE_INFO, "Got error %@ fetching key %@ for uniqueID %@", buf, 0x20u);
        }
      }
    }

    else
    {
      [(IMCTSubscriptionUtilities *)self __unlocked_setCachedCarrierSettingValue:v22 bundleKey:v14 uniqueID:v13];
      v17 = v22;
    }

    v15 = v17;
  }

  return v15;
}

- (id)copyBundleValueForSubscriptionContext:(id)context keyHierarchy:(id)hierarchy bundleType:(int64_t)type defaultValue:(id)value valueIfError:(id)error
{
  v48 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  hierarchyCopy = hierarchy;
  valueCopy = value;
  errorCopy = error;
  v36 = 0;
  v37 = &v36;
  v38 = 0x3032000000;
  v39 = sub_1A8601EC8;
  v40 = sub_1A860215C;
  v16 = valueCopy;
  v41 = v16;
  queue = self->_queue;
  v26 = MEMORY[0x1E69E9820];
  v27 = 3221225472;
  v28 = sub_1A866AA70;
  v29 = &unk_1E7828280;
  selfCopy = self;
  v18 = contextCopy;
  v31 = v18;
  v19 = hierarchyCopy;
  v32 = v19;
  v34 = &v36;
  typeCopy = type;
  v20 = v16;
  v33 = v20;
  dispatch_sync(queue, &v26);
  if (IMOSLoggingEnabled())
  {
    v21 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_INFO))
    {
      v22 = v37[5];
      __im_description = [v18 __im_description];
      *buf = 138412802;
      v43 = v22;
      v44 = 2112;
      v45 = v19;
      v46 = 2112;
      v47 = __im_description;
      _os_log_impl(&dword_1A85E5000, v21, OS_LOG_TYPE_INFO, "Returning carrier bundle value %@ for key %@ and context %@", buf, 0x20u);
    }
  }

  v24 = v37[5];

  _Block_object_dispose(&v36, 8);
  return v24;
}

- (BOOL)simInHomeCountryWithSubscriptionContext:(id)context
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v9 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient copyRegistrationDisplayStatus:context error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = IMLogHandleForCategory("IMCTSusbcriptionUtilities");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1D04();
    }

    isInHomeCountry = 0;
  }

  else
  {
    isInHomeCountry = [v4 isInHomeCountry];
  }

  return isInHomeCountry;
}

- (BOOL)wifiCallingEnabledForSubscriptionContext:(id)context
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v9 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getCallCapabilities:context error:&v9];
  v5 = v9;
  if (v5)
  {
    v6 = IMLogHandleForCategory("IMCTSubscriptionUtilities");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1D6C();
    }

    isWifiCallingAvailable = 0;
  }

  else
  {
    isWifiCallingAvailable = [v4 isWifiCallingAvailable];
  }

  return isWifiCallingAvailable;
}

- (id)copyIsoCountryCodeForSubscriptionContext:(id)context
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v14 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient copyMobileSubscriberCountryCode:context error:&v14];
  v6 = v14;
  if (v6)
  {
    v7 = v6;
    v8 = IMLogHandleForCategory("IMCTSubscriptionUtilities");
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1DD4();
    }
  }

  else
  {
    v9 = self->_coreTelephonyClient;
    v13 = 0;
    v8 = [(CoreTelephonyClient *)v9 copyMobileSubscriberIsoCountryCode:v5 error:&v13];
    v7 = v13;
    if (v7)
    {
      v10 = IMLogHandleForCategory("IMCTSubscriptionUtilities");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C1E3C();
      }
    }

    else
    {
      if ([v8 length])
      {
        v8 = v8;
        v11 = v8;
        goto LABEL_9;
      }

      v10 = IMLogHandleForCategory("IMCTSubscriptionUtilities");
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1A88C1EA4(v10);
      }
    }
  }

  v11 = 0;
LABEL_9:

  return v11;
}

- (id)__unlocked_ctSubscriptionInfoWithError:(id *)error
{
  v21 = *MEMORY[0x1E69E9840];
  ctSubscriptionInfo = self->_ctSubscriptionInfo;
  if (!ctSubscriptionInfo)
  {
    if (self->_fetchedSubscriptionInfoWithoutError)
    {
      ctSubscriptionInfo = 0;
    }

    else
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v16 = 0;
      v7 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v16];
      v8 = v16;
      if (v8 || !v7)
      {
        if (IMOSLoggingEnabled())
        {
          v11 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
          {
            code = [v8 code];
            *buf = 134218242;
            v18 = code;
            v19 = 2112;
            v20 = v7;
            _os_log_impl(&dword_1A85E5000, v11, OS_LOG_TYPE_INFO, "Error while getting the subscription info: %ld with info: %@", buf, 0x16u);
          }
        }

        if (error)
        {
          v13 = v8;
          v9 = 0;
          *error = v8;
        }

        else
        {
          v9 = 0;
        }
      }

      else
      {
        v9 = [[IMCTXPCServiceSubscriptionInfo alloc] initWithSubscriptionInfo:v7];
        if (IMOSLoggingEnabled())
        {
          v10 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
          {
            *buf = 138412290;
            v18 = v9;
            _os_log_impl(&dword_1A85E5000, v10, OS_LOG_TYPE_INFO, "Retrieved new CT subscription info %@", buf, 0xCu);
          }
        }
      }

      v14 = self->_ctSubscriptionInfo;
      self->_ctSubscriptionInfo = v9;

      self->_fetchedSubscriptionInfoWithoutError = v8 == 0;
      ctSubscriptionInfo = self->_ctSubscriptionInfo;
    }
  }

  return ctSubscriptionInfo;
}

- (id)ctSubscriptionInfoWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8601EC8;
  v19 = sub_1A860215C;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8601EC8;
  v13 = sub_1A860215C;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A866B2D4;
  block[3] = &unk_1E78282A8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if (error)
  {
    v5 = v10[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (id)__unlocked_ctActiveContextsWithError:(id *)error
{
  v23 = *MEMORY[0x1E69E9840];
  ctActiveContexts = self->_ctActiveContexts;
  if (!ctActiveContexts)
  {
    if (self->_fetchedActiveContextsWithoutError)
    {
      ctActiveContexts = 0;
    }

    else
    {
      coreTelephonyClient = self->_coreTelephonyClient;
      v18 = 0;
      v7 = [(CoreTelephonyClient *)coreTelephonyClient getActiveContexts:&v18];
      v8 = v18;
      if (v8)
      {
        v9 = 1;
      }

      else
      {
        v9 = v7 == 0;
      }

      v10 = v9;
      v11 = IMOSLoggingEnabled();
      if (v10)
      {
        if (v11)
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            code = [v8 code];
            *buf = 134218242;
            v20 = code;
            v21 = 2112;
            v22 = v7;
            _os_log_impl(&dword_1A85E5000, v12, OS_LOG_TYPE_INFO, "Error while getting the active contexts: %ld with: %@", buf, 0x16u);
          }
        }

        if (error)
        {
          v14 = v8;
          v7 = 0;
          *error = v8;
        }

        else
        {
          v7 = 0;
        }
      }

      else if (v11)
      {
        v15 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v15, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v20 = v7;
          _os_log_impl(&dword_1A85E5000, v15, OS_LOG_TYPE_INFO, "Retrieved new CT active contexts %@", buf, 0xCu);
        }
      }

      v16 = self->_ctActiveContexts;
      self->_ctActiveContexts = v7;

      self->_fetchedActiveContextsWithoutError = v8 == 0;
      ctActiveContexts = self->_ctActiveContexts;
    }
  }

  return ctActiveContexts;
}

- (id)ctActiveContextsWithError:(id *)error
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = sub_1A8601EC8;
  v19 = sub_1A860215C;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = sub_1A8601EC8;
  v13 = sub_1A860215C;
  v14 = 0;
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A866B6AC;
  block[3] = &unk_1E78282A8;
  block[4] = self;
  block[5] = &v15;
  block[6] = &v9;
  dispatch_sync(queue, block);
  if (error)
  {
    v5 = v10[5];
    if (v5)
    {
      *error = v5;
    }
  }

  v6 = v16[5];
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);

  return v6;
}

- (NSString)ctPhoneNumber
{
  ctSubscriptionInfo = [(IMCTSubscriptionUtilities *)self ctSubscriptionInfo];
  preferredOrDefaultSubscriptionContext = [ctSubscriptionInfo preferredOrDefaultSubscriptionContext];
  phoneNumber = [preferredOrDefaultSubscriptionContext phoneNumber];

  return phoneNumber;
}

- (void)__unlocked_fetchAllowedChatBotExtensionsIfNecessary
{
  v32 = *MEMORY[0x1E69E9840];
  if (!self->_allowedChatBotExtensions)
  {
    selfCopy = self;
    v3 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    v4 = [(IMCTSubscriptionUtilities *)selfCopy __unlocked_ctSubscriptionInfoWithError:0];
    subscriptions = [v4 subscriptions];

    v6 = [subscriptions countByEnumeratingWithState:&v26 objects:v31 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v27;
      v20 = subscriptions;
      v21 = selfCopy;
      v19 = *v27;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v27 != v8)
          {
            objc_enumerationMutation(subscriptions);
          }

          v10 = *(*(&v26 + 1) + 8 * i);
          v11 = [(IMCTSubscriptionUtilities *)selfCopy _cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:v10];
          v12 = v11;
          if (v10)
          {
            if ([v11 length])
            {
              v10 = [(IMCTSubscriptionUtilities *)selfCopy __unlocked_getCachedSettingOrReadFromBundleForCarrierBundleKey:&unk_1F1BFAD00 bundleType:1 forContext:v10 defaultValue:MEMORY[0x1E695E0F0]];
              if (v10)
              {
                objc_opt_class();
                if (objc_opt_isKindOfClass())
                {
                  v24 = 0u;
                  v25 = 0u;
                  v22 = 0u;
                  v23 = 0u;
                  v10 = v10;
                  v13 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
                  if (v13)
                  {
                    v14 = v13;
                    v15 = *v23;
                    do
                    {
                      for (j = 0; j != v14; ++j)
                      {
                        if (*v23 != v15)
                        {
                          objc_enumerationMutation(v10);
                        }

                        v17 = *(*(&v22 + 1) + 8 * j);
                        objc_opt_class();
                        if (objc_opt_isKindOfClass())
                        {
                          [(NSSet *)v3 addObject:v17];
                        }
                      }

                      v14 = [v10 countByEnumeratingWithState:&v22 objects:v30 count:16];
                    }

                    while (v14);
                  }

                  subscriptions = v20;
                  selfCopy = v21;
                  v8 = v19;
                }
              }
            }

            else
            {
              v10 = 0;
            }
          }
        }

        v7 = [subscriptions countByEnumeratingWithState:&v26 objects:v31 count:16];
      }

      while (v7);
    }

    allowedChatBotExtensions = selfCopy->_allowedChatBotExtensions;
    selfCopy->_allowedChatBotExtensions = v3;
  }
}

- (void)carrierBundleChange:(id)change
{
  v13 = *MEMORY[0x1E69E9840];
  changeCopy = change;
  if (IMOSLoggingEnabled())
  {
    v5 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v12 = changeCopy;
      _os_log_impl(&dword_1A85E5000, v5, OS_LOG_TYPE_INFO, " Carrier bundle had changes for context: %@. Calling reset to the cached settings", buf, 0xCu);
    }
  }

  v6 = [(IMCTSubscriptionUtilities *)self _cachedCarrierSettingsUniqueIDKeyForSubscriptionContext:changeCopy];
  queue = self->_queue;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = sub_1A866BB68;
  v9[3] = &unk_1E78260F0;
  v9[4] = self;
  v10 = v6;
  v8 = v6;
  dispatch_sync(queue, v9);
}

- (void)resetCacheSubscriptionInfoAndPostNotification
{
  [(IMCTSubscriptionUtilities *)self resetCacheSubscriptionInfo];
  if (IMOSLoggingEnabled())
  {
    v2 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v2, OS_LOG_TYPE_INFO, "Subscription info has been reset to nil. Raising notification that SIM subscriptions have changed.", v4, 2u);
    }
  }

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotification(DarwinNotifyCenter, @"__kIMSIMSubscriptionsChangedNotification", 0, 0, 1u);
}

- (void)resetCacheSubscriptionInfo
{
  queue = self->_queue;
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = sub_1A866BC9C;
  block[3] = &unk_1E7828050;
  block[4] = self;
  dispatch_sync(queue, block);
}

- (void)subscriptionInfoDidChange
{
  [MEMORY[0x1E69E58C0] cancelPreviousPerformRequestsWithTarget:self selector:sel_resetCacheSubscriptionInfo object:0];
  [(IMCTSubscriptionUtilities *)self performSelector:sel_resetCacheSubscriptionInfoAndPostNotification withObject:0 afterDelay:1.0];
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Subscriptions have changed, resetting subscription info to nil", v4, 2u);
    }
  }
}

- (void)activeSubscriptionsDidChange
{
  if (IMOSLoggingEnabled())
  {
    v3 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      *v4 = 0;
      _os_log_impl(&dword_1A85E5000, v3, OS_LOG_TYPE_INFO, "Active subscriptions have changed, resetting subscription info to nil", v4, 2u);
    }
  }

  [(IMCTSubscriptionUtilities *)self subscriptionInfoDidChange];
}

- (id)rcsConfigurationForSubscriptionContext:(id)context
{
  contextCopy = context;
  v9 = 0;
  v5 = [(IMCTSubscriptionUtilities *)self rcsConfigurationForSubscriptionContext:contextCopy error:&v9];
  v6 = v9;
  if (v6)
  {
    v7 = IMLogHandleForCategory("IMCTSubscriptionUtilities");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      sub_1A88C1EE8();
    }
  }

  return v5;
}

- (id)newSubscriptionContextWithSlot:(int64_t)slot
{
  v4 = [qword_1ED8CA328 alloc];

  return [v4 initWithSlot:slot];
}

- (id)newSubscriptionContextWithPhoneNumber:(id)number labelID:(id)d isDefaultVoice:(id)voice isDefaultData:(id)data slot:(int64_t)slot
{
  v11 = qword_1ED8CA328;
  dataCopy = data;
  voiceCopy = voice;
  dCopy = d;
  numberCopy = number;
  v16 = [[v11 alloc] initWithSlot:slot];
  [v16 setPhoneNumber:numberCopy];

  [v16 setLabelID:dCopy];
  [v16 setUserDataPreferred:dataCopy];

  [v16 setUserDefaultVoice:voiceCopy];
  return v16;
}

- (void)generateTokenForUPIWithHostBundleID:(id)d subscriptionContext:(id)context
{
  v14 = *MEMORY[0x1E69E9840];
  dCopy = d;
  contextCopy = context;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v10 = 138412546;
      v11 = contextCopy;
      v12 = 2112;
      v13 = dCopy;
      _os_log_impl(&dword_1A85E5000, v8, OS_LOG_TYPE_INFO, "UPISupport calling generate token for context: %@ bundleID: %@", &v10, 0x16u);
    }
  }

  coreTelephonyClient = [(IMCTSubscriptionUtilities *)self coreTelephonyClient];
  [coreTelephonyClient generateTokenForContext:contextCopy bundleID:dCopy completion:&unk_1F1BA6128];
}

@end