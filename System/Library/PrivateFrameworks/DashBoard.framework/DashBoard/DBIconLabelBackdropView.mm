@interface DBIconLabelBackdropView
- (DBIconLabelBackdropView)initWithWallpaper:(id)wallpaper;
- (void)_updateHighlight;
- (void)setWallpaper:(id)wallpaper;
@end

@implementation DBIconLabelBackdropView

- (void)_updateHighlight
{
  isHighlighted = [(DBIconLabelBackdropView *)self isHighlighted];
  highlightView = [(DBIconLabelBackdropView *)self highlightView];
  [highlightView setHidden:!isHighlighted];

  isHighlighted2 = [(DBIconLabelBackdropView *)self isHighlighted];
  if (isHighlighted2)
  {
    v6 = 1;
  }

  else
  {
    wallpaper = [(DBIconLabelBackdropView *)self wallpaper];
    highlightView = [wallpaper traits];
    v6 = [highlightView iconLabelsRequireBackground] ^ 1;
  }

  platterView = [(DBIconLabelBackdropView *)self platterView];
  [platterView setHidden:v6];

  if (!isHighlighted2)
  {
  }
}

- (DBIconLabelBackdropView)initWithWallpaper:(id)wallpaper
{
  v43[4] = *MEMORY[0x277D85DE8];
  wallpaperCopy = wallpaper;
  v41.receiver = self;
  v41.super_class = DBIconLabelBackdropView;
  v5 = [(DBIconLabelBackdropView *)&v41 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    layer = [(DBIconLabelBackdropView *)v5 layer];
    [layer setAllowsGroupBlending:0];

    v8 = objc_alloc_init(_TtC9DashBoard22DBDashboardPlatterView);
    [(DBDashboardPlatterView *)v8 setPlatterCornerRadius:6.0];
    [(DBDashboardPlatterView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBIconLabelBackdropView *)v6 addSubview:v8];
    v27 = MEMORY[0x277CCAAD0];
    topAnchor = [(DBIconLabelBackdropView *)v6 topAnchor];
    topAnchor2 = [(DBDashboardPlatterView *)v8 topAnchor];
    v33 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v43[0] = v33;
    bottomAnchor = [(DBIconLabelBackdropView *)v6 bottomAnchor];
    bottomAnchor2 = [(DBDashboardPlatterView *)v8 bottomAnchor];
    v9 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
    v43[1] = v9;
    leftAnchor = [(DBIconLabelBackdropView *)v6 leftAnchor];
    v40 = v8;
    leftAnchor2 = [(DBDashboardPlatterView *)v8 leftAnchor];
    v12 = [leftAnchor constraintEqualToAnchor:leftAnchor2];
    v43[2] = v12;
    rightAnchor = [(DBIconLabelBackdropView *)v6 rightAnchor];
    rightAnchor2 = [(DBDashboardPlatterView *)v8 rightAnchor];
    v15 = [rightAnchor constraintEqualToAnchor:rightAnchor2];
    v43[3] = v15;
    v39 = wallpaperCopy;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v27 activateConstraints:v16];

    [(DBIconLabelBackdropView *)v6 setPlatterView:v40];
    v17 = [objc_alloc(MEMORY[0x277CF90E8]) initWithCornerRadius:6.0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBIconLabelBackdropView *)v6 setHighlightView:v17];
    [(DBIconLabelBackdropView *)v6 addSubview:v17];
    v28 = MEMORY[0x277CCAAD0];
    topAnchor3 = [(DBIconLabelBackdropView *)v6 topAnchor];
    topAnchor4 = [v17 topAnchor];
    v34 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v42[0] = v34;
    bottomAnchor3 = [(DBIconLabelBackdropView *)v6 bottomAnchor];
    bottomAnchor4 = [v17 bottomAnchor];
    v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v42[1] = v18;
    leftAnchor3 = [(DBIconLabelBackdropView *)v6 leftAnchor];
    leftAnchor4 = [v17 leftAnchor];
    v21 = [leftAnchor3 constraintEqualToAnchor:leftAnchor4];
    v42[2] = v21;
    rightAnchor3 = [(DBIconLabelBackdropView *)v6 rightAnchor];
    rightAnchor4 = [v17 rightAnchor];
    v24 = [rightAnchor3 constraintEqualToAnchor:rightAnchor4];
    v42[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v28 activateConstraints:v25];

    wallpaperCopy = v39;
    [(DBIconLabelBackdropView *)v6 setWallpaper:v39];
  }

  return v6;
}

- (void)setWallpaper:(id)wallpaper
{
  objc_storeStrong(&self->_wallpaper, wallpaper);

  [(DBIconLabelBackdropView *)self _updateHighlight];
}

@end