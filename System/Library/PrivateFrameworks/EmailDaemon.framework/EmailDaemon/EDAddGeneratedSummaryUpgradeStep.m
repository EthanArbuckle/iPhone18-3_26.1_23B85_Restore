@interface EDAddGeneratedSummaryUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddGeneratedSummaryUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  if ([v3 columnExists:@"generated_summary" inTable:@"message_global_data" type:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE message_global_data ADD COLUMN generated_summary INTEGER;", 0, 0, 0);
  }

  if (([v3 columnExists:@"urgent" inTable:@"message_global_data" type:0] & 1) == 0)
  {
    v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE message_global_data ADD COLUMN urgent INTEGER;", 0, 0, 0);
  }

  return v4;
}

@end