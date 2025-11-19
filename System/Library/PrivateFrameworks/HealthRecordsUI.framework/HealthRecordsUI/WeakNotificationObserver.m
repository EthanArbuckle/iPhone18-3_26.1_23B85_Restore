@interface WeakNotificationObserver
- (_TtC15HealthRecordsUI24WeakNotificationObserver)init;
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
  v4 = sub_1D138D01C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18 - v9;
  sub_1D138CFDC();
  v12 = *(&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_block);
  v11 = *&self->scheduler[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_block];
  v13 = *&self->scheduler[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_scheduler + 24];
  v19 = *&self->scheduler[OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_scheduler + 16];
  v18 = __swift_project_boxed_opaque_existential_1Tm((&self->super.isa + OBJC_IVAR____TtC15HealthRecordsUI24WeakNotificationObserver_scheduler), v19);
  (*(v5 + 16))(v7, v10, v4);
  v14 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 16) = v12;
  *(v15 + 24) = v11;
  (*(v5 + 32))(v15 + v14, v7, v4);
  v16 = *(v13 + 8);
  v17 = self;

  v16(sub_1D1280054, v15, v19, v13);

  (*(v5 + 8))(v10, v4);
}

- (_TtC15HealthRecordsUI24WeakNotificationObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end