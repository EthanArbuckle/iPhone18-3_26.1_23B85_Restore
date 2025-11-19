@interface CSDiscoveryItemPlatterSleepMigration
- (CSDiscoveryItemPlatterSleepMigration)init;
- (void)_configureGraphicViewIfNecessary;
- (void)_layoutGraphicView;
- (void)layoutSubviews;
- (void)visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5;
@end

@implementation CSDiscoveryItemPlatterSleepMigration

- (CSDiscoveryItemPlatterSleepMigration)init
{
  v8.receiver = self;
  v8.super_class = CSDiscoveryItemPlatterSleepMigration;
  v2 = [(PLPlatterDiscoveryView *)&v8 init];
  if (v2)
  {
    v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v4 = [v3 localizedStringForKey:@"DISCOVERY_LIST_ITEM_PLATTER_SLEEP_MIGRATION_TITLE" value:&stru_28302FDA0 table:@"CoverSheet"];
    [(PLPlatterDiscoveryView *)v2 setTitleText:v4];

    v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v6 = [v5 localizedStringForKey:@"DISCOVERY_LIST_ITEM_PLATTER_SLEEP_MIGRATION_BODY" value:&stru_28302FDA0 table:@"CoverSheet"];
    [(PLPlatterDiscoveryView *)v2 setBodyText:v6];
  }

  return v2;
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = CSDiscoveryItemPlatterSleepMigration;
  [(PLPlatterDiscoveryView *)&v3 layoutSubviews];
  [(CSDiscoveryItemPlatterSleepMigration *)self _configureGraphicViewIfNecessary];
  [(CSDiscoveryItemPlatterSleepMigration *)self bounds];
  if (CGRectGetWidth(v4) > 0.0)
  {
    [(CSDiscoveryItemPlatterSleepMigration *)self _layoutGraphicView];
  }
}

- (void)_configureGraphicViewIfNecessary
{
  v3 = [(PLPlatterDiscoveryView *)self graphicView];

  if (!v3)
  {
    v22 = objc_alloc_init(MEMORY[0x277D75D18]);
    v4 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:70.0];
    v5 = [MEMORY[0x277D755B8] systemImageNamed:@"apps.iphone" withConfiguration:v4];
    v6 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v5];
    deviceImageView = self->_deviceImageView;
    self->_deviceImageView = v6;

    [(UIImageView *)self->_deviceImageView setContentMode:11];
    [v22 addSubview:self->_deviceImageView];
    v8 = self->_deviceImageView;
    v9 = [(PLPlatterDiscoveryView *)self strokeVisualStylingProvider];
    [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:v8 style:1 visualStylingProvider:v9 outgoingProvider:0];

    v10 = objc_alloc_init(MEMORY[0x277D75D18]);
    sleepSymbolBackgroundView = self->_sleepSymbolBackgroundView;
    self->_sleepSymbolBackgroundView = v10;

    v12 = self->_sleepSymbolBackgroundView;
    v13 = [MEMORY[0x277D75348] systemWhiteColor];
    [(UIView *)v12 setBackgroundColor:v13];

    [v22 addSubview:self->_sleepSymbolBackgroundView];
    v14 = [MEMORY[0x277CF0D60] defaultFontProvider];
    v15 = [v14 preferredFontForTextStyle:*MEMORY[0x277D76940] hiFontStyle:4];

    v16 = [MEMORY[0x277D755D0] configurationWithFont:v15];
    v17 = [MEMORY[0x277D755B8] systemImageNamed:@"bed.double.fill" withConfiguration:v16];
    v18 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v17];
    sleepSymbolImageView = self->_sleepSymbolImageView;
    self->_sleepSymbolImageView = v18;

    v20 = self->_sleepSymbolImageView;
    v21 = [MEMORY[0x277D75348] systemMintColor];
    [(UIView *)v20 setTintColor:v21];

    [v22 addSubview:self->_sleepSymbolImageView];
    [(PLPlatterDiscoveryView *)self setGraphicView:v22];
  }
}

- (void)_layoutGraphicView
{
  v3 = [(CSDiscoveryItemPlatterSleepMigration *)self _shouldReverseLayoutDirection];
  v4 = [(CSDiscoveryItemPlatterSleepMigration *)self traitCollection];
  [v4 displayScale];
  v6 = v5;

  v7 = [(PLPlatterDiscoveryView *)self graphicView];
  [v7 bounds];

  UIRectCenteredIntegralRectScale();
  v9 = v8;
  v11 = v10;
  v13 = v12;
  v15 = v14;
  [(UIImageView *)self->_deviceImageView setFrame:v6];
  v30.origin.x = v9;
  v30.origin.y = v11;
  v30.size.width = v13;
  v30.size.height = v15;
  MinX = CGRectGetMinX(v30);
  if (v3)
  {
    MinX = v13 + MinX;
  }

  v17 = MinX + 15.0;
  v31.origin.x = v9;
  v31.origin.y = v11;
  v31.size.width = v13;
  v31.size.height = v15;
  [(UIView *)self->_sleepSymbolImageView setCenter:v17, CGRectGetMaxY(v31) + -15.0];
  [(UIView *)self->_sleepSymbolImageView frame];
  v28 = v6;
  UIRectCenteredIntegralRectScale();
  v19 = v18;
  v21 = v20;
  v23 = v22;
  v25 = v24;
  [(UIView *)self->_sleepSymbolBackgroundView setFrame:v28];
  sleepSymbolBackgroundView = self->_sleepSymbolBackgroundView;
  v32.origin.x = v19;
  v32.origin.y = v21;
  v32.size.width = v23;
  v32.size.height = v25;
  v27 = CGRectGetWidth(v32) * 0.5;

  [(UIView *)sleepSymbolBackgroundView _setCornerRadius:v27];
}

- (void)visualStylingProviderDidChange:(id)a3 forCategory:(int64_t)a4 outgoingProvider:(id)a5
{
  v8.receiver = self;
  v8.super_class = CSDiscoveryItemPlatterSleepMigration;
  [(PLPlatterDiscoveryView *)&v8 visualStylingProviderDidChange:a3 forCategory:a4 outgoingProvider:a5];
  deviceImageView = self->_deviceImageView;
  v7 = [(PLPlatterDiscoveryView *)self strokeVisualStylingProvider];
  [(PLPlatterDiscoveryView *)self updateVisualStylingOfView:deviceImageView style:1 visualStylingProvider:v7 outgoingProvider:0];
}

@end