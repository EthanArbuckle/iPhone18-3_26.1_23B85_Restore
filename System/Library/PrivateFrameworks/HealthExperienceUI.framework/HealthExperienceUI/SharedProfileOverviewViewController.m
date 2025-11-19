@interface SharedProfileOverviewViewController
- (_TtC18HealthExperienceUI35SharedProfileOverviewViewController)initWithCollectionViewLayout:(id)a3;
- (void)backButtonTapped:(id)a3;
- (void)optionsButtonTapped:(id)a3;
- (void)restoreUserActivityState:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)ttrButtonTapped;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation SharedProfileOverviewViewController

- (void)viewIsAppearing:(BOOL)a3
{
  v3 = a3;
  v5 = sub_1BA4A4018();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OBJC_IVAR____TtC18HealthExperienceUI35SharedProfileOverviewViewController_providedPresentation;
  swift_beginAccess();
  v7 = *(&self->super.super.super.super.super.isa + v6);
  v8 = self;
  sub_1BA4A71E8();
  v11 = v7;
  sub_1B9F3AEE8();
  sub_1BA4A4008();
  sub_1BA4A71F8();
  v9 = type metadata accessor for SharedProfileOverviewViewController();
  v10.receiver = v8;
  v10.super_class = v9;
  [(CompoundDataSourceCollectionViewController *)&v10 viewIsAppearing:v3];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA1E6588();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_1BA1E67C4();
}

- (void)backButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v5 = [(SharedProfileOverviewViewController *)v4 navigationController];
  if (v5)
  {
    v6 = v5;
    v7 = [(SharedProfileOverviewViewController *)v5 popViewControllerAnimated:1];

    v4 = v6;
  }

  __swift_destroy_boxed_opaque_existential_1(&v8);
}

- (void)traitCollectionDidChange:(id)a3
{
  v5 = a3;
  v6 = self;
  sub_1BA1E6A20(a3);
}

- (void)scrollViewDidScroll:(id)a3
{
  v6.receiver = self;
  v6.super_class = type metadata accessor for SharedProfileOverviewViewController();
  v4 = a3;
  v5 = v6.receiver;
  [(CompoundDataSourceCollectionViewController *)&v6 scrollViewDidScroll:v4];
  sub_1BA17FF78();
}

- (void)restoreUserActivityState:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA1E7298(v4);
}

- (_TtC18HealthExperienceUI35SharedProfileOverviewViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)optionsButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  sub_1BA1E8200();

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)ttrButtonTapped
{
  v2 = self;
  SharedProfileOverviewViewController.ttrButtonTapped()();
}

@end