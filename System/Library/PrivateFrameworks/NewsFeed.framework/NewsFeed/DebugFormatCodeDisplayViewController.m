@interface DebugFormatCodeDisplayViewController
- (_TtC8NewsFeed36DebugFormatCodeDisplayViewController)initWithCoder:(id)a3;
- (_TtC8NewsFeed36DebugFormatCodeDisplayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLoad;
- (void)viewLayoutMarginsDidChange;
- (void)viewWillLayoutSubviews;
@end

@implementation DebugFormatCodeDisplayViewController

- (_TtC8NewsFeed36DebugFormatCodeDisplayViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD168]) initWithFrame_];
  result = sub_1D726402C();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D6C0E9D8();
}

- (void)viewWillLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatCodeDisplayViewController *)&v14 viewWillLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView];
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

- (void)viewLayoutMarginsDidChange
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugFormatCodeDisplayViewController *)&v14 viewLayoutMarginsDidChange];
  v3 = *&v2[OBJC_IVAR____TtC8NewsFeed36DebugFormatCodeDisplayViewController_textView];
  v4 = [v2 view];
  if (v4)
  {
    v5 = v4;
    [v4 layoutMargins];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    MEMORY[0x1DA6FA480](0.0, v7, v9, v11, v13);
    sub_1D7262E1C();
    [v3 setContentInset_];
  }

  else
  {
    __break(1u);
  }
}

- (_TtC8NewsFeed36DebugFormatCodeDisplayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end