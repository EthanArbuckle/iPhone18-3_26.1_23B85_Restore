@interface DCProgressViewController
- (DCProgressViewController)initWithDelegate:(id)delegate;
- (DCProgressViewControllerDelegate)progressDelegate;
- (void)setObservedProgress:(id)progress;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation DCProgressViewController

- (DCProgressViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = DCProgressViewController;
  v6 = [(DCProgressViewController *)&v8 initWithNibName:@"DCProgressViewController" bundle:v5];

  if (v6)
  {
    [(DCProgressViewController *)v6 setProgressDelegate:delegateCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DCProgressViewController;
  [(DCProgressViewController *)&v7 viewDidLoad];
  clearColor = [MEMORY[0x277D75348] clearColor];
  view = [(DCProgressViewController *)self view];
  [view setBackgroundColor:clearColor];

  label = [(DCProgressViewController *)self label];
  [label setText:@" "];

  circularProgressView = [(DCProgressViewController *)self circularProgressView];
  [circularProgressView setHidden:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = DCProgressViewController;
  [(DCProgressViewController *)&v5 viewWillAppear:appear];
  activityIndicator = [(DCProgressViewController *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = DCProgressViewController;
  [(DCProgressViewController *)&v6 viewWillDisappear:disappear];
  activityIndicator = [(DCProgressViewController *)self activityIndicator];
  [activityIndicator stopAnimating];

  progressDelegate = [(DCProgressViewController *)self progressDelegate];
  [progressDelegate willDismissProgressViewController:self];
}

- (void)setObservedProgress:(id)progress
{
  progressCopy = progress;
  if (self->_observedProgress != progressCopy)
  {
    v12 = progressCopy;
    objc_storeStrong(&self->_observedProgress, progress);
    circularProgressView = [(DCProgressViewController *)self circularProgressView];
    [circularProgressView setObservedProgress:v12];

    observedProgress = self->_observedProgress;
    v8 = observedProgress == 0;
    v9 = observedProgress != 0;
    activityIndicator = [(DCProgressViewController *)self activityIndicator];
    [activityIndicator setHidden:v9];

    circularProgressView2 = [(DCProgressViewController *)self circularProgressView];
    [circularProgressView2 setHidden:v8];

    progressCopy = v12;
  }
}

- (DCProgressViewControllerDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

@end