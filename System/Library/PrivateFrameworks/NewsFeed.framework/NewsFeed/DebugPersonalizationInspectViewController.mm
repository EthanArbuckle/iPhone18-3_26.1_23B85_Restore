@interface DebugPersonalizationInspectViewController
- (_TtC8NewsFeed41DebugPersonalizationInspectViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (void)doDismiss;
- (void)doTapToRadar;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugPersonalizationInspectViewController

- (_TtC8NewsFeed41DebugPersonalizationInspectViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D716C1C0();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_1D716D78C();
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_1D716D8DC();
}

- (void)doDismiss
{
  selfCopy = self;
  presentingViewController = [(DebugPersonalizationInspectViewController *)selfCopy presentingViewController];
  if (presentingViewController)
  {
    v3 = presentingViewController;
    [presentingViewController dismissViewControllerAnimated:1 completion:0];
  }
}

- (void)doTapToRadar
{
  selfCopy = self;
  sub_1D716DD38();
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  v3 = self + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_targetGroupData;
  sub_1D5ECEDF4();
  v5 = *&v3[*(v4 + 48)];
  v6 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections;
  swift_beginAccess();
  return *(*(v5 + v6) + 16);
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D7258DBC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7258D6C();
  viewCopy = view;
  selfCopy = self;
  sub_1D716F8C0(viewCopy, v10);
  v14 = v13;

  (*(v7 + 8))(v10, v6);

  return v14;
}

- (id)tableView:(id)view viewForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1D7172090(viewCopy, section);

  return v8;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  v5 = self + OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewController_targetGroupData;
  sub_1D5ECEDF4();
  v7 = *&v5[*(v6 + 48)];
  v8 = OBJC_IVAR____TtC8NewsFeed41DebugPersonalizationInspectViewDataSource_sections;
  result = swift_beginAccess();
  if (section < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v10 = *(v7 + v8);
  if (*(v10 + 16) <= section)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  if (*(v10 + (section << 6) + 88))
  {

    v11 = sub_1D726203C();
  }

  else
  {
    v11 = 0;
  }

  return v11;
}

@end