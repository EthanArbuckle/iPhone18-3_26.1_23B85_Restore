@interface LayoutConstantsModularSmall
@end

@implementation LayoutConstantsModularSmall

void ___LayoutConstantsModularSmall_block_invoke(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_2_lock_0);
  if (_block_invoke_2___cachedDevice_0)
  {
    v3 = _block_invoke_2___cachedDevice_0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke_2___previousCLKDeviceVersion_0))
  {
    _block_invoke_2___cachedDevice_0 = v6;
    _block_invoke_2___previousCLKDeviceVersion_0 = [v6 version];
    ___LayoutConstantsModularSmall_block_invoke_2(v6, v7);
    _block_invoke_2_value_0 = v7[0];
    *algn_27DA2E550 = v7[1];
    qword_27DA2E560 = v8;
  }

  v5 = *algn_27DA2E550;
  *a2 = _block_invoke_2_value_0;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA2E560;
  os_unfair_lock_unlock(&_block_invoke_2_lock_0);
}

void ___LayoutConstantsModularSmall_block_invoke_2(uint64_t a1@<X1>, void *a2@<X8>)
{
  v8 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v8 scaledValue:0 withOverride:11.5 forSizeClass:10.5];
  *a2 = v3;
  [v8 scaledValue:2.5];
  a2[3] = v4;
  [v8 scaledSize:{28.0, 28.0}];
  a2[1] = v5;
  a2[2] = v6;
  [v8 scaledValue:3 withOverride:21.0 forSizeClass:22.0];
  a2[4] = v7;
}

void ___LayoutConstantsModularSmall_block_invoke_0(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_5_lock);
  if (_block_invoke_5___cachedDevice)
  {
    v3 = _block_invoke_5___cachedDevice == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke_5___previousCLKDeviceVersion))
  {
    _block_invoke_5___cachedDevice = v6;
    _block_invoke_5___previousCLKDeviceVersion = [v6 version];
    ___LayoutConstantsModularSmall_block_invoke_2_0(v6, v7);
    _block_invoke_5_value = v7[0];
    unk_27DA2FC98 = v7[1];
    xmmword_27DA2FCA8 = v7[2];
  }

  v5 = unk_27DA2FC98;
  *a2 = _block_invoke_5_value;
  a2[1] = v5;
  a2[2] = xmmword_27DA2FCA8;
  os_unfair_lock_unlock(&_block_invoke_5_lock);
}

void ___LayoutConstantsModularSmall_block_invoke_2_0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v9[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v8[0] = &unk_284183388;
  v8[1] = &unk_2841833A0;
  v9[0] = &unk_284188D28;
  v9[1] = &unk_284188D38;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v3 scaledValue:v4 withOverrides:36.0];
  *a2 = v5;

  [v3 scaledValue:0 withOverride:46.0 forSizeClass:39.5];
  a2[1] = v6;
  [v3 scaledValue:0 withOverride:48.0 forSizeClass:42.0];
  a2[2] = v7;
  a2[3] = v7;
  a2[4] = v7;
  a2[5] = v7;
}

void ___LayoutConstantsModularSmall_block_invoke_1(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_2_lock_6);
  if (_block_invoke_2___cachedDevice_6)
  {
    v3 = _block_invoke_2___cachedDevice_6 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke_2___previousCLKDeviceVersion_6))
  {
    _block_invoke_2___cachedDevice_6 = v6;
    _block_invoke_2___previousCLKDeviceVersion_6 = [v6 version];
    ___LayoutConstantsModularSmall_block_invoke_2_1(v6, v7);
    _block_invoke_2_value_4 = v7[0];
    unk_27DA30048 = v7[1];
    xmmword_27DA30058 = v7[2];
  }

  v5 = unk_27DA30048;
  *a2 = _block_invoke_2_value_4;
  a2[1] = v5;
  a2[2] = xmmword_27DA30058;
  os_unfair_lock_unlock(&_block_invoke_2_lock_6);
}

void ___LayoutConstantsModularSmall_block_invoke_2_1(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = *MEMORY[0x277D85DE8];
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v6 = NTKClockFaceLocalizedString(@"DATE_ALLOW_ALTERNATE_FONT_READABILITY_SMALL_MODULAR", @"See note in strings file for this key");
  v7 = [v6 BOOLValue];

  CLKValueForDeviceMetrics();
  if (v7)
  {

    v25[0] = &unk_284183538;
    v25[1] = &unk_284183550;
    v26[0] = &unk_284188E28;
    v26[1] = &unk_284188E38;
    v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v5 scaledValue:v4 withOverrides:13.0];
  }

  v9 = v8;

  v10 = MEMORY[0x277D74418];
  if (!v7)
  {
    v10 = MEMORY[0x277D74410];
  }

  v11 = *v10;
  *a2 = v9;
  *(a2 + 8) = v11;
  v23[0] = &unk_284183538;
  v23[1] = &unk_284183568;
  v24[0] = &unk_284188E48;
  v24[1] = &unk_284188E58;
  v23[2] = &unk_284183550;
  v24[2] = &unk_284188E68;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  [v5 scaledValue:v12 withOverrides:19.5];
  *(a2 + 24) = v13;

  [v5 scaledValue:3 withOverride:24.0 forSizeClass:25.0];
  *(a2 + 16) = v14;
  v21[0] = &unk_284183538;
  v21[1] = &unk_284183568;
  v22[0] = &unk_284188E58;
  v22[1] = &unk_284188E78;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v5 scaledValue:v15 withOverrides:20.0];
  *(a2 + 32) = v16;

  v19[0] = &unk_284183538;
  v19[1] = &unk_284183550;
  v20[0] = &unk_284188E88;
  v20[1] = &unk_284188E98;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v5 scaledValue:v17 withOverrides:50.0];
  *(a2 + 40) = v18;
}

void ___LayoutConstantsModularSmall_block_invoke_3(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_2_lock_11);
  if (_block_invoke_2___cachedDevice_11)
  {
    v3 = _block_invoke_2___cachedDevice_11 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke_2___previousCLKDeviceVersion_11))
  {
    _block_invoke_2___cachedDevice_11 = v7;
    _block_invoke_2___previousCLKDeviceVersion_11 = [v7 version];
    ___LayoutConstantsModularSmall_block_invoke_2_2(v7, v8);
    xmmword_27DA314B0 = v8[2];
    unk_27DA314C0 = v8[3];
    xmmword_27DA314D0 = v8[4];
    _block_invoke_2_value_9 = v8[0];
    unk_27DA314A0 = v8[1];
  }

  v5 = unk_27DA314C0;
  a2[2] = xmmword_27DA314B0;
  a2[3] = v5;
  a2[4] = xmmword_27DA314D0;
  v6 = unk_27DA314A0;
  *a2 = _block_invoke_2_value_9;
  a2[1] = v6;
  os_unfair_lock_unlock(&_block_invoke_2_lock_11);
}

void ___LayoutConstantsModularSmall_block_invoke_2_2(uint64_t a1@<X1>, void *a2@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:16.5 forSizeClass:16.5];
  *a2 = v4;
  v32[0] = &unk_2841856E0;
  v32[1] = &unk_2841856F8;
  v33[0] = &unk_284189488;
  v33[1] = &unk_284189498;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v3 scaledValue:v5 withOverrides:10.5];
  a2[1] = v6;

  a2[2] = 0x3FF0000000000000;
  v30[0] = &unk_2841856E0;
  v30[1] = &unk_2841856F8;
  v31[0] = &unk_2841894A8;
  v31[1] = &unk_2841894B8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v3 scaledValue:v7 withOverrides:12.0];
  a2[3] = v8;

  v28[0] = &unk_2841856E0;
  v28[1] = &unk_284185710;
  v29[0] = &unk_2841894C8;
  v29[1] = &unk_2841894C8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v3 scaledValue:v9 withOverrides:4.0];
  a2[4] = v10;

  v26[0] = &unk_2841856E0;
  v26[1] = &unk_2841856F8;
  v27[0] = &unk_2841894D8;
  v27[1] = &unk_2841894E8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v3 scaledValue:v11 withOverrides:5.0];
  a2[5] = v12;

  v24[0] = &unk_2841856E0;
  v24[1] = &unk_2841856F8;
  v25[0] = &unk_2841894F8;
  v25[1] = &unk_284189508;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v3 scaledValue:v13 withOverrides:31.0];
  a2[6] = v14;

  v22[0] = &unk_2841856E0;
  v22[1] = &unk_2841856F8;
  v23[0] = &unk_284189518;
  v23[1] = &unk_284189528;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 scaledValue:v15 withOverrides:50.0];
  a2[7] = v16;

  v20[0] = &unk_2841856E0;
  v20[1] = &unk_2841856F8;
  v21[0] = &unk_284189538;
  v21[1] = &unk_2841894F8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v3 scaledValue:v17 withOverrides:22.0];
  a2[8] = v18;

  [v3 scaledValue:3 withOverride:17.0 forSizeClass:17.0];
  a2[9] = v19;
}

@end