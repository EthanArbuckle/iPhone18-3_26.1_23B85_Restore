@interface ProfileOverviewViewController
- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCoder:(id)coder;
- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCollectionViewLayout:(id)layout;
- (void)backButtonTapped:(id)tapped;
- (void)restoreUserActivityState:(id)state;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidLoad;
- (void)viewWillDisappear:(BOOL)disappear;
@end

@implementation ProfileOverviewViewController

- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_navigationBarTitleView) = 0;
  v4 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientView);
  type metadata accessor for ProfileGradientWithFadeView();
  *v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v4[1] = &protocol witness table for ProfileGradientWithFadeView;
  *(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI29ProfileOverviewViewController_gradientSubscriber) = 0;
  result = sub_1BA4A8018();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA17D618();
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA17E070(change);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v8.receiver = self;
  v8.super_class = type metadata accessor for ProfileOverviewViewController();
  v4 = v8.receiver;
  [(ProfileOverviewViewController *)&v8 viewWillDisappear:disappearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    navigationBar = [navigationController navigationBar];

    [navigationBar _setBackgroundOpacity_];
  }
}

- (void)scrollViewDidScroll:(id)scroll
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for ProfileOverviewViewController();
  scrollCopy = scroll;
  v5 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 scrollViewDidScroll:scrollCopy];
  sub_1BA17FD14();
}

- (void)backButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  navigationController = [(ProfileOverviewViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    v7 = [(ProfileOverviewViewController *)navigationController popViewControllerAnimated:1];

    selfCopy = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v8);
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1BA17E894(stateCopy);
}

- (_TtC18HealthExperienceUI29ProfileOverviewViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end