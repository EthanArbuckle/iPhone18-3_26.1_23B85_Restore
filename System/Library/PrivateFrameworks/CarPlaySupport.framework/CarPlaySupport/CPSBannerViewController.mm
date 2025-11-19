@interface CPSBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4;
- (CPSBannerViewController)initWithBannerItem:(id)a3;
- (CPSBannerViewControllerDelegate)delegate;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (void)_bannerTapped:(id)a3;
- (void)_handleBackGesture:(id)a3;
- (void)_wheelChangedWithEvent:(id)a3;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)updateBannerWithBannerItem:(id)a3;
- (void)viewDidLoad;
@end

@implementation CPSBannerViewController

- (CPSBannerViewController)initWithBannerItem:(id)a3
{
  v10 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = v10;
  v10 = 0;
  v8.receiver = v3;
  v8.super_class = CPSBannerViewController;
  v10 = [(CPSBannerViewController *)&v8 init];
  objc_storeStrong(&v10, v10);
  if (v10)
  {
    objc_storeStrong(&v10->_bannerItem, location[0]);
    CGSizeMake_15();
    [(CPSBannerViewController *)v10 setPreferredContentSize:v4, v5];
  }

  v7 = MEMORY[0x277D82BE0](v10);
  objc_storeStrong(location, 0);
  objc_storeStrong(&v10, 0);
  return v7;
}

- (void)_wheelChangedWithEvent:(id)a3
{
  v8 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v6 = 0;
  if ([location[0] type] == 7 && (objc_msgSend(location[0], "subtype") == 202 || objc_msgSend(location[0], "subtype") == 200 || objc_msgSend(location[0], "subtype") == 201))
  {
    v4 = [(CPSBannerViewController *)v8 delegate];
    [(CPSBannerViewControllerDelegate *)v4 bannerViewController:v8 requestsDismissalWithReason:@"KnobDismissed"];
    *&v3 = MEMORY[0x277D82BD8](v4).n128_u64[0];
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v5.receiver = v8;
    v5.super_class = CPSBannerViewController;
    [(CPSBannerViewController *)&v5 _wheelChangedWithEvent:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v71[8] = *MEMORY[0x277D85DE8];
  v70 = self;
  v69 = a2;
  v68.receiver = self;
  v68.super_class = CPSBannerViewController;
  [(CPSBannerViewController *)&v68 viewDidLoad];
  v10 = [MEMORY[0x277D3D328] platterViewWithStyle:*MEMORY[0x277D3D338]];
  [(CPSBannerViewController *)v70 setPlatterView:?];
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  v11 = [(CPSBannerViewController *)v70 platterView];
  [(PLPlatterView *)v11 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3 = MEMORY[0x277D82BD8](v11).n128_u64[0];
  v13 = [(CPSBannerViewController *)v70 view];
  v12 = [(CPSBannerViewController *)v70 platterView];
  [v13 addSubview:?];
  MEMORY[0x277D82BD8](v12);
  MEMORY[0x277D82BD8](v13);
  v14 = [CPSGuidanceBannerView alloc];
  v16 = [(CPSBannerViewController *)v70 bannerItem];
  v15 = [(CPSGuidanceBannerView *)v14 initWithBannerItem:?];
  [(CPSBannerViewController *)v70 setBannerView:?];
  MEMORY[0x277D82BD8](v15);
  *&v4 = MEMORY[0x277D82BD8](v16).n128_u64[0];
  v17 = [(CPSBannerViewController *)v70 bannerView];
  [(CPSGuidanceBannerView *)v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5 = MEMORY[0x277D82BD8](v17).n128_u64[0];
  v19 = [(CPSBannerViewController *)v70 view];
  v18 = [(CPSBannerViewController *)v70 bannerView];
  [v19 addSubview:?];
  MEMORY[0x277D82BD8](v18);
  *&v6 = MEMORY[0x277D82BD8](v19).n128_u64[0];
  v20 = MEMORY[0x277CCAAD0];
  v61 = [(CPSBannerViewController *)v70 platterView];
  v60 = [(PLPlatterView *)v61 leadingAnchor];
  v59 = [(CPSBannerViewController *)v70 view];
  v58 = [v59 leadingAnchor];
  v57 = [v60 constraintEqualToAnchor:?];
  v71[0] = v57;
  v56 = [(CPSBannerViewController *)v70 platterView];
  v55 = [(PLPlatterView *)v56 trailingAnchor];
  v54 = [(CPSBannerViewController *)v70 view];
  v53 = [v54 trailingAnchor];
  v52 = [v55 constraintEqualToAnchor:?];
  v71[1] = v52;
  v51 = [(CPSBannerViewController *)v70 platterView];
  v50 = [(PLPlatterView *)v51 topAnchor];
  v49 = [(CPSBannerViewController *)v70 view];
  v48 = [v49 topAnchor];
  v47 = [v50 constraintEqualToAnchor:?];
  v71[2] = v47;
  v46 = [(CPSBannerViewController *)v70 platterView];
  v45 = [(PLPlatterView *)v46 bottomAnchor];
  v44 = [(CPSBannerViewController *)v70 view];
  v43 = [v44 bottomAnchor];
  v42 = [v45 constraintEqualToAnchor:?];
  v71[3] = v42;
  v41 = [(CPSBannerViewController *)v70 bannerView];
  v40 = [(CPSGuidanceBannerView *)v41 leadingAnchor];
  v39 = [(CPSBannerViewController *)v70 view];
  v38 = [v39 leadingAnchor];
  v37 = [v40 constraintEqualToAnchor:?];
  v71[4] = v37;
  v36 = [(CPSBannerViewController *)v70 bannerView];
  v35 = [(CPSGuidanceBannerView *)v36 trailingAnchor];
  v34 = [(CPSBannerViewController *)v70 view];
  v33 = [v34 trailingAnchor];
  v32 = [v35 constraintEqualToAnchor:?];
  v71[5] = v32;
  v31 = [(CPSBannerViewController *)v70 bannerView];
  v30 = [(CPSGuidanceBannerView *)v31 topAnchor];
  v29 = [(CPSBannerViewController *)v70 view];
  v28 = [v29 topAnchor];
  v27 = [v30 constraintEqualToAnchor:?];
  v71[6] = v27;
  v26 = [(CPSBannerViewController *)v70 bannerView];
  v25 = [(CPSGuidanceBannerView *)v26 bottomAnchor];
  v24 = [(CPSBannerViewController *)v70 view];
  v23 = [v24 bottomAnchor];
  v22 = [v25 constraintEqualToAnchor:?];
  v71[7] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:8];
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
  MEMORY[0x277D82BD8](v34);
  MEMORY[0x277D82BD8](v35);
  MEMORY[0x277D82BD8](v36);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](v38);
  MEMORY[0x277D82BD8](v39);
  MEMORY[0x277D82BD8](v40);
  MEMORY[0x277D82BD8](v41);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](v43);
  MEMORY[0x277D82BD8](v44);
  MEMORY[0x277D82BD8](v45);
  MEMORY[0x277D82BD8](v46);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](v48);
  MEMORY[0x277D82BD8](v49);
  MEMORY[0x277D82BD8](v50);
  MEMORY[0x277D82BD8](v51);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](v53);
  MEMORY[0x277D82BD8](v54);
  MEMORY[0x277D82BD8](v55);
  MEMORY[0x277D82BD8](v56);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](v58);
  MEMORY[0x277D82BD8](v59);
  MEMORY[0x277D82BD8](v60);
  MEMORY[0x277D82BD8](v61);
  v7 = objc_alloc(MEMORY[0x277D75B80]);
  v67 = [v7 initWithTarget:v70 action:0x1FD4005BAuLL];
  v62 = [(CPSBannerViewController *)v70 bannerView];
  [(CPSGuidanceBannerView *)v62 addGestureRecognizer:v67];
  MEMORY[0x277D82BD8](v62);
  v8 = objc_alloc(MEMORY[0x277D75B80]);
  v66 = [v8 initWithTarget:v70 action:0x1FD4005BAuLL];
  [v66 setAllowedPressTypes:&unk_2855C5090];
  v63 = [(CPSBannerViewController *)v70 bannerView];
  [(CPSGuidanceBannerView *)v63 addGestureRecognizer:v66];
  MEMORY[0x277D82BD8](v63);
  v9 = objc_alloc(MEMORY[0x277D75B80]);
  v65 = [v9 initWithTarget:v70 action:sel__handleBackGesture_];
  [v65 setAllowedPressTypes:&unk_2855C50A8];
  v64 = [(CPSBannerViewController *)v70 bannerView];
  [(CPSGuidanceBannerView *)v64 addGestureRecognizer:v65];
  MEMORY[0x277D82BD8](v64);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
}

- (void)updateBannerWithBannerItem:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  objc_storeStrong(&v5->_bannerItem, location[0]);
  v3 = [(CPSBannerViewController *)v5 bannerView];
  [(CPSGuidanceBannerView *)v3 updateBannerWithBannerItem:location[0]];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (NSString)requesterIdentifier
{
  v4 = [(CPSBannerViewController *)self bannerItem];
  v3 = [(CPSBannerItem *)v4 bundleIdentifier];
  v5 = CPSRequesterIdentifierForBundleIdentifier(v3);
  MEMORY[0x277D82BD8](v3);
  MEMORY[0x277D82BD8](v4);

  return v5;
}

- (NSString)requestIdentifier
{
  if (!self->_requestIdentifier)
  {
    v6 = [MEMORY[0x277CCAD78] UUID];
    v2 = [v6 UUIDString];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = v2;
    MEMORY[0x277D82BD8](requestIdentifier);
    MEMORY[0x277D82BD8](v6);
  }

  v4 = self->_requestIdentifier;

  return v4;
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = objc_alloc(MEMORY[0x277D75F98]);
  v11 = [v3 initWithEnvironment:v13];
  [v11 setAllowsDeferral:0];
  v10 = [MEMORY[0x277D75518] focusSystemForEnvironment:v13];
  [v10 _requestFocusUpdate:v11];
  v8 = [(CPSBannerViewController *)v13 delegate];
  v9 = objc_opt_respondsToSelector();
  *&v4 = MEMORY[0x277D82BD8](v8).n128_u64[0];
  if (v9)
  {
    v7 = [(CPSBannerViewController *)v13 delegate];
    v6 = [(CPSBannerViewController *)v13 bannerItem];
    v5 = [(CPSBannerItem *)v6 identifier];
    [(CPSBannerViewControllerDelegate *)v7 bannerViewControllerDidAppearWithIdentifier:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v11 = 0;
  objc_storeStrong(&v11, a4);
  v9 = [(CPSBannerViewController *)v13 delegate];
  v10 = objc_opt_respondsToSelector();
  *&v4 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  if (v10)
  {
    v7 = [(CPSBannerViewController *)v13 delegate];
    v6 = [(CPSBannerViewController *)v13 bannerItem];
    v5 = [(CPSBannerItem *)v6 identifier];
    [(CPSBannerViewControllerDelegate *)v7 bannerViewControllerDidDisappearWithIdentifier:?];
    MEMORY[0x277D82BD8](v5);
    MEMORY[0x277D82BD8](v6);
    MEMORY[0x277D82BD8](v7);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)a3 containerSize:(CGSize)a4
{
  [(CPSBannerViewController *)self preferredContentSize];
  CGSizeMake_15();
  result.height = v5;
  result.width = v4;
  return result;
}

- (UIEdgeInsets)bannerContentOutsets
{
  UIEdgeInsetsMake_6();
  result.right = v5;
  result.bottom = v4;
  result.left = v3;
  result.top = v2;
  return result;
}

- (void)_bannerTapped:(id)a3
{
  v13 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v10 = [(CPSBannerViewController *)v13 delegate];
  v11 = objc_opt_respondsToSelector();
  v3 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  if (v11)
  {
    v9 = [(CPSBannerViewController *)v13 delegate];
    v8 = [(CPSBannerViewController *)v13 bannerItem];
    v7 = [(CPSBannerItem *)v8 identifier];
    [(CPSBannerViewControllerDelegate *)v9 bannerViewControllerTappedWithIdentifier:?];
    MEMORY[0x277D82BD8](v7);
    MEMORY[0x277D82BD8](v8);
    v3 = MEMORY[0x277D82BD8](v9).n128_u64[0];
  }

  v6 = [MEMORY[0x277D0AD78] dashboardService];
  v5 = [(CPSBannerViewController *)v13 bannerItem];
  v4 = [(CPSBannerItem *)v5 bundleIdentifier];
  [v6 openApplication:? withOptions:? completion:?];
  MEMORY[0x277D82BD8](v4);
  MEMORY[0x277D82BD8](v5);
  MEMORY[0x277D82BD8](v6);
  objc_storeStrong(location, 0);
}

- (void)_handleBackGesture:(id)a3
{
  v5 = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, a3);
  v3 = [(CPSBannerViewController *)v5 delegate];
  [(CPSBannerViewControllerDelegate *)v3 bannerViewController:v5 requestsDismissalWithReason:@"BackButton"];
  MEMORY[0x277D82BD8](v3);
  objc_storeStrong(location, 0);
}

- (CPSBannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end