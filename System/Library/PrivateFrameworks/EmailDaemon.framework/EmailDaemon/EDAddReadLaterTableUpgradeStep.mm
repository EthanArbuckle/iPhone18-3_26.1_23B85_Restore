@interface EDAddReadLaterTableUpgradeStep
+ (int)runWithConnection:(id)a3;
@end

@implementation EDAddReadLaterTableUpgradeStep

+ (int)runWithConnection:(id)a3
{
  v3 = a3;
  if ([v3 executeStatementString:@"ALTER TABLE threads ADD COLUMN read_later_date INTEGER;" errorMessage:@"Unable to add read_later_date column to threads"])
  {
    v4 = [v3 executeStatementString:@"CREATE TABLE IF NOT EXISTS read_later (global_message_id INTEGER PRIMARY KEY errorMessage:{date INTEGER NOT NULL);", @"Unable to create read_later table"}];
  }

  else
  {
    v4 = 0;
  }

  return v4 ^ 1;
}

@end