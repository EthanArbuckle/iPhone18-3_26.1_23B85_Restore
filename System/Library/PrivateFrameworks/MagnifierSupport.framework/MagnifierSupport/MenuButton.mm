@interface MenuButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (CGPoint)accessibilityActivationPoint;
- (NSString)accessibilityValue;
- (UIImage)largeContentImage;
- (_TtC16MagnifierSupport10MenuButton)initWithFrame:(CGRect)a3;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)didTap:(id)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation MenuButton

- (void)layoutSubviews
{
  v2 = self;
  sub_257CFBAB0();
}

- (void)didTap:(id)a3
{
  if (a3)
  {
    v4 = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v6, 0, sizeof(v6));
    v5 = self;
  }

  sub_257CFCE0C();

  sub_257BE4084(v6, &unk_27F8F62F0);
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_257CFD0AC();
}

- (_TtC16MagnifierSupport10MenuButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (NSString)accessibilityValue
{
  v2 = self;
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
  v2 = self;
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

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257CFE4BC(v6);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CFD804(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257CFDB30(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_257CFE6C4(a4);
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_257CFDEF8(v5);

  return v7;
}

@end