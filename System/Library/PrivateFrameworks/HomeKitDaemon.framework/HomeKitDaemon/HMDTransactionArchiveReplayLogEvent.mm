@interface HMDTransactionArchiveReplayLogEvent
- (HMDTransactionArchiveReplayLogEvent)initWithNumUncommittedRecords:(int64_t)records numUncommittedAndPushedRecords:(int64_t)pushedRecords;
@end

@implementation HMDTransactionArchiveReplayLogEvent

- (HMDTransactionArchiveReplayLogEvent)initWithNumUncommittedRecords:(int64_t)records numUncommittedAndPushedRecords:(int64_t)pushedRecords
{
  v7.receiver = self;
  v7.super_class = HMDTransactionArchiveReplayLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_numUncommittedRecords = records;
    result->_numUncommittedAndPushedRecords = pushedRecords;
  }

  return result;
}

@end