@interface HMDRemoteMessageLogEvent
+ (id)newFromRemoteMessage:(id)message device:(id)device transportType:(int)type sending:(BOOL)sending;
+ (id)peerInformationForDevice:(id)device;
+ (id)peerInformationForRemoteMessage:(id)message;
- (HMDRemoteMessageLogEvent)initWithMessageName:(id)name identifier:(id)identifier transactionIdentifier:(id)transactionIdentifier messageType:(int64_t)type peerInformation:(id)information secure:(BOOL)secure transportType:(int)transportType sending:(BOOL)self0 messageQoS:(int64_t)self1;
@end

@implementation HMDRemoteMessageLogEvent

- (HMDRemoteMessageLogEvent)initWithMessageName:(id)name identifier:(id)identifier transactionIdentifier:(id)transactionIdentifier messageType:(int64_t)type peerInformation:(id)information secure:(BOOL)secure transportType:(int)transportType sending:(BOOL)self0 messageQoS:(int64_t)self1
{
  nameCopy = name;
  identifierCopy = identifier;
  transactionIdentifierCopy = transactionIdentifier;
  informationCopy = information;
  v29.receiver = self;
  v29.super_class = HMDRemoteMessageLogEvent;
  v22 = [(HMMLogEvent *)&v29 init];
  v23 = v22;
  if (v22)
  {
    v22->_transportType = transportType;
    v22->_sending = sending;
    uUIDString = [identifierCopy UUIDString];
    msgIdentifier = v23->_msgIdentifier;
    v23->_msgIdentifier = uUIDString;

    uUIDString2 = [transactionIdentifierCopy UUIDString];
    transactionIdentifier = v23->_transactionIdentifier;
    v23->_transactionIdentifier = uUIDString2;

    v23->_secure = secure;
    objc_storeStrong(&v23->_msgName, name);
    v23->_msgType = type;
    objc_storeStrong(&v23->_peerInformation, information);
    v23->_msgQoS = s;
  }

  return v23;
}

+ (id)newFromRemoteMessage:(id)message device:(id)device transportType:(int)type sending:(BOOL)sending
{
  messageCopy = message;
  deviceCopy = device;
  attributedMessageName = [messageCopy attributedMessageName];
  v12 = attributedMessageName;
  if (attributedMessageName)
  {
    name = attributedMessageName;
  }

  else
  {
    name = [messageCopy name];
  }

  v14 = name;

  if ([v14 isEqualToString:@"HMDHomeCHIPSendRemoteRequestMessage"])
  {
    messagePayload = [messageCopy messagePayload];
    v16 = [messagePayload objectForKeyedSubscript:@"HMDHomeCHIPRequestMessageKey"];
    v17 = [v16 objectForKeyedSubscript:*MEMORY[0x277D17C78]];

    if (v17)
    {
      v18 = [MEMORY[0x277CCACA8] stringWithFormat:@"Remote Matter: %@", v17];

      v14 = v18;
    }
  }

  if (deviceCopy)
  {
    [self peerInformationForDevice:deviceCopy];
  }

  else
  {
    [self peerInformationForRemoteMessage:messageCopy];
  }
  v19 = ;
  v20 = [self alloc];
  identifier = [messageCopy identifier];
  transactionIdentifier = [messageCopy transactionIdentifier];
  BYTE4(v25) = sending;
  LODWORD(v25) = type;
  v23 = [v20 initWithMessageName:v14 identifier:identifier transactionIdentifier:transactionIdentifier messageType:objc_msgSend(messageCopy peerInformation:"type") secure:v19 transportType:objc_msgSend(messageCopy sending:"isSecure") messageQoS:{v25, objc_msgSend(messageCopy, "qualityOfService")}];

  return v23;
}

+ (id)peerInformationForRemoteMessage:(id)message
{
  v24 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = destination;
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
      device = [v16 device];
      v13 = [HMDRemoteMessageLogEvent peerInformationForDevice:device];
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

+ (id)peerInformationForDevice:(id)device
{
  v15 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  productInfo = [deviceCopy productInfo];
  [productInfo productClass];
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
      v14 = deviceCopy;
      _os_log_impl(&dword_229538000, v7, OS_LOG_TYPE_DEBUG, "%{public}@Unable to map productClass for device %@", &v11, 0x16u);
    }

    objc_autoreleasePoolPop(v6);
  }

  v9 = *MEMORY[0x277D85DE8];

  return v5;
}

@end