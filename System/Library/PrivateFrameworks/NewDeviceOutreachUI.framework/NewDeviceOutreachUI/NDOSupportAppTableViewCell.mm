@interface NDOSupportAppTableViewCell
- (CGSize)sizeThatFits:(CGSize)fits;
- (NDOSupportAppTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (id)presentingViewControllerForLockupView:(id)view;
- (void)_setupAppSuportCell;
- (void)dealloc;
- (void)layoutSubviews;
- (void)lockupView:(id)view appStateDidChange:(id)change;
- (void)lockupView:(id)view didFailRequestWithError:(id)error;
- (void)lockupViewDidBeginRequest:(id)request;
- (void)lockupViewDidFinishRequest:(id)request;
- (void)openButtonAction;
- (void)updateConstraints;
@end

@implementation NDOSupportAppTableViewCell

- (NDOSupportAppTableViewCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  specifierCopy = specifier;
  v17.receiver = self;
  v17.super_class = NDOSupportAppTableViewCell;
  v9 = [(PSTableCell *)&v17 initWithStyle:style reuseIdentifier:identifier specifier:specifierCopy];
  v10 = v9;
  if (v9)
  {
    [(NDOSupportAppTableViewCell *)v9 _setupAppSuportCell];
    v11 = [specifierCopy propertyForKey:@"NDOWarranty"];
    supportAppURL = [v11 supportAppURL];
    v13 = supportAppURL;
    if (supportAppURL)
    {
      v14 = supportAppURL;
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
  lockupView = [self lockupView];
  [lockupView frame];
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

  lockupView = [(NDOSupportAppTableViewCell *)self lockupView];
  [lockupView setDelegate:self];

  lockupView2 = [(NDOSupportAppTableViewCell *)self lockupView];
  [lockupView2 setTranslatesAutoresizingMaskIntoConstraints:0];

  v7 = *MEMORY[0x277CEC248];
  lockupView3 = [(NDOSupportAppTableViewCell *)self lockupView];
  [lockupView3 setSize:v7];

  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  bundleIdentifier = [mainBundle bundleIdentifier];

  if ([bundleIdentifier isEqualToString:@"com.apple.Bridge"])
  {
    primaryTheme = [MEMORY[0x277CEC2B8] primaryTheme];
    v12 = objc_alloc(MEMORY[0x277CEC2B8]);
    titleBackgroundColor = [primaryTheme titleBackgroundColor];
    [MEMORY[0x277D75348] orangeColor];
    v13 = v32 = bundleIdentifier;
    orangeColor = [MEMORY[0x277D75348] orangeColor];
    v15 = [orangeColor colorWithAlphaComponent:0.3];
    subtitleTextColor = [primaryTheme subtitleTextColor];
    orangeColor2 = [MEMORY[0x277D75348] orangeColor];
    progressColor = [primaryTheme progressColor];
    v19 = [v12 initWithTitleBackgroundColor:titleBackgroundColor titleTextColor:v13 titleTextDisabledColor:v15 subtitleTextColor:subtitleTextColor iconTintColor:orangeColor2 progressColor:progressColor];
    lockupView4 = [(NDOSupportAppTableViewCell *)self lockupView];
    [lockupView4 setOfferTheme:v19];

    bundleIdentifier = v32;
  }

  v21 = [objc_alloc(MEMORY[0x277CEC258]) initWithStringValue:@"1130498044"];
  v22 = objc_alloc(MEMORY[0x277CEC290]);
  v23 = [v22 _initWithID:v21 kind:*MEMORY[0x277CEC230] context:*MEMORY[0x277CEC218] clientID:@"SupportApp"];
  lockupView5 = [(NDOSupportAppTableViewCell *)self lockupView];
  [lockupView5 setRequest:v23];

  contentView = [(NDOSupportAppTableViewCell *)self contentView];
  lockupView6 = [(NDOSupportAppTableViewCell *)self lockupView];
  [contentView addSubview:lockupView6];

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
  contentView = [(NDOSupportAppTableViewCell *)self contentView];
  leadingAnchor = [contentView leadingAnchor];
  lockupView = [(NDOSupportAppTableViewCell *)self lockupView];
  leadingAnchor2 = [lockupView leadingAnchor];
  v16 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v22[0] = v16;
  contentView2 = [(NDOSupportAppTableViewCell *)self contentView];
  trailingAnchor = [contentView2 trailingAnchor];
  lockupView2 = [(NDOSupportAppTableViewCell *)self lockupView];
  trailingAnchor2 = [lockupView2 trailingAnchor];
  v5 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v22[1] = v5;
  contentView3 = [(NDOSupportAppTableViewCell *)self contentView];
  topAnchor = [contentView3 topAnchor];
  lockupView3 = [(NDOSupportAppTableViewCell *)self lockupView];
  topAnchor2 = [lockupView3 topAnchor];
  v10 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v22[2] = v10;
  v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:3];
  [v14 activateConstraints:v11];

  v21.receiver = self;
  v21.super_class = NDOSupportAppTableViewCell;
  [(NDOSupportAppTableViewCell *)&v21 updateConstraints];
  v12 = *MEMORY[0x277D85DE8];
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  height = fits.height;
  width = fits.width;
  lockupView = [(NDOSupportAppTableViewCell *)self lockupView];
  [lockupView sizeThatFits:{width, height}];
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
  uRLQueryAllowedCharacterSet = [MEMORY[0x277CCA900] URLQueryAllowedCharacterSet];
  v5 = [(NSString *)supportAppURL stringByAddingPercentEncodingWithAllowedCharacters:uRLQueryAllowedCharacterSet];
  v6 = [v2 URLWithString:v5];

  mEMORY[0x277D75128] = [MEMORY[0x277D75128] sharedApplication];
  v9[0] = MEMORY[0x277D85DD0];
  v9[1] = 3221225472;
  v9[2] = __46__NDOSupportAppTableViewCell_openButtonAction__block_invoke;
  v9[3] = &unk_279978278;
  v10 = v6;
  v8 = v6;
  [mEMORY[0x277D75128] openURL:v8 options:MEMORY[0x277CBEC10] completionHandler:v9];
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

- (id)presentingViewControllerForLockupView:(id)view
{
  v4 = _NDOLogSystem();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell presentingViewControllerForLockupView:];
  }

  parentViewController = [(NDOSupportAppTableViewCell *)self parentViewController];

  return parentViewController;
}

- (void)lockupViewDidBeginRequest:(id)request
{
  v3 = _NDOLogSystem();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell lockupViewDidBeginRequest:];
  }
}

- (void)lockupViewDidFinishRequest:(id)request
{
  requestCopy = request;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell lockupViewDidFinishRequest:];
  }

  if (!self->_originalAppOffer)
  {
    lockup = [requestCopy lockup];
    offer = [lockup offer];
    originalAppOffer = self->_originalAppOffer;
    self->_originalAppOffer = offer;
  }

  mEMORY[0x277CEC2A8] = [MEMORY[0x277CEC2A8] sharedMetrics];
  lockup2 = [requestCopy lockup];
  v11 = [lockup2 lockupWithOffer:self->_originalAppOffer];
  v12 = [mEMORY[0x277CEC2A8] recordCampaignToken:@"coverage.settings" providerToken:@"2003" withLockup:v11];
}

- (void)lockupView:(id)view didFailRequestWithError:(id)error
{
  errorCopy = error;
  v5 = _NDOLogSystem();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [NDOSupportAppTableViewCell lockupView:didFailRequestWithError:];
  }
}

- (void)lockupView:(id)view appStateDidChange:(id)change
{
  viewCopy = view;
  changeCopy = change;
  v8 = _NDOLogSystem();
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    [NDOSupportAppTableViewCell lockupView:appStateDidChange:];
  }

  if (([changeCopy isEqual:*MEMORY[0x277CEC1A0]] & 1) != 0 || objc_msgSend(changeCopy, "isEqual:", *MEMORY[0x277CEC1A8]))
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
    lockup = [viewCopy lockup];
    v16 = [lockup lockupWithOffer:v14];
    [viewCopy setLockup:v16];
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