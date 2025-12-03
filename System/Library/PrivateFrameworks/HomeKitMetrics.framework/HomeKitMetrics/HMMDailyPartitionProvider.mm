@interface HMMDailyPartitionProvider
+ (id)sharedInstance;
- (HMMDailyPartitionProvider)initWithDateProvider:(id)provider;
- (NSDate)currentDatePartition;
- (id)datePartitionWithOffsetFromNow:(int64_t)now;
@end

@implementation HMMDailyPartitionProvider

- (NSDate)currentDatePartition
{
  dateProvider = [(HMMDailyPartitionProvider *)self dateProvider];
  startOfCurrentDay = [dateProvider startOfCurrentDay];

  return startOfCurrentDay;
}

- (id)datePartitionWithOffsetFromNow:(int64_t)now
{
  dateProvider = [(HMMDailyPartitionProvider *)self dateProvider];
  v5 = [dateProvider startOfDayByAddingDayCount:now];

  return v5;
}

- (HMMDailyPartitionProvider)initWithDateProvider:(id)provider
{
  providerCopy = provider;
  v9.receiver = self;
  v9.super_class = HMMDailyPartitionProvider;
  v6 = [(HMMDailyPartitionProvider *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_dateProvider, provider);
  }

  return v7;
}

+ (id)sharedInstance
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __43__HMMDailyPartitionProvider_sharedInstance__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (sharedInstance__hmf_once_t0_389 != -1)
  {
    dispatch_once(&sharedInstance__hmf_once_t0_389, block);
  }

  v2 = sharedInstance__hmf_once_v1_390;

  return v2;
}

void __43__HMMDailyPartitionProvider_sharedInstance__block_invoke(uint64_t a1)
{
  v1 = objc_alloc(*(a1 + 32));
  v4 = +[HMMDateProvider sharedInstance];
  v2 = [v1 initWithDateProvider:v4];
  v3 = sharedInstance__hmf_once_v1_390;
  sharedInstance__hmf_once_v1_390 = v2;
}

@end