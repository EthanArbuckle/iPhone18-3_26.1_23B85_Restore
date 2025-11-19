@interface ToggleButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityLabel;
- (NSString)accessibilityValue;
- (NSString)largeContentTitle;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport12ToggleButton)initWithFrame:(CGRect)a3;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation ToggleButton

- (void)layoutSubviews
{
  v2 = self;
  sub_257CA3DC8();
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_257CA49C8();
}

- (_TtC16MagnifierSupport12ToggleButton)initWithFrame:(CGRect)a3
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
  v2 = self;
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
  v2 = self;
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
  v2 = self;
  v3 = sub_257CA0E28();
  v4 = [v3 text];

  if (v4)
  {
    sub_257ECF500();

    v4 = sub_257ECF4C0();
  }

  else
  {
  }

  return v4;
}

- (UIImage)largeContentImage
{
  v2 = sub_257D14B7C();

  return v2;
}

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257CA6044(v6);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CA5454(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CA5740(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_257CA62DC(a4);
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_257CA5AC8(v5);

  return v7;
}

@end