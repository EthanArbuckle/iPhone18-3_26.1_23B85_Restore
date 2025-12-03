@interface NDOAppleCareViewController
- (NDOAppleCareFlowDelegate)presentor;
- (NDOAppleCareViewController)initWithCoder:(id)coder;
- (NDOAppleCareViewController)initWithDeviceInfo:(id)info presentationType:(unint64_t)type;
- (NDOAppleCareViewController)initWithDeviceInfo:(id)info presentationType:(unint64_t)type source:(id)source deeplinkParams:(id)params;
- (NDOAppleCareViewController)initWithNibName:(id)name bundle:(id)bundle;
- (NDOAppleCareViewController)initWithWarranty:(id)warranty;
- (NDOAppleCareViewController)initWithWarranty:(id)warranty presentationType:(unint64_t)type;
- (NDOAppleCareViewController)initWithWarranty:(id)warranty presentationType:(unint64_t)type serialNumber:(id)number;
- (NSString)urlString;
- (unint64_t)supportedInterfaceOrientations;
- (void)loadView;
- (void)setUrlString:(id)string;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
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

- (void)setUrlString:(id)string
{
  if (string)
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

- (NDOAppleCareViewController)initWithDeviceInfo:(id)info presentationType:(unint64_t)type
{
  infoCopy = info;
  v5 = sub_25BDBFBA8(infoCopy);

  return v5;
}

- (NDOAppleCareViewController)initWithDeviceInfo:(id)info presentationType:(unint64_t)type source:(id)source deeplinkParams:(id)params
{
  v8 = sub_25BDDFE48();
  v10 = v9;
  if (params)
  {
    sub_25BDDFE48();
  }

  infoCopy = info;
  v12 = sub_25BDBFE20(infoCopy, v8, v10);

  return v12;
}

- (NDOAppleCareViewController)initWithWarranty:(id)warranty
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

- (NDOAppleCareViewController)initWithWarranty:(id)warranty presentationType:(unint64_t)type
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

- (NDOAppleCareViewController)initWithWarranty:(id)warranty presentationType:(unint64_t)type serialNumber:(id)number
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

- (NDOAppleCareViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  NDOAppleCareViewController.loadView()();
}

- (void)viewDidLoad
{
  selfCopy = self;
  NDOAppleCareViewController.viewDidLoad()();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  NDOAppleCareViewController.viewWillAppear(_:)(appear);
}

- (NDOAppleCareViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end