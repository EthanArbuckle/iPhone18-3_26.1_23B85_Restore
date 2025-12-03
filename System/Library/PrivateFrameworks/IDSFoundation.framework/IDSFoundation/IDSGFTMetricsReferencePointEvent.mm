@interface IDSGFTMetricsReferencePointEvent
- (IDSGFTMetricsReferencePointEvent)initWithTime:(id)time reason:(id)reason;
@end

@implementation IDSGFTMetricsReferencePointEvent

- (IDSGFTMetricsReferencePointEvent)initWithTime:(id)time reason:(id)reason
{
  timeCopy = time;
  reasonCopy = reason;
  v13.receiver = self;
  v13.super_class = IDSGFTMetricsReferencePointEvent;
  v9 = [(IDSGFTMetricsReferencePointEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_time, time);
    objc_storeStrong(&v10->_reason, reason);
    v11 = v10;
  }

  return v10;
}

@end