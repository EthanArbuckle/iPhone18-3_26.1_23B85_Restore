@interface CKModernSettingsViewController
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation CKModernSettingsViewController

- (void)viewDidLoad
{
  v9.receiver = self;
  v9.super_class = CKModernSettingsViewController;
  [(CKModernSettingsViewController *)&v9 viewDidLoad];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2050000000;
  v3 = getCKSettingsHostingViewControllerClass_softClass;
  v14 = getCKSettingsHostingViewControllerClass_softClass;
  if (!getCKSettingsHostingViewControllerClass_softClass)
  {
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 3221225472;
    v10[2] = __getCKSettingsHostingViewControllerClass_block_invoke;
    v10[3] = &unk_278DE87E0;
    v10[4] = &v11;
    __getCKSettingsHostingViewControllerClass_block_invoke(v10);
    v3 = v12[3];
  }

  v4 = v3;
  _Block_object_dispose(&v11, 8);
  if (v3)
  {
    v5 = objc_alloc_init(v3);
    [(CKModernSettingsViewController *)self addChildViewController:v5];
    view = [(CKModernSettingsViewController *)self view];
    view2 = [(UIViewController *)v5 view];
    [view addSubview:view2];

    [(UIViewController *)v5 didMoveToParentViewController:self];
    settingsViewController = self->_settingsViewController;
    self->_settingsViewController = v5;
  }
}

- (void)viewDidLayoutSubviews
{
  v13.receiver = self;
  v13.super_class = CKModernSettingsViewController;
  [(CKModernSettingsViewController *)&v13 viewDidLayoutSubviews];
  view = [(CKModernSettingsViewController *)self view];
  [view bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  view2 = [(UIViewController *)self->_settingsViewController view];
  [view2 setFrame:{v5, v7, v9, v11}];
}

@end