@interface HAPInterfaceConfig
+ (NSString)activeWifiOrEthernetInterfaceName;
+ (id)interfaceNamesWithFamily:(unsigned int)family flags:(unsigned int)flags eflags:(unint64_t)eflags netTransportType:(unsigned int)type;
@end

@implementation HAPInterfaceConfig

+ (NSString)activeWifiOrEthernetInterfaceName
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = [HAPInterfaceConfig interfaceNamesWithFamily:30 flags:34915 eflags:2112 netTransportType:3];
  anyObject = [v3 anyObject];
  v5 = anyObject;
  if (anyObject)
  {
    v6 = anyObject;
  }

  else
  {
    v7 = objc_autoreleasePoolPush();
    selfCopy = self;
    v9 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v10 = HMFGetLogIdentifier();
      v13 = 138543362;
      v14 = v10;
      _os_log_impl(&dword_22AADC000, v9, OS_LOG_TYPE_ERROR, "%{public}@Failed to find active Wifi or Ethernet interface", &v13, 0xCu);
    }

    objc_autoreleasePoolPop(v7);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v5;
}

+ (id)interfaceNamesWithFamily:(unsigned int)family flags:(unsigned int)flags eflags:(unint64_t)eflags netTransportType:(unsigned int)type
{
  v31 = *MEMORY[0x277D85DE8];
  v22 = 0;
  UsableInterfaceList = CreateUsableInterfaceList();
  v11 = objc_alloc_init(MEMORY[0x277CBEB58]);
  if (UsableInterfaceList)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v24 = v15;
      v25 = 1024;
      flagsCopy = UsableInterfaceList;
      _os_log_impl(&dword_22AADC000, v14, OS_LOG_TYPE_ERROR, "%{public}@Error getting interface list %d", buf, 0x12u);
    }

    objc_autoreleasePoolPop(v12);
  }

  else
  {
    v16 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      v19 = HMFGetLogIdentifier();
      *buf = 138544130;
      v24 = v19;
      v25 = 1024;
      flagsCopy = flags;
      v27 = 2048;
      eflagsCopy = eflags;
      v29 = 1024;
      typeCopy = type;
      _os_log_impl(&dword_22AADC000, v18, OS_LOG_TYPE_INFO, "%{public}@Matching interfaces with flags 0x%x eflags 0x%llx netTransportType 0x%x", buf, 0x22u);
    }

    objc_autoreleasePoolPop(v16);
    ReleaseUsableInterfaceList();
  }

  v20 = *MEMORY[0x277D85DE8];

  return v11;
}

@end