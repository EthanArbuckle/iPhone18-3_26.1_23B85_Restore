@interface CSDiscoveryItemViewController
- (CSDiscoveryItemViewController)initWithPlatterDiscoveryView:(id)view firstDidAppearCompletion:(id)completion;
- (void)_callFirstDidAppearCompletionIfNecessary;
- (void)loadView;
- (void)setScreenOn:(BOOL)on;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
@end

@implementation CSDiscoveryItemViewController

- (CSDiscoveryItemViewController)initWithPlatterDiscoveryView:(id)view firstDidAppearCompletion:(id)completion
{
  viewCopy = view;
  completionCopy = completion;
  v14.receiver = self;
  v14.super_class = CSDiscoveryItemViewController;
  v9 = [(CSDiscoveryItemViewController *)&v14 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_platterDiscoveryView, view);
    v11 = MEMORY[0x223D698D0](completionCopy);
    firstDidAppearCompletion = v10->_firstDidAppearCompletion;
    v10->_firstDidAppearCompletion = v11;
  }

  return v10;
}

- (void)loadView
{
  [(CSDiscoveryItemViewController *)self setView:self->_platterDiscoveryView];
  overrideUserInterfaceStyle = [(PLPlatterDiscoveryView *)self->_platterDiscoveryView overrideUserInterfaceStyle];

  [(CSDiscoveryItemViewController *)self setOverrideUserInterfaceStyle:overrideUserInterfaceStyle];
}

- (void)viewDidAppear:(BOOL)appear
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidAppear:appear];
  self->_visible = 1;
  [(CSDiscoveryItemViewController *)self _callFirstDidAppearCompletionIfNecessary];
}

- (void)viewDidDisappear:(BOOL)disappear
{
  v4.receiver = self;
  v4.super_class = CSDiscoveryItemViewController;
  [(CSDiscoveryItemViewController *)&v4 viewDidDisappear:disappear];
  self->_visible = 0;
}

- (void)setScreenOn:(BOOL)on
{
  if (self->_screenOn != on)
  {
    self->_screenOn = on;
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