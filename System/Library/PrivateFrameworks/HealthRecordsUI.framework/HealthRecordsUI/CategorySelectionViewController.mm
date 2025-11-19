@interface CategorySelectionViewController
- (_TtC15HealthRecordsUI31CategorySelectionViewController)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI31CategorySelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15HealthRecordsUI31CategorySelectionViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation CategorySelectionViewController

- (_TtC15HealthRecordsUI31CategorySelectionViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC15HealthRecordsUI31CategorySelectionViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D1081A60();
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
  v12 = sub_1D1081C24(v10);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1D10829F0(v5);

  return v7;
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
  sub_1D1082418(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC15HealthRecordsUI31CategorySelectionViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI31CategorySelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end