@interface ICProgressViewController
- (ICProgressViewController)initWithDelegate:(id)delegate;
- (ICProgressViewControllerDelegate)progressDelegate;
- (void)setObservedProgress:(id)progress;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ICProgressViewController

- (ICProgressViewController)initWithDelegate:(id)delegate
{
  delegateCopy = delegate;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = ICProgressViewController;
  v6 = [(ICProgressViewController *)&v8 initWithNibName:@"ICProgressViewController" bundle:v5];

  if (v6)
  {
    [(ICProgressViewController *)v6 setProgressDelegate:delegateCopy];
  }

  return v6;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ICProgressViewController;
  [(ICProgressViewController *)&v10 viewDidLoad];
  clearColor = [MEMORY[0x1E69DC888] clearColor];
  view = [(ICProgressViewController *)self view];
  [view setBackgroundColor:clearColor];

  labelColor = [MEMORY[0x1E69DC888] labelColor];
  label = [(ICProgressViewController *)self label];
  [label setTextColor:labelColor];

  activityIndicator = [(ICProgressViewController *)self activityIndicator];
  [activityIndicator setActivityIndicatorViewStyle:100];

  label2 = [(ICProgressViewController *)self label];
  [label2 setText:@" "];

  circularProgressView = [(ICProgressViewController *)self circularProgressView];
  [circularProgressView setHidden:1];
}

- (void)viewWillAppear:(BOOL)appear
{
  v5.receiver = self;
  v5.super_class = ICProgressViewController;
  [(ICProgressViewController *)&v5 viewWillAppear:appear];
  activityIndicator = [(ICProgressViewController *)self activityIndicator];
  [activityIndicator startAnimating];
}

- (void)viewWillDisappear:(BOOL)disappear
{
  v6.receiver = self;
  v6.super_class = ICProgressViewController;
  [(ICProgressViewController *)&v6 viewWillDisappear:disappear];
  activityIndicator = [(ICProgressViewController *)self activityIndicator];
  [activityIndicator stopAnimating];

  progressDelegate = [(ICProgressViewController *)self progressDelegate];
  [progressDelegate willDismissProgressViewController:self];
}

- (void)setObservedProgress:(id)progress
{
  progressCopy = progress;
  if (self->_observedProgress != progressCopy)
  {
    v12 = progressCopy;
    objc_storeStrong(&self->_observedProgress, progress);
    circularProgressView = [(ICProgressViewController *)self circularProgressView];
    [circularProgressView setObservedProgress:v12];

    observedProgress = self->_observedProgress;
    v8 = observedProgress == 0;
    v9 = observedProgress != 0;
    activityIndicator = [(ICProgressViewController *)self activityIndicator];
    [activityIndicator setHidden:v9];

    circularProgressView2 = [(ICProgressViewController *)self circularProgressView];
    [circularProgressView2 setHidden:v8];

    progressCopy = v12;
  }
}

- (ICProgressViewControllerDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

@end