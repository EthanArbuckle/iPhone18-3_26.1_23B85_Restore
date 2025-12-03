@interface EDAddMessagesDeletedDateReceivedIndexUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMessagesDeletedDateReceivedIndexUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "CREATE INDEX IF NOT EXISTS messages_deleted_date_received_index ON messages(deleted, date_received);", 0, 0, 0);

  return v4;
}

@end