@interface EDAddMessagesSearchableMessageColumnUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMessagesSearchableMessageColumnUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"searchable_message" inTable:@"messages" type:0])
  {
    v4 = 0;
  }

  else
  {
    v5 = [connectionCopy executeStatementString:@"ALTER TABLE messages ADD COLUMN searchable_message INTEGER REFERENCES searchable_messages(message_id) ON DELETE SET NULL;" errorMessage:@"Unable to add searchable_message column to messages"];
    if (v5)
    {
      v5 = [connectionCopy executeStatementString:@"UPDATE OR IGNORE messages SET searchable_message = (SELECT searchable_messages.ROWID FROM searchable_messages WHERE searchable_messages.ROWID = messages.ROWID);" errorMessage:@"Unable to populate searchable_message"];
      if (v5)
      {
        v5 = [connectionCopy executeStatementString:@"CREATE INDEX IF NOT EXISTS messages_searchable_message_deleted_index ON messages(searchable_message errorMessage:{deleted);", @"Unable to add messages_searchable_message_deleted_index"}];
        if (v5)
        {
          v5 = [connectionCopy executeStatementString:@"CREATE INDEX IF NOT EXISTS searchable_messages_transaction_id_message_id_index ON searchable_messages(transaction_id errorMessage:{message_id);", @"Unable to add searchable_messages_transaction_id_message_id_index"}];
        }
      }
    }

    v4 = v5 ^ 1;
  }

  return v4;
}

@end