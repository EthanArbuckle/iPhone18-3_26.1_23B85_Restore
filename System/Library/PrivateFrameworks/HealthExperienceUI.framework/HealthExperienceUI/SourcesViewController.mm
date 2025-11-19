@interface SourcesViewController
- (_TtC18HealthExperienceUI21SourcesViewController)initWithCoder:(id)a3;
- (_TtC18HealthExperienceUI21SourcesViewController)initWithCollectionViewLayout:(id)a3;
- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation SourcesViewController

- (_TtC18HealthExperienceUI21SourcesViewController)initWithCoder:(id)a3
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA0A8140();
}

- (void)collectionView:(id)a3 didSelectItemAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  sub_1BA0A8E48(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18HealthExperienceUI21SourcesViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  v2 = self;
  SourcesViewController.viewControllerWillEnterAdaptiveModal()();
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  v3 = self;
  v2 = [(SourcesViewController *)v3 navigationItem];
  [v2 setLeftBarButtonItem_];
}

@end