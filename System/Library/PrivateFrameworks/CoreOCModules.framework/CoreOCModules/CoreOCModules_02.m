uint64_t OCPointCloudCreateFromDenseDepth(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, int a5, uint64_t a6)
{
  v20 = *MEMORY[0x277D85DE8];
  if (sub_2460F8758(a1, a2, a3, a4, a5, a6))
  {
    kdebug_trace();
    buf[0] = 0;
    v19 = 0;
    v14[0] = 0;
    v14[64] = 0;
    sub_2460F8CAC(0, 0, 0, a1, a2, a3, a4, a5, 0, buf, v14, a6);
  }

  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v12 = qword_27EE3F4B0;
  if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v16 = "OCPointCloudCreateFromDenseDepth";
    v17 = 1026;
    v18 = 1598;
    _os_log_error_impl(&dword_2460CF000, v12, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid input.", buf, 0x12u);
  }

  return 4294967294;
}

uint64_t sub_2460F8758(CVPixelBufferRef pixelBuffer, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, int a5, uint64_t a6)
{
  v32 = *MEMORY[0x277D85DE8];
  if (pixelBuffer && CVPixelBufferGetWidth(pixelBuffer) && CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(pixelBuffer) == 1717855600)
  {
    v12 = 1;
    if (!a2)
    {
      goto LABEL_17;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v13 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "isValidInputForPointCloudFromDenseDepth";
      v30 = 1026;
      v31 = 1476;
      _os_log_error_impl(&dword_2460CF000, v13, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid depth image.", &v28, 0x12u);
      v12 = 0;
      if (!a2)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = 0;
      if (!a2)
      {
        goto LABEL_17;
      }
    }
  }

  Width = CVPixelBufferGetWidth(a2);
  if (Width != CVPixelBufferGetWidth(pixelBuffer) || (Height = CVPixelBufferGetHeight(a2), Height != CVPixelBufferGetHeight(pixelBuffer)) || CVPixelBufferGetPixelFormatType(a2) != 1717855600)
  {
LABEL_17:
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v17 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "isValidInputForPointCloudFromDenseDepth";
      v30 = 1026;
      v31 = 1484;
      _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid depth confidence image.", &v28, 0x12u);
      v16 = 0;
      if (!a3)
      {
        goto LABEL_31;
      }
    }

    else
    {
      v16 = 0;
      if (!a3)
      {
        goto LABEL_31;
      }
    }

    goto LABEL_21;
  }

  v16 = 1;
  if (!a3)
  {
    goto LABEL_31;
  }

LABEL_21:
  v18 = CVPixelBufferGetWidth(a3);
  if (v18 == CVPixelBufferGetWidth(pixelBuffer))
  {
    v19 = CVPixelBufferGetHeight(a3);
    if (v19 == CVPixelBufferGetHeight(pixelBuffer) && CVPixelBufferGetPixelFormatType(a3) == 1380410945)
    {
LABEL_31:
      v21 = 1;
      if (!a4)
      {
        goto LABEL_38;
      }

      goto LABEL_32;
    }
  }

  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v20 = qword_27EE3F4B0;
  if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "isValidInputForPointCloudFromDenseDepth";
    v30 = 1026;
    v31 = 1494;
    _os_log_error_impl(&dword_2460CF000, v20, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid normal image.", &v28, 0x12u);
  }

  v21 = 0;
  if (!a4)
  {
LABEL_38:
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v23 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v28 = 136315394;
      v29 = "isValidInputForPointCloudFromDenseDepth";
      v30 = 1026;
      v31 = 1502;
      _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid color image.", &v28, 0x12u);
    }

    v22 = 0;
    if (a6)
    {
      goto LABEL_46;
    }

    goto LABEL_43;
  }

LABEL_32:
  if (!CVPixelBufferGetWidth(a4) || !CVPixelBufferGetHeight(a4) || CVPixelBufferGetPixelFormatType(a4) != 875704422 && CVPixelBufferGetPixelFormatType(a4) != 875704438)
  {
    goto LABEL_38;
  }

  v22 = 1;
  if (a6)
  {
    goto LABEL_46;
  }

LABEL_43:
  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v24 = qword_27EE3F4B0;
  if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "isValidInputForPointCloudFromDenseDepth";
    v30 = 1026;
    v31 = 1507;
    _os_log_error_impl(&dword_2460CF000, v24, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid input pointcloud.", &v28, 0x12u);
    if (a5)
    {
      goto LABEL_51;
    }

    goto LABEL_47;
  }

LABEL_46:
  if (a5)
  {
    goto LABEL_51;
  }

LABEL_47:
  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v25 = qword_27EE3F4B0;
  if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
  {
    v28 = 136315394;
    v29 = "isValidInputForPointCloudFromDenseDepth";
    v30 = 1026;
    v31 = 1512;
    _os_log_error_impl(&dword_2460CF000, v25, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid step size.", &v28, 0x12u);
  }

LABEL_51:
  v26 = v12 & v16 & v21 & v22;
  if (!a6)
  {
    v26 = 0;
  }

  if (a5)
  {
    return v26;
  }

  else
  {
    return 0;
  }
}

void sub_2460F8CAC(int a1, int a2, int a3, CVPixelBufferRef pixelBuffer, __CVBuffer *a5, __CVBuffer *a6, __CVBuffer *a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = vcvtps_u32_f32(vcvts_n_f32_u64(CVPixelBufferGetWidth(pixelBuffer), 5uLL));
  if (vcvtps_u32_f32(vcvts_n_f32_u64(CVPixelBufferGetHeight(pixelBuffer), 5uLL)) * v15)
  {
    operator new();
  }

  if (a1)
  {
    operator new();
  }

  if (a9)
  {
    if (*(a9 + 104))
    {
      operator new();
    }
  }

  CVPixelBufferGetWidth(pixelBuffer);
  CVPixelBufferGetHeight(pixelBuffer);
  CVPixelBufferGetWidth(a7);
  CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
  CVPixelBufferLockBaseAddress(a5, 1uLL);
  CVPixelBufferLockBaseAddress(a6, 1uLL);
  CVPixelBufferLockBaseAddress(a7, 1uLL);
  cva::imageViewFromPixelBuffer<float>();
}

void sub_2460FA9BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p, uint64_t a35, uint64_t a36, int a37, int a38, void *a39, void *a40, void *a41, uint64_t a42, uint64_t a43, uint64_t a44, void *a45, void *a46, void *a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, uint64_t a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  sub_2460F7C9C(&a64);
  if (a38 && __p)
  {
    operator delete(__p);
  }

  if (a59)
  {
    if (a47)
    {
      operator delete(a47);
    }
  }

  if (a39)
  {
    operator delete(a39);
    v65 = a40;
    if (!a40)
    {
LABEL_9:
      v66 = a41;
      if (!a41)
      {
        goto LABEL_10;
      }

      goto LABEL_15;
    }
  }

  else
  {
    v65 = a40;
    if (!a40)
    {
      goto LABEL_9;
    }
  }

  operator delete(v65);
  v66 = a41;
  if (!a41)
  {
LABEL_10:
    v67 = a45;
    if (!a45)
    {
      goto LABEL_11;
    }

    goto LABEL_16;
  }

LABEL_15:
  operator delete(v66);
  v67 = a45;
  if (!a45)
  {
LABEL_11:
    v68 = a46;
    if (!a46)
    {
      goto LABEL_12;
    }

    goto LABEL_17;
  }

LABEL_16:
  operator delete(v67);
  v68 = a46;
  if (!a46)
  {
LABEL_12:
    _Unwind_Resume(a1);
  }

LABEL_17:
  operator delete(v68);
  _Unwind_Resume(a1);
}

void *sub_2460FAB04(void *result, unint64_t a2)
{
  if (0xCCCCCCCCCCCCCCCDLL * ((result[2] - *result) >> 2) < a2)
  {
    operator new();
  }

  return result;
}

uint64_t OCPointCloudCreateFromDenseDepthWithBoundingBox(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, int a5, uint64_t a6, double a7, double a8, double a9, __n128 a10, __n128 a11, float32x4_t a12, int8x16_t a13, uint64_t a14, uint64_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19)
{
  v54 = *MEMORY[0x277D85DE8];
  v44 = a16;
  v45 = a17;
  v46 = a18;
  v47 = a19;
  if (sub_2460F8758(a1, a2, a3, a4, a5, a6))
  {
    if (sub_246104370(&v44))
    {
      v25 = *(MEMORY[0x277D860B0] + 16);
      v26 = *(MEMORY[0x277D860B0] + 32);
      v27 = vdupq_n_s32(0x38D1B717u);
      v28 = vandq_s8(vandq_s8(vcgeq_f32(v27, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a10, a10.n128_u64[0], 1), a11, a11.n128_u64[0], 1), a12, *a12.f32, 1), v25)), vcgeq_f32(v27, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a10, a10.n128_f32[0]), a11, a11.n128_f32[0]), a12, a12.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a10, a10, 2), a11, a11, 2), a12, a12, 2), v26)));
      v28.i32[3] = v28.i32[2];
      if ((vminvq_u32(v28) & 0x80000000) != 0)
      {
        v29 = vzip1q_s32(vzip2q_s32(a10, a12), vdupq_laneq_s32(a11, 2));
        v30 = vtrn2q_s32(a10, a11);
        v30.i32[2] = a12.i32[1];
        v31 = vzip1q_s32(vzip1q_s32(a10, a12), a11);
        v32 = vandq_s8(vandq_s8(vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, a11.n128_f32[0]), v30, a11.n128_u64[0], 1), v29, a11, 2), v25)), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, a10.n128_f32[0]), v30, a10.n128_u64[0], 1), v29, a10, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, a12.f32[0]), v30, *a12.f32, 1), v29, a12, 2), v26)));
        v32.i32[3] = v32.i32[2];
        if ((vminvq_u32(v32) & 0x80000000) != 0)
        {
          v33 = vmulq_f32(a10, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a12, a12, 0xCuLL), a12, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a11, a11), a11, 0xCuLL))), vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL), vextq_s8(vextq_s8(a11, a11, 0xCuLL), a11, 8uLL)));
          if (fabsf((v33.f32[2] + vaddv_f32(*v33.f32)) + -1.0) <= 0.000011)
          {
            v34 = vdup_n_s32(0x38D1B717u);
            v35 = vand_s8(vcge_f32(v34, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a12, a12, 8uLL), *&vextq_s8(a13, a13, 8uLL)), 0xBF80000080000000))), vcge_f32(v34, vabs_f32(vzip2_s32(*&vextq_s8(a10, a10, 8uLL), *&vextq_s8(a11, a11, 8uLL)))));
            if ((vpmin_u32(v35, v35).u32[0] & 0x80000000) != 0)
            {
              kdebug_trace();
              *buf = a10;
              *&buf[16] = a11;
              v51 = a12;
              v52 = a13;
              v53 = 1;
              v48[0] = v44;
              v48[1] = v45;
              v48[2] = v46;
              v48[3] = v47;
              v49 = 1;
              sub_2460F8CAC(0, 0, 0, a1, a2, a3, a4, a5, 0, buf, v48, a6);
            }
          }
        }
      }

      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v36 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateFromDenseDepthWithBoundingBox";
        *&buf[12] = 1026;
        *&buf[14] = 1635;
        v37 = "%s:%{public}d Invalid camera to world transform, computing pointcloud without bounding box.";
LABEL_20:
        _os_log_debug_impl(&dword_2460CF000, v36, OS_LOG_TYPE_DEBUG, v37, buf, 0x12u);
      }
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v36 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_DEBUG))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateFromDenseDepthWithBoundingBox";
        *&buf[12] = 1026;
        *&buf[14] = 1629;
        v37 = "%s:%{public}d Invalid bounding box transform, computing pointcloud without bounding box.";
        goto LABEL_20;
      }
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v38 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromDenseDepthWithBoundingBox";
      *&buf[12] = 1026;
      *&buf[14] = 1623;
      _os_log_error_impl(&dword_2460CF000, v38, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid input.", buf, 0x12u);
    }
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromDenseDepthWithPlaneClassification(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, float32x4_t a11, float32x4_t a12, int32x4_t a13, int8x16_t a14, float a15)
{
  v52 = *MEMORY[0x277D85DE8];
  if (sub_2460F8758(a1, a2, a3, a4, a5, a7))
  {
    if (a6)
    {
      v24 = a11;
      v23 = a12;
      v25 = a13;
      v26 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, v24.f32[0]), v23, v23.f32[0]), v25, v25.f32[0]);
      v27 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v24, *v24.f32, 1), v23, *v23.f32, 1), v25, *v25.f32, 1);
      v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v24, 2), v23, v23, 2), v25, v25, 2);
      v29 = *(MEMORY[0x277D860B0] + 16);
      v30 = *(MEMORY[0x277D860B0] + 32);
      v31 = vdupq_n_s32(0x38D1B717u);
      v32 = vandq_s8(vandq_s8(vcgeq_f32(v31, vabdq_f32(v27, v29)), vcgeq_f32(v31, vabdq_f32(v26, *MEMORY[0x277D860B0]))), vcgeq_f32(v31, vabdq_f32(v28, v30)));
      v32.i32[3] = v32.i32[2];
      if ((vminvq_u32(v32) & 0x80000000) != 0)
      {
        v33 = vzip1q_s32(vzip2q_s32(a11, a13), vdupq_laneq_s32(a12, 2));
        v34 = vtrn2q_s32(a11, a12);
        v34.i32[2] = a13.i32[1];
        v35 = vzip1q_s32(vzip1q_s32(a11, a13), a12);
        v36 = vandq_s8(vandq_s8(vcgeq_f32(v31, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, a12.f32[0]), v34, *a12.f32, 1), v33, a12, 2), v29)), vcgeq_f32(v31, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, a11.f32[0]), v34, *a11.f32, 1), v33, a11, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v31, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, *a13.i32), v34, *a13.i8, 1), v33, a13, 2), v30)));
        v36.i32[3] = v36.i32[2];
        if ((vminvq_u32(v36) & 0x80000000) != 0)
        {
          v37 = vmulq_f32(a11, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a13, a13, 0xCuLL), a13, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL))), vextq_s8(vuzp1q_s32(a13, a13), a13, 0xCuLL), vextq_s8(vextq_s8(a12, a12, 0xCuLL), a12, 8uLL)));
          if (fabsf((v37.f32[2] + vaddv_f32(*v37.f32)) + -1.0) <= 0.000011 && a15 >= 0.0)
          {
            v41 = vdup_n_s32(0x38D1B717u);
            v42 = vand_s8(vcge_f32(v41, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a13, a13, 8uLL), *&vextq_s8(a14, a14, 8uLL)), 0xBF80000080000000))), vcge_f32(v41, vabs_f32(vzip2_s32(*&vextq_s8(a11, a11, 8uLL), *&vextq_s8(a12, a12, 8uLL)))));
            if ((vpmin_u32(v42, v42).u32[0] & 0x80000000) != 0)
            {
              kdebug_trace();
              *buf = a11;
              *&buf[16] = a12;
              v49 = a13;
              v50 = a14;
              v51 = 1;
              v47[0] = 0;
              v47[64] = 0;
              sub_2460F8CAC(0, 0, 0, a1, a2, a3, a4, a5, a6, buf, v47, a7);
            }
          }
        }
      }
    }

    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v38 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromDenseDepthWithPlaneClassification";
      *&buf[12] = 1026;
      *&buf[14] = 1666;
      v39 = "%s:%{public}d Invalid plane data.";
LABEL_15:
      _os_log_error_impl(&dword_2460CF000, v38, OS_LOG_TYPE_ERROR, v39, buf, 0x12u);
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v38 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromDenseDepthWithPlaneClassification";
      *&buf[12] = 1026;
      *&buf[14] = 1661;
      v39 = "%s:%{public}d Failed to create pointcloud - invalid input.";
      goto LABEL_15;
    }
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromDenseDepthWithPlaneClassificationAndBoundingBox(__CVBuffer *a1, __CVBuffer *a2, __CVBuffer *a3, __CVBuffer *a4, int a5, uint64_t a6, uint64_t a7, double a8, double a9, double a10, float32x4_t a11, float32x4_t a12, int32x4_t a13, int8x16_t a14, float a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20)
{
  v63 = *MEMORY[0x277D85DE8];
  v53 = a17;
  v54 = a18;
  v55 = a19;
  v56 = a20;
  if (sub_2460F8758(a1, a2, a3, a4, a5, a7))
  {
    if (a6)
    {
      v29 = a11;
      v28 = a12;
      v30 = a13;
      v31 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v29, v29.f32[0]), v28, v28.f32[0]), v30, v30.f32[0]);
      v32 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v29, *v29.f32, 1), v28, *v28.f32, 1), v30, *v30.f32, 1);
      v33 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v29, v29, 2), v28, v28, 2), v30, v30, 2);
      v34 = *(MEMORY[0x277D860B0] + 16);
      v35 = *(MEMORY[0x277D860B0] + 32);
      v36 = vdupq_n_s32(0x38D1B717u);
      v37 = vandq_s8(vandq_s8(vcgeq_f32(v36, vabdq_f32(v32, v34)), vcgeq_f32(v36, vabdq_f32(v31, *MEMORY[0x277D860B0]))), vcgeq_f32(v36, vabdq_f32(v33, v35)));
      v37.i32[3] = v37.i32[2];
      if ((vminvq_u32(v37) & 0x80000000) != 0)
      {
        v38 = vzip1q_s32(vzip2q_s32(a11, a13), vdupq_laneq_s32(a12, 2));
        v39 = vtrn2q_s32(a11, a12);
        v39.i32[2] = a13.i32[1];
        v40 = vzip1q_s32(vzip1q_s32(a11, a13), a12);
        v41 = vandq_s8(vandq_s8(vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, a12.f32[0]), v39, *a12.f32, 1), v38, a12, 2), v34)), vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, a11.f32[0]), v39, *a11.f32, 1), v38, a11, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, *a13.i32), v39, *a13.i8, 1), v38, a13, 2), v35)));
        v41.i32[3] = v41.i32[2];
        if ((vminvq_u32(v41) & 0x80000000) != 0)
        {
          v42 = vmulq_f32(a11, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a13, a13, 0xCuLL), a13, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a12, a12), a12, 0xCuLL))), vextq_s8(vuzp1q_s32(a13, a13), a13, 0xCuLL), vextq_s8(vextq_s8(a12, a12, 0xCuLL), a12, 8uLL)));
          if (fabsf((v42.f32[2] + vaddv_f32(*v42.f32)) + -1.0) <= 0.000011 && a15 >= 0.0)
          {
            v46 = vdup_n_s32(0x38D1B717u);
            v47 = vand_s8(vcge_f32(v46, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a13, a13, 8uLL), *&vextq_s8(a14, a14, 8uLL)), 0xBF80000080000000))), vcge_f32(v46, vabs_f32(vzip2_s32(*&vextq_s8(a11, a11, 8uLL), *&vextq_s8(a12, a12, 8uLL)))));
            if ((vpmin_u32(v47, v47).u32[0] & 0x80000000) != 0)
            {
              if (sub_246104370(&v53))
              {
                kdebug_trace();
                *buf = a11;
                *&buf[16] = a12;
                v60 = a13;
                v61 = a14;
                v62 = 1;
                v57[0] = v53;
                v57[1] = v54;
                v57[2] = v55;
                v57[3] = v56;
                v58 = 1;
                sub_2460F8CAC(0, 0, 0, a1, a2, a3, a4, a5, a6, buf, v57, a7);
              }

              if (qword_27EE3F4B8 != -1)
              {
                dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
              }

              v48 = qword_27EE3F4B0;
              if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_DEBUG))
              {
                *buf = 136315394;
                *&buf[4] = "OCPointCloudCreateFromDenseDepthWithPlaneClassificationAndBoundingBox";
                *&buf[12] = 1026;
                *&buf[14] = 1703;
                _os_log_debug_impl(&dword_2460CF000, v48, OS_LOG_TYPE_DEBUG, "%s:%{public}d Invalid bounding box transform.", buf, 0x12u);
              }

              return 4294967294;
            }
          }
        }
      }
    }

    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v43 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromDenseDepthWithPlaneClassificationAndBoundingBox";
      *&buf[12] = 1026;
      *&buf[14] = 1698;
      v44 = "%s:%{public}d Invalid plane data.";
LABEL_15:
      _os_log_error_impl(&dword_2460CF000, v43, OS_LOG_TYPE_ERROR, v44, buf, 0x12u);
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v43 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromDenseDepthWithPlaneClassificationAndBoundingBox";
      *&buf[12] = 1026;
      *&buf[14] = 1693;
      v44 = "%s:%{public}d Failed to create pointcloud - invalid input.";
      goto LABEL_15;
    }
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromSparseAndDenseDepth(int a1, uint64_t a2, uint64_t a3, CVPixelBufferRef pixelBuffer, __CVBuffer *a5, __CVBuffer *a6, __CVBuffer *a7, int a8, uint64_t a9)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3)
  {
    v10 = a2;
    v11 = a3;
    if (sub_2460F8758(pixelBuffer, a5, a6, a7, a8, a9))
    {
      kdebug_trace();
      buf[0] = 0;
      v25 = 0;
      v20[0] = 0;
      v20[64] = 0;
      sub_2460F8CAC(a1, v10, v11, pixelBuffer, a5, a6, a7, a8, 0, buf, v20, a9);
    }

    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v17 = qword_27EE3F4B0;
    if (!os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    *buf = 136315394;
    v22 = "OCPointCloudCreateFromSparseAndDenseDepth";
    v23 = 1026;
    v24 = 1734;
    v18 = "%s:%{public}d Failed to create pointcloud - invalid input.";
LABEL_15:
    _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, v18, buf, 0x12u);
    return 4294967294;
  }

  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v17 = qword_27EE3F4B0;
  if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315394;
    v22 = "OCPointCloudCreateFromSparseAndDenseDepth";
    v23 = 1026;
    v24 = 1728;
    v18 = "%s:%{public}d Invalid input pointcloud.";
    goto LABEL_15;
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox(int a1, uint64_t a2, uint64_t a3, CVPixelBufferRef pixelBuffer, __CVBuffer *a5, __CVBuffer *a6, __CVBuffer *a7, int a8, double a9, double a10, double a11, __n128 a12, __n128 a13, float32x4_t a14, int8x16_t a15, __int128 a16, __int128 a17, __int128 a18, __int128 a19, uint64_t a20)
{
  v58 = *MEMORY[0x277D85DE8];
  v48 = a16;
  v49 = a17;
  v50 = a18;
  v51 = a19;
  if (!a1 || !a2 || !a3)
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v41 = qword_27EE3F4B0;
    if (!os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    *buf = 136315394;
    *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox";
    *&buf[12] = 1026;
    *&buf[14] = 1760;
    v42 = "%s:%{public}d Invalid input pointcloud.";
LABEL_22:
    _os_log_error_impl(&dword_2460CF000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x12u);
    return 4294967294;
  }

  v21 = a2;
  v22 = a3;
  if ((sub_2460F8758(pixelBuffer, a5, a6, a7, a8, a20) & 1) == 0)
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v41 = qword_27EE3F4B0;
    if (!os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    *buf = 136315394;
    *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox";
    *&buf[12] = 1026;
    *&buf[14] = 1766;
    v42 = "%s:%{public}d Failed to create pointcloud - invalid input.";
    goto LABEL_22;
  }

  if (sub_246104370(&v48))
  {
    v28 = *(MEMORY[0x277D860B0] + 16);
    v29 = *(MEMORY[0x277D860B0] + 32);
    v30 = vdupq_n_s32(0x38D1B717u);
    v31 = vandq_s8(vandq_s8(vcgeq_f32(v30, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a12, a12.n128_u64[0], 1), a13, a13.n128_u64[0], 1), a14, *a14.f32, 1), v28)), vcgeq_f32(v30, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a12, a12.n128_f32[0]), a13, a13.n128_f32[0]), a14, a14.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v30, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a12, a12, 2), a13, a13, 2), a14, a14, 2), v29)));
    v31.i32[3] = v31.i32[2];
    if ((vminvq_u32(v31) & 0x80000000) != 0)
    {
      v32 = vzip1q_s32(vzip2q_s32(a12, a14), vdupq_laneq_s32(a13, 2));
      v33 = vtrn2q_s32(a12, a13);
      v33.i32[2] = a14.i32[1];
      v34 = vzip1q_s32(vzip1q_s32(a12, a14), a13);
      v35 = vandq_s8(vandq_s8(vcgeq_f32(v30, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, a13.n128_f32[0]), v33, a13.n128_u64[0], 1), v32, a13, 2), v28)), vcgeq_f32(v30, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, a12.n128_f32[0]), v33, a12.n128_u64[0], 1), v32, a12, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v30, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v34, a14.f32[0]), v33, *a14.f32, 1), v32, a14, 2), v29)));
      v35.i32[3] = v35.i32[2];
      if ((vminvq_u32(v35) & 0x80000000) != 0)
      {
        v36 = vmulq_f32(a12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a14, a14, 0xCuLL), a14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a13, a13), a13, 0xCuLL))), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), vextq_s8(vextq_s8(a13, a13, 0xCuLL), a13, 8uLL)));
        if (fabsf((v36.f32[2] + vaddv_f32(*v36.f32)) + -1.0) <= 0.000011)
        {
          v37 = vdup_n_s32(0x38D1B717u);
          v38 = vand_s8(vcge_f32(v37, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a14, a14, 8uLL), *&vextq_s8(a15, a15, 8uLL)), 0xBF80000080000000))), vcge_f32(v37, vabs_f32(vzip2_s32(*&vextq_s8(a12, a12, 8uLL), *&vextq_s8(a13, a13, 8uLL)))));
          if ((vpmin_u32(v38, v38).u32[0] & 0x80000000) != 0)
          {
            kdebug_trace();
            *buf = a12;
            *&buf[16] = a13;
            v55 = a14;
            v56 = a15;
            v57 = 1;
            v52[0] = v48;
            v52[1] = v49;
            v52[2] = v50;
            v52[3] = v51;
            v53 = 1;
            sub_2460F8CAC(a1, v21, v22, pixelBuffer, a5, a6, a7, a8, 0, buf, v52, a20);
          }
        }
      }
    }

    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v39 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox";
      *&buf[12] = 1026;
      *&buf[14] = 1776;
      v40 = "%s:%{public}d Invalid camera to world transform.";
LABEL_28:
      _os_log_debug_impl(&dword_2460CF000, v39, OS_LOG_TYPE_DEBUG, v40, buf, 0x12u);
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v39 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_DEBUG))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithBoundingBox";
      *&buf[12] = 1026;
      *&buf[14] = 1771;
      v40 = "%s:%{public}d Invalid bounding box transform.";
      goto LABEL_28;
    }
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassification(int a1, uint64_t a2, uint64_t a3, CVPixelBufferRef pixelBuffer, __CVBuffer *a5, __CVBuffer *a6, __CVBuffer *a7, int a8, double a9, double a10, double a11, __n128 a12, __n128 a13, float32x4_t a14, int8x16_t a15, float a16, uint64_t a17, uint64_t a18)
{
  v50 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3)
  {
    v19 = a2;
    v21 = a3;
    if (sub_2460F8758(pixelBuffer, a5, a6, a7, a8, a18))
    {
      if (a17)
      {
        v27 = *(MEMORY[0x277D860B0] + 16);
        v28 = *(MEMORY[0x277D860B0] + 32);
        v29 = vdupq_n_s32(0x38D1B717u);
        v30 = vandq_s8(vandq_s8(vcgeq_f32(v29, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a12, a12.n128_u64[0], 1), a13, a13.n128_u64[0], 1), a14, *a14.f32, 1), v27)), vcgeq_f32(v29, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a12, a12.n128_f32[0]), a13, a13.n128_f32[0]), a14, a14.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v29, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a12, a12, 2), a13, a13, 2), a14, a14, 2), v28)));
        v30.i32[3] = v30.i32[2];
        if ((vminvq_u32(v30) & 0x80000000) != 0)
        {
          v31 = vzip1q_s32(vzip2q_s32(a12, a14), vdupq_laneq_s32(a13, 2));
          v32 = vtrn2q_s32(a12, a13);
          v32.i32[2] = a14.i32[1];
          v33 = vzip1q_s32(vzip1q_s32(a12, a14), a13);
          v34 = vandq_s8(vandq_s8(vcgeq_f32(v29, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, a13.n128_f32[0]), v32, a13.n128_u64[0], 1), v31, a13, 2), v27)), vcgeq_f32(v29, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, a12.n128_f32[0]), v32, a12.n128_u64[0], 1), v31, a12, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v29, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, a14.f32[0]), v32, *a14.f32, 1), v31, a14, 2), v28)));
          v34.i32[3] = v34.i32[2];
          if ((vminvq_u32(v34) & 0x80000000) != 0)
          {
            v35 = vmulq_f32(a12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a14, a14, 0xCuLL), a14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a13, a13), a13, 0xCuLL))), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), vextq_s8(vextq_s8(a13, a13, 0xCuLL), a13, 8uLL)));
            if (fabsf((v35.f32[2] + vaddv_f32(*v35.f32)) + -1.0) <= 0.000011 && a16 >= 0.0)
            {
              v39 = vdup_n_s32(0x38D1B717u);
              v40 = vand_s8(vcge_f32(v39, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a14, a14, 8uLL), *&vextq_s8(a15, a15, 8uLL)), 0xBF80000080000000))), vcge_f32(v39, vabs_f32(vzip2_s32(*&vextq_s8(a12, a12, 8uLL), *&vextq_s8(a13, a13, 8uLL)))));
              if ((vpmin_u32(v40, v40).u32[0] & 0x80000000) != 0)
              {
                kdebug_trace();
                *buf = a12;
                *&buf[16] = a13;
                v47 = a14;
                v48 = a15;
                v49 = 1;
                v45[0] = 0;
                v45[64] = 0;
                sub_2460F8CAC(a1, v19, v21, pixelBuffer, a5, a6, a7, a8, a17, buf, v45, a18);
              }
            }
          }
        }
      }

      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v36 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassification";
        *&buf[12] = 1026;
        *&buf[14] = 1815;
        v37 = "%s:%{public}d Invalid plane data.";
LABEL_22:
        _os_log_error_impl(&dword_2460CF000, v36, OS_LOG_TYPE_ERROR, v37, buf, 0x12u);
      }
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v36 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassification";
        *&buf[12] = 1026;
        *&buf[14] = 1808;
        v37 = "%s:%{public}d Failed to create pointcloud - invalid input.";
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v36 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassification";
      *&buf[12] = 1026;
      *&buf[14] = 1802;
      v37 = "%s:%{public}d Invalid input pointcloud.";
      goto LABEL_22;
    }
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox(int a1, uint64_t a2, uint64_t a3, CVPixelBufferRef pixelBuffer, __CVBuffer *a5, __CVBuffer *a6, __CVBuffer *a7, int a8, double a9, double a10, double a11, __n128 a12, __n128 a13, float32x4_t a14, int8x16_t a15, float a16, uint64_t a17, uint64_t a18, __int128 a19, __int128 a20, __int128 a21, __int128 a22, uint64_t a23)
{
  v61 = *MEMORY[0x277D85DE8];
  v51 = a19;
  v52 = a20;
  v53 = a21;
  v54 = a22;
  if (a1 && a2 && a3)
  {
    v24 = a2;
    v26 = a3;
    if (sub_2460F8758(pixelBuffer, a5, a6, a7, a8, a23))
    {
      if (a17)
      {
        v32 = *(MEMORY[0x277D860B0] + 16);
        v33 = *(MEMORY[0x277D860B0] + 32);
        v34 = vdupq_n_s32(0x38D1B717u);
        v35 = vandq_s8(vandq_s8(vcgeq_f32(v34, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a12, a12.n128_u64[0], 1), a13, a13.n128_u64[0], 1), a14, *a14.f32, 1), v32)), vcgeq_f32(v34, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a12, a12.n128_f32[0]), a13, a13.n128_f32[0]), a14, a14.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a12, a12, 2), a13, a13, 2), a14, a14, 2), v33)));
        v35.i32[3] = v35.i32[2];
        if ((vminvq_u32(v35) & 0x80000000) != 0)
        {
          v36 = vzip1q_s32(vzip2q_s32(a12, a14), vdupq_laneq_s32(a13, 2));
          v37 = vtrn2q_s32(a12, a13);
          v37.i32[2] = a14.i32[1];
          v38 = vzip1q_s32(vzip1q_s32(a12, a14), a13);
          v39 = vandq_s8(vandq_s8(vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, a13.n128_f32[0]), v37, a13.n128_u64[0], 1), v36, a13, 2), v32)), vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, a12.n128_f32[0]), v37, a12.n128_u64[0], 1), v36, a12, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, a14.f32[0]), v37, *a14.f32, 1), v36, a14, 2), v33)));
          v39.i32[3] = v39.i32[2];
          if ((vminvq_u32(v39) & 0x80000000) != 0)
          {
            v40 = vmulq_f32(a12, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a14, a14, 0xCuLL), a14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a13, a13), a13, 0xCuLL))), vextq_s8(vuzp1q_s32(a14, a14), a14, 0xCuLL), vextq_s8(vextq_s8(a13, a13, 0xCuLL), a13, 8uLL)));
            if (fabsf((v40.f32[2] + vaddv_f32(*v40.f32)) + -1.0) <= 0.000011 && a16 >= 0.0)
            {
              v44 = vdup_n_s32(0x38D1B717u);
              v45 = vand_s8(vcge_f32(v44, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a14, a14, 8uLL), *&vextq_s8(a15, a15, 8uLL)), 0xBF80000080000000))), vcge_f32(v44, vabs_f32(vzip2_s32(*&vextq_s8(a12, a12, 8uLL), *&vextq_s8(a13, a13, 8uLL)))));
              if ((vpmin_u32(v45, v45).u32[0] & 0x80000000) != 0)
              {
                if (sub_246104370(&v51))
                {
                  kdebug_trace();
                  *buf = a12;
                  *&buf[16] = a13;
                  v58 = a14;
                  v59 = a15;
                  v60 = 1;
                  v55[0] = v51;
                  v55[1] = v52;
                  v55[2] = v53;
                  v55[3] = v54;
                  v56 = 1;
                  sub_2460F8CAC(a1, v24, v26, pixelBuffer, a5, a6, a7, a8, a17, buf, v55, a23);
                }

                if (qword_27EE3F4B8 != -1)
                {
                  dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
                }

                v46 = qword_27EE3F4B0;
                if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 136315394;
                  *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox";
                  *&buf[12] = 1026;
                  *&buf[14] = 1860;
                  _os_log_debug_impl(&dword_2460CF000, v46, OS_LOG_TYPE_DEBUG, "%s:%{public}d Invalid bounding box transform.", buf, 0x12u);
                }

                return 4294967294;
              }
            }
          }
        }
      }

      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v41 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox";
        *&buf[12] = 1026;
        *&buf[14] = 1855;
        v42 = "%s:%{public}d Invalid plane data.";
LABEL_22:
        _os_log_error_impl(&dword_2460CF000, v41, OS_LOG_TYPE_ERROR, v42, buf, 0x12u);
      }
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v41 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox";
        *&buf[12] = 1026;
        *&buf[14] = 1848;
        v42 = "%s:%{public}d Failed to create pointcloud - invalid input.";
        goto LABEL_22;
      }
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v41 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateFromSparseAndDenseDepthWithPlaneClassificationAndBoundingBox";
      *&buf[12] = 1026;
      *&buf[14] = 1842;
      v42 = "%s:%{public}d Invalid input pointcloud.";
      goto LABEL_22;
    }
  }

  return 4294967294;
}

uint64_t OCPointCloudCreateFromDenseDepthFSD(__CVBuffer *a1, __CVBuffer *a2, uint64_t *a3, int8x16_t a4, int8x16_t a5, int8x16_t a6)
{
  v8 = a1;
  v74 = *MEMORY[0x277D85DE8];
  Width = CVPixelBufferGetWidth(a1);
  if (Width == CVPixelBufferGetWidth(a2) && (v10 = CVPixelBufferGetHeight(v8), v10 == CVPixelBufferGetHeight(a2)) && CVPixelBufferGetPixelFormatType(v8) == 1278226534 && CVPixelBufferGetPixelFormatType(a2) == 1111970369 && a3 && (v11 = vdup_n_s32(0x38D1B717u), v12 = vand_s8(vcge_f32(v11, vabs_f32(vadd_f32(vzip1_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL)), 0xBF80000080000000))), vcge_f32(v11, vabs_f32(*&vextq_s8(a4, a4, 4uLL)))), (vpmin_u32(v12, v12).u32[0] & 0x80000000) != 0))
  {
    CVPixelBufferLockBaseAddress(a2, 1uLL);
    CVPixelBufferLockBaseAddress(v8, 1uLL);
    v13 = CVPixelBufferGetWidth(a2);
    Height = CVPixelBufferGetHeight(a2);
    BytesPerRow = CVPixelBufferGetBytesPerRow(a2);
    BaseAddress = CVPixelBufferGetBaseAddress(a2);
    v65 = CVPixelBufferGetBaseAddress(v8);
    v16 = 0;
    v60 = Height;
    f32 = 0;
    if (Height)
    {
      v18 = 0;
      if (v13)
      {
        v19 = v13;
        v55 = a2;
        v56 = v8;
        v57 = a3;
        v20 = 0;
        v18 = 0;
        f32 = 0;
        v16 = 0;
        v21 = 0;
        v58 = 4 * v13;
        v22 = BaseAddress + 3;
        v64 = vdupq_n_s32(0x437F0000u);
        v63 = v13;
        do
        {
          v25 = 0;
          v61 = v22;
          v62 = v20;
          v26 = v20 - *&a6.i32[1];
          do
          {
            if (*v22)
            {
              v27 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_24613FAA0, ((v25 - *a6.i32) * v65[v25]) / *a4.i32), xmmword_24613FB80, (v26 * v65[v25]) / *&a5.i32[1]), xmmword_24613FB90, v65[v25]), xmmword_24613FA50);
              v28 = vmulq_f32(v27, v27);
              *&v29 = v28.f32[2] + vaddv_f32(*v28.f32);
              *v28.f32 = vrsqrte_f32(v29);
              *v28.f32 = vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32)));
              v30 = vmulq_n_f32(vnegq_f32(v27), vmul_f32(*v28.f32, vrsqrts_f32(v29, vmul_f32(*v28.f32, *v28.f32))).f32[0]);
              v30.i32[3] = 0;
              v28.i16[0] = *(v22 - 3);
              v28.i16[1] = HIBYTE(*(v22 - 3));
              v28.i16[2] = *(v22 - 1);
              v28.i16[3] = *v22;
              v31 = vdivq_f32(vcvtq_f32_u32(vmovl_u16(*v28.f32)), v64);
              v32 = vrev64q_s32(v31);
              v33 = vextq_s8(v32, v32, 0xCuLL);
              v34 = f32 - v18;
              v35 = 0xAAAAAAAAAAAAAAABLL * ((f32 - v18) >> 4) + 1;
              if (v35 > 0x555555555555555)
              {
                sub_2460D368C();
              }

              if (0x5555555555555556 * (-v18 >> 4) > v35)
              {
                v35 = 0x5555555555555556 * (-v18 >> 4);
              }

              if (0xAAAAAAAAAAAAAAABLL * (-v18 >> 4) >= 0x2AAAAAAAAAAAAAALL)
              {
                v36 = 0x555555555555555;
              }

              else
              {
                v36 = v35;
              }

              v69 = v31.i32[3];
              if (v36)
              {
                if (v36 <= 0x555555555555555)
                {
                  operator new();
                }

                goto LABEL_59;
              }

              v37 = (16 * ((f32 - v18) >> 4));
              *v37 = v27;
              v37[1] = v30;
              v37[2] = v33;
              f32 = v37[3].f32;
              v38 = v37[3 * (v34 / -48)].f32;
              memcpy(v38, v18, v34);
              if (v18)
              {
                operator delete(v18);
              }

              v39 = v21 - v16;
              v40 = 0xCCCCCCCCCCCCCCCDLL * ((v21 - v16) >> 2) + 1;
              if (v40 > 0xCCCCCCCCCCCCCCCLL)
              {
                sub_2460D368C();
              }

              if (0x999999999999999ALL * (-v16 >> 2) > v40)
              {
                v40 = 0x999999999999999ALL * (-v16 >> 2);
              }

              if (0xCCCCCCCCCCCCCCCDLL * (-v16 >> 2) >= 0x666666666666666)
              {
                v41 = 0xCCCCCCCCCCCCCCCLL;
              }

              else
              {
                v41 = v40;
              }

              if (v41)
              {
                if (v41 <= 0xCCCCCCCCCCCCCCCLL)
                {
                  operator new();
                }

LABEL_59:
                sub_2460D368C();
              }

              v42 = 4 * ((v21 - v16) >> 2);
              *v42 = 1065353216;
              *(v42 + 4) = v69;
              *(v42 + 8) = 1;
              *(v42 + 12) = 0x13F800000;
              v21 = v42 + 20;
              v43 = (v42 + 20 * (v39 / -20));
              memcpy(v43, v16, v39);
              if (v16)
              {
                operator delete(v16);
              }

              v16 = v43;
              v18 = v38;
              v19 = v63;
            }

            ++v25;
            v22 += 4;
          }

          while (v19 != v25);
          v20 = v62 + 1;
          v65 = (v65 + v58);
          v22 = &v61[BytesPerRow];
        }

        while (v62 + 1 != v60);
        v8 = v56;
        a3 = v57;
        a2 = v55;
      }
    }

    else
    {
      v18 = 0;
    }

    CVPixelBufferUnlockBaseAddress(a2, 1uLL);
    CVPixelBufferUnlockBaseAddress(v8, 1uLL);
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    v45 = Instance;
    if (Instance)
    {
      v46 = -1431655765 * ((f32 - v18) >> 4);
      sub_2460FD408((Instance + 96), v46);
      sub_2460FAB04((v45 + 120), v46);
      if (-1431655765 * ((f32 - v18) >> 4))
      {
        v47 = v18;
        v48 = v16;
        do
        {
          sub_2460F52EC(v45 + 96, v47);
          sub_2460F48CC(v45 + 120, v48);
          v48 = (v48 + 20);
          v47 += 3;
          --v46;
        }

        while (v46);
      }

      *(v45 + 16) = 1065353216;
      v50 = *(MEMORY[0x277D860B8] + 32);
      v49 = *(MEMORY[0x277D860B8] + 48);
      v51 = *(MEMORY[0x277D860B8] + 16);
      *(v45 + 32) = *MEMORY[0x277D860B8];
      *(v45 + 48) = v51;
      *(v45 + 64) = v50;
      *(v45 + 80) = v49;
      *a3 = v45;
      kdebug_trace();
      result = 0;
    }

    else
    {
      v52 = sub_2460FD4D8();
      if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v71 = "OCPointCloudCreateFromDenseDepthFSD";
        v72 = 1026;
        v73 = 1955;
        _os_log_error_impl(&dword_2460CF000, v52, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      result = 4294967293;
    }

    if (v16)
    {
      v53 = result;
      operator delete(v16);
      result = v53;
    }

    if (v18)
    {
      v54 = result;
      operator delete(v18);
      return v54;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v23 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v71 = "OCPointCloudCreateFromDenseDepthFSD";
      v72 = 1026;
      v73 = 1887;
      _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid inputs to ", buf, 0x12u);
    }

    return 4294967294;
  }

  return result;
}

void sub_2460FD3C4(_Unwind_Exception *exception_object)
{
  if (v2)
  {
    operator delete(v2);
  }

  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

void *sub_2460FD408(void *result, unint64_t a2)
{
  if (0xAAAAAAAAAAAAAAABLL * ((result[2] - *result) >> 4) < a2)
  {
    operator new();
  }

  return result;
}

id sub_2460FD4D8()
{
  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v1 = qword_27EE3F4B0;

  return v1;
}

const void *OCPointCloudRetain(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

uint64_t OCPointCloudSize(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return -1431655765 * ((*(a1 + 104) - *(a1 + 96)) >> 4);
  }

  if (qword_27EE3F4B8 != -1)
  {
    dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
  }

  v2 = qword_27EE3F4B0;
  result = os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v3 = 136315394;
    v4 = "OCPointCloudSize";
    v5 = 1026;
    v6 = 2002;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud.", &v3, 0x12u);
    return 0;
  }

  return result;
}

uint64_t OCPointCloudPoints(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1 || (result = *(a1 + 96), result == *(a1 + 104)))
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v3 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "OCPointCloudPoints";
      v6 = 1026;
      v7 = 2011;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud.", &v4, 0x12u);
    }

    return 0;
  }

  return result;
}

uint64_t OCPointCloudPointSupplements(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (!a1 || (result = *(a1 + 120), result == *(a1 + 128)))
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v3 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v4 = 136315394;
      v5 = "OCPointCloudPointSupplements";
      v6 = 1026;
      v7 = 2020;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud.", &v4, 0x12u);
    }

    return 0;
  }

  return result;
}

double OCPointCloudGetData@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *a2 = *(a1 + 16);
    v3 = *(a1 + 96);
    *(a2 + 80) = -1431655765 * ((*(a1 + 104) - v3) >> 4);
    v4 = *(a1 + 48);
    *(a2 + 16) = *(a1 + 32);
    *(a2 + 32) = v4;
    v5 = *(a1 + 64);
    v6 = *(a1 + 80);
    *(a2 + 48) = v5;
    *(a2 + 64) = v6;
    *(a2 + 88) = v3;
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v7 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "OCPointCloudGetData";
      v11 = 1026;
      v12 = 2030;
      _os_log_error_impl(&dword_2460CF000, v7, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud.", &v9, 0x12u);
    }

    *&v5 = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v5;
}

double OCPointCloudScale(uint64_t a1)
{
  v8 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    LODWORD(result) = *(a1 + 16);
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v2 = qword_27EE3F4B0;
    v3 = os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR);
    result = 0.0;
    if (v3)
    {
      v4 = 136315394;
      v5 = "OCPointCloudScale";
      v6 = 1026;
      v7 = 2044;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud.", &v4, 0x12u);
      return 0.0;
    }
  }

  return result;
}

double OCPointCloudTransformMatrix(float32x4_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(a1[2], a1[1].f32[0]), 0, a1[3]), 0, a1[4]), 0, a1[5]).u64[0];
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v2 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "OCPointCloudTransformMatrix";
      v5 = 1026;
      v6 = 2053;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud.", &v3, 0x12u);
    }

    return 0.0;
  }

  return result;
}

void sub_2460FDBC4(void *a1)
{
  *a1 = &unk_2858EBD20;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_2460FDC38(void *result)
{
  *result = &unk_2858EBD20;
  v1 = result[1];
  if (v1)
  {
    result[2] = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

float sub_2460FDC90(uint64_t a1, uint64_t a2, float32x4_t a3)
{
  v3 = *(a1 + 8);
  a3.i32[0] = *a2;
  v4 = *(a1 + 16) - v3;
  if (v4)
  {
    v5 = 0xAAAAAAAAAAAAAAABLL * (v4 >> 4);
    v6 = *(a2 + 8);
    a3.i32[1] = *(a2 + 4);
    if (v5 <= 1)
    {
      v5 = 1;
    }

    v7 = v3 + 1;
    v8.i64[0] = 0;
    v8.i32[2] = 0;
    v9 = 3.4028e38;
    v10 = 0uLL;
    do
    {
      v11 = vsub_f32(*a3.f32, *v7[-1].f32);
      v12 = sqrtf(vaddv_f32(vmul_f32(v11, v11)) + ((v6 - COERCE_FLOAT(v7[-1].i64[1])) * (v6 - COERCE_FLOAT(v7[-1].i64[1]))));
      if (v9 > v12)
      {
        v10 = *v7;
        v8 = v7[-1];
        v9 = v12;
      }

      v7 += 3;
      --v5;
    }

    while (v5);
  }

  else
  {
    v6 = *(a2 + 8);
    a3.i32[1] = *(a2 + 4);
    v10 = 0uLL;
    v8.i64[0] = 0;
    v8.i32[2] = 0;
  }

  *a3.f32 = vsub_f32(*a3.f32, *v8.f32);
  a3.f32[2] = v6 - v8.f32[2];
  v13 = vmulq_f32(v10, a3);
  return v13.f32[2] + vaddv_f32(*v13.f32);
}

void sub_2460FDD5C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (0xAAAAAAAAAAAAAAABLL * ((v3 - v4) >> 4) >= a2)
  {
    if (a2)
    {
      v9 = 48 * ((48 * a2 - 48) / 0x30) + 48;
      bzero(*(a1 + 8), v9);
      v4 += v9;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4) + a2;
    if (v6 > 0x555555555555555)
    {
      sub_2460D368C();
    }

    v7 = 0xAAAAAAAAAAAAAAABLL * ((v3 - v5) >> 4);
    if (2 * v7 > v6)
    {
      v6 = 2 * v7;
    }

    if (v7 >= 0x2AAAAAAAAAAAAAALL)
    {
      v8 = 0x555555555555555;
    }

    else
    {
      v8 = v6;
    }

    if (v8)
    {
      if (v8 <= 0x555555555555555)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v10 = (16 * ((v4 - *a1) >> 4));
    v11 = 48 * ((48 * a2 - 48) / 0x30) + 48;
    bzero(v10, v11);
    v12 = v4 - v5;
    v13 = &v10[-(v4 - v5)];
    memcpy(v13, v5, v12);
    *a1 = v13;
    *(a1 + 8) = &v10[v11];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

void *sub_2460FDF04(void *result, uint64_t a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a2)
  {
    if (!((2 * a2) >> 61))
    {
      operator new();
    }

    sub_2460D368C();
  }

  return result;
}

void sub_2460FE254(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
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

    v12 = v7 >> 3;
    *(8 * v8) = *a2;
    v5 = 8 * v8 + 8;
    if (v6 != v4)
    {
      v13 = v4 - v6 - 8;
      if (v13 > 0x57 && (v14 = 8 * v12, (v7 - &v6[8 * v12]) >= 0x20))
      {
        v18 = (v13 >> 3) + 1;
        v15 = &v6[8 * (v18 & 0x3FFFFFFFFFFFFFFCLL)];
        v19 = (8 * v8 - v14 + 16);
        v20 = (v6 + 16);
        v21 = v18 & 0x3FFFFFFFFFFFFFFCLL;
        do
        {
          v22 = *v20;
          *(v19 - 1) = *(v20 - 1);
          *v19 = v22;
          v19 += 2;
          v20 += 2;
          v21 -= 4;
        }

        while (v21);
        if (v18 == (v18 & 0x3FFFFFFFFFFFFFFCLL))
        {
          *a1 = 0;
          *(a1 + 8) = v5;
          *(a1 + 16) = 0;
          goto LABEL_19;
        }

        v16 = (8 * (v18 & 0x3FFFFFFFFFFFFFFCLL));
      }

      else
      {
        v15 = v6;
        v16 = 0;
      }

      do
      {
        v17 = *v15;
        v15 += 8;
        *v16++ = v17;
      }

      while (v15 != v4);
      v6 = *a1;
    }

    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (!v6)
    {
      goto LABEL_20;
    }

LABEL_19:
    operator delete(v6);
    goto LABEL_20;
  }

  *v4 = *a2;
  v5 = (v4 + 8);
LABEL_20:
  *(a1 + 8) = v5;
}

float *sub_2460FE3F8(float *result, float *a2, float *a3)
{
  v4 = a2[2];
  v3 = a2[3];
  v6 = *a2;
  v5 = a2[1];
  v7 = result + 2;
  v8 = result[2];
  v10 = *result;
  v9 = result[1];
  v11 = v8 - *result;
  v12 = v4 - *a2;
  v13 = result[3];
  v14 = ((v3 - v5) * v11) - (v12 * (v13 - v9));
  v15 = *result - *a2;
  v16 = (v12 * (v9 - v5)) - ((v3 - v5) * v15);
  if (fabsf(v14) > 0.000001)
  {
    *a3 = v10 + ((v16 / v14) * v11);
    v17 = result[1] + ((v16 / v14) * (result[3] - result[1]));
LABEL_3:
    a3[1] = v17;
    return result;
  }

  v18 = fabsf((v11 * (v9 - v5)) - ((v13 - v9) * v15));
  if (fabsf(v16) <= 0.000001 && v18 <= 0.000001)
  {
    v20 = v6 == v10 && v5 == v9;
    if (v20 || (v4 == v10 ? (v21 = v3 == v9) : (v21 = 0), v21))
    {
      if (a3 != result)
      {
        *a3 = *result;
      }
    }

    else if (v4 == v8 && v3 == v13 || v6 == v8 && v5 == v13)
    {
      if (v7 != a3)
      {
        *a3 = *v7;
      }
    }

    else
    {
      v22 = v6 > v10;
      if (v4 <= v10)
      {
        v22 = 0;
      }

      if (!v22 || v6 <= v8 || v4 <= v8)
      {
        v23 = v5 > v9;
        if (v3 <= v9)
        {
          v23 = 0;
        }

        if (!v23 || v5 <= v13 || v3 <= v13)
        {
          v24 = v6 < v10;
          if (v4 >= v10)
          {
            v24 = 0;
          }

          if (!v24 || v6 >= v8 || v4 >= v8)
          {
            v25 = v5 < v9;
            if (v3 >= v9)
            {
              v25 = 0;
            }

            if (!v25 || v5 >= v13 || v3 >= v13)
            {
              v26 = v10 > v8 && v24;
              v27 = v9 > v13 && v25;
              v28 = result[1];
              v29 = *result;
              if (!v26)
              {
                v28 = result[1];
                v29 = *result;
                if (!v27)
                {
                  if (v6 >= v8 || v4 >= v8 || (v28 = result[3], v29 = result[2], v8 <= v10))
                  {
                    if (v5 >= v13 || v3 >= v13 || (v28 = result[3], v29 = result[2], v13 <= v9))
                    {
                      if (v6 <= v10 || v6 <= v4 || (v28 = a2[1], v29 = *a2, v6 <= v8))
                      {
                        v30 = v5 > v13;
                        v32 = v5 > v3 && v5 > v9;
                        if (v32 && v30)
                        {
                          v28 = a2[1];
                        }

                        else
                        {
                          v28 = a2[3];
                        }

                        if (v32 && v30)
                        {
                          v29 = *a2;
                        }

                        else
                        {
                          v29 = a2[2];
                        }
                      }
                    }
                  }
                }
              }

              if ((v29 != v10 || v28 != v9) && (v10 < v8 ? (v33 = v22) : (v33 = 0), v9 < v13 ? (v34 = v23) : (v34 = 0), v33 || v34))
              {
                v5 = result[1];
                v6 = *result;
              }

              else if ((v29 != v8 || v28 != v13) && (v4 > v8 ? (v35 = v6 <= v8) : (v35 = 1), v35 ? (v36 = 0) : (v36 = 1), v3 > v13 ? (v37 = v5 <= v13) : (v37 = 1), (v38 = v36 & (v10 > v8), v37) ? (v39 = 0) : (v39 = 1), (v38 & 1) != 0 || (v39 & (v9 > v13)) != 0))
              {
                v5 = result[3];
                v6 = result[2];
              }

              else if (v29 == v6 && v28 == v5 || (v6 >= v10 || v6 >= v4 || v6 >= v8) && (v5 >= v9 || v5 >= v3 || v5 >= v13))
              {
                v5 = a2[3];
                v6 = a2[2];
              }

              *a3 = 0;
              v40 = *result;
              if (*result != v29 || (v41 = 0.0, v42 = 0.0, result[1] != v28))
              {
                if (v40 != v6 || (v41 = 0.0, v42 = 0.0, result[1] != v5))
                {
                  v42 = v40 + 0.0;
                  *a3 = v40 + 0.0;
                  v41 = result[1] + 0.0;
                  a3[1] = v41;
                }
              }

              v43 = *v7;
              if ((*v7 != v29 || result[3] != v28) && (v43 != v6 || result[3] != v5))
              {
                v42 = v43 + v42;
                *a3 = v42;
                v41 = result[3] + v41;
                a3[1] = v41;
              }

              v44 = *a2;
              v45 = a2[1];
              if ((*a2 != v29 || v45 != v28) && (v44 != v6 || v45 != v5))
              {
                v42 = v44 + v42;
                *a3 = v42;
                v41 = a2[1] + v41;
                a3[1] = v41;
              }

              v46 = a2[2];
              v47 = a2[3];
              if ((v46 != v29 || v47 != v28) && (v46 != v6 || v47 != v5))
              {
                v42 = v46 + v42;
                *a3 = v42;
                v41 = a2[3] + v41;
              }

              v17 = v41 * 0.5;
              *a3 = v42 * 0.5;
              goto LABEL_3;
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_2460FE830(float32x2_t **a1, float32x2_t *a2, float32x4_t *a3, uint64_t a4)
{
  bzero(*(a4 + 24), (*(a4 + 12) * *(a4 + 20)));
  v7 = *a1;
  v8 = a1[1];
  if (*a1 == v8)
  {
    v19 = 0;
LABEL_18:
    v20 = v19;
    if (v19)
    {
      v21 = 8;
      v22 = 0;
      if (v19 != 8)
      {
        v23 = 8;
        v22 = 0;
        do
        {
          if (*v23 < *v22 || vabds_f32(*v23, *v22) <= ((fabsf(*v22) * 0.00001) + 0.000001) && v23[1] < v22[1])
          {
            v22 = v23;
          }

          v23 += 2;
        }

        while (v23 != v19);
      }

      *&v37 = *v22;
      *&v38 = &v37;
      sub_246100E28(0, v19, &v38, 126 - 2 * __clz(v19 >> 3), 1);
      if (v20 != 8)
      {
        v24 = MEMORY[0];
        while (1)
        {
          v25 = v24;
          v26 = v21 - 2;
          v24 = *v21;
          if (vabds_f32(v25, *v21) <= ((fabsf(*v21) * 0.00001) + 0.000001) && vabds_f32(*(v21 - 1), v21[1]) <= ((fabsf(v21[1]) * 0.00001) + 0.000001))
          {
            break;
          }

          v21 += 2;
          if (v21 == v20)
          {
            goto LABEL_42;
          }
        }

        if (v26 != v20)
        {
          v27 = v21 + 2;
          if (v21 + 2 != v20)
          {
            v28 = *v26;
            do
            {
              if (vabds_f32(v28, *v27) > ((fabsf(*v27) * 0.00001) + 0.000001) || vabds_f32(v26[1], v27[1]) > ((fabsf(v27[1]) * 0.00001) + 0.000001))
              {
                v29 = *v27;
                *(v26 + 1) = *v27;
                v26 += 2;
                v28 = *&v29;
              }

              v27 += 2;
            }

            while (v27 != v20);
          }

          v36 = v26 + 2;
          if (v36 != v20)
          {
            v20 = v36;
          }
        }
      }

LABEL_42:
      v38 = 0uLL;
      v39 = 0;
      if (v20)
      {
        if ((v20 & 0x8000000000000000) == 0)
        {
          operator new();
        }

LABEL_49:
        sub_2460D368C();
      }
    }

    else
    {
      v38 = 0uLL;
      v39 = 0;
    }

    __asm { FMOV            V1.4S, #-1.0 }

    operator new();
  }

  v9 = 0;
  while (1)
  {
    v10 = a3[1];
    v11 = vaddq_f32(a3[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a3, COERCE_FLOAT(*v7->f32)), v10, *v7, 1), a3[2], *v7->f32, 2));
    if (v11.f32[2] >= 0.00001)
    {
      v10.f32[0] = v11.f32[2];
    }

    else
    {
      v10.f32[0] = 0.00001;
    }

    v12 = *a2;
    v12.i32[1] = a2[2].i32[1];
    v13 = vadd_f32(a2[4], vdiv_f32(vmul_f32(v12, *v11.f32), vdup_lane_s32(*v10.f32, 0)));
    if (((v9 >> 3) + 1) >> 61)
    {
      goto LABEL_49;
    }

    if (v9 >> 3 != -1)
    {
      if (!(((v9 >> 3) + 1) >> 61))
      {
        operator new();
      }

      sub_2460D368C();
    }

    v14 = (8 * (v9 >> 3));
    *v14 = v13;
    v15 = &v14[1];
    if (v9)
    {
      v16 = 0;
      v17 = 0;
      if ((v9 - 8) >= 0x18)
      {
        v16 = 0;
        v17 = 0;
      }

      do
      {
        v18 = *v16++;
        *v17++ = v18;
      }

      while (v16 != v9);
    }

    v9 = v15;
    v19 = v15;
    if (v11.f32[2] < 0.00001)
    {
      return 0;
    }

    v7 += 2;
    if (v7 == v8)
    {
      goto LABEL_18;
    }
  }
}

float sub_2460FF750(unint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = a2 - 1;
  v10 = a2 - 2;
  v11 = a2 - 3;
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return a5.n128_f32[0];
      }

      if (v13 == 2)
      {
        if (v9->n128_u32[0] >= *v12)
        {
          if (v9->n128_u32[0] != *v12)
          {
            return a5.n128_f32[0];
          }

          a5.n128_u32[0] = a2[-1].n128_u32[3];
          if (a5.n128_f32[0] >= *(v12 + 12))
          {
            return a5.n128_f32[0];
          }
        }

LABEL_215:
        v141 = *v12;
        *v12 = *v9;
        a5.n128_u32[0] = v141.n128_u32[0];
        *v9 = v141;
        return a5.n128_f32[0];
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {

      a5.n128_f32[0] = sub_2461007D8(v12, (v12 + 16), (v12 + 32), a2 - 1, a5);
      return a5.n128_f32[0];
    }

    if (v13 == 5)
    {
      a5.n128_f32[0] = sub_2461007D8(v12, (v12 + 16), (v12 + 32), (v12 + 48), a5);
      v65 = *(v12 + 48);
      if (v9->n128_u32[0] < v65 || v9->n128_u32[0] == v65 && (a5.n128_u32[0] = a2[-1].n128_u32[3], a5.n128_f32[0] < *(v12 + 60)))
      {
        a5 = *(v12 + 48);
        *(v12 + 48) = *v9;
        *v9 = a5;
        v66 = *(v12 + 48);
        v67 = *(v12 + 32);
        if (v66 < v67 || v66 == v67 && (a5.n128_u32[0] = *(v12 + 60), a5.n128_f32[0] < *(v12 + 44)))
        {
          a5 = *(v12 + 32);
          *(v12 + 32) = *(v12 + 48);
          *(v12 + 48) = a5;
          v68 = *(v12 + 32);
          v69 = *(v12 + 16);
          if (v68 < v69 || v68 == v69 && (a5.n128_u32[0] = *(v12 + 44), a5.n128_f32[0] < *(v12 + 28)))
          {
            a5 = *(v12 + 16);
            *(v12 + 16) = *(v12 + 32);
            *(v12 + 32) = a5;
            v70 = *(v12 + 16);
            if (v70 < *v12 || v70 == *v12 && (a5.n128_u32[0] = *(v12 + 28), a5.n128_f32[0] < *(v12 + 12)))
            {
              v142 = *v12;
              *v12 = *(v12 + 16);
              a5.n128_u32[0] = v142.n128_u32[0];
              *(v12 + 16) = v142;
            }
          }
        }
      }

      return a5.n128_f32[0];
    }

LABEL_9:
    if (v13 <= 23)
    {
      v71 = (v12 + 16);
      v73 = v12 == a2 || v71 == a2;
      if (a4)
      {
        if (v73)
        {
          return a5.n128_f32[0];
        }

        v74 = 0;
        v75 = v12;
        while (2)
        {
          v77 = v75;
          v75 = v71;
          v78 = *(v77 + 4);
          if (v78 < *v77)
          {
            a5.n128_u32[0] = *(v77 + 7);
            goto LABEL_235;
          }

          if (v78 == *v77)
          {
            a5.n128_u32[0] = *(v77 + 7);
            if (a5.n128_f32[0] < *(v77 + 3))
            {
LABEL_235:
              v79 = *(v77 + 20);
              *v75 = *v77;
              v76 = v12;
              if (v77 != v12)
              {
                v80 = v74;
                while (1)
                {
                  v81 = *(v12 + v80 - 16);
                  if (v78 >= v81)
                  {
                    if (v78 != v81)
                    {
                      v76 = (v12 + v80);
                      goto LABEL_231;
                    }

                    if (a5.n128_f32[0] >= *(v12 + v80 - 4))
                    {
                      break;
                    }
                  }

                  --v77;
                  *(v12 + v80) = *(v12 + v80 - 16);
                  v80 -= 16;
                  if (!v80)
                  {
                    v76 = v12;
                    goto LABEL_231;
                  }
                }

                v76 = v77;
              }

LABEL_231:
              *v76 = v78;
              *(v76 + 4) = v79;
              *(v76 + 3) = a5.n128_u32[0];
            }
          }

          v71 = (v75 + 1);
          v74 += 16;
          if (v75 + 1 == a2)
          {
            return a5.n128_f32[0];
          }

          continue;
        }
      }

      if (v73)
      {
        return a5.n128_f32[0];
      }

      while (2)
      {
        v114 = a1;
        a1 = v71;
        v115 = *(v114 + 16);
        if (v115 >= *v114)
        {
          if (v115 == *v114)
          {
            a5.n128_u32[0] = *(v114 + 28);
            if (a5.n128_f32[0] < *(v114 + 12))
            {
              goto LABEL_315;
            }
          }
        }

        else
        {
          a5.n128_u32[0] = *(v114 + 28);
LABEL_315:
          v116 = *(v114 + 20);
          do
          {
            do
            {
              v117 = v114;
              *(v114 + 16) = *v114;
              v118 = *(v114 - 16);
              v114 -= 16;
              v119 = v115 == v118;
            }

            while (v115 < v118);
          }

          while (v119 && a5.n128_f32[0] < *(v117 - 4));
          *v117 = v115;
          *(v117 + 4) = v116;
          *(v117 + 12) = a5.n128_u32[0];
        }

        v71 = (a1 + 16);
        if ((a1 + 16) == a2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    if (!a3)
    {
      if (v12 == a2)
      {
        return a5.n128_f32[0];
      }

      v82 = (v13 - 2) >> 1;
      v83 = v82;
      while (2)
      {
        v85 = v83;
        if (v82 >= v83)
        {
          v86 = (2 * v83) | 1;
          v87 = v12 + 16 * v86;
          if (2 * v85 + 2 < v13)
          {
            v88 = *(v87 + 16);
            if (*v87 < v88 || *v87 == v88 && *(v87 + 12) < *(v87 + 28))
            {
              v87 += 16;
              v86 = 2 * v85 + 2;
            }
          }

          v89 = v12 + 16 * v85;
          v90 = *v89;
          if (*v87 >= *v89)
          {
            if (*v87 != v90)
            {
              v91 = *(v89 + 12);
              goto LABEL_261;
            }

            v91 = *(v89 + 12);
            if (*(v87 + 12) >= v91)
            {
LABEL_261:
              v92 = *(v89 + 4);
              *v89 = *v87;
              if (v82 >= v86)
              {
                while (1)
                {
                  v93 = 2 * v86;
                  v86 = (2 * v86) | 1;
                  v84 = v12 + 16 * v86;
                  v94 = v93 + 2;
                  if (v94 < v13)
                  {
                    v95 = *(v84 + 16);
                    if (*v84 < v95 || *v84 == v95 && *(v84 + 12) < *(v84 + 28))
                    {
                      v84 += 16;
                      v86 = v94;
                    }
                  }

                  if (*v84 < v90 || *v84 == v90 && *(v84 + 12) < v91)
                  {
                    break;
                  }

                  *v87 = *v84;
                  v87 = v84;
                  if (v82 < v86)
                  {
                    goto LABEL_249;
                  }
                }
              }

              v84 = v87;
LABEL_249:
              *v84 = v90;
              *(v84 + 4) = v92;
              *(v84 + 12) = v91;
            }
          }
        }

        v83 = v85 - 1;
        if (v85)
        {
          continue;
        }

        break;
      }

      while (2)
      {
        v97 = 0;
        v143 = *v12;
        v98 = v12;
        do
        {
          v99 = v98;
          v100 = v98 + 16 * v97;
          v98 = v100 + 16;
          v101 = 2 * v97;
          v97 = (2 * v97) | 1;
          v102 = v101 + 2;
          if (v102 < v13)
          {
            v103 = *(v100 + 32);
            v104 = *(v100 + 16);
            if (v104 < v103 || v104 == v103 && *(v100 + 28) < *(v100 + 44))
            {
              v98 = v100 + 32;
              v97 = v102;
            }
          }

          *v99 = *v98;
        }

        while (v97 <= ((v13 - 2) >> 1));
        if (v98 == --a2)
        {
          a5.n128_u32[0] = v143.n128_u32[0];
          *v98 = v143;
        }

        else
        {
          *v98 = *a2;
          a5.n128_u32[0] = v143.n128_u32[0];
          *a2 = v143;
          v105 = (v98 - v12 + 16) >> 4;
          v106 = v105 - 2;
          if (v105 >= 2)
          {
            v107 = v106 >> 1;
            v108 = v12 + 16 * (v106 >> 1);
            v109 = *v98;
            if (*v108 < *v98)
            {
              a5.n128_u32[0] = *(v98 + 12);
              goto LABEL_287;
            }

            if (*v108 == v109)
            {
              a5.n128_u32[0] = *(v98 + 12);
              if (*(v108 + 12) < a5.n128_f32[0])
              {
LABEL_287:
                v110 = *(v98 + 4);
                *v98 = *v108;
                if (v106 >= 2)
                {
                  while (1)
                  {
                    v112 = v107 - 1;
                    v107 = (v107 - 1) >> 1;
                    v111 = v12 + 16 * v107;
                    if (*v111 >= v109 && (*v111 != v109 || *(v111 + 12) >= a5.n128_f32[0]))
                    {
                      break;
                    }

                    *v108 = *v111;
                    v108 = v12 + 16 * v107;
                    if (v112 <= 1)
                    {
                      goto LABEL_289;
                    }
                  }
                }

                v111 = v108;
LABEL_289:
                *v111 = v109;
                *(v111 + 4) = v110;
                *(v111 + 12) = a5.n128_u32[0];
              }
            }
          }
        }

        if (v13-- <= 2)
        {
          return a5.n128_f32[0];
        }

        continue;
      }
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    if (v13 >= 0x81)
    {
      v16 = v14->n128_u32[0];
      if (v14->n128_u32[0] < *v12 || v16 == *v12 && v14->n128_f32[3] < *(v12 + 12))
      {
        if (v9->n128_u32[0] < v16 || v9->n128_u32[0] == v16 && a2[-1].n128_f32[3] < v14->n128_f32[3])
        {
          v121 = *v12;
          *v12 = *v9;
        }

        else
        {
          v127 = *v12;
          *v12 = *v14;
          *v14 = v127;
          if (v9->n128_u32[0] >= v14->n128_u32[0] && (v9->n128_u32[0] != v14->n128_u32[0] || a2[-1].n128_f32[3] >= v14->n128_f32[3]))
          {
            goto LABEL_33;
          }

          v121 = *v14;
          *v14 = *v9;
        }

        *v9 = v121;
        goto LABEL_33;
      }

      if (v9->n128_u32[0] < v16 || v9->n128_u32[0] == v16 && a2[-1].n128_f32[3] < v14->n128_f32[3])
      {
        v123 = *v14;
        *v14 = *v9;
        *v9 = v123;
        if (v14->n128_u32[0] < *v12 || v14->n128_u32[0] == *v12 && v14->n128_f32[3] < *(v12 + 12))
        {
          v124 = *v12;
          *v12 = *v14;
          *v14 = v124;
        }
      }

LABEL_33:
      v18 = (v12 + 16);
      v19 = *(v12 + 16);
      v20 = v14 - 1;
      v21 = v14[-1].n128_i32[0];
      if (v21 < v19 || v21 == v19 && v14[-1].n128_f32[3] < *(v12 + 28))
      {
        if (v10->n128_u32[0] < v21 || v10->n128_u32[0] == v21 && a2[-2].n128_f32[3] < v14[-1].n128_f32[3])
        {
          v22 = *v18;
          *v18 = *v10;
        }

        else
        {
          v24 = *v18;
          *v18 = *v20;
          *v20 = v24;
          if (v10->n128_u32[0] >= v20->n128_u32[0] && (v10->n128_u32[0] != v20->n128_u32[0] || a2[-2].n128_f32[3] >= v14[-1].n128_f32[3]))
          {
            goto LABEL_51;
          }

          v130 = *v20;
          *v20 = *v10;
          v22 = v130;
        }

        *v10 = v22;
        goto LABEL_51;
      }

      if (v10->n128_u32[0] < v21 || v10->n128_u32[0] == v21 && a2[-2].n128_f32[3] < v14[-1].n128_f32[3])
      {
        v128 = *v20;
        *v20 = *v10;
        *v10 = v128;
        if (v20->n128_u32[0] < v18->n128_u32[0] || v20->n128_u32[0] == v18->n128_u32[0] && v14[-1].n128_f32[3] < *(v12 + 28))
        {
          v23 = *v18;
          *v18 = *v20;
          *v20 = v23;
        }
      }

LABEL_51:
      v25 = (v12 + 32);
      v26 = *(v12 + 32);
      v29 = v14[1].n128_i32[0];
      v27 = v14 + 1;
      v28 = v29;
      v30 = v29 == v26;
      if (v29 < v26 || v30 && v27->n128_f32[3] < *(v12 + 44))
      {
        if (v11->n128_u32[0] < v28 || v11->n128_u32[0] == v28 && a2[-3].n128_f32[3] < v27->n128_f32[3])
        {
          v31 = *v25;
          *v25 = *v11;
        }

        else
        {
          v33 = *v25;
          *v25 = *v27;
          *v27 = v33;
          if (v11->n128_u32[0] >= v27->n128_u32[0] && (v11->n128_u32[0] != v27->n128_u32[0] || a2[-3].n128_f32[3] >= v27->n128_f32[3]))
          {
            goto LABEL_65;
          }

          v132 = *v27;
          *v27 = *v11;
          v31 = v132;
        }

        *v11 = v31;
        goto LABEL_65;
      }

      if (v11->n128_u32[0] < v28 || v11->n128_u32[0] == v28 && a2[-3].n128_f32[3] < v27->n128_f32[3])
      {
        v131 = *v27;
        *v27 = *v11;
        *v11 = v131;
        if (v27->n128_u32[0] < v25->n128_u32[0] || v27->n128_u32[0] == v25->n128_u32[0] && v27->n128_f32[3] < *(v12 + 44))
        {
          v32 = *v25;
          *v25 = *v27;
          *v27 = v32;
        }
      }

LABEL_65:
      v34 = v15->n128_u32[0];
      if (v15->n128_u32[0] >= v20->n128_u32[0] && (v34 != v20->n128_u32[0] || v15->n128_f32[3] >= v20->n128_f32[3]))
      {
        if (v27->n128_u32[0] < v34 || v27->n128_u32[0] == v34 && v27->n128_f32[3] < v15->n128_f32[3])
        {
          v134 = *v15;
          *v15 = *v27;
          *v27 = v134;
          if (v15->n128_u32[0] < v20->n128_u32[0] || v15->n128_u32[0] == v20->n128_u32[0] && v15->n128_f32[3] < v20->n128_f32[3])
          {
            v135 = *v20;
            *v20 = *v15;
            *v15 = v135;
          }
        }

        goto LABEL_78;
      }

      if (v27->n128_u32[0] < v34 || v27->n128_u32[0] == v34 && v27->n128_f32[3] < v15->n128_f32[3])
      {
        v133 = *v20;
        *v20 = *v27;
      }

      else
      {
        v136 = *v20;
        *v20 = *v15;
        *v15 = v136;
        if (v27->n128_u32[0] >= v15->n128_u32[0] && (v27->n128_u32[0] != v15->n128_u32[0] || v27->n128_f32[3] >= v15->n128_f32[3]))
        {
          goto LABEL_78;
        }

        v133 = *v15;
        *v15 = *v27;
      }

      *v27 = v133;
LABEL_78:
      v137 = *v12;
      *v12 = *v15;
      a5 = v137;
      *v15 = v137;
      goto LABEL_79;
    }

    v17 = *v12;
    if (*v12 < v15->n128_u32[0] || v17 == v15->n128_u32[0] && *(v12 + 12) < v15->n128_f32[3])
    {
      if (v9->n128_u32[0] < v17 || v9->n128_u32[0] == v17 && a2[-1].n128_f32[3] < *(v12 + 12))
      {
        v122 = *v15;
        *v15 = *v9;
LABEL_45:
        a5 = v122;
        *v9 = v122;
        goto LABEL_79;
      }

      v129 = *v15;
      *v15 = *v12;
      a5 = v129;
      *v12 = v129;
      if (v9->n128_u32[0] < *v12 || v9->n128_u32[0] == *v12 && a2[-1].n128_f32[3] < *(v12 + 12))
      {
        v122 = *v12;
        *v12 = *v9;
        goto LABEL_45;
      }
    }

    else if (v9->n128_u32[0] < v17 || v9->n128_u32[0] == v17 && a2[-1].n128_f32[3] < *(v12 + 12))
    {
      v125 = *v12;
      *v12 = *v9;
      a5 = v125;
      *v9 = v125;
      if (*v12 < v15->n128_u32[0] || *v12 == v15->n128_u32[0] && *(v12 + 12) < v15->n128_f32[3])
      {
        v126 = *v15;
        *v15 = *v12;
        a5 = v126;
        *v12 = v126;
      }
    }

LABEL_79:
    --a3;
    v35 = *v12;
    if (a4)
    {
      goto LABEL_84;
    }

    v36 = *(v12 - 16);
    if (v36 < v35)
    {
      goto LABEL_84;
    }

    if (v36 == v35)
    {
      a5.n128_u32[0] = *(v12 + 12);
      if (*(v12 - 4) >= a5.n128_f32[0])
      {
        goto LABEL_170;
      }

LABEL_84:
      v37 = *(v12 + 4);
      a5.n128_u32[0] = *(v12 + 12);
        ;
      }

      if (i - 16 == v12)
      {
        j = a2;
        if (i < a2)
        {
          v42 = v9->n128_u32[0];
          j = a2 - 1;
          if (v9->n128_u32[0] >= v35)
          {
            j = a2 - 1;
            do
            {
              if (v42 == v35)
              {
                if (j->n128_f32[3] < a5.n128_f32[0] || i >= j)
                {
                  break;
                }
              }

              else if (i >= j)
              {
                break;
              }

              v43 = j[-1].n128_i32[0];
              --j;
              v42 = v43;
            }

            while (v43 >= v35);
          }
        }
      }

      else
      {
        v39 = v9->n128_u32[0];
        for (j = a2 - 1; v39 >= v35 && (v39 != v35 || j->n128_f32[3] >= a5.n128_f32[0]); --j)
        {
          v41 = j[-1].n128_u32[0];
          v39 = v41;
        }
      }

      v12 = i;
      if (i < j)
      {
        v12 = i;
        v45 = j;
        do
        {
          v138 = *v12;
          *v12 = *v45;
          *v45 = v138;
          do
          {
            do
            {
              v46 = *(v12 + 16);
              v12 += 16;
              v47 = v46 == v35;
            }

            while (v46 < v35);
          }

          while (v47 && *(v12 + 12) < a5.n128_f32[0]);
          do
          {
            v49 = v45[-1].n128_i32[0];
            --v45;
            v48 = v49;
          }

          while (v49 >= v35 && (v48 != v35 || v45->n128_f32[3] >= a5.n128_f32[0]));
        }

        while (v12 < v45);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      *(v12 - 16) = v35;
      *(v12 - 12) = v37;
      *(v12 - 4) = a5.n128_u32[0];
      if (i < j)
      {
        goto LABEL_124;
      }

      v50 = sub_24610099C(a1, (v12 - 16), a5);
      if (sub_24610099C(v12, a2, v51))
      {
        a2 = (v12 - 16);
        if (v50)
        {
          return a5.n128_f32[0];
        }

        goto LABEL_1;
      }

      if (!v50)
      {
LABEL_124:
        sub_2460FF750(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      a5.n128_u32[0] = *(v12 + 12);
LABEL_170:
      v52 = v9->n128_u32[0];
      if (v35 < v9->n128_u32[0] || v35 == v52 && a5.n128_f32[0] < a2[-1].n128_f32[3])
      {
        do
        {
          v54 = *(v12 + 16);
          v12 += 16;
          v53 = v54;
        }

        while (v35 >= v54 && (v35 != v53 || a5.n128_f32[0] >= *(v12 + 12)));
      }

      else
      {
          ;
        }
      }

      k = a2;
      if (v12 < a2)
      {
        for (k = a2 - 1; v35 < v52 || v35 == v52 && a5.n128_f32[0] < k->n128_f32[3]; --k)
        {
          v56 = k[-1].n128_u32[0];
          v52 = v56;
        }
      }

      v57 = *(a1 + 4);
      while (v12 < k)
      {
        v139 = *v12;
        *v12 = *k;
        *k = v139;
        do
        {
          v59 = *(v12 + 16);
          v12 += 16;
          v58 = v59;
        }

        while (v35 >= v59 && (v35 != v58 || a5.n128_f32[0] >= *(v12 + 12)));
        do
        {
          do
          {
            v60 = k[-1].n128_i32[0];
            --k;
            v61 = v35 == v60;
          }

          while (v35 < v60);
        }

        while (v61 && a5.n128_f32[0] < k->n128_f32[3]);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      a4 = 0;
      *(v12 - 16) = v35;
      *(v12 - 12) = v57;
      *(v12 - 4) = a5.n128_u32[0];
    }
  }

  v62 = (v12 + 16);
  v63 = *(v12 + 16);
  if (v63 < *v12 || v63 == *v12 && (a5.n128_u32[0] = *(v12 + 28), a5.n128_f32[0] < *(v12 + 12)))
  {
    if (v9->n128_u32[0] < v63 || v9->n128_u32[0] == v63 && a2[-1].n128_f32[3] < *(v12 + 28))
    {
      goto LABEL_215;
    }

    v140 = *v12;
    *v12 = *v62;
    a5.n128_u32[0] = v140.n128_u32[0];
    *v62 = v140;
    v64 = *(v12 + 16);
    if (v9->n128_u32[0] < v64 || v9->n128_u32[0] == v64 && (a5.n128_u32[0] = a2[-1].n128_u32[3], a5.n128_f32[0] < *(v12 + 28)))
    {
      a5 = *v62;
      *v62 = *v9;
      *v9 = a5;
    }
  }

  else if (v9->n128_u32[0] < v63 || v9->n128_u32[0] == v63 && (a5.n128_u32[0] = a2[-1].n128_u32[3], a5.n128_f32[0] < *(v12 + 28)))
  {
    a5 = *v62;
    *v62 = *v9;
    *v9 = a5;
    v113 = *(v12 + 16);
    if (v113 < *v12 || v113 == *v12 && (a5.n128_u32[0] = *(v12 + 28), a5.n128_f32[0] < *(v12 + 12)))
    {
      v144 = *v12;
      *v12 = *v62;
      a5.n128_u32[0] = v144.n128_u32[0];
      *v62 = v144;
    }
  }

  return a5.n128_f32[0];
}

float sub_2461007D8(__n128 *a1, __n128 *a2, __n128 *a3, __n128 *a4, __n128 a5)
{
  v5 = a2->n128_u32[0];
  if (a2->n128_u32[0] < a1->n128_u32[0] || v5 == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[3], a5.n128_f32[0] < a1->n128_f32[3]))
  {
    if (a3->n128_u32[0] < v5 || a3->n128_u32[0] == v5 && a3->n128_f32[3] < a2->n128_f32[3])
    {
      a5 = *a1;
      *a1 = *a3;
    }

    else
    {
      a5 = *a1;
      *a1 = *a2;
      *a2 = a5;
      if (a3->n128_u32[0] >= a2->n128_u32[0])
      {
        if (a3->n128_u32[0] != a2->n128_u32[0])
        {
          goto LABEL_14;
        }

        a5.n128_u32[0] = a3->n128_u32[3];
        if (a5.n128_f32[0] >= a2->n128_f32[3])
        {
          goto LABEL_14;
        }
      }

      a5 = *a2;
      *a2 = *a3;
    }

    *a3 = a5;
  }

  else if (a3->n128_u32[0] < v5 || a3->n128_u32[0] == v5 && (a5.n128_u32[0] = a3->n128_u32[3], a5.n128_f32[0] < a2->n128_f32[3]))
  {
    a5 = *a2;
    *a2 = *a3;
    *a3 = a5;
    if (a2->n128_u32[0] < a1->n128_u32[0] || a2->n128_u32[0] == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[3], a5.n128_f32[0] < a1->n128_f32[3]))
    {
      a5 = *a1;
      *a1 = *a2;
      *a2 = a5;
    }
  }

LABEL_14:
  if (a4->n128_u32[0] < a3->n128_u32[0] || a4->n128_u32[0] == a3->n128_u32[0] && (a5.n128_u32[0] = a4->n128_u32[3], a5.n128_f32[0] < a3->n128_f32[3]))
  {
    a5 = *a3;
    *a3 = *a4;
    *a4 = a5;
    if (a3->n128_u32[0] < a2->n128_u32[0] || a3->n128_u32[0] == a2->n128_u32[0] && (a5.n128_u32[0] = a3->n128_u32[3], a5.n128_f32[0] < a2->n128_f32[3]))
    {
      a5 = *a2;
      *a2 = *a3;
      *a3 = a5;
      if (a2->n128_u32[0] < a1->n128_u32[0] || a2->n128_u32[0] == a1->n128_u32[0] && (a5.n128_u32[0] = a2->n128_u32[3], a5.n128_f32[0] < a1->n128_f32[3]))
      {
        a5 = *a1;
        *a1 = *a2;
        *a2 = a5;
      }
    }
  }

  return a5.n128_f32[0];
}

BOOL sub_24610099C(__n128 *a1, __n128 *a2, __n128 a3)
{
  v3 = a2 - a1;
  if (v3 > 2)
  {
    switch(v3)
    {
      case 3:
        v4 = a1 + 1;
        v21 = a1[1].n128_i32[0];
        v22 = a2 - 1;
        if (v21 < a1->n128_u32[0] || v21 == a1->n128_u32[0] && a1[1].n128_f32[3] < a1->n128_f32[3])
        {
          if (v22->n128_u32[0] < v21 || v22->n128_u32[0] == v21 && a2[-1].n128_f32[3] < a1[1].n128_f32[3])
          {
            v23 = *a1;
            *a1 = *v22;
            *v22 = v23;
          }

          else
          {
            v35 = *a1;
            *a1 = *v4;
            *v4 = v35;
            v36 = a1[1].n128_i32[0];
            if (v22->n128_u32[0] < v36 || v22->n128_u32[0] == v36 && a2[-1].n128_f32[3] < a1[1].n128_f32[3])
            {
              v37 = *v4;
              *v4 = *v22;
              *v22 = v37;
            }
          }

          return 1;
        }

        if (v22->n128_u32[0] >= v21 && (v22->n128_u32[0] != v21 || a2[-1].n128_f32[3] >= a1[1].n128_f32[3]))
        {
          return 1;
        }

        v30 = *v4;
        *v4 = *v22;
        *v22 = v30;
        v31 = a1[1].n128_i32[0];
        if (v31 >= a1->n128_u32[0])
        {
          if (v31 != a1->n128_u32[0])
          {
            return 1;
          }

          v6 = a1[1].n128_f32[3];
          goto LABEL_7;
        }

        goto LABEL_28;
      case 4:
        sub_2461007D8(a1, a1 + 1, a1 + 2, a2 - 1, a3);
        return 1;
      case 5:
        sub_2461007D8(a1, a1 + 1, a1 + 2, a1 + 3, a3);
        v9 = a2 - 1;
        v10 = a2[-1].n128_i32[0];
        v11 = a1[3].n128_i32[0];
        if (v10 < v11 || v10 == v11 && a2[-1].n128_f32[3] < a1[3].n128_f32[3])
        {
          v12 = a1[3];
          a1[3] = *v9;
          *v9 = v12;
          v13 = a1[3].n128_i32[0];
          v14 = a1[2].n128_i32[0];
          if (v13 < v14 || v13 == v14 && a1[3].n128_f32[3] < a1[2].n128_f32[3])
          {
            v15 = a1[2];
            a1[2] = a1[3];
            a1[3] = v15;
            v16 = a1[2].n128_i32[0];
            v17 = a1[1].n128_i32[0];
            if (v16 < v17 || v16 == v17 && a1[2].n128_f32[3] < a1[1].n128_f32[3])
            {
              v18 = a1[1];
              a1[1] = a1[2];
              a1[2] = v18;
              v19 = a1[1].n128_i32[0];
              if (v19 < a1->n128_u32[0] || v19 == a1->n128_u32[0] && a1[1].n128_f32[3] < a1->n128_f32[3])
              {
                v20 = *a1;
                *a1 = a1[1];
                a1[1] = v20;
              }
            }
          }
        }

        return 1;
    }
  }

  else
  {
    if (v3 < 2)
    {
      return 1;
    }

    if (v3 == 2)
    {
      v4 = a2 - 1;
      v5 = a2[-1].n128_i32[0];
      if (v5 >= a1->n128_u32[0])
      {
        if (v5 == a1->n128_u32[0])
        {
          v6 = a2[-1].n128_f32[3];
LABEL_7:
          if (v6 >= a1->n128_f32[3])
          {
            return 1;
          }

          goto LABEL_28;
        }

        return 1;
      }

LABEL_28:
      v32 = *a1;
      *a1 = *v4;
      *v4 = v32;
      return 1;
    }
  }

  v24 = &a1[2];
  v25 = a1->n128_u32[0];
  v26 = a1 + 1;
  v27 = a1[1].n128_i32[0];
  if (v27 >= a1->n128_u32[0] && (v27 != v25 || a1[1].n128_f32[3] >= a1->n128_f32[3]))
  {
    if (*v24 < v27 || *v24 == v27 && a1[2].n128_f32[3] < a1[1].n128_f32[3])
    {
      v33 = *v26;
      *v26 = *v24;
      *v24 = v33;
      if (v26->n128_u32[0] < v25 || v26->n128_u32[0] == v25 && a1[1].n128_f32[3] < a1->n128_f32[3])
      {
        v34 = *a1;
        *a1 = *v26;
        *v26 = v34;
      }
    }

    goto LABEL_46;
  }

  v28 = *v24;
  if (*v24 < v27 || v28 == v27 && a1[2].n128_f32[3] < a1[1].n128_f32[3])
  {
    v29 = *a1;
    *a1 = *v24;
  }

  else
  {
    v38 = *a1;
    *a1 = *v26;
    *v26 = v38;
    v39 = a1[1].n128_i32[0];
    if (v28 >= v39 && (v28 != v39 || a1[2].n128_f32[3] >= a1[1].n128_f32[3]))
    {
      goto LABEL_46;
    }

    v29 = *v26;
    *v26 = *v24;
  }

  *v24 = v29;
LABEL_46:
  v40 = a1 + 3;
  if (&a1[3] == a2)
  {
    return 1;
  }

  v41 = 0;
  v42 = 0;
  while (2)
  {
    v43 = v40->n128_u32[0];
    if (v40->n128_u32[0] >= *v24)
    {
      if (v43 != *v24)
      {
        goto LABEL_50;
      }

      v44 = v40->n128_f32[3];
      if (v44 >= *(v24 + 12))
      {
        goto LABEL_50;
      }
    }

    else
    {
      v44 = v40->n128_f32[3];
    }

    v45 = *(v40->n128_i64 + 4);
    *v40 = *v24;
    v46 = v41;
    while (1)
    {
      v47 = *(a1[1].n128_i32 + v46);
      if (v43 >= v47)
      {
        break;
      }

LABEL_54:
      v24 -= 16;
      *(a1 + v46 + 32) = *(a1 + v46 + 16);
      v46 -= 16;
      if (v46 == -32)
      {
        v24 = a1;
        goto LABEL_49;
      }
    }

    if (v43 == v47)
    {
      if (v44 >= *(&a1[1].n128_f32[3] + v46))
      {
        goto LABEL_49;
      }

      goto LABEL_54;
    }

    v24 = &a1[2] + v46;
LABEL_49:
    *v24 = v43;
    *(v24 + 4) = v45;
    *(v24 + 12) = v44;
    if (++v42 != 8)
    {
LABEL_50:
      v24 = v40;
      v41 += 16;
      if (++v40 == a2)
      {
        return 1;
      }

      continue;
    }

    return &v40[1] == a2;
  }
}

uint64_t sub_246100E28(uint64_t result, float *a2, float **a3, uint64_t a4, char a5)
{
  v7 = result;
  v8 = &loc_24613F000;
  v9 = &loc_24613F000;
LABEL_2:
  v282 = a2 - 2;
  v10 = v7;
  while (1)
  {
    v7 = v10;
    v11 = (a2 - v10) >> 3;
    v12 = v11 - 2;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        result = sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), *v7, v7[1]);
        if (result)
        {
          v156 = *v7;
          *v7 = *v282;
          *v282 = v156;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {

      return sub_2461025F4(v7, v7 + 2, v7 + 4, v282, a3);
    }

    if (v11 == 5)
    {
      sub_2461025F4(v7, v7 + 2, v7 + 4, v7 + 6, a3);
      result = sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), v7[6], v7[7]);
      if (!result)
      {
        return result;
      }

      v148 = *(v7 + 3);
      *(v7 + 3) = *v282;
      *v282 = v148;
      result = sub_246102430(**a3, (*a3)[1], v7[6], v7[7], v7[4], v7[5]);
      if (!result)
      {
        return result;
      }

      v149 = vextq_s8(*(v7 + 4), *(v7 + 4), 8uLL);
      *(v7 + 1) = v149;
      result = sub_246102430(**a3, (*a3)[1], *v149.i32, *&v149.i32[1], v7[2], v7[3]);
      if (!result)
      {
        return result;
      }

      v150 = vextq_s8(*(v7 + 2), *(v7 + 2), 8uLL);
      *(v7 + 2) = v150;
      v151 = *&v150.i32[1];
      v152 = *v7;
      v153 = v7[1];
      v154 = **a3;
      v155 = (*a3)[1];
      goto LABEL_298;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v164 = v7 + 2;
      v166 = v7 == a2 || v164 == a2;
      if (a5)
      {
        if (v166)
        {
          return result;
        }

        v167 = v9;
        v168 = 0;
        v169 = *a3;
        v170 = v8[463];
        v171 = v167[468];
        v172 = v7;
LABEL_203:
        v174 = v164;
        v175 = v172[2];
        result = sub_246102430(*v169, v169[1], v175, v164[1], *v172, v172[1]);
        if (!result)
        {
          goto LABEL_202;
        }

        v176 = v172[3];
        *(v172 + 1) = *v172;
        v173 = v7;
        if (v172 == v7)
        {
          goto LABEL_201;
        }

        v177 = (fabsf(v175) * 0.00001) + 0.000001;
        v178 = (fabsf(v176) * 0.00001) + 0.000001;
        v179 = v168;
        while (1)
        {
          v181 = **a3;
          v180 = (*a3)[1];
          v182 = vabds_f32(v180, v176);
          if (vabds_f32(v181, v175) > v177 || v182 > v178)
          {
            v184 = (v175 - v181);
            v185 = v176 - v180;
            if (vabdd_f64(0.0, v184) <= v170 + fabs(v184) * v171)
            {
              v186 = ((__PAIR64__(v185 > 0.0, LODWORD(v185)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
            }

            else
            {
              v186 = v185 / v184;
            }
          }

          else
          {
            v186 = -1.79769313e308;
          }

          v187 = *(v7 + v179 - 8);
          v188 = *(v7 + v179 - 4);
          v189 = (fabsf(v187) * 0.00001) + 0.000001;
          v190 = vabds_f32(v180, v188);
          v191 = (fabsf(v188) * 0.00001) + 0.000001;
          if (vabds_f32(v181, v187) > v189 || v190 > v191)
          {
            v193 = (v187 - v181);
            v194 = v188 - v180;
            if (vabdd_f64(0.0, v193) <= v170 + fabs(v193) * v171)
            {
              v195 = ((__PAIR64__(v194 > 0.0, LODWORD(v194)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
            }

            else
            {
              v195 = v194 / v193;
            }
          }

          else
          {
            v195 = -1.79769313e308;
          }

          if (vabdd_f64(v186, v195) > v170 + fabs(v195) * v171)
          {
            if (v186 >= v195)
            {
              v173 = (v7 + v179);
LABEL_201:
              *v173 = v175;
              v173[1] = v176;
              v169 = *a3;
LABEL_202:
              v164 = v174 + 2;
              v168 += 8;
              v172 = v174;
              if (v174 + 2 != a2)
              {
                goto LABEL_203;
              }

              return result;
            }
          }

          else if (vabds_f32(v175, v187) <= v189)
          {
            if (v188 <= v176)
            {
LABEL_229:
              v173 = v172;
              goto LABEL_201;
            }
          }

          else if (v187 <= v175)
          {
            goto LABEL_229;
          }

          v172 -= 2;
          *(v7 + v179) = *(v7 + v179 - 8);
          v179 -= 8;
          if (!v179)
          {
            v173 = v7;
            goto LABEL_201;
          }
        }
      }

      if (v166)
      {
        return result;
      }

      v257 = *a3;
      v258 = v8[463];
      v259 = v9[468];
      while (1)
      {
        v260 = v164;
        v261 = v7[2];
        result = sub_246102430(*v257, v257[1], v261, v164[1], *v7, v7[1]);
        if (result)
        {
          v262 = v7[3];
          v263 = (fabsf(v261) * 0.00001) + 0.000001;
          v264 = (fabsf(v262) * 0.00001) + 0.000001;
          do
          {
            while (1)
            {
              while (1)
              {
                v265 = v7;
                *(v7 + 1) = *v7;
                v267 = **a3;
                v266 = (*a3)[1];
                v268 = vabds_f32(v266, v262);
                if (vabds_f32(v267, v261) > v263 || v268 > v264)
                {
                  v270 = (v261 - v267);
                  v271 = v262 - v266;
                  v272 = vabdd_f64(0.0, v270) <= v258 + fabs(v270) * v259 ? ((__PAIR64__(v271 > 0.0, LODWORD(v271)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308 : v271 / v270;
                }

                else
                {
                  v272 = -1.79769313e308;
                }

                v273 = *(v7 - 2);
                v274 = *(v7 - 1);
                v275 = (fabsf(v273) * 0.00001) + 0.000001;
                v276 = vabds_f32(v266, v274);
                v277 = (fabsf(v274) * 0.00001) + 0.000001;
                if (vabds_f32(v267, v273) > v275 || v276 > v277)
                {
                  v279 = (v273 - v267);
                  v280 = v274 - v266;
                  v281 = vabdd_f64(0.0, v279) <= v258 + fabs(v279) * v259 ? ((__PAIR64__(v280 > 0.0, LODWORD(v280)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308 : v280 / v279;
                }

                else
                {
                  v281 = -1.79769313e308;
                }

                v7 -= 2;
                if (vabdd_f64(v272, v281) <= v258 + fabs(v281) * v259)
                {
                  break;
                }

                if (v272 >= v281)
                {
                  goto LABEL_302;
                }
              }

              if (vabds_f32(v261, v273) <= v275)
              {
                break;
              }

              if (v273 <= v261)
              {
                goto LABEL_302;
              }
            }
          }

          while (v274 > v262);
LABEL_302:
          *v265 = v261;
          v265[1] = v262;
          v257 = *a3;
        }

        v164 = v260 + 2;
        v7 = v260;
        if (v260 + 2 == a2)
        {
          return result;
        }
      }
    }

    if (!a4)
    {
      if (v7 != a2)
      {
        v285 = a2;
        v196 = v12 >> 1;
        v197 = v12 >> 1;
        do
        {
          v198 = v197;
          if (v196 >= v197)
          {
            v199 = (2 * v197) | 1;
            v200 = &v7[2 * v199];
            v201 = 2 * v197 + 2;
            v202 = *a3;
            if (v201 >= v11)
            {
              v208 = *v200;
              v205 = *v202;
              v206 = v202[1];
            }

            else
            {
              v203 = *v200;
              v204 = v200[2];
              v205 = *v202;
              v206 = v202[1];
              v207 = sub_246102430(*v202, v206, *v200, v200[1], v204, v200[3]);
              if (v207)
              {
                v208 = v204;
              }

              else
              {
                v208 = v203;
              }

              if (v207)
              {
                v200 += 2;
                v199 = 2 * v198 + 2;
              }
            }

            v209 = &v7[2 * v198];
            LODWORD(v210) = HIDWORD(*v209);
            v288 = *v209;
            result = sub_246102430(v205, v206, v208, v200[1], COERCE_FLOAT(*v209), v210);
            if ((result & 1) == 0)
            {
              do
              {
                v217 = v200;
                *v209 = *v200;
                if (v196 < v199)
                {
                  break;
                }

                v200 = &v7[2 * ((2 * v199) | 1)];
                v218 = *a3;
                if (2 * v199 + 2 < v11)
                {
                  v211 = *v200;
                  v212 = v200[2];
                  v213 = *v218;
                  v214 = v218[1];
                  v215 = sub_246102430(*v218, v214, *v200, v200[1], v212, v200[3]);
                  v216 = v215 ? v212 : v211;
                  if (v215)
                  {
                    v200 += 2;
                    v199 = 2 * v199 + 2;
                  }

                  else
                  {
                    v199 = (2 * v199) | 1;
                  }
                }

                else
                {
                  v216 = *v200;
                  v199 = (2 * v199) | 1;
                  v213 = *v218;
                  v214 = v218[1];
                }

                result = sub_246102430(v213, v214, v216, v200[1], *&v288, v210);
                v209 = v217;
              }

              while (!result);
              *v217 = v288;
            }
          }

          v197 = v198 - 1;
        }

        while (v198);
        v219 = v285;
        do
        {
          v220 = 0;
          v221 = *v7;
          v222 = v7;
          do
          {
            v223 = &v222[2 * v220];
            v224 = v223 + 2;
            v225 = (2 * v220) | 1;
            v220 = 2 * v220 + 2;
            if (v220 >= v11)
            {
              v220 = v225;
            }

            else
            {
              v227 = **a3;
              v226 = (*a3)[1];
              v228 = v223[2];
              v229 = v223[3];
              v230 = vabds_f32(v226, v229);
              v231 = (fabsf(v229) * 0.00001) + 0.000001;
              if (vabds_f32(v227, v228) > ((fabsf(v228) * 0.00001) + 0.000001) || v230 > v231)
              {
                v233 = (v228 - v227);
                v234 = v229 - v226;
                if (vabdd_f64(0.0, v233) <= fabs(v233) * 0.00000999999975 + 0.000000999999997)
                {
                  v235 = ((__PAIR64__(v234 > 0.0, LODWORD(v234)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
                }

                else
                {
                  v235 = v234 / v233;
                }
              }

              else
              {
                v235 = -1.79769313e308;
              }

              v236 = v223[4];
              v237 = v223[5];
              v238 = (fabsf(v236) * 0.00001) + 0.000001;
              v239 = vabds_f32(v226, v237);
              v240 = (fabsf(v237) * 0.00001) + 0.000001;
              if (vabds_f32(v227, v236) > v238 || v239 > v240)
              {
                v242 = (v236 - v227);
                v243 = v237 - v226;
                if (vabdd_f64(0.0, v242) <= fabs(v242) * 0.00000999999975 + 0.000000999999997)
                {
                  v244 = ((__PAIR64__(v243 > 0.0, LODWORD(v243)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
                }

                else
                {
                  v244 = v243 / v242;
                }
              }

              else
              {
                v244 = -1.79769313e308;
              }

              if (vabdd_f64(v235, v244) <= fabs(v244) * 0.00000999999975 + 0.000000999999997)
              {
                if (vabds_f32(v228, v236) <= v238)
                {
                  v245 = v229 < v237;
                }

                else
                {
                  v245 = v228 < v236;
                }
              }

              else
              {
                v245 = v235 < v244;
              }

              v246 = v245;
              v247 = v223 + 4;
              if (v246)
              {
                v224 = v247;
              }

              else
              {
                v220 = v225;
              }
            }

            *v222 = *v224;
            v222 = v224;
          }

          while (v220 <= ((v11 - 2) >> 1));
          v248 = v219 - 2;
          v286 = v248;
          if (v224 == v248)
          {
            *v224 = v221;
          }

          else
          {
            *v224 = *v248;
            *v248 = v221;
            v249 = (v224 - v7 + 8) >> 3;
            v98 = v249 < 2;
            v250 = v249 - 2;
            if (!v98)
            {
              v251 = v250 >> 1;
              v252 = &v7[2 * (v250 >> 1)];
              v253 = *v224;
              v254 = v224[1];
              result = sub_246102430(**a3, (*a3)[1], *v252, v252[1], *v224, v254);
              if (result)
              {
                do
                {
                  v255 = v252;
                  *v224 = *v252;
                  if (!v251)
                  {
                    break;
                  }

                  v251 = (v251 - 1) >> 1;
                  v252 = &v7[2 * v251];
                  result = sub_246102430(**a3, (*a3)[1], *v252, v252[1], v253, v254);
                  v224 = v255;
                }

                while ((result & 1) != 0);
                *v255 = v253;
                v255[1] = v254;
              }
            }
          }

          v98 = v11-- <= 2;
          v219 = v286;
        }

        while (!v98);
      }

      return result;
    }

    v13 = &v7[2 * (v11 >> 1)];
    v15 = **a3;
    v14 = (*a3)[1];
    v17 = *(a2 - 2);
    v16 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v18 = *v13;
      v19 = v13[1];
      v20 = sub_246102430(**a3, (*a3)[1], *v13, v19, *v7, v7[1]);
      v21 = sub_246102430(v15, v14, v17, v16, v18, v19);
      if (v20)
      {
        v22 = *v7;
        if (v21)
        {
          v23 = v282;
          *v7 = *v282;
          goto LABEL_27;
        }

        *v7 = *v13;
        *v13 = v22;
        if (sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), *&v22, *(&v22 + 1)))
        {
          v23 = v282;
          *v13 = *v282;
LABEL_27:
          *v23 = v22;
        }
      }

      else if (v21)
      {
        v30 = *v13;
        *v13 = *v282;
        *v282 = v30;
        if (sub_246102430(**a3, (*a3)[1], *v13, v13[1], *v7, v7[1]))
        {
          v31 = *v7;
          *v7 = *v13;
          *v13 = v31;
        }
      }

      v35 = *(v13 - 2);
      v36 = *(v13 - 1);
      v34 = v13 - 2;
      v37 = **a3;
      v38 = (*a3)[1];
      v39 = sub_246102430(v37, v38, v35, v36, v7[2], v7[3]);
      v40 = sub_246102430(v37, v38, *(a2 - 4), *(a2 - 3), v35, v36);
      if (v39)
      {
        v41 = *(v7 + 1);
        if (v40)
        {
          *(v7 + 1) = *(a2 - 2);
          goto LABEL_39;
        }

        *(v7 + 1) = *v34;
        *v34 = v41;
        if (sub_246102430(**a3, (*a3)[1], *(a2 - 4), *(a2 - 3), *&v41, *(&v41 + 1)))
        {
          *v34 = *(a2 - 2);
LABEL_39:
          *(a2 - 2) = v41;
        }
      }

      else if (v40)
      {
        v42 = *v34;
        *v34 = *(a2 - 2);
        *(a2 - 2) = v42;
        if (sub_246102430(**a3, (*a3)[1], *v34, *(v13 - 1), v7[2], v7[3]))
        {
          v43 = *(v7 + 1);
          *(v7 + 1) = *v34;
          *v34 = v43;
        }
      }

      v45 = v13[2];
      v46 = v13[3];
      v44 = v13 + 2;
      v47 = **a3;
      v48 = (*a3)[1];
      v49 = sub_246102430(v47, v48, v45, v46, v7[4], v7[5]);
      v50 = sub_246102430(v47, v48, *(a2 - 6), *(a2 - 5), v45, v46);
      if (v49)
      {
        v51 = *(v7 + 2);
        if (v50)
        {
          *(v7 + 2) = *(a2 - 3);
          goto LABEL_48;
        }

        *(v7 + 2) = *v44;
        *v44 = v51;
        if (sub_246102430(**a3, (*a3)[1], *(a2 - 6), *(a2 - 5), *&v51, *(&v51 + 1)))
        {
          *v44 = *(a2 - 3);
LABEL_48:
          *(a2 - 3) = v51;
        }
      }

      else if (v50)
      {
        v52 = *v44;
        *v44 = *(a2 - 3);
        *(a2 - 3) = v52;
        if (sub_246102430(**a3, (*a3)[1], *v44, v13[3], v7[4], v7[5]))
        {
          v53 = *(v7 + 2);
          *(v7 + 2) = *v44;
          *v44 = v53;
        }
      }

      v54 = *v13;
      v55 = v13[1];
      v56 = *(v13 - 1);
      v57 = **a3;
      v58 = (*a3)[1];
      v59 = sub_246102430(v57, v58, *v13, v55, *v34, v56);
      v60 = v13[3];
      v61 = sub_246102430(v57, v58, *v44, v60, v54, v55);
      if (v59)
      {
        v62 = *v34;
        if (v61)
        {
          *v34 = *v44;
          *v44 = v62;
          v62 = *v13;
        }

        else
        {
          *v34 = *v13;
          *v13 = v62;
          if (sub_246102430(**a3, (*a3)[1], *v44, v60, *&v62, *(&v62 + 1)))
          {
            v64 = *v44;
            *v13 = *v44;
            *v44 = v62;
            v62 = v64;
          }
        }
      }

      else
      {
        v62 = *v13;
        if (v61)
        {
          v284 = a2;
          v63 = *v44;
          *v13 = *v44;
          *v44 = v62;
          if (sub_246102430(**a3, (*a3)[1], *&v63, *(&v63 + 1), *v34, v56))
          {
            v62 = *v34;
            *v34 = v63;
            *v13 = v62;
          }

          else
          {
            v62 = v63;
          }

          a2 = v284;
        }
      }

      v65 = *v7;
      *v7 = v62;
      *v13 = v65;
      goto LABEL_60;
    }

    v24 = *v7;
    v25 = v7[1];
    v26 = sub_246102430(**a3, (*a3)[1], *v7, v25, *v13, v13[1]);
    v27 = sub_246102430(v15, v14, v17, v16, v24, v25);
    if (!v26)
    {
      if (v27)
      {
        v32 = *v7;
        *v7 = *v282;
        *v282 = v32;
        if (sub_246102430(**a3, (*a3)[1], *v7, v7[1], *v13, v13[1]))
        {
          v33 = *v13;
          *v13 = *v7;
          *v7 = v33;
        }
      }

      goto LABEL_60;
    }

    v28 = *v13;
    if (v27)
    {
      v29 = v282;
      *v13 = *v282;
LABEL_36:
      *v29 = v28;
      goto LABEL_60;
    }

    *v13 = *v7;
    *v7 = v28;
    if (sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), *&v28, *(&v28 + 1)))
    {
      v29 = v282;
      *v7 = *v282;
      goto LABEL_36;
    }

LABEL_60:
    --a4;
    if (a5)
    {
      v67 = *v7;
      v66 = v7[1];
      v68 = **a3;
      v69 = (*a3)[1];
      v9 = &loc_24613F000;
LABEL_63:
      v70 = v7;
      do
      {
        v71 = v70;
        v72 = v70[2];
        v70 += 2;
      }

      while (sub_246102430(v68, v69, v72, v71[3], v67, v66));
      v73 = a2;
      if (v71 == v7)
      {
        v73 = a2;
        do
        {
          if (v70 >= v73)
          {
            break;
          }

          v76 = *(v73 - 2);
          v77 = *(v73 - 1);
          v73 -= 2;
        }

        while (!sub_246102430(v68, v69, v76, v77, v67, v66));
      }

      else
      {
        do
        {
          v74 = *(v73 - 2);
          v75 = *(v73 - 1);
          v73 -= 2;
        }

        while (!sub_246102430(v68, v69, v74, v75, v67, v66));
      }

      if (v70 < v73)
      {
        v78 = (fabsf(v67) * 0.00001) + 0.000001;
        v79 = (fabsf(v66) * 0.00001) + 0.000001;
        v80 = v70;
        v81 = v73;
        do
        {
          v82 = *v80;
          *v80 = *v81;
          v80 += 2;
          *v81 = v82;
          v83 = **a3;
          v84 = (*a3)[1];
          v85 = vabds_f32(v83, v67) > v78;
          v86 = (v67 - v83);
          v87 = vabdd_f64(0.0, v86);
          v88 = v9[468];
          v89 = fabs(v86) * v88 + 0.000000999999997;
          if (vabds_f32(v84, v66) > v79)
          {
            v85 = 1;
          }

          if (v87 <= v89)
          {
            v90 = ((__PAIR64__((v66 - v84) > 0.0, v66 - v84) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
          }

          else
          {
            v90 = (v66 - v84) / v86;
          }

          v91 = -1.79769313e308;
          if (v85)
          {
            v91 = v90;
          }

          v92 = fabs(v90);
          if (!v85)
          {
            v92 = 1.79769313e308;
          }

          v93 = v92 * v88 + 0.000000999999997;
          while (1)
          {
            v94 = *v80;
            v95 = v80[1];
            v96 = vabds_f32(v84, v95);
            v97 = (fabsf(v95) * 0.00001) + 0.000001;
            v98 = vabds_f32(v83, *v80) > ((fabsf(*v80) * 0.00001) + 0.000001) || v96 > v97;
            if (v98)
            {
              v99 = (v94 - v83);
              v100 = v95 - v84;
              if (vabdd_f64(0.0, v99) <= fabs(v99) * v88 + 0.000000999999997)
              {
                v101 = ((__PAIR64__(v100 > 0.0, LODWORD(v100)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
              }

              else
              {
                v101 = v100 / v99;
              }
            }

            else
            {
              v101 = -1.79769313e308;
            }

            if (vabdd_f64(v101, v91) > v93)
            {
              if (v101 >= v91)
              {
                goto LABEL_99;
              }

              goto LABEL_85;
            }

            if (vabds_f32(v94, v67) <= v78)
            {
              break;
            }

            if (v94 >= v67)
            {
              goto LABEL_99;
            }

LABEL_85:
            v80 += 2;
          }

          if (v95 < v66)
          {
            goto LABEL_85;
          }

LABEL_99:
          v71 = v80 - 2;
          do
          {
            while (1)
            {
              while (1)
              {
                v102 = *(v81 - 2);
                v103 = *(v81 - 1);
                v81 -= 2;
                v104 = vabds_f32(v84, v103);
                v105 = (fabsf(v103) * 0.00001) + 0.000001;
                if (vabds_f32(v83, v102) > ((fabsf(v102) * 0.00001) + 0.000001) || v104 > v105)
                {
                  v107 = (v102 - v83);
                  v108 = v103 - v84;
                  v109 = vabdd_f64(0.0, v107) <= fabs(v107) * v88 + 0.000000999999997 ? ((__PAIR64__(v108 > 0.0, LODWORD(v108)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308 : v108 / v107;
                }

                else
                {
                  v109 = -1.79769313e308;
                }

                if (vabdd_f64(v109, v91) <= v93)
                {
                  break;
                }

                if (v109 < v91)
                {
                  goto LABEL_73;
                }
              }

              if (vabds_f32(v102, v67) <= v78)
              {
                break;
              }

              if (v102 < v67)
              {
                goto LABEL_73;
              }
            }
          }

          while (v103 >= v66);
LABEL_73:
          ;
        }

        while (v80 < v81);
      }

      if (v71 != v7)
      {
        *v7 = *v71;
      }

      *v71 = v67;
      v71[1] = v66;
      if (v70 < v73)
      {
LABEL_120:
        result = sub_246100E28(v7, v71, a3, a4, a5 & 1);
        v8 = &loc_24613F000;
        a5 = 0;
        v10 = v71 + 2;
      }

      else
      {
        v110 = sub_2461027BC(v7, v71, a3);
        v10 = v71 + 2;
        result = sub_2461027BC(v71 + 2, a2, a3);
        if (result)
        {
          a2 = v71;
          v8 = &loc_24613F000;
          if (v110)
          {
            return result;
          }

          goto LABEL_2;
        }

        v8 = &loc_24613F000;
        if (!v110)
        {
          goto LABEL_120;
        }
      }
    }

    else
    {
      v67 = *v7;
      v66 = v7[1];
      v68 = **a3;
      v69 = (*a3)[1];
      v9 = &loc_24613F000;
      if (sub_246102430(v68, v69, *(v7 - 2), *(v7 - 1), *v7, v66))
      {
        goto LABEL_63;
      }

      result = sub_246102430(v68, v69, v67, v66, *(a2 - 2), *(a2 - 1));
      if (result)
      {
        v10 = v7;
        do
        {
          v111 = v10[2];
          v112 = v10[3];
          v10 += 2;
          result = sub_246102430(v68, v69, v67, v66, v111, v112);
        }

        while ((result & 1) == 0);
      }

      else
      {
        v113 = v7 + 2;
        do
        {
          v10 = v113;
          if (v113 >= a2)
          {
            break;
          }

          result = sub_246102430(v68, v69, v67, v66, *v113, v113[1]);
          v113 = v10 + 2;
        }

        while (!result);
      }

      v114 = a2;
      if (v10 < a2)
      {
        v114 = a2;
        do
        {
          v115 = *(v114 - 2);
          v116 = *(v114 - 1);
          v114 -= 2;
          result = sub_246102430(v68, v69, v67, v66, v115, v116);
        }

        while ((result & 1) != 0);
      }

      if (v10 < v114)
      {
        v117 = (fabsf(v67) * 0.00001) + 0.000001;
        v118 = (fabsf(v66) * 0.00001) + 0.000001;
        v8 = &loc_24613F000;
        while (1)
        {
          v119 = *v10;
          *v10 = *v114;
          v10 += 2;
          *v114 = v119;
          v120 = **a3;
          v121 = (*a3)[1];
          v122 = vabds_f32(v120, v67);
          v123 = vabds_f32(v121, v66);
          v124 = (v67 - v120);
          v125 = vabdd_f64(0.0, v124);
          v126 = fabs(v124) * 0.00000999999975 + 0.000000999999997;
          v127 = (v66 - v121) / v124;
          if (v125 <= v126)
          {
            v127 = ((__PAIR64__((v66 - v121) > 0.0, v66 - v121) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
          }

          v128 = v123 > v118 || v122 > v117;
          v129 = -1.79769313e308;
          if (v128)
          {
            v129 = v127;
          }

          while (1)
          {
            v130 = *v10;
            v131 = v10[1];
            v132 = (fabsf(*v10) * 0.00001) + 0.000001;
            v133 = vabds_f32(v121, v131);
            v134 = (fabsf(v131) * 0.00001) + 0.000001;
            if (vabds_f32(v120, *v10) > v132 || v133 > v134)
            {
              v136 = (v130 - v120);
              v137 = v131 - v121;
              if (vabdd_f64(0.0, v136) <= fabs(v136) * 0.00000999999975 + 0.000000999999997)
              {
                v138 = ((__PAIR64__(v137 > 0.0, LODWORD(v137)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
              }

              else
              {
                v138 = v137 / v136;
              }
            }

            else
            {
              v138 = -1.79769313e308;
            }

            if (vabdd_f64(v129, v138) > fabs(v138) * 0.00000999999975 + 0.000000999999997)
            {
              if (v129 < v138)
              {
                goto LABEL_159;
              }

              goto LABEL_143;
            }

            if (vabds_f32(v67, v130) <= v132)
            {
              break;
            }

            if (v67 < v130)
            {
              goto LABEL_159;
            }

LABEL_143:
            v10 += 2;
          }

          if (v66 >= v131)
          {
            goto LABEL_143;
          }

          do
          {
            while (1)
            {
LABEL_159:
              while (1)
              {
                v139 = *(v114 - 2);
                v140 = *(v114 - 1);
                v114 -= 2;
                v141 = (fabsf(v139) * 0.00001) + 0.000001;
                v142 = vabds_f32(v121, v140);
                v143 = (fabsf(v140) * 0.00001) + 0.000001;
                if (vabds_f32(v120, v139) > v141 || v142 > v143)
                {
                  v145 = (v139 - v120);
                  v146 = v140 - v121;
                  v147 = vabdd_f64(0.0, v145) <= fabs(v145) * 0.00000999999975 + 0.000000999999997 ? ((__PAIR64__(v146 > 0.0, LODWORD(v146)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308 : v146 / v145;
                }

                else
                {
                  v147 = -1.79769313e308;
                }

                if (vabdd_f64(v129, v147) <= fabs(v147) * 0.00000999999975 + 0.000000999999997)
                {
                  break;
                }

                if (v129 >= v147)
                {
                  goto LABEL_133;
                }
              }

              if (vabds_f32(v67, v139) <= v141)
              {
                break;
              }

              if (v67 >= v139)
              {
                goto LABEL_133;
              }
            }
          }

          while (v66 < v140);
LABEL_133:
          if (v10 >= v114)
          {
            goto LABEL_174;
          }
        }
      }

      v8 = &loc_24613F000;
LABEL_174:
      if (v10 - 2 != v7)
      {
        *v7 = *(v10 - 1);
      }

      a5 = 0;
      *(v10 - 2) = v67;
      *(v10 - 1) = v66;
    }
  }

  v157 = v7[2];
  v158 = v7[3];
  v159 = **a3;
  v160 = (*a3)[1];
  v161 = sub_246102430(v159, v160, v157, v158, *v7, v7[1]);
  result = sub_246102430(v159, v160, *(a2 - 2), *(a2 - 1), v157, v158);
  if (!v161)
  {
    if (!result)
    {
      return result;
    }

    v256 = *(v7 + 1);
    *(v7 + 1) = *v282;
    *v282 = v256;
    v150.i32[0] = v7[2];
    v151 = v7[3];
    v152 = *v7;
    v153 = v7[1];
    v154 = **a3;
    v155 = (*a3)[1];
LABEL_298:
    result = sub_246102430(v154, v155, *v150.i32, v151, v152, v153);
    if (result)
    {
      *v7 = vextq_s8(*v7, *v7, 8uLL);
    }

    return result;
  }

  v162 = *v7;
  if (result)
  {
    v163 = v282;
    *v7 = *v282;
  }

  else
  {
    *v7 = *(v7 + 1);
    *(v7 + 1) = v162;
    result = sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), *&v162, *(&v162 + 1));
    if (!result)
    {
      return result;
    }

    v163 = v282;
    *(v7 + 1) = *v282;
  }

  *v163 = v162;
  return result;
}

BOOL sub_246102430(float a1, float a2, float a3, float a4, float a5, float a6)
{
  v6 = vabds_f32(a1, a3);
  v7 = (fabsf(a3) * 0.00001) + 0.000001;
  v11 = v6 == v7;
  v10 = v6 >= v7;
  v8 = vabds_f32(a2, a4);
  v9 = (fabsf(a4) * 0.00001) + 0.000001;
  if (!v11 && v10)
  {
    v10 = 1;
    v11 = 0;
  }

  else
  {
    v11 = v8 == v9;
    v10 = v8 >= v9;
  }

  if (!v11 && v10)
  {
    v12 = (a3 - a1);
    v13 = a4 - a2;
    if (vabdd_f64(0.0, v12) <= fabs(v12) * 0.00000999999975 + 0.000000999999997)
    {
      v14 = ((__PAIR64__(v13 > 0.0, LODWORD(v13)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
    }

    else
    {
      v14 = v13 / v12;
    }
  }

  else
  {
    v14 = -1.79769313e308;
  }

  v15 = vabds_f32(a1, a5);
  v16 = (fabsf(a5) * 0.00001) + 0.000001;
  v11 = v15 == v16;
  v10 = v15 >= v16;
  v17 = vabds_f32(a2, a6);
  v18 = (fabsf(a6) * 0.00001) + 0.000001;
  if (!v11 && v10)
  {
    v19 = 1;
    v20 = 0;
  }

  else
  {
    v20 = v17 == v18;
    v19 = v17 >= v18;
  }

  if (!v20 && v19)
  {
    v21 = (a5 - a1);
    v22 = a6 - a2;
    if (vabdd_f64(0.0, v21) <= fabs(v21) * 0.00000999999975 + 0.000000999999997)
    {
      v23 = ((__PAIR64__(v22 > 0.0, LODWORD(v22)) - COERCE_UNSIGNED_INT(0.0)) >> 32) * 1.79769313e308;
    }

    else
    {
      v23 = v22 / v21;
    }
  }

  else
  {
    v23 = -1.79769313e308;
  }

  if (vabdd_f64(v14, v23) > fabs(v23) * 0.00000999999975 + 0.000000999999997)
  {
    return v14 < v23;
  }

  if (vabds_f32(a3, a5) <= v16)
  {
    return a4 < a6;
  }

  return a3 < a5;
}

BOOL sub_2461025F4(float *a1, float *a2, float *a3, float *a4, float **a5)
{
  v10 = *a2;
  v11 = a2[1];
  v12 = **a5;
  v13 = (*a5)[1];
  v14 = sub_246102430(v12, v13, *a2, v11, *a1, a1[1]);
  v15 = a3[1];
  v16 = sub_246102430(v12, v13, *a3, v15, v10, v11);
  if (v14)
  {
    v17 = *a1;
    if (v16)
    {
      *a1 = *a3;
      *a3 = v17;
LABEL_7:
      v15 = *(&v17 + 1);
      goto LABEL_10;
    }

    *a1 = *a2;
    *a2 = v17;
    v15 = a3[1];
    if (sub_246102430(**a5, (*a5)[1], *a3, v15, *&v17, *(&v17 + 1)))
    {
      *a2 = *a3;
      *a3 = v17;
      v15 = *(&v17 + 1);
    }
  }

  else if (v16)
  {
    v17 = *a2;
    *a2 = *a3;
    *a3 = v17;
    if (!sub_246102430(**a5, (*a5)[1], *a2, a2[1], *a1, a1[1]))
    {
      goto LABEL_7;
    }

    v18 = *a1;
    *a1 = *a2;
    *a2 = v18;
    v15 = a3[1];
  }

LABEL_10:
  result = sub_246102430(**a5, (*a5)[1], *a4, a4[1], *a3, v15);
  if (result)
  {
    v20 = *a3;
    *a3 = *a4;
    *a4 = v20;
    result = sub_246102430(**a5, (*a5)[1], *a3, a3[1], *a2, a2[1]);
    if (result)
    {
      v21 = *a2;
      *a2 = *a3;
      *a3 = v21;
      result = sub_246102430(**a5, (*a5)[1], *a2, a2[1], *a1, a1[1]);
      if (result)
      {
        v22 = *a1;
        *a1 = *a2;
        *a2 = v22;
      }
    }
  }

  return result;
}

BOOL sub_2461027BC(float *a1, float *a2, float **a3)
{
  v6 = (a2 - a1) >> 3;
  if (v6 <= 2)
  {
    if (v6 >= 2)
    {
      if (v6 == 2)
      {
        if (sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), *a1, a1[1]))
        {
          v7 = *a1;
          *a1 = *(a2 - 1);
          *(a2 - 1) = v7;
        }

        return 1;
      }

      goto LABEL_16;
    }

    return 1;
  }

  switch(v6)
  {
    case 3:
      v16 = a1[2];
      v17 = a1[3];
      v18 = **a3;
      v19 = (*a3)[1];
      v20 = sub_246102430(v18, v19, v16, v17, *a1, a1[1]);
      v21 = sub_246102430(v18, v19, *(a2 - 2), *(a2 - 1), v16, v17);
      if (v20)
      {
        v22 = *a1;
        if (v21)
        {
          *a1 = *(a2 - 1);
          *(a2 - 1) = v22;
        }

        else
        {
          *a1 = *(a1 + 1);
          *(a1 + 1) = v22;
          if (sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), *&v22, *(&v22 + 1)))
          {
            *(a1 + 1) = *(a2 - 1);
            *(a2 - 1) = v22;
          }
        }

        return 1;
      }

      if (!v21)
      {
        return 1;
      }

      v34 = *(a1 + 1);
      *(a1 + 1) = *(a2 - 1);
      *(a2 - 1) = v34;
      v10.i32[0] = a1[2];
      v11 = a1[3];
      v12 = *a1;
      v13 = a1[1];
      v14 = **a3;
      v15 = (*a3)[1];
LABEL_22:
      if (sub_246102430(v14, v15, *v10.i32, v11, v12, v13))
      {
        *a1 = vextq_s8(*a1, *a1, 8uLL);
      }

      return 1;
    case 4:
      sub_2461025F4(a1, a1 + 2, a1 + 4, a2 - 2, a3);
      return 1;
    case 5:
      sub_2461025F4(a1, a1 + 2, a1 + 4, a1 + 6, a3);
      if (!sub_246102430(**a3, (*a3)[1], *(a2 - 2), *(a2 - 1), a1[6], a1[7]))
      {
        return 1;
      }

      v8 = *(a1 + 3);
      *(a1 + 3) = *(a2 - 1);
      *(a2 - 1) = v8;
      if (!sub_246102430(**a3, (*a3)[1], a1[6], a1[7], a1[4], a1[5]))
      {
        return 1;
      }

      v9 = vextq_s8(*(a1 + 4), *(a1 + 4), 8uLL);
      *(a1 + 1) = v9;
      if (!sub_246102430(**a3, (*a3)[1], *v9.i32, *&v9.i32[1], a1[2], a1[3]))
      {
        return 1;
      }

      v10 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
      *(a1 + 2) = v10;
      v11 = *&v10.i32[1];
      v12 = *a1;
      v13 = a1[1];
      v14 = **a3;
      v15 = (*a3)[1];
      goto LABEL_22;
  }

LABEL_16:
  v23 = a1[2];
  v24 = a1[3];
  v25 = a1[1];
  v26 = **a3;
  v27 = (*a3)[1];
  v28 = sub_246102430(v26, v27, v23, v24, *a1, v25);
  v30 = a1[4];
  v31 = a1[5];
  v29 = a1 + 4;
  v32 = sub_246102430(v26, v27, v30, v31, v23, v24);
  if (v28)
  {
    v33 = *a1;
    if (v32)
    {
      *a1 = *(a1 + 2);
      *(a1 + 2) = v33;
    }

    else
    {
      *a1 = *(a1 + 1);
      *(a1 + 1) = v33;
      if (sub_246102430(**a3, (*a3)[1], v30, v31, *&v33, *(&v33 + 1)))
      {
        *(a1 + 2) = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
      }
    }
  }

  else if (v32)
  {
    v35 = vextq_s8(*(a1 + 2), *(a1 + 2), 8uLL);
    *(a1 + 2) = v35;
    if (sub_246102430(**a3, (*a3)[1], *v35.i32, *&v35.i32[1], *a1, v25))
    {
      *a1 = vextq_s8(*a1, *a1, 8uLL);
    }
  }

  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = *a3;
  while (1)
  {
    v40 = *v36;
    v41 = v36[1];
    if (sub_246102430(*v39, v39[1], *v36, v41, *v29, v29[1]))
    {
      break;
    }

LABEL_33:
    v29 = v36;
    v37 += 8;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }

  v42 = v37;
  while (1)
  {
    v43 = (a1 + v42);
    *(a1 + v42 + 24) = *(a1 + v42 + 16);
    if (v42 == -16)
    {
      break;
    }

    v42 -= 8;
    if (!sub_246102430(**a3, (*a3)[1], v40, v41, v43[2], v43[3]))
    {
      v44 = (a1 + v42 + 24);
      goto LABEL_40;
    }
  }

  v44 = a1;
LABEL_40:
  *v44 = v40;
  v44[1] = v41;
  if (++v38 != 8)
  {
    v39 = *a3;
    goto LABEL_33;
  }

  return v36 + 2 == a2;
}

uint64_t sub_246102BA8(__CVBuffer *a1, __CVBuffer *a2, uint64_t a3)
{
  result = CVBufferCopyAttachment(a1, @"Calibration Data", 0);
  if (result)
  {
    v7 = result;
    v8 = CFGetTypeID(result);
    if (v8 == CFDictionaryGetTypeID())
    {
      v21 = 0.0;
      v22 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      CalibrationPinholeModel_0 = getCalibrationPinholeModel_0(v7, 0, &v22, &v21, &v20, &v19, &v18);
      CFRelease(v7);
      if (CalibrationPinholeModel_0)
      {
        Width = CVPixelBufferGetWidth(a2);
        v11 = Width / CVPixelBufferGetWidth(a1);
        Height = CVPixelBufferGetHeight(a2);
        v13 = Height / CVPixelBufferGetHeight(a1);
        *&v14 = v11 * (v21 * v22);
        LODWORD(v15) = 0;
        v16 = v21 * v13;
        *(&v15 + 1) = v16;
        *&v17 = v11 * v20;
        *&v13 = v13 * v19;
        HIDWORD(v17) = LODWORD(v13);
        *(a3 + 8) = 0;
        *a3 = v14;
        *(a3 + 24) = 0;
        *(a3 + 16) = v15;
        *(a3 + 40) = 1065353216;
        *(a3 + 32) = v17;
        return 1;
      }
    }

    else
    {
      CFRelease(v7);
    }

    return 0;
  }

  return result;
}

void *sub_246102CFC(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result] >> 2;
      if (v4 == *result)
      {
        v11 = 1;
      }

      if (!(v11 >> 61))
      {
        operator new();
      }

      sub_2460D368C();
    }

    v7 = ((v6 >> 3) + 1) / 2;
    v8 = ((v6 >> 3) + 1) / -2;
    v9 = &v5[-8 * v7];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v7], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v8];
  }

  *v4 = *a2;
  v3[2] = v4 + 8;
  return result;
}

void sub_246102E84(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = v3 - *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (v8 >> 2) + 1;
    if (v9 > 0x1555555555555555)
    {
      sub_2460D368C();
    }

    v10 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0xAAAAAAAAAAAAAAALL)
    {
      v11 = 0x1555555555555555;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0x1555555555555555)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v12 = 4 * (v8 >> 2);
    *v12 = *a2;
    *(v12 + 8) = *(a2 + 2);
    v6 = v12 + 12;
    v13 = v12 - v8;
    if (v7 != v3)
    {
      v14 = v13;
      do
      {
        v15 = *v7;
        *(v14 + 8) = v7[2];
        *v14 = v15;
        v14 += 12;
        v7 += 3;
      }

      while (v7 != v3);
      v7 = *a1;
    }

    *a1 = v13;
    *(a1 + 8) = v6;
    *(a1 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    v5 = *a2;
    v3[2] = *(a2 + 2);
    *v3 = v5;
    v6 = (v3 + 3);
  }

  *(a1 + 8) = v6;
}

double sub_246102FEC(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  if (*a2 == a1)
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_246102FEC(&v7);
    result = *&v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  else
  {
    v4 = **(a2 + 8);
    *a1 = (*v3 * *v4) + 0.0;
    *(a1 + 4) = (v3[1] * *v4) + 0.0;
    *(a1 + 8) = (v3[2] * *v4) + 0.0;
    *(a1 + 12) = (*v3 * v4[1]) + 0.0;
    *(a1 + 16) = (v3[1] * v4[1]) + 0.0;
    *(a1 + 20) = (v3[2] * v4[1]) + 0.0;
    *(a1 + 24) = (*v3 * v4[2]) + 0.0;
    *(a1 + 28) = (v3[1] * v4[2]) + 0.0;
    *&result = (v3[2] * v4[2]) + 0.0;
    *(a1 + 32) = LODWORD(result);
  }

  return result;
}

void sub_2461030E4(uint64_t a1)
{
  cva::vecLib::gesvd<float>();
  memptr = 0;
  malloc_type_posix_memalign(&memptr, 0x20uLL, (4 * 0.0 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v2 = memptr;
  cva::vecLib::gesvd<float>();
  free(v2);
  *(a1 + 92) = 1;
}

__n64 sub_246103208(uint64_t a1, float **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v9 = 0;
    v7 = 0u;
    v8 = 0u;
    sub_246103208(&v7);
    result.n64_u64[0] = v7;
    v6 = v8;
    *a1 = v7;
    *(a1 + 16) = v6;
    *(a1 + 32) = v9;
  }

  else
  {
    result.n64_u32[1] = 0;
    *a1 = (((*v3 * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[6] * v4[2]);
    *(a1 + 4) = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[1])) + (v3[7] * v4[2]);
    *(a1 + 8) = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[1])) + (v3[8] * v4[2]);
    *(a1 + 12) = (((*v3 * v4[3]) + 0.0) + (v3[3] * v4[4])) + (v3[6] * v4[5]);
    *(a1 + 16) = (((v3[1] * v4[3]) + 0.0) + (v3[4] * v4[4])) + (v3[7] * v4[5]);
    *(a1 + 20) = (((v3[2] * v4[3]) + 0.0) + (v3[5] * v4[4])) + (v3[8] * v4[5]);
    *(a1 + 24) = (((*v3 * v4[6]) + 0.0) + (v3[3] * v4[7])) + (v3[6] * v4[8]);
    *(a1 + 28) = (((v3[1] * v4[6]) + 0.0) + (v3[4] * v4[7])) + (v3[7] * v4[8]);
    result.n64_f32[0] = (((v3[2] * v4[6]) + 0.0) + (v3[5] * v4[7])) + (v3[8] * v4[8]);
    *(a1 + 32) = result.n64_u32[0];
  }

  return result;
}

uint64_t sub_2461033B8(uint64_t a1, void *a2, unint64_t a3, unint64_t a4)
{
  if ((*(*a2 + 16))(a2) == 1 && *(a1 + 24) == 1 && a2[1] && (v7 = a2[6]) != 0 && (v8 = a2[3]) != 0)
  {
    v9 = 0;
    if (v8 <= a3)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      v32 = a2[4];
      if (v32 > a4)
      {
        v11 = *(a1 + 8);
        v12 = v11 >> 1;
        v13 = a4 - (v11 >> 1);
        v14 = 0.0;
        v33 = (v11 >> 1) + a4;
        if (v13 >= v33 || v11 < 1)
        {
          v17 = 0.0;
        }

        else
        {
          v30 = a2[1];
          v31 = a2[6];
          v15 = a3 - v12;
          v16 = v12 + a3;
          v17 = 0.0;
          if (a3 - v12 < v12 + a3)
          {
            v18 = 0;
            v29 = a2[7];
            v35 = v7 + v29 * a4;
            v19 = *(a1 + 8) & 0x7FFFFFFFLL;
            do
            {
              v34 = v13;
              if ((v13 & 0x80000000) == 0 && v13 < v32)
              {
                v20 = 0;
                v37 = v30 + a2[5] * v13;
                v36 = v31 + v29 * v13;
                v21 = 1;
                do
                {
                  v22 = v15 + v21 - 1;
                  if ((v22 & 0x80000000) == 0 && v22 < v8)
                  {
                    v23 = (*(v35 + a3) - *(v36 + v22));
                    v24 = *(*(*(a1 + 32) + v20) + 4 * v18);
                    v25 = *(a1 + 20) * *(a1 + 20);
                    v26 = v24 * ((expf(((v23 * v23) * -0.5) / v25) * 0.15915) / v25);
                    v14 = v14 + (v26 * *(v37 + 4 * v22));
                    v17 = v17 + v26;
                  }

                  if (v15 + v21 >= v16)
                  {
                    break;
                  }

                  v20 += 24;
                }

                while (v21++ < v19);
              }

              v13 = v34 + 1;
              if (v34 + 1 >= v33)
              {
                break;
              }

              ++v18;
            }

            while (v18 < v19);
          }
        }

        v10 = COERCE_UNSIGNED_INT(v14 / v17);
        v9 = 0x100000000;
      }
    }
  }

  else
  {
    v9 = 0;
    v10 = 0;
  }

  return v10 | v9;
}

void sub_24610361C(void *a1)
{
  *a1 = &unk_2858EBE88;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      v5 = a1[5];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  JUMPOUT(0x24C1995D0);
}

void *sub_2461036D0(void *a1)
{
  *a1 = &unk_2858EBE88;
  v2 = a1[4];
  if (v2)
  {
    v3 = a1[5];
    v4 = a1[4];
    if (v3 != v2)
    {
      v5 = a1[5];
      do
      {
        v7 = *(v5 - 24);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 16) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = a1[4];
    }

    a1[5] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t getCalibrationPinholeModel_0(const __CFDictionary *a1, void *a2, void **a3, void **a4, void **a5, void **a6, void **a7)
{
  if (!CFDictionaryContainsKey(a1, @"Sensors"))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, @"Sensors");
  v15 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  v17 = 0;
  if (!Value || v15 != TypeID)
  {
    return v17;
  }

  if (!CFDictionaryContainsKey(Value, @"Intrinsics"))
  {
    return 0;
  }

  v18 = CFDictionaryGetValue(Value, @"Intrinsics");
  v19 = CFGetTypeID(v18);
  v20 = CFDictionaryGetTypeID();
  v17 = 0;
  if (!v18 || v19 != v20)
  {
    return v17;
  }

  keys = a2;
  if (!a2)
  {
    if (CFDictionaryGetCount(v18) != 1)
    {
      return 0;
    }

    CFDictionaryGetKeysAndValues(v18, &keys, 0);
    a2 = keys;
  }

  if (!CFDictionaryContainsKey(v18, a2))
  {
    return 0;
  }

  v17 = CFDictionaryGetValue(v18, a2);
  v21 = CFGetTypeID(v17);
  if (v21 != CFDictionaryGetTypeID())
  {
    return 0;
  }

  if (!v17)
  {
    return v17;
  }

  if (!CFDictionaryContainsKey(v17, @"Pinhole"))
  {
    return 0;
  }

  v22 = CFDictionaryGetValue(v17, @"Pinhole");
  v23 = CFGetTypeID(v22);
  v24 = CFDictionaryGetTypeID();
  v17 = 0;
  if (v22)
  {
    if (v23 == v24)
    {
      v25 = sub_246103A2C(v22, @"Aspect Ratio", 1);
      v26 = sub_246103A2C(v22, @"Focal Length", 1);
      v27 = sub_246103A2C(v22, @"Principal Point", 2);
      v28 = sub_246103A2C(v22, @"Skew", 1);
      v29 = v25;
      v17 = 0;
      if (v29)
      {
        if (v26 && v27 && v28)
        {
          v30 = v28;
          ValueAtIndex = CFArrayGetValueAtIndex(v29, 0);
          keys = 0;
          CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &keys);
          *a3 = keys;
          v32 = CFArrayGetValueAtIndex(v26, 0);
          keys = 0;
          CFNumberGetValue(v32, kCFNumberDoubleType, &keys);
          *a4 = keys;
          v33 = CFArrayGetValueAtIndex(v27, 0);
          keys = 0;
          CFNumberGetValue(v33, kCFNumberDoubleType, &keys);
          *a5 = keys;
          v17 = 1;
          v34 = CFArrayGetValueAtIndex(v27, 1);
          keys = 0;
          CFNumberGetValue(v34, kCFNumberDoubleType, &keys);
          *a6 = keys;
          v35 = CFArrayGetValueAtIndex(v30, 0);
          keys = 0;
          CFNumberGetValue(v35, kCFNumberDoubleType, &keys);
          *a7 = keys;
        }
      }
    }
  }

  return v17;
}

const void *sub_246103A2C(const __CFDictionary *a1, const void *a2, int a3)
{
  if (!CFDictionaryContainsKey(a1, a2))
  {
    return 0;
  }

  Value = CFDictionaryGetValue(a1, a2);
  v7 = CFGetTypeID(Value);
  TypeID = CFDictionaryGetTypeID();
  result = 0;
  if (Value && v7 == TypeID)
  {
    if (CFDictionaryContainsKey(Value, @"Data"))
    {
      v10 = CFDictionaryGetValue(Value, @"Data");
      v11 = CFGetTypeID(v10);
      if (v11 == CFArrayGetTypeID())
      {
        if (CFArrayGetCount(v10) == a3)
        {
          return v10;
        }

        else
        {
          return 0;
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t sub_246103AE8(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  v2 = qword_27EE3F710;
  *(a1 + 36) = 0;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0;
  *a1 = v2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  return a1;
}

uint64_t sub_246103B9C(uint64_t a1, unsigned int a2)
{
  v2 = *a1;
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  if (a2)
  {
    if ((*(a1 + 36) & 1) == 0)
    {
      *(a1 + 32) = a2;
      v5 = 48 * a2;
      v6 = *v2;
      v8 = objc_msgSend_newBufferWithLength_options_(v6, v7, v5, 0);
      v9 = *(a1 + 16);
      *(a1 + 16) = v8;

      result = *(a1 + 16);
      if (result)
      {
        objc_msgSend_setLabel_(result, v10, @"SurfaceVoxelBuffer");
        v11 = 576 * *(a1 + 32);
        v12 = **a1;
        v14 = objc_msgSend_newBufferWithLength_options_(v12, v13, v11, 0);
        v15 = *(a1 + 24);
        *(a1 + 24) = v14;

        result = *(a1 + 24);
        if (result)
        {
          objc_msgSend_setLabel_(result, v16, @"SurfaceVoxelVertexBuffer");
          v18 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v17, @"coverageGenSurfaceVoxelVertex");
          v19 = **a1;
          v25 = 0;
          v21 = objc_msgSend_newComputePipelineStateWithFunction_error_(v19, v20, v18, &v25);
          v22 = v25;
          v23 = *(a1 + 8);
          *(a1 + 8) = v21;

          v24 = *(a1 + 8);
          if (v24)
          {
            result = 1;
            *(a1 + 36) = 1;
            return result;
          }

          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_246103D18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0;
  if (*(a1 + 36) == 1 && *a2 > 0.0)
  {
    v5 = *(a2 + 16);
    v6 = *(a2 + 32);
    v7 = *(a2 + 48);
    v8 = *(MEMORY[0x277D860B0] + 16);
    v9 = *(MEMORY[0x277D860B0] + 32);
    v10 = vdupq_n_s32(0x38D1B717u);
    v11 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v6, *v6.f32, 1), v7, *v7.f32, 1), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v6, v6.f32[0]), v7, v7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v6, v6, 2), v7, v7, 2), v9)));
    v11.i32[3] = v11.i32[2];
    if ((vminvq_u32(v11) & 0x80000000) != 0 && (v12 = vzip1q_s32(vzip2q_s32(v5, v7), vdupq_laneq_s32(v6, 2)), v13 = vtrn2q_s32(v5, v6), v13.i32[2] = HIDWORD(*(a2 + 48)), v14 = vzip1q_s32(vzip1q_s32(v5, v7), v6), v15 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v6.f32[0]), v13, *v6.f32, 1), v12, v6, 2), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v5.f32[0]), v13, *v5.f32, 1), v12, v5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v7.f32[0]), v13, *v7.f32, 1), v12, v7, 2), v9))), v15.i32[3] = v15.i32[2], (vminvq_u32(v15) & 0x80000000) != 0))
    {
      v16 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL))), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
      result = 0;
      if (fabsf((v16.f32[2] + vaddv_f32(*v16.f32)) + -1.0) <= 0.000011)
      {
        v17 = vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
        v18 = vdup_n_s32(0x38D1B717u);
        v19 = vand_s8(vcge_f32(v18, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(*(a2 + 64), *(a2 + 64), 8uLL)), 0xBF80000080000000))), vcge_f32(v18, v17));
        if ((vpmin_u32(v19, v19).u32[0] & 0x80000000) != 0)
        {
          v20 = *(a2 + 80);
          if (v20)
          {
            if (*(a2 + 88))
            {
              v22 = *(a1 + 32);
              if (v22 < v20)
              {
                if (qword_27EE3F538 != -1)
                {
                  dispatch_once(&qword_27EE3F538, &unk_2858EBC28);
                }

                v23 = qword_27EE3F530;
                if (os_log_type_enabled(qword_27EE3F530, OS_LOG_TYPE_DEFAULT))
                {
                  *buf = 0;
                  _os_log_impl(&dword_2460CF000, v23, OS_LOG_TYPE_DEFAULT, "The size of input surface voxel cloud exceeds the maximum allowable size. Exceeded surface voxels are culled.", buf, 2u);
                }

                LODWORD(v20) = v22;
              }

              v24 = objc_msgSend_contents(*(a1 + 16), a2, a3);
              memcpy(v24, *(a2 + 88), 48 * v20);
              *(a1 + 40) = *a2;
              *(a1 + 44) = v20;
              v27 = objc_msgSend_commandBuffer(*(*a1 + 8), v25, v26);
              v30 = objc_msgSend_computeCommandEncoder(v27, v28, v29);
              objc_msgSend_setLabel_(v30, v31, @"GenerateSurfaceVoxelVertexEncoder");
              objc_msgSend_setComputePipelineState_(v30, v32, *(a1 + 8));
              objc_msgSend_setBuffer_offset_atIndex_(v30, v33, *(a1 + 16), 0, 0);
              objc_msgSend_setBytes_length_atIndex_(v30, v34, a1 + 44, 4, 1);
              objc_msgSend_setBytes_length_atIndex_(v30, v35, a1 + 40, 4, 2);
              objc_msgSend_setBytes_length_atIndex_(v30, v36, a1 + 48, 1, 3);
              objc_msgSend_setBuffer_offset_atIndex_(v30, v37, *(a1 + 24), 0, 4);
              v38 = *(a1 + 44);
              v41 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 8), v39, v40);
              v43 = *(a1 + 44);
              if (v41 < v43)
              {
                v43 = v41;
              }

              *buf = v38;
              v53 = vdupq_n_s64(1uLL);
              v50 = v43;
              v51 = v53;
              objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v30, v42, buf, &v50);
              objc_msgSend_endEncoding(v30, v44, v45);

              v49[0] = MEMORY[0x277D85DD0];
              v49[1] = 3221225472;
              v49[2] = sub_246104134;
              v49[3] = &unk_278E9B550;
              v49[4] = a1;
              objc_msgSend_addCompletedHandler_(v27, v46, v49);
              objc_msgSend_commit(v27, v47, v48);

              return 1;
            }
          }
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_246104144()
{
  qword_27EE3F530 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_246104188()
{
  qword_27EE3F540 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_2461041CC(uint64_t a1)
{
  v1 = *a1;
  v2 = *(a1 + 16);
  v3 = *(a1 + 32);
  v4 = *(MEMORY[0x277D860B0] + 16);
  v5 = *(MEMORY[0x277D860B0] + 32);
  v6 = vdupq_n_s32(0x38D1B717u);
  v7 = vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v1, *v1.f32, 1), v2, *v2.f32, 1), v3, *v3.f32, 1), v4)), vcgeq_f32(v6, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v1, v1.f32[0]), v2, v2.f32[0]), v3, v3.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v1, v1, 2), v2, v2, 2), v3, v3, 2), v5)));
  v7.i32[3] = v7.i32[2];
  if ((vminvq_u32(v7) & 0x80000000) == 0)
  {
    return 0;
  }

  v8 = vzip1q_s32(vzip2q_s32(v1, v3), vdupq_laneq_s32(v2, 2));
  v9 = vtrn2q_s32(v1, v2);
  v9.i32[2] = HIDWORD(*(a1 + 32));
  v10 = vzip1q_s32(vzip1q_s32(v1, v3), v2);
  v11 = vandq_s8(vandq_s8(vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v2.f32[0]), v9, *v2.f32, 1), v8, v2, 2), v4)), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v1.f32[0]), v9, *v1.f32, 1), v8, v1, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v6, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v10, v3.f32[0]), v9, *v3.f32, 1), v8, v3, 2), v5)));
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0)
  {
    return 0;
  }

  v12 = vmulq_f32(v1, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v3, v3, 0xCuLL), v3, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v2, v2), v2, 0xCuLL))), vextq_s8(vuzp1q_s32(v3, v3), v3, 0xCuLL), vextq_s8(vextq_s8(v2, v2, 0xCuLL), v2, 8uLL)));
  if (fabsf((v12.f32[2] + vaddv_f32(*v12.f32)) + -1.0) > 0.000011)
  {
    return 0;
  }

  v14 = vabs_f32(vzip2_s32(*&vextq_s8(v1, v1, 8uLL), *&vextq_s8(v2, v2, 8uLL)));
  v15 = vdup_n_s32(0x38D1B717u);
  v16 = vand_s8(vcge_f32(v15, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v3, v3, 8uLL), *&vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v15, v14));
  return vpmin_u32(v16, v16).u32[0] >> 31;
}

uint64_t sub_246104370(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = vmulq_f32(*a1, *a1);
  *v2.i8 = vadd_f32(*v2.i8, *&vextq_s8(v2, v2, 8uLL));
  v2.i32[0] = vadd_f32(*v2.i8, vdup_lane_s32(*v2.i8, 1)).u32[0];
  v3 = vrsqrte_f32(v2.u32[0]);
  v4 = vmul_f32(v3, vrsqrts_f32(v2.u32[0], vmul_f32(v3, v3)));
  v5 = vmulq_n_f32(*a1, vmul_f32(v4, vrsqrts_f32(v2.u32[0], vmul_f32(v4, v4))).f32[0]);
  v6 = vmulq_f32(v1, v1);
  *v6.i8 = vadd_f32(*v6.i8, *&vextq_s8(v6, v6, 8uLL));
  v6.i32[0] = vadd_f32(*v6.i8, vdup_lane_s32(*v6.i8, 1)).u32[0];
  v7 = vrsqrte_f32(v6.u32[0]);
  v8 = vmul_f32(v7, vrsqrts_f32(v6.u32[0], vmul_f32(v7, v7)));
  v9 = vmulq_n_f32(v1, vmul_f32(v8, vrsqrts_f32(v6.u32[0], vmul_f32(v8, v8))).f32[0]);
  v10 = *(a1 + 32);
  v11 = vmulq_f32(v10, v10);
  *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
  v11.i32[0] = vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).u32[0];
  v12 = vrsqrte_f32(v11.u32[0]);
  v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
  v14 = vmulq_n_f32(v10, vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).f32[0]);
  v15 = *(MEMORY[0x277D860B0] + 16);
  v16 = *(MEMORY[0x277D860B0] + 32);
  v17 = vdupq_n_s32(0x38D1B717u);
  v18 = vandq_s8(vandq_s8(vcgeq_f32(v17, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v9, *v9.f32, 1), v14, *v14.f32, 1), v15)), vcgeq_f32(v17, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v9, v9.f32[0]), v14, v14.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v9, v9, 2), v14, v14, 2), v16)));
  v18.i32[3] = v18.i32[2];
  if ((vminvq_u32(v18) & 0x80000000) == 0)
  {
    return 0;
  }

  v19 = vzip1q_s32(vzip2q_s32(v5, v14), vdupq_laneq_s32(v9, 2));
  v20 = vtrn2q_s32(v5, v9);
  v20.i32[2] = v14.i32[1];
  v21 = vzip1q_s32(vzip1q_s32(v5, v14), v9);
  v22 = vandq_s8(vandq_s8(vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v9.f32[0]), v20, *v9.f32, 1), v19, v9, 2), v15)), vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v5.f32[0]), v20, *v5.f32, 1), v19, v5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, v14.f32[0]), v20, *v14.f32, 1), v19, v14, 2), v16)));
  v22.i32[3] = v22.i32[2];
  if ((vminvq_u32(v22) & 0x80000000) == 0)
  {
    return 0;
  }

  v23 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v14, v14, 0xCuLL), v14, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL))), vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL), vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL)));
  if (fabsf((v23.f32[2] + vaddv_f32(*v23.f32)) + -1.0) > 0.000011)
  {
    return 0;
  }

  v25 = vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v9, v9, 8uLL)));
  v26 = vdup_n_s32(0x38D1B717u);
  v27 = vand_s8(vcge_f32(v26, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v26, v25));
  return vpmin_u32(v27, v27).u32[0] >> 31;
}

double sub_2461045BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3 == a1)
  {
    v6 = 0uLL;
    sub_2461045BC(&v6);
    result = *&v6;
    *a1 = v6;
  }

  else
  {
    v4 = **a2;
    *a1 = (((v4[1] * v3[1]) + (*v4 * *v3)) + 0.0) + (v4[2] * v3[2]);
    *(a1 + 4) = (((v4[4] * v3[1]) + (v4[3] * *v3)) + 0.0) + (v4[5] * v3[2]);
    *(a1 + 8) = (((v4[1] * v3[4]) + (*v4 * v3[3])) + 0.0) + (v4[2] * v3[5]);
    *&result = (((v4[4] * v3[4]) + (v4[3] * v3[3])) + 0.0) + (v4[5] * v3[5]);
    *(a1 + 12) = LODWORD(result);
  }

  return result;
}

double sub_2461046A4(uint64_t a1, float **a2)
{
  v3 = *a2;
  if (*a2 == a1 || (v4 = a2[1], v4 == a1))
  {
    v6 = 0uLL;
    v7 = 0;
    sub_2461046A4(&v6);
    result = *&v6;
    *a1 = v6;
    *(a1 + 16) = v7;
  }

  else
  {
    *a1 = ((*v3 * *v4) + 0.0) + (v3[3] * v4[1]);
    *(a1 + 4) = ((v3[1] * *v4) + 0.0) + (v3[4] * v4[1]);
    *(a1 + 8) = ((v3[2] * *v4) + 0.0) + (v3[5] * v4[1]);
    *(a1 + 12) = ((*v3 * v4[2]) + 0.0) + (v3[3] * v4[3]);
    *(a1 + 16) = ((v3[1] * v4[2]) + 0.0) + (v3[4] * v4[3]);
    *&result = ((v3[2] * v4[2]) + 0.0) + (v3[5] * v4[3]);
    *(a1 + 20) = LODWORD(result);
  }

  return result;
}

void sub_24610479C(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (a2 <= (v3 - v4) >> 2)
  {
    if (a2)
    {
      v10 = 4 * a2;
      bzero(*(a1 + 8), 4 * a2);
      v4 += v10;
    }

    *(a1 + 8) = v4;
  }

  else
  {
    v5 = *a1;
    v6 = v4 - *a1;
    v7 = (v6 >> 2) + a2;
    if (v7 >> 62)
    {
      sub_246104BA8();
    }

    v8 = v3 - v5;
    if (v8 >> 1 > v7)
    {
      v7 = v8 >> 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v9 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      if (!(v9 >> 62))
      {
        operator new();
      }

      sub_246104AE4();
    }

    v11 = (4 * (v6 >> 2));
    v12 = 4 * a2;
    bzero(v11, 4 * a2);
    memcpy(0, v5, v6);
    *a1 = 0;
    *(a1 + 8) = &v11[v12];
    *(a1 + 16) = 0;
    if (v5)
    {

      operator delete(v5);
    }
  }
}

uint64_t sub_2461048F0(uint64_t result, uint64_t *a2, float *a3, int *a4, uint64_t a5, __n128 a6, float a7)
{
  if (*(a4 + 1) == 0)
  {
    v8 = *a4;
    if (*a4 < *(a4 + 1))
    {
      v10 = a2[1];
      v9 = a2[2];
      v11 = *a2;
      v12 = *(v10 + 4 * v9 - 4);
      v13 = *result;
      v14 = *(**(result + 136) + 8);
      do
      {
        v15 = *(v13 + 4 * v8);
        v16 = 48 * v15;
        v17 = a3[2] - COERCE_FLOAT(*(v14 + v16 + 8));
        v18 = ((((*a3 - COERCE_FLOAT(*(v14 + v16))) * (*a3 - COERCE_FLOAT(*(v14 + v16)))) + 0.0) + ((a3[1] - COERCE_FLOAT(HIDWORD(*(v14 + v16)))) * (a3[1] - COERCE_FLOAT(HIDWORD(*(v14 + v16)))))) + (v17 * v17);
        if (v18 < v12)
        {
          v19 = a2[3];
          if (v19)
          {
            result = v10 + 4 * v19;
            v20 = (*a2 + 4 * v19);
            v21 = a2[3];
            do
            {
              v22 = *(result - 4);
              if (v22 <= v18)
              {
                break;
              }

              if (v21 < v9)
              {
                *result = v22;
                *v20 = *(v20 - 1);
              }

              result -= 4;
              --v20;
              --v21;
            }

            while (v21);
          }

          else
          {
            v21 = 0;
          }

          if (v21 < v9)
          {
            *(v10 + 4 * v21) = v18;
            *(v11 + 4 * v21) = v15;
          }

          if (v19 < v9)
          {
            a2[3] = v19 + 1;
          }
        }

        ++v8;
      }

      while (v8 < *(a4 + 1));
    }
  }

  else
  {
    v25 = *a4;
    v26 = a3[v25];
    v27 = v26 - *(a4 + 1);
    v28 = v26 - *(a4 + 2);
    v29 = (v27 + v28) < 0.0;
    v30 = v28 * v28;
    v31 = v27 * v27;
    if (v29)
    {
      v32 = v30;
    }

    else
    {
      v32 = v31;
    }

    v33 = result;
    v34 = a6.n128_f32[0];
    result = sub_2461048F0(result, a2, a6, a7);
    v35 = *(a5 + 4 * v25);
    v36.n128_f32[0] = (v32 + v34) - v35;
    *(a5 + 4 * v25) = v32;
    if ((v36.n128_f32[0] * a7) <= *(a2[1] + 4 * a2[2] - 4))
    {
      result = sub_2461048F0(v33, a2, v36, a7);
    }

    *(a5 + 4 * v25) = v35;
  }

  return result;
}

void sub_246104AE4()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
  __cxa_throw(v1, &unk_2858EBCD8, MEMORY[0x277D82620]);
}

void sub_246104B18()
{
  exception = __cxa_allocate_exception(0x10uLL);
  sub_246104B6C(exception);
  __cxa_throw(exception, &unk_2858EBCC0, MEMORY[0x277D825F0]);
}

std::logic_error *sub_246104B6C(std::logic_error *a1)
{
  result = std::logic_error::logic_error(a1, "vector");
  result->__vftable = (MEMORY[0x277D828E0] + 16);
  return result;
}

void *sub_246104BB8(void *result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;
    v3 = *(v1 + 96);
    if (v3)
    {
      do
      {
        v4 = *v3;
        free(v3);
        *(v1 + 96) = v4;
        v3 = v4;
      }

      while (v4);
    }

    *(v1 + 88) = 0;
    *(v1 + 96) = 0;
    *(v1 + 112) = 0;
    v5 = *v1;
    if (*v1)
    {
      *(v1 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x24C1995D0](v1, 0x10F0C40B93F282ALL);
    return v2;
  }

  return result;
}

unsigned int *sub_246104C40(unsigned int **a1)
{
  v2 = **a1[15];
  a1[5] = v2;
  a1[6] = v2;
  v3 = a1[1] - *a1;
  if (v2 != v3)
  {
    if (v2 <= v3)
    {
      if (v2 < v3)
      {
        a1[1] = &(*a1)[v2];
      }
    }

    else
    {
      sub_24610479C(a1, v2 - v3);
      v2 = a1[5];
    }
  }

  if (v2)
  {
    v4 = *a1;
    if (v2 >= 8)
    {
      v5 = v2 & 0xFFFFFFFFFFFFFFF8;
      v6 = xmmword_24613FBC0;
      v7 = v4 + 1;
      v8.i64[0] = 0x400000004;
      v8.i64[1] = 0x400000004;
      v9.i64[0] = 0x800000008;
      v9.i64[1] = 0x800000008;
      v10 = v2 & 0xFFFFFFFFFFFFFFF8;
      do
      {
        v7[-1] = v6;
        *v7 = vaddq_s32(v6, v8);
        v6 = vaddq_s32(v6, v9);
        v7 += 2;
        v10 -= 8;
      }

      while (v10);
      goto LABEL_13;
    }

    v5 = 0;
    do
    {
      v4->i32[v5] = v5;
      ++v5;
LABEL_13:
      ;
    }

    while (v2 != v5);
  }

  result = a1[12];
  if (result)
  {
    do
    {
      v12 = *result;
      free(result);
      a1[12] = v12;
      result = v12;
    }

    while (v12);
    v2 = a1[5];
  }

  *(a1 + 22) = 0;
  a1[12] = 0;
  a1[14] = 0;
  a1[3] = 0;
  a1[6] = v2;
  if (v2)
  {
    v13 = *a1[15];
    v14 = *v13;
    if (!v14)
    {
      exception = __cxa_allocate_exception(0x10uLL);
      MEMORY[0x24C199390](exception, "[nanoflann] computeBoundingBox() called but no data points found.");
      __cxa_throw(exception, &unk_2858EBC78, MEMORY[0x277D82600]);
    }

    v15 = a1 + 15;
    v16 = *a1;
    v17 = *(v13 + 1);
    v18 = (v17 + 48 * **a1);
    v19 = *v18;
    *(a1 + 60) = vdup_lane_s32(*v18, 0);
    v20 = v18[1];
    *(a1 + 17) = v20;
    *(a1 + 18) = v20;
    v21 = v18[2];
    *(a1 + 19) = v21;
    *(a1 + 20) = v21;
    if (v14 == 1)
    {
LABEL_20:
      result = sub_246104F1C(a1, a1, 0, v2, v15);
      a1[3] = result;
      return result;
    }

    v22 = v14 - 1;
    v23 = &v16->i32[1];
    v24 = v21;
    v25 = v20;
    v26 = *&v19;
    while (1)
    {
      v27 = *v23++;
      v28 = (v17 + 48 * v27);
      v29 = *v28;
      if (COERCE_FLOAT(*v28) < v26)
      {
        *v15 = v29;
        v26 = *&v29;
        *&v29 = *v28;
      }

      if (*&v29 <= *&v19)
      {
        v30 = *(&v29 + 1);
        if (*(&v29 + 1) < v25)
        {
LABEL_28:
          *(a1 + 17) = v30;
          v31 = *(v28 + 1);
          v25 = v30;
          if (v31 <= v20)
          {
            goto LABEL_30;
          }

LABEL_29:
          *(a1 + 18) = v31;
          v20 = v31;
          goto LABEL_30;
        }
      }

      else
      {
        *(a1 + 16) = v29;
        v30 = *(v28 + 1);
        LODWORD(v19) = v29;
        if (v30 < v25)
        {
          goto LABEL_28;
        }
      }

      v31 = v30;
      if (v30 > v20)
      {
        goto LABEL_29;
      }

LABEL_30:
      v32 = *(v28 + 2);
      if (v32 >= v24)
      {
        v33 = *(v28 + 2);
        if (v32 > v21)
        {
LABEL_37:
          *(a1 + 20) = v33;
          v21 = v33;
        }
      }

      else
      {
        *(a1 + 19) = v32;
        v33 = *(v28 + 2);
        v24 = v32;
        if (v33 > v21)
        {
          goto LABEL_37;
        }
      }

      if (!--v22)
      {
        goto LABEL_20;
      }
    }
  }

  return result;
}

uint64_t sub_246104EC0(uint64_t a1)
{
  v2 = *(a1 + 96);
  if (v2)
  {
    do
    {
      v3 = *v2;
      free(v2);
      *(a1 + 96) = v3;
      v2 = v3;
    }

    while (v3);
  }

  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 112) = 0;
  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

void *sub_246104F1C(uint64_t *a1, uint64_t *a2, uint64_t a3, unint64_t a4, float *a5)
{
  v10 = *(a2 + 22);
  v11 = v10 - 32;
  if (v10 >= 0x20)
  {
    v13 = a2[13];
  }

  else
  {
    *(a2 + 29) += v10;
    v12 = malloc_type_malloc(0x2000uLL, 0x321368B6uLL);
    if (!v12)
    {
      fwrite("Failed to allocate memory.\n", 0x1BuLL, 1uLL, *MEMORY[0x277D85DF8]);
      exception = __cxa_allocate_exception(8uLL);
      v125 = std::bad_alloc::bad_alloc(exception);
      __cxa_throw(v125, &unk_2858EBCA8, MEMORY[0x277D826E0]);
    }

    *v12 = a2[12];
    a2[12] = v12;
    v13 = v12 + 1;
    v11 = 8152;
  }

  a2[13] = (v13 + 4);
  *(a2 + 22) = v11;
  *(a2 + 28) += 32;
  v14 = a4 - a3;
  if (a4 - a3 <= a2[4])
  {
    v13[2] = 0;
    v13[3] = 0;
    *v13 = a3;
    v13[1] = a4;
    v36 = *a2;
    v37 = *(*a2[15] + 8);
    v38 = (v37 + 48 * *(*a2 + 4 * a3));
    v39 = *v38;
    *a5 = *v38;
    v40 = *v38;
    a5[1] = *v38;
    v41 = v38[1];
    a5[2] = v41;
    a5[3] = v41;
    v42 = v38[2];
    a5[4] = v42;
    a5[5] = v42;
    if (a3 + 1 >= a4)
    {
      return v13;
    }

    v43 = ~a3 + a4;
    v44 = (v36 + 4 * a3 + 4);
    v45 = v42;
    v46 = v41;
    while (1)
    {
      v47 = *v44++;
      v48 = (v37 + 48 * v47);
      v49 = *v48;
      if (v39 > COERCE_FLOAT(*v48))
      {
        *a5 = v49;
        v39 = *&v49;
        *&v49 = *v48;
      }

      if (v40 >= *&v49)
      {
        v50 = *(&v49 + 1);
        if (v46 > *(&v49 + 1))
        {
LABEL_31:
          a5[2] = v50;
          v51 = *(v48 + 1);
          v46 = v50;
          if (v41 >= v51)
          {
            goto LABEL_33;
          }

LABEL_32:
          a5[3] = v51;
          v41 = v51;
          goto LABEL_33;
        }
      }

      else
      {
        *(a5 + 1) = v49;
        v50 = *(v48 + 1);
        v40 = *&v49;
        if (v46 > v50)
        {
          goto LABEL_31;
        }
      }

      v51 = v50;
      if (v41 < v50)
      {
        goto LABEL_32;
      }

LABEL_33:
      v52 = *(v48 + 2);
      if (v45 <= v52)
      {
        v53 = *(v48 + 2);
        if (v42 >= v52)
        {
          goto LABEL_23;
        }
      }

      else
      {
        a5[4] = v52;
        v53 = *(v48 + 2);
        v45 = v52;
        if (v42 >= v53)
        {
          goto LABEL_23;
        }
      }

      a5[5] = v53;
      v42 = v53;
LABEL_23:
      if (!--v43)
      {
        return v13;
      }
    }
  }

  v15 = a5[1] - *a5;
  v17 = a5[2];
  v16 = a5[3];
  v18 = v16 - v17;
  if ((v16 - v17) <= v15)
  {
    v19 = a5[1] - *a5;
  }

  else
  {
    v19 = v16 - v17;
  }

  v21 = a5[4];
  v20 = a5[5];
  v22 = v20 - v21;
  if ((v20 - v21) > v19)
  {
    v19 = v20 - v21;
  }

  v23 = v19 * 0.99999;
  v24 = *a1;
  v25 = *a2[15];
  v26 = -1.0;
  v27 = *a1 + 4 * a3;
  if (v15 > v23)
  {
    v28 = *(v25 + 8);
    v29 = *(v28 + 48 * *(v24 + 4 * a3));
    if (v14 < 2)
    {
      v32 = *(v28 + 48 * *(v24 + 4 * a3));
    }

    else
    {
      v30 = ~a3 + a4;
      v31 = (v27 + 4);
      v32 = *(v28 + 48 * *(v24 + 4 * a3));
      v33 = v32;
      do
      {
        v34 = *v31++;
        v35 = *(v28 + 48 * v34);
        if (v35 < v29)
        {
          v29 = v35;
          v33 = v32;
        }

        if (v35 > v33)
        {
          v32 = v35;
          v33 = v35;
        }

        --v30;
      }

      while (v30);
    }

    v54 = v32 - v29;
    v26 = -1.0;
    if (v54 > -1.0)
    {
      v26 = v54;
    }
  }

  if (v18 <= v23)
  {
    goto LABEL_54;
  }

  v55 = *(v25 + 8);
  v56 = *(v55 + 48 * *(v24 + 4 * a3) + 4);
  if (v14 < 2)
  {
    v60 = *(v55 + 48 * *(v24 + 4 * a3) + 4);
  }

  else
  {
    v57 = v55 + 4;
    v58 = ~a3 + a4;
    v59 = (v27 + 4);
    v60 = v56;
    v61 = v56;
    do
    {
      v62 = *v59++;
      v63 = *(v57 + 48 * v62);
      if (v63 < v56)
      {
        v56 = v63;
        v61 = v60;
      }

      if (v63 > v61)
      {
        v60 = v63;
        v61 = v63;
      }

      --v58;
    }

    while (v58);
  }

  v64 = v60 - v56;
  if (v64 <= v26)
  {
LABEL_54:
    v67 = 0;
    v66 = 0;
    v65 = 1;
    if (v22 <= v23)
    {
      goto LABEL_53;
    }
  }

  else
  {
    v65 = 0;
    v66 = 1;
    v67 = 1;
    v26 = v64;
    if (v22 <= v23)
    {
LABEL_53:
      v68 = *(v25 + 8);
      v69 = *(v24 + 4 * a3);
      goto LABEL_65;
    }
  }

  v68 = *(v25 + 8);
  v69 = *(v24 + 4 * a3);
  v70 = *(v68 + 48 * v69 + 8);
  v71 = v70;
  v72 = v70;
  if (v14 >= 2)
  {
    v73 = ~a3 + a4;
    v74 = (v27 + 4);
    v71 = *(v68 + 48 * v69 + 8);
    v72 = v71;
    v75 = v71;
    do
    {
      v76 = *v74++;
      v77 = *(v68 + 8 + 48 * v76);
      if (v77 < v71)
      {
        v71 = v77;
        v75 = v72;
      }

      if (v77 > v75)
      {
        v72 = v77;
        v75 = v77;
      }

      --v73;
    }

    while (v73);
  }

  if ((v72 - v71) > v26)
  {
    v78 = v21 + v20;
    v67 = 2;
    v79 = 2;
    if (v14 < 2)
    {
      goto LABEL_67;
    }

    goto LABEL_69;
  }

LABEL_65:
  v78 = a5[2 * v66] + a5[2 * v66 + 1];
  v80 = (v68 + 48 * v69);
  if (v65)
  {
    v79 = 0;
    v70 = *v80;
    if (v14 < 2)
    {
LABEL_67:
      v81 = v70;
      goto LABEL_91;
    }
  }

  else
  {
    v70 = v80[1];
    v79 = 1;
    if (v14 < 2)
    {
      goto LABEL_67;
    }
  }

LABEL_69:
  if (v79 == 1)
  {
    v87 = ~a3 + a4;
    v88 = (v27 + 4);
    v81 = v70;
    v89 = v70;
    do
    {
      v90 = *v88++;
      v91 = *(v68 + 4 + 48 * v90);
      if (v91 < v70)
      {
        v70 = v91;
        v89 = v81;
      }

      if (v91 > v89)
      {
        v81 = v91;
        v89 = v91;
      }

      --v87;
    }

    while (v87);
  }

  else if (v79)
  {
    v92 = ~a3 + a4;
    v93 = (v27 + 4);
    v81 = v70;
    v94 = v70;
    do
    {
      v95 = *v93++;
      v96 = *(v68 + 8 + 48 * v95);
      if (v96 < v70)
      {
        v70 = v96;
        v94 = v81;
      }

      if (v96 > v94)
      {
        v81 = v96;
        v94 = v96;
      }

      --v92;
    }

    while (v92);
  }

  else
  {
    v82 = ~a3 + a4;
    v83 = (v27 + 4);
    v81 = v70;
    v84 = v70;
    do
    {
      v85 = *v83++;
      v86 = *(v68 + 48 * v85);
      if (v86 < v70)
      {
        v70 = v86;
        v84 = v81;
      }

      if (v86 > v84)
      {
        v81 = v86;
        v84 = v86;
      }

      --v82;
    }

    while (v82);
  }

LABEL_91:
  v97 = 0;
  v98 = v78 * 0.5;
  if (v98 <= v81)
  {
    v81 = v98;
  }

  if (v98 >= v70)
  {
    *&v99 = v81;
  }

  else
  {
    *&v99 = v70;
  }

  v100 = v14 - 1;
  v101 = v14 - 1;
LABEL_99:
  v103 = *(v25 + 8);
  if (v79 == 1)
  {
    v104 = v103 + 4;
    do
    {
      if (*(v104 + 48 * *(v27 + 4 * v97)) >= *&v99)
      {
        break;
      }

      ++v97;
    }

    while (v97 <= v101);
  }

  else if (v79)
  {
    v105 = v103 + 8;
    do
    {
      if (*(v105 + 48 * *(v27 + 4 * v97)) >= *&v99)
      {
        break;
      }

      ++v97;
    }

    while (v97 <= v101);
  }

  else
  {
    do
    {
      if (*(v103 + 48 * *(v27 + 4 * v97)) >= *&v99)
      {
        break;
      }

      ++v97;
    }

    while (v97 <= v101);
  }

  while (1)
  {
    v106 = v101 != 0;
    if (v97 > v101)
    {
      goto LABEL_124;
    }

    if (!v101)
    {
      v108 = 0;
LABEL_127:
      if (v97 > v108)
      {
        break;
      }

      goto LABEL_97;
    }

    while (1)
    {
      v107 = (v68 + 48 * *(v27 + 4 * v101));
      if (v79 != 1)
      {
        break;
      }

      if (v107[1] < *&v99)
      {
        goto LABEL_123;
      }

LABEL_120:
      v108 = v101 - 1;
      v106 = v101 != 1;
      if (v97 <= v101 - 1)
      {
        if (--v101)
        {
          continue;
        }
      }

      goto LABEL_127;
    }

    if (!v79)
    {
      if (*v107 < *&v99)
      {
        goto LABEL_123;
      }

      goto LABEL_120;
    }

    if (v107[2] >= *&v99)
    {
      goto LABEL_120;
    }

LABEL_123:
    v106 = 1;
LABEL_124:
    v108 = v101;
    if (v97 > v101)
    {
      break;
    }

LABEL_97:
    if (!v106)
    {
      break;
    }

    v102 = *(v27 + 4 * v97);
    *(v27 + 4 * v97) = *(v27 + 4 * v108);
    *(v27 + 4 * v108) = v102;
    ++v97;
    v101 = v108 - 1;
    if (v97 <= v108 - 1)
    {
      goto LABEL_99;
    }
  }

  v109 = a2[15];
  v110 = v97;
  if (v97 <= v100)
  {
    goto LABEL_132;
  }

  while (1)
  {
    v115 = v100 != 0;
    if (v110 > v100)
    {
      goto LABEL_157;
    }

    if (!v100)
    {
      v117 = 0;
LABEL_160:
      if (v110 > v117)
      {
        break;
      }

      goto LABEL_130;
    }

    while (1)
    {
      v116 = (*(*v109 + 8) + 48 * *(v27 + 4 * v100));
      if (v79 != 1)
      {
        break;
      }

      if (v116[1] <= *&v99)
      {
        goto LABEL_156;
      }

LABEL_153:
      v117 = v100 - 1;
      v115 = v100 != 1;
      if (v110 <= v100 - 1)
      {
        if (--v100)
        {
          continue;
        }
      }

      goto LABEL_160;
    }

    if (!v79)
    {
      if (*v116 <= *&v99)
      {
        goto LABEL_156;
      }

      goto LABEL_153;
    }

    if (v116[2] > *&v99)
    {
      goto LABEL_153;
    }

LABEL_156:
    v115 = 1;
LABEL_157:
    v117 = v100;
    if (v110 > v100)
    {
      break;
    }

LABEL_130:
    if (!v115)
    {
      break;
    }

    v111 = *(v27 + 4 * v110);
    *(v27 + 4 * v110) = *(v27 + 4 * v117);
    *(v27 + 4 * v117) = v111;
    ++v110;
    v100 = v117 - 1;
    if (v110 <= v117 - 1)
    {
LABEL_132:
      v112 = *(*v109 + 8);
      if (v79 == 1)
      {
        v113 = v112 + 4;
        do
        {
          if (*(v113 + 48 * *(v27 + 4 * v110)) > *&v99)
          {
            break;
          }

          ++v110;
        }

        while (v110 <= v100);
      }

      else if (v79)
      {
        v114 = v112 + 8;
        do
        {
          if (*(v114 + 48 * *(v27 + 4 * v110)) > *&v99)
          {
            break;
          }

          ++v110;
        }

        while (v110 <= v100);
      }

      else
      {
        do
        {
          if (*(v112 + 48 * *(v27 + 4 * v110)) > *&v99)
          {
            break;
          }

          ++v110;
        }

        while (v110 <= v100);
      }
    }
  }

  v118 = v14 >> 1;
  if (v110 >= v118)
  {
    v119 = v118;
  }

  else
  {
    v119 = v110;
  }

  if (v97 <= v118)
  {
    v120 = v119;
  }

  else
  {
    v120 = v97;
  }

  *v13 = v67;
  v128 = *a5;
  v129 = *(a5 + 4);
  v121 = 2 * v67;
  v128.i32[v121 + 1] = v99;
  v13[2] = sub_246104F1C(a1, a2, a3, v120 + a3, &v128);
  v126 = *a5;
  v127 = *(a5 + 4);
  v126.i32[v121] = v99;
  v13[3] = sub_246104F1C(a1, a2, v120 + a3, a4, &v126);
  v122 = v126.i32[v121];
  *(v13 + 1) = v128.i32[v121 + 1];
  *(v13 + 2) = v122;
  *a5 = vbslq_s8(vcgtq_f32(vtrn2q_s32(vrev64q_s32(v128), v126), vtrn2q_s32(vrev64q_s32(v126), v128)), v126, v128);
  *(a5 + 2) = vbsl_s8(vcgt_f32(__PAIR64__(v127.u32[1], v129.u32[0]), __PAIR64__(v129.u32[1], v127.u32[0])), v127, v129);
  return v13;
}

uint64_t *sub_246105848(uint64_t *a1)
{
  v2 = a1[1];
  a1[1] = 0;
  if (v2)
  {
    v3 = *(v2 + 96);
    if (v3)
    {
      do
      {
        v4 = *v3;
        free(v3);
        *(v2 + 96) = v4;
        v3 = v4;
      }

      while (v4);
    }

    *(v2 + 88) = 0;
    *(v2 + 96) = 0;
    *(v2 + 112) = 0;
    v5 = *v2;
    if (*v2)
    {
      *(v2 + 8) = v5;
      operator delete(v5);
    }

    MEMORY[0x24C1995D0](v2, 0x10F0C40B93F282ALL);
  }

  v6 = *a1;
  *a1 = 0;
  if (v6)
  {
    MEMORY[0x24C1995D0](v6, 0x60C4044C4A2DFLL);
  }

  return a1;
}

void *sub_2461058F0(_BYTE *a1, const void *a2, unint64_t a3)
{
  if (a3 > 0x16)
  {
    if (a3 < 0x7FFFFFFFFFFFFFF8)
    {
      operator new();
    }

    sub_2460D368C();
  }

  a1[23] = a3;
  v3 = a3 + 1;

  return memmove(a1, a2, v3);
}

os_log_t sub_24610598C()
{
  result = os_log_create("com.apple.CoreOCModules", "General");
  qword_27EE3F550 = result;
  return result;
}

float sub_2461059BC@<S0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float *a3@<X8>)
{
  v5 = *(a1 + 8);
  *v13 = vadd_f32(*a2, 925353388);
  *&v13[8] = *(a2 + 8) + 0.0;
  v6 = (**v5)(v5, v13);
  *v13 = *a2 + -0.00001;
  *&v13[4] = *(a2 + 4);
  v7 = (v6 - (**v5)(v5, v13)) * 0.5;
  *v13 = vadd_f32(*a2, 0x3727C5AC00000000);
  *&v13[8] = *(a2 + 8) + 0.0;
  v8 = (**v5)(v5, v13);
  v9 = *(a2 + 4) + -0.00001;
  *v13 = *a2;
  *&v13[4] = v9;
  *&v13[8] = *(a2 + 8);
  v10 = (v8 - (**v5)(v5, v13)) * 0.5;
  *v13 = vadd_f32(*a2, 0);
  *&v13[8] = *(a2 + 8) + 0.00001;
  v11 = (**v5)(v5, v13);
  *v13 = *a2;
  *&v13[8] = *(a2 + 8) + -0.00001;
  result = (v11 - (**v5)(v5, v13)) * 0.5;
  *a3 = v7;
  a3[1] = v10;
  a3[2] = result;
  return result;
}

uint64_t sub_246105C78(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858EBD48;
  a2[1] = v2;
  return result;
}

uint64_t *sub_246105D0C(void *a1, unsigned int a2)
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
  if (!v5 || (result = *v5) == 0)
  {
LABEL_22:
    operator new();
  }

  if (v3.u32[0] < 2uLL)
  {
    while (1)
    {
      v7 = result[1];
      if (v7 == a2)
      {
        if (*(result + 4) == a2)
        {
          return result;
        }
      }

      else if ((v7 & (v2 - 1)) != v4)
      {
        goto LABEL_22;
      }

      result = *result;
      if (!result)
      {
        goto LABEL_22;
      }
    }
  }

  while (1)
  {
    v8 = result[1];
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
    result = *result;
    if (!result)
    {
      goto LABEL_22;
    }
  }

  if (*(result + 4) != a2)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t sub_246106008(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = a2[1];
  v4 = a3[1];
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

  v6 = *a2;
  v7 = *(*a2 + 8 * v4);
  do
  {
    v8 = v7;
    v7 = *v7;
  }

  while (v7 != a3);
  if (v8 == a2 + 2)
  {
    goto LABEL_18;
  }

  v9 = v8[1];
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
LABEL_18:
    if (!*a3)
    {
      goto LABEL_19;
    }

    v10 = *(*a3 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v10 >= *&v3)
      {
        v10 %= *&v3;
      }
    }

    else
    {
      v10 &= *&v3 - 1;
    }

    if (v10 != v4)
    {
LABEL_19:
      *(v6 + 8 * v4) = 0;
    }
  }

  v11 = *a3;
  if (*a3)
  {
    v12 = *(v11 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v12 >= *&v3)
      {
        v12 %= *&v3;
      }
    }

    else
    {
      v12 &= *&v3 - 1;
    }

    if (v12 != v4)
    {
      *(v6 + 8 * v12) = v8;
      v11 = *a3;
    }
  }

  *v8 = v11;
  *a3 = 0;
  --a2[3];
  *result = a3;
  *(result + 8) = a2;
  *(result + 16) = 1;
  *(result + 17) = 0;
  *(result + 20) = 0;
  return result;
}

os_log_t sub_246106140()
{
  result = os_log_create("com.apple.CoreOCModules", "General");
  qword_27EE3F560 = result;
  return result;
}

BOOL sub_246106180(uint64_t a1, float32x2_t *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v235 = *MEMORY[0x277D85DE8];
  if ((*(a1 + 8) & 1) == 0)
  {
    if (qword_27EE3F578 != -1)
    {
      dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
    }

    v37 = qword_27EE3F570;
    result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_24610D894(v229, "virtual BOOL oc::voxel_hashing::VoxelIntegratorCPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
    if (v230 >= 0)
    {
      v38 = v229;
    }

    else
    {
      v38 = v229[0];
    }

    *buf = 136315394;
    v232 = v38;
    v233 = 1026;
    v234 = 137;
    v39 = "%s:%{public}d VoxelIntegratorCPU not initialized.";
LABEL_229:
    _os_log_error_impl(&dword_2460CF000, v37, OS_LOG_TYPE_ERROR, v39, buf, 0x12u);
    if (v230 < 0)
    {
      operator delete(v229[0]);
    }

    return 0;
  }

  result = sub_246107174(a2, a3, a4, a5, *(a1 + 260));
  if (result)
  {
    if (a3)
    {
      v12 = 0;
      v13 = 0;
      v14 = a1;
      v15 = *(a1 + 112);
      v16 = *(a1 + 128);
      v17 = *(a1 + 144);
      v18 = *(a1 + 160);
      v19 = *a2[2].f32;
      v20 = *a2[6].f32;
      v21 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*a2->f32)), v16, *a2, 1), v17, *a2->f32, 2), v18, *a2->f32, 3);
      v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v19.f32[0]), v16, *v19.f32, 1), v17, v19, 2), v18, v19, 3);
      v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*a2[4].f32)), v16, a2[4], 1), v17, *a2[4].f32, 2), v18, *a2[4].f32, 3);
      v24 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, v20.f32[0]), v16, *v20.f32, 1), v17, v20, 2);
      v25 = 1.0;
      v26 = vmulq_n_f32(vaddq_f32(v18, v24), 1.0 / *(a1 + 176));
      v27 = v26;
      v27.i32[3] = 1.0;
      v28 = vmlaq_laneq_f32(v24, v18, v20, 3);
      v29 = a3;
      v30 = v26.f32[2];
      __asm { FMOV            V25.4S, #1.0 }

      v34 = &loc_24613F000;
      v35 = a5;
      v36 = a4;
      do
      {
        v40 = v36 + 48 * v12;
        v41 = -COERCE_FLOAT(*(v40 + 8));
        if (*(v14 + 72) <= v41 && *(v14 + 68) >= v41)
        {
          v42 = (v35 + 20 * v12);
          v43 = fabsf(*v42);
          if (*v42 >= 0.0 && v43 > 0.000001)
          {
            v45 = v42[1];
            v46 = *(v14 + 256);
            _NF = v45 < v46;
            v47 = vabds_f32(v45, v46);
            v48 = (fabsf(v46) * 0.00001) + 0.000001;
            if (!_NF && v47 > v48)
            {
              v50 = vmulq_n_f32(vaddq_f32(v28, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, COERCE_FLOAT(*v40)), v22, *v40, 1), v23, *v40, 2)), v25 / *(v14 + 176));
              v50.f32[3] = v25;
              v51 = vsubq_f32(v50, v27);
              v52 = vmulq_f32(v51, v51);
              v53 = vadd_f32(*v52.i8, *&vextq_s8(v52, v52, 8uLL));
              v53.f32[0] = sqrtf(vaddv_f32(v53));
              if (v53.f32[0] >= 0.001)
              {
                v54 = vdivq_f32(v51, vdupq_lane_s32(v53, 0));
                v56 = *(v14 + 80);
                v55 = *(v14 + 96);
                v57 = vdivq_f32(_Q25, v54);
                v58 = vcgez_f32(*v57.f32);
                v59.i32[0] = v55.i32[0];
                v59.i32[1] = HIDWORD(*(v14 + 80));
                v60.i32[0] = v56.i32[0];
                v60.i32[1] = HIDWORD(*(v14 + 96));
                v61 = vbsl_s8(v58, v60, v59);
                v62 = vbsl_s8(v58, v59, v60);
                v63 = vmul_f32(*v57.f32, vsub_f32(v61, *v26.f32));
                v64 = vmul_f32(*v57.f32, vsub_f32(v62, *v26.f32));
                if (v64.f32[0] <= v64.f32[1] && *&v63.i32[1] <= *v63.i32)
                {
                  v66 = vcgt_f32(vrev64_s32(v63), v64);
                  if (v66.i8[0])
                  {
                    v64.f32[0] = *&v63.i32[1];
                  }

                  if (v66.i8[4])
                  {
                    *v63.i32 = v64.f32[1];
                  }

                  v67 = v55.f32[2];
                  if (v57.f32[2] >= 0.0)
                  {
                    v68 = v55.f32[2];
                  }

                  else
                  {
                    v68 = *&v56.i32[2];
                  }

                  if (v57.f32[2] >= 0.0)
                  {
                    v67 = *&v56.i32[2];
                  }

                  v69 = vmuls_lane_f32(v68 - v30, v57, 2);
                  v70 = vmuls_lane_f32(v67 - v30, v57, 2);
                  if (v64.f32[0] <= v70 && v69 <= *v63.i32)
                  {
                    v55.f32[0] = v53.f32[0] + 1.5;
                    if (v64.f32[0] >= v69)
                    {
                      v69 = v64.f32[0];
                    }

                    v72 = v70 >= *v63.i32 ? *v63.i32 : v70;
                    if (v69 > 0.0 || v72 < v55.f32[0])
                    {
                      v74 = fmaxf(v69, 0.0);
                      v75 = vmlaq_n_f32(v26, v54, v74);
                      if (v72 >= v55.f32[0])
                      {
                        v72 = v55.f32[0];
                      }

                      v55.f32[0] = v72 - v74;
                    }

                    else
                    {
                      v75 = v26;
                    }

                    if (v55.f32[0] > 0.0)
                    {
                      v76 = *(v14 + 184);
                      v77 = *(v14 + 192) - v76;
                      v78 = v77 >> 3;
                      if (!(v77 >> 3))
                      {
                        goto LABEL_101;
                      }

                      v79 = vcvtms_s32_f32(v75.f32[0]);
                      v81 = vrndm_f32(*&vextq_s8(v75, v75, 4uLL));
                      v80 = vcvt_s32_f32(v81);
                      v19.f32[0] = v79;
                      v81.i16[0] = v79;
                      v81.i16[1] = v80.i16[0];
                      v81.i16[2] = v80.i16[2];
                      *v76 = v81;
                      if (v54.f32[0] >= 0.0)
                      {
                        v82 = 1;
                      }

                      else
                      {
                        v82 = -1;
                      }

                      v83 = v54.f32[1];
                      if (v54.f32[1] >= 0.0)
                      {
                        v84 = 1;
                      }

                      else
                      {
                        v84 = -1;
                      }

                      v85 = v54.f32[2];
                      if (v54.f32[2] >= 0.0)
                      {
                        v86 = 1;
                      }

                      else
                      {
                        v86 = -1;
                      }

                      v19.f32[1] = v80.i32[0];
                      v19.f32[2] = v80.i32[1];
                      v19 = vsubq_f32(v75, v19);
                      if (fabsf(v54.f32[0]) >= 1.1755e-38)
                      {
                        if (v54.f32[0] >= 0.0)
                        {
                          v57.f32[0] = (v25 - v19.f32[0]) / v54.f32[0];
                        }

                        else
                        {
                          v57.f32[0] = v19.f32[0] / -v54.f32[0];
                        }
                      }

                      else
                      {
                        v57.i32[0] = 2139095040;
                      }

                      if (fabsf(v54.f32[1]) >= 1.1755e-38)
                      {
                        v88 = v19.f32[1];
                        if (v54.f32[1] >= 0.0)
                        {
                          v88 = v25 - v19.f32[1];
                        }

                        else
                        {
                          v83 = -v54.f32[1];
                        }

                        v87 = v88 / v83;
                      }

                      else
                      {
                        v87 = INFINITY;
                      }

                      if (fabsf(v54.f32[2]) >= 1.1755e-38)
                      {
                        v90 = v19.f32[2];
                        if (v54.f32[2] >= 0.0)
                        {
                          v90 = v25 - v19.f32[2];
                        }

                        else
                        {
                          v85 = -v54.f32[2];
                        }

                        v89 = v90 / v85;
                      }

                      else
                      {
                        v89 = INFINITY;
                      }

                      if (v78 == 1)
                      {
                        LODWORD(v78) = 1;
                        goto LABEL_101;
                      }

                      v56 = vdivq_f32(_Q25, vabsq_f32(v54));
                      v57.f32[1] = v87;
                      v57.f32[2] = v89;
                      v55 = vdupq_lane_s32(*v55.f32, 0);
                      v91 = (v77 >> 3);
                      v92 = 1;
                      while (1)
                      {
                        v95 = vcgtq_f32(v55, v57);
                        v95.i32[3] = v95.i32[2];
                        v95.i32[0] = vmaxvq_u32(v95);
                        v9 = v95.u32[0];
                        if ((v95.i32[0] & 0x80000000) == 0)
                        {
                          break;
                        }

                        if (v57.f32[0] >= v57.f32[1])
                        {
                          if (v57.f32[1] < v57.f32[2])
                          {
                            v96.i16[0] = v81.i16[0];
                            v96.i16[1] = v81.i16[1] + v84;
                            v96.i32[1] = v81.i32[1];
                            v94.i32[0] = v57.i32[0];
                            v94.f32[1] = *&v56.i32[1] + v57.f32[1];
                            v94.i32[2] = v57.i32[2];
                            v81 = v96;
                            goto LABEL_93;
                          }
                        }

                        else if (v57.f32[0] < v57.f32[2])
                        {
                          v93.i16[0] = v81.i16[0] + v82;
                          v93.i16[1] = v81.i16[1];
                          v93.i32[1] = v81.i32[1];
                          v94.f32[0] = *v56.i32 + v57.f32[0];
                          v94.i32[1] = v57.i32[1];
                          v94.i32[2] = v57.i32[2];
                          goto LABEL_92;
                        }

                        v93.i32[0] = v81.i32[0];
                        v93.i16[2] = v81.i16[2] + v86;
                        v93.i16[3] = v81.i16[3];
                        v94.i64[0] = v57.i64[0];
                        v94.f32[2] = *&v56.i32[2] + v57.f32[2];
LABEL_92:
                        v81 = v93;
LABEL_93:
                        v94.i32[3] = v57.i32[3];
                        v76[v92] = v81;
                        v9 = v92 + 1;
                        v92 = v9;
                        v57 = v94;
                        if (v91 == v9)
                        {
                          goto LABEL_101;
                        }
                      }

                      LODWORD(v78) = v92;
LABEL_101:
                      *(v14 + 180) = v78;
                      if (v78)
                      {
                        v97 = 0;
                        v98 = v75;
                        v98.f32[3] = v25;
                        v99 = vsubq_f32(v50, v98);
                        v100 = vmulq_f32(v99, v99);
                        v101 = sqrtf(vaddv_f32(vadd_f32(*v100.i8, *&vextq_s8(v100, v100, 8uLL))));
                        v189 = *(v40 + 32);
                        v188 = vext_s8(*(v40 + 32), *&vextq_s8(v189, v189, 8uLL), 4uLL);
                        v102 = 1;
                        while (1)
                        {
                          v103 = *(v14 + 184);
                          v104 = *(v103 + 8 * v97);
                          v105 = vmovl_s16(v104);
                          *v105.f32 = vadd_f32(vcvt_f32_s32(*v105.f32), 0x3F0000003F000000);
                          v105.f32[2] = v104.i16[2] + 0.5;
                          v106 = vmulq_f32(v54, vsubq_f32(v105, v75));
                          v107 = v101 - (*&v106.i32[2] + vaddv_f32(*v106.i8));
                          if (*(v14 + 60) < v107)
                          {
                            v108 = *(v14 + 16);
LABEL_108:
                            if (*v108 == 1 && *(v108 + 4))
                            {
                              v109 = *(v103 + 8 * v97);
                              v110 = vshr_n_s16(v109, 3uLL);
                              v57.i32[0] = v110.u16[1];
                              v57.i32[1] = v110.u16[2];
                              v55.i32[0] = v110.i16[0];
                              *v57.f32 = vshr_n_s32(vshl_n_s32(*v57.f32, 0x10uLL), 0x10uLL);
                              v111 = vextq_s8(vextq_s8(v55, v55, 4uLL), v57, 0xCuLL);
                              v57 = v34[189];
                              v55 = vmulq_s32(v111, v57);
                              v113 = *(v108 + 8);
                              v112 = *(v108 + 12);
                              v114 = ((v55.i32[0] ^ v55.i32[1]) ^ v55.i32[2]) % v113;
                              v115 = v112 * v114;
                              v116 = (v115 + v112);
                              v117 = *(v108 + 16);
                              _CF = v115 >= v116 || v115 >= v117;
                              if (!_CF && v116 <= v117)
                              {
                                v120 = v102;
                                v121 = *(v108 + 48);
                                LODWORD(v122) = *(v108 + 16);
                                do
                                {
                                  v123 = (v121 + 16 * v115);
                                  v9 = v123[1].u32[1];
                                  if ((v9 & 0x80000000) == 0)
                                  {
                                    *v55.f32 = *v123;
                                    *v56.i8 = vceq_s16(*v123, v110);
                                    v56.i16[3] = v56.i16[2];
                                    v56.i16[0] = vminv_u16(*v56.i8);
                                    v9 = v56.u32[0];
                                    if (v56.i16[0] < 0)
                                    {
                                      if (v117 > v115)
                                      {
                                        v9 = *(v121 + 16 * v115 + 12);
                                        if ((v9 & 0x80000000) == 0)
                                        {
                                          LODWORD(v229[0]) = *(v121 + 16 * v115 + 12);
LABEL_155:
                                          v143 = *(v108 + 64) + 4104 * v9 + ((v109.i8[0] & 7) << 9) + ((v109.i8[2] & 7) << 6) + 8 * (v109.i8[4] & 7);
                                          v146 = *(v143 + 4);
                                          v144 = (v143 + 4);
                                          v145 = v146;
                                          if (v146)
                                          {
                                            *v144 = (v145 / *(v14 + 208));
                                            v218 = v22;
                                            v223 = v21;
                                            v210 = v28;
                                            v214 = v23;
                                            v202 = v27;
                                            v206 = v26;
                                            v194 = v54;
                                            v198 = _Q25;
                                            v147 = v34;
                                            v190 = v75;
                                            sub_246107DB0((a1 + 216), v9);
                                            v102 = v120;
                                            v75 = v190;
                                            v54 = v194;
                                            v34 = v147;
                                            _Q25 = v198;
                                            v27 = v202;
                                            v26 = v206;
                                            v28 = v210;
                                            v25 = 1.0;
                                            v23 = v214;
                                            v22 = v218;
                                            v21 = v223;
                                            v36 = a4;
                                            v35 = a5;
                                            v14 = a1;
                                          }
                                        }
                                      }

                                      goto LABEL_104;
                                    }

                                    v56.i32[0] = v55.i16[0];
                                    v124.i32[0] = v55.u16[1];
                                    v124.i32[1] = v55.u16[2];
                                    *v55.f32 = vshr_n_s32(vshl_n_s32(v124, 0x10uLL), 0x10uLL);
                                    v56 = vextq_s8(v56, v56, 4uLL);
                                    v55 = vmulq_s32(vextq_s8(v56, v55, 0xCuLL), v57);
                                    v9 = ((v55.i32[0] ^ v55.i32[1]) ^ v55.i32[2]) % v113;
                                    if (v9 == v114 && v122 == v117)
                                    {
                                      if (v123[1].i32[0] >= v117)
                                      {
                                        LODWORD(v122) = *(v108 + 16);
                                      }

                                      else
                                      {
                                        LODWORD(v122) = v115;
                                      }
                                    }
                                  }

                                  ++v115;
                                }

                                while (v115 != v116);
                                if (v117 > v122)
                                {
                                  while (1)
                                  {
                                    v122 = *(v121 + 16 * v122 + 8);
                                    if (v122 >= v117)
                                    {
                                      break;
                                    }

                                    v142 = vceq_s16(*(v121 + 16 * v122), v110);
                                    v142.i16[3] = v142.i16[2];
                                    if ((vminv_u16(v142) & 0x8000) != 0)
                                    {
                                      v9 = *(v121 + 16 * v122 + 12);
                                      LODWORD(v229[0]) = v9;
                                      if ((v9 & 0x80000000) == 0)
                                      {
                                        goto LABEL_155;
                                      }

                                      goto LABEL_104;
                                    }
                                  }
                                }
                              }
                            }

                            goto LABEL_104;
                          }

                          v108 = *(v14 + 16);
                          if (*(v14 + 64) > v107)
                          {
                            goto LABEL_108;
                          }

                          if (*v108 != 1)
                          {
                            goto LABEL_103;
                          }

                          v126 = *(v108 + 48);
                          v127 = *(v108 + 64);
                          if (!v126 || v127 == 0)
                          {
                            goto LABEL_103;
                          }

                          v129 = *(v108 + 16);
                          if (*(v108 + 4) >= v129)
                          {
                            goto LABEL_103;
                          }

                          v222 = *(v108 + 4);
                          v187 = v102;
                          v105.i64[0] = *(v103 + 8 * v97);
                          *v56.i8 = vshr_n_s16(*v105.f32, 3uLL);
                          v106.i32[0] = v56.i16[0];
                          v57.i32[0] = v56.u16[1];
                          v57.i32[1] = v56.u16[2];
                          *v57.f32 = vshr_n_s32(vshl_n_s32(*v57.f32, 0x10uLL), 0x10uLL);
                          v130 = vextq_s8(vextq_s8(v106, v106, 4uLL), v57, 0xCuLL);
                          v131 = v34[189];
                          v57 = vmulq_s32(v130, v131);
                          v132 = *v42;
                          v133 = *(v108 + 8);
                          v134 = *(v108 + 12);
                          v135 = ((v57.i32[0] ^ v57.i32[1]) ^ v57.i32[2]) % v133;
                          v136 = v134 * v135;
                          v137 = v136 + v134;
                          v139 = v136 >= v137 || v136 >= v129 || v137 > v129;
                          v140 = *(v108 + 16);
                          v141 = v140;
                          v9 = v140;
                          if (v139)
                          {
LABEL_143:
                            if (v9 >= v129 && v141 >= v129 && v140 >= v129)
                            {
                              v102 = 0;
                              v34 = &loc_24613F000;
                              goto LABEL_104;
                            }

                            v34 = &loc_24613F000;
                            if (v9 < v129 && (v149 = v126 + 16 * v9, v9 = *(v149 + 12), (v9 & 0x80000000) != 0))
                            {
                              *v149 = v56.i64[0];
                              *(v149 + 12) = v222;
                              v183 = (v127 + 4104 * v222);
                              v219 = v22;
                              v224 = v21;
                              v211 = v28;
                              v215 = v23;
                              v203 = v27;
                              v207 = v26;
                              v195 = v54;
                              v199 = _Q25;
                              v191 = v75;
                              v184 = v56;
                              bzero(v183, 0x1000uLL);
                              v56 = v184;
                              v75 = v191;
                              v54 = v195;
                              v34 = &loc_24613F000;
                              _Q25 = v199;
                              v27 = v203;
                              v26 = v207;
                              v28 = v211;
                              v25 = 1.0;
                              v23 = v215;
                              v22 = v219;
                              v21 = v224;
                              v36 = a4;
                              v35 = a5;
                              v14 = a1;
                              v183[512] = v184.i64[0];
                              v152 = *(v108 + 4);
                              *(v108 + 4) = v152 + 1;
                              if ((v152 & 0x80000000) != 0)
                              {
                                goto LABEL_103;
                              }
                            }

                            else
                            {
                              if (v140 < v129)
                              {
                                v141 = v140;
                                while (1)
                                {
                                  v150 = *(v126 + 16 * v141 + 8);
                                  if (v150 >= v129)
                                  {
                                    break;
                                  }

                                  v151 = vceq_s16(*(v126 + 16 * v150), *v56.i8);
                                  v151.i16[3] = v151.i16[2];
                                  v141 = *(v126 + 16 * v141 + 8);
                                  if ((vminv_u16(v151) & 0x8000) != 0)
                                  {
                                    v152 = *(v126 + 16 * v150 + 12);
                                    if ((v152 & 0x80000000) == 0)
                                    {
                                      goto LABEL_212;
                                    }

                                    goto LABEL_103;
                                  }
                                }
                              }

                              if (v141 >= v129)
                              {
                                goto LABEL_103;
                              }

                              v153 = v126 + 16 * v141;
                              if (*(v153 + 8) < v129 || (*(v153 + 12) & 0x80000000) != 0)
                              {
                                goto LABEL_103;
                              }

                              v182 = v141;
                              v154 = (v134 + v141 - 1) / v134 % v133;
                              v155 = v126 + 12;
                              v156 = v154;
                              v186 = v13;
                              while (1)
                              {
                                v158 = v156 * v134;
                                v159 = v158 + v134;
                                v160 = v158 >= v159 || v158 >= v129;
                                if (!v160 && v159 < v129)
                                {
                                  v162 = 0;
                                  v163 = 0;
                                  v157 = *(v108 + 16);
                                  v164 = (v155 + 16 * v158);
                                  do
                                  {
                                    if ((*v164 & 0x80000000) != 0)
                                    {
                                      if (v157 == v129)
                                      {
                                        v157 = v158;
                                      }

                                      if (v163)
                                      {
                                        goto LABEL_184;
                                      }

                                      v163 = 1;
                                    }

                                    else if (v162)
                                    {
                                      v162 = 1;
                                    }

                                    else if (*(v164 - 1) >= v129)
                                    {
                                      v162 = 0;
                                    }

                                    else
                                    {
                                      v105.i64[0] = *(v164 - 3);
                                      v57.i32[0] = v105.i16[0];
                                      v55.i32[0] = v105.u16[1];
                                      v55.i32[1] = v105.u16[2];
                                      *v105.f32 = vshr_n_s32(vshl_n_s32(*v55.f32, 0x10uLL), 0x10uLL);
                                      v57 = vextq_s8(v57, v57, 4uLL);
                                      v105 = vmulq_s32(vextq_s8(v57, v105, 0xCuLL), v131);
                                      v126 = *(v108 + 48);
                                      v162 = ((v105.i32[0] ^ v105.i32[1]) ^ v105.i32[2]) % v133 == v156;
                                    }

                                    ++v158;
                                    v164 += 4;
                                  }

                                  while (v159 != v158);
                                  if (!v162 || v163 == 0)
                                  {
                                    v157 = *(v108 + 16);
                                  }

LABEL_184:
                                  v34 = &loc_24613F000;
                                  if (v157 < v129)
                                  {
                                    break;
                                  }
                                }

                                v102 = 0;
                                v9 = v156 + 1;
                                if (v9 == v133)
                                {
                                  v156 = 0;
                                }

                                else
                                {
                                  ++v156;
                                }

                                v13 = v186;
                                if (v156 == v154)
                                {
                                  goto LABEL_104;
                                }
                              }

                              v178 = v126 + 16 * v157;
                              *v178 = v56.i64[0];
                              *(v178 + 12) = v222;
                              v180 = (v127 + 4104 * v222);
                              v181 = v126;
                              v221 = v22;
                              v226 = v21;
                              v213 = v28;
                              v217 = v23;
                              v205 = v27;
                              v209 = v26;
                              v197 = v54;
                              v201 = _Q25;
                              v193 = v75;
                              v185 = v56;
                              bzero(v180, 0x1000uLL);
                              v56 = v185;
                              v75 = v193;
                              v54 = v197;
                              v34 = &loc_24613F000;
                              _Q25 = v201;
                              v27 = v205;
                              v26 = v209;
                              v28 = v213;
                              v25 = 1.0;
                              v23 = v217;
                              v22 = v221;
                              v21 = v226;
                              v36 = a4;
                              v35 = a5;
                              v14 = a1;
                              v180[512] = v185.i64[0];
                              *(v181 + 16 * v182 + 8) = v157;
                              v152 = *(v108 + 4);
                              *(v108 + 4) = v152 + 1;
                              v13 = v186;
                              if ((v152 & 0x80000000) != 0)
                              {
LABEL_103:
                                v102 = 0;
                                goto LABEL_104;
                              }
                            }

LABEL_212:
                            v105.i64[0] = *(v103 + 8 * v97);
                            goto LABEL_213;
                          }

                          v9 = *(v108 + 16);
                          v141 = *(v108 + 16);
                          v140 = v141;
                          while (1)
                          {
                            v148 = (v126 + 16 * v136);
                            if ((v148[1].i32[1] & 0x80000000) == 0)
                            {
                              break;
                            }

                            if (v9 == v129)
                            {
                              v9 = v136;
                            }

                            else
                            {
                              v9 = v9;
                            }

LABEL_160:
                            if (++v136 == v137)
                            {
                              goto LABEL_143;
                            }
                          }

                          *v57.f32 = *v148;
                          *v55.f32 = vceq_s16(*v148, *v56.i8);
                          v55.i16[3] = v55.i16[2];
                          if ((vminv_u16(*v55.f32) & 0x8000) == 0)
                          {
                            break;
                          }

                          v140 = *(v108 + 16);
                          v141 = v140;
                          v9 = v140;
                          if (v129 <= v136)
                          {
                            goto LABEL_143;
                          }

                          v152 = *(v126 + 16 * v136 + 12);
                          v34 = &loc_24613F000;
                          if ((v152 & 0x80000000) != 0)
                          {
                            goto LABEL_103;
                          }

LABEL_213:
                          v102 = 0;
                          v165 = vsub_s16(*v105.f32, vshl_n_s16(*v56.i8, 3uLL));
                          v9 = v152;
                          v229[0] = v152;
                          v229[1] = v165;
                          if (v132 >= 0.0)
                          {
                            v57.i32[0] = 897988541;
                            if (fabsf(v132) > 0.000001)
                            {
                              v166 = *(*(v14 + 16) + 64) + 4104 * v152 + (v165 << 9) + (SWORD1(v165) << 6) + 8 * SWORD2(v165);
                              v105.f32[0] = fminf(v132, 255.0);
                              v57.i8[0] = *(v166 + 4);
                              v57.f32[0] = v57.u32[0];
                              v167 = fmaxf(fminf(roundf(*(v14 + 212) * v57.f32[0]), 255.0), v25);
                              *v56.i32 = v167 + v57.f32[0];
                              v168 = *v166;
                              v169 = ((v105.f32[0] * v107) * (v25 - (v57.f32[0] / 255.0))) + (*v166 * v57.f32[0]);
                              LOBYTE(v168) = *(v166 + 5);
                              v170 = ((v167 * *v189.i32) * 255.0) + (v57.f32[0] * LODWORD(v168));
                              v171.i32[0] = *(v166 + 6);
                              v171.i32[1] = *(v166 + 7);
                              v172 = vdupq_n_s32(0x437F0000u);
                              v173 = vmla_n_f32(vmul_f32(vmul_n_f32(v188, v167), *v172.f32), vcvt_f32_u32(v171), v57.f32[0]);
                              v174 = vaddq_f32(v105, v57).u32[0];
                              v105.f32[1] = v170;
                              *&v105.u32[2] = v173;
                              v175 = vdivq_f32(v105, vdupq_lane_s32(*v56.i8, 0));
                              v175.i32[0] = v174;
                              v176 = vminnmq_f32(v175, v172);
                              v177 = v169 / v176.f32[0];
                              *v176.f32 = vmovn_s32(vcvtq_s32_f32(v176));
                              *v166 = v177;
                              *(v166 + 4) = vuzp1_s8(*v176.f32, *v176.f32).u32[0];
                              v220 = v22;
                              v225 = v21;
                              v212 = v28;
                              v216 = v23;
                              v204 = v27;
                              v208 = v26;
                              v196 = v54;
                              v200 = _Q25;
                              v192 = v75;
                              sub_246107DB0((a1 + 216), v152);
                              v75 = v192;
                              v54 = v196;
                              v34 = &loc_24613F000;
                              _Q25 = v200;
                              v27 = v204;
                              v26 = v208;
                              v28 = v212;
                              v25 = 1.0;
                              v23 = v216;
                              v22 = v220;
                              v21 = v225;
                              v36 = a4;
                              v35 = a5;
                              v14 = a1;
                              v102 = v187;
                            }
                          }

LABEL_104:
                          if (++v97 >= *(v14 + 180))
                          {
                            v13 |= v102;
                            goto LABEL_14;
                          }
                        }

                        v55.i32[0] = v57.i16[0];
                        v57.i32[0] = v57.u16[1];
                        v57.i32[1] = v57.u16[2];
                        *v57.f32 = vshr_n_s32(vshl_n_s32(*v57.f32, 0x10uLL), 0x10uLL);
                        v55 = vextq_s8(v55, v55, 4uLL);
                        v57 = vmulq_s32(vextq_s8(v55, v57, 0xCuLL), v131);
                        if (((v57.i32[0] ^ v57.i32[1]) ^ v57.i32[2]) % v133 == v135)
                        {
                          if (v140 == v129)
                          {
                            if (v148[1].i32[0] >= v129)
                            {
                              v140 = *(v108 + 16);
                            }

                            else
                            {
                              v140 = v136;
                            }
                          }

                          v141 = v136;
                        }

                        v126 = *(v108 + 48);
                        goto LABEL_160;
                      }

                      v13 = 1;
                    }
                  }
                }
              }
            }
          }
        }

LABEL_14:
        ++v12;
      }

      while (v12 != v29);
      sub_2461076CC(v14, v9, 925353388, 981668463);
      if (v13)
      {
        return 1;
      }
    }

    else
    {
      sub_2461076CC(a1, v9, v10, v11);
    }

    if (qword_27EE3F578 != -1)
    {
      dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
    }

    v37 = qword_27EE3F570;
    result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
    if (result)
    {
      sub_24610D894(v229, "virtual BOOL oc::voxel_hashing::VoxelIntegratorCPU::integratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *)");
      if (v230 >= 0)
      {
        v179 = v229;
      }

      else
      {
        v179 = v229[0];
      }

      *buf = 136315394;
      v232 = v179;
      v233 = 1026;
      v234 = 210;
      v39 = "%s:%{public}d Couldn't find any existing voxels or create new voxels intersecting the pointcloud";
      goto LABEL_229;
    }
  }

  return result;
}

BOOL sub_246107174(uint64_t a1, unsigned int a2, uint64_t a3, uint64_t a4, unsigned int a5)
{
  v40 = *MEMORY[0x277D85DE8];
  v5 = *a1;
  v6 = *(a1 + 16);
  v7 = *(a1 + 32);
  v8 = *(MEMORY[0x277D860B0] + 16);
  v9 = *(MEMORY[0x277D860B0] + 32);
  v10 = vdupq_n_s32(0x38D1B717u);
  v11 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v6, *v6.f32, 1), v7, *v7.f32, 1), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v6, v6.f32[0]), v7, v7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v6, v6, 2), v7, v7, 2), v9)));
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0 || (v12 = vzip1q_s32(vzip2q_s32(v5, v7), vdupq_laneq_s32(v6, 2)), v13 = vtrn2q_s32(v5, v6), v13.i32[2] = HIDWORD(*(a1 + 32)), v14 = vzip1q_s32(vzip1q_s32(v5, v7), v6), v15 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v6.f32[0]), v13, *v6.f32, 1), v12, v6, 2), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v5.f32[0]), v13, *v5.f32, 1), v12, v5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v7.f32[0]), v13, *v7.f32, 1), v12, v7, 2), v9))), v15.i32[3] = v15.i32[2], (vminvq_u32(v15) & 0x80000000) == 0) || (v16 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL))), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL))), fabsf((v16.f32[2] + vaddv_f32(*v16.f32)) + -1.0) > 0.000011) || (v17 = vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL))), v18 = vdup_n_s32(0x38D1B717u), v19 = vand_s8(vcge_f32(v18, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v18, v17)), (vpmin_u32(v19, v19).u32[0] & 0x80000000) == 0))
  {
    if (qword_27EE3F578 != -1)
    {
      dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
    }

    v20 = qword_27EE3F570;
    result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::areValidInputsToIntegratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *, const uint32_t)");
    if (v39 >= 0)
    {
      v22 = __p;
    }

    else
    {
      v22 = *__p;
    }

    *v31 = 136315394;
    *&v31[4] = v22;
    v32 = 1026;
    v33 = 333;
    v23 = "%s:%{public}d Invalid input to world transform.";
    goto LABEL_13;
  }

  if (!a2)
  {
    if (qword_27EE3F578 != -1)
    {
      dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
    }

    v20 = qword_27EE3F570;
    result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::areValidInputsToIntegratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *, const uint32_t)");
    if (v39 >= 0)
    {
      v28 = __p;
    }

    else
    {
      v28 = *__p;
    }

    *v31 = 136315394;
    *&v31[4] = v28;
    v32 = 1026;
    v33 = 339;
    v23 = "%s:%{public}d Input pointcloud is empty.";
    goto LABEL_13;
  }

  if (a2 <= a5)
  {
    if (a3)
    {
      if (a4)
      {
        return 1;
      }

      if (qword_27EE3F578 != -1)
      {
        dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
      }

      v20 = qword_27EE3F570;
      result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_24610D894(__p, "BOOL oc::voxel_hashing::areValidInputsToIntegratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *, const uint32_t)");
      if (v39 >= 0)
      {
        v30 = __p;
      }

      else
      {
        v30 = *__p;
      }

      *v31 = 136315394;
      *&v31[4] = v30;
      v32 = 1026;
      v33 = 357;
      v23 = "%s:%{public}d Point supplements are invalid.";
    }

    else
    {
      if (qword_27EE3F578 != -1)
      {
        dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
      }

      v20 = qword_27EE3F570;
      result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
      if (!result)
      {
        return result;
      }

      sub_24610D894(__p, "BOOL oc::voxel_hashing::areValidInputsToIntegratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *, const uint32_t)");
      if (v39 >= 0)
      {
        v29 = __p;
      }

      else
      {
        v29 = *__p;
      }

      *v31 = 136315394;
      *&v31[4] = v29;
      v32 = 1026;
      v33 = 351;
      v23 = "%s:%{public}d Pointcloud is invalid.";
    }

LABEL_13:
    _os_log_error_impl(&dword_2460CF000, v20, OS_LOG_TYPE_ERROR, v23, v31, 0x12u);
    if ((SHIBYTE(v39) & 0x80000000) == 0)
    {
      return 0;
    }

    v24 = *__p;
LABEL_15:
    operator delete(v24);
    return 0;
  }

  if (qword_27EE3F578 != -1)
  {
    dispatch_once(&qword_27EE3F578, &unk_2858EBDE8);
  }

  v26 = qword_27EE3F570;
  result = os_log_type_enabled(qword_27EE3F570, OS_LOG_TYPE_ERROR);
  if (result)
  {
    sub_24610D894(v31, "BOOL oc::voxel_hashing::areValidInputsToIntegratePointCloud(const simd_float4x4 &, const uint32_t, const common::Point *, const common::PointSupplements *, const uint32_t)");
    if (v34 >= 0)
    {
      v27 = v31;
    }

    else
    {
      v27 = *v31;
    }

    *__p = 136315650;
    *&__p[4] = v27;
    v36 = 1026;
    v37 = 345;
    v38 = 1026;
    v39 = a5;
    _os_log_error_impl(&dword_2460CF000, v26, OS_LOG_TYPE_ERROR, "%s:%{public}d Input pointcloud is greater than the max supported size %{public}u.", __p, 0x18u);
    if ((v34 & 0x80000000) == 0)
    {
      return 0;
    }

    v24 = *v31;
    goto LABEL_15;
  }

  return result;
}

void sub_2461076CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 8) != 1)
  {
    return;
  }

  __dst[514] = v11;
  __dst[515] = v10;
  __dst[526] = v8;
  __dst[527] = v9;
  __dst[512] = v4;
  __dst[513] = v5;
  __dst[510] = v6;
  __dst[511] = v7;
  v12 = MEMORY[0x28223BE20](a1, a2, a3, a4);
  v15 = v12;
  v16 = *(v12 + 16);
  if (!v16)
  {
    return;
  }

  v17 = (v12 + 232);
  v18 = *(v12 + 232);
  if (!v18)
  {
    goto LABEL_132;
  }

  v19 = xmmword_24613FBD0;
  do
  {
    while (1)
    {
      v20 = *(v18 + 4);
      if ((v20 & 0x80000000) == 0 && v20 < *(v16 + 4))
      {
        v21 = 0;
        LOBYTE(v22) = 0;
        v23 = *(v16 + 64) + 4104 * v20;
        v24 = 3.4028e38;
        do
        {
          v22 = v22;
          if (v22 <= *(v23 + v21 + 4))
          {
            v22 = *(v23 + v21 + 4);
          }

          if (*(v23 + v21 + 4))
          {
            v25 = fabsf(*(v23 + v21));
            if (v25 < v24)
            {
              v24 = v25;
            }
          }

          v35 = v21 >= 0xFF8;
          v21 += 8;
        }

        while (!v35);
        if (!v22 || v24 > 2.0)
        {
          break;
        }
      }

      v18 = *v18;
      if (!v18)
      {
        goto LABEL_132;
      }
    }

    if (*v16 != 1)
    {
      goto LABEL_51;
    }

    v27 = *(v16 + 48);
    if (!v27)
    {
      goto LABEL_51;
    }

    v28 = *(v23 + 4096);
    v13.i32[0] = v28.i16[0];
    v14.i32[0] = v28.u16[1];
    v14.i32[1] = v28.u16[2];
    *v14.i8 = vshr_n_s32(vshl_n_s32(*v14.i8, 0x10uLL), 0x10uLL);
    v13 = vmulq_s32(vextq_s8(vextq_s8(v13, v13, 4uLL), v14, 0xCuLL), v19);
    v30 = *(v16 + 8);
    v29 = *(v16 + 12);
    v31 = ((v13.i32[0] ^ v13.i32[1]) ^ v13.i32[2]) % v30;
    v32 = v29 * v31;
    v33 = (v32 + v29);
    v34 = *(v16 + 16);
    v35 = v32 >= v33 || v32 >= v34;
    if (v35 || v33 > v34)
    {
      goto LABEL_51;
    }

    LODWORD(v37) = *(v16 + 16);
    while (1)
    {
      v38 = (v27 + 16 * v32);
      if ((v38[1].i32[1] & 0x80000000) == 0)
      {
        break;
      }

LABEL_31:
      if (++v32 == v33)
      {
        if (v34 > v37)
        {
          while (1)
          {
            v41 = v27 + 16 * v37;
            v43 = *(v41 + 8);
            v42 = (v41 + 8);
            v37 = v43;
            if (v43 >= v34)
            {
              break;
            }

            *v13.i8 = vceq_s16(*(v27 + 16 * v37), v28);
            v13.i16[3] = v13.i16[2];
            if ((vminv_u16(*v13.i8) & 0x8000) != 0)
            {
              *v42 = *(v27 + 16 * v37 + 8);
              goto LABEL_50;
            }
          }
        }

        goto LABEL_51;
      }
    }

    *v13.i8 = *v38;
    *v14.i8 = vceq_s16(*v38, v28);
    v14.i16[3] = v14.i16[2];
    if ((vminv_u16(*v14.i8) & 0x8000) == 0)
    {
      v14.i32[0] = v13.i16[0];
      v39.i32[0] = v13.u16[1];
      v39.i32[1] = v13.u16[2];
      *v13.i8 = vshr_n_s32(vshl_n_s32(v39, 0x10uLL), 0x10uLL);
      v14 = vextq_s8(v14, v14, 4uLL);
      v13 = vmulq_s32(vextq_s8(v14, v13, 0xCuLL), v19);
      if (((v13.i32[0] ^ v13.i32[1]) ^ v13.i32[2]) % v30 == v31 && v37 == v34)
      {
        if (v38[1].i32[0] >= v34)
        {
          LODWORD(v37) = *(v16 + 16);
        }

        else
        {
          LODWORD(v37) = v32;
        }
      }

      goto LABEL_31;
    }

    if (v34 > v32 && (*(v27 + 16 * v32 + 12) & 0x80000000) == 0)
    {
      v37 = v32;
      v44 = v27 + 16 * v32;
      v45 = *(v44 + 8);
      if (v45 < v34)
      {
        v46 = (v27 + 16 * v45);
        v13.i64[0] = v46[1];
        *v44 = *v46;
        *(v44 + 8) = v13.i64[0];
        v34 = *(v16 + 16);
        v16 = *(v15 + 16);
        v37 = v45;
      }

LABEL_50:
      v47 = v27 + 16 * v37;
      *(v47 + 8) = v34;
      *(v47 + 12) = -1;
    }

LABEL_51:
    v48 = *(v16 + 4) - 1;
    if (v20 == v48)
    {
      v18 = *v18;
      goto LABEL_96;
    }

    if (*v16)
    {
      v49 = *(v16 + 64);
      v50 = *(v49 + 4104 * v48 + 4096);
      v13.i32[0] = v50.i16[0];
      v14.i32[0] = v50.u16[1];
      v14.i32[1] = v50.u16[2];
      *v14.i8 = vshr_n_s32(vshl_n_s32(*v14.i8, 0x10uLL), 0x10uLL);
      v51 = vmulq_s32(vextq_s8(vextq_s8(v13, v13, 4uLL), v14, 0xCuLL), v19);
      v52 = *(v16 + 8);
      v53 = *(v16 + 12);
      v54 = ((v51.i32[0] ^ v51.i32[1]) ^ v51.i32[2]) % v52;
      v55 = v53 * v54;
      v56 = (v55 + v53);
      v57 = *(v16 + 16);
      if (v55 < v56 && v55 < v57 && v56 <= v57)
      {
        v60 = *(v16 + 48);
        LODWORD(v61) = v57;
        do
        {
          v62 = (v60 + 16 * v55);
          if ((v62[1].i32[1] & 0x80000000) == 0)
          {
            *v51.i8 = *v62;
            *v14.i8 = vceq_s16(*v62, v50);
            v14.i16[3] = v14.i16[2];
            if ((vminv_u16(*v14.i8) & 0x8000) != 0)
            {
              if (v57 > v55 && (*(v60 + 16 * v55 + 12) & 0x80000000) == 0)
              {
                v57 = v55;
              }

              goto LABEL_74;
            }

            v14.i32[0] = v51.i16[0];
            v63.i32[0] = v51.u16[1];
            v63.i32[1] = v51.u16[2];
            *v51.i8 = vshr_n_s32(vshl_n_s32(v63, 0x10uLL), 0x10uLL);
            v14 = vextq_s8(v14, v14, 4uLL);
            v51 = vmulq_s32(vextq_s8(v14, v51, 0xCuLL), v19);
            if (((v51.i32[0] ^ v51.i32[1]) ^ v51.i32[2]) % v52 == v54 && v61 == v57)
            {
              if (v62[1].i32[0] >= v57)
              {
                LODWORD(v61) = v57;
              }

              else
              {
                LODWORD(v61) = v55;
              }
            }
          }

          ++v55;
        }

        while (v55 != v56);
        if (v57 > v61)
        {
          while (1)
          {
            v61 = *(v60 + 16 * v61 + 8);
            if (v61 >= v57)
            {
              break;
            }

            v77 = vceq_s16(*(v60 + 16 * v61), v50);
            v77.i16[3] = v77.i16[2];
            if ((vminv_u16(v77) & 0x8000) != 0)
            {
              v57 = v61;
              break;
            }
          }
        }
      }
    }

    else
    {
      v57 = *(v16 + 16);
      v49 = *(v16 + 64);
    }

LABEL_74:
    v65 = (v49 + 4104 * v20);
    v66 = (v49 + 4104 * v48);
    memcpy(__dst, v65, 0x1008uLL);
    memcpy(v65, v66, 0x1008uLL);
    memcpy(v66, __dst, 0x1008uLL);
    v16 = *(v15 + 16);
    *(*(v16 + 48) + 16 * v57 + 12) = v20;
    v67 = *(v15 + 224);
    if (!v67)
    {
      goto LABEL_94;
    }

    v68 = v48;
    v69 = vcnt_s8(v67);
    v69.i16[0] = vaddlv_u8(v69);
    if (v69.u32[0] > 1uLL)
    {
      v70 = v48;
      if (v67 <= v48)
      {
        v70 = v48 % v67;
      }
    }

    else
    {
      v70 = (v67 - 1) & v48;
    }

    v71 = *(v15 + 216);
    v72 = *(v71 + 8 * v70);
    if (!v72 || (v73 = *v72) == 0)
    {
LABEL_94:
      v18 = *v18;
      goto LABEL_95;
    }

    v74 = v67 - 1;
    if (v69.u32[0] < 2uLL)
    {
      while (1)
      {
        v75 = v73[1];
        if (v75 == v48)
        {
          if (*(v73 + 4) == v48)
          {
            goto LABEL_105;
          }
        }

        else if ((v75 & v74) != v70)
        {
          goto LABEL_94;
        }

        v73 = *v73;
        if (!v73)
        {
          goto LABEL_94;
        }
      }
    }

    while (2)
    {
      v76 = v73[1];
      if (v76 != v48)
      {
        if (v76 >= v67)
        {
          v76 %= v67;
        }

        if (v76 != v70)
        {
          goto LABEL_94;
        }

        goto LABEL_89;
      }

      if (*(v73 + 4) != v48)
      {
LABEL_89:
        v73 = *v73;
        if (!v73)
        {
          goto LABEL_94;
        }

        continue;
      }

      break;
    }

LABEL_105:
    if (v69.u32[0] > 1uLL)
    {
      if (v67 <= v48)
      {
        v68 = v48 % v67;
      }
    }

    else
    {
      v68 = v74 & v48;
    }

    v78 = *(v71 + 8 * v68);
    do
    {
      v79 = v78;
      v78 = *v78;
    }

    while (v78 != v73);
    if (v79 == v17)
    {
      goto LABEL_122;
    }

    v80 = v79[1];
    if (v69.u32[0] > 1uLL)
    {
      if (v80 >= v67)
      {
        v80 %= v67;
      }
    }

    else
    {
      v80 &= v74;
    }

    if (v80 != v68)
    {
LABEL_122:
      if (!*v73)
      {
        goto LABEL_123;
      }

      v81 = *(*v73 + 8);
      if (v69.u32[0] > 1uLL)
      {
        if (v81 >= v67)
        {
          v81 %= v67;
        }
      }

      else
      {
        v81 &= v74;
      }

      if (v81 != v68)
      {
LABEL_123:
        *(v71 + 8 * v68) = 0;
      }
    }

    v82 = *v73;
    if (*v73)
    {
      v83 = *(v82 + 8);
      if (v69.u32[0] > 1uLL)
      {
        if (v83 >= v67)
        {
          v83 %= v67;
        }
      }

      else
      {
        v83 &= v74;
      }

      if (v83 != v68)
      {
        *(v71 + 8 * v83) = v79;
        v82 = *v73;
      }
    }

    *v79 = v82;
    *v73 = 0;
    --*(v15 + 240);
    operator delete(v73);
    v16 = *(v15 + 16);
LABEL_95:
    v19 = xmmword_24613FBD0;
LABEL_96:
    --*(v16 + 4);
  }

  while (v18);
LABEL_132:
  if (*(v15 + 240))
  {
    v84 = *v17;
    if (*v17)
    {
      do
      {
        v85 = *v84;
        operator delete(v84);
        v84 = v85;
      }

      while (v85);
    }

    *(v15 + 232) = 0;
    v86 = *(v15 + 224);
    if (v86)
    {
      bzero(*(v15 + 216), 8 * v86);
    }

    *(v15 + 240) = 0;
  }
}

void *sub_246107DB0(void *result, int a2)
{
  v2 = result[1];
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

  v5 = *(*result + 8 * v4);
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
          return result;
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

  return result;
}

os_log_t sub_2461081E8()
{
  result = os_log_create("com.apple.CoreOCModules", "VoxelHashing");
  qword_27EE3F570 = result;
  return result;
}

uint64_t sub_246108218(float32x4_t *a1, float32x4_t *a2)
{
  if (a1->i8[8] != 1)
  {
    return 0;
  }

  v2 = 0;
  v3 = *a2;
  if (COERCE_FLOAT(*a2) > 0.0 && v3.f32[1] > 0.0 && v3.f32[2] > 0.0)
  {
    v4 = 1.0 / a1[11].f32[0];
    v5.i64[0] = 0x3F0000003F000000;
    v5.i64[1] = 0x3F0000003F000000;
    a1[5] = vmulq_n_f32(vmulq_f32(*a2, v5), v4);
    v5.i64[0] = 0xBF000000BF000000;
    v5.i64[1] = 0xBF000000BF000000;
    a1[6] = vmulq_n_f32(vmulq_f32(*a2, v5), v4);
    return 1;
  }

  return v2;
}

uint64_t sub_246108294(uint64_t a1, float32x4_t *a2)
{
  result = sub_24610851C(a2);
  if (result)
  {
    v5 = *(a1 + 16);
    if (!v5 || (*(a1 + 8) & 1) != 0)
    {
      return 0;
    }

    result = *v5;
    if (result == 1)
    {
      *v25 = *(v5 + 9);
      *&v25[11] = *(v5 + 20);
      *(a1 + 32) = v5[8];
      *(a1 + 33) = *v25;
      v6.i32[1] = *&v25[15];
      *(a1 + 44) = *&v25[11];
      *v6.i32 = 1.0 / a2[7].f32[0];
      *(a1 + 60) = vmul_f32(*&a2->u32[2], *&vdupq_lane_s32(v6, 0));
      *(a1 + 68) = a2[1].i64[0];
      v7.i64[0] = 0x3F0000003F000000;
      v7.i64[1] = 0x3F0000003F000000;
      *(a1 + 80) = vmulq_n_f32(vmulq_f32(a2[2], v7), *v6.i32);
      v7.i64[0] = 0xBF000000BF000000;
      v7.i64[1] = 0xBF000000BF000000;
      *(a1 + 96) = vmulq_n_f32(vmulq_f32(a2[2], v7), *v6.i32);
      v8 = a2[3];
      v9 = a2[4];
      v10 = a2[6];
      *(a1 + 144) = a2[5];
      *(a1 + 160) = v10;
      *(a1 + 112) = v8;
      *(a1 + 128) = v9;
      *(a1 + 176) = a2[7].i32[0];
      v11 = *(a1 + 184);
      v12 = *(a1 + 192);
      v13 = (v12 - v11) >> 3;
      if (v13 >> 15)
      {
        if (v12 - v11 == 0x40000)
        {
LABEL_19:
          *(a1 + 208) = a2[7].i32[1];
          v22 = a2->u32[0];
          if (v22 > 6)
          {
            v24 = 0;
            v23 = 0;
          }

          else
          {
            v23 = dword_246144180[v22];
            v24 = dword_24614419C[v22];
          }

          *(a1 + 212) = v23;
          *(a1 + 256) = a2[7].i32[2];
          *(a1 + 260) = v24;
          *(a1 + 8) = 1;
          return result;
        }

        v20 = v11 + 0x40000;
      }

      else
      {
        v14 = 0x8000 - v13;
        v15 = *(a1 + 200);
        if (v14 > (v15 - v12) >> 3)
        {
          v16 = v15 - v11;
          v17 = v16 >> 2;
          if ((v16 >> 2) <= 0x8000)
          {
            v17 = 0x8000;
          }

          v18 = v16 >= 0x7FFFFFFFFFFFFFF8;
          v19 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v18)
          {
            v19 = v17;
          }

          if (!(v19 >> 61))
          {
            operator new();
          }

          sub_2460D368C();
        }

        v21 = result;
        bzero(*(a1 + 192), 8 * v14);
        result = v21;
        v20 = v12 + 8 * v14;
      }

      *(a1 + 192) = v20;
      goto LABEL_19;
    }
  }

  return result;
}

uint64_t sub_24610851C(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1 <= 0.0 || v1 <= *(a1 + 12);
  if (*a1 == 6)
  {
    goto LABEL_6;
  }

  v3 = *(a1 + 4);
  if (v3 == 3 || v2)
  {
    goto LABEL_6;
  }

  v4 = 0;
  v6 = *(a1 + 16);
  v7 = *(a1 + 20);
  v8 = fabsf(v7);
  v9 = v6 > 0.0;
  if (fabsf(v6) <= 0.000001)
  {
    v9 = 1;
  }

  if (v8 > 0.000001 && v7 < 0.0)
  {
    return v4 & 1;
  }

  if (v6 <= v7 || !v9)
  {
    return v4 & 1;
  }

  v4 = 0;
  v13 = *(a1 + 32);
  if (*&v13 <= 0.0 || *(&v13 + 1) <= 0.0 || *(&v13 + 2) <= 0.0)
  {
    return v4 & 1;
  }

  v14 = *(a1 + 48);
  v15 = *(a1 + 64);
  v16 = *(a1 + 80);
  v17 = *(MEMORY[0x277D860B0] + 16);
  v18 = *(MEMORY[0x277D860B0] + 32);
  v19 = vdupq_n_s32(0x38D1B717u);
  v20 = vandq_s8(vandq_s8(vcgeq_f32(v19, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v14, *v14.f32, 1), v15, *v15.f32, 1), v16, *v16.f32, 1), v17)), vcgeq_f32(v19, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v14, v14.f32[0]), v15, v15.f32[0]), v16, v16.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v19, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v14, v14, 2), v15, v15, 2), v16, v16, 2), v18)));
  v20.i32[3] = v20.i32[2];
  if ((vminvq_u32(v20) & 0x80000000) == 0 || (v21 = vzip1q_s32(vzip2q_s32(v14, v16), vdupq_laneq_s32(v15, 2)), v22 = vtrn2q_s32(v14, v15), v22.i32[2] = HIDWORD(*(a1 + 80)), v23 = vzip1q_s32(vzip1q_s32(v14, v16), v15), v24 = vandq_s8(vandq_s8(vcgeq_f32(v19, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v15.f32[0]), v22, *v15.f32, 1), v21, v15, 2), v17)), vcgeq_f32(v19, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v14.f32[0]), v22, *v14.f32, 1), v21, v14, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v19, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v23, v16.f32[0]), v22, *v16.f32, 1), v21, v16, 2), v18))), v24.i32[3] = v24.i32[2], (vminvq_u32(v24) & 0x80000000) == 0) || (v25 = vmulq_f32(v14, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v16, v16, 0xCuLL), v16, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL))), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL), vextq_s8(vextq_s8(v15, v15, 0xCuLL), v15, 8uLL))), fabsf((v25.f32[2] + vaddv_f32(*v25.f32)) + -1.0) > 0.000011) || (v26 = vabs_f32(vzip2_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL))), v27 = vdup_n_s32(0x38D1B717u), v28 = vand_s8(vcge_f32(v27, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(*(a1 + 96), *(a1 + 96), 8uLL)), 0xBF80000080000000))), vcge_f32(v27, v26)), (vpmin_u32(v28, v28).u32[0] & 0x80000000) == 0) || *(a1 + 112) < 0.0001)
  {
LABEL_6:
    v4 = 0;
    return v4 & 1;
  }

  v4 = 0;
  if (*(a1 + 116) < 1.0)
  {
    return v4 & 1;
  }

  v29 = *(a1 + 120);
  if (v29 < 0.0)
  {
    return v4 & 1;
  }

  if (v29 > 1.0)
  {
    return v4 & 1;
  }

  v4 = *(a1 + 126);
  if (!v4)
  {
    return v4 & 1;
  }

  return ((v3 - 1) < 2) | (*(a1 + 127) ^ 1) & 1u;
}