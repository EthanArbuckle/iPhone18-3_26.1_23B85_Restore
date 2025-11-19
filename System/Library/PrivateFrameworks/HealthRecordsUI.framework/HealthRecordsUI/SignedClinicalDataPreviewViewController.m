@interface SignedClinicalDataPreviewViewController
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5;
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5;
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6;
- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4;
- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (void)addRecords;
- (void)dismissAnimated:(id)a3;
- (void)dismissPreview;
- (void)learnMoreButtonTapped:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation SignedClinicalDataPreviewViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D12DA3FC();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_1D12DABFC(a3);
}

- (void)addRecords
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton);
  if (v2)
  {
    v3 = self;
    [v2 showsBusyIndicator];
    v4 = swift_allocObject();
    *(v4 + 16) = v3;
    v5 = v3;
    sub_1D1230504(sub_1D12DDC1C, v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)dismissPreview
{
  v2 = self;
  sub_1D12DB4BC();
}

- (void)learnMoreButtonTapped:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_1D12DBAE8();

  sub_1D1096BE0(v6);
}

- (void)dismissAnimated:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    v5 = self;
  }

  [(SignedClinicalDataPreviewViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_1D1096BE0(&v6);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = (*(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_handler))[3];
  if (v3 >> 62)
  {
    return sub_1D13910DC();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  v12 = sub_1D12DBF9C(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4)
  {
    v5 = 0;
  }

  else
  {
    v8 = qword_1EC608CD0;
    v9 = a3;
    v10 = self;
    if (v8 != -1)
    {
      swift_once();
    }

    sub_1D138D1CC();

    v11 = sub_1D139012C();

    v5 = v11;
  }

  return v5;
}

- (double)tableView:(id)a3 estimatedHeightForRowAtIndexPath:(id)a4
{
  v4 = sub_1D138D82C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v8 = *MEMORY[0x1E69DE3D0];
  (*(v5 + 8))(v7, v4);
  return v8;
}

- (double)tableView:(id)a3 heightForHeaderInSection:(int64_t)a4
{
  result = *MEMORY[0x1E69DE3D0];
  if (!a4)
  {
    return 10.0;
  }

  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 symbolName:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)a3 detailText:(id)a4 icon:(id)a5 adoptTableViewScrollView:(BOOL)a6
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end