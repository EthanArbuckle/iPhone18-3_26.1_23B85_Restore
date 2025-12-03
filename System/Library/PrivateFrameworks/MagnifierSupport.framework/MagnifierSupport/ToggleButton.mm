@interface ToggleButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (NSString)largeContentTitle;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport12ToggleButton)initWithFrame:(CGRect)frame;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation ToggleButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257CA3DC8();
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_257CA49C8();
}

- (_TtC16MagnifierSupport12ToggleButton)initWithFrame:(CGRect)frame
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityLabel
{
  sub_257D14A40();
  v2 = sub_257ECF4C0();

  return v2;
}

- (CGPoint)accessibilityActivationPoint
{
  selfCopy = self;
  v3 = sub_257CA4ED8();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result.y = v7;
  result.x = v6;
  return result;
}

- (NSString)accessibilityValue
{
  selfCopy = self;
  sub_257CA4FE8();
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

- (NSString)largeContentTitle
{
  selfCopy = self;
  v3 = sub_257CA0E28();
  text = [v3 text];

  if (text)
  {
    sub_257ECF500();

    text = sub_257ECF4C0();
  }

  else
  {
  }

  return text;
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
  v9 = sub_257CA6044(interactionCopy);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_257CA5454(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  presentCopy = present;
  selfCopy = self;
  sub_257CA5740(presentCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  endedCopy = ended;
  selfCopy = self;
  sub_257CA62DC(cancelled);
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_257CA5AC8(interactionCopy);

  return v7;
}

@end