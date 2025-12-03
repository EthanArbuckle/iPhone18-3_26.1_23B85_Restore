@interface FCModifySubscriptionsCommand
- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord;
@end

@implementation FCModifySubscriptionsCommand

- (BOOL)mergeLocalRecord:(id)record withRemoteRecord:(id)remoteRecord
{
  recordCopy = record;
  remoteRecordCopy = remoteRecord;
  v7 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
  v8 = [remoteRecordCopy objectForKeyedSubscript:@"dateAdded"];
  v9 = [v7 fc_isLaterThan:v8];
  if (v9)
  {
    v10 = [recordCopy objectForKeyedSubscript:@"dateAdded"];
    [remoteRecordCopy setObject:v10 forKeyedSubscript:@"dateAdded"];
  }

  return v9;
}

@end