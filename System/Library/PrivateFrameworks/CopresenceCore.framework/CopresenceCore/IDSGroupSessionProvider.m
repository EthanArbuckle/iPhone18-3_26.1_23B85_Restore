@interface IDSGroupSessionProvider
- (NSString)description;
- (_TtC14CopresenceCore23IDSGroupSessionProvider)init;
- (void)dealloc;
- (void)groupSessionDidTerminate:(id)a3;
- (void)groupSessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5;
- (void)session:(id)a3 didReceiveActiveLightweightParticipants:(id)a4 success:(BOOL)a5;
- (void)sessionDidJoinGroup:(id)a3 participantUpdate:(id)a4 error:(id)a5;
- (void)sessionDidLeaveGroup:(id)a3 error:(id)a4;
- (void)sessiondidReceiveKeyUpdate:(id)a3;
@end

@implementation IDSGroupSessionProvider

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  v5 = self;
  if (v4)
  {
    [v4 invalidate];
  }

  v6.receiver = self;
  v6.super_class = type metadata accessor for IDSGroupSessionProvider();
  [(IDSGroupSessionProvider *)&v6 dealloc];
}

- (NSString)description
{
  v2 = self;
  v3 = IDSGroupSessionProvider.description.getter();
  v5 = v4;

  v6 = MEMORY[0x1B270FF70](v3, v5);

  return v6;
}

- (_TtC14CopresenceCore23IDSGroupSessionProvider)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)sessionDidJoinGroup:(id)a3 participantUpdate:(id)a4 error:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = self;
  v11 = a5;
  IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(v8, v9, a5);
}

- (void)groupSessionDidTerminate:(id)a3
{
  v4 = a3;
  v5 = self;
  IDSGroupSessionProvider.groupSessionDidTerminate(_:)(v4);
}

- (void)groupSessionEnded:(id)a3 withReason:(unsigned int)a4 error:(id)a5
{
  v8 = a3;
  v9 = self;
  v10 = a5;
  IDSGroupSessionProvider.groupSessionEnded(_:with:error:)(v8, a4, a5);
}

- (void)sessionDidLeaveGroup:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = self;
  v8 = a4;
  IDSGroupSessionProvider.sessionDidLeaveGroup(_:error:)(v6, a4);
}

- (void)sessiondidReceiveKeyUpdate:(id)a3
{
  v4 = a3;
  v5 = self;
  specialized IDSGroupSessionProvider.sessiondidReceiveKeyUpdate(_:)();
}

- (void)session:(id)a3 didReceiveActiveLightweightParticipants:(id)a4 success:(BOOL)a5
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSessionActiveParticipant, 0x1E69A5290);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a3;
  v10 = self;
  specialized IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(v8, a5);
}

@end