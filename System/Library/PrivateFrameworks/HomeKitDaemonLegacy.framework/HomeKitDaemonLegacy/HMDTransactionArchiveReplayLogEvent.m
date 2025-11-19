@interface HMDTransactionArchiveReplayLogEvent
- (HMDTransactionArchiveReplayLogEvent)initWithNumUncommittedRecords:(int64_t)a3 numUncommittedAndPushedRecords:(int64_t)a4;
@end

@implementation HMDTransactionArchiveReplayLogEvent

- (HMDTransactionArchiveReplayLogEvent)initWithNumUncommittedRecords:(int64_t)a3 numUncommittedAndPushedRecords:(int64_t)a4
{
  v7.receiver = self;
  v7.super_class = HMDTransactionArchiveReplayLogEvent;
  result = [(HMMLogEvent *)&v7 init];
  if (result)
  {
    result->_numUncommittedRecords = a3;
    result->_numUncommittedAndPushedRecords = a4;
  }

  return result;
}

@end