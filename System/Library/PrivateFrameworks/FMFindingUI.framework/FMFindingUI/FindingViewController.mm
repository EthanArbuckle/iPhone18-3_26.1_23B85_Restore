@interface FindingViewController
- (NSString)description;
- (_TtC11FMFindingUI21FindingViewController)initWithNibName:(id)name bundle:(id)bundle;
- (unint64_t)supportedInterfaceOrientations;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FindingViewController

- (NSString)description
{
  selfCopy = self;
  sub_24A5100E8();

  v3 = sub_24A62EBE4();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_24A510414();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_24A510890(appear);
}

- (unint64_t)supportedInterfaceOrientations
{
  currentDevice = [objc_opt_self() currentDevice];
  userInterfaceIdiom = [currentDevice userInterfaceIdiom];

  if (userInterfaceIdiom)
  {
    return 2;
  }

  else
  {
    return 26;
  }
}

- (_TtC11FMFindingUI21FindingViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end