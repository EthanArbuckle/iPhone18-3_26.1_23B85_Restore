@interface EDUserNotificationMailboxCutoffController
+ (OS_os_log)log;
- (BOOL)_shouldUpdateCutoffForMessage:(id)a3;
- (BOOL)_updateCutoffForMailbox:(id)a3 date:(id)a4;
- (BOOL)isMessageAboveMailboxCutoff:(id)a3;
- (id)cutoffDateForMailbox:(id)a3;
- (void)_initializeIfNeeded;
- (void)_readFromDefaults;
- (void)_writeToDefaults;
- (void)clearCutoffForMailbox:(id)a3;
- (void)updateCutoffForMailboxesWithMessages:(id)a3;
@end

@implementation EDUserNotificationMailboxCutoffController

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __48__EDUserNotificationMailboxCutoffController_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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

- (id)cutoffDateForMailbox:(id)a3
{
  v4 = a3;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v5 = [v4 URL];
  v6 = [v5 absoluteString];

  if (v6)
  {
    v7 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
    v8 = [v7 objectForKeyedSubscript:v6];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (BOOL)isMessageAboveMailboxCutoff:(id)a3
{
  v4 = a3;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v5 = [v4 mailbox];
  v6 = [v5 URL];
  v7 = [v6 absoluteString];

  v8 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
  v9 = [v8 objectForKeyedSubscript:v7];

  if (v9)
  {
    v10 = [v4 dateReceived];
    v11 = [v10 ef_isLaterThanDate:v9];
  }

  else
  {
    v11 = 1;
  }

  return v11;
}

- (void)updateCutoffForMailboxesWithMessages:(id)a3
{
  v26 = *MEMORY[0x1E69E9840];
  v18 = a3;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v4 = v18;
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
          v10 = [v9 mailbox];
          v11 = [v10 URL];
          v12 = [v11 absoluteString];

          if (v12)
          {
            v13 = [v9 dateReceived];
            v14 = [(EDUserNotificationMailboxCutoffController *)self _updateCutoffForMailbox:v12 date:v13];

            v6 |= v14;
          }

          else
          {
            v15 = +[EDUserNotificationMailboxCutoffController log];
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              v16 = [v9 remoteID];
              [(EDUserNotificationMailboxCutoffController *)v16 updateCutoffForMailboxesWithMessages:buf, &v24, v15];
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

- (void)clearCutoffForMailbox:(id)a3
{
  v9 = a3;
  [(EDUserNotificationMailboxCutoffController *)self _initializeIfNeeded];
  v4 = [v9 URL];
  v5 = [v4 absoluteString];

  if (v5)
  {
    v6 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
    v7 = [v6 objectForKeyedSubscript:v5];

    if (v7)
    {
      v8 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
      [v8 setObject:0 forKeyedSubscript:v5];

      [(EDUserNotificationMailboxCutoffController *)self _writeToDefaults];
    }
  }
}

- (BOOL)_shouldUpdateCutoffForMessage:(id)a3
{
  v3 = [a3 flags];
  v4 = [v3 read];

  return v4;
}

- (BOOL)_updateCutoffForMailbox:(id)a3 date:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
  v9 = [v8 objectForKeyedSubscript:v6];

  if (v9 && ![v7 ef_isLaterThanDate:v9])
  {
    v11 = 0;
  }

  else
  {
    v10 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
    [v10 setObject:v7 forKeyedSubscript:v6];

    v11 = 1;
  }

  return v11;
}

- (void)_initializeIfNeeded
{
  v3 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];

  if (!v3)
  {

    [(EDUserNotificationMailboxCutoffController *)self _readFromDefaults];
  }
}

- (void)_readFromDefaults
{
  v6 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [v6 objectForKey:@"UserNotificationMailboxCutoffs"];
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
  v4 = [MEMORY[0x1E695E000] em_userDefaults];
  v3 = [(EDUserNotificationMailboxCutoffController *)self mailboxCutoffs];
  [v4 setObject:v3 forKey:@"UserNotificationMailboxCutoffs"];
}

- (void)updateCutoffForMailboxesWithMessages:(void *)a3 .cold.1(void *a1, uint8_t *buf, void *a3, os_log_t log)
{
  *buf = 138543362;
  *a3 = a1;
  _os_log_error_impl(&dword_1C61EF000, log, OS_LOG_TYPE_ERROR, "Message %{public}@ has a nil mailbox identifier", buf, 0xCu);
}

@end