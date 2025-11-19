@interface WeakNotificationObserver
- (_TtC12GameStoreKit24WeakNotificationObserver)init;
- (void)dealloc;
- (void)didReceiveWithNotification:(id)a3;
@end

@implementation WeakNotificationObserver

- (void)dealloc
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v4 = self;
  if (Strong)
  {
    [Strong removeObserver_];
  }

  v5.receiver = v4;
  v5.super_class = type metadata accessor for WeakNotificationObserver();
  [(WeakNotificationObserver *)&v5 dealloc];
}

- (void)didReceiveWithNotification:(id)a3
{
  v4 = sub_24F91EB58();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v17 - v9;
  sub_24F91EB08();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_block);
  v11 = *&self->scheduler[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_block];
  v13 = *&self->scheduler[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler + 16];
  v17[1] = *&self->scheduler[OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler + 24];
  v17[0] = __swift_project_boxed_opaque_existential_1((&self->super.isa + OBJC_IVAR____TtC12GameStoreKit24WeakNotificationObserver_scheduler), v13);
  (*(v5 + 16))(v7, v10, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  (*(v5 + 32))(v15 + v14, v7, v4);
  v16 = self;

  sub_24F928C78();

  (*(v5 + 8))(v10, v4);
}

- (_TtC12GameStoreKit24WeakNotificationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end