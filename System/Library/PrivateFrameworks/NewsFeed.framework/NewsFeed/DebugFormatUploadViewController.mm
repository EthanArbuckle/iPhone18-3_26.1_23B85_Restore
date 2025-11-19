@interface DebugFormatUploadViewController
- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4;
- (_TtC8NewsFeed31DebugFormatUploadViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4;
- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4;
- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)doNext;
- (void)doTocWithSender:(id)a3;
- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5;
- (void)updateSearchResultsForSearchController:(id)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatUploadViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_1D67B77E8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(DebugFormatUploadViewController *)&v7 viewWillAppear:v3];
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
  [(DebugFormatUploadViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView];
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
    sub_1D725D75C();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8NewsFeed31DebugFormatUploadViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doNext
{
  v2 = self;
  sub_1D67B9544();
}

- (void)doTocWithSender:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D67B9A68(v4);
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
    if (*(v4 + 16) > a4)
    {
      return *(*(v4 + 32 * a4 + 56) + 16);
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
  v13 = sub_1D67BA6B8();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)a3 viewForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D67BB454(v6, a4);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)a3 titleForFooterInSection:(int64_t)a4
{
  if (a4 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (*(v5 + 16) <= a4)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 32 * a4 + 48))
  {

    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)a3 willDisplayCell:(id)a4 forRowAtIndexPath:(id)a5
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v13 = a3;
  v14 = a4;
  v15 = self;
  sub_1D67BF214(v13);

  (*(v9 + 8))(v12, v8);
}

- (id)tableView:(id)a3 willSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67BF4D4(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  sub_1D7258D6C();
  v15 = a3;
  v16 = self;
  sub_1D67BBB3C(v10, v14);

  v17 = *(v7 + 8);
  v17(v10, v6);
  v18 = (*(v7 + 48))(v14, 1, v6);
  v19 = 0;
  if (v18 != 1)
  {
    v20 = sub_1D7258D4C();
    v17(v14, v6);
    v19 = v20;
  }

  return v19;
}

- (BOOL)tableView:(id)a3 canEditRowAtIndexPath:(id)a4
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  v11 = a3;
  v12 = self;
  LOBYTE(self) = sub_1D67BF3F0();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)updateSearchResultsForSearchController:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1D67BC3CC(v4);
}

@end