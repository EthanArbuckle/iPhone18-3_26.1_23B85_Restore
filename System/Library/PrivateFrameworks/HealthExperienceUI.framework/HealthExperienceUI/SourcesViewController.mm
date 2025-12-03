@interface SourcesViewController
- (_TtC18HealthExperienceUI21SourcesViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI21SourcesViewController)initWithCollectionViewLayout:(id)layout;
- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path;
- (void)viewControllerDidLeaveAdaptiveModal;
- (void)viewControllerWillEnterAdaptiveModal;
- (void)viewDidLoad;
@end

@implementation SourcesViewController

- (_TtC18HealthExperienceUI21SourcesViewController)initWithCoder:(id)coder
{
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA0A8140();
}

- (void)collectionView:(id)view didSelectItemAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  sub_1BA0A8E48(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC18HealthExperienceUI21SourcesViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewControllerWillEnterAdaptiveModal
{
  selfCopy = self;
  SourcesViewController.viewControllerWillEnterAdaptiveModal()();
}

- (void)viewControllerDidLeaveAdaptiveModal
{
  selfCopy = self;
  navigationItem = [(SourcesViewController *)selfCopy navigationItem];
  [navigationItem setLeftBarButtonItem_];
}

@end