@interface DebugFormatCreatePackageViewController
- (_TtC8NewsFeed38DebugFormatCreatePackageViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)doCreatePackage;
- (void)doEndEditing;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatCreatePackageViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D681EBD4();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatCreatePackageViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_tableView];
  view = [v2 view];
  if (view)
  {
    v5 = view;
    [view bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    [v3 setFrame_];
  }

  else
  {
    __break(1u);
  }
}

- (void)doEndEditing
{
  selfCopy = self;
  view = [(DebugFormatCreatePackageViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view endEditing_];

    sub_1D681F1CC();
  }

  else
  {
    __break(1u);
  }
}

- (void)doCreatePackage
{
  selfCopy = self;
  sub_1D681F3F4();
}

- (_TtC8NewsFeed38DebugFormatCreatePackageViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 104 * section + 128) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1D6820960();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections);
  if (*(v5 + 16) <= section)
  {
LABEL_13:
    __break(1u);
    return self;
  }

  v6 = v5 + 104 * section;
  if (*(v6 + 80))
  {
    v7 = 0;
  }

  else
  {
    v7 = 0x616E6F6974704F28;
  }

  if (*(v6 + 80))
  {
    v8 = 0xE000000000000000;
  }

  else
  {
    v8 = 0xEA0000000000296CLL;
  }

  MEMORY[0x1DA6F9910](32, 0xE100000000000000);
  MEMORY[0x1DA6F9910](v7, v8);

  v9 = sub_1D726203C();

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections) + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = sub_1D726203C();

  return v5;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D6821660(viewCopy);

  (*(v7 + 8))(v10, v6);
}

@end