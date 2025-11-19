@interface HUChevronButton
- (HUChevronButton)initWithFrame:(CGRect)a3;
- (void)setHighlighted:(BOOL)a3;
@end

@implementation HUChevronButton

- (HUChevronButton)initWithFrame:(CGRect)a3
{
  v59[2] = *MEMORY[0x277D85DE8];
  v58.receiver = self;
  v58.super_class = HUChevronButton;
  v3 = [(HUChevronButton *)&v58 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = *MEMORY[0x277CBF3A0];
    v6 = *(MEMORY[0x277CBF3A0] + 8);
    v7 = *(MEMORY[0x277CBF3A0] + 16);
    v8 = *(MEMORY[0x277CBF3A0] + 24);
    v9 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], v6, v7, v8}];
    [(HUChevronButton *)v3 setTitleLabel:v9];

    v10 = [(HUChevronButton *)v3 titleLabel];
    [v10 setUserInteractionEnabled:0];

    v11 = [(HUChevronButton *)v3 titleLabel];
    [v11 _setTextColorFollowsTintColor:1];

    v12 = [(HUChevronButton *)v3 titleLabel];
    [v12 setAdjustsFontSizeToFitWidth:1];

    v13 = [(HUChevronButton *)v3 titleLabel];
    [v13 setMinimumScaleFactor:0.7];

    v14 = [(HUChevronButton *)v3 titleLabel];
    [v14 setBaselineAdjustment:1];

    v15 = [MEMORY[0x277D75348] systemWhiteColor];
    v16 = [(HUChevronButton *)v3 titleLabel];
    [v16 setTintColor:v15];

    v17 = [objc_alloc(MEMORY[0x277D755E8]) initWithFrame:{v5, v6, v7, v8}];
    [(HUChevronButton *)v3 setChevronImageView:v17];

    v18 = [(HUChevronButton *)v3 chevronImageView];
    [v18 setUserInteractionEnabled:0];

    v19 = [MEMORY[0x277D755B8] imageNamed:@"edit-chevron"];
    v20 = [v19 imageWithRenderingMode:2];
    v21 = [(HUChevronButton *)v3 chevronImageView];
    [v21 setImage:v20];

    v22 = [(HUChevronButton *)v3 chevronImageView];
    LODWORD(v23) = 1144766464;
    [v22 setContentCompressionResistancePriority:0 forAxis:v23];

    v24 = [MEMORY[0x277D75348] systemWhiteColor];
    v25 = [(HUChevronButton *)v3 chevronImageView];
    [v25 setTintColor:v24];

    v26 = objc_alloc(MEMORY[0x277D75A68]);
    v27 = [(HUChevronButton *)v3 titleLabel];
    v59[0] = v27;
    v28 = [(HUChevronButton *)v3 chevronImageView];
    v59[1] = v28;
    v29 = [MEMORY[0x277CBEA60] arrayWithObjects:v59 count:2];
    v30 = [v26 initWithArrangedSubviews:v29];
    [(HUChevronButton *)v3 setContainerView:v30];

    v31 = [(HUChevronButton *)v3 containerView];
    [v31 setUserInteractionEnabled:0];

    v32 = [(HUChevronButton *)v3 containerView];
    [v32 setTranslatesAutoresizingMaskIntoConstraints:0];

    v33 = [(HUChevronButton *)v3 containerView];
    [v33 setAlignment:3];

    v34 = [(HUChevronButton *)v3 containerView];
    [v34 setSpacing:4.0];

    v35 = [(HUChevronButton *)v3 containerView];
    [(HUChevronButton *)v3 addSubview:v35];

    v36 = [MEMORY[0x277CBEB18] array];
    v37 = [(HUChevronButton *)v3 containerView];
    v38 = [v37 topAnchor];
    v39 = [(HUChevronButton *)v3 topAnchor];
    v40 = [v38 constraintEqualToAnchor:v39 constant:6.0];
    [v36 addObject:v40];

    v41 = [(HUChevronButton *)v3 containerView];
    v42 = [v41 bottomAnchor];
    v43 = [(HUChevronButton *)v3 bottomAnchor];
    v44 = [v42 constraintEqualToAnchor:v43 constant:-6.0];
    [v36 addObject:v44];

    v45 = [(HUChevronButton *)v3 containerView];
    v46 = [v45 centerXAnchor];
    v47 = [(HUChevronButton *)v3 centerXAnchor];
    v48 = [v46 constraintEqualToAnchor:v47];
    [v36 addObject:v48];

    v49 = [(HUChevronButton *)v3 containerView];
    v50 = [v49 leadingAnchor];
    v51 = [(HUChevronButton *)v3 leadingAnchor];
    v52 = [v50 constraintGreaterThanOrEqualToAnchor:v51];
    [v36 addObject:v52];

    v53 = [(HUChevronButton *)v3 containerView];
    v54 = [v53 trailingAnchor];
    v55 = [(HUChevronButton *)v3 trailingAnchor];
    v56 = [v54 constraintLessThanOrEqualToAnchor:v55];
    [v36 addObject:v56];

    [MEMORY[0x277CCAAD0] activateConstraints:v36];
  }

  return v3;
}

- (void)setHighlighted:(BOOL)a3
{
  v10.receiver = self;
  v10.super_class = HUChevronButton;
  [(HUChevronButton *)&v10 setHighlighted:?];
  if (a3)
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