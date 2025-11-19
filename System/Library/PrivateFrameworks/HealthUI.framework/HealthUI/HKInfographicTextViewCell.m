@interface HKInfographicTextViewCell
- (HKInfographicTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_labelWithFont:(id)a3;
- (void)updateAutomationIdentifiersWith:(id)a3;
@end

@implementation HKInfographicTextViewCell

- (HKInfographicTextViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v35[4] = *MEMORY[0x1E69E9840];
  v34.receiver = self;
  v34.super_class = HKInfographicTextViewCell;
  v4 = [(HKInfographicTextViewCell *)&v34 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v6 = [(HKInfographicTextViewCell *)v4 _descriptionFont];
    v7 = [(HKInfographicTextViewCell *)v5 _labelWithFont:v6];
    descriptionLabel = v5->_descriptionLabel;
    v5->_descriptionLabel = v7;

    v9 = [(HKInfographicTextViewCell *)v5 contentView];
    [v9 addSubview:v5->_descriptionLabel];

    v10 = [(HKInfographicTextViewCell *)v5 contentView];
    [v10 setDirectionalLayoutMargins:{16.0, 16.0, 16.0, 16.0}];

    v24 = MEMORY[0x1E696ACD8];
    v32 = [(UILabel *)v5->_descriptionLabel topAnchor];
    v33 = [(HKInfographicTextViewCell *)v5 contentView];
    v31 = [v33 layoutMarginsGuide];
    v30 = [v31 topAnchor];
    v29 = [v32 constraintEqualToAnchor:v30];
    v35[0] = v29;
    v27 = [(UILabel *)v5->_descriptionLabel leadingAnchor];
    v28 = [(HKInfographicTextViewCell *)v5 contentView];
    v26 = [v28 layoutMarginsGuide];
    v25 = [v26 leadingAnchor];
    v23 = [v27 constraintEqualToAnchor:v25];
    v35[1] = v23;
    v21 = [(UILabel *)v5->_descriptionLabel trailingAnchor];
    v22 = [(HKInfographicTextViewCell *)v5 contentView];
    v11 = [v22 layoutMarginsGuide];
    v12 = [v11 trailingAnchor];
    v13 = [v21 constraintEqualToAnchor:v12];
    v35[2] = v13;
    v14 = [(UILabel *)v5->_descriptionLabel bottomAnchor];
    v15 = [(HKInfographicTextViewCell *)v5 contentView];
    v16 = [v15 layoutMarginsGuide];
    v17 = [v16 bottomAnchor];
    v18 = [v14 constraintEqualToAnchor:v17];
    v35[3] = v18;
    v19 = [MEMORY[0x1E695DEC8] arrayWithObjects:v35 count:4];
    [v24 activateConstraints:v19];
  }

  return v5;
}

- (id)_labelWithFont:(id)a3
{
  v4 = MEMORY[0x1E69DCC10];
  v5 = a3;
  v6 = [v4 alloc];
  v7 = [v6 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  [v7 setFont:v5];

  [v7 setAdjustsFontForContentSizeCategory:1];
  v8 = [(HKInfographicTextViewCell *)self _descriptionTextColor];
  [v7 setTextColor:v8];

  [v7 setNumberOfLines:0];
  LODWORD(v9) = 1132068864;
  [v7 setContentCompressionResistancePriority:0 forAxis:v9];
  LODWORD(v10) = 1132068864;
  [v7 setContentHuggingPriority:0 forAxis:v10];
  [v7 setLineBreakMode:0];

  return v7;
}

- (void)updateAutomationIdentifiersWith:(id)a3
{
  v13[3] = *MEMORY[0x1E69E9840];
  v4 = a3;
  v5 = v4;
  if (v4)
  {
    v13[0] = v4;
    v13[1] = @"InfographicTextItem";
    v13[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v13 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicTextViewCell *)self setAccessibilityIdentifier:v7];

    v12[0] = v5;
    v12[1] = @"InfographicTextItem";
    v12[2] = @"Description";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    v10 = [(HKInfographicTextViewCell *)self descriptionLabel];
    [v10 setAccessibilityIdentifier:v9];
  }

  else
  {
    [(HKInfographicTextViewCell *)self setAccessibilityIdentifier:0];
    v11 = [(HKInfographicTextViewCell *)self descriptionLabel];
    [v11 setAccessibilityIdentifier:0];
  }
}

@end