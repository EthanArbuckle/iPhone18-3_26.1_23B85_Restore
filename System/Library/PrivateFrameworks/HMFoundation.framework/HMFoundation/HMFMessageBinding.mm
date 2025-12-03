@interface HMFMessageBinding
- (HMFMessageBinding)initWithName:(id)name policies:(id)policies selector:(SEL)selector messageReceiver:(id)receiver;
- (HMFMessageReceiver)messageReceiver;
@end

@implementation HMFMessageBinding

- (HMFMessageBinding)initWithName:(id)name policies:(id)policies selector:(SEL)selector messageReceiver:(id)receiver
{
  nameCopy = name;
  policiesCopy = policies;
  receiverCopy = receiver;
  v17.receiver = self;
  v17.super_class = HMFMessageBinding;
  v14 = [(HMFMessageBinding *)&v17 init];
  v15 = v14;
  if (v14)
  {
    objc_storeStrong(&v14->_name, name);
    v15->_selector = selector;
    objc_storeStrong(&v15->_policies, policies);
    objc_storeWeak(&v15->_messageReceiver, receiverCopy);
  }

  return v15;
}

- (HMFMessageReceiver)messageReceiver
{
  WeakRetained = objc_loadWeakRetained(&self->_messageReceiver);

  return WeakRetained;
}

@end