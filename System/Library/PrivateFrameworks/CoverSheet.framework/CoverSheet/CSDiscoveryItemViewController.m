@interface CSDiscoveryItemViewController
- (CSDiscoveryItemViewController)initWithPlatterDiscoveryView:(id)a3 firstDidAppearCompletion:(id)a4;
- (void)_callFirstDidAppearCompletionIfNecessary;
- (void)loadView;
- (void)setScreenOn:(BOOL)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
@end

@implementation CSDiscoveryItemViewController

- (CSDiscoveryItemViewController)initWithPlatterDiscoveryView:(id)a3 firstDidAppearCompletion:(id)a4
{
  v7 = a3;
  v8 = a4;
  v14.receiver = self;
  v14.super_class = CSDiscoveryItemViewController;
  v9 = [(CSDiscoveryItemViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platterDiscoveryView, a3);
    v11 = MEMORY[0x223D698D0](v8);
    firstDidAppearCompletion = v10->_firstDidAppearCompletion;
    v10->_firstDidAppearCompletion = v11;
  }

  return v10;
}

- (void)loadView
{
  [(CSDiscoveryItemViewController *)self setView:self->_platterDiscoveryView];
  v3 = [(PLPlatterDiscoveryView *)self->_platterDiscoveryView overrideUserInterfaceStyle];

  [(CSDiscoveryItemViewController *)self setOverrideUserInterfaceStyle:v3];
}

- (void)viewDidAppear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidAppear:a3];
  self->_visible = 1;
  [(CSDiscoveryItemViewController *)self _callFirstDidAppearCompletionIfNecessary];
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidDisappear:a3];
  self->_visible = 0;
}

- (void)setScreenOn:(BOOL)a3
{
  if (self->_screenOn != a3)
  {
    self->_screenOn = a3;
    [(CSDiscoveryItemViewController *)self _callFirstDidAppearCompletionIfNecessary];
  }
}

- (void)_callFirstDidAppearCompletionIfNecessary
{
  if (self->_visible && self->_screenOn)
  {
    firstDidAppearCompletion = self->_firstDidAppearCompletion;
    if (firstDidAppearCompletion)
    {
      firstDidAppearCompletion[2](firstDidAppearCompletion, a2);
      v4 = self->_firstDidAppearCompletion;
      self->_firstDidAppearCompletion = 0;
    }
  }
}

@end