@interface AutoSizingPresentationDelegate
- (_TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate)init;
- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5;
- (void)presentationControllerWillDismiss:(id)a3;
@end

@implementation AutoSizingPresentationDelegate

- (void)presentationController:(id)a3 willPresentWithAdaptiveStyle:(int64_t)a4 transitionCoordinator:(id)a5
{
  v7 = a3;
  swift_unknownObjectRetain();
  v8 = self;
  sub_1C2DA1F58(a5);

  swift_unknownObjectRelease();
}

- (void)presentationControllerWillDismiss:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_1C2DA0D38(v4);
}

- (_TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate)init
{
  ObjectType = swift_getObjectType();
  v4 = (&self->super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_updateContentViewHeight);
  *v4 = 0;
  v4[1] = 0;
  v5 = (&self->super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationWillStart);
  *v5 = 0;
  v5[1] = 0;
  v6 = (&self->super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_animationDidEnd);
  *v6 = 0;
  v6[1] = 0;
  v7 = (&self->super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_alongsideTransition);
  *v7 = 0;
  v7[1] = 0;
  *(&self->super.isa + OBJC_IVAR____TtC16CommunicationsUIP33_91F83FA22C2B2DF64A7BD3F45B8C097B30AutoSizingPresentationDelegate_isTransitioning) = 0;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(AutoSizingPresentationDelegate *)&v9 init];
}

@end