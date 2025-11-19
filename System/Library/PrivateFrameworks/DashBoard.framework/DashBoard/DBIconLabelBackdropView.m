@interface DBIconLabelBackdropView
- (DBIconLabelBackdropView)initWithWallpaper:(id)a3;
- (void)_updateHighlight;
- (void)setWallpaper:(id)a3;
@end

@implementation DBIconLabelBackdropView

- (void)_updateHighlight
{
  v3 = [(DBIconLabelBackdropView *)self isHighlighted];
  v4 = [(DBIconLabelBackdropView *)self highlightView];
  [v4 setHidden:!v3];

  v5 = [(DBIconLabelBackdropView *)self isHighlighted];
  if (v5)
  {
    v6 = 1;
  }

  else
  {
    v8 = [(DBIconLabelBackdropView *)self wallpaper];
    v4 = [v8 traits];
    v6 = [v4 iconLabelsRequireBackground] ^ 1;
  }

  v7 = [(DBIconLabelBackdropView *)self platterView];
  [v7 setHidden:v6];

  if (!v5)
  {
  }
}

- (DBIconLabelBackdropView)initWithWallpaper:(id)a3
{
  v43[4] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v41.receiver = self;
  v41.super_class = DBIconLabelBackdropView;
  v5 = [(DBIconLabelBackdropView *)&v41 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v6 = v5;
  if (v5)
  {
    v7 = [(DBIconLabelBackdropView *)v5 layer];
    [v7 setAllowsGroupBlending:0];

    v8 = objc_alloc_init(_TtC9DashBoard22DBDashboardPlatterView);
    [(DBDashboardPlatterView *)v8 setPlatterCornerRadius:6.0];
    [(DBDashboardPlatterView *)v8 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBIconLabelBackdropView *)v6 addSubview:v8];
    v27 = MEMORY[0x277CCAAD0];
    v37 = [(DBIconLabelBackdropView *)v6 topAnchor];
    v35 = [(DBDashboardPlatterView *)v8 topAnchor];
    v33 = [v37 constraintEqualToAnchor:v35];
    v43[0] = v33;
    v31 = [(DBIconLabelBackdropView *)v6 bottomAnchor];
    v29 = [(DBDashboardPlatterView *)v8 bottomAnchor];
    v9 = [v31 constraintEqualToAnchor:v29];
    v43[1] = v9;
    v10 = [(DBIconLabelBackdropView *)v6 leftAnchor];
    v40 = v8;
    v11 = [(DBDashboardPlatterView *)v8 leftAnchor];
    v12 = [v10 constraintEqualToAnchor:v11];
    v43[2] = v12;
    v13 = [(DBIconLabelBackdropView *)v6 rightAnchor];
    v14 = [(DBDashboardPlatterView *)v8 rightAnchor];
    v15 = [v13 constraintEqualToAnchor:v14];
    v43[3] = v15;
    v39 = v4;
    v16 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:4];
    [v27 activateConstraints:v16];

    [(DBIconLabelBackdropView *)v6 setPlatterView:v40];
    v17 = [objc_alloc(MEMORY[0x277CF90E8]) initWithCornerRadius:6.0];
    [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(DBIconLabelBackdropView *)v6 setHighlightView:v17];
    [(DBIconLabelBackdropView *)v6 addSubview:v17];
    v28 = MEMORY[0x277CCAAD0];
    v38 = [(DBIconLabelBackdropView *)v6 topAnchor];
    v36 = [v17 topAnchor];
    v34 = [v38 constraintEqualToAnchor:v36];
    v42[0] = v34;
    v32 = [(DBIconLabelBackdropView *)v6 bottomAnchor];
    v30 = [v17 bottomAnchor];
    v18 = [v32 constraintEqualToAnchor:v30];
    v42[1] = v18;
    v19 = [(DBIconLabelBackdropView *)v6 leftAnchor];
    v20 = [v17 leftAnchor];
    v21 = [v19 constraintEqualToAnchor:v20];
    v42[2] = v21;
    v22 = [(DBIconLabelBackdropView *)v6 rightAnchor];
    v23 = [v17 rightAnchor];
    v24 = [v22 constraintEqualToAnchor:v23];
    v42[3] = v24;
    v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
    [v28 activateConstraints:v25];

    v4 = v39;
    [(DBIconLabelBackdropView *)v6 setWallpaper:v39];
  }

  return v6;
}

- (void)setWallpaper:(id)a3
{
  objc_storeStrong(&self->_wallpaper, a3);

  [(DBIconLabelBackdropView *)self _updateHighlight];
}

@end