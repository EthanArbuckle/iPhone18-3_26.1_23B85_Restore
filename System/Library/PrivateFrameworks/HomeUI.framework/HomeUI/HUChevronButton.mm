@interface HUChevronButton
- (HUChevronButton)initWithFrame:(CGRect)frame;
- (void)setHighlighted:(BOOL)highlighted;
@end

@implementation HUChevronButton

- (HUChevronButton)initWithFrame:(CGRect)frame
{
  v59[2] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = HUChevronButton;
  v3 = [(HUChevronButton *)&v58 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    [(HUChevronButton *)v3 setTitleLabel:v9];

    titleLabel = [(HUChevronButton *)v3 titleLabel];
    [titleLabel setUserInteractionEnabled:0];

    titleLabel2 = [(HUChevronButton *)v3 titleLabel];
    [titleLabel2 _setTextColorFollowsTintColor:1];

    titleLabel3 = [(HUChevronButton *)v3 titleLabel];
    [titleLabel3 setAdjustsFontSizeToFitWidth:1];

    titleLabel4 = [(HUChevronButton *)v3 titleLabel];
    [titleLabel4 setMinimumScaleFactor:0.7];

    titleLabel5 = [(HUChevronButton *)v3 titleLabel];
    [titleLabel5 setBaselineAdjustment:1];

    systemWhiteColor = [MEMORY[0x277D75348] systemWhiteColor];
    titleLabel6 = [(HUChevronButton *)v3 titleLabel];
    [titleLabel6 setTintColor:systemWhiteColor];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    [(HUChevronButton *)v3 setChevronImageView:v17];

    chevronImageView = [(HUChevronButton *)v3 chevronImageView];
    [chevronImageView setUserInteractionEnabled:0];

    v19 = [MEMORY[0x277D755B8] imageNamed:@"edit-chevron"];
    v20 = [v19 imageWithRenderingMode:2];
    chevronImageView2 = [(HUChevronButton *)v3 chevronImageView];
    [chevronImageView2 setImage:v20];

    chevronImageView3 = [(HUChevronButton *)v3 chevronImageView];
    LODWORD(v23) = 1144766464;
    [chevronImageView3 setContentCompressionResistancePriority:0 forAxis:v23];

    systemWhiteColor2 = [MEMORY[0x277D75348] systemWhiteColor];
    chevronImageView4 = [(HUChevronButton *)v3 chevronImageView];
    [chevronImageView4 setTintColor:systemWhiteColor2];

    v26 = objc_alloc(MEMORY[0x277D75A68]);
    titleLabel7 = [(HUChevronButton *)v3 titleLabel];
    v59[0] = titleLabel7;
    chevronImageView5 = [(HUChevronButton *)v3 chevronImageView];
    v59[1] = chevronImageView5;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v30 = [v26 initWithArrangedSubviews:v29];
    [(HUChevronButton *)v3 setContainerView:v30];

    containerView = [(HUChevronButton *)v3 containerView];
    [containerView setUserInteractionEnabled:0];

    containerView2 = [(HUChevronButton *)v3 containerView];
    [containerView2 setTranslatesAutoresizingMaskIntoConstraints:0];

    containerView3 = [(HUChevronButton *)v3 containerView];
    [containerView3 setAlignment:3];

    containerView4 = [(HUChevronButton *)v3 containerView];
    [containerView4 setSpacing:4.0];

    containerView5 = [(HUChevronButton *)v3 containerView];
    [(HUChevronButton *)v3 addSubview:containerView5];

    array = [MEMORY[0x277CBEB18] array];
    containerView6 = [(HUChevronButton *)v3 containerView];
    topAnchor = [containerView6 topAnchor];
    topAnchor2 = [(HUChevronButton *)v3 topAnchor];
    v40 = [topAnchor constraintEqualToAnchor:topAnchor2 constant:6.0];
    [array addObject:v40];

    containerView7 = [(HUChevronButton *)v3 containerView];
    bottomAnchor = [containerView7 bottomAnchor];
    bottomAnchor2 = [(HUChevronButton *)v3 bottomAnchor];
    v44 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-6.0];
    [array addObject:v44];

    containerView8 = [(HUChevronButton *)v3 containerView];
    centerXAnchor = [containerView8 centerXAnchor];
    centerXAnchor2 = [(HUChevronButton *)v3 centerXAnchor];
    v48 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    [array addObject:v48];

    containerView9 = [(HUChevronButton *)v3 containerView];
    leadingAnchor = [containerView9 leadingAnchor];
    leadingAnchor2 = [(HUChevronButton *)v3 leadingAnchor];
    v52 = [leadingAnchor constraintGreaterThanOrEqualToAnchor:leadingAnchor2];
    [array addObject:v52];

    containerView10 = [(HUChevronButton *)v3 containerView];
    trailingAnchor = [containerView10 trailingAnchor];
    trailingAnchor2 = [(HUChevronButton *)v3 trailingAnchor];
    v56 = [trailingAnchor constraintLessThanOrEqualToAnchor:trailingAnchor2];
    [array addObject:v56];

    [MEMORY[0x277CCAAD0] activateConstraints:array];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)highlighted
{
  v10.receiver = self;
  v10.super_class = HUChevronButton;
  [(HUChevronButton *)&v10 setHighlighted:?];
  if (highlighted)
  {
    [(HUChevronButton *)self tintColor];
  }

  else
  {
    [MEMORY[0x277D75348] systemWhiteColor];
  }
  v5 = ;
  v6 = MEMORY[0x277D75D18];
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 3221225472;
  v8[2] = __34__HUChevronButton_setHighlighted___block_invoke;
  v8[3] = &unk_277DB7558;
  v8[4] = self;
  v9 = v5;
  v7 = v5;
  [v6 animateWithDuration:v8 animations:0.25];
}

void __34__HUChevronButton_setHighlighted___block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = [*(a1 + 32) titleLabel];
  [v3 setTintColor:v2];

  v4 = *(a1 + 40);
  v5 = [*(a1 + 32) chevronImageView];
  [v5 setTintColor:v4];
}

@end