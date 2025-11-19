@interface ActionsProvider
- (CNUICoreParentContainerProvider)containerProvider;
- (_TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider)init;
- (void)setContainerProvider:(id)a3;
- (void)setGameCenterPlayerViewWrapper:(id)a3;
@end

@implementation ActionsProvider

- (CNUICoreParentContainerProvider)containerProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setContainerProvider:(id)a3
{
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_containerProvider) = a3;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setGameCenterPlayerViewWrapper:(id)a3
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_gameCenterPlayerViewWrapper);
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_gameCenterPlayerViewWrapper) = a3;
  v3 = a3;
}

- (_TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider)init
{
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_containerProvider) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_gameCenterPlayerViewWrapper) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_shouldShowInlineActions) = 1;
  v3.receiver = self;
  v3.super_class = type metadata accessor for ActionsProvider();
  return [(ActionsProvider *)&v3 init];
}

@end