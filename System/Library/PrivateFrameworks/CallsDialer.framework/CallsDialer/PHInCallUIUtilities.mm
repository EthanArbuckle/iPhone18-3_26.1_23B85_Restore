@interface PHInCallUIUtilities
+ (BOOL)hasMultipleSenderIdentities;
+ (BOOL)isExplicitTransferSupportedForSubscriptionLabelIdentifier:(id)identifier;
+ (BOOL)layoutIsLocked:(id)locked;
+ (BOOL)shouldHideSensitiveUI;
+ (BOOL)shouldRequestPasscodeUnlockForMMICode:(id)code;
+ (id)fbsOrientationObserver;
+ (id)handleNavigationControllerIfNecessary:(id)necessary;
+ (id)sharedInstance;
+ (id)telephonyClient;
+ (int64_t)deviceOrientationForBSInterfaceOrientation:(int64_t)orientation;
+ (int64_t)frontboardOrientation;
+ (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)orientation;
- (PHInCallUIUtilities)init;
- (uint64_t)init;
- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context;
@end

@implementation PHInCallUIUtilities

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __37__PHInCallUIUtilities_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance_onceToken != -1)
  {
    dispatch_once(&sharedInstance_onceToken, block);
  }

  v2 = sharedInstance_sInCallUIUtilities;

  return v2;
}

uint64_t __37__PHInCallUIUtilities_sharedInstance__block_invoke(uint64_t a1)
{
  sharedInstance_sInCallUIUtilities = objc_alloc_init(*(a1 + 32));

  return MEMORY[0x2821F96F8]();
}

- (PHInCallUIUtilities)init
{
  v10.receiver = self;
  v10.super_class = PHInCallUIUtilities;
  v2 = [(PHInCallUIUtilities *)&v10 init];
  if (v2)
  {
    v3 = [MEMORY[0x277D0AD08] sharedMonitorForDisplayType:0];
    v4 = objc_opt_class();
    currentLayout = [v3 currentLayout];
    if ([v4 layoutIsLocked:currentLayout])
    {
      v6 = 1;
    }

    else
    {
      v12 = 0;
      v13 = &v12;
      v14 = 0x2020000000;
      v7 = getSBSGetScreenLockStatusSymbolLoc_ptr;
      v15 = getSBSGetScreenLockStatusSymbolLoc_ptr;
      if (!getSBSGetScreenLockStatusSymbolLoc_ptr)
      {
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __getSBSGetScreenLockStatusSymbolLoc_block_invoke;
        v11[3] = &unk_278D74BD8;
        v11[4] = &v12;
        __getSBSGetScreenLockStatusSymbolLoc_block_invoke(v11);
        v7 = v13[3];
      }

      _Block_object_dispose(&v12, 8);
      if (!v7)
      {
        v9 = [PHInCallUIUtilities init];
        _Block_object_dispose(&v12, 8);
        _Unwind_Resume(v9);
      }

      v6 = v7(0) != 0;
    }

    v2->_springBoardLocked = v6;

    [v3 addObserver:v2];
  }

  return v2;
}

+ (id)telephonyClient
{
  if (telephonyClient_onceToken != -1)
  {
    +[PHInCallUIUtilities telephonyClient];
  }

  v3 = telephonyClient_telephonyClient;

  return v3;
}

uint64_t __38__PHInCallUIUtilities_telephonyClient__block_invoke()
{
  v0 = objc_alloc(MEMORY[0x277CC37B0]);
  telephonyClient_telephonyClient = [v0 initWithQueue:MEMORY[0x277D85CD0]];

  return MEMORY[0x2821F96F8]();
}

+ (int64_t)interfaceOrientationForDeviceOrientation:(int64_t)orientation
{
  if ((orientation - 2) >= 3)
  {
    return 1;
  }

  else
  {
    return orientation;
  }
}

+ (int64_t)deviceOrientationForBSInterfaceOrientation:(int64_t)orientation
{
  if ((orientation - 2) > 2)
  {
    return 1;
  }

  else
  {
    return qword_2429ED228[orientation - 2];
  }
}

+ (id)handleNavigationControllerIfNecessary:(id)necessary
{
  necessaryCopy = necessary;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    topViewController = [necessaryCopy topViewController];
  }

  else
  {
    topViewController = necessaryCopy;
  }

  v5 = topViewController;

  return v5;
}

+ (BOOL)shouldRequestPasscodeUnlockForMMICode:(id)code
{
  v40 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  if ([codeCopy isEqualToString:@"*#06#"])
  {
    telephonyClient = [self telephonyClient];
    v34 = 0;
    v6 = [telephonyClient getSubscriptionInfoWithError:&v34];
    v7 = v34;

    if (v7)
    {
      v28 = PHDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:];
      }
    }

    else
    {
      subscriptions = [v6 subscriptions];
      v10 = [subscriptions count];

      if (v10)
      {
        v28 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:2];
        v30 = 0u;
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        subscriptions2 = [v6 subscriptions];
        v12 = [subscriptions2 countByEnumeratingWithState:&v30 objects:v39 count:16];
        if (v12)
        {
          v13 = v12;
          v26 = v6;
          v27 = codeCopy;
          v7 = 0;
          v14 = *v31;
          while (2)
          {
            for (i = 0; i != v13; ++i)
            {
              if (*v31 != v14)
              {
                objc_enumerationMutation(subscriptions2);
              }

              v16 = *(*(&v30 + 1) + 8 * i);
              if (([v16 isSimHidden] & 1) == 0)
              {
                telephonyClient2 = [self telephonyClient];
                v29 = v7;
                v18 = [telephonyClient2 copyCarrierBundleValueWithDefault:v16 key:@"ShowIMEIsInLockScreen" bundleType:v28 error:&v29];
                v19 = v29;

                if (v19)
                {
                  v20 = PHDefaultLog();
                  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412290;
                    *v36 = v19;
                    _os_log_error_impl(&dword_2429BC000, v20, OS_LOG_TYPE_ERROR, "Received error: %@ while querying -copyCarrierBundleValueWithDefault", buf, 0xCu);
                  }
                }

                else
                {
                  if (objc_opt_respondsToSelector())
                  {
                    bOOLValue = [v18 BOOLValue];
                  }

                  else
                  {
                    bOOLValue = 0;
                  }

                  v22 = PHDefaultLog();
                  if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
                  {
                    uuid = [v16 uuid];
                    *buf = 67109634;
                    *v36 = bOOLValue;
                    *&v36[4] = 2112;
                    *&v36[6] = v18;
                    v37 = 2112;
                    v38 = uuid;
                    _os_log_impl(&dword_2429BC000, v22, OS_LOG_TYPE_DEFAULT, "Received regionWantsPasscodeBypassForIMEI: %d from carrierBundleValue: %@ subscription: %@", buf, 0x1Cu);
                  }

                  if (bOOLValue)
                  {

                    v8 = 0;
                    v7 = 0;
                    goto LABEL_34;
                  }
                }

                v7 = v19;
              }
            }

            v13 = [subscriptions2 countByEnumeratingWithState:&v30 objects:v39 count:16];
            if (v13)
            {
              continue;
            }

            break;
          }

          v8 = 1;
LABEL_34:
          v6 = v26;
          codeCopy = v27;
        }

        else
        {
          v7 = 0;
          v8 = 1;
        }

        goto LABEL_37;
      }

      v28 = PHDefaultLog();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        +[PHInCallUIUtilities shouldRequestPasscodeUnlockForMMICode:];
      }

      v7 = 0;
    }

    v8 = 1;
LABEL_37:

    goto LABEL_38;
  }

  v7 = PHDefaultLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_2429BC000, v7, OS_LOG_TYPE_DEFAULT, "Code is not for IMEI, should request passcode unlock", buf, 2u);
  }

  v8 = 1;
LABEL_38:

  v24 = *MEMORY[0x277D85DE8];
  return v8;
}

+ (BOOL)shouldHideSensitiveUI
{
  v3 = [objc_alloc(MEMORY[0x277CBEBD0]) initWithSuiteName:@"com.apple.springboard"];
  if ([v3 BOOLForKey:@"SBSensitiveUIEnabled"])
  {
    LOBYTE(v4) = 0;
  }

  else
  {
    v4 = _UISolariumEnabled() ^ 1;
  }

  return [self isSpringBoardPasscodeLocked] & v4;
}

+ (BOOL)layoutIsLocked:(id)locked
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  elements = [locked elements];
  v4 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    v7 = *MEMORY[0x277D0ABA0];
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(elements);
        }

        identifier = [*(*(&v14 + 1) + 8 * i) identifier];
        v10 = [identifier isEqualToString:v7];

        if (v10)
        {
          v11 = 1;
          goto LABEL_11;
        }
      }

      v5 = [elements countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  v11 = 0;
LABEL_11:

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

+ (BOOL)hasMultipleSenderIdentities
{
  if (hasMultipleSenderIdentities_onceToken != -1)
  {
    +[PHInCallUIUtilities hasMultipleSenderIdentities];
  }

  prioritizedSenderIdentities = [hasMultipleSenderIdentities_telephonyProvider prioritizedSenderIdentities];
  v3 = [prioritizedSenderIdentities count] > 1;

  return v3;
}

void __50__PHInCallUIUtilities_hasMultipleSenderIdentities__block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x277D6EE28]);
  v0 = [v4 telephonyProvider];
  v1 = [v0 identifier];
  v2 = [v4 providerWithIdentifier:v1];
  v3 = hasMultipleSenderIdentities_telephonyProvider;
  hasMultipleSenderIdentities_telephonyProvider = v2;
}

+ (id)fbsOrientationObserver
{
  if (fbsOrientationObserver_onceToken != -1)
  {
    +[PHInCallUIUtilities fbsOrientationObserver];
  }

  v3 = fbsOrientationObserver_sFBSOrientationObserver;

  return v3;
}

uint64_t __45__PHInCallUIUtilities_fbsOrientationObserver__block_invoke()
{
  fbsOrientationObserver_sFBSOrientationObserver = objc_alloc_init(MEMORY[0x277D0AD80]);

  return MEMORY[0x2821F96F8]();
}

+ (BOOL)isExplicitTransferSupportedForSubscriptionLabelIdentifier:(id)identifier
{
  v47 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  telephonyClient = [self telephonyClient];
  v39 = 0;
  v6 = [telephonyClient getSubscriptionInfoWithError:&v39];
  v7 = v39;

  if (v7)
  {
    v33 = PHDefaultLog();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
    {
      +[PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:];
    }

    goto LABEL_30;
  }

  subscriptions = [v6 subscriptions];
  v9 = [subscriptions count];

  v10 = PHDefaultLog();
  v11 = v10;
  if (!v9)
  {
    v33 = v10;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      +[PHInCallUIUtilities isExplicitTransferSupportedForSubscriptionLabelIdentifier:];
    }

    goto LABEL_29;
  }

  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    subscriptions2 = [v6 subscriptions];
    *buf = 138412290;
    v41 = subscriptions2;
    _os_log_impl(&dword_2429BC000, v11, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: all the subscriptions are: %@", buf, 0xCu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  subscriptions3 = [v6 subscriptions];
  v14 = [subscriptions3 countByEnumeratingWithState:&v35 objects:v46 count:16];
  v33 = subscriptions3;
  if (!v14)
  {
LABEL_29:
    v7 = 0;
LABEL_30:
    v28 = 0;
    goto LABEL_31;
  }

  v15 = v14;
  selfCopy = self;
  v16 = 0;
  v17 = *v36;
  v31 = identifierCopy;
  while (2)
  {
    for (i = 0; i != v15; ++i)
    {
      if (*v36 != v17)
      {
        objc_enumerationMutation(subscriptions3);
      }

      v19 = *(*(&v35 + 1) + 8 * i);
      v20 = PHDefaultLog();
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v41 = v19;
        _os_log_impl(&dword_2429BC000, v20, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: checking subscription: %@", buf, 0xCu);
      }

      if (([v19 isSimHidden] & 1) == 0)
      {
        labelID = [v19 labelID];
        v22 = [labelID isEqualToString:identifierCopy];

        if (v22)
        {
          v23 = [objc_alloc(MEMORY[0x277CC3620]) initWithBundleType:1];
          telephonyClient2 = [selfCopy telephonyClient];
          v34 = v16;
          v25 = [telephonyClient2 copyCarrierBundleValue:v19 keyHierarchy:&unk_285537D70 bundleType:v23 error:&v34];
          v7 = v34;

          objc_opt_class();
          if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
          {
            bOOLValue = [v25 BOOLValue];
          }

          else
          {
            bOOLValue = 0;
          }

          v27 = PHDefaultLog();
          if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 138412802;
            v41 = v25;
            v42 = 2112;
            v43 = v19;
            v44 = 2112;
            v45 = v7;
            _os_log_impl(&dword_2429BC000, v27, OS_LOG_TYPE_DEFAULT, "ShowExplicitCallTransferButton: retrieved ShowExplicitCallTransferButton value %@ for subscription %@ with error %@", buf, 0x20u);
          }

          if (bOOLValue)
          {
            v28 = 1;
            identifierCopy = v31;
            goto LABEL_31;
          }

          v16 = v7;
          identifierCopy = v31;
          subscriptions3 = v33;
        }
      }
    }

    v15 = [subscriptions3 countByEnumeratingWithState:&v35 objects:v46 count:16];
    if (v15)
    {
      continue;
    }

    break;
  }

  v28 = 0;
  v7 = v16;
LABEL_31:

  v29 = *MEMORY[0x277D85DE8];
  return v28;
}

+ (int64_t)frontboardOrientation
{
  fbsOrientationObserver = [self fbsOrientationObserver];
  activeInterfaceOrientation = [fbsOrientationObserver activeInterfaceOrientation];
  if ((activeInterfaceOrientation - 1) > 3)
  {
    v4 = 0;
  }

  else
  {
    v4 = qword_2429ED240[activeInterfaceOrientation - 1];
  }

  return v4;
}

- (void)layoutMonitor:(id)monitor didUpdateDisplayLayout:(id)layout withContext:(id)context
{
  layoutCopy = layout;
  v7 = [objc_opt_class() layoutIsLocked:layoutCopy];

  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __92__PHInCallUIUtilities_Workaround50930227__layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke;
  v8[3] = &unk_278D74A98;
  v8[4] = self;
  v9 = v7;
  dispatch_async(MEMORY[0x277D85CD0], v8);
}

void __92__PHInCallUIUtilities_Workaround50930227__layoutMonitor_didUpdateDisplayLayout_withContext___block_invoke(uint64_t a1)
{
  if (*(a1 + 40) != [*(a1 + 32) isSpringBoardLocked])
  {
    [*(a1 + 32) setSpringBoardLocked:?];
    v2 = [MEMORY[0x277CCAB98] defaultCenter];
    [v2 postNotificationName:@"PHLockScreenStatusChangedNotification" object:*(a1 + 32)];
  }
}

- (uint64_t)init
{
  dlerror();
  v0 = abort_report_np();
  return +[(PHInCallUIUtilities *)v0];
}

+ (void)shouldRequestPasscodeUnlockForMMICode:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Received error: %@ while querying -getSubscriptionInfoWithError", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)shouldRequestPasscodeUnlockForMMICode:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "Received subscriptionInfo: %@ with no subscriptions", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isExplicitTransferSupportedForSubscriptionLabelIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "ShowExplicitCallTransferButton: received error: %@ while querying -getSubscriptionInfoWithError", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

+ (void)isExplicitTransferSupportedForSubscriptionLabelIdentifier:.cold.2()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_0(&dword_2429BC000, v0, v1, "ShowExplicitCallTransferButton: received subscriptionInfo: %@ with no subscriptions", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end