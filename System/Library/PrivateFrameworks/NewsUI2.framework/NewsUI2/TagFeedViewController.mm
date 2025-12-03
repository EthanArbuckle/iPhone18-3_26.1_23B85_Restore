@interface TagFeedViewController
- (_TtC7NewsUI221TagFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)didPullToRefreshWithSender:(id)sender;
- (void)gutterViewBoundsDidChange;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewDidChangeAdjustedContentInset:(id)inset;
- (void)scrollViewDidEndDecelerating:(id)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidScroll:(id)scroll;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewSafeAreaInsetsDidChange;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TagFeedViewController

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(TagFeedViewController *)&v5 dealloc];
}

- (_TtC7NewsUI221TagFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218CEDBE0();
}

- (void)viewWillLayoutSubviews
{
  selfCopy = self;
  sub_218CEE9D8();
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218CEEC80(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(TagFeedViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218CF67B8();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218CEF34C(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TagFeedViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_219BE6AB4();
  sub_219BE5904();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(TagFeedViewController *)&v5 viewDidDisappear:disappearCopy];
  [*&v4[OBJC_IVAR____TtC7NewsUI221TagFeedViewController_refreshControl] endRefreshing];
}

- (void)viewSafeAreaInsetsDidChange
{
  selfCopy = self;
  sub_218CEF98C();
}

- (void)didPullToRefreshWithSender:(id)sender
{
  selfCopy = self;
  sub_219BE1E74();
}

- (void)offlineStatusBannerRequestedForceReload
{
  selfCopy = self;
  sub_218CEE820();
}

- (void)gutterViewBoundsDidChange
{
  selfCopy = self;
  sub_218CF1CE0();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_218CF4EA8(scrollCopy);
}

- (void)scrollViewDidEndDecelerating:(id)decelerating
{
  v5 = sub_219BEFAD4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  deceleratingCopy = decelerating;
  selfCopy = self;
  if (sub_219BF60A4())
  {
    v10 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
    (*(v6 + 104))(v8, *MEMORY[0x277D328C0], v5);
    v11 = *(v10 + 40);
    ObjectType = swift_getObjectType();
    (*(v11 + 112))(v8, ObjectType, v11);

    (*(v6 + 8))(v8, v5);
  }

  else
  {

    v13 = selfCopy;
  }
}

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  v7 = sub_219BEFAD4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  draggingCopy = dragging;
  selfCopy = self;
  if ((sub_219BF60A4() & 1) != 0 && !decelerate)
  {
    v13 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_eventHandler);
    (*(v8 + 104))(v10, *MEMORY[0x277D328C0], v7);
    v14 = *(v13 + 40);
    ObjectType = swift_getObjectType();
    (*(v14 + 112))(v10, ObjectType, v14);

    (*(v8 + 8))(v10, v7);
  }

  else
  {

    v12 = selfCopy;
  }
}

- (void)scrollViewDidChangeAdjustedContentInset:(id)inset
{
  insetCopy = inset;
  selfCopy = self;
  sub_218CF6A88(insetCopy);
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:objc_msgSend(*(&selfCopy->super.super.super.isa + OBJC_IVAR____TtC7NewsUI221TagFeedViewController_feedDescriptor) dismissKeyboard:sel_feedConfiguration) - 12 < 0xFFFFFFFFFFFFFFFDLL];
}

@end