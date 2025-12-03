@interface EDAddMessagesBrandIndicatorColumnUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMessagesBrandIndicatorColumnUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy columnExists:@"brand_indicator" inTable:@"messages" type:0])
  {
    v4 = 0;
  }

  else
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE messages ADD COLUMN brand_indicator INTEGER;CREATE INDEX IF NOT EXISTS messages_brand_indicator_index ON messages(brand_indicator);", 0, 0, 0);
  }

  return v4;
}

@end