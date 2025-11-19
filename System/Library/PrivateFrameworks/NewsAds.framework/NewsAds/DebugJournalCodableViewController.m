@interface DebugJournalCodableViewController
- (_TtC7NewsAds33DebugJournalCodableViewController)initWithCoder:(id)a3;
- (_TtC7NewsAds33DebugJournalCodableViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
@end

@implementation DebugJournalCodableViewController

- (_TtC7NewsAds33DebugJournalCodableViewController)initWithCoder:(id)a3
{
  v3 = OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView;
  *(&self->super.super.super.isa + v3) = [objc_allocWithZone(MEMORY[0x1E69DD168]) init];
  result = sub_1D7704860();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_1D76989E4();
}

- (void)viewDidLayoutSubviews
{
  v14.receiver = self;
  v14.super_class = swift_getObjectType();
  v2 = v14.receiver;
  [(DebugJournalCodableViewController *)&v14 viewDidLayoutSubviews];
  v3 = *&v2[OBJC_IVAR____TtC7NewsAds33DebugJournalCodableViewController_textView];
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

- (_TtC7NewsAds33DebugJournalCodableViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end