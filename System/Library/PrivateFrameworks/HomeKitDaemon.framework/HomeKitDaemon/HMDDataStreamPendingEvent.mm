@interface HMDDataStreamPendingEvent
- (HMDDataStreamPendingEvent)initWithProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6;
@end

@implementation HMDDataStreamPendingEvent

- (HMDDataStreamPendingEvent)initWithProtocol:(id)a3 topic:(id)a4 payload:(id)a5 completion:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v14 = a6;
  v20.receiver = self;
  v20.super_class = HMDDataStreamPendingEvent;
  v15 = [(HMDDataStreamPendingEvent *)&v20 init];
  v16 = v15;
  if (v15)
  {
    objc_storeStrong(&v15->_protocol, a3);
    objc_storeStrong(&v16->_topic, a4);
    v17 = _Block_copy(v14);
    completion = v16->_completion;
    v16->_completion = v17;

    objc_storeStrong(&v16->_payload, a5);
  }

  return v16;
}

@end