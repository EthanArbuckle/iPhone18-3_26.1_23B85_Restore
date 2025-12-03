@interface HUDashboardViewController(FilterBarPaletteHack)
- (_UINavigationBarPalette)palettePlaceholderView;
@end

@implementation HUDashboardViewController(FilterBarPaletteHack)

- (_UINavigationBarPalette)palettePlaceholderView
{
  palettePlaceholderView = self->_palettePlaceholderView;
  if (!palettePlaceholderView)
  {
    v4 = objc_alloc(MEMORY[0x277D75D18]);
    view = [(HUDashboardViewController *)self view];
    [view frame];
    v7 = v6;
    _filterBarController = [(HUDashboardViewController *)self _filterBarController];
    [_filterBarController intrinsicHeight];
    v10 = [v4 initWithFrame:{0.0, 0.0, v7, v9}];

    if ([MEMORY[0x277D14CE8] isInternalInstall] && HFPreferencesBoolForKey())
    {
      redColor = [MEMORY[0x277D75348] redColor];
      v12 = [redColor colorWithAlphaComponent:0.25];
      [v10 setBackgroundColor:v12];
    }

    v13 = [objc_alloc(MEMORY[0x277D76118]) initWithContentView:v10];
    [v13 setUserInteractionEnabled:0];
    v14 = self->_palettePlaceholderView;
    self->_palettePlaceholderView = v13;

    palettePlaceholderView = self->_palettePlaceholderView;
  }

  return palettePlaceholderView;
}

@end