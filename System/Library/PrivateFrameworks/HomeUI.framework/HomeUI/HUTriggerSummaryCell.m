@interface HUTriggerSummaryCell
- (HUTriggerSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (UILabel)descriptionLabel;
- (UILabel)titleLabel;
- (void)_addDescriptionIconView;
- (void)_addDescriptionLabel;
- (void)_addTitleLabel;
- (void)prepareForReuse;
- (void)setDescriptionIcon:(id)a3;
- (void)setDescriptionText:(id)a3;
- (void)setDisabled:(BOOL)a3;
- (void)setHideDescription:(BOOL)a3;
- (void)setHideDescriptionIcon:(BOOL)a3;
- (void)setHideTitle:(BOOL)a3;
- (void)setIconDescriptors:(id)a3;
- (void)setTitleText:(id)a3;
- (void)setUpIconContainerViewConstraints;
- (void)setUpTextContainerViewConstraints;
- (void)updateConstraints;
- (void)updateHorizontalLabelConstraints;
- (void)updateSelectionUI;
- (void)updateTitle;
- (void)updateUIIconsWithResults:(id)a3;
- (void)updateUITextWithResults:(id)a3;
- (void)updateUIWithAnimation:(BOOL)a3;
- (void)updateVerticalLabelConstraints;
@end

@implementation HUTriggerSummaryCell

- (HUTriggerSummaryCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v18.receiver = self;
  v18.super_class = HUTriggerSummaryCell;
  v4 = [(HUTriggerSummaryCell *)&v18 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76988]];
    titleFont = v4->_titleFont;
    v4->_titleFont = v5;

    v7 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76968]];
    descriptionFont = v4->_descriptionFont;
    v4->_descriptionFont = v7;

    v4->_textAlpha = 1.0;
    v4->_hideDescriptionIcon = 1;
    v9 = objc_alloc_init(HUIconListView);
    iconContainerView = v4->_iconContainerView;
    v4->_iconContainerView = v9;

    [(HUIconListView *)v4->_iconContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v11 = [MEMORY[0x277D75348] clearColor];
    [(HUIconListView *)v4->_iconContainerView setBackgroundColor:v11];

    v12 = [(HUTriggerSummaryCell *)v4 contentView];
    [v12 addSubview:v4->_iconContainerView];

    [(HUTriggerSummaryCell *)v4 setUpIconContainerViewConstraints];
    v13 = objc_alloc_init(MEMORY[0x277D75D18]);
    textContainerView = v4->_textContainerView;
    v4->_textContainerView = v13;

    [(UIView *)v4->_textContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
    v15 = [(HUTriggerSummaryCell *)v4 contentView];
    [v15 addSubview:v4->_textContainerView];

    [(HUTriggerSummaryCell *)v4 setUpTextContainerViewConstraints];
    [(HUTriggerSummaryCell *)v4 _addTitleLabel];
    [(HUTriggerSummaryCell *)v4 _addDescriptionLabel];
    v16 = [MEMORY[0x277D75348] secondarySystemBackgroundColor];
    [(HUTriggerSummaryCell *)v4 setCellColor:v16];
  }

  return v4;
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUTriggerSummaryCell;
  [(HUTriggerSummaryCell *)&v3 prepareForReuse];
  [(HUTriggerSummaryCell *)self setHideTitle:0];
  [(HUTriggerSummaryCell *)self setTitleText:0];
  [(HUTriggerSummaryCell *)self setDisabled:0];
  [(HUTriggerSummaryCell *)self setCanBeSelected:1];
  [(HUTriggerSummaryCell *)self setHideDescription:0];
  [(HUTriggerSummaryCell *)self setDescriptionText:0];
}

- (void)setIconDescriptors:(id)a3
{
  v4 = a3;
  v5 = [(HUTriggerSummaryCell *)self iconContainerView];
  [v5 setIconDescriptors:v4];
}

- (UILabel)titleLabel
{
  titleLabel = self->_titleLabel;
  if (!titleLabel)
  {
    [(HUTriggerSummaryCell *)self _addTitleLabel];
    titleLabel = self->_titleLabel;
  }

  return titleLabel;
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HUTriggerSummaryCell *)self titleLabel];
  [v6 setText:v5];
}

- (void)setHideTitle:(BOOL)a3
{
  if (self->_hideTitle != a3)
  {
    self->_hideTitle = a3;
    if (a3)
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
    }

    else
    {
      [(HUTriggerSummaryCell *)self _addTitleLabel];
    }

    [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
  }
}

- (UILabel)descriptionLabel
{
  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    [(HUTriggerSummaryCell *)self _addDescriptionLabel];
    descriptionLabel = self->_descriptionLabel;
  }

  return descriptionLabel;
}

- (void)setDescriptionText:(id)a3
{
  objc_storeStrong(&self->_descriptionText, a3);
  v5 = a3;
  v6 = [(HUTriggerSummaryCell *)self descriptionLabel];
  [v6 setText:v5];
}

- (void)setHideDescription:(BOOL)a3
{
  if (self->_hideDescription != a3)
  {
    self->_hideDescription = a3;
    if (a3)
    {
      [(UILabel *)self->_descriptionLabel removeFromSuperview];
    }

    else
    {
      [(HUTriggerSummaryCell *)self _addDescriptionLabel];
    }

    [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDescriptionIcon:(id)a3
{
  v8 = a3;
  objc_storeStrong(&self->_descriptionIcon, a3);
  v5 = v8;
  if (!self->_hideDescriptionIcon)
  {
    if (v8)
    {
      v6 = [v8 imageWithRenderingMode:2];
    }

    else
    {
      v6 = 0;
    }

    v7 = [(HUTriggerSummaryCell *)self descriptionIconView];
    [v7 setImage:v6];

    v5 = v8;
  }
}

- (void)setHideDescriptionIcon:(BOOL)a3
{
  if (self->_hideDescriptionIcon != a3)
  {
    self->_hideDescriptionIcon = a3;
    if (a3)
    {
      [(UIImageView *)self->_descriptionIconView removeFromSuperview];
    }

    else
    {
      [(HUTriggerSummaryCell *)self _addDescriptionIconView];
    }

    [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
  }
}

- (void)setDisabled:(BOOL)a3
{
  v3 = a3;
  self->_disabled = a3;
  [(HUTriggerSummaryCell *)self updateTitle];
  [(HUTriggerSummaryCell *)self updateSelectionUI];
  v5 = 0.200000003;
  if (!v3)
  {
    v5 = 1.0;
  }

  [(HUTriggerSummaryCell *)self setTextAlpha:v5];
}

- (void)updateConstraints
{
  v3 = [(HUTriggerSummaryCell *)self titleLabel];
  [v3 setNumberOfLines:0];

  v4 = [(HUTriggerSummaryCell *)self descriptionLabel];
  [v4 setNumberOfLines:0];

  [(HUTriggerSummaryCell *)self updateVerticalLabelConstraints];
  [(HUTriggerSummaryCell *)self updateHorizontalLabelConstraints];
  v5.receiver = self;
  v5.super_class = HUTriggerSummaryCell;
  [(HUTriggerSummaryCell *)&v5 updateConstraints];
}

- (void)setUpIconContainerViewConstraints
{
  v22 = [MEMORY[0x277CBEB18] array];
  v3 = [(HUTriggerSummaryCell *)self iconContainerView];
  v4 = [v3 topAnchor];
  v5 = [(HUTriggerSummaryCell *)self contentView];
  v6 = [v5 topAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:16.0];
  [v22 addObject:v7];

  v8 = [(HUTriggerSummaryCell *)self iconContainerView];
  v9 = [v8 leadingAnchor];
  v10 = [(HUTriggerSummaryCell *)self contentView];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  [v22 addObject:v12];

  v13 = [(HUTriggerSummaryCell *)self iconContainerView];
  v14 = [v13 trailingAnchor];
  v15 = [(HUTriggerSummaryCell *)self contentView];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:16.0];
  [v22 addObject:v17];

  v18 = MEMORY[0x277CCAAD0];
  v19 = [(HUTriggerSummaryCell *)self iconContainerView];
  v20 = [v18 constraintWithItem:v19 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:32.0];

  v21 = [(HUTriggerSummaryCell *)self contentView];
  [v21 addConstraint:v20];

  [MEMORY[0x277CCAAD0] activateConstraints:v22];
}

- (void)setUpTextContainerViewConstraints
{
  v27 = [MEMORY[0x277CBEB18] array];
  v3 = [(HUTriggerSummaryCell *)self textContainerView];
  v4 = [v3 topAnchor];
  v5 = [(HUTriggerSummaryCell *)self iconContainerView];
  v6 = [v5 bottomAnchor];
  v7 = [v4 constraintEqualToAnchor:v6 constant:8.0];
  [v27 addObject:v7];

  v8 = [(HUTriggerSummaryCell *)self textContainerView];
  v9 = [v8 leadingAnchor];
  v10 = [(HUTriggerSummaryCell *)self contentView];
  v11 = [v10 leadingAnchor];
  v12 = [v9 constraintEqualToAnchor:v11 constant:16.0];
  [v27 addObject:v12];

  v13 = [(HUTriggerSummaryCell *)self textContainerView];
  v14 = [v13 trailingAnchor];
  v15 = [(HUTriggerSummaryCell *)self contentView];
  v16 = [v15 trailingAnchor];
  v17 = [v14 constraintEqualToAnchor:v16 constant:-16.0];
  [v27 addObject:v17];

  v18 = [(HUTriggerSummaryCell *)self textContainerView];
  v19 = [v18 bottomAnchor];
  v20 = [(HUTriggerSummaryCell *)self contentView];
  v21 = [v20 bottomAnchor];
  v22 = [v19 constraintEqualToAnchor:v21 constant:-16.0];
  [v27 addObject:v22];

  v23 = MEMORY[0x277CCAAD0];
  v24 = [(HUTriggerSummaryCell *)self iconContainerView];
  v25 = [v23 constraintWithItem:v24 attribute:8 relatedBy:0 toItem:0 attribute:0 multiplier:1.0 constant:32.0];

  v26 = [(HUTriggerSummaryCell *)self contentView];
  [v26 addConstraint:v25];

  [MEMORY[0x277CCAAD0] activateConstraints:v27];
}

- (void)updateVerticalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUTriggerSummaryCell *)self verticalLabelConstraints];
  [v3 deactivateConstraints:v4];

  v42 = [MEMORY[0x277CBEB18] array];
  v5 = [(UILabel *)self->_titleLabel superview];

  if (v5)
  {
    v6 = [(HUTriggerSummaryCell *)self titleLabel];
    v7 = [v6 topAnchor];
    v8 = [(HUTriggerSummaryCell *)self textContainerView];
    v9 = [v8 topAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    [v42 addObject:v10];

    v11 = [(UILabel *)self->_descriptionLabel superview];

    if (!v11)
    {
      v12 = [(HUTriggerSummaryCell *)self titleLabel];
      v13 = [v12 bottomAnchor];
      v14 = [(HUTriggerSummaryCell *)self textContainerView];
      v15 = [v14 bottomAnchor];
      v16 = [v13 constraintEqualToAnchor:v15];
      [v42 addObject:v16];
    }
  }

  v17 = [(UILabel *)self->_descriptionLabel superview];

  if (v17)
  {
    v18 = [(UILabel *)self->_titleLabel superview];

    v19 = [(HUTriggerSummaryCell *)self descriptionLabel];
    v20 = [v19 topAnchor];
    if (v18)
    {
      v21 = [(UILabel *)self->_titleLabel bottomAnchor];
      v22 = [v20 constraintEqualToAnchor:v21 constant:3.0];
      [v42 addObject:v22];
    }

    else
    {
      v21 = [(HUTriggerSummaryCell *)self textContainerView];
      v22 = [v21 topAnchor];
      v23 = [v20 constraintEqualToAnchor:v22];
      [v42 addObject:v23];
    }

    v24 = [(HUTriggerSummaryCell *)self descriptionLabel];
    v25 = [v24 bottomAnchor];
    v26 = [(HUTriggerSummaryCell *)self textContainerView];
    v27 = [v26 bottomAnchor];
    v28 = [v25 constraintEqualToAnchor:v27];
    [v42 addObject:v28];

    v29 = [(UIImageView *)self->_descriptionIconView superview];

    if (v29)
    {
      v30 = [(HUTriggerSummaryCell *)self descriptionIconView];
      v31 = [v30 topAnchor];
      v32 = [(HUTriggerSummaryCell *)self descriptionLabel];
      v33 = [v32 topAnchor];
      v34 = [v31 constraintEqualToAnchor:v33];
      [v42 addObject:v34];

      v35 = [(HUTriggerSummaryCell *)self descriptionIconView];
      v36 = [v35 bottomAnchor];
      v37 = [(HUTriggerSummaryCell *)self descriptionLabel];
      v38 = [v37 bottomAnchor];
      v39 = [v36 constraintEqualToAnchor:v38];
      [v42 addObject:v39];
    }
  }

  [(HUTriggerSummaryCell *)self setVerticalLabelConstraints:v42];
  v40 = MEMORY[0x277CCAAD0];
  v41 = [(HUTriggerSummaryCell *)self verticalLabelConstraints];
  [v40 activateConstraints:v41];
}

- (void)updateHorizontalLabelConstraints
{
  v3 = MEMORY[0x277CCAAD0];
  v4 = [(HUTriggerSummaryCell *)self horizontalLabelConstraints];
  [v3 deactivateConstraints:v4];

  v40 = [MEMORY[0x277CBEB18] array];
  v5 = [(UILabel *)self->_titleLabel superview];

  if (v5)
  {
    v6 = [(HUTriggerSummaryCell *)self titleLabel];
    v7 = [v6 leadingAnchor];
    v8 = [(HUTriggerSummaryCell *)self textContainerView];
    v9 = [v8 leadingAnchor];
    v10 = [v7 constraintEqualToAnchor:v9];
    [v40 addObject:v10];

    v11 = [(HUTriggerSummaryCell *)self titleLabel];
    v12 = [v11 trailingAnchor];
    v13 = [(HUTriggerSummaryCell *)self textContainerView];
    v14 = [v13 trailingAnchor];
    v15 = [v12 constraintEqualToAnchor:v14];
    [v40 addObject:v15];
  }

  v16 = [(UILabel *)self->_descriptionLabel superview];

  if (v16)
  {
    v17 = [(UIImageView *)self->_descriptionIconView superview];

    if (v17)
    {
      v18 = [(HUTriggerSummaryCell *)self descriptionIconView];
      v19 = [v18 leadingAnchor];
      v20 = [(HUTriggerSummaryCell *)self textContainerView];
      v21 = [v20 leadingAnchor];
      v22 = [v19 constraintEqualToAnchor:v21];
      [v40 addObject:v22];

      v23 = [(HUTriggerSummaryCell *)self descriptionIconView];
      v24 = [v23 widthAnchor];
      v25 = [(HUTriggerSummaryCell *)self descriptionIconView];
      v26 = [v25 heightAnchor];
      v27 = [v24 constraintEqualToAnchor:v26];
      [v40 addObject:v27];

      v28 = [(HUTriggerSummaryCell *)self descriptionIconView];
      v29 = [v28 trailingAnchor];
      v30 = [(HUTriggerSummaryCell *)self descriptionLabel];
      v31 = [v30 leadingAnchor];
      [v29 constraintEqualToAnchor:v31 constant:-5.0];
    }

    else
    {
      v28 = [(HUTriggerSummaryCell *)self descriptionLabel];
      v29 = [v28 leadingAnchor];
      v30 = [(HUTriggerSummaryCell *)self textContainerView];
      v31 = [v30 leadingAnchor];
      [v29 constraintEqualToAnchor:v31];
    }
    v32 = ;
    [v40 addObject:v32];

    v33 = [(HUTriggerSummaryCell *)self descriptionLabel];
    v34 = [v33 trailingAnchor];
    v35 = [(HUTriggerSummaryCell *)self textContainerView];
    v36 = [v35 trailingAnchor];
    v37 = [v34 constraintEqualToAnchor:v36];
    [v40 addObject:v37];
  }

  [(HUTriggerSummaryCell *)self setHorizontalLabelConstraints:v40];
  v38 = MEMORY[0x277CCAAD0];
  v39 = [(HUTriggerSummaryCell *)self horizontalLabelConstraints];
  [v38 activateConstraints:v39];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUTriggerSummaryCell *)self item];
  v5 = [v4 latestResults];

  [(HUTriggerSummaryCell *)self updateUITextWithResults:v5];
  [(HUTriggerSummaryCell *)self updateUIIconsWithResults:v5];
  [(HUTriggerSummaryCell *)self setNeedsUpdateConstraints];
}

- (void)updateUITextWithResults:(id)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTriggerSummaryCell *)self setTitleText:v5];

  [(HUTriggerSummaryCell *)self updateTitle];
  v6 = *MEMORY[0x277D13E20];
  v7 = [v4 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v7)
  {
    v20[0] = *MEMORY[0x277D740A8];
    v8 = [(HUTriggerSummaryCell *)self descriptionLabel];
    v9 = [v8 font];
    v21[0] = v9;
    v20[1] = *MEMORY[0x277D740C0];
    v10 = [(HUTriggerSummaryCell *)self descriptionLabel];
    v11 = [v10 textColor];
    v21[1] = v11;
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v13 = [v4 objectForKeyedSubscript:v6];
    if ([v13 prefersDynamicString])
    {
      v14 = [(HUTriggerSummaryCell *)self descriptionLabel];
      [v14 bounds];
      v17 = [v13 dynamicStringForSize:v12 attributes:{v15, v16}];
      v18 = [(HUTriggerSummaryCell *)self descriptionLabel];
      [v18 setAttributedText:v17];
    }

    else
    {
      v14 = [v13 stringWithAttributes:v12];
      v17 = [(HUTriggerSummaryCell *)self descriptionLabel];
      [v17 setAttributedText:v14];
    }
  }

  else
  {
    v19 = [(HUTriggerSummaryCell *)self descriptionLabel];
    [v19 setAttributedText:0];
  }
}

- (void)updateUIIconsWithResults:(id)a3
{
  v9 = a3;
  v4 = [MEMORY[0x277CBEB18] array];
  v5 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  if (v5)
  {
    [v4 addObject:v5];
    v6 = objc_alloc(MEMORY[0x277D14728]);
    v7 = [v6 initWithImageIdentifier:*MEMORY[0x277D13AC8]];
    [v4 addObject:v7];
  }

  v8 = [v9 objectForKeyedSubscript:*MEMORY[0x277D13E90]];
  if (v8)
  {
    [v4 addObjectsFromArray:v8];
  }

  [(HUTriggerSummaryCell *)self setIconDescriptors:v4];
}

- (void)_addTitleLabel
{
  v3 = [(UILabel *)self->_titleLabel superview];

  if (v3)
  {
    NSLog(&cfstr_TitleLabelAlre.isa, self);
  }

  if (!self->_titleLabel)
  {
    v4 = MEMORY[0x277D756B8];
    v5 = [(HUTriggerSummaryCell *)self titleText];
    v6 = [(HUTriggerSummaryCell *)self titleFont];
    v7 = [v4 labelWithText:v5 font:v6];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v7;

    LODWORD(v9) = 1144766464;
    [(UILabel *)self->_titleLabel setContentCompressionResistancePriority:1 forAxis:v9];
    LODWORD(v10) = 1132134400;
    [(UILabel *)self->_titleLabel setContentHuggingPriority:1 forAxis:v10];
  }

  v11 = [(HUTriggerSummaryCell *)self textContainerView];
  [v11 addSubview:self->_titleLabel];

  [(HUTriggerSummaryCell *)self updateTitle];
}

- (void)_addDescriptionLabel
{
  v3 = [(UILabel *)self->_descriptionLabel superview];

  if (v3)
  {
    NSLog(&cfstr_DescriptionLab.isa, self);
  }

  descriptionLabel = self->_descriptionLabel;
  if (!descriptionLabel)
  {
    v6 = MEMORY[0x277D756B8];
    v7 = [(HUTriggerSummaryCell *)self descriptionText];
    v8 = [(HUTriggerSummaryCell *)self descriptionFont];
    v9 = [v6 labelWithText:v7 font:v8];
    v10 = self->_descriptionLabel;
    self->_descriptionLabel = v9;

    v11 = [MEMORY[0x277D75348] systemGrayColor];
    [(UILabel *)self->_descriptionLabel setTextColor:v11];

    descriptionLabel = self->_descriptionLabel;
  }

  LODWORD(v4) = 1144766464;
  [(UILabel *)descriptionLabel setContentHuggingPriority:1 forAxis:v4];
  v12 = [(HUTriggerSummaryCell *)self textContainerView];
  [v12 addSubview:self->_descriptionLabel];
}

- (void)_addDescriptionIconView
{
  if (!self->_descriptionIconView)
  {
    v3 = objc_alloc(MEMORY[0x277D755E8]);
    v4 = [v3 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    descriptionIconView = self->_descriptionIconView;
    self->_descriptionIconView = v4;

    [(UIImageView *)self->_descriptionIconView setTranslatesAutoresizingMaskIntoConstraints:0];
    v6 = [MEMORY[0x277D75348] systemGrayColor];
    [(UIImageView *)self->_descriptionIconView setTintColor:v6];

    [(UIImageView *)self->_descriptionIconView setContentMode:1];
    v7 = [(HUTriggerSummaryCell *)self descriptionIcon];

    if (v7)
    {
      v9 = [(HUTriggerSummaryCell *)self descriptionIcon];
      v10 = [v9 imageWithRenderingMode:2];
      [(UIImageView *)self->_descriptionIconView setImage:v10];
    }

    LODWORD(v8) = 1132003328;
    [(UIImageView *)self->_descriptionIconView setContentCompressionResistancePriority:1 forAxis:v8];
  }

  v11 = [(HUTriggerSummaryCell *)self textContainerView];
  [v11 addSubview:self->_descriptionIconView];
}

- (void)updateTitle
{
  if ([(HUTriggerSummaryCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v3 = ;
  [(UILabel *)self->_titleLabel setTextColor:v3];

  [(HUTriggerSummaryCell *)self textAlpha];
  if (v4 != 0.0)
  {
    [(HUTriggerSummaryCell *)self textAlpha];
    [(UILabel *)self->_titleLabel setAlpha:?];
    [(HUTriggerSummaryCell *)self textAlpha];
    descriptionLabel = self->_descriptionLabel;

    [(UILabel *)descriptionLabel setAlpha:?];
  }
}

- (void)updateSelectionUI
{
  v3 = [(HUTriggerSummaryCell *)self canBeSelected];
  if (v3)
  {
    v4 = 3;
  }

  else
  {
    v4 = 0;
  }

  [(HUTriggerSummaryCell *)self setAccessoryType:v3];

  [(HUTriggerSummaryCell *)self setSelectionStyle:v4];
}

@end