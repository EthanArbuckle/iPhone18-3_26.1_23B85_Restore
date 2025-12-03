@interface HealthAppOrchestrationServer
- (_TtC14HealthPlatform28HealthAppOrchestrationServer)init;
- (id)remote_runForegroundGenerationWithCompletion:(id)completion;
- (void)remote_cancelAllGenerationWithCompletion:(id)completion;
- (void)remote_deleteCacheAndTerminateWithCompletion:(id)completion;
- (void)remote_fetchOrchestrationGraphWithCompletion:(id)completion;
- (void)remote_fetchOrchestrationStatusWithCompletion:(id)completion;
- (void)remote_fireOnceWithCompletion:(id)completion;
- (void)remote_requestBackgroundGenerationForAllModelsAfterUnlockWithCompletion:(id)completion;
- (void)remote_requestBackgroundGenerationForFeedItemsAfterUnlockWithCompletion:(id)completion;
- (void)remote_resetAndFireWithCompletion:(id)completion;
- (void)remote_runBackgroundGenerationWithPlugins:(id)plugins commitAsUrgent:(BOOL)urgent generationType:(unint64_t)type completion:(id)completion;
- (void)remote_runOrRequestBackgroundGenerationWithCompletion:(id)completion;
@end

@implementation HealthAppOrchestrationServer

- (void)remote_fireOnceWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2284FD940;
  *(v6 + 24) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 8);
  selfCopy = self;

  v10(sub_2284354D8, v6, ObjectType, v8);
}

- (void)remote_resetAndFireWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2284FD940;
  *(v6 + 24) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 16);
  selfCopy = self;

  v10(sub_2284354D8, v6, ObjectType, v8);
}

- (void)remote_fetchOrchestrationStatusWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v6 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 24);
  selfCopy = self;
  v8(ObjectType, v6);
  v10 = sub_22855D17C();

  v4[2](v4, v10);

  _Block_release(v4);
}

- (void)remote_fetchOrchestrationGraphWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v6 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 32);
  selfCopy = self;
  v8(ObjectType, v6);
  v10 = sub_22855D39C();

  v4[2](v4, v10);

  _Block_release(v4);
}

- (void)remote_deleteCacheAndTerminateWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22847F270;
  *(v6 + 24) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 40);
  selfCopy = self;

  v10(sub_22850C484, v6, ObjectType, v8);
}

- (void)remote_cancelAllGenerationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v6 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 48);
  selfCopy = self;
  v8(ObjectType, v6);
  v4[2](v4);

  _Block_release(v4);
}

- (id)remote_runForegroundGenerationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v7 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22850C488;
  *(v9 + 24) = v5;
  v10 = *(v7 + 56);
  selfCopy = self;

  v12 = v10(sub_22850C480, v9, ObjectType, v7);

  return v12;
}

- (void)remote_runBackgroundGenerationWithPlugins:(id)plugins commitAsUrgent:(BOOL)urgent generationType:(unint64_t)type completion:(id)completion
{
  urgentCopy = urgent;
  v8 = _Block_copy(completion);
  if (plugins)
  {
    v9 = sub_22855D3AC();
  }

  else
  {
    v9 = 0;
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v11 = swift_allocObject();
  *(v11 + 16) = sub_22847F2DC;
  *(v11 + 24) = v10;
  v13 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v12 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v14 = swift_allocObject();
  *(v14 + 16) = sub_2284354C8;
  *(v14 + 24) = v11;
  v15 = *(v12 + 64);
  selfCopy = self;

  v15(v9, urgentCopy, type, sub_22850C480, v14, ObjectType, v12);
}

- (void)remote_requestBackgroundGenerationForFeedItemsAfterUnlockWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v6 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 72);
  selfCopy = self;
  v8(ObjectType, v6);
  v4[2](v4);

  _Block_release(v4);
}

- (void)remote_requestBackgroundGenerationForAllModelsAfterUnlockWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v6 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v8 = *(v6 + 80);
  selfCopy = self;
  v8(ObjectType, v6);
  v4[2](v4);

  _Block_release(v4);
}

- (void)remote_runOrRequestBackgroundGenerationWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_2284FD940;
  *(v6 + 24) = v5;
  v7 = *(&self->super.isa + OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator);
  v8 = *&self->protectedState[OBJC_IVAR____TtC14HealthPlatform28HealthAppOrchestrationServer_coordinator];
  ObjectType = swift_getObjectType();
  v10 = *(v8 + 88);
  selfCopy = self;

  v10(sub_2284354D8, v6, ObjectType, v8);
}

- (_TtC14HealthPlatform28HealthAppOrchestrationServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end