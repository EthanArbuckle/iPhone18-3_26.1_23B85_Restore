@interface HPSUIBetaEnrollmentViewController
- (HPSUIBetaEnrollmentViewController)initWithCoder:(id)a3;
- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)a3;
- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)a3 homeKitIdentifiers:(id)a4;
- (void)configureInternalVC;
- (void)encodeWithCoder:(id)a3;
- (void)setBackgroundColorIfNeeded;
- (void)viewDidLoad;
@end

@implementation HPSUIBetaEnrollmentViewController

- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = HPSUIBetaEnrollmentViewController;
  v5 = [(HPSUIBetaEnrollmentViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[_HPSUIBetaEnrollmentViewController alloc] initWithHomeID:v4];
    [(HPSUIBetaEnrollmentViewController *)v5 setInternalVC:v6];

    v7 = v5;
  }

  return v5;
}

- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)a3 homeKitIdentifiers:(id)a4
{
  v6 = a3;
  v7 = a4;
  v12.receiver = self;
  v12.super_class = HPSUIBetaEnrollmentViewController;
  v8 = [(HPSUIBetaEnrollmentViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[_HPSUIBetaEnrollmentViewController alloc] initWithHomeID:v6 homeKitIdentifiers:v7];
    [(HPSUIBetaEnrollmentViewController *)v8 setInternalVC:v9];

    v10 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)a3
{
  v5 = a3;
  v4 = [(HPSUIBetaEnrollmentViewController *)self homeID];
  if (v4)
  {
    [v5 encodeObject:v4 forKey:@"hid"];
  }
}

- (HPSUIBetaEnrollmentViewController)initWithCoder:(id)a3
{
  v4 = [a3 decodeObjectForKey:@"hid"];
  if (v4)
  {
    self = [(HPSUIBetaEnrollmentViewController *)self initWithHomeID:v4];
    v5 = self;
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (void)configureInternalVC
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  v3 = [(HPSUIBetaEnrollmentViewController *)self internalVC];
  if (v3)
  {
    [(UIViewController *)self wrapWithSubViewController:v3];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBackgroundColorIfNeeded
{
  v3 = [(HPSUIBetaEnrollmentViewController *)self parentViewController];
  if (v3)
  {
    v13 = v3;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v13;
      v5 = [v4 viewControllers];
      v6 = [v5 count];

      v7 = v6 - 2;
      if (v6 >= 2)
      {
        v8 = [v4 viewControllers];
        v9 = [v8 objectAtIndexedSubscript:v7];

        v10 = [v9 view];
        v11 = [v10 backgroundColor];

        if (v11)
        {
          v12 = [(HPSUIBetaEnrollmentViewController *)self view];
          [v12 setBackgroundColor:v11];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)viewDidLoad
{
  [(HPSUIBetaEnrollmentViewController *)self setBackgroundColorIfNeeded];
  [(HPSUIBetaEnrollmentViewController *)self configureInternalVC];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOMEPOD_BETA_UPDATES" value:0 table:0];
  [(HPSUIBetaEnrollmentViewController *)self setTitle:v4];
  v5.receiver = self;
  v5.super_class = HPSUIBetaEnrollmentViewController;
  [(HPSUIBetaEnrollmentViewController *)&v5 viewDidLoad];
}

@end