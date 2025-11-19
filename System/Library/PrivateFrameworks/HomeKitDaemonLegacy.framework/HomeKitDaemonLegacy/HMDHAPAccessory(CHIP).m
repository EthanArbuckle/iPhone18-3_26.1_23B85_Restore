@interface HMDHAPAccessory(CHIP)
- (BOOL)requiresThreadRouter;
@end

@implementation HMDHAPAccessory(CHIP)

- (BOOL)requiresThreadRouter
{
  v45 = *MEMORY[0x277D85DE8];
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
    [v10 isEqualToNumber:&unk_28662A478];

    v11 = [(HMDAccessory *)self home];
    v12 = [(HMDHAPAccessory *)self deviceCapabilities];
    if (objc_opt_respondsToSelector())
    {
      [v12 supportsThreadService];
    }

    isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled();
    LODWORD(v13) = ([v11 hasThreadCapableResident] ^ 1) & ((v9 & 0x10) >> 4);
    v14 = objc_autoreleasePoolPush();
    v15 = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v17 = v26 = v11;
      HMFBooleanToString();
      v18 = v25 = v12;
      HMFBooleanToString();
      v19 = v27 = v14;
      [(HMDHAPAccessory *)v15 supportedLinkLayerTypes];
      v13 = v28 = v13;
      v20 = HMFBooleanToString();
      v21 = HMFBooleanToString();
      v22 = HMFBooleanToString();
      v23 = HMFBooleanToString();
      *buf = 138545154;
      v30 = v17;
      v31 = 2112;
      v32 = v18;
      v33 = 2112;
      v34 = v19;
      v35 = 2112;
      v36 = v13;
      v37 = 2112;
      v38 = v20;
      v39 = 2112;
      v40 = v21;
      v41 = 2112;
      v42 = v22;
      v43 = 2112;
      v44 = v23;
      _os_log_impl(&dword_2531F8000, v16, OS_LOG_TYPE_DEBUG, "%{public}@requiresThreadRouter = %@ (isDeviceThreadCapable = %@, supportedLinkLayerTypes = %@, isAccessoryThreadCapable = %@, isAccessoryWED = %@, hasAnyResident = %@, hasThreadCapableResident = %@)", buf, 0x52u);

      LOBYTE(v13) = v28;
      v14 = v27;

      v12 = v25;
      v11 = v26;
    }

    objc_autoreleasePoolPop(v14);
    v24 = *MEMORY[0x277D85DE8];
    return v13;
  }
}

@end