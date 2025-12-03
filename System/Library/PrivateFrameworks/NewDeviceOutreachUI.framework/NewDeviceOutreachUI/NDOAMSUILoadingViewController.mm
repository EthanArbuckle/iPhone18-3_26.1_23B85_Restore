@interface NDOAMSUILoadingViewController
- (NDOAMSUILoadingViewController)initWithCoder:(id)coder;
- (NDOAMSUILoadingViewController)initWithCreateAMSViewController:(id)controller;
- (NDOAMSUILoadingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NDOAppleCareAMSUIViewPresenterProtocol)presenter;
- (id)createAMSViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)setAmsViewController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation NDOAMSUILoadingViewController

- (void)setAmsViewController:(id)controller
{
  v4 = *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController);
  *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = controller;
  controllerCopy = controller;
}

- (id)createAMSViewController
{
  v2 = *(self + OBJC_IVAR___NDOAMSUILoadingViewController_createAMSViewController + 8);
  v5[4] = *(self + OBJC_IVAR___NDOAMSUILoadingViewController_createAMSViewController);
  v5[5] = v2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 1107296256;
  v5[2] = sub_25BDA6394;
  v5[3] = &block_descriptor_10;
  v3 = _Block_copy(v5);

  return v3;
}

- (NDOAppleCareAMSUIViewPresenterProtocol)presenter
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (NDOAMSUILoadingViewController)initWithCreateAMSViewController:(id)controller
{
  v4 = _Block_copy(controller);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = 0;
  swift_unknownObjectWeakInit();
  v6 = (self + OBJC_IVAR___NDOAMSUILoadingViewController_createAMSViewController);
  *v6 = sub_25BDB79E8;
  v6[1] = v5;
  v8.receiver = self;
  v8.super_class = NDOAMSUILoadingViewController;
  return [(NDOAMSUILoadingViewController *)&v8 initWithNibName:0 bundle:0];
}

- (NDOAMSUILoadingViewController)initWithCoder:(id)coder
{
  *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = 0;
  swift_unknownObjectWeakInit();
  result = sub_25BDE0158();
  __break(1u);
  return result;
}

- (void)loadView
{
  selfCopy = self;
  NDOAMSUILoadingViewController.loadView()();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NDOAMSUILoadingViewController;
  selfCopy = self;
  [(NDOAMSUILoadingViewController *)&v3 viewDidLoad];
  sub_25BDB6DD0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  NDOAMSUILoadingViewController.viewWillAppear(_:)(appear);
}

- (NDOAMSUILoadingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end