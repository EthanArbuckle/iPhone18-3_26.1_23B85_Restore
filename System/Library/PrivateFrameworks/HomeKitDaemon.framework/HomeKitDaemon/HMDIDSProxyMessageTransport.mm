@interface HMDIDSProxyMessageTransport
+ (BOOL)transportSupportsDevice:(id)device;
+ (id)logCategory;
+ (int64_t)priorityForMessage:(id)message;
- (BOOL)canSendMessage:(id)message;
- (BOOL)isDeviceConnected:(id)connected;
- (HMDIDSProxyMessageTransport)initWithAccountRegistry:(id)registry;
- (id)deviceForHandle:(id)handle;
- (id)deviceForSenderContext:(id)context;
- (id)remoteMessageFromMessage:(id)message;
- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d error:(id *)self0;
- (id)watchDeviceForDevice:(id)device;
- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context;
@end

@implementation HMDIDSProxyMessageTransport

- (void)service:(id)service account:(id)account incomingMessage:(id)message fromID:(id)d context:(id)context
{
  v28 = *MEMORY[0x277D85DE8];
  serviceCopy = service;
  accountCopy = account;
  messageCopy = message;
  dCopy = d;
  contextCopy = context;
  if (!dCopy)
  {
    goto LABEL_7;
  }

  v17 = [HMDDeviceHandle deviceHandleForDestination:dCopy];
  if (!v17)
  {
LABEL_6:

LABEL_7:
    v23.receiver = self;
    v23.super_class = HMDIDSProxyMessageTransport;
    [(HMDIDSMessageTransport *)&v23 service:serviceCopy account:accountCopy incomingMessage:messageCopy fromID:dCopy context:contextCopy];
    goto LABEL_8;
  }

  v18 = [(HMDIDSProxyMessageTransport *)self deviceForHandle:v17];
  if (!v18 || ([objc_opt_class() transportSupportsDevice:v18] & 1) != 0)
  {

    goto LABEL_6;
  }

  v20 = objc_autoreleasePoolPush();
  v21 = HMFGetOSLogHandle();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
  {
    v22 = HMFGetLogIdentifier();
    *buf = 138543618;
    v25 = v22;
    v26 = 2112;
    v27 = v18;
    _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@Dropping incoming message from unsupported device: %@", buf, 0x16u);
  }

  objc_autoreleasePoolPop(v20);
LABEL_8:

  v19 = *MEMORY[0x277D85DE8];
}

- (id)sendMessage:(id)message fromHandle:(id)handle destination:(id)destination priority:(int64_t)priority timeout:(double)timeout options:(unint64_t)options queueOneID:(id)d error:(id *)self0
{
  if (priority != 100 && timeout == 0.0)
  {
    timeout = 180.0;
  }

  v12.receiver = self;
  v12.super_class = HMDIDSProxyMessageTransport;
  v10 = [HMDIDSMessageTransport sendMessage:sel_sendMessage_fromHandle_destination_priority_timeout_options_queueOneID_error_ fromHandle:message destination:0 priority:destination timeout:timeout options:error queueOneID:? error:?];

  return v10;
}

- (BOOL)isDeviceConnected:(id)connected
{
  connectedCopy = connected;
  service = [(HMDIDSMessageTransport *)self service];
  v6 = [connectedCopy deviceForIDSService:service];

  LOBYTE(connectedCopy) = [v6 isConnected];
  return connectedCopy;
}

- (BOOL)canSendMessage:(id)message
{
  v27 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = destination;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7 || ([messageCopy restriction] & 4) == 0)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  device = [v7 device];
  v9 = [(HMDIDSProxyMessageTransport *)self isDeviceConnected:device];

  if (!v9)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      device2 = [v7 device];
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = device2;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Cannot send message, the device, %@, is not currently connected", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_15;
  }

  device3 = [v7 device];
  v11 = [(HMDIDSProxyMessageTransport *)self watchDeviceForDevice:device3];

  v12 = [objc_opt_class() transportSupportsDevice:v11];
  if ((v12 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      device4 = [v7 device];
      v23 = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = device4;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Cannot send message, the device, %@, is not supported", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)watchDeviceForDevice:(id)device
{
  v26 = *MEMORY[0x277D85DE8];
  deviceCopy = device;
  companionManager = [(HMDIDSProxyMessageTransport *)self companionManager];

  if (!companionManager)
  {
    watchManager = [(HMDIDSProxyMessageTransport *)self watchManager];

    if (watchManager)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      watchManager2 = [(HMDIDSProxyMessageTransport *)self watchManager];
      watches = [watchManager2 watches];

      v13 = [watches countByEnumeratingWithState:&v21 objects:v25 count:16];
      if (v13)
      {
        v14 = v13;
        v15 = *v22;
        while (2)
        {
          for (i = 0; i != v14; ++i)
          {
            if (*v22 != v15)
            {
              objc_enumerationMutation(watches);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            if ([v17 isRelatedToDevice:deviceCopy])
            {
              companion2 = v17;
              goto LABEL_16;
            }
          }

          v14 = [watches countByEnumeratingWithState:&v21 objects:v25 count:16];
          if (v14)
          {
            continue;
          }

          break;
        }
      }
    }

    goto LABEL_14;
  }

  companionManager2 = [(HMDIDSProxyMessageTransport *)self companionManager];
  companion = [companionManager2 companion];
  v8 = [companion isRelatedToDevice:deviceCopy];

  if (!v8)
  {
LABEL_14:
    v18 = deviceCopy;
    goto LABEL_17;
  }

  watches = [(HMDIDSProxyMessageTransport *)self companionManager];
  companion2 = [watches companion];
LABEL_16:
  v18 = companion2;

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)deviceForHandle:(id)handle
{
  v4 = [HMDDevice deviceWithHandle:handle];
  v5 = [(HMDIDSProxyMessageTransport *)self watchDeviceForDevice:v4];

  return v5;
}

- (id)deviceForSenderContext:(id)context
{
  deviceHandle = [context deviceHandle];
  v5 = [(HMDIDSProxyMessageTransport *)self deviceForHandle:deviceHandle];

  return v5;
}

- (id)remoteMessageFromMessage:(id)message
{
  v26 = *MEMORY[0x277D85DE8];
  messageCopy = message;
  v5 = [objc_opt_class() remoteMessageFromMessage:messageCopy secure:-[HMDIDSProxyMessageTransport isSecure](self accountRegistry:{"isSecure"), 0}];
  destination = [messageCopy destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = destination;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    device = [v8 device];
    v10 = [(HMDIDSProxyMessageTransport *)self watchDeviceForDevice:device];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        device2 = [v8 device];
        v20 = 138543874;
        v21 = v13;
        v22 = 2112;
        v23 = device2;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Replacing device destination, %@, with device: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [HMDRemoteDeviceMessageDestination alloc];
      target = [v8 target];
      v17 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:target device:v10];

      [v5 setDestination:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDIDSProxyMessageTransport)initWithAccountRegistry:(id)registry
{
  v12.receiver = self;
  v12.super_class = HMDIDSProxyMessageTransport;
  v3 = [(HMDIDSMessageTransport *)&v12 initWithAccountRegistry:registry forServiceName:@"com.apple.private.alloy.willow.proxy"];
  if (v3)
  {
    if (+[HMDDeviceCapabilities isCompanionCapable])
    {
      v4 = &OBJC_IVAR___HMDIDSProxyMessageTransport__watchManager;
      v5 = off_278666380;
LABEL_6:
      sharedManager = [(__objc2_class *)*v5 sharedManager];
      v9 = *v4;
      v10 = *(&v3->super.super.super.super.super.isa + v9);
      *(&v3->super.super.super.super.super.isa + v9) = sharedManager;

      return v3;
    }

    productInfo = [MEMORY[0x277D0F8E8] productInfo];
    productPlatform = [productInfo productPlatform];

    if (productPlatform == 3)
    {
      v4 = &OBJC_IVAR___HMDIDSProxyMessageTransport__companionManager;
      v5 = off_2786660F0;
      goto LABEL_6;
    }
  }

  return v3;
}

+ (id)logCategory
{
  if (logCategory__hmf_once_t2_260911 != -1)
  {
    dispatch_once(&logCategory__hmf_once_t2_260911, &__block_literal_global_260912);
  }

  v3 = logCategory__hmf_once_v3_260913;

  return v3;
}

void __42__HMDIDSProxyMessageTransport_logCategory__block_invoke()
{
  v0 = *MEMORY[0x277D0F1A8];
  v1 = HMFCreateOSLogHandle();
  v2 = logCategory__hmf_once_v3_260913;
  logCategory__hmf_once_v3_260913 = v1;
}

+ (BOOL)transportSupportsDevice:(id)device
{
  deviceCopy = device;
  version = [deviceCopy version];
  if (version)
  {
    version2 = [deviceCopy version];
    v6 = +[HMDHomeKitVersion version3];
    v7 = [version2 isAtLeastVersion:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (int64_t)priorityForMessage:(id)message
{
  qualityOfService = [message qualityOfService];
  switch(qualityOfService)
  {
    case 17:
      return 200;
    case 9:
      return 100;
    case -1:
      return 200;
  }

  return 300;
}

@end