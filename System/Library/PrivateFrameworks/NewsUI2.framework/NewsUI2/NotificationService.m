@interface NotificationService
- (_TtC7NewsUI219NotificationService)init;
- (void)handleEngagementRequest:(id)a3 completion:(id)a4;
@end

@implementation NotificationService

- (_TtC7NewsUI219NotificationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleEngagementRequest:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  v8 = a3;
  v9 = self;
  sub_21980F6AC(v8, sub_219810654, v7);
}

@end