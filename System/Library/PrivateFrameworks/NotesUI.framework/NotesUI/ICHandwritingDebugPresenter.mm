@interface ICHandwritingDebugPresenter
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugPresenter)initWithPresentingViewController:(id)controller presentationStyle:(unint64_t)style delegate:(id)delegate;
- (void)hide;
- (void)refresh;
- (void)show;
@end

@implementation ICHandwritingDebugPresenter

- (ICHandwritingDebugPresenter)initWithPresentingViewController:(id)controller presentationStyle:(unint64_t)style delegate:(id)delegate
{
  controllerCopy = controller;
  delegateCopy = delegate;
  v16.receiver = self;
  v16.super_class = ICHandwritingDebugPresenter;
  v11 = [(ICHandwritingDebugPresenter *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_presentingViewController, controller);
    v12->_presentationStyle = style;
    objc_storeWeak(&v12->_delegate, delegateCopy);
    standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
    userDefaults = v12->_userDefaults;
    v12->_userDefaults = standardUserDefaults;
  }

  return v12;
}

- (void)show
{
  self->_isShowing = 1;
  presentationStyle = [(ICHandwritingDebugPresenter *)self presentationStyle];
  if (presentationStyle == 1)
  {
    v17 = [ICHandwritingDebugPillOrnamentViewController alloc];
    presentingViewController = [(ICHandwritingDebugPresenter *)self presentingViewController];
    delegate = [(ICHandwritingDebugPresenter *)self delegate];
    v20 = [(ICHandwritingDebugPillOrnamentViewController *)v17 initWithRootViewController:presentingViewController delegate:delegate];
    [(ICHandwritingDebugPresenter *)self setHandwritingDebugPillOrnamentViewController:v20];

    presentingViewController2 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    view = [presentingViewController2 view];
    tintColor = [view tintColor];
    handwritingDebugPillOrnamentViewController = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
    view2 = [handwritingDebugPillOrnamentViewController view];
    [view2 setTintColor:tintColor];

    handwritingDebugPillOrnamentViewController2 = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
    [handwritingDebugPillOrnamentViewController2 show];
  }

  else
  {
    if (presentationStyle)
    {
      goto LABEL_6;
    }

    v4 = [ICHandwritingDebugWindow alloc];
    delegate2 = [(ICHandwritingDebugPresenter *)self delegate];
    v6 = [(ICHandwritingDebugWindow *)v4 initWithDelegate:delegate2];
    [(ICHandwritingDebugPresenter *)self setHandwritingDebugWindow:v6];

    presentingViewController3 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    view3 = [presentingViewController3 view];
    tintColor2 = [view3 tintColor];
    handwritingDebugWindow = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    [handwritingDebugWindow setTintColor:tintColor2];

    handwritingDebugWindow2 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    presentingViewController4 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    view4 = [presentingViewController4 view];
    window = [view4 window];
    windowScene = [window windowScene];
    [handwritingDebugWindow2 setWindowScene:windowScene];

    handwritingDebugPillOrnamentViewController2 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    [handwritingDebugPillOrnamentViewController2 makeKeyAndVisible];
  }

LABEL_6:
  v26 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:self selector:sel_refresh delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
  [(ICHandwritingDebugPresenter *)self setHandwritingDebugSelectorDelayer:v26];

  userDefaults = [(ICHandwritingDebugPresenter *)self userDefaults];
  [userDefaults setBool:1 forKey:@"ShowHandwritingWindow"];
}

- (void)hide
{
  self->_isShowing = 0;
  presentationStyle = [(ICHandwritingDebugPresenter *)self presentationStyle];
  if (presentationStyle == 1)
  {
    handwritingDebugPillOrnamentViewController = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
    [handwritingDebugPillOrnamentViewController hide];

    [(ICHandwritingDebugPresenter *)self setHandwritingDebugPillOrnamentViewController:0];
  }

  else if (!presentationStyle)
  {
    handwritingDebugWindow = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    [handwritingDebugWindow setHidden:1];

    [(ICHandwritingDebugPresenter *)self setHandwritingDebugWindow:0];
  }

  [(ICHandwritingDebugPresenter *)self setHandwritingDebugSelectorDelayer:0];
  userDefaults = [(ICHandwritingDebugPresenter *)self userDefaults];
  [userDefaults setBool:0 forKey:@"ShowHandwritingWindow"];
}

- (void)refresh
{
  presentationStyle = [(ICHandwritingDebugPresenter *)self presentationStyle];
  if (presentationStyle == 1)
  {
    handwritingDebugPillOrnamentViewController = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
  }

  else
  {
    if (presentationStyle)
    {
      return;
    }

    handwritingDebugPillOrnamentViewController = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
  }

  v5 = handwritingDebugPillOrnamentViewController;
  [handwritingDebugPillOrnamentViewController refresh];
}

- (ICHandwritingDebugDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end