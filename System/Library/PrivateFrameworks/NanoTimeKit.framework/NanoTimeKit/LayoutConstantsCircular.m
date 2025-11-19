@interface LayoutConstantsCircular
@end

@implementation LayoutConstantsCircular

void ___LayoutConstantsCircular_block_invoke(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&kGEOLocationCoordinate2DInvalid_block_invoke_lock);
  if (kGEOLocationCoordinate2DInvalid_block_invoke___cachedDevice)
  {
    v3 = kGEOLocationCoordinate2DInvalid_block_invoke___cachedDevice == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != kGEOLocationCoordinate2DInvalid_block_invoke___previousCLKDeviceVersion))
  {
    kGEOLocationCoordinate2DInvalid_block_invoke___cachedDevice = v7;
    kGEOLocationCoordinate2DInvalid_block_invoke___previousCLKDeviceVersion = [v7 version];
    ___LayoutConstantsCircular_block_invoke_2(v7, v8);
    xmmword_27DA2FEC8 = v8[2];
    unk_27DA2FED8 = v8[3];
    xmmword_27DA2FEE8 = v8[4];
    kGEOLocationCoordinate2DInvalid_block_invoke_value = v8[0];
    unk_27DA2FEB8 = v8[1];
  }

  v5 = unk_27DA2FED8;
  a2[2] = xmmword_27DA2FEC8;
  a2[3] = v5;
  a2[4] = xmmword_27DA2FEE8;
  v6 = unk_27DA2FEB8;
  *a2 = kGEOLocationCoordinate2DInvalid_block_invoke_value;
  a2[1] = v6;
  os_unfair_lock_unlock(&kGEOLocationCoordinate2DInvalid_block_invoke_lock);
}

void ___LayoutConstantsCircular_block_invoke_2(uint64_t a1@<X1>, void *a2@<X8>)
{
  v43[2] = *MEMORY[0x277D85DE8];
  a2[8] = 0;
  a2[9] = 0;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v42[0] = &unk_284183460;
  v42[1] = &unk_284183478;
  v43[0] = &unk_284188D88;
  v43[1] = &unk_284188D88;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v3 scaledValue:v4 withOverrides:9.0];
  *a2 = v5;

  v40[0] = &unk_284183460;
  v40[1] = &unk_284183478;
  v41[0] = &unk_284188D88;
  v41[1] = &unk_284188D88;
  v40[2] = &unk_284183490;
  v41[2] = &unk_284188D98;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:3];
  [v3 scaledValue:v6 withOverrides:16.0];
  a2[1] = v7;

  v38[0] = &unk_284183460;
  v38[1] = &unk_284183478;
  v39[0] = &unk_284188D88;
  v39[1] = &unk_284188D88;
  v38[2] = &unk_284183490;
  v39[2] = &unk_284188DA8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:3];
  [v3 scaledValue:v8 withOverrides:32.0];
  a2[2] = v9;

  v36[0] = &unk_284183460;
  v36[1] = &unk_284183478;
  v37[0] = &unk_284188D88;
  v37[1] = &unk_284188D88;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v3 scaledValue:v10 withOverrides:8.0];
  a2[3] = v11;

  v34[0] = &unk_284183460;
  v34[1] = &unk_284183478;
  v35[0] = &unk_284188D88;
  v35[1] = &unk_284188D88;
  v34[2] = &unk_284183490;
  v35[2] = &unk_284188DB8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:3];
  [v3 scaledValue:v12 withOverrides:6.0];
  a2[4] = v13;

  v32[0] = &unk_284183460;
  v32[1] = &unk_284183478;
  v33[0] = &unk_284188D88;
  v33[1] = &unk_284188D88;
  v32[2] = &unk_284183490;
  v33[2] = &unk_284188DC8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:3];
  [v3 scaledValue:v14 withOverrides:40.0];
  a2[5] = v15;

  v30[0] = &unk_284183460;
  v30[1] = &unk_284183478;
  v31[0] = &unk_284188D88;
  v31[1] = &unk_284188D88;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v3 scaledValue:v16 withOverrides:1.0];
  a2[6] = v17;

  v28[0] = &unk_284183460;
  v28[1] = &unk_284183478;
  v29[0] = &unk_284188D88;
  v29[1] = &unk_284188D88;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v3 scaledValue:v18 withOverrides:4.0];
  a2[7] = v19;

  v26[0] = &unk_284183460;
  v26[1] = &unk_284183478;
  v27[0] = &unk_284188D88;
  v27[1] = &unk_284188D88;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v3 scaledValue:v20 withOverrides:1.0];
  a2[8] = v21;

  v24[0] = &unk_284183460;
  v24[1] = &unk_284183478;
  v25[0] = &unk_284188D88;
  v25[1] = &unk_284188D88;
  v24[2] = &unk_284183490;
  v25[2] = &unk_284188DD8;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v3 scaledValue:v22 withOverrides:2.0];
  a2[9] = v23;
}

@end