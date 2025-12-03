@interface LiveActivityService
- (_TtC5newsd19LiveActivityService)init;
- (void)cancelScheduledLiveActivityWithId:(NSString *)id backgroundTaskID:(NSString *)d completionHandler:(id)handler;
- (void)scheduleLiveActivityWithRequest:(_TtC10NewsDaemon27LiveActivityScheduleRequest *)request completionHandler:(id)handler;
@end

@implementation LiveActivityService

- (void)scheduleLiveActivityWithRequest:(_TtC10NewsDaemon27LiveActivityScheduleRequest *)request completionHandler:(id)handler
{
  v7 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(handler);
  v12 = swift_allocObject();
  v12[2] = request;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10005A978;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10005A980;
  v15[5] = v14;
  requestCopy = request;
  selfCopy = self;
  sub_10004039C(0, 0, v10, &unk_10005A988, v15);
}

- (void)cancelScheduledLiveActivityWithId:(NSString *)id backgroundTaskID:(NSString *)d completionHandler:(id)handler
{
  v9 = sub_100015140(&unk_10007EB50, &qword_10005AB40);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(handler);
  v14 = swift_allocObject();
  v14[2] = id;
  v14[3] = d;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10005A950;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10005A958;
  v17[5] = v16;
  idCopy = id;
  dCopy = d;
  selfCopy = self;
  sub_10004039C(0, 0, v12, &unk_10005A960, v17);
}

- (_TtC5newsd19LiveActivityService)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end