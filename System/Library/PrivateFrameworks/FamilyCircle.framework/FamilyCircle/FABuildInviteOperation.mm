@interface FABuildInviteOperation
- (FABuildInviteOperation)init;
- (FABuildInviteOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner inviteRecipients:(id)recipients;
- (void)buildInviteWithCompletionHandler:(id)handler;
@end

@implementation FABuildInviteOperation

- (FABuildInviteOperation)initWithNetworkService:(id)service grandSlamSigner:(id)signer familyGrandSlamSigner:(id)slamSigner inviteRecipients:(id)recipients
{
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_inviteRecipients) = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_aaGrandSlamSigner) = signer;
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_familyGrandSlamSigner) = slamSigner;
  *(&self->super.isa + OBJC_IVAR___FABuildInviteOperation_networkService) = service;
  v14.receiver = self;
  v14.super_class = type metadata accessor for FABuildInviteOperation();
  serviceCopy = service;
  signerCopy = signer;
  slamSignerCopy = slamSigner;
  return [(FABuildInviteOperation *)&v14 init];
}

- (void)buildInviteWithCompletionHandler:(id)handler
{
  v5 = (*(*(sub_100022F18(&qword_1000B82B8, &qword_10008C6C0) - 8) + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v7 = &v14 - v6;
  v8 = _Block_copy(handler);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = self;
  v10 = type metadata accessor for TaskPriority();
  (*(*(v10 - 8) + 56))(v7, 1, 1, v10);
  v11 = swift_allocObject();
  v11[2] = 0;
  v11[3] = 0;
  v11[4] = &unk_10008C6D0;
  v11[5] = v9;
  v12 = swift_allocObject();
  v12[2] = 0;
  v12[3] = 0;
  v12[4] = &unk_10008C7F0;
  v12[5] = v11;
  selfCopy = self;
  sub_100071FE8(0, 0, v7, &unk_10008C6E0, v12);
}

- (FABuildInviteOperation)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

@end