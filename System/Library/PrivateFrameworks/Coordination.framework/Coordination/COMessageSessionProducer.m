@interface COMessageSessionProducer
- (COMessageChannel)messageChannel;
- (COMessageSessionProducer)initWithChannel:(id)a3 subTopic:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6;
- (COMessageSessionProducerDelegate)delegate;
- (id)description;
- (void)startSessionWithMembers:(id)a3;
@end

@implementation COMessageSessionProducer

- (COMessageSessionProducer)initWithChannel:(id)a3 subTopic:(id)a4 delegate:(id)a5 dispatchQueue:(id)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = a6;
  v19.receiver = self;
  v19.super_class = COMessageSessionProducer;
  v14 = [(COMessageSessionProducer *)&v19 init];
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

- (void)startSessionWithMembers:(id)a3
{
  v6 = a3;
  WeakRetained = objc_loadWeakRetained(&self->_messageChannel);

  if (WeakRetained)
  {
    v5 = objc_loadWeakRetained(&self->_messageChannel);
    [v5 startSessionWithProducer:self members:v6];
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