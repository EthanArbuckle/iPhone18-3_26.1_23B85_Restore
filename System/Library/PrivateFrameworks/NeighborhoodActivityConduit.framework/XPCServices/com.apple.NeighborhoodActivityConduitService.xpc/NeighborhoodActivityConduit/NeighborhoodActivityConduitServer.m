@interface NeighborhoodActivityConduitServer
- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4;
- (_TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer)init;
- (void)dealloc;
- (void)ensureConduitInitialized:(id)a3;
- (void)inviteTVDevice:(id)a3 toConversation:(id)a4 completion:(id)a5;
- (void)isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:(id)a3;
- (void)registerSplitSessionApprovalEnabled:(BOOL)a3;
- (void)setSuggestedTVDeviceName:(id)a3 completion:(id)a4;
- (void)startConversationWith:(id)a3 on:(id)a4 completion:(id)a5;
- (void)suggestionWithCompletion:(id)a3;
@end

@implementation NeighborhoodActivityConduitServer

- (void)registerSplitSessionApprovalEnabled:(BOOL)a3
{
  v4 = self;
  sub_100003EA4(a3);
}

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = self;
  v5 = CFNotificationCenterGetDarwinNotifyCenter();
  if (qword_10011DBE0 != -1)
  {
    swift_once();
  }

  CFNotificationCenterRemoveObserver(v5, 0, qword_10011E890, 0);

  v6.receiver = v4;
  v6.super_class = ObjectType;
  [(NeighborhoodActivityConduitServer *)&v6 dealloc];
}

- (BOOL)listener:(id)a3 shouldAcceptNewConnection:(id)a4
{
  v6 = *(&self->super.isa + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_queue);
  swift_allocObject();
  swift_unknownObjectWeakInit();
  v7 = a4;
  v8 = self;
  sub_1000E2728();

  return v10;
}

- (void)isRingingFaceTimeCallsOnConnectedTVDeviceWithCompletion:(id)a3
{
  v4 = _Block_copy(a3);
  v5 = (*(&self->super.isa + OBJC_IVAR____TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer_continuitySessionServer))[24];
  v6 = self;

  sub_1000E1FF8();

  (*(v4 + 2))(v4, v7, 0);
  _Block_release(v4);
}

- (void)suggestionWithCompletion:(id)a3
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v14 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = self;
  v12[5] = sub_10001CAA4;
  v12[6] = v10;
  v13 = self;
  sub_100022960(0, 0, v8, &unk_1000F0E38, v12);
}

- (void)setSuggestedTVDeviceName:(id)a3 completion:(id)a4
{
  v6 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  v10 = _Block_copy(a4);
  v11 = sub_1000E2338();
  v13 = v12;
  v14 = swift_allocObject();
  *(v14 + 16) = v10;
  v15 = sub_1000E2538();
  (*(*(v15 - 8) + 56))(v9, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = self;
  v16[5] = v11;
  v16[6] = v13;
  v16[7] = sub_10001C230;
  v16[8] = v14;
  v17 = self;
  sub_100022960(0, 0, v9, &unk_1000F0E28, v16);
}

- (void)inviteTVDevice:(id)a3 toConversation:(id)a4 completion:(id)a5
{
  v30 = self;
  v7 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v29 - v9;
  v29 = &v29 - v9;
  v11 = sub_1000E0D68();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v11);
  v15 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v17 = &v29 - v16;
  v18 = _Block_copy(a5);
  sub_1000E0D38();
  v19 = swift_allocObject();
  *(v19 + 16) = v18;
  v20 = sub_1000E2538();
  (*(*(v20 - 8) + 56))(v10, 1, 1, v20);
  (*(v12 + 16))(v15, v17, v11);
  v21 = (*(v12 + 80) + 48) & ~*(v12 + 80);
  v22 = (v13 + v21 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = swift_allocObject();
  *(v23 + 2) = 0;
  *(v23 + 3) = 0;
  v24 = v30;
  *(v23 + 4) = v30;
  *(v23 + 5) = a3;
  (*(v12 + 32))(&v23[v21], v15, v11);
  v25 = &v23[v22];
  *v25 = sub_10001CAA0;
  *(v25 + 1) = v19;
  v26 = a3;
  v27 = v24;
  v28 = v26;

  sub_100022960(0, 0, v29, &unk_1000F0E18, v23);

  (*(v12 + 8))(v17, v11);
}

- (void)ensureConduitInitialized:(id)a3
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v15 - v7;
  v9 = _Block_copy(a3);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  *(v10 + 24) = self;
  v11 = sub_1000E2538();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_1000F0D78;
  v12[5] = v10;
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = &unk_1000F0D88;
  v13[5] = v12;
  v14 = self;
  sub_10001BA9C(0, 0, v8, &unk_1000F0D98, v13);
}

- (void)startConversationWith:(id)a3 on:(id)a4 completion:(id)a5
{
  v8 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v19 - v10;
  v12 = _Block_copy(a5);
  sub_10000CAAC(0, &unk_10011F930, TUHandle_ptr);
  sub_10001B174(&qword_10011EA60, &unk_10011F930, TUHandle_ptr);
  v13 = sub_1000E25E8();
  v14 = swift_allocObject();
  *(v14 + 16) = v12;
  v15 = sub_1000E2538();
  (*(*(v15 - 8) + 56))(v11, 1, 1, v15);
  v16 = swift_allocObject();
  v16[2] = 0;
  v16[3] = 0;
  v16[4] = sub_10001B1C4;
  v16[5] = v14;
  v16[6] = self;
  v16[7] = v13;
  v16[8] = a4;
  v17 = a4;
  v18 = self;
  sub_100022960(0, 0, v11, &unk_1000F0D40, v16);
}

- (_TtC44com_apple_NeighborhoodActivityConduitService33NeighborhoodActivityConduitServer)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end