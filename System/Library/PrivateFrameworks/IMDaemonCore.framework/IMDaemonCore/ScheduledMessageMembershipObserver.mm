@interface ScheduledMessageMembershipObserver
- (_TtC12IMDaemonCore34ScheduledMessageMembershipObserver)init;
- (void)dealloc;
- (void)handleChatParticipantsDidChange:(id)a3;
@end

@implementation ScheduledMessageMembershipObserver

- (void)dealloc
{
  v3 = objc_opt_self();
  v4 = self;
  v5 = [v3 defaultCenter];
  [v5 removeObserver:v4 name:@"__kIMDChatParticipantsDidChangeNotification" object:0];

  v6.receiver = v4;
  v6.super_class = type metadata accessor for ScheduledMessageMembershipObserver();
  [(ScheduledMessageMembershipObserver *)&v6 dealloc];
}

- (void)handleChatParticipantsDidChange:(id)a3
{
  v4 = sub_22B7DA688();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](v4);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22B7DA658();
  v9 = self;
  sub_22B78C58C();

  (*(v5 + 8))(v8, v4);
}

- (_TtC12IMDaemonCore34ScheduledMessageMembershipObserver)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end