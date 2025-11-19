@interface HMSetting
@end

@implementation HMSetting

id __62__HMSetting_HFAdditions__hf_debugDescriptionForValue_keyPath___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  v3 = [v2 value];
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;

  v6 = [v5 objectForKey:@"MTAlarms"];
  v7 = [v6 firstObject];
  v8 = [v7 objectForKey:@"$MTAlarm"];

  v9 = [v8 objectForKey:@"MTAlarmID"];
  v10 = v9;
  if (v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = @"(null)";
  }

  v12 = v11;

  v13 = [v8 objectForKey:@"MTAlarmEnabled"];
  v14 = [v13 description];
  v15 = v14;
  if (v14)
  {
    v16 = v14;
  }

  else
  {
    v16 = @"(null)";
  }

  v17 = v16;

  v18 = MEMORY[0x277CCACA8];
  v19 = [v2 identifier];
  v20 = [v18 stringWithFormat:@"Item UUID: %@, Alarm UUID:'%@', enabled:'%@'", v19, v12, v17];

  return v20;
}

@end