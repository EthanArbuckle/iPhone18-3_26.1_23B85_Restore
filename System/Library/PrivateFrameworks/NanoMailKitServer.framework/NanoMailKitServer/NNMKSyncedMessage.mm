@interface NNMKSyncedMessage
- (BOOL)isContentCompletelySynced;
- (NNMKSyncedMessage)init;
- (NNMKSyncedMessage)initWithMessage:(id)message useDefaultMailbox:(BOOL)mailbox;
@end

@implementation NNMKSyncedMessage

- (NNMKSyncedMessage)initWithMessage:(id)message useDefaultMailbox:(BOOL)mailbox
{
  mailboxCopy = mailbox;
  messageCopy = message;
  v7 = [(NNMKSyncedMessage *)self init];
  if (v7)
  {
    messageId = [messageCopy messageId];
    messageId = v7->_messageId;
    v7->_messageId = messageId;

    messageId2 = [messageCopy messageId];
    nnmk_sanitizedFileNameString = [messageId2 nnmk_sanitizedFileNameString];
    sanitizedMessageId = v7->_sanitizedMessageId;
    v7->_sanitizedMessageId = nnmk_sanitizedFileNameString;

    v7->_status = [messageCopy status];
    dateReceived = [messageCopy dateReceived];
    dateReceived = v7->_dateReceived;
    v7->_dateReceived = dateReceived;

    conversationId = [messageCopy conversationId];
    conversationId = v7->_conversationId;
    v7->_conversationId = conversationId;

    if (mailboxCopy)
    {
      mailboxId = @"-1";
    }

    else
    {
      mailboxId = [messageCopy mailboxId];
    }

    mailboxId = v7->_mailboxId;
    v7->_mailboxId = &mailboxId->isa;

    v7->_isThreadSpecific = [messageCopy isThreadSpecific];
    v7->_isSpecialMailboxSpecific = [messageCopy isSpecialMailboxSpecific];
  }

  return v7;
}

- (NNMKSyncedMessage)init
{
  v9.receiver = self;
  v9.super_class = NNMKSyncedMessage;
  v2 = [(NNMKSyncedMessage *)&v9 init];
  v3 = v2;
  if (v2)
  {
    messageId = v2->_messageId;
    v2->_messageId = 0;

    v3->_status = 0;
    v3->_statusVersion = 0;
    dateReceived = v3->_dateReceived;
    v3->_dateReceived = 0;

    v3->_contentRequestedByUser = 0;
    *&v3->_usedNotificationPriorityForMessageSync = 0;
    attachmentsContentIdsNotYetSynced = v3->_attachmentsContentIdsNotYetSynced;
    v3->_attachmentsContentIdsNotYetSynced = 0;

    conversationId = v3->_conversationId;
    v3->_conversationId = 0;

    v3->_resendRequested = 0;
    v3->_resendInterval = 0;
    v3->_contentResendInterval = 0;
  }

  return v3;
}

- (BOOL)isContentCompletelySynced
{
  if (![(NNMKSyncedMessage *)self contentSynced])
  {
    return 0;
  }

  attachmentsContentIdsNotYetSynced = [(NNMKSyncedMessage *)self attachmentsContentIdsNotYetSynced];
  v4 = [attachmentsContentIdsNotYetSynced count] == 0;

  return v4;
}

@end