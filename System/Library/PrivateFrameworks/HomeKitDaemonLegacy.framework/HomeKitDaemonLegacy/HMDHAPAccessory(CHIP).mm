@interface HMDHAPAccessory(CHIP)
- (BOOL)requiresThreadRouter;
@end

@implementation HMDHAPAccessory(CHIP)

- (BOOL)requiresThreadRouter
{
  v45 = *MEMORY[0x277D85DE8];
  chipAccessoryServer = [(HMDHAPAccessory *)self chipAccessoryServer];

  if (chipAccessoryServer)
  {
    chipAccessoryServer2 = [(HMDHAPAccessory *)self chipAccessoryServer];
    requiresThreadRouter = [chipAccessoryServer2 requiresThreadRouter];

    v6 = *MEMORY[0x277D85DE8];
    return requiresThreadRouter;
  }

  else
  {
    supportedLinkLayerTypes = [(HMDHAPAccessory *)self supportedLinkLayerTypes];
    unsignedIntValue = [supportedLinkLayerTypes unsignedIntValue];

    matterWEDSupport = [(HMDHAPAccessory *)self matterWEDSupport];
    [matterWEDSupport isEqualToNumber:&unk_28662A478];

    home = [(HMDAccessory *)self home];
    deviceCapabilities = [(HMDHAPAccessory *)self deviceCapabilities];
    if (objc_opt_respondsToSelector())
    {
      [deviceCapabilities supportsThreadService];
    }

    isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled();
    LODWORD(v13) = ([home hasThreadCapableResident] ^ 1) & ((unsignedIntValue & 0x10) >> 4);
    v14 = objc_autoreleasePoolPush();
    selfCopy = self;
    v16 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v17 = v26 = home;
      HMFBooleanToString();
      v18 = v25 = deviceCapabilities;
      HMFBooleanToString();
      v19 = v27 = v14;
      [(HMDHAPAccessory *)selfCopy supportedLinkLayerTypes];
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

      deviceCapabilities = v25;
      home = v26;
    }

    objc_autoreleasePoolPop(v14);
    v24 = *MEMORY[0x277D85DE8];
    return v13;
  }
}

@end