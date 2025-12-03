@interface MultiControlButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (_TtC16MagnifierSupport18MultiControlButton)initWithFrame:(CGRect)frame;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)didTap:(id)tap;
- (void)layoutSubviews;
@end

@implementation MultiControlButton

- (void)addTarget:(id)target action:(SEL)action forControlEvents:(unint64_t)events
{
  if (target)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    selfCopy2 = self;
  }

  sub_257C3BC80(v10, action, events);

  sub_257C3A464(v10);
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257C3BE6C();
}

- (void)didTap:(id)tap
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    selfCopy = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (_TtC16MagnifierSupport18MultiControlButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller
{
  interactionCopy = interaction;
  controllerCopy = controller;
  selfCopy = self;
  v9 = sub_257C3D338(interactionCopy);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_257C3C858(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  presentCopy = present;
  selfCopy = self;
  sub_257C3CB3C(presentCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  endedCopy = ended;
  selfCopy = self;
  sub_257C3D540(cancelled);
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_257C3CEBC(interactionCopy);

  return v7;
}

@end