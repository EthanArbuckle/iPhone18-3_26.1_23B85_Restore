@interface EDAddiCloudCleanupColumnUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddiCloudCleanupColumnUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"is_icloud_cleanup" inTable:@"threads" type:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE threads ADD COLUMN is_icloud_cleanup INTEGER NOT NULL DEFAULT 0;", 0, 0, 0);
  }

  return v4;
}

@end