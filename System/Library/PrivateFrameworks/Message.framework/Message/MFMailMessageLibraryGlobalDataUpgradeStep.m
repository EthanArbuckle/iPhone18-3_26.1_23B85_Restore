@interface MFMailMessageLibraryGlobalDataUpgradeStep
+ (BOOL)_recreateMessagesIndices:(id)a3;
+ (int)runWithConnection:(id)a3;
@end

@implementation MFMailMessageLibraryGlobalDataUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v4 = a3;
  if (([v4 executeStatementString:@"CREATE TABLE message_global_data (ROWID INTEGER PRIMARY KEY AUTOINCREMENT errorMessage:{\nmessage_id INTEGER, \nUNIQUE(message_id) ON CONFLICT ABORT)", @"Creating message_global_data"}] & 1) == 0)
  {
    goto LABEL_11;
  }

  if (![v4 executeStatementString:@"INSERT INTO message_global_data (message_id) SELECT DISTINCT message_id FROM messages" errorMessage:@"Populating message_global_data table"])
  {
    goto LABEL_11;
  }

  if (![v4 executeStatementString:@"DROP TRIGGER IF EXISTS after_delete_message;\n" errorMessage:@"Dropping trigger"])
  {
    goto LABEL_11;
  }

  if (![v4 executeStatementString:@"ALTER TABLE messages RENAME TO messages_old" errorMessage:@"Moving messages table aside"])
  {
    goto LABEL_11;
  }

  v5 = [a1 _messagesTableDefinition];
  v6 = [v4 executeStatementString:v5 errorMessage:@"Adding new messages table"];

  if ((v6 & 1) == 0)
  {
    goto LABEL_11;
  }

  if ([v4 executeStatementString:@"INSERT INTO messages (ROWID errorMessage:{message_id, global_message_id, remote_id, document_id, sender, subject_prefix, subject, summary, date_sent, date_received, mailbox, remote_mailbox, flags, read, flagged, deleted, size, conversation_id, date_last_viewed, original_mailbox, visible, sender_vip, encoding, content_type, sequence_identifier, external_id, unique_id, content_index_transaction_id, list_id_hash, journaled, flag_color, searchable_message) SELECT messages_old.ROWID, messages_old.message_id, message_global_data.ROWID, remote_id, document_id, sender, subject_prefix, subject, summary, date_sent, date_received, mailbox, remote_mailbox, flags, read, flagged, deleted, size, conversation_id, date_last_viewed, original_mailbox, visible, sender_vip, encoding, content_type, sequence_identifier, external_id, unique_id, content_index_transaction_id, list_id_hash, journaled, flag_color, searchable_message FROM messages_old JOIN message_global_data ON messages_old.message_id = message_global_data.message_id", @"Copying messages to new table"}] && objc_msgSend(v4, "executeStatementString:errorMessage:", @"DROP TABLE messages_old", @"Dropping old messages table") && objc_msgSend(a1, "_recreateMessagesIndices:", v4) && (objc_msgSend(a1, "_triggerDefinition"), v7 = objc_claimAutoreleasedReturnValue(), v8 = objc_msgSend(v4, "executeStatementString:errorMessage:", v7, @"Adding trigger"), v7, (v8 & 1) != 0))
  {
    [v4 executeStatementString:@"INSERT INTO properties  (key errorMessage:{value) VALUES (NeedToMigrateFiles, 1)", @"Setting need to upgrade property"}];
    v9 = 0;
  }

  else
  {
LABEL_11:
    v9 = 1;
  }

  return v9;
}

+ (BOOL)_recreateMessagesIndices:(id)a3
{
  v15 = *MEMORY[0x1E69E9840];
  v3 = a3;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = [&unk_1F2775220 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v4)
  {
    v5 = *v11;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(&unk_1F2775220);
        }

        if (([v3 executeStatementString:*(*(&v10 + 1) + 8 * i) errorMessage:@"Adding index"] & 1) == 0)
        {
          v7 = 0;
          goto LABEL_11;
        }
      }

      v4 = [&unk_1F2775220 countByEnumeratingWithState:&v10 objects:v14 count:16];
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  v7 = 1;
LABEL_11:

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

@end