@interface HomePodUIManager
- (_TtC12mediaremoted16HomePodUIManager)init;
- (void)beginObservingSession:(id)a3;
- (void)dismissJoinRequest:(id)a3;
- (void)displayJoinRequest:(id)a3 handler:(id)a4;
- (void)openMusicForDiscoveredSession:(id)a3 foreground:(BOOL)a4 completion:(id)a5;
- (void)openMusicParticipantManagementWithCompletion:(id)a3;
@end

@implementation HomePodUIManager

- (void)displayJoinRequest:(id)a3 handler:(id)a4
{
  v6 = _Block_copy(a4);
  *(swift_allocObject() + 16) = v6;
  v7 = a3;
  v8 = self;
  sub_10022B578(v7, sub_10022AFA0);
}

- (void)dismissJoinRequest:(id)a3
{
  v4 = a3;
  v5 = self;
  sub_10022BADC(v4);
}

- (void)openMusicForDiscoveredSession:(id)a3 foreground:(BOOL)a4 completion:(id)a5
{
  v5 = _Block_copy(a5);
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

- (void)openMusicParticipantManagementWithCompletion:(id)a3
{
  v3 = _Block_copy(a3);
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

- (void)beginObservingSession:(id)a3
{
  v5 = *((swift_isaMask & self->super.isa) + 0x68);
  swift_unknownObjectRetain_n();
  v6 = self;
  v5(a3);
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