@interface LCSAppProtectionShieldViewController
- (LCSAppProtectionShieldViewController)initWithAssistant:(id)assistant;
- (void)viewDidLoad;
@end

@implementation LCSAppProtectionShieldViewController

- (LCSAppProtectionShieldViewController)initWithAssistant:(id)assistant
{
  assistantCopy = assistant;
  v9.receiver = self;
  v9.super_class = LCSAppProtectionShieldViewController;
  v6 = [(LCSAppProtectionShieldViewController *)&v9 initWithNibName:0 bundle:0];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_assistant, assistant);
  }

  return v7;
}

- (void)viewDidLoad
{
  v11.receiver = self;
  v11.super_class = LCSAppProtectionShieldViewController;
  [(LCSAppProtectionShieldViewController *)&v11 viewDidLoad];
  v3 = objc_alloc(MEMORY[0x277CEBEC8]);
  extension = [(LCSExtensionAppProtectionAssistant *)self->_assistant extension];
  localizedDisplayName = [extension localizedDisplayName];
  applicationIconImage = [(LCSExtensionAppProtectionAssistant *)self->_assistant applicationIconImage];
  v7 = [v3 initWithLocalizedApplicationName:localizedDisplayName iconImage:applicationIconImage];

  view = [(LCSAppProtectionShieldViewController *)self view];
  [view bounds];
  [v7 setFrame:?];

  [v7 setAutoresizingMask:18];
  [v7 setDelegate:self];
  view2 = [(LCSAppProtectionShieldViewController *)self view];
  [view2 addSubview:v7];

  shieldView = self->_shieldView;
  self->_shieldView = v7;
}

@end