@interface NTKCFaceDetailTitleValueEditOptionCell
- (NTKCFaceDetailTitleValueEditOptionCell)initWithEditOption:(id)option;
- (double)_reservedSizeForImage;
- (id)_checkmarkImage;
- (void)_setupSubviews;
- (void)setActive:(BOOL)active;
- (void)setTitleText:(id)text;
- (void)setValueText:(id)text;
@end

@implementation NTKCFaceDetailTitleValueEditOptionCell

- (NTKCFaceDetailTitleValueEditOptionCell)initWithEditOption:(id)option
{
  optionCopy = option;
  reuseIdentifier = [objc_opt_class() reuseIdentifier];
  v18.receiver = self;
  v18.super_class = NTKCFaceDetailTitleValueEditOptionCell;
  v7 = [(NTKCDetailTableViewCell *)&v18 initWithStyle:0 reuseIdentifier:reuseIdentifier];

  if (v7)
  {
    objc_storeStrong(&v7->_editOption, option);
    v7->_active = 0;
    v8 = objc_opt_new();
    leadingAccessoryView = v7->_leadingAccessoryView;
    v7->_leadingAccessoryView = v8;

    v10 = objc_opt_new();
    titleLabel = v7->_titleLabel;
    v7->_titleLabel = v10;

    v12 = objc_opt_new();
    valueLabel = v7->_valueLabel;
    v7->_valueLabel = v12;

    v14 = objc_alloc(MEMORY[0x277D75A68]);
    v15 = [v14 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    alignmentView = v7->_alignmentView;
    v7->_alignmentView = v15;

    [(NTKCFaceDetailTitleValueEditOptionCell *)v7 _setupSubviews];
  }

  return v7;
}

- (id)_checkmarkImage
{
  v2 = [MEMORY[0x277D755D0] configurationWithWeight:6];
  v3 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D76918]];
  v4 = [v2 configurationByApplyingConfiguration:v3];
  v5 = [MEMORY[0x277D755B8] systemImageNamed:@"checkmark" withConfiguration:v4];

  return v5;
}

- (double)_reservedSizeForImage
{
  v2 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [v2 pointSize];
  v4 = v3;

  return v4;
}

- (void)_setupSubviews
{
  v33[4] = *MEMORY[0x277D85DE8];
  v32 = objc_opt_new();
  [(UIStackView *)self->_alignmentView addArrangedSubview:self->_leadingAccessoryView];
  [(UIStackView *)self->_alignmentView addArrangedSubview:self->_titleLabel];
  [(UIStackView *)self->_alignmentView addArrangedSubview:v32];
  [(UIStackView *)self->_alignmentView addArrangedSubview:self->_valueLabel];
  contentView = [(NTKCFaceDetailTitleValueEditOptionCell *)self contentView];
  [contentView addSubview:self->_alignmentView];

  [(UIStackView *)self->_alignmentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_alignmentView setPreservesSuperviewLayoutMargins:1];
  contentView2 = [(NTKCFaceDetailTitleValueEditOptionCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];

  v25 = MEMORY[0x277CCAAD0];
  leadingAnchor = [(UIStackView *)self->_alignmentView leadingAnchor];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v28 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v33[0] = v28;
  trailingAnchor = [(UIStackView *)self->_alignmentView trailingAnchor];
  trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
  v6 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v33[1] = v6;
  topAnchor = [(UIStackView *)self->_alignmentView topAnchor];
  v31 = layoutMarginsGuide;
  topAnchor2 = [layoutMarginsGuide topAnchor];
  v9 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v33[2] = v9;
  bottomAnchor = [(UIStackView *)self->_alignmentView bottomAnchor];
  bottomAnchor2 = [layoutMarginsGuide bottomAnchor];
  v12 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v33[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v25 activateConstraints:v13];

  [(UIStackView *)self->_alignmentView setAxis:0];
  [(UIStackView *)self->_alignmentView setAlignment:3];
  [(UIStackView *)self->_alignmentView setSpacing:8.0];
  widthAnchor = [(UIImageView *)self->_leadingAccessoryView widthAnchor];
  [(NTKCFaceDetailTitleValueEditOptionCell *)self _reservedSizeForImage];
  v15 = [widthAnchor constraintEqualToConstant:?];
  [v15 setActive:1];

  titleLabel = self->_titleLabel;
  v17 = *MEMORY[0x277D76918];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)titleLabel setFont:v18];

  v19 = self->_titleLabel;
  labelColor = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v19 setTextColor:labelColor];

  valueLabel = self->_valueLabel;
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
  [(UILabel *)valueLabel setFont:v22];

  v23 = self->_valueLabel;
  tintColor = [MEMORY[0x277D75348] tintColor];
  [(UILabel *)v23 setTextColor:tintColor];

  [(NTKCDetailTableViewCell *)self setShowsSeparator:1];
  [(NTKCFaceDetailTitleValueEditOptionCell *)self setAccessoryType:1];
}

- (void)setActive:(BOOL)active
{
  if (self->_active != active)
  {
    self->_active = active;
    if (active)
    {
      _checkmarkImage = [(NTKCFaceDetailTitleValueEditOptionCell *)self _checkmarkImage];
      [(UIImageView *)self->_leadingAccessoryView setImage:_checkmarkImage];
    }

    else
    {
      [(UIImageView *)self->_leadingAccessoryView setImage:0];
    }

    if (self->_active)
    {
      valueText = self->_valueText;
    }

    else
    {
      valueText = 0;
    }

    valueLabel = self->_valueLabel;

    [(UILabel *)valueLabel setText:valueText];
  }
}

- (void)setTitleText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, text);
    [(UILabel *)self->_titleLabel setText:textCopy];
  }
}

- (void)setValueText:(id)text
{
  textCopy = text;
  if (![(NSString *)self->_valueText isEqualToString:?])
  {
    objc_storeStrong(&self->_valueText, text);
    if (self->_active)
    {
      v5 = textCopy;
    }

    else
    {
      v5 = 0;
    }

    [(UILabel *)self->_valueLabel setText:v5];
  }
}

@end