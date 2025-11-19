@interface Listener
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC10migrationd8Listener)init;
- (void)addWithClient:(id)a3;
- (void)confirmSelectionWithSelections:(id)a3 disabledBundleIDs:(id)a4;
- (void)connectWithCode:(id)a3;
- (void)fetchAppContentListWithCompletionHandler:(id)a3;
- (void)peerSupportedSelectionsWithCompletionHandler:(id)a3;
- (void)preflightSelectionWithSelections:(NSSet *)a3 completionHandler:(id)a4;
- (void)removeWithCancelled:(BOOL)a3;
- (void)runWithClient:(id)a3 scheme:(unsigned __int8)a4;
- (void)sendNotificationWithData:(NSData *)a3 completionHandler:(id)a4;
- (void)sendWithData:(NSData *)a3 completionHandler:(id)a4;
- (void)supportedSelectionsWithCompletionHandler:(id)a3;
@end

@implementation Listener

- (_TtC10migrationd8Listener)init
{
  ObjectType = swift_getObjectType();
  *(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_actor) = 0;
  v4 = objc_allocWithZone(NSXPCListener);
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 initWithMachServiceName:v5];

  *(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_listener) = v6;
  v8.receiver = self;
  v8.super_class = ObjectType;
  return [(Listener *)&v8 init];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  v9 = sub_100006AD8(v7);

  return v9 & 1;
}

- (void)runWithClient:(id)a3 scheme:(unsigned __int8)a4
{
  swift_unknownObjectRetain();
  v7 = self;
  sub_100002428(a3, a4);
  swift_unknownObjectRelease();
}

- (void)connectWithCode:(id)a3
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  if (*(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {
    v7 = v4;
    v8 = self;

    sub_1000076D8(v7, v6);
  }
}

- (void)supportedSelectionsWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_10000507C(&unk_100020A20, &qword_1000175E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000176D8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000176E0;
  v12[5] = v11;
  v13 = self;
  sub_1000059C4(0, 0, v7, &unk_1000176E8, v12);
}

- (void)peerSupportedSelectionsWithCompletionHandler:(id)a3
{
  v5 = (*(*(sub_10000507C(&unk_100020A20, &qword_1000175E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(a3);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_1000176B8;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000176C0;
  v12[5] = v11;
  v13 = self;
  sub_1000059C4(0, 0, v7, &unk_1000176C8, v12);
}

- (void)preflightSelectionWithSelections:(NSSet *)a3 completionHandler:(id)a4
{
  v7 = (*(*(sub_10000507C(&unk_100020A20, &qword_1000175E0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v9 = &v17 - v8;
  v10 = _Block_copy(a4);
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = v10;
  v11[4] = self;
  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017698;
  v13[5] = v11;
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_1000176A0;
  v14[5] = v13;
  v15 = a3;
  v16 = self;
  sub_1000059C4(0, 0, v9, &unk_1000176A8, v14);
}

- (void)confirmSelectionWithSelections:(id)a3 disabledBundleIDs:(id)a4
{
  v5 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  if (*(&self->super.isa + OBJC_IVAR____TtC10migrationd8Listener_actor))
  {
    v7 = self;

    sub_1000088F0(v5, v6);
  }
}

- (void)addWithClient:(id)a3
{
  swift_unknownObjectRetain();
  v5 = self;
  sub_100003848(a3);
  swift_unknownObjectRelease();
}

- (void)removeWithCancelled:(BOOL)a3
{
  v4 = self;
  sub_100003F2C(a3);
}

- (void)sendWithData:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017660;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017668;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1000059C4(0, 0, v10, &unk_100017670, v15);
}

- (void)sendNotificationWithData:(NSData *)a3 completionHandler:(id)a4
{
  v7 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(a4);
  v12 = swift_allocObject();
  v12[2] = a3;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_100017640;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_100017648;
  v15[5] = v14;
  v16 = a3;
  v17 = self;
  sub_1000059C4(0, 0, v10, &unk_100017650, v15);
}

- (void)fetchAppContentListWithCompletionHandler:(id)a3
{
  v5 = sub_10000507C(&unk_100020A20, &qword_1000175E0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = type metadata accessor for TaskPriority();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000175F0;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_100017600;
  v13[5] = v12;
  v14 = self;
  sub_1000059C4(0, 0, v8, &unk_100017610, v13);
}

@end