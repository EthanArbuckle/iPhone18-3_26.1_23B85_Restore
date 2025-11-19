@interface HFSuspendedStateOverrideValueProvider
+ (NSDictionary)overrideDefaultValueForCharacteristicType;
- (BOOL)valueSource:(id)a3 shouldOverrideValueForCharacteristic:(id)a4;
- (id)valueSource:(id)a3 overrideValueForCharacteristic:(id)a4;
@end

@implementation HFSuspendedStateOverrideValueProvider

- (BOOL)valueSource:(id)a3 shouldOverrideValueForCharacteristic:(id)a4
{
  v4 = a4;
  v5 = [v4 service];
  v6 = [v5 accessory];
  if ([v6 hf_isSuspended])
  {
    v7 = [objc_opt_class() overrideDefaultValueForCharacteristicType];
    v8 = [v4 characteristicType];
    v9 = [v7 objectForKeyedSubscript:v8];
    v10 = v9 != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

- (id)valueSource:(id)a3 overrideValueForCharacteristic:(id)a4
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a4;
  v5 = [v4 service];
  v6 = [v5 accessory];
  v7 = [v6 hf_isSuspended];

  if (v7)
  {
    v8 = [objc_opt_class() overrideDefaultValueForCharacteristicType];
    v9 = [v4 characteristicType];
    v10 = [v8 objectForKeyedSubscript:v9];

    v11 = HFLogForCategory(0x3DuLL);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = [v4 characteristicType];
      v13 = [v4 service];
      v14 = [v13 accessory];
      v17 = 138412802;
      v18 = v12;
      v19 = 2112;
      v20 = v10;
      v21 = 2112;
      v22 = v14;
      _os_log_impl(&dword_20D9BF000, v11, OS_LOG_TYPE_DEFAULT, "Overriding characteristic %@ value with %@ for suspended accessory %@", &v17, 0x20u);
    }
  }

  else
  {
    v10 = [v4 value];
  }

  v15 = *MEMORY[0x277D85DE8];

  return v10;
}

+ (NSDictionary)overrideDefaultValueForCharacteristicType
{
  if (_MergedGlobals_290 != -1)
  {
    dispatch_once(&_MergedGlobals_290, &__block_literal_global_3_23);
  }

  v3 = qword_280E03870;

  return v3;
}

void __82__HFSuspendedStateOverrideValueProvider_overrideDefaultValueForCharacteristicType__block_invoke_2()
{
  v5[3] = *MEMORY[0x277D85DE8];
  v0 = *MEMORY[0x277CCF750];
  v4[0] = *MEMORY[0x277CCF748];
  v4[1] = v0;
  v5[0] = &unk_2825248A0;
  v5[1] = &unk_2825248A0;
  v4[2] = *MEMORY[0x277CCF9F0];
  v5[2] = &unk_2825248A0;
  v1 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v5 forKeys:v4 count:3];
  v2 = qword_280E03870;
  qword_280E03870 = v1;

  v3 = *MEMORY[0x277D85DE8];
}

@end