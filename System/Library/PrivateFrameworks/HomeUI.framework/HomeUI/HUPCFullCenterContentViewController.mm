@interface HUPCFullCenterContentViewController
- (void)insertCenterContentView;
- (void)setCenteredContentView:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
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

- (void)setCenteredContentView:(id)a3
{
  v5 = a3;
  v4 = [(HUPCFullCenterContentViewController *)self centerContentView];

  if (v4 != v5)
  {
    [v5 setTranslatesAutoresizingMaskIntoConstraints:0];
    [(HUPCFullCenterContentViewController *)self setCenterContentView:v5];
  }

  if ([(HUPCFullCenterContentViewController *)self isViewLoaded])
  {
    [(HUPCFullCenterContentViewController *)self insertCenterContentView];
  }
}

- (void)insertCenterContentView
{
  v38[4] = *MEMORY[0x277D85DE8];
  v3 = [(HUPCFullCenterContentViewController *)self centerContentView];
  v4 = [v3 superview];
  v5 = [(HUPCFullCenterContentViewController *)self contentView];

  if (v4 != v5)
  {
    v6 = [(HUPCFullCenterContentViewController *)self centerContentView];
    [v6 removeFromSuperview];

    v7 = [(HUPCFullCenterContentViewController *)self contentView];
    v8 = [(HUPCFullCenterContentViewController *)self centerContentView];
    [v7 addSubview:v8];

    v9 = [(HUPCFullCenterContentViewController *)self contentView];
    v10 = [v9 mainContentGuide];

    v37 = [(HUPCFullCenterContentViewController *)self centerContentView];
    v36 = [v37 centerXAnchor];
    v35 = [v10 centerXAnchor];
    v34 = [v36 constraintEqualToAnchor:v35];
    v38[0] = v34;
    v32 = [(HUPCFullCenterContentViewController *)self centerContentView];
    v31 = [v32 centerYAnchor];
    v30 = [v10 centerYAnchor];
    v29 = [v31 constraintEqualToAnchor:v30];
    v38[1] = v29;
    v33 = v10;
    v11 = [v10 bottomAnchor];
    v12 = [(HUPCFullCenterContentViewController *)self centerContentView];
    v13 = [v12 bottomAnchor];
    v14 = [v11 constraintGreaterThanOrEqualToAnchor:v13];
    v38[2] = v14;
    v15 = [v10 topAnchor];
    v16 = [(HUPCFullCenterContentViewController *)self centerContentView];
    v17 = [v16 topAnchor];
    v18 = [v15 constraintLessThanOrEqualToAnchor:v17];
    v38[3] = v18;
    v19 = [MEMORY[0x277CBEA60] arrayWithObjects:v38 count:4];
    [(HUPCFullCenterContentViewController *)self setFloatingConstraintGroup:v19];

    v20 = MEMORY[0x277CCAAD0];
    v21 = [(HUPCFullCenterContentViewController *)self floatingConstraintGroup];
    [v20 activateConstraints:v21];

    v22 = [(HUPCFullCenterContentViewController *)self centerContentView];
    v23 = [v22 widthAnchor];
    v24 = [v33 widthAnchor];
    v25 = [v23 constraintLessThanOrEqualToAnchor:v24];
    [v25 setActive:1];

    v26 = [(HUPCFullCenterContentViewController *)self centerContentView];
    v27 = [(HUPCFullCenterContentViewController *)self contentView];
    v28 = [v26 pinToEdgesConstraints:v27];
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

- (void)traitCollectionDidChange:(id)a3
{
  v4.receiver = self;
  v4.super_class = HUPCFullCenterContentViewController;
  [(HUPCFullCenterContentViewController *)&v4 traitCollectionDidChange:a3];
  [(HUPCFullCenterContentViewController *)self recalculateLayoutForTraitCollectionChange];
}

@end