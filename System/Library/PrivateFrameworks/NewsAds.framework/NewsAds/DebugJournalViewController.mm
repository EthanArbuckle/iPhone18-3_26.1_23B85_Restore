@interface DebugJournalViewController
- (_TtC7NewsAds26DebugJournalViewController)initWithCoder:(id)coder;
- (_TtC7NewsAds26DebugJournalViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)numberOfSectionsInTableView:(id)view;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DebugJournalViewController

- (_TtC7NewsAds26DebugJournalViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  result = sub_1D7704860();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  DebugJournalViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  DebugJournalViewController.viewDidAppear(_:)(appear);
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugJournalViewController *)&v14 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
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

- (_TtC7NewsAds26DebugJournalViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)view didSelectRowAtIndexPath:(id)path
{
  v6 = sub_1D7703020();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702FF0();
  viewCopy = view;
  selfCopy = self;
  DebugJournalViewController.tableView(_:didSelectRowAt:)();

  (*(v7 + 8))(v10, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)view
{
  selfCopy = self;
  v4 = sub_1D7701B84();

  v5 = *(v4 + 16);

  return v5;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1D770293C(section);

  return v8;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1D7702A08(section);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1D7704230();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)tableView:(id)view cellForRowAtIndexPath:(id)path
{
  v6 = sub_1D7703020();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702FF0();
  viewCopy = view;
  selfCopy = self;
  v13 = DebugJournalViewController.tableView(_:cellForRowAt:)();

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end