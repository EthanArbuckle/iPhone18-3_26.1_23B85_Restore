@interface HMDIDSProxyMessageTransport
+ (BOOL)transportSupportsDevice:(id)a3;
+ (id)logCategory;
+ (int64_t)priorityForMessage:(id)a3;
- (BOOL)canSendMessage:(id)a3;
- (BOOL)isDeviceConnected:(id)a3;
- (HMDIDSProxyMessageTransport)initWithAccountRegistry:(id)a3;
- (id)deviceForHandle:(id)a3;
- (id)deviceForSenderContext:(id)a3;
- (id)remoteMessageFromMessage:(id)a3;
- (id)sendMessage:(id)a3 fromHandle:(id)a4 destination:(id)a5 priority:(int64_t)a6 timeout:(double)a7 options:(unint64_t)a8 queueOneID:(id)a9 error:(id *)a10;
- (id)watchDeviceForDevice:(id)a3;
- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7;
@end

@implementation HMDIDSProxyMessageTransport

- (void)service:(id)a3 account:(id)a4 incomingMessage:(id)a5 fromID:(id)a6 context:(id)a7
{
  v28 = *MEMORY[0x277D85DE8];
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  if (!v15)
  {
    goto LABEL_7;
  }

  v17 = [HMDDeviceHandle deviceHandleForDestination:v15];
  if (!v17)
  {
LABEL_6:

LABEL_7:
    v23.receiver = self;
    v23.super_class = HMDIDSProxyMessageTransport;
    [(HMDIDSMessageTransport *)&v23 service:v12 account:v13 incomingMessage:v14 fromID:v15 context:v16];
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

- (id)sendMessage:(id)a3 fromHandle:(id)a4 destination:(id)a5 priority:(int64_t)a6 timeout:(double)a7 options:(unint64_t)a8 queueOneID:(id)a9 error:(id *)a10
{
  if (a6 != 100 && a7 == 0.0)
  {
    a7 = 180.0;
  }

  v12.receiver = self;
  v12.super_class = HMDIDSProxyMessageTransport;
  v10 = [HMDIDSMessageTransport sendMessage:sel_sendMessage_fromHandle_destination_priority_timeout_options_queueOneID_error_ fromHandle:a3 destination:0 priority:a5 timeout:a7 options:a10 queueOneID:? error:?];

  return v10;
}

- (BOOL)isDeviceConnected:(id)a3
{
  v4 = a3;
  v5 = [(HMDIDSMessageTransport *)self service];
  v6 = [v4 deviceForIDSService:v5];

  LOBYTE(v4) = [v6 isConnected];
  return v4;
}

- (BOOL)canSendMessage:(id)a3
{
  v27 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [v4 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6;

  if (!v7 || ([v4 restriction] & 4) == 0)
  {
LABEL_15:
    v12 = 0;
    goto LABEL_16;
  }

  v8 = [v7 device];
  v9 = [(HMDIDSProxyMessageTransport *)self isDeviceConnected:v8];

  if (!v9)
  {
    v17 = objc_autoreleasePoolPush();
    v18 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      v19 = HMFGetLogIdentifier();
      v20 = [v7 device];
      v23 = 138543618;
      v24 = v19;
      v25 = 2112;
      v26 = v20;
      _os_log_impl(&dword_229538000, v18, OS_LOG_TYPE_DEBUG, "%{public}@Cannot send message, the device, %@, is not currently connected", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v17);
    goto LABEL_15;
  }

  v10 = [v7 device];
  v11 = [(HMDIDSProxyMessageTransport *)self watchDeviceForDevice:v10];

  v12 = [objc_opt_class() transportSupportsDevice:v11];
  if ((v12 & 1) == 0)
  {
    v13 = objc_autoreleasePoolPush();
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      v15 = HMFGetLogIdentifier();
      v16 = [v7 device];
      v23 = 138543618;
      v24 = v15;
      v25 = 2112;
      v26 = v16;
      _os_log_impl(&dword_229538000, v14, OS_LOG_TYPE_DEBUG, "%{public}@Cannot send message, the device, %@, is not supported", &v23, 0x16u);
    }

    objc_autoreleasePoolPop(v13);
  }

LABEL_16:
  v21 = *MEMORY[0x277D85DE8];
  return v12;
}

- (id)watchDeviceForDevice:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(HMDIDSProxyMessageTransport *)self companionManager];

  if (!v5)
  {
    v11 = [(HMDIDSProxyMessageTransport *)self watchManager];

    if (v11)
    {
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v12 = [(HMDIDSProxyMessageTransport *)self watchManager];
      v9 = [v12 watches];

      v13 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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
              objc_enumerationMutation(v9);
            }

            v17 = *(*(&v21 + 1) + 8 * i);
            if ([v17 isRelatedToDevice:v4])
            {
              v10 = v17;
              goto LABEL_16;
            }
          }

          v14 = [v9 countByEnumeratingWithState:&v21 objects:v25 count:16];
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

  v6 = [(HMDIDSProxyMessageTransport *)self companionManager];
  v7 = [v6 companion];
  v8 = [v7 isRelatedToDevice:v4];

  if (!v8)
  {
LABEL_14:
    v18 = v4;
    goto LABEL_17;
  }

  v9 = [(HMDIDSProxyMessageTransport *)self companionManager];
  v10 = [v9 companion];
LABEL_16:
  v18 = v10;

LABEL_17:
  v19 = *MEMORY[0x277D85DE8];

  return v18;
}

- (id)deviceForHandle:(id)a3
{
  v4 = [HMDDevice deviceWithHandle:a3];
  v5 = [(HMDIDSProxyMessageTransport *)self watchDeviceForDevice:v4];

  return v5;
}

- (id)deviceForSenderContext:(id)a3
{
  v4 = [a3 deviceHandle];
  v5 = [(HMDIDSProxyMessageTransport *)self deviceForHandle:v4];

  return v5;
}

- (id)remoteMessageFromMessage:(id)a3
{
  v26 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [objc_opt_class() remoteMessageFromMessage:v4 secure:-[HMDIDSProxyMessageTransport isSecure](self accountRegistry:{"isSecure"), 0}];
  v6 = [v4 destination];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;

  if (v8)
  {
    v9 = [v8 device];
    v10 = [(HMDIDSProxyMessageTransport *)self watchDeviceForDevice:v9];

    if (v10)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
      {
        v13 = HMFGetLogIdentifier();
        v14 = [v8 device];
        v20 = 138543874;
        v21 = v13;
        v22 = 2112;
        v23 = v14;
        v24 = 2112;
        v25 = v10;
        _os_log_impl(&dword_229538000, v12, OS_LOG_TYPE_DEBUG, "%{public}@Replacing device destination, %@, with device: %@", &v20, 0x20u);
      }

      objc_autoreleasePoolPop(v11);
      v15 = [HMDRemoteDeviceMessageDestination alloc];
      v16 = [v8 target];
      v17 = [(HMDRemoteDeviceMessageDestination *)v15 initWithTarget:v16 device:v10];

      [v5 setDestination:v17];
    }
  }

  v18 = *MEMORY[0x277D85DE8];

  return v5;
}

- (HMDIDSProxyMessageTransport)initWithAccountRegistry:(id)a3
{
  v12.receiver = self;
  v12.super_class = HMDIDSProxyMessageTransport;
  v3 = [(HMDIDSMessageTransport *)&v12 initWithAccountRegistry:a3 forServiceName:@"com.apple.private.alloy.willow.proxy"];
  if (v3)
  {
    if (+[HMDDeviceCapabilities isCompanionCapable])
    {
      v4 = &OBJC_IVAR___HMDIDSProxyMessageTransport__watchManager;
      v5 = off_278666380;
LABEL_6:
      v8 = [(__objc2_class *)*v5 sharedManager];
      v9 = *v4;
      v10 = *(&v3->super.super.super.super.super.isa + v9);
      *(&v3->super.super.super.super.super.isa + v9) = v8;

      return v3;
    }

    v6 = [MEMORY[0x277D0F8E8] productInfo];
    v7 = [v6 productPlatform];

    if (v7 == 3)
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

+ (BOOL)transportSupportsDevice:(id)a3
{
  v3 = a3;
  v4 = [v3 version];
  if (v4)
  {
    v5 = [v3 version];
    v6 = +[HMDHomeKitVersion version3];
    v7 = [v5 isAtLeastVersion:v6];
  }

  else
  {
    v7 = 1;
  }

  return v7;
}

+ (int64_t)priorityForMessage:(id)a3
{
  v3 = [a3 qualityOfService];
  switch(v3)
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