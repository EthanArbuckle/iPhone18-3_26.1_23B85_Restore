@interface DebugFormatInspectorPaneViewController
- (_TtC8NewsFeed38DebugFormatInspectorPaneViewController)initWithNibName:(id)name bundle:(id)bundle;
- (double)tableView:(id)view heightForRowAtIndexPath:(id)path;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path;
- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)tableView:(id)view willDisplayCell:(id)cell forRowAtIndexPath:(id)path;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatInspectorPaneViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6A6FCB4();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = type metadata accessor for DebugFormatInspectorPaneViewController();
  v2 = v14.receiver;
  [(DebugFormatInspectorPaneViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_tableView];
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

- (_TtC8NewsFeed38DebugFormatInspectorPaneViewController)initWithNibName:(id)name bundle:(id)bundle
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
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 40 * section + 64) + 16);
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
  v13 = sub_1D6A708F4(viewCopy, v10);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (*(*(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups) + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = sub_1D726203C();

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(self + OBJC_IVAR____TtC8NewsFeed38DebugFormatInspectorPaneViewController_filteredGroups);
  if (*(v5 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return self;
  }

  if (*(v5 + 40 * section + 56))
  {

    v6 = sub_1D726203C();
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (double)tableView:(id)view heightForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D6A7CE14();
  v14 = v13;

  (*(v7 + 8))(v10, v6);
  return v14;
}

- (id)tableView:(id)view willSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D6A7D8EC(0, &qword_1EDF3C370, MEMORY[0x1E6969C28], MEMORY[0x1E69E6720]);
  MEMORY[0x1EEE9AC00](v11 - 8, v12);
  v14 = &v22 - v13;
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D6A79040(v10, v14);

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

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D6A79710(viewCopy);

  (*(v7 + 8))(v10, v6);
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
  sub_1D6A7D1E8(cellCopy);

  (*(v9 + 8))(v12, v8);
}

- (id)tableView:(id)view trailingSwipeActionsConfigurationForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  v13 = sub_1D6A7D740();

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end