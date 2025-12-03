@interface NotificationService
- (_TtC7NewsUI219NotificationService)init;
- (void)handleEngagementRequest:(id)request completion:(id)completion;
@end

@implementation NotificationService

- (_TtC7NewsUI219NotificationService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)handleEngagementRequest:(id)request completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = swift_allocObject();
  *(v7 + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_21980F6AC(requestCopy, sub_219810654, v7);
}

@end