@interface CSUserPictureViewController
+ (BOOL)isUserPictureSupported;
- (BOOL)handleEvent:(id)a3;
- (CSUserPictureViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)view;
- (void)aggregateAppearance:(id)a3;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4;
@end

@implementation CSUserPictureViewController

+ (BOOL)isUserPictureSupported
{
  v2 = [MEMORY[0x277D77BF8] sharedManager];
  v3 = [v2 isMultiUser];

  return v3;
}

- (CSUserPictureViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  v9.receiver = self;
  v9.super_class = CSUserPictureViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 initWithNibName:a3 bundle:a4];
  if (v4)
  {
    v5 = [MEMORY[0x277D77BF8] sharedManager];
    v6 = [v5 currentUser];
    user = v4->_user;
    v4->_user = v6;
  }

  return v4;
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = CSUserPictureViewController;
  v2 = [(CSUserPictureViewController *)&v4 view];

  return v2;
}

- (void)viewDidLoad
{
  v3 = [(CSUserPictureViewController *)self view];
  v4 = [MEMORY[0x277CBDA58] contactForUser:self->_user];
  [v3 setContact:v4];

  [(CSCoverSheetViewControllerBase *)self registerView:v3 forRole:2];
  v5.receiver = self;
  v5.super_class = CSUserPictureViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
}

- (void)viewWillTransitionToSize:(CGSize)a3 withTransitionCoordinator:(id)a4
{
  height = a3.height;
  width = a3.width;
  userPictureView = self->_userPictureView;
  v8 = a4;
  [(CSUserPictureView *)userPictureView setFrame:0.0, 0.0, width, height];
  v9.receiver = self;
  v9.super_class = CSUserPictureViewController;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillTransitionToSize:v8 withTransitionCoordinator:width, height];
}

- (void)aggregateAppearance:(id)a3
{
  v7.receiver = self;
  v7.super_class = CSUserPictureViewController;
  v3 = a3;
  [(CSCoverSheetViewControllerBase *)&v7 aggregateAppearance:v3];
  v4 = objc_opt_new();
  v5 = [v4 priority:{60, v7.receiver, v7.super_class}];
  v6 = [v5 style:&unk_28307A520];
  [v3 addComponent:v6];
}

- (BOOL)handleEvent:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = CSUserPictureViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, v4) && ([v4 isConsumable] & 1) != 0)
  {
    v5 = [v4 isConsumable];
  }

  else
  {
    if ([v4 type] == 1)
    {
      userPictureView = self->_userPictureView;
      v7 = [(CSCoverSheetViewControllerBase *)self activeAppearance];
      v8 = [v7 legibilitySettings];
      [(CSUserPictureView *)userPictureView setLegibilitySettings:v8];
    }

    v5 = 0;
  }

  return v5;
}

@end