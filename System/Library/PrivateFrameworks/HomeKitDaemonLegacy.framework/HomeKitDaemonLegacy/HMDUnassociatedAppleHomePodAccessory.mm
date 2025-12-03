@interface HMDUnassociatedAppleHomePodAccessory
- (HMDUnassociatedAppleHomePodAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category productColor:(int64_t)color idsIdentifierString:(id)string requiredPairingCapabilities:(unint64_t)capabilities minimumPairingSoftware:(id)software rawAccessoryCapabilities:(id)self0 rawResidentCapabilities:(id)self1 messageDispatcher:(id)self2;
- (id)modelForChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d;
@end

@implementation HMDUnassociatedAppleHomePodAccessory

- (HMDUnassociatedAppleHomePodAccessory)initWithIdentifier:(id)identifier name:(id)name category:(id)category productColor:(int64_t)color idsIdentifierString:(id)string requiredPairingCapabilities:(unint64_t)capabilities minimumPairingSoftware:(id)software rawAccessoryCapabilities:(id)self0 rawResidentCapabilities:(id)self1 messageDispatcher:(id)self2
{
  v13.receiver = self;
  v13.super_class = HMDUnassociatedAppleHomePodAccessory;
  return [(HMDUnassociatedAppleMediaAccessory *)&v13 initWithIdentifier:identifier name:name category:category requiredPairingCapabilities:capabilities minimumPairingSoftware:software productColor:color idsIdentifierString:string rawAccessoryCapabilities:accessoryCapabilities rawResidentCapabilities:residentCapabilities messageDispatcher:dispatcher];
}

- (id)modelForChangeType:(unint64_t)type uuid:(id)uuid parentUUID:(id)d
{
  v23 = *MEMORY[0x277D85DE8];
  uuidCopy = uuid;
  dCopy = d;
  variant = [(HMDUnassociatedAppleMediaAccessory *)self variant];
  v11 = off_27971A000;
  if (variant <= 3)
  {
    if (variant)
    {
      if (variant != 1)
      {
        goto LABEL_16;
      }

      v12 = objc_autoreleasePoolPush();
      selfCopy = self;
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
    selfCopy2 = self;
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

  if (variant == 4)
  {
    v11 = off_27971A010;
    goto LABEL_16;
  }

  if (variant == 32 || variant == 128)
  {
    v12 = objc_autoreleasePoolPush();
    selfCopy3 = self;
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
  v19 = [(__objc2_class *)*v11 homePodAccessoryModelWithChangeType:type uuid:uuidCopy parentUUID:dCopy, *v22];

  v20 = *MEMORY[0x277D85DE8];

  return v19;
}

@end