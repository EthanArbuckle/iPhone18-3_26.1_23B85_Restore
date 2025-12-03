@interface CPSBannerViewController
- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize;
- (CPSBannerViewController)initWithBannerItem:(id)item;
- (CPSBannerViewControllerDelegate)delegate;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIEdgeInsets)bannerContentOutsets;
- (void)_bannerTapped:(id)tapped;
- (void)_handleBackGesture:(id)gesture;
- (void)_wheelChangedWithEvent:(id)event;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)updateBannerWithBannerItem:(id)item;
- (void)viewDidLoad;
@end

@implementation CPSBannerViewController

- (CPSBannerViewController)initWithBannerItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  v3 = selfCopy;
  selfCopy = 0;
  v8.receiver = v3;
  v8.super_class = CPSBannerViewController;
  selfCopy = [(CPSBannerViewController *)&v8 init];
  objc_storeStrong(&selfCopy, selfCopy);
  if (selfCopy)
  {
    objc_storeStrong(&selfCopy->_bannerItem, location[0]);
    CGSizeMake_15();
    [(CPSBannerViewController *)selfCopy setPreferredContentSize:v4, v5];
  }

  v7 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v7;
}

- (void)_wheelChangedWithEvent:(id)event
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, event);
  v6 = 0;
  if ([location[0] type] == 7 && (objc_msgSend(location[0], "subtype") == 202 || objc_msgSend(location[0], "subtype") == 200 || objc_msgSend(location[0], "subtype") == 201))
  {
    delegate = [(CPSBannerViewController *)selfCopy delegate];
    [(CPSBannerViewControllerDelegate *)delegate bannerViewController:selfCopy requestsDismissalWithReason:@"KnobDismissed"];
    *&v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
    v6 = 1;
  }

  if ((v6 & 1) == 0)
  {
    v5.receiver = selfCopy;
    v5.super_class = CPSBannerViewController;
    [(CPSBannerViewController *)&v5 _wheelChangedWithEvent:location[0], v3];
  }

  objc_storeStrong(location, 0);
}

- (void)viewDidLoad
{
  v71[8] = *MEMORY[0x277D85DE8];
  selfCopy = self;
  v69 = a2;
  v68.receiver = self;
  v68.super_class = CPSBannerViewController;
  [(CPSBannerViewController *)&v68 viewDidLoad];
  v10 = [MEMORY[0x277D3D328] platterViewWithStyle:*MEMORY[0x277D3D338]];
  [(CPSBannerViewController *)selfCopy setPlatterView:?];
  *&v2 = MEMORY[0x277D82BD8](v10).n128_u64[0];
  platterView = [(CPSBannerViewController *)selfCopy platterView];
  [(PLPlatterView *)platterView setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v3 = MEMORY[0x277D82BD8](platterView).n128_u64[0];
  view = [(CPSBannerViewController *)selfCopy view];
  platterView2 = [(CPSBannerViewController *)selfCopy platterView];
  [view addSubview:?];
  MEMORY[0x277D82BD8](platterView2);
  MEMORY[0x277D82BD8](view);
  v14 = [CPSGuidanceBannerView alloc];
  bannerItem = [(CPSBannerViewController *)selfCopy bannerItem];
  v15 = [(CPSGuidanceBannerView *)v14 initWithBannerItem:?];
  [(CPSBannerViewController *)selfCopy setBannerView:?];
  MEMORY[0x277D82BD8](v15);
  *&v4 = MEMORY[0x277D82BD8](bannerItem).n128_u64[0];
  bannerView = [(CPSBannerViewController *)selfCopy bannerView];
  [(CPSGuidanceBannerView *)bannerView setTranslatesAutoresizingMaskIntoConstraints:0];
  *&v5 = MEMORY[0x277D82BD8](bannerView).n128_u64[0];
  view2 = [(CPSBannerViewController *)selfCopy view];
  bannerView2 = [(CPSBannerViewController *)selfCopy bannerView];
  [view2 addSubview:?];
  MEMORY[0x277D82BD8](bannerView2);
  *&v6 = MEMORY[0x277D82BD8](view2).n128_u64[0];
  v20 = MEMORY[0x277CCAAD0];
  platterView3 = [(CPSBannerViewController *)selfCopy platterView];
  leadingAnchor = [(PLPlatterView *)platterView3 leadingAnchor];
  view3 = [(CPSBannerViewController *)selfCopy view];
  leadingAnchor2 = [view3 leadingAnchor];
  v57 = [leadingAnchor constraintEqualToAnchor:?];
  v71[0] = v57;
  platterView4 = [(CPSBannerViewController *)selfCopy platterView];
  trailingAnchor = [(PLPlatterView *)platterView4 trailingAnchor];
  view4 = [(CPSBannerViewController *)selfCopy view];
  trailingAnchor2 = [view4 trailingAnchor];
  v52 = [trailingAnchor constraintEqualToAnchor:?];
  v71[1] = v52;
  platterView5 = [(CPSBannerViewController *)selfCopy platterView];
  topAnchor = [(PLPlatterView *)platterView5 topAnchor];
  view5 = [(CPSBannerViewController *)selfCopy view];
  topAnchor2 = [view5 topAnchor];
  v47 = [topAnchor constraintEqualToAnchor:?];
  v71[2] = v47;
  platterView6 = [(CPSBannerViewController *)selfCopy platterView];
  bottomAnchor = [(PLPlatterView *)platterView6 bottomAnchor];
  view6 = [(CPSBannerViewController *)selfCopy view];
  bottomAnchor2 = [view6 bottomAnchor];
  v42 = [bottomAnchor constraintEqualToAnchor:?];
  v71[3] = v42;
  bannerView3 = [(CPSBannerViewController *)selfCopy bannerView];
  leadingAnchor3 = [(CPSGuidanceBannerView *)bannerView3 leadingAnchor];
  view7 = [(CPSBannerViewController *)selfCopy view];
  leadingAnchor4 = [view7 leadingAnchor];
  v37 = [leadingAnchor3 constraintEqualToAnchor:?];
  v71[4] = v37;
  bannerView4 = [(CPSBannerViewController *)selfCopy bannerView];
  trailingAnchor3 = [(CPSGuidanceBannerView *)bannerView4 trailingAnchor];
  view8 = [(CPSBannerViewController *)selfCopy view];
  trailingAnchor4 = [view8 trailingAnchor];
  v32 = [trailingAnchor3 constraintEqualToAnchor:?];
  v71[5] = v32;
  bannerView5 = [(CPSBannerViewController *)selfCopy bannerView];
  topAnchor3 = [(CPSGuidanceBannerView *)bannerView5 topAnchor];
  view9 = [(CPSBannerViewController *)selfCopy view];
  topAnchor4 = [view9 topAnchor];
  v27 = [topAnchor3 constraintEqualToAnchor:?];
  v71[6] = v27;
  bannerView6 = [(CPSBannerViewController *)selfCopy bannerView];
  bottomAnchor3 = [(CPSGuidanceBannerView *)bannerView6 bottomAnchor];
  view10 = [(CPSBannerViewController *)selfCopy view];
  bottomAnchor4 = [view10 bottomAnchor];
  v22 = [bottomAnchor3 constraintEqualToAnchor:?];
  v71[7] = v22;
  v21 = [MEMORY[0x277CBEA60] arrayWithObjects:v71 count:8];
  [v20 activateConstraints:?];
  MEMORY[0x277D82BD8](v21);
  MEMORY[0x277D82BD8](v22);
  MEMORY[0x277D82BD8](bottomAnchor4);
  MEMORY[0x277D82BD8](view10);
  MEMORY[0x277D82BD8](bottomAnchor3);
  MEMORY[0x277D82BD8](bannerView6);
  MEMORY[0x277D82BD8](v27);
  MEMORY[0x277D82BD8](topAnchor4);
  MEMORY[0x277D82BD8](view9);
  MEMORY[0x277D82BD8](topAnchor3);
  MEMORY[0x277D82BD8](bannerView5);
  MEMORY[0x277D82BD8](v32);
  MEMORY[0x277D82BD8](trailingAnchor4);
  MEMORY[0x277D82BD8](view8);
  MEMORY[0x277D82BD8](trailingAnchor3);
  MEMORY[0x277D82BD8](bannerView4);
  MEMORY[0x277D82BD8](v37);
  MEMORY[0x277D82BD8](leadingAnchor4);
  MEMORY[0x277D82BD8](view7);
  MEMORY[0x277D82BD8](leadingAnchor3);
  MEMORY[0x277D82BD8](bannerView3);
  MEMORY[0x277D82BD8](v42);
  MEMORY[0x277D82BD8](bottomAnchor2);
  MEMORY[0x277D82BD8](view6);
  MEMORY[0x277D82BD8](bottomAnchor);
  MEMORY[0x277D82BD8](platterView6);
  MEMORY[0x277D82BD8](v47);
  MEMORY[0x277D82BD8](topAnchor2);
  MEMORY[0x277D82BD8](view5);
  MEMORY[0x277D82BD8](topAnchor);
  MEMORY[0x277D82BD8](platterView5);
  MEMORY[0x277D82BD8](v52);
  MEMORY[0x277D82BD8](trailingAnchor2);
  MEMORY[0x277D82BD8](view4);
  MEMORY[0x277D82BD8](trailingAnchor);
  MEMORY[0x277D82BD8](platterView4);
  MEMORY[0x277D82BD8](v57);
  MEMORY[0x277D82BD8](leadingAnchor2);
  MEMORY[0x277D82BD8](view3);
  MEMORY[0x277D82BD8](leadingAnchor);
  MEMORY[0x277D82BD8](platterView3);
  v7 = objc_alloc(MEMORY[0x277D75B80]);
  v67 = [v7 initWithTarget:selfCopy action:0x1FD4005BAuLL];
  bannerView7 = [(CPSBannerViewController *)selfCopy bannerView];
  [(CPSGuidanceBannerView *)bannerView7 addGestureRecognizer:v67];
  MEMORY[0x277D82BD8](bannerView7);
  v8 = objc_alloc(MEMORY[0x277D75B80]);
  v66 = [v8 initWithTarget:selfCopy action:0x1FD4005BAuLL];
  [v66 setAllowedPressTypes:&unk_2855C5090];
  bannerView8 = [(CPSBannerViewController *)selfCopy bannerView];
  [(CPSGuidanceBannerView *)bannerView8 addGestureRecognizer:v66];
  MEMORY[0x277D82BD8](bannerView8);
  v9 = objc_alloc(MEMORY[0x277D75B80]);
  v65 = [v9 initWithTarget:selfCopy action:sel__handleBackGesture_];
  [v65 setAllowedPressTypes:&unk_2855C50A8];
  bannerView9 = [(CPSBannerViewController *)selfCopy bannerView];
  [(CPSGuidanceBannerView *)bannerView9 addGestureRecognizer:v65];
  MEMORY[0x277D82BD8](bannerView9);
  objc_storeStrong(&v65, 0);
  objc_storeStrong(&v66, 0);
  objc_storeStrong(&v67, 0);
}

- (void)updateBannerWithBannerItem:(id)item
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, item);
  objc_storeStrong(&selfCopy->_bannerItem, location[0]);
  bannerView = [(CPSBannerViewController *)selfCopy bannerView];
  [(CPSGuidanceBannerView *)bannerView updateBannerWithBannerItem:location[0]];
  MEMORY[0x277D82BD8](bannerView);
  objc_storeStrong(location, 0);
}

- (NSString)requesterIdentifier
{
  bannerItem = [(CPSBannerViewController *)self bannerItem];
  bundleIdentifier = [(CPSBannerItem *)bannerItem bundleIdentifier];
  v5 = CPSRequesterIdentifierForBundleIdentifier(bundleIdentifier);
  MEMORY[0x277D82BD8](bundleIdentifier);
  MEMORY[0x277D82BD8](bannerItem);

  return v5;
}

- (NSString)requestIdentifier
{
  if (!self->_requestIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    requestIdentifier = self->_requestIdentifier;
    self->_requestIdentifier = uUIDString;
    MEMORY[0x277D82BD8](requestIdentifier);
    MEMORY[0x277D82BD8](uUID);
  }

  v4 = self->_requestIdentifier;

  return v4;
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, banner);
  v3 = objc_alloc(MEMORY[0x277D75F98]);
  v11 = [v3 initWithEnvironment:selfCopy];
  [v11 setAllowsDeferral:0];
  v10 = [MEMORY[0x277D75518] focusSystemForEnvironment:selfCopy];
  [v10 _requestFocusUpdate:v11];
  delegate = [(CPSBannerViewController *)selfCopy delegate];
  v9 = objc_opt_respondsToSelector();
  *&v4 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v9)
  {
    delegate2 = [(CPSBannerViewController *)selfCopy delegate];
    bannerItem = [(CPSBannerViewController *)selfCopy bannerItem];
    identifier = [(CPSBannerItem *)bannerItem identifier];
    [(CPSBannerViewControllerDelegate *)delegate2 bannerViewControllerDidAppearWithIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](bannerItem);
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(&v10, 0);
  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, banner);
  v11 = 0;
  objc_storeStrong(&v11, reason);
  delegate = [(CPSBannerViewController *)selfCopy delegate];
  v10 = objc_opt_respondsToSelector();
  *&v4 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v10)
  {
    delegate2 = [(CPSBannerViewController *)selfCopy delegate];
    bannerItem = [(CPSBannerViewController *)selfCopy bannerItem];
    identifier = [(CPSBannerItem *)bannerItem identifier];
    [(CPSBannerViewControllerDelegate *)delegate2 bannerViewControllerDidDisappearWithIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](bannerItem);
    MEMORY[0x277D82BD8](delegate2);
  }

  objc_storeStrong(&v11, 0);
  objc_storeStrong(location, 0);
}

- (CGSize)preferredContentSizeWithPresentationSize:(CGSize)size containerSize:(CGSize)containerSize
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

- (void)_bannerTapped:(id)tapped
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, tapped);
  delegate = [(CPSBannerViewController *)selfCopy delegate];
  v11 = objc_opt_respondsToSelector();
  v3 = MEMORY[0x277D82BD8](delegate).n128_u64[0];
  if (v11)
  {
    delegate2 = [(CPSBannerViewController *)selfCopy delegate];
    bannerItem = [(CPSBannerViewController *)selfCopy bannerItem];
    identifier = [(CPSBannerItem *)bannerItem identifier];
    [(CPSBannerViewControllerDelegate *)delegate2 bannerViewControllerTappedWithIdentifier:?];
    MEMORY[0x277D82BD8](identifier);
    MEMORY[0x277D82BD8](bannerItem);
    v3 = MEMORY[0x277D82BD8](delegate2).n128_u64[0];
  }

  dashboardService = [MEMORY[0x277D0AD78] dashboardService];
  bannerItem2 = [(CPSBannerViewController *)selfCopy bannerItem];
  bundleIdentifier = [(CPSBannerItem *)bannerItem2 bundleIdentifier];
  [dashboardService openApplication:? withOptions:? completion:?];
  MEMORY[0x277D82BD8](bundleIdentifier);
  MEMORY[0x277D82BD8](bannerItem2);
  MEMORY[0x277D82BD8](dashboardService);
  objc_storeStrong(location, 0);
}

- (void)_handleBackGesture:(id)gesture
{
  selfCopy = self;
  location[1] = a2;
  location[0] = 0;
  objc_storeStrong(location, gesture);
  delegate = [(CPSBannerViewController *)selfCopy delegate];
  [(CPSBannerViewControllerDelegate *)delegate bannerViewController:selfCopy requestsDismissalWithReason:@"BackButton"];
  MEMORY[0x277D82BD8](delegate);
  objc_storeStrong(location, 0);
}

- (CPSBannerViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end