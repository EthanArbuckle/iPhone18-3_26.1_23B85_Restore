@interface IDSGFTMetricsReferencePointEvent
- (IDSGFTMetricsReferencePointEvent)initWithTime:(id)a3 reason:(id)a4;
@end

@implementation IDSGFTMetricsReferencePointEvent

- (IDSGFTMetricsReferencePointEvent)initWithTime:(id)a3 reason:(id)a4
{
  v7 = a3;
  v8 = a4;
  v13.receiver = self;
  v13.super_class = IDSGFTMetricsReferencePointEvent;
  v9 = [(IDSGFTMetricsReferencePointEvent *)&v13 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_time, a3);
    objc_storeStrong(&v10->_reason, a4);
    v11 = v10;
  }

  return v10;
}

@end