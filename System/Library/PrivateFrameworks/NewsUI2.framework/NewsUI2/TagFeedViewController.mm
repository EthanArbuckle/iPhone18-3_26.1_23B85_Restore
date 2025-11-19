@interface TagFeedViewController
- (_TtC7NewsUI221TagFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)didPullToRefreshWithSender:(id)a3;
- (void)gutterViewBoundsDidChange;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewDidChangeAdjustedContentInset:(id)a3;
- (void)scrollViewDidEndDecelerating:(id)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidScroll:(id)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TagFeedViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(TagFeedViewController *)&v5 dealloc];
}

- (_TtC7NewsUI221TagFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218CEDBE0();
}

- (void)viewWillLayoutSubviews
{
  v2 = self;
  sub_218CEE9D8();
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_218CEEC80(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(TagFeedViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218CF67B8();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_218CEF34C(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TagFeedViewController *)&v5 viewWillDisappear:v3];
  sub_219BE6AB4();
  sub_219BE5904();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TagFeedViewController *)&v5 viewDidDisappear:v3];
  [*&v4[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl] endRefreshing];
}

- (void)viewSafeAreaInsetsDidChange
{
  v2 = self;
  sub_218CEF98C();
}

- (void)didPullToRefreshWithSender:(id)a3
{
  v3 = self;
  sub_219BE1E74();
}

- (void)offlineStatusBannerRequestedForceReload
{
  v2 = self;
  sub_218CEE820();
}

- (void)gutterViewBoundsDidChange
{
  v2 = self;
  sub_218CF1CE0();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218CF4EA8(v4);
}

- (void)scrollViewDidEndDecelerating:(id)a3
{
  v5 = sub_219BEFAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a3;
  v15 = self;
  if (sub_219BF60A4())
  {
    v10 = *(&v15->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
    (*(v6 + 104))(v8, *MEMORY[0x277D328C0], v5);
    v11 = *(v10 + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 112))(v8, ObjectType, v11);

    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = v15;
  }
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  v7 = sub_219BEFAD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a3;
  v17 = self;
  if ((sub_219BF60A4() & 1) != 0 && !a4)
  {
    v13 = *(&v17->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
    (*(v8 + 104))(v10, *MEMORY[0x277D328C0], v7);
    v14 = *(v13 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 112))(v10, ObjectType, v14);

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    v12 = v17;
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_218CF6A88(v4);
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:objc_msgSend(*(&v5->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor) dismissKeyboard:sel_feedConfiguration) - 12 < 0xFFFFFFFFFFFFFFFDLL];
}

@end