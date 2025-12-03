@interface EDAddDisplayDateColumnUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddDisplayDateColumnUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE messages ADD COLUMN display_date INTEGER;CREATE INDEX IF NOT EXISTS messages_mailbox_display_date_index ON messages(mailbox, display_date);UPDATE messages SET display_date = date_received;", 0, 0, 0);

  return v4;
}

@end