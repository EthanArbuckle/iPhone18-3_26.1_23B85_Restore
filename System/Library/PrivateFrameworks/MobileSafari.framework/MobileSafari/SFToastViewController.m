@interface SFToastViewController
- (SFToastViewController)initWithContentViewController:(id)a3;
- (SFToastViewControllerDelegate)delegate;
- (void)_didReceivePan:(id)a3;
- (void)_scheduleToastTimerIfNeeded;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation SFToastViewController

- (SFToastViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v10.receiver = self;
  v10.super_class = SFToastViewController;
  v6 = [(SFToastViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
    v7->_dismissalMode = 0;
    v8 = v7;
  }

  return v7;
}

- (void)viewDidLoad
{
  v53[7] = *MEMORY[0x1E69E9840];
  v52.receiver = self;
  v52.super_class = SFToastViewController;
  [(SFToastViewController *)&v52 viewDidLoad];
  v3 = [(SFToastViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIViewController *)self->_contentViewController preferredContentSize];
  if (v4 == 0.0)
  {
    v5 = 48.0;
  }

  else
  {
    v5 = v4;
  }

  v6 = [objc_alloc(MEMORY[0x1E69DD250]) initWithFrame:{0.0, 0.0, 300.0, v5}];
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v6;

  [(UIView *)self->_contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v8 = [MEMORY[0x1E69DC888] blackColor];
  v9 = [v8 CGColor];
  v10 = [(UIView *)self->_contentContainerView layer];
  [v10 setShadowColor:v9];

  v11 = [(UIView *)self->_contentContainerView layer];
  LODWORD(v12) = 1042536202;
  [v11 setShadowOpacity:v12];

  v13 = [(UIView *)self->_contentContainerView layer];
  [v13 setShadowRadius:20.0];

  v14 = [(UIView *)self->_contentContainerView layer];
  [v14 setShadowOffset:{0.0, 5.0}];

  [(UIViewController *)self->_contentViewController willMoveToParentViewController:self];
  v15 = objc_alloc(MEMORY[0x1E69DD298]);
  v16 = [MEMORY[0x1E69DC730] effectWithStyle:9];
  v17 = [v15 initWithEffect:v16];
  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  self->_backgroundVisualEffectView = v17;

  [(UIVisualEffectView *)self->_backgroundVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIVisualEffectView *)self->_backgroundVisualEffectView _setContinuousCornerRadius:v5 * 0.5];
  [(UIView *)self->_contentContainerView addSubview:self->_backgroundVisualEffectView];
  v19 = MEMORY[0x1E696ACD8];
  v20 = [MEMORY[0x1E696ACD8] safari_constraintsMatchingFrameOfView:self->_backgroundVisualEffectView withFrameOfView:self->_contentContainerView];
  [v19 activateConstraints:v20];

  v51 = [(UIViewController *)self->_contentViewController view];
  [v51 setAutoresizingMask:18];
  [(UIView *)self->_contentContainerView bounds];
  [v51 setFrame:?];
  [(UIView *)self->_contentContainerView addSubview:v51];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [v3 addSubview:self->_contentContainerView];
  v21 = [(UIView *)self->_contentContainerView widthAnchor];
  v22 = [v21 constraintEqualToConstant:300.0];
  LODWORD(v23) = 1144750080;
  v24 = [v22 sf_withPriority:v23];
  contentPreferredWidthConstraint = self->_contentPreferredWidthConstraint;
  self->_contentPreferredWidthConstraint = v24;

  v26 = [(UIView *)self->_contentContainerView heightAnchor];
  v27 = [v26 constraintEqualToConstant:48.0];
  contentPreferredHeightConstraint = self->_contentPreferredHeightConstraint;
  self->_contentPreferredHeightConstraint = v27;

  v29 = [(UIView *)self->_contentContainerView topAnchor];
  v30 = [v3 topAnchor];
  v31 = [v29 constraintEqualToAnchor:v30];
  contentTopConstraint = self->_contentTopConstraint;
  self->_contentTopConstraint = v31;

  v46 = MEMORY[0x1E696ACD8];
  v33 = self->_contentPreferredHeightConstraint;
  v53[0] = self->_contentPreferredWidthConstraint;
  v53[1] = v33;
  v50 = [(UIView *)self->_contentContainerView widthAnchor];
  v49 = [v50 constraintLessThanOrEqualToConstant:300.0];
  v34 = self->_contentTopConstraint;
  v53[2] = v49;
  v53[3] = v34;
  v48 = [(UIView *)self->_contentContainerView leadingAnchor];
  v35 = v3;
  v47 = [v3 leadingAnchor];
  v36 = [v48 constraintEqualToAnchor:v47];
  v53[4] = v36;
  v37 = [(UIView *)self->_contentContainerView widthAnchor];
  v38 = [v35 widthAnchor];
  v39 = [v37 constraintEqualToAnchor:v38];
  v53[5] = v39;
  v40 = [(UIView *)self->_contentContainerView heightAnchor];
  v41 = [v35 heightAnchor];
  v42 = [v40 constraintEqualToAnchor:v41];
  v53[6] = v42;
  v43 = [MEMORY[0x1E695DEC8] arrayWithObjects:v53 count:7];
  [v46 activateConstraints:v43];

  v44 = [objc_alloc(MEMORY[0x1E69DCD28]) initWithTarget:self action:sel__didReceivePan_];
  panRecognizer = self->_panRecognizer;
  self->_panRecognizer = v44;

  [v35 addGestureRecognizer:self->_panRecognizer];
}

- (void)updateViewConstraints
{
  v11.receiver = self;
  v11.super_class = SFToastViewController;
  [(SFToastViewController *)&v11 updateViewConstraints];
  v3 = [(SFToastViewController *)self view];
  [(UIViewController *)self->_contentViewController preferredContentSize];
  v6 = v5;
  if (v4 == 0.0)
  {
    v4 = 300.0;
  }

  [(NSLayoutConstraint *)self->_contentPreferredWidthConstraint setConstant:v4];
  v7 = 48.0;
  if (v6 != 0.0)
  {
    v7 = v6;
  }

  [(NSLayoutConstraint *)self->_contentPreferredHeightConstraint setConstant:v7];
  contentOffset = self->_contentOffset;
  [v3 bounds];
  v9 = -CGRectGetHeight(v12);
  [v3 bounds];
  Height = CGRectGetHeight(v13);
  [(NSLayoutConstraint *)self->_contentTopConstraint setConstant:SFRubberBandOffsetForOffset(contentOffset, v9, 0.0, Height)];
}

- (void)viewDidLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = SFToastViewController;
  [(SFToastViewController *)&v3 viewDidLayoutSubviews];
  [(UIView *)self->_contentContainerView bounds];
  [(UIVisualEffectView *)self->_backgroundVisualEffectView _setContinuousCornerRadius:CGRectGetHeight(v4) * 0.5];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFToastViewController;
  [(SFToastViewController *)&v5 viewWillAppear:a3];
  self->_contentOffset = 0.0;
  v4 = [(SFToastViewController *)self view];
  [v4 setNeedsUpdateConstraints];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = SFToastViewController;
  [(SFToastViewController *)&v4 viewDidAppear:a3];
  self->_remainingToastDuration = 0.0;
  [(SFToastViewController *)self _scheduleToastTimerIfNeeded];
}

- (void)_scheduleToastTimerIfNeeded
{
  if (self->_dismissalMode != 1 && ![(NSTimer *)self->_dismissalTimer isValid])
  {
    remainingToastDuration = self->_remainingToastDuration;
    if (remainingToastDuration == 0.0)
    {
      remainingToastDuration = self->_toastDuration;
      if (remainingToastDuration == 0.0)
      {
        remainingToastDuration = 6.0;
      }
    }

    v4 = fmax(remainingToastDuration, 0.5);
    objc_initWeak(&location, self);
    v5 = MEMORY[0x1E695DFF0];
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __52__SFToastViewController__scheduleToastTimerIfNeeded__block_invoke;
    v8[3] = &unk_1E721B4E8;
    objc_copyWeak(&v9, &location);
    v6 = [v5 scheduledTimerWithTimeInterval:0 repeats:v8 block:v4];
    dismissalTimer = self->_dismissalTimer;
    self->_dismissalTimer = v6;

    objc_destroyWeak(&v9);
    objc_destroyWeak(&location);
  }
}

void __52__SFToastViewController__scheduleToastTimerIfNeeded__block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v2 = [WeakRetained delegate];
    [v2 dismissToastViewController:v3];

    WeakRetained = v3;
  }
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = SFToastViewController;
  [(SFToastViewController *)&v5 viewWillDisappear:a3];
  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = SFToastViewController;
  [(SFToastViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(SFToastViewController *)self view];
  [v4 setNeedsUpdateConstraints];
}

- (void)_didReceivePan:(id)a3
{
  v4 = a3;
  if ([(NSTimer *)self->_dismissalTimer isValid])
  {
    v5 = [(NSTimer *)self->_dismissalTimer fireDate];
    [v5 timeIntervalSinceNow];
    self->_remainingToastDuration = v6;

    [(NSTimer *)self->_dismissalTimer invalidate];
    dismissalTimer = self->_dismissalTimer;
    self->_dismissalTimer = 0;
  }

  v8 = [(SFToastViewController *)self view];
  [v4 translationInView:v8];
  self->_contentOffset = v9;
  [v8 setNeedsUpdateConstraints];
  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [v4 translationInView:v8];
    v11 = v10;
    v13 = v12;
    [v4 velocityInView:v8];
    v16 = SFProjectedOffsetForOffsetWithVelocity(v11, v13, v14, v15, *MEMORY[0x1E69DE3A0], *MEMORY[0x1E69DE3A0]);
    v18 = v17;
    [v8 bounds];
    v19 = CGRectGetHeight(v26) * -0.5;
    v20 = 0.0;
    if (v18 < v19)
    {
      [v8 bounds];
      v20 = fmin(v18 + CGRectGetHeight(v27), 0.0);
    }

    self->_contentOffset = v20;
    v21 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __40__SFToastViewController__didReceivePan___block_invoke;
    v24[3] = &unk_1E721B360;
    v25 = v8;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__SFToastViewController__didReceivePan___block_invoke_2;
    v23[3] = &unk_1E721B510;
    v23[4] = self;
    [v21 animateWithDuration:v24 animations:v23 completion:0.5];
    if (v18 < v19)
    {
      v22 = [(SFToastViewController *)self delegate];
      [v22 dismissToastViewController:self];
    }
  }
}

- (SFToastViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end