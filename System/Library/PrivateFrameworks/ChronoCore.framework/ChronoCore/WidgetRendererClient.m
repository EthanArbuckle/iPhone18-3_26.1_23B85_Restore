@interface WidgetRendererClient
- (_TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient)init;
- (void)handleInteraction:(id)a3 authenticationPolicy:(id)a4 action:(id)a5 handler:(id)a6;
- (void)reloadWidget:(id)a3 reason:(id)a4;
- (void)reloadWidgetIfFailed:(id)a3 reason:(id)a4;
- (void)setEnvironmentModifiers:(id)a3 forSession:(id)a4;
- (void)setVisiblySettled:(id)a3 forSession:(id)a4;
- (void)setWidgetTaskPriority:(id)a3 forSession:(id)a4;
- (void)subscribe:(id)a3 completion:(id)a4;
- (void)unsubscribe:(id)a3;
@end

@implementation WidgetRendererClient

- (void)setVisiblySettled:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224A6E6A4(v6, v7);
}

- (void)subscribe:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  _Block_copy(v6);
  sub_224A73F30(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_224A78024(v8, v10);
}

- (void)reloadWidget:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224A85004(v6, v7);
}

- (void)setWidgetTaskPriority:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224A8E510(v6, v7);
}

- (_TtC10ChronoCoreP33_731F44D3DADC24C2E2FB65578CCF91B120WidgetRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)unsubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_224CCAD70(v4);
}

- (void)reloadWidgetIfFailed:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_224CCB034(v6, v7);
}

- (void)handleInteraction:(id)a3 authenticationPolicy:(id)a4 action:(id)a5 handler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = self;
  sub_224CCB1A4(v12, v13, v14, sub_224B67834, v11);
}

- (void)setEnvironmentModifiers:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11 = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  sub_224CCB640(v8, v10, v7);
  sub_224A78024(v8, v10);
}

@end