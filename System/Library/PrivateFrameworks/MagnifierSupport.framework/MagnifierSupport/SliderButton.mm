@interface SliderButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (BOOL)gestureRecognizerShouldBegin:(id)begin;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport12SliderButton)initWithFrame:(CGRect)frame;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)didTap:(id)tap;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation SliderButton

- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller
{
  interactionCopy = interaction;
  controllerCopy = controller;
  selfCopy = self;
  v9 = sub_257C3E1BC(interactionCopy);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_257C3D7D8(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  presentCopy = present;
  selfCopy = self;
  sub_257C3DAC0(presentCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  endedCopy = ended;
  selfCopy = self;
  sub_257C3E454(cancelled);
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_257C3DE40(interactionCopy);

  return v7;
}

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257D4ACB0();
}

- (void)didTap:(id)tap
{
  tapCopy = tap;
  selfCopy = self;
  sub_257D4B898();
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_257D4AF50();
}

- (_TtC16MagnifierSupport12SliderButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (UIImage)largeContentImage
{
  v2 = sub_257D14B7C();

  return v2;
}

- (BOOL)gestureRecognizerShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  LOBYTE(self) = sub_257D4B564(beginCopy);

  return self & 1;
}

@end