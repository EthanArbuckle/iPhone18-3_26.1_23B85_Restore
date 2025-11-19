@interface HMDLoggingEventForwarder
- (HMDLoggingEventForwarder)initWithEventForwarder:(id)a3 logEventSubmitter:(id)a4;
- (void)forwardEvent:(id)a3 topic:(id)a4 completion:(id)a5;
@end

@implementation HMDLoggingEventForwarder

- (void)forwardEvent:(id)a3 topic:(id)a4 completion:(id)a5
{
  v14 = a3;
  v8 = a4;
  v10 = a5;
  if (self)
  {
    [objc_getProperty(self v9];
    v11 = v8;
    v12 = [[HMDEventRouterPostedEventLogEvent alloc] initWithTopic:v11];

    [objc_getProperty(self v13];
  }

  else
  {
    [0 forwardEvent:v14 topic:v8 completion:v10];
  }
}

- (HMDLoggingEventForwarder)initWithEventForwarder:(id)a3 logEventSubmitter:(id)a4
{
  v7 = a3;
  v8 = a4;
  v12.receiver = self;
  v12.super_class = HMDLoggingEventForwarder;
  v9 = [(HMDLoggingEventForwarder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventForwarder, a3);
    objc_storeStrong(&v10->_logEventSubmitter, a4);
  }

  return v10;
}

@end