@interface FreezeFramePageContentViewController
- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4;
- (NSString)description;
- (_TtC16MagnifierSupport36FreezeFramePageContentViewController)initWithNibName:(id)a3 bundle:(id)a4;
- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5;
- (void)doubleTap:(id)a3;
- (void)labelTapped:(id)a3;
- (void)longPress:(id)a3;
- (void)scrollViewDidZoom:(id)a3;
- (void)shareFreezeFrameMenuItemAction;
- (void)singleTap:(id)a3;
- (void)viewDidDisappear:(BOOL)a3;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)a3;
@end

@implementation FreezeFramePageContentViewController

- (NSString)description
{
  v2 = self;
  sub_257DD93AC();

  v3 = sub_257ECF4C0();

  return v3;
}

- (void)viewDidLoad
{
  v2 = self;
  sub_257DD9E80();
}

- (void)labelTapped:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DE01E4();
}

- (void)viewWillAppear:(BOOL)a3
{
  v4 = self;
  sub_257DDADE0(a3);
}

- (void)viewDidDisappear:(BOOL)a3
{
  v4 = self;
  sub_257DDC4C8(a3);
}

- (void)viewDidLayoutSubviews
{
  v2 = self;
  sub_257DDC680();
}

- (BOOL)canPerformAction:(SEL)a3 withSender:(id)a4
{
  if (a4)
  {
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  v4 = sub_257ECCEC0();
  sub_257BE4084(v6, &unk_27F8F62F0);
  return v4 & 1;
}

- (void)scrollViewDidZoom:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DDDD60(v4);
}

- (void)singleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DDE73C(v4);
}

- (void)doubleTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DDE9E0(v4);
}

- (void)longPress:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DDF0EC(v4);
}

- (id)editMenuInteraction:(id)a3 menuForConfiguration:(id)a4 suggestedActions:(id)a5
{
  v7 = a3;
  v8 = a4;
  v9 = self;
  v10 = sub_257DE03E0();

  return v10;
}

- (void)shareFreezeFrameMenuItemAction
{
  if (swift_unknownObjectWeakLoadStrong())
  {
    v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation);
    v4 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation);
    v5 = *(&self->super._overrideTransitioningDelegate + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation);
    v6 = *(&self->super._view + OBJC_IVAR____TtC16MagnifierSupport36FreezeFramePageContentViewController_shareMenuLocation);
    v7 = self;
    sub_257BDF858(v3, v4, v5, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC16MagnifierSupport36FreezeFramePageContentViewController)initWithNibName:(id)a3 bundle:(id)a4
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end