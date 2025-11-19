@interface NUArticleViewStyler
- (NUArticleViewStyler)initWithBackgroundColor:(id)a3 topBackgroundColor:(id)a4;
- (int64_t)statusBarStyleForBackgroundColor:(id)a3;
- (int64_t)topBackgroundStatusBarStyle;
- (void)styleTabBar:(id)a3;
- (void)styleToolbar:(id)a3;
- (void)unstyleTabBar:(id)a3 overrideRestoreColor:(id)a4;
- (void)unstyleToolbar:(id)a3 overrideRestoreColor:(id)a4;
@end

@implementation NUArticleViewStyler

- (NUArticleViewStyler)initWithBackgroundColor:(id)a3 topBackgroundColor:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = NUArticleViewStyler;
  v9 = [(NUArticleViewStyler *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_mainBackgroundColor, a3);
    objc_storeStrong(&v10->_topContentColor, a4);
    v10->_statusBarStyle = [(NUArticleViewStyler *)v10 statusBarStyleForBackgroundColor:v7];
  }

  return v10;
}

- (void)styleTabBar:(id)a3
{
  v6 = a3;
  v4 = [(NUArticleViewStyler *)self tabBarTintColor];
  if (!v4)
  {
    if ([(NUArticleViewStyler *)self statusBarStyle]!= 1)
    {
      goto LABEL_5;
    }

    v5 = [v6 barTintColor];
    [(NUArticleViewStyler *)self setTabBarTintColor:v5];

    v4 = [(NUArticleViewStyler *)self mainBackgroundColor];
    [v6 setBarTintColor:v4];
  }

LABEL_5:
}

- (void)unstyleTabBar:(id)a3 overrideRestoreColor:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NUArticleViewStyler *)self tabBarTintColor];
  v8 = v6 | v7;

  if (v8)
  {
    if (v6)
    {
      [v10 setBarTintColor:v6];
    }

    else
    {
      v9 = [(NUArticleViewStyler *)self tabBarTintColor];
      [v10 setBarTintColor:v9];
    }

    [(NUArticleViewStyler *)self setTabBarTintColor:0];
  }
}

- (void)styleToolbar:(id)a3
{
  v6 = a3;
  v4 = [(NUArticleViewStyler *)self toolbarTintColor];
  if (!v4)
  {
    if ([(NUArticleViewStyler *)self statusBarStyle]!= 1)
    {
      goto LABEL_5;
    }

    v5 = [v6 barTintColor];
    [(NUArticleViewStyler *)self setToolbarTintColor:v5];

    v4 = [(NUArticleViewStyler *)self mainBackgroundColor];
    [v6 setBarTintColor:v4];
  }

LABEL_5:
}

- (void)unstyleToolbar:(id)a3 overrideRestoreColor:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(NUArticleViewStyler *)self toolbarTintColor];
  v8 = v6 | v7;

  if (v8)
  {
    if (v6)
    {
      [v10 setBarTintColor:v6];
    }

    else
    {
      v9 = [(NUArticleViewStyler *)self toolbarTintColor];
      [v10 setBarTintColor:v9];
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

- (int64_t)statusBarStyleForBackgroundColor:(id)a3
{
  v7 = 0;
  v5 = 0.0;
  v6 = 0;
  v4 = 0;
  [a3 getHue:&v7 saturation:&v6 brightness:&v5 alpha:&v4];
  return v5 < 0.7;
}

@end