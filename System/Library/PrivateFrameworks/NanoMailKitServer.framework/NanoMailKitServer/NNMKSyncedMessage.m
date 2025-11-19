@interface NNMKSyncedMessage
- (BOOL)isContentCompletelySynced;
- (NNMKSyncedMessage)init;
- (NNMKSyncedMessage)initWithMessage:(id)a3 useDefaultMailbox:(BOOL)a4;
@end

@implementation NNMKSyncedMessage

- (NNMKSyncedMessage)initWithMessage:(id)a3 useDefaultMailbox:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v7 = [(NNMKSyncedMessage *)self init];
  if (v7)
  {
    v8 = [v6 messageId];
    messageId = v7->_messageId;
    v7->_messageId = v8;

    v10 = [v6 messageId];
    v11 = [v10 nnmk_sanitizedFileNameString];
    sanitizedMessageId = v7->_sanitizedMessageId;
    v7->_sanitizedMessageId = v11;

    v7->_status = [v6 status];
    v13 = [v6 dateReceived];
    dateReceived = v7->_dateReceived;
    v7->_dateReceived = v13;

    v15 = [v6 conversationId];
    conversationId = v7->_conversationId;
    v7->_conversationId = v15;

    if (v4)
    {
      v17 = @"-1";
    }

    else
    {
      v17 = [v6 mailboxId];
    }

    mailboxId = v7->_mailboxId;
    v7->_mailboxId = &v17->isa;

    v7->_isThreadSpecific = [v6 isThreadSpecific];
    v7->_isSpecialMailboxSpecific = [v6 isSpecialMailboxSpecific];
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

  v3 = [(NNMKSyncedMessage *)self attachmentsContentIdsNotYetSynced];
  v4 = [v3 count] == 0;

  return v4;
}

@end