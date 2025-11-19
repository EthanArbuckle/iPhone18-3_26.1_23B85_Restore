@interface HMDHomeManagerXPCMessageSendPolicy
- (BOOL)canSendWithPolicyParameters:(id)a3;
- (BOOL)isEqual:(id)a3;
- (HMDHomeManagerXPCMessageSendPolicy)initWithEntitlements:(unint64_t)a3 options:(unint64_t)a4 active:(BOOL)a5;
- (id)attributeDescriptions;
@end

@implementation HMDHomeManagerXPCMessageSendPolicy

- (id)attributeDescriptions
{
  v15[3] = *MEMORY[0x277D85DE8];
  v3 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeManagerXPCMessageSendPolicy *)self options];
  v4 = HMHomeManagerOptionsToString();
  v5 = [v3 initWithName:@"Options" value:v4];
  v6 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeManagerXPCMessageSendPolicy *)self entitlements];
  v7 = HMXPCClientEntitlementsShortDescription();
  v8 = [v6 initWithName:@"Entitlements" value:v7];
  v15[1] = v8;
  v9 = objc_alloc(MEMORY[0x277D0F778]);
  [(HMDHomeManagerXPCMessageSendPolicy *)self isActive];
  v10 = HMFBooleanToString();
  v11 = [v9 initWithName:@"Active" value:v10];
  v15[2] = v11;
  v12 = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:3];

  v13 = *MEMORY[0x277D85DE8];

  return v12;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    LOBYTE(v11) = 1;
  }

  else
  {
    v13.receiver = self;
    v13.super_class = HMDHomeManagerXPCMessageSendPolicy;
    if ([(HMDXPCMessageSendPolicy *)&v13 isEqual:v4])
    {
      v5 = v4;
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

      if (v7 && (v8 = [(HMDHomeManagerXPCMessageSendPolicy *)self options], v8 == [(HMDHomeManagerXPCMessageSendPolicy *)v7 options]) && (v9 = [(HMDHomeManagerXPCMessageSendPolicy *)self entitlements], v9 == [(HMDHomeManagerXPCMessageSendPolicy *)v7 entitlements]))
      {
        v10 = [(HMDHomeManagerXPCMessageSendPolicy *)self isActive];
        v11 = v10 ^ [(HMDHomeManagerXPCMessageSendPolicy *)v7 isActive]^ 1;
      }

      else
      {
        LOBYTE(v11) = 0;
      }
    }

    else
    {
      LOBYTE(v11) = 0;
    }
  }

  return v11;
}

- (BOOL)canSendWithPolicyParameters:(id)a3
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = a3;
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

  if (!v6)
  {
    v11 = objc_autoreleasePoolPush();
    v12 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      v26 = 138543874;
      v27 = v14;
      v28 = 2112;
      v29 = objc_opt_class();
      v30 = 2112;
      v31 = v4;
      v15 = "%{public}@Cannot send message with policy parameters because they are of unexpected class %@: %@";
      v16 = v13;
      v17 = 32;
LABEL_13:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_DEBUG, v15, &v26, v17);
LABEL_17:

      goto LABEL_18;
    }

    goto LABEL_18;
  }

  v7 = [v6 entitlements];
  v8 = [(HMDHomeManagerXPCMessageSendPolicy *)self entitlements]& v7;
  if (v8 != [(HMDHomeManagerXPCMessageSendPolicy *)self entitlements])
  {
    v11 = objc_autoreleasePoolPush();
    v18 = self;
    v13 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      v14 = HMFGetLogIdentifier();
      [v6 entitlements];
      v19 = HMXPCClientEntitlementsShortDescription();
      [(HMDHomeManagerXPCMessageSendPolicy *)v18 entitlements];
      v20 = HMXPCClientEntitlementsShortDescription();
      v26 = 138543874;
      v27 = v14;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v21 = "%{public}@Cannot send message with policy parameters because entitlements %@ do not contain all of the required entitlements: %@";
LABEL_16:
      _os_log_impl(&dword_229538000, v13, OS_LOG_TYPE_DEBUG, v21, &v26, 0x20u);

      goto LABEL_17;
    }

LABEL_18:

    objc_autoreleasePoolPop(v11);
    v10 = 0;
    goto LABEL_19;
  }

  if ([(HMDHomeManagerXPCMessageSendPolicy *)self options])
  {
    v9 = [(HMDHomeManagerXPCMessageSendPolicy *)self options];
    if (([v6 options] & v9) == 0)
    {
      v11 = objc_autoreleasePoolPush();
      v24 = self;
      v13 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_18;
      }

      v14 = HMFGetLogIdentifier();
      [v6 options];
      v19 = HMHomeManagerOptionsToString();
      [(HMDHomeManagerXPCMessageSendPolicy *)v24 options];
      v20 = HMHomeManagerOptionsToString();
      v26 = 138543874;
      v27 = v14;
      v28 = 2112;
      v29 = v19;
      v30 = 2112;
      v31 = v20;
      v21 = "%{public}@Cannot send message with policy parameters because options %@ do not contain one of the required options: %@";
      goto LABEL_16;
    }
  }

  if (-[HMDHomeManagerXPCMessageSendPolicy isActive](self, "isActive") && ([v6 isActive] & 1) == 0)
  {
    v11 = objc_autoreleasePoolPush();
    v25 = self;
    v13 = HMFGetOSLogHandle();
    if (!os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_18;
    }

    v14 = HMFGetLogIdentifier();
    v26 = 138543362;
    v27 = v14;
    v15 = "%{public}@Cannot send message with policy parameters because active is NO";
    v16 = v13;
    v17 = 12;
    goto LABEL_13;
  }

  v10 = 1;
LABEL_19:

  v22 = *MEMORY[0x277D85DE8];
  return v10;
}

- (HMDHomeManagerXPCMessageSendPolicy)initWithEntitlements:(unint64_t)a3 options:(unint64_t)a4 active:(BOOL)a5
{
  if (a4)
  {
    v12.receiver = self;
    v12.super_class = HMDHomeManagerXPCMessageSendPolicy;
    v8 = [(HMDHomeManagerXPCMessageSendPolicy *)&v12 init];
    if (v8)
    {
      v8->_options = a4;
      if (a3 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = a3;
      }

      v8->_entitlements = v9;
      v8->_active = a5;
    }

    self = v8;
    v10 = self;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

@end