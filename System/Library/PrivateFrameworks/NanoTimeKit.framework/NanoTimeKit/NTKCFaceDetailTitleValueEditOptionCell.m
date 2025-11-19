@interface NTKCFaceDetailTitleValueEditOptionCell
- (NTKCFaceDetailTitleValueEditOptionCell)initWithEditOption:(id)a3;
- (double)_reservedSizeForImage;
- (id)_checkmarkImage;
- (void)_setupSubviews;
- (void)setActive:(BOOL)a3;
- (void)setTitleText:(id)a3;
- (void)setValueText:(id)a3;
@end

@implementation NTKCFaceDetailTitleValueEditOptionCell

- (NTKCFaceDetailTitleValueEditOptionCell)initWithEditOption:(id)a3
{
  v5 = a3;
  v6 = [objc_opt_class() reuseIdentifier];
  v18.receiver = self;
  v18.super_class = NTKCFaceDetailTitleValueEditOptionCell;
  v7 = [(NTKCDetailTableViewCell *)&v18 initWithStyle:0 reuseIdentifier:v6];

  if (v7)
  {
    objc_storeStrong(&v7->_editOption, a3);
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
  v3 = [(NTKCFaceDetailTitleValueEditOptionCell *)self contentView];
  [v3 addSubview:self->_alignmentView];

  [(UIStackView *)self->_alignmentView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIStackView *)self->_alignmentView setPreservesSuperviewLayoutMargins:1];
  v4 = [(NTKCFaceDetailTitleValueEditOptionCell *)self contentView];
  v5 = [v4 layoutMarginsGuide];

  v25 = MEMORY[0x277CCAAD0];
  v30 = [(UIStackView *)self->_alignmentView leadingAnchor];
  v29 = [v5 leadingAnchor];
  v28 = [v30 constraintEqualToAnchor:v29];
  v33[0] = v28;
  v27 = [(UIStackView *)self->_alignmentView trailingAnchor];
  v26 = [v5 trailingAnchor];
  v6 = [v27 constraintEqualToAnchor:v26];
  v33[1] = v6;
  v7 = [(UIStackView *)self->_alignmentView topAnchor];
  v31 = v5;
  v8 = [v5 topAnchor];
  v9 = [v7 constraintEqualToAnchor:v8];
  v33[2] = v9;
  v10 = [(UIStackView *)self->_alignmentView bottomAnchor];
  v11 = [v5 bottomAnchor];
  v12 = [v10 constraintEqualToAnchor:v11];
  v33[3] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v33 count:4];
  [v25 activateConstraints:v13];

  [(UIStackView *)self->_alignmentView setAxis:0];
  [(UIStackView *)self->_alignmentView setAlignment:3];
  [(UIStackView *)self->_alignmentView setSpacing:8.0];
  v14 = [(UIImageView *)self->_leadingAccessoryView widthAnchor];
  [(NTKCFaceDetailTitleValueEditOptionCell *)self _reservedSizeForImage];
  v15 = [v14 constraintEqualToConstant:?];
  [v15 setActive:1];

  titleLabel = self->_titleLabel;
  v17 = *MEMORY[0x277D76918];
  v18 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(UILabel *)titleLabel setFont:v18];

  v19 = self->_titleLabel;
  v20 = [MEMORY[0x277D75348] labelColor];
  [(UILabel *)v19 setTextColor:v20];

  valueLabel = self->_valueLabel;
  v22 = [MEMORY[0x277D74300] preferredFontForTextStyle:v17];
  [(UILabel *)valueLabel setFont:v22];

  v23 = self->_valueLabel;
  v24 = [MEMORY[0x277D75348] tintColor];
  [(UILabel *)v23 setTextColor:v24];

  [(NTKCDetailTableViewCell *)self setShowsSeparator:1];
  [(NTKCFaceDetailTitleValueEditOptionCell *)self setAccessoryType:1];
}

- (void)setActive:(BOOL)a3
{
  if (self->_active != a3)
  {
    self->_active = a3;
    if (a3)
    {
      v4 = [(NTKCFaceDetailTitleValueEditOptionCell *)self _checkmarkImage];
      [(UIImageView *)self->_leadingAccessoryView setImage:v4];
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

- (void)setTitleText:(id)a3
{
  v5 = a3;
  if (![(NSString *)self->_titleText isEqualToString:?])
  {
    objc_storeStrong(&self->_titleText, a3);
    [(UILabel *)self->_titleLabel setText:v5];
  }
}

- (void)setValueText:(id)a3
{
  v6 = a3;
  if (![(NSString *)self->_valueText isEqualToString:?])
  {
    objc_storeStrong(&self->_valueText, a3);
    if (self->_active)
    {
      v5 = v6;
    }

    else
    {
      v5 = 0;
    }

    [(UILabel *)self->_valueLabel setText:v5];
  }
}

@end