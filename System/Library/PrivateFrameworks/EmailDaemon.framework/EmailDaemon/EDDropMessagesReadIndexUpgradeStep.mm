@interface EDDropMessagesReadIndexUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDDropMessagesReadIndexUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  v4 = sqlite3_exec([v3 sqlDB], "DROP INDEX IF EXISTS messages_read_index;", 0, 0, 0);

  return v4;
}

@end