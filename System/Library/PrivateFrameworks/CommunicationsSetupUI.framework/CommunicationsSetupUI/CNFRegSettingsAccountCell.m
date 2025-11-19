@interface CNFRegSettingsAccountCell
- (CNFRegSettingsAccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5;
- (void)layoutSubviews;
- (void)refreshCellContentsWithSpecifier:(id)a3;
- (void)setValue:(id)a3;
@end

@implementation CNFRegSettingsAccountCell

- (CNFRegSettingsAccountCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4 specifier:(id)a5
{
  v13.receiver = self;
  v13.super_class = CNFRegSettingsAccountCell;
  v5 = [(PSTableCell *)&v13 initWithStyle:a3 reuseIdentifier:a4 specifier:a5];
  v6 = v5;
  if (v5)
  {
    [(CNFRegSettingsAccountCell *)v5 setSelectionStyle:1];
    [(CNFRegSettingsAccountCell *)v6 setUserInteractionEnabled:1];
    v7 = [(PSTableCell *)v6 valueLabel];
    [v7 setAdjustsFontSizeToFitWidth:1];
    [v7 setMinimumScaleFactor:0.823529412];
    v8 = [MEMORY[0x277D75348] systemBlueColor];
    v9 = [(PSTableCell *)v6 titleLabel];
    [v9 setTextColor:v8];

    v10 = [MEMORY[0x277D75348] systemBlueColor];
    v11 = [(PSTableCell *)v6 valueLabel];
    [v11 setTextColor:v10];
  }

  return v6;
}

- (void)refreshCellContentsWithSpecifier:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNFRegSettingsAccountCell;
  [(PSTableCell *)&v4 refreshCellContentsWithSpecifier:a3];
  [(CNFRegSettingsAccountCell *)self setAccessoryType:0];
}

- (void)setValue:(id)a3
{
  v4.receiver = self;
  v4.super_class = CNFRegSettingsAccountCell;
  [(PSTableCell *)&v4 setValue:a3];
  [(CNFRegSettingsAccountCell *)self setNeedsLayout];
}

- (void)layoutSubviews
{
  v33[2] = *MEMORY[0x277D85DE8];
  v31.receiver = self;
  v31.super_class = CNFRegSettingsAccountCell;
  [(PSTableCell *)&v31 layoutSubviews];
  v3 = [(PSTableCell *)self valueLabel];
  v4 = [v3 text];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 length] != 0;
  }

  else
  {
    v6 = 0;
  }

  v7 = [v3 font];
  v8 = [(PSTableCell *)self titleLabel];
  [v8 bounds];
  v10 = v9;
  v11 = [(CNFRegSettingsAccountCell *)self contentView];
  [v11 bounds];
  v13 = v12;
  v15 = v14;

  v16 = *MEMORY[0x277CBF3A8];
  if (v6)
  {
    v17 = [MEMORY[0x277D74248] defaultParagraphStyle];
    v18 = [v17 mutableCopy];

    [v18 setLineBreakMode:4];
    v19 = *MEMORY[0x277D74118];
    v32[0] = *MEMORY[0x277D740A8];
    v32[1] = v19;
    v33[0] = v7;
    v33[1] = v18;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
    v21 = objc_alloc_init(MEMORY[0x277D74260]);
    [v7 pointSize];
    [v21 setMinimumScaleFactor:14.0 / v22];
    v23 = [v3 text];
    if ([v23 length])
    {
      v24 = [v3 text];
      [v24 boundingRectWithSize:1 options:v20 attributes:v21 context:{v13 + -32.0 + -4.0 - v10, v15}];
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

  [v8 setFrame:{v29, v26, v10, v15}];
  if (v6)
  {
    v34.origin.x = v29;
    v34.origin.y = v26;
    v34.size.width = v10;
    v34.size.height = v15;
    v27 = CGRectGetMaxX(v34) + 4.0;
  }

  [v3 setFrame:{v27, v26, v28, v15}];

  v30 = *MEMORY[0x277D85DE8];
}

@end