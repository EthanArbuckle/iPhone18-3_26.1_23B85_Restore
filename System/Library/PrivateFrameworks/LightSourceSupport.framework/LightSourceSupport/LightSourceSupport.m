void OUTLINED_FUNCTION_0_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_impl(a1, a2, OS_LOG_TYPE_DEFAULT, a4, a5, 2u);
}

double OUTLINED_FUNCTION_0_1(float64x2_t a1, float64x2_t a2)
{
  v3 = fmin(fmax(fabs(vaddvq_f64(vaddq_f64(a1, a2))), 0.0), 1.0);

  return acos(v3);
}

void OUTLINED_FUNCTION_0_3(uint64_t a1, void *a2)
{

  _tlv_atexit(lss::SimpleCache<objc_object *,unsigned long long>::~SimpleCache, a2);
}

void OUTLINED_FUNCTION_0_5(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0xCu);
}

double OUTLINED_FUNCTION_0_6(float64x2_t a1, float64_t a2, float64x2_t a3, double a4, double a5, double a6, double a7, double a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, float64x2_t a17, double a18, uint64_t a19, double a20)
{
  v15 = vmulq_n_f64(a3, a1.f64[0]);
  *&v16.f64[0] = *&vmulq_f64(a1, 0);
  v16.f64[1] = a2;
  v17 = vnegq_f64(v15);
  *&result = *&vaddq_f64(vmlsq_lane_f64(vmulq_n_f64(v16, a20), vextq_s8(v16, vnegq_f64(v16), 8uLL), a18, 0), vmlaq_n_f64(vmulq_laneq_f64(v17, a17, 1), vextq_s8(v15, v17, 8uLL), a17.f64[0]));
  return result;
}

void *OUTLINED_FUNCTION_0_8(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char __src)
{

  return memcpy(&a9, &__src, 0x60uLL);
}

double OUTLINED_FUNCTION_2(long double a1, float64x2_t a2, float64x2_t a3)
{
  v4 = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(a3, a3), vmulq_f64(a2, a2))));

  return atan2(a1, v4);
}

uint64_t OUTLINED_FUNCTION_2_1(void *a1, const char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, __int128 a11, __int128 a12, __int128 a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20, uint64_t a21)
{
  a14 = v23;
  a15 = 0;
  a16 = a12;
  a17 = a11;
  a18 = 0u;
  a19 = a13;
  a20 = 1065353216;
  a21 = 0;

  return [a1 provider:v21 updatedLight:&a14];
}

BOOL OUTLINED_FUNCTION_2_2()
{
  v2 = *(v0 + 1560);

  return os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
}

void OUTLINED_FUNCTION_1_0(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, a5, 2u);
}

float OUTLINED_FUNCTION_1_1()
{
  v2 = *v0;
  v4 = v0[1];
  return v1;
}

void *OUTLINED_FUNCTION_1_3(_BYTE *a1)
{
  *a1 = 1;

  return objc_autoreleasePoolPush();
}

double OUTLINED_FUNCTION_1_5()
{

  return LSSMediaTime();
}

double LSSMediaTime()
{
  if (qword_280D2F500 != -1)
  {
    LSSMediaTime_cold_1();
  }

  v0 = *&_MergedGlobals_3;
  return v0 * mach_absolute_time();
}

void LSSLightDirectionFromTimeInInterval(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  v3 = *(a1 + 192);
  if (v3 != 2)
  {
    if (v3 != 1)
    {
      LSSLightDirectionFromTimeInInterval_cold_4();
    }

    goto LABEL_16;
  }

  v4 = *(a1 + 84);
  if (!v4)
  {
LABEL_16:
    v34 = *(a1 + 48);
    *(a2 + 32) = *(a1 + 32);
    *(a2 + 48) = v34;
    v35 = *(a1 + 80);
    *(a2 + 64) = *(a1 + 64);
    *(a2 + 80) = v35;
    v36 = *(a1 + 16);
    *a2 = *a1;
    *(a2 + 16) = v36;
    return;
  }

  v5 = *(a1 + 96);
  if (v5 < a3)
  {
    LSSLightDirectionFromTimeInInterval_cold_3();
  }

  v6 = *a1;
  if (*a1 > a3)
  {
    LSSLightDirectionFromTimeInInterval_cold_2();
  }

  v7 = v5 - v6;
  if (v7 <= 0.0)
  {
    LSSLightDirectionFromTimeInInterval_cold_1();
  }

  v9 = *(a1 + 32);
  v66 = *(a1 + 48);
  v67 = *(a1 + 64);
  v10 = *(a1 + 80);
  v12 = *(a1 + 112);
  v11 = *(a1 + 128);
  v64 = *(a1 + 160);
  v62 = *(a1 + 144);
  v13 = *(a1 + 176);
  v14 = (a3 - v6) / v7;
  v69[0] = *(a1 + 16);
  v69[1] = v9;
  v15 = 1.0 - v14;
  v68[0] = v12;
  v68[1] = v11;
  LSSArcLerp3(v69, v68, v70, v14);
  v59 = v70[0];
  v60 = v70[1];
  if (vaddvq_f64(vaddq_f64(vmulq_f64(v66, v62), vmulq_f64(v67, v64))) < 0.0)
  {
    v16 = vaddq_f64(v67, v64);
    v17 = vaddq_f64(v66, v62);
    v16.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v17, v17), vmulq_f64(v16, v16))));
    v18 = vsubq_f64(v67, v64);
    v19 = vsubq_f64(v66, v62);
    v20 = atan2(v16.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v19, v19), vmulq_f64(v18, v18)))));
    v21 = v20 + v20;
    v22 = 1.0;
    v23 = v20 + v20 == 0.0;
    v24 = 1.0;
    if (!v23)
    {
      v24 = sin(v21) / v21;
    }

    v25 = 1.0 / v24;
    if (v15 * v21 != 0.0)
    {
      v22 = sin(v15 * v21) / (v15 * v21);
    }

    v26 = vnegq_f64(v62);
    v27 = vnegq_f64(v64);
    v28 = vdupq_lane_s64(COERCE__INT64(v15 * (v25 * v22)), 0);
    v29 = v14 * v21;
    v30 = 1.0;
    if (v29 != 0.0)
    {
      v63 = v28;
      v65 = v26;
      v57 = v27;
      v31 = sin(v29);
      v27 = v57;
      v28 = v63;
      v26 = v65;
      v30 = v31 / v29;
    }

    v32 = v14 * (v25 * v30);
    v33 = vmulq_n_f64(v27, v32);
    goto LABEL_21;
  }

  v37 = vsubq_f64(v67, v64);
  v38 = vsubq_f64(v66, v62);
  v37.f64[0] = sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v38, v38), vmulq_f64(v37, v37))));
  v39 = vaddq_f64(v67, v64);
  v40 = vaddq_f64(v66, v62);
  v41 = atan2(v37.f64[0], sqrt(vaddvq_f64(vaddq_f64(vmulq_f64(v40, v40), vmulq_f64(v39, v39)))));
  v42 = v41 + v41;
  if (v41 + v41 == 0.0)
  {
    v43 = 1.0;
    v44 = v15 * v42;
    v45 = 1.0;
    v46 = 1.0 / 1.0;
    if (v15 * v42 == 0.0)
    {
      goto LABEL_19;
    }

LABEL_26:
    v28 = vdupq_lane_s64(COERCE__INT64(v15 * (v46 * (sin(v44) / v44))), 0);
    v47 = v14 * v42;
    if (v47 == 0.0)
    {
      goto LABEL_20;
    }

LABEL_27:
    v58 = v28;
    v56 = sin(v47);
    v28 = v58;
    v43 = v56 / v47;
    goto LABEL_20;
  }

  v55 = sin(v41 + v41) / v42;
  v43 = 1.0;
  v44 = v15 * v42;
  v45 = 1.0;
  v46 = 1.0 / v55;
  if (v15 * v42 != 0.0)
  {
    goto LABEL_26;
  }

LABEL_19:
  v28 = vdupq_lane_s64(COERCE__INT64(v15 * (v46 * v45)), 0);
  v47 = v14 * v42;
  if (v47 != 0.0)
  {
    goto LABEL_27;
  }

LABEL_20:
  v32 = v14 * (v46 * v43);
  v26 = v62;
  v33 = vmulq_n_f64(v64, v32);
LABEL_21:
  v48 = vmlaq_f64(vmulq_n_f64(v26, v32), v66, v28);
  v49 = vmlaq_f64(v33, v67, v28);
  v50 = vaddvq_f64(vaddq_f64(vmulq_f64(v48, v48), vmulq_f64(v49, v49)));
  if (v50 == 0.0)
  {
    v51 = xmmword_255E9C9F0;
    v52 = 0uLL;
  }

  else
  {
    v53 = 1.0 / sqrt(v50);
    v51 = vmulq_n_f64(v49, v53);
    v52 = vmulq_n_f64(v48, v53);
  }

  *a2 = a3;
  *(a2 + 16) = v59;
  *(a2 + 32) = v60;
  *(a2 + 48) = v52;
  *(a2 + 64) = v51;
  v54 = v14 * v13 + v15 * v10;
  *(a2 + 80) = v54;
  *(a2 + 84) = v4;
}

double LSSAngleFromLightDirection(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (fabs(*a1) >= 0.000001 || fabs(v1) >= 0.000001)
  {
    return atan2(-v1, *a1);
  }

  else
  {
    return 0.0;
  }
}

uint64_t __LSSLogResampler_block_invoke()
{
  _MergedGlobals = os_log_create(LSSLoggingSubsystem, "Resampler");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LSSLogDisplayLinkResampler_block_invoke()
{
  _MergedGlobals_0 = os_log_create(LSSLoggingSubsystem, "DisplayLinkResampler");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LSSLogDisplayLink_block_invoke()
{
  _MergedGlobals_1 = os_log_create(LSSLoggingSubsystem, "DisplayLink");

  return MEMORY[0x2821F96F8]();
}

float64_t LSSArcLerp(float64x2_t a1, float64x2_t a2, double a3)
{
  v4 = a1;
  a1.f64[0] = fmin(fmax(vaddvq_f64(vmulq_f64(a1, a2)) + 0.0, -1.0), 1.0);
  v5 = vmlsq_lane_f64(a2, v4, a1.f64[0], 0);
  v6 = vmlsq_f64(0, a1, 0);
  v7 = vmulq_n_f64(v5, 1.0 / sqrt(vmulq_f64(v6, v6).f64[0] + vaddvq_f64(vmulq_f64(v5, v5))));
  if ((v7.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v15 = vextq_s8(v4, v4, 8uLL).u64[0];
    v13 = vextq_s8(v7, v7, 8uLL).u64[0];
    v14 = v4.f64[0];
    v12 = *v7.i64;
    v8 = acos(a1.f64[0]) * a3;
    v9 = __sincosf_stret(v8);
    v10.f64[0] = v12;
    *&v10.f64[1] = v13;
    v4 = vmulq_n_f64(v10, v9.__sinval);
    v10.f64[0] = v14;
    *&v10.f64[1] = v15;
    *&v4.f64[0] = *&vmlaq_n_f64(v4, v10, v9.__cosval);
  }

  return v4.f64[0];
}

void LSSArcLerp3(uint64_t a1@<X0>, float64x2_t *a2@<X1>, int8x16_t *a3@<X8>, double a4@<D0>)
{
  v7 = *a1;
  v6 = *(a1 + 16);
  v8 = a2[1];
  v9 = vmulq_f64(v6, v8);
  v12 = vmulq_f64(*a1, *a2);
  v9.f64[0] = fmin(fmax(v9.f64[0] + vaddvq_f64(v12), -1.0), 1.0);
  v10 = vmlsq_lane_f64(*a2, *a1, v9.f64[0], 0);
  v11 = vmlsq_f64(v8, v9, v6);
  v12.f64[0] = 1.0 / sqrt(vmulq_f64(v11, v11).f64[0] + vaddvq_f64(vmulq_f64(v10, v10)));
  v13 = vmulq_n_f64(v10, v12.f64[0]);
  if ((v13.i64[0] & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
  {
    v26 = vextq_s8(v7, v7, 8uLL).u64[0];
    v22 = vmulq_f64(v11, v12);
    v23 = vextq_s8(v13, v13, 8uLL).u64[0];
    v24 = *a1;
    v25 = *(a1 + 16);
    v21 = *v13.i64;
    v14 = acos(v9.f64[0]) * a4;
    v15 = __sincosf_stret(v14);
    v16.f64[0] = v15.__cosval;
    v17.f64[0] = v15.__sinval;
    v18 = vmulq_f64(v17, v22);
    v19.f64[0] = v21;
    *&v19.f64[1] = v23;
    v20 = vmulq_n_f64(v19, v15.__sinval);
    v19.f64[0] = v24.f64[0];
    *&v19.f64[1] = v26;
    v7 = vmlaq_n_f64(v20, v19, v15.__cosval);
    v6 = vmlaq_f64(v18, v16, v25);
  }

  *a3 = v7;
  a3[1] = v6;
}

void sub_255E8E854(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LSSLogController()
{
  if (qword_280D2F4F0 == -1)
  {
    v1 = qword_280D2F4E8;
  }

  else
  {
    [LSSController _selectProviderFromSettings];
    v1 = qword_280D2F4E8;
  }

  return v1;
}

uint64_t __LSSLogController_block_invoke()
{
  qword_280D2F4E8 = os_log_create(LSSLoggingSubsystem, "Controller");

  return MEMORY[0x2821F96F8]();
}

double __LSSMachTimeToSeconds_block_invoke()
{
  info = 0;
  mach_timebase_info(&info);
  LODWORD(v1) = info.denom;
  LODWORD(v0) = info.numer;
  result = v0 / v1 * 0.000000001;
  _MergedGlobals_3 = *&result;
  return result;
}

uint64_t __LSSLogMotionBasedLightSource_block_invoke()
{
  _MergedGlobals_4 = os_log_create(LSSLoggingSubsystem, "MotionBasedLightSource");

  return MEMORY[0x2821F96F8]();
}

id LSSStartServer()
{
  if (qword_280D2F520 == -1)
  {
    v0 = _MergedGlobals_5;
    if (!os_log_type_enabled(_MergedGlobals_5, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  LSSStartServer_cold_1();
  v0 = _MergedGlobals_5;
  if (os_log_type_enabled(_MergedGlobals_5, OS_LOG_TYPE_DEFAULT))
  {
LABEL_3:
    *v2 = 0;
    _os_log_impl(&dword_255E8B000, v0, OS_LOG_TYPE_DEFAULT, "render server start", v2, 2u);
  }

LABEL_4:
  result = LSSShouldRun();
  if (result)
  {
    return +[LSSController sharedInstance];
  }

  return result;
}

uint64_t __LSSLogStart_block_invoke()
{
  _MergedGlobals_5 = os_log_create(LSSLoggingSubsystem, "Start");

  return MEMORY[0x2821F96F8]();
}

void sub_255E9051C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

id LSSLogMotionBasedLightService()
{
  if (qword_280D2F530 == -1)
  {
    v1 = _MergedGlobals_6;
  }

  else
  {
    LSSLogMotionBasedLightService_cold_1();
    v1 = _MergedGlobals_6;
  }

  return v1;
}

uint64_t __LSSLogMotionBasedLightService_block_invoke()
{
  _MergedGlobals_6 = os_log_create(LSSLoggingSubsystem, "MotionBasedLightService");

  return MEMORY[0x2821F96F8]();
}

void OUTLINED_FUNCTION_4(void *a1, int a2, int a3, const char *a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint8_t buf)
{

  _os_log_impl(a1, v31, OS_LOG_TYPE_INFO, a4, &buf, 2u);
}

uint64_t __LSSLogSubscriber_block_invoke()
{
  qword_280D2F548 = os_log_create(LSSLoggingSubsystem, "Subscriber");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LSSLogPerfomanceTestProvider_block_invoke()
{
  _MergedGlobals_8 = os_log_create(LSSLoggingSubsystem, "PerfomanceTestProvider");

  return MEMORY[0x2821F96F8]();
}

void sub_255E92490(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __LSSLogCAService_block_invoke()
{
  _MergedGlobals_9 = os_log_create(LSSLoggingSubsystem, "CAService");

  return MEMORY[0x2821F96F8]();
}

void LSSPowerLog(int a1, void *a2)
{
  v3 = a2;
  if (MEMORY[0x282227608])
  {
    if (a1)
    {
      LSSPowerLog_cold_1();
    }

    v4 = v3;
    if (qword_280D2F580 != -1)
    {
      LSSPowerLog_cold_2();
    }

    PPSSendTelemetry();
    v3 = v4;
  }
}

uint64_t LSSHasInternalUI()
{
  if (qword_280D2F590 != -1)
  {
    LSSHasInternalUI_cold_1();
  }

  return _MergedGlobals_11;
}

uint64_t __LSSHasInternalUI_block_invoke()
{
  result = os_variant_has_internal_ui();
  _MergedGlobals_11 = result;
  return result;
}

uint64_t LSSShouldRun()
{
  if (qword_280D2F5A8 == -1)
  {
    if (byte_280D2F589)
    {
      return 1;
    }
  }

  else
  {
    LSSShouldRun_cold_1();
    if (byte_280D2F589)
    {
      return 1;
    }
  }

  if (qword_280D2F5B0 != -1)
  {
    LSSShouldRun_cold_2();
  }

  return byte_280D2F58A & 1;
}

uint64_t lss::SimpleCache<objc_object *,unsigned long long>::~SimpleCache(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t ___ZL21_LSSIsSolariumEnabledv_block_invoke()
{
  result = _os_feature_enabled_impl();
  byte_280D2F589 = result;
  return result;
}

uint64_t ___ZL34_LSSIsMotionBasedLockscreenEnabledv_block_invoke()
{
  byte_280D2F58A = _os_feature_enabled_impl();
  if (byte_280D2F58A)
  {
    result = 1;
    byte_280D2F58A = 1;
  }

  else
  {
    result = _os_feature_enabled_impl();
    byte_280D2F58A = result;
  }

  return result;
}

void ___ZL26_LSSIsLowPerformanceDevicev_block_invoke()
{
  v0 = MGCopyAnswer();
  byte_280D2F58B = v0 == *MEMORY[0x277CBED28];

  CFRelease(v0);
}

uint64_t ___ZL26_LSSHasInternalDiagnosticsv_block_invoke()
{
  result = os_variant_has_internal_diagnostics();
  byte_280D2F58C = result;
  return result;
}

uint64_t ___ZL14LSSLogSettingsv_block_invoke()
{
  qword_280D2F5C8 = os_log_create(LSSLoggingSubsystem, "Settings");

  return MEMORY[0x2821F96F8]();
}

void std::vector<objc_object *>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<objc_object *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<objc_object *>::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

void std::vector<unsigned long long>::push_back[abi:nn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 < v3)
  {
    *v4 = *a2;
    v5 = (v4 + 1);
LABEL_3:
    *(a1 + 8) = v5;
    return;
  }

  v6 = *a1;
  v7 = v4 - *a1;
  v8 = v7 >> 3;
  v9 = (v7 >> 3) + 1;
  if (v9 >> 61)
  {
    std::vector<objc_object *>::__throw_length_error[abi:nn200100]();
  }

  v10 = v3 - v6;
  if (v10 >> 2 > v9)
  {
    v9 = v10 >> 2;
  }

  if (v10 >= 0x7FFFFFFFFFFFFFF8)
  {
    v11 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    if (!(v11 >> 61))
    {
      operator new();
    }

    std::vector<objc_object *>::__throw_length_error[abi:nn200100]();
  }

  *(8 * v8) = *a2;
  v5 = 8 * v8 + 8;
  memcpy(0, v6, v7);
  *a1 = 0;
  *(a1 + 8) = v5;
  *(a1 + 16) = 0;
  if (!v6)
  {
    goto LABEL_3;
  }

  operator delete(v6);
  *(a1 + 8) = v5;
}

BOOL LSSCAParamsAlmostEqual(float a1, float a2, float a3, float a4, float a5, float a6, float a7, float a8, float a9, float a10, float a11, float a12)
{
  if ((LODWORD(a1) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = a1;
  }

  if ((LODWORD(a4) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v21 = 0.0;
  }

  else
  {
    v21 = a4;
  }

  if ((LODWORD(a3) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a3 = 0.0;
  }

  if ((LODWORD(a5) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v22 = 0.0;
  }

  else
  {
    v22 = a5;
  }

  if ((LODWORD(a8) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v23 = 0.0;
  }

  else
  {
    v23 = a8;
  }

  if ((LODWORD(a7) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    v24 = 0.0;
  }

  else
  {
    v24 = a7;
  }

  if (vabds_f32(v20, v22) > a9)
  {
    return 0;
  }

  if ((LODWORD(a6) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a6 = 0.0;
  }

  if ((LODWORD(a2) & 0x7FFFFFFFu) >= 0x7F800000)
  {
    a2 = 0.0;
  }

  if (vabds_f32(a2, a6) > a10)
  {
    return 0;
  }

  if (vabds_f32(a3, v24) <= a11)
  {
    return vabds_f32(v21, v23) <= a12;
  }

  return 0;
}

float LSSCAParamsMake(uint64_t a1, float a2)
{
  v3 = *(a1 + 32);
  v4 = sqrt(vaddvq_f64(vmulq_f64(*(a1 + 16), *(a1 + 16))));
  v5 = fminf(fmaxf(v4 / a2, 0.0), 1.0);
  v6 = (1.0 - v5) * (1.0 - v5);
  v9[0] = *(a1 + 16);
  v9[1] = v3;
  result = LSSAngleFromLightDirection(v9);
  v8 = *(a1 + 80) * (1.0 - v6);
  return result;
}

id LSSLogXPCService()
{
  if (qword_280D2F5E0 == -1)
  {
    v1 = _MergedGlobals_12;
  }

  else
  {
    LSSLogXPCService_cold_1();
    v1 = _MergedGlobals_12;
  }

  return v1;
}

void sub_255E9435C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_255E945E4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __LSSLogXPCService_block_invoke()
{
  _MergedGlobals_12 = os_log_create(LSSLoggingSubsystem, "XPCService");

  return MEMORY[0x2821F96F8]();
}

void sub_255E94D5C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __LSSLogXPCClient_block_invoke()
{
  _MergedGlobals_13 = os_log_create(LSSLoggingSubsystem, "XPCClient");

  return MEMORY[0x2821F96F8]();
}

void sub_255E95294(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __LSSLogAssertion_block_invoke()
{
  _MergedGlobals_14 = os_log_create(LSSLoggingSubsystem, "Assertion");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LSSLogStationaryProvider_block_invoke()
{
  _MergedGlobals_15 = os_log_create(LSSLoggingSubsystem, "StationaryProvider");

  return MEMORY[0x2821F96F8]();
}

double OUTLINED_FUNCTION_3_0(double a1, double a2, double a3, double a4)
{

  *&result = *&__sincos_stret(a3 / a4 * 0.5);
  return result;
}

double OUTLINED_FUNCTION_4_0()
{

  *&result = *&__sincos_stret(v1 * v2);
  return result;
}

void sub_255E95C58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t __LSSLogTimeBasedService_block_invoke()
{
  _MergedGlobals_16 = os_log_create(LSSLoggingSubsystem, "TimeBasedService");

  return MEMORY[0x2821F96F8]();
}

uint64_t __LSSLogTestProvider_block_invoke()
{
  _MergedGlobals_17 = os_log_create(LSSLoggingSubsystem, "TestProvider");

  return MEMORY[0x2821F96F8]();
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

__double2 __sincos_stret(double a1)
{
  MEMORY[0x2822043C0](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}