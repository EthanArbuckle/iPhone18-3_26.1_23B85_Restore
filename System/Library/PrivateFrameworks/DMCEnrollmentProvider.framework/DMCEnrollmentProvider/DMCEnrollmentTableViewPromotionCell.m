@interface DMCEnrollmentTableViewPromotionCell
- (DMCEnrollmentTableViewPromotionCell)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5;
- (id)_subtitleFont;
- (id)_titleFont;
- (void)_setupContentConfigurationWithIcon:(id)a3 title:(id)a4 subtitle:(id)a5;
- (void)layoutSubviews;
@end

@implementation DMCEnrollmentTableViewPromotionCell

- (DMCEnrollmentTableViewPromotionCell)initWithTitle:(id)a3 subtitle:(id)a4 icon:(id)a5
{
  v26[1] = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v11 = objc_opt_class();
  v12 = NSStringFromClass(v11);
  v25.receiver = self;
  v25.super_class = DMCEnrollmentTableViewPromotionCell;
  v13 = [(DMCEnrollmentTableViewPromotionCell *)&v25 initWithStyle:0 reuseIdentifier:v12];

  if (v13)
  {
    [(DMCEnrollmentTableViewPromotionCell *)v13 setSelectionStyle:0];
    [(DMCEnrollmentTableViewPromotionCell *)v13 setUserInteractionEnabled:0];
    v14 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(DMCEnrollmentTableViewPromotionCell *)v13 setBackgroundColor:v14];

    [(DMCEnrollmentTableViewPromotionCell *)v13 _setupContentConfigurationWithIcon:v10 title:v8 subtitle:v9];
    objc_storeStrong(&v13->_icon, a5);
    v15 = [v8 copy];
    title = v13->_title;
    v13->_title = v15;

    v17 = [v9 copy];
    subtitle = v13->_subtitle;
    v13->_subtitle = v17;

    objc_initWeak(&location, v13);
    v26[0] = objc_opt_class();
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:1];
    v22[0] = MEMORY[0x277D85DD0];
    v22[1] = 3221225472;
    v22[2] = __67__DMCEnrollmentTableViewPromotionCell_initWithTitle_subtitle_icon___block_invoke;
    v22[3] = &unk_278EE7C08;
    objc_copyWeak(&v23, &location);
    v20 = [(DMCEnrollmentTableViewPromotionCell *)v13 registerForTraitChanges:v19 withHandler:v22];

    objc_destroyWeak(&v23);
    objc_destroyWeak(&location);
  }

  return v13;
}

void __67__DMCEnrollmentTableViewPromotionCell_initWithTitle_subtitle_icon___block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained icon];
  v2 = [WeakRetained title];
  v3 = [WeakRetained subtitle];
  [WeakRetained _setupContentConfigurationWithIcon:v1 title:v2 subtitle:v3];
}

- (void)layoutSubviews
{
  v3.receiver = self;
  v3.super_class = DMCEnrollmentTableViewPromotionCell;
  [(DMCEnrollmentTableViewPromotionCell *)&v3 layoutSubviews];
  [(DMCEnrollmentTableViewPromotionCell *)self bounds];
  [(DMCEnrollmentTableViewPromotionCell *)self setSeparatorInset:0.0, CGRectGetWidth(v4), 0.0, 0.0];
}

- (void)_setupContentConfigurationWithIcon:(id)a3 title:(id)a4 subtitle:(id)a5
{
  v35[2] = *MEMORY[0x277D85DE8];
  v8 = a5;
  v9 = MEMORY[0x277D756E0];
  v10 = a4;
  v31 = a3;
  v11 = [v9 cellConfiguration];
  v12 = objc_alloc(MEMORY[0x277CCA898]);
  v13 = *MEMORY[0x277D740A8];
  v34[0] = *MEMORY[0x277D740A8];
  v14 = self;
  v15 = [(DMCEnrollmentTableViewPromotionCell *)self _titleFont];
  v35[0] = v15;
  v16 = *MEMORY[0x277D740C0];
  v34[1] = *MEMORY[0x277D740C0];
  v17 = [MEMORY[0x277D75348] labelColor];
  v35[1] = v17;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  v19 = [v12 initWithString:v10 attributes:v18];

  if (v8)
  {
    v20 = objc_alloc(MEMORY[0x277CCA898]);
    v32[0] = v13;
    v21 = [(DMCEnrollmentTableViewPromotionCell *)v14 _subtitleFont];
    v32[1] = v16;
    v33[0] = v21;
    v22 = [MEMORY[0x277D75348] secondaryLabelColor];
    v33[1] = v22;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v24 = [v20 initWithString:v8 attributes:v23];
  }

  else
  {
    v24 = 0;
  }

  v25 = v14;
  [v11 directionalLayoutMargins];
  v27 = v26;
  v29 = v28;
  [v11 setImage:v31];

  v30 = [v11 imageProperties];
  [v30 setMaximumSize:{32.0, 32.0}];

  [v11 setAttributedText:v19];
  [v11 setSecondaryAttributedText:v24];
  [v11 setDirectionalLayoutMargins:{13.0, v27, 13.0, v29}];
  [(DMCEnrollmentTableViewPromotionCell *)v25 setContentConfiguration:v11];
}

- (id)_titleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76988]];
  v3 = MEMORY[0x277D74300];
  v4 = [v2 fontDescriptorWithSymbolicTraits:2];
  v5 = [v3 fontWithDescriptor:v4 size:0.0];

  return v5;
}

- (id)_subtitleFont
{
  v2 = [MEMORY[0x277D74310] preferredFontDescriptorWithTextStyle:*MEMORY[0x277D769D0]];
  v3 = [MEMORY[0x277D74300] fontWithDescriptor:v2 size:0.0];

  return v3;
}

@end