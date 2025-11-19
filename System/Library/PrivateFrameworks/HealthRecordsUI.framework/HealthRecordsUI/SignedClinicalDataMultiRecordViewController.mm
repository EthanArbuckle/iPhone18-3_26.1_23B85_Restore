@interface SignedClinicalDataMultiRecordViewController
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithStyle:(int64_t)a3;
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithUsingInsetStyling:(BOOL)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)viewDidLoad;
@end

@implementation SignedClinicalDataMultiRecordViewController

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithCoder:(id)a3
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D1086F48();
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v4 = OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_displayGroups;
  swift_beginAccess();
  v5 = *(&self->super.super.super.super.super.isa + v4);
  if (v5 >> 62)
  {
    return sub_1D13910DC();
  }

  else
  {
    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_displayGroups;
  result = swift_beginAccess();
  v8 = *(&self->super.super.super.super.super.isa + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    v13 = self;

    v11 = MEMORY[0x1D3886B70](a4, v8);

    goto LABEL_5;
  }

  if (a4 < 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a4)
  {
    v9 = *(v8 + 8 * a4 + 32);
    v10 = self;
    v11 = v9;
LABEL_5:
    v12 = [v11 numberOfDisplayItems];

    return v12;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  sub_1D1087C78(v10);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithUsingInsetStyling:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end