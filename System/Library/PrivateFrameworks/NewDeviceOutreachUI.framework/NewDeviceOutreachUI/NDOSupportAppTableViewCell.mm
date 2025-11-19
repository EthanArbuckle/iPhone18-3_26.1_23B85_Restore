@interface NDOSupportAppTableViewCell
- (CGSize)sizeThatFits:(CGSize)a3;
- (NDOSupportAppTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (id)presentingViewControllerForLockupView:(id)a3;
- (void)_setupAppSuportCell;
- (void)dealloc;
- (void)layoutSubviews;
- (void)lockupView:(id)a3 appStateDidChange:(id)a4;
- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4;
- (void)lockupViewDidBeginRequest:(id)a3;
- (void)lockupViewDidFinishRequest:(id)a3;
- (void)openButtonAction;
- (void)updateConstraints;
@end

@implementation NDOSupportAppTableViewCell

- (NDOSupportAppTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v8 = a5;
  v17.receiver = self;
  v17.super_class = NDOSupportAppTableViewCell;
  v9 = [(PSTableCell *)&v17 initWithStyle:a3 reuseIdentifier:a4 specifier:v8];
  v10 = v9;
  if (v9)
  {
    [(NDOSupportAppTableViewCell *)v9 _setupAppSuportCell];
    v11 = [v8 propertyForKey:@"NDOWarranty"];
    v12 = [v11 supportAppURL];
    v13 = v12;
    if (v12)
    {
      v14 = v12;
    }

    else
    {
      v14 = @"https://getsupport.apple.com/?caller=prefscoverage";
    }

    objc_storeStrong(&v10->_supportAppURL, v14);

    v15 = _NDOLogSystem();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      [NDOSupportAppTableViewCell initWithStyle:? reuseIdentifier:? specifier:?];
    }
  }

  return v10;
}

- (void)layoutSubviews
{
  v7 = *MEMORY[0x277D85DE8];
  v3 = [a1 lockupView];
  [v3 frame];
  v4 = NSStringFromRect(v8);
  v6[0] = 136446466;
  OUTLINED_FUNCTION_0();
  _os_log_debug_impl(&dword_25BD8D000, a2, OS_LOG_TYPE_DEBUG, "%{public}s: lockupView frame: %@", v6, 0x16u);

  v5 = *MEMORY[0x277D85DE8];
}

- (void)_setupAppSuportCell
{
  v33[1] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277CEC298]);
  v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [(NDOSupportAppTableViewCell *)self setLockupView:v4];

  v5 = [(NDOSupportAppTableViewCell *)self lockupView];
  [v5 setDelegate:self];

  v6 = [(NDOSupportAppTableViewCell *)self lockupView];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = *MEMORY[0x277CEC248];
  v8 = [(NDOSupportAppTableViewCell *)self lockupView];
  [v8 setSize:v7];

  v9 = [MEMORY[0x277CCA8D8] mainBundle];
  v10 = [v9 bundleIdentifier];

  if ([v10 isEqualToString:@"com.apple.Bridge"])
  {
    v11 = [MEMORY[0x277CEC2B8] primaryTheme];
    v12 = objc_alloc(MEMORY[0x277CEC2B8]);
    v31 = [v11 titleBackgroundColor];
    [MEMORY[0x277D75348] orangeColor];
    v13 = v32 = v10;
    v14 = [MEMORY[0x277D75348] orangeColor];
    v15 = [v14 colorWithAlphaComponent:0.3];
    v16 = [v11 subtitleTextColor];
    v17 = [MEMORY[0x277D75348] orangeColor];
    v18 = [v11 progressColor];
    v19 = [v12 initWithTitleBackgroundColor:v31 titleTextColor:v13 titleTextDisabledColor:v15 subtitleTextColor:v16 iconTintColor:v17 progressColor:v18];
    v20 = [(NDOSupportAppTableViewCell *)self lockupView];
    [v20 setOfferTheme:v19];

    v10 = v32;
  }

  v21 = [objc_alloc(MEMORY[0x277CEC258]) initWithStringValue:@"1130498044"];
  v22 = objc_alloc(MEMORY[0x277CEC290]);
  v23 = [v22 _initWithID:v21 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC218] clientID:@"SupportApp"];
  v24 = [(NDOSupportAppTableViewCell *)self lockupView];
  [v24 setRequest:v23];

  v25 = [(NDOSupportAppTableViewCell *)self contentView];
  v26 = [(NDOSupportAppTableViewCell *)self lockupView];
  [v25 addSubview:v26];

  [(NDOSupportAppTableViewCell *)self layoutSubviews];
  v33[0] = objc_opt_class();
  v27 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:1];
  v28 = [(NDOSupportAppTableViewCell *)self registerForTraitChanges:v27 withAction:sel_didChangeTraitPreferredContentSizeCategory];
  traitRegistration = self->_traitRegistration;
  self->_traitRegistration = v28;

  v30 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraints
{
  v22[3] = *MEMORY[0x277D85DE8];
  v14 = MEMORY[0x277CCAAD0];
  v20 = [(NDOSupportAppTableViewCell *)self contentView];
  v18 = [v20 leadingAnchor];
  v19 = [(NDOSupportAppTableViewCell *)self lockupView];
  v17 = [v19 leadingAnchor];
  v16 = [v18 constraintEqualToAnchor:v17];
  v22[0] = v16;
  v15 = [(NDOSupportAppTableViewCell *)self contentView];
  v13 = [v15 trailingAnchor];
  v3 = [(NDOSupportAppTableViewCell *)self lockupView];
  v4 = [v3 trailingAnchor];
  v5 = [v13 constraintEqualToAnchor:v4];
  v22[1] = v5;
  v6 = [(NDOSupportAppTableViewCell *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [(NDOSupportAppTableViewCell *)self lockupView];
  v9 = [v8 topAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  v22[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v14 activateConstraints:v11];

  v21.receiver = self;
  v21.super_class = NDOSupportAppTableViewCell;
  [(NDOSupportAppTableViewCell *)&v21 updateConstraints];
  v12 = *MEMORY[0x277D85DE8];
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  height = a3.height;
  width = a3.width;
  v5 = [(NDOSupportAppTableViewCell *)self lockupView];
  [v5 sizeThatFits:{width, height}];
  v7 = v6;
  v9 = v8;

  v10 = v7;
  v11 = v9;
  result.height = v11;
  result.width = v10;
  return result;
}

- (void)dealloc
{
  [(NDOSupportAppTableViewCell *)self unregisterForTraitChanges:self->_traitRegistration];
  v3.receiver = self;
  v3.super_class = NDOSupportAppTableViewCell;
  [(PSTableCell *)&v3 dealloc];
}

- (void)openButtonAction
{
  v2 = MEMORY[0x277CBEBC0];
  supportAppURL = self->_supportAppURL;
  v4 = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v5 = [(NSString *)supportAppURL stringByAddingPercentEncodingWithAllowedCharacters:v4];
  v6 = [v2 URLWithString:v5];

  v7 = [MEMORY[0x277D75128] sharedApplication];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__NDOSupportAppTableViewCell_openButtonAction__block_invoke;
  v9[3] = &unk_279978278;
  v10 = v6;
  v8 = v6;
  [v7 openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:v9];
}

void __46__NDOSupportAppTableViewCell_openButtonAction__block_invoke(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    v3 = _NDOLogSystem();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      __46__NDOSupportAppTableViewCell_openButtonAction__block_invoke_cold_1(a1, v3);
    }
  }
}

- (id)presentingViewControllerForLockupView:(id)a3
{
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell presentingViewControllerForLockupView:];
  }

  v5 = [(NDOSupportAppTableViewCell *)self parentViewController];

  return v5;
}

- (void)lockupViewDidBeginRequest:(id)a3
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell lockupViewDidBeginRequest:];
  }
}

- (void)lockupViewDidFinishRequest:(id)a3
{
  v4 = a3;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell lockupViewDidFinishRequest:];
  }

  if (!self->_originalAppOffer)
  {
    v6 = [v4 lockup];
    v7 = [v6 offer];
    originalAppOffer = self->_originalAppOffer;
    self->_originalAppOffer = v7;
  }

  v9 = [MEMORY[0x277CEC2A8] sharedMetrics];
  v10 = [v4 lockup];
  v11 = [v10 lockupWithOffer:self->_originalAppOffer];
  v12 = [v9 recordCampaignToken:@"coverage.settings" providerToken:@"2003" withLockup:v11];
}

- (void)lockupView:(id)a3 didFailRequestWithError:(id)a4
{
  v4 = a4;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NDOSupportAppTableViewCell lockupView:didFailRequestWithError:];
  }
}

- (void)lockupView:(id)a3 appStateDidChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell lockupView:appStateDidChange:];
  }

  if (([v7 isEqual:*MEMORY[0x277CEC1A0]] & 1) != 0 || objc_msgSend(v7, "isEqual:", *MEMORY[0x277CEC1A8]))
  {
    v9 = MEMORY[0x277CEC2B0];
    v10 = [MEMORY[0x277CCA8D8] bundleWithPath:@"/System/Library/PrivateFrameworks/NewDeviceOutreachUI.framework"];
    v11 = [v10 localizedStringForKey:@"OPEN" value:&stru_286D71538 table:@"Localizable"];
    v12 = [v9 textMetadataWithTitle:v11 subtitle:0];

    v13 = objc_alloc(MEMORY[0x277CEC278]);
    v17[0] = MEMORY[0x277D85DD0];
    v17[1] = 3221225472;
    v17[2] = __59__NDOSupportAppTableViewCell_lockupView_appStateDidChange___block_invoke;
    v17[3] = &unk_2799782A0;
    v17[4] = self;
    v14 = [v13 initWithMetadata:v12 action:v17];
    v15 = [v6 lockup];
    v16 = [v15 lockupWithOffer:v14];
    [v6 setLockup:v16];
  }
}

uint64_t __59__NDOSupportAppTableViewCell_lockupView_appStateDidChange___block_invoke(uint64_t a1)
{
  v2 = _NDOLogSystem();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __59__NDOSupportAppTableViewCell_lockupView_appStateDidChange___block_invoke_cold_1();
  }

  return [*(a1 + 32) openButtonAction];
}

- (void)initWithStyle:(uint64_t *)a1 reuseIdentifier:specifier:.cold.1(uint64_t *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x277D85DE8];
}

void __46__NDOSupportAppTableViewCell_openButtonAction__block_invoke_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *(a1 + 32);
  v4 = 138412290;
  v5 = v2;
  _os_log_error_impl(&dword_25BD8D000, a2, OS_LOG_TYPE_ERROR, "Could not open URL %@", &v4, 0xCu);
  v3 = *MEMORY[0x277D85DE8];
}

- (void)presentingViewControllerForLockupView:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lockupViewDidBeginRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lockupViewDidFinishRequest:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)lockupView:didFailRequestWithError:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  v2[0] = 136446466;
  OUTLINED_FUNCTION_0();
  _os_log_error_impl(&dword_25BD8D000, v0, OS_LOG_TYPE_ERROR, "%{public}s: Failed with error: %@", v2, 0x16u);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)lockupView:appStateDidChange:.cold.1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void __59__NDOSupportAppTableViewCell_lockupView_appStateDidChange___block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end