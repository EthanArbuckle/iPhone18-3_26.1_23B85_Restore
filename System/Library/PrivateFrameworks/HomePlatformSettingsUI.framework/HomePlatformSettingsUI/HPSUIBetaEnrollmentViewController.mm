@interface HPSUIBetaEnrollmentViewController
- (HPSUIBetaEnrollmentViewController)initWithCoder:(id)coder;
- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d;
- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers;
- (void)configureInternalVC;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundColorIfNeeded;
- (void)viewDidLoad;
@end

@implementation HPSUIBetaEnrollmentViewController

- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HPSUIBetaEnrollmentViewController;
  v5 = [(HPSUIBetaEnrollmentViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[_HPSUIBetaEnrollmentViewController alloc] initWithHomeID:dCopy];
    [(HPSUIBetaEnrollmentViewController *)v5 setInternalVC:v6];

    v7 = v5;
  }

  return v5;
}

- (HPSUIBetaEnrollmentViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = HPSUIBetaEnrollmentViewController;
  v8 = [(HPSUIBetaEnrollmentViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[_HPSUIBetaEnrollmentViewController alloc] initWithHomeID:dCopy homeKitIdentifiers:identifiersCopy];
    [(HPSUIBetaEnrollmentViewController *)v8 setInternalVC:v9];

    v10 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  homeID = [(HPSUIBetaEnrollmentViewController *)self homeID];
  if (homeID)
  {
    [coderCopy encodeObject:homeID forKey:@"hid"];
  }
}

- (HPSUIBetaEnrollmentViewController)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"hid"];
  if (v4)
  {
    self = [(HPSUIBetaEnrollmentViewController *)self initWithHomeID:v4];
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (void)configureInternalVC
{
  dispatch_assert_queue_V2(MEMORY[0x277D85CD0]);
  internalVC = [(HPSUIBetaEnrollmentViewController *)self internalVC];
  if (internalVC)
  {
    [(UIViewController *)self wrapWithSubViewController:internalVC];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBackgroundColorIfNeeded
{
  parentViewController = [(HPSUIBetaEnrollmentViewController *)self parentViewController];
  if (parentViewController)
  {
    v13 = parentViewController;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = v13;
      viewControllers = [v4 viewControllers];
      v6 = [viewControllers count];

      v7 = v6 - 2;
      if (v6 >= 2)
      {
        viewControllers2 = [v4 viewControllers];
        v9 = [viewControllers2 objectAtIndexedSubscript:v7];

        view = [v9 view];
        backgroundColor = [view backgroundColor];

        if (backgroundColor)
        {
          view2 = [(HPSUIBetaEnrollmentViewController *)self view];
          [view2 setBackgroundColor:backgroundColor];
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