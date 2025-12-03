@interface MXUIServiceBanner
+ (id)_bundleID;
- (BOOL)checkifVideoAssetExists;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (MXUIServiceBanner)init;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (SBUISystemApertureAccessoryView)leadingView;
- (SBUISystemApertureAccessoryView)minimalView;
- (SBUISystemApertureAccessoryView)trailingView;
- (UIEdgeInsets)bannerContentOutsets;
- (id)createDisconnectedButton;
- (id)createInUseConnectButton;
- (id)createReverseButton;
- (id)fetchUIImageForClientConfig:(int)config;
- (id)getAppIcon:(id)icon;
- (id)removedAccessoryColorCode:(id)code;
- (id)userInfoForPosting;
- (int)showBannerWithTimeout;
- (int64_t)preferredLayoutMode;
- (void)_createBannerTapView;
- (void)_createConnectBannerTextLabel:(id)label bottomLabel:(id)bottomLabel;
- (void)_createConstraintsForConnectBannerIfNeeded;
- (void)_createConstraintsForDisconnectedBannerIfNeeded;
- (void)_createConstraintsForUndoBannerIfNeeded;
- (void)_createDeviceReplacementBannerTextLabel:(id)label;
- (void)_createDisconnectedBannerTextLabel:(id)label bottomLabel:(id)bottomLabel;
- (void)_createUndoBannerTextLabel:(id)label bottomLabel:(id)bottomLabel;
- (void)activateWithActionHandler:(id)handler;
- (void)configureBannerViews;
- (void)configureConnectBanner:(id)banner;
- (void)configureDisconnectedBanner:(id)banner;
- (void)configureInputDeviceReplacementPillForConnectedDevice:(id)device replacedDevice:(id)replacedDevice;
- (void)configureUndoBanner:(id)banner;
- (void)createCustomStaticImageView:(id)view withIcon:(id)icon;
- (void)createCustomView:(id)view WithCustomIconName:(id)name;
- (void)handleTap:(id)tap;
- (void)invalidate;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setBannerTimer;
- (void)setCanRequestAlertingAssertion:(BOOL)assertion;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation MXUIServiceBanner

- (id)fetchUIImageForClientConfig:(int)config
{
  leadingAccessorySymbol = self->_leadingAccessorySymbol;
  v5 = config - 1;
  if ((config - 1) > 3)
  {
    v8 = 25.0;
    v6 = @"speaker.bluetooth.fill";
    v7 = 35.0;
  }

  else
  {
    v6 = off_279850680[v5];
    v7 = dbl_257AFD720[v5];
    v8 = dbl_257AFD740[v5];
  }

  self->_leadingAccessorySymbol = &v6->isa;

  self->_leadingAccessorySymbolSizeJindo = v7;
  self->_leadingAccessorySymbolSizeNonJindo = v8;
  if (self->_useJindoPath)
  {
    v9 = 1208;
  }

  else
  {
    v9 = 1216;
  }

  *&self->_leadingAccessorySymbolSize = *(&self->super.super.super.isa + v9);
  v10 = [MEMORY[0x277D755D0] configurationWithPointSize:4 weight:?];
  v11 = [MEMORY[0x277D755B8] _systemImageNamed:self->_leadingAccessorySymbol withConfiguration:v10];

  return v11;
}

- (void)setCanRequestAlertingAssertion:(BOOL)assertion
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_canRequestAlertingAssertion != assertion)
  {
    self->_canRequestAlertingAssertion = assertion;
    if (assertion && self->_isAskOrReverseBanner)
    {
      systemApertureElementContext = [(MXUIServiceBanner *)self systemApertureElementContext];
      requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
      [requestAlertingAssertion setAutomaticallyInvalidatable:0];

      if (dword_27F8F0258)
      {
        v11 = 0;
        type = OS_LOG_TYPE_DEFAULT;
        v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v7 = dispatch_time(0, 6000000000);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = __52__MXUIServiceBanner_setCanRequestAlertingAssertion___block_invoke;
      block[3] = &unk_2798505D0;
      block[4] = self;
      dispatch_after(v7, MEMORY[0x277D85CD0], block);
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

void __52__MXUIServiceBanner_setCanRequestAlertingAssertion___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) systemApertureElementContext];
  v1 = [v2 requestAlertingAssertion];
  [v1 invalidateWithReason:@"6 seconds timer reached"];
}

- (id)userInfoForPosting
{
  v6[1] = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D68098];
  v6[0] = MEMORY[0x277CBEC38];
  v2 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v6 forKeys:&v5 count:1];
  v3 = *MEMORY[0x277D85DE8];

  return v2;
}

- (SBUISystemApertureAccessoryView)leadingView
{
  if (self->_isAskOrReverseBanner)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_leadingView;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)trailingView
{
  if (self->_isAskOrReverseBanner)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_trailingView;
  }

  return v3;
}

- (SBUISystemApertureAccessoryView)minimalView
{
  if (self->_isAskOrReverseBanner)
  {
    v3 = 0;
  }

  else
  {
    v3 = self->_minimalAccessoryView;
  }

  return v3;
}

- (int64_t)preferredLayoutMode
{
  if (self->_isInvalidated)
  {
    return -1;
  }

  if (self->_isAskOrReverseBanner)
  {
    return 4;
  }

  return 3;
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  self->_activeLayoutMode = mode;
  if (mode == -1)
  {
    self->_bannerActive = 0;
    bannerTransaction = self->_bannerTransaction;
    self->_bannerTransaction = 0;

    if (self->_actionHandler)
    {
      v5 = MEMORY[0x259C6C950]();
      v6 = v5;
      if (v5)
      {
        (*(v5 + 16))(v5, 6, 0);
      }

      actionHandler = self->_actionHandler;
      self->_actionHandler = 0;
    }
  }
}

- (MXUIServiceBanner)init
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work();
  fig_note_initialize_category_with_default_work();
  if (init_onceToken != -1)
  {
    [MXUIServiceBanner init];
  }

  v4.receiver = self;
  v4.super_class = MXUIServiceBanner;
  return [(MXUIServiceBanner *)&v4 initWithNibName:0 bundle:0];
}

uint64_t __25__MXUIServiceBanner_init__block_invoke()
{
  v0 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v1 = gCurrentBanners;
  gCurrentBanners = v0;

  gBannersToBePresented = objc_alloc_init(MEMORY[0x277CBEB18]);

  return MEMORY[0x2821F96F8]();
}

- (void)configureBannerViews
{
  if (self->_useJindoPath)
  {
    v3 = self->_leadingView;
    if (!v3)
    {
      v3 = [[SRHostedJindoPresentableAccessoryView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
      [(SBUISystemApertureAccessoryView *)v3 setCompactSize:30.0, 30.0];
    }

    v4 = self->_trailingView;
    if (!v4)
    {
      v4 = [[SRHostedJindoPresentableAccessoryView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
    }

    leadingAccessoryView = self->_leadingAccessoryView;
    self->_leadingAccessoryView = v3;
    v3;

    trailingAccessoryView = self->_trailingAccessoryView;
    self->_trailingAccessoryView = v4;
    v7 = v4;

    v8 = [[SRHostedJindoPresentableAccessoryView alloc] initWithFrame:0.0, 0.0, 100.0, 100.0];
    minimalAccessoryView = self->_minimalAccessoryView;
    self->_minimalAccessoryView = &v8->super;
  }

  else
  {
    v10 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    v11 = self->_leadingAccessoryView;
    self->_leadingAccessoryView = v10;

    v12 = [objc_alloc(MEMORY[0x277D75D18]) initWithFrame:{0.0, 0.0, 100.0, 100.0}];
    v13 = self->_trailingAccessoryView;
    self->_trailingAccessoryView = v12;

    v14 = objc_alloc_init(MEMORY[0x277CBEB18]);
    centerContentItems = self->_centerContentItems;
    self->_centerContentItems = v14;
  }

  MEMORY[0x2821F96F8]();
}

- (void)configureConnectBanner:(id)banner
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  bannerCopy = banner;
  mainBundle = [v4 mainBundle];
  v7 = [bannerCopy valueForKey:*MEMORY[0x277D25808]];
  v8 = [mainBundle localizedStringForKey:v7 value:&stru_2868F10B0 table:0];

  v9 = [bannerCopy valueForKey:*MEMORY[0x277D25810]];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle2 localizedStringForKey:@"TAP_TO_AIRPLAY" value:&stru_2868F10B0 table:0];

  v12 = [bannerCopy valueForKey:*MEMORY[0x277D25800]];

  intValue = [v12 intValue];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
  uuid = self->_uuid;
  self->_uuid = v14;

  self->_isAskOrReverseBanner = 1;
  self->_useJindoPath = SBUIIsSystemApertureEnabled();
  [(MXUIServiceBanner *)self configureBannerViews];
  v41 = v8;
  if (self->_useJindoPath)
  {
    [(MXUIServiceBanner *)self _createConnectBannerTextLabel:v8 bottomLabel:v11];
    leadingAccessoryView = self->_leadingAccessoryView;
    v17 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:intValue];
    [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v17];

    [(MXUIServiceBanner *)self _createBannerTapView];
    createInUseConnectButton = [(MXUIServiceBanner *)self createInUseConnectButton];
    [(UIView *)self->_trailingAccessoryView addSubview:createInUseConnectButton];
    [createInUseConnectButton setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [createInUseConnectButton widthAnchor];
    widthAnchor2 = [(UIView *)self->_trailingAccessoryView widthAnchor];
    v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v21 setActive:1];

    heightAnchor = [createInUseConnectButton heightAnchor];
    heightAnchor2 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v24 setActive:1];

    centerXAnchor = [createInUseConnectButton centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v27 setActive:1];

    centerYAnchor = [createInUseConnectButton centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v30 setActive:1];

    v31 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    [(UIView *)self->_leadingAccessoryView setTintColor:v31];

    v32 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    [(UIView *)self->_trailingAccessoryView setTintColor:v32];

    objc_storeStrong(&self->_leadingView, self->_leadingAccessoryView);
    objc_storeStrong(&self->_trailingView, self->_trailingAccessoryView);
  }

  else
  {
    createInUseConnectButton = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v8 style:1];
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
    if (createInUseConnectButton)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:createInUseConnectButton];
    }

    if (v33)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v33];
    }

    v34 = self->_leadingAccessoryView;
    v35 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:intValue];
    [(MXUIServiceBanner *)self createCustomStaticImageView:v34 withIcon:v35];

    createInUseConnectButton2 = [(MXUIServiceBanner *)self createInUseConnectButton];
    [createInUseConnectButton2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView trailingAccessoryView:createInUseConnectButton2];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_pillView, v37);
    if (self->_centerContentItems)
    {
      [(PLPillView *)self->_pillView setCenterContentItems:?];
    }

    else
    {
      v38 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  self->_bannerTimeoutInSeconds = 8.0;
  if (dword_27F8F0258)
  {
    v39 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v40 = *MEMORY[0x277D85DE8];
}

- (void)configureUndoBanner:(id)banner
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  bannerCopy = banner;
  mainBundle = [v4 mainBundle];
  v7 = [bannerCopy valueForKey:*MEMORY[0x277D25808]];
  v8 = [mainBundle localizedStringForKey:v7 value:&stru_2868F10B0 table:0];

  v9 = [bannerCopy valueForKey:*MEMORY[0x277D25810]];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle2 localizedStringForKey:@"AIRPLAY_CONNECTED" value:&stru_2868F10B0 table:0];

  v12 = [bannerCopy valueForKey:*MEMORY[0x277D25800]];

  intValue = [v12 intValue];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
  uuid = self->_uuid;
  self->_uuid = v14;

  self->_isAskOrReverseBanner = 1;
  self->_useJindoPath = SBUIIsSystemApertureEnabled();
  [(MXUIServiceBanner *)self configureBannerViews];
  v43 = v11;
  if (self->_useJindoPath)
  {
    [(MXUIServiceBanner *)self _createUndoBannerTextLabel:v8 bottomLabel:v11];
    leadingAccessoryView = self->_leadingAccessoryView;
    v17 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:intValue];
    [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v17];

    createReverseButton = [(MXUIServiceBanner *)self createReverseButton];
    [(UIView *)self->_trailingAccessoryView addSubview:createReverseButton];
    [createReverseButton setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [createReverseButton widthAnchor];
    widthAnchor2 = [(UIView *)self->_trailingAccessoryView widthAnchor];
    v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v21 setActive:1];

    heightAnchor = [createReverseButton heightAnchor];
    heightAnchor2 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v24 setActive:1];

    centerXAnchor = [createReverseButton centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v27 setActive:1];

    centerYAnchor = [createReverseButton centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v30 setActive:1];

    v31 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:1.0];
    [(UIView *)self->_leadingAccessoryView setTintColor:v31];

    v32 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    [(UIView *)self->_trailingAccessoryView setTintColor:v32];

    objc_storeStrong(&self->_leadingView, self->_leadingAccessoryView);
    objc_storeStrong(&self->_trailingView, self->_trailingAccessoryView);
  }

  else
  {
    createReverseButton = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v8 style:1];
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
    if (createReverseButton)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:createReverseButton];
    }

    if (v33)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v33];
    }

    v34 = self->_leadingAccessoryView;
    v35 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:intValue];
    [(MXUIServiceBanner *)self createCustomStaticImageView:v34 withIcon:v35];

    createReverseButton2 = [(MXUIServiceBanner *)self createReverseButton];
    [createReverseButton2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView trailingAccessoryView:createReverseButton2];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_pillView, v37);
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)self->_leadingAccessoryView setTintColor:systemBlueColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_trailingAccessoryView setTintColor:clearColor];

    if (self->_centerContentItems)
    {
      [(PLPillView *)self->_pillView setCenterContentItems:?];
    }

    else
    {
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  self->_bannerTimeoutInSeconds = 8.0;
  if (dword_27F8F0258)
  {
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)configureDisconnectedBanner:(id)banner
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  bannerCopy = banner;
  mainBundle = [v4 mainBundle];
  v7 = [bannerCopy valueForKey:*MEMORY[0x277D25808]];
  v8 = [mainBundle localizedStringForKey:v7 value:&stru_2868F10B0 table:0];

  v9 = [bannerCopy valueForKey:*MEMORY[0x277D25810]];
  mainBundle2 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [mainBundle2 localizedStringForKey:@"DISCONNECTED" value:&stru_2868F10B0 table:0];

  v12 = [bannerCopy valueForKey:*MEMORY[0x277D25800]];

  intValue = [v12 intValue];
  v14 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDString:v9];
  uuid = self->_uuid;
  self->_uuid = v14;

  self->_isAskOrReverseBanner = 1;
  self->_useJindoPath = SBUIIsSystemApertureEnabled();
  [(MXUIServiceBanner *)self configureBannerViews];
  v43 = v11;
  if (self->_useJindoPath)
  {
    [(MXUIServiceBanner *)self _createDisconnectedBannerTextLabel:v8 bottomLabel:v11];
    leadingAccessoryView = self->_leadingAccessoryView;
    v17 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:intValue];
    [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v17];

    createDisconnectedButton = [(MXUIServiceBanner *)self createDisconnectedButton];
    [(UIView *)self->_trailingAccessoryView addSubview:createDisconnectedButton];
    [createDisconnectedButton setTranslatesAutoresizingMaskIntoConstraints:0];
    widthAnchor = [createDisconnectedButton widthAnchor];
    widthAnchor2 = [(UIView *)self->_trailingAccessoryView widthAnchor];
    v21 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
    [v21 setActive:1];

    heightAnchor = [createDisconnectedButton heightAnchor];
    heightAnchor2 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v24 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
    [v24 setActive:1];

    centerXAnchor = [createDisconnectedButton centerXAnchor];
    centerXAnchor2 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
    v27 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [v27 setActive:1];

    centerYAnchor = [createDisconnectedButton centerYAnchor];
    centerYAnchor2 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
    v30 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    [v30 setActive:1];

    v31 = [MEMORY[0x277D75348] colorWithRed:1.0 green:1.0 blue:1.0 alpha:0.5];
    [(UIView *)self->_leadingAccessoryView setTintColor:v31];

    v32 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    [(UIView *)self->_trailingAccessoryView setTintColor:v32];

    objc_storeStrong(&self->_leadingView, self->_leadingAccessoryView);
    objc_storeStrong(&self->_trailingView, self->_trailingAccessoryView);
  }

  else
  {
    createDisconnectedButton = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v8 style:1];
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
    if (createDisconnectedButton)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:createDisconnectedButton];
    }

    if (v33)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v33];
    }

    v34 = self->_leadingAccessoryView;
    v35 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:intValue];
    [(MXUIServiceBanner *)self createCustomStaticImageView:v34 withIcon:v35];

    createDisconnectedButton2 = [(MXUIServiceBanner *)self createDisconnectedButton];
    [createDisconnectedButton2 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView trailingAccessoryView:createDisconnectedButton2];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_pillView, v37);
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)self->_leadingAccessoryView setTintColor:systemBlueColor];

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_trailingAccessoryView setTintColor:clearColor];

    if (self->_centerContentItems)
    {
      [(PLPillView *)self->_pillView setCenterContentItems:?];
    }

    else
    {
      v40 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  self->_bannerTimeoutInSeconds = 4.0;
  if (dword_27F8F0258)
  {
    v41 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v41, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v42 = *MEMORY[0x277D85DE8];
}

- (void)configureInputDeviceReplacementPillForConnectedDevice:(id)device replacedDevice:(id)replacedDevice
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D3D308];
  replacedDeviceCopy = replacedDevice;
  deviceCopy = device;
  v9 = [v6 alloc];
  v10 = MEMORY[0x277CCACA8];
  mainBundle = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [mainBundle localizedStringForKey:@"DEVICEA_REPLACED_DEVICEB" value:&stru_2868F10B0 table:0];
  replacedDeviceCopy = [v10 stringWithFormat:v12, deviceCopy, replacedDeviceCopy];

  v14 = [v9 initWithText:replacedDeviceCopy];
  self->_useJindoPath = 0;
  [(MXUIServiceBanner *)self configureBannerViews];
  if (v14)
  {
    [(NSMutableArray *)self->_centerContentItems addObject:v14];
  }

  leadingAccessoryView = self->_leadingAccessoryView;
  v16 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:4];
  [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v16];

  v17 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_pillView, v17);
  blackColor = [MEMORY[0x277D75348] blackColor];
  [(UIView *)self->_leadingAccessoryView setTintColor:blackColor];

  if (self->_centerContentItems)
  {
    [(PLPillView *)self->_pillView setCenterContentItems:?];
  }

  else
  {
    v19 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  self->_bannerTimeoutInSeconds = 4.0;

  v20 = *MEMORY[0x277D85DE8];
}

- (int)showBannerWithTimeout
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 3221225472;
  v4[2] = __42__MXUIServiceBanner_showBannerWithTimeout__block_invoke;
  v4[3] = &unk_279850618;
  v4[4] = &v5;
  [(MXUIServiceBanner *)self activateWithActionHandler:v4];
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

- (void)_createConnectBannerTextLabel:(id)label bottomLabel:(id)bottomLabel
{
  v6 = MEMORY[0x277D756B8];
  bottomLabelCopy = bottomLabel;
  labelCopy = label;
  v17 = [[v6 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v17 setText:labelCopy];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v17 setTextColor:systemWhiteColor];

  [v17 setAlpha:1.0];
  v10 = *MEMORY[0x277D74410];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v17 setFont:v11];

  [v17 setMarqueeEnabled:1];
  [v17 setUserInteractionEnabled:1];
  v12 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v17 addGestureRecognizer:v12];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v17];
  v13 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v13 setText:bottomLabelCopy];

  systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
  [v13 setTextColor:systemWhiteColor2];

  [v13 setAlpha:0.45];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v10];
  [v13 setFont:v15];

  [v13 setMarqueeEnabled:1];
  [v13 setUserInteractionEnabled:1];
  v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v13 addGestureRecognizer:v16];
  [(MXUIServiceBanner *)self setCcBottomViewLabel:v13];
}

- (void)_createUndoBannerTextLabel:(id)label bottomLabel:(id)bottomLabel
{
  v6 = MEMORY[0x277D756B8];
  bottomLabelCopy = bottomLabel;
  labelCopy = label;
  v15 = [[v6 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v15 setText:labelCopy];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v15 setTextColor:systemWhiteColor];

  [v15 setAlpha:1.0];
  v10 = *MEMORY[0x277D74410];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v15 setFont:v11];

  [v15 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v15];
  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v12 setText:bottomLabelCopy];

  v13 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
  [v12 setTextColor:v13];

  v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v10];
  [v12 setFont:v14];

  [v12 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcBottomViewLabel:v12];
}

- (void)_createDisconnectedBannerTextLabel:(id)label bottomLabel:(id)bottomLabel
{
  v6 = MEMORY[0x277D756B8];
  bottomLabelCopy = bottomLabel;
  labelCopy = label;
  v15 = [[v6 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v15 setText:labelCopy];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v15 setTextColor:systemWhiteColor];

  [v15 setAlpha:1.0];
  v10 = *MEMORY[0x277D74410];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v15 setFont:v11];

  [v15 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v15];
  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v12 setText:bottomLabelCopy];

  v13 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
  [v12 setTextColor:v13];

  v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v10];
  [v12 setFont:v14];

  [v12 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcBottomViewLabel:v12];
}

- (void)_createDeviceReplacementBannerTextLabel:(id)label
{
  v4 = MEMORY[0x277D756B8];
  labelCopy = label;
  v8 = [[v4 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v8 setText:labelCopy];

  systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  [v8 setTextColor:systemWhiteColor];

  [v8 setAlpha:1.0];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v8 setFont:v7];

  [v8 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v8];
}

- (void)_createBannerTapView
{
  v6 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{0.0, 0.0, 500.0, 150.0}];
  clearColor = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:clearColor];

  [v6 setUserInteractionEnabled:1];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v6 addGestureRecognizer:v4];
  view = [(MXUIServiceBanner *)self view];
  [view addSubview:v6];
}

- (void)_createConstraintsForConnectBannerIfNeeded
{
  v97[18] = *MEMORY[0x277D85DE8];
  ccTopViewLabel = [(MXUIServiceBanner *)self ccTopViewLabel];
  if (ccTopViewLabel)
  {
    v4 = ccTopViewLabel;
    ccBottomViewLabel = [(MXUIServiceBanner *)self ccBottomViewLabel];

    if (ccBottomViewLabel)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&unk_2868F29B0];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = dictionary;
        }

        leadingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        view = [(MXUIServiceBanner *)self view];
        leadingAnchor2 = [view leadingAnchor];
        v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
        v97[0] = v93;
        centerYAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        view2 = [(MXUIServiceBanner *)self view];
        centerYAnchor2 = [view2 centerYAnchor];
        v89 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v97[1] = v89;
        view3 = [(MXUIServiceBanner *)self view];
        widthAnchor = [view3 widthAnchor];
        view4 = [(MXUIServiceBanner *)self view];
        window = [view4 window];
        widthAnchor2 = [window widthAnchor];
        v83 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        v97[2] = v83;
        view5 = [(MXUIServiceBanner *)self view];
        heightAnchor = [view5 heightAnchor];
        view6 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view6 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        heightAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide heightAnchor];
        v77 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v97[3] = v77;
        trailingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        view7 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide = [view7 SBUISA_systemApertureObstructedAreaLayoutGuide];
        leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
        v72 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
        v97[4] = v72;
        ccTopViewLabel2 = [(MXUIServiceBanner *)self ccTopViewLabel];
        leadingAnchor4 = [ccTopViewLabel2 leadingAnchor];
        ccBottomViewLabel2 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor5 = [ccBottomViewLabel2 leadingAnchor];
        v67 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        v97[5] = v67;
        ccTopViewLabel3 = [(MXUIServiceBanner *)self ccTopViewLabel];
        _tightBoundingBoxLayoutGuide = [ccTopViewLabel3 _tightBoundingBoxLayoutGuide];
        topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
        view8 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide2 = [view8 SBUISA_systemApertureObstructedAreaLayoutGuide];
        bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide2 bottomAnchor];
        v60 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        v97[6] = v60;
        ccTopViewLabel4 = [(MXUIServiceBanner *)self ccTopViewLabel];
        trailingAnchor2 = [ccTopViewLabel4 trailingAnchor];
        leadingAnchor6 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view9 = [(MXUIServiceBanner *)self view];
        [view9 SBUISA_standardInteritemPadding];
        v55 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor6 constant:-v9];
        v97[7] = v55;
        ccTopViewLabel5 = [(MXUIServiceBanner *)self ccTopViewLabel];
        heightAnchor3 = [ccTopViewLabel5 heightAnchor];
        v52 = [heightAnchor3 constraintEqualToConstant:19.5];
        v97[8] = v52;
        ccBottomViewLabel3 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        firstBaselineAnchor = [ccBottomViewLabel3 firstBaselineAnchor];
        view10 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureLegibleContentLayoutMarginsGuide = [view10 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        bottomAnchor2 = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide bottomAnchor];
        v46 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
        v97[9] = v46;
        ccBottomViewLabel4 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor7 = [ccBottomViewLabel4 leadingAnchor];
        view11 = [(MXUIServiceBanner *)self view];
        leadingAnchor8 = [view11 leadingAnchor];
        v41 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:88.0];
        v97[10] = v41;
        ccBottomViewLabel5 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        _tightBoundingBoxLayoutGuide2 = [ccBottomViewLabel5 _tightBoundingBoxLayoutGuide];
        topAnchor2 = [_tightBoundingBoxLayoutGuide2 topAnchor];
        ccTopViewLabel6 = [(MXUIServiceBanner *)self ccTopViewLabel];
        bottomAnchor3 = [ccTopViewLabel6 bottomAnchor];
        v35 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3];
        v97[11] = v35;
        ccBottomViewLabel6 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        trailingAnchor3 = [ccBottomViewLabel6 trailingAnchor];
        leadingAnchor9 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view12 = [(MXUIServiceBanner *)self view];
        [view12 SBUISA_standardInteritemPadding];
        v30 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor9 constant:-v10];
        v97[12] = v30;
        heightAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v28 = [heightAnchor4 constraintEqualToConstant:55.0];
        v97[13] = v28;
        widthAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v26 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:35.0];
        v97[14] = v26;
        centerYAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        view13 = [(MXUIServiceBanner *)self view];
        centerYAnchor4 = [view13 centerYAnchor];
        v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v97[15] = v22;
        leadingAnchor10 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view14 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide3 = [view14 SBUISA_systemApertureObstructedAreaLayoutGuide];
        trailingAnchor4 = [sBUISA_systemApertureObstructedAreaLayoutGuide3 trailingAnchor];
        v14 = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
        v97[16] = v14;
        trailingAnchor5 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        view15 = [(MXUIServiceBanner *)self view];
        trailingAnchor6 = [view15 trailingAnchor];
        v18 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-15.0];
        v97[17] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:18];
        [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v19 forKeyedSubscript:&unk_2868F29B0];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_createConstraintsForUndoBannerIfNeeded
{
  v97[18] = *MEMORY[0x277D85DE8];
  ccTopViewLabel = [(MXUIServiceBanner *)self ccTopViewLabel];
  if (ccTopViewLabel)
  {
    v4 = ccTopViewLabel;
    ccBottomViewLabel = [(MXUIServiceBanner *)self ccBottomViewLabel];

    if (ccBottomViewLabel)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&unk_2868F29B0];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = dictionary;
        }

        leadingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        view = [(MXUIServiceBanner *)self view];
        leadingAnchor2 = [view leadingAnchor];
        v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
        v97[0] = v93;
        centerYAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        view2 = [(MXUIServiceBanner *)self view];
        centerYAnchor2 = [view2 centerYAnchor];
        v89 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v97[1] = v89;
        view3 = [(MXUIServiceBanner *)self view];
        widthAnchor = [view3 widthAnchor];
        view4 = [(MXUIServiceBanner *)self view];
        window = [view4 window];
        widthAnchor2 = [window widthAnchor];
        v83 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        v97[2] = v83;
        view5 = [(MXUIServiceBanner *)self view];
        heightAnchor = [view5 heightAnchor];
        view6 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view6 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        heightAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide heightAnchor];
        v77 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v97[3] = v77;
        trailingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        view7 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide = [view7 SBUISA_systemApertureObstructedAreaLayoutGuide];
        leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
        v72 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
        v97[4] = v72;
        ccTopViewLabel2 = [(MXUIServiceBanner *)self ccTopViewLabel];
        leadingAnchor4 = [ccTopViewLabel2 leadingAnchor];
        ccBottomViewLabel2 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor5 = [ccBottomViewLabel2 leadingAnchor];
        v67 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        v97[5] = v67;
        ccTopViewLabel3 = [(MXUIServiceBanner *)self ccTopViewLabel];
        _tightBoundingBoxLayoutGuide = [ccTopViewLabel3 _tightBoundingBoxLayoutGuide];
        topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
        view8 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide2 = [view8 SBUISA_systemApertureObstructedAreaLayoutGuide];
        bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide2 bottomAnchor];
        v60 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        v97[6] = v60;
        ccTopViewLabel4 = [(MXUIServiceBanner *)self ccTopViewLabel];
        trailingAnchor2 = [ccTopViewLabel4 trailingAnchor];
        leadingAnchor6 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view9 = [(MXUIServiceBanner *)self view];
        [view9 SBUISA_standardInteritemPadding];
        v55 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor6 constant:-v9];
        v97[7] = v55;
        ccTopViewLabel5 = [(MXUIServiceBanner *)self ccTopViewLabel];
        heightAnchor3 = [ccTopViewLabel5 heightAnchor];
        v52 = [heightAnchor3 constraintEqualToConstant:19.5];
        v97[8] = v52;
        ccBottomViewLabel3 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        firstBaselineAnchor = [ccBottomViewLabel3 firstBaselineAnchor];
        view10 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureLegibleContentLayoutMarginsGuide = [view10 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        bottomAnchor2 = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide bottomAnchor];
        v46 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
        v97[9] = v46;
        ccBottomViewLabel4 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor7 = [ccBottomViewLabel4 leadingAnchor];
        view11 = [(MXUIServiceBanner *)self view];
        leadingAnchor8 = [view11 leadingAnchor];
        v41 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:88.0];
        v97[10] = v41;
        ccBottomViewLabel5 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        _tightBoundingBoxLayoutGuide2 = [ccBottomViewLabel5 _tightBoundingBoxLayoutGuide];
        topAnchor2 = [_tightBoundingBoxLayoutGuide2 topAnchor];
        ccTopViewLabel6 = [(MXUIServiceBanner *)self ccTopViewLabel];
        bottomAnchor3 = [ccTopViewLabel6 bottomAnchor];
        v35 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3];
        v97[11] = v35;
        ccBottomViewLabel6 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        trailingAnchor3 = [ccBottomViewLabel6 trailingAnchor];
        leadingAnchor9 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view12 = [(MXUIServiceBanner *)self view];
        [view12 SBUISA_standardInteritemPadding];
        v30 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor9 constant:-v10];
        v97[12] = v30;
        heightAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v28 = [heightAnchor4 constraintEqualToConstant:55.0];
        v97[13] = v28;
        widthAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v26 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:35.0];
        v97[14] = v26;
        centerYAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        view13 = [(MXUIServiceBanner *)self view];
        centerYAnchor4 = [view13 centerYAnchor];
        v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v97[15] = v22;
        leadingAnchor10 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view14 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide3 = [view14 SBUISA_systemApertureObstructedAreaLayoutGuide];
        trailingAnchor4 = [sBUISA_systemApertureObstructedAreaLayoutGuide3 trailingAnchor];
        v14 = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
        v97[16] = v14;
        trailingAnchor5 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        view15 = [(MXUIServiceBanner *)self view];
        trailingAnchor6 = [view15 trailingAnchor];
        v18 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-15.0];
        v97[17] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:18];
        [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v19 forKeyedSubscript:&unk_2868F29B0];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)_createConstraintsForDisconnectedBannerIfNeeded
{
  v97[18] = *MEMORY[0x277D85DE8];
  ccTopViewLabel = [(MXUIServiceBanner *)self ccTopViewLabel];
  if (ccTopViewLabel)
  {
    v4 = ccTopViewLabel;
    ccBottomViewLabel = [(MXUIServiceBanner *)self ccBottomViewLabel];

    if (ccBottomViewLabel)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&unk_2868F29B0];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          dictionary = [MEMORY[0x277CBEB38] dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = dictionary;
        }

        leadingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        view = [(MXUIServiceBanner *)self view];
        leadingAnchor2 = [view leadingAnchor];
        v93 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:20.0];
        v97[0] = v93;
        centerYAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        view2 = [(MXUIServiceBanner *)self view];
        centerYAnchor2 = [view2 centerYAnchor];
        v89 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
        v97[1] = v89;
        view3 = [(MXUIServiceBanner *)self view];
        widthAnchor = [view3 widthAnchor];
        view4 = [(MXUIServiceBanner *)self view];
        window = [view4 window];
        widthAnchor2 = [window widthAnchor];
        v83 = [widthAnchor constraintEqualToAnchor:widthAnchor2];
        v97[2] = v83;
        view5 = [(MXUIServiceBanner *)self view];
        heightAnchor = [view5 heightAnchor];
        view6 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureTrailingConcentricContentLayoutGuide = [view6 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        heightAnchor2 = [sBUISA_systemApertureTrailingConcentricContentLayoutGuide heightAnchor];
        v77 = [heightAnchor constraintEqualToAnchor:heightAnchor2];
        v97[3] = v77;
        trailingAnchor = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        view7 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide = [view7 SBUISA_systemApertureObstructedAreaLayoutGuide];
        leadingAnchor3 = [sBUISA_systemApertureObstructedAreaLayoutGuide leadingAnchor];
        v72 = [trailingAnchor constraintLessThanOrEqualToAnchor:leadingAnchor3];
        v97[4] = v72;
        ccTopViewLabel2 = [(MXUIServiceBanner *)self ccTopViewLabel];
        leadingAnchor4 = [ccTopViewLabel2 leadingAnchor];
        ccBottomViewLabel2 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor5 = [ccBottomViewLabel2 leadingAnchor];
        v67 = [leadingAnchor4 constraintEqualToAnchor:leadingAnchor5];
        v97[5] = v67;
        ccTopViewLabel3 = [(MXUIServiceBanner *)self ccTopViewLabel];
        _tightBoundingBoxLayoutGuide = [ccTopViewLabel3 _tightBoundingBoxLayoutGuide];
        topAnchor = [_tightBoundingBoxLayoutGuide topAnchor];
        view8 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide2 = [view8 SBUISA_systemApertureObstructedAreaLayoutGuide];
        bottomAnchor = [sBUISA_systemApertureObstructedAreaLayoutGuide2 bottomAnchor];
        v60 = [topAnchor constraintEqualToAnchor:bottomAnchor];
        v97[6] = v60;
        ccTopViewLabel4 = [(MXUIServiceBanner *)self ccTopViewLabel];
        trailingAnchor2 = [ccTopViewLabel4 trailingAnchor];
        leadingAnchor6 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view9 = [(MXUIServiceBanner *)self view];
        [view9 SBUISA_standardInteritemPadding];
        v55 = [trailingAnchor2 constraintEqualToAnchor:leadingAnchor6 constant:-v9];
        v97[7] = v55;
        ccTopViewLabel5 = [(MXUIServiceBanner *)self ccTopViewLabel];
        heightAnchor3 = [ccTopViewLabel5 heightAnchor];
        v52 = [heightAnchor3 constraintEqualToConstant:19.5];
        v97[8] = v52;
        ccBottomViewLabel3 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        firstBaselineAnchor = [ccBottomViewLabel3 firstBaselineAnchor];
        view10 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureLegibleContentLayoutMarginsGuide = [view10 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        bottomAnchor2 = [sBUISA_systemApertureLegibleContentLayoutMarginsGuide bottomAnchor];
        v46 = [firstBaselineAnchor constraintEqualToAnchor:bottomAnchor2 constant:2.0];
        v97[9] = v46;
        ccBottomViewLabel4 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        leadingAnchor7 = [ccBottomViewLabel4 leadingAnchor];
        view11 = [(MXUIServiceBanner *)self view];
        leadingAnchor8 = [view11 leadingAnchor];
        v41 = [leadingAnchor7 constraintEqualToAnchor:leadingAnchor8 constant:88.0];
        v97[10] = v41;
        ccBottomViewLabel5 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        _tightBoundingBoxLayoutGuide2 = [ccBottomViewLabel5 _tightBoundingBoxLayoutGuide];
        topAnchor2 = [_tightBoundingBoxLayoutGuide2 topAnchor];
        ccTopViewLabel6 = [(MXUIServiceBanner *)self ccTopViewLabel];
        bottomAnchor3 = [ccTopViewLabel6 bottomAnchor];
        v35 = [topAnchor2 constraintEqualToAnchor:bottomAnchor3];
        v97[11] = v35;
        ccBottomViewLabel6 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        trailingAnchor3 = [ccBottomViewLabel6 trailingAnchor];
        leadingAnchor9 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view12 = [(MXUIServiceBanner *)self view];
        [view12 SBUISA_standardInteritemPadding];
        v30 = [trailingAnchor3 constraintEqualToAnchor:leadingAnchor9 constant:-v10];
        v97[12] = v30;
        heightAnchor4 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v28 = [heightAnchor4 constraintEqualToConstant:55.0];
        v97[13] = v28;
        widthAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v26 = [widthAnchor3 constraintGreaterThanOrEqualToConstant:35.0];
        v97[14] = v26;
        centerYAnchor3 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        view13 = [(MXUIServiceBanner *)self view];
        centerYAnchor4 = [view13 centerYAnchor];
        v22 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor4];
        v97[15] = v22;
        leadingAnchor10 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        view14 = [(MXUIServiceBanner *)self view];
        sBUISA_systemApertureObstructedAreaLayoutGuide3 = [view14 SBUISA_systemApertureObstructedAreaLayoutGuide];
        trailingAnchor4 = [sBUISA_systemApertureObstructedAreaLayoutGuide3 trailingAnchor];
        v14 = [leadingAnchor10 constraintGreaterThanOrEqualToAnchor:trailingAnchor4];
        v97[16] = v14;
        trailingAnchor5 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        view15 = [(MXUIServiceBanner *)self view];
        trailingAnchor6 = [view15 trailingAnchor];
        v18 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6 constant:-15.0];
        v97[17] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:18];
        [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v19 forKeyedSubscript:&unk_2868F29B0];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  coordinatorCopy = coordinator;
  minimalView = [(MXUIServiceBanner *)self minimalView];
  [minimalView setHidden:0];

  view = [(MXUIServiceBanner *)self view];
  [view addSubview:self->_leadingAccessoryView];

  view2 = [(MXUIServiceBanner *)self view];
  [view2 addSubview:self->_minimalAccessoryView];

  view3 = [(MXUIServiceBanner *)self view];
  [view3 addSubview:self->_trailingAccessoryView];

  view4 = [(MXUIServiceBanner *)self view];
  ccTopViewLabel = [(MXUIServiceBanner *)self ccTopViewLabel];
  [view4 addSubview:ccTopViewLabel];

  if (self->_isAskOrReverseBanner)
  {
    [(SBUISystemApertureAccessoryView *)self->_leadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBUISystemApertureAccessoryView *)self->_trailingView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    leadingView = [(MXUIServiceBanner *)self leadingView];
    [leadingView setTranslatesAutoresizingMaskIntoConstraints:0];

    trailingView = [(MXUIServiceBanner *)self trailingView];
    [trailingView setTranslatesAutoresizingMaskIntoConstraints:0];

    minimalView2 = [(MXUIServiceBanner *)self minimalView];
    [minimalView2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  ccTopViewLabel2 = [(MXUIServiceBanner *)self ccTopViewLabel];
  [ccTopViewLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (self->_isAskOrReverseBanner)
  {
    view5 = [(MXUIServiceBanner *)self view];
    ccBottomViewLabel = [(MXUIServiceBanner *)self ccBottomViewLabel];
    [view5 addSubview:ccBottomViewLabel];

    [(MXUIServiceBanner *)self _createConstraintsForConnectBannerIfNeeded];
    ccBottomViewLabel2 = [(MXUIServiceBanner *)self ccBottomViewLabel];
    [ccBottomViewLabel2 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__MXUIServiceBanner_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke;
  v18[3] = &unk_279850640;
  v18[4] = self;
  [coordinatorCopy animateAlongsideTransition:v18 completion:0];
}

uint64_t __69__MXUIServiceBanner_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  if ([*(a1 + 32) activeLayoutMode] == 4)
  {
    v2 = [*(a1 + 32) minimalView];
    [v2 setHidden:1];
  }

  result = [*(a1 + 32) activeLayoutMode];
  if (result != -1)
  {
    result = [*(a1 + 32) activeLayoutMode];
    if (result != 1)
    {
      v4 = *(a1 + 32);
      v5 = v4[139];
      v6 = [MEMORY[0x277CCABB0] numberWithInteger:{objc_msgSend(v4, "activeLayoutMode")}];
      obj = [v5 objectForKeyedSubscript:v6];

      v7 = *(a1 + 32);
      v8 = *(v7 + 1000);
      if (obj != v8)
      {
        if (v8)
        {
          [MEMORY[0x277CCAAD0] deactivateConstraints:?];
          v7 = *(a1 + 32);
        }

        objc_storeStrong((v7 + 1000), obj);
        if (obj)
        {
          [MEMORY[0x277CCAAD0] activateConstraints:obj];
        }
      }

      return MEMORY[0x2821F96F8]();
    }
  }

  return result;
}

- (void)activateWithActionHandler:(id)handler
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C6C950](handler, a2);
  actionHandler = self->_actionHandler;
  self->_actionHandler = v4;

  v6 = os_transaction_create();
  bannerTransaction = self->_bannerTransaction;
  self->_bannerTransaction = v6;

  v8 = MEMORY[0x277CF0A80];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  bundleIdentifier = [v9 bundleIdentifier];
  v11 = [v8 bannerSourceForDestination:0 forRequesterIdentifier:bundleIdentifier];
  bannerSource = self->_bannerSource;
  self->_bannerSource = v11;

  v13 = self->_bannerSource;
  v34 = 0;
  v14 = [(BNBannerSource *)v13 layoutDescriptionWithError:&v34];
  v15 = v34;
  if (v14)
  {
    [v14 presentationSize];
    v17 = v16;
    v19 = v18;
    [v14 containerSize];
    [(MXUIServiceBanner *)self preferredContentSizeWithPresentationSize:v17 containerSize:v19, v20, v21];
    [(MXUIServiceBanner *)self setPreferredContentSize:?];
    v22 = self->_bannerSource;
    v23 = *MEMORY[0x277D68088];
    if (self->_useJindoPath)
    {
      v24 = *MEMORY[0x277D68098];
      v37[0] = *MEMORY[0x277D68088];
      v37[1] = v24;
      v38[0] = MEMORY[0x277CBEC38];
      v38[1] = MEMORY[0x277CBEC38];
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
      v33 = 0;
      v26 = &v33;
      v27 = &v33;
    }

    else
    {
      v35 = *MEMORY[0x277D68088];
      v36 = MEMORY[0x277CBEC38];
      v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v36 forKeys:&v35 count:1];
      v32 = 0;
      v26 = &v32;
      v27 = &v32;
    }

    [(BNBannerSource *)v22 postPresentable:self options:1 userInfo:v25 error:v27];
    v30 = *v26;

    if (v30)
    {
      v29 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    else
    {
      self->_bannerActive = 1;
    }
  }

  else
  {
    v28 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();

    v30 = v15;
  }

  if (gCurrentlyVisibleBanner)
  {
    [gCurrentlyVisibleBanner dismissBanner:3];
  }

  v31 = *MEMORY[0x277D85DE8];
}

- (void)invalidate
{
  self->_isInvalidated = 1;
  self->_isFirstInstance = 0;
  if (self->_bannerActive)
  {
    [(MXUIServiceBanner *)self dismissBanner:3];
  }

  self->_bannerActive = 0;
  bannerSource = self->_bannerSource;
  self->_bannerSource = 0;

  bannerTimer = self->_bannerTimer;
  if (bannerTimer)
  {
    v5 = bannerTimer;
    dispatch_source_cancel(v5);
    v6 = self->_bannerTimer;
    self->_bannerTimer = 0;
  }

  self->_bannerTimeoutInSeconds = 0.0;
  ccText = self->_ccText;
  self->_ccText = 0;

  ccItemsIcon = self->_ccItemsIcon;
  self->_ccItemsIcon = 0;

  ccItemsText = self->_ccItemsText;
  self->_ccItemsText = 0;

  centerContentItems = self->_centerContentItems;
  self->_centerContentItems = 0;

  self->_connectedBanner = 0;
  identifier = self->_identifier;
  self->_identifier = 0;

  pillView = self->_pillView;
  self->_pillView = 0;

  leadingAccessoryView = self->_leadingAccessoryView;
  self->_leadingAccessoryView = 0;

  leadingAccessoryIconName = self->_leadingAccessoryIconName;
  self->_leadingAccessoryIconName = 0;

  leadingAccessoryIconPath = self->_leadingAccessoryIconPath;
  self->_leadingAccessoryIconPath = 0;

  centerContentText = self->_centerContentText;
  self->_centerContentText = 0;

  trailingAccessoryIconName = self->_trailingAccessoryIconName;
  self->_trailingAccessoryIconName = 0;

  trailingAccessoryIconPath = self->_trailingAccessoryIconPath;
  self->_trailingAccessoryIconPath = 0;

  trailingAccessoryView = self->_trailingAccessoryView;
  self->_trailingAccessoryView = 0;
}

- (id)getAppIcon:(id)icon
{
  v12 = *MEMORY[0x277D85DE8];
  iconCopy = icon;
  if (dword_27F8F0258)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = MEMORY[0x277D755B8];
  mainScreen = [MEMORY[0x277D759A0] mainScreen];
  [mainScreen scale];
  v7 = [v5 _applicationIconImageForBundleIdentifier:iconCopy format:0 scale:?];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)createCustomView:(id)view WithCustomIconName:(id)name
{
  v5 = MEMORY[0x277D755E8];
  nameCopy = name;
  viewCopy = view;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x277D755B8] imageNamed:nameCopy];

  v10 = [v8 initWithImage:v9];
  [v10 setContentMode:2];
  [viewCopy bounds];
  [v10 setFrame:?];
  [v10 setAutoresizingMask:18];
  [viewCopy addSubview:v10];
}

- (void)createCustomStaticImageView:(id)view withIcon:(id)icon
{
  v30[4] = *MEMORY[0x277D85DE8];
  viewCopy = view;
  v7 = MEMORY[0x277D755E8];
  iconCopy = icon;
  v9 = objc_alloc_init(v7);
  [viewCopy addSubview:v9];
  [v9 setBackgroundColor:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_imageView, v9);
  [(UIImageView *)self->_imageView setImage:iconCopy];

  LODWORD(v7) = self->_useJindoPath;
  centerXAnchor = [(UIImageView *)self->_imageView centerXAnchor];
  centerXAnchor2 = [viewCopy centerXAnchor];
  v12 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v13 = v12;
  if (v7 == 1)
  {
    v30[0] = v12;
    centerYAnchor = [(UIImageView *)self->_imageView centerYAnchor];
    centerYAnchor2 = [viewCopy centerYAnchor];
    v15 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v30[1] = v15;
    widthAnchor = [(UIImageView *)self->_imageView widthAnchor];
    widthAnchor2 = [viewCopy widthAnchor];
    [widthAnchor constraintEqualToAnchor:widthAnchor2];
    v16 = v28 = centerXAnchor;
    v30[2] = v16;
    heightAnchor = [(UIImageView *)self->_imageView heightAnchor];
    [viewCopy heightAnchor];
    v18 = v27 = v13;
    [heightAnchor constraintEqualToAnchor:v18];
    v20 = v19 = centerXAnchor2;
    v30[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];

    centerXAnchor2 = v19;
    centerYAnchor3 = centerYAnchor;

    v13 = v27;
    centerXAnchor = v28;
  }

  else
  {
    v29[0] = v12;
    centerYAnchor3 = [(UIImageView *)self->_imageView centerYAnchor];
    centerYAnchor2 = [viewCopy centerYAnchor];
    v15 = [centerYAnchor3 constraintEqualToAnchor:centerYAnchor2];
    v29[1] = v15;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v21];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)createInUseConnectButton
{
  selfCopy = self;
  v32[1] = *MEMORY[0x277D85DE8];
  useJindoPath = self->_useJindoPath;
  tintedButtonConfiguration = [MEMORY[0x277D75230] tintedButtonConfiguration];
  if (useJindoPath)
  {
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:17.0];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"airplay.audio"];
    v7 = [v6 imageWithRenderingMode:2];

    [tintedButtonConfiguration setImage:v7];
    [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v5];
    v8 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v9 = [v8 colorWithAlphaComponent:0.0];
    background = [tintedButtonConfiguration background];
    [background setBackgroundColor:v9];

    background2 = [tintedButtonConfiguration background];
    [background2 setCornerRadius:28.0];

    v12 = [MEMORY[0x277D67DD0] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
    [v12 setConfiguration:tintedButtonConfiguration];
    [v12 setUserInteractionEnabled:1];
    [v12 setFrame:{0.0, 0.0, 30.0, 30.0}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = MEMORY[0x277CCAAD0];
    widthAnchor = [v12 widthAnchor];
    [v12 intrinsicContentSize];
    heightAnchor = [widthAnchor constraintEqualToConstant:?];
    v32[0] = heightAnchor;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v13 activateConstraints:v16];
  }

  else
  {
    v29 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:14.0];
    v17 = [MEMORY[0x277D755B8] systemImageNamed:@"airplay.audio"];
    v30 = [v17 imageWithRenderingMode:2];

    [tintedButtonConfiguration setImage:v30];
    [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v29];
    v18 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v19 = [v18 colorWithAlphaComponent:0.0];
    background3 = [tintedButtonConfiguration background];
    [background3 setBackgroundColor:v19];

    background4 = [tintedButtonConfiguration background];
    [background4 setCornerRadius:28.0];

    v12 = [MEMORY[0x277D75220] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
    [v12 setUserInteractionEnabled:1];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x277CCAAD0];
    widthAnchor = [v12 widthAnchor];
    heightAnchor = [v12 heightAnchor];
    v16 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v31[0] = v16;
    widthAnchor2 = [v12 widthAnchor];
    v24 = [widthAnchor2 constraintEqualToConstant:34.0];
    v31[1] = v24;
    [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v26 = v25 = selfCopy;
    [v22 activateConstraints:v26];

    selfCopy = v25;
    v7 = v30;

    v5 = v29;
  }

  [v12 addTarget:selfCopy action:sel_handleTap_ forControlEvents:64];
  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createReverseButton
{
  v32[2] = *MEMORY[0x277D85DE8];
  useJindoPath = self->_useJindoPath;
  tintedButtonConfiguration = [MEMORY[0x277D75230] tintedButtonConfiguration];
  if (useJindoPath)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:20.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.backward"];
    v6 = [v5 imageWithRenderingMode:2];

    [tintedButtonConfiguration setImage:v6];
    v29 = v4;
    [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v4];
    v7 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v8 = [v7 colorWithAlphaComponent:0.3];
    background = [tintedButtonConfiguration background];
    [background setBackgroundColor:v8];

    background2 = [tintedButtonConfiguration background];
    [background2 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
    [v11 setUserInteractionEnabled:1];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277CCAAD0];
    widthAnchor = [v11 widthAnchor];
    heightAnchor = [v11 heightAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v32[0] = v15;
    v16 = 30.0;
    v17 = v32;
  }

  else
  {
    v18 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:14.0];
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.backward.circle.fill"];
    v6 = [v19 imageWithRenderingMode:2];

    [tintedButtonConfiguration setImage:v6];
    v29 = v18;
    [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v18];
    v20 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v21 = [v20 colorWithAlphaComponent:0.0];
    background3 = [tintedButtonConfiguration background];
    [background3 setBackgroundColor:v21];

    background4 = [tintedButtonConfiguration background];
    [background4 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
    [v11 setUserInteractionEnabled:1];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277CCAAD0];
    widthAnchor = [v11 widthAnchor];
    heightAnchor = [v11 heightAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v31 = v15;
    v17 = &v31;
    v16 = 34.0;
  }

  widthAnchor2 = [v11 widthAnchor];
  v25 = [widthAnchor2 constraintEqualToConstant:v16];
  v17[1] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v17 count:2];
  [v12 activateConstraints:v26];

  [v11 addTarget:self action:sel_handleTap_ forControlEvents:64];
  v27 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)createDisconnectedButton
{
  v38[2] = *MEMORY[0x277D85DE8];
  useJindoPath = self->_useJindoPath;
  tintedButtonConfiguration = [MEMORY[0x277D75230] tintedButtonConfiguration];
  if (useJindoPath)
  {
    v35 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:20.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v6 = [v5 imageWithRenderingMode:2];

    v36 = v6;
    [tintedButtonConfiguration setImage:v6];
    [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v35];
    v7 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v8 = [v7 colorWithAlphaComponent:0.2];
    background = [tintedButtonConfiguration background];
    [background setBackgroundColor:v8];

    background2 = [tintedButtonConfiguration background];
    [background2 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
    [v11 setUserInteractionEnabled:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277CCAAD0];
    widthAnchor = [v11 widthAnchor];
    heightAnchor = [v11 heightAnchor];
    v15 = [widthAnchor constraintEqualToAnchor:heightAnchor];
    v38[0] = v15;
    widthAnchor2 = [v11 widthAnchor];
    v17 = [widthAnchor2 constraintEqualToConstant:30.0];
    v38[1] = v17;
    v18 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:2];
    [v12 activateConstraints:v18];

    v19 = v35;
    [v11 addTarget:self action:sel_handleTap_ forControlEvents:64];
  }

  else
  {
    v19 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:14.0];
    v20 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark.circle.fill"];
    v21 = [v20 imageWithRenderingMode:2];

    v36 = v21;
    [tintedButtonConfiguration setImage:v21];
    [tintedButtonConfiguration setPreferredSymbolConfigurationForImage:v19];
    v22 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v23 = [v22 colorWithAlphaComponent:0.0];
    background3 = [tintedButtonConfiguration background];
    [background3 setBackgroundColor:v23];

    background4 = [tintedButtonConfiguration background];
    [background4 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:tintedButtonConfiguration primaryAction:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = MEMORY[0x277CCAAD0];
    widthAnchor3 = [v11 widthAnchor];
    heightAnchor2 = [v11 heightAnchor];
    v29 = [widthAnchor3 constraintEqualToAnchor:heightAnchor2];
    v37[0] = v29;
    widthAnchor4 = [v11 widthAnchor];
    v31 = [widthAnchor4 constraintEqualToConstant:34.0];
    v37[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    [v26 activateConstraints:v32];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)removedAccessoryColorCode:(id)code
{
  v16 = *MEMORY[0x277D85DE8];
  codeCopy = code;
  v4 = [codeCopy componentsSeparatedByString:@"-"];
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  lastObject = [v4 lastObject];
  if ([lastObject length] <= 3)
  {

LABEL_8:
    [v5 removeLastObject];
    v12 = [v5 componentsJoinedByString:@"-"];
    if (!dword_27F8F0258)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  lastObject2 = [v4 lastObject];
  v8 = [lastObject2 containsString:@"default"];

  if (v8)
  {
    goto LABEL_8;
  }

  lastObject3 = [v4 lastObject];
  if ([lastObject3 containsString:@"Case"])
  {
    v10 = [v5 objectAtIndex:{objc_msgSend(v5, "count") - 2}];
    v11 = [v10 length];

    if (v11 <= 2)
    {
      [v5 removeObjectAtIndex:{objc_msgSend(v5, "count") - 2}];
      v12 = [v5 componentsJoinedByString:@"-"];
      if (!dword_27F8F0258)
      {
        goto LABEL_12;
      }

LABEL_9:
      v13 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      goto LABEL_12;
    }
  }

  else
  {
  }

  v12 = codeCopy;
LABEL_12:

  v14 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)checkifVideoAssetExists
{
  leadingAccessoryIconName = self->_leadingAccessoryIconName;
  if (leadingAccessoryIconName)
  {
    LOBYTE(leadingAccessoryIconName) = ![(NSString *)leadingAccessoryIconName containsString:@"8197"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8205"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8208"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8218"]&& ![(NSString *)self->_leadingAccessoryIconName containsString:@"8195"];
  }

  return leadingAccessoryIconName;
}

- (void)viewDidLoad
{
  v29 = *MEMORY[0x277D85DE8];
  if (dword_27F8F0258)
  {
    v28 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v26.receiver = self;
  v26.super_class = MXUIServiceBanner;
  [(MXUIServiceBanner *)&v26 viewDidLoad];
  view = [(MXUIServiceBanner *)self view];
  v5 = view;
  if (!self->_useJindoPath)
  {
    [view addSubview:self->_pillView];
    leadingAnchor = [(PLPillView *)self->_pillView leadingAnchor];
    leadingAnchor2 = [v5 leadingAnchor];
    v8 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    [v8 setActive:1];

    trailingAnchor = [(PLPillView *)self->_pillView trailingAnchor];
    trailingAnchor2 = [v5 trailingAnchor];
    v11 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    [v11 setActive:1];

    topAnchor = [(PLPillView *)self->_pillView topAnchor];
    topAnchor2 = [v5 topAnchor];
    v14 = [topAnchor constraintEqualToAnchor:topAnchor2];
    [v14 setActive:1];

    bottomAnchor = [(PLPillView *)self->_pillView bottomAnchor];
    bottomAnchor2 = [v5 bottomAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    [v17 setActive:1];
  }

  v18 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v18 setNumberOfTapsRequired:1];
  [v18 setNumberOfTouchesRequired:1];
  if (self->_useJindoPath)
  {
    ccTopViewLabel = [(MXUIServiceBanner *)self ccTopViewLabel];
    [ccTopViewLabel setMarqueeRunning:1];

    ccBottomViewLabel = [(MXUIServiceBanner *)self ccBottomViewLabel];
    [ccBottomViewLabel setMarqueeRunning:1];

    view2 = [(MXUIServiceBanner *)self view];
    [view2 setTranslatesAutoresizingMaskIntoConstraints:0];

    v22 = os_transaction_create();
    bannerAssetTransaction = self->_bannerAssetTransaction;
    self->_bannerAssetTransaction = v22;

    pillView = v5;
    if (self->_isAskOrReverseBanner)
    {
      goto LABEL_10;
    }
  }

  else
  {
    pillView = self->_pillView;
  }

  [(PLPillView *)pillView addGestureRecognizer:v18];
LABEL_10:

  v25 = *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviews
{
  v8 = *MEMORY[0x277D85DE8];
  if (dword_27F8F0258)
  {
    v7 = 0;
    type = OS_LOG_TYPE_DEFAULT;
    v3 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5.receiver = self;
  v5.super_class = MXUIServiceBanner;
  [(MXUIServiceBanner *)&v5 viewWillLayoutSubviews];
  v4 = *MEMORY[0x277D85DE8];
}

- (void)handleTap:(id)tap
{
  v14 = *MEMORY[0x277D85DE8];
  tapCopy = tap;
  if (self->_bannerActive)
  {
    if (dword_27F8F0258)
    {
      v6 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }

    actionHandler = self->_actionHandler;
    if (actionHandler)
    {
      v8 = MEMORY[0x259C6C950](actionHandler, v4);
      v9 = v8;
      if (v8)
      {
        (*(v8 + 16))(v8, 1, 0);
      }

      v10 = self->_actionHandler;
      self->_actionHandler = 0;
    }

    [(MXUIServiceBanner *)self dismissBanner:3, v12, v13];
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)setBannerTimer
{
  v14 = *MEMORY[0x277D85DE8];
  bannerTimeoutInSeconds = self->_bannerTimeoutInSeconds;
  if (bannerTimeoutInSeconds != 0.0)
  {
    if (dword_27F8F0258)
    {
      v13 = 0;
      type = OS_LOG_TYPE_DEFAULT;
      v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();

      bannerTimeoutInSeconds = self->_bannerTimeoutInSeconds;
    }

    v5 = dispatch_time(0, (bannerTimeoutInSeconds * 1000000000.0));
    bannerTimer = self->_bannerTimer;
    if (bannerTimer)
    {
      dispatch_source_set_timer(bannerTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
    }

    else
    {
      v7 = dispatch_source_create(MEMORY[0x277D85D38], 0, 0, MEMORY[0x277D85CD0]);
      v8 = self->_bannerTimer;
      self->_bannerTimer = v7;

      v9 = self->_bannerTimer;
      if (!v9)
      {
        [MXUIServiceBanner setBannerTimer];
      }

      handler[0] = MEMORY[0x277D85DD0];
      handler[1] = 3221225472;
      handler[2] = __35__MXUIServiceBanner_setBannerTimer__block_invoke;
      handler[3] = &unk_2798505D0;
      handler[4] = self;
      dispatch_source_set_event_handler(v9, handler);
      dispatch_source_set_timer(self->_bannerTimer, v5, 0xFFFFFFFFFFFFFFFFLL, 0);
      dispatch_resume(self->_bannerTimer);
    }
  }

  v10 = *MEMORY[0x277D85DE8];
}

- (UIEdgeInsets)bannerContentOutsets
{
  [(MXUIServiceBanner *)self loadViewIfNeeded];
  pillView = self->_pillView;

  [(PLPillView *)pillView shadowOutsets];
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
{
  [(PLPillView *)self->_pillView intrinsicContentSize:size.width];
  result.height = v5;
  result.width = v4;
  return result;
}

+ (id)_bundleID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __30__MXUIServiceBanner__bundleID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_bundleID_onceToken != -1)
  {
    dispatch_once(&_bundleID_onceToken, block);
  }

  v2 = _bundleID___bundleID;

  return v2;
}

void __30__MXUIServiceBanner__bundleID__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v1 = [v3 bundleIdentifier];
  v2 = _bundleID___bundleID;
  _bundleID___bundleID = v1;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 _bundleID];
}

- (NSString)requestIdentifier
{
  if (!self->_requestIdentifier)
  {
    identifier = self->_identifier;
    if (identifier)
    {
      v4 = identifier;
      requestIdentifier = self->_requestIdentifier;
      self->_requestIdentifier = v4;
    }

    else
    {
      requestIdentifier = [MEMORY[0x277CCAD78] UUID];
      uUIDString = [requestIdentifier UUIDString];
      v7 = self->_requestIdentifier;
      self->_requestIdentifier = uUIDString;
    }
  }

  v8 = self->_requestIdentifier;

  return v8;
}

@end