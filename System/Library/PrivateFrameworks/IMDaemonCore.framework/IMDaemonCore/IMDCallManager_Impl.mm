@interface IMDCallManager_Impl
- (IMDCallManager_Impl)init;
- (IMDCallManager_Impl)initWithServiceSession:(id)a3;
- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4;
- (void)conversationManager:(id)a3 conversationUpdatedMessagesGroupUUID:(id)a4;
- (void)dealloc;
@end

@implementation IMDCallManager_Impl

- (IMDCallManager_Impl)initWithServiceSession:(id)a3
{
  v4 = objc_opt_self();
  v5 = a3;
  v6 = [v4 sharedInstance];
  v7 = [v6 conversationManager];

  v8 = [objc_opt_self() sharedFeatureFlags];
  v9 = objc_allocWithZone(type metadata accessor for CallManager());
  v10 = sub_22B7091D0(v5, v7, v8);
  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v10;
}

- (void)dealloc
{
  if (*(&self->super.isa + OBJC_IVAR___IMDCallManager_Impl_newChatListenerTask))
  {
    v3 = self;

    sub_22B7DBA88();
  }

  else
  {
    v4 = self;
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

- (void)conversationManager:(id)a3 addedActiveConversation:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B70FC24(v7, "Received notification that conversation was added: %@", &unk_283F1C6A8, &unk_22B7F98D8);
}

- (void)conversationManager:(id)a3 conversationUpdatedMessagesGroupUUID:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = self;
  sub_22B70FC24(v7, "Received notification that conversation messagesGroupUUID was added: %@", &unk_283F1C630, &unk_22B7F98A8);
}

@end