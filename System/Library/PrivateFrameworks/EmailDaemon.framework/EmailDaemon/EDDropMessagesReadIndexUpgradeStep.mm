@interface EDDropMessagesReadIndexUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDDropMessagesReadIndexUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "DROP INDEX IF EXISTS messages_read_index;", 0, 0, 0);

  return v4;
}

@end