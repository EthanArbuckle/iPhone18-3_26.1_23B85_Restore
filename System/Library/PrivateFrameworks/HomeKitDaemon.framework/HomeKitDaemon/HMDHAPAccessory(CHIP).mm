@interface HMDHAPAccessory(CHIP)
- (BOOL)requiresThreadRouter;
- (NSNumber)matterDeviceTypeID;
@end

@implementation HMDHAPAccessory(CHIP)

- (NSNumber)matterDeviceTypeID
{
  chipAccessoryServer = [(HMDHAPAccessory *)self chipAccessoryServer];
  matterDeviceTypeID = [chipAccessoryServer matterDeviceTypeID];

  return matterDeviceTypeID;
}

- (BOOL)requiresThreadRouter
{
  v51 = *MEMORY[0x277D85DE8];
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
    v11 = [matterWEDSupport isEqualToNumber:&unk_283E750C8];

    home = [(HMDAccessory *)self home];
    deviceCapabilities = [(HMDHAPAccessory *)self deviceCapabilities];
    if (objc_opt_respondsToSelector())
    {
      supportsThreadService = [deviceCapabilities supportsThreadService];
    }

    else
    {
      supportsThreadService = 0;
    }

    v15 = isFeatureMatteriPhoneOnlyPairingControlForThreadEnabled() & supportsThreadService;
    hasAnyResident = [home hasAnyResident];
    hasThreadCapableResident = [home hasThreadCapableResident];
    v18 = ((unsignedIntValue & 0x10) == 0) | hasThreadCapableResident;
    if (!(((unsignedIntValue & 0x10) == 0) | hasThreadCapableResident & 1 | hasAnyResident & 1))
    {
      v18 = v15 & v11;
    }

    v19 = v18 ^ 1;
    context = objc_autoreleasePoolPush();
    selfCopy = self;
    v21 = HMFGetOSLogHandle();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
    {
      HMFGetLogIdentifier();
      v22 = v32 = deviceCapabilities;
      v30 = HMFBooleanToString();
      HMFBooleanToString();
      v23 = v33 = v19;
      supportedLinkLayerTypes2 = [(HMDHAPAccessory *)selfCopy supportedLinkLayerTypes];
      HMFBooleanToString();
      v25 = v31 = home;
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
      v42 = supportedLinkLayerTypes2;
      v43 = 2112;
      v44 = v25;
      v45 = 2112;
      v46 = v26;
      v47 = 2112;
      v48 = v27;
      v49 = 2112;
      v50 = v28;
      _os_log_impl(&dword_229538000, v21, OS_LOG_TYPE_DEBUG, "%{public}@requiresThreadRouter = %@ (isDeviceThreadCapable = %@, supportedLinkLayerTypes = %@, isAccessoryThreadCapable = %@, isAccessoryWED = %@, hasAnyResident = %@, hasThreadCapableResident = %@)", buf, 0x52u);

      home = v31;
      v19 = v33;

      deviceCapabilities = v32;
    }

    objc_autoreleasePoolPop(context);
    v29 = *MEMORY[0x277D85DE8];
    return v19 & 1;
  }
}

@end