@interface SignedClinicalDataMultiRecordViewController
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithStyle:(int64_t)style;
- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithUsingInsetStyling:(BOOL)styling;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
@end

@implementation SignedClinicalDataMultiRecordViewController

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithCoder:(id)coder
{
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D1086F48();
}

- (int64_t)numberOfSectionsInTableView:(id)view
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

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  v6 = OBJC_IVAR____TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController_displayGroups;
  result = swift_beginAccess();
  v8 = *(&self->super.super.super.super.super.isa + v6);
  if ((v8 & 0xC000000000000001) != 0)
  {
    selfCopy = self;

    v11 = MEMORY[0x1D3886B70](section, v8);

    goto LABEL_5;
  }

  if (section < 0)
  {
    __break(1u);
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > section)
  {
    v9 = *(v8 + 8 * section + 32);
    selfCopy2 = self;
    v11 = v9;
LABEL_5:
    numberOfDisplayItems = [v11 numberOfDisplayItems];

    return numberOfDisplayItems;
  }

  __break(1u);
  return result;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  sub_1D1087C78(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI43SignedClinicalDataMultiRecordViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end