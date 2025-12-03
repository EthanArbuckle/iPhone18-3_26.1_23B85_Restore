@interface IntelligencePlatformComputeService
- (_TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService)init;
- (void)clearViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply;
- (void)stopWithReply:(id)reply;
- (void)truncateViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply;
- (void)updateGroupWithName:(NSString *)name namesAndRequests:(NSArray *)requests reply:(id)reply;
- (void)updateViewWithName:(NSString *)name viewUpdateSourceRequests:(NSArray *)requests reply:(id)reply;
@end

@implementation IntelligencePlatformComputeService

- (void)updateViewWithName:(NSString *)name viewUpdateSourceRequests:(NSArray *)requests reply:(id)reply
{
  v9 = (*(*(sub_10000A234(&unk_100018AA0, &qword_10000F5D0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = _Block_copy(reply);
  v13 = swift_allocObject();
  v13[2] = name;
  v13[3] = requests;
  v13[4] = v12;
  v13[5] = self;
  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v11, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10000F4C8;
  v15[5] = v13;
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F4D0;
  v16[5] = v15;
  nameCopy = name;
  requestsCopy = requests;
  selfCopy = self;
  sub_10000A27C(0, 0, v11, &unk_10000F4D8, v16);
}

- (void)updateGroupWithName:(NSString *)name namesAndRequests:(NSArray *)requests reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v21 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  v14[2] = name;
  v14[3] = requests;
  v14[4] = v13;
  v14[5] = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F478;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000F480;
  v17[5] = v16;
  nameCopy = name;
  requestsCopy = requests;
  selfCopy = self;
  sub_10000A27C(0, 0, v12, &unk_10000F488, v17);
}

- (void)clearViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  *(v14 + 16) = name;
  *(v14 + 24) = rebuild;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F450;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000F458;
  v17[5] = v16;
  nameCopy = name;
  selfCopy = self;
  sub_10000A27C(0, 0, v12, &unk_10000F460, v17);
}

- (void)truncateViewWithName:(NSString *)name fullRebuild:(BOOL)rebuild reply:(id)reply
{
  v9 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v20 - v11;
  v13 = _Block_copy(reply);
  v14 = swift_allocObject();
  *(v14 + 16) = name;
  *(v14 + 24) = rebuild;
  *(v14 + 32) = v13;
  *(v14 + 40) = self;
  v15 = type metadata accessor for TaskPriority();
  (*(*(v15 - 8) + 56))(v12, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = &unk_10000F420;
  v16[5] = v14;
  v17 = swift_allocObject();
  v17[2] = 0;
  v17[3] = 0;
  v17[4] = &unk_10000F428;
  v17[5] = v16;
  nameCopy = name;
  selfCopy = self;
  sub_10000A27C(0, 0, v12, &unk_10000F430, v17);
}

- (void)stopWithReply:(id)reply
{
  v5 = sub_10000A234(&unk_100018AA0, &qword_10000F5D0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(reply);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10000F3D8;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_10000F3E8;
  v13[5] = v12;
  selfCopy = self;
  sub_10000A27C(0, 0, v8, &unk_10000F3F8, v13);
}

- (_TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService)init
{
  ObjectType = swift_getObjectType();
  v4 = OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateViewTaskRegister;
  sub_10000A234(&qword_100018938, &qword_10000F3B8);
  v5 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v5 + 14) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + v4) = v5;
  v6 = OBJC_IVAR____TtC34IntelligencePlatformComputeService34IntelligencePlatformComputeService_updateGroupTaskRegister;
  sub_10000A234(&qword_100018940, &unk_10000F3C0);
  v7 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v7 + 14) = &_swiftEmptyArrayStorage;
  *(&self->super.isa + v6) = v7;
  v9.receiver = self;
  v9.super_class = ObjectType;
  return [(IntelligencePlatformComputeService *)&v9 init];
}

@end