@interface SegmentedButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)a3;
- (BOOL)clickPresentationInteractionShouldPresent:(id)a3;
- (_TtC16MagnifierSupport15SegmentedButton)initWithFrame:(CGRect)a3;
- (id)clickPresentationInteraction:(id)a3 presentationForPresentingViewController:(id)a4;
- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4;
- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4;
- (void)didSelectSegment:(id)a3;
- (void)didTap:(id)a3;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation SegmentedButton

- (void)layoutSubviews
{
  v2 = self;
  sub_257DBB364();
}

- (void)didTap:(id)a3
{
  v5 = self + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    v8 = a3;
    v9 = self;
    v7();

    swift_unknownObjectRelease();
  }
}

- (void)didSelectSegment:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DBB670();
}

- (void)removeFromSuperview
{
  v2 = self;
  sub_257DBBA54();
}

- (_TtC16MagnifierSupport15SegmentedButton)initWithFrame:(CGRect)a3
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
  v9 = sub_257DBCA00(v6);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DBBF04(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_257DBC1E8(v4);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)a3 wasCancelled:(BOOL)a4
{
  v6 = a3;
  v7 = self;
  sub_257DBCC98(a4);
}

- (id)clickPresentationInteraction:(id)a3 previewForHighlightingAtLocation:(CGPoint)a4
{
  v5 = a3;
  v6 = self;
  v7 = sub_257DBC568(v5);

  return v7;
}

@end