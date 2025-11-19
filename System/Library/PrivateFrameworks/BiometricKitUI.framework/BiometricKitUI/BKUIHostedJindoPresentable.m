@interface BKUIHostedJindoPresentable
+ (id)_bundleID;
- (BKJindoPresentableObserving)observingDelegate;
- (BKUIHostedJindoPresentable)initWithCustomLayout:(int64_t)a3 enrollView:(id)a4 destination:(int64_t)a5;
- (BKUIPearlEnrollView)enrollView;
- (BNPresentableContext)presentableContext;
- (NSString)requestIdentifier;
- (NSString)requesterIdentifier;
- (UIViewController)rootViewController;
- (id)userInfoForPosting;
- (void)collapse;
- (void)presentableDidAppearAsBanner:(id)a3;
- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillAppearAsBanner:(id)a3;
- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4;
- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4;
- (void)revoke;
- (void)setActiveLayoutMode:(int64_t)a3;
- (void)setCanRequestAlertingAssertion:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3;
@end

@implementation BKUIHostedJindoPresentable

- (BKUIHostedJindoPresentable)initWithCustomLayout:(int64_t)a3 enrollView:(id)a4 destination:(int64_t)a5
{
  v9 = a4;
  v13.receiver = self;
  v13.super_class = BKUIHostedJindoPresentable;
  v10 = [(BKUIHostedJindoPresentable *)&v13 initWithNibName:0 bundle:0];
  v11 = v10;
  if (v10)
  {
    v10->_destination = a5;
    objc_storeStrong(&v10->_enrollView, a4);
    v11->_preferredLayoutMode = 4;
    v11->_preferredCustomLayout = a3;
  }

  return v11;
}

- (BKUIPearlEnrollView)enrollView
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  enrollView = self->_enrollView;

  return enrollView;
}

- (void)viewWillLayoutSubviewsWithTransitionCoordinator:(id)a3
{
  v3[0] = MEMORY[0x277D85DD0];
  v3[1] = 3221225472;
  v3[2] = __78__BKUIHostedJindoPresentable_viewWillLayoutSubviewsWithTransitionCoordinator___block_invoke;
  v3[3] = &unk_278D0A028;
  v3[4] = self;
  [a3 animateAlongsideTransition:v3 completion:0];
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
  v3 = [(BKUIHostedJindoPresentable *)self view];
  v4 = [(BKUIHostedJindoPresentable *)self enrollView];
  [v3 addSubview:v4];

  v17 = MEMORY[0x277CCAAD0];
  v19 = [(BKUIHostedJindoPresentable *)self enrollView];
  v18 = [v19 centerXAnchor];
  v5 = [(BKUIHostedJindoPresentable *)self view];
  v6 = [v5 centerXAnchor];
  v7 = [v18 constraintEqualToAnchor:v6];
  v21[0] = v7;
  v8 = [(BKUIHostedJindoPresentable *)self enrollView];
  v9 = [v8 centerYAnchor];
  v10 = [(BKUIHostedJindoPresentable *)self view];
  v11 = [v10 centerYAnchor];
  v12 = [v9 constraintEqualToAnchor:v11];
  v21[1] = v12;
  v13 = [MEMORY[0x277CBEA60] arrayWithObjects:v21 count:2];
  [v17 activateConstraints:v13];

  v14 = [(BKUIHostedJindoPresentable *)self enrollView];
  v15 = [(BKUIHostedJindoPresentable *)self view];
  [v14 setupAnimationViewWithSuperView:v15];

  v16 = *MEMORY[0x277D85DE8];
}

- (void)revoke
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CF0A80];
  v4 = [(BKUIHostedJindoPresentable *)self destination];
  v5 = [(BKUIHostedJindoPresentable *)self requesterIdentifier];
  v6 = [v3 bannerSourceForDestination:v4 forRequesterIdentifier:v5];

  v7 = [(BKUIHostedJindoPresentable *)self requestIdentifier];
  v12 = 0;
  v8 = [v6 revokePresentableWithRequestIdentifier:v7 reason:@"revoke" animated:1 userInfo:0 error:&v12];
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
  v3 = [(BKUIHostedJindoPresentable *)self systemApertureElementContext];
  [v3 setElementNeedsUpdate];
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
    v4 = [MEMORY[0x277CCAD78] UUID];
    v5 = [v4 UUIDString];
    v6 = self->_requestIdentifier;
    self->_requestIdentifier = v5;

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
  block[4] = a1;
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

- (void)setActiveLayoutMode:(int64_t)a3
{
  if (self->_activeLayoutMode != a3)
  {
    self->_activeLayoutMode = a3;
    v5 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [v5 didChangeActiveLayoutMode:self];
  }
}

- (void)setCanRequestAlertingAssertion:(BOOL)a3
{
  v11 = *MEMORY[0x277D85DE8];
  self->_canRequestAlertingAssertion = a3;
  if (a3)
  {
    v4 = [(BKUIHostedJindoPresentable *)self systemApertureElementContext];
    v5 = [v4 requestAlertingAssertion];
    [v5 setAutomaticallyInvalidatable:0];

    v6 = _BKUILoggingFacility();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 134217984;
      v10 = self;
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
      v10 = self;
      v7 = "Jindo: Could not get alert assertion, host set setCanRequestAlertingAssertion NO %p";
      goto LABEL_6;
    }
  }

  v8 = *MEMORY[0x277D85DE8];
}

- (void)presentableWillAppearAsBanner:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = self;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Jindo: Banner will appear %p", &v10, 0xCu);
  }

  v6 = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [v8 presentableWillAppearAsBanner:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)presentableDidAppearAsBanner:(id)a3
{
  v12 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = _BKUILoggingFacility();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 134217984;
    v11 = self;
    _os_log_impl(&dword_241B0A000, v5, OS_LOG_TYPE_DEFAULT, "Jindo: Banner did appear %p", &v10, 0xCu);
  }

  v6 = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v7 = objc_opt_respondsToSelector();

  if (v7)
  {
    v8 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [v8 presentableDidAppearAsBanner:v4];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)presentableWillDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [v9 presentableWillDisappearAsBanner:v10 withReason:v6];
  }
}

- (void)presentableDidDisappearAsBanner:(id)a3 withReason:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [v9 presentableDidDisappearAsBanner:v10 withReason:v6];
  }
}

- (void)presentableWillNotAppearAsBanner:(id)a3 withReason:(id)a4
{
  v10 = a3;
  v6 = a4;
  v7 = [(BKUIHostedJindoPresentable *)self observingDelegate];
  v8 = objc_opt_respondsToSelector();

  if (v8)
  {
    v9 = [(BKUIHostedJindoPresentable *)self observingDelegate];
    [v9 presentableWillNotAppearAsBanner:v10 withReason:v6];
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