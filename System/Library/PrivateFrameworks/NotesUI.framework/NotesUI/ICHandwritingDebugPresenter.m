@interface ICHandwritingDebugPresenter
- (ICHandwritingDebugDelegate)delegate;
- (ICHandwritingDebugPresenter)initWithPresentingViewController:(id)a3 presentationStyle:(unint64_t)a4 delegate:(id)a5;
- (void)hide;
- (void)refresh;
- (void)show;
@end

@implementation ICHandwritingDebugPresenter

- (ICHandwritingDebugPresenter)initWithPresentingViewController:(id)a3 presentationStyle:(unint64_t)a4 delegate:(id)a5
{
  v9 = a3;
  v10 = a5;
  v16.receiver = self;
  v16.super_class = ICHandwritingDebugPresenter;
  v11 = [(ICHandwritingDebugPresenter *)&v16 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_presentingViewController, a3);
    v12->_presentationStyle = a4;
    objc_storeWeak(&v12->_delegate, v10);
    v13 = [MEMORY[0x1E695E000] standardUserDefaults];
    userDefaults = v12->_userDefaults;
    v12->_userDefaults = v13;
  }

  return v12;
}

- (void)show
{
  self->_isShowing = 1;
  v3 = [(ICHandwritingDebugPresenter *)self presentationStyle];
  if (v3 == 1)
  {
    v17 = [ICHandwritingDebugPillOrnamentViewController alloc];
    v18 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    v19 = [(ICHandwritingDebugPresenter *)self delegate];
    v20 = [(ICHandwritingDebugPillOrnamentViewController *)v17 initWithRootViewController:v18 delegate:v19];
    [(ICHandwritingDebugPresenter *)self setHandwritingDebugPillOrnamentViewController:v20];

    v21 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    v22 = [v21 view];
    v23 = [v22 tintColor];
    v24 = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
    v25 = [v24 view];
    [v25 setTintColor:v23];

    v16 = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
    [v16 show];
  }

  else
  {
    if (v3)
    {
      goto LABEL_6;
    }

    v4 = [ICHandwritingDebugWindow alloc];
    v5 = [(ICHandwritingDebugPresenter *)self delegate];
    v6 = [(ICHandwritingDebugWindow *)v4 initWithDelegate:v5];
    [(ICHandwritingDebugPresenter *)self setHandwritingDebugWindow:v6];

    v7 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    v8 = [v7 view];
    v9 = [v8 tintColor];
    v10 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    [v10 setTintColor:v9];

    v11 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    v12 = [(ICHandwritingDebugPresenter *)self presentingViewController];
    v13 = [v12 view];
    v14 = [v13 window];
    v15 = [v14 windowScene];
    [v11 setWindowScene:v15];

    v16 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    [v16 makeKeyAndVisible];
  }

LABEL_6:
  v26 = [objc_alloc(MEMORY[0x1E69B7AB0]) initWithTarget:self selector:sel_refresh delay:0 waitToFireUntilRequestsStop:1 callOnMainThread:1.0];
  [(ICHandwritingDebugPresenter *)self setHandwritingDebugSelectorDelayer:v26];

  v27 = [(ICHandwritingDebugPresenter *)self userDefaults];
  [v27 setBool:1 forKey:@"ShowHandwritingWindow"];
}

- (void)hide
{
  self->_isShowing = 0;
  v3 = [(ICHandwritingDebugPresenter *)self presentationStyle];
  if (v3 == 1)
  {
    v5 = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
    [v5 hide];

    [(ICHandwritingDebugPresenter *)self setHandwritingDebugPillOrnamentViewController:0];
  }

  else if (!v3)
  {
    v4 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
    [v4 setHidden:1];

    [(ICHandwritingDebugPresenter *)self setHandwritingDebugWindow:0];
  }

  [(ICHandwritingDebugPresenter *)self setHandwritingDebugSelectorDelayer:0];
  v6 = [(ICHandwritingDebugPresenter *)self userDefaults];
  [v6 setBool:0 forKey:@"ShowHandwritingWindow"];
}

- (void)refresh
{
  v3 = [(ICHandwritingDebugPresenter *)self presentationStyle];
  if (v3 == 1)
  {
    v4 = [(ICHandwritingDebugPresenter *)self handwritingDebugPillOrnamentViewController];
  }

  else
  {
    if (v3)
    {
      return;
    }

    v4 = [(ICHandwritingDebugPresenter *)self handwritingDebugWindow];
  }

  v5 = v4;
  [v4 refresh];
}

- (ICHandwritingDebugDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end