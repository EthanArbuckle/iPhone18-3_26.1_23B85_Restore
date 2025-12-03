@interface NearbySessionsListenerImplementation
- (BOOL)hasDiscoveredSessionForIdentifier:(id)identifier;
- (MRDGroupSessionListenerDelegate)delegate;
- (_TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation)init;
- (void)collectDiagnostic:(id)diagnostic;
- (void)requestToJoinDiscoveredSession:(NSString *)session completion:(id)completion;
- (void)requestToJoinSession:(MRGroupSessionToken *)session completion:(id)completion;
- (void)setDelegate:(id)delegate;
@end

@implementation NearbySessionsListenerImplementation

- (MRDGroupSessionListenerDelegate)delegate
{
  v2 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate);
  v3 = swift_unknownObjectRetain();

  return v3;
}

- (void)setDelegate:(id)delegate
{
  v3 = *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate);
  *(&self->super.isa + OBJC_IVAR____TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation_delegate) = delegate;
  swift_unknownObjectRetain();

  swift_unknownObjectRelease();
}

- (BOOL)hasDiscoveredSessionForIdentifier:(id)identifier
{
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;
  selfCopy = self;
  LOBYTE(v4) = sub_1001CC22C(v4, v6);

  return v4 & 1;
}

- (void)requestToJoinDiscoveredSession:(NSString *)session completion:(id)completion
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = session;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10044EE08;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10044EE10;
  v15[5] = v14;
  sessionCopy = session;
  selfCopy = self;
  sub_1001D34BC(0, 0, v10, &unk_10044EE18, v15);
}

- (void)requestToJoinSession:(MRGroupSessionToken *)session completion:(id)completion
{
  v7 = sub_1001BC5A8(&qword_100521B60, &qword_10044F1A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v18 - v9;
  v11 = _Block_copy(completion);
  v12 = swift_allocObject();
  v12[2] = session;
  v12[3] = v11;
  v12[4] = self;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  v14 = swift_allocObject();
  v14[2] = 0;
  v14[3] = 0;
  v14[4] = &unk_10044EDC0;
  v14[5] = v12;
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = &unk_10044EDD0;
  v15[5] = v14;
  sessionCopy = session;
  selfCopy = self;
  sub_1001D34BC(0, 0, v10, &unk_10044EDE0, v15);
}

- (void)collectDiagnostic:(id)diagnostic
{
  diagnosticCopy = diagnostic;
  selfCopy = self;
  sub_1001D2C0C(diagnostic);
}

- (_TtC12mediaremotedP33_A89A4181BFB0A82ECB9159988E1E4AC136NearbySessionsListenerImplementation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end