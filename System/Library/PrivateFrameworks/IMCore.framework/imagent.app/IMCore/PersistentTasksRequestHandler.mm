@interface PersistentTasksRequestHandler
- (_TtC7imagent29PersistentTasksRequestHandler)init;
- (void)addPersistentTaskExecutorMonitor:(id)a3 withID:(id)a4;
- (void)ensureSchedulingForBackgroundWorkRefreshingTaskReports:(BOOL)a3 completionHandler:(id)a4;
- (void)removePersistentTaskExecutorMonitorWithID:(id)a3;
- (void)resumeExecutorWithGroupName:(id)a3 lane:(unint64_t)a4 completionHandler:(id)a5;
- (void)runExecutorWithTaskLimit:(int64_t)a3 groupName:(id)a4 lane:(unint64_t)a5 completionHandler:(id)a6;
- (void)updateExecutorStateWithCompletionHandler:(id)a3;
@end

@implementation PersistentTasksRequestHandler

- (_TtC7imagent29PersistentTasksRequestHandler)init
{
  *(&self->super.isa + OBJC_IVAR____TtC7imagent29PersistentTasksRequestHandler_requiredCapabilities) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC7imagent29PersistentTasksRequestHandler_monitors) = &_swiftEmptySetSingleton;
  v3.receiver = self;
  v3.super_class = type metadata accessor for PersistentTasksRequestHandler();
  return [(PersistentTasksRequestHandler *)&v3 init];
}

- (void)runExecutorWithTaskLimit:(int64_t)a3 groupName:(id)a4 lane:(unint64_t)a5 completionHandler:(id)a6
{
  v9 = _Block_copy(a6);
  v10 = sub_100054164();
  v12 = v11;
  _Block_copy(v9);
  v13 = self;
  sub_10004E4D0(a3, v10, v12, a5, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)resumeExecutorWithGroupName:(id)a3 lane:(unint64_t)a4 completionHandler:(id)a5
{
  v7 = _Block_copy(a5);
  v8 = sub_100054164();
  v10 = v9;
  _Block_copy(v7);
  v11 = self;
  sub_10004E694(v8, v10, a4, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)addPersistentTaskExecutorMonitor:(id)a3 withID:(id)a4
{
  v6 = sub_100054164();
  v8 = v7;
  swift_unknownObjectRetain();
  v9 = self;
  sub_10004CA9C(a3, v6, v8);
  swift_unknownObjectRelease();
}

- (void)removePersistentTaskExecutorMonitorWithID:(id)a3
{
  v5 = sub_100054164();
  v7 = v6;
  swift_beginAccess();
  v8 = a3;
  v9 = self;
  sub_10004E090(v5, v7);
  swift_endAccess();

  v10 = [objc_opt_self() sharedInstance];
  v11 = [v10 bgstMessageProcessingController];

  [v11 removePersistentTaskExecutorMonitorWithID:v8];
}

- (void)updateExecutorStateWithCompletionHandler:(id)a3
{
  v4 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  sub_100054224();
  v10 = sub_100054244();
  (*(*(v10 - 8) + 56))(v7, 0, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = sub_10004EA04;
  v11[5] = v9;
  sub_1000363C0(0, 0, v7, &unk_10005F300, v11);
}

- (void)ensureSchedulingForBackgroundWorkRefreshingTaskReports:(BOOL)a3 completionHandler:(id)a4
{
  v6 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_100054224();
  v12 = sub_100054244();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = a3;
  *(v13 + 40) = sub_10004E84C;
  *(v13 + 48) = v11;
  sub_1000363C0(0, 0, v9, &unk_10005F2F8, v13);
}

@end