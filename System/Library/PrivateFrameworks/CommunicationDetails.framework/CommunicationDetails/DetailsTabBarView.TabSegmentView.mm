@interface DetailsTabBarView.TabSegmentView
- (BOOL)isAccessibilityElement;
- (CGSize)sizeThatFits:(CGSize)a3;
- (NSString)accessibilityLabel;
- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithCoder:(id)a3;
- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithFrame:(CGRect)a3;
- (void)layoutSubviews;
- (void)setAccessibilityLabel:(id)a3;
- (void)setIsAccessibilityElement:(BOOL)a3;
@end

@implementation DetailsTabBarView.TabSegmentView

- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithFrame:(CGRect)a3
{
  height = a3.size.height;
  width = a3.size.width;
  y = a3.origin.y;
  x = a3.origin.x;
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

- (_TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView)initWithCoder:(id)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = a3;
  specialized DetailsTabBarView.TabSegmentView.init(coder:)();
}

- (CGSize)sizeThatFits:(CGSize)a3
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v4 = self;
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
  v3 = self;
  [(DetailsTabBarView.TabSegmentView *)&v6 layoutSubviews];
  v4 = OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label;
  v5 = *(&v3->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView14TabSegmentView_label);
  [(DetailsTabBarView.TabSegmentView *)v3 bounds:v6.receiver];
  [v5 setFrame_];
  [*(&v3->super.super.super.isa + v4) setIsAccessibilityElement_];
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
  v4 = self;
  v5 = v3();

  return (v5 & 1) == 0;
}

- (void)setIsAccessibilityElement:(BOOL)a3
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
  v4 = self;
  v5 = [v3 text];
  if (v5)
  {
    v6 = v5;
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

- (void)setAccessibilityLabel:(id)a3
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