@interface HMDDecryptionCompletedLogEvent
- (HMDDecryptionCompletedLogEvent)initWithFailure:(BOOL)a3;
@end

@implementation HMDDecryptionCompletedLogEvent

- (HMDDecryptionCompletedLogEvent)initWithFailure:(BOOL)a3
{
  v5.receiver = self;
  v5.super_class = HMDDecryptionCompletedLogEvent;
  result = [(HMMLogEvent *)&v5 init];
  if (result)
  {
    result->_didDecryptionFail = a3;
  }

  return result;
}

@end