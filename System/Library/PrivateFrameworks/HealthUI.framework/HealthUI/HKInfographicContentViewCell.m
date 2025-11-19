@interface HKInfographicContentViewCell
- (HKInfographicContentViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_labelWithFont:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateAutomationIdentifiersWith:(id)a3;
@end

@implementation HKInfographicContentViewCell

- (HKInfographicContentViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v50[7] = *MEMORY[0x1E69E9840];
  v49.receiver = self;
  v49.super_class = HKInfographicContentViewCell;
  v4 = [(HKInfographicContentViewCell *)&v49 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HKInfographicContentViewCell *)v4 _titleFont];
    v7 = [(HKInfographicContentViewCell *)v5 _labelWithFont:v6];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    v9 = [(HKInfographicContentViewCell *)v5 _descriptionFont];
    v10 = [(HKInfographicContentViewCell *)v5 _labelWithFont:v9];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v10;

    v12 = [(HKInfographicContentViewCell *)v5 contentView];
    [v12 addSubview:v5->_titleLabel];

    v13 = [(HKInfographicContentViewCell *)v5 contentView];
    [v13 addSubview:v5->_descriptionLabel];

    v14 = [(HKInfographicContentViewCell *)v5 contentView];
    [v14 setDirectionalLayoutMargins:{7.0, 7.0, 7.0, 7.0}];

    v36 = MEMORY[0x1E696ACD8];
    v47 = [(UILabel *)v5->_titleLabel topAnchor];
    v48 = [(HKInfographicContentViewCell *)v5 contentView];
    v46 = [v48 layoutMarginsGuide];
    v45 = [v46 topAnchor];
    v44 = [v47 constraintEqualToAnchor:v45];
    v50[0] = v44;
    v42 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v43 = [(HKInfographicContentViewCell *)v5 contentView];
    v41 = [v43 layoutMarginsGuide];
    v40 = [v41 leadingAnchor];
    v39 = [v42 constraintEqualToAnchor:v40];
    v50[1] = v39;
    v37 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v38 = [(HKInfographicContentViewCell *)v5 contentView];
    v35 = [v38 layoutMarginsGuide];
    v34 = [v35 trailingAnchor];
    v33 = [v37 constraintEqualToAnchor:v34];
    v50[2] = v33;
    v32 = [(UILabel *)v5->_descriptionLabel topAnchor];
    v31 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v30 = [v32 constraintEqualToAnchor:v31 constant:3.0];
    v50[3] = v30;
    v29 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    v28 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v27 = [v29 constraintEqualToAnchor:v28];
    v50[4] = v27;
    v15 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    v16 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v17 = [v15 constraintEqualToAnchor:v16];
    v50[5] = v17;
    v18 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    v19 = [(HKInfographicContentViewCell *)v5 contentView];
    v20 = [v19 layoutMarginsGuide];
    v21 = [v20 bottomAnchor];
    v22 = [v18 constraintEqualToAnchor:v21];
    v50[6] = v22;
    v23 = [MEMORY[0x1E695DEC8] arrayWithObjects:v50 count:7];
    [v36 activateConstraints:v23];

    v24 = [(HKInfographicContentViewCell *)v5 contentView];
    v25 = [v24 layer];
    [v25 setMasksToBounds:1];
  }

  return v5;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = HKInfographicContentViewCell;
  [(HKInfographicContentViewCell *)&v4 setSelected:a3 animated:a4];
}

- (id)_labelWithFont:(id)a3
{
  v3 = MEMORY[0x1E69DCC10];
  v4 = a3;
  v5 = [v3 alloc];
  v6 = [v5 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v6 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v6 setFont:v4];

  [v6 setAdjustsFontForContentSizeCategory:1];
  v7 = [MEMORY[0x1E69DC888] labelColor];
  [v6 setTextColor:v7];

  [v6 setClipsToBounds:0];
  [v6 setNumberOfLines:0];
  LODWORD(v8) = 1132068864;
  [v6 setContentCompressionResistancePriority:0 forAxis:v8];
  LODWORD(v9) = 1132068864;
  [v6 setContentHuggingPriority:0 forAxis:v9];
  [v6 setLineBreakMode:0];

  return v6;
}

- (void)updateAutomationIdentifiersWith:(id)a3
{
  v18[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v18[0] = v4;
    v18[1] = @"InfographicContentItem";
    v18[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicContentViewCell *)self setAccessibilityIdentifier:v7];

    v17[0] = v5;
    v17[1] = @"InfographicContentItem";
    v17[2] = @"Title";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    v10 = [(HKInfographicContentViewCell *)self titleLabel];
    [v10 setAccessibilityIdentifier:v9];

    v16[0] = v5;
    v16[1] = @"InfographicContentItem";
    v16[2] = @"Description";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v12 = HKUIJoinStringsForAutomationIdentifier(v11);
    v13 = [(HKInfographicContentViewCell *)self descriptionLabel];
    [v13 setAccessibilityIdentifier:v12];
  }

  else
  {
    [(HKInfographicContentViewCell *)self setAccessibilityIdentifier:0];
    v14 = [(HKInfographicContentViewCell *)self titleLabel];
    [v14 setAccessibilityIdentifier:0];

    v15 = [(HKInfographicContentViewCell *)self descriptionLabel];
    [v15 setAccessibilityIdentifier:0];
  }
}

@end