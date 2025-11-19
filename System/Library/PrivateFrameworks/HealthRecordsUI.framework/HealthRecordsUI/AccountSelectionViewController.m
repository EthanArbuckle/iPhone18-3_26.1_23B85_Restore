@interface AccountSelectionViewController
- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithCoder:(id)a3;
- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithStyle:(int64_t)a3;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
@end

@implementation AccountSelectionViewController

- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithCoder:(id)a3
{
  v3 = self + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_preferredSize;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 1;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_accountIcons) = 0;
  *(&self->super.super.super._responderFlags + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_delegate) = 0;
  swift_unknownObjectWeakInit();
  result = sub_1D13913BC();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D10AA070();
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v4 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI30AccountSelectionViewController_allAccounts);
  if (v4 >> 62)
  {
    return sub_1D13910DC();
  }

  else
  {
    return *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
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
  v12 = sub_1D10AB218(v10, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1D10AC16C(v5);

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
  sub_1D10ABC38(v10);

  (*(v7 + 8))(v9, v6);
}

- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithStyle:(int64_t)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end