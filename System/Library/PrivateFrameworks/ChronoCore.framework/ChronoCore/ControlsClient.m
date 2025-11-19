@interface ControlsClient
- (_TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient)init;
- (void)allControlConfigurationsByHostWithCompletion:(id)a3;
- (void)fetchControlDescriptorsForExtensionBundleIdentifier:(id)a3 userInitiated:(id)a4 reason:(id)a5 completion:(id)a6;
- (void)invalidateControlHost:(id)a3;
- (void)performControlAction:(id)a3 completion:(id)a4;
- (void)reloadControlsForExtension:(id)a3 kind:(id)a4 reason:(id)a5;
- (void)sendPushUpdate:(id)a3 completion:(id)a4;
- (void)setEnvironmentModifiers:(id)a3 forSession:(id)a4;
- (void)unsubscribeFromSession:(id)a3;
- (void)updateControlHost:(id)a3 activationState:(id)a4;
- (void)updateControlHost:(id)a3 configuration:(id)a4 activationState:(id)a5;
@end

@implementation ControlsClient

- (_TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sendPushUpdate:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = *(&self->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__queue);
  v8 = a3;
  v10 = self;
  BSDispatchQueueAssert();
  v9 = *__swift_project_boxed_opaque_existential_1(*(&v10->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services) + 37, (*(&v10->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_EA538E35880E8FB207AEB42F397305AE14ControlsClient__services))[40]);
  sub_224AB9A2C(v8);
  v6[2](v6, 0);

  _Block_release(v6);
}

- (void)reloadControlsForExtension:(id)a3 kind:(id)a4 reason:(id)a5
{
  v7 = sub_224DAEE18();
  v9 = v8;
  if (a4)
  {
    v10 = sub_224DAEE18();
    a4 = v11;
  }

  else
  {
    v10 = 0;
  }

  v12 = sub_224DAEE18();
  v14 = v13;
  v15 = self;
  sub_224D05BB4(v7, v9, v10, a4, v12, v14);
}

- (void)updateControlHost:(id)a3 configuration:(id)a4 activationState:(id)a5
{
  v8 = sub_224DAEE18();
  v10 = v9;
  v11 = a4;
  v12 = a5;
  v13 = self;
  sub_224D06134(v8, v10, a4, v12);
}

- (void)updateControlHost:(id)a3 activationState:(id)a4
{
  v6 = sub_224DAEE18();
  v8 = v7;
  v9 = a4;
  v10 = self;
  sub_224D06938(v6, v8, v9);
}

- (void)invalidateControlHost:(id)a3
{
  sub_224DAEE18();
  v4 = self;
  sub_224D0703C();
}

- (void)unsubscribeFromSession:(id)a3
{
  v4 = a3;
  v8 = self;
  v5 = sub_224DA96D8();
  v7 = v6;

  sub_224D07718();
  sub_224A78024(v5, v7);
}

- (void)setEnvironmentModifiers:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v14 = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  v11 = sub_224DA96D8();
  v13 = v12;

  sub_224D08670(v8, v10);
  sub_224A78024(v11, v13);
  sub_224A78024(v8, v10);
}

- (void)performControlAction:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v12 = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  v11 = swift_allocObject();
  *(v11 + 16) = v6;
  sub_224D08B58(v8, v10, sub_224B67834, v11);

  sub_224A78024(v8, v10);
}

- (void)fetchControlDescriptorsForExtensionBundleIdentifier:(id)a3 userInitiated:(id)a4 reason:(id)a5 completion:(id)a6
{
  v8 = _Block_copy(a6);
  v9 = sub_224DAEE18();
  v11 = v10;
  v12 = sub_224DAEE18();
  v14 = v13;
  v15 = swift_allocObject();
  *(v15 + 16) = v8;
  v16 = a4;
  v17 = self;
  sub_224D09098(v9, v11, v16, v12, v14, sub_224B7AA68, v15);
}

- (void)allControlConfigurationsByHostWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  _Block_copy(v4);
  v5 = self;
  sub_224D0DCD0(v5, v4);
  _Block_release(v4);
  _Block_release(v4);
}

@end