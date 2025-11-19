@interface HistoryFeedViewController
- (_TtC7NewsUI225HistoryFeedViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI225HistoryFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)clearHistory;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation HistoryFeedViewController

- (_TtC7NewsUI225HistoryFeedViewController)initWithCoder:(id)a3
{
  *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController____lazy_storage___clearButton) = 0;
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (_TtC7NewsUI225HistoryFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_219A10924();
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(HistoryFeedViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI225HistoryFeedViewController_blueprintViewController] view];
  if (v3)
  {
    v4 = v3;
    v5 = [v2 view];
    if (v5)
    {
      v6 = v5;
      [v5 bounds];
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

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_219A11064(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_219A11558(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HistoryFeedViewController *)&v5 viewWillDisappear:v3];
  swift_getObjectType();
  sub_219BE7534();
  sub_219BE6AB4();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(HistoryFeedViewController *)&v5 viewDidDisappear:v3];
  sub_219BE7864();
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(HistoryFeedViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_219A13158();
}

- (void)clearHistory
{
  v2 = self;
  sub_218EC07E8();
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:?];
}

@end