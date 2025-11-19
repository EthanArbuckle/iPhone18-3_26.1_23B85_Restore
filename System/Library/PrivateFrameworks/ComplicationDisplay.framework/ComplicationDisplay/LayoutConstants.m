@interface LayoutConstants
@end

@implementation LayoutConstants

double ___LayoutConstants_block_invoke(uint64_t a1, void *a2)
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
    v5 = _block_invoke_value_0;
  }

  else
  {
    _block_invoke___cachedDevice = v2;
    _block_invoke___previousCLKDeviceVersion = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2(_block_invoke___previousCLKDeviceVersion, v2);
    _block_invoke_value_0 = v5;
    _block_invoke_value_1 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:63.0];
  v4 = v3;
  [v2 scaledValue:91.0];

  return v4;
}

void ___LayoutConstants_block_invoke_0(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v8 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_0);
  if (_block_invoke___cachedDevice_0)
  {
    v3 = _block_invoke___cachedDevice_0 == v8;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v8 version], v4 != _block_invoke___previousCLKDeviceVersion_0))
  {
    _block_invoke___cachedDevice_0 = v8;
    _block_invoke___previousCLKDeviceVersion_0 = [v8 version];
    ___LayoutConstants_block_invoke_2_0(v8, v9);
    xmmword_27EDBB818 = v9[2];
    unk_27EDBB828 = v9[3];
    xmmword_27EDBB838 = v9[4];
    unk_27EDBB848 = v9[5];
    _block_invoke_value = v9[0];
    unk_27EDBB808 = v9[1];
  }

  v5 = unk_27EDBB828;
  a2[2] = xmmword_27EDBB818;
  a2[3] = v5;
  v6 = unk_27EDBB848;
  a2[4] = xmmword_27EDBB838;
  a2[5] = v6;
  v7 = unk_27EDBB808;
  *a2 = _block_invoke_value;
  a2[1] = v7;
  os_unfair_lock_unlock(&_block_invoke_lock_0);
}

double ___LayoutConstants_block_invoke_2_0@<D0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  CLKValueForLuxoDeviceMetrics();
  v5 = v4;
  CLKValueForLuxoDeviceMetrics();
  v7 = v6;
  CLKValueForLuxoDeviceMetrics();
  v9 = v8;
  CLKValueForLuxoDeviceMetrics();
  v11 = v10;
  CLKValueForLuxoDeviceMetrics();
  v13 = v12;
  CLKValueForLuxoDeviceMetrics();
  v15 = v14;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v17 = v16;

  result = v5 * v17;
  *a2 = v5;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v15;
  *(a2 + 48) = v5 * v17;
  *(a2 + 56) = v7 * v17;
  *(a2 + 64) = v9 * v17;
  *(a2 + 72) = v11 * v17;
  *(a2 + 80) = v13 * v17;
  *(a2 + 88) = v15;
  return result;
}

double ___LayoutConstants_block_invoke_1(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_1);
  if (_block_invoke___cachedDevice_1)
  {
    v3 = _block_invoke___cachedDevice_1 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_1))
  {
    v5 = _block_invoke_value_0_0;
  }

  else
  {
    _block_invoke___cachedDevice_1 = v2;
    _block_invoke___previousCLKDeviceVersion_1 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_1(_block_invoke___previousCLKDeviceVersion_1, v2);
    _block_invoke_value_0_0 = v5;
    _block_invoke_value_1_0 = v6;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_1);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_1(uint64_t a1, uint64_t a2)
{
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:62.0];
  v4 = v3;
  [v2 scaledValue:88.0];

  return v4;
}

double ___LayoutConstants_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_2);
  if (_block_invoke___cachedDevice_2)
  {
    v3 = _block_invoke___cachedDevice_2 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_2))
  {
    v5 = _block_invoke_value_0_1;
  }

  else
  {
    _block_invoke___cachedDevice_2 = v2;
    _block_invoke___previousCLKDeviceVersion_2 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_2(_block_invoke___previousCLKDeviceVersion_2, v2);
    _block_invoke_value_0_1 = v5;
    _block_invoke_value_1_1 = v6;
    _block_invoke_value_2 = v7;
    _block_invoke_value_3 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_2);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_2(uint64_t a1, void *a2)
{
  v2 = a2;
  CLKValueForLuxoDeviceMetrics();
  v4 = v3;
  CLKValueForLuxoDeviceMetrics();
  CLKValueForLuxoDeviceMetrics();
  CLKValueForLuxoDeviceMetrics();

  return v4;
}

double ___LayoutConstants_block_invoke_4(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_3);
  if (_block_invoke___cachedDevice_3)
  {
    v3 = _block_invoke___cachedDevice_3 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_3))
  {
    v5 = _block_invoke_value_0_2;
  }

  else
  {
    _block_invoke___cachedDevice_3 = v2;
    _block_invoke___previousCLKDeviceVersion_3 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_3(_block_invoke___previousCLKDeviceVersion_3, v2);
    _block_invoke_value_0_2 = v5;
    _block_invoke_value_1_2 = v6;
    _block_invoke_value_2_0 = v7;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_3);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_3(uint64_t a1, uint64_t a2)
{
  v12[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 scaledValue:20.0];
  v4 = v3;
  v11[0] = &unk_285702CB0;
  v11[1] = &unk_285702CC8;
  v12[0] = &unk_285703118;
  v12[1] = &unk_285703128;
  v11[2] = &unk_285702CE0;
  v12[2] = &unk_285703138;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:v11 count:3];
  [v2 scaledValue:v5 withOverrides:20.5];

  v9[0] = &unk_285702CF8;
  v9[1] = &unk_285702CB0;
  v10[0] = &unk_285703148;
  v10[1] = &unk_285703158;
  v9[2] = &unk_285702CC8;
  v9[3] = &unk_285702CE0;
  v10[2] = &unk_285703168;
  v10[3] = &unk_285703178;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v2 scaledValue:v6 withOverrides:14.5];

  v7 = *MEMORY[0x277D85DE8];
  return v4;
}

double ___LayoutConstants_block_invoke_5(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_MonochromeBackgroundViewAlpha_block_invoke_lock);
  if (_MonochromeBackgroundViewAlpha_block_invoke___cachedDevice)
  {
    v3 = _MonochromeBackgroundViewAlpha_block_invoke___cachedDevice == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _MonochromeBackgroundViewAlpha_block_invoke___previousCLKDeviceVersion))
  {
    v5 = _MonochromeBackgroundViewAlpha_block_invoke_value_0;
  }

  else
  {
    _MonochromeBackgroundViewAlpha_block_invoke___cachedDevice = v2;
    _MonochromeBackgroundViewAlpha_block_invoke___previousCLKDeviceVersion = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_4(_MonochromeBackgroundViewAlpha_block_invoke___previousCLKDeviceVersion, v2);
    _MonochromeBackgroundViewAlpha_block_invoke_value_0 = v5;
    _MonochromeBackgroundViewAlpha_block_invoke_value_1 = v6;
  }

  os_unfair_lock_unlock(&_MonochromeBackgroundViewAlpha_block_invoke_lock);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_4(uint64_t a1, void *a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  [v4 setRoundingBehavior:0];
  v10[0] = &unk_285702D10;
  v10[1] = &unk_285702D28;
  v11[0] = &unk_285703188;
  v11[1] = &unk_285703188;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v4 scaledValue:v5 withOverrides:1.5];
  v7 = v6;

  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v8 = *MEMORY[0x277D85DE8];
  return v7;
}

void ___LayoutConstants_block_invoke_6(void *a1@<X1>, uint64_t a2@<X8>)
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
    ___LayoutConstants_block_invoke_2_5(v7, v8);
    xmmword_27EDBB998 = v8[2];
    unk_27EDBB9A8 = v8[3];
    xmmword_27EDBB9B8 = v8[4];
    qword_27EDBB9C8 = v9;
    _block_invoke_value_0 = v8[0];
    unk_27EDBB988 = v8[1];
  }

  v5 = unk_27EDBB9A8;
  *(a2 + 32) = xmmword_27EDBB998;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_27EDBB9B8;
  *(a2 + 80) = qword_27EDBB9C8;
  v6 = unk_27EDBB988;
  *a2 = _block_invoke_value_0;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_4);
}

void ___LayoutConstants_block_invoke_2_5(void *a1@<X1>, uint64_t a2@<X8>)
{
  v31[3] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v30[0] = &unk_285702D40;
  v30[1] = &unk_285702D58;
  v31[0] = &unk_285703198;
  v31[1] = &unk_2857031A8;
  v30[2] = &unk_285702D70;
  v31[2] = &unk_2857031B8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:3];
  [v5 scaledValue:v6 withOverrides:17.0];
  *a2 = v7;

  *(a2 + 8) = 0x4043000000000000;
  *(a2 + 16) = CDCornerComplicationOuterUpperTextBaselineRadius(v4);
  *(a2 + 24) = CDCornerComplicationOuterLowerTextBaselineRadius(v4);
  [v5 scaledValue:11.0];
  *(a2 + 32) = v8;
  *(a2 + 40) = 0x4012000000000000;
  v9 = CDCornerComplicationTopLeftCenterAngle(v4);

  *(a2 + 48) = v9;
  v28[0] = &unk_285702D40;
  v28[1] = &unk_285702D58;
  v29[0] = &unk_2857031C8;
  v29[1] = &unk_2857031C8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v5 constantValue:v10 withOverrides:-60.0];
  *(a2 + 56) = v11;

  v26[0] = &unk_285702D40;
  v26[1] = &unk_285702D58;
  v27[0] = &unk_2857031D8;
  v27[1] = &unk_2857031D8;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:2];
  [v5 constantValue:v12 withOverrides:95.0];
  *(a2 + 64) = v13;

  v14 = [MEMORY[0x277CCAE60] valueWithCGSize:{57.5, 12.5, &unk_285702D88}];
  v25[0] = v14;
  v24[1] = &unk_285702DA0;
  v15 = [MEMORY[0x277CCAE60] valueWithCGSize:{55.5, 12.0}];
  v25[1] = v15;
  v24[2] = &unk_285702DB8;
  v16 = [MEMORY[0x277CCAE60] valueWithCGSize:{62.5, 13.5}];
  v25[2] = v16;
  v24[3] = &unk_285702DD0;
  v17 = [MEMORY[0x277CCAE60] valueWithCGSize:{62.5, 13.5}];
  v25[3] = v17;
  v24[4] = &unk_285702D40;
  v18 = [MEMORY[0x277CCAE60] valueWithCGSize:{57.5, 12.5}];
  v25[4] = v18;
  v24[5] = &unk_285702D58;
  v19 = [MEMORY[0x277CCAE60] valueWithCGSize:{62.5, 13.5}];
  v25[5] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:6];
  [v5 scaledSize:v20 withOverrides:{52.5, 11.5}];
  *(a2 + 72) = v21;
  *(a2 + 80) = v22;

  v23 = *MEMORY[0x277D85DE8];
}

void ___LayoutConstants_block_invoke_7(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_5);
  if (_block_invoke___cachedDevice_5)
  {
    v3 = _block_invoke___cachedDevice_5 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_5))
  {
    _block_invoke___cachedDevice_5 = v7;
    _block_invoke___previousCLKDeviceVersion_5 = [v7 version];
    ___LayoutConstants_block_invoke_2_6(v7, v8);
    xmmword_27EDBBA08 = v8[2];
    unk_27EDBBA18 = v8[3];
    xmmword_27EDBBA28 = v8[4];
    qword_27EDBBA38 = v9;
    _block_invoke_value_1 = v8[0];
    unk_27EDBB9F8 = v8[1];
  }

  v5 = unk_27EDBBA18;
  *(a2 + 32) = xmmword_27EDBBA08;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_27EDBBA28;
  *(a2 + 80) = qword_27EDBBA38;
  v6 = unk_27EDBB9F8;
  *a2 = _block_invoke_value_1;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_5);
}

void ___LayoutConstants_block_invoke_2_6(void *a1@<X1>, uint64_t a2@<X8>)
{
  v31[6] = *MEMORY[0x277D85DE8];
  *(a2 + 8) = 0;
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  *a2 = CDRichComplicationCornerInnerFontSize(v4);
  *(a2 + 24) = CDCornerComplicationInnerUpperTextBaselineRadius(v4);
  v30[0] = &unk_285702DE8;
  v30[1] = &unk_285702E00;
  v31[0] = &unk_2857031E8;
  v31[1] = &unk_2857031F8;
  v30[2] = &unk_285702E18;
  v30[3] = &unk_285702E30;
  v31[2] = &unk_285703208;
  v31[3] = &unk_285703208;
  v30[4] = &unk_285702E48;
  v30[5] = &unk_285702E60;
  v31[4] = &unk_285703218;
  v31[5] = &unk_285703228;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:v30 count:6];
  [v5 scaledValue:v6 withOverrides:86.5];
  *(a2 + 32) = v7;

  v28[0] = &unk_285702E48;
  v28[1] = &unk_285702E60;
  v29[0] = &unk_285703238;
  v29[1] = &unk_285703238;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v29 forKeys:v28 count:2];
  [v5 constantValue:v8 withOverrides:3.0];
  *(a2 + 40) = v9;

  v26[0] = &unk_285702DE8;
  v26[1] = &unk_285702E48;
  v27[0] = &unk_285703248;
  v27[1] = &unk_285703238;
  v26[2] = &unk_285702E60;
  v27[2] = &unk_285703238;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v27 forKeys:v26 count:3];
  [v5 constantValue:v10 withOverrides:3.0];
  *(a2 + 48) = v11;

  *(a2 + 56) = CDCornerComplicationTopLeftCenterAngle(v4);
  v24[0] = &unk_285702E48;
  v24[1] = &unk_285702E60;
  v25[0] = &unk_285703258;
  v25[1] = &unk_285703258;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v25 forKeys:v24 count:2];
  [v5 constantValue:v12 withOverrides:0.0];
  *(a2 + 64) = v13;

  v22[0] = &unk_285702E48;
  v22[1] = &unk_285702E60;
  v23[0] = &unk_285703268;
  v23[1] = &unk_285703268;
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v23 forKeys:v22 count:2];
  [v5 constantValue:v14 withOverrides:55.0];
  *(a2 + 72) = v15;

  v20[0] = &unk_285702E48;
  v20[1] = &unk_285702E60;
  v21[0] = &unk_285703278;
  v21[1] = &unk_285703278;
  v16 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:2];
  [v5 constantValue:v16 withOverrides:140.0];
  *(a2 + 80) = v17;

  v18 = CDCornerComplicationClippingSliceAngle(v4);
  *(a2 + 16) = v18;

  v19 = *MEMORY[0x277D85DE8];
}

void ___LayoutConstants_block_invoke_8(void *a1@<X1>, uint64_t a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_6);
  if (_block_invoke___cachedDevice_6)
  {
    v3 = _block_invoke___cachedDevice_6 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_6))
  {
    _block_invoke___cachedDevice_6 = v7;
    _block_invoke___previousCLKDeviceVersion_6 = [v7 version];
    ___LayoutConstants_block_invoke_2_7(v7, v8);
    xmmword_27EDBBA78 = v8[2];
    unk_27EDBBA88 = v8[3];
    xmmword_27EDBBA98 = v8[4];
    qword_27EDBBAA8 = v9;
    _block_invoke_value_2 = v8[0];
    unk_27EDBBA68 = v8[1];
  }

  v5 = unk_27EDBBA88;
  *(a2 + 32) = xmmword_27EDBBA78;
  *(a2 + 48) = v5;
  *(a2 + 64) = xmmword_27EDBBA98;
  *(a2 + 80) = qword_27EDBBAA8;
  v6 = unk_27EDBBA68;
  *a2 = _block_invoke_value_2;
  *(a2 + 16) = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_6);
}

void ___LayoutConstants_block_invoke_2_7(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v10 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  [v10 scaledValue:5.5];
  *a2 = v5;
  *(a2 + 8) = CDCornerComplicationInnerUpperCircleRadius(v4) * 2.0 + -1.0;
  [v10 scaledValue:3 withOverride:6.5 forSizeClass:7.5];
  *(a2 + 16) = v6;
  CLKDegreesToRadians();
  *(a2 + 24) = v7;
  [v10 scaledValue:3 withOverride:15.0 forSizeClass:17.0];
  *(a2 + 32) = v8;
  *(a2 + 40) = CDRichComplicationCornerInnerFontSize(v4);
  *(a2 + 48) = CDCornerComplicationInnerUpperCircleRadius(v4);
  *(a2 + 56) = CDCornerComplicationInnerLowerTextBaselineRadius(v4);
  *(a2 + 64) = xmmword_243DB11E0;
  CDCornerComplicationTopLeftCenterAngle(v4);

  CLKDegreesToRadians();
  *(a2 + 80) = v9;
}

void ___LayoutConstants_block_invoke_9(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_8);
  if (_block_invoke___cachedDevice_8)
  {
    v3 = _block_invoke___cachedDevice_8 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_8))
  {
    _block_invoke___cachedDevice_8 = v7;
    _block_invoke___previousCLKDeviceVersion_8 = [v7 version];
    ___LayoutConstants_block_invoke_2_8(v7, v8);
    xmmword_27EDBBB40 = v8[2];
    unk_27EDBBB50 = v8[3];
    xmmword_27EDBBB60 = v8[4];
    _block_invoke_value_4 = v8[0];
    *algn_27EDBBB30 = v8[1];
  }

  v5 = unk_27EDBBB50;
  a2[2] = xmmword_27EDBBB40;
  a2[3] = v5;
  a2[4] = xmmword_27EDBBB60;
  v6 = *algn_27EDBBB30;
  *a2 = _block_invoke_value_4;
  a2[1] = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_8);
}

void ___LayoutConstants_block_invoke_2_8(void *a1@<X1>, double *a2@<X8>)
{
  v38[3] = *MEMORY[0x277D85DE8];
  a2[7] = 0.0;
  a2[8] = 0.0;
  a2[9] = 0.0;
  v3 = MEMORY[0x277CBBAF8];
  v4 = a1;
  v5 = [v3 metricsWithDevice:v4 identitySizeClass:2];
  v37[0] = &unk_285702E90;
  v37[1] = &unk_285702EA8;
  v38[0] = &unk_285703298;
  v38[1] = &unk_2857032A8;
  v37[2] = &unk_285702EC0;
  v38[2] = &unk_2857032A8;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v38 forKeys:v37 count:3];
  [v5 scaledValue:v6 withOverrides:13.0];
  *a2 = v7;

  a2[1] = 38.0;
  v35[0] = &unk_285702ED8;
  v35[1] = &unk_285702E90;
  v36[0] = &unk_2857032B8;
  v36[1] = &unk_2857032C8;
  v35[2] = &unk_285702EA8;
  v36[2] = &unk_2857032D8;
  v8 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v36 forKeys:v35 count:3];
  [v5 scaledValue:v8 withOverrides:94.0];
  *(a2 + 2) = v9;

  v33[0] = &unk_285702ED8;
  v33[1] = &unk_285702E90;
  v34[0] = &unk_2857032E8;
  v34[1] = &unk_2857032D8;
  v33[2] = &unk_285702EA8;
  v34[2] = &unk_2857032F8;
  v10 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:v33 count:3];
  [v5 scaledValue:v10 withOverrides:102.5];
  *(a2 + 3) = v11;

  v12 = CDCornerComplicationTopLeftCenterAngle(v4);
  a2[4] = v12;
  v31[0] = &unk_285702E90;
  v31[1] = &unk_285702EA8;
  v32[0] = &unk_285703308;
  v32[1] = &unk_285703308;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v32 forKeys:v31 count:2];
  [v5 constantValue:v13 withOverrides:15.0];
  *(a2 + 5) = v14;

  v29[0] = &unk_285702E90;
  v29[1] = &unk_285702EA8;
  v30[0] = &unk_285703318;
  v30[1] = &unk_285703318;
  v15 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v30 forKeys:v29 count:2];
  [v5 constantValue:v15 withOverrides:115.0];
  *(a2 + 6) = v16;

  v17 = [MEMORY[0x277CCAE60] valueWithCGSize:{25.0, 12.0, &unk_285702ED8}];
  v28[0] = v17;
  v27[1] = &unk_285702EF0;
  v18 = [MEMORY[0x277CCAE60] valueWithCGSize:{24.0, 11.5}];
  v28[1] = v18;
  v27[2] = &unk_285702F08;
  v19 = [MEMORY[0x277CCAE60] valueWithCGSize:{27.5, 12.5}];
  v28[2] = v19;
  v27[3] = &unk_285702F20;
  v20 = [MEMORY[0x277CCAE60] valueWithCGSize:{27.5, 12.5}];
  v28[3] = v20;
  v27[4] = &unk_285702E90;
  v21 = [MEMORY[0x277CCAE60] valueWithCGSize:{25.0, 12.0}];
  v28[4] = v21;
  v27[5] = &unk_285702EA8;
  v22 = [MEMORY[0x277CCAE60] valueWithCGSize:{27.5, 12.5}];
  v28[5] = v22;
  v23 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v28 forKeys:v27 count:6];
  [v5 scaledSize:v23 withOverrides:{22.5, 11.0}];
  *(a2 + 7) = v24;
  *(a2 + 8) = v25;

  a2[9] = 1.0;
  v26 = *MEMORY[0x277D85DE8];
}

double ___LayoutConstants_block_invoke_10(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_9);
  if (_block_invoke___cachedDevice_9)
  {
    v3 = _block_invoke___cachedDevice_9 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_9))
  {
    v5 = _block_invoke_value_0_3;
  }

  else
  {
    _block_invoke___cachedDevice_9 = v2;
    _block_invoke___previousCLKDeviceVersion_9 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_9(_block_invoke___previousCLKDeviceVersion_9, v2);
    _block_invoke_value_0_3 = v5;
    _block_invoke_value_1_3 = v6;
    _block_invoke_value_2_1 = v7;
    _block_invoke_value_3_0 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_9);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_9(uint64_t a1, uint64_t a2)
{
  v18[3] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  v17[0] = &unk_285702F38;
  v17[1] = &unk_285702F50;
  v18[0] = &unk_285703328;
  v18[1] = &unk_285703338;
  v17[2] = &unk_285702F68;
  v18[2] = &unk_285703338;
  v3 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v18 forKeys:v17 count:3];
  [v2 scaledValue:v3 withOverrides:10.0];
  v5 = v4;

  v15[0] = &unk_285702F80;
  v6 = [MEMORY[0x277CCAE60] valueWithCGSize:{21.0, 9.5}];
  v16[0] = v6;
  v15[1] = &unk_285702F98;
  v7 = [MEMORY[0x277CCAE60] valueWithCGSize:{20.0, 9.0}];
  v16[1] = v7;
  v15[2] = &unk_285702FB0;
  v8 = [MEMORY[0x277CCAE60] valueWithCGSize:{22.5, 10.0}];
  v16[2] = v8;
  v15[3] = &unk_285702FC8;
  v9 = [MEMORY[0x277CCAE60] valueWithCGSize:{22.5, 10.0}];
  v16[3] = v9;
  v15[4] = &unk_285702F38;
  v10 = [MEMORY[0x277CCAE60] valueWithCGSize:{21.0, 9.5}];
  v16[4] = v10;
  v15[5] = &unk_285702F50;
  v11 = [MEMORY[0x277CCAE60] valueWithCGSize:{22.5, 10.0}];
  v16[5] = v11;
  v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v16 forKeys:v15 count:6];
  [v2 scaledSize:v12 withOverrides:{19.0, 8.5}];

  v13 = *MEMORY[0x277D85DE8];
  return v5;
}

double ___LayoutConstants_block_invoke_11(uint64_t a1, void *a2)
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
    v5 = _block_invoke_value_0_4;
  }

  else
  {
    _block_invoke___cachedDevice_11 = v2;
    _block_invoke___previousCLKDeviceVersion_11 = [v2 version];
    v5 = ___LayoutConstants_block_invoke_2_10(_block_invoke___previousCLKDeviceVersion_11, v2);
    _block_invoke_value_0_4 = v5;
    _block_invoke_value_1_4 = v6;
    _block_invoke_value_2_2 = v7;
    _block_invoke_value_3_1 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_11);

  return *&v5;
}

double ___LayoutConstants_block_invoke_2_10(uint64_t a1, void *a2)
{
  v10[4] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CBBAF8];
  v3 = a2;
  v4 = [v2 metricsWithDevice:v3 identitySizeClass:2];
  v5 = CDCircularSmallComplicationDiameter(v3);

  v9[0] = &unk_2857030B8;
  v9[1] = &unk_2857030D0;
  v10[0] = &unk_2857035F8;
  v10[1] = &unk_285703608;
  v9[2] = &unk_2857030E8;
  v9[3] = &unk_285703100;
  v10[2] = &unk_285703618;
  v10[3] = &unk_285703628;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v10 forKeys:v9 count:4];
  [v4 scaledValue:v6 withOverrides:4.0];

  [v4 scaledValue:3 withOverride:63.0 forSizeClass:70.0];
  [v4 scaledValue:3 withOverride:80.0 forSizeClass:89.0];

  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

@end