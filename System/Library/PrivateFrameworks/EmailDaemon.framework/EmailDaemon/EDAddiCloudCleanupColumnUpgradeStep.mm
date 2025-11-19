@interface EDAddiCloudCleanupColumnUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddiCloudCleanupColumnUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  if ([v3 columnExists:@"is_icloud_cleanup" inTable:@"threads" type:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE threads ADD COLUMN is_icloud_cleanup INTEGER NOT NULL DEFAULT 0;", 0, 0, 0);
  }

  return v4;
}

@end