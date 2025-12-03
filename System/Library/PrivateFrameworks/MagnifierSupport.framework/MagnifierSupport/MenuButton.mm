@interface MenuButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport10MenuButton)initWithFrame:(CGRect)frame;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)didTap:(id)tap;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation MenuButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257CFBAB0();
}

- (void)didTap:(id)tap
{
  if (tap)
  {
    selfCopy = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    selfCopy2 = self;
  }

  sub_257CFCE0C();

  sub_257BE4084(v6, &unk_27F8F62F0);
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_257CFD0AC();
}

- (_TtC16MagnifierSupport10MenuButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  sub_257CFD524();
  v4 = v3;

  if (v4)
  {
    v5 = sub_257ECF4C0();
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v3 = sub_257CF98BC();
  [v3 accessibilityActivationPoint];
  v5 = v4;
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.y = v9;
  result.x = v8;
  return result;
}

- (UIImage)largeContentImage
{
  v2 = sub_257D14B7C();

  return v2;
}

- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller
{
  interactionCopy = interaction;
  controllerCopy = controller;
  selfCopy = self;
  v9 = sub_257CFE4BC(interactionCopy);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_257CFD804(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  presentCopy = present;
  selfCopy = self;
  sub_257CFDB30(presentCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  endedCopy = ended;
  selfCopy = self;
  sub_257CFE6C4(cancelled);
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_257CFDEF8(interactionCopy);

  return v7;
}

@end