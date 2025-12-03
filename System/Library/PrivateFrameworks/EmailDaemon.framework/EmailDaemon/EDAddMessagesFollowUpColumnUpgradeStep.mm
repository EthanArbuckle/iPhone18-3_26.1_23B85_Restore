@interface EDAddMessagesFollowUpColumnUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddMessagesFollowUpColumnUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN follow_up_start_date INTEGER;ALTER TABLE message_global_data ADD COLUMN follow_up_end_date INTEGER;CREATE INDEX IF NOT EXISTS message_global_data_follow_up_start_date_index ON message_global_data(follow_up_start_date);CREATE INDEX IF NOT EXISTS message_global_data_follow_up_end_date_index ON message_global_data(follow_up_end_date);", 0, 0, 0);

  return v4;
}

@end