@interface CNFRegSettingsAccountCell
- (CNFRegSettingsAccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)specifier;
- (void)setValue:(id)value;
@end

@implementation CNFRegSettingsAccountCell

- (CNFRegSettingsAccountCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier specifier:(id)specifier
{
  v13.receiver = self;
  v13.super_class = CNFRegSettingsAccountCell;
  v5 = [(PSTableCell *)&v13 initWithStyle:style reuseIdentifier:identifier specifier:specifier];
  v6 = v5;
  if (v5)
  {
    [(CNFRegSettingsAccountCell *)v5 setSelectionStyle:1];
    [(CNFRegSettingsAccountCell *)v6 setUserInteractionEnabled:1];
    valueLabel = [(PSTableCell *)v6 valueLabel];
    [valueLabel setAdjustsFontSizeToFitWidth:1];
    [valueLabel setMinimumScaleFactor:0.823529412];
    systemBlueColor = [MEMORY[0x277D75348] systemBlueColor];
    titleLabel = [(PSTableCell *)v6 titleLabel];
    [titleLabel setTextColor:systemBlueColor];

    systemBlueColor2 = [MEMORY[0x277D75348] systemBlueColor];
    valueLabel2 = [(PSTableCell *)v6 valueLabel];
    [valueLabel2 setTextColor:systemBlueColor2];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)specifier
{
  v4.receiver = self;
  v4.super_class = CNFRegSettingsAccountCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:specifier];
  [(CNFRegSettingsAccountCell *)self setAccessoryType:0];
}

- (void)setValue:(id)value
{
  v4.receiver = self;
  v4.super_class = CNFRegSettingsAccountCell;
  [(PSTableCell *)&v4 setValue:value];
  [(CNFRegSettingsAccountCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v33[2] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = CNFRegSettingsAccountCell;
  [(PSTableCell *)&v31 layoutSubviews];
  valueLabel = [(PSTableCell *)self valueLabel];
  text = [valueLabel text];
  v5 = text;
  if (text)
  {
    v6 = [text length] != 0;
  }

  else
  {
    v6 = 0;
  }

  font = [valueLabel font];
  titleLabel = [(PSTableCell *)self titleLabel];
  [titleLabel bounds];
  v10 = v9;
  contentView = [(CNFRegSettingsAccountCell *)self contentView];
  [contentView bounds];
  v13 = v12;
  v15 = v14;

  v16 = *MEMORY[0x277CBF3A8];
  if (v6)
  {
    defaultParagraphStyle = [MEMORY[0x277D74248] defaultParagraphStyle];
    v18 = [defaultParagraphStyle mutableCopy];

    [v18 setLineBreakMode:4];
    v19 = *MEMORY[0x277D74118];
    v32[0] = *MEMORY[0x277D740A8];
    v32[1] = v19;
    v33[0] = font;
    v33[1] = v18;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v21 = objc_alloc_init(MEMORY[0x277D74260]);
    [font pointSize];
    [v21 setMinimumScaleFactor:14.0 / v22];
    text2 = [valueLabel text];
    if ([text2 length])
    {
      text3 = [valueLabel text];
      [text3 boundingRectWithSize:1 options:v20 attributes:v21 context:{v13 + -32.0 + -4.0 - v10, v15}];
      v16 = v25;
    }

    v27 = *MEMORY[0x277CBF3A0];
    v26 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = ceil(v16);
    if ([*MEMORY[0x277D76620] userInterfaceLayoutDirection])
    {
      v29 = v13 - v28 - v10 + -4.0 + -16.0;
    }

    else
    {
      v29 = 16.0;
    }
  }

  else
  {
    v27 = *MEMORY[0x277CBF3A0];
    v26 = *(MEMORY[0x277CBF3A0] + 8);
    v28 = ceil(v16);
    v29 = floor((v13 - v10) * 0.5);
  }

  [titleLabel setFrame:{v29, v26, v10, v15}];
  if (v6)
  {
    v34.origin.x = v29;
    v34.origin.y = v26;
    v34.size.width = v10;
    v34.size.height = v15;
    v27 = CGRectGetMaxX(v34) + 4.0;
  }

  [valueLabel setFrame:{v27, v26, v28, v15}];

  v30 = *MEMORY[0x277D85DE8];
}

@end