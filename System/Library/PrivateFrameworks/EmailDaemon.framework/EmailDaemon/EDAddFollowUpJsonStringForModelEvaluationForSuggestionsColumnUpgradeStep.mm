@interface EDAddFollowUpJsonStringForModelEvaluationForSuggestionsColumnUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddFollowUpJsonStringForModelEvaluationForSuggestionsColumnUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  v4 = sqlite3_exec([v3 sqlDB], "ALTER TABLE message_global_data ADD COLUMN follow_up_jsonstringformodelevaluationforsuggestions TEXT COLLATE BINARY;CREATE INDEX IF NOT EXISTS message_global_data_follow_up_jsonstringformodelevaluationforsuggestions_index ON message_global_data(follow_up_jsonstringformodelevaluationforsuggestions);", 0, 0, 0);

  return v4;
}

@end