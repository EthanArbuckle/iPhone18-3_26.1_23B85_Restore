@interface HMFPowerLogger
+ (id)sharedPowerLogger;
- (id)linkTypeDescription:(int64_t)a3;
- (void)reportConnection:(id)a3 linkType:(int64_t)a4 accessoryCategory:(id)a5;
- (void)reportDisconnection:(id)a3 linkType:(int64_t)a4 accessoryCategory:(id)a5;
- (void)reportIncomingAdvertisementChange:(id)a3 accessoryCategory:(id)a4;
- (void)reportIncomingCloudPush:(id)a3;
- (void)reportIncomingIDSPush:(id)a3 fromToken:(id)a4;
- (void)reportIncomingIPEvent:(id)a3 accessoryCategory:(id)a4;
- (void)reportIncomingLoxyMessage:(id)a3;
- (void)reportWakeEvent:(id)a3 linkType:(int64_t)a4 accessoryCategory:(id)a5;
@end

@implementation HMFPowerLogger

+ (id)sharedPowerLogger
{
  if (qword_280AFC5F8 != -1)
  {
    dispatch_once(&qword_280AFC5F8, &__block_literal_global_16);
  }

  v3 = _MergedGlobals_62;

  return v3;
}

uint64_t __35__HMFPowerLogger_sharedPowerLogger__block_invoke()
{
  _MergedGlobals_62 = objc_alloc_init(HMFPowerLogger);

  return MEMORY[0x2821F96F8]();
}

- (id)linkTypeDescription:(int64_t)a3
{
  v3 = @"HomeKitLinkTypeUnknown";
  if (a3 == 2)
  {
    v3 = @"HomeKitLinkTypeBluetoothLE";
  }

  if (a3 == 1)
  {
    return @"HomeKitLinkTypeIP";
  }

  else
  {
    return v3;
  }
}

- (void)reportConnection:(id)a3 linkType:(int64_t)a4 accessoryCategory:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(0);
      v13 = [(HMFPowerLogger *)self linkTypeDescription:a4];
      *buf = 138544130;
      v23 = v12;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Reporting connection to: %@ for LinkType: %@ and category: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277CBEB38];
    v15 = [(HMFPowerLogger *)self linkTypeDescription:a4, @"kHMFPowerLogEventType", @"kHMFPowerLogDeviceIdentiferKey", @"kHMFPowerLogLinkTypeKey", @"HomeKit Connection", v8];
    v21[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:3];
    v17 = [v14 dictionaryWithDictionary:v16];

    if (v9)
    {
      [v17 setObject:v9 forKeyedSubscript:@"accessoryCategory"];
    }

    v18 = [v17 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)reportDisconnection:(id)a3 linkType:(int64_t)a4 accessoryCategory:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  if (v8)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      v12 = HMFGetLogIdentifier(0);
      v13 = [(HMFPowerLogger *)self linkTypeDescription:a4];
      *buf = 138544130;
      v23 = v12;
      v24 = 2112;
      v25 = v8;
      v26 = 2112;
      v27 = v13;
      v28 = 2112;
      v29 = v9;
      _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Reporting disconnection from: %@ for LinkType: %@ and category: %@", buf, 0x2Au);
    }

    objc_autoreleasePoolPop(v10);
    v14 = MEMORY[0x277CBEB38];
    v15 = [(HMFPowerLogger *)self linkTypeDescription:a4, @"kHMFPowerLogEventType", @"kHMFPowerLogDeviceIdentiferKey", @"kHMFPowerLogLinkTypeKey", @"HomeKit Disconnection", v8];
    v21[2] = v15;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:3];
    v17 = [v14 dictionaryWithDictionary:v16];

    if (v9)
    {
      [v17 setObject:v9 forKeyedSubscript:@"accessoryCategory"];
    }

    v18 = [v17 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v18];
  }

  v19 = *MEMORY[0x277D85DE8];
}

- (void)reportWakeEvent:(id)a3 linkType:(int64_t)a4 accessoryCategory:(id)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier(0);
    v13 = [(HMFPowerLogger *)self linkTypeDescription:a4];
    *buf = 138544130;
    v23 = v12;
    v24 = 2112;
    v25 = v8;
    v26 = 2112;
    v27 = v13;
    v28 = 2112;
    v29 = v9;
    _os_log_impl(&dword_22ADEC000, v11, OS_LOG_TYPE_INFO, "%{public}@Reporting wake event from: %@ for LinkType: %@ and category: %@", buf, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v14 = MEMORY[0x277CBEB38];
  v15 = [(HMFPowerLogger *)self linkTypeDescription:a4, @"kHMFPowerLogEventType", @"kHMFPowerLogDeviceIdentiferKey", @"kHMFPowerLogLinkTypeKey", @"HomeKit Wake Event", v8];
  v21[2] = v15;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:&v20 count:3];
  v17 = [v14 dictionaryWithDictionary:v16];

  if (v9)
  {
    [v17 setObject:v9 forKeyedSubscript:@"accessoryCategory"];
  }

  v18 = [v17 copy];
  [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v18];

  v19 = *MEMORY[0x277D85DE8];
}

- (void)reportIncomingAdvertisementChange:(id)a3 accessoryCategory:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Reporting advertisement change from: %@ and category: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = MEMORY[0x277CBEB38];
    v16[0] = @"kHMFPowerLogEventType";
    v16[1] = @"kHMFPowerLogDeviceIdentiferKey";
    v17[0] = @"HomeKit BLE Advertisement";
    v17[1] = v6;
    v16[2] = @"couldCauseWake";
    v17[2] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v13 = [v11 dictionaryWithDictionary:v12];

    if (v7)
    {
      [v13 setObject:v7 forKeyedSubscript:@"accessoryCategory"];
    }

    v14 = [v13 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportIncomingIPEvent:(id)a3 accessoryCategory:(id)a4
{
  v24 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  if (v6)
  {
    v8 = objc_autoreleasePoolPush();
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
    {
      v10 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v19 = v10;
      v20 = 2112;
      v21 = v6;
      v22 = 2112;
      v23 = v7;
      _os_log_impl(&dword_22ADEC000, v9, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming IP Event from: %@ and category: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v8);
    v11 = MEMORY[0x277CBEB38];
    v16[0] = @"kHMFPowerLogEventType";
    v16[1] = @"kHMFPowerLogDeviceIdentiferKey";
    v17[0] = @"HomeKit IP Event";
    v17[1] = v6;
    v16[2] = @"couldCauseWake";
    v17[2] = MEMORY[0x277CBEC38];
    v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
    v13 = [v11 dictionaryWithDictionary:v12];

    if (v7)
    {
      [v13 setObject:v7 forKeyedSubscript:@"accessoryCategory"];
    }

    v14 = [v13 copy];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v14];
  }

  v15 = *MEMORY[0x277D85DE8];
}

- (void)reportIncomingCloudPush:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming cloud push with topic: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10[0] = @"kHMFPowerLogEventType";
    v10[1] = @"kHMFPowerLogCloudPushTopicKey";
    v11[0] = @"HomeKit Cloud Push";
    v11[1] = v4;
    v10[2] = @"couldCauseWake";
    v11[2] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

- (void)reportIncomingIDSPush:(id)a3 fromToken:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [v7 rangeOfString:@"mailto"];
  v9 = v7;
  v10 = v9;
  v11 = v9;
  if (v8 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v11 = [v9 substringToIndex:v8];
  }

  if (v6 && v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_INFO))
    {
      v14 = HMFGetLogIdentifier(0);
      *buf = 138543874;
      v20 = v14;
      v21 = 2112;
      v22 = v6;
      v23 = 2112;
      v24 = v11;
      _os_log_impl(&dword_22ADEC000, v13, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming IDS push: %@ fromToken: %@", buf, 0x20u);
    }

    objc_autoreleasePoolPop(v12);
    v17[0] = @"kHMFPowerLogEventType";
    v17[1] = @"kHMFPowerLogMessageTypeKey";
    v18[0] = @"HomeKit IDS Push";
    v18[1] = v6;
    v17[2] = @"kHMFPowerLogIDSDeviceTokenKey";
    v17[3] = @"couldCauseWake";
    v18[2] = v11;
    v18[3] = MEMORY[0x277CBEC38];
    v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:4];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v15];
  }

  v16 = *MEMORY[0x277D85DE8];
}

- (void)reportIncomingLoxyMessage:(id)a3
{
  v16 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (v4)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = HMFGetLogIdentifier(0);
      *buf = 138543618;
      v13 = v7;
      v14 = 2112;
      v15 = v4;
      _os_log_impl(&dword_22ADEC000, v6, OS_LOG_TYPE_INFO, "%{public}@Reporting incoming Loxy message: %@", buf, 0x16u);
    }

    objc_autoreleasePoolPop(v5);
    v10[0] = @"kHMFPowerLogEventType";
    v10[1] = @"kHMFPowerLogMessageTypeKey";
    v11[0] = @"HomeKit Loxy Event";
    v11[1] = v4;
    v10[2] = @"couldCauseWake";
    v11[2] = MEMORY[0x277CBEC38];
    v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:3];
    [(HMFPowerLogger *)self reportToPowerLogDestinationTable:@"HomeKitEvent" withEventDictionary:v8];
  }

  v9 = *MEMORY[0x277D85DE8];
}

@end