@interface FCUIOnboardingStackedNotificationView
- (FCUIOnboardingStackedNotificationView)initWithBackgroundColor:(id)color assetImageName:(id)name;
- (void)_configureViewIfNecessary;
- (void)layoutSubviews;
@end

@implementation FCUIOnboardingStackedNotificationView

- (FCUIOnboardingStackedNotificationView)initWithBackgroundColor:(id)color assetImageName:(id)name
{
  nameCopy = name;
  v10.receiver = self;
  v10.super_class = FCUIOnboardingStackedNotificationView;
  v7 = [(FCUIOnboardingStackedNotificationView *)&v10 init];
  v8 = v7;
  if (v7)
  {
    objc_storeStrong(&v7->_assetImageName, name);
  }

  return v8;
}

- (void)layoutSubviews
{
  v20.receiver = self;
  v20.super_class = FCUIOnboardingStackedNotificationView;
  [(FCUIOnboardingStackedNotificationView *)&v20 layoutSubviews];
  [(FCUIOnboardingStackedNotificationView *)self _configureViewIfNecessary];
  traitCollection = [(FCUIOnboardingStackedNotificationView *)self traitCollection];
  [traitCollection displayScale];
  v5 = v4;

  [(FCUIOnboardingStackedNotificationView *)self bounds];
  x = v21.origin.x;
  y = v21.origin.y;
  width = v21.size.width;
  height = v21.size.height;
  v19 = CGRectGetWidth(v21);
  v22.origin.x = x;
  v22.origin.y = y;
  v22.size.width = width;
  v22.size.height = height;
  v10 = CGRectGetHeight(v22) + -12.0;
  if (v10 <= 30.0)
  {
    v11 = v10;
  }

  else
  {
    v11 = 30.0;
  }

  UIRectCenteredYInRectScale();
  v13 = v12;
  [(UIView *)self->_assetView setFrame:v14 + 10.0, v5, *&v19];
  UIRectIntegralWithScale();
  [(UIView *)self->_line1TextView setFrame:v13 + v15 + 20.0, v16 + 6.0];
  UIRectIntegralWithScale();
  [(UIView *)self->_line2TextView setFrame:v13 + v17 + 20.0, v11 * 0.25 + v18 + 12.0];
}

- (void)_configureViewIfNecessary
{
  [(FCUIOnboardingStackedNotificationView *)self _setContinuousCornerRadius:10.0];
  backgroundMaterialView = self->_backgroundMaterialView;
  if (!backgroundMaterialView)
  {
    v4 = [MEMORY[0x277D26718] materialViewWithRecipe:1 options:0];
    v5 = self->_backgroundMaterialView;
    self->_backgroundMaterialView = v4;

    v6 = self->_backgroundMaterialView;
    v7 = MEMORY[0x277CCACA8];
    v8 = objc_opt_class();
    v9 = NSStringFromClass(v8);
    v10 = [v7 stringWithFormat:@"%@.%p", v9, self];
    [(MTMaterialView *)v6 setGroupNameBase:v10];

    [(FCUIOnboardingStackedNotificationView *)self insertSubview:self->_backgroundMaterialView atIndex:0];
    v11 = self->_backgroundMaterialView;
    [(FCUIOnboardingStackedNotificationView *)self bounds];
    [(MTMaterialView *)v11 setFrame:?];
    [(MTMaterialView *)self->_backgroundMaterialView setAutoresizingMask:18];
    [(MTMaterialView *)self->_backgroundMaterialView _setContinuousCornerRadius:10.0];
    backgroundMaterialView = self->_backgroundMaterialView;
  }

  v12 = [(MTMaterialView *)backgroundMaterialView visualStylingProviderForCategory:1];
  visualStylingProvider = self->_visualStylingProvider;
  self->_visualStylingProvider = v12;

  [(FCUIOnboardingStackedNotificationView *)self setOverrideUserInterfaceStyle:2];
  if (!self->_assetView)
  {
    if (self->_assetImageName)
    {
      v14 = [MEMORY[0x277D755D0] configurationWithPointSize:2 weight:60.0];
      v15 = [MEMORY[0x277D755B8] systemImageNamed:self->_assetImageName withConfiguration:v14];
      v16 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v15];
      assetView = self->_assetView;
      self->_assetView = v16;

      v18 = self->_assetView;
      systemLightGrayColor = [MEMORY[0x277D75348] systemLightGrayColor];
      [(UIView *)v18 setTintColor:systemLightGrayColor];
    }

    else
    {
      v20 = objc_alloc_init(MEMORY[0x277D75D18]);
      v21 = self->_assetView;
      self->_assetView = v20;

      v22 = self->_assetView;
      systemLightGrayColor2 = [MEMORY[0x277D75348] systemLightGrayColor];
      [(UIView *)v22 setBackgroundColor:systemLightGrayColor2];

      [(UIView *)self->_assetView _setContinuousCornerRadius:10.0];
    }

    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_assetView withStyle:1];
    [(FCUIOnboardingStackedNotificationView *)self addSubview:self->_assetView];
  }

  if (!self->_line1TextView)
  {
    v24 = objc_alloc_init(MEMORY[0x277D75D18]);
    line1TextView = self->_line1TextView;
    self->_line1TextView = v24;

    v26 = self->_line1TextView;
    systemLightGrayColor3 = [MEMORY[0x277D75348] systemLightGrayColor];
    [(UIView *)v26 setBackgroundColor:systemLightGrayColor3];

    [(UIView *)self->_line1TextView _setContinuousCornerRadius:3.0];
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_line1TextView withStyle:1];
    [(FCUIOnboardingStackedNotificationView *)self addSubview:self->_line1TextView];
  }

  if (!self->_line2TextView)
  {
    v28 = objc_alloc_init(MEMORY[0x277D75D18]);
    line2TextView = self->_line2TextView;
    self->_line2TextView = v28;

    v30 = self->_line2TextView;
    systemLightGrayColor4 = [MEMORY[0x277D75348] systemLightGrayColor];
    [(UIView *)v30 setBackgroundColor:systemLightGrayColor4];

    [(UIView *)self->_line2TextView _setContinuousCornerRadius:3.0];
    [(MTVisualStylingProvider *)self->_visualStylingProvider automaticallyUpdateView:self->_line2TextView withStyle:1];
    v32 = self->_line2TextView;

    [(FCUIOnboardingStackedNotificationView *)self addSubview:v32];
  }
}

@end