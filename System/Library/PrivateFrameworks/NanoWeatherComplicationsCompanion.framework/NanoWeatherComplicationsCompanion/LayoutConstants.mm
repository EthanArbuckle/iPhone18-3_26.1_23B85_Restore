@interface LayoutConstants
@end

@implementation LayoutConstants

uint64_t ___LayoutConstants_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&FixedDateFormatter_block_invoke_lock);
  if (FixedDateFormatter_block_invoke___cachedDevice)
  {
    v3 = FixedDateFormatter_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == FixedDateFormatter_block_invoke___previousCLKDeviceVersion))
  {
    v5 = FixedDateFormatter_block_invoke_value;
  }

  else
  {
    FixedDateFormatter_block_invoke___cachedDevice = v2;
    FixedDateFormatter_block_invoke___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3(FixedDateFormatter_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    FixedDateFormatter_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&FixedDateFormatter_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_3(uint64_t a1, void *a2)
{
  v17[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v4 scaledValue:18.0 / v5];
  _LayoutConstants_constants_0 = v6;
  [v3 screenScale];
  [v4 scaledValue:15.0 / v7];
  _LayoutConstants_constants_1 = v8;
  [v3 screenScale];
  [v4 scaledValue:18.0 / v9];
  _LayoutConstants_constants_2 = v10;
  [v3 screenScale];
  v12 = v11;

  v16[0] = &unk_286D01E38;
  v16[1] = &unk_286D01E68;
  v17[0] = &unk_286D01E50;
  v17[1] = &unk_286D01E50;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v4 constantValue:v13 withOverrides:4.0 / v12];
  _LayoutConstants_constants_3 = v14;

  v15 = *MEMORY[0x277D85DE8];
}

uint64_t ___LayoutConstants_block_invoke_0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock);
  if (_block_invoke___cachedDevice)
  {
    v3 = _block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion))
  {
    v5 = _block_invoke_value;
  }

  else
  {
    _block_invoke___cachedDevice = v2;
    _block_invoke___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3_0(_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    _block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_3_0(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v9 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v9 scaledValue:18.0 / v4];
  _LayoutConstants_constants_0_0 = v5;
  [v3 screenScale];
  v7 = v6;

  [v9 scaledValue:30.0 / v7];
  _LayoutConstants_constants_1_0 = v8;
}

uint64_t ___LayoutConstants_block_invoke_1(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke_lock);
  if (kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke___cachedDevice)
  {
    v3 = kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke___previousCLKDeviceVersion))
  {
    v5 = kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke_value;
  }

  else
  {
    kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke___cachedDevice = v2;
    kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3_1(kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&kNanoWeatherUI_LocalizedStringsTable_Conditions_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_3_1(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v9 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v9 scaledValue:18.0 / v4];
  _LayoutConstants_constants_0_1 = v5;
  [v3 screenScale];
  v7 = v6;

  [v9 scaledValue:26.0 / v7];
  _LayoutConstants_constants_1_1 = v8;
}

uint64_t ___LayoutConstants_block_invoke_2(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_0);
  if (_block_invoke___cachedDevice_0)
  {
    v3 = _block_invoke___cachedDevice_0 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_0))
  {
    v5 = _block_invoke_value_0;
  }

  else
  {
    _block_invoke___cachedDevice_0 = v2;
    _block_invoke___previousCLKDeviceVersion_0 = [v2 version];
    ___LayoutConstants_block_invoke_3_2(_block_invoke___previousCLKDeviceVersion_0, v2);
    v5 = 1;
    _block_invoke_value_0 = 1;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_0);

  return v5;
}

void ___LayoutConstants_block_invoke_3_2(uint64_t a1, void *a2)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v4 scaledValue:18.0 / v5];
  _LayoutConstants_constants = v6;
  [v3 screenScale];
  [v4 scaledValue:26.0 / v7];
  qword_27FBA16A0 = v8;
  [v3 screenScale];
  v23[0] = &unk_286D01EC8;
  v23[1] = &unk_286D01EF8;
  v24[0] = &unk_286D01EE0;
  v24[1] = &unk_286D01EE0;
  v10 = 4.0 / v9;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v4 constantValue:v11 withOverrides:v10];
  qword_27FBA16A8 = v12;

  [v3 screenScale];
  v21[0] = &unk_286D01EC8;
  v21[1] = &unk_286D01EF8;
  v22[0] = &unk_286D01EE0;
  v22[1] = &unk_286D01EE0;
  v14 = -4.0 / v13;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v4 constantValue:v15 withOverrides:v14];
  qword_27FBA16B0 = v16;

  [v3 screenScale];
  v18 = v17;

  [v4 scaledValue:20.0 / v18];
  qword_27FBA16B8 = v19;

  v20 = *MEMORY[0x277D85DE8];
}

uint64_t ___LayoutConstants_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NWCCurrentObservationsMetadata_WindUnit_block_invoke_lock);
  if (NWCCurrentObservationsMetadata_WindUnit_block_invoke___cachedDevice)
  {
    v3 = NWCCurrentObservationsMetadata_WindUnit_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NWCCurrentObservationsMetadata_WindUnit_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NWCCurrentObservationsMetadata_WindUnit_block_invoke_value;
  }

  else
  {
    NWCCurrentObservationsMetadata_WindUnit_block_invoke___cachedDevice = v2;
    NWCCurrentObservationsMetadata_WindUnit_block_invoke___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3_3(NWCCurrentObservationsMetadata_WindUnit_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    NWCCurrentObservationsMetadata_WindUnit_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NWCCurrentObservationsMetadata_WindUnit_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_3_3(uint64_t a1, void *a2)
{
  v20[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v4 scaledValue:18.0 / v5];
  *&_LayoutConstants___constantsGraphicCircular = v6;
  [v3 screenScale];
  [v4 scaledValue:36.0 / v7];
  *(&_LayoutConstants___constantsGraphicCircular + 1) = v8;
  [v3 screenScale];
  [v4 scaledValue:30.0 / v9];
  *&xmmword_27FBA1710 = v10;
  [v3 screenScale];
  v19[0] = &unk_286D01F10;
  v19[1] = &unk_286D01F40;
  v20[0] = &unk_286D01F28;
  v20[1] = &unk_286D01F28;
  v12 = 14.0 / v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v4 constantValue:v13 withOverrides:v12];
  *(&xmmword_27FBA1710 + 1) = v14;

  [v3 screenScale];
  [v4 scaledValue:18.0 / v15];
  qword_27FBA1720 = v16;
  _LayoutConstants___constantsGraphicExtraLarge = _LayoutConstants___constantsGraphicCircular;
  xmmword_27FBA1740 = xmmword_27FBA1710;
  qword_27FBA1750 = v16;
  v18 = NWCExtraLargeScalingFactor(v3);

  _LayoutConstants___constantsGraphicExtraLarge = vmulq_n_f64(_LayoutConstants___constantsGraphicExtraLarge, v18);
  xmmword_27FBA1740 = vmulq_n_f64(xmmword_27FBA1740, v18);
  *&qword_27FBA1750 = v18 * *&qword_27FBA1750;

  v17 = *MEMORY[0x277D85DE8];
}

uint64_t ___LayoutConstants_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&GossamerCapability_block_invoke_2_lock);
  if (GossamerCapability_block_invoke_2___cachedDevice)
  {
    v3 = GossamerCapability_block_invoke_2___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == GossamerCapability_block_invoke_2___previousCLKDeviceVersion))
  {
    v5 = GossamerCapability_block_invoke_2_value;
  }

  else
  {
    GossamerCapability_block_invoke_2___cachedDevice = v2;
    GossamerCapability_block_invoke_2___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3_4(GossamerCapability_block_invoke_2___previousCLKDeviceVersion, v2);
    v5 = 1;
    GossamerCapability_block_invoke_2_value = 1;
  }

  os_unfair_lock_unlock(&GossamerCapability_block_invoke_2_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_3_4(uint64_t a1, void *a2)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v3 screenScale];
  [v4 scaledValue:18.0 / v5];
  _LayoutConstants_constants_0_2 = v6;
  [v3 screenScale];
  v24[0] = &unk_286D01F58;
  v24[1] = &unk_286D01F88;
  v25[0] = &unk_286D01F70;
  v25[1] = &unk_286D01F70;
  v8 = 4.0 / v7;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v4 constantValue:v9 withOverrides:v8];
  _LayoutConstants_constants_1_2 = v10;

  [v3 screenScale];
  v22[0] = &unk_286D01F58;
  v22[1] = &unk_286D01F88;
  v23[0] = &unk_286D01F70;
  v23[1] = &unk_286D01F70;
  v12 = 4.0 / v11;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v4 constantValue:v13 withOverrides:v12];
  _LayoutConstants_constants_2_0 = v14;

  [v3 screenScale];
  v16 = v15;

  v20[0] = &unk_286D01F58;
  v20[1] = &unk_286D01F88;
  v21[0] = &unk_286D01F70;
  v21[1] = &unk_286D01F70;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v4 constantValue:v17 withOverrides:2.0 / v16];
  _LayoutConstants_constants_3_0 = v18;

  v19 = *MEMORY[0x277D85DE8];
}

@end