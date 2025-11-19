@interface CKLazuliEnablementManager
- (BOOL)_isRCSBusinessMessagingEnabledByDefaultForSubscriptionContext:(id)a3;
- (BOOL)_isRCSBusinessMessagingSupportedForSubscription:(id)a3;
- (BOOL)isRCSBusinessMessagingEnabledByDefault;
- (BOOL)isRCSBusinessMessagingSupported;
- (BOOL)isRCSDisabledByProfileForSubscriptionContext:(id)a3;
- (BOOL)isRCSEnabledForAnyActiveSubscription;
- (BOOL)isRCSSupportedForAnyActiveSubscription;
- (BOOL)isRCSUncertifiedForSubscriptionContext:(id)a3;
- (CKLazuliEnablementManager)init;
- (id)_cacheGetConfigurationForContext:(id)a3;
- (id)_enablementCacheObjectForContext:(id)a3;
- (id)_fetchIsRCSEnabled:(id)a3;
- (id)_registrationCacheObjectForContext:(id)a3;
- (id)ctSubscriptionInfo;
- (id)fetchSystemConfiguration:(id)a3;
- (id)getSubscriptionWithRCSBusinessMessaging;
- (id)isRCSEnabled:(id)a3;
- (id)isRCSEnabledForSubscriptionContext:(id)a3;
- (id)rcsMessagingCapabilitiesForContext:(id)a3;
- (int64_t)_fetchRegistrationState:(id)a3;
- (int64_t)_isRCSBusinessMessagingEnabledByUserPreferenceForSubscriptionContext:(id)a3;
- (int64_t)isRCSBusinessMessagingEnabledByUserPreference;
- (int64_t)registrationStateFor:(id)a3;
- (int64_t)registrationStateForSubscriptionContext:(id)a3;
- (void)_cacheSetConfigurationForContext:(id)a3 forContext:(id)a4;
- (void)_enablementCacheSetObject:(id)a3 forContext:(id)a4;
- (void)_registrationCacheSetObject:(id)a3 forContext:(id)a4;
- (void)_setRCSBusinessMessagingEnabledForSubscription:(id)a3 enabled:(id)a4;
- (void)setRCSBusinessMessagingEnabled:(id)a3 specifier:(id)a4;
- (void)setRCSEnabled:(id)a3 specifier:(id)a4;
- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4;
@end

@implementation CKLazuliEnablementManager

- (CKLazuliEnablementManager)init
{
  v13.receiver = self;
  v13.super_class = CKLazuliEnablementManager;
  v2 = [(CKLazuliEnablementManager *)&v13 init];
  if (v2)
  {
    v3 = objc_alloc(MEMORY[0x277CC37B0]);
    v4 = [v3 initWithQueue:MEMORY[0x277D85CD0]];
    client = v2->_client;
    v2->_client = v4;

    [(CoreTelephonyClient *)v2->_client setDelegate:v2];
    v6 = objc_alloc_init(MEMORY[0x277CBEB38]);
    enablementCache = v2->_enablementCache;
    v2->_enablementCache = v6;

    v8 = objc_alloc_init(MEMORY[0x277CBEB38]);
    contextToConfigurationCache = v2->_contextToConfigurationCache;
    v2->_contextToConfigurationCache = v8;

    v10 = objc_alloc_init(MEMORY[0x277CBEB38]);
    registrationStateCache = v2->_registrationStateCache;
    v2->_registrationStateCache = v10;
  }

  return v2;
}

- (id)_fetchIsRCSEnabled:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 operationStatus];
    if (!v7)
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "Operation status is nil", &v17, 2u);
        }

        goto LABEL_35;
      }

      goto LABEL_36;
    }

    if ([v6 featureDisabledByProfile])
    {
      if (IMOSLoggingEnabled())
      {
        v8 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "Feature is disabled by profile.", &v17, 2u);
        }

LABEL_35:

        goto LABEL_36;
      }

      goto LABEL_36;
    }

    v11 = [v7 switchState];
    v12 = v11;
    if (v11 == -1)
    {
      if ([v6 featureEnabledByDefault])
      {
        if (IMOSLoggingEnabled())
        {
          v13 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
          {
            LOWORD(v17) = 0;
            _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_INFO, "RCS is enabled by default.", &v17, 2u);
          }

          goto LABEL_27;
        }

LABEL_28:
        v10 = MEMORY[0x277CBEC38];
LABEL_37:

        goto LABEL_38;
      }
    }

    else if (!v11)
    {
      if (IMOSLoggingEnabled())
      {
        v13 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
        {
          LOWORD(v17) = 0;
          _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_INFO, "Lazuli is enabled.", &v17, 2u);
        }

LABEL_27:

        goto LABEL_28;
      }

      goto LABEL_28;
    }

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        if ((v12 + 1) > 3)
        {
          v14 = @"???";
        }

        else
        {
          v14 = off_278DE82E0[v12 + 1];
        }

        v17 = 138412290;
        v18 = v14;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "Lazuli switch state is not enabled: %@", &v17, 0xCu);
      }

      goto LABEL_35;
    }

LABEL_36:
    v10 = MEMORY[0x277CBEC28];
    goto LABEL_37;
  }

  if (IMOSLoggingEnabled())
  {
    v9 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      LOWORD(v17) = 0;
      _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_INFO, "System configuration is nil", &v17, 2u);
    }
  }

  v10 = MEMORY[0x277CBEC28];
LABEL_38:

  v15 = *MEMORY[0x277D85DE8];
  return v10;
}

- (int64_t)_fetchRegistrationState:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 operationStatus];
    v8 = v7;
    if (v7)
    {
      v9 = [v7 registrationState];
      if (IMOSLoggingEnabled())
      {
        v10 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
        {
          v15 = 134217984;
          v16 = v9;
          _os_log_impl(&dword_243BE5000, v10, OS_LOG_TYPE_INFO, "Registration state is: %ld.", &v15, 0xCu);
        }
      }
    }

    else
    {
      if (IMOSLoggingEnabled())
      {
        v12 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          LOWORD(v15) = 0;
          _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_INFO, "Operation status is nil", &v15, 2u);
        }
      }

      v9 = -1;
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        LOWORD(v15) = 0;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_INFO, "System configuration is nil", &v15, 2u);
      }
    }

    v9 = -1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v9;
}

- (id)isRCSEnabledForSubscriptionContext:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(CKLazuliEnablementManager *)self _enablementCacheObjectForContext:v4];
    v6 = v5;
    if (v5)
    {
      v7 = v5;
    }

    else
    {
      v7 = [(CKLazuliEnablementManager *)self _fetchIsRCSEnabled:v4];
      [(CKLazuliEnablementManager *)self _enablementCacheSetObject:v7 forContext:v4];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v11 = 136315138;
        v12 = "[CKLazuliEnablementManager isRCSEnabledForSubscriptionContext:]";
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "[%s] No active subscriptions.", &v11, 0xCu);
      }
    }

    v7 = MEMORY[0x277CBEC28];
  }

  v9 = *MEMORY[0x277D85DE8];

  return v7;
}

- (int64_t)registrationStateForSubscriptionContext:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = [(CKLazuliEnablementManager *)self _registrationCacheObjectForContext:v4];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 intValue];
    }

    else
    {
      v7 = [(CKLazuliEnablementManager *)self _fetchRegistrationState:v4];
      v9 = [MEMORY[0x277CCABB0] numberWithInteger:v7];
      [(CKLazuliEnablementManager *)self _registrationCacheSetObject:v9 forContext:v4];
    }
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v12 = 136315138;
        v13 = "[CKLazuliEnablementManager registrationStateForSubscriptionContext:]";
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "[%s] No active subscriptions.", &v12, 0xCu);
      }
    }

    v7 = -1;
  }

  v10 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)ctSubscriptionInfo
{
  v2 = [MEMORY[0x277D1A908] sharedInstance];
  v3 = [v2 ctSubscriptionInfo];

  return v3;
}

- (id)getSubscriptionWithRCSBusinessMessaging
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(CKLazuliEnablementManager *)self isRCSSupportedForAnyActiveSubscription])
  {
    v3 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v4 = [v3 __im_subscriptionsWithRCSSupport];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([(CKLazuliEnablementManager *)self _isRCSBusinessMessagingSupportedForSubscription:v10, v14])
          {
            v11 = v10;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_13:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

- (void)setRCSBusinessMessagingEnabled:(id)a3 specifier:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v5 = a3;
  if ([(CKLazuliEnablementManager *)self isRCSSupportedForAnyActiveSubscription])
  {
    v6 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v7 = [v6 __im_subscriptionsWithRCSSupport];

    v17 = 0u;
    v18 = 0u;
    v15 = 0u;
    v16 = 0u;
    v8 = v7;
    v9 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v16;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v16 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = *(*(&v15 + 1) + 8 * i);
          if ([(CKLazuliEnablementManager *)self _isRCSBusinessMessagingSupportedForSubscription:v13, v15])
          {
            [(CKLazuliEnablementManager *)self _setRCSBusinessMessagingEnabledForSubscription:v13 enabled:v5];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v15 objects:v19 count:16];
      }

      while (v10);
    }
  }

  v14 = *MEMORY[0x277D85DE8];
}

- (void)_setRCSBusinessMessagingEnabledForSubscription:(id)a3 enabled:(id)a4
{
  v6 = a3;
  v7 = [a4 BOOLValue];
  v8 = [(CKLazuliEnablementManager *)self client];
  v9 = v8;
  if (v7)
  {
    v14 = 0;
    v10 = &v14;
    [v8 enableBusinessMessaging:v6 withError:&v14];
  }

  else
  {
    v13 = 0;
    v10 = &v13;
    [v8 disableBusinessMessaging:v6 withError:&v13];
  }

  v11 = *v10;
  if (v11)
  {
    v12 = IMLogHandleForCategory();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      [CKLazuliEnablementManager _setRCSBusinessMessagingEnabledForSubscription:v11 enabled:v12];
    }
  }
}

- (BOOL)isRCSBusinessMessagingSupported
{
  v18 = *MEMORY[0x277D85DE8];
  if ([(CKLazuliEnablementManager *)self isRCSSupportedForAnyActiveSubscription])
  {
    v3 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v4 = [v3 __im_subscriptionsWithRCSSupport];

    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v14;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v14 != v8)
          {
            objc_enumerationMutation(v5);
          }

          if ([(CKLazuliEnablementManager *)self _isRCSBusinessMessagingSupportedForSubscription:*(*(&v13 + 1) + 8 * i), v13])
          {
            v10 = 1;
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v10 = 0;
LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (BOOL)_isRCSBusinessMessagingSupportedForSubscription:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:v4];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 businessMessagingCapabilities];
    v7 = [v6 supported];
  }

  else
  {
    v6 = [MEMORY[0x277D1A908] sharedInstance];
    v8 = [v6 copyCarrierBundleValueForSubscriptionContext:v4 keyHierarchy:&unk_2856EB8C8 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];
    v7 = [v8 BOOLValue];
  }

  return v7;
}

- (int64_t)isRCSBusinessMessagingEnabledByUserPreference
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(CKLazuliEnablementManager *)self isRCSEnabledForAnyActiveSubscription])
  {
    v3 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v4 = [v3 __im_subscriptionsWithRCSSupport];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      v9 = -1;
LABEL_4:
      v10 = 0;
      while (1)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        if ([(CKLazuliEnablementManager *)self _isRCSBusinessMessagingSupportedForSubscription:v11, v14])
        {
          v9 = [(CKLazuliEnablementManager *)self _isRCSBusinessMessagingEnabledByUserPreferenceForSubscriptionContext:v11];
          if (v9 == 1)
          {
            break;
          }
        }

        if (v7 == ++v10)
        {
          v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
          if (v7)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v9 = -1;
    }
  }

  else
  {
    v9 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v9;
}

- (int64_t)_isRCSBusinessMessagingEnabledByUserPreferenceForSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:v4];
  v6 = v5;
  if (v5)
  {
    v7 = [v5 businessMessagingCapabilities];
    v8 = [v7 userPreferenceForSwitch];
  }

  else
  {
    if (IMOSLoggingEnabled())
    {
      v9 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
      {
        *v11 = 0;
        _os_log_impl(&dword_243BE5000, v9, OS_LOG_TYPE_INFO, "System configuration is nil", v11, 2u);
      }
    }

    v8 = -1;
  }

  return v8;
}

- (id)rcsMessagingCapabilitiesForContext:(id)a3
{
  v3 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:a3];
  if (v3 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v4 = [v3 messagingCapabilities];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (BOOL)isRCSBusinessMessagingEnabledByDefault
{
  v19 = *MEMORY[0x277D85DE8];
  if ([(CKLazuliEnablementManager *)self isRCSEnabledForAnyActiveSubscription])
  {
    v3 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v4 = [v3 __im_subscriptionsWithRCSSupport];

    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = v4;
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v15;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v15 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v14 + 1) + 8 * i);
          if ([(CKLazuliEnablementManager *)self _isRCSBusinessMessagingSupportedForSubscription:v10, v14]&& [(CKLazuliEnablementManager *)self _isRCSBusinessMessagingEnabledByDefaultForSubscriptionContext:v10])
          {
            v11 = 1;
            goto LABEL_14;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v11 = 0;
LABEL_14:
  }

  else
  {
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (BOOL)_isRCSBusinessMessagingEnabledByDefaultForSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:v4];
  if (v5 && (objc_opt_respondsToSelector() & 1) != 0)
  {
    v6 = [v5 businessMessagingCapabilities];
    v7 = [v6 enabledByDefault];
  }

  else
  {
    v6 = [MEMORY[0x277D1A908] sharedInstance];
    v8 = [v6 copyCarrierBundleValueForSubscriptionContext:v4 keyHierarchy:&unk_2856EB8E0 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];
    v7 = [v8 BOOLValue];
  }

  return v7;
}

- (BOOL)isRCSEnabledForAnyActiveSubscription
{
  v28 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v7 = [v6 __im_subscriptionsWithRCSSupport];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
        *buf = 136315394;
        v25 = "[CKLazuliEnablementManager isRCSEnabledForAnyActiveSubscription]";
        v26 = 2112;
        v27 = v9;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "[%s] subscriptionsWithRCSSupport count %@", buf, 0x16u);
      }
    }
  }

  else
  {
    v7 = v3;
  }

  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v10 = v7;
  v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v11)
  {
    v12 = *v20;
    while (2)
    {
      for (i = 0; i != v11; ++i)
      {
        if (*v20 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v14 = [(CKLazuliEnablementManager *)self isRCSEnabledForSubscriptionContext:*(*(&v19 + 1) + 8 * i), v19];
        v15 = [v14 BOOLValue];

        if (v15)
        {
          v16 = 1;
          goto LABEL_17;
        }
      }

      v11 = [v10 countByEnumeratingWithState:&v19 objects:v23 count:16];
      if (v11)
      {
        continue;
      }

      break;
    }
  }

  v16 = 0;
LABEL_17:

  v17 = *MEMORY[0x277D85DE8];
  return v16;
}

- (BOOL)isRCSSupportedForAnyActiveSubscription
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBEA60] array];
  v4 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
  v5 = objc_opt_respondsToSelector();

  if (v5)
  {
    v6 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
    v7 = [v6 __im_subscriptionsWithRCSSupport];

    if (IMOSLoggingEnabled())
    {
      v8 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:{objc_msgSend(v7, "count")}];
        v13 = 136315394;
        v14 = "[CKLazuliEnablementManager isRCSSupportedForAnyActiveSubscription]";
        v15 = 2112;
        v16 = v9;
        _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "[%s] subscriptionsWithRCSSupport count %@", &v13, 0x16u);
      }
    }
  }

  else
  {
    v7 = v3;
  }

  v10 = [v7 count] != 0;

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)isRCSEnabled:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
  v6 = [v4 properties];
  v7 = [v6 objectForKey:@"simID"];
  v8 = [v4 properties];

  v9 = [v8 objectForKey:@"phoneNumber"];
  v10 = [v5 __im_subscriptionContextForForSimID:v7 phoneNumber:v9];

  v11 = [(CKLazuliEnablementManager *)self isRCSEnabledForSubscriptionContext:v10];

  return v11;
}

- (int64_t)registrationStateFor:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
  v6 = [v4 properties];
  v7 = [v6 objectForKey:@"simID"];
  v8 = [v4 properties];

  v9 = [v8 objectForKey:@"phoneNumber"];
  v10 = [v5 __im_subscriptionContextForForSimID:v7 phoneNumber:v9];

  v11 = [(CKLazuliEnablementManager *)self registrationStateForSubscriptionContext:v10];
  return v11;
}

- (BOOL)isRCSUncertifiedForSubscriptionContext:(id)a3
{
  v3 = MEMORY[0x277D1A908];
  v4 = a3;
  v5 = [v3 sharedInstance];
  v6 = [v5 copyCarrierBundleValueForSubscriptionContext:v4 keyHierarchy:&unk_2856EB8F8 defaultValue:MEMORY[0x277CBEC28] valueIfError:MEMORY[0x277CBEC28]];

  LOBYTE(v4) = [v6 BOOLValue];
  return v4;
}

- (BOOL)isRCSDisabledByProfileForSubscriptionContext:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self fetchSystemConfiguration:v4];
  v6 = v5;
  if (v5 && [v5 featureDisabledByProfile])
  {
    if (IMOSLoggingEnabled())
    {
      v7 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_243BE5000, v7, OS_LOG_TYPE_INFO, "RCS feature is disabled by profile.", v10, 2u);
      }
    }

    v8 = 1;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)setRCSEnabled:(id)a3 specifier:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(CKLazuliEnablementManager *)self ctSubscriptionInfo];
  v9 = [v7 properties];
  v10 = [v9 objectForKey:@"simID"];
  v11 = [v7 properties];
  v12 = [v11 objectForKey:@"phoneNumber"];
  v13 = [v8 __im_subscriptionContextForForSimID:v10 phoneNumber:v12];

  if (!v13)
  {
    if (!IMOSLoggingEnabled())
    {
      goto LABEL_30;
    }

    v14 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
    {
      *buf = 136315138;
      v27 = "[CKLazuliEnablementManager setRCSEnabled:specifier:]";
      _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_INFO, "[%s] No active subscriptions.", buf, 0xCu);
    }

    goto LABEL_7;
  }

  if (([v6 intValue] & 0x80000000) != 0 || objc_msgSend(v6, "intValue") >= 2)
  {
    if (IMOSLoggingEnabled())
    {
      v14 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&dword_243BE5000, v14, OS_LOG_TYPE_INFO, "Unexpected value trying to be set for Lazuli", buf, 2u);
      }

LABEL_7:
    }
  }

  else
  {
    v15 = [v6 BOOLValue];
    v16 = IMOSLoggingEnabled();
    if (v15)
    {
      if (v16)
      {
        v17 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_INFO, "Enabling Lazuli.", buf, 2u);
        }
      }

      v18 = [(CKLazuliEnablementManager *)self client];
      v25 = 0;
      [v18 enableLazuli:v13 withError:&v25];
      v19 = &v25;
    }

    else
    {
      if (v16)
      {
        v20 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v20, OS_LOG_TYPE_INFO))
        {
          *buf = 0;
          _os_log_impl(&dword_243BE5000, v20, OS_LOG_TYPE_INFO, "Disabling Lazuli.", buf, 2u);
        }
      }

      v18 = [(CKLazuliEnablementManager *)self client];
      v24 = 0;
      [v18 disableLazuli:v13 withError:&v24];
      v19 = &v24;
    }

    v21 = *v19;

    if (v21)
    {
      if (IMOSLoggingEnabled())
      {
        v22 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v27 = v21;
          _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_INFO, "Error Enabling Lazuli: %@", buf, 0xCu);
        }
      }
    }

    else
    {
      [(CKLazuliEnablementManager *)self _enablementCacheSetObject:v6 forContext:v13];
    }
  }

LABEL_30:

  v23 = *MEMORY[0x277D85DE8];
}

- (void)systemConfigurationChanged:(id)a3 withConfiguration:(id)a4
{
  v37 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (IMOSLoggingEnabled())
  {
    v8 = OSLogHandleForIMFoundationCategory();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
    {
      v33 = 136315394;
      v34 = "[CKLazuliEnablementManager systemConfigurationChanged:withConfiguration:]";
      v35 = 2112;
      v36 = v7;
      _os_log_impl(&dword_243BE5000, v8, OS_LOG_TYPE_INFO, "[%s] New configuration for context: %@", &v33, 0x16u);
    }
  }

  if (v7)
  {
    v9 = [v7 operationStatus];
    v10 = v9;
    if (v9)
    {
      v11 = [v9 switchState];
      if ([v7 featureDisabledByProfile])
      {
        if (IMOSLoggingEnabled())
        {
          v12 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_243BE5000, v12, OS_LOG_TYPE_INFO, "Feature is disabled by profile.", &v33, 2u);
          }
        }
      }

      else if (!v11)
      {
        if (IMOSLoggingEnabled())
        {
          v31 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_243BE5000, v31, OS_LOG_TYPE_INFO, "Lazuli is enabled.", &v33, 2u);
          }
        }

        v14 = 1;
        goto LABEL_18;
      }

      v14 = 0;
LABEL_18:
      v15 = [(CKLazuliEnablementManager *)self _enablementCacheObjectForContext:v6];
      v16 = v15;
      if (v15 && v14 != [v15 BOOLValue])
      {
        if (IMOSLoggingEnabled())
        {
          v17 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_243BE5000, v17, OS_LOG_TYPE_INFO, "RCS enablement cache was out of date, updating the cache.", &v33, 2u);
          }
        }

        v18 = [MEMORY[0x277CCABB0] numberWithBool:v14];
        [(CKLazuliEnablementManager *)self _enablementCacheSetObject:v18 forContext:v6];
      }

      v19 = [(CKLazuliEnablementManager *)self rcsMessagingCapabilitiesForContext:v6];
      v20 = [v7 messagingCapabilities];

      v21 = [(CKLazuliEnablementManager *)self isRCSDisabledByProfileForSubscriptionContext:v6];
      if (v21 != [v7 featureDisabledByProfile])
      {
        if (IMOSLoggingEnabled())
        {
          v22 = OSLogHandleForIMFoundationCategory();
          if (os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
          {
            LOWORD(v33) = 0;
            _os_log_impl(&dword_243BE5000, v22, OS_LOG_TYPE_INFO, "Feature disabled by profile state changed.", &v33, 2u);
          }
        }

        v23 = [MEMORY[0x277CCAB98] defaultCenter];
        [v23 __mainThreadPostNotificationName:@"CNFLazuliDisabledByProfileChangedNotification" object:self];
      }

      if (IMOSLoggingEnabled())
      {
        v24 = OSLogHandleForIMFoundationCategory();
        if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
        {
          LOWORD(v33) = 0;
          _os_log_impl(&dword_243BE5000, v24, OS_LOG_TYPE_INFO, "contextToConfiguration cache was out of date, updating the cache.", &v33, 2u);
        }
      }

      [(CKLazuliEnablementManager *)self _cacheSetConfigurationForContext:v7 forContext:v6];
      if (v19 != v20)
      {
        v25 = [MEMORY[0x277CCAB98] defaultCenter];
        [v25 __mainThreadPostNotificationName:@"CNFLazuliMessagesCapabilitiesStateChangedNotification" object:self];
      }

      v26 = [(CKLazuliEnablementManager *)self _registrationCacheObjectForContext:v6];
      v27 = v26;
      if (v26)
      {
        v28 = [v26 integerValue];
        if (v28 != [v10 registrationState])
        {
          v29 = [MEMORY[0x277CCABB0] numberWithInteger:{-[NSObject registrationState](v10, "registrationState")}];
          [(CKLazuliEnablementManager *)self _registrationCacheSetObject:v29 forContext:v6];

          v30 = [MEMORY[0x277CCAB98] defaultCenter];
          [v30 __mainThreadPostNotificationName:@"CNFLazuliRegistrationStateChangedNotification" object:self];
        }
      }

      goto LABEL_48;
    }

    if (IMOSLoggingEnabled())
    {
      v13 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
      {
        LOWORD(v33) = 0;
        _os_log_impl(&dword_243BE5000, v13, OS_LOG_TYPE_INFO, "Operation status is nil", &v33, 2u);
      }
    }
  }

  else
  {
    v10 = IMLogHandleForCategory();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [CKLazuliEnablementManager systemConfigurationChanged:v10 withConfiguration:?];
    }
  }

LABEL_48:

  v32 = *MEMORY[0x277D85DE8];
}

- (id)_cacheGetConfigurationForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D1A8F8];
  v6 = [v4 phoneNumber];
  v7 = [v4 labelID];
  v8 = [v5 IMUniqueIdentifierForPhoneNumber:v6 simID:v7];

  if (v8)
  {
    v9 = [(CKLazuliEnablementManager *)self contextToConfigurationCache];
    v10 = [v9 objectForKey:v8];

    if (v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_INFO, "Returning cached system configuration (%@) for unique identifier %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_cacheSetConfigurationForContext:(id)a3 forContext:(id)a4
{
  v12 = a3;
  v6 = MEMORY[0x277D1A8F8];
  v7 = a4;
  v8 = [v7 phoneNumber];
  v9 = [v7 labelID];

  v10 = [v6 IMUniqueIdentifierForPhoneNumber:v8 simID:v9];

  if (v10)
  {
    v11 = [(CKLazuliEnablementManager *)self contextToConfigurationCache];
    [v11 setObject:v12 forKey:v10];
  }
}

- (id)fetchSystemConfiguration:(id)a3
{
  v4 = a3;
  v5 = [(CKLazuliEnablementManager *)self _cacheGetConfigurationForContext:v4];
  if (!v5)
  {
    v6 = [(CKLazuliEnablementManager *)self client];
    v10 = 0;
    v5 = [v6 getSystemConfiguration:v4 withError:&v10];
    v7 = v10;

    if (v7)
    {
      v8 = IMLogHandleForCategory();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [(CKLazuliEnablementManager *)v7 fetchSystemConfiguration:v8];
      }

      v5 = 0;
    }

    else
    {
      [(CKLazuliEnablementManager *)self _cacheSetConfigurationForContext:v5 forContext:v4];
    }
  }

  return v5;
}

- (id)_enablementCacheObjectForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D1A8F8];
  v6 = [v4 phoneNumber];
  v7 = [v4 labelID];
  v8 = [v5 IMUniqueIdentifierForPhoneNumber:v6 simID:v7];

  if (v8)
  {
    v9 = [(CKLazuliEnablementManager *)self enablementCache];
    v10 = [v9 objectForKey:v8];

    if (v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_INFO, "Returning cached enablement value (%@) for unique identifier %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_enablementCacheSetObject:(id)a3 forContext:(id)a4
{
  v12 = a3;
  v6 = MEMORY[0x277D1A8F8];
  v7 = a4;
  v8 = [v7 phoneNumber];
  v9 = [v7 labelID];

  v10 = [v6 IMUniqueIdentifierForPhoneNumber:v8 simID:v9];

  if (v10)
  {
    v11 = [(CKLazuliEnablementManager *)self enablementCache];
    [v11 setObject:v12 forKey:v10];
  }
}

- (id)_registrationCacheObjectForContext:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = MEMORY[0x277D1A8F8];
  v6 = [v4 phoneNumber];
  v7 = [v4 labelID];
  v8 = [v5 IMUniqueIdentifierForPhoneNumber:v6 simID:v7];

  if (v8)
  {
    v9 = [(CKLazuliEnablementManager *)self registrationStateCache];
    v10 = [v9 objectForKey:v8];

    if (v10 && IMOSLoggingEnabled())
    {
      v11 = OSLogHandleForIMFoundationCategory();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
      {
        v14 = 138412546;
        v15 = v10;
        v16 = 2112;
        v17 = v8;
        _os_log_impl(&dword_243BE5000, v11, OS_LOG_TYPE_INFO, "Returning cached registrationState value (%@) for unique identifier %@", &v14, 0x16u);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];

  return v10;
}

- (void)_registrationCacheSetObject:(id)a3 forContext:(id)a4
{
  v12 = a3;
  v6 = MEMORY[0x277D1A8F8];
  v7 = a4;
  v8 = [v7 phoneNumber];
  v9 = [v7 labelID];

  v10 = [v6 IMUniqueIdentifierForPhoneNumber:v8 simID:v9];

  if (v10)
  {
    v11 = [(CKLazuliEnablementManager *)self registrationStateCache];
    [v11 setObject:v12 forKey:v10];
  }
}

- (void)_setRCSBusinessMessagingEnabledForSubscription:(uint64_t)a1 enabled:(NSObject *)a2 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243BE5000, a2, OS_LOG_TYPE_ERROR, "Error enabling/disabling RCS business messaging: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)fetchSystemConfiguration:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_243BE5000, a2, OS_LOG_TYPE_ERROR, "Error getting systemConfiguration: %@", &v3, 0xCu);
  v2 = *MEMORY[0x277D85DE8];
}

@end