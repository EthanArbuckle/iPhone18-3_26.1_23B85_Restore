@interface HMDLoggingEventForwarder
- (HMDLoggingEventForwarder)initWithEventForwarder:(id)forwarder logEventSubmitter:(id)submitter;
- (void)forwardEvent:(id)event topic:(id)topic completion:(id)completion;
@end

@implementation HMDLoggingEventForwarder

- (void)forwardEvent:(id)event topic:(id)topic completion:(id)completion
{
  eventCopy = event;
  topicCopy = topic;
  completionCopy = completion;
  if (self)
  {
    [objc_getProperty(self v9];
    v11 = topicCopy;
    v12 = [[HMDEventRouterPostedEventLogEvent alloc] initWithTopic:v11];

    [objc_getProperty(self v13];
  }

  else
  {
    [0 forwardEvent:eventCopy topic:topicCopy completion:completionCopy];
  }
}

- (HMDLoggingEventForwarder)initWithEventForwarder:(id)forwarder logEventSubmitter:(id)submitter
{
  forwarderCopy = forwarder;
  submitterCopy = submitter;
  v12.receiver = self;
  v12.super_class = HMDLoggingEventForwarder;
  v9 = [(HMDLoggingEventForwarder *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_eventForwarder, forwarder);
    objc_storeStrong(&v10->_logEventSubmitter, submitter);
  }

  return v10;
}

@end