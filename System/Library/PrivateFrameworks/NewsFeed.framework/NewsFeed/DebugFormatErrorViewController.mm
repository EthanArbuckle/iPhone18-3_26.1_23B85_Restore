@interface DebugFormatErrorViewController
- (_TtC8NewsFeed30DebugFormatErrorViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed30DebugFormatErrorViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)tableView:(id)view cellForRowAtIndexPath:(id)path;
- (id)tableView:(id)view titleForHeaderInSection:(int64_t)section;
- (int64_t)tableView:(id)view numberOfRowsInSection:(int64_t)section;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatErrorViewController

- (_TtC8NewsFeed30DebugFormatErrorViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView;
  *(&self->super.super.super.isa + v4) = [objc_allocWithZone(MEMORY[0x1E69DD020]) initWithFrame:2 style:{0.0, 0.0, 0.0, 0.0}];
  v5 = OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v6 = swift_allocObject();
  *(v6 + 2) = 0;
  *(&self->super.super.super.isa + v5) = v6;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6EFA25C();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatErrorViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_tableView];
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

- (_TtC8NewsFeed30DebugFormatErrorViewController)initWithNibName:(id)name bundle:(id)bundle
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
    v4 = *(self + OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel + 8);
    if (*(v4 + 16) > section)
    {
      return *(*(v4 + 24 * section + 48) + 16);
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
  v13 = sub_1D6EFA620();

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

  if (*(*(self + OBJC_IVAR____TtC8NewsFeed30DebugFormatErrorViewController_errorModel + 8) + 16) <= section)
  {
LABEL_7:
    __break(1u);
    return self;
  }

  v5 = sub_1D726203C();

  return v5;
}

@end