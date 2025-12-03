@interface AccountSelectionViewController
- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithCoder:(id)coder;
- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
@end

@implementation AccountSelectionViewController

- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithCoder:(id)coder
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
  selfCopy = self;
  sub_1D10AA070();
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
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

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D138D82C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  viewCopy = view;
  selfCopy = self;
  v12 = sub_1D10AB218(viewCopy, v9);

  (*(v7 + 8))(v9, v6);

  return v12;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v7 = sub_1D10AC16C(viewCopy);

  return v7;
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
  sub_1D10ABC38(viewCopy);

  (*(v7 + 8))(v9, v6);
}

- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI30AccountSelectionViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end