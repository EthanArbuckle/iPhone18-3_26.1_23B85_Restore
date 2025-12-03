@interface MFNanoServerMessageUpdater
- (MFNanoServerMessageUpdater)init;
- (id)_libraryMessageForMessageId:(id)id;
- (void)_addOperation:(id)operation withMessages:(id)messages toChangeManager:(id)manager;
- (void)moveMessages:(id)messages toMailbox:(id)mailbox;
- (void)updateMessages:(id)messages;
@end

@implementation MFNanoServerMessageUpdater

- (MFNanoServerMessageUpdater)init
{
  v7.receiver = self;
  v7.super_class = MFNanoServerMessageUpdater;
  v2 = [(MFNanoServerMessageUpdater *)&v7 init];
  if (v2)
  {
    v3 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v4 = dispatch_queue_create("com.apple.MFNanoServerMessageUpdater", v3);
    queue = v2->_queue;
    v2->_queue = v4;
  }

  return v2;
}

- (void)updateMessages:(id)messages
{
  messagesCopy = messages;
  queue = self->_queue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_100096AA8;
  v7[3] = &unk_1001563D8;
  v8 = messagesCopy;
  selfCopy = self;
  v6 = messagesCopy;
  dispatch_async(queue, v7);
}

- (void)moveMessages:(id)messages toMailbox:(id)mailbox
{
  messagesCopy = messages;
  mailboxCopy = mailbox;
  queue = self->_queue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_10009761C;
  block[3] = &unk_1001573C0;
  v12 = mailboxCopy;
  v13 = messagesCopy;
  selfCopy = self;
  v9 = messagesCopy;
  v10 = mailboxCopy;
  dispatch_async(queue, block);
}

- (void)_addOperation:(id)operation withMessages:(id)messages toChangeManager:(id)manager
{
  operationCopy = operation;
  messagesCopy = messages;
  managerCopy = manager;
  v9 = [[MailMessageChangeSet alloc] initWithMessages:messagesCopy operation:operationCopy];
  [managerCopy addChange:v9];
}

- (id)_libraryMessageForMessageId:(id)id
{
  v3 = [NSURL URLWithString:id];
  mf_messageCriterion = [v3 mf_messageCriterion];
  v5 = +[MFMailMessageLibrary defaultInstance];
  v6 = [v5 messagesMatchingCriterion:mf_messageCriterion options:6144];

  firstObject = [v6 firstObject];

  return firstObject;
}

@end