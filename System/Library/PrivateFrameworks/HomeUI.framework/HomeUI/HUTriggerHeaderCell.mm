@interface HUTriggerHeaderCell
- (HUTriggerHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
- (void)_updateTitleLabel;
- (void)prepareForReuse;
- (void)setLayoutOptions:(id)options;
- (void)updateConstraints;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUTriggerHeaderCell

- (HUTriggerHeaderCell)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  v16.receiver = self;
  v16.super_class = HUTriggerHeaderCell;
  v4 = [(HUTriggerHeaderCell *)&v16 initWithStyle:style reuseIdentifier:identifier];
  v5 = v4;
  if (v4)
  {
    [(HUTriggerHeaderCell *)v4 setSelectionStyle:0];
    clearColor = [MEMORY[0x277D75348] clearColor];
    [(HUTriggerHeaderCell *)v5 setBackgroundColor:clearColor];

    v7 = objc_alloc(MEMORY[0x277D756B8]);
    v8 = [v7 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUTriggerHeaderCell *)v5 setTitleLabel:v8];

    titleLabel = [(HUTriggerHeaderCell *)v5 titleLabel];
    [titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    titleLabel2 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [titleLabel2 setAdjustsFontSizeToFitWidth:1];

    labelColor = [MEMORY[0x277D75348] labelColor];
    titleLabel3 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [titleLabel3 setTextColor:labelColor];

    contentView = [(HUTriggerHeaderCell *)v5 contentView];
    titleLabel4 = [(HUTriggerHeaderCell *)v5 titleLabel];
    [contentView addSubview:titleLabel4];

    v5->_contentBottomMargin = 9.0;
    [(UITableViewCell *)v5 removeMargins];
    [(HUTriggerHeaderCell *)v5 setNeedsUpdateConstraints];
  }

  return v5;
}

- (void)setLayoutOptions:(id)options
{
  optionsCopy = options;
  if (([optionsCopy isEqual:self->_layoutOptions] & 1) == 0)
  {
    objc_storeStrong(&self->_layoutOptions, options);
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

- (void)updateUIWithAnimation:(BOOL)animation
{
  item = [(HUTriggerHeaderCell *)self item];
  latestResults = [item latestResults];

  v5 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F60]];
  localizedUppercaseString = [v5 localizedUppercaseString];
  titleLabel = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel setText:localizedUppercaseString];

  titleLabel2 = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel2 setHidden:v5 == 0];

  v9 = [MEMORY[0x277D180C8] preferredFontForTextStyle:*MEMORY[0x277D769D0] traits:32770];
  titleLabel3 = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel3 setFont:v9];

  titleLabel4 = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel4 setTextAlignment:4];

  systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
  titleLabel5 = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel5 setTextColor:systemGrayColor];

  titleLabel6 = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel6 setNumberOfLines:0];

  [(HUTriggerHeaderCell *)self setLayoutMargins:*MEMORY[0x277D768C8], *(MEMORY[0x277D768C8] + 8), *(MEMORY[0x277D768C8] + 16), *(MEMORY[0x277D768C8] + 24)];
  [(HUTriggerHeaderCell *)self setNeedsUpdateConstraints];
}

- (void)updateConstraints
{
  array = [MEMORY[0x277CBEB18] array];
  titleLabel = [(HUTriggerHeaderCell *)self titleLabel];
  firstBaselineAnchor = [titleLabel firstBaselineAnchor];
  contentView = [(HUTriggerHeaderCell *)self contentView];
  topAnchor = [contentView topAnchor];
  v8 = [firstBaselineAnchor constraintEqualToAnchor:topAnchor constant:40.0];
  [array addObject:v8];

  titleLabel2 = [(HUTriggerHeaderCell *)self titleLabel];
  leadingAnchor = [titleLabel2 leadingAnchor];
  contentView2 = [(HUTriggerHeaderCell *)self contentView];
  layoutMarginsGuide = [contentView2 layoutMarginsGuide];
  leadingAnchor2 = [layoutMarginsGuide leadingAnchor];
  v14 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  [array addObject:v14];

  titleLabel3 = [(HUTriggerHeaderCell *)self titleLabel];
  trailingAnchor = [titleLabel3 trailingAnchor];
  contentView3 = [(HUTriggerHeaderCell *)self contentView];
  layoutMarginsGuide2 = [contentView3 layoutMarginsGuide];
  trailingAnchor2 = [layoutMarginsGuide2 trailingAnchor];
  v20 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  [array addObject:v20];

  titleLabel4 = [(HUTriggerHeaderCell *)self titleLabel];
  lastBaselineAnchor = [titleLabel4 lastBaselineAnchor];
  contentView4 = [(HUTriggerHeaderCell *)self contentView];
  bottomAnchor = [contentView4 bottomAnchor];
  [(HUTriggerHeaderCell *)self contentBottomMargin];
  v26 = [lastBaselineAnchor constraintEqualToAnchor:bottomAnchor constant:-v25];
  [array addObject:v26];

  constraints = [(HUTriggerHeaderCell *)self constraints];
  LOBYTE(lastBaselineAnchor) = [array isEqualToArray:constraints];

  if ((lastBaselineAnchor & 1) == 0)
  {
    v28 = MEMORY[0x277CCAAD0];
    constraints2 = [(HUTriggerHeaderCell *)self constraints];
    [v28 deactivateConstraints:constraints2];

    [(HUTriggerHeaderCell *)self setConstraints:array];
    v30 = MEMORY[0x277CCAAD0];
    constraints3 = [(HUTriggerHeaderCell *)self constraints];
    [v30 activateConstraints:constraints3];
  }

  v32.receiver = self;
  v32.super_class = HUTriggerHeaderCell;
  [(HUTriggerHeaderCell *)&v32 updateConstraints];
}

- (void)_updateTitleLabel
{
  layoutOptions = [(HUTriggerHeaderCell *)self layoutOptions];
  sectionHeaderFont = [layoutOptions sectionHeaderFont];
  titleLabel = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel setFont:sectionHeaderFont];

  layoutOptions2 = [(HUTriggerHeaderCell *)self layoutOptions];

  if (layoutOptions2 && (-[HUTriggerHeaderCell layoutOptions](self, "layoutOptions"), v7 = objc_claimAutoreleasedReturnValue(), v8 = [v7 contentColorStyle], v7, v8 != 1))
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
  }

  else
  {
    systemWhiteColor = [MEMORY[0x277D75348] systemGrayColor];
  }

  v11 = systemWhiteColor;
  titleLabel2 = [(HUTriggerHeaderCell *)self titleLabel];
  [titleLabel2 setTextColor:v11];
}

@end