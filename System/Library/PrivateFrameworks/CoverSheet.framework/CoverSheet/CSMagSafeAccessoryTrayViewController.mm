@interface CSMagSafeAccessoryTrayViewController
- (CSMagSafeAccessoryTrayViewController)initWithAccessory:(id)a3;
- (id)_trayColorForAccessory:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
@end

@implementation CSMagSafeAccessoryTrayViewController

- (CSMagSafeAccessoryTrayViewController)initWithAccessory:(id)a3
{
  v4 = a3;
  v11.receiver = self;
  v11.super_class = CSMagSafeAccessoryTrayViewController;
  v5 = [(CSMagSafeAccessoryViewController *)&v11 initWithAccessory:v4];
  if (v5)
  {
    v6 = [CSMagSafeAccessoryTrayView alloc];
    v7 = [(CSMagSafeAccessoryTrayViewController *)v5 _trayColorForAccessory:v4];
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
  v3 = [(CSMagSafeAccessoryTrayViewController *)self view];
  [v3 addSubview:self->_trayView];
}

- (void)viewDidAppear:(BOOL)a3
{
  v6.receiver = self;
  v6.super_class = CSMagSafeAccessoryTrayViewController;
  [(CSCoverSheetViewControllerBase *)&v6 viewDidAppear:a3];
  [(CSMagSafeAccessoryTrayViewController *)self setIsAnimatingPresentation:1];
  trayView = self->_trayView;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __54__CSMagSafeAccessoryTrayViewController_viewDidAppear___block_invoke;
  v5[3] = &unk_27838B770;
  v5[4] = self;
  [(CSMagSafeAccessoryTrayView *)trayView performAnimation:0 completionHandler:v5];
}

- (id)_trayColorForAccessory:(id)a3
{
  v3 = a3;
  if ([v3 type] == 2 || objc_msgSend(v3, "type") == 4 || objc_msgSend(v3, "type") == 11)
  {
    v4 = [MEMORY[0x277D75348] clearColor];
  }

  else
  {
    v4 = [v3 primaryColor];
  }

  v5 = v4;

  return v5;
}

@end