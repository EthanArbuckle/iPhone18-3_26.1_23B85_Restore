@interface DetailsTabBarView.TabsView
- (CGSize)sizeThatFits:(CGSize)fits;
- (_TtCC20CommunicationDetails17DetailsTabBarView8TabsView)initWithCoder:(id)coder;
- (_TtCC20CommunicationDetails17DetailsTabBarView8TabsView)initWithFrame:(CGRect)frame;
- (void)layoutSubviews;
@end

@implementation DetailsTabBarView.TabsView

- (_TtCC20CommunicationDetails17DetailsTabBarView8TabsView)initWithFrame:(CGRect)frame
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

  v8 = self + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_accessibilitySelectedTab;
  *v8 = 0u;
  *(v8 + 1) = 0u;
  *(v8 + 4) = 0;
  v9 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabs) = MEMORY[0x1E69E7CC0];
  v10 = self + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration;
  memset(v17, 0, sizeof(v17));
  v18 = 1;
  DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v17, v15);
  v11 = v15[1];
  *v10 = v15[0];
  *(v10 + 1) = v11;
  v10[32] = v16;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews) = v9;
  v14.receiver = self;
  v14.super_class = type metadata accessor for DetailsTabBarView.TabsView();
  height = [(DetailsTabBarView.TabsView *)&v14 initWithFrame:x, y, width, height];
  [(DetailsTabBarView.TabsView *)height setPreservesSuperviewLayoutMargins:0];

  return height;
}

- (_TtCC20CommunicationDetails17DetailsTabBarView8TabsView)initWithCoder:(id)coder
{
  type metadata accessor for MainActor();
  static MainActor.shared.getter();
  dispatch thunk of Actor.unownedExecutor.getter();
  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v5 = self + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_accessibilitySelectedTab;
  *v5 = 0u;
  *(v5 + 1) = 0u;
  *(v5 + 4) = 0;
  v6 = MEMORY[0x1E69E7CC0];
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabs) = MEMORY[0x1E69E7CC0];
  v7 = self + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_configuration;
  memset(v13, 0, sizeof(v13));
  v14 = 1;
  coderCopy = coder;
  DetailsTabBarView.Configuration.init(preferredLayoutMargins:)(v13, v11);
  v9 = v11[1];
  *v7 = v11[0];
  *(v7 + 1) = v9;
  v7[32] = v12;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabsStyle) = 0;
  *(&self->super.super.super.isa + OBJC_IVAR____TtCC20CommunicationDetails17DetailsTabBarView8TabsView_tabViews) = v6;
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
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
  specialized DetailsTabBarView.TabsView.sizeThatFits(_:)();
  v6 = v5;
  v8 = v7;

  v9 = v6;
  v10 = v8;
  result.height = v10;
  result.width = v9;
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

  selfCopy = self;
  DetailsTabBarView.TabsView.layoutSubviews()();
}

@end