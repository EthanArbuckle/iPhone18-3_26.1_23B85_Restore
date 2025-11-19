@interface DebugFormatSelectPackageViewController
- (_TtC8NewsFeed38DebugFormatSelectPackageViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4;
- (void)doNext;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatSelectPackageViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6744004();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(DebugFormatSelectPackageViewController *)&v7 viewWillAppear:v3];
  v5 = [v4 navigationController];
  if (v5)
  {
    v6 = v5;
    [v5 setToolbarHidden:0 animated:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatSelectPackageViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatSelectPackageViewController_tableView];
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

- (void)doNext
{
  v2 = self;
  sub_1D6744930();
}

- (_TtC8NewsFeed38DebugFormatSelectPackageViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
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
  v13 = sub_1D6744D94(v11);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v4 = sub_1D726203C();

  return v4;
}

- (id)tableView:(id)a3 viewForFooterInSection:(int64_t)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_1D6745EC8();

  return v7;
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
  sub_1D674617C();

  (*(v7 + 8))(v10, v6);
}

@end