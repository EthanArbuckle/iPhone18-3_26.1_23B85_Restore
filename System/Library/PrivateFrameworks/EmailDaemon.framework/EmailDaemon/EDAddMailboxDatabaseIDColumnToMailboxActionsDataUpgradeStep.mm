@interface EDAddMailboxDatabaseIDColumnToMailboxActionsDataUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddMailboxDatabaseIDColumnToMailboxActionsDataUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  if (sqlite3_table_column_metadata([v3 sqlDB], 0, "mailbox_actions", "mailbox", 0, 0, 0, 0, 0))
  {
    v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE mailbox_actions ADD COLUMN mailbox INTEGER;", 0, 0, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end