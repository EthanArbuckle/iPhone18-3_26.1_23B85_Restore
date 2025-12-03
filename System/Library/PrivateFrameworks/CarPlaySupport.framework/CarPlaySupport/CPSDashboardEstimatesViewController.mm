@interface CPSDashboardEstimatesViewController
+ (NSEdgeInsets)edgeInsets;
+ (id)createEstimatesView;
+ (id)createPlatterView;
- (CPSDashboardEstimatesViewController)init;
- (CPSSafeAreaDelegate)safeAreaDelegate;
- (NSEdgeInsets)edgeInsets;
- (UIEdgeInsets)safeAreaInsets;
- (void)navigator:(id)navigator didEndTrip:(BOOL)trip;
- (void)setSafeAreaDelegate:(id)delegate;
- (void)updateTripEstimates:(id)estimates;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CPSDashboardEstimatesViewController

- (CPSDashboardEstimatesViewController)init
{
  v15 = a2;
  v16 = 0;
  v14.receiver = self;
  v14.super_class = CPSDashboardEstimatesViewController;
  v16 = [(CPSDashboardEstimatesViewController *)&v14 init];
  objc_storeStrong(&v16, v16);
  if (v16)
  {
    p_top = &v16->_edgeInsets.top;
    [objc_opt_class() edgeInsets];
    *&v12 = v2;
    *(&v12 + 1) = v3;
    *&v13 = v4;
    *(&v13 + 1) = v5;
    *p_top = v12;
    p_top[1] = v13;
    if (_UISolariumEnabled())
    {
      obj = +[_TtC14CarPlaySupport12CPSGlassView createWithTemplateConfiguration];
      [obj setTranslatesAutoresizingMaskIntoConstraints:0];
      layer = [obj layer];
      [layer setCornerRadius:15.0];
      MEMORY[0x277D82BD8](layer);
      objc_storeStrong(&v16->_contentView, obj);
      objc_storeStrong(&obj, 0);
    }

    else
    {
      createPlatterView = [objc_opt_class() createPlatterView];
      [createPlatterView setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&v16->_contentView, createPlatterView);
      objc_storeStrong(&createPlatterView, 0);
    }

    [(UIView *)v16->_contentView setHidden:1];
  }

  v7 = MEMORY[0x277D82BE0](v16);
  objc_storeStrong(&v16, 0);
  return v7;
}

- (void)viewDidLoad
{
  v43[4] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v40 = a2;
  v39.receiver = self;
  v39.super_class = CPSDashboardEstimatesViewController;
  [(CPSDashboardEstimatesViewController *)&v39 viewDidLoad];
  view = [(CPSDashboardEstimatesViewController *)selfCopy view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2 = MEMORY[0x277D82BD8](view).n128_u64[0];
  view2 = [(CPSDashboardEstimatesViewController *)selfCopy view];
  [view2 addSubview:selfCopy->_contentView];
  *&v3 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  bottomAnchor = [(UIView *)selfCopy->_contentView bottomAnchor];
  view3 = [(CPSDashboardEstimatesViewController *)selfCopy view];
  bottomAnchor2 = [view3 bottomAnchor];
  v4 = [(NSLayoutYAxisAnchor *)bottomAnchor constraintEqualToAnchor:-selfCopy->_edgeInsets.bottom constant:?];
  platterBottomConstraint = selfCopy->_platterBottomConstraint;
  selfCopy->_platterBottomConstraint = v4;
  MEMORY[0x277D82BD8](platterBottomConstraint);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view3);
  *&v6 = MEMORY[0x277D82BD8](bottomAnchor).n128_u64[0];
  v12 = MEMORY[0x277CCAAD0];
  heightAnchor = [(UIView *)selfCopy->_contentView heightAnchor];
  v22 = [(NSLayoutDimension *)heightAnchor constraintEqualToConstant:30.0];
  v43[0] = v22;
  trailingAnchor = [(UIView *)selfCopy->_contentView trailingAnchor];
  view4 = [(CPSDashboardEstimatesViewController *)selfCopy view];
  trailingAnchor2 = [view4 trailingAnchor];
  v18 = [(NSLayoutXAxisAnchor *)trailingAnchor constraintEqualToAnchor:-selfCopy->_edgeInsets.right constant:?];
  v43[1] = v18;
  leadingAnchor = [(UIView *)selfCopy->_contentView leadingAnchor];
  view5 = [(CPSDashboardEstimatesViewController *)selfCopy view];
  leadingAnchor2 = [view5 leadingAnchor];
  v14 = [(NSLayoutXAxisAnchor *)leadingAnchor constraintEqualToAnchor:selfCopy->_edgeInsets.left constant:?];
  v43[2] = v14;
  v43[3] = selfCopy->_platterBottomConstraint;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:?];
  [v12 activateConstraints:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](heightAnchor);
  createEstimatesView = [objc_opt_class() createEstimatesView];
  [createEstimatesView setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&selfCopy->_estimatesView, createEstimatesView);
  [(UIView *)selfCopy->_contentView addSubview:createEstimatesView];
  v24 = MEMORY[0x277CCAAD0];
  topAnchor = [createEstimatesView topAnchor];
  topAnchor2 = [(UIView *)selfCopy->_contentView topAnchor];
  v35 = [topAnchor constraintEqualToAnchor:?];
  v42[0] = v35;
  bottomAnchor3 = [createEstimatesView bottomAnchor];
  bottomAnchor4 = [(UIView *)selfCopy->_contentView bottomAnchor];
  v32 = [bottomAnchor3 constraintEqualToAnchor:?];
  v42[1] = v32;
  trailingAnchor3 = [createEstimatesView trailingAnchor];
  trailingAnchor4 = [(UIView *)selfCopy->_contentView trailingAnchor];
  v29 = [trailingAnchor3 constraintEqualToAnchor:?];
  v42[2] = v29;
  leadingAnchor3 = [createEstimatesView leadingAnchor];
  leadingAnchor4 = [(UIView *)selfCopy->_contentView leadingAnchor];
  v26 = [leadingAnchor3 constraintEqualToAnchor:?];
  v42[3] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v24 activateConstraints:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](topAnchor);
  objc_storeStrong(&createEstimatesView, 0);
}

- (UIEdgeInsets)safeAreaInsets
{
  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 16);
  if (![(UIView *)self->_contentView isHidden])
  {
    view = [(CPSDashboardEstimatesViewController *)self view];
    [view bounds];
    v9 = v2;
    [(UIView *)self->_contentView frame];
    *&v12 = v9 - v3;
    MEMORY[0x277D82BD8](view);
  }

  v5 = *(&v11 + 1);
  v4 = *&v11;
  v7 = *(&v12 + 1);
  v6 = *&v12;
  result.right = v7;
  result.bottom = v6;
  result.left = v5;
  result.top = v4;
  return result;
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CPSDashboardEstimatesViewController;
  [(CPSDashboardEstimatesViewController *)&v8 viewDidLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&selfCopy->_safeAreaDelegate);
  v6 = selfCopy;
  [(CPSDashboardEstimatesViewController *)selfCopy safeAreaInsets];
  [WeakRetained viewController:v6 didUpdateSafeAreaInsets:{v2, v3, v4, v5}];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (void)setSafeAreaDelegate:(id)delegate
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, delegate);
  WeakRetained = objc_loadWeakRetained(&selfCopy->_safeAreaDelegate);
  v9 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v9)
  {
    objc_storeWeak(&selfCopy->_safeAreaDelegate, location[0]);
    v8 = objc_loadWeakRetained(&selfCopy->_safeAreaDelegate);
    v7 = selfCopy;
    [(CPSDashboardEstimatesViewController *)selfCopy safeAreaInsets];
    [v8 viewController:v7 didUpdateSafeAreaInsets:{v3, v4, v5, v6}];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(location, 0);
}

- (void)updateTripEstimates:(id)estimates
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, estimates);
  estimatesView = [(CPSDashboardEstimatesViewController *)selfCopy estimatesView];
  [(CPSDashboardEstimatesView *)estimatesView updateTripEstimates:location[0]];
  *&v3 = MEMORY[0x277D82BD8](estimatesView).n128_u64[0];
  contentView = [(CPSDashboardEstimatesViewController *)selfCopy contentView];
  isHidden = [(UIView *)contentView isHidden];
  *&v4 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  if (isHidden)
  {
    contentView2 = [(CPSDashboardEstimatesViewController *)selfCopy contentView];
    [(UIView *)contentView2 setHidden:0];
    *&v5 = MEMORY[0x277D82BD8](contentView2).n128_u64[0];
    platterBottomConstraint = [(CPSDashboardEstimatesViewController *)selfCopy platterBottomConstraint];
    [(NSLayoutConstraint *)platterBottomConstraint setConstant:30.0];
    *&v6 = MEMORY[0x277D82BD8](platterBottomConstraint).n128_u64[0];
    view = [(CPSDashboardEstimatesViewController *)selfCopy view];
    [view layoutIfNeeded];
    *&v7 = MEMORY[0x277D82BD8](view).n128_u64[0];
    platterBottomConstraint2 = [(CPSDashboardEstimatesViewController *)selfCopy platterBottomConstraint];
    [(NSLayoutConstraint *)platterBottomConstraint2 setConstant:-selfCopy->_edgeInsets.bottom];
    MEMORY[0x277D82BD8](platterBottomConstraint2);
    v12 = MEMORY[0x277D75D18];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __59__CPSDashboardEstimatesViewController_updateTripEstimates___block_invoke;
    v26 = &unk_278D913E8;
    v27 = MEMORY[0x277D82BE0](selfCopy);
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __59__CPSDashboardEstimatesViewController_updateTripEstimates___block_invoke_2;
    v20 = &unk_278D91398;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    [v12 animateWithDuration:0 delay:&v22 usingSpringWithDamping:&v16 initialSpringVelocity:0.3 options:0.0 animations:0.8 completion:?];
    objc_storeStrong(&v21, 0);
    objc_storeStrong(&v27, 0);
  }

  objc_storeStrong(location, 0);
}

double __59__CPSDashboardEstimatesViewController_updateTripEstimates___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __59__CPSDashboardEstimatesViewController_updateTripEstimates___block_invoke_2(uint64_t a1)
{
  v8 = [*(a1 + 32) safeAreaDelegate];
  v7 = *(a1 + 32);
  [v7 safeAreaInsets];
  [v8 viewController:v7 didUpdateSafeAreaInsets:{v1, v2, v3, v4}];
  *&result = MEMORY[0x277D82BD8](v8).n128_u64[0];
  return result;
}

- (void)navigator:(id)navigator didEndTrip:(BOOL)trip
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, navigator);
  tripCopy = trip;
  contentView = [(CPSDashboardEstimatesViewController *)selfCopy contentView];
  isHidden = [(UIView *)contentView isHidden];
  *&v4 = MEMORY[0x277D82BD8](contentView).n128_u64[0];
  if (!isHidden)
  {
    platterBottomConstraint = [(CPSDashboardEstimatesViewController *)selfCopy platterBottomConstraint];
    [(NSLayoutConstraint *)platterBottomConstraint setConstant:30.0];
    MEMORY[0x277D82BD8](platterBottomConstraint);
    v6 = MEMORY[0x277D75D18];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __60__CPSDashboardEstimatesViewController_navigator_didEndTrip___block_invoke;
    v20 = &unk_278D913E8;
    v21 = MEMORY[0x277D82BE0](selfCopy);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __60__CPSDashboardEstimatesViewController_navigator_didEndTrip___block_invoke_2;
    v14 = &unk_278D91398;
    v15 = MEMORY[0x277D82BE0](selfCopy);
    [v6 animateWithDuration:0 delay:&v16 usingSpringWithDamping:&v10 initialSpringVelocity:0.3 options:0.0 animations:0.8 completion:?];
    objc_storeStrong(&v15, 0);
    objc_storeStrong(&v21, 0);
  }

  objc_storeStrong(location, 0);
}

double __60__CPSDashboardEstimatesViewController_navigator_didEndTrip___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) view];
  [v2 layoutIfNeeded];
  *&result = MEMORY[0x277D82BD8](v2).n128_u64[0];
  return result;
}

double __60__CPSDashboardEstimatesViewController_navigator_didEndTrip___block_invoke_2(uint64_t a1)
{
  v6 = [*(a1 + 32) contentView];
  [v6 setHidden:1];
  v9 = [*(a1 + 32) safeAreaDelegate];
  v8 = *(a1 + 32);
  [v8 safeAreaInsets];
  [v9 viewController:v8 didUpdateSafeAreaInsets:{v1, v2, v3, v4}];
  *&result = MEMORY[0x277D82BD8](v9).n128_u64[0];
  return result;
}

+ (id)createPlatterView
{
  v7[2] = self;
  v7[1] = a2;
  v3 = [CPSCardPlatterView alloc];
  crsui_consoleTurnCardETATrayBackgroundMaterial = [MEMORY[0x277D75D68] crsui_consoleTurnCardETATrayBackgroundMaterial];
  crsui_consoleTurnCardETATrayBackgroundColor = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
  v7[0] = [(CPSCardPlatterView *)v3 initWithFrame:15 cornerRadius:crsui_consoleTurnCardETATrayBackgroundMaterial maskedCorners:*MEMORY[0x277CBF3A0] backgroundMaterial:*(MEMORY[0x277CBF3A0] + 8) backgroundColor:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 5.0];
  MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundColor);
  MEMORY[0x277D82BD8](crsui_consoleTurnCardETATrayBackgroundMaterial);
  [v7[0] setShadowWithRadius:10.0 opacity:0.25];
  v6 = MEMORY[0x277D82BE0](v7[0]);
  objc_storeStrong(v7, 0);

  return v6;
}

+ (NSEdgeInsets)edgeInsets
{
  v2 = 0.0;
  v3 = 5.0;
  v4 = 5.0;
  v5 = 5.0;
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

+ (id)createEstimatesView
{
  v2 = [CPSDashboardEstimatesView alloc];
  v3 = [(CPSDashboardEstimatesView *)v2 initWithFrame:*MEMORY[0x277CBF3A0], *(MEMORY[0x277CBF3A0] + 8), *(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24)];

  return v3;
}

- (CPSSafeAreaDelegate)safeAreaDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_safeAreaDelegate);

  return WeakRetained;
}

- (NSEdgeInsets)edgeInsets
{
  left = self->_edgeInsets.left;
  top = self->_edgeInsets.top;
  right = self->_edgeInsets.right;
  bottom = self->_edgeInsets.bottom;
  result.right = right;
  result.bottom = bottom;
  result.left = left;
  result.top = top;
  return result;
}

@end