@interface SignedClinicalDataPreviewViewController
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon;
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view;
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name;
- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view;
- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path;
- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)addRecords;
- (void)dismissAnimated:(id)animated;
- (void)dismissPreview;
- (void)learnMoreButtonTapped:(id)tapped;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation SignedClinicalDataPreviewViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D12DA3FC();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D12DABFC(appear);
}

- (void)addRecords
{
  v2 = *(&self->super.super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController_addToHealthButton);
  if (v2)
  {
    selfCopy = self;
    [v2 showsBusyIndicator];
    v4 = swift_allocObject();
    *(v4 + 16) = selfCopy;
    v5 = selfCopy;
    sub_1D1230504(sub_1D12DDC1C, v4);
  }

  else
  {
    __break(1u);
  }
}

- (void)dismissPreview
{
  selfCopy = self;
  sub_1D12DB4BC();
}

- (void)learnMoreButtonTapped:(id)tapped
{
  if (tapped)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_1D12DBAE8();

  sub_1D1096BE0(v6);
}

- (void)dismissAnimated:(id)animated
{
  if (animated)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_1D139101C();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
    selfCopy2 = self;
  }

  [(SignedClinicalDataPreviewViewController *)self dismissViewControllerAnimated:1 completion:0, v6, v7];

  sub_1D1096BE0(&v6);
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D12DBF9C(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section)
  {
    v5 = 0;
  }

  else
  {
    v8 = qword_1EC608CD0;
    viewCopy = view;
    selfCopy = self;
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

- (double)tableView:(id)view estimatedHeightForRowAtIndexPath:(id)path
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

- (double)tableView:(id)view heightForHeaderInSection:(int64_t)section
{
  result = *MEMORY[0x1E69DE3D0];
  if (!section)
  {
    return 10.0;
  }

  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text symbolName:(id)name adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI39SignedClinicalDataPreviewViewController)initWithTitle:(id)title detailText:(id)text icon:(id)icon adoptTableViewScrollView:(BOOL)view
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end