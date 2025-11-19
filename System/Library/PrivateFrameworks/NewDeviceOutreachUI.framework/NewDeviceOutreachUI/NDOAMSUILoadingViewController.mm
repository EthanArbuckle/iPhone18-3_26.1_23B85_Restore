@interface NDOAMSUILoadingViewController
- (NDOAMSUILoadingViewController)initWithCoder:(id)a3;
- (NDOAMSUILoadingViewController)initWithCreateAMSViewController:(id)a3;
- (NDOAMSUILoadingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NDOAppleCareAMSUIViewPresenterProtocol)presenter;
- (id)createAMSViewController;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)setAmsViewController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NDOAMSUILoadingViewController

- (void)setAmsViewController:(id)a3
{
  v4 = *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController);
  *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = a3;
  v3 = a3;
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
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3 == 1)
  {
    return 30;
  }

  else
  {
    return 2;
  }
}

- (NDOAMSUILoadingViewController)initWithCreateAMSViewController:(id)a3
{
  v4 = _Block_copy(a3);
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

- (NDOAMSUILoadingViewController)initWithCoder:(id)a3
{
  *(self + OBJC_IVAR___NDOAMSUILoadingViewController_amsViewController) = 0;
  swift_unknownObjectWeakInit();
  result = sub_25BDE0158();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  NDOAMSUILoadingViewController.loadView()();
}

- (void)viewDidLoad
{
  v3.receiver = self;
  v3.super_class = NDOAMSUILoadingViewController;
  v2 = self;
  [(NDOAMSUILoadingViewController *)&v3 viewDidLoad];
  sub_25BDB6DD0();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  NDOAMSUILoadingViewController.viewWillAppear(_:)(a3);
}

- (NDOAMSUILoadingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end