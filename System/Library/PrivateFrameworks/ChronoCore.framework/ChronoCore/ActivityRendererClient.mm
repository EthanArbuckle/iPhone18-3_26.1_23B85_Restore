@interface ActivityRendererClient
- (_TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient)init;
- (void)handleInteraction:(id)interaction authenticationPolicy:(id)policy action:(id)action handler:(id)handler;
- (void)reloadContent:(id)content reason:(id)reason;
- (void)reloadDescriptors:(id)descriptors;
- (void)setTaskPriority:(id)priority forSession:(id)session;
- (void)subscribe:(id)subscribe completion:(id)completion;
- (void)unsubscribe:(id)unsubscribe;
@end

@implementation ActivityRendererClient

- (_TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)subscribe:(id)subscribe completion:(id)completion
{
  v6 = _Block_copy(completion);
  subscribeCopy = subscribe;
  selfCopy = self;
  v8 = sub_224DA96D8();
  v10 = v9;

  _Block_copy(v6);
  sub_224D20EF8(v8, v10, selfCopy, v6);
  _Block_release(v6);
  _Block_release(v6);
  sub_224A78024(v8, v10);
}

- (void)unsubscribe:(id)unsubscribe
{
  unsubscribeCopy = unsubscribe;
  selfCopy = self;
  v6 = sub_224DA96D8();
  v8 = v7;

  v9 = *(&selfCopy->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v10 = selfCopy;
  sub_224D206E0(v6, v8, 0x7263736275736E75, 0xEB00000000656269, 0, 0, v10);

  sub_224A78024(v6, v8);
}

- (void)reloadDescriptors:(id)descriptors
{
  sub_224DAEE18();
  selfCopy = self;
  sub_224D1E4A8();
}

- (void)reloadContent:(id)content reason:(id)reason
{
  contentCopy = content;
  reasonCopy = reason;
  selfCopy = self;
  v9 = sub_224DA96D8();
  v11 = v10;

  v12 = *(&selfCopy->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v13 = reasonCopy;
  v14 = selfCopy;
  sub_224D20C10(v9, v11, 0x64616F6C6572, 0xE600000000000000, 0, 0, v13, v14, sub_224D1E684);

  sub_224A78024(v9, v11);
}

- (void)handleInteraction:(id)interaction authenticationPolicy:(id)policy action:(id)action handler:(id)handler
{
  v10 = _Block_copy(handler);
  interactionCopy = interaction;
  policyCopy = policy;
  actionCopy = action;
  selfCopy = self;
  v15 = sub_224DA96D8();
  v17 = v16;

  v18 = swift_allocObject();
  *(v18 + 16) = v10;
  v19 = *(&selfCopy->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v20 = swift_allocObject();
  *(v20 + 16) = sub_224B67834;
  *(v20 + 24) = v18;
  v21 = policyCopy;
  v22 = actionCopy;
  v23 = selfCopy;

  sub_224D20970(v15, v17, 0x64616F6C6572, 0xE600000000000000, sub_224B9D69C, v20, v22, v23, v21, sub_224B67834, v18);

  sub_224A78024(v15, v17);
}

- (void)setTaskPriority:(id)priority forSession:(id)session
{
  priorityCopy = priority;
  sessionCopy = session;
  selfCopy = self;
  v9 = sub_224DA96D8();
  v11 = v10;

  v12 = *(&selfCopy->super.isa + OBJC_IVAR____TtC10ChronoCoreP33_0AEA7E08BEDD54263986ABBCE596ECBB22ActivityRendererClient__queue);
  BSDispatchQueueAssert();
  v13 = priorityCopy;
  v14 = selfCopy;
  sub_224D20C10(v9, v11, 0x64616F6C6572, 0xE600000000000000, 0, 0, v13, v14, sub_224D1F058);

  sub_224A78024(v9, v11);
}

@end