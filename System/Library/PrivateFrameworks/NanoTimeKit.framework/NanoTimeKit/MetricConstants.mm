@interface MetricConstants
@end

@implementation MetricConstants

uint64_t ___MetricConstants_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  os_unfair_lock_lock(&_block_invoke_2_lock);
  if (_block_invoke_2___cachedDevice)
  {
    v4 = _block_invoke_2___cachedDevice == v3;
  }

  else
  {
    v4 = 0;
  }

  if (!v4 || (v5 = [v3 version], v5 != _block_invoke_2___previousCLKDeviceVersion))
  {
    _block_invoke_2___cachedDevice = v3;
    _block_invoke_2___previousCLKDeviceVersion = [v3 version];
    v8 = *(a1 + 32);
    v9[0] = MEMORY[0x277D85DD0];
    v9[1] = 3221225472;
    v9[2] = ___MetricConstants_block_invoke_3;
    v9[3] = &__block_descriptor_40_e19_v16__0__CLKDevice_8l;
    v9[4] = v8;
    ___MetricConstants_block_invoke_3(v9, v3);
  }

  v6 = _block_invoke_2_value;
  os_unfair_lock_unlock(&_block_invoke_2_lock);

  return v6;
}

void ___MetricConstants_block_invoke_2(uint64_t a1, void *a2)
{
  v2[0] = MEMORY[0x277D85DD0];
  v2[1] = 3221225472;
  v2[2] = ___MetricConstants_block_invoke_3;
  v2[3] = &__block_descriptor_40_e19_v16__0__CLKDevice_8l;
  v2[4] = *(a1 + 32);
  ___MetricConstants_block_invoke_3(v2, a2);
}

void ___MetricConstants_block_invoke_3(uint64_t a1, void *a2)
{
  v2 = a2;
  [objc_msgSend(objc_alloc(MEMORY[0x277CBBAF8]) initWithDevice:v2 identitySizeClass:{2), "scaledValue:", 20.0}];
  _MetricConstants_constants = *&v3;
  unk_27DA2DBD0 = *&v3;
  *&qword_27DA2DBD8 = v3 * 0.5;
  qword_27DA2DBE0 = 0x3FF0000000000000;
  v5 = *(MEMORY[0x277CFA180] + 16);
  xmmword_27DA2DBE8 = *MEMORY[0x277CFA180];
  unk_27DA2DBF8 = v5;
  xmmword_27DA2DC08 = xmmword_27DA2DBE8;
  unk_27DA2DC18 = v5;
  v4 = qword_27DA2DC28;
  qword_27DA2DC28 = 0;

  v2;
  CDCircularSmallComplicationDiameter();
}

__n128 ___MetricConstants_block_invoke_4@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  [*(a1 + 32) scaledValue:20.0];
  *a2 = v3;
  *(a2 + 8) = v3;
  *(a2 + 16) = v3 * 0.5;
  *(a2 + 24) = 0x3FF0000000000000;
  result = *MEMORY[0x277CFA180];
  v5 = *(MEMORY[0x277CFA180] + 16);
  *(a2 + 32) = *MEMORY[0x277CFA180];
  *(a2 + 48) = v5;
  *(a2 + 64) = result;
  *(a2 + 80) = v5;
  *(a2 + 96) = 0;
  return result;
}

id ___MetricConstants_block_invoke_3_26@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  CLKComplicationGraphicExtraLargeCircularScalingFactor();
  v5 = v4;
  v6 = *(a1 + 88);
  *(a2 + 32) = *(a1 + 72);
  *(a2 + 48) = v6;
  v7 = *(a1 + 120);
  *(a2 + 64) = *(a1 + 104);
  *(a2 + 80) = v7;
  v8 = *(a1 + 56);
  *a2 = *(a1 + 40);
  *(a2 + 16) = v8;
  result = *(a1 + 136);
  *(a2 + 96) = result;
  *(a2 + 24) = v5;
  return result;
}

double ___MetricConstants_block_invoke_33@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  [*(a1 + 32) scaledValue:11.0];
  *a2 = v3;
  *(a2 + 8) = v3;
  result = 0.0;
  v5 = *MEMORY[0x277CFA180];
  v6 = *(MEMORY[0x277CFA180] + 16);
  *(a2 + 16) = xmmword_22DCE7880;
  *(a2 + 32) = v5;
  *(a2 + 48) = v6;
  *(a2 + 64) = v5;
  *(a2 + 80) = v6;
  *(a2 + 96) = 0;
  return result;
}

@end