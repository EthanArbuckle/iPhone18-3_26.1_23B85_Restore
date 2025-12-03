@interface HUQuickControlNavigationController
- (CGSize)preferredContentSize;
- (id)hu_prepareForDismissalAnimated:(BOOL)animated;
- (void)viewDidLoad;
@end

@implementation HUQuickControlNavigationController

- (void)viewDidLoad
{
  v5.receiver = self;
  v5.super_class = HUQuickControlNavigationController;
  [(HUQuickControlNavigationController *)&v5 viewDidLoad];
  if ([MEMORY[0x277D14CE8] shouldUseProxHandOffMaterials])
  {
    v3 = 4;
  }

  else
  {
    v3 = 16;
  }

  [(HUQuickControlNavigationController *)self setModalPresentationStyle:v3];
  presentationController = [(HUQuickControlNavigationController *)self presentationController];
  [presentationController _setForcePresentationInPresenterScene:1];
}

- (CGSize)preferredContentSize
{
  currentDevice = [MEMORY[0x277D75418] currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    v5 = 768.0;
    v6 = 375.0;
  }

  else
  {
    v7.receiver = self;
    v7.super_class = HUQuickControlNavigationController;
    [(HUQuickControlNavigationController *)&v7 preferredContentSize];
  }

  result.height = v5;
  result.width = v6;
  return result;
}

- (id)hu_prepareForDismissalAnimated:(BOOL)animated
{
  animatedCopy = animated;
  topViewController = [(HUQuickControlNavigationController *)self topViewController];
  if ([topViewController conformsToProtocol:&unk_28255A3B0])
  {
    v5 = topViewController;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 hu_prepareForDismissalAnimated:animatedCopy];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:&unk_282491EC8];
  }
  v7 = ;

  return v7;
}

@end