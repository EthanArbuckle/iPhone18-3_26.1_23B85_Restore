@interface SliderButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (BOOL)gestureRecognizerShouldBegin:(id)a3;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport12SliderButton)initWithFrame:(CGRect)a3;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)didTap:(id)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation SliderButton

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257C3E1BC(v6);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C3D7D8(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C3DAC0(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_257C3E454(a4);
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_257C3DE40(v5);

  return v7;
}

- (void)layoutSubviews
{
  v2 = self;
  sub_257D4ACB0();
}

- (void)didTap:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257D4B898();
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_257D4AF50();
}

- (_TtC16MagnifierSupport12SliderButton)initWithFrame:(CGRect)a3
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

- (BOOL)gestureRecognizerShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  LOBYTE(self) = sub_257D4B564(v4);

  return self & 1;
}

@end