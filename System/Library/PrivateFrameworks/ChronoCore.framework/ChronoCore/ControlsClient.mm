@interface ControlsClient
- (_TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient)init;
- (void)allControlConfigurationsByHostWithCompletion:(id)completion;
- (void)fetchControlDescriptorsForExtensionBundleIdentifier:(id)identifier userInitiated:(id)initiated reason:(id)reason completion:(id)completion;
- (void)invalidateControlHost:(id)host;
- (void)performControlAction:(id)action completion:(id)completion;
- (void)reloadControlsForExtension:(id)extension kind:(id)kind reason:(id)reason;
- (void)sendPushUpdate:(id)update completion:(id)completion;
- (void)setEnvironmentModifiers:(id)modifiers forSession:(id)session;
- (void)unsubscribeFromSession:(id)session;
- (void)updateControlHost:(id)host activationState:(id)state;
- (void)updateControlHost:(id)host configuration:(id)configuration activationState:(id)state;
@end

@implementation ControlsClient

- (_TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendPushUpdate:(id)update completion:(id)completion
{
  v6 = _Block_copy(completion);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  updateCopy = update;
  selfCopy = self;
  BSDispatchQueueAssert();
  v9 = *__swift_project_boxed_opaque_existential_1(*(&selfCopy->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 37, (*(&selfCopy->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services))[40]);
  sub_224AB9A2C(updateCopy);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)reloadControlsForExtension:(id)extension kind:(id)kind reason:(id)reason
{
  v7 = sub_224DAEE18();
  v9 = v8;
  if (kind)
  {
    v10 = sub_224DAEE18();
    kind = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_224DAEE18();
  v14 = v13;
  selfCopy = self;
  sub_224D05BB4(v7, v9, v10, kind, v12, v14);
}

- (void)updateControlHost:(id)host configuration:(id)configuration activationState:(id)state
{
  v8 = sub_224DAEE18();
  v10 = v9;
  configurationCopy = configuration;
  stateCopy = state;
  selfCopy = self;
  sub_224D06134(v8, v10, configuration, stateCopy);
}

- (void)updateControlHost:(id)host activationState:(id)state
{
  v6 = sub_224DAEE18();
  v8 = v7;
  stateCopy = state;
  selfCopy = self;
  sub_224D06938(v6, v8, stateCopy);
}

- (void)invalidateControlHost:(id)host
{
  sub_224DAEE18();
  selfCopy = self;
  sub_224D0703C();
}

- (void)unsubscribeFromSession:(id)session
{
  sessionCopy = session;
  selfCopy = self;
  v5 = sub_224DA96D8();
  v7 = v6;

  sub_224D07718();
  sub_224A78024(v5, v7);
}

- (void)setEnvironmentModifiers:(id)modifiers forSession:(id)session
{
  modifiersCopy = modifiers;
  sessionCopy = session;
  selfCopy = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  v11 = sub_224DA96D8();
  v13 = v12;

  sub_224D08670(v8, v10);
  sub_224A78024(v11, v13);
  sub_224A78024(v8, v10);
}

- (void)performControlAction:(id)action completion:(id)completion
{
  v6 = _Block_copy(completion);
  actionCopy = action;
  selfCopy = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_224D08B58(v8, v10, sub_224B67834, v11);

  sub_224A78024(v8, v10);
}

- (void)fetchControlDescriptorsForExtensionBundleIdentifier:(id)identifier userInitiated:(id)initiated reason:(id)reason completion:(id)completion
{
  v8 = _Block_copy(completion);
  v9 = sub_224DAEE18();
  v11 = v10;
  v12 = sub_224DAEE18();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  initiatedCopy = initiated;
  selfCopy = self;
  sub_224D09098(v9, v11, initiatedCopy, v12, v14, sub_224B7AA68, v15);
}

- (void)allControlConfigurationsByHostWithCompletion:(id)completion
{
  v4 = _Block_copy(completion);
  _Block_copy(v4);
  selfCopy = self;
  sub_224D0DCD0(selfCopy, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end