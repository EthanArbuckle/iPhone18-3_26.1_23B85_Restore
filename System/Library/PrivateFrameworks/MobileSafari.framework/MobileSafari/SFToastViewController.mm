@interface SFToastViewController
- (SFToastViewController)initWithContentViewController:(id)controller;
- (SFToastViewControllerDelegate)delegate;
- (void)_didReceivePan:(id)pan;
- (void)_scheduleToastTimerIfNeeded;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)updateViewConstraints;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation SFToastViewController

- (SFToastViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v10.receiver = self;
  v10.super_class = SFToastViewController;
  v6 = [(SFToastViewController *)&v10 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, controller);
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
  view = [(SFToastViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
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
  blackColor = [MEMORY[0x1E69DC888] blackColor];
  cGColor = [blackColor CGColor];
  layer = [(UIView *)self->_contentContainerView layer];
  [layer setShadowColor:cGColor];

  layer2 = [(UIView *)self->_contentContainerView layer];
  LODWORD(v12) = 1042536202;
  [layer2 setShadowOpacity:v12];

  layer3 = [(UIView *)self->_contentContainerView layer];
  [layer3 setShadowRadius:20.0];

  layer4 = [(UIView *)self->_contentContainerView layer];
  [layer4 setShadowOffset:{0.0, 5.0}];

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

  view2 = [(UIViewController *)self->_contentViewController view];
  [view2 setAutoresizingMask:18];
  [(UIView *)self->_contentContainerView bounds];
  [view2 setFrame:?];
  [(UIView *)self->_contentContainerView addSubview:view2];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [view addSubview:self->_contentContainerView];
  widthAnchor = [(UIView *)self->_contentContainerView widthAnchor];
  v22 = [widthAnchor constraintEqualToConstant:300.0];
  LODWORD(v23) = 1144750080;
  v24 = [v22 sf_withPriority:v23];
  contentPreferredWidthConstraint = self->_contentPreferredWidthConstraint;
  self->_contentPreferredWidthConstraint = v24;

  heightAnchor = [(UIView *)self->_contentContainerView heightAnchor];
  v27 = [heightAnchor constraintEqualToConstant:48.0];
  contentPreferredHeightConstraint = self->_contentPreferredHeightConstraint;
  self->_contentPreferredHeightConstraint = v27;

  topAnchor = [(UIView *)self->_contentContainerView topAnchor];
  topAnchor2 = [view topAnchor];
  v31 = [topAnchor constraintEqualToAnchor:topAnchor2];
  contentTopConstraint = self->_contentTopConstraint;
  self->_contentTopConstraint = v31;

  v46 = MEMORY[0x1E696ACD8];
  v33 = self->_contentPreferredHeightConstraint;
  v53[0] = self->_contentPreferredWidthConstraint;
  v53[1] = v33;
  widthAnchor2 = [(UIView *)self->_contentContainerView widthAnchor];
  v49 = [widthAnchor2 constraintLessThanOrEqualToConstant:300.0];
  v34 = self->_contentTopConstraint;
  v53[2] = v49;
  v53[3] = v34;
  leadingAnchor = [(UIView *)self->_contentContainerView leadingAnchor];
  v35 = view;
  leadingAnchor2 = [view leadingAnchor];
  v36 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v53[4] = v36;
  widthAnchor3 = [(UIView *)self->_contentContainerView widthAnchor];
  widthAnchor4 = [v35 widthAnchor];
  v39 = [widthAnchor3 constraintEqualToAnchor:widthAnchor4];
  v53[5] = v39;
  heightAnchor2 = [(UIView *)self->_contentContainerView heightAnchor];
  heightAnchor3 = [v35 heightAnchor];
  v42 = [heightAnchor2 constraintEqualToAnchor:heightAnchor3];
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
  view = [(SFToastViewController *)self view];
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
  [view bounds];
  v9 = -CGRectGetHeight(v12);
  [view bounds];
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

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = SFToastViewController;
  [(SFToastViewController *)&v5 viewWillAppear:appear];
  self->_contentOffset = 0.0;
  view = [(SFToastViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = SFToastViewController;
  [(SFToastViewController *)&v4 viewDidAppear:appear];
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

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = SFToastViewController;
  [(SFToastViewController *)&v5 viewWillDisappear:disappear];
  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = SFToastViewController;
  [(SFToastViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  view = [(SFToastViewController *)self view];
  [view setNeedsUpdateConstraints];
}

- (void)_didReceivePan:(id)pan
{
  panCopy = pan;
  if ([(NSTimer *)self->_dismissalTimer isValid])
  {
    fireDate = [(NSTimer *)self->_dismissalTimer fireDate];
    [fireDate timeIntervalSinceNow];
    self->_remainingToastDuration = v6;

    [(NSTimer *)self->_dismissalTimer invalidate];
    dismissalTimer = self->_dismissalTimer;
    self->_dismissalTimer = 0;
  }

  view = [(SFToastViewController *)self view];
  [panCopy translationInView:view];
  self->_contentOffset = v9;
  [view setNeedsUpdateConstraints];
  if ([panCopy state] == 3 || objc_msgSend(panCopy, "state") == 4)
  {
    [panCopy translationInView:view];
    v11 = v10;
    v13 = v12;
    [panCopy velocityInView:view];
    v16 = SFProjectedOffsetForOffsetWithVelocity(v11, v13, v14, v15, *MEMORY[0x1E69DE3A0], *MEMORY[0x1E69DE3A0]);
    v18 = v17;
    [view bounds];
    v19 = CGRectGetHeight(v26) * -0.5;
    v20 = 0.0;
    if (v18 < v19)
    {
      [view bounds];
      v20 = fmin(v18 + CGRectGetHeight(v27), 0.0);
    }

    self->_contentOffset = v20;
    v21 = MEMORY[0x1E69DD250];
    v24[0] = MEMORY[0x1E69E9820];
    v24[1] = 3221225472;
    v24[2] = __40__SFToastViewController__didReceivePan___block_invoke;
    v24[3] = &unk_1E721B360;
    v25 = view;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = __40__SFToastViewController__didReceivePan___block_invoke_2;
    v23[3] = &unk_1E721B510;
    v23[4] = self;
    [v21 animateWithDuration:v24 animations:v23 completion:0.5];
    if (v18 < v19)
    {
      delegate = [(SFToastViewController *)self delegate];
      [delegate dismissToastViewController:self];
    }
  }
}

- (SFToastViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end