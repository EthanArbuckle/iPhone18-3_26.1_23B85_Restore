@interface PDFAsyncConfigurationViewController
- (_TtC18HealthExperienceUI35PDFAsyncConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)dealloc;
- (void)didPinchPDF:(id)a3;
- (void)didTapCancel:(id)a3;
- (void)didTapSave:(id)a3;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PDFAsyncConfigurationViewController

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask))
  {
    v3 = self;

    sub_1BA4A6C98();
  }

  else
  {
    v4 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  [(PDFAsyncConfigurationViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1BA418578();
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_1BA418DE4();
}

- (void)didTapCancel:(id)a3
{
  swift_unknownObjectRetain();
  v4 = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(PDFAsyncConfigurationViewController *)v4 dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)didTapSave:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA419254(v4);
}

- (_TtC18HealthExperienceUI35PDFAsyncConfigurationViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 8);
  v9 = self;
  v10 = v8(v6, v7);

  return v10;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  v12 = PDFAsyncConfigurationViewController.tableView(_:cellForRowAt:)(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  v10 = a3;
  v11 = self;
  v12 = sub_1BA4A18F8();
  [v10 deselectRowAtIndexPath:v12 animated:1];

  v13 = *(&v11->super._view + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  v14 = *(&v11->super._tabBarItem + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  __swift_project_boxed_opaque_existential_1((&v11->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v13);
  v15 = sub_1BA4A1938();
  (*(v14 + 32))(v15, v13, v14);
  sub_1BA419C08();

  (*(v7 + 8))(v9, v6);
}

- (void)didPinchPDF:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1BA41C144(v4);
}

@end