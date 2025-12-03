@interface IMDCallManager_Impl
- (IMDCallManager_Impl)init;
- (IMDCallManager_Impl)initWithServiceSession:(id)session;
- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation;
- (void)conversationManager:(id)manager conversationUpdatedMessagesGroupUUID:(id)d;
- (void)dealloc;
@end

@implementation IMDCallManager_Impl

- (IMDCallManager_Impl)initWithServiceSession:(id)session
{
  v4 = objc_opt_self();
  sessionCopy = session;
  sharedInstance = [v4 sharedInstance];
  conversationManager = [sharedInstance conversationManager];

  sharedFeatureFlags = [objc_opt_self() sharedFeatureFlags];
  v9 = objc_allocWithZone(type metadata accessor for CallManager());
  v10 = sub_22B7091D0(sessionCopy, conversationManager, sharedFeatureFlags);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask))
  {
    selfCopy = self;

    sub_22B7DBA88();
  }

  else
  {
    selfCopy2 = self;
  }

  v5.receiver = self;
  v5.super_class = type metadata accessor for CallManager();
  [(IMDCallManager_Impl *)&v5 dealloc];
}

- (IMDCallManager_Impl)init
{
  result = _swift_stdlib_reportUnimplementedInitializer();
  __break(1u);
  return result;
}

- (void)conversationManager:(id)manager addedActiveConversation:(id)conversation
{
  managerCopy = manager;
  conversationCopy = conversation;
  selfCopy = self;
  sub_22B70FC24(conversationCopy, "Received notification that conversation was added: %@", &unk_283F1C6A8, &unk_22B7F98D8);
}

- (void)conversationManager:(id)manager conversationUpdatedMessagesGroupUUID:(id)d
{
  managerCopy = manager;
  dCopy = d;
  selfCopy = self;
  sub_22B70FC24(dCopy, "Received notification that conversation messagesGroupUUID was added: %@", &unk_283F1C630, &unk_22B7F98A8);
}

@end