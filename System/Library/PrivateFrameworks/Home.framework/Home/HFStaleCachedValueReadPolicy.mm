@interface HFStaleCachedValueReadPolicy
- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits;
@end

@implementation HFStaleCachedValueReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)characteristic traits:(id *)traits
{
  v40 = *MEMORY[0x277D85DE8];
  characteristicCopy = characteristic;
  service = [characteristicCopy service];
  accessory = [service accessory];
  home = [accessory home];
  hf_characteristicValueManager = [home hf_characteristicValueManager];

  if (hf_characteristicValueManager)
  {
    v10 = +[HFCharacteristicNotificationManager sharedManager];
    v11 = [hf_characteristicValueManager cachedValueForCharacteristic:characteristicCopy];

    if (v11)
    {
      v12 = @"ExplicitlyDisallowed";
    }

    else
    {
      v12 = @"CacheMissing";
    }

    if (+[HFUtilities hasInternalDiagnostics])
    {
      v13 = HFLogForCategory(0x3DuLL);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        hf_prettyDescription = [characteristicCopy hf_prettyDescription];
        v26 = [hf_characteristicValueManager cachedValueForCharacteristic:characteristicCopy];
        [characteristicCopy value];
        v15 = v27 = v12;
        valueUpdatedTime = [characteristicCopy valueUpdatedTime];
        [v10 lastNotificationsEnableRequestDate];
        *buf = 67110402;
        v29 = v11 != 0;
        v30 = 2112;
        v31 = hf_prettyDescription;
        v32 = 2112;
        v33 = v26;
        v34 = 2112;
        v35 = v15;
        v36 = 2112;
        v37 = valueUpdatedTime;
        v39 = v38 = 2112;
        v17 = v39;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFStaleCachedValueReadPolicy: isCached=%{BOOL}d for characteristic %@\ncachedValue=%@, value=%@, valueUpdatedTime=%@, lastNotificationsEnableRequestDate=%@", buf, 0x3Au);

        v12 = v27;
      }
    }

    if (traits)
    {
      v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
      *traits = v18;
    }

    v19 = v11 == 0;
  }

  else
  {
    if (!+[HFUtilities isInternalTest])
    {
      hf_prettyDescription2 = [characteristicCopy hf_prettyDescription];
      service2 = [characteristicCopy service];
      accessory2 = [service2 accessory];
      home2 = [accessory2 home];
      NSLog(&cfstr_MissingValueMa.isa, hf_prettyDescription2, home2);
    }

    v19 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

@end