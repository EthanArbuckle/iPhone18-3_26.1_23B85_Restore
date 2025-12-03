@interface IDSPushHandlerContext
- (IDSPushHandlerContext)initWithQueue:(id)queue wakingTopics:(id)topics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics commands:(id)commands;
@end

@implementation IDSPushHandlerContext

- (IDSPushHandlerContext)initWithQueue:(id)queue wakingTopics:(id)topics opportunisticTopics:(id)opportunisticTopics nonWakingTopics:(id)wakingTopics commands:(id)commands
{
  queueCopy = queue;
  topicsCopy = topics;
  opportunisticTopicsCopy = opportunisticTopics;
  wakingTopicsCopy = wakingTopics;
  commandsCopy = commands;
  v29.receiver = self;
  v29.super_class = IDSPushHandlerContext;
  v18 = [(IDSPushHandlerContext *)&v29 init];
  v19 = v18;
  if (v18)
  {
    if (queueCopy)
    {
      objc_storeStrong(&v18->_queue, queue);
    }

    v20 = [topicsCopy copy];
    wakingTopics = v19->_wakingTopics;
    v19->_wakingTopics = v20;

    v22 = [opportunisticTopicsCopy copy];
    opportunisticTopics = v19->_opportunisticTopics;
    v19->_opportunisticTopics = v22;

    v24 = [wakingTopicsCopy copy];
    nonWakingTopics = v19->_nonWakingTopics;
    v19->_nonWakingTopics = v24;

    v26 = [commandsCopy copy];
    commands = v19->_commands;
    v19->_commands = v26;
  }

  return v19;
}

@end