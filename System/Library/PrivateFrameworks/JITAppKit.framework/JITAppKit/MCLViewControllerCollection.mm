@interface MCLViewControllerCollection
- (MCLViewControllerCollection)initWithFrame:(CGRect)frame;
- (UIViewController)owner;
- (void)layoutSubviews;
- (void)scrollViewDidScroll:(id)scroll;
- (void)setViews:(id)views;
@end

@implementation MCLViewControllerCollection

- (MCLViewControllerCollection)initWithFrame:(CGRect)frame
{
  v28[4] = *MEMORY[0x277D85DE8];
  frameCopy = frame;
  v25 = a2;
  v26 = 0;
  v24.receiver = self;
  v24.super_class = MCLViewControllerCollection;
  v26 = [(MCLViewControllerCollection *)&v24 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  objc_storeStrong(&v26, v26);
  if (v26)
  {
    v3 = objc_alloc(MEMORY[0x277D75A68]);
    v4 = [v3 initWithFrame:{frameCopy.origin.x, frameCopy.origin.y, frameCopy.size.width, frameCopy.size.height}];
    contentView = v26->_contentView;
    v26->_contentView = v4;
    MEMORY[0x277D82BD8](contentView);
    [(UIStackView *)v26->_contentView setTranslatesAutoresizingMaskIntoConstraints:0];
    [(UIStackView *)v26->_contentView setAxis:1];
    [(UIStackView *)v26->_contentView setDistribution:?];
    [(UIStackView *)v26->_contentView setAlignment:0];
    [(UIStackView *)v26->_contentView setSpacing:1.0];
    v6 = [MEMORY[0x277CCAAD0] constraintWithItem:v26->_contentView attribute:7 relatedBy:0 toItem:0 attribute:0.0 multiplier:frameCopy.size.width constant:?];
    widthConstraint = v26->_widthConstraint;
    v26->_widthConstraint = v6;
    MEMORY[0x277D82BD8](widthConstraint);
    [(MCLViewControllerCollection *)v26 setDelegate:v26];
    [(MCLViewControllerCollection *)v26 addSubview:v26->_contentView];
    v10 = MEMORY[0x277CCAAD0];
    leftAnchor = [(UIStackView *)v26->_contentView leftAnchor];
    leftAnchor2 = [(MCLViewControllerCollection *)v26 leftAnchor];
    v21 = [leftAnchor constraintEqualToAnchor:?];
    v28[0] = v21;
    rightAnchor = [(UIStackView *)v26->_contentView rightAnchor];
    rightAnchor2 = [(MCLViewControllerCollection *)v26 rightAnchor];
    v18 = [rightAnchor constraintEqualToAnchor:?];
    v28[1] = v18;
    topAnchor = [(UIStackView *)v26->_contentView topAnchor];
    topAnchor2 = [(MCLViewControllerCollection *)v26 topAnchor];
    v15 = [topAnchor constraintEqualToAnchor:?];
    v28[2] = v15;
    bottomAnchor = [(UIStackView *)v26->_contentView bottomAnchor];
    bottomAnchor2 = [(MCLViewControllerCollection *)v26 bottomAnchor];
    v12 = [bottomAnchor constraintEqualToAnchor:?];
    v28[3] = v12;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v28 count:4];
    [v10 activateConstraints:?];
    MEMORY[0x277D82BD8](v11);
    MEMORY[0x277D82BD8](v12);
    MEMORY[0x277D82BD8](bottomAnchor2);
    MEMORY[0x277D82BD8](bottomAnchor);
    MEMORY[0x277D82BD8](v15);
    MEMORY[0x277D82BD8](topAnchor2);
    MEMORY[0x277D82BD8](topAnchor);
    MEMORY[0x277D82BD8](v18);
    MEMORY[0x277D82BD8](rightAnchor2);
    MEMORY[0x277D82BD8](rightAnchor);
    MEMORY[0x277D82BD8](v21);
    MEMORY[0x277D82BD8](leftAnchor2);
    MEMORY[0x277D82BD8](leftAnchor);
  }

  v9 = MEMORY[0x277D82BE0](v26);
  objc_storeStrong(&v26, 0);
  *MEMORY[0x277D85DE8];
  return v9;
}

- (void)setViews:(id)views
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, views);
  v18 = [MEMORY[0x277CBEB58] setWithArray:location[0]];
  v17 = [MEMORY[0x277CBEB58] setWithArray:selfCopy->_views];
  [v18 minusSet:v17];
  v6 = [MEMORY[0x277CBEB98] setWithArray:location[0]];
  [v17 minusSet:?];
  MEMORY[0x277D82BD8](v6);
  [v17 enumerateObjectsUsingBlock:&__block_literal_global_6];
  v3 = [location[0] copy];
  views = selfCopy->_views;
  selfCopy->_views = v3;
  MEMORY[0x277D82BD8](views);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_owner);
  if (WeakRetained)
  {
    v5 = location[0];
    v7 = MEMORY[0x277D85DD0];
    v8 = -1073741824;
    v9 = 0;
    v10 = __40__MCLViewControllerCollection_setViews___block_invoke_2;
    v11 = &unk_2797EE580;
    v12 = MEMORY[0x277D82BE0](v18);
    v13 = MEMORY[0x277D82BE0](WeakRetained);
    v14 = MEMORY[0x277D82BE0](selfCopy);
    [v5 enumerateObjectsUsingBlock:&v7];
    objc_storeStrong(&v14, 0);
    objc_storeStrong(&v13, 0);
    objc_storeStrong(&v12, 0);
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  objc_storeStrong(&WeakRetained, 0);
  objc_storeStrong(&v17, 0);
  objc_storeStrong(&v18, 0);
  objc_storeStrong(location, 0);
}

void __40__MCLViewControllerCollection_setViews___block_invoke(void *a1, void *a2, void *a3)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v9[2] = a3;
  v9[1] = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v9[0] = MEMORY[0x277D82BE0](location[0]);
    [v9[0] willMoveToParentViewController:?];
    v5 = [v9[0] view];
    v4 = [v5 superview];
    [v4 removeFromSuperview];
    MEMORY[0x277D82BD8](v4);
    MEMORY[0x277D82BD8](v5);
    [v9[0] removeFromParentViewController];
    objc_storeStrong(v9, 0);
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v8 = MEMORY[0x277D82BE0](location[0]);
      v3 = [v8 superview];
      [v3 removeFromSuperview];
      MEMORY[0x277D82BD8](v3);
      objc_storeStrong(&v8, 0);
    }
  }

  objc_storeStrong(location, 0);
}

void __40__MCLViewControllerCollection_setViews___block_invoke_2(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v48[4] = *MEMORY[0x277D85DE8];
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v45 = a3;
  v44 = a4;
  v43 = a1;
  if ([*(a1 + 32) containsObject:location[0]])
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v41 = MEMORY[0x277D82BE0](location[0]);
      v40 = [v41 view];
      [v40 setTranslatesAutoresizingMaskIntoConstraints:0];
      [*(a1 + 40) addChildViewController:v41];
      v4 = objc_alloc(MEMORY[0x277D75D18]);
      v39 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
      [v39 setTranslatesAutoresizingMaskIntoConstraints:0];
      [v39 addSubview:v40];
      v20 = MEMORY[0x277CCAAD0];
      v33 = [v39 leadingAnchor];
      v32 = [v40 leadingAnchor];
      v31 = [v33 constraintEqualToAnchor:?];
      v48[0] = v31;
      v30 = [v39 trailingAnchor];
      v29 = [v40 trailingAnchor];
      v28 = [v30 constraintEqualToAnchor:?];
      v48[1] = v28;
      v27 = [v39 topAnchor];
      v26 = [v40 topAnchor];
      v25 = [v27 constraintEqualToAnchor:?];
      v48[2] = v25;
      v24 = [v39 bottomAnchor];
      v23 = [v40 bottomAnchor];
      v22 = [v24 constraintEqualToAnchor:?];
      v48[3] = v22;
      v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v48 count:4];
      [v20 activateConstraints:?];
      MEMORY[0x277D82BD8](v21);
      MEMORY[0x277D82BD8](v22);
      MEMORY[0x277D82BD8](v23);
      MEMORY[0x277D82BD8](v24);
      MEMORY[0x277D82BD8](v25);
      MEMORY[0x277D82BD8](v26);
      MEMORY[0x277D82BD8](v27);
      MEMORY[0x277D82BD8](v28);
      MEMORY[0x277D82BD8](v29);
      MEMORY[0x277D82BD8](v30);
      MEMORY[0x277D82BD8](v31);
      MEMORY[0x277D82BD8](v32);
      MEMORY[0x277D82BD8](v33);
      [*(*(a1 + 48) + 2152) insertArrangedSubview:v39 atIndex:v45];
      [v41 didMoveToParentViewController:*(a1 + 40)];
      objc_storeStrong(&v39, 0);
      objc_storeStrong(&v40, 0);
      objc_storeStrong(&v41, 0);
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v38 = MEMORY[0x277D82BE0](location[0]);
        [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
        v5 = objc_alloc(MEMORY[0x277D75D18]);
        v37 = [v5 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
        [v37 setTranslatesAutoresizingMaskIntoConstraints:0];
        [v37 addSubview:v38];
        v6 = MEMORY[0x277CCAAD0];
        v19 = [v37 leadingAnchor];
        v18 = [v38 leadingAnchor];
        v17 = [v19 constraintEqualToAnchor:?];
        v47[0] = v17;
        v16 = [v37 trailingAnchor];
        v15 = [v38 trailingAnchor];
        v14 = [v16 constraintEqualToAnchor:?];
        v47[1] = v14;
        v13 = [v37 topAnchor];
        v12 = [v38 topAnchor];
        v11 = [v13 constraintEqualToAnchor:?];
        v47[2] = v11;
        v10 = [v37 bottomAnchor];
        v9 = [v38 bottomAnchor];
        v8 = [v10 constraintEqualToAnchor:?];
        v47[3] = v8;
        v7 = [MEMORY[0x277CBEA60] arrayWithObjects:v47 count:4];
        [v6 activateConstraints:?];
        MEMORY[0x277D82BD8](v7);
        MEMORY[0x277D82BD8](v8);
        MEMORY[0x277D82BD8](v9);
        MEMORY[0x277D82BD8](v10);
        MEMORY[0x277D82BD8](v11);
        MEMORY[0x277D82BD8](v12);
        MEMORY[0x277D82BD8](v13);
        MEMORY[0x277D82BD8](v14);
        MEMORY[0x277D82BD8](v15);
        MEMORY[0x277D82BD8](v16);
        MEMORY[0x277D82BD8](v17);
        MEMORY[0x277D82BD8](v18);
        MEMORY[0x277D82BD8](v19);
        [*(*(a1 + 48) + 2152) insertArrangedSubview:v37 atIndex:v45];
        objc_storeStrong(&v37, 0);
        objc_storeStrong(&v38, 0);
      }
    }

    v42 = 0;
  }

  else
  {
    v42 = 1;
  }

  objc_storeStrong(location, 0);
  *MEMORY[0x277D85DE8];
}

- (void)layoutSubviews
{
  selfCopy = self;
  v17 = a2;
  [(MCLViewControllerCollection *)self frame];
  v12 = v2;
  v13 = v3;
  v14 = v4;
  v15 = v5;
  v16 = v4;
  [(NSLayoutConstraint *)selfCopy->_widthConstraint constant];
  if (v6 != v16)
  {
    [(NSLayoutConstraint *)selfCopy->_widthConstraint setConstant:v16];
    [(NSLayoutConstraint *)selfCopy->_widthConstraint setActive:1];
    [(MCLViewControllerCollection *)selfCopy contentOffset];
    v10 = v7;
    v11 = v8 - 1.0;
    [(MCLViewControllerCollection *)selfCopy setContentOffset:1 animated:v7, v8 - 1.0];
  }

  v9.receiver = selfCopy;
  v9.super_class = MCLViewControllerCollection;
  [(MCLViewControllerCollection *)&v9 layoutSubviews];
}

- (void)scrollViewDidScroll:(id)scroll
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, scroll);
  if (UIAccessibilityIsVoiceOverRunning() || UIAccessibilityIsSwitchControlRunning())
  {
    v34 = 1;
  }

  else
  {
    [location[0] contentOffset];
    v31 = v3;
    v32 = v4;
    v13 = v4;
    [location[0] contentInset];
    v27 = v5;
    v28 = v6;
    v29 = v7;
    v30 = v8;
    v33 = v13 + v5 - 20.0;
    [location[0] frame];
    v22 = v9;
    v23 = v10;
    v24 = v11;
    v25 = v12;
    v26 = v33 + v12 + 40.0;
    arrangedSubviews = [(UIStackView *)selfCopy->_contentView arrangedSubviews];
    v15 = MEMORY[0x277D85DD0];
    v16 = -1073741824;
    v17 = 0;
    v18 = __51__MCLViewControllerCollection_scrollViewDidScroll___block_invoke;
    v19 = &__block_descriptor_48_e23_v32__0__UIView_8Q16_B24l;
    v20 = v33;
    v21 = v26;
    [(NSArray *)arrangedSubviews enumerateObjectsUsingBlock:?];
    MEMORY[0x277D82BD8](arrangedSubviews);
    v34 = 0;
  }

  objc_storeStrong(location, 0);
}

void __51__MCLViewControllerCollection_scrollViewDidScroll___block_invoke(double *a1, void *a2, void *a3, void *a4)
{
  location[1] = a1;
  location[0] = 0;
  objc_storeStrong(location, a2);
  v10[3] = a3;
  v10[2] = a4;
  v10[1] = a1;
  v8 = [location[0] subviews];
  v10[0] = [v8 firstObject];
  MEMORY[0x277D82BD8](v8);
  if (v10[0])
  {
    [location[0] frame];
    rect = v12;
    v4 = 1;
    if (CGRectGetMaxY(v12) >= a1[4])
    {
      v4 = CGRectGetMinY(rect) > a1[5];
    }

    if ([v10[0] isHidden] != v4)
    {
      [v10[0] setHidden:v4];
    }
  }

  objc_storeStrong(v10, 0);
  objc_storeStrong(location, 0);
}

- (UIViewController)owner
{
  WeakRetained = objc_loadWeakRetained(&self->_owner);

  return WeakRetained;
}

@end