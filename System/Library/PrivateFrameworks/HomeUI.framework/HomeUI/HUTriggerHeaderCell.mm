@interface HUTriggerHeaderCell
- (HUTriggerHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4;
- (void)_updateTitleLabel;
- (void)prepareForReuse;
- (void)setLayoutOptions:(id)a3;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUTriggerHeaderCell

- (HUTriggerHeaderCell)initWithStyle:(int64_t)a3 reuseIdentifier:(id)a4
{
  v16.receiver = self;
  v16.super_class = HUTriggerHeaderCell;
  v4 = [(HUTriggerHeaderCell *)&v16 initWithStyle:a3 reuseIdentifier:a4];
  v5 = v4;
  if (v4)
  {
    [(HUTriggerHeaderCell *)v4 setSelectionStyle:0];
    v6 = [MEMORY[0x277D75348] clearColor];
    [(HUTriggerHeaderCell *)v5 setBackgroundColor:v6];

    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUTriggerHeaderCell *)v5 setTitleLabel:v8];

    v9 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [v9 setTranslatesAutoresizingMaskIntoConstraints:0];

    v10 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [v10 setAdjustsFontSizeToFitWidth:1];

    v11 = [MEMORY[0x277D75348] labelColor];
    v12 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [v12 setTextColor:v11];

    v13 = [(HUTriggerHeaderCell *)v5 contentView];
    v14 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [v13 addSubview:v14];

    v5->_contentBottomMargin = 9.0;
    [(UITableViewCell *)v5 removeMargins];
    [(HUTriggerHeaderCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)setLayoutOptions:(id)a3
{
  v5 = a3;
  if (([v5 isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, a3);
    [(HUTriggerHeaderCell *)self setNeedsUpdateConstraints];
    [(HUTriggerHeaderCell *)self _updateTitleLabel];
  }
}

- (void)prepareForReuse
{
  v3.receiver = self;
  v3.super_class = HUTriggerHeaderCell;
  [(HUTriggerHeaderCell *)&v3 prepareForReuse];
  [(HUTriggerHeaderCell *)self setContentBottomMargin:9.0];
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v4 = [(HUTriggerHeaderCell *)self item];
  v15 = [v4 latestResults];

  v5 = [v15 objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  v6 = [v5 localizedUppercaseString];
  v7 = [(HUTriggerHeaderCell *)self titleLabel];
  [v7 setText:v6];

  v8 = [(HUTriggerHeaderCell *)self titleLabel];
  [v8 setHidden:v5 == 0];

  v9 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:32770];
  v10 = [(HUTriggerHeaderCell *)self titleLabel];
  [v10 setFont:v9];

  v11 = [(HUTriggerHeaderCell *)self titleLabel];
  [v11 setTextAlignment:4];

  v12 = [MEMORY[0x277D75348] systemGrayColor];
  v13 = [(HUTriggerHeaderCell *)self titleLabel];
  [v13 setTextColor:v12];

  v14 = [(HUTriggerHeaderCell *)self titleLabel];
  [v14 setNumberOfLines:0];

  [(HUTriggerHeaderCell *)self setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(HUTriggerHeaderCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  v3 = [MEMORY[0x277CBEB18] array];
  v4 = [(HUTriggerHeaderCell *)self titleLabel];
  v5 = [v4 firstBaselineAnchor];
  v6 = [(HUTriggerHeaderCell *)self contentView];
  v7 = [v6 topAnchor];
  v8 = [v5 constraintEqualToAnchor:v7 constant:40.0];
  [v3 addObject:v8];

  v9 = [(HUTriggerHeaderCell *)self titleLabel];
  v10 = [v9 leadingAnchor];
  v11 = [(HUTriggerHeaderCell *)self contentView];
  v12 = [v11 layoutMarginsGuide];
  v13 = [v12 leadingAnchor];
  v14 = [v10 constraintEqualToAnchor:v13];
  [v3 addObject:v14];

  v15 = [(HUTriggerHeaderCell *)self titleLabel];
  v16 = [v15 trailingAnchor];
  v17 = [(HUTriggerHeaderCell *)self contentView];
  v18 = [v17 layoutMarginsGuide];
  v19 = [v18 trailingAnchor];
  v20 = [v16 constraintEqualToAnchor:v19];
  [v3 addObject:v20];

  v21 = [(HUTriggerHeaderCell *)self titleLabel];
  v22 = [v21 lastBaselineAnchor];
  v23 = [(HUTriggerHeaderCell *)self contentView];
  v24 = [v23 bottomAnchor];
  [(HUTriggerHeaderCell *)self contentBottomMargin];
  v26 = [v22 constraintEqualToAnchor:v24 constant:-v25];
  [v3 addObject:v26];

  v27 = [(HUTriggerHeaderCell *)self constraints];
  LOBYTE(v22) = [v3 isEqualToArray:v27];

  if ((v22 & 1) == 0)
  {
    v28 = MEMORY[0x277CCAAD0];
    v29 = [(HUTriggerHeaderCell *)self constraints];
    [v28 deactivateConstraints:v29];

    [(HUTriggerHeaderCell *)self setConstraints:v3];
    v30 = MEMORY[0x277CCAAD0];
    v31 = [(HUTriggerHeaderCell *)self constraints];
    [v30 activateConstraints:v31];
  }

  v32.receiver = self;
  v32.super_class = HUTriggerHeaderCell;
  [(HUTriggerHeaderCell *)&v32 updateConstraints];
}

- (void)_updateTitleLabel
{
  v3 = [(HUTriggerHeaderCell *)self layoutOptions];
  v4 = [v3 sectionHeaderFont];
  v5 = [(HUTriggerHeaderCell *)self titleLabel];
  [v5 setFont:v4];

  v6 = [(HUTriggerHeaderCell *)self layoutOptions];

  if (v6 && (-[HUTriggerHeaderCell layoutOptions](self, "layoutOptions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 contentColorStyle], v7, v8 != 1))
  {
    v9 = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    v9 = [MEMORY[0x277D75348] systemGrayColor];
  }

  v11 = v9;
  v10 = [(HUTriggerHeaderCell *)self titleLabel];
  [v10 setTextColor:v11];
}

@end