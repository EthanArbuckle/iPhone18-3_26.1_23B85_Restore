@interface HMIEmptyTask
- (HMIEmptyTask)initWithTaskID:(int)d duration:(double)duration;
- (void)mainInsideAutoreleasePool;
@end

@implementation HMIEmptyTask

- (HMIEmptyTask)initWithTaskID:(int)d duration:(double)duration
{
  v6.receiver = self;
  v6.super_class = HMIEmptyTask;
  result = [(HMITask *)&v6 initWithTaskID:*&d];
  if (result)
  {
    result->_duration = duration;
  }

  return result;
}

- (void)mainInsideAutoreleasePool
{
  *&v24[5] = *MEMORY[0x277D85DE8];
  v3 = objc_autoreleasePoolPush();
  selfCopy = self;
  v5 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v6 = HMFGetLogIdentifier();
    taskID = [(HMITask *)selfCopy taskID];
    [(HMIEmptyTask *)selfCopy duration];
    *buf = 138543874;
    v20 = v6;
    v21 = 1024;
    v22 = taskID;
    v23 = 2048;
    *v24 = v8;
    _os_log_impl(&dword_22D12F000, v5, OS_LOG_TYPE_INFO, "%{public}@TaskID: %u running for %f seconds ...", buf, 0x1Cu);
  }

  objc_autoreleasePoolPop(v3);
  v9 = 0;
  do
  {
    v10 = objc_autoreleasePoolPush();
    v11 = selfCopy;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      v13 = HMFGetLogIdentifier();
      taskID2 = [(HMITask *)v11 taskID];
      *buf = 138544130;
      ++v9;
      v20 = v13;
      v21 = 1024;
      v22 = taskID2;
      v23 = 1024;
      v24[0] = v9;
      LOWORD(v24[1]) = 1024;
      *(&v24[1] + 2) = 10;
      _os_log_impl(&dword_22D12F000, v12, OS_LOG_TYPE_INFO, "%{public}@TaskID: %u step %d of %d", buf, 0x1Eu);
    }

    else
    {
      ++v9;
    }

    objc_autoreleasePoolPop(v10);
    v15 = MEMORY[0x277CCACC8];
    [(HMIEmptyTask *)v11 duration];
    [v15 sleepForTimeInterval:v16 / 10.0];
    progressBlock = [(HMITask *)v11 progressBlock];
    progressBlock[2](v9 / 10.0);
  }

  while (v9 != 10);
  v18.receiver = v11;
  v18.super_class = HMIEmptyTask;
  [(HMFOperation *)&v18 finish];
}

@end