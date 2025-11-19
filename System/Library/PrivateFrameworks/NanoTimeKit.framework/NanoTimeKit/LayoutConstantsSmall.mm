@interface LayoutConstantsSmall
@end

@implementation LayoutConstantsSmall

double ___LayoutConstantsSmall_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_1);
  if (_block_invoke_2___cachedDevice_1)
  {
    v3 = _block_invoke_2___cachedDevice_1 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion_1))
  {
    v5 = _block_invoke_2_value_0;
  }

  else
  {
    _block_invoke_2___cachedDevice_1 = v2;
    _block_invoke_2___previousCLKDeviceVersion_1 = [v2 version];
    v5 = ___LayoutConstantsSmall_block_invoke_2(_block_invoke_2___previousCLKDeviceVersion_1, v2);
    _block_invoke_2_value_0 = v5;
    _block_invoke_2_value_1 = v6;
    _block_invoke_2_value_2 = v7;
    _block_invoke_2_value_3 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock_1);

  return *&v5;
}

double ___LayoutConstantsSmall_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:3];
  v7[0] = &unk_284182818;
  v7[1] = &unk_284182830;
  v8[0] = &unk_284188428;
  v8[1] = &unk_284188438;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:2.5];
  v5 = v4;

  [v2 scaledValue:3 withOverride:2.0 forSizeClass:2.5];
  [v2 scaledValue:0 withOverride:29.0 forSizeClass:26.0];
  [v2 scaledValue:3 withOverride:1.75 forSizeClass:2.25];

  return v5;
}

void ___LayoutConstantsSmall_block_invoke_0(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_10_lock);
  if (_block_invoke_10___cachedDevice)
  {
    v3 = _block_invoke_10___cachedDevice == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke_10___previousCLKDeviceVersion))
  {
    _block_invoke_10___cachedDevice = v9;
    _block_invoke_10___previousCLKDeviceVersion = [v9 version];
    ___LayoutConstantsSmall_block_invoke_2_0(v9, v10);
    xmmword_27DA31330 = v10[6];
    unk_27DA31340 = v10[7];
    xmmword_27DA31350 = v10[8];
    qword_27DA31360 = v11;
    xmmword_27DA312F0 = v10[2];
    unk_27DA31300 = v10[3];
    xmmword_27DA31310 = v10[4];
    unk_27DA31320 = v10[5];
    _block_invoke_10_value = v10[0];
    unk_27DA312E0 = v10[1];
  }

  v5 = unk_27DA31340;
  *(a2 + 96) = xmmword_27DA31330;
  *(a2 + 112) = v5;
  *(a2 + 128) = xmmword_27DA31350;
  *(a2 + 144) = qword_27DA31360;
  v6 = unk_27DA31300;
  *(a2 + 32) = xmmword_27DA312F0;
  *(a2 + 48) = v6;
  v7 = unk_27DA31320;
  *(a2 + 64) = xmmword_27DA31310;
  *(a2 + 80) = v7;
  v8 = unk_27DA312E0;
  *a2 = _block_invoke_10_value;
  *(a2 + 16) = v8;
  os_unfair_lock_unlock(&_block_invoke_10_lock);
}

void ___LayoutConstantsSmall_block_invoke_2_0(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44[2] = *MEMORY[0x277D85DE8];
  *(a2 + 136) = 0;
  *(a2 + 144) = 0;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:14.5 forSizeClass:16.5];
  *(a2 + 24) = v4;
  v43[0] = &unk_284185650;
  v43[1] = &unk_284185668;
  v44[0] = &unk_284189378;
  v44[1] = &unk_284189388;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  [v3 scaledValue:v5 withOverrides:23.0];
  *(a2 + 32) = v6;

  v41[0] = &unk_284185650;
  v41[1] = &unk_284185668;
  v42[0] = &unk_284189388;
  v42[1] = &unk_284189398;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v3 scaledValue:v7 withOverrides:32.0];
  *(a2 + 40) = v8;

  [v3 scaledValue:0 withOverride:2.5 forSizeClass:2.0];
  *(a2 + 48) = v9;
  [v3 scaledValue:3 withOverride:22.0 forSizeClass:23.0];
  *(a2 + 56) = v10;
  v39[0] = &unk_284185650;
  v39[1] = &unk_284185668;
  v40[0] = &unk_2841893A8;
  v40[1] = &unk_2841893B8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v3 scaledValue:v11 withOverrides:10.0];
  *(a2 + 64) = v12;

  v37[0] = &unk_284185650;
  v37[1] = &unk_284185668;
  v38[0] = &unk_284189308;
  v38[1] = &unk_2841893C8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  [v3 scaledValue:v13 withOverrides:29.0];
  *(a2 + 72) = v14;

  v35[0] = &unk_284185650;
  v35[1] = &unk_284185668;
  v36[0] = &unk_284189328;
  v36[1] = &unk_284189338;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v3 scaledValue:v15 withOverrides:28.0];
  *(a2 + 80) = v16;

  [v3 scaledValue:0 withOverride:23.0 forSizeClass:20.0];
  *(a2 + 88) = v17;
  [v3 scaledValue:0 withOverride:21.5 forSizeClass:19.0];
  *a2 = v18;
  v33[0] = &unk_284185650;
  v33[1] = &unk_284185668;
  v34[0] = &unk_2841893D8;
  v34[1] = &unk_2841893E8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v3 scaledValue:v19 withOverrides:20.5];
  *(a2 + 8) = v20;

  [v3 scaledValue:0 withOverride:19.0 forSizeClass:16.5];
  *(a2 + 16) = v21;
  __asm { FMOV            V0.2D, #-7.0 }

  *(a2 + 96) = _Q0;
  *(a2 + 112) = _Q0;
  v31[0] = &unk_284185650;
  v31[1] = &unk_284185668;
  v32[0] = &unk_2841893F8;
  v32[1] = &unk_284189348;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v3 scaledValue:v27 withOverrides:17.0];
  *(a2 + 128) = v28;

  [v3 scaledValue:0 withOverride:13.0 forSizeClass:11.0];
  *(a2 + 136) = v29;
  [v3 scaledValue:0 withOverride:9.0 forSizeClass:8.5];
  *(a2 + 144) = v30;
}

@end