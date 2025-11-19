id _VEError(uint64_t a1, void *a2)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v3 = MEMORY[0x277CCA9B8];
  if (a2)
  {
    v9 = *MEMORY[0x277CCA7E8];
    v10[0] = a2;
    v4 = MEMORY[0x277CBEAC0];
    v5 = a2;
    v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];
    v7 = [v3 errorWithDomain:@"com.apple.VideoEffect" code:a1 userInfo:v6];
  }

  else
  {
    v6 = 0;
    v7 = [v3 errorWithDomain:@"com.apple.VideoEffect" code:a1 userInfo:0];
  }

  return v7;
}

uint64_t errorMessage(uint64_t a1, void *a2)
{
  v2 = a2;
  if ((global_logLevel & 0x10) != 0)
  {
    v3 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      errorMessage_cold_1(v2, v3);
    }
  }

  return 0;
}

unint64_t queryMemoryFootprint()
{
  v25 = 0;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v10 = 0u;
  v8 = 0u;
  v9 = 0u;
  v6 = 0u;
  v7 = 0u;
  v4 = 0u;
  v5 = 0u;
  *task_info_out = 0u;
  v3 = 0u;
  task_info_outCnt = 93;
  if (task_info(*MEMORY[0x277D85F48], 0x16u, task_info_out, &task_info_outCnt))
  {
    return 0;
  }

  else
  {
    return v11 >> 20;
  }
}

unint64_t getPhysicalMemorySize()
{
  v4 = *MEMORY[0x277D85DE8];
  v1 = 8;
  v2 = 0;
  *v3 = 0x1800000006;
  if (sysctl(v3, 2u, &v2, &v1, 0, 0))
  {
    return v2;
  }

  else
  {
    return v2 >> 20;
  }
}

vm_size_t OUTLINED_FUNCTION_0()
{

  return getUsableMemorySize();
}

uint64_t OUTLINED_FUNCTION_2(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9, mach_msg_type_number_t host_info64_outCnt, uint64_t a11, integer_t host_info64_out)
{
  host_info64_outCnt = 40;

  return host_statistics64(v12, 4, &host_info64_out, &host_info64_outCnt);
}

uint64_t OUTLINED_FUNCTION_0_0()
{

  return kdebug_trace();
}

uint64_t OUTLINED_FUNCTION_1_0@<X0>(uint64_t a1@<X5>, uint64_t a2@<X8>)
{
  v10 = *(v2 + a2);

  return [v4 initWithUsage:v3 inputWidth:v5 inputHeight:v6 scaleFactor:a1 useMPS:v10 outputSize:{v8, v9}];
}

void OUTLINED_FUNCTION_2_0(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  *(v1 + a1) = 0;
}

CVPixelBufferRef OUTLINED_FUNCTION_3(size_t a1)
{

  return CreatePixelBuffer(v1, a1, 843264104);
}

uint64_t OUTLINED_FUNCTION_4()
{

  return [v0 scaleFactor];
}

CVPixelBufferRef OUTLINED_FUNCTION_1_1(uint64_t a1)
{

  return CreatePixelBuffer(v1, 2 * a1, 1278226536);
}

void OUTLINED_FUNCTION_3_0(uint64_t a1@<X8>)
{
  v3 = *(v1 + a1);
  *(v1 + a1) = 0;
}

uint64_t veErrorCodeFromOF(uint64_t result)
{
  if ((result - 2) >= 0xB)
  {
    return 1;
  }

  return result;
}

void OUTLINED_FUNCTION_0_3(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

CVPixelBufferRef OUTLINED_FUNCTION_0_4@<X0>(size_t a1@<X0>, unint64_t a2@<X8>)
{

  return CreatePixelBuffer(a1, a2 >> 2, 1380411457);
}

CVPixelBufferRef OUTLINED_FUNCTION_1_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v14 = *(v12 + 160);

  return CreatePixelBuffer((a12 + 3) >> 2, (a11 + 3) >> 2, v14);
}

uint64_t OUTLINED_FUNCTION_0_5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, int64x2_t a15, uint64_t a16, uint64_t a17, unint64_t a18, uint64_t a19)
{
  a17 = v21;
  a18 = (a1 + 15) >> 4;
  a19 = v20;
  a15 = vdupq_n_s64(0x10uLL);
  a16 = v20;

  return [v19 dispatchThreadgroups:&a17 threadsPerThreadgroup:&a15];
}

id OUTLINED_FUNCTION_2_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return a4;
}

uint64_t OUTLINED_FUNCTION_3_2()
{

  return [v1 setTexture:v0 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return [v3 setBytes:a3 length:48 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_5()
{

  return [v1 setTexture:v0 atIndex:1];
}

void OUTLINED_FUNCTION_6(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

float32x2_t calcNormalizationParams@<D0>(unint64_t a1@<X0>, float32x2_t *a2@<X8>, double a3@<D0>, double a4@<D1>, float a5@<S2>, float a6@<S3>, double a7@<D6>)
{
  v7 = (2 * a1);
  v8 = (*&a3 + a5) / v7;
  v9 = ((*&a4 + a6) / v7) - (v8 * v8);
  if (v9 <= 0.0)
  {
    v9 = 0.00001;
  }

  *&a7 = a1;
  a2[3].i32[0] = 0;
  *(&a3 + 1) = a5;
  v10 = vdup_lane_s32(*&a7, 0);
  a2->f32[0] = v8;
  a2->f32[1] = 1.0 / fmaxf(sqrtf(v9), 0.1);
  result = vdiv_f32(*&a3, v10);
  *(&a4 + 1) = a6;
  v12 = vmls_f32(vdiv_f32(*&a4, v10), result, result);
  a2[1] = result;
  a2[2] = vmaxnm_f32(vsqrt_f32(vbsl_s8(vclez_f32(v12), vdup_n_s32(0x3727C5ACu), v12)), vdup_n_s32(0x3DCCCCCDu));
  return result;
}

void sub_248757E0C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_0_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int64x2_t a9, uint64_t a10, unint64_t a11, unint64_t a12, uint64_t a13)
{
  a11 = (v14 + 15) >> 4;
  a12 = (v15 + 15) >> 4;
  a13 = v13;
  a9 = vdupq_n_s64(0x10uLL);
  a10 = v13;

  return [v16 dispatchThreadgroups:&a11 threadsPerThreadgroup:&a9];
}

uint64_t OUTLINED_FUNCTION_2_3(int a1, int a2, CVPixelBufferRef pixelBuffer)
{

  return CVPixelBufferGetPixelFormatType(pixelBuffer);
}

uint64_t OUTLINED_FUNCTION_3_3()
{

  return [v1 setTexture:v0 atIndex:1];
}

void __destructor_8_s32_s40_s48_s56_s64(uint64_t a1)
{
  v2 = *(a1 + 64);
}

void OUTLINED_FUNCTION_18(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

CVPixelBufferRef OUTLINED_FUNCTION_19(size_t a1, size_t a2)
{

  return CreatePixelBuffer(a1, a2, 843264104);
}

uint64_t OUTLINED_FUNCTION_24()
{

  return [v0 height];
}

uint64_t OUTLINED_FUNCTION_25(void *a1, const char *a2)
{

  return [a1 setTexture:v2 atIndex:2];
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17)
{

  return [v17 setBytes:&a17 length:4 atIndex:0];
}

CVPixelBufferRef OUTLINED_FUNCTION_30()
{

  return CreatePixelBuffer(v1, v0, 1278226536);
}

uint64_t OUTLINED_FUNCTION_31()
{

  return [v0 width];
}

uint64_t OUTLINED_FUNCTION_32@<X0>(uint64_t a1@<X8>)
{
  v4 = *(v2 + a1);

  return [v1 setComputePipelineState:v4];
}

uint64_t comp(uint64_t a1, uint64_t a2)
{
  v2 = *a1 < *a2;
  if (*a1 != *a2)
  {
    goto LABEL_7;
  }

  v3 = *(a1 + 4);
  v4 = *(a2 + 4);
  v2 = v3 < v4;
  if (v3 != v4)
  {
    goto LABEL_7;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 != v6)
  {
    v2 = v6 < v5;
LABEL_7:
    if (v2)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
      return 1;
    }
  }

  v7 = *(a1 + 32);
  v8 = *(a2 + 32);
  v2 = v7 < v8;
  if (v7 != v8)
  {
    goto LABEL_7;
  }

  v9 = *(a1 + 28);
  v10 = *(a2 + 28);
  v2 = v9 < v10;
  if (v9 != v10)
  {
    goto LABEL_7;
  }

  v12 = *(a1 + 16);
  v13 = *(a2 + 16);
  v14 = v12 == v13;
  if (v12 < v13)
  {
    v15 = -1;
  }

  else
  {
    v15 = 1;
  }

  if (v14)
  {
    return 0;
  }

  else
  {
    return v15;
  }
}

void OUTLINED_FUNCTION_3_5(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = v2 + a2;
  v6 = *(v5 + 8 * v3);
  *(v5 + 8 * v3) = a1;
}

uint64_t OUTLINED_FUNCTION_6_1()
{
  v3 = *(v0 + v1);

  return [v3 newBufferWithLength:4 options:0];
}

CVPixelBufferRef OUTLINED_FUNCTION_9_0()
{

  return CreatePixelBuffer(v0, v1, 1278226534);
}

uint64_t OUTLINED_FUNCTION_10_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return [v5 calculateOrientations:v4 withCounterBuffer:a4 waitForComplete:1 ind:1];
}

uint64_t OUTLINED_FUNCTION_11_0()
{

  return [v1 generateBaseImage:v0 waitForComplete:0 ind:1];
}

CVPixelBufferRef OUTLINED_FUNCTION_12_0()
{

  return CreatePixelBuffer(v0, v1, 1278226534);
}

uint64_t OUTLINED_FUNCTION_5_2(void *a1, const char *a2)
{

  return [a1 setBuffer:v2 offset:0 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_6_2(void *a1, const char *a2)
{

  return [a1 setBuffer:v2 offset:0 atIndex:1];
}

uint64_t OUTLINED_FUNCTION_18_0(void *a1, const char *a2, uint64_t a3)
{

  return [a1 setTextures:a3 withRange:{0, 8}];
}

uint64_t OUTLINED_FUNCTION_22_0(void *a1, const char *a2)
{

  return [a1 setTexture:v2 atIndex:1];
}

void encode1DGaussianFilterToCommandBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7)
{
  OUTLINED_FUNCTION_11_1();
  v12 = v11;
  v14 = v13;
  v15 = v7;
  v16 = v8;
  v17 = v16;
  if (v15 && v16)
  {
    v18 = [v12 computeCommandEncoder];
    v19 = v18;
    if (v18)
    {
      [v18 setComputePipelineState:v14];
      OUTLINED_FUNCTION_15_0();
      [v20 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_22_0(v19, v21);
      [v19 setBytes:a6 length:4 * a7 atIndex:0];
      [OUTLINED_FUNCTION_9_1() setBytes:? length:? atIndex:?];
      [v15 width];
      [v15 height];
      OUTLINED_FUNCTION_12_1();
      [v19 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v19 endEncoding];
    }
  }
}

void encode1DGaussianFilterToCommandBufferOptim()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v3;
  v9 = v0;
  v10 = v1;
  v11 = v10;
  if (v8 && v9 && v10)
  {
    v12 = [v5 computeCommandEncoder];
    v13 = v12;
    if (v12)
    {
      [v12 setComputePipelineState:v7];
      OUTLINED_FUNCTION_15_0();
      [v14 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_22_0(v13, v15);
      [v13 setBuffer:v11 offset:0 atIndex:0];
      [OUTLINED_FUNCTION_16() setBytes:? length:? atIndex:?];
      [v8 width];
      [v8 height];
      OUTLINED_FUNCTION_12_1();
      [v13 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v13 endEncoding];
    }
  }
}

__n128 OUTLINED_FUNCTION_0_10@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  *(a1 + 32) = result;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_1_11()
{
  v2 = *(v0 + 8);

  return [v2 newBufferWithLength:0x20000 options:0];
}

void OUTLINED_FUNCTION_0_11(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

unsigned int computeNumberOfOctaves(int a1, int a2)
{
  if (a1 >= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  return llround(log(v2) / 0.693147181 + -1.0);
}

void getGaussianKernel(int a1, float *a2, float a3)
{
  v3 = a2;
  if (a3 <= 0.0)
  {
    a3 = ((a1 - 1) * 0.5 + -1.0) * 0.3 + 0.8;
  }

  if (a1 >= 1)
  {
    v24 = -0.5 / (a3 * a3);
    v4 = a1;
    v5 = (a1 + 1) & 0xFFFFFFFE;
    v22 = vdupq_lane_s64(COERCE__INT64(-(a1 - 1)), 0);
    v23 = vdupq_n_s64(a1 - 1);
    v6 = 0x100000000;
    v7 = xmmword_2487C3910;
    v8 = a2 + 1;
    v9 = 0.0;
    __asm { FMOV            V2.2D, #0.5 }

    v20 = vdupq_n_s64(2uLL);
    v21 = _Q2;
    do
    {
      v27 = vmovn_s64(vcgeq_u64(v23, v7));
      v28 = v7;
      v15.i64[0] = v6.u32[0];
      v15.i64[1] = v6.u32[1];
      v16 = vcvt_f32_f64(vmlaq_f64(vcvtq_f64_u64(v15), v21, v22));
      v17 = vmul_f32(vmul_n_f32(v16, v24), v16);
      v25 = v17.f32[0];
      v26 = expf(v17.f32[1]);
      *v18.i32 = expf(v25);
      *&v18.i32[1] = v26;
      if (v27.i8[0])
      {
        *(v8 - 1) = *v18.i32;
      }

      if (v27.i8[4])
      {
        *v8 = v26;
      }

      v19 = vbsl_s8(v27, v18, 0x8000000080000000);
      v9 = (v9 + *v19.i32) + *&v19.i32[1];
      v7 = vaddq_s64(v28, v20);
      v6 = vadd_s32(v6, 0x200000002);
      v8 += 2;
      v5 -= 2;
    }

    while (v5);
    do
    {
      *v3 = (1.0 / v9) * *v3;
      ++v3;
      --v4;
    }

    while (v4);
  }
}

void generateGradualGaussianKernels(int a1, int a2, float *a3, unsigned int *a4, float a5)
{
  v9 = exp2(1.0 / a2);
  *a3 = a5;
  *a4 = llroundf((a5 * 8.0) + 1.0) | 1;
  if (a1 >= 2)
  {
    v10 = 0;
    v11 = v9;
    v12 = a5;
    v13 = a4 + 1;
    v14 = a3 + 1;
    v15 = a1 - 1;
    do
    {
      v16 = pow(v11, v10) * v12;
      v17 = sqrt((v11 * v16) * (v11 * v16) - v16 * v16);
      v14[v10] = v17;
      v13[v10++] = llroundf((v17 * 8.0) + 1.0) | 1;
    }

    while (v15 != v10);
  }
}

void generateDirectGaussianKernels(int a1, int a2, float *a3, unsigned int *a4, float a5)
{
  v9 = exp2(1.0 / a2);
  *a3 = a5;
  *a4 = llroundf((a5 * 8.0) + 1.0) | 1;
  if (a1 >= 2)
  {
    v10 = v9;
    v11 = a4 + 1;
    v12 = a3 + 1;
    v13 = a1 - 1;
    do
    {
      a5 = a5 * v10;
      *v12++ = a5;
      *v11++ = llroundf((a5 * 8.0) + 1.0) | 1;
      --v13;
    }

    while (v13);
  }
}

void sub_24876D958(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  v10 = v9;
  a9.receiver = v10;
  a9.super_class = RansacEstimation;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

void RegWarp_homographyEstimation(float *a1, float *a2, float *a3, float *a4, uint64_t a5, float *a6, float *a7)
{
  v300 = *MEMORY[0x277D85DE8];
  if (!a7)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      RegWarp_homographyEstimation();
    }

    return;
  }

  if (a5 <= 3)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      RegWarp_homographyEstimation();
    }

    return;
  }

  v10 = a4;
  v11 = a3;
  v12 = a2;
  v13 = a1;
  if (a5 <= 0)
  {
    v30 = 0.0 / a5;
    v21.f32[0] = v30;
    v29 = v30;
  }

  else
  {
    v14 = a5;
    v15 = 0;
    v16 = a3;
    v17 = a4;
    v18 = a5;
    do
    {
      v19 = *v17++;
      v20.i32[0] = v19;
      v20.f32[1] = *v16++;
      v15 = vadd_f32(v15, v20);
      --v18;
    }

    while (v18);
    v20.f32[0] = a5;
    v21 = vdiv_f32(v15, vdup_lane_s32(v20, 0));
    v22 = 0;
    v23 = a3;
    v24 = a4;
    do
    {
      v25 = *v24++;
      v26.i32[0] = v25;
      v26.i32[1] = *v23++;
      v27 = vcvtq_f64_f32(vsub_f32(v26, v21));
      v22 = vcvt_f32_f64(vaddq_f64(vmulq_f64(v27, v27), vcvtq_f64_f32(v22)));
      --v14;
    }

    while (v14);
    v28 = vaddv_f32(v22);
    v29 = v21.f32[1];
    v30 = v28 / v20.f32[0];
  }

  v31 = 1.41421356 / sqrtf(v30);
  v32 = -(v31 * v29);
  v33 = -(v31 * v21.f32[0]);
  if (a5 < 1)
  {
    v53 = 0.0 / a5;
    v44.f32[0] = v53;
    v52 = v53;
  }

  else
  {
    v34 = a5;
    v35 = a3;
    v36 = a4;
    v37 = a5;
    do
    {
      *v35 = (v31 * *v35) - (v31 * v29);
      ++v35;
      *v36 = (v31 * *v36) - (v31 * v21.f32[0]);
      ++v36;
      --v37;
    }

    while (v37);
    v38 = 0;
    v39 = a1;
    v40 = a2;
    v41 = a5;
    do
    {
      v42 = *v40++;
      v43.i32[0] = v42;
      v43.f32[1] = *v39++;
      v38 = vadd_f32(v38, v43);
      --v41;
    }

    while (v41);
    v43.f32[0] = a5;
    v44 = vdiv_f32(v38, vdup_lane_s32(v43, 0));
    v45 = 0;
    v46 = a1;
    v47 = a2;
    do
    {
      v48 = *v47++;
      v49.i32[0] = v48;
      v49.i32[1] = *v46++;
      v50 = vcvtq_f64_f32(vsub_f32(v49, v44));
      v45 = vcvt_f32_f64(vaddq_f64(vmulq_f64(v50, v50), vcvtq_f64_f32(v45)));
      --v34;
    }

    while (v34);
    v51 = vaddv_f32(v45);
    v52 = v44.f32[1];
    v53 = v51 / v43.f32[0];
  }

  v54 = 1.41421356 / sqrtf(v53);
  v55 = -(v54 * v52);
  v56 = -(v54 * v44.f32[0]);
  if (a5 >= 1)
  {
    v57 = a5;
    v58 = a1;
    v59 = a2;
    do
    {
      *v58 = (v54 * *v58) - (v54 * v52);
      ++v58;
      *v59 = (v54 * *v59) - (v54 * v44.f32[0]);
      ++v59;
      --v57;
    }

    while (v57);
  }

  v60 = 2 * a5;
  bzero(a7, 72 * a5);
  v61 = 2 * a5;
  v62 = a5;
  v63 = a7;
  v64 = a5;
  do
  {
    *v63 = *v11;
    v63[2 * a5] = *v10;
    v65 = &v63[v61 + v61];
    *v65 = 1.0;
    v66 = &v65[3 * a5];
    *v66 = *v11;
    v67 = &v66[v61];
    *v67 = *v10;
    v68 = &v67[v61];
    *v68 = 1.0;
    v69 = &v68[a5];
    *v69 = -(*v11 * *v13);
    v70 = *v11++;
    v71 = &v69[v62];
    *v71 = -(v70 * *v12);
    v72 = &v71[v62];
    *v72 = -(*v10 * *v13);
    v73 = *v10++;
    v74 = &v72[v62];
    *v74 = -(v73 * *v12);
    v75 = *v13++;
    v76 = &v74[v62];
    *v76 = -v75;
    v77 = *v12++;
    v76[a5] = -v77;
    ++v63;
    --v64;
  }

  while (v64);
  v78 = 0;
  *a6 = xmmword_2487C3940;
  *(a6 + 1) = xmmword_2487C3940;
  a6[8] = 1.0;
  v79 = a7;
  do
  {
      ;
    }

    ++v78;
    v79 += 8;
  }

  while (v78 != 9);
  v81 = 0;
  if (v60 <= 1)
  {
    v82 = 1;
  }

  else
  {
    v82 = 2 * a5;
  }

  v83 = a7;
  do
  {
    v84 = 0;
    v85 = a7;
    do
    {
      v86 = 0.0;
      v87 = v85;
      v88 = v83;
      v89 = v82;
      do
      {
        v90 = *v88++;
        v91 = v90;
        v92 = *v87++;
        v86 = v86 + (v91 * v92);
        --v89;
      }

      while (v89);
      __src[9 * v81 + v84++] = v86;
      v85 = (v85 + v61 * 4);
    }

    while (v84 != 9);
    ++v81;
    v83 = (v83 + v61 * 4);
  }

  while (v81 != 9);
  v93 = 324;
  v94 = __dst;
  memcpy(__dst, __src, sizeof(__dst));
  v95 = 0;
  v284[0] = 0.0;
  v96 = &__dst[4];
  v97 = &v282;
  v98 = &__dst[40];
  v99 = 0.0;
  v100 = 9;
  v101 = 1;
  v102 = 0.0;
  v103 = __dst;
  while (1)
  {
    v281[v95 + 9] = v99 * v102;
    v104 = v100;
    v105 = v94;
    v106 = 0.0;
    do
    {
      v107 = *v105;
      v105 += 9;
      v106 = v106 + fabsf(v107);
      --v104;
    }

    while (v104);
    if (v106 > 0.0)
    {
      v108 = 0;
      v109 = 0.0;
      do
      {
        v110 = v94[v108] / v106;
        v94[v108] = v110;
        v109 = v109 + (v110 * v110);
        v108 += 9;
      }

      while (v93 != (v108 * 4));
      v111 = *&v103[4 * v95];
      v102 = sqrtf(v109);
      if (v111 >= 0.0)
      {
        v102 = -v102;
      }

      *&v103[4 * v95] = v111 - v102;
      if (v101 <= 8)
      {
        v112 = -(v109 - (v111 * v102));
        v113 = v96;
        for (j = v101; j != 9; ++j)
        {
          v115 = 0;
          v116 = 0.0;
          do
          {
            v116 = v116 + (v94[v115] * *&v113[v115 * 4]);
            v115 += 9;
          }

          while (v93 != (v115 * 4));
          v117 = 0;
          v118 = v116 / v112;
          do
          {
            *&v113[v117] = *&v113[v117] + (v118 * v94[v117 / 4]);
            v117 += 36;
          }

          while (v93 != v117);
          v113 += 4;
        }
      }
    }

    v119 = 0;
    do
    {
      v94[v119] = v106 * v94[v119];
      v119 += 9;
    }

    while (v93 != (v119 * 4));
    v284[v95] = v106 * v102;
    if (v95 == 8)
    {
      break;
    }

    v99 = 0.0;
    v120 = 1;
    do
    {
      v99 = v99 + fabsf(v94[v120++]);
    }

    while (v95 + v120 != 9);
    v102 = 0.0;
    if (v99 > 0.0)
    {
      v121 = 0.0;
      v122 = 1;
      do
      {
        v123 = v94[v122] / v99;
        v94[v122] = v123;
        v121 = v121 + (v123 * v123);
        ++v122;
      }

      while (v95 + v122 != 9);
      v124 = 0;
      v125 = *&v103[4 * v101];
      v102 = sqrtf(v121);
      if (v125 >= 0.0)
      {
        v102 = -v102;
      }

      v126 = -(v121 - (v125 * v102));
      *&v103[4 * v101] = v125 - v102;
      do
      {
        *&v97[v124] = *&v96[4 * v124] / v126;
        ++v124;
      }

      while (v95 + v124 != 8);
      v127 = v98;
      v128 = v101;
      do
      {
        v129 = 0;
        v130 = 0.0;
        do
        {
          v130 = v130 + (*&v96[4 * v129] * *&v127[4 * v129]);
          ++v129;
        }

        while (v95 + v129 != 8);
        v131 = 0;
        do
        {
          *&v127[4 * v131] = *&v127[4 * v131] + (v130 * *&v97[v131]);
          ++v131;
        }

        while (v95 + v131 != 8);
        ++v128;
        v127 += 36;
      }

      while (v128 != 9);
      v132 = 1;
      do
      {
        v94[v132] = v99 * v94[v132];
        ++v132;
      }

      while (v95 + v132 != 9);
    }

    v103 += 36;
    ++v95;
    ++v101;
    v94 += 10;
    --v100;
    v93 -= 36;
    v96 += 40;
    ++v97;
    v98 += 40;
  }

  v133 = &__dst[252];
  v134 = &v289;
  v289 = 1065353216;
  v135 = v283;
  v136 = &v286;
  v137 = &__dst[284];
  v138 = &v288;
  v139 = &v287;
  v140 = 8;
  v141 = 7;
  v142 = 1;
  v143 = 36;
  do
  {
    v144 = v141;
    v145 = *v135;
    if (*v135 != 0.0)
    {
      v146 = *&v133[4 * v140];
      v147 = v138;
      v148 = v137;
      v149 = v142;
      do
      {
        v150 = *v148++;
        *v147 = (v150 / v146) / v145;
        v147 += 9;
        --v149;
      }

      while (v149);
      v151 = v134;
      v152 = v140;
      do
      {
        v153 = 0;
        v154 = 0.0;
        v155 = v151;
        do
        {
          v156 = *v155;
          v155 += 9;
          v154 = v154 + (v137[v153++] * v156);
        }

        while (v142 != v153);
        v157 = 0;
        do
        {
          *&v151[v157] = *&v151[v157] + (v154 * v138[v157]);
          v157 += 9;
        }

        while (v143 != (v157 * 4));
        ++v152;
        ++v151;
      }

      while (v152 != 9);
    }

    v158 = 0;
    v159 = v139;
    do
    {
      *v159++ = 0;
      v138[v158 / 4] = 0.0;
      v158 += 36;
    }

    while (v143 != v158);
    v136[v144] = 1065353216;
    v141 = v144 - 1;
    v133 -= 36;
    v136 -= 9;
    --v140;
    ++v142;
    v137 -= 10;
    v138 -= 10;
    v134 -= 10;
    v143 += 36;
    v139 -= 10;
    v135 = &v281[v144 + 9];
  }

  while (v144);
  v280 = a6;
  v160 = 0;
  v161 = &__dst[288];
  v162 = __src;
  v163 = &__src[26];
  v164 = &__src[9];
  v165 = &__src[8];
  v166 = &__dst[320];
  v167 = 1;
  v168 = 9;
  v169 = 8;
  v170 = xmmword_2487C3950;
  v171 = xmmword_2487C3910;
  do
  {
    v172 = v284[v169];
    if (v168 > 8)
    {
      if (v172 != 0.0)
      {
        goto LABEL_104;
      }
    }

    else
    {
      bzero(&__src[-10 * v160], ((4 * v160 + 0x3FFFFFFFCLL) & 0x3FFFFFFFCLL) + 4);
      v171 = xmmword_2487C3910;
      v170 = xmmword_2487C3950;
      if (v172 != 0.0)
      {
        v173 = v162;
        v174 = v164;
        v175 = v168;
        do
        {
          v176 = 0.0;
          v177 = v160;
          v178 = v165;
          v179 = v174;
          do
          {
            v180 = *v178;
            v178 += 9;
            v181 = v180;
            v182 = *v179;
            v179 += 9;
            v176 = v176 + (v181 * v182);
            --v177;
          }

          while (v177);
          v183 = (v176 / *&v161[4 * v169]) / v172;
          v184 = v167;
          v185 = v166;
          v186 = v173;
          do
          {
            v187 = *v185;
            v185 += 9;
            *v186 = *v186 + (v183 * v187);
            v186 += 9;
            --v184;
          }

          while (v184);
          ++v175;
          ++v174;
          ++v173;
        }

        while (v175 != 9);
LABEL_104:
        v188 = v169 - 9;
        v189 = v166;
        do
        {
          *v189 = *v189 / v172;
          v189 += 9;
        }

        while (!__CFADD__(v188++, 1));
        goto LABEL_116;
      }
    }

    v191 = 0;
    v192 = vdupq_n_s64(v160);
    v193 = v163;
    do
    {
      v194 = vdupq_n_s64(v191);
      v195 = vmovn_s64(vcgeq_u64(v192, vorrq_s8(v194, v171)));
      if (vuzp1_s16(v195, *v192.i8).u8[0])
      {
        *(v193 - 27) = 0.0;
      }

      if (vuzp1_s16(v195, *&v192).i8[2])
      {
        *(v193 - 18) = 0.0;
      }

      if (vuzp1_s16(*&v192, vmovn_s64(vcgeq_u64(v192, vorrq_s8(v194, v170)))).i32[1])
      {
        *(v193 - 9) = 0.0;
        *v193 = 0.0;
      }

      v191 += 4;
      v193 += 36;
    }

    while ((v160 & 0xFFFFFFFFFFFFFFFCLL) + 4 != v191);
LABEL_116:
    *&v161[4 * v169] = *&v161[4 * v169] + 1.0;
    --v169;
    v161 -= 36;
    ++v160;
    --v168;
    v163 -= 10;
    v164 -= 10;
    v165 -= 10;
    v162 -= 10;
    v166 -= 10;
    ++v167;
  }

  while (v160 != 9);
  v196 = 0;
  v197 = 0.0;
  do
  {
    v198 = fabsf(v284[v196]) + fabsf(v281[v196 + 9]);
    if (v197 < v198)
    {
      v197 = v198;
    }

    ++v196;
  }

  while (v196 != 9);
  v199 = 0;
  v200 = v197 * 2.2204e-16;
  v201 = v285;
  v202 = 8;
  v203 = 9;
  do
  {
    v204 = 0;
    for (k = v202--; ; v284[k] = v223)
    {
      v206 = v199;
      while (1)
      {
        if (fabsf(*&v283[4 * v206]) <= v200)
        {
          v208 = v206 + 8;
          goto LABEL_136;
        }

        if (fabsf(v284[v206 + 7]) <= v200)
        {
          break;
        }

        v207 = v206 + 8;
        --v206;
        if (v207 <= 0)
        {
          v208 = -1;
          goto LABEL_130;
        }
      }

      v208 = v206 + 8;
LABEL_130:
      if (k >= v208)
      {
        v209 = v208;
        v210 = &__dst[4 * v208];
        v211 = &__dst[4 * v208 - 4];
        v212 = 0.0;
        v213 = 1.0;
        do
        {
          v214 = v281[v209 + 9];
          v215 = v213 * v214;
          v281[v209 + 9] = v212 * v214;
          if (fabsf(v215) <= v200)
          {
            break;
          }

          v216 = 0;
          v217 = v284[v209];
          v218 = sqrtf((v217 * v217) + (v215 * v215));
          v284[v209] = v218;
          v212 = v217 / v218;
          v213 = -v215 / v218;
          do
          {
            v219 = *&v211[v216];
            v220 = *&v210[v216];
            *&v211[v216] = (v213 * v220) + (v219 * v212);
            *&v210[v216] = (v212 * v220) - (v219 * v213);
            v216 += 36;
          }

          while (v216 != 324);
          ++v209;
          v210 += 4;
        }

        while (v209 != v203);
      }

LABEL_136:
      v221 = v284[k];
      if (k == v208)
      {
        break;
      }

      if (v204 == 30)
      {
        goto LABEL_165;
      }

      v222 = v208;
      v223 = v284[v208];
      v224 = v284[v202];
      v225 = v281[k + 9];
      v226 = (((v281[v202 + 9] - v225) * (v281[v202 + 9] + v225)) + ((v224 - v221) * (v221 + v224))) / ((v225 + v225) * v224);
      v227 = sqrt((v226 * v226) + 1.0);
      if (v226 < 0.0)
      {
        v227 = -v227;
      }

      v228 = ((v225 * ((v224 / (v227 + v226)) - v225)) + ((v223 - v221) * (v221 + v223))) / v223;
      if (k > v208)
      {
        v229 = &v285[4 * v208 + 4];
        v230 = 1.0;
        v231 = v222;
        v232 = 1.0;
        v233 = &__dst[4 * v222 + 4];
        do
        {
          v234 = v231++;
          v235 = v281[v231 + 9];
          v236 = v284[v231];
          v237 = v230 * v235;
          v238 = sqrtf((v237 * v237) + (v228 * v228));
          v281[v234 + 9] = v238;
          v239 = v232 * v235;
          v240 = v228 / v238;
          v241 = v237 / v238;
          v242 = 9;
          v243 = v229;
          do
          {
            v244 = *(v243 - 1);
            v245 = (v241 * *v243) + (v244 * v240);
            v246 = (v240 * *v243) - (v244 * v241);
            *(v243 - 1) = v245;
            *v243 = v246;
            v243 += 9;
            --v242;
          }

          while (v242);
          v247 = (v239 * v241) + (v223 * v240);
          v248 = v236 * v241;
          v249 = sqrtf((v248 * v248) + (v247 * v247));
          v284[v234] = v249;
          v232 = v240;
          v230 = v241;
          if (v249 != 0.0)
          {
            v232 = v247 / v249;
            v230 = v248 / v249;
          }

          v250 = (v239 * v240) - (v223 * v241);
          v251 = v236 * v240;
          v252 = -v230;
          v253 = 9;
          v254 = v233;
          do
          {
            v255 = *(v254 - 1);
            v256 = (v230 * *v254) + (v232 * v255);
            v257 = (v232 * *v254) + (v252 * v255);
            *(v254 - 1) = v256;
            *v254 = v257;
            v254 += 9;
            --v253;
          }

          while (v253);
          v258 = v251 * v232;
          v228 = (v251 * v230) + (v232 * v250);
          v223 = v258 + (v252 * v250);
          ++v229;
          ++v233;
        }

        while (v231 < k);
      }

      v281[v222 + 9] = 0.0;
      ++v204;
      v281[k + 9] = v228;
    }

    if (v221 < 0.0)
    {
      v284[k] = -v221;
      v259 = 32;
      do
      {
        *&v201[v259] = -*&v201[v259];
        v259 += 36;
      }

      while (v259 != 356);
    }

    --v203;
    --v199;
    v201 -= 4;
  }

  while (k);
  v260 = 0;
  v261 = 1;
  v262 = v285;
  v263 = __dst;
  do
  {
    v264 = v261;
    v265 = v260;
    do
    {
      if (v284[v264] > v284[v265])
      {
        v265 = v264;
      }

      ++v264;
    }

    while (v264 != 9);
    if (v260 != v265)
    {
      v266 = 0;
      v267 = v284[v260];
      v268 = v265;
      v284[v260] = v284[v265];
      v284[v265] = v267;
      v269 = &__dst[4 * v265];
      do
      {
        v270 = *&v269[v266];
        *&v269[v266] = *&v263[v266];
        *&v263[v266] = v270;
        v266 += 36;
      }

      while (v266 != 324);
      v271 = 0;
      v272 = &v285[4 * v268];
      do
      {
        v273 = *&v272[v271];
        *&v272[v271] = *&v262[v271];
        *&v262[v271] = v273;
        v271 += 36;
      }

      while (v271 != 324);
    }

    ++v260;
    ++v261;
    v263 += 4;
    v262 += 4;
  }

  while (v260 != 8);
LABEL_165:
  v274 = 0;
  v275 = 32;
  do
  {
    v281[v274] = *&__dst[v275];
    v275 += 36;
    ++v274;
  }

  while (v274 != 9);
  v297[0] = v31;
  v297[1] = 0.0;
  v297[2] = v32;
  v297[3] = 0.0;
  v297[4] = v31;
  v297[5] = v33;
  v298 = 0;
  v299 = 1065353216;
  v293[0] = (v56 * -0.0) + v54;
  v293[1] = -((v55 * -0.0) + 0.0);
  v276 = (v56 * -0.0) + 0.0;
  v293[2] = (v56 * 0.0) - (v55 * v54);
  v293[3] = -v276;
  v293[4] = (v55 * -0.0) + v54;
  v293[5] = -((v55 * -0.0) + (v54 * v56));
  v294 = (v54 * -0.0) + 0.0;
  v295 = v54 * -0.0;
  v296 = v54 * v54;
  v277 = ((v276 * -0.0) + (v54 * v293[0])) + (v55 * v294);
  if (fabsf(v277) <= 1.0e-10)
  {
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      RegWarp_homographyEstimation();
    }
  }

  else
  {
    for (m = 0; m != 9; ++m)
    {
      v293[m] = v293[m] / v277;
    }
  }

  Multiply3x3_3x3(v292, v281, v297);
  Multiply3x3_3x3(v280, v293, v292);
  for (n = 0; n != 9; ++n)
  {
    v280[n] = v280[n] / v280[8];
  }
}

float Multiply3x3_3x3(float *a1, const float *a2, const float *a3)
{
  *a1 = ((a2[1] * a3[3]) + (*a2 * *a3)) + (a2[2] * a3[6]);
  a1[1] = ((a2[1] * a3[4]) + (*a2 * a3[1])) + (a2[2] * a3[7]);
  a1[2] = ((a2[1] * a3[5]) + (*a2 * a3[2])) + (a2[2] * a3[8]);
  a1[3] = ((a2[4] * a3[3]) + (a2[3] * *a3)) + (a2[5] * a3[6]);
  a1[4] = ((a2[4] * a3[4]) + (a2[3] * a3[1])) + (a2[5] * a3[7]);
  a1[5] = ((a2[4] * a3[5]) + (a2[3] * a3[2])) + (a2[5] * a3[8]);
  a1[6] = ((a2[7] * a3[3]) + (a2[6] * *a3)) + (a2[8] * a3[6]);
  a1[7] = ((a2[7] * a3[4]) + (a2[6] * a3[1])) + (a2[8] * a3[7]);
  result = ((a2[7] * a3[5]) + (a2[6] * a3[2])) + (a2[8] * a3[8]);
  a1[8] = result;
  return result;
}

void RegWarp_homographyEstimation()
{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(&dword_24874B000, v0, v1, "Non-invertiable 3x3 Matrix!!!\n", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(&dword_24874B000, v0, v1, "H1_t[i * 8 + j] should not be nan", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(&dword_24874B000, v0, v1, "um_pnts should be greater or equal to (COUNT_THRESH)", v2, v3, v4, v5, v6);
}

{
  OUTLINED_FUNCTION_1_12();
  OUTLINED_FUNCTION_0_11(&dword_24874B000, v0, v1, "fatal: normal equation scratch space is null", v2, v3, v4, v5, v6);
}

uint64_t comp_match(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *a1;
  v4 = *(a1 + 4);
  v5 = v2 + *a1 * 0.05 + v4 * 0.05;
  v6 = *(a2 + 8);
  v7 = *a2;
  v8 = *(a2 + 4);
  v9 = v6 + *a2 * 0.05 + v8 * 0.05;
  v10 = v4 == v8;
  if (v4 > v8)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  if (v10)
  {
    v11 = 0;
  }

  v12 = v3 == v7;
  if (v3 > v7)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  if (v12)
  {
    v13 = v11;
  }

  if (v6 <= v2)
  {
    v14 = 1;
  }

  else
  {
    v14 = -1;
  }

  if (v2 != v6)
  {
    v13 = v14;
  }

  if (v9 <= v5)
  {
    v15 = 1;
  }

  else
  {
    v15 = -1;
  }

  if (v5 == v9)
  {
    return v13;
  }

  else
  {
    return v15;
  }
}

void sortFlowMatchingPair(void *a1, int a2, _DWORD *a3)
{
  v5 = [a1 contents];
  qsort(v5, a2, 0x14uLL, comp_flow_match);
  if (a2 < 2)
  {
    LODWORD(v6) = 0;
  }

  else
  {
    LODWORD(v6) = 0;
    v7 = a2;
    v8 = v5 + 20;
    v9 = v7 - 1;
    do
    {
      if (comp_flow_match(&v5[20 * v6], v8))
      {
        v6 = v6 + 1;
        v10 = *v8;
        v11 = &v5[20 * v6];
        *(v11 + 4) = *(v8 + 4);
        *v11 = v10;
      }

      v8 += 20;
      --v9;
    }

    while (v9);
  }

  *a3 = v6;
}

uint64_t comp_flow_match(float *a1, float *a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v4 = vabds_f32(v2, *a1) + vabds_f32(v3, a1[2]);
  v5 = a2[1];
  v6 = a2[3];
  v7 = vabds_f32(v5, *a2) + vabds_f32(v6, a2[2]);
  if (v3 <= v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  if (v3 == v6)
  {
    v8 = 0;
  }

  if (v2 <= v5)
  {
    v9 = 1;
  }

  else
  {
    v9 = -1;
  }

  if (v2 != v5)
  {
    v8 = v9;
  }

  if (v4 <= v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  if (v4 == v7)
  {
    return v8;
  }

  else
  {
    return v10;
  }
}

uint64_t sortFlowMatchingPair_org(void *a1, int a2)
{
  v3 = [a1 contents];
  qsort(v3, a2, 0x14uLL, comp_flow_match);
  if (a2 < 2)
  {
    return 1;
  }

  LODWORD(v4) = 0;
  v5 = a2;
  v6 = v3 + 20;
  v7 = v5 - 1;
  do
  {
    if (comp_flow_match(&v3[20 * v4], v6))
    {
      v4 = v4 + 1;
      v8 = *v6;
      v9 = &v3[20 * v4];
      *(v9 + 4) = *(v6 + 4);
      *v9 = v8;
    }

    v6 += 20;
    --v7;
  }

  while (v7);
  return (v4 + 1);
}

CVPixelBufferRef OUTLINED_FUNCTION_1_13()
{

  return CreatePixelBuffer(v1, v0, 843264104);
}

CVPixelBufferRef OUTLINED_FUNCTION_4_3()
{

  return CreatePixelBuffer(v1, v0, 1380411457);
}

void OUTLINED_FUNCTION_11_2(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t OUTLINED_FUNCTION_1_14()
{

  return [v1 setTexture:v0 atIndex:1];
}

void OUTLINED_FUNCTION_0_14(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id uniformTimeScales(unint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = 1.0 / (a1 + 1.0);
    v3 = [MEMORY[0x277CBEB18] arrayWithCapacity:a1];
    v5 = 1;
    do
    {
      *&v4 = v2 * v5;
      v6 = [MEMORY[0x277CCABB0] numberWithFloat:v4];
      [v3 addObject:v6];

      ++v5;
      --v1;
    }

    while (v1);
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void OUTLINED_FUNCTION_1_15(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x2Au);
}

void getSynthesisTensorSize(__int16 a1, int a2, unint64_t *a3)
{
  v7 = 0;
  v8 = 0;
  getAlignedInputFrameSizeForUsage(a1, &v8, &v7);
  v6 = v7;
  for (i = v8; a2; --a2)
  {
    i = (i + 1) >> 1;
    v6 = (v6 + 1) >> 1;
  }

  *a3 = i;
  a3[1] = v6;
  a3[2] = 3;
}

void sub_2487767C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void __copy_assignment_8_8_AB0s8n5_s0_AE(id *location, void **a2)
{
  v4 = 40;
  do
  {
    v5 = *a2++;
    objc_storeStrong(location++, v5);
    v4 -= 8;
  }

  while (v4);
}

uint64_t OUTLINED_FUNCTION_1_17()
{

  return [v0 setBuffer:v1 offset:0 atIndex:0];
}

uint64_t OUTLINED_FUNCTION_4_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12)
{

  return [v12 dispatchThreadgroups:&a12 threadsPerThreadgroup:&a9];
}

uint64_t OUTLINED_FUNCTION_6_3()
{
  v3 = *(v0 + v1);

  return [v3 newBufferWithLength:4 options:0];
}

void OUTLINED_FUNCTION_7_3(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

id OUTLINED_FUNCTION_9_2(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{

  return a4;
}

void __destructor_8_s88_s96_s104_s112_s120_s128_s136_s144_s152_s160_s168(uint64_t a1)
{
  v2 = *(a1 + 168);
}

CVPixelBufferRef OUTLINED_FUNCTION_7_4(size_t a1, size_t a2)
{

  return CreatePixelBuffer(a1, a2, 1380411457);
}

const char *getConfigurationName(uint64_t a1)
{
  if (!(!v2 & v1))
  {
    result = "landscape1440x1080";
    switch(a1)
    {
      case 0:
        return result;
      case 1:
        return "landscape1920x1440";
      case 2:
        return "landscape960x720";
      case 3:
        return "landscape720x540";
      case 4:
        return "landscape1920x1080";
      case 5:
        return "landscape960x540";
      case 6:
        return "landscape1280x720";
      case 7:
        return "landscape1280x960";
      case 8:
        return "landscape640x480";
      case 9:
        return "landscape640x360";
      case 10:
        return "landscape480x270";
      case 11:
        return "landscape320x180";
      case 12:
        return "landscape320x240";
      case 13:
      case 18:
        return "landscape3840x2160";
      case 14:
      case 16:
      case 17:
      case 19:
      case 20:
      case 21:
      case 22:
      case 24:
      case 25:
      case 26:
      case 27:
      case 28:
      case 29:
        goto LABEL_54;
      case 15:
        return "landscape4096x2160";
      case 23:
        return "landscape574x3024";
      case 30:
        return "landscape1920x1920";
      default:
        JUMPOUT(0);
    }
  }

  switch(a1)
  {
    case 'd':
      result = "landscape1440x464";
      break;
    case 'e':
      result = "landscape1920x584";
      break;
    case 'f':
      result = "landscape960x424";
      break;
    case 'g':
      result = "landscape360x270";
      break;
    case 'h':
      result = "landscape480x360";
      break;
    case 'i':
      result = "landscape2048x1024";
      break;
    case 'j':
      result = "landscape2048x1080";
      break;
    case 'k':
      result = "landscape2048x1152";
      break;
    case 'l':
      result = "landscape2048x1556";
      break;
    case 'm':
      result = "landscape1024x512";
      break;
    case 'n':
      result = "landscape2560x1440";
      break;
    case 'o':
      result = "landscape2560x2136";
      break;
    case 'p':
      result = "landscape2872x1512";
      break;
    case 'q':
      result = "landscape2880x1440";
      break;
    case 'r':
      result = "landscape3072x1728";
      break;
    case 's':
      result = "landscape1536x864";
      break;
    case 't':
      result = "landscape3280x1552";
      break;
    case 'u':
      result = "landscape1640x776";
      break;
    default:
      switch(a1)
      {
        case 200:
          result = "landscape1024x540";
          break;
        case 201:
          result = "landscape1024x576";
          break;
        case 202:
          result = "landscape1024x778";
          break;
        case 203:
          result = "landscape512x256";
          break;
        case 204:
          result = "landscape512x270";
          break;
        case 205:
          result = "landscape512x288";
          break;
        case 206:
          result = "landscape512x389";
          break;
        case 209:
          result = "landscape640x534";
          break;
        case 210:
          result = "landscape718x378";
          break;
        case 211:
          result = "landscape720x360";
          break;
        case 212:
          result = "landscape384x216";
          break;
        case 213:
          result = "landscape410x194";
          break;
        case 214:
          result = "landscape1280x1068";
          break;
        case 215:
          result = "landscape1104x1104";
          break;
        default:
LABEL_54:
          result = "";
          break;
      }

      break;
  }

  return result;
}

void OUTLINED_FUNCTION_3_8(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

uint64_t getReverseRotation(uint64_t a1)
{
  if ((a1 - 1) > 2)
  {
    return 0;
  }

  else
  {
    return qword_2487C39F8[a1 - 1];
  }
}

void VELoggerInit(uint64_t a1, int a2)
{
  keyExistsAndHasValidFormat = 1;
  AppIntegerValue = CFPreferencesGetAppIntegerValue(@"ve_logLevel", @"com.apple.dvp", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    a1 = AppIntegerValue;
    NSLog(&cfstr_LogLevelIsForc.isa, AppIntegerValue);
  }

  global_logLevel = a1;
  if (a2)
  {
    v5 = MEMORY[0x277D86220];
    v6 = MEMORY[0x277D86220];
  }

  else
  {
    v5 = os_log_create("com.apple.dvp", "videoeffect");
  }

  v7 = global_logger;
  global_logger = v5;
}

id createTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2, unsigned int a3)
{
  v5 = a2;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferIsPlanar(a1))
  {
    Width = CVPixelBufferGetWidthOfPlane(a1, a3);
    Height = CVPixelBufferGetHeightOfPlane(a1, a3);
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v9 = 0;
  if (PixelFormatType > 1278226533)
  {
    if (PixelFormatType <= 1380401728)
    {
      switch(PixelFormatType)
      {
        case 1278226534:
          v10 = 55;
          break;
        case 1278226536:
          v10 = 25;
          break;
        case 1278226742:
          v10 = 20;
          break;
        default:
          goto LABEL_26;
      }

      goto LABEL_25;
    }

    if (PixelFormatType != 2019963440 && PixelFormatType != 2016686640)
    {
      if (PixelFormatType != 1380401729)
      {
        goto LABEL_26;
      }

      v10 = 70;
      goto LABEL_25;
    }

    v11 = a3 == 0;
    v12 = 60;
    v13 = 20;
    goto LABEL_22;
  }

  if (PixelFormatType <= 1111970368)
  {
    if (PixelFormatType == 875704422 || PixelFormatType == 875704438)
    {
      v11 = a3 == 0;
      v12 = 30;
      v13 = 10;
LABEL_22:
      if (v11)
      {
        v10 = v13;
      }

      else
      {
        v10 = v12;
      }

      goto LABEL_25;
    }
  }

  else
  {
    if (PixelFormatType == 1111970369)
    {
      v10 = 80;
      goto LABEL_25;
    }

    if (PixelFormatType == 1278226481 || PixelFormatType == 1278226488)
    {
      v10 = 10;
LABEL_25:
      v14 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v10 width:Width height:Height mipmapped:0];
      [v14 setUsage:3];
      v9 = [v5 newTextureWithDescriptor:v14 iosurface:CVPixelBufferGetIOSurface(a1) plane:a3];
    }
  }

LABEL_26:

  return v9;
}

void copyTextureToBuffer(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  v4 = [v3 width];
  v5 = [v3 height];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  if ([v3 arrayLength])
  {
    v8 = 0;
    v9 = 1;
    do
    {
      memset(v11, 0, 24);
      v11[3] = v4;
      v11[4] = v5;
      v11[5] = 1;
      [v3 getBytes:BaseAddress bytesPerRow:BytesPerRow bytesPerImage:BytesPerRow * v5 fromRegion:v11 mipmapLevel:0 slice:v8];
      BaseAddress += BytesPerRow * v5;
      v8 = v9;
    }

    while ([v3 arrayLength] > v9++);
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
}

void copyTextureToBuffer1DCustomSize(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  v4 = [v3 width];
  v5 = [v3 height];
  if (CVPixelBufferGetPixelFormatType(a2) == 1278226488)
  {
    v6 = 1;
  }

  else
  {
    if (CVPixelBufferGetPixelFormatType(a2) != 1278226534)
    {
      copyTextureToBuffer(v3, a2);
      goto LABEL_10;
    }

    v6 = 4;
  }

  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a2);
  if ([v3 arrayLength])
  {
    v8 = 0;
    v9 = v6 * v4;
    v10 = 1;
    do
    {
      memset(v12, 0, 24);
      v12[3] = v4;
      v12[4] = v5;
      v12[5] = 1;
      [v3 getBytes:BaseAddress bytesPerRow:v9 bytesPerImage:v9 * v5 fromRegion:v12 mipmapLevel:0 slice:v8];
      BaseAddress += v9 * v5;
      v8 = v10;
    }

    while ([v3 arrayLength] > v10++);
  }

  CVPixelBufferUnlockBaseAddress(a2, 0);
LABEL_10:
}

uint64_t getMetalFormat(__CVBuffer *a1, int a2)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v4 = PixelFormatType;
  if (PixelFormatType > 875704421)
  {
    if (PixelFormatType <= 2016686641)
    {
      if (PixelFormatType <= 1882468911)
      {
        if (PixelFormatType > 1278226487)
        {
          if (PixelFormatType == 1278226488)
          {
            return 10;
          }

          if (PixelFormatType == 1278226536)
          {
            return 25;
          }

          goto LABEL_70;
        }

        if (PixelFormatType == 875704422)
        {
          goto LABEL_49;
        }

        v9 = 875704438;
        goto LABEL_48;
      }

      result = 546;
      if (v4 <= 1885745711)
      {
        if (v4 == 1882468912)
        {
          return result;
        }

        if (v4 != 1882468914)
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v4 == 1885745712)
        {
          return result;
        }

        if (v4 != 1885745714)
        {
          v7 = 2016686640;
          goto LABEL_37;
        }
      }

      return 547;
    }

    if (PixelFormatType > 2084075055)
    {
      if (PixelFormatType > 2088265265)
      {
        if (PixelFormatType == 2088265266)
        {
          goto LABEL_54;
        }

        if (PixelFormatType != 2088269360)
        {
          v8 = 2088269362;
          goto LABEL_53;
        }

        goto LABEL_63;
      }

      if (PixelFormatType == 2084075056)
      {
        goto LABEL_49;
      }

      v10 = 2088265264;
      goto LABEL_62;
    }

    if (PixelFormatType > 2019963441)
    {
      if (PixelFormatType != 2019963442)
      {
        v9 = 2084070960;
        goto LABEL_48;
      }
    }

    else if (PixelFormatType != 2016686642)
    {
      v7 = 2019963440;
LABEL_37:
      if (v4 == v7)
      {
        v11 = a2 == 0;
        v12 = 543;
        v13 = 525;
        goto LABEL_64;
      }

      goto LABEL_70;
    }

    v11 = a2 == 0;
    v12 = 544;
    v13 = 526;
LABEL_64:
    if (v11)
    {
      return v12;
    }

    else
    {
      return v13;
    }
  }

  if (PixelFormatType <= 762865201)
  {
    if (PixelFormatType > 645428783)
    {
      if (PixelFormatType > 758670895)
      {
        if (PixelFormatType != 758670896 && PixelFormatType != 758674992)
        {
          v5 = 26160;
LABEL_33:
          v10 = v5 | 0x2D780000;
          goto LABEL_62;
        }

LABEL_49:
        v11 = a2 == 0;
        v12 = 540;
        v13 = 520;
        goto LABEL_64;
      }

      if (PixelFormatType != 645428784)
      {
        v14 = 30258;
        goto LABEL_52;
      }

      goto LABEL_63;
    }

    if (PixelFormatType > 645424687)
    {
      if (PixelFormatType != 645424688)
      {
        v14 = 26162;
LABEL_52:
        v8 = v14 | 0x26780000;
LABEL_53:
        if (PixelFormatType != v8)
        {
          goto LABEL_70;
        }

        goto LABEL_54;
      }

LABEL_63:
      v11 = a2 == 0;
      v12 = 546;
      v13 = 528;
      goto LABEL_64;
    }

    if (PixelFormatType == 641230384)
    {
      goto LABEL_49;
    }

    v9 = 641234480;
LABEL_48:
    if (PixelFormatType != v9)
    {
      goto LABEL_70;
    }

    goto LABEL_49;
  }

  if (PixelFormatType <= 792229423)
  {
    if (PixelFormatType <= 762869297)
    {
      if (PixelFormatType != 762865202)
      {
        v5 = 30256;
        goto LABEL_33;
      }

LABEL_54:
      v11 = a2 == 0;
      v12 = 547;
      v13 = 529;
      goto LABEL_64;
    }

    if (PixelFormatType == 762869298)
    {
      goto LABEL_54;
    }

    v9 = 792225328;
    goto LABEL_48;
  }

  if (PixelFormatType > 796419633)
  {
    if (PixelFormatType == 796419634)
    {
      goto LABEL_54;
    }

    if (PixelFormatType != 796423728)
    {
      v8 = 796423730;
      goto LABEL_53;
    }

    goto LABEL_63;
  }

  if (PixelFormatType == 792229424)
  {
    goto LABEL_49;
  }

  v10 = 796419632;
LABEL_62:
  if (PixelFormatType == v10)
  {
    goto LABEL_63;
  }

LABEL_70:
  if ((global_logLevel & 0x10) != 0)
  {
    v15 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      getMetalFormat_cold_1(v4, v15);
    }
  }

  return 0;
}

double FRCGetFlowDimensionFromUsage(unint64_t a1, unint64_t a2)
{
  v4 = 0;
  v5 = 0;
  UsageFromSize = getUsageFromSize(a1, a2);
  getInputFrameSizeForUsage(UsageFromSize, &v5, &v4);
  result = (v5 >> 1);
  if ((UsageFromSize & 0x1000) != 0)
  {
    return (v4 >> 1);
  }

  return result;
}

double getFlowResolution(unint64_t a1, unint64_t a2, int a3)
{
  v11 = 0;
  v12 = 0;
  UsageFromSize = getUsageFromSize(a1, a2);
  getInputFrameSizeForUsage(UsageFromSize, &v12, &v11);
  if (v11 <= v12)
  {
    v5 = v12;
  }

  else
  {
    v5 = v11;
  }

  v6 = 2.0;
  v7 = 4.0;
  v8 = 8.0;
  if (v5 < 5761)
  {
    v8 = 4.0;
  }

  if (v11 * v12 > 0x7E9000)
  {
    v7 = v8;
  }

  if ((v11 * v12) >> 10 >= 0x7E9)
  {
    v6 = v7;
  }

  if (a3)
  {
    v6 = v6 + v6;
  }

  v9 = (v12 / v6);
  result = (v11 / v6);
  if ((UsageFromSize & 0x1000) == 0)
  {
    return v9;
  }

  return result;
}

BOOL checkTextureBoundBuffer(void *a1, __CVBuffer *a2)
{
  v3 = a1;
  IOSurface = CVPixelBufferGetIOSurface(a2);
  v5 = [v3 iosurface];

  return IOSurface == v5;
}

float getFlowDownscaleRatio(unint64_t a1, unint64_t a2, int a3)
{
  if (a2 <= a1)
  {
    v3 = a1;
  }

  else
  {
    v3 = a2;
  }

  result = 2.0;
  if ((a2 * a1) >> 10 >= 0x7E9)
  {
    result = 4.0;
    if (a2 * a1 > 0x7E9000)
    {
      result = 8.0;
      if (v3 < 5761)
      {
        result = 4.0;
      }
    }
  }

  if (a3)
  {
    return result + result;
  }

  return result;
}

uint64_t getTensorSize(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  shape = e5rt_tensor_desc_get_shape();
  if (shape)
  {
    v10 = shape;
    last_error_message = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_tensor_desc_get_shape(tensor_desc, &rank, &shape)", v10, last_error_message);
  }

  else
  {
    *a2 = MEMORY[0x18];
    *a3 = MEMORY[0x10];
    *a4 = MEMORY[8];
    strides = e5rt_tensor_desc_get_strides();
    if (!strides)
    {
      *a5 = MEMORY[0x10];
      return 1;
    }

    v13 = strides;
    v14 = e5rt_get_last_error_message();
    printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_tensor_desc_get_strides(tensor_desc, &rank, &strides)", v13, v14);
  }

  return 0;
}

uint64_t writeLinearFP16BufferFromFile(FILE *__stream, char *__ptr, int a3, uint64_t a4, uint64_t a5, size_t __nitems)
{
  v6 = a5 * a4;
  if (!(a5 * a4))
  {
    return 0;
  }

  v10 = 1;
  do
  {
    v11 = fwrite(__ptr, 1uLL, __nitems, __stream);
    __ptr += __nitems;
    v12 = v10++;
  }

  while (v11 == __nitems && v6 > v12);
  if (v11 == __nitems)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t readLinearFP16BufferFromFile(FILE *__stream, char *__ptr, int a3, uint64_t a4, uint64_t a5, size_t __nitems)
{
  v6 = a5 * a4;
  if (!(a5 * a4))
  {
    return 0;
  }

  v10 = 1;
  do
  {
    v11 = fread(__ptr, 1uLL, __nitems, __stream);
    __ptr += __nitems;
    v12 = v10++;
  }

  while (v11 == __nitems && v6 > v12);
  if (v11 == __nitems)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeBufferObjectFromFile(FILE *a1, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    writeBufferObjectFromFile_cold_1();
  }

  v18 = 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  TensorSize = getTensorSize(a3, &v18, &v17, &v16, &v15);
  if (TensorSize)
  {
    v6 = v16;
    v5 = v17;
    v7 = v15;
    printf("Writing output: %ld x %ld x %ld, stride = %ld\n", v18, v17, v16, v15);
    e5rt_buffer_object_get_data_ptr();
    v8 = v6 * v5;
    if (v8)
    {
      v9 = 1;
      v10 = 0;
      do
      {
        v11 = fwrite(v10, 1uLL, v7, a1);
        v10 += v7;
        v12 = v9++;
      }

      while (v11 == v7 && v8 > v12);
    }
  }

  return TensorSize;
}

size_t OUTLINED_FUNCTION_0_18(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char __ptr)
{

  return fread(&__ptr, 4uLL, 1uLL, v17);
}

size_t OUTLINED_FUNCTION_1_19(void *a1)
{

  return fread(a1, 4uLL, 1uLL, v1);
}

__int16 OUTLINED_FUNCTION_4_5@<H0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17)
{
  _S0 = a17;
  __asm { FCVT            H0, S0 }

  return result;
}

uint64_t adjustColorAndSpatialKey(uint64_t result, void *__src, int a3)
{
  if (result)
  {
    if (a3)
    {
      IOSurfaceGetBulkAttachments();
      memcpy(__dst, __src, sizeof(__dst));
      __dst[63] = 1;
      *&__dst[61] = 771;
    }

    else
    {
      memcpy(__dst, __src, sizeof(__dst));
    }

    return IOSurfaceSetBulkAttachments2();
  }

  return result;
}

float getMetalFormat_cold_1(unsigned int a1, NSObject *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v3[0] = 67109888;
  v3[1] = HIBYTE(a1);
  v4 = 1024;
  v5 = BYTE2(a1);
  v6 = 1024;
  v7 = BYTE1(a1);
  v8 = 1024;
  v9 = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, " format: %c%c%c%c can't be supported", v3, 0x1Au);
  return result;
}

uint64_t OUTLINED_FUNCTION_3_10()
{

  return [v0 height];
}

void OUTLINED_FUNCTION_4_6(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

uint64_t OUTLINED_FUNCTION_9_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, __int16 a16, char a17)
{

  return [v17 setBytes:&a17 length:2 atIndex:1];
}

uint64_t OUTLINED_FUNCTION_10_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, char a17)
{

  return [v17 setBytes:&a17 length:4 atIndex:0];
}

CVPixelBufferRef CreatePixelBufferExtended(size_t a1, size_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v10 = [MEMORY[0x277CBEB38] dictionary];
  [v10 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
  if (a4 >= 1)
  {
    v11 = [MEMORY[0x277CCABB0] numberWithInt:a4];
    [v10 setObject:v11 forKeyedSubscript:*MEMORY[0x277CC4D60]];
  }

  if (a5 >= 1)
  {
    v12 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:((a5 + a2 - 1) & -a5) - a2];
    [v10 setObject:v12 forKeyedSubscript:*MEMORY[0x277CC4DA0]];
  }

  v13 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  [v10 setObject:v13 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

  v14 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  [v10 setObject:v14 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

  v15 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [v10 setObject:v15 forKeyedSubscript:*MEMORY[0x277CC4E30]];

  pixelBufferOut = 0;
  if (CVPixelBufferCreate(0, a1, a2, a3, v10, &pixelBufferOut))
  {
    v16 = 0;
  }

  else
  {
    v16 = pixelBufferOut;
  }

  return v16;
}

CVPixelBufferRef createPixelBuffer(size_t a1, size_t a2, OSType a3, int a4)
{
  valuePtr = a4;
  v14 = 0;
  v7 = *MEMORY[0x277CBECE8];
  v8 = MEMORY[0x277CBF138];
  v9 = MEMORY[0x277CBF150];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  v11 = CFDictionaryCreateMutable(v7, 0, v8, v9);
  CFDictionaryAddValue(Mutable, *MEMORY[0x277CC4DE8], v11);
  CFRelease(v11);
  v12 = CFNumberCreate(v7, kCFNumberIntType, &valuePtr);
  CFDictionarySetValue(Mutable, *MEMORY[0x277CC4D60], v12);
  CFRelease(v12);
  CVPixelBufferCreate(v7, a1, a2, a3, Mutable, &v14);
  CFRelease(Mutable);
  return v14;
}

uint64_t loadTexture(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (a5)
  {
    v9 = 1;
    do
    {
      memset(v12, 0, 24);
      v12[3] = a3;
      v12[4] = a4;
      v12[5] = 1;
      result = [a2 replaceRegion:v12 mipmapLevel:0 slice:? withBytes:? bytesPerRow:? bytesPerImage:?];
      v11 = v9++;
    }

    while (v11 < a5);
  }

  return result;
}

uint64_t readData(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (2 * a3 * a4 == fread(__ptr, 1uLL, 2 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeData32(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (4 * a3 * a4 == fwrite(__ptr, 1uLL, 4 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t writeData(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (2 * a3 * a4 == fwrite(__ptr, 1uLL, 2 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t isPackedRGBA(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CC4F38]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t isBufferYUV(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v2 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v3 = [(__CFDictionary *)v2 objectForKeyedSubscript:*MEMORY[0x277CC4F48]];
  v4 = [v3 BOOLValue];

  return v4;
}

uint64_t equivalentUncompressedPixelFormat(__CVBuffer *a1)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v3 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  if (CVPixelBufferGetPlaneCount(a1))
  {
    v4 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
    v5 = [v4 objectAtIndexedSubscript:0];

    v6 = [v5 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
    v7 = [v6 intValue];

    if (v7)
    {
      v8 = [(__CFDictionary *)v3 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
      PixelFormatType = [v8 intValue];
    }
  }

  return PixelFormatType;
}

CFMutableDictionaryRef createPixelBufferPoolWithExtendedPixels(uint64_t a1, uint64_t a2, int a3, int a4, int a5, int a6)
{
  v24 = a2;
  v25 = a1;
  v22 = a4;
  valuePtr = a3;
  v20 = a6;
  v21 = a5;
  poolOut = 0;
  v6 = *MEMORY[0x277CBECE8];
  result = CFDictionaryCreateMutable(*MEMORY[0x277CBECE8], 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (result)
  {
    v8 = result;
    v9 = CFNumberCreate(v6, kCFNumberIntType, &valuePtr);
    if (v9 && (v10 = v9, CFDictionarySetValue(v8, *MEMORY[0x277CC4E30], v9), CFRelease(v10), Mutable = CFDictionaryCreateMutable(v6, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]), CFDictionaryAddValue(v8, *MEMORY[0x277CC4DE8], Mutable), CFRelease(Mutable), (v12 = CFNumberCreate(v6, kCFNumberLongType, &v25)) != 0) && (v13 = v12, CFDictionarySetValue(v8, *MEMORY[0x277CC4EC8], v12), CFRelease(v13), (v14 = CFNumberCreate(v6, kCFNumberLongType, &v24)) != 0))
    {
      v15 = v14;
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DD8], v14);
      CFRelease(v15);
      v16 = CFNumberCreate(v6, kCFNumberIntType, &v22);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4D60], v16);
      CFRelease(v16);
      v17 = CFNumberCreate(v6, kCFNumberIntType, &v21);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DB8], v17);
      CFRelease(v17);
      v18 = CFNumberCreate(v6, kCFNumberIntType, &v20);
      CFDictionarySetValue(v8, *MEMORY[0x277CC4DA0], v18);
      CFRelease(v18);
      CVPixelBufferPoolCreate(v6, 0, v8, &poolOut);
      CFRelease(v8);
      return poolOut;
    }

    else
    {
      CFRelease(v8);
      return 0;
    }
  }

  return result;
}

id createTexturesFromCVPixelBufferWithCommandBuffer(__CVBuffer *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a2;
  v10 = a3;
  if (!a1)
  {
    v19 = 0;
    goto LABEL_11;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (a5 > 0x80 || Width < 0x80 || (v14 = Height / a5, v14 <= 0x7F))
  {
    v20 = v9;
    v21 = v10;
    v22 = CVPixelBufferGetWidth(a1);
    v23 = CVPixelBufferGetHeight(a1);
    v24 = v23 / a5;
    v19 = createTextures(v20, v22, v23 / a5, a4, a5);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v26 = BytesPerRow * v24;
    if (v21)
    {
      copyBufferToTextureWithBlit(a1, v19, v20, v21, BytesPerRow, v26);
      if (v19)
      {
LABEL_10:

        goto LABEL_11;
      }
    }

    else
    {
      copyBufferToTextureWithCPU(a1, v19, BytesPerRow, v26);
      if (v19)
      {
        goto LABEL_10;
      }
    }

    createTexturesFromCVPixelBufferWithCommandBuffer_cold_2();
  }

  v15 = PixelFormatType;
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  v28 = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &v28);
  v16 = CVPixelBufferGetBytesPerRow(a1);
  v17 = createTextureDescriptor(Width, v14, a4, a5, v15);
  v18 = [v9 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a1)];
  [v17 setResourceOptions:{objc_msgSend(v18, "resourceOptions")}];
  v19 = [v18 newLinearTextureWithDescriptor:v17 offset:0 bytesPerRow:v16 bytesPerImage:0];

  if (!v19)
  {
    createTexturesFromCVPixelBufferWithCommandBuffer_cold_1();
  }

LABEL_11:

  return v19;
}

id createFlowTexturesFromCVPixelBufferWithCommandBuffer(__CVBuffer *a1, void *a2, void *a3, uint64_t a4, unint64_t a5)
{
  v9 = a3;
  v10 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  if (PixelFormatType == 843264104)
  {
    v12 = 2;
  }

  else
  {
    v12 = a4;
  }

  v13 = createTexturesFromCVPixelBufferWithCommandBuffer(a1, v10, v9, v12, a5 >> (PixelFormatType == 843264104));

  return v13;
}

id createRGBATextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = equivalentUncompressedPixelFormat(a1);
  v5 = 90;
  if (v4 == 1380411457)
  {
    v5 = 115;
  }

  if (v4 == 1111970369)
  {
    v6 = 70;
  }

  else
  {
    v6 = v5;
  }

  v7 = MEMORY[0x277CD7058];
  Width = CVPixelBufferGetWidth(a1);
  v9 = [v7 texture2DDescriptorWithPixelFormat:v6 width:Width height:CVPixelBufferGetHeight(a1) mipmapped:0];
  [v9 setUsage:3];
  v10 = [v3 newTextureWithDescriptor:v9 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v10;
}

id createYUV420TextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  v4 = equivalentUncompressedPixelFormat(a1);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], v4);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v7 = [v6 intValue];

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v10 = v4 == 1885745712 || v4 == 1882468912;
  v11 = 505;
  if (v10)
  {
    v11 = 508;
  }

  if (v7 == 8)
  {
    v12 = 500;
  }

  else
  {
    v12 = v11;
  }

  v13 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v12 width:Width height:Height mipmapped:0];
  [v13 setUsage:1];
  v14 = [v3 newTextureWithDescriptor:v13 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v14;
}

void createYUVTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2, void *a3, void *a4)
{
  v44 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v9 = [v8 intValue];

  v10 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v11 = [v10 objectAtIndexedSubscript:0];

  v12 = [v11 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
  v13 = [v12 intValue];

  if (v13)
  {
    v14 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
    PixelFormatType = [v14 intValue];
  }

  v15 = 60;
  v16 = 20;
  v17 = 546;
  v18 = a4 == 0;
  v19 = 20;
  if (!a4)
  {
    v19 = 543;
  }

  v20 = 60;
  if (!a4)
  {
    v20 = 0;
  }

  if (PixelFormatType == 1885745712)
  {
    v21 = 546;
  }

  else
  {
    v21 = v19;
  }

  if (PixelFormatType == 1885745712)
  {
    v18 = 1;
    v22 = 0;
  }

  else
  {
    v22 = v20;
  }

  if (PixelFormatType == 1882468912)
  {
    v23 = 1;
  }

  else
  {
    v17 = v21;
    v23 = v18;
  }

  if (PixelFormatType == 1882468912)
  {
    v24 = 0;
  }

  else
  {
    v24 = v22;
  }

  v25 = 30;
  v26 = 10;
  v27 = PixelFormatType | 0x10;
  v28 = 10;
  if (!a4)
  {
    v28 = 540;
  }

  v29 = 30;
  if (!a4)
  {
    v29 = 0;
  }

  v30 = v27 == 875704438;
  if (v27 == 875704438)
  {
    v26 = v28;
    v31 = a4 == 0;
  }

  else
  {
    v31 = 0;
  }

  if (v30)
  {
    v25 = v29;
  }

  if (v9 == 8)
  {
    v16 = v26;
    v32 = v31;
  }

  else
  {
    v32 = 0;
  }

  if (v9 == 8)
  {
    v15 = v25;
  }

  v33 = v9 == 10;
  if (v9 == 10)
  {
    v34 = v17;
  }

  else
  {
    v34 = v16;
  }

  if (v33)
  {
    v35 = v23;
  }

  else
  {
    v35 = v32;
  }

  if (v33)
  {
    v36 = v24;
  }

  else
  {
    v36 = v15;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v38 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v34 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a1 mipmapped:0), 0];
  [v38 setUsage:3];
  *a3 = [v44 newTextureWithDescriptor:v38 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];
  if (v35)
  {
    if (!a4)
    {
      goto LABEL_47;
    }

    v39 = 0;
  }

  else
  {
    v40 = MEMORY[0x277CD7058];
    v41 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
    v42 = [v40 texture2DDescriptorWithPixelFormat:v36 width:v41 height:CVPixelBufferGetHeightOfPlane(a1 mipmapped:1uLL), 0];

    [v42 setUsage:3];
    v39 = [v44 newTextureWithDescriptor:v42 iosurface:CVPixelBufferGetIOSurface(a1) plane:1];
    v38 = v42;
  }

  *a4 = v39;
LABEL_47:
}

id getYTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v7 = [v6 intValue];

  v8 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
  v11 = [v10 intValue];

  if (v11)
  {
    v12 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
    PixelFormatType = [v12 intValue];
  }

  v13 = 20;
  v14 = PixelFormatType == 1885745712 || PixelFormatType == 1882468912;
  v15 = 20;
  if (v14)
  {
    v15 = 546;
  }

  if (v7 == 8)
  {
    v13 = 10;
  }

  if (v7 == 10)
  {
    v16 = v15;
  }

  else
  {
    v16 = v13;
  }

  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  v18 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v16 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a1 mipmapped:0), 0];
  [v18 setUsage:3];
  v19 = [v3 newTextureWithDescriptor:v18 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  return v19;
}

id getUVTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v5 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v6 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v7 = [v6 intValue];

  v8 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F70]];
  v9 = [v8 objectAtIndexedSubscript:0];

  v10 = [v9 objectForKeyedSubscript:*MEMORY[0x277CC4F18]];
  v11 = [v10 intValue];

  if (v11)
  {
    v12 = [(__CFDictionary *)v5 objectForKeyedSubscript:*MEMORY[0x277CC4F50]];
    [v12 intValue];
  }

  if (v7 == 8)
  {
    v13 = 30;
  }

  else
  {
    v13 = 60;
  }

  v14 = MEMORY[0x277CD7058];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v16 = [v14 texture2DDescriptorWithPixelFormat:v13 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a1 mipmapped:1uLL), 0];
  [v16 setUsage:3];
  v17 = [v3 newTextureWithDescriptor:v16 iosurface:CVPixelBufferGetIOSurface(a1) plane:1];

  return v17;
}

id createTextureFromCVPixelBufferOfPlane(__CVBuffer *a1, void *a2, size_t a3)
{
  v5 = a2;
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v8 = [(__CFDictionary *)v7 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v9 = [v8 intValue];

  v10 = 30;
  if (!a3)
  {
    v10 = 10;
  }

  v11 = 60;
  if (!a3)
  {
    v11 = 20;
  }

  if (v9 == 8)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = MEMORY[0x277CD7058];
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, a3);
  v15 = [v13 texture2DDescriptorWithPixelFormat:v12 width:WidthOfPlane height:CVPixelBufferGetHeightOfPlane(a1 mipmapped:a3), 0];
  [v15 setUsage:3];
  v16 = [v5 newTextureWithDescriptor:v15 iosurface:CVPixelBufferGetIOSurface(a1) plane:a3];

  return v16;
}

id createRenderTargetTextureFromCVPixelBuffer(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  extraColumnsOnRight = 0;
  extraColumnsOnLeft = 0;
  extraRowsOnBottom = 0;
  extraRowsOnTop = 0;
  CVPixelBufferGetExtendedPixels(a1, &extraColumnsOnLeft, &extraColumnsOnRight, &extraRowsOnTop, &extraRowsOnBottom);
  v6 = objc_opt_new();
  [v6 setTextureType:2];
  [v6 setWidth:extraColumnsOnRight + Width];
  [v6 setHeight:extraRowsOnBottom + Height];
  v7 = equivalentUncompressedPixelFormat(a1);
  if ((v7 & 0xFFFFFFEF) == 0x34323066)
  {
    v8 = 500;
    goto LABEL_13;
  }

  if (v7 <= 1885745711)
  {
    if (v7 == 1111970369)
    {
      v8 = 70;
      goto LABEL_13;
    }

    v9 = 1882468912;
    goto LABEL_9;
  }

  v8 = 505;
  if (v7 != 2019963440 && v7 != 2016686640)
  {
    v9 = 1885745712;
LABEL_9:
    if (v7 == v9)
    {
      v8 = 508;
    }

    else
    {
      v8 = 115;
    }
  }

LABEL_13:
  [v6 setPixelFormat:v8];
  [v6 setUsage:5];
  if (![v6 textureType])
  {
    NSLog(&cfstr_FailedToCretae.isa);
  }

  v10 = [v3 newTextureWithDescriptor:v6 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];

  if (!v10)
  {
    v11 = CVPixelBufferGetWidth(a1);
    v12 = CVPixelBufferGetHeight(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    NSLog(&cfstr_ErrorFaildToCr.isa, v11, v12, PixelFormatType);
  }

  return v10;
}

unsigned __int16 *interleave4(unsigned __int16 *result, unint64_t *a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = (a5 >> 1) * a4;
    v8 = 2 * v7;
    v9 = 3 * v7;
    do
    {
      if (a3)
      {
        v10 = 1;
        v11 = result;
        v12 = a2;
        do
        {
          *v12++ = *v11 | (v11[a4 * (a5 >> 1)] << 16) | (v11[v8] << 32) | (v11[v9] << 48);
          v13 = v10;
          ++v11;
          ++v10;
        }

        while (v13 < a3);
      }

      a2 = (a2 + a6);
      v6 = (v6 + 1);
      result += a5 >> 1;
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t deinterleave4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = a4 * (a6 >> 1);
    v8 = 2 * (a6 >> 1);
    v9 = a2 + 6 * v7;
    v10 = a2 + 4 * v7;
    v11 = a2 + 2 * (a6 >> 1) * a4;
    do
    {
      if (a3)
      {
        v12 = 0;
        do
        {
          v13 = *(result + 8 * v12);
          *(a2 + 2 * v12) = v13;
          *(v11 + 2 * v12) = WORD1(v13);
          *(v10 + 2 * v12) = WORD2(v13);
          *(v9 + 2 * v12++) = HIWORD(v13);
        }

        while (a3 > v12);
      }

      v6 = (v6 + 1);
      v9 += v8;
      v10 += v8;
      v11 += v8;
      a2 += v8;
      result += 8 * (a5 >> 3);
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t deinterleave3(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = a2 + 2 * a6 * a4;
    v8 = a2 + a6 * a4;
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          v10 = *(result + 4 * v9);
          *(a2 + v9) = v10;
          *(v8 + v9) = BYTE1(v10);
          *(v7 + v9++) = BYTE2(v10);
        }

        while (a3 > v9);
      }

      a2 += a6;
      v6 = (v6 + 1);
      v7 += a6;
      v8 += a6;
      result += 4 * (a5 >> 2);
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t interleave2(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = result + 2 * a4 * (a5 >> 1);
    v8 = 2 * (a5 >> 1);
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          *(a2 + 4 * v9) = *(result + 2 * v9) | (*(v7 + 2 * v9) << 16);
          ++v9;
        }

        while (a3 > v9);
      }

      v6 = (v6 + 1);
      a2 += 4 * (a6 >> 2);
      v7 += v8;
      result += v8;
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t deinterleave2(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (a4)
  {
    LODWORD(v6) = 0;
    v7 = a2 + 2 * a4 * (a6 >> 1);
    v8 = 2 * (a6 >> 1);
    do
    {
      if (a3)
      {
        v9 = 0;
        do
        {
          v10 = *(result + 4 * v9);
          *(a2 + 2 * v9) = v10;
          *(v7 + 2 * v9++) = HIWORD(v10);
        }

        while (a3 > v9);
      }

      v6 = (v6 + 1);
      v7 += v8;
      a2 += v8;
      result += 4 * (a5 >> 2);
    }

    while (v6 < a4);
  }

  return result;
}

uint64_t convertOneComponet16HalfToTwoComponent16Half(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 1278226536)
  {
    convertOneComponet16HalfToTwoComponent16Half_cold_1();
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 843264104)
  {
    convertOneComponet16HalfToTwoComponent16Half_cold_2();
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  if (Height >= 2)
  {
    LODWORD(v10) = 0;
    v11 = &BaseAddress[2 * (BytesPerRow >> 1) * (Height >> 1)];
    v12 = 2 * (BytesPerRow >> 1);
    do
    {
      if (Width)
      {
        v13 = 0;
        do
        {
          *&v8[4 * v13] = *&BaseAddress[2 * v13] | (*&v11[2 * v13] << 16);
          ++v13;
        }

        while (Width > v13);
      }

      v10 = (v10 + 1);
      v8 += 4 * (v9 >> 2);
      v11 += v12;
      BaseAddress += v12;
    }

    while (Height >> 1 > v10);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}

uint64_t convertTwoComponet16HalfToOneComponent16Half(__CVBuffer *a1, __CVBuffer *a2)
{
  if (CVPixelBufferGetPixelFormatType(a1) != 843264104)
  {
    convertTwoComponet16HalfToOneComponent16Half_cold_1();
  }

  if (CVPixelBufferGetPixelFormatType(a2) != 1278226536)
  {
    convertTwoComponet16HalfToOneComponent16Half_cold_2();
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v9 = CVPixelBufferGetBytesPerRow(a2);
  if (Height)
  {
    LODWORD(v10) = 0;
    v11 = &v8[2 * Height * (v9 >> 1)];
    v12 = 2 * (v9 >> 1);
    do
    {
      if (Width)
      {
        v13 = 0;
        do
        {
          v14 = *&BaseAddress[4 * v13];
          *&v8[2 * v13] = v14;
          *&v11[2 * v13++] = HIWORD(v14);
        }

        while (Width > v13);
      }

      v10 = (v10 + 1);
      v11 += v12;
      v8 += v12;
      BaseAddress += 4 * (BytesPerRow >> 2);
    }

    while (Height > v10);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);

  return CVPixelBufferUnlockBaseAddress(a2, 0);
}

id createTextureDescriptor(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v6 = 115;
  v7 = 25;
  if (a5 == 1278226488)
  {
    v7 = 12;
  }

  if (a3 == 1)
  {
    v6 = v7;
  }

  if (a3 == 2)
  {
    v8 = 65;
  }

  else
  {
    v8 = v6;
  }

  v9 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v8 width:a1 height:a2 mipmapped:0];
  [v9 setUsage:3];
  if (a4 >= 2)
  {
    [v9 setTextureType:3];
    [v9 setArrayLength:a4];
  }

  return v9;
}

id createTexturesFromCVPixelBufferFlow2C(__CVBuffer *a1, void *a2)
{
  v3 = a2;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v6 = createTextures(v3, Width, Height, 1, 2uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = [MEMORY[0x277CBEB28] dataWithLength:4 * Height * Width];
  v9 = [v8 mutableBytes];
  v10 = v9;
  if (Height * Width)
  {
    v11 = (BaseAddress + 2);
    v12 = v9;
    v13 = Height * Width;
    do
    {
      v14 = *v11;
      *v12 = *(v11 - 1);
      v12[Width * Height] = v14;
      ++v12;
      v11 += 2;
      --v13;
    }

    while (v13);
  }

  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = Width;
  v20 = Height;
  v21 = 1;
  [v6 replaceRegion:&v16 mipmapLevel:0 slice:0 withBytes:v9 bytesPerRow:2 * Width bytesPerImage:2 * Width * Height];
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v19 = Width;
  v20 = Height;
  v21 = 1;
  [v6 replaceRegion:&v16 mipmapLevel:0 slice:1 withBytes:v10 + 2 * Height * Width bytesPerRow:2 * Width bytesPerImage:2 * Width * Height];
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  if (!v6)
  {
    createTexturesFromCVPixelBufferFlow2C_cold_1();
  }

  return v6;
}

id createTextures(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = a1;
  v10 = createTextureDescriptor(a2, a3, a4, a5, 1278226536);
  v11 = [v9 newTextureWithDescriptor:v10];

  return v11;
}

void copyTextureToBufferWithBlit(void *a1, __CVBuffer *a2, void *a3, void *a4)
{
  v7 = a1;
  v8 = a3;
  v9 = a4;
  v10 = [v7 width];
  v11 = [v7 height];
  BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
  v13 = [v8 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a2)];
  v19 = v9;
  v14 = [v9 blitCommandEncoder];
  if ([v7 arrayLength])
  {
    v15 = 0;
    v16 = 0;
    v17 = 1;
    do
    {
      memset(v21, 0, sizeof(v21));
      v20[0] = v10;
      v20[1] = v11;
      v20[2] = 1;
      [v14 copyFromTexture:v7 sourceSlice:v15 sourceLevel:0 sourceOrigin:v21 sourceSize:v20 toBuffer:v13 destinationOffset:v16 destinationBytesPerRow:BytesPerRow destinationBytesPerImage:BytesPerRow * v11];
      v16 += BytesPerRow * v11;
      v15 = v17;
    }

    while ([v7 arrayLength] > v17++);
  }

  [v14 endEncoding];
}

void copyBufferToTextureWithBlit(__CVBuffer *a1, void *a2, void *a3, void *a4, uint64_t a5, uint64_t a6)
{
  v11 = a2;
  v12 = a3;
  v13 = [a4 blitCommandEncoder];
  v21 = v12;
  v14 = [v12 newBufferWithIOSurface:CVPixelBufferGetIOSurface(a1)];
  v15 = [v11 width];
  v16 = [v11 height];
  if ([v11 arrayLength])
  {
    v17 = 0;
    v18 = 0;
    v19 = 1;
    do
    {
      memset(v23, 0, sizeof(v23));
      v22[0] = v15;
      v22[1] = v16;
      v22[2] = 1;
      [v13 copyFromBuffer:v14 sourceOffset:v18 sourceBytesPerRow:a5 sourceBytesPerImage:a6 sourceSize:v22 toTexture:v11 destinationSlice:v17 destinationLevel:0 destinationOrigin:v23];
      v18 += a6;
      v17 = v19;
    }

    while ([v11 arrayLength] > v19++);
  }

  [v13 endEncoding];
}

void copyBufferToTextureWithCPU(__CVBuffer *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v9 = [v7 width];
  v10 = [v7 height];
  if ([v7 arrayLength])
  {
    v11 = 0;
    v12 = 1;
    do
    {
      memset(v14, 0, 24);
      v14[3] = v9;
      v14[4] = v10;
      v14[5] = 1;
      [v7 replaceRegion:v14 mipmapLevel:0 slice:v11 withBytes:&BaseAddress[v11 * a4] bytesPerRow:a3 bytesPerImage:a4];
      v11 = v12;
    }

    while ([v7 arrayLength] > v12++);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
}

uint64_t isPixelFormatSupported(uint64_t a1)
{
  v1 = [MEMORY[0x277CCABB0] numberWithInt:a1];
  v2 = [&unk_285B42910 containsObject:v1];

  return v2;
}

float compareBuffersFP16(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, int a7, float a8)
{
  v8 = a4;
  if (a5)
  {
    v13 = 0;
    v14 = 0;
    v15 = a8;
    v46 = a4 * a3;
    v47 = (a4 * a3);
    v16 = 0.0;
    do
    {
      if (v8)
      {
        v49 = v16;
        v17 = 0;
        v18 = 0;
        v51 = v13 * v8;
        v19 = 0.0;
        v20 = 3.4028e38;
        v21 = 0.0;
        v22 = 0.0;
        v23 = 3.4028e38;
        do
        {
          if (a3)
          {
            v24 = 0;
            v25 = 0;
            v26 = (v17 + v51) * a6;
            do
            {
              v27 = v24 + v26;
              if (a2)
              {
                _H0 = *(a2 + 2 * v27);
                __asm { FCVT            S0, H0 }
              }

              else
              {
                _S0 = 0.0;
              }

              _H1 = *(a1 + 2 * v27);
              __asm { FCVT            S10, H1 }

              v36 = _S10 - _S0;
              if (a7)
              {
                __asm { FCVT            D1, H1 }

                if (fabs(v36) <= v15)
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\n");
                }

                else
                {
                  printf("[%3d, %3d, %3d]\t%f,\t%f,\tdiff = %f\t****\n");
                }
              }

              v38 = fabsf(v36);
              v19 = fmaxf(v19, v38);
              v23 = fminf(v23, v38);
              v22 = fmaxf(v22, _S10);
              v20 = fminf(v20, _S10);
              v21 = v21 + (v36 * v36);
              v24 = ++v25;
            }

            while (v25 < a3);
          }

          v17 = ++v18;
          v8 = a4;
        }

        while (v18 < a4);
        v39 = v20;
        v40 = v22;
        v41 = v19;
        v42 = v23;
        v16 = v49;
      }

      else
      {
        v40 = 0.0;
        v39 = 3.40282347e38;
        v42 = 3.40282347e38;
        v21 = 0.0;
        v41 = 0.0;
      }

      v16 = v16 + v21;
      printf("[%3d]\t", v14);
      printf("Dynamic Range [%6.3f, %6.3f]", v39, v40);
      printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v41, v42, (v21 / v47));
      v13 = ++v14;
    }

    while (v14 < a5);
    v43 = v46;
  }

  else
  {
    v43 = a4 * a3;
    v16 = 0.0;
  }

  v44 = v16 / (v43 * a5);
  printf("[Total] MSE = %6.6f\n", v44);
  return v44;
}

float compareYUV420PixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v5 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  v6 = CVPixelBufferGetBaseAddressOfPlane(a2, 0);
  v7 = CVPixelBufferGetBaseAddressOfPlane(a2, 1uLL);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v13 = 0.0;
  v14 = 0.0;
  v15 = 3.40282347e38;
  v16 = 3.40282347e38;
  v17 = 0.0;
  v18 = 3.40282347e38;
  v19 = 0.0;
  v20 = 0.0;
  if (HeightOfPlane)
  {
    LODWORD(v21) = 0;
    v22 = 3.4028e38;
    v23 = 0.0;
    v24 = 0.0;
    v25 = 3.4028e38;
    do
    {
      if (WidthOfPlane)
      {
        v26 = 0;
        do
        {
          LOBYTE(v11) = BaseAddressOfPlane[v26];
          v11 = *&v11 / 255.0;
          *&v11 = v11;
          LOBYTE(v12) = v6[v26];
          v12 = *&v12 / 255.0;
          *&v12 = v12;
          v27 = *&v11 - *&v12;
          *&v12 = vabds_f32(*&v11, *&v12);
          v23 = fmaxf(v23, *&v12);
          v22 = fminf(v22, *&v12);
          v24 = fmaxf(v24, *&v11);
          v25 = fminf(v25, *&v11);
          v20 = v20 + (v27 * v27);
          ++v26;
        }

        while (WidthOfPlane > v26);
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      v6 += BytesPerRowOfPlane;
      v21 = (v21 + 1);
    }

    while (HeightOfPlane > v21);
    v16 = v25;
    v17 = v24;
    v19 = v23;
    v18 = v22;
  }

  v28 = v20 / (HeightOfPlane * WidthOfPlane);
  printf("[Y]\tDynamic Range [%6.3f, %6.3f]", v16, v17);
  v62 = v28;
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v19, v18, v28);
  v29 = CVPixelBufferGetWidthOfPlane(a1, 1uLL);
  v30 = CVPixelBufferGetHeightOfPlane(a1, 1uLL);
  v31 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  v34 = 0.0;
  v35 = 0.0;
  v36 = 3.40282347e38;
  v37 = 0.0;
  v38 = 3.40282347e38;
  v39 = 0.0;
  v40 = 3.40282347e38;
  if (v30)
  {
    LODWORD(v41) = 0;
    v42 = 0.0;
    v43 = 3.4028e38;
    v44 = 3.4028e38;
    v45 = 0.0;
    v46 = 3.4028e38;
    v47 = 0.0;
    v48 = 3.4028e38;
    v49 = 0.0;
    v13 = 0.0;
    do
    {
      if (v29)
      {
        v50 = 1;
        v51 = 1;
        do
        {
          LOBYTE(v34) = v5[v50 - 1];
          LOBYTE(v32) = v7[v50 - 1];
          v34 = *&v34 / 255.0;
          *&v52 = *&v32;
          v53 = *&v52 / 255.0;
          LOBYTE(v52) = v5[v50];
          *&v34 = v34;
          v32 = v52 / 255.0;
          *&v32 = v32;
          LOBYTE(v33) = v7[v50];
          v54 = v53;
          v33 = *&v33 / 255.0;
          *&v33 = v33;
          v55 = vabds_f32(*&v34, v54);
          v56 = vabds_f32(*&v32, *&v33);
          v45 = fmax(v45, v56);
          v44 = fmin(v44, v56);
          v47 = fmax(v47, *&v34);
          v49 = fmax(v49, v55);
          v42 = fmax(v42, *&v32);
          v46 = fmin(v46, *&v34);
          v48 = fmin(v48, v55);
          v43 = fmin(v43, *&v32);
          v57 = v29 > v51++;
          v50 += 2;
        }

        while (v57);
        *&v32 = *&v32 - *&v33;
        v13 = (*&v34 - v54) * (*&v34 - v54);
        *&v34 = *&v32 * *&v32;
      }

      v5 += v31;
      v7 += v31;
      v41 = (v41 + 1);
    }

    while (v30 > v41);
    v36 = v46;
    v35 = v47;
    v14 = v49;
    v15 = v48;
    v40 = v43;
    v39 = v42;
    v37 = v45;
    v38 = v44;
  }

  v58 = (v30 * v29);
  v59 = v13 / v58;
  v60 = *&v34 / v58;
  printf("[U]\tDynamic Range [%6.3f, %6.3f]", v36, v35);
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v14, v15, v59);
  printf("[V]\tDynamic Range [%6.3f, %6.3f]", v40, v39);
  printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", v37, v38, v60);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return (v62 + v59) + v60;
}

float compareCVPixelBuffers(__CVBuffer *a1, __CVBuffer *a2, unint64_t a3, int a4, float a5)
{
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  if (CVPixelBufferGetPixelFormatType(a1) == 1380411457)
  {
    Width *= 4;
  }

  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v14 = CVPixelBufferGetBaseAddress(a2);
  v15 = compareBuffersFP16(BaseAddress, v14, Width, Height / a3, a3, BytesPerRow >> 1, a4, a5);
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  return v15;
}

float compareBGRAPixelBuffers(__CVBuffer *a1, __CVBuffer *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  CVPixelBufferLockBaseAddress(a2, 1uLL);
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  BaseAddress = CVPixelBufferGetBaseAddress(a1);
  v8 = CVPixelBufferGetBaseAddress(a2);
  v30 = 0;
  v29 = 0;
  v28 = 0;
  v27 = 0;
  v26 = 0;
  v25 = 2139095039;
  v24 = 0;
  v23 = 0;
  v22 = 0;
  v21 = 2139095039;
  if (Height)
  {
    LODWORD(v11) = 0;
    v12 = 4 * (BytesPerRow >> 2);
    do
    {
      if (Width)
      {
        v13 = 0;
        v14 = v8;
        v15 = BaseAddress;
        do
        {
          for (i = 0; i != 3; ++i)
          {
            LOBYTE(v9) = v15[i];
            v9 = *&v9 / 255.0;
            LOBYTE(v10) = v14[i];
            *&v9 = v9;
            v10 = *&v10 / 255.0;
            *&v10 = v10;
            *(&v29 + i) = *(&v29 + i) + ((*&v9 - *&v10) * (*&v9 - *&v10));
            *&v10 = vabds_f32(*&v9, *&v10);
            *(&v25 + i) = fminf(*&v10, *(&v25 + i));
            *(&v27 + i) = fmaxf(*&v10, *(&v27 + i));
            *(&v21 + i) = fminf(*&v9, *(&v21 + i));
            LODWORD(v10) = *(&v23 + i);
            *&v9 = fmaxf(*&v9, *&v10);
            *(&v23 + i) = LODWORD(v9);
          }

          ++v13;
          v15 += 4;
          v14 += 4;
        }

        while (Width > v13);
      }

      v11 = (v11 + 1);
      BaseAddress += v12;
      v8 += v12;
    }

    while (Height > v11);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  CVPixelBufferUnlockBaseAddress(a2, 1uLL);
  for (j = 0; j != 3; ++j)
  {
    v18 = *(&v29 + j) / (Height * Width);
    v20[j] = v18;
    printf("[%d]\tDynamic Range [%6.3f, %6.3f]", j, *(&v21 + j), *(&v23 + j));
    printf("\tMax Diff = %6.6f, Min Diff = %6.6f, MSE = %6.6f\n", *(&v27 + j), *(&v25 + j), v18);
  }

  return ((v20[0] + v20[1]) + v20[2]) / 3.0;
}

uint64_t checkMemoryLeaks()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = getpid();
  snprintf(__str, 0x1F3uLL, "/usr/bin/leaks %d", v0);
  return system(__str);
}

void checkMemoryFootPrint()
{
  v3 = *MEMORY[0x277D85DE8];
  v0 = NSUserName();
  if ([v0 isEqualToString:@"root"])
  {
    v1 = getpid();
    snprintf(__str, 0x1F3uLL, "/usr/local/bin/jetsam_priority -p %d", v1);
    system(__str);
  }
}

uint64_t readBuffer(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1278226536)
  {
    v7 = 1;
  }

  else
  {
    v7 = 3;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v9 = BaseAddress;
    v10 = Width << v7;
    v11 = 1;
    while (fread(v9, 1uLL, v10, a1) == v10)
    {
      v9 += BytesPerRow;
      if (Height <= v11++)
      {
        goto LABEL_8;
      }
    }

    v13 = 0xFFFFFFFFLL;
  }

  else
  {
LABEL_8:
    v13 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v13;
}

uint64_t writeBuffer(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Height = CVPixelBufferGetHeight(pixelBuffer);

  return writeBufferWithVerticalOffset(a1, pixelBuffer, 0, Height);
}

uint64_t writeBufferWithVerticalOffset(FILE *a1, CVPixelBufferRef pixelBuffer, unint64_t a3, uint64_t a4)
{
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  if (CVPixelBufferGetPixelFormatType(pixelBuffer) == 1380411457)
  {
    v10 = 3;
  }

  else
  {
    v10 = 1;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a4 + a3 <= a3)
  {
    a4 = 0;
  }

  else
  {
    v12 = Width << v10;
    v13 = &BaseAddress[BytesPerRow * a3];
    while (fwrite(v13, 1uLL, v12, a1) == v12)
    {
      v13 += BytesPerRow;
      if (!--a4)
      {
        goto LABEL_13;
      }
    }

    a4 = 0xFFFFFFFFLL;
  }

LABEL_13:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return a4;
}

uint64_t write64RGBAHalf(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 8 * Width;
    v10 = 1;
    do
    {
      fwrite(v8, 1uLL, v9, a1);
      v8 += BytesPerRow;
    }

    while (Height > v10++);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

uint64_t readBGRA(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 4 * Width;
    v10 = 1;
    while (1)
    {
      v11 = 1;
      if (fread(v8, 1uLL, v9, a1) != v9)
      {
        break;
      }

      v8 += BytesPerRow;
      if (Height <= v10++)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = 0;
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  return v11;
}

uint64_t writeBGRA(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (Height)
  {
    v8 = BaseAddress;
    v9 = 4 * Width;
    v10 = 1;
    do
    {
      fwrite(v8, 1uLL, v9, a1);
      v8 += BytesPerRow;
    }

    while (Height > v10++);
  }

  CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
  return 0;
}

CVPixelBufferRef readPNG(uint64_t a1)
{
  v60[3] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = MEMORY[0x277CBEBC0];
    v3 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
    v4 = [v2 fileURLWithPath:v3];

    v5 = [MEMORY[0x277CBF758] imageWithContentsOfURL:v4];
    v6 = v5;
    if (!v5)
    {
      NSLog(&cfstr_ReadpngErrorIn.isa);
      PixelBufferExtended = 0;
LABEL_23:

      return PixelBufferExtended;
    }

    v7 = [v5 properties];
    v8 = [v6 colorSpace];
    v9 = [v7 objectForKeyedSubscript:@"PixelWidth"];
    v10 = [v9 integerValue];

    v11 = [v7 objectForKeyedSubscript:@"PixelHeight"];
    v12 = [v11 integerValue];

    v13 = [v7 objectForKeyedSubscript:@"Depth"];
    v14 = [v13 integerValue];

    if (v14 == 8)
    {
      v15 = 1111970369;
    }

    else
    {
      v15 = 1380411457;
    }

    PixelBufferExtended = CreatePixelBufferExtended(v10, v12, v15, 0, 0);
    if (!PixelBufferExtended)
    {
LABEL_22:

      goto LABEL_23;
    }

    v47 = v7;
    v48 = v4;
    v17 = *MEMORY[0x277CC4C00];
    v18 = *MEMORY[0x277CC4C20];
    v19 = *MEMORY[0x277CC4CC0];
    v59[0] = *MEMORY[0x277CC4C00];
    v59[1] = v19;
    v20 = *MEMORY[0x277CC4CD8];
    v43 = v18;
    v60[0] = v18;
    v60[1] = v20;
    v40 = v20;
    v21 = *MEMORY[0x277CC4D10];
    v59[2] = *MEMORY[0x277CC4D10];
    v42 = *MEMORY[0x277CC4D28];
    v60[2] = *MEMORY[0x277CC4D28];
    v22 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v60 forKeys:v59 count:3];
    ColorSpaceFromAttachments = CVImageBufferCreateColorSpaceFromAttachments(v22);
    cf = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
    v23 = *MEMORY[0x277CBF478];
    v45 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF478]);
    v44 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF470]);
    v49 = CGColorSpaceCreateWithName(*MEMORY[0x277CBF488]);
    Name = CGColorSpaceGetName(v8);
    v25 = v8;
    if (Name && CFEqual(Name, *MEMORY[0x277CBF4B8]))
    {
      v57[0] = v17;
      v57[1] = v19;
      v26 = *MEMORY[0x277CC4D08];
      v58[0] = v43;
      v58[1] = v26;
      v57[2] = v21;
      v58[2] = v42;
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v58 forKeys:v57 count:3];
    }

    else
    {
      v41 = v22;
      v28 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
      v29 = [v28 pathExtension];
      if ([v29 isEqual:@"png"])
      {
        v30 = v25;
        v31 = CGColorSpaceEqualToColorSpace();

        if ((v31 & 1) == 0)
        {
          v25 = v30;
          v32 = ColorSpaceFromAttachments;
          v33 = v44;
          if (CGColorSpaceGetName(v30) == v23 || CGColorSpaceEqualToColorSpace())
          {
            v34 = *MEMORY[0x277CC4C18];
            v53[0] = v17;
            v53[1] = v19;
            v35 = *MEMORY[0x277CC4CD0];
            v54[0] = v34;
            v54[1] = v35;
            v53[2] = v21;
            v54[2] = *MEMORY[0x277CC4D18];
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v54 forKeys:v53 count:3];
            v22 = v41;
          }

          else
          {
            v22 = v41;
            if ((CGColorSpaceEqualToColorSpace() & 1) == 0 && !CGColorSpaceEqualToColorSpace())
            {
              goto LABEL_21;
            }

            v51[0] = v17;
            v51[1] = v19;
            v52[0] = v43;
            v52[1] = v40;
            v51[2] = v21;
            v52[2] = v42;
            v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v52 forKeys:v51 count:3];
            v25 = ColorSpaceFromAttachments;
          }

LABEL_20:
          CMSetAttachments(PixelBufferExtended, v27, 1u);

LABEL_21:
          v38 = [MEMORY[0x277CBF740] context];
          [v6 extent];
          [v38 render:v6 toCVPixelBuffer:PixelBufferExtended bounds:v25 colorSpace:?];
          CFRelease(cf);
          CFRelease(v45);
          CFRelease(v33);
          CFRelease(v49);
          CFRelease(v32);

          v7 = v47;
          v4 = v48;
          goto LABEL_22;
        }
      }

      else
      {
        v30 = v25;
      }

      v36 = *MEMORY[0x277CC4C30];
      v55[0] = v17;
      v55[1] = v19;
      v37 = *MEMORY[0x277CC4D08];
      v56[0] = v36;
      v56[1] = v37;
      v55[2] = v21;
      v56[2] = *MEMORY[0x277CC4D20];
      v27 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v56 forKeys:v55 count:3];
      v25 = v30;
      v22 = v41;
    }

    v32 = ColorSpaceFromAttachments;
    v33 = v44;
    goto LABEL_20;
  }

  NSLog(&cfstr_ReadpngErrorFi.isa);
  return 0;
}

void writePNG(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  v18 = CVPixelFormatDescriptionCreateWithPixelFormatType(*MEMORY[0x277CBECE8], PixelFormatType);
  v5 = [(__CFDictionary *)v18 objectForKeyedSubscript:*MEMORY[0x277CC4ED8]];
  v6 = [v5 intValue];

  v7 = CMGetAttachment(pixelBuffer, *MEMORY[0x277CC4CC0], 0);
  v8 = CMGetAttachment(pixelBuffer, *MEMORY[0x277CC4C00], 0);
  if (!v7)
  {
    goto LABEL_5;
  }

  if (CFStringCompare(v8, *MEMORY[0x277CC0260], 0) == kCFCompareEqualTo)
  {
    v10 = MEMORY[0x277CBF3E0];
LABEL_9:
    DeviceRGB = CGColorSpaceCreateWithName(*v10);
    goto LABEL_10;
  }

  if (CFStringCompare(v7, *MEMORY[0x277CC04D0], 0) == kCFCompareEqualTo)
  {
    v10 = MEMORY[0x277CBF478];
    goto LABEL_9;
  }

  if (CFStringCompare(v7, *MEMORY[0x277CC4CD8], 0) == kCFCompareEqualTo)
  {
    v10 = MEMORY[0x277CBF488];
    goto LABEL_9;
  }

LABEL_5:
  DeviceRGB = CGColorSpaceCreateDeviceRGB();
LABEL_10:
  v11 = DeviceRGB;
  v12 = MEMORY[0x277CBF9C8];
  if (v6 != 8 && CGColorSpaceGetName(DeviceRGB) != *MEMORY[0x277CBF488])
  {
    v12 = MEMORY[0x277CBF9C0];
  }

  v13 = *v12;
  v14 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:pixelBuffer options:0];
  v15 = [MEMORY[0x277CBF740] context];
  v16 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v17 = [v15 PNGRepresentationOfImage:v14 format:v13 colorSpace:v11 options:v16];
  CFRelease(v11);
  fwrite([v17 bytes], 1uLL, objc_msgSend(v17, "length"), a1);
}

uint64_t readData32(FILE *__stream, void *__ptr, uint64_t a3, uint64_t a4)
{
  if (4 * a3 * a4 == fread(__ptr, 1uLL, 4 * a3 * a4, __stream))
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

BOOL isSameFormat(__CVBuffer *a1, __CVBuffer *a2)
{
  result = 1;
  if (a1)
  {
    if (a2)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
      if (PixelFormatType != CVPixelBufferGetPixelFormatType(a2))
      {
        return 0;
      }
    }
  }

  return result;
}

void writeGrayscaledTiff(FILE *a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x277D85DE8];
  DeviceGray = CGColorSpaceCreateDeviceGray();
  v5 = *MEMORY[0x277CBF988];
  v11 = *MEMORY[0x277CBFA40];
  v12[0] = DeviceGray;
  v6 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v12 forKeys:&v11 count:1];
  v7 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a2 options:v6];
  v8 = [MEMORY[0x277CBF740] context];
  v9 = objc_alloc_init(MEMORY[0x277CBEAC0]);
  v10 = [v8 TIFFRepresentationOfImage:v7 format:v5 colorSpace:DeviceGray options:v9];
  CFRelease(DeviceGray);
  fwrite([v10 bytes], 1uLL, objc_msgSend(v10, "length"), a1);
}

uint64_t *swapWidthAndHeight(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  *result = *a2;
  *a2 = v2;
  return result;
}

void getInputFrameSizeForUsage(__int16 a1, uint64_t *a2, uint64_t *a3)
{
  v8 = a1 & 0xFFF;
  if (!(!v4 & v3))
  {
    switch(a1 & 0xFFF)
    {
      case 0:
        v10 = 1440;
        goto LABEL_72;
      case 1:
        v17 = 1920;
        goto LABEL_74;
      case 2:
        v16 = 960;
        goto LABEL_35;
      case 3:
        v11 = 720;
        goto LABEL_38;
      case 4:
        v10 = 1920;
        goto LABEL_72;
      case 5:
        v11 = 960;
        goto LABEL_38;
      case 6:
        v16 = 1280;
LABEL_35:
        *a2 = v16;
        v9 = 720;
        goto LABEL_76;
      case 7:
        *a2 = 1280;
        v9 = 960;
        goto LABEL_76;
      case 8:
        *a2 = 640;
        v9 = 480;
        goto LABEL_76;
      case 9:
        v13 = 640;
        goto LABEL_59;
      case 0xA:
        v12 = 480;
        goto LABEL_65;
      case 0xB:
        *a2 = 320;
        v9 = 180;
        goto LABEL_76;
      case 0xC:
        *a2 = 320;
        v9 = 240;
        goto LABEL_76;
      case 0xD:
        v15 = 3840;
        goto LABEL_42;
      case 0xE:
        *a2 = 4096;
        v9 = 2048;
        goto LABEL_76;
      case 0xF:
        v15 = 4096;
LABEL_42:
        *a2 = v15;
        v9 = 2160;
        goto LABEL_76;
      case 0x10:
        *a2 = 4096;
        v9 = 2304;
        goto LABEL_76;
      case 0x11:
        *a2 = 4096;
        v9 = 3112;
        goto LABEL_76;
      case 0x12:
        v14 = 7680;
        goto LABEL_40;
      case 0x13:
      case 0x14:
      case 0x1A:
        goto LABEL_78;
      case 0x15:
        v18 = 5120;
        goto LABEL_54;
      case 0x16:
        *a2 = 5120;
        v9 = 4272;
        goto LABEL_76;
      case 0x17:
        *a2 = 5744;
        v9 = 3024;
        goto LABEL_76;
      case 0x18:
        v18 = 5760;
LABEL_54:
        *a2 = v18;
        v9 = 2880;
        goto LABEL_76;
      case 0x19:
        *a2 = 6144;
        v9 = 3456;
        goto LABEL_76;
      case 0x1B:
        v14 = 0x2000;
LABEL_40:
        *a2 = v14;
        v9 = 4320;
        goto LABEL_76;
      case 0x1C:
        *a2 = 6560;
        v9 = 3104;
        goto LABEL_76;
      case 0x1D:
        v9 = 2208;
        goto LABEL_49;
      case 0x1E:
        v9 = 1920;
        goto LABEL_49;
      default:
        JUMPOUT(0);
    }
  }

  switch(a1 & 0xFFF)
  {
    case 'd':
      *a2 = 1440;
      v9 = 464;
      goto LABEL_76;
    case 'e':
      *a2 = 1920;
      v9 = 584;
      goto LABEL_76;
    case 'f':
      *a2 = 960;
      v9 = 424;
      goto LABEL_76;
    case 'g':
      v12 = 360;
LABEL_65:
      *a2 = v12;
      v9 = 270;
      goto LABEL_76;
    case 'h':
      v13 = 480;
LABEL_59:
      *a2 = v13;
      v9 = 360;
      goto LABEL_76;
    case 'i':
      *a2 = 2048;
      v9 = 1024;
      goto LABEL_76;
    case 'j':
      v10 = 2048;
LABEL_72:
      *a2 = v10;
      v9 = 1080;
      goto LABEL_76;
    case 'k':
      *a2 = 2048;
      v9 = 1152;
      goto LABEL_76;
    case 'l':
      *a2 = 2048;
      v9 = 1556;
      goto LABEL_76;
    case 'm':
      *a2 = 1024;
      v9 = 512;
      goto LABEL_76;
    case 'n':
      v17 = 2560;
      goto LABEL_74;
    case 'o':
      *a2 = 2560;
      v9 = 2136;
      goto LABEL_76;
    case 'p':
      *a2 = 2872;
      v9 = 1512;
      goto LABEL_76;
    case 'q':
      v17 = 2880;
LABEL_74:
      *a2 = v17;
      v9 = 1440;
      goto LABEL_76;
    case 'r':
      *a2 = 3072;
      v9 = 1728;
      goto LABEL_76;
    case 's':
      *a2 = 1536;
      v9 = 864;
      goto LABEL_76;
    case 't':
      *a2 = 3280;
      v9 = 1552;
      goto LABEL_76;
    case 'u':
      *a2 = 1640;
      v9 = 776;
LABEL_76:
      *a3 = v9;
      if ((a1 & 0x1000) != 0)
      {
LABEL_81:
        v20 = *a2;
        *a2 = *a3;
        *a3 = v20;
      }

      break;
    default:
      switch(a1 & 0xFFF)
      {
        case 0xC8:
          v11 = 1024;
LABEL_38:
          *a2 = v11;
          v9 = 540;
          goto LABEL_76;
        case 0xC9:
          *a2 = 1024;
          v9 = 576;
          goto LABEL_76;
        case 0xCA:
          *a2 = 1024;
          v9 = 778;
          goto LABEL_76;
        case 0xCB:
          *a2 = 512;
          v9 = 256;
          goto LABEL_76;
        case 0xCC:
          v12 = 512;
          goto LABEL_65;
        case 0xCD:
          *a2 = 512;
          v9 = 288;
          goto LABEL_76;
        case 0xCE:
          *a2 = 512;
          v9 = 389;
          goto LABEL_76;
        case 0xD1:
          *a2 = 640;
          v9 = 534;
          goto LABEL_76;
        case 0xD2:
          *a2 = 718;
          v9 = 378;
          goto LABEL_76;
        case 0xD3:
          v13 = 720;
          goto LABEL_59;
        case 0xD4:
          *a2 = 384;
          v9 = 216;
          goto LABEL_76;
        case 0xD5:
          *a2 = 410;
          v9 = 194;
          goto LABEL_76;
        case 0xD6:
          *a2 = 1280;
          v9 = 1068;
          goto LABEL_76;
        case 0xD7:
          v9 = 1104;
LABEL_49:
          *a2 = v9;
          goto LABEL_76;
        default:
LABEL_78:
          *a2 = 0;
          *a3 = 0;
          if ((global_logLevel & 0x10) == 0 || (v19 = global_logger, !os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR)))
          {
            if ((a1 & 0x1000) == 0)
            {
              return;
            }

            goto LABEL_81;
          }

          getInputFrameSizeForUsage_cold_1(v8, v19);
          if ((a1 & 0x1000) != 0)
          {
            goto LABEL_81;
          }

          break;
      }

      break;
  }
}

uint64_t getNumberOfPixelsForUsage(__int16 a1)
{
  v2 = 0;
  v3 = 0;
  getInputFrameSizeForUsage(a1, &v3, &v2);
  return v2 * v3;
}

uint64_t getUsageFromSize(unint64_t a1, unint64_t a2)
{
  if (a1 <= a2)
  {
    v2 = a2;
  }

  else
  {
    v2 = a1;
  }

  if (a1 >= a2)
  {
    v3 = a2;
  }

  else
  {
    v3 = a1;
  }

  if (v2 == 2208 && v3 == 2208)
  {
    goto LABEL_9;
  }

  if (v2 == 1920 && v3 == 1920)
  {
LABEL_12:
    v4 = 30;
    goto LABEL_55;
  }

  if (v2 == 1920 && v3 == 1440)
  {
LABEL_15:
    v4 = 1;
    goto LABEL_55;
  }

  if (v2 == 1440 && v3 == 1080)
  {
LABEL_18:
    v4 = 0;
    goto LABEL_55;
  }

  if (v2 == 1280 && v3 == 720)
  {
LABEL_21:
    v4 = 6;
    goto LABEL_55;
  }

  if (v2 == 1280 && v3 == 960)
  {
    v4 = 7;
    goto LABEL_55;
  }

  if (v2 == 1920 && v3 == 1080)
  {
LABEL_27:
    v4 = 4;
    goto LABEL_55;
  }

  if (v2 == 3840 && v3 == 2160)
  {
LABEL_30:
    v4 = 13;
    goto LABEL_55;
  }

  if (v2 == 960 && v3 == 720)
  {
    v4 = 2;
    goto LABEL_55;
  }

  if (v2 == 720 && v3 == 540)
  {
LABEL_36:
    v4 = 3;
    goto LABEL_55;
  }

  if (v2 == 960 && v3 == 540)
  {
LABEL_39:
    v4 = 5;
    goto LABEL_55;
  }

  if (v2 == 640 && v3 == 480)
  {
    v4 = 8;
    goto LABEL_55;
  }

  if (v2 == 640 && v3 == 360)
  {
    v4 = 9;
    goto LABEL_55;
  }

  if (v2 == 480 && v3 == 270)
  {
    v4 = 10;
    goto LABEL_55;
  }

  if (v2 == 320 && v3 == 180)
  {
    v4 = 11;
    goto LABEL_55;
  }

  if (v2 == 320 && v3 == 240)
  {
LABEL_54:
    v4 = 12;
    goto LABEL_55;
  }

  if (v2 == 5120)
  {
    if (v3 == 2880)
    {
LABEL_90:
      v4 = 21;
      goto LABEL_55;
    }

    if (v3 == 4272)
    {
      goto LABEL_69;
    }

    goto LABEL_76;
  }

  if (v2 == 4096)
  {
    v4 = 14;
    if (v3 != 2048)
    {
      v4 = 15;
    }

    if (v3 > 2303)
    {
      if (v3 == 2304)
      {
        v4 = 16;
        goto LABEL_55;
      }

      if (v3 == 3112)
      {
        v4 = 17;
        goto LABEL_55;
      }
    }

    else if (v3 == 2048 || v3 == 2160)
    {
      goto LABEL_55;
    }

LABEL_76:
    v8 = v3 < 0x871;
    goto LABEL_77;
  }

  if (v2 == 5744 && v3 == 3024)
  {
    v4 = 23;
    goto LABEL_55;
  }

  if (v2 == 5760 && v3 == 2880)
  {
    v4 = 24;
    goto LABEL_55;
  }

  if (v2 == 6144 && v3 == 3456)
  {
LABEL_101:
    v4 = 25;
    goto LABEL_55;
  }

  if (v2 == 7680 && v3 == 4320)
  {
LABEL_95:
    v4 = 18;
    goto LABEL_55;
  }

  if (v2 != 0x2000 || v3 != 4320)
  {
    if (v2 <= 0x140 && v3 < 0xF1)
    {
      goto LABEL_54;
    }

    if (v2 <= 0x2D0 && v3 < 0x21D)
    {
      goto LABEL_36;
    }

    if (v2 <= 0x3C0 && v3 < 0x21D)
    {
      goto LABEL_39;
    }

    if (v2 <= 0x500 && v3 < 0x2D1)
    {
      goto LABEL_21;
    }

    if (v2 <= 0x5A0 && v3 < 0x439)
    {
      goto LABEL_18;
    }

    if (v2 <= 0x780 && v3 < 0x439)
    {
      goto LABEL_27;
    }

    if (v3 <= 0x5A0 && v2 < 0x781)
    {
      goto LABEL_15;
    }

    if (v3 <= 0x780 && v2 < 0x781)
    {
      goto LABEL_12;
    }

    if (v2 < 0x8A1)
    {
LABEL_9:
      v4 = 29;
LABEL_55:
      v5 = v4 | 0x1000;
      v6 = a1 >= a2;
      goto LABEL_56;
    }

    v8 = v3 < 0x871;
    if (v2 <= 0xF00 && v3 < 0x871)
    {
      goto LABEL_30;
    }

LABEL_77:
    if (v2 <= 0x1000 && v3 <= 0xC28)
    {
      v4 = 14;
      if (v3 >= 0x801)
      {
        v4 = 15;
      }

      if (!v8)
      {
        v4 = 16;
        if (v3 >= 0x901)
        {
          v4 = 17;
        }
      }

      goto LABEL_55;
    }

    if (v2 <= 0x1400 && v3 < 0xB41)
    {
      goto LABEL_90;
    }

    if (v2 > 0x1400 || v3 >= 0x10B1)
    {
      if (v2 <= 0x1800 && v3 < 0xD81)
      {
        goto LABEL_101;
      }

      if (v2 <= 0x19A0 && v3 < 0xC21)
      {
        v4 = 28;
        goto LABEL_55;
      }

      if (v2 > 0x1E00 || v3 >= 0x10E1)
      {
        v4 = -1;
        if (v2 > 0x2000 || v3 > 0x10E0)
        {
          return v4;
        }

        v4 = 27;
        goto LABEL_55;
      }

      goto LABEL_95;
    }

LABEL_69:
    v4 = 22;
    goto LABEL_55;
  }

  v6 = a1 >= a2;
  v4 = 27;
  v5 = 4123;
LABEL_56:
  if (!v6)
  {
    return v5;
  }

  return v4;
}

uint64_t getQuarterSizeUsage(uint64_t a1)
{
  if (a1 > 104)
  {
    if (a1 > 109)
    {
      if (a1 > 113)
      {
        if (a1 == 114)
        {
          return 115;
        }

        if (a1 == 116)
        {
          return 117;
        }
      }

      else
      {
        if (a1 == 110)
        {
          return 6;
        }

        if (a1 == 111)
        {
          return 214;
        }
      }
    }

    else
    {
      if (a1 <= 106)
      {
        if (a1 == 105)
        {
          return 109;
        }

        else
        {
          return 200;
        }
      }

      if (a1 == 107)
      {
        return 201;
      }

      if (a1 == 108)
      {
        return 202;
      }
    }

    return a1;
  }

  result = 3;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 2;
      break;
    case 4:
      result = 5;
      break;
    case 5:
      result = 10;
      break;
    case 6:
      result = 9;
      break;
    case 7:
      result = 8;
      break;
    case 13:
      result = 4;
      break;
    case 14:
      result = 105;
      break;
    case 15:
      result = 106;
      break;
    case 16:
      result = 107;
      break;
    case 17:
      result = 108;
      break;
    case 18:
      result = 13;
      break;
    case 21:
      result = 110;
      break;
    case 22:
      result = 111;
      break;
    case 23:
      result = 112;
      break;
    case 24:
      result = 113;
      break;
    case 25:
      result = 114;
      break;
    case 27:
      result = 15;
      break;
    case 28:
      result = 116;
      break;
    case 29:
      result = 215;
      break;
    default:
      return a1;
  }

  return result;
}

uint64_t get4xDownSizeUsage(uint64_t a1)
{
  if (a1 > 20)
  {
    if (a1 <= 109)
    {
      if (a1 <= 105)
      {
        if (a1 == 21)
        {
          return 6;
        }

        if (a1 == 105)
        {
          return 203;
        }
      }

      else
      {
        switch(a1)
        {
          case 'j':
            return 204;
          case 'k':
            return 205;
          case 'l':
            return 206;
        }
      }
    }

    else
    {
      if (a1 <= 112)
      {
        if (a1 == 110)
        {
          return 9;
        }

        if (a1 == 111)
        {
          return 209;
        }

        return 210;
      }

      switch(a1)
      {
        case 'q':
          return 211;
        case 's':
          return 212;
        case 'u':
          return 213;
      }
    }
  }

  else if (a1 <= 12)
  {
    if (a1 <= 3)
    {
      if (!a1)
      {
        return 103;
      }

      if (a1 == 1)
      {
        return 104;
      }
    }

    else
    {
      switch(a1)
      {
        case 4:
          return 10;
        case 6:
          return 11;
        case 7:
          return 12;
      }
    }
  }

  else
  {
    if (a1 <= 15)
    {
      if (a1 == 13)
      {
        return 5;
      }

      if (a1 == 14)
      {
        return 109;
      }

      return 200;
    }

    switch(a1)
    {
      case 16:
        return 201;
      case 17:
        return 202;
      case 18:
        return 4;
    }
  }

  if ((global_logLevel & 0x10) != 0)
  {
    v3 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      get4xDownSizeUsage_cold_1(a1, v3);
    }
  }

  return -1;
}

void getInputFrameSizeForUsage_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 134217984;
  v3 = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "No frame size available for usage: %ld", &v2, 0xCu);
}

void get4xDownSizeUsage_cold_1(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = 136315394;
  v3 = "get4xDownSizeUsage";
  v4 = 2048;
  v5 = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "%s: Invalid Usage: %ld", &v2, 0x16u);
}

void OUTLINED_FUNCTION_0_21(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

CVPixelBufferRef OUTLINED_FUNCTION_3_12()
{
  v2 = *(v0 + 392);
  v3 = *(v0 + 400);
  v4 = *(v0 + 108);

  return createPixelBuffer(v2, v3, v4, 0);
}

void OUTLINED_FUNCTION_0_22(uint64_t a1)
{
  v4 = *(v1 + v2);
  *(v1 + v2) = a1;
}

void getPortShape()
{
  if (e5rt_io_port_is_tensor())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      getPortShape_cold_1();
    }
  }

  else if (e5rt_io_port_retain_surface_desc())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      getPortShape_cold_2();
    }
  }

  else if (e5rt_surface_desc_get_width())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      getPortShape_cold_3();
    }
  }

  else if (e5rt_surface_desc_get_height())
  {
    e5rt_get_last_error_message();
    if ((global_logLevel & 0x10) != 0 && os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      getPortShape_cold_4();
    }
  }
}

void OUTLINED_FUNCTION_1_24(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x1Cu);
}

void OUTLINED_FUNCTION_5_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_debug_impl(a1, a2, OS_LOG_TYPE_DEBUG, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_7_5()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void getPortShape_cold_1()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

void getPortShape_cold_2()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

void getPortShape_cold_3()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

void getPortShape_cold_4()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

void getPortShape_cold_5()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

void getPortShape_cold_6()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

void getPortShape_cold_7()
{
  LODWORD(v2) = 136315650;
  OUTLINED_FUNCTION_0_23();
  OUTLINED_FUNCTION_1_24(&dword_24874B000, v0, v1, "FAILURE: %s returned error = %u. msg = %s\n", v2, v3, v4);
}

BOOL shouldRankLS1OverLS2(void *a1, void *a2, float a3)
{
  v5 = a1;
  v6 = a2;
  [v6 dist2ghost];
  v8 = v7;
  [v5 dist2ghost];
  v17 = 1;
  if (v8 <= (v9 + a3))
  {
    if (([v6 dist2ghost], v10 != INFINITY) && (objc_msgSend(v6, "dist2ghost"), v12 = v11, objc_msgSend(v5, "dist2ghost"), vabds_f32(v12, v13) > a3) || (objc_msgSend(v6, "area"), v15 = v14, objc_msgSend(v5, "area"), v15 >= (v16 + -256.0)) && ((objc_msgSend(v6, "area"), v19 = v18, objc_msgSend(v5, "area"), vabds_f32(v19, v20) > 256.0) || (objc_msgSend(v6, "dist2opticalCenter"), v22 = v21, objc_msgSend(v5, "dist2opticalCenter"), v22 <= v23)))
    {
      v17 = 0;
    }
  }

  return v17;
}

void OUTLINED_FUNCTION_1_25(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_DEFAULT, a4, &a9, 0xCu);
}

void OUTLINED_FUNCTION_2_14(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_4_8(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_impl(a1, v9, OS_LOG_TYPE_INFO, a4, &a9, 2u);
}

BOOL OUTLINED_FUNCTION_5_6()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT);
}

CVPixelBufferRef CreatePixelBufferHelper(size_t a1, size_t a2, uint64_t a3)
{
  pixelBufferOut = 0;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:MEMORY[0x277CBEC10] forKeyedSubscript:*MEMORY[0x277CC4DE8]];
  v7 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a1];
  [v6 setObject:v7 forKeyedSubscript:*MEMORY[0x277CC4EC8]];

  v8 = [MEMORY[0x277CCABB0] numberWithUnsignedLong:a2];
  [v6 setObject:v8 forKeyedSubscript:*MEMORY[0x277CC4DD8]];

  v9 = [MEMORY[0x277CCABB0] numberWithUnsignedInt:a3];
  [v6 setObject:v9 forKeyedSubscript:*MEMORY[0x277CC4E30]];

  if (CVPixelBufferCreate(0, a1, a2, a3, v6, &pixelBufferOut))
  {
    v10 = 0;
  }

  else
  {
    v10 = pixelBufferOut;
  }

  return v10;
}

void __destructor_8_s8_s16_s24_s32_s40(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void sub_2487982C8(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 248), 8);
  _Block_object_dispose((v1 - 216), 8);
  _Block_object_dispose((v1 - 168), 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id __copy_constructor_8_8_t0w8_s8_s16_s24_s32_s40_t48w8(void *a1, uint64_t a2)
{
  *a1 = *a2;
  a1[1] = *(a2 + 8);
  a1[2] = *(a2 + 16);
  a1[3] = *(a2 + 24);
  a1[4] = *(a2 + 32);
  result = *(a2 + 40);
  a1[5] = result;
  a1[6] = *(a2 + 48);
  return result;
}

CVPixelBufferRef OUTLINED_FUNCTION_1_26()
{

  return CreatePixelBufferHelper(v0, v1, 1278226488);
}

CVPixelBufferRef OUTLINED_FUNCTION_2_15()
{

  return CreatePixelBufferHelper(v0, v1, 645428784);
}

uint64_t OUTLINED_FUNCTION_7_6(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 encodeBMTransferGrayToCommandEncoder:a3 ref:a4 warpedRef:a5 bestMatchLoc:v6 meta:v5 sf:2];
}

CVPixelBufferRef OUTLINED_FUNCTION_8_6()
{

  return CreatePixelBufferHelper(v0, v1, 645428784);
}

uint64_t OUTLINED_FUNCTION_9_5(void *a1, const char *a2)
{

  return [a1 newBufferWithLength:71248 options:0];
}

CVPixelBufferRef OUTLINED_FUNCTION_10_3()
{

  return CreatePixelBufferHelper(0xF0uLL, 0x10EuLL, (v0 + 48));
}

CVPixelBufferRef OUTLINED_FUNCTION_12_2(size_t a1, size_t a2)
{

  return CreatePixelBufferHelper(a1, a2, 1278226488);
}

CVPixelBufferRef OUTLINED_FUNCTION_14_1(size_t a1, size_t a2)
{

  return CreatePixelBufferHelper(a1, a2, 645428784);
}

uint64_t OUTLINED_FUNCTION_17_1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return [a1 encodeBMTransferGrayToCommandEncoder:a3 ref:a4 warpedRef:a5 bestMatchLoc:v5 meta:v6 sf:2];
}

int8x8_t CGRectToIntRect(unsigned int a1, unsigned int a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  MinX = CGRectGetMinX(*&a3);
  v22.origin.x = a3;
  v22.origin.y = a4;
  v22.size.width = a5;
  v22.size.height = a6;
  MinY = CGRectGetMinY(v22);
  v23.origin.x = a3;
  v23.origin.y = a4;
  v23.size.width = a5;
  v23.size.height = a6;
  CGRectGetMaxX(v23);
  v24.origin.x = a3;
  v24.origin.y = a4;
  v24.size.width = a5;
  v24.size.height = a6;
  CGRectGetMaxY(v24);
  v12.f64[0] = MinX;
  v12.f64[1] = MinY;
  __asm { FMOV            V3.2S, #1.0 }

  *&v12.f64[0] = vcvt_s32_f32(vadd_f32(vrnda_f32(vcvt_f32_f64(v12)), _D3));
  __asm { FMOV            V3.2S, #-1.0 }

  return vand_s8(vcgez_s32(*&v12.f64[0]), vmin_u32(vadd_s32(__PAIR64__(a2, a1), -1), *&v12.f64[0]));
}

uint64_t resetVGGM_ExternalConfig(uint64_t result)
{
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *result = 0;
  *(result + 16) = 2;
  *(result + 23) = 1;
  *(result + 24) = 256;
  return result;
}

double setDefaultConfig(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 32) = 0;
  *(a1 + 48) = 2;
  *(a1 + 55) = 1;
  *(a1 + 56) = 256;
  return result;
}

void mergeBboxesForMitigation(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  v32 = v1;
  do
  {
    v4 = [v1 count];
    if (!v4)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3;
      v3 = [v32 objectAtIndexedSubscript:v5];

      [v3 bbox];
      v38 = v8;
      [v3 bbox];
      rect = v9;
      [v3 bbox];
      v34 = v10;
      [v3 bbox];
      if (++v5 >= v4)
      {
        v28 = v4;
        v30 = rect;
        *&v29 = v38;
      }

      else
      {
        *&v31[16] = v34;
        *&v31[24] = v11;
        v12 = v5;
        *v31 = v38;
        *&v31[8] = rect;
        v13 = v32;
        do
        {
          v14 = v2;
          v15 = v12;
          v2 = [v13 objectAtIndexedSubscript:{v12, *v31, *&v31[8], *&v31[16], *&v31[24]}];

          [v2 bbox];
          v17 = v16;
          [v2 bbox];
          v19 = v18;
          [v2 bbox];
          v21 = v20;
          [v2 bbox];
          v23 = v22;
          v43.origin.x = v17;
          v43.origin.y = v19;
          v43.size.width = v21;
          v43.size.height = v22;
          v41 = CGRectIntersection(*v31, v43);
          x = v41.origin.x;
          recta = v41.origin.y;
          height = v41.size.height;
          width = v41.size.width;
          v44.origin.x = v17;
          v44.origin.y = v19;
          v44.size.width = v21;
          v44.size.height = v23;
          v42 = CGRectUnion(*v31, v44);
          v24 = v42.origin.x;
          y = v42.origin.y;
          v26 = v42.size.width;
          v27 = v42.size.height;
          v42.origin.x = x;
          v42.origin.y = recta;
          v42.size.height = height;
          v42.size.width = width;
          if (!CGRectIsNull(v42))
          {
            --v12;
            [v32 removeObjectAtIndex:v15];
            --v4;
            v6 = 1;
            *&v31[16] = v26;
            *&v31[24] = v27;
            *v31 = v24;
            *&v31[8] = y;
          }

          ++v12;
          v13 = v32;
        }

        while (v12 < v4);
        v28 = v4;
        *&v29 = *v31;
        v30 = *&v31[8];
      }

      *(&v29 + 1) = v30;
      [v3 setBbox:{v29, *v31, *&v31[8], *&v31[16], *&v31[24]}];
    }

    while (v5 < v28);
    v1 = v32;
  }

  while ((v6 & 1) != 0);
}

void mergeDupBboxesForMitigation(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  v31 = v1;
  do
  {
    v4 = [v1 count];
    if (!v4)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3;
      v3 = [v31 objectAtIndexedSubscript:v5];

      [v3 bbox];
      v30 = v8;
      [v3 bbox];
      v29 = v9;
      [v3 bbox];
      v28 = v10;
      [v3 bbox];
      if (++v5 >= v4)
      {
        v24 = v4;
        v26 = v29;
        *&v25 = v30;
      }

      else
      {
        v27 = v11;
        v12 = *(&v11 + 3);
        v13 = v5;
        v14 = v31;
        do
        {
          v15 = v2;
          v16 = v13;
          v2 = [v14 objectAtIndexedSubscript:{v13, v27}];

          [v2 bbox];
          v18 = v17;
          [v2 bbox];
          v20 = v19;
          [v2 bbox];
          v22 = v21;
          [v2 bbox];
          v34.size.height = v23;
          v33.origin.x = v30;
          v33.origin.y = v29;
          v33.size.width = v28;
          v33.size.height = v12;
          v34.origin.x = v18;
          v34.origin.y = v20;
          v34.size.width = v22;
          if (CGRectContainsRect(v33, v34))
          {
            --v13;
            [v31 removeObjectAtIndex:v16];
            --v4;
            v6 = 1;
          }

          ++v13;
          v14 = v31;
        }

        while (v13 < v4);
        v24 = v4;
        v26 = v29;
        *&v25 = v30;
      }

      *(&v25 + 1) = v26;
      [v3 setBbox:v25];
    }

    while (v5 < v24);
    v1 = v31;
  }

  while ((v6 & 1) != 0);
}

id getRoiListWithTrackIdAndMvFromMetaContainer(__int16 *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CBEB18]);
  if (*a1 >= 1)
  {
    v3 = 0;
    v4 = 0;
    v5 = 18720;
    do
    {
      v6 = *&a1[2 * v3 + 20];
      v7 = [[ROI alloc] initWithBbox:v6];
      [(ROI *)v7 setTrackID:*&a1[v3 + 4118]];
      [(ROI *)v7 setMv:*&a1[v5]];
      [(ROI *)v7 setMvSum:*&a1[v5]];
      LODWORD(v8) = 1.0;
      [(ROI *)v7 setMvCnt:v8];
      [v2 addObject:v7];

      ++v4;
      v5 += 4;
      v3 += 2;
    }

    while (v4 < *a1);
  }

  return v2;
}

void setMetaContainerUsingRoiListWithTrackIdAndMv(void *a1, float32x2_t *a2)
{
  v11 = a1;
  a2->i16[0] = [v11 count];
  if ([v11 count])
  {
    v3 = 0;
    v4 = &a2[1029] + 2;
    v5 = a2 + 4680;
    v6 = a2 + 8;
    do
    {
      v7 = [v11 objectAtIndexedSubscript:v3];
      [v7 bbox];
      v9 = vextq_s8(v8, v8, 8uLL).u64[0];
      v6[-3] = *v8.i8;
      v6[-2] = vadd_f32(*v8.i8, v9);
      v6[-1] = vmla_f32(*v8.i8, 0x3F0000003F000000, v9);
      *v6 = vmul_f32(v9, 0x3F0000003F000000);
      *&v4[2 * v3] = [v7 trackID];
      [v7 mv];
      v5[v3] = v10;

      ++v3;
      v6 += 4;
    }

    while ([v11 count] > v3);
  }
}

void mergeRoiListWithTrackIdAndMvForMitigation(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  v50 = v1;
  while (1)
  {
    v4 = [v1 count];
    if (!v4)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3;
      v3 = [v50 objectAtIndexedSubscript:v5];

      v8 = [v3 trackID];
      [v3 mvSum];
      v10 = v9;
      [v3 mvCnt];
      v12 = v11;
      [v3 bbox];
      v56 = v13;
      [v3 bbox];
      rect = v14;
      [v3 bbox];
      v52 = v15;
      [v3 bbox];
      if (++v5 >= v4)
      {
        v36 = v4;
        v38 = rect;
        *&v37 = v56;
      }

      else
      {
        v47 = v12;
        *&v49[16] = v52;
        *&v49[24] = v16;
        *&v49[8] = rect;
        v17 = v5;
        *&v48 = v10;
        *v49 = v56;
        v18 = v50;
        do
        {
          v19 = v2;
          v20 = v17;
          v2 = [v18 objectAtIndexedSubscript:v17];

          [v2 bbox];
          v22 = v21;
          [v2 bbox];
          v24 = v23;
          [v2 bbox];
          v26 = v25;
          [v2 bbox];
          v28 = v27;
          v61.origin.x = v22;
          v61.origin.y = v24;
          v61.size.width = v26;
          v61.size.height = v27;
          v59 = CGRectIntersection(*v49, v61);
          x = v59.origin.x;
          recta = v59.origin.y;
          height = v59.size.height;
          width = v59.size.width;
          v62.origin.x = v22;
          v62.origin.y = v24;
          v62.size.width = v26;
          v62.size.height = v28;
          v60 = CGRectUnion(*v49, v62);
          v29 = v60.origin.x;
          y = v60.origin.y;
          v31 = v60.size.width;
          v32 = v60.size.height;
          v60.origin.x = x;
          v60.origin.y = recta;
          v60.size.height = height;
          v60.size.width = width;
          if (!CGRectIsNull(v60))
          {
            v33 = [v2 trackID];
            if (v8 >= v33)
            {
              v8 = v33;
            }

            else
            {
              v8 = v8;
            }

            [v2 mvSum];
            v48 = vadd_f32(v48, v34);
            [v2 mvCnt];
            v47 = v47 + v35;
            --v17;
            [v50 removeObjectAtIndex:v20];
            --v4;
            v6 = 1;
            *&v49[16] = v31;
            *&v49[24] = v32;
            *v49 = v29;
            *&v49[8] = y;
          }

          ++v17;
          v18 = v50;
        }

        while (v17 < v4);
        v36 = v4;
        *&v37 = *v49;
        v38 = *&v49[8];
        v10 = *&v48;
        v12 = v47;
      }

      *(&v37 + 1) = v38;
      [v3 setBbox:v37];
      [v3 setTrackID:v8];
      [v3 setMvSum:v10];
      *&v39 = v12;
      [v3 setMvCnt:v39];
    }

    while (v5 < v36);
    v1 = v50;
    if ((v6 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v1 = v50;
LABEL_18:
  if ([v1 count])
  {
    v40 = 0;
    v41 = 1;
    do
    {
      v42 = [v50 objectAtIndexedSubscript:v40];
      [v42 mvSum];
      v44 = v43;
      [v42 mvCnt];
      [v42 setMv:{COERCE_DOUBLE(vdiv_f32(v44, vdup_lane_s32(v45, 0)))}];

      v40 = v41;
    }

    while ([v50 count] > v41++);
  }
}

void mergeRoisInMetaContainer(float32x2_t *a1)
{
  v2 = getRoiListWithTrackIdAndMvFromMetaContainer(a1);
  mergeRoiListWithTrackIdAndMvForMitigation(v2);
  setMetaContainerUsingRoiListWithTrackIdAndMv(v2, a1);
}

void mergeDetectedROI(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 0;
  v28 = v1;
  do
  {
    v4 = [v1 count];
    if (!v4)
    {
      break;
    }

    v5 = 0;
    v6 = 0;
    do
    {
      v7 = v3;
      v3 = [v28 objectAtIndexedSubscript:v5];

      [v3 roi];
      *v29 = v8;
      *&v29[8] = v9;
      *&v29[16] = v10;
      *&v29[24] = v11;
      if (++v5 < v4)
      {
        v12 = v5;
        v13 = v28;
        do
        {
          v14 = v2;
          v15 = v12;
          v2 = [v13 objectAtIndexedSubscript:v12];

          [v2 roi];
          v17 = v16;
          v19 = v18;
          v21 = v20;
          v23 = v22;
          v37.origin.x = v16;
          v37.origin.y = v18;
          v37.size.width = v20;
          v37.size.height = v22;
          v35 = CGRectIntersection(*v29, v37);
          y = v35.origin.y;
          x = v35.origin.x;
          height = v35.size.height;
          width = v35.size.width;
          v38.origin.x = v17;
          v38.origin.y = v19;
          v38.size.width = v21;
          v38.size.height = v23;
          v36 = CGRectUnion(*v29, v38);
          v24 = v36.origin.x;
          v25 = v36.origin.y;
          v26 = v36.size.width;
          v27 = v36.size.height;
          v36.origin.y = y;
          v36.origin.x = x;
          v36.size.height = height;
          v36.size.width = width;
          if (!CGRectIsNull(v36))
          {
            --v12;
            [v28 removeObjectAtIndex:v15];
            --v4;
            v6 = 1;
            *&v29[16] = v26;
            *&v29[24] = v27;
            *v29 = v24;
            *&v29[8] = v25;
          }

          ++v12;
          v13 = v28;
        }

        while (v12 < v4);
      }

      [v3 setRoi:{*v29, *&v29[8], *&v29[16], *&v29[24]}];
    }

    while (v5 < v4);
    v1 = v28;
  }

  while ((v6 & 1) != 0);
}

void commitCommandBuffer(void *a1, int a2)
{
  v3 = a1;
  [v3 commit];
  if (a2)
  {
    [v3 waitUntilCompleted];
  }

  else
  {
    [v3 waitUntilScheduled];
  }
}

BOOL checkIfRepairWillGateFrame(void *a1, int a2, float a3)
{
  v5 = a1;
  if ([v5 count] >= (2 * a2))
  {
    v17 = 1;
  }

  else
  {
    v6 = a3 * 4.0;
    if ([v5 count])
    {
      v7 = 0;
      do
      {
        v8 = [v5 objectAtIndexedSubscript:{v7, v19}];
        [v8 bbox];
        v19 = v9;

        _V1.S[2] = DWORD2(v19);
        _S0 = HIDWORD(v19);
        __asm { FMLA            S9, S0, V1.S[2] }

        ++v7;
      }

      while (v7 < [v5 count]);
    }

    else
    {
      _S9 = 0.0;
    }

    v17 = _S9 >= v6;
  }

  return v17;
}

float getOpticalCenterMvShift()
{
  v42[1] = *MEMORY[0x277D85DE8];
  v0 = (MEMORY[0x28223BE20])();
  v1 = MEMORY[0x28223BE20](v0);
  v7 = v42 - v6;
  v8 = v3 - 1;
  if (v3 >= 1)
  {
    v9 = 0;
    do
    {
      if (v9 <= 1)
      {
        v10 = 1;
      }

      else
      {
        v10 = v9;
      }

      v11 = v9 + 1;
      if (v8 >= v9 + 1)
      {
        v12 = v9 + 1;
      }

      else
      {
        v12 = v3 - 1;
      }

      v4[v9++] = vmul_f32(vsub_f32(*(v1 + 8 * v12), *(v1 - 8 + 8 * v10)), 0x3F0000003F000000);
    }

    while (v3 != v11);
    v13 = 0;
    v14 = v4 - 10;
    v15 = -11;
    v16 = 1;
    v17 = 10;
    do
    {
      if (v17 >= v8)
      {
        v18 = v3 - 1;
      }

      else
      {
        v18 = v17;
      }

      if (v18 <= v13)
      {
        v19 = v13;
      }

      else
      {
        v19 = v18;
      }

      if (v13 <= 10)
      {
        v20 = 10;
      }

      else
      {
        v20 = v13;
      }

      v21 = v13 + 10;
      if (v8 < v13 + 10)
      {
        v21 = v3 - 1;
      }

      v22 = 0;
      v23 = 0;
      if (v20 - 10 <= v13)
      {
        v24 = v20 + v15;
        v25 = &v14[v20];
        do
        {
          v26 = *v25++;
          v23 = vadd_f32(v23, v26);
        }

        while (!__CFADD__(v24++, 1));
      }

      v28 = v19 + v16;
      v29 = v4;
      do
      {
        v30 = *v29++;
        v31.i32[1] = v30.i32[1];
        v22 = vadd_f32(v22, v30);
        --v28;
      }

      while (v28);
      *v31.i32 = (v13 - v20 + 11);
      v32 = vdup_lane_s32(v31, 0);
      v33 = vdiv_f32(v23, v32);
      v32.f32[0] = (v21 - v13 + 1);
      *&v7[8 * v13++] = vsub_f32(vdiv_f32(v22, vdup_lane_s32(v32, 0)), v33);
      --v15;
      ++v17;
      --v16;
      ++v4;
    }

    while (v13 != v3);
    v34 = 0;
    v35 = v7 - 80;
    do
    {
      if (v34 <= 10)
      {
        v36 = 10;
      }

      else
      {
        v36 = v34;
      }

      v37 = v34 + 10;
      if (v8 < v34 + 10)
      {
        v37 = v3 - 1;
      }

      v38 = 0.0;
      if (v36 - 10 <= v37)
      {
        v39 = v36 - 11;
        v40 = &v35[8 * v36];
        do
        {
          v41 = *v40++;
          v38 = v38 + sqrtf(vaddv_f32(vmul_f32(v41, v41)));
          ++v39;
        }

        while (v39 < v37);
      }

      result = v38 / (v37 - v36 + 11);
      *(v2 + 4 * v34++) = result;
    }

    while (v34 != v3);
  }

  return result;
}

id drawRect(void *a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  v9 = MEMORY[0x277CBF730];
  v10 = a1;
  v11 = [[v9 alloc] initWithRed:0.0 green:1.0 blue:0.0];
  v12 = drawColorRect(v10, v11, a2, a3, a4, a5);

  return v12;
}

id drawColorRect(void *a1, uint64_t a2, CGFloat a3, CGFloat a4, CGFloat a5, CGFloat a6)
{
  v11 = MEMORY[0x277CBF758];
  v12 = a1;
  v13 = [v11 imageWithColor:a2];
  v14 = [v13 imageByCroppingToRect:{a3, a4, a5, a6}];

  v20.origin.x = a3;
  v20.origin.y = a4;
  v20.size.width = a5;
  v20.size.height = a6;
  v21 = CGRectInset(v20, 2.0, 2.0);
  v15 = [v12 imageByCroppingToRect:{v21.origin.x, v21.origin.y, v21.size.width, v21.size.height}];
  v16 = [v14 imageByCompositingOverImage:v12];

  v17 = [v15 imageByCompositingOverImage:v16];

  return v17;
}

id visualiseBoundingBoxes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = v3;
  v6 = v5;
  if ([v4 count])
  {
    v7 = 0;
    v6 = v5;
    while (1)
    {
      v8 = [v4 objectAtIndexedSubscript:v7];
      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();

      v10 = [v4 objectAtIndexedSubscript:v7];
      v11 = v10;
      if (isKindOfClass)
      {
        break;
      }

      objc_opt_class();
      v24 = objc_opt_isKindOfClass();

      if (v24)
      {
        v11 = [v4 objectAtIndexedSubscript:v7];
        [v11 roi];
        v13 = v25;
        v27 = v26;
        v21 = v28;
        v23 = v29;
        [v5 extent];
        v19 = v30 - v27 - v23;
        goto LABEL_7;
      }

LABEL_8:
      if ([v4 count] <= ++v7)
      {
        goto LABEL_9;
      }
    }

    [v10 bbox];
    v13 = v12;
    [v5 extent];
    v15 = v14;
    [v11 bbox];
    v17 = v15 - v16;
    [v11 bbox];
    v19 = v17 - v18;
    [v11 bbox];
    v21 = v20;
    [v11 bbox];
    v23 = v22;
LABEL_7:
    v31 = drawRect(v6, v13, v19, v21, v23);

    v6 = v31;
    goto LABEL_8;
  }

LABEL_9:

  return v6;
}

id convertPixBufToCIImageWithP3(__CVBuffer *a1, void *a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v3 = a2;
  if (CVPixelBufferGetPixelFormatType(a1) == 1278226488)
  {
    DeviceGray = CGColorSpaceCreateDeviceGray();
  }

  else
  {
    DeviceGray = CGColorSpaceCreateWithName(*MEMORY[0x277CBF3E0]);
  }

  v5 = DeviceGray;
  v6 = [MEMORY[0x277CBEB38] dictionary];
  [v6 setObject:v5 forKey:*MEMORY[0x277CBFA40]];
  if (v3)
  {
    v7 = [v3 objectForKey:@"Orientation"];

    if (v7)
    {
      v12 = *MEMORY[0x277CD3410];
      v8 = [v3 objectForKey:@"Orientation"];
      v13[0] = v8;
      v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:&v12 count:1];
      [v6 setObject:v9 forKey:*MEMORY[0x277CBFA68]];
    }
  }

  v10 = [MEMORY[0x277CBF758] imageWithCVPixelBuffer:a1 options:v6];
  if (v5)
  {
    CFRelease(v5);
  }

  return v10;
}

uint64_t OUTLINED_FUNCTION_1_27(uint64_t a1, uint64_t a2, uint64_t a3, void **a4)
{
  v5 = *a4;

  return [v5 removeAllObjects];
}

uint64_t OUTLINED_FUNCTION_1_28(void *a1, const char *a2)
{

  return [a1 initWithTrackingSessionId:? roiId:? andRoi:?];
}

void freeLookAheadFrameArray(char **a1)
{
  if (a1)
  {
    v2 = *(a1 + 2);
    v3 = *a1;
    if (v2 < 1)
    {
      if (!v3)
      {
LABEL_8:
        a1[1] = 0;
        return;
      }
    }

    else
    {
      v4 = 0;
      v5 = 0;
      do
      {
        v6 = *&v3[v4 + 8];
        *&v3[v4 + 8] = 0;

        v7 = &(*a1)[v4];
        *v7 = 0;
        v8 = *(v7 + 2);
        *(v7 + 2) = 0;

        v9 = &(*a1)[v4];
        v10 = *(v9 + 3);
        *(v9 + 3) = 0;

        v11 = &(*a1)[v4];
        v12 = *(v11 + 4);
        *(v11 + 4) = 0;

        v13 = &(*a1)[v4];
        v14 = *(v13 + 5);
        *(v13 + 5) = 0;

        v3 = *a1;
        *&(*a1)[v4 + 48] = 0;
        ++v5;
        v4 += 56;
      }

      while (v5 < *(a1 + 2));
    }

    *a1 = 0;
    free(v3);
    goto LABEL_8;
  }
}

void sub_2487A14CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  __destructor_8_s8_s16_s24_s32_s40(va);
  _Unwind_Resume(a1);
}

void __copy_assignment_8_8_t0w8_s8_s16_s24_s32_s40_t48w8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  objc_storeStrong((a1 + 8), *(a2 + 8));
  objc_storeStrong((a1 + 16), *(a2 + 16));
  objc_storeStrong((a1 + 24), *(a2 + 24));
  objc_storeStrong((a1 + 32), *(a2 + 32));
  objc_storeStrong((a1 + 40), *(a2 + 40));
  *(a1 + 48) = *(a2 + 48);
}

void OUTLINED_FUNCTION_5_8(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + a2);
  *(v2 + a2) = a1;
}

void OUTLINED_FUNCTION_3_16(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 2u);
}

void OUTLINED_FUNCTION_5_9(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

BOOL OUTLINED_FUNCTION_8_7()
{

  return os_log_type_enabled(v0, OS_LOG_TYPE_ERROR);
}

void OUTLINED_FUNCTION_10_4(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, v9, OS_LOG_TYPE_ERROR, a4, &a9, 0x1Au);
}

void errorMessage_cold_1(uint64_t a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v2 = 138412290;
  v3 = a1;
  _os_log_error_impl(&dword_24874B000, a2, OS_LOG_TYPE_ERROR, "%@", &v2, 0xCu);
}

vm_size_t getUsedMemorySize()
{
  bzero(v11, 0xA0uLL);
  v10 = 0;
  v0 = MEMORY[0x24C1D8CE0]();
  if (host_page_size(v0, &v10) || OUTLINED_FUNCTION_2(0, v1, v2, v3, v4, v5, v6, v7, v9, HIDWORD(v9), v10, v11[0]))
  {
    return 0;
  }

  else
  {
    return (v10 * (v11[3] + v11[35] + v11[32])) >> 20;
  }
}

vm_size_t getUsableMemorySize()
{
  bzero(v11, 0xA0uLL);
  v10 = 0;
  v0 = MEMORY[0x24C1D8CE0]();
  if (host_page_size(v0, &v10) || OUTLINED_FUNCTION_2(0, v1, v2, v3, v4, v5, v6, v7, v9, HIDWORD(v9), v10, v11[0]))
  {
    return 0;
  }

  else
  {
    return (v10 * (v11[2] + v11[0])) >> 20;
  }
}

BOOL isMemoryAvailableForVSA(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_0();
  return OUTLINED_FUNCTION_1(v5);
}

BOOL isMemoryAvailableForFRC(uint64_t a1, uint64_t a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = OUTLINED_FUNCTION_0();
  return OUTLINED_FUNCTION_1(v5);
}

BOOL isMemoryAvailableForOpticalFlow(uint64_t a1, uint64_t a2, int a3, int a4)
{
  v4 = a4 - 4;
  if (a3 != -1)
  {
    if (a3 != 1 || v4 < 0xFFFFFFFD)
    {
      return 0;
    }

LABEL_9:
    v6 = OUTLINED_FUNCTION_0();
    return OUTLINED_FUNCTION_1(v6);
  }

  if (v4 >= 0xFFFFFFFD)
  {
    goto LABEL_9;
  }

  return 0;
}

BOOL isMemoryAvailableForVSR(unsigned int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = &dword_2487C36BC;
  v6 = 11;
  do
  {
    if (*(v5 - 1) >= a1 && *v5 >= a2)
    {
      break;
    }

    v5 += 2;
    --v6;
  }

  while (v6);
  UsableMemorySize = getUsableMemorySize();
  return OUTLINED_FUNCTION_1(UsableMemorySize);
}

BOOL isMemoryAvailableForISR(unsigned int a1, unsigned int a2, unsigned int a3, int a4)
{
  if (a3 > 1 || (a4 - 4) < 0xFFFFFFFD)
  {
    return 0;
  }

  v5 = &dword_2487C36BC;
  v6 = 11;
  do
  {
    if (*(v5 - 1) >= a1 && *v5 >= a2)
    {
      break;
    }

    v5 += 2;
    --v6;
  }

  while (v6);
  UsableMemorySize = getUsableMemorySize();
  return OUTLINED_FUNCTION_1(UsableMemorySize);
}

void encodeScaleToCommandBuffer()
{
  OUTLINED_FUNCTION_27();
  OUTLINED_FUNCTION_11_1();
  v3 = v2;
  v5 = v4;
  v6 = v0;
  v7 = v1;
  v8 = v7;
  if (v6 && v7)
  {
    v9 = [v3 computeCommandEncoder];
    v10 = v9;
    if (v9)
    {
      [v9 setComputePipelineState:v5];
      OUTLINED_FUNCTION_15_0();
      [v11 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_22_0(v10, v12);
      [OUTLINED_FUNCTION_9_1() setBytes:? length:? atIndex:?];
      [v6 width];
      [v6 height];
      OUTLINED_FUNCTION_12_1();
      [v10 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v10 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
}

uint64_t encodeGaussianFilterToCommandBuffer(void *a1, void *a2, void *a3, uint64_t a4, void *a5, void *a6, void *a7, float a8)
{
  v27[1] = *MEMORY[0x277D85DE8];
  result = 12;
  if (a5 && a6)
  {
    if (a7)
    {
      v16 = a7;
      v17 = a6;
      v18 = a5;
      v19 = a3;
      v20 = a2;
      v21 = a1;
      KernelSize = getKernelSize(a8);
      v23 = KernelSize;
      v24 = MEMORY[0x28223BE20](KernelSize);
      v26 = v27 - v25;
      getGaussianKernel(v24, (v27 - v25), a8);
      encode1DGaussianFilterToCommandBuffer(v21, v20, a4, v18, v17, v26, v23);

      encode1DGaussianFilterToCommandBuffer(v21, v19, a4, v17, v16, v26, v23);
      return 0;
    }
  }

  return result;
}

uint64_t encodeGaussianFilterToCommandBufferOptim(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, void *a6, void *a7, void *a8)
{
  result = 12;
  if (a5 && a6 && a7)
  {
    if (a8)
    {
      v13 = a8;
      v14 = a7;
      v15 = a6;
      v16 = a3;
      v17 = a1;
      encode1DGaussianFilterToCommandBufferOptim();
      encode1DGaussianFilterToCommandBufferOptim();

      return 0;
    }
  }

  return result;
}

void encodeResizeToCommandBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  OUTLINED_FUNCTION_27();
  a28 = v31;
  a29 = v32;
  v34 = v33;
  v36 = v35;
  OUTLINED_FUNCTION_11_1();
  v38 = v37;
  v40 = v39;
  v41 = v29;
  v42 = v30;
  v43 = v42;
  a16 = v34;
  a17 = v36;
  if (v41 && v42)
  {
    v44 = [v38 computeCommandEncoder];
    v45 = v44;
    if (v44)
    {
      [v44 setComputePipelineState:v40];
      OUTLINED_FUNCTION_15_0();
      [v46 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_22_0(v45, v47);
      [OUTLINED_FUNCTION_9_1() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_9_1() setBytes:? length:? atIndex:?];
      [v45 setBytes:&a16 length:4 atIndex:1];
      [v43 width];
      [v43 height];
      OUTLINED_FUNCTION_12_1();
      [v45 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v45 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
}

uint64_t encodeDifferenceImagesToCommandBuffer()
{
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  v12 = v1;
  v13 = v12;
  v14 = 12;
  if (v10 && v11 && v12)
  {
    v15 = [v7 computeCommandEncoder];
    v16 = v15;
    if (v15)
    {
      [v15 setComputePipelineState:v9];
      OUTLINED_FUNCTION_15_0();
      [v17 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_22_0(v16, v18);
      [v16 setTexture:v13 atIndex:2];
      v19 = (v5 - 1 + [v10 width]) / v5;
      v21 = (v5 - 1 + [v10 height]) / v5;
      OUTLINED_FUNCTION_15();
      [v16 dispatchThreadgroups:v5 threadsPerThreadgroup:{v5, 1, v19, v21, 1}];
      [v16 endEncoding];
      v14 = 0;
    }

    else
    {
      v14 = 9;
    }
  }

  return v14;
}

uint64_t encodesubtractKernelOctaveToCommandBuffer(void *a1, void *a2, uint64_t a3, id *a4, void *a5, int a6)
{
  v10 = a1;
  v11 = a2;
  if (a6 < 1)
  {
LABEL_6:
    v16 = [v10 computeCommandEncoder];
    v17 = v16;
    if (v16)
    {
      [v16 setComputePipelineState:v11];
      OUTLINED_FUNCTION_18_0(v17, v18, a4);
      [v17 setTextures:a5 withRange:{8, 16}];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [*a4 width];
      [*a4 height];
      OUTLINED_FUNCTION_12_1();
      [v17 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v17 endEncoding];
      v12 = 0;
    }

    else
    {
      v12 = 9;
    }
  }

  else
  {
    v12 = 12;
    v13 = a4;
    v14 = a5;
    v15 = a6;
    while (*v13 && *v14)
    {
      ++v14;
      ++v13;
      if (!--v15)
      {
        goto LABEL_6;
      }
    }
  }

  return v12;
}

void encodeFindScaleSpaceExtermaToCommandBuffer()
{
  OUTLINED_FUNCTION_0_9();
  v3 = v2;
  v5 = v4;
  OUTLINED_FUNCTION_10_1();
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v7;
  v13 = v0;
  v14 = v1;
  v15 = v5;
  v16 = v3;
  v17 = v16;
  if (v12 && v13 && v14 && v15 && v16)
  {
    v18 = [v9 computeCommandEncoder];
    v19 = v18;
    if (v18)
    {
      [v18 setComputePipelineState:v11];
      OUTLINED_FUNCTION_15_0();
      [v20 setTexture:? atIndex:?];
      OUTLINED_FUNCTION_22_0(v19, v21);
      [v19 setTexture:v14 atIndex:2];
      [OUTLINED_FUNCTION_7_2() setBuffer:? offset:? atIndex:?];
      [OUTLINED_FUNCTION_8_2() setBuffer:? offset:? atIndex:?];
      [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
      [v13 width];
      [v13 height];
      OUTLINED_FUNCTION_12_1();
      [v19 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v19 endEncoding];
    }
  }

  OUTLINED_FUNCTION_1_10();
}

void encodeSubtractAndisExtermum(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, int64x2_t a9, uint64_t a10, uint64_t a11, unint64_t a12, unint64_t a13, uint64_t a14, int a15, int a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30)
{
  OUTLINED_FUNCTION_0_9();
  a29 = v32;
  a30 = v33;
  v35 = v34;
  v37 = v36;
  OUTLINED_FUNCTION_10_1();
  v39 = v38;
  v41 = v40;
  v43 = v42;
  v45 = v44;
  v46 = v43;
  v47 = v30;
  v48 = v31;
  v49 = 0;
  a16 = v37;
  a15 = v35;
  while (*(v41 + v49) && *(v39 + v49))
  {
    OUTLINED_FUNCTION_21_0();
    if (v50)
    {
      if (v47 && v48)
      {
        v51 = [v45 computeCommandEncoder];
        v52 = v51;
        if (v51)
        {
          [v51 setComputePipelineState:v46];
          OUTLINED_FUNCTION_18_0(v52, v53, v41);
          [v52 setTextures:v39 withRange:{8, 16}];
          OUTLINED_FUNCTION_5_2(v52, v54);
          OUTLINED_FUNCTION_6_2(v52, v55);
          [OUTLINED_FUNCTION_16() setBytes:? length:? atIndex:?];
          [OUTLINED_FUNCTION_16() setBytes:? length:? atIndex:?];
          v56 = ([*v39 width] + 15) >> 4;
          v57 = [*v39 height];
          a12 = v56;
          a13 = (v57 + 15) >> 4;
          a14 = 1;
          a9 = vdupq_n_s64(0x10uLL);
          a10 = 1;
          [v52 dispatchThreadgroups:&a12 threadsPerThreadgroup:&a9];
          [v52 endEncoding];
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_1_10();
}

void encodeisExtermumOctave()
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_10_1();
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = v5;
  v9 = v0;
  v10 = v1;
  v11 = 0;
  while (*(v3 + v11))
  {
    OUTLINED_FUNCTION_21_0();
    if (v12)
    {
      if (v9 && v10)
      {
        v13 = [v7 computeCommandEncoder];
        v14 = v13;
        if (v13)
        {
          [v13 setComputePipelineState:v8];
          OUTLINED_FUNCTION_13_0();
          [v15 setTextures:? withRange:?];
          OUTLINED_FUNCTION_5_2(v14, v16);
          OUTLINED_FUNCTION_6_2(v14, v17);
          [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
          [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
          [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
          [*v3 width];
          [*v3 height];
          OUTLINED_FUNCTION_15();
          [v14 dispatchThreadgroups:? threadsPerThreadgroup:?];
          [v14 endEncoding];
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_1_10();
}

uint64_t encodeAdjustLocalExtremasWithThreshold(void *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7, void *a8, int a9)
{
  v14 = a1;
  v15 = a2;
  v16 = a5;
  v17 = a7;
  v18 = a8;
  v19 = v18;
  if (a9 < 1)
  {
    v24 = 0;
  }

  else
  {
    v20 = 1;
    v21 = a4;
    do
    {
      v23 = *v21++;
      v22 = v23;
      if (v20 >= a9)
      {
        break;
      }

      ++v20;
    }

    while (v22);
    v24 = v22 == 0;
  }

  v25 = 12;
  if (v18 && v17 && v16 && !v24)
  {
    if (*[v18 contents])
    {
      v26 = [v14 computeCommandEncoder];
      v27 = v26;
      if (v26)
      {
        [v26 setComputePipelineState:v15];
        OUTLINED_FUNCTION_18_0(v27, v28, a4);
        OUTLINED_FUNCTION_5_2(v27, v29);
        [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
        [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
        [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
        [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
        [v27 setBuffer:v17 offset:0 atIndex:5];
        OUTLINED_FUNCTION_13_0();
        [v30 setBuffer:? offset:? atIndex:?];
        [OUTLINED_FUNCTION_14_0() setBytes:? length:? atIndex:?];
        OUTLINED_FUNCTION_17_0();
        OUTLINED_FUNCTION_2_6();
        [v27 dispatchThreadgroups:? threadsPerThreadgroup:?];
        [v27 endEncoding];
        v25 = 0;
      }

      else
      {
        v25 = 9;
      }
    }

    else
    {
      v25 = 0;
    }
  }

  return v25;
}

void EncodeCalculateOrientations(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31)
{
  OUTLINED_FUNCTION_0_9();
  OUTLINED_FUNCTION_3_6();
  v35 = v34;
  v37 = v36;
  v39 = v38;
  v40 = v37;
  v41 = v31;
  v42 = v32;
  v43 = v33;
  v44 = a31;
  v45 = 0;
  while (*(v35 + v45))
  {
    OUTLINED_FUNCTION_21_0();
    if (v46)
    {
      if (v41 && v43 && v44 && *[v44 contents])
      {
        v47 = [v39 computeCommandEncoder];
        v48 = v47;
        if (v47)
        {
          [v47 setComputePipelineState:v40];
          OUTLINED_FUNCTION_18_0(v48, v49, v35);
          OUTLINED_FUNCTION_5_2(v48, v50);
          OUTLINED_FUNCTION_6_2(v48, v51);
          [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
          [OUTLINED_FUNCTION_7_2() setBuffer:? offset:? atIndex:?];
          [OUTLINED_FUNCTION_8_2() setBuffer:? offset:? atIndex:?];
          [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
          [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_2_6();
          [v48 dispatchThreadgroups:? threadsPerThreadgroup:?];
          [v48 endEncoding];
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_1_10();
}

void EncodeCalculateOrientationsOptimized(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, int64x2_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, uint64_t a31, void *a32)
{
  OUTLINED_FUNCTION_0_9();
  a28 = v36;
  a29 = v38;
  OUTLINED_FUNCTION_3_6();
  v40 = v39;
  v42 = v41;
  v43 = a32;
  v44 = a30;
  v46 = v45;
  v47 = v42;
  v48 = v32;
  v49 = v33;
  a15 = v35;
  v50 = v34;
  v51 = v44;
  a14 = v37;
  v52 = v43;
  v53 = 0;
  while (*(v40 + v53))
  {
    OUTLINED_FUNCTION_21_0();
    if (v54)
    {
      if (v48)
      {
        if (v49)
        {
          if (v50)
          {
            if (v51)
            {
              v55 = *[v51 contents];
              if (v55)
              {
                v56 = [v46 computeCommandEncoder];
                v57 = v56;
                if (v56)
                {
                  [v56 setComputePipelineState:v47];
                  OUTLINED_FUNCTION_18_0(v57, v58, v40);
                  OUTLINED_FUNCTION_5_2(v57, v59);
                  OUTLINED_FUNCTION_6_2(v57, v60);
                  [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
                  [OUTLINED_FUNCTION_7_2() setBuffer:? offset:? atIndex:?];
                  [OUTLINED_FUNCTION_8_2() setBuffer:? offset:? atIndex:?];
                  [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
                  [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
                  [v57 setBuffer:v52 offset:0 atIndex:7];
                  a12 = v55;
                  a13 = vdupq_n_s64(1uLL);
                  a9 = xmmword_2487C3808;
                  a10 = 1;
                  [v57 dispatchThreadgroups:&a12 threadsPerThreadgroup:&a9];
                  [v57 endEncoding];
                }
              }
            }
          }
        }
      }

      break;
    }
  }

  OUTLINED_FUNCTION_1_10();
}

void EncodeCalculateOrientationsOptimized2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __int128 a9, uint64_t a10, uint64_t a11, uint64_t a12, int64x2_t a13, int a14, int a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, void *a30, int a31, unsigned int a32)
{
  OUTLINED_FUNCTION_0_9();
  a28 = v36;
  a29 = v38;
  OUTLINED_FUNCTION_3_6();
  v40 = v39;
  v42 = v41;
  v43 = a32;
  v44 = a30;
  v46 = v45;
  v47 = v42;
  v48 = v32;
  v49 = v33;
  a15 = v35;
  v50 = v34;
  v51 = v44;
  v52 = v51;
  a14 = v37;
  if (v43 < 1)
  {
    v57 = 0;
  }

  else
  {
    v53 = 1;
    v54 = v40;
    do
    {
      v56 = *v54++;
      v55 = v56;
      if (v53 >= v43)
      {
        break;
      }

      ++v53;
    }

    while (v55);
    v57 = v55 == 0;
  }

  if (v51)
  {
    if (v50)
    {
      if (v49)
      {
        if (v48)
        {
          if (!v57)
          {
            v58 = *[v51 contents];
            if (v58)
            {
              v59 = [v46 computeCommandEncoder];
              v60 = v59;
              if (v59)
              {
                [v59 setComputePipelineState:v47];
                OUTLINED_FUNCTION_18_0(v60, v61, v40);
                OUTLINED_FUNCTION_5_2(v60, v62);
                OUTLINED_FUNCTION_6_2(v60, v63);
                [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
                [OUTLINED_FUNCTION_7_2() setBuffer:? offset:? atIndex:?];
                [OUTLINED_FUNCTION_8_2() setBuffer:? offset:? atIndex:?];
                [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
                [OUTLINED_FUNCTION_4_2() setBytes:? length:? atIndex:?];
                a12 = v58;
                a13 = vdupq_n_s64(1uLL);
                a9 = xmmword_2487C3808;
                a10 = 1;
                [v60 dispatchThreadgroups:&a12 threadsPerThreadgroup:&a9];
                [v60 endEncoding];
              }
            }
          }
        }
      }
    }
  }

  OUTLINED_FUNCTION_1_10();
}

void EncodeCalculateOrientations2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, int a16, int a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, void *a32, uint64_t a33, void *a34)
{
  OUTLINED_FUNCTION_0_9();
  a30 = v36;
  a31 = v37;
  v39 = v38;
  v41 = v40;
  v43 = v42;
  OUTLINED_FUNCTION_10_1();
  v45 = v44;
  v47 = v46;
  v48 = a34;
  v49 = a32;
  v51 = v50;
  v52 = v47;
  v53 = v34;
  v54 = v35;
  a17 = v43;
  v55 = v41;
  v56 = v49;
  a16 = v39;
  v57 = v48;
  v58 = 0;
  while (*(v45 + v58))
  {
    OUTLINED_FUNCTION_21_0();
    if (v59)
    {
      if (v53 && v54 && v55 && v56 && v57 && *[v56 contents])
      {
        v66 = v51;
        v60 = [v51 computeCommandEncoder];
        v61 = v60;
        if (v60)
        {
          [v60 setComputePipelineState:v52];
          OUTLINED_FUNCTION_18_0(v61, v62, v45);
          OUTLINED_FUNCTION_5_2(v61, v63);
          OUTLINED_FUNCTION_6_2(v61, v64);
          [v61 setBytes:&a17 length:4 atIndex:2];
          OUTLINED_FUNCTION_13_0();
          [v65 setBuffer:? offset:? atIndex:?];
          [v61 setBuffer:v56 offset:0 atIndex:4];
          [v61 setBytes:&a33 length:4 atIndex:5];
          [v61 setBytes:&a16 length:4 atIndex:6];
          [v61 setBuffer:v57 offset:0 atIndex:7];
          OUTLINED_FUNCTION_17_0();
          OUTLINED_FUNCTION_2_6();
          [v61 dispatchThreadgroups:? threadsPerThreadgroup:?];
          [v61 endEncoding];
        }

        v51 = v66;
      }

      break;
    }
  }

  OUTLINED_FUNCTION_1_10();
}

void encodeFindBestMatchToCommandBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *a29)
{
  OUTLINED_FUNCTION_27();
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v39 = v34;
  v40 = v32;
  v41 = v30;
  v42 = a29;
  v43 = v42;
  if (v39 && v40 && v41 && v42)
  {
    v44 = [v36 computeCommandEncoder];
    v45 = v44;
    if (v44)
    {
      [v44 setComputePipelineState:v38];
      OUTLINED_FUNCTION_15_0();
      [v46 setBuffer:? offset:? atIndex:?];
      [v45 setBuffer:v40 offset:0 atIndex:1];
      [v45 setBuffer:v41 offset:0 atIndex:2];
      OUTLINED_FUNCTION_13_0();
      [v47 setBuffer:? offset:? atIndex:?];
      [OUTLINED_FUNCTION_16() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_16() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_16() setBytes:? length:? atIndex:?];
      OUTLINED_FUNCTION_15();
      [v45 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v45 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
}

void encodeCalculateDescriptorsToCommandBuffer()
{
  OUTLINED_FUNCTION_27();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v9;
  v13 = v5;
  v14 = v3;
  v15 = v14;
  if (v1 < 1)
  {
    v20 = 0;
  }

  else
  {
    v16 = 1;
    v17 = v7;
    do
    {
      v19 = *v17++;
      v18 = v19;
      if (v16 >= v1)
      {
        break;
      }

      ++v16;
    }

    while (v18);
    v20 = v18 == 0;
  }

  if (v14 && v13 && !v20)
  {
    v21 = [v11 computeCommandEncoder];
    v22 = v21;
    if (v21)
    {
      [v21 setComputePipelineState:v12];
      [v22 setTextures:v7 withRange:{0, 80}];
      OUTLINED_FUNCTION_5_2(v22, v23);
      OUTLINED_FUNCTION_6_2(v22, v24);
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      [OUTLINED_FUNCTION_21() setBytes:? length:? atIndex:?];
      OUTLINED_FUNCTION_15();
      [v22 dispatchThreadgroups:? threadsPerThreadgroup:?];
      [v22 endEncoding];
    }
  }

  OUTLINED_FUNCTION_28();
}

__CVBuffer *createAndReadFlo(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v9 = v1;
  v10 = 0;
  if (OUTLINED_FUNCTION_0_18(v1, v2, v3, v4, v5, v6, v7, v8, v60, __n, v70, v73, __src, 0, 0, v81, 0) && *__ptr == 202020.0)
  {
    if (OUTLINED_FUNCTION_1_19(&v80) && OUTLINED_FUNCTION_1_19(&v79))
    {
      v12 = v79;
      v11 = v80;
      v13 = 2 * v79;
      PixelBuffer = CreatePixelBuffer(v80, 2 * v79, 1278226536);
      v10 = PixelBuffer;
      if (PixelBuffer)
      {
        v15 = CVPixelBufferGetBytesPerRow(PixelBuffer) >> 1;
        v16 = v13 * v15;
        __srca = malloc_type_malloc(v16, 0x1000040BDFB0063uLL);
        if (__srca)
        {
          v17 = malloc_type_malloc(v16, 0x1000040BDFB0063uLL);
          v74 = v17;
          if (v17)
          {
            __na = v16;
            v71 = v10;
            if (v12)
            {
              v25 = 0;
              v26 = 2 * v15;
              v28 = v17;
              v27 = __srca;
              while (!v11)
              {
LABEL_16:
                ++v25;
                v28 = (v28 + v26);
                v27 = (v27 + v26);
                if (v25 == v12)
                {
                  goto LABEL_17;
                }
              }

              v29 = v11;
              v30 = v27;
              v31 = v28;
              while (1)
              {
                v32 = OUTLINED_FUNCTION_0_18(v17, v18, v19, v20, v21, v22, v23, v24, v61, __na, v71, v74, __srca, v79, v80, v81, __ptr[0]);
                if (!v32)
                {
                  break;
                }

                *v30 = OUTLINED_FUNCTION_4_5(v32, v33, v34, v35, v36, v37, v38, v39, v62, __nb, v71, v74, __srca, v79, v80, v81, *__ptr);
                v48 = OUTLINED_FUNCTION_0_18(v40, v41, v42, v43, v44, v45, v46, v47, v63, __nd, v72, v75, __srcb, v79, v80, v81, __ptr[0]);
                if (!v48)
                {
                  break;
                }

                *v31++ = OUTLINED_FUNCTION_4_5(v48, v49, v50, v51, v52, v53, v54, v55, v64, __nc, v71, v74, __srca, v79, v80, v81, *__ptr);
                ++v30;
                if (!--v29)
                {
                  goto LABEL_16;
                }
              }
            }

            else
            {
LABEL_17:
              v56 = OUTLINED_FUNCTION_2_10();
              CVPixelBufferLockBaseAddress(v56, v57);
              BaseAddress = CVPixelBufferGetBaseAddress(v71);
              memcpy(BaseAddress, __srca, __na);
              memcpy(&BaseAddress[__na], v74, __na);
            }

            free(__srca);
            v10 = v71;
            free(v74);
          }

          else
          {
            free(__srca);
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  fclose(v9);
  return v10;
}

__CVBuffer *createAndReadFloWithRotation(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v9 = v1;
  v10 = 0;
  if (OUTLINED_FUNCTION_0_18(v1, v2, v3, v4, v5, v6, v7, v8, v93, __n, v109, v113, __src, 0, 0, v123, 0) && *__ptr == 202020.0)
  {
    if (OUTLINED_FUNCTION_1_19(&v122) && OUTLINED_FUNCTION_1_19(&v121))
    {
      v12 = v121;
      v11 = v122;
      if (v122 >= v121)
      {
        v13 = v121;
      }

      else
      {
        v13 = v122;
      }

      if (v122 <= v121)
      {
        v14 = v121;
      }

      else
      {
        v14 = v122;
      }

      PixelBuffer = CreatePixelBuffer(v14, 2 * v13, 1278226536);
      v10 = PixelBuffer;
      if (PixelBuffer)
      {
        v16 = CVPixelBufferGetBytesPerRow(PixelBuffer) >> 1;
        __srca = malloc_type_malloc(2 * v13 * v16, 0x1000040BDFB0063uLL);
        if (__srca)
        {
          v17 = malloc_type_malloc(2 * v13 * v16, 0x1000040BDFB0063uLL);
          v114 = v17;
          if (v17)
          {
            __na = 2 * v13 * v16;
            v110 = v10;
            if (v11 >= v12)
            {
              if (v13)
              {
                v56 = 0;
                v57 = 2 * v16;
                v58 = v17;
                v59 = __srca;
                while (!v14)
                {
LABEL_31:
                  ++v56;
                  v58 = (v58 + v57);
                  v59 = (v59 + v57);
                  if (v56 == v13)
                  {
                    goto LABEL_32;
                  }
                }

                v60 = v14;
                v61 = v59;
                v62 = v58;
                while (1)
                {
                  v63 = OUTLINED_FUNCTION_0_18(v17, v18, v19, v20, v21, v22, v23, v24, v94, __na, v110, v114, __srca, v121, v122, v123, __ptr[0]);
                  if (!v63)
                  {
                    break;
                  }

                  *v61 = OUTLINED_FUNCTION_4_5(v63, v64, v65, v66, v67, v68, v69, v70, v98, __nd, v110, v114, __srca, v121, v122, v123, *__ptr);
                  v79 = OUTLINED_FUNCTION_0_18(v71, v72, v73, v74, v75, v76, v77, v78, v99, __ng, v112, v116, __srcc, v121, v122, v123, __ptr[0]);
                  if (!v79)
                  {
                    break;
                  }

                  *v62++ = OUTLINED_FUNCTION_4_5(v79, v80, v81, v82, v83, v84, v85, v86, v100, __ne, v110, v114, __srca, v121, v122, v123, *__ptr);
                  ++v61;
                  if (!--v60)
                  {
                    goto LABEL_31;
                  }
                }
              }

              else
              {
LABEL_32:
                v87 = OUTLINED_FUNCTION_2_10();
                CVPixelBufferLockBaseAddress(v87, v88);
                BaseAddress = CVPixelBufferGetBaseAddress(v110);
                memcpy(BaseAddress, __srca, __na);
                memcpy(&BaseAddress[__na], v114, __na);
                v90 = OUTLINED_FUNCTION_2_10();
                CVPixelBufferUnlockBaseAddress(v90, v91);
              }
            }

            else
            {
              v25 = 0;
              v26 = v16 * (v11 - 1);
              v27 = &__srca[2 * v26];
              v28 = 2 * v16;
              v29 = &v17[2 * v26];
              while (!v11)
              {
LABEL_22:
                ++v25;
                v27 += 2;
                v29 += 2;
                if (v25 == v12)
                {
                  goto LABEL_32;
                }
              }

              v30 = 0;
              v31 = v11;
              while (1)
              {
                v32 = OUTLINED_FUNCTION_0_18(v17, v18, v19, v20, v21, v22, v23, v24, v94, __na, v110, v114, __srca, v121, v122, v123, __ptr[0]);
                if (!v32)
                {
                  break;
                }

                *&v29[v30] = -COERCE_SHORT_FLOAT(OUTLINED_FUNCTION_4_5(v32, v33, v34, v35, v36, v37, v38, v39, v95, __nb, v110, v114, __srca, v121, v122, v123, *__ptr));
                v48 = OUTLINED_FUNCTION_0_18(v40, v41, v42, v43, v44, v45, v46, v47, v96, __nf, v111, v115, __srcb, v121, v122, v123, __ptr[0]);
                if (!v48)
                {
                  break;
                }

                *&v27[v30] = OUTLINED_FUNCTION_4_5(v48, v49, v50, v51, v52, v53, v54, v55, v97, __nc, v110, v114, __srca, v121, v122, v123, *__ptr);
                v30 -= v28;
                if (!--v31)
                {
                  goto LABEL_22;
                }
              }
            }

            free(__srca);
            v10 = v110;
            free(v114);
          }

          else
          {
            free(__srca);
          }
        }
      }
    }

    else
    {
      v10 = 0;
    }
  }

  fclose(v9);
  return v10;
}

__CVBuffer *createAndReadDepthWithRotation(const char *a1)
{
  v1 = fopen(a1, "rb");
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v37 = 0.0;
  v35 = 0;
  v36 = 0;
  v3 = 0;
  if (OUTLINED_FUNCTION_1_19(&v37) && v37 == 202020.0)
  {
    if (OUTLINED_FUNCTION_1_19(&v36) && OUTLINED_FUNCTION_1_19(&v35))
    {
      v5 = v35;
      v4 = v36;
      if (v36 >= v35)
      {
        v6 = v35;
      }

      else
      {
        v6 = v36;
      }

      if (v36 <= v35)
      {
        v7 = v35;
      }

      else
      {
        v7 = v36;
      }

      PixelBuffer = CreatePixelBuffer(v7, v6, 1278226536);
      v3 = PixelBuffer;
      if (PixelBuffer)
      {
        v9 = CVPixelBufferGetBytesPerRow(PixelBuffer) >> 1;
        v10 = malloc_type_malloc(2 * v6 * v9, 0x1000040BDFB0063uLL);
        if (v10)
        {
          v11 = v10;
          __n = 2 * v6 * v9;
          if (v4 >= v5)
          {
            if (v6)
            {
              v22 = 0;
              v23 = 2 * v9;
              v24 = v10;
              while (1)
              {
                v25 = v7;
                v26 = v24;
                if (v7)
                {
                  break;
                }

LABEL_29:
                ++v22;
                v24 = (v24 + v23);
                if (v22 == v6)
                {
                  goto LABEL_30;
                }
              }

              while (OUTLINED_FUNCTION_1_19(&v37))
              {
                _S0 = v37;
                __asm { FCVT            H0, S0 }

                *v26 = LOWORD(_S0);
                if (!OUTLINED_FUNCTION_1_19(&v37))
                {
                  break;
                }

                ++v26;
                if (!--v25)
                {
                  goto LABEL_29;
                }
              }
            }

            else
            {
LABEL_30:
              v28 = OUTLINED_FUNCTION_2_10();
              CVPixelBufferLockBaseAddress(v28, v29);
              BaseAddress = CVPixelBufferGetBaseAddress(v3);
              memcpy(BaseAddress, v11, __n);
              v31 = OUTLINED_FUNCTION_2_10();
              CVPixelBufferUnlockBaseAddress(v31, v32);
            }
          }

          else
          {
            v12 = 0;
            v13 = &v10[2 * v9 * (v4 - 1)];
            v14 = -2 * v9;
            while (!v4)
            {
LABEL_21:
              ++v12;
              v13 += 2;
              if (v12 == v5)
              {
                goto LABEL_30;
              }
            }

            v15 = v4;
            v16 = v13;
            while (OUTLINED_FUNCTION_1_19(&v37) && OUTLINED_FUNCTION_1_19(&v37))
            {
              _S0 = v37;
              __asm { FCVT            H0, S0 }

              *v16 = LOWORD(_S0);
              v16 = (v16 + v14);
              if (!--v15)
              {
                goto LABEL_21;
              }
            }
          }

          free(v11);
        }
      }
    }

    else
    {
      v3 = 0;
    }
  }

  fclose(v2);
  return v3;
}

_DWORD *writeFlo(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v23 = CVPixelBufferGetHeight(pixelBuffer) >> 1;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  __ptr = 1212500304;
  fwrite(&__ptr, 1uLL, 4uLL, a1);
  fwrite(&Width, 4uLL, 1uLL, a1);
  fwrite(&v23, 4uLL, 1uLL, a1);
  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  v6 = v23;
  result = malloc_type_malloc(8 * Width, 0x100004052888210uLL);
  if (result)
  {
    v8 = result;
    if (v23)
    {
      v9 = 0;
      v10 = &BaseAddress[v6 * BytesPerRow];
      do
      {
        v11 = Width;
        if (Width)
        {
          v12 = 0;
          v13 = v8 + 1;
          do
          {
            _H0 = *&BaseAddress[2 * v12];
            __asm { FCVT            S0, H0 }

            _H1 = *&v10[2 * v12];
            __asm { FCVT            S1, H1 }

            *(v13 - 1) = _S0;
            *v13 = _S1;
            ++v12;
            v13 += 2;
          }

          while (v11 != v12);
        }

        fwrite(v8, 1uLL, 8 * v11, a1);
        BaseAddress += BytesPerRow;
        v10 += BytesPerRow;
        ++v9;
      }

      while (v23 > v9);
    }

    free(v8);
    return CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  }

  return result;
}

FILE *writeFrameList(__CVBuffer *a1, const char *a2, int a3, int a4)
{
  v16 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_3_9();
  if ((v8 & 4) != 0)
  {
    v9 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v13[0] = 67109378;
      v13[1] = 0;
      v14 = 2080;
      v15 = a2;
      _os_log_impl(&dword_24874B000, v9, OS_LOG_TYPE_INFO, "Output[%d]: %s\n", v13, 0x12u);
    }
  }

  result = fopen(a2, "wb");
  if (result)
  {
    v11 = result;
    if (a4)
    {
      writePNG(result, a1);
    }

    else if (a3 == 875704422)
    {
      writeYUVPlanar(result, a1);
    }

    else if (a3 == 1380411457 || a3 == 1278226536)
    {
      writeBuffer(result, a1);
    }

    else
    {
      writeBGRA(result, a1);
    }

    return fclose(v11);
  }

  return result;
}

void writeDebugFlo(uint64_t a1, __CVBuffer *a2, uint64_t a3)
{
  v15 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v6 = [v5 stringByDeletingPathExtension];

  v7 = [v6 stringByAppendingFormat:@"_%d.%@", a3, @"flo"];
  v8 = [v7 UTF8String];

  OUTLINED_FUNCTION_3_9();
  if ((v9 & 8) != 0)
  {
    v10 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v14 = v8;
      _os_log_debug_impl(&dword_24874B000, v10, OS_LOG_TYPE_DEBUG, "Debug Output: %s\n", buf, 0xCu);
    }
  }

  v11 = fopen(v8, "wb");
  if (v11)
  {
    v12 = v11;
    writeFlo(v11, a2);
    fclose(v12);
  }
}

void writeDebugFloScore(uint64_t a1, __CVBuffer *a2, uint64_t a3, float a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CCACA8] stringWithUTF8String:a1];
  v8 = [v7 stringByDeletingPathExtension];

  v9 = [v8 stringByAppendingFormat:@"_%d_%.2f.%@", a3, a4, @"flo"];
  v10 = [v9 UTF8String];

  OUTLINED_FUNCTION_3_9();
  if ((v11 & 8) != 0)
  {
    v12 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315138;
      v16 = v10;
      _os_log_debug_impl(&dword_24874B000, v12, OS_LOG_TYPE_DEBUG, "Debug Output: %s\n", buf, 0xCu);
    }
  }

  v13 = fopen(v10, "wb");
  if (v13)
  {
    v14 = v13;
    writeFlo(v13, a2);
    fclose(v14);
  }
}

id createSingleTextureFromYuvBuffer(__CVBuffer *a1, void *a2, int a3, int a4)
{
  v7 = a2;
  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (IOSurface && (v9 = IOSurface, bzero(v26, 0x84uLL), (MetalFormat = getMetalFormat(a1, a3)) != 0))
  {
    v11 = MetalFormat;
    v12 = OUTLINED_FUNCTION_2_10();
    WidthOfPlane = IOSurfaceGetWidthOfPlane(v12, v13);
    v15 = OUTLINED_FUNCTION_2_10();
    HeightOfPlane = IOSurfaceGetHeightOfPlane(v15, v16);
    ElementWidth = IOSurfaceGetElementWidth(v9);
    ElementHeight = IOSurfaceGetElementHeight(v9);
    v20 = v11 == 540 || v11 == 543;
    v21 = 3;
    if (v20)
    {
      v21 = 65539;
    }

    if (a4)
    {
      v22 = 1;
    }

    else
    {
      v22 = v21;
    }

    adjustColorAndSpatialKey(v9, v26, 1);
    v23 = [MEMORY[0x277CD7058] texture2DDescriptorWithPixelFormat:v11 width:WidthOfPlane / ElementWidth height:HeightOfPlane / ElementHeight mipmapped:0];
    [v23 setUsage:v22];
    v24 = [v7 newTextureWithDescriptor:v23 iosurface:CVPixelBufferGetIOSurface(a1) plane:0];
    memcpy(__dst, v26, sizeof(__dst));
    IOSurfaceSetBulkAttachments2();
  }

  else
  {
    v23 = 0;
    v24 = 0;
  }

  return v24;
}

id createSingleCachedTextureFromPixelBuffer(__CVBuffer *a1, __CVMetalTextureCache *a2, void *a3, int a4, int a5)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v9 = a3;
  textureOut = 0;
  bzero(__src, 0x84uLL);
  if (!a1)
  {
    OUTLINED_FUNCTION_3_9();
    if ((v24 & 0x10) != 0)
    {
      v25 = global_logger;
      if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
      {
        *__dst = 0;
        _os_log_error_impl(&dword_24874B000, v25, OS_LOG_TYPE_ERROR, "pixelBuffer is NULL", __dst, 2u);
      }
    }

    goto LABEL_23;
  }

  IOSurface = CVPixelBufferGetIOSurface(a1);
  if (!IOSurface || (v11 = IOSurface, (MetalFormat = getMetalFormat(a1, a4)) == 0))
  {
LABEL_23:
    v20 = 0;
    goto LABEL_24;
  }

  v13 = MetalFormat;
  adjustColorAndSpatialKey(v11, __src, 1);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(a1, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(a1, 0);
  v16 = v13 == 540 || v13 == (MTLPixelFormatRG8Unorm_sRGB|0x200);
  v17 = 3;
  if (v16)
  {
    v17 = 65539;
  }

  if (a5)
  {
    v18 = 1;
  }

  else
  {
    v18 = v17;
  }

  v33 = *MEMORY[0x277CC4D50];
  v19 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:v18];
  v34[0] = v19;
  v20 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v34 forKeys:&v33 count:1];

  if (CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], a2, a1, v20, v13, WidthOfPlane, HeightOfPlane, 0, &textureOut))
  {
    OUTLINED_FUNCTION_3_9();
    if ((v26 & 0x10) == 0)
    {
      goto LABEL_24;
    }

    v27 = global_logger;
    if (!os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_24;
    }

    *__dst = 0;
    v28 = "Unable to cache pixel buffer texture";
    goto LABEL_31;
  }

  v21 = CVMetalTextureGetTexture(textureOut);
  if (v21)
  {
    v22 = v21;
    memcpy(__dst, __src, 0x84uLL);
    IOSurfaceSetBulkAttachments2();
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_3_9();
  if ((v29 & 0x10) != 0)
  {
    v27 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_ERROR))
    {
      *__dst = 0;
      v28 = "Unable to get metal texture address";
LABEL_31:
      _os_log_error_impl(&dword_24874B000, v27, OS_LOG_TYPE_ERROR, v28, __dst, 2u);
    }
  }

LABEL_24:
  v22 = 0;
LABEL_15:
  if (textureOut)
  {
    CFRelease(textureOut);
    textureOut = 0;
  }

  return v22;
}

uint64_t readBufferObjectFromFile(FILE *a1, uint64_t a2, uint64_t a3)
{
  v19 = 0;
  v20 = 0;
  v17 = 0;
  v18 = 0;
  result = getTensorSize(a3, &v20, &v19, &v18, &v17);
  if (result)
  {
    v5 = v19;
    v6 = v17;
    v7 = v18;
    printf("Reading input: %ld x %ld x %ld, stride = %ld\n", v20, v19, v18, v17);
    e5rt_buffer_object_get_size();
    e5rt_buffer_object_get_data_ptr();
    iosurface = e5rt_buffer_object_get_iosurface();
    if (iosurface)
    {
      v9 = iosurface;
      last_error_message = e5rt_get_last_error_message();
      printf("FAILURE: %s returned error = %u. msg = %s\n", "e5rt_buffer_object_get_iosurface(buffer, &iosurface)", v9, last_error_message);
      return 0;
    }

    else
    {
      v11 = v7 * v5;
      if (v11)
      {
        v12 = 1;
        v13 = 0;
        do
        {
          v14 = fread(v13, 1uLL, v6, a1);
          v13 += v6;
          v15 = v12++;
        }

        while (v14 == v6 && v11 > v15);
        if (v14 != v6)
        {
          puts("Failed to read input");
        }
      }

      return 1;
    }
  }

  return result;
}

void loadTextureArray(FILE *a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v11 = a2;
  v9 = malloc_type_malloc(2 * a3 * a4 * a5, 0x1000040BDFB0063uLL);
  if (v9)
  {
    v10 = v9;
    fread(v9, 1uLL, 2 * a3 * a4 * a5, a1);
    loadTexture(v10, v11, a3, a4, a5);
    free(v10);
  }
}

void saveTextureArray(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 width];
  v5 = [v3 height];
  v6 = [v3 arrayLength];
  v7 = [v3 width];
  v8 = [v3 height] * v7;
  if ([v3 pixelFormat] == 55)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  v10 = v8 << v9;
  OUTLINED_FUNCTION_1_20();
  v21 = malloc_type_malloc(v11, v12);
  if (v21)
  {
    v19 = a1;
    if (v6)
    {
      v13 = 0;
      v14 = 1;
      v15 = v21;
      do
      {
        memset(v22, 0, 24);
        v22[3] = v4;
        v22[4] = v5;
        v22[5] = 1;
        [v3 getBytes:v15 bytesPerRow:v4 << v9 bytesPerImage:(v5 * v4) << v9 fromRegion:v22 mipmapLevel:0 slice:{v13, v19}];
        v15 += v10;
        v13 = v14;
      }

      while (v6 > v14++);
    }

    v17 = [v3 pixelFormat];
    v18 = 1;
    if (v17 == 55)
    {
      v18 = 2;
    }

    fwrite(v21, 1uLL, ((v6 * v5) << v18) * v4, v20);
    free(v21);
  }
}

CVPixelBufferRef create420vBufferFromFile(void *a1, FILE *a2, size_t a3)
{
  v15[3] = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (v5)
  {
    PixelBufferExtended = CreatePixelBufferExtended(a2, a3, 875704422, 0, 0);
    if (PixelBufferExtended && fopen([v5 UTF8String], "rb"))
    {
      OUTLINED_FUNCTION_4_7();
      readYUVPlanar(v7, v8);
      fclose(a2);
      v9 = *MEMORY[0x277CC4C20];
      v10 = *MEMORY[0x277CC4CC0];
      v14[0] = *MEMORY[0x277CC4C00];
      v14[1] = v10;
      v11 = *MEMORY[0x277CC4CD8];
      v15[0] = v9;
      v15[1] = v11;
      v14[2] = *MEMORY[0x277CC4D10];
      v15[2] = *MEMORY[0x277CC4D28];
      v12 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];
      CMSetAttachments(PixelBufferExtended, v12, 1u);
    }
  }

  else
  {
    PixelBufferExtended = 0;
  }

  return PixelBufferExtended;
}

uint64_t readYUVPlanar(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = OUTLINED_FUNCTION_0_20();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v6, v7);
  v9 = OUTLINED_FUNCTION_2_11();
  v11 = CVPixelBufferGetBytesPerRowOfPlane(v9, v10);
  OUTLINED_FUNCTION_1_20();
  v13 = malloc_type_malloc((Height * Width) >> 1, v12);
  if (!v13)
  {
    return 1;
  }

  v35 = v13;
  v14 = OUTLINED_FUNCTION_0_20();
  CVPixelBufferLockBaseAddress(v14, v15);
  v16 = OUTLINED_FUNCTION_0_20();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v16, v17);
  v19 = OUTLINED_FUNCTION_2_11();
  v21 = CVPixelBufferGetBaseAddressOfPlane(v19, v20);
  if (Height)
  {
    v22 = 1;
    while (1)
    {
      v23 = 1;
      if (fread(BaseAddressOfPlane, 1uLL, Width, a1) != Width)
      {
        break;
      }

      BaseAddressOfPlane += BytesPerRowOfPlane;
      if (Height <= v22++)
      {
        goto LABEL_6;
      }
    }

    v25 = v35;
  }

  else
  {
LABEL_6:
    v23 = 1;
    v25 = v35;
    if (fread(v35, 1uLL, (Height * Width) >> 1, a1) == (Height * Width) >> 1)
    {
      if (Height >= 2)
      {
        LODWORD(v26) = 0;
        v27 = Width >> 1;
        v28 = v35;
        v29 = &v35[(Height * Width) >> 2];
        do
        {
          if (Width >= 2)
          {
            v30 = 0;
            v31 = 1;
            do
            {
              v21[v31 - 1] = v28[v30];
              v21[v31] = v29[v30++];
              v31 += 2;
            }

            while (v27 > v30);
          }

          v28 += v27;
          v29 += v27;
          v21 += v11;
          v26 = (v26 + 1);
        }

        while (Height >> 1 > v26);
      }

      v23 = 0;
    }
  }

  v32 = OUTLINED_FUNCTION_0_20();
  CVPixelBufferUnlockBaseAddress(v32, v33);
  free(v25);
  return v23;
}

CVPixelBufferRef createOpticalFlowFromFile(void *a1, FILE *a2, uint64_t a3)
{
  v5 = a1;
  PixelBufferExtended = CreatePixelBufferExtended(a2, 2 * a3, 1278226536, 0, 0);
  if (PixelBufferExtended && fopen([v5 UTF8String], "rb"))
  {
    OUTLINED_FUNCTION_4_7();
    readBuffer(v7, v8);
    fclose(a2);
  }

  return PixelBufferExtended;
}

CVPixelBufferRef createOpticalFlowTwoComponentFromFile(void *a1, FILE *a2, size_t a3)
{
  v5 = a1;
  PixelBuffer = createPixelBuffer(a2, a3, 0x32433068u, 0);
  if (PixelBuffer && fopen([v5 UTF8String], "rb"))
  {
    OUTLINED_FUNCTION_4_7();
    readBufferInterleaved(v7, v8, 2u);
    fclose(a2);
  }

  return PixelBuffer;
}

uint64_t readBufferInterleaved(FILE *a1, CVPixelBufferRef pixelBuffer, unsigned int a3)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v9 = malloc_type_malloc(2 * a3 * Width * Height, 0xEA513C30uLL);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  v10 = v9;
  if (fread(v9, 1uLL, 2 * a3 * Width * Height, a1) > 2 * a3 * Width * Height)
  {
    free(v10);
    return 0xFFFFFFFFLL;
  }

  v12 = OUTLINED_FUNCTION_0_20();
  CVPixelBufferLockBaseAddress(v12, v13);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3 == 2)
  {
    if (Height)
    {
      LODWORD(v15) = 0;
      v16 = &v10[2 * Height * (Width & 0x7FFFFFFFFFFFFFFFLL)];
      v17 = 2 * Width;
      v18 = v10;
      do
      {
        if (Width)
        {
          v19 = 0;
          do
          {
            *(BaseAddress + v19) = *&v18[2 * v19] | (*&v16[2 * v19] << 16);
            ++v19;
          }

          while (Width > v19);
        }

        v15 = (v15 + 1);
        BaseAddress = (BaseAddress + 4 * (BytesPerRow >> 2));
        v16 += v17;
        v18 += v17;
      }

      while (Height > v15);
    }
  }

  else
  {
    interleave4(v10, BaseAddress, Width, Height, 2 * Width, BytesPerRow);
  }

  v20 = OUTLINED_FUNCTION_0_20();
  CVPixelBufferUnlockBaseAddress(v20, v21);
  free(v10);
  return 0;
}

uint64_t writeBufferFlt32(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  if (!pixelBuffer)
  {
    return 0xFFFFFFFFLL;
  }

  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v7 = OUTLINED_FUNCTION_0_20();
  CVPixelBufferLockBaseAddress(v7, v8);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  OUTLINED_FUNCTION_3_11();
  v11 = malloc_type_malloc(4 * Width, v10);
  if (v11)
  {
    v12 = v11;
    if (!Height)
    {
LABEL_10:
      free(v12);
      v21 = OUTLINED_FUNCTION_0_20();
      CVPixelBufferUnlockBaseAddress(v21, v22);
      return 0;
    }

    LODWORD(v13) = 0;
    while (1)
    {
      if (Width)
      {
        for (i = 0; i != Width; ++i)
        {
          _H0 = *&BaseAddress[2 * i];
          __asm { FCVT            S0, H0 }

          *(v12 + i) = _S0;
        }
      }

      if (fwrite(v12, 1uLL, 4 * Width, a1) != 4 * Width)
      {
        break;
      }

      BaseAddress += BytesPerRow;
      v13 = (v13 + 1);
      if (Height <= v13)
      {
        goto LABEL_10;
      }
    }

    v24 = OUTLINED_FUNCTION_0_20();
    CVPixelBufferUnlockBaseAddress(v24, v25);
    free(v12);
  }

  return 0xFFFFFFFFLL;
}

uint64_t writeBufferInterleaved(FILE *a1, CVPixelBufferRef pixelBuffer, unsigned int a3, unsigned int a4)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  v28 = a3;
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v8 = Height / a3;
  BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
  v9 = v8 * Width;
  v10 = (v8 * Width * a4) << (a4 != 3);
  __ptr = malloc_type_malloc(v10, 0xAD7AE22EuLL);
  if (!__ptr)
  {
    return 0xFFFFFFFFLL;
  }

  CVPixelBufferLockBaseAddress(pixelBuffer, 0);
  BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
  if (a3)
  {
    v12 = BaseAddress;
    v30 = a3;
    v13 = 0;
    v14 = BytesPerRow >> 2;
    while (1)
    {
      if (a4 == 2)
      {
        if (Height >= v28)
        {
          LODWORD(v15) = 0;
          v16 = __ptr;
          v17 = v12;
          do
          {
            if (Width)
            {
              v18 = 0;
              do
              {
                v19 = *(v17 + 4 * v18);
                *&v16[2 * v18] = v19;
                *&v16[2 * v18++ + 2 * v8 * (Width & 0x7FFFFFFFFFFFFFFFLL)] = HIWORD(v19);
              }

              while (Width > v18);
            }

            v17 += 4 * v14;
            v16 += 2 * Width;
            v15 = (v15 + 1);
          }

          while (v8 > v15);
        }
      }

      else if (a4 == 3)
      {
        if (Height >= v28)
        {
          LODWORD(v20) = 0;
          v21 = v12;
          v22 = __ptr;
          do
          {
            if (Width)
            {
              v23 = 0;
              do
              {
                v24 = *(v21 + 4 * v23);
                v22[v23] = v24;
                v22[v23 + v9] = BYTE1(v24);
                v22[2 * v9 + v23++] = BYTE2(v24);
              }

              while (Width > v23);
            }

            v21 += 4 * v14;
            v22 += Width;
            v20 = (v20 + 1);
          }

          while (v8 > v20);
        }
      }

      else
      {
        deinterleave4(v12, __ptr, Width, v8, BytesPerRow, 2 * Width);
      }

      if (fwrite(__ptr, 1uLL, v10, a1) != v10)
      {
        break;
      }

      v12 += BytesPerRow * v8;
      if (++v13 == v30)
      {
        v25 = 0;
        goto LABEL_25;
      }
    }

    v25 = 0xFFFFFFFFLL;
  }

  else
  {
    v25 = 0;
  }

LABEL_25:
  CVPixelBufferUnlockBaseAddress(pixelBuffer, 0);
  free(__ptr);
  return v25;
}

BOOL writeYUVPlanar(FILE *a1, CVPixelBufferRef pixelBuffer)
{
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  v6 = (Height * Width) >> 1;
  OUTLINED_FUNCTION_1_20();
  v8 = malloc_type_malloc(v6, v7);
  if (!v8)
  {
    return 1;
  }

  v9 = v8;
  v10 = OUTLINED_FUNCTION_0_20();
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(v10, v11);
  v13 = OUTLINED_FUNCTION_2_11();
  v15 = CVPixelBufferGetBytesPerRowOfPlane(v13, v14);
  v16 = OUTLINED_FUNCTION_2_11();
  CVPixelBufferLockBaseAddress(v16, v17);
  v18 = OUTLINED_FUNCTION_0_20();
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v18, v19);
  v21 = OUTLINED_FUNCTION_2_11();
  v23 = CVPixelBufferGetBaseAddressOfPlane(v21, v22);
  if (Height)
  {
    v24 = v23;
    v25 = 0;
    v26 = 1;
    do
    {
      if (fwrite(&BaseAddressOfPlane[v25 * BytesPerRowOfPlane], 1uLL, Width, a1) != Width)
      {
        v34 = 1;
        goto LABEL_14;
      }

      v25 = v26;
    }

    while (Height > v26++);
    v6 = (Height * Width) >> 1;
    if (Height != 1)
    {
      LODWORD(v28) = 0;
      v29 = Width >> 1;
      v30 = v9;
      v31 = &v9[(Height * Width) >> 2];
      do
      {
        if (Width >= 2)
        {
          v32 = 0;
          v33 = 1;
          do
          {
            v30[v32] = v24[v33 - 1];
            v31[v32++] = v24[v33];
            v33 += 2;
          }

          while (v29 > v32);
        }

        v30 += v29;
        v31 += v29;
        v24 += v15;
        v28 = (v28 + 1);
      }

      while (Height >> 1 > v28);
    }
  }

  v34 = fwrite(v9, 1uLL, v6, a1) != v6;
LABEL_14:
  v35 = OUTLINED_FUNCTION_2_11();
  CVPixelBufferUnlockBaseAddress(v35, v36);
  free(v9);
  return v34;
}

CVPixelBufferRef createTensorBufferFlowFromFile(void *a1, size_t a2, FILE *a3, uint64_t a4)
{
  v7 = a1;
  PixelBuffer = createPixelBuffer(a2, a4 * a3, 0x4C303068u, 0);
  if (PixelBuffer && fopen([v7 UTF8String], "rb"))
  {
    OUTLINED_FUNCTION_4_7();
    readBuffer(v9, v10);
    fclose(a3);
  }

  return PixelBuffer;
}

void saveTextureBufferFlt32(FILE *a1, void *a2, uint64_t a3, unint64_t a4, float a5)
{
  v16 = a2;
  v9 = [v16 contents];
  v10 = 4 * a3;
  OUTLINED_FUNCTION_3_11();
  v12 = malloc_type_malloc(4 * a3, v11);
  if (v12)
  {
    v13 = v12;
    if (a4)
    {
      LODWORD(v14) = 0;
      while (1)
      {
        if (a3)
        {
          v15 = 0;
          do
          {
            v13[v15] = *(v9 + 4 * v15) * a5;
            ++v15;
          }

          while (a3 != v15);
        }

        if (fwrite(v13, 1uLL, 4 * a3, a1) != v10)
        {
          break;
        }

        v9 += v10;
        v14 = (v14 + 1);
        if (v14 >= a4)
        {
          goto LABEL_9;
        }
      }
    }

    else
    {
LABEL_9:
      free(v13);
    }
  }
}

uint64_t initLookAheadFrameArray(uint64_t a1, int a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 5;
  }

  v4 = *a1;
  if (v4)
  {
    *a1 = 0;
    free(v4);
  }

  *(a1 + 8) = 0;
  v5 = malloc_type_calloc(a2, 0x38uLL, 0xA004049E9B67CuLL);
  *a1 = v5;
  if (!v5)
  {
    return 6;
  }

  *(a1 + 8) = a2;
  if ((global_logLevel & 4) != 0)
  {
    v6 = global_logger;
    if (os_log_type_enabled(global_logger, OS_LOG_TYPE_INFO))
    {
      v8[0] = 67109120;
      v8[1] = a2;
      _os_log_impl(&dword_24874B000, v6, OS_LOG_TYPE_INFO, "Configuration: lookaheadFrames array size:    %d", v8, 8u);
    }
  }

  return 0;
}

CGRect CGRectInset(CGRect rect, CGFloat dx, CGFloat dy)
{
  MEMORY[0x2821115C8](rect.origin, *&rect.origin.y, rect.size, *&rect.size.height, dx, dy);
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

CGRect CGRectIntersection(CGRect r1, CGRect r2)
{
  MEMORY[0x2821115D8](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

CGRect CGRectUnion(CGRect r1, CGRect r2)
{
  MEMORY[0x282111618](r1.origin, *&r1.origin.y, r1.size, *&r1.size.height, r2.origin, *&r2.origin.y, r2.size, *&r2.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

simd_float3x3 __invert_f3(simd_float3x3 a1)
{
  MEMORY[0x2822043A0](a1.columns[0], a1.columns[1], a1.columns[2]);
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}