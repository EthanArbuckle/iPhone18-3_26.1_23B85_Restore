@interface HUQuickControlNavigationController
- (CGSize)preferredContentSize;
- (id)hu_prepareForDismissalAnimated:(BOOL)a3;
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
  v4 = [(HUQuickControlNavigationController *)self presentationController];
  [v4 _setForcePresentationInPresenterScene:1];
}

- (CGSize)preferredContentSize
{
  v3 = [MEMORY[0x277D75418] currentDevice];
  v4 = [v3 userInterfaceIdiom];

  if (v4)
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

- (id)hu_prepareForDismissalAnimated:(BOOL)a3
{
  v3 = a3;
  v4 = [(HUQuickControlNavigationController *)self topViewController];
  if ([v4 conformsToProtocol:&unk_28255A3B0])
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  if (v6)
  {
    [v6 hu_prepareForDismissalAnimated:v3];
  }

  else
  {
    [MEMORY[0x277D2C900] futureWithResult:&unk_282491EC8];
  }
  v7 = ;

  return v7;
}

@end