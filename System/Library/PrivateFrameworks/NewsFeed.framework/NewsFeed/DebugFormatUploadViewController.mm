@interface DebugFormatUploadViewController
- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path;
- (_TtC8NewsFeed31DebugFormatUploadViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)doNext;
- (void)doTocWithSender:(id)sender;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)updateSearchResultsForSearchController:(id)controller;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatUploadViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D67B77E8();
}

- (void)viewWillAppear:(BOOL)appear
{
  appearCopy = appear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(DebugFormatUploadViewController *)&v7 viewWillAppear:appearCopy];
  navigationController = [v4 navigationController];
  if (navigationController)
  {
    v6 = navigationController;
    [navigationController setToolbarHidden:0 animated:0];
  }
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatUploadViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_tableView];
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
    sub_1D725D75C();
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8NewsFeed31DebugFormatUploadViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)doNext
{
  selfCopy = self;
  sub_1D67B9544();
}

- (void)doTocWithSender:(id)sender
{
  senderCopy = sender;
  selfCopy = self;
  sub_1D67B9A68(senderCopy);
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 32 * section + 56) + 16);
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
  v13 = sub_1D67BA6B8();

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1D67BB454(viewCopy, section);
  v9 = v8;

  return v9;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed31DebugFormatUploadViewController_filteredSections);
  if (*(v5 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 32 * section + 48))
  {

    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path
{
  v8 = sub_1D7258DBC();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v10);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  cellCopy = cell;
  selfCopy = self;
  sub_1D67BF214(viewCopy);

  (*(v9 + 8))(v12, v8);
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D67BF4D4(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
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

- (BOOL)tableView:(id)view canEditRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  LOBYTE(self) = sub_1D67BF3F0();

  (*(v7 + 8))(v10, v6);
  return self & 1;
}

- (void)updateSearchResultsForSearchController:(id)controller
{
  controllerCopy = controller;
  selfCopy = self;
  sub_1D67BC3CC(controllerCopy);
}

@end