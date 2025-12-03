@interface HMFMemoryAssertion
- (HMFMemoryAssertion)initWithName:(id)name;
- (void)invalidate;
- (void)mark;
@end

@implementation HMFMemoryAssertion

- (HMFMemoryAssertion)initWithName:(id)name
{
  v9.receiver = self;
  v9.super_class = HMFMemoryAssertion;
  v3 = [(HMFAssertion *)&v9 initWithName:name];
  v4 = v3;
  if (v3)
  {
    uniqueDescription = [(HMFAssertion *)v3 uniqueDescription];
    [uniqueDescription UTF8String];
    v6 = os_transaction_create();
    internal = v4->_internal;
    v4->_internal = v6;
  }

  return v4;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = HMFMemoryAssertion;
  [(HMFAssertion *)&v3 invalidate];
  [(HMFMemoryAssertion *)self setInternal:0];
}

- (void)mark
{
  v15 = *MEMORY[0x277D85DE8];
  v12.receiver = self;
  v12.super_class = HMFMemoryAssertion;
  [(HMFAssertion *)&v12 mark];
  internal = [(HMFMemoryAssertion *)self internal];
  v4 = os_transaction_needs_more_time();

  v5 = objc_autoreleasePoolPush();
  selfCopy = self;
  v7 = HMFGetOSLogHandle();
  v8 = os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG);
  if (v4)
  {
    if (v8)
    {
      v9 = HMFGetLogIdentifier(selfCopy);
      *buf = 138543362;
      v14 = v9;
      v10 = "%{public}@Successfully marked";
LABEL_6:
      _os_log_impl(&dword_22ADEC000, v7, OS_LOG_TYPE_DEBUG, v10, buf, 0xCu);
    }
  }

  else if (v8)
  {
    v9 = HMFGetLogIdentifier(selfCopy);
    *buf = 138543362;
    v14 = v9;
    v10 = "%{public}@Failed to mark";
    goto LABEL_6;
  }

  objc_autoreleasePoolPop(v5);
  v11 = *MEMORY[0x277D85DE8];
}

@end