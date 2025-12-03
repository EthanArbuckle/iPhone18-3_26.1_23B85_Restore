@interface EDAddMailboxDatabaseIDColumnToMailboxActionsDataUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMailboxDatabaseIDColumnToMailboxActionsDataUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (sqlite3_table_column_metadata([connectionCopy sqlDB], 0, "mailbox_actions", "mailbox", 0, 0, 0, 0, 0))
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE mailbox_actions ADD COLUMN mailbox INTEGER;", 0, 0, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end