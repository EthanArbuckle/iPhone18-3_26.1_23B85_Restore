@interface NUArticleViewStyler
- (NUArticleViewStyler)initWithBackgroundColor:(id)color topBackgroundColor:(id)backgroundColor;
- (int64_t)statusBarStyleForBackgroundColor:(id)color;
- (int64_t)topBackgroundStatusBarStyle;
- (void)styleTabBar:(id)bar;
- (void)styleToolbar:(id)toolbar;
- (void)unstyleTabBar:(id)bar overrideRestoreColor:(id)color;
- (void)unstyleToolbar:(id)toolbar overrideRestoreColor:(id)color;
@end

@implementation NUArticleViewStyler

- (NUArticleViewStyler)initWithBackgroundColor:(id)color topBackgroundColor:(id)backgroundColor
{
  colorCopy = color;
  backgroundColorCopy = backgroundColor;
  v12.receiver = self;
  v12.super_class = NUArticleViewStyler;
  v9 = [(NUArticleViewStyler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainBackgroundColor, color);
    objc_storeStrong(&v10->_topContentColor, backgroundColor);
    v10->_statusBarStyle = [(NUArticleViewStyler *)v10 statusBarStyleForBackgroundColor:colorCopy];
  }

  return v10;
}

- (void)styleTabBar:(id)bar
{
  barCopy = bar;
  tabBarTintColor = [(NUArticleViewStyler *)self tabBarTintColor];
  if (!tabBarTintColor)
  {
    if ([(NUArticleViewStyler *)self statusBarStyle]!= 1)
    {
      goto LABEL_5;
    }

    barTintColor = [barCopy barTintColor];
    [(NUArticleViewStyler *)self setTabBarTintColor:barTintColor];

    tabBarTintColor = [(NUArticleViewStyler *)self mainBackgroundColor];
    [barCopy setBarTintColor:tabBarTintColor];
  }

LABEL_5:
}

- (void)unstyleTabBar:(id)bar overrideRestoreColor:(id)color
{
  barCopy = bar;
  colorCopy = color;
  tabBarTintColor = [(NUArticleViewStyler *)self tabBarTintColor];
  v8 = colorCopy | tabBarTintColor;

  if (v8)
  {
    if (colorCopy)
    {
      [barCopy setBarTintColor:colorCopy];
    }

    else
    {
      tabBarTintColor2 = [(NUArticleViewStyler *)self tabBarTintColor];
      [barCopy setBarTintColor:tabBarTintColor2];
    }

    [(NUArticleViewStyler *)self setTabBarTintColor:0];
  }
}

- (void)styleToolbar:(id)toolbar
{
  toolbarCopy = toolbar;
  toolbarTintColor = [(NUArticleViewStyler *)self toolbarTintColor];
  if (!toolbarTintColor)
  {
    if ([(NUArticleViewStyler *)self statusBarStyle]!= 1)
    {
      goto LABEL_5;
    }

    barTintColor = [toolbarCopy barTintColor];
    [(NUArticleViewStyler *)self setToolbarTintColor:barTintColor];

    toolbarTintColor = [(NUArticleViewStyler *)self mainBackgroundColor];
    [toolbarCopy setBarTintColor:toolbarTintColor];
  }

LABEL_5:
}

- (void)unstyleToolbar:(id)toolbar overrideRestoreColor:(id)color
{
  toolbarCopy = toolbar;
  colorCopy = color;
  toolbarTintColor = [(NUArticleViewStyler *)self toolbarTintColor];
  v8 = colorCopy | toolbarTintColor;

  if (v8)
  {
    if (colorCopy)
    {
      [toolbarCopy setBarTintColor:colorCopy];
    }

    else
    {
      toolbarTintColor2 = [(NUArticleViewStyler *)self toolbarTintColor];
      [toolbarCopy setBarTintColor:toolbarTintColor2];
    }

    [(NUArticleViewStyler *)self setToolbarTintColor:0];
  }
}

- (int64_t)topBackgroundStatusBarStyle
{
  v3 = self->_topContentColor;
  if (v3)
  {
    v4 = [(NUArticleViewStyler *)self statusBarStyleForBackgroundColor:v3];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (int64_t)statusBarStyleForBackgroundColor:(id)color
{
  v7 = 0;
  v5 = 0.0;
  v6 = 0;
  v4 = 0;
  [color getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4];
  return v5 < 0.7;
}

@end