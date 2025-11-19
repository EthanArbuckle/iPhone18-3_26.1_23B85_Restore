@interface HUTitleValueEditableTextCell
- (HUTitleValueEditableTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_addTitleLabel;
- (void)_addValueTextField;
- (void)_updateTitle;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)a3;
- (void)setHideTitle:(BOOL)a3;
- (void)setSelected:(BOOL)a3 animated:(BOOL)a4;
- (void)setTitleFont:(id)a3;
- (void)setTitleText:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTitleValueEditableTextCell

- (HUTitleValueEditableTextCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v8.receiver = self;
  v8.super_class = HUTitleValueEditableTextCell;
  v4 = [(HUTitleValueEditableTextCell *)&v8 initWithStyle:a3 reuseIdentifier:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    titleFont = v4->_titleFont;
    v4->_titleFont = v5;

    [(HUTitleValueEditableTextCell *)v4 _addTitleLabel];
    [(HUTitleValueEditableTextCell *)v4 _addValueTextField];
  }

  return v4;
}

- (void)prepareForReuse
{
  v12.receiver = self;
  v12.super_class = HUTitleValueEditableTextCell;
  [(HUTitleValueEditableTextCell *)&v12 prepareForReuse];
  [(HUTitleValueEditableTextCell *)self setHideTitle:0];
  [(HUTitleValueEditableTextCell *)self setTitleText:0];
  v3 = *MEMORY[0x277D76918];
  v4 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
  [(HUTitleValueEditableTextCell *)self setTitleFont:v4];

  v5 = [MEMORY[0x277D74300] preferredFontForTextStyle:v3];
  v6 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v6 setFont:v5];

  v7 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v7 setText:0];

  v8 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v8 setPlaceholder:0];

  v9 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v9 setDelegate:0];

  v10 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v10 setEnabled:1];

  v11 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v11 endEditing:1];
}

- (void)setTitleText:(id)a3
{
  objc_storeStrong(&self->_titleText, a3);
  v5 = a3;
  v6 = [(HUTitleValueEditableTextCell *)self titleLabel];
  [v6 setText:v5];
}

- (void)setTitleFont:(id)a3
{
  objc_storeStrong(&self->_titleFont, a3);
  v5 = a3;
  v6 = [(HUTitleValueEditableTextCell *)self titleLabel];
  [v6 setFont:v5];
}

- (void)setHideTitle:(BOOL)a3
{
  if (self->_hideTitle != a3)
  {
    self->_hideTitle = a3;
    if (a3)
    {
      [(UILabel *)self->_titleLabel removeFromSuperview];
      [(HUTitleValueEditableTextCell *)self setTitleLabelConstraints:0];

      [(HUTitleValueEditableTextCell *)self setLabelsSpacingConstraint:0];
    }

    else
    {
      [(HUTitleValueEditableTextCell *)self _addTitleLabel];

      [(HUTitleValueEditableTextCell *)self setNeedsUpdateConstraints];
    }
  }
}

- (void)setSelected:(BOOL)a3 animated:(BOOL)a4
{
  if (a3)
  {
    v4 = [(HUTitleValueEditableTextCell *)self valueTextField:a3];
    [v4 becomeFirstResponder];
  }
}

- (void)setDisabled:(BOOL)a3
{
  self->_disabled = a3;
  v4 = !a3;
  v5 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v5 setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v6 = ;
  v7 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v7 setTextColor:v6];

  v8 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [v8 setClearButtonMode:v4];

  [(HUTitleValueEditableTextCell *)self _updateTitle];
}

- (void)updateConstraints
{
  v74[4] = *MEMORY[0x277D85DE8];
  v3 = [(HUTitleValueEditableTextCell *)self contentView];
  v4 = [v3 layoutMarginsGuide];

  v5 = [(HUTitleValueEditableTextCell *)self titleLabel];
  v6 = [v5 superview];
  if (v6)
  {
    v7 = v6;
    v8 = [(HUTitleValueEditableTextCell *)self titleLabelConstraints];

    if (v8)
    {
      goto LABEL_5;
    }

    v70 = [(HUTitleValueEditableTextCell *)self titleLabel];
    v68 = [v70 leadingAnchor];
    v66 = [v4 leadingAnchor];
    v64 = [v68 constraintEqualToAnchor:v66];
    v74[0] = v64;
    v62 = [(HUTitleValueEditableTextCell *)self titleLabel];
    v60 = [v62 widthAnchor];
    v58 = [v4 widthAnchor];
    v56 = [v60 constraintLessThanOrEqualToAnchor:v58];
    v74[1] = v56;
    v54 = [(HUTitleValueEditableTextCell *)self titleLabel];
    v9 = [v54 centerYAnchor];
    v10 = [v4 centerYAnchor];
    v11 = [v9 constraintEqualToAnchor:v10];
    v74[2] = v11;
    v12 = [(HUTitleValueEditableTextCell *)self titleLabel];
    v13 = [v12 heightAnchor];
    [v4 heightAnchor];
    v15 = v14 = v4;
    v16 = [v13 constraintEqualToAnchor:v15];
    v74[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [(HUTitleValueEditableTextCell *)self setTitleLabelConstraints:v17];

    v4 = v14;
    v18 = MEMORY[0x277CCAAD0];
    v5 = [(HUTitleValueEditableTextCell *)self titleLabelConstraints];
    [v18 activateConstraints:v5];
  }

LABEL_5:
  v19 = [(HUTitleValueEditableTextCell *)self valueTextField];
  v20 = [v19 superview];
  if (v20)
  {
    v21 = v20;
    v22 = [(HUTitleValueEditableTextCell *)self valueTextFieldConstraints];

    if (v22)
    {
      goto LABEL_9;
    }

    v71 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v69 = [v71 trailingAnchor];
    v67 = [v4 trailingAnchor];
    v65 = [v69 constraintEqualToAnchor:v67];
    v73[0] = v65;
    v63 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v61 = [v63 widthAnchor];
    v59 = [v4 widthAnchor];
    v57 = [v61 constraintLessThanOrEqualToAnchor:v59];
    v73[1] = v57;
    v55 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v53 = [v55 widthAnchor];
    v52 = [v4 widthAnchor];
    v51 = [v53 constraintGreaterThanOrEqualToAnchor:v52 multiplier:0.4];
    v73[2] = v51;
    v50 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v23 = [v50 centerYAnchor];
    [v4 centerYAnchor];
    v25 = v24 = v4;
    v26 = [v23 constraintEqualToAnchor:v25];
    v73[3] = v26;
    v27 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v28 = [v27 heightAnchor];
    v29 = [v24 heightAnchor];
    v30 = [v28 constraintEqualToAnchor:v29];
    v73[4] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
    [(HUTitleValueEditableTextCell *)self setValueTextFieldConstraints:v31];

    v4 = v24;
    v32 = MEMORY[0x277CCAAD0];
    v19 = [(HUTitleValueEditableTextCell *)self valueTextFieldConstraints];
    [v32 activateConstraints:v19];
  }

LABEL_9:
  v33 = [(HUTitleValueEditableTextCell *)self titleLabel];
  v34 = [v33 superview];
  if (v34)
  {
    v35 = v34;
    v36 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v37 = [v36 superview];
    if (v37)
    {
      v38 = v37;
      v39 = [(HUTitleValueEditableTextCell *)self labelsSpacingConstraint];

      if (v39)
      {
        goto LABEL_15;
      }

      v40 = [(HUTitleValueEditableTextCell *)self titleLabel];
      v41 = [v40 trailingAnchor];
      v42 = [(HUTitleValueEditableTextCell *)self valueTextField];
      v43 = [v42 leadingAnchor];
      v44 = [v41 constraintLessThanOrEqualToAnchor:v43 constant:-16.0];
      [(HUTitleValueEditableTextCell *)self setLabelsSpacingConstraint:v44];

      v33 = [(HUTitleValueEditableTextCell *)self labelsSpacingConstraint];
      [v33 setActive:1];
    }

    else
    {
    }
  }

LABEL_15:
  v45 = [(HUTitleValueEditableTextCell *)self minimumHeightConstraint];

  if (!v45)
  {
    v46 = [(HUTitleValueEditableTextCell *)self contentView];
    v47 = [v46 heightAnchor];
    v48 = [v47 constraintEqualToConstant:*MEMORY[0x277D76F38]];
    [(HUTitleValueEditableTextCell *)self setMinimumHeightConstraint:v48];

    v49 = [(HUTitleValueEditableTextCell *)self minimumHeightConstraint];
    [v49 setActive:1];
  }

  v72.receiver = self;
  v72.super_class = HUTitleValueEditableTextCell;
  [(HUTitleValueEditableTextCell *)&v72 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v21[2] = *MEMORY[0x277D85DE8];
  v4 = [(HUTitleValueEditableTextCell *)self item];
  v5 = [v4 latestResults];

  v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTitleValueEditableTextCell *)self setTitleText:v6];

  v7 = *MEMORY[0x277D13E20];
  v8 = [v5 objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v8)
  {
    v20[0] = *MEMORY[0x277D740A8];
    v9 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v10 = [v9 font];
    v21[0] = v10;
    v20[1] = *MEMORY[0x277D740C0];
    v11 = [(HUTitleValueEditableTextCell *)self valueTextField];
    v12 = [v11 textColor];
    v21[1] = v12;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v14 = [v5 objectForKeyedSubscript:v7];
    if ([v14 prefersDynamicString])
    {
      v15 = [(HUTitleValueEditableTextCell *)self valueTextField];
      [v15 bounds];
      v18 = [v14 dynamicStringForSize:v13 attributes:{v16, v17}];
      v19 = [(HUTitleValueEditableTextCell *)self valueTextField];
      [v19 setAttributedText:v18];
    }

    else
    {
      v15 = [v14 stringWithAttributes:v13];
      v18 = [(HUTitleValueEditableTextCell *)self valueTextField];
      [v18 setAttributedText:v15];
    }
  }

  [(HUTitleValueEditableTextCell *)self _updateTitle];
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
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    titleLabel = self->_titleLabel;
    self->_titleLabel = v5;

    [(UILabel *)self->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    v7 = [(HUTitleValueEditableTextCell *)self titleFont];
    [(UILabel *)self->_titleLabel setFont:v7];

    v8 = [(HUTitleValueEditableTextCell *)self titleText];
    [(UILabel *)self->_titleLabel setText:v8];

    [(HUTitleValueEditableTextCell *)self _updateTitle];
  }

  v9 = [(HUTitleValueEditableTextCell *)self contentView];
  [v9 addSubview:self->_titleLabel];
}

- (void)_addValueTextField
{
  v3 = [(UITextField *)self->_valueTextField superview];

  if (v3)
  {
    NSLog(&cfstr_ValueLabelAlre.isa, self);
  }

  if (!self->_valueTextField)
  {
    v4 = objc_opt_new();
    valueTextField = self->_valueTextField;
    self->_valueTextField = v4;

    v6 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76918]];
    [(UITextField *)self->_valueTextField setFont:v6];

    [(UITextField *)self->_valueTextField setReturnKeyType:9];
    [(UITextField *)self->_valueTextField setClearButtonMode:3];
    [(UITextField *)self->_valueTextField setTextAlignment:2 * ([(HUTitleValueEditableTextCell *)self effectiveUserInterfaceLayoutDirection]== 0)];
    v7 = [MEMORY[0x277D75348] systemGrayColor];
    [(UITextField *)self->_valueTextField setTextColor:v7];

    [(UITextField *)self->_valueTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  v8 = [(HUTitleValueEditableTextCell *)self contentView];
  [v8 addSubview:self->_valueTextField];
}

- (void)_updateTitle
{
  if ([(HUTitleValueEditableTextCell *)self isDisabled])
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }

  else
  {
    [MEMORY[0x277D75348] labelColor];
  }
  v3 = ;
  [(UILabel *)self->_titleLabel setTextColor:v3];
}

@end