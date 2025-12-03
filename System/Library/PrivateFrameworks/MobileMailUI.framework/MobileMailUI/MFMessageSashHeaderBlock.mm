@interface MFMessageSashHeaderBlock
+ (double)heightForCurrentFontMetrics;
+ (id)titleFont;
- (MFMessageSashHeaderBlock)initWithCoder:(id)coder;
- (MFMessageSashHeaderBlock)initWithFrame:(CGRect)frame accountsProvider:(id)provider;
- (void)_updateFonts;
- (void)_updateMailboxIcon;
- (void)contentSizeCategoryDidChangeNotification:(id)notification;
- (void)createPrimaryViews;
- (void)displayMessageUsingViewModel:(id)model;
- (void)initializePrimaryLayoutConstraints;
- (void)setDisplayMetrics:(id)metrics;
- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)edge;
- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)edge;
- (void)updateConstraints;
@end

@implementation MFMessageSashHeaderBlock

- (MFMessageSashHeaderBlock)initWithCoder:(id)coder
{
  coderCopy = coder;
  [(MFMessageSashHeaderBlock *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFMessageSashHeaderBlock initWithCoder:]", "MFMessageSashHeaderBlock.m", 62, "0");
}

- (MFMessageSashHeaderBlock)initWithFrame:(CGRect)frame accountsProvider:(id)provider
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  providerCopy = provider;
  v16.receiver = self;
  v16.super_class = MFMessageSashHeaderBlock;
  height = [(MFMessageHeaderViewBlock *)&v16 initWithFrame:x, y, width, height];
  v12 = height;
  if (height)
  {
    objc_storeStrong(&height->_accountsProvider, provider);
    [(MFMessageSashHeaderBlock *)v12 setTranslatesAutoresizingMaskIntoConstraints:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(MFMessageSashHeaderBlock *)v12 setBackgroundColor:clearColor];

    LODWORD(clearColor) = MUISolariumFeatureEnabled();
    [(MFMessageSashHeaderBlock *)v12 setSeparatorDrawsFlushWithLeadingEdge:clearColor ^ 1];
    [(MFMessageSashHeaderBlock *)v12 setSeparatorDrawsFlushWithTrailingEdge:clearColor ^ 1];
    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v12 selector:sel__fontMetricCacheDidInvalidate_ name:*MEMORY[0x277CD67A0] object:0];
  }

  return v12;
}

- (void)setSeparatorDrawsFlushWithLeadingEdge:(BOOL)edge
{
  v4 = MUISolariumFeatureEnabled();
  v5.receiver = self;
  v5.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v5 setSeparatorDrawsFlushWithLeadingEdge:v4 ^ 1u];
}

- (void)setSeparatorDrawsFlushWithTrailingEdge:(BOOL)edge
{
  v4 = MUISolariumFeatureEnabled();
  v5.receiver = self;
  v5.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v5 setSeparatorDrawsFlushWithTrailingEdge:v4 ^ 1u];
}

+ (id)titleFont
{
  v2 = [MEMORY[0x277D74310] _preferredFontDescriptorWithTextStyle:*MEMORY[0x277D76968] weight:*MEMORY[0x277D74420]];
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 3221225472;
  v7[2] = __37__MFMessageSashHeaderBlock_titleFont__block_invoke;
  v7[3] = &unk_2781823A0;
  v4 = v2;
  v8 = v4;
  v5 = [mEMORY[0x277CD6870] cachedFont:v7 forKey:@"messageSashHeaderBlock.titleFont"];

  return v5;
}

+ (double)heightForCurrentFontMetrics
{
  mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 3221225472;
  v11[2] = __55__MFMessageSashHeaderBlock_heightForCurrentFontMetrics__block_invoke;
  v11[3] = &__block_descriptor_40_e5_d8__0l;
  v11[4] = self;
  [mEMORY[0x277CD6870] cachedFloat:v11 forKey:@"messageSashHeaderBlock.titleLabel.top"];
  v5 = v4;

  mEMORY[0x277CD6870]2 = [MEMORY[0x277CD6870] sharedFontMetricCache];
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 3221225472;
  v10[2] = __55__MFMessageSashHeaderBlock_heightForCurrentFontMetrics__block_invoke_2;
  v10[3] = &__block_descriptor_40_e5_d8__0l;
  v10[4] = self;
  [mEMORY[0x277CD6870]2 cachedFloat:v10 forKey:@"messageSashHeaderBlock.titleLabel.bottom"];
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

  clearColor = [MEMORY[0x277D75348] clearColor];
  backgroundView = [(MFMessageSashHeaderBlock *)self backgroundView];
  [backgroundView setBackgroundColor:clearColor];

  backgroundView2 = [(MFMessageSashHeaderBlock *)self backgroundView];
  [backgroundView2 setAutoresizingMask:18];

  layer = [(MFMessageSashHeaderBlock *)self layer];
  [layer setAllowsGroupBlending:0];

  backgroundView3 = [(MFMessageSashHeaderBlock *)self backgroundView];
  [(MFMessageSashHeaderBlock *)self addSubview:backgroundView3];

  v10 = objc_alloc(MEMORY[0x277D756B8]);
  v11 = *MEMORY[0x277CBF3A0];
  v12 = *(MEMORY[0x277CBF3A0] + 8);
  v13 = *(MEMORY[0x277CBF3A0] + 16);
  v14 = *(MEMORY[0x277CBF3A0] + 24);
  v15 = [v10 initWithFrame:{*MEMORY[0x277CBF3A0], v12, v13, v14}];
  [(MFMessageSashHeaderBlock *)self setTitleLabel:v15];

  titleLabel = [(MFMessageSashHeaderBlock *)self titleLabel];
  [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  LODWORD(backgroundView) = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  titleLabel2 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [titleLabel2 setNumberOfLines:backgroundView ^ 1];

  titleLabel3 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [titleLabel3 setAdjustsFontForContentSizeCategory:1];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  titleLabel4 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [titleLabel4 setTextColor:secondaryLabelColor];

  titleLabel5 = [(MFMessageSashHeaderBlock *)self titleLabel];
  [(MFMessageSashHeaderBlock *)self addSubview:titleLabel5];

  v23 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v11, v12, v13, v14}];
  [(MFMessageSashHeaderBlock *)self setIconImageView:v23];

  iconImageView = [(MFMessageSashHeaderBlock *)self iconImageView];
  [iconImageView setTranslatesAutoresizingMaskIntoConstraints:0];

  iconImageView2 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [iconImageView2 setContentMode:4];

  iconImageView3 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [(MFMessageSashHeaderBlock *)self addSubview:iconImageView3];

  defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
  [defaultCenter addObserver:self selector:sel_contentSizeCategoryDidChangeNotification_ name:*MEMORY[0x277D76810] object:0];

  [(MFMessageSashHeaderBlock *)self _updateFonts];
  [(MFMessageSashHeaderBlock *)self setAccessibilityIdentifier:*MEMORY[0x277D258A8]];
}

- (void)initializePrimaryLayoutConstraints
{
  v42[5] = *MEMORY[0x277D85DE8];
  v41.receiver = self;
  v41.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v41 initializePrimaryLayoutConstraints];
  titleLabel = [(MFMessageSashHeaderBlock *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  topAnchor = [(MFMessageSashHeaderBlock *)self topAnchor];
  v6 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor];
  [(MFMessageSashHeaderBlock *)self setTitleLabelTop:v6];

  bottomAnchor = [(MFMessageSashHeaderBlock *)self bottomAnchor];
  titleLabel2 = [(MFMessageSashHeaderBlock *)self titleLabel];
  lastBaselineAnchor = [titleLabel2 lastBaselineAnchor];
  v10 = [bottomAnchor constraintEqualToAnchor:lastBaselineAnchor];
  [(MFMessageSashHeaderBlock *)self setTitleLabelBottom:v10];

  titleLabel3 = [(MFMessageSashHeaderBlock *)self titleLabel];
  leadingAnchor = [titleLabel3 leadingAnchor];
  iconImageView = [(MFMessageSashHeaderBlock *)self iconImageView];
  trailingAnchor = [iconImageView trailingAnchor];
  v15 = [leadingAnchor constraintEqualToAnchor:trailingAnchor constant:4.0];

  iconImageView2 = [(MFMessageSashHeaderBlock *)self iconImageView];
  centerYAnchor = [iconImageView2 centerYAnchor];
  titleLabel4 = [(MFMessageSashHeaderBlock *)self titleLabel];
  firstBaselineAnchor2 = [titleLabel4 firstBaselineAnchor];
  titleLabel5 = [(MFMessageSashHeaderBlock *)self titleLabel];
  font = [titleLabel5 font];
  [font capHeight];
  v23 = [centerYAnchor constraintEqualToAnchor:firstBaselineAnchor2 constant:v22 * -0.5];
  [(MFMessageSashHeaderBlock *)self setIconVerticalConstraint:v23];

  v24 = objc_alloc(MEMORY[0x277CBEB18]);
  v42[0] = v15;
  titleLabelTop = [(MFMessageSashHeaderBlock *)self titleLabelTop];
  v42[1] = titleLabelTop;
  iconVerticalConstraint = [(MFMessageSashHeaderBlock *)self iconVerticalConstraint];
  v42[2] = iconVerticalConstraint;
  iconImageView3 = [(MFMessageSashHeaderBlock *)self iconImageView];
  heightAnchor = [iconImageView3 heightAnchor];
  v29 = [heightAnchor constraintEqualToConstant:22.0];
  v42[3] = v29;
  titleLabelBottom = [(MFMessageSashHeaderBlock *)self titleLabelBottom];
  v42[4] = titleLabelBottom;
  v31 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:5];
  v32 = [v24 initWithArray:v31];

  if (MUISolariumFeatureEnabled())
  {
    topSeparator = [(MFMessageHeaderViewBlock *)self topSeparator];
    leadingAnchor2 = [topSeparator leadingAnchor];
  }

  else
  {
    leadingAnchor2 = [(MFMessageSashHeaderBlock *)self leadingAnchor];
  }

  iconImageView4 = [(MFMessageSashHeaderBlock *)self iconImageView];
  leadingAnchor3 = [iconImageView4 leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor2];

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
  titleLabel = [(MFMessageSashHeaderBlock *)self titleLabel];
  text = [titleLabel text];
  v5 = [text length];

  titleLabelTop = [(MFMessageSashHeaderBlock *)self titleLabelTop];
  v26[0] = titleLabelTop;
  titleLabelBottom = [(MFMessageSashHeaderBlock *)self titleLabelBottom];
  v26[1] = titleLabelBottom;
  v8 = [MEMORY[0x277CBEA60] arrayWithObjects:v26 count:2];

  if (v5)
  {
    [MEMORY[0x277CCAAD0] activateConstraints:v8];
    mEMORY[0x277CD6870] = [MEMORY[0x277CD6870] sharedFontMetricCache];
    v24[0] = MEMORY[0x277D85DD0];
    v24[1] = 3221225472;
    v24[2] = __45__MFMessageSashHeaderBlock_updateConstraints__block_invoke;
    v24[3] = &unk_278181B68;
    v24[4] = self;
    [mEMORY[0x277CD6870] cachedFloat:v24 forKey:@"messageSashHeaderBlock.titleLabel.top"];
    v11 = v10;
    titleLabelTop2 = [(MFMessageSashHeaderBlock *)self titleLabelTop];
    [titleLabelTop2 setConstant:v11];

    mEMORY[0x277CD6870]2 = [MEMORY[0x277CD6870] sharedFontMetricCache];
    v23[0] = MEMORY[0x277D85DD0];
    v23[1] = 3221225472;
    v23[2] = __45__MFMessageSashHeaderBlock_updateConstraints__block_invoke_2;
    v23[3] = &unk_278181B68;
    v23[4] = self;
    [mEMORY[0x277CD6870]2 cachedFloat:v23 forKey:@"messageSashHeaderBlock.titleLabel.bottom"];
    v15 = v14;
    titleLabelBottom2 = [(MFMessageSashHeaderBlock *)self titleLabelBottom];
    [titleLabelBottom2 setConstant:v15];
  }

  else
  {
    [MEMORY[0x277CCAAD0] deactivateConstraints:v8];
  }

  titleLabel2 = [(MFMessageSashHeaderBlock *)self titleLabel];
  font = [titleLabel2 font];
  [font capHeight];
  v20 = v19;
  iconVerticalConstraint = [(MFMessageSashHeaderBlock *)self iconVerticalConstraint];
  [iconVerticalConstraint setConstant:v20 * -0.5];

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

- (void)setDisplayMetrics:(id)metrics
{
  metricsCopy = metrics;
  v6.receiver = self;
  v6.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v6 setDisplayMetrics:metricsCopy];
  displayMetrics = [(MFMessageHeaderViewBlock *)self displayMetrics];

  if (displayMetrics)
  {
    [(MFMessageSashHeaderBlock *)self _updateMailboxIcon];
  }
}

- (void)contentSizeCategoryDidChangeNotification:(id)notification
{
  preferredContentSizeCategory = [*MEMORY[0x277D76620] preferredContentSizeCategory];
  IsAccessibilityCategory = UIContentSizeCategoryIsAccessibilityCategory(preferredContentSizeCategory);

  titleLabel = [(MFMessageSashHeaderBlock *)self titleLabel];
  [titleLabel setNumberOfLines:!IsAccessibilityCategory];
}

- (void)_updateFonts
{
  titleFont = [objc_opt_class() titleFont];
  titleLabel = [(MFMessageSashHeaderBlock *)self titleLabel];
  [titleLabel setFont:titleFont];
}

- (void)_updateMailboxIcon
{
  viewModel = [(MFMessageHeaderViewBlock *)self viewModel];
  mailbox = [viewModel mailbox];
  v4 = [mailbox tinyDisplayIconWithColor:0];
  iconImageView = [(MFMessageSashHeaderBlock *)self iconImageView];
  [iconImageView setImage:v4];

  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  iconImageView2 = [(MFMessageSashHeaderBlock *)self iconImageView];
  [iconImageView2 setTintColor:secondaryLabelColor];
}

- (void)displayMessageUsingViewModel:(id)model
{
  modelCopy = model;
  v12.receiver = self;
  v12.super_class = MFMessageSashHeaderBlock;
  [(MFMessageHeaderViewBlock *)&v12 displayMessageUsingViewModel:modelCopy];
  if ([(MFMessageSashHeaderBlock *)self shouldShowMailbox])
  {
    viewModel = [(MFMessageHeaderViewBlock *)self viewModel];
    mailbox = [viewModel mailbox];
    accountsProvider = [(MFMessageSashHeaderBlock *)self accountsProvider];
    v8 = [mailbox foundInDescriptionIncludingAccount:{objc_msgSend(accountsProvider, "isDisplayingMultipleAccounts")}];
    titleLabel = [(MFMessageSashHeaderBlock *)self titleLabel];
    [titleLabel setText:v8];

    iconImageView = [(MFMessageSashHeaderBlock *)self iconImageView];
    [iconImageView setAlpha:1.0];

    [(MFMessageSashHeaderBlock *)self _updateMailboxIcon];
  }

  else
  {
    iconImageView2 = [(MFMessageSashHeaderBlock *)self iconImageView];
    [iconImageView2 setAlpha:0.0];
  }

  [(MFMessageSashHeaderBlock *)self setNeedsUpdateConstraints];
}

@end