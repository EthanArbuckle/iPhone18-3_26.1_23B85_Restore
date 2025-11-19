@interface HMFPowerAssertion
- (HMFPowerAssertion)initWithName:(id)a3;
- (HMFPowerAssertion)initWithName:(id)a3 timeout:(double)a4;
- (void)_cleanUpPowerAssertion;
- (void)invalidate;
@end

@implementation HMFPowerAssertion

- (HMFPowerAssertion)initWithName:(id)a3
{
  v20 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v15.receiver = self;
  v15.super_class = HMFPowerAssertion;
  v5 = [(HMFAssertion *)&v15 initWithName:v4];
  v6 = v5;
  if (v5 && (v7 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [(HMFAssertion *)v5 uniqueDescription], 0, 0, 0, 0.0, 0, &v5->_identifier)) != 0)
  {
    v8 = v7;
    v9 = objc_autoreleasePoolPush();
    v10 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v17 = v11;
      v18 = 2048;
      v19 = v8;
      _os_log_impl(&dword_22ADEC000, v10, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create assertion with error: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v9);
    v12 = 0;
  }

  else
  {
    v12 = v6;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMFPowerAssertion)initWithName:(id)a3 timeout:(double)a4
{
  v22 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v17.receiver = self;
  v17.super_class = HMFPowerAssertion;
  v7 = [(HMFAssertion *)&v17 initWithName:v6];
  v8 = v7;
  if (v7 && (v9 = IOPMAssertionCreateWithDescription(@"PreventUserIdleSystemSleep", [(HMFAssertion *)v7 uniqueDescription], 0, 0, 0, a4, @"TimeoutActionTurnOff", &v7->_identifier)) != 0)
  {
    v10 = v9;
    v11 = objc_autoreleasePoolPush();
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v13 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v19 = v13;
      v20 = 2048;
      v21 = v10;
      _os_log_impl(&dword_22ADEC000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@Failed to create assertion with error: %ld", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v11);
    v14 = 0;
  }

  else
  {
    v14 = v8;
  }

  v15 = *MEMORY[0x277D85DE8];
  return v14;
}

- (void)invalidate
{
  v3.receiver = self;
  v3.super_class = HMFPowerAssertion;
  [(HMFAssertion *)&v3 invalidate];
  [(HMFPowerAssertion *)self _cleanUpPowerAssertion];
}

- (void)_cleanUpPowerAssertion
{
  if ([(HMFPowerAssertion *)self identifier])
  {
    IOPMAssertionRelease([(HMFPowerAssertion *)self identifier]);

    [(HMFPowerAssertion *)self setIdentifier:0];
  }
}

@end