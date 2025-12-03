@interface EDAddDownloadStateToMessageGlobalDataUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddDownloadStateToMessageGlobalDataUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if (sqlite3_table_column_metadata([connectionCopy sqlDB], 0, "message_global_data", "download_state", 0, 0, 0, 0, 0))
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN download_state INTEGER NOT NULL DEFAULT 0;", 0, 0, 0);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

@end