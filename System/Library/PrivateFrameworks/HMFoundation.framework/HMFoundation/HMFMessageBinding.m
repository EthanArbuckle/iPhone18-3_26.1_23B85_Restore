@interface HMFMessageBinding
- (HMFMessageBinding)initWithName:(id)a3 policies:(id)a4 selector:(SEL)a5 messageReceiver:(id)a6;
- (HMFMessageReceiver)messageReceiver;
@end

@implementation HMFMessageBinding

- (HMFMessageBinding)initWithName:(id)a3 policies:(id)a4 selector:(SEL)a5 messageReceiver:(id)a6
{
  v11 = a3;
  v12 = a4;
  v13 = a6;
  v17.receiver = self;
  v17.super_class = HMFMessageBinding;
  v14 = [(HMFMessageBinding *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, a3);
    v15->_selector = a5;
    objc_storeStrong(&v15->_policies, a4);
    objc_storeWeak(&v15->_messageReceiver, v13);
  }

  return v15;
}

- (HMFMessageReceiver)messageReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_messageReceiver);

  return WeakRetained;
}

@end