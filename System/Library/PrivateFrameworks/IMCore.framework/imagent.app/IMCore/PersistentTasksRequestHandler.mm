@interface PersistentTasksRequestHandler
- (_TtC7imagent29PersistentTasksRequestHandler)init;
- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d;
- (void)ensureSchedulingForBackgroundWorkRefreshingTaskReports:(BOOL)reports completionHandler:(id)handler;
- (void)removePersistentTaskExecutorMonitorWithID:(id)d;
- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler;
- (void)updateExecutorStateWithCompletionHandler:(id)handler;
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

- (void)runExecutorWithTaskLimit:(int64_t)limit groupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v9 = _Block_copy(handler);
  v10 = sub_100054164();
  v12 = v11;
  _Block_copy(v9);
  selfCopy = self;
  sub_10004E4D0(limit, v10, v12, lane, v9);
  _Block_release(v9);
  _Block_release(v9);
}

- (void)resumeExecutorWithGroupName:(id)name lane:(unint64_t)lane completionHandler:(id)handler
{
  v7 = _Block_copy(handler);
  v8 = sub_100054164();
  v10 = v9;
  _Block_copy(v7);
  selfCopy = self;
  sub_10004E694(v8, v10, lane, v7);
  _Block_release(v7);
  _Block_release(v7);
}

- (void)addPersistentTaskExecutorMonitor:(id)monitor withID:(id)d
{
  v6 = sub_100054164();
  v8 = v7;
  swift_unknownObjectRetain();
  selfCopy = self;
  sub_10004CA9C(monitor, v6, v8);
  swift_unknownObjectRelease();
}

- (void)removePersistentTaskExecutorMonitorWithID:(id)d
{
  v5 = sub_100054164();
  v7 = v6;
  swift_beginAccess();
  dCopy = d;
  selfCopy = self;
  sub_10004E090(v5, v7);
  swift_endAccess();

  sharedInstance = [objc_opt_self() sharedInstance];
  bgstMessageProcessingController = [sharedInstance bgstMessageProcessingController];

  [bgstMessageProcessingController removePersistentTaskExecutorMonitorWithID:dCopy];
}

- (void)updateExecutorStateWithCompletionHandler:(id)handler
{
  v4 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  v8 = _Block_copy(handler);
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

- (void)ensureSchedulingForBackgroundWorkRefreshingTaskReports:(BOOL)reports completionHandler:(id)handler
{
  v6 = sub_1000334C8(&unk_10008AD00, &qword_10005E910);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v14 - v8;
  v10 = _Block_copy(handler);
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  sub_100054224();
  v12 = sub_100054244();
  (*(*(v12 - 8) + 56))(v9, 0, 1, v12);
  v13 = swift_allocObject();
  *(v13 + 16) = 0;
  *(v13 + 24) = 0;
  *(v13 + 32) = reports;
  *(v13 + 40) = sub_10004E84C;
  *(v13 + 48) = v11;
  sub_1000363C0(0, 0, v9, &unk_10005F2F8, v13);
}

@end