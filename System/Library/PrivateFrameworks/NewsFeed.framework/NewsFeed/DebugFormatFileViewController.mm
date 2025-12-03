@interface DebugFormatFileViewController
- (_TtC8NewsFeed29DebugFormatFileViewController)initWithCoder:(id)coder;
- (_TtC8NewsFeed29DebugFormatFileViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)viewDidLoad;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatFileViewController

- (_TtC8NewsFeed29DebugFormatFileViewController)initWithCoder:(id)coder
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_sourceMetrics) = 0;
  v4 = OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_styler;
  type metadata accessor for DebugFormatStyler();
  v5 = swift_allocObject();
  *(v5 + 2) = 0;
  *(&self->super.super.super.isa + v4) = v5;
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_1D6C28588();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(DebugFormatFileViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC8NewsFeed29DebugFormatFileViewController_fileViewController] view];
  if (view)
  {
    v4 = view;
    view2 = [v2 view];
    if (view2)
    {
      v6 = view2;
      [view2 bounds];
      v8 = v7;
      v10 = v9;
      v12 = v11;
      v14 = v13;

      [v4 setFrame_];
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
}

- (_TtC8NewsFeed29DebugFormatFileViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end