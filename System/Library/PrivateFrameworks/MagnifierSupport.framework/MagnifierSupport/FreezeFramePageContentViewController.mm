@interface FreezeFramePageContentViewController
- (BOOL)canPerformAction:(SEL)action withSender:(id)sender;
- (NSString)description;
- (_TtC16MagnifierSupport36FreezeFramePageContentViewController)initWithNibName:(id)name bundle:(id)bundle;
- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions;
- (void)doubleTap:(id)tap;
- (void)labelTapped:(id)tapped;
- (void)longPress:(id)press;
- (void)scrollViewDidZoom:(id)zoom;
- (void)shareFreezeFrameMenuItemAction;
- (void)singleTap:(id)tap;
- (void)viewDidDisappear:(BOOL)disappear;
- (void)viewDidLayoutSubviews;
- (void)viewDidLoad;
- (void)viewWillAppear:(BOOL)appear;
@end

@implementation FreezeFramePageContentViewController

- (NSString)description
{
  selfCopy = self;
  sub_257DD93AC();

  v3 = sub_257ECF4C0();

  return v3;
}

- (void)viewDidLoad
{
  selfCopy = self;
  sub_257DD9E80();
}

- (void)labelTapped:(id)tapped
{
  tappedCopy = tapped;
  selfCopy = self;
  sub_257DE01E4();
}

- (void)viewWillAppear:(BOOL)appear
{
  selfCopy = self;
  sub_257DDADE0(appear);
}

- (void)viewDidDisappear:(BOOL)disappear
{
  selfCopy = self;
  sub_257DDC4C8(disappear);
}

- (void)viewDidLayoutSubviews
{
  selfCopy = self;
  sub_257DDC680();
}

- (BOOL)canPerformAction:(SEL)action withSender:(id)sender
{
  if (sender)
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

- (void)scrollViewDidZoom:(id)zoom
{
  zoomCopy = zoom;
  selfCopy = self;
  sub_257DDDD60(zoomCopy);
}

- (void)singleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_257DDE73C(tapCopy);
}

- (void)doubleTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_257DDE9E0(tapCopy);
}

- (void)longPress:(id)press
{
  pressCopy = press;
  selfCopy = self;
  sub_257DDF0EC(pressCopy);
}

- (id)editMenuInteraction:(id)interaction menuForConfiguration:(id)configuration suggestedActions:(id)actions
{
  interactionCopy = interaction;
  configurationCopy = configuration;
  selfCopy = self;
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
    selfCopy = self;
    sub_257BDF858(v3, v4, v5, v6);
    swift_unknownObjectRelease();
  }
}

- (_TtC16MagnifierSupport36FreezeFramePageContentViewController)initWithNibName:(id)name bundle:(id)bundle
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end