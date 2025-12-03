@interface CSMagSafeAccessoryTrayViewController
- (CSMagSafeAccessoryTrayViewController)initWithAccessory:(id)accessory;
- (id)_trayColorForAccessory:(id)accessory;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLoad;
@end

@implementation CSMagSafeAccessoryTrayViewController

- (CSMagSafeAccessoryTrayViewController)initWithAccessory:(id)accessory
{
  accessoryCopy = accessory;
  v11.receiver = self;
  v11.super_class = CSMagSafeAccessoryTrayViewController;
  v5 = [(CSMagSafeAccessoryViewController *)&v11 initWithAccessory:accessoryCopy];
  if (v5)
  {
    v6 = [CSMagSafeAccessoryTrayView alloc];
    v7 = [(CSMagSafeAccessoryTrayViewController *)v5 _trayColorForAccessory:accessoryCopy];
    v8 = [(CSMagSafeAccessoryTrayView *)v6 initWithTrayColor:v7];
    trayView = v5->_trayView;
    v5->_trayView = v8;
  }

  return v5;
}

- (void)viewDidLoad
{
  v4.receiver = self;
  v4.super_class = CSMagSafeAccessoryTrayViewController;
  [(CSCoverSheetViewControllerBase *)&v4 viewDidLoad];
  view = [(CSMagSafeAccessoryTrayViewController *)self view];
  [view addSubview:self->_trayView];
}

- (void)viewDidAppear:(BOOL)appear
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessoryTrayViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:appear];
  [(CSMagSafeAccessoryTrayViewController *)self setIsAnimatingPresentation:1];
  trayView = self->_trayView;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__CSMagSafeAccessoryTrayViewController_viewDidAppear___block_invoke;
  v5[3] = &unk_27838B770;
  v5[4] = self;
  [(CSMagSafeAccessoryTrayView *)trayView performAnimation:0 completionHandler:v5];
}

- (id)_trayColorForAccessory:(id)accessory
{
  accessoryCopy = accessory;
  if ([accessoryCopy type] == 2 || objc_msgSend(accessoryCopy, "type") == 4 || objc_msgSend(accessoryCopy, "type") == 11)
  {
    clearColor = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    clearColor = [accessoryCopy primaryColor];
  }

  v5 = clearColor;

  return v5;
}

@end