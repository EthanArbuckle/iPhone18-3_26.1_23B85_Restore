@interface HMDHAPAccessory(CHIP)
- (BOOL)requiresThreadRouter;
- (NSNumber)matterDeviceTypeID;
@end

@implementation HMDHAPAccessory(CHIP)

- (NSNumber)matterDeviceTypeID
{
  v2 = [(HMDHAPAccessory *)self chipAccessoryServer];
  v3 = [v2 matterDeviceTypeID];

  return v3;
}

- (BOOL)requiresThreadRouter
{
  v51 = *MEMORY[0x277D85DE8];
  v3 = [(HMDHAPAccessory *)self chipAccessoryServer];

  if (v3)
  {
    v4 = [(HMDHAPAccessory *)self chipAccessoryServer];
    v5 = [v4 requiresThreadRouter];

    v6 = *MEMORY[0x277D85DE8];
    return v5;
  }

  else
  {
    v8 = [(HMDHAPAccessory *)self supportedLinkLayerTypes];
    v9 = [v8 unsignedIntValue];

    v10 = [(HMDHAPAccessory *)self matterWEDSupport];
    v11 = [v10 isEqualToNumber:&unk_283E750C8];

    v12 = [(HMDAccessory *)self home];
    v13 = [(HMDHAPAccessory *)self deviceCapabilities];
    if (objc_opt_respondsToSelector())
    {
      v14 = [v13 supportsThreadService];
    }

    else
    {
      v14 = 0;
    }

    v15 = isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & v14;
    v16 = [v12 hasAnyResident];
    v17 = [v12 hasThreadCapableResident];
    v18 = ((v9 & 0x10) == 0) | v17;
    if (!(((v9 & 0x10) == 0) | v17 & 1 | v16 & 1))
    {
      v18 = v15 & v11;
    }

    v19 = v18 ^ 1;
    context = objc_autoreleasePoolPush();
    v20 = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v22 = v32 = v13;
      v30 = HMFBooleanToString();
      HMFBooleanToString();
      v23 = v33 = v19;
      v24 = [(HMDHAPAccessory *)v20 supportedLinkLayerTypes];
      HMFBooleanToString();
      v25 = v31 = v12;
      v26 = HMFBooleanToString();
      v27 = HMFBooleanToString();
      v28 = HMFBooleanToString();
      *buf = 138545154;
      v36 = v22;
      v37 = 2112;
      v38 = v30;
      v39 = 2112;
      v40 = v23;
      v41 = 2112;
      v42 = v24;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v26;
      v47 = 2112;
      v48 = v27;
      v49 = 2112;
      v50 = v28;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@requiresThreadRouter = %@ (isDeviceThreadCapable = %@, supportedLinkLayerTypes = %@, isAccessoryThreadCapable = %@, isAccessoryWED = %@, hasAnyResident = %@, hasThreadCapableResident = %@)", buf, 0x52u);

      v12 = v31;
      v19 = v33;

      v13 = v32;
    }

    objc_autoreleasePoolPop(context);
    v29 = *MEMORY[0x277D85DE8];
    return v19 & 1;
  }
}

@end