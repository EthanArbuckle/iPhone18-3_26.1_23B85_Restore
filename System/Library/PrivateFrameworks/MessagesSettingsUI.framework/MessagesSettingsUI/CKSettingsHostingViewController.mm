@interface CKSettingsHostingViewController
- (CKSettingsHostingViewController)initWithCoder:(id)coder;
- (CKSettingsHostingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKSettingsHostingViewController

- (void)viewDidLoad
{
  selfCopy = self;
  CKSettingsHostingViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  CKSettingsHostingViewController.viewDidLayoutSubviews()();
}

- (CKSettingsHostingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  if (name)
  {
    sub_258D56BD4();
    *(&self->super.super.super.isa + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
    bundleCopy = bundle;
    v7 = sub_258D56BC4();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
    bundleCopy2 = bundle;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = CKSettingsHostingViewController;
  v9 = [(CKSettingsHostingViewController *)&v11 initWithNibName:v7 bundle:bundle];

  return v9;
}

- (CKSettingsHostingViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
  v6.receiver = self;
  v6.super_class = CKSettingsHostingViewController;
  coderCopy = coder;
  v4 = [(CKSettingsHostingViewController *)&v6 initWithCoder:coderCopy];

  if (v4)
  {
  }

  return v4;
}

@end