@interface RecentSearchesTableHeaderView
+ (NSAttributedString)clearAllAttributedString;
- (RecentSearchesTableHeaderView)initWithReuseIdentifier:(id)identifier;
- (void)_addClearAllButtonToStackView;
- (void)layoutSubviews;
@end

@implementation RecentSearchesTableHeaderView

- (RecentSearchesTableHeaderView)initWithReuseIdentifier:(id)identifier
{
  v36[4] = *MEMORY[0x277D85DE8];
  v35.receiver = self;
  v35.super_class = RecentSearchesTableHeaderView;
  v3 = [(RecentSearchesTableHeaderView *)&v35 initWithReuseIdentifier:identifier];
  if (v3)
  {
    v4 = objc_alloc_init(MEMORY[0x277D75A68]);
    stackView = v3->_stackView;
    v3->_stackView = v4;

    [(UIStackView *)v3->_stackView setDistribution:3];
    [(UIStackView *)v3->_stackView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v3->_stackView setAlignment:4];
    v6 = objc_alloc_init(MEMORY[0x277D756B8]);
    v7 = _WBSLocalizedString();
    [v6 setText:v7];

    secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
    [v6 setTextColor:secondaryLabelColor];

    v9 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74420]];
    [v6 setFont:v9];

    LODWORD(v10) = 1132068864;
    [v6 setContentCompressionResistancePriority:0 forAxis:v10];
    v34 = v6;
    [(UIStackView *)v3->_stackView addArrangedSubview:v6];
    [(RecentSearchesTableHeaderView *)v3 _addClearAllButtonToStackView];
    contentView = [(RecentSearchesTableHeaderView *)v3 contentView];
    [contentView addSubview:v3->_stackView];

    v12 = objc_alloc_init(MEMORY[0x277D75D18]);
    separator = v3->_separator;
    v3->_separator = v12;

    if ([MEMORY[0x277D49A08] isSolariumEnabled])
    {
      [MEMORY[0x277D75348] clearColor];
    }

    else
    {
      [MEMORY[0x277D75348] separatorColor];
    }
    v14 = ;
    [(UIView *)v3->_separator setBackgroundColor:v14];

    contentView2 = [(RecentSearchesTableHeaderView *)v3 contentView];
    [contentView2 addSubview:v3->_separator];

    v28 = MEMORY[0x277CCAAD0];
    topAnchor = [(UIStackView *)v3->_stackView topAnchor];
    contentView3 = [(RecentSearchesTableHeaderView *)v3 contentView];
    topAnchor2 = [contentView3 topAnchor];
    v30 = [topAnchor constraintEqualToAnchor:topAnchor2];
    v36[0] = v30;
    bottomAnchor = [(UIStackView *)v3->_stackView bottomAnchor];
    topAnchor3 = [(UIView *)v3->_separator topAnchor];
    v17 = [bottomAnchor constraintEqualToAnchor:topAnchor3 constant:-3.0];
    v36[1] = v17;
    leadingAnchor = [(UIStackView *)v3->_stackView leadingAnchor];
    leadingAnchor2 = [(UIView *)v3->_separator leadingAnchor];
    v20 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v36[2] = v20;
    trailingAnchor = [(UIStackView *)v3->_stackView trailingAnchor];
    trailingAnchor2 = [(UIView *)v3->_separator trailingAnchor];
    v23 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v36[3] = v23;
    v24 = [MEMORY[0x277CBEA60] arrayWithObjects:v36 count:4];
    [v28 activateConstraints:v24];

    defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
    [defaultCenter addObserver:v3 selector:sel__addClearAllButtonToStackView name:*MEMORY[0x277D76450] object:0];

    v26 = v3;
  }

  return v3;
}

+ (NSAttributedString)clearAllAttributedString
{
  v10[2] = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CCA898]);
  v3 = _WBSLocalizedString();
  v9[0] = *MEMORY[0x277D740A8];
  v4 = [MEMORY[0x277D74300] _preferredFontForTextStyle:*MEMORY[0x277D769D0] weight:*MEMORY[0x277D74418]];
  v10[0] = v4;
  v9[1] = *MEMORY[0x277D740C0];
  secondaryLabelColor = [MEMORY[0x277D75348] secondaryLabelColor];
  v10[1] = secondaryLabelColor;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:2];
  v7 = [v2 initWithString:v3 attributes:v6];

  return v7;
}

- (void)_addClearAllButtonToStackView
{
  [(UIButton *)self->_button removeFromSuperview];
  plainButtonConfiguration = [MEMORY[0x277D75230] plainButtonConfiguration];
  [plainButtonConfiguration setButtonSize:2];
  if (!UIAccessibilityButtonShapesEnabled())
  {
    [plainButtonConfiguration setContentInsets:{*MEMORY[0x277D75060], *(MEMORY[0x277D75060] + 8), *(MEMORY[0x277D75060] + 16), *(MEMORY[0x277D75060] + 24)}];
    background = [plainButtonConfiguration background];
    [background setCornerRadius:0.0];
  }

  clearAllAttributedString = [objc_opt_class() clearAllAttributedString];
  [plainButtonConfiguration setAttributedTitle:clearAllAttributedString];

  v5 = MEMORY[0x277D75220];
  v6 = [MEMORY[0x277D750C8] actionWithHandler:&__block_literal_global_47];
  v7 = [v5 buttonWithConfiguration:plainButtonConfiguration primaryAction:v6];
  button = self->_button;
  self->_button = v7;

  [(UIButton *)self->_button setAccessibilityIdentifier:@"ClearAllButton"];
  [(UIStackView *)self->_stackView addArrangedSubview:self->_button];
}

void __62__RecentSearchesTableHeaderView__addClearAllButtonToStackView__block_invoke()
{
  v0 = +[RecentWebSearchesController sharedController];
  [v0 clearRecentSearches];

  v1 = [MEMORY[0x277CCAB98] defaultCenter];
  [v1 postNotificationName:*MEMORY[0x277D4A480] object:0];
}

- (void)layoutSubviews
{
  v21.receiver = self;
  v21.super_class = RecentSearchesTableHeaderView;
  [(RecentSearchesTableHeaderView *)&v21 layoutSubviews];
  [(RecentSearchesTableHeaderView *)self bounds];
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  contentView = [(RecentSearchesTableHeaderView *)self contentView];
  [contentView frame];
  v20 = CGRectGetMinX(v22) + 16.0;

  v23.origin.x = v4;
  v23.origin.y = v6;
  v23.size.width = v8;
  v23.size.height = v10;
  Width = CGRectGetWidth(v23);
  contentView2 = [(RecentSearchesTableHeaderView *)self contentView];
  [contentView2 frame];
  v14 = Width - CGRectGetMaxX(v24) + 16.0;

  _SFOnePixel();
  v16 = v15;
  contentView3 = [(RecentSearchesTableHeaderView *)self contentView];
  [contentView3 frame];
  MinX = CGRectGetMinX(v25);
  v26.origin.x = v4;
  v26.origin.y = v6;
  v26.size.width = v8;
  v26.size.height = v10;
  v19 = CGRectGetHeight(v26) - v16;
  v27.origin.x = v4;
  v27.origin.y = v6;
  v27.size.width = v8;
  v27.size.height = v10;
  [(UIView *)self->_separator setFrame:MinX, v19, CGRectGetWidth(v27) - v20 - v14, v16];
}

@end