@interface HUICCMenuItemCheckmarkView
- (HUICCMenuItemCheckmarkView)initWithFrame:(CGRect)frame;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setHighlighted:(BOOL)highlighted;
- (void)setMenuItem:(id)item;
- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category;
- (void)updateView;
@end

@implementation HUICCMenuItemCheckmarkView

- (HUICCMenuItemCheckmarkView)initWithFrame:(CGRect)frame
{
  v84[5] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = HUICCMenuItemCheckmarkView;
  v3 = [(HUICCMenuItemCheckmarkView *)&v82 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    _tertiaryView = [MEMORY[0x277CFC968] _tertiaryView];
    highlightedBackgroundView = v3->_highlightedBackgroundView;
    v3->_highlightedBackgroundView = _tertiaryView;

    [(UIView *)v3->_highlightedBackgroundView setAutoresizingMask:18];
    [(UIView *)v3->_highlightedBackgroundView setAlpha:0.0];
    [(HUICCMenuItemCheckmarkView *)v3 addSubview:v3->_highlightedBackgroundView];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    containerView = v3->_containerView;
    v3->_containerView = v6;

    clearColor = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_containerView setBackgroundColor:clearColor];

    [(UIView *)v3->_containerView setUserInteractionEnabled:0];
    [(UIView *)v3->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUICCMenuItemCheckmarkView *)v3 addSubview:v3->_containerView];
    v70 = MEMORY[0x277CCAAD0];
    leadingAnchor = [(UIView *)v3->_containerView leadingAnchor];
    leadingAnchor2 = [(HUICCMenuItemCheckmarkView *)v3 leadingAnchor];
    CCUILayoutGutter();
    v76 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2 constant:?];
    v84[0] = v76;
    trailingAnchor = [(UIView *)v3->_containerView trailingAnchor];
    trailingAnchor2 = [(HUICCMenuItemCheckmarkView *)v3 trailingAnchor];
    CCUILayoutGutter();
    v68 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2 constant:-v9];
    v84[1] = v68;
    topAnchor = [(UIView *)v3->_containerView topAnchor];
    topAnchor2 = [(HUICCMenuItemCheckmarkView *)v3 topAnchor];
    CCUILayoutGutter();
    v12 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:v11 * 0.25];
    v84[2] = v12;
    bottomAnchor = [(UIView *)v3->_containerView bottomAnchor];
    bottomAnchor2 = [(HUICCMenuItemCheckmarkView *)v3 bottomAnchor];
    CCUILayoutGutter();
    v16 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:v15 * -0.25];
    v84[3] = v16;
    heightAnchor = [(UIView *)v3->_containerView heightAnchor];
    v18 = [heightAnchor constraintGreaterThanOrEqualToConstant:52.0];
    v84[4] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v84 count:5];
    [v70 activateConstraints:v19];

    v20 = objc_alloc_init(MEMORY[0x277D75A68]);
    verticalTitleStack = v3->_verticalTitleStack;
    v3->_verticalTitleStack = v20;

    [(UIStackView *)v3->_verticalTitleStack setDistribution:1];
    [(UIStackView *)v3->_verticalTitleStack setAxis:1];
    [(UIStackView *)v3->_verticalTitleStack setSpacing:0.0];
    [(UIStackView *)v3->_verticalTitleStack setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_containerView addSubview:v3->_verticalTitleStack];
    v22 = [MEMORY[0x277D75D18] userInterfaceLayoutDirectionForSemanticContentAttribute:{-[HUICCMenuItemCheckmarkView semanticContentAttribute](v3, "semanticContentAttribute")}];
    v23 = HUICCMenuTextLabel();
    titleLabel = v3->_titleLabel;
    v3->_titleLabel = v23;

    v25 = 2 * (v22 == 1);
    if (v22 == 1)
    {
      v26 = 7;
    }

    else
    {
      v26 = 8;
    }

    [(UILabel *)v3->_titleLabel setTextAlignment:v25];
    [(UILabel *)v3->_titleLabel setLineBreakMode:4];
    [(UILabel *)v3->_titleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_titleLabel setNumberOfLines:0];
    v27 = v3->_titleLabel;
    whiteColor = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v27 setTextColor:whiteColor];

    [(UILabel *)v3->_titleLabel sizeToFit];
    [(UIStackView *)v3->_verticalTitleStack addArrangedSubview:v3->_titleLabel];
    v29 = HUICCMenuTextLabel();
    subtitleLabel = v3->_subtitleLabel;
    v3->_subtitleLabel = v29;

    [(UILabel *)v3->_subtitleLabel setTextAlignment:v25];
    [(UILabel *)v3->_subtitleLabel setLineBreakMode:4];
    [(UILabel *)v3->_subtitleLabel setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UILabel *)v3->_subtitleLabel setNumberOfLines:0];
    v31 = v3->_subtitleLabel;
    whiteColor2 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v31 setTextColor:whiteColor2];

    [(UILabel *)v3->_subtitleLabel sizeToFit];
    [(UIStackView *)v3->_verticalTitleStack addArrangedSubview:v3->_subtitleLabel];
    v33 = objc_alloc(MEMORY[0x277D755E8]);
    v34 = MEMORY[0x277D755B8];
    v35 = [MEMORY[0x277D755D0] configurationWithTextStyle:*MEMORY[0x277D769D0]];
    v36 = [v34 systemImageNamed:@"checkmark" withConfiguration:v35];
    v37 = [v33 initWithImage:v36];
    checkmarkView = v3->_checkmarkView;
    v3->_checkmarkView = v37;

    [(UIImageView *)v3->_checkmarkView setContentMode:v26];
    v39 = v3->_checkmarkView;
    whiteColor3 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v39 setTintColor:whiteColor3];

    [(UIImageView *)v3->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_containerView addSubview:v3->_checkmarkView];
    v64 = MEMORY[0x277CCAAD0];
    leadingAnchor3 = [(UIStackView *)v3->_verticalTitleStack leadingAnchor];
    leadingAnchor4 = [(UIView *)v3->_containerView leadingAnchor];
    v77 = [leadingAnchor3 constraintEqualToAnchor:leadingAnchor4];
    v83[0] = v77;
    topAnchor3 = [(UIStackView *)v3->_verticalTitleStack topAnchor];
    topAnchor4 = [(UIView *)v3->_containerView topAnchor];
    v71 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
    v83[1] = v71;
    bottomAnchor3 = [(UIStackView *)v3->_verticalTitleStack bottomAnchor];
    bottomAnchor4 = [(UIView *)v3->_containerView bottomAnchor];
    v65 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
    v83[2] = v65;
    leadingAnchor5 = [(UIImageView *)v3->_checkmarkView leadingAnchor];
    trailingAnchor3 = [(UIStackView *)v3->_verticalTitleStack trailingAnchor];
    v61 = [leadingAnchor5 constraintEqualToAnchor:trailingAnchor3];
    v83[3] = v61;
    trailingAnchor4 = [(UIImageView *)v3->_checkmarkView trailingAnchor];
    trailingAnchor5 = [(UIView *)v3->_containerView trailingAnchor];
    v58 = [trailingAnchor4 constraintEqualToAnchor:trailingAnchor5];
    v83[4] = v58;
    centerYAnchor = [(UIImageView *)v3->_checkmarkView centerYAnchor];
    centerYAnchor2 = [(UIView *)v3->_containerView centerYAnchor];
    v43 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v83[5] = v43;
    heightAnchor2 = [(UIImageView *)v3->_checkmarkView heightAnchor];
    v45 = [heightAnchor2 constraintEqualToConstant:18.0];
    v83[6] = v45;
    widthAnchor = [(UIImageView *)v3->_checkmarkView widthAnchor];
    v47 = [widthAnchor constraintEqualToConstant:18.0];
    v83[7] = v47;
    v48 = [MEMORY[0x277CBEA60] arrayWithObjects:v83 count:8];
    [v64 activateConstraints:v48];

    v49 = objc_alloc_init(MEMORY[0x277CBEB38]);
    categoriesToVisualStylingProviders = v3->_categoriesToVisualStylingProviders;
    v3->_categoriesToVisualStylingProviders = v49;

    v51 = HUICCBackgroundVisualStylingProviderForCategory(1);
    [(HUICCMenuItemCheckmarkView *)v3 setVisualStylingProvider:v51 forCategory:1];

    v52 = HUICCBackgroundVisualStylingProviderForCategory(2);
    [(HUICCMenuItemCheckmarkView *)v3 setVisualStylingProvider:v52 forCategory:2];

    v53 = objc_alloc(MEMORY[0x277D75A10]);
    lightConfiguration = [MEMORY[0x277D76228] lightConfiguration];
    v55 = [v53 initWithConfiguration:lightConfiguration view:v3];
    feedbackGenerator = v3->_feedbackGenerator;
    v3->_feedbackGenerator = v55;
  }

  return v3;
}

- (void)setMenuItem:(id)item
{
  v19 = *MEMORY[0x277D85DE8];
  itemCopy = item;
  objc_storeStrong(&self->_menuItem, item);
  [(HUICCMenuItemCheckmarkView *)self updateView];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  requiredVisualStyleCategories = [(HUICCMenuItemCheckmarkView *)self requiredVisualStyleCategories];
  v7 = [requiredVisualStyleCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v15;
    do
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(requiredVisualStyleCategories);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        categoriesToVisualStylingProviders = [(HUICCMenuItemCheckmarkView *)self categoriesToVisualStylingProviders];
        v13 = [categoriesToVisualStylingProviders objectForKeyedSubscript:v11];
        -[HUICCMenuItemCheckmarkView setVisualStylingProvider:forCategory:](self, "setVisualStylingProvider:forCategory:", v13, [v11 integerValue]);

        ++v10;
      }

      while (v8 != v10);
      v8 = [requiredVisualStyleCategories countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)updateView
{
  title = [(CCUIMenuModuleItem *)self->_menuItem title];
  titleLabel = [(HUICCMenuItemCheckmarkView *)self titleLabel];
  [titleLabel setText:title];

  subtitle = [(CCUIMenuModuleItem *)self->_menuItem subtitle];
  subtitleLabel = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  [subtitleLabel setText:subtitle];

  subtitleLabel2 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  subtitleLabel3 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  text = [subtitleLabel3 text];
  if (text)
  {
    subtitleLabel4 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
    text2 = [subtitleLabel4 text];
    [subtitleLabel2 setHidden:{objc_msgSend(text2, "isEqualToString:", &stru_28645E540)}];
  }

  else
  {
    [subtitleLabel2 setHidden:1];
  }

  checkmarkView = [(HUICCMenuItemCheckmarkView *)self checkmarkView];
  [checkmarkView setHidden:{-[CCUIMenuModuleItem isSelected](self->_menuItem, "isSelected") ^ 1}];
}

- (void)setHighlighted:(BOOL)highlighted
{
  highlightedCopy = highlighted;
  v8.receiver = self;
  v8.super_class = HUICCMenuItemCheckmarkView;
  [(HUICCMenuItemCheckmarkView *)&v8 setHighlighted:?];
  v5 = 0.0;
  if (highlightedCopy)
  {
    feedbackGenerator = [(HUICCMenuItemCheckmarkView *)self feedbackGenerator];
    [feedbackGenerator selectionChanged];

    v5 = 1.0;
  }

  highlightedBackgroundView = [(HUICCMenuItemCheckmarkView *)self highlightedBackgroundView];
  [highlightedBackgroundView setAlpha:v5];
}

- (id)accessibilityLabel
{
  titleLabel = [(HUICCMenuItemCheckmarkView *)self titleLabel];
  accessibilityLabel = [titleLabel accessibilityLabel];

  return accessibilityLabel;
}

- (id)accessibilityValue
{
  subtitleLabel = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  accessibilityLabel = [subtitleLabel accessibilityLabel];

  return accessibilityLabel;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x277D76548];
  checkmarkView = [(HUICCMenuItemCheckmarkView *)self checkmarkView];
  isHidden = [checkmarkView isHidden];

  v5 = *MEMORY[0x277D76598];
  if (isHidden)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (void)setVisualStylingProvider:(id)provider forCategory:(int64_t)category
{
  providerCopy = provider;
  requiredVisualStyleCategories = [(HUICCMenuItemCheckmarkView *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:category];
  v9 = [requiredVisualStyleCategories containsObject:v8];

  if (v9)
  {
    categoriesToVisualStylingProviders = [(HUICCMenuItemCheckmarkView *)self categoriesToVisualStylingProviders];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:category];
    [categoriesToVisualStylingProviders setObject:providerCopy forKeyedSubscript:v11];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__HUICCMenuItemCheckmarkView_setVisualStylingProvider_forCategory___block_invoke;
    v12[3] = &unk_2796F6CA8;
    v13 = providerCopy;
    selfCopy = self;
    dispatch_async(MEMORY[0x277D85CD0], v12);
  }
}

void __67__HUICCMenuItemCheckmarkView_setVisualStylingProvider_forCategory___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) titleLabel];
  [v2 automaticallyUpdateView:v3 withStyle:0];

  v4 = *(a1 + 32);
  v5 = [*(a1 + 40) subtitleLabel];
  [v4 automaticallyUpdateView:v5 withStyle:1];

  v6 = *(a1 + 32);
  v7 = [*(a1 + 40) checkmarkView];
  [v6 automaticallyUpdateView:v7 withStyle:0];
}

@end