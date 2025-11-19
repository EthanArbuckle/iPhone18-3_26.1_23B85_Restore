id sub_2460D0518(__n128 a1, __n128 a2, __n128 a3, uint64_t a4, const char *a5, uint64_t a6)
{
  v35 = a1.n128_f32[2];
  v38[9] = *MEMORY[0x277D85DE8];
  v6 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], a5, a6, a1.n128_f32[0], a1.n128_u64[0]);
  v38[0] = v6;
  v9 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v7, v8, a2.n128_f32[0]);
  v38[1] = v9;
  v12 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v10, v11, a3.n128_f32[0]);
  v38[2] = v12;
  v15 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v13, v14, v34);
  v38[3] = v15;
  v18 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v16, v17, a2.n128_f32[1]);
  v38[4] = v18;
  v21 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v19, v20, a3.n128_f32[1]);
  v38[5] = v21;
  v24 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v22, v23, v35);
  v38[6] = v24;
  v27 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v25, v26, a2.n128_f32[2]);
  v38[7] = v27;
  v30 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v28, v29, a3.n128_f32[2]);
  v38[8] = v30;
  v32 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v31, v38, 9);

  return v32;
}

void sub_2460D06F8(int a1, int *a2)
{
  v2 = *a2;
  if (*a2 == a1)
  {
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v3 = qword_27EE3F1E0;
    if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_2460CF000, v3, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Convert Coordinates was already in correct coordinates.", buf, 2u);
    }

    return;
  }

  if (v2 == 1)
  {
    v8 = a2[1] - 1;
    if (v8 >= 8)
    {
      v6 = a1;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v42 = qword_27EE3F1E0;
      if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2460CF000, v42, OS_LOG_TYPE_ERROR, "HEIC Serialization: Convert Coordinates unknown coordinate system!", buf, 2u);
      }

      v9 = -0.0;
    }

    else
    {
      v6 = a1;
      v9 = flt_24613FF60[v8] * -0.5;
    }

    v44 = __sincosf_stret(v9);
    cosval = v44.__cosval;
    _Q0 = vmulq_n_f32(xmmword_24613FA40, v44.__sinval);
    _S2 = _Q0.i32[1];
    _S4 = _Q0.i32[2];
    __asm { FMLS            S3, S4, V0.S[2] }

    v49 = _S3 + (cosval * cosval);
    v50 = vmuls_lane_f32(v44.__cosval, _Q0, 2);
    v51 = (v50 + (_Q0.f32[0] * _Q0.f32[1])) + (v50 + (_Q0.f32[0] * _Q0.f32[1]));
    v52 = vmuls_lane_f32(v44.__cosval, *_Q0.f32, 1);
    v53 = -(v52 - (_Q0.f32[0] * _Q0.f32[2])) - (v52 - (_Q0.f32[0] * _Q0.f32[2]));
    v54 = -(v50 - (_Q0.f32[0] * _Q0.f32[1])) - (v50 - (_Q0.f32[0] * _Q0.f32[1]));
    __asm { FMLA            S5, S2, V0.S[1] }

    v56 = (_S5 + (cosval * cosval)) - (_Q0.f32[0] * _Q0.f32[0]);
    __asm { FMLA            S18, S4, V0.S[1] }

    v58 = (v52 + (_Q0.f32[2] * _Q0.f32[0])) + (v52 + (_Q0.f32[2] * _Q0.f32[0]));
    __asm
    {
      FMLA            S19, S4, V0.S[1]
      FMLA            S1, S4, V0.S[2]
      FMLS            S1, S2, V0.S[1]
    }

    v62 = *(a2 + 5);
    v63 = *(a2 + 6);
    v64 = *(a2 + 7);
    v65 = *(a2 + 8);
    *(a2 + 5) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v62, v49), v63, v51), v64, v53), 0, v65);
    *(a2 + 6) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v62, v54), v63, v56), v64, _S18 + _S18), 0, v65);
    *(a2 + 7) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v62, v58), v63, _S19 + _S19), v64, _S1), 0, v65);
    *(a2 + 8) = vaddq_f32(v65, vmlaq_f32(vmlaq_f32(vmulq_f32(v62, 0), 0, v63), 0, v64));
    v66 = a2[1];
    v74 = 0;
    sub_2460D0BD4(v66, &v74, buf);
    v41 = v74;
    if (v74 == -90)
    {
      v41 = 90;
    }

    else if (v74 == 90)
    {
      v41 = -90;
    }

    goto LABEL_30;
  }

  if (!v2)
  {
    v5 = a2[1] - 1;
    if (v5 >= 8)
    {
      v6 = a1;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v11 = qword_27EE3F1E0;
      v12 = os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR);
      v7 = 0.0;
      if (v12)
      {
        *buf = 0;
        _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "HEIC Serialization: Convert Coordinates unknown coordinate system!", buf, 2u);
        v7 = 0.0;
      }
    }

    else
    {
      v6 = a1;
      v7 = flt_24613FF60[v5] * 0.5;
    }

    v14 = __sincosf_stret(v7);
    v13 = v14.__cosval;
    _Q0 = vmulq_n_f32(xmmword_24613FA40, v14.__sinval);
    _S2 = _Q0.i32[1];
    _S4 = _Q0.i32[2];
    __asm { FMLS            S3, S4, V0.S[2] }

    v23 = _S3 + (v13 * v13);
    v24 = vmuls_lane_f32(v14.__cosval, _Q0, 2);
    v25 = (v24 + (_Q0.f32[0] * _Q0.f32[1])) + (v24 + (_Q0.f32[0] * _Q0.f32[1]));
    v26 = vmuls_lane_f32(v14.__cosval, *_Q0.f32, 1);
    v27 = -(v26 - (_Q0.f32[0] * _Q0.f32[2])) - (v26 - (_Q0.f32[0] * _Q0.f32[2]));
    v28 = -(v24 - (_Q0.f32[0] * _Q0.f32[1])) - (v24 - (_Q0.f32[0] * _Q0.f32[1]));
    __asm { FMLA            S5, S2, V0.S[1] }

    v30 = (_S5 + (v13 * v13)) - (_Q0.f32[0] * _Q0.f32[0]);
    __asm { FMLA            S18, S4, V0.S[1] }

    v32 = (v26 + (_Q0.f32[2] * _Q0.f32[0])) + (v26 + (_Q0.f32[2] * _Q0.f32[0]));
    __asm
    {
      FMLA            S19, S4, V0.S[1]
      FMLA            S1, S4, V0.S[2]
      FMLS            S1, S2, V0.S[1]
    }

    v36 = *(a2 + 5);
    v37 = *(a2 + 6);
    v38 = *(a2 + 7);
    v39 = *(a2 + 8);
    *(a2 + 5) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, v23), v37, v25), v38, v27), 0, v39);
    *(a2 + 6) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, v28), v37, v30), v38, _S18 + _S18), 0, v39);
    *(a2 + 7) = vmlaq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v36, v32), v37, _S19 + _S19), v38, _S1), 0, v39);
    *(a2 + 8) = vaddq_f32(v39, vmlaq_f32(vmlaq_f32(vmulq_f32(v36, 0), 0, v37), 0, v38));
    v40 = a2[1];
    v74 = 0;
    sub_2460D0BD4(v40, &v74, buf);
    v41 = v74;
LABEL_30:
    ARAdjustIntrincisForOrientation();
    a2[10] = v67;
    *(a2 + 4) = v68;
    a2[14] = v69;
    *(a2 + 6) = v70;
    a2[18] = v71;
    *(a2 + 8) = v72;
    if (v41 == 90 || v41 == -90)
    {
      v73 = vcvtq_f64_f32(vcvt_f32_f64(*(a2 + 2)));
      *(a2 + 2) = vextq_s8(v73, v73, 8uLL);
    }

    *a2 = v6;
    return;
  }

  if (qword_27EE3F1E8 != -1)
  {
    dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
  }

  v10 = qword_27EE3F1E0;
  if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_2460CF000, v10, OS_LOG_TYPE_ERROR, "HEIC Serialization: Convert Coordinates unknown coordinate system!", buf, 2u);
  }
}

void sub_2460D0BD4(int a1, void *a2, void *a3)
{
  *a3 = 0;
  if (a1 <= 4)
  {
    if (a1 > 2)
    {
      *a2 = 180;
      return;
    }

    if (a1 == 1 || a1 == 2)
    {
      *a2 = 0;
      return;
    }

    goto LABEL_14;
  }

  if (a1 <= 6)
  {
    if (a1 != 5)
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a1 == 7)
  {
LABEL_13:
    *a2 = 90;
    return;
  }

  if (a1 == 8)
  {
LABEL_12:
    *a2 = -90;
    return;
  }

LABEL_14:
  v7 = v3;
  v8 = v4;
  if (qword_27EE3F1E8 != -1)
  {
    dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
  }

  v5 = qword_27EE3F1E0;
  if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
  {
    *v6 = 0;
    _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "HEIC Serialization: Convert Coordinates unknown coordinate system!", v6, 2u);
  }
}

uint64_t sub_2460D0CF4()
{
  qword_27EE3F1E0 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

void sub_2460D0D38(int a1, void *a2, __n128 *a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7)
{
  v33 = *MEMORY[0x277D85DE8];
  v10 = a2;
  *a3 = a4;
  a3[1] = a5;
  a3[2] = a6;
  a3[3] = a7;
  if (v10 && objc_msgSend_compare_options_(@"2.0.0", v9, v10, 64) == 1)
  {
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v11 = qword_27EE3F1E0;
    if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
    {
      v12 = v10;
      v13 = v11;
      buf = 136315138;
      *buf_4 = objc_msgSend_cStringUsingEncoding_(v10, v14, 1);
      _os_log_error_impl(&dword_2460CF000, v13, OS_LOG_TYPE_ERROR, "Will not bake orientation into camera transform since version %s isn't high enough!", &buf, 0xCu);
    }
  }

  else
  {
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v15 = qword_27EE3F1E0;
    if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_INFO))
    {
      buf = 67109120;
      *buf_4 = a1;
      _os_log_impl(&dword_2460CF000, v15, OS_LOG_TYPE_INFO, "HEIC Serialization: Updating in-place will bake orientation:%d into the camera extrinsics.", &buf, 8u);
    }

    buf = 0;
    v25 = 0;
    *buf_4 = a1;
    *&buf_4[4] = xmmword_24613FD40;
    v16 = *(MEMORY[0x277D860B0] + 16);
    v26 = *MEMORY[0x277D860B0];
    v27 = v16;
    v28 = *(MEMORY[0x277D860B0] + 32);
    v29 = a4;
    v30 = a5;
    v31 = a6;
    v32 = a7;
    sub_2460D06F8(1, &buf);
    v17 = v30;
    *a3 = v29;
    a3[1] = v17;
    v18 = v32;
    a3[2] = v31;
    a3[3] = v18;
  }
}

void sub_2460D0F50(void *a1)
{
  v2 = a1[6];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[7];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[8];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[9];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t sub_2460D0FB8(uint64_t a1, uint64_t a2)
{
  v379 = *MEMORY[0x277D85DE8];
  if (a1 && a2)
  {
    v4 = *(a1 + 72);
    v6 = objc_msgSend_objectForKeyedSubscript_(v4, v5, @"tag:apple.com,2023:ObjectCapture#BundleVersion");

    if (v6)
    {
      v8 = objc_msgSend_objectForKeyedSubscript_(v4, v7, @"tag:apple.com,2023:ObjectCapture#BundleVersion");
      v9 = objc_alloc(MEMORY[0x277CCACA8]);
      v11 = objc_msgSend_initWithData_encoding_(v9, v10, v8, 4);
      *(a2 + 408) = v11;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v12 = qword_27EE3F1E0;
      if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
      {
        v13 = v11;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = objc_msgSend_cStringUsingEncoding_(v13, v14, 1);
        _os_log_impl(&dword_2460CF000, v12, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read HEIC version: %s", &buf, 0xCu);
      }
    }

    else
    {
      *(a2 + 408) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v8 = qword_27EE3F1E0;
      if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v8, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read bundle version internal metadata.", &buf, 2u);
      }
    }

    if (!*a1)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v21 = qword_27EE3F1E0;
      if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, "HEIC Deserialization: Cannot read image field.", &buf, 2u);
      }

      v16 = 4294967294;
      goto LABEL_245;
    }

    *a2 = *a1;
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v17 = qword_27EE3F1E0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      LOWORD(buf) = 0;
      _os_log_impl(&dword_2460CF000, v17, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read image field.", &buf, 2u);
    }

    v18 = *(a1 + 8);
    *(a2 + 24) = v18;
    if (v18)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v19 = qword_27EE3F1E0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v20 = "HEIC Deserialization: Read depth data map.";
LABEL_37:
        _os_log_impl(&dword_2460CF000, v19, OS_LOG_TYPE_INFO, v20, &buf, 2u);
      }
    }

    else
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v19 = qword_27EE3F1E0;
      if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v20 = "HEIC Deserialization: Cannot read depth data map.";
        goto LABEL_37;
      }
    }

    v22 = *(a1 + 16);
    *(a2 + 32) = v22;
    if (v22)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v23 = qword_27EE3F1E0;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v24 = "HEIC Deserialization: Read depth confidence map.";
LABEL_47:
        _os_log_impl(&dword_2460CF000, v23, OS_LOG_TYPE_INFO, v24, &buf, 2u);
      }
    }

    else
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v23 = qword_27EE3F1E0;
      if (os_log_type_enabled(v23, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v24 = "HEIC Deserialization: Cannot read depth confidence map.";
        goto LABEL_47;
      }
    }

    v25 = *(a1 + 24);
    *(a2 + 40) = v25;
    if (v25)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v26 = qword_27EE3F1E0;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v27 = "HEIC Deserialization: Read object mask.";
LABEL_57:
        _os_log_impl(&dword_2460CF000, v26, OS_LOG_TYPE_INFO, v27, &buf, 2u);
      }
    }

    else
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v26 = qword_27EE3F1E0;
      if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v27 = "HEIC Deserialization: Did not read object mask.";
        goto LABEL_57;
      }
    }

    v28 = *(a1 + 32);
    *(a2 + 8) = v28;
    if (v28)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v29 = qword_27EE3F1E0;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v30 = "HEIC Deserialization: Read image properties metadata.";
LABEL_67:
        _os_log_impl(&dword_2460CF000, v29, OS_LOG_TYPE_INFO, v30, &buf, 2u);
      }
    }

    else
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v29 = qword_27EE3F1E0;
      if (os_log_type_enabled(v29, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v30 = "Cannot read image properties";
        goto LABEL_67;
      }
    }

    v31 = *(a2 + 8);
    v32 = 1;
    if (v31)
    {
      valuePtr = 1;
      *&buf = 0;
      if (CFDictionaryGetValueIfPresent(v31, *MEMORY[0x277CD3410], &buf))
      {
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(buf))
        {
          CFNumberGetValue(buf, kCFNumberIntType, &valuePtr);
          v32 = valuePtr;
        }
      }

      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v34 = qword_27EE3F1E0;
      if (os_log_type_enabled(v34, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v32;
        _os_log_impl(&dword_2460CF000, v34, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read orientation: %d", &buf, 8u);
      }
    }

    *(a2 + 16) = v32;
    v35 = *(a1 + 40);
    *(a2 + 448) = v35;
    if (v35)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v36 = qword_27EE3F1E0;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v37 = "HEIC Deserialization: Read XMP custom metadata.";
LABEL_86:
        _os_log_impl(&dword_2460CF000, v36, OS_LOG_TYPE_INFO, v37, &buf, 2u);
      }
    }

    else
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v36 = qword_27EE3F1E0;
      if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v37 = "HEIC Deserialization: Cannot read XMP custom metadata.";
        goto LABEL_86;
      }
    }

    v38 = *(a1 + 48);
    if (v38)
    {
      v39 = v38;
      if (objc_msgSend_count(v39, v40, v41) != 9)
      {
        v326 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v42, v43);
        v328 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v327, "simd_float3x3 rowMajorUnflattenToSimdFloat3x3(const CFArrayRef)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v326, v329, v328, @"SerializationInternal.m", 36, @"input data needs to have length 9.");
      }

      v44 = objc_msgSend_objectAtIndexedSubscript_(v39, v42, 0);
      objc_msgSend_floatValue(v44, v45, v46);
      v363 = v47;
      v49 = objc_msgSend_objectAtIndexedSubscript_(v39, v48, 1);
      objc_msgSend_floatValue(v49, v50, v51);
      v358 = v52;
      v54 = objc_msgSend_objectAtIndexedSubscript_(v39, v53, 2);
      objc_msgSend_floatValue(v54, v55, v56);
      v353 = v57;

      v59 = objc_msgSend_objectAtIndexedSubscript_(v39, v58, 3);
      objc_msgSend_floatValue(v59, v60, v61);
      v348 = v62;
      v64 = objc_msgSend_objectAtIndexedSubscript_(v39, v63, 4);
      objc_msgSend_floatValue(v64, v65, v66);
      v346 = v67;
      v69 = objc_msgSend_objectAtIndexedSubscript_(v39, v68, 5);
      objc_msgSend_floatValue(v69, v70, v71);
      v344 = v72;

      v74 = objc_msgSend_objectAtIndexedSubscript_(v39, v73, 6);
      objc_msgSend_floatValue(v74, v75, v76);
      v78 = v77;
      v80 = objc_msgSend_objectAtIndexedSubscript_(v39, v79, 7);
      objc_msgSend_floatValue(v80, v81, v82);
      v84 = v83;
      v86 = objc_msgSend_objectAtIndexedSubscript_(v39, v85, 8);

      objc_msgSend_floatValue(v86, v87, v88);
      v90 = v89;

      *(a2 + 152) = v78;
      *(a2 + 144) = __PAIR64__(v348, v363);
      *(a2 + 168) = v84;
      *(a2 + 160) = __PAIR64__(v346, v358);
      *(a2 + 184) = v90;
      *(a2 + 176) = __PAIR64__(v344, v353);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v91 = qword_27EE3F1E0;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v92 = "HEIC Deserialization: Read intrinsics data.";
LABEL_98:
        _os_log_impl(&dword_2460CF000, v91, OS_LOG_TYPE_INFO, v92, &buf, 2u);
      }
    }

    else
    {
      *(a2 + 152) = 0;
      *(a2 + 144) = 0;
      *(a2 + 168) = 0;
      *(a2 + 160) = 0;
      *(a2 + 184) = 0;
      *(a2 + 176) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v91 = qword_27EE3F1E0;
      if (os_log_type_enabled(v91, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v92 = "HEIC Deserialization: Cannot read camera intrinsics internal metadata.";
        goto LABEL_98;
      }
    }

    v93 = *(a1 + 56);
    if (v93 && (v94 = *(a1 + 64)) != 0)
    {
      v95 = v93;
      v96 = v94;
      if (objc_msgSend_count(v96, v97, v98) != 9)
      {
        v330 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v99, v100);
        v332 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v331, "simd_float4x4 transformRowMajorUnflattenToSimdFloat4x4(const CFArrayRef, const CFArrayRef)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v330, v333, v332, @"SerializationInternal.m", 49, @"rotation needs to have length 9.");
      }

      if (objc_msgSend_count(v95, v99, v100) != 3)
      {
        v334 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v101, v102);
        v336 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v335, "simd_float4x4 transformRowMajorUnflattenToSimdFloat4x4(const CFArrayRef, const CFArrayRef)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v334, v337, v336, @"SerializationInternal.m", 50, @"position needs to have length 3.");
      }

      v103 = objc_msgSend_objectAtIndexedSubscript_(v96, v101, 0);
      objc_msgSend_floatValue(v103, v104, v105);
      v364 = v106;
      v108 = objc_msgSend_objectAtIndexedSubscript_(v96, v107, 1);
      objc_msgSend_floatValue(v108, v109, v110);
      v359 = v111;
      v113 = objc_msgSend_objectAtIndexedSubscript_(v96, v112, 2);
      objc_msgSend_floatValue(v113, v114, v115);
      v354 = v116;
      v118 = objc_msgSend_objectAtIndexedSubscript_(v95, v117, 0);
      objc_msgSend_floatValue(v118, v119, v120);
      v349 = v121;

      v123 = objc_msgSend_objectAtIndexedSubscript_(v96, v122, 3);
      objc_msgSend_floatValue(v123, v124, v125);
      v347 = v126;
      v128 = objc_msgSend_objectAtIndexedSubscript_(v96, v127, 4);
      objc_msgSend_floatValue(v128, v129, v130);
      v345 = v131;
      v133 = objc_msgSend_objectAtIndexedSubscript_(v96, v132, 5);
      objc_msgSend_floatValue(v133, v134, v135);
      v343 = v136;
      v138 = objc_msgSend_objectAtIndexedSubscript_(v95, v137, 1);
      objc_msgSend_floatValue(v138, v139, v140);
      v342 = v141;

      v143 = objc_msgSend_objectAtIndexedSubscript_(v96, v142, 6);
      objc_msgSend_floatValue(v143, v144, v145);
      v341 = v146;
      v148 = objc_msgSend_objectAtIndexedSubscript_(v96, v147, 7);
      objc_msgSend_floatValue(v148, v149, v150);
      v340 = v151;
      v153 = objc_msgSend_objectAtIndexedSubscript_(v96, v152, 8);

      objc_msgSend_floatValue(v153, v154, v155);
      v339 = v156;
      v158 = objc_msgSend_objectAtIndexedSubscript_(v95, v157, 2);
      objc_msgSend_floatValue(v158, v159, v160);
      v338 = v161;

      v162 = v364;
      v162.i32[1] = v359;
      v163.i64[0] = v354;
      v163.i64[1] = __PAIR64__(v349, v354);
      v164 = v347;
      v164.i32[1] = v345;
      v165.i64[0] = v343;
      v165.i64[1] = __PAIR64__(v342, v343);
      v166 = v341;
      v166.i32[1] = v340;
      v167.i64[0] = v339;
      v167.i64[1] = __PAIR64__(v338, v339);
      v168 = vzip1q_s32(v162, v166);
      v169 = vzip2q_s32(v163, v167);
      v170 = vzip1q_s32(v164, 0);
      v171 = vzip2q_s32(v165, xmmword_24613FA50);
      *(a2 + 64) = vzip1q_s32(v168, v170);
      *(a2 + 80) = vzip2q_s32(v168, v170);
      *(a2 + 96) = vzip1q_s32(v169, v171);
      *(a2 + 112) = vzip2q_s32(v169, v171);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v172 = qword_27EE3F1E0;
      if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v173 = "HEIC Deserialization: Read camera transform data.";
LABEL_113:
        _os_log_impl(&dword_2460CF000, v172, OS_LOG_TYPE_INFO, v173, &buf, 2u);
      }
    }

    else
    {
      *(a2 + 96) = 0u;
      *(a2 + 112) = 0u;
      *(a2 + 64) = 0u;
      *(a2 + 80) = 0u;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v172 = qword_27EE3F1E0;
      if (os_log_type_enabled(v172, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v173 = "HEIC Deserialization: Cannot read camera transform internal metadata.";
        goto LABEL_113;
      }
    }

    if (objc_msgSend_compare_options_(@"2.0.0", v174, *(a2 + 408), 64) != 1)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v176 = qword_27EE3F1E0;
      if (os_log_type_enabled(v176, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v32;
        _os_log_impl(&dword_2460CF000, v176, OS_LOG_TYPE_INFO, "HEIC Deserialization: Unbaking orientation=%d from camera matrices...", &buf, 8u);
      }

      v177 = *a2;
      if (*a2)
      {
        Width = CVPixelBufferGetWidth(*a2);
        Height = CVPixelBufferGetHeight(v177);
      }

      else
      {
        Height = 0.0;
        Width = 0.0;
      }

      v180 = *(a2 + 8);
      valuePtr = 1;
      *&buf = 0;
      if (v180)
      {
        if (CFDictionaryGetValueIfPresent(v180, *MEMORY[0x277CD3410], &buf))
        {
          v181 = CFNumberGetTypeID();
          if (v181 == CFGetTypeID(buf))
          {
            CFNumberGetValue(buf, kCFNumberIntType, &valuePtr);
            if ((valuePtr - 5) >= 4)
            {
              v182 = Height;
            }

            else
            {
              v182 = Width;
            }

            if ((valuePtr - 5) < 4)
            {
              Width = Height;
            }

            Height = v182;
          }
        }
      }

      *(&buf + 1) = Width;
      v370 = Height;
      v183 = *(a2 + 160);
      v372 = *(a2 + 144);
      v373 = v183;
      v184 = *(a2 + 64);
      v185 = *(a2 + 80);
      v374 = *(a2 + 176);
      v375 = v184;
      v186 = *(a2 + 96);
      v378 = *(a2 + 112);
      v371 = 0;
      LODWORD(buf) = 1;
      DWORD1(buf) = v32;
      v376 = v185;
      v377 = v186;
      sub_2460D06F8(0, &buf);
      v187 = v373;
      *(a2 + 144) = v372;
      *(a2 + 160) = v187;
      *(a2 + 176) = v374;
      v188 = vmulq_f32(v375, 0);
      __asm { FMOV            V6.4S, #-1.0 }

      v194 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v188, _Q6, v376), vdupq_n_s32(0xB3BBBD2E), v377), 0, v378);
      v195 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v188, vdupq_n_s32(0x33BBBD2Eu), v376), _Q6, v377), 0, v378);
      v196 = vaddq_f32(v378, vmlaq_f32(vmlaq_f32(v188, 0, v376), 0, v377));
      *(a2 + 64) = vmlaq_f32(vmlaq_f32(vmlaq_f32(v375, 0, v376), 0, v377), 0, v378);
      *(a2 + 80) = v194;
      *(a2 + 96) = v195;
      *(a2 + 112) = v196;
    }

    v197 = objc_msgSend_objectForKeyedSubscript_(v4, v175, @"tag:apple.com,2023:ObjectCapture#CameraTrackingState");
    v198 = v197 == 0;

    if (v198)
    {
      *(a2 + 128) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v200 = qword_27EE3F1E0;
      if (os_log_type_enabled(v200, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v200, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read camera tracking state internal metadata.", &buf, 2u);
      }
    }

    else
    {
      v200 = objc_msgSend_objectForKeyedSubscript_(v4, v199, @"tag:apple.com,2023:ObjectCapture#CameraTrackingState");
      objc_msgSend_getBytes_length_(v200, v201, a2 + 128, 4);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v202 = qword_27EE3F1E0;
      if (os_log_type_enabled(v202, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v202, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read flattened camera tracking state field.", &buf, 2u);
      }
    }

    v204 = objc_msgSend_objectForKeyedSubscript_(v4, v203, @"tag:apple.com,2023:ObjectCapture#CameraCalibrationData");
    v205 = v204 == 0;

    if (v205)
    {
      *(a2 + 192) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v207 = qword_27EE3F1E0;
      if (os_log_type_enabled(v207, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v207, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read camera.calibrationData field.", &buf, 2u);
      }
    }

    else
    {
      v207 = objc_msgSend_objectForKeyedSubscript_(v4, v206, @"tag:apple.com,2023:ObjectCapture#CameraCalibrationData");
      v208 = MEMORY[0x277CBEB98];
      v209 = objc_opt_class();
      v210 = objc_opt_class();
      v211 = objc_opt_class();
      v212 = objc_opt_class();
      v213 = objc_opt_class();
      v215 = objc_msgSend_setWithObjects_(v208, v214, v209, v210, v211, v212, v213, 0);
      v217 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v216, v215, v207, 0);
      *(a2 + 192) = v217;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v218 = qword_27EE3F1E0;
      if (os_log_type_enabled(v218, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v218, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read camera.calibrationData field.", &buf, 2u);
      }
    }

    v220 = objc_msgSend_objectForKeyedSubscript_(v4, v219, @"tag:apple.com,2023:ObjectCapture#RawFeaturePoints");
    v221 = v220 == 0;

    if (v221)
    {
      *(a2 + 400) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v224 = qword_27EE3F1E0;
      if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v225 = "HEIC Deserialization: Cannot read raw feature points field.";
        goto LABEL_161;
      }
    }

    else
    {
      v223 = objc_msgSend_objectForKeyedSubscript_(v4, v222, @"tag:apple.com,2023:ObjectCapture#RawFeaturePoints");
      *(a2 + 400) = v223;

      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v224 = qword_27EE3F1E0;
      if (os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v225 = "HEIC Deserialization: Read raw feature points field.";
LABEL_161:
        _os_log_impl(&dword_2460CF000, v224, OS_LOG_TYPE_INFO, v225, &buf, 2u);
      }
    }

    v227 = objc_msgSend_objectForKeyedSubscript_(v4, v226, @"tag:apple.com,2023:ObjectCapture#PointCloudData");
    v228 = v227 == 0;

    if (v228)
    {
      *(a2 + 48) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v231 = qword_27EE3F1E0;
      if (os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v232 = "HEIC Deserialization: Cannot read LiDAR point cloud internal metadata.";
        goto LABEL_171;
      }
    }

    else
    {
      v230 = objc_msgSend_objectForKeyedSubscript_(v4, v229, @"tag:apple.com,2023:ObjectCapture#PointCloudData");
      *(a2 + 48) = OCNonModularSPI_NSData_CreateDepthPointCloudDataBuffer(v230);

      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v231 = qword_27EE3F1E0;
      if (os_log_type_enabled(v231, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v232 = "HEIC Deserialization: Read point cloud data field.";
LABEL_171:
        _os_log_impl(&dword_2460CF000, v231, OS_LOG_TYPE_INFO, v232, &buf, 2u);
      }
    }

    v235 = objc_msgSend_objectForKeyedSubscript_(v4, v233, @"tag:apple.com,2023:ObjectCapture#ObjectTransform");
    v236 = MEMORY[0x277D860B8];
    if (!v235 || (objc_msgSend_objectForKeyedSubscript_(v4, v234, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox"), v237 = objc_claimAutoreleasedReturnValue(), v238 = v237 == 0, v237, v235, v238))
    {
      *(a2 + 272) = 0u;
      *(a2 + 288) = 0u;
      *(a2 + 304) = 0u;
      *(a2 + 320) = xmmword_24613FA50;
      *(a2 + 336) = 0u;
      *(a2 + 352) = 0u;
      *(a2 + 368) = 0u;
      *(a2 + 384) = 0u;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v259 = qword_27EE3F1E0;
      if (os_log_type_enabled(v259, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v260 = "HEIC Deserialization: Cannot read object internal metadata.";
        goto LABEL_182;
      }
    }

    else
    {
      v240 = objc_msgSend_objectForKeyedSubscript_(v4, v239, @"tag:apple.com,2023:ObjectCapture#ObjectTransform");
      v350 = *v236;
      v355 = v236[1];
      v360 = v236[2];
      v365 = v236[3];
      v241 = v240;
      v244 = objc_msgSend_bytes(v240, v242, v243);
      *&v245 = *v244;
      v351 = vextq_s8(v350, v350, 8uLL);
      HIDWORD(v245) = v351.i32[1];
      DWORD2(v245) = *(v244 + 8);
      *&v246 = *(v244 + 12);
      v356 = vextq_s8(v355, v355, 8uLL);
      HIDWORD(v246) = v356.i32[1];
      DWORD2(v246) = *(v244 + 20);
      *&v247 = *(v244 + 24);
      v361 = vextq_s8(v360, v360, 8uLL);
      HIDWORD(v247) = v361.i32[1];
      DWORD2(v247) = *(v244 + 32);
      *&v248 = *(v244 + 36);
      v366 = vextq_s8(v365, v365, 8uLL);
      HIDWORD(v248) = v366.i32[1];
      DWORD2(v248) = *(v244 + 44);
      *(a2 + 272) = v245;
      *(a2 + 288) = v246;
      *(a2 + 304) = v247;
      *(a2 + 320) = v248;

      v250 = objc_msgSend_objectForKeyedSubscript_(v4, v249, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");
      v251 = v250;
      v254 = objc_msgSend_bytes(v250, v252, v253);
      *&v255 = *v254;
      HIDWORD(v255) = v351.i32[1];
      DWORD2(v255) = *(v254 + 8);
      *&v256 = *(v254 + 12);
      HIDWORD(v256) = v356.i32[1];
      DWORD2(v256) = *(v254 + 20);
      *&v257 = *(v254 + 24);
      HIDWORD(v257) = v361.i32[1];
      DWORD2(v257) = *(v254 + 32);
      *&v258 = *(v254 + 36);
      HIDWORD(v258) = v366.i32[1];
      DWORD2(v258) = *(v254 + 44);
      *(a2 + 336) = v255;
      *(a2 + 352) = v256;
      *(a2 + 368) = v257;
      *(a2 + 384) = v258;

      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v259 = qword_27EE3F1E0;
      if (os_log_type_enabled(v259, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        v260 = "HEIC Deserialization: Read object field.";
LABEL_182:
        _os_log_impl(&dword_2460CF000, v259, OS_LOG_TYPE_INFO, v260, &buf, 2u);
      }
    }

    v262 = objc_msgSend_objectForKeyedSubscript_(v4, v261, @"tag:apple.com,2023:ObjectCapture#SegmentID");
    v263 = v262 == 0;

    if (v263)
    {
      *(a2 + 416) = -1;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v265 = qword_27EE3F1E0;
      if (os_log_type_enabled(v265, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v265, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read segment ID internal metadata.", &buf, 2u);
      }
    }

    else
    {
      v265 = objc_msgSend_objectForKeyedSubscript_(v4, v264, @"tag:apple.com,2023:ObjectCapture#SegmentID");
      objc_msgSend_getBytes_length_(v265, v266, a2 + 416, 4);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v267 = qword_27EE3F1E0;
      if (os_log_type_enabled(v267, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v267, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read segment ID.", &buf, 2u);
      }
    }

    v269 = objc_msgSend_objectForKeyedSubscript_(v4, v268, @"tag:apple.com,2024:ObjectCapture#SessionUUID");
    v270 = v269 == 0;

    if (v270)
    {
      *(a2 + 424) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v272 = qword_27EE3F1E0;
      if (os_log_type_enabled(v272, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v272, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read session UUID internal metadata.", &buf, 2u);
      }
    }

    else
    {
      v272 = objc_msgSend_objectForKeyedSubscript_(v4, v271, @"tag:apple.com,2024:ObjectCapture#SessionUUID");
      v273 = objc_alloc(MEMORY[0x277CCACA8]);
      v275 = objc_msgSend_initWithData_encoding_(v273, v274, v272, 4);
      *(a2 + 424) = v275;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v276 = qword_27EE3F1E0;
      if (os_log_type_enabled(v276, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v276, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read session UUID.", &buf, 2u);
      }
    }

    v278 = objc_msgSend_objectForKeyedSubscript_(v4, v277, @"tag:apple.com,2024:ObjectCapture#CaptureMode");
    v279 = v278 == 0;

    if (v279)
    {
      *(a2 + 432) = -1;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v281 = qword_27EE3F1E0;
      if (os_log_type_enabled(v281, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v281, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read session capture mode internal metadata.", &buf, 2u);
      }
    }

    else
    {
      v281 = objc_msgSend_objectForKeyedSubscript_(v4, v280, @"tag:apple.com,2024:ObjectCapture#CaptureMode");
      objc_msgSend_getBytes_length_(v281, v282, a2 + 432, 4);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v283 = qword_27EE3F1E0;
      if (os_log_type_enabled(v283, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v283, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read session capture mode.", &buf, 2u);
      }
    }

    v285 = objc_msgSend_objectForKeyedSubscript_(v4, v284, @"tag:apple.com,2023:ObjectCapture#Feedback");
    v286 = v285 == 0;

    if (v286)
    {
      *(a2 + 436) = -1;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v288 = qword_27EE3F1E0;
      if (os_log_type_enabled(v288, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v288, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read feedback internal metadata.", &buf, 2u);
      }
    }

    else
    {
      v288 = objc_msgSend_objectForKeyedSubscript_(v4, v287, @"tag:apple.com,2023:ObjectCapture#Feedback");
      objc_msgSend_getBytes_length_(v288, v289, a2 + 436, 4);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v290 = qword_27EE3F1E0;
      if (os_log_type_enabled(v290, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v290, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read feedback.", &buf, 2u);
      }
    }

    v292 = objc_msgSend_objectForKeyedSubscript_(v4, v291, @"tag:apple.com,2023:ObjectCapture#WideToDepthCameraTransform");
    v293 = v292 == 0;

    if (v293)
    {
      v306 = v236[1];
      *(a2 + 208) = *v236;
      *(a2 + 224) = v306;
      v307 = v236[3];
      *(a2 + 240) = v236[2];
      *(a2 + 256) = v307;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v304 = qword_27EE3F1E0;
      if (!os_log_type_enabled(v304, OS_LOG_TYPE_INFO))
      {
        goto LABEL_233;
      }

      LOWORD(buf) = 0;
      v305 = "HEIC Deserialization: Cannot read camera wide to LiDAR camera transform internal metadata.";
    }

    else
    {
      v295 = objc_msgSend_objectForKeyedSubscript_(v4, v294, @"tag:apple.com,2023:ObjectCapture#WideToDepthCameraTransform");
      v352 = *v236;
      v357 = v236[1];
      v362 = v236[2];
      v367 = v236[3];
      v296 = v295;
      v299 = objc_msgSend_bytes(v295, v297, v298);
      *&v300 = *v299;
      HIDWORD(v300) = vextq_s8(v352, v352, 8uLL).i32[1];
      DWORD2(v300) = *(v299 + 8);
      *&v301 = *(v299 + 12);
      HIDWORD(v301) = vextq_s8(v357, v357, 8uLL).i32[1];
      DWORD2(v301) = *(v299 + 20);
      *&v302 = *(v299 + 24);
      HIDWORD(v302) = vextq_s8(v362, v362, 8uLL).i32[1];
      DWORD2(v302) = *(v299 + 32);
      *&v303 = *(v299 + 36);
      HIDWORD(v303) = vextq_s8(v367, v367, 8uLL).i32[1];
      DWORD2(v303) = *(v299 + 44);
      *(a2 + 208) = v300;
      *(a2 + 224) = v301;
      *(a2 + 240) = v302;
      *(a2 + 256) = v303;

      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v304 = qword_27EE3F1E0;
      if (!os_log_type_enabled(v304, OS_LOG_TYPE_INFO))
      {
        goto LABEL_233;
      }

      LOWORD(buf) = 0;
      v305 = "HEIC Deserialization: Read camera.wideToDepthTransform field.";
    }

    _os_log_impl(&dword_2460CF000, v304, OS_LOG_TYPE_INFO, v305, &buf, 2u);
LABEL_233:

    v309 = objc_msgSend_objectForKeyedSubscript_(v4, v308, @"tag:apple.com,2023:ObjectCapture#TemporalDepthPointClouds");
    v310 = v309 == 0;

    if (v310)
    {
      *(a2 + 440) = 0;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v324 = qword_27EE3F1E0;
      if (os_log_type_enabled(v324, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v324, OS_LOG_TYPE_INFO, "HEIC Deserialization: Cannot read temporal LiDAR point clouds internal metadata.", &buf, 2u);
      }
    }

    else
    {
      v311 = MEMORY[0x277CBEB98];
      v312 = objc_opt_class();
      v313 = objc_opt_class();
      v314 = objc_opt_class();
      v315 = objc_opt_class();
      v316 = objc_opt_class();
      v318 = objc_msgSend_setWithObjects_(v311, v317, v312, v313, v314, v315, v316, 0);
      v320 = objc_msgSend_objectForKeyedSubscript_(v4, v319, @"tag:apple.com,2023:ObjectCapture#TemporalDepthPointClouds");
      v322 = objc_msgSend_unarchivedObjectOfClasses_fromData_error_(MEMORY[0x277CCAAC8], v321, v318, v320, 0);
      *(a2 + 440) = v322;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v323 = qword_27EE3F1E0;
      if (os_log_type_enabled(v323, OS_LOG_TYPE_INFO))
      {
        LOWORD(buf) = 0;
        _os_log_impl(&dword_2460CF000, v323, OS_LOG_TYPE_INFO, "HEIC Deserialization: Read temporal LiDAR point clouds.", &buf, 2u);
      }
    }

    v16 = 0;
LABEL_245:

    return v16;
  }

  if (qword_27EE3F1E8 != -1)
  {
    dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
  }

  v15 = qword_27EE3F1E0;
  if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
  {
    LOWORD(buf) = 0;
    _os_log_error_impl(&dword_2460CF000, v15, OS_LOG_TYPE_ERROR, "HEIC Deserialization: Invalid imageData or imageDataInternal.", &buf, 2u);
  }

  return 4294967294;
}

void sub_2460D2FB0(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v3 = objc_begin_catch(exception_object);
    sub_2460D3060(v2);

    objc_end_catch();
    JUMPOUT(0x2460D29F0);
  }

  _Unwind_Resume(exception_object);
}

void sub_2460D3060(void *a1)
{
  v2 = a1[24];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[51];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[53];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[55];
  if (v5)
  {

    CFRelease(v5);
  }
}

uint64_t OCNonModularSPI_ADJasperPointCloud_CreateDataBuffer(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (!v1)
  {
    goto LABEL_11;
  }

  if (objc_msgSend_dataBuffer(v1, v2, v3))
  {
    v7 = objc_msgSend_dataBuffer(v4, v5, v6);
    v8 = CVBufferRetain(v7);
    goto LABEL_12;
  }

  v9 = objc_msgSend_length(v4, v5, v6);
  v11 = objc_msgSend_requiredStorageBytesForLength_(MEMORY[0x277CED0A0], v10, v9);
  cf = 0;
  if (sub_2460D324C(1785950320, v11, &cf))
  {
LABEL_11:
    v8 = 0;
    goto LABEL_12;
  }

  if (CVDataBufferCreateWithIOSurface())
  {
    CFRelease(cf);
    goto LABEL_11;
  }

  CFRelease(cf);
  if ((objc_msgSend_prepareDataBuffer_forLength_(MEMORY[0x277CED0A0], v12, 0, v9) & 1) == 0)
  {
    CVBufferRelease(0);
    goto LABEL_11;
  }

  v13 = objc_alloc(MEMORY[0x277CED0E8]);
  v15 = objc_msgSend_initWithDataBuffer_(v13, v14, 0);
  v17 = v15;
  if (v15)
  {
    objc_msgSend_replacePointsInRange_withPointsFrom_range_(v15, v16, 0, v9, v4, 0, v9);
    v8 = objc_msgSend_dataBuffer(v17, v18, v19);
  }

  else
  {
    CVBufferRelease(0);
    v8 = 0;
  }

LABEL_12:

  return v8;
}

uint64_t sub_2460D324C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    operator new();
  }

  return 4294960635;
}

id OCNonModularSPI_ADJasperPointCloud_CreatePointCloud(void *a1)
{
  if (a1)
  {
    v2 = a1;
    v3 = objc_alloc(MEMORY[0x277CED0A0]);
    a1 = objc_msgSend_initWithDataBuffer_(v3, v4, v2);
    v1 = vars8;
  }

  return a1;
}

uint64_t *sub_2460D36E4(uint64_t *a1)
{
  if (a1[2])
  {
    v2 = a1[1];
    v3 = *(*a1 + 8);
    v4 = *v2;
    *(v4 + 8) = v3;
    *v3 = v4;
    a1[2] = 0;
    if (v2 != a1)
    {
      do
      {
        v5 = v2[1];
        operator delete(v2);
        v2 = v5;
      }

      while (v5 != a1);
    }
  }

  return a1;
}

void *sub_2460D3744(void *result)
{
  if (result[2])
  {
    v1 = result;
    result = result[1];
    v2 = *(*v1 + 8);
    v3 = *result;
    *(v3 + 8) = v2;
    *v2 = v3;
    v1[2] = 0;
    if (result != v1)
    {
      do
      {
        v4 = result[1];
        operator delete(result);
        result = v4;
      }

      while (v4 != v1);
    }
  }

  return result;
}

uint64_t *sub_2460D37A8(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v10 = a2[2];
          }

          else
          {
            v10 = v2[1];
            v11 = *v10;
            v2[1] = *v10;
            v12 = v2;
            if (v11)
            {
              v11[2] = v2;
              v3 = v2[2];
              v12 = *v3;
            }

            v10[2] = v3;
            v3[v12 != v2] = v10;
            *v10 = v2;
            v2[2] = v10;
            v3 = v10[2];
            v4 = *v3;
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          *(v4 + 16) = v19;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v13 = *v2;
          if (*v2 == a2)
          {
            v14 = v13[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v3[*v3 != v2] = v13;
            v13[1] = v2;
            v13[2] = v3;
            v2[2] = v13;
            v3 = v13[2];
          }

          else
          {
            v13 = a2[2];
          }

          *(v13 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t *sub_2460D393C(void *a1, int a2)
{
  v2 = a1[1];
  if (!v2)
  {
    goto LABEL_22;
  }

  v3 = vcnt_s8(v2);
  v3.i16[0] = vaddlv_u8(v3);
  if (v3.u32[0] > 1uLL)
  {
    v4 = a2;
    if (v2 <= a2)
    {
      v4 = a2 % v2;
    }
  }

  else
  {
    v4 = (v2 - 1) & a2;
  }

  v5 = *(*a1 + 8 * v4);
  if (!v5 || (v6 = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = v6[1];
      if (v7 == a2)
      {
        if (*(v6 + 4) == a2)
        {
          return v6;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      v6 = *v6;
      if (!v6)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = v6[1];
    if (v8 == a2)
    {
      break;
    }

    if (v8 >= v2)
    {
      v8 %= v2;
    }

    if (v8 != v4)
    {
      goto LABEL_22;
    }

LABEL_17:
    v6 = *v6;
    if (!v6)
    {
      goto LABEL_22;
    }
  }

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

void sub_2460D3C34(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  sub_2460D3F94(va);
  _Unwind_Resume(a1);
}

void sub_2460D3C48(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 3;
    v9 = (v7 >> 3) + 1;
    if (v9 >> 61)
    {
      sub_2460D368C();
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

      sub_2460D368C();
    }

    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = (v4 + 1);
  }

  *(a1 + 8) = v5;
}

void sub_2460D3D4C(void *a1)
{
  if (a1)
  {
    sub_2460D3D4C(*a1);
    sub_2460D3D4C(a1[1]);

    operator delete(a1);
  }
}

uint64_t sub_2460D3D9C(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v5 = *v2;
      v6 = v2[3];
      if (v6)
      {
        v2[4] = v6;
        operator delete(v6);
      }

      operator delete(v2);
      v2 = v5;
    }

    while (v5);
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  return a1;
}

void sub_2460D3E08(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2460D368C();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void **sub_2460D3F94(void **a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    if (*(v1 + 16) == 1)
    {
      v4 = v2[3];
      if (v4)
      {
        v2[4] = v4;
        v5 = v2;
        operator delete(v4);
        v2 = v5;
      }
    }

    operator delete(v2);
    return v3;
  }

  return v1;
}

uint64_t OCObjectContourGetCenterOfMass(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (a1 && a2 >= 3 && a3)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2460D368C();
  }

  return 4294967294;
}

uint64_t OCObjectContourGetNearestPoints(uint64_t a1, uint64_t a2, void *a3, unint64_t *a4, float32x2_t a5)
{
  v5 = 4294967294;
  if (!a1 || !a2 || !a3 || !a4)
  {
    return v5;
  }

  v6 = 0;
  v7 = 0;
  v8 = 3.4028e38;
  do
  {
    v9 = vsub_f32(*(a1 + 8 * v6), a5);
    v10 = sqrtf(vaddv_f32(vmul_f32(v9, v9)));
    if (vabds_f32(v8, v10) < 1.0e-10)
    {
      v11 = v7 + 1;
      if (v7 + 1 <= 1)
      {
        v12 = &a3[v7];
        goto LABEL_6;
      }

      goto LABEL_7;
    }

    if (v10 < v8)
    {
      v12 = a3;
      v8 = v10;
      v11 = 1;
LABEL_6:
      *v12 = v6;
LABEL_7:
      v7 = v11;
    }

    ++v6;
  }

  while (a2 != v6);
  v5 = 0;
  if (v7 >= 2)
  {
    v7 = 2;
  }

  *a4 = v7;
  return v5;
}

BOOL OCObjectContourIsPointInsideObjectContour(uint64_t a1, unint64_t a2, float32x2_t a3)
{
  v3 = 0;
  if (a1 && a2 >= 3)
  {
    v4 = 0;
    while (1)
    {
      v3 = a2 == v4;
      if (a2 == v4)
      {
        break;
      }

      if (a2 - 1 == v4)
      {
        v5 = 0;
      }

      else
      {
        v5 = v4 + 1;
      }

      v6 = *(a1 + 8 * v4++);
      v7 = vsub_f32(v6, a3);
      v8 = vsub_f32(*(a1 + 8 * v5), a3);
      if (((-v7.f32[1] * v8.f32[0]) + (v7.f32[0] * v8.f32[1])) < 1.0e-10)
      {
        return 0;
      }
    }
  }

  return v3;
}

uint64_t OCCreateObjectContour(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  result = 4294967294;
  if (a1 && a2 >= 3 && a3 && a4)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    sub_2460D368C();
  }

  return result;
}

void sub_2460D4F78(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p, __int128 a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_2460D36E4(&a20);
  sub_2460D36E4(&a16);
  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t sub_2460D502C(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (!atomic_fetch_add(&v1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
    {
      v2 = result;
      (v1->__on_zero_shared)(v1);
      std::__shared_weak_count::__release_weak(v1);
      return v2;
    }
  }

  return result;
}

uint64_t sub_2460D509C(uint64_t a1)
{
  result = *(a1 + 56);
  *(a1 + 56) = 0;
  if (result)
  {
    JUMPOUT(0x24C1995D0);
  }

  return result;
}

void sub_2460D50C4(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858EB980;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_2460D513C(uint64_t a1)
{
  result = *(a1 + 56);
  *(a1 + 56) = 0;
  if (result)
  {
    JUMPOUT(0x24C1995D0);
  }

  return result;
}

void sub_2460D5164(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858EB948;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_2460D51DC(void *a1)
{
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x24C1995D0](v2, 0x1000C40B166FFE6);
  }

  v3 = a1[12];
  a1[12] = 0;
  if (v3)
  {
    MEMORY[0x24C1995D0](v3, 0x1000C40FA9F20B1);
  }

  result = a1[11];
  a1[11] = 0;
  if (result)
  {

    JUMPOUT(0x24C1995D0);
  }

  return result;
}

void sub_2460D526C(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858EB910;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

void sub_2460D52E4(void *a1)
{
  v2 = a1[13];
  a1[13] = 0;
  if (v2)
  {
    MEMORY[0x24C1995D0](v2, 0x1000C408F47704FLL);
  }

  v3 = a1[8];
  v4 = a1[9];
  a1[12] = 0;
  v5 = v4 - v3;
  if (v5 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = a1[9];
      v3 = (a1[8] + 8);
      a1[8] = v3;
      v5 = v4 - v3;
    }

    while (v5 > 2);
  }

  if (v5 == 1)
  {
    v6 = 25;
    goto LABEL_9;
  }

  if (v5 == 2)
  {
    v6 = 51;
LABEL_9:
    a1[11] = v6;
  }

  if (v3 != v4)
  {
    do
    {
      v7 = *v3++;
      operator delete(v7);
    }

    while (v3 != v4);
    v9 = a1[8];
    v8 = a1[9];
    if (v8 != v9)
    {
      a1[9] = v8 + ((v9 - v8 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v10 = a1[7];
  if (v10)
  {

    operator delete(v10);
  }
}

void sub_2460D53E8(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858EB8D8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_2460D545C(void *a1, uint64_t a2, float32x4_t *a3, float32x2_t *a4, float32x4_t *a5, uint64_t a6, void *a7, uint64_t a8)
{
  if (a7)
  {
    *a7 = 0;
  }

  v11 = a1[20];
  v12 = *(v11 + 48);
  v13 = *(v11 + 40);
  v315 = *(a2 + 144);
  v318 = *(a2 + 128);
  v309 = *(a2 + 176);
  v312 = *(a2 + 160);
  v14 = *(a2 + 264);
  if (v12 == v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = 51 * ((v12 - v13) >> 3) - 1;
  }

  v16 = *(v11 + 64);
  v17 = *(v11 + 72) + v16;
  if (v15 == v17)
  {
    if (v16 < 0x33)
    {
      v18 = *(v11 + 56);
      v19 = *(v11 + 32);
      if (v12 - v13 < (v18 - v19))
      {
        operator new();
      }

      if (v18 == v19)
      {
        v20 = 1;
      }

      else
      {
        v20 = (v18 - v19) >> 2;
      }

      if (!(v20 >> 61))
      {
        operator new();
      }

      sub_2460D368C();
    }

    *(v11 + 64) = v16 - 51;
    v329.i64[0] = *v13;
    *(v11 + 40) = v13 + 1;
    sub_246102CFC((v11 + 32), &v329);
    v13 = *(v11 + 40);
    v17 = *(v11 + 72) + *(v11 + 64);
  }

  v21 = v13[v17 / 0x33] - 4080 * (v17 / 0x33) + 80 * v17;
  *v21 = v318;
  *(v21 + 16) = v315;
  v28.f64[1] = *(&v309 + 1);
  *(v21 + 32) = v312;
  *(v21 + 48) = v309;
  *(v21 + 64) = v14;
  v22 = *(v11 + 64);
  v23 = *(v11 + 72) + 1;
  *(v11 + 72) = v23;
  v24 = *(v11 + 40);
  v25 = &v24[v22 / 0x33];
  v26 = *v25;
  v27 = v22 % 0x33;
  v28.f64[0] = *v11;
  if (*(*v25 + 10 * (v22 % 0x33) + 8) < v14 - *v11)
  {
    do
    {
      v29 = *(v11 + 72) - 1;
      *(v11 + 64) = ++v22;
      *(v11 + 72) = v29;
      if (v22 >= 0x66)
      {
        operator delete(*v24);
        v24 = (*(v11 + 40) + 8);
        *(v11 + 40) = v24;
        v22 = *(v11 + 64) - 51;
        *(v11 + 64) = v22;
        v28.f64[0] = *v11;
      }

      v26 = v24[v22 / 0x33];
      v27 = v22 % 0x33;
    }

    while (v26[10 * (v22 % 0x33) + 8] < v14 - v28.f64[0]);
    v25 = &v24[v22 / 0x33];
    v23 = *(v11 + 72);
  }

  if (v23 >= 0xA)
  {
    v30 = *(v11 + 48);
    v31 = 0uLL;
    if (v30 == v24 || (v32 = &v26[10 * v27], v33 = v24[(v23 + v22) / 0x33] + 80 * v23 + 80 * v22 + -4080 * ((v23 + v22) / 0x33), v32 == v33))
    {
      v37 = 0uLL;
      v39 = 0uLL;
      v35 = 0uLL;
      v36 = 0uLL;
    }

    else
    {
      v28 = 0uLL;
      v34 = v26;
      v35 = 0uLL;
      v36 = 0uLL;
      v37 = 0uLL;
      v38 = v25;
      v39 = 0uLL;
      do
      {
        v42 = v32 + 5;
        if (&v32[5] - v34 == 4080)
        {
          v43 = v38[1];
          ++v38;
          v34 = v43;
          v42 = v43;
        }

        v40 = vaddq_f32(v32[3], vmlaq_f32(vmlaq_f32(*v32, 0, v32[1]), 0, v32[2]));
        v41 = vcvtq_f64_f32(*&v40.f64[0]);
        v40.f64[0] = *&v40.f64[1];
        v35 = vaddq_f64(v35, v41);
        v36 = vaddq_f64(v36, v40);
        v37 = vaddq_f64(v37, vmulq_f64(v41, v41));
        v39 = vaddq_f64(v39, vmulq_f64(v40, v40));
        v32 = v42;
      }

      while (v42 != v33);
    }

    v28.f64[0] = v23;
    v44 = vdupq_lane_s64(COERCE__INT64(v23), 0);
    v45 = vdivq_f64(v36, v28);
    v46 = vdivq_f64(v35, v44);
    v47 = vmlsq_f64(vdivq_f64(v37, v44), v46, v46);
    v48 = vmlsq_f64(vdivq_f64(v39, v28), v45, v45);
    *&v49 = *&vmulq_f64(v48, v48);
    v50 = vaddvq_f64(vmulq_f64(v47, v47));
    if (v30 != v24)
    {
      v51 = &v26[10 * v27];
      v52 = v24[(v23 + v22) / 0x33] + 80 * v23 + 80 * v22 + -4080 * ((v23 + v22) / 0x33);
      if (v51 != v52)
      {
        v53 = v26;
        v54 = 0uLL;
        v55 = 0uLL;
        v31 = 0uLL;
        v56 = v25;
        v57 = 0uLL;
        do
        {
          v60 = v51 + 5;
          if (&v51[5] - v53 == 4080)
          {
            v61 = v56[1];
            ++v56;
            v53 = v61;
            v60 = v61;
          }

          v58 = vaddq_f32(v51[3], vmlaq_f32(vaddq_f32(v51[1], vmulq_f32(*v51, 0)), 0, v51[2]));
          v59 = vcvtq_f64_f32(*&v58.f64[0]);
          v58.f64[0] = *&v58.f64[1];
          v54 = vaddq_f64(v54, v59);
          v55 = vaddq_f64(v55, v58);
          v31 = vaddq_f64(v31, vmulq_f64(v59, v59));
          v57 = vaddq_f64(v57, vmulq_f64(v58, v58));
          v51 = v60;
        }

        while (v60 != v52);
        goto LABEL_39;
      }

      v31 = 0uLL;
    }

    v57 = 0uLL;
    v54 = 0uLL;
    v55 = 0uLL;
LABEL_39:
    v62.f64[0] = v23;
    v62.f64[1] = v23;
    v63 = v49 + v50;
    v64 = vdivq_f64(v54, v62);
    v65 = vdivq_f64(v55, v28);
    v66 = vmlsq_f64(vdivq_f64(v31, v62), v64, v64);
    v67 = vmlsq_f64(vdivq_f64(v57, v28), v65, v65);
    v68 = vmulq_f64(v67, v67).f64[0] + vaddvq_f64(vmulq_f64(v66, v66));
    if (v30 == v24 || (v69 = &v26[10 * v27], v70 = v24[(v23 + v22) / 0x33] + 80 * v23 + 80 * v22 + -4080 * ((v23 + v22) / 0x33), v69 == v70))
    {
      v73 = 0uLL;
      v74 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
    }

    else
    {
      v71 = 0uLL;
      v72 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      do
      {
        v77 = v69 + 5;
        if (&v69[5] - v26 == 4080)
        {
          v78 = v25[1];
          ++v25;
          v26 = v78;
          v77 = v78;
        }

        v75 = vaddq_f32(v69[3], vaddq_f32(v69[2], vmlaq_f32(vmulq_f32(*v69, 0), 0, v69[1])));
        v76 = vcvtq_f64_f32(*&v75.f64[0]);
        v75.f64[0] = *&v75.f64[1];
        v71 = vaddq_f64(v71, v76);
        v72 = vaddq_f64(v72, v75);
        v73 = vaddq_f64(v73, vmulq_f64(v76, v76));
        v74 = vaddq_f64(v74, vmulq_f64(v75, v75));
        v69 = v77;
      }

      while (v77 != v70);
    }

    v79.f64[0] = sqrt(v63);
    v80 = sqrt(v68);
    v81.f64[0] = v23;
    v81.f64[1] = v23;
    v82 = vdivq_f64(v71, v81);
    v83 = vdivq_f64(v72, v28);
    v84 = vmlsq_f64(vdivq_f64(v73, v81), v82, v82);
    v85 = vmlsq_f64(vdivq_f64(v74, v28), v83, v83);
    v86 = sqrt(vmulq_f64(v85, v85).f64[0] + vaddvq_f64(vmulq_f64(v84, v84)));
    if (*(v11 + 8) == 1)
    {
      v87.f64[0] = v79.f64[0];
      v87.f64[1] = v80;
      v88 = *(v11 + 80);
      if (*(v88 + 16) == 1)
      {
        *(v88 + 24) = v87;
        *(v88 + 40) = v86;
        *(v88 + 16) = 0;
      }

      else
      {
        v89 = *(v88 + 24);
        if (*(v88 + 17) == 1)
        {
          v90 = *(v88 + 48);
          v91 = *(v88 + 40);
          v92 = *(v88 + 64);
        }

        else
        {
          v79.f64[1] = v80;
          v90 = vsubq_f64(v79, v89);
          *(v88 + 48) = v90;
          v91 = *(v88 + 40);
          v92 = v86 - v91;
          *(v88 + 64) = v86 - v91;
          *(v88 + 17) = 1;
        }

        v93 = *(v88 + 8);
        v94 = 1.0 - *v88;
        v95 = *v88 * v86 + v94 * (v91 + v92);
        v96 = v93 * (v95 - v91) + (1.0 - v93) * v92;
        v97 = vaddq_f64(vmulq_n_f64(v87, *v88), vmulq_n_f64(vaddq_f64(v89, v90), v94));
        v98 = vaddq_f64(vmulq_n_f64(vsubq_f64(v97, v89), v93), vmulq_n_f64(v90, 1.0 - v93));
        *(v88 + 24) = v97;
        *(v88 + 40) = v95;
        *(v88 + 48) = v98;
        *(v88 + 64) = v96;
        v99 = vaddq_f64(v97, v98);
        v86 = v95 + v96;
        v79.f64[0] = fmax(v99.f64[0], 0.0);
        v80 = fmax(v99.f64[1], 0.0);
        if (v86 <= 0.0)
        {
          v86 = 0.0;
        }
      }
    }

    LODWORD(v100) = v79.f64[0] >= 0.005;
    if (v80 >= 0.005)
    {
      LODWORD(v100) = 1;
    }

    if (v86 >= 0.005)
    {
      v100 = 1;
    }

    else
    {
      v100 = v100;
    }

    v302 = v100;
    goto LABEL_60;
  }

  v302 = 0;
LABEL_60:
  v101 = a1[24];
  v102 = *(a2 + 256);
  if (*(v101 + 12) == 1)
  {
    v103 = v102;
    v104 = *(v101 + 32);
    v105 = *(v104 + 16);
    if (v105 == 1)
    {
      *(v104 + 24) = v103;
      *(v104 + 16) = 0;
      v106 = 0.0;
    }

    else
    {
      if (*(v104 + 17) == 1)
      {
        v108 = *(v104 + 24);
        v107 = *(v104 + 32);
      }

      else
      {
        v108 = *(v104 + 24);
        v107 = v103 - v108;
        *(v104 + 32) = v103 - v108;
        *(v104 + 17) = 1;
      }

      v109 = *v104 * v103 + (1.0 - *v104) * (v108 + v107);
      v110 = *(v104 + 8) * (v109 - v108) + (1.0 - *(v104 + 8)) * v107;
      *(v104 + 24) = v109;
      *(v104 + 32) = v110;
      v106 = v110 + v109;
    }

    v111 = fmaxf(v106, 0.0);
    if (!v105)
    {
      v102 = v111;
    }
  }

  v112 = 0;
  v113 = *v101;
  v114 = *(v101 + 40);
  if ((v114 - 1) <= 1 && v102 > 0.0)
  {
    v115 = *(v101 + 8);
    v116 = logf(v102);
    v112 = v116 > (logf(v113) * (1.0 - v115));
  }

  if (v102 < v113 && !v112)
  {
    v122 = 0;
  }

  else
  {
    v118 = 0;
    v119 = *(v101 + 4);
    if (v114 == 2 && v102 > 0.0)
    {
      v120 = *(v101 + 8);
      v121 = logf(v102);
      v118 = v121 > (logf(v119) * (1.0 - v120));
    }

    if (v102 >= v119 || v118)
    {
      v122 = 2;
    }

    else
    {
      v122 = 1;
    }
  }

  *(v101 + 40) = v122;
  if (!a4 || !a5)
  {
    return v302 | (v122 << 32);
  }

  if (!a3)
  {
    v200 = a1[22];
    v201 = *(v200 + 88);
    v202 = *(a2 + 264);
    if (v201 < 0.0)
    {
      *(v200 + 88) = v202;
      v201 = v202;
    }

    if (v202 - v201 >= 5.0)
    {
      v222 = v122;
      if (sub_24613CD00(v200, a2, a4, a5))
      {
        *(v200 + 96) = 2;
      }

      else
      {
        *(v200 + 96) = 0;
      }

      v122 = v222;
    }

    else
    {
      *(v200 + 96) = 0;
    }

    return v302 | (v122 << 32);
  }

  v292 = v122;
  kdebug_trace();
  v316 = a3->i32[0];
  if (!a3->i32[0] || (v333[0] = 0, v328 = 0, v123 = a5[1], v124 = a5[2], v125 = a5[3], v126 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[2].f32)), v123, a4[2], 1), v124, *a4[2].f32, 2), v125, *a4[2].f32, 3), v127 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[4].f32)), v123, a4[4], 1), v124, *a4[4].f32, 2), v125, *a4[4].f32, 3), v128 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[6].f32)), v123, a4[6], 1), v124, *a4[6].f32, 2), v125, *a4[6].f32, 3), v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4->f32)), v123, *a4, 1), v124, *a4->f32, 2), v125, *a4->f32, 3), v330 = v126, v331 = v127, v332 = v128, sub_246138CF0(a2, &v329, v333 + 1, v333, &v328 + 1, &v328), (v129 & 1) == 0))
  {
    kdebug_trace();
    v320 = 0;
    v194 = a1;
    v195 = a1[26];
    v196 = 1;
    goto LABEL_160;
  }

  v285 = v129;
  v130 = a5[1];
  v132 = a5[2];
  v131 = a5[3];
  v286 = a5;
  v133 = *a4[2].f32;
  v134 = vmulq_f32(*a4->f32, *a4->f32);
  *v134.i8 = vadd_f32(*v134.i8, *&vextq_s8(v134, v134, 8uLL));
  v134.i32[0] = vadd_f32(*v134.i8, vdup_lane_s32(*v134.i8, 1)).u32[0];
  v135 = vrsqrte_f32(v134.u32[0]);
  v136 = vmul_f32(v135, vrsqrts_f32(v134.u32[0], vmul_f32(v135, v135)));
  v134.i32[0] = vmul_f32(v136, vrsqrts_f32(v134.u32[0], vmul_f32(v136, v136))).u32[0];
  v137 = vmulq_f32(v133, v133);
  *v137.i8 = vadd_f32(*v137.i8, *&vextq_s8(v137, v137, 8uLL));
  v137.i32[0] = vadd_f32(*v137.i8, vdup_lane_s32(*v137.i8, 1)).u32[0];
  v138 = vmulq_n_f32(*a4->f32, *v134.i32);
  *v134.i8 = vrsqrte_f32(v137.u32[0]);
  *v134.i8 = vmul_f32(*v134.i8, vrsqrts_f32(v137.u32[0], vmul_f32(*v134.i8, *v134.i8)));
  v134.i32[0] = vmul_f32(*v134.i8, vrsqrts_f32(v137.u32[0], vmul_f32(*v134.i8, *v134.i8))).u32[0];
  v139 = *a4[4].f32;
  v140 = vmulq_f32(v139, v139);
  *v140.i8 = vadd_f32(*v140.i8, *&vextq_s8(v140, v140, 8uLL));
  v140.i32[0] = vadd_f32(*v140.i8, vdup_lane_s32(*v140.i8, 1)).u32[0];
  v141 = vmulq_n_f32(v133, *v134.i32);
  *v134.i8 = vrsqrte_f32(v140.u32[0]);
  *v134.i8 = vmul_f32(*v134.i8, vrsqrts_f32(v140.u32[0], vmul_f32(*v134.i8, *v134.i8)));
  v142 = vmulq_n_f32(v139, vmul_f32(*v134.i8, vrsqrts_f32(v140.u32[0], vmul_f32(*v134.i8, *v134.i8))).f32[0]);
  v143 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, v138.f32[0]), v130, *v138.f32, 1), v132, v138, 2), v131, v138, 3);
  v144 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, v141.f32[0]), v130, *v141.f32, 1), v132, v141, 2), v131, v141, 3);
  v145 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, v142.f32[0]), v130, *v142.f32, 1), v132, v142, 2), v131, v142, 3);
  v146 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[6].f32)), v130, a4[6], 1), v132, *a4[6].f32, 2), v131, *a4[6].f32, 3);
  v148 = a3[2];
  v147 = a3[3];
  v150 = a3[4];
  v149 = a3[5];
  v151 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v148.f32[0]), v144, *v148.f32, 1), v145, v148, 2);
  v152 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v147.f32[0]), v144, *v147.f32, 1), v145, v147, 2);
  v153 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v150.f32[0]), v144, *v150.f32, 1), v145, v150, 2);
  v154 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v143, v149.f32[0]), v144, *v149.f32, 1), v145, v149, 2);
  v325 = 0u;
  v326 = 0u;
  v327 = 1065353216;
  *v322 = 0u;
  *__p = 0u;
  v324 = 1065353216;
  if ((atomic_load_explicit(&qword_27EE3F6F0, memory_order_acquire) & 1) == 0)
  {
    v311 = v152;
    v314 = v151;
    v306 = v154;
    v308 = v153;
    v321 = v146;
    v297 = v150;
    v299 = v149;
    v295 = v147;
    v291 = v148;
    v277 = __cxa_guard_acquire(&qword_27EE3F6F0);
    v148 = v291;
    v147 = v295;
    v150 = v297;
    v149 = v299;
    v146 = v321;
    v154 = v306;
    v153 = v308;
    v152 = v311;
    v151 = v314;
    if (v277)
    {
      *zmmword_27EE3F6B0 = __invert_f4(*zmmword_2461446B0);
      __cxa_guard_release(&qword_27EE3F6F0);
      v148 = v291;
      v147 = v295;
      v150 = v297;
      v149 = v299;
      v146 = v321;
      v154 = v306;
      v153 = v308;
      v152 = v311;
      v151 = v314;
    }
  }

  v298 = 0;
  v155 = 0;
  v310 = vmlaq_laneq_f32(v152, v146, v147, 3);
  v313 = vmlaq_laneq_f32(v151, v146, v148, 3);
  v305 = vmlaq_laneq_f32(v154, v146, v149, 3);
  v307 = vmlaq_laneq_f32(v153, v146, v150, 3);
  v289 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, COERCE_FLOAT(*(a2 + 208))), *&zmmword_27EE3F6B0[16], *(a2 + 208), 1), *&zmmword_27EE3F6B0[32], *(a2 + 208), 2), *&zmmword_27EE3F6B0[48], *(a2 + 208), 3);
  v290 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, COERCE_FLOAT(*(a2 + 192))), *&zmmword_27EE3F6B0[16], *(a2 + 192), 1), *&zmmword_27EE3F6B0[32], *(a2 + 192), 2), *&zmmword_27EE3F6B0[48], *(a2 + 192), 3);
  v287 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, COERCE_FLOAT(*(a2 + 240))), *&zmmword_27EE3F6B0[16], *(a2 + 240), 1), *&zmmword_27EE3F6B0[32], *(a2 + 240), 2), *&zmmword_27EE3F6B0[48], *(a2 + 240), 3);
  v288 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, COERCE_FLOAT(*(a2 + 224))), *&zmmword_27EE3F6B0[16], *(a2 + 224), 1), *&zmmword_27EE3F6B0[32], *(a2 + 224), 2), *&zmmword_27EE3F6B0[48], *(a2 + 224), 3);
  v294 = 0u;
  v296 = 0u;
  do
  {
    v156 = *(a3->i64[1] + 48 * v155);
    v157 = *(a2 + 192);
    v158 = *(a2 + 208);
    v160 = *(a2 + 224);
    v159 = *(a2 + 240);
    v162 = *(a2 + 32);
    v161 = *(a2 + 48);
    v163 = *(a2 + 64);
    if ((atomic_load_explicit(&qword_27EE3F6F0, memory_order_acquire) & 1) == 0)
    {
      v319 = v161;
      v283 = v162;
      v284 = v163;
      v281 = v160;
      v282 = v159;
      v279 = v157;
      v280 = v158;
      v278 = v156;
      v193 = __cxa_guard_acquire(&qword_27EE3F6F0);
      v156 = v278;
      v157 = v279;
      v158 = v280;
      v160 = v281;
      v159 = v282;
      v162 = v283;
      v163 = v284;
      v161 = v319;
      if (v193)
      {
        *zmmword_27EE3F6B0 = __invert_f4(*zmmword_2461446B0);
        __cxa_guard_release(&qword_27EE3F6F0);
        v156 = v278;
        v157 = v279;
        v158 = v280;
        v160 = v281;
        v159 = v282;
        v162 = v283;
        v163 = v284;
        v161 = v319;
      }
    }

    v164 = vaddq_f32(v305, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v313, v156.f32[0]), v310, *v156.f32, 1), v307, v156, 2));
    v165 = vaddq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, v159.f32[0]), *&zmmword_27EE3F6B0[16], *v159.f32, 1), *&zmmword_27EE3F6B0[32], v159, 2), *&zmmword_27EE3F6B0[48], v159, 3), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, v157.f32[0]), *&zmmword_27EE3F6B0[16], *v157.f32, 1), *&zmmword_27EE3F6B0[32], v157, 2), *&zmmword_27EE3F6B0[48], v157, 3), v164.f32[0]), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, v158.f32[0]), *&zmmword_27EE3F6B0[16], *v158.f32, 1), *&zmmword_27EE3F6B0[32], v158, 2), *&zmmword_27EE3F6B0[48], v158, 3), *v164.f32, 1), vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*zmmword_27EE3F6B0, v160.f32[0]), *&zmmword_27EE3F6B0[16], *v160.f32, 1), *&zmmword_27EE3F6B0[32], v160, 2), *&zmmword_27EE3F6B0[48], v160, 3), v164, 2));
    v166 = fmaxf(fabsf(v165.f32[2]), 0.00000011921);
    if (v165.f32[2] >= 0.0)
    {
      v167 = v166;
    }

    else
    {
      v167 = -v166;
    }

    v165.i64[0] = vaddq_f32(v163, vmlaq_n_f32(vmulq_n_f32(v162, v165.f32[0] / v167), v161, v165.f32[1] / v167)).u64[0];
    v168 = v165.f32[0];
    v169 = v165.f32[1];
    if (v165.f32[2] >= 0.0)
    {
      v171 = *(&v325 + 1);
      if (*(&v325 + 1))
      {
        v172 = v169 ^ v168;
        v173 = vcnt_s8(*(&v325 + 8));
        v173.i16[0] = vaddlv_u8(v173);
        if (v173.u32[0] > 1uLL)
        {
          v174 = v169 ^ v168;
          if (*(&v325 + 1) <= v172)
          {
            v174 = v172 % *(&v325 + 1);
          }
        }

        else
        {
          v174 = (*(&v325 + 1) - 1) & v172;
        }

        v175 = *(v325 + 8 * v174);
        if (v175)
        {
          v176 = *v175;
          if (v176)
          {
            if (v173.u32[0] < 2uLL)
            {
              while (1)
              {
                v181 = v176[1];
                if (v181 == v172)
                {
                  if (*(v176 + 4) == v168 && *(v176 + 5) == v169)
                  {
                    goto LABEL_127;
                  }
                }

                else if ((v181 & (*(&v325 + 1) - 1)) != v174)
                {
                  goto LABEL_114;
                }

                v176 = *v176;
                if (!v176)
                {
                  goto LABEL_114;
                }
              }
            }

            do
            {
              v178 = v176[1];
              if (v178 == v172)
              {
                if (*(v176 + 4) == v168 && *(v176 + 5) == v169)
                {
                  goto LABEL_127;
                }
              }

              else
              {
                if (v178 >= *(&v325 + 1))
                {
                  v178 %= *(&v325 + 1);
                }

                if (v178 != v174)
                {
                  break;
                }
              }

              v176 = *v176;
            }

            while (v176);
          }
        }
      }

LABEL_114:
      if (v168 < 0)
      {
LABEL_127:
        v170 = &v325;
      }

      else
      {
        v170 = &v325;
        if (*(a2 + 276) > v169 && (v169 & 0x80000000) == 0 && *(a2 + 272) > v168)
        {
          ++v298;
          v179 = vmlaq_f32(vmlaq_f32(vmulq_n_f32(v290, v164.f32[0]), vdupq_lane_s32(*v164.f32, 1), v289), vdupq_laneq_s32(v164, 2), v288);
          *(&v180 + 1) = *(&v296 + 1);
          *&v180 = vsub_s32(*&v296, vcgt_f32(0x3ECCCCCD3E4CCCCDLL, vdup_lane_s32(vadd_f32(*&vextq_s8(v287, v287, 8uLL), *&vextq_s8(v179, v179, 8uLL)), 0)));
          v294 = vaddq_f64(v294, vcvtq_f64_f32(*v165.f32));
          v296 = v180;
        }
      }
    }

    else
    {
      v170 = v322;
      v171 = v322[1];
    }

    v183 = v169 ^ v168;
    v184 = v169 ^ v168;
    if (!v171)
    {
      goto LABEL_154;
    }

    v185 = vcnt_s8(v171);
    v185.i16[0] = vaddlv_u8(v185);
    if (v185.u32[0] > 1uLL)
    {
      v186 = v183;
      if (v171 <= v183)
      {
        v186 = v184 % v171;
      }
    }

    else
    {
      v186 = (v171 - 1) & v184;
    }

    v187 = *(*v170 + v186);
    if (!v187 || (v188 = *v187) == 0)
    {
LABEL_154:
      operator new();
    }

    if (v185.u32[0] < 2uLL)
    {
      while (1)
      {
        v192 = v188[1];
        if (v192 == v184)
        {
          if (*(v188 + 4) == v168 && *(v188 + 5) == v169)
          {
            goto LABEL_155;
          }
        }

        else if ((v192 & (v171 - 1)) != v186)
        {
          goto LABEL_154;
        }

        v188 = *v188;
        if (!v188)
        {
          goto LABEL_154;
        }
      }
    }

    while (1)
    {
      v190 = v188[1];
      if (v190 == v184)
      {
        break;
      }

      if (v190 >= v171)
      {
        v190 %= v171;
      }

      if (v190 != v186)
      {
        goto LABEL_154;
      }

LABEL_141:
      v188 = *v188;
      if (!v188)
      {
        goto LABEL_154;
      }
    }

    if (*(v188 + 4) != v168 || *(v188 + 5) != v169)
    {
      goto LABEL_141;
    }

LABEL_155:
    v155 += 3;
  }

  while (v155 < v316);
  if (v298)
  {
    v219 = vdivq_f64(v294, vdupq_lane_s64(COERCE__INT64(v298), 0));
    a5 = v286;
    if (v219.f64[0] >= 0.0 && v219.f64[1] >= 0.0)
    {
      v220 = *(a2 + 272);
      v221.i64[0] = v220;
      v221.i64[1] = HIDWORD(v220);
      v219 = vdivq_f64(v219, vcvtq_f64_u64(v221));
    }

    v317 = v219;
  }

  else
  {
    __asm { FMOV            V0.2D, #-1.0 }

    v317 = _Q0;
    a5 = v286;
  }

  v229 = __p[1];
  v230 = DWORD2(v326);
  kdebug_trace();
  v231 = __p[0];
  if (__p[0])
  {
    do
    {
      v232 = *v231;
      operator delete(v231);
      v231 = v232;
    }

    while (v232);
  }

  v233 = v322[0];
  v322[0] = 0;
  if (v233)
  {
    operator delete(v233);
  }

  v234 = vcvt_f32_u32(*&v296);
  v235 = vdup_n_s32(0x3E99999Au);
  v236 = v326;
  if (v326)
  {
    do
    {
      v237 = *v236;
      operator delete(v236);
      v236 = v237;
    }

    while (v237);
  }

  v238 = vdiv_f32(v234, v235);
  v239 = v325;
  *&v325 = 0;
  if (v239)
  {
    operator delete(v239);
  }

  v320 = vcvt_u32_f32(v238);
  kdebug_trace();
  v195 = a1[26];
  if (v285)
  {
    LODWORD(v325) = 0;
    LODWORD(v322[0]) = 0;
    v333[0] = 0;
    v240 = a5[1];
    v241 = a5[2];
    v242 = a5[3];
    v243 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[2].f32)), v240, a4[2], 1), v241, *a4[2].f32, 2), v242, *a4[2].f32, 3);
    v244 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[4].f32)), v240, a4[4], 1), v241, *a4[4].f32, 2), v242, *a4[4].f32, 3);
    v245 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[6].f32)), v240, a4[6], 1), v241, *a4[6].f32, 2), v242, *a4[6].f32, 3);
    v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4->f32)), v240, *a4, 1), v241, *a4->f32, 2), v242, *a4->f32, 3);
    v330 = v243;
    v331 = v244;
    v332 = v245;
    sub_246138CF0(a2, &v329, &v325, v322, v333 + 1, v333);
    v246 = 0;
    if (v247)
    {
      v246 = (LODWORD(v333[0]) - HIDWORD(v333[0])) >= *(a2 + 272);
      if ((LODWORD(v322[0]) - v325) >= *(a2 + 276))
      {
        v246 = 1;
      }
    }

    v248 = v298 / (v230 + v229);
    v194 = a1;
    if (*(v195 + 8) == 1)
    {
      v249 = v248;
      v250 = *(v195 + 32);
      if (*(v250 + 16) == 1)
      {
        *(v250 + 24) = v249;
        *(v250 + 16) = 0;
      }

      else
      {
        if (*(v250 + 17) == 1)
        {
          v262 = *(v250 + 24);
          v261 = *(v250 + 32);
        }

        else
        {
          v262 = *(v250 + 24);
          v261 = v249 - v262;
          *(v250 + 32) = v249 - v262;
          *(v250 + 17) = 1;
        }

        v269 = *v250 * v249 + (1.0 - *v250) * (v262 + v261);
        v270 = *(v250 + 8) * (v269 - v262) + (1.0 - *(v250 + 8)) * v261;
        *(v250 + 24) = v269;
        *(v250 + 32) = v270;
        v271 = v270 + v269;
        v272 = 1.0;
        if (v271 <= 1.0)
        {
          v272 = v271;
        }

        _NF = v271 < 0.0;
        v248 = 0.0;
        if (!_NF)
        {
          v248 = v272;
        }
      }
    }

    *a8 = 1;
    *(a8 + 4) = v248;
    *(a8 + 8) = v317;
    v273 = *(v195 + 44) == 1 && v248 < *(v195 + 4);
    v274 = v248 < *v195 || v273;
    v275 = fabsf(v248) <= 0.000001;
    if (v246)
    {
      v276 = v275;
    }

    else
    {
      v276 = v274;
    }

    v196 = v276;
  }

  else
  {
    v196 = 1;
    v194 = a1;
  }

LABEL_160:
  *(v195 + 44) = v196;
  kdebug_trace();
  if (a6 && a7)
  {
    *a7 = 0;
  }

  v197 = v194[22];
  v198 = *(v197 + 88);
  v199 = *(a2 + 264);
  if (v198 < 0.0)
  {
    *(v197 + 88) = v199;
    v198 = v199;
  }

  if (v199 - v198 < 5.0)
  {
    *(v197 + 96) = 0;
    v122 = v292;
    return v302 | (v122 << 32);
  }

  v203 = a5[1];
  v204 = a5[2];
  v205 = a5[3];
  v206 = *a4[6].f32;
  v207 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[2].f32)), v203, a4[2], 1), v204, *a4[2].f32, 2), v205, *a4[2].f32, 3);
  v208 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4[4].f32)), v203, a4[4], 1), v204, *a4[4].f32, 2), v205, *a4[4].f32, 3);
  v209 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, v206.f32[0]), v203, *v206.f32, 1), v204, v206, 2);
  v329 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*a4->f32)), v203, *a4, 1), v204, *a4->f32, 2), v205, *a4->f32, 3);
  v330 = v207;
  v331 = v208;
  v332 = vmlaq_laneq_f32(v209, v205, v206, 3);
  LODWORD(v325) = 0;
  LODWORD(v322[0]) = 0;
  v333[0] = 0;
  v210 = *(a2 + 276);
  v211 = *(a2 + 272);
  sub_246138CF0(a2, &v329, &v325, v322, v333 + 1, v333);
  v212 = 0;
  if (v213)
  {
    v212 = SHIDWORD(v333[0]) < v211 && v325 < v210 && SLODWORD(v333[0]) > 0 && SLODWORD(v322[0]) > 0;
  }

  if (v320.i32[0] <= 0x14u)
  {
    v212 = 0;
  }

  v217 = v212;
  if (*(v197 + 8) == 1)
  {
    v218 = *(v197 + 64);
    v122 = v292;
    if (*(v218 + 16))
    {
      *(v218 + 24) = v217;
      *(v218 + 16) = 0;
    }

    else
    {
      if (*(v218 + 17) == 1)
      {
        v224 = *(v218 + 24);
        v223 = *(v218 + 32);
      }

      else
      {
        v224 = *(v218 + 24);
        v223 = v217 - v224;
        *(v218 + 32) = v217 - v224;
        *(v218 + 17) = 1;
      }

      v251 = *v218 * v217 + (1.0 - *v218) * (v224 + v223);
      v252 = *(v218 + 8) * (v251 - v224) + (1.0 - *(v218 + 8)) * v223;
      *(v218 + 24) = v251;
      *(v218 + 32) = v252;
      v253 = v252 + v251;
      if (v253 <= 1.0)
      {
        v217 = v253;
      }

      else
      {
        v217 = 1.0;
      }

      if (v253 < 0.0)
      {
        v217 = 0.0;
      }
    }
  }

  else
  {
    v122 = v292;
  }

  v255 = v217 > 0.5 && *(v197 + 96) == 1;
  if (v217 > 0.8 || v255)
  {
    *(v197 + 96) = 1;
    return v302 | (v122 << 32);
  }

  if (v320.i32[1] >= 0x14u)
  {
    v256 = 0.0;
  }

  else
  {
    v256 = 1.0;
  }

  if (*(v197 + 9) != 1)
  {
    goto LABEL_250;
  }

  v257 = *(v197 + 72);
  if (*(v257 + 16))
  {
    *(v257 + 24) = v256;
    *(v257 + 16) = 0;
    goto LABEL_250;
  }

  if (*(v257 + 17) == 1)
  {
    v260 = *(v257 + 24);
    v259 = *(v257 + 32);
  }

  else
  {
    v260 = *(v257 + 24);
    v259 = v256 - v260;
    *(v257 + 32) = v256 - v260;
    *(v257 + 17) = 1;
  }

  v263 = *v257 * v256 + (1.0 - *v257) * (v260 + v259);
  v264 = *(v257 + 8) * (v263 - v260) + (1.0 - *(v257 + 8)) * v259;
  *(v257 + 24) = v263;
  *(v257 + 32) = v264;
  v265 = v264 + v263;
  v256 = v265 <= 1.0 ? v265 : 1.0;
  if (v265 < 0.0)
  {
    v266 = 0;
    v256 = 0.0;
  }

  else
  {
LABEL_250:
    if (v256 <= 0.8)
    {
      v266 = 0;
    }

    else
    {
      v266 = sub_24613CD00(v197, a2, a4, a5);
      v122 = v292;
    }
  }

  v268 = v256 > 0.5 && *(v197 + 96) == 2;
  if (v266 || v268)
  {
    *(v197 + 96) = 2;
  }

  else
  {
    *(v197 + 96) = 0;
  }

  return v302 | (v122 << 32);
}

uint64_t OCDataBufferGetIOSurface(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x24C199040]();
  if (v1 != 2021227107 && v1 != 1278227250)
  {
    return 0;
  }

  return CVDataBufferGetIOSurface();
}

uint64_t OCDataBufferGetBytesPerData(uint64_t result)
{
  if (result)
  {
    v1 = MEMORY[0x24C199040]();
    if (v1 == 1278227250 || v1 == 2021227107)
    {
      v3 = v1;
    }

    else
    {
      v3 = 0;
    }

    if (v3 == 2021227107)
    {
      return 48;
    }

    else
    {
      return 4 * (v3 == 1278227250);
    }
  }

  return result;
}

uint64_t OCDataBufferGetDataFormatType(uint64_t result)
{
  if (result)
  {
    LODWORD(result) = MEMORY[0x24C199040]();
    if (result == 1278227250 || result == 2021227107)
    {
      return result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

unint64_t OCDataBufferGetSize(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = MEMORY[0x24C199040]();
    if (v2 == 1278227250 || v2 == 2021227107)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }

    if (v4 == 2021227107)
    {
      v5 = 48;
    }

    else
    {
      v5 = 4 * (v4 == 1278227250);
    }

    v6 = MEMORY[0x24C199040](v1);
    if (v6 == 2021227107 || v6 == 1278227250)
    {
      DataSize = CVDataBufferGetDataSize();
      if (v5)
      {
        return DataSize / v5;
      }
    }

    else
    {
      DataSize = 0;
      if (v5)
      {
        return DataSize / v5;
      }
    }

    return 0;
  }

  return result;
}

uint64_t OCDataBufferGetDataSize(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = MEMORY[0x24C199040]();
  if (v1 != 2021227107 && v1 != 1278227250)
  {
    return 0;
  }

  return CVDataBufferGetDataSize();
}

char *OCDataBufferGetDataAt(char *result, unint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = MEMORY[0x24C199040]();
    if (v4 == 1278227250 || v4 == 2021227107)
    {
      v6 = v4;
    }

    else
    {
      v6 = 0;
    }

    if (v6 == 2021227107)
    {
      v7 = 48;
    }

    else
    {
      v7 = 4 * (v6 == 1278227250);
    }

    v8 = MEMORY[0x24C199040](v3);
    if (v8 == 2021227107 || v8 == 1278227250)
    {
      DataSize = CVDataBufferGetDataSize();
      if (!v7)
      {
        return 0;
      }
    }

    else
    {
      DataSize = 0;
      if (!v7)
      {
        return 0;
      }
    }

    if (DataSize / v7 > a2)
    {
      v10 = MEMORY[0x24C199040](v3);
      if (v10 == 1278227250 || v10 == 2021227107)
      {
        v12 = v10;
      }

      else
      {
        v12 = 0;
      }

      v13 = MEMORY[0x24C199040](v3);
      if (v13 == 2021227107 || v13 == 1278227250)
      {
        IOSurface = CVDataBufferGetIOSurface();
      }

      else
      {
        IOSurface = 0;
      }

      BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
      if (v12 == 1278227250)
      {
        return &BaseAddress[4 * a2];
      }

      if (v12 == 2021227107)
      {
        return &BaseAddress[48 * a2];
      }
    }

    return 0;
  }

  return result;
}

void *OCDataBufferGetBaseAddress(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = MEMORY[0x24C199040]();
  if (v2 != 2021227107 && v2 != 1278227250)
  {
    return 0;
  }

  v3 = MEMORY[0x24C199040](a1);
  v4 = MEMORY[0x24C199040](a1);
  if (v4 != 2021227107 && v4 != 1278227250)
  {
    return 0;
  }

  if (v3 != 1278227250 && v3 != 2021227107)
  {
    v3 = 0;
  }

  if (v3 == 1278227250)
  {
    v6 = 3;
  }

  else
  {
    v6 = -1;
  }

  DataSize = CVDataBufferGetDataSize();
  v8 = 47;
  if (v3 != 2021227107)
  {
    v8 = v6;
  }

  if (v8 >= DataSize)
  {
    return 0;
  }

  v9 = MEMORY[0x24C199040](a1);
  if (v9 == 2021227107 || v9 == 1278227250)
  {
    IOSurface = CVDataBufferGetIOSurface();
  }

  else
  {
    IOSurface = 0;
  }

  return IOSurfaceGetBaseAddress(IOSurface);
}

uint64_t OCDataBufferCreateWithIOSurface(uint64_t a1, const void *a2, uint64_t a3, uint64_t a4)
{
  if (!a3)
  {
    return 4294960615;
  }

  if (!a2 || a4 != 2021227107 && a4 != 1278227250)
  {
    return 4294960635;
  }

  buffer[7] = v4;
  buffer[8] = v5;
  buffer[0] = 0;
  v7 = 48;
  if (a4 != 2021227107)
  {
    v7 = 4 * (a4 == 1278227250);
  }

  v8 = v7 * a3;
  result = sub_2460D324C(a4, v7 * a3, buffer);
  if (!result)
  {
    BaseAddress = IOSurfaceGetBaseAddress(buffer[0]);
    memcpy(BaseAddress, a2, v8);
    v11 = CVDataBufferCreateWithIOSurface();
    CFRelease(buffer[0]);
    return v11;
  }

  return result;
}

const void *OCDataBufferRetain(const void *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = MEMORY[0x24C199040](a1);
    if (v2 == 2021227107 || v2 == 1278227250)
    {
      CFRetain(v1);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

void OCDataBufferRelease(const void *a1)
{
  if (a1)
  {
    v2 = MEMORY[0x24C199040]();
    if (v2 == 2021227107 || v2 == 1278227250)
    {

      CFRelease(a1);
    }
  }
}

uint64_t OCImageFilterBilateralCreate(uint64_t a1, void *a2)
{
  result = 4294967294;
  if (a1 && a2)
  {
    if (*a1 > 1u || (*(a1 + 8) >= 2uLL ? (v4 = (*(a1 + 8) & 1) == 0) : (v4 = 1), v4 || *(a1 + 20) <= 0.0 || *(a1 + 16) <= 0.0))
    {
      if (qword_27EE3F1F8 != -1)
      {
        dispatch_once(&qword_27EE3F1F8, &unk_2858EB9A8);
      }

      v9 = qword_27EE3F1F0;
      if (os_log_type_enabled(qword_27EE3F1F0, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2460CF000, v9, OS_LOG_TYPE_ERROR, "Failed to create Bilateral Filter, invalid filter configuration parameters", buf, 2u);
      }
    }

    else
    {
      v6 = operator new(0x10uLL, MEMORY[0x277D826F0]);
      if (!v6)
      {
        return 4294967293;
      }

      v7 = v6;
      *v6 = 0;
      v6[1] = 0;
      sub_2460D79EC(&v10, a1);
      v8 = v10;
      *v7 = v10;
      if (v8)
      {
        result = 0;
        *(v7 + 2) = *a1;
        *a2 = v7;
        return result;
      }

      OCImageFilterDestroy(v7);
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

void sub_2460D79EC(void *a1, _DWORD *a2)
{
  if (*a2 == 1)
  {
    operator new();
  }

  if (!*a2)
  {
    operator new();
  }

  if (qword_27EE3F1F8 != -1)
  {
    dispatch_once(&qword_27EE3F1F8, &unk_2858EB9A8);
  }

  v3 = qword_27EE3F1F0;
  if (os_log_type_enabled(qword_27EE3F1F0, OS_LOG_TYPE_ERROR))
  {
    *v4 = 0;
    _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "Invalid filter-type!", v4, 2u);
  }

  *a1 = 0;
}

uint64_t OCImageFilterDestroy(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = a1;
    (*(*v1 + 8))(v1);
    a1 = v2;
  }

  MEMORY[0x24C1995D0](a1, 0x1020C403A5D3213);
  if (qword_27EE3F1F8 != -1)
  {
    dispatch_once(&qword_27EE3F1F8, &unk_2858EB9A8);
  }

  v3 = qword_27EE3F1F0;
  result = os_log_type_enabled(qword_27EE3F1F0, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_2460CF000, v3, OS_LOG_TYPE_DEBUG, "Destroyed OCImageFilter handle", v5, 2u);
    return 0;
  }

  return result;
}

uint64_t sub_2460D7E00()
{
  qword_27EE3F1F0 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t OCImageFilterStart(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCImageFilterStop(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCImageFilterApplyFilter(uint64_t *a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3)
{
  result = 4294967294;
  if (a1 && pixelBuffer && a3)
  {
    if (*(a1 + 2) == 1)
    {
      return 4294967294;
    }

    else
    {
      v6 = *a1;
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      v10 = pixelBuffer;
      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v12 = CVPixelBufferGetPixelFormatType(a3);
      v14 = PixelFormatType != 1717855600 && PixelFormatType != 1278226534;
      v15 = PixelFormatType != v12 || v14;
      if (Width && Height && Width == CVPixelBufferGetWidth(a3) && (v16 = CVPixelBufferGetHeight(a3), !((v6 == 0) | v15 & 1)) && Height == v16)
      {
        CVPixelBufferLockBaseAddress(v10, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(v10);
        CVPixelBufferLockBaseAddress(a3, 0);
        *buf = &unk_2858EBE38;
        v26 = BaseAddress;
        v27 = CVPixelBufferGetBaseAddress(a3);
        v28.i64[0] = CVPixelBufferGetWidth(v10);
        v28.i64[1] = CVPixelBufferGetHeight(v10);
        BytesPerRow = CVPixelBufferGetBytesPerRow(v10);
        context[1] = v6;
        context[2] = 20;
        context[0] = buf;
        __asm { FMOV            V1.2S, #20.0 }

        v22 = vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v28)), _D1));
        dispatch_apply_f(vmul_lane_f32(v22, v22, 1).f32[0], 0, context, sub_2460D80B0);
        CVPixelBufferUnlockBaseAddress(a3, 0);
        CVPixelBufferUnlockBaseAddress(v10, 1uLL);
        return 0;
      }

      else
      {
        if (qword_27EE3F1F8 != -1)
        {
          dispatch_once(&qword_27EE3F1F8, &unk_2858EB9A8);
        }

        v23 = qword_27EE3F1F0;
        if (os_log_type_enabled(qword_27EE3F1F0, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "Failed to apply bilateral filter to input image", buf, 2u);
        }

        return 0xFFFFFFFFLL;
      }
    }
  }

  return result;
}

uint64_t sub_2460D80B0(uint64_t result, unint64_t a2, double a3)
{
  if (result)
  {
    v3 = result;
    v4 = *(result + 16);
    if (v4)
    {
      v5 = *result;
      *&a3 = v4;
      v6 = vcvtq_u64_f64(vcvtq_f64_f32(vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(*(*result + 24))), vdup_lane_s32(*&a3, 0)))));
      if (v6.i64[1] * v6.i64[0] > a2)
      {
        v7 = a2 % v6.i64[0] * v4;
        v8 = v7 + v4;
        v9 = a2 / v6.i64[0] * v4;
        v10 = v9 + v4;
        if (v9 < v9 + v4 && v7 < v8)
        {
          do
          {
            v12 = v5[2] + v5[5] * v9;
            v13 = v7;
            do
            {
              if (v13 < v5[3] && v9 < v5[4])
              {
                result = (*(**(v3 + 8) + 24))(*(v3 + 8), v5, v13, v9);
                if ((result & 0x100000000) != 0)
                {
                  *(v12 + 4 * v13) = result;
                }
              }

              ++v13;
            }

            while (v13 != v8);
            ++v9;
          }

          while (v9 != v10);
        }
      }
    }
  }

  return result;
}

uint64_t OCImageFilterApplyCrossBilateralFilter(uint64_t *a1, CVPixelBufferRef pixelBuffer, __CVBuffer *a3, __CVBuffer *a4)
{
  result = 4294967294;
  if (a1 && pixelBuffer && a3 && a4)
  {
    if (*(a1 + 2) == 1)
    {
      v9 = *a1;
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
      v13 = CVPixelBufferGetPixelFormatType(a4);
      v15 = PixelFormatType != 1717855600 && PixelFormatType != 1278226534;
      v16 = PixelFormatType != v13 || v15;
      v17 = CVPixelBufferGetPixelFormatType(a3);
      v18 = Width != CVPixelBufferGetWidth(a3) || Width != CVPixelBufferGetWidth(a4);
      v19 = Height != CVPixelBufferGetHeight(a3) || Height != CVPixelBufferGetHeight(a4);
      if (v9)
      {
        v20 = Width == 0;
      }

      else
      {
        v20 = 1;
      }

      v22 = v20 || Height == 0;
      v23 = v22 | (v18 || v19) | v16 | (v17 != 875704422);
      if ((v23 & 1) == 0)
      {
        CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
        BaseAddress = CVPixelBufferGetBaseAddress(pixelBuffer);
        CVPixelBufferLockBaseAddress(a3, 1uLL);
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a3, 0);
        CVPixelBufferLockBaseAddress(a4, 0);
        v35 = BaseAddressOfPlane;
        v32[0] = &unk_2858EBE60;
        v32[1] = BaseAddress;
        v32[2] = CVPixelBufferGetBaseAddress(a4);
        v33.i64[0] = CVPixelBufferGetWidth(pixelBuffer);
        v33.i64[1] = CVPixelBufferGetHeight(pixelBuffer);
        BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBuffer);
        BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a3, 0);
        context[1] = v9;
        context[2] = 20;
        context[0] = v32;
        __asm { FMOV            V1.2S, #20.0 }

        v30 = vrndp_f32(vdiv_f32(vcvt_f32_f64(vcvtq_f64_u64(v33)), _D1));
        dispatch_apply_f(vmul_lane_f32(v30, v30, 1).f32[0], 0, context, sub_2460D80B0);
        CVPixelBufferUnlockBaseAddress(a4, 0);
        CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
      }

      return (v23 << 31 >> 31);
    }

    else
    {
      return 4294967294;
    }
  }

  return result;
}

uint64_t OCExplicitFeedbackCreate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = operator new(8uLL, MEMORY[0x277D826F0]);
    if (v3)
    {
      *v3 = 0;
    }

    if (a1)
    {
      operator new();
    }

    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_2460D8D58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  shared_owners = v14[2].__shared_owners_;
  v14[2].__shared_owners_ = 0;
  if (shared_owners)
  {
    MEMORY[0x24C1995D0](shared_owners, 0x1000C40FA9F20B1);
  }

  std::__shared_weak_count::~__shared_weak_count(v14);
  operator delete(v17);
  sub_2460D502C(v13);
  sub_2460D502C(a10);
  sub_2460D502C(a11);
  sub_2460D502C(a12);
  MEMORY[0x24C1995D0](v12, 0x1020C40683E84EFLL);
  _Unwind_Resume(a1);
}

void *sub_2460D8DF0(void *a1)
{
  v2 = a1[27];
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  v3 = a1[25];
  if (v3 && !atomic_fetch_add(&v3->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v3->__on_zero_shared)(v3);
    std::__shared_weak_count::__release_weak(v3);
  }

  v4 = a1[23];
  if (v4 && !atomic_fetch_add(&v4->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v4->__on_zero_shared)(v4);
    std::__shared_weak_count::__release_weak(v4);
  }

  v5 = a1[21];
  if (v5 && !atomic_fetch_add(&v5->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v5->__on_zero_shared)(v5);
    std::__shared_weak_count::__release_weak(v5);
  }

  return a1;
}

uint64_t OCExplicitFeedbackDestroy(void **a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = *a1;
  *a1 = 0;
  if (v1)
  {
    v2 = a1;
    v3 = sub_2460D8DF0(v1);
    MEMORY[0x24C1995D0](v3, 0x1020C40683E84EFLL);
    a1 = v2;
  }

  MEMORY[0x24C1995D0](a1, 0x20C4093837F09);
  return 0;
}

uint64_t OCExplicitFeedbackStart(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t OCExplicitFeedbackStop(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t OCExplicitFeedbackProcess(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int *a6, uint64_t a7, void *a8, uint64_t a9)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (a9)
  {
    _ZF = a6 == 0;
  }

  else
  {
    _ZF = 1;
  }

  if (_ZF || *a1 == 0)
  {
    return 4294967294;
  }

  if (a4)
  {
    v11 = a1;
    v12 = a6;
    v13 = a8;
    v14 = a7;
    v15 = a5;
    v16 = a4;
    v17 = a3;
    v18 = a2;
    v19 = sub_246104370(a4);
    a2 = v18;
    a3 = v17;
    a4 = v16;
    a5 = v15;
    a7 = v14;
    a8 = v13;
    a6 = v12;
    v20 = v19;
    a1 = v11;
    if (!v20)
    {
      return 4294967294;
    }
  }

  if (a5)
  {
    v21 = *a5;
    v22 = *(a5 + 16);
    v23 = *(a5 + 32);
    v24 = *(MEMORY[0x277D860B0] + 16);
    v25 = *(MEMORY[0x277D860B0] + 32);
    v26 = vdupq_n_s32(0x38D1B717u);
    v27 = vandq_s8(vandq_s8(vcgeq_f32(v26, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v21, *v21.f32, 1), v22, *v22.f32, 1), v23, *v23.f32, 1), v24)), vcgeq_f32(v26, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v21, v21.f32[0]), v22, v22.f32[0]), v23, v23.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v26, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v21, v21, 2), v22, v22, 2), v23, v23, 2), v25)));
    v27.i32[3] = v27.i32[2];
    if ((vminvq_u32(v27) & 0x80000000) == 0)
    {
      return 4294967294;
    }

    v28 = vzip1q_s32(vzip2q_s32(v21, v23), vdupq_laneq_s32(v22, 2));
    v29 = vtrn2q_s32(v21, v22);
    v29.i32[2] = HIDWORD(*(a5 + 32));
    v30 = vzip1q_s32(vzip1q_s32(v21, v23), v22);
    v31 = vandq_s8(vandq_s8(vcgeq_f32(v26, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v22.f32[0]), v29, *v22.f32, 1), v28, v22, 2), v24)), vcgeq_f32(v26, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v21.f32[0]), v29, *v21.f32, 1), v28, v21, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v26, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v23.f32[0]), v29, *v23.f32, 1), v28, v23, 2), v25)));
    v31.i32[3] = v31.i32[2];
    if ((vminvq_u32(v31) & 0x80000000) == 0)
    {
      return 4294967294;
    }

    v32 = vmulq_f32(v21, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL))), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL), vextq_s8(vextq_s8(v22, v22, 0xCuLL), v22, 8uLL)));
    if (fabsf((v32.f32[2] + vaddv_f32(*v32.f32)) + -1.0) > 0.000011)
    {
      return 4294967294;
    }

    v33 = vabs_f32(vzip2_s32(*&vextq_s8(v21, v21, 8uLL), *&vextq_s8(v22, v22, 8uLL)));
    v34 = vdup_n_s32(0x38D1B717u);
    v35 = vand_s8(vcge_f32(v34, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v23, v23, 8uLL), *&vextq_s8(*(a5 + 48), *(a5 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v34, v33));
    if ((vpmin_u32(v35, v35).u32[0] & 0x80000000) == 0)
    {
      return 4294967294;
    }
  }

  if (a3)
  {
    if (!*a3)
    {
      return 4294967294;
    }

    v36 = a2;
    v37 = a3;
    v38 = a1;
    v39 = a4;
    v40 = a5;
    v41 = a7;
    v42 = a8;
    v43 = a6;
    if (MEMORY[0x24C199040](*a3) != 2021227107)
    {
      return 4294967294;
    }

    v44 = sub_246104370((v37 + 2));
    a3 = v37;
    v45 = v44;
    a6 = v43;
    a8 = v42;
    a7 = v41;
    a5 = v40;
    a4 = v39;
    a1 = v38;
    a2 = v36;
    if (!v45)
    {
      return 4294967294;
    }
  }

  v94 = a7;
  v95 = a8;
  v96 = a6;
  v46 = a3;
  v47 = a1;
  v48 = a4;
  v49 = a5;
  v50 = *(a2 + 152);
  v51 = *(a2 + 144);
  v101 = *a2;
  v52 = *(a2 + 48);
  v103 = *(a2 + 32);
  v104 = v52;
  v53 = MEMORY[0x277D860B0];
  v54 = *MEMORY[0x277D860B0];
  v55 = *(MEMORY[0x277D860B0] + 16);
  v56 = *(a2 + 80);
  v105 = *(a2 + 64);
  v106 = v54;
  v57 = *(MEMORY[0x277D860B0] + 32);
  v107 = v55;
  v108 = v57;
  v58 = *(a2 + 128);
  v59 = *(a2 + 96);
  v111 = *(a2 + 112);
  v112 = v58;
  v60 = a2;
  v102 = *(a2 + 8);
  v109 = v56;
  v110 = v59;
  v114 = v50;
  v115 = v51;
  v118 = 0;
  v119.columns[2] = v111;
  v119.columns[3] = v112;
  v119.columns[0] = v56;
  v119.columns[1] = v59;
  v113 = __invert_f4(v119);
  Width = CVPixelBufferGetWidth(v101);
  v116 = Width;
  Height = CVPixelBufferGetHeight(v101);
  if (v102)
  {
    HIDWORD(Height) = CVPixelBufferGetWidth(v102);
    v118 = CVPixelBufferGetHeight(v102);
    v62 = HIDWORD(Height) / Width;
    v63 = *(v60 + 32) * v62;
    v64 = *(v60 + 52) * v62;
    v65 = *v53;
    v66 = v53[1];
    DWORD2(v106) = *(v53 + 1);
    *&v65 = v63;
    v67 = *(v60 + 64);
    DWORD2(v107) = DWORD2(v66);
    *(&v66 + 1) = v64;
    *&v106 = v65;
    *&v107 = v66;
    DWORD2(v108) = *(v53 + 10);
    *&v108 = vmul_n_f32(*&v67, v62);
  }

  v98[0] = 0;
  v99 = -1082130432;
  __asm { FMOV            V0.2D, #-1.0 }

  v100 = _Q0;
  if (v46)
  {
    v72 = v46;
    memset(v97, 0, 32);
    v73 = *v46;
    if (*v46 && ((v74 = MEMORY[0x24C199040](*v46), v74 != 1278227250) ? (v75 = v74 == 2021227107) : (v75 = 1), !v75 ? (v76 = 0) : (v76 = v74), v76 != 2021227107 ? (v77 = 4 * (v76 == 1278227250)) : (v77 = 48), (v78 = MEMORY[0x24C199040](v73), v78 != 2021227107) && v78 != 1278227250 ? (DataSize = 0) : (DataSize = CVDataBufferGetDataSize()), v72 = v46, v77))
    {
      v83 = DataSize / v77;
    }

    else
    {
      LODWORD(v83) = 0;
    }

    LODWORD(v97[0]) = v83;
    v84 = v72;
    *(&v97[0] + 1) = OCDataBufferGetBaseAddress(*v72);
    v85 = *(v84 + 2);
    v97[2] = *(v84 + 1);
    v97[3] = v85;
    v86 = *(v84 + 4);
    v97[4] = *(v84 + 3);
    v97[5] = v86;
    v81 = *v47;
    v82 = v97;
  }

  else
  {
    v81 = *v47;
    v82 = 0;
  }

  v87 = sub_2460D545C(v81, &v101, v82, v48, v49, v94, v95, v98);
  v90 = v99;
  *a9 = v98[0];
  *(a9 + 4) = v90;
  *(a9 + 8) = v100;
  v91 = v87 == 1;
  *v96 = v91;
  if (HIDWORD(v87) == 1)
  {
    v92 = 2;
  }

  else
  {
    if (HIDWORD(v87) != 2)
    {
      goto LABEL_49;
    }

    v92 = 32;
  }

  v91 |= v92;
  *v96 = v91;
LABEL_49:
  if (v89 == 2)
  {
    v93 = 4;
    goto LABEL_53;
  }

  if (v89 == 1)
  {
    v93 = 8;
LABEL_53:
    v91 |= v93;
    *v96 = v91;
  }

  if (v88 == 1)
  {
    *v96 = v91 | 0x10;
  }

  return 0;
}

uint64_t OCFrameSelectionCreate(uint64_t a1, uint64_t a2)
{
  result = 4294967294;
  if (a1)
  {
    if (a2)
    {
      operator new();
    }
  }

  return result;
}

void sub_2460D9A1C(_Unwind_Exception *a1)
{
  __cxa_guard_abort(&qword_27EE3F718);
  MEMORY[0x24C1995D0](v1, v2);
  _Unwind_Resume(a1);
}

uint64_t OCFrameSelectionStart(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  result = 0;
  v3.i64[0] = 0x80000000800000;
  v3.i64[1] = 0x80000000800000;
  v4 = vnegq_f32(v3);
  *(a1 + 8) = v4;
  *(a1 + 24) = v4;
  *(a1 + 40) = vneg_f32(0x80000000800000);
  *(a1 + 48) = 0;
  return result;
}

BOOL OCFrameSelectionIsSharpFrame(uint64_t a1, CVPixelBufferRef pixelBuffer, float *a3, double a4, double a5, double a6, double a7)
{
  result = 0;
  if (a1 && pixelBuffer)
  {
    if (*a1)
    {
      v9 = a3;
      Width = CVPixelBufferGetWidth(pixelBuffer);
      Height = CVPixelBufferGetHeight(pixelBuffer);
      (***a1)(*a1, pixelBuffer, (a4 * (Width + -1.0) + 0.5), (a5 * (Height + -1.0) + 0.5), a6, a7);
      a3 = v9;
    }

    else
    {
      v17 = 0.0;
    }

    v18 = *(a1 + 48);
    *(a1 + 8 + 4 * v18) = v17;
    *(a1 + 48) = (v18 + 1) % 0xAu;
    v19 = *(a1 + 24);
    v80[0] = *(a1 + 8);
    v80[1] = v19;
    v81 = *(a1 + 40);
    v20 = v80;
    v21 = &v82;
    do
    {
      v22 = (v21 - v20) >> 2;
      if (v22 < 2)
      {
        break;
      }

      if (v22 == 3)
      {
        v62 = v20[1];
        v63 = *(v21 - 1);
        if (v62 > v63)
        {
          v64 = *(v20 + 1);
        }

        else
        {
          v64 = *(v21 - 1);
        }

        if (v62 > v63)
        {
          v62 = *(v21 - 1);
        }

        *(v21 - 1) = v62;
        *(v20 + 1) = v64;
        v65 = *(v21 - 1);
        if (v65 > *v20)
        {
          v66 = *(v21 - 1);
        }

        else
        {
          v66 = *v20;
        }

        if (v65 > *v20)
        {
          v65 = *v20;
        }

        *(v21 - 1) = v65;
        v68 = *v20;
        v67 = v20[1];
        if (v66 <= v67)
        {
          v68 = v20[1];
          v67 = v66;
        }

        *v20 = v68;
        v20[1] = v67;
        break;
      }

      if (v22 == 2)
      {
        v69 = *(v21 - 1);
        v70 = *v20;
        if (v69 > *v20)
        {
          *v20 = v69;
          *(v21 - 1) = v70;
        }

        break;
      }

      if (v22 <= 7)
      {
        while (v20 != (v21 - 4))
        {
          v72 = v20++;
          if (v72 != v21 && v20 != v21)
          {
            v73 = *v72;
            v74 = *v72;
            v75 = v20;
            v76 = v72;
            v77 = v20;
            do
            {
              v78 = *v77++;
              v79 = v78;
              if (v78 > v74)
              {
                v74 = v79;
                v76 = v75;
              }

              v75 = v77;
            }

            while (v77 != v21);
            if (v76 != v72)
            {
              *v72 = *v76;
              *v76 = v73;
            }
          }
        }

        break;
      }

      v23 = &v20[v22 >> 1];
      v24 = *v23;
      v25 = (v21 - 4);
      v26 = *(v21 - 1);
      if (*v23 > v26)
      {
        v27 = *v23;
      }

      else
      {
        v27 = *(v21 - 1);
      }

      if (*v23 > v26)
      {
        v28 = *(v21 - 1);
      }

      else
      {
        v28 = *v23;
      }

      *v25 = v28;
      *v23 = v27;
      v29 = *v25;
      v30 = *v25 <= *v20;
      if (*v25 > *v20)
      {
        v31 = *v25;
      }

      else
      {
        v31 = *v20;
      }

      if (*v25 > *v20)
      {
        v29 = *v20;
      }

      *v25 = v29;
      v32 = *v23;
      v33 = v31 <= *v23;
      if (v31 > *v23)
      {
        v32 = *v20;
      }

      *v20 = v32;
      v34 = *v23;
      if (v33)
      {
        v34 = v31;
        v30 = 1;
      }

      *v23 = v34;
      if (v24 <= v26)
      {
        v30 = 1;
      }

      v35 = *v20;
      if (*v20 > v34)
      {
LABEL_36:
        v40 = v20 + 1;
        if (v20 + 1 >= v25)
        {
          v43 = v20 + 1;
        }

        else
        {
          v41 = v20 + 1;
          while (1)
          {
            v42 = *v23;
            do
            {
              v43 = v41;
              v44 = *v41++;
              v45 = v44;
            }

            while (v44 > v42);
            do
            {
              v46 = *--v25;
              v47 = v46;
            }

            while (v46 <= v42);
            if (v43 >= v25)
            {
              break;
            }

            *v43 = v47;
            *v25 = v45;
            ++v30;
            if (v23 == v43)
            {
              v23 = v25;
            }
          }
        }

        if (v43 != v23)
        {
          v48 = *v43;
          if (*v23 > *v43)
          {
            *v43 = *v23;
            *v23 = v48;
            ++v30;
          }
        }

        if (v43 == (v80 + 4))
        {
          break;
        }

        if (!v30)
        {
          if (v43 <= v80 + 1)
          {
            v54 = v43 + 1;
            while (v54 != v21)
            {
              v56 = *(v54 - 1);
              v55 = *v54++;
              if (v55 > v56)
              {
                goto LABEL_51;
              }
            }
          }

          else
          {
            while (v40 != v43)
            {
              v51 = *(v40 - 1);
              v50 = *v40++;
              if (v50 > v51)
              {
                goto LABEL_51;
              }
            }
          }

          break;
        }

LABEL_51:
        if (v43 <= v80 + 1)
        {
          v49 = v43 + 1;
        }

        else
        {
          v49 = v20;
        }

        if (v43 > v80 + 1)
        {
          v21 = v43;
        }
      }

      else
      {
        v36 = (v21 - 8);
        while (v36 != v20)
        {
          v37 = v36;
          v38 = *v36--;
          v39 = v38;
          if (v38 > v34)
          {
            *v20 = v39;
            *v37 = v35;
            if (v30)
            {
              v30 = 2;
            }

            else
            {
              v30 = 1;
            }

            v25 = v37;
            goto LABEL_36;
          }
        }

        v52 = v20 + 1;
        if (v35 <= *v25)
        {
          if (v52 == v25)
          {
            break;
          }

          while (1)
          {
            v53 = *v52;
            if (v35 > *v52)
            {
              break;
            }

            if (++v52 == v25)
            {
              goto LABEL_96;
            }
          }

          *v52++ = *v25;
          *v25 = v53;
        }

        if (v52 == v25)
        {
          break;
        }

        while (1)
        {
          v57 = *v20;
          do
          {
            v49 = v52;
            v58 = *v52++;
            v59 = v58;
          }

          while (v57 <= v58);
          do
          {
            v60 = *--v25;
            v61 = v60;
          }

          while (v57 > v60);
          if (v49 >= v25)
          {
            break;
          }

          *v49 = v61;
          *v25 = v59;
        }

        if (v49 > v80 + 1)
        {
          break;
        }
      }

      v20 = v49;
    }

    while (v21 != v80 + 4);
LABEL_96:
    v71 = *(v80 + 1);
    if (a3)
    {
      *a3 = v17;
      a3[1] = v71;
    }

    return v17 >= v71;
  }

  return result;
}

double OCFrameSelectionCalculateImageSharpness(void (****a1)(void), CVPixelBufferRef pixelBuffer)
{
  if (!a1 || !pixelBuffer || !*a1)
  {
    return 0.0;
  }

  CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  v4 = ***a1;

  v4();
  return result;
}

uint64_t OCFrameSelectionStop(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCFrameSelectionDestroy(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (*a1)
  {
    v1 = a1;
    (*(**a1 + 16))(*a1);
    a1 = v1;
  }

  MEMORY[0x24C1995D0](a1, 0x1020C403357C6A3);
  return 0;
}

BOOL OCNonModularSPI_CoreAppleCVA_isSimilarSE3(simd_float4x4 a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float a6)
{
  v27 = __invert_f4(a1);
  v26[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], a2.f32[0]), v27.columns[1], *a2.f32, 1), v27.columns[2], a2, 2), v27.columns[3], a2, 3);
  v26[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], a3.f32[0]), v27.columns[1], *a3.f32, 1), v27.columns[2], a3, 2), v27.columns[3], a3, 3);
  v26[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], a4.f32[0]), v27.columns[1], *a4.f32, 1), v27.columns[2], a4, 2), v27.columns[3], a4, 3);
  v26[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27.columns[0], a5.f32[0]), v27.columns[1], *a5.f32, 1), v27.columns[2], a5, 2), v27.columns[3], a5, 3);
  v25[0] = v26;
  v25[1] = 4;
  sub_2460DA1EC(&v21, v25);
  v14 = vmul_f32(v22, v22);
  v15 = vmul_f32(v24, v24);
  return sqrtf((((v21 * v21) + v14.f32[0]) + v14.f32[1]) + (((v23 * v23) + v15.f32[0]) + v15.f32[1])) < a6;
}

void sub_2460DA1EC(uint64_t a1, float **a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  v4 = *a2;
  v3 = a2[1];
  v5 = (*a2)[(v3 + 2)];
  v6 = (*a2)[(2 * v3) | 1];
  v7 = (v5 - v6) * 0.5;
  v8 = &(*a2)[(2 * v3)];
  v9 = (*a2)[1];
  v10 = (*a2)[2];
  v11 = (v8->f32[0] - v10) * 0.5;
  v12 = (*a2)[v3];
  v13 = **a2;
  v14 = (*a2)[(v3 + 1)];
  v15 = (v9 - v12) * 0.5;
  v16 = (*a2)[(2 * v3 + 2)];
  v17 = -1.0;
  v18 = (((v13 + v14) + v16) + -1.0) * 0.5;
  v19 = ((v11 * v11) + (v7 * v7)) + (v15 * v15);
  if (v18 >= -1.0 || (v18 + 1.0) <= -0.00001)
  {
    v22 = (v18 + -1.0) < 0.00001 && v18 > 1.0;
    if (v18 > 0.99 || v22)
    {
      v25 = (v19 * ((v19 * (((v19 * 5.0) / 112.0) + 0.075)) + 0.16667)) + 1.0;
      v26.f32[0] = v7 * v25;
      v27 = v11 * v25;
    }

    else
    {
      if (v18 <= -0.99)
      {
        v17 = (((v13 + v14) + v16) + -1.0) * 0.5;
        goto LABEL_19;
      }

      v23 = (v5 - v6) * 0.5;
      v24 = (v8->f32[0] - v10) * 0.5;
      v25 = acosf(v18) / sqrtf(v19);
      v26.f32[0] = v23 * v25;
      v27 = v24 * v25;
    }

    *a1 = v26.i32[0];
    *(a1 + 4) = v27;
    v28 = v15 * v25;
    *(a1 + 8) = v15 * v25;
    goto LABEL_38;
  }

LABEL_19:
  v61 = v8->f32[0];
  v62 = (*a2)[v3];
  v64 = (*a2)[(v3 + 2)];
  v65 = (*a2)[2];
  v59 = (v8->f32[0] - v10) * 0.5;
  v60 = (v5 - v6) * 0.5;
  v63 = (v9 - v12) * 0.5;
  v29 = (*a2)[(2 * v3) | 1];
  v30 = asinf(sqrtf(v19));
  v31 = ((3.1416 - v30) * (3.1416 - v30)) / (1.0 - v17);
  v32 = (v13 - v17) * v31;
  v33 = (v14 - v17) * v31;
  v34 = (v16 - v17) * v31;
  if (v32 <= v33)
  {
    v38 = v31 * 0.5;
    v39.f32[0] = v65;
    if (v33 <= v34)
    {
      v42 = sqrtf(v34);
      if (v63 >= 0.0)
      {
        v28 = v42;
      }

      else
      {
        v28 = -v42;
      }

      *(a1 + 8) = v28;
      v39.f32[1] = v64;
      v26 = vmul_n_f32(vmul_n_f32(vadd_f32(*v8, v39), v38), 1.0 / v28);
      *a1 = v26;
      v27 = v26.f32[1];
    }

    else
    {
      v40 = sqrtf(v33);
      if (v59 >= 0.0)
      {
        v27 = v40;
      }

      else
      {
        v27 = -v40;
      }

      v26.f32[0] = (1.0 / v27) * (v38 * (v62 + v9));
      *a1 = v26.i32[0];
      *(a1 + 4) = v27;
      v28 = (1.0 / v27) * (v38 * (v29 + v64));
      *(a1 + 8) = v28;
    }
  }

  else
  {
    v35 = v31 * 0.5;
    v36 = (v31 * 0.5) * (v61 + v65);
    if (v32 <= v34)
    {
      v41 = sqrtf(v34);
      if (v63 >= 0.0)
      {
        v28 = v41;
      }

      else
      {
        v28 = -v41;
      }

      v26.f32[0] = (1.0 / v28) * v36;
      v27 = (1.0 / v28) * (v35 * (v29 + v64));
      *a1 = v26.i32[0];
      *(a1 + 4) = v27;
      *(a1 + 8) = v28;
    }

    else
    {
      v37 = sqrtf(v32);
      if (v60 >= 0.0)
      {
        v26.f32[0] = v37;
      }

      else
      {
        v26.f32[0] = -v37;
      }

      v27 = (1.0 / v26.f32[0]) * (v35 * (v62 + v9));
      *a1 = v26.i32[0];
      *(a1 + 4) = v27;
      v28 = (1.0 / v26.f32[0]) * v36;
      *(a1 + 8) = v28;
    }
  }

LABEL_38:
  v43 = ((v26.f32[0] * v26.f32[0]) + (v27 * v27)) + (v28 * v28);
  if (v43 >= 0.0061)
  {
    v47 = sqrtf(v43);
    v66 = v26.i32[0];
    v48 = __sincosf_stret(v47);
    v26.i32[0] = v66;
    v46 = v48.__sinval / v47;
    v44 = (1.0 / v43) * (1.0 - v48.__cosval);
    v45 = (1.0 / v43) * (1.0 - (v48.__sinval / v47));
  }

  else
  {
    v44 = 0.5 - (v43 * ((v43 / -720.0) + 0.041667));
    v45 = 0.16667 - (v43 * ((v43 / -5040.0) + 0.0083333));
    v46 = 1.0 - (v43 * v45);
  }

  if (v43 >= 0.00000149)
  {
    if (v43 <= 9.0)
    {
      v49 = -(v45 - (v44 * 0.5)) / v46;
    }

    else
    {
      v49 = (v44 + (v46 * -0.5)) / (v43 * v44);
    }
  }

  else
  {
    v49 = ((v43 * 0.0013889) + 0.083333) + (v43 * 0.000033069);
  }

  v50 = &v4[(3 * v3 + HIDWORD(v3)) - HIDWORD(v3)];
  v51 = v50->f32[1];
  v52 = v50[1].f32[0];
  v53 = (v27 * v52) - (v28 * v51);
  v67 = v53;
  *v68.i32 = (v28 * v50->f32[0]) - (v26.f32[0] * v52);
  *&v68.i32[1] = (v26.f32[0] * v51) - (v27 * v50->f32[0]);
  v54 = *(a1 + 4);
  v55.i32[0] = vdup_lane_s32(v54, 1).u32[0];
  v55.i32[1] = *a1;
  v56 = vneg_f32(v55);
  v55.i32[0] = vdup_lane_s32(v68, 1).u32[0];
  v55.f32[1] = v53;
  v57 = vadd_f32(vadd_f32(*v50, vmul_f32(*&v67, 0xBF000000BF000000)), vmul_n_f32(vmla_f32(vmul_f32(v68, v56), v55, v54), v49));
  v58 = (v49 * ((*a1 * *v68.i32) - (v54.f32[0] * v53))) + (v52 + (*&v68.i32[1] * -0.5));
  *(a1 + 12) = v57;
  *(a1 + 20) = v58;
}

__n128 OCNonModularSPI_CoreAppleCVA_meanSE3(__n128 a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v48[0] = a1;
  v48[1] = a2;
  v48[2] = a3;
  v48[3] = a4;
  v47[0] = v48;
  v47[1] = 4;
  sub_2460DA1EC(&v45, v47);
  v44[0] = a5;
  v44[1] = a6;
  v44[2] = a7;
  v44[3] = a8;
  v43[0] = v44;
  v43[1] = 4;
  sub_2460DA1EC(&v41, v43);
  v8.i64[0] = 0x3F0000003F000000;
  v8.i64[1] = 0x3F0000003F000000;
  v40 = vmul_f32(vadd_f32(v46, v42), 0x3F0000003F000000);
  v35 = xmmword_24613FF80;
  v36 = unk_24613FF90;
  v10.i32[1] = unk_24613FFB4;
  v37 = xmmword_24613FFA0;
  v38 = unk_24613FFB0;
  v39 = vmulq_f32(vaddq_f32(v45, v41), v8);
  v9 = vmulq_f32(v39, v39);
  v10.f32[0] = vaddv_f32(*v9.f32) + v9.f32[2];
  __asm { FMOV            V9.2S, #1.0 }

  if (_NF)
  {
    v19 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(v10, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), v10, 0);
    v18 = vmls_lane_f32(_D9, v19, v10, 0);
  }

  else
  {
    v16 = sqrtf(v10.f32[0]);
    v33 = v10.f32[0];
    v17 = __sincosf_stret(v16);
    v18.f32[0] = v17.__cosval;
    v18.f32[1] = v17.__sinval / v16;
    v19 = vmul_n_f32(vsub_f32(_D9, v18), 1.0 / v33);
  }

  v49 = v18;
  v50 = v19;
  sub_2460DA9EC(&v39, &v49, &v35);
  v34 = v35;
  v35 = xmmword_24613FF80;
  v36 = unk_24613FF90;
  v21.i32[1] = 0;
  v37 = xmmword_24613FFA0;
  v38 = unk_24613FFB0;
  v20 = vmul_f32(*&v39.i32[1], *&v39.i32[1]);
  v21.f32[0] = ((v39.f32[0] * v39.f32[0]) + v20.f32[0]) + v20.f32[1];
  if (v21.f32[0] >= 0.0061)
  {
    v24 = sqrtf(v21.f32[0]);
    v29 = ((v39.f32[0] * v39.f32[0]) + v20.f32[0]) + v20.f32[1];
    v26 = __sincosf_stret(v24);
    v25.f32[0] = v26.__cosval;
    v25.f32[1] = v26.__sinval / v24;
    v22 = vmul_n_f32(vsub_f32(_D9, v25), 1.0 / v29);
    v23 = v25;
  }

  else
  {
    v22 = vmls_lane_f32(0x3E2AAAAB3F000000, vadd_f32(vdiv_f32(vdup_lane_s32(v21, 0), 0xC59D8000C4340000), 0x3C0888893D2AAAABLL), v21, 0);
    v23 = vmls_lane_f32(_D9, v22, v21, 0);
  }

  v49 = v23;
  v50 = v22;
  sub_2460DA9EC(&v39, &v49, &v35);
  return v34;
}

uint64_t sub_2460DA9EC(uint64_t result, float *a2, float32x2_t *a3)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[2];
  v6 = v5 * *result;
  v7 = v5 * *(result + 4);
  v8 = v5 * *(result + 8);
  a3->f32[0] = *a2 + (v6 * *result);
  a3[2].f32[1] = v3 + (v7 * *(result + 4));
  a3[5].f32[0] = v3 + (v8 * *(result + 8));
  v9 = *(result + 4);
  v10 = v6 * v9;
  v11 = *(result + 8);
  v12 = v6 * v11;
  v13 = v7 * v11;
  v14 = v4 * *result;
  v15 = v4 * v9;
  v16 = v4 * v11;
  a3[2].f32[0] = v10 - v16;
  a3[4].f32[0] = v15 + v12;
  a3[4].f32[1] = v13 - v14;
  a3->f32[1] = v10 + v16;
  a3[1].f32[0] = v12 - v15;
  a3[3].f32[0] = v13 + v14;
  v17 = *(result + 12);
  v18 = *(result + 16);
  v19.i32[0] = vdup_lane_s32(v18, 1).u32[0];
  v20 = *(result + 4);
  v19.f32[1] = v17;
  v21.i32[0] = vdup_lane_s32(v20, 1).u32[0];
  v21.i32[1] = *result;
  v22 = vsub_f32(vmul_f32(v20, v19), vmul_f32(v21, v18));
  v23 = (*result * v18.f32[0]) - (v17 * v20.f32[0]);
  v31.i32[0] = v22.i32[1];
  v31.f32[1] = v23;
  v25 = a2[2];
  v24 = a2[3];
  if (result == a3)
  {
    v27 = v18.f32[1] + (v25 * v23);
    v28 = *(result + 4);
    v29.i32[0] = vdup_lane_s32(v28, 1).u32[0];
    v29.i32[1] = *result;
    v30 = vadd_f32(vadd_f32(*(result + 12), vmul_n_f32(v22, v25)), vmul_n_f32(vmla_f32(vmul_f32(v31, vneg_f32(v29)), vzip1_s32(vdup_lane_s32(v31, 1), v22), v28), v24));
    v26 = (v24 * ((-v28.f32[0] * v22.f32[0]) + (*result * v31.f32[0]))) + v27;
    a3[6] = v30;
  }

  else
  {
    a3[6].f32[0] = (v17 + (v25 * v22.f32[0])) + (v24 * (vmuls_lane_f32(-*(result + 8), v22, 1) + (*(result + 4) * v23)));
    a3[6].f32[1] = (*(result + 16) + vmuls_lane_f32(v25, v22, 1)) + (v24 * ((*(result + 8) * v22.f32[0]) - (*result * v23)));
    v26 = (*(result + 20) + (v23 * v25)) + (v24 * ((*result * v22.f32[1]) - (*(result + 4) * v22.f32[0])));
  }

  a3[7].f32[0] = v26;
  return result;
}

void sub_2460DACC8(_Unwind_Exception *a1)
{
  sub_2460DACF0(v2);
  MEMORY[0x24C1995D0](v2, v1);
  _Unwind_Resume(a1);
}

void *sub_2460DACF0(void *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (!v2)
  {
    return a1;
  }

  v3 = v2[2];
  v4 = v2[3];
  if (v4 == v3)
  {
    v5 = v2 + 6;
    v11 = v2[2];
  }

  else
  {
    v5 = v2 + 6;
    v6 = v2[5];
    v7 = &v3[v6 / 0xAA];
    v8 = *v7 + 24 * v6 + -4080 * (v6 / 0xAA);
    v9 = v3[(v2[6] + v6) / 0xAA] + 24 * v2[6] + 24 * v6 + -4080 * ((v2[6] + v6) / 0xAA);
    if (v8 != v9)
    {
      do
      {
        sub_2460D3D4C(*(v8 + 8));
        v8 += 24;
        if (v8 - *v7 == 4080)
        {
          v10 = v7[1];
          ++v7;
          v8 = v10;
        }
      }

      while (v8 != v9);
      v3 = v2[2];
      v4 = v2[3];
    }

    v11 = v4;
  }

  *v5 = 0;
  v12 = v11 - v3;
  if (v12 >= 3)
  {
    do
    {
      operator delete(*v3);
      v4 = v2[3];
      v3 = (v2[2] + 8);
      v2[2] = v3;
      v12 = v4 - v3;
    }

    while (v12 > 2);
  }

  if (v12 == 1)
  {
    v13 = 85;
  }

  else
  {
    if (v12 != 2)
    {
      goto LABEL_18;
    }

    v13 = 170;
  }

  v2[5] = v13;
LABEL_18:
  if (v3 != v4)
  {
    do
    {
      v14 = *v3++;
      operator delete(v14);
    }

    while (v3 != v4);
    v16 = v2[2];
    v15 = v2[3];
    if (v15 != v16)
    {
      v2[3] = v15 + ((v16 - v15 + 7) & 0xFFFFFFFFFFFFFFF8);
    }
  }

  v17 = v2[1];
  if (v17)
  {
    operator delete(v17);
  }

  MEMORY[0x24C1995D0](v2, 0x1080C40E0B7A938);
  return a1;
}

void **sub_2460DAE90(void **result, void *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = v2[1];
    v2[1] = 0;
    if (v3)
    {
      MEMORY[0x24C1995D0](v3, 0x1000C40B794406BLL);
    }

    v4 = *v2;
    *v2 = 0;
    if (!v4)
    {
LABEL_28:

      JUMPOUT(0x24C1995D0);
    }

    v5 = v4[2];
    v6 = v4[3];
    if (v6 == v5)
    {
      v7 = v4 + 6;
      v6 = v4[2];
    }

    else
    {
      v7 = v4 + 6;
      v8 = v4[5];
      v9 = &v5[v8 / 0xAA];
      v10 = *v9 + 24 * v8 + -4080 * (v8 / 0xAA);
      v11 = v5[(v4[6] + v8) / 0xAA] + 24 * v4[6] + 24 * v8 + -4080 * ((v4[6] + v8) / 0xAA);
      if (v10 != v11)
      {
        do
        {
          sub_2460D3D4C(*(v10 + 8));
          v10 += 24;
          if (v10 - *v9 == 4080)
          {
            v12 = v9[1];
            ++v9;
            v10 = v12;
          }
        }

        while (v10 != v11);
        v5 = v4[2];
        v6 = v4[3];
      }
    }

    *v7 = 0;
    v13 = v6 - v5;
    if (v13 >= 3)
    {
      do
      {
        operator delete(*v5);
        v6 = v4[3];
        v5 = (v4[2] + 8);
        v4[2] = v5;
        v13 = v6 - v5;
      }

      while (v13 > 2);
    }

    if (v13 == 1)
    {
      v14 = 85;
    }

    else
    {
      if (v13 != 2)
      {
        goto LABEL_21;
      }

      v14 = 170;
    }

    v4[5] = v14;
LABEL_21:
    if (v5 != v6)
    {
      do
      {
        v15 = *v5++;
        operator delete(v15);
      }

      while (v5 != v6);
      v17 = v4[2];
      v16 = v4[3];
      if (v16 != v17)
      {
        v4[3] = v16 + ((v17 - v16 + 7) & 0xFFFFFFFFFFFFFFF8);
      }
    }

    v18 = v4[1];
    if (v18)
    {
      operator delete(v18);
    }

    MEMORY[0x24C1995D0](v4, 0x1080C40E0B7A938);
    goto LABEL_28;
  }

  return result;
}

uint64_t OCMaskingStart(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t OCMaskingCreateObjectVoxelsAndComputeBBox(float32x4_t *a1, uint64_t a2, __int128 *a3, uint64_t a4, float32x4_t *a5, uint64_t *a6, _DWORD *a7, uint64_t a8)
{
  v100 = *MEMORY[0x277D85DE8];
  kdebug_trace();
  result = 0xFFFFFFFFLL;
  if (a1)
  {
    if (a2)
    {
      if (a3)
      {
        v82 = a7;
        if (a4)
        {
          v81 = a1;
          v17 = MEMORY[0x24C199040](a4);
          v18 = v17 == 1278227250 || v17 == 2021227107;
          v19 = v18 ? v17 : 0;
          v20 = v19 == 2021227107 ? 48 : 4 * (v19 == 1278227250);
          v21 = a4;
          v22 = MEMORY[0x24C199040](a4);
          if (v22 == 2021227107 || v22 == 1278227250)
          {
            DataSize = CVDataBufferGetDataSize();
            result = 0xFFFFFFFFLL;
            if (!v20)
            {
              return result;
            }
          }

          else
          {
            DataSize = 0;
            result = 0xFFFFFFFFLL;
            if (!v20)
            {
              return result;
            }
          }

          if (a8 && a5 && v20 <= DataSize)
          {
            v79 = a8;
            v80 = a6;
            v24 = *a3;
            HIDWORD(v24) = 0;
            v93 = v24;
            v94 = 0;
            v95 = 0;
            v25 = *(a2 + 104);
            *__p = 0u;
            v99 = 0u;
            v26 = *(a2 + 16);
            v97[3] = *a2;
            v97[4] = v26;
            v27 = *(a2 + 48);
            v97[5] = *(a2 + 32);
            v97[6] = v27;
            v28 = *(a2 + 64);
            v29 = *(a2 + 80);
            v96 = xmmword_24613FA50;
            v97[0] = v28;
            v97[1] = v29;
            if (v25)
            {
              operator new();
            }

            v30 = *a2;
            v31 = *(a2 + 16);
            v32 = *(a2 + 32);
            v33 = *(a2 + 48);
            v34 = vmlaq_f32(vmlaq_f32(vaddq_f32(v31, vmulq_f32(*a2, 0)), 0, v32), 0, v33);
            v97[2] = v34;
            v35 = vmulq_f32(v34, vaddq_f32(v33, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, v28.f32[0]), v31, *v28.f32, 1), v32, v28, 2)));
            v34.f32[3] = v35.f32[2] + vaddv_f32(*v35.f32);
            v97[7] = v34;
            v90 = 0;
            v91 = 0;
            v92 = 0;
            BaseAddress = OCDataBufferGetBaseAddress(a4);
            v37 = MEMORY[0x24C199040](a4);
            if (v37 == 1278227250 || v37 == 2021227107)
            {
              v39 = v37;
            }

            else
            {
              v39 = 0;
            }

            if (v39 == 2021227107)
            {
              v40 = 48;
            }

            else
            {
              v40 = 4 * (v39 == 1278227250);
            }

            v41 = MEMORY[0x24C199040](v21);
            if (v41 == 2021227107 || v41 == 1278227250)
            {
              v42 = CVDataBufferGetDataSize();
              if (!v40)
              {
                goto LABEL_42;
              }
            }

            else
            {
              v42 = 0;
              if (!v40)
              {
                goto LABEL_42;
              }
            }

            v43 = v42 / v40;
            if ((v42 / v40))
            {
              v44 = v43;
              sub_2460FDD5C(&v90, v43);
              v45 = v90;
              v46 = v90 + 2;
              v47 = a5[2];
              v48 = vmulq_f32(v47, v47);
              v48.f32[0] = vaddv_f32(*v48.f32);
              v49 = vrsqrte_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v48.f32[0]));
              v50 = vmul_f32(v49, vrsqrts_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v48.f32[0]), vmul_f32(v49, v49)));
              LODWORD(v51) = vmul_f32(v50, vrsqrts_f32(COERCE_UNSIGNED_INT(v48.f32[2] + v48.f32[0]), vmul_f32(v50, v50))).u32[0];
              v52 = a5[1];
              v53 = vmulq_f32(v52, v52);
              *&v54 = v53.f32[2] + vaddv_f32(*v53.f32);
              *v53.f32 = vrsqrte_f32(v54);
              *v53.f32 = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32)));
              v53.i32[0] = vmul_f32(*v53.f32, vrsqrts_f32(v54, vmul_f32(*v53.f32, *v53.f32))).u32[0];
              v55 = vmulq_f32(*a5, *a5);
              v48.f32[0] = v55.f32[2] + vaddv_f32(*v55.f32);
              *v55.f32 = vrsqrte_f32(v48.u32[0]);
              *v55.f32 = vmul_f32(*v55.f32, vrsqrts_f32(v48.u32[0], vmul_f32(*v55.f32, *v55.f32)));
              v55.i32[0] = vmul_f32(*v55.f32, vrsqrts_f32(v48.u32[0], vmul_f32(*v55.f32, *v55.f32))).u32[0];
              v56 = vmulq_n_f32(v47, v51);
              v57 = vmulq_n_f32(v52, v53.f32[0]);
              v58 = vmulq_n_f32(*a5, v55.f32[0]);
              v59 = BaseAddress + 2;
              v60.i64[0] = 0xFF000000FFLL;
              v60.i64[1] = 0xFF000000FFLL;
              v61 = vdupq_n_s32(0x437F0000u);
              do
              {
                *v62.f32 = vrndm_f32(*v59[-2].f32);
                v62.i64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(floorf(COERCE_FLOAT(v59[-2].i64[1]))));
                v63 = vaddq_f32(v62, xmmword_24613FA90);
                v46[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, v63.f32[0]), a5[1], *v63.f32, 1), a5[2], v63, 2), a5[3], v63, 3);
                v64 = v59[-1];
                v65 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v58, v64.f32[0]), v57, *v64.f32, 1), v56, v64, 2);
                v65.i32[3] = 0;
                v46[-1] = v65;
                v66 = v59->i32[0];
                v59 += 3;
                v64.i32[0] = v66;
                v65.i32[0] = vshrq_n_u32(v64, 0x18uLL).u32[0];
                v64.i32[1] = HIWORD(v66);
                v64.i32[2] = v66 >> 8;
                v64.i32[3] = v66;
                v67 = vandq_s8(v64, v60);
                v67.i32[0] = v65.i32[0];
                *v46 = vdivq_f32(vcvtq_f32_u32(v67), v61);
                v46 += 3;
                --v44;
              }

              while (v44);
              goto LABEL_43;
            }

LABEL_42:
            v45 = 0;
LABEL_43:
            v85 = 0;
            v84 = v45;
            v83 = -1431655765 * ((v91 - v45) >> 4);
            v68 = a5[1];
            v86 = *a5;
            v87 = v68;
            v69 = a5[3];
            v88 = a5[2];
            v89 = v69;
            if (sub_246123A08(v81->i64[0], &v83, v97, &v93, v79, v81[5].i64))
            {
              if (v80 && v82)
              {
                v70 = v81[5].i64[0];
                *v82 = (v81[5].i64[1] - v70) >> 2;
                *v80 = v70;
              }

              v71 = v81->i64[1];
              if (v71)
              {
                v72 = MEMORY[0x24C199040](v81->i64[1]);
                if (v72 == 2021227107 || v72 == 1278227250)
                {
                  CFRelease(v71);
                }
              }

              v73 = MEMORY[0x24C199040](v21);
              if (v73 == 2021227107 || v73 == 1278227250)
              {
                CFRetain(v21);
              }

              else
              {
                v21 = 0;
              }

              v81->i64[1] = v21;
              v74 = *a5;
              v75 = a5[1];
              v76 = a5[3];
              v81[3] = a5[2];
              v81[4] = v76;
              v81[1] = v74;
              v81[2] = v75;
              kdebug_trace();
              result = 0;
            }

            else
            {
              result = 0xFFFFFFFFLL;
            }

            if (v45)
            {
              v77 = result;
              operator delete(v45);
              result = v77;
            }

            if (__p[0])
            {
              __p[1] = __p[0];
              v78 = result;
              operator delete(__p[0]);
              return v78;
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2460DB6C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, void *__p, uint64_t a52)
{
  if (__p)
  {
    operator delete(__p);
    _Unwind_Resume(exception_object);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCMaskingComputeMaskFromObjectVoxels(uint64_t a1, __CVBuffer *a2, simd_float4x4 *a3, uint64_t a4, float32x4_t *a5, uint64_t a6, int a7, __CVBuffer *a8)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && a3)
  {
    if (a4 && ((v12 = a3, v13 = a2, v14 = a5, v15 = a6, v16 = MEMORY[0x24C199040](a4), v16 != 1278227250) ? (v17 = v16 == 2021227107) : (v17 = 1), !v17 ? (v18 = 0) : (v18 = v16), v18 != 2021227107 ? (v19 = 4 * (v18 == 1278227250)) : (v19 = 48), (v20 = MEMORY[0x24C199040](a4), v20 != 2021227107) && v20 != 1278227250 ? (DataSize = 0) : (DataSize = CVDataBufferGetDataSize()), a6 = v15, a5 = v14, a2 = v13, a3 = v12, v19))
    {
      v22 = v19 <= DataSize;
      result = 0xFFFFFFFFLL;
      if (!a8)
      {
        return result;
      }
    }

    else
    {
      v22 = 0;
      result = 0xFFFFFFFFLL;
      if (!a8)
      {
        return result;
      }
    }

    if (a7 && a6 && a5 && v22)
    {
      v23 = a5;
      v24 = a2;
      v63 = __invert_f4(*a3);
      v59 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v63.columns[0].f32[0]), xmmword_24613FAB0, *v63.columns[0].f32, 1), xmmword_24613FAC0, v63.columns[0], 2), xmmword_24613FA50, v63.columns[0], 3);
      v60 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v63.columns[1].f32[0]), xmmword_24613FAB0, *v63.columns[1].f32, 1), xmmword_24613FAC0, v63.columns[1], 2), xmmword_24613FA50, v63.columns[1], 3);
      v61 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v63.columns[2].f32[0]), xmmword_24613FAB0, *v63.columns[2].f32, 1), xmmword_24613FAC0, v63.columns[2], 2), xmmword_24613FA50, v63.columns[2], 3);
      v62 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v63.columns[3].f32[0]), xmmword_24613FAB0, *v63.columns[3].f32, 1), xmmword_24613FAC0, v63.columns[3], 2), xmmword_24613FA50, v63.columns[3], 3);
      if (sub_246102BA8(v24, a8, v58))
      {
        memset(__p, 0, sizeof(__p));
        BaseAddress = OCDataBufferGetBaseAddress(a4);
        if (!a4)
        {
          goto LABEL_47;
        }

        v26 = BaseAddress;
        v27 = MEMORY[0x24C199040](a4);
        if (v27 == 1278227250 || v27 == 2021227107)
        {
          v29 = v27;
        }

        else
        {
          v29 = 0;
        }

        if (v29 == 2021227107)
        {
          v30 = 48;
        }

        else
        {
          v30 = 4 * (v29 == 1278227250);
        }

        v31 = MEMORY[0x24C199040](a4);
        if (v31 == 2021227107 || v31 == 1278227250)
        {
          v32 = CVDataBufferGetDataSize();
          if (!v30)
          {
            goto LABEL_47;
          }
        }

        else
        {
          v32 = 0;
          if (!v30)
          {
            goto LABEL_47;
          }
        }

        v33 = v32 / v30;
        if ((v32 / v30))
        {
          v34 = v33;
          sub_2460FDD5C(__p, v33);
          v35 = (__p[0] + 32);
          v36 = v23[2];
          v37 = vmulq_f32(v36, v36);
          v37.f32[0] = vaddv_f32(*v37.f32);
          v38 = vrsqrte_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v37.f32[0]));
          v39 = vmul_f32(v38, vrsqrts_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v37.f32[0]), vmul_f32(v38, v38)));
          LODWORD(v40) = vmul_f32(v39, vrsqrts_f32(COERCE_UNSIGNED_INT(v37.f32[2] + v37.f32[0]), vmul_f32(v39, v39))).u32[0];
          v41 = v23[1];
          v42 = vmulq_f32(v41, v41);
          *&v43 = v42.f32[2] + vaddv_f32(*v42.f32);
          *v42.f32 = vrsqrte_f32(v43);
          *v42.f32 = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32)));
          v42.i32[0] = vmul_f32(*v42.f32, vrsqrts_f32(v43, vmul_f32(*v42.f32, *v42.f32))).u32[0];
          v44 = vmulq_f32(*v23, *v23);
          v37.f32[0] = v44.f32[2] + vaddv_f32(*v44.f32);
          *v44.f32 = vrsqrte_f32(v37.u32[0]);
          *v44.f32 = vmul_f32(*v44.f32, vrsqrts_f32(v37.u32[0], vmul_f32(*v44.f32, *v44.f32)));
          v44.i32[0] = vmul_f32(*v44.f32, vrsqrts_f32(v37.u32[0], vmul_f32(*v44.f32, *v44.f32))).u32[0];
          v45 = vmulq_n_f32(v36, v40);
          v46 = vmulq_n_f32(v41, v42.f32[0]);
          v47 = vmulq_n_f32(*v23, v44.f32[0]);
          v48 = v26 + 2;
          v49.i64[0] = 0xFF000000FFLL;
          v49.i64[1] = 0xFF000000FFLL;
          v50 = vdupq_n_s32(0x437F0000u);
          do
          {
            *v51.f32 = vrndm_f32(*v48[-2].f32);
            v51.i64[1] = __PAIR64__(1.0, COERCE_UNSIGNED_INT(floorf(COERCE_FLOAT(v48[-2].i64[1]))));
            v52 = vaddq_f32(v51, xmmword_24613FA90);
            v35[-2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*v23, v52.f32[0]), v23[1], *v52.f32, 1), v23[2], v52, 2), v23[3], v52, 3);
            v53 = v48[-1];
            v54 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v47, v53.f32[0]), v46, *v53.f32, 1), v45, v53, 2);
            v54.i32[3] = 0;
            v35[-1] = v54;
            v55 = v48->i32[0];
            v48 += 3;
            v53.i32[0] = v55;
            v54.i32[0] = vshrq_n_u32(v53, 0x18uLL).u32[0];
            v53.i32[1] = HIWORD(v55);
            v53.i32[2] = v55 >> 8;
            v53.i32[3] = v55;
            v56 = vandq_s8(v53, v49);
            v56.i32[0] = v54.i32[0];
            *v35 = vdivq_f32(vcvtq_f32_u32(v56), v50);
            v35 += 3;
            --v34;
          }

          while (v34);
        }

LABEL_47:
        CVPixelBufferLockBaseAddress(a8, 0);
        cva::imageViewFromPixelBuffer<unsigned char>();
      }

      return 0xFFFFFFFFLL;
    }
  }

  return result;
}

void sub_2460DBC6C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *__p, uint64_t a19)
{
  operator delete(v19);
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

uint64_t OCMaskingComputeMaskFromBoundingBox(uint64_t a1, __CVBuffer *a2, simd_float4x4 *a3, uint64_t a4, __CVBuffer *a5)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0xFFFFFFFFLL;
  if (a2 && a3 && a4 && a5)
  {
    v13 = __invert_f4(*a3);
    v9 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v13.columns[0].f32[0]), xmmword_24613FAB0, *v13.columns[0].f32, 1), xmmword_24613FAC0, v13.columns[0], 2), xmmword_24613FA50, v13.columns[0], 3);
    v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v13.columns[1].f32[0]), xmmword_24613FAB0, *v13.columns[1].f32, 1), xmmword_24613FAC0, v13.columns[1], 2), xmmword_24613FA50, v13.columns[1], 3);
    v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v13.columns[2].f32[0]), xmmword_24613FAB0, *v13.columns[2].f32, 1), xmmword_24613FAC0, v13.columns[2], 2), xmmword_24613FA50, v13.columns[2], 3);
    v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_24613FAA0, v13.columns[3].f32[0]), xmmword_24613FAB0, *v13.columns[3].f32, 1), xmmword_24613FAC0, v13.columns[3], 2), xmmword_24613FA50, v13.columns[3], 3);
    if (sub_246102BA8(a2, a5, v8))
    {
      CVPixelBufferLockBaseAddress(a5, 0);
      cva::imageViewFromPixelBuffer<unsigned char>();
    }

    return 0xFFFFFFFFLL;
  }

  return result;
}

uint64_t OCMaskingStop(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t OCMaskingDestroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    v3 = MEMORY[0x24C199040](*(a1 + 8));
    if (v3 == 2021227107 || v3 == 1278227250)
    {
      CFRelease(v2);
    }
  }

  v5 = *(a1 + 80);
  if (v5)
  {
    *(a1 + 88) = v5;
    operator delete(v5);
  }

  sub_2460DAE90(a1, 0);
  MEMORY[0x24C1995D0](a1, 0x1030C407D372109);
  return 0;
}

uint64_t OCMaskingGetDebugInfo(uint64_t a1, uint64_t a2)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  result = 0;
  *a2 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 64);
  *(a2 + 48) = *(a1 + 48);
  *(a2 + 64) = v6;
  *(a2 + 16) = v4;
  *(a2 + 32) = v5;
  v8 = *(a1 + 80);
  v7 = *(a1 + 88);
  *(a2 + 80) = v8;
  *(a2 + 88) = (v7 - v8) >> 2;
  return result;
}

uint64_t OCNonModularSPI_NSData_CreateDepthPointCloudDataBuffer(void *a1)
{
  v1 = a1;
  v4 = v1;
  if (v1)
  {
    buffer = 0;
    v5 = objc_msgSend_length(v1, v2, v3);
    if (!sub_2460D324C(1785950320, v5, &buffer))
    {
      BaseAddress = IOSurfaceGetBaseAddress(buffer);
      v9 = objc_msgSend_length(v4, v7, v8);
      objc_msgSend_getBytes_length_(v4, v10, BaseAddress, v9);
      CVDataBufferCreateWithIOSurface();
      CFRelease(buffer);
    }
  }

  return 0;
}

uint64_t OCNonModularSPI_CMPhoto_HeicWriteCreate(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (CMPhotoCompressionSessionCreate())
  {
    return 0xFFFFFFFFLL;
  }

  v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  result = 0;
  *v3 = 0;
  *a1 = v3;
  return result;
}

uint64_t OCNonModularSPI_CMPhoto_HeicWriteStart(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCNonModularSPI_CMPhoto_write(const void **a1, void *a2, uint64_t a3, uint64_t a4)
{
  v235 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = v6;
  v10 = 4294967294;
  if (a1 && v6 && objc_msgSend_isFileURL(v6, v7, v8))
  {
    v13 = objc_msgSend_pathExtension(v9, v11, v12);
    if (objc_msgSend_caseInsensitiveCompare_(v13, v14, @"HEIC"))
    {

      goto LABEL_144;
    }

    v15 = *a3;

    if (!v15)
    {
      v10 = 4294967294;
      goto LABEL_144;
    }

    v213 = 0u;
    v214 = 0u;
    v211 = 0u;
    v212 = 0u;
    if (!*a3)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v36 = qword_27EE3F1E0;
      if (os_log_type_enabled(qword_27EE3F1E0, OS_LOG_TYPE_ERROR))
      {
        *v217 = 0;
        _os_log_error_impl(&dword_2460CF000, v36, OS_LOG_TYPE_ERROR, "HEIC Serialization: Invalid imageData or imageDataInternal.", v217, 2u);
        v10 = 0xFFFFFFFFLL;
        goto LABEL_144;
      }

LABEL_131:
      v10 = 0xFFFFFFFFLL;
      goto LABEL_144;
    }

    v209 = *a3;
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v16 = qword_27EE3F1E0;
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEBUG))
    {
      *v217 = 0;
      _os_log_debug_impl(&dword_2460CF000, v16, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared shot image.", v217, 2u);
    }

    pixelBuffer = *(a3 + 24);
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v17 = qword_27EE3F1E0;
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEBUG))
    {
      *v217 = 0;
      _os_log_debug_impl(&dword_2460CF000, v17, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared shot depth data.", v217, 2u);
    }

    *&v211 = *(a3 + 32);
    v180 = v211;
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v18 = qword_27EE3F1E0;
    if (os_log_type_enabled(v18, OS_LOG_TYPE_DEBUG))
    {
      *v217 = 0;
      _os_log_debug_impl(&dword_2460CF000, v18, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared shot depth confidence data.", v217, 2u);
    }

    *(&v211 + 1) = *(a3 + 40);
    v179 = *(&v211 + 1);
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v19 = qword_27EE3F1E0;
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
    {
      *v217 = 0;
      _os_log_debug_impl(&dword_2460CF000, v19, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared object mask.", v217, 2u);
    }

    v20 = *(a3 + 16);
    Width = CVPixelBufferGetWidth(*a3);
    Height = CVPixelBufferGetHeight(*a3);
    *v217 = 0;
    v219 = 0u;
    *&v217[4] = v20;
    v218 = Width;
    *&v219 = Height;
    v23 = *(a3 + 160);
    v220 = *(a3 + 144);
    v221 = v23;
    v24 = *(a3 + 64);
    v25 = *(a3 + 80);
    v26 = *(a3 + 96);
    v27 = *(a3 + 112);
    v28 = vmulq_f32(v24, 0);
    __asm { FMOV            V6.4S, #-1.0 }

    v222 = *(a3 + 176);
    v223 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v24, 0, v25), 0, v26), 0, v27);
    v224 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v28, _Q6, v25), vdupq_n_s32(0xB3BBBD2E), v26), 0, v27);
    v225 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v28, vdupq_n_s32(0x33BBBD2Eu), v25), _Q6, v26), 0, v27);
    v226 = vaddq_f32(v27, vmlaq_f32(vmlaq_f32(v28, 0, v25), 0, v26));
    if (objc_msgSend_compare_options_(@"2.0.0", v34, *(a3 + 408), 64) == 1)
    {
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v35 = qword_27EE3F1E0;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf) = 0;
        _os_log_error_impl(&dword_2460CF000, v35, OS_LOG_TYPE_ERROR, "HEIC Serialization: NOT converting intrinsics and extrinsics into post-orientation camera coordinates since version requested to serialize is older than the version this was introduced!", &buf, 2u);
      }
    }

    else
    {
      sub_2460D06F8(1, v217);
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v35 = qword_27EE3F1E0;
      if (os_log_type_enabled(v35, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 67109120;
        DWORD1(buf) = v20;
        _os_log_impl(&dword_2460CF000, v35, OS_LOG_TYPE_INFO, "HEIC Serialization: Converting intrinsics and extrinsics into post-orientation camera coordinates per HEIC specification using orientation=%d", &buf, 8u);
      }
    }

    v200 = v222;
    v202 = v221;
    v198 = v220;
    v193 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v37, v38, *&v220);
    *&buf = v193;
    v188 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v39, v40, *&v202);
    *(&buf + 1) = v188;
    v183 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v41, v42, *&v200);
    v228 = v183;
    v45 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v43, v44, *(&v198 + 1));
    v229 = v45;
    v48 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v46, v47, *(&v202 + 1));
    v230 = v48;
    v51 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v49, v50, *(&v200 + 1));
    v231 = v51;
    v54 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v52, v53, *(&v198 + 2));
    v232 = v54;
    v57 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v55, v56, *(&v202 + 2));
    v233 = v57;
    v60 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v58, v59, *(&v200 + 2));
    v234 = v60;
    v199 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v61, &buf, 9);

    *&v213 = v199;
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v62 = qword_27EE3F1E0;
    if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2460CF000, v62, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared camera intrinsics.", &buf, 2u);
    }

    v189 = v224;
    v194 = v223;
    v184 = v225;
    v203 = v226;
    v65 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v63, v64, v226.f32[0]);
    *&buf = v65;
    v68 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v66, v67, v203.f32[1]);
    *(&buf + 1) = v68;
    v71 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v69, v70, v203.f32[2]);
    v228 = v71;
    v201 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v72, &buf, 3);

    *(&v213 + 1) = v201;
    *&v214 = sub_2460D0518(v194, v189, v184, v73, v74, v75);
    v182 = v214;
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v76 = qword_27EE3F1E0;
    if (os_log_type_enabled(v76, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2460CF000, v76, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared camera extrinsics.", &buf, 2u);
    }

    v77 = *(a3 + 8);
    *&v212 = v77;
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v78 = qword_27EE3F1E0;
    if (os_log_type_enabled(v78, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2460CF000, v78, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared image properties.", &buf, 2u);
    }

    *(&v212 + 1) = *(a3 + 448);
    theDict = *(&v212 + 1);
    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v79 = qword_27EE3F1E0;
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2460CF000, v79, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared XMP custom metadata.", &buf, 2u);
    }

    v80 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v208[0] = *(a3 + 128);
    v82 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v81, v208, 4);
    objc_msgSend_setObject_forKeyedSubscript_(v80, v83, v82, @"tag:apple.com,2023:ObjectCapture#CameraTrackingState");

    v85 = *(a3 + 192);
    if (v85)
    {
      v86 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v84, v85, 1, 0);
      objc_msgSend_setObject_forKeyedSubscript_(v80, v87, v86, @"tag:apple.com,2023:ObjectCapture#CameraCalibrationData");
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v88 = qword_27EE3F1E0;
      if (os_log_type_enabled(v88, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_2460CF000, v88, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared camera calibration data.", &buf, 2u);
      }
    }

    v204 = *(a3 + 272);
    v195 = *(a3 + 304);
    v185 = *(a3 + 288);
    v190 = *(a3 + 320);
    v89 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v84, 48);
    v90 = v89;
    v93 = objc_msgSend_mutableBytes(v89, v91, v92);
    v94 = v204;
    HIDWORD(v94) = v185.i32[0];
    *v93 = v94;
    *(v93 + 16) = vextq_s8(vextq_s8(v185, v185, 0xCuLL), v195, 8uLL);
    *(v93 + 32) = vextq_s8(vuzp1q_s32(v195, v195), v190, 0xCuLL);
    objc_msgSend_setObject_forKeyedSubscript_(v80, v95, v89, @"tag:apple.com,2023:ObjectCapture#ObjectTransform");

    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v96 = qword_27EE3F1E0;
    if (os_log_type_enabled(v96, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2460CF000, v96, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared object transform.", &buf, 2u);
    }

    v205 = *(a3 + 336);
    v196 = *(a3 + 368);
    v186 = *(a3 + 352);
    v191 = *(a3 + 384);
    v98 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v97, 48);
    v99 = v98;
    v102 = objc_msgSend_mutableBytes(v98, v100, v101);
    v103 = v205;
    HIDWORD(v103) = v186.i32[0];
    *v102 = v103;
    *(v102 + 16) = vextq_s8(vextq_s8(v186, v186, 0xCuLL), v196, 8uLL);
    *(v102 + 32) = vextq_s8(vuzp1q_s32(v196, v196), v191, 0xCuLL);
    objc_msgSend_setObject_forKeyedSubscript_(v80, v104, v98, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");

    if (qword_27EE3F1E8 != -1)
    {
      dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
    }

    v105 = qword_27EE3F1E0;
    if (os_log_type_enabled(v105, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(buf) = 0;
      _os_log_debug_impl(&dword_2460CF000, v105, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared bounding box transform.", &buf, 2u);
    }

    v107 = *(a3 + 400);
    if (v107)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v80, v106, v107, @"tag:apple.com,2023:ObjectCapture#RawFeaturePoints");
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v108 = qword_27EE3F1E0;
      if (os_log_type_enabled(v108, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_2460CF000, v108, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared raw feature points.", &buf, 2u);
      }
    }

    if (!*(a3 + 48))
    {
LABEL_85:
      v116 = *(a3 + 408);
      if (v116)
      {
        v117 = v116;
        v119 = objc_msgSend_dataUsingEncoding_(v117, v118, 4);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v120, v119, @"tag:apple.com,2023:ObjectCapture#BundleVersion");
        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v121 = qword_27EE3F1E0;
        if (os_log_type_enabled(v121, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_2460CF000, v121, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared heic version data.", &buf, 2u);
        }
      }

      if ((*(a3 + 416) & 0x80000000) == 0)
      {
        v122 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v106, a3 + 416, 4);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v123, v122, @"tag:apple.com,2023:ObjectCapture#SegmentID");

        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v124 = qword_27EE3F1E0;
        if (os_log_type_enabled(v124, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_2460CF000, v124, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared segment ID data.", &buf, 2u);
        }
      }

      v125 = *(a3 + 424);
      if (v125)
      {
        v126 = v125;
        v128 = objc_msgSend_dataUsingEncoding_(v126, v127, 4);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v129, v128, @"tag:apple.com,2024:ObjectCapture#SessionUUID");
        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v130 = qword_27EE3F1E0;
        if (os_log_type_enabled(v130, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_2460CF000, v130, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared session UUID data.", &buf, 2u);
        }
      }

      if ((*(a3 + 432) & 0x80000000) == 0)
      {
        v131 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v106, a3 + 432, 4);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v132, v131, @"tag:apple.com,2024:ObjectCapture#CaptureMode");

        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v133 = qword_27EE3F1E0;
        if (os_log_type_enabled(v133, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_2460CF000, v133, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared capture mode data.", &buf, 2u);
        }
      }

      if ((*(a3 + 436) & 0x80000000) == 0)
      {
        v134 = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v106, a3 + 436, 4);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v135, v134, @"tag:apple.com,2023:ObjectCapture#Feedback");

        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v136 = qword_27EE3F1E0;
        if (os_log_type_enabled(v136, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_2460CF000, v136, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared feedback data.", &buf, 2u);
        }
      }

      v206 = *(a3 + 208);
      v197 = *(a3 + 240);
      v187 = *(a3 + 224);
      v192 = *(a3 + 256);
      v137 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v106, 48);
      v138 = v137;
      v141 = objc_msgSend_mutableBytes(v137, v139, v140);
      v142 = v206;
      HIDWORD(v142) = v187.i32[0];
      *v141 = v142;
      *(v141 + 16) = vextq_s8(vextq_s8(v187, v187, 0xCuLL), v197, 8uLL);
      *(v141 + 32) = vextq_s8(vuzp1q_s32(v197, v197), v192, 0xCuLL);
      objc_msgSend_setObject_forKeyedSubscript_(v80, v143, v137, @"tag:apple.com,2023:ObjectCapture#WideToDepthCameraTransform");

      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v144 = qword_27EE3F1E0;
      if (os_log_type_enabled(v144, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_2460CF000, v144, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared wide to depth camera transform.", &buf, 2u);
      }

      v145 = *(a3 + 440);
      if (v145)
      {
        v146 = v145;
        v148 = objc_msgSend_archivedDataWithRootObject_requiringSecureCoding_error_(MEMORY[0x277CCAAB0], v147, v146, 1, 0);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v149, v148, @"tag:apple.com,2023:ObjectCapture#TemporalDepthPointClouds");
        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v150 = qword_27EE3F1E0;
        if (os_log_type_enabled(v150, OS_LOG_TYPE_DEBUG))
        {
          v174 = objc_msgSend_count(v146, v151, v152);
          LODWORD(buf) = 134217984;
          *(&buf + 4) = v174;
          _os_log_debug_impl(&dword_2460CF000, v150, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared %lu frames of temporal LiDAR point cloud data.", &buf, 0xCu);
        }
      }

      v153 = v80;
      *(&v214 + 1) = v153;
      if (qword_27EE3F1E8 != -1)
      {
        dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
      }

      v154 = qword_27EE3F1E0;
      if (os_log_type_enabled(v154, OS_LOG_TYPE_DEBUG))
      {
        LOWORD(buf) = 0;
        _os_log_debug_impl(&dword_2460CF000, v154, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared HEIF custom metadata.", &buf, 2u);
      }

      v155 = *a1;
      v156 = *MEMORY[0x277CF6CD8];
      v215[0] = *MEMORY[0x277CF6CE0];
      v215[1] = v156;
      v216[0] = &unk_2858EE540;
      v216[1] = &unk_2858EE558;
      v215[2] = *MEMORY[0x277CF6CD0];
      v216[2] = v9;
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v157, v216, v215, 3);
      if (CMPhotoCompressionSessionOpenEmptyContainer())
      {
        CFRelease(v155);
        sub_2460D0F50(&v209);
        goto LABEL_131;
      }

      if (!CMPhotoCompressionSessionIsContainerOpen())
      {
        v175 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v158, v159);
        v177 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v176, "OCReturn OCNonModularSPI_CMPhoto_write(const OCHeicWriteHandle, const NSURL *__strong, const OCImageData *, size_t)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v175, v178, v177, @"CMPhoto+NonModularSPI.m", 637, @"Failed to open the compression session container to write.");
      }

      *v208 = 0;
      v160 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v158, v159);
      v161 = *MEMORY[0x277CF6CF0];
      objc_msgSend_setObject_forKeyedSubscript_(v160, v162, &unk_2858EE570, *MEMORY[0x277CF6CF0]);
      if (v199)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v160, v163, v199, *MEMORY[0x277CF6D18]);
      }

      if (v201 && v182)
      {
        objc_msgSend_setObject_forKeyedSubscript_(v160, v163, v201, *MEMORY[0x277CF6CF8]);
        objc_msgSend_setObject_forKeyedSubscript_(v160, v164, v182, *MEMORY[0x277CF6D00]);
      }

      if (v77)
      {
        Value = CFDictionaryGetValue(v77, *MEMORY[0x277CD3410]);
        objc_msgSend_setObject_forKeyedSubscript_(v160, v166, Value, *MEMORY[0x277CF6D10]);
      }

      objc_msgSend_setObject_forKeyedSubscript_(v160, v163, MEMORY[0x277CBEC38], *MEMORY[0x277CF6D58]);
      v167 = CMPhotoCompressionSessionAddImage() == 0;

      if (!v167)
      {
        goto LABEL_142;
      }

      v170 = v208[0];
      if (a4)
      {
        *&buf = *MEMORY[0x277CF6D20];
        v171 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v168, a4);
        *(&buf + 1) = v161;
        *v217 = v171;
        v218 = COERCE_DOUBLE(&unk_2858EE570);
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v172, v217, &buf, 2);
        v173 = CMPhotoCompressionSessionAddThumbnail() == 0;

        if (!v173)
        {
          goto LABEL_142;
        }

        v170 = v208[0];
      }

      if (v77)
      {
        if (CMPhotoCompressionSessionAddMetadataFromImageProperties())
        {
          goto LABEL_142;
        }

        v170 = v208[0];
      }

      if (sub_2460DDA88(v155, v170, theDict) && sub_2460DDBA0(v155, *v208, pixelBuffer, v180, v179) && sub_2460DDD74(v155, *v208, v153))
      {
        if (CMPhotoCompressionSessionCloseContainer())
        {
          v10 = 0xFFFFFFFFLL;
        }

        else
        {
          v10 = 0;
        }

        goto LABEL_143;
      }

LABEL_142:
      v10 = 0xFFFFFFFFLL;
LABEL_143:
      sub_2460D0F50(&v209);
      goto LABEL_144;
    }

    DataSize = CVDataBufferGetDataSize();
    if (DataSize)
    {
      IOSurface = CVDataBufferGetIOSurface();
      if (IOSurface)
      {
        BaseAddress = IOSurfaceGetBaseAddress(IOSurface);
        DataSize = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v113, BaseAddress, DataSize);
        objc_msgSend_setObject_forKeyedSubscript_(v80, v114, DataSize, @"tag:apple.com,2023:ObjectCapture#PointCloudData");
LABEL_80:

        if (qword_27EE3F1E8 != -1)
        {
          dispatch_once(&qword_27EE3F1E8, &unk_2858EB8A8);
        }

        v115 = qword_27EE3F1E0;
        if (os_log_type_enabled(v115, OS_LOG_TYPE_DEBUG))
        {
          LOWORD(buf) = 0;
          _os_log_debug_impl(&dword_2460CF000, v115, OS_LOG_TYPE_DEBUG, "HEIC Serialization: Prepared point cloud data.", &buf, 2u);
        }

        goto LABEL_85;
      }

      DataSize = 0;
    }

    objc_msgSend_setObject_forKeyedSubscript_(v80, v109, DataSize, @"tag:apple.com,2023:ObjectCapture#PointCloudData");
    goto LABEL_80;
  }

LABEL_144:

  return v10;
}

void sub_2460DDA14(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29)
{
  if (a2 == 1)
  {
    v29 = objc_begin_catch(exception_object);
    sub_2460D0F50(&a29);

    objc_end_catch();
    JUMPOUT(0x2460DD29CLL);
  }

  _Unwind_Resume(exception_object);
}

CGImageMetadata *sub_2460DDA88(int a1, int a2, CFDictionaryRef theDict)
{
  if (!theDict)
  {
    return 1;
  }

  if (!CFDictionaryGetCount(theDict))
  {
    return 1;
  }

  result = CGImageMetadataCreateMutable();
  if (result)
  {
    v5 = result;
    result = CGImageMetadataRegisterNamespaceForPrefix(result, @"http://ns.apple.com/oc/1.0/", @"oc", 0);
    if (result)
    {
      v8[0] = v5;
      v8[1] = @"http://ns.apple.com/oc/1.0/";
      v8[2] = @"oc";
      v9 = 1;
      CFDictionaryApplyFunction(theDict, sub_2460DE72C, v8);
      if (v9)
      {
        XMPData = CGImageMetadataCreateXMPData(v5, 0);
        CFRelease(v5);
        if (XMPData)
        {
          v7 = CMPhotoCompressionSessionAddXMP();
          CFRelease(XMPData);
          return (v7 == 0);
        }
      }

      else
      {
        CFRelease(v5);
      }

      return 0;
    }
  }

  return result;
}

uint64_t sub_2460DDBA0(int a1, const char *a2, CVPixelBufferRef pixelBuffer, uint64_t a4, uint64_t a5)
{
  v19[1] = *MEMORY[0x277D85DE8];
  v7 = MEMORY[0x277CF6CF0];
  if (pixelBuffer)
  {
    if (CVPixelBufferGetPixelFormatType(pixelBuffer) != 1751411059)
    {
      CVPixelBufferGetPixelFormatType(pixelBuffer);
    }

    v18 = *v7;
    v19[0] = &unk_2858EE570;
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v9, v19, &v18, 1);
    if (CMPhotoCompressionSessionAddAuxiliaryImage())
    {
      return 0;
    }
  }

  v10 = MEMORY[0x277CF6CE8];
  if (a4)
  {
    v11 = *MEMORY[0x277CF6CE8];
    v16[0] = *v7;
    v16[1] = v11;
    v17[0] = &unk_2858EE570;
    v17[1] = @"tag:apple.com,2023:ObjectCapture#DepthConfidenceMap";
    objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v17, v16, 2);
    if (CMPhotoCompressionSessionAddAuxiliaryImage())
    {
      return 0;
    }
  }

  if (a5 && (v12 = *v10, v14[0] = *v7, v14[1] = v12, v15[0] = &unk_2858EE570, v15[1] = @"tag:apple.com,2023:ObjectCapture#ObjectMask", objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v15, v14, 2), CMPhotoCompressionSessionAddAuxiliaryImage()))
  {
    return 0;
  }

  else
  {
    return 1;
  }
}

uint64_t sub_2460DDD74(uint64_t a1, uint64_t a2, void *a3)
{
  v139[3] = *MEMORY[0x277D85DE8];
  v3 = a3;
  v5 = v3;
  if (v3)
  {
    v7 = objc_msgSend_objectForKeyedSubscript_(v3, v4, @"tag:apple.com,2023:ObjectCapture#CameraTrackingState");
    v8 = MEMORY[0x277CF6D78];
    v9 = MEMORY[0x277CF6D88];
    v10 = MEMORY[0x277CF6D80];
    if (v7)
    {
      v138[0] = *MEMORY[0x277CF6D78];
      v11 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"tag:apple.com,2023:ObjectCapture#CameraTrackingState");
      v12 = *v9;
      v139[0] = v11;
      v139[1] = @"tag:apple.com,2023:ObjectCapture#CameraTrackingState";
      v13 = *v10;
      v138[1] = v12;
      v138[2] = v13;
      v139[2] = @"Object Capture camera tracking state";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v14, v139, v138, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        goto LABEL_71;
      }

      v113 = v11;
    }

    v18 = objc_msgSend_objectForKeyedSubscript_(v5, v6, @"tag:apple.com,2023:ObjectCapture#CameraCalibrationData");
    if (v18)
    {
      v136[0] = *v8;
      v19 = objc_msgSend_objectForKeyedSubscript_(v5, v17, @"tag:apple.com,2023:ObjectCapture#CameraCalibrationData");
      v20 = *v9;
      v137[0] = v19;
      v137[1] = @"tag:apple.com,2023:ObjectCapture#CameraCalibrationData";
      v21 = *v10;
      v136[1] = v20;
      v136[2] = v21;
      v137[2] = @"Object Capture camera calibration data";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v22, v137, v136, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
LABEL_69:

LABEL_70:
        v11 = v113;
        if (!v7)
        {
LABEL_72:

          v16 = !v15;
          goto LABEL_73;
        }

LABEL_71:

        goto LABEL_72;
      }

      v110 = v19;
      v8 = MEMORY[0x277CF6D78];
    }

    v112 = objc_msgSend_objectForKeyedSubscript_(v5, v17, @"tag:apple.com,2023:ObjectCapture#ObjectTransform");
    if (v112)
    {
      v134[0] = *v8;
      v24 = objc_msgSend_objectForKeyedSubscript_(v5, v23, @"tag:apple.com,2023:ObjectCapture#ObjectTransform");
      v25 = *v9;
      v111 = v24;
      v135[0] = v24;
      v135[1] = @"tag:apple.com,2023:ObjectCapture#ObjectTransform";
      v26 = *v10;
      v134[1] = v25;
      v134[2] = v26;
      v135[2] = @"Object Capture object transform";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v27, v135, v134, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v19 = v110;
        v28 = v112;
LABEL_67:

LABEL_68:
        if (!v18)
        {
          goto LABEL_70;
        }

        goto LABEL_69;
      }

      v29 = v8;
    }

    else
    {
      v29 = v8;
    }

    v31 = objc_msgSend_objectForKeyedSubscript_(v5, v23, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");
    if (v31)
    {
      v132[0] = *v29;
      v32 = objc_msgSend_objectForKeyedSubscript_(v5, v30, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");
      v33 = *v9;
      v109 = v32;
      v133[0] = v32;
      v133[1] = @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox";
      v34 = *v10;
      v132[1] = v33;
      v132[2] = v34;
      v133[2] = @"Object Capture object bounding box";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v35, v133, v132, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v28 = v112;
LABEL_65:

LABEL_66:
        v19 = v110;
        if (!v28)
        {
          goto LABEL_68;
        }

        goto LABEL_67;
      }
    }

    v107 = objc_msgSend_objectForKeyedSubscript_(v5, v30, @"tag:apple.com,2023:ObjectCapture#RawFeaturePoints");
    v108 = v31;
    if (v107)
    {
      v130[0] = *v29;
      v38 = objc_msgSend_objectForKeyedSubscript_(v5, v37, @"tag:apple.com,2023:ObjectCapture#RawFeaturePoints");
      v39 = *v9;
      v106 = v38;
      v131[0] = v38;
      v131[1] = @"tag:apple.com,2023:ObjectCapture#RawFeaturePoints";
      v40 = *v10;
      v130[1] = v39;
      v130[2] = v40;
      v131[2] = @"Object Capture raw feature points";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v41, v131, v130, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
LABEL_63:

LABEL_64:
        v31 = v108;
        if (!v108)
        {
          goto LABEL_66;
        }

        goto LABEL_65;
      }
    }

    v105 = objc_msgSend_objectForKeyedSubscript_(v5, v37, @"tag:apple.com,2023:ObjectCapture#PointCloudData");
    if (v105)
    {
      v128[0] = *v29;
      v44 = objc_msgSend_objectForKeyedSubscript_(v5, v43, @"tag:apple.com,2023:ObjectCapture#PointCloudData");
      v45 = *v9;
      v104 = v44;
      v129[0] = v44;
      v129[1] = @"tag:apple.com,2023:ObjectCapture#PointCloudData";
      v46 = *v10;
      v128[1] = v45;
      v128[2] = v46;
      v129[2] = @"Object Capture point cloud data";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v47, v129, v128, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
        v48 = v105;
LABEL_61:

LABEL_62:
        if (!v42)
        {
          goto LABEL_64;
        }

        goto LABEL_63;
      }
    }

    v103 = objc_msgSend_objectForKeyedSubscript_(v5, v43, @"tag:apple.com,2023:ObjectCapture#BundleVersion");
    if (v103)
    {
      v126[0] = *v29;
      v50 = objc_msgSend_objectForKeyedSubscript_(v5, v49, @"tag:apple.com,2023:ObjectCapture#BundleVersion");
      v51 = *v9;
      v102 = v50;
      v127[0] = v50;
      v127[1] = @"tag:apple.com,2023:ObjectCapture#BundleVersion";
      v52 = *v10;
      v126[1] = v51;
      v126[2] = v52;
      v127[2] = @"Object Capture bundle version";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, v127, v126, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
        v48 = v105;
        v54 = v103;
LABEL_59:

LABEL_60:
        if (!v48)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }
    }

    v101 = objc_msgSend_objectForKeyedSubscript_(v5, v49, @"tag:apple.com,2023:ObjectCapture#SegmentID");
    if (v101)
    {
      v124[0] = *v29;
      v56 = objc_msgSend_objectForKeyedSubscript_(v5, v55, @"tag:apple.com,2023:ObjectCapture#SegmentID");
      v57 = *v9;
      v100 = v56;
      v125[0] = v56;
      v125[1] = @"tag:apple.com,2023:ObjectCapture#SegmentID";
      v58 = *v10;
      v124[1] = v57;
      v124[2] = v58;
      v125[2] = @"Object Capture segment ID";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v59, v125, v124, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
        v48 = v105;
        v54 = v103;
        v60 = v101;
LABEL_57:

LABEL_58:
        if (!v54)
        {
          goto LABEL_60;
        }

        goto LABEL_59;
      }
    }

    v99 = objc_msgSend_objectForKeyedSubscript_(v5, v55, @"tag:apple.com,2024:ObjectCapture#SessionUUID");
    if (v99)
    {
      v122[0] = *v29;
      v62 = objc_msgSend_objectForKeyedSubscript_(v5, v61, @"tag:apple.com,2024:ObjectCapture#SessionUUID");
      v63 = *v9;
      v98 = v62;
      v123[0] = v62;
      v123[1] = @"tag:apple.com,2024:ObjectCapture#SessionUUID";
      v64 = *v10;
      v122[1] = v63;
      v122[2] = v64;
      v123[2] = @"Object Capture session UUID";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v123, v122, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
        v48 = v105;
        v54 = v103;
        v66 = v99;
LABEL_55:

LABEL_56:
        v60 = v101;
        if (!v101)
        {
          goto LABEL_58;
        }

        goto LABEL_57;
      }
    }

    v97 = objc_msgSend_objectForKeyedSubscript_(v5, v61, @"tag:apple.com,2024:ObjectCapture#CaptureMode");
    if (v97)
    {
      v120[0] = *v29;
      v68 = objc_msgSend_objectForKeyedSubscript_(v5, v67, @"tag:apple.com,2024:ObjectCapture#CaptureMode");
      v69 = *v9;
      v95 = v68;
      v121[0] = v68;
      v121[1] = @"tag:apple.com,2024:ObjectCapture#CaptureMode";
      v70 = *v10;
      v120[1] = v69;
      v120[2] = v70;
      v121[2] = @"Object Capture session capture mode";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, v121, v120, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
        v48 = v105;
        v54 = v103;
        v72 = v97;
LABEL_53:

LABEL_54:
        v66 = v99;
        if (!v99)
        {
          goto LABEL_56;
        }

        goto LABEL_55;
      }
    }

    v96 = objc_msgSend_objectForKeyedSubscript_(v5, v67, @"tag:apple.com,2023:ObjectCapture#Feedback");
    if (v96)
    {
      v118[0] = *v29;
      v74 = objc_msgSend_objectForKeyedSubscript_(v5, v73, @"tag:apple.com,2023:ObjectCapture#Feedback");
      v75 = *v9;
      v94 = v74;
      v119[0] = v74;
      v119[1] = @"tag:apple.com,2023:ObjectCapture#Feedback";
      v76 = *v10;
      v118[1] = v75;
      v118[2] = v76;
      v119[2] = @"Object Capture feedback";
      objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v77, v119, v118, 3);
      if (CMPhotoCompressionSessionAddCustomMetadata())
      {
        v15 = 1;
        v36 = v109;
        v42 = v107;
        v28 = v112;
        v48 = v105;
        v54 = v103;
        v72 = v97;
LABEL_51:

LABEL_52:
        if (!v72)
        {
          goto LABEL_54;
        }

        goto LABEL_53;
      }
    }

    v93 = objc_msgSend_objectForKeyedSubscript_(v5, v73, @"tag:apple.com,2023:ObjectCapture#WideToDepthCameraTransform");
    if (v93 && (v116[0] = *v29, objc_msgSend_objectForKeyedSubscript_(v5, v78, @"tag:apple.com,2023:ObjectCapture#WideToDepthCameraTransform"), v79 = objc_claimAutoreleasedReturnValue(), v80 = *v9, v92 = v79, v117[0] = v79, v117[1] = @"tag:apple.com,2023:ObjectCapture#WideToDepthCameraTransform", v81 = *v10, v116[1] = v80, v116[2] = v81, v117[2] = @"Object Capture wide to depth camera transform", objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v82, v117, v116, 3), CMPhotoCompressionSessionAddCustomMetadata()))
    {
      v15 = 1;
      v36 = v109;
      v83 = v93;
    }

    else
    {
      v84 = objc_msgSend_objectForKeyedSubscript_(v5, v78, @"tag:apple.com,2023:ObjectCapture#TemporalDepthPointClouds");
      if (v84)
      {
        v114[0] = *v29;
        v86 = v84;
        v87 = objc_msgSend_objectForKeyedSubscript_(v5, v85, @"tag:apple.com,2023:ObjectCapture#TemporalDepthPointClouds");
        v88 = *v9;
        v115[0] = v87;
        v115[1] = @"tag:apple.com,2023:ObjectCapture#TemporalDepthPointClouds";
        v89 = *v10;
        v114[1] = v88;
        v114[2] = v89;
        v115[2] = @"Object Capture temporal depth point clouds";
        objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v90, v115, v114, 3);
        v15 = CMPhotoCompressionSessionAddCustomMetadata() != 0;
      }

      else
      {
        v15 = 0;
      }

      v36 = v109;
      v83 = v93;
      if (!v93)
      {
LABEL_50:
        v42 = v107;
        v28 = v112;
        v48 = v105;
        v54 = v103;
        v72 = v97;
        if (!v96)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    goto LABEL_50;
  }

  v16 = 1;
LABEL_73:

  return v16;
}

void sub_2460DE72C(CFStringRef name, CFTypeRef value, uint64_t a3)
{
  if (*(a3 + 24) == 1)
  {
    v5 = *a3;
    v6 = *(a3 + 16);
    v7 = CGImageMetadataTagCreate(*(a3 + 8), v6, name, kCGImageMetadataTypeDefault, value);
    v8 = CFStringCreateWithFormat(*MEMORY[0x277CBECE8], 0, @"%@:%@", v6, name);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (v9 || (v10 = v8, !CGImageMetadataSetTagWithPath(v5, 0, v8, v7)))
    {
      v11 = 0;
    }

    else
    {
      CFRelease(v7);
      CFRelease(v10);
      v11 = 1;
    }

    *(a3 + 24) = v11;
  }
}

uint64_t OCNonModularSPI_CMPhoto_update(uint64_t a1, void *a2, void *a3, void *a4, int a5, void *a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, __n128 a11, int8x16_t a12, int8x16_t a13, int8x16_t a14)
{
  v95 = *MEMORY[0x277D85DE8];
  v19 = a2;
  v20 = a3;
  v21 = a4;
  v78 = a6;
  v22 = vmulq_f32(a7, 0);
  __asm { FMOV            V4.4S, #-1.0 }

  v85 = vmlaq_f32(vmlaq_f32(vmlaq_f32(a7, 0, a8), 0, a9), 0, a10);
  v86 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, _Q4, a8), vdupq_n_s32(0xB3BBBD2E), a9), 0, a10);
  v87 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v22, vdupq_n_s32(0x33BBBD2Eu), a8), _Q4, a9), 0, a10);
  v88 = vaddq_f32(a10, vmlaq_f32(vmlaq_f32(v22, 0, a8), 0, a9));
  sub_2460D0D38(a5, v21, &v85, v85, v86, v87, v88);
  v80 = v88;
  v29 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v27, v28, v88.n128_f32[0]);
  v91 = v29;
  v32 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, v31, v80.n128_f32[1]);
  v92 = v32;
  v35 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v33, v34, v80.n128_f32[2]);
  v93 = v35;
  v37 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v36, &v91, 3);

  v41 = sub_2460D0518(v85, v86, v87, v38, v39, v40);
  v43 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v42, 48);
  v44 = v43;
  v47 = objc_msgSend_mutableBytes(v43, v45, v46);
  v50 = a11;
  v50.n128_u32[3] = a12.i32[0];
  *v47 = v50;
  *(v47 + 16) = vextq_s8(vextq_s8(a12, a12, 0xCuLL), a13, 8uLL);
  *(v47 + 32) = vextq_s8(vuzp1q_s32(a13, a13), a14, 0xCuLL);
  v51 = 4294967294;
  if (!a1 || !v19 || !objc_msgSend_isFileURL(v19, v48, v49))
  {
    goto LABEL_26;
  }

  v54 = objc_msgSend_pathExtension(v19, v52, v53);
  v56 = objc_msgSend_caseInsensitiveCompare_(v54, v55, @"HEIC");
  if (!v20 || v56 || (objc_msgSend_isFileURL(v20, v57, v58) & 1) == 0)
  {

LABEL_25:
    v51 = 4294967294;
    goto LABEL_26;
  }

  v61 = objc_msgSend_pathExtension(v20, v59, v60);
  v63 = objc_msgSend_caseInsensitiveCompare_(v61, v62, @"HEIC");
  if (v37)
  {
    _ZF = v41 == 0;
  }

  else
  {
    _ZF = 1;
  }

  v67 = _ZF || v63 != 0 || v43 == 0;

  if (v67)
  {
    goto LABEL_25;
  }

  v91 = 0;
  v92 = &v91;
  v94 = -1;
  v69 = *MEMORY[0x277CF6CD8];
  v89[0] = *MEMORY[0x277CF6CE0];
  v89[1] = v69;
  v90[0] = &unk_2858EE540;
  v90[1] = &unk_2858EE558;
  v93 = 0x2020000000;
  v89[2] = *MEMORY[0x277CF6CD0];
  v90[2] = v20;
  objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v68, v90, v89, 3);
  v81 = v37;
  v82 = v41;
  v83 = v43;
  v84 = v78;
  if (CMPhotoCompressionSessionOpenExistingContainerForModification() || *(v92 + 6))
  {
    v51 = 0xFFFFFFFFLL;
  }

  else if (CMPhotoCompressionSessionCloseContainer())
  {
    v51 = 0xFFFFFFFFLL;
  }

  else
  {
    v51 = 0;
  }

  _Block_object_dispose(&v91, 8);
LABEL_26:

  return v51;
}

uint64_t sub_2460DEC58(uint64_t *a1, void *a2)
{
  v84[2] = *MEMORY[0x277D85DE8];
  if (!a2)
  {
    return *(*(a1[8] + 8) + 24);
  }

  v3 = a2;
  v5 = objc_msgSend_objectForKeyedSubscript_(v3, v4, *MEMORY[0x277CF6CC0]);
  v7 = objc_msgSend_objectForKeyedSubscript_(v3, v6, *MEMORY[0x277CF6CB8]);
  v10 = v7;
  if (v5)
  {
    v11 = v7 == 0;
  }

  else
  {
    v11 = 1;
  }

  if (v11)
  {
    v12 = *(*(a1[8] + 8) + 24);
  }

  else
  {
    v75 = v5;
    v13 = objc_msgSend_intValue(v5, v8, v9);
    v15 = objc_msgSend_objectAtIndexedSubscript_(v10, v14, v13);
    v16 = *MEMORY[0x277CF6CA0];
    v18 = objc_msgSend_objectForKeyedSubscript_(v15, v17, *MEMORY[0x277CF6CA0]);

    v74 = v18;
    if (v18)
    {
      objc_msgSend_setObject_forKeyedSubscript_(v18, v19, a1[4], *MEMORY[0x277CF6CA8]);
      objc_msgSend_setObject_forKeyedSubscript_(v18, v20, a1[5], *MEMORY[0x277CF6CB0]);
    }

    else
    {
      v22 = *MEMORY[0x277CF6CB0];
      v83[0] = *MEMORY[0x277CF6CA8];
      v83[1] = v22;
      v23 = a1[5];
      v84[0] = a1[4];
      v84[1] = v23;
      v24 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v19, v84, v83, 2);
      v26 = objc_msgSend_objectAtIndexedSubscript_(v10, v25, v13);
      objc_msgSend_setObject_forKeyedSubscript_(v26, v27, v24, v16);
    }

    v28 = objc_msgSend_objectAtIndexedSubscript_(v10, v21, v13, v13);
    v30 = objc_msgSend_objectForKeyedSubscript_(v28, v29, *MEMORY[0x277CF6C98]);

    v33 = objc_msgSend_count(v30, v31, v32);
    v35 = *MEMORY[0x277CF6D88];
    if (v33)
    {
      v36 = 0;
      while (1)
      {
        v37 = objc_msgSend_objectAtIndexedSubscript_(v30, v34, v36);
        v39 = objc_msgSend_objectForKeyedSubscript_(v37, v38, v35);
        v41 = objc_msgSend_compare_(v39, v40, @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox");

        if (!v41)
        {
          break;
        }

        if (++v36 >= objc_msgSend_count(v30, v43, v44))
        {
          goto LABEL_16;
        }
      }

      objc_msgSend_setObject_forKeyedSubscript_(v37, v42, a1[6], *MEMORY[0x277CF6D78]);
    }

    else
    {
LABEL_16:
      v45 = a1[6];
      v81[0] = *MEMORY[0x277CF6D78];
      v81[1] = v35;
      v82[0] = v45;
      v82[1] = @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox";
      v81[2] = *MEMORY[0x277CF6D80];
      v82[2] = @"Object Capture object bounding box";
      v37 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v34, v82, v81, 3);
      objc_msgSend_addObject_(v30, v46, v37);
    }

    if (a1[7])
    {
      v48 = objc_msgSend_objectAtIndexedSubscript_(v10, v47, v73);
      v49 = *MEMORY[0x277CF6CC8];
      v51 = objc_msgSend_objectForKeyedSubscript_(v48, v50, *MEMORY[0x277CF6CC8]);

      if (v51 && objc_msgSend_count(v51, v52, v53))
      {
        v55 = objc_msgSend_objectAtIndexedSubscript_(v51, v54, 0);
        v56 = sub_2460DF194(v55);
        objc_msgSend_addEntriesFromDictionary_(v56, v57, a1[7]);
        Mutable = CGImageMetadataCreateMutable();
        if (Mutable && (v59 = Mutable, CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/oc/1.0/", @"oc", 0)))
        {
          context = v59;
          v77 = @"http://ns.apple.com/oc/1.0/";
          v78 = @"oc";
          v79 = 1;
          CFDictionaryApplyFunction(v56, sub_2460DE72C, &context);
          if (v79 == 1)
          {
            XMPData = CGImageMetadataCreateXMPData(v59, 0);
          }

          else
          {
            XMPData = 0;
          }

          CFRelease(v59);
        }

        else
        {
          XMPData = 0;
        }

        objc_msgSend_setObject_atIndexedSubscript_(v51, v71, XMPData, 0);
      }

      else
      {
        v61 = a1[7];
        v62 = CGImageMetadataCreateMutable();
        if (v62)
        {
          v63 = v62;
          if (CGImageMetadataRegisterNamespaceForPrefix(v62, @"http://ns.apple.com/oc/1.0/", @"oc", 0))
          {
            context = v63;
            v77 = @"http://ns.apple.com/oc/1.0/";
            v78 = @"oc";
            v79 = 1;
            CFDictionaryApplyFunction(v61, sub_2460DE72C, &context);
            if (v79)
            {
              v64 = CGImageMetadataCreateXMPData(v63, 0);
              CFRelease(v63);
              if (v64)
              {
                v80 = v64;
                objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v65, &v80, 1);
                v67 = v66 = v64;
                v69 = objc_msgSend_objectAtIndexedSubscript_(v10, v68, v73);
                objc_msgSend_setObject_forKeyedSubscript_(v69, v70, v67, v49);
              }
            }

            else
            {
              CFRelease(v63);
            }
          }
        }
      }
    }

    *(*(a1[8] + 8) + 24) = 0;
    v12 = *(*(a1[8] + 8) + 24);

    v5 = v75;
  }

  return v12;
}

id sub_2460DF194(const __CFData *a1)
{
  v26 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    goto LABEL_21;
  }

  v1 = CGImageMetadataCreateFromXMPData(a1);
  if (!v1)
  {
    goto LABEL_21;
  }

  v2 = v1;
  v3 = CGImageMetadataCopyTags(v1);
  if (!v3)
  {
    CFRelease(v2);
LABEL_21:
    v5 = 0;
    goto LABEL_22;
  }

  v4 = v3;
  cf = v2;
  v5 = objc_alloc_init(MEMORY[0x277CBEB38]);
  Count = CFArrayGetCount(v4);
  if (Count >= 1)
  {
    v7 = Count;
    for (i = 0; i != v7; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
      v11 = CGImageMetadataTagCopyPrefix(ValueAtIndex);
      if (CFStringCompare(v11, @"oc", 1uLL))
      {
        if (qword_27EE3F208 != -1)
        {
          dispatch_once(&qword_27EE3F208, &unk_2858EB9C8);
        }

        v12 = qword_27EE3F200;
        if (os_log_type_enabled(qword_27EE3F200, OS_LOG_TYPE_DEBUG))
        {
          *buf = 138543362;
          v25 = v11;
          _os_log_debug_impl(&dword_2460CF000, v12, OS_LOG_TYPE_DEBUG, "copyXMPMetadata: Ignore prefix = %{public}@", buf, 0xCu);
        }
      }

      else
      {
        v13 = CGImageMetadataTagCopyName(ValueAtIndex);
        v14 = CGImageMetadataTagCopyValue(ValueAtIndex);
        v15 = CFGetTypeID(v14);
        if (v15 == CFArrayGetTypeID())
        {
          v9 = objc_alloc_init(MEMORY[0x277CBEB18]);
          for (j = 0; j < CFArrayGetCount(v14); ++j)
          {
            v19 = CFArrayGetValueAtIndex(v14, j);
            v20 = CGImageMetadataTagCopyValue(v19);
            objc_msgSend_addObject_(v9, v21, v20);
          }

          objc_msgSend_setObject_forKeyedSubscript_(v5, v18, v9, v13);

          CFRelease(v14);
        }

        else
        {
          objc_msgSend_setObject_forKeyedSubscript_(v5, v16, v14, v13);

          v9 = v14;
        }
      }

      CFRelease(v11);
    }
  }

  CFRelease(v4);
  CFRelease(cf);
LABEL_22:

  return v5;
}

uint64_t sub_2460DF408()
{
  qword_27EE3F200 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t OCNonModularSPI_CMPhoto_updateInplace(void *a1, void *a2, int a3, void *a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, __n128 a9, int8x16_t a10, int8x16_t a11, int8x16_t a12)
{
  v85 = *MEMORY[0x277D85DE8];
  v15 = a1;
  v16 = a4;
  v17 = a2;
  v18 = vmulq_f32(a5, 0);
  __asm { FMOV            V4.4S, #-1.0 }

  v76 = vmlaq_f32(vmlaq_f32(vmlaq_f32(a5, 0, a6), 0, a7), 0, a8);
  v77 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v18, _Q4, a6), vdupq_n_s32(0xB3BBBD2E), a7), 0, a8);
  v78 = vmlaq_f32(vmlaq_f32(vmlaq_f32(v18, vdupq_n_s32(0x33BBBD2Eu), a6), _Q4, a7), 0, a8);
  v79 = vaddq_f32(a8, vmlaq_f32(vmlaq_f32(v18, 0, a6), 0, a7));
  sub_2460D0D38(a3, v17, &v76, v76, v77, v78, v79);

  v73 = v79;
  v26 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v79.n128_f32[0]);
  *&buf = v26;
  v29 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v27, v28, v73.n128_f32[1]);
  *(&buf + 1) = v29;
  v32 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v30, v31, v73.n128_f32[2]);
  v83 = v32;
  v34 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v33, &buf, 3);

  v38 = sub_2460D0518(v76, v77, v78, v35, v36, v37);
  v39 = a9;
  v39.n128_u32[3] = a10.i32[0];
  v75 = v39;
  v41 = objc_msgSend_dataWithLength_(MEMORY[0x277CBEB28], v40, 48);
  v42 = v41;
  v45 = objc_msgSend_mutableBytes(v42, v43, v44);
  *v45 = v75;
  *(v45 + 16) = vextq_s8(vextq_s8(a10, a10, 0xCuLL), a11, 8uLL);
  *(v45 + 32) = vextq_s8(vuzp1q_s32(a11, a11), a12, 0xCuLL);
  if (v15)
  {
    v48 = objc_msgSend_pathExtension(v15, v46, v47);
    if (objc_msgSend_caseInsensitiveCompare_(v48, v49, @"HEIC"))
    {
      v52 = 4294967294;
LABEL_32:

      goto LABEL_33;
    }

    isFileURL = objc_msgSend_isFileURL(v15, v50, v51);

    v52 = 4294967294;
    if (isFileURL && v34 && v38 && v41)
    {
      if (qword_27EE3F208 != -1)
      {
        dispatch_once(&qword_27EE3F208, &unk_2858EB9C8);
      }

      v54 = qword_27EE3F200;
      if (os_log_type_enabled(qword_27EE3F200, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_2460CF000, v54, OS_LOG_TYPE_INFO, "CMPhoto_update: Has valid arguments for URL: %{private}@", &buf, 0xCu);
      }

      v48 = objc_alloc_init(OCNonModularSPI_CMPhoto_InPlaceEditor);
      if (qword_27EE3F208 != -1)
      {
        dispatch_once(&qword_27EE3F208, &unk_2858EB9C8);
      }

      v55 = qword_27EE3F200;
      if (os_log_type_enabled(qword_27EE3F200, OS_LOG_TYPE_INFO))
      {
        LODWORD(buf) = 138477827;
        *(&buf + 4) = v15;
        _os_log_impl(&dword_2460CF000, v55, OS_LOG_TYPE_INFO, "CMPhoto_update: Created editor for URL: %{private}@", &buf, 0xCu);
      }

      v57 = *MEMORY[0x277CF6D88];
      v80[0] = *MEMORY[0x277CF6D78];
      v80[1] = v57;
      v81[0] = v41;
      v81[1] = @"tag:apple.com,2023:ObjectCapture#ObjectBoundingBox";
      v80[2] = *MEMORY[0x277CF6D80];
      v81[2] = @"Object Capture object bounding box";
      v58 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v56, v81, v80, 3, *&a5, *&a6, *&a7);
      objc_msgSend_updateModifiedCustom_(v48, v59, v58);
      if (v16)
      {
        Mutable = CGImageMetadataCreateMutable();
        if (Mutable)
        {
          v62 = Mutable;
          if (CGImageMetadataRegisterNamespaceForPrefix(Mutable, @"http://ns.apple.com/oc/1.0/", @"oc", 0))
          {
            *&buf = v62;
            *(&buf + 1) = @"http://ns.apple.com/oc/1.0/";
            v83 = @"oc";
            v84 = 1;
            CFDictionaryApplyFunction(v16, sub_2460DE72C, &buf);
            if (v84)
            {
              XMPData = CGImageMetadataCreateXMPData(v62, 0);
              CFRelease(v62);
              if (XMPData)
              {
                objc_msgSend_updateModifiedXMP_(v48, v60, XMPData);
              }
            }

            else
            {
              CFRelease(v62);
            }
          }
        }
      }

      objc_msgSend_updateModifiedExtrinsicsPosition_rotation_(v48, v60, v34, v38);
      if (MEMORY[0x24C198FD0](v15, 0, v48))
      {
        v52 = 0xFFFFFFFFLL;
      }

      else
      {
        if (qword_27EE3F208 != -1)
        {
          dispatch_once(&qword_27EE3F208, &unk_2858EB9C8);
        }

        v64 = qword_27EE3F200;
        if (os_log_type_enabled(qword_27EE3F200, OS_LOG_TYPE_INFO))
        {
          LODWORD(buf) = 138477827;
          *(&buf + 4) = v15;
          _os_log_impl(&dword_2460CF000, v64, OS_LOG_TYPE_INFO, "CMPhoto_update: HEIF in-place update success for URL: %{private}@", &buf, 0xCu);
        }

        v52 = 0;
      }

      goto LABEL_32;
    }
  }

  else
  {
    v52 = 4294967294;
  }

LABEL_33:

  return v52;
}

uint64_t OCNonModularSPI_CMPhoto_HeicWriteStop(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCNonModularSPI_CMPhoto_HeicWriteDestroy(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  CFRelease(*a1);
  free(a1);
  return 0;
}

uint64_t OCNonModularSPI_CMPhoto_HeicReadCreate(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (CMPhotoDecompressionSessionCreate())
  {
    return 0xFFFFFFFFLL;
  }

  v3 = malloc_type_malloc(8uLL, 0x2004093837F09uLL);
  result = 0;
  *v3 = 0;
  *a1 = v3;
  return result;
}

uint64_t OCNonModularSPI_CMPhoto_HeicReadStart(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCNonModularSPI_CMPhoto_readTimestamp(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  v9 = 4294967294;
  if (a1)
  {
    if (v5)
    {
      if (objc_msgSend_isFileURL(v5, v6, v7))
      {
        v12 = objc_msgSend_pathExtension(v8, v10, v11);
        v14 = objc_msgSend_caseInsensitiveCompare_(v12, v13, @"HEIC");

        if (a3)
        {
          if (!v14)
          {
            if (!CMPhotoDecompressionSessionCreateContainer())
            {
              CMPhotoDecompressionContainerGetImageCount();
            }

            v9 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t OCNonModularSPI_CMPhoto_readResolution(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v7 = a2;
  v10 = v7;
  v11 = 4294967294;
  if (a1)
  {
    if (v7)
    {
      if (objc_msgSend_isFileURL(v7, v8, v9))
      {
        v14 = objc_msgSend_pathExtension(v10, v12, v13);
        v16 = objc_msgSend_caseInsensitiveCompare_(v14, v15, @"HEIC");

        v11 = 4294967294;
        if (a4)
        {
          if (a3 && !v16)
          {
            if (!CMPhotoDecompressionSessionCreateContainer())
            {
              CMPhotoDecompressionContainerGetImageCount();
            }

            v11 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v11;
}

uint64_t OCNonModularSPI_CMPhoto_read(uint64_t a1, void *a2)
{
  v3 = a2;
  v6 = v3;
  v7 = 4294967294;
  if (a1 && v3 && objc_msgSend_isFileURL(v3, v4, v5))
  {
    v10 = objc_msgSend_pathExtension(v6, v8, v9);
    v12 = objc_msgSend_caseInsensitiveCompare_(v10, v11, @"HEIC");

    if (v12)
    {
      v7 = 4294967294;
    }

    else
    {
      v16 = 0;
      v15 = 0;
      if (!CMPhotoDecompressionSessionCreateContainer())
      {
        memset(v14, 0, sizeof(v14));
        v17 = 0;
        CMPhotoDecompressionContainerGetImageCount();
        sub_2460E0EDC(v16, v14);
      }

      v7 = 0xFFFFFFFFLL;
    }
  }

  return v7;
}

uint64_t sub_2460E06DC(uint64_t a1, uint64_t a2, void *a3)
{
  if (CMPhotoDecompressionContainerGetCustomMetadataCountForIndex())
  {
    return 0;
  }

  v7 = objc_msgSend_dictionary(MEMORY[0x277CBEB38], v4, v5);
  if (objc_msgSend_count(v7, v8, v9))
  {
    *a3 = v7;
  }

  return 1;
}

void sub_2460E0EDC(const void *a1, uint64_t a2)
{
  if (a1)
  {
    CFRelease(a1);
  }

  if (a2)
  {
    if (*a2)
    {
      CVPixelBufferRelease(*a2);
    }

    v3 = *(a2 + 8);
    if (v3)
    {
      CVPixelBufferRelease(v3);
    }

    v4 = *(a2 + 16);
    if (v4)
    {
      CVPixelBufferRelease(v4);
    }

    v5 = *(a2 + 24);
    if (v5)
    {
      CVPixelBufferRelease(v5);
    }

    v6 = *(a2 + 32);
    if (v6)
    {
      CFRelease(v6);
    }

    v7 = *(a2 + 40);
    if (v7)
    {
      CFRelease(v7);
    }

    v8 = *(a2 + 48);
    if (v8)
    {
      CFRelease(v8);
    }

    v9 = *(a2 + 56);
    if (v9)
    {
      CFRelease(v9);
    }

    v10 = *(a2 + 64);
    if (v10)
    {
      CFRelease(v10);
    }

    v11 = *(a2 + 72);
    if (v11)
    {

      CFRelease(v11);
    }
  }
}

id sub_2460E0F98()
{
  if (qword_27EE3F208 != -1)
  {
    dispatch_once(&qword_27EE3F208, &unk_2858EB9C8);
  }

  v1 = qword_27EE3F200;

  return v1;
}

uint64_t OCNonModularSPI_CMPhoto_readThumbnail(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x277D85DE8];
  v6 = a2;
  v9 = v6;
  v10 = 4294967294;
  if (a1)
  {
    if (v6)
    {
      if (objc_msgSend_isFileURL(v6, v7, v8))
      {
        v13 = objc_msgSend_pathExtension(v9, v11, v12);
        v15 = objc_msgSend_caseInsensitiveCompare_(v13, v14, @"HEIC");

        v10 = 4294967294;
        if (a4)
        {
          if (!v15)
          {
            if (!CMPhotoDecompressionSessionCreateContainer())
            {
              CMPhotoDecompressionContainerGetImageCount();
            }

            v10 = 0xFFFFFFFFLL;
          }
        }
      }
    }
  }

  return v10;
}

uint64_t OCNonModularSPI_CMPhoto_readVersion(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = a2;
  v8 = v5;
  v9 = 4294967294;
  if (a1)
  {
    if (v5)
    {
      isFileURL = objc_msgSend_isFileURL(v5, v6, v7);
      if (a3)
      {
        if (isFileURL)
        {
          v13 = objc_msgSend_pathExtension(v8, v11, v12);
          v15 = objc_msgSend_caseInsensitiveCompare_(v13, v14, @"HEIC");

          if (v15)
          {
            v9 = 4294967294;
          }

          else if (CMPhotoDecompressionSessionCreateContainer() || CMPhotoDecompressionContainerGetCustomMetadataCountForIndex())
          {
            v9 = 0xFFFFFFFFLL;
          }

          else
          {
            v9 = 0;
          }
        }
      }
    }
  }

  return v9;
}

uint64_t OCNonModularSPI_CMPhoto_HeicReadStop(uint64_t a1)
{
  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCNonModularSPI_CMPhoto_HeicReadDestroy(CFTypeRef *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  CFRelease(*a1);
  free(a1);
  return 0;
}

uint64_t OCVoxelCloudCreate(unsigned int a1, __int128 *a2, uint64_t *a3, float a4, float32x4_t a5, float32x4_t a6, __n128 a7, int8x16_t a8)
{
  v52 = *MEMORY[0x277D85DE8];
  v10 = a4 <= 0.0001 || a1 == 0 || a2 == 0;
  if (!v10 && (v13 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.n128_f32[0]), v14 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, a7.n128_u64[0], 1), v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v16 = *(MEMORY[0x277D860B0] + 16), v17 = *(MEMORY[0x277D860B0] + 32), v18 = vdupq_n_s32(0x38D1B717u), v19 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(v14, v16)), vcgeq_f32(v18, vabdq_f32(v13, *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(v15, v17))), v19.i32[3] = v19.i32[2], (vminvq_u32(v19) & 0x80000000) != 0) && (v20 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2)), v21 = vtrn2q_s32(a5, a6), v21.i32[2] = a7.n128_i32[1], v22 = vzip1q_s32(vzip1q_s32(a5, a7), a6), v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a5.f32[0]), v21, *a5.f32, 1), v20, a5, 2), v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a6.f32[0]), v21, *a6.f32, 1), v20, a6, 2), v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a7.n128_f32[0]), v21, a7.n128_u64[0], 1), v20, a7, 2), v26 = vdupq_n_s32(0x38D1B717u), v27 = vandq_s8(vandq_s8(vcgeq_f32(v26, vabdq_f32(v24, v16)), vcgeq_f32(v26, vabdq_f32(v23, *MEMORY[0x277D860B0]))), vcgeq_f32(v26, vabdq_f32(v25, v17))), v27.i32[3] = v27.i32[2], (vminvq_u32(v27) & 0x80000000) != 0) && (v28 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL))), fabsf((v28.f32[2] + vaddv_f32(*v28.f32)) + -1.0) <= 0.000011) && a3 && (v31 = vdup_n_s32(0x38D1B717u), v32 = vand_s8(vcge_f32(v31, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v31, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL))))), (vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0))
  {
    v44 = a5;
    v45 = a6;
    v47 = a8;
    v37 = sub_2460E1940(a1);
    if (v37)
    {
      v38 = 0;
      v39 = a2;
      do
      {
        v40 = *v39++;
        v41 = v40;
        HIDWORD(v41) = 1;
        *(*(v37 + 96) + v38) = v41;
        v42 = *(v37 + 96) + v38;
        *(v42 + 16) = 0;
        *(v42 + 24) = 0;
        *(*(v37 + 96) + v38 + 32) = xmmword_24613FA50;
        v38 += 48;
      }

      while (48 * a1 != v38);
      *(v37 + 16) = a4;
      *(v37 + 32) = v44;
      *(v37 + 48) = v45;
      *(v37 + 64) = a7;
      *(v37 + 80) = v47;
      *a3 = v37;
      return 0;
    }

    else
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v43 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v49 = "OCVoxelCloudCreate";
        v50 = 1026;
        v51 = 121;
        _os_log_error_impl(&dword_2460CF000, v43, OS_LOG_TYPE_ERROR, "%s:%{public}d Insufficient memory.", buf, 0x12u);
      }

      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v29 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v49 = "OCVoxelCloudCreate";
      v50 = 1026;
      v51 = 115;
      _os_log_error_impl(&dword_2460CF000, v29, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t sub_2460E1940(unsigned int a1)
{
  if (qword_27EE3F228 != -1)
  {
    dispatch_once(&qword_27EE3F228, &unk_2858EBA08);
  }

  Instance = _CFRuntimeCreateInstance();
  v3 = Instance;
  if (Instance)
  {
    prime = a1;
    v5 = *(Instance + 96);
    v6 = *(Instance + 104);
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v6 - v5) >> 4);
    v8 = a1 - v7;
    if (a1 <= v7)
    {
      if (a1 >= v7)
      {
        goto LABEL_17;
      }

      v13 = v5 + 48 * a1;
    }

    else
    {
      v9 = *(Instance + 112);
      if (0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 4) < v8)
      {
        v10 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v5) >> 4);
        v11 = 2 * v10;
        if (2 * v10 <= a1)
        {
          v11 = a1;
        }

        if (v10 >= 0x2AAAAAAAAAAAAAALL)
        {
          v12 = 0x555555555555555;
        }

        else
        {
          v12 = v11;
        }

        if (v12 <= 0x555555555555555)
        {
          operator new();
        }

        sub_2460D368C();
      }

      bzero(*(Instance + 104), 48 * ((48 * v8 - 48) / 0x30) + 48);
      v13 = v6 + 48 * ((48 * v8 - 48) / 0x30) + 48;
    }

    *(v3 + 104) = v13;
LABEL_17:
    *__p = 0u;
    *v27 = 0u;
    *&v27[16] = a1;
    v28 = 1065353216;
    if (a1 == 1)
    {
      prime = 2;
    }

    else
    {
      if ((a1 & (a1 - 1)) != 0)
      {
        prime = std::__next_prime(a1);
      }

      if (!prime)
      {
        goto LABEL_23;
      }
    }

    sub_2460D3E08(__p, prime);
LABEL_23:
    if (*(v3 + 144))
    {
      v14 = *(v3 + 136);
      if (v14)
      {
        do
        {
          v15 = *v14;
          operator delete(v14);
          v14 = v15;
        }

        while (v15);
      }

      *(v3 + 136) = 0;
      v16 = *(v3 + 128);
      if (v16)
      {
        bzero(*(v3 + 120), 8 * v16);
      }

      *(v3 + 144) = 0;
    }

    v17 = __p[0];
    __p[0] = 0;
    v18 = *(v3 + 120);
    *(v3 + 120) = v17;
    if (v18)
    {
      operator delete(v18);
    }

    v20 = __p[1];
    v19 = *v27;
    *(v3 + 136) = *v27;
    *(v3 + 128) = v20;
    __p[1] = 0;
    v21 = *&v27[8];
    *(v3 + 144) = *&v27[8];
    *(v3 + 160) = v28;
    if (v21)
    {
      v22 = v19[1];
      if ((v20 & (v20 - 1)) != 0)
      {
        if (v22 >= v20)
        {
          v22 %= v20;
        }
      }

      else
      {
        v22 &= v20 - 1;
      }

      *(*(v3 + 120) + 8 * v22) = v3 + 136;
      *v27 = 0uLL;
    }

    else if (v19)
    {
      do
      {
        v23 = *v19;
        operator delete(v19);
        v19 = v23;
      }

      while (v23);
    }

    v24 = __p[0];
    __p[0] = 0;
    if (v24)
    {
      operator delete(v24);
    }
  }

  return v3;
}

uint64_t sub_2460E1C60()
{
  qword_27EE3F230 = 0;
  *algn_27EE3F238 = "OCVoxelCloud";
  qword_27EE3F240 = sub_2460E1E90;
  unk_27EE3F248 = 0;
  qword_27EE3F258 = 0;
  unk_27EE3F260 = 0;
  qword_27EE3F250 = sub_2460E1D84;
  qword_27EE3F268 = sub_2460E1D28;
  qword_27EE3F270 = sub_2460E1CD8;
  result = _CFRuntimeRegisterClass();
  qword_27EE3F220 = result;
  return result;
}

CFStringRef sub_2460E1CD8(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCVoxelCloud %p [%p]>", a1, v3);
}

CFStringRef sub_2460E1D28(const void *a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  v5 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v4, a2, @"<OCVoxelCloud %p [%p]>", a1, v5);
}

double sub_2460E1D84(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 96);
    *(a1 + 104) = 0;
    *(a1 + 112) = 0;
    *(a1 + 96) = 0;
    if (v2)
    {
      operator delete(v2);
    }

    v3 = *(a1 + 120);
    v4 = *(a1 + 128);
    v5 = *(a1 + 136);
    v6 = *(a1 + 160);
    v12 = v3;
    *(a1 + 120) = 0;
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    v13 = v5;
    v14 = *(a1 + 144);
    v7 = v14;
    *(a1 + 144) = xmmword_24613FAD0;
    *(a1 + 160) = 1065353216;
    v15 = v6;
    if (v7)
    {
      v8 = v5[1];
      if ((v4 & (v4 - 1)) != 0)
      {
        if (v8 >= v4)
        {
          v8 %= v4;
        }
      }

      else
      {
        v8 &= v4 - 1;
      }

      v3[v8] = &v13;
    }

    else if (!v5)
    {
      if (!v3)
      {
LABEL_10:
        result = 0.0;
        *(a1 + 144) = 0u;
        *(a1 + 160) = 0u;
        *(a1 + 112) = 0u;
        *(a1 + 128) = 0u;
        *(a1 + 80) = 0u;
        *(a1 + 96) = 0u;
        *(a1 + 48) = 0u;
        *(a1 + 64) = 0u;
        *(a1 + 16) = 0u;
        *(a1 + 32) = 0u;
        return result;
      }

LABEL_9:
      operator delete(v3);
      goto LABEL_10;
    }

    v10 = v5;
    do
    {
      v11 = *v10;
      operator delete(v10);
      v10 = v11;
    }

    while (v11);
    v3 = v12;
    if (!v12)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  return result;
}

double sub_2460E1E90(_OWORD *a1)
{
  result = 0.0;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

os_log_t sub_2460E1EAC()
{
  result = os_log_create("com.apple.CoreOCModules", "VoxelHashing");
  qword_27EE3F210 = result;
  return result;
}

uint64_t OCVoxelCloudCreateWithRGB(unsigned int a1, __int128 *a2, __int128 *a3, uint64_t *a4, float a5, float32x4_t a6, float32x4_t a7, __n128 a8, int8x16_t a9)
{
  v58 = *MEMORY[0x277D85DE8];
  v12 = a5 <= 0.0001 || a1 == 0 || a2 == 0 || a3 == 0;
  if (!v12 && (v15 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a6, a6.f32[0]), a7, a7.f32[0]), a8, a8.n128_f32[0]), v16 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a6, *a6.f32, 1), a7, *a7.f32, 1), a8, a8.n128_u64[0], 1), v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a6, a6, 2), a7, a7, 2), a8, a8, 2), v18 = *(MEMORY[0x277D860B0] + 16), v19 = *(MEMORY[0x277D860B0] + 32), v20 = vdupq_n_s32(0x38D1B717u), v21 = vandq_s8(vandq_s8(vcgeq_f32(v20, vabdq_f32(v16, v18)), vcgeq_f32(v20, vabdq_f32(v15, *MEMORY[0x277D860B0]))), vcgeq_f32(v20, vabdq_f32(v17, v19))), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) != 0) && (v22 = vzip1q_s32(vzip2q_s32(a6, a8), vdupq_laneq_s32(a7, 2)), v23 = vtrn2q_s32(a6, a7), v23.i32[2] = a8.n128_i32[1], v24 = vzip1q_s32(vzip1q_s32(a6, a8), a7), v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, a6.f32[0]), v23, *a6.f32, 1), v22, a6, 2), v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, a7.f32[0]), v23, *a7.f32, 1), v22, a7, 2), v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, a8.n128_f32[0]), v23, a8.n128_u64[0], 1), v22, a8, 2), v28 = vdupq_n_s32(0x38D1B717u), v29 = vandq_s8(vandq_s8(vcgeq_f32(v28, vabdq_f32(v26, v18)), vcgeq_f32(v28, vabdq_f32(v25, *MEMORY[0x277D860B0]))), vcgeq_f32(v28, vabdq_f32(v27, v19))), v29.i32[3] = v29.i32[2], (vminvq_u32(v29) & 0x80000000) != 0) && (v30 = vmulq_f32(a6, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL))), vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL), vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL))), fabsf((v30.f32[2] + vaddv_f32(*v30.f32)) + -1.0) <= 0.000011) && a4 && (v33 = vdup_n_s32(0x38D1B717u), v34 = vand_s8(vcge_f32(v33, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a8, a8, 8uLL), *&vextq_s8(a9, a9, 8uLL)), 0xBF80000080000000))), vcge_f32(v33, vabs_f32(vzip2_s32(*&vextq_s8(a6, a6, 8uLL), *&vextq_s8(a7, a7, 8uLL))))), (vpmin_u32(v34, v34).u32[0] & 0x80000000) != 0))
  {
    v50 = a6;
    v51 = a7;
    v53 = a9;
    v40 = sub_2460E1940(a1);
    if (v40)
    {
      v41 = 0;
      v42 = a3;
      v43 = a2;
      do
      {
        v44 = *v43++;
        v45 = v44;
        HIDWORD(v45) = 1;
        *(*(v40 + 96) + v41) = v45;
        v46 = *(v40 + 96) + v41;
        *(v46 + 16) = 0;
        *(v46 + 24) = 0;
        v47 = *v42++;
        v48 = v47;
        HIDWORD(v48) = 1.0;
        *(*(v40 + 96) + v41 + 32) = v48;
        v41 += 48;
      }

      while (48 * a1 != v41);
      *(v40 + 16) = a5;
      *(v40 + 32) = v50;
      *(v40 + 48) = v51;
      *(v40 + 64) = a8;
      *(v40 + 80) = v53;
      *a4 = v40;
      return 0;
    }

    else
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v49 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v55 = "OCVoxelCloudCreateWithRGB";
        v56 = 1026;
        v57 = 148;
        _os_log_error_impl(&dword_2460CF000, v49, OS_LOG_TYPE_ERROR, "%s:%{public}d Insufficient memory.", buf, 0x12u);
      }

      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v31 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v55 = "OCVoxelCloudCreateWithRGB";
      v56 = 1026;
      v57 = 142;
      _os_log_error_impl(&dword_2460CF000, v31, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t OCVoxelCloudCreateWithNormal(unsigned int a1, __int128 *a2, __int128 *a3, uint64_t *a4, float a5, float32x4_t a6, float32x4_t a7, __n128 a8, int8x16_t a9)
{
  v57 = *MEMORY[0x277D85DE8];
  v12 = a5 <= 0.0001 || a1 == 0 || a2 == 0 || a3 == 0;
  if (!v12 && (v15 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a6, a6.f32[0]), a7, a7.f32[0]), a8, a8.n128_f32[0]), v16 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a6, *a6.f32, 1), a7, *a7.f32, 1), a8, a8.n128_u64[0], 1), v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a6, a6, 2), a7, a7, 2), a8, a8, 2), v18 = *(MEMORY[0x277D860B0] + 16), v19 = *(MEMORY[0x277D860B0] + 32), v20 = vdupq_n_s32(0x38D1B717u), v21 = vandq_s8(vandq_s8(vcgeq_f32(v20, vabdq_f32(v16, v18)), vcgeq_f32(v20, vabdq_f32(v15, *MEMORY[0x277D860B0]))), vcgeq_f32(v20, vabdq_f32(v17, v19))), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) != 0) && (v22 = vzip1q_s32(vzip2q_s32(a6, a8), vdupq_laneq_s32(a7, 2)), v23 = vtrn2q_s32(a6, a7), v23.i32[2] = a8.n128_i32[1], v24 = vzip1q_s32(vzip1q_s32(a6, a8), a7), v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, a6.f32[0]), v23, *a6.f32, 1), v22, a6, 2), v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, a7.f32[0]), v23, *a7.f32, 1), v22, a7, 2), v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, a8.n128_f32[0]), v23, a8.n128_u64[0], 1), v22, a8, 2), v28 = vdupq_n_s32(0x38D1B717u), v29 = vandq_s8(vandq_s8(vcgeq_f32(v28, vabdq_f32(v26, v18)), vcgeq_f32(v28, vabdq_f32(v25, *MEMORY[0x277D860B0]))), vcgeq_f32(v28, vabdq_f32(v27, v19))), v29.i32[3] = v29.i32[2], (vminvq_u32(v29) & 0x80000000) != 0) && (v30 = vmulq_f32(a6, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL))), vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL), vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL))), fabsf((v30.f32[2] + vaddv_f32(*v30.f32)) + -1.0) <= 0.000011) && a4 && (v33 = vdup_n_s32(0x38D1B717u), v34 = vand_s8(vcge_f32(v33, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a8, a8, 8uLL), *&vextq_s8(a9, a9, 8uLL)), 0xBF80000080000000))), vcge_f32(v33, vabs_f32(vzip2_s32(*&vextq_s8(a6, a6, 8uLL), *&vextq_s8(a7, a7, 8uLL))))), (vpmin_u32(v34, v34).u32[0] & 0x80000000) != 0))
  {
    v49 = a6;
    v50 = a7;
    v52 = a9;
    v40 = sub_2460E1940(a1);
    if (v40)
    {
      v41 = 0;
      v42 = a3;
      v43 = a2;
      do
      {
        v44 = *v43++;
        v45 = v44;
        HIDWORD(v45) = 1;
        *(*(v40 + 96) + v41) = v45;
        v46 = *v42++;
        v47 = v46;
        HIDWORD(v47) = 1.0;
        *(*(v40 + 96) + v41 + 16) = v47;
        *(*(v40 + 96) + v41 + 32) = xmmword_24613FA50;
        v41 += 48;
      }

      while (48 * a1 != v41);
      *(v40 + 16) = a5;
      *(v40 + 32) = v49;
      *(v40 + 48) = v50;
      *(v40 + 64) = a8;
      *(v40 + 80) = v52;
      *a4 = v40;
      return 0;
    }

    else
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v48 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v54 = "OCVoxelCloudCreateWithNormal";
        v55 = 1026;
        v56 = 175;
        _os_log_error_impl(&dword_2460CF000, v48, OS_LOG_TYPE_ERROR, "%s:%{public}d Insufficient memory.", buf, 0x12u);
      }

      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v31 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v54 = "OCVoxelCloudCreateWithNormal";
      v55 = 1026;
      v56 = 169;
      _os_log_error_impl(&dword_2460CF000, v31, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t OCVoxelCloudCreateWithRGBNormal(unsigned int a1, __int128 *a2, __int128 *a3, __int128 *a4, uint64_t *a5, float a6, float32x4_t a7, float32x4_t a8, __n128 a9, int8x16_t a10)
{
  v62 = *MEMORY[0x277D85DE8];
  v13 = a6 <= 0.0001 || a1 == 0 || a2 == 0 || a3 == 0;
  if (!v13 && (v16 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a7, a7.f32[0]), a8, a8.f32[0]), a9, a9.n128_f32[0]), v17 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a7, *a7.f32, 1), a8, *a8.f32, 1), a9, a9.n128_u64[0], 1), v18 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a7, a7, 2), a8, a8, 2), a9, a9, 2), v19 = *(MEMORY[0x277D860B0] + 16), v20 = *(MEMORY[0x277D860B0] + 32), v21 = vdupq_n_s32(0x38D1B717u), v22 = vandq_s8(vandq_s8(vcgeq_f32(v21, vabdq_f32(v17, v19)), vcgeq_f32(v21, vabdq_f32(v16, *MEMORY[0x277D860B0]))), vcgeq_f32(v21, vabdq_f32(v18, v20))), v22.i32[3] = v22.i32[2], (vminvq_u32(v22) & 0x80000000) != 0) && (v23 = vzip1q_s32(vzip2q_s32(a7, a9), vdupq_laneq_s32(a8, 2)), v24 = vtrn2q_s32(a7, a8), v24.i32[2] = a9.n128_i32[1], v25 = vzip1q_s32(vzip1q_s32(a7, a9), a8), v26 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, a7.f32[0]), v24, *a7.f32, 1), v23, a7, 2), v27 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, a8.f32[0]), v24, *a8.f32, 1), v23, a8, 2), v28 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, a9.n128_f32[0]), v24, a9.n128_u64[0], 1), v23, a9, 2), v29 = vdupq_n_s32(0x38D1B717u), v30 = vandq_s8(vandq_s8(vcgeq_f32(v29, vabdq_f32(v27, v19)), vcgeq_f32(v29, vabdq_f32(v26, *MEMORY[0x277D860B0]))), vcgeq_f32(v29, vabdq_f32(v28, v20))), v30.i32[3] = v30.i32[2], (vminvq_u32(v30) & 0x80000000) != 0) && (v31 = vmulq_f32(a7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a9, a9, 0xCuLL), a9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL))), vextq_s8(vuzp1q_s32(a9, a9), a9, 0xCuLL), vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL))), fabsf((v31.f32[2] + vaddv_f32(*v31.f32)) + -1.0) <= 0.000011) && a5 && a4 && (v34 = vdup_n_s32(0x38D1B717u), v35 = vand_s8(vcge_f32(v34, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a9, a9, 8uLL), *&vextq_s8(a10, a10, 8uLL)), 0xBF80000080000000))), vcge_f32(v34, vabs_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL))))), (vpmin_u32(v35, v35).u32[0] & 0x80000000) != 0))
  {
    v54 = a7;
    v55 = a8;
    v57 = a10;
    v42 = sub_2460E1940(a1);
    if (v42)
    {
      v43 = 0;
      v44 = a4;
      v45 = a3;
      v46 = a2;
      do
      {
        v47 = *v46++;
        v48 = v47;
        HIDWORD(v48) = 1;
        *(*(v42 + 96) + v43) = v48;
        v49 = *v44++;
        v50 = v49;
        HIDWORD(v50) = 1.0;
        *(*(v42 + 96) + v43 + 16) = v50;
        v51 = *v45++;
        v52 = v51;
        HIDWORD(v52) = 1.0;
        *(*(v42 + 96) + v43 + 32) = v52;
        v43 += 48;
      }

      while (48 * a1 != v43);
      *(v42 + 16) = a6;
      *(v42 + 32) = v54;
      *(v42 + 48) = v55;
      *(v42 + 64) = a9;
      *(v42 + 80) = v57;
      *a5 = v42;
      return 0;
    }

    else
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v53 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v59 = "OCVoxelCloudCreateWithRGBNormal";
        v60 = 1026;
        v61 = 202;
        _os_log_error_impl(&dword_2460CF000, v53, OS_LOG_TYPE_ERROR, "%s:%{public}d Insufficient memory.", buf, 0x12u);
      }

      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v32 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v59 = "OCVoxelCloudCreateWithRGBNormal";
      v60 = 1026;
      v61 = 196;
      _os_log_error_impl(&dword_2460CF000, v32, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t OCVoxelCloudCreateFromOCVoxels(unsigned int a1, const void *a2, uint64_t *a3, float a4, float32x4_t a5, float32x4_t a6, __n128 a7, int8x16_t a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a4 <= 0.0001 || a1 == 0 || a2 == 0;
  if (!v10 && (v13 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.n128_f32[0]), v14 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, a7.n128_u64[0], 1), v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v16 = *(MEMORY[0x277D860B0] + 16), v17 = *(MEMORY[0x277D860B0] + 32), v18 = vdupq_n_s32(0x38D1B717u), v19 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(v14, v16)), vcgeq_f32(v18, vabdq_f32(v13, *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(v15, v17))), v19.i32[3] = v19.i32[2], (vminvq_u32(v19) & 0x80000000) != 0) && (v20 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2)), v21 = vtrn2q_s32(a5, a6), v21.i32[2] = a7.n128_i32[1], v22 = vzip1q_s32(vzip1q_s32(a5, a7), a6), v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a5.f32[0]), v21, *a5.f32, 1), v20, a5, 2), v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a6.f32[0]), v21, *a6.f32, 1), v20, a6, 2), v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a7.n128_f32[0]), v21, a7.n128_u64[0], 1), v20, a7, 2), v26 = vdupq_n_s32(0x38D1B717u), v27 = vandq_s8(vandq_s8(vcgeq_f32(v26, vabdq_f32(v24, v16)), vcgeq_f32(v26, vabdq_f32(v23, *MEMORY[0x277D860B0]))), vcgeq_f32(v26, vabdq_f32(v25, v17))), v27.i32[3] = v27.i32[2], (vminvq_u32(v27) & 0x80000000) != 0) && (v28 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL))), fabsf((v28.f32[2] + vaddv_f32(*v28.f32)) + -1.0) <= 0.000011) && a3 && (v31 = vdup_n_s32(0x38D1B717u), v32 = vand_s8(vcge_f32(v31, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v31, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL))))), (vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0))
  {
    v41 = a5;
    v42 = a6;
    v44 = a8;
    v37 = sub_2460E1940(a1);
    if (v37)
    {
      *(v37 + 16) = a4;
      *(v37 + 32) = v41;
      *(v37 + 48) = v42;
      *(v37 + 64) = a7;
      *(v37 + 80) = v44;
      v38 = 48 * a1;
      v39 = v37;
      memcpy(*(v37 + 96), a2, v38);
      result = 0;
      *a3 = v39;
    }

    else
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v40 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "OCVoxelCloudCreateFromOCVoxels";
        v47 = 1026;
        v48 = 228;
        _os_log_error_impl(&dword_2460CF000, v40, OS_LOG_TYPE_ERROR, "%s:%{public}d Insufficient memory.", buf, 0x12u);
      }

      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v29 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "OCVoxelCloudCreateFromOCVoxels";
      v47 = 1026;
      v48 = 222;
      _os_log_error_impl(&dword_2460CF000, v29, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }

  return result;
}

uint64_t OCVoxelCloudCreateFromOCPoints(unsigned int a1, uint64_t a2, uint64_t *a3, float a4, float32x4_t a5, float32x4_t a6, __n128 a7, int8x16_t a8)
{
  v49 = *MEMORY[0x277D85DE8];
  v10 = a4 <= 0.0001 || a1 == 0 || a2 == 0;
  if (!v10 && (v13 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.n128_f32[0]), v14 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, a7.n128_u64[0], 1), v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v16 = *(MEMORY[0x277D860B0] + 16), v17 = *(MEMORY[0x277D860B0] + 32), v18 = vdupq_n_s32(0x38D1B717u), v19 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(v14, v16)), vcgeq_f32(v18, vabdq_f32(v13, *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(v15, v17))), v19.i32[3] = v19.i32[2], (vminvq_u32(v19) & 0x80000000) != 0) && (v20 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2)), v21 = vtrn2q_s32(a5, a6), v21.i32[2] = a7.n128_i32[1], v22 = vzip1q_s32(vzip1q_s32(a5, a7), a6), v23 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a5.f32[0]), v21, *a5.f32, 1), v20, a5, 2), v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a6.f32[0]), v21, *a6.f32, 1), v20, a6, 2), v25 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a7.n128_f32[0]), v21, a7.n128_u64[0], 1), v20, a7, 2), v26 = vdupq_n_s32(0x38D1B717u), v27 = vandq_s8(vandq_s8(vcgeq_f32(v26, vabdq_f32(v24, v16)), vcgeq_f32(v26, vabdq_f32(v23, *MEMORY[0x277D860B0]))), vcgeq_f32(v26, vabdq_f32(v25, v17))), v27.i32[3] = v27.i32[2], (vminvq_u32(v27) & 0x80000000) != 0) && (v28 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL))), fabsf((v28.f32[2] + vaddv_f32(*v28.f32)) + -1.0) <= 0.000011) && a3 && (v31 = vdup_n_s32(0x38D1B717u), v32 = vand_s8(vcge_f32(v31, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v31, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL))))), (vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0))
  {
    v41 = a5;
    v42 = a6;
    v44 = a8;
    v37 = sub_2460E1940(a1);
    if (v37)
    {
      v38 = 0;
      do
      {
        *&v39 = vcvt_s32_f32(vrndm_f32(*(a2 + v38)));
        *(&v39 + 1) = vcvtms_s32_f32(COERCE_FLOAT(*(a2 + v38 + 8))) | 0x100000000;
        *(*(v37 + 96) + v38) = v39;
        *(*(v37 + 96) + v38 + 16) = *(a2 + v38 + 16);
        *(*(v37 + 96) + v38 + 32) = *(a2 + v38 + 32);
        v38 += 48;
      }

      while (48 * a1 != v38);
      *(v37 + 16) = a4;
      *(v37 + 32) = v41;
      *(v37 + 48) = v42;
      *(v37 + 64) = a7;
      *(v37 + 80) = v44;
      *a3 = v37;
      return 0;
    }

    else
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v40 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v46 = "OCVoxelCloudCreateFromOCPoints";
        v47 = 1026;
        v48 = 249;
        _os_log_error_impl(&dword_2460CF000, v40, OS_LOG_TYPE_ERROR, "%s:%{public}d Insufficient memory.", buf, 0x12u);
      }

      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v29 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v46 = "OCVoxelCloudCreateFromOCPoints";
      v47 = 1026;
      v48 = 243;
      _os_log_error_impl(&dword_2460CF000, v29, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

const void *OCVoxelCloudRetain(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

void OCVoxelCloudRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OCVoxelCloudSize(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return -1431655765 * ((*(a1 + 104) - *(a1 + 96)) >> 4);
  }

  if (qword_27EE3F218 != -1)
  {
    dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
  }

  v2 = qword_27EE3F210;
  result = os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v3 = 136315394;
    v4 = "OCVoxelCloudSize";
    v5 = 1026;
    v6 = 283;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", &v3, 0x12u);
    return 0;
  }

  return result;
}

uint64_t OCVoxelCloudVoxels(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1 || (result = *(a1 + 96), result == *(a1 + 104)))
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v3 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "OCVoxelCloudVoxels";
      v6 = 1026;
      v7 = 292;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", &v4, 0x12u);
    }

    return 0;
  }

  return result;
}

uint64_t OCVoxelCloudVoxelAt(uint64_t a1, unint64_t a2)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = *(a1 + 96);
    if (0xAAAAAAAAAAAAAAABLL * ((*(a1 + 104) - v2) >> 4) > a2)
    {
      return v2 + 48 * a2;
    }
  }

  if (qword_27EE3F218 != -1)
  {
    dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
  }

  v4 = qword_27EE3F210;
  if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
  {
    v5 = 136315394;
    v6 = "OCVoxelCloudVoxelAt";
    v7 = 1026;
    v8 = 301;
    _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", &v5, 0x12u);
  }

  return 0;
}

uint64_t OCVoxelCloudBuildSpatialInfo(int8x8_t *a1)
{
  v27 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = a1[12];
    v2 = a1[13];
    if (*&v3 == *&v2)
    {
      if (qword_27EE3F218 != -1)
      {
        dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
      }

      v22 = qword_27EE3F210;
      if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v24 = "OCVoxelCloudBuildSpatialInfo";
        v25 = 1026;
        v26 = 315;
        _os_log_error_impl(&dword_2460CF000, v22, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to build spatial info.", buf, 0x12u);
      }

      return 0xFFFFFFFFLL;
    }

    else
    {
      if (a1[18])
      {
        v4 = a1[17];
        if (v4)
        {
          do
          {
            v5 = *v4;
            operator delete(v4);
            v4 = v5;
          }

          while (v5);
        }

        a1[17] = 0;
        v6 = a1[16];
        if (v6)
        {
          bzero(*&a1[15], 8 * *&v6);
        }

        a1[18] = 0;
        v3 = a1[12];
        v2 = a1[13];
      }

      if (*&v2 != *&v3)
      {
        for (i = 0; i < 0xAAAAAAAAAAAAAAABLL * ((*&v2 - *&v3) >> 4); ++i)
        {
          v8 = *(*&v3 + 48 * i);
          v9 = vmull_s32(*v8.i8, 0x12740A50466F45DLL);
          v10 = (v9.i64[0] ^ (83492791 * *(*&v3 + 48 * i + 8)) ^ v9.i64[1]) % *&a1[19];
          v11 = a1[16];
          if (!*&v11)
          {
            goto LABEL_31;
          }

          v12 = vcnt_s8(v11);
          v12.i16[0] = vaddlv_u8(v12);
          if (v12.u32[0] > 1uLL)
          {
            v13 = v10;
            if (v10 >= *&v11)
            {
              v13 = v10 % *&v11;
            }
          }

          else
          {
            v13 = (*&v11 - 1) & v10;
          }

          v14 = *(*&a1[15] + 8 * v13);
          if (!v14 || (v15 = *v14) == 0)
          {
LABEL_31:
            operator new();
          }

          if (v12.u32[0] < 2uLL)
          {
            while (1)
            {
              v17 = v15->i64[1];
              if (v17 == v10)
              {
                v16 = vceqq_s32(v15[1], v8);
                v16.i32[3] = v16.i32[2];
                if ((vminvq_u32(v16) & 0x80000000) != 0)
                {
                  goto LABEL_32;
                }
              }

              else if ((v17 & (*&v11 - 1)) != v13)
              {
                goto LABEL_31;
              }

              v15 = v15->i64[0];
              if (!v15)
              {
                goto LABEL_31;
              }
            }
          }

          while (1)
          {
            v19 = v15->u64[1];
            if (v19 == v10)
            {
              break;
            }

            if (v19 >= *&v11)
            {
              v19 %= *&v11;
            }

            if (v19 != v13)
            {
              goto LABEL_31;
            }

LABEL_26:
            v15 = v15->i64[0];
            if (!v15)
            {
              goto LABEL_31;
            }
          }

          v18 = vceqq_s32(v15[1], v8);
          v18.i32[3] = v18.i32[2];
          if ((vminvq_u32(v18) & 0x80000000) == 0)
          {
            goto LABEL_26;
          }

LABEL_32:
          v15[2].i64[0] = i;
        }
      }

      return 0;
    }
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v21 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v24 = "OCVoxelCloudBuildSpatialInfo";
      v25 = 1026;
      v26 = 310;
      _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t OCVoxelCloudVoxelIndexFromPosition(void *a1, int32x4_t a2)
{
  v21 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v7 = qword_27EE3F210;
    if (!os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      return -1;
    }

    v17 = 136315394;
    v18 = "OCVoxelCloudVoxelIndexFromPosition";
    v19 = 1026;
    v20 = 325;
    v8 = "%s:%{public}d Invalid voxelcloud.";
    goto LABEL_37;
  }

  if (!a1[18])
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v7 = qword_27EE3F210;
    if (!os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      return -1;
    }

    v17 = 136315394;
    v18 = "OCVoxelCloudVoxelIndexFromPosition";
    v19 = 1026;
    v20 = 333;
    v8 = "%s:%{public}d Spatial map is empty. Note: You must call OCVoxelCloudBuildSpatialInfo once before using OCVoxelCloudVoxelIndexFromPosition.";
    goto LABEL_37;
  }

  v2 = a1[16];
  if (!*&v2)
  {
    goto LABEL_31;
  }

  v3 = vmull_s32(*a2.i8, 0x12740A50466F45DLL);
  v4 = (v3.i64[0] ^ (83492791 * a2.i32[2]) ^ v3.i64[1]) % a1[19];
  v5 = vcnt_s8(v2);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    v6 = v4;
    if (v4 >= *&v2)
    {
      v6 = v4 % *&v2;
    }
  }

  else
  {
    v6 = (*&v2 - 1) & v4;
  }

  v9 = *(a1[15] + 8 * v6);
  if (!v9 || (v10 = *v9) == 0)
  {
LABEL_31:
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v7 = qword_27EE3F210;
    if (!os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      return -1;
    }

    v17 = 136315394;
    v18 = "OCVoxelCloudVoxelIndexFromPosition";
    v19 = 1026;
    v20 = 339;
    v8 = "%s:%{public}d Voxel position not found in map.";
LABEL_37:
    _os_log_error_impl(&dword_2460CF000, v7, OS_LOG_TYPE_ERROR, v8, &v17, 0x12u);
    return -1;
  }

  if (v5.u32[0] < 2uLL)
  {
    v11 = *&v2 - 1;
    while (1)
    {
      v15 = v10->i64[1];
      if (v15 == v4)
      {
        v14 = vceqq_s32(v10[1], a2);
        v14.i32[3] = v14.i32[2];
        if ((vminvq_u32(v14) & 0x80000000) != 0)
        {
          return v10[2].i64[0];
        }
      }

      else if ((v15 & v11) != v6)
      {
        goto LABEL_31;
      }

      v10 = v10->i64[0];
      if (!v10)
      {
        goto LABEL_31;
      }
    }
  }

  while (1)
  {
    v13 = v10->u64[1];
    if (v13 == v4)
    {
      break;
    }

    if (v13 >= *&v2)
    {
      v13 %= *&v2;
    }

    if (v13 != v6)
    {
      goto LABEL_31;
    }

LABEL_21:
    v10 = v10->i64[0];
    if (!v10)
    {
      goto LABEL_31;
    }
  }

  v12 = vceqq_s32(v10[1], a2);
  v12.i32[3] = v12.i32[2];
  if ((vminvq_u32(v12) & 0x80000000) == 0)
  {
    goto LABEL_21;
  }

  return v10[2].i64[0];
}