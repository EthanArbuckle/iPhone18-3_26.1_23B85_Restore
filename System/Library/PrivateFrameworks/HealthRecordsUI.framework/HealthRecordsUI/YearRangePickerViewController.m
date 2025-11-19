@interface YearRangePickerViewController
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithStyle:(int64_t)a3;
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithUsingInsetStyling:(BOOL)a3;
- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation YearRangePickerViewController

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithCoder:(id)a3
{
  v3 = (&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_defaultCellIdentifier);
  *v3 = 1819043139;
  v3[1] = 0xE400000000000000;
  *(&self->super.super.super.super._responderFlags + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D1252134();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (*(&self->super.super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI29YearRangePickerViewController_selectedRow))
  {
    return 3;
  }

  else
  {
    return 2;
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
  v12 = sub_1D1252390(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v10 = a3;
  v11 = self;
  sub_1D1252944(v10);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)a3 heightForRowAtIndexPath:(id)a4
{
  v4 = sub_1D138D82C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  v8 = sub_1D138D7FC();
  if (v8 > 1)
  {
    v10 = v8;
    (*(v5 + 8))(v7, v4);
    if (v10 == 2)
    {
      return 150.0;
    }

    else
    {
      return 0.0;
    }
  }

  else
  {
    v9 = *MEMORY[0x1E69DE3D0];
    (*(v5 + 8))(v7, v4);
  }

  return v9;
}

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithUsingInsetStyling:(BOOL)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end