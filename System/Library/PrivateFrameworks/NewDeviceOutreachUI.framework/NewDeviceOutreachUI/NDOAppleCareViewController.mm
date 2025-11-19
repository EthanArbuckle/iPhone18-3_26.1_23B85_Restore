@interface NDOAppleCareViewController
- (NDOAppleCareFlowDelegate)presentor;
- (NDOAppleCareViewController)initWithCoder:(id)a3;
- (NDOAppleCareViewController)initWithDeviceInfo:(id)a3 presentationType:(unint64_t)a4;
- (NDOAppleCareViewController)initWithDeviceInfo:(id)a3 presentationType:(unint64_t)a4 source:(id)a5 deeplinkParams:(id)a6;
- (NDOAppleCareViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (NDOAppleCareViewController)initWithWarranty:(id)a3;
- (NDOAppleCareViewController)initWithWarranty:(id)a3 presentationType:(unint64_t)a4;
- (NDOAppleCareViewController)initWithWarranty:(id)a3 presentationType:(unint64_t)a4 serialNumber:(id)a5;
- (NSString)urlString;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)setUrlString:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation NDOAppleCareViewController

- (NDOAppleCareFlowDelegate)presentor
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();

  return Strong;
}

- (NSString)urlString
{
  if (*(self + OBJC_IVAR___NDOAppleCareViewController_urlString + 8))
  {
    v2 = *(self + OBJC_IVAR___NDOAppleCareViewController_urlString);
    v3 = *(self + OBJC_IVAR___NDOAppleCareViewController_urlString + 8);

    v4 = sub_25BDDFE38();
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

- (void)setUrlString:(id)a3
{
  if (a3)
  {
    v4 = sub_25BDDFE48();
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  v6 = (self + OBJC_IVAR___NDOAppleCareViewController_urlString);
  v7 = *(self + OBJC_IVAR___NDOAppleCareViewController_urlString + 8);
  *v6 = v4;
  v6[1] = v5;
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

- (NDOAppleCareViewController)initWithDeviceInfo:(id)a3 presentationType:(unint64_t)a4
{
  v4 = a3;
  v5 = sub_25BDBFBA8(v4);

  return v5;
}

- (NDOAppleCareViewController)initWithDeviceInfo:(id)a3 presentationType:(unint64_t)a4 source:(id)a5 deeplinkParams:(id)a6
{
  v8 = sub_25BDDFE48();
  v10 = v9;
  if (a6)
  {
    sub_25BDDFE48();
  }

  v11 = a3;
  v12 = sub_25BDBFE20(v11, v8, v10);

  return v12;
}

- (NDOAppleCareViewController)initWithWarranty:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR___NDOAppleCareViewController_source);
  *v4 = 0x4174726F70707553;
  v4[1] = 0xEA00000000007070;
  v5 = (self + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v5 = 0;
  v5[1] = 0;
  result = sub_25BDE0158();
  __break(1u);
  return result;
}

- (NDOAppleCareViewController)initWithWarranty:(id)a3 presentationType:(unint64_t)a4
{
  swift_unknownObjectWeakInit();
  v5 = (self + OBJC_IVAR___NDOAppleCareViewController_source);
  *v5 = 0x4174726F70707553;
  v5[1] = 0xEA00000000007070;
  v6 = (self + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v6 = 0;
  v6[1] = 0;
  result = sub_25BDE0158();
  __break(1u);
  return result;
}

- (NDOAppleCareViewController)initWithWarranty:(id)a3 presentationType:(unint64_t)a4 serialNumber:(id)a5
{
  swift_unknownObjectWeakInit();
  v6 = (self + OBJC_IVAR___NDOAppleCareViewController_source);
  *v6 = 0x4174726F70707553;
  v6[1] = 0xEA00000000007070;
  v7 = (self + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v7 = 0;
  v7[1] = 0;
  result = sub_25BDE0158();
  __break(1u);
  return result;
}

- (NDOAppleCareViewController)initWithCoder:(id)a3
{
  swift_unknownObjectWeakInit();
  v4 = (self + OBJC_IVAR___NDOAppleCareViewController_source);
  *v4 = 0x4174726F70707553;
  v4[1] = 0xEA00000000007070;
  v5 = (self + OBJC_IVAR___NDOAppleCareViewController_urlString);
  *v5 = 0;
  v5[1] = 0;
  result = sub_25BDE0158();
  __break(1u);
  return result;
}

- (void)loadView
{
  v2 = self;
  NDOAppleCareViewController.loadView()();
}

- (void)viewDidLoad
{
  v2 = self;
  NDOAppleCareViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  NDOAppleCareViewController.viewWillAppear(_:)(a3);
}

- (NDOAppleCareViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end