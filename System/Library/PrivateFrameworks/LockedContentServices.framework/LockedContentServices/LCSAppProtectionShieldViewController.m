@interface LCSAppProtectionShieldViewController
- (LCSAppProtectionShieldViewController)initWithAssistant:(id)a3;
- (void)viewDidLoad;
@end

@implementation LCSAppProtectionShieldViewController

- (LCSAppProtectionShieldViewController)initWithAssistant:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = LCSAppProtectionShieldViewController;
  v6 = [(LCSAppProtectionShieldViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assistant, a3);
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = LCSAppProtectionShieldViewController;
  [(LCSAppProtectionShieldViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277CEBEC8]);
  v4 = [(LCSExtensionAppProtectionAssistant *)self->_assistant extension];
  v5 = [v4 localizedDisplayName];
  v6 = [(LCSExtensionAppProtectionAssistant *)self->_assistant applicationIconImage];
  v7 = [v3 initWithLocalizedApplicationName:v5 iconImage:v6];

  v8 = [(LCSAppProtectionShieldViewController *)self view];
  [v8 bounds];
  [v7 setFrame:?];

  [v7 setAutoresizingMask:18];
  [v7 setDelegate:self];
  v9 = [(LCSAppProtectionShieldViewController *)self view];
  [v9 addSubview:v7];

  shieldView = self->_shieldView;
  self->_shieldView = v7;
}

@end