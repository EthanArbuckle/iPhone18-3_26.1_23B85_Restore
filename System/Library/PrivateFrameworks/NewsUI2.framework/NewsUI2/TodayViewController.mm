@interface TodayViewController
- (BOOL)scrollViewShouldScrollToTop:(id)top;
- (_TtC7NewsUI219TodayViewController)initWithNibName:(id)name bundle:(id)bundle;
- (void)dealloc;
- (void)deselect;
- (void)didPullToRefresh;
- (void)dismissKeyboard;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)animated;
- (void)scrollViewDidEndDecelerating:(void *)decelerating;
- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate;
- (void)scrollViewDidEndScrollingAnimation:(id)animation;
- (void)scrollViewDidScroll:(id)scroll;
- (void)scrollViewWillBeginDragging:(id)dragging;
- (void)significantTimeChangeDidOccur;
- (void)startTraversingWithDirection:(int64_t)direction;
- (void)traitCollectionDidChange:(id)change;
- (void)viewDidAppear:(BOOL)appear;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
- (void)viewWillDisappear:(BOOL)disappear;
- (void)viewWillLayoutSubviews;
@end

@implementation TodayViewController

- (void)viewDidLoad
{
  selfCopy = self;
  sub_218806410();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_2188090E0(appear);
}

- (void)traitCollectionDidChange:(id)change
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  changeCopy = change;
  v5 = v7.receiver;
  [(TodayViewController *)&v7 traitCollectionDidChange:changeCopy];
  traitCollection = [v5 traitCollection];
  sub_218807A08();
}

- (void)scrollViewDidScroll:(id)scroll
{
  scrollCopy = scroll;
  selfCopy = self;
  sub_21880DB54(scrollCopy);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(TodayViewController *)&v15 viewWillLayoutSubviews];
  view = [*&v2[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController] view];
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

- (void)viewDidAppear:(BOOL)appear
{
  selfCopy = self;
  sub_21882C944(appear);
}

- (void)scrollViewDidEndDecelerating:(void *)decelerating
{
  deceleratingCopy = decelerating;
  selfCopy = self;
  sub_21880DC5C();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  selfCopy = self;

  sub_219BE58F4();

  v5.receiver = selfCopy;
  v5.super_class = ObjectType;
  [(TodayViewController *)&v5 dealloc];
}

- (_TtC7NewsUI219TodayViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21978B1B8(disappear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_21978B46C(disappear);
}

- (void)dismissKeyboard
{
  selfCopy = self;
  view = [(TodayViewController *)selfCopy view];
  if (view)
  {
    v3 = view;
    [view endEditing_];
  }

  else
  {
    __break(1u);
  }
}

- (void)didPullToRefresh
{
  selfCopy = self;
  sub_219BE1E74();
}

- (void)significantTimeChangeDidOccur
{
  ObjectType = swift_getObjectType();
  v5 = sub_2187DEAC4(&qword_280ECFA70, v4, type metadata accessor for TodayViewController);
  selfCopy = self;
  v6 = MEMORY[0x21CEBCBD0](ObjectType, v5);
  if (v6)
  {
    v7 = v6;
    swift_getObjectType();
    sub_219BE9114();
  }
}

- (void)offlineStatusBannerRequestedForceReload
{
  selfCopy = self;
  sub_21978AF2C();
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

- (void)scrollViewDidEndDragging:(id)dragging willDecelerate:(BOOL)decelerate
{
  if (!decelerate)
  {
    draggingCopy = dragging;
    selfCopy = self;
    sub_21880DC5C();
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)animation
{
  animationCopy = animation;
  selfCopy = self;
  if (([animationCopy ts_isScrolling] & 1) == 0)
  {
    sub_21880DC5C();
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)top
{
  v4 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 136);
  selfCopy = self;
  v6(ObjectType, v4);

  return 1;
}

- (void)scrollViewWillBeginDragging:(id)dragging
{
  selfCopy = self;
  presentedViewController = [(TodayViewController *)selfCopy presentedViewController];
  if (presentedViewController)
  {
    v4 = presentedViewController;
    type metadata accessor for ContinueReadingViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_219A18974(v5);
      v6 = v4;
    }

    else
    {
      v6 = selfCopy;
      selfCopy = v4;
    }
  }
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