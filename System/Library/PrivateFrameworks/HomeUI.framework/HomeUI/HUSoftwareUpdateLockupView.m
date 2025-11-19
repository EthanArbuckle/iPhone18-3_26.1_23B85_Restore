@interface HUSoftwareUpdateLockupView
- (HUSoftwareUpdateLockupView)initWithFrame:(CGRect)a3;
- (id)getAssociatedViewForGridViewController:(id)a3;
- (id)initializeIconViewWithSize:(unint64_t)a3;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6;
- (void)setGridViewController:(id)a3;
- (void)updateDescriptionExpandableTextView:(id)a3 animate:(BOOL)a4;
- (void)updateIconView:(id)a3 animate:(BOOL)a4;
- (void)updateUIWithAnimation:(BOOL)a3;
@end

@implementation HUSoftwareUpdateLockupView

- (HUSoftwareUpdateLockupView)initWithFrame:(CGRect)a3
{
  v16.receiver = self;
  v16.super_class = HUSoftwareUpdateLockupView;
  v3 = [(HULockupView *)&v16 initWithFrame:a3.origin.x, a3.origin.y, a3.size.width, a3.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUSoftwareUpdateLockupView *)v3 setTertiaryDetailLabel:v5];

    v6 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [v6 setTranslatesAutoresizingMaskIntoConstraints:0];

    v7 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [v7 setNumberOfLines:2];

    v8 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [v8 setLineBreakMode:0];

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    v10 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [v10 setFont:v9];

    v11 = [MEMORY[0x277D75348] systemGrayColor];
    v12 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [v12 setTextColor:v11];

    v13 = [(HULockupView *)v3 stackView];
    v14 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [v13 addArrangedSubview:v14];
  }

  return v3;
}

- (void)dealloc
{
  if ([(HUSoftwareUpdateLockupView *)self isObservingPreferredContentSize])
  {
    v3 = [(HUSoftwareUpdateLockupView *)self gridViewController];
    [v3 removeObserver:self forKeyPath:@"preferredContentSize" context:HUSoftwareUpdateLockupCellContext];

    [(HUSoftwareUpdateLockupView *)self setIsObservingPreferredContentSize:0];
  }

  [(HUSoftwareUpdateLockupView *)self setGridViewController:0];
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateLockupView;
  [(HUSoftwareUpdateLockupView *)&v4 dealloc];
}

- (id)getAssociatedViewForGridViewController:(id)a3
{
  v3 = a3;
  objc_opt_class();
  v4 = objc_getAssociatedObject(v3, HUSoftwareUpdateLockupCellAssociatedViewKey);

  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  return v5;
}

- (void)setGridViewController:(id)a3
{
  v40 = a3;
  v5 = [(HUSoftwareUpdateLockupView *)self gridViewController];

  if (v5 != v40)
  {
    v6 = [(HUSoftwareUpdateLockupView *)self gridViewController];
    if (v6)
    {
      v7 = v6;
      v8 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      v9 = [v8 view];
      v10 = [v9 superview];
      v11 = [(HULockupView *)self stackView];

      if (v10 == v11)
      {
        v12 = [(HUSoftwareUpdateLockupView *)self gridViewController];
        v13 = [v12 view];
        [v13 removeFromSuperview];

        v14 = [(HUSoftwareUpdateLockupView *)self gridViewController];
        [(HUSoftwareUpdateLockupView *)self clearAssociatedViewForGridViewController:v14];
      }
    }

    if ([(HUSoftwareUpdateLockupView *)self isObservingPreferredContentSize])
    {
      v15 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [v15 removeObserver:self forKeyPath:@"preferredContentSize" context:HUSoftwareUpdateLockupCellContext];

      [(HUSoftwareUpdateLockupView *)self setIsObservingPreferredContentSize:0];
    }

    objc_storeStrong(&self->_gridViewController, a3);
    v16 = [(HUSoftwareUpdateLockupView *)self gridViewController];

    if (v16)
    {
      v17 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      v18 = [(HUSoftwareUpdateLockupView *)self getAssociatedViewForGridViewController:v17];

      if (!v18)
      {
        v19 = [0 gridViewController];
        v20 = [(HUSoftwareUpdateLockupView *)self gridViewController];

        if (v19 == v20)
        {
          [0 setGridViewController:0];
        }
      }

      v21 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [(HUSoftwareUpdateLockupView *)self setAssociatedViewForGridViewController:v21];

      v22 = [(HULockupView *)self stackView];
      v23 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      v24 = [v23 view];
      [v22 addArrangedSubview:v24];

      [(HUSoftwareUpdateLockupView *)self setIsObservingPreferredContentSize:1];
      v25 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [v25 addObserver:self forKeyPath:@"preferredContentSize" options:1 context:HUSoftwareUpdateLockupCellContext];

      v26 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];

      if (v26)
      {
        v27 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
        [v27 setActive:0];
      }

      v28 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [v28 preferredContentSize];
      v30 = v29;

      v31 = v30;
      if (fabsf(v31) < 0.00000011921)
      {
        v30 = 1.0;
      }

      v32 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      v33 = [v32 view];
      v34 = [v33 heightAnchor];
      v35 = [v34 constraintEqualToConstant:v30];
      [(HUSoftwareUpdateLockupView *)self setGridHeightConstraint:v35];

      v36 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
      [v36 setActive:1];

      v37 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      v38 = [v37 view];
      LOBYTE(v34) = [v38 isHidden];

      if ((v34 & 1) == 0)
      {
        v39 = [(HULockupView *)self internalViewResizingDelegate];
        [v39 didUpdateRequiredHeightForLockupView:self];
      }
    }
  }
}

- (void)observeValueForKeyPath:(id)a3 ofObject:(id)a4 change:(id)a5 context:(void *)a6
{
  v24 = a5;
  if ([a3 isEqualToString:@"preferredContentSize"])
  {
    v9 = HUSoftwareUpdateLockupCellContext == a6;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = [(HUSoftwareUpdateLockupView *)self affectedAccessories];
    v11 = [v10 count];

    if (v11)
    {
      objc_opt_class();
      v12 = [v24 objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = (objc_opt_isKindOfClass() & 1) != 0 ? v12 : 0;
      v14 = v13;

      [v14 CGSizeValue];
      v16 = v15;

      v17 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
      [v17 constant];
      v19 = v18;

      if (v19 != v16)
      {
        v20 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
        [v20 setConstant:v16];

        v21 = [(HUSoftwareUpdateLockupView *)self gridViewController];
        v22 = [v21 view];

        if (([v22 isHidden] & 1) == 0)
        {
          v23 = [(HULockupView *)self internalViewResizingDelegate];
          [v23 didUpdateRequiredHeightForLockupView:self];
        }
      }
    }
  }
}

- (id)initializeIconViewWithSize:(unint64_t)a3
{
  v4 = objc_alloc_init(MEMORY[0x277D180D0]);
  [v4 setContentMode:0];
  [v4 setIconSize:a3];

  return v4;
}

- (void)updateIconView:(id)a3 animate:(BOOL)a4
{
  v4 = a4;
  v9 = a3;
  v6 = [(HUSoftwareUpdateLockupView *)self item];
  v7 = [v6 latestResults];
  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [v9 updateWithIconDescriptor:v8 displayStyle:1 animated:v4];

  [v9 sizeToFit];
}

- (void)updateDescriptionExpandableTextView:(id)a3 animate:(BOOL)a4
{
  v9 = a3;
  v5 = [(HUSoftwareUpdateLockupView *)self item];
  v6 = [v5 latestResults];

  v7 = [v6 objectForKeyedSubscript:@"releaseNotesAttributedString"];
  if (v7)
  {
    [v9 setAttributedText:v7];
  }

  else
  {
    v8 = [v6 objectForKeyedSubscript:@"releaseNotesString"];
    [v9 setText:v8];
  }
}

- (void)updateUIWithAnimation:(BOOL)a3
{
  v28.receiver = self;
  v28.super_class = HUSoftwareUpdateLockupView;
  [(HULockupView *)&v28 updateUIWithAnimation:a3];
  v6 = [(HUSoftwareUpdateLockupView *)self item];
  v7 = [v6 latestResults];

  v8 = [v7 objectForKeyedSubscript:*MEMORY[0x277D13F50]];
  v9 = [(HUSoftwareUpdateLockupView *)self tertiaryDetailLabel];
  [v9 setText:v8];

  v10 = [v7 objectForKeyedSubscript:@"affectedAccessories"];
  [(HUSoftwareUpdateLockupView *)self setAffectedAccessories:v10];

  objc_opt_class();
  v11 = [(HUSoftwareUpdateLockupView *)self gridViewController];
  if (objc_opt_isKindOfClass())
  {
    v12 = v11;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    v14 = [(HUSoftwareUpdateLockupView *)self affectedAccessories];
    v15 = [v14 na_flatMap:&__block_literal_global_49];

    v3 = [v13 visibleAccessories];
    v16 = [v3 isEqualToSet:v15];

    if ((v16 & 1) == 0)
    {
      [v13 setVisibleAccessories:v15];
      v3 = [v13 itemManager];
      v17 = [v3 reloadAndUpdateAllItemsFromSenderSelector:a2];
    }

    v18 = [v13 collectionView];
    [v18 layoutIfNeeded];
  }

  v19 = [(HULockupView *)self descriptionExpandableTextView];
  v20 = [v19 isExpanded];
  if (v20)
  {
    v3 = [(HUSoftwareUpdateLockupView *)self affectedAccessories];
    v21 = [v3 count] == 0;
  }

  else
  {
    v21 = 1;
  }

  v22 = [(HUSoftwareUpdateLockupView *)self gridViewController];
  v23 = [v22 view];
  [v23 setHidden:v21];

  if (v20)
  {
  }

  v24 = [(HULockupView *)self descriptionExpandableTextView];
  v25 = [v24 isExpanded];
  if (v25)
  {
    v3 = [(HUSoftwareUpdateLockupView *)self tertiaryDetailLabel];
    v21 = [v3 text];
    v26 = v21 == 0;
  }

  else
  {
    v26 = 1;
  }

  v27 = [(HUSoftwareUpdateLockupView *)self tertiaryDetailLabel];
  [v27 setHidden:v26];

  if (v25)
  {
  }
}

@end