@interface COMessageSessionProducer
- (COMessageChannel)messageChannel;
- (COMessageSessionProducer)initWithChannel:(id)channel subTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue;
- (COMessageSessionProducerDelegate)delegate;
- (id)description;
- (void)startSessionWithMembers:(id)members;
@end

@implementation COMessageSessionProducer

- (COMessageSessionProducer)initWithChannel:(id)channel subTopic:(id)topic delegate:(id)delegate dispatchQueue:(id)queue
{
  channelCopy = channel;
  topicCopy = topic;
  delegateCopy = delegate;
  queueCopy = queue;
  v19.receiver = self;
  v19.super_class = COMessageSessionProducer;
  v14 = [(COMessageSessionProducer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_messageChannel, channelCopy);
    objc_storeStrong(&v15->_subTopic, topic);
    objc_storeWeak(&v15->_delegate, delegateCopy);
    objc_storeStrong(&v15->_delegateQueue, queue);
    dictionary = [MEMORY[0x277CBEB38] dictionary];
    sessions = v15->_sessions;
    v15->_sessions = dictionary;
  }

  return v15;
}

- (void)startSessionWithMembers:(id)members
{
  membersCopy = members;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_messageChannel);
    [v5 startSessionWithProducer:self members:membersCopy];
  }
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@: %p, subTopic = %@>", v5, self, self->_subTopic];

  return v6;
}

- (COMessageChannel)messageChannel
{
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);

  return WeakRetained;
}

- (COMessageSessionProducerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end