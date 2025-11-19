@interface FCUIOnboardingPlatterDiscoveryView
+ (id)_bodyStringForDNDModeSemanticType:(int64_t)a3;
+ (id)onboardingPlatterDiscoveryViewForMode:(id)a3;
- (FCUIOnboardingPlatterDiscoveryView)initWithMode:(id)a3;
- (FCUIOnboardingPlatterDiscoveryViewDelegate)delegate;
- (id)presentQuickStartForModeIdentifier:(id)a3;
- (void)_configureGraphicViewIfNecessary;
- (void)_layoutGraphicView;
- (void)layoutSubviews;
- (void)requestDismissal:(id)a3;
@end

@implementation FCUIOnboardingPlatterDiscoveryView

+ (id)onboardingPlatterDiscoveryViewForMode:(id)a3
{
  v3 = a3;
  v4 = [[FCUIOnboardingPlatterDiscoveryView alloc] initWithMode:v3];

  return v4;
}

- (FCUIOnboardingPlatterDiscoveryView)initWithMode:(id)a3
{
  v4 = a3;
  v15.receiver = self;
  v15.super_class = FCUIOnboardingPlatterDiscoveryView;
  v5 = [(PLPlatterDiscoveryView *)&v15 init];
  if (v5)
  {
    v6 = [v4 semanticType];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:@"DISCOVERY_ONBOARDING_PLATTER_TITLE" value:&stru_285ECE868 table:0];
    [(PLPlatterDiscoveryView *)v5 setTitleText:v8];

    v9 = [FCUIOnboardingPlatterDiscoveryView _bodyStringForDNDModeSemanticType:v6];
    [(PLPlatterDiscoveryView *)v5 setBodyText:v9];

    v10 = MEMORY[0x277D750C8];
    v11 = [v4 modeIdentifier];
    v12 = [(FCUIOnboardingPlatterDiscoveryView *)v5 presentQuickStartForModeIdentifier:v11];
    v13 = [v10 actionWithTitle:@"Customize" image:0 identifier:@"present-quickstart-sheet" handler:v12];
    [(PLPlatterDiscoveryView *)v5 setDefaultAction:v13];
  }

  return v5;
}

+ (id)_bodyStringForDNDModeSemanticType:(int64_t)a3
{
  v4 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v5 = [v4 localizedStringForKey:@"NOTIFICATION_LIST_MISSED_SECTION_HEADER_DO_NOT_DISTURB" value:&stru_285ECE868 table:0];

  if (a3 <= 9)
  {
    v6 = off_27901A668[a3];
    v7 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v8 = [v7 localizedStringForKey:v6 value:&stru_285ECE868 table:0];

    v5 = v8;
  }

  return v5;
}

- (id)presentQuickStartForModeIdentifier:(id)a3
{
  v4 = a3;
  objc_initWeak(&location, self);
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __73__FCUIOnboardingPlatterDiscoveryView_presentQuickStartForModeIdentifier___block_invoke;
  v8[3] = &unk_27901A648;
  objc_copyWeak(&v11, &location);
  v9 = v4;
  v10 = self;
  v5 = v4;
  v6 = _Block_copy(v8);

  objc_destroyWeak(&v11);
  objc_destroyWeak(&location);

  return v6;
}

void __73__FCUIOnboardingPlatterDiscoveryView_presentQuickStartForModeIdentifier___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = [[_TtC7FocusUI24QuickStartViewController alloc] initWithModeIdentifier:*(a1 + 32)];
  [(QuickStartViewController *)v2 setDelegate:WeakRetained];
  v3 = [*(a1 + 40) delegate];
  [v3 onboardingPlatter:*(a1 + 40) requestsModalPresentationOfViewController:v2 animated:1 completion:0];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = FCUIOnboardingPlatterDiscoveryView;
  [(PLPlatterDiscoveryView *)&v3 layoutSubviews];
  [(FCUIOnboardingPlatterDiscoveryView *)self _configureGraphicViewIfNecessary];
  [(FCUIOnboardingPlatterDiscoveryView *)self bounds];
  if (CGRectGetWidth(v4) > 0.0)
  {
    [(FCUIOnboardingPlatterDiscoveryView *)self _layoutGraphicView];
  }
}

- (void)_configureGraphicViewIfNecessary
{
  v3 = [(PLPlatterDiscoveryView *)self graphicView];

  if (!v3)
  {
    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    v4 = [FCUIOnboardingStackedNotificationView alloc];
    v5 = [MEMORY[0x277D75348] systemGray3Color];
    v6 = [(FCUIOnboardingStackedNotificationView *)v4 initWithBackgroundColor:v5 assetImageName:0];
    notificationPlatterView2 = self->_notificationPlatterView2;
    self->_notificationPlatterView2 = v6;

    [v12 addSubview:self->_notificationPlatterView2];
    v8 = [FCUIOnboardingStackedNotificationView alloc];
    v9 = [MEMORY[0x277D75348] systemGray2Color];
    v10 = [(FCUIOnboardingStackedNotificationView *)v8 initWithBackgroundColor:v9 assetImageName:@"person.circle.fill"];
    notificationPlatterView1 = self->_notificationPlatterView1;
    self->_notificationPlatterView1 = v10;

    [v12 addSubview:self->_notificationPlatterView1];
    [(PLPlatterDiscoveryView *)self setGraphicView:v12];
  }
}

- (void)_layoutGraphicView
{
  v3 = [(FCUIOnboardingPlatterDiscoveryView *)self traitCollection];
  [v3 displayScale];
  v5 = v4;
  v30 = v4;

  v6 = [(PLPlatterDiscoveryView *)self graphicView];
  [v6 bounds];
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v14 = v13;

  v36.origin.x = v8;
  v36.origin.y = v10;
  v36.size.width = v12;
  v36.size.height = v14;
  Width = CGRectGetWidth(v36);
  v37.origin.x = v8;
  v37.origin.y = v10;
  v37.size.width = v12;
  v37.size.height = v14;
  v16 = (CGRectGetHeight(v37) + -44.0 + 4.0) / 1.5;
  if ((Width + -20.0) * 0.3 >= v16)
  {
    v17 = v16;
  }

  else
  {
    v17 = (Width + -20.0) * 0.3;
  }

  v29 = v5;
  UIRectCenteredIntegralRectScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  notificationPlatterView2 = self->_notificationPlatterView2;
  v27 = *(MEMORY[0x277CBF2C0] + 16);
  *&v35.a = *MEMORY[0x277CBF2C0];
  *&v35.c = v27;
  *&v35.tx = *(MEMORY[0x277CBF2C0] + 32);
  [(FCUIOnboardingStackedNotificationView *)notificationPlatterView2 setTransform:&v35, v29];
  [(FCUIOnboardingStackedNotificationView *)self->_notificationPlatterView2 setFrame:v19, v21, v23, v25];
  memset(&v35, 0, sizeof(v35));
  CGAffineTransformMakeScale(&v35, 0.85, 0.85);
  memset(&v34, 0, sizeof(v34));
  CGAffineTransformMakeTranslation(&v34, 0.0, v17 * 0.5);
  v28 = self->_notificationPlatterView2;
  t1 = v35;
  t2 = v34;
  CGAffineTransformConcat(&v33, &t1, &t2);
  [(FCUIOnboardingStackedNotificationView *)v28 setTransform:&v33];
  UIRectCenteredIntegralRectScale();
  [(FCUIOnboardingStackedNotificationView *)self->_notificationPlatterView1 setFrame:v30];
}

- (void)requestDismissal:(id)a3
{
  v4 = [(FCUIOnboardingPlatterDiscoveryView *)self delegate];
  [v4 onboardingPlatterRequestsDismissal:self];
}

- (FCUIOnboardingPlatterDiscoveryViewDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end