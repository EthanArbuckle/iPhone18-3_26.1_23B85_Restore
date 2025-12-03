@interface NDScoredNotificationPool
- (NDScoredNotificationPool)init;
- (void)enumerateItemsUsingBlock:(id)block;
- (void)refreshIfNeededWithCompletionHandler:(id)handler;
- (void)refreshIfOlderThan:(NSDate *)than completionHandler:(id)handler;
@end

@implementation NDScoredNotificationPool

- (void)enumerateItemsUsingBlock:(id)block
{
  v6 = _Block_copy(block);
  v4 = *(&self->super.isa + OBJC_IVAR___NDScoredNotificationPool_accessQueue);
  selfCopy = self;
  OS_dispatch_queue.sync<A>(execute:)();

  _Block_release(v6);
}

- (void)refreshIfNeededWithCompletionHandler:(id)handler
{
  v5 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(handler);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10005BD20;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10005BD28;
  v13[5] = v12;
  selfCopy = self;
  sub_10004039C(0, 0, v8, &unk_10005BD30, v13);
}

- (void)refreshIfOlderThan:(NSDate *)than completionHandler:(id)handler
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = than;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10005BC78;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10005A958;
  v15[5] = v14;
  thanCopy = than;
  selfCopy = self;
  sub_10004039C(0, 0, v10, &unk_10005A960, v15);
}

- (NDScoredNotificationPool)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end