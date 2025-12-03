@interface EDAddFollowUpJsonStringForModelEvaluationForSuggestionsColumnUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddFollowUpJsonStringForModelEvaluationForSuggestionsColumnUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  v4 = sqlite3_exec([connectionCopy sqlDB], "ALTER TABLE message_global_data ADD COLUMN follow_up_jsonstringformodelevaluationforsuggestions TEXT COLLATE BINARY;CREATE INDEX IF NOT EXISTS message_global_data_follow_up_jsonstringformodelevaluationforsuggestions_index ON message_global_data(follow_up_jsonstringformodelevaluationforsuggestions);", 0, 0, 0);

  return v4;
}

@end