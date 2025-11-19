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
    v5 = [(HUDashboardViewController *)self view];
    [v5 frame];
    v7 = v6;
    v8 = [(HUDashboardViewController *)self _filterBarController];
    [v8 intrinsicHeight];
    v10 = [v4 initWithFrame:{0.0, 0.0, v7, v9}];

    if ([MEMORY[0x277D14CE8] isInternalInstall] && HFPreferencesBoolForKey())
    {
      v11 = [MEMORY[0x277D75348] redColor];
      v12 = [v11 colorWithAlphaComponent:0.25];
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