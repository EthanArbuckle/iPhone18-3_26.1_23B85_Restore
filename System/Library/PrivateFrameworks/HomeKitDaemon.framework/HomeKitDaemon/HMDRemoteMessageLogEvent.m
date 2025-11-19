@interface HMDRemoteMessageLogEvent
+ (id)newFromRemoteMessage:(id)a3 device:(id)a4 transportType:(int)a5 sending:(BOOL)a6;
+ (id)peerInformationForDevice:(id)a3;
+ (id)peerInformationForRemoteMessage:(id)a3;
- (HMDRemoteMessageLogEvent)initWithMessageName:(id)a3 identifier:(id)a4 transactionIdentifier:(id)a5 messageType:(int64_t)a6 peerInformation:(id)a7 secure:(BOOL)a8 transportType:(int)a9 sending:(BOOL)a10 messageQoS:(int64_t)a11;
@end

@implementation HMDRemoteMessageLogEvent

- (HMDRemoteMessageLogEvent)initWithMessageName:(id)a3 identifier:(id)a4 transactionIdentifier:(id)a5 messageType:(int64_t)a6 peerInformation:(id)a7 secure:(BOOL)a8 transportType:(int)a9 sending:(BOOL)a10 messageQoS:(int64_t)a11
{
  v18 = a3;
  v19 = a4;
  v20 = a5;
  v21 = a7;
  v29.receiver = self;
  v29.super_class = HMDRemoteMessageLogEvent;
  v22 = [(HMMLogEvent *)&v29 init];
  v23 = v22;
  if (v22)
  {
    v22->_transportType = a9;
    v22->_sending = a10;
    v24 = [v19 UUIDString];
    msgIdentifier = v23->_msgIdentifier;
    v23->_msgIdentifier = v24;

    v26 = [v20 UUIDString];
    transactionIdentifier = v23->_transactionIdentifier;
    v23->_transactionIdentifier = v26;

    v23->_secure = a8;
    objc_storeStrong(&v23->_msgName, a3);
    v23->_msgType = a6;
    objc_storeStrong(&v23->_peerInformation, a7);
    v23->_msgQoS = a11;
  }

  return v23;
}

+ (id)newFromRemoteMessage:(id)a3 device:(id)a4 transportType:(int)a5 sending:(BOOL)a6
{
  v9 = a3;
  v10 = a4;
  v11 = [v9 attributedMessageName];
  v12 = v11;
  if (v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = [v9 name];
  }

  v14 = v13;

  if ([v14 isEqualToString:@"HMDHomeCHIPSendRemoteRequestMessage"])
  {
    v15 = [v9 messagePayload];
    v16 = [v15 objectForKeyedSubscript:@"HMDHomeCHIPRequestMessageKey"];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D17C78]];

    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Remote Matter: %@", v17];

      v14 = v18;
    }
  }

  if (v10)
  {
    [a1 peerInformationForDevice:v10];
  }

  else
  {
    [a1 peerInformationForRemoteMessage:v9];
  }
  v19 = ;
  v20 = [a1 alloc];
  v21 = [v9 identifier];
  v22 = [v9 transactionIdentifier];
  BYTE4(v25) = a6;
  LODWORD(v25) = a5;
  v23 = [v20 initWithMessageName:v14 identifier:v21 transactionIdentifier:v22 messageType:objc_msgSend(v9 peerInformation:"type") secure:v19 transportType:objc_msgSend(v9 sending:"isSecure") messageQoS:{v25, objc_msgSend(v9, "qualityOfService")}];

  return v23;
}

+ (id)peerInformationForRemoteMessage:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5;

  v7 = v6;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = v8;

  if (v9)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEBUG))
    {
      v12 = HMFGetLogIdentifier();
      v22 = 138543362;
      v23 = v12;
      _os_log_impl(&dword_229538000, v11, OS_LOG_TYPE_DEBUG, "%{public}@Unable to get peer information for multiple remote device destination", &v22, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
    v13 = @"MultipleRemoteDevices";
  }

  else
  {
    v14 = v7;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = v15;

    if (v16)
    {
      v17 = [v16 device];
      v13 = [HMDRemoteMessageLogEvent peerInformationForDevice:v17];
    }

    else
    {
      v18 = v14;
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      if ((isKindOfClass & (v18 != 0)) != 0)
      {
        v13 = @"RemoteAccountHandle";
      }

      else
      {
        v13 = 0;
      }
    }
  }

  v20 = *MEMORY[0x277D85DE8];

  return v13;
}

+ (id)peerInformationForDevice:(id)a3
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a3;
  v4 = [v3 productInfo];
  [v4 productClass];
  v5 = HMFProductClassToString();

  if (!v5)
  {
    v6 = objc_autoreleasePoolPush();
    v7 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      v8 = HMFGetLogIdentifier();
      v11 = 138543618;
      v12 = v8;
      v13 = 2112;
      v14 = v3;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unable to map productClass for device %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

@end