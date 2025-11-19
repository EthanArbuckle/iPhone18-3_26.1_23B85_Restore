@interface FAFamilySharingFeaturesView
+ (id)rowForIcon:(id)a3 andLabel:(id)a4;
- (FAFamilySharingFeaturesView)initWithContext:(int64_t)a3 hideLocationSharing:(BOOL)a4;
- (id)_contextSensitiveLocalizedStringWithKey:(id)a3;
- (id)_imageViewWithIconNamed:(id)a3 addBorder:(BOOL)a4;
- (id)_labelWithStringAtKey:(id)a3;
- (void)_learnMoreButtonTapped:(id)a3;
- (void)_updateFonts;
- (void)traitCollectionDidChange:(id)a3;
@end

@implementation FAFamilySharingFeaturesView

- (FAFamilySharingFeaturesView)initWithContext:(int64_t)a3 hideLocationSharing:(BOOL)a4
{
  v57[1] = *MEMORY[0x277D85DE8];
  v55.receiver = self;
  v55.super_class = FAFamilySharingFeaturesView;
  v6 = [(FAFamilySharingFeaturesView *)&v55 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];
  v7 = v6;
  if (v6)
  {
    v6->_context = a3;
    v6->_shouldHideLocationSharing = a4;
    v8 = objc_opt_new();
    stack = v7->_stack;
    v7->_stack = v8;

    [(UIStackView *)v7->_stack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v7->_stack setAxis:1];
    [(UIStackView *)v7->_stack setAlignment:0];
    [(UIStackView *)v7->_stack setDistribution:0];
    [(UIStackView *)v7->_stack setSpacing:16.0];
    v10 = v7->_stack;
    v11 = [(FAFamilySharingFeaturesView *)v7 _imageViewWithIconNamed:@"StoreIcon" addBorder:0];
    v12 = [(FAFamilySharingFeaturesView *)v7 _labelWithStringAtKey:@"FAMILY_SHARE_PURCHASES_DESCRIPTION"];
    v13 = [FAFamilySharingFeaturesView rowForIcon:v11 andLabel:v12];
    [(UIStackView *)v10 addArrangedSubview:v13];

    v14 = v7->_stack;
    v15 = [(FAFamilySharingFeaturesView *)v7 _imageViewWithIconNamed:@"MusicIcon" addBorder:1];
    v16 = [(FAFamilySharingFeaturesView *)v7 _labelWithStringAtKey:@"FAMILY_SHARE_MUSIC_DESCRIPTION"];
    v17 = [FAFamilySharingFeaturesView rowForIcon:v15 andLabel:v16];
    [(UIStackView *)v14 addArrangedSubview:v17];

    v18 = v7->_stack;
    v19 = [(FAFamilySharingFeaturesView *)v7 _imageViewWithIconNamed:@"PhotosIcon" addBorder:1];
    v20 = [(FAFamilySharingFeaturesView *)v7 _labelWithStringAtKey:@"FAMILY_SHARE_PHOTOS_DESCRIPTION"];
    v21 = [FAFamilySharingFeaturesView rowForIcon:v19 andLabel:v20];
    [(UIStackView *)v18 addArrangedSubview:v21];

    v22 = v7->_stack;
    v23 = [(FAFamilySharingFeaturesView *)v7 _imageViewWithIconNamed:@"CalendarIcon" addBorder:1];
    v24 = [(FAFamilySharingFeaturesView *)v7 _labelWithStringAtKey:@"FAMILY_SHARE_CALENDAR_DESCRIPTION"];
    v25 = [FAFamilySharingFeaturesView rowForIcon:v23 andLabel:v24];
    [(UIStackView *)v22 addArrangedSubview:v25];

    if (!v7->_shouldHideLocationSharing)
    {
      v26 = v7->_stack;
      v27 = [(FAFamilySharingFeaturesView *)v7 _imageViewWithIconNamed:@"FMFIcon" addBorder:0];
      v28 = [(FAFamilySharingFeaturesView *)v7 _labelWithStringAtKey:@"FAMILY_SHARE_LOCATION_DESCRIPTION"];
      v29 = [FAFamilySharingFeaturesView rowForIcon:v27 andLabel:v28];
      [(UIStackView *)v26 addArrangedSubview:v29];
    }

    v30 = v7->_stack;
    v31 = [(FAFamilySharingFeaturesView *)v7 _imageViewWithIconNamed:@"FMIPIcon" addBorder:1];
    v32 = [(FAFamilySharingFeaturesView *)v7 _labelWithStringAtKey:@"FAMILY_HELP_LOCATE_DEVICES_DESCRIPTION"];
    v33 = [FAFamilySharingFeaturesView rowForIcon:v31 andLabel:v32];
    [(UIStackView *)v30 addArrangedSubview:v33];

    [(FAFamilySharingFeaturesView *)v7 addSubview:v7->_stack];
    v34 = [MEMORY[0x277D75220] buttonWithType:1];
    learnMoreButton = v7->_learnMoreButton;
    v7->_learnMoreButton = v34;

    v36 = v7->_learnMoreButton;
    v37 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v38 = [v37 localizedStringForKey:@"FAMILY_SHARING_LEARN_MORE_BUTTON" value:&stru_282D9AA68 table:@"Localizable"];
    [(UIButton *)v36 setTitle:v38 forState:0];

    v39 = [(UIButton *)v7->_learnMoreButton titleLabel];
    [v39 setTextAlignment:1];

    [(UIButton *)v7->_learnMoreButton addTarget:v7 action:sel__learnMoreButtonTapped_ forControlEvents:64];
    v40 = [(UIButton *)v7->_learnMoreButton titleLabel];
    v41 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    [v40 setFont:v41];

    v42 = [(UIButton *)v7->_learnMoreButton titleLabel];
    [v42 setNumberOfLines:0];

    [(UIButton *)v7->_learnMoreButton setTranslatesAutoresizingMaskIntoConstraints:0];
    [(FAFamilySharingFeaturesView *)v7 addSubview:v7->_learnMoreButton];
    v43 = _NSDictionaryOfVariableBindings(&cfstr_StackLearnmore.isa, v7->_stack, v7->_learnMoreButton, 0);
    v44 = MEMORY[0x277CCAAD0];
    v45 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_stack]|" options:0 metrics:0 views:v43];
    [v44 activateConstraints:v45];

    v46 = MEMORY[0x277CCAAD0];
    v47 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[_learnMoreButton]|" options:0 metrics:0 views:v43];
    [v46 activateConstraints:v47];

    v48 = MEMORY[0x277CCAAD0];
    v56 = @"learnMoreSpacing";
    v49 = MEMORY[0x277CCABB0];
    UIRoundToViewScale();
    v50 = [v49 numberWithDouble:?];
    v57[0] = v50;
    v51 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:&v56 count:1];
    v52 = [v48 constraintsWithVisualFormat:@"V:|[_stack]-(learnMoreSpacing)-[_learnMoreButton]|" options:0 metrics:v51 views:v43];
    [v48 activateConstraints:v52];
  }

  v53 = *MEMORY[0x277D85DE8];
  return v7;
}

+ (id)rowForIcon:(id)a3 andLabel:(id)a4
{
  v5 = a4;
  v6 = a3;
  v7 = objc_opt_new();
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 addSubview:v6];
  [v7 addSubview:v5];
  v8 = _NSDictionaryOfVariableBindings(&cfstr_ImageText.isa, v6, v5, 0);
  v9 = [MEMORY[0x277CBEB18] array];
  v10 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"H:|[image(iconSize)]-(iconToLabelSpace)-[text]|" options:0 metrics:&unk_282DC0740 views:v8];
  [v9 addObjectsFromArray:v10];

  v11 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|-(>=0)-[image(iconSize)]" options:0 metrics:&unk_282DC0740 views:v8];
  [v9 addObjectsFromArray:v11];

  v12 = [MEMORY[0x277CCAAD0] constraintsWithVisualFormat:@"V:|[text]|" options:0 metrics:&unk_282DC0740 views:v8];
  [v9 addObjectsFromArray:v12];

  v13 = [MEMORY[0x277CCAAD0] constraintWithItem:v7 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];
  [v9 addObject:v13];

  v14 = [MEMORY[0x277CCAAD0] constraintWithItem:v5 attribute:10 relatedBy:0 toItem:v6 attribute:10 multiplier:1.0 constant:0.0];

  [v9 addObject:v14];
  [MEMORY[0x277CCAAD0] activateConstraints:v9];

  return v7;
}

- (id)_labelWithStringAtKey:(id)a3
{
  v3 = [(FAFamilySharingFeaturesView *)self _contextSensitiveLocalizedStringWithKey:a3];
  v4 = objc_alloc(MEMORY[0x277D756B8]);
  v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
  [v5 setText:v3];
  [v5 setNumberOfLines:0];
  v6 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
  [v5 setFont:v6];

  return v5;
}

- (id)_imageViewWithIconNamed:(id)a3 addBorder:(BOOL)a4
{
  v4 = a4;
  v5 = MEMORY[0x277D755B8];
  v6 = MEMORY[0x277CCA8D8];
  v7 = a3;
  v8 = [v6 bundleForClass:objc_opt_class()];
  v9 = [v5 imageNamed:v7 inBundle:v8];

  v10 = [objc_alloc(MEMORY[0x277D755E8]) initWithImage:v9];
  v11 = v10;
  if (v4)
  {
    v12 = [v10 layer];
    v13 = [MEMORY[0x277D75348] systemMidGrayColor];
    [v12 setBorderColor:{objc_msgSend(v13, "CGColor")}];

    v14 = [v11 layer];
    PSRoundToPixel();
    [v14 setBorderWidth:?];

    v15 = [v11 layer];
    [v15 setCornerRadius:8.0];
  }

  return v11;
}

- (void)_learnMoreButtonTapped:(id)a3
{
  v3 = objc_opt_new();
  [v3 fetchAAURLConfigurationWithCompletion:&__block_literal_global_19];
}

void __54__FAFamilySharingFeaturesView__learnMoreButtonTapped___block_invoke(uint64_t a1, void *a2)
{
  v2 = [a2 urlForEndpoint:*MEMORY[0x277D08180]];
  if (v2)
  {
    v4 = v2;
    v3 = [MEMORY[0x277CC1E80] defaultWorkspace];
    [v3 openURL:v4 configuration:0 completionHandler:0];

    v2 = v4;
  }
}

- (id)_contextSensitiveLocalizedStringWithKey:(id)a3
{
  if (self->_context == 1)
  {
    v3 = MEMORY[0x277CCACA8];
    v4 = a3;
    v5 = [v3 stringWithFormat:@"%@_INVITE_CONTEXT", v4];

    v6 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
    v7 = v6;
    v8 = v5;
  }

  else
  {
    v9 = MEMORY[0x277CCA8D8];
    v7 = a3;
    v6 = [v9 bundleForClass:objc_opt_class()];
    v5 = v6;
    v8 = v7;
  }

  v10 = [v6 localizedStringForKey:v8 value:&stru_282D9AA68 table:@"Localizable"];

  return v10;
}

- (void)_updateFonts
{
  v19 = *MEMORY[0x277D85DE8];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = [(UIStackView *)self->_stack arrangedSubviews];
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      v7 = 0;
      do
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = [*(*(&v14 + 1) + 8 * v7) subviews];
        v9 = [v8 lastObject];

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v10 = [MEMORY[0x277D74300] aa_fontForPrimaryInformationLabel];
          [v9 setFont:v10];
        }

        ++v7;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = [(UIButton *)self->_learnMoreButton titleLabel];
  v12 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
  [v11 setFont:v12];

  [(FAFamilySharingFeaturesView *)self setNeedsLayout];
  v13 = *MEMORY[0x277D85DE8];
}

- (void)traitCollectionDidChange:(id)a3
{
  v9.receiver = self;
  v9.super_class = FAFamilySharingFeaturesView;
  v4 = a3;
  [(FAFamilySharingFeaturesView *)&v9 traitCollectionDidChange:v4];
  v5 = [v4 preferredContentSizeCategory];

  v6 = [(FAFamilySharingFeaturesView *)self traitCollection];
  v7 = [v6 preferredContentSizeCategory];
  v8 = [v5 isEqualToString:v7];

  if ((v8 & 1) == 0)
  {
    [(FAFamilySharingFeaturesView *)self _updateFonts];
  }
}

@end