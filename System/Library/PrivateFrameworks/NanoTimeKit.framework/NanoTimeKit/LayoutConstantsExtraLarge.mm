@interface LayoutConstantsExtraLarge
@end

@implementation LayoutConstantsExtraLarge

void ___LayoutConstantsExtraLarge_block_invoke(void *a1@<X1>, uint64_t a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_15);
  if (_block_invoke___cachedDevice_15)
  {
    v3 = _block_invoke___cachedDevice_15 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_15))
  {
    _block_invoke___cachedDevice_15 = v6;
    _block_invoke___previousCLKDeviceVersion_15 = [v6 version];
    ___LayoutConstantsExtraLarge_block_invoke_2(v6, v7);
    _block_invoke_value_10 = v7[0];
    *algn_27DA2E510 = v7[1];
    qword_27DA2E520 = v8;
  }

  v5 = *algn_27DA2E510;
  *a2 = _block_invoke_value_10;
  *(a2 + 16) = v5;
  *(a2 + 32) = qword_27DA2E520;
  os_unfair_lock_unlock(&_block_invoke_lock_15);
}

void ___LayoutConstantsExtraLarge_block_invoke_2(void *a1@<X1>, void *a2@<X8>)
{
  v3 = a1;
  ___LayoutConstantsModularSmall_block_invoke(v3, a2);
  CLKRoundForDevice();
  *a2 = v4;
  CLKRoundForDevice();
  a2[3] = v5;
  CLKRoundForDevice();
  a2[2] = v6;
  CLKRoundForDevice();
  a2[1] = v7;
  CLKRoundForDevice();
  v9 = v8;

  a2[4] = v9;
}

double ___LayoutConstantsExtraLarge_block_invoke_0(uint64_t a1, void *a2)
{
  v2 = a2;
  os_unfair_lock_lock(&_block_invoke_lock_20);
  if (_block_invoke___cachedDevice_20)
  {
    v3 = _block_invoke___cachedDevice_20 == v2;
  }

  else
  {
    v3 = 0;
  }

  if (v3 && (v4 = [v2 version], v4 == _block_invoke___previousCLKDeviceVersion_20))
  {
    v5 = _block_invoke_value_0_6;
  }

  else
  {
    _block_invoke___cachedDevice_20 = v2;
    _block_invoke___previousCLKDeviceVersion_20 = [v2 version];
    v5 = ___LayoutConstantsExtraLarge_block_invoke_2_0(_block_invoke___previousCLKDeviceVersion_20, v2);
    _block_invoke_value_0_6 = v5;
    _block_invoke_value_1_3 = v6;
    _block_invoke_value_2_3 = v7;
    _block_invoke_value_3_1 = v8;
  }

  os_unfair_lock_unlock(&_block_invoke_lock_20);

  return *&v5;
}

double ___LayoutConstantsExtraLarge_block_invoke_2_0(uint64_t a1, uint64_t a2)
{
  v11[2] = *MEMORY[0x277D85DE8];
  v2 = [MEMORY[0x277CBBAF8] metricsWithDevice:a2 identitySizeClass:2];
  [v2 setRoundingBehavior:3];
  [v2 scaledValue:3 withOverride:8.0 forSizeClass:10.5];
  v4 = v3;
  v10[0] = &unk_284182818;
  v10[1] = &unk_284182830;
  v11[0] = &unk_2841883E8;
  v11[1] = &unk_2841883F8;
  v5 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v11 forKeys:v10 count:2];
  [v2 scaledValue:v5 withOverrides:7.0];

  v8[0] = &unk_284182818;
  v8[1] = &unk_284182830;
  v9[0] = &unk_284188408;
  v9[1] = &unk_284188418;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v9 forKeys:v8 count:2];
  [v2 scaledValue:v6 withOverrides:105.0];

  [v2 scaledValue:3 withOverride:1.75 forSizeClass:2.25];
  return v4;
}

void ___LayoutConstantsExtraLarge_block_invoke_1(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_4_lock_0);
  if (_block_invoke_4___cachedDevice_0)
  {
    v3 = _block_invoke_4___cachedDevice_0 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke_4___previousCLKDeviceVersion_0))
  {
    _block_invoke_4___cachedDevice_0 = v6;
    _block_invoke_4___previousCLKDeviceVersion_0 = [v6 version];
    ___LayoutConstantsExtraLarge_block_invoke_2_1(v6, v7);
    _block_invoke_4_value_0 = v7[0];
    *algn_27DA2FC50 = v7[1];
    xmmword_27DA2FC60 = v7[2];
  }

  v5 = *algn_27DA2FC50;
  *a2 = _block_invoke_4_value_0;
  a2[1] = v5;
  a2[2] = xmmword_27DA2FC60;
  os_unfair_lock_unlock(&_block_invoke_4_lock_0);
}

void ___LayoutConstantsExtraLarge_block_invoke_2_1(void *a1@<X1>, double *a2@<X8>)
{
  v3 = a1;
  ___LayoutConstantsModularSmall_block_invoke_0(v3, a2);
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 3221225472;
  aBlock[2] = ___LayoutConstantsExtraLarge_block_invoke_3;
  aBlock[3] = &unk_2787839E8;
  v8 = v3;
  v4 = v3;
  v5 = _Block_copy(aBlock);
  [v4 screenBounds];
  Width = CGRectGetWidth(v9);
  *a2 = v5[2](v5, Width, *a2);
  a2[1] = v5[2](v5, Width, a2[1]);
  a2[2] = v5[2](v5, Width, a2[2]);
  a2[3] = v5[2](v5, Width, a2[3]);
  a2[4] = v5[2](v5, Width, a2[4]);
  a2[5] = v5[2](v5, Width, a2[5]);
}

void ___LayoutConstantsExtraLarge_block_invoke_4(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&kGEOLocationCoordinate2DInvalid_block_invoke_2_lock);
  if (kGEOLocationCoordinate2DInvalid_block_invoke_2___cachedDevice)
  {
    v3 = kGEOLocationCoordinate2DInvalid_block_invoke_2___cachedDevice == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != kGEOLocationCoordinate2DInvalid_block_invoke_2___previousCLKDeviceVersion))
  {
    kGEOLocationCoordinate2DInvalid_block_invoke_2___cachedDevice = v7;
    kGEOLocationCoordinate2DInvalid_block_invoke_2___previousCLKDeviceVersion = [v7 version];
    ___LayoutConstantsExtraLarge_block_invoke_2_2(v7, v8);
    xmmword_27DA2FF30 = v8[2];
    unk_27DA2FF40 = v8[3];
    xmmword_27DA2FF50 = v8[4];
    kGEOLocationCoordinate2DInvalid_block_invoke_2_value = v8[0];
    unk_27DA2FF20 = v8[1];
  }

  v5 = unk_27DA2FF40;
  a2[2] = xmmword_27DA2FF30;
  a2[3] = v5;
  a2[4] = xmmword_27DA2FF50;
  v6 = unk_27DA2FF20;
  *a2 = kGEOLocationCoordinate2DInvalid_block_invoke_2_value;
  a2[1] = v6;
  os_unfair_lock_unlock(&kGEOLocationCoordinate2DInvalid_block_invoke_2_lock);
}

float64x2_t ___LayoutConstantsExtraLarge_block_invoke_2_2@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  v3 = a1;
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v8 = v4;
  ___LayoutConstantsCircular_block_invoke(v3, a2);

  v5 = vmulq_n_f64(*(a2 + 16), v8);
  *a2 = vmulq_n_f64(*a2, v8);
  *(a2 + 16) = v5;
  v6 = vmulq_n_f64(*(a2 + 48), v8);
  *(a2 + 32) = vmulq_n_f64(*(a2 + 32), v8);
  *(a2 + 48) = v6;
  result = vmulq_n_f64(*(a2 + 64), v8);
  *(a2 + 64) = result;
  return result;
}

void ___LayoutConstantsExtraLarge_block_invoke_5(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v6 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_44);
  if (_block_invoke___cachedDevice_44)
  {
    v3 = _block_invoke___cachedDevice_44 == v6;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v6 version], v4 != _block_invoke___previousCLKDeviceVersion_44))
  {
    _block_invoke___cachedDevice_44 = v6;
    _block_invoke___previousCLKDeviceVersion_44 = [v6 version];
    ___LayoutConstantsExtraLarge_block_invoke_2_3(v6, v7);
    _block_invoke_value_31 = v7[0];
    unk_27DA30000 = v7[1];
    xmmword_27DA30010 = v7[2];
  }

  v5 = unk_27DA30000;
  *a2 = _block_invoke_value_31;
  a2[1] = v5;
  a2[2] = xmmword_27DA30010;
  os_unfair_lock_unlock(&_block_invoke_lock_44);
}

float64x2_t ___LayoutConstantsExtraLarge_block_invoke_2_3@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  ___LayoutConstantsModularSmall_block_invoke_1(a1, a2);
  *a2 = *a2 * 3.0;
  __asm { FMOV            V0.2D, #3.0 }

  v8 = vmulq_f64(*(a2 + 16), _Q0);
  result = vmulq_f64(*(a2 + 32), _Q0);
  *(a2 + 16) = v8;
  *(a2 + 32) = result;
  return result;
}

void ___LayoutConstantsExtraLarge_block_invoke_6(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v7 = a1;
  os_unfair_lock_lock(&_block_invoke_lock_65);
  if (_block_invoke___cachedDevice_65)
  {
    v3 = _block_invoke___cachedDevice_65 == v7;
  }

  else
  {
    v3 = 0;
  }

  if (!v3 || (v4 = [v7 version], v4 != _block_invoke___previousCLKDeviceVersion_65))
  {
    _block_invoke___cachedDevice_65 = v7;
    _block_invoke___previousCLKDeviceVersion_65 = [v7 version];
    ___LayoutConstantsExtraLarge_block_invoke_2_4(v7, v8);
    xmmword_27DA31448 = v8[2];
    unk_27DA31458 = v8[3];
    xmmword_27DA31468 = v8[4];
    _block_invoke_value_48 = v8[0];
    unk_27DA31438 = v8[1];
  }

  v5 = unk_27DA31458;
  a2[2] = xmmword_27DA31448;
  a2[3] = v5;
  a2[4] = xmmword_27DA31468;
  v6 = unk_27DA31438;
  *a2 = _block_invoke_value_48;
  a2[1] = v6;
  os_unfair_lock_unlock(&_block_invoke_lock_65);
}

float64x2_t ___LayoutConstantsExtraLarge_block_invoke_2_4@<Q0>(void *a1@<X1>, uint64_t a2@<X8>)
{
  ___LayoutConstantsModularSmall_block_invoke_3(a1, a2);
  __asm { FMOV            V0.2D, #3.0 }

  v8 = vmulq_f64(*(a2 + 16), _Q0);
  *a2 = vmulq_f64(*a2, _Q0);
  *(a2 + 16) = v8;
  v9 = vmulq_f64(*(a2 + 48), _Q0);
  *(a2 + 32) = vmulq_f64(*(a2 + 32), _Q0);
  *(a2 + 48) = v9;
  result = vmulq_f64(*(a2 + 64), _Q0);
  *(a2 + 64) = result;
  return result;
}

@end