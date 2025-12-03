@interface ActionsProvider
- (CNUICoreParentContainerProvider)containerProvider;
- (_TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider)init;
- (void)setContainerProvider:(id)provider;
- (void)setGameCenterPlayerViewWrapper:(id)wrapper;
@end

@implementation ActionsProvider

- (CNUICoreParentContainerProvider)containerProvider
{
  v2 = swift_unknownObjectRetain();

  return v2;
}

- (void)setContainerProvider:(id)provider
{
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_containerProvider) = provider;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (void)setGameCenterPlayerViewWrapper:(id)wrapper
{
  v4 = *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_gameCenterPlayerViewWrapper);
  *(&self->super.isa + OBJC_IVAR____TtC14ContactsUICoreP33_B36447D588C06954708674886B340C6315ActionsProvider_gameCenterPlayerViewWrapper) = wrapper;
  wrapperCopy = wrapper;
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