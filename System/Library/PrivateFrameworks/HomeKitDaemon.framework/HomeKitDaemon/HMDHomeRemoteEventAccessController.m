@interface HMDHomeRemoteEventAccessController
- (BOOL)isAppleMediaAccessoryUUID:(id)a3 error:(id *)a4;
- (BOOL)isMediaSystemUUID:(id)a3 error:(id *)a4;
- (BOOL)isSiriEndpointAccessoryUUID:(id)a3 error:(id *)a4;
- (BOOL)remoteEventAllowForMediaSystemSettingEventTopic:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5;
- (BOOL)remoteEventAllowedForAccessoryEventTopic:(id)a3 parsedEventTopic:(id)a4 deviceType:(unint64_t)a5 userType:(unint64_t)a6;
- (BOOL)remoteEventAllowedForAccessoryInfoWithTopicSuffix:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5;
- (BOOL)remoteEventAllowedForHomeEventTopic:(id)a3 parsedEventTopic:(id)a4 deviceType:(unint64_t)a5 userType:(unint64_t)a6;
- (BOOL)remoteEventAllowedForTopic:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5;
- (HMDHomeRemoteEventAccessController)initWithDataSource:(id)a3;
- (HMDHomeRemoteEventAccessControllerDataSource)dataSource;
@end

@implementation HMDHomeRemoteEventAccessController

- (HMDHomeRemoteEventAccessControllerDataSource)dataSource
{
  WeakRetained = objc_loadWeakRetained(&self->_dataSource);

  return WeakRetained;
}

- (BOOL)isMediaSystemUUID:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHomeRemoteEventAccessController *)self dataSource];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isMediaSystem:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine media system existence due to no data source", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isSiriEndpointAccessoryUUID:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHomeRemoteEventAccessController *)self dataSource];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isSidekickAccessory:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine allowed remote event due to no data source", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)isAppleMediaAccessoryUUID:(id)a3 error:(id *)a4
{
  v18 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = [(HMDHomeRemoteEventAccessController *)self dataSource];
  v8 = v7;
  if (v7)
  {
    v9 = [v7 isAppleMediaAccessory:v6];
  }

  else
  {
    v10 = objc_autoreleasePoolPush();
    v11 = self;
    v12 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = HMFGetLogIdentifier();
      v16 = 138543362;
      v17 = v13;
      _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine allowed remote event due to no data source", &v16, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    if (a4)
    {
      [MEMORY[0x277CCA9B8] hmfErrorWithCode:4];
      *a4 = v9 = 0;
    }

    else
    {
      v9 = 0;
    }
  }

  v14 = *MEMORY[0x277D85DE8];
  return v9;
}

- (BOOL)remoteEventAllowedForAccessoryInfoWithTopicSuffix:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5
{
  v30 = *MEMORY[0x277D85DE8];
  v8 = a3;
  if (v8)
  {
    v9 = +[HMDAccessoryEventsGenerated topicMap];
    v10 = [v9 objectForKeyedSubscript:v8];
    v11 = [v10 objectForKeyedSubscript:@"remoteUserAccessControl"];

    v12 = +[HMDAccessoryEventsGenerated topicMap];
    v13 = [v12 objectForKeyedSubscript:v8];
    v14 = [v13 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

    if (v11 && v14)
    {
      if (([HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v11]& a5) != 0)
      {
        v15 = ([HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v14]& a4) != 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v20 = objc_autoreleasePoolPush();
      v21 = self;
      v22 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
      {
        v23 = HMFGetLogIdentifier();
        v26 = 138543618;
        v27 = v23;
        v28 = 2112;
        v29 = v8;
        _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no ACL for accessory info topicSuffix: %@", &v26, 0x16u);
      }

      objc_autoreleasePoolPop(v20);
    }

    v15 = 0;
    goto LABEL_13;
  }

  v16 = objc_autoreleasePoolPush();
  v17 = self;
  v18 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    v19 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v19;
    _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no topicSuffix", &v26, 0xCu);
  }

  objc_autoreleasePoolPop(v16);
  v15 = 0;
LABEL_14:

  v24 = *MEMORY[0x277D85DE8];
  return v15;
}

- (BOOL)remoteEventAllowedForHomeEventTopic:(id)a3 parsedEventTopic:(id)a4 deviceType:(unint64_t)a5 userType:(unint64_t)a6
{
  v37 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v11 topicSuffix];

  if (v12)
  {
    v13 = +[HMDHomeEventsGenerated topicMap];
    v14 = [v11 topicSuffix];
    v15 = [v13 objectForKeyedSubscript:v14];
    v16 = [v15 objectForKeyedSubscript:@"remoteUserAccessControl"];

    v17 = +[HMDHomeEventsGenerated topicMap];
    v18 = [v11 topicSuffix];
    v19 = [v17 objectForKeyedSubscript:v18];
    v20 = [v19 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

    if (v16 && v20)
    {
      if (([HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v16]& a6) != 0)
      {
        v21 = ([HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v20]& a5) != 0;
LABEL_13:

        goto LABEL_14;
      }
    }

    else
    {
      v26 = objc_autoreleasePoolPush();
      v27 = self;
      v28 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
      {
        v29 = HMFGetLogIdentifier();
        v30 = [v11 topicSuffix];
        v33 = 138543618;
        v34 = v29;
        v35 = 2112;
        v36 = v30;
        _os_log_impl(&dword_229538000, v28, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no ACL for home topic suffix: %@", &v33, 0x16u);
      }

      objc_autoreleasePoolPop(v26);
    }

    v21 = 0;
    goto LABEL_13;
  }

  v22 = objc_autoreleasePoolPush();
  v23 = self;
  v24 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
  {
    v25 = HMFGetLogIdentifier();
    v33 = 138543362;
    v34 = v25;
    _os_log_impl(&dword_229538000, v24, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no accessory topic suffix", &v33, 0xCu);
  }

  objc_autoreleasePoolPop(v22);
  v21 = 0;
LABEL_14:

  v31 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)remoteEventAllowedForAccessoryEventTopic:(id)a3 parsedEventTopic:(id)a4 deviceType:(unint64_t)a5 userType:(unint64_t)a6
{
  v56 = *MEMORY[0x277D85DE8];
  v10 = a3;
  v11 = a4;
  v12 = [v10 accessoryUUID];
  v51 = 0;
  v13 = [(HMDHomeRemoteEventAccessController *)self isAppleMediaAccessoryUUID:v12 error:&v51];
  v14 = v51;
  v50 = v14;
  v15 = [(HMDHomeRemoteEventAccessController *)self isSiriEndpointAccessoryUUID:v12 error:&v50];
  v16 = v50;

  if (v16)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = self;
    v19 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      v20 = HMFGetLogIdentifier();
      *buf = 138543618;
      v53 = v20;
      v54 = 2112;
      v55 = v16;
      v21 = "%{public}@Failed to get remote event allowed due to known accessory type with error: %@";
      v22 = v19;
      v23 = 22;
LABEL_9:
      _os_log_impl(&dword_229538000, v22, OS_LOG_TYPE_ERROR, v21, buf, v23);

      goto LABEL_10;
    }

    goto LABEL_10;
  }

  if (v13 || v15)
  {
    v24 = [v11 asAccessorySettingTopic];
    if (v24)
    {
      v25 = [(HMDHomeRemoteEventAccessController *)self settingsHelper];
      v26 = [v24 accessorySettingKeyPath];
      v27 = [v25 remoteEventAllowedForKeyPath:v26 deviceType:a5 userType:a6];

LABEL_25:
      goto LABEL_11;
    }

    v30 = [v11 topicSuffix];

    if (!v30)
    {
      v38 = objc_autoreleasePoolPush();
      v39 = self;
      v40 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        v41 = HMFGetLogIdentifier();
        *buf = 138543362;
        v53 = v41;
        _os_log_impl(&dword_229538000, v40, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no accessory topic suffix", buf, 0xCu);
      }

      objc_autoreleasePoolPop(v38);
      v27 = 0;
      goto LABEL_25;
    }

    v31 = +[HMDAccessoryEventsGenerated topicMap];
    v32 = [v11 topicSuffix];
    v33 = [v31 objectForKeyedSubscript:v32];
    v49 = [v33 objectForKeyedSubscript:@"remoteUserAccessControl"];

    v47 = +[HMDAccessoryEventsGenerated topicMap];
    v34 = [v11 topicSuffix];
    v35 = [v47 objectForKeyedSubscript:v34];
    v36 = [v35 objectForKeyedSubscript:@"remoteDeviceAccessControl"];

    v37 = v36;
    if (v49 && v36)
    {
      if (([HMDRemoteEventRouterAccessControl remoteUserAccessControlFromNumber:v49]& a6) != 0)
      {
        v27 = ([HMDRemoteEventRouterAccessControl remoteDeviceAccessControlFromNumber:v36]& a5) != 0;
LABEL_24:

        v24 = 0;
        goto LABEL_25;
      }
    }

    else
    {
      v42 = objc_autoreleasePoolPush();
      v43 = self;
      v44 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
      {
        v45 = HMFGetLogIdentifier();
        [v11 topicSuffix];
        v46 = v48 = v37;
        *buf = 138543618;
        v53 = v45;
        v54 = 2112;
        v55 = v46;
        _os_log_impl(&dword_229538000, v44, OS_LOG_TYPE_ERROR, "%{public}@Failed to get remove event allowed due to no ACL for accessory topic suffix: %@", buf, 0x16u);

        v37 = v48;
      }

      objc_autoreleasePoolPop(v42);
    }

    v27 = 0;
    goto LABEL_24;
  }

  v17 = objc_autoreleasePoolPush();
  v18 = self;
  v19 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    v20 = HMFGetLogIdentifier();
    *buf = 138543362;
    v53 = v20;
    v21 = "%{public}@Failed to determine remote event allowed for non-supported accessory";
    v22 = v19;
    v23 = 12;
    goto LABEL_9;
  }

LABEL_10:

  objc_autoreleasePoolPop(v17);
  v27 = 0;
LABEL_11:

  v28 = *MEMORY[0x277D85DE8];
  return v27;
}

- (BOOL)remoteEventAllowForMediaSystemSettingEventTopic:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5
{
  v29 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [v8 mediaSystemUUID];
  v24 = 0;
  v10 = [(HMDHomeRemoteEventAccessController *)self isMediaSystemUUID:v9 error:&v24];
  v11 = v24;
  if (v11)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543618;
      v26 = v15;
      v27 = 2112;
      v28 = v11;
      v16 = "%{public}@Failed to get remote event allowed for media system with error: %@";
      v17 = v14;
      v18 = 22;
LABEL_8:
      _os_log_impl(&dword_229538000, v17, OS_LOG_TYPE_ERROR, v16, buf, v18);

      goto LABEL_9;
    }

    goto LABEL_9;
  }

  if (!v10)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = HMFGetLogIdentifier();
      *buf = 138543362;
      v26 = v15;
      v16 = "%{public}@Failed to determine remote event allowed for unknown media system";
      v17 = v14;
      v18 = 12;
      goto LABEL_8;
    }

LABEL_9:

    objc_autoreleasePoolPop(v12);
    v21 = 0;
    goto LABEL_10;
  }

  v19 = [(HMDHomeRemoteEventAccessController *)self settingsHelper];
  v20 = [v8 mediaSystemSettingKeyPath];
  v21 = [v19 remoteEventAllowedForKeyPath:v20 deviceType:a4 userType:a5];

LABEL_10:
  v22 = *MEMORY[0x277D85DE8];
  return v21;
}

- (BOOL)remoteEventAllowedForTopic:(id)a3 deviceType:(unint64_t)a4 userType:(unint64_t)a5
{
  v31 = *MEMORY[0x277D85DE8];
  v8 = a3;
  v9 = [MEMORY[0x277CD19F0] decodeTopic:v8];
  v10 = v9;
  if (v9)
  {
    v11 = [v9 asAccessoryTopic];
    if (v11)
    {
      v12 = [(HMDHomeRemoteEventAccessController *)self remoteEventAllowedForAccessoryEventTopic:v11 parsedEventTopic:v10 deviceType:a4 userType:a5];
    }

    else
    {
      v17 = [v10 asMediaSystemSettingTopic];
      if (v17)
      {
        v12 = [(HMDHomeRemoteEventAccessController *)self remoteEventAllowForMediaSystemSettingEventTopic:v17 deviceType:a4 userType:a5];
      }

      else
      {
        v18 = [v10 asHomeEventTopic];
        if (v18)
        {
          v12 = [(HMDHomeRemoteEventAccessController *)self remoteEventAllowedForHomeEventTopic:v18 parsedEventTopic:v10 deviceType:a4 userType:a5];
        }

        else
        {
          v19 = objc_autoreleasePoolPush();
          v20 = self;
          v21 = HMFGetOSLogHandle();
          if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
          {
            v22 = HMFGetLogIdentifier();
            v25 = 138543874;
            v26 = v22;
            v27 = 2112;
            v28 = v10;
            v29 = 2112;
            v30 = v8;
            _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_ERROR, "%{public}@Failed to determine remote event allowed due to unknown parsed topic: %@ with topic: %@", &v25, 0x20u);
          }

          objc_autoreleasePoolPop(v19);
          v12 = 0;
        }
      }
    }
  }

  else
  {
    v13 = objc_autoreleasePoolPush();
    v14 = self;
    v15 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
    {
      v16 = HMFGetLogIdentifier();
      v25 = 138543618;
      v26 = v16;
      v27 = 2112;
      v28 = v8;
      _os_log_impl(&dword_229538000, v15, OS_LOG_TYPE_DEBUG, "%{public}@Failed to determine allowed remote event due to unparsable topic: %@", &v25, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
    v12 = 0;
  }

  v23 = *MEMORY[0x277D85DE8];
  return v12;
}

- (HMDHomeRemoteEventAccessController)initWithDataSource:(id)a3
{
  v4 = a3;
  v10.receiver = self;
  v10.super_class = HMDHomeRemoteEventAccessController;
  v5 = [(HMDHomeRemoteEventAccessController *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_dataSource, v4);
    v7 = objc_alloc_init(HMDAccessorySettingsEventHelper);
    settingsHelper = v6->_settingsHelper;
    v6->_settingsHelper = v7;
  }

  return v6;
}

@end