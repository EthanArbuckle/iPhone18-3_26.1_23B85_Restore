@interface LayoutConstantsMedium
@end

@implementation LayoutConstantsMedium

void ___LayoutConstantsMedium_block_invoke(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_9_lock);
  if (_block_invoke_9___cachedDevice)
  {
    v3 = _block_invoke_9___cachedDevice == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke_9___previousCLKDeviceVersion))
  {
    _block_invoke_9___cachedDevice = v9;
    _block_invoke_9___previousCLKDeviceVersion = [v9 version];
    ___LayoutConstantsMedium_block_invoke_2(v9, v10);
    xmmword_27DA31280 = v10[6];
    unk_27DA31290 = v10[7];
    xmmword_27DA312A0 = v10[8];
    qword_27DA312B0 = v11;
    xmmword_27DA31240 = v10[2];
    unk_27DA31250 = v10[3];
    xmmword_27DA31260 = v10[4];
    unk_27DA31270 = v10[5];
    _block_invoke_9_value = v10[0];
    *algn_27DA31230 = v10[1];
  }

  v5 = unk_27DA31290;
  *(a2 + 96) = xmmword_27DA31280;
  *(a2 + 112) = v5;
  *(a2 + 128) = xmmword_27DA312A0;
  *(a2 + 144) = qword_27DA312B0;
  v6 = unk_27DA31250;
  *(a2 + 32) = xmmword_27DA31240;
  *(a2 + 48) = v6;
  v7 = unk_27DA31270;
  *(a2 + 64) = xmmword_27DA31260;
  *(a2 + 80) = v7;
  v8 = *algn_27DA31230;
  *a2 = _block_invoke_9_value;
  *(a2 + 16) = v8;
  os_unfair_lock_unlock(&_block_invoke_9_lock);
}

void ___LayoutConstantsMedium_block_invoke_2(void *a1@<X1>, uint64_t a2@<X8>)
{
  v44[2] = *MEMORY[0x277D85DE8];
  v32 = 0;
  v30 = 0u;
  v31 = 0u;
  v29 = 0u;
  memset(v28, 0, sizeof(v28));
  v26 = 0u;
  v27 = 0u;
  v25 = 0u;
  v3 = a1;
  ___LayoutConstantsSmall_block_invoke_0(v3, &v25);
  v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v3 identitySizeClass:{2, v25, v26, v27, *&v28[0]}];
  v43[0] = &unk_284185650;
  v43[1] = &unk_284185668;
  v44[0] = &unk_2841892C8;
  v44[1] = &unk_2841892D8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  [v4 scaledValue:v5 withOverrides:19.0];
  *(a2 + 24) = v6;

  [v4 scaledValue:0 withOverride:30.5 forSizeClass:26.5];
  *(a2 + 32) = v7;
  v8 = NTKCircularMediumComplicationDiameter(v3);

  *(a2 + 40) = v8;
  [v4 scaledValue:3.0];
  *(a2 + 48) = v9;
  *(a2 + 56) = *(v28 + 8);
  v41[0] = &unk_284185650;
  v41[1] = &unk_284185668;
  v42[0] = &unk_2841892E8;
  v42[1] = &unk_2841892F8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v4 scaledValue:v10 withOverrides:38.0];
  *(a2 + 72) = v11;

  [v4 scaledValue:0 withOverride:38.0 forSizeClass:32.0];
  *(a2 + 80) = v12;
  v39[0] = &unk_284185650;
  v39[1] = &unk_284185668;
  v40[0] = &unk_284189308;
  v40[1] = &unk_284189318;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v4 scaledValue:v13 withOverrides:30.0];
  *(a2 + 88) = v14;

  v37[0] = &unk_284185650;
  v37[1] = &unk_284185668;
  v38[0] = &unk_284189328;
  v38[1] = &unk_284189338;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
  [v4 scaledValue:v15 withOverrides:27.5];
  v17 = v16;
  *a2 = v16;

  *(a2 + 8) = v17;
  [v4 scaledValue:0 withOverride:26.0 forSizeClass:22.5];
  *(a2 + 16) = v18;
  v19 = v30;
  *(a2 + 96) = v29;
  *(a2 + 112) = v19;
  v35[0] = &unk_284185650;
  v35[1] = &unk_284185668;
  v36[0] = &unk_284189348;
  v36[1] = &unk_284189328;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v4 scaledValue:v20 withOverrides:20.0];
  *(a2 + 128) = v21;

  v33[0] = &unk_284185650;
  v33[1] = &unk_284185668;
  v34[0] = &unk_284189358;
  v34[1] = &unk_284189368;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v4 scaledValue:v22 withOverrides:15.0];
  *(a2 + 136) = v23;

  [v4 scaledValue:3 withOverride:11.5 forSizeClass:13.0];
  *(a2 + 144) = v24;
}

@end