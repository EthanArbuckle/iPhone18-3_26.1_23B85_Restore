@interface HomePodUIManager
- (_TtC12mediaremoted16HomePodUIManager)init;
- (void)beginObservingSession:(id)session;
- (void)dismissJoinRequest:(id)request;
- (void)displayJoinRequest:(id)request handler:(id)handler;
- (void)openMusicForDiscoveredSession:(id)session foreground:(BOOL)foreground completion:(id)completion;
- (void)openMusicParticipantManagementWithCompletion:(id)completion;
@end

@implementation HomePodUIManager

- (void)displayJoinRequest:(id)request handler:(id)handler
{
  v6 = _Block_copy(handler);
  *(swift_allocObject() + 16) = v6;
  requestCopy = request;
  selfCopy = self;
  sub_10022B578(requestCopy, sub_10022AFA0);
}

- (void)dismissJoinRequest:(id)request
{
  requestCopy = request;
  selfCopy = self;
  sub_10022BADC(requestCopy);
}

- (void)openMusicForDiscoveredSession:(id)session foreground:(BOOL)foreground completion:(id)completion
{
  v5 = _Block_copy(completion);
  if (v5)
  {
    v6 = v5;
    type metadata accessor for MRGroupSessionError(0);
    v8 = v7;
    v12[0] = 9;
    _Block_copy(v6);
    v9 = sub_10022C244(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(v12, 0xD00000000000001FLL, 0x800000010043C4D0, 0, v8, v9);
    v10 = v12[1];
    v11 = _convertErrorToNSError(_:)();
    (v6)[2](v6, v11);

    _Block_release(v6);
    _Block_release(v6);
  }
}

- (void)openMusicParticipantManagementWithCompletion:(id)completion
{
  v3 = _Block_copy(completion);
  if (v3)
  {
    v4 = v3;
    type metadata accessor for MRGroupSessionError(0);
    v6 = v5;
    v10[0] = 9;
    _Block_copy(v4);
    v7 = sub_10022C244(&qword_100522CC0, type metadata accessor for MRGroupSessionError);
    sub_10022CC44(v10, 0xD00000000000001FLL, 0x800000010043C4D0, 0, v6, v7);
    v8 = v10[1];
    v9 = _convertErrorToNSError(_:)();
    (v4)[2](v4, v9);

    _Block_release(v4);
    _Block_release(v4);
  }
}

- (void)beginObservingSession:(id)session
{
  v5 = *((swift_isaMask & self->super.isa) + 0x68);
  swift_unknownObjectRetain_n();
  selfCopy = self;
  v5(session);
  swift_unknownObjectRelease();
}

- (_TtC12mediaremoted16HomePodUIManager)init
{
  *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager_currentSession) = 0;
  *(&self->super.isa + OBJC_IVAR____TtC12mediaremoted16HomePodUIManager____lazy_storage___proxyAuthorizationSender) = 0;
  v3.receiver = self;
  v3.super_class = type metadata accessor for HomePodUIManager();
  return [(HomePodUIManager *)&v3 init];
}

@end