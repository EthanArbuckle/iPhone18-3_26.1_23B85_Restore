@interface PDFAsyncConfigurationViewController
- (_TtC18HealthExperienceUI35PDFAsyncConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)didPinchPDF:(id)f;
- (void)didTapCancel:(id)cancel;
- (void)didTapSave:(id)save;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation PDFAsyncConfigurationViewController

- (void)dealloc
{
  if (*(&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_currentTask))
  {
    selfCopy = self;

    sub_1BA4A6C98();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for PDFAsyncConfigurationViewController();
  [(PDFAsyncConfigurationViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1BA418578();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1BA418DE4();
}

- (void)didTapCancel:(id)cancel
{
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_1BA4A7BF8();
  swift_unknownObjectRelease();
  [(PDFAsyncConfigurationViewController *)selfCopy dismissViewControllerAnimated:1 completion:0];

  __swift_destroy_boxed_opaque_existential_1(&v5);
}

- (void)didTapSave:(id)save
{
  saveCopy = save;
  selfCopy = self;
  sub_1BA419254(saveCopy);
}

- (_TtC18HealthExperienceUI35PDFAsyncConfigurationViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v5 = (&self->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  v6 = v5[3];
  v7 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v8 = *(v7 + 8);
  selfCopy = self;
  v10 = v8(v6, v7);

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  v12 = PDFAsyncConfigurationViewController.tableView(_:cellForRowAt:)(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1BA4A1998();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1BA4A1918();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1BA4A18F8();
  [viewCopy deselectRowAtIndexPath:v12 animated:1];

  v13 = *(&selfCopy->super._view + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  v14 = *(&selfCopy->super._tabBarItem + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource);
  __swift_project_boxed_opaque_existential_1((&selfCopy->super.super.super.isa + OBJC_IVAR____TtC18HealthExperienceUI35PDFAsyncConfigurationViewController_configurationDataSource), v13);
  v15 = sub_1BA4A1938();
  (*(v14 + 32))(v15, v13, v14);
  sub_1BA419C08();

  (*(v7 + 8))(v9, v6);
}

- (void)didPinchPDF:(id)f
{
  fCopy = f;
  selfCopy = self;
  sub_1BA41C144(fCopy);
}

@end