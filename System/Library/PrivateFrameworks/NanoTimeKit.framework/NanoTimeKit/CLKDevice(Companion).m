@interface CLKDevice(Companion)
+ (void)setBridgeActiveNRDevice:()Companion;
- (uint64_t)canCustomize;
- (uint64_t)isEcgPhoneComplicationEnabled;
@end

@implementation CLKDevice(Companion)

+ (void)setBridgeActiveNRDevice:()Companion
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [a1 currentDevice];
  v6 = [v5 pdrDevice];
  v7 = [v6 pairingID];

  v8 = [v4 valueForProperty:*MEMORY[0x277D2BBB8]];
  v9 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = v7;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "+[CLKDevice setActiveDevice:] - current %@ new %@", &v20, 0x16u);
  }

  if (v7 | v8 || ([v5 isBridgeActive] & 1) != 0)
  {
    if (![v5 isBridgeActive] || (!v8 ? (v10 = v7 != 0) : (v10 = 0), v8 ? (v11 = v7 == 0) : (v11 = 0), v11 || v10 || v8 && !objc_msgSend(v8, "isEqual:", v7) || (HasCapabilityForString = BPSDeviceHasCapabilityForString(), objc_msgSend(v5, "nrDevice"), v13 = objc_claimAutoreleasedReturnValue(), v14 = BPSDeviceHasCapabilityForString(), v13, HasCapabilityForString != v14)))
    {
      v15 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "updating to new device %@", &v20, 0xCu);
      }

      v16 = [a1 deviceForPairingID:v8 forced:1];
      [v16 setIsBridgeActive:1];
      [a1 setCurrentDevice:v16];
      v17 = [MEMORY[0x277CBBB68] sharedRenderingContext];
      [v17 setDevice:v16];

      v18 = [MEMORY[0x277CCAB98] defaultCenter];
      [v18 postNotificationName:*MEMORY[0x277CBB640] object:0];
    }
  }

  else
  {
    v19 = CLKLoggingObjectForDomain();
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v20) = 0;
      _os_log_impl(&dword_22D9C5000, v19, OS_LOG_TYPE_DEFAULT, "no device is currently paired", &v20, 2u);
    }

    [v5 setIsBridgeActive:1];
  }
}

- (uint64_t)canCustomize
{
  v1 = [a1 nrDevice];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  return HasCapabilityForString;
}

- (uint64_t)isEcgPhoneComplicationEnabled
{
  v4 = [a1 nrDevice];

  if (!v4)
  {
    return 0;
  }

  v5 = objc_getAssociatedObject(a1, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v7 = MEMORY[0x277CCD530];
    v8 = [a1 nrDevice];
    v6 = [v7 isElectrocardiogramSupportedOnWatch:v8];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:v6];
    objc_setAssociatedObject(a1, a2, v9, 0x303);
  }

  return v6;
}

@end