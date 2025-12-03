@interface HUPCFullCenterContentViewController
- (void)insertCenterContentView;
- (void)setCenteredContentView:(id)view;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation HUPCFullCenterContentViewController

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = HUPCFullCenterContentViewController;
  [(HUPCFullCenterContentViewController *)&v3 viewDidLoad];
  [(HUPCFullCenterContentViewController *)self insertCenterContentView];
}

- (void)setCenteredContentView:(id)view
{
  viewCopy = view;
  centerContentView = [(HUPCFullCenterContentViewController *)self centerContentView];

  if (centerContentView != viewCopy)
  {
    [viewCopy setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUPCFullCenterContentViewController *)self setCenterContentView:viewCopy];
  }

  if ([(HUPCFullCenterContentViewController *)self isViewLoaded])
  {
    [(HUPCFullCenterContentViewController *)self insertCenterContentView];
  }
}

- (void)insertCenterContentView
{
  v38[4] = *MEMORY[0x277D85DE8];
  centerContentView = [(HUPCFullCenterContentViewController *)self centerContentView];
  superview = [centerContentView superview];
  contentView = [(HUPCFullCenterContentViewController *)self contentView];

  if (superview != contentView)
  {
    centerContentView2 = [(HUPCFullCenterContentViewController *)self centerContentView];
    [centerContentView2 removeFromSuperview];

    contentView2 = [(HUPCFullCenterContentViewController *)self contentView];
    centerContentView3 = [(HUPCFullCenterContentViewController *)self centerContentView];
    [contentView2 addSubview:centerContentView3];

    contentView3 = [(HUPCFullCenterContentViewController *)self contentView];
    mainContentGuide = [contentView3 mainContentGuide];

    centerContentView4 = [(HUPCFullCenterContentViewController *)self centerContentView];
    centerXAnchor = [centerContentView4 centerXAnchor];
    centerXAnchor2 = [mainContentGuide centerXAnchor];
    v34 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
    v38[0] = v34;
    centerContentView5 = [(HUPCFullCenterContentViewController *)self centerContentView];
    centerYAnchor = [centerContentView5 centerYAnchor];
    centerYAnchor2 = [mainContentGuide centerYAnchor];
    v29 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
    v38[1] = v29;
    v33 = mainContentGuide;
    bottomAnchor = [mainContentGuide bottomAnchor];
    centerContentView6 = [(HUPCFullCenterContentViewController *)self centerContentView];
    bottomAnchor2 = [centerContentView6 bottomAnchor];
    v14 = [bottomAnchor constraintGreaterThanOrEqualToAnchor:bottomAnchor2];
    v38[2] = v14;
    topAnchor = [mainContentGuide topAnchor];
    centerContentView7 = [(HUPCFullCenterContentViewController *)self centerContentView];
    topAnchor2 = [centerContentView7 topAnchor];
    v18 = [topAnchor constraintLessThanOrEqualToAnchor:topAnchor2];
    v38[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [(HUPCFullCenterContentViewController *)self setFloatingConstraintGroup:v19];

    v20 = MEMORY[0x277CCAAD0];
    floatingConstraintGroup = [(HUPCFullCenterContentViewController *)self floatingConstraintGroup];
    [v20 activateConstraints:floatingConstraintGroup];

    centerContentView8 = [(HUPCFullCenterContentViewController *)self centerContentView];
    widthAnchor = [centerContentView8 widthAnchor];
    widthAnchor2 = [v33 widthAnchor];
    v25 = [widthAnchor constraintLessThanOrEqualToAnchor:widthAnchor2];
    [v25 setActive:1];

    centerContentView9 = [(HUPCFullCenterContentViewController *)self centerContentView];
    contentView4 = [(HUPCFullCenterContentViewController *)self contentView];
    v28 = [centerContentView9 pinToEdgesConstraints:contentView4];
    [(HUPCFullCenterContentViewController *)self setPinnedConstraintGroup:v28];
  }
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = HUPCFullCenterContentViewController;
  [(HUPCFullCenterContentViewController *)&v3 viewDidLayoutSubviews];
  [(HUPCFullCenterContentViewController *)self recalculateLayoutForTraitCollectionChange];
}

- (void)traitCollectionDidChange:(id)change
{
  v4.receiver = self;
  v4.super_class = HUPCFullCenterContentViewController;
  [(HUPCFullCenterContentViewController *)&v4 traitCollectionDidChange:change];
  [(HUPCFullCenterContentViewController *)self recalculateLayoutForTraitCollectionChange];
}

@end