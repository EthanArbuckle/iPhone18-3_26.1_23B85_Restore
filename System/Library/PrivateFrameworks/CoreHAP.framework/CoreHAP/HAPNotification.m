@interface HAPNotification
+ (id)typeToString:(unint64_t)a3;
+ (void)postNotification:(id)a3 object:(id)a4 userInfo:(id)a5;
@end

@implementation HAPNotification

+ (id)typeToString:(unint64_t)a3
{
  if (a3 - 1 >= 4)
  {
    v4 = [MEMORY[0x277CCACA8] stringWithFormat:@"Unknown Reachability Notification type %ld", a3];
  }

  else
  {
    v4 = off_2786D2B48[a3 - 1];
  }

  return v4;
}

+ (void)postNotification:(id)a3 object:(id)a4 userInfo:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v7 = a3;
  v8 = a4;
  v9 = a5;
  v10 = objc_autoreleasePoolPush();
  v11 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
  {
    v12 = HMFGetLogIdentifier();
    v15 = 138544130;
    v16 = v12;
    v17 = 2112;
    v18 = v7;
    v19 = 2112;
    v20 = v8;
    v21 = 2112;
    v22 = v9;
    _os_log_impl(&dword_22AADC000, v11, OS_LOG_TYPE_INFO, "%{public}@CoreHAP - Sending notification %@ with object %@ and userInfo %@", &v15, 0x2Au);
  }

  objc_autoreleasePoolPop(v10);
  v13 = [MEMORY[0x277CCAB98] defaultCenter];
  [v13 postNotificationName:v7 object:v8 userInfo:v9];

  v14 = *MEMORY[0x277D85DE8];
}

@end