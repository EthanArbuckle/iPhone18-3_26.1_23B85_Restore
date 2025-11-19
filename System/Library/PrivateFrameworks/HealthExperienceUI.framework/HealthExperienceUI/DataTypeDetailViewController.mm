@interface DataTypeDetailViewController
- (NSString)description;
- (_TtC18HealthExperienceUI28DataTypeDetailViewController)initWithCollectionViewLayout:(id)a3;
- (void)addDataKeyCommandFired;
- (void)addDataTapped:(id)a3;
- (void)onInternalSettingsGesture;
- (void)restoreUserActivityState:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)shareButtonTapped:(id)a3;
- (void)ttrButtonTapped;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewIsAppearing:(BOOL)a3;
@end

@implementation DataTypeDetailViewController

- (void)addDataTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  (*((*MEMORY[0x1E69E7D40] & v4->super.super.super.super.super.isa) + 0x268))(1);

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)addDataKeyCommandFired
{
  v2 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.super.super.isa) + 0x268);
  v3 = self;
  v2(1);
}

- (void)shareButtonTapped:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(v4 + v5, v8);
  v6 = v9;
  v7 = v10;
  __swift_project_boxed_opaque_existential_1(v8, v9);
  (*(v7 + 80))(v4, v6, v7);

  __swift_destroy_boxed_opaque_existential_1(v11);
  __swift_destroy_boxed_opaque_existential_1(v8);
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA32927C();
}

- (void)viewIsAppearing:(BOOL)a3
{
  v4 = self;
  sub_1BA329460(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = type metadata accessor for DataTypeDetailViewController();
  v4 = v5.receiver;
  [(CompoundDataSourceCollectionViewController *)&v5 viewDidAppear:v3];
  [v4 becomeFirstResponder];
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA32ADF4();
}

- (void)restoreUserActivityState:(id)a3
{
  v5 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(self + v5, v12);
  v6 = v13;
  v7 = v14;
  __swift_project_boxed_opaque_existential_1(v12, v13);
  v8 = *(v7 + 48);
  v9 = a3;
  v10 = self;
  LOBYTE(self) = v8(v9, v10, v6, v7);
  __swift_destroy_boxed_opaque_existential_1(v12);
  if ((self & 1) == 0)
  {
    v11.receiver = v10;
    v11.super_class = type metadata accessor for DataTypeDetailViewController();
    [(DataTypeDetailViewController *)&v11 restoreUserActivityState:v9];
  }
}

- (_TtC18HealthExperienceUI28DataTypeDetailViewController)initWithCollectionViewLayout:(id)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)onInternalSettingsGesture
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(self + v3, v7);
  v4 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = *(v4 + 64);
  v6 = self;
  v5();

  __swift_destroy_boxed_opaque_existential_1(v7);
}

- (NSString)description
{
  v2 = self;
  DataTypeDetailViewController.description.getter();

  v3 = sub_1BA4A6758();

  return v3;
}

- (void)ttrButtonTapped
{
  v3 = OBJC_IVAR____TtC18HealthExperienceUI28DataTypeDetailViewController_viewModel;
  swift_beginAccess();
  sub_1B9F0A534(self + v3, v7);
  v4 = v7[4];
  __swift_project_boxed_opaque_existential_1(v7, v7[3]);
  v5 = *(v4 + 40);
  v6 = self;
  v5();

  __swift_destroy_boxed_opaque_existential_1(v7);
}

@end