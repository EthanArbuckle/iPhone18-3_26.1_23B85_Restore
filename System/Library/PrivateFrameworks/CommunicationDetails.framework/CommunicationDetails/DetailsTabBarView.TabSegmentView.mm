@interface DetailsTabBarView.TabSegmentView
- (BOOL)isAccessibilityElement;
- (CGSize)sizeThatFits:(CGSize)fits;
- (NSString)accessibilityLabel;
- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithCoder:(id)coder;
- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)label;
- (void)setIsAccessibilityElement:(BOOL)element;
@end

@implementation DetailsTabBarView.TabSegmentView

- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v7 = DetailsTabBarView.TabSegmentView.init(frame:)(x, y, width, height);

  return v7;
}

- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  coderCopy = coder;
  specialized DetailsTabBarView.TabSegmentView.init(coder:)();
}

- (CGSize)sizeThatFits:(CGSize)fits
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  selfCopy = self;
  v5 = specialized DetailsTabBarView.TabSegmentView.sizeThatFits(_:)();
  v7 = v6;

  v8 = v5;
  v9 = v7;
  result.height = v9;
  result.width = v8;
  return result;
}

- (void)layoutSubviews
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for DetailsTabBarView.TabSegmentView();
  selfCopy = self;
  [(DetailsTabBarView.TabSegmentView *)&v6 layoutSubviews];
  v4 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label;
  v5 = *(&selfCopy->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label);
  [(DetailsTabBarView.TabSegmentView *)selfCopy bounds:v6.receiver];
  [v5 setFrame_];
  [*(&selfCopy->super.super.super.isa + v4) setIsAccessibilityElement_];
}

- (BOOL)isAccessibilityElement
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *((*MEMORY[0x1E69E7D40] & self->super.super.super.isa) + 0x80);
  selfCopy = self;
  v5 = v3();

  return (v5 & 1) == 0;
}

- (void)setIsAccessibilityElement:(BOOL)element
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

- (NSString)accessibilityLabel
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v3 = *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label);
  selfCopy = self;
  text = [v3 text];
  if (text)
  {
    v6 = text;
    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    v10 = MEMORY[0x193AEA8E0](v7, v9);
  }

  else
  {

    v10 = 0;
  }

  return v10;
}

- (void)setAccessibilityLabel:(id)label
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }
}

@end