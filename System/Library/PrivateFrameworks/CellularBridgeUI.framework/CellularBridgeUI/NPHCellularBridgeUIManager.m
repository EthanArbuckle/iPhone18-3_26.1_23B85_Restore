@interface NPHCellularBridgeUIManager
+ (BOOL)_isSubscriptionInUse:(id)a3;
+ (id)sharedInstance;
+ (void)_presentAirplaneModeOnAlertOnViewController:(id)a3;
+ (void)_presentCellularRequiredModeAlertOnViewController:(id)a3;
+ (void)_presentErrorTitle:(id)a3 onViewController:(id)a4 withActionTitle:(id)a5 actionHandler:(id)a6;
+ (void)_presentErrorTitled:(id)a3 withMessage:(id)a4 onViewController:(id)a5;
+ (void)presentCellularError:(id)a3 onViewController:(id)a4;
- (BOOL)_isCarrierSetupFlowUnsupportedForServiceSubscription:(id)a3;
- (BOOL)_isPersistentError:(id)a3;
- (BOOL)_isSetupBlockingError:(id)a3;
- (BOOL)allCompanionSIMsMissing;
- (BOOL)cellularPlanIsSetUp;
- (BOOL)isAnyCellularPlanActivating;
- (BOOL)isCarrierSetupFlowUnsupported;
- (BOOL)isGeminiSetup;
- (BOOL)isTinkerCrossCarrierSetup;
- (BOOL)shouldAllowUserToAddOrSetUpPlan;
- (BOOL)shouldAllowUserToTransferPlanFromDeviceWithCSN:(id)a3;
- (BOOL)shouldOfferRemotePlan;
- (BOOL)shouldOfferTrialPlan;
- (NPHCellularBridgeUIManager)init;
- (NSArray)serviceSubscriptionsInUse;
- (NSArray)serviceSubscriptionsOfferingRemotePlan;
- (NSArray)serviceSubscriptionsOfferingTrialPlan;
- (NSArray)serviceSubscriptionsShouldShowAddNewRemotePlan;
- (NSArray)serviceSubscriptionsToOfferUser;
- (NSString)trialPlanType;
- (id)_activeDeviceCSNList;
- (id)_currentDeviceCSN;
- (id)_serviceSubscriptionInfoForSubscriptionContext:(id)a3;
- (id)_trialPlanTypeForContext:(id)a3;
- (id)carrierNameForSubscription:(id)a3;
- (id)carrierPhoneNumberForSubscription:(id)a3;
- (id)cellularPlanRequiringPreInstallConsent;
- (id)cellularPlans;
- (id)cellularUseErrors;
- (id)displayNameForCellularPlan:(id)a3;
- (id)formattedPhoneNumberForSubscription:(id)a3;
- (id)lteOverrideForSubscription:(id)a3;
- (id)simLabelForSubscription:(id)a3;
- (id)subscriptionContextForCellularPlanItem:(id)a3;
- (id)userConsentMessageForConsentType:(int64_t)a3 relevantPlanItem:(id)a4;
- (int64_t)_minMajorWatchOSVersionForSubscription:(id)a3;
- (int64_t)consentRequiredRelevantCellularPlanItem:(id *)a3;
- (void)_ctCellularPlanInfoDidChange:(id)a3;
- (void)_ctCellularRemoteProvisioningDidBecomeAvailable:(id)a3;
- (void)_localPlanInfoDidChange:(id)a3;
- (void)_nrPairedWatchDidBecomeActive;
- (void)_prePromptForUserConsentIfNecessary:(id)a3;
- (void)_prePromptUserForConsentTextType:(int64_t)a3 relevantPlanItem:(id)a4 completionBlock:(id)a5;
- (void)_promptForUserConsentForCarrierWebsiteIfNecessary:(id)a3 withCompletion:(id)a4;
- (void)_setUpCellularPlanDirectWithContext:(id)a3 onViewController:(id)a4 withCompletion:(id)a5;
- (void)_setUpCellularPlanWithActivationCodeOnViewController:(id)a3 withContext:(id)a4 withCompletion:(id)a5 codelessActivationBlock:(id)a6;
- (void)_updateCoreTelephonyClientInfo;
- (void)_updateIsRemotePlanCapable;
- (void)_updateSIMStatusForAllSubscriptionContexts;
- (void)_updateSIMStatusForSubscriptionContext:(id)a3 withStatus:(id)a4;
- (void)_updateServiceSubscriptionInfo:(id)a3;
- (void)_updateShouldShowAddNewRemotePlan;
- (void)_updateShouldWarnAboutLTEMayImpactService;
- (void)_updateTransferableCellularPlanFromDeviceWithCSN:(id)a3;
- (void)activeSubscriptionsDidChange;
- (void)dealloc;
- (void)fetchTinkerFamilyMember;
- (void)finishRemoteProvisioning;
- (void)installPendingCellularPlan:(id)a3 withCompletion:(id)a4;
- (void)setUpCellularPlanOnViewController:(id)a3 withContext:(id)a4 withCompletion:(id)a5;
- (void)simSetupFlowCompleted:(unint64_t)a3;
- (void)simStatusDidChange:(id)a3 status:(id)a4;
- (void)startRemoteProvisioning;
- (void)subscriptionInfoDidChange;
- (void)transferCellularPlanOnViewController:(id)a3 withCompletion:(id)a4;
@end

@implementation NPHCellularBridgeUIManager

+ (id)sharedInstance
{
  if (sharedInstance_onceToken != -1)
  {
    +[NPHCellularBridgeUIManager sharedInstance];
  }

  v3 = sharedInstance_sNPHCellularBridgeUIManager;

  return v3;
}

void __44__NPHCellularBridgeUIManager_sharedInstance__block_invoke()
{
  v0 = objc_alloc_init(NPHCellularBridgeUIManager);
  v1 = sharedInstance_sNPHCellularBridgeUIManager;
  sharedInstance_sNPHCellularBridgeUIManager = v0;

  v2 = [MEMORY[0x277CCAB98] defaultCenter];
  [v2 addObserver:sharedInstance_sNPHCellularBridgeUIManager selector:sel__ctCellularPlanInfoDidChange_ name:*MEMORY[0x277CF9688] object:0];

  v3 = [MEMORY[0x277CCAB98] defaultCenter];
  [v3 addObserver:sharedInstance_sNPHCellularBridgeUIManager selector:sel__localPlanInfoDidChange_ name:*MEMORY[0x277CF96A8] object:0];

  v4 = [MEMORY[0x277CCAB98] defaultCenter];
  [v4 addObserver:sharedInstance_sNPHCellularBridgeUIManager selector:sel__ctCellularRemoteProvisioningDidBecomeAvailable_ name:*MEMORY[0x277CF96B8] object:0];

  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  v6 = CFStringCreateWithCStringNoCopy(0, [MEMORY[0x277D37B40] watchDidBecomeActive], 0x8000100u, 0);
  CFNotificationCenterAddObserver(DarwinNotifyCenter, sharedInstance_sNPHCellularBridgeUIManager, _NRPairedWatchDidBecomeActive, v6, 0, CFNotificationSuspensionBehaviorDeliverImmediately);

  CFRelease(v6);
}

- (NPHCellularBridgeUIManager)init
{
  v13.receiver = self;
  v13.super_class = NPHCellularBridgeUIManager;
  v2 = [(NPHCellularBridgeUIManager *)&v13 init];
  v3 = v2;
  if (v2)
  {
    v2->_outstandingPlanFlowsIdentified = 0x7FFFFFFFFFFFFFFFLL;
    v4 = objc_opt_new();
    outstandingRemotePlanItemsRequestedForCSN = v3->_outstandingRemotePlanItemsRequestedForCSN;
    v3->_outstandingRemotePlanItemsRequestedForCSN = v4;

    v6 = objc_opt_new();
    serviceSubscriptionInfoList = v3->_serviceSubscriptionInfoList;
    v3->_serviceSubscriptionInfoList = v6;

    [(NPHCellularBridgeUIManager *)v3 setTransferableRemotePlan:0];
    [(NPHCellularBridgeUIManager *)v3 setTransferableRemoteDeviceID:0];
    v8 = objc_alloc(MEMORY[0x277CC37B0]);
    v9 = dispatch_get_global_queue(0, 0);
    v10 = [v8 initWithQueue:v9];
    coreTelephonyClient = v3->_coreTelephonyClient;
    v3->_coreTelephonyClient = v10;

    [(CoreTelephonyClient *)v3->_coreTelephonyClient setDelegate:v3];
    [(NPHCellularBridgeUIManager *)v3 _updateCoreTelephonyClientInfo];
    [(NPHCellularBridgeUIManager *)v3 fetchTinkerFamilyMember];
  }

  return v3;
}

- (void)fetchTinkerFamilyMember
{
  v17 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v14 = "[NPHCellularBridgeUIManager fetchTinkerFamilyMember]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v4 = [MEMORY[0x277CF3468] sharedInstance];
  v5 = [v4 cachedTinkerFamilyMemeber];

  if (v5)
  {
    v6 = nph_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v14 = "[NPHCellularBridgeUIManager fetchTinkerFamilyMember]";
      v15 = 2112;
      v16 = v5;
      _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s: %@", buf, 0x16u);
    }

    v7 = [v5 firstName];
    v8 = [v7 localizedCapitalizedString];
    [(NPHCellularBridgeUIManager *)self setTinkerFamilyMemberFirstName:v8];
  }

  else
  {
    objc_initWeak(buf, self);
    v9 = [MEMORY[0x277CF3468] sharedInstance];
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke;
    v11[3] = &unk_278DACD40;
    objc_copyWeak(&v12, buf);
    [v9 getActiveTinkerFamilyMemberWithCompletion:v11];

    objc_destroyWeak(&v12);
    objc_destroyWeak(buf);
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (void)_updateCoreTelephonyClientInfo
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke;
  v3[3] = &unk_278DACA90;
  v3[4] = self;
  [(CoreTelephonyClient *)coreTelephonyClient getSubscriptionInfo:v3];
}

void __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v14 = "[NPHCellularBridgeUIManager _updateCoreTelephonyClientInfo]_block_invoke";
    v15 = 2112;
    v16 = v6;
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - error:%@ subscriptionInfo:%@", buf, 0x20u);
  }

  if (v6)
  {
    v8 = nph_general_log();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke_cold_1();
    }
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke_110;
  v11[3] = &unk_278DAC898;
  v11[4] = *(a1 + 32);
  v12 = v5;
  v9 = v5;
  nph_ensure_on_main_queue(v11);

  v10 = *MEMORY[0x277D85DE8];
}

void __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log();
  WeakRetained = v7;
  if (!v5 || v6)
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke_cold_1();
    }
  }

  else
  {
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      v12 = 136315394;
      v13 = "[NPHCellularBridgeUIManager fetchTinkerFamilyMember]_block_invoke";
      v14 = 2112;
      v15 = v5;
      _os_log_impl(&dword_243333000, WeakRetained, OS_LOG_TYPE_DEFAULT, "%s: %@", &v12, 0x16u);
    }

    WeakRetained = objc_loadWeakRetained((a1 + 32));
    v9 = [v5 firstName];
    v10 = [v9 localizedCapitalizedString];
    [WeakRetained setTinkerFamilyMemberFirstName:v10];
  }

  v11 = *MEMORY[0x277D85DE8];
}

void __53__NPHCellularBridgeUIManager_fetchTinkerFamilyMember__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateSIMStatusForAllSubscriptionContexts
{
  v14 = *MEMORY[0x277D85DE8];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v3 = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v4 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v10;
    do
    {
      v7 = 0;
      do
      {
        if (*v10 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [(CoreTelephonyClient *)self->_coreTelephonyClient getSIMStatus:MEMORY[0x277D85DD0] completion:3221225472, __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke, &unk_278DACA68, self, *(*(&v9 + 1) + 8 * v7++)];
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v9 objects:v13 count:16];
    }

    while (v5);
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (id)_activeDeviceCSNList
{
  v27 = *MEMORY[0x277D85DE8];
  v2 = objc_opt_new();
  v3 = [MEMORY[0x277D37B50] sharedInstance];
  v4 = [v3 getDevicesExcluding:4];

  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  v5 = v4;
  v6 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
  if (v6)
  {
    v8 = v6;
    v9 = *v19;
    v10 = *MEMORY[0x277D37B60];
    *&v7 = 138412546;
    v17 = v7;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v19 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(*(&v18 + 1) + 8 * i);
        v13 = [v12 valueForProperty:{v10, v17, v18}];
        v14 = nph_general_log();
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v17;
          v23 = v13;
          v24 = 2112;
          v25 = v12;
          _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "CSN:%@ device:%@", buf, 0x16u);
        }

        if (v13)
        {
          [v2 addObject:v13];
        }
      }

      v8 = [v5 countByEnumeratingWithState:&v18 objects:v26 count:16];
    }

    while (v8);
  }

  v15 = *MEMORY[0x277D85DE8];

  return v2;
}

void __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke(uint64_t a1, void *a2, void *a3)
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a2;
  v6 = a3;
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v16 = "[NPHCellularBridgeUIManager _updateSIMStatusForAllSubscriptionContexts]_block_invoke";
    v17 = 2112;
    v18 = v5;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - status:%@", buf, 0x16u);
  }

  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108;
  v11[3] = &unk_278DACA40;
  v12 = v6;
  v13 = *(a1 + 32);
  v14 = v5;
  v8 = v5;
  v9 = v6;
  nph_ensure_on_main_queue(v11);

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108(uint64_t a1)
{
  v2 = (a1 + 32);
  if (*(a1 + 32))
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108_cold_1(v2);
    }
  }

  return [*(a1 + 40) _updateSIMStatusForSubscriptionContext:*(a1 + 48) withStatus:*(a1 + 56)];
}

- (void)dealloc
{
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterRemoveEveryObserver(DarwinNotifyCenter, self);
  v4.receiver = self;
  v4.super_class = NPHCellularBridgeUIManager;
  [(NPHCellularBridgeUIManager *)&v4 dealloc];
}

- (void)simStatusDidChange:(id)a3 status:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v16 = "[NPHCellularBridgeUIManager simStatusDidChange:status:]";
    v17 = 2112;
    v18 = v6;
    v19 = 2112;
    v20 = v7;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s context:%@ status:%@", buf, 0x20u);
  }

  v12[0] = MEMORY[0x277D85DD0];
  v12[1] = 3221225472;
  v12[2] = __56__NPHCellularBridgeUIManager_simStatusDidChange_status___block_invoke;
  v12[3] = &unk_278DAC8E8;
  v12[4] = self;
  v13 = v6;
  v14 = v7;
  v9 = v7;
  v10 = v6;
  nph_ensure_on_main_queue(v12);

  v11 = *MEMORY[0x277D85DE8];
}

- (void)subscriptionInfoDidChange
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NPHCellularBridgeUIManager subscriptionInfoDidChange]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self _updateCoreTelephonyClientInfo];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)activeSubscriptionsDidChange
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NPHCellularBridgeUIManager activeSubscriptionsDidChange]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self _updateCoreTelephonyClientInfo];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateSIMStatusForSubscriptionContext:(id)a3 withStatus:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v19 = 136315650;
    v20 = "[NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:]";
    v21 = 2112;
    v22 = v6;
    v23 = 2112;
    v24 = v7;
    _os_log_impl(&dword_243333000, v8, OS_LOG_TYPE_DEFAULT, "%s context:%@ status:%@", &v19, 0x20u);
  }

  if (!v6)
  {
    v9 = nph_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:];
    }
  }

  v10 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:v6];
  v11 = [v10 SIMStatus];
  v12 = [v11 isEqualToString:v7];

  if ((v12 & 1) == 0)
  {
    v13 = [v7 copy];
    [v10 setSIMStatus:v13];

    v14 = nph_general_log();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = [v10 SIMStatus];
      v19 = 136315394;
      v20 = "[NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:]";
      v21 = 2112;
      v22 = v15;
      _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionInfo.SIMStatus:%@", &v19, 0x16u);
    }

    v16 = nph_general_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v19 = 136315138;
      v20 = "[NPHCellularBridgeUIManager _updateSIMStatusForSubscriptionContext:withStatus:]";
      _os_log_impl(&dword_243333000, v16, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 4", &v19, 0xCu);
    }

    v17 = [MEMORY[0x277CCAB98] defaultCenter];
    [v17 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:self userInfo:0];
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (void)_localPlanInfoDidChange:(id)a3
{
  v11 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315394;
    v8 = "[NPHCellularBridgeUIManager _localPlanInfoDidChange:]";
    v9 = 2112;
    v10 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s: %@", &v7, 0x16u);
  }

  [(NPHCellularBridgeUIManager *)self _updateCoreTelephonyClientInfo];
  v6 = *MEMORY[0x277D85DE8];
}

- (id)_currentDeviceCSN
{
  v12 = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277D37B48] activeDevice];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager _currentDeviceCSN]";
    v10 = 2112;
    v11 = v2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s device:%@", &v8, 0x16u);
  }

  v4 = [v2 valueForProperty:*MEMORY[0x277D37B60]];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager _currentDeviceCSN]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s CSN:%@", &v8, 0x16u);
  }

  v6 = *MEMORY[0x277D85DE8];

  return v4;
}

- (void)_setUpCellularPlanDirectWithContext:(id)a3 onViewController:(id)a4 withCompletion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NPHCellularBridgeUIManager _setUpCellularPlanDirectWithContext:onViewController:withCompletion:]";
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_initWeak(buf, self);
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke;
  v16[3] = &unk_278DACAE0;
  objc_copyWeak(&v21, buf);
  v12 = v8;
  v17 = v12;
  v13 = v9;
  v18 = v13;
  v14 = v10;
  v19 = self;
  v20 = v14;
  [(NPHCellularBridgeUIManager *)self _prePromptForUserConsentIfNecessary:v16];

  objc_destroyWeak(&v21);
  objc_destroyWeak(buf);

  v15 = *MEMORY[0x277D85DE8];
}

void __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  WeakRetained = objc_loadWeakRetained((a1 + 64));
  v5 = *(a1 + 32);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke_2;
  v11[3] = &unk_278DACAB8;
  objc_copyWeak(v14, (a1 + 64));
  v6 = *(a1 + 40);
  v7 = *(a1 + 56);
  v8 = *(a1 + 32);
  *&v9 = *(a1 + 48);
  *(&v9 + 1) = v7;
  *&v10 = v6;
  *(&v10 + 1) = v8;
  v12 = v10;
  v13 = v9;
  v14[1] = a2;
  [WeakRetained _promptForUserConsentForCarrierWebsiteIfNecessary:v5 withCompletion:v11];

  objc_destroyWeak(v14);
}

void __98__NPHCellularBridgeUIManager__setUpCellularPlanDirectWithContext_onViewController_withCompletion___block_invoke_2(uint64_t a1, int a2)
{
  v25[5] = *MEMORY[0x277D85DE8];
  if (a2)
  {
    v3 = *(a1 + 32);
    WeakRetained = objc_loadWeakRetained((a1 + 64));
    [WeakRetained setHostViewController:v3];

    v5 = *(a1 + 56);
    v6 = objc_loadWeakRetained((a1 + 64));
    [v6 setHostCompletionBlock:v5];

    v7 = objc_loadWeakRetained((a1 + 64));
    v8 = [v7 _serviceSubscriptionInfoForSubscriptionContext:*(a1 + 40)];

    v24[0] = @"FlowTypeKey";
    v9 = [MEMORY[0x277CCABB0] numberWithInteger:7];
    v25[0] = v9;
    v24[1] = @"CarrierNameKey";
    v10 = [*(a1 + 48) carrierNameForSubscription:*(a1 + 40)];
    v11 = *(a1 + 40);
    v25[1] = v10;
    v25[2] = v11;
    v24[2] = @"SubscriptionContextKey";
    v24[3] = @"UserResponse";
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:*(a1 + 72)];
    v25[3] = v12;
    v24[4] = @"LiveIdEnabledKey";
    v13 = [MEMORY[0x277CCABB0] numberWithBool:{(objc_msgSend(v8, "planFlows") >> 6) & 1}];
    v25[4] = v13;
    v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:5];

    v15 = [MEMORY[0x277D49528] flowWithOptions:v14];
    v16 = objc_loadWeakRetained((a1 + 64));
    [v16 setFlow:v15];

    v17 = objc_loadWeakRetained((a1 + 64));
    v18 = [v17 flow];
    v19 = [v18 firstViewController];

    v20 = objc_loadWeakRetained((a1 + 64));
    v21 = [v20 flow];
    [v21 setDelegate:*(a1 + 48)];

    v22 = [objc_alloc(MEMORY[0x277D757A0]) initWithRootViewController:v19];
    [*(a1 + 32) presentViewController:v22 animated:1 completion:0];
  }

  v23 = *MEMORY[0x277D85DE8];
}

- (void)simSetupFlowCompleted:(unint64_t)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager simSetupFlowCompleted:]";
    v10 = 2048;
    v11 = a3;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s: %lu", &v8, 0x16u);
  }

  if ((IsCurrentDevicePairing() & 1) == 0)
  {
    v6 = [(NPHCellularBridgeUIManager *)self hostViewController];
    [v6 dismissViewControllerAnimated:1 completion:0];
  }

  [(NPHCellularBridgeUIManager *)self setFlow:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)_setUpCellularPlanWithActivationCodeOnViewController:(id)a3 withContext:(id)a4 withCompletion:(id)a5 codelessActivationBlock:(id)a6
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = a6;
  v13 = +[NPHCellularBridgeUIManager sharedInstance];
  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __134__NPHCellularBridgeUIManager__setUpCellularPlanWithActivationCodeOnViewController_withContext_withCompletion_codelessActivationBlock___block_invoke;
  v18[3] = &unk_278DACB08;
  v21 = v11;
  v22 = v12;
  v19 = v10;
  v20 = v9;
  v14 = v9;
  v15 = v10;
  v16 = v12;
  v17 = v11;
  [v13 _prePromptForUserConsentIfNecessary:v18];
}

void __134__NPHCellularBridgeUIManager__setUpCellularPlanWithActivationCodeOnViewController_withContext_withCompletion_codelessActivationBlock___block_invoke(uint64_t a1, uint64_t a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315138;
    v9 = "[NPHCellularBridgeUIManager _setUpCellularPlanWithActivationCodeOnViewController:withContext:withCompletion:codelessActivationBlock:]_block_invoke";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v8, 0xCu);
  }

  v5 = objc_alloc_init(NPHBSCellularFauxCardViewController);
  [(NPHBSCellularFauxCardViewController *)v5 setCompletion:*(a1 + 48)];
  [(NPHBSCellularFauxCardViewController *)v5 setCodelessActivationBlock:*(a1 + 56)];
  [(NPHBSCellularFauxCardViewController *)v5 setUserConsentResponse:a2];
  [(NPHBSCellularFauxCardViewController *)v5 setSubscriptionContext:*(a1 + 32)];
  v6 = objc_alloc_init(NPHBSCellularFauxCardNavigationController);
  [(NPHBSCellularFauxCardNavigationController *)v6 pushViewController:v5 animated:0];
  [(NPHBSCellularFauxCardNavigationController *)v6 setModalPresentationStyle:5];
  [*(a1 + 40) presentViewController:v6 animated:1 completion:0];

  v7 = *MEMORY[0x277D85DE8];
}

- (void)installPendingCellularPlan:(id)a3 withCompletion:(id)a4
{
  v5 = a4;
  v6 = MEMORY[0x277CF96D8];
  v7 = a3;
  v8 = [v6 sharedManager];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke;
  v10[3] = &unk_278DACB58;
  v11 = v5;
  v9 = v5;
  [v8 installPendingRemotePlan:v7 completion:v10];
}

void __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  if (v3)
  {
    v4 = nph_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_cold_1();
    }
  }

  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_137;
  v7[3] = &unk_278DACB30;
  v5 = *(a1 + 32);
  v8 = v3;
  v9 = v5;
  v6 = v3;
  nph_ensure_on_main_queue(v7);
}

uint64_t __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_137(uint64_t a1)
{
  result = *(a1 + 40);
  if (result)
  {
    return (*(result + 16))(result, *(a1 + 32));
  }

  return result;
}

- (BOOL)shouldAllowUserToTransferPlanFromDeviceWithCSN:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v14 = 136315138;
    v15 = "[NPHCellularBridgeUIManager shouldAllowUserToTransferPlanFromDeviceWithCSN:]";
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v14, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self _updateTransferableCellularPlanFromDeviceWithCSN:v4];
  v6 = [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID];
  if (v6)
  {
    v7 = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
    v8 = v7 != 0;
  }

  else
  {
    v8 = 0;
  }

  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v10 = [MEMORY[0x277CCABB0] numberWithBool:v8];
    v11 = [v10 integerValue];
    v14 = 136315394;
    v15 = "[NPHCellularBridgeUIManager shouldAllowUserToTransferPlanFromDeviceWithCSN:]";
    v16 = 2048;
    v17 = v11;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s: %ld", &v14, 0x16u);
  }

  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:(id)a3
{
  v62[1] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v53 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
    v54 = 2112;
    v55 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s CSN: %@", buf, 0x16u);
  }

  if ([v4 length])
  {
    v6 = [(NPHCellularBridgeUIManager *)self _currentDeviceCSN];
    v7 = [v4 isEqualToString:v6];

    if (v7)
    {
      v8 = nph_general_log();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        [NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:];
      }

      v9 = 0;
      goto LABEL_13;
    }

    coreTelephonyClient = self->_coreTelephonyClient;
    v51 = 0;
    v8 = [(CoreTelephonyClient *)coreTelephonyClient getRemoteDeviceForTransferWithEID:v4 error:&v51];
    v9 = v51;
    if (v8)
    {
      v62[0] = v8;
      v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v62 count:1];
      goto LABEL_12;
    }

LABEL_13:
    v13 = 0;
    goto LABEL_14;
  }

  v10 = self->_coreTelephonyClient;
  v50 = 0;
  v8 = [(CoreTelephonyClient *)v10 getRemoteDevicesForTransferOrError:&v50];
  v9 = v50;
  if (!v8)
  {
    goto LABEL_13;
  }

  v11 = [v8 devices];
LABEL_12:
  v13 = v11;
LABEL_14:

  v14 = nph_general_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v15 = [v13 count];
    *buf = 136315394;
    v53 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
    v54 = 2048;
    v55 = v15;
    _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s - paired watches count:%ld", buf, 0x16u);
  }

  if (v9)
  {
    v16 = nph_general_log();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:];
    }

    goto LABEL_20;
  }

  if (![v13 count])
  {
LABEL_20:
    [(NPHCellularBridgeUIManager *)self setTransferableRemotePlan:0];
    [(NPHCellularBridgeUIManager *)self setTransferableRemoteDeviceID:0];
    goto LABEL_52;
  }

  v36 = v4;
  v48 = 0u;
  v49 = 0u;
  v46 = 0u;
  v47 = 0u;
  v35 = v13;
  obj = v13;
  v39 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
  if (!v39)
  {
    goto LABEL_49;
  }

  v17 = 0;
  v38 = *v47;
  do
  {
    v18 = 0;
    do
    {
      if (*v47 != v38)
      {
        objc_enumerationMutation(obj);
      }

      v40 = v18;
      v19 = *(*(&v46 + 1) + 8 * v18);
      v42 = 0u;
      v43 = 0u;
      v44 = 0u;
      v45 = 0u;
      v41 = [v19 remotePlans];
      v20 = [v41 countByEnumeratingWithState:&v42 objects:v60 count:16];
      if (!v20)
      {
        goto LABEL_47;
      }

      v21 = v20;
      v22 = *v43;
      while (2)
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v43 != v22)
          {
            objc_enumerationMutation(v41);
          }

          v24 = *(*(&v42 + 1) + 8 * i);
          v25 = [v24 transferAttributes];
          if ([v25 transferCapability] == 2)
          {
          }

          else
          {
            v26 = [v24 transferAttributes];
            v27 = [v26 transferCapability];

            if (v27 != 4)
            {
              v29 = nph_general_log();
              if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
              {
                *buf = 136315394;
                v53 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
                v54 = 2112;
                v55 = v24;
                _os_log_error_impl(&dword_243333000, v29, OS_LOG_TYPE_ERROR, "%s - Non-Transferable Plan:%@", buf, 0x16u);
              }

              goto LABEL_41;
            }
          }

          v28 = nph_general_log();
          if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315394;
            v53 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
            v54 = 2112;
            v55 = v24;
            _os_log_impl(&dword_243333000, v28, OS_LOG_TYPE_DEFAULT, "%s - Transferable Plan:%@", buf, 0x16u);
          }

          if (v17 >= 1)
          {
            v30 = nph_general_log();
            if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
            {
              [(NPHCellularBridgeUIManager *)v58 _updateTransferableCellularPlanFromDeviceWithCSN:v30];
            }

            [(NPHCellularBridgeUIManager *)self setTransferableRemotePlan:0];
            [(NPHCellularBridgeUIManager *)self setTransferableRemoteDeviceID:0];
            ++v17;
            goto LABEL_47;
          }

          [(NPHCellularBridgeUIManager *)self setTransferableRemotePlan:v24];
          v29 = [v19 deviceID];
          [(NPHCellularBridgeUIManager *)self setTransferableRemoteDeviceID:v29];
          ++v17;
LABEL_41:
        }

        v21 = [v41 countByEnumeratingWithState:&v42 objects:v60 count:16];
        if (v21)
        {
          continue;
        }

        break;
      }

LABEL_47:

      v18 = v40 + 1;
    }

    while (v40 + 1 != v39);
    v39 = [obj countByEnumeratingWithState:&v46 objects:v61 count:16];
  }

  while (v39);
LABEL_49:

  v31 = nph_general_log();
  if (os_log_type_enabled(v31, OS_LOG_TYPE_DEFAULT))
  {
    v32 = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
    v33 = [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID];
    *buf = 136315650;
    v53 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
    v54 = 2112;
    v55 = v32;
    v56 = 2112;
    v57 = v33;
    _os_log_impl(&dword_243333000, v31, OS_LOG_TYPE_DEFAULT, "%s - TransferableRemote Plan: %@ DeviceID: %@", buf, 0x20u);
  }

  v9 = 0;
  v4 = v36;
  v13 = v35;
LABEL_52:

  v34 = *MEMORY[0x277D85DE8];
}

- (void)setUpCellularPlanOnViewController:(id)a3 withContext:(id)a4 withCompletion:(id)a5
{
  v24 = *MEMORY[0x277D85DE8];
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v12 = nph_general_log();
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NPHCellularBridgeUIManager setUpCellularPlanOnViewController:withContext:withCompletion:]";
    _os_log_impl(&dword_243333000, v12, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_storeStrong(&self->_hostViewController, a3);
  self->_hostCompletionBlock = v11;
  if (v10)
  {
    v13 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:v10];
    if ([(NPHCellularBridgeUIManager *)self allCompanionSIMsMissing])
    {
      v14 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:2 forSubscriptionContext:v10];
      [objc_opt_class() presentCellularError:v14 onViewController:v9];
    }

    else if ([(NPHCellularBridgeUIManager *)self _isCarrierSetupFlowUnsupportedForServiceSubscription:v13])
    {
      v15 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:3 forSubscriptionContext:v10];
      [objc_opt_class() presentCellularError:v15 onViewController:v9];
    }

    else if (([v13 planFlows]& 1) != 0)
    {
      [(NPHCellularBridgeUIManager *)self _setUpCellularPlanDirectWithContext:v10 onViewController:v9 withCompletion:v11];
    }

    else if (([v13 planFlows]& 2) != 0)
    {
      [(NPHCellularBridgeUIManager *)self _setUpCellularPlanWithActivationCodeOnViewController:v9 withContext:v10 withCompletion:v11 codelessActivationBlock:0];
    }

    else
    {
      objc_initWeak(buf, self);
      v17[0] = MEMORY[0x277D85DD0];
      v17[1] = 3221225472;
      v17[2] = __91__NPHCellularBridgeUIManager_setUpCellularPlanOnViewController_withContext_withCompletion___block_invoke;
      v17[3] = &unk_278DACB80;
      objc_copyWeak(&v21, buf);
      v18 = v10;
      v19 = v9;
      v20 = v11;
      [(NPHCellularBridgeUIManager *)self _setUpCellularPlanWithActivationCodeOnViewController:v19 withContext:v18 withCompletion:v20 codelessActivationBlock:v17];

      objc_destroyWeak(&v21);
      objc_destroyWeak(buf);
    }
  }

  else
  {
    v13 = nph_general_log();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager setUpCellularPlanOnViewController:withContext:withCompletion:];
    }
  }

  v16 = *MEMORY[0x277D85DE8];
}

void __91__NPHCellularBridgeUIManager_setUpCellularPlanOnViewController_withContext_withCompletion___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 56));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    [WeakRetained _setUpCellularPlanDirectWithContext:*(a1 + 32) onViewController:*(a1 + 40) withCompletion:*(a1 + 48)];
    WeakRetained = v3;
  }
}

- (void)transferCellularPlanOnViewController:(id)a3 withCompletion:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v22 = "[NPHCellularBridgeUIManager transferCellularPlanOnViewController:withCompletion:]";
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  objc_storeStrong(&self->_hostViewController, a3);
  self->_hostCompletionBlock = v8;
  v10 = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
  if (v10 && (v11 = v10, [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID], v12 = objc_claimAutoreleasedReturnValue(), v12, v11, v12))
  {
    coreTelephonyClient = self->_coreTelephonyClient;
    v14 = [(NPHCellularBridgeUIManager *)self transferableRemotePlan];
    v15 = [v14 planID];
    v16 = [(NPHCellularBridgeUIManager *)self transferableRemoteDeviceID];
    v19[0] = MEMORY[0x277D85DD0];
    v19[1] = 3221225472;
    v19[2] = __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke;
    v19[3] = &unk_278DACBA8;
    v19[4] = self;
    v20 = v8;
    [(CoreTelephonyClient *)coreTelephonyClient transferRemotePlan:v15 fromDevice:v16 completion:v19];

    v17 = v20;
  }

  else
  {
    v17 = nph_general_log();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager transferCellularPlanOnViewController:v17 withCompletion:?];
    }
  }

  v18 = *MEMORY[0x277D85DE8];
}

void __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke_cold_1();
  }

  (*(*(a1 + 40) + 16))();
  if (!v4)
  {
    [*(a1 + 32) setTransferableRemotePlan:0];
    [*(a1 + 32) setTransferableRemoteDeviceID:0];
  }
}

- (void)_prePromptForUserConsentIfNecessary:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [MEMORY[0x277CF96D8] calculateInstallConsentTextTypeFor:self->_proxyPlanItems];
  v6 = nph_general_log();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 136315394;
    v11 = "[NPHCellularBridgeUIManager _prePromptForUserConsentIfNecessary:]";
    v12 = 2048;
    v13 = v5;
    _os_log_impl(&dword_243333000, v6, OS_LOG_TYPE_DEFAULT, "%s - consentTextType:%ld", &v10, 0x16u);
  }

  if (v5 == 5)
  {
    if ([(NSArray *)self->_proxyPlanItems count]!= 1)
    {
      goto LABEL_5;
    }

    v7 = self;
    v8 = 5;
LABEL_9:
    [(NPHCellularBridgeUIManager *)v7 _prePromptUserForConsentTextType:v8 relevantPlanItem:0 completionBlock:v4];
    goto LABEL_10;
  }

  if (v5 == 4)
  {
    v7 = self;
    v8 = 4;
    goto LABEL_9;
  }

LABEL_5:
  v4[2](v4, 0);
LABEL_10:

  v9 = *MEMORY[0x277D85DE8];
}

- (void)_prePromptUserForConsentTextType:(int64_t)a3 relevantPlanItem:(id)a4 completionBlock:(id)a5
{
  v8 = a5;
  v9 = [(NPHCellularBridgeUIManager *)self userConsentMessageForConsentType:a3 relevantPlanItem:a4];
  v10 = [MEMORY[0x277D75110] alertControllerWithTitle:0 message:v9 preferredStyle:0];
  [v10 setModalPresentationStyle:2];
  v11 = MEMORY[0x277D750F8];
  v12 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v13 = [v12 localizedStringForKey:@"CONSENT_DELETE_ACTION" value:&stru_285611AE0 table:0];
  v29[0] = MEMORY[0x277D85DD0];
  v29[1] = 3221225472;
  v29[2] = __96__NPHCellularBridgeUIManager__prePromptUserForConsentTextType_relevantPlanItem_completionBlock___block_invoke;
  v29[3] = &unk_278DACBD0;
  v14 = v8;
  v30 = v14;
  v15 = [v11 actionWithTitle:v13 style:2 handler:v29];

  [v10 addAction:v15];
  if (a3 == 5)
  {
    v16 = MEMORY[0x277D750F8];
    v17 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v18 = [v17 localizedStringForKey:@"CONSENT_KEEP_ACTION" value:&stru_285611AE0 table:0];
    v24 = MEMORY[0x277D85DD0];
    v25 = 3221225472;
    v26 = __96__NPHCellularBridgeUIManager__prePromptUserForConsentTextType_relevantPlanItem_completionBlock___block_invoke_2;
    v27 = &unk_278DACBD0;
    v28 = v14;
    v19 = [v16 actionWithTitle:v18 style:0 handler:&v24];

    [v10 addAction:{v19, v24, v25, v26, v27}];
  }

  v20 = MEMORY[0x277D750F8];
  v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v22 = [v21 localizedStringForKey:@"CONSENT_CANCEL" value:&stru_285611AE0 table:0];
  v23 = [v20 actionWithTitle:v22 style:1 handler:&__block_literal_global_159];

  [v10 addAction:v23];
  [(UIViewController *)self->_hostViewController presentViewController:v10 animated:1 completion:0];
}

- (id)userConsentMessageForConsentType:(int64_t)a3 relevantPlanItem:(id)a4
{
  v46 = *MEMORY[0x277D85DE8];
  v6 = a4;
  v7 = 0;
  v8 = 1;
  if (a3 > 3)
  {
    if (a3 == 4)
    {
      v8 = 0;
      v9 = 0;
      v7 = @"CONSENT_CURRENT_PLAN_CANNOT_BE_DISABLED";
      goto LABEL_14;
    }

    if (a3 == 5)
    {
      v9 = 0;
      v7 = @"CONSENT_CURRENT_PLAN_CANNOT_BE_DELETED";
      goto LABEL_14;
    }

    v9 = 1;
    if (a3 != 7)
    {
      goto LABEL_14;
    }

LABEL_9:
    v9 = 0;
    v7 = @"CONSENT_NEW_PLAN_INSTALL";
    goto LABEL_14;
  }

  if (a3 == 1)
  {
    v9 = 0;
    v7 = @"CONSENT_NEW_PLAN_CANNOT_BE_DISABLED";
    goto LABEL_14;
  }

  if (a3 == 2)
  {
    v9 = 0;
    v7 = @"CONSENT_NEW_PLAN_CANNOT_BE_DELETED";
    goto LABEL_14;
  }

  v9 = 1;
  if (a3 == 3)
  {
    goto LABEL_9;
  }

LABEL_14:
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v41 = "[NPHCellularBridgeUIManager userConsentMessageForConsentType:relevantPlanItem:]";
    v42 = 2048;
    v43 = a3;
    v44 = 2112;
    v45 = v7;
    _os_log_impl(&dword_243333000, v10, OS_LOG_TYPE_DEFAULT, "%s - consentType:%ld consentMessageKey:%@", buf, 0x20u);
  }

  if (v9)
  {
    v7 = 0;
    v11 = 0;
    goto LABEL_40;
  }

  if ([(__CFString *)v7 isEqualToString:@"CONSENT_NEW_PLAN_INSTALL"])
  {
    v12 = MGGetBoolAnswer();
    v13 = @"WIFI";
    if (v12)
    {
      v13 = @"WLAN";
    }

    v14 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@_%@", v7, v13];
    v15 = MEMORY[0x277CCACA8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:v14 value:&stru_285611AE0 table:0];
    v18 = [(NPHCellularBridgeUIManager *)self tinkerFamilyMemberFirstName];
    v11 = [v15 stringWithFormat:v17, v18];

    if (a3 != 7)
    {
      goto LABEL_39;
    }

    v19 = [v11 mutableCopy];
    v20 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v21 = [v20 localizedStringForKey:@"CONSENT_NEW_PLAN_INSTALL_911_INFO" value:&stru_285611AE0 table:0];
    [(__CFString *)v19 appendFormat:@"\n\n%@", v21];

    v22 = [(__CFString *)v19 copy];
  }

  else
  {
    v23 = [v6 plan];
    v24 = [v23 carrierName];

    if (v24)
    {
      v25 = v24;
    }

    else
    {
      v25 = &stru_285611AE0;
    }

    v14 = v25;

    v26 = [(NPHCellularBridgeUIManager *)self selectedCellularPlan];
    v27 = [v26 plan];
    v28 = [v27 carrierName];

    if (v28)
    {
      v29 = v28;
    }

    else
    {
      v29 = &stru_285611AE0;
    }

    v19 = v29;

    v30 = [(__CFString *)v14 length];
    v31 = [(__CFString *)v19 length];
    if (v30)
    {
      v32 = v8;
    }

    else
    {
      v32 = 0;
    }

    v33 = (v30 != 0) & ~v8;
    if (!v31)
    {
      v33 = 0;
    }

    if ((v33 & 1) == 0 && (v32 & 1) == 0)
    {
      v7 = [(__CFString *)v7 stringByAppendingString:@"_NO_NAME"];
    }

    v34 = MEMORY[0x277CCACA8];
    v11 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v35 = [v11 localizedStringForKey:v7 value:&stru_285611AE0 table:0];
    v39[0] = v14;
    v39[1] = v19;
    v36 = [MEMORY[0x277CBEA60] arrayWithObjects:v39 count:2];
    v22 = [v34 stringWithPositionalSpecifiersFormat:v35 arguments:v36];
  }

  v11 = v22;
LABEL_39:

LABEL_40:
  v37 = *MEMORY[0x277D85DE8];

  return v11;
}

void __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2;
  v10[3] = &unk_278DACA40;
  v11 = v6;
  v12 = v5;
  v7 = *(a1 + 40);
  v13 = *(a1 + 32);
  v14 = v7;
  v8 = v5;
  v9 = v6;
  nph_ensure_on_main_queue(v10);
}

void __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2(uint64_t a1)
{
  v28 = *MEMORY[0x277D85DE8];
  v2 = nph_general_log();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    *buf = 136315650;
    v23 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]_block_invoke_2";
    v24 = 2112;
    v25 = v3;
    v26 = 2112;
    v27 = v4;
    _os_log_impl(&dword_243333000, v2, OS_LOG_TYPE_DEFAULT, "%s - error:%@ items:%@", buf, 0x20u);
  }

  v5 = *(a1 + 40);
  v6 = *(a1 + 56);
  v7 = *(*(a1 + 48) + 48);
  v8 = *(a1 + 32);
  [v7 removeObject:v6];
  if (!v5)
  {
    v5 = MEMORY[0x277CBEBF8];
  }

  v9 = [MEMORY[0x277CCA9B8] NPHCellularSanitizedError:v8 forSubscriptionContext:0];

  if (v9)
  {
    v10 = nph_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2_cold_1();
    }

    v20 = NPHCellularPlanInfoError;
    v21 = v9;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v21 forKeys:&v20 count:1];
  }

  else
  {
    v11 = 0;
  }

  v12 = [v5 sortedArrayUsingComparator:&__block_literal_global_202];
  v13 = *(a1 + 48);
  v14 = *(v13 + 32);
  *(v13 + 32) = v12;

  v15 = nph_general_log();
  if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v23 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]_block_invoke_2";
    _os_log_impl(&dword_243333000, v15, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 1", buf, 0xCu);
  }

  v16 = nph_general_log();
  if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
  {
    v17 = *(*(a1 + 48) + 32);
    *buf = 136315394;
    v23 = "[NPHCellularBridgeUIManager _updateCellularPlansWithFetch:forCSN:]_block_invoke";
    v24 = 2112;
    v25 = v17;
    _os_log_impl(&dword_243333000, v16, OS_LOG_TYPE_DEFAULT, "%s - posting _proxyPlanItems:%@", buf, 0x16u);
  }

  v18 = [MEMORY[0x277CCAB98] defaultCenter];
  [v18 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:*(a1 + 48) userInfo:v11];

  [*(a1 + 48) _updateShouldShowAddNewRemotePlan];
  [*(a1 + 48) _updateIsRemotePlanCapable];
  [*(a1 + 48) _updateShouldWarnAboutLTEMayImpactService];

  v19 = *MEMORY[0x277D85DE8];
}

uint64_t __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_199(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = [a2 name];
  v6 = [v4 name];

  v7 = [v5 localizedStandardCompare:v6];
  return v7;
}

- (id)_serviceSubscriptionInfoForSubscriptionContext:(id)a3
{
  v4 = a3;
  serviceSubscriptionInfoList = self->_serviceSubscriptionInfoList;
  v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
  v7 = [(NSMutableDictionary *)serviceSubscriptionInfoList objectForKeyedSubscript:v6];

  v8 = [v7 serviceSubscriptionContext];
  v9 = [v8 isEqual:v4];

  if ((v9 & 1) == 0)
  {
    v10 = objc_opt_new();

    [v10 setShouldOfferRemotePlan:1];
    [v10 setServiceSubscriptionContext:v4];
    v11 = self->_serviceSubscriptionInfoList;
    v12 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "slotID")}];
    [(NSMutableDictionary *)v11 setObject:v10 forKeyedSubscript:v12];

    v7 = v10;
  }

  return v7;
}

- (void)_updateShouldShowAddNewRemotePlan
{
  v17 = *MEMORY[0x277D85DE8];
  if (self->_outstandingPlanFlowsIdentified == 0x7FFFFFFFFFFFFFFFLL)
  {
    self->_outstandingPlanFlowsIdentified = 0;
  }

  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  obj = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v3 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v13;
    do
    {
      v6 = 0;
      do
      {
        if (*v13 != v5)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v12 + 1) + 8 * v6);
        ++self->_outstandingPlanFlowsIdentified;
        v8 = [MEMORY[0x277CF96D8] sharedManager];
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 3221225472;
        v11[2] = __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke;
        v11[3] = &unk_278DACC88;
        v11[4] = self;
        v11[5] = v7;
        [v8 shouldShowAddNewRemotePlanWithContext:v7 completion:v11];

        ++v6;
      }

      while (v4 != v6);
      v4 = [obj countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke(uint64_t a1, char a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2;
  v13[3] = &unk_278DACC60;
  v14 = *(a1 + 32);
  v18 = a2;
  v16 = v9;
  v17 = a3;
  v15 = v10;
  v11 = v9;
  v12 = v10;
  nph_ensure_on_main_queue(v13);
}

void __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2(uint64_t a1)
{
  v32 = *MEMORY[0x277D85DE8];
  --*(*(a1 + 32) + 40);
  v2 = *(a1 + 40);
  if (!v2)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2_cold_1();
    }

    v2 = *(a1 + 40);
  }

  v4 = [*(a1 + 32) _serviceSubscriptionInfoForSubscriptionContext:v2];
  v5 = *(a1 + 72);
  v6 = *(a1 + 64);
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v8 = *(a1 + 48);
    *buf = 136315906;
    v29 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    v30 = 1024;
    *v31 = v5;
    *&v31[4] = 2048;
    *&v31[6] = v6;
    *&v31[14] = 2112;
    *&v31[16] = v8;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - shouldShowAddNewRemotePlan:%d option:%lu shouldShowAddError:%@", buf, 0x26u);
  }

  if (v5 == [v4 shouldShowAddNewRemotePlan])
  {
    if ([v4 planFlows] == v6)
    {
      v9 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    [v4 setShouldShowAddNewRemotePlan:v5];
    [v4 planFlows];
  }

  [v4 setPlanFlows:v6];
  if ([v4 shouldShowAddNewRemotePlan])
  {
    v10 = ([v4 planFlows] >> 2) & 1;
  }

  else
  {
    v10 = 0;
  }

  [v4 setShouldOfferTrialPlan:v10];
  if ([v4 shouldShowAddNewRemotePlan])
  {
    v11 = ([v4 planFlows] >> 3) & 1;
  }

  else
  {
    v11 = 0;
  }

  [v4 setShouldOfferSignupCompletion:v11];
  if ([v4 shouldOfferTrialPlan])
  {
    v12 = [*(a1 + 56) copy];
    [v4 setTrialPlanType:v12];
  }

  else
  {
    [v4 setTrialPlanType:0];
  }

  v13 = nph_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    v14 = [v4 shouldOfferTrialPlan];
    v15 = [v4 shouldOfferSignupCompletion];
    v16 = [v4 trialPlanType];
    *buf = 136315906;
    v29 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    v30 = 1024;
    *v31 = v14;
    *&v31[4] = 1024;
    *&v31[6] = v15;
    *&v31[10] = 2112;
    *&v31[12] = v16;
    _os_log_impl(&dword_243333000, v13, OS_LOG_TYPE_DEFAULT, "%s - shouldOfferTrialPlan:%d shouldOfferSignupCompletion:%d trialPlanType:%@", buf, 0x22u);
  }

  v9 = 1;
LABEL_23:
  v17 = [MEMORY[0x277CCA9B8] NPHCellularSanitizedError:*(a1 + 48) forSubscriptionContext:*(a1 + 40)];
  v18 = nph_general_log();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v29 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    v30 = 2112;
    *v31 = v17;
    _os_log_impl(&dword_243333000, v18, OS_LOG_TYPE_DEFAULT, "%s - sanitizedShouldShowAddError:%@", buf, 0x16u);
  }

  v19 = [*(a1 + 32) _isPersistentError:v17];
  if (!v17 || v19)
  {
    v21 = [v4 persistentError];
    v22 = v17 | v21;

    if (v22)
    {
      [v4 setPersistentError:v17];
    }

    else if (!v9)
    {
      goto LABEL_35;
    }

    v20 = 0;
  }

  else
  {
    v26 = NPHCellularPlanInfoError;
    v27 = v17;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v27 forKeys:&v26 count:1];
  }

  v23 = nph_general_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v29 = "[NPHCellularBridgeUIManager _updateShouldShowAddNewRemotePlan]_block_invoke";
    _os_log_impl(&dword_243333000, v23, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 2", buf, 0xCu);
  }

  v24 = [MEMORY[0x277CCAB98] defaultCenter];
  [v24 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:*(a1 + 32) userInfo:v20];

LABEL_35:
  v25 = *MEMORY[0x277D85DE8];
}

- (void)_updateIsRemotePlanCapable
{
  v20 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315138;
    v19 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  obj = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v4 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v14;
    do
    {
      v7 = 0;
      do
      {
        if (*v14 != v6)
        {
          objc_enumerationMutation(obj);
        }

        v8 = *(*(&v13 + 1) + 8 * v7);
        v9 = [MEMORY[0x277CF96D8] sharedManager];
        v12[0] = MEMORY[0x277D85DD0];
        v12[1] = 3221225472;
        v12[2] = __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke;
        v12[3] = &unk_278DACCD8;
        v12[4] = v8;
        v12[5] = self;
        [v9 isRemotePlanCapableWithContext:v8 completion:v12];

        ++v7;
      }

      while (v5 != v7);
      v5 = [obj countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v5);
  }

  v10 = *MEMORY[0x277D85DE8];
}

void __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke(uint64_t a1, char a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2;
  v2[3] = &unk_278DACCB0;
  v3 = *(a1 + 32);
  v4 = a2;
  nph_ensure_on_main_queue(v2);
}

void __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2(uint64_t a1)
{
  v20 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  if (!v2)
  {
    v3 = nph_general_log();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2_cold_1();
    }

    v2 = *(a1 + 32);
  }

  v4 = [*(a1 + 40) _serviceSubscriptionInfoForSubscriptionContext:v2];
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v6 = [v4 shouldOfferRemotePlan];
    v7 = *(a1 + 48);
    v14 = 136315650;
    v15 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]_block_invoke";
    v16 = 1024;
    v17 = v6;
    v18 = 1024;
    v19 = v7;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s from:%d to :%d", &v14, 0x18u);
  }

  v8 = *(a1 + 48);
  if (v8 != [v4 shouldOfferRemotePlan])
  {
    [v4 setShouldOfferRemotePlan:*(a1 + 48)];
    v9 = nph_general_log();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      v10 = [v4 shouldOfferRemotePlan];
      v14 = 136315394;
      v15 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]_block_invoke";
      v16 = 1024;
      v17 = v10;
      _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - shouldOfferRemotePlan:%d", &v14, 0x12u);
    }

    v11 = nph_general_log();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v14 = 136315138;
      v15 = "[NPHCellularBridgeUIManager _updateIsRemotePlanCapable]_block_invoke";
      _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s - posting NPHCellularPlanInfoDidChangeNotification 3", &v14, 0xCu);
    }

    v12 = [MEMORY[0x277CCAB98] defaultCenter];
    [v12 postNotificationName:NPHCellularPlanInfoDidChangeNotification object:*(a1 + 40) userInfo:0];
  }

  v13 = *MEMORY[0x277D85DE8];
}

- (void)_updateShouldWarnAboutLTEMayImpactService
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x18u);
  v5 = *MEMORY[0x277D85DE8];
}

- (NSArray)serviceSubscriptionsToOfferUser
{
  v37 = *MEMORY[0x277D85DE8];
  v27 = objc_opt_new();
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    serviceSubscriptionInfoList = self->_serviceSubscriptionInfoList;
    *buf = 136315394;
    v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
    v35 = 2112;
    v36 = serviceSubscriptionInfoList;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - _serviceSubscriptionInfoList:%@", buf, 0x16u);
  }

  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v5 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v6 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v29;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v29 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v28 + 1) + 8 * i);
        v11 = nph_general_log();
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 136315394;
          v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
          v35 = 2112;
          v36 = v10;
          _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionInfo:%@", buf, 0x16u);
        }

        if ([(NSMutableDictionary *)v10 shouldShowAddNewRemotePlan])
        {
          v12 = [(NSMutableDictionary *)v10 persistentError];
          if ([(NPHCellularBridgeUIManager *)self _isSetupBlockingError:v12])
          {
          }

          else
          {
            if ([objc_opt_class() _isSubscriptionInUse:v10])
            {

LABEL_27:
              v22 = nph_general_log();
              if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 136315394;
                v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
                v35 = 2112;
                v36 = v10;
                _os_log_impl(&dword_243333000, v22, OS_LOG_TYPE_DEFAULT, "%s - offer:%@", buf, 0x16u);
              }

              v19 = [(NSMutableDictionary *)v10 serviceSubscriptionContext];
              [(NSMutableDictionary *)v27 addObject:v19];
LABEL_30:

              continue;
            }

            v21 = +[NPHSharedUtilities isActiveDeviceTinker];

            if (v21)
            {
              goto LABEL_27;
            }
          }
        }

        if (([(NSMutableDictionary *)v10 shouldShowAddNewRemotePlan]& 1) == 0)
        {
          v13 = nph_general_log();
          if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
          {
            v14 = [(NSMutableDictionary *)v10 shouldShowAddNewRemotePlan];
            *buf = 136315394;
            v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
            v35 = 1024;
            LODWORD(v36) = v14;
            _os_log_impl(&dword_243333000, v13, OS_LOG_TYPE_DEFAULT, "%s - REJECTED: shouldShowAddNewRemotePlan:%d", buf, 0x12u);
          }
        }

        v15 = [(NSMutableDictionary *)v10 persistentError];
        v16 = [(NPHCellularBridgeUIManager *)self _isSetupBlockingError:v15];

        if (v16)
        {
          v17 = nph_general_log();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            v18 = [(NSMutableDictionary *)v10 persistentError];
            *buf = 136315394;
            v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
            v35 = 2112;
            v36 = v18;
            _os_log_impl(&dword_243333000, v17, OS_LOG_TYPE_DEFAULT, "%s - REJECTED: persistent error:%@", buf, 0x16u);
          }
        }

        if (([objc_opt_class() _isSubscriptionInUse:v10] & 1) == 0)
        {
          v19 = nph_general_log();
          if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
          {
            v20 = [(NSMutableDictionary *)v10 SIMStatus];
            *buf = 136315394;
            v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
            v35 = 2112;
            v36 = v20;
            _os_log_impl(&dword_243333000, v19, OS_LOG_TYPE_DEFAULT, "%s - REJECTED: not in use:%@", buf, 0x16u);
          }

          goto LABEL_30;
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v28 objects:v32 count:16];
    }

    while (v7);
  }

  v23 = nph_general_log();
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v34 = "[NPHCellularBridgeUIManager serviceSubscriptionsToOfferUser]";
    v35 = 2112;
    v36 = v27;
    _os_log_impl(&dword_243333000, v23, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionsToOfferUser:%@", buf, 0x16u);
  }

  v24 = [(NSMutableDictionary *)v27 copy];
  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (BOOL)isGeminiSetup
{
  v2 = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsInUse];
  v3 = [v2 count] > 1;

  return v3;
}

- (BOOL)isTinkerCrossCarrierSetup
{
  v12 = *MEMORY[0x277D85DE8];
  if (+[NPHSharedUtilities isActiveDeviceTinker])
  {
    v3 = [(NPHCellularBridgeUIManager *)self cellularPlanRequiringPreInstallConsent];
    v4 = v3 != 0;
  }

  else
  {
    v4 = 0;
  }

  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager isTinkerCrossCarrierSetup]";
    v10 = 1024;
    v11 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s: %d", &v8, 0x12u);
  }

  v6 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (BOOL)_isSubscriptionInUse:(id)a3
{
  v3 = a3;
  v4 = [v3 SIMStatus];
  if ([v4 isEqualToString:*MEMORY[0x277CC3F00]])
  {
    v5 = 1;
  }

  else
  {
    v6 = +[NPHCellularBridgeUIManager sharedInstance];
    if ([v6 isTinkerCrossCarrierSetup])
    {
      v7 = [v3 SIMStatus];
      v5 = [v7 isEqualToString:*MEMORY[0x277CC3ED8]];
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

- (NSArray)serviceSubscriptionsInUse
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() _isSubscriptionInUse:v9])
        {
          v10 = [v9 serviceSubscriptionContext];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHCellularBridgeUIManager serviceSubscriptionsInUse]";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsInUse:%@", buf, 0x16u);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)serviceSubscriptionsShouldShowAddNewRemotePlan
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([v9 shouldShowAddNewRemotePlan] && objc_msgSend(objc_opt_class(), "_isSubscriptionInUse:", v9))
        {
          v10 = [v9 serviceSubscriptionContext];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHCellularBridgeUIManager serviceSubscriptionsShouldShowAddNewRemotePlan]";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsShouldShowAddNewRemotePlan:%@", buf, 0x16u);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (NSArray)serviceSubscriptionsOfferingRemotePlan
{
  v26 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    serviceSubscriptionInfoList = self->_serviceSubscriptionInfoList;
    *buf = 136315394;
    v23 = "[NPHCellularBridgeUIManager serviceSubscriptionsOfferingRemotePlan]";
    v24 = 2112;
    v25 = serviceSubscriptionInfoList;
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s _serviceSubscriptionInfoList:%@", buf, 0x16u);
  }

  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v6 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v7 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v18 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v17 + 1) + 8 * i);
        if ([objc_opt_class() _isSubscriptionInUse:v11] && objc_msgSend(v11, "shouldOfferRemotePlan"))
        {
          v12 = [v11 serviceSubscriptionContext];
          [(NSMutableDictionary *)v3 addObject:v12];
        }
      }

      v8 = [v6 countByEnumeratingWithState:&v17 objects:v21 count:16];
    }

    while (v8);
  }

  v13 = nph_general_log();
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v23 = "[NPHCellularBridgeUIManager serviceSubscriptionsOfferingRemotePlan]";
    v24 = 2112;
    v25 = v3;
    _os_log_impl(&dword_243333000, v13, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsOfferingRemotePlan:%@", buf, 0x16u);
  }

  v14 = [(NSMutableDictionary *)v3 copy];
  v15 = *MEMORY[0x277D85DE8];

  return v14;
}

- (BOOL)shouldOfferRemotePlan
{
  if (![(NSMutableDictionary *)self->_serviceSubscriptionInfoList count])
  {
    return 1;
  }

  v3 = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsOfferingRemotePlan];
  v4 = [v3 count] != 0;

  return v4;
}

- (NSArray)serviceSubscriptionsOfferingTrialPlan
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v4 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v5 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v16;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        if ([objc_opt_class() _isSubscriptionInUse:v9] && objc_msgSend(v9, "shouldOfferTrialPlan"))
        {
          v10 = [v9 serviceSubscriptionContext];
          [v3 addObject:v10];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v15 objects:v23 count:16];
    }

    while (v6);
  }

  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v20 = "[NPHCellularBridgeUIManager serviceSubscriptionsOfferingTrialPlan]";
    v21 = 2112;
    v22 = v3;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s serviceSubscriptionsOfferingTrialPlan:%@", buf, 0x16u);
  }

  v12 = [v3 copy];
  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)shouldOfferTrialPlan
{
  v2 = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsOfferingTrialPlan];
  v3 = [v2 count] != 0;

  return v3;
}

- (id)cellularPlans
{
  v2 = [(NSArray *)self->_proxyPlanItems copy];

  return v2;
}

- (id)cellularPlanRequiringPreInstallConsent
{
  v11 = *MEMORY[0x277D85DE8];
  if (+[NPHSharedUtilities isActiveDeviceTinker])
  {
    v3 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_213];
    v4 = nph_general_log();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v7 = 136315394;
      v8 = "[NPHCellularBridgeUIManager cellularPlanRequiringPreInstallConsent]";
      v9 = 2112;
      v10 = v3;
      _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s cellularPlanRequiringConsent:%@", &v7, 0x16u);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];

  return v3;
}

BOOL __68__NPHCellularBridgeUIManager_cellularPlanRequiringPreInstallConsent__block_invoke(uint64_t a1, void *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = a2;
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = [v2 plan];
    v9 = 136315394;
    v10 = "[NPHCellularBridgeUIManager cellularPlanRequiringPreInstallConsent]_block_invoke";
    v11 = 1024;
    v12 = [v4 status];
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s planItem.status:%d", &v9, 0x12u);
  }

  v5 = [v2 plan];
  v6 = [v5 status] == 12;

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)cellularPlanIsSetUp
{
  v22 = *MEMORY[0x277D85DE8];
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v2 = self->_proxyPlanItems;
  v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
  if (v3)
  {
    v4 = *v12;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v12 != v4)
        {
          objc_enumerationMutation(v2);
        }

        v6 = *(*(&v11 + 1) + 8 * i);
        v7 = nph_general_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 isSelected];
          *buf = 136315650;
          v16 = "[NPHCellularBridgeUIManager cellularPlanIsSetUp]";
          v17 = 1024;
          v18 = v8;
          v19 = 2112;
          v20 = v6;
          _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s planItem.isSelected:%d planItem:%@", buf, 0x1Cu);
        }

        if ([v6 isSelected])
        {
          LOBYTE(v3) = 1;
          goto LABEL_13;
        }
      }

      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v11 objects:v21 count:16];
      if (v3)
      {
        continue;
      }

      break;
    }
  }

LABEL_13:

  v9 = *MEMORY[0x277D85DE8];
  return v3;
}

- (BOOL)isAnyCellularPlanActivating
{
  v32 = *MEMORY[0x277D85DE8];
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  obj = [(NPHCellularBridgeUIManager *)self cellularPlans];
  v2 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
  if (v2)
  {
    v3 = v2;
    v4 = *v22;
    while (2)
    {
      for (i = 0; i != v3; ++i)
      {
        if (*v22 != v4)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v21 + 1) + 8 * i);
        v7 = nph_general_log();
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = [v6 plan];
          v9 = [v8 status];
          *buf = 136315650;
          v26 = "[NPHCellularBridgeUIManager isAnyCellularPlanActivating]";
          v27 = 1024;
          v28 = v9;
          v29 = 2112;
          v30 = v6;
          _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s planItem.status:%d planItem:%@", buf, 0x1Cu);
        }

        v10 = [v6 plan];
        if ([v10 status] == 2)
        {
          goto LABEL_22;
        }

        v11 = [v6 plan];
        if ([v11 status] == 11)
        {
          goto LABEL_21;
        }

        v12 = [v6 plan];
        if ([v12 status] == 6)
        {
          goto LABEL_20;
        }

        v13 = [v6 plan];
        if ([v13 status] == 7)
        {
          goto LABEL_19;
        }

        v14 = [v6 plan];
        if ([v14 status] == 9)
        {

LABEL_19:
LABEL_20:

LABEL_21:
LABEL_22:

LABEL_23:
          v17 = 1;
          goto LABEL_24;
        }

        v15 = [v6 plan];
        v16 = [v15 status];

        if (v16 == 13)
        {
          goto LABEL_23;
        }
      }

      v3 = [obj countByEnumeratingWithState:&v21 objects:v31 count:16];
      v17 = 0;
      if (v3)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v17 = 0;
  }

LABEL_24:

  v18 = *MEMORY[0x277D85DE8];
  return v17;
}

- (int64_t)consentRequiredRelevantCellularPlanItem:(id *)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_215];
  v6 = v5;
  if (!v5 || ([v5 plan], v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v7, "status"), v7, v8 != 7))
  {
    v11 = 0;
    goto LABEL_16;
  }

  v9 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_217];
  v10 = [(NSArray *)self->_proxyPlanItems firstObjectPassingTest:&__block_literal_global_219];
  v11 = [MEMORY[0x277CF96D8] calculateInstallConsentTextTypeFor:self->_proxyPlanItems];
  v12 = 0;
  if (v11 > 3)
  {
    v13 = v6;
    if (v11 != 7)
    {
      if (v11 == 5)
      {
        v13 = v9;
      }

      else
      {
        v13 = v10;
        if (v11 != 4)
        {
          goto LABEL_13;
        }
      }
    }
  }

  else
  {
    v13 = v6;
    if ((v11 - 1) >= 3)
    {
      goto LABEL_13;
    }
  }

  v12 = v13;
LABEL_13:
  if (a3)
  {
    v12 = v12;
    *a3 = v12;
  }

LABEL_16:
  v14 = nph_general_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315394;
    v18 = "[NPHCellularBridgeUIManager consentRequiredRelevantCellularPlanItem:]";
    v19 = 2048;
    v20 = v11;
    _os_log_impl(&dword_243333000, v14, OS_LOG_TYPE_DEFAULT, "%s - consentRequiredType:%ld", &v17, 0x16u);
  }

  v15 = *MEMORY[0x277D85DE8];
  return v11;
}

uint64_t __70__NPHCellularBridgeUIManager_consentRequiredRelevantCellularPlanItem___block_invoke_2(uint64_t a1, void *a2)
{
  v2 = [a2 plan];
  v3 = [v2 isDeleteNotAllowed];

  return v3;
}

uint64_t __70__NPHCellularBridgeUIManager_consentRequiredRelevantCellularPlanItem___block_invoke_3(uint64_t a1, void *a2)
{
  v2 = [a2 plan];
  v3 = [v2 isDisableNotAllowed];

  return v3;
}

- (void)_ctCellularPlanInfoDidChange:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NPHCellularBridgeUIManager _ctCellularPlanInfoDidChange:]";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:0];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_ctCellularRemoteProvisioningDidBecomeAvailable:(id)a3
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = nph_general_log();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 136315138;
    v7 = "[NPHCellularBridgeUIManager _ctCellularRemoteProvisioningDidBecomeAvailable:]";
    _os_log_impl(&dword_243333000, v4, OS_LOG_TYPE_DEFAULT, "%s", &v6, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:1];
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_nrPairedWatchDidBecomeActive
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315138;
    v6 = "[NPHCellularBridgeUIManager _nrPairedWatchDidBecomeActive]";
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s", &v5, 0xCu);
  }

  [(NPHCellularBridgeUIManager *)self fetchTinkerFamilyMember];
  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:1];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)_updateServiceSubscriptionInfo:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v8 = 136315394;
    v9 = "[NPHCellularBridgeUIManager _updateServiceSubscriptionInfo:]";
    v10 = 2112;
    v11 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s info:%@", &v8, 0x16u);
  }

  serviceSubscriptionInfo = self->_serviceSubscriptionInfo;
  self->_serviceSubscriptionInfo = v4;

  [(NPHCellularBridgeUIManager *)self _updateSIMStatusForAllSubscriptionContexts];
  [(NPHCellularBridgeUIManager *)self updateCellularPlansWithFetch:0];
  v7 = *MEMORY[0x277D85DE8];
}

- (void)startRemoteProvisioning
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(NPHCellularBridgeUIManager *)self _activeDeviceCSNList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CF96D8] sharedManager];
        [v8 startRemoteProvisioningForCSN:v7 completion:&__block_literal_global_221];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __53__NPHCellularBridgeUIManager_startRemoteProvisioning__block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NPHCellularBridgeUIManager startRemoteProvisioning]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - startRemoteProvisioningWithCompletion success:%d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (void)finishRemoteProvisioning
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = [(NPHCellularBridgeUIManager *)self _activeDeviceCSNList];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        v8 = [MEMORY[0x277CF96D8] sharedManager];
        [v8 finishRemoteProvisioningForCSN:v7 completion:&__block_literal_global_223];

        ++v6;
      }

      while (v4 != v6);
      v4 = [v2 countByEnumeratingWithState:&v10 objects:v14 count:16];
    }

    while (v4);
  }

  v9 = *MEMORY[0x277D85DE8];
}

void __54__NPHCellularBridgeUIManager_finishRemoteProvisioning__block_invoke(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = nph_general_log();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 136315394;
    v6 = "[NPHCellularBridgeUIManager finishRemoteProvisioning]_block_invoke";
    v7 = 1024;
    v8 = a2;
    _os_log_impl(&dword_243333000, v3, OS_LOG_TYPE_DEFAULT, "%s - finishRemoteProvisioningWithCompletion success:%d", &v5, 0x12u);
  }

  v4 = *MEMORY[0x277D85DE8];
}

- (id)subscriptionContextForCellularPlanItem:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v5 = [(CTXPCServiceSubscriptionInfo *)self->_serviceSubscriptionInfo subscriptions];
  v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
  if (v6)
  {
    v7 = *v16;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v15 + 1) + 8 * i);
        v10 = [v4 companionSlotUuid];
        v11 = [v9 uuid];
        v12 = [v10 isEqual:v11];

        if (v12)
        {
          v6 = v9;
          goto LABEL_11;
        }
      }

      v6 = [v5 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_11:

  v13 = *MEMORY[0x277D85DE8];

  return v6;
}

- (id)displayNameForCellularPlan:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if ([(NPHCellularBridgeUIManager *)self isGeminiSetup])
  {
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v5 = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsInUse];
    v6 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v20;
      while (2)
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v20 != v8)
          {
            objc_enumerationMutation(v5);
          }

          v10 = *(*(&v19 + 1) + 8 * i);
          v11 = [v4 companionSlotUuid];
          v12 = [v10 uuid];
          v13 = [v11 isEqual:v12];

          if (v13)
          {
            v14 = [(NPHCellularBridgeUIManager *)self simLabelForSubscription:v10];
            goto LABEL_13;
          }
        }

        v7 = [v5 countByEnumeratingWithState:&v19 objects:v23 count:16];
        if (v7)
        {
          continue;
        }

        break;
      }
    }

    v14 = 0;
LABEL_13:
  }

  else
  {
    v14 = 0;
  }

  if (![v14 length])
  {
    v15 = [v4 plan];
    v16 = [v15 carrierName];

    v14 = v16;
  }

  v17 = *MEMORY[0x277D85DE8];

  return v14;
}

- (id)carrierNameForSubscription:(id)a3
{
  v4 = MEMORY[0x277CC3620];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:v5 key:@"CarrierName" bundleType:v6 error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = nph_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager carrierNameForSubscription:];
    }
  }

  return v8;
}

- (id)carrierPhoneNumberForSubscription:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CC3620];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v15 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValue:v5 key:@"WatchCustomerServicePhoneNumber" bundleType:v6 error:&v15];

  v9 = v15;
  v10 = nph_general_log();
  v11 = v10;
  if (v9)
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager carrierPhoneNumberForSubscription:];
    }
  }

  else
  {
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v17 = "[NPHCellularBridgeUIManager carrierPhoneNumberForSubscription:]";
      v18 = 2112;
      v19 = v8;
      _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_DEFAULT, "%s - %@", buf, 0x16u);
    }

    v11 = TUHomeCountryCode();
    v12 = TUFormattedPhoneNumber();

    v8 = v12;
  }

  v13 = *MEMORY[0x277D85DE8];

  return v8;
}

- (id)formattedPhoneNumberForSubscription:(id)a3
{
  coreTelephonyClient = self->_coreTelephonyClient;
  v10 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getPhoneNumber:a3 error:&v10];
  v5 = v10;
  if (v5)
  {
    v6 = nph_general_log();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager formattedPhoneNumberForSubscription:];
    }

    v7 = 0;
  }

  else
  {
    v6 = [v4 number];
    v8 = TUHomeCountryCode();
    v7 = TUFormattedPhoneNumber();
  }

  return v7;
}

- (id)lteOverrideForSubscription:(id)a3
{
  v4 = MEMORY[0x277CC3620];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v12 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValueWithDefault:v5 key:@"DataIndicatorOverrideForLTE" bundleType:v6 error:&v12];

  v9 = v12;
  if (v9)
  {
    v10 = nph_general_log();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      [NPHCellularBridgeUIManager lteOverrideForSubscription:];
    }
  }

  if (![(__CFString *)v8 length])
  {

    v8 = @"LTE";
  }

  return v8;
}

- (id)simLabelForSubscription:(id)a3
{
  v17 = *MEMORY[0x277D85DE8];
  coreTelephonyClient = self->_coreTelephonyClient;
  v10 = 0;
  v4 = [(CoreTelephonyClient *)coreTelephonyClient getSimLabel:a3 error:&v10];
  v5 = v10;
  v6 = [v4 text];

  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    v12 = "[NPHCellularBridgeUIManager simLabelForSubscription:]";
    v13 = 2112;
    v14 = v6;
    v15 = 2112;
    v16 = v5;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - Label: %@ Error: %@", buf, 0x20u);
  }

  v8 = *MEMORY[0x277D85DE8];

  return v6;
}

- (NSString)trialPlanType
{
  v3 = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsInUse];
  v4 = [v3 firstObject];
  v5 = [(NPHCellularBridgeUIManager *)self _trialPlanTypeForContext:v4];

  return v5;
}

- (id)_trialPlanTypeForContext:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[NPHCellularBridgeUIManager _trialPlanTypeForContext:]";
    v14 = 2112;
    v15 = v4;
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s - subscriptionContext: %@", &v12, 0x16u);
  }

  v6 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:v4];
  v7 = nph_general_log();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[NPHCellularBridgeUIManager _trialPlanTypeForContext:]";
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_243333000, v7, OS_LOG_TYPE_DEFAULT, "%s - serviceSubscriptionInfo: %@", &v12, 0x16u);
  }

  v8 = [v6 trialPlanType];
  v9 = nph_general_log();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v12 = 136315394;
    v13 = "[NPHCellularBridgeUIManager _trialPlanTypeForContext:]";
    v14 = 2112;
    v15 = v8;
    _os_log_impl(&dword_243333000, v9, OS_LOG_TYPE_DEFAULT, "%s - trialPlanType: %@", &v12, 0x16u);
  }

  v10 = *MEMORY[0x277D85DE8];

  return v8;
}

- (int64_t)_minMajorWatchOSVersionForSubscription:(id)a3
{
  v25 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CC3620];
  v5 = a3;
  v6 = [[v4 alloc] initWithBundleType:1];
  coreTelephonyClient = self->_coreTelephonyClient;
  v18 = 0;
  v8 = [(CoreTelephonyClient *)coreTelephonyClient copyCarrierBundleValueWithDefault:v5 key:@"RemoteCardProvisioningSettings" bundleType:v6 error:&v18];

  v9 = v18;
  NSLog(&stru_285612000.isa, v8);
  v10 = [v8 objectForKeyedSubscript:@"MinCompatibleWatchOS"];
  v11 = nph_general_log();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    *buf = 136315650;
    v20 = "[NPHCellularBridgeUIManager _minMajorWatchOSVersionForSubscription:]";
    v21 = 2112;
    v22 = v10;
    v23 = 2112;
    v24 = v9;
    _os_log_impl(&dword_243333000, v11, OS_LOG_TYPE_INFO, "%s - copyCarrierBundleValue for minWatchOSVersion:%@ error:%@", buf, 0x20u);
  }

  if ([v10 length])
  {
    v12 = [MEMORY[0x277CCA900] characterSetWithCharactersInString:@"."];
    v13 = [v10 componentsSeparatedByCharactersInSet:v12];

    v14 = [v13 objectAtIndexedSubscript:0];
    v15 = [v14 integerValue];
  }

  else
  {
    v15 = -1;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)shouldAllowUserToAddOrSetUpPlan
{
  v2 = [(NPHCellularBridgeUIManager *)self serviceSubscriptionsToOfferUser];
  v3 = [v2 count] != 0;

  return v3;
}

- (BOOL)_isSetupBlockingError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  v5 = [v4 isEqualToString:NPHCellularErrorDomain];

  if (!v5)
  {
    v8 = [v3 domain];
    v9 = [v8 isEqualToString:*MEMORY[0x277CF9680]];

    if (!v9)
    {
      v7 = 0;
      goto LABEL_11;
    }

    if ([v3 code] != 21 && objc_msgSend(v3, "code") != 27 && objc_msgSend(v3, "code") != 14)
    {
      v6 = 32;
      goto LABEL_4;
    }

LABEL_9:
    v7 = 1;
    goto LABEL_11;
  }

  if ([v3 code] == 3)
  {
    goto LABEL_9;
  }

  v6 = 2;
LABEL_4:
  v7 = [v3 code] == v6;
LABEL_11:

  return v7;
}

- (id)cellularUseErrors
{
  v25 = *MEMORY[0x277D85DE8];
  v3 = objc_opt_new();
  if ([(NPHCellularBridgeUIManager *)self allCompanionSIMsMissing]&& ![(NPHCellularBridgeUIManager *)self cellularPlanIsSetUp])
  {
    v16 = [MEMORY[0x277CCA9B8] NPHCellularErrorWithCode:2 forSubscriptionContext:0];
    [v3 addObject:v16];
  }

  else
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v4 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
    v5 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = *v21;
      do
      {
        v8 = 0;
        do
        {
          if (*v21 != v7)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v20 + 1) + 8 * v8);
          v10 = [v9 persistentError];
          if (v10)
          {
            [v3 addObject:v10];
          }

          else
          {
            proxyPlanItems = self->_proxyPlanItems;
            if (proxyPlanItems && ![(NSArray *)proxyPlanItems count]&& [(NPHCellularBridgeUIManager *)self _isCarrierSetupFlowUnsupportedForServiceSubscription:v9])
            {
              v12 = MEMORY[0x277CCA9B8];
              v13 = [v9 serviceSubscriptionContext];
              v14 = [v12 NPHCellularErrorWithCode:3 forSubscriptionContext:v13];
              [v3 addObject:v14];
            }
          }

          ++v8;
        }

        while (v6 != v8);
        v15 = [v4 countByEnumeratingWithState:&v20 objects:v24 count:16];
        v6 = v15;
      }

      while (v15);
    }
  }

  v17 = [v3 copy];

  v18 = *MEMORY[0x277D85DE8];

  return v17;
}

- (BOOL)_isPersistentError:(id)a3
{
  v3 = a3;
  v4 = [v3 domain];
  if ([v4 isEqualToString:*MEMORY[0x277CF9680]])
  {
    v5 = [v3 code] == 14 || objc_msgSend(v3, "code") == 20 || objc_msgSend(v3, "code") == 27 || objc_msgSend(v3, "code") == 21 || objc_msgSend(v3, "code") == 32 || objc_msgSend(v3, "code") == 22;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (BOOL)allCompanionSIMsMissing
{
  v2 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v3 = [v2 hasObjectPassingTest:&__block_literal_global_254];

  return v3 ^ 1;
}

uint64_t __53__NPHCellularBridgeUIManager_allCompanionSIMsMissing__block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = [v2 SIMStatus];
  v4 = [v3 length];

  if (v4)
  {
    v5 = [v2 SIMStatus];
    v6 = [v5 isEqualToString:*MEMORY[0x277CC3ED8]] ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6;
}

- (BOOL)_isCarrierSetupFlowUnsupportedForServiceSubscription:(id)a3
{
  outstandingPlanFlowsIdentified = self->_outstandingPlanFlowsIdentified;
  v4 = a3;
  v5 = outstandingPlanFlowsIdentified | [v4 planFlows];
  v6 = [v4 SIMStatus];

  LOBYTE(v4) = [v6 isEqualToString:*MEMORY[0x277CC3F00]];
  return (v5 == 0) & v4;
}

- (BOOL)isCarrierSetupFlowUnsupported
{
  v3 = [(NSMutableDictionary *)self->_serviceSubscriptionInfoList allValues];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __59__NPHCellularBridgeUIManager_isCarrierSetupFlowUnsupported__block_invoke;
  v6[3] = &unk_278DACD88;
  v6[4] = self;
  v4 = [v3 firstObjectPassingTest:v6];

  return v4 == 0;
}

+ (void)_presentErrorTitled:(id)a3 withMessage:(id)a4 onViewController:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = nph_general_log();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    v17 = 136315650;
    v18 = "+[NPHCellularBridgeUIManager _presentErrorTitled:withMessage:onViewController:]";
    v19 = 2112;
    v20 = v7;
    v21 = 2112;
    v22 = v8;
    _os_log_impl(&dword_243333000, v10, OS_LOG_TYPE_DEFAULT, "%s - title: %@  message: %@", &v17, 0x20u);
  }

  v11 = [MEMORY[0x277D75110] alertControllerWithTitle:v7 message:v8 preferredStyle:1];
  [v11 setModalPresentationStyle:2];
  v12 = MEMORY[0x277D750F8];
  v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v14 = [v13 localizedStringForKey:@"ERROR_OK" value:&stru_285611AE0 table:0];
  v15 = [v12 actionWithTitle:v14 style:0 handler:0];

  [v11 addAction:v15];
  [v9 presentViewController:v11 animated:1 completion:0];

  v16 = *MEMORY[0x277D85DE8];
}

+ (void)presentCellularError:(id)a3 onViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = nph_general_log();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    +[NPHCellularBridgeUIManager presentCellularError:onViewController:];
  }

  v9 = [v6 domain];
  v10 = *MEMORY[0x277CF9680];
  if ([v9 isEqualToString:*MEMORY[0x277CF9680]])
  {
    v11 = [v6 code];

    if (v11 == 16)
    {
      v12 = [v6 description];
      BPSPresentGizmoUnreachableServiceAlertWithDismissalHandler();

      goto LABEL_23;
    }
  }

  else
  {
  }

  v13 = [v6 domain];
  if ([v13 isEqualToString:v10])
  {
    v14 = [v6 code];

    if (v14 == 28)
    {
      [a1 _presentAirplaneModeOnAlertOnViewController:v7];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v15 = [v6 domain];
  if ([v15 isEqualToString:v10])
  {
    v16 = [v6 code];

    if (v16 == 29)
    {
      [a1 _presentCellularRequiredModeAlertOnViewController:v7];
      goto LABEL_23;
    }
  }

  else
  {
  }

  v17 = [v6 domain];
  if ([v17 isEqualToString:@"NPHCellularDataUsageErrorDomain"])
  {
    v18 = [v6 code];

    if (v18 == 35)
    {
      v19 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v20 = [v19 localizedStringForKey:@"ERROR_TRY_AGAIN_TITLE" value:&stru_285611AE0 table:0];
      v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
      v22 = [v21 localizedStringForKey:@"ERROR_TRY_AGAIN_MESSAGE" value:&stru_285611AE0 table:0];
      [a1 _presentErrorTitled:v20 withMessage:v22 onViewController:v7];

      goto LABEL_23;
    }
  }

  else
  {
  }

  v23 = [v6 userInfo];
  v24 = [v23 objectForKeyedSubscript:NPHCellularErrorTitleKey];
  v25 = v24;
  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v27 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v26 = [v27 localizedStringForKey:@"ERROR_GENERIC_TITLE" value:&stru_285611AE0 table:0];
  }

  v28 = [v6 userInfo];
  v29 = [v28 objectForKeyedSubscript:*MEMORY[0x277CCA450]];

  [a1 _presentErrorTitled:v26 withMessage:v29 onViewController:v7];
LABEL_23:
}

+ (void)_presentAirplaneModeOnAlertOnViewController:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "+[NPHCellularBridgeUIManager _presentAirplaneModeOnAlertOnViewController:]";
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v7 = [v6 localizedStringForKey:@"AIRPLANE_MODE_ERROR_TITLE" value:&stru_285611AE0 table:0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v9 = [v8 localizedStringForKey:@"AIRPLANE_MODE_TURN_OFF_ACTION" value:&stru_285611AE0 table:0];
  [a1 _presentErrorTitle:v7 onViewController:v4 withActionTitle:v9 actionHandler:&__block_literal_global_274];

  v10 = *MEMORY[0x277D85DE8];
}

void __74__NPHCellularBridgeUIManager__presentAirplaneModeOnAlertOnViewController___block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = nph_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[NPHCellularBridgeUIManager _presentAirplaneModeOnAlertOnViewController:]_block_invoke";
    _os_log_impl(&dword_243333000, v0, OS_LOG_TYPE_DEFAULT, "%s - turning off airplane mode", &v3, 0xCu);
  }

  v1 = objc_alloc_init(MEMORY[0x277CEC5D0]);
  [v1 setAirplaneMode:0];

  v2 = *MEMORY[0x277D85DE8];
}

+ (void)_presentCellularRequiredModeAlertOnViewController:(id)a3
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = nph_general_log();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v11 = 136315138;
    v12 = "+[NPHCellularBridgeUIManager _presentCellularRequiredModeAlertOnViewController:]";
    _os_log_impl(&dword_243333000, v5, OS_LOG_TYPE_DEFAULT, "%s", &v11, 0xCu);
  }

  v6 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v7 = [v6 localizedStringForKey:@"CELLULAR_DATA_ERROR_TITLE" value:&stru_285611AE0 table:0];
  v8 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v9 = [v8 localizedStringForKey:@"CELLULAR_DATA_TURN_ON_ACTION" value:&stru_285611AE0 table:0];
  [a1 _presentErrorTitle:v7 onViewController:v4 withActionTitle:v9 actionHandler:&__block_literal_global_283];

  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __80__NPHCellularBridgeUIManager__presentCellularRequiredModeAlertOnViewController___block_invoke()
{
  v5 = *MEMORY[0x277D85DE8];
  v0 = nph_general_log();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v3 = 136315138;
    v4 = "+[NPHCellularBridgeUIManager _presentCellularRequiredModeAlertOnViewController:]_block_invoke";
    _os_log_impl(&dword_243333000, v0, OS_LOG_TYPE_DEFAULT, "%s - turning on cellular data", &v3, 0xCu);
  }

  CTSUServerConnectionRef();
  result = _CTServerConnectionSetCellularDataIsEnabled();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)_presentErrorTitle:(id)a3 onViewController:(id)a4 withActionTitle:(id)a5 actionHandler:(id)a6
{
  v10 = a6;
  v11 = a5;
  v12 = a4;
  v13 = a3;
  v14 = nph_general_log();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    +[NPHCellularBridgeUIManager _presentErrorTitle:onViewController:withActionTitle:actionHandler:];
  }

  v15 = [MEMORY[0x277D75110] alertControllerWithTitle:v13 message:0 preferredStyle:1];

  [v15 setModalPresentationStyle:2];
  v16 = [MEMORY[0x277D750F8] actionWithTitle:v11 style:0 handler:v10];

  [v15 addAction:v16];
  v17 = MEMORY[0x277D750F8];
  v18 = [MEMORY[0x277CCA8D8] bundleForClass:a1];
  v19 = [v18 localizedStringForKey:@"CELLULAR_ERROR_CLOSE_ACTION" value:&stru_285611AE0 table:0];
  v20 = [v17 actionWithTitle:v19 style:1 handler:0];

  [v15 addAction:v20];
  [v12 presentViewController:v15 animated:1 completion:0];
}

- (void)_promptForUserConsentForCarrierWebsiteIfNecessary:(id)a3 withCompletion:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(NPHCellularBridgeUIManager *)self _serviceSubscriptionInfoForSubscriptionContext:v6];
  if (([v8 planFlows] & 0x40) != 0)
  {
    v9 = MEMORY[0x277CCACA8];
    v10 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v11 = [v10 localizedStringForKey:@"WEB_CONSENT_TITLE" value:&stru_285611AE0 table:0];
    v12 = [(NPHCellularBridgeUIManager *)self carrierNameForSubscription:v6];
    v26 = [v9 stringWithFormat:v11, v12];

    v13 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v25 = [v13 localizedStringForKey:@"WEB_CONSENT_MESSAGE" value:&stru_285611AE0 table:0];

    v14 = [MEMORY[0x277D75110] alertControllerWithTitle:v26 message:v25 preferredStyle:1];
    v15 = MEMORY[0x277D750F8];
    v16 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v17 = [v16 localizedStringForKey:@"WEB_CONSENT_CONTINUE" value:&stru_285611AE0 table:0];
    v31[0] = MEMORY[0x277D85DD0];
    v31[1] = 3221225472;
    v31[2] = __95__NPHCellularBridgeUIManager__promptForUserConsentForCarrierWebsiteIfNecessary_withCompletion___block_invoke;
    v31[3] = &unk_278DACBD0;
    v18 = v7;
    v32 = v18;
    v19 = [v15 actionWithTitle:v17 style:0 handler:v31];

    [v14 addAction:v19];
    v20 = MEMORY[0x277D750F8];
    v21 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v22 = [v21 localizedStringForKey:@"WEB_CONSENT_CANCEL" value:&stru_285611AE0 table:0];
    v29[0] = MEMORY[0x277D85DD0];
    v29[1] = 3221225472;
    v29[2] = __95__NPHCellularBridgeUIManager__promptForUserConsentForCarrierWebsiteIfNecessary_withCompletion___block_invoke_2;
    v29[3] = &unk_278DACBD0;
    v30 = v18;
    v23 = [v20 actionWithTitle:v22 style:1 handler:v29];

    [v14 addAction:v23];
    v27[0] = MEMORY[0x277D85DD0];
    v27[1] = 3221225472;
    v27[2] = __95__NPHCellularBridgeUIManager__promptForUserConsentForCarrierWebsiteIfNecessary_withCompletion___block_invoke_3;
    v27[3] = &unk_278DAC898;
    v27[4] = self;
    v28 = v14;
    v24 = v14;
    nph_ensure_on_main_queue(v27);
  }

  else
  {
    (*(v7 + 2))(v7, 1);
  }
}

void __72__NPHCellularBridgeUIManager__updateSIMStatusForAllSubscriptionContexts__block_invoke_108_cold_1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)_updateSIMStatusForSubscriptionContext:withStatus:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __60__NPHCellularBridgeUIManager__updateCoreTelephonyClientInfo__block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __72__NPHCellularBridgeUIManager_installPendingCellularPlan_withCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:.cold.2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_updateTransferableCellularPlanFromDeviceWithCSN:(os_log_t)log .cold.3(uint8_t *buf, void *a2, os_log_t log)
{
  *buf = 136315138;
  *a2 = "[NPHCellularBridgeUIManager _updateTransferableCellularPlanFromDeviceWithCSN:]";
  _os_log_error_impl(&dword_243333000, log, OS_LOG_TYPE_ERROR, "%s - count of transferable plan is more than 1", buf, 0xCu);
}

- (void)setUpCellularPlanOnViewController:withContext:withCompletion:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)transferCellularPlanOnViewController:(void *)a1 withCompletion:(NSObject *)a2 .cold.1(void *a1, NSObject *a2)
{
  v13 = *MEMORY[0x277D85DE8];
  v4 = [a1 transferableRemotePlan];
  v5 = [a1 transferableRemoteDeviceID];
  v7 = 136315650;
  v8 = "[NPHCellularBridgeUIManager transferCellularPlanOnViewController:withCompletion:]";
  v9 = 2112;
  v10 = v4;
  v11 = 2112;
  v12 = v5;
  _os_log_error_impl(&dword_243333000, a2, OS_LOG_TYPE_ERROR, "%s - Unable to transfer: %@ %@", &v7, 0x20u);

  v6 = *MEMORY[0x277D85DE8];
}

void __82__NPHCellularBridgeUIManager_transferCellularPlanOnViewController_withCompletion___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __67__NPHCellularBridgeUIManager__updateCellularPlansWithFetch_forCSN___block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __63__NPHCellularBridgeUIManager__updateShouldShowAddNewRemotePlan__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __56__NPHCellularBridgeUIManager__updateIsRemotePlanCapable__block_invoke_2_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)carrierNameForSubscription:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)carrierPhoneNumberForSubscription:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)formattedPhoneNumberForSubscription:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lteOverrideForSubscription:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)presentCellularError:onViewController:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

+ (void)_presentErrorTitle:onViewController:withActionTitle:actionHandler:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end