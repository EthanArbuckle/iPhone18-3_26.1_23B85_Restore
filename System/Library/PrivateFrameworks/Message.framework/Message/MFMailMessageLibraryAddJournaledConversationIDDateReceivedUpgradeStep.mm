@interface MFMailMessageLibraryAddJournaledConversationIDDateReceivedUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation MFMailMessageLibraryAddJournaledConversationIDDateReceivedUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  if (([v3 executeStatementString:@"CREATE INDEX IF NOT EXISTS messages_journaled_conversation_id_date_received_index ON messages(journaled errorMessage:{conversation_id, date_received);", @"Creating messages_journaled_conversation_id_date_received_index"}] & 1) != 0 && objc_msgSend(v3, "executeStatementString:errorMessage:", @"DROP INDEX IF EXISTS messages_journaled_conversation_id_index;", @"Dropping messages_journaled_conversation_id_index") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"DROP TABLE attachments", @"Dropping attachments") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"CREATE TABLE attachments (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, message INTEGER NOT NULL REFERENCES messages(ROWID) ON DELETE CASCADE, attachment_id TEXT COLLATE BINARY, name TEXT COLLATE BINARY, UNIQUE(message, attachment_id) ON CONFLICT ABORT);", @"Creating attachments") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"CREATE INDEX IF NOT EXISTS attachments_message_attachment_id_index ON attachments(message, attachment_id);", @"Creating attachments_message_attachment_id_index") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"CREATE INDEX IF NOT EXISTS attachments_message_name_index ON attachments(message, name);", @"Creating attachments_message_name_index") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"CREATE INDEX IF NOT EXISTS searchable_attachments_attachment_index ON searchable_attachments(attachment);", @"Creating searchable_attachments_attachment_index") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"CREATE INDEX IF NOT EXISTS searchable_attachments_message_id_index ON searchable_attachments(message_id);", @"Creating searchable_attachments_message_id_index") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"ALTER TABLE searchable_message_tombstones RENAME TO searchable_message_tombstones_old;", @"Renaming searchable_message_tombstones") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"CREATE TABLE searchable_message_tombstones (ROWID INTEGER PRIMARY KEY AUTOINCREMENT, type INTEGER NOT NULL, identifier TEXT COLLATE BINARY NOT NULL, transaction_id INTEGER, UNIQUE(type, identifier) ON CONFLICT ABORT);", @"Creating searchable_message_tombstones_new") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"INSERT INTO searchable_message_tombstones SELECT * FROM searchable_message_tombstones_old;", @"Copying searchable_message_tombstones to new table") && objc_msgSend(v3, "executeStatementString:errorMessage:", @"DROP TABLE searchable_message_tombstones_old;", @"Dropping searchable_message_tombstones_old"))
  {
    v4 = [v3 executeStatementString:@"CREATE INDEX IF NOT EXISTS searchable_message_tombstones_transaction_id_type_identifier_index ON searchable_message_tombstones(transaction_id errorMessage:{type, identifier);", @"Creating searchable_message_tombstones_transaction_id_type_identifier_index"}] ^ 1;
  }

  else
  {
    v4 = 1;
  }

  return v4;
}

@end