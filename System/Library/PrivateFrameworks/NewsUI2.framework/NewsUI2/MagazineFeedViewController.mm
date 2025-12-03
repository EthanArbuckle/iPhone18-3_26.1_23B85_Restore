@interface MagazineFeedViewController
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (_TtC7NewsUI226MagazineFeedViewController)initWithCoder:(id)coder;
- (_TtC7NewsUI226MagazineFeedViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)deselect;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineFeedViewController

- (_TtC7NewsUI226MagazineFeedViewController)initWithCoder:(id)coder
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(MagazineFeedViewController *)&v5 dealloc];
}

- (_TtC7NewsUI226MagazineFeedViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218C9B838();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218C9C128(appear);
}

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_218C9C4F8(appear);
}

- (void)viewWillDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MagazineFeedViewController *)&v5 viewWillDisappear:disappearCopy];
  sub_219BE6AB4();
  sub_219BE5904();
}

- (void)viewDidDisappear:(BOOL)disappear
{
  disappearCopy = disappear;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MagazineFeedViewController *)&v7 viewDidDisappear:disappearCopy];
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_219C1D060;
  *(v5 + 32) = 2;
  v6 = v5 | 0x6000000000000006;
  sub_219BE7864();
  sub_218932F9C(v6);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(MagazineFeedViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController] view];
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

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(MagazineFeedViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218CA00C8();
}

- (void)offlineStatusBannerRequestedForceReload
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
  selfCopy = self;
  sub_219BE86E4();
  v4 = objc_allocWithZone(sub_219BE9274());
  v7 = sub_219BE9254();
  v5 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(v7, ObjectType, v5);
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  v4 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 80);
  selfCopy = self;
  v6(ObjectType, v4);

  return 1;
}

- (void)startTraversingWithDirection:(int64_t)direction
{
  selfCopy = self;
  sub_219BE8684();
}

- (void)deselect
{
  selfCopy = self;
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

- (void)scrollToTopAnimated:(BOOL)animated
{
  animatedCopy = animated;
  selfCopy = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:animatedCopy scrollToTop:1 dismissKeyboard:?];
}

@end