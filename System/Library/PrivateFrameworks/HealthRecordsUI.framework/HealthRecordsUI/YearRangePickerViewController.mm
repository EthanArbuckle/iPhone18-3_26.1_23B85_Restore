@interface YearRangePickerViewController
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithStyle:(int64_t)style;
- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithUsingInsetStyling:(BOOL)styling;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation YearRangePickerViewController

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1D1252134();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D1252390(viewCopy);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  sub_1D1252944(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
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

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithUsingInsetStyling:(BOOL)styling
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI29YearRangePickerViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end