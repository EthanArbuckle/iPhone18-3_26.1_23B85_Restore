@interface HUSoftwareUpdateLockupView
- (HUSoftwareUpdateLockupView)initWithFrame:(CGRect)frame;
- (id)getAssociatedViewForGridViewController:(id)controller;
- (id)initializeIconViewWithSize:(unint64_t)size;
- (void)dealloc;
- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context;
- (void)setGridViewController:(id)controller;
- (void)updateDescriptionExpandableTextView:(id)view animate:(BOOL)animate;
- (void)updateIconView:(id)view animate:(BOOL)animate;
- (void)updateUIWithAnimation:(BOOL)animation;
@end

@implementation HUSoftwareUpdateLockupView

- (HUSoftwareUpdateLockupView)initWithFrame:(CGRect)frame
{
  v16.receiver = self;
  v16.super_class = HUSoftwareUpdateLockupView;
  v3 = [(HULockupView *)&v16 initWithFrame:frame.origin.x, frame.origin.y, frame.size.width, frame.size.height];
  if (v3)
  {
    v4 = objc_alloc(MEMORY[0x277D756B8]);
    v5 = [v4 initWithFrame:{*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)}];
    [(HUSoftwareUpdateLockupView *)v3 setTertiaryDetailLabel:v5];

    tertiaryDetailLabel = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [tertiaryDetailLabel setTranslatesAutoresizingMaskIntoConstraints:0];

    tertiaryDetailLabel2 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [tertiaryDetailLabel2 setNumberOfLines:2];

    tertiaryDetailLabel3 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [tertiaryDetailLabel3 setLineBreakMode:0];

    v9 = [MEMORY[0x277D74300] preferredFontForTextStyle:*MEMORY[0x277D76938]];
    tertiaryDetailLabel4 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [tertiaryDetailLabel4 setFont:v9];

    systemGrayColor = [MEMORY[0x277D75348] systemGrayColor];
    tertiaryDetailLabel5 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [tertiaryDetailLabel5 setTextColor:systemGrayColor];

    stackView = [(HULockupView *)v3 stackView];
    tertiaryDetailLabel6 = [(HUSoftwareUpdateLockupView *)v3 tertiaryDetailLabel];
    [stackView addArrangedSubview:tertiaryDetailLabel6];
  }

  return v3;
}

- (void)dealloc
{
  if ([(HUSoftwareUpdateLockupView *)self isObservingPreferredContentSize])
  {
    gridViewController = [(HUSoftwareUpdateLockupView *)self gridViewController];
    [gridViewController removeObserver:self forKeyPath:@"preferredContentSize" context:HUSoftwareUpdateLockupCellContext];

    [(HUSoftwareUpdateLockupView *)self setIsObservingPreferredContentSize:0];
  }

  [(HUSoftwareUpdateLockupView *)self setGridViewController:0];
  v4.receiver = self;
  v4.super_class = HUSoftwareUpdateLockupView;
  [(HUSoftwareUpdateLockupView *)&v4 dealloc];
}

- (id)getAssociatedViewForGridViewController:(id)controller
{
  controllerCopy = controller;
  objc_opt_class();
  v4 = objc_getAssociatedObject(controllerCopy, HUSoftwareUpdateLockupCellAssociatedViewKey);

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

- (void)setGridViewController:(id)controller
{
  controllerCopy = controller;
  gridViewController = [(HUSoftwareUpdateLockupView *)self gridViewController];

  if (gridViewController != controllerCopy)
  {
    gridViewController2 = [(HUSoftwareUpdateLockupView *)self gridViewController];
    if (gridViewController2)
    {
      v7 = gridViewController2;
      gridViewController3 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      view = [gridViewController3 view];
      superview = [view superview];
      stackView = [(HULockupView *)self stackView];

      if (superview == stackView)
      {
        gridViewController4 = [(HUSoftwareUpdateLockupView *)self gridViewController];
        view2 = [gridViewController4 view];
        [view2 removeFromSuperview];

        gridViewController5 = [(HUSoftwareUpdateLockupView *)self gridViewController];
        [(HUSoftwareUpdateLockupView *)self clearAssociatedViewForGridViewController:gridViewController5];
      }
    }

    if ([(HUSoftwareUpdateLockupView *)self isObservingPreferredContentSize])
    {
      gridViewController6 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [gridViewController6 removeObserver:self forKeyPath:@"preferredContentSize" context:HUSoftwareUpdateLockupCellContext];

      [(HUSoftwareUpdateLockupView *)self setIsObservingPreferredContentSize:0];
    }

    objc_storeStrong(&self->_gridViewController, controller);
    gridViewController7 = [(HUSoftwareUpdateLockupView *)self gridViewController];

    if (gridViewController7)
    {
      gridViewController8 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      v18 = [(HUSoftwareUpdateLockupView *)self getAssociatedViewForGridViewController:gridViewController8];

      if (!v18)
      {
        gridViewController9 = [0 gridViewController];
        gridViewController10 = [(HUSoftwareUpdateLockupView *)self gridViewController];

        if (gridViewController9 == gridViewController10)
        {
          [0 setGridViewController:0];
        }
      }

      gridViewController11 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [(HUSoftwareUpdateLockupView *)self setAssociatedViewForGridViewController:gridViewController11];

      stackView2 = [(HULockupView *)self stackView];
      gridViewController12 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      view3 = [gridViewController12 view];
      [stackView2 addArrangedSubview:view3];

      [(HUSoftwareUpdateLockupView *)self setIsObservingPreferredContentSize:1];
      gridViewController13 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [gridViewController13 addObserver:self forKeyPath:@"preferredContentSize" options:1 context:HUSoftwareUpdateLockupCellContext];

      gridHeightConstraint = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];

      if (gridHeightConstraint)
      {
        gridHeightConstraint2 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
        [gridHeightConstraint2 setActive:0];
      }

      gridViewController14 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      [gridViewController14 preferredContentSize];
      v30 = v29;

      v31 = v30;
      if (fabsf(v31) < 0.00000011921)
      {
        v30 = 1.0;
      }

      gridViewController15 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      view4 = [gridViewController15 view];
      heightAnchor = [view4 heightAnchor];
      v35 = [heightAnchor constraintEqualToConstant:v30];
      [(HUSoftwareUpdateLockupView *)self setGridHeightConstraint:v35];

      gridHeightConstraint3 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
      [gridHeightConstraint3 setActive:1];

      gridViewController16 = [(HUSoftwareUpdateLockupView *)self gridViewController];
      view5 = [gridViewController16 view];
      LOBYTE(heightAnchor) = [view5 isHidden];

      if ((heightAnchor & 1) == 0)
      {
        internalViewResizingDelegate = [(HULockupView *)self internalViewResizingDelegate];
        [internalViewResizingDelegate didUpdateRequiredHeightForLockupView:self];
      }
    }
  }
}

- (void)observeValueForKeyPath:(id)path ofObject:(id)object change:(id)change context:(void *)context
{
  changeCopy = change;
  if ([path isEqualToString:@"preferredContentSize"])
  {
    v9 = HUSoftwareUpdateLockupCellContext == context;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    affectedAccessories = [(HUSoftwareUpdateLockupView *)self affectedAccessories];
    v11 = [affectedAccessories count];

    if (v11)
    {
      objc_opt_class();
      v12 = [changeCopy objectForKeyedSubscript:*MEMORY[0x277CCA2F0]];
      v13 = (objc_opt_isKindOfClass() & 1) != 0 ? v12 : 0;
      v14 = v13;

      [v14 CGSizeValue];
      v16 = v15;

      gridHeightConstraint = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
      [gridHeightConstraint constant];
      v19 = v18;

      if (v19 != v16)
      {
        gridHeightConstraint2 = [(HUSoftwareUpdateLockupView *)self gridHeightConstraint];
        [gridHeightConstraint2 setConstant:v16];

        gridViewController = [(HUSoftwareUpdateLockupView *)self gridViewController];
        view = [gridViewController view];

        if (([view isHidden] & 1) == 0)
        {
          internalViewResizingDelegate = [(HULockupView *)self internalViewResizingDelegate];
          [internalViewResizingDelegate didUpdateRequiredHeightForLockupView:self];
        }
      }
    }
  }
}

- (id)initializeIconViewWithSize:(unint64_t)size
{
  v4 = objc_alloc_init(MEMORY[0x277D180D0]);
  [v4 setContentMode:0];
  [v4 setIconSize:size];

  return v4;
}

- (void)updateIconView:(id)view animate:(BOOL)animate
{
  animateCopy = animate;
  viewCopy = view;
  item = [(HUSoftwareUpdateLockupView *)self item];
  latestResults = [item latestResults];
  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13E88]];
  [viewCopy updateWithIconDescriptor:v8 displayStyle:1 animated:animateCopy];

  [viewCopy sizeToFit];
}

- (void)updateDescriptionExpandableTextView:(id)view animate:(BOOL)animate
{
  viewCopy = view;
  item = [(HUSoftwareUpdateLockupView *)self item];
  latestResults = [item latestResults];

  v7 = [latestResults objectForKeyedSubscript:@"releaseNotesAttributedString"];
  if (v7)
  {
    [viewCopy setAttributedText:v7];
  }

  else
  {
    v8 = [latestResults objectForKeyedSubscript:@"releaseNotesString"];
    [viewCopy setText:v8];
  }
}

- (void)updateUIWithAnimation:(BOOL)animation
{
  v28.receiver = self;
  v28.super_class = HUSoftwareUpdateLockupView;
  [(HULockupView *)&v28 updateUIWithAnimation:animation];
  item = [(HUSoftwareUpdateLockupView *)self item];
  latestResults = [item latestResults];

  v8 = [latestResults objectForKeyedSubscript:*MEMORY[0x277D13F50]];
  tertiaryDetailLabel = [(HUSoftwareUpdateLockupView *)self tertiaryDetailLabel];
  [tertiaryDetailLabel setText:v8];

  v10 = [latestResults objectForKeyedSubscript:@"affectedAccessories"];
  [(HUSoftwareUpdateLockupView *)self setAffectedAccessories:v10];

  objc_opt_class();
  gridViewController = [(HUSoftwareUpdateLockupView *)self gridViewController];
  if (objc_opt_isKindOfClass())
  {
    v12 = gridViewController;
  }

  else
  {
    v12 = 0;
  }

  v13 = v12;

  if (v13)
  {
    affectedAccessories = [(HUSoftwareUpdateLockupView *)self affectedAccessories];
    v15 = [affectedAccessories na_flatMap:&__block_literal_global_49];

    visibleAccessories = [v13 visibleAccessories];
    v16 = [visibleAccessories isEqualToSet:v15];

    if ((v16 & 1) == 0)
    {
      [v13 setVisibleAccessories:v15];
      visibleAccessories = [v13 itemManager];
      v17 = [visibleAccessories reloadAndUpdateAllItemsFromSenderSelector:a2];
    }

    collectionView = [v13 collectionView];
    [collectionView layoutIfNeeded];
  }

  descriptionExpandableTextView = [(HULockupView *)self descriptionExpandableTextView];
  isExpanded = [descriptionExpandableTextView isExpanded];
  if (isExpanded)
  {
    visibleAccessories = [(HUSoftwareUpdateLockupView *)self affectedAccessories];
    text = [visibleAccessories count] == 0;
  }

  else
  {
    text = 1;
  }

  gridViewController2 = [(HUSoftwareUpdateLockupView *)self gridViewController];
  view = [gridViewController2 view];
  [view setHidden:text];

  if (isExpanded)
  {
  }

  descriptionExpandableTextView2 = [(HULockupView *)self descriptionExpandableTextView];
  isExpanded2 = [descriptionExpandableTextView2 isExpanded];
  if (isExpanded2)
  {
    visibleAccessories = [(HUSoftwareUpdateLockupView *)self tertiaryDetailLabel];
    text = [visibleAccessories text];
    v26 = text == 0;
  }

  else
  {
    v26 = 1;
  }

  tertiaryDetailLabel2 = [(HUSoftwareUpdateLockupView *)self tertiaryDetailLabel];
  [tertiaryDetailLabel2 setHidden:v26];

  if (isExpanded2)
  {
  }
}

@end