@interface DSPrivateRelayController
+ (void)initialize;
- (DSNavigationDelegate)delegate;
- (DSPrivateRelayController)init;
- (id)enableButtonTitle;
- (id)privateRelayDetailText;
- (void)learnMorePressed;
- (void)setPrivateRelayEnabledWithHandler:(id)a3;
- (void)shouldShowWithCompletion:(id)a3;
- (void)turnOnPrivateRelay;
- (void)viewDidLoad;
@end

@implementation DSPrivateRelayController

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    DSLogPrivateRelay = os_log_create("com.apple.DigitalSeparation", "DSPrivateRelayController");

    MEMORY[0x2821F96F8]();
  }
}

- (DSPrivateRelayController)init
{
  v3 = +[DSFeatureFlags isNaturalUIEnabled];
  v4 = DSUILocStringForKey(@"PRIVATE_RELAY_TITLE");
  v5 = [DSUIUtilities valueForUnfinalizedString:v4];
  if (v3)
  {
    v10.receiver = self;
    v10.super_class = DSPrivateRelayController;
    v6 = [(DSPrivateRelayController *)&v10 initWithTitle:v5 detailText:0 symbolName:@"network.badge.shield.half.filled"];
  }

  else
  {
    v7 = [MEMORY[0x277D755B8] systemImageNamed:@"network.badge.shield.half.filled"];
    v9.receiver = self;
    v9.super_class = DSPrivateRelayController;
    v6 = [(DSPrivateRelayController *)&v9 initWithTitle:v5 detailText:0 icon:v7];
  }

  return v6;
}

- (void)shouldShowWithCompletion:(id)a3
{
  v4 = a3;
  v5 = sharedWorkQueue();
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke;
  v7[3] = &unk_278F75718;
  v7[4] = self;
  v8 = v4;
  v6 = v4;
  dispatch_async(v5, v7);
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke(uint64_t a1)
{
  if ([MEMORY[0x277D054A8] isPrivateRelayRestricted])
  {
    v2 = DSLogPrivateRelay;
    if (os_log_type_enabled(DSLogPrivateRelay, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C7E000, v2, OS_LOG_TYPE_INFO, "Private Relay restricted by ScreenTime/MDM", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v3 = MEMORY[0x277D2CA68];
    v4 = sharedWorkQueue();
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_316;
    v6[3] = &unk_278F756F0;
    v5 = *(a1 + 40);
    v6[4] = *(a1 + 32);
    v7 = v5;
    [v3 getPrivacyProxyAccountType:v4 completionHandler:v6];
  }
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_316(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (v5)
  {
    if (os_log_type_enabled(DSLogPrivateRelay, OS_LOG_TYPE_ERROR))
    {
      __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_316_cold_1();
    }

    goto LABEL_6;
  }

  if (a2 != 2)
  {
LABEL_6:
    (*(*(a1 + 40) + 16))();
    goto LABEL_7;
  }

  v6 = MEMORY[0x277D2CA68];
  v7 = sharedWorkQueue();
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_317;
  v9[3] = &unk_278F756C8;
  v8 = *(a1 + 40);
  v9[4] = *(a1 + 32);
  v10 = v8;
  [v6 getServiceStatus:v7 completionHandler:v9];

LABEL_7:
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_317(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6 && os_log_type_enabled(DSLogPrivateRelay, OS_LOG_TYPE_ERROR))
  {
    __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_317_cold_1();
  }

  v7 = [v5 serviceStatus];
  [*(a1 + 32) setProxyServiceStatus:v7];
  if (v7 == 6)
  {
    v8 = DSLogPrivateRelay;
    if (os_log_type_enabled(DSLogPrivateRelay, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&dword_248C7E000, v8, OS_LOG_TYPE_INFO, "User has Private Relay access but is in an unsupported region", buf, 2u);
    }

    (*(*(a1 + 40) + 16))();
  }

  else
  {
    v9 = MEMORY[0x277D2CA68];
    v10 = sharedWorkQueue();
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_318;
    v11[3] = &unk_278F756A0;
    v12 = *(a1 + 40);
    v13 = v7;
    [v9 getGeohashSharingPreference:v10 completionHandler:v11];
  }
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_318(uint64_t a1, unsigned int a2, void *a3)
{
  v5 = a3;
  if (v5 && os_log_type_enabled(DSLogPrivateRelay, OS_LOG_TYPE_ERROR))
  {
    __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_318_cold_1();
  }

  v6 = *(a1 + 40);
  if (v6 == 1)
  {
    v7 = a2;
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v8 = v7;
  }

  else
  {
    v8 = 1;
  }

  (*(*(a1 + 32) + 16))(*(a1 + 32), v8);
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = DSPrivateRelayController;
  [(DSOBWelcomeController *)&v11 viewDidLoad];
  v3 = [(DSPrivateRelayController *)self headerView];
  v4 = [(DSPrivateRelayController *)self privateRelayDetailText];
  [v3 setDetailText:v4];

  v5 = [(DSPrivateRelayController *)self enableButtonTitle];
  v6 = [DSUIUtilities setUpBoldButtonForController:self title:v5 target:self selector:sel_turnOnPrivateRelay];
  [(DSPrivateRelayController *)self setEnableButton:v6];

  v7 = DSUILocStringForKey(@"SKIP");
  v8 = [(DSPrivateRelayController *)self delegate];
  v9 = [DSUIUtilities setUpLinkButtonForController:self title:v7 target:v8 selector:sel_pushNextPane];
  [(DSPrivateRelayController *)self setLinkButton:v9];

  v10 = [DSUIUtilities setUpLearnMoreButtonForController:self selector:sel_learnMorePressed];
}

- (void)turnOnPrivateRelay
{
  v3 = [(DSPrivateRelayController *)self buttonTray];
  [v3 showButtonsBusy];

  objc_initWeak(&location, self);
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke;
  v4[3] = &unk_278F752D0;
  objc_copyWeak(&v5, &location);
  [(DSPrivateRelayController *)self setPrivateRelayEnabledWithHandler:v4];
  objc_destroyWeak(&v5);
  objc_destroyWeak(&location);
}

void __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    if (os_log_type_enabled(DSLogPrivateRelay, OS_LOG_TYPE_ERROR))
    {
      __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke_cold_1();
    }

    v6 = DSUILocStringForKey(@"PRIVATE_RELAY_FAILURE_TITLE");
    v7 = [DSUIUtilities valueForUnfinalizedString:v6];
    v8 = DSUILocStringForKey(@"PRIVATE_RELAY_FAILURE_DETAIL");
    v9 = [DSUIUtilities valueForUnfinalizedString:v8];
    v11[4] = v5;
    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke_340;
    v12[3] = &unk_278F750A0;
    v12[4] = v5;
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke_2;
    v11[3] = &unk_278F750A0;
    [v5 presentErrorAlertWithTitle:v7 message:v9 continueHandler:v12 tryAgainHandler:v11];
  }

  else
  {
    v10 = [WeakRetained buttonTray];
    [v10 showButtonsAvailable];

    v6 = [v5 delegate];
    [v6 pushNextPane];
  }
}

void __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke_340(uint64_t a1)
{
  v2 = [*(a1 + 32) buttonTray];
  [v2 showButtonsAvailable];

  v3 = [*(a1 + 32) delegate];
  [v3 pushNextPane];
}

- (void)setPrivateRelayEnabledWithHandler:(id)a3
{
  v3 = a3;
  v4 = sharedWorkQueue();
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __62__DSPrivateRelayController_setPrivateRelayEnabledWithHandler___block_invoke;
  block[3] = &unk_278F75490;
  v7 = v3;
  v5 = v3;
  dispatch_async(v4, block);
}

void __62__DSPrivateRelayController_setPrivateRelayEnabledWithHandler___block_invoke(uint64_t a1)
{
  v1 = MEMORY[0x277D2CA68];
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = __62__DSPrivateRelayController_setPrivateRelayEnabledWithHandler___block_invoke_2;
  v2[3] = &unk_278F754E0;
  v3 = *(a1 + 32);
  [v1 setUserTier:2 queue:MEMORY[0x277D85CD0] completionHandler:v2];
}

void __62__DSPrivateRelayController_setPrivateRelayEnabledWithHandler___block_invoke_2(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = *(*(a1 + 32) + 16);

    v4();
  }

  else
  {
    v8 = v2;
    v9 = v3;
    v5 = MEMORY[0x277D2CA68];
    v6[0] = MEMORY[0x277D85DD0];
    v6[1] = 3221225472;
    v6[2] = __62__DSPrivateRelayController_setPrivateRelayEnabledWithHandler___block_invoke_3;
    v6[3] = &unk_278F754E0;
    v7 = *(a1 + 32);
    [v5 setGeohashSharingPreference:0 queue:MEMORY[0x277D85CD0] completionHandler:v6];
  }
}

- (void)learnMorePressed
{
  v5 = [(DSPrivateRelayController *)self delegate];
  v3 = DSUILocStringForKey(@"PRIVATE_RELAY_LEARN_MORE_URL");
  v4 = [DSUIUtilities valueForUnfinalizedString:v3];
  [v5 learnMorePressedForController:self withURL:v4];
}

- (id)enableButtonTitle
{
  if ([(DSPrivateRelayController *)self proxyServiceStatus]== 1)
  {
    v2 = @"ENABLE_BROAD_IP_TITLE";
  }

  else
  {
    v2 = @"ENABLE_PRIVATE_RELAY_TITLE";
  }

  v3 = DSUILocStringForKey(v2);
  v4 = [DSUIUtilities valueForUnfinalizedString:v3];

  return v4;
}

- (id)privateRelayDetailText
{
  if ([(DSPrivateRelayController *)self proxyServiceStatus]== 1)
  {
    v2 = @"PRIVATE_RELAY_USER_HAS_LOCALIZED_ADDRESS_DETAIL";
  }

  else
  {
    v2 = @"PRIVATE_RELAY_SUBSCRIPTION_TURNED_OFF_DETAIL";
  }

  v3 = DSUILocStringForKey(v2);
  v4 = [DSUIUtilities valueForUnfinalizedString:v3];

  return v4;
}

- (DSNavigationDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_316_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "An error occurred while getting Private Relay account type: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_317_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "An error occurred while getting Private Relay service status: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __53__DSPrivateRelayController_shouldShowWithCompletion___block_invoke_318_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "An error occurred while getting Private Relay IP Address setting: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__DSPrivateRelayController_turnOnPrivateRelay__block_invoke_cold_1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_248C7E000, v0, v1, "Error enabling private relay: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end