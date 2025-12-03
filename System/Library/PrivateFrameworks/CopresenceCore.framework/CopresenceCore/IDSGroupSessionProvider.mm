@interface IDSGroupSessionProvider
- (NSString)description;
- (_TtC14CopresenceCore23IDSGroupSessionProvider)init;
- (void)dealloc;
- (void)groupSessionDidTerminate:(id)terminate;
- (void)groupSessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error;
- (void)session:(id)session didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success;
- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error;
- (void)sessionDidLeaveGroup:(id)group error:(id)error;
- (void)sessiondidReceiveKeyUpdate:(id)update;
@end

@implementation IDSGroupSessionProvider

- (void)dealloc
{
  v3 = OBJC_IVAR____TtC14CopresenceCore23IDSGroupSessionProvider_groupSession;
  swift_beginAccess();
  v4 = *(&self->super.isa + v3);
  selfCopy = self;
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
  selfCopy = self;
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

- (void)sessionDidJoinGroup:(id)group participantUpdate:(id)update error:(id)error
{
  groupCopy = group;
  updateCopy = update;
  selfCopy = self;
  errorCopy = error;
  IDSGroupSessionProvider.sessionDidJoinGroup(_:participantUpdate:error:)(groupCopy, updateCopy, error);
}

- (void)groupSessionDidTerminate:(id)terminate
{
  terminateCopy = terminate;
  selfCopy = self;
  IDSGroupSessionProvider.groupSessionDidTerminate(_:)(terminateCopy);
}

- (void)groupSessionEnded:(id)ended withReason:(unsigned int)reason error:(id)error
{
  endedCopy = ended;
  selfCopy = self;
  errorCopy = error;
  IDSGroupSessionProvider.groupSessionEnded(_:with:error:)(endedCopy, reason, error);
}

- (void)sessionDidLeaveGroup:(id)group error:(id)error
{
  groupCopy = group;
  selfCopy = self;
  errorCopy = error;
  IDSGroupSessionProvider.sessionDidLeaveGroup(_:error:)(groupCopy, error);
}

- (void)sessiondidReceiveKeyUpdate:(id)update
{
  updateCopy = update;
  selfCopy = self;
  specialized IDSGroupSessionProvider.sessiondidReceiveKeyUpdate(_:)();
}

- (void)session:(id)session didReceiveActiveLightweightParticipants:(id)participants success:(BOOL)success
{
  type metadata accessor for NSObject(0, &lazy cache variable for type metadata for IDSGroupSessionActiveParticipant, 0x1E69A5290);
  v8 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  sessionCopy = session;
  selfCopy = self;
  specialized IDSGroupSessionProvider.session(_:didReceiveActiveLightweightParticipants:success:)(v8, success);
}

@end