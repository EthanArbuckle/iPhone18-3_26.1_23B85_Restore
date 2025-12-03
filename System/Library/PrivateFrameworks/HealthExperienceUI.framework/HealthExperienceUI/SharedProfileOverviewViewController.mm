@interface SharedProfileOverviewViewController
- (_TtC18HealthExperienceUI35SharedProfileOverviewViewController)initWithCollectionViewLayout:(id)layout;
- (void)backButtonTapped:(id)tapped;
- (void)optionsButtonTapped:(id)tapped;
- (void)restoreUserActivityState:(id)state;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)ttrButtonTapped;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)appearing;
- (void)viewWillLayoutSubviews;
@end

@implementation SharedProfileOverviewViewController

- (void)viewIsAppearing:(BOOL)appearing
{
  appearingCopy = appearing;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  swift_beginAccess();
  v7 = *(&self->super.super.super.super.super.isa + v6);
  selfCopy = self;
  sub_1BA4A71E8();
  v11 = v7;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v9 = type metadata accessor for SharedProfileOverviewViewController();
  v10.receiver = selfCopy;
  v10.super_class = v9;
  [(CompoundDataSourceCollectionViewController *)&v10 viewIsAppearing:appearingCopy];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA1E6588();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1BA1E67C4();
}

- (void)backButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  navigationController = [(SharedProfileOverviewViewController *)selfCopy navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    v7 = [(SharedProfileOverviewViewController *)navigationController popViewControllerAnimated:1];

    selfCopy = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v8);
}

- (void)traitCollectionDidChange:(id)change
{
  changeCopy = change;
  selfCopy = self;
  sub_1BA1E6A20(change);
}

- (void)scrollViewDidScroll:(id)scroll
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SharedProfileOverviewViewController();
  scrollCopy = scroll;
  v5 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 scrollViewDidScroll:scrollCopy];
  sub_1BA17FF78();
}

- (void)restoreUserActivityState:(id)state
{
  stateCopy = state;
  selfCopy = self;
  sub_1BA1E7298(stateCopy);
}

- (_TtC18HealthExperienceUI35SharedProfileOverviewViewController)initWithCollectionViewLayout:(id)layout
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)optionsButtonTapped:(id)tapped
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA1E8200();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)ttrButtonTapped
{
  selfCopy = self;
  SharedProfileOverviewViewController.ttrButtonTapped()();
}

@end