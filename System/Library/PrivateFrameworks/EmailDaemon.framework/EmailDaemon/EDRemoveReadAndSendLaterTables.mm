@interface EDRemoveReadAndSendLaterTables
+ (int)runWithConnection:(id)connection;
@end

@implementation EDRemoveReadAndSendLaterTables

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN read_later_date INTEGER;ALTER TABLE message_global_data ADD COLUMN send_later_date INTEGER;CREATE INDEX IF NOT EXISTS message_global_data_read_later_date_index ON message_global_data(read_later_date);CREATE INDEX IF NOT EXISTS message_global_data_send_later_date_index ON message_global_data(send_later_date);", 0, 0, 0);
  if (!v4)
  {
    v4 = sqlite3_exec([connectionCopy sqlDB], "UPDATE message_global_data SET read_later_date = (SELECT date FROM read_later WHERE message_global_data.ROWID = read_later.global_message_id);", 0, 0, 0);
    if (!v4)
    {
      v4 = sqlite3_exec([connectionCopy sqlDB], "UPDATE message_global_data SET send_later_date = (SELECT date FROM send_later WHERE message_global_data.ROWID = send_later.global_message_id);", 0, 0, 0);
      if (!v4)
      {
        v4 = sqlite3_exec([connectionCopy sqlDB], "DROP TABLE read_later;DROP TABLE send_later;", 0, 0, 0);
      }
    }
  }

  return v4;
}

@end