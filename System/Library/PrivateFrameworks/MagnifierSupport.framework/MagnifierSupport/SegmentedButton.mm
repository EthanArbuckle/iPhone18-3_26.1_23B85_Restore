@interface SegmentedButton
- (BOOL)clickPresentationInteractionShouldBegin:(id)begin;
- (BOOL)clickPresentationInteractionShouldPresent:(id)present;
- (_TtC16MagnifierSupport15SegmentedButton)initWithFrame:(CGRect)frame;
- (id)clickPresentationInteraction:(id)interaction presentationForPresentingViewController:(id)controller;
- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location;
- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled;
- (void)didSelectSegment:(id)segment;
- (void)didTap:(id)tap;
- (void)layoutSubviews;
- (void)removeFromSuperview;
@end

@implementation SegmentedButton

- (void)layoutSubviews
{
  selfCopy = self;
  sub_257DBB364();
}

- (void)didTap:(id)tap
{
  v5 = self + OBJC_IVAR____TtC16MagnifierSupport15SegmentedButton_delegate;
  if (swift_unknownObjectWeakLoadStrong())
  {
    v6 = *(v5 + 1);
    swift_getObjectType();
    v7 = *(v6 + 8);
    tapCopy = tap;
    selfCopy = self;
    v7();

    swift_unknownObjectRelease();
  }
}

- (void)didSelectSegment:(id)segment
{
  segmentCopy = segment;
  selfCopy = self;
  sub_257DBB670();
}

- (void)removeFromSuperview
{
  selfCopy = self;
  sub_257DBBA54();
}

- (_TtC16MagnifierSupport15SegmentedButton)initWithFrame:(CGRect)frame
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
  v9 = sub_257DBCA00(interactionCopy);

  return v9;
}

- (BOOL)clickPresentationInteractionShouldBegin:(id)begin
{
  beginCopy = begin;
  selfCopy = self;
  sub_257DBBF04(beginCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (BOOL)clickPresentationInteractionShouldPresent:(id)present
{
  presentCopy = present;
  selfCopy = self;
  sub_257DBC1E8(presentCopy);
  LOBYTE(self) = v6;

  return self & 1;
}

- (void)clickPresentationInteractionEnded:(id)ended wasCancelled:(BOOL)cancelled
{
  endedCopy = ended;
  selfCopy = self;
  sub_257DBCC98(cancelled);
}

- (id)clickPresentationInteraction:(id)interaction previewForHighlightingAtLocation:(CGPoint)location
{
  interactionCopy = interaction;
  selfCopy = self;
  v7 = sub_257DBC568(interactionCopy);

  return v7;
}

@end