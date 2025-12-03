@interface HPSUICarrySettingsViewController
- (HPSUICarrySettingsViewController)initWithCoder:(id)coder;
- (HPSUICarrySettingsViewController)initWithHomeID:(id)d;
- (HPSUICarrySettingsViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers;
- (void)configureInternalVC;
- (void)encodeWithCoder:(id)coder;
- (void)setBackgroundColorIfNeeded;
- (void)viewDidLoad;
@end

@implementation HPSUICarrySettingsViewController

- (HPSUICarrySettingsViewController)initWithHomeID:(id)d
{
  dCopy = d;
  v9.receiver = self;
  v9.super_class = HPSUICarrySettingsViewController;
  v5 = [(HPSUICarrySettingsViewController *)&v9 initWithNibName:0 bundle:0];
  if (v5)
  {
    v6 = [[_HPSUICarrySettingsViewController alloc] initWithHomeID:dCopy];
    [(HPSUICarrySettingsViewController *)v5 setInternalVC:v6];

    v7 = v5;
  }

  return v5;
}

- (HPSUICarrySettingsViewController)initWithHomeID:(id)d homeKitIdentifiers:(id)identifiers
{
  dCopy = d;
  identifiersCopy = identifiers;
  v12.receiver = self;
  v12.super_class = HPSUICarrySettingsViewController;
  v8 = [(HPSUICarrySettingsViewController *)&v12 initWithNibName:0 bundle:0];
  if (v8)
  {
    v9 = [[_HPSUICarrySettingsViewController alloc] initWithHomeID:dCopy homeKitIdentifiers:identifiersCopy];
    [(HPSUICarrySettingsViewController *)v8 setInternalVC:v9];

    v10 = v8;
  }

  return v8;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  homeID = [(HPSUICarrySettingsViewController *)self homeID];
  if (homeID)
  {
    [coderCopy encodeObject:homeID forKey:@"hid"];
  }
}

- (HPSUICarrySettingsViewController)initWithCoder:(id)coder
{
  v4 = [coder decodeObjectForKey:@"hid"];
  if (v4)
  {
    self = [(HPSUICarrySettingsViewController *)self initWithHomeID:v4];
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
  internalVC = [(HPSUICarrySettingsViewController *)self internalVC];
  if (internalVC)
  {
    [(UIViewController *)self wrapWithSubViewController:internalVC];
  }

  MEMORY[0x2821F96F8]();
}

- (void)setBackgroundColorIfNeeded
{
  parentViewController = [(HPSUICarrySettingsViewController *)self parentViewController];
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
          view2 = [(HPSUICarrySettingsViewController *)self view];
          [view2 setBackgroundColor:backgroundColor];
        }
      }
    }
  }

  MEMORY[0x2821F96F8]();
}

- (void)viewDidLoad
{
  [(HPSUICarrySettingsViewController *)self setBackgroundColorIfNeeded];
  [(HPSUICarrySettingsViewController *)self configureInternalVC];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"HOMEPOD_INTERNAL_UPDATES" value:0 table:0];
  [(HPSUICarrySettingsViewController *)self setTitle:v4];
  v5.receiver = self;
  v5.super_class = HPSUICarrySettingsViewController;
  [(HPSUICarrySettingsViewController *)&v5 viewDidLoad];
}

@end