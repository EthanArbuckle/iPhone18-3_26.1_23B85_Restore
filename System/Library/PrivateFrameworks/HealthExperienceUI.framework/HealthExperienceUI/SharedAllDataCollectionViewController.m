@interface SharedAllDataCollectionViewController
- (_TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C437SharedAllDataCollectionViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C437SharedAllDataCollectionViewController)initWithCollectionViewLayout:(id)a3;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation SharedAllDataCollectionViewController

- (_TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C437SharedAllDataCollectionViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA139218();
}

- (void)viewControllerWillEnterAdaptiveModal
{
  v2 = self;
  sub_1BA139450();
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v3 = self;
  v2 = [(SharedAllDataCollectionViewController *)v3 navigationItem];
  [v2 setLeftBarButtonItem_];
}

- (_TtC18HealthExperienceUIP33_32BBCFBB356028961E4520309C3A50C437SharedAllDataCollectionViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end