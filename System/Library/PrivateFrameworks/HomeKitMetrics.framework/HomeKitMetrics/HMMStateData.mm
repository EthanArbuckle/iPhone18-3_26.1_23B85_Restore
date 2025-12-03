@interface HMMStateData
- (HMMStateData)initWithName:(id)name enterTime:(unint64_t)time enterData:(id)data;
- (void)_exitTime:(unint64_t)time exitData:(id)data;
@end

@implementation HMMStateData

- (void)_exitTime:(unint64_t)time exitData:(id)data
{
  v23 = *MEMORY[0x277D85DE8];
  dataCopy = data;
  if ([(HMMStateData *)self isOpen])
  {
    self->_open = 0;
    if ([(HMMStateData *)self enterTime]<= time)
    {
      self->_duration = time - [(HMMStateData *)self enterTime];
    }

    else
    {
      v8 = objc_autoreleasePoolPush();
      selfCopy = self;
      v10 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = HMFGetLogIdentifier();
        name = [(HMMStateData *)selfCopy name];
        v19 = 138543618;
        v20 = v11;
        v21 = 2114;
        v22 = name;
        _os_log_impl(&dword_22B074000, v10, OS_LOG_TYPE_ERROR, "%{public}@Metrics state %{public}@ exit time less than enter time", &v19, 0x16u);
      }

      objc_autoreleasePoolPop(v8);
    }

    objc_storeStrong(&self->_exitData, data);
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      v16 = HMFGetLogIdentifier();
      name2 = [(HMMStateData *)selfCopy2 name];
      v19 = 138543618;
      v20 = v16;
      v21 = 2114;
      v22 = name2;
      _os_log_impl(&dword_22B074000, v15, OS_LOG_TYPE_ERROR, "%{public}@Metrics state %{public}@ was already exited", &v19, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (HMMStateData)initWithName:(id)name enterTime:(unint64_t)time enterData:(id)data
{
  nameCopy = name;
  dataCopy = data;
  v14.receiver = self;
  v14.super_class = HMMStateData;
  v11 = [(HMMStateData *)&v14 init];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_name, name);
    v12->_open = 1;
    v12->_enterTime = time;
    objc_storeStrong(&v12->_enterData, data);
  }

  return v12;
}

@end