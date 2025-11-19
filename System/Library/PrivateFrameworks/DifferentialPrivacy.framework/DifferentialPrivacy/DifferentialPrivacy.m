uint64_t sub_22622ECD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 12)
  {
    v4 = *(a1 + 8) >> 60;
    if (((4 * v4) & 0xC) != 0)
    {
      return 16 - ((4 * v4) & 0xC | (v4 >> 2));
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_22628E7FC();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

void *sub_22622ED90(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 12)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  else
  {
    v7 = sub_22628E7FC();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_22622EE60()
{
  v1 = *(v0 + 24);

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

id _DPSemanticVersionError(void *a1)
{
  v9[1] = *MEMORY[0x277D85DE8];
  v1 = MEMORY[0x277CCA9B8];
  v8 = *MEMORY[0x277CCA450];
  v9[0] = a1;
  v2 = MEMORY[0x277CBEAC0];
  v3 = a1;
  v4 = [v2 dictionaryWithObjects:v9 forKeys:&v8 count:1];
  v5 = [v1 errorWithDomain:@"com.apple.DifferentialPrivacy.SemanticVersionError" code:1 userInfo:v4];

  v6 = *MEMORY[0x277D85DE8];

  return v5;
}

id _DPPrivacyBudgetError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a2;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.DifferentialPrivacy.DPPrivacyBudgetError" code:a1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

id _DPPrivacyBudgetErrorWithUnderlyingError(uint64_t a1, void *a2, void *a3)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x277CCA9B8];
  v6 = *MEMORY[0x277CCA7E8];
  v14[0] = *MEMORY[0x277CCA450];
  v14[1] = v6;
  v15[0] = a2;
  v15[1] = a3;
  v7 = MEMORY[0x277CBEAC0];
  v8 = a3;
  v9 = a2;
  v10 = [v7 dictionaryWithObjects:v15 forKeys:v14 count:2];
  v11 = [v5 errorWithDomain:@"com.apple.DifferentialPrivacy.DPPrivacyBudgetError" code:a1 userInfo:v10];

  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

void OUTLINED_FUNCTION_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

uint64_t OUTLINED_FUNCTION_0_0(uint64_t result, uint64_t a2, uint64_t a3, float a4)
{
  *a3 = a4;
  *(a3 + 4) = result;
  *(a3 + 12) = 2112;
  *(a3 + 14) = a2;
  return result;
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

_DWORD **poly_memory_alloc(size_t a1)
{
  if (a1 - 4293918721u < 0xFFFFFFFF00100001)
  {
    return 0;
  }

  v1 = malloc_type_calloc(1uLL, 0x40uLL, 0x1004098A284A9uLL);
  *v1 = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  v1[1] = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  v1[2] = malloc_type_calloc(a1 >> 1, 4uLL, 0x100004052888210uLL);
  v1[3] = malloc_type_calloc(a1 >> 1, 4uLL, 0x100004052888210uLL);
  v1[4] = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  v1[5] = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  v1[6] = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  v1[7] = malloc_type_calloc(a1, 4uLL, 0x100004052888210uLL);
  poly_fft_get_roots(*v1, a1, 0);
  poly_fft_get_roots(v1[1], a1, 1);
  poly_fft_get_roots(v1[2], a1 >> 1, 0);
  poly_fft_get_roots(v1[3], a1 >> 1, 1);
  return v1;
}

BOOL poly_fft_get_roots(_DWORD *a1, unint64_t a2, int a3)
{
  v3 = a2 - 2;
  if (a2 - 2 <= 0xFFFFE)
  {
    v6 = -368989143;
    if (a3)
    {
      v6 = invmod(0xEA01AC29);
    }

    *a1 = 1;
    v7 = expmod(v6, 0x100000 / a2);
    a1[1] = v7;
    if (a2 >= 3)
    {
      v8 = a1[1];
      v9 = a1 + 2;
      v10 = v3;
      do
      {
        v8 = v8 * v7 % 0xFFF00001;
        *v9++ = v8;
        --v10;
      }

      while (v10);
    }
  }

  return v3 < 0xFFFFF;
}

void poly_memory_free(void **a1)
{
  if (a1)
  {
    free(*a1);
    free(a1[1]);
    free(a1[2]);
    free(a1[3]);
    free(a1[4]);
    free(a1[5]);
    free(a1[6]);
    free(a1[7]);
  }

  free(a1);
}

BOOL poly_fft(int *a1, int *a2, _DWORD *a3, unint64_t a4, int a5, int **a6)
{
  if (a4 > 0xFFF00000)
  {
    return 0;
  }

  v9 = a4;
  result = isNonZeroPowerOfTwo(a4);
  if (result)
  {
    fft_recurse(a1, v9, a3, a2, *a6, a6[1], a6[2]);
    if (a5)
    {
      for (i = invmod(v9); v9; --v9)
      {
        *a1 = *a1 * i - *a1 * i / 0xFFF00001 + ((*a1 * i / 0xFFF00001) << 20);
        ++a1;
      }
    }

    return 1;
  }

  return result;
}

int *fft_recurse(int *result, unint64_t a2, _DWORD *a3, int *a4, int *a5, int *a6, _DWORD *a7)
{
  while (1)
  {
    if (a2 == 1)
    {
      *result = *a4;
      return result;
    }

    v11 = a2 >> 1;
    v12 = &a5[a2 >> 1];
    v13 = &a6[a2 >> 1];
    v14 = &a7[a2 >> 1];
    if (a2)
    {
      break;
    }

    fft_recurse(a5, 0, a7, a6, v12, v13, v14);
    result = a5;
    a2 = v11;
    a3 = a7;
    a4 = a6;
    a5 = v12;
    a6 = v13;
    a7 = v14;
  }

  v33 = a3;
  v34 = result;
  v15 = 0;
  if (v11 <= 1)
  {
    v16 = 1;
  }

  else
  {
    v16 = a2 >> 1;
  }

  v17 = &a4[v11];
  v18 = a3;
  do
  {
    v19 = a4[v15];
    v20 = -1048575 - v17[v15];
    v21 = v19 >= v20;
    v22 = v19 - v20;
    if (!v21)
    {
      v22 -= 0xFFFFF;
    }

    a6[v15] = v22;
    v23 = *v18;
    v18 += 2;
    a7[v15++] = v23;
  }

  while (v16 != v15);
  fft_recurse(a5, a2 >> 1, a7, a6, v12, v13, v14);
  v24 = 0;
  v25 = v34;
  do
  {
    *v25 = a5[v24];
    v25 += 2;
    ++v24;
  }

  while (v16 != v24);
  v26 = 0;
  do
  {
    v27 = a4[v26];
    v28 = v17[v26];
    v21 = v27 >= v28;
    v29 = v27 - v28;
    if (!v21)
    {
      v29 -= 0xFFFFF;
    }

    a6[v26] = v29;
    v30 = v33[v26] * v29;
    a6[v26++] = v30 - v30 / 0xFFF00001 + ((v30 / 0xFFF00001) << 20);
  }

  while (v16 != v26);
  result = fft_recurse(a5, v11, a7, a6, v12, v13, v14);
  v31 = v34 + 1;
  do
  {
    v32 = *a5++;
    *v31 = v32;
    v31 += 2;
    --v16;
  }

  while (v16);
  return result;
}

float _DPL2Norm(float *a1, uint64_t a2)
{
  for (i = 0.0; a2; --a2)
  {
    v3 = *a1++;
    i = i + (v3 * v3);
  }

  return sqrtf(i);
}

float _DPClipNorm(float *a1, uint64_t a2, float a3)
{
  v3 = 0.0;
  if (a2)
  {
    v4 = a1;
    v5 = a2;
    do
    {
      v6 = *v4++;
      v3 = v3 + (v6 * v6);
      --v5;
    }

    while (v5);
    v3 = sqrtf(v3);
    if (v3 > a3)
    {
      v7 = a3 / v3;
      do
      {
        *a1 = v7 * *a1;
        ++a1;
        --a2;
      }

      while (a2);
      return a3;
    }
  }

  else if (a3 < 0.0)
  {
    return a3;
  }

  return v3;
}

long double _DPGaussianMechanismMinimumDelta(long double a1, double a2, double a3)
{
  v5 = a2 + a2;
  v6 = a1 * a2 / a3;
  v7 = erfc((a3 / (a2 + a2) - v6) / -1.41421356) * 0.5;
  v8 = erfc((-a3 / v5 - v6) / -1.41421356) * 0.5;
  return v7 - exp(a1) * v8;
}

void _DPMomentsAccountantSubSampledRenyiEpsilon(unsigned int a1, double a2, double a3)
{
  if (a2 >= 1.0e-14 && vabdd_f64(1.0, a2) >= 1.0e-14)
  {
    v6 = 1.0 - a2;
    v7 = malloc_type_calloc(a1 - 1, 8uLL, 0x100004000313F17uLL);
    v8 = v7;
    v9 = a1;
    *v7 = (a1 + -1.0) * a1 * 0.5;
    if (a1 >= 3)
    {
      v10 = v7 + 1;
      v11 = 3.0;
      v12 = 4;
      do
      {
        *v10 = (v9 + 1.0 - v11) * *(v10 - 1) / v11;
        ++v10;
        v11 = v12++;
      }

      while (v11 <= v9);
    }

    v13 = a2 / v6;
    v14 = log(a2 / v6);
    v15 = log(v9 * v13 + 1.0);
    if (a1 >= 2)
    {
      v16 = 1.0 / ((a3 + a3) * a3);
      v17 = 1;
      v18 = v8;
      do
      {
        v19 = v17 + 1;
        v20 = *v18++;
        v21 = log(v20) + (v17 * (v17 + 1)) * v16 + (v17 + 1) * v14;
        v22 = exp(v15 - v21);
        v15 = v21 + log(v22 + 1.0);
        v17 = v19;
      }

      while (a1 != v19);
    }

    free(v8);
    log(v6);
  }
}

double *_DPBinomialCoef(double *result, double a2)
{
  *result = (a2 + -1.0) * a2 * 0.5;
  v2 = 3.0;
  if (a2 >= 3.0)
  {
    v3 = result + 1;
    v4 = 4;
    do
    {
      *v3 = (a2 + 1.0 - v2) * *(v3 - 1) / v2;
      ++v3;
      v2 = v4++;
    }

    while (v2 <= a2);
  }

  return result;
}

void sub_2262380F8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 160), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226238AFC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v13 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v11 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__30(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x22AA7A8C0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_226239038(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2_0(void *a1@<X0>, const char *a2@<X3>, uint8_t *a3@<X4>, NSObject *a4@<X8>)
{

  _os_log_error_impl(a1, a4, OS_LOG_TYPE_ERROR, a2, a3, 0x16u);
}

void sub_22623B368(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_1_1(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x20u);
}

void reportCoreAnalyticsUploadEvent(void *a1, uint64_t a2, double a3)
{
  v21[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  v6 = [MEMORY[0x277CCAC38] processInfo];
  [v6 systemUptime];
  v8 = v7;

  v9 = MEMORY[0x277CBEB38];
  v20[0] = @"connectionType";
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a2];
  v21[0] = v10;
  v20[1] = @"duration";
  v11 = [MEMORY[0x277CCABB0] numberWithDouble:v8 - a3];
  v21[1] = v11;
  v20[2] = @"success";
  v12 = [MEMORY[0x277CCABB0] numberWithBool:v5 == 0];
  v21[2] = v12;
  v13 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v21 forKeys:v20 count:3];
  v14 = [v9 dictionaryWithDictionary:v13];

  if (v5)
  {
    v15 = MEMORY[0x277CCACA8];
    v16 = [v5 domain];
    v17 = [v15 stringWithFormat:@"%@_%ld", v16, objc_msgSend(v5, "code")];
    [v14 setObject:v17 forKeyedSubscript:@"domainCode"];
  }

  v18 = +[_DPCoreAnalyticsCollector sharedInstance];
  [v18 reportMetricsForEvent:@"com.apple.DifferentialPrivacy.DediscoUpload" withMetrics:v14];

  v19 = *MEMORY[0x277D85DE8];
}

float *accumulate(float *result, float *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    *result = v3 + *result;
    ++result;
  }

  return result;
}

void *prio_memory_alloc(uint64_t a1)
{
  PowerOfTwo = nextPowerOfTwo(a1 + 1);
  v2 = 2 * PowerOfTwo;
  if ((2 * PowerOfTwo) > 0x100000)
  {
    return 0;
  }

  v4 = PowerOfTwo;
  v3 = malloc_type_malloc(0x30uLL, 0x300407BB6DF5BuLL);
  *v3 = malloc_type_calloc(v2, 4uLL, 0x100004052888210uLL);
  v3[1] = malloc_type_calloc(v4, 4uLL, 0x100004052888210uLL);
  v3[2] = malloc_type_calloc(v4, 4uLL, 0x100004052888210uLL);
  v3[3] = malloc_type_calloc(v2, 4uLL, 0x100004052888210uLL);
  v3[4] = malloc_type_calloc(v2, 4uLL, 0x100004052888210uLL);
  v3[5] = poly_memory_alloc(v2);
  return v3;
}

void prio_memory_free(void *a1)
{
  if (a1)
  {
    free(*a1);
    free(*(a1 + 1));
    free(*(a1 + 2));
    free(*(a1 + 3));
    free(*(a1 + 4));
    poly_memory_free(*(a1 + 5));
  }

  free(a1);
}

unsigned int *share_array_prng(unsigned int *result, unsigned int *a2, uint64_t a3)
{
  for (; a3; --a3)
  {
    v3 = *a2++;
    v4 = *result - v3;
    if (*result < v3)
    {
      v4 -= 0xFFFFF;
    }

    *result++ = v4;
  }

  return result;
}

BOOL prio_encode(uint64_t a1, int *a2, uint64_t a3, void *a4)
{
  v8 = a1 + 1;
  v9 = a1 + nextPowerOfTwo(a1 + 1) + 3;
  if (v9 == a3)
  {
    v34 = a3;
    v10 = &a2[a1];
    PowerOfTwo = nextPowerOfTwo(v8);
    v13 = a4[1];
    v12 = a4[2];
    v32 = a4[3];
    v33 = 2 * PowerOfTwo;
    v31 = a4[4];
    *v13 = arc4random_uniform(0xFFF00001);
    *v12 = arc4random_uniform(0xFFF00001);
    v14 = *v13;
    *v10 = *v13;
    v15 = *v12 * v14;
    v10[1] = *v12;
    v10[2] = v15 - v15 / 0xFFF00001 + ((v15 / 0xFFF00001) << 20);
    if (a1)
    {
      v16 = 2;
      if (v8 > 2)
      {
        v16 = v8;
      }

      v17 = v16 - 1;
      v18 = v12 + 1;
      v19 = v13 + 1;
      do
      {
        v20 = *a2++;
        *v19++ = v20;
        v21 = v20 - 1;
        if (v20)
        {
          v22 = v21;
        }

        else
        {
          v22 = -1048576;
        }

        *v18++ = v22;
        --v17;
      }

      while (v17);
    }

    poly_interpolate_eval_2N(PowerOfTwo & 0x7FFFFFFFFFFFFFFFLL, v13, v32, a4);
    poly_interpolate_eval_2N(PowerOfTwo & 0x7FFFFFFFFFFFFFFFLL, v12, v31, a4);
    a3 = v34;
    if (v33)
    {
      v23 = v10 + 3;
      v24 = (v31 + 1);
      v25 = (v32 + 1);
      v26 = ((v33 - 2) >> 1) + 1;
      do
      {
        v28 = *v25;
        v25 += 2;
        v27 = v28;
        v29 = *v24;
        v24 += 2;
        *v23++ = v29 * v27 - v29 * v27 / 0xFFF00001 + ((v29 * v27 / 0xFFF00001) << 20);
        --v26;
      }

      while (v26);
    }
  }

  return v9 == a3;
}

BOOL poly_interpolate_eval_2N(unint64_t a1, int *a2, int *a3, uint64_t a4)
{
  v7 = *a4;
  poly_fft(*a4, a2, *(*(a4 + 40) + 24), a1, 1, (*(a4 + 40) + 40));
  v8 = *(a4 + 40);
  v11 = *v8;
  v10 = (v8 + 5);
  v9 = v11;

  return poly_fft(a3, v7, v9, 2 * a1, 0, v10);
}

void sub_226240E54(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226241648(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__2(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226241FF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_226242AC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226242EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2262432D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226244758(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(va);
  _Unwind_Resume(a1);
}

BOOL sampleUniformWithoutReplace<unsigned long,std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(void *a1, unint64_t *a2, unint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  v5 = *a2;
  if (*a3 <= *a2)
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(a1);
    v10 = *a2;
    v11 = *a2 - *a3;
    v16 = v11;
    while (v11 < v10)
    {
      v15[0] = 0;
      v15[1] = v11;
      v14 = std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(v15, a4, v15);
      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, &v14);
      if ((v12 & 1) == 0)
      {
        std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(a1, &v16);
      }

      v11 = ++v16;
      v10 = *a2;
    }
  }

  return v4 <= v5;
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::uniform_int_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(uint64_t a1, uint64_t a2, void *a3)
{
  result = a3[1];
  v6 = result - *a3;
  if (result != *a3)
  {
    v12[10] = v3;
    v12[11] = v4;
    v7 = v6 + 1;
    if (v6 == -1)
    {
      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, 0x40uLL);
      return std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
    }

    else
    {
      v9 = __clz(v7);
      v10 = 63;
      if (((v7 << v9) & 0x7FFFFFFFFFFFFFFFLL) != 0)
      {
        v10 = 64;
      }

      std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(v12, a2, v10 - v9);
      do
      {
        v11 = std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(v12);
      }

      while (v11 >= v7);
      return *a3 + v11;
    }
  }

  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__independent_bits_engine(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if ((a3 & 0x1F) != 0)
  {
    v3 = (a3 >> 5) + 1;
  }

  else
  {
    v3 = a3 >> 5;
  }

  v4 = a3 / v3;
  *(result + 16) = a3 / v3;
  *(result + 24) = v3;
  v5 = (-1 << (a3 / v3)) & 0x100000000;
  if (a3 / v3 >= 0x40)
  {
    v5 = 0;
  }

  *(result + 40) = v5;
  if ((v5 ^ 0x100000000) > v5 / v3)
  {
    ++v3;
    v4 = a3 / v3;
    *(result + 16) = a3 / v3;
    *(result + 24) = v3;
    if (a3 / v3 > 0x3F)
    {
      v6 = 0;
      *(result + 32) = v3 + v4 * v3 - a3;
      *(result + 40) = 0;
      goto LABEL_13;
    }

    *(result + 40) = (-1 << v4) & 0x100000000;
  }

  *(result + 32) = v3 + a3 / v3 * v3 - a3;
  if (v4 > 0x3E)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0x80000000uLL >> v4 << (v4 + 1);
  }

LABEL_13:
  *(result + 48) = v6;
  v7 = 0xFFFFFFFF >> -v4;
  if (!v4)
  {
    v7 = 0;
  }

  if (v4 >= 0x1F)
  {
    v8 = -1;
  }

  else
  {
    v8 = 0xFFFFFFFF >> ~v4;
  }

  *(result + 56) = v7;
  *(result + 60) = v8;
  return result;
}

uint64_t std::__independent_bits_engine<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>,unsigned long>::__eval(uint64_t a1)
{
  if (*(a1 + 32))
  {
    v2 = 0;
    v3 = 0;
    do
    {
      do
      {
        v4 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
      }

      while (*(a1 + 40) <= v4);
      v5 = *(a1 + 16);
      if (v5 >= 0x40)
      {
        v6 = 0;
      }

      else
      {
        v6 = v2 << v5;
      }

      v2 = v6 + (*(a1 + 56) & v4);
      ++v3;
      v7 = *(a1 + 32);
    }

    while (v3 < v7);
  }

  else
  {
    v2 = 0;
    v7 = 0;
  }

  for (; v7 < *(a1 + 24); ++v7)
  {
    do
    {
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(*a1);
    }

    while (*(a1 + 48) <= v8);
    v9 = *(a1 + 16);
    if (v9 >= 0x3F)
    {
      v10 = 0;
    }

    else
    {
      v10 = v2 << (v9 + 1);
    }

    v2 = v10 + (*(a1 + 60) & v8);
  }

  return v2;
}

std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253>::result_type std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this)
{
  i = this->__i_;
  v2 = (i + 1) % 0x270;
  v3 = this->__x_[v2];
  if (v3)
  {
    v4 = -1727483681;
  }

  else
  {
    v4 = 0;
  }

  v5 = v4 ^ this->__x_[(i + 397) % 0x270] ^ ((v3 & 0x7FFFFFFE | this->__x_[i] & 0x80000000) >> 1);
  this->__x_[i] = v5;
  this->__i_ = v2;
  v6 = ((v5 ^ (v5 >> 11)) << 7) & 0x9D2C5680 ^ v5 ^ (v5 >> 11);
  return (v6 << 15) & 0xEFC60000 ^ v6 ^ (((v6 << 15) & 0xEFC60000 ^ v6) >> 18);
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__emplace_unique_key_args<unsigned long,unsigned long const&>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, MEMORY[0x277D82778], MEMORY[0x277D82620]);
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__do_rehash<true>(a1, prime);
    }
  }
}

void std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:ne200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

uint64_t *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::__erase_unique<unsigned long>(void *a1, unint64_t *a2)
{
  result = std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(a1, a2);
  if (result)
  {
    std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::find<unsigned long>(void *a1, unint64_t *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v3 >= *&v2)
    {
      v5 = v3 % *&v2;
    }
  }

  else
  {
    v5 = (*&v2 - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  result = *v6;
  if (*v6)
  {
    do
    {
      v8 = result[1];
      if (v8 == v3)
      {
        if (result[2] == v3)
        {
          return result;
        }
      }

      else
      {
        if (v4.u32[0] > 1uLL)
        {
          if (v8 >= *&v2)
          {
            v8 %= *&v2;
          }
        }

        else
        {
          v8 &= *&v2 - 1;
        }

        if (v8 != v5)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

uint64_t std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return v2;
}

void *std::__hash_table<unsigned long,std::hash<unsigned long>,std::equal_to<unsigned long>,std::allocator<unsigned long>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

uint64_t std::binomial_distribution<unsigned long>::param_type::param_type(uint64_t a1, unint64_t a2, double a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  if (a3 > 0.0 && a3 < 1.0)
  {
    *(a1 + 32) = ((a2 + 1) * a3);
    v5 = lgamma_r(a2 + 1.0, &v14);
    v6 = v5 - lgamma_r(*(a1 + 32) + 1.0, &v15);
    v7 = v6 - lgamma_r((*a1 - *(a1 + 32)) + 1.0, &v16);
    v8 = *(a1 + 32);
    v9 = *(a1 + 8);
    v10 = v7 + v8 * log(v9);
    v11 = (*a1 - v8);
    v12 = log(1.0 - v9);
    *(a1 + 16) = exp(v10 + v11 * v12);
    *(a1 + 24) = v9 / (1.0 - v9);
  }

  return a1;
}

uint64_t std::binomial_distribution<unsigned long>::operator()<std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>>(int a1, std::mersenne_twister_engine<unsigned int, 32, 624, 397, 31, 2567483615, 11, 4294967295, 7, 2636928640, 15, 4022730752, 18, 1812433253> *this, uint64_t a3)
{
  result = *a3;
  if (*a3)
  {
    v5 = *(a3 + 8);
    if (v5 == 0.0)
    {
      return 0;
    }

    else if (v5 != 1.0)
    {
      v7 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
      v8 = std::mersenne_twister_engine<unsigned int,32ul,624ul,397ul,31ul,2567483615u,11ul,4294967295u,7ul,2636928640u,15ul,4022730752u,18ul,1812433253u>::operator()(this);
      v9 = *(a3 + 16);
      v10 = (v7 + v8 * 4294967300.0) * 5.42101086e-20 + 0.0 - v9;
      v11 = *(a3 + 32);
      if (v10 >= 0.0)
      {
        v12 = *(a3 + 24);
        v13 = *a3;
        v14 = *(a3 + 16);
        v15 = *(a3 + 32);
        while (2)
        {
          v16 = 0;
          v17 = 0;
          while (1)
          {
            v18 = v17;
            if (v15 == v17)
            {
              break;
            }

            v14 = v14 * ((v15 + v16) / (v12 * (*a3 + 1 - v15 + v17)));
            v10 = v10 - v14;
            if (v10 < 0.0)
            {
              return ~v17 + v15;
            }

            ++v17;
            v19 = v11 + v18 + 1;
            --v16;
            if (v19 <= v13)
            {
              v15 += v16;
              goto LABEL_14;
            }
          }

          v15 = 0;
          result = 0;
          v19 = v11 + v17 + 1;
          if (v19 > v13)
          {
            return result;
          }

LABEL_14:
          v9 = v9 * (v12 * (v13 - v11 - v18) / v19);
          v10 = v10 - v9;
          v11 = v19;
          result = v19;
          if (v10 >= 0.0)
          {
            continue;
          }

          break;
        }
      }

      else
      {
        return *(a3 + 32);
      }
    }
  }

  return result;
}

void OUTLINED_FUNCTION_1_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x12u);
}

void sub_2262476D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose((v47 - 176), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void OUTLINED_FUNCTION_3_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

void sub_22624C50C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t expmod(int a1, unsigned int a2)
{
  if (!a2)
  {
    return 1;
  }

  LODWORD(v3) = a1;
  result = 1;
  v3 = v3;
  do
  {
    if ((a2 & 1) == 0)
    {
      do
      {
        v4 = a2;
        a2 >>= 1;
        v3 = v3 * v3 % 0xFFF00001;
      }

      while ((v4 & 2) == 0);
    }

    v5 = (result * v3 * 0x1000FF0FE0FD11uLL) >> 64;
    result = result * v3 - 4293918721u * ((v5 + ((result * v3 - v5) >> 1)) >> 31);
    --a2;
  }

  while (a2);
  return result;
}

uint64_t invmod(unsigned int a1)
{
  v1 = 0;
  v2 = 0;
  v3 = -1048575;
  v4 = 1;
  do
  {
    v5 = v3;
    v6 = v4;
    v4 = v2 - v4 * v1;
    v1 = a1 / v3;
    v3 = a1 % v3;
    v2 = v6;
    a1 = v5;
  }

  while (v3);
  if (v4 >= 0)
  {
    return v4;
  }

  else
  {
    return (v4 - 0xFFFFF);
  }
}

void OUTLINED_FUNCTION_8(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, a5, 0x16u);
}

void OUTLINED_FUNCTION_0_7(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

_DWORD *pi_rappor_get_coefficients(_DWORD *result, uint64_t a2, unint64_t a3, unsigned int a4)
{
  for (; a2; --a2)
  {
    *result++ = a3 % a4;
    a3 /= a4;
  }

  return result;
}

uint64_t pi_rappor_inverse_BOOL_func(uint64_t result, int a2, int a3, _DWORD *a4, _DWORD *a5)
{
  if (result)
  {
    v5 = 0;
  }

  else
  {
    v5 = a2;
  }

  if (result)
  {
    v6 = a2;
  }

  else
  {
    v6 = a3;
  }

  *a4 = v5;
  *a5 = v6;
  return result;
}

void sub_22625428C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__5(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226254518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_2262617BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__6(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id _DPNewTransparencyLog(void *a1, __CFString **a2)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v3 = a1;
  if ([v3 count])
  {
    v4 = [v3 objectAtIndexedSubscript:0];
    v5 = [v4 key];

    v6 = [_DPKeyNames keyPropertiesForKey:v5];
    v7 = v6;
    if (v6)
    {
      v8 = [v6 transparencyLogReportName];
      v9 = v8;
      v10 = @"PrivacyPreservingMeasurement";
      if (v8)
      {
        v10 = v8;
      }

      v11 = v10;

      if (([(__CFString *)v5 hasPrefix:@"fedstats:com.apple.insights.content-safety.analysisB"]& 1) == 0 && ![(__CFString *)v5 hasPrefix:@"fedstats:com.apple.insights.internal-collection.analysisB"])
      {
        if ([(__CFString *)v11 isEqualToString:@"AppleIntelligenceTransparencyReport"])
        {
          v23 = _DPAppleIntelligenceTransparencyLog;
        }

        else
        {
          v23 = _DPDiagnosticsAndUsageTransparencyLog;
        }

        v17 = [[v23 alloc] initWithDonations:v3 error:a2];
        goto LABEL_24;
      }

      v12 = +[_DPLog framework];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v27 = v5;
        _os_log_impl(&dword_22622D000, v12, OS_LOG_TYPE_DEFAULT, "Skip transparency log for %{privacy}@", buf, 0xCu);
      }
    }

    else
    {
      v18 = MEMORY[0x277CCA9B8];
      v28 = *MEMORY[0x277CCA450];
      v19 = [MEMORY[0x277CCACA8] stringWithFormat:@"Invalid collection ID=%@", v5];
      v29 = v19;
      v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:&v29 forKeys:&v28 count:1];
      v11 = [v18 errorWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:4 userInfo:v20];

      v21 = +[_DPLog framework];
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        [_DPSemanticVersion initWithString:v11 error:v21];
      }

      if (a2)
      {
        v22 = v11;
        v17 = 0;
        *a2 = v11;
LABEL_24:

        goto LABEL_25;
      }
    }

    v17 = 0;
    goto LABEL_24;
  }

  v13 = MEMORY[0x277CCA9B8];
  v30 = *MEMORY[0x277CCA450];
  v31[0] = @"Expect at least one donation in the transparency log";
  v14 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v31 forKeys:&v30 count:1];
  v5 = [v13 errorWithDomain:@"com.apple.DifferentialPrivacy.DPTransparencyLogCreatorError" code:1 userInfo:v14];

  v15 = +[_DPLog framework];
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    [_DPSemanticVersion initWithString:v5 error:v15];
  }

  if (a2)
  {
    v16 = v5;
    v17 = 0;
    *a2 = v5;
  }

  else
  {
    v17 = 0;
  }

LABEL_25:

  v24 = *MEMORY[0x277D85DE8];

  return v17;
}

void __one_time_setup_block_invoke(uint64_t a1)
{
  v2 = [MEMORY[0x277CCAA00] defaultManager];
  v3 = *(a1 + 32);
  v27 = 0;
  v4 = [v2 createDirectoryAtPath:v3 withIntermediateDirectories:1 attributes:0 error:&v27];
  v5 = v27;
  if (!v4)
  {
    v23 = +[_DPLog daemon];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      __one_time_setup_block_invoke_cold_1();
    }

    exit(1);
  }

  v6 = [*(a1 + 32) UTF8String];
  v7 = +[_DPStrings dataValueStorageClass];
  [v7 UTF8String];
  v8 = rootless_check_datavault_flag();
  v9 = +[_DPLog daemon];
  v10 = v9;
  if (v8 != 1)
  {
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      __one_time_setup_block_invoke_cold_2(v10);
    }

    goto LABEL_14;
  }

  if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_22622D000, v10, OS_LOG_TYPE_INFO, "Database directory needs conversion to Data Vault", buf, 2u);
  }

  if (chmod(v6, 0x1C0u))
  {
    v11 = +[_DPLog daemon];
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      __one_time_setup_block_invoke_cold_3();
    }
  }

  if (rootless_convert_to_datavault())
  {
    v10 = +[_DPLog daemon];
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      __one_time_setup_block_invoke_cold_4();
    }

LABEL_14:
  }

  v12 = *(a1 + 40);
  v26 = v5;
  v13 = [v2 createDirectoryAtPath:v12 withIntermediateDirectories:1 attributes:0 error:&v26];
  v14 = v26;

  if (v13)
  {
    v15 = [_DPReportFilesMaintainer retiredReportsPath:*(a1 + 40)];
    v25 = v14;
    v16 = [v2 createDirectoryAtPath:v15 withIntermediateDirectories:1 attributes:0 error:&v25];
    v17 = v25;

    if (v16)
    {
      goto LABEL_23;
    }

    v18 = +[_DPLog daemon];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __one_time_setup_block_invoke_cold_6();
    }
  }

  else
  {
    v18 = +[_DPLog daemon];
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      __one_time_setup_block_invoke_cold_5();
    }

    v17 = v14;
  }

LABEL_23:
  v19 = +[_DPStrings transparencyLogDirectoryPath];
  v24 = v17;
  v20 = [v2 createDirectoryAtPath:v19 withIntermediateDirectories:1 attributes:0 error:&v24];
  v21 = v24;

  if ((v20 & 1) == 0)
  {
    v22 = +[_DPLog daemon];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      __one_time_setup_block_invoke_cold_7();
    }
  }
}

void OUTLINED_FUNCTION_4_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

id _DPVDAFError(uint64_t a1, void *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  v10 = *MEMORY[0x277CCA450];
  v11[0] = a2;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a2;
  v6 = [v4 dictionaryWithObjects:v11 forKeys:&v10 count:1];
  v7 = [v3 errorWithDomain:@"com.apple.DifferentialPrivacy.DPVDAFError" code:a1 userInfo:v6];

  v8 = *MEMORY[0x277D85DE8];

  return v7;
}

void sub_226268F24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_226269358(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a45, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_22626A2CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22626A518(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_22626A718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLBFEventManagerClass_block_invoke(uint64_t a1)
{
  LighthouseBitacoraFrameworkLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LBFEventManager");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLBFEventManagerClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    __getLBFEventManagerClass_block_invoke_cold_1();
    LighthouseBitacoraFrameworkLibrary();
  }
}

void LighthouseBitacoraFrameworkLibrary()
{
  v5 = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  if (!LighthouseBitacoraFrameworkLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x277D85DD0];
    v2[2] = 3221225472;
    v2[3] = __LighthouseBitacoraFrameworkLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_27858B478;
    v4 = 0;
    LighthouseBitacoraFrameworkLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = v2[0];
  if (!LighthouseBitacoraFrameworkLibraryCore_frameworkLibrary)
  {
    v0 = abort_report_np();
    goto LABEL_7;
  }

  if (v2[0])
  {
LABEL_7:
    free(v0);
  }

  v1 = *MEMORY[0x277D85DE8];
}

uint64_t __LighthouseBitacoraFrameworkLibraryCore_block_invoke(uint64_t a1)
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = *(a1 + 32);
  result = _sl_dlopen();
  LighthouseBitacoraFrameworkLibraryCore_frameworkLibrary = result;
  v3 = *MEMORY[0x277D85DE8];
  return result;
}

Class __getLBFTrialIdentifiersClass_block_invoke(uint64_t a1)
{
  LighthouseBitacoraFrameworkLibrary();
  result = objc_getClass("LBFTrialIdentifiers");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLBFTrialIdentifiersClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v3 = __getLBFTrialIdentifiersClass_block_invoke_cold_1();
    return __getLBFDprivacydEventClass_block_invoke(v3);
  }

  return result;
}

_DPHCMSSequenceRecord *__getLBFDprivacydEventClass_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9)
{
  LighthouseBitacoraFrameworkLibrary();
  result = objc_getClass("LBFDprivacydEvent");
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLBFDprivacydEventClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v11 = __getLBFDprivacydEventClass_block_invoke_cold_1();
    return [(_DPHCMSSequenceRecord *)v11 initWithKey:v12 plainSequence:v13 sequence:v14 sequenceHashIndex:v15 sequenceBitIndex:v16 creationDate:v17 submitted:v19 objectId:v18, a9];
  }

  return result;
}

void sub_226270A38(_Unwind_Exception *a1)
{
  do
  {
    v4 = *(v2 - 8);
    v2 -= 8;
  }

  while (v2 != v1);
  _Unwind_Resume(a1);
}

uint64_t _DPDediscoVersionWithMetadata(void *a1)
{
  v51 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"DediscoTaskConfig"];

  if (!v2)
  {
    v30 = 1;
    goto LABEL_56;
  }

  v3 = [v1 objectForKeyedSubscript:@"DediscoTaskConfig"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_37;
  }

  v4 = [v1 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v5 = [v4 objectForKeyedSubscript:@"DediscoServerConfiguration"];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if ((isKindOfClass & 1) == 0)
  {
LABEL_37:
    v30 = 0;
    goto LABEL_56;
  }

  v7 = [v1 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v8 = [v7 objectForKeyedSubscript:@"DediscoServerConfiguration"];

  v9 = [v8 objectForKeyedSubscript:@"Leader"];
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {

    goto LABEL_39;
  }

  v10 = [v8 objectForKeyedSubscript:@"Helpers"];
  objc_opt_class();
  v11 = objc_opt_isKindOfClass();

  if ((v11 & 1) == 0)
  {
LABEL_39:
    v30 = 0;
    goto LABEL_55;
  }

  [v8 objectForKeyedSubscript:@"Helpers"];
  v45 = 0u;
  v46 = 0u;
  v47 = 0u;
  v12 = v48 = 0u;
  v13 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
  if (v13)
  {
    v14 = v13;
    v15 = *v46;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v46 != v15)
        {
          objc_enumerationMutation(v12);
        }

        v17 = *(*(&v45 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v30 = 0;
          v19 = v12;
          goto LABEL_54;
        }
      }

      v14 = [v12 countByEnumeratingWithState:&v45 objects:v50 count:16];
    }

    while (v14);
  }

  v18 = [v1 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v19 = [v18 objectForKeyedSubscript:@"Version"];

  v20 = [v19 length];
  v21 = [_DPSemanticVersion alloc];
  if (!v20)
  {
    v24 = [(_DPSemanticVersion *)v21 initWithMajorVersion:0 minorVersion:2 patchVersion:1];
    v22 = +[_DPLog framework];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
    {
      _DPDediscoVersionWithMetadata_cold_4();
    }

    v30 = 4;
    goto LABEL_53;
  }

  v44 = 0;
  v22 = [(_DPSemanticVersion *)v21 initWithString:v19 error:&v44];
  v23 = v44;
  v24 = v23;
  if (!v22)
  {
    v34 = +[_DPLog framework];
    if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
    {
      _DPDediscoVersionWithMetadata_cold_3();
    }

    v30 = 0;
    goto LABEL_52;
  }

  v38 = v23;
  v39 = v19;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v25 = [&unk_283976308 countByEnumeratingWithState:&v40 objects:v49 count:16];
  if (!v25)
  {
    goto LABEL_33;
  }

  v26 = v25;
  v27 = *v41;
  while (2)
  {
    for (j = 0; j != v26; ++j)
    {
      if (*v41 != v27)
      {
        objc_enumerationMutation(&unk_283976308);
      }

      v29 = [*(*(&v40 + 1) + 8 * j) unsignedIntegerValue];
      v30 = v29;
      switch(v29)
      {
        case 4:
          v31 = [_DPSemanticVersion alloc];
          v32 = 2;
          v33 = 1;
          goto LABEL_28;
        case 3:
          v31 = [_DPSemanticVersion alloc];
          v32 = 2;
          goto LABEL_26;
        case 2:
          v31 = [_DPSemanticVersion alloc];
          v32 = 1;
LABEL_26:
          v33 = 0;
LABEL_28:
          v34 = [(_DPSemanticVersion *)v31 initWithMajorVersion:0 minorVersion:v32 patchVersion:v33];
          goto LABEL_30;
      }

      v34 = 0;
LABEL_30:
      if ([v34 isBackwardCompatibleWithVersion:v22])
      {
        v35 = +[_DPLog framework];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEBUG))
        {
          _DPDediscoVersionWithMetadata_cold_1();
        }

        goto LABEL_47;
      }
    }

    v26 = [&unk_283976308 countByEnumeratingWithState:&v40 objects:v49 count:16];
    if (v26)
    {
      continue;
    }

    break;
  }

LABEL_33:
  v34 = +[_DPLog framework];
  if (os_log_type_enabled(v34, OS_LOG_TYPE_ERROR))
  {
    v19 = v39;
    _DPDediscoVersionWithMetadata_cold_2();
    v30 = 0;
  }

  else
  {
    v30 = 0;
LABEL_47:
    v19 = v39;
  }

  v24 = v38;
LABEL_52:

LABEL_53:
LABEL_54:

LABEL_55:
LABEL_56:

  v36 = *MEMORY[0x277D85DE8];
  return v30;
}

void sub_226276D7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_226277080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__8(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_226277324(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _DPMetadataRequiredKeys()
{
  if (_DPMetadataRequiredKeys_onceToken != -1)
  {
    _DPMetadataRequiredKeys_cold_1();
  }

  v1 = _DPMetadataRequiredKeys__DPMetadataRequiredKeys;

  return v1;
}

id _DPMetadataOptionalKeys()
{
  if (_DPMetadataOptionalKeys_onceToken != -1)
  {
    _DPMetadataOptionalKeys_cold_1();
  }

  v1 = _DPMetadataOptionalKeys__DPMetadataOptionalKeys;

  return v1;
}

id _DPMetadataV2RequiredKeys()
{
  if (_DPMetadataV2RequiredKeys_onceToken != -1)
  {
    _DPMetadataV2RequiredKeys_cold_1();
  }

  v1 = _DPMetadataV2RequiredKeys__DPMetadataRequiredKeys;

  return v1;
}

id _DPMetadataV2OptionalKeys()
{
  if (_DPMetadataV2OptionalKeys_onceToken != -1)
  {
    _DPMetadataV2OptionalKeys_cold_1();
  }

  v1 = _DPMetadataV2OptionalKeys__DPMetadataOptionalKeys;

  return v1;
}

id _DPMetadataExpectedClasses()
{
  if (_DPMetadataExpectedClasses_onceToken != -1)
  {
    _DPMetadataExpectedClasses_cold_1();
  }

  v1 = _DPMetadataExpectedClasses__DPMetadataExpectedClassesSet;

  return v1;
}

uint64_t _DPMetadataIsV2(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"Version"];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [v1 isEqualToString:@"2.0"];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t _DPMetadataIsDPMechanismNone(void *a1)
{
  v1 = [a1 objectForKeyedSubscript:@"DediscoTaskConfig"];
  v2 = [v1 objectForKeyedSubscript:@"DPConfig"];
  v3 = [v2 objectForKeyedSubscript:@"Mechanism"];

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = [v3 isEqualToString:@"None"];
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t nextPowerOfTwo(unint64_t a1)
{
  v1 = 1 << -__clz(a1);
  if (v1 >> 1 == a1 || a1 == 0)
  {
    v1 = a1;
  }

  if (a1)
  {
    return v1;
  }

  else
  {
    return 1;
  }
}

uint64_t submod32(unsigned int a1, unsigned int a2, int a3)
{
  if (a1 >= a2)
  {
    a3 = 0;
  }

  return a1 - a2 + a3;
}

uint64_t addmod32(unsigned int a1, int a2, int a3)
{
  if (a1 >= a3 - a2)
  {
    v3 = 0;
  }

  else
  {
    v3 = a3;
  }

  return a1 - (a3 - a2) + v3;
}

uint64_t dotprod_mod32(unsigned int *a1, unsigned int *a2, uint64_t a3, unsigned int a4)
{
  for (i = 0; a3; --a3)
  {
    v6 = *a1++;
    v5 = v6;
    v7 = *a2++;
    v8 = v7 * v5 % a4;
    v9 = a4 - i;
    v10 = v8 >= v9;
    v11 = v8 - v9;
    if (v10)
    {
      v12 = 0;
    }

    else
    {
      v12 = a4;
    }

    i = v11 + v12;
  }

  return i;
}

long double logaddexp(double a1, double a2)
{
  v2 = a1 - a2;
  if (a1 - a2 <= 0.0)
  {
    v3 = a2;
  }

  else
  {
    v2 = -(a1 - a2);
    v3 = a1;
  }

  v4 = exp(v2);
  return log1p(v4) + v3;
}

id _DPDaemonInterface()
{
  v10[4] = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v10[0] = objc_opt_class();
  v10[1] = objc_opt_class();
  v10[2] = objc_opt_class();
  v10[3] = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:v10 count:4];
  v2 = [v0 setWithArray:v1];

  v3 = MEMORY[0x277CBEB98];
  v9[0] = objc_opt_class();
  v9[1] = objc_opt_class();
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v9 count:2];
  v5 = [v3 setWithArray:v4];

  v6 = [MEMORY[0x277CCAE90] interfaceWithProtocol:&unk_283978AA0];
  [v6 setClasses:v2 forSelector:sel_recordNumbers_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordNumbers_metadata_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordNumbersVectors_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordNumbersVectors_metadata_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordBitValues_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordBitValues_metadata_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordStrings_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v2 forSelector:sel_recordWords_forKey_withReply_ argumentIndex:0 ofReply:0];
  [v6 setClasses:v5 forSelector:sel_reportsNotYetSubmittedWithReply_ argumentIndex:1 ofReply:1];
  [v6 setClasses:v5 forSelector:sel_retireReports_withReply_ argumentIndex:0 ofReply:0];

  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

id _DPDediscoPrioPiRapporShare.__allocating_init(prioShare:numberOfEncodedIndices:piRapporOtherPhi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  v12 = &v11[OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____DPDediscoPrioPiRapporShare_numberOfEncodedIndices] = a3;
  v13 = &v11[OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi];
  *v13 = a4;
  *(v13 + 1) = a5;
  v15.receiver = v11;
  v15.super_class = v5;
  return objc_msgSendSuper2(&v15, sel_init);
}

id _DPDediscoPrioPiRapporShare.init(prioShare:numberOfEncodedIndices:piRapporOtherPhi:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = &v5[OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v5[OBJC_IVAR____DPDediscoPrioPiRapporShare_numberOfEncodedIndices] = a3;
  v7 = &v5[OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi];
  *v7 = a4;
  *(v7 + 1) = a5;
  v9.receiver = v5;
  v9.super_class = type metadata accessor for _DPDediscoPrioPiRapporShare();
  return objc_msgSendSuper2(&v9, sel_init);
}

id _DPDediscoPrioPiRapporShare.init(serializedData:)(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v7 = *(*(sub_22628E81C() - 8) + 64);
  MEMORY[0x28223BE20]();
  v8 = *(*(type metadata accessor for DediscoPrioPiRapporShare() - 8) + 64);
  MEMORY[0x28223BE20]();
  v10 = (v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v21 = a1;
  v22 = a2;
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  sub_22627CD48(a1, a2);
  sub_22628E80C();
  sub_22627CD9C();
  sub_22628E89C();
  if (v3)
  {
    sub_22627CDF4(a1, a2);
    swift_getObjectType();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v11 = *v10;
    v12 = v10[1];
    v13 = sub_22628E7BC();
    v15 = v10[2];
    v14 = v10[3];
    v16 = v10[4];
    v17 = sub_22628E7BC();
    v4 = [v2 initWithPrioShare:v13 numberOfEncodedIndices:v15 piRapporOtherPhi:v17];

    sub_22627CDF4(a1, a2);
    sub_22627CE48(v10);
  }

  return v4;
}

uint64_t sub_22627CD48(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

unint64_t sub_22627CD9C()
{
  result = qword_27D7922D8;
  if (!qword_27D7922D8)
  {
    type metadata accessor for DediscoPrioPiRapporShare();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7922D8);
  }

  return result;
}

uint64_t sub_22627CDF4(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_22627CE48(uint64_t a1)
{
  v2 = type metadata accessor for DediscoPrioPiRapporShare();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_22627CF50()
{
  v1 = *(v0 + OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare + 8));
  return v1;
}

uint64_t sub_22627CFBC()
{
  v1 = *(v0 + OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi + 8));
  return v1;
}

id sub_22627D008(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = (a1 + *a3);
  v4 = *v3;
  v5 = v3[1];
  sub_22627CD48(*v3, v5);
  v6 = sub_22628E7BC();
  sub_22627CDF4(v4, v5);

  return v6;
}

uint64_t sub_22627D074(uint64_t *a1, uint64_t a2)
{
  v4 = *(a2 + OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare);
  v5 = *(a2 + OBJC_IVAR____DPDediscoPrioPiRapporShare_prioShare + 8);
  v6 = *a1;
  v7 = a1[1];
  sub_22627CD48(v4, v5);
  sub_22627CDF4(v6, v7);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = *(a2 + OBJC_IVAR____DPDediscoPrioPiRapporShare_numberOfEncodedIndices);
  v8 = a2 + OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi;
  v9 = *(a2 + OBJC_IVAR____DPDediscoPrioPiRapporShare_piRapporOtherPhi);
  v10 = *(v8 + 8);
  v11 = a1[3];
  v12 = a1[4];
  sub_22627CD48(v9, v10);
  result = sub_22627CDF4(v11, v12);
  a1[3] = v9;
  a1[4] = v10;
  return result;
}

uint64_t sub_22627D128()
{
  v1 = *(*(type metadata accessor for DediscoPrioPiRapporShare() - 8) + 64);
  MEMORY[0x28223BE20]();
  v3 = &v6[-((v2 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = v0;
  sub_22627CD9C();
  sub_22628E8CC();
  v4 = sub_22628E88C();
  sub_22627CE48(v3);
  return v4;
}

id _DPDediscoPrioPiRapporShare.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _DPDediscoPrioPiRapporShare.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _DPDediscoPrioPiRapporShare();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t PreambleShim.ShardResult.publicShare.getter()
{
  v1 = *(v0 + OBJC_IVAR____DPPreambleShardResult_publicShare);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPPreambleShardResult_publicShare + 8));
  return v1;
}

uint64_t PreambleShim.ShardResult.nonce.getter()
{
  v1 = *(v0 + OBJC_IVAR____DPPreambleShardResult_nonce);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPPreambleShardResult_nonce + 8));
  return v1;
}

id PreambleShim.ShardResult.__allocating_init(publicShare:inputShares:nonce:dimension:cohortSigma:sigmaLocal:scalingFactor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  v19 = objc_allocWithZone(v9);
  v20 = &v19[OBJC_IVAR____DPPreambleShardResult_publicShare];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v19[OBJC_IVAR____DPPreambleShardResult_inputShares] = a3;
  v21 = &v19[OBJC_IVAR____DPPreambleShardResult_nonce];
  *v21 = a4;
  *(v21 + 1) = a5;
  *&v19[OBJC_IVAR____DPPreambleShardResult_dimension] = a6;
  *&v19[OBJC_IVAR____DPPreambleShardResult_cohortSigma] = a7;
  *&v19[OBJC_IVAR____DPPreambleShardResult_sigmaLocal] = a8;
  *&v19[OBJC_IVAR____DPPreambleShardResult_scalingFactor] = a9;
  v23.receiver = v19;
  v23.super_class = v9;
  return objc_msgSendSuper2(&v23, sel_init);
}

id PreambleShim.ShardResult.init(publicShare:inputShares:nonce:dimension:cohortSigma:sigmaLocal:scalingFactor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, double a7, double a8, double a9)
{
  ObjectType = swift_getObjectType();
  v20 = &v9[OBJC_IVAR____DPPreambleShardResult_publicShare];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v9[OBJC_IVAR____DPPreambleShardResult_inputShares] = a3;
  v21 = &v9[OBJC_IVAR____DPPreambleShardResult_nonce];
  *v21 = a4;
  *(v21 + 1) = a5;
  *&v9[OBJC_IVAR____DPPreambleShardResult_dimension] = a6;
  *&v9[OBJC_IVAR____DPPreambleShardResult_cohortSigma] = a7;
  *&v9[OBJC_IVAR____DPPreambleShardResult_sigmaLocal] = a8;
  *&v9[OBJC_IVAR____DPPreambleShardResult_scalingFactor] = a9;
  v23.receiver = v9;
  v23.super_class = ObjectType;
  return objc_msgSendSuper2(&v23, sel_init);
}

id PreambleShim.ShardResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PreambleShim.ShardResult.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PreambleShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreambleShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PreambleShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PreambleShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22627DD7C(uint64_t *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_22627CDF4(v3, v2);
      *&bytes = v3;
      *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_226295330;
      sub_22627CDF4(0, 0xC000000000000000);
      result = sub_22627E0B8(&bytes);
      v8 = bytes;
      v9 = *(&bytes + 1) | 0x4000000000000000;
    }

    else
    {
      sub_22627CDF4(v3, v2);
      *&bytes = v3;
      WORD4(bytes) = v2;
      BYTE10(bytes) = BYTE2(v2);
      BYTE11(bytes) = BYTE3(v2);
      BYTE12(bytes) = BYTE4(v2);
      BYTE13(bytes) = BYTE5(v2);
      BYTE14(bytes) = BYTE6(v2);
      result = SecRandomCopyBytes(*MEMORY[0x277CDC540], BYTE6(v2), &bytes);
      if (result)
      {
        v6 = result;
        sub_22627FE14();
        swift_allocError();
        *v7 = v6;
        *(v7 + 8) = 0;
        *(v7 + 16) = 0;
        result = swift_willThrow();
      }

      v8 = bytes;
      v9 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
    }

    *a1 = v8;
    a1[1] = v9;
LABEL_20:
    v25 = *MEMORY[0x277D85DE8];
    return result;
  }

  if (v4 != 2)
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0, &bytes);
    if (result)
    {
      v23 = result;
      sub_22627FE14();
      swift_allocError();
      *v24 = v23;
      *(v24 + 8) = 0;
      *(v24 + 16) = 0;
      result = swift_willThrow();
    }

    goto LABEL_20;
  }

  v10 = *a1;

  sub_22627CDF4(v3, v2);
  *&bytes = v3;
  *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_226295330;
  sub_22627CDF4(0, 0xC000000000000000);
  sub_22628E78C();
  v11 = bytes;
  v12 = *(bytes + 16);
  v13 = *(bytes + 24);
  result = sub_22628E6FC();
  if (result)
  {
    v14 = result;
    v15 = sub_22628E72C();
    v16 = v12 - v15;
    if (__OFSUB__(v12, v15))
    {
      __break(1u);
    }

    else
    {
      v17 = __OFSUB__(v13, v12);
      v18 = v13 - v12;
      if (!v17)
      {
        v19 = sub_22628E71C();
        if (v19 >= v18)
        {
          v20 = v18;
        }

        else
        {
          v20 = v19;
        }

        result = SecRandomCopyBytes(*MEMORY[0x277CDC540], v20, (v14 + v16));
        if (result)
        {
          v21 = result;
          sub_22627FE14();
          swift_allocError();
          *v22 = v21;
          *(v22 + 8) = 0;
          *(v22 + 16) = 0;
          result = swift_willThrow();
        }

        *a1 = v11;
        a1[1] = *(&v11 + 1) | 0x8000000000000000;
        goto LABEL_20;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_22627E0B8(int *a1)
{
  result = sub_22628E79C();
  v3 = *a1;
  v4 = a1[1];
  if (v4 < v3)
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a1 + 1);

  result = sub_22628E6FC();
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v6 = result;
  result = sub_22628E72C();
  v7 = v3 - result;
  if (__OFSUB__(v3, result))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = v4 - v3;
  v9 = sub_22628E71C();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  v11 = SecRandomCopyBytes(*MEMORY[0x277CDC540], v10, (v6 + v7));
  if (v11)
  {
    v12 = v11;
    sub_22627FE14();
    swift_allocError();
    *v13 = v12;
    *(v13 + 8) = 0;
    *(v13 + 16) = 0;
    swift_willThrow();
  }
}

unint64_t sub_22627E194(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  sub_22628EC7C();
  sub_22628EB2C();
  v6 = sub_22628EC9C();

  return sub_22627E4B4(a1, a2, v6);
}

unint64_t sub_22627E20C(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = sub_22628EC6C();

  return sub_22627E56C(a1, v4);
}

uint64_t sub_22627E250(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792340, &unk_2262953A0);
  result = sub_22628EBDC();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = a2;
    v33 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 4 * v20);
      v23 = *(v8 + 40);
      result = sub_22628EC6C();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
      *(*(v8 + 56) + 4 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if (v32)
    {
      v31 = 1 << *(v5 + 32);
      if (v31 >= 64)
      {
        bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v31;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

unint64_t sub_22627E4B4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_22628EBFC())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_22627E56C(uint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + 8 * result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

void *sub_22627E5D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792340, &unk_2262953A0);
  v2 = *v0;
  v3 = sub_22628EBCC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 4 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 4 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 64 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

uint64_t sub_22627E724(uint64_t a1, __int128 *a2)
{
  v154 = a1;
  v159 = *MEMORY[0x277D85DE8];
  v4 = sub_22628E98C();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20]();
  v8 = &v134 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_22628E9BC();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20]();
  v152 = &v134 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a2[1];
  v156 = *a2;
  v157 = v13;
  v158 = a2[2];
  v14 = sub_226285C40();
  v15 = *(a2 + 1);
  if (!v15)
  {
    __break(1u);
LABEL_153:
    __break(1u);
    goto LABEL_154;
  }

  if (v14 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_181;
  }

  v147 = v10;
  v148 = v9;
  v146 = v5;
  v16 = *(a2 + 2);
  v17 = v152;
  v18 = v15;
  sub_22628E99C();
  if (v2)
  {
LABEL_150:
    v132 = *MEMORY[0x277D85DE8];
    return v16;
  }

  v143 = v18;
  v19 = sub_22628E9AC();
  v20 = a2[1];
  v156 = *a2;
  v157 = v20;
  v158 = a2[2];
  sub_226285C40();
  sub_22628E96C();
  v21 = v17;
  v136 = *(v19 + 16);
  if (!v136)
  {

    v16 = MEMORY[0x277D84F98];
LABEL_8:
    (*(v147 + 8))(v21, v148);
    (*(v146 + 8))(v8, v4);
    goto LABEL_150;
  }

  v22 = *(a2 + 4);
  v23 = *(a2 + 5) * v22;
  v139 = objc_opt_self();
  v24 = 0;
  v141 = v19;
  v140 = v19 + 32;
  v25 = v143;
  v137 = 4 * v143;
  v150 = v143 * v16;
  v151 = (v143 * v16) >> 64 != (v143 * v16) >> 63;
  v26 = v143 * v16;
  v134 = v143 - 1;
  v16 = MEMORY[0x277D84F98];
  v138 = (v143 - 0x2000000000000000) >> 62;
  v135 = v4;
  v149 = v8;
  while (1)
  {
    if (v24 >= *(v141 + 16))
    {
      goto LABEL_182;
    }

    v29 = *(v140 + 8 * v24);
    v30 = v29 * v25;
    if ((v29 * v25) >> 64 != (v29 * v25) >> 63)
    {
      goto LABEL_183;
    }

    v31 = v30 + v25;
    if (__OFADD__(v30, v25))
    {
      goto LABEL_184;
    }

    v142 = v24;
    v32 = [v139 randomZeroMeanFloatVectorWithLength:v23 stddev:?];
    if (!v32)
    {
      break;
    }

    v33 = v32;
    v144 = sub_22628E7CC();
    v35 = v34;

    v145 = v35;
    v36 = v35 >> 62;
    if ((v35 >> 62) > 1)
    {
      v21 = v152;
      if (v36 == 2)
      {
        v39 = *(v144 + 16);
        v38 = *(v144 + 24);
        v40 = __OFSUB__(v38, v39);
        v37 = v38 - v39;
        if (v40)
        {
          goto LABEL_191;
        }
      }

      else
      {
        v37 = 0;
      }
    }

    else
    {
      v21 = v152;
      if (v36)
      {
        LODWORD(v37) = HIDWORD(v144) - v144;
        if (__OFSUB__(HIDWORD(v144), v144))
        {
          goto LABEL_192;
        }

        v37 = v37;
      }

      else
      {
        v37 = BYTE6(v145);
      }
    }

    if (v138 < 3)
    {
      goto LABEL_185;
    }

    if (v37 != v137)
    {
      goto LABEL_186;
    }

    v153 = v30;
    if (v36 <= 1)
    {
      if (!v36)
      {
        LODWORD(v156) = v144;
        WORD2(v156) = WORD2(v144);
        *(&v156 + 6) = __PAIR32__(v145, HIWORD(v144));
        *(&v156 + 10) = *(&v145 + 2);
        if (v31 >= v30)
        {
          if (v30 == v31)
          {
            goto LABEL_10;
          }

          sub_22628E97C();
          v42 = v134;
          v43 = v30;
          while (!v151)
          {
            v44 = *a2;
            if (*a2 <= v150)
            {
              v44 = v150;
            }

            if (v44 < 0)
            {
              goto LABEL_156;
            }

            if (v44)
            {
              v45 = (1 << -__clz(v44 - 1));
              v46 = v43 - v30;
              if (__OFSUB__(v43, v30))
              {
                goto LABEL_159;
              }
            }

            else
            {
              v45 = 1.0;
              v46 = v43 - v30;
              if (__OFSUB__(v43, v30))
              {
                goto LABEL_159;
              }
            }

            v47 = rint(v22 * (v41 / (v26 / v45)) + *(&v156 + v46));
            if ((*&v47 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
            {
              goto LABEL_164;
            }

            if (v47 <= -2147483650.0)
            {
              goto LABEL_168;
            }

            if (v47 >= 2147483650.0)
            {
              goto LABEL_171;
            }

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v155 = v16;
            v49 = sub_22627E20C(v43);
            v51 = *(v16 + 16);
            v52 = (v50 & 1) == 0;
            v40 = __OFADD__(v51, v52);
            v53 = v51 + v52;
            if (v40)
            {
              goto LABEL_176;
            }

            v54 = v50;
            if (*(v16 + 24) >= v53)
            {
              if ((isUniquelyReferenced_nonNull_native & 1) == 0)
              {
                v59 = v49;
                sub_22627E5D8();
                v49 = v59;
              }
            }

            else
            {
              sub_22627E250(v53, isUniquelyReferenced_nonNull_native);
              v49 = sub_22627E20C(v43);
              if ((v54 & 1) != (v55 & 1))
              {
                goto LABEL_202;
              }
            }

            v56 = v47;
            v16 = v155;
            if (v54)
            {
              *(*(v155 + 56) + 4 * v49) = v56;
              if (!v42)
              {
                goto LABEL_9;
              }
            }

            else
            {
              *(v155 + 8 * (v49 >> 6) + 64) |= 1 << v49;
              *(*(v16 + 48) + 8 * v49) = v43;
              *(*(v16 + 56) + 4 * v49) = v56;
              v57 = *(v16 + 16);
              v40 = __OFADD__(v57, 1);
              v58 = v57 + 1;
              if (v40)
              {
                goto LABEL_188;
              }

              *(v16 + 16) = v58;
              if (!v42)
              {
                goto LABEL_9;
              }
            }

            sub_22628E97C();
            --v42;
            ++v43;
            v30 = v153;
          }

LABEL_154:
          __break(1u);
LABEL_155:
          __break(1u);
LABEL_156:
          __break(1u);
LABEL_157:
          __break(1u);
LABEL_158:
          __break(1u);
LABEL_159:
          __break(1u);
LABEL_160:
          __break(1u);
LABEL_161:
          __break(1u);
LABEL_162:
          __break(1u);
LABEL_163:
          __break(1u);
LABEL_164:
          __break(1u);
LABEL_165:
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
LABEL_189:
          __break(1u);
LABEL_190:
          __break(1u);
LABEL_191:
          __break(1u);
LABEL_192:
          __break(1u);
LABEL_193:
          __break(1u);
LABEL_194:
          __break(1u);
        }

        __break(1u);
LABEL_196:
        __break(1u);
LABEL_197:
        __break(1u);
LABEL_198:
        __break(1u);
LABEL_199:
        __break(1u);
LABEL_200:
        __break(1u);
      }

      v66 = v144;
      if (v144 > v144 >> 32)
      {
        goto LABEL_194;
      }

      v67 = sub_22628E6FC();
      if (v67)
      {
        v68 = v67;
        v69 = sub_22628E72C();
        if (__OFSUB__(v66, v69))
        {
          goto LABEL_200;
        }

        v70 = v66 - v69 + v68;
      }

      else
      {
        v70 = 0;
      }

      v110 = v153;
      sub_22628E71C();
      v21 = v152;
      if (v31 >= v110)
      {
        if (v110 == v31)
        {
          goto LABEL_149;
        }

        sub_22628E97C();
        v112 = v134;
        v113 = v110;
        while (!v151)
        {
          v114 = *a2;
          if (*a2 <= v150)
          {
            v114 = v150;
          }

          if (v114 < 0)
          {
            goto LABEL_162;
          }

          if (v114)
          {
            v115 = (1 << -__clz(v114 - 1));
            v116 = v113 - v110;
            if (__OFSUB__(v113, v110))
            {
              goto LABEL_166;
            }
          }

          else
          {
            v115 = 1.0;
            v116 = v113 - v110;
            if (__OFSUB__(v113, v110))
            {
              goto LABEL_166;
            }
          }

          v117 = rint(v22 * (v111 / (v26 / v115)) + *(v70 + 4 * v116));
          if ((*&v117 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_170;
          }

          if (v117 <= -2147483650.0)
          {
            goto LABEL_174;
          }

          if (v117 >= 2147483650.0)
          {
            goto LABEL_178;
          }

          v118 = swift_isUniquelyReferenced_nonNull_native();
          *&v156 = v16;
          v119 = sub_22627E20C(v113);
          v121 = *(v16 + 16);
          v122 = (v120 & 1) == 0;
          v40 = __OFADD__(v121, v122);
          v123 = v121 + v122;
          if (v40)
          {
            goto LABEL_179;
          }

          v124 = v120;
          if (*(v16 + 24) >= v123)
          {
            if ((v118 & 1) == 0)
            {
              v129 = v119;
              sub_22627E5D8();
              v119 = v129;
            }
          }

          else
          {
            sub_22627E250(v123, v118);
            v119 = sub_22627E20C(v113);
            if ((v124 & 1) != (v125 & 1))
            {
              goto LABEL_202;
            }
          }

          v126 = v117;
          v16 = v156;
          if (v124)
          {
            *(*(v156 + 56) + 4 * v119) = v126;
            if (!v112)
            {
              goto LABEL_148;
            }
          }

          else
          {
            *(v156 + 8 * (v119 >> 6) + 64) |= 1 << v119;
            *(*(v16 + 48) + 8 * v119) = v113;
            *(*(v16 + 56) + 4 * v119) = v126;
            v127 = *(v16 + 16);
            v40 = __OFADD__(v127, 1);
            v128 = v127 + 1;
            if (v40)
            {
              goto LABEL_190;
            }

            *(v16 + 16) = v128;
            if (!v112)
            {
              goto LABEL_148;
            }
          }

          sub_22628E97C();
          --v112;
          ++v113;
          v110 = v153;
        }

        goto LABEL_158;
      }

      goto LABEL_198;
    }

    if (v36 != 2)
    {
      *(&v156 + 6) = 0;
      *&v156 = 0;
      if (v31 >= v30)
      {
        if (v30 == v31)
        {
          goto LABEL_10;
        }

        sub_22628E97C();
        v72 = v134;
        for (i = v30; ; ++i)
        {
          if (v151)
          {
            goto LABEL_153;
          }

          v74 = *a2;
          if (*a2 <= v150)
          {
            v74 = v150;
          }

          if (v74 < 0)
          {
            goto LABEL_155;
          }

          if (v74)
          {
            v75 = (1 << -__clz(v74 - 1));
            v76 = i - v30;
            if (__OFSUB__(i, v30))
            {
              goto LABEL_160;
            }
          }

          else
          {
            v75 = 1.0;
            v76 = i - v30;
            if (__OFSUB__(i, v30))
            {
              goto LABEL_160;
            }
          }

          v77 = rint(v22 * (v71 / (v26 / v75)) + *(&v156 + v76));
          if ((*&v77 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            goto LABEL_163;
          }

          if (v77 <= -2147483650.0)
          {
            goto LABEL_167;
          }

          if (v77 >= 2147483650.0)
          {
            goto LABEL_172;
          }

          v78 = swift_isUniquelyReferenced_nonNull_native();
          v155 = v16;
          v80 = sub_22627E20C(i);
          v81 = *(v16 + 16);
          v82 = (v79 & 1) == 0;
          v83 = v81 + v82;
          if (__OFADD__(v81, v82))
          {
            goto LABEL_175;
          }

          v84 = v79;
          if (*(v16 + 24) >= v83)
          {
            if ((v78 & 1) == 0)
            {
              sub_22627E5D8();
            }
          }

          else
          {
            sub_22627E250(v83, v78);
            v85 = sub_22627E20C(i);
            if ((v84 & 1) != (v86 & 1))
            {
              goto LABEL_202;
            }

            v80 = v85;
          }

          v8 = v149;
          v87 = v77;
          v16 = v155;
          if (v84)
          {
            *(*(v155 + 56) + 4 * v80) = v87;
            if (!v72)
            {
              goto LABEL_9;
            }
          }

          else
          {
            *(v155 + 8 * (v80 >> 6) + 64) |= 1 << v80;
            *(*(v16 + 48) + 8 * v80) = i;
            *(*(v16 + 56) + 4 * v80) = v87;
            v88 = *(v16 + 16);
            v40 = __OFADD__(v88, 1);
            v89 = v88 + 1;
            if (v40)
            {
              goto LABEL_187;
            }

            *(v16 + 16) = v89;
            if (!v72)
            {
LABEL_9:
              v4 = v135;
              v21 = v152;
LABEL_10:
              v27 = v144;
              v28 = v145;
              sub_22627CDF4(v144, v145);
              sub_22627CDF4(v27, v28);
              goto LABEL_11;
            }
          }

          sub_22628E97C();
          --v72;
          v30 = v153;
        }
      }

      goto LABEL_193;
    }

    v60 = *(v144 + 16);
    v61 = *(v144 + 24);

    v62 = sub_22628E6FC();
    if (v62)
    {
      v63 = v62;
      v64 = sub_22628E72C();
      if (__OFSUB__(v60, v64))
      {
        goto LABEL_199;
      }

      v65 = v60 - v64 + v63;
    }

    else
    {
      v65 = 0;
    }

    v21 = v152;
    if (__OFSUB__(v61, v60))
    {
      goto LABEL_196;
    }

    sub_22628E71C();
    v90 = v153;
    v4 = v135;
    if (v31 < v153)
    {
      goto LABEL_197;
    }

    if (v153 == v31)
    {
      goto LABEL_149;
    }

    sub_22628E97C();
    v92 = v134;
    for (j = v90; ; ++j)
    {
      if (v151)
      {
        goto LABEL_157;
      }

      v94 = *a2;
      if (*a2 <= v150)
      {
        v94 = v150;
      }

      if (v94 < 0)
      {
        goto LABEL_161;
      }

      if (v94)
      {
        v95 = (1 << -__clz(v94 - 1));
        v96 = j - v90;
        if (__OFSUB__(j, v90))
        {
          goto LABEL_165;
        }
      }

      else
      {
        v95 = 1.0;
        v96 = j - v90;
        if (__OFSUB__(j, v90))
        {
          goto LABEL_165;
        }
      }

      v97 = rint(v22 * (v91 / (v26 / v95)) + *(v65 + 4 * v96));
      if ((*&v97 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_169;
      }

      if (v97 <= -2147483650.0)
      {
        goto LABEL_173;
      }

      if (v97 >= 2147483650.0)
      {
        goto LABEL_177;
      }

      v98 = swift_isUniquelyReferenced_nonNull_native();
      *&v156 = v16;
      v99 = sub_22627E20C(j);
      v101 = *(v16 + 16);
      v102 = (v100 & 1) == 0;
      v40 = __OFADD__(v101, v102);
      v103 = v101 + v102;
      if (v40)
      {
        goto LABEL_180;
      }

      v104 = v100;
      if (*(v16 + 24) >= v103)
      {
        if ((v98 & 1) == 0)
        {
          v109 = v99;
          sub_22627E5D8();
          v99 = v109;
        }
      }

      else
      {
        sub_22627E250(v103, v98);
        v99 = sub_22627E20C(j);
        if ((v104 & 1) != (v105 & 1))
        {
          goto LABEL_202;
        }
      }

      v106 = v97;
      v16 = v156;
      if (v104)
      {
        *(*(v156 + 56) + 4 * v99) = v106;
        if (!v92)
        {
          break;
        }

        goto LABEL_98;
      }

      *(v156 + 8 * (v99 >> 6) + 64) |= 1 << v99;
      *(*(v16 + 48) + 8 * v99) = j;
      *(*(v16 + 56) + 4 * v99) = v106;
      v107 = *(v16 + 16);
      v40 = __OFADD__(v107, 1);
      v108 = v107 + 1;
      if (v40)
      {
        goto LABEL_189;
      }

      *(v16 + 16) = v108;
      if (!v92)
      {
        break;
      }

LABEL_98:
      sub_22628E97C();
      --v92;
      v90 = v153;
    }

LABEL_148:
    v4 = v135;
    v21 = v152;
LABEL_149:
    v130 = v144;
    v131 = v145;
    sub_22627CDF4(v144, v145);
    sub_22627CDF4(v130, v131);
    v8 = v149;
LABEL_11:
    v24 = v142 + 1;
    v25 = v143;
    if (v142 + 1 == v136)
    {

      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_202:
  result = sub_22628EC1C();
  __break(1u);
  return result;
}

uint64_t sub_22627F714()
{
  sub_22628EB6C();
  sub_22627FE14();
  swift_allocError();
  *v0 = xmmword_226295340;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

id sub_22627F988(uint64_t a1, uint64_t a2, Swift::Int a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792318, &qword_226295398);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v11 = &v27 - v10;

  PreambleEngineParameter.init(from:with:)(&v33, v12, a3);
  if (!v13)
  {
    v27 = a1;
    v28 = v8;
    v29 = v7;
    v34 = v33;
    v30 = 0;
    sub_226285C40();
    v32 = v34;
    v4 = (63 - __clz(sub_226285C40()));
    sub_22628EA9C();
    sub_22628E9CC();
    sub_22627FD14();
    sub_22627FD6C();
    sub_22627FDC0();
    v14 = v30;
    sub_22628E92C();
    if (!v14)
    {
      sub_22627F714();
      dimension = v33.dimension;
      blockSize = v33.blockSize;
      numKeptBlocks = v33.numKeptBlocks;
      cohortSigma = v33.cohortSigma;
      scalingFactor = v33.scalingFactor;
      v21 = *&v34.scalingFactor;
      v22 = v34.cohortSigma;
      v23 = type metadata accessor for PreambleShim.ShardResult();
      v24 = objc_allocWithZone(v23);
      v25 = &v24[OBJC_IVAR____DPPreambleShardResult_publicShare];
      *v25 = dimension;
      v25[1] = blockSize;
      *&v24[OBJC_IVAR____DPPreambleShardResult_inputShares] = numKeptBlocks;
      v26 = &v24[OBJC_IVAR____DPPreambleShardResult_nonce];
      *v26 = cohortSigma;
      v26[1] = scalingFactor;
      *&v24[OBJC_IVAR____DPPreambleShardResult_dimension] = a3;
      *&v24[OBJC_IVAR____DPPreambleShardResult_cohortSigma] = v22;
      *&v24[OBJC_IVAR____DPPreambleShardResult_sigmaLocal] = *(&v21 + 1);
      *&v24[OBJC_IVAR____DPPreambleShardResult_scalingFactor] = v21;
      v31.receiver = v24;
      v31.super_class = v23;
      v4 = objc_msgSendSuper2(&v31, sel_init);
      (*(v28 + 8))(v11, v29);
    }
  }

  return v4;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_22627FD14()
{
  result = qword_27D792320;
  if (!qword_27D792320)
  {
    sub_22628EA9C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792320);
  }

  return result;
}

unint64_t sub_22627FD6C()
{
  result = qword_27D792328;
  if (!qword_27D792328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792328);
  }

  return result;
}

unint64_t sub_22627FDC0()
{
  result = qword_27D792330;
  if (!qword_27D792330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792330);
  }

  return result;
}

unint64_t sub_22627FE14()
{
  result = qword_27D792338;
  if (!qword_27D792338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792338);
  }

  return result;
}

unint64_t PINEShim.PINEType.init(rawValue:)(int a1)
{
  v1 = 4294905860;
  v2 = 4294905861;
  v3 = 4294905862;
  if (a1 != -61434)
  {
    v3 = 0;
  }

  if (a1 == -61435)
  {
    v4 = 0;
  }

  else
  {
    v2 = v3;
    v4 = a1 != -61434;
  }

  if (a1 == -61436)
  {
    v5 = 0;
  }

  else
  {
    v1 = v2;
    v5 = v4;
  }

  return v1 | (v5 << 32);
}

uint64_t sub_22627FED8()
{
  v1 = *v0;
  sub_22628EC7C();
  sub_22628EC8C();
  return sub_22628EC9C();
}

uint64_t sub_22627FF4C()
{
  v1 = *v0;
  sub_22628EC7C();
  sub_22628EC8C();
  return sub_22628EC9C();
}

int *sub_22627FF90@<X0>(int *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = (*result + 61433) < 0xFFFFFFFD;
  if ((*result + 61433) < 0xFFFFFFFD)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 4) = v3;
  return result;
}

id PINEShim.Parameter.__allocating_init(fractionalBitCount:l2NormBound:numOfProofs:wraparoundCheckCount:pineType:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____DPPINEParameter_fractionalBitCount] = a1;
  *&v11[OBJC_IVAR____DPPINEParameter_l2NormBound] = a5;
  *&v11[OBJC_IVAR____DPPINEParameter_numOfProofs] = a2;
  *&v11[OBJC_IVAR____DPPINEParameter_wraparoundCheckCount] = a3;
  *&v11[OBJC_IVAR____DPPINEParameter_pineType] = a4;
  v13.receiver = v11;
  v13.super_class = v5;
  return objc_msgSendSuper2(&v13, sel_init);
}

id PINEShim.Parameter.init(fractionalBitCount:l2NormBound:numOfProofs:wraparoundCheckCount:pineType:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4, float a5)
{
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____DPPINEParameter_fractionalBitCount] = a1;
  *&v5[OBJC_IVAR____DPPINEParameter_l2NormBound] = a5;
  *&v5[OBJC_IVAR____DPPINEParameter_numOfProofs] = a2;
  *&v5[OBJC_IVAR____DPPINEParameter_wraparoundCheckCount] = a3;
  *&v5[OBJC_IVAR____DPPINEParameter_pineType] = a4;
  v13.receiver = v5;
  v13.super_class = ObjectType;
  return objc_msgSendSuper2(&v13, sel_init);
}

uint64_t PINEShim.ShardResult.publicShare.getter()
{
  v1 = *(v0 + OBJC_IVAR____DPPINEShardResult_publicShare);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPPINEShardResult_publicShare + 8));
  return v1;
}

uint64_t PINEShim.ShardResult.nonce.getter()
{
  v1 = *(v0 + OBJC_IVAR____DPPINEShardResult_nonce);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPPINEShardResult_nonce + 8));
  return v1;
}

char *PINEShim.ShardResult.__allocating_init(publicShare:inputShares:nonce:dimension:chunkLength:chunkLengthNormEquality:l2NormBoundInt:fractionalBitCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  result = objc_allocWithZone(v10);
  v20 = &result[OBJC_IVAR____DPPINEShardResult_publicShare];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&result[OBJC_IVAR____DPPINEShardResult_inputShares] = a3;
  v21 = &result[OBJC_IVAR____DPPINEShardResult_nonce];
  *v21 = a4;
  *(v21 + 1) = a5;
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(a6))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&result[OBJC_IVAR____DPPINEShardResult_dimension] = a6;
  if ((a7 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *&result[OBJC_IVAR____DPPINEShardResult_chunkLength] = a7;
  if ((a8 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!HIDWORD(a8))
  {
    *&result[OBJC_IVAR____DPPINEShardResult_chunkLengthNormEquality] = a8;
    *&result[OBJC_IVAR____DPPINEShardResult_l2NormBoundInt] = a9;
    *&result[OBJC_IVAR____DPPINEShardResult_fractionalBitCount] = a10;
    v22.receiver = result;
    v22.super_class = v10;
    return objc_msgSendSuper2(&v22, sel_init);
  }

LABEL_13:
  __break(1u);
  return result;
}

objc_class *PINEShim.ShardResult.init(publicShare:inputShares:nonce:dimension:chunkLength:chunkLengthNormEquality:l2NormBoundInt:fractionalBitCount:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, unint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  result = swift_getObjectType();
  v20 = &v10[OBJC_IVAR____DPPINEShardResult_publicShare];
  *v20 = a1;
  *(v20 + 1) = a2;
  *&v10[OBJC_IVAR____DPPINEShardResult_inputShares] = a3;
  v21 = &v10[OBJC_IVAR____DPPINEShardResult_nonce];
  *v21 = a4;
  *(v21 + 1) = a5;
  if ((a6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (HIDWORD(a6))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  *&v10[OBJC_IVAR____DPPINEShardResult_dimension] = a6;
  if ((a7 & 0x8000000000000000) != 0)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (HIDWORD(a7))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  *&v10[OBJC_IVAR____DPPINEShardResult_chunkLength] = a7;
  if ((a8 & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (!HIDWORD(a8))
  {
    *&v10[OBJC_IVAR____DPPINEShardResult_chunkLengthNormEquality] = a8;
    *&v10[OBJC_IVAR____DPPINEShardResult_l2NormBoundInt] = a9;
    *&v10[OBJC_IVAR____DPPINEShardResult_fractionalBitCount] = a10;
    v22.receiver = v10;
    v22.super_class = result;
    return objc_msgSendSuper2(&v22, sel_init);
  }

LABEL_13:
  __break(1u);
  return result;
}

id PINEShim.ShardResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id _s19DifferentialPrivacy18Prio3SumVectorShimC11ShardResultCfD_0()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id PINEShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PINEShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

void *sub_226280958(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t, uint64_t *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v7, a3, (a4 - a3) / 4, &v6);
    if (v4)
    {
      return result;
    }

    return v7;
  }

  result = a1(&v7, 0, 0, &v6);
  if (!v4)
  {
    return v7;
  }

  return result;
}

char *sub_2262809DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X3>, uint64_t *a4@<X4>, unint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t *a9, uint64_t (*a10)(uint64_t, uint64_t, uint64_t, unint64_t, uint64_t, unint64_t), uint64_t *a11, uint64_t *a12)
{
  v15 = *a3;
  v16 = a3[1];
  v17 = *a4;
  v18 = a4[1];
  sub_22627CD48(*a3, v16);
  sub_22627CD48(v17, v18);
  v19 = a10(a1, a2, v15, v16, v17, v18);
  if (v39)
  {
    sub_22627CDF4(v17, v18);
    result = sub_22627CDF4(v15, v16);
    *a9 = v39;
    return result;
  }

  v23 = v20;
  v39 = v19;
  v24 = v18;
  v25 = v21;
  sub_22627CDF4(v17, v24);
  sub_22627CDF4(v15, v16);
  v26 = *a3;
  v27 = a3[1];
  sub_22627CD48(*a3, v27);
  __swift_instantiateConcreteTypeFromMangledNameV2(a11, a12);
  v28 = sub_22628E9EC();
  v29 = sub_22628EA2C();
  v30 = *(a7 + OBJC_IVAR____DPPINEParameter_fractionalBitCount);
  v31 = type metadata accessor for PINEShim.ShardResult();
  result = objc_allocWithZone(v31);
  v32 = &result[OBJC_IVAR____DPPINEShardResult_publicShare];
  *v32 = v39;
  v32[1] = v23;
  *&result[OBJC_IVAR____DPPINEShardResult_inputShares] = v25;
  v33 = &result[OBJC_IVAR____DPPINEShardResult_nonce];
  *v33 = v26;
  v33[1] = v27;
  if ((a5 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  if (HIDWORD(a5))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  *&result[OBJC_IVAR____DPPINEShardResult_dimension] = a5;
  if ((v28 & 0x8000000000000000) != 0)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (HIDWORD(v28))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  *&result[OBJC_IVAR____DPPINEShardResult_chunkLength] = v28;
  if ((v29 & 0x8000000000000000) != 0)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (HIDWORD(v29))
  {
LABEL_16:
    __break(1u);
    return result;
  }

  *&result[OBJC_IVAR____DPPINEShardResult_chunkLengthNormEquality] = v29;
  *&result[OBJC_IVAR____DPPINEShardResult_l2NormBoundInt] = a6;
  *&result[OBJC_IVAR____DPPINEShardResult_fractionalBitCount] = v30;
  v38.receiver = result;
  v38.super_class = v31;
  result = objc_msgSendSuper2(&v38, sel_init);
  *a8 = result;
  return result;
}

uint64_t static PINEShim.shard(_:parameter:)(void *a1, unint64_t a2)
{
  v2 = *(a2 + OBJC_IVAR____DPPINEParameter_pineType);
  switch(v2)
  {
    case -61434:
      return sub_226281E8C(a1, a2);
    case -61435:
      return sub_226281AAC(a1, a2);
    case -61436:
      return sub_2262816CC(a1, a2);
  }

  v4 = *(a2 + OBJC_IVAR____DPPINEParameter_pineType);
  result = sub_22628EC0C();
  __break(1u);
  return result;
}

BOOL static PINEShim.isValidPINEType(_:)(_BOOL8 result)
{
  if (!HIDWORD(result))
  {
    return (result + 61436) < 3;
  }

  __break(1u);
  return result;
}

id PINEShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PINEShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_226280E9C(uint64_t *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_22627CDF4(v3, v2);
      *&bytes = v3;
      *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_226295330;
      sub_22627CDF4(0, 0xC000000000000000);
      result = sub_2262815C8(&bytes);
      v19 = *(&bytes + 1) | 0x4000000000000000;
      *a1 = bytes;
      a1[1] = v19;
      goto LABEL_16;
    }

    sub_22627CDF4(v3, v2);
    *&bytes = v3;
    WORD4(bytes) = v2;
    BYTE10(bytes) = BYTE2(v2);
    BYTE11(bytes) = BYTE3(v2);
    BYTE12(bytes) = BYTE4(v2);
    BYTE13(bytes) = BYTE5(v2);
    BYTE14(bytes) = BYTE6(v2);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], BYTE6(v2), &bytes);
    if (!result)
    {
      v6 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v6;
LABEL_16:
      v20 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0, &bytes);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v7 = *a1;

  sub_22627CDF4(v3, v2);
  *&bytes = v3;
  *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_226295330;
  sub_22627CDF4(0, 0xC000000000000000);
  sub_22628E78C();
  v8 = *(&bytes + 1);
  v9 = *(bytes + 16);
  v10 = *(bytes + 24);
  v11 = sub_22628E6FC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_22628E72C();
  v14 = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v15 = __OFSUB__(v10, v9);
  v16 = v10 - v9;
  if (v15)
  {
    goto LABEL_18;
  }

  v17 = sub_22628E71C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = SecRandomCopyBytes(*MEMORY[0x277CDC540], v18, (v12 + v14));
  if (!result)
  {
    *a1 = bytes;
    a1[1] = v8 | 0x8000000000000000;
    goto LABEL_16;
  }

LABEL_20:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_2262811B0(uint64_t *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_22627CDF4(v3, v2);
      *&bytes = v3;
      *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_226295330;
      sub_22627CDF4(0, 0xC000000000000000);
      result = sub_2262814C4(&bytes);
      v19 = *(&bytes + 1) | 0x4000000000000000;
      *a1 = bytes;
      a1[1] = v19;
      goto LABEL_16;
    }

    sub_22627CDF4(v3, v2);
    *&bytes = v3;
    WORD4(bytes) = v2;
    BYTE10(bytes) = BYTE2(v2);
    BYTE11(bytes) = BYTE3(v2);
    BYTE12(bytes) = BYTE4(v2);
    BYTE13(bytes) = BYTE5(v2);
    BYTE14(bytes) = BYTE6(v2);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], BYTE6(v2), &bytes);
    if (!result)
    {
      v6 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v6;
LABEL_16:
      v20 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0, &bytes);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v7 = *a1;

  sub_22627CDF4(v3, v2);
  *&bytes = v3;
  *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_226295330;
  sub_22627CDF4(0, 0xC000000000000000);
  sub_22628E78C();
  v8 = *(&bytes + 1);
  v9 = *(bytes + 16);
  v10 = *(bytes + 24);
  v11 = sub_22628E6FC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_22628E72C();
  v14 = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v15 = __OFSUB__(v10, v9);
  v16 = v10 - v9;
  if (v15)
  {
    goto LABEL_18;
  }

  v17 = sub_22628E71C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = SecRandomCopyBytes(*MEMORY[0x277CDC540], v18, (v12 + v14));
  if (!result)
  {
    *a1 = bytes;
    a1[1] = v8 | 0x8000000000000000;
    goto LABEL_16;
  }

LABEL_20:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_2262814C4(int *a1)
{
  sub_22628E79C();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a1 + 1);

  v5 = sub_22628E6FC();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_22628E72C();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v3 - v2;
  v10 = sub_22628E71C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], v11, (v6 + v8)))
  {
  }

LABEL_12:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_2262815C8(int *a1)
{
  sub_22628E79C();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a1 + 1);

  v5 = sub_22628E6FC();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_22628E72C();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v3 - v2;
  v10 = sub_22628E71C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], v11, (v6 + v8)))
  {
  }

LABEL_12:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_2262816CC(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7923B8, &qword_2262954C8);
  v47 = *(v4 - 8);
  v5 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v52 = &v45 - v6;
  v7 = [a1 length];
  v8 = v7 + 3;
  v9 = *(a2 + OBJC_IVAR____DPPINEParameter_l2NormBound);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v48 = v8;
  LODWORD(v55) = v9;
  v51 = a2;
  v10 = *(a2 + OBJC_IVAR____DPPINEParameter_fractionalBitCount);
  v11 = sub_22628EABC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7923C0, &qword_2262954D0);
  v13 = sub_22628E9CC();
  v14 = sub_226282538(&qword_27D7923C8, MEMORY[0x277D78100]);
  v15 = sub_22628237C();
  v16 = sub_226282428();
  v43 = v16;
  v49 = v10;
  v50 = v11;
  v17 = v13;
  v18 = MEMORY[0x277D780B0];
  v19 = v12;
  v20 = v57;
  v21 = sub_22628EA0C();
  if (!v20)
  {
    v45 = a1;
    v46 = v4;
    v22 = v48 >> 2;
    v23 = v51;
    v48 = *(v51 + OBJC_IVAR____DPPINEParameter_numOfProofs);
    v57 = 0;
    v24 = v21;
    sub_22628E9DC();
    v25 = *(v23 + OBJC_IVAR____DPPINEParameter_wraparoundCheckCount);
    v43 = v18;
    v44 = v16;
    v41 = v14;
    v42 = v15;
    v39 = v19;
    v40 = v17;
    v38[0] = v25;
    v38[1] = v50;
    v26 = v24;
    v27 = v57;
    sub_22628E9FC();
    if (!v27)
    {
      v28 = sub_22628EA3C();
      v55 = sub_226285064(v28);
      v56 = v29;
      sub_22628457C(&v55, 0);
      sub_226280E9C(&v55);
      v30 = v46;
      v31 = v52;
      v32 = sub_22628EA1C();
      v53 = sub_226285064(v32);
      v54 = v33;
      sub_22628457C(&v53, 0);
      sub_2262811B0(&v53);
      v34 = v45;
      v35 = [v45 bytes];
      [v34 length];
      MEMORY[0x28223BE20]();
      v39 = v31;
      v40 = &v55;
      v41 = &v53;
      v42 = v22;
      v43 = v26;
      v44 = v51;
      v14 = sub_226280958(sub_22628247C, v38, v35, v36);
      sub_22627CDF4(v53, v54);
      sub_22627CDF4(v55, v56);
      (*(v47 + 8))(v31, v30);
    }
  }

  return v14;
}

uint64_t sub_226281AAC(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7923E0, &qword_2262954D8);
  v47 = *(v4 - 8);
  v5 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v52 = &v45 - v6;
  v7 = [a1 length];
  v8 = v7 + 3;
  v9 = *(a2 + OBJC_IVAR____DPPINEParameter_l2NormBound);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v48 = v8;
  LODWORD(v55) = v9;
  v51 = a2;
  v10 = *(a2 + OBJC_IVAR____DPPINEParameter_fractionalBitCount);
  v11 = sub_22628EA9C();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7923C0, &qword_2262954D0);
  v13 = sub_22628E9CC();
  v14 = sub_226282538(&qword_27D792320, MEMORY[0x277D780E0]);
  v15 = sub_22628237C();
  v16 = sub_226282428();
  v43 = v16;
  v49 = v10;
  v50 = v11;
  v17 = v13;
  v18 = MEMORY[0x277D780B0];
  v19 = v12;
  v20 = v57;
  v21 = sub_22628EA0C();
  if (!v20)
  {
    v45 = a1;
    v46 = v4;
    v22 = v48 >> 2;
    v23 = v51;
    v48 = *(v51 + OBJC_IVAR____DPPINEParameter_numOfProofs);
    v57 = 0;
    v24 = v21;
    sub_22628E9DC();
    v25 = *(v23 + OBJC_IVAR____DPPINEParameter_wraparoundCheckCount);
    v43 = v18;
    v44 = v16;
    v41 = v14;
    v42 = v15;
    v39 = v19;
    v40 = v17;
    v38[0] = v25;
    v38[1] = v50;
    v26 = v24;
    v27 = v57;
    sub_22628E9FC();
    if (!v27)
    {
      v28 = sub_22628EA3C();
      v55 = sub_226285064(v28);
      v56 = v29;
      sub_22628457C(&v55, 0);
      sub_226280E9C(&v55);
      v30 = v46;
      v31 = v52;
      v32 = sub_22628EA1C();
      v53 = sub_226285064(v32);
      v54 = v33;
      sub_22628457C(&v53, 0);
      sub_2262811B0(&v53);
      v34 = v45;
      v35 = [v45 bytes];
      [v34 length];
      MEMORY[0x28223BE20]();
      v39 = v31;
      v40 = &v55;
      v41 = &v53;
      v42 = v22;
      v43 = v26;
      v44 = v51;
      v14 = sub_226280958(sub_2262824B8, v38, v35, v36);
      sub_22627CDF4(v53, v54);
      sub_22627CDF4(v55, v56);
      (*(v47 + 8))(v31, v30);
    }
  }

  return v14;
}

uint64_t sub_226281E8C(void *a1, unint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7923E8, &unk_2262954E0);
  v47 = *(v4 - 8);
  v5 = (*(v47 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v52 = &v45 - v6;
  v7 = [a1 length];
  v8 = v7 + 3;
  v9 = *(a2 + OBJC_IVAR____DPPINEParameter_l2NormBound);
  if (v7 >= 0)
  {
    v8 = v7;
  }

  v48 = v8;
  LODWORD(v55) = v9;
  v51 = a2;
  v10 = *(a2 + OBJC_IVAR____DPPINEParameter_fractionalBitCount);
  v11 = sub_22628EAAC();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7923C0, &qword_2262954D0);
  v13 = sub_22628E9CC();
  v14 = sub_226282538(&qword_27D7923F0, MEMORY[0x277D780F0]);
  v15 = sub_22628237C();
  v16 = sub_226282428();
  v43 = v16;
  v49 = v10;
  v50 = v11;
  v17 = v13;
  v18 = MEMORY[0x277D780B0];
  v19 = v12;
  v20 = v57;
  v21 = sub_22628EA0C();
  if (!v20)
  {
    v45 = a1;
    v46 = v4;
    v22 = v48 >> 2;
    v23 = v51;
    v48 = *(v51 + OBJC_IVAR____DPPINEParameter_numOfProofs);
    v57 = 0;
    v24 = v21;
    sub_22628E9DC();
    v25 = *(v23 + OBJC_IVAR____DPPINEParameter_wraparoundCheckCount);
    v43 = v18;
    v44 = v16;
    v41 = v14;
    v42 = v15;
    v39 = v19;
    v40 = v17;
    v38[0] = v25;
    v38[1] = v50;
    v26 = v24;
    v27 = v57;
    sub_22628E9FC();
    if (!v27)
    {
      v28 = sub_22628EA3C();
      v55 = sub_226285064(v28);
      v56 = v29;
      sub_22628457C(&v55, 0);
      sub_226280E9C(&v55);
      v30 = v46;
      v31 = v52;
      v32 = sub_22628EA1C();
      v53 = sub_226285064(v32);
      v54 = v33;
      sub_22628457C(&v53, 0);
      sub_2262811B0(&v53);
      v34 = v45;
      v35 = [v45 bytes];
      [v34 length];
      MEMORY[0x28223BE20]();
      v39 = v31;
      v40 = &v55;
      v41 = &v53;
      v42 = v22;
      v43 = v26;
      v44 = v51;
      v14 = sub_226280958(sub_226282580, v38, v35, v36);
      sub_22627CDF4(v53, v54);
      sub_22627CDF4(v55, v56);
      (*(v47 + 8))(v31, v30);
    }
  }

  return v14;
}

unint64_t sub_226282270()
{
  result = qword_27D7923B0;
  if (!qword_27D7923B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7923B0);
  }

  return result;
}

unint64_t sub_22628237C()
{
  result = qword_27D7923D0;
  if (!qword_27D7923D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7923C0, &qword_2262954D0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7923D0);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_226282428()
{
  result = qword_27D7923D8;
  if (!qword_27D7923D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7923D8);
  }

  return result;
}

uint64_t sub_226282538(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata accessor for DediscoPrioPiRapporShare()
{
  result = qword_27D7923F8;
  if (!qword_27D7923F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22628263C()
{
  result = sub_22628E7FC();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_2262826C8()
{
  v0 = sub_22628E91C();
  __swift_allocate_value_buffer(v0, qword_27D792E70);
  __swift_project_value_buffer(v0, qword_27D792E70);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792428, &qword_226295688);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792430, &unk_226295690) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2262954F0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "prio_share";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x277D21888];
  v8 = sub_22628E8FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "number_of_encoded_indices";
  *(v10 + 1) = 25;
  v10[16] = 2;
  v9();
  v11 = v5 + 2 * v2 + v1[14];
  *(v5 + 2 * v2) = 3;
  *v11 = "pi_rappor_other_phi";
  *(v11 + 8) = 19;
  *(v11 + 16) = 2;
  v9();
  return sub_22628E90C();
}

uint64_t sub_2262828DC()
{
  while (1)
  {
    result = sub_22628E84C();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 3:
        goto LABEL_8;
      case 2:
        sub_22628E86C();
        break;
      case 1:
LABEL_8:
        sub_22628E85C();
        break;
    }
  }
}

uint64_t sub_226282978()
{
  v2 = *v0;
  v3 = v0[1];
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v5 = *(v2 + 16);
    v6 = *(v2 + 24);
    goto LABEL_8;
  }

  if (v4)
  {
    v5 = v2;
    v6 = v2 >> 32;
LABEL_8:
    if (v5 == v6)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  if ((v3 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  result = sub_22628E8DC();
  if (v1)
  {
    return result;
  }

LABEL_10:
  if (!v0[2] || (result = sub_22628E8EC(), !v1))
  {
    v8 = v0[3];
    v9 = v0[4];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 != 2)
      {
        goto LABEL_21;
      }

      v11 = *(v8 + 16);
      v12 = *(v8 + 24);
    }

    else
    {
      if (!v10)
      {
        if ((v9 & 0xFF000000000000) == 0)
        {
          goto LABEL_21;
        }

LABEL_20:
        result = sub_22628E8DC();
        if (v1)
        {
          return result;
        }

        goto LABEL_21;
      }

      v11 = v8;
      v12 = v8 >> 32;
    }

    if (v11 != v12)
    {
      goto LABEL_20;
    }

LABEL_21:
    v13 = v0 + *(type metadata accessor for DediscoPrioPiRapporShare() + 28);
    return sub_22628E7DC();
  }

  return result;
}

uint64_t sub_226282AAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = xmmword_226295330;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0xC000000000000000;
  v2 = a2 + *(a1 + 28);
  return sub_22628E7EC();
}

uint64_t sub_226282B04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 28);
  v5 = sub_22628E7FC();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_226282B78(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 28);
  v5 = sub_22628E7FC();
  v6 = *(*(v5 - 8) + 40);

  return v6(v2 + v4, a1, v5);
}

uint64_t (*sub_226282BEC(uint64_t a1, uint64_t a2))()
{
  result = nullsub_1;
  v4 = v2 + *(a2 + 28);
  return result;
}

uint64_t sub_226282C48(uint64_t a1, uint64_t a2)
{
  v4 = sub_226283774(&qword_27D792420, type metadata accessor for DediscoPrioPiRapporShare);

  return MEMORY[0x28217E230](a1, a2, v4);
}

uint64_t sub_226282CC8@<X0>(uint64_t a1@<X8>)
{
  if (qword_27D7922B8 != -1)
  {
    swift_once();
  }

  v2 = sub_22628E91C();
  v3 = __swift_project_value_buffer(v2, qword_27D792E70);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_226282D70(uint64_t a1)
{
  v2 = sub_226283774(&qword_27D7922D8, type metadata accessor for DediscoPrioPiRapporShare);

  return MEMORY[0x28217E428](a1, v2);
}

uint64_t sub_226282DDC()
{
  sub_22628EC7C();
  sub_22628EADC();
  return sub_22628EC9C();
}

uint64_t sub_226282E34()
{
  sub_226283774(&qword_27D7922D8, type metadata accessor for DediscoPrioPiRapporShare);

  return sub_22628E8BC();
}

uint64_t sub_226282EB0()
{
  sub_22628EC7C();
  sub_22628EADC();
  return sub_22628EC9C();
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_2262830C4@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v26 = *MEMORY[0x277D85DE8];
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = sub_22628E6FC();
    if (v10)
    {
      v11 = sub_22628E72C();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = sub_22628E71C();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v21 = a3;
    v22 = BYTE2(a3);
    v23 = BYTE3(a3);
    v24 = BYTE4(a3);
    v25 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      v19 = *MEMORY[0x277D85DE8];
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = sub_22628E6FC();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = sub_22628E72C();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = sub_22628E71C();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

uint64_t sub_2262832F4(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v14[2] = *MEMORY[0x277D85DE8];
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v14[0] = a1;
      LOWORD(v14[1]) = a2;
      BYTE2(v14[1]) = BYTE2(a2);
      BYTE3(v14[1]) = BYTE3(a2);
      BYTE4(v14[1]) = BYTE4(a2);
      BYTE5(v14[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_226283484(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_22627CDF4(a3, a4);
    goto LABEL_11;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v14, 0, 14);
LABEL_9:
  sub_2262830C4(v14, a3, a4, &v13);
  v10 = v4;
  sub_22627CDF4(a3, a4);
  if (!v4)
  {
    v10 = v13;
  }

LABEL_11:
  v11 = *MEMORY[0x277D85DE8];
  return v10 & 1;
}

uint64_t sub_226283484(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = sub_22628E6FC();
  v11 = result;
  if (result)
  {
    result = sub_22628E72C();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_22628E71C();
  sub_2262830C4(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

uint64_t sub_22628353C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_22627CD48(a3, a4);
          return sub_2262832F4(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_2262836A4(uint64_t *a1, uint64_t *a2)
{
  if ((sub_22628353C(*a1, a1[1], *a2, a2[1]) & 1) == 0 || a1[2] != a2[2] || (sub_22628353C(a1[3], a1[4], a2[3], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v4 = *(type metadata accessor for DediscoPrioPiRapporShare() + 28);
  sub_22628E7FC();
  sub_226283774(&qword_27D792438, MEMORY[0x277D216C8]);
  return sub_22628EAFC() & 1;
}

uint64_t sub_226283774(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for PreambleEngineError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for PreambleEngineError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t sub_226283860(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_226283878(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

unint64_t sub_2262838A4(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    v6[0] = 0;
    v6[1] = 0xE000000000000000;
    sub_22628EB9C();
    MEMORY[0x22AA7A060](0xD000000000000032, 0x800000022629A130);
    goto LABEL_5;
  }

  if (a3 == 1)
  {
    sub_22628EB9C();

    strcpy(v6, "Measurement ");
    BYTE5(v6[1]) = 0;
    HIWORD(v6[1]) = -5120;
    v3 = sub_22628EBEC();
    MEMORY[0x22AA7A060](v3);

    MEMORY[0x22AA7A060](0x696D696C203D3E20, 0xEA00000000002074);
LABEL_5:
    v4 = sub_22628EBEC();
    MEMORY[0x22AA7A060](v4);

    return v6[0];
  }

  return 0xD00000000000002DLL;
}

id AppleIntelligenceReportShim.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AppleIntelligenceReportShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIntelligenceReportShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AppleIntelligenceReportShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AppleIntelligenceReportShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t Prio3SumVectorShim.VDAFType.init(rawValue:)(int a1)
{
  v1 = 4294905859;
  if (a1 != -61437)
  {
    v1 = 0;
  }

  return v1 | ((a1 != -61437) << 32);
}

_DWORD *sub_226283BA0@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result != -61437;
  if (*result == -61437)
  {
    v3 = -61437;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  *(a2 + 4) = v2;
  return result;
}

id Prio3SumVectorShim.Parameter.__allocating_init(bitWidth:numOfAggregators:numOfProofs:vdafType:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____DPPrio3SumVectorParameter_bitWidth] = a1;
  *&v9[OBJC_IVAR____DPPrio3SumVectorParameter_numOfAggregators] = a2;
  *&v9[OBJC_IVAR____DPPrio3SumVectorParameter_numberOfProofs] = a3;
  *&v9[OBJC_IVAR____DPPrio3SumVectorParameter_vdafType] = a4;
  v11.receiver = v9;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

id Prio3SumVectorShim.Parameter.init(bitWidth:numOfAggregators:numOfProofs:vdafType:)(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  ObjectType = swift_getObjectType();
  *&v4[OBJC_IVAR____DPPrio3SumVectorParameter_bitWidth] = a1;
  *&v4[OBJC_IVAR____DPPrio3SumVectorParameter_numOfAggregators] = a2;
  *&v4[OBJC_IVAR____DPPrio3SumVectorParameter_numberOfProofs] = a3;
  *&v4[OBJC_IVAR____DPPrio3SumVectorParameter_vdafType] = a4;
  v11.receiver = v4;
  v11.super_class = ObjectType;
  return objc_msgSendSuper2(&v11, sel_init);
}

uint64_t Prio3SumVectorShim.ShardResult.publicShare.getter()
{
  v1 = *(v0 + OBJC_IVAR____DPVDAFShardResult_publicShare);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPVDAFShardResult_publicShare + 8));
  return v1;
}

uint64_t Prio3SumVectorShim.ShardResult.nonce.getter()
{
  v1 = *(v0 + OBJC_IVAR____DPVDAFShardResult_nonce);
  sub_22627CD48(v1, *(v0 + OBJC_IVAR____DPVDAFShardResult_nonce + 8));
  return v1;
}

id Prio3SumVectorShim.ShardResult.__allocating_init(publicShare:inputShares:nonce:dimension:chunkLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = objc_allocWithZone(v7);
  v16 = &v15[OBJC_IVAR____DPVDAFShardResult_publicShare];
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v15[OBJC_IVAR____DPVDAFShardResult_inputShares] = a3;
  v17 = &v15[OBJC_IVAR____DPVDAFShardResult_nonce];
  *v17 = a4;
  *(v17 + 1) = a5;
  *&v15[OBJC_IVAR____DPVDAFShardResult_dimension] = a6;
  *&v15[OBJC_IVAR____DPVDAFShardResult_chunkLength] = a7;
  v19.receiver = v15;
  v19.super_class = v7;
  return objc_msgSendSuper2(&v19, sel_init);
}

id Prio3SumVectorShim.ShardResult.init(publicShare:inputShares:nonce:dimension:chunkLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v16 = &v7[OBJC_IVAR____DPVDAFShardResult_publicShare];
  *v16 = a1;
  *(v16 + 1) = a2;
  *&v7[OBJC_IVAR____DPVDAFShardResult_inputShares] = a3;
  v17 = &v7[OBJC_IVAR____DPVDAFShardResult_nonce];
  *v17 = a4;
  *(v17 + 1) = a5;
  *&v7[OBJC_IVAR____DPVDAFShardResult_dimension] = a6;
  *&v7[OBJC_IVAR____DPVDAFShardResult_chunkLength] = a7;
  v19.receiver = v7;
  v19.super_class = ObjectType;
  return objc_msgSendSuper2(&v19, sel_init);
}

id Prio3SumVectorShim.ShardResult.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id Prio3SumVectorShim.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Prio3SumVectorShim();
  return objc_msgSendSuper2(&v2, sel_init);
}

uint64_t static Prio3SumVectorShim.shard(_:parameter:)(void *a1, uint64_t a2)
{
  if (*(a2 + OBJC_IVAR____DPPrio3SumVectorParameter_vdafType) == -61437)
  {
    return sub_226285104(a1, a2);
  }

  v3 = *(a2 + OBJC_IVAR____DPPrio3SumVectorParameter_vdafType);
  result = sub_22628EC0C();
  __break(1u);
  return result;
}

id Prio3SumVectorShim.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for Prio3SumVectorShim();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t *sub_22628457C(uint64_t *result, int a2)
{
  v3 = result;
  v24 = *MEMORY[0x277D85DE8];
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_22627CDF4(v5, v4);
      __b = v5;
      v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v3 = xmmword_226295330;
      sub_22627CDF4(0, 0xC000000000000000);
      result = sub_226284FBC(&__b, a2);
      v7 = __b;
      v8 = v23 | 0x4000000000000000;
    }

    else
    {
      sub_22627CDF4(v5, v4);
      __b = v5;
      LOWORD(v23) = v4;
      BYTE2(v23) = BYTE2(v4);
      BYTE3(v23) = BYTE3(v4);
      BYTE4(v23) = BYTE4(v4);
      BYTE5(v23) = BYTE5(v4);
      BYTE6(v23) = BYTE6(v4);
      result = memset(&__b, a2, BYTE6(v4));
      v7 = __b;
      v8 = v23 | ((WORD2(v23) | (BYTE6(v23) << 16)) << 32);
    }

    *v3 = v7;
    v3[1] = v8;
    goto LABEL_14;
  }

  if (v6 != 2)
  {
LABEL_14:
    v20 = *MEMORY[0x277D85DE8];
    return result;
  }

  v9 = *result;

  sub_22627CDF4(v5, v4);
  __b = v5;
  v23 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v3 = xmmword_226295330;
  sub_22627CDF4(0, 0xC000000000000000);
  sub_22628E78C();
  v10 = v23;
  v11 = *(__b + 16);
  v12 = *(__b + 24);
  result = sub_22628E6FC();
  if (result)
  {
    v13 = result;
    v14 = sub_22628E72C();
    v15 = v11 - v14;
    if (__OFSUB__(v11, v14))
    {
      __break(1u);
    }

    else
    {
      v16 = __OFSUB__(v12, v11);
      v17 = v12 - v11;
      if (!v16)
      {
        v18 = sub_22628E71C();
        if (v18 >= v17)
        {
          v19 = v17;
        }

        else
        {
          v19 = v18;
        }

        result = memset(v13 + v15, a2, v19);
        *v3 = __b;
        v3[1] = v10 | 0x8000000000000000;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_2262847E4(uint64_t *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_22627CDF4(v3, v2);
      *&bytes = v3;
      *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_226295330;
      sub_22627CDF4(0, 0xC000000000000000);
      result = sub_226284EC0(&bytes);
      v19 = *(&bytes + 1) | 0x4000000000000000;
      *a1 = bytes;
      a1[1] = v19;
      goto LABEL_16;
    }

    sub_22627CDF4(v3, v2);
    *&bytes = v3;
    WORD4(bytes) = v2;
    BYTE10(bytes) = BYTE2(v2);
    BYTE11(bytes) = BYTE3(v2);
    BYTE12(bytes) = BYTE4(v2);
    BYTE13(bytes) = BYTE5(v2);
    BYTE14(bytes) = BYTE6(v2);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], BYTE6(v2), &bytes);
    if (!result)
    {
      v6 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v6;
LABEL_16:
      v20 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0, &bytes);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v7 = *a1;

  sub_22627CDF4(v3, v2);
  *&bytes = v3;
  *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_226295330;
  sub_22627CDF4(0, 0xC000000000000000);
  sub_22628E78C();
  v8 = *(&bytes + 1);
  v9 = *(bytes + 16);
  v10 = *(bytes + 24);
  v11 = sub_22628E6FC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_22628E72C();
  v14 = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v15 = __OFSUB__(v10, v9);
  v16 = v10 - v9;
  if (v15)
  {
    goto LABEL_18;
  }

  v17 = sub_22628E71C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = SecRandomCopyBytes(*MEMORY[0x277CDC540], v18, (v12 + v14));
  if (!result)
  {
    *a1 = bytes;
    a1[1] = v8 | 0x8000000000000000;
    goto LABEL_16;
  }

LABEL_20:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_226284AD4(uint64_t *a1)
{
  v22 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v2 = a1[1];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (v4)
    {

      sub_22627CDF4(v3, v2);
      *&bytes = v3;
      *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_226295330;
      sub_22627CDF4(0, 0xC000000000000000);
      result = sub_226284DC4(&bytes);
      v19 = *(&bytes + 1) | 0x4000000000000000;
      *a1 = bytes;
      a1[1] = v19;
      goto LABEL_16;
    }

    sub_22627CDF4(v3, v2);
    *&bytes = v3;
    WORD4(bytes) = v2;
    BYTE10(bytes) = BYTE2(v2);
    BYTE11(bytes) = BYTE3(v2);
    BYTE12(bytes) = BYTE4(v2);
    BYTE13(bytes) = BYTE5(v2);
    BYTE14(bytes) = BYTE6(v2);
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], BYTE6(v2), &bytes);
    if (!result)
    {
      v6 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v6;
LABEL_16:
      v20 = *MEMORY[0x277D85DE8];
      return result;
    }

    goto LABEL_20;
  }

  if (v4 != 2)
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    result = SecRandomCopyBytes(*MEMORY[0x277CDC540], 0, &bytes);
    if (!result)
    {
      goto LABEL_16;
    }

    goto LABEL_20;
  }

  v7 = *a1;

  sub_22627CDF4(v3, v2);
  *&bytes = v3;
  *(&bytes + 1) = v2 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_226295330;
  sub_22627CDF4(0, 0xC000000000000000);
  sub_22628E78C();
  v8 = *(&bytes + 1);
  v9 = *(bytes + 16);
  v10 = *(bytes + 24);
  v11 = sub_22628E6FC();
  if (!v11)
  {
    __break(1u);
    goto LABEL_20;
  }

  v12 = v11;
  v13 = sub_22628E72C();
  v14 = v9 - v13;
  if (__OFSUB__(v9, v13))
  {
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v15 = __OFSUB__(v10, v9);
  v16 = v10 - v9;
  if (v15)
  {
    goto LABEL_18;
  }

  v17 = sub_22628E71C();
  if (v17 >= v16)
  {
    v18 = v16;
  }

  else
  {
    v18 = v17;
  }

  result = SecRandomCopyBytes(*MEMORY[0x277CDC540], v18, (v12 + v14));
  if (!result)
  {
    *a1 = bytes;
    a1[1] = v8 | 0x8000000000000000;
    goto LABEL_16;
  }

LABEL_20:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_226284DC4(int *a1)
{
  sub_22628E79C();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a1 + 1);

  v5 = sub_22628E6FC();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_22628E72C();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v3 - v2;
  v10 = sub_22628E71C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], v11, (v6 + v8)))
  {
  }

LABEL_12:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_226284EC0(int *a1)
{
  sub_22628E79C();
  v2 = *a1;
  v3 = a1[1];
  if (v3 < v2)
  {
    __break(1u);
    goto LABEL_10;
  }

  v4 = *(a1 + 1);

  v5 = sub_22628E6FC();
  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = v5;
  v7 = sub_22628E72C();
  v8 = v2 - v7;
  if (__OFSUB__(v2, v7))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v9 = v3 - v2;
  v10 = sub_22628E71C();
  if (v10 >= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (!SecRandomCopyBytes(*MEMORY[0x277CDC540], v11, (v6 + v8)))
  {
  }

LABEL_12:
  result = sub_22628EBBC();
  __break(1u);
  return result;
}

uint64_t sub_226284FBC(int *a1, int a2)
{
  result = sub_22628E79C();
  v5 = *a1;
  v6 = a1[1];
  if (v6 < v5)
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = *(a1 + 1);

  result = sub_22628E6FC();
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v8 = result;
  result = sub_22628E72C();
  v9 = v5 - result;
  if (__OFSUB__(v5, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v10 = v6 - v5;
  v11 = sub_22628E71C();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  memset((v8 + v9), a2, v12);
}

uint64_t sub_226285064(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      v2 = sub_22628E73C();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      sub_22628E70C();
      if (v1 >= 0x7FFFFFFF)
      {
        sub_22628E7AC();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t sub_226285104(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792490, &qword_2262958A0);
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = (*(v40 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  MEMORY[0x28223BE20]();
  v46 = &v36 - v7;
  v8 = *(a2 + OBJC_IVAR____DPPrio3SumVectorParameter_numOfAggregators);
  v9 = *(a2 + OBJC_IVAR____DPPrio3SumVectorParameter_numberOfProofs);
  v10 = *(a2 + OBJC_IVAR____DPPrio3SumVectorParameter_bitWidth);
  v11 = sub_22628EB7C();
  v12 = sub_22628EB8C();
  v13 = sub_22628EB7C();
  result = sub_22628EB8C();
  if (v11 < v13 || result < v11)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v15 = sub_22628EB7C();
  result = sub_22628EB8C();
  if (v12 < v15 || result < v12)
  {
    goto LABEL_16;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  sub_22628EA8C();
  if (v2)
  {
    return v12;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792498, &qword_2262958A8);
  sub_22628E9CC();
  sub_226285600();
  v16 = sub_22628EA5C();
  *&v44 = sub_226285064(v16);
  *(&v44 + 1) = v17;
  sub_22628457C(&v44, 0);
  v45 = v44;
  sub_2262847E4(&v45);
  v18 = sub_22628EA4C();
  *&v43 = sub_226285064(v18);
  *(&v43 + 1) = v19;
  sub_22628457C(&v43, 0);
  v44 = v43;
  sub_226284AD4(&v44);
  [a1 bytes];
  [a1 length];
  v20 = v45;
  v21 = sub_22628EA7C();
  v39 = 0;
  v37 = v22;
  v38 = v23;
  v24 = v21;
  v25 = sub_22628EB7C();
  v26 = sub_22628EB8C();
  v27 = sub_22628EB7C();
  result = sub_22628EB8C();
  if (v25 < v27 || result < v25)
  {
    goto LABEL_18;
  }

  v28 = sub_22628EB7C();
  result = sub_22628EB8C();
  if (v26 < v28 || result < v26)
  {
    goto LABEL_19;
  }

  v29 = v26 - v25;
  if (!__OFSUB__(v26, v25))
  {
    v30 = v46;
    v31 = sub_22628EA6C();
    v32 = type metadata accessor for Prio3SumVectorShim.ShardResult();
    v33 = objc_allocWithZone(v32);
    v34 = &v33[OBJC_IVAR____DPVDAFShardResult_publicShare];
    v35 = v37;
    *v34 = v24;
    v34[1] = v35;
    *&v33[OBJC_IVAR____DPVDAFShardResult_inputShares] = v38;
    *&v33[OBJC_IVAR____DPVDAFShardResult_nonce] = v20;
    *&v33[OBJC_IVAR____DPVDAFShardResult_dimension] = v29;
    *&v33[OBJC_IVAR____DPVDAFShardResult_chunkLength] = v31;
    sub_22627CD48(v20, *(&v20 + 1));
    v42.receiver = v33;
    v42.super_class = v32;
    v12 = objc_msgSendSuper2(&v42, sel_init);
    (*(v40 + 8))(v30, v41);
    sub_22627CDF4(v44, *(&v44 + 1));
    sub_22627CDF4(v45, *(&v45 + 1));
    return v12;
  }

LABEL_20:
  __break(1u);
  return result;
}

unint64_t sub_2262854FC()
{
  result = qword_27D792488;
  if (!qword_27D792488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D792488);
  }

  return result;
}

unint64_t sub_226285600()
{
  result = qword_27D7924A0;
  if (!qword_27D7924A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D792498, &qword_2262958A8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7924A0);
  }

  return result;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> PreambleEngineParameter.init(from:with:)(DifferentialPrivacy::PreambleEngineParameter *__return_ptr retstr, Swift::OpaquePointer from, Swift::Int with)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924A8, &qword_2262958C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_2262958B0;
  *(v7 + 32) = sub_22628EB0C();
  *(v7 + 40) = v8;
  v9 = sub_226285F0C(v7, from._rawValue);
  if (v3)
  {
  }

  else
  {
    v10 = v9;

    v11 = swift_allocObject();
    *(v11 + 16) = xmmword_2262958B0;
    *(v11 + 32) = sub_22628EB0C();
    *(v11 + 40) = v12;
    v13 = sub_226285F0C(v11, v10);

    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_2262958B0;
    *(v14 + 32) = sub_22628EB0C();
    *(v14 + 40) = v15;
    v16 = sub_226285F0C(v14, v10);

    v17 = swift_allocObject();
    *(v17 + 16) = xmmword_2262958B0;
    *(v17 + 32) = sub_22628EB0C();
    *(v17 + 40) = v18;
    v19 = sub_226286204(v17, v13);

    v20 = [v19 integerValue];

    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_2262958B0;
    *(v21 + 32) = sub_22628EB0C();
    *(v21 + 40) = v22;
    v23 = sub_226286204(v21, v13);

    v24 = [v23 integerValue];

    sub_226286F28(v20, v24, with);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_2262958B0;
    *(v25 + 32) = sub_22628EB0C();
    *(v25 + 40) = v26;
    v27 = sub_226286518(v25, v16);

    v43 = v24;
    v44 = v20;
    v46 = sub_2262871A8(v20, v24, with);
    v45 = *(v27 + 2);
    if (v45)
    {
      v28 = 0;
      while (v28 < *(v27 + 2))
      {
        v29 = *(v27 + v28 + 4);
        v30 = swift_allocObject();
        *(v30 + 16) = xmmword_2262958B0;
        *(v30 + 32) = sub_22628EB0C();
        *(v30 + 40) = v31;

        v32 = sub_226286828(v30, v29);

        if (v32 == v46)
        {

          v37 = swift_allocObject();
          *(v37 + 16) = xmmword_2262958B0;
          *(v37 + 32) = sub_22628EB0C();
          *(v37 + 40) = v38;
          v35 = sub_226286B28(v37, v29);

          v39 = swift_allocObject();
          *(v39 + 16) = xmmword_2262958B0;
          *(v39 + 32) = sub_22628EB0C();
          *(v39 + 40) = v40;
          v34 = sub_226286B28(v39, v29);

          v41 = swift_allocObject();
          *(v41 + 16) = xmmword_2262958B0;
          *(v41 + 32) = sub_22628EB0C();
          *(v41 + 40) = v42;
          v33 = sub_226286B28(v41, v29);

          goto LABEL_10;
        }

        ++v28;

        if (v45 == v28)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:

      v33 = 0.0;
      v34 = 0.0;
      v35 = 0.0;
LABEL_10:
      if (v35 == 0.0 && v34 == 0.0 && v33 == 0.0)
      {
        sub_2262873EC();
        swift_allocError();
        *v36 = v46;
        *(v36 + 48) = 3;
        swift_willThrow();
      }

      else
      {
        sub_2262871F0(v35, v34, v33);
        retstr->dimension = with;
        retstr->blockSize = v44;
        retstr->numKeptBlocks = v43;
        retstr->cohortSigma = v35;
        retstr->scalingFactor = v33;
        retstr->noiseSigmaLocal = v34;
      }
    }
  }
}

uint64_t sub_226285C40()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v1 * v2;
  if ((v1 * v2) >> 64 != (v1 * v2) >> 63)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (*v0 > v3)
  {
    v3 = *v0;
  }

  if (v3 < 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    return 1 << -__clz(v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_226285C90()
{
  sub_2262875AC(v0, &v8);
  v1 = v8;
  if (v11 > 1u)
  {
    if (v11 == 2)
    {
      v3 = v9;
      sub_2262875E4(&v10, v7);
      sub_22628EB9C();
      MEMORY[0x22AA7A060](0x20646C656946, 0xE600000000000000);
      MEMORY[0x22AA7A060](v1, v3);

      MEMORY[0x22AA7A060](0xD000000000000013, 0x800000022629A3A0);
      sub_22628EBAC();
      __swift_destroy_boxed_opaque_existential_0(v7);
      return 0;
    }

    *&v7[0] = 0;
    *(&v7[0] + 1) = 0xE000000000000000;
    sub_22628EB9C();
    MEMORY[0x22AA7A060](0xD000000000000034, 0x800000022629A360);
    v6 = sub_22628EBEC();
    MEMORY[0x22AA7A060](v6);
  }

  else
  {
    v2 = v9;
    if (v11)
    {
      v5 = v10;
      sub_22628EB9C();

      *&v7[0] = 0x20646C656946;
      *(&v7[0] + 1) = 0xE600000000000000;
      MEMORY[0x22AA7A060](v1, v2);

      MEMORY[0x22AA7A060](0x20746F6E20736920, 0xED00002065707974);
      MEMORY[0x22AA7A060](v5, *(&v5 + 1));
    }

    else
    {
      sub_22628EB9C();

      *&v7[0] = 0xD00000000000001BLL;
      *(&v7[0] + 1) = 0x800000022629A3C0;
      MEMORY[0x22AA7A060](v1, v2);
    }
  }

  return *&v7[0];
}

_OWORD *sub_226285F0C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C0, &qword_226295A70);
  v28 = v4;
  v27[0] = a2;
  v5 = *(a1 + 16);

  if (v5)
  {
    v6 = (a1 + 40);
    while (1)
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      sub_226287640(v27, v26);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v9 = v25[0];
      if (!*(v25[0] + 16))
      {

LABEL_12:

        goto LABEL_14;
      }

      v10 = sub_22627E194(v8, v7);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_226287640(*(v9 + 56) + 32 * v10, v26);

      sub_226287640(v26, v25);
      sub_226287744(0, &qword_27D7924D8, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v27);
      sub_2262875E4(v26, v27);
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v26);

LABEL_14:
    sub_2262873EC();
    swift_allocError();
    v15 = v21;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = v26;
    v22 = sub_22628EAEC();
    v20 = 0;
    *v15 = v22;
    *(v15 + 8) = v23;
    goto LABEL_15;
  }

LABEL_8:
  sub_226287640(v27, v26);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2262873EC();
    swift_allocError();
    v15 = v14;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = sub_22628EAEC();
    v17 = v16;
    *&v26[0] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792518, &unk_226295AB0);
    v18 = sub_22628EB1C();
    *v15 = v13;
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    v20 = 1;
LABEL_15:
    *(v15 + 48) = v20;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v27);
    return v13;
  }

  v13 = v25[0];
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v13;
}

_OWORD *sub_226286204(uint64_t a1, uint64_t a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C0, &qword_226295A70);
  v27[0] = a2;
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = (a1 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_226287640(v27, v26);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v8 = v25[0];
      if (!*(v25[0] + 16))
      {

LABEL_12:

        goto LABEL_14;
      }

      v9 = sub_22627E194(v7, v6);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_226287640(*(v8 + 56) + 32 * v9, v26);

      sub_226287640(v26, v25);
      sub_226287744(0, &qword_27D7924D8, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v27);
      sub_2262875E4(v26, v27);
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v26);

LABEL_14:
    sub_2262873EC();
    swift_allocError();
    v15 = v21;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = v26;
    v22 = sub_22628EAEC();
    v20 = 0;
    *v15 = v22;
    *(v15 + 8) = v23;
    goto LABEL_15;
  }

LABEL_8:
  sub_226287640(v27, v26);
  v12 = sub_226287744(0, &qword_27D792508, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2262873EC();
    swift_allocError();
    v15 = v14;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = sub_22628EAEC();
    v17 = v16;
    *&v26[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792510, &qword_226295AA8);
    v18 = sub_22628EB1C();
    *v15 = v13;
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    v20 = 1;
LABEL_15:
    *(v15 + 48) = v20;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v27);
    return v13;
  }

  v13 = v25[0];
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v13;
}

_OWORD *sub_226286518(uint64_t a1, uint64_t a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C0, &qword_226295A70);
  v27[0] = a2;
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = (a1 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_226287640(v27, v26);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v8 = v25[0];
      if (!*(v25[0] + 16))
      {

LABEL_12:

        goto LABEL_14;
      }

      v9 = sub_22627E194(v7, v6);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_226287640(*(v8 + 56) + 32 * v9, v26);

      sub_226287640(v26, v25);
      sub_226287744(0, &qword_27D7924D8, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v27);
      sub_2262875E4(v26, v27);
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v26);

LABEL_14:
    sub_2262873EC();
    swift_allocError();
    v15 = v21;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = v26;
    v22 = sub_22628EAEC();
    v20 = 0;
    *v15 = v22;
    *(v15 + 8) = v23;
    goto LABEL_15;
  }

LABEL_8:
  sub_226287640(v27, v26);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924F0, &qword_226295A90);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2262873EC();
    swift_allocError();
    v15 = v14;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = sub_22628EAEC();
    v17 = v16;
    *&v26[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924F8, &qword_226295A98);
    v18 = sub_22628EB1C();
    *v15 = v13;
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    v20 = 1;
LABEL_15:
    *(v15 + 48) = v20;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v27);
    return v13;
  }

  v13 = v25[0];
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v13;
}

_OWORD *sub_226286828(uint64_t a1, uint64_t a2)
{
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C0, &qword_226295A70);
  v27[0] = a2;
  v4 = *(a1 + 16);

  if (v4)
  {
    v5 = (a1 + 40);
    while (1)
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      sub_226287640(v27, v26);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v8 = v25[0];
      if (!*(v25[0] + 16))
      {

LABEL_12:

        goto LABEL_14;
      }

      v9 = sub_22627E194(v7, v6);
      v11 = v10;

      if ((v11 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_226287640(*(v8 + 56) + 32 * v9, v26);

      sub_226287640(v26, v25);
      sub_226287744(0, &qword_27D7924D8, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(v27);
      sub_2262875E4(v26, v27);
      v5 += 2;
      if (!--v4)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v26);

LABEL_14:
    sub_2262873EC();
    swift_allocError();
    v15 = v21;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = v26;
    v22 = sub_22628EAEC();
    v20 = 0;
    *v15 = v22;
    *(v15 + 8) = v23;
    goto LABEL_15;
  }

LABEL_8:
  sub_226287640(v27, v26);
  v12 = MEMORY[0x277D83B88];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2262873EC();
    swift_allocError();
    v15 = v14;
    *&v26[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v13 = sub_22628EAEC();
    v17 = v16;
    *&v26[0] = v12;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924E8, &qword_226295A88);
    v18 = sub_22628EB1C();
    *v15 = v13;
    *(v15 + 8) = v17;
    *(v15 + 16) = v18;
    *(v15 + 24) = v19;
    v20 = 1;
LABEL_15:
    *(v15 + 48) = v20;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(v27);
    return v13;
  }

  v13 = v25[0];
  __swift_destroy_boxed_opaque_existential_0(v27);
  return v13;
}

double sub_226286B28(uint64_t a1, uint64_t a2)
{
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C0, &qword_226295A70);
  *&v29 = a2;
  v5 = *(a1 + 16);

  if (v5)
  {
    v6 = (a1 + 40);
    while (1)
    {
      v8 = *(v6 - 1);
      v7 = *v6;
      sub_226287640(&v29, v28);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_12;
      }

      v9 = v27[0];
      if (!*(*&v27[0] + 16))
      {

LABEL_12:

        goto LABEL_14;
      }

      v10 = sub_22627E194(v8, v7);
      v12 = v11;

      if ((v12 & 1) == 0)
      {
        goto LABEL_12;
      }

      sub_226287640(*(*&v9 + 56) + 32 * v10, v28);

      sub_226287640(v28, v27);
      sub_226287744(0, &qword_27D7924D8, 0x277CBEB68);
      if (swift_dynamicCast())
      {
        break;
      }

      __swift_destroy_boxed_opaque_existential_0(&v29);
      sub_2262875E4(v28, &v29);
      v6 += 2;
      if (!--v5)
      {
        goto LABEL_8;
      }
    }

    __swift_destroy_boxed_opaque_existential_0(v28);

LABEL_14:
    sub_2262873EC();
    swift_allocError();
    v15 = v22;
    *&v28[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v23 = sub_22628EAEC();
    v21 = 0;
    *v15 = v23;
    *(v15 + 8) = v24;
    goto LABEL_15;
  }

LABEL_8:
  sub_226287640(&v29, v28);
  v13 = MEMORY[0x277D839F8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_2262873EC();
    swift_allocError();
    v15 = v14;
    *&v28[0] = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924C8, &qword_226295A78);
    sub_22628769C();
    v16 = sub_22628EAEC();
    v18 = v17;
    *&v28[0] = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924E0, &qword_226295A80);
    v19 = sub_22628EB1C();
    *v15 = v16;
    *(v15 + 8) = v18;
    *(v15 + 16) = v19;
    *(v15 + 24) = v20;
    v21 = 1;
LABEL_15:
    *(v15 + 48) = v21;
    swift_willThrow();
    __swift_destroy_boxed_opaque_existential_0(&v29);
    return v2;
  }

  v2 = v27[0];
  __swift_destroy_boxed_opaque_existential_0(&v29);
  return v2;
}

void *sub_226286E60@<X0>(void *result@<X0>, BOOL *a2@<X8>)
{
  v3 = (*result & (*result - 1)) == 0 && *result > 0;
  *a2 = v3;
  return result;
}

uint64_t sub_226286E90(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result < 1)
  {
    return 0;
  }

  v4 = a2 * a3;
  if ((a2 * a3) >> 64 == (a2 * a3) >> 63)
  {
    if (v4 <= a4)
    {
      v4 = a4;
    }

    if (v4 < 0)
    {
      goto LABEL_15;
    }

    if (v4)
    {
      v5 = 1 << -__clz(v4 - 1);
      if (a2)
      {
LABEL_8:
        if (v5 != 0x8000000000000000 || a2 != -1)
        {
          return v5 / a2 >= result;
        }

        goto LABEL_16;
      }
    }

    else
    {
      v5 = 1;
      if (a2)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_15:
  __break(1u);
LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_226286F28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_22628EB0C();
  v8 = v7;
  v9 = sub_22628EB0C();
  v11 = v10;
  v12 = swift_allocObject();
  v12[2] = a1;
  v12[3] = a2;
  v12[4] = a3;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_226287700;
  *(v13 + 24) = v12;
  v21 = v9;
  v14 = sub_22628EB0C();
  v16 = v15;

  if (a1 < 1 || (v17 = vcnt_s8(a1), v17.i16[0] = vaddlv_u8(v17), v17.u32[0] > 1uLL))
  {
    v11 = v8;
    a2 = a1;
  }

  else
  {

    v18 = *(v13 + 24);
    LOBYTE(v18) = (*(v13 + 16))(a2);

    if (v18)
    {

      if (a3 >= 1)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792500, &qword_226295AA0);
        return swift_arrayDestroy();
      }

      v6 = v14;
      v11 = v16;
      a2 = a3;
    }

    else
    {
      v6 = v21;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D792500, &qword_226295AA0);
  swift_arrayDestroy();
  sub_2262873EC();
  swift_allocError();
  *v20 = v6;
  *(v20 + 8) = v11;
  *(v20 + 40) = MEMORY[0x277D83B88];
  *(v20 + 16) = a2;
  *(v20 + 48) = 2;
  return swift_willThrow();
}

uint64_t sub_2262871A8(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result * a2;
  if ((result * a2) >> 64 != (result * a2) >> 63)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    return result;
  }

  if (v3 <= a3)
  {
    v3 = a3;
  }

  if (v3 < 0)
  {
    goto LABEL_9;
  }

  if (v3)
  {
    return 1 << -__clz(v3 - 1);
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2262871F0(double a1, double a2, double a3)
{
  v6 = sub_22628EB0C();
  v8 = v7;
  v9 = sub_22628EB0C();
  v11 = v10;
  v12 = sub_22628EB0C();
  v14 = v13;

  if (a1 >= 0.0)
  {

    if (a2 >= 0.0)
    {

      if (a3 > 0.0)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924B8, &qword_226295A68);
        return swift_arrayDestroy();
      }

      v6 = v12;
      v8 = v14;
      a1 = a3;
    }

    else
    {
      v6 = v9;
      v8 = v11;
      a1 = a2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27D7924B8, &qword_226295A68);
  swift_arrayDestroy();
  sub_2262873EC();
  swift_allocError();
  *v16 = v6;
  *(v16 + 8) = v8;
  *(v16 + 40) = MEMORY[0x277D839F8];
  *(v16 + 16) = a1;
  *(v16 + 48) = 2;
  return swift_willThrow();
}

unint64_t sub_2262873EC()
{
  result = qword_27D7924B0;
  if (!qword_27D7924B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7924B0);
  }

  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_226287454(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226287474(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 48) = v3;
  return result;
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_2262874E4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_226287520(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_226287570(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

_OWORD *sub_2262875E4(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t __swift_destroy_boxed_opaque_existential_0(uint64_t *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) == 0)
  {
    return (*(v1 + 8))();
  }

  v3 = *a1;
}

uint64_t sub_226287640(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

unint64_t sub_22628769C()
{
  result = qword_27D7924D0;
  if (!qword_27D7924D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27D7924C8, &qword_226295A78);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27D7924D0);
  }

  return result;
}

uint64_t sub_22628770C@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  result = v4(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t sub_226287744(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void __one_time_setup_block_invoke_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __one_time_setup_block_invoke_cold_3()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x22u);
  v7 = *MEMORY[0x277D85DE8];
}

void __one_time_setup_block_invoke_cold_4()
{
  v8 = *MEMORY[0x277D85DE8];
  v0 = *__error();
  v1 = __error();
  strerror(*v1);
  OUTLINED_FUNCTION_2_2();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x277D85DE8];
}

void __one_time_setup_block_invoke_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __one_time_setup_block_invoke_cold_6()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void __one_time_setup_block_invoke_cold_7()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0_3();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void _DPDediscoVersionWithMetadata_cold_1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22622D000, v0, OS_LOG_TYPE_DEBUG, "Using PPM compatible version %@ to upload the donation.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void _DPDediscoVersionWithMetadata_cold_2()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_22622D000, v0, OS_LOG_TYPE_ERROR, "Unable to find a matching PPM version from donation metadata's version string: '%@'", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void _DPDediscoVersionWithMetadata_cold_3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(&dword_22622D000, v0, OS_LOG_TYPE_ERROR, "Malformed PPM version in donation metadata, error: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void _DPDediscoVersionWithMetadata_cold_4()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(&dword_22622D000, v0, OS_LOG_TYPE_DEBUG, "PPM version is not specified in donation metadata. Using default PPM version %@ to upload the donation.", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

void operator delete(void *__p)
{
    ;
  }
}

void operator new()
{
    ;
  }
}