@interface HUQuickControlHostingViewController
- (HUQuickControlHostingViewController)initWithViewController:(id)controller profile:(id)profile;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation HUQuickControlHostingViewController

- (HUQuickControlHostingViewController)initWithViewController:(id)controller profile:(id)profile
{
  controllerCopy = controller;
  profileCopy = profile;
  v12.receiver = self;
  v12.super_class = HUQuickControlHostingViewController;
  v9 = [(HUQuickControlHostingViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, profile);
    objc_storeStrong(&v10->_contraption, controller);
  }

  return v10;
}

- (void)loadView
{
  v3 = [_HUQuickControlControllableHostView alloc];
  profile = [(HUQuickControlHostingViewController *)self profile];
  v4 = [(_HUQuickControlControllableHostView *)v3 initWithProfile:profile];
  [(HUQuickControlHostingViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HUQuickControlHostingViewController;
  [(HUQuickControlHostingViewController *)&v21 viewDidLoad];
  contraption = [(HUQuickControlHostingViewController *)self contraption];
  [(HUQuickControlHostingViewController *)self addChildViewController:contraption];

  contraption2 = [(HUQuickControlHostingViewController *)self contraption];
  view = [contraption2 view];
  [view setAutoresizingMask:18];

  view2 = [(HUQuickControlHostingViewController *)self view];
  contraption3 = [(HUQuickControlHostingViewController *)self contraption];
  view3 = [contraption3 view];
  [view2 addSubview:view3];

  view4 = [(HUQuickControlHostingViewController *)self view];
  [view4 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  contraption4 = [(HUQuickControlHostingViewController *)self contraption];
  view5 = [contraption4 view];
  [view5 setFrame:{v11, v13, v15, v17}];

  contraption5 = [(HUQuickControlHostingViewController *)self contraption];
  [contraption5 didMoveToParentViewController:self];
}

@end