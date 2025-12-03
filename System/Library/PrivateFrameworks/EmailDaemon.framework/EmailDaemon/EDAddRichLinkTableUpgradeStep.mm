@interface EDAddRichLinkTableUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddRichLinkTableUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy executeStatementString:@"CREATE TABLE IF NOT EXISTS rich_links (ROWID INTEGER PRIMARY KEY AUTOINCREMENT errorMessage:{title TEXT COLLATE BINARY, url TEXT COLLATE BINARY NOT NULL, hash TEXT COLLATE BINARY NOT NULL, UNIQUE(hash) ON CONFLICT ABORT);", @"Creating rich_links table"}] && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"CREATE TABLE IF NOT EXISTS message_rich_links (global_message_id INTEGER NOT NULL REFERENCES message_global_data(ROWID) ON DELETE CASCADE, rich_link INTEGER NOT NULL REFERENCES rich_links(ROWID) ON DELETE CASCADE, PRIMARY KEY(global_message_id, rich_link)) WITHOUT ROWID;", @"Creating message_rich_links table") && objc_msgSend(connectionCopy, "executeStatementString:errorMessage:", @"CREATE TABLE IF NOT EXISTS searchable_rich_links (rich_link_id INTEGER PRIMARY KEY, rich_link INTEGER REFERENCES rich_links(ROWID) ON DELETE SET NULL, message_id INTEGER, transaction_id INTEGER NOT NULL);", @"Creating searchable_rich_links table"))
  {
    v4 = [connectionCopy executeStatementString:@"CREATE INDEX IF NOT EXISTS searchable_rich_links_message_id_index ON searchable_rich_links(message_id); CREATE INDEX IF NOT EXISTS searchable_rich_links_rich_link_index ON searchable_rich_links(rich_link);" errorMessage:@"Creating searchable_data_detection_results_message_index"];
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ 1;
}

@end