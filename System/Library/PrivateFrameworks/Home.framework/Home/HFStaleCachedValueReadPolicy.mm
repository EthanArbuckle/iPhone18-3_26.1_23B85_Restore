@interface HFStaleCachedValueReadPolicy
- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4;
@end

@implementation HFStaleCachedValueReadPolicy

- (unint64_t)evaluateWithCharacteristic:(id)a3 traits:(id *)a4
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [v5 service];
  v7 = [v6 accessory];
  v8 = [v7 home];
  v9 = [v8 hf_characteristicValueManager];

  if (v9)
  {
    v10 = +[HFCharacteristicNotificationManager sharedManager];
    v11 = [v9 cachedValueForCharacteristic:v5];

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
        v14 = [v5 hf_prettyDescription];
        v26 = [v9 cachedValueForCharacteristic:v5];
        [v5 value];
        v15 = v27 = v12;
        v16 = [v5 valueUpdatedTime];
        [v10 lastNotificationsEnableRequestDate];
        *buf = 67110402;
        v29 = v11 != 0;
        v30 = 2112;
        v31 = v14;
        v32 = 2112;
        v33 = v26;
        v34 = 2112;
        v35 = v15;
        v36 = 2112;
        v37 = v16;
        v39 = v38 = 2112;
        v17 = v39;
        _os_log_impl(&dword_20D9BF000, v13, OS_LOG_TYPE_DEFAULT, "HFStaleCachedValueReadPolicy: isCached=%{BOOL}d for characteristic %@\ncachedValue=%@, value=%@, valueUpdatedTime=%@, lastNotificationsEnableRequestDate=%@", buf, 0x3Au);

        v12 = v27;
      }
    }

    if (a4)
    {
      v18 = [MEMORY[0x277CBEB98] setWithObject:v12];
      *a4 = v18;
    }

    v19 = v11 == 0;
  }

  else
  {
    if (!+[HFUtilities isInternalTest])
    {
      v20 = [v5 hf_prettyDescription];
      v21 = [v5 service];
      v22 = [v21 accessory];
      v23 = [v22 home];
      NSLog(&cfstr_MissingValueMa.isa, v20, v23);
    }

    v19 = 1;
  }

  v24 = *MEMORY[0x277D85DE8];
  return v19;
}

@end