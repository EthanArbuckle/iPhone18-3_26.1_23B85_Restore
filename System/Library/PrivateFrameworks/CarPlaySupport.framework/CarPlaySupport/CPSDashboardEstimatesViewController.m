@interface CPSDashboardEstimatesViewController
+ (NSEdgeInsets)edgeInsets;
+ (id)createEstimatesView;
+ (id)createPlatterView;
- (CPSDashboardEstimatesViewController)init;
- (CPSSafeAreaDelegate)safeAreaDelegate;
- (NSEdgeInsets)edgeInsets;
- (UIEdgeInsets)safeAreaInsets;
- (void)navigator:(id)a3 didEndTrip:(BOOL)a4;
- (void)setSafeAreaDelegate:(id)a3;
- (void)updateTripEstimates:(id)a3;
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
      v8 = [obj layer];
      [v8 setCornerRadius:15.0];
      MEMORY[0x277D82BD8](v8);
      objc_storeStrong(&v16->_contentView, obj);
      objc_storeStrong(&obj, 0);
    }

    else
    {
      v10 = [objc_opt_class() createPlatterView];
      [v10 setTranslatesAutoresizingMaskIntoConstraints:0];
      objc_storeStrong(&v16->_contentView, v10);
      objc_storeStrong(&v10, 0);
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
  v41 = self;
  v40 = a2;
  v39.receiver = self;
  v39.super_class = CPSDashboardEstimatesViewController;
  [(CPSDashboardEstimatesViewController *)&v39 viewDidLoad];
  v7 = [(CPSDashboardEstimatesViewController *)v41 view];
  [v7 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v2 = MEMORY[0x277D82BD8](v7).n128_u64[0];
  v8 = [(CPSDashboardEstimatesViewController *)v41 view];
  [v8 addSubview:v41->_contentView];
  *&v3 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  v11 = [(UIView *)v41->_contentView bottomAnchor];
  v10 = [(CPSDashboardEstimatesViewController *)v41 view];
  v9 = [v10 bottomAnchor];
  v4 = [(NSLayoutYAxisAnchor *)v11 constraintEqualToAnchor:-v41->_edgeInsets.bottom constant:?];
  platterBottomConstraint = v41->_platterBottomConstraint;
  v41->_platterBottomConstraint = v4;
  MEMORY[0x277D82BD8](platterBottomConstraint);
  MEMORY[0x277D82BD8](v9);
  MEMORY[0x277D82BD8](v10);
  *&v6 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v12 = MEMORY[0x277CCAAD0];
  v23 = [(UIView *)v41->_contentView heightAnchor];
  v22 = [(NSLayoutDimension *)v23 constraintEqualToConstant:30.0];
  v43[0] = v22;
  v21 = [(UIView *)v41->_contentView trailingAnchor];
  v20 = [(CPSDashboardEstimatesViewController *)v41 view];
  v19 = [v20 trailingAnchor];
  v18 = [(NSLayoutXAxisAnchor *)v21 constraintEqualToAnchor:-v41->_edgeInsets.right constant:?];
  v43[1] = v18;
  v17 = [(UIView *)v41->_contentView leadingAnchor];
  v16 = [(CPSDashboardEstimatesViewController *)v41 view];
  v15 = [v16 leadingAnchor];
  v14 = [(NSLayoutXAxisAnchor *)v17 constraintEqualToAnchor:v41->_edgeInsets.left constant:?];
  v43[2] = v14;
  v43[3] = v41->_platterBottomConstraint;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v43 count:?];
  [v12 activateConstraints:?];
  MEMORY[0x277D82BD8](v13);
  MEMORY[0x277D82BD8](v14);
  MEMORY[0x277D82BD8](v15);
  MEMORY[0x277D82BD8](v16);
  MEMORY[0x277D82BD8](v17);
  MEMORY[0x277D82BD8](v18);
  MEMORY[0x277D82BD8](v19);
  MEMORY[0x277D82BD8](v20);
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](v23);
  v38 = [objc_opt_class() createEstimatesView];
  [v38 setTranslatesAutoresizingMaskIntoConstraints:0];
  objc_storeStrong(&v41->_estimatesView, v38);
  [(UIView *)v41->_contentView addSubview:v38];
  v24 = MEMORY[0x277CCAAD0];
  v37 = [v38 topAnchor];
  v36 = [(UIView *)v41->_contentView topAnchor];
  v35 = [v37 constraintEqualToAnchor:?];
  v42[0] = v35;
  v34 = [v38 bottomAnchor];
  v33 = [(UIView *)v41->_contentView bottomAnchor];
  v32 = [v34 constraintEqualToAnchor:?];
  v42[1] = v32;
  v31 = [v38 trailingAnchor];
  v30 = [(UIView *)v41->_contentView trailingAnchor];
  v29 = [v31 constraintEqualToAnchor:?];
  v42[2] = v29;
  v28 = [v38 leadingAnchor];
  v27 = [(UIView *)v41->_contentView leadingAnchor];
  v26 = [v28 constraintEqualToAnchor:?];
  v42[3] = v26;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v42 count:4];
  [v24 activateConstraints:?];
  MEMORY[0x277D82BD8](v25);
  MEMORY[0x277D82BD8](v26);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](v28);
  MEMORY[0x277D82BD8](v29);
  MEMORY[0x277D82BD8](v30);
  MEMORY[0x277D82BD8](v31);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](v33);
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  objc_storeStrong(&v38, 0);
}

- (UIEdgeInsets)safeAreaInsets
{
  v11 = *MEMORY[0x277D768C8];
  v12 = *(MEMORY[0x277D768C8] + 16);
  if (![(UIView *)self->_contentView isHidden])
  {
    v8 = [(CPSDashboardEstimatesViewController *)self view];
    [v8 bounds];
    v9 = v2;
    [(UIView *)self->_contentView frame];
    *&v12 = v9 - v3;
    MEMORY[0x277D82BD8](v8);
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
  v10 = self;
  v9 = a2;
  v8.receiver = self;
  v8.super_class = CPSDashboardEstimatesViewController;
  [(CPSDashboardEstimatesViewController *)&v8 viewDidLayoutSubviews];
  WeakRetained = objc_loadWeakRetained(&v10->_safeAreaDelegate);
  v6 = v10;
  [(CPSDashboardEstimatesViewController *)v10 safeAreaInsets];
  [WeakRetained viewController:v6 didUpdateSafeAreaInsets:{v2, v3, v4, v5}];
  MEMORY[0x277D82BD8](WeakRetained);
}

- (void)setSafeAreaDelegate:(id)a3
{
  v12 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  WeakRetained = objc_loadWeakRetained(&v12->_safeAreaDelegate);
  v9 = location[0];
  MEMORY[0x277D82BD8](WeakRetained);
  if (WeakRetained != v9)
  {
    objc_storeWeak(&v12->_safeAreaDelegate, location[0]);
    v8 = objc_loadWeakRetained(&v12->_safeAreaDelegate);
    v7 = v12;
    [(CPSDashboardEstimatesViewController *)v12 safeAreaInsets];
    [v8 viewController:v7 didUpdateSafeAreaInsets:{v3, v4, v5, v6}];
    MEMORY[0x277D82BD8](v8);
  }

  objc_storeStrong(location, 0);
}

- (void)updateTripEstimates:(id)a3
{
  v29 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v13 = [(CPSDashboardEstimatesViewController *)v29 estimatesView];
  [(CPSDashboardEstimatesView *)v13 updateTripEstimates:location[0]];
  *&v3 = MEMORY[0x277D82BD8](v13).n128_u64[0];
  v14 = [(CPSDashboardEstimatesViewController *)v29 contentView];
  v15 = [(UIView *)v14 isHidden];
  *&v4 = MEMORY[0x277D82BD8](v14).n128_u64[0];
  if (v15)
  {
    v8 = [(CPSDashboardEstimatesViewController *)v29 contentView];
    [(UIView *)v8 setHidden:0];
    *&v5 = MEMORY[0x277D82BD8](v8).n128_u64[0];
    v9 = [(CPSDashboardEstimatesViewController *)v29 platterBottomConstraint];
    [(NSLayoutConstraint *)v9 setConstant:30.0];
    *&v6 = MEMORY[0x277D82BD8](v9).n128_u64[0];
    v10 = [(CPSDashboardEstimatesViewController *)v29 view];
    [v10 layoutIfNeeded];
    *&v7 = MEMORY[0x277D82BD8](v10).n128_u64[0];
    v11 = [(CPSDashboardEstimatesViewController *)v29 platterBottomConstraint];
    [(NSLayoutConstraint *)v11 setConstant:-v29->_edgeInsets.bottom];
    MEMORY[0x277D82BD8](v11);
    v12 = MEMORY[0x277D75D18];
    v22 = MEMORY[0x277D85DD0];
    v23 = -1073741824;
    v24 = 0;
    v25 = __59__CPSDashboardEstimatesViewController_updateTripEstimates___block_invoke;
    v26 = &unk_278D913E8;
    v27 = MEMORY[0x277D82BE0](v29);
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __59__CPSDashboardEstimatesViewController_updateTripEstimates___block_invoke_2;
    v20 = &unk_278D91398;
    v21 = MEMORY[0x277D82BE0](v29);
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

- (void)navigator:(id)a3 didEndTrip:(BOOL)a4
{
  v24 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v22 = a4;
  v8 = [(CPSDashboardEstimatesViewController *)v24 contentView];
  v9 = [(UIView *)v8 isHidden];
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (!v9)
  {
    v5 = [(CPSDashboardEstimatesViewController *)v24 platterBottomConstraint];
    [(NSLayoutConstraint *)v5 setConstant:30.0];
    MEMORY[0x277D82BD8](v5);
    v6 = MEMORY[0x277D75D18];
    v16 = MEMORY[0x277D85DD0];
    v17 = -1073741824;
    v18 = 0;
    v19 = __60__CPSDashboardEstimatesViewController_navigator_didEndTrip___block_invoke;
    v20 = &unk_278D913E8;
    v21 = MEMORY[0x277D82BE0](v24);
    v10 = MEMORY[0x277D85DD0];
    v11 = -1073741824;
    v12 = 0;
    v13 = __60__CPSDashboardEstimatesViewController_navigator_didEndTrip___block_invoke_2;
    v14 = &unk_278D91398;
    v15 = MEMORY[0x277D82BE0](v24);
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
  v7[2] = a1;
  v7[1] = a2;
  v3 = [CPSCardPlatterView alloc];
  v5 = [MEMORY[0x277D75D68] crsui_consoleTurnCardETATrayBackgroundMaterial];
  v4 = [MEMORY[0x277D75348] crsui_consoleTurnCardETATrayBackgroundColor];
  v7[0] = [(CPSCardPlatterView *)v3 initWithFrame:15 cornerRadius:v5 maskedCorners:*MEMORY[0x277CBF3A0] backgroundMaterial:*(MEMORY[0x277CBF3A0] + 8) backgroundColor:*(MEMORY[0x277CBF3A0] + 16), *(MEMORY[0x277CBF3A0] + 24), 5.0];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
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