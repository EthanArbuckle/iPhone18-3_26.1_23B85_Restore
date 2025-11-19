@interface COMessageSessionConsumer
- (COMessageChannel)messageChannel;
- (COMessageSessionConsumer)initWithChannel:(id)a3 subTopic:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6;
- (COMessageSessionConsumerDelegate)delegate;
- (id)description;
@end

@implementation COMessageSessionConsumer

- (COMessageSessionConsumer)initWithChannel:(id)a3 subTopic:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = COMessageSessionConsumer;
  v14 = [(COMessageSessionConsumer *)&v19 init];
  v15 = v14;
  if (v14)
  {
    objc_storeWeak(&v14->_messageChannel, v10);
    objc_storeStrong(&v15->_subTopic, a4);
    objc_storeWeak(&v15->_delegate, v12);
    objc_storeStrong(&v15->_delegateQueue, a6);
    v16 = [MEMORY[0x277CBEB38] dictionary];
    sessions = v15->_sessions;
    v15->_sessions = v16;
  }

  return v15;
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

- (COMessageSessionConsumerDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end