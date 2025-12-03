@interface CSUserPictureViewController
+ (BOOL)isUserPictureSupported;
- (BOOL)handleEvent:(id)event;
- (CSUserPictureViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)view;
- (void)aggregateAppearance:(id)appearance;
- (void)viewDidLoad;
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator;
@end

@implementation CSUserPictureViewController

+ (BOOL)isUserPictureSupported
{
  mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
  isMultiUser = [mEMORY[0x277D77BF8] isMultiUser];

  return isMultiUser;
}

- (CSUserPictureViewController)initWithNibName:(id)name bundle:(id)bundle
{
  v9.receiver = self;
  v9.super_class = CSUserPictureViewController;
  v4 = [(CSCoverSheetViewControllerBase *)&v9 initWithNibName:name bundle:bundle];
  if (v4)
  {
    mEMORY[0x277D77BF8] = [MEMORY[0x277D77BF8] sharedManager];
    currentUser = [mEMORY[0x277D77BF8] currentUser];
    user = v4->_user;
    v4->_user = currentUser;
  }

  return v4;
}

- (id)view
{
  v4.receiver = self;
  v4.super_class = CSUserPictureViewController;
  view = [(CSUserPictureViewController *)&v4 view];

  return view;
}

- (void)viewDidLoad
{
  view = [(CSUserPictureViewController *)self view];
  v4 = [MEMORY[0x277CBDA58] contactForUser:self->_user];
  [view setContact:v4];

  [(CSCoverSheetViewControllerBase *)self registerView:view forRole:2];
  v5.receiver = self;
  v5.super_class = CSUserPictureViewController;
  [(CSCoverSheetViewControllerBase *)&v5 viewDidLoad];
}

- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id)coordinator
{
  height = size.height;
  width = size.width;
  userPictureView = self->_userPictureView;
  coordinatorCopy = coordinator;
  [(CSUserPictureView *)userPictureView setFrame:0.0, 0.0, width, height];
  v9.receiver = self;
  v9.super_class = CSUserPictureViewController;
  [(CSCoverSheetViewControllerBase *)&v9 viewWillTransitionToSize:coordinatorCopy withTransitionCoordinator:width, height];
}

- (void)aggregateAppearance:(id)appearance
{
  v7.receiver = self;
  v7.super_class = CSUserPictureViewController;
  appearanceCopy = appearance;
  [(CSCoverSheetViewControllerBase *)&v7 aggregateAppearance:appearanceCopy];
  v4 = objc_opt_new();
  v5 = [v4 priority:{60, v7.receiver, v7.super_class}];
  v6 = [v5 style:&unk_28307A520];
  [appearanceCopy addComponent:v6];
}

- (BOOL)handleEvent:(id)event
{
  eventCopy = event;
  v10.receiver = self;
  v10.super_class = CSUserPictureViewController;
  if (-[CSCoverSheetViewControllerBase handleEvent:](&v10, sel_handleEvent_, eventCopy) && ([eventCopy isConsumable] & 1) != 0)
  {
    isConsumable = [eventCopy isConsumable];
  }

  else
  {
    if ([eventCopy type] == 1)
    {
      userPictureView = self->_userPictureView;
      activeAppearance = [(CSCoverSheetViewControllerBase *)self activeAppearance];
      legibilitySettings = [activeAppearance legibilitySettings];
      [(CSUserPictureView *)userPictureView setLegibilitySettings:legibilitySettings];
    }

    isConsumable = 0;
  }

  return isConsumable;
}

@end