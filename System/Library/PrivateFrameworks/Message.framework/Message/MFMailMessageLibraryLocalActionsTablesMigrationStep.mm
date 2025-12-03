@interface MFMailMessageLibraryLocalActionsTablesMigrationStep
+ (id)log;
- (BOOL)_populateServerMessages;
- (BOOL)performMigrationStep;
- (MFMailMessageLibraryLocalActionsTablesMigrationStep)initWithSQLiteConnection:(id)connection;
- (id)_offlineCacheOperations;
@end

@implementation MFMailMessageLibraryLocalActionsTablesMigrationStep

+ (id)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __58__MFMailMessageLibraryLocalActionsTablesMigrationStep_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_16 != -1)
  {
    dispatch_once(&log_onceToken_16, block);
  }

  v2 = log_log_16;

  return v2;
}

void __58__MFMailMessageLibraryLocalActionsTablesMigrationStep_log__block_invoke(uint64_t a1)
{
  v3 = NSStringFromClass(*(a1 + 32));
  v1 = os_log_create("com.apple.email", [v3 UTF8String]);
  v2 = log_log_16;
  log_log_16 = v1;
}

- (MFMailMessageLibraryLocalActionsTablesMigrationStep)initWithSQLiteConnection:(id)connection
{
  connectionCopy = connection;
  v9.receiver = self;
  v9.super_class = MFMailMessageLibraryLocalActionsTablesMigrationStep;
  v6 = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_connection, connection);
  }

  return v7;
}

- (BOOL)performMigrationStep
{
  v32[14] = *MEMORY[0x1E69E9840];
  connection = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self connection];
  _serverMessagesTableDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _serverMessagesTableDefinition];
  v32[0] = _serverMessagesTableDefinition;
  _serverMessagesMessageIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _serverMessagesMessageIndexDefinition];
  v32[1] = _serverMessagesMessageIndexDefinition;
  _serverLabelsTableDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _serverLabelsTableDefinition];
  v32[2] = _serverLabelsTableDefinition;
  _localMessageActionsTableDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _localMessageActionsTableDefinition];
  v32[3] = _localMessageActionsTableDefinition;
  _localMessageActionsMailboxRowIDIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _localMessageActionsMailboxRowIDIndexDefinition];
  v32[4] = _localMessageActionsMailboxRowIDIndexDefinition;
  _actionMessagesTableDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionMessagesTableDefinition];
  v32[5] = _actionMessagesTableDefinition;
  _actionMessagesActionIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionMessagesActionIndexDefinition];
  v32[6] = _actionMessagesActionIndexDefinition;
  _actionMessagesMessageIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionMessagesMessageIndexDefinition];
  v32[7] = _actionMessagesMessageIndexDefinition;
  _actionMessagesDestinationMessageIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionMessagesDestinationMessageIndexDefinition];
  v32[8] = _actionMessagesDestinationMessageIndexDefinition;
  _actionLabelsTableDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionLabelsTableDefinition];
  v32[9] = _actionLabelsTableDefinition;
  _actionLabelsActionIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionLabelsActionIndexDefinition];
  v32[10] = _actionLabelsActionIndexDefinition;
  _actionLabelsLabelIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionLabelsLabelIndexDefinition];
  v32[11] = _actionLabelsLabelIndexDefinition;
  _actionFlagsTableDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionFlagsTableDefinition];
  v32[12] = _actionFlagsTableDefinition;
  _actionFlagsActionIndexDefinition = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _actionFlagsActionIndexDefinition];
  v32[13] = _actionFlagsActionIndexDefinition;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:14];

  v12 = [v26 componentsJoinedByString:@"\n"];
  if (![connection executeStatementString:v12 errorMessage:@"Creating server messages and local actions tables"] || !-[MFMailMessageLibraryLocalActionsTablesMigrationStep _populateServerMessages](self, "_populateServerMessages"))
  {
    goto LABEL_14;
  }

  [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self _offlineCacheOperations];
  v29 = 0u;
  v30 = 0u;
  v27 = 0u;
  v13 = v28 = 0u;
  v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
  if (v14)
  {
    v15 = *v28;
    while (2)
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v28 != v15)
        {
          objc_enumerationMutation(v13);
        }

        if (([*(*(&v27 + 1) + 8 * i) translateToLocalActionWithConnection:connection] & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v14 = [v13 countByEnumeratingWithState:&v27 objects:v31 count:16];
      if (v14)
      {
        continue;
      }

      break;
    }
  }

  if ([connection executeStatementString:@"DROP TABLE offline_cache_operations" errorMessage:@"Dropping offline_cache_operations"])
  {
    v17 = [connection executeStatementString:@"DROP TABLE offline_cache_replay_data" errorMessage:@"Dropping offline_cache_replay_data"];
  }

  else
  {
LABEL_14:
    v17 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

- (BOOL)_populateServerMessages
{
  connection = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self connection];
  v3 = objc_opt_new();
  v4 = objc_opt_new();
  [v3 addObject:@"message"];
  [v4 addObject:@"messages.ROWID"];
  [v3 addObject:@"mailbox"];
  [v4 addObject:@"messages.mailbox"];
  [v3 addObject:@"remote_id"];
  [v4 addObject:@"messages.remote_id"];
  [v3 addObject:@"read"];
  [v4 addObject:@"messages.flags & 1"];
  [v3 addObject:@"deleted"];
  [v4 addObject:@"(messages.flags & (1 << 1)) != 0"];
  [v3 addObject:@"replied"];
  [v4 addObject:@"(messages.flags & (1 << 2)) != 0"];
  [v3 addObject:@"flagged"];
  [v4 addObject:@"(messages.flags & (1 << 4)) != 0"];
  [v3 addObject:@"draft"];
  [v4 addObject:@"(messages.flags & (1 << 6)) != 0"];
  [v3 addObject:@"forwarded"];
  [v4 addObject:@"(messages.flags & (1 << 8)) != 0"];
  [v3 addObject:@"redirected"];
  [v4 addObject:@"(messages.flags & (1 << 9)) != 0"];
  [v3 addObject:@"junk_level_set_by_user"];
  [v4 addObject:@"0"];
  [v3 addObject:@"junk_level"];
  [v4 addObject:@"(((messages.flags & (1 << 21)) != 0) AND ((messages.flags & (1 << 31)) == 0)) | ((((messages.flags & (1 << 21)) == 0) AND ((messages.flags & (1 << 31)) != 0)) << 1)"];
  [v3 addObject:@"flag_color"];
  [v4 addObject:@"0"];
  v5 = MEMORY[0x1E696AEC0];
  v6 = [v3 componentsJoinedByString:{@", "}];
  v7 = [v4 componentsJoinedByString:{@", "}];
  v8 = [v5 stringWithFormat:@"INSERT OR IGNORE INTO server_messages (%@) SELECT %@ FROM messages JOIN mailboxes ON messages.mailbox = mailboxes.ROWID WHERE %@", v6, v7, @"((messages.flags & (1 << 32)) == 0) AND (mailboxes.url LIKE 'imap://%%')"];

  LOBYTE(v6) = [connection executeStatementString:v8 errorMessage:@"Creating server_messages from messages"];
  return v6;
}

- (id)_offlineCacheOperations
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  connection = [(MFMailMessageLibraryLocalActionsTablesMigrationStep *)self connection];
  v5 = [connection preparedStatementForQueryString:@"SELECT operation_data FROM offline_cache_operations WHERE completed = '0' ORDER BY rowid ASC"];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __78__MFMailMessageLibraryLocalActionsTablesMigrationStep__offlineCacheOperations__block_invoke;
  v13[3] = &unk_1E7AA3610;
  v6 = v3;
  v14 = v6;
  v12 = 0;
  v7 = [v5 executeUsingBlock:v13 error:&v12];
  v8 = v12;
  if ((v7 & 1) == 0)
  {
    [connection handleError:v8 message:@"getting offline cache operations"];
  }

  v9 = v14;
  v10 = v6;

  return v6;
}

void __78__MFMailMessageLibraryLocalActionsTablesMigrationStep__offlineCacheOperations__block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 objectAtIndexedSubscript:0];
  v5 = [v4 dataValue];

  if ([v5 length])
  {
    v6 = [MEMORY[0x1E696ACD0] unarchivedObjectOfClass:objc_opt_class() fromData:v5 error:0];
    [*(a1 + 32) addObject:v6];
  }
}

void __78__MFMailMessageLibraryLocalActionsTablesMigrationStep__offlineCacheOperations__block_invoke_cold_1(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_1_2(&dword_1B0389000, a2, a3, "Exception thrown while unarchiving offline cache operation: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

@end