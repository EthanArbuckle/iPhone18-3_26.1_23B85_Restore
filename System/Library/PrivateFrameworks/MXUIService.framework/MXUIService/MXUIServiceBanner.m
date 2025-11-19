@interface MXUIServiceBanner
+ (id)_bundleID;
- (BOOL)checkifVideoAssetExists;
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
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
- (id)fetchUIImageForClientConfig:(int)a3;
- (id)getAppIcon:(id)a3;
- (id)removedAccessoryColorCode:(id)a3;
- (id)userInfoForPosting;
- (int)showBannerWithTimeout;
- (int64_t)preferredLayoutMode;
- (void)_createBannerTapView;
- (void)_createConnectBannerTextLabel:(id)a3 bottomLabel:(id)a4;
- (void)_createConstraintsForConnectBannerIfNeeded;
- (void)_createConstraintsForDisconnectedBannerIfNeeded;
- (void)_createConstraintsForUndoBannerIfNeeded;
- (void)_createDeviceReplacementBannerTextLabel:(id)a3;
- (void)_createDisconnectedBannerTextLabel:(id)a3 bottomLabel:(id)a4;
- (void)_createUndoBannerTextLabel:(id)a3 bottomLabel:(id)a4;
- (void)activateWithActionHandler:(id)a3;
- (void)configureBannerViews;
- (void)configureConnectBanner:(id)a3;
- (void)configureDisconnectedBanner:(id)a3;
- (void)configureInputDeviceReplacementPillForConnectedDevice:(id)a3 replacedDevice:(id)a4;
- (void)configureUndoBanner:(id)a3;
- (void)createCustomStaticImageView:(id)a3 withIcon:(id)a4;
- (void)createCustomView:(id)a3 WithCustomIconName:(id)a4;
- (void)handleTap:(id)a3;
- (void)invalidate;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setBannerTimer;
- (void)setCanRequestAlertingAssertion:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation MXUIServiceBanner

- (id)fetchUIImageForClientConfig:(int)a3
{
  leadingAccessorySymbol = self->_leadingAccessorySymbol;
  v5 = a3 - 1;
  if ((a3 - 1) > 3)
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

- (void)setCanRequestAlertingAssertion:(BOOL)a3
{
  v12 = *MEMORY[0x277D85DE8];
  if (self->_canRequestAlertingAssertion != a3)
  {
    self->_canRequestAlertingAssertion = a3;
    if (a3 && self->_isAskOrReverseBanner)
    {
      v4 = [(MXUIServiceBanner *)self systemApertureElementContext];
      v5 = [v4 requestAlertingAssertion];
      [v5 setAutomaticallyInvalidatable:0];

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

- (void)setActiveLayoutMode:(int64_t)a3
{
  self->_activeLayoutMode = a3;
  if (a3 == -1)
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

- (void)configureConnectBanner:(id)a3
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v5 valueForKey:*MEMORY[0x277D25808]];
  v8 = [v6 localizedStringForKey:v7 value:&stru_2868F10B0 table:0];

  v9 = [v5 valueForKey:*MEMORY[0x277D25810]];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"TAP_TO_AIRPLAY" value:&stru_2868F10B0 table:0];

  v12 = [v5 valueForKey:*MEMORY[0x277D25800]];

  v13 = [v12 intValue];
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
    v17 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:v13];
    [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v17];

    [(MXUIServiceBanner *)self _createBannerTapView];
    v18 = [(MXUIServiceBanner *)self createInUseConnectButton];
    [(UIView *)self->_trailingAccessoryView addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v18 widthAnchor];
    v20 = [(UIView *)self->_trailingAccessoryView widthAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v18 heightAnchor];
    v23 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [v18 centerXAnchor];
    v26 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [v18 centerYAnchor];
    v29 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
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
    v18 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v8 style:1];
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
    if (v18)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v18];
    }

    if (v33)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v33];
    }

    v34 = self->_leadingAccessoryView;
    v35 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:v13];
    [(MXUIServiceBanner *)self createCustomStaticImageView:v34 withIcon:v35];

    v36 = [(MXUIServiceBanner *)self createInUseConnectButton];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView trailingAccessoryView:v36];
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

- (void)configureUndoBanner:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v5 valueForKey:*MEMORY[0x277D25808]];
  v8 = [v6 localizedStringForKey:v7 value:&stru_2868F10B0 table:0];

  v9 = [v5 valueForKey:*MEMORY[0x277D25810]];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"AIRPLAY_CONNECTED" value:&stru_2868F10B0 table:0];

  v12 = [v5 valueForKey:*MEMORY[0x277D25800]];

  v13 = [v12 intValue];
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
    v17 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:v13];
    [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v17];

    v18 = [(MXUIServiceBanner *)self createReverseButton];
    [(UIView *)self->_trailingAccessoryView addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v18 widthAnchor];
    v20 = [(UIView *)self->_trailingAccessoryView widthAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v18 heightAnchor];
    v23 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [v18 centerXAnchor];
    v26 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [v18 centerYAnchor];
    v29 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
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
    v18 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v8 style:1];
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
    if (v18)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v18];
    }

    if (v33)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v33];
    }

    v34 = self->_leadingAccessoryView;
    v35 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:v13];
    [(MXUIServiceBanner *)self createCustomStaticImageView:v34 withIcon:v35];

    v36 = [(MXUIServiceBanner *)self createReverseButton];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView trailingAccessoryView:v36];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_pillView, v37);
    v38 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)self->_leadingAccessoryView setTintColor:v38];

    v39 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_trailingAccessoryView setTintColor:v39];

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

- (void)configureDisconnectedBanner:(id)a3
{
  v44 = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x277CCA8D8];
  v5 = a3;
  v6 = [v4 mainBundle];
  v7 = [v5 valueForKey:*MEMORY[0x277D25808]];
  v8 = [v6 localizedStringForKey:v7 value:&stru_2868F10B0 table:0];

  v9 = [v5 valueForKey:*MEMORY[0x277D25810]];
  v10 = [MEMORY[0x277CCA8D8] mainBundle];
  v11 = [v10 localizedStringForKey:@"DISCONNECTED" value:&stru_2868F10B0 table:0];

  v12 = [v5 valueForKey:*MEMORY[0x277D25800]];

  v13 = [v12 intValue];
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
    v17 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:v13];
    [(MXUIServiceBanner *)self createCustomStaticImageView:leadingAccessoryView withIcon:v17];

    v18 = [(MXUIServiceBanner *)self createDisconnectedButton];
    [(UIView *)self->_trailingAccessoryView addSubview:v18];
    [v18 setTranslatesAutoresizingMaskIntoConstraints:0];
    v19 = [v18 widthAnchor];
    v20 = [(UIView *)self->_trailingAccessoryView widthAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    [v21 setActive:1];

    v22 = [v18 heightAnchor];
    v23 = [(UIView *)self->_trailingAccessoryView heightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    [v24 setActive:1];

    v25 = [v18 centerXAnchor];
    v26 = [(UIView *)self->_trailingAccessoryView centerXAnchor];
    v27 = [v25 constraintEqualToAnchor:v26];
    [v27 setActive:1];

    v28 = [v18 centerYAnchor];
    v29 = [(UIView *)self->_trailingAccessoryView centerYAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
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
    v18 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v8 style:1];
    v33 = [objc_alloc(MEMORY[0x277D3D308]) initWithText:v11 style:2];
    if (v18)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v18];
    }

    if (v33)
    {
      [(NSMutableArray *)self->_centerContentItems addObject:v33];
    }

    v34 = self->_leadingAccessoryView;
    v35 = [(MXUIServiceBanner *)self fetchUIImageForClientConfig:v13];
    [(MXUIServiceBanner *)self createCustomStaticImageView:v34 withIcon:v35];

    v36 = [(MXUIServiceBanner *)self createDisconnectedButton];
    [v36 setTranslatesAutoresizingMaskIntoConstraints:0];
    v37 = [objc_alloc(MEMORY[0x277D3D318]) initWithLeadingAccessoryView:self->_leadingAccessoryView trailingAccessoryView:v36];
    [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
    objc_storeStrong(&self->_pillView, v37);
    v38 = [MEMORY[0x277D75348] systemBlueColor];
    [(UIView *)self->_leadingAccessoryView setTintColor:v38];

    v39 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)self->_trailingAccessoryView setTintColor:v39];

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

- (void)configureInputDeviceReplacementPillForConnectedDevice:(id)a3 replacedDevice:(id)a4
{
  v21 = *MEMORY[0x277D85DE8];
  v6 = MEMORY[0x277D3D308];
  v7 = a4;
  v8 = a3;
  v9 = [v6 alloc];
  v10 = MEMORY[0x277CCACA8];
  v11 = [MEMORY[0x277CCA8D8] mainBundle];
  v12 = [v11 localizedStringForKey:@"DEVICEA_REPLACED_DEVICEB" value:&stru_2868F10B0 table:0];
  v13 = [v10 stringWithFormat:v12, v8, v7];

  v14 = [v9 initWithText:v13];
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
  v18 = [MEMORY[0x277D75348] blackColor];
  [(UIView *)self->_leadingAccessoryView setTintColor:v18];

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

- (void)_createConnectBannerTextLabel:(id)a3 bottomLabel:(id)a4
{
  v6 = MEMORY[0x277D756B8];
  v7 = a4;
  v8 = a3;
  v17 = [[v6 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v17 setText:v8];

  v9 = [MEMORY[0x277D75348] systemWhiteColor];
  [v17 setTextColor:v9];

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
  [v13 setText:v7];

  v14 = [MEMORY[0x277D75348] systemWhiteColor];
  [v13 setTextColor:v14];

  [v13 setAlpha:0.45];
  v15 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v10];
  [v13 setFont:v15];

  [v13 setMarqueeEnabled:1];
  [v13 setUserInteractionEnabled:1];
  v16 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v13 addGestureRecognizer:v16];
  [(MXUIServiceBanner *)self setCcBottomViewLabel:v13];
}

- (void)_createUndoBannerTextLabel:(id)a3 bottomLabel:(id)a4
{
  v6 = MEMORY[0x277D756B8];
  v7 = a4;
  v8 = a3;
  v15 = [[v6 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v15 setText:v8];

  v9 = [MEMORY[0x277D75348] systemWhiteColor];
  [v15 setTextColor:v9];

  [v15 setAlpha:1.0];
  v10 = *MEMORY[0x277D74410];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v15 setFont:v11];

  [v15 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v15];
  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v12 setText:v7];

  v13 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
  [v12 setTextColor:v13];

  v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v10];
  [v12 setFont:v14];

  [v12 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcBottomViewLabel:v12];
}

- (void)_createDisconnectedBannerTextLabel:(id)a3 bottomLabel:(id)a4
{
  v6 = MEMORY[0x277D756B8];
  v7 = a4;
  v8 = a3;
  v15 = [[v6 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v15 setText:v8];

  v9 = [MEMORY[0x277D75348] systemWhiteColor];
  [v15 setTextColor:v9];

  [v15 setAlpha:1.0];
  v10 = *MEMORY[0x277D74410];
  v11 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v15 setFont:v11];

  [v15 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v15];
  v12 = [objc_alloc(MEMORY[0x277D756B8]) initWithFrame:{0.0, 0.0, 30.0, 30.0}];
  [v12 setText:v7];

  v13 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
  [v12 setTextColor:v13];

  v14 = [MEMORY[0x277D74300] systemFontOfSize:13.0 weight:v10];
  [v12 setFont:v14];

  [v12 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcBottomViewLabel:v12];
}

- (void)_createDeviceReplacementBannerTextLabel:(id)a3
{
  v4 = MEMORY[0x277D756B8];
  v5 = a3;
  v8 = [[v4 alloc] initWithFrame:{0.0, 0.0, 20.0, 20.0}];
  [v8 setText:v5];

  v6 = [MEMORY[0x277D75348] systemWhiteColor];
  [v8 setTextColor:v6];

  [v8 setAlpha:1.0];
  v7 = [MEMORY[0x277D74300] systemFontOfSize:15.0 weight:*MEMORY[0x277D74410]];
  [v8 setFont:v7];

  [v8 setMarqueeEnabled:1];
  [(MXUIServiceBanner *)self setCcTopViewLabel:v8];
}

- (void)_createBannerTapView
{
  v6 = [objc_alloc(MEMORY[0x277D75220]) initWithFrame:{0.0, 0.0, 500.0, 150.0}];
  v3 = [MEMORY[0x277D75348] clearColor];
  [v6 setBackgroundColor:v3];

  [v6 setUserInteractionEnabled:1];
  v4 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v6 addGestureRecognizer:v4];
  v5 = [(MXUIServiceBanner *)self view];
  [v5 addSubview:v6];
}

- (void)_createConstraintsForConnectBannerIfNeeded
{
  v97[18] = *MEMORY[0x277D85DE8];
  v3 = [(MXUIServiceBanner *)self ccTopViewLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [(MXUIServiceBanner *)self ccBottomViewLabel];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&unk_2868F29B0];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          v7 = [MEMORY[0x277CBEB38] dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = v7;
        }

        v95 = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        v96 = [(MXUIServiceBanner *)self view];
        v94 = [v96 leadingAnchor];
        v93 = [v95 constraintEqualToAnchor:v94 constant:20.0];
        v97[0] = v93;
        v91 = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        v92 = [(MXUIServiceBanner *)self view];
        v90 = [v92 centerYAnchor];
        v89 = [v91 constraintEqualToAnchor:v90];
        v97[1] = v89;
        v88 = [(MXUIServiceBanner *)self view];
        v86 = [v88 widthAnchor];
        v87 = [(MXUIServiceBanner *)self view];
        v85 = [v87 window];
        v84 = [v85 widthAnchor];
        v83 = [v86 constraintEqualToAnchor:v84];
        v97[2] = v83;
        v82 = [(MXUIServiceBanner *)self view];
        v80 = [v82 heightAnchor];
        v81 = [(MXUIServiceBanner *)self view];
        v79 = [v81 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        v78 = [v79 heightAnchor];
        v77 = [v80 constraintEqualToAnchor:v78];
        v97[3] = v77;
        v75 = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        v76 = [(MXUIServiceBanner *)self view];
        v74 = [v76 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v73 = [v74 leadingAnchor];
        v72 = [v75 constraintLessThanOrEqualToAnchor:v73];
        v97[4] = v72;
        v71 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v69 = [v71 leadingAnchor];
        v70 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v68 = [v70 leadingAnchor];
        v67 = [v69 constraintEqualToAnchor:v68];
        v97[5] = v67;
        v66 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v65 = [v66 _tightBoundingBoxLayoutGuide];
        v63 = [v65 topAnchor];
        v64 = [(MXUIServiceBanner *)self view];
        v62 = [v64 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v61 = [v62 bottomAnchor];
        v60 = [v63 constraintEqualToAnchor:v61];
        v97[6] = v60;
        v59 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v58 = [v59 trailingAnchor];
        v56 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v57 = [(MXUIServiceBanner *)self view];
        [v57 SBUISA_standardInteritemPadding];
        v55 = [v58 constraintEqualToAnchor:v56 constant:-v9];
        v97[7] = v55;
        v54 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v53 = [v54 heightAnchor];
        v52 = [v53 constraintEqualToConstant:19.5];
        v97[8] = v52;
        v51 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v49 = [v51 firstBaselineAnchor];
        v50 = [(MXUIServiceBanner *)self view];
        v48 = [v50 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        v47 = [v48 bottomAnchor];
        v46 = [v49 constraintEqualToAnchor:v47 constant:2.0];
        v97[9] = v46;
        v45 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v43 = [v45 leadingAnchor];
        v44 = [(MXUIServiceBanner *)self view];
        v42 = [v44 leadingAnchor];
        v41 = [v43 constraintEqualToAnchor:v42 constant:88.0];
        v97[10] = v41;
        v40 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v39 = [v40 _tightBoundingBoxLayoutGuide];
        v37 = [v39 topAnchor];
        v38 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v36 = [v38 bottomAnchor];
        v35 = [v37 constraintEqualToAnchor:v36];
        v97[11] = v35;
        v34 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v33 = [v34 trailingAnchor];
        v31 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v32 = [(MXUIServiceBanner *)self view];
        [v32 SBUISA_standardInteritemPadding];
        v30 = [v33 constraintEqualToAnchor:v31 constant:-v10];
        v97[12] = v30;
        v29 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v28 = [v29 constraintEqualToConstant:55.0];
        v97[13] = v28;
        v27 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v26 = [v27 constraintGreaterThanOrEqualToConstant:35.0];
        v97[14] = v26;
        v24 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        v25 = [(MXUIServiceBanner *)self view];
        v23 = [v25 centerYAnchor];
        v22 = [v24 constraintEqualToAnchor:v23];
        v97[15] = v22;
        v21 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v11 = [(MXUIServiceBanner *)self view];
        v12 = [v11 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v13 = [v12 trailingAnchor];
        v14 = [v21 constraintGreaterThanOrEqualToAnchor:v13];
        v97[16] = v14;
        v15 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        v16 = [(MXUIServiceBanner *)self view];
        v17 = [v16 trailingAnchor];
        v18 = [v15 constraintEqualToAnchor:v17 constant:-15.0];
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
  v3 = [(MXUIServiceBanner *)self ccTopViewLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [(MXUIServiceBanner *)self ccBottomViewLabel];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&unk_2868F29B0];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          v7 = [MEMORY[0x277CBEB38] dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = v7;
        }

        v95 = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        v96 = [(MXUIServiceBanner *)self view];
        v94 = [v96 leadingAnchor];
        v93 = [v95 constraintEqualToAnchor:v94 constant:20.0];
        v97[0] = v93;
        v91 = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        v92 = [(MXUIServiceBanner *)self view];
        v90 = [v92 centerYAnchor];
        v89 = [v91 constraintEqualToAnchor:v90];
        v97[1] = v89;
        v88 = [(MXUIServiceBanner *)self view];
        v86 = [v88 widthAnchor];
        v87 = [(MXUIServiceBanner *)self view];
        v85 = [v87 window];
        v84 = [v85 widthAnchor];
        v83 = [v86 constraintEqualToAnchor:v84];
        v97[2] = v83;
        v82 = [(MXUIServiceBanner *)self view];
        v80 = [v82 heightAnchor];
        v81 = [(MXUIServiceBanner *)self view];
        v79 = [v81 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        v78 = [v79 heightAnchor];
        v77 = [v80 constraintEqualToAnchor:v78];
        v97[3] = v77;
        v75 = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        v76 = [(MXUIServiceBanner *)self view];
        v74 = [v76 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v73 = [v74 leadingAnchor];
        v72 = [v75 constraintLessThanOrEqualToAnchor:v73];
        v97[4] = v72;
        v71 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v69 = [v71 leadingAnchor];
        v70 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v68 = [v70 leadingAnchor];
        v67 = [v69 constraintEqualToAnchor:v68];
        v97[5] = v67;
        v66 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v65 = [v66 _tightBoundingBoxLayoutGuide];
        v63 = [v65 topAnchor];
        v64 = [(MXUIServiceBanner *)self view];
        v62 = [v64 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v61 = [v62 bottomAnchor];
        v60 = [v63 constraintEqualToAnchor:v61];
        v97[6] = v60;
        v59 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v58 = [v59 trailingAnchor];
        v56 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v57 = [(MXUIServiceBanner *)self view];
        [v57 SBUISA_standardInteritemPadding];
        v55 = [v58 constraintEqualToAnchor:v56 constant:-v9];
        v97[7] = v55;
        v54 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v53 = [v54 heightAnchor];
        v52 = [v53 constraintEqualToConstant:19.5];
        v97[8] = v52;
        v51 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v49 = [v51 firstBaselineAnchor];
        v50 = [(MXUIServiceBanner *)self view];
        v48 = [v50 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        v47 = [v48 bottomAnchor];
        v46 = [v49 constraintEqualToAnchor:v47 constant:2.0];
        v97[9] = v46;
        v45 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v43 = [v45 leadingAnchor];
        v44 = [(MXUIServiceBanner *)self view];
        v42 = [v44 leadingAnchor];
        v41 = [v43 constraintEqualToAnchor:v42 constant:88.0];
        v97[10] = v41;
        v40 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v39 = [v40 _tightBoundingBoxLayoutGuide];
        v37 = [v39 topAnchor];
        v38 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v36 = [v38 bottomAnchor];
        v35 = [v37 constraintEqualToAnchor:v36];
        v97[11] = v35;
        v34 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v33 = [v34 trailingAnchor];
        v31 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v32 = [(MXUIServiceBanner *)self view];
        [v32 SBUISA_standardInteritemPadding];
        v30 = [v33 constraintEqualToAnchor:v31 constant:-v10];
        v97[12] = v30;
        v29 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v28 = [v29 constraintEqualToConstant:55.0];
        v97[13] = v28;
        v27 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v26 = [v27 constraintGreaterThanOrEqualToConstant:35.0];
        v97[14] = v26;
        v24 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        v25 = [(MXUIServiceBanner *)self view];
        v23 = [v25 centerYAnchor];
        v22 = [v24 constraintEqualToAnchor:v23];
        v97[15] = v22;
        v21 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v11 = [(MXUIServiceBanner *)self view];
        v12 = [v11 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v13 = [v12 trailingAnchor];
        v14 = [v21 constraintGreaterThanOrEqualToAnchor:v13];
        v97[16] = v14;
        v15 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        v16 = [(MXUIServiceBanner *)self view];
        v17 = [v16 trailingAnchor];
        v18 = [v15 constraintEqualToAnchor:v17 constant:-15.0];
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
  v3 = [(MXUIServiceBanner *)self ccTopViewLabel];
  if (v3)
  {
    v4 = v3;
    v5 = [(MXUIServiceBanner *)self ccBottomViewLabel];

    if (v5)
    {
      v6 = [(NSMutableDictionary *)self->_constraintsForLayoutMode objectForKeyedSubscript:&unk_2868F29B0];

      if (!v6)
      {
        if (!self->_constraintsForLayoutMode)
        {
          v7 = [MEMORY[0x277CBEB38] dictionary];
          constraintsForLayoutMode = self->_constraintsForLayoutMode;
          self->_constraintsForLayoutMode = v7;
        }

        v95 = [(SBUISystemApertureAccessoryView *)self->_leadingView leadingAnchor];
        v96 = [(MXUIServiceBanner *)self view];
        v94 = [v96 leadingAnchor];
        v93 = [v95 constraintEqualToAnchor:v94 constant:20.0];
        v97[0] = v93;
        v91 = [(SBUISystemApertureAccessoryView *)self->_leadingView centerYAnchor];
        v92 = [(MXUIServiceBanner *)self view];
        v90 = [v92 centerYAnchor];
        v89 = [v91 constraintEqualToAnchor:v90];
        v97[1] = v89;
        v88 = [(MXUIServiceBanner *)self view];
        v86 = [v88 widthAnchor];
        v87 = [(MXUIServiceBanner *)self view];
        v85 = [v87 window];
        v84 = [v85 widthAnchor];
        v83 = [v86 constraintEqualToAnchor:v84];
        v97[2] = v83;
        v82 = [(MXUIServiceBanner *)self view];
        v80 = [v82 heightAnchor];
        v81 = [(MXUIServiceBanner *)self view];
        v79 = [v81 SBUISA_systemApertureTrailingConcentricContentLayoutGuide];
        v78 = [v79 heightAnchor];
        v77 = [v80 constraintEqualToAnchor:v78];
        v97[3] = v77;
        v75 = [(SBUISystemApertureAccessoryView *)self->_leadingView trailingAnchor];
        v76 = [(MXUIServiceBanner *)self view];
        v74 = [v76 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v73 = [v74 leadingAnchor];
        v72 = [v75 constraintLessThanOrEqualToAnchor:v73];
        v97[4] = v72;
        v71 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v69 = [v71 leadingAnchor];
        v70 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v68 = [v70 leadingAnchor];
        v67 = [v69 constraintEqualToAnchor:v68];
        v97[5] = v67;
        v66 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v65 = [v66 _tightBoundingBoxLayoutGuide];
        v63 = [v65 topAnchor];
        v64 = [(MXUIServiceBanner *)self view];
        v62 = [v64 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v61 = [v62 bottomAnchor];
        v60 = [v63 constraintEqualToAnchor:v61];
        v97[6] = v60;
        v59 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v58 = [v59 trailingAnchor];
        v56 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v57 = [(MXUIServiceBanner *)self view];
        [v57 SBUISA_standardInteritemPadding];
        v55 = [v58 constraintEqualToAnchor:v56 constant:-v9];
        v97[7] = v55;
        v54 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v53 = [v54 heightAnchor];
        v52 = [v53 constraintEqualToConstant:19.5];
        v97[8] = v52;
        v51 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v49 = [v51 firstBaselineAnchor];
        v50 = [(MXUIServiceBanner *)self view];
        v48 = [v50 SBUISA_systemApertureLegibleContentLayoutMarginsGuide];
        v47 = [v48 bottomAnchor];
        v46 = [v49 constraintEqualToAnchor:v47 constant:2.0];
        v97[9] = v46;
        v45 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v43 = [v45 leadingAnchor];
        v44 = [(MXUIServiceBanner *)self view];
        v42 = [v44 leadingAnchor];
        v41 = [v43 constraintEqualToAnchor:v42 constant:88.0];
        v97[10] = v41;
        v40 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v39 = [v40 _tightBoundingBoxLayoutGuide];
        v37 = [v39 topAnchor];
        v38 = [(MXUIServiceBanner *)self ccTopViewLabel];
        v36 = [v38 bottomAnchor];
        v35 = [v37 constraintEqualToAnchor:v36];
        v97[11] = v35;
        v34 = [(MXUIServiceBanner *)self ccBottomViewLabel];
        v33 = [v34 trailingAnchor];
        v31 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v32 = [(MXUIServiceBanner *)self view];
        [v32 SBUISA_standardInteritemPadding];
        v30 = [v33 constraintEqualToAnchor:v31 constant:-v10];
        v97[12] = v30;
        v29 = [(SBUISystemApertureAccessoryView *)self->_trailingView heightAnchor];
        v28 = [v29 constraintEqualToConstant:55.0];
        v97[13] = v28;
        v27 = [(SBUISystemApertureAccessoryView *)self->_trailingView widthAnchor];
        v26 = [v27 constraintGreaterThanOrEqualToConstant:35.0];
        v97[14] = v26;
        v24 = [(SBUISystemApertureAccessoryView *)self->_trailingView centerYAnchor];
        v25 = [(MXUIServiceBanner *)self view];
        v23 = [v25 centerYAnchor];
        v22 = [v24 constraintEqualToAnchor:v23];
        v97[15] = v22;
        v21 = [(SBUISystemApertureAccessoryView *)self->_trailingView leadingAnchor];
        v11 = [(MXUIServiceBanner *)self view];
        v12 = [v11 SBUISA_systemApertureObstructedAreaLayoutGuide];
        v13 = [v12 trailingAnchor];
        v14 = [v21 constraintGreaterThanOrEqualToAnchor:v13];
        v97[16] = v14;
        v15 = [(SBUISystemApertureAccessoryView *)self->_trailingView trailingAnchor];
        v16 = [(MXUIServiceBanner *)self view];
        v17 = [v16 trailingAnchor];
        v18 = [v15 constraintEqualToAnchor:v17 constant:-15.0];
        v97[17] = v18;
        v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v97 count:18];
        [(NSMutableDictionary *)self->_constraintsForLayoutMode setObject:v19 forKeyedSubscript:&unk_2868F29B0];
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v4 = a3;
  v5 = [(MXUIServiceBanner *)self minimalView];
  [v5 setHidden:0];

  v6 = [(MXUIServiceBanner *)self view];
  [v6 addSubview:self->_leadingAccessoryView];

  v7 = [(MXUIServiceBanner *)self view];
  [v7 addSubview:self->_minimalAccessoryView];

  v8 = [(MXUIServiceBanner *)self view];
  [v8 addSubview:self->_trailingAccessoryView];

  v9 = [(MXUIServiceBanner *)self view];
  v10 = [(MXUIServiceBanner *)self ccTopViewLabel];
  [v9 addSubview:v10];

  if (self->_isAskOrReverseBanner)
  {
    [(SBUISystemApertureAccessoryView *)self->_leadingView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(SBUISystemApertureAccessoryView *)self->_trailingView setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  else
  {
    v11 = [(MXUIServiceBanner *)self leadingView];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];

    v12 = [(MXUIServiceBanner *)self trailingView];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];

    v13 = [(MXUIServiceBanner *)self minimalView];
    [v13 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v14 = [(MXUIServiceBanner *)self ccTopViewLabel];
  [v14 setTranslatesAutoresizingMaskIntoConstraints:0];

  if (self->_isAskOrReverseBanner)
  {
    v15 = [(MXUIServiceBanner *)self view];
    v16 = [(MXUIServiceBanner *)self ccBottomViewLabel];
    [v15 addSubview:v16];

    [(MXUIServiceBanner *)self _createConstraintsForConnectBannerIfNeeded];
    v17 = [(MXUIServiceBanner *)self ccBottomViewLabel];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v18[0] = MEMORY[0x277D85DD0];
  v18[1] = 3221225472;
  v18[2] = __69__MXUIServiceBanner_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke;
  v18[3] = &unk_279850640;
  v18[4] = self;
  [v4 animateAlongsideTransition:v18 completion:0];
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

- (void)activateWithActionHandler:(id)a3
{
  v38[2] = *MEMORY[0x277D85DE8];
  v4 = MEMORY[0x259C6C950](a3, a2);
  actionHandler = self->_actionHandler;
  self->_actionHandler = v4;

  v6 = os_transaction_create();
  bannerTransaction = self->_bannerTransaction;
  self->_bannerTransaction = v6;

  v8 = MEMORY[0x277CF0A80];
  v9 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v10 = [v9 bundleIdentifier];
  v11 = [v8 bannerSourceForDestination:0 forRequesterIdentifier:v10];
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

- (id)getAppIcon:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v3 = a3;
  if (dword_27F8F0258)
  {
    v4 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
  }

  v5 = MEMORY[0x277D755B8];
  v6 = [MEMORY[0x277D759A0] mainScreen];
  [v6 scale];
  v7 = [v5 _applicationIconImageForBundleIdentifier:v3 format:0 scale:?];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

- (void)createCustomView:(id)a3 WithCustomIconName:(id)a4
{
  v5 = MEMORY[0x277D755E8];
  v6 = a4;
  v7 = a3;
  v8 = [v5 alloc];
  v9 = [MEMORY[0x277D755B8] imageNamed:v6];

  v10 = [v8 initWithImage:v9];
  [v10 setContentMode:2];
  [v7 bounds];
  [v10 setFrame:?];
  [v10 setAutoresizingMask:18];
  [v7 addSubview:v10];
}

- (void)createCustomStaticImageView:(id)a3 withIcon:(id)a4
{
  v30[4] = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = MEMORY[0x277D755E8];
  v8 = a4;
  v9 = objc_alloc_init(v7);
  [v6 addSubview:v9];
  [v9 setBackgroundColor:0];
  [v9 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&self->_imageView, v9);
  [(UIImageView *)self->_imageView setImage:v8];

  LODWORD(v7) = self->_useJindoPath;
  v10 = [(UIImageView *)self->_imageView centerXAnchor];
  v11 = [v6 centerXAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v13 = v12;
  if (v7 == 1)
  {
    v30[0] = v12;
    v25 = [(UIImageView *)self->_imageView centerYAnchor];
    v14 = [v6 centerYAnchor];
    v15 = [v25 constraintEqualToAnchor:v14];
    v30[1] = v15;
    v26 = [(UIImageView *)self->_imageView widthAnchor];
    v24 = [v6 widthAnchor];
    [v26 constraintEqualToAnchor:v24];
    v16 = v28 = v10;
    v30[2] = v16;
    v17 = [(UIImageView *)self->_imageView heightAnchor];
    [v6 heightAnchor];
    v18 = v27 = v13;
    [v17 constraintEqualToAnchor:v18];
    v20 = v19 = v11;
    v30[3] = v20;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v30 count:4];

    v11 = v19;
    v22 = v25;

    v13 = v27;
    v10 = v28;
  }

  else
  {
    v29[0] = v12;
    v22 = [(UIImageView *)self->_imageView centerYAnchor];
    v14 = [v6 centerYAnchor];
    v15 = [v22 constraintEqualToAnchor:v14];
    v29[1] = v15;
    v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:2];
  }

  [MEMORY[0x277CCAAD0] activateConstraints:v21];
  v23 = *MEMORY[0x277D85DE8];
}

- (id)createInUseConnectButton
{
  v2 = self;
  v32[1] = *MEMORY[0x277D85DE8];
  useJindoPath = self->_useJindoPath;
  v4 = [MEMORY[0x277D75230] tintedButtonConfiguration];
  if (useJindoPath)
  {
    v5 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:17.0];
    v6 = [MEMORY[0x277D755B8] systemImageNamed:@"airplay.audio"];
    v7 = [v6 imageWithRenderingMode:2];

    [v4 setImage:v7];
    [v4 setPreferredSymbolConfigurationForImage:v5];
    v8 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v9 = [v8 colorWithAlphaComponent:0.0];
    v10 = [v4 background];
    [v10 setBackgroundColor:v9];

    v11 = [v4 background];
    [v11 setCornerRadius:28.0];

    v12 = [MEMORY[0x277D67DD0] buttonWithConfiguration:v4 primaryAction:0];
    [v12 setConfiguration:v4];
    [v12 setUserInteractionEnabled:1];
    [v12 setFrame:{0.0, 0.0, 30.0, 30.0}];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = MEMORY[0x277CCAAD0];
    v14 = [v12 widthAnchor];
    [v12 intrinsicContentSize];
    v15 = [v14 constraintEqualToConstant:?];
    v32[0] = v15;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:1];
    [v13 activateConstraints:v16];
  }

  else
  {
    v29 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:14.0];
    v17 = [MEMORY[0x277D755B8] systemImageNamed:@"airplay.audio"];
    v30 = [v17 imageWithRenderingMode:2];

    [v4 setImage:v30];
    [v4 setPreferredSymbolConfigurationForImage:v29];
    v18 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v19 = [v18 colorWithAlphaComponent:0.0];
    v20 = [v4 background];
    [v20 setBackgroundColor:v19];

    v21 = [v4 background];
    [v21 setCornerRadius:28.0];

    v12 = [MEMORY[0x277D75220] buttonWithConfiguration:v4 primaryAction:0];
    [v12 setUserInteractionEnabled:1];
    [v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v22 = MEMORY[0x277CCAAD0];
    v14 = [v12 widthAnchor];
    v15 = [v12 heightAnchor];
    v16 = [v14 constraintEqualToAnchor:v15];
    v31[0] = v16;
    v23 = [v12 widthAnchor];
    v24 = [v23 constraintEqualToConstant:34.0];
    v31[1] = v24;
    [MEMORY[0x277CBEA60] arrayWithObjects:v31 count:2];
    v26 = v25 = v2;
    [v22 activateConstraints:v26];

    v2 = v25;
    v7 = v30;

    v5 = v29;
  }

  [v12 addTarget:v2 action:sel_handleTap_ forControlEvents:64];
  v27 = *MEMORY[0x277D85DE8];

  return v12;
}

- (id)createReverseButton
{
  v32[2] = *MEMORY[0x277D85DE8];
  useJindoPath = self->_useJindoPath;
  v3 = [MEMORY[0x277D75230] tintedButtonConfiguration];
  if (useJindoPath)
  {
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:20.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.backward"];
    v6 = [v5 imageWithRenderingMode:2];

    [v3 setImage:v6];
    v29 = v4;
    [v3 setPreferredSymbolConfigurationForImage:v4];
    v7 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v8 = [v7 colorWithAlphaComponent:0.3];
    v9 = [v3 background];
    [v9 setBackgroundColor:v8];

    v10 = [v3 background];
    [v10 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v3 primaryAction:0];
    [v11 setUserInteractionEnabled:1];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277CCAAD0];
    v13 = [v11 widthAnchor];
    v14 = [v11 heightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v32[0] = v15;
    v16 = 30.0;
    v17 = v32;
  }

  else
  {
    v18 = [MEMORY[0x277D755D0] configurationWithPointSize:7 weight:14.0];
    v19 = [MEMORY[0x277D755B8] systemImageNamed:@"arrow.uturn.backward.circle.fill"];
    v6 = [v19 imageWithRenderingMode:2];

    [v3 setImage:v6];
    v29 = v18;
    [v3 setPreferredSymbolConfigurationForImage:v18];
    v20 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v21 = [v20 colorWithAlphaComponent:0.0];
    v22 = [v3 background];
    [v22 setBackgroundColor:v21];

    v23 = [v3 background];
    [v23 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v3 primaryAction:0];
    [v11 setUserInteractionEnabled:1];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277CCAAD0];
    v13 = [v11 widthAnchor];
    v14 = [v11 heightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v31 = v15;
    v17 = &v31;
    v16 = 34.0;
  }

  v24 = [v11 widthAnchor];
  v25 = [v24 constraintEqualToConstant:v16];
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
  v4 = [MEMORY[0x277D75230] tintedButtonConfiguration];
  if (useJindoPath)
  {
    v35 = [MEMORY[0x277D755D0] configurationWithPointSize:6 weight:20.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark"];
    v6 = [v5 imageWithRenderingMode:2];

    v36 = v6;
    [v4 setImage:v6];
    [v4 setPreferredSymbolConfigurationForImage:v35];
    v7 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v8 = [v7 colorWithAlphaComponent:0.2];
    v9 = [v4 background];
    [v9 setBackgroundColor:v8];

    v10 = [v4 background];
    [v10 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v4 primaryAction:0];
    [v11 setUserInteractionEnabled:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v12 = MEMORY[0x277CCAAD0];
    v13 = [v11 widthAnchor];
    v14 = [v11 heightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v38[0] = v15;
    v16 = [v11 widthAnchor];
    v17 = [v16 constraintEqualToConstant:30.0];
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
    [v4 setImage:v21];
    [v4 setPreferredSymbolConfigurationForImage:v19];
    v22 = [MEMORY[0x277D75348] colorWithRed:0.505882382 green:0.815686285 blue:0.980392158 alpha:1.0];
    v23 = [v22 colorWithAlphaComponent:0.0];
    v24 = [v4 background];
    [v24 setBackgroundColor:v23];

    v25 = [v4 background];
    [v25 setCornerRadius:28.0];

    v11 = [MEMORY[0x277D75220] buttonWithConfiguration:v4 primaryAction:0];
    [v11 setTranslatesAutoresizingMaskIntoConstraints:0];
    v26 = MEMORY[0x277CCAAD0];
    v27 = [v11 widthAnchor];
    v28 = [v11 heightAnchor];
    v29 = [v27 constraintEqualToAnchor:v28];
    v37[0] = v29;
    v30 = [v11 widthAnchor];
    v31 = [v30 constraintEqualToConstant:34.0];
    v37[1] = v31;
    v32 = [MEMORY[0x277CBEA60] arrayWithObjects:v37 count:2];
    [v26 activateConstraints:v32];
  }

  v33 = *MEMORY[0x277D85DE8];

  return v11;
}

- (id)removedAccessoryColorCode:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 componentsSeparatedByString:@"-"];
  v5 = [MEMORY[0x277CBEB18] arrayWithArray:v4];
  v6 = [v4 lastObject];
  if ([v6 length] <= 3)
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

  v7 = [v4 lastObject];
  v8 = [v7 containsString:@"default"];

  if (v8)
  {
    goto LABEL_8;
  }

  v9 = [v4 lastObject];
  if ([v9 containsString:@"Case"])
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

  v12 = v3;
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
  v4 = [(MXUIServiceBanner *)self view];
  v5 = v4;
  if (!self->_useJindoPath)
  {
    [v4 addSubview:self->_pillView];
    v6 = [(PLPillView *)self->_pillView leadingAnchor];
    v7 = [v5 leadingAnchor];
    v8 = [v6 constraintEqualToAnchor:v7];
    [v8 setActive:1];

    v9 = [(PLPillView *)self->_pillView trailingAnchor];
    v10 = [v5 trailingAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    [v11 setActive:1];

    v12 = [(PLPillView *)self->_pillView topAnchor];
    v13 = [v5 topAnchor];
    v14 = [v12 constraintEqualToAnchor:v13];
    [v14 setActive:1];

    v15 = [(PLPillView *)self->_pillView bottomAnchor];
    v16 = [v5 bottomAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    [v17 setActive:1];
  }

  v18 = [objc_alloc(MEMORY[0x277D75B80]) initWithTarget:self action:sel_handleTap_];
  [v18 setNumberOfTapsRequired:1];
  [v18 setNumberOfTouchesRequired:1];
  if (self->_useJindoPath)
  {
    v19 = [(MXUIServiceBanner *)self ccTopViewLabel];
    [v19 setMarqueeRunning:1];

    v20 = [(MXUIServiceBanner *)self ccBottomViewLabel];
    [v20 setMarqueeRunning:1];

    v21 = [(MXUIServiceBanner *)self view];
    [v21 setTranslatesAutoresizingMaskIntoConstraints:0];

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

- (void)handleTap:(id)a3
{
  v14 = *MEMORY[0x277D85DE8];
  v5 = a3;
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

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  [(PLPillView *)self->_pillView intrinsicContentSize:a3.width];
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
  block[4] = a1;
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
      v6 = [requestIdentifier UUIDString];
      v7 = self->_requestIdentifier;
      self->_requestIdentifier = v6;
    }
  }

  v8 = self->_requestIdentifier;

  return v8;
}

@end