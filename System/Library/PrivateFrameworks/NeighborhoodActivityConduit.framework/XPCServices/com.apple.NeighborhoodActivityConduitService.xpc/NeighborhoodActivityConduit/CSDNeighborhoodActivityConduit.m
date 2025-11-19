@interface CSDNeighborhoodActivityConduit
- (CSDNeighborhoodActivityConduit)init;
- (void)conversationManager:(id)a3 changedActivityAuthorizationForBundleIdentifier:(id)a4;
- (void)conversationsChangedForConversationManager:(id)a3;
- (void)dealloc;
@end

@implementation CSDNeighborhoodActivityConduit

- (void)dealloc
{
  ObjectType = swift_getObjectType();
  v4 = *(&self->super.isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_stateHandle);
  v5 = self;
  os_state_remove_handler();
  [*(&v5->super.isa + OBJC_IVAR___CSDNeighborhoodActivityConduit_systemMonitor) invalidate];
  v6.receiver = v5;
  v6.super_class = ObjectType;
  [(CSDNeighborhoodActivityConduit *)&v6 dealloc];
}

- (CSDNeighborhoodActivityConduit)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationsChangedForConversationManager:(id)a3
{
  v4 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  v8 = sub_1000E2538();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = qword_10011DC30;
  v11 = self;
  if (v9 != -1)
  {
    swift_once();
  }

  v12 = qword_1001230F0;
  v13 = sub_1000A75DC(&qword_100120020, v10, type metadata accessor for ConduitActor);
  v14 = swift_allocObject();
  v14[2] = v12;
  v14[3] = v13;
  v14[4] = v11;

  sub_100022960(0, 0, v7, &unk_1000F2410, v14);
}

- (void)conversationManager:(id)a3 changedActivityAuthorizationForBundleIdentifier:(id)a4
{
  v5 = sub_10000ADE4(&unk_10011EA50, &qword_1000F0D30);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v19 - v7;
  v9 = sub_1000E2338();
  v11 = v10;
  v12 = sub_1000E2538();
  (*(*(v12 - 8) + 56))(v8, 1, 1, v12);
  v13 = qword_10011DC30;
  v15 = self;
  if (v13 != -1)
  {
    swift_once();
  }

  v16 = qword_1001230F0;
  v17 = sub_1000A75DC(&qword_100120020, v14, type metadata accessor for ConduitActor);
  v18 = swift_allocObject();
  v18[2] = v16;
  v18[3] = v17;
  v18[4] = v15;
  v18[5] = v9;
  v18[6] = v11;

  sub_100022960(0, 0, v8, &unk_1000F23B8, v18);
}

@end