@interface MUIToastViewController
- (MUIToastViewController)initWithContentViewController:(id)controller;
- (MUIToastViewControllerDelegate)delegate;
- (void)_didReceivePan:(id)pan;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation MUIToastViewController

- (MUIToastViewController)initWithContentViewController:(id)controller
{
  controllerCopy = controller;
  v9.receiver = self;
  v9.super_class = MUIToastViewController;
  v6 = [(MUIToastViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, controller);
  }

  return v7;
}

- (void)viewDidLoad
{
  v68[9] = *MEMORY[0x277D85DE8];
  v66.receiver = self;
  v66.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v66 viewDidLoad];
  view = [(MUIToastViewController *)self view];
  [view setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v4;

  [(UIView *)self->_contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  blackColor = [MEMORY[0x277D75348] blackColor];
  cGColor = [blackColor CGColor];
  layer = [(UIView *)self->_contentContainerView layer];
  [layer setShadowColor:cGColor];

  layer2 = [(UIView *)self->_contentContainerView layer];
  LODWORD(v10) = 1042536202;
  [layer2 setShadowOpacity:v10];

  layer3 = [(UIView *)self->_contentContainerView layer];
  [layer3 setShadowRadius:20.0];

  layer4 = [(UIView *)self->_contentContainerView layer];
  [layer4 setShadowOffset:{0.0, 5.0}];

  [(UIViewController *)self->_contentViewController willMoveToParentViewController:self];
  v13 = objc_alloc(MEMORY[0x277D75D68]);
  v14 = [MEMORY[0x277D75210] effectWithStyle:9];
  v15 = [v13 initWithEffect:v14];
  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  self->_backgroundVisualEffectView = v15;

  [(UIVisualEffectView *)self->_backgroundVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainerView addSubview:self->_backgroundVisualEffectView];
  view2 = [(UIViewController *)self->_contentViewController view];
  [view2 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainerView addSubview:view2];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [view addSubview:self->_contentContainerView];
  v46 = MEMORY[0x277CCAAD0];
  topAnchor = [view2 topAnchor];
  topAnchor2 = [(UIView *)self->_contentContainerView topAnchor];
  v58 = [topAnchor constraintEqualToAnchor:topAnchor2];
  v68[0] = v58;
  leadingAnchor = [view2 leadingAnchor];
  leadingAnchor2 = [(UIView *)self->_contentContainerView leadingAnchor];
  v52 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
  v68[1] = v52;
  v65 = view2;
  bottomAnchor = [view2 bottomAnchor];
  bottomAnchor2 = [(UIView *)self->_contentContainerView bottomAnchor];
  v49 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2];
  v68[2] = v49;
  trailingAnchor = [view2 trailingAnchor];
  trailingAnchor2 = [(UIView *)self->_contentContainerView trailingAnchor];
  v45 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
  v68[3] = v45;
  topAnchor3 = [(UIView *)self->_contentContainerView topAnchor];
  topAnchor4 = [view topAnchor];
  v42 = [topAnchor3 constraintEqualToAnchor:topAnchor4];
  v68[4] = v42;
  leadingAnchor3 = [(UIView *)self->_contentContainerView leadingAnchor];
  leadingAnchor4 = [view leadingAnchor];
  v39 = [leadingAnchor3 constraintGreaterThanOrEqualToAnchor:leadingAnchor4 constant:20.0];
  v68[5] = v39;
  bottomAnchor3 = [(UIView *)self->_contentContainerView bottomAnchor];
  bottomAnchor4 = [view bottomAnchor];
  v18 = [bottomAnchor3 constraintEqualToAnchor:bottomAnchor4];
  v68[6] = v18;
  trailingAnchor3 = [(UIView *)self->_contentContainerView trailingAnchor];
  v20 = view;
  v64 = view;
  trailingAnchor4 = [view trailingAnchor];
  v22 = [trailingAnchor3 constraintLessThanOrEqualToAnchor:trailingAnchor4 constant:-20.0];
  v68[7] = v22;
  centerXAnchor = [(UIView *)self->_contentContainerView centerXAnchor];
  centerXAnchor2 = [v20 centerXAnchor];
  v25 = [centerXAnchor constraintEqualToAnchor:centerXAnchor2];
  v68[8] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:9];
  [v46 activateConstraints:v26];

  v53 = MEMORY[0x277CCAAD0];
  leadingAnchor5 = [(UIVisualEffectView *)self->_backgroundVisualEffectView leadingAnchor];
  leadingAnchor6 = [(UIView *)self->_contentContainerView leadingAnchor];
  v59 = [leadingAnchor5 constraintEqualToAnchor:leadingAnchor6];
  v67[0] = v59;
  trailingAnchor5 = [(UIVisualEffectView *)self->_backgroundVisualEffectView trailingAnchor];
  trailingAnchor6 = [(UIView *)self->_contentContainerView trailingAnchor];
  v27 = [trailingAnchor5 constraintEqualToAnchor:trailingAnchor6];
  v67[1] = v27;
  topAnchor5 = [(UIVisualEffectView *)self->_backgroundVisualEffectView topAnchor];
  topAnchor6 = [(UIView *)self->_contentContainerView topAnchor];
  v30 = [topAnchor5 constraintEqualToAnchor:topAnchor6];
  v67[2] = v30;
  bottomAnchor5 = [(UIVisualEffectView *)self->_backgroundVisualEffectView bottomAnchor];
  bottomAnchor6 = [(UIView *)self->_contentContainerView bottomAnchor];
  v33 = [bottomAnchor5 constraintEqualToAnchor:bottomAnchor6];
  v67[3] = v33;
  v34 = [MEMORY[0x277CBEA60] arrayWithObjects:v67 count:4];
  [v53 activateConstraints:v34];

  v35 = [objc_alloc(MEMORY[0x277D757F8]) initWithTarget:self action:sel__didReceivePan_];
  panRecognizer = self->_panRecognizer;
  self->_panRecognizer = v35;

  [v64 addGestureRecognizer:self->_panRecognizer];
}

- (void)viewDidLayoutSubviews
{
  v29[3] = *MEMORY[0x277D85DE8];
  v28.receiver = self;
  v28.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v28 viewDidLayoutSubviews];
  if (![(MUIToastViewController *)self positioningConstraintsApplied])
  {
    v19 = MEMORY[0x277CCAAD0];
    view = [(MUIToastViewController *)self view];
    leadingAnchor = [view leadingAnchor];
    view2 = [(MUIToastViewController *)self view];
    superview = [view2 superview];
    safeAreaLayoutGuide = [superview safeAreaLayoutGuide];
    leadingAnchor2 = [safeAreaLayoutGuide leadingAnchor];
    v21 = [leadingAnchor constraintEqualToAnchor:leadingAnchor2];
    v29[0] = v21;
    view3 = [(MUIToastViewController *)self view];
    trailingAnchor = [view3 trailingAnchor];
    view4 = [(MUIToastViewController *)self view];
    superview2 = [view4 superview];
    safeAreaLayoutGuide2 = [superview2 safeAreaLayoutGuide];
    trailingAnchor2 = [safeAreaLayoutGuide2 trailingAnchor];
    v3 = [trailingAnchor constraintEqualToAnchor:trailingAnchor2];
    v29[1] = v3;
    view5 = [(MUIToastViewController *)self view];
    bottomAnchor = [view5 bottomAnchor];
    view6 = [(MUIToastViewController *)self view];
    superview3 = [view6 superview];
    safeAreaLayoutGuide3 = [superview3 safeAreaLayoutGuide];
    bottomAnchor2 = [safeAreaLayoutGuide3 bottomAnchor];
    v10 = [bottomAnchor constraintEqualToAnchor:bottomAnchor2 constant:-16.0];
    v29[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v19 activateConstraints:v11];

    [(MUIToastViewController *)self setPositioningConstraintsApplied:1];
    [(UIView *)self->_contentContainerView bounds];
    [(UIVisualEffectView *)self->_backgroundVisualEffectView _setContinuousCornerRadius:CGRectGetHeight(v30) * 0.5];
    view7 = [(MUIToastViewController *)self view];
    superview4 = [view7 superview];
    [superview4 layoutIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v4 viewDidAppear:appear];
  self->_remainingToastDuration = 0.0;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v5.receiver = self;
  v5.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v5 viewWillDisappear:disappear];
  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)container
{
  v5.receiver = self;
  v5.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:container];
  view = [(MUIToastViewController *)self view];
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

  view = [(MUIToastViewController *)self view];
  [panCopy translationInView:view];
  self->_contentOffset = v9;
  [view setNeedsUpdateConstraints];
  if ([panCopy state] == 3 || objc_msgSend(panCopy, "state") == 4)
  {
    [panCopy translationInView:view];
    v11 = v10;
    [panCopy velocityInView:view];
    v13 = v11 + v12 / -1000.0 / log(*MEMORY[0x277D76EB8]);
    [view bounds];
    v14 = CGRectGetHeight(v20) * -0.5;
    v15 = 0.0;
    if (v13 < v14)
    {
      [view bounds];
      v15 = fmin(v13 + CGRectGetHeight(v21), 0.0);
    }

    self->_contentOffset = v15;
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__MUIToastViewController__didReceivePan___block_invoke;
    v18[3] = &unk_278188BB0;
    v19 = view;
    [v16 animateWithDuration:v18 animations:0.5];
    if (v13 < v14)
    {
      delegate = [(MUIToastViewController *)self delegate];
      [delegate dismissToastViewController:self];
    }
  }
}

- (MUIToastViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end