@interface LayoutConstants
@end

@implementation LayoutConstants

double ___LayoutConstants_block_invoke(uint64_t a1, void *a2)
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
    v5 = ___LayoutConstants_block_invoke_2(_block_invoke___previousCLKDeviceVersion_0, v2);
    _block_invoke_value_0 = v5;
    _block_invoke_value_1 = v6;
    _block_invoke_value_2 = v7;
    _block_invoke_value_3 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_0);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:18.0 forSizeClass:19.5];
  v4 = v3;
  [v2 scaledValue:17.0];
  [v2 scaledValue:15.5];
  [v2 scaledValue:62.0];

  return v4;
}

void ___LayoutConstants_block_invoke_0(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_4);
  if (_block_invoke___cachedDevice_4)
  {
    v3 = _block_invoke___cachedDevice_4 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_4))
  {
    _block_invoke___cachedDevice_4 = v7;
    _block_invoke___previousCLKDeviceVersion_4 = [v7 version];
    ___LayoutConstants_block_invoke_2_0(v7, v8);
    _block_invoke_value_3 = v8[0];
    unk_27DA2DEE0 = v8[1];
    xmmword_27DA2DEF0 = v8[2];
    unk_27DA2DF00 = v8[3];
  }

  v5 = unk_27DA2DEE0;
  *a2 = _block_invoke_value_3;
  a2[1] = v5;
  v6 = unk_27DA2DF00;
  a2[2] = xmmword_27DA2DEF0;
  a2[3] = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_4);
}

void ___LayoutConstants_block_invoke_2_0(uint64_t a1@<X1>, void *a2@<X8>)
{
  v25[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v24[0] = &unk_284181A80;
  v24[1] = &unk_284181A98;
  v25[0] = &unk_284186B18;
  v25[1] = &unk_284186B28;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v3 scaledValue:v4 withOverrides:16.5];
  *a2 = v5;

  [v3 scaledValue:0 withOverride:13.5 forSizeClass:12.0];
  a2[1] = v6;
  v22[0] = &unk_284181A80;
  v22[1] = &unk_284181A98;
  v23[0] = &unk_284186B38;
  v23[1] = &unk_284186B48;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 scaledValue:v7 withOverrides:19.5];
  a2[2] = v8;

  v20[0] = &unk_284181A80;
  v20[1] = &unk_284181AB0;
  v21[0] = &unk_284186B58;
  v21[1] = &unk_284186B58;
  v20[2] = &unk_284181AC8;
  v21[2] = &unk_284186B58;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  [v3 scaledValue:v9 withOverrides:2.0];
  a2[3] = v10;

  v18[0] = &unk_284181A80;
  v18[1] = &unk_284181A98;
  v19[0] = &unk_284186B68;
  v19[1] = &unk_284186B78;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:2];
  [v3 scaledValue:v11 withOverrides:4.5];
  a2[4] = v12;

  a2[5] = 0x4020000000000000;
  v16[0] = &unk_284181A80;
  v16[1] = &unk_284181A98;
  v17[0] = &unk_284186B88;
  v17[1] = &unk_284186B98;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:2];
  [v3 scaledValue:v13 withOverrides:17.0];
  v15 = v14;

  a2[6] = v15;
  a2[7] = v15;
}

void ___LayoutConstants_block_invoke_1(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_5);
  if (_block_invoke___cachedDevice_5)
  {
    v3 = _block_invoke___cachedDevice_5 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != _block_invoke___previousCLKDeviceVersion_5))
  {
    _block_invoke___cachedDevice_5 = v8;
    _block_invoke___previousCLKDeviceVersion_5 = [v8 version];
    ___LayoutConstants_block_invoke_2_1(v8, v9);
    xmmword_27DA2DF98 = v9[2];
    unk_27DA2DFA8 = v9[3];
    xmmword_27DA2DFB8 = v9[4];
    unk_27DA2DFC8 = v9[5];
    _block_invoke_value_4 = v9[0];
    unk_27DA2DF88 = v9[1];
  }

  v5 = unk_27DA2DFA8;
  a2[2] = xmmword_27DA2DF98;
  a2[3] = v5;
  v6 = unk_27DA2DFC8;
  a2[4] = xmmword_27DA2DFB8;
  a2[5] = v6;
  v7 = unk_27DA2DF88;
  *a2 = _block_invoke_value_4;
  a2[1] = v7;
  os_unfair_lock_unlock(&_block_invoke_lock_5);
}

void ___LayoutConstants_block_invoke_2_1(uint64_t a1@<X1>, void *a2@<X8>)
{
  v34[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:11.0];
  a2[4] = v4;
  [v3 scaledValue:9.0];
  a2[6] = v5;
  v33[0] = &unk_284181B88;
  v33[1] = &unk_284181BA0;
  v34[0] = &unk_284186BA8;
  v34[1] = &unk_284186BA8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
  [v3 scaledValue:v6 withOverrides:4.0];
  a2[7] = v7;

  v31[0] = &unk_284181B88;
  v31[1] = &unk_284181BA0;
  v32[0] = &unk_284186BB8;
  v32[1] = &unk_284186BC8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v3 scaledValue:v8 withOverrides:19.5];
  *a2 = v9;

  v29[0] = &unk_284181B88;
  v29[1] = &unk_284181BA0;
  v30[0] = &unk_284186BD8;
  v30[1] = &unk_284186BE8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v3 scaledValue:v10 withOverrides:19.5];
  a2[1] = v11;

  v27[0] = &unk_284181B88;
  v27[1] = &unk_284181BA0;
  v28[0] = &unk_284186BD8;
  v28[1] = &unk_284186BE8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v3 scaledValue:v12 withOverrides:19.5];
  a2[5] = v13;

  v25[0] = &unk_284181B88;
  v25[1] = &unk_284181BA0;
  v26[0] = &unk_284186BF8;
  v26[1] = &unk_284186C08;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v3 scaledValue:v14 withOverrides:16.5];
  a2[2] = v15;

  v23[0] = &unk_284181B88;
  v23[1] = &unk_284181BA0;
  v24[0] = &unk_284186C18;
  v24[1] = &unk_284186C28;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v3 scaledValue:v16 withOverrides:7.5];
  a2[3] = v17;

  v21[0] = &unk_284181B88;
  v21[1] = &unk_284181BB8;
  v22[0] = &unk_284186C38;
  v22[1] = &unk_284186C38;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v3 scaledValue:v18 withOverrides:8.5];
  v20 = v19;

  a2[8] = 0;
  a2[9] = v20;
  a2[10] = 0;
  a2[11] = v20;
}

void ___LayoutConstants_block_invoke_3(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&kTimeMarkerLabelLeftPadding_block_invoke_lock);
  if (kTimeMarkerLabelLeftPadding_block_invoke___cachedDevice)
  {
    v3 = kTimeMarkerLabelLeftPadding_block_invoke___cachedDevice == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != kTimeMarkerLabelLeftPadding_block_invoke___previousCLKDeviceVersion))
  {
    kTimeMarkerLabelLeftPadding_block_invoke___cachedDevice = v7;
    kTimeMarkerLabelLeftPadding_block_invoke___previousCLKDeviceVersion = [v7 version];
    ___LayoutConstants_block_invoke_2_2(v7, v8);
    xmmword_27DA2E068 = v8[2];
    unk_27DA2E078 = v8[3];
    xmmword_27DA2E088 = v8[4];
    qword_27DA2E098 = v9;
    kTimeMarkerLabelLeftPadding_block_invoke_value = v8[0];
    unk_27DA2E058 = v8[1];
  }

  v5 = unk_27DA2E078;
  *(a2 + 32) = xmmword_27DA2E068;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_27DA2E088;
  *(a2 + 80) = qword_27DA2E098;
  v6 = unk_27DA2E058;
  *a2 = kTimeMarkerLabelLeftPadding_block_invoke_value;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&kTimeMarkerLabelLeftPadding_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_2(uint64_t a1@<X1>, void *a2@<X8>)
{
  v14 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  if (CLKLanguageIsTallScript())
  {
    [v14 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  }

  else
  {
    [v14 scaledValue:15.0];
  }

  *a2 = v3;
  [v14 scaledValue:10.5];
  a2[1] = v4;
  [v14 scaledValue:9.5];
  a2[2] = v5;
  [v14 scaledValue:3 withOverride:22.5 forSizeClass:25.5];
  a2[3] = v6;
  [v14 scaledValue:9.5];
  a2[4] = v7;
  [v14 scaledValue:3 withOverride:33.5 forSizeClass:38.0];
  a2[5] = v8;
  [v14 scaledValue:9.5];
  a2[6] = v9;
  [v14 scaledValue:3 withOverride:3.5 forSizeClass:4.0];
  a2[7] = v10;
  [v14 scaledValue:3 withOverride:2.0 forSizeClass:2.5];
  a2[8] = v11;
  [v14 scaledValue:3 withOverride:133.5 forSizeClass:151.0];
  a2[9] = v12;
  [v14 scaledValue:3 withOverride:50.0 forSizeClass:57.0];
  a2[10] = v13;
}

double ___LayoutConstants_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_6);
  if (_block_invoke___cachedDevice_6)
  {
    v3 = _block_invoke___cachedDevice_6 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_6))
  {
    v5 = _block_invoke_value_0_0;
  }

  else
  {
    _block_invoke___cachedDevice_6 = v2;
    _block_invoke___previousCLKDeviceVersion_6 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_3(_block_invoke___previousCLKDeviceVersion_6, v2);
    _block_invoke_value_0_0 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_6);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_3(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3.0];
  v4 = v3;

  return v4;
}

void ___LayoutConstants_block_invoke_5(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_7);
  if (_block_invoke___cachedDevice_7)
  {
    v3 = _block_invoke___cachedDevice_7 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != _block_invoke___previousCLKDeviceVersion_7))
  {
    _block_invoke___cachedDevice_7 = v5;
    _block_invoke___previousCLKDeviceVersion_7 = [v5 version];
    ___LayoutConstants_block_invoke_2_4(v5, __src);
    memcpy(&_block_invoke_value_5, __src, 0x108uLL);
  }

  memcpy(a2, &_block_invoke_value_5, 0x108uLL);
  os_unfair_lock_unlock(&_block_invoke_lock_7);
}

void ___LayoutConstants_block_invoke_2_4(void *a1@<X1>, uint64_t a2@<X8>)
{
  v139[3] = *MEMORY[0x277D85DE8];
  *(a2 + 256) = 0;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 112) = 0u;
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  *a2 = xmmword_22DCE7A70;
  *(a2 + 16) = 0;
  *(a2 + 104) = 0x4008000000000000;
  v138[0] = &unk_284181D20;
  v138[1] = &unk_284181C78;
  v139[0] = &unk_284186C48;
  v139[1] = &unk_284186C58;
  v138[2] = &unk_284181D38;
  v139[2] = &unk_284186C68;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v139 forKeys:v138 count:3];
  [v5 scaledValue:v6 withOverrides:73.0];
  *(a2 + 24) = v7;

  v136[0] = &unk_284181D20;
  v136[1] = &unk_284181C78;
  v137[0] = &unk_284186C78;
  v137[1] = &unk_284186C88;
  v136[2] = &unk_284181D38;
  v137[2] = &unk_284186C98;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:3];
  [v5 scaledValue:v8 withOverrides:151.0];
  *(a2 + 32) = v9;

  v134[0] = &unk_284181D20;
  v134[1] = &unk_284181C78;
  v135[0] = &unk_284186CA8;
  v135[1] = &unk_284186CA8;
  v134[2] = &unk_284181CA8;
  v134[3] = &unk_284181D38;
  v135[2] = &unk_284186CB8;
  v135[3] = &unk_284186CB8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];
  [v5 scaledValue:v10 withOverrides:2.0];
  *(a2 + 40) = v11;

  v132[0] = &unk_284181D38;
  v132[1] = &unk_284181D50;
  v133[0] = &unk_284186CB8;
  v133[1] = &unk_284186CA8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:2];
  [v5 scaledValue:v12 withOverrides:2.0];
  *(a2 + 48) = v13;

  v130[0] = &unk_284181CA8;
  v130[1] = &unk_284181D38;
  v131[0] = &unk_284186CC8;
  v131[1] = &unk_284186CD8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:2];
  [v5 constantValue:v14 withOverrides:0.0];

  [v5 scaledValue:3 withOverride:2.0 forSizeClass:2.0];
  [v4 screenBounds];
  v16 = v15 * 0.5;
  [v5 scaledValue:83.0];
  *(a2 + 56) = v16 - v17;
  [v4 screenBounds];
  v19 = v18;

  [v5 scaledValue:96.5];
  *(a2 + 64) = v19 * 0.5 - v20;
  [v5 scaledValue:12.5];
  *(a2 + 80) = v21;
  [v5 scaledValue:5.0];
  *(a2 + 88) = v22;
  v128[0] = &unk_284181D20;
  v128[1] = &unk_284181C78;
  v129[0] = &unk_284186CA8;
  v129[1] = &unk_284186CA8;
  v128[2] = &unk_284181D38;
  v129[2] = &unk_284186CE8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v129 forKeys:v128 count:3];
  [v5 scaledValue:v23 withOverrides:157.0];
  *(a2 + 72) = v24;

  [v5 scaledValue:3 withOverride:10.0 forSizeClass:14.0];
  *(a2 + 96) = v25;
  v126[0] = &unk_284181D20;
  v126[1] = &unk_284181C78;
  v127[0] = &unk_284186CF8;
  v127[1] = &unk_284186D08;
  v126[2] = &unk_284181D38;
  v127[2] = &unk_284186D18;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:3];
  [v5 scaledValue:v26 withOverrides:150.0];
  *(a2 + 144) = v27;

  v124[0] = &unk_284181CD8;
  v124[1] = &unk_284181D68;
  v125[0] = &unk_284186D28;
  v125[1] = &unk_284186D38;
  v124[2] = &unk_284181D50;
  v124[3] = &unk_284181D80;
  v125[2] = &unk_284186D48;
  v125[3] = &unk_284186D58;
  v124[4] = &unk_284181D08;
  v125[4] = &unk_284186D68;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:5];
  [v5 scaledValue:v28 withOverrides:1.5];
  *(a2 + 168) = v29;

  *(a2 + 176) = 0x400C000000000000;
  v123[0] = &unk_284186D78;
  v123[1] = &unk_284186D88;
  v122[0] = &unk_284181D20;
  v122[1] = &unk_284181C78;
  v123[2] = &unk_284186D98;
  v123[3] = &unk_284186DA8;
  v122[2] = &unk_284181D38;
  v122[3] = &unk_284181CD8;
  v122[4] = &unk_284181D68;
  v122[5] = &unk_284181D50;
  v123[4] = &unk_284186DB8;
  v123[5] = &unk_284186DB8;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:6];
  [v5 scaledValue:v30 withOverrides:16.5];
  *(a2 + 112) = v31;

  v121[0] = &unk_284186DC8;
  v121[1] = &unk_284186DD8;
  v120[0] = &unk_284181D20;
  v120[1] = &unk_284181C78;
  v121[2] = &unk_284186DE8;
  v121[3] = &unk_284186DF8;
  v120[2] = &unk_284181D38;
  v120[3] = &unk_284181CD8;
  v121[4] = &unk_284186E08;
  v121[5] = &unk_284186E08;
  v120[4] = &unk_284181D68;
  v120[5] = &unk_284181D50;
  v120[6] = &unk_284181D80;
  v120[7] = &unk_284181D08;
  v121[6] = &unk_284186E18;
  v121[7] = &unk_284186C68;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:8];
  [v5 scaledValue:v32 withOverrides:65.5];
  *(a2 + 120) = v33;

  v118[0] = &unk_284181D20;
  v118[1] = &unk_284181C78;
  v119[0] = &unk_284186E28;
  v119[1] = &unk_284186E38;
  v119[2] = &unk_284186E48;
  v118[2] = &unk_284181D38;
  v118[3] = &unk_284181CD8;
  v34 = [MEMORY[0x277CCABB0] numberWithDouble:-70.0];
  v119[3] = v34;
  v118[4] = &unk_284181D68;
  v35 = [MEMORY[0x277CCABB0] numberWithDouble:-81.5];
  v119[4] = v35;
  v118[5] = &unk_284181D50;
  v36 = [MEMORY[0x277CCABB0] numberWithDouble:-81.5];
  v119[5] = v36;
  v118[6] = &unk_284181D80;
  v37 = [MEMORY[0x277CCABB0] numberWithDouble:-83.0];
  v119[6] = v37;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:7];
  [v5 scaledValue:v38 withOverrides:-64.5];
  *(a2 + 128) = v39;

  v116[0] = &unk_284181D20;
  v116[1] = &unk_284181C78;
  v117[0] = &unk_284186E58;
  v117[1] = &unk_284186E58;
  v117[2] = &unk_284186E68;
  v116[2] = &unk_284181D38;
  v116[3] = &unk_284181CD8;
  v40 = [MEMORY[0x277CCABB0] numberWithDouble:-14.0];
  v117[3] = v40;
  v116[4] = &unk_284181D68;
  v41 = [MEMORY[0x277CCABB0] numberWithDouble:-19.5];
  v117[4] = v41;
  v116[5] = &unk_284181D50;
  v42 = [MEMORY[0x277CCABB0] numberWithDouble:-19.5];
  v117[5] = v42;
  v116[6] = &unk_284181D80;
  v43 = [MEMORY[0x277CCABB0] numberWithDouble:-22.0];
  v117[6] = v43;
  v116[7] = &unk_284181D08;
  v44 = [MEMORY[0x277CCABB0] numberWithDouble:-15.0];
  v117[7] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:8];
  [v5 scaledValue:v45 withOverrides:-15.5];
  *(a2 + 136) = v46;

  v114[0] = &unk_284181D20;
  v114[1] = &unk_284181C78;
  v115[0] = &unk_284186CA8;
  v115[1] = &unk_284186CA8;
  v115[2] = &unk_284186E68;
  v114[2] = &unk_284181D38;
  v114[3] = &unk_284181CD8;
  v47 = *(a2 + 176);
  v48 = [MEMORY[0x277CCABB0] numberWithDouble:v47 + -17.5];
  v115[3] = v48;
  v114[4] = &unk_284181D68;
  v49 = [MEMORY[0x277CCABB0] numberWithDouble:v47 + -23.0];
  v115[4] = v49;
  v114[5] = &unk_284181D50;
  v50 = [MEMORY[0x277CCABB0] numberWithDouble:v47 + -23.0];
  v115[5] = v50;
  v114[6] = &unk_284181D80;
  v51 = [MEMORY[0x277CCABB0] numberWithDouble:v47 + -22.0];
  v115[6] = v51;
  v114[7] = &unk_284181D08;
  v52 = [MEMORY[0x277CCABB0] numberWithDouble:v47 + -19.0];
  v115[7] = v52;
  v53 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:8];
  [v5 scaledValue:v53 withOverrides:-15.5];
  *(a2 + 160) = v54;

  v112[0] = &unk_284181D20;
  v112[1] = &unk_284181D38;
  v113[0] = &unk_284186D38;
  v113[1] = &unk_284186E78;
  v112[2] = &unk_284181CD8;
  v112[3] = &unk_284181D68;
  v113[2] = &unk_284186E88;
  v113[3] = &unk_284186E98;
  v112[4] = &unk_284181D50;
  v113[4] = &unk_284186E98;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:5];
  [v5 scaledValue:v55 withOverrides:11.0];
  *(a2 + 152) = v56;

  v110[0] = &unk_284181D20;
  v110[1] = &unk_284181C78;
  v111[0] = &unk_284186CA8;
  v111[1] = &unk_284186CA8;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v111 forKeys:v110 count:2];
  [v5 scaledValue:v57 withOverrides:12.5];
  *(a2 + 200) = v58;

  v108[0] = &unk_284181D20;
  v108[1] = &unk_284181C78;
  v109[0] = &unk_284186CA8;
  v109[1] = &unk_284186CA8;
  v59 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:2];
  [v5 scaledValue:v59 withOverrides:2.0];
  *(a2 + 184) = v60;

  v106[0] = &unk_284181D20;
  v106[1] = &unk_284181C78;
  v107[0] = &unk_284186CA8;
  v107[1] = &unk_284186CA8;
  v107[2] = &unk_284186EA8;
  v107[3] = &unk_284186EB8;
  v106[2] = &unk_284181D38;
  v106[3] = &unk_284181CD8;
  v106[4] = &unk_284181D68;
  v106[5] = &unk_284181D50;
  v107[4] = &unk_284186EC8;
  v107[5] = &unk_284186EC8;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:6];
  [v5 scaledValue:v61 withOverrides:3.0];
  *(a2 + 192) = v62;

  v104[0] = &unk_284181D20;
  v104[1] = &unk_284181C78;
  v105[0] = &unk_284186CA8;
  v105[1] = &unk_284186CA8;
  v63 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v105 forKeys:v104 count:2];
  [v5 scaledValue:v63 withOverrides:37.5];
  *(a2 + 208) = v64;

  v102[0] = &unk_284181D20;
  v102[1] = &unk_284181C78;
  v103[0] = &unk_284186CA8;
  v103[1] = &unk_284186CA8;
  v102[2] = &unk_284181CD8;
  v102[3] = &unk_284181D68;
  v103[2] = &unk_284186ED8;
  v103[3] = &unk_284186EE8;
  v102[4] = &unk_284181D50;
  v102[5] = &unk_284181D80;
  v103[4] = &unk_284186EE8;
  v103[5] = &unk_284186D58;
  v102[6] = &unk_284181D08;
  v103[6] = &unk_284186EF8;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:7];
  [v5 scaledValue:v65 withOverrides:1.0];
  *(a2 + 216) = v66;

  v100[0] = &unk_284181D20;
  v100[1] = &unk_284181C78;
  v101[0] = &unk_284186EA8;
  v101[1] = &unk_284186EA8;
  v100[2] = &unk_284181D38;
  v100[3] = &unk_284181CD8;
  v101[2] = &unk_284186F08;
  v101[3] = &unk_284186F08;
  v100[4] = &unk_284181D68;
  v100[5] = &unk_284181D50;
  v101[4] = &unk_284186F08;
  v101[5] = &unk_284186F08;
  v67 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:6];
  [v5 scaledValue:v67 withOverrides:10.0];
  *(a2 + 224) = v68;

  v98[0] = &unk_284181D20;
  __asm { FMOV            V0.2D, #1.5 }

  v89 = _Q0;
  v97 = _Q0;
  v74 = [MEMORY[0x277CCAE60] valueWithBytes:&v97 objCType:"{CGSize=dd}"];
  v99[0] = v74;
  v98[1] = &unk_284181C78;
  v96 = v89;
  v75 = [MEMORY[0x277CCAE60] valueWithBytes:&v96 objCType:"{CGSize=dd}"];
  v99[1] = v75;
  v98[2] = &unk_284181CA8;
  __asm { FMOV            V0.2D, #11.5 }

  v95 = _Q0;
  v77 = [MEMORY[0x277CCAE60] valueWithBytes:&v95 objCType:"{CGSize=dd}"];
  v99[2] = v77;
  v98[3] = &unk_284181D38;
  __asm { FMOV            V0.2D, #16.0 }

  v94 = _Q0;
  v79 = [MEMORY[0x277CCAE60] valueWithBytes:&v94 objCType:"{CGSize=dd}"];
  v99[3] = v79;
  v98[4] = &unk_284181CD8;
  __asm { FMOV            V0.2D, #15.0 }

  v93 = _Q0;
  v81 = [MEMORY[0x277CCAE60] valueWithBytes:&v93 objCType:"{CGSize=dd}"];
  v99[4] = v81;
  v98[5] = &unk_284181D68;
  __asm { FMOV            V0.2D, #17.0 }

  v90 = _Q0;
  v92 = _Q0;
  v83 = [MEMORY[0x277CCAE60] valueWithBytes:&v92 objCType:"{CGSize=dd}"];
  v99[5] = v83;
  v98[6] = &unk_284181D50;
  v91 = v90;
  v84 = [MEMORY[0x277CCAE60] valueWithBytes:&v91 objCType:"{CGSize=dd}"];
  v99[6] = v84;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:7];
  [v5 constantSize:v85 withOverrides:{*MEMORY[0x277CBF3A8], *(MEMORY[0x277CBF3A8] + 8)}];
  *(a2 + 232) = v86;
  *(a2 + 240) = v87;

  __asm { FMOV            V0.2D, #-2.0 }

  *(a2 + 248) = _Q0;
}

double ___LayoutConstants_block_invoke_6(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_8);
  if (_block_invoke___cachedDevice_8)
  {
    v3 = _block_invoke___cachedDevice_8 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_8))
  {
    v5 = *&_block_invoke_value_0_1;
  }

  else
  {
    _block_invoke___cachedDevice_8 = v2;
    _block_invoke___previousCLKDeviceVersion_8 = [v2 version];
    v5 = NTKWhistlerSubdialComplicationDistanceFromCenter(v2);
    _block_invoke_value_0_1 = *&v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_8);

  return v5;
}

void ___LayoutConstants_block_invoke_7(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_9);
  if (_block_invoke___cachedDevice_9)
  {
    v3 = _block_invoke___cachedDevice_9 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_9))
  {
    _block_invoke___cachedDevice_9 = v7;
    _block_invoke___previousCLKDeviceVersion_9 = [v7 version];
    ___LayoutConstants_block_invoke_2_5(v7, v8);
    xmmword_27DA2E2E0 = v8[2];
    unk_27DA2E2F0 = v8[3];
    xmmword_27DA2E300 = v8[4];
    qword_27DA2E310 = v9;
    _block_invoke_value_6 = v8[0];
    *algn_27DA2E2D0 = v8[1];
  }

  v5 = unk_27DA2E2F0;
  *(a2 + 32) = xmmword_27DA2E2E0;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_27DA2E300;
  *(a2 + 80) = qword_27DA2E310;
  v6 = *algn_27DA2E2D0;
  *a2 = _block_invoke_value_6;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_9);
}

void ___LayoutConstants_block_invoke_2_5(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v44[2] = *MEMORY[0x277D85DE8];
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:0 withOverride:120.0 forSizeClass:103.0];
  *a2 = v4;
  v43[0] = &unk_284181EE8;
  v43[1] = &unk_284181F00;
  v44[0] = &unk_284186FD8;
  v44[1] = &unk_284186FE8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:2];
  [v3 scaledValue:v5 withOverrides:116.0];
  *(a2 + 8) = v6;

  v41[0] = &unk_284181EE8;
  v41[1] = &unk_284181F18;
  v42[0] = &unk_284186FF8;
  v42[1] = &unk_284187008;
  v41[2] = &unk_284181F00;
  v41[3] = &unk_284181F30;
  v42[2] = &unk_284187018;
  v42[3] = &unk_284187018;
  v41[4] = &unk_284181F48;
  v41[5] = &unk_284181F60;
  v42[4] = &unk_284187028;
  v42[5] = &unk_284187038;
  v41[6] = &unk_284181F78;
  v41[7] = &unk_284181F90;
  v42[6] = &unk_284187018;
  v42[7] = &unk_284187048;
  v41[8] = &unk_284181FA8;
  v42[8] = &unk_284187038;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:9];
  [v3 scaledValue:v7 withOverrides:4.0];
  *(a2 + 16) = v8;

  v39[0] = &unk_284181EE8;
  v39[1] = &unk_284181F00;
  v40[0] = &unk_284187058;
  v40[1] = &unk_284186F18;
  v39[2] = &unk_284181F30;
  v39[3] = &unk_284181F48;
  v40[2] = &unk_284187068;
  v40[3] = &unk_284186F18;
  v39[4] = &unk_284181F60;
  v39[5] = &unk_284181F78;
  v40[4] = &unk_284187078;
  v40[5] = &unk_284187088;
  v39[6] = &unk_284181F90;
  v39[7] = &unk_284181FA8;
  v40[6] = &unk_284187088;
  v40[7] = &unk_284187078;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:8];
  [v3 scaledValue:v9 withOverrides:-1.5];
  *(a2 + 24) = v10;

  v37[0] = &unk_284181EE8;
  v37[1] = &unk_284181F00;
  v38[0] = &unk_284187098;
  v38[1] = &unk_2841870A8;
  v37[2] = &unk_284181F48;
  v37[3] = &unk_284181F60;
  v38[2] = &unk_2841870A8;
  v38[3] = &unk_2841870B8;
  v37[4] = &unk_284181F78;
  v37[5] = &unk_284181F90;
  v38[4] = &unk_284187058;
  v38[5] = &unk_2841870A8;
  v37[6] = &unk_284181FA8;
  v38[6] = &unk_2841870C8;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:7];
  [v3 scaledValue:v11 withOverrides:-4.0];
  *(a2 + 32) = v12;

  v35[0] = &unk_284181EE8;
  v35[1] = &unk_284181F18;
  v35[2] = &unk_284181F00;
  v36[0] = &unk_284187018;
  v36[1] = &unk_2841870D8;
  v36[2] = &unk_284187008;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [v3 scaledValue:v13 withOverrides:5.5];
  *(a2 + 40) = v14;

  v33[0] = &unk_284181EE8;
  v33[1] = &unk_284181F18;
  v34[0] = &unk_284187018;
  v34[1] = &unk_2841870D8;
  v33[2] = &unk_284181F00;
  v34[2] = &unk_284187008;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [v3 scaledValue:v15 withOverrides:0.5];
  *(a2 + 48) = v16;

  v31[0] = &unk_284181EE8;
  v31[1] = &unk_284181F18;
  v32[0] = &unk_2841870E8;
  v32[1] = &unk_2841870F8;
  v31[2] = &unk_284181F00;
  v32[2] = &unk_284187108;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [v3 scaledValue:v17 withOverrides:0.0];
  *(a2 + 56) = v18;

  v29[0] = &unk_284181EE8;
  v29[1] = &unk_284181F18;
  v30[0] = &unk_284187118;
  v30[1] = &unk_284187098;
  v29[2] = &unk_284181F00;
  v30[2] = &unk_2841870B8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
  [v3 scaledValue:v19 withOverrides:-5.5];
  *(a2 + 64) = v20;

  v27[0] = &unk_284181EE8;
  v27[1] = &unk_284181F00;
  v28[0] = &unk_284187018;
  v28[1] = &unk_284187088;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v3 scaledValue:v21 withOverrides:5.0];
  *(a2 + 72) = v22;

  v25[0] = &unk_284181EE8;
  v25[1] = &unk_284181F18;
  v26[0] = &unk_284187018;
  v26[1] = &unk_284187088;
  v25[2] = &unk_284181F00;
  v26[2] = &unk_284187128;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:3];
  [v3 scaledValue:v23 withOverrides:1.0];
  *(a2 + 80) = v24;
}

double ___LayoutConstants_block_invoke_8(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_11);
  if (_block_invoke___cachedDevice_11)
  {
    v3 = _block_invoke___cachedDevice_11 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_11))
  {
    v5 = _block_invoke_value_0_2;
  }

  else
  {
    _block_invoke___cachedDevice_11 = v2;
    _block_invoke___previousCLKDeviceVersion_11 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_6(_block_invoke___previousCLKDeviceVersion_11, v2);
    _block_invoke_value_0_2 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_11);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_6(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284182140;
  v7[1] = &unk_284182188;
  v8[0] = &unk_284187148;
  v8[1] = &unk_284187158;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:21.0];
  v5 = v4;

  return v5;
}

double ___LayoutConstants_block_invoke_9(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_12);
  if (_block_invoke___cachedDevice_12)
  {
    v3 = _block_invoke___cachedDevice_12 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_12))
  {
    v5 = _block_invoke_value_0_3;
  }

  else
  {
    _block_invoke___cachedDevice_12 = v2;
    _block_invoke___previousCLKDeviceVersion_12 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_7(_block_invoke___previousCLKDeviceVersion_12, v2);
    _block_invoke_value_0_3 = v5;
    _block_invoke_value_1_0 = v6;
    _block_invoke_value_2_0 = v7;
    _block_invoke_value_3_0 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_12);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_7(uint64_t a1, void *a2)
{
  v2 = a2;
  CLKValueForLuxoDeviceMetrics();
  v4 = v3;
  CLKValueForLuxoDeviceMetrics();
  CLKValueForLuxoDeviceMetrics();
  CLKValueForLuxoDeviceMetrics();

  return v4;
}

void ___LayoutConstants_block_invoke_10(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_13);
  if (_block_invoke___cachedDevice_13)
  {
    v3 = _block_invoke___cachedDevice_13 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != _block_invoke___previousCLKDeviceVersion_13))
  {
    _block_invoke___cachedDevice_13 = v8;
    _block_invoke___previousCLKDeviceVersion_13 = [v8 version];
    ___LayoutConstants_block_invoke_2_8(v8, v9);
    xmmword_27DA2E468 = v9[4];
    unk_27DA2E478 = v9[5];
    qword_27DA2E488 = v10;
    _block_invoke_value_8 = v9[0];
    unk_27DA2E438 = v9[1];
    xmmword_27DA2E448 = v9[2];
    unk_27DA2E458 = v9[3];
  }

  v5 = unk_27DA2E478;
  *(a2 + 64) = xmmword_27DA2E468;
  *(a2 + 80) = v5;
  *(a2 + 96) = qword_27DA2E488;
  v6 = unk_27DA2E438;
  *a2 = _block_invoke_value_8;
  *(a2 + 16) = v6;
  v7 = unk_27DA2E458;
  *(a2 + 32) = xmmword_27DA2E448;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&_block_invoke_lock_13);
}

void ___LayoutConstants_block_invoke_2_8(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v33[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v32[0] = &unk_2841821A0;
  v32[1] = &unk_2841821B8;
  v33[0] = &unk_284187168;
  v33[1] = &unk_284187178;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v3 scaledValue:v4 withOverrides:56.0];
  v6 = v5;
  *a2 = v5;

  v30[0] = &unk_2841821A0;
  v30[1] = &unk_2841821B8;
  v31[0] = &unk_284187188;
  v31[1] = &unk_284187198;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v3 scaledValue:v7 withOverrides:15.0];
  *(a2 + 8) = v8;

  [v3 scaledValue:3 withOverride:3.0 forSizeClass:4.0];
  *(a2 + 16) = v9;
  v28[0] = &unk_2841821A0;
  v28[1] = &unk_2841821B8;
  v29[0] = &unk_2841871A8;
  v29[1] = &unk_2841871B8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v3 scaledValue:v10 withOverrides:48.5];
  *(a2 + 24) = v6 + v11;

  v26[0] = &unk_2841821A0;
  v26[1] = &unk_2841821B8;
  v27[0] = &unk_2841871C8;
  v27[1] = &unk_2841871D8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v3 scaledValue:v12 withOverrides:16.0];
  v14 = v13;
  *(a2 + 32) = v13;

  *(a2 + 40) = v14 + -3.0;
  [v3 scaledValue:0 withOverride:4.0 forSizeClass:3.0];
  *(a2 + 48) = v15;
  v24[0] = &unk_2841821A0;
  v24[1] = &unk_2841821B8;
  v25[0] = &unk_2841871E8;
  v25[1] = &unk_2841871F8;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v3 scaledValue:v16 withOverrides:53.0];
  *(a2 + 96) = v17;

  [v3 scaledValue:0 withOverride:2.5 forSizeClass:2.0];
  *(a2 + 56) = v18;
  v22[0] = &unk_2841821A0;
  v22[1] = &unk_2841821B8;
  v23[0] = &unk_284187208;
  v23[1] = &unk_284187198;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 scaledValue:v19 withOverrides:16.0];
  *(a2 + 64) = v20;

  *(a2 + 72) = 0x4008000000000000;
  [v3 scaledValue:3 withOverride:188.0 forSizeClass:213.0];
  *(a2 + 80) = v21;
  *(a2 + 88) = 0x4049000000000000;
}

void ___LayoutConstants_block_invoke_11(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_14);
  if (_block_invoke___cachedDevice_14)
  {
    v3 = _block_invoke___cachedDevice_14 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_14))
  {
    _block_invoke___cachedDevice_14 = v6;
    _block_invoke___previousCLKDeviceVersion_14 = [v6 version];
    ___LayoutConstants_block_invoke_2_9(v6, v7);
    _block_invoke_value_9 = v7[0];
    unk_27DA2E4B8 = v7[1];
    xmmword_27DA2E4C8 = v7[2];
  }

  v5 = unk_27DA2E4B8;
  *a2 = _block_invoke_value_9;
  a2[1] = v5;
  a2[2] = xmmword_27DA2E4C8;
  os_unfair_lock_unlock(&_block_invoke_lock_14);
}

void ___LayoutConstants_block_invoke_2_9(void *a1@<X1>, double *a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v13 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v13 scaledValue:4.0];
  v6 = v5;
  [v13 scaledValue:29.0];
  v8 = v7;
  [v13 scaledValue:9 withOverride:18.0 forSizeClass:21.0];
  v10 = v9;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v12 = v11;

  *a2 = v6;
  a2[1] = v8;
  a2[2] = v10;
  a2[3] = v6 * v12;
  a2[4] = v8 * v12;
  a2[5] = v10 * v12;
}

double ___LayoutConstants_block_invoke_12(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_16);
  if (_block_invoke___cachedDevice_16)
  {
    v3 = _block_invoke___cachedDevice_16 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_16))
  {
    v5 = _block_invoke_value_0_4;
  }

  else
  {
    _block_invoke___cachedDevice_16 = v2;
    _block_invoke___previousCLKDeviceVersion_16 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_10(_block_invoke___previousCLKDeviceVersion_16, v2);
    _block_invoke_value_0_4 = v5;
    _block_invoke_value_1_1 = v6;
    _block_invoke_value_2_1 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_16);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_10(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:19.5];
  v4 = v3;
  [v2 scaledValue:9 withOverride:16.0 forSizeClass:19.0];

  return v4;
}

double ___LayoutConstants_block_invoke_13(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_17);
  if (_block_invoke___cachedDevice_17)
  {
    v3 = _block_invoke___cachedDevice_17 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_17))
  {
    v5 = _block_invoke_value_0_5;
  }

  else
  {
    _block_invoke___cachedDevice_17 = v2;
    _block_invoke___previousCLKDeviceVersion_17 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_11(_block_invoke___previousCLKDeviceVersion_17, v2);
    _block_invoke_value_0_5 = v5;
    _block_invoke_value_1_2 = v6;
    _block_invoke_value_2_2 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_17);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_11(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v13[0] = &unk_2841823E0;
  v13[1] = &unk_284182410;
  v14[0] = &unk_2841823F8;
  v14[1] = &unk_2841823F8;
  v13[2] = &unk_284182428;
  v13[3] = &unk_284182440;
  v14[2] = &unk_2841823F8;
  v14[3] = &unk_2841823F8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v14 forKeys:v13 count:4];
  [v2 constantValue:v3 withOverrides:0.0];
  v5 = v4;

  v11[0] = &unk_2841823E0;
  v11[1] = &unk_284182410;
  v12[0] = &unk_284182458;
  v12[1] = &unk_284182458;
  v11[2] = &unk_284182428;
  v11[3] = &unk_284182440;
  v12[2] = &unk_284182458;
  v12[3] = &unk_284182458;
  v11[4] = &unk_284182470;
  v12[4] = &unk_284188248;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:5];
  [v2 scaledValue:v6 withOverrides:17.0];

  v9[0] = &unk_2841823E0;
  v9[1] = &unk_284182410;
  v10[0] = &unk_284188258;
  v10[1] = &unk_284188268;
  v9[2] = &unk_284182428;
  v9[3] = &unk_284182440;
  v10[2] = &unk_284188268;
  v10[3] = &unk_284188268;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v2 scaledValue:v7 withOverrides:45.5];

  return v5;
}

void ___LayoutConstants_block_invoke_14(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v12 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_18);
  if (_block_invoke___cachedDevice_18)
  {
    v3 = _block_invoke___cachedDevice_18 == v12;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v12 version], v4 != _block_invoke___previousCLKDeviceVersion_18))
  {
    _block_invoke___cachedDevice_18 = v12;
    _block_invoke___previousCLKDeviceVersion_18 = [v12 version];
    ___LayoutConstants_block_invoke_2_12(v12, v13);
    xmmword_27DA2E760 = v13[12];
    unk_27DA2E770 = v13[13];
    xmmword_27DA2E780 = v13[14];
    xmmword_27DA2E720 = v13[8];
    unk_27DA2E730 = v13[9];
    xmmword_27DA2E740 = v13[10];
    unk_27DA2E750 = v13[11];
    xmmword_27DA2E6E0 = v13[4];
    unk_27DA2E6F0 = v13[5];
    xmmword_27DA2E700 = v13[6];
    unk_27DA2E710 = v13[7];
    _block_invoke_value_11 = v13[0];
    *algn_27DA2E6B0 = v13[1];
    xmmword_27DA2E6C0 = v13[2];
    unk_27DA2E6D0 = v13[3];
  }

  v5 = unk_27DA2E770;
  a2[12] = xmmword_27DA2E760;
  a2[13] = v5;
  a2[14] = xmmword_27DA2E780;
  v6 = unk_27DA2E730;
  a2[8] = xmmword_27DA2E720;
  a2[9] = v6;
  v7 = unk_27DA2E750;
  a2[10] = xmmword_27DA2E740;
  a2[11] = v7;
  v8 = unk_27DA2E6F0;
  a2[4] = xmmword_27DA2E6E0;
  a2[5] = v8;
  v9 = unk_27DA2E710;
  a2[6] = xmmword_27DA2E700;
  a2[7] = v9;
  v10 = *algn_27DA2E6B0;
  *a2 = _block_invoke_value_11;
  a2[1] = v10;
  v11 = unk_27DA2E6D0;
  a2[2] = xmmword_27DA2E6C0;
  a2[3] = v11;
  os_unfair_lock_unlock(&_block_invoke_lock_18);
}

void ___LayoutConstants_block_invoke_2_12(uint64_t a1@<X1>, void *a2@<X8>)
{
  v37[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:3 forSizeClass:1.13580247];
  *a2 = 0x401C000000000000;
  [v3 scaledValue:3 withOverride:105.0 forSizeClass:120.0];
  a2[1] = v4;
  [v3 scaledValue:14.5];
  a2[2] = v5;
  [v3 scaledValue:57.0];
  a2[3] = v6;
  [v3 scaledValue:12.5];
  a2[4] = v7;
  [v3 scaledValue:3 withOverride:50.5 forSizeClass:57.0];
  a2[5] = v8;
  [v3 scaledValue:21.0];
  a2[6] = v9;
  [v3 scaledValue:20.5];
  a2[7] = v10;
  [v3 scaledValue:11.0];
  a2[8] = v11;
  [v3 scaledValue:3 withOverride:37.0 forSizeClass:42.5];
  a2[9] = v12;
  [v3 scaledValue:3 withOverride:66.0 forSizeClass:75.5];
  a2[10] = v13;
  [v3 scaledValue:76.0];
  a2[11] = v14;
  [v3 scaledValue:3 withOverride:42.0 forSizeClass:46.0];
  a2[12] = v15;
  [v3 scaledValue:3 withOverride:90.0 forSizeClass:99.0];
  a2[13] = v16;
  [v3 scaledValue:99.0];
  a2[14] = v17;
  [v3 scaledValue:3 withOverride:21.5 forSizeClass:26.5];
  a2[15] = v18;
  [v3 scaledValue:3 withOverride:17.0 forSizeClass:21.0];
  a2[16] = v19;
  [v3 scaledValue:3 withOverride:-15.0 forSizeClass:-17.5];
  a2[17] = v20;
  [v3 scaledValue:3 withOverride:12.0 forSizeClass:12.5];
  a2[18] = v21;
  [v3 scaledValue:3 withOverride:5.5 forSizeClass:6.5];
  a2[19] = v22;
  [v3 scaledValue:-17.0];
  a2[20] = v23;
  v36[0] = &unk_284182488;
  v36[1] = &unk_2841824A0;
  v37[0] = &unk_284188278;
  v37[1] = &unk_284188288;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v3 scaledValue:v24 withOverrides:32.5];
  a2[21] = v25;

  [v3 scaledValue:3 withOverride:45.0 forSizeClass:50.0];
  a2[22] = v26;
  v34 = &unk_2841824A0;
  v35 = &unk_284188298;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v35 forKeys:&v34 count:1];
  [v3 scaledValue:v27 withOverrides:96.5];
  a2[23] = v28;

  [v3 scaledValue:3 withOverride:45.0 forSizeClass:51.5];
  a2[24] = v29;
  [v3 scaledPoint:{49.5, 51.0}];
  a2[25] = v30;
  a2[26] = v31;
  [v3 scaledPoint:{60.0, 86.5}];
  a2[27] = v32;
  a2[28] = v33;
  a2[29] = 0xC01C000000000000;
}

double ___LayoutConstants_block_invoke_15(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_noServiceDotColorKey_block_invoke_lock);
  if (_noServiceDotColorKey_block_invoke___cachedDevice)
  {
    v3 = _noServiceDotColorKey_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _noServiceDotColorKey_block_invoke___previousCLKDeviceVersion))
  {
    v5 = *&_noServiceDotColorKey_block_invoke_value_0;
  }

  else
  {
    _noServiceDotColorKey_block_invoke___cachedDevice = v2;
    _noServiceDotColorKey_block_invoke___previousCLKDeviceVersion = [v2 version];
    CLKValueForDeviceMetrics();
    v5 = *&v6;
    _noServiceDotColorKey_block_invoke_value_0 = v6;
    _noServiceDotColorKey_block_invoke_value_1 = 0x4000000000000000;
    _noServiceDotColorKey_block_invoke_value_2 = 0x3FECCCCCCCCCCCCDLL;
    _noServiceDotColorKey_block_invoke_value_3 = 0x3FF8000000000000;
  }

  os_unfair_lock_unlock(&_noServiceDotColorKey_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_16(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke_lock);
  if (NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke___cachedDevice)
  {
    v3 = NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke___cachedDevice == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke___previousCLKDeviceVersion))
  {
    NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke___cachedDevice = v6;
    NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke___previousCLKDeviceVersion = [v6 version];
    ___LayoutConstants_block_invoke_2_13(v6, v7);
    NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke_value = v7[0];
    *algn_27DA2E870 = v7[1];
    xmmword_27DA2E880 = v7[2];
    qword_27DA2E890 = v8;
  }

  v5 = *algn_27DA2E870;
  *a2 = NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke_value;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27DA2E880;
  *(a2 + 48) = qword_27DA2E890;
  os_unfair_lock_unlock(&NTKDigitalTimeLabelStyleNarrowRightSideMargin_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_13(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v28[6] = *MEMORY[0x277D85DE8];
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v27[0] = &unk_284182728;
  v27[1] = &unk_284182740;
  v28[0] = &unk_2841882A8;
  v28[1] = &unk_2841882B8;
  v27[2] = &unk_284182758;
  v27[3] = &unk_284182770;
  v28[2] = &unk_2841882C8;
  v28[3] = &unk_2841882C8;
  v27[4] = &unk_284182788;
  v27[5] = &unk_2841827A0;
  v28[4] = &unk_2841882D8;
  v28[5] = &unk_2841882C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
  [v3 scaledValue:v4 withOverrides:41.5];
  *(a2 + 24) = v5;

  v25[0] = &unk_284182728;
  v25[1] = &unk_2841827B8;
  v26[0] = &unk_2841882E8;
  v26[1] = &unk_2841882F8;
  v25[2] = &unk_2841827D0;
  v25[3] = &unk_284182740;
  v26[2] = &unk_284188308;
  v26[3] = &unk_284188318;
  v25[4] = &unk_284182758;
  v25[5] = &unk_284182770;
  v26[4] = &unk_284188328;
  v26[5] = &unk_284188328;
  v25[6] = &unk_284182788;
  v25[7] = &unk_2841827A0;
  v26[6] = &unk_284188338;
  v26[7] = &unk_284188348;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:8];
  [v3 scaledValue:v6 withOverrides:63.0];
  *a2 = v7;

  v23[0] = &unk_284182728;
  v23[1] = &unk_284182740;
  v24[0] = &unk_284188358;
  v24[1] = &unk_284188368;
  v23[2] = &unk_284182758;
  v23[3] = &unk_284182770;
  v24[2] = &unk_284188368;
  v24[3] = &unk_284188368;
  v23[4] = &unk_284182788;
  v23[5] = &unk_2841827A0;
  v24[4] = &unk_284188368;
  v24[5] = &unk_284188368;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:6];
  [v3 scaledValue:v8 withOverrides:2.0];
  *(a2 + 8) = v9;

  v22[0] = &unk_284188378;
  v22[1] = &unk_284188378;
  v21[0] = &unk_284182728;
  v21[1] = &unk_2841827D0;
  v21[2] = &unk_284182740;
  v21[3] = &unk_284182758;
  v21[4] = &unk_284182770;
  v22[2] = &unk_284188388;
  v22[3] = &unk_284188398;
  v22[4] = &unk_284188398;
  v22[5] = &unk_2841883A8;
  v21[5] = &unk_284182788;
  v21[6] = &unk_2841827A0;
  v22[6] = &unk_2841883B8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:7];
  [v3 scaledValue:v10 withOverrides:6.0];
  *(a2 + 48) = v11;

  v19[0] = &unk_284182728;
  v19[1] = &unk_2841827D0;
  v20[0] = &unk_2841883C8;
  v20[1] = &unk_2841883B8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v3 scaledValue:v12 withOverrides:16.0];
  *(a2 + 32) = v13;

  v17[0] = &unk_284182728;
  v17[1] = &unk_2841827B8;
  v18[0] = &unk_284188368;
  v18[1] = &unk_284188368;
  v17[2] = &unk_2841827D0;
  v18[2] = &unk_2841883D8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v3 scaledValue:v14 withOverrides:16.0];
  *(a2 + 40) = v15;

  [v3 constantValue:0 withOverride:-0.5 forSizeClass:-1.0];
  *(a2 + 16) = v16;
}

double ___LayoutConstants_block_invoke_17(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&kTransitioningViewAnimationDuration_block_invoke_lock);
  if (kTransitioningViewAnimationDuration_block_invoke___cachedDevice)
  {
    v3 = kTransitioningViewAnimationDuration_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v2 version], v4 != kTransitioningViewAnimationDuration_block_invoke___previousCLKDeviceVersion))
  {
    kTransitioningViewAnimationDuration_block_invoke___cachedDevice = v2;
    kTransitioningViewAnimationDuration_block_invoke___previousCLKDeviceVersion = [v2 version];
    if ([v2 sizeClass])
    {
      v5 = -3.0;
    }

    else
    {
      v5 = -2.0;
    }

    v6 = *MEMORY[0x277CBF348];
    v7 = *(MEMORY[0x277CBF348] + 8);
    kTransitioningViewAnimationDuration_block_invoke_value_1 = *&v5;
    kTransitioningViewAnimationDuration_block_invoke_value_2 = v6;
    kTransitioningViewAnimationDuration_block_invoke_value_3 = v7;
  }

  os_unfair_lock_unlock(&kTransitioningViewAnimationDuration_block_invoke_lock);

  return 0.0;
}

void ___LayoutConstants_block_invoke_18(void *a1@<X1>, uint64_t a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_21);
  if (_block_invoke___cachedDevice_21)
  {
    v3 = _block_invoke___cachedDevice_21 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke___previousCLKDeviceVersion_21))
  {
    _block_invoke___cachedDevice_21 = v9;
    _block_invoke___previousCLKDeviceVersion_21 = [v9 version];
    ___LayoutConstants_block_invoke_2_14(v9, v10);
    xmmword_27DA2EC08 = v10[6];
    unk_27DA2EC18 = v10[7];
    qword_27DA2EC28 = v11;
    xmmword_27DA2EBC8 = v10[2];
    unk_27DA2EBD8 = v10[3];
    xmmword_27DA2EBE8 = v10[4];
    unk_27DA2EBF8 = v10[5];
    _block_invoke_value_13 = v10[0];
    unk_27DA2EBB8 = v10[1];
  }

  v5 = unk_27DA2EC18;
  *(a2 + 96) = xmmword_27DA2EC08;
  *(a2 + 112) = v5;
  *(a2 + 128) = qword_27DA2EC28;
  v6 = unk_27DA2EBD8;
  *(a2 + 32) = xmmword_27DA2EBC8;
  *(a2 + 48) = v6;
  v7 = unk_27DA2EBF8;
  *(a2 + 64) = xmmword_27DA2EBE8;
  *(a2 + 80) = v7;
  v8 = unk_27DA2EBB8;
  *a2 = _block_invoke_value_13;
  *(a2 + 16) = v8;
  os_unfair_lock_unlock(&_block_invoke_lock_21);
}

void ___LayoutConstants_block_invoke_2_14(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v21[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v20[0] = &unk_284182860;
  v20[1] = &unk_284182878;
  v21[0] = &unk_284188458;
  v21[1] = &unk_284188458;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v3 scaledValue:v4 withOverrides:2.0];
  *a2 = v5;

  *(a2 + 8) = 120;
  *(a2 + 16) = 0x3FF0000000000000;
  [v3 scaledValue:3 withOverride:6.0 forSizeClass:7.0];
  *(a2 + 24) = v6;
  *(a2 + 32) = 0x4000000000000000;
  [v3 scaledValue:3 withOverride:7.0 forSizeClass:8.0];
  *(a2 + 40) = v7;
  [v3 scaledValue:1.0];
  *(a2 + 48) = v8;
  *(a2 + 56) = 0x3FE0000000000000;
  v18[0] = &unk_284182860;
  v18[1] = &unk_284182878;
  v19[0] = &unk_284188468;
  v19[1] = &unk_284188468;
  v18[2] = &unk_284182890;
  v19[2] = &unk_284188478;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:3];
  [v3 scaledValue:v9 withOverrides:1.0];
  *(a2 + 64) = v10;

  *(a2 + 72) = 12;
  *(a2 + 80) = 0x4010000000000000;
  [v3 scaledValue:3 withOverride:11.5 forSizeClass:13.0];
  *(a2 + 88) = v11;
  [v3 scaledValue:3 withOverride:17.0 forSizeClass:19.0];
  *(a2 + 96) = v12;
  [v3 scaledValue:10.5];
  *(a2 + 104) = v13;
  *(a2 + 112) = xmmword_22DCE8430;
  v16[0] = &unk_284182860;
  v16[1] = &unk_284182878;
  v17[0] = &unk_284188468;
  v17[1] = &unk_284188468;
  v16[2] = &unk_284182890;
  v17[2] = &unk_284188488;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:3];
  [v3 scaledValue:v14 withOverrides:1.0];
  *(a2 + 128) = v15;
}

double ___LayoutConstants_block_invoke_19(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_22);
  if (_block_invoke___cachedDevice_22)
  {
    v3 = _block_invoke___cachedDevice_22 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_22))
  {
    v5 = _block_invoke_value_0_7;
  }

  else
  {
    _block_invoke___cachedDevice_22 = v2;
    _block_invoke___previousCLKDeviceVersion_22 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_15(_block_invoke___previousCLKDeviceVersion_22, v2);
    _block_invoke_value_0_7 = v5;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_22);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_15(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:-62.0 forSizeClass:-69.0];
  v4 = v3;

  return v4;
}

void ___LayoutConstants_block_invoke_20(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_23);
  if (_block_invoke___cachedDevice_23)
  {
    v3 = _block_invoke___cachedDevice_23 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_23))
  {
    _block_invoke___cachedDevice_23 = v6;
    _block_invoke___previousCLKDeviceVersion_23 = [v6 version];
    ___LayoutConstants_block_invoke_2_16(v6, v7);
    _block_invoke_value_14 = v7[0];
    unk_27DA2EE80 = v7[1];
    qword_27DA2EE90 = v8;
  }

  v5 = unk_27DA2EE80;
  *a2 = _block_invoke_value_14;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA2EE90;
  os_unfair_lock_unlock(&_block_invoke_lock_23);
}

void ___LayoutConstants_block_invoke_2_16(uint64_t a1@<X1>, void *a2@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v12[0] = &unk_284182938;
  v12[1] = &unk_284182950;
  v13[0] = &unk_2841884F8;
  v13[1] = &unk_284188508;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v3 scaledValue:v4 withOverrides:16.5];
  *a2 = v5;

  [v3 scaledValue:12.0];
  a2[1] = v6;
  v10[0] = &unk_284182938;
  v10[1] = &unk_284182950;
  v11[0] = &unk_284188518;
  v11[1] = &unk_284188528;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v3 scaledValue:v7 withOverrides:29.0];
  a2[2] = v8;

  [v3 scaledValue:0 withOverride:39.0 forSizeClass:34.0];
  a2[3] = v9;
  a2[4] = v9;
}

void ___LayoutConstants_block_invoke_21(void *a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_24);
  if (_block_invoke___cachedDevice_24)
  {
    v3 = _block_invoke___cachedDevice_24 == v10;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v10 version], v4 != _block_invoke___previousCLKDeviceVersion_24))
  {
    _block_invoke___cachedDevice_24 = v10;
    _block_invoke___previousCLKDeviceVersion_24 = [v10 version];
    ___LayoutConstants_block_invoke_2_17(v10, v11);
    xmmword_27DA2EF48 = v11[8];
    unk_27DA2EF58 = v11[9];
    qword_27DA2EF68 = v12;
    xmmword_27DA2EF08 = v11[4];
    unk_27DA2EF18 = v11[5];
    xmmword_27DA2EF28 = v11[6];
    unk_27DA2EF38 = v11[7];
    _block_invoke_value_15 = v11[0];
    unk_27DA2EED8 = v11[1];
    xmmword_27DA2EEE8 = v11[2];
    unk_27DA2EEF8 = v11[3];
  }

  v5 = unk_27DA2EF58;
  *(a2 + 128) = xmmword_27DA2EF48;
  *(a2 + 144) = v5;
  *(a2 + 160) = qword_27DA2EF68;
  v6 = unk_27DA2EF18;
  *(a2 + 64) = xmmword_27DA2EF08;
  *(a2 + 80) = v6;
  v7 = unk_27DA2EF38;
  *(a2 + 96) = xmmword_27DA2EF28;
  *(a2 + 112) = v7;
  v8 = unk_27DA2EED8;
  *a2 = _block_invoke_value_15;
  *(a2 + 16) = v8;
  v9 = unk_27DA2EEF8;
  *(a2 + 32) = xmmword_27DA2EEE8;
  *(a2 + 48) = v9;
  os_unfair_lock_unlock(&_block_invoke_lock_24);
}

void ___LayoutConstants_block_invoke_2_17(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v55[2] = *MEMORY[0x277D85DE8];
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  IsTallScript = CLKLanguageIsTallScript();
  [v3 scaledValue:0 withOverride:4.5 forSizeClass:4.5];
  *a2 = v5;
  v54[0] = &unk_284182968;
  v54[1] = &unk_284182980;
  v55[0] = &unk_284188538;
  v55[1] = &unk_284188548;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v55 forKeys:v54 count:2];
  [v3 scaledValue:v6 withOverrides:19.5];
  *(a2 + 8) = v7;

  v52[0] = &unk_284182968;
  v52[1] = &unk_284182980;
  v53[0] = &unk_284188558;
  v53[1] = &unk_284188568;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v53 forKeys:v52 count:2];
  [v3 scaledValue:v8 withOverrides:15.5];
  v10 = v9;

  v50[0] = &unk_284182968;
  v50[1] = &unk_284182980;
  v51[0] = &unk_284188578;
  v51[1] = &unk_284188588;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v3 scaledValue:v11 withOverrides:16.5];
  v13 = v12;

  if (IsTallScript)
  {
    v14 = v10;
  }

  else
  {
    v14 = v13;
  }

  *(a2 + 40) = v14;
  v48[0] = &unk_284182968;
  v48[1] = &unk_284182980;
  v49[0] = &unk_284188538;
  v49[1] = &unk_284188548;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v3 scaledValue:v15 withOverrides:19.5];
  *(a2 + 16) = v16;

  v46[0] = &unk_284182968;
  v46[1] = &unk_284182980;
  v47[0] = &unk_284188538;
  v47[1] = &unk_284188548;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
  [v3 scaledValue:v17 withOverrides:19.5];
  *(a2 + 24) = v18;

  v44[0] = &unk_284182968;
  v44[1] = &unk_284182980;
  v45[0] = &unk_284188598;
  v45[1] = &unk_2841885A8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
  [v3 scaledValue:v19 withOverrides:4.0];
  *(a2 + 32) = v20;

  *(a2 + 48) = 0;
  v42[0] = &unk_284182968;
  v42[1] = &unk_284182980;
  v43[0] = &unk_2841885B8;
  v43[1] = &unk_2841885C8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
  [v3 scaledValue:v21 withOverrides:8.0];
  *(a2 + 56) = v22;

  v40[0] = &unk_284182968;
  v40[1] = &unk_284182998;
  v41[0] = &unk_2841885D8;
  v41[1] = &unk_2841885D8;
  v40[2] = &unk_2841829B0;
  v40[3] = &unk_2841829C8;
  v41[2] = &unk_2841885D8;
  v41[3] = &unk_2841885E8;
  v40[4] = &unk_2841829E0;
  v40[5] = &unk_2841829F8;
  v41[4] = &unk_2841885E8;
  v41[5] = &unk_2841885E8;
  v40[6] = &unk_284182A10;
  v40[7] = &unk_284182A28;
  v41[6] = &unk_2841885D8;
  v41[7] = &unk_2841885E8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:8];
  [v3 scaledValue:v23 withOverrides:7.0];
  *(a2 + 72) = v24;

  *(a2 + 80) = 0x3FE0000000000000;
  [v3 scaledValue:3 withOverride:1.0 forSizeClass:1.5];
  *(a2 + 104) = v25;
  [v3 constantValue:3 withOverride:0.0 forSizeClass:0.5];
  *(a2 + 112) = v26;
  v38[0] = &unk_284182968;
  v38[1] = &unk_284182998;
  v39[0] = &unk_2841885F8;
  v39[1] = &unk_2841885F8;
  v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v3 scaledValue:v27 withOverrides:8.5];
  v29 = v28;

  *(a2 + 120) = 0;
  *(a2 + 128) = v29;
  *(a2 + 136) = 0;
  *(a2 + 144) = v29;
  [v3 scaledValue:0 withOverride:32.0 forSizeClass:28.0];
  *(a2 + 88) = v30;
  *(a2 + 96) = v30;
  [v3 scaledValue:3 withOverride:35.0 forSizeClass:38.0];
  v32 = v31;
  v36[0] = &unk_284182968;
  v36[1] = &unk_284182980;
  v37[0] = &unk_284188608;
  v37[1] = &unk_284188618;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v3 scaledValue:v33 withOverrides:18.0];
  v35 = v34;

  *(a2 + 152) = v32;
  *(a2 + 160) = v35;
}

uint64_t ___LayoutConstants_block_invoke_22(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKCFaceDetailViewControllerDidAddFace_block_invoke_lock);
  if (NTKCFaceDetailViewControllerDidAddFace_block_invoke___cachedDevice)
  {
    v3 = NTKCFaceDetailViewControllerDidAddFace_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKCFaceDetailViewControllerDidAddFace_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKCFaceDetailViewControllerDidAddFace_block_invoke_value;
  }

  else
  {
    NTKCFaceDetailViewControllerDidAddFace_block_invoke___cachedDevice = v2;
    NTKCFaceDetailViewControllerDidAddFace_block_invoke___previousCLKDeviceVersion = [v2 version];
    v6 = [v2 deviceCategory] - 1;
    if (v6 <= 5)
    {
      v7 = qword_22DCE8570[v6];
      v8 = qword_22DCE85A0[v6];
      v9 = qword_22DCE85D0[v6];
      *&_LayoutConstants_layoutConstants = 0x4061000000000000;
      *(&_LayoutConstants_layoutConstants + 1) = v7;
      qword_27DA2EF98 = 0x405C800000000000;
      qword_27DA2EFA0 = v8;
      *&xmmword_27DA2EFA8 = v9;
      *(&xmmword_27DA2EFA8 + 1) = 0x4065400000000000;
    }

    xmmword_27DA2EFB8 = xmmword_22DCE8550;
    xmmword_27DA2EFC8 = xmmword_22DCE8560;
    qword_27DA2EFD8 = 0x4028000000000000;
    v5 = 1;
    NTKCFaceDetailViewControllerDidAddFace_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NTKCFaceDetailViewControllerDidAddFace_block_invoke_lock);

  return v5;
}

double ___LayoutConstants_block_invoke_23(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_26);
  if (_block_invoke___cachedDevice_26)
  {
    v3 = _block_invoke___cachedDevice_26 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_26))
  {
    v5 = _block_invoke_value_0_8;
  }

  else
  {
    _block_invoke___cachedDevice_26 = v2;
    _block_invoke___previousCLKDeviceVersion_26 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_18(_block_invoke___previousCLKDeviceVersion_26, v2);
    _block_invoke_value_0_8 = v5;
    _block_invoke_value_1_4 = v6;
    _block_invoke_value_2_4 = v7;
    _block_invoke_value_3_2 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_26);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_18(uint64_t a1, uint64_t a2)
{
  v12[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v11[0] = &unk_284182B30;
  v11[1] = &unk_284182B48;
  v12[0] = &unk_2841886C8;
  v12[1] = &unk_2841886D8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:2];
  [v2 scaledValue:v3 withOverrides:16.0];

  v9[0] = &unk_284182B30;
  v9[1] = &unk_284182B60;
  v10[0] = &unk_2841886E8;
  v10[1] = &unk_2841886F8;
  v9[2] = &unk_284182B48;
  v10[2] = &unk_2841886F8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:3];
  [v2 scaledValue:v4 withOverrides:6.5];

  v7[0] = &unk_284182B30;
  v7[1] = &unk_284182B60;
  v8[0] = &unk_284188708;
  v8[1] = &unk_284188708;
  v7[2] = &unk_284182B48;
  v8[2] = &unk_284188718;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:3];
  [v2 scaledValue:v5 withOverrides:12.0];

  return 1.0;
}

void ___LayoutConstants_block_invoke_24(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_27);
  if (_block_invoke___cachedDevice_27)
  {
    v3 = _block_invoke___cachedDevice_27 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke___previousCLKDeviceVersion_27))
  {
    _block_invoke___cachedDevice_27 = v9;
    _block_invoke___previousCLKDeviceVersion_27 = [v9 version];
    ___LayoutConstants_block_invoke_2_19(v9, v10);
    xmmword_27DA2F1E0 = v10[4];
    unk_27DA2F1F0 = v10[5];
    xmmword_27DA2F200 = v10[6];
    unk_27DA2F210 = v10[7];
    _block_invoke_value_17 = v10[0];
    *algn_27DA2F1B0 = v10[1];
    xmmword_27DA2F1C0 = v10[2];
    unk_27DA2F1D0 = v10[3];
  }

  v5 = unk_27DA2F1F0;
  a2[4] = xmmword_27DA2F1E0;
  a2[5] = v5;
  v6 = unk_27DA2F210;
  a2[6] = xmmword_27DA2F200;
  a2[7] = v6;
  v7 = *algn_27DA2F1B0;
  *a2 = _block_invoke_value_17;
  a2[1] = v7;
  v8 = unk_27DA2F1D0;
  a2[2] = xmmword_27DA2F1C0;
  a2[3] = v8;
  os_unfair_lock_unlock(&_block_invoke_lock_27);
}

void ___LayoutConstants_block_invoke_2_19(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v24 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v24 scaledValue:9 withOverride:18.0 forSizeClass:21.0];
  v6 = v5;
  [v24 scaledValue:9 withOverride:15.0 forSizeClass:17.5];
  v8 = v7;
  [v24 scaledValue:29.0];
  v10 = v9;
  [v24 scaledValue:3 withOverride:26.0 forSizeClass:29.0];
  v12 = v11;
  [v24 scaledValue:11.0];
  v23 = v13;
  CLKValueForDeviceMetrics();
  v15 = v14;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v22 = v16;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v23;
  *(a2 + 40) = 0x3FF8000000000000;
  *(a2 + 48) = v15;
  *(a2 + 56) = 0x3FE921FB54442D18;
  *(a2 + 64) = v6 * v22;
  *(a2 + 72) = v8 * v22;
  *(a2 + 80) = v10 * v22;
  *(a2 + 88) = v12 * v22;
  __asm { FMOV            V0.2D, #1.5 }

  _Q0.f64[0] = v23;
  *(a2 + 96) = vmulq_n_f64(_Q0, v22);
  *(a2 + 112) = v15 * v22;
  *(a2 + 120) = 0x3FE921FB54442D18;
}

void ___LayoutConstants_block_invoke_25(void *a1@<X1>, uint64_t a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_28);
  if (_block_invoke___cachedDevice_28)
  {
    v3 = _block_invoke___cachedDevice_28 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != _block_invoke___previousCLKDeviceVersion_28))
  {
    _block_invoke___cachedDevice_28 = v8;
    _block_invoke___previousCLKDeviceVersion_28 = [v8 version];
    ___LayoutConstants_block_invoke_2_20(v8, v9);
    xmmword_27DA2F288 = v9[4];
    unk_27DA2F298 = v9[5];
    xmmword_27DA2F2A8 = v9[6];
    qword_27DA2F2B8 = v10;
    _block_invoke_value_18 = v9[0];
    unk_27DA2F258 = v9[1];
    xmmword_27DA2F268 = v9[2];
    unk_27DA2F278 = v9[3];
  }

  v5 = unk_27DA2F298;
  *(a2 + 64) = xmmword_27DA2F288;
  *(a2 + 80) = v5;
  *(a2 + 96) = xmmword_27DA2F2A8;
  *(a2 + 112) = qword_27DA2F2B8;
  v6 = unk_27DA2F258;
  *a2 = _block_invoke_value_18;
  *(a2 + 16) = v6;
  v7 = unk_27DA2F278;
  *(a2 + 32) = xmmword_27DA2F268;
  *(a2 + 48) = v7;
  os_unfair_lock_unlock(&_block_invoke_lock_28);
}

void ___LayoutConstants_block_invoke_2_20(void *a1@<X1>, uint64_t a2@<X8>)
{
  v51[2] = *MEMORY[0x277D85DE8];
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = a1;
  IsTallScript = CLKLanguageIsTallScript();
  v5 = [MEMORY[0x277CBBAF8] metricsWithDevice:v3 identitySizeClass:2];

  v50[0] = &unk_284182B78;
  v50[1] = &unk_284182B90;
  v51[0] = &unk_284188728;
  v51[1] = &unk_284188738;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v51 forKeys:v50 count:2];
  [v5 scaledValue:v6 withOverrides:19.5];
  *a2 = v7;

  v48[0] = &unk_284182B78;
  v48[1] = &unk_284182B90;
  v49[0] = &unk_284188748;
  v49[1] = &unk_284188758;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v49 forKeys:v48 count:2];
  [v5 scaledValue:v8 withOverrides:4.0];
  *(a2 + 16) = v9;

  *(a2 + 24) = 0x3FF0000000000000;
  [v5 scaledValue:3 withOverride:15.5 forSizeClass:17.5];
  *(a2 + 80) = v10;
  if (IsTallScript)
  {
    v46[0] = &unk_284182B78;
    v46[1] = &unk_284182B90;
    v47[0] = &unk_284188768;
    v47[1] = &unk_284188778;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v47 forKeys:v46 count:2];
    [v5 scaledValue:v11 withOverrides:36.0];
    *(a2 + 8) = v12;

    v44[0] = &unk_284182B78;
    v44[1] = &unk_284182B90;
    v45[0] = &unk_284188788;
    v45[1] = &unk_284188798;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v45 forKeys:v44 count:2];
    [v5 scaledValue:v13 withOverrides:15.5];
    *(a2 + 56) = v14;

    [v5 scaledValue:3 withOverride:14.5 forSizeClass:16.5];
    *(a2 + 48) = v15;
    v42[0] = &unk_284182B78;
    v42[1] = &unk_284182B90;
    v43[0] = &unk_2841887A8;
    v43[1] = &unk_2841887B8;
    v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v43 forKeys:v42 count:2];
    [v5 scaledValue:v16 withOverrides:37.0];
    *(a2 + 64) = v17;

    [v5 scaledValue:3 withOverride:11.0 forSizeClass:7.0];
    v19 = v18;
  }

  else
  {
    v40[0] = &unk_284182B78;
    v40[1] = &unk_284182B90;
    v41[0] = &unk_2841887C8;
    v41[1] = &unk_2841887D8;
    v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v41 forKeys:v40 count:2];
    [v5 scaledValue:v20 withOverrides:39.0];
    *(a2 + 8) = v21;

    v38[0] = &unk_284182B78;
    v38[1] = &unk_284182B90;
    v39[0] = &unk_2841887E8;
    v39[1] = &unk_2841887F8;
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
    [v5 scaledValue:v22 withOverrides:16.5];
    *(a2 + 56) = v23;

    [v5 scaledValue:3 withOverride:15.5 forSizeClass:17.5];
    *(a2 + 48) = v24;
    v36[0] = &unk_284182B78;
    v36[1] = &unk_284182B90;
    v37[0] = &unk_2841887C8;
    v37[1] = &unk_284188808;
    v25 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
    [v5 scaledValue:v25 withOverrides:39.0];
    *(a2 + 64) = v26;

    v34[0] = &unk_284182B78;
    v34[1] = &unk_284182B90;
    v35[0] = &unk_284188818;
    v35[1] = &unk_284188828;
    v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
    [v5 scaledValue:v27 withOverrides:8.0];
    v19 = v28;
  }

  *(a2 + 72) = v19;
  v32[0] = &unk_284182B78;
  v32[1] = &unk_284182BA8;
  v33[0] = &unk_284188838;
  v33[1] = &unk_284188838;
  v29 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v5 scaledValue:v29 withOverrides:8.5];
  v31 = v30;

  *(a2 + 88) = 0;
  *(a2 + 96) = v31;
  *(a2 + 104) = 0;
  *(a2 + 112) = v31;
}

void ___LayoutConstants_block_invoke_26(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&LaterDuration_block_invoke_lock);
  if (LaterDuration_block_invoke___cachedDevice)
  {
    v3 = LaterDuration_block_invoke___cachedDevice == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != LaterDuration_block_invoke___previousCLKDeviceVersion))
  {
    LaterDuration_block_invoke___cachedDevice = v7;
    LaterDuration_block_invoke___previousCLKDeviceVersion = [v7 version];
    ___LayoutConstants_block_invoke_2_21(v7, v8);
    xmmword_27DA2F3B8 = v8[2];
    unk_27DA2F3C8 = v8[3];
    qword_27DA2F3D8 = v9;
    LaterDuration_block_invoke_value = v8[0];
    unk_27DA2F3A8 = v8[1];
  }

  v5 = unk_27DA2F3C8;
  *(a2 + 32) = xmmword_27DA2F3B8;
  *(a2 + 48) = v5;
  *(a2 + 64) = qword_27DA2F3D8;
  v6 = unk_27DA2F3A8;
  *a2 = LaterDuration_block_invoke_value;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&LaterDuration_block_invoke_lock);
}

double ___LayoutConstants_block_invoke_2_21@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = NTKWhistlerSubdialComplicationDistanceFromCenter(v3);
  *(a2 + 8) = NTKWhistlerBezelCircularViewFontSize(v3);
  *(a2 + 16) = NTKWhistlerBezelCircularViewDefaultCenterAngle();
  *(a2 + 24) = NTKWhistlerBezelCircularViewDefaultTracking();
  *(a2 + 32) = NTKWhistlerBezelCircularViewDefaultTrackingArabic();
  *(a2 + 40) = NTKWhistlerBezelCircularViewDefaultMaxAngularWidth();
  v4 = NTKWhistlerBezelCircularViewDefaultAngularWidthPadding();

  *(a2 + 48) = v4;
  result = 30.0;
  *(a2 + 56) = xmmword_22DCE8820;
  return result;
}

double ___LayoutConstants_block_invoke_27(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&nightMaskOffset_block_invoke_lock);
  if (nightMaskOffset_block_invoke___cachedDevice)
  {
    v3 = nightMaskOffset_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == nightMaskOffset_block_invoke___previousCLKDeviceVersion))
  {
    v5 = nightMaskOffset_block_invoke_value_0;
  }

  else
  {
    nightMaskOffset_block_invoke___cachedDevice = v2;
    nightMaskOffset_block_invoke___previousCLKDeviceVersion = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_22(nightMaskOffset_block_invoke___previousCLKDeviceVersion, v2);
    nightMaskOffset_block_invoke_value_0 = v5;
    nightMaskOffset_block_invoke_value_1 = v6;
    nightMaskOffset_block_invoke_value_2 = v7;
  }

  os_unfair_lock_unlock(&nightMaskOffset_block_invoke_lock);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_22(uint64_t a1, void *a2)
{
  v2 = a2;
  CLKValueForLuxoDeviceMetrics();
  v4 = v3;
  CLKValueForLuxoDeviceMetrics();
  CLKValueForLuxoDeviceMetrics();

  return v4;
}

void ___LayoutConstants_block_invoke_28(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_31);
  if (_block_invoke___cachedDevice_31)
  {
    v3 = _block_invoke___cachedDevice_31 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_31))
  {
    _block_invoke___cachedDevice_31 = v7;
    _block_invoke___previousCLKDeviceVersion_31 = [v7 version];
    ___LayoutConstants_block_invoke_2_23(v7, v8);
    xmmword_27DA2F4A0 = v8[2];
    unk_27DA2F4B0 = v8[3];
    xmmword_27DA2F4C0 = v8[4];
    qword_27DA2F4D0 = v9;
    _block_invoke_value_21 = v8[0];
    *algn_27DA2F490 = v8[1];
  }

  v5 = unk_27DA2F4B0;
  *(a2 + 32) = xmmword_27DA2F4A0;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_27DA2F4C0;
  *(a2 + 80) = qword_27DA2F4D0;
  v6 = *algn_27DA2F490;
  *a2 = _block_invoke_value_21;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_31);
}

void ___LayoutConstants_block_invoke_2_23(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v40[2] = *MEMORY[0x277D85DE8];
  *(a2 + 40) = 0;
  *(a2 + 24) = 0u;
  *(a2 + 8) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:3 withOverride:19.5 forSizeClass:22.5];
  *a2 = v4;
  [v3 scaledValue:0 withOverride:4.5 forSizeClass:4.5];
  *(a2 + 16) = v5;
  v39[0] = &unk_284182EC0;
  v39[1] = &unk_284182ED8;
  v40[0] = &unk_284188848;
  v40[1] = &unk_284188848;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v3 scaledValue:v6 withOverrides:8.5];
  v8 = v7;

  *(a2 + 48) = 0;
  *(a2 + 56) = 0;
  *(a2 + 64) = v8;
  *(a2 + 72) = 0;
  *(a2 + 80) = v8;
  if (CLKLanguageIsTallScript())
  {
    v37[0] = &unk_284182EC0;
    v37[1] = &unk_284182EF0;
    v38[0] = &unk_284188858;
    v38[1] = &unk_284188868;
    v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:2];
    [v3 scaledValue:v9 withOverrides:36.0];
    *(a2 + 8) = v10;

    v35[0] = &unk_284182EC0;
    v35[1] = &unk_284182ED8;
    v36[0] = &unk_284188878;
    v36[1] = &unk_284188888;
    v35[2] = &unk_284182EF0;
    v36[2] = &unk_284188898;
    v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
    [v3 scaledValue:v11 withOverrides:16.5];
    *(a2 + 24) = v12;

    v33[0] = &unk_284182EC0;
    v33[1] = &unk_284182EF0;
    v34[0] = &unk_2841888A8;
    v34[1] = &unk_2841888B8;
    v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:2];
    [v3 scaledValue:v13 withOverrides:37.0];
    *(a2 + 32) = v14;

    [v3 scaledValue:3 withOverride:11.0 forSizeClass:12.5];
    v16 = v15;
  }

  else
  {
    v31[0] = &unk_284182EC0;
    v31[1] = &unk_284182EF0;
    v32[0] = &unk_2841888C8;
    v32[1] = &unk_2841888D8;
    v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
    [v3 scaledValue:v17 withOverrides:39.0];
    *(a2 + 8) = v18;

    v29[0] = &unk_284182EC0;
    v29[1] = &unk_284182ED8;
    v30[0] = &unk_2841888E8;
    v30[1] = &unk_284188898;
    v29[2] = &unk_284182EF0;
    v30[2] = &unk_2841888F8;
    v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:3];
    [v3 scaledValue:v19 withOverrides:17.5];
    *(a2 + 24) = v20;

    v27[0] = &unk_284182EC0;
    v27[1] = &unk_284182EF0;
    v28[0] = &unk_2841888C8;
    v28[1] = &unk_284188908;
    v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
    [v3 scaledValue:v21 withOverrides:39.0];
    *(a2 + 32) = v22;

    v25[0] = &unk_284182EC0;
    v25[1] = &unk_284182EF0;
    v26[0] = &unk_284188918;
    v26[1] = &unk_284188928;
    v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
    [v3 scaledValue:v23 withOverrides:8.0];
    v16 = v24;
  }

  *(a2 + 40) = v16;
}

double ___LayoutConstants_block_invoke_29(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_32);
  if (_block_invoke___cachedDevice_32)
  {
    v3 = _block_invoke___cachedDevice_32 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_32))
  {
    v5 = _block_invoke_value_0_9;
  }

  else
  {
    _block_invoke___cachedDevice_32 = v2;
    _block_invoke___previousCLKDeviceVersion_32 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_24(_block_invoke___previousCLKDeviceVersion_32, v2);
    _block_invoke_value_0_9 = v5;
    _block_invoke_value_1_5 = v6;
    _block_invoke_value_2_5 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_32);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_24(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_284182F08;
  v7[1] = &unk_284182F20;
  v8[0] = &unk_284188938;
  v8[1] = &unk_284188948;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v3 withOverrides:16.5];
  v5 = v4;

  return v5;
}

void ___LayoutConstants_block_invoke_30(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_33);
  if (_block_invoke___cachedDevice_33)
  {
    v3 = _block_invoke___cachedDevice_33 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_33))
  {
    _block_invoke___cachedDevice_33 = v6;
    _block_invoke___previousCLKDeviceVersion_33 = [v6 version];
    ___LayoutConstants_block_invoke_2_25(v6, v7);
    _block_invoke_value_22 = v7[0];
    *algn_27DA2F530 = v7[1];
    qword_27DA2F540 = v8;
  }

  v5 = *algn_27DA2F530;
  *a2 = _block_invoke_value_22;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA2F540;
  os_unfair_lock_unlock(&_block_invoke_lock_33);
}

void ___LayoutConstants_block_invoke_2_25(uint64_t a1@<X1>, void *a2@<X8>)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:19.5];
  *a2 = v4;
  v10[0] = &unk_284182F38;
  v10[1] = &unk_284182F50;
  v11[0] = &unk_284188958;
  v11[1] = &unk_284188968;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v3 scaledValue:v5 withOverrides:16.0];
  a2[1] = v6;

  [v3 scaledValue:11.0];
  a2[2] = v7;
  [v3 scaledValue:3 withOverride:9.5 forSizeClass:11.0];
  a2[3] = v8;
  [v3 scaledValue:3 withOverride:14.0 forSizeClass:16.0];
  a2[4] = v9;
}

void ___LayoutConstants_block_invoke_31(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_34);
  if (_block_invoke___cachedDevice_34)
  {
    v3 = _block_invoke___cachedDevice_34 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_34))
  {
    _block_invoke___cachedDevice_34 = v6;
    _block_invoke___previousCLKDeviceVersion_34 = [v6 version];
    ___LayoutConstants_block_invoke_2_26(v6, v7);
    _block_invoke_value_23 = v7[0];
    unk_27DA2F580 = v7[1];
    xmmword_27DA2F590 = v7[2];
    qword_27DA2F5A0 = v8;
  }

  v5 = unk_27DA2F580;
  *a2 = _block_invoke_value_23;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27DA2F590;
  *(a2 + 48) = qword_27DA2F5A0;
  os_unfair_lock_unlock(&_block_invoke_lock_34);
}

void ___LayoutConstants_block_invoke_2_26(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v5 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  *a2 = xmmword_22DCE88B0;
  [v5 scaledValue:9.0];
  *(a2 + 16) = v3;
  *(a2 + 24) = 0x3FF8000000000000;
  [v5 scaledValue:4.0];
  *(a2 + 32) = v4;
  *(a2 + 40) = xmmword_22DCE88C0;
}

void ___LayoutConstants_block_invoke_32(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_35);
  if (_block_invoke___cachedDevice_35)
  {
    v3 = _block_invoke___cachedDevice_35 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_35))
  {
    _block_invoke___cachedDevice_35 = v6;
    _block_invoke___previousCLKDeviceVersion_35 = [v6 version];
    ___LayoutConstants_block_invoke_2_27(v6, v7);
    _block_invoke_value_24 = v7[0];
    *algn_27DA2F5D0 = v7[1];
    xmmword_27DA2F5E0 = v7[2];
    qword_27DA2F5F0 = v8;
  }

  v5 = *algn_27DA2F5D0;
  *a2 = _block_invoke_value_24;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27DA2F5E0;
  *(a2 + 48) = qword_27DA2F5F0;
  os_unfair_lock_unlock(&_block_invoke_lock_35);
}

void ___LayoutConstants_block_invoke_2_27(uint64_t a1@<X1>, void *a2@<X8>)
{
  v28[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v27[0] = &unk_284182F80;
  v27[1] = &unk_284182F98;
  v28[0] = &unk_2841889A8;
  v28[1] = &unk_2841889B8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:2];
  [v3 scaledValue:v4 withOverrides:16.5];
  *a2 = v5;

  v25 = &unk_284182F80;
  v26 = &unk_2841889C8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v26 forKeys:&v25 count:1];
  [v3 scaledValue:v6 withOverrides:40.0];
  a2[1] = v7;

  v23[0] = &unk_284182F80;
  v23[1] = &unk_284182FB0;
  v24[0] = &unk_2841889D8;
  v24[1] = &unk_2841889E8;
  v23[2] = &unk_284182F98;
  v24[2] = &unk_2841889F8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:3];
  [v3 scaledValue:v8 withOverrides:8.5];
  a2[2] = v9;

  v21[0] = &unk_284182F80;
  v21[1] = &unk_284182FB0;
  v22[0] = &unk_284188A08;
  v22[1] = &unk_284188A08;
  v21[2] = &unk_284182F98;
  v22[2] = &unk_2841889F8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:3];
  [v3 scaledValue:v10 withOverrides:8.5];
  a2[3] = v11;

  v19 = &unk_284182F80;
  v20 = &unk_284188A18;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
  [v3 scaledValue:v12 withOverrides:38.0];
  a2[4] = v13;

  v17[0] = &unk_284182F80;
  v17[1] = &unk_284182F98;
  v18[0] = &unk_284188A28;
  v18[1] = &unk_2841889D8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v3 scaledValue:v14 withOverrides:4.0];
  v16 = v15;
  a2[5] = v15;

  a2[6] = v16;
}

void ___LayoutConstants_block_invoke_33(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_36);
  if (_block_invoke___cachedDevice_36)
  {
    v3 = _block_invoke___cachedDevice_36 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_36))
  {
    _block_invoke___cachedDevice_36 = v6;
    _block_invoke___previousCLKDeviceVersion_36 = [v6 version];
    ___LayoutConstants_block_invoke_2_28(v6, v7);
    _block_invoke_value_25 = v7[0];
    *algn_27DA2F630 = v7[1];
    qword_27DA2F640 = v8;
  }

  v5 = *algn_27DA2F630;
  *a2 = _block_invoke_value_25;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA2F640;
  os_unfair_lock_unlock(&_block_invoke_lock_36);
}

void ___LayoutConstants_block_invoke_2_28(void *a1@<X1>, uint64_t a2@<X8>)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [NTKAnalogUtilities largeDialSizeForDevice:v4];
  v7 = v6;

  *a2 = v7;
  v14[0] = &unk_284183190;
  v14[1] = &unk_2841831A8;
  v15[0] = &unk_284188A38;
  v15[1] = &unk_284188A38;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:2];
  [v5 scaledValue:v8 withOverrides:4.0];
  *(a2 + 8) = v9;

  v12[0] = &unk_284183190;
  v12[1] = &unk_2841831A8;
  v13[0] = &unk_284188A38;
  v13[1] = &unk_284188A38;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v5 scaledValue:v10 withOverrides:4.0];
  *(a2 + 16) = v11;

  *(a2 + 24) = xmmword_22DCE8820;
}

double ___LayoutConstants_block_invoke_34(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_38);
  if (_block_invoke___cachedDevice_38)
  {
    v3 = _block_invoke___cachedDevice_38 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_38))
  {
    v5 = _block_invoke_value_0_10;
  }

  else
  {
    _block_invoke___cachedDevice_38 = v2;
    _block_invoke___previousCLKDeviceVersion_38 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_29(_block_invoke___previousCLKDeviceVersion_38, v2);
    _block_invoke_value_0_10 = v5;
    _block_invoke_value_1_6 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_38);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_29(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:3];
  v5 = NTKWhistlerSubdialComplicationDiameter(v3);

  [v4 scaledPoint:2 withOverride:10.5 forSizeClass:{23.0, 7.5, 20.0}];
  v7 = v5 * 0.5 + v6;

  return v7;
}

void ___LayoutConstants_block_invoke_35(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&kHourMarkerCount_block_invoke_lock);
  if (kHourMarkerCount_block_invoke___cachedDevice)
  {
    v3 = kHourMarkerCount_block_invoke___cachedDevice == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != kHourMarkerCount_block_invoke___previousCLKDeviceVersion))
  {
    kHourMarkerCount_block_invoke___cachedDevice = v6;
    kHourMarkerCount_block_invoke___previousCLKDeviceVersion = [v6 version];
    ___LayoutConstants_block_invoke_2_30(v6, v7);
    kHourMarkerCount_block_invoke_value = v7[0];
    unk_27DA2F718 = v7[1];
    xmmword_27DA2F728 = v7[2];
  }

  v5 = unk_27DA2F718;
  *a2 = kHourMarkerCount_block_invoke_value;
  a2[1] = v5;
  a2[2] = xmmword_27DA2F728;
  os_unfair_lock_unlock(&kHourMarkerCount_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_30(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v7 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v7 scaledSize:{1.5, 6.0}];
  *a2 = v3;
  *(a2 + 8) = v4;
  *(a2 + 16) = v3 + -0.5;
  *(a2 + 24) = v4 + -0.5;
  [v7 scaledValue:3.0];
  *(a2 + 32) = v5;
  [v7 scaledValue:5.5];
  *(a2 + 40) = v6;
}

uint64_t ___LayoutConstants_block_invoke_36(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke_lock);
  if (NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke___cachedDevice)
  {
    v3 = NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke_value;
  }

  else
  {
    NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke___cachedDevice = v2;
    NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke___previousCLKDeviceVersion = [v2 version];
    ___LayoutConstants_block_invoke_3_0(NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke___previousCLKDeviceVersion, v2);
    v5 = 1;
    NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NTKGreenfieldShareFaceAlertContainerViewAppearedNotification_block_invoke_lock);

  return v5;
}

double ___LayoutConstants_block_invoke_3_0(uint64_t a1, void *a2)
{
  xmmword_27DA2F7B0 = xmmword_22DCE8950;
  xmmword_27DA2F7C0 = xmmword_22DCE8960;
  v2 = [a2 deviceCategory];
  if (v2 <= 6)
  {
    result = dbl_22DCE8970[v2];
    v4 = qword_22DCE89A8[v2];
    v5 = qword_22DCE89E0[v2];
    v6 = qword_22DCE8A18[v2];
    v7 = qword_22DCE8A50[v2];
    v8 = qword_22DCE8A88[v2];
    v9 = qword_22DCE8AC0[v2];
    v10 = qword_22DCE8AF8[v2];
    qword_27DA2F7D0 = *&result;
    unk_27DA2F7D8 = v4;
    *&xmmword_27DA2F7E0 = v5;
    *(&xmmword_27DA2F7E0 + 1) = v6;
    qword_27DA2F7F0 = v7;
    unk_27DA2F7F8 = v8;
    *&_LayoutConstants_layoutConstants_0 = v9;
    *(&_LayoutConstants_layoutConstants_0 + 1) = v10;
  }

  return result;
}

void ___LayoutConstants_block_invoke_37(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&NTKStopwatchComplicationMetadataTimeKey_block_invoke_lock);
  if (NTKStopwatchComplicationMetadataTimeKey_block_invoke___cachedDevice)
  {
    v3 = NTKStopwatchComplicationMetadataTimeKey_block_invoke___cachedDevice == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != NTKStopwatchComplicationMetadataTimeKey_block_invoke___previousCLKDeviceVersion))
  {
    NTKStopwatchComplicationMetadataTimeKey_block_invoke___cachedDevice = v9;
    NTKStopwatchComplicationMetadataTimeKey_block_invoke___previousCLKDeviceVersion = [v9 version];
    ___LayoutConstants_block_invoke_2_31(v9, v10);
    xmmword_27DA2FA08 = v10[6];
    unk_27DA2FA18 = v10[7];
    xmmword_27DA2FA28 = v10[8];
    xmmword_27DA2F9C8 = v10[2];
    unk_27DA2F9D8 = v10[3];
    xmmword_27DA2F9E8 = v10[4];
    unk_27DA2F9F8 = v10[5];
    NTKStopwatchComplicationMetadataTimeKey_block_invoke_value = v10[0];
    unk_27DA2F9B8 = v10[1];
  }

  v5 = unk_27DA2FA18;
  a2[6] = xmmword_27DA2FA08;
  a2[7] = v5;
  a2[8] = xmmword_27DA2FA28;
  v6 = unk_27DA2F9D8;
  a2[2] = xmmword_27DA2F9C8;
  a2[3] = v6;
  v7 = unk_27DA2F9F8;
  a2[4] = xmmword_27DA2F9E8;
  a2[5] = v7;
  v8 = unk_27DA2F9B8;
  *a2 = NTKStopwatchComplicationMetadataTimeKey_block_invoke_value;
  a2[1] = v8;
  os_unfair_lock_unlock(&NTKStopwatchComplicationMetadataTimeKey_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_31(void *a1@<X1>, double *a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v25 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v25 setRoundingBehavior:1];
  [v25 scaledValue:24.0];
  v24 = v5;
  [v25 scaledValue:12.0];
  v23 = v6;
  [v25 scaledValue:3 withOverride:41.5 forSizeClass:46.5];
  v8 = v7;
  [v25 scaledValue:3 withOverride:24.5 forSizeClass:27.5];
  v10 = v9;
  [v25 scaledValue:3 withOverride:40.0 forSizeClass:45.0];
  v12 = v11;
  [v25 setRoundingBehavior:0];
  [v25 scaledSize:3 withOverride:0.75 forSizeClass:{3.5, 0.75, 4.0}];
  v14 = v13;
  v16 = v15;
  [v25 scaledSize:3 withOverride:0.75 forSizeClass:{1.75, 0.75, 2.0}];
  v18 = v17;
  v20 = v19;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v22 = v21;

  *a2 = v24;
  a2[1] = v23;
  a2[2] = v8;
  a2[3] = v10;
  a2[4] = v12;
  a2[5] = v14;
  a2[6] = v16;
  a2[7] = v18;
  a2[8] = v20;
  a2[9] = v24 * v22;
  a2[10] = v23 * v22;
  a2[11] = v8 * v22;
  a2[12] = v10 * v22;
  a2[13] = v12 * v22;
  a2[14] = v14 * v22;
  a2[15] = v16 * v22;
  a2[16] = v18 * v22;
  a2[17] = v20 * v22;
}

void ___LayoutConstants_block_invoke_38(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke_lock);
  if (NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke___cachedDevice)
  {
    v3 = NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke___cachedDevice == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke___previousCLKDeviceVersion))
  {
    NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke___cachedDevice = v5;
    NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke___previousCLKDeviceVersion = [v5 version];
    ___LayoutConstants_block_invoke_2_32(v5, __src);
    memcpy(&NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke_value, __src, 0x120uLL);
  }

  memcpy(a2, &NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke_value, 0x120uLL);
  os_unfair_lock_unlock(&NTKExtraLargeCircularSnoozeFullColorImageName_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_32(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v137[3] = *MEMORY[0x277D85DE8];
  *(a2 + 256) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 0u;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:12.0];
  v95 = v4;
  [v3 scaledValue:3 withOverride:41.5 forSizeClass:46.5];
  v94 = v5;
  v136[0] = &unk_284183280;
  v136[1] = &unk_284183298;
  v137[0] = &unk_284188A68;
  v137[1] = &unk_284188A68;
  v136[2] = &unk_2841832B0;
  v137[2] = &unk_284188A68;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v137 forKeys:v136 count:3];
  [v3 scaledValue:v6 withOverrides:20.5];
  v93 = v7;

  v134[0] = &unk_284183280;
  v134[1] = &unk_2841832C8;
  v135[0] = &unk_284188A78;
  v135[1] = &unk_284188A88;
  v134[2] = &unk_284183298;
  v134[3] = &unk_2841832B0;
  v135[2] = &unk_284188A98;
  v135[3] = &unk_284188A98;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v135 forKeys:v134 count:4];
  [v3 scaledValue:v8 withOverrides:29.5];
  v92 = v9;

  v132[0] = &unk_284183280;
  v132[1] = &unk_2841832C8;
  v133[0] = &unk_284188AA8;
  v133[1] = &unk_284188AB8;
  v132[2] = &unk_284183298;
  v132[3] = &unk_2841832B0;
  v133[2] = &unk_284188AC8;
  v133[3] = &unk_284188AC8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v133 forKeys:v132 count:4];
  [v3 scaledValue:v10 withOverrides:12.5];
  v91 = v11;

  [v3 scaledValue:3 withOverride:41.5 forSizeClass:46.5];
  v90 = v12;
  v130[0] = &unk_284183280;
  v130[1] = &unk_2841832C8;
  v131[0] = &unk_284188AD8;
  v131[1] = &unk_284188AD8;
  v130[2] = &unk_284183298;
  v130[3] = &unk_2841832B0;
  v131[2] = &unk_284188AE8;
  v131[3] = &unk_284188AE8;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v131 forKeys:v130 count:4];
  [v3 scaledValue:v13 withOverrides:23.5];
  v89 = v14;

  v128 = &unk_2841832C8;
  v129 = &unk_284188AF8;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v129 forKeys:&v128 count:1];
  [v3 scaledValue:v15 withOverrides:11.0];
  v88 = v16;

  [v3 scaledValue:3 withOverride:41.5 forSizeClass:46.5];
  v87 = v17;
  v126[0] = &unk_284183280;
  v126[1] = &unk_2841832C8;
  v127[0] = &unk_284188B08;
  v127[1] = &unk_284188B18;
  v126[2] = &unk_284183298;
  v126[3] = &unk_2841832B0;
  v127[2] = &unk_284188B28;
  v127[3] = &unk_284188B28;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v127 forKeys:v126 count:4];
  [v3 scaledValue:v18 withOverrides:29.5];
  v86 = v19;

  [v3 scaledValue:10.5];
  v85 = v20;
  [v3 scaledValue:3 withOverride:41.5 forSizeClass:46.5];
  v84 = v21;
  v124[0] = &unk_284183280;
  v124[1] = &unk_284183298;
  v125[0] = &unk_284188B38;
  v125[1] = &unk_284188B48;
  v124[2] = &unk_2841832B0;
  v125[2] = &unk_284188B48;
  v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v125 forKeys:v124 count:3];
  [v3 scaledValue:v22 withOverrides:31.5];
  v83 = v23;

  v122[0] = &unk_284183280;
  v122[1] = &unk_2841832C8;
  v123[0] = &unk_284188B58;
  v123[1] = &unk_284188B68;
  v122[2] = &unk_284183298;
  v122[3] = &unk_2841832B0;
  v123[2] = &unk_284188B58;
  v123[3] = &unk_284188B58;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v123 forKeys:v122 count:4];
  [v3 scaledValue:v24 withOverrides:17.5];
  v82 = v25;

  v120[0] = &unk_284183280;
  v120[1] = &unk_2841832C8;
  v121[0] = &unk_284188B78;
  v121[1] = &unk_284188AF8;
  v120[2] = &unk_284183298;
  v120[3] = &unk_2841832B0;
  v121[2] = &unk_284188B78;
  v121[3] = &unk_284188B78;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v121 forKeys:v120 count:4];
  [v3 scaledValue:v26 withOverrides:8.0];
  v81 = v27;

  [v3 scaledValue:4.0];
  v80 = v28;
  [v3 scaledValue:25.0];
  v79 = v29;
  [v3 scaledValue:12.0];
  v78 = v30;
  v118[0] = &unk_284183280;
  v118[1] = &unk_2841832C8;
  v119[0] = &unk_284188B88;
  v119[1] = &unk_284188B28;
  v31 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v119 forKeys:v118 count:2];
  [v3 scaledValue:v31 withOverrides:34.3];
  v77 = v32;

  [v3 scaledValue:3 withOverride:118.5 forSizeClass:130.5];
  v76 = v33;
  v116[0] = &unk_284183280;
  v116[1] = &unk_284183298;
  v117[0] = &unk_284188B98;
  v117[1] = &unk_284188BA8;
  v116[2] = &unk_2841832B0;
  v117[2] = &unk_284188BA8;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v117 forKeys:v116 count:3];
  [v3 scaledValue:v34 withOverrides:58.6];
  v75 = v35;

  v114[0] = &unk_284183280;
  v114[1] = &unk_2841832C8;
  v115[0] = &unk_284188BB8;
  v115[1] = &unk_284188BC8;
  v114[2] = &unk_284183298;
  v114[3] = &unk_2841832B0;
  v115[2] = &unk_284188BD8;
  v115[3] = &unk_284188BD8;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v115 forKeys:v114 count:4];
  [v3 scaledValue:v36 withOverrides:84.3];
  v74 = v37;

  v112[0] = &unk_284183280;
  v112[1] = &unk_2841832C8;
  v113[0] = &unk_284188B88;
  v113[1] = &unk_284188B28;
  v38 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v113 forKeys:v112 count:2];
  [v3 scaledValue:v38 withOverrides:34.3];
  v73 = v39;

  v110 = &unk_284183280;
  v111 = &unk_284188BE8;
  v40 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v111 forKeys:&v110 count:1];
  [v3 scaledValue:v40 withOverrides:118.7];
  v72 = v41;

  v108[0] = &unk_284183280;
  v108[1] = &unk_2841832C8;
  v109[0] = &unk_284188BF8;
  v109[1] = &unk_284188C08;
  v108[2] = &unk_284183298;
  v108[3] = &unk_2841832B0;
  v109[2] = &unk_284188C18;
  v109[3] = &unk_284188C18;
  v42 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v109 forKeys:v108 count:4];
  [v3 scaledValue:v42 withOverrides:67.0];
  v71 = v43;

  v106[0] = &unk_284183280;
  v106[1] = &unk_2841832C8;
  v107[0] = &unk_284188B18;
  v107[1] = &unk_284188C28;
  v44 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v107 forKeys:v106 count:2];
  [v3 scaledValue:v44 withOverrides:31.4];
  v70 = v45;

  v104 = &unk_284183280;
  v105 = &unk_284188BE8;
  v46 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v105 forKeys:&v104 count:1];
  [v3 scaledValue:v46 withOverrides:118.7];
  v69 = v47;

  v102[0] = &unk_284183280;
  v102[1] = &unk_284183298;
  v103[0] = &unk_284188C38;
  v103[1] = &unk_284188C48;
  v102[2] = &unk_2841832B0;
  v103[2] = &unk_284188C48;
  v48 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v103 forKeys:v102 count:3];
  [v3 scaledValue:v48 withOverrides:84.4];
  v50 = v49;

  [v3 scaledValue:30.0];
  v52 = v51;
  [v3 scaledValue:3 withOverride:118.6 forSizeClass:130.6];
  v54 = v53;
  v100[0] = &unk_284183280;
  v100[1] = &unk_2841832C8;
  v101[0] = &unk_284188C58;
  v101[1] = &unk_284188C68;
  v100[2] = &unk_284183298;
  v100[3] = &unk_2841832B0;
  v101[2] = &unk_284188C78;
  v101[3] = &unk_284188C78;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v101 forKeys:v100 count:4];
  [v3 scaledValue:v55 withOverrides:90.0];
  v57 = v56;

  v98[0] = &unk_284183280;
  v98[1] = &unk_2841832C8;
  v99[0] = &unk_284188C88;
  v99[1] = &unk_284188C98;
  v98[2] = &unk_284183298;
  v98[3] = &unk_2841832B0;
  v99[2] = &unk_284188B98;
  v99[3] = &unk_284188B98;
  v58 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v99 forKeys:v98 count:4];
  [v3 scaledValue:v58 withOverrides:50.0];
  v60 = v59;

  v96[0] = &unk_284183280;
  v96[1] = &unk_2841832C8;
  v97[0] = &unk_284188CA8;
  v97[1] = &unk_284188CB8;
  v96[2] = &unk_284183298;
  v96[3] = &unk_2841832B0;
  v97[2] = &unk_284188CC8;
  v97[3] = &unk_284188CC8;
  v61 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v97 forKeys:v96 count:4];
  [v3 scaledValue:v61 withOverrides:22.0];
  v63 = v62;

  [v3 scaledValue:11.0];
  v65 = v64;
  [v3 scaledValue:72.0];
  v67 = v66;
  [v3 scaledValue:35.0];
  *a2 = v95;
  *(a2 + 8) = v94;
  *(a2 + 16) = v93;
  *(a2 + 24) = v92;
  *(a2 + 32) = v91;
  *(a2 + 40) = v90;
  *(a2 + 48) = v89;
  *(a2 + 56) = v88;
  *(a2 + 64) = v87;
  *(a2 + 72) = v86;
  *(a2 + 80) = v85;
  *(a2 + 88) = v84;
  *(a2 + 96) = v83;
  *(a2 + 104) = v82;
  *(a2 + 112) = v81;
  *(a2 + 120) = v80;
  *(a2 + 128) = v79;
  *(a2 + 136) = v78;
  *(a2 + 144) = v77;
  *(a2 + 152) = v76;
  *(a2 + 160) = v75;
  *(a2 + 168) = v74;
  *(a2 + 176) = v73;
  *(a2 + 184) = v72;
  *(a2 + 192) = v71;
  *(a2 + 200) = v70;
  *(a2 + 208) = v69;
  *(a2 + 216) = v50;
  *(a2 + 224) = v52;
  *(a2 + 232) = v54;
  *(a2 + 240) = v57;
  *(a2 + 248) = v60;
  *(a2 + 256) = v63;
  *(a2 + 264) = v65;
  *(a2 + 272) = v67;
  *(a2 + 280) = v68;
}

void ___LayoutConstants_block_invoke_39(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_41);
  if (_block_invoke___cachedDevice_41)
  {
    v3 = _block_invoke___cachedDevice_41 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke___previousCLKDeviceVersion_41))
  {
    _block_invoke___cachedDevice_41 = v9;
    _block_invoke___previousCLKDeviceVersion_41 = [v9 version];
    ___LayoutConstants_block_invoke_2_33(v9, v10);
    xmmword_27DA2FD10 = v10[4];
    unk_27DA2FD20 = v10[5];
    xmmword_27DA2FD30 = v10[6];
    unk_27DA2FD40 = v10[7];
    _block_invoke_value_29 = v10[0];
    unk_27DA2FCE0 = v10[1];
    xmmword_27DA2FCF0 = v10[2];
    unk_27DA2FD00 = v10[3];
  }

  v5 = unk_27DA2FD20;
  a2[4] = xmmword_27DA2FD10;
  a2[5] = v5;
  v6 = unk_27DA2FD40;
  a2[6] = xmmword_27DA2FD30;
  a2[7] = v6;
  v7 = unk_27DA2FCE0;
  *a2 = _block_invoke_value_29;
  a2[1] = v7;
  v8 = unk_27DA2FD00;
  a2[2] = xmmword_27DA2FCF0;
  a2[3] = v8;
  os_unfair_lock_unlock(&_block_invoke_lock_41);
}

void ___LayoutConstants_block_invoke_2_33(void *a1@<X1>, uint64_t a2@<X8>)
{
  v42[2] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v41[0] = &unk_2841833B8;
  v41[1] = &unk_2841833D0;
  v42[0] = &unk_284188D48;
  v42[1] = &unk_284188D48;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v5 scaledValue:v6 withOverrides:9.0];
  v8 = v7;

  v39[0] = &unk_2841833B8;
  v39[1] = &unk_2841833D0;
  v40[0] = &unk_284188D48;
  v40[1] = &unk_284188D48;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:2];
  [v5 scaledValue:v9 withOverrides:8.0];
  v11 = v10;

  v37[0] = &unk_2841833B8;
  v37[1] = &unk_2841833D0;
  v38[0] = &unk_284188D48;
  v38[1] = &unk_284188D48;
  v37[2] = &unk_2841833E8;
  v38[2] = &unk_284188D58;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  [v5 scaledValue:v12 withOverrides:37.5];
  v14 = v13;

  v35[0] = &unk_2841833B8;
  v35[1] = &unk_2841833D0;
  v36[0] = &unk_284188D48;
  v36[1] = &unk_284188D48;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:2];
  [v5 scaledValue:v15 withOverrides:22.5];
  v17 = v16;

  v33[0] = &unk_2841833B8;
  v33[1] = &unk_2841833D0;
  v34[0] = &unk_284188D48;
  v34[1] = &unk_284188D48;
  v33[2] = &unk_2841833E8;
  v34[2] = &unk_284188D68;
  v18 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [v5 scaledValue:v18 withOverrides:12.5];
  v20 = v19;

  v31[0] = &unk_2841833B8;
  v31[1] = &unk_2841833D0;
  v32[0] = &unk_284188D48;
  v32[1] = &unk_284188D48;
  v31[2] = &unk_2841833E8;
  v32[2] = &unk_284188D78;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:3];
  [v5 scaledValue:v21 withOverrides:14.0];
  v23 = v22;

  v29[0] = &unk_2841833B8;
  v29[1] = &unk_2841833D0;
  v30[0] = &unk_284188D48;
  v30[1] = &unk_284188D48;
  v24 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v5 scaledValue:v24 withOverrides:7.0];
  v26 = v25;

  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v28 = v27;

  *a2 = v8;
  *(a2 + 8) = v11;
  *(a2 + 16) = v14;
  *(a2 + 24) = v17;
  *(a2 + 32) = v26;
  *(a2 + 40) = 0x3FECB91F3BBBA140;
  *(a2 + 48) = v20;
  *(a2 + 56) = v23;
  *(a2 + 64) = v8 * v28;
  *(a2 + 72) = v11 * v28;
  *(a2 + 80) = v14 * v28;
  *(a2 + 88) = v17 * v28;
  *(a2 + 96) = v26 * v28;
  *(a2 + 104) = 0x3FECB91F3BBBA140;
  *(a2 + 112) = v20 * v28;
  *(a2 + 120) = v23 * v28;
}

void ___LayoutConstants_block_invoke_40(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v10 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_42);
  if (_block_invoke___cachedDevice_42)
  {
    v3 = _block_invoke___cachedDevice_42 == v10;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v10 version], v4 != _block_invoke___previousCLKDeviceVersion_42))
  {
    _block_invoke___cachedDevice_42 = v10;
    _block_invoke___previousCLKDeviceVersion_42 = [v10 version];
    ___LayoutConstants_block_invoke_2_34(v10, v11);
    xmmword_27DA2FDE8 = v11[8];
    unk_27DA2FDF8 = v11[9];
    xmmword_27DA2FE08 = v11[10];
    xmmword_27DA2FDA8 = v11[4];
    unk_27DA2FDB8 = v11[5];
    xmmword_27DA2FDC8 = v11[6];
    unk_27DA2FDD8 = v11[7];
    _block_invoke_value_30 = v11[0];
    unk_27DA2FD78 = v11[1];
    xmmword_27DA2FD88 = v11[2];
    unk_27DA2FD98 = v11[3];
  }

  v5 = unk_27DA2FDF8;
  a2[8] = xmmword_27DA2FDE8;
  a2[9] = v5;
  a2[10] = xmmword_27DA2FE08;
  v6 = unk_27DA2FDB8;
  a2[4] = xmmword_27DA2FDA8;
  a2[5] = v6;
  v7 = unk_27DA2FDD8;
  a2[6] = xmmword_27DA2FDC8;
  a2[7] = v7;
  v8 = unk_27DA2FD78;
  *a2 = _block_invoke_value_30;
  a2[1] = v8;
  v9 = unk_27DA2FD98;
  a2[2] = xmmword_27DA2FD88;
  a2[3] = v9;
  os_unfair_lock_unlock(&_block_invoke_lock_42);
}

void ___LayoutConstants_block_invoke_2_34(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v27 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [NTKRichComplicationCircularBaseView centerLabelLargeFontSizeForDevice:v4];
  v25 = v5;
  [NTKRichComplicationCircularBaseView centerLabelSmallFontSizeForDevice:v4];
  v24 = v6;
  [NTKRichComplicationCircularBaseView smallLabelLargeFontSizeForDevice:v4];
  v26 = v7;
  [NTKRichComplicationCircularBaseView smallLabelSmallFontSizeForDevice:v4];
  v9 = v8;
  [v27 scaledValue:29.0];
  v11 = v10;
  [v27 scaledValue:3 withOverride:26.0 forSizeClass:29.0];
  v13 = v12;
  [v27 scaledValue:3 withOverride:25.0 forSizeClass:28.0];
  v15 = v14;
  [v27 scaledValue:3 withOverride:37.5 forSizeClass:42.0];
  v17 = v16;
  [v27 scaledValue:3 withOverride:17.5 forSizeClass:20.0];
  v19 = v18;
  [v27 scaledValue:4.0];
  v21 = v20;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v23 = v22;

  *a2 = v25;
  *(a2 + 8) = v24;
  *(a2 + 16) = v11;
  *(a2 + 24) = v15;
  *(a2 + 32) = v13;
  *(a2 + 40) = v26;
  *(a2 + 48) = v9;
  *(a2 + 56) = v17;
  *(a2 + 64) = v19;
  *(a2 + 72) = v21;
  *(a2 + 80) = 0x3FE921FB54442D18;
  *(a2 + 88) = v25 * v23;
  *(a2 + 96) = v24 * v23;
  *(a2 + 104) = v11 * v23;
  *(a2 + 112) = v15 * v23;
  *(a2 + 120) = v13 * v23;
  *(a2 + 128) = v26 * v23;
  *(a2 + 136) = v9 * v23;
  *(a2 + 144) = v17 * v23;
  *(a2 + 152) = v19 * v23;
  *(a2 + 160) = v21 * v23;
  *(a2 + 168) = 0x3FE921FB54442D18;
}

double ___LayoutConstants_block_invoke_41(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_43);
  if (_block_invoke___cachedDevice_43)
  {
    v3 = _block_invoke___cachedDevice_43 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_43))
  {
    v5 = _block_invoke_value_0_11;
  }

  else
  {
    _block_invoke___cachedDevice_43 = v2;
    _block_invoke___previousCLKDeviceVersion_43 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_35(_block_invoke___previousCLKDeviceVersion_43, v2);
    _block_invoke_value_0_11 = v5;
    _block_invoke_value_1_7 = v6;
    _block_invoke_value_2_6 = v7;
    _block_invoke_value_3_3 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_43);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_35(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v4 scaledValue:4.0];
  v6 = v5;
  [v4 scaledValue:3 withOverride:27.0 forSizeClass:31.0];
  CLKComplicationGraphicExtraLargeCircularScalingFactor();

  return v6;
}

uint64_t ___LayoutConstants_block_invoke_42()
{
  _LayoutConstants__constants_0 = 0x4045000000000000;
  _LayoutConstants__constants_1 = 0x403F000000000000;
  result = NTKCScreenStyle();
  v1 = 16.0;
  if (result == 1)
  {
    v1 = 20.0;
  }

  _LayoutConstants__constants_2 = *&v1;
  _LayoutConstants__constants_3 = 0x402E000000000000;
  _LayoutConstants__constants_4 = 0x4028000000000000;
  _LayoutConstants__constants_5 = 0x4039000000000000;
  _LayoutConstants__constants_6 = 0x4028000000000000;
  return result;
}

void ___LayoutConstants_block_invoke_43(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  os_unfair_lock_lock(&_block_invoke_lock_45);
  if (_block_invoke___cachedDevice_45)
  {
    v4 = _block_invoke___cachedDevice_45 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_45))
  {
    _block_invoke___cachedDevice_45 = v3;
    _block_invoke___previousCLKDeviceVersion_45 = [v3 version];
    ___LayoutConstants_block_invoke_47(v3, &v16);
    _block_invoke_value_32 = v16;
    v6 = v18;
    v18 = 0;
    v7 = qword_27DA30098;
    qword_27DA30090 = v17;
    qword_27DA30098 = v6;

    qword_27DA300A0 = v19;
    unk_27DA300A8 = v20;
    v8 = v22;
    v22 = 0;
    v9 = qword_27DA300C0;
    qword_27DA300B8 = v21;
    qword_27DA300C0 = v8;

    qword_27DA300C8 = v23;
  }

  *a2 = _block_invoke_value_32;
  v10 = qword_27DA30098;
  *(a2 + 16) = qword_27DA30090;
  v11 = v10;
  v12 = qword_27DA300A0;
  *(a2 + 24) = v11;
  *(a2 + 32) = v12;
  *(a2 + 40) = unk_27DA300A8;
  v13 = qword_27DA300C0;
  *(a2 + 56) = qword_27DA300B8;
  v14 = v13;
  v15 = qword_27DA300C8;
  *(a2 + 64) = v14;
  *(a2 + 72) = v15;
  os_unfair_lock_unlock(&_block_invoke_lock_45);
}

void ___LayoutConstants_block_invoke_47(void *a1@<X1>, uint64_t a2@<X8>)
{
  v34[3] = *MEMORY[0x277D85DE8];
  v3 = a1;
  *(a2 + 24) = 0;
  *(a2 + 64) = 0;
  v26 = v3;
  v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:? identitySizeClass:?];
  v33[0] = &unk_284183580;
  v33[1] = &unk_284183598;
  v34[0] = &unk_284188EA8;
  v34[1] = &unk_284188EB8;
  v33[2] = &unk_2841835B0;
  v34[2] = &unk_284188EC8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [v4 scaledValue:v5 withOverrides:19.0];
  v7 = v6;

  v31[0] = &unk_284183598;
  v31[1] = &unk_2841835B0;
  v32[0] = &unk_284188ED8;
  v32[1] = &unk_284188EE8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v4 scaledValue:v8 withOverrides:30.5];
  v10 = v9;

  v29[0] = &unk_284183598;
  v29[1] = &unk_2841835B0;
  v30[0] = &unk_284188EF8;
  v30[1] = &unk_284188F08;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v4 scaledValue:v11 withOverrides:38.0];
  v13 = v12;

  [v4 scaledValue:12.0];
  v15 = v14;
  v16 = *MEMORY[0x277D74410];
  v17 = MEMORY[0x277CBB6C0];
  v18 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:? design:?];
  v27[0] = &unk_284183580;
  v27[1] = &unk_284183598;
  v28[0] = &unk_284188F18;
  v28[1] = &unk_284188F18;
  v27[2] = &unk_2841835B0;
  v27[3] = &unk_2841835C8;
  v28[2] = &unk_284188F28;
  v28[3] = &unk_284188F38;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:4];
  [v4 scaledValue:v19 withOverrides:10.0];
  v21 = v20;

  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v23 = v22;
  v24 = v18;
  v25 = [MEMORY[0x277CBBB08] systemFontOfSize:*v17 weight:v15 * v23 design:v16];

  *a2 = v7;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  *(a2 + 24) = v24;
  *(a2 + 32) = v21;
  *(a2 + 40) = v7 * v23;
  *(a2 + 48) = v10 * v23;
  *(a2 + 56) = v13 * v23;
  *(a2 + 64) = v25;
  *(a2 + 72) = v21 * v23;
}

double ___LayoutConstants_block_invoke_44(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_47);
  if (_block_invoke___cachedDevice_47)
  {
    v3 = _block_invoke___cachedDevice_47 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_47))
  {
    v5 = _block_invoke_value_0_12;
  }

  else
  {
    _block_invoke___cachedDevice_47 = v2;
    _block_invoke___previousCLKDeviceVersion_47 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_36(_block_invoke___previousCLKDeviceVersion_47, v2);
    _block_invoke_value_0_12 = v5;
    _block_invoke_value_1_8 = v6;
    _block_invoke_value_2_7 = v7;
    _block_invoke_value_3_4 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_47);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_36(uint64_t a1, uint64_t a2)
{
  v8[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:19.5];
  v4 = v3;
  v7[0] = &unk_2841835E0;
  v7[1] = &unk_2841835F8;
  v8[0] = &unk_284188F48;
  v8[1] = &unk_284188F58;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:2];
  [v2 scaledValue:v5 withOverrides:16.0];

  [v2 scaledValue:3 withOverride:12.0 forSizeClass:13.5];
  [v2 scaledValue:4.5];

  return v4;
}

void ___LayoutConstants_block_invoke_45(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *(a2 + 24) = 0;
  *(a2 + 72) = 0;
  os_unfair_lock_lock(&_block_invoke_lock_48);
  if (_block_invoke___cachedDevice_48)
  {
    v4 = _block_invoke___cachedDevice_48 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_48))
  {
    _block_invoke___cachedDevice_48 = v3;
    _block_invoke___previousCLKDeviceVersion_48 = [v3 version];
    ___LayoutConstants_block_invoke_29(v3, &v13);
    _block_invoke_value_34 = v13;
    v6 = v15;
    v15 = 0;
    v7 = qword_27DA301E8;
    qword_27DA301E0 = v14;
    qword_27DA301E8 = v6;

    xmmword_27DA301F0 = v16;
    unk_27DA30200 = v17;
    v8 = v19;
    v19 = 0;
    v9 = qword_27DA30218;
    qword_27DA30210 = v18;
    qword_27DA30218 = v8;

    xmmword_27DA30220 = v20;
  }

  *a2 = _block_invoke_value_34;
  v10 = qword_27DA301E8;
  *(a2 + 16) = qword_27DA301E0;
  *(a2 + 24) = v10;
  v11 = unk_27DA30200;
  *(a2 + 32) = xmmword_27DA301F0;
  *(a2 + 48) = v11;
  v12 = qword_27DA30218;
  *(a2 + 64) = qword_27DA30210;
  *(a2 + 72) = v12;
  *(a2 + 80) = xmmword_27DA30220;
  os_unfair_lock_unlock(&_block_invoke_lock_48);
}

void ___LayoutConstants_block_invoke_29(void *a1@<X1>, uint64_t a2@<X8>)
{
  v26[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  *(a2 + 24) = 0;
  *(a2 + 72) = 0;
  v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v3 identitySizeClass:2];
  [v4 constantValue:2 withOverride:6.0 forSizeClass:7.0];
  v6 = v5;
  [v4 scaledValue:3 withOverride:31.5 forSizeClass:34.0];
  v8 = v7;
  [v4 scaledValue:38.0];
  v10 = v9;
  v25[0] = &unk_284183610;
  v25[1] = &unk_284183628;
  v26[0] = &unk_284188F68;
  v26[1] = &unk_284188F68;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v26 forKeys:v25 count:2];
  [v4 scaledValue:v11 withOverrides:12.0];
  v13 = v12;

  v14 = *MEMORY[0x277D74410];
  v15 = MEMORY[0x277CBB6C0];
  v16 = [MEMORY[0x277CBBB08] systemFontOfSize:*MEMORY[0x277CBB6C0] weight:v13 design:*MEMORY[0x277D74410]];
  [v4 scaledSize:3 withOverride:28.0 forSizeClass:{14.0, 31.0, 16.0}];
  v18 = v17;
  v20 = v19;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v22 = v21;
  v23 = v16;
  v24 = [MEMORY[0x277CBBB08] systemFontOfSize:*v15 weight:v13 * v22 design:v14];

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v23;
  *(a2 + 32) = v18;
  *(a2 + 40) = v20;
  *(a2 + 48) = v6 * v22;
  *(a2 + 56) = v8 * v22;
  *(a2 + 64) = v10 * v22;
  *(a2 + 72) = v24;
  *(a2 + 80) = v18 * v22;
  *(a2 + 88) = v20 * v22;
}

double ___LayoutConstants_block_invoke_46(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_49);
  if (_block_invoke___cachedDevice_49)
  {
    v3 = _block_invoke___cachedDevice_49 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_49))
  {
    v5 = _block_invoke_value_0_13;
  }

  else
  {
    _block_invoke___cachedDevice_49 = v2;
    _block_invoke___previousCLKDeviceVersion_49 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_37(_block_invoke___previousCLKDeviceVersion_49, v2);
    _block_invoke_value_0_13 = v5;
    _block_invoke_value_1_9 = v6;
    _block_invoke_value_2_8 = v7;
    _block_invoke_value_3_5 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_49);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_37(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:15.5];
  v4 = v3;
  [v2 scaledValue:3 withOverride:44.5 forSizeClass:50.5];
  [v2 scaledValue:62.0];

  return v4;
}

void ___LayoutConstants_block_invoke_2_38(void *a1@<X1>, uint64_t a2@<X8>)
{
  v27[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v4 screenBounds];
  v7 = v6;
  [v4 screenBounds];
  v9 = v7 / v8;
  [v4 screenBounds];
  v11 = v10;

  v12 = v11 - NTKFaceEditingTabsTextSize();
  v13 = v9 * (v12 - NTKFaceEditingFullscreenTabMargin());
  *a2 = v13;
  *(a2 + 8) = 0x4034000000000000;
  v26[0] = &unk_284183640;
  v26[1] = &unk_284183658;
  v27[0] = &unk_284188F78;
  v27[1] = &unk_284188F88;
  v26[2] = &unk_284183670;
  v27[2] = &unk_284188F98;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v5 scaledValue:v14 withOverrides:100.0];
  *(a2 + 32) = v15;

  *(a2 + 40) = xmmword_22DCE8D30;
  v16 = NTKFaceEditingFullscreenKeylineMargin();
  *(a2 + 16) = v13 + (v16 + NTKKeylineWidth()) * -2.0;
  *(a2 + 24) = 0;
  v24[0] = &unk_284183640;
  v24[1] = &unk_284183658;
  v25[0] = &unk_284188FA8;
  v25[1] = &unk_284188FB8;
  v24[2] = &unk_284183670;
  v25[2] = &unk_284188FC8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:3];
  [v5 scaledValue:v17 withOverrides:57.0];
  *(a2 + 56) = v18;

  *(a2 + 64) = 0x4034000000000000;
  v22[0] = &unk_284183640;
  v22[1] = &unk_284183670;
  v23[0] = &unk_284188FD8;
  v23[1] = &unk_284188FE8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v5 scaledValue:v19 withOverrides:-35.5];
  *(a2 + 72) = v20;

  [v5 scaledValue:3 withOverride:42.0 forSizeClass:43.0];
  *(a2 + 80) = v21;
}

void ___LayoutConstants_block_invoke_48(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_53);
  if (_block_invoke___cachedDevice_53)
  {
    v3 = _block_invoke___cachedDevice_53 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_53))
  {
    _block_invoke___cachedDevice_53 = v6;
    _block_invoke___previousCLKDeviceVersion_53 = [v6 version];
    ___LayoutConstants_block_invoke_2_39(v6, v7);
    _block_invoke_value_38 = v7[0];
    unk_27DA303C8 = v7[1];
    xmmword_27DA303D8 = v7[2];
    qword_27DA303E8 = v8;
  }

  v5 = unk_27DA303C8;
  *a2 = _block_invoke_value_38;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27DA303D8;
  *(a2 + 48) = qword_27DA303E8;
  os_unfair_lock_unlock(&_block_invoke_lock_53);
}

void ___LayoutConstants_block_invoke_2_39(uint64_t a1@<X1>, void *a2@<X8>)
{
  v23[2] = *MEMORY[0x277D85DE8];
  a2[5] = 0;
  a2[6] = 0;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:3];
  v22[0] = &unk_284183BC8;
  v22[1] = &unk_284183BE0;
  v23[0] = &unk_284188FF8;
  v23[1] = &unk_284188FF8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v3 scaledValue:v4 withOverrides:6.5];
  *a2 = v5;

  a2[1] = 0x3FF8000000000000;
  v20[0] = &unk_284183BF8;
  v20[1] = &unk_284183BC8;
  v21[0] = &unk_284189008;
  v21[1] = &unk_284189008;
  v20[2] = &unk_284183BE0;
  v20[3] = &unk_284183C10;
  v21[2] = &unk_284189018;
  v21[3] = &unk_284189028;
  v20[4] = &unk_284183C28;
  v20[5] = &unk_284183C40;
  v21[4] = &unk_284189038;
  v21[5] = &unk_284189048;
  v20[6] = &unk_284183C58;
  v20[7] = &unk_284183C70;
  v21[6] = &unk_284189028;
  v21[7] = &unk_284189048;
  v20[8] = &unk_284183C88;
  v21[8] = &unk_284189048;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:9];
  [v3 scaledValue:v6 withOverrides:6.0];
  a2[2] = v7;

  v18[0] = &unk_284183BF8;
  v18[1] = &unk_284183BC8;
  v19[0] = &unk_284189058;
  v19[1] = &unk_284189058;
  v18[2] = &unk_284183BE0;
  v18[3] = &unk_284183C40;
  v19[2] = &unk_284189068;
  v19[3] = &unk_284189078;
  v18[4] = &unk_284183C58;
  v18[5] = &unk_284183C70;
  v19[4] = &unk_284189068;
  v19[5] = &unk_284189078;
  v18[6] = &unk_284183C88;
  v19[6] = &unk_284189078;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v19 forKeys:v18 count:7];
  [v3 scaledValue:v8 withOverrides:6.5];
  a2[3] = v9;

  v16[0] = &unk_284183BF8;
  v16[1] = &unk_284183BC8;
  v17[0] = &unk_284189088;
  v17[1] = &unk_284189088;
  v16[2] = &unk_284183C40;
  v16[3] = &unk_284183C58;
  v17[2] = &unk_284189028;
  v17[3] = &unk_284189088;
  v16[4] = &unk_284183C70;
  v16[5] = &unk_284183C88;
  v17[4] = &unk_284189028;
  v17[5] = &unk_284189028;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v17 forKeys:v16 count:6];
  [v3 constantValue:v10 withOverrides:4.0];
  a2[4] = v11;

  v14[0] = &unk_284183BF8;
  v14[1] = &unk_284183BC8;
  v15[0] = &unk_284189088;
  v15[1] = &unk_284189088;
  v14[2] = &unk_284183C58;
  v14[3] = &unk_284183C70;
  v15[2] = &unk_284189088;
  v15[3] = &unk_284189088;
  v14[4] = &unk_284183C88;
  v15[4] = &unk_284189088;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:5];
  [v3 constantValue:v12 withOverrides:3.0];
  a2[5] = v13;

  a2[6] = 0;
}

void ___LayoutConstants_block_invoke_49(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_55);
  if (_block_invoke___cachedDevice_55)
  {
    v3 = _block_invoke___cachedDevice_55 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke___previousCLKDeviceVersion_55))
  {
    _block_invoke___cachedDevice_55 = v9;
    _block_invoke___previousCLKDeviceVersion_55 = [v9 version];
    ___LayoutConstants_block_invoke_2_40(v9, v10);
    xmmword_27DA304B8 = v10[4];
    unk_27DA304C8 = v10[5];
    xmmword_27DA304D8 = v10[6];
    unk_27DA304E8 = v10[7];
    _block_invoke_value_40 = v10[0];
    unk_27DA30488 = v10[1];
    xmmword_27DA30498 = v10[2];
    unk_27DA304A8 = v10[3];
  }

  v5 = unk_27DA304C8;
  a2[4] = xmmword_27DA304B8;
  a2[5] = v5;
  v6 = unk_27DA304E8;
  a2[6] = xmmword_27DA304D8;
  a2[7] = v6;
  v7 = unk_27DA30488;
  *a2 = _block_invoke_value_40;
  a2[1] = v7;
  v8 = unk_27DA304A8;
  a2[2] = xmmword_27DA30498;
  a2[3] = v8;
  os_unfair_lock_unlock(&_block_invoke_lock_55);
}

void ___LayoutConstants_block_invoke_2_40(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v39[2] = *MEMORY[0x277D85DE8];
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v38[0] = &unk_284183D00;
  v38[1] = &unk_284183D18;
  v39[0] = &unk_2841890B8;
  v39[1] = &unk_2841890C8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v39 forKeys:v38 count:2];
  [v3 scaledValue:v4 withOverrides:19.5];
  *(a2 + 8) = v5;

  v36[0] = &unk_284183D00;
  v36[1] = &unk_284183D18;
  v37[0] = &unk_2841890D8;
  v37[1] = &unk_2841890E8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v3 scaledValue:v6 withOverrides:19.5];
  *(a2 + 16) = v7;

  v34[0] = &unk_284183D00;
  v34[1] = &unk_284183D18;
  v35[0] = &unk_2841890D8;
  v35[1] = &unk_2841890E8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v3 scaledValue:v8 withOverrides:19.5];
  *(a2 + 24) = v9;

  v32[0] = &unk_284183D00;
  v32[1] = &unk_284183D18;
  v33[0] = &unk_2841890F8;
  v33[1] = &unk_284189108;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v3 scaledValue:v10 withOverrides:6.0];
  *(a2 + 32) = v11;

  v30[0] = &unk_284183D00;
  v30[1] = &unk_284183D18;
  v31[0] = &unk_284189118;
  v31[1] = &unk_284189128;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:2];
  [v3 scaledValue:v12 withOverrides:16.5];
  *(a2 + 40) = v13;

  *(a2 + 48) = 0;
  v28[0] = &unk_284183D00;
  v28[1] = &unk_284183D18;
  v29[0] = &unk_284189138;
  v29[1] = &unk_284189148;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v3 scaledValue:v14 withOverrides:7.5];
  *(a2 + 56) = v15;

  [v3 scaledValue:3 withOverride:2.0 forSizeClass:3.0];
  *a2 = v16;
  v26[0] = &unk_284183D00;
  v26[1] = &unk_284183D30;
  v27[0] = &unk_284189158;
  v27[1] = &unk_284189168;
  v26[2] = &unk_284183D18;
  v27[2] = &unk_284189178;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v3 scaledValue:v17 withOverrides:66.0];
  *(a2 + 64) = v18;

  [v3 scaledValue:0 withOverride:13.5 forSizeClass:12.0];
  *(a2 + 120) = v19;
  [v3 scaledValue:0 withOverride:32.0 forSizeClass:28.0];
  *(a2 + 104) = v20;
  *(a2 + 112) = v20;
  v24[0] = &unk_284183D00;
  v24[1] = &unk_284183D30;
  v25[0] = &unk_2841890F8;
  v25[1] = &unk_2841890F8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v3 scaledValue:v21 withOverrides:8.5];
  v23 = v22;

  *(a2 + 72) = 0;
  *(a2 + 80) = v23;
  *(a2 + 88) = 0;
  *(a2 + 96) = v23;
}

double ___LayoutConstants_block_invoke_50(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_56);
  if (_block_invoke___cachedDevice_56)
  {
    v3 = _block_invoke___cachedDevice_56 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_56))
  {
    v5 = _block_invoke_value_0_14;
  }

  else
  {
    _block_invoke___cachedDevice_56 = v2;
    _block_invoke___previousCLKDeviceVersion_56 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_41(_block_invoke___previousCLKDeviceVersion_56, v2);
    _block_invoke_value_0_14 = v5;
    _block_invoke_value_1_10 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_56);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_41(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:15.5];
  v4 = v3;

  return v4;
}

void ___LayoutConstants_block_invoke_51(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  a2[4] = 0;
  a2[5] = 0;
  os_unfair_lock_lock(&_block_invoke_lock_57);
  if (_block_invoke___cachedDevice_57)
  {
    v4 = _block_invoke___cachedDevice_57 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_57))
  {
    _block_invoke___cachedDevice_57 = v3;
    _block_invoke___previousCLKDeviceVersion_57 = [v3 version];
    ___LayoutConstants_block_invoke_85(v3, &v14);
    v6 = v15;
    v15 = 0;
    v7 = qword_27DA30620;
    _block_invoke_value_41 = v14;
    qword_27DA30620 = v6;

    v8 = v16;
    v16 = 0;
    v9 = qword_27DA30628;
    qword_27DA30628 = v8;

    v10 = v18;
    v18 = 0;
    v11 = qword_27DA30638;
    qword_27DA30630 = v17;
    qword_27DA30638 = v10;

    v12 = v19;
    v19 = 0;
    v13 = qword_27DA30640;
    qword_27DA30640 = v12;
  }

  __copy_assignment_8_8_t0w8_s8_s16(a2, &_block_invoke_value_41);
  __copy_assignment_8_8_t0w8_s8_s16((a2 + 3), &qword_27DA30630);
  os_unfair_lock_unlock(&_block_invoke_lock_57);
}

void ___LayoutConstants_block_invoke_85(void *a1@<X1>, void *a2@<X8>)
{
  v22[2] = *MEMORY[0x277D85DE8];
  v3 = a1;
  a2[1] = 0;
  a2[2] = 0;
  a2[4] = 0;
  a2[5] = 0;
  v4 = [MEMORY[0x277CBBAF8] metricsWithDevice:v3 identitySizeClass:2];
  NTKShowGossamerUI(v3);
  v21[0] = &unk_284183DF0;
  v5 = [MEMORY[0x277CCABB0] numberWithDouble:1.5];
  v21[1] = &unk_284183E08;
  v22[0] = v5;
  v6 = [MEMORY[0x277CCABB0] numberWithDouble:2.0];
  v22[1] = v6;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v4 scaledValue:v7 withOverrides:1.5];
  v9 = v8;

  v18 = v9;
  [v4 scaledValue:3 withOverride:6.0 forSizeClass:7.0];
  v15 = v10;
  [v4 setRoundingBehavior:3];
  v19 = [off_27877BEE0 defaultSecondConfigurationForDevice:v3];
  [v19 setHandWidth:2.5];
  [v4 scaledValue:11.0];
  [v19 setHandLength:?];
  [v19 setPegRadius:1.0];
  [v19 setPegStrokeWidth:1.0];
  [v19 setRoundedSecondHand:1];
  [v19 setExcludeSecondTail:1];
  [v19 radialShadowOpacity];
  [v19 setRadialShadowOpacity:v11 * 0.75];
  [v19 dropShadowOpacity];
  [v19 setDropShadowOpacity:v12 * 1.5];
  v20 = [off_27877BEE0 defaultSecondConfigurationForDevice:v3];
  [v20 setHandWidth:2.5];
  [v4 scaledValue:19.5];
  [v20 setHandLength:?];
  [v20 setPegRadius:1.0];
  [v20 setPegStrokeWidth:1.0];
  [v20 setRoundedSecondHand:1];
  [v20 setExcludeSecondTail:1];
  [v20 radialShadowOpacity];
  [v20 setRadialShadowOpacity:v13 * 0.75];
  [v20 dropShadowOpacity];
  [v20 setDropShadowOpacity:v14 * 1.5];
  v16 = [off_27877BEE0 defaultSecondConfigurationForDevice:v3];
  [v16 setHandWidth:6.0];
  [v4 scaledValue:31.0];
  [v16 setHandLength:?];
  [v16 setPegRadius:3.0];
  [v16 setPegStrokeWidth:3.0];
  [v16 setRoundedSecondHand:1];
  [v16 setExcludeSecondTail:1];
  [v16 setRadialShadowOpacity:0.3];
  [v16 setRadialShadowRadius:10.0];
  [v16 setSmoothingRadius:5.0];
  v17 = [off_27877BEE0 defaultSecondConfigurationForDevice:v3];
  [v17 setHandWidth:6.0];
  [v4 scaledValue:3 withOverride:56.0 forSizeClass:60.0];
  [v17 setHandLength:?];
  [v17 setPegRadius:3.0];
  [v17 setPegStrokeWidth:3.0];
  [v17 setRoundedSecondHand:1];
  [v17 setExcludeSecondTail:1];
  [v17 setRadialShadowOpacity:0.3];
  [v17 setRadialShadowRadius:10.0];
  [v17 setSmoothingRadius:5.0];
  __copy_assignment_8_8_t0w8_s8_s16(a2, &v18);
  __copy_assignment_8_8_t0w8_s8_s16((a2 + 3), &v15);
}

void ___LayoutConstants_block_invoke_52(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_2_lock_8);
  if (_block_invoke_2___cachedDevice_8)
  {
    v3 = _block_invoke_2___cachedDevice_8 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke_2___previousCLKDeviceVersion_8))
  {
    _block_invoke_2___cachedDevice_8 = v6;
    _block_invoke_2___previousCLKDeviceVersion_8 = [v6 version];
    ___LayoutConstants_block_invoke_2_42(v6, v7);
    _block_invoke_2_value_6 = v7[0];
    unk_27DA306A0 = v7[1];
    xmmword_27DA306B0 = v7[2];
    qword_27DA306C0 = v8;
  }

  v5 = unk_27DA306A0;
  *a2 = _block_invoke_2_value_6;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27DA306B0;
  *(a2 + 48) = qword_27DA306C0;
  os_unfair_lock_unlock(&_block_invoke_2_lock_8);
}

void ___LayoutConstants_block_invoke_2_42(void *a1@<X1>, double *a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v11 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v5 = NTKWhistlerSubdialComplicationEditingInset(v4);

  *a2 = v5;
  a2[1] = 45.0;
  [v11 scaledValue:38.0];
  *(a2 + 2) = v6;
  [v11 scaledValue:9 withOverride:18.0 forSizeClass:21.0];
  *(a2 + 3) = v7;
  [v11 scaledValue:9 withOverride:15.0 forSizeClass:17.5];
  *(a2 + 4) = v8;
  [v11 scaledValue:9 withOverride:9.0 forSizeClass:10.5];
  *(a2 + 5) = v9;
  [v11 scaledValue:9 withOverride:8.0 forSizeClass:9.5];
  *(a2 + 6) = v10;
}

void ___LayoutConstants_block_invoke_53(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_59);
  if (_block_invoke___cachedDevice_59)
  {
    v4 = _block_invoke___cachedDevice_59 == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke___previousCLKDeviceVersion_59))
  {
    _block_invoke___cachedDevice_59 = v3;
    _block_invoke___previousCLKDeviceVersion_59 = [v3 version];
    ___LayoutConstants_block_invoke_2_43(v3, v6);
    memcpy(&_block_invoke_value_43, v6, 0x1F0uLL);
  }

  memcpy(a2, &_block_invoke_value_43, 0x1F0uLL);
  os_unfair_lock_unlock(&_block_invoke_lock_59);
}

void ___LayoutConstants_block_invoke_2_43(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v198[2] = *MEMORY[0x277D85DE8];
  *(a2 + 464) = 0u;
  *(a2 + 480) = 0u;
  *(a2 + 432) = 0u;
  *(a2 + 448) = 0u;
  *(a2 + 400) = 0u;
  *(a2 + 416) = 0u;
  *(a2 + 368) = 0u;
  *(a2 + 384) = 0u;
  *(a2 + 336) = 0u;
  *(a2 + 352) = 0u;
  *(a2 + 304) = 0u;
  *(a2 + 320) = 0u;
  *(a2 + 272) = 0u;
  *(a2 + 288) = 0u;
  *(a2 + 240) = 0u;
  *(a2 + 256) = 0u;
  *(a2 + 208) = 0u;
  *(a2 + 224) = 0u;
  *(a2 + 176) = 0u;
  *(a2 + 192) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 160) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0u;
  *(a2 + 80) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 48) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 setScale:3 forSizeClass:1.13580247];
  v197[0] = &unk_284183F28;
  v197[1] = &unk_284183F40;
  v198[0] = &unk_284189188;
  v198[1] = &unk_284189198;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v198 forKeys:v197 count:2];
  [v3 scaledValue:v4 withOverrides:6.0];
  *a2 = v5;

  v195[0] = &unk_284183F28;
  v195[1] = &unk_284183F58;
  v196[0] = &unk_2841891A8;
  v196[1] = &unk_2841891B8;
  v195[2] = &unk_284183F40;
  v196[2] = &unk_284183F70;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v196 forKeys:v195 count:3];
  [v3 scaledValue:v6 withOverrides:77.5];
  *(a2 + 8) = v7;

  v193[0] = &unk_284183F28;
  v193[1] = &unk_284183F40;
  v194[0] = &unk_2841891C8;
  v194[1] = &unk_2841891D8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v194 forKeys:v193 count:2];
  [v3 scaledValue:v8 withOverrides:-31.5];
  *(a2 + 144) = 0x3FE0000000000000;
  *(a2 + 152) = v9;

  [v3 constantValue:0 withOverride:0.0 forSizeClass:0.5];
  v11 = v10;
  v191[0] = &unk_284183F28;
  v191[1] = &unk_284183F40;
  v192[0] = &unk_2841891E8;
  v192[1] = &unk_2841891F8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v192 forKeys:v191 count:2];
  [v3 scaledValue:v12 withOverrides:-39.0];
  *(a2 + 160) = v11;
  *(a2 + 168) = v13;

  v189[0] = &unk_284183F28;
  v154 = xmmword_22DCE90F0;
  v14 = [MEMORY[0x277CCAE60] valueWithBytes:&v154 objCType:"{CGPoint=dd}"];
  v190[0] = v14;
  v189[1] = &unk_284183F58;
  v153 = xmmword_22DCE9100;
  v15 = [MEMORY[0x277CCAE60] valueWithBytes:&v153 objCType:"{CGPoint=dd}"];
  v190[1] = v15;
  v189[2] = &unk_284183F40;
  v152 = xmmword_22DCE9110;
  v16 = [MEMORY[0x277CCAE60] valueWithBytes:&v152 objCType:"{CGPoint=dd}"];
  v190[2] = v16;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v190 forKeys:v189 count:3];
  [v3 scaledPoint:v17 withOverrides:{37.5, 59.5}];
  *(a2 + 416) = v18;
  *(a2 + 424) = v19;

  [v3 scaledSize:{24.0, 8.5}];
  *(a2 + 480) = v20;
  *(a2 + 488) = v21;
  [v3 scaledPoint:{9.5, 28.5}];
  __asm { FMOV            V3.2D, #0.5 }

  v28.f64[1] = v27;
  *(a2 + 432) = vaddq_f64(v28, vmulq_f64(*(a2 + 480), _Q3));
  [v3 scaledPoint:3 withOverride:34.5 forSizeClass:{51.0, 37.0, 55.5}];
  *(a2 + 448) = v29;
  *(a2 + 456) = v30;
  v187[0] = &unk_284183F28;
  v151 = xmmword_22DCE9120;
  v31 = [MEMORY[0x277CCAE60] valueWithBytes:&v151 objCType:"{CGSize=dd}"];
  v188[0] = v31;
  v187[1] = &unk_284183F40;
  v150 = xmmword_22DCE9130;
  v32 = [MEMORY[0x277CCAE60] valueWithBytes:&v150 objCType:"{CGSize=dd}"];
  v188[1] = v32;
  v33 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v188 forKeys:v187 count:2];
  [v3 scaledSize:v33 withOverrides:{48.0, 25.0}];
  *(a2 + 176) = v34;
  *(a2 + 184) = v35;

  v185[0] = &unk_284183F28;
  v185[1] = &unk_284183F40;
  v186[0] = &unk_284189208;
  v186[1] = &unk_284189218;
  v36 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v186 forKeys:v185 count:2];
  [v3 scaledValue:v36 withOverrides:78.0];
  *(a2 + 192) = v37;

  [v3 scaledValue:42.0];
  *(a2 + 200) = v38;
  v183[0] = &unk_284183F28;
  v183[1] = &unk_284183F58;
  v184[0] = &unk_284189228;
  v184[1] = &unk_284189238;
  v183[2] = &unk_284183F40;
  v184[2] = &unk_284189248;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v184 forKeys:v183 count:3];
  [v3 scaledValue:v39 withOverrides:69.0];
  *(a2 + 208) = v40;

  v181[0] = &unk_284183F28;
  v181[1] = &unk_284183F40;
  v182[0] = &unk_284189258;
  v182[1] = &unk_284189268;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v182 forKeys:v181 count:2];
  [v3 scaledValue:v41 withOverrides:36.5];
  *(a2 + 216) = v42;

  v179[0] = &unk_284183F28;
  v149 = xmmword_22DCE9140;
  v43 = [MEMORY[0x277CCAE60] valueWithBytes:&v149 objCType:"{CGPoint=dd}"];
  v180[0] = v43;
  v179[1] = &unk_284183F40;
  v148 = xmmword_22DCE9150;
  v44 = [MEMORY[0x277CCAE60] valueWithBytes:&v148 objCType:"{CGPoint=dd}"];
  v180[1] = v44;
  v45 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v180 forKeys:v179 count:2];
  [v3 scaledPoint:v45 withOverrides:{2.0, -64.5}];
  *(a2 + 16) = v46;
  *(a2 + 24) = v47;

  v177[0] = &unk_284183F28;
  v147 = xmmword_22DCE9160;
  v48 = [MEMORY[0x277CCAE60] valueWithBytes:&v147 objCType:"{CGPoint=dd}"];
  v178[0] = v48;
  v177[1] = &unk_284183F40;
  v146 = xmmword_22DCE9170;
  v49 = [MEMORY[0x277CCAE60] valueWithBytes:&v146 objCType:"{CGPoint=dd}"];
  v178[1] = v49;
  v50 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v178 forKeys:v177 count:2];
  [v3 scaledPoint:v50 withOverrides:{60.0, -33.5}];
  *(a2 + 32) = v51;
  *(a2 + 40) = v52;

  v175[0] = &unk_284183F28;
  v145 = xmmword_22DCE9180;
  v53 = [MEMORY[0x277CCAE60] valueWithBytes:&v145 objCType:"{CGPoint=dd}"];
  v176[0] = v53;
  v175[1] = &unk_284183F40;
  v144 = xmmword_22DCE9190;
  v54 = [MEMORY[0x277CCAE60] valueWithBytes:&v144 objCType:"{CGPoint=dd}"];
  v176[1] = v54;
  v55 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v176 forKeys:v175 count:2];
  [v3 scaledPoint:v55 withOverrides:{68.5, 0.5}];
  *(a2 + 48) = v56;
  *(a2 + 56) = v57;

  v173[0] = &unk_284183F28;
  v143 = xmmword_22DCE91A0;
  v58 = [MEMORY[0x277CCAE60] valueWithBytes:&v143 objCType:"{CGPoint=dd}"];
  v174[0] = v58;
  v173[1] = &unk_284183F40;
  v142 = xmmword_22DCE91B0;
  v59 = [MEMORY[0x277CCAE60] valueWithBytes:&v142 objCType:"{CGPoint=dd}"];
  v174[1] = v59;
  v60 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v174 forKeys:v173 count:2];
  [v3 scaledPoint:v60 withOverrides:{60.0, 36.0}];
  *(a2 + 64) = v61;
  *(a2 + 72) = v62;

  v171[0] = &unk_284183F28;
  v141 = xmmword_22DCE91C0;
  v63 = [MEMORY[0x277CCAE60] valueWithBytes:&v141 objCType:"{CGPoint=dd}"];
  v172[0] = v63;
  v171[1] = &unk_284183F40;
  v140 = xmmword_22DCE91D0;
  v64 = [MEMORY[0x277CCAE60] valueWithBytes:&v140 objCType:"{CGPoint=dd}"];
  v172[1] = v64;
  v65 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v172 forKeys:v171 count:2];
  [v3 scaledPoint:v65 withOverrides:{2.0, 64.5}];
  *(a2 + 80) = v66;
  *(a2 + 88) = v67;

  v169[0] = &unk_284183F28;
  v139 = xmmword_22DCE91E0;
  v68 = [MEMORY[0x277CCAE60] valueWithBytes:&v139 objCType:"{CGPoint=dd}"];
  v170[0] = v68;
  v169[1] = &unk_284183F40;
  v138 = xmmword_22DCE91F0;
  v69 = [MEMORY[0x277CCAE60] valueWithBytes:&v138 objCType:"{CGPoint=dd}"];
  v170[1] = v69;
  v70 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v170 forKeys:v169 count:2];
  [v3 scaledPoint:v70 withOverrides:{-55.0, 36.0}];
  *(a2 + 96) = v71;
  *(a2 + 104) = v72;

  v167[0] = &unk_284183F28;
  v137 = xmmword_22DCE9200;
  v73 = [MEMORY[0x277CCAE60] valueWithBytes:&v137 objCType:"{CGPoint=dd}"];
  v168[0] = v73;
  v167[1] = &unk_284183F40;
  v136 = xmmword_22DCE9210;
  v74 = [MEMORY[0x277CCAE60] valueWithBytes:&v136 objCType:"{CGPoint=dd}"];
  v168[1] = v74;
  v75 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v168 forKeys:v167 count:2];
  [v3 scaledPoint:v75 withOverrides:{-66.5, 0.5}];
  *(a2 + 112) = v76;
  *(a2 + 120) = v77;

  v165[0] = &unk_284183F28;
  v135 = xmmword_22DCE9220;
  v78 = [MEMORY[0x277CCAE60] valueWithBytes:&v135 objCType:"{CGPoint=dd}"];
  v166[0] = v78;
  v165[1] = &unk_284183F40;
  v134 = xmmword_22DCE9230;
  v79 = [MEMORY[0x277CCAE60] valueWithBytes:&v134 objCType:"{CGPoint=dd}"];
  v166[1] = v79;
  v80 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v166 forKeys:v165 count:2];
  [v3 scaledPoint:v80 withOverrides:{-54.0, -33.5}];
  *(a2 + 128) = v81;
  *(a2 + 136) = v82;

  v163[0] = &unk_284183F28;
  v133 = xmmword_22DCE9240;
  v83 = [MEMORY[0x277CCAE60] valueWithBytes:&v133 objCType:"{CGPoint=dd}"];
  v164[0] = v83;
  v163[1] = &unk_284183F40;
  v132 = xmmword_22DCE9250;
  v84 = [MEMORY[0x277CCAE60] valueWithBytes:&v132 objCType:"{CGPoint=dd}"];
  v164[1] = v84;
  v85 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v164 forKeys:v163 count:2];
  [v3 scaledPoint:v85 withOverrides:{4.5, -45.0}];
  *(a2 + 224) = v86;
  *(a2 + 232) = v87;

  v161[0] = &unk_284183F28;
  v131 = xmmword_22DCE9260;
  v88 = [MEMORY[0x277CCAE60] valueWithBytes:&v131 objCType:"{CGPoint=dd}"];
  v162[0] = v88;
  v161[1] = &unk_284183F40;
  v130 = xmmword_22DCE9270;
  v89 = [MEMORY[0x277CCAE60] valueWithBytes:&v130 objCType:"{CGPoint=dd}"];
  v162[1] = v89;
  v90 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v162 forKeys:v161 count:2];
  [v3 scaledPoint:v90 withOverrides:{40.0, 20.0}];
  *(a2 + 240) = v91;
  *(a2 + 248) = v92;

  v159[0] = &unk_284183F28;
  v129 = xmmword_22DCE9280;
  v93 = [MEMORY[0x277CCAE60] valueWithBytes:&v129 objCType:"{CGPoint=dd}"];
  v160[0] = v93;
  v159[1] = &unk_284183F40;
  v128 = xmmword_22DCE9290;
  v94 = [MEMORY[0x277CCAE60] valueWithBytes:&v128 objCType:"{CGPoint=dd}"];
  v160[1] = v94;
  v95 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v160 forKeys:v159 count:2];
  [v3 scaledPoint:v95 withOverrides:{-5.5, 51.5}];
  *(a2 + 256) = v96;
  *(a2 + 264) = v97;

  v157[0] = &unk_284183F28;
  v127 = xmmword_22DCE92A0;
  v98 = [MEMORY[0x277CCAE60] valueWithBytes:&v127 objCType:"{CGPoint=dd}"];
  v158[0] = v98;
  v157[1] = &unk_284183F40;
  v126 = xmmword_22DCE92B0;
  v99 = [MEMORY[0x277CCAE60] valueWithBytes:&v126 objCType:"{CGPoint=dd}"];
  v158[1] = v99;
  v100 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v158 forKeys:v157 count:2];
  [v3 scaledPoint:v100 withOverrides:{-37.0, 20.0}];
  *(a2 + 272) = v101;
  *(a2 + 280) = v102;

  [v3 scaledPoint:{56.5, 43.5}];
  *(a2 + 288) = v103;
  *(a2 + 296) = v104;
  [v3 scaledPoint:{73.5, 78.0}];
  *(a2 + 304) = v105;
  *(a2 + 312) = v106;
  [v3 scaledPoint:{50.0, 95.0}];
  *(a2 + 320) = v107;
  *(a2 + 328) = v108;
  [v3 scaledPoint:{34.5, 78.0}];
  *(a2 + 336) = v109;
  *(a2 + 344) = v110;
  [v3 scaledPoint:3 withOverride:3.0 forSizeClass:{-38.0, -3.5, -39.5}];
  *(a2 + 352) = v111;
  *(a2 + 360) = v112;
  [v3 scaledPoint:3 withOverride:34.0 forSizeClass:{17.5, 35.5, 18.5}];
  *(a2 + 368) = v113;
  *(a2 + 376) = v114;
  [v3 scaledPoint:3 withOverride:-5.0 forSizeClass:{45.0, -5.5, 47.0}];
  *(a2 + 384) = v115;
  *(a2 + 392) = v116;
  [v3 scaledPoint:3 withOverride:-31.5 forSizeClass:{17.5, -33.0, 18.0}];
  *(a2 + 400) = v117;
  *(a2 + 408) = v118;
  v155[0] = &unk_284183F28;
  v125 = xmmword_22DCE92C0;
  v119 = [MEMORY[0x277CCAE60] valueWithBytes:&v125 objCType:"{CGSize=dd}"];
  v155[1] = &unk_284183F40;
  v156[0] = v119;
  v124 = xmmword_22DCE92D0;
  v120 = [MEMORY[0x277CCAE60] valueWithBytes:&v124 objCType:"{CGSize=dd}"];
  v156[1] = v120;
  v121 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v156 forKeys:v155 count:2];
  [v3 scaledSize:v121 withOverrides:{40.0, 14.5}];
  *(a2 + 464) = v122;
  *(a2 + 472) = v123;
}

double ___LayoutConstants_block_invoke_54(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke_lock);
  if (NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke___cachedDevice)
  {
    v3 = NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke_value_0;
  }

  else
  {
    NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke___cachedDevice = v2;
    NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke___previousCLKDeviceVersion = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_44(NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke___previousCLKDeviceVersion, v2);
    NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke_value_0 = v5;
  }

  os_unfair_lock_unlock(&NTKStopwatchBezelComplicationMetadataTimeTextProviderKey_block_invoke_lock);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_44(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:3 withOverride:67.0 forSizeClass:73.0];
  v4 = v3;

  return v4;
}

void ___LayoutConstants_block_invoke_55(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_64);
  if (_block_invoke___cachedDevice_64)
  {
    v3 = _block_invoke___cachedDevice_64 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_64))
  {
    _block_invoke___cachedDevice_64 = v6;
    _block_invoke___previousCLKDeviceVersion_64 = [v6 version];
    ___LayoutConstants_block_invoke_2_45(v6, v7);
    _block_invoke_value_47 = v7[0];
    *algn_27DA313F0 = v7[1];
    xmmword_27DA31400 = v7[2];
  }

  v5 = *algn_27DA313F0;
  *a2 = _block_invoke_value_47;
  a2[1] = v5;
  a2[2] = xmmword_27DA31400;
  os_unfair_lock_unlock(&_block_invoke_lock_64);
}

void ___LayoutConstants_block_invoke_2_45(uint64_t a1@<X1>, void *a2@<X8>)
{
  v24[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v23[0] = &unk_284185698;
  v23[1] = &unk_2841856B0;
  v24[0] = &unk_284189408;
  v24[1] = &unk_284189418;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v24 forKeys:v23 count:2];
  [v3 scaledValue:v4 withOverrides:16.5];
  *a2 = v5;

  v21[0] = &unk_284185698;
  v21[1] = &unk_2841856C8;
  v22[0] = &unk_284189428;
  v22[1] = &unk_284189438;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v22 forKeys:v21 count:2];
  [v3 scaledValue:v6 withOverrides:8.5];
  a2[1] = v7;

  v19[0] = &unk_284185698;
  v19[1] = &unk_2841856C8;
  v20[0] = &unk_284189448;
  v20[1] = &unk_284189448;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v20 forKeys:v19 count:2];
  [v3 scaledValue:v8 withOverrides:8.5];
  a2[2] = v9;

  [v3 scaledValue:9.0];
  a2[3] = v10;
  v17[0] = &unk_284185698;
  v17[1] = &unk_2841856B0;
  v18[0] = &unk_284189458;
  v18[1] = &unk_284189428;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:2];
  [v3 scaledValue:v11 withOverrides:4.0];
  a2[4] = v12;

  v15[0] = &unk_284185698;
  v15[1] = &unk_2841856B0;
  v16[0] = &unk_284189468;
  v16[1] = &unk_284189478;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:2];
  [v3 scaledValue:v13 withOverrides:111.0];
  a2[5] = v14;
}

double ___LayoutConstants_block_invoke_56(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock_13);
  if (_block_invoke_2___cachedDevice_13)
  {
    v3 = _block_invoke_2___cachedDevice_13 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke_2___previousCLKDeviceVersion_13))
  {
    v5 = _block_invoke_2_value_0_1;
  }

  else
  {
    _block_invoke_2___cachedDevice_13 = v2;
    _block_invoke_2___previousCLKDeviceVersion_13 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_46(_block_invoke_2___previousCLKDeviceVersion_13, v2);
    _block_invoke_2_value_0_1 = v5;
    _block_invoke_2_value_1_1 = v6;
    _block_invoke_2_value_2_0 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_2_lock_13);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_46(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v7[0] = &unk_2841858D8;
  v7[1] = &unk_2841858F0;
  v8[0] = &unk_284189598;
  v8[1] = &unk_2841895A8;
  v7[2] = &unk_284185908;
  v7[3] = &unk_284185920;
  v8[2] = &unk_2841895A8;
  v8[3] = &unk_2841895A8;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v8 forKeys:v7 count:4];
  [v2 scaledValue:v3 withOverrides:13.0];
  v5 = v4;

  if (CLKLanguageIsTallScript())
  {
    v5 = v5 + -1.0;
  }

  [v2 scaledValue:11.0];
  [v2 scaledValue:5.0];

  return v5;
}

double ___LayoutConstants_block_invoke_57(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_68);
  if (_block_invoke___cachedDevice_68)
  {
    v3 = _block_invoke___cachedDevice_68 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_68))
  {
    v5 = *&_block_invoke_value_0_16;
  }

  else
  {
    _block_invoke___cachedDevice_68 = v2;
    _block_invoke___previousCLKDeviceVersion_68 = [v2 version];
    CLKValueForDeviceMetrics();
    v5 = *&v6;
    _block_invoke_value_0_16 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_68);

  return v5;
}

void ___LayoutConstants_block_invoke_58(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v11 = a1;
  os_unfair_lock_lock(&NTKSolarComplicationUseIdealizedTimeKey_block_invoke_lock);
  if (NTKSolarComplicationUseIdealizedTimeKey_block_invoke___cachedDevice)
  {
    v3 = NTKSolarComplicationUseIdealizedTimeKey_block_invoke___cachedDevice == v11;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v11 version], v4 != NTKSolarComplicationUseIdealizedTimeKey_block_invoke___previousCLKDeviceVersion))
  {
    NTKSolarComplicationUseIdealizedTimeKey_block_invoke___cachedDevice = v11;
    NTKSolarComplicationUseIdealizedTimeKey_block_invoke___previousCLKDeviceVersion = [v11 version];
    ___LayoutConstants_block_invoke_2_47(v11, v12);
    xmmword_27DA317D0 = v12[8];
    unk_27DA317E0 = v12[9];
    xmmword_27DA317F0 = v12[10];
    unk_27DA31800 = v12[11];
    xmmword_27DA31790 = v12[4];
    unk_27DA317A0 = v12[5];
    xmmword_27DA317B0 = v12[6];
    unk_27DA317C0 = v12[7];
    NTKSolarComplicationUseIdealizedTimeKey_block_invoke_value = v12[0];
    unk_27DA31760 = v12[1];
    xmmword_27DA31770 = v12[2];
    unk_27DA31780 = v12[3];
  }

  v5 = unk_27DA317E0;
  a2[8] = xmmword_27DA317D0;
  a2[9] = v5;
  v6 = unk_27DA31800;
  a2[10] = xmmword_27DA317F0;
  a2[11] = v6;
  v7 = unk_27DA317A0;
  a2[4] = xmmword_27DA31790;
  a2[5] = v7;
  v8 = unk_27DA317C0;
  a2[6] = xmmword_27DA317B0;
  a2[7] = v8;
  v9 = unk_27DA31760;
  *a2 = NTKSolarComplicationUseIdealizedTimeKey_block_invoke_value;
  a2[1] = v9;
  v10 = unk_27DA31780;
  a2[2] = xmmword_27DA31770;
  a2[3] = v10;
  os_unfair_lock_unlock(&NTKSolarComplicationUseIdealizedTimeKey_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_47(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v24 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v5 = NTKWhistlerSubdialComplicationContentDiameter(v4);
  v6 = NTKWhistlerSubdialComplicationContentDiameter(v4) * 0.5;
  v7 = NTKWhistlerSubdialComplicationContentDiameter(v4);
  [v24 scaledValue:3 withOverride:26.0 forSizeClass:29.0];
  v22 = v8;
  [v24 scaledValue:4.5];
  v10 = v9;
  [v24 scaledValue:4.0];
  v12 = v11;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v23 = v13;
  v14 = NTKGraphicExtraLargeComplicationContentDiameter(v4);
  v21 = NTKGraphicExtraLargeComplicationContentDiameter(v4);

  *a2 = v5;
  *(a2 + 8) = 0x3FF8000000000000;
  *(a2 + 16) = v7;
  *(a2 + 24) = v22;
  *(a2 + 32) = v6;
  *(a2 + 40) = 0x3FF0000000000000;
  *(a2 + 48) = v10;
  *(a2 + 56) = 0x3FF0000000000000;
  *(a2 + 64) = v12;
  *(a2 + 72) = vdupq_n_s64(0x3FE3333333333333uLL);
  *(a2 + 88) = 0x3FD6666666666666;
  *(a2 + 96) = v14;
  *(a2 + 104) = v23 * 1.5;
  *(a2 + 112) = v7 * v23;
  v15.f64[0] = v22;
  v15.f64[1] = v21;
  __asm { FMOV            V0.2D, #0.5 }

  _Q0.f64[0] = v23;
  *(a2 + 120) = vmulq_f64(v15, _Q0);
  *(a2 + 136) = v23;
  *(a2 + 144) = v10 * v23;
  *(a2 + 152) = v23;
  *(a2 + 160) = v12 * v23;
  *(a2 + 168) = v23 * 0.6;
  *(a2 + 176) = v23 * 0.6;
  *(a2 + 184) = 0x3FD6666666666666;
}

void ___LayoutConstants_block_invoke_59(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&NTKSimpleTextComplicationTypeMetadataKey_block_invoke_lock);
  if (NTKSimpleTextComplicationTypeMetadataKey_block_invoke___cachedDevice)
  {
    v3 = NTKSimpleTextComplicationTypeMetadataKey_block_invoke___cachedDevice == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != NTKSimpleTextComplicationTypeMetadataKey_block_invoke___previousCLKDeviceVersion))
  {
    NTKSimpleTextComplicationTypeMetadataKey_block_invoke___cachedDevice = v6;
    NTKSimpleTextComplicationTypeMetadataKey_block_invoke___previousCLKDeviceVersion = [v6 version];
    ___LayoutConstants_block_invoke_2_48(v6, v7);
    NTKSimpleTextComplicationTypeMetadataKey_block_invoke_value = v7[0];
    unk_27DA31838 = v7[1];
    qword_27DA31848 = v8;
  }

  v5 = unk_27DA31838;
  *a2 = NTKSimpleTextComplicationTypeMetadataKey_block_invoke_value;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA31848;
  os_unfair_lock_unlock(&NTKSimpleTextComplicationTypeMetadataKey_block_invoke_lock);
}

void ___LayoutConstants_block_invoke_2_48(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v11 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v11 scaledValue:15.5];
  *a2 = v3;
  [v11 scaledValue:3 withOverride:6.0 forSizeClass:8.0];
  *(a2 + 24) = v4;
  __asm { FMOV            V0.2D, #10.0 }

  *(a2 + 8) = _Q0;
  [v11 scaledValue:3 withOverride:67.0 forSizeClass:73.0];
  *(a2 + 32) = v10;
}

double ___LayoutConstants_block_invoke_60(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_69);
  if (_block_invoke___cachedDevice_69)
  {
    v3 = _block_invoke___cachedDevice_69 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_69))
  {
    v5 = _block_invoke_value_0_17;
  }

  else
  {
    _block_invoke___cachedDevice_69 = v2;
    _block_invoke___previousCLKDeviceVersion_69 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_49(_block_invoke___previousCLKDeviceVersion_69, v2);
    _block_invoke_value_0_17 = v5;
    _block_invoke_value_1_12 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_69);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_49(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:15.5];
  v4 = v3;
  [v2 scaledValue:3 withOverride:6.0 forSizeClass:8.0];

  return v4;
}

void ___LayoutConstants_block_invoke_61(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_70);
  if (_block_invoke___cachedDevice_70)
  {
    v3 = _block_invoke___cachedDevice_70 == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != _block_invoke___previousCLKDeviceVersion_70))
  {
    _block_invoke___cachedDevice_70 = v9;
    _block_invoke___previousCLKDeviceVersion_70 = [v9 version];
    ___LayoutConstants_block_invoke_2_50(v9, v10);
    xmmword_27DA318D0 = v10[4];
    unk_27DA318E0 = v10[5];
    xmmword_27DA318F0 = v10[6];
    unk_27DA31900 = v10[7];
    _block_invoke_value_51 = v10[0];
    unk_27DA318A0 = v10[1];
    xmmword_27DA318B0 = v10[2];
    unk_27DA318C0 = v10[3];
  }

  v5 = unk_27DA318E0;
  a2[4] = xmmword_27DA318D0;
  a2[5] = v5;
  v6 = unk_27DA31900;
  a2[6] = xmmword_27DA318F0;
  a2[7] = v6;
  v7 = unk_27DA318A0;
  *a2 = _block_invoke_value_51;
  a2[1] = v7;
  v8 = unk_27DA318C0;
  a2[2] = xmmword_27DA318B0;
  a2[3] = v8;
  os_unfair_lock_unlock(&_block_invoke_lock_70);
}

void ___LayoutConstants_block_invoke_2_50(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v21 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v21 scaledValue:9.0];
  v6 = v5;
  [v21 scaledValue:9.0];
  v8 = v7;
  [v21 scaledValue:36.0];
  v10 = v9;
  [v21 scaledValue:22.5];
  v12 = v11;
  [v21 scaledValue:10.0];
  v14 = v13;
  [v21 scaledValue:17.0];
  v16 = v15;
  [v21 scaledValue:4.0];
  v18 = v17;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v20 = v19;

  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v10;
  *(a2 + 24) = v12;
  *(a2 + 32) = v18;
  *(a2 + 40) = 0x3FEE76C4090CD1D0;
  *(a2 + 48) = v14;
  *(a2 + 56) = v16;
  *(a2 + 64) = v6 * v20;
  *(a2 + 72) = v8 * v20;
  *(a2 + 80) = v10 * v20;
  *(a2 + 88) = v12 * v20;
  *(a2 + 96) = v18 * v20;
  *(a2 + 104) = 0x3FEE76C4090CD1D0;
  *(a2 + 112) = v14 * v20;
  *(a2 + 120) = v16 * v20;
}

void ___LayoutConstants_block_invoke_62(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_71);
  if (_block_invoke___cachedDevice_71)
  {
    v3 = _block_invoke___cachedDevice_71 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_71))
  {
    _block_invoke___cachedDevice_71 = v7;
    _block_invoke___previousCLKDeviceVersion_71 = [v7 version];
    ___LayoutConstants_block_invoke_2_51(v7, v8);
    _block_invoke_value_52 = v8[0];
    unk_27DA31980 = v8[1];
    xmmword_27DA31990 = v8[2];
    unk_27DA319A0 = v8[3];
  }

  v5 = unk_27DA31980;
  *a2 = _block_invoke_value_52;
  a2[1] = v5;
  v6 = unk_27DA319A0;
  a2[2] = xmmword_27DA31990;
  a2[3] = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_71);
}

void ___LayoutConstants_block_invoke_2_51(uint64_t a1@<X1>, void *a2@<X8>)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  v12[0] = &unk_2841859B0;
  v12[1] = &unk_2841859C8;
  v13[0] = &unk_2841895B8;
  v13[1] = &unk_2841895B8;
  v4 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];
  [v3 scaledValue:v4 withOverrides:8.5];
  v6 = v5;

  *a2 = 0;
  a2[1] = v6;
  a2[2] = 0;
  a2[3] = v6;
  v10[0] = &unk_2841859B0;
  v10[1] = &unk_2841859E0;
  v11[0] = &unk_2841895C8;
  v11[1] = &unk_2841895D8;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v3 scaledValue:v7 withOverrides:15.5];
  v9 = v8;

  a2[4] = 0;
  a2[5] = v9;
  a2[6] = 0;
  a2[7] = v9;
}

double ___LayoutConstants_block_invoke_63(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_72);
  if (_block_invoke___cachedDevice_72)
  {
    v3 = _block_invoke___cachedDevice_72 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_72))
  {
    v5 = _block_invoke_value_0_18;
  }

  else
  {
    _block_invoke___cachedDevice_72 = v2;
    _block_invoke___previousCLKDeviceVersion_72 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2(_block_invoke___previousCLKDeviceVersion_72, v2);
    _block_invoke_value_0_18 = v5;
    _block_invoke_value_1_13 = v6;
    _block_invoke_value_2_10 = v7;
    _block_invoke_value_3_6 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_72);

  return *&v5;
}

double ___LayoutConstants_block_invoke_64(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_73);
  if (_block_invoke___cachedDevice_73)
  {
    v3 = _block_invoke___cachedDevice_73 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_73))
  {
    v5 = *&_block_invoke_value_0_19;
  }

  else
  {
    _block_invoke___cachedDevice_73 = v2;
    _block_invoke___previousCLKDeviceVersion_73 = [v2 version];
    v5 = NTKWhistlerLargeRectangularComplicationSize(v2);
    _block_invoke_value_0_19 = *&v5;
    _block_invoke_value_1_14 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_73);

  return v5;
}

double ___LayoutConstants_block_invoke_65(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_74);
  if (_block_invoke___cachedDevice_74)
  {
    v3 = _block_invoke___cachedDevice_74 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_74))
  {
    v5 = _block_invoke_value_0_20;
  }

  else
  {
    _block_invoke___cachedDevice_74 = v2;
    _block_invoke___previousCLKDeviceVersion_74 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_52(_block_invoke___previousCLKDeviceVersion_74, v2);
    _block_invoke_value_0_20 = v5;
    _block_invoke_value_1_15 = v6;
    _block_invoke_value_2_11 = v7;
    _block_invoke_value_3_7 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_74);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_52(uint64_t a1, void *a2)
{
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [NTKAnalogUtilities largeDialDiameterForDevice:v3];
  v6 = v5;

  [v4 scaledValue:3 withOverride:17.0 forSizeClass:19.0];
  CLKDegreesToRadians();
  CLKDegreesToRadians();

  return v6;
}

void ___LayoutConstants_block_invoke_66(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_75);
  if (_block_invoke___cachedDevice_75)
  {
    v3 = _block_invoke___cachedDevice_75 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_75))
  {
    _block_invoke___cachedDevice_75 = v6;
    _block_invoke___previousCLKDeviceVersion_75 = [v6 version];
    ___LayoutConstants_block_invoke_2_53(v6, v7);
    _block_invoke_value_53 = v7[0];
    unk_27DA31AE0 = v7[1];
    xmmword_27DA31AF0 = v7[2];
    qword_27DA31B00 = v8;
  }

  v5 = unk_27DA31AE0;
  *a2 = _block_invoke_value_53;
  *(a2 + 16) = v5;
  *(a2 + 32) = xmmword_27DA31AF0;
  *(a2 + 48) = qword_27DA31B00;
  os_unfair_lock_unlock(&_block_invoke_lock_75);
}

void ___LayoutConstants_block_invoke_2_53(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 8) = 0x4010000000000000;
  *(a2 + 24) = 0x4008000000000000;
  *(a2 + 40) = 0x4008000000000000;
  *(a2 + 48) = 0;
  v9 = v3;
  v4 = [v3 deviceCategory];
  if ((v4 - 3) < 4)
  {
    *a2 = 0x401C000000000000;
    *(a2 + 16) = 0x401C000000000000;
    *(a2 + 32) = 0x4014000000000000;
    v5 = v9;
LABEL_3:
    [v5 screenCornerRadius];
    v7 = v9;
LABEL_4:
    *(a2 + 48) = v6;
    goto LABEL_5;
  }

  if (v4 == 2)
  {
    *a2 = 0x4026000000000000;
    *(a2 + 16) = 0x4026000000000000;
    *(a2 + 32) = 0x401C000000000000;
    v5 = v9;
    goto LABEL_3;
  }

  v8 = v4 == 1;
  v7 = v9;
  if (v8)
  {
    *a2 = 0x4026000000000000;
    *(a2 + 16) = 0x4028000000000000;
    *(a2 + 32) = 0x4020000000000000;
    v6 = 12.0;
    goto LABEL_4;
  }

LABEL_5:
}

void ___LayoutConstants_block_invoke_67(void *a1@<X1>, uint64_t a2@<X8>)
{
  v10 = a1;
  os_unfair_lock_lock(&_block_invoke_2_lock_14);
  if (_block_invoke_2___cachedDevice_14)
  {
    v3 = _block_invoke_2___cachedDevice_14 == v10;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v10 version], v4 != _block_invoke_2___previousCLKDeviceVersion_14))
  {
    _block_invoke_2___cachedDevice_14 = v10;
    _block_invoke_2___previousCLKDeviceVersion_14 = [v10 version];
    ___LayoutConstants_block_invoke_2_54(v10, v11);
    xmmword_27DA31BF0 = v11[8];
    unk_27DA31C00 = v11[9];
    qword_27DA31C10 = v12;
    xmmword_27DA31BB0 = v11[4];
    unk_27DA31BC0 = v11[5];
    xmmword_27DA31BD0 = v11[6];
    unk_27DA31BE0 = v11[7];
    _block_invoke_2_value_11 = v11[0];
    unk_27DA31B80 = v11[1];
    xmmword_27DA31B90 = v11[2];
    unk_27DA31BA0 = v11[3];
  }

  v5 = unk_27DA31C00;
  *(a2 + 128) = xmmword_27DA31BF0;
  *(a2 + 144) = v5;
  *(a2 + 160) = qword_27DA31C10;
  v6 = unk_27DA31BC0;
  *(a2 + 64) = xmmword_27DA31BB0;
  *(a2 + 80) = v6;
  v7 = unk_27DA31BE0;
  *(a2 + 96) = xmmword_27DA31BD0;
  *(a2 + 112) = v7;
  v8 = unk_27DA31B80;
  *a2 = _block_invoke_2_value_11;
  *(a2 + 16) = v8;
  v9 = unk_27DA31BA0;
  *(a2 + 32) = xmmword_27DA31B90;
  *(a2 + 48) = v9;
  os_unfair_lock_unlock(&_block_invoke_2_lock_14);
}

void ___LayoutConstants_block_invoke_2_54(void *a1@<X1>, uint64_t a2@<X8>)
{
  v48[3] = *MEMORY[0x277D85DE8];
  *(a2 + 160) = 0;
  *(a2 + 128) = 0u;
  *(a2 + 144) = 0u;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 64) = 0u;
  *(a2 + 80) = 0u;
  v3 = MEMORY[0x277CBBAF8];
  v34 = a1;
  v4 = [v3 metricsWithDevice:v34 identitySizeClass:2];
  [NTKAnalogUtilities whistlerMediumDialDiameterForDevice:v34];
  *a2 = v5;
  v47[0] = &unk_284185A88;
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{15.5, 16.0}];
  v48[0] = v6;
  v47[1] = &unk_284185AA0;
  v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{15.5, 16.0}];
  v48[1] = v7;
  v47[2] = &unk_284185AB8;
  v8 = [MEMORY[0x277CCAE60] valueWithCGSize:{16.0, 15.0}];
  v48[2] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v48 forKeys:v47 count:3];
  [v4 scaledSize:v9 withOverrides:{13.0, 14.0}];
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;

  v45[0] = &unk_284185A88;
  v45[1] = &unk_284185AD0;
  v46[0] = &unk_2841895E8;
  v46[1] = &unk_2841895F8;
  v45[2] = &unk_284185AE8;
  v45[3] = &unk_284185AA0;
  v46[2] = &unk_284189608;
  v46[3] = &unk_284189618;
  v45[4] = &unk_284185B00;
  v45[5] = &unk_284185B18;
  v46[4] = &unk_284189628;
  v46[5] = &unk_284189618;
  v45[6] = &unk_284185AB8;
  v46[6] = &unk_284189638;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v46 forKeys:v45 count:7];
  [v4 scaledValue:v12 withOverrides:5.0];
  *(a2 + 24) = v13;

  v43[0] = &unk_284185A88;
  v43[1] = &unk_284185AA0;
  v44[0] = &unk_284189648;
  v44[1] = &unk_284189658;
  v43[2] = &unk_284185B00;
  v43[3] = &unk_284185B18;
  v44[2] = &unk_284189638;
  v44[3] = &unk_284189658;
  v43[4] = &unk_284185AB8;
  v44[4] = &unk_284189668;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v44 forKeys:v43 count:5];
  [v4 scaledValue:v14 withOverrides:15.0];
  *(a2 + 32) = v15;

  [v4 scaledValue:3 withOverride:42.0 forSizeClass:47.0];
  *(a2 + 40) = v16;
  *(a2 + 48) = NTKWhistlerSubdialComplicationContentDiameter(v34);
  v41[0] = &unk_284185A88;
  v41[1] = &unk_284185AB8;
  v42[0] = &unk_284189678;
  v42[1] = &unk_284189688;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v42 forKeys:v41 count:2];
  [v4 scaledValue:v17 withOverrides:69.0];
  *(a2 + 56) = v18;

  v39[0] = &unk_284185A88;
  v39[1] = &unk_284185AD0;
  v40[0] = &unk_2841895E8;
  v40[1] = &unk_284189698;
  v39[2] = &unk_284185AE8;
  v39[3] = &unk_284185AA0;
  v40[2] = &unk_2841896A8;
  v40[3] = &unk_284189618;
  v39[4] = &unk_284185B00;
  v39[5] = &unk_284185B18;
  v40[4] = &unk_284189698;
  v40[5] = &unk_284189618;
  v39[6] = &unk_284185AB8;
  v40[6] = &unk_284189638;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v40 forKeys:v39 count:7];
  [v4 scaledValue:v19 withOverrides:6.0];
  *(a2 + 64) = v20;

  __asm { FMOV            V0.2D, #4.0 }

  *(a2 + 72) = _Q0;
  *(a2 + 88) = _Q0;
  v37[0] = &unk_284185A88;
  v37[1] = &unk_284185AA0;
  v38[0] = &unk_2841896B8;
  v38[1] = &unk_2841896C8;
  v37[2] = &unk_284185B00;
  v37[3] = &unk_284185B18;
  v38[2] = &unk_2841896B8;
  v38[3] = &unk_2841896D8;
  v37[4] = &unk_284185AB8;
  v38[4] = &unk_2841896A8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:5];
  [v4 scaledValue:v26 withOverrides:0.5];
  *(a2 + 104) = v27;

  v35[0] = &unk_284185A88;
  v35[1] = &unk_284185AA0;
  v36[0] = &unk_2841896E8;
  v36[1] = &unk_2841896C8;
  v35[2] = &unk_284185B00;
  v35[3] = &unk_284185B18;
  v36[2] = &unk_2841896E8;
  v36[3] = &unk_2841896A8;
  v35[4] = &unk_284185AB8;
  v36[4] = &unk_2841896F8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:5];
  [v4 scaledValue:v28 withOverrides:2.0];
  *(a2 + 112) = v29;

  [v4 scaledValue:3 withOverride:188.0 forSizeClass:213.0];
  *(a2 + 120) = v30;
  *(a2 + 128) = xmmword_22DCE8950;
  [v4 scaledValue:3 withOverride:-23.0 forSizeClass:-26.0];
  *(a2 + 144) = v31;
  *(a2 + 152) = 0x4020000000000000;
  [v34 screenBounds];
  +[NTKGossamerColorPalette contentScaleForTintedBackground];
  CLKFloorForDevice();
  v33 = v32;

  *(a2 + 160) = v33;
}

void ___LayoutConstants_block_invoke_68(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_77);
  if (_block_invoke___cachedDevice_77)
  {
    v3 = _block_invoke___cachedDevice_77 == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != _block_invoke___previousCLKDeviceVersion_77))
  {
    _block_invoke___cachedDevice_77 = v5;
    _block_invoke___previousCLKDeviceVersion_77 = [v5 version];
    ___LayoutConstants_block_invoke_2_55(v5, __src);
    memcpy(&_block_invoke_value_54, __src, 0x118uLL);
  }

  memcpy(a2, &_block_invoke_value_54, 0x118uLL);
  os_unfair_lock_unlock(&_block_invoke_lock_77);
}

void ___LayoutConstants_block_invoke_2_55(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v12 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v12 setRoundingBehavior:3];
  *a2 = 0x401A000000000000;
  [v12 scaledValue:3 withOverride:22.5 forSizeClass:25.75];
  *(a2 + 8) = v3;
  *(a2 + 16) = xmmword_22DCE9850;
  *(a2 + 32) = xmmword_22DCE7A50;
  *(a2 + 48) = xmmword_22DCE9860;
  *(a2 + 64) = xmmword_22DCE9870;
  __asm { FMOV            V0.2D, #1.0 }

  v11 = _Q0;
  *(a2 + 80) = _Q0;
  *(a2 + 96) = 0x401A000000000000;
  [v12 scaledValue:3 withOverride:41.5 forSizeClass:47.0];
  *(a2 + 104) = v9;
  *(a2 + 112) = xmmword_22DCE9880;
  *(a2 + 128) = xmmword_22DCE7A50;
  *(a2 + 144) = xmmword_22DCE9860;
  *(a2 + 160) = xmmword_22DCE9870;
  *(a2 + 176) = v11;
  *(a2 + 192) = 0x3FF4000000000000;
  [v12 scaledValue:3 withOverride:50.5 forSizeClass:58.5];
  *(a2 + 200) = v10;
  *(a2 + 208) = xmmword_22DCE9890;
  *(a2 + 224) = xmmword_22DCE98A0;
  *(a2 + 240) = xmmword_22DCE98B0;
  *(a2 + 256) = xmmword_22DCE98C0;
  *(a2 + 272) = 0x4000000000000000;
}

double ___LayoutConstants_block_invoke_69(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_78);
  if (_block_invoke___cachedDevice_78)
  {
    v3 = _block_invoke___cachedDevice_78 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_78))
  {
    v5 = *&_block_invoke_value_0_22;
  }

  else
  {
    _block_invoke___cachedDevice_78 = v2;
    _block_invoke___previousCLKDeviceVersion_78 = [v2 version];
    if ([v2 deviceCategory] == 1)
    {
      v5 = 6.0;
    }

    else
    {
      v5 = 9.0;
    }

    _block_invoke_value_0_22 = *&v5;
    _block_invoke_value_1_17 = 0x4018000000000000;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_78);

  return v5;
}

void ___LayoutConstants_block_invoke_70(void *a1@<X1>, void *a2@<X8>)
{
  v5 = a1;
  os_unfair_lock_lock(&NavdRecentLocationsEntitlment_block_invoke_5_lock);
  if (NavdRecentLocationsEntitlment_block_invoke_5___cachedDevice)
  {
    v3 = NavdRecentLocationsEntitlment_block_invoke_5___cachedDevice == v5;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v5 version], v4 != NavdRecentLocationsEntitlment_block_invoke_5___previousCLKDeviceVersion))
  {
    NavdRecentLocationsEntitlment_block_invoke_5___cachedDevice = v5;
    NavdRecentLocationsEntitlment_block_invoke_5___previousCLKDeviceVersion = [v5 version];
    ___LayoutConstants_block_invoke_2_56(v5, __src);
    memcpy(&NavdRecentLocationsEntitlment_block_invoke_5_value, __src, 0x158uLL);
  }

  memcpy(a2, &NavdRecentLocationsEntitlment_block_invoke_5_value, 0x158uLL);
  os_unfair_lock_unlock(&NavdRecentLocationsEntitlment_block_invoke_5_lock);
}

void ___LayoutConstants_block_invoke_2_56(void *a1@<X1>, uint64_t a2@<X8>)
{
  v92[2] = *MEMORY[0x277D85DE8];
  *(a2 + 248) = 0u;
  *(a2 + 232) = 0u;
  *(a2 + 216) = 0u;
  *(a2 + 200) = 0u;
  *(a2 + 184) = 0u;
  *(a2 + 168) = 0u;
  *(a2 + 152) = 0u;
  *(a2 + 136) = 0u;
  *(a2 + 120) = 0u;
  *(a2 + 104) = 0u;
  *(a2 + 88) = 0u;
  *(a2 + 72) = 0u;
  *(a2 + 56) = 0u;
  *(a2 + 40) = 0u;
  v3 = (a2 + 40);
  *(a2 + 312) = 0u;
  *(a2 + 328) = 0u;
  *(a2 + 280) = 0u;
  *(a2 + 296) = 0u;
  *(a2 + 264) = 0u;
  v4 = MEMORY[0x277CBBAF8];
  v5 = a1;
  v6 = [v4 metricsWithDevice:v5 identitySizeClass:2];
  v91[0] = &unk_284185B30;
  v91[1] = &unk_284185B48;
  v92[0] = &unk_284189708;
  v92[1] = &unk_284189718;
  v7 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v92 forKeys:v91 count:2];
  [v6 scaledValue:v7 withOverrides:13.5];
  *a2 = v8;

  v89[0] = &unk_284185B60;
  v89[1] = &unk_284185B30;
  v90[0] = &unk_284189728;
  v90[1] = &unk_284189738;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v90 forKeys:v89 count:2];
  [v6 scaledValue:v9 withOverrides:9.5];
  *(a2 + 8) = v10;

  v87[0] = &unk_284185B60;
  v87[1] = &unk_284185B30;
  v88[0] = &unk_284189748;
  v88[1] = &unk_284189758;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v88 forKeys:v87 count:2];
  [v6 scaledValue:v11 withOverrides:17.0];
  *(a2 + 16) = v12;

  v85[0] = &unk_284185B60;
  v85[1] = &unk_284185B30;
  v86[0] = &unk_284189768;
  v86[1] = &unk_284189778;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v86 forKeys:v85 count:2];
  [v6 scaledValue:v13 withOverrides:45.0];
  *(a2 + 24) = v14;

  v83[0] = &unk_284185B60;
  v83[1] = &unk_284185B30;
  v84[0] = &unk_284189788;
  v84[1] = &unk_284189798;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v84 forKeys:v83 count:2];
  [v6 scaledValue:v15 withOverrides:128.0];
  *(a2 + 32) = v16;

  v81 = &unk_284185B30;
  v82 = &unk_2841897A8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v82 forKeys:&v81 count:1];
  [v6 scaledValue:v17 withOverrides:22.0];
  *(a2 + 48) = v18;

  v79 = &unk_284185B60;
  v80 = &unk_2841897B8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v80 forKeys:&v79 count:1];
  [v6 scaledValue:v19 withOverrides:2.0];
  *(a2 + 56) = v20;

  *(a2 + 64) = xmmword_22DCE9900;
  *(a2 + 80) = 0x402F000000000000;
  v77[0] = &unk_284185B60;
  v77[1] = &unk_284185B30;
  v78[0] = &unk_284189748;
  v78[1] = &unk_284189758;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v78 forKeys:v77 count:2];
  [v6 scaledValue:v21 withOverrides:17.0];
  *(a2 + 88) = v22;

  v75[0] = &unk_284185B60;
  v75[1] = &unk_284185B30;
  v76[0] = &unk_2841897C8;
  v76[1] = &unk_2841897D8;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v76 forKeys:v75 count:2];
  [v6 scaledValue:v23 withOverrides:2.5];
  v25 = v24;
  *(a2 + 96) = v24;

  *(a2 + 104) = v25;
  v73[0] = &unk_284185B60;
  v73[1] = &unk_284185B30;
  v74[0] = &unk_2841897E8;
  v74[1] = &unk_2841897F8;
  v26 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v74 forKeys:v73 count:2];
  [v6 scaledValue:v26 withOverrides:5.0];
  *(a2 + 112) = v27;

  v71[0] = &unk_284185B60;
  v71[1] = &unk_284185B78;
  v72[0] = &unk_2841897B8;
  v72[1] = &unk_2841897B8;
  v28 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v72 forKeys:v71 count:2];
  [v6 constantValue:v28 withOverrides:0.0];
  *(a2 + 120) = v29;

  *(a2 + 128) = xmmword_22DCE9910;
  *(a2 + 144) = xmmword_22DCE9920;
  *(a2 + 160) = xmmword_22DCE9930;
  v69[0] = &unk_284185B60;
  v69[1] = &unk_284185B30;
  v70[0] = &unk_284189808;
  v70[1] = &unk_284189818;
  v30 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v70 forKeys:v69 count:2];
  [v6 scaledValue:v30 withOverrides:12.5];
  *v3 = v31 + -3.5;

  *(a2 + 176) = xmmword_22DCE9940;
  *(a2 + 192) = 0x4020000000000000;
  v67 = &unk_284185B30;
  v68 = &unk_284189828;
  v32 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v68 forKeys:&v67 count:1];
  [v6 scaledValue:v32 withOverrides:84.0];
  *(a2 + 200) = v33;

  v65 = &unk_284185B30;
  v66 = &unk_284189838;
  v34 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v66 forKeys:&v65 count:1];
  [v6 scaledValue:v34 withOverrides:94.0];
  *(a2 + 208) = v35;

  CLKDegreesToRadians();
  *(a2 + 216) = v36;
  *(a2 + 224) = 0;
  CLKDegreesToRadians();
  *(a2 + 232) = v37;
  CLKDegreesToRadians();
  *(a2 + 240) = v38;
  v63 = &unk_284185B30;
  v64 = &unk_284189848;
  v39 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v64 forKeys:&v63 count:1];
  [v6 scaledValue:v39 withOverrides:-17.5];
  *(a2 + 248) = v40;

  v61 = &unk_284185B30;
  v62 = &unk_284189858;
  v41 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v62 forKeys:&v61 count:1];
  [v6 scaledValue:v41 withOverrides:50.0];
  *(a2 + 256) = v42;

  [v5 screenBounds];
  v44 = v43 * 0.5;
  [v6 scaledValue:3 withOverride:82.5 forSizeClass:95.0];
  *(a2 + 264) = v44 - v45;
  [v5 screenBounds];
  v47 = v46;

  [v6 scaledValue:3 withOverride:93.5 forSizeClass:104.5];
  *(a2 + 272) = v47 * 0.5 - v48;
  [v6 scaledValue:3 withOverride:2.0 forSizeClass:2.0];
  *(a2 + 280) = v49;
  [v6 scaledValue:3 withOverride:16.5 forSizeClass:16.5];
  *(a2 + 288) = v50;
  [v6 scaledValue:3 withOverride:4.5 forSizeClass:4.5];
  *(a2 + 296) = v51;
  [v6 scaledValue:3 withOverride:15.0 forSizeClass:15.0];
  v53 = v52;
  [v6 scaledValue:3 withOverride:10.0 forSizeClass:10.0];
  *(a2 + 304) = v53;
  *(a2 + 312) = 0x3FAEB851EB851EB8;
  *(a2 + 320) = v54;
  *(a2 + 328) = 0x3FAEB851EB851EB8;
  [v6 setRoundingBehavior:0];
  CLKDegreesToRadians();
  v56 = v55;
  v59[0] = &unk_284185B60;
  v59[1] = &unk_284185B78;
  v60[0] = &unk_284189868;
  v60[1] = &unk_284189868;
  v57 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:2];
  [v6 scaledValue:v57 withOverrides:v56];
  *(a2 + 336) = v58;
}

uint64_t ___LayoutConstants_block_invoke_71(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke_lock);
  if (NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke___cachedDevice)
  {
    v3 = NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke___previousCLKDeviceVersion))
  {
    v5 = NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke_value;
  }

  else
  {
    NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke___cachedDevice = v2;
    NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke___previousCLKDeviceVersion = [v2 version];
    _LayoutConstants_layoutConstants_1 = xmmword_22DCE9950;
    qword_27DA31FC0 = 0x4038000000000000;
    xmmword_27DA31FD0 = xmmword_22DCE9960;
    unk_27DA31FE0 = xmmword_22DCE9970;
    v6 = [v2 deviceCategory];
    if (v6 <= 6)
    {
      qword_27DA31FC8 = qword_22DCE9980[v6];
    }

    v5 = 1;
    NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke_value = 1;
  }

  os_unfair_lock_unlock(&NTKGreenfieldB640CollectionViewCellCheckmarkEmptyImageName_block_invoke_lock);

  return v5;
}

void ___LayoutConstants_block_invoke_72(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v9 = a1;
  os_unfair_lock_lock(&NTKCrownScrollMultiplierNormal_block_invoke_2_lock);
  if (NTKCrownScrollMultiplierNormal_block_invoke_2___cachedDevice)
  {
    v3 = NTKCrownScrollMultiplierNormal_block_invoke_2___cachedDevice == v9;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v9 version], v4 != NTKCrownScrollMultiplierNormal_block_invoke_2___previousCLKDeviceVersion))
  {
    NTKCrownScrollMultiplierNormal_block_invoke_2___cachedDevice = v9;
    NTKCrownScrollMultiplierNormal_block_invoke_2___previousCLKDeviceVersion = [v9 version];
    ___LayoutConstants_block_invoke_2_57(v9, v10);
    xmmword_27DA320B8 = v10[4];
    unk_27DA320C8 = v10[5];
    xmmword_27DA320D8 = v10[6];
    unk_27DA320E8 = v10[7];
    NTKCrownScrollMultiplierNormal_block_invoke_2_value = v10[0];
    unk_27DA32088 = v10[1];
    xmmword_27DA32098 = v10[2];
    unk_27DA320A8 = v10[3];
  }

  v5 = unk_27DA320C8;
  a2[4] = xmmword_27DA320B8;
  a2[5] = v5;
  v6 = unk_27DA320E8;
  a2[6] = xmmword_27DA320D8;
  a2[7] = v6;
  v7 = unk_27DA32088;
  *a2 = NTKCrownScrollMultiplierNormal_block_invoke_2_value;
  a2[1] = v7;
  v8 = unk_27DA320A8;
  a2[2] = xmmword_27DA32098;
  a2[3] = v8;
  os_unfair_lock_unlock(&NTKCrownScrollMultiplierNormal_block_invoke_2_lock);
}

void ___LayoutConstants_block_invoke_2_57(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v37[2] = *MEMORY[0x277D85DE8];
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 80) = 0u;
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:10.0];
  *a2 = v4;
  [v3 scaledValue:0 withOverride:9.0 forSizeClass:7.0];
  *(a2 + 8) = v5;
  v36[0] = &unk_284185C80;
  v36[1] = &unk_284185C98;
  v37[0] = &unk_284189878;
  v37[1] = &unk_284189888;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v37 forKeys:v36 count:2];
  [v3 scaledValue:v6 withOverrides:6.0];
  *(a2 + 16) = v7;

  v34[0] = &unk_284185C80;
  v34[1] = &unk_284185C98;
  v35[0] = &unk_284189898;
  v35[1] = &unk_284189898;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v35 forKeys:v34 count:2];
  [v3 scaledValue:v8 withOverrides:14.0];
  *(a2 + 32) = v9;

  v32[0] = &unk_284185C80;
  v32[1] = &unk_284185C98;
  v33[0] = &unk_2841898A8;
  v33[1] = &unk_2841898B8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v33 forKeys:v32 count:2];
  [v3 scaledValue:v10 withOverrides:2.5];
  *(a2 + 40) = v11;

  [v3 scaledValue:3 withOverride:10.0 forSizeClass:10.0];
  *(a2 + 48) = v12;
  [v3 scaledValue:3 withOverride:12.0 forSizeClass:12.0];
  *(a2 + 56) = v13;
  v30[0] = &unk_284185CB0;
  v30[1] = &unk_284185CC8;
  v31[0] = &unk_2841898C8;
  v31[1] = &unk_2841898C8;
  v30[2] = &unk_284185CE0;
  v30[3] = &unk_284185CF8;
  v31[2] = &unk_2841898C8;
  v31[3] = &unk_2841898C8;
  v30[4] = &unk_284185D10;
  v30[5] = &unk_284185D28;
  v31[4] = &unk_2841898C8;
  v31[5] = &unk_2841898C8;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];
  [v3 scaledValue:v14 withOverrides:1.0];
  *(a2 + 88) = xmmword_22DCE9A30;
  *(a2 + 104) = v15;
  *(a2 + 112) = 0;

  [v3 scaledValue:11.0];
  *(a2 + 24) = v16;
  v28[0] = &unk_284185C80;
  v28[1] = &unk_284185D40;
  v29[0] = &unk_2841898C8;
  v29[1] = &unk_2841898C8;
  v17 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v3 scaledValue:v17 withOverrides:5.0];
  *(a2 + 64) = v18;

  v26[0] = &unk_284185C80;
  v26[1] = &unk_284185D40;
  v27[0] = &unk_2841898D8;
  v27[1] = &unk_2841898D8;
  v19 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v3 scaledValue:v19 withOverrides:6.0];
  *(a2 + 72) = v20;

  v24[0] = &unk_284185CB0;
  v24[1] = &unk_284185CC8;
  v25[0] = &unk_2841898C8;
  v25[1] = &unk_2841898E8;
  v24[2] = &unk_284185CE0;
  v24[3] = &unk_284185CF8;
  v25[2] = &unk_2841898F8;
  v25[3] = &unk_2841898E8;
  v24[4] = &unk_284185D10;
  v24[5] = &unk_284185D28;
  v25[4] = &unk_2841898F8;
  v25[5] = &unk_2841898F8;
  v21 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];
  [v3 constantValue:v21 withOverrides:0.0];
  *(a2 + 80) = v22;

  [v3 scaledValue:3 withOverride:13.0 forSizeClass:14.0];
  *(a2 + 120) = v23;
}

void ___LayoutConstants_block_invoke_73(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v11 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_80);
  if (_block_invoke___cachedDevice_80)
  {
    v3 = _block_invoke___cachedDevice_80 == v11;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v11 version], v4 != _block_invoke___previousCLKDeviceVersion_80))
  {
    _block_invoke___cachedDevice_80 = v11;
    _block_invoke___previousCLKDeviceVersion_80 = [v11 version];
    ___LayoutConstants_block_invoke_2_58(v11, v12);
    xmmword_27DA324E0 = v12[10];
    unk_27DA324F0 = v12[11];
    xmmword_27DA32500 = v12[12];
    xmmword_27DA324A0 = v12[6];
    unk_27DA324B0 = v12[7];
    xmmword_27DA324C0 = v12[8];
    unk_27DA324D0 = v12[9];
    xmmword_27DA32460 = v12[2];
    unk_27DA32470 = v12[3];
    xmmword_27DA32480 = v12[4];
    unk_27DA32490 = v12[5];
    _block_invoke_value_56 = v12[0];
    *algn_27DA32450 = v12[1];
  }

  v5 = unk_27DA324F0;
  a2[10] = xmmword_27DA324E0;
  a2[11] = v5;
  a2[12] = xmmword_27DA32500;
  v6 = unk_27DA324B0;
  a2[6] = xmmword_27DA324A0;
  a2[7] = v6;
  v7 = unk_27DA324D0;
  a2[8] = xmmword_27DA324C0;
  a2[9] = v7;
  v8 = unk_27DA32470;
  a2[2] = xmmword_27DA32460;
  a2[3] = v8;
  v9 = unk_27DA32490;
  a2[4] = xmmword_27DA32480;
  a2[5] = v9;
  v10 = *algn_27DA32450;
  *a2 = _block_invoke_value_56;
  a2[1] = v10;
  os_unfair_lock_unlock(&_block_invoke_lock_80);
}

void ___LayoutConstants_block_invoke_2_58(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v31 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [NTKRichComplicationCircularBaseView centerLabelLargeFontSizeForDevice:v4];
  v30 = v5;
  [NTKRichComplicationCircularBaseView centerLabelSmallFontSizeForDevice:v4];
  v28 = v6;
  [v31 scaledValue:29.0];
  v29 = v7;
  [v31 scaledValue:3 withOverride:26.0 forSizeClass:29.0];
  v27 = v8;
  [NTKRichComplicationCircularBaseView smallLabelLargeFontSizeForDevice:v4];
  v26 = v9;
  [NTKRichComplicationCircularBaseView smallLabelSmallFontSizeForDevice:v4];
  v11 = v10;
  [v31 scaledValue:3 withOverride:37.5 forSizeClass:42.0];
  v13 = v12;
  [v31 scaledValue:3 withOverride:37.0 forSizeClass:41.5];
  v15 = v14;
  [v31 scaledValue:3 withOverride:14.0 forSizeClass:17.0];
  v17 = v16;
  [v31 scaledValue:8.0];
  v19 = v18;
  [v31 scaledValue:3 withOverride:13.5 forSizeClass:14.5];
  v21 = v20 * 0.5;
  [v31 scaledValue:4.0];
  v23 = v22;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v25 = v24;

  *a2 = v30;
  *(a2 + 8) = v28;
  *(a2 + 16) = v29;
  *(a2 + 24) = v27;
  *(a2 + 32) = v26;
  *(a2 + 40) = v11;
  *(a2 + 48) = v13;
  *(a2 + 56) = v15;
  *(a2 + 64) = v17;
  *(a2 + 72) = v19;
  *(a2 + 80) = v21;
  *(a2 + 88) = v23;
  *(a2 + 96) = 0x3FF0C152382D7365;
  *(a2 + 104) = v30 * v25;
  *(a2 + 112) = v28 * v25;
  *(a2 + 120) = v29 * v25;
  *(a2 + 128) = v27 * v25;
  *(a2 + 136) = v26 * v25;
  *(a2 + 144) = v11 * v25;
  *(a2 + 152) = v13 * v25;
  *(a2 + 160) = v15 * v25;
  *(a2 + 168) = v17 * v25;
  *(a2 + 176) = v19 * v25;
  *(a2 + 184) = v21 * v25;
  *(a2 + 192) = v23 * v25;
  *(a2 + 200) = 0x3FF0C152382D7365;
}

void ___LayoutConstants_block_invoke_74(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_81);
  if (_block_invoke___cachedDevice_81)
  {
    v3 = _block_invoke___cachedDevice_81 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_81))
  {
    _block_invoke___cachedDevice_81 = v6;
    _block_invoke___previousCLKDeviceVersion_81 = [v6 version];
    ___LayoutConstants_block_invoke_2_59(v6, v7);
    _block_invoke_value_57 = v7[0];
    *algn_27DA32550 = v7[1];
    qword_27DA32560 = v8;
  }

  v5 = *algn_27DA32550;
  *a2 = _block_invoke_value_57;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA32560;
  os_unfair_lock_unlock(&_block_invoke_lock_81);
}

void ___LayoutConstants_block_invoke_2_59(uint64_t a1@<X1>, void *a2@<X8>)
{
  v13[6] = *MEMORY[0x277D85DE8];
  v3 = [MEMORY[0x277CBBAF8] metricsWithDevice:a1 identitySizeClass:2];
  [v3 scaledValue:19.5];
  *a2 = v4;
  [v3 scaledValue:38.0];
  a2[1] = v5;
  v12[0] = &unk_284186760;
  v12[1] = &unk_284186778;
  v13[0] = &unk_284189918;
  v13[1] = &unk_284189928;
  v12[2] = &unk_284186790;
  v12[3] = &unk_2841867A8;
  v13[2] = &unk_284189928;
  v13[3] = &unk_284189938;
  v12[4] = &unk_2841867C0;
  v12[5] = &unk_2841867D8;
  v13[4] = &unk_284189948;
  v13[5] = &unk_284189928;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:6];
  [v3 scaledValue:v6 withOverrides:40.0];
  a2[2] = v7;

  a2[3] = *MEMORY[0x277D74418];
  v10[0] = &unk_2841867F0;
  v10[1] = &unk_284186760;
  v11[0] = &unk_284189958;
  v11[1] = &unk_284189968;
  v10[2] = &unk_284186778;
  v10[3] = &unk_284186790;
  v11[2] = &unk_284189978;
  v11[3] = &unk_284189978;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:4];
  [v3 scaledValue:v8 withOverrides:-0.5];
  a2[4] = v9;
}

@end