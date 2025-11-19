@interface DCProgressViewController
- (DCProgressViewController)initWithDelegate:(id)a3;
- (DCProgressViewControllerDelegate)progressDelegate;
- (void)setObservedProgress:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation DCProgressViewController

- (DCProgressViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = DCProgressViewController;
  v6 = [(DCProgressViewController *)&v8 initWithNibName:@"DCProgressViewController" bundle:v5];

  if (v6)
  {
    [(DCProgressViewController *)v6 setProgressDelegate:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v7.receiver = self;
  v7.super_class = DCProgressViewController;
  [(DCProgressViewController *)&v7 viewDidLoad];
  v3 = [MEMORY[0x277D75348] clearColor];
  v4 = [(DCProgressViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [(DCProgressViewController *)self label];
  [v5 setText:@" "];

  v6 = [(DCProgressViewController *)self circularProgressView];
  [v6 setHidden:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = DCProgressViewController;
  [(DCProgressViewController *)&v5 viewWillAppear:a3];
  v4 = [(DCProgressViewController *)self activityIndicator];
  [v4 startAnimating];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = DCProgressViewController;
  [(DCProgressViewController *)&v6 viewWillDisappear:a3];
  v4 = [(DCProgressViewController *)self activityIndicator];
  [v4 stopAnimating];

  v5 = [(DCProgressViewController *)self progressDelegate];
  [v5 willDismissProgressViewController:self];
}

- (void)setObservedProgress:(id)a3
{
  v5 = a3;
  if (self->_observedProgress != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_observedProgress, a3);
    v6 = [(DCProgressViewController *)self circularProgressView];
    [v6 setObservedProgress:v12];

    observedProgress = self->_observedProgress;
    v8 = observedProgress == 0;
    v9 = observedProgress != 0;
    v10 = [(DCProgressViewController *)self activityIndicator];
    [v10 setHidden:v9];

    v11 = [(DCProgressViewController *)self circularProgressView];
    [v11 setHidden:v8];

    v5 = v12;
  }
}

- (DCProgressViewControllerDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

@end