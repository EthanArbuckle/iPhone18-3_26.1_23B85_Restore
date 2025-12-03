@interface DebugFormatUploadDiffVersionsViewController
- (_TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForFooterInSection:(int64_t)section;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatUploadDiffVersionsViewController

- (_TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController)initWithCoder:(id)coder
{
  v3 = OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_tableView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:1 style:{0.0, 0.0, 0.0, 0.0}];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D69BCB88();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatUploadDiffVersionsViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController_tableView];
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

- (_TtC8NewsFeed43DebugFormatUploadDiffVersionsViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  v8 = sub_1D69BEFA4(section);

  return v8;
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
  v13 = sub_1D69BD0F8(viewCopy);

  (*(v7 + 8))(v10, v6);

  return v13;
}

- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section
{
  sub_1D69BF0A4(section);
  if (v4)
  {
    v5 = sub_1D726203C();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)tableView:(id)view titleForFooterInSection:(int64_t)section
{
  viewCopy = view;
  selfCopy = self;
  sub_1D69BF1C0(section);
  v9 = v8;

  if (v9)
  {
    v10 = sub_1D726203C();
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end