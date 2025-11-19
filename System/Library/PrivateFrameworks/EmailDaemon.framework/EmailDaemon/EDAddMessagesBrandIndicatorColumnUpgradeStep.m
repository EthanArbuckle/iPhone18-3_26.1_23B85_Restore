@interface EDAddMessagesBrandIndicatorColumnUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddMessagesBrandIndicatorColumnUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  if ([v3 columnExists:@"brand_indicator" inTable:@"messages" type:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE messages ADD COLUMN brand_indicator INTEGER;CREATE INDEX IF NOT EXISTS messages_brand_indicator_index ON messages(brand_indicator);", 0, 0, 0);
  }

  return v4;
}

@end