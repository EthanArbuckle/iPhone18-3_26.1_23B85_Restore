@interface ICProgressViewController
- (ICProgressViewController)initWithDelegate:(id)a3;
- (ICProgressViewControllerDelegate)progressDelegate;
- (void)setObservedProgress:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
@end

@implementation ICProgressViewController

- (ICProgressViewController)initWithDelegate:(id)a3
{
  v4 = a3;
  v5 = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];
  v8.receiver = self;
  v8.super_class = ICProgressViewController;
  v6 = [(ICProgressViewController *)&v8 initWithNibName:@"ICProgressViewController" bundle:v5];

  if (v6)
  {
    [(ICProgressViewController *)v6 setProgressDelegate:v4];
  }

  return v6;
}

- (void)viewDidLoad
{
  v10.receiver = self;
  v10.super_class = ICProgressViewController;
  [(ICProgressViewController *)&v10 viewDidLoad];
  v3 = [MEMORY[0x1E69DC888] clearColor];
  v4 = [(ICProgressViewController *)self view];
  [v4 setBackgroundColor:v3];

  v5 = [MEMORY[0x1E69DC888] labelColor];
  v6 = [(ICProgressViewController *)self label];
  [v6 setTextColor:v5];

  v7 = [(ICProgressViewController *)self activityIndicator];
  [v7 setActivityIndicatorViewStyle:100];

  v8 = [(ICProgressViewController *)self label];
  [v8 setText:@" "];

  v9 = [(ICProgressViewController *)self circularProgressView];
  [v9 setHidden:1];
}

- (void)viewWillAppear:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = ICProgressViewController;
  [(ICProgressViewController *)&v5 viewWillAppear:a3];
  v4 = [(ICProgressViewController *)self activityIndicator];
  [v4 startAnimating];
}

- (void)viewWillDisappear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = ICProgressViewController;
  [(ICProgressViewController *)&v6 viewWillDisappear:a3];
  v4 = [(ICProgressViewController *)self activityIndicator];
  [v4 stopAnimating];

  v5 = [(ICProgressViewController *)self progressDelegate];
  [v5 willDismissProgressViewController:self];
}

- (void)setObservedProgress:(id)a3
{
  v5 = a3;
  if (self->_observedProgress != v5)
  {
    v12 = v5;
    objc_storeStrong(&self->_observedProgress, a3);
    v6 = [(ICProgressViewController *)self circularProgressView];
    [v6 setObservedProgress:v12];

    observedProgress = self->_observedProgress;
    v8 = observedProgress == 0;
    v9 = observedProgress != 0;
    v10 = [(ICProgressViewController *)self activityIndicator];
    [v10 setHidden:v9];

    v11 = [(ICProgressViewController *)self circularProgressView];
    [v11 setHidden:v8];

    v5 = v12;
  }
}

- (ICProgressViewControllerDelegate)progressDelegate
{
  WeakRetained = objc_loadWeakRetained(&self->_progressDelegate);

  return WeakRetained;
}

@end