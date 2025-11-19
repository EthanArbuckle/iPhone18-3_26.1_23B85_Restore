@interface NTKDigitalModularLayoutConstants
@end

@implementation NTKDigitalModularLayoutConstants

void ___NTKDigitalModularLayoutConstants_block_invoke(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&_block_invoke_lock);
  if (_block_invoke___cachedDevice)
  {
    v3 = _block_invoke___cachedDevice == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != _block_invoke___previousCLKDeviceVersion))
  {
    _block_invoke___cachedDevice = v8;
    _block_invoke___previousCLKDeviceVersion = [v8 version];
    ___NTKDigitalModularLayoutConstants_block_invoke_2(v8, v9);
    xmmword_27DA2DAD0 = v9[4];
    unk_27DA2DAE0 = v9[5];
    xmmword_27DA2DAF0 = v9[6];
    qword_27DA2DB00 = v10;
    _block_invoke_value = v9[0];
    unk_27DA2DAA0 = v9[1];
    xmmword_27DA2DAB0 = v9[2];
    unk_27DA2DAC0 = v9[3];
  }

  v5 = unk_27DA2DAE0;
  *(a2 + 64) = xmmword_27DA2DAD0;
  *(a2 + 80) = v5;
  *(a2 + 96) = xmmword_27DA2DAF0;
  *(a2 + 112) = qword_27DA2DB00;
  v6 = unk_27DA2DAA0;
  *a2 = _block_invoke_value;
  *(a2 + 16) = v6;
  v7 = unk_27DA2DAC0;
  *(a2 + 32) = xmmword_27DA2DAB0;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&_block_invoke_lock);
}

void ___NTKDigitalModularLayoutConstants_block_invoke_2(void *a1@<X1>, uint64_t a2@<X8>)
{
  v59[4] = *MEMORY[0x277D85DE8];
  v33 = a1;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:v33 identitySizeClass:2];
  v58[0] = &unk_284181888;
  v58[1] = &unk_2841818A0;
  v59[0] = &unk_284186808;
  v59[1] = &unk_284186818;
  v58[2] = &unk_2841818B8;
  v58[3] = &unk_2841818D0;
  v59[2] = &unk_284186818;
  v59[3] = &unk_284186818;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v59 forKeys:v58 count:4];
  [v3 scaledValue:v4 withOverrides:2.0];
  *a2 = v5;

  v56[0] = &unk_284181888;
  v56[1] = &unk_2841818A0;
  v57[0] = &unk_284186808;
  v57[1] = &unk_284186818;
  v56[2] = &unk_2841818B8;
  v56[3] = &unk_2841818D0;
  v57[2] = &unk_284186818;
  v57[3] = &unk_284186818;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v57 forKeys:v56 count:4];
  [v3 scaledValue:v6 withOverrides:2.0];
  *(a2 + 8) = v7;

  v54[0] = &unk_2841818E8;
  v54[1] = &unk_284181888;
  v55[0] = &unk_284186828;
  v55[1] = &unk_284186838;
  v54[2] = &unk_2841818B8;
  v54[3] = &unk_2841818D0;
  v55[2] = &unk_284186848;
  v55[3] = &unk_284186858;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:4];
  [v3 scaledValue:v8 withOverrides:23.5];
  *(a2 + 16) = v9;

  v52[0] = &unk_2841818E8;
  v52[1] = &unk_284181888;
  v53[0] = &unk_284186868;
  v53[1] = &unk_284186878;
  v52[2] = &unk_2841818A0;
  v52[3] = &unk_2841818D0;
  v53[2] = &unk_284186888;
  v53[3] = &unk_284186898;
  v52[4] = &unk_284181900;
  v52[5] = &unk_284181918;
  v53[4] = &unk_2841868A8;
  v53[5] = &unk_2841868B8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:6];
  [v3 scaledValue:v10 withOverrides:52.0];
  v12 = v11;
  *(a2 + 24) = v11;

  *(a2 + 32) = v12;
  v50[0] = &unk_2841818E8;
  v50[1] = &unk_284181888;
  v51[0] = &unk_2841868C8;
  v51[1] = &unk_2841868D8;
  v50[2] = &unk_2841818A0;
  v50[3] = &unk_2841818B8;
  v51[2] = &unk_2841868E8;
  v51[3] = &unk_2841868F8;
  v50[4] = &unk_2841818D0;
  v50[5] = &unk_284181900;
  v51[4] = &unk_284186908;
  v51[5] = &unk_284186918;
  v50[6] = &unk_284181918;
  v51[6] = &unk_284186928;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:7];
  [v3 scaledValue:v13 withOverrides:65.0];
  *(a2 + 40) = v14;

  v48[0] = &unk_2841818E8;
  v48[1] = &unk_284181888;
  v49[0] = &unk_284186938;
  v49[1] = &unk_284186948;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v3 scaledValue:v15 withOverrides:23.5];
  *(a2 + 56) = v16;

  v46[0] = &unk_2841818E8;
  v46[1] = &unk_284181888;
  v47[0] = &unk_284186958;
  v47[1] = &unk_284186968;
  v46[2] = &unk_2841818A0;
  v47[2] = &unk_2841868E8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:3];
  [v3 scaledValue:v17 withOverrides:65.0];
  *(a2 + 48) = v18;

  *(a2 + 64) = 0x4010000000000000;
  v44[0] = &unk_2841818E8;
  v44[1] = &unk_284181888;
  v45[0] = &unk_284186978;
  v45[1] = &unk_284186988;
  v44[2] = &unk_2841818A0;
  v45[2] = &unk_284186988;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:3];
  [v3 scaledValue:v19 withOverrides:13.5];
  *(a2 + 72) = v20;

  v42[0] = &unk_2841818E8;
  v42[1] = &unk_284181888;
  v43[0] = &unk_284186998;
  v43[1] = &unk_2841869A8;
  v42[2] = &unk_2841818A0;
  v43[2] = &unk_2841869A8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:3];
  [v3 scaledValue:v21 withOverrides:29.0];
  *(a2 + 80) = v22;

  v40[0] = &unk_2841818E8;
  v40[1] = &unk_2841818A0;
  v41[0] = &unk_2841869B8;
  v41[1] = &unk_2841869C8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
  [v3 scaledValue:v23 withOverrides:41.5];
  *(a2 + 88) = v24;

  v38[0] = &unk_2841818E8;
  v38[1] = &unk_284181888;
  v39[0] = &unk_284186818;
  v39[1] = &unk_2841869D8;
  v38[2] = &unk_2841818B8;
  v38[3] = &unk_2841818D0;
  v39[2] = &unk_2841869E8;
  v39[3] = &unk_2841869F8;
  v38[4] = &unk_284181900;
  v38[5] = &unk_284181918;
  v39[4] = &unk_284186A08;
  v39[5] = &unk_284186A18;
  v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:6];
  [v3 scaledValue:v25 withOverrides:8.0];
  *(a2 + 96) = v26;

  v36[0] = &unk_2841818E8;
  v36[1] = &unk_284181888;
  v37[0] = &unk_284186A28;
  v37[1] = &unk_284186A38;
  v36[2] = &unk_2841818A0;
  v36[3] = &unk_2841818B8;
  v37[2] = &unk_284186A48;
  v37[3] = &unk_284186A58;
  v36[4] = &unk_2841818D0;
  v37[4] = &unk_284186908;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:5];
  [v3 scaledValue:v27 withOverrides:62.5];
  *(a2 + 104) = v28;

  [v33 sizeClass];
  if (CLKDeviceCategoryForSizeClass() == 5)
  {
    [v33 screenBounds];
    v30 = v29 * 0.042;
  }

  else
  {
    v34[0] = &unk_2841818E8;
    v34[1] = &unk_284181888;
    v35[0] = &unk_284186A68;
    v35[1] = &unk_284186A68;
    v34[2] = &unk_2841818B8;
    v34[3] = &unk_2841818D0;
    v35[2] = &unk_284186808;
    v35[3] = &unk_284186A78;
    v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:4];
    [v3 constantValue:v31 withOverrides:1.0];
    v30 = v32;
  }

  *(a2 + 112) = v30;
}

@end