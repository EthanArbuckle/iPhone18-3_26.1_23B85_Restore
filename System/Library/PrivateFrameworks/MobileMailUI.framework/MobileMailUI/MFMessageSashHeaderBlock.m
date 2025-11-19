@interface MFMessageSashHeaderBlock
+ (double)heightForCurrentFontMetrics;
+ (id)titleFont;
- (MFMessageSashHeaderBlock)initWithCoder:(id)a3;
- (MFMessageSashHeaderBlock)initWithFrame:(CGRect)a3 accountsProvider:(id)a4;
- (void)_updateFonts;
- (void)_updateMailboxIcon;
- (void)contentSizeCategoryDidChangeNotification:(id)a3;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)a3;
- (void)initializePrimaryLayoutConstraints;
- (void)setDisplayMetrics:(id)a3;
- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)a3;
- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)a3;
- (void)updateConstraints;
@end

@implementation MFMessageSashHeaderBlock

- (MFMessageSashHeaderBlock)initWithCoder:(id)a3
{
  v5 = a3;
  [(MFMessageSashHeaderBlock *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageSashHeaderBlock initWithCoder:]", "MFMessageSashHeaderBlock.m", 62, "0");
}

- (MFMessageSashHeaderBlock)initWithFrame:(CGRect)a3 accountsProvider:(id)a4
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
  v10 = a4;
  v16.receiver = self;
  v16.super_class = MFMessageSashHeaderBlock;
  v11 = [(MFMessageHeaderViewBlock *)&v16 initWithFrame:x, y, width, height];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_accountsProvider, a4);
    [(MFMessageSashHeaderBlock *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    v13 = [MEMORY[0x277D75348] clearColor];
    [(MFMessageSashHeaderBlock *)v12 setBackgroundColor:v13];

    LODWORD(v13) = MUISolariumFeatureEnabled();
    [(MFMessageSashHeaderBlock *)v12 setSeparatorDrawsFlushWithLeadingEdge:v13 ^ 1];
    [(MFMessageSashHeaderBlock *)v12 setSeparatorDrawsFlushWithTrailingEdge:v13 ^ 1];
    v14 = [MEMORY[0x277CCAB98] defaultCenter];
    [v14 addObserver:v12 selector:sel__fontMetricCacheDidInvalidate_ name:*MEMORY[0x277CD67A0] object:0];
  }

  return v12;
}

- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)a3
{
  v4 = MUISolariumFeatureEnabled();
  v5.receiver = self;
  v5.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v5 setSeparatorDrawsFlushWithLeadingEdge:v4 ^ 1u];
}

- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)a3
{
  v4 = MUISolariumFeatureEnabled();
  v5.receiver = self;
  v5.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v5 setSeparatorDrawsFlushWithTrailingEdge:v4 ^ 1u];
}

+ (id)titleFont
{
  v2 = [MEMORY[0x277D74310] _preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74420]];
  v3 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MFMessageSashHeaderBlock_titleFont__block_invoke;
  v7[3] = &unk_2781823A0;
  v4 = v2;
  v8 = v4;
  v5 = [v3 cachedFont:v7 forKey:@"messageSashHeaderBlock.titleFont"];

  return v5;
}

+ (double)heightForCurrentFontMetrics
{
  v3 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__MFMessageSashHeaderBlock_heightForCurrentFontMetrics__block_invoke;
  v11[3] = &__block_descriptor_40_e5_d8__0l;
  v11[4] = a1;
  [v3 cachedFloat:v11 forKey:@"messageSashHeaderBlock.titleLabel.top"];
  v5 = v4;

  v6 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__MFMessageSashHeaderBlock_heightForCurrentFontMetrics__block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_d8__0l;
  v10[4] = a1;
  [v6 cachedFloat:v10 forKey:@"messageSashHeaderBlock.titleLabel.bottom"];
  v8 = v7;

  return v5 + v8;
}

double __55__MFMessageSashHeaderBlock_heightForCurrentFontMetrics__block_invoke(uint64_t a1)
{
  v1 = [*(a1 + 32) titleFont];
  [v1 _scaledValueForValue:20.0];
  v3 = v2;

  return v3;
}

double __55__MFMessageSashHeaderBlock_heightForCurrentFontMetrics__block_invoke_2(uint64_t a1)
{
  v1 = [*(a1 + 32) titleFont];
  [v1 _scaledValueForValue:11.0];
  v3 = v2;

  return v3;
}

- (void)createPrimaryViews
{
  v28.receiver = self;
  v28.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v28 createPrimaryViews];
  [(MFMessageHeaderViewBlock *)self setBottomSeparatorIsHidden:1];
  v3 = objc_alloc(MEMORY[0x277D75D18]);
  [(MFMessageSashHeaderBlock *)self bounds];
  v4 = [v3 initWithFrame:?];
  [(MFMessageSashHeaderBlock *)self setBackgroundView:v4];

  v5 = [MEMORY[0x277D75348] clearColor];
  v6 = [(MFMessageSashHeaderBlock *)self backgroundView];
  [v6 setBackgroundColor:v5];

  v7 = [(MFMessageSashHeaderBlock *)self backgroundView];
  [v7 setAutoresizingMask:18];

  v8 = [(MFMessageSashHeaderBlock *)self layer];
  [v8 setAllowsGroupBlending:0];

  v9 = [(MFMessageSashHeaderBlock *)self backgroundView];
  [(MFMessageSashHeaderBlock *)self addSubview:v9];

  v10 = objc_alloc(MEMORY[0x277D756B8]);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], v12, v13, v14}];
  [(MFMessageSashHeaderBlock *)self setTitleLabel:v15];

  v16 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [v16 setTranslatesAutoresizingMaskIntoConstraints:0];

  v17 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  LODWORD(v6) = UIContentSizeCategoryIsAccessibilityCategory(v17);

  v18 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [v18 setNumberOfLines:v6 ^ 1];

  v19 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [v19 setAdjustsFontForContentSizeCategory:1];

  v20 = [MEMORY[0x277D75348] secondaryLabelColor];
  v21 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [v21 setTextColor:v20];

  v22 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [(MFMessageSashHeaderBlock *)self addSubview:v22];

  v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v11, v12, v13, v14}];
  [(MFMessageSashHeaderBlock *)self setIconImageView:v23];

  v24 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [v24 setTranslatesAutoresizingMaskIntoConstraints:0];

  v25 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [v25 setContentMode:4];

  v26 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [(MFMessageSashHeaderBlock *)self addSubview:v26];

  v27 = [MEMORY[0x277CCAB98] defaultCenter];
  [v27 addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

  [(MFMessageSashHeaderBlock *)self _updateFonts];
  [(MFMessageSashHeaderBlock *)self setAccessibilityIdentifier:*MEMORY[0x277D258A8]];
}

- (void)initializePrimaryLayoutConstraints
{
  v42[5] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v41 initializePrimaryLayoutConstraints];
  v3 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v4 = [v3 firstBaselineAnchor];
  v5 = [(MFMessageSashHeaderBlock *)self topAnchor];
  v6 = [v4 constraintEqualToAnchor:v5];
  [(MFMessageSashHeaderBlock *)self setTitleLabelTop:v6];

  v7 = [(MFMessageSashHeaderBlock *)self bottomAnchor];
  v8 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v9 = [v8 lastBaselineAnchor];
  v10 = [v7 constraintEqualToAnchor:v9];
  [(MFMessageSashHeaderBlock *)self setTitleLabelBottom:v10];

  v11 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v12 = [v11 leadingAnchor];
  v13 = [(MFMessageSashHeaderBlock *)self iconImageView];
  v14 = [v13 trailingAnchor];
  v15 = [v12 constraintEqualToAnchor:v14 constant:4.0];

  v16 = [(MFMessageSashHeaderBlock *)self iconImageView];
  v17 = [v16 centerYAnchor];
  v18 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v19 = [v18 firstBaselineAnchor];
  v20 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v21 = [v20 font];
  [v21 capHeight];
  v23 = [v17 constraintEqualToAnchor:v19 constant:v22 * -0.5];
  [(MFMessageSashHeaderBlock *)self setIconVerticalConstraint:v23];

  v24 = objc_alloc(MEMORY[0x277CBEB18]);
  v42[0] = v15;
  v25 = [(MFMessageSashHeaderBlock *)self titleLabelTop];
  v42[1] = v25;
  v26 = [(MFMessageSashHeaderBlock *)self iconVerticalConstraint];
  v42[2] = v26;
  v27 = [(MFMessageSashHeaderBlock *)self iconImageView];
  v28 = [v27 heightAnchor];
  v29 = [v28 constraintEqualToConstant:22.0];
  v42[3] = v29;
  v30 = [(MFMessageSashHeaderBlock *)self titleLabelBottom];
  v42[4] = v30;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];
  v32 = [v24 initWithArray:v31];

  if (MUISolariumFeatureEnabled())
  {
    v33 = [(MFMessageHeaderViewBlock *)self topSeparator];
    v34 = [v33 leadingAnchor];
  }

  else
  {
    v34 = [(MFMessageSashHeaderBlock *)self leadingAnchor];
  }

  v35 = [(MFMessageSashHeaderBlock *)self iconImageView];
  v36 = [v35 leadingAnchor];
  v37 = [v36 constraintEqualToAnchor:v34];

  if ((MUISolariumFeatureEnabled() & 1) == 0)
  {
    [v37 setConstant:23.0];
  }

  [v32 addObject:v37];
  v38 = MEMORY[0x277CCAAD0];
  v39 = [v32 copy];
  [v38 activateConstraints:v39];

  v40 = *MEMORY[0x277D85DE8];
}

- (void)updateConstraints
{
  v26[2] = *MEMORY[0x277D85DE8];
  v25.receiver = self;
  v25.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v25 updateConstraints];
  v3 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v4 = [v3 text];
  v5 = [v4 length];

  v6 = [(MFMessageSashHeaderBlock *)self titleLabelTop];
  v26[0] = v6;
  v7 = [(MFMessageSashHeaderBlock *)self titleLabelBottom];
  v26[1] = v7;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  if (v5)
  {
    [MEMORY[0x277CCAAD0] activateConstraints:v8];
    v9 = [MEMORY[0x277CD6870] sharedFontMetricCache];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__MFMessageSashHeaderBlock_updateConstraints__block_invoke;
    v24[3] = &unk_278181B68;
    v24[4] = self;
    [v9 cachedFloat:v24 forKey:@"messageSashHeaderBlock.titleLabel.top"];
    v11 = v10;
    v12 = [(MFMessageSashHeaderBlock *)self titleLabelTop];
    [v12 setConstant:v11];

    v13 = [MEMORY[0x277CD6870] sharedFontMetricCache];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__MFMessageSashHeaderBlock_updateConstraints__block_invoke_2;
    v23[3] = &unk_278181B68;
    v23[4] = self;
    [v13 cachedFloat:v23 forKey:@"messageSashHeaderBlock.titleLabel.bottom"];
    v15 = v14;
    v16 = [(MFMessageSashHeaderBlock *)self titleLabelBottom];
    [v16 setConstant:v15];
  }

  else
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v8];
  }

  v17 = [(MFMessageSashHeaderBlock *)self titleLabel];
  v18 = [v17 font];
  [v18 capHeight];
  v20 = v19;
  v21 = [(MFMessageSashHeaderBlock *)self iconVerticalConstraint];
  [v21 setConstant:v20 * -0.5];

  v22 = *MEMORY[0x277D85DE8];
}

double __45__MFMessageSashHeaderBlock_updateConstraints__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() titleFont];
  [v2 _scaledValueForValue:20.0];
  v4 = v3;

  return v4;
}

double __45__MFMessageSashHeaderBlock_updateConstraints__block_invoke_2(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = [objc_opt_class() titleFont];
  [v2 _scaledValueForValue:11.0];
  v4 = v3;

  return v4;
}

- (void)setDisplayMetrics:(id)a3
{
  v4 = a3;
  v6.receiver = self;
  v6.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v6 setDisplayMetrics:v4];
  v5 = [(MFMessageHeaderViewBlock *)self displayMetrics];

  if (v5)
  {
    [(MFMessageSashHeaderBlock *)self _updateMailboxIcon];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)a3
{
  v5 = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(v5);

  v6 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [v6 setNumberOfLines:!IsAccessibilityCategory];
}

- (void)_updateFonts
{
  v4 = [objc_opt_class() titleFont];
  v3 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [v3 setFont:v4];
}

- (void)_updateMailboxIcon
{
  v7 = [(MFMessageHeaderViewBlock *)self viewModel];
  v3 = [v7 mailbox];
  v4 = [v3 tinyDisplayIconWithColor:0];
  v5 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [v5 setImage:v4];

  v8 = [MEMORY[0x277D75348] secondaryLabelColor];
  v6 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [v6 setTintColor:v8];
}

- (void)displayMessageUsingViewModel:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v12 displayMessageUsingViewModel:v4];
  if ([(MFMessageSashHeaderBlock *)self shouldShowMailbox])
  {
    v5 = [(MFMessageHeaderViewBlock *)self viewModel];
    v6 = [v5 mailbox];
    v7 = [(MFMessageSashHeaderBlock *)self accountsProvider];
    v8 = [v6 foundInDescriptionIncludingAccount:{objc_msgSend(v7, "isDisplayingMultipleAccounts")}];
    v9 = [(MFMessageSashHeaderBlock *)self titleLabel];
    [v9 setText:v8];

    v10 = [(MFMessageSashHeaderBlock *)self iconImageView];
    [v10 setAlpha:1.0];

    [(MFMessageSashHeaderBlock *)self _updateMailboxIcon];
  }

  else
  {
    v11 = [(MFMessageSashHeaderBlock *)self iconImageView];
    [v11 setAlpha:0.0];
  }

  [(MFMessageSashHeaderBlock *)self setNeedsUpdateConstraints];
}

@end