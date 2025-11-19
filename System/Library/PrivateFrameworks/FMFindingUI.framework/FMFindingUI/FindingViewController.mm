@interface FindingViewController
- (NSString)description;
- (_TtC11FMFindingUI21FindingViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FindingViewController

- (NSString)description
{
  v2 = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_24A510414();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_24A510890(a3);
}

- (unint64_t)supportedInterfaceOrientations
{
  v2 = [objc_opt_self() currentDevice];
  v3 = [v2 userInterfaceIdiom];

  if (v3)
  {
    return 2;
  }

  else
  {
    return 26;
  }
}

- (_TtC11FMFindingUI21FindingViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end