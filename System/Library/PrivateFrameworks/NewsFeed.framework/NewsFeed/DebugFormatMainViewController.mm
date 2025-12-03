@interface DebugFormatMainViewController
- (_TtC8NewsFeed29DebugFormatMainViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed29DebugFormatMainViewController)initWithNibName:(id)name bundle:(id)bundle;
- (_TtC8NewsFeed29DebugFormatMainViewController)initWithStyle:(int64_t)style;
- (void)dealloc;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatMainViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = qword_1EC87D498;
  selfCopy = self;
  if (v4 != -1)
  {
    swift_once();
  }

  sub_1D725BFFC();

  v6 = *(&selfCopy->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_socketServer);
  sub_1D717EB7C();

  v7.receiver = selfCopy;
  v7.super_class = ObjectType;
  [(DebugFormatMainViewController *)&v7 dealloc];
}

- (_TtC8NewsFeed29DebugFormatMainViewController)initWithCoder:(id)coder
{
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(&self->super.super.super.super.isa + v4) = v5;
  *(&self->super.super.super.super.isa + OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_debuggerRestoreState) = 0;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6A7F538();
}

- (void)viewWillLayoutSubviews
{
  v3.receiver = self;
  v3.super_class = swift_getObjectType();
  v2 = v3.receiver;
  [(DebugFormatMainViewController *)&v3 viewWillLayoutSubviews];
  [*(*&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatMainViewController_socketServer] + OBJC_IVAR____TtC8NewsFeed23DebugFormatSocketServer_reloadOperationQueue) setSuspended_];
}

- (_TtC8NewsFeed29DebugFormatMainViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (_TtC8NewsFeed29DebugFormatMainViewController)initWithStyle:(int64_t)style
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end