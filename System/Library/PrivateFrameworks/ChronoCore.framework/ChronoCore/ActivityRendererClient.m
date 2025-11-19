@interface ActivityRendererClient
- (_TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient)init;
- (void)handleInteraction:(id)a3 authenticationPolicy:(id)a4 action:(id)a5 handler:(id)a6;
- (void)reloadContent:(id)a3 reason:(id)a4;
- (void)reloadDescriptors:(id)a3;
- (void)setTaskPriority:(id)a3 forSession:(id)a4;
- (void)subscribe:(id)a3 completion:(id)a4;
- (void)unsubscribe:(id)a3;
@end

@implementation ActivityRendererClient

- (_TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscribe:(id)a3 completion:(id)a4
{
  v6 = _Block_copy(a4);
  v7 = a3;
  v11 = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  _Block_copy(v6);
  sub_224D20EF8(v8, v10, v11, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_224A78024(v8, v10);
}

- (void)unsubscribe:(id)a3
{
  v4 = a3;
  v5 = self;
  v6 = sub_224DA96D8();
  v8 = v7;

  v9 = *(&v5->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v10 = v5;
  sub_224D206E0(v6, v8, 0x7263736275736E75, 0xEB00000000656269, 0, 0, v10);

  sub_224A78024(v6, v8);
}

- (void)reloadDescriptors:(id)a3
{
  sub_224DAEE18();
  v4 = self;
  sub_224D1E4A8();
}

- (void)reloadContent:(id)a3 reason:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_224DA96D8();
  v11 = v10;

  v12 = *(&v8->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v13 = v7;
  v14 = v8;
  sub_224D20C10(v9, v11, 0x64616F6C6572, 0xE600000000000000, 0, 0, v13, v14, sub_224D1E684);

  sub_224A78024(v9, v11);
}

- (void)handleInteraction:(id)a3 authenticationPolicy:(id)a4 action:(id)a5 handler:(id)a6
{
  v10 = _Block_copy(a6);
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = self;
  v15 = sub_224DA96D8();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  v19 = *(&v14->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_224B67834;
  *(v20 + 24) = v18;
  v21 = v12;
  v22 = v13;
  v23 = v14;

  sub_224D20970(v15, v17, 0x64616F6C6572, 0xE600000000000000, sub_224B9D69C, v20, v22, v23, v21, sub_224B67834, v18);

  sub_224A78024(v15, v17);
}

- (void)setTaskPriority:(id)a3 forSession:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_224DA96D8();
  v11 = v10;

  v12 = *(&v8->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v13 = v6;
  v14 = v8;
  sub_224D20C10(v9, v11, 0x64616F6C6572, 0xE600000000000000, 0, 0, v13, v14, sub_224D1F058);

  sub_224A78024(v9, v11);
}

@end