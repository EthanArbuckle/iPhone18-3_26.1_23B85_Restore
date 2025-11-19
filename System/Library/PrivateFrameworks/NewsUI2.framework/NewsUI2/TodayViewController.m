@interface TodayViewController
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (_TtC7NewsUI219TodayViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)deselect;
- (void)didPullToRefresh;
- (void)dismissKeyboard;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)scrollViewDidEndDecelerating:(void *)a3;
- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4;
- (void)scrollViewDidEndScrollingAnimation:(id)a3;
- (void)scrollViewDidScroll:(id)a3;
- (void)scrollViewWillBeginDragging:(id)a3;
- (void)significantTimeChangeDidOccur;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation TodayViewController

- (void)viewDidLoad
{
  v2 = self;
  sub_218806410();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_2188090E0(a3);
}

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(TodayViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218807A08();
}

- (void)scrollViewDidScroll:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_21880DB54(v4);
}

- (void)viewWillLayoutSubviews
{
  v15.receiver = self;
  v15.super_class = swift_getObjectType();
  v2 = v15.receiver;
  [(TodayViewController *)&v15 viewWillLayoutSubviews];
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI219TodayViewController_blueprintViewController] view];
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

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_21882C944(a3);
}

- (void)scrollViewDidEndDecelerating:(void *)a3
{
  v4 = a3;
  v5 = a1;
  sub_21880DC5C();
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(TodayViewController *)&v5 dealloc];
}

- (_TtC7NewsUI219TodayViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewWillDisappear:(BOOL)a3
{
  v4 = self;
  sub_21978B1B8(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_21978B46C(a3);
}

- (void)dismissKeyboard
{
  v4 = self;
  v2 = [(TodayViewController *)v4 view];
  if (v2)
  {
    v3 = v2;
    [v2 endEditing_];
  }

  else
  {
    __break(1u);
  }
}

- (void)didPullToRefresh
{
  v2 = self;
  sub_219BE1E74();
}

- (void)significantTimeChangeDidOccur
{
  ObjectType = swift_getObjectType();
  v5 = sub_2187DEAC4(&qword_280ECFA70, v4, type metadata accessor for TodayViewController);
  v8 = self;
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
  v2 = self;
  sub_21978AF2C();
}

- (void)startTraversingWithDirection:(int64_t)a3
{
  v3 = self;
  sub_219BE8684();
}

- (void)deselect
{
  v3 = self;
  sub_219BE8664();
  v2 = sub_219BE7BC4();

  [v2 selectItemAtIndexPath:0 animated:0 scrollPosition:0];
}

- (void)scrollViewDidEndDragging:(id)a3 willDecelerate:(BOOL)a4
{
  if (!a4)
  {
    v6 = a3;
    v7 = self;
    sub_21880DC5C();
  }
}

- (void)scrollViewDidEndScrollingAnimation:(id)a3
{
  v4 = a3;
  v5 = self;
  if (([v4 ts_isScrolling] & 1) == 0)
  {
    sub_21880DC5C();
  }
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI219TodayViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 136);
  v7 = self;
  v6(ObjectType, v4);

  return 1;
}

- (void)scrollViewWillBeginDragging:(id)a3
{
  v7 = self;
  v3 = [(TodayViewController *)v7 presentedViewController];
  if (v3)
  {
    v4 = v3;
    type metadata accessor for ContinueReadingViewController();
    v5 = swift_dynamicCastClass();
    if (v5)
    {
      sub_219A18974(v5);
      v6 = v4;
    }

    else
    {
      v6 = v7;
      v7 = v4;
    }
  }
}

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:1 dismissKeyboard:?];
}

@end