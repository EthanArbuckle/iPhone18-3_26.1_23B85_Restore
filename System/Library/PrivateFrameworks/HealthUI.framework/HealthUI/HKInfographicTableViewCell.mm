@interface HKInfographicTableViewCell
- (HKInfographicTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (id)_labelWithFont:(id)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)updateAutomationIdentifiersWith:(id)a3;
@end

@implementation HKInfographicTableViewCell

- (HKInfographicTableViewCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v69[11] = *MEMORY[0x1E69E9840];
  v68.receiver = self;
  v68.super_class = HKInfographicTableViewCell;
  v4 = [(HKInfographicTableViewCell *)&v68 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    v4->hideSeparator = 0;
    v6 = [(HKInfographicTableViewCell *)v4 _titleFont];
    v7 = [(HKInfographicTableViewCell *)v5 _labelWithFont:v6];
    titleLabel = v5->_titleLabel;
    v5->_titleLabel = v7;

    v9 = [(HKInfographicTableViewCell *)v5 _valueFont];
    v10 = [(HKInfographicTableViewCell *)v5 _labelWithFont:v9];
    valueLabel = v5->_valueLabel;
    v5->_valueLabel = v10;

    v12 = objc_alloc(MEMORY[0x1E69DD250]);
    v13 = [v12 initWithFrame:{*MEMORY[0x1E695F058], *(MEMORY[0x1E695F058] + 8), *(MEMORY[0x1E695F058] + 16), *(MEMORY[0x1E695F058] + 24)}];
    separator = v5->_separator;
    v5->_separator = v13;

    v15 = v5->_separator;
    v16 = [MEMORY[0x1E69DC888] separatorColor];
    [(UIView *)v15 setBackgroundColor:v16];

    [(UIView *)v5->_separator setHidden:v5->hideSeparator];
    [(UIView *)v5->_separator setTranslatesAutoresizingMaskIntoConstraints:0];
    LODWORD(v17) = 1148846080;
    [(UILabel *)v5->_titleLabel setContentCompressionResistancePriority:0 forAxis:v17];
    [(UILabel *)v5->_valueLabel setTextAlignment:2];
    v18 = [(HKInfographicTableViewCell *)v5 contentView];
    [v18 addSubview:v5->_titleLabel];

    v19 = [(HKInfographicTableViewCell *)v5 contentView];
    [v19 addSubview:v5->_valueLabel];

    v20 = [(HKInfographicTableViewCell *)v5 contentView];
    [v20 addSubview:v5->_separator];

    v21 = [(HKInfographicTableViewCell *)v5 contentView];
    [v21 setDirectionalLayoutMargins:{3.0, 3.0, 3.0, 3.0}];

    v50 = MEMORY[0x1E696ACD8];
    v66 = [(UILabel *)v5->_titleLabel topAnchor];
    v67 = [(HKInfographicTableViewCell *)v5 contentView];
    v65 = [v67 layoutMarginsGuide];
    v64 = [v65 topAnchor];
    v63 = [v66 constraintEqualToAnchor:v64];
    v69[0] = v63;
    v61 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v62 = [(HKInfographicTableViewCell *)v5 contentView];
    v60 = [v62 layoutMarginsGuide];
    v59 = [v60 leadingAnchor];
    v58 = [v61 constraintEqualToAnchor:v59];
    v69[1] = v58;
    v56 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v57 = [(HKInfographicTableViewCell *)v5 contentView];
    v55 = [v57 layoutMarginsGuide];
    v54 = [v55 bottomAnchor];
    v53 = [v56 constraintEqualToAnchor:v54];
    v69[2] = v53;
    v52 = [(UILabel *)v5->_valueLabel leadingAnchor];
    v51 = [(UILabel *)v5->_titleLabel trailingAnchor];
    v49 = [v52 constraintEqualToAnchor:v51 constant:3.0];
    v69[3] = v49;
    v48 = [(UILabel *)v5->_valueLabel topAnchor];
    v47 = [(UILabel *)v5->_titleLabel topAnchor];
    v46 = [v48 constraintEqualToAnchor:v47];
    v69[4] = v46;
    v44 = [(UILabel *)v5->_valueLabel trailingAnchor];
    v45 = [(HKInfographicTableViewCell *)v5 contentView];
    v43 = [v45 layoutMarginsGuide];
    v42 = [v43 trailingAnchor];
    v41 = [v44 constraintEqualToAnchor:v42];
    v69[5] = v41;
    v40 = [(UILabel *)v5->_valueLabel bottomAnchor];
    v39 = [(UILabel *)v5->_titleLabel bottomAnchor];
    v38 = [v40 constraintEqualToAnchor:v39];
    v69[6] = v38;
    v37 = [(UIView *)v5->_separator heightAnchor];
    v36 = [v37 constraintEqualToConstant:0.5];
    v69[7] = v36;
    v35 = [(UIView *)v5->_separator leadingAnchor];
    v34 = [(UILabel *)v5->_titleLabel leadingAnchor];
    v22 = [v35 constraintEqualToAnchor:v34];
    v69[8] = v22;
    v23 = [(UIView *)v5->_separator trailingAnchor];
    v24 = [(UILabel *)v5->_valueLabel trailingAnchor];
    v25 = [v23 constraintEqualToAnchor:v24];
    v69[9] = v25;
    v26 = [(UIView *)v5->_separator bottomAnchor];
    v27 = [(HKInfographicTableViewCell *)v5 contentView];
    v28 = [v27 bottomAnchor];
    v29 = [v26 constraintEqualToAnchor:v28];
    v69[10] = v29;
    v30 = [MEMORY[0x1E695DEC8] arrayWithObjects:v69 count:11];
    [v50 activateConstraints:v30];

    v31 = [(HKInfographicTableViewCell *)v5 contentView];
    v32 = [v31 layer];
    [v32 setMasksToBounds:1];
  }

  return v5;
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  v4.receiver = self;
  v4.super_class = HKInfographicTableViewCell;
  [(HKInfographicTableViewCell *)&v4 setSelected:a3 animated:a4];
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
    v18[1] = @"InfographicTableViewItem";
    v18[2] = @"Cell";
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:3];
    v7 = HKUIJoinStringsForAutomationIdentifier(v6);
    [(HKInfographicTableViewCell *)self setAccessibilityIdentifier:v7];

    v17[0] = v5;
    v17[1] = @"InfographicTableViewItem";
    v17[2] = @"Title";
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:3];
    v9 = HKUIJoinStringsForAutomationIdentifier(v8);
    v10 = [(HKInfographicTableViewCell *)self titleLabel];
    [v10 setAccessibilityIdentifier:v9];

    v16[0] = v5;
    v16[1] = @"InfographicTableViewItem";
    v16[2] = @"Value";
    v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v16 count:3];
    v12 = HKUIJoinStringsForAutomationIdentifier(v11);
    v13 = [(HKInfographicTableViewCell *)self valueLabel];
    [v13 setAccessibilityIdentifier:v12];
  }

  else
  {
    [(HKInfographicTableViewCell *)self setAccessibilityIdentifier:0];
    v14 = [(HKInfographicTableViewCell *)self titleLabel];
    [v14 setAccessibilityIdentifier:0];

    v15 = [(HKInfographicTableViewCell *)self valueLabel];
    [v15 setAccessibilityIdentifier:0];
  }
}

@end