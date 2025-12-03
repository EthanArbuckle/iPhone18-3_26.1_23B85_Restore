@interface HUDashboardNavigationBar
- (HUDashboardNavigationBar)initWithFrame:(CGRect)frame;
- (void)largeTitleHeightDidChange:(double)change;
- (void)setOverrideTintColor:(id)color;
@end

@implementation HUDashboardNavigationBar

- (HUDashboardNavigationBar)initWithFrame:(CGRect)frame
{
  v8.receiver = self;
  v8.super_class = HUDashboardNavigationBar;
  v3 = [(HUDashboardNavigationBar *)&v8 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  v4 = v3;
  if (v3)
  {
    [(HUDashboardNavigationBar *)v3 setPrefersLargeTitles:1];
    hu_dashboardAppearance = [MEMORY[0x277D75788] hu_dashboardAppearance];
    [(HUDashboardNavigationBar *)v4 setStandardAppearance:hu_dashboardAppearance];

    defaultTintColor = [objc_opt_class() defaultTintColor];
    [(HUDashboardNavigationBar *)v4 setTintColor:defaultTintColor];
  }

  return v4;
}

- (void)setOverrideTintColor:(id)color
{
  colorCopy = color;
  v6 = self->_overrideTintColor;
  v7 = colorCopy;
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

  objc_storeStrong(&self->_overrideTintColor, color);
  if (v10)
  {
    [(HUDashboardNavigationBar *)self setTintColor:v10];
  }

  else
  {
    defaultTintColor = [objc_opt_class() defaultTintColor];
    [(HUDashboardNavigationBar *)self setTintColor:defaultTintColor];
  }

LABEL_10:
}

- (void)largeTitleHeightDidChange:(double)change
{
  titleView = [(HUDashboardNavigationBar *)self titleView];
  [titleView largeTitleHeightRange];
  v7 = v6;
  v8 = v6 >= change;

  if (v8 != [(HUDashboardNavigationBar *)self isBackgroundVisible])
  {
    [(HUDashboardNavigationBar *)self setIsBackgroundVisible:v7 >= change];
    delegate = [(HUDashboardNavigationBar *)self delegate];
    if ([delegate conformsToProtocol:&unk_282556EF8])
    {
      v10 = delegate;
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