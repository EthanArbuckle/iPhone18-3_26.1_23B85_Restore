@interface HMDUnassociatedAppleHomePodAccessory
- (HMDUnassociatedAppleHomePodAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 productColor:(int64_t)a6 idsIdentifierString:(id)a7 requiredPairingCapabilities:(unint64_t)a8 minimumPairingSoftware:(id)a9 rawAccessoryCapabilities:(id)a10 rawResidentCapabilities:(id)a11 messageDispatcher:(id)a12;
- (id)modelForChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5;
@end

@implementation HMDUnassociatedAppleHomePodAccessory

- (HMDUnassociatedAppleHomePodAccessory)initWithIdentifier:(id)a3 name:(id)a4 category:(id)a5 productColor:(int64_t)a6 idsIdentifierString:(id)a7 requiredPairingCapabilities:(unint64_t)a8 minimumPairingSoftware:(id)a9 rawAccessoryCapabilities:(id)a10 rawResidentCapabilities:(id)a11 messageDispatcher:(id)a12
{
  v13.receiver = self;
  v13.super_class = HMDUnassociatedAppleHomePodAccessory;
  return [(HMDUnassociatedAppleMediaAccessory *)&v13 initWithIdentifier:a3 name:a4 category:a5 requiredPairingCapabilities:a8 minimumPairingSoftware:a9 productColor:a6 idsIdentifierString:a7 rawAccessoryCapabilities:a10 rawResidentCapabilities:a11 messageDispatcher:a12];
}

- (id)modelForChangeType:(unint64_t)a3 uuid:(id)a4 parentUUID:(id)a5
{
  v23 = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = a5;
  v10 = [(HMDUnassociatedAppleMediaAccessory *)self variant];
  v11 = off_27971A000;
  if (v10 <= 3)
  {
    if (v10)
    {
      if (v10 != 1)
      {
        goto LABEL_16;
      }

      v12 = objc_autoreleasePoolPush();
      v17 = self;
      v14 = HMFGetOSLogHandle();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
      {
        goto LABEL_15;
      }

      v15 = HMFGetLogIdentifier();
      *v22 = 138543362;
      *&v22[4] = v15;
      v16 = "%{public}@Unexpectedly creating an original HomePod model from a original HomePod";
      goto LABEL_14;
    }

    v12 = objc_autoreleasePoolPush();
    v18 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = HMFGetLogIdentifier();
      *v22 = 138543362;
      *&v22[4] = v15;
      v16 = "%{public}@Unexpectedly creating a model of an unknown HomePod";
      goto LABEL_14;
    }

LABEL_15:

    objc_autoreleasePoolPop(v12);
    v11 = off_27971A000;
    goto LABEL_16;
  }

  if (v10 == 4)
  {
    v11 = off_27971A010;
    goto LABEL_16;
  }

  if (v10 == 32 || v10 == 128)
  {
    v12 = objc_autoreleasePoolPush();
    v13 = self;
    v14 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_FAULT))
    {
      v15 = HMFGetLogIdentifier();
      *v22 = 138543362;
      *&v22[4] = v15;
      v16 = "%{public}@Unexpectedly creating a model from a demo HomePod";
LABEL_14:
      _os_log_impl(&dword_2531F8000, v14, OS_LOG_TYPE_FAULT, v16, v22, 0xCu);

      goto LABEL_15;
    }

    goto LABEL_15;
  }

LABEL_16:
  v19 = [(__objc2_class *)*v11 homePodAccessoryModelWithChangeType:a3 uuid:v8 parentUUID:v9, *v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end