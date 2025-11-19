@interface MUIToastViewController
- (MUIToastViewController)initWithContentViewController:(id)a3;
- (MUIToastViewControllerDelegate)delegate;
- (void)_didReceivePan:(id)a3;
- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation MUIToastViewController

- (MUIToastViewController)initWithContentViewController:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = MUIToastViewController;
  v6 = [(MUIToastViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_contentViewController, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v68[9] = *MEMORY[0x277D85DE8];
  v66.receiver = self;
  v66.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v66 viewDidLoad];
  v3 = [(MUIToastViewController *)self view];
  [v3 setTranslatesAutoresizingMaskIntoConstraints:0];
  v4 = objc_alloc_init(MEMORY[0x277D75D18]);
  contentContainerView = self->_contentContainerView;
  self->_contentContainerView = v4;

  [(UIView *)self->_contentContainerView setTranslatesAutoresizingMaskIntoConstraints:0];
  v6 = [MEMORY[0x277D75348] blackColor];
  v7 = [v6 CGColor];
  v8 = [(UIView *)self->_contentContainerView layer];
  [v8 setShadowColor:v7];

  v9 = [(UIView *)self->_contentContainerView layer];
  LODWORD(v10) = 1042536202;
  [v9 setShadowOpacity:v10];

  v11 = [(UIView *)self->_contentContainerView layer];
  [v11 setShadowRadius:20.0];

  v12 = [(UIView *)self->_contentContainerView layer];
  [v12 setShadowOffset:{0.0, 5.0}];

  [(UIViewController *)self->_contentViewController willMoveToParentViewController:self];
  v13 = objc_alloc(MEMORY[0x277D75D68]);
  v14 = [MEMORY[0x277D75210] effectWithStyle:9];
  v15 = [v13 initWithEffect:v14];
  backgroundVisualEffectView = self->_backgroundVisualEffectView;
  self->_backgroundVisualEffectView = v15;

  [(UIVisualEffectView *)self->_backgroundVisualEffectView setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainerView addSubview:self->_backgroundVisualEffectView];
  v17 = [(UIViewController *)self->_contentViewController view];
  [v17 setTranslatesAutoresizingMaskIntoConstraints:0];
  [(UIView *)self->_contentContainerView addSubview:v17];
  [(UIViewController *)self->_contentViewController didMoveToParentViewController:self];
  [v3 addSubview:self->_contentContainerView];
  v46 = MEMORY[0x277CCAAD0];
  v62 = [v17 topAnchor];
  v60 = [(UIView *)self->_contentContainerView topAnchor];
  v58 = [v62 constraintEqualToAnchor:v60];
  v68[0] = v58;
  v56 = [v17 leadingAnchor];
  v54 = [(UIView *)self->_contentContainerView leadingAnchor];
  v52 = [v56 constraintEqualToAnchor:v54];
  v68[1] = v52;
  v65 = v17;
  v51 = [v17 bottomAnchor];
  v50 = [(UIView *)self->_contentContainerView bottomAnchor];
  v49 = [v51 constraintEqualToAnchor:v50];
  v68[2] = v49;
  v48 = [v17 trailingAnchor];
  v47 = [(UIView *)self->_contentContainerView trailingAnchor];
  v45 = [v48 constraintEqualToAnchor:v47];
  v68[3] = v45;
  v44 = [(UIView *)self->_contentContainerView topAnchor];
  v43 = [v3 topAnchor];
  v42 = [v44 constraintEqualToAnchor:v43];
  v68[4] = v42;
  v41 = [(UIView *)self->_contentContainerView leadingAnchor];
  v40 = [v3 leadingAnchor];
  v39 = [v41 constraintGreaterThanOrEqualToAnchor:v40 constant:20.0];
  v68[5] = v39;
  v38 = [(UIView *)self->_contentContainerView bottomAnchor];
  v37 = [v3 bottomAnchor];
  v18 = [v38 constraintEqualToAnchor:v37];
  v68[6] = v18;
  v19 = [(UIView *)self->_contentContainerView trailingAnchor];
  v20 = v3;
  v64 = v3;
  v21 = [v3 trailingAnchor];
  v22 = [v19 constraintLessThanOrEqualToAnchor:v21 constant:-20.0];
  v68[7] = v22;
  v23 = [(UIView *)self->_contentContainerView centerXAnchor];
  v24 = [v20 centerXAnchor];
  v25 = [v23 constraintEqualToAnchor:v24];
  v68[8] = v25;
  v26 = [MEMORY[0x277CBEA60] arrayWithObjects:v68 count:9];
  [v46 activateConstraints:v26];

  v53 = MEMORY[0x277CCAAD0];
  v63 = [(UIVisualEffectView *)self->_backgroundVisualEffectView leadingAnchor];
  v61 = [(UIView *)self->_contentContainerView leadingAnchor];
  v59 = [v63 constraintEqualToAnchor:v61];
  v67[0] = v59;
  v57 = [(UIVisualEffectView *)self->_backgroundVisualEffectView trailingAnchor];
  v55 = [(UIView *)self->_contentContainerView trailingAnchor];
  v27 = [v57 constraintEqualToAnchor:v55];
  v67[1] = v27;
  v28 = [(UIVisualEffectView *)self->_backgroundVisualEffectView topAnchor];
  v29 = [(UIView *)self->_contentContainerView topAnchor];
  v30 = [v28 constraintEqualToAnchor:v29];
  v67[2] = v30;
  v31 = [(UIVisualEffectView *)self->_backgroundVisualEffectView bottomAnchor];
  v32 = [(UIView *)self->_contentContainerView bottomAnchor];
  v33 = [v31 constraintEqualToAnchor:v32];
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
    v27 = [(MUIToastViewController *)self view];
    v24 = [v27 leadingAnchor];
    v26 = [(MUIToastViewController *)self view];
    v25 = [v26 superview];
    v23 = [v25 safeAreaLayoutGuide];
    v22 = [v23 leadingAnchor];
    v21 = [v24 constraintEqualToAnchor:v22];
    v29[0] = v21;
    v20 = [(MUIToastViewController *)self view];
    v16 = [v20 trailingAnchor];
    v18 = [(MUIToastViewController *)self view];
    v17 = [v18 superview];
    v15 = [v17 safeAreaLayoutGuide];
    v14 = [v15 trailingAnchor];
    v3 = [v16 constraintEqualToAnchor:v14];
    v29[1] = v3;
    v4 = [(MUIToastViewController *)self view];
    v5 = [v4 bottomAnchor];
    v6 = [(MUIToastViewController *)self view];
    v7 = [v6 superview];
    v8 = [v7 safeAreaLayoutGuide];
    v9 = [v8 bottomAnchor];
    v10 = [v5 constraintEqualToAnchor:v9 constant:-16.0];
    v29[2] = v10;
    v11 = [MEMORY[0x277CBEA60] arrayWithObjects:v29 count:3];
    [v19 activateConstraints:v11];

    [(MUIToastViewController *)self setPositioningConstraintsApplied:1];
    [(UIView *)self->_contentContainerView bounds];
    [(UIVisualEffectView *)self->_backgroundVisualEffectView _setContinuousCornerRadius:CGRectGetHeight(v30) * 0.5];
    v12 = [(MUIToastViewController *)self view];
    v13 = [v12 superview];
    [v13 layoutIfNeeded];
  }
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v4 viewDidAppear:a3];
  self->_remainingToastDuration = 0.0;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v5 viewWillDisappear:a3];
  [(NSTimer *)self->_dismissalTimer invalidate];
  dismissalTimer = self->_dismissalTimer;
  self->_dismissalTimer = 0;
}

- (void)preferredContentSizeDidChangeForChildContentContainer:(id)a3
{
  v5.receiver = self;
  v5.super_class = MUIToastViewController;
  [(MUIToastViewController *)&v5 preferredContentSizeDidChangeForChildContentContainer:a3];
  v4 = [(MUIToastViewController *)self view];
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

  v8 = [(MUIToastViewController *)self view];
  [v4 translationInView:v8];
  self->_contentOffset = v9;
  [v8 setNeedsUpdateConstraints];
  if ([v4 state] == 3 || objc_msgSend(v4, "state") == 4)
  {
    [v4 translationInView:v8];
    v11 = v10;
    [v4 velocityInView:v8];
    v13 = v11 + v12 / -1000.0 / log(*MEMORY[0x277D76EB8]);
    [v8 bounds];
    v14 = CGRectGetHeight(v20) * -0.5;
    v15 = 0.0;
    if (v13 < v14)
    {
      [v8 bounds];
      v15 = fmin(v13 + CGRectGetHeight(v21), 0.0);
    }

    self->_contentOffset = v15;
    v16 = MEMORY[0x277D75D18];
    v18[0] = MEMORY[0x277D85DD0];
    v18[1] = 3221225472;
    v18[2] = __41__MUIToastViewController__didReceivePan___block_invoke;
    v18[3] = &unk_278188BB0;
    v19 = v8;
    [v16 animateWithDuration:v18 animations:0.5];
    if (v13 < v14)
    {
      v17 = [(MUIToastViewController *)self delegate];
      [v17 dismissToastViewController:self];
    }
  }
}

- (MUIToastViewControllerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end