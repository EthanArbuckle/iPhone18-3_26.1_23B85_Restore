@interface HMDUserActivityReportFactory
- (id)reportFromMessagePayload:(id)payload withUser:(id)user sourceDevice:(id)device;
@end

@implementation HMDUserActivityReportFactory

- (id)reportFromMessagePayload:(id)payload withUser:(id)user sourceDevice:(id)device
{
  v28 = *MEMORY[0x277D85DE8];
  payloadCopy = payload;
  userCopy = user;
  deviceCopy = device;
  v11 = [payloadCopy hmf_numberForKey:@"HAS.contributorType"];
  v12 = v11;
  if (!v11)
  {
    v14 = objc_autoreleasePoolPush();
    selfCopy2 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v17 = HMFGetLogIdentifier();
      v24 = 138543618;
      v25 = v17;
      v26 = 2112;
      v27 = payloadCopy;
      v18 = "%{public}@Contributor type is not set in payload: %@";
LABEL_13:
      _os_log_impl(&dword_229538000, v16, OS_LOG_TYPE_ERROR, v18, &v24, 0x16u);
    }

LABEL_14:

    objc_autoreleasePoolPop(v14);
    goto LABEL_15;
  }

  unsignedIntegerValue = [v11 unsignedIntegerValue];
  if (unsignedIntegerValue > 2)
  {
    if (unsignedIntegerValue == 4)
    {
      v19 = HMDUserActivityType4Report;
    }

    else
    {
      if (unsignedIntegerValue != 3)
      {
        goto LABEL_11;
      }

      v19 = HMDUserActivityType6Report;
    }

    v21 = [[v19 alloc] initFromMessagePayload:payloadCopy withUser:userCopy];
  }

  else
  {
    if (unsignedIntegerValue != 1)
    {
      if (unsignedIntegerValue == 2)
      {
LABEL_15:
        v20 = 0;
        goto LABEL_20;
      }

LABEL_11:
      v14 = objc_autoreleasePoolPush();
      selfCopy2 = self;
      v16 = HMFGetOSLogHandle();
      if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
      {
        v17 = HMFGetLogIdentifier();
        v24 = 138543618;
        v25 = v17;
        v26 = 2112;
        v27 = v12;
        v18 = "%{public}@Unknown contributor type: %@";
        goto LABEL_13;
      }

      goto LABEL_14;
    }

    v21 = [[HMDUserActivityHomeAwayReport alloc] initFromMessagePayload:payloadCopy withUser:userCopy sourceDevice:deviceCopy];
  }

  v20 = v21;
LABEL_20:

  v22 = *MEMORY[0x277D85DE8];

  return v20;
}

@end