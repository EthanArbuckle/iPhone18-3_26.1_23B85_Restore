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
  currentDevice = [self currentDevice];
  pdrDevice = [currentDevice pdrDevice];
  pairingID = [pdrDevice pairingID];

  v8 = [v4 valueForProperty:*MEMORY[0x277D2BBB8]];
  v9 = CLKLoggingObjectForDomain();
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    v20 = 138412546;
    v21 = pairingID;
    v22 = 2112;
    v23 = v8;
    _os_log_impl(&dword_22D9C5000, v9, OS_LOG_TYPE_DEFAULT, "+[CLKDevice setActiveDevice:] - current %@ new %@", &v20, 0x16u);
  }

  if (pairingID | v8 || ([currentDevice isBridgeActive] & 1) != 0)
  {
    if (![currentDevice isBridgeActive] || (!v8 ? (v10 = pairingID != 0) : (v10 = 0), v8 ? (v11 = pairingID == 0) : (v11 = 0), v11 || v10 || v8 && !objc_msgSend(v8, "isEqual:", pairingID) || (HasCapabilityForString = BPSDeviceHasCapabilityForString(), objc_msgSend(currentDevice, "nrDevice"), v13 = objc_claimAutoreleasedReturnValue(), v14 = BPSDeviceHasCapabilityForString(), v13, HasCapabilityForString != v14)))
    {
      v15 = CLKLoggingObjectForDomain();
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
      {
        v20 = 138412290;
        v21 = v4;
        _os_log_impl(&dword_22D9C5000, v15, OS_LOG_TYPE_DEFAULT, "updating to new device %@", &v20, 0xCu);
      }

      v16 = [self deviceForPairingID:v8 forced:1];
      [v16 setIsBridgeActive:1];
      [self setCurrentDevice:v16];
      mEMORY[0x277CBBB68] = [MEMORY[0x277CBBB68] sharedRenderingContext];
      [mEMORY[0x277CBBB68] setDevice:v16];

      defaultCenter = [MEMORY[0x277CCAB98] defaultCenter];
      [defaultCenter postNotificationName:*MEMORY[0x277CBB640] object:0];
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

    [currentDevice setIsBridgeActive:1];
  }
}

- (uint64_t)canCustomize
{
  nrDevice = [self nrDevice];
  HasCapabilityForString = BPSDeviceHasCapabilityForString();

  return HasCapabilityForString;
}

- (uint64_t)isEcgPhoneComplicationEnabled
{
  nrDevice = [self nrDevice];

  if (!nrDevice)
  {
    return 0;
  }

  v5 = objc_getAssociatedObject(self, a2);
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    v7 = MEMORY[0x277CCD530];
    nrDevice2 = [self nrDevice];
    bOOLValue = [v7 isElectrocardiogramSupportedOnWatch:nrDevice2];

    v9 = [MEMORY[0x277CCABB0] numberWithBool:bOOLValue];
    objc_setAssociatedObject(self, a2, v9, 0x303);
  }

  return bOOLValue;
}

@end