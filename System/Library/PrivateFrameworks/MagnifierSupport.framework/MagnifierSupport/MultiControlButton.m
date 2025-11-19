@interface MultiControlButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (_TtC16MagnifierSupport18MultiControlButton)initWithFrame:(CGRect)a3;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)didTap:(id)a3;
- (void)layoutSubviews;
@end

@implementation MultiControlButton

- (void)addTarget:(id)a3 action:(SEL)a4 forControlEvents:(unint64_t)a5
{
  if (a3)
  {
    v8 = self;
    swift_unknownObjectRetain();
    sub_257ED0160();
    swift_unknownObjectRelease();
  }

  else
  {
    memset(v10, 0, sizeof(v10));
    v9 = self;
  }

  sub_257C3BC80(v10, a4, a5);

  sub_257C3A464(v10);
}

- (void)layoutSubviews
{
  v2 = self;
  sub_257C3BE6C();
}

- (void)didTap:(id)a3
{
  v4 = self + OBJC_IVAR____TtC16MagnifierSupport18MultiControlButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v5 = *(v4 + 1);
    swift_getObjectType();
    v6 = *(v5 + 8);
    v7 = self;
    v6();
    swift_unknownObjectRelease();
  }
}

- (_TtC16MagnifierSupport18MultiControlButton)initWithFrame:(CGRect)a3
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_257C3D338(v6);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C3C858(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257C3CB3C(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_257C3D540(a4);
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_257C3CEBC(v5);

  return v7;
}

@end