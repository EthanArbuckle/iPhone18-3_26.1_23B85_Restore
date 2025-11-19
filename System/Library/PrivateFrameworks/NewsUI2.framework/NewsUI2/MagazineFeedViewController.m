@interface MagazineFeedViewController
- (BOOL)scrollViewShouldScrollToTop:(id)a3;
- (_TtC7NewsUI226MagazineFeedViewController)initWithCoder:(id)a3;
- (_TtC7NewsUI226MagazineFeedViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (void)dealloc;
- (void)deselect;
- (void)offlineStatusBannerRequestedForceReload;
- (void)scrollToTopAnimated:(BOOL)a3;
- (void)startTraversingWithDirection:(int64_t)a3;
- (void)traitCollectionDidChange:(id)a3;
- (void)viewDidAppear:(BOOL)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
- (void)viewWillDisappear:(BOOL)a3;
- (void)viewWillLayoutSubviews;
@end

@implementation MagazineFeedViewController

- (_TtC7NewsUI226MagazineFeedViewController)initWithCoder:(id)a3
{
  result = sub_219BF7514();
  __break(1u);
  return result;
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;

  sub_219BE58F4();

  v5.receiver = v4;
  v5.super_class = ObjectType;
  [(MagazineFeedViewController *)&v5 dealloc];
}

- (_TtC7NewsUI226MagazineFeedViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_218C9B838();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_218C9C128(a3);
}

- (void)viewDidAppear:(BOOL)a3
{
  v4 = self;
  sub_218C9C4F8(a3);
}

- (void)viewWillDisappear:(BOOL)a3
{
  v3 = a3;
  v5.receiver = self;
  v5.super_class = swift_getObjectType();
  v4 = v5.receiver;
  [(MagazineFeedViewController *)&v5 viewWillDisappear:v3];
  sub_219BE6AB4();
  sub_219BE5904();
}

- (void)viewDidDisappear:(BOOL)a3
{
  v3 = a3;
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = v7.receiver;
  [(MagazineFeedViewController *)&v7 viewDidDisappear:v3];
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
  v3 = [*&v2[OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_blueprintViewController] view];
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

- (void)traitCollectionDidChange:(id)a3
{
  v7.receiver = self;
  v7.super_class = swift_getObjectType();
  v4 = a3;
  v5 = v7.receiver;
  [(MagazineFeedViewController *)&v7 traitCollectionDidChange:v4];
  v6 = [v5 traitCollection];
  sub_218CA00C8();
}

- (void)offlineStatusBannerRequestedForceReload
{
  v2 = *(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler);
  v3 = self;
  sub_219BE86E4();
  v4 = objc_allocWithZone(sub_219BE9274());
  v7 = sub_219BE9254();
  v5 = *(v2 + 40);
  ObjectType = swift_getObjectType();
  (*(v5 + 64))(v7, ObjectType, v5);
}

- (BOOL)scrollViewShouldScrollToTop:(id)a3
{
  v4 = (*(&self->super.super.super.isa + OBJC_IVAR____TtC7NewsUI226MagazineFeedViewController_eventHandler))[5];
  ObjectType = swift_getObjectType();
  v6 = *(v4 + 80);
  v7 = self;
  v6(ObjectType, v4);

  return 1;
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

- (void)scrollToTopAnimated:(BOOL)a3
{
  v3 = a3;
  v5 = self;
  sub_219BE8664();
  v4 = sub_219BE7BC4();

  [v4 ts:v3 scrollToTop:1 dismissKeyboard:?];
}

@end