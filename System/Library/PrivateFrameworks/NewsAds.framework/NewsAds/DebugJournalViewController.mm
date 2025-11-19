@interface DebugJournalViewController
- (_TtC7NewsAds26DebugJournalViewController)initWithCoder:(id)a3;
- (_TtC7NewsAds26DebugJournalViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4;
- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4;
- (int64_t)numberOfSectionsInTableView:(id)a3;
- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4;
- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DebugJournalViewController

- (_TtC7NewsAds26DebugJournalViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  result = sub_1D7704860();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  DebugJournalViewController.viewDidLoad()();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  DebugJournalViewController.viewDidAppear(_:)(a3);
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugJournalViewController *)&v14 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7NewsAds26DebugJournalViewController_tableView];
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

- (_TtC7NewsAds26DebugJournalViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)tableView:(id)a3 didSelectRowAtIndexPath:(id)a4
{
  v6 = sub_1D7703020();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702FF0();
  v11 = a3;
  v12 = self;
  DebugJournalViewController.tableView(_:didSelectRowAt:)();

  (*(v7 + 8))(v10, v6);
}

- (int64_t)numberOfSectionsInTableView:(id)a3
{
  v3 = self;
  v4 = sub_1D7701B84();

  v5 = *(v4 + 16);

  return v5;
}

- (int64_t)tableView:(id)a3 numberOfRowsInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  v8 = sub_1D770293C(a4);

  return v8;
}

- (id)tableView:(id)a3 titleForHeaderInSection:(int64_t)a4
{
  v6 = a3;
  v7 = self;
  sub_1D7702A08(a4);
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

- (id)tableView:(id)a3 cellForRowAtIndexPath:(id)a4
{
  v6 = sub_1D7703020();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D7702FF0();
  v11 = a3;
  v12 = self;
  v13 = DebugJournalViewController.tableView(_:cellForRowAt:)();

  (*(v7 + 8))(v10, v6);

  return v13;
}

@end