@interface HMIMemorySampler
+ (id)sharedInstance;
- (HMIMemorySampler)init;
- (void)start;
- (void)stop;
- (void)timerDidFire:(id)a3;
@end

@implementation HMIMemorySampler

+ (id)sharedInstance
{
  if (sharedInstance_onceToken_52 != -1)
  {
    +[HMIMemorySampler sharedInstance];
  }

  v3 = sharedInstance_sharedInstance_51;

  return v3;
}

uint64_t __34__HMIMemorySampler_sharedInstance__block_invoke()
{
  sharedInstance_sharedInstance_51 = objc_alloc_init(HMIMemorySampler);

  return MEMORY[0x2821F96F8]();
}

- (HMIMemorySampler)init
{
  v8.receiver = self;
  v8.super_class = HMIMemorySampler;
  v2 = [(HMIMemorySampler *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x277D0F920]) initWithTimeInterval:28 options:0.25];
    tick = v2->_tick;
    v2->_tick = v3;

    [(HMFTimer *)v2->_tick setDelegate:v2];
    v5 = [[MovingAverage alloc] initWithWindowSize:128];
    average = v2->_average;
    v2->_average = v5;
  }

  return v2;
}

- (void)start
{
  v2 = [(HMIMemorySampler *)self tick];
  [v2 resume];
}

- (void)stop
{
  v2 = [(HMIMemorySampler *)self tick];
  [v2 suspend];
}

- (void)timerDidFire:(id)a3
{
  v55 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_autoreleasePoolPush();
  v6 = getpid();
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  v28 = 0u;
  memset(buffer, 0, sizeof(buffer));
  if (!proc_pid_rusage(v6, 6, buffer))
  {
    v7 = *(&v30 + 1);
    v25 = v41;
    average = self->_average;
    v9 = [MEMORY[0x277CCABB0] numberWithUnsignedLongLong:*(&v30 + 1)];
    [(MovingAverage *)average addNumber:v9];

    [(MovingAverage *)self->_average movingAverage];
    v11 = v10;
    v12 = objc_alloc_init(MEMORY[0x277CCA8E8]);
    [v12 setZeroPadsFractionDigits:1];
    [v12 setAllowedUnits:4];
    [v12 setCountStyle:1];
    [v12 setAllowsNonnumericFormatting:0];
    v13 = MEMORY[0x277CCACA8];
    v14 = [v12 stringFromByteCount:v7];
    v26 = [v13 stringWithFormat:@"%9s", objc_msgSend(v14, "UTF8String")];

    v15 = MEMORY[0x277CCACA8];
    v16 = [v12 stringFromByteCount:v11];
    v17 = [v15 stringWithFormat:@"%9s", objc_msgSend(v16, "UTF8String")];

    v18 = MEMORY[0x277CCACA8];
    v19 = [v12 stringFromByteCount:v25];
    v20 = [v18 stringWithFormat:@"%9s", objc_msgSend(v19, "UTF8String")];

    v21 = objc_autoreleasePoolPush();
    v22 = self;
    v23 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEBUG))
    {
      v24 = HMFGetLogIdentifier();
      LODWORD(buffer[0]) = 138544130;
      *(buffer + 4) = v24;
      WORD2(buffer[1]) = 2112;
      *(&buffer[1] + 6) = v26;
      HIWORD(buffer[2]) = 2112;
      buffer[3] = v17;
      LOWORD(v28) = 2112;
      *(&v28 + 2) = v20;
      _os_log_impl(&dword_22D12F000, v23, OS_LOG_TYPE_DEBUG, "%{public}@Footprint: %@, Average: %@, Peak: %@", buffer, 0x2Au);
    }

    objc_autoreleasePoolPop(v21);
    if (([(HMIMemorySampler *)v22 highWaterMark]& 0x8000000000000000) == 0 && v7 > [(HMIMemorySampler *)v22 highWaterMark])
    {
      objc_exception_throw([objc_alloc(MEMORY[0x277CBEAD8]) initWithName:@"OutOfMemory" reason:@"Reached high water mark." userInfo:0]);
    }
  }

  objc_autoreleasePoolPop(v5);
}

@end