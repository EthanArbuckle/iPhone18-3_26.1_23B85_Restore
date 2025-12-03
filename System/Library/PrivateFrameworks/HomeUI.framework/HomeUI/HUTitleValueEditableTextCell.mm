@interface HUTitleValueEditableTextCell
- (HUTitleValueEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_addTitleLabel;
- (void)_addValueTextField;
- (void)_updateTitle;
- (void)prepareForReuse;
- (void)setDisabled:(BOOL)disabled;
- (void)setHideTitle:(BOOL)title;
- (void)setSelected:(BOOL)selected animated:(BOOL)animated;
- (void)setTitleFont:(id)font;
- (void)setTitleText:(id)text;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTitleValueEditableTextCell

- (HUTitleValueEditableTextCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v8.receiver = self;
  v8.super_class = HUTitleValueEditableTextCell;
  v4 = [(HUTitleValueEditableTextCell *)&v8 initWithStyle:style reuseIdentifier:identifier];
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
  valueTextField = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField setFont:v5];

  valueTextField2 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField2 setText:0];

  valueTextField3 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField3 setPlaceholder:0];

  valueTextField4 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField4 setDelegate:0];

  valueTextField5 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField5 setEnabled:1];

  valueTextField6 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField6 endEditing:1];
}

- (void)setTitleText:(id)text
{
  objc_storeStrong(&self->_titleText, text);
  textCopy = text;
  titleLabel = [(HUTitleValueEditableTextCell *)self titleLabel];
  [titleLabel setText:textCopy];
}

- (void)setTitleFont:(id)font
{
  objc_storeStrong(&self->_titleFont, font);
  fontCopy = font;
  titleLabel = [(HUTitleValueEditableTextCell *)self titleLabel];
  [titleLabel setFont:fontCopy];
}

- (void)setHideTitle:(BOOL)title
{
  if (self->_hideTitle != title)
  {
    self->_hideTitle = title;
    if (title)
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

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
  if (selected)
  {
    v4 = [(HUTitleValueEditableTextCell *)self valueTextField:selected];
    [v4 becomeFirstResponder];
  }
}

- (void)setDisabled:(BOOL)disabled
{
  self->_disabled = disabled;
  v4 = !disabled;
  valueTextField = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField setEnabled:v4];

  if (v4)
  {
    [MEMORY[0x277D75348] labelColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemGrayColor];
  }
  v6 = ;
  valueTextField2 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField2 setTextColor:v6];

  valueTextField3 = [(HUTitleValueEditableTextCell *)self valueTextField];
  [valueTextField3 setClearButtonMode:v4];

  [(HUTitleValueEditableTextCell *)self _updateTitle];
}

- (void)updateConstraints
{
  v74[4] = *MEMORY[0x277D85DE8];
  contentView = [(HUTitleValueEditableTextCell *)self contentView];
  layoutMarginsGuide = [contentView layoutMarginsGuide];

  titleLabel = [(HUTitleValueEditableTextCell *)self titleLabel];
  superview = [titleLabel superview];
  if (superview)
  {
    v7 = superview;
    titleLabelConstraints = [(HUTitleValueEditableTextCell *)self titleLabelConstraints];

    if (titleLabelConstraints)
    {
      goto LABEL_5;
    }

    titleLabel2 = [(HUTitleValueEditableTextCell *)self titleLabel];
    leadingAnchor = [titleLabel2 leadingAnchor];
    leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
    v64 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v74[0] = v64;
    titleLabel3 = [(HUTitleValueEditableTextCell *)self titleLabel];
    widthAnchor = [titleLabel3 widthAnchor];
    widthAnchor2 = [layoutMarginsGuide widthAnchor];
    v56 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    v74[1] = v56;
    titleLabel4 = [(HUTitleValueEditableTextCell *)self titleLabel];
    centerYAnchor = [titleLabel4 centerYAnchor];
    centerYAnchor2 = [layoutMarginsGuide centerYAnchor];
    v11 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v74[2] = v11;
    titleLabel5 = [(HUTitleValueEditableTextCell *)self titleLabel];
    heightAnchor = [titleLabel5 heightAnchor];
    [layoutMarginsGuide heightAnchor];
    v15 = v14 = layoutMarginsGuide;
    v16 = [heightAnchor constraintEqualToAnchor:v15];
    v74[3] = v16;
    v17 = [MEMORY[0x277CBEA60] arrayWithObjects:v74 count:4];
    [(HUTitleValueEditableTextCell *)self setTitleLabelConstraints:v17];

    layoutMarginsGuide = v14;
    v18 = MEMORY[0x277CCAAD0];
    titleLabel = [(HUTitleValueEditableTextCell *)self titleLabelConstraints];
    [v18 activateConstraints:titleLabel];
  }

LABEL_5:
  valueTextField = [(HUTitleValueEditableTextCell *)self valueTextField];
  superview2 = [valueTextField superview];
  if (superview2)
  {
    v21 = superview2;
    valueTextFieldConstraints = [(HUTitleValueEditableTextCell *)self valueTextFieldConstraints];

    if (valueTextFieldConstraints)
    {
      goto LABEL_9;
    }

    valueTextField2 = [(HUTitleValueEditableTextCell *)self valueTextField];
    trailingAnchor = [valueTextField2 trailingAnchor];
    trailingAnchor2 = [layoutMarginsGuide trailingAnchor];
    v65 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v73[0] = v65;
    valueTextField3 = [(HUTitleValueEditableTextCell *)self valueTextField];
    widthAnchor3 = [valueTextField3 widthAnchor];
    widthAnchor4 = [layoutMarginsGuide widthAnchor];
    v57 = [widthAnchor3 constraintLessThanOrEqualToAnchor:widthAnchor4];
    v73[1] = v57;
    valueTextField4 = [(HUTitleValueEditableTextCell *)self valueTextField];
    widthAnchor5 = [valueTextField4 widthAnchor];
    widthAnchor6 = [layoutMarginsGuide widthAnchor];
    v51 = [widthAnchor5 constraintGreaterThanOrEqualToAnchor:widthAnchor6 multiplier:0.4];
    v73[2] = v51;
    valueTextField5 = [(HUTitleValueEditableTextCell *)self valueTextField];
    centerYAnchor3 = [valueTextField5 centerYAnchor];
    [layoutMarginsGuide centerYAnchor];
    v25 = v24 = layoutMarginsGuide;
    v26 = [centerYAnchor3 constraintEqualToAnchor:v25];
    v73[3] = v26;
    valueTextField6 = [(HUTitleValueEditableTextCell *)self valueTextField];
    heightAnchor2 = [valueTextField6 heightAnchor];
    heightAnchor3 = [v24 heightAnchor];
    v30 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
    v73[4] = v30;
    v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v73 count:5];
    [(HUTitleValueEditableTextCell *)self setValueTextFieldConstraints:v31];

    layoutMarginsGuide = v24;
    v32 = MEMORY[0x277CCAAD0];
    valueTextField = [(HUTitleValueEditableTextCell *)self valueTextFieldConstraints];
    [v32 activateConstraints:valueTextField];
  }

LABEL_9:
  titleLabel6 = [(HUTitleValueEditableTextCell *)self titleLabel];
  superview3 = [titleLabel6 superview];
  if (superview3)
  {
    v35 = superview3;
    valueTextField7 = [(HUTitleValueEditableTextCell *)self valueTextField];
    superview4 = [valueTextField7 superview];
    if (superview4)
    {
      v38 = superview4;
      labelsSpacingConstraint = [(HUTitleValueEditableTextCell *)self labelsSpacingConstraint];

      if (labelsSpacingConstraint)
      {
        goto LABEL_15;
      }

      titleLabel7 = [(HUTitleValueEditableTextCell *)self titleLabel];
      trailingAnchor3 = [titleLabel7 trailingAnchor];
      valueTextField8 = [(HUTitleValueEditableTextCell *)self valueTextField];
      leadingAnchor3 = [valueTextField8 leadingAnchor];
      v44 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:leadingAnchor3 constant:-16.0];
      [(HUTitleValueEditableTextCell *)self setLabelsSpacingConstraint:v44];

      titleLabel6 = [(HUTitleValueEditableTextCell *)self labelsSpacingConstraint];
      [titleLabel6 setActive:1];
    }

    else
    {
    }
  }

LABEL_15:
  minimumHeightConstraint = [(HUTitleValueEditableTextCell *)self minimumHeightConstraint];

  if (!minimumHeightConstraint)
  {
    contentView2 = [(HUTitleValueEditableTextCell *)self contentView];
    heightAnchor4 = [contentView2 heightAnchor];
    v48 = [heightAnchor4 constraintEqualToConstant:*MEMORY[0x277D76F38]];
    [(HUTitleValueEditableTextCell *)self setMinimumHeightConstraint:v48];

    minimumHeightConstraint2 = [(HUTitleValueEditableTextCell *)self minimumHeightConstraint];
    [minimumHeightConstraint2 setActive:1];
  }

  v72.receiver = self;
  v72.super_class = HUTitleValueEditableTextCell;
  [(HUTitleValueEditableTextCell *)&v72 updateConstraints];
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v21[2] = *MEMORY[0x277D85DE8];
  item = [(HUTitleValueEditableTextCell *)self item];
  latestResults = [item latestResults];

  v6 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  [(HUTitleValueEditableTextCell *)self setTitleText:v6];

  v7 = *MEMORY[0x277D13E20];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E20]];

  if (v8)
  {
    v20[0] = *MEMORY[0x277D740A8];
    valueTextField = [(HUTitleValueEditableTextCell *)self valueTextField];
    font = [valueTextField font];
    v21[0] = font;
    v20[1] = *MEMORY[0x277D740C0];
    valueTextField2 = [(HUTitleValueEditableTextCell *)self valueTextField];
    textColor = [valueTextField2 textColor];
    v21[1] = textColor;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];

    v14 = [latestResults objectForKeyedSubscript:v7];
    if ([v14 prefersDynamicString])
    {
      valueTextField3 = [(HUTitleValueEditableTextCell *)self valueTextField];
      [valueTextField3 bounds];
      valueTextField5 = [v14 dynamicStringForSize:v13 attributes:{v16, v17}];
      valueTextField4 = [(HUTitleValueEditableTextCell *)self valueTextField];
      [valueTextField4 setAttributedText:valueTextField5];
    }

    else
    {
      valueTextField3 = [v14 stringWithAttributes:v13];
      valueTextField5 = [(HUTitleValueEditableTextCell *)self valueTextField];
      [valueTextField5 setAttributedText:valueTextField3];
    }
  }

  [(HUTitleValueEditableTextCell *)self _updateTitle];
}

- (void)_addTitleLabel
{
  superview = [(UILabel *)self->_titleLabel superview];

  if (superview)
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
    titleFont = [(HUTitleValueEditableTextCell *)self titleFont];
    [(UILabel *)self->_titleLabel setFont:titleFont];

    titleText = [(HUTitleValueEditableTextCell *)self titleText];
    [(UILabel *)self->_titleLabel setText:titleText];

    [(HUTitleValueEditableTextCell *)self _updateTitle];
  }

  contentView = [(HUTitleValueEditableTextCell *)self contentView];
  [contentView addSubview:self->_titleLabel];
}

- (void)_addValueTextField
{
  superview = [(UITextField *)self->_valueTextField superview];

  if (superview)
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
    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    [(UITextField *)self->_valueTextField setTextColor:systemGrayColor];

    [(UITextField *)self->_valueTextField setTranslatesAutoresizingMaskIntoConstraints:0];
  }

  contentView = [(HUTitleValueEditableTextCell *)self contentView];
  [contentView addSubview:self->_valueTextField];
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