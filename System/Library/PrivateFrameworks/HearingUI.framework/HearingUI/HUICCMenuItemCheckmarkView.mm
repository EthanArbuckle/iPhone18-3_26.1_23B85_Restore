@interface HUICCMenuItemCheckmarkView
- (HUICCMenuItemCheckmarkView)initWithFrame:(CGRect)a3;
- (id)accessibilityLabel;
- (id)accessibilityValue;
- (unint64_t)accessibilityTraits;
- (void)setHighlighted:(BOOL)a3;
- (void)setMenuItem:(id)a3;
- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4;
- (void)updateView;
@end

@implementation HUICCMenuItemCheckmarkView

- (HUICCMenuItemCheckmarkView)initWithFrame:(CGRect)a3
{
  v84[5] = *MEMORY[0x277D85DE8];
  v82.receiver = self;
  v82.super_class = HUICCMenuItemCheckmarkView;
  v3 = [(HUICCMenuItemCheckmarkView *)&v82 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = [MEMORY[0x277CFC968] _tertiaryView];
    highlightedBackgroundView = v3->_highlightedBackgroundView;
    v3->_highlightedBackgroundView = v4;

    [(UIView *)v3->_highlightedBackgroundView setAutoresizingMask:18];
    [(UIView *)v3->_highlightedBackgroundView setAlpha:0.0];
    [(HUICCMenuItemCheckmarkView *)v3 addSubview:v3->_highlightedBackgroundView];
    v6 = objc_alloc_init(MEMORY[0x277D75D18]);
    containerView = v3->_containerView;
    v3->_containerView = v6;

    v8 = [MEMORY[0x277D75348] clearColor];
    [(UIView *)v3->_containerView setBackgroundColor:v8];

    [(UIView *)v3->_containerView setUserInteractionEnabled:0];
    [(UIView *)v3->_containerView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUICCMenuItemCheckmarkView *)v3 addSubview:v3->_containerView];
    v70 = MEMORY[0x277CCAAD0];
    v80 = [(UIView *)v3->_containerView leadingAnchor];
    v78 = [(HUICCMenuItemCheckmarkView *)v3 leadingAnchor];
    CCUILayoutGutter();
    v76 = [v80 constraintEqualToAnchor:v78 constant:?];
    v84[0] = v76;
    v74 = [(UIView *)v3->_containerView trailingAnchor];
    v72 = [(HUICCMenuItemCheckmarkView *)v3 trailingAnchor];
    CCUILayoutGutter();
    v68 = [v74 constraintEqualToAnchor:v72 constant:-v9];
    v84[1] = v68;
    v66 = [(UIView *)v3->_containerView topAnchor];
    v10 = [(HUICCMenuItemCheckmarkView *)v3 topAnchor];
    CCUILayoutGutter();
    v12 = [v66 constraintEqualToAnchor:v10 constant:v11 * 0.25];
    v84[2] = v12;
    v13 = [(UIView *)v3->_containerView bottomAnchor];
    v14 = [(HUICCMenuItemCheckmarkView *)v3 bottomAnchor];
    CCUILayoutGutter();
    v16 = [v13 constraintEqualToAnchor:v14 constant:v15 * -0.25];
    v84[3] = v16;
    v17 = [(UIView *)v3->_containerView heightAnchor];
    v18 = [v17 constraintGreaterThanOrEqualToConstant:52.0];
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
    v28 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v27 setTextColor:v28];

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
    v32 = [MEMORY[0x277D75348] whiteColor];
    [(UILabel *)v31 setTextColor:v32];

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
    v40 = [MEMORY[0x277D75348] whiteColor];
    [(UIImageView *)v39 setTintColor:v40];

    [(UIImageView *)v3->_checkmarkView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIView *)v3->_containerView addSubview:v3->_checkmarkView];
    v64 = MEMORY[0x277CCAAD0];
    v81 = [(UIStackView *)v3->_verticalTitleStack leadingAnchor];
    v79 = [(UIView *)v3->_containerView leadingAnchor];
    v77 = [v81 constraintEqualToAnchor:v79];
    v83[0] = v77;
    v75 = [(UIStackView *)v3->_verticalTitleStack topAnchor];
    v73 = [(UIView *)v3->_containerView topAnchor];
    v71 = [v75 constraintEqualToAnchor:v73];
    v83[1] = v71;
    v69 = [(UIStackView *)v3->_verticalTitleStack bottomAnchor];
    v67 = [(UIView *)v3->_containerView bottomAnchor];
    v65 = [v69 constraintEqualToAnchor:v67];
    v83[2] = v65;
    v63 = [(UIImageView *)v3->_checkmarkView leadingAnchor];
    v62 = [(UIStackView *)v3->_verticalTitleStack trailingAnchor];
    v61 = [v63 constraintEqualToAnchor:v62];
    v83[3] = v61;
    v60 = [(UIImageView *)v3->_checkmarkView trailingAnchor];
    v59 = [(UIView *)v3->_containerView trailingAnchor];
    v58 = [v60 constraintEqualToAnchor:v59];
    v83[4] = v58;
    v41 = [(UIImageView *)v3->_checkmarkView centerYAnchor];
    v42 = [(UIView *)v3->_containerView centerYAnchor];
    v43 = [v41 constraintEqualToAnchor:v42];
    v83[5] = v43;
    v44 = [(UIImageView *)v3->_checkmarkView heightAnchor];
    v45 = [v44 constraintEqualToConstant:18.0];
    v83[6] = v45;
    v46 = [(UIImageView *)v3->_checkmarkView widthAnchor];
    v47 = [v46 constraintEqualToConstant:18.0];
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
    v54 = [MEMORY[0x277D76228] lightConfiguration];
    v55 = [v53 initWithConfiguration:v54 view:v3];
    feedbackGenerator = v3->_feedbackGenerator;
    v3->_feedbackGenerator = v55;
  }

  return v3;
}

- (void)setMenuItem:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = a3;
  objc_storeStrong(&self->_menuItem, a3);
  [(HUICCMenuItemCheckmarkView *)self updateView];
  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = [(HUICCMenuItemCheckmarkView *)self requiredVisualStyleCategories];
  v7 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
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
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        v12 = [(HUICCMenuItemCheckmarkView *)self categoriesToVisualStylingProviders];
        v13 = [v12 objectForKeyedSubscript:v11];
        -[HUICCMenuItemCheckmarkView setVisualStylingProvider:forCategory:](self, "setVisualStylingProvider:forCategory:", v13, [v11 integerValue]);

        ++v10;
      }

      while (v8 != v10);
      v8 = [v6 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v8);
  }
}

- (void)updateView
{
  v3 = [(CCUIMenuModuleItem *)self->_menuItem title];
  v4 = [(HUICCMenuItemCheckmarkView *)self titleLabel];
  [v4 setText:v3];

  v5 = [(CCUIMenuModuleItem *)self->_menuItem subtitle];
  v6 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  [v6 setText:v5];

  v7 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  v8 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  v9 = [v8 text];
  if (v9)
  {
    v10 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
    v11 = [v10 text];
    [v7 setHidden:{objc_msgSend(v11, "isEqualToString:", &stru_28645E540)}];
  }

  else
  {
    [v7 setHidden:1];
  }

  v12 = [(HUICCMenuItemCheckmarkView *)self checkmarkView];
  [v12 setHidden:{-[CCUIMenuModuleItem isSelected](self->_menuItem, "isSelected") ^ 1}];
}

- (void)setHighlighted:(BOOL)a3
{
  v3 = a3;
  v8.receiver = self;
  v8.super_class = HUICCMenuItemCheckmarkView;
  [(HUICCMenuItemCheckmarkView *)&v8 setHighlighted:?];
  v5 = 0.0;
  if (v3)
  {
    v6 = [(HUICCMenuItemCheckmarkView *)self feedbackGenerator];
    [v6 selectionChanged];

    v5 = 1.0;
  }

  v7 = [(HUICCMenuItemCheckmarkView *)self highlightedBackgroundView];
  [v7 setAlpha:v5];
}

- (id)accessibilityLabel
{
  v2 = [(HUICCMenuItemCheckmarkView *)self titleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (id)accessibilityValue
{
  v2 = [(HUICCMenuItemCheckmarkView *)self subtitleLabel];
  v3 = [v2 accessibilityLabel];

  return v3;
}

- (unint64_t)accessibilityTraits
{
  v2 = *MEMORY[0x277D76548];
  v3 = [(HUICCMenuItemCheckmarkView *)self checkmarkView];
  v4 = [v3 isHidden];

  v5 = *MEMORY[0x277D76598];
  if (v4)
  {
    v5 = 0;
  }

  return v5 | v2;
}

- (void)setVisualStylingProvider:(id)a3 forCategory:(int64_t)a4
{
  v6 = a3;
  v7 = [(HUICCMenuItemCheckmarkView *)self requiredVisualStyleCategories];
  v8 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
  v9 = [v7 containsObject:v8];

  if (v9)
  {
    v10 = [(HUICCMenuItemCheckmarkView *)self categoriesToVisualStylingProviders];
    v11 = [MEMORY[0x277CCABB0] numberWithInteger:a4];
    [v10 setObject:v6 forKeyedSubscript:v11];

    v12[0] = MEMORY[0x277D85DD0];
    v12[1] = 3221225472;
    v12[2] = __67__HUICCMenuItemCheckmarkView_setVisualStylingProvider_forCategory___block_invoke;
    v12[3] = &unk_2796F6CA8;
    v13 = v6;
    v14 = self;
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