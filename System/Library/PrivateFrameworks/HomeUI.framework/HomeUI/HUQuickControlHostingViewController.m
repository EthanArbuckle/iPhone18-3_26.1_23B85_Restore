@interface HUQuickControlHostingViewController
- (HUQuickControlHostingViewController)initWithViewController:(id)a3 profile:(id)a4;
- (void)loadView;
- (void)viewDidLoad;
@end

@implementation HUQuickControlHostingViewController

- (HUQuickControlHostingViewController)initWithViewController:(id)a3 profile:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HUQuickControlHostingViewController;
  v9 = [(HUQuickControlHostingViewController *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_profile, a4);
    objc_storeStrong(&v10->_contraption, a3);
  }

  return v10;
}

- (void)loadView
{
  v3 = [_HUQuickControlControllableHostView alloc];
  v5 = [(HUQuickControlHostingViewController *)self profile];
  v4 = [(_HUQuickControlControllableHostView *)v3 initWithProfile:v5];
  [(HUQuickControlHostingViewController *)self setView:v4];
}

- (void)viewDidLoad
{
  v21.receiver = self;
  v21.super_class = HUQuickControlHostingViewController;
  [(HUQuickControlHostingViewController *)&v21 viewDidLoad];
  v3 = [(HUQuickControlHostingViewController *)self contraption];
  [(HUQuickControlHostingViewController *)self addChildViewController:v3];

  v4 = [(HUQuickControlHostingViewController *)self contraption];
  v5 = [v4 view];
  [v5 setAutoresizingMask:18];

  v6 = [(HUQuickControlHostingViewController *)self view];
  v7 = [(HUQuickControlHostingViewController *)self contraption];
  v8 = [v7 view];
  [v6 addSubview:v8];

  v9 = [(HUQuickControlHostingViewController *)self view];
  [v9 bounds];
  v11 = v10;
  v13 = v12;
  v15 = v14;
  v17 = v16;
  v18 = [(HUQuickControlHostingViewController *)self contraption];
  v19 = [v18 view];
  [v19 setFrame:{v11, v13, v15, v17}];

  v20 = [(HUQuickControlHostingViewController *)self contraption];
  [v20 didMoveToParentViewController:self];
}

@end