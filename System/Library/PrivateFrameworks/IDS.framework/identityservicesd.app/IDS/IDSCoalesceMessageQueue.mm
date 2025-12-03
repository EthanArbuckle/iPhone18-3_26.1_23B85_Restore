@interface IDSCoalesceMessageQueue
- (BOOL)isEmpty;
- (IDSCoalesceMessageQueue)initWithTopic:(id)topic sendMode:(id)mode;
- (unint64_t)count;
@end

@implementation IDSCoalesceMessageQueue

- (IDSCoalesceMessageQueue)initWithTopic:(id)topic sendMode:(id)mode
{
  topicCopy = topic;
  modeCopy = mode;
  v12.receiver = self;
  v12.super_class = IDSCoalesceMessageQueue;
  v9 = [(IDSCoalesceMessageQueue *)&v12 init];
  v10 = v9;
  if (v9)
  {
    objc_storeStrong(&v9->_topic, topic);
    objc_storeStrong(&v10->_sendMode, mode);
  }

  return v10;
}

- (BOOL)isEmpty
{
  infos = [(IDSCoalesceMessageQueue *)self infos];
  v3 = [infos count] == 0;

  return v3;
}

- (unint64_t)count
{
  infos = [(IDSCoalesceMessageQueue *)self infos];
  v3 = [infos count];

  return v3;
}

@end