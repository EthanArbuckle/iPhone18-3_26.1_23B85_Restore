@interface DebugFormatCreatePackageViewController
- (_TtC8NewsFeed38DebugFormatCreatePackageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doCreatePackage;
- (void)doEndEditing;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatCreatePackageViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D681EBD4();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatCreatePackageViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_tableView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 bounds];
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
  v4 = self;
  v2 = [(DebugFormatCreatePackageViewController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 endEditing_];

    sub_1D681F1CC();
  }

  else
  {
    __break(1u);
  }
}

- (void)doCreatePackage
{
  v2 = self;
  sub_1D681F3F4();
}

- (_TtC8NewsFeed38DebugFormatCreatePackageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 104 * a4 + 128) + 16);
    }
  }

  __break(1u);
  return self;
}

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  v13 = sub_1D6820960();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections);
  if (*(v5 + 16) <= a4)
  {
LABEL_13:
    __break(1u);
    return self;
  }

  v6 = v5 + 104 * a4;
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

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatCreatePackageViewController_sections) + 16) <= a4)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = sub_1D726203C();

  return v5;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  sub_1D6821660(v11);

  (*(v7 + 8))(v10, v6);
}

@end