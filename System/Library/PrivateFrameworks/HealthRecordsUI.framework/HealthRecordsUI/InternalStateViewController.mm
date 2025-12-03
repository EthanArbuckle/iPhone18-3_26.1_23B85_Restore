@interface InternalStateViewController
- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path;
- (_TtC15HealthRecordsUI27InternalStateViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC15HealthRecordsUI27InternalStateViewController)initWithStyle:(int64_t)style;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation InternalStateViewController

- (void)dealloc
{
  v2 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_dataProvider);
  selfCopy = self;
  v4 = v2;
  sub_1D11E2A34(0, 0);

  v5.receiver = selfCopy;
  v5.super_class = type metadata accessor for InternalStateViewController();
  [(InternalStateViewController *)&v5 dealloc];
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D10D67C0();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_1D10D690C(appear);
}

- (_TtC15HealthRecordsUI27InternalStateViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC15HealthRecordsUI27InternalStateViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = *(&self->super.super.super.super.isa + OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections);
  if (v3 >> 62)
  {
    return sub_1D13910DC();
  }

  else
  {
    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  selfCopy = self;
  v5 = *(self + OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections);
  if ((v5 & 0xC000000000000001) != 0)
  {
    selfCopy2 = self;

    v6 = MEMORY[0x1D3886B70](section, v5);

LABEL_5:
    v8 = *(v6 + 32);
    if (!(v8 >> 62))
    {
      v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_7:

      return v9;
    }

LABEL_10:
    v9 = sub_1D13910DC();
    goto LABEL_7;
  }

  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) > section)
  {
    v6 = *(v5 + 8 * section + 32);
    selfCopy3 = self;

    goto LABEL_5;
  }

  __break(1u);
  return self;
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
  sub_1D10D74E4(viewCopy);
  v13 = v12;

  (*(v7 + 8))(v9, v6);

  return v13;
}

- (BOOL)tableView:(id)view shouldHighlightRowAtIndexPath:(id)path
{
  v4 = sub_1D138D82C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D138D7EC();
  (*(v5 + 8))(v7, v4);
  return 0;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  v4 = *(self + OBJC_IVAR____TtC15HealthRecordsUI27InternalStateViewController_sections);
  if ((v4 & 0xC000000000000001) != 0)
  {
    selfCopy = self;

    MEMORY[0x1D3886B70](section, v4);

    goto LABEL_5;
  }

  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  if (*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10) <= section)
  {
LABEL_10:
    __break(1u);
    return self;
  }

LABEL_5:

  v5 = sub_1D139012C();

  return v5;
}

@end