@interface SwitchingContainerView
- (_TtC16CommunicationsUI22SwitchingContainerView)initWithFrame:(CGRect)frame;
@end

@implementation SwitchingContainerView

- (_TtC16CommunicationsUI22SwitchingContainerView)initWithFrame:(CGRect)frame
{
  height = frame.size.height;
  width = frame.size.width;
  y = frame.origin.y;
  x = frame.origin.x;
  v7 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_views) = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_viewsConstraints) = v7;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentView) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtC16CommunicationsUI22SwitchingContainerView_currentConstraints) = 0;
  v9.receiver = self;
  v9.super_class = type metadata accessor for SwitchingContainerView();
  return [(SwitchingContainerView *)&v9 initWithFrame:x, y, width, height];
}

@end