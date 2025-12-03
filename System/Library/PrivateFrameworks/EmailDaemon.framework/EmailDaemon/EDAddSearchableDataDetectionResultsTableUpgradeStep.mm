@interface EDAddSearchableDataDetectionResultsTableUpgradeStep
+ (int)runWithConnection:(id)connection;
@end

@implementation EDAddSearchableDataDetectionResultsTableUpgradeStep

+ (int)runWithConnection:(id)connection
{
  connectionCopy = connection;
  if ([connectionCopy executeStatementString:@"CREATE TABLE IF NOT EXISTS searchable_data_detection_results (ROWID INTEGER PRIMARY KEY errorMessage:{data_detection_result INTEGER, message INTEGER, transaction_id INTEGER NOT NULL);", @"Creating searchable_data_detection_results table"}])
  {
    v4 = [connectionCopy executeStatementString:@"CREATE INDEX IF NOT EXISTS searchable_data_detection_results_message_index ON searchable_data_detection_results(message); CREATE INDEX searchable_data_detection_results_data_detection_result_index ON searchable_data_detection_results(data_detection_result);" errorMessage:@"Unable to add searchable_data_detection_results_message_index"];
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ 1;
}

@end