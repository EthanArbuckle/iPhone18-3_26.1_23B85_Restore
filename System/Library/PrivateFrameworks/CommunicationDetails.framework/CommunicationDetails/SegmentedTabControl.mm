@interface SegmentedTabControl
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtC20CommunicationDetails19SegmentedTabControl)initWithCoder:(id)coder;
- (_TtC20CommunicationDetails19SegmentedTabControl)initWithFrame:(CGRect)frame;
@end

@implementation SegmentedTabControl

- (_TtC20CommunicationDetails19SegmentedTabControl)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastLayoutBounds;
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 1;
  v5 = self + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_lastIntrinsicSize;
  *v5 = 0;
  *(v5 + 1) = 0;
  v5[16] = 1;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___scrollView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl____lazy_storage___segmentedControl) = 0;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  width = fits.width;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = *(&self->super.super._responderFlags + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide) + *(&self->super.super._responderFlags + OBJC_IVAR____TtC20CommunicationDetails19SegmentedTabControl_styleGuide);
  selfCopy = self;
  v7 = SegmentedTabControl.segmentedControl.getter();
  [v7 intrinsicContentSize];
  v9 = v8;

  v10 = v5 + v9;
  v11 = width;
  result.height = v10;
  result.width = v11;
  return result;
}

- (_TtC20CommunicationDetails19SegmentedTabControl)initWithFrame:(CGRect)frame
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end