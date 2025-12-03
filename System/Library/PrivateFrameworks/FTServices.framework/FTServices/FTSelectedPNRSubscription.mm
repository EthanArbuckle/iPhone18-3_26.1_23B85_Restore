@interface FTSelectedPNRSubscription
+ (BOOL)isPhoneNumber:(id)number equivalentToExistingPhoneNumber:(id)phoneNumber;
+ (FTSelectedPNRSubscription)sharedInstance;
- (BOOL)_doesSubscriptionInfoContainMultipleLabels:(id)labels;
- (BOOL)_doesSubscriptionInfoContainMultipleUniqueLabels:(id)labels;
- (BOOL)_isIdentityFallbackProhibitedForDeviceBasedOnCapability:(int64_t)capability subscriptionInfo:(id)info;
- (BOOL)_isInDualPhoneIdentityModeBasedOnCapability:(int64_t)capability;
- (BOOL)_legacy_isPhoneNumberEmergencyNumber:(id)number;
- (BOOL)isDeviceInDualPhoneIdentityMode;
- (BOOL)isPhoneNumberEmergencyNumber:(id)number;
- (BOOL)isSelectedPhoneNumberRegistrationSubscriptionContext:(id)context;
- (FTSelectedPNRSubscription)init;
- (id)_firstPresentSubscriptionFromAvailableSubscriptions:(id)subscriptions;
- (id)_reevaluateCachedActiveSubscriptionWithError:(id *)error;
- (id)_reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:(id)subscription activeContexts:(id)contexts fallbackProhibited:(BOOL)prohibited persistUpdate:(BOOL)update error:(id *)error;
- (id)_reevaluateCachedSelectedPhoneNumberWithContext:(id)context error:(id *)error;
- (id)_reevaluateCachedSubscriptionWithError:(id *)error;
- (id)_subscriptionFromAvailableSubscriptions:(id)subscriptions matchingSelectedLabel:(id)label;
- (id)selectedPhoneNumberRegistrationSubscriptionWithError:(id *)error;
- (id)selectedRegistrationPhoneNumberWithError:(id *)error;
- (id)setSelectedPhoneNumberRegistrationSubscriptionNumber:(id)number;
- (void)_distributed_invalidateCache;
- (void)_protected_invalidateCache;
- (void)_reevaluateDualIdentityModeWithSubscriptionInfo:(id)info;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)dualSimCapabilityDidChange;
- (void)phoneNumberAvailable:(id)available;
- (void)phoneNumberChanged:(id)changed;
- (void)subscriptionInfoDidChange;
@end

@implementation FTSelectedPNRSubscription

+ (FTSelectedPNRSubscription)sharedInstance
{
  if (qword_1ED768790 != -1)
  {
    sub_1959267E4();
  }

  v3 = qword_1ED7686F0;

  return v3;
}

- (FTSelectedPNRSubscription)init
{
  v11.receiver = self;
  v11.super_class = FTSelectedPNRSubscription;
  v2 = [(FTSelectedPNRSubscription *)&v11 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E696AE68]);
    lock = v2->_lock;
    v2->_lock = v3;

    v5 = objc_alloc(MEMORY[0x1E69650A0]);
    v6 = im_primary_queue();
    v7 = [v5 initWithQueue:v6];
    coreTelephonyClient = v2->_coreTelephonyClient;
    v2->_coreTelephonyClient = v7;

    [(CoreTelephonyClient *)v2->_coreTelephonyClient setDelegate:v2];
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterAddObserver(DarwinNotifyCenter, v2, sub_195939E80, @"FTSelectedPNRSubscriptionChangedDistributedNotification", 0, CFNotificationSuspensionBehaviorCoalesce);
  }

  return v2;
}

+ (BOOL)isPhoneNumber:(id)number equivalentToExistingPhoneNumber:(id)phoneNumber
{
  v24 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  phoneNumberCopy = phoneNumber;
  if ([numberCopy length] || objc_msgSend(phoneNumberCopy, "length"))
  {
    if ([numberCopy length] && objc_msgSend(phoneNumberCopy, "length"))
    {
      v7 = [phoneNumberCopy _IDFromFZIDType:0];
      _stripFZIDPrefix = [v7 _stripFZIDPrefix];

      v9 = [numberCopy _IDFromFZIDType:0];
      _stripFZIDPrefix2 = [v9 _stripFZIDPrefix];

      if ([_stripFZIDPrefix hasPrefix:@"+"])
      {
        v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
        v12 = [_stripFZIDPrefix stringByRemovingCharactersFromSet:v11];

        _stripFZIDPrefix = v12;
      }

      v13 = (_FTAreIDsEquivalent() & 1) != 0 || (_FTAreIDsEquivalent() & 1) != 0 || [_stripFZIDPrefix rangeOfString:_stripFZIDPrefix2] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(_stripFZIDPrefix2, "rangeOfString:", _stripFZIDPrefix) != 0x7FFFFFFFFFFFFFFFLL;
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        v18 = 138412802;
        v19 = numberCopy;
        v20 = 2112;
        if (v13)
        {
          v15 = @"YES";
        }

        v21 = phoneNumberCopy;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined whether phone numbers are equivalent { phoneNumber: %@, existingPhoneNumber: %@, equivalent: %@ }", &v18, 0x20u);
      }
    }

    else
    {
      LOBYTE(v13) = 0;
    }
  }

  else
  {
    LOBYTE(v13) = 1;
  }

  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveObserver(DarwinNotifyCenter, self, @"FTSelectedPNRSubscriptionChangedDistributedNotification", 0);
  v4.receiver = self;
  v4.super_class = FTSelectedPNRSubscription;
  [(FTSelectedPNRSubscription *)&v4 dealloc];
}

- (void)subscriptionInfoDidChange
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Subscription info did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)phoneNumberChanged:(id)changed
{
  v9 = *MEMORY[0x1E69E9840];
  changedCopy = changed;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = changedCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Phone number changed -- clearing cached selected phone number registration subscription { context: %@ }", &v7, 0xCu);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)phoneNumberAvailable:(id)available
{
  v9 = *MEMORY[0x1E69E9840];
  availableCopy = available;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = availableCopy;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Phone number became available -- clearing cached selected phone number registration subscription { context: %@ }", &v7, 0xCu);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activeSubscriptionsDidChange
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Active subscriptions did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)dualSimCapabilityDidChange
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Dual SIM capability did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)_distributed_invalidateCache
{
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Posting distributed notification to invalidate selected phone number subscription caches in other processes", v4, 2u);
  }

  byte_1EAED77F0 = 1;
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterPostNotificationWithOptions(DarwinNotifyCenter, @"FTSelectedPNRSubscriptionChangedDistributedNotification", 0, 0, 0);
  im_dispatch_after_primary_queue();
}

- (void)_protected_invalidateCache
{
  [(NSRecursiveLock *)self->_lock lock];
  cache = self->_cache;
  self->_cache = 0;

  self->_isCacheValid = 0;
  lock = self->_lock;

  [(NSRecursiveLock *)lock unlock];
}

- (id)selectedPhoneNumberRegistrationSubscriptionWithError:(id *)error
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  selectedContext = [v3 selectedContext];

  return selectedContext;
}

- (BOOL)isSelectedPhoneNumberRegistrationSubscriptionContext:(id)context
{
  v28 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  v5 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  selectedContext = [v5 selectedContext];
  v7 = +[FTUserConfiguration sharedInstance];
  selectedPhoneNumberRegistrationSubscriptionLabels = [v7 selectedPhoneNumberRegistrationSubscriptionLabels];
  firstObject = [selectedPhoneNumberRegistrationSubscriptionLabels firstObject];

  slotID = [contextCopy slotID];
  slotID2 = [selectedContext slotID];
  labelID = [contextCopy labelID];
  v13 = 0;
  if (labelID && firstObject)
  {
    labelID2 = [contextCopy labelID];
    v13 = [labelID2 isEqualToString:firstObject];
  }

  v15 = (slotID == slotID2) | v13;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
  {
    v19 = @"NO";
    v20 = 138413058;
    v21 = contextCopy;
    if (v15)
    {
      v19 = @"YES";
    }

    v22 = 2112;
    v23 = selectedContext;
    v24 = 2112;
    v25 = firstObject;
    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_195925000, registration, OS_LOG_TYPE_DEBUG, "Determined if provided subscription context is selected IDS phone number subscription context { context: %@, selectedContext: %@, persistedLabel: %@, isMatching: %@ }", &v20, 0x2Au);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (id)selectedRegistrationPhoneNumberWithError:(id *)error
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  phoneNumber = [v3 phoneNumber];

  return phoneNumber;
}

- (id)setSelectedPhoneNumberRegistrationSubscriptionNumber:(id)number
{
  v46 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  coreTelephonyClient = self->_coreTelephonyClient;
  v35 = 0;
  v6 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v35];
  v7 = v35;
  subscriptions = [v6 subscriptions];
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Loaded subscription info { info: %@, error: %@ }", buf, 0x16u);
  }

  if ([subscriptions count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = subscriptions;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v11)
    {
      v30 = subscriptions;
      v12 = *v32;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if (numberCopy)
          {
            v14 = *(*(&v31 + 1) + 8 * i);
            slotID = [v14 slotID];
            v16 = slotID == 1 ? &unk_1F09D0728 : &unk_1F09D0710;
            v17 = slotID == 2 ? &unk_1F09D0740 : v16;
            if ([v17 isEqualToNumber:numberCopy])
            {
              v11 = v14;
              goto LABEL_25;
            }
          }
        }

        v11 = [v10 countByEnumeratingWithState:&v31 objects:v45 count:16];
        if (v11)
        {
          continue;
        }

        break;
      }

LABEL_25:
      subscriptions = v30;
    }

    goto LABEL_27;
  }

  registration2 = [MEMORY[0x1E69A6138] registration];
  v19 = registration2;
  if (!v7)
  {
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_195962FCC();
    }

    v11 = 0;
LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v38 = v6;
    v39 = 2112;
    v40 = subscriptions;
    v41 = 2112;
    v42 = v7;
    _os_log_error_impl(&dword_195925000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch subscriptions { subscriptionInfo: %@, subscriptions: %@, error: %@ }", buf, 0x20u);
  }

  v20 = v7;
  v11 = 0;
LABEL_28:
  registration3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
  {
    labelID = [v11 labelID];
    *buf = 138413058;
    v38 = numberCopy;
    v39 = 2112;
    v40 = labelID;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = subscriptions;
    _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Selected new phone number registration subscription context { subscriptionNumber: %@, labelID: %@, selectedSubscription: %@, availableSubscriptions: %@ }", buf, 0x2Au);
  }

  v23 = +[FTUserConfiguration sharedInstance];
  labelID2 = [v11 labelID];
  v36 = labelID2;
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v36 count:1];
  [v23 setSelectedPhoneNumberRegistrationSubscriptionLabels:v25];

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
  [(FTSelectedPNRSubscription *)self _distributed_invalidateCache];
  v26 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v27 = v20;

  v28 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)isDeviceInDualPhoneIdentityMode
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v4 = -[FTSelectedPNRSubscription _isInDualPhoneIdentityModeBasedOnCapability:](self, "_isInDualPhoneIdentityModeBasedOnCapability:", [v3 dualSIMCapability]);
  subscriptionInfo = [v3 subscriptionInfo];
  v6 = [(FTSelectedPNRSubscription *)self _doesSubscriptionInfoContainMultipleLabels:subscriptionInfo];

  if (v4 || (v7 = 0, v6))
  {
    activeSubscriptionInfo = [v3 activeSubscriptionInfo];
    subscriptions = [activeSubscriptionInfo subscriptions];
    if ([subscriptions count] == 1)
    {
      activeSubscriptionInfo2 = [v3 activeSubscriptionInfo];
      subscriptions2 = [activeSubscriptionInfo2 subscriptions];
      firstObject = [subscriptions2 firstObject];
      labelID = [firstObject labelID];
      if (labelID)
      {
        selectedContext = [v3 selectedContext];
        labelID2 = [selectedContext labelID];
        if (labelID2)
        {
          v24 = labelID2;
          activeSubscriptionInfo3 = [v3 activeSubscriptionInfo];
          subscriptions3 = [activeSubscriptionInfo3 subscriptions];
          firstObject2 = [subscriptions3 firstObject];
          [firstObject2 labelID];
          v17 = v26 = activeSubscriptionInfo2;
          [v3 selectedContext];
          v18 = v25 = selectedContext;
          labelID3 = [v18 labelID];
          v21 = [v17 isEqualToString:labelID3];

          selectedContext = v25;
          activeSubscriptionInfo2 = v26;

          labelID2 = v24;
          v7 = v21 ^ 1;
        }

        else
        {
          v7 = 1;
        }
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 1;
    }
  }

  return v7 & 1;
}

- (BOOL)_isInDualPhoneIdentityModeBasedOnCapability:(int64_t)capability
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = capability == 2 || capability == 4;
  v6 = +[FTUserConfiguration sharedInstance];
  isDeviceInDualPhoneIdentityMode = [v6 isDeviceInDualPhoneIdentityMode];

  v8 = v5 & isDeviceInDualPhoneIdentityMode;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    v10 = @"NO";
    if (v8)
    {
      v11 = @"YES";
    }

    else
    {
      v11 = @"NO";
    }

    v14 = 138412802;
    v15 = v11;
    if (isDeviceInDualPhoneIdentityMode)
    {
      v10 = @"YES";
    }

    v16 = 2048;
    capabilityCopy = capability;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined if device is in dual phone identity mode { isDualIdentity: %@, dualSIMCapability: %ld, isDeviceInDualPhoneIdentityMode: %@ }", &v14, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isIdentityFallbackProhibitedForDeviceBasedOnCapability:(int64_t)capability subscriptionInfo:(id)info
{
  capabilityCopy = capability;
  v6 = [FTUserConfiguration sharedInstance:capability];
  selectedPhoneNumberRegistrationSubscriptionLabels = [v6 selectedPhoneNumberRegistrationSubscriptionLabels];
  firstObject = [selectedPhoneNumberRegistrationSubscriptionLabels firstObject];

  LOBYTE(capabilityCopy) = [(FTSelectedPNRSubscription *)self _isInDualPhoneIdentityModeBasedOnCapability:capabilityCopy];
  return (firstObject != 0) & capabilityCopy;
}

- (id)_reevaluateCachedSubscriptionWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v12];
  v6 = v12;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Loaded subscription info { info: %@, error: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195963050();
    }
  }

  if (error)
  {
    v9 = v6;
    *error = v6;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_reevaluateCachedActiveSubscriptionWithError:(id *)error
{
  v17 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient getActiveContexts:&v12];
  v6 = v12;
  registration = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Loaded active contexts { contexts: %@, error: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_1959630C0();
    }
  }

  if (error)
  {
    v9 = v6;
    *error = v6;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_doesSubscriptionInfoContainMultipleLabels:(id)labels
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  subscriptions = [labels subscriptions];
  v4 = [subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = 0;
    v6 = *v13;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(subscriptions);
        }

        labelID = [*(*(&v12 + 1) + 8 * i) labelID];
        v9 = [labelID length];

        if (v9)
        {
          ++v5;
        }
      }

      v4 = [subscriptions countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
    LOBYTE(v4) = v5 > 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_doesSubscriptionInfoContainMultipleUniqueLabels:(id)labels
{
  v22 = *MEMORY[0x1E69E9840];
  labelsCopy = labels;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  subscriptions = [labelsCopy subscriptions];
  v6 = [subscriptions countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v18;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(subscriptions);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        labelID = [v10 labelID];
        v12 = [labelID length];

        if (v12)
        {
          labelID2 = [v10 labelID];
          [v4 addObject:labelID2];
        }
      }

      v7 = [subscriptions countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 count] > 1;
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_reevaluateDualIdentityModeWithSubscriptionInfo:(id)info
{
  v12 = *MEMORY[0x1E69E9840];
  infoCopy = info;
  v5 = +[FTUserConfiguration sharedInstance];
  isDeviceInDualPhoneIdentityMode = [v5 isDeviceInDualPhoneIdentityMode];

  if ((isDeviceInDualPhoneIdentityMode & 1) == 0 && [(FTSelectedPNRSubscription *)self _doesSubscriptionInfoContainMultipleUniqueLabels:infoCopy])
  {
    registration = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = infoCopy;
      _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined that device has entered dual identity mode { subscriptionInfo: %@ }", &v10, 0xCu);
    }

    v8 = +[FTUserConfiguration sharedInstance];
    [v8 setIsDeviceInDualPhoneIdentityMode:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_subscriptionFromAvailableSubscriptions:(id)subscriptions matchingSelectedLabel:(id)label
{
  v21 = *MEMORY[0x1E69E9840];
  subscriptionsCopy = subscriptions;
  labelCopy = label;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = subscriptionsCopy;
  v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v8)
  {
    v9 = *v17;
    while (2)
    {
      for (i = 0; i != v8; i = i + 1)
      {
        if (*v17 != v9)
        {
          objc_enumerationMutation(v7);
        }

        v11 = *(*(&v16 + 1) + 8 * i);
        labelID = [v11 labelID];
        v13 = labelID;
        if (labelCopy && labelID && [labelID isEqualToString:labelCopy])
        {
          v8 = v11;

          goto LABEL_13;
        }
      }

      v8 = [v7 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v14 = *MEMORY[0x1E69E9840];

  return v8;
}

- (id)_firstPresentSubscriptionFromAvailableSubscriptions:(id)subscriptions
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  subscriptionsCopy = subscriptions;
  v4 = [subscriptionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(subscriptionsCopy);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        labelID = [v7 labelID];
        if ([labelID length])
        {
          v4 = v7;

          goto LABEL_11;
        }
      }

      v4 = [subscriptionsCopy countByEnumeratingWithState:&v11 objects:v15 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v9 = *MEMORY[0x1E69E9840];

  return v4;
}

- (id)_reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:(id)subscription activeContexts:(id)contexts fallbackProhibited:(BOOL)prohibited persistUpdate:(BOOL)update error:(id *)error
{
  updateCopy = update;
  prohibitedCopy = prohibited;
  v40[1] = *MEMORY[0x1E69E9840];
  subscriptionCopy = subscription;
  contextsCopy = contexts;
  if (self->_coreTelephonyClient)
  {
    v13 = +[FTUserConfiguration sharedInstance];
    selectedPhoneNumberRegistrationSubscriptionLabels = [v13 selectedPhoneNumberRegistrationSubscriptionLabels];
    firstObject = [selectedPhoneNumberRegistrationSubscriptionLabels firstObject];

    v16 = +[FTUserConfiguration sharedInstance];
    selectedPhoneNumberRegistrationSubscriptionNumber = [v16 selectedPhoneNumberRegistrationSubscriptionNumber];

    subscriptions = [subscriptionCopy subscriptions];
    if (![subscriptions count])
    {
      v21 = 0;
LABEL_24:
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v21;
        v37 = 2112;
        v38 = firstObject;
        _os_log_impl(&dword_195925000, registration, OS_LOG_TYPE_DEFAULT, "Determined selected phone number registration subscription context { selectedSubscription: %@, persistedLabel: %@ }", buf, 0x16u);
      }

      registration2 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = subscriptions;
        _os_log_impl(&dword_195925000, registration2, OS_LOG_TYPE_DEFAULT, "Available subscriptions { available: %@ }", buf, 0xCu);
      }

      registration3 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
      {
        subscriptions2 = [contextsCopy subscriptions];
        *buf = 138412290;
        v36 = subscriptions2;
        _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "Active subscriptions { active: %@ }", buf, 0xCu);
      }

      goto LABEL_31;
    }

    firstObject2 = [(FTSelectedPNRSubscription *)self _subscriptionFromAvailableSubscriptions:subscriptions matchingSelectedLabel:firstObject];
    v19 = firstObject2;
    if (firstObject2)
    {
      v20 = 0;
    }

    else if ([subscriptions count] < 2 || (-[FTSelectedPNRSubscription _firstPresentSubscriptionFromAvailableSubscriptions:](self, "_firstPresentSubscriptionFromAvailableSubscriptions:", subscriptions), firstObject2 = objc_claimAutoreleasedReturnValue(), (v20 = firstObject2) == 0))
    {
      firstObject2 = [subscriptions firstObject];
      v20 = firstObject2;
    }

    if (prohibitedCopy)
    {
      v22 = v19;
    }

    else
    {
      v22 = firstObject2;
    }

    v21 = v22;
    labelID = [v21 labelID];
    v24 = labelID;
    if (updateCopy && labelID)
    {
      v25 = +[FTUserConfiguration sharedInstance];
      v40[0] = v24;
      v26 = v40;
    }

    else
    {
      if (firstObject || !selectedPhoneNumberRegistrationSubscriptionNumber || !labelID)
      {
        goto LABEL_23;
      }

      v25 = +[FTUserConfiguration sharedInstance];
      v39 = v24;
      v26 = &v39;
    }

    v27 = [MEMORY[0x1E695DEC8] arrayWithObjects:v26 count:1];
    [v25 setSelectedPhoneNumberRegistrationSubscriptionLabels:v27];

LABEL_23:
    goto LABEL_24;
  }

  firstObject = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(firstObject, OS_LOG_TYPE_ERROR))
  {
    sub_195963130();
  }

  v21 = 0;
LABEL_31:

  v32 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_reevaluateCachedSelectedPhoneNumberWithContext:(id)context error:(id *)error
{
  v29 = *MEMORY[0x1E69E9840];
  contextCopy = context;
  if (contextCopy)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v22 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getPhoneNumber:contextCopy error:&v22];
    registration2 = v22;
    registration = [MEMORY[0x1E69A6138] registration];
    v11 = registration;
    if (v8)
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_DEBUG))
      {
        sub_195963170();
      }

      number = [v8 number];
      v13 = 0;
    }

    else
    {
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_1959631E4();
      }

      registration2 = registration2;
      number = 0;
      v13 = registration2;
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_DEBUG))
    {
      sub_195963254(registration2);
    }

    v8 = 0;
    v13 = 0;
    number = 0;
  }

  if (![number length])
  {
    v14 = CTSettingCopyMyPhoneNumber();
    registration3 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration3, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_195925000, registration3, OS_LOG_TYPE_DEFAULT, "No selected registration phone number found -- falling back { phoneNumberFallbackValue: %@ }", buf, 0xCu);
    }

    if ([v14 length])
    {
      v16 = v14;

      number = v16;
    }
  }

  registration4 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(registration4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = number;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_195925000, registration4, OS_LOG_TYPE_DEFAULT, "Returning selected registration phone number for device { phoneNumber: %@, phoneNumberInfo: %@, clientError: %@ }", buf, 0x20u);
  }

  if (error)
  {
    v18 = v13;
    *error = v13;
  }

  v19 = number;

  v20 = *MEMORY[0x1E69E9840];
  return number;
}

- (BOOL)isPhoneNumberEmergencyNumber:(id)number
{
  v34 = *MEMORY[0x1E69E9840];
  numberCopy = number;
  if (IMStringIsInHardcodedEmergencyNumberSet())
  {
LABEL_16:
    v17 = 1;
  }

  else
  {
    [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v21 = v26 = 0u;
    subscriptionInfo = [v21 subscriptionInfo];
    subscriptions = [subscriptionInfo subscriptions];

    v7 = [subscriptions countByEnumeratingWithState:&v23 objects:v33 count:16];
    if (v7)
    {
      v9 = v7;
      v10 = *v24;
      *&v8 = 138412802;
      v20 = v8;
      while (2)
      {
        v11 = 0;
        do
        {
          if (*v24 != v10)
          {
            objc_enumerationMutation(subscriptions);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          coreTelephonyClient = self->_coreTelephonyClient;
          v22 = 0;
          v14 = [(CoreTelephonyClient *)coreTelephonyClient isEmergencyNumber:v12 number:numberCopy error:&v22, v20];
          v15 = v22;
          if (v15)
          {
            registration = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v28 = numberCopy;
              v29 = 2112;
              v30 = v12;
              v31 = 2112;
              v32 = v15;
              _os_log_error_impl(&dword_195925000, registration, OS_LOG_TYPE_ERROR, "Failed to check if number is emergency number { phoneNumber: %@, context: %@, error: %@ }", buf, 0x20u);
            }
          }

          if (v14)
          {

            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [subscriptions countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = [(FTSelectedPNRSubscription *)self _legacy_isPhoneNumberEmergencyNumber:numberCopy];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_legacy_isPhoneNumberEmergencyNumber:(id)number
{
  numberCopy = number;
  if (qword_1EAED7800 != -1)
  {
    sub_195963298();
  }

  if (qword_1EAED77F8)
  {
    IsEmergencyNumber = _CTServerConnectionIsEmergencyNumber();
    if (IsEmergencyNumber)
    {
      registration = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(registration, OS_LOG_TYPE_ERROR))
      {
        sub_1959632AC(IsEmergencyNumber, IsEmergencyNumber, registration);
      }
    }
  }

  else
  {
    registration2 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(registration2, OS_LOG_TYPE_ERROR))
    {
      sub_195963338();
    }
  }

  return 0;
}

@end