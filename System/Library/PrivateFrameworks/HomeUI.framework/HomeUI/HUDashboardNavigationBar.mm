@interface HUDashboardNavigationBar
- (HUDashboardNavigationBar)initWithFrame:(CGRect)a3;
- (void)largeTitleHeightDidChange:(double)a3;
- (void)setOverrideTintColor:(id)a3;
@end

@implementation HUDashboardNavigationBar

- (HUDashboardNavigationBar)initWithFrame:(CGRect)a3
{
  v8.receiver = self;
  v8.super_class = HUDashboardNavigationBar;
  v3 = [(HUDashboardNavigationBar *)&v8 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUDashboardNavigationBar *)v3 setPrefersLargeTitles:1];
    v5 = [MEMORY[0x277D75788] hu_dashboardAppearance];
    [(HUDashboardNavigationBar *)v4 setStandardAppearance:v5];

    v6 = [objc_opt_class() defaultTintColor];
    [(HUDashboardNavigationBar *)v4 setTintColor:v6];
  }

  return v4;
}

- (void)setOverrideTintColor:(id)a3
{
  v5 = a3;
  v6 = self->_overrideTintColor;
  v7 = v5;
  v10 = v7;
  if (v6 == v7)
  {

    goto LABEL_10;
  }

  if (v6)
  {
    v8 = [(UIColor *)v6 isEqual:v7];

    if (v8)
    {
      goto LABEL_10;
    }
  }

  else
  {
  }

  objc_storeStrong(&self->_overrideTintColor, a3);
  if (v10)
  {
    [(HUDashboardNavigationBar *)self setTintColor:v10];
  }

  else
  {
    v9 = [objc_opt_class() defaultTintColor];
    [(HUDashboardNavigationBar *)self setTintColor:v9];
  }

LABEL_10:
}

- (void)largeTitleHeightDidChange:(double)a3
{
  v5 = [(HUDashboardNavigationBar *)self titleView];
  [v5 largeTitleHeightRange];
  v7 = v6;
  v8 = v6 >= a3;

  if (v8 != [(HUDashboardNavigationBar *)self isBackgroundVisible])
  {
    [(HUDashboardNavigationBar *)self setIsBackgroundVisible:v7 >= a3];
    v9 = [(HUDashboardNavigationBar *)self delegate];
    if ([v9 conformsToProtocol:&unk_282556EF8])
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10;

    if (v11 && (objc_opt_respondsToSelector() & 1) != 0)
    {
      [v11 navigationBar:self didChangeBackgroundVisibility:{-[HUDashboardNavigationBar isBackgroundVisible](self, "isBackgroundVisible")}];
    }
  }
}

@end