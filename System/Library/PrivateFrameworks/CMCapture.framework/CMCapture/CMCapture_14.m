uint64_t FigMotionGetGravityZ(const __CFDictionary *a1, float *a2)
{
  v12 = 0;
  if (!a1)
  {
    FigMotionGetGravityZ_cold_3(&v13);
    return v13;
  }

  Value = CFDictionaryGetValue(a1, *off_1E798B3D0);
  if (!Value)
  {
    FigMotionGetGravityZ_cold_2(&v13);
    return v13;
  }

  v4 = FigMotionISPMotionDataFromCFData(Value, &v12);
  if (v4)
  {
    v10 = v4;
    FigMotionGetGravityZ_cold_1();
    return v10;
  }

  v5 = *(v12 + 1);
  if (v5 < 1)
  {
    v7 = 0.0;
    if (!v5)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = v12 + 44;
    v7 = 0.0;
    v8 = *(v12 + 1);
    do
    {
      v9 = *v6;
      v6 += 40;
      v7 = v7 + (v9 * 0.000015259);
      --v8;
    }

    while (v8);
  }

  v7 = v7 / v5;
LABEL_8:
  v10 = 0;
  *a2 = v7;
  return v10;
}

uint64_t FigMotionComputeBlurScores(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v53 = v5;
  v69 = v6;
  if (!v1 || (v7 = v4, v8 = v3, v9 = v2, v10 = v1, Count = CFArrayGetCount(v1), Count <= 0))
  {
    FigMotionComputeBlurScores_cold_13(v70);
    return LODWORD(v70[0].value);
  }

  v52 = v7;
  v59 = v8;
  bzero(v67, 0x2818uLL);
  bzero(v66, 0x4038uLL);
  theArray = v10;
  v57 = CFArrayGetCount(v10);
  if (v57 <= 0)
  {
    FigMotionComputeBlurScores_cold_2(&v79);
  }

  else
  {
    bzero(&v71, 0x14A0uLL);
    bzero(v70, 0x2FD0uLL);
    v11 = 0;
    v12 = 0;
    v13 = v67[0];
    while (1)
    {
      v60 = v12;
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v12);
      if (!ValueAtIndex)
      {
        break;
      }

      v79.i32[0] = 0;
      LODWORD(v78[0].f64[0]) = 0;
      MotionDataFromISP = FigMotionGetMotionDataFromISP(ValueAtIndex, &v71, 0, 110, &v79, 0, v70, 510, v78);
      if (MotionDataFromISP)
      {
        v46 = MotionDataFromISP;
        v67[0] = v13;
        fig_log_get_emitter();
        FigDebugAssert3();
LABEL_52:
        FigMotionComputeBlurScores_cold_3();
        return v46;
      }

      v16 = v79.u32[0];
      v17 = v72;
      if (v79.i32[0] >= 1)
      {
        do
        {
          *&v67[2 * v11 + 2] = *(v17 - 1) + -0.005;
          v18 = &v67[8 * v11 + 514];
          v19 = *v17;
          v20 = *(v17 + 1);
          v17 += 6;
          *v18 = v19;
          v18[1] = v20;
          v13 = (v13 + 1);
          v11 = v13;
          --v16;
        }

        while (v16);
      }

      v21 = LODWORD(v78[0].f64[0]);
      if (SLODWORD(v78[0].f64[0]) >= 1)
      {
        v22 = v66[v9];
        p_timescale = &v70[0].timescale;
        do
        {
          *&v66[1024 * v9 + 2 + 2 * v22] = *(p_timescale - 1);
          v24 = *p_timescale;
          p_timescale += 6;
          *&v66[1024 * v9 + 2050 + 2 * v22] = v24;
          v22 = (v66[v9] + 1) & 0x1FF;
          v66[v9] = v22;
          --v21;
        }

        while (v21);
      }

      v12 = v60 + 1;
      if (v60 + 1 == v57)
      {
        v67[0] = v13;
        v25 = v7;
        v26 = v9;
        goto LABEL_14;
      }
    }

    FigMotionComputeBlurScores_cold_1(v13, v67, &v79);
  }

  v46 = v79.u32[0];
  v25 = v7;
  v26 = v9;
  if (v79.i32[0])
  {
    goto LABEL_52;
  }

LABEL_14:
  v27 = 0;
  v28 = v26 - 2;
  v54 = v69;
  v58 = (v26 - 3) < 2;
  key = *off_1E798A420;
  v29 = v8;
  while (1)
  {
    *(v25 + 4 * v27) = 2139095039;
    v30 = CFArrayGetValueAtIndex(theArray, v27);
    v64 = 0.0;
    v65 = 0.0;
    v63 = 0.0;
    if (v54 <= 0.0 && !FigCFDictionaryGetFloatIfPresent())
    {
      FigMotionComputeBlurScores_cold_4(v70);
      return LODWORD(v70[0].value);
    }

    FigCFDictionaryGetDoubleIfPresent();
    FigCFDictionaryGetDoubleIfPresent();
    v64 = v64 / 1000000.0;
    Value = CFDictionaryGetValue(v30, key);
    if (!Value)
    {
      FigMotionComputeBlurScores_cold_12(v70);
      return LODWORD(v70[0].value);
    }

    CMTimeMakeFromDictionary(v70, Value);
    Seconds = CMTimeGetSeconds(v70);
    FigMotionComputeFramePTSOffsetFromISPCrop(v30, &v63);
    v33 = v63;
    v62 = *(MEMORY[0x1E695F058] + 16);
    SensorValidCropRect = FigMotionGetSensorValidCropRect(v30);
    if (SensorValidCropRect)
    {
      v46 = SensorValidCropRect;
      FigMotionComputeBlurScores_cold_5();
      return v46;
    }

    v55 = v27;
    v35 = *(&v62 + 1);
    if (v53 < 2)
    {
      v36 = v35 >> 1;
      v61 = *(&v62 + 1);
    }

    else
    {
      v36 = 0;
      v61 = vcvtms_u32_f32((v35 - 1) / (v53 - 1));
    }

    v37 = 0.0;
    if (v36 < v35)
    {
      break;
    }

LABEL_41:
    v25 = v52;
    *(v52 + 4 * v27++) = v37 / v53;
    if (v55 + 1 == Count)
    {
      return 0;
    }
  }

  v38 = Seconds + v33;
  while (1)
  {
    if (v8)
    {
      v39 = v38 - v65 + v64 * v36 / (v35 - 1);
      memset(v78, 0, sizeof(v78));
      memset(v77, 0, sizeof(v77));
      v71 = 0u;
      memset(v72, 0, sizeof(v72));
      memset(v70, 0, 144);
      v40 = v65 / v29;
      v73 = v58;
      *(&v70[0].value + 1) = v69;
      v41 = 0.0;
      while (1)
      {
        FigMotionComputeQuaternionForTimeStamp(v67, v78, v68, v39);
        if (!v68[0])
        {
          break;
        }

        FigMotionComputeQuaternionForTimeStamp(v67, v77, v68, v40 + v39);
        if (!v68[0])
        {
          FigMotionComputeBlurScores_cold_8(&v79);
          goto LABEL_39;
        }

        v79 = *&v78[0].f64[0];
        v80 = vnegq_f64(*(v78 + 8));
        v81 = -v78[1].f64[1];
        v76[0] = FigMotionMultiplyQuaternions(&v79, v77);
        v76[1] = v42;
        v76[2] = v43;
        v76[3] = v44;
        v79 = 0;
        FigMotionComputeTranslationFromCameraMotion(v76, &v71, v70, &v79);
        if (v28 > 2)
        {
          v75 = 0;
          v74 = 0;
          v48 = FigMotionComputeLensMovementAndSagForTimeStamp(v66, &v75, 0, v9, v39, 1.0);
          if (v48)
          {
            v46 = v48;
            FigMotionComputeBlurScores_cold_6();
            goto LABEL_45;
          }

          v46 = FigMotionComputeLensMovementAndSagForTimeStamp(v66, &v74, 0, v9, v40 + v39, 1.0);
          if (v46)
          {
            FigMotionComputeBlurScores_cold_7();
            goto LABEL_45;
          }

          v47 = vsub_f32(v79, vsub_f32(v74, v75));
        }

        else
        {
          v46 = v45;
          v47 = v79;
        }

        v41 = v41 + sqrtf(COERCE_FLOAT(vmul_f32(v47, v47).i32[1]) + (v47.f32[0] * v47.f32[0]));
        v39 = v40 + v39;
        if (!--v8)
        {
          goto LABEL_34;
        }
      }

      FigMotionComputeBlurScores_cold_9(&v79);
LABEL_39:
      v46 = v79.u32[0];
      goto LABEL_34;
    }

    FigMotionComputeBlurScores_cold_10(&v79);
    v46 = v79.u32[0];
    v41 = 0.0;
LABEL_34:
    if (v46)
    {
      break;
    }

    v37 = v37 + v41;
    v8 = v59;
    v36 += v61;
    if (v36 >= v35)
    {
      goto LABEL_41;
    }
  }

LABEL_45:
  FigMotionComputeBlurScores_cold_11();
  return v46;
}

uint64_t FigMotionComputeQuaternionAndAttitudeFromArray(const __CFArray *a1, uint64_t a2, long double *a3, double a4)
{
  if (!a1)
  {
    FigMotionComputeQuaternionAndAttitudeFromArray_cold_2(&valuePtr);
    goto LABEL_20;
  }

  Count = CFArrayGetCount(a1);
  *buffer = 0u;
  v27 = 0u;
  if (Count < 1)
  {
    goto LABEL_19;
  }

  v9 = 0;
  v10 = Count & 0x7FFFFFFF;
  v11 = 1.0;
  v12 = -1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    if (ValueAtIndex)
    {
      v14 = ValueAtIndex;
      if (CFArrayGetCount(ValueAtIndex) >= 1)
      {
        v15 = CFArrayGetValueAtIndex(v14, 0);
        if (v15)
        {
          valuePtr = 0.0;
          CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
          v16 = valuePtr - a4;
          v17 = fabsf(v16);
          if (v11 > v17)
          {
            v18 = CFArrayGetValueAtIndex(v14, 2);
            if (v18)
            {
              v19 = v18;
              v28.length = CFDataGetLength(v18);
              v28.location = 0;
              CFDataGetBytes(v19, v28, buffer);
              v11 = v17;
              v12 = v9;
            }
          }
        }
      }
    }

    ++v9;
  }

  while (v10 != v9);
  if (v12 < 0)
  {
LABEL_19:
    FigMotionComputeQuaternionAndAttitudeFromArray_cold_1(&valuePtr);
LABEL_20:
    v23 = LODWORD(valuePtr);
    if (!LODWORD(valuePtr))
    {
      goto LABEL_14;
    }

LABEL_17:
    FigMotionComputeQuaternionAndAttitudeFromArray_cold_3();
    return v23;
  }

  if (v11 > 0.011)
  {
    low_freq_error_logging();
    v23 = 4294954513;
    goto LABEL_17;
  }

  v20 = v27;
  *a2 = *buffer;
  *(a2 + 16) = v20;
LABEL_14:
  v21 = *(a2 + 16);
  *a3 = -atan2(*(a2 + 8) * (*(a2 + 24) + *(a2 + 24)) - *a2 * (v21 + v21), 1.0 - *(a2 + 8) * (*(a2 + 8) + *(a2 + 8)) - v21 * (v21 + v21));
  a3[1] = asin(*a2 * (*(a2 + 8) + *(a2 + 8)) + *(a2 + 16) * (*(a2 + 24) + *(a2 + 24)));
  v22 = *(a2 + 24);
  v23 = 0;
  a3[2] = -atan2(*(a2 + 8) * (*(a2 + 16) + *(a2 + 16)) - *a2 * (v22 + v22), 1.0 - *(a2 + 8) * (*(a2 + 8) + *(a2 + 8)) - v22 * (v22 + v22));
  return v23;
}

uint64_t FigMotionClearFocalLengthData(uint64_t a1)
{
  if (a1)
  {
    memset_pattern16((a1 + 484), &unk_1AD056290, 0xCuLL);
    memset_pattern16((a1 + 496), &unk_1AD056290, 0xCuLL);
    memset_pattern16((a1 + 508), &unk_1AD056290, 0xCuLL);
    return 0;
  }

  else
  {
    FigMotionClearFocalLengthData_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionStashQuadraBinningFactor(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetInt32IfPresent();
    return 0;
  }

  else
  {
    FigMotionStashQuadraBinningFactor_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionStashFocalLengthData(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionStashFocalLengthData_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionUpdateBaseZoomFactorAdjustment(uint64_t a1, uint64_t a2)
{
  if (a1 && a2)
  {
    FigCFDictionaryGetFloatIfPresent();
    return 0;
  }

  else
  {
    FigMotionUpdateBaseZoomFactorAdjustment_cold_1(&v3);
    return v3;
  }
}

uint64_t FigMotionComputeBravoTranslation(float a1, float a2, uint64_t a3, uint64_t a4, int a5, float32x2_t *a6, float32x2_t *a7)
{
  _S8 = a1;
  v36 = 0.0;
  if (!FigCFDictionaryGetFloatIfPresent())
  {
    if (!FigCFDictionaryGetFloatIfPresent() && !FigCFDictionaryGetFloatIfPresent())
    {
      FigMotionComputeBravoTranslation_cold_1(&v37);
      return v37;
    }

    v36 = 0.0 * a2;
  }

  v14 = *(a4 + 444);
  v35 = *(a4 + 4 + 8 * v14);
  _D1 = *(a4 + 4 + 8 * a5);
  v16 = BravoCurrentToReferenceMapping[3 * v14 + a5];
  v17 = (*(a4 + 4 * v16 + 80) * *(a4 + 40 + 4 * a5)) / *(a4 + 40 + 4 * v14);
  v18 = (*(a4 + 64 + 4 * a5) * _S8) / *(a4 + 64 + 4 * v14);
  v19 = COERCE_FLOAT(*a6) + (v17 * (v18 * *&v35));
  v20 = COERCE_FLOAT(HIDWORD(*a6)) - (COERCE_FLOAT(HIDWORD(*a6)) + (v17 * (v18 * *(&v35 + 1))));
  __asm { FMLA            S4, S8, V1.S[1] }

  v34.f32[0] = COERCE_FLOAT(*a6) + (_S8 * *&_D1);
  v34.i32[1] = _S4;
  v26 = a4 + 48 * v16;
  v27 = COERCE_FLOAT(*a6) - v19;
  *v13.i32 = ((v20 * *(v26 + 144)) + (*(v26 + 140) * v27)) + (*(v26 + 148) * v36);
  v28 = 0;
  if (fabsf(*v13.i32) > 0.00000001 && v36 > 0.00000001)
  {
    v30.i32[0] = *(v26 + 108);
    v31.i32[0] = *(v26 + 112);
    v29 = (v26 + 108);
    v32.i32[0] = v29[2];
    v31.i32[1] = v29[5];
    v30.i32[1] = v29[4];
    v32.i32[1] = v29[6];
    v28 = vsub_f32(vadd_f32(v34, vdiv_f32(vmul_n_f32(vmla_n_f32(vmla_n_f32(vmul_n_f32(v31, v20), v30, v27), v32, v36), v36), vdup_lane_s32(v13, 0))), *a6);
  }

  result = 0;
  *a7 = v28;
  return result;
}

uint64_t FigMotionGetTimeStampAtPositionRatio(const __CFDictionary *a1, double *a2, float a3)
{
  if (!a1 || !a2)
  {
    FigMotionGetTimeStampAtPositionRatio_cold_5(&time);
    return LODWORD(time.value);
  }

  v13 = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigMotionGetTimeStampAtPositionRatio_cold_4(&time);
    return LODWORD(time.value);
  }

  v12 = 0.0;
  if (!FigCFDictionaryGetDoubleIfPresent())
  {
    FigMotionGetTimeStampAtPositionRatio_cold_3(&time);
    return LODWORD(time.value);
  }

  v12 = v12 / 1000000.0;
  Value = CFDictionaryGetValue(a1, *off_1E798A420);
  if (!Value)
  {
    FigMotionGetTimeStampAtPositionRatio_cold_2(&time);
    return LODWORD(time.value);
  }

  CMTimeMakeFromDictionary(&time, Value);
  Seconds = CMTimeGetSeconds(&time);
  v10 = 0.0;
  v8 = FigMotionComputeFramePTSOffsetFromISPCrop(a1, &v10);
  if (v8)
  {
    FigMotionGetTimeStampAtPositionRatio_cold_1();
  }

  else
  {
    *a2 = Seconds + v10 + v13 * -0.5 + a3 * v12;
  }

  return v8;
}

uint64_t FigMotionComputeMotionBlur(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, float *a5, int a6, float *a7, unint64_t a8, float32x2_t *a9)
{
  if (a6 < 2)
  {
    v16 = *(a2 + 72);
    v15 = 0.0;
  }

  else
  {
    v14 = *(a2 + 64);
    v15 = v14 / (a6 + -1.0);
    v16 = *(a2 + 72) + v14 * -0.5;
  }

  v17 = *(a2 + 48);
  if (a7)
  {
    *a7 = 0.0;
  }

  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  if (a6 >= 1)
  {
    v18 = v17 * 0.5;
    v19 = v16 - v18;
    v20 = v16 + v18;
    v21 = 1.0 / a6;
    v22 = (a8 | a9) != 0;
    v23 = a6;
    v24 = a5;
    do
    {
      v43 = 1;
      v42 = 1;
      memset(v41, 0, sizeof(v41));
      memset(v40, 0, sizeof(v40));
      FigMotionComputeQuaternionForTimeStamp(a1, v41, &v43, v19);
      FigMotionComputeQuaternionForTimeStamp(a1, v40, &v42, v20);
      if (v43)
      {
        v25 = v42 == 0;
      }

      else
      {
        v25 = 1;
      }

      if (!v25)
      {
        v26 = v21;
        if (a5)
        {
          v26 = *v24;
        }

        v37 = v26;
        v44 = v41[0].f64[0];
        v45 = vnegq_f64(*(v41 + 8));
        v46 = -v41[1].f64[1];
        v27 = FigMotionMultiplyQuaternions(&v44, v40);
        v44 = v27;
        v45.f64[0] = v28;
        v45.f64[1] = v29;
        v46 = v30;
        v31 = 0;
        if (a4 && *(a2 + 12))
        {
          v38 = 0;
          v39 = 0;
          FigMotionComputeLensMovementAndSagForTimeStamp(a4, &v39, 0, *(a2 + 136), v19, *(a2 + 16));
          FigMotionComputeLensMovementAndSagForTimeStamp(a4, &v38, 0, *(a2 + 136), v20, *(a2 + 16));
          v31 = vsub_f32(v38, v39);
        }

        if (a7)
        {
          v32 = acos(v27);
          *&v32 = (v32 + v32) * 180.0 / 3.14159265;
          *a7 = *a7 + (*&v32 * v37);
        }

        if (v22)
        {
          v39 = 0;
          FigMotionComputeTranslationFromCameraMotion(&v44, a3, a2, &v39);
          v33 = vsub_f32(v39, v31);
          if (a8)
          {
            *a8 = *a8 + (sqrtf(COERCE_FLOAT(vmul_f32(v33, v33).i32[1]) + (v33.f32[0] * v33.f32[0])) * v37);
          }

          if (a9)
          {
            *a9 = vmla_n_f32(*a9, v33, v37);
          }
        }
      }

      v19 = v15 + v19;
      v20 = v15 + v20;
      ++v24;
      --v23;
    }

    while (v23);
  }

  return 0;
}

int32x2_t FigMotionComputeTranslationFromCameraMotion(double *a1, uint64_t a2, uint64_t a3, float32x2_t *a4)
{
  FigMotionRotationMatrixFromQuaternion(a1, *(a2 + 48), v13);
  *result.i32 = v14;
  if (fabsf(v14) >= 0.00000001)
  {
    v8 = *(a3 + 4);
    if (v8 == 0.0)
    {
      v9 = *a3;
      v10 = *(a2 + 20);
      v11 = 32;
      if (v10 > v9)
      {
        v11 = 24;
      }

      v12 = 36;
      if (v10 > v9)
      {
        v12 = 28;
      }

      v8 = *(a3 + 8) * (*(a2 + v11) + (*(a2 + v12) * v9));
    }

    result = vdiv_f32(vmul_n_f32(__PAIR64__(LODWORD(v13[5]), LODWORD(v13[2])), v8), vdup_lane_s32(result, 0));
    *a4 = result;
  }

  return result;
}

uint64_t low_freq_error_logging()
{
  mach_absolute_time();
  result = FigHostTimeToNanoseconds();
  if (low_freq_error_logging_last_log)
  {
    v1 = (result - low_freq_error_logging_last_log) >= 0x3B9ACA00;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    if (low_freq_error_logging_filtered)
    {
      low_freq_error_logging_filtered = 0;
    }

    low_freq_error_logging_last_log = result;
  }

  else
  {
    ++low_freq_error_logging_filtered;
  }

  return result;
}

uint64_t FigMotionComputeAverageQuaternionForTimePeriod(uint64_t a1, _OWORD *a2, _OWORD *a3, double a4, double a5)
{
  v6 = 0;
  v7 = 0;
  v27 = 0x3FF0000000000000uLL;
  v28 = 0uLL;
  do
  {
    v8 = *(a1 + v6);
    if (v8 > a4 + -0.002 && v8 < a5 + 0.002 && v7 <= 19)
    {
      v11 = a2[1];
      v12 = &v26[2 * v7];
      *v12 = *a2;
      v12[1] = v11;
      ++v7;
    }

    a2 += 2;
    v6 += 8;
  }

  while (v6 != 2048);
  if (v7)
  {
    v13 = 0;
    while (vabdd_f64(*(a1 + v13), a4) >= 0.003)
    {
      v13 += 8;
      if (v13 == 2048)
      {
        v14 = 4294967293;
        goto LABEL_22;
      }
    }

    v15 = 0;
    while (vabdd_f64(*(a1 + v15), a5) >= 0.003)
    {
      v15 += 8;
      if (v15 == 2048)
      {
        v14 = 4294967292;
        goto LABEL_22;
      }
    }

    if (v7 >= 1)
    {
      v17 = v7;
      v18 = v26;
      v19 = 1;
      do
      {
        v20 = 1.0 - 1.0 / v19;
        FigMotionInterpolateQuaternionsByAngle(v18, &v27, v20);
        *&v27 = v21;
        *(&v27 + 1) = v22;
        *&v28 = v23;
        *(&v28 + 1) = v24;
        v18 += 2;
        ++v19;
        --v17;
      }

      while (v17);
    }

    v14 = 0;
    v25 = v28;
    *a3 = v27;
    a3[1] = v25;
  }

  else
  {
    v14 = 0xFFFFFFFFLL;
LABEL_22:
    low_freq_error_logging();
  }

  return v14;
}

uint64_t GetFocalLengthParametersFromArrayUsingModuleLensID(CFNumberRef number, CFArrayRef theArray, uint64_t a3)
{
  valuePtr = 0;
  if (number && !CFNumberGetValue(number, kCFNumberSInt32Type, &valuePtr))
  {
    GetFocalLengthParametersFromArrayUsingModuleLensID_cold_1(&v19);
  }

  else
  {
    if (CFArrayGetCount(theArray) < 1)
    {
      return 0;
    }

    v6 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v6);
      TypeID = CFDictionaryGetTypeID();
      if (TypeID != CFGetTypeID(ValueAtIndex))
      {
        GetFocalLengthParametersFromArrayUsingModuleLensID_cold_2(&v19);
        return v19;
      }

      if (!number)
      {
        break;
      }

      Value = CFDictionaryGetValue(ValueAtIndex, @"LensID");
      if (!Value)
      {
        break;
      }

      v10 = Value;
      v11 = valuePtr;
      if (CFArrayGetCount(Value) >= 1)
      {
        v12 = 0;
        do
        {
          v19 = -1;
          FigCFArrayGetIntAtIndex();
          if (!v19 || v19 == v11)
          {
            goto LABEL_17;
          }
        }

        while (CFArrayGetCount(v10) > ++v12);
      }

      if (CFArrayGetCount(theArray) <= ++v6)
      {
        return 0;
      }
    }

LABEL_17:
    v15 = CFDictionaryGetValue(ValueAtIndex, @"LensCoefficient");
    if (v15)
    {
      v16 = v15;
      v17 = CFNumberGetTypeID();
      if (v17 == CFGetTypeID(v16))
      {
        *(a3 + 20) = 0;
        *(a3 + 28) = 0;
        *(a3 + 36) = 0;
        CFNumberGetValue(v16, kCFNumberFloatType, (a3 + 24));
        result = 0;
        *(a3 + 32) = *(a3 + 24);
        *(a3 + 16) = 1;
        return result;
      }
    }

    GetFocalLengthParametersFromArrayUsingModuleLensID_cold_3(&v19);
  }

  return v19;
}

uint64_t FigMotionCalculateAdjustedLensPosition(const __CFDictionary *a1, uint64_t a2, float *a3, float a4, float a5)
{
  valuePtr = 0;
  if (!a1)
  {
    FigMotionCalculateAdjustedLensPosition_cold_3(&v19);
    return v19;
  }

  Value = CFDictionaryGetValue(a1, *off_1E798B208);
  if (!Value)
  {
    FigMotionCalculateAdjustedLensPosition_cold_2(&v19);
    return v19;
  }

  CFNumberGetValue(Value, kCFNumberSInt32Type, &valuePtr);
  v10 = valuePtr - (*(a2 + 40) * a4);
  if (v10 >= 0.0)
  {
    if (v10 <= 255.0)
    {
      v11 = (v10 + 0.5);
    }

    else
    {
      v11 = 255;
    }
  }

  else
  {
    v11 = 0;
  }

  valuePtr = v11;
  if ((*(a2 + 16) & 1) == 0)
  {
    FigMotionCalculateAdjustedLensPosition_cold_1(&v19);
    return v19;
  }

  result = 0;
  v13 = v11;
  v14 = *(a2 + 20) <= v11;
  v15 = 32;
  if (!v14)
  {
    v15 = 24;
  }

  v16 = *(a2 + v15);
  v17 = 28;
  if (v14)
  {
    v17 = 36;
  }

  *a3 = (v16 + (*(a2 + v17) * v13)) * a5;
  return result;
}

double FigMotionApplyDigitalZoomToTransform(int a1, float *a2, int8x16_t a3, int32x4_t a4, double a5, double a6, int8x16_t a7)
{
  if (*a3.i32 > 0.0)
  {
    *a7.i32 = 1.0 / *a3.i32;
    if (a1)
    {
      v7 = 1.0 / *a3.i32;
    }

    else
    {
      v7 = *a3.i32;
    }

    v8 = *a4.i64;
    *a4.i32 = (1.0 - v7) * v8;
    v9 = a5;
    v10 = (1.0 - v7) * v9;
    if (a1)
    {
      *a3.i32 = FigMotionPostMultiplyScalingTranslationToTransform(a2, 1.0 / *a3.i32, *a4.i32, *a7.i32, v10);
    }

    else
    {
      *a3.i64 = FigMotionPreMultiplyScalingTranslationToTransform(a2, a3, a4, *a3.i32, v10, a7);
    }
  }

  return *a3.i64;
}

uint64_t FigMotionComputeTransformFromCameraMotion(double *a1, uint64_t a2, uint64_t a3, float32x2_t *a4, float32x2_t *a5, float *a6)
{
  v8 = 0uLL;
  v9 = 0uLL;
  if (a4)
  {
    v9 = vcvtq_f64_f32(*a4);
  }

  v10 = *(a3 + 4);
  v11 = *a2;
  if (a5)
  {
    v8 = vcvtq_f64_f32(*a5);
  }

  v19 = v10;
  v20 = vaddq_f64(v11, v9);
  v17 = v10;
  v18 = vsubq_f64(v11, v8);
  v16 = v11;
  FigMotionRotationMatrixFromQuaternion(a1, *(a2 + 48), v21);
  FigMotionComputeTransformFromRotation(&v19, &v17, v21, a6);
  v12 = *(a3 + 20);
  if (v12 > 0.0)
  {
    v13 = v16.f64[0];
    v14 = v16.f64[1];
    FigMotionPostMultiplyScalingTranslationToTransform(a6, 1.0 / v12, (1.0 - (1.0 / v12)) * v13, 1.0 / v12, (1.0 - (1.0 / v12)) * v14);
  }

  return 0;
}

float FigMotionRotationMatrixFromQuaternion(double *a1, int a2, float *a3)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = *a1;
  if (a2)
  {
    v4 = -v4;
    v6 = -a1[3];
  }

  else
  {
    v6 = a1[3];
  }

  v7 = v3 + v3;
  v8 = v4 + v4;
  v9 = v6 + v6;
  v10 = v3;
  v11 = v4;
  v12 = v6;
  v13 = v12 * v9;
  v14 = (1.0 - (v11 * v8)) - v13;
  v15 = 1.0 - (v10 * v7);
  v16 = v15 - v13;
  a3[8] = v15 - (v11 * v8);
  v17 = v11 * v9;
  v18 = v5;
  v19 = v18 * v7;
  v20 = v17 - v19;
  a3[4] = v16;
  a3[5] = v19 + v17;
  v21 = (v10 * v8) - (v18 * v9);
  *a3 = v14;
  a3[1] = (v10 * v8) + (v18 * v9);
  v22 = v10 * v9;
  v23 = v18 * v8;
  a3[2] = v22 - v23;
  a3[3] = v21;
  result = v23 + v22;
  a3[6] = result;
  a3[7] = v20;
  return result;
}

void FigMotionAttitudeFromQuaternion(long double *a1, double a2, double a3, double a4, double a5)
{
  v9 = a4 + a4;
  v10 = a5 + a5;
  v11 = a3 + a3;
  v12 = 1.0 - a3 * (a3 + a3);
  a1[2] = -atan2(a3 * (a4 + a4) - a2 * (a5 + a5), v12 - a5 * (a5 + a5));
  *a1 = -atan2(a3 * v10 - a2 * v9, v12 - a4 * v9);
  a1[1] = asin(a2 * v11 + a4 * v10);
}

float FigMotionAdjustParallaxShiftForScalingFactor(float result, double a2, float a3, float a4)
{
  if (a3 > 0.0 && vabds_f32(a3, a4) > 0.001)
  {
    return result * (a4 / a3);
  }

  return result;
}

uint64_t FigMotionComputeDistortionCenter(const __CFDictionary *a1, int a2, int a3, int a4, int a5, float64x2_t *a6, float a7, float a8)
{
  value = 0;
  point = *MEMORY[0x1E695EFF8];
  v19 = point;
  v17 = point;
  if (a1 && a6)
  {
    v14 = (a2 + -1.0) * 0.5;
    v15 = (a3 + -1.0) * 0.5;
    v20.f64[0] = v14;
    v20.f64[1] = v15;
    if (FigMotionComputeSensorCroppedReferenceCenter(a1, &v19))
    {
      if (CFDictionaryGetValueIfPresent(a1, *off_1E798B250, &value) && CGPointMakeWithDictionaryRepresentation(value, &point))
      {
        v20.f64[0] = v14 + (point.x - v19.x) * a8 * a4;
        v20.f64[1] = v15 + (point.y - v19.y) * a8 * a5;
      }

      else if (CFDictionaryGetValueIfPresent(a1, *off_1E798B520, &value) && CGPointMakeWithDictionaryRepresentation(value, &v17))
      {
        v20.f64[0] = v14 + (v17.x - v19.x) * a8 * a4;
        v20.f64[1] = v15 + (v17.y - v19.y) * a8 * a5;
        if (FigMotionAdjustPointForSphereMovement(a1, &v20, a7, a8))
        {
          FigMotionComputeDistortionCenter_cold_1();
        }
      }
    }

    result = 0;
    *a6 = v20;
  }

  else
  {
    FigMotionComputeDistortionCenter_cold_2(&v20);
    return LODWORD(v20.f64[0]);
  }

  return result;
}

uint64_t FigMotionMapPointFromRawToBuffer(const __CFDictionary *a1, uint64_t a2, int a3, int a4, float64x2_t *a5, float64_t a6, float64_t a7, float a8)
{
  if (a1 && a5)
  {
    v13 = MEMORY[0x1E695F058];
    v28 = *(MEMORY[0x1E695F058] + 16);
    v29 = *MEMORY[0x1E695F058];
    v32 = *MEMORY[0x1E695F058];
    SensorValidCropRect = FigMotionGetSensorValidCropRect(a1);
    if (SensorValidCropRect)
    {
      FigMotionMapPointFromRawToBuffer_cold_1();
    }

    else
    {
      FigCFDictionaryGetCGRectIfPresent();
      v34.origin = v29;
      v34.size = v28;
      if (CGRectEqualToRect(v34, *v13))
      {
        v15 = -1;
      }

      else
      {
        v15 = 0;
      }

      v16 = vdupq_n_s64(v15);
      v17.i64[0] = a2;
      v17.i64[1] = SHIDWORD(a2);
      v18 = vbslq_s8(v16, vcvtq_f64_s64(v17), v28);
      __asm { FMOV            V1.2D, #-1.0 }

      v17.i64[0] = a3;
      v17.i64[1] = a4;
      __asm { FMOV            V5.2D, #0.5 }

      v25 = vmlaq_f64(vbicq_s8(v29, v16), _Q5, vaddq_f64(v18, _Q1));
      v26 = vmlaq_f64(v32, _Q5, vaddq_f64(v28, _Q1));
      _Q5.f64[0] = a6;
      _Q5.f64[1] = a7;
      *a5 = vmlaq_f64(v25, vcvtq_f64_s64(v17), vmulq_n_f64(vsubq_f64(_Q5, v26), a8));
    }
  }

  else
  {
    FigMotionMapPointFromRawToBuffer_cold_2(&v33);
    return v33;
  }

  return SensorValidCropRect;
}

uint64_t FigMotionComputeRawSensorCenterInBuffer(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a1 && a5)
  {
    FigCFDictionaryGetIntIfPresent();
    FigMotionComputeRawSensorCenterInBuffer_cold_2(&v6);
  }

  else
  {
    FigMotionComputeRawSensorCenterInBuffer_cold_3(&v6);
  }

  return v6;
}

uint64_t FigMotionComputeParallaxShift(float a1, float a2, float a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  v27 = NAN;
  if (a5)
  {
    v14 = *(a5 + 524);
  }

  else
  {
    v14 = 0.0;
  }

  *a8 = 0;
  FloatIfPresent = FigCFDictionaryGetFloatIfPresent();
  v16 = FigCFDictionaryGetFloatIfPresent();
  result = FigCFDictionaryGetFloatIfPresent();
  if (v16)
  {
    v18 = FloatIfPresent == 0;
  }

  else
  {
    v18 = 1;
  }

  v20 = v18 || a7 != 0;
  if (a5 && (v20 & 1) != 0)
  {
    v21 = a5 + 4 * *(a5 + 448);
    v22 = *(v21 + 484);
    v27 = *(v21 + 496);
    v23 = 1.0;
  }

  else
  {
    v23 = 1.0;
    v22 = NAN;
  }

  v24 = v22 + -10.0;
  v25 = 0.0;
  if (v27 > 0.0 && v24 > v27)
  {
    v25 = ((v23 * NAN) * a3) / fmaxf(((v24 * v27) / (v24 - v27)) / 1000.0, v14);
  }

  *a8 = v25 * a1;
  *(a8 + 4) = v25 * a2;
  return result;
}

uint64_t FigMotionComputeWideToNarrowShift(const __CFDictionary *a1, const __CFDictionary *a2, const void *a3, float64x2_t *a4, float64x2_t *a5, int a6, unsigned int a7, int a8, double a9, double a10, float a11, uint64_t a12, int *a13, float32x2_t *a14, double *a15, float64x2_t *a16)
{
  if (!a1)
  {
    FigMotionComputeWideToNarrowShift_cold_11(&v73);
    return v73.u32[0];
  }

  if (!a14)
  {
    FigMotionComputeWideToNarrowShift_cold_10(&v73);
    return v73.u32[0];
  }

  if (!a15)
  {
    FigMotionComputeWideToNarrowShift_cold_9(&v73);
    return v73.u32[0];
  }

  v21 = a13;
  if (!a13)
  {
    v21 = &a14[12] + 1;
  }

  v22 = *v21;
  v77 = 0;
  v23 = *off_1E798B540;
  Value = CFDictionaryGetValue(a1, *off_1E798B540);
  v25 = bravoTransitionCameraIndexFromPortType(Value, &v77);
  if (v25)
  {
    v62 = v25;
    FigMotionComputeWideToNarrowShift_cold_1();
    return v62;
  }

  v76 = 0;
  if (a2)
  {
    a3 = CFDictionaryGetValue(a2, v23);
  }

  v26 = bravoTransitionCameraIndexFromPortType(a3, &v76);
  if (v26)
  {
    v62 = v26;
    FigMotionComputeWideToNarrowShift_cold_2();
    return v62;
  }

  v29 = v76;
  v30 = v77;
  if (!a2 && !v77)
  {
    a14[20].i32[v76 + 1] = a14[22].i32[0];
  }

  v31 = a14[19].f32[v30];
  if (v31 <= 0.0)
  {
    v32 = 1.0;
  }

  else
  {
    v32 = 1.0 / v31;
  }

  v33 = a14[19].f32[v29];
  if (v33 <= 0.0)
  {
    v34 = 1.0;
  }

  else
  {
    v34 = 1.0 / v33;
  }

  v75 = 1.0;
  if (FigMotionComputeLensPositionScalingFactor(a1, a6, v27, a14[20].i32[v30 + 1] * a8, v28, &v75))
  {
    FigMotionComputeWideToNarrowShift_cold_3();
  }

  v74 = 0;
  v35 = v32 * v75;
  v36 = 0uLL;
  v70 = v32 * v75;
  if ((v22 & 1) == 0)
  {
    v37 = 0.0;
    v38 = 0.0;
    v39 = 0.0;
    v68 = 0u;
    if ((v22 & 4) == 0)
    {
      goto LABEL_42;
    }

LABEL_36:
    v54 = v76;
    v53 = v77;
    if (v77 == 2)
    {
      a14[68].i32[1] = v76;
      v55 = 1;
      if (!a2)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v55 = 0;
      if (!a2)
      {
LABEL_41:
        v56 = &a14[6 * BravoCurrentToReferenceMapping[3 * v54 + v53]];
        FigMotionComputeParallaxShift(v56[27].f32[1], v56[29].f32[1], v35, a1, &a14[12] + 4, v53, v55, &a14[69]);
        v35 = v70;
        v57 = a14[69];
        v74 = vmla_n_f32(v74, v57, a11);
        v36 = vcvtq_f64_f32(v57);
        v38 = v74.f32[1];
        goto LABEL_42;
      }
    }

    FigMotionStashFocalLengthData(a2, &a14[12] + 4);
    FigCFDictionaryGetInt32IfPresent();
    v35 = v70;
    v54 = v76;
    v53 = v77;
    goto LABEL_41;
  }

  v40 = FigMotionComputeAverageSpherePosition();
  if (v40)
  {
    v62 = v40;
    FigMotionComputeWideToNarrowShift_cold_4();
    return v62;
  }

  v42 = v76;
  v41 = v77;
  v35 = v70;
  v43 = v70 * ((v34 * ((((a14[22].f32[BravoCurrentToReferenceMapping[3 * v76 + v77] + 1] * a14[17].f32[v77 + 1]) / a14[17].f32[v76 + 1]) * a14[20].i32[v77 + 1]) / a14[20].i32[v76 + 1])) / v32);
  if (a2)
  {
    v69 = v70 * ((v34 * ((((a14[22].f32[BravoCurrentToReferenceMapping[3 * v76 + v77] + 1] * a14[17].f32[v77 + 1]) / a14[17].f32[v76 + 1]) * a14[20].i32[v77 + 1]) / a14[20].i32[v76 + 1])) / v32);
    v73 = 0;
    v44 = FigMotionComputeAverageSpherePosition();
    if (v44)
    {
      v62 = v44;
      FigMotionComputeWideToNarrowShift_cold_5();
      return v62;
    }

    v43 = v69;
    v35 = v70;
    v74 = vmla_n_f32(vmul_n_f32(vneg_f32(v73), v69), v74, v70);
    v42 = v76;
    v41 = v77;
    v38 = v74.f32[1];
  }

  else
  {
    v45 = &a14[v77 + 6];
    if (vabds_f32(v74.f32[0], *v45) < (0.8 / v70))
    {
      v46 = v45[1];
      if (vabds_f32(v74.f32[1], v46) < (0.8 / v70))
      {
        v74.f32[0] = (v74.f32[0] * 0.06) + (*v45 * 0.94);
        v74.f32[1] = (v74.f32[1] * 0.06) + (v46 * 0.94);
      }
    }

    v47 = v74;
    *v45 = v74;
    v48 = &a14[v42 + 70];
    v49 = a14[v42 + 3];
    *v48 = v49;
    v50 = &a14[v42 + 6];
    v51 = v49.f32[0];
    if (vabds_f32(v49.f32[0], *v50) < (0.8 / v43))
    {
      v52 = v50[1];
      if (vabds_f32(v49.f32[1], v52) < (0.8 / v43))
      {
        *v48 = (v49.f32[0] * 0.06) + (*v50 * 0.94);
        *(v48 + 4) = (v49.f32[1] * 0.06) + (v52 * 0.94);
        v49 = *v48;
        LODWORD(v51) = *v48;
      }
    }

    *v50 = v49;
    v38 = (v47.f32[1] * v70) - (*(v48 + 4) * v43);
    v74.f32[0] = (v47.f32[0] * v70) - (v51 * v43);
    v74.f32[1] = v38;
  }

  v39 = v74.f32[0];
  v37 = v38;
  v68 = vcvtq_f64_f32(vmla_n_f32(vmul_n_f32(vneg_f32(a14[v42 + 9]), v43), a14[v41 + 9], v35));
  v36 = 0uLL;
  if ((v22 & 4) != 0)
  {
    goto LABEL_36;
  }

LABEL_42:
  v58 = 0uLL;
  if ((v22 & 2) != 0)
  {
    v73 = 0;
    if (a5)
    {
      if (a4)
      {
        v71 = v36;
        v72 = vmul_f32(vcvt_f32_s32(vadd_s32(__PAIR64__(a7, a6), -1)), 0x3F0000003F000000);
        v60 = v76;
        v59 = v77;
        a14[v76 + 13] = vcvt_f32_f64(*a5);
        a14[v59 + 13] = vcvt_f32_f64(*a4);
        a14[68].i32[0] = v60;
        v61 = FigMotionComputeBravoTranslation(v75, v35, a1, &a14[12] + 4, v59, &v72, &v73);
        if (v61)
        {
          v62 = v61;
          FigMotionComputeWideToNarrowShift_cold_6();
          return v62;
        }

        v74.f32[0] = v73.f32[0] + v74.f32[0];
        v38 = v73.f32[1] + v74.f32[1];
        v58 = vcvtq_f64_f32(v73);
        v36 = v71;
        goto LABEL_47;
      }

      FigMotionComputeWideToNarrowShift_cold_7(v78);
    }

    else
    {
      FigMotionComputeWideToNarrowShift_cold_8(v78);
    }

    return v78[0];
  }

LABEL_47:
  *a15 = v74.f32[0];
  a15[1] = v38;
  v62 = 0;
  if (a16)
  {
    a16->f64[0] = v39;
    a16->f64[1] = v37;
    a16[1] = v68;
    a16[2] = v36;
    a16[3] = v58;
  }

  return v62;
}

uint64_t FigMotionSphereShiftStateUpdateWithMetadata(uint64_t a1, CFDictionaryRef theDict)
{
  v21 = 0;
  Value = CFDictionaryGetValue(theDict, *off_1E798B540);
  v5 = bravoTransitionCameraIndexFromPortType(Value, &v21);
  if (v5)
  {
    FigMotionSphereShiftStateUpdateWithMetadata_cold_1();
  }

  else
  {
    FigMotionStashFocalLengthData(theDict, a1 + 100);
    FigMotionStashQuadraBinningFactor(theDict, a1 + 100);
    FigMotionComputeShiftStateAverageSpherePositionWithFrameSkipping(a1, theDict, v21);
    FigMotionUpdateBaseZoomFactorAdjustment(theDict, a1 + 100);
    v6 = 0;
    *(a1 + 72 + 8 * v21) = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 72 + 8 * v21)), 1.0 - *(a1 + 632)), vcvtq_f64_f32(*(a1 + 24 + 8 * v21)), *(a1 + 632)));
    v7 = *off_1E798A0D8;
    v20[0] = *off_1E798A0C0;
    v20[1] = v7;
    v20[2] = *off_1E798A0D0;
    v19 = 0;
    v8 = *off_1E798B730;
    key = *off_1E798B728;
    do
    {
      v9 = v20[v6];
      if (!CFEqual(Value, v9) && !bravoTransitionCameraIndexFromPortType(v9, &v19))
      {
        v10 = CFDictionaryGetValue(theDict, v8);
        if (v10)
        {
          v11 = v9;
        }

        else
        {
          v10 = theDict;
          v11 = key;
        }

        v12 = CFDictionaryGetValue(v10, v11);
        v13 = v12;
        if (v12)
        {
          FigMotionStashFocalLengthData(v12, a1 + 100);
          FigCFDictionaryGetInt32IfPresent();
          FigCFDictionaryGetFloatIfPresent();
        }

        FigMotionComputeShiftStateAverageSpherePositionWithFrameSkipping(a1, v13, v19);
        *(a1 + 72 + 8 * v19) = vcvt_f32_f64(vmlaq_n_f64(vmulq_n_f64(vcvtq_f64_f32(*(a1 + 72 + 8 * v19)), 1.0 - *(a1 + 632)), vcvtq_f64_f32(*(a1 + 24 + 8 * v19)), *(a1 + 632)));
      }

      ++v6;
    }

    while (v6 != 3);
    v14 = *(a1 + 548);
    v15 = v21;
    if (v14 == -1 || v21 != v14)
    {
      *(a1 + 176) = *(a1 + 168);
    }

    *(a1 + 548) = v15;
    return 0;
  }

  return v5;
}

float32x2_t FigMotionComputeShiftStateAverageSpherePositionWithFrameSkipping(uint64_t a1, uint64_t a2, int a3)
{
  v4 = a1 + 560;
  v5 = a3;
  *(a1 + 560 + 8 * a3) = 0;
  if (a2 && FigCFDictionaryGetInt32IfPresent() && FigCFDictionaryGetInt32IfPresent())
  {
    result = vmul_f32(vcvt_f32_s32(0), vdup_n_s32(0x3B800000u));
    *(v4 + 8 * v5) = result;
    v7 = 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 96) | v7;
  *(a1 + 96) |= v7;
  if (v8)
  {
    v9 = a1 + 24;
    v10 = (a1 + 8 * v5);
    if (v7)
    {
      v11 = *(v4 + 8 * v5);
      result = vmul_f32(vadd_f32(*(v9 + 8 * v5), v11), 0x3F0000003F000000);
      *(v9 + 8 * v5) = result;
      *v10 = v11;
    }

    else
    {
      result = vmul_f32(vadd_f32(*v10, *(v9 + 8 * v5)), 0x3F0000003F000000);
      *(v9 + 8 * v5) = result;
    }
  }

  return result;
}

uint64_t FigMotionHardwareAvailable()
{
  v4 = 0u;
  v5 = 0u;
  *__big = 0u;
  v3 = 0u;
  v1 = 64;
  if ((FigMotionHardwareAvailable_checked & 1) == 0)
  {
    FigMotionHardwareAvailable_available = 1;
    if (!sysctlbyname("hw.model", __big, &v1, 0, 0) && strnstr(__big, "DEV", 0x40uLL))
    {
      FigMotionHardwareAvailable_available = 0;
    }

    FigMotionHardwareAvailable_checked = 1;
  }

  return FigMotionHardwareAvailable_available;
}

uint64_t FigMotionComputeAverageQuaternionFromArray(const __CFArray *a1, _OWORD *a2, double a3, double a4)
{
  if (!a1)
  {
    FigMotionComputeAverageQuaternionFromArray_cold_4(&v33);
    return v33;
  }

  Count = CFArrayGetCount(a1);
  v36 = 0u;
  v37 = 0u;
  if (Count < 1)
  {
    goto LABEL_21;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = Count & 0x7FFFFFFF;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(a1, v9);
    if (ValueAtIndex)
    {
      v15 = ValueAtIndex;
      if (CFArrayGetCount(ValueAtIndex) >= 1)
      {
        v16 = CFArrayGetValueAtIndex(v15, 0);
        if (v16)
        {
          v17 = v16;
          v18 = CFArrayGetValueAtIndex(v15, 2);
          if (v18)
          {
            v19 = v18;
            valuePtr = 0.0;
            CFNumberGetValue(v17, kCFNumberDoubleType, &valuePtr);
            v20 = valuePtr;
            if (valuePtr > a3 + -0.0025 && valuePtr < a4 + 0.0025 && v10 <= 19)
            {
              v33 = 0u;
              v34 = 0u;
              v40.length = CFDataGetLength(v19);
              v40.location = 0;
              CFDataGetBytes(v19, v40, &v33);
              v20 = valuePtr;
              v21 = &v38[48 * v10];
              v21[1] = valuePtr;
              v22 = v34;
              *(v21 + 1) = v33;
              *(v21 + 2) = v22;
              ++v10;
            }

            v11 |= vabdd_f64(v20, a3) < 0.0035;
            v12 |= vabdd_f64(v20, a4) < 0.0035;
          }
        }
      }
    }

    ++v9;
  }

  while (v13 != v9);
  if (!v10)
  {
LABEL_21:
    FigMotionComputeAverageQuaternionFromArray_cold_3(&v33);
    return v33;
  }

  if ((v11 & 1) == 0)
  {
    FigMotionComputeAverageQuaternionFromArray_cold_1(&v33);
    return v33;
  }

  if ((v12 & 1) == 0)
  {
    FigMotionComputeAverageQuaternionFromArray_cold_2(&v33);
    return v33;
  }

  v36 = 0x3FF0000000000000uLL;
  v37 = 0uLL;
  if (v10 >= 1)
  {
    v23 = v10;
    v24 = &v39;
    v25 = 1;
    do
    {
      v26 = 1.0 - 1.0 / v25;
      FigMotionInterpolateQuaternionsByAngle(v24, &v36, v26);
      *&v36 = v27;
      *(&v36 + 1) = v28;
      *&v37 = v29;
      *(&v37 + 1) = v30;
      v24 += 6;
      ++v25;
      --v23;
    }

    while (v23);
  }

  result = 0;
  v32 = v37;
  *a2 = v36;
  a2[1] = v32;
  return result;
}

uint64_t FigSampleBufferProcessorCreateForMotionAttachments(uint64_t a1, const __CFDictionary *a2, CFTypeRef *a3)
{
  cf = 0;
  v59 = 0;
  if (!a3)
  {
    FigSampleBufferProcessorCreateForMotionAttachments_cold_17(&valuePtr);
LABEL_60:
    v47 = valuePtr;
    goto LABEL_53;
  }

  v3 = a3;
  v5 = *MEMORY[0x1E695E480];
  FigSampleBufferProcessorGetClassID();
  v6 = CMDerivedObjectCreate();
  if (v6)
  {
    v47 = v6;
    FigSampleBufferProcessorCreateForMotionAttachments_cold_1();
    goto LABEL_53;
  }

  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 464) = 0x100000001;
  *(DerivedStorage + 40) = 0;
  *(DerivedStorage + 560) = 0;
  *(DerivedStorage + 64) = 3;
  *(DerivedStorage + 592) = 0;
  *(DerivedStorage + 568) = 0x3F6CAC083126E979;
  FigMotionInitializeQuaternion((DerivedStorage + 480));
  *(DerivedStorage + 472) = 0;
  if (a2)
  {
    FigCFDictionaryGetIntIfPresent();
    CFDictionaryGetValue(a2, *off_1E798A9D0);
    FigCFDictionaryGetDoubleIfPresent();
    Value = CFDictionaryGetValue(a2, *off_1E798A968);
    if (!Value)
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_8(&valuePtr);
      goto LABEL_60;
    }

    v9 = Value;
    theDict = CFDictionaryGetValue(a2, *off_1E798A970);
    if (!theDict)
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_7(&valuePtr);
      goto LABEL_60;
    }

    Count = CFArrayGetCount(v9);
    if (Count > 7)
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_6(&valuePtr);
      goto LABEL_60;
    }

    v11 = Count;
    v49 = v3;
    v50 = v5;
    v57 = a2;
    if (Count >= 1)
    {
      v12 = 0;
      v13 = *off_1E798A0E8;
      key = *off_1E798A9B8;
      v54 = *off_1E7989F18;
      cf2 = *off_1E798A0E0;
      v51 = *off_1E798A0F8;
      v52 = *off_1E7989EF8;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        if (!ValueAtIndex)
        {
          FigSampleBufferProcessorCreateForMotionAttachments_cold_5(&valuePtr);
          goto LABEL_60;
        }

        v15 = ValueAtIndex;
        if (!CFEqual(ValueAtIndex, v13))
        {
          v58 = 0;
          v16 = portIndexFromPortType(v15, &v58);
          if (v16)
          {
            v47 = v16;
            FigSampleBufferProcessorCreateForMotionAttachments_cold_2();
            goto LABEL_53;
          }

          v17 = v58;
          v18 = CFDictionaryGetValue(a2, key);
          if (v18)
          {
            v19 = CFDictionaryGetValue(v18, v15);
          }

          else
          {
            v19 = 0;
          }

          v20 = CFDictionaryGetValue(theDict, v15);
          if (!v20)
          {
            FigSampleBufferProcessorCreateForMotionAttachments_cold_4(&valuePtr);
            goto LABEL_60;
          }

          v21 = v20;
          LODWORD(valuePtr) = 0;
          v22 = CFDictionaryGetValue(v20, v54);
          if (v22)
          {
            CFNumberGetValue(v22, kCFNumberFloatType, &valuePtr);
          }

          if (CFEqual(v15, cf2) || CFEqual(v15, v51))
          {
            FigCFDictionaryGetBooleanIfPresent();
          }

          v23 = CFDictionaryGetValue(v21, v52);
          if (v23)
          {
            CameraCharacterizationData = FigMotionGetCameraCharacterizationData(v23, v19, *&valuePtr, v15, DerivedStorage + 72 + 56 * v17);
            if (CameraCharacterizationData)
            {
              v47 = CameraCharacterizationData;
              FigSampleBufferProcessorCreateForMotionAttachments_cold_3();
              goto LABEL_53;
            }
          }

          a2 = v57;
        }

        ++v12;
      }

      while (v11 != v12);
    }

    FigCFDictionaryGetIntIfPresent();
    FigCFDictionaryGetIntIfPresent();
    v25 = CFDictionaryGetValue(a2, @"MotionAttachmentTypes");
    v5 = v50;
    if (v25)
    {
      v26 = v25;
      TypeID = CFArrayGetTypeID();
      if (TypeID == CFGetTypeID(v26))
      {
        Mutable = CFDictionaryCreateMutable(v50, 8, MEMORY[0x1E695E9D8], 0);
        for (i = 0; i != 8; ++i)
        {
          CFDictionarySetValue(Mutable, *(&off_1E7999B20 + i), dword_1AD0562C8[i]);
        }

        v30 = CFArrayGetCount(v26);
        if (v30 >= 1)
        {
          v31 = 0;
          v32 = v30 & 0x7FFFFFFF;
          do
          {
            v33 = CFArrayGetValueAtIndex(v26, v31);
            valuePtr = 0;
            if (CFDictionaryGetValueIfPresent(Mutable, v33, &valuePtr))
            {
              *(DerivedStorage + 40) |= valuePtr;
            }

            ++v31;
          }

          while (v32 != v31);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }
      }
    }

    FigCFDictionaryGetIntIfPresent();
    v34 = CFDictionaryGetValue(v57, @"MotionCallbackThreadPriority");
    v3 = v49;
    if (v34)
    {
      CFNumberGetValue(v34, kCFNumberSInt32Type, &v59);
    }
  }

  *v3 = cf;
  cf = 0;
  *(DerivedStorage + 24) = 1;
  *(DerivedStorage + 28) = 2;
  v35 = malloc_type_calloc(*(DerivedStorage + 64), 8uLL, 0x2004093837F09uLL);
  *(DerivedStorage + 48) = v35;
  if (!v35)
  {
    FigSampleBufferProcessorCreateForMotionAttachments_cold_16(&valuePtr);
    goto LABEL_60;
  }

  v36 = *(DerivedStorage + 40);
  if (!v36 || v36 >= 512)
  {
    FigSampleBufferProcessorCreateForMotionAttachments_cold_15(&valuePtr);
    goto LABEL_60;
  }

  if ((v36 & 0x180) != 0)
  {
    *(DerivedStorage + 576) = 1;
    v37 = malloc_type_malloc(12 * *(DerivedStorage + 64) + 12, 0x10000403E1C8BA9uLL);
    *(DerivedStorage + 640) = v37;
    if (v37)
    {
      v38 = malloc_type_malloc(0x14A0uLL, 0x1000040AC875A91uLL);
      *(DerivedStorage + 600) = v38;
      if (v38)
      {
        v39 = CFArrayCreateMutable(v5, (*(DerivedStorage + 64) << 8) + 256, MEMORY[0x1E695E9C0]);
        *(DerivedStorage + 584) = v39;
        if (v39)
        {
          v40 = 0;
          v41 = 1;
          v42 = MEMORY[0x1E695E9C0];
          do
          {
            v43 = v41;
            v44 = CFArrayCreateMutable(v5, (*(DerivedStorage + 64) << 9) + 512, v42);
            *(DerivedStorage + 624 + 8 * v40) = v44;
            if (!v44)
            {
              FigSampleBufferProcessorCreateForMotionAttachments_cold_11(&valuePtr);
              goto LABEL_60;
            }

            v41 = 0;
            v40 = 1;
          }

          while ((v43 & 1) != 0);
          v45 = malloc_type_malloc(0x2FD0uLL, 0x1000040504FFAC1uLL);
          *(DerivedStorage + 608) = v45;
          if (v45)
          {
            v46 = malloc_type_malloc(0x528uLL, 0x10000403E1C8BA9uLL);
            *(DerivedStorage + 616) = v46;
            if (v46)
            {
              goto LABEL_52;
            }

            FigSampleBufferProcessorCreateForMotionAttachments_cold_9(&valuePtr);
          }

          else
          {
            FigSampleBufferProcessorCreateForMotionAttachments_cold_10(&valuePtr);
          }
        }

        else
        {
          FigSampleBufferProcessorCreateForMotionAttachments_cold_12(&valuePtr);
        }
      }

      else
      {
        FigSampleBufferProcessorCreateForMotionAttachments_cold_13(&valuePtr);
      }
    }

    else
    {
      FigSampleBufferProcessorCreateForMotionAttachments_cold_14(&valuePtr);
    }

    goto LABEL_60;
  }

  *(DerivedStorage + 32) = FigCoreMotionAllocWithPriority(1, 1, 1, v59, 0.033333, 0.005);
LABEL_52:
  *(DerivedStorage + 656) = 0;
  *(DerivedStorage + 664) = 0;
  sbp_ma_resetStorage(DerivedStorage);
  v47 = 0;
LABEL_53:
  if (cf)
  {
    CFRelease(cf);
  }

  return v47;
}

void sbp_ma_resetStorage(uint64_t a1)
{
  *(a1 + 44) = 0;
  *(a1 + 56) = -*(a1 + 64);
  sbp_ma_releaseBufferedFrames(a1);
  *(a1 + 652) = 0;
  *(a1 + 648) = ~*(a1 + 64);
  v2 = *(a1 + 656);
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 656) = 0;
  }
}

uint64_t sbp_ma_invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  *(DerivedStorage + 8) = 0;
  if (!*DerivedStorage)
  {
    v1 = DerivedStorage;
    *DerivedStorage = 1;
    v2 = *(DerivedStorage + 32);
    if (v2)
    {
      FigCoreMotionRelease(v2);
      *(v1 + 32) = 0;
    }

    v3 = *(v1 + 600);
    if (v3)
    {
      *(v1 + 600) = 0;
      free(v3);
    }

    v4 = *(v1 + 608);
    if (v4)
    {
      *(v1 + 608) = 0;
      free(v4);
    }

    v5 = *(v1 + 616);
    if (v5)
    {
      *(v1 + 616) = 0;
      free(v5);
    }

    v6 = *(v1 + 584);
    if (v6)
    {
      CFRelease(v6);
      *(v1 + 584) = 0;
    }

    v7 = 0;
    v8 = v1 + 624;
    v9 = 1;
    do
    {
      v10 = v9;
      v11 = *(v8 + 8 * v7);
      if (v11)
      {
        CFRelease(v11);
        *(v8 + 8 * v7) = 0;
      }

      v9 = 0;
      v7 = 1;
    }

    while ((v10 & 1) != 0);
    v12 = *(v1 + 640);
    if (v12)
    {
      *(v1 + 640) = 0;
      free(v12);
    }

    sbp_ma_releaseBufferedFrames(v1);
    v13 = *(v1 + 48);
    if (v13)
    {
      *(v1 + 48) = 0;
      free(v13);
    }

    *(v1 + 24) = 0;
  }

  return 0;
}

__CFString *sbp_ma_copyDebugDescription(uint64_t a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  CFStringAppendFormat(Mutable, 0, @"<FigSampleBufferProcessor_MotionAttachments %p>", a1);
  return Mutable;
}

uint64_t sbp_ma_copyProperty(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 && a4 && !*CMBaseObjectGetDerivedStorage())
  {
    return 4294954512;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

uint64_t sbp_ma_setProperty(uint64_t a1)
{
  if (a1 && !*CMBaseObjectGetDerivedStorage())
  {
    return 4294954512;
  }

  fig_log_get_emitter();

  return FigSignalErrorAtGM();
}

void sbp_ma_releaseBufferedFrames(uint64_t a1)
{
  if (*(a1 + 48))
  {
    v2 = *(a1 + 64);
    if (v2 >= 1)
    {
      for (i = 0; i < v2; ++i)
      {
        v4 = *(*(a1 + 48) + 8 * i);
        if (v4)
        {
          CFRelease(v4);
          *(*(a1 + 48) + 8 * i) = 0;
          v2 = *(a1 + 64);
        }
      }
    }
  }
}

uint64_t sbp_ma_setOutputCallback(uint64_t a1, uint64_t a2, uint64_t a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    *(DerivedStorage + 8) = a2;
    *(DerivedStorage + 16) = a3;
    return 0;
  }
}

uint64_t sbp_ma_processSampleBuffer(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v4 = DerivedStorage;
  if (*DerivedStorage)
  {
    sbp_ma_processSampleBuffer_cold_1(&v33);
    v28 = 0;
    v22 = v33;
    goto LABEL_38;
  }

  if (DerivedStorage[576])
  {
    v5 = *off_1E798A3C8;
    v6 = CMGetAttachment(a2, *off_1E798A3C8, 0);
    if (v6)
    {
      v7 = v6;
      v8 = *off_1E798CE60;
      Value = CFDictionaryGetValue(v6, *off_1E798CE60);
      if (Value)
      {
        v10 = Value;
        if (*(v4 + 64) != 1)
        {
          sbp_ma_processSampleBuffer_cold_2();
        }

        if (*(v4 + 44))
        {
          sbp_ma_processSampleBuffer_cold_3();
        }

        if (*(v4 + 64) != 1)
        {
          goto LABEL_27;
        }

        v11 = *(v4 + 656);
        if (v11)
        {
          CFRelease(v11);
          *(v4 + 656) = 0;
        }

        *(v4 + 664) = 1;
        FormatDescription = CMSampleBufferGetFormatDescription(a2);
        if (FormatDescription)
        {
          v13 = FormatDescription;
          Count = CFArrayGetCount(v10);
          *(v4 + 656) = CFArrayCreateMutable(*MEMORY[0x1E695E480], Count, MEMORY[0x1E695E9C0]);
          if (Count >= 1)
          {
            v15 = 0;
            v16 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v10, v15);
              v18 = sbp_ma_processInitialCinematicFutureMetadata(v4, v16, ValueAtIndex, v13);
              if (v18)
              {
                break;
              }

              ++v15;
              v16 = ValueAtIndex;
              if (Count == v15)
              {
                goto LABEL_24;
              }
            }

            v22 = v18;
            sbp_ma_processSampleBuffer_cold_4();
            goto LABEL_44;
          }

          ValueAtIndex = 0;
LABEL_24:
          v23 = CFDictionaryGetValue(v7, *off_1E798CE58);
          if (v23)
          {
            v24 = sbp_ma_processInitialCinematicFutureMetadata(v4, ValueAtIndex, v23, v13);
            if (!v24)
            {
              CFDictionaryRemoveValue(v7, v8);
              goto LABEL_27;
            }

            v22 = v24;
            sbp_ma_processSampleBuffer_cold_5();
LABEL_44:
            v32 = *(v4 + 656);
            if (v32)
            {
              CFRelease(v32);
              *(v4 + 656) = 0;
            }

            fig_log_get_emitter();
            FigDebugAssert3();
            goto LABEL_47;
          }

          sbp_ma_processSampleBuffer_cold_6(&v33);
          v22 = v33;
        }

        else
        {
          sbp_ma_processSampleBuffer_cold_7(&v33);
          v22 = v33;
        }

        if (!v22)
        {
          goto LABEL_27;
        }

        goto LABEL_44;
      }

      v19 = CMGetAttachment(a2, v5, 0);
      v20 = v19;
      if (!*(v4 + 664))
      {
        goto LABEL_21;
      }

      v21 = CFDictionaryGetValue(v19, *off_1E798CE58);
      if (!v21)
      {
        sbp_ma_processSampleBuffer_cold_8(&v33);
        v22 = v33;
        if (!v33)
        {
          goto LABEL_27;
        }

LABEL_22:
        sbp_ma_processSampleBuffer_cold_9();
LABEL_47:
        v28 = 0;
        goto LABEL_38;
      }

      v20 = v21;
      CFDictionaryGetValue(v21, *off_1E798CE68);
      if (!FigCFEqual())
      {
LABEL_21:
        v22 = sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary(v4, v20);
        if (v22)
        {
          goto LABEL_22;
        }
      }
    }
  }

LABEL_27:
  v25 = *(v4 + 64);
  if (v25)
  {
    if (*(v4 + 44) == v25)
    {
      v26 = *(v4 + 48);
      v27 = *(v4 + 56);
      v28 = *(v26 + 8 * v27);
      *(v26 + 8 * v27) = 0;
    }

    else
    {
      v28 = 0;
    }

    *(*(v4 + 48) + 8 * *(v4 + 60)) = CFRetain(a2);
    FigMotionIncreaseRingIndex((v4 + 60), *(v4 + 64));
    FigMotionIncreaseRingIndex((v4 + 56), *(v4 + 64));
    v29 = *(v4 + 44);
    if (v29 < *(v4 + 64))
    {
      *(v4 + 44) = v29 + 1;
    }
  }

  else
  {
    v28 = CFRetain(a2);
  }

  if (v28)
  {
    v22 = sbp_ma_attachMotionData(v4, v28);
    if (v22)
    {
      sbp_ma_processSampleBuffer_cold_10();
    }
  }

  else
  {
    v22 = 0;
  }

LABEL_38:
  v30 = *(v4 + 8);
  if (v30)
  {
    v30(*(v4 + 16), v22, v28);
    v22 = 0;
  }

  if (v28)
  {
    CFRelease(v28);
  }

  return v22;
}

uint64_t sbp_ma_finishPendingProcessing()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    fig_log_get_emitter();

    return FigSignalErrorAtGM();
  }

  else
  {
    v2 = DerivedStorage;
    if (*(DerivedStorage + 64) >= 1)
    {
      v3 = *(DerivedStorage + 56);
      if ((v3 & 0x80000000) == 0)
      {
        for (i = *(*(DerivedStorage + 48) + 8 * v3); i; i = *(*(v2 + 48) + 8 * *(v2 + 56)))
        {
          if (*(v2 + 640))
          {
            FigMotionIncreaseRingIndex((v2 + 648), *(v2 + 64) + 1);
          }

          v5 = sbp_ma_attachMotionData(v2, i);
          if (v5)
          {
            sbp_ma_finishPendingProcessing_cold_1();
          }

          v6 = *(v2 + 8);
          if (v6)
          {
            v6(*(v2 + 16), v5, i);
          }

          CFRelease(i);
          *(*(v2 + 48) + 8 * *(v2 + 56)) = 0;
          FigMotionIncreaseRingIndex((v2 + 56), *(v2 + 64));
        }
      }
    }

    sbp_ma_resetStorage(v2);
    return 0;
  }
}

uint64_t sbp_ma_attachMotionData(uint64_t a1, CMSampleBufferRef sbuf)
{
  memset(&v22, 0, sizeof(v22));
  FormatDescription = CMSampleBufferGetFormatDescription(sbuf);
  if (!FormatDescription)
  {
    sbp_ma_attachMotionData_cold_4(&v21);
    return LODWORD(v21.value);
  }

  v5 = FormatDescription;
  v6 = *off_1E798A3C8;
  v7 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
  Mutable = v7;
  if (!v7)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (!Mutable)
    {
      sbp_ma_attachMotionData_cold_3(&v21);
      return LODWORD(v21.value);
    }
  }

  if (*(a1 + 664))
  {
    v9 = *(a1 + 656);
    if (v9)
    {
      CFDictionarySetValue(Mutable, *off_1E798CE60, v9);
      v10 = *(a1 + 656);
      if (v10)
      {
        CFRelease(v10);
        *(a1 + 656) = 0;
      }
    }

    v11 = *off_1E798CE58;
    Value = CFDictionaryGetValue(Mutable, *off_1E798CE58);
    if (Value)
    {
      v13 = Value;
      CFDictionaryGetValue(Value, *off_1E798CE68);
      if (FigCFEqual())
      {
        CFDictionaryRemoveValue(Mutable, v11);
        value_low = 0;
        if (!v7)
        {
          goto LABEL_19;
        }

        return value_low;
      }

      v16 = CFDictionaryGetValue(v13, *off_1E798A420);
      if (v16)
      {
        CMTimeMakeFromDictionary(&v22, v16);
        v21 = v22;
        v17 = a1;
        v18 = v13;
        goto LABEL_18;
      }

      v20 = sbp_ma_attachMotionData_cold_1();
    }

    else
    {
      v20 = sbp_ma_attachMotionData_cold_2();
    }

    value_low = LODWORD(v21.value);
    if ((v20 & 1) == 0)
    {
      return value_low;
    }

    goto LABEL_19;
  }

  v15 = CMGetAttachment(sbuf, *off_1E798A420, 0);
  if (v15)
  {
    CMTimeMakeFromDictionary(&v22, v15);
  }

  else
  {
    CMSampleBufferGetPresentationTimeStamp(&v22, sbuf);
  }

  v21 = v22;
  v17 = a1;
  v18 = Mutable;
LABEL_18:
  value_low = sbp_ma_addMotionDataToMetadataDictionary(v17, v18, &v21, v5);
  if (!v7)
  {
LABEL_19:
    CMSetAttachment(sbuf, v6, Mutable, 1u);
    CFRelease(Mutable);
  }

  return value_low;
}

uint64_t sbp_ma_processInitialCinematicFutureMetadata(uint64_t a1, const __CFDictionary *a2, CFDictionaryRef theDict, const opaqueCMFormatDescription *a4)
{
  v7 = sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary(a1, theDict);
  if (v7)
  {
    v9 = v7;
    sbp_ma_processInitialCinematicFutureMetadata_cold_1();
  }

  else if (a2)
  {
    Value = CFDictionaryGetValue(a2, *off_1E798A420);
    if (Value)
    {
      memset(&v12, 0, sizeof(v12));
      CMTimeMakeFromDictionary(&v12, Value);
      v11 = v12;
      v9 = sbp_ma_addMotionDataToMetadataDictionary(a1, a2, &v11, a4);
      if (v9)
      {
        sbp_ma_processInitialCinematicFutureMetadata_cold_2();
      }

      else
      {
        CFArrayAppendValue(*(a1 + 656), a2);
      }
    }

    else
    {
      sbp_ma_processInitialCinematicFutureMetadata_cold_3(&v12);
      return LODWORD(v12.value);
    }
  }

  else
  {
    return 0;
  }

  return v9;
}

uint64_t sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary(uint64_t a1, CFDictionaryRef theDict)
{
  v2 = theDict;
  v49 = 0;
  v47 = 0;
  v48 = 0;
  v4 = *(a1 + 64);
  v5 = *(a1 + 560);
  MotionDataFromISP = FigMotionGetMotionDataFromISP(theDict, *(a1 + 600), *(a1 + 616), 110, &v47 + 1, &v48, *(a1 + 608), 510, &v47);
  if (MotionDataFromISP)
  {
    v29 = MotionDataFromISP;
    sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary_cold_1();
  }

  else
  {
    if (SHIDWORD(v47) >= 1)
    {
      v41 = v2;
      v7 = (v4 << 8) + 256;
      v8 = *MEMORY[0x1E695E4C0];
      if (v5 < 1)
      {
        Count = CFArrayGetCount(*(a1 + 584));
        if (Count + SHIDWORD(v47) < v7 && SHIDWORD(v47) >= 1)
        {
          v17 = 0;
          v18 = 0;
          v19 = *MEMORY[0x1E695E480];
          v20 = 8;
          do
          {
            valuePtr = *(*(a1 + 600) + v20) - *(a1 + 568);
            v21 = CFNumberCreate(v19, kCFNumberDoubleType, &valuePtr);
            v22 = CFDataCreate(v19, (*(a1 + 600) + v20 + 8), 32);
            v23 = CFDataCreate(v19, (*(a1 + 616) + v17), 12);
            values = v21;
            v43 = v8;
            v44 = v22;
            v45 = v23;
            v24 = CFArrayCreate(v19, &values, 4, MEMORY[0x1E695E9C0]);
            CFArrayAppendValue(*(a1 + 584), v24);
            if (v21)
            {
              CFRelease(v21);
            }

            if (v22)
            {
              CFRelease(v22);
            }

            if (v23)
            {
              CFRelease(v23);
            }

            if (v24)
            {
              CFRelease(v24);
            }

            ++v18;
            v17 += 12;
            v20 += 48;
          }

          while (v18 < SHIDWORD(v47));
        }
      }

      else
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695E480];
        v11 = 8;
        v12 = MEMORY[0x1E695E9C0];
        do
        {
          valuePtr = *(*(a1 + 600) + v11) - *(a1 + 568);
          v13 = CFNumberCreate(v10, kCFNumberDoubleType, &valuePtr);
          v14 = CFDataCreate(v10, (*(a1 + 600) + v11 + 8), 32);
          values = v13;
          v43 = v8;
          v44 = v14;
          v15 = CFArrayCreate(v10, &values, 3, v12);
          CFArraySetValueAtIndex(*(a1 + 584), *(a1 + 592), v15);
          *(a1 + 592) = (*(a1 + 592) + 1) % v7;
          if (v13)
          {
            CFRelease(v13);
          }

          if (v14)
          {
            CFRelease(v14);
          }

          if (v15)
          {
            CFRelease(v15);
          }

          ++v9;
          v11 += 48;
        }

        while (v9 < SHIDWORD(v47));
      }

      v25 = *(a1 + 640);
      v2 = v41;
      if (v25)
      {
        v26 = (v25 + 12 * *(a1 + 652));
        v27 = v48;
        v26[1].i32[0] = v49;
        *v26 = v27;
        FigMotionIncreaseRingIndex((a1 + 652), *(a1 + 64) + 1);
        FigMotionIncreaseRingIndex((a1 + 648), *(a1 + 64) + 1);
      }
    }

    if (v47 < 1)
    {
      return 0;
    }

    else
    {
      LODWORD(valuePtr) = 0;
      Value = CFDictionaryGetValue(v2, *off_1E798B540);
      v29 = hallPositionIndexFromPortType(Value, &valuePtr);
      if (v29)
      {
        sbp_ma_extractAndBufferISPMotionDataFromMetadataDictionary_cold_2();
      }

      else
      {
        v30 = (*(a1 + 64) << 9) + 512;
        v31 = CFArrayGetCount(*(a1 + 624 + 8 * LODWORD(valuePtr)));
        if (v31 + v47 < v30 && v47 >= 1)
        {
          v33 = 0;
          v34 = 0;
          v35 = *MEMORY[0x1E695E480];
          v36 = MEMORY[0x1E695E9C0];
          do
          {
            v37 = CFNumberCreate(v35, kCFNumberDoubleType, (*(a1 + 608) + v33));
            v38 = CFDataCreate(v35, (*(a1 + 608) + v33 + 8), 8);
            values = v37;
            v43 = v38;
            v39 = CFArrayCreate(v35, &values, 2, v36);
            CFArrayAppendValue(*(a1 + 624 + 8 * LODWORD(valuePtr)), v39);
            if (v37)
            {
              CFRelease(v37);
            }

            if (v38)
            {
              CFRelease(v38);
            }

            if (v39)
            {
              CFRelease(v39);
            }

            ++v34;
            v33 += 24;
          }

          while (v34 < v47);
        }
      }
    }
  }

  return v29;
}

uint64_t sbp_ma_addMotionDataToMetadataDictionary(uint64_t a1, const __CFDictionary *a2, CMTime *a3, CMVideoFormatDescriptionRef videoDesc)
{
  v85 = 0.0;
  v84 = 0;
  bytes = 0;
  if (!*(a1 + 24))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_15();
    return 0;
  }

  v7 = *(a1 + 560);
  memset(v82, 0, sizeof(v82));
  Dimensions = CMVideoFormatDescriptionGetDimensions(videoDesc);
  v8 = a1 + 72;
  v9 = (a1 + 80);
  v10 = 7;
  do
  {
    *(v9 - 1) = (Dimensions + -1.0) * 0.5;
    *v9 = (SHIDWORD(Dimensions) + -1.0) * 0.5;
    v9 += 7;
    --v10;
  }

  while (v10);
  Value = CFDictionaryGetValue(a2, *off_1E798B540);
  if (!Value)
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_14(&time);
    return LODWORD(time.value);
  }

  v12 = Value;
  if (CFEqual(Value, *off_1E798A0E8))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_1(&time);
    return LODWORD(time.value);
  }

  time = *a3;
  Seconds = CMTimeGetSeconds(&time);
  time.value = 0;
  if (FigMotionComputeFramePTSOffsetFromISPCrop(a2, &time.value))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_2();
  }

  v14 = Seconds + *&time.value;
  FigCFDictionarySetDouble();
  if (!FigCFDictionaryGetInt32IfPresent())
  {
    FigCFDictionaryGetInt32IfPresent();
  }

  if (FigCFDictionaryGetDoubleIfPresent() && v85 <= 0.0)
  {
    v85 = 0.0;
  }

  if (*(a1 + 576))
  {
    v15 = *(a1 + 648);
    if ((v15 & 0x80000000) == 0)
    {
      v16 = *(a1 + 640) + 12 * v15;
      v17 = *(v16 + 8);
      bytes = *v16;
      LODWORD(v84) = v17;
    }
  }

  else
  {
    v18 = *(a1 + 32);
    if (v18)
    {
      FigCoreMotionGetGravity(v18, &bytes, &bytes + 4, &v84);
    }
  }

  v19 = *MEMORY[0x1E695E480];
  v20 = CFDataCreate(*MEMORY[0x1E695E480], &bytes, 12);
  if (!v20)
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_13();
    return 0;
  }

  v21 = v20;
  CFDictionarySetValue(a2, *off_1E798D158, v20);
  CFRelease(v21);
  LODWORD(valuePtr[0]) = 1065353216;
  LODWORD(values) = 0;
  v79 = v12;
  v22 = portIndexFromPortType(v12, &values);
  if (v22)
  {
    value_low = v22;
    sbp_ma_addMotionDataToMetadataDictionary_cold_3();
    goto LABEL_118;
  }

  LODWORD(v89[0]) = 1;
  Int32IfPresent = FigCFDictionaryGetInt32IfPresent();
  v24 = LODWORD(v89[0]);
  if (Int32IfPresent && SLODWORD(v89[0]) <= 0)
  {
    v24 = 1;
    LODWORD(v89[0]) = 1;
  }

  v78 = v7;
  if (FigMotionComputeLensPositionScalingFactor(a2, Dimensions, HIDWORD(Dimensions), *(a1 + 464) * v24, (*(a1 + 468) * v24), valuePtr))
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_4();
  }

  FigCFDictionarySetFloat();
  v25 = *(v8 + 56 * values + 44);
  if (v25 <= 0.0)
  {
    v26 = *valuePtr;
  }

  else
  {
    v26 = *valuePtr * v25;
  }

  if (!FigCFDictionaryGetFloatIfPresent() || *(v82 + 1) <= 0.00000011921)
  {
    v27 = *(a1 + 472);
    if (CFDictionaryContainsKey(a2, *off_1E798B530))
    {
      if (CFEqual(v12, *off_1E798A0D0) || (LODWORD(time.value) = 0, FigCFDictionaryGetIntIfPresent()) && LODWORD(time.value) || (CFEqual(v12, *off_1E798A0E0) || CFEqual(v12, *off_1E798A0F8)) && v27)
      {
        LODWORD(time.value) = 0;
        FigCFDictionaryGetFloatIfPresent();
        v28 = v26 * *&time.value;
        *(v82 + 1) = v26 * *&time.value;
        if ((v26 * *&time.value) > 0.00000011921)
        {
LABEL_40:
          v8 = a1 + 72;
          if (v28 <= 0.00000011921)
          {
            *(v82 + 1) = Dimensions * 0.7;
          }

          goto LABEL_42;
        }
      }
    }

    v29 = FigMotionCalculateAdjustedLensPosition(a2, a1 + 72 + 56 * values, v82 + 1, *&v84, *valuePtr);
    if (!v29)
    {
      v28 = *(v82 + 1);
      goto LABEL_40;
    }

    value_low = v29;
    sbp_ma_addMotionDataToMetadataDictionary_cold_5();
LABEL_118:
    fig_log_get_emitter();
    FigDebugAssert3();
    return value_low;
  }

LABEL_42:
  FigCFDictionarySetFloat();
  FigCFDictionarySetFloat();
  if ((*(a1 + 40) & 0x80) != 0 && v7 <= 0)
  {
    v30 = sbp_ma_copyAndFlushISPData(*(a1 + 584));
    if (v30)
    {
      v31 = v30;
      valuePtr[0] = -*(a1 + 568);
      v32 = CFNumberCreate(v19, kCFNumberDoubleType, valuePtr);
      v33 = *off_1E798D170;
      time.value = *off_1E798D178;
      *&time.timescale = v33;
      *&values = v32;
      *(&values + 1) = v31;
      v34 = CFDictionaryCreate(v19, &time, &values, 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionarySetValue(a2, *off_1E798D190, v34);
      CFRelease(v34);
      CFRelease(v31);
      CFRelease(v32);
    }
  }

  if ((*(a1 + 41) & 1) == 0)
  {
    value_low = 0;
    goto LABEL_65;
  }

  Mutable = CFArrayCreateMutable(v19, 2, MEMORY[0x1E695E9C0]);
  if (!Mutable)
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_8(&time);
    return LODWORD(time.value);
  }

  v37 = Mutable;
  v77 = v8;
  v38 = 0;
  value_low = 0;
  v39 = a1 + 624;
  v40 = 1;
  v41 = MEMORY[0x1E695E9C0];
  do
  {
    v42 = v40;
    if (CFArrayGetCount(*(v39 + 8 * v38)) < 1)
    {
      goto LABEL_56;
    }

    v43 = *(v39 + 8 * v38);
    LODWORD(values) = v38;
    v44 = sbp_ma_copyAndFlushISPData(v43);
    if (!v44)
    {
      goto LABEL_55;
    }

    v45 = v44;
    v46 = CFNumberCreate(v19, kCFNumberIntType, &values);
    if (v46)
    {
      v47 = v46;
      v86[0] = v46;
      v86[1] = v45;
      v48 = CFArrayCreate(v19, v86, 2, v41);
      if (v48)
      {
        v49 = v48;
        CFArrayAppendValue(v37, v48);
        CFRelease(v47);
        CFRelease(v49);
        CFRelease(v45);
LABEL_55:
        value_low = 0;
        goto LABEL_56;
      }

      sbp_ma_addMotionDataToMetadataDictionary_cold_6(v86, v47, &time);
    }

    else
    {
      sbp_ma_addMotionDataToMetadataDictionary_cold_7(&time);
    }

    value_low = LODWORD(time.value);
    CFRelease(v45);
    if (value_low)
    {
      fig_log_get_emitter();
      FigDebugAssert3();
    }

LABEL_56:
    v40 = 0;
    v38 = 1;
  }

  while ((v42 & 1) != 0);
  Copy = CFArrayCreateCopy(v19, v37);
  v7 = v78;
  if (Copy)
  {
    v51 = Copy;
    CFDictionarySetValue(a2, *off_1E798D188, Copy);
    CFRelease(v51);
  }

  CFRelease(v37);
  v8 = v77;
LABEL_65:
  v52 = *(a1 + 32);
  if (v52)
  {
    if (v7 <= 0)
    {
      time.value = 0;
      FigCoreMotionCopyMotionData(v52, &time);
      if (time.value)
      {
        CFDictionarySetValue(a2, *off_1E798D198, time.value);
        CFRelease(time.value);
      }
    }
  }

  if ((*(a1 + 40) & 0x56) == 0)
  {
    return value_low;
  }

  v53 = SHIDWORD(v84);
  if (*(a1 + 32))
  {
    v54 = v14 + v85 * -0.5 + 0.005;
  }

  else
  {
    v54 = v14 + v85 * -0.5;
  }

  v55 = v54 + v53 / 1000000.0;
  if (v7 < 1)
  {
    v57 = v54;
  }

  else
  {
    v56 = *(a1 + 560);
    v57 = v54 + (Dimensions - v56) / (2 * Dimensions) * (v55 - v54);
    v55 = v54 + (v56 + Dimensions) / (2 * Dimensions) * (v55 - v54);
  }

  v81 = 0;
  v58 = portIndexFromPortType(v79, &v81);
  if (v58)
  {
    value_low = v58;
    sbp_ma_addMotionDataToMetadataDictionary_cold_9();
    return value_low;
  }

  v92[0] = 0;
  values = xmmword_1AD0562A8;
  v91 = unk_1AD0562B8;
  memset(v89, 0, sizeof(v89));
  v59 = *(a1 + 584);
  v60 = *(a1 + 28);
  if (!v59)
  {
    if (v60 >= 2)
    {
      if (v60 != 2)
      {
LABEL_88:
        v63 = v91;
        *(a1 + 480) = values;
        *(a1 + 496) = v63;
        goto LABEL_89;
      }

      AverageQuaternion = FigCoreMotionGetAverageQuaternion(*(a1 + 32), &values, 0);
    }

    else
    {
      AverageQuaternion = FigCoreMotionGetQuaternionAndAttitude(*(a1 + 32), &values, 0, v89, 0);
    }

    v92[0] = AverageQuaternion;
    goto LABEL_88;
  }

  if (v60 < 2)
  {
    v61 = FigMotionComputeQuaternionAndAttitudeFromArray(v59, a1 + 480, v89, v54 + v53 / 2000000.0);
    goto LABEL_84;
  }

  if (v60 == 2)
  {
    v61 = FigMotionComputeAverageQuaternionFromArray(v59, (a1 + 480), v57, v55);
LABEL_84:
    v92[0] = v61;
  }

LABEL_89:
  v64 = CFNumberCreate(v19, kCFNumberSInt32Type, v92);
  CFDictionarySetValue(a2, *off_1E798D1A0, v64);
  CFRelease(v64);
  if ((*(a1 + 40) & 0x52) != 0)
  {
    LODWORD(v82[0]) = 0;
    FigCFDictionaryGetInt32IfPresent();
    FigMotionCalculateAdjustedFocusPosition(v82, *&v84, *(v8 + 56 * v81 + 40));
    if (!*(a1 + 544))
    {
      v65 = *(a1 + 496);
      *(a1 + 512) = *(a1 + 480);
      *(a1 + 528) = v65;
      *(a1 + 544) = 1;
    }

    v66 = FigMotionMultiplyByInverseOfQuaternion((a1 + 512), (a1 + 480));
    valuePtr[0] = v66;
    valuePtr[1] = v67;
    valuePtr[2] = v68;
    valuePtr[3] = v69;
    v70 = *(a1 + 496);
    *(a1 + 512) = *(a1 + 480);
    *(a1 + 528) = v70;
    v71 = *(a1 + 40);
    if ((v71 & 0x40) != 0)
    {
      memset(&time, 0, sizeof(time));
      FigMotionAttitudeFromQuaternion(&time.value, v66, v67, v68, v69);
      v72 = CFDataCreate(v19, &time, 24);
      CFDictionarySetValue(a2, *off_1E798D160, v72);
      if (v72)
      {
        CFRelease(v72);
      }

      v71 = *(a1 + 40);
    }

    if ((v71 & 2) != 0)
    {
      FigMotionComputeTranslationFromCameraMotion(valuePtr, v8 + 56 * v81, v82, &time);
      v92[0] = v73;
      if (!v73)
      {
        *(a1 + 552) = vadd_f32(time.value, *(a1 + 552));
        v74 = CFDataCreate(v19, (a1 + 552), 8);
        CFDictionarySetValue(a2, *off_1E798D1C0, v74);
        if (v74)
        {
          CFRelease(v74);
        }

        v71 = *(a1 + 40);
        goto LABEL_101;
      }

      sbp_ma_addMotionDataToMetadataDictionary_cold_10();
    }

    else
    {
LABEL_101:
      if ((v71 & 0x10) != 0)
      {
        v92[0] = FigMotionComputeTransformFromCameraMotion(valuePtr, v8 + 56 * v81, v82, 0, 0, &time);
        if (v92[0])
        {
          sbp_ma_addMotionDataToMetadataDictionary_cold_11();
        }

        else
        {
          v75 = CFDataCreate(v19, &time, 36);
          CFDictionarySetValue(a2, *off_1E798D1B8, v75);
          if (v75)
          {
            CFRelease(v75);
          }
        }
      }
    }
  }

  value_low = v92[0];
  if (v92[0])
  {
    sbp_ma_addMotionDataToMetadataDictionary_cold_12();
  }

  return value_low;
}

const __CFArray *sbp_ma_copyAndFlushISPData(const __CFArray *theArray)
{
  if (theArray)
  {
    v1 = theArray;
    Copy = CFArrayCreateCopy(*MEMORY[0x1E695E480], theArray);
    CFArrayRemoveAllValues(v1);
    return Copy;
  }

  return theArray;
}

uint64_t F32toF16_0(float a1)
{
  v1 = HIWORD(LODWORD(a1)) & 0x8000;
  v2 = (LODWORD(a1) >> 23);
  v3 = ((((LODWORD(a1) & 0x7FFFFFu) >> 13) | (LODWORD(a1) >> 23 << 10)) + 0x4000) | v1;
  if (v2 < 0x71)
  {
    LOWORD(v3) = HIWORD(a1) & 0x8000;
  }

  v4 = v1 | 0x7C00;
  if (v2 >= 0x8F)
  {
    LOWORD(v3) = v4;
  }

  v5 = v4 | LOWORD(a1) & 0x3FF;
  if ((LODWORD(a1) & 0x7FFFFF) == 0)
  {
    v5 = v4;
  }

  if (v2 != 255)
  {
    return v3;
  }

  return v5;
}

float F16toF32(unsigned int a1)
{
  v1 = (a1 >> 10) & 0x1F;
  v2 = a1 & 0x3FF;
  if (v1 == 31)
  {
    LODWORD(result) = v2 | 0x7F800000;
  }

  else if (v1)
  {
    v4 = (1 << (v1 - 15));
    if (v1 <= 0xE)
    {
      LODWORD(v4) = ((15 - v1) << 23) ^ 0x3F800000;
    }

    result = (vcvts_n_f32_u32(v2, 0xAuLL) + 1.0) * v4;
  }

  else if ((a1 & 0x3FF) != 0)
  {
    result = vcvts_n_f32_u32(v2, 0x18uLL);
  }

  else
  {
    result = 0.0;
  }

  if ((a1 & 0x8000u) != 0)
  {
    return -result;
  }

  return result;
}

const void **BWPreviewSynchronizerCreate(const void *a1)
{
  v2 = malloc_type_malloc(0x30uLL, 0x10200403042BB7FuLL);
  v3 = v2;
  *v2 = 0;
  if (a1)
  {
    *v2 = CFRetain(a1);
    *(v3 + 1) = 0u;
    *(v3 + 3) = 0u;
  }

  else
  {
    BWPreviewSynchronizerCreate_cold_1(v2, &v5);
    return v5;
  }

  return v3;
}

double BWPreviewSynchronizerReset(uint64_t a1)
{
  *(a1 + 24) = 0u;
  *(a1 + 8) = 0u;
  return 0.0;
}

double BWPreviewSynchronizerGetInsertionTime(double *a1, void *a2)
{
  v4 = CACurrentMediaTime();
  if (a2)
  {
    v23 = **&MEMORY[0x1E6960CC0];
    v5 = CMGetAttachment(a2, *off_1E798A420, 0);
    if (v5)
    {
      CMTimeMakeFromDictionary(&v23, v5);
    }

    else
    {
      CMSampleBufferGetPresentationTimeStamp(&v23, a2);
    }

    v22 = v23;
    Seconds = CMTimeGetSeconds(&v22);
    v7 = a1[3];
    if (v7 <= 0.0)
    {
      a1[3] = Seconds;
      v7 = Seconds;
    }

    v8 = Seconds - v7;
    v9 = a1[2];
    if (v8 <= v9 * 1.9 || v9 == 0.0)
    {
      v11 = v8;
    }

    else
    {
      v11 = a1[2];
    }

    if (CAImageQueueGetTimes() < 2)
    {
      v20 = a1[1];
      if (v20 > 0.0)
      {
        v4 = v20 + a1[4];
      }
    }

    else
    {
      v12 = *&v23.value;
      v13 = *&v23.timescale - *&v23.value;
      v14 = v11 / (*&v23.timescale - *&v23.value);
      v15 = round(v14);
      if (v14 >= 1.0)
      {
        v14 = v15;
      }

      if (v14 >= 1.0)
      {
        v16 = v14 + 0.35;
      }

      else
      {
        v16 = v14 * 1.35;
      }

      a1[4] = v13;
      v17 = v12 - v13 + v13 * v16;
      v18 = v13 * 0.5;
      v19 = v17 + v13 * 0.01;
      if (v17 - a1[1] <= v18)
      {
        v4 = v19;
      }

      else
      {
        v4 = v17;
      }
    }

    a1[2] = v11;
    a1[3] = Seconds;
    a1[1] = v4;
  }

  else
  {
    BWPreviewSynchronizerGetInsertionTime_cold_1();
  }

  return v4;
}

void sub_1ACB7D4BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getBMCameraCaptureAutoFocusROIClass_block_invoke(uint64_t a1)
{
  BiomeLibraryLibrary();
  result = objc_getClass("BMCameraCaptureAutoFocusROI");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getBMCameraCaptureAutoFocusROIClass_block_invoke_cold_1();
  }

  getBMCameraCaptureAutoFocusROIClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t BiomeLibraryLibrary()
{
  v2[0] = 0;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    v2[1] = MEMORY[0x1E69E9820];
    v2[2] = 3221225472;
    v2[3] = __BiomeLibraryLibraryCore_block_invoke;
    v2[4] = &__block_descriptor_40_e5_v8__0l;
    v2[5] = v2;
    v3 = xmmword_1E7999B80;
    v4 = 0;
    BiomeLibraryLibraryCore_frameworkLibrary = _sl_dlopen();
  }

  v0 = BiomeLibraryLibraryCore_frameworkLibrary;
  if (!BiomeLibraryLibraryCore_frameworkLibrary)
  {
    BiomeLibraryLibrary_cold_1(v2);
  }

  if (v2[0])
  {
    free(v2[0]);
  }

  return v0;
}

uint64_t __BiomeLibraryLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  BiomeLibraryLibraryCore_frameworkLibrary = result;
  return result;
}

void *__getBiomeLibrarySymbolLoc_block_invoke(uint64_t a1)
{
  v2 = BiomeLibraryLibrary();
  result = dlsym(v2, "BiomeLibrary");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getBiomeLibrarySymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t FigVirtualDisplaySourceCameraViewfinderStreamCreate(const __CFAllocator *a1, void *a2)
{
  if (a2)
  {
    FigVirtualDisplaySourceGetClassID();
    v4 = CMDerivedObjectCreate();
    if (v4)
    {
      v6 = v4;
      FigVirtualDisplaySourceCameraViewfinderStreamCreate_cold_1();
    }

    else
    {
      DerivedStorage = CMBaseObjectGetDerivedStorage();
      *DerivedStorage = 0;
      v6 = VTPixelTransferSessionCreate(a1, (DerivedStorage + 56));
      if (v6)
      {
        FigVirtualDisplaySourceCameraViewfinderStreamCreate_cold_2();
      }

      else
      {
        *a2 = 0;
      }
    }
  }

  else
  {
    FigVirtualDisplaySourceCameraViewfinderStreamCreate_cold_3();
    return 4294954516;
  }

  return v6;
}

uint64_t stream_Invalidate()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage)
  {
    stream_Invalidate_cold_1();
  }

  v1 = *(DerivedStorage + 40);
  if (v1)
  {
    CFRelease(v1);
    *(DerivedStorage + 40) = 0;
  }

  v2 = *(DerivedStorage + 48);
  if (v2)
  {
    CFRelease(v2);
    *(DerivedStorage + 48) = 0;
  }

  v3 = *(DerivedStorage + 56);
  if (v3)
  {
    CFRelease(v3);
    *(DerivedStorage + 56) = 0;
  }

  return 0;
}

uint64_t stream_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (CFEqual(*MEMORY[0x1E6973EE0], a2))
  {
    v7 = @"CameraViewfinderStream";
    goto LABEL_3;
  }

  if (CFEqual(@"Destination", a2))
  {
    v7 = *(DerivedStorage + 40);
    if (!v7)
    {
      v8 = 0;
      goto LABEL_4;
    }

LABEL_3:
    v8 = CFRetain(v7);
LABEL_4:
    result = 0;
    *a4 = v8;
    return result;
  }

  return 4294954512;
}

uint64_t stream_SetProperty(uint64_t a1, const void *a2, const void *a3)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (!CFEqual(@"Destination", a2))
  {
    return 4294954512;
  }

  v6 = *(DerivedStorage + 40);
  *(DerivedStorage + 40) = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 0;
}

uint64_t stream_PlugProcessor(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    if (*DerivedStorage || *(DerivedStorage + 48))
    {
      stream_PlugProcessor_cold_1();
      return 4294955223;
    }

    else
    {
      *(DerivedStorage + 48) = a2;
      CFRetain(a2);
      return 0;
    }
  }

  else
  {
    stream_PlugProcessor_cold_2();
    return 4294955226;
  }
}

uint64_t stream_UnplugProcessor(uint64_t a1, const void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (a2)
  {
    v4 = DerivedStorage;
    if (!*DerivedStorage)
    {
      v5 = *(DerivedStorage + 48);
      if (v5 == a2)
      {
        CFRelease(v5);
        result = 0;
        *(v4 + 48) = 0;
        return result;
      }
    }

    stream_UnplugProcessor_cold_1();
  }

  else
  {
    stream_UnplugProcessor_cold_2();
  }

  return 4294955226;
}

uint64_t stream_Start()
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*DerivedStorage || (v1 = DerivedStorage, !*(DerivedStorage + 48)))
  {
    stream_Start_cold_6();
    return 4294955226;
  }

  v2 = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  v14 = 0;
  v12 = *MEMORY[0x1E695F058];
  v3 = *(v2 + 48);
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 56);
  if (!v4)
  {
    DimensionsFromTimingMode = 4294954514;
LABEL_18:
    stream_Start_cold_4();
    goto LABEL_10;
  }

  v5 = v4(v3, &v14, &v13);
  if (v5)
  {
    DimensionsFromTimingMode = v5;
    goto LABEL_18;
  }

  v6 = FigDisplayModes_LookupTimingModeIDByIndex();
  if (v6)
  {
    DimensionsFromTimingMode = v6;
    stream_Start_cold_1();
  }

  else
  {
    v7 = *(v2 + 48);
    v8 = *(*(CMBaseObjectGetVTable() + 16) + 64);
    if (v8)
    {
      v9 = v8(v7, 0, 0);
      if (!v9)
      {
        DimensionsFromTimingMode = FigDisplayModes_ExtractDimensionsFromTimingMode();
        if (DimensionsFromTimingMode)
        {
          stream_Start_cold_2();
        }

        else
        {
          *(v1 + 8) = v12;
          *(v1 + 24) = xmmword_1AD0563E0;
        }

        goto LABEL_10;
      }

      DimensionsFromTimingMode = v9;
    }

    else
    {
      DimensionsFromTimingMode = 4294954514;
    }

    stream_Start_cold_3();
  }

LABEL_10:
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (DimensionsFromTimingMode)
  {
    stream_Start_cold_5();
  }

  else
  {
    *v1 = 1;
  }

  return DimensionsFromTimingMode;
}

uint64_t utlLandmarkToC0(int a1, double *a2, double *a3, float64x2_t *a4, float64x2_t a5)
{
  if (!a2)
  {
    utlLandmarkToC0_cold_3();
    return 0;
  }

  if (!a3)
  {
    utlLandmarkToC0_cold_2();
    return 0;
  }

  if (!a4)
  {
    utlLandmarkToC0_cold_1();
    return 0;
  }

  a5.f64[0] = *a3 + *a2 * a3[2];
  v5 = 1.0 - (a3[1] + a2[1] * a3[3]);
  a4->f64[0] = a5.f64[0];
  a4->f64[1] = v5;
  rotatedC0toSensorOrientation(a1, a4, a5);
  return 1;
}

float64x2_t rotatedC0toSensorOrientation(int a1, float64x2_t *a2, float64x2_t result)
{
  if (a1 > 4)
  {
    if (a1 > 6)
    {
      if (a1 != 7)
      {
        if (a1 != 8)
        {
          return result;
        }

        v5 = a2->f64[0];
        v3 = 1.0 - a2->f64[1];
        goto LABEL_16;
      }

      v4 = a2->f64[0];
      v3 = 1.0 - a2->f64[1];
    }

    else
    {
      if (a1 == 5)
      {
        v3 = a2->f64[1];
        v5 = a2->f64[0];
LABEL_16:
        result.f64[0] = v5;
        a2->f64[0] = v3;
LABEL_17:
        a2->f64[1] = result.f64[0];
        return result;
      }

      v3 = a2->f64[1];
      v4 = a2->f64[0];
    }

    v5 = 1.0 - v4;
    goto LABEL_16;
  }

  if (a1 == 2)
  {
    result.f64[0] = 1.0 - a2->f64[0];
    a2->f64[0] = result.f64[0];
    return result;
  }

  if (a1 != 3)
  {
    if (a1 != 4)
    {
      return result;
    }

    result.f64[0] = 1.0 - a2->f64[1];
    goto LABEL_17;
  }

  __asm { FMOV            V1.2D, #1.0 }

  result = vsubq_f64(_Q1, *a2);
  *a2 = result;
  return result;
}

void vcn_encoderCallback(uint64_t a1, void *value, uint64_t a3, int a4, opaqueCMSampleBuffer *target)
{
  v9 = MEMORY[0x1E695FF58];
  if (*MEMORY[0x1E695FF58])
  {
    LODWORD(v34) = 0;
    CMSampleBufferGetPresentationTimeStamp(&time, target);
    CMTimeGetSeconds(&time);
    CMSampleBufferGetDecodeTimeStamp(&time, target);
    CMTimeGetSeconds(&time);
    FigCFDictionaryGetIntIfPresent();
    if (*v9 == 1)
    {
      [a1 pipelineTraceID];
      kdebug_trace();
    }
  }

  if (!a3)
  {
LABEL_13:
    if (!value)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  if (target)
  {
    v10 = *(a1 + 304);
    v11 = @"encoder callback, but returned sample buffer?!?";
LABEL_12:
    [v10 logErrorNumber:a3 errorString:v11];
    goto LABEL_13;
  }

  v34 = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if (value)
  {
    CMTimeMakeFromDictionary(&time, [value objectForKeyedSubscript:@"VideoCompressorNodeAttachedPTS"]);
    v34 = time.value;
    flags = time.flags;
    timescale = time.timescale;
    epoch = time.epoch;
    [value setObject:0 forKeyedSubscript:@"VideoCompressorNodeAttachedPTS"];
  }

  else
  {
    flags = *(MEMORY[0x1E6960C70] + 12);
    epoch = *(MEMORY[0x1E6960C70] + 16);
  }

  v14 = *(a1 + 304);
  if ((flags & 1) == 0)
  {
    v11 = @"encoder callback leaking";
    v10 = *(a1 + 304);
    goto LABEL_12;
  }

  time.value = v34;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  [v14 logErrorNumber:a3 errorString:{objc_msgSend(MEMORY[0x1E696AEC0], "stringWithFormat:", @"encoder callback dropping %.4lf", CMTimeGetSeconds(&time))}];
  time.value = v34;
  time.timescale = timescale;
  time.flags = flags;
  time.epoch = epoch;
  [*(a1 + 16) emitDroppedSample:{+[BWDroppedSample newDroppedSampleWithReason:pts:](BWDroppedSample, "newDroppedSampleWithReason:pts:", 0x1F219C030, &time)}];
  if (value)
  {
LABEL_14:
    CMSetAttachment(target, *off_1E798A3C8, value, 1u);
  }

LABEL_15:
  if (target)
  {
    DataBuffer = CMSampleBufferGetDataBuffer(target);
    if (DataBuffer)
    {
      v16 = DataBuffer;
      DataLength = CMBlockBufferGetDataLength(DataBuffer);
      if (*(a1 + 344) && DataLength != 0)
      {
        +[BWBufferometer trackBuffer:trackedSize:tag:bufferType:](BWBufferometer, "trackBuffer:trackedSize:tag:bufferType:", v16, DataLength, [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ Compressed Video", objc_msgSend(a1, "name")], @"CMBlockBuffer");
      }
    }

    v19 = *(a1 + 296);
    if (v19)
    {
      CMSetAttachment(target, @"FileCompletionScaledThumbnailSourcePixelBuffer", v19, 1u);
      v20 = *(a1 + 296);
      if (v20)
      {
        CFRelease(v20);
        *(a1 + 296) = 0;
      }
    }

    v32 = 0u;
    v33 = 0u;
    v30 = 0u;
    v31 = 0u;
    v21 = *(a1 + 360);
    v22 = [v21 countByEnumeratingWithState:&v30 objects:v29 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = *v31;
      do
      {
        for (i = 0; i != v23; ++i)
        {
          if (*v31 != v24)
          {
            objc_enumerationMutation(v21);
          }

          v26 = *(*(&v30 + 1) + 8 * i);
          CMSetAttachment(target, v26, [value objectForKeyedSubscript:v26], 1u);
          [value setObject:0 forKeyedSubscript:v26];
        }

        v23 = [v21 countByEnumeratingWithState:&v30 objects:v29 count:16];
      }

      while (v23);
    }

    v27 = *(a1 + 176);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __vcn_encoderCallback_block_invoke;
    block[3] = &unk_1E7990178;
    block[4] = a1;
    block[5] = target;
    dispatch_sync(v27, block);
  }
}

uint64_t __vcn_encoderCallback_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 32);
  if ((*(v2 + 226) & 1) == 0)
  {
    *(v2 + 226) = 1;
    if (dword_1ED8441F0)
    {
      v8 = 0;
      v7 = 0;
      os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
    }
  }

  return [*(*(a1 + 32) + 16) emitSampleBuffer:{*(a1 + 40), v5, v6}];
}

uint64_t rl_concreteRendererWithParametersForType(uint64_t result, void *a2, uint64_t *a3, uint64_t *a4, void *a5, uint64_t a6, int a7)
{
  if (!a3 || !a4)
  {
    return result;
  }

  if (result > 2)
  {
    if (result <= 4)
    {
      if (result != 3)
      {
        *a3 = [a2 provideCoreImageFilterRenderer];
        if (a7)
        {
          v13 = a6;
        }

        else
        {
          v13 = 0;
        }

        v14 = [[BWCoreImageFilterRendererParameters alloc] initWithFilters:a5 originalOutputFilter:v13];
        goto LABEL_23;
      }

      result = [a2 provideStillImageCoreImageBlurMapRenderer];
LABEL_21:
      *a3 = result;
      return result;
    }

    if (result != 5)
    {
      if (result == 6)
      {
        result = [a2 provideApplySmartStyleRenderer];
        goto LABEL_21;
      }

      return result;
    }

    *a3 = [a2 provideMetalFilterRenderer];
    v14 = -[BWMetalColorCubeRendererParameters initWithColorFilter:colorLookupCache:]([BWMetalColorCubeRendererParameters alloc], "initWithColorFilter:colorLookupCache:", [a5 lastObject], objc_msgSend(a2, "provideColorLookupCache"));
LABEL_23:
    result = v14;
LABEL_24:
    *a4 = result;
    return result;
  }

  switch(result)
  {
    case 0:
      v15 = [a2 provideStreamingSDOFFilterRenderer];
      *a3 = v15;
      objc_opt_class();
      result = objc_opt_isKindOfClass();
      if ((result & 1) == 0)
      {
        return result;
      }

      if ([a5 count] < 2)
      {
        result = 0;
        goto LABEL_24;
      }

      v14 = -[BWStreamingCVAFilterRendererParameters initWithColorFilter:colorLookupCache:studioAndContourRenderingEnabled:stageRenderingEnabled:]([BWStreamingCVAFilterRendererParameters alloc], "initWithColorFilter:colorLookupCache:studioAndContourRenderingEnabled:stageRenderingEnabled:", [a5 lastObject], objc_msgSend(a2, "provideColorLookupCache"), objc_msgSend(v15, "studioAndContourRenderingEnabled"), objc_msgSend(v15, "stageRenderingEnabled"));
      goto LABEL_23;
    case 1:
      result = [a2 provideStillImageMetalBlurMapRenderer];
      break;
    case 2:
      result = [a2 provideStillImageMetalSDOFRenderer];
      break;
    default:
      return result;
  }

  *a3 = result;
  *a4 = 0;
  return result;
}

uint64_t visn_pixelFormatsArrayFromPixelFormatTypeValue(uint64_t a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = a1;
    return [MEMORY[0x1E695DEC8] arrayWithObjects:&v3 count:1];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return a1;
    }

    else
    {
      return 0;
    }
  }
}

const void *visn_setSynchronizedSlaveFrameLivePhotoKeyFrameMetadata(uint64_t a1, uint64_t a2, const void *a3)
{
  result = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
  if (result)
  {
    v6 = CMGetAttachment(result, *off_1E798A3C8, 0);
    [v6 setObject:a1 forKeyedSubscript:*off_1E798D4B0];
    v7 = *off_1E798A0A0;

    return [v6 setObject:a2 forKeyedSubscript:v7];
  }

  return result;
}

double visn_transformRectangle(uint64_t a1, uint64_t a2, int a3, double a4, double a5, double a6, double a7)
{
  v7 = 0;
  v27 = a4 * a2;
  v28 = a5 * SHIDWORD(a2);
  v29 = v27 + a6 * a2;
  v30 = v28;
  v31 = v27;
  v32 = v28 + a7 * SHIDWORD(a2);
  v33 = v29;
  v34 = v32;
  do
  {
    v8 = 0;
    v9 = &v27 + 2 * v7;
    v10 = *v9;
    v11 = v9[1];
    v12 = (a1 + 8);
    do
    {
      v13 = v11 * *(v12 - 1) + *(v12 - 2) * v10;
      v14 = *v12;
      v12 += 3;
      *&v13 = v13 + v14;
      v25.i32[v8++] = LODWORD(v13);
    }

    while (v8 != 3);
    v15 = v26;
    v16 = vld1_dup_f32(v15);
    *&v26[16 * v7++ + 8] = vcvtq_f64_f32(vdiv_f32(v25, v16));
  }

  while (v7 != 4);
  v17 = 0;
  v18 = 3.4028e38;
  v19 = 1.1755e-38;
  v20 = 1.1755e-38;
  v21 = 3.4028e38;
  do
  {
    v22 = *&v26[v17 + 8];
    v21 = fminf(v21, v22);
    v23 = *&v26[v17 + 16];
    v18 = fminf(v18, v23);
    v20 = fmaxf(v20, v22);
    v19 = fmaxf(v19, v23);
    v17 += 16;
  }

  while (v17 != 64);
  return (fmaxf(fminf(a3, v21 - ((a2 - a3) / 2)), 0.0) / a3);
}

void cmclsc_handleCaptureSessionDidStopRunningNotification(uint64_t a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v8 = [a3 isEqualToString:@"DidStopRunning"];
  if (a5)
  {
    if (a4)
    {
      if (v8)
      {
        v9 = CFGetTypeID(a5);
        if (v9 == CFDictionaryGetTypeID())
        {
          v10 = [objc_msgSend(a5 objectForKeyedSubscript:{@"ErrorStatus", "intValue"}];
          if (dword_1EB58E740)
          {
            v21 = 0;
            v20 = 0;
            os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
            os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
            fig_log_call_emit_and_clean_up_after_send_and_compose();
          }

          if (v10 == -16406)
          {
            v12 = a2[4] == a4;
            v13 = a2[13] == a4;
            objc_initWeak(location, a2);
            v14 = a2[1];
            block[0] = MEMORY[0x1E69E9820];
            block[1] = 3221225472;
            block[2] = __cmclsc_handleCaptureSessionDidStopRunningNotification_block_invoke;
            block[3] = &unk_1E7999E98;
            objc_copyWeak(&v16, location);
            v17 = v12;
            v18 = v13;
            dispatch_async(v14, block);
            objc_destroyWeak(&v16);
            objc_destroyWeak(location);
          }
        }
      }
    }
  }
}

void sub_1ACB9C2A8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t FigCaptureSessionSetConfiguration(uint64_t a1, uint64_t a2)
{
  v4 = *(*(CMBaseObjectGetVTable() + 16) + 24);
  if (v4)
  {

    return v4(a1, a2);
  }

  else
  {
    v6 = @"ErrorStatus";
    v7 = &unk_1F2245A90;
    [MEMORY[0x1E695DF20] dictionaryWithObjects:&v7 forKeys:&v6 count:1];
    CMNotificationCenterGetDefaultLocalCenter();
    return CMNotificationCenterPostNotification();
  }
}

void sub_1ACB9CBC0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB9D138(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak(&location);
  _Block_object_dispose((v18 - 64), 8);
  _Unwind_Resume(a1);
}

void sub_1ACB9D728(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, char a17)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a17, 8);
  _Unwind_Resume(a1);
}

void sub_1ACB9F2C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location, char a19)
{
  objc_destroyWeak(&location);
  _Block_object_dispose(&a19, 8);
  _Unwind_Resume(a1);
}

void __cmclsc_handleCaptureSessionDidStopRunningNotification_block_invoke(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (WeakRetained)
  {
    v3 = WeakRetained;
    if (*(a1 + 40) == 1 && [WeakRetained[3] count])
    {
      if (dword_1EB58E740)
      {
        v19 = 0;
        v18 = 0;
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = v3 + 4;
      v7 = (v3 + 12);
      [v3 _stopSession:v3[4] sessionRunningInOut:{v3 + 12, v14, v15}];
      [v3 _resolveVideoCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v8 = v3[4];
      v9 = v3[10];
      v10 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v10)
      {
        v10(v8, v9);
      }

      else
      {
        v16 = @"ErrorStatus";
        v17[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }

      [v3 _resolveCaptureSourcePropertiesFromLocalVideoCameraSessionConfigurationValues];
    }

    else
    {
      if (*(a1 + 41) != 1 || *(v3 + 161) != 1)
      {
        goto LABEL_18;
      }

      if (dword_1EB58E740)
      {
        v19 = 0;
        v18 = 0;
        v5 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
      }

      v6 = v3 + 13;
      v7 = (v3 + 20);
      [v3 _stopSession:v3[13] sessionRunningInOut:{v3 + 20, v14, v15}];
      [v3 _resolveMetadataCameraFigCaptureSessionConfigurationValuesFromLocalSessionConfigurationValues];
      v11 = v3[13];
      v12 = v3[18];
      v13 = *(*(CMBaseObjectGetVTable() + 16) + 24);
      if (v13)
      {
        v13(v11, v12);
      }

      else
      {
        v16 = @"ErrorStatus";
        v17[0] = &unk_1F2245A90;
        [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
        CMNotificationCenterGetDefaultLocalCenter();
        CMNotificationCenterPostNotification();
      }
    }

    [v3 _startSession:*v6 sessionRunningInOut:v7];
LABEL_18:
  }
}

__CFString *CMCaptureLocalGetSinkIDForReceiverType(unint64_t a1)
{
  if (a1 > 2)
  {
    return 0;
  }

  else
  {
    return off_1E7999F00[a1];
  }
}

void *sClamshellStateChangeHandler(void *a1, const char *a2, int a3, char a4)
{
  if (a3 == -536657664)
  {
    return [a1 clamshellStateChangeHandler:a4 & 1];
  }

  return a1;
}

uint64_t FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4)
  {
    v4 = a4;
    v5 = a3;
    v6 = a1;
    if (sCaptureDeferredPhotoProcessorRemoteClient)
    {
      goto LABEL_11;
    }

    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 2, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633B0], @"ServerConnectionDied");
    CFDictionarySetValue(Mutable, *MEMORY[0x1E69633C0], *MEMORY[0x1E695E4D0]);
    v8 = FigXPCRemoteClientCreate();
    if (!sCaptureDeferredPhotoProcessorRemoteClient)
    {
      v9 = 1;
      v10 = 250;
      v11 = 250000;
      do
      {
        os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
        os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
        fig_log_call_emit_and_clean_up_after_send_and_compose();
        usleep(v11);
        v8 = FigXPCRemoteClientCreate();
        if (sCaptureDeferredPhotoProcessorRemoteClient)
        {
          break;
        }

        v10 += 250;
        v11 += 250000;
      }

      while (v9++ < 3);
    }

    v4 = a4;
    v5 = a3;
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    v6 = a1;
    if (v8)
    {
      FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_1();
    }

    else
    {
LABEL_11:
      v14 = FigXPCCreateBasicMessage();
      if (v14)
      {
        v8 = v14;
        FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_2();
      }

      else if (v5 && (v15 = FigXPCMessageSetCFString(), v15))
      {
        v8 = v15;
        FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_3();
      }

      else
      {
        v16 = FigXPCRemoteClientSendSyncMessageCreatingReply();
        if (v16)
        {
          v8 = v16;
          FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_4();
        }

        else
        {
          uint64 = xpc_dictionary_get_uint64(0, *MEMORY[0x1E69615A0]);
          if (uint64)
          {
            v18 = uint64;
            FigCaptureDeferredPhotoProcessorGetClassID();
            v19 = CMDerivedObjectCreate();
            if (v19)
            {
              v8 = v19;
              FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_5();
            }

            else
            {
              *CMBaseObjectGetDerivedStorage() = v18;
              FigXPCRemoteClientAssociateObject();
              DerivedStorage = CMBaseObjectGetDerivedStorage();
              *(DerivedStorage + 12) = 0;
              *(DerivedStorage + 16) = v6;
              v21 = FigCFWeakReferenceHolderCreateWithReferencedObject();
              *(DerivedStorage + 24) = v21;
              if (v21)
              {
                v8 = 0;
                *v4 = 0;
              }

              else
              {
                FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_6();
                v8 = 4294954510;
              }
            }
          }

          else
          {
            FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_7();
            v8 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  else
  {
    FigCaptureDeferredPhotoProcessorRemoteCopyPhotoProcessor_cold_8();
    v8 = 4294954516;
  }

  FigXPCRelease();
  FigXPCRelease();
  return v8;
}

uint64_t cdpr_notificationFilter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v9 = 0;
  DeserializedNotification = captureDeferredPhotoProcessor_createDeserializedNotification(a2, a3, a4, &v9);
  if (DeserializedNotification)
  {
    cdpr_notificationFilter_cold_1(DeserializedNotification, &v9, &v10, &v11);
    v8 = v10;
    result = v11;
  }

  else
  {
    result = 4;
    v8 = v9;
  }

  *a5 = v8;
  return result;
}

uint64_t cdpr_messageHandler(uint64_t a1, uint64_t a2)
{
  v11 = 0;
  v12 = 0;
  v10 = 0;
  FigXPCMessageCopyCFString();
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  os_unfair_lock_lock((DerivedStorage + 12));
  if (*(DerivedStorage + 9))
  {
    os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
    os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
    fig_log_call_emit_and_clean_up_after_send_and_compose();
    v7 = 4294950474;
  }

  else
  {
    v4 = FigXPCMessageCopyCFDictionary();
    if (v4)
    {
      v7 = v4;
      cdpr_messageHandler_cold_1();
    }

    else
    {
      DeserializedNotification = captureDeferredPhotoProcessor_createDeserializedNotification(v12, a2, v11, &v10);
      if (DeserializedNotification)
      {
        v7 = DeserializedNotification;
        cdpr_messageHandler_cold_2();
      }

      else
      {
        if (*(DerivedStorage + 16))
        {
          v6 = FigCFWeakReferenceHolderCopyReferencedObject();
          v7 = v6;
          if (!v6)
          {
            goto LABEL_8;
          }

          (*(DerivedStorage + 16))(v6, v12, v10);
          CFRelease(v7);
        }

        v7 = 0;
      }
    }
  }

LABEL_8:
  os_unfair_lock_unlock((DerivedStorage + 12));
  if (v12)
  {
    CFRelease(v12);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v10)
  {
    CFRelease(v10);
  }

  return v7;
}

__CFString *captureDeferredPhotoProcessorRemote_CopyDebugDescription(const void *a1)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetRetainCount(a1);
  if (*(DerivedStorage + 8))
  {
    v6 = " (invalidated)";
  }

  else
  {
    v6 = "";
  }

  v7 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<FigCaptureDeferredPhotoProcessorRemote %p retainCount: %ld%s allocator: %p, objectID: %lld>", a1, v5, v6, v7, *DerivedStorage);
  return Mutable;
}

uint64_t captureDeferredPhotoProcessorRemote_CopyProperty(uint64_t a1, const void *a2, uint64_t a3, void *a4)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  v13 = 0;
  if (a4)
  {
    v8 = DerivedStorage;
    if (CFEqual(a2, @"ServerConnectionDied"))
    {
      v9 = 0;
      if (*(v8 + 9))
      {
        v10 = MEMORY[0x1E695E4D0];
      }

      else
      {
        v10 = MEMORY[0x1E695E4C0];
      }

      *a4 = *v10;
    }

    else
    {
      ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v13);
      if (ObjectID)
      {
        v9 = ObjectID;
        captureDeferredPhotoProcessorRemote_CopyProperty_cold_1();
      }

      else
      {
        v9 = FigXPCSendStdCopyPropertyMessage();
        if (v9)
        {
          captureDeferredPhotoProcessorRemote_CopyProperty_cold_2();
        }
      }
    }
  }

  else
  {
    captureDeferredPhotoProcessorRemote_CopyProperty_cold_3();
    v9 = 0;
  }

  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return v9;
}

uint64_t captureDeferredPhotoProcessorRemote_SetProperty(uint64_t a1)
{
  v4 = 0;
  ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v4);
  if (ObjectID)
  {
    v2 = ObjectID;
    captureDeferredPhotoProcessorRemote_SetProperty_cold_1();
  }

  else
  {
    v2 = FigXPCSendStdSetPropertyMessage();
    if (v2)
    {
      captureDeferredPhotoProcessorRemote_SetProperty_cold_2();
    }
  }

  FigXPCRemoteClientKillServerOnTimeout();
  return v2;
}

uint64_t captureDeferredPhotoProcessorRemote_getObjectID(uint64_t a1, void *a2)
{
  DerivedStorage = CMBaseObjectGetDerivedStorage();
  if (*(DerivedStorage + 8))
  {
    captureDeferredPhotoProcessorRemote_getObjectID_cold_1(&v6);
    return v6;
  }

  else
  {
    v4 = DerivedStorage;
    if (*(DerivedStorage + 9))
    {
      captureDeferredPhotoProcessorRemote_getObjectID_cold_2(&v7);
      return v7;
    }

    else
    {
      result = 0;
      *a2 = *v4;
    }
  }

  return result;
}

uint64_t captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers(uint64_t a1)
{
  v2 = 0;
  if (captureDeferredPhotoProcessorRemote_createBasicMessage(a1, 1668311411, &v2))
  {
    captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers_cold_1();
  }

  else if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers_cold_2();
  }

  else if (FigXPCMessageCopyCFObject())
  {
    captureDeferredPhotoProcessorRemote_CopyUnfinishedPhotoIdentifiers_cold_3();
  }

  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return 0;
}

uint64_t captureDeferredPhotoProcessorRemote_ProcessPhoto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = 0;
  v3 = captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(a1, 1885893743, a2, a3, &v8);
  if (v3)
  {
    v6 = v3;
    captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_1();
  }

  else
  {
    v4 = FigXPCMessageSetCFString();
    if (v4)
    {
      v6 = v4;
      captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_2();
    }

    else
    {
      v5 = FigXPCMessageSetCFArray();
      if (v5)
      {
        v6 = v5;
        captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_3();
      }

      else
      {
        v6 = FigXPCRemoteClientSendSyncMessage();
        if (v6)
        {
          captureDeferredPhotoProcessorRemote_ProcessPhoto_cold_4();
        }
      }
    }
  }

  FigXPCRelease();
  return v6;
}

uint64_t captureDeferredPhotoProcessorRemote_CancelPhotoProcessing(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v3 = captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(a1, 1668311156, a2, a3, &v6);
  if (v3)
  {
    v4 = v3;
    captureDeferredPhotoProcessorRemote_CancelPhotoProcessing_cold_1();
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
    if (v4)
    {
      captureDeferredPhotoProcessorRemote_CancelPhotoProcessing_cold_2();
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t captureDeferredPhotoProcessorRemote_DeletePersistentStorageForPhoto(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v3 = captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(a1, 1685091188, a2, a3, &v6);
  if (v3)
  {
    v4 = v3;
    captureDeferredPhotoProcessorRemote_DeletePersistentStorageForPhoto_cold_1();
  }

  else
  {
    v4 = FigXPCRemoteClientSendSyncMessage();
    if (v4)
    {
      captureDeferredPhotoProcessorRemote_DeletePersistentStorageForPhoto_cold_2();
    }
  }

  FigXPCRelease();
  return v4;
}

uint64_t captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription(uint64_t a1)
{
  v2[0] = 0;
  v2[1] = 0;
  if (captureDeferredPhotoProcessorRemote_getObjectID(a1, v2))
  {
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_1();
LABEL_11:
    fig_log_get_emitter();
    FigDebugAssert3();
    goto LABEL_7;
  }

  if (FigXPCCreateBasicMessage())
  {
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_2();
    goto LABEL_11;
  }

  if (FigXPCMessageSetCFString())
  {
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_3();
    goto LABEL_11;
  }

  if (FigXPCRemoteClientSendSyncMessageCreatingReply())
  {
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_4();
  }

  else if (FigXPCMessageCopyCFString())
  {
    captureDeferredPhotoProcessorRemote_PrettyPrintContainerDescription_cold_5();
  }

LABEL_7:
  FigXPCRelease();
  FigXPCRelease();
  FigXPCRemoteClientKillServerOnTimeout();
  return 0;
}

uint64_t captureDeferredPhotoProcessorRemote_createBasicMessage(uint64_t a1, uint64_t a2, void *a3)
{
  v7 = 0;
  v8 = 0;
  if (a3)
  {
    ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v7);
    if (ObjectID)
    {
      v5 = ObjectID;
      captureDeferredPhotoProcessorRemote_createBasicMessage_cold_1();
    }

    else
    {
      v5 = FigXPCCreateBasicMessage();
      if (v5)
      {
        captureDeferredPhotoProcessorRemote_createBasicMessage_cold_2();
      }

      else
      {
        *a3 = v8;
      }
    }
  }

  else
  {
    captureDeferredPhotoProcessorRemote_createBasicMessage_cold_3();
    return 4294954516;
  }

  return v5;
}

uint64_t captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v11 = 0;
  v12 = 0;
  if (a5)
  {
    ObjectID = captureDeferredPhotoProcessorRemote_getObjectID(a1, &v11);
    if (ObjectID)
    {
      v9 = ObjectID;
      captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_1();
    }

    else
    {
      v7 = FigXPCCreateBasicMessage();
      if (v7)
      {
        v9 = v7;
        captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_2();
      }

      else
      {
        v8 = FigXPCMessageSetCFString();
        if (v8)
        {
          v9 = v8;
          captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_3();
        }

        else
        {
          v9 = FigXPCMessageSetCFString();
          if (v9)
          {
            captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_4();
          }

          else
          {
            *a5 = v12;
          }
        }
      }
    }
  }

  else
  {
    captureDeferredPhotoProcessorRemote_createPhotoIdentifierMessage_cold_5();
    return 4294954516;
  }

  return v9;
}

uint64_t BWStillImageCaptureIDForSampleBuffer(const void *a1)
{
  v2 = CMGetAttachment(a1, @"StillSettings", 0);
  if (!v2)
  {
    v2 = CMGetAttachment(a1, @"BWStillImageCaptureSettings", 0);
    if (!v2)
    {
      return -1;
    }
  }

  return [v2 settingsID];
}

uint64_t BWStillImageProcessingFlagsForSampleBuffer(const void *a1)
{
  v1 = CMGetAttachment(a1, @"StillImageProcessingFlags", 0);

  return [v1 unsignedIntValue];
}

void BWStillImageSetProcessingFlagsForSampleBuffer(const void *a1, int a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a1, @"StillImageProcessingFlags", 0), "unsignedIntValue") | a2}];

  CMSetAttachment(a1, @"StillImageProcessingFlags", v3, 1u);
}

void BWStillImageUnsetProcessingFlagsForSampleBuffer(const void *a1, int a2)
{
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(CMGetAttachment(a1, @"StillImageProcessingFlags", 0), "unsignedIntValue") & ~a2}];

  CMSetAttachment(a1, @"StillImageProcessingFlags", v3, 1u);
}

unint64_t BWCropRectDimensionsForZoomFactor(uint64_t a1, float a2)
{
  FigCaptureMetadataUtilitiesComputeDenormalizedStillImageCropRect(a1, a1 >> 32, 0.0, 0.0, 1.0 / a2, 1.0 / a2, a1 / SHIDWORD(a1));
  width = v5.size.width;
  height = v5.size.height;
  if (CGRectIsNull(v5))
  {
    BWCropRectDimensionsForZoomFactor_cold_1();
  }

  return width | (height << 32);
}

void *BWGetWhiteBalanceMetadataFromFrameStatistics(void *a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(a1, "awbStable")), *off_1E798B148}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithBool:", objc_msgSend(a1, "awbLocked")), *off_1E798B118}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbRGain")), *off_1E798B120}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbGGain")), *off_1E798B0F8}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbBGain")), *off_1E798B0C0}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbComboRGain")), *off_1E798B0D8}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbComboGGain")), *off_1E798B0D0}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbComboBGain")), *off_1E798B0C8}];
  if ([a1 awbSkinRGain] && objc_msgSend(a1, "awbSkinGGain") && objc_msgSend(a1, "awbSkinBGain"))
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbSkinRGain")), *off_1E798B138}];
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbSkinGGain")), *off_1E798B130}];
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedShort:", objc_msgSend(a1, "awbSkinBGain")), *off_1E798B128}];
  }

  if ([a1 awbSpatialCCMMixingFactor])
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a1, "awbSpatialCCMMixingFactor")), *off_1E798B140}];
  }

  [v2 setObject:objc_msgSend(a1 forKeyedSubscript:{"colorCorrectionMatrix"), *off_1E798B1E0}];
  [v2 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithUnsignedInt:", objc_msgSend(a1, "cct")), *off_1E798B1D0}];
  return v2;
}

uint64_t BWCopyWhiteBalanceMetadata(void *a1, void *a2)
{
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B1D0), *off_1E798B1D0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B118), *off_1E798B118}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B148), *off_1E798B148}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B120), *off_1E798B120}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0F8), *off_1E798B0F8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0C0), *off_1E798B0C0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0D8), *off_1E798B0D8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0D0), *off_1E798B0D0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0C8), *off_1E798B0C8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0F0), *off_1E798B0F0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0E8), *off_1E798B0E8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B0E0), *off_1E798B0E0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B138), *off_1E798B138}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B130), *off_1E798B130}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B128), *off_1E798B128}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B1E0), *off_1E798B1E0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B140), *off_1E798B140}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", @"AwbOutputMetadata", @"AwbOutputMetadata"}];
  v4 = [a1 objectForKeyedSubscript:@"MIWBOutputMetadata"];

  return [a2 setObject:v4 forKeyedSubscript:@"MIWBOutputMetadata"];
}

uint64_t BWCopyLTMMetadata(void *a1, void *a2)
{
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B440), *off_1E798B440}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B438), *off_1E798B438}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B7C8), *off_1E798B7C8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A730), *off_1E798A730}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6B8), *off_1E798A6B8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6C8), *off_1E798A6C8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A550), *off_1E798A550}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A728), *off_1E798A728}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6B0), *off_1E798A6B0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6C0), *off_1E798A6C0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A548), *off_1E798A548}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B450), *off_1E798B450}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B338), *off_1E798B338}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B358), *off_1E798B358}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B1A8), *off_1E798B1A8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6A8), *off_1E798A6A8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6A0), *off_1E798A6A0}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798A6E8), *off_1E798A6E8}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B490), *off_1E798B490}];
  [a2 setObject:objc_msgSend(a1 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B4A0), *off_1E798B4A0}];
  v4 = *off_1E798B498;
  v5 = [a1 objectForKeyedSubscript:*off_1E798B498];

  return [a2 setObject:v5 forKeyedSubscript:v4];
}

uint64_t BWInferenceTypeForInferenceAttachmentKey(void *a1)
{
  if ([a1 isEqualToString:0x1F219E990] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", 0x1F219E9B0))
  {
    return 104;
  }

  if ([a1 isEqualToString:0x1F219E5F0] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", 0x1F219E6F0))
  {
    return 802;
  }

  if ([a1 isEqualToString:0x1F219E710])
  {
    return 201;
  }

  return 0;
}

id BWPortTypesWithResolutionFlavor(void *a1, uint64_t a2)
{
  v4 = [MEMORY[0x1E695DF70] array];
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(a1);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        v10 = [a1 objectForKeyedSubscript:v9];
        if ([v10 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithInt:", a2)}])
        {
          [v4 addObject:v9];
        }
      }

      v6 = [a1 countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  result = [v4 count];
  if (result)
  {
    return [v4 copy];
  }

  return result;
}

uint64_t BWCameraSensorOrientationCompensationDegreesCWForRequestedSettings(void *a1, uint64_t a2, char a3)
{
  if ((a3 & 1) != 0 || [a1 orientationMetadataExplicitlySet])
  {
    return 0;
  }

  return a2;
}

uint64_t dcn_convertU16toFloatForImage_NEON(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3, int32x2_t a4)
{
  a4.i32[0] = *(a3 + 8);
  v71 = a4;
  a4.i32[0] = *(a3 + 4);
  v72 = a4;
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v11 = CVPixelBufferGetBytesPerRow(a2);
  v12 = FigDepthFormatIs16Bit(PixelFormatType);
  if (v12)
  {
    v13 = 16;
  }

  else
  {
    v13 = 32;
  }

  v69 = *(a3 + 12);
  v70 = v12;
  v14 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (v14)
  {
    v67 = v14;
    dcn_convertU16toFloatForImage_NEON_cold_1();
  }

  else
  {
    v15 = CVPixelBufferLockBaseAddress(a2, 0);
    if (v15)
    {
      v67 = v15;
      dcn_convertU16toFloatForImage_NEON_cold_2(v15, a1);
    }

    else
    {
      if (FigDepthFormatIsDepth(PixelFormatType))
      {
        v16 = *(a3 + 16) ^ 1;
      }

      else
      {
        v16 = 0;
      }

      BaseAddress = CVPixelBufferGetBaseAddress(a1);
      v18 = CVPixelBufferGetBaseAddress(a2);
      v19 = vdupq_n_s32(v69);
      v20 = vdupq_lane_s32(v71, 0);
      v21 = vdupq_lane_s32(v72, 0);
      if (v16)
      {
        if (v70)
        {
          if (Height)
          {
            v22 = 0;
            v23.i64[0] = 0x3F0000003FLL;
            v23.i64[1] = 0x3F0000003FLL;
            v24 = vnegq_f32(v23);
            do
            {
              if (Width)
              {
                v25 = 0;
                v26 = v18;
                v27 = BaseAddress;
                do
                {
                  v28 = *v27++;
                  v29 = vmovl_u16(*v28.i8);
                  v30 = vmovl_high_u16(v28);
                  v31 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v29)), 0);
                  v32 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v30)), 0);
                  v33 = vrecpeq_f32(v31);
                  v34 = vrecpeq_f32(v32);
                  *v26 = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(vceqq_s32(v19, v29), v24, vmulq_f32(v33, vrecpsq_f32(v31, v33)))), vbslq_s8(vceqq_s32(v19, v30), v24, vmulq_f32(v34, vrecpsq_f32(v32, v34))));
                  v25 += 8;
                  v26 = (v26 + v13);
                }

                while (Width > v25);
              }

              ++v22;
              BaseAddress = (BaseAddress + BytesPerRow);
              v18 = (v18 + v11);
            }

            while (v22 != Height);
          }
        }

        else if (Height)
        {
          v44 = 0;
          v45.i64[0] = 0x3F0000003FLL;
          v45.i64[1] = 0x3F0000003FLL;
          v46 = vnegq_f32(v45);
          do
          {
            if (Width)
            {
              v47 = 0;
              v48 = BaseAddress;
              v49 = v18;
              do
              {
                v50 = *v48++;
                v51 = vmovl_u16(*v50.i8);
                v52 = vmovl_high_u16(v50);
                v53 = vceqq_s32(v19, v51);
                v54 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v51)), 0);
                v55 = vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v52)), 0);
                v56 = vrecpeq_f32(v54);
                v57 = vrecpeq_f32(v55);
                *v49 = vbslq_s8(v53, v46, vmulq_f32(v56, vrecpsq_f32(v54, v56)));
                v49[1] = vbslq_s8(vceqq_s32(v19, v52), v46, vmulq_f32(v57, vrecpsq_f32(v55, v57)));
                v49 += 2;
                v47 += 8;
              }

              while (Width > v47);
            }

            ++v44;
            BaseAddress = (BaseAddress + BytesPerRow);
            v18 = (v18 + v11);
          }

          while (v44 != Height);
        }
      }

      else if (v70)
      {
        if (Height)
        {
          v35 = 0;
          v36.i64[0] = 0x3F0000003FLL;
          v36.i64[1] = 0x3F0000003FLL;
          v37 = vnegq_f32(v36);
          do
          {
            if (Width)
            {
              v38 = 0;
              v39 = v18;
              v40 = BaseAddress;
              do
              {
                v41 = *v40++;
                v42 = vmovl_u16(*v41.i8);
                v43 = vmovl_high_u16(v41);
                *v39 = vcvt_hight_f16_f32(vcvt_f16_f32(vbslq_s8(vceqq_s32(v19, v42), v37, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v42)), 0))), vbslq_s8(vceqq_s32(v19, v43), v37, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v43)), 0)));
                v38 += 8;
                v39 = (v39 + v13);
              }

              while (Width > v38);
            }

            ++v35;
            BaseAddress = (BaseAddress + BytesPerRow);
            v18 = (v18 + v11);
          }

          while (v35 != Height);
        }
      }

      else if (Height)
      {
        v58 = 0;
        v59.i64[0] = 0x3F0000003FLL;
        v59.i64[1] = 0x3F0000003FLL;
        v60 = vnegq_f32(v59);
        do
        {
          if (Width)
          {
            v61 = 0;
            v62 = v18;
            v63 = BaseAddress;
            do
            {
              v64 = *v63++;
              v65 = vmovl_u16(*v64.i8);
              v66 = vmovl_high_u16(v64);
              *v62 = vbslq_s8(vceqq_s32(v19, v65), v60, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v65)), 0));
              v62[1] = vbslq_s8(vceqq_s32(v19, v66), v60, vmaxq_f32(vmlaq_f32(v21, v20, vcvtq_f32_u32(v66)), 0));
              v62 += 2;
              v61 += 8;
            }

            while (Width > v61);
          }

          ++v58;
          BaseAddress = (BaseAddress + BytesPerRow);
          v18 = (v18 + v11);
        }

        while (v58 != Height);
      }

      CVPixelBufferUnlockBaseAddress(a1, 1uLL);
      CVPixelBufferUnlockBaseAddress(a2, 0);
      return 0;
    }
  }

  return v67;
}

double pixelSumComputeCompatibleROI(int a1, double a2)
{
  v2 = a2;
  if (a1 - 32 < a2)
  {
    v2 = a1 - 32;
  }

  v3 = v2 & 0xF;
  if (v2 <= 0)
  {
    v3 = -(-v2 & 0xF);
  }

  return ((v2 - v3) & ~((v2 - v3) >> 31));
}

uint64_t pixelSumForROI(__CVBuffer *a1, int32x4_t *a2, int32x4_t *a3, double a4, double a5, double a6, double a7)
{
  if (!a1 || !a2 || !a3)
  {
    pixelSumForROI_cold_7();
    return 0xFFFFFFFFLL;
  }

  if ((CVPixelBufferGetPixelFormatType(a1) & 0xFFFFFFEF) != 0x34323066)
  {
    pixelSumForROI_cold_1();
    return 4294967294;
  }

  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  if ((BytesPerRowOfPlane & 0xF) != 0)
  {
    pixelSumForROI_cold_2();
    return 4294967293;
  }

  v17 = CVPixelBufferLockBaseAddress(a1, 1uLL);
  if (v17)
  {
    v19 = v17;
    pixelSumForROI_cold_3();
    return v19;
  }

  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  if (a4 >= 0.0)
  {
    v19 = 0xFFFFFFFFLL;
    if (a4 < Width && a5 >= 0.0)
    {
      v21 = a5 >= Height || a6 < 1.0;
      v22 = v21 || a7 < 1.0;
      v23 = !v22 && a4 + a6 <= Width;
      if (v23 && a5 + a7 <= Height)
      {
        if (((BaseAddressOfPlane + a4) & 0xF) != 0)
        {
          pixelSumForROI_cold_4();
          v19 = 4294967294;
        }

        else
        {
          v25 = a6;
          if ((a6 & 0x1F) != 0)
          {
            pixelSumForROI_cold_5();
            v19 = 4294967292;
          }

          else
          {
            v26 = a7;
            if ((a7 & 3) == 0)
            {
              v27 = &BaseAddressOfPlane[a4 + BytesPerRowOfPlane * a5];
              if (PixelSumASM(v27, a6, a7, BytesPerRowOfPlane, a2, a3))
              {
                if (v26)
                {
                  v28 = 0;
                  v29 = v27;
                  do
                  {
                    if (v25)
                    {
                      if (v25 >= 0x10)
                      {
                        v32 = 0;
                        v33 = 0uLL;
                        v34 = 0uLL;
                        v35 = 0uLL;
                        v36 = 0uLL;
                        do
                        {
                          v37 = v29[v32 / 0x10];
                          v38 = vmovl_u8(*v37.i8);
                          v39 = vmovl_high_u8(v37);
                          v36 = vaddw_high_u16(v36, v39);
                          v35 = vaddw_u16(v35, *v39.i8);
                          v34 = vaddw_high_u16(v34, v38);
                          v33 = vaddw_u16(v33, *v38.i8);
                          v32 += 16;
                        }

                        while (v25 != v32);
                        v31 = vaddvq_s32(vaddq_s32(vaddq_s32(v33, v35), vaddq_s32(v34, v36)));
                      }

                      else
                      {
                        v30 = 0;
                        v31 = 0;
                        do
                        {
                          v31 += v29->u8[v30++];
                        }

                        while (v25 != v30);
                      }
                    }

                    else
                    {
                      v31 = 0;
                    }

                    a2->i32[v28] = v31;
                    v29 = (v29 + BytesPerRowOfPlane);
                    ++v28;
                  }

                  while (v28 != v26);
                }

                if (v25)
                {
                  for (i = 0; i != v25; ++i)
                  {
                    if (v26)
                    {
                      v41 = 0;
                      v42 = 0;
                      v43 = v26;
                      do
                      {
                        v42 += v27->u8[v41];
                        v41 += BytesPerRowOfPlane;
                        --v43;
                      }

                      while (v43);
                    }

                    else
                    {
                      v42 = 0;
                    }

                    a3->i32[i] = v42;
                    v27 = (v27 + 1);
                  }
                }
              }

              v19 = 0;
              goto LABEL_10;
            }

            pixelSumForROI_cold_6();
            v19 = 4294967291;
          }
        }
      }
    }
  }

  else
  {
    v19 = 0xFFFFFFFFLL;
  }

  FigDebugAssert3();
LABEL_10:
  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return v19;
}

uint64_t findOffsetFromSums(int32x4_t *a1, int32x4_t *a2, int a3, int a4, int a5, int a6, float *a7, int *a8, float *a9)
{
  result = 0xFFFFFFFFLL;
  if (!a1 || !a2 || a3 < 0)
  {
    return result;
  }

  v14 = (2 * a4);
  if (a3 < v14)
  {
    return 4294967294;
  }

  v15 = a8;
  v17 = a9;
  if (!a3 || !a7)
  {
    if (a7)
    {
      *a7 = 0.0;
    }

    if (a9)
    {
      *a9 = 0.0;
    }

    v23 = 0;
    result = 0;
    if (a8)
    {
      goto LABEL_73;
    }

    return result;
  }

  if (((a3 - 2 * a4) & 7) != 0)
  {
    findOffsetFromSums_cold_1();
    v17 = a9;
  }

  v71 = (a3 - 2 * a4);
  if (a5)
  {
    MemSum32(a1, a3);
    v20 = v19;
    MemSum32(a2, a3);
    LODWORD(v70) = v21 / a3;
    HIDWORD(v70) = v20 / a3;
    if (a9)
    {
      goto LABEL_12;
    }

LABEL_21:
    v22 = 0;
    goto LABEL_22;
  }

  v70 = 0;
  if (!v17)
  {
    goto LABEL_21;
  }

LABEL_12:
  v22 = malloc_type_calloc(v14, 4uLL, 0x100004052888210uLL);
  if (!v22)
  {
    return 4294967293;
  }

LABEL_22:
  v63 = a2;
  v64 = v14;
  v66 = a7;
  v67 = v15;
  v24 = (a1 + 4 * a4 - 4);
  v62 = v14 - 1;
  v69 = a4;
  v65 = v22;
  if (v14 < 1)
  {
    v26 = 0;
    v25 = 0;
    v23 = 0x7FFFFFFF;
    v31 = a9;
  }

  else
  {
    v25 = 0;
    v26 = 0;
    v27 = 1 - a4;
    v23 = 0x7FFFFFFF;
    v28 = v22;
    v29 = v63;
    do
    {
      if (a5)
      {
        MemDiffZeroMean32(v24, HIDWORD(v70), v29, v70, v71);
      }

      else
      {
        MemDiff32(v24, v29, v71);
      }

      v31 = a9;
      if (a9)
      {
        *v28 = v30;
        v26 += v30;
      }

      v29 = (v29 + 4);
      if (v30 < v23)
      {
        v23 = v30;
        v25 = v27;
      }

      ++v28;
      ++v27;
      --v14;
    }

    while (v14);
  }

  if (v69 >= 1)
  {
    v33 = v64;
    v32 = v65;
    v26 = llround(v26 / v64);
    v34 = v66;
    v15 = v67;
    if (!v31)
    {
      goto LABEL_52;
    }

LABEL_38:
    v35 = v25 + v69;
    v36 = v69 / 5;
    v37 = ((v35 - v36) & ~((v35 - v36) >> 31)) + 1;
    v38 = 0x7FFFFFFF;
    v39 = v32;
    do
    {
      v41 = *v39++;
      v40 = v41;
      if (v41 < v38)
      {
        v38 = v40;
      }

      --v37;
    }

    while (v37);
    LODWORD(v42) = v35 + v36;
    if (v62 < v42)
    {
      LODWORD(v42) = v62;
    }

    v42 = v42;
    do
    {
      if (v32[v42] < v38)
      {
        v38 = v32[v42];
      }

      ++v42;
    }

    while (v42 < v33);
    if (v26 < 1)
    {
      v43 = 0.0;
    }

    else
    {
      v43 = (v38 - v23) / v26;
    }

    *v31 = v43;
    goto LABEL_52;
  }

  v34 = v66;
  v15 = v67;
  v33 = v64;
  v32 = v65;
  if (v31)
  {
    goto LABEL_38;
  }

LABEL_52:
  v44 = v25;
  *v34 = v25;
  if (a6)
  {
    if (v32)
    {
      v45 = v69 + v25;
      v46 = v45 - 2;
      v47 = v71;
      if (v45 < 2)
      {
        v48 = 0;
      }

      else
      {
        v48 = v32[v46];
      }

      if (v45 < v33)
      {
        if (v48)
        {
          v49 = v32[v45];
          if (v49)
          {
            v50 = &v63->i32[v46];
            v51 = &v63->i32[v45 - 1];
            if (v48 < v49)
            {
              v51 = v50;
            }

            if (v71 < 1)
            {
              v56 = 0.0;
              v55 = 0.0;
            }

            else
            {
              v54 = *v51;
              v52 = v51 + 1;
              v53 = v54;
              v55 = 0.0;
              v56 = 0.0;
              do
              {
                v58 = *v52++;
                v57 = v58;
                v59 = (v58 - v53);
                v56 = v56 + (v59 * v59);
                v60 = v24->i32[0];
                v24 = (v24 + 4);
                v55 = v55 + ((v60 - v53) * v59);
                v53 = v57;
                --v47;
              }

              while (v47);
            }

            if (fabsf(v56) > 1.0e-10)
            {
              v61 = v55 / v56;
              if (v48 >= v49)
              {
                v44 = v61 + v44;
              }

              else
              {
                v44 = v61 + -1.0 + v44;
              }
            }
          }
        }
      }
    }

    else
    {
      findOffsetFromSums_cold_2();
      v32 = 0;
      v44 = v25;
    }

    *v34 = v44;
  }

  free(v32);
  if (v15)
  {
LABEL_73:
    result = 0;
    *v15 = v23;
    return result;
  }

  return 0;
}

uint64_t PortraitLibraryCore()
{
  v2 = 0;
  v3 = &v2;
  v4 = 0x2020000000;
  v0 = PortraitLibraryCore_frameworkLibrary;
  v5 = PortraitLibraryCore_frameworkLibrary;
  if (!PortraitLibraryCore_frameworkLibrary)
  {
    v6 = xmmword_1E7999FD0;
    v7 = *off_1E7999FE0;
    v8 = 0;
    v3[3] = _sl_dlopen();
    PortraitLibraryCore_frameworkLibrary = v3[3];
    v0 = v3[3];
  }

  _Block_object_dispose(&v2, 8);
  return v0;
}

void sub_1ACBAA7F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __PortraitLibraryCore_block_invoke(uint64_t a1)
{
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  PortraitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t PortraitLibrary()
{
  v1 = 0;
  result = PortraitLibraryCore();
  if (!result)
  {
    PortraitLibrary_cold_1(&v1);
  }

  return result;
}

uint64_t getPTEffectClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectClass_softClass;
  if (!getPTEffectClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAA99C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffect");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectClass_block_invoke_cold_1();
  }

  getPTEffectClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTEffectDescriptorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectDescriptorClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectDescriptorClass_softClass;
  if (!getPTEffectDescriptorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectDescriptorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectDescriptorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAAE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectDescriptorClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffectDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectDescriptorClass_block_invoke_cold_1();
  }

  getPTEffectDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTextureClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTextureClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTextureClass_softClass;
  if (!getPTTextureClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTextureClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTextureClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAC24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTextureClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTexture");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTextureClass_block_invoke_cold_1();
  }

  getPTTextureClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTRenderPipelineClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTRenderPipelineClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTRenderPipelineClass_softClass;
  if (!getPTRenderPipelineClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTRenderPipelineClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTRenderPipelineClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAD68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTRenderPipelineClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTRenderPipeline");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTRenderPipelineClass_block_invoke_cold_1();
  }

  getPTRenderPipelineClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTRenderRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTRenderRequestClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTRenderRequestClass_softClass;
  if (!getPTRenderRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTRenderRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTRenderRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAEAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTRenderRequestClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTRenderRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTRenderRequestClass_block_invoke_cold_1();
  }

  getPTRenderRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTRenderPipelineDescriptorClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTRenderPipelineDescriptorClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTRenderPipelineDescriptorClass_softClass;
  if (!getPTRenderPipelineDescriptorClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTRenderPipelineDescriptorClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTRenderPipelineDescriptorClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAAFF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTRenderPipelineDescriptorClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTRenderPipelineDescriptor");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTRenderPipelineDescriptorClass_block_invoke_cold_1();
  }

  getPTRenderPipelineDescriptorClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTuningParametersClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTuningParametersClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTuningParametersClass_softClass;
  if (!getPTTuningParametersClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTuningParametersClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTuningParametersClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB134(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTuningParametersClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTuningParameters");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTuningParametersClass_block_invoke_cold_1();
  }

  getPTTuningParametersClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyStreamClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTCinematographyStreamClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTCinematographyStreamClass_softClass;
  if (!getPTCinematographyStreamClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTCinematographyStreamClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTCinematographyStreamClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB278(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTCinematographyStreamClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTCinematographyStream");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTCinematographyStreamClass_block_invoke_cold_1();
  }

  getPTCinematographyStreamClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyStreamOptionsClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTCinematographyStreamOptionsClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTCinematographyStreamOptionsClass_softClass;
  if (!getPTCinematographyStreamOptionsClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTCinematographyStreamOptionsClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTCinematographyStreamOptionsClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB3BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTCinematographyStreamOptionsClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTCinematographyStreamOptions");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTCinematographyStreamOptionsClass_block_invoke_cold_1();
  }

  getPTCinematographyStreamOptionsClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyRefinementClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTCinematographyRefinementClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTCinematographyRefinementClass_softClass;
  if (!getPTCinematographyRefinementClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTCinematographyRefinementClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTCinematographyRefinementClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTCinematographyRefinementClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTCinematographyRefinement");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTCinematographyRefinementClass_block_invoke_cold_1();
  }

  getPTCinematographyRefinementClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTCinematographyExcludeAsCinematicChoiceSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr;
  v6 = getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr;
  if (!getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr)
  {
    v1 = PortraitLibrary();
    v4[3] = dlsym(v1, "PTCinematographyExcludeAsCinematicChoice");
    getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB644(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = PortraitLibrary();
  result = dlsym(v2, "PTCinematographyExcludeAsCinematicChoice");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getPTCinematographyExcludeAsCinematicChoiceSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t getPTCinematographyExcludeAsCinematicChoice()
{
  PTCinematographyExcludeAsCinematicChoiceSymbolLoc = getPTCinematographyExcludeAsCinematicChoiceSymbolLoc();
  if (!PTCinematographyExcludeAsCinematicChoiceSymbolLoc)
  {
    getPTCinematographyExcludeAsCinematicChoice_cold_1();
  }

  return *PTCinematographyExcludeAsCinematicChoiceSymbolLoc;
}

uint64_t getPTGlobalCinematographyMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalCinematographyMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalCinematographyMetadataVersion1Class_softClass;
  if (!getPTGlobalCinematographyMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalCinematographyMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalCinematographyMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB7A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalCinematographyMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalCinematographyMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalCinematographyMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalCinematographyMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalRenderingMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalRenderingMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalRenderingMetadataVersion1Class_softClass;
  if (!getPTGlobalRenderingMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalRenderingMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalRenderingMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAB8E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalRenderingMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalRenderingMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalRenderingMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalRenderingMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalRenderingMetadataVersion2Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalRenderingMetadataVersion2Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalRenderingMetadataVersion2Class_softClass;
  if (!getPTGlobalRenderingMetadataVersion2Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalRenderingMetadataVersion2Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalRenderingMetadataVersion2Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABA2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalRenderingMetadataVersion2Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalRenderingMetadataVersion2");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalRenderingMetadataVersion2Class_block_invoke_cold_1();
  }

  getPTGlobalRenderingMetadataVersion2Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalStabilizationMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalStabilizationMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalStabilizationMetadataVersion1Class_softClass;
  if (!getPTGlobalStabilizationMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalStabilizationMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalStabilizationMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABB70(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalStabilizationMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalStabilizationMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalStabilizationMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalStabilizationMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalVideoHeaderMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalVideoHeaderMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalVideoHeaderMetadataVersion1Class_softClass;
  if (!getPTGlobalVideoHeaderMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABCB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalVideoHeaderMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalVideoHeaderMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTGlobalVideoHeaderMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTGlobalVideoMetadataClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTGlobalVideoMetadataClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTGlobalVideoMetadataClass_softClass;
  if (!getPTGlobalVideoMetadataClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTGlobalVideoMetadataClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTGlobalVideoMetadataClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABDF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTGlobalVideoMetadataClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTGlobalVideoMetadata");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTGlobalVideoMetadataClass_block_invoke_cold_1();
  }

  getPTGlobalVideoMetadataClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTimedRenderingMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTimedRenderingMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTimedRenderingMetadataVersion1Class_softClass;
  if (!getPTTimedRenderingMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTimedRenderingMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTimedRenderingMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBABF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTimedRenderingMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTimedRenderingMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTimedRenderingMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTTimedRenderingMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTimedRenderingMetadataVersion2Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTimedRenderingMetadataVersion2Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTimedRenderingMetadataVersion2Class_softClass;
  if (!getPTTimedRenderingMetadataVersion2Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTimedRenderingMetadataVersion2Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTimedRenderingMetadataVersion2Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTimedRenderingMetadataVersion2Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTimedRenderingMetadataVersion2");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTimedRenderingMetadataVersion2Class_block_invoke_cold_1();
  }

  getPTTimedRenderingMetadataVersion2Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTTimedStabilizationMetadataVersion1Class()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTTimedStabilizationMetadataVersion1Class_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTTimedStabilizationMetadataVersion1Class_softClass;
  if (!getPTTimedStabilizationMetadataVersion1Class_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTTimedStabilizationMetadataVersion1Class_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTTimedStabilizationMetadataVersion1Class_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC1C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTTimedStabilizationMetadataVersion1Class_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTTimedStabilizationMetadataVersion1");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTTimedStabilizationMetadataVersion1Class_block_invoke_cold_1();
  }

  getPTTimedStabilizationMetadataVersion1Class_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTSerializationClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTSerializationClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTSerializationClass_softClass;
  if (!getPTSerializationClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTSerializationClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTSerializationClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC308(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTSerializationClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTSerialization");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTSerializationClass_block_invoke_cold_1();
  }

  getPTSerializationClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTDisparityPostProcessingClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTDisparityPostProcessingClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTDisparityPostProcessingClass_softClass;
  if (!getPTDisparityPostProcessingClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTDisparityPostProcessingClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTDisparityPostProcessingClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC44C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTDisparityPostProcessingClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTDisparityPostProcessing");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTDisparityPostProcessingClass_block_invoke_cold_1();
  }

  getPTDisparityPostProcessingClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTEffectRenderRequestClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectRenderRequestClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectRenderRequestClass_softClass;
  if (!getPTEffectRenderRequestClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectRenderRequestClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectRenderRequestClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC590(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectRenderRequestClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffectRenderRequest");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectRenderRequestClass_block_invoke_cold_1();
  }

  getPTEffectRenderRequestClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t getPTEffectReactionClass()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x3052000000;
  v6 = __Block_byref_object_copy__32;
  v0 = getPTEffectReactionClass_softClass;
  v7 = __Block_byref_object_dispose__32;
  v8 = getPTEffectReactionClass_softClass;
  if (!getPTEffectReactionClass_softClass)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = __getPTEffectReactionClass_block_invoke;
    v2[3] = &unk_1E798FC38;
    v2[4] = &v3;
    __getPTEffectReactionClass_block_invoke(v2);
    v0 = v4[5];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1ACBAC6D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

Class __getPTEffectReactionClass_block_invoke(uint64_t a1)
{
  PortraitLibrary();
  result = objc_getClass("PTEffectReaction");
  *(*(*(a1 + 32) + 8) + 40) = result;
  if (!*(*(*(a1 + 32) + 8) + 40))
  {
    __getPTEffectReactionClass_block_invoke_cold_1();
  }

  getPTEffectReactionClass_softClass = *(*(*(a1 + 32) + 8) + 40);
  return result;
}

uint64_t FigCameraViewfinderServerStart()
{
  if (FigCameraViewfinderServerStart_once != -1)
  {
    FigCameraViewfinderServerStart_cold_1();
  }

  return 0;
}

FigCameraViewfinderServer *__FigCameraViewfinderServerStart_block_invoke()
{
  FigNote_AllowInternalDefaultLogs();
  fig_note_initialize_category_with_default_work_cf();
  fig_note_initialize_category_with_default_work_cf();
  result = objc_alloc_init(FigCameraViewfinderServer);
  FigCameraViewfinderServerStart_serverSingleton = result;
  return result;
}

uint64_t FigSerializedDepthImageBufferMetadataComputeSerializationSize(CVPixelBufferRef pixelBuffer, _DWORD *a2, void *a3)
{
  if (a2)
  {
    *a2 = 1;
  }

  Height = CVPixelBufferGetHeight(pixelBuffer);
  *a3 = CVPixelBufferGetBytesPerRow(pixelBuffer) * Height + 16;
  return 0;
}

uint64_t FigSerializedDepthImageBufferMetadataSerializeIntoBuffer(__CVBuffer *a1, uint64_t a2, _DWORD *a3)
{
  Height = CVPixelBufferGetHeight(a1);
  if (CVPixelBufferGetBytesPerRow(a1) * Height + 16 == a2)
  {
    *a3 = 1;
    Width = CVPixelBufferGetWidth(a1);
    v8 = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    a3[1] = Width;
    a3[2] = v8;
    a3[3] = BytesPerRow;
    a3[4] = PixelFormatType;
    CVPixelBufferLockBaseAddress(a1, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(a1);
    memcpy(a3 + 5, BaseAddress, (BytesPerRow * v8));
    CVPixelBufferUnlockBaseAddress(a1, 1uLL);
    return 0;
  }

  else
  {
    FigSerializedDepthImageBufferMetadataSerializeIntoBuffer_cold_1(&v13);
    return v13;
  }
}

uint64_t FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer(_DWORD *a1, uint64_t a2, CVPixelBufferRef *a3)
{
  pixelBuffer = 0;
  if (*a1 != 1)
  {
    FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_1(&v20);
    goto LABEL_27;
  }

  v6 = a1[1];
  v5 = a1[2];
  v8 = a1[3];
  v7 = a1[4];
  v9 = *a3;
  if (*a3)
  {
    pixelBuffer = *a3;
    if (v6 != CVPixelBufferGetWidth(v9))
    {
      FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_2(&v20);
      goto LABEL_27;
    }

    if (v5 != CVPixelBufferGetHeight(v9))
    {
      FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_3(&v20);
      goto LABEL_27;
    }

    if (v7 != CVPixelBufferGetPixelFormatType(v9))
    {
      FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_4(&v20);
LABEL_27:
      v17 = v20;
      goto LABEL_28;
    }

LABEL_9:
    BytesPerRow = CVPixelBufferGetBytesPerRow(v9);
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
    v13 = BaseAddress;
    if (v8 == BytesPerRow)
    {
      memcpy(BaseAddress, a1 + 5, (v8 * v5));
    }

    else
    {
      if (BytesPerRow >= v8)
      {
        v14 = v8;
      }

      else
      {
        v14 = BytesPerRow;
      }

      if (BytesPerRow >= v8)
      {
        v15 = BytesPerRow - v8;
      }

      else
      {
        v15 = 0;
      }

      if (v5)
      {
        v16 = (a1 + 5);
        do
        {
          memcpy(v13, v16, v14);
          if (BytesPerRow > v8)
          {
            bzero(&v13[v14], v15);
          }

          v16 += v8;
          v13 += BytesPerRow;
          LODWORD(v5) = v5 - 1;
        }

        while (v5);
      }
    }

    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    if (*a3)
    {
      return 0;
    }

LABEL_32:
    v17 = 0;
    *a3 = pixelBuffer;
    return v17;
  }

  v10 = CVPixelBufferCreate(*MEMORY[0x1E695E480], v6, v5, v7, 0, &pixelBuffer);
  if (!v10)
  {
    v9 = pixelBuffer;
    goto LABEL_9;
  }

  v17 = v10;
  FigSerializedDepthImageBufferMetadataDeserializeIntoCVPixelBuffer_cold_5();
LABEL_28:
  if (*a3)
  {
    return v17;
  }

  if (!v17)
  {
    goto LABEL_32;
  }

  if (pixelBuffer)
  {
    CFRelease(pixelBuffer);
  }

  return v17;
}

void *bweia_addRequirement_cmm(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = [objc_msgSend(objc_msgSend(a1 "imageDescriptor")];
  v11 = [objc_msgSend(objc_msgSend(a1 "imageDescriptor")];

  return bweia_addRequirement_base(a1, a2, a3, a4, a5, v10, v11);
}

void *__getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = VisionCoreLibrary();
  result = dlsym(v2, "VisionCoreInferenceNetworkIdentifierCamGaze");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getVisionCoreInferenceNetworkIdentifierCamGazeSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void sub_1ACBB593C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBB8344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t mscsn_metadataOutputConfigurationKeyForOutputIndex(int a1)
{
  result = 0;
  if (a1 <= 11)
  {
    if (a1 == 9)
    {
      v3 = off_1E798AF30;
    }

    else
    {
      if (a1 != 10)
      {
        return result;
      }

      v3 = off_1E798AF10;
    }
  }

  else
  {
    switch(a1)
    {
      case 12:
        v3 = off_1E798AF98;
        break;
      case 14:
        v3 = off_1E798AF78;
        break;
      case 15:
        v3 = off_1E798AF68;
        break;
      default:
        return result;
    }
  }

  return *v3;
}

uint64_t mscsn_semanticMaskOutputConfigurationKeyForSemanticMaskType(void *a1)
{
  if ([a1 isEqualToString:*off_1E798AFC8])
  {
    v2 = off_1E798AEE0;
    return *v2;
  }

  if ([a1 isEqualToString:*off_1E798AFD8])
  {
    v2 = off_1E798AF00;
    return *v2;
  }

  if ([a1 isEqualToString:*off_1E798AFD0])
  {
    v2 = off_1E798AEF0;
    return *v2;
  }

  if ([a1 isEqualToString:*off_1E798B038])
  {
    return *off_1E798AFA8;
  }

  else
  {
    return 0;
  }
}

void mscsn_handleStreamDroppedSampleNotification(int a1, uint64_t a2, CFTypeRef cf, uint64_t a4, void *a5)
{
  if (*off_1E798B880 == cf)
  {
    v9 = [a5 objectForKeyedSubscript:*off_1E798B850];
    if ([v9 isEqualToString:*off_1E798CC28])
    {
      v10 = BWDroppedSampleReasonVideoDeviceDiscontinuity;
    }

    else if ([v9 isEqualToString:*off_1E798CC20])
    {
      v10 = BWDroppedSampleReasonHighFrameRateAutoFocusDiscontinuity;
    }

    else
    {
      [v9 isEqualToString:*off_1E798CC30];
      v10 = BWDroppedSampleReasonVideoDeviceDiscontinuity;
    }

    v8 = *v10;
  }

  else
  {
    v8 = 0;
  }

  if (*MEMORY[0x1E695FF58] == 1)
  {
    kdebug_trace();
  }

  v15 = 0;
  v16 = &v15;
  v17 = 0x3052000000;
  v18 = __Block_byref_object_copy__34;
  v19 = __Block_byref_object_dispose__34;
  v20 = a2;
  CFRetain(cf);
  v11 = 0;
  v12 = (v16[5] + 436);
  while (v12[5] != 1 || (*v12 & 2) == 0)
  {
    ++v11;
    v12 += 512;
    if (v11 == 22)
    {
      v11 = 0;
      break;
    }
  }

  v13 = *(v16[5] + 432 + (v11 << 9) + 32);
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 3221225472;
  v14[2] = __mscsn_handleStreamDroppedSampleNotification_block_invoke;
  v14[3] = &unk_1E7999228;
  v14[6] = &v15;
  v14[7] = cf;
  v14[4] = a5;
  v14[5] = v8;
  dispatch_async(v13, v14);
  _Block_object_dispose(&v15, 8);
}

void sub_1ACBBAE34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void mscsn_handlePoolReadyNotification(int a1, uint64_t a2, int a3, int a4, CFDictionaryRef theDict)
{
  v11 = 0;
  v12 = &v11;
  v13 = 0x3052000000;
  v14 = __Block_byref_object_copy__34;
  v15 = __Block_byref_object_dispose__34;
  v16 = a2;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, *off_1E798B988);
    if (CFEqual(Value, *off_1E798CA78))
    {
      v7 = *(v12[5] + 3536);
      CFRetain(theDict);
      v8 = [CFDictionaryGetValue(theDict *off_1E798B998)];
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = __mscsn_handlePoolReadyNotification_block_invoke;
      v9[3] = &unk_1E799A2A8;
      v9[4] = &v11;
      v9[5] = theDict;
      v10 = 6;
      v9[6] = v8;
      dispatch_async(v7, v9);
    }
  }

  _Block_object_dispose(&v11, 8);
}

void sub_1ACBBAF84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB138(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB2C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1ACBBB60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);
  _Unwind_Resume(a1);
}

uint64_t mscsn_outputIndexForMetadataOutputKey(void *a1)
{
  if ([a1 isEqualToString:*off_1E798AFF0])
  {
    return 9;
  }

  if ([a1 isEqualToString:*off_1E798AFE0])
  {
    return 10;
  }

  if ([a1 isEqualToString:*off_1E798B008])
  {
    return 12;
  }

  if ([a1 isEqualToString:*off_1E798B010])
  {
    return 13;
  }

  if ([a1 isEqualToString:*off_1E798B030])
  {
    return 14;
  }

  if ([a1 isEqualToString:*off_1E798B018])
  {
    return 15;
  }

  if (([a1 isEqualToString:*off_1E798B028] & 1) == 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:objc_msgSend(MEMORY[0x1E696AEC0] userInfo:{"stringWithFormat:", @"Internal inconsistency, unknown metadata output key: %@", a1), 0}]);
  }

  return 16;
}

CMAttachmentBearerRef mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer(void *a1, __CVBuffer *a2, int a3, void *a4, uint64_t a5, int a6, VTPixelTransferSessionRef *a7, CFTypeRef *a8, double a9, double a10, float a11)
{
  target = 0;
  cf = 0;
  if (!a1)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_12();
LABEL_166:
    v20 = 0;
LABEL_150:
    LODWORD(v12) = 0;
    goto LABEL_151;
  }

  if (!a2)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_11();
    goto LABEL_166;
  }

  if (!a4)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_10();
    goto LABEL_166;
  }

  v12 = a7;
  if (!a7)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_9();
    v20 = 0;
    goto LABEL_151;
  }

  v13 = a8;
  if (!a8)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_8();
    goto LABEL_166;
  }

  v19 = a1;
  v20 = [a4 newPixelBuffer];
  if (!v20)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_7();
    goto LABEL_150;
  }

  v21 = *off_1E798A3C8;
  v22 = CMGetAttachment(v19, *off_1E798A3C8, 0);
  if (!*v12)
  {
    VTPixelTransferSessionCreate(*MEMORY[0x1E695E480], v12);
  }

  key = *MEMORY[0x1E6965F98];
  v158 = a3;
  v157 = v21;
  v23 = CVBufferHasAttachment(v20, *MEMORY[0x1E6965F98]) || CVBufferHasAttachment(v20, *MEMORY[0x1E6965D88]) || CVBufferHasAttachment(v20, *MEMORY[0x1E6965F30]) != 0;
  v159 = v23;
  v25 = *MEMORY[0x1E695F050];
  v24 = *(MEMORY[0x1E695F050] + 8);
  v27 = *(MEMORY[0x1E695F050] + 16);
  v26 = *(MEMORY[0x1E695F050] + 24);
  Width = CVPixelBufferGetWidth(a2);
  Height = CVPixelBufferGetHeight(a2);
  PixelFormatType = CVPixelBufferGetPixelFormatType(a2);
  v163 = Height;
  v164 = Width;
  v160 = Width | (Height << 32);
  v161 = v25;
  v162 = v24;
  v167 = v27;
  if (!a6)
  {
    v151 = v25;
    v35 = v24;
    v36 = v26;
    v155 = v26;
    v37 = v26;
    v38 = v27;
    v39 = v24;
    v40 = v25;
    v41 = v37;
    goto LABEL_70;
  }

  v31 = PixelFormatType;
  v32 = CMGetAttachment(v19, @"TotalZoomFactor", 0);
  if (v32)
  {
    [v32 floatValue];
    v34 = v33;
  }

  else
  {
    v34 = 1.0;
  }

  valuePtr.origin = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  valuePtr.size = _Q0;
  if (!v22)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_2();
LABEL_176:
    v57 = v26;
    v58 = v25;
    v35 = v162;
    v59 = v162;
    v60 = v25;
    v41 = v26;
    v36 = v26;
    v38 = v167;
    v39 = v162;
    v40 = v161;
    goto LABEL_69;
  }

  if (Width < 1 || Height <= 0)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_1();
    goto LABEL_176;
  }

  v45 = v19;
  CGRectIfPresent = FigCFDictionaryGetCGRectIfPresent();
  v178.origin.x = mscsn_validPixelBufferRectFromMetadata(v22, v160);
  x = v178.origin.x;
  v48 = v178.size.width;
  v49 = v178.size.height;
  rect1 = v178.origin.y;
  IsNull = CGRectIsNull(v178);
  v51 = IsNull;
  if (!CGRectIfPresent && IsNull && (v48 < v164 || v49 < v163))
  {
    v57 = v26;
    v58 = v161;
    v35 = v162;
    v59 = v162;
    v60 = v161;
    v41 = v26;
    v36 = v26;
    goto LABEL_48;
  }

  v156 = v26;
  FigCaptureMetadataUtilitiesScaleRect(valuePtr.origin.x, valuePtr.origin.y, valuePtr.size.width, valuePtr.size.height, (v34 / a11));
  v54 = v52;
  v55 = v53;
  if (a9 == *MEMORY[0x1E695F060] && a10 == *(MEMORY[0x1E695F060] + 8) || (v54 = (a9 + 1.0) * v52, v55 = (a10 + 1.0) * v53, !v51) || (v54 < 1.0 ? (_NF = v55 < 1.0) : (_NF = 0), _NF))
  {
    v61 = x;
    v183.origin.x = (1.0 - v54) * 0.5;
    v183.origin.y = (1.0 - v55) * 0.5;
    v183.size.width = v54;
    v183.size.height = v55;
    v62 = CGRectEqualToRect(valuePtr, v183);
    v63 = v164;
    v64 = v163;
    v65 = round(v54 * v164 * 0.5);
    v38 = v65 + v65;
    if (v65 + v65 >= a5)
    {
      v67 = v62;
      v68 = round(v55 * v64 * 0.5);
      v41 = v68 + v68;
      v66 = rect1;
      if (v68 + v68 >= SHIDWORD(a5))
      {
LABEL_36:
        v69 = (v63 - v38) * 0.5;
        v70 = ceil(v69);
        v71 = floor(v69);
        if (v69 >= 0.0)
        {
          v72 = v71;
        }

        else
        {
          v72 = v70;
        }

        v73 = (v64 - v41) * 0.5;
        v74 = ceil(v73);
        v75 = floor(v73);
        if (v73 >= 0.0)
        {
          v76 = v75;
        }

        else
        {
          v76 = v74;
        }

        if (v51)
        {
          v19 = v45;
        }

        else
        {
          v77 = v61;
          v78 = v48;
          v79 = v49;
          v80 = v72;
          v184.origin.x = v72;
          v81 = v76;
          v184.origin.y = v76;
          v184.size.width = v38;
          v184.size.height = v41;
          if (CGRectContainsRect(*(&v66 - 1), v184))
          {
            v19 = v45;
            v76 = v81;
            v72 = v80;
          }

          else
          {
            v82 = v38 / v41;
            RectWithAspectRatioInsideDimensions = FigCaptureMakeRectWithAspectRatioInsideDimensions(v48 | (v49 << 32), 1, v82);
            v38 = v84;
            v41 = v85;
            v67 = 0;
            v72 = v61 + RectWithAspectRatioInsideDimensions;
            v76 = rect1 + v86;
            v19 = v45;
          }
        }

        if (v31 == 1885745712 || v31 == 1882468912)
        {
          if (v72 % 6 >= 4)
          {
            v87 = 6 * (v72 / 6) + 6;
          }

          else
          {
            v87 = 6 * (v72 / 6);
          }

          v72 = v87;
        }

        v35 = 0.0;
        rect1a = v72;
        v88 = v76;
        v60 = FigCaptureTransformRectToCoordinateSpaceOfRect(v72, v76, v38, v41, 0.0, 0.0, v63);
        v59 = v89;
        v57 = v91;
        if (v67)
        {
          v58 = v161;
          v35 = v162;
          v36 = v156;
        }

        else
        {
          v92 = FigCaptureTransformRectToCoordinateSpaceOfRect(valuePtr.origin.x, valuePtr.origin.y, valuePtr.size.width, valuePtr.size.height, v60, v89, v90);
          if (v92 >= 0.0)
          {
            v58 = v92;
          }

          else
          {
            v58 = 0.0;
          }

          if (1.0 - v58 < v94)
          {
            v94 = 1.0 - v58;
          }

          v167 = v94;
          if (v93 >= 0.0)
          {
            v35 = v93;
          }

          if (1.0 - v35 >= v95)
          {
            v36 = v95;
          }

          else
          {
            v36 = 1.0 - v35;
          }
        }

        v39 = v88;
        v40 = rect1a;
        goto LABEL_69;
      }
    }

    else
    {
      v66 = rect1;
    }

    v67 = 0;
    v41 = SHIDWORD(a5);
    v38 = a5;
    goto LABEL_36;
  }

  v36 = v156;
  v57 = v156;
  v58 = v161;
  v35 = v162;
  v59 = v162;
  v60 = v161;
  v41 = v156;
LABEL_48:
  v38 = v167;
  v39 = v35;
  v40 = v58;
  v19 = v45;
LABEL_69:
  v151 = v58;
  v161 = v60;
  v162 = v59;
  v155 = v57;
LABEL_70:
  v96 = v40;
  v97 = v38;
  v98 = v41;
  v99 = v39;
  if (CGRectIsNull(*(&v39 - 1)))
  {
    DictionaryRepresentation = 0;
  }

  else
  {
    v179.origin.x = v40;
    v179.origin.y = v99;
    v179.size.width = v38;
    v179.size.height = v41;
    DictionaryRepresentation = CGRectCreateDictionaryRepresentation(v179);
  }

  v101 = v167;
  v102 = VTSessionSetProperty(*v12, *MEMORY[0x1E6983E40], DictionaryRepresentation);
  if (DictionaryRepresentation)
  {
    CFRelease(DictionaryRepresentation);
  }

  if (v102)
  {
    mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_3();
  }

  else
  {
    v103 = CVPixelBufferGetWidth(v20);
    v104 = CVPixelBufferGetHeight(v20);
    v149 = v104;
    v150 = v103;
    v106 = a5 < v103 || SHIDWORD(a5) < v104;
    v168 = v106;
    if (!v106)
    {
LABEL_95:
      if (VTPixelTransferSessionTransferImage(*v12, a2, v20))
      {
        mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_4();
      }

      else
      {
        v170 = 0;
        v113 = MEMORY[0x1E6965D70];
        if (v168)
        {
          CVPixelBufferGetWidth(v20);
          CVPixelBufferGetHeight(v20);
          v114 = *v113;
          v115 = CVBufferCopyAttachment(v20, *v113, 0);
          if (v115)
          {
            v116 = CFAutorelease(v115);
          }

          else
          {
            v116 = 0;
          }

          Value = CFDictionaryGetValue(v116, *MEMORY[0x1E6965D80]);
          CFNumberGetValue(Value, kCFNumberSInt32Type, &v170 + 4);
          v118 = CFDictionaryGetValue(v116, *MEMORY[0x1E6965D60]);
          CFNumberGetValue(v118, kCFNumberSInt32Type, &v170);
          CVBufferRemoveAttachment(v20, v114);
        }

        if (!v159)
        {
          CVBufferRemoveAttachment(v20, key);
          CVBufferRemoveAttachment(v20, *MEMORY[0x1E6965D88]);
          CVBufferRemoveAttachment(v20, *MEMORY[0x1E6965F30]);
        }

        if (DictionaryRepresentation)
        {
          CVBufferRemoveAttachment(v20, *v113);
        }

        if (BWCMSampleBufferCreateCopyWithNewPixelBuffer(v19, v20, v13, &cf))
        {
          mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_5();
        }

        else
        {
          if (!BWCMSampleBufferCreateCopyIncludingMetadata(cf, &target))
          {
            if (v158)
            {
              CMSetAttachment(target, @"StillImageCaptureType", [MEMORY[0x1E696AD98] numberWithInt:?], 1u);
            }

            v119 = CMGetAttachment(target, v157, 0);
            [v119 setObject:0 forKeyedSubscript:*off_1E798B7A0];
            if (DictionaryRepresentation)
            {
              if (v168)
              {
                v101 = v101 * (SHIDWORD(v170) / v150);
                v36 = v36 * (v170 / v149);
                v120 = (1.0 - v101) * 0.5;
                v35 = (1.0 - v36) * 0.5;
              }

              else
              {
                v120 = v151;
              }

              v180.origin.x = v120;
              v180.origin.y = v35;
              v180.size.width = v101;
              v180.size.height = v36;
              if (CGRectIsNull(v180))
              {
                [v119 setObject:0 forKeyedSubscript:*off_1E798A5C8];
              }

              else
              {
                v181.origin.x = v120;
                v181.origin.y = v35;
                v181.size.width = v101;
                v181.size.height = v36;
                v121 = CGRectCreateDictionaryRepresentation(v181);
                [v119 setObject:v121 forKeyedSubscript:*off_1E798A5C8];
                if (v121)
                {
                  CFRelease(v121);
                }
              }

              v122 = [objc_msgSend(v119 objectForKeyedSubscript:{*off_1E798B5A8), "intValue"}];
              v123 = [objc_msgSend(v119 objectForKeyedSubscript:{*off_1E798B5A0), "intValue"}];
              _ZF = v122 == v164 && v123 == v163;
              v125 = !_ZF;
              if (_ZF)
              {
                FigCFDictionarySetCGRect();
                if ([v119 objectForKeyedSubscript:*off_1E798B668])
                {
                  FigCFDictionarySetCGRect();
                }

                [v119 setObject:objc_msgSend(v119 forKeyedSubscript:{"objectForKeyedSubscript:", *off_1E798B5D8), *off_1E798B328}];
              }

              v182.origin.x = mscsn_validPixelBufferRectFromMetadata(v22, v160);
              v126 = v182.origin.x;
              y = v182.origin.y;
              if (CGRectIsNull(v182))
              {
                v128 = v155;
                v129 = v161;
                v130 = v162;
              }

              else
              {
                v129 = v161 - v126 / v164;
                v130 = v162 - y / v163;
                v128 = v130 * -2.0 + 1.0;
              }

              v177[0] = 0;
              v131 = *off_1E798B328;
              if (FigCFDictionaryGetInt32IfPresent())
              {
                CFDictionarySetValue(v119, v131, [MEMORY[0x1E696AD98] numberWithInt:(v128 * v177[0])]);
              }

              if (v125)
              {
                v176 = 0;
                FigCFDictionaryGetInt32IfPresent();
                FigCFDictionaryGetInt32IfPresent();
                v165 = *(MEMORY[0x1E695F058] + 16);
                v166 = *MEMORY[0x1E695F058];
                valuePtr.origin = *MEMORY[0x1E695F058];
                valuePtr.size = v165;
                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v132 = ceil(v129 * valuePtr.size.width);
                  v133 = floor(v129 * valuePtr.size.width);
                  if (v129 * valuePtr.size.width >= 0.0)
                  {
                    v134 = v133;
                  }

                  else
                  {
                    v134 = v132;
                  }

                  v135 = valuePtr.origin.x + v134;
                  v136 = ceil(v130 * valuePtr.size.height);
                  v137 = floor(v130 * valuePtr.size.height);
                  if (v130 * valuePtr.size.height < 0.0)
                  {
                    v137 = v136;
                  }

                  valuePtr.origin.x = v135;
                  valuePtr.origin.y = valuePtr.origin.y + v137;
                  valuePtr.size.width = SHIDWORD(v176) - v135 * 2.0;
                  valuePtr.size.height = v176 - valuePtr.origin.y * 2.0;
                  FigCFDictionarySetCGRect();
                }

                v173 = v166;
                v174 = v165;
                if (FigCFDictionaryGetCGRectIfPresent())
                {
                  v138 = ceil(v129 * v174.width);
                  v139 = floor(v129 * v174.width);
                  if (v129 * v174.width >= 0.0)
                  {
                    v140 = v139;
                  }

                  else
                  {
                    v140 = v138;
                  }

                  v141 = *&v173 + v140;
                  v142 = ceil(v130 * v174.height);
                  v143 = floor(v130 * v174.height);
                  if (v130 * v174.height < 0.0)
                  {
                    v143 = v142;
                  }

                  *&v173 = v141;
                  *(&v173 + 1) = *(&v173 + 1) + v143;
                  v174.width = SHIDWORD(v176) - v141 * 2.0;
                  v174.height = v176 - *(&v173 + 1) * 2.0;
                  FigCFDictionarySetCGRect();
                }
              }
            }

            if (v168)
            {
              FigCFDictionarySetCGRect();
            }

            goto LABEL_150;
          }

          mscsn_createScaledAndZoomedSampleBufferFromSampleBuffer_cold_6();
        }
      }

      goto LABEL_174;
    }

    v146 = v19;
    v147 = v13;
    v148 = v22;
    VTSessionSetProperty(*v12, *MEMORY[0x1E6983E30], *MEMORY[0x1E69840E0]);
    LODWORD(valuePtr.origin.x) = 0;
    v107 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    LODWORD(v173) = 0;
    v108 = CFNumberCreate(0, kCFNumberSInt32Type, &v173);
    v177[0] = a5;
    v109 = CFNumberCreate(0, kCFNumberSInt32Type, v177);
    HIDWORD(v176) = HIDWORD(a5);
    v110 = CFNumberCreate(0, kCFNumberSInt32Type, &v176 + 4);
    Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D68], v107);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D78], v108);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D80], v109);
    CFDictionaryAddValue(Mutable, *MEMORY[0x1E6965D60], v110);
    v112 = VTSessionSetProperty(*v12, @"DestinationCleanAperture", Mutable);
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    if (v107)
    {
      CFRelease(v107);
    }

    if (v108)
    {
      CFRelease(v108);
    }

    if (v109)
    {
      CFRelease(v109);
    }

    if (v110)
    {
      CFRelease(v110);
    }

    v22 = v148;
    if (!v112)
    {
      v19 = v146;
      v13 = v147;
      goto LABEL_95;
    }

    FigDebugAssert3();
  }

LABEL_174:
  LODWORD(v12) = 1;
LABEL_151:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v20)
  {
    CFRelease(v20);
  }

  result = target;
  if (target)
  {
    v145 = v12;
  }

  else
  {
    v145 = 0;
  }

  if (v145 == 1)
  {
    CFRelease(target);
    return 0;
  }

  return result;
}

void mscsn_removeNonpropagatedAttachmentsFromReflectedStreamingFrame(void *a1)
{
  mscsn_removeNonpropagatedAttachmentsFromAttachmentBearer(a1);
  ImageBuffer = CMSampleBufferGetImageBuffer(a1);
  if (ImageBuffer)
  {

    mscsn_removeNonpropagatedAttachmentsFromAttachmentBearer(ImageBuffer);
  }
}

void __mscsn_handleStreamDroppedSampleNotification_block_invoke(uint64_t a1)
{
  v2 = 0;
  v3 = *off_1E798B888;
  v4 = *off_1E798B868;
  v5 = *off_1E798B880;
  v17 = *off_1E798B858;
  v6 = 22;
  do
  {
    v7 = *(*(*(a1 + 48) + 8) + 40) + 432;
    if (*(v7 + v2) == 1)
    {
      v8 = v7 + v2;
      v9 = *(v8 + 8);
      v10 = *(v8 + 16);
      if (CFEqual(*(a1 + 56), v3))
      {
        v11 = [*(a1 + 32) objectForKeyedSubscript:v4];
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, v11);
        if (v9)
        {
          v18 = v19;
          v12 = [BWDroppedSample newDroppedSampleWithReason:0x1F219BEF0 pts:&v18];
          [v10 emitDroppedSample:v12];

          v13 = *(*(*(*(a1 + 48) + 8) + 40) + 136);
          v18 = v19;
          [v13 sourceNodeDidDropFrameWithPTS:&v18];
        }
      }

      else if (CFEqual(*(a1 + 56), v5))
      {
        v14 = [*(a1 + 32) objectForKeyedSubscript:v17];
        memset(&v19, 0, sizeof(v19));
        CMTimeMakeFromDictionary(&v19, v14);
        if (v9)
        {
          v15 = *(a1 + 40);
          v18 = v19;
          v16 = [BWDroppedSample newDroppedSampleWithReason:v15 pts:&v18];
          [v10 emitDroppedSample:v16];
        }
      }
    }

    v2 += 512;
    --v6;
  }

  while (v6);
  CFRelease(*(a1 + 56));
}

void __mscsn_handlePoolReadyNotification_block_invoke(uint64_t a1)
{
  Value = CFDictionaryGetValue(*(a1 + 40), *off_1E798B990);
  if (Value)
  {
    v3 = Value;
    v4 = *(*(*(*(a1 + 32) + 8) + 40) + 432 + (*(a1 + 56) << 9) + 16);
    v5 = [v4 preparedPixelBufferPool];
    if (v5)
    {
      v6 = v5;
      if (([v4 providesPixelBufferPool] & 1) == 0)
      {
        [v6 setCVPixelBufferPool:v3 attributes:*(a1 + 48)];
      }
    }

    v7 = *(a1 + 48);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a1 + 40);

    CFRelease(v8);
  }
}

uint64_t __multiStreamCameraSourceNode_outputSampleBuffer_block_invoke_1515(uint64_t a1)
{
  if ([*(a1 + 32) liveFormat])
  {
    [*(a1 + 32) markEndOfLiveOutputForConfigurationID:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", objc_msgSend(*(a1 + 32), "liveConfigurationID"))}];
  }

  v2 = *(a1 + 32);

  return [v2 makeConfiguredFormatLive];
}

CFTypeRef CMC_CVBufferGetAttachment(__CVBuffer *a1, const __CFString *a2)
{
  result = CVBufferCopyAttachment(a1, a2, 0);
  if (result)
  {

    return CFAutorelease(result);
  }

  return result;
}

uint64_t mscsn_sphereIsUnstableOrInActiveModeBasedOnMetadata(void *a1)
{
  v2 = [a1 objectForKeyedSubscript:*off_1E798B6C0];
  if (v2)
  {
    v3 = ([v2 intValue] >> 4) & 1;
  }

  else
  {
    v3 = 0;
  }

  return ([objc_msgSend(a1 objectForKeyedSubscript:{*off_1E798C178), "isEqualToString:", *off_1E798C470}] | v3) & 1;
}

void mscsn_removeNonpropagatedAttachmentsFromAttachmentBearer(const void *a1)
{
  CMRemoveAttachment(a1, *off_1E798A448);
  CMRemoveAttachment(a1, *off_1E798A468);
  v2 = *off_1E798A458;

  CMRemoveAttachment(a1, v2);
}

double mscsn_validPixelBufferRectFromMetadata(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695F050];
  v5 = *MEMORY[0x1E695F050];
  v6 = *(MEMORY[0x1E695F050] + 16);
  if (FigCFDictionaryGetCGRectIfPresent() && *&v6 == a2 && *(&v6 + 1) == SHIDWORD(a2))
  {
    *&v5 = v4;
  }

  return *&v5;
}

__CFString *BWColorSpacePropertiesToString(unsigned int a1)
{
  if (a1 > 0xC)
  {
    return 0;
  }

  else
  {
    return off_1E799A2C8[a1];
  }
}

__CFString *BWStringForCacheMode(int a1)
{
  HIDWORD(v2) = a1;
  LODWORD(v2) = a1;
  v1 = v2 >> 8;
  if (v1 > 7)
  {
    return @"Unknown";
  }

  else
  {
    return off_1E799A330[v1];
  }
}

uint64_t pem_cmPhotoAuxImageTypeForPhotoEncoderNodeAuxImageType(int a1)
{
  if ((a1 - 1) > 0xB)
  {
    return 0;
  }

  else
  {
    return dword_1AD056560[a1 - 1];
  }
}

uint64_t pem_cmPhotoAuxImageCustomTypeURNForPhotoEncoderNodeAuxImageType(int a1)
{
  result = 0;
  if (a1 > 7)
  {
    if (a1 <= 9)
    {
      if (a1 == 8)
      {
        v3 = MEMORY[0x1E69917D8];
      }

      else
      {
        v3 = MEMORY[0x1E69917F0];
      }
    }

    else
    {
      switch(a1)
      {
        case 10:
          v3 = MEMORY[0x1E69917C0];
          break;
        case 11:
          v3 = MEMORY[0x1E69917A8];
          break;
        case 12:
          v3 = MEMORY[0x1E6991800];
          break;
        default:
          return result;
      }
    }
  }

  else if (a1 <= 4)
  {
    if (a1 == 1)
    {
      v3 = MEMORY[0x1E69917B8];
    }

    else
    {
      if (a1 != 4)
      {
        return result;
      }

      v3 = MEMORY[0x1E69917D0];
    }
  }

  else if (a1 == 5)
  {
    v3 = MEMORY[0x1E69917E0];
  }

  else if (a1 == 6)
  {
    v3 = MEMORY[0x1E69917E8];
  }

  else
  {
    v3 = MEMORY[0x1E69917F8];
  }

  return *v3;
}

__CFString *BWInferenceTypePathComponent(int a1)
{
  result = @"unknown_inference";
  if (a1 > 169)
  {
    v3 = @"vision_faceprint";
    v4 = @"motion_analysis";
    if (a1 == 60000)
    {
      v5 = @"experiments";
    }

    else
    {
      v5 = @"unknown_inference";
    }

    if (a1 != 2001)
    {
      v4 = v5;
    }

    if (a1 != 804)
    {
      v3 = v4;
    }

    v6 = @"face_segments_with_landmarks";
    v7 = @"PhotosCuration";
    if (a1 != 803)
    {
      v7 = @"unknown_inference";
    }

    if (a1 != 802)
    {
      v6 = v7;
    }

    if (a1 <= 803)
    {
      v3 = v6;
    }

    v8 = @"matting";
    v9 = @"landmarks";
    if (a1 != 801)
    {
      v9 = @"unknown_inference";
    }

    if (a1 != 201)
    {
      v8 = v9;
    }

    v10 = @"learnednr";
    v11 = @"quadralearnednr";
    if (a1 != 171)
    {
      v11 = @"unknown_inference";
    }

    if (a1 != 170)
    {
      v10 = v11;
    }

    if (a1 <= 200)
    {
      v8 = v10;
    }

    if (a1 <= 801)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 101:
        result = @"smart_camera";
        break;
      case 102:
        result = @"person_segmentation";
        break;
      case 103:
        result = @"rgb_based_person_segmentation";
        break;
      case 104:
        result = @"person_semantics";
        break;
      case 105:
        result = @"streaming_person_segmentation";
        break;
      case 106:
        result = @"monoculardepth";
        break;
      case 107:
        result = @"learned_matting";
        break;
      case 108:
        result = @"faststereodisparity";
        break;
      case 109:
        result = @"videodepth";
        break;
      case 110:
        result = @"disparityfiltering";
        break;
      case 111:
        result = @"realtimefsdnet";
        break;
      case 112:
        result = @"disparityderectification";
        break;
      case 113:
        result = @"stereorectification";
        break;
      case 114:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
        return result;
      case 115:
        result = @"disparitypostprocessing";
        break;
      case 116:
        result = @"text_localization";
        break;
      case 117:
        result = @"opticalflow";
        break;
      case 118:
        result = @"anst_refiner256";
        break;
      case 119:
        result = @"videodepthmonocularcmm";
        break;
      case 120:
        result = @"lens_smudge_detection";
        break;
      case 121:
        result = @"cam_gaze";
        break;
      case 150:
        result = @"fusiontracker";
        break;
      case 151:
        result = @"humanpose";
        break;
      case 159:
        result = @"deep_stereo_photo_transfer";
        break;
      case 160:
        result = @"deep_zoom";
        break;
      case 161:
        result = @"faceprint";
        break;
      default:
        if (!a1)
        {
          result = @"internal_provider";
        }

        break;
    }
  }

  return result;
}

__CFString *BWInferenceTypeShortDescription(int a1)
{
  result = @"Unknown Inference";
  if (a1 > 169)
  {
    v3 = @"vision-faceprint";
    v4 = @"motion-analysis";
    if (a1 == 60000)
    {
      v5 = @"experimental";
    }

    else
    {
      v5 = @"Unknown Inference";
    }

    if (a1 != 2001)
    {
      v4 = v5;
    }

    if (a1 != 804)
    {
      v3 = v4;
    }

    v6 = @"face-segments-with-landmarks";
    v7 = @"PhotosCuration";
    if (a1 != 803)
    {
      v7 = @"Unknown Inference";
    }

    if (a1 != 802)
    {
      v6 = v7;
    }

    if (a1 <= 803)
    {
      v3 = v6;
    }

    v8 = @"matting";
    v9 = @"landmarks";
    if (a1 != 801)
    {
      v9 = @"Unknown Inference";
    }

    if (a1 != 201)
    {
      v8 = v9;
    }

    v10 = @"Learned-Noise-Reduction";
    v11 = @"Learned-Noise-Reduction-For-Quadra";
    if (a1 != 171)
    {
      v11 = @"Unknown Inference";
    }

    if (a1 != 170)
    {
      v10 = v11;
    }

    if (a1 <= 200)
    {
      v8 = v10;
    }

    if (a1 <= 801)
    {
      return v8;
    }

    else
    {
      return v3;
    }
  }

  else
  {
    switch(a1)
    {
      case 101:
        result = @"smartcam";
        break;
      case 102:
        result = @"person-segmentation";
        break;
      case 103:
        result = @"rgb-segmentation";
        break;
      case 104:
        result = @"person-semantics";
        break;
      case 105:
        result = @"streaming-person-segmentation";
        break;
      case 106:
        result = @"monocular-depth";
        break;
      case 107:
        result = @"learned-matting";
        break;
      case 108:
        result = @"fast-stereo-disparity";
        break;
      case 109:
        result = @"video-depth";
        break;
      case 110:
        result = @"disparity-filtering";
        break;
      case 111:
        result = @"real-time-fsdnet";
        break;
      case 112:
        result = @"disparity-derectification";
        break;
      case 113:
        result = @"stereo-rectification";
        break;
      case 114:
      case 122:
      case 123:
      case 124:
      case 125:
      case 126:
      case 127:
      case 128:
      case 129:
      case 130:
      case 131:
      case 132:
      case 133:
      case 134:
      case 135:
      case 136:
      case 137:
      case 138:
      case 139:
      case 140:
      case 141:
      case 142:
      case 143:
      case 144:
      case 145:
      case 146:
      case 147:
      case 148:
      case 149:
      case 152:
      case 153:
      case 154:
      case 155:
      case 156:
      case 157:
      case 158:
        return result;
      case 115:
        result = @"disparity-post-processing";
        break;
      case 116:
        result = @"text-localization";
        break;
      case 117:
        result = @"optical-flow";
        break;
      case 118:
        result = @"vmrefiner";
        break;
      case 119:
        result = @"video-depth-monocular-cmm";
        break;
      case 120:
        result = @"lens-smudge-detection";
        break;
      case 121:
        result = @"cam_gaze";
        break;
      case 150:
        result = @"fusion-tracker";
        break;
      case 151:
        result = @"human-pose";
        break;
      case 159:
        result = @"deep-stereo-photo-transfer";
        break;
      case 160:
        result = @"deep-zoom";
        break;
      case 161:
        result = @"faceprint";
        break;
      default:
        if (!a1)
        {
          result = @"internal-provider";
        }

        break;
    }
  }

  return result;
}

__CFString *BWInferenceStatusDescription(int a1)
{
  result = @"unknown status";
  if (a1 <= -31762)
  {
    v3 = @"<inference> provider failed to cache across teardown and rebuild of inference pipeline";
    v4 = @"<scheduler> jobs in inconsistent state";
    if (a1 != -31781)
    {
      v4 = @"unknown status";
    }

    if (a1 == -31782)
    {
      v5 = @"<inference> version error";
    }

    else
    {
      v5 = v4;
    }

    if (a1 != -31783)
    {
      v3 = v5;
    }

    v6 = @"<inference> video requirement could not be created successfully";
    if (a1 != -31784)
    {
      v6 = @"unknown status";
    }

    if (a1 == -31785)
    {
      v7 = @"<inference> pipeline could not be resurrected with placeholder/cached providers";
    }

    else
    {
      v7 = v6;
    }

    if (a1 <= -31784)
    {
      return v7;
    }

    else
    {
      return v3;
    }
  }

  else if (a1 > -31703)
  {
    v8 = @"success";
    if (a1)
    {
      v8 = @"unknown status";
    }

    if (a1 == -31701)
    {
      v9 = @"missing resource";
    }

    else
    {
      v9 = v8;
    }

    if (a1 == -31702)
    {
      return @"resource allocation failed";
    }

    else
    {
      return v9;
    }
  }

  else
  {
    switch(a1)
    {
      case -31761:
        result = @"<graph> unsatisfiable node created";
        break;
      case -31760:
        result = @"<graph> generic graph construction error";
        break;
      case -31748:
        result = @"<scaling> missing output identifier";
        break;
      case -31747:
        result = @"<scaling> provider allocation error";
        break;
      case -31746:
        result = @"<scaling> unsatisfied output requirements";
        break;
      case -31745:
        result = @"<scaling> missing output requirements";
        break;
      case -31744:
        result = @"<scaling> output video buffer preprocessing error";
        break;
      case -31743:
        result = @"<scaling> output video buffer allocation error";
        break;
      case -31742:
        result = @"<scaling> output video format error";
        break;
      case -31741:
        result = @"<scaling> input video format error";
        break;
      case -31740:
        result = @"<scaling> generic error";
        break;
      case -31720:
        result = @"<inference> output metadata allocation failed";
        break;
      case -31719:
        result = @"<inference> missing output metadata";
        break;
      case -31718:
        result = @"<inference> output video buffer allocation failed";
        break;
      case -31717:
        result = @"<inference> missing output video buffer";
        break;
      case -31716:
        result = @"<inference> output video format error";
        break;
      case -31715:
        result = @"<inference> input metadata allocation failed";
        break;
      case -31714:
        result = @"<inference> missing input metadata";
        break;
      case -31713:
        result = @"<inference> input video buffer allocation failed";
        break;
      case -31712:
        result = @"<inference> missing input video buffer";
        break;
      case -31711:
        result = @"<inference> input video format error";
        break;
      case -31710:
        result = @"<inference> generic error";
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t BWInferenceGetAttachedInference(const void *a1, uint64_t a2, uint64_t a3)
{
  v4 = [CMGetAttachment(a1 @"Inferences"];
  if (![v4 isValid])
  {
    return 0;
  }

  v5 = [v4 inferences];

  return [v5 objectForKeyedSubscript:a3];
}

id BWInferenceGetLowResPersonInstanceMasksFromSampleBuffer(const void *a1)
{
  v1 = BWSampleBufferCopyDictionaryOfAttachedMedia(a1);
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = objc_autoreleasePoolPush();
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v4 = [objc_msgSend(v1 "allKeys")];
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v12 + 1) + 8 * i);
        if ([v9 hasPrefix:@"LowResPersonInstanceMask"])
        {
          [v2 addObject:{CMSampleBufferGetImageBuffer(objc_msgSend(v1, "objectForKeyedSubscript:", v9))}];
        }
      }

      v6 = [v4 countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  objc_autoreleasePoolPop(v3);

  result = [v2 count];
  if (result)
  {
    return [v2 copy];
  }

  return result;
}

os_log_t __getCameraCaptureExcessiveLog_block_invoke_1()
{
  result = os_log_create("com.apple.cameracapture", "excessive");
  getCameraCaptureExcessiveLog_cameraCaptureExcessiveLog_1 = result;
  return result;
}

uint64_t FigDepthRotateBuffer(__CVBuffer *a1, __CVBuffer *a2, int a3)
{
  PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
  v7 = FigDepthBytesPerPixelForDepthFormat(PixelFormatType);
  v8 = CVPixelBufferGetPixelFormatType(a2);
  if (v7 != FigDepthBytesPerPixelForDepthFormat(v8))
  {
    FigDepthRotateBuffer_cold_1(&v738);
    return v738;
  }

  if (v7 == 2 || v7 == 4)
  {
    Width = CVPixelBufferGetWidth(a1);
    Height = CVPixelBufferGetHeight(a1);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
    v12 = CVPixelBufferGetWidth(a2);
    v13 = CVPixelBufferGetHeight(a2);
    v14 = CVPixelBufferGetBytesPerRow(a2);
    if (((Width | Height) & 7) == 0 && (v12 & 7) == 0 && (v13 & 7) == 0 && (BytesPerRow & 0xF) == 0 && (v14 & 0xF) == 0)
    {
      pixelBuffer = CVPixelBufferGetWidth(a1);
      v15 = CVPixelBufferGetHeight(a1);
      v16 = CVPixelBufferGetBytesPerRow(a1);
      v17 = CVPixelBufferGetWidth(a2);
      v18 = CVPixelBufferGetHeight(a2);
      v19 = a2;
      v20 = CVPixelBufferGetBytesPerRow(a2);
      v21 = CVPixelBufferLockBaseAddress(a1, 1uLL);
      v22 = v21;
      if (v7 == 2)
      {
        if (v21)
        {
          FigDepthRotateBuffer_cold_7();
          return v22;
        }

        v23 = CVPixelBufferLockBaseAddress(v19, 0);
        if (v23)
        {
          v22 = v23;
          FigDepthRotateBuffer_cold_8();
          return v22;
        }

        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        v25 = CVPixelBufferGetBaseAddress(v19);
        if (a3 > 4)
        {
          if (a3 <= 6)
          {
            if (a3 == 5)
            {
              if (v18)
              {
                for (i = 0; i < v18; i += 8)
                {
                  if (v17)
                  {
                    v453 = 0;
                    v454 = BaseAddress;
                    v455 = v25;
                    do
                    {
                      v456 = *v454;
                      v457 = (v454 + v16);
                      v458 = *v457;
                      v459 = (v457 + v16);
                      v460 = *v459;
                      v461 = (v459 + v16);
                      v462 = *v461;
                      v463 = (v461 + v16);
                      v464 = *v463;
                      v465 = (v463 + v16);
                      v466 = *v465;
                      v467 = (v465 + v16);
                      v468 = *v467;
                      v469 = (v467 + v16);
                      v470 = vzip1q_s16(v456, v458);
                      v471 = vzip2q_s16(v456, v458);
                      v472 = vzip1q_s16(v460, v462);
                      v473 = vzip2q_s16(v460, v462);
                      v474 = vzip1q_s16(v464, v466);
                      v475 = vzip2q_s16(v464, v466);
                      v476 = vzip1q_s16(v468, *v469);
                      v477 = vzip2q_s16(v468, *v469);
                      v478 = vzip1q_s32(v470, v472);
                      v479 = vzip2q_s32(v470, v472);
                      v480 = vzip1q_s32(v471, v473);
                      v481 = vzip2q_s32(v471, v473);
                      v482 = vzip1q_s32(v474, v476);
                      v483 = vzip2q_s32(v474, v476);
                      v484 = vzip1q_s32(v475, v477);
                      v485 = vzip2q_s64(v478, v482);
                      v478.i64[1] = v482.i64[0];
                      v486 = vzip2q_s64(v479, v483);
                      v479.i64[1] = v483.i64[0];
                      v487 = vzip2q_s64(v480, v484);
                      v480.i64[1] = v484.i64[0];
                      v488 = vzip2q_s32(v475, v477);
                      v489 = vzip2q_s64(v481, v488);
                      v481.i64[1] = v488.i64[0];
                      *v455 = v478;
                      *(v455 + v20) = v485;
                      v490 = (v455 + v20 + v20);
                      *v490 = v479;
                      v491 = (v490 + v20);
                      *v491 = v486;
                      v492 = (v491 + v20);
                      *v492 = v480;
                      v493 = (v492 + v20);
                      *v493 = v487;
                      v494 = (v493 + v20);
                      *v494 = v481;
                      *(v494 + v20) = v489;
                      v453 += 8;
                      ++v455;
                      v454 = (v469 + 8 * v16 + -7 * v16);
                    }

                    while (v17 > v453);
                  }

                  ++BaseAddress;
                  v25 = (v25 + 8 * v20);
                }
              }
            }

            else if (v18)
            {
              v139 = 0;
              v140 = &BaseAddress->i8[(v15 - 8) * v16];
              do
              {
                if (v17)
                {
                  v141 = 0;
                  v142 = 0;
                  v143 = v25;
                  do
                  {
                    v144 = *&v140[v141];
                    v145 = &v140[v141 + v16];
                    v146 = *v145;
                    v147 = (v145 + v16);
                    v148 = *v147;
                    v149 = (v147 + v16);
                    v150 = *v149;
                    v151 = (v149 + v16);
                    v152 = *v151;
                    v153 = (v151 + v16);
                    v154 = *v153;
                    v155 = (v153 + v16);
                    v156 = *(v155 + v16);
                    v157 = vzip1q_s16(v156, *v155);
                    v158 = vzip2q_s16(v156, *v155);
                    v159 = vzip1q_s16(v154, v152);
                    v160 = vzip2q_s16(v154, v152);
                    v161 = vzip1q_s16(v150, v148);
                    v162 = vzip2q_s16(v150, v148);
                    v163 = vzip1q_s16(v146, v144);
                    v164 = vzip2q_s16(v146, v144);
                    v165 = vzip1q_s32(v157, v159);
                    v166 = vzip2q_s32(v157, v159);
                    v167 = vzip1q_s32(v158, v160);
                    v168 = vzip2q_s32(v158, v160);
                    v169 = vzip1q_s32(v161, v163);
                    v170 = vzip2q_s32(v161, v163);
                    v171 = vzip1q_s32(v162, v164);
                    v172 = vzip2q_s64(v165, v169);
                    v165.i64[1] = v169.i64[0];
                    v173 = vzip2q_s64(v166, v170);
                    v166.i64[1] = v170.i64[0];
                    v174 = vzip2q_s64(v167, v171);
                    v167.i64[1] = v171.i64[0];
                    v175 = vzip2q_s32(v162, v164);
                    v176 = vzip2q_s64(v168, v175);
                    v168.i64[1] = v175.i64[0];
                    *v143 = v165;
                    *(v143 + v20) = v172;
                    v177 = (v143 + v20 + v20);
                    *v177 = v166;
                    v178 = (v177 + v20);
                    *v178 = v173;
                    v179 = (v178 + v20);
                    *v179 = v167;
                    v180 = (v179 + v20);
                    *v180 = v174;
                    v181 = (v180 + v20);
                    *v181 = v168;
                    *(v181 + v20) = v176;
                    v142 += 8;
                    ++v143;
                    v141 += -8 * v16;
                  }

                  while (v17 > v142);
                }

                v139 += 8;
                v140 += 16;
                v25 = (v25 + 8 * v20);
              }

              while (v18 > v139);
            }

            goto LABEL_179;
          }

          if (a3 == 7)
          {
            if (v18)
            {
              v634 = 0;
              v635 = BaseAddress->i64 + 2 * pixelBuffer + (v15 - 8) * v16;
              do
              {
                v635 -= 16;
                if (v17)
                {
                  v636 = 0;
                  v637 = v635;
                  v638 = v25;
                  do
                  {
                    v639 = *v637;
                    v640 = (v637 + v16);
                    v641 = *v640;
                    v642 = (v640 + v16);
                    v643 = *v642;
                    v644 = (v642 + v16);
                    v645 = *v644;
                    v646 = (v644 + v16);
                    v647 = *v646;
                    v648 = (v646 + v16);
                    v649 = *v648;
                    v650 = (v648 + v16);
                    v651 = *v650;
                    v652 = (v650 + v16);
                    v653 = vzip1q_s16(*v652, v651);
                    v654 = vzip2q_s16(*v652, v651);
                    v655 = vzip1q_s16(v649, v647);
                    v656 = vzip2q_s16(v649, v647);
                    v657 = vzip1q_s16(v645, v643);
                    v658 = vzip2q_s16(v645, v643);
                    v659 = vzip1q_s16(v641, v639);
                    v660 = vzip2q_s16(v641, v639);
                    v661 = vzip1q_s32(v653, v655);
                    v662 = vzip2q_s32(v653, v655);
                    v663 = vzip1q_s32(v654, v656);
                    v664 = vzip2q_s32(v654, v656);
                    v665 = vzip1q_s32(v657, v659);
                    v666 = vzip2q_s32(v657, v659);
                    v667 = vzip1q_s32(v658, v660);
                    v668 = vzip2q_s32(v658, v660);
                    v669 = vzip2q_s64(v664, v668);
                    v664.i64[1] = v668.i64[0];
                    v670 = vzip2q_s64(v663, v667);
                    v663.i64[1] = v667.i64[0];
                    v671 = vzip2q_s64(v662, v666);
                    v662.i64[1] = v666.i64[0];
                    v672 = vzip2q_s64(v661, v665);
                    v661.i64[1] = v665.i64[0];
                    *v638 = v669;
                    *(v638 + v20) = v664;
                    v673 = (v638 + v20 + v20);
                    *v673 = v670;
                    v674 = (v673 + v20);
                    *v674 = v663;
                    v675 = (v674 + v20);
                    *v675 = v671;
                    v676 = (v675 + v20);
                    *v676 = v662;
                    v677 = (v676 + v20);
                    *v677 = v672;
                    *(v677 + v20) = v661;
                    v636 += 8;
                    ++v638;
                    v637 = (v652 - 7 * v16 + -8 * v16);
                  }

                  while (v17 > v636);
                }

                v634 += 8;
                v25 = (v25 + 8 * v20);
              }

              while (v18 > v634);
            }

            goto LABEL_179;
          }

          if (a3 == 8)
          {
            if (v18)
            {
              v296 = 0;
              v297 = &BaseAddress->i8[2 * pixelBuffer];
              do
              {
                if (v17)
                {
                  v298 = 0;
                  v299 = -16;
                  v300 = v25;
                  do
                  {
                    v301 = *&v297[v299];
                    v302 = &v297[v299 + v16];
                    v303 = *v302;
                    v304 = (v302 + v16);
                    v305 = *v304;
                    v306 = (v304 + v16);
                    v307 = *v306;
                    v308 = (v306 + v16);
                    v309 = *v308;
                    v310 = (v308 + v16);
                    v311 = *v310;
                    v312 = (v310 + v16);
                    v313 = *(v312 + v16);
                    v314 = vzip1q_s16(v301, v303);
                    v315 = vzip2q_s16(v301, v303);
                    v316 = vzip1q_s16(v305, v307);
                    v317 = vzip2q_s16(v305, v307);
                    v318 = vzip1q_s16(v309, v311);
                    v319 = vzip2q_s16(v309, v311);
                    v320 = vzip1q_s16(*v312, v313);
                    v321 = vzip2q_s16(*v312, v313);
                    v322 = vzip1q_s32(v314, v316);
                    v323 = vzip2q_s32(v314, v316);
                    v324 = vzip1q_s32(v315, v317);
                    v325 = vzip2q_s32(v315, v317);
                    v326 = vzip1q_s32(v318, v320);
                    v327 = vzip2q_s32(v318, v320);
                    v328 = vzip1q_s32(v319, v321);
                    v329 = vzip2q_s32(v319, v321);
                    v330 = vzip2q_s64(v325, v329);
                    v325.i64[1] = v329.i64[0];
                    v331 = vzip2q_s64(v324, v328);
                    v324.i64[1] = v328.i64[0];
                    v332 = vzip2q_s64(v323, v327);
                    v323.i64[1] = v327.i64[0];
                    v333 = vzip2q_s64(v322, v326);
                    v322.i64[1] = v326.i64[0];
                    *v300 = v330;
                    *(v300 + v20) = v325;
                    v334 = (v300 + v20 + v20);
                    *v334 = v331;
                    v335 = (v334 + v20);
                    *v335 = v324;
                    v336 = (v335 + v20);
                    *v336 = v332;
                    v337 = (v336 + v20);
                    *v337 = v323;
                    v338 = (v337 + v20);
                    *v338 = v333;
                    *(v338 + v20) = v322;
                    v298 += 8;
                    ++v300;
                    v299 += 8 * v16;
                  }

                  while (v17 > v298);
                }

                v297 -= 16;
                v296 += 8;
                v25 = (v25 + 8 * v20);
              }

              while (v18 > v296);
            }

            goto LABEL_179;
          }
        }

        else
        {
          if (a3 > 2)
          {
            if (a3 == 3)
            {
              if (v18)
              {
                v550 = 0;
                v551 = BaseAddress[-1].i64 + 2 * pixelBuffer + (v15 - 8) * v16;
                do
                {
                  if (v17)
                  {
                    v552 = 0;
                    v553 = 0;
                    v554 = v25;
                    do
                    {
                      v555 = (v551 + v552 + v16);
                      v556 = *v555;
                      v557 = (v555 + v16);
                      v558 = *v557;
                      v559 = (v557 + v16);
                      v560 = *v559;
                      v561 = (v559 + v16);
                      v562 = *v561;
                      v563 = (v561 + v16);
                      v564 = *v563;
                      v565 = (v563 + v16);
                      v566 = vrev64q_s16(*(v565 + v16));
                      v567 = vrev64q_s16(*v565);
                      v568 = vrev64q_s16(v564);
                      v569 = vrev64q_s16(v562);
                      v570 = vrev64q_s16(v560);
                      v571 = vrev64q_s16(v558);
                      v572 = vrev64q_s16(v556);
                      v573 = vrev64q_s16(*(v551 + v552));
                      v574.i64[0] = vextq_s8(v566, v566, 8uLL).u64[0];
                      v574.i64[1] = v566.i64[0];
                      v566.i64[0] = vextq_s8(v567, v567, 8uLL).u64[0];
                      v566.i64[1] = v567.i64[0];
                      v567.i64[0] = vextq_s8(v568, v568, 8uLL).u64[0];
                      v567.i64[1] = v568.i64[0];
                      v568.i64[0] = vextq_s8(v569, v569, 8uLL).u64[0];
                      v568.i64[1] = v569.i64[0];
                      v569.i64[0] = vextq_s8(v570, v570, 8uLL).u64[0];
                      v569.i64[1] = v570.i64[0];
                      v570.i64[0] = vextq_s8(v571, v571, 8uLL).u64[0];
                      v570.i64[1] = v571.i64[0];
                      v571.i64[0] = vextq_s8(v572, v572, 8uLL).u64[0];
                      v571.i64[1] = v572.i64[0];
                      v572.i64[0] = vextq_s8(v573, v573, 8uLL).u64[0];
                      v572.i64[1] = v573.i64[0];
                      *v554 = v574;
                      *(v554 + v20) = v566;
                      v575 = &v554->i8[v20 + v20];
                      *v575 = v567;
                      v576 = (v575 + v20);
                      *v576 = v568;
                      v577 = (v576 + v20);
                      *v577 = v569;
                      v578 = (v577 + v20);
                      *v578 = v570;
                      v579 = (v578 + v20);
                      *v579 = v571;
                      *(v579 + v20) = v572;
                      v553 += 8;
                      ++v554;
                      v552 -= 16;
                    }

                    while (v17 > v553);
                  }

                  v550 += 8;
                  v551 += -8 * v16;
                  v25 = (v25 + 8 * v20);
                }

                while (v18 > v550);
              }
            }

            else if (v18)
            {
              v239 = 0;
              v240 = &BaseAddress->i8[(v15 - 8) * v16];
              do
              {
                if (v17)
                {
                  v241 = 0;
                  for (j = 0; j < v17; j += 8)
                  {
                    v243 = *&v240[v241 * 16];
                    v244 = &v240[v241 * 16 + v16];
                    v245 = *v244;
                    v246 = &v244[v16];
                    v247 = *v246;
                    v248 = &v246[v16];
                    v249 = *v248;
                    v250 = (v248 + v16);
                    v251 = *v250;
                    v252 = (v250 + v16);
                    v253 = *v252;
                    v254 = (v252 + v16);
                    v255 = *v254;
                    v25[v241] = *(v254 + v16);
                    v256 = &v25[v241].i8[v20];
                    *v256 = v255;
                    v257 = &v256[v20];
                    *v257 = v253;
                    v258 = &v257[v20];
                    *v258 = v251;
                    v259 = &v258[v20];
                    *v259 = v249;
                    v260 = &v259[v20];
                    *v260 = v247;
                    v261 = &v260[v20];
                    *v261 = v245;
                    *&v261[v20] = v243;
                    ++v241;
                  }
                }

                v239 += 8;
                v240 -= 8 * v16;
                v25 = (v25 + 8 * v20);
              }

              while (v18 > v239);
            }

            goto LABEL_179;
          }

          if (a3 == 1)
          {
            if (v18)
            {
              for (k = 0; k < v18; k += 8)
              {
                if (v17)
                {
                  v398 = 0;
                  for (m = 0; m < v17; m += 8)
                  {
                    v400 = &BaseAddress[v398].i8[v16];
                    v401 = *v400;
                    v402 = &v400[v16];
                    v403 = *v402;
                    v404 = &v402[v16];
                    v405 = *v404;
                    v406 = (v404 + v16);
                    v407 = *v406;
                    v408 = (v406 + v16);
                    v409 = *v408;
                    v410 = (v408 + v16);
                    v411 = *v410;
                    v412 = *(v410 + v16);
                    v25[v398] = BaseAddress[v398];
                    v413 = &v25[v398].i8[v20];
                    *v413 = v401;
                    v414 = &v413[v20];
                    *v414 = v403;
                    v415 = &v414[v20];
                    *v415 = v405;
                    v416 = &v415[v20];
                    *v416 = v407;
                    v417 = &v416[v20];
                    *v417 = v409;
                    v418 = &v417[v20];
                    *v418 = v411;
                    *&v418[v20] = v412;
                    ++v398;
                  }
                }

                BaseAddress = (BaseAddress + 8 * v16);
                v25 = (v25 + 8 * v20);
              }
            }

            goto LABEL_179;
          }

          if (a3 == 2)
          {
            if (v18)
            {
              v26 = 0;
              v27 = BaseAddress[-1].i64 + 2 * pixelBuffer;
              do
              {
                if (v17)
                {
                  v28 = 0;
                  v29 = 0;
                  v30 = v25;
                  do
                  {
                    v31 = (v27 + v28 + v16);
                    v32 = *v31;
                    v33 = (v31 + v16);
                    v34 = *v33;
                    v35 = (v33 + v16);
                    v36 = *v35;
                    v37 = (v35 + v16);
                    v38 = *v37;
                    v39 = (v37 + v16);
                    v40 = *v39;
                    v41 = (v39 + v16);
                    v42 = vrev64q_s16(*(v27 + v28));
                    v43 = vrev64q_s16(v32);
                    v44 = vrev64q_s16(v34);
                    v45 = vrev64q_s16(v36);
                    v46 = vrev64q_s16(v38);
                    v47 = vrev64q_s16(v40);
                    v48 = vrev64q_s16(*v41);
                    v49 = vrev64q_s16(*(v41 + v16));
                    v50.i64[0] = vextq_s8(v42, v42, 8uLL).u64[0];
                    v50.i64[1] = v42.i64[0];
                    v42.i64[0] = vextq_s8(v43, v43, 8uLL).u64[0];
                    v42.i64[1] = v43.i64[0];
                    v43.i64[0] = vextq_s8(v44, v44, 8uLL).u64[0];
                    v43.i64[1] = v44.i64[0];
                    v44.i64[0] = vextq_s8(v45, v45, 8uLL).u64[0];
                    v44.i64[1] = v45.i64[0];
                    v45.i64[0] = vextq_s8(v46, v46, 8uLL).u64[0];
                    v45.i64[1] = v46.i64[0];
                    v46.i64[0] = vextq_s8(v47, v47, 8uLL).u64[0];
                    v46.i64[1] = v47.i64[0];
                    v47.i64[0] = vextq_s8(v48, v48, 8uLL).u64[0];
                    v47.i64[1] = v48.i64[0];
                    v48.i64[0] = vextq_s8(v49, v49, 8uLL).u64[0];
                    v48.i64[1] = v49.i64[0];
                    *v30 = v50;
                    *(v30 + v20) = v42;
                    v51 = &v30->i8[v20 + v20];
                    *v51 = v43;
                    v52 = (v51 + v20);
                    *v52 = v44;
                    v53 = (v52 + v20);
                    *v53 = v45;
                    v54 = (v53 + v20);
                    *v54 = v46;
                    v55 = (v54 + v20);
                    *v55 = v47;
                    *(v55 + v20) = v48;
                    v29 += 8;
                    ++v30;
                    v28 -= 16;
                  }

                  while (v17 > v29);
                }

                v26 += 8;
                v27 += 8 * v16;
                v25 = (v25 + 8 * v20);
              }

              while (v18 > v26);
            }

LABEL_179:
            v22 = 0;
LABEL_180:
            CVPixelBufferUnlockBaseAddress(a1, 1uLL);
            CVPixelBufferUnlockBaseAddress(v19, 0);
            return v22;
          }
        }
      }

      else
      {
        if (v21)
        {
          FigDepthRotateBuffer_cold_5();
          return v22;
        }

        v72 = CVPixelBufferLockBaseAddress(v19, 0);
        if (v72)
        {
          v22 = v72;
          FigDepthRotateBuffer_cold_6();
          return v22;
        }

        v73 = CVPixelBufferGetBaseAddress(a1);
        v74 = CVPixelBufferGetBaseAddress(v19);
        if (a3 > 4)
        {
          if (a3 <= 6)
          {
            if (a3 == 5)
            {
              if (v18)
              {
                for (n = 0; n < v18; n += 8)
                {
                  if (v17)
                  {
                    v496 = 0;
                    v497 = v74;
                    v498 = v73;
                    do
                    {
                      v500 = *v498;
                      v501 = v498[1];
                      v499 = (v498 + v16);
                      v503 = *v499;
                      v504 = v499[1];
                      v502 = (v499 + v16);
                      v506 = *v502;
                      v507 = v502[1];
                      v505 = (v502 + v16);
                      v509 = *v505;
                      v510 = v505[1];
                      v508 = (v505 + v16);
                      v512 = *v508;
                      v513 = v508[1];
                      v511 = (v508 + v16);
                      v515 = *v511;
                      v516 = v511[1];
                      v514 = (v511 + v16);
                      v518 = *v514;
                      v519 = v514[1];
                      v517 = (v514 + v16);
                      v520 = *v517;
                      v521 = v517[1];
                      v498 = (v517 + 8 * v16 + -7 * v16);
                      v522 = vzip1q_s32(v500, v503);
                      v523 = vzip2q_s32(v500, v503);
                      v524 = vzip1q_s32(v501, v504);
                      v525 = vzip2q_s32(v501, v504);
                      v526 = vzip1q_s32(v506, v509);
                      v527 = vzip2q_s32(v506, v509);
                      v528 = vzip1q_s32(v507, v510);
                      v529 = vzip2q_s32(v507, v510);
                      v530 = vzip1q_s32(v512, v515);
                      v531 = vzip2q_s32(v512, v515);
                      v532 = vzip1q_s32(v513, v516);
                      v533 = vzip2q_s32(v513, v516);
                      v534 = vzip1q_s32(v518, v520);
                      v535 = vzip2q_s32(v518, v520);
                      v536 = vzip1q_s32(v519, v521);
                      v537 = vzip2q_s32(v519, v521);
                      v538 = vzip2q_s64(v522, v526);
                      v509.i64[0] = v522.i64[0];
                      v509.i64[1] = v526.i64[0];
                      v510.i64[0] = v530.i64[0];
                      v510.i64[1] = v534.i64[0];
                      v539 = vzip2q_s64(v530, v534);
                      v540 = vzip2q_s64(v523, v527);
                      v518.i64[0] = v523.i64[0];
                      v518.i64[1] = v527.i64[0];
                      v541 = vzip2q_s64(v524, v528);
                      v522.i64[0] = v524.i64[0];
                      v522.i64[1] = v528.i64[0];
                      v519.i64[0] = v531.i64[0];
                      v519.i64[1] = v535.i64[0];
                      v523.i64[0] = v532.i64[0];
                      v523.i64[1] = v536.i64[0];
                      v542 = vzip2q_s64(v531, v535);
                      v524.i64[0] = v525.i64[0];
                      v524.i64[1] = v529.i64[0];
                      v531.i64[0] = v533.i64[0];
                      v531.i64[1] = v537.i64[0];
                      v543 = &v497->i8[v20];
                      *v497 = v509;
                      v497[1] = v510;
                      v497 += 2;
                      *v543 = v538;
                      v543[1] = v539;
                      v544 = &v543->i8[v20];
                      *v544 = v518;
                      v544[1] = v519;
                      v545 = &v544->i8[v20];
                      *v545 = v540;
                      v545[1] = v542;
                      v546 = (v545 + v20);
                      *v546 = v522;
                      v546[1] = v523;
                      v547 = (v546 + v20);
                      *v547 = v541;
                      v547[1] = vzip2q_s64(v532, v536);
                      v548 = (v547 + v20);
                      *v548 = v524;
                      v548[1] = v531;
                      v549 = (v548 + v20);
                      *v549 = vzip2q_s64(v525, v529);
                      v549[1] = vzip2q_s64(v533, v537);
                      v496 += 8;
                    }

                    while (v17 > v496);
                  }

                  v73 += 2;
                  v74 = (v74 + 8 * v20);
                }
              }
            }

            else if (v18)
            {
              v182 = 0;
              v183 = (v73 + (v15 - 8) * v16);
              do
              {
                if (v17)
                {
                  v184 = 0;
                  v185 = v74;
                  v186 = v183;
                  do
                  {
                    v188 = *v186;
                    v189 = v186[1];
                    v187 = (v186 + v16);
                    v191 = *v187;
                    v192 = v187[1];
                    v190 = (v187 + v16);
                    v194 = *v190;
                    v195 = v190[1];
                    v193 = (v190 + v16);
                    v197 = *v193;
                    v198 = v193[1];
                    v196 = (v193 + v16);
                    v200 = *v196;
                    v201 = v196[1];
                    v199 = (v196 + v16);
                    v203 = *v199;
                    v204 = v199[1];
                    v202 = (v199 + v16);
                    v206 = *v202;
                    v207 = v202[1];
                    v205 = (v202 + v16);
                    v208 = *v205;
                    v209 = v205[1];
                    v186 = (v205 - 7 * v16 + -8 * v16);
                    v210 = vzip1q_s32(v208, v206);
                    v211 = vzip2q_s32(v208, v206);
                    v212 = vzip1q_s32(v209, v207);
                    v213 = vzip2q_s32(v209, v207);
                    v214 = vzip1q_s32(v203, v200);
                    v215 = vzip2q_s32(v203, v200);
                    v216 = vzip1q_s32(v204, v201);
                    v217 = vzip2q_s32(v204, v201);
                    v218 = vzip1q_s32(v197, v194);
                    v219 = vzip2q_s32(v197, v194);
                    v220 = vzip1q_s32(v198, v195);
                    v221 = vzip2q_s32(v198, v195);
                    v222 = vzip1q_s32(v191, v188);
                    v223 = vzip2q_s32(v191, v188);
                    v224 = vzip1q_s32(v192, v189);
                    v225 = vzip2q_s32(v192, v189);
                    v226 = vzip2q_s64(v210, v214);
                    v192.i64[0] = v210.i64[0];
                    v192.i64[1] = v214.i64[0];
                    v210.i64[0] = v218.i64[0];
                    v210.i64[1] = v222.i64[0];
                    v227 = vzip2q_s64(v218, v222);
                    v228 = vzip2q_s64(v211, v215);
                    v218.i64[0] = v211.i64[0];
                    v218.i64[1] = v215.i64[0];
                    v229 = vzip2q_s64(v212, v216);
                    v211.i64[0] = v212.i64[0];
                    v211.i64[1] = v216.i64[0];
                    v209.i64[0] = v219.i64[0];
                    v209.i64[1] = v223.i64[0];
                    v230.i64[0] = v220.i64[0];
                    v230.i64[1] = v224.i64[0];
                    v231 = vzip2q_s64(v219, v223);
                    v212.i64[0] = v213.i64[0];
                    v212.i64[1] = v217.i64[0];
                    v219.i64[0] = v221.i64[0];
                    v219.i64[1] = v225.i64[0];
                    v232 = &v185->i8[v20];
                    *v185 = v192;
                    v185[1] = v210;
                    v185 += 2;
                    *v232 = v226;
                    v232[1] = v227;
                    v233 = (v232 + v20);
                    *v233 = v218;
                    v233[1] = v209;
                    v234 = (v233 + v20);
                    *v234 = v228;
                    v234[1] = v231;
                    v235 = (v234 + v20);
                    *v235 = v211;
                    v235[1] = v230;
                    v236 = (v235 + v20);
                    *v236 = v229;
                    v236[1] = vzip2q_s64(v220, v224);
                    v237 = (v236 + v20);
                    *v237 = v212;
                    v237[1] = v219;
                    v238 = (v237 + v20);
                    *v238 = vzip2q_s64(v213, v217);
                    v238[1] = vzip2q_s64(v221, v225);
                    v184 += 8;
                  }

                  while (v17 > v184);
                }

                v182 += 8;
                v183 += 2;
                v74 = (v74 + 8 * v20);
              }

              while (v18 > v182);
            }

            goto LABEL_179;
          }

          if (a3 == 7)
          {
            if (v18)
            {
              v678 = 0;
              v679 = v73->i64 + 4 * pixelBuffer + (v15 - 8) * v16;
              do
              {
                v679 -= 32;
                if (v17)
                {
                  v680 = 0;
                  v681 = v74;
                  v682 = v679;
                  do
                  {
                    v684 = *v682;
                    v685 = v682[1];
                    v683 = (v682 + v16);
                    v687 = *v683;
                    v688 = v683[1];
                    v686 = (v683 + v16);
                    v690 = *v686;
                    v691 = v686[1];
                    v689 = (v686 + v16);
                    v693 = *v689;
                    v694 = v689[1];
                    v692 = (v689 + v16);
                    v696 = *v692;
                    v697 = v692[1];
                    v695 = (v692 + v16);
                    v699 = *v695;
                    v700 = v695[1];
                    v698 = (v695 + v16);
                    v702 = *v698;
                    v703 = v698[1];
                    v701 = (v698 + v16);
                    v704 = *v701;
                    v705 = v701[1];
                    v682 = (v701 - 7 * v16 + -8 * v16);
                    v706 = vzip1q_s32(v704, v702);
                    v707 = vzip2q_s32(v704, v702);
                    v708 = vzip1q_s32(v705, v703);
                    v709 = vzip2q_s32(v705, v703);
                    v710 = vzip1q_s32(v699, v696);
                    v711 = vzip2q_s32(v699, v696);
                    v712 = vzip1q_s32(v700, v697);
                    v713 = vzip2q_s32(v700, v697);
                    v714 = vzip1q_s32(v693, v690);
                    v715 = vzip2q_s32(v693, v690);
                    v716 = vzip1q_s32(v694, v691);
                    v717 = vzip2q_s32(v694, v691);
                    v718 = vzip1q_s32(v687, v684);
                    v719 = vzip2q_s32(v687, v684);
                    v720 = vzip1q_s32(v688, v685);
                    v721 = vzip2q_s32(v688, v685);
                    v722 = vzip2q_s64(v709, v713);
                    v723 = vzip2q_s64(v717, v721);
                    v709.i64[1] = v713.i64[0];
                    v717.i64[1] = v721.i64[0];
                    v724 = vzip2q_s64(v708, v712);
                    v725 = vzip2q_s64(v716, v720);
                    v708.i64[1] = v712.i64[0];
                    v716.i64[1] = v720.i64[0];
                    v726 = vzip2q_s64(v707, v711);
                    v727 = vzip2q_s64(v715, v719);
                    v707.i64[1] = v711.i64[0];
                    v715.i64[1] = v719.i64[0];
                    v728 = vzip2q_s64(v706, v710);
                    v706.i64[1] = v710.i64[0];
                    v729 = (v681 + v20);
                    *v681 = v722;
                    v681[1] = v723;
                    v681 += 2;
                    *v729 = v709;
                    v729[1] = v717;
                    v730 = (v729 + v20);
                    *v730 = v724;
                    v730[1] = v725;
                    v731 = (v730 + v20);
                    *v731 = v708;
                    v731[1] = v716;
                    v732 = (v731 + v20);
                    *v732 = v726;
                    v732[1] = v727;
                    v733 = (v732 + v20);
                    *v733 = v707;
                    v733[1] = v715;
                    v734 = (v733 + v20);
                    *v734 = v728;
                    v734[1] = vzip2q_s64(v714, v718);
                    v735 = (v734 + v20);
                    v714.i64[1] = v718.i64[0];
                    *v735 = v706;
                    v735[1] = v714;
                    v680 += 8;
                  }

                  while (v17 > v680);
                }

                v678 += 8;
                v74 = (v74 + 8 * v20);
              }

              while (v18 > v678);
            }

            goto LABEL_179;
          }

          if (a3 == 8)
          {
            if (v18)
            {
              v339 = 0;
              v340 = (v73 + 4 * pixelBuffer);
              do
              {
                v340 -= 2;
                if (v17)
                {
                  v341 = 0;
                  v342 = v74;
                  v343 = v340;
                  do
                  {
                    v345 = *v343;
                    v346 = v343[1];
                    v344 = (v343 + v16);
                    v348 = *v344;
                    v349 = v344[1];
                    v347 = (v344 + v16);
                    v351 = *v347;
                    v352 = v347[1];
                    v350 = (v347 + v16);
                    v354 = *v350;
                    v355 = v350[1];
                    v353 = (v350 + v16);
                    v357 = *v353;
                    v358 = v353[1];
                    v356 = (v353 + v16);
                    v360 = *v356;
                    v361 = v356[1];
                    v359 = (v356 + v16);
                    v363 = *v359;
                    v364 = v359[1];
                    v362 = (v359 + v16);
                    v365 = *v362;
                    v366 = v362[1];
                    v343 = (v362 + 8 * v16 + -7 * v16);
                    v367 = vzip1q_s32(v345, v348);
                    v368 = vzip2q_s32(v345, v348);
                    v369 = vzip1q_s32(v346, v349);
                    v370 = vzip2q_s32(v346, v349);
                    v371 = vzip1q_s32(v351, v354);
                    v372 = vzip2q_s32(v351, v354);
                    v373 = vzip1q_s32(v352, v355);
                    v374 = vzip2q_s32(v352, v355);
                    v375 = vzip1q_s32(v357, v360);
                    v376 = vzip2q_s32(v357, v360);
                    v377 = vzip1q_s32(v358, v361);
                    v378 = vzip2q_s32(v358, v361);
                    v379 = vzip1q_s32(v363, v365);
                    v380 = vzip2q_s32(v363, v365);
                    v381 = vzip1q_s32(v364, v366);
                    v382 = vzip2q_s32(v364, v366);
                    v383 = vzip2q_s64(v370, v374);
                    v384 = vzip2q_s64(v378, v382);
                    v370.i64[1] = v374.i64[0];
                    v378.i64[1] = v382.i64[0];
                    v385 = vzip2q_s64(v369, v373);
                    v386 = vzip2q_s64(v377, v381);
                    v369.i64[1] = v373.i64[0];
                    v377.i64[1] = v381.i64[0];
                    v387 = vzip2q_s64(v368, v372);
                    v388 = vzip2q_s64(v376, v380);
                    v368.i64[1] = v372.i64[0];
                    v376.i64[1] = v380.i64[0];
                    v389 = vzip2q_s64(v367, v371);
                    v367.i64[1] = v371.i64[0];
                    v390 = (v342 + v20);
                    *v342 = v383;
                    v342[1] = v384;
                    v342 += 2;
                    *v390 = v370;
                    v390[1] = v378;
                    v391 = (v390 + v20);
                    *v391 = v385;
                    v391[1] = v386;
                    v392 = (v391 + v20);
                    *v392 = v369;
                    v392[1] = v377;
                    v393 = (v392 + v20);
                    *v393 = v387;
                    v393[1] = v388;
                    v394 = (v393 + v20);
                    *v394 = v368;
                    v394[1] = v376;
                    v395 = (v394 + v20);
                    *v395 = v389;
                    v395[1] = vzip2q_s64(v375, v379);
                    v396 = (v395 + v20);
                    v375.i64[1] = v379.i64[0];
                    *v396 = v367;
                    v396[1] = v375;
                    v341 += 8;
                  }

                  while (v17 > v341);
                }

                v339 += 8;
                v74 = (v74 + 8 * v20);
              }

              while (v18 > v339);
            }

            goto LABEL_179;
          }
        }

        else
        {
          if (a3 > 2)
          {
            if (a3 == 3)
            {
              if (v18)
              {
                v580 = 0;
                v581 = v73[-2].i64 + 4 * pixelBuffer + (v15 - 8) * v16;
                do
                {
                  if (v17)
                  {
                    v582 = 0;
                    v583 = v74;
                    v584 = v581;
                    do
                    {
                      v585 = *v584;
                      v586 = v584[1];
                      v588 = *(v584 + v16);
                      v587 = (v584 + v16 + v16);
                      v590 = *v587;
                      v591 = v587[1];
                      v589 = (v587 + v16);
                      v593 = *v589;
                      v594 = v589[1];
                      v592 = (v589 + v16);
                      v596 = *v592;
                      v597 = v592[1];
                      v595 = (v592 + v16);
                      v599 = *v595;
                      v600 = v595[1];
                      v598 = (v595 + v16);
                      v602 = *v598;
                      v603 = v598[1];
                      v601 = (v598 + v16);
                      v604 = vrev64q_s32(v601[1]);
                      v605 = vrev64q_s32(*v601);
                      v606 = vrev64q_s32(v603);
                      v607 = vextq_s8(v606, v606, 8uLL);
                      v608 = vextq_s8(v604, v604, 8uLL);
                      v609 = vrev64q_s32(v602);
                      v610 = vextq_s8(v609, v609, 8uLL);
                      v611 = vrev64q_s32(v600);
                      v612 = vrev64q_s32(v599);
                      v613 = vrev64q_s32(v597);
                      v614 = vextq_s8(v605, v605, 8uLL);
                      v615 = vrev64q_s32(v596);
                      v616 = vextq_s8(v615, v615, 8uLL);
                      v617 = vrev64q_s32(v594);
                      v618 = vrev64q_s32(v593);
                      v619 = vrev64q_s32(v591);
                      v620 = vrev64q_s32(v590);
                      v621 = vextq_s8(v620, v620, 8uLL);
                      v622 = vrev64q_s32(*(&v584[1] + v16));
                      v623 = (v583 + v20);
                      *v583 = v608;
                      v583[1] = v614;
                      v583 += 2;
                      v624 = vrev64q_s32(v588);
                      v625 = vextq_s8(v624, v624, 8uLL);
                      *v623 = v607;
                      v623[1] = v610;
                      v626 = (v623 + v20);
                      *v626 = vextq_s8(v611, v611, 8uLL);
                      v626[1] = vextq_s8(v612, v612, 8uLL);
                      v627 = (v626 + v20);
                      *v627 = vextq_s8(v613, v613, 8uLL);
                      v627[1] = v616;
                      v628 = (v627 + v20);
                      v629 = vrev64q_s32(v586);
                      v630 = vrev64q_s32(v585);
                      *v628 = vextq_s8(v617, v617, 8uLL);
                      v628[1] = vextq_s8(v618, v618, 8uLL);
                      v631 = (v628 + v20);
                      *v631 = vextq_s8(v619, v619, 8uLL);
                      v631[1] = v621;
                      v632 = (v631 + v20);
                      *v632 = vextq_s8(v622, v622, 8uLL);
                      v632[1] = v625;
                      v633 = (v632 + v20);
                      *v633 = vextq_s8(v629, v629, 8uLL);
                      v633[1] = vextq_s8(v630, v630, 8uLL);
                      v582 += 8;
                      v584 -= 2;
                    }

                    while (v17 > v582);
                  }

                  v580 += 8;
                  v581 += -8 * v16;
                  v74 = (v74 + 8 * v20);
                }

                while (v18 > v580);
              }
            }

            else if (v18)
            {
              v262 = 0;
              v263 = &v73->i8[(v15 - 8) * v16];
              do
              {
                if (v17)
                {
                  v264 = 0;
                  for (ii = 0; ii < v17; ii += 8)
                  {
                    v267 = *&v263[v264 * 16];
                    v268 = *&v263[v264 * 16 + 16];
                    v266 = &v263[v264 * 16 + v16];
                    v270 = *v266;
                    v271 = *(v266 + 1);
                    v269 = &v266[v16];
                    v273 = *v269;
                    v274 = *(v269 + 1);
                    v272 = &v269[v16];
                    v276 = *v272;
                    v277 = v272[1];
                    v275 = (v272 + v16);
                    v279 = *v275;
                    v280 = v275[1];
                    v278 = (v275 + v16);
                    v282 = *v278;
                    v283 = v278[1];
                    v281 = (v278 + v16);
                    v285 = *v281;
                    v286 = v281[1];
                    v284 = (v281 + v16);
                    i8 = v74[v264].i8;
                    v288 = v284[1];
                    *i8 = *v284;
                    *(i8 + 1) = v288;
                    v289 = &v74[v264].i8[v20];
                    *v289 = v285;
                    *(v289 + 1) = v286;
                    v290 = &v289[v20];
                    *v290 = v282;
                    *(v290 + 1) = v283;
                    v291 = &v290[v20];
                    *v291 = v279;
                    *(v291 + 1) = v280;
                    v292 = &v291[v20];
                    *v292 = v276;
                    *(v292 + 1) = v277;
                    v293 = &v292[v20];
                    *v293 = v273;
                    *(v293 + 1) = v274;
                    v294 = &v293[v20];
                    *v294 = v270;
                    *(v294 + 1) = v271;
                    v295 = &v294[v20];
                    *v295 = v267;
                    *(v295 + 1) = v268;
                    v264 += 2;
                  }
                }

                v262 += 8;
                v263 -= 8 * v16;
                v74 = (v74 + 8 * v20);
              }

              while (v18 > v262);
            }

            goto LABEL_179;
          }

          if (a3 == 1)
          {
            if (v18)
            {
              for (jj = 0; jj < v18; jj += 8)
              {
                if (v17)
                {
                  v420 = 0;
                  for (kk = 0; kk < v17; kk += 8)
                  {
                    v423 = v73[v420 + 1];
                    v422 = &v73[v420].i8[v16];
                    v425 = *v422;
                    v426 = *(v422 + 1);
                    v424 = &v422[v16];
                    v428 = *v424;
                    v429 = *(v424 + 1);
                    v427 = &v424[v16];
                    v431 = *v427;
                    v432 = v427[1];
                    v430 = (v427 + v16);
                    v434 = *v430;
                    v435 = v430[1];
                    v433 = (v430 + v16);
                    v437 = *v433;
                    v438 = v433[1];
                    v436 = (v433 + v16);
                    v440 = *v436;
                    v441 = v436[1];
                    v439 = (v436 + v16);
                    v442 = v74[v420].i8;
                    v443 = *v439;
                    v444 = v439[1];
                    *v442 = v73[v420];
                    *(v442 + 1) = v423;
                    v445 = &v74[v420].i8[v20];
                    *v445 = v425;
                    *(v445 + 1) = v426;
                    v446 = &v445[v20];
                    *v446 = v428;
                    *(v446 + 1) = v429;
                    v447 = &v446[v20];
                    *v447 = v431;
                    *(v447 + 1) = v432;
                    v448 = &v447[v20];
                    *v448 = v434;
                    *(v448 + 1) = v435;
                    v449 = &v448[v20];
                    *v449 = v437;
                    *(v449 + 1) = v438;
                    v450 = &v449[v20];
                    *v450 = v440;
                    *(v450 + 1) = v441;
                    v451 = &v450[v20];
                    *v451 = v443;
                    *(v451 + 1) = v444;
                    v420 += 2;
                  }
                }

                v73 = (v73 + 8 * v16);
                v74 = (v74 + 8 * v20);
              }
            }

            goto LABEL_179;
          }

          if (a3 == 2)
          {
            if (v18)
            {
              v75 = 0;
              v76 = v73[-2].i64 + 4 * pixelBuffer;
              do
              {
                if (v17)
                {
                  v77 = 0;
                  v78 = v76;
                  v79 = v74;
                  do
                  {
                    v80 = vrev64q_s32(v78[1]);
                    v81 = (v78 + v16 + v16);
                    v83 = *v81;
                    v84 = v81[1];
                    v82 = (v81 + v16);
                    v86 = *v82;
                    v87 = v82[1];
                    v85 = (v82 + v16);
                    v89 = *v85;
                    v90 = v85[1];
                    v88 = (v85 + v16);
                    v92 = *v88;
                    v93 = v88[1];
                    v91 = (v88 + v16);
                    v95 = *v91;
                    v96 = v91[1];
                    v94 = (v91 + v16);
                    v97 = vextq_s8(v80, v80, 8uLL);
                    v98 = vrev64q_s32(*v78);
                    v99 = vextq_s8(v98, v98, 8uLL);
                    v100 = vrev64q_s32(*(&v78[1] + v16));
                    v101 = *v94;
                    v102 = v94[1];
                    v103 = vextq_s8(v100, v100, 8uLL);
                    v104 = vrev64q_s32(*(v78 + v16));
                    v105 = vextq_s8(v104, v104, 8uLL);
                    v106 = vrev64q_s32(v84);
                    v107 = vrev64q_s32(v83);
                    v108 = vextq_s8(v106, v106, 8uLL);
                    v109 = vextq_s8(v107, v107, 8uLL);
                    v110 = vrev64q_s32(v87);
                    v111 = vextq_s8(v110, v110, 8uLL);
                    v112 = vrev64q_s32(v86);
                    v113 = vextq_s8(v112, v112, 8uLL);
                    v114 = vrev64q_s32(v90);
                    v115 = vextq_s8(v114, v114, 8uLL);
                    v116 = vrev64q_s32(v89);
                    v117 = vextq_s8(v116, v116, 8uLL);
                    v118 = vrev64q_s32(v93);
                    v119 = vrev64q_s32(v92);
                    v120 = vextq_s8(v118, v118, 8uLL);
                    v121 = vrev64q_s32(v96);
                    v122 = (v79 + v20);
                    *v79 = v97;
                    v79[1] = v99;
                    v79 += 2;
                    v123 = vextq_s8(v121, v121, 8uLL);
                    v124 = vrev64q_s32(v95);
                    *v122 = v103;
                    v122[1] = v105;
                    v125 = (v122 + v20);
                    v126 = vextq_s8(v124, v124, 8uLL);
                    *v125 = v108;
                    v125[1] = v109;
                    v127 = (v125 + v20);
                    *v127 = v111;
                    v127[1] = v113;
                    v128 = (v127 + v20);
                    *v128 = v115;
                    v128[1] = v117;
                    v129 = (v128 + v20);
                    *v129 = v120;
                    v129[1] = vextq_s8(v119, v119, 8uLL);
                    v130 = (v129 + v20);
                    v131 = vrev64q_s32(v102);
                    v132 = vrev64q_s32(v101);
                    *v130 = v123;
                    v130[1] = v126;
                    v133 = (v130 + v20);
                    *v133 = vextq_s8(v131, v131, 8uLL);
                    v133[1] = vextq_s8(v132, v132, 8uLL);
                    v77 += 8;
                    v78 -= 2;
                  }

                  while (v17 > v77);
                }

                v75 += 8;
                v76 += 8 * v16;
                v74 = (v74 + 8 * v20);
              }

              while (v18 > v75);
            }

            goto LABEL_179;
          }
        }
      }

      v22 = FigSignalErrorAtGM();
      goto LABEL_180;
    }

    v56 = CVPixelBufferGetWidth(a1);
    v57 = CVPixelBufferGetHeight(a1);
    v58 = CVPixelBufferGetBytesPerRow(a1);
    v59 = CVPixelBufferGetPixelFormatType(a1);
    v60 = FigDepthBytesPerPixelForDepthFormat(v59);
    if (!v60)
    {
      FigDepthRotateBuffer_cold_4();
      return 0;
    }

    v61 = v60;
    v736 = v56;
    v62 = CVPixelBufferGetWidth(a2);
    v63 = CVPixelBufferGetHeight(a2);
    v64 = CVPixelBufferGetBytesPerRow(a2);
    if (CVPixelBufferLockBaseAddress(a1, 1uLL))
    {
      FigDepthRotateBuffer_cold_2();
      return 0;
    }

    v65 = a1;
    v66 = CVPixelBufferGetBaseAddress(a1);
    v67 = a2;
    v68 = v66;
    if (CVPixelBufferLockBaseAddress(v67, 0))
    {
      FigDepthRotateBuffer_cold_3();
      return 0;
    }

    v69 = CVPixelBufferGetBaseAddress(v67);
    if (a3 > 4)
    {
      if (a3 <= 6)
      {
        if (a3 == 5)
        {
          LODWORD(v70) = v58;
        }

        else
        {
          v70 = -v58;
          v68 = (v68 + (v57 - 1) * v58);
        }

        LODWORD(v58) = v61;
        if (!v63)
        {
          goto LABEL_69;
        }

        goto LABEL_65;
      }

      if (a3 != 7)
      {
        if (a3 == 8)
        {
          LODWORD(v70) = v58;
          v58 = -v61;
LABEL_44:
          v68 = (v68 + v61 * (v736 - 1));
          if (!v63)
          {
            goto LABEL_69;
          }

LABEL_65:
          for (mm = 0; mm != v63; ++mm)
          {
            v136 = v62;
            v137 = v69;
            for (nn = v68; v136; --v136)
            {
              *v137 = *nn;
              v137 = (v137 + v61);
              nn = (nn + v70);
            }

            v69 += v64;
            v68 = (v68 + v58);
          }

          goto LABEL_69;
        }

        goto LABEL_71;
      }

      v70 = -v58;
      v134 = v68 + (v57 - 1) * v58;
      v58 = -v61;
    }

    else
    {
      if (a3 <= 2)
      {
        if (a3 != 1)
        {
          if (a3 == 2)
          {
            v70 = -v61;
            goto LABEL_44;
          }

LABEL_71:
          FigSignalErrorAtGM();
          goto LABEL_69;
        }

        goto LABEL_39;
      }

      if (a3 != 3)
      {
        v68 = (v68 + (v57 - 1) * v58);
        v58 = -v58;
LABEL_39:
        LODWORD(v70) = v61;
        if (v63)
        {
          goto LABEL_65;
        }

        goto LABEL_69;
      }

      v70 = -v61;
      v134 = v68 + (v57 - 1) * v58;
      v58 = -v58;
    }

    v68 = (v134 + v61 * (v736 - 1));
    if (v63)
    {
      goto LABEL_65;
    }

LABEL_69:
    CVPixelBufferUnlockBaseAddress(v65, 1uLL);
    CVPixelBufferUnlockBaseAddress(v67, 0);
    return 0;
  }

  return FigSignalErrorAtGM();
}