@interface EDUserNotificationMailboxCutoffController
+ (OS_os_log)log;
- (BOOL)_shouldUpdateCutoffForMessage:(id)message;
- (BOOL)_updateCutoffForMailbox:(id)mailbox date:(id)date;
- (BOOL)isMessageAboveMailboxCutoff:(id)cutoff;
- (id)cutoffDateForMailbox:(id)mailbox;
- (void)_initializeIfNeeded;
- (void)_readFromDefaults;
- (void)_writeToDefaults;
- (void)clearCutoffForMailbox:(id)mailbox;
- (void)updateCutoffForMailboxesWithMessages:(id)messages;
@end

@implementation EDUserNotificationMailboxCutoffController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDUserNotificationMailboxCutoffController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_109 != -1)
  {
    dispatch_once(&log_onceToken_109, block);
  }

  v2 = log_log_109;

  return v2;
}

void __48__EDUserNotificationMailboxCutoffController_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_109;
  log_log_109 = v1;
}

- (id)cutoffDateForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v5 = [mailboxCopy URL];
  absoluteString = [v5 absoluteString];

  if (absoluteString)
  {
    mailboxCutoffs = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
    v8 = [mailboxCutoffs objectForKeyedSubscript:absoluteString];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isMessageAboveMailboxCutoff:(id)cutoff
{
  cutoffCopy = cutoff;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  mailbox = [cutoffCopy mailbox];
  v6 = [mailbox URL];
  absoluteString = [v6 absoluteString];

  mailboxCutoffs = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
  v9 = [mailboxCutoffs objectForKeyedSubscript:absoluteString];

  if (v9)
  {
    dateReceived = [cutoffCopy dateReceived];
    v11 = [dateReceived ef_isLaterThanDate:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)updateCutoffForMailboxesWithMessages:(id)messages
{
  v26 = *MEMORY[0x1E69E9840];
  messagesCopy = messages;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = messagesCopy;
  v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
  if (v5)
  {
    v6 = 0;
    v7 = *v20;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v20 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v19 + 1) + 8 * i);
        if ([(EDUserNotificationMailboxCutoffController *)self _shouldUpdateCutoffForMessage:v9])
        {
          mailbox = [v9 mailbox];
          v11 = [mailbox URL];
          absoluteString = [v11 absoluteString];

          if (absoluteString)
          {
            dateReceived = [v9 dateReceived];
            v14 = [(EDUserNotificationMailboxCutoffController *)self _updateCutoffForMailbox:absoluteString date:dateReceived];

            v6 |= v14;
          }

          else
          {
            v15 = +[EDUserNotificationMailboxCutoffController log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              remoteID = [v9 remoteID];
              [(EDUserNotificationMailboxCutoffController *)remoteID updateCutoffForMailboxesWithMessages:buf, &v24, v15];
            }
          }
        }
      }

      v5 = [v4 countByEnumeratingWithState:&v19 objects:v25 count:16];
    }

    while (v5);

    if (v6)
    {
      [(EDUserNotificationMailboxCutoffController *)self _writeToDefaults];
    }
  }

  else
  {
  }

  v17 = *MEMORY[0x1E69E9840];
}

- (void)clearCutoffForMailbox:(id)mailbox
{
  mailboxCopy = mailbox;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v4 = [mailboxCopy URL];
  absoluteString = [v4 absoluteString];

  if (absoluteString)
  {
    mailboxCutoffs = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
    v7 = [mailboxCutoffs objectForKeyedSubscript:absoluteString];

    if (v7)
    {
      mailboxCutoffs2 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
      [mailboxCutoffs2 setObject:0 forKeyedSubscript:absoluteString];

      [(EDUserNotificationMailboxCutoffController *)self _writeToDefaults];
    }
  }
}

- (BOOL)_shouldUpdateCutoffForMessage:(id)message
{
  flags = [message flags];
  read = [flags read];

  return read;
}

- (BOOL)_updateCutoffForMailbox:(id)mailbox date:(id)date
{
  mailboxCopy = mailbox;
  dateCopy = date;
  mailboxCutoffs = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
  v9 = [mailboxCutoffs objectForKeyedSubscript:mailboxCopy];

  if (v9 && ![dateCopy ef_isLaterThanDate:v9])
  {
    v11 = 0;
  }

  else
  {
    mailboxCutoffs2 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
    [mailboxCutoffs2 setObject:dateCopy forKeyedSubscript:mailboxCopy];

    v11 = 1;
  }

  return v11;
}

- (void)_initializeIfNeeded
{
  mailboxCutoffs = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];

  if (!mailboxCutoffs)
  {

    [(EDUserNotificationMailboxCutoffController *)self _readFromDefaults];
  }
}

- (void)_readFromDefaults
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [em_userDefaults objectForKey:@"UserNotificationMailboxCutoffs"];
  if (v3)
  {
    v4 = v3;
  }

  else
  {
    v4 = MEMORY[0x1E695E0F8];
  }

  v5 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v4];
  [(EDUserNotificationMailboxCutoffController *)self setMailboxCutoffs:v5];
}

- (void)_writeToDefaults
{
  em_userDefaults = [MEMORY[0x1E695E000] em_userDefaults];
  mailboxCutoffs = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
  [em_userDefaults setObject:mailboxCutoffs forKey:@"UserNotificationMailboxCutoffs"];
}

- (void)updateCutoffForMailboxesWithMessages:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Message %{public}@ has a nil mailbox identifier", buf, 0xCu);
}

@end