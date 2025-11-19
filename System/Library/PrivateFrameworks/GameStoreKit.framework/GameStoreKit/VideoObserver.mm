@interface VideoObserver
- (_TtC12GameStoreKit13VideoObserver)init;
@end

@implementation VideoObserver

- (_TtC12GameStoreKit13VideoObserver)init
{
  v3 = OBJC_IVAR____TtC12GameStoreKit13VideoObserver__changes;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F226B90);
  swift_allocObject();
  *(&self->super.isa + v3) = sub_24F922FC8();
  *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerSubscriptionsAdded) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_playerItemSubscriptionsAdded) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_subscriptions) = MEMORY[0x277D84FA0];
  v4 = (self + OBJC_IVAR____TtC12GameStoreKit13VideoObserver_timeObserver);
  v5 = type metadata accessor for VideoObserver();
  *v4 = 0u;
  v4[1] = 0u;
  v7.receiver = self;
  v7.super_class = v5;
  return [(VideoObserver *)&v7 init];
}

@end