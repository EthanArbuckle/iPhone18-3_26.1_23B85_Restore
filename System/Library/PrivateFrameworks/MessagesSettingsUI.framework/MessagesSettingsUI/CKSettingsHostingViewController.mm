@interface CKSettingsHostingViewController
- (CKSettingsHostingViewController)initWithCoder:(id)a3;
- (CKSettingsHostingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKSettingsHostingViewController

- (void)viewDidLoad
{
  v2 = self;
  CKSettingsHostingViewController.viewDidLoad()();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  CKSettingsHostingViewController.viewDidLayoutSubviews()();
}

- (CKSettingsHostingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  if (a3)
  {
    sub_258D56BD4();
    *(&self->super.super.super.isa + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
    v6 = a4;
    v7 = sub_258D56BC4();
  }

  else
  {
    *(&self->super.super.super.isa + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = self;
  v11.super_class = CKSettingsHostingViewController;
  v9 = [(CKSettingsHostingViewController *)&v11 initWithNibName:v7 bundle:a4];

  return v9;
}

- (CKSettingsHostingViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR___CKSettingsHostingViewController_hostedViewController) = 0;
  v6.receiver = self;
  v6.super_class = CKSettingsHostingViewController;
  v3 = a3;
  v4 = [(CKSettingsHostingViewController *)&v6 initWithCoder:v3];

  if (v4)
  {
  }

  return v4;
}

@end