@interface FMFLocationSharingViewController
- (FMFLocationSharingViewController)init;
- (void)viewDidLoad;
@end

@implementation FMFLocationSharingViewController

- (FMFLocationSharingViewController)init
{
  v11.receiver = self;
  v11.super_class = FMFLocationSharingViewController;
  v2 = [(FMFLocationSharingViewController *)&v11 init];
  if (v2)
  {
    gotLoadHelper_x8__OBJC_CLASS___FindMyAccountOverviewViewController(v3);
    v5 = objc_alloc_init(*(v4 + 1296));
    [(FMFLocationSharingViewController *)v2 addChildViewController:v5];
    view = [v5 view];
    view2 = [(FMFLocationSharingViewController *)v2 view];
    [view2 bounds];
    [view setFrame:?];

    view3 = [(FMFLocationSharingViewController *)v2 view];
    view4 = [v5 view];
    [view3 addSubview:view4];

    [v5 didMoveToParentViewController:v2];
  }

  return v2;
}

- (void)viewDidLoad
{
  v6.receiver = self;
  v6.super_class = FMFLocationSharingViewController;
  [(FMFLocationSharingViewController *)&v6 viewDidLoad];
  v3 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v4 = [v3 localizedStringForKey:@"APP_NAME_TITLE" value:&stru_285D99658 table:@"LocalizableUI"];
  navigationItem = [(FMFLocationSharingViewController *)self navigationItem];
  [navigationItem setTitle:v4];
}

@end