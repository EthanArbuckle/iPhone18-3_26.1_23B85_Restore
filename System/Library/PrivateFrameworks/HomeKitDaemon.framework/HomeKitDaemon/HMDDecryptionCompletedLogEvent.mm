@interface HMDDecryptionCompletedLogEvent
- (HMDDecryptionCompletedLogEvent)initWithFailure:(BOOL)failure;
@end

@implementation HMDDecryptionCompletedLogEvent

- (HMDDecryptionCompletedLogEvent)initWithFailure:(BOOL)failure
{
  v5.receiver = self;
  v5.super_class = HMDDecryptionCompletedLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_didDecryptionFail = failure;
  }

  return result;
}

@end