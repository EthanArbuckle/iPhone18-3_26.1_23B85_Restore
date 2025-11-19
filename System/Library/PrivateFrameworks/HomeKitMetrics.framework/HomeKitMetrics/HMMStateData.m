@interface HMMStateData
- (HMMStateData)initWithName:(id)a3 enterTime:(unint64_t)a4 enterData:(id)a5;
- (void)_exitTime:(unint64_t)a3 exitData:(id)a4;
@end

@implementation HMMStateData

- (void)_exitTime:(unint64_t)a3 exitData:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a4;
  if ([(HMMStateData *)self isOpen])
  {
    self->_open = 0;
    if ([(HMMStateData *)self enterTime]<= a3)
    {
      self->_duration = a3 - [(HMMStateData *)self enterTime];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      v9 = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        v12 = [(HMMStateData *)v9 name];
        v19 = 138543618;
        v20 = v11;
        v21 = 2114;
        v22 = v12;
        _os_log_impl(&dword_22B074000, v10, OS_LOG_TYPE_ERROR, "%{public}@Metrics state %{public}@ exit time less than enter time", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    objc_storeStrong(&self->_exitData, a4);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      v17 = [(HMMStateData *)v14 name];
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = v17;
      _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_ERROR, "%{public}@Metrics state %{public}@ was already exited", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMMStateData)initWithName:(id)a3 enterTime:(unint64_t)a4 enterData:(id)a5
{
  v9 = a3;
  v10 = a5;
  v14.receiver = self;
  v14.super_class = HMMStateData;
  v11 = [(HMMStateData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, a3);
    v12->_open = 1;
    v12->_enterTime = a4;
    objc_storeStrong(&v12->_enterData, a5);
  }

  return v12;
}

@end