@interface BKUIHostedJindoPresentable
+ (id)_bundleID;
- (BKJindoPresentableObserving)observingDelegate;
- (BKUIHostedJindoPresentable)initWithCustomLayout:(int64_t)layout enrollView:(id)view destination:(int64_t)destination;
- (BKUIPearlEnrollView)enrollView;
- (BNPresentableContext)presentableContext;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIViewController)rootViewController;
- (id)userInfoForPosting;
- (void)collapse;
- (void)presentableDidAppearAsBanner:(id)banner;
- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillAppearAsBanner:(id)banner;
- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason;
- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason;
- (void)revoke;
- (void)setActiveLayoutMode:(int64_t)mode;
- (void)setCanRequestAlertingAssertion:(BOOL)assertion;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator;
@end

@implementation BKUIHostedJindoPresentable

- (BKUIHostedJindoPresentable)initWithCustomLayout:(int64_t)layout enrollView:(id)view destination:(int64_t)destination
{
  viewCopy = view;
  v13.receiver = self;
  v13.super_class = BKUIHostedJindoPresentable;
  v10 = [(BKUIHostedJindoPresentable *)&v13 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    v10->_destination = destination;
    objc_storeStrong(&v10->_enrollView, view);
    v11->_preferredLayoutMode = 4;
    v11->_preferredCustomLayout = layout;
  }

  return v11;
}

- (BKUIPearlEnrollView)enrollView
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  enrollView = self->_enrollView;

  return enrollView;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)coordinator
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__BKUIHostedJindoPresentable_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke;
  v3[3] = &unk_278D0A028;
  v3[4] = self;
  [coordinator animateAlongsideTransition:v3 completion:0];
}

void __78__BKUIHostedJindoPresentable_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) enrollView];
  [v2 setNeedsLayout];

  v3 = [*(a1 + 32) enrollView];
  [v3 layoutIfNeeded];
}

- (void)viewDidLoad
{
  v21[2] = *MEMORY[0x277D85DE8];
  v20.receiver = self;
  v20.super_class = BKUIHostedJindoPresentable;
  [(BKUIHostedJindoPresentable *)&v20 viewDidLoad];
  view = [(BKUIHostedJindoPresentable *)self view];
  enrollView = [(BKUIHostedJindoPresentable *)self enrollView];
  [view addSubview:enrollView];

  v17 = MEMORY[0x277CCAAD0];
  enrollView2 = [(BKUIHostedJindoPresentable *)self enrollView];
  centerXAnchor = [enrollView2 centerXAnchor];
  view2 = [(BKUIHostedJindoPresentable *)self view];
  centerXAnchor2 = [view2 centerXAnchor];
  v7 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v21[0] = v7;
  enrollView3 = [(BKUIHostedJindoPresentable *)self enrollView];
  centerYAnchor = [enrollView3 centerYAnchor];
  view3 = [(BKUIHostedJindoPresentable *)self view];
  centerYAnchor2 = [view3 centerYAnchor];
  v12 = [centerYAnchor constraintEqualToAnchor:centerYAnchor2];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [v17 activateConstraints:v13];

  enrollView4 = [(BKUIHostedJindoPresentable *)self enrollView];
  view4 = [(BKUIHostedJindoPresentable *)self view];
  [enrollView4 setupAnimationViewWithSuperView:view4];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)revoke
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF0A80];
  destination = [(BKUIHostedJindoPresentable *)self destination];
  requesterIdentifier = [(BKUIHostedJindoPresentable *)self requesterIdentifier];
  v6 = [v3 bannerSourceForDestination:destination forRequesterIdentifier:requesterIdentifier];

  requestIdentifier = [(BKUIHostedJindoPresentable *)self requestIdentifier];
  v12 = 0;
  v8 = [v6 revokePresentableWithRequestIdentifier:requestIdentifier reason:@"revoke" animated:1 userInfo:0 error:&v12];
  v9 = v12;

  if (v9)
  {
    v10 = _BKUILoggingFacility();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138543362;
      v14 = v9;
      _os_log_impl(&dword_241B0A000, v10, OS_LOG_TYPE_DEFAULT, "Error revoking post  %{public}@", buf, 0xCu);
    }
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)collapse
{
  [(BKUIHostedJindoPresentable *)self setPreferredCustomLayout:1];
  systemApertureElementContext = [(BKUIHostedJindoPresentable *)self systemApertureElementContext];
  [systemApertureElementContext setElementNeedsUpdate];
}

- (id)userInfoForPosting
{
  v7[2] = *MEMORY[0x277D85DE8];
  v2 = *MEMORY[0x277D68090];
  v6[0] = *MEMORY[0x277D68098];
  v6[1] = v2;
  v7[0] = MEMORY[0x277CBEC38];
  v7[1] = MEMORY[0x277CBEC28];
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v7 forKeys:v6 count:2];
  v4 = *MEMORY[0x277D85DE8];

  return v3;
}

- (NSString)requesterIdentifier
{
  v2 = objc_opt_class();

  return [v2 _bundleID];
}

- (NSString)requestIdentifier
{
  requestIdentifier = self->_requestIdentifier;
  if (!requestIdentifier)
  {
    uUID = [MEMORY[0x277CCAD78] UUID];
    uUIDString = [uUID UUIDString];
    v6 = self->_requestIdentifier;
    self->_requestIdentifier = uUIDString;

    requestIdentifier = self->_requestIdentifier;
  }

  return requestIdentifier;
}

+ (id)_bundleID
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __39__BKUIHostedJindoPresentable__bundleID__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (_bundleID_onceToken != -1)
  {
    dispatch_once(&_bundleID_onceToken, block);
  }

  v2 = _bundleID___bundleID;

  return v2;
}

void __39__BKUIHostedJindoPresentable__bundleID__block_invoke(uint64_t a1)
{
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:*(a1 + 32)];
  v1 = [v3 bundleIdentifier];
  v2 = _bundleID___bundleID;
  _bundleID___bundleID = v1;
}

- (void)setActiveLayoutMode:(int64_t)mode
{
  if (self->_activeLayoutMode != mode)
  {
    self->_activeLayoutMode = mode;
    observingDelegate = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [observingDelegate didChangeActiveLayoutMode:self];
  }
}

- (void)setCanRequestAlertingAssertion:(BOOL)assertion
{
  v11 = *MEMORY[0x277D85DE8];
  self->_canRequestAlertingAssertion = assertion;
  if (assertion)
  {
    systemApertureElementContext = [(BKUIHostedJindoPresentable *)self systemApertureElementContext];
    requestAlertingAssertion = [systemApertureElementContext requestAlertingAssertion];
    [requestAlertingAssertion setAutomaticallyInvalidatable:0];

    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      selfCopy2 = self;
      v7 = "Jindo: Acquired alert assertion %p";
LABEL_6:
      _os_log_impl(&dword_241B0A000, v6, OS_LOG_TYPE_DEFAULT, v7, &v9, 0xCu);
    }
  }

  else
  {
    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      selfCopy2 = self;
      v7 = "Jindo: Could not get alert assertion, host set setCanRequestAlertingAssertion NO %p";
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentableWillAppearAsBanner:(id)banner
{
  v12 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Jindo: Banner will appear %p", &v10, 0xCu);
  }

  observingDelegate = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    observingDelegate2 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [observingDelegate2 presentableWillAppearAsBanner:bannerCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)presentableDidAppearAsBanner:(id)banner
{
  v12 = *MEMORY[0x277D85DE8];
  bannerCopy = banner;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    selfCopy = self;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Jindo: Banner did appear %p", &v10, 0xCu);
  }

  observingDelegate = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    observingDelegate2 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [observingDelegate2 presentableDidAppearAsBanner:bannerCopy];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)presentableWillDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  observingDelegate = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    observingDelegate2 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [observingDelegate2 presentableWillDisappearAsBanner:bannerCopy withReason:reasonCopy];
  }
}

- (void)presentableDidDisappearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  observingDelegate = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    observingDelegate2 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [observingDelegate2 presentableDidDisappearAsBanner:bannerCopy withReason:reasonCopy];
  }
}

- (void)presentableWillNotAppearAsBanner:(id)banner withReason:(id)reason
{
  bannerCopy = banner;
  reasonCopy = reason;
  observingDelegate = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    observingDelegate2 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [observingDelegate2 presentableWillNotAppearAsBanner:bannerCopy withReason:reasonCopy];
  }
}

- (UIViewController)rootViewController
{
  WeakRetained = objc_loadWeakRetained(&self->_rootViewController);

  return WeakRetained;
}

- (BNPresentableContext)presentableContext
{
  WeakRetained = objc_loadWeakRetained(&self->_presentableContext);

  return WeakRetained;
}

- (BKJindoPresentableObserving)observingDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_observingDelegate);

  return WeakRetained;
}

@end