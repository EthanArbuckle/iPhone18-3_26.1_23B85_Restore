@interface FTSelectedPNRSubscription
+ (BOOL)isPhoneNumber:(id)a3 equivalentToExistingPhoneNumber:(id)a4;
+ (FTSelectedPNRSubscription)sharedInstance;
- (BOOL)_doesSubscriptionInfoContainMultipleLabels:(id)a3;
- (BOOL)_doesSubscriptionInfoContainMultipleUniqueLabels:(id)a3;
- (BOOL)_isIdentityFallbackProhibitedForDeviceBasedOnCapability:(int64_t)a3 subscriptionInfo:(id)a4;
- (BOOL)_isInDualPhoneIdentityModeBasedOnCapability:(int64_t)a3;
- (BOOL)_legacy_isPhoneNumberEmergencyNumber:(id)a3;
- (BOOL)isDeviceInDualPhoneIdentityMode;
- (BOOL)isPhoneNumberEmergencyNumber:(id)a3;
- (BOOL)isSelectedPhoneNumberRegistrationSubscriptionContext:(id)a3;
- (FTSelectedPNRSubscription)init;
- (id)_firstPresentSubscriptionFromAvailableSubscriptions:(id)a3;
- (id)_reevaluateCachedActiveSubscriptionWithError:(id *)a3;
- (id)_reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:(id)a3 activeContexts:(id)a4 fallbackProhibited:(BOOL)a5 persistUpdate:(BOOL)a6 error:(id *)a7;
- (id)_reevaluateCachedSelectedPhoneNumberWithContext:(id)a3 error:(id *)a4;
- (id)_reevaluateCachedSubscriptionWithError:(id *)a3;
- (id)_subscriptionFromAvailableSubscriptions:(id)a3 matchingSelectedLabel:(id)a4;
- (id)selectedPhoneNumberRegistrationSubscriptionWithError:(id *)a3;
- (id)selectedRegistrationPhoneNumberWithError:(id *)a3;
- (id)setSelectedPhoneNumberRegistrationSubscriptionNumber:(id)a3;
- (void)_distributed_invalidateCache;
- (void)_protected_invalidateCache;
- (void)_reevaluateDualIdentityModeWithSubscriptionInfo:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)dualSimCapabilityDidChange;
- (void)phoneNumberAvailable:(id)a3;
- (void)phoneNumberChanged:(id)a3;
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

+ (BOOL)isPhoneNumber:(id)a3 equivalentToExistingPhoneNumber:(id)a4
{
  v24 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  if ([v5 length] || objc_msgSend(v6, "length"))
  {
    if ([v5 length] && objc_msgSend(v6, "length"))
    {
      v7 = [v6 _IDFromFZIDType:0];
      v8 = [v7 _stripFZIDPrefix];

      v9 = [v5 _IDFromFZIDType:0];
      v10 = [v9 _stripFZIDPrefix];

      if ([v8 hasPrefix:@"+"])
      {
        v11 = [MEMORY[0x1E696AB08] characterSetWithCharactersInString:@"+"];
        v12 = [v8 stringByRemovingCharactersFromSet:v11];

        v8 = v12;
      }

      v13 = (_FTAreIDsEquivalent() & 1) != 0 || (_FTAreIDsEquivalent() & 1) != 0 || [v8 rangeOfString:v10] != 0x7FFFFFFFFFFFFFFFLL || objc_msgSend(v10, "rangeOfString:", v8) != 0x7FFFFFFFFFFFFFFFLL;
      v14 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v15 = @"NO";
        v18 = 138412802;
        v19 = v5;
        v20 = 2112;
        if (v13)
        {
          v15 = @"YES";
        }

        v21 = v6;
        v22 = 2112;
        v23 = v15;
        _os_log_impl(&dword_195925000, v14, OS_LOG_TYPE_DEFAULT, "Determined whether phone numbers are equivalent { phoneNumber: %@, existingPhoneNumber: %@, equivalent: %@ }", &v18, 0x20u);
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
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Subscription info did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)phoneNumberChanged:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Phone number changed -- clearing cached selected phone number registration subscription { context: %@ }", &v7, 0xCu);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)phoneNumberAvailable:(id)a3
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_195925000, v5, OS_LOG_TYPE_DEFAULT, "Phone number became available -- clearing cached selected phone number registration subscription { context: %@ }", &v7, 0xCu);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
  v6 = *MEMORY[0x1E69E9840];
}

- (void)activeSubscriptionsDidChange
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Active subscriptions did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)dualSimCapabilityDidChange
{
  v3 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, v3, OS_LOG_TYPE_DEFAULT, "Dual SIM capability did change -- clearing cached selected phone number registration subscription", v4, 2u);
  }

  [(FTSelectedPNRSubscription *)self _protected_invalidateCache];
}

- (void)_distributed_invalidateCache
{
  v2 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&dword_195925000, v2, OS_LOG_TYPE_DEFAULT, "Posting distributed notification to invalidate selected phone number subscription caches in other processes", v4, 2u);
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

- (id)selectedPhoneNumberRegistrationSubscriptionWithError:(id *)a3
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v4 = [v3 selectedContext];

  return v4;
}

- (BOOL)isSelectedPhoneNumberRegistrationSubscriptionContext:(id)a3
{
  v28 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v6 = [v5 selectedContext];
  v7 = +[FTUserConfiguration sharedInstance];
  v8 = [v7 selectedPhoneNumberRegistrationSubscriptionLabels];
  v9 = [v8 firstObject];

  v10 = [v4 slotID];
  v11 = [v6 slotID];
  v12 = [v4 labelID];
  v13 = 0;
  if (v12 && v9)
  {
    v14 = [v4 labelID];
    v13 = [v14 isEqualToString:v9];
  }

  v15 = (v10 == v11) | v13;
  v16 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
  {
    v19 = @"NO";
    v20 = 138413058;
    v21 = v4;
    if (v15)
    {
      v19 = @"YES";
    }

    v22 = 2112;
    v23 = v6;
    v24 = 2112;
    v25 = v9;
    v26 = 2112;
    v27 = v19;
    _os_log_debug_impl(&dword_195925000, v16, OS_LOG_TYPE_DEBUG, "Determined if provided subscription context is selected IDS phone number subscription context { context: %@, selectedContext: %@, persistedLabel: %@, isMatching: %@ }", &v20, 0x2Au);
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15 & 1;
}

- (id)selectedRegistrationPhoneNumberWithError:(id *)a3
{
  v3 = [(FTSelectedPNRSubscription *)self _protected_reevaluateCacheIfNeededAndPersistUpdate:0];
  v4 = [v3 phoneNumber];

  return v4;
}

- (id)setSelectedPhoneNumberRegistrationSubscriptionNumber:(id)a3
{
  v46 = *MEMORY[0x1E69E9840];
  v4 = a3;
  coreTelephonyClient = self->_coreTelephonyClient;
  v35 = 0;
  v6 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v35];
  v7 = v35;
  v8 = [v6 subscriptions];
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v38 = v6;
    v39 = 2112;
    v40 = v7;
    _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Loaded subscription info { info: %@, error: %@ }", buf, 0x16u);
  }

  if ([v8 count])
  {
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v31 objects:v45 count:16];
    if (v11)
    {
      v30 = v8;
      v12 = *v32;
      while (2)
      {
        for (i = 0; i != v11; i = i + 1)
        {
          if (*v32 != v12)
          {
            objc_enumerationMutation(v10);
          }

          if (v4)
          {
            v14 = *(*(&v31 + 1) + 8 * i);
            v15 = [v14 slotID];
            v16 = v15 == 1 ? &unk_1F09D0728 : &unk_1F09D0710;
            v17 = v15 == 2 ? &unk_1F09D0740 : v16;
            if ([v17 isEqualToNumber:v4])
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
      v8 = v30;
    }

    goto LABEL_27;
  }

  v18 = [MEMORY[0x1E69A6138] registration];
  v19 = v18;
  if (!v7)
  {
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      sub_195962FCC();
    }

    v11 = 0;
LABEL_27:
    v20 = 0;
    goto LABEL_28;
  }

  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *buf = 138412802;
    v38 = v6;
    v39 = 2112;
    v40 = v8;
    v41 = 2112;
    v42 = v7;
    _os_log_error_impl(&dword_195925000, v19, OS_LOG_TYPE_ERROR, "Failed to fetch subscriptions { subscriptionInfo: %@, subscriptions: %@, error: %@ }", buf, 0x20u);
  }

  v20 = v7;
  v11 = 0;
LABEL_28:
  v21 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
  {
    v22 = [v11 labelID];
    *buf = 138413058;
    v38 = v4;
    v39 = 2112;
    v40 = v22;
    v41 = 2112;
    v42 = v11;
    v43 = 2112;
    v44 = v8;
    _os_log_impl(&dword_195925000, v21, OS_LOG_TYPE_DEFAULT, "Selected new phone number registration subscription context { subscriptionNumber: %@, labelID: %@, selectedSubscription: %@, availableSubscriptions: %@ }", buf, 0x2Au);
  }

  v23 = +[FTUserConfiguration sharedInstance];
  v24 = [v11 labelID];
  v36 = v24;
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
  v5 = [v3 subscriptionInfo];
  v6 = [(FTSelectedPNRSubscription *)self _doesSubscriptionInfoContainMultipleLabels:v5];

  if (v4 || (v7 = 0, v6))
  {
    v8 = [v3 activeSubscriptionInfo];
    v9 = [v8 subscriptions];
    if ([v9 count] == 1)
    {
      v10 = [v3 activeSubscriptionInfo];
      v11 = [v10 subscriptions];
      v12 = [v11 firstObject];
      v13 = [v12 labelID];
      if (v13)
      {
        v14 = [v3 selectedContext];
        v15 = [v14 labelID];
        if (v15)
        {
          v24 = v15;
          v23 = [v3 activeSubscriptionInfo];
          v22 = [v23 subscriptions];
          v16 = [v22 firstObject];
          [v16 labelID];
          v17 = v26 = v10;
          [v3 selectedContext];
          v18 = v25 = v14;
          v19 = [v18 labelID];
          v21 = [v17 isEqualToString:v19];

          v14 = v25;
          v10 = v26;

          v15 = v24;
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

- (BOOL)_isInDualPhoneIdentityModeBasedOnCapability:(int64_t)a3
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a3 == 2 || a3 == 4;
  v6 = +[FTUserConfiguration sharedInstance];
  v7 = [v6 isDeviceInDualPhoneIdentityMode];

  v8 = v5 & v7;
  v9 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
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
    if (v7)
    {
      v10 = @"YES";
    }

    v16 = 2048;
    v17 = a3;
    v18 = 2112;
    v19 = v10;
    _os_log_impl(&dword_195925000, v9, OS_LOG_TYPE_DEFAULT, "Determined if device is in dual phone identity mode { isDualIdentity: %@, dualSIMCapability: %ld, isDeviceInDualPhoneIdentityMode: %@ }", &v14, 0x20u);
  }

  v12 = *MEMORY[0x1E69E9840];
  return v8;
}

- (BOOL)_isIdentityFallbackProhibitedForDeviceBasedOnCapability:(int64_t)a3 subscriptionInfo:(id)a4
{
  v4 = a3;
  v6 = [FTUserConfiguration sharedInstance:a3];
  v7 = [v6 selectedPhoneNumberRegistrationSubscriptionLabels];
  v8 = [v7 firstObject];

  LOBYTE(v4) = [(FTSelectedPNRSubscription *)self _isInDualPhoneIdentityModeBasedOnCapability:v4];
  return (v8 != 0) & v4;
}

- (id)_reevaluateCachedSubscriptionWithError:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfoWithError:&v12];
  v6 = v12;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Loaded subscription info { info: %@, error: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_195963050();
    }
  }

  if (a3)
  {
    v9 = v6;
    *a3 = v6;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (id)_reevaluateCachedActiveSubscriptionWithError:(id *)a3
{
  v17 = *MEMORY[0x1E69E9840];
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v5 = [(CoreTelephonyClient *)coreTelephonyClient getActiveContexts:&v12];
  v6 = v12;
  v7 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412546;
    v14 = v5;
    v15 = 2112;
    v16 = v6;
    _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Loaded active contexts { contexts: %@, error: %@ }", buf, 0x16u);
  }

  if (v6)
  {
    v8 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      sub_1959630C0();
    }
  }

  if (a3)
  {
    v9 = v6;
    *a3 = v6;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v5;
}

- (BOOL)_doesSubscriptionInfoContainMultipleLabels:(id)a3
{
  v17 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [a3 subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
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
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v12 + 1) + 8 * i) labelID];
        v9 = [v8 length];

        if (v9)
        {
          ++v5;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
    LOBYTE(v4) = v5 > 1;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

- (BOOL)_doesSubscriptionInfoContainMultipleUniqueLabels:(id)a3
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v4 = objc_alloc_init(MEMORY[0x1E695DFA8]);
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v5 = [v3 subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
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
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v10 labelID];
        v12 = [v11 length];

        if (v12)
        {
          v13 = [v10 labelID];
          [v4 addObject:v13];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v7);
  }

  v14 = [v4 count] > 1;
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

- (void)_reevaluateDualIdentityModeWithSubscriptionInfo:(id)a3
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = +[FTUserConfiguration sharedInstance];
  v6 = [v5 isDeviceInDualPhoneIdentityMode];

  if ((v6 & 1) == 0 && [(FTSelectedPNRSubscription *)self _doesSubscriptionInfoContainMultipleUniqueLabels:v4])
  {
    v7 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v10 = 138412290;
      v11 = v4;
      _os_log_impl(&dword_195925000, v7, OS_LOG_TYPE_DEFAULT, "Determined that device has entered dual identity mode { subscriptionInfo: %@ }", &v10, 0xCu);
    }

    v8 = +[FTUserConfiguration sharedInstance];
    [v8 setIsDeviceInDualPhoneIdentityMode:1];
  }

  v9 = *MEMORY[0x1E69E9840];
}

- (id)_subscriptionFromAvailableSubscriptions:(id)a3 matchingSelectedLabel:(id)a4
{
  v21 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = a4;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v19 = 0u;
  v7 = v5;
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
        v12 = [v11 labelID];
        v13 = v12;
        if (v6 && v12 && [v12 isEqualToString:v6])
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

- (id)_firstPresentSubscriptionFromAvailableSubscriptions:(id)a3
{
  v16 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v3 = a3;
  v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
  if (v4)
  {
    v5 = *v12;
    while (2)
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v12 != v5)
        {
          objc_enumerationMutation(v3);
        }

        v7 = *(*(&v11 + 1) + 8 * i);
        v8 = [v7 labelID];
        if ([v8 length])
        {
          v4 = v7;

          goto LABEL_11;
        }
      }

      v4 = [v3 countByEnumeratingWithState:&v11 objects:v15 count:16];
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

- (id)_reevaluateCachedSelectedPhoneNumberRegistrationWithSubscription:(id)a3 activeContexts:(id)a4 fallbackProhibited:(BOOL)a5 persistUpdate:(BOOL)a6 error:(id *)a7
{
  v7 = a6;
  v8 = a5;
  v40[1] = *MEMORY[0x1E69E9840];
  v11 = a3;
  v12 = a4;
  if (self->_coreTelephonyClient)
  {
    v13 = +[FTUserConfiguration sharedInstance];
    v14 = [v13 selectedPhoneNumberRegistrationSubscriptionLabels];
    v15 = [v14 firstObject];

    v16 = +[FTUserConfiguration sharedInstance];
    v34 = [v16 selectedPhoneNumberRegistrationSubscriptionNumber];

    v17 = [v11 subscriptions];
    if (![v17 count])
    {
      v21 = 0;
LABEL_24:
      v28 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412546;
        v36 = v21;
        v37 = 2112;
        v38 = v15;
        _os_log_impl(&dword_195925000, v28, OS_LOG_TYPE_DEFAULT, "Determined selected phone number registration subscription context { selectedSubscription: %@, persistedLabel: %@ }", buf, 0x16u);
      }

      v29 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v36 = v17;
        _os_log_impl(&dword_195925000, v29, OS_LOG_TYPE_DEFAULT, "Available subscriptions { available: %@ }", buf, 0xCu);
      }

      v30 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        v31 = [v12 subscriptions];
        *buf = 138412290;
        v36 = v31;
        _os_log_impl(&dword_195925000, v30, OS_LOG_TYPE_DEFAULT, "Active subscriptions { active: %@ }", buf, 0xCu);
      }

      goto LABEL_31;
    }

    v18 = [(FTSelectedPNRSubscription *)self _subscriptionFromAvailableSubscriptions:v17 matchingSelectedLabel:v15];
    v19 = v18;
    if (v18)
    {
      v20 = 0;
    }

    else if ([v17 count] < 2 || (-[FTSelectedPNRSubscription _firstPresentSubscriptionFromAvailableSubscriptions:](self, "_firstPresentSubscriptionFromAvailableSubscriptions:", v17), v18 = objc_claimAutoreleasedReturnValue(), (v20 = v18) == 0))
    {
      v18 = [v17 firstObject];
      v20 = v18;
    }

    if (v8)
    {
      v22 = v19;
    }

    else
    {
      v22 = v18;
    }

    v21 = v22;
    v23 = [v21 labelID];
    v24 = v23;
    if (v7 && v23)
    {
      v25 = +[FTUserConfiguration sharedInstance];
      v40[0] = v24;
      v26 = v40;
    }

    else
    {
      if (v15 || !v34 || !v23)
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

  v15 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_195963130();
  }

  v21 = 0;
LABEL_31:

  v32 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)_reevaluateCachedSelectedPhoneNumberWithContext:(id)a3 error:(id *)a4
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = a3;
  if (v6)
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v22 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getPhoneNumber:v6 error:&v22];
    v9 = v22;
    v10 = [MEMORY[0x1E69A6138] registration];
    v11 = v10;
    if (v8)
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
      {
        sub_195963170();
      }

      v12 = [v8 number];
      v13 = 0;
    }

    else
    {
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        sub_1959631E4();
      }

      v9 = v9;
      v12 = 0;
      v13 = v9;
    }
  }

  else
  {
    v9 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      sub_195963254(v9);
    }

    v8 = 0;
    v13 = 0;
    v12 = 0;
  }

  if (![v12 length])
  {
    v14 = CTSettingCopyMyPhoneNumber();
    v15 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v24 = v14;
      _os_log_impl(&dword_195925000, v15, OS_LOG_TYPE_DEFAULT, "No selected registration phone number found -- falling back { phoneNumberFallbackValue: %@ }", buf, 0xCu);
    }

    if ([v14 length])
    {
      v16 = v14;

      v12 = v16;
    }
  }

  v17 = [MEMORY[0x1E69A6138] registration];
  if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v24 = v12;
    v25 = 2112;
    v26 = v8;
    v27 = 2112;
    v28 = v13;
    _os_log_impl(&dword_195925000, v17, OS_LOG_TYPE_DEFAULT, "Returning selected registration phone number for device { phoneNumber: %@, phoneNumberInfo: %@, clientError: %@ }", buf, 0x20u);
  }

  if (a4)
  {
    v18 = v13;
    *a4 = v13;
  }

  v19 = v12;

  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

- (BOOL)isPhoneNumberEmergencyNumber:(id)a3
{
  v34 = *MEMORY[0x1E69E9840];
  v4 = a3;
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
    v5 = [v21 subscriptionInfo];
    v6 = [v5 subscriptions];

    v7 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
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
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * v11);
          coreTelephonyClient = self->_coreTelephonyClient;
          v22 = 0;
          v14 = [(CoreTelephonyClient *)coreTelephonyClient isEmergencyNumber:v12 number:v4 error:&v22, v20];
          v15 = v22;
          if (v15)
          {
            v16 = [MEMORY[0x1E69A6138] registration];
            if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
            {
              *buf = v20;
              v28 = v4;
              v29 = 2112;
              v30 = v12;
              v31 = 2112;
              v32 = v15;
              _os_log_error_impl(&dword_195925000, v16, OS_LOG_TYPE_ERROR, "Failed to check if number is emergency number { phoneNumber: %@, context: %@, error: %@ }", buf, 0x20u);
            }
          }

          if (v14)
          {

            goto LABEL_16;
          }

          ++v11;
        }

        while (v9 != v11);
        v9 = [v6 countByEnumeratingWithState:&v23 objects:v33 count:16];
        if (v9)
        {
          continue;
        }

        break;
      }
    }

    v17 = [(FTSelectedPNRSubscription *)self _legacy_isPhoneNumberEmergencyNumber:v4];
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_legacy_isPhoneNumberEmergencyNumber:(id)a3
{
  v3 = a3;
  if (qword_1EAED7800 != -1)
  {
    sub_195963298();
  }

  if (qword_1EAED77F8)
  {
    IsEmergencyNumber = _CTServerConnectionIsEmergencyNumber();
    if (IsEmergencyNumber)
    {
      v5 = [MEMORY[0x1E69A6138] registration];
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        sub_1959632AC(IsEmergencyNumber, IsEmergencyNumber, v5);
      }
    }
  }

  else
  {
    v6 = [MEMORY[0x1E69A6138] registration];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      sub_195963338();
    }
  }

  return 0;
}

@end