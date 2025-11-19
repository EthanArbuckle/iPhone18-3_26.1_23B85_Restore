double OCVoxelCloudVoxelDimension(uint64_t a1)
{
  v9 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = (a1 + 16);
    *&result = vld1q_dup_f32(v1).u64[0];
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v3 = qword_27EE3F210;
    v4 = os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR);
    result = 0.0;
    if (v4)
    {
      v5 = 136315394;
      v6 = "OCVoxelCloudVoxelDimension";
      v7 = 1026;
      v8 = 348;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", &v5, 0x12u);
      return 0.0;
    }
  }

  return result;
}

double OCVoxelCloudGetData@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v13 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v3 = *(a1 + 96);
    *(a2 + 80) = -1431655765 * ((*(a1 + 104) - v3) >> 4);
    v4 = *(a1 + 48);
    *(a2 + 16) = *(a1 + 32);
    *(a2 + 32) = v4;
    v6 = *(a1 + 64);
    v5 = *(a1 + 80);
    *(a2 + 48) = v6;
    *(a2 + 64) = v5;
    LODWORD(v6) = *(a1 + 16);
    *a2 = v6;
    *(a2 + 88) = v3;
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v7 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      v9 = 136315394;
      v10 = "OCVoxelCloudGetData";
      v11 = 1026;
      v12 = 357;
      _os_log_error_impl(&dword_2460CF000, v7, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", &v9, 0x12u);
    }

    *&v6 = 0;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return *&v6;
}

double OCVoxelCloudTransformMatrix(float32x4_t *a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *&result = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(a1[2], a1[1].f32[0]), 0, a1[3]), 0, a1[4]), 0, a1[5]).u64[0];
  }

  else
  {
    if (qword_27EE3F218 != -1)
    {
      dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
    }

    v2 = qword_27EE3F210;
    if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "OCVoxelCloudTransformMatrix";
      v5 = 1026;
      v6 = 371;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", &v3, 0x12u);
    }

    return 0.0;
  }

  return result;
}

uint64_t OCFramingStationsGetTypeID()
{
  if (qword_27EE3F290 != -1)
  {
    dispatch_once(&qword_27EE3F290, &unk_2858EBA28);
  }

  return qword_27EE3F298;
}

uint64_t sub_2460E41A8()
{
  qword_27EE3F2A0 = 0;
  *algn_27EE3F2A8 = "OCFramingStations";
  qword_27EE3F2B0 = sub_2460E434C;
  unk_27EE3F2B8 = 0;
  qword_27EE3F2C8 = 0;
  unk_27EE3F2D0 = 0;
  qword_27EE3F2C0 = sub_2460E42C0;
  qword_27EE3F2D8 = sub_2460E4270;
  qword_27EE3F2E0 = sub_2460E4220;
  result = _CFRuntimeRegisterClass();
  qword_27EE3F298 = result;
  return result;
}

CFStringRef sub_2460E4220(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCFramingStations %p [%p]>", a1, v3);
}

CFStringRef sub_2460E4270(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCFramingStations %p [%p]>", a1, v3);
}

uint64_t sub_2460E42C0(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      v3 = v2[12];
      if (v3)
      {
        do
        {
          v4 = *v3;
          operator delete(v3);
          v3 = v4;
        }

        while (v4);
      }

      v5 = v2[10];
      v2[10] = 0;
      if (v5)
      {
        operator delete(v5);
      }

      v6 = v2[6];
      if (v6)
      {
        v2[7] = v6;
        operator delete(v6);
      }

      result = MEMORY[0x24C1995D0](v2, 0x10A0C402D199CC2);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t sub_2460E4354(uint64_t a1, void *a2)
{
  if (qword_27EE3F290 != -1)
  {
    dispatch_once(&qword_27EE3F290, &unk_2858EBA28);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294967293;
  }

  v5 = Instance;
  v6 = operator new(0x80uLL, MEMORY[0x277D826F0]);
  if (!v6)
  {
    v5[2] = 0;
    CFRelease(v5);
    return 4294967293;
  }

  v7 = v6;
  v8 = *(a1 + 16);
  v10 = *(v8 + 16);
  v9 = *(v8 + 32);
  *v6 = *v8;
  *(v6 + 1) = v10;
  *(v6 + 2) = v9;
  *(v6 + 7) = 0;
  *(v6 + 8) = 0;
  *(v6 + 6) = 0;
  v12 = *(v8 + 48);
  v11 = *(v8 + 56);
  if (v11 != v12)
  {
    if (((v11 - v12) & 0x8000000000000000) == 0)
    {
      operator new();
    }

    sub_2460D368C();
  }

  v13 = *(v8 + 72);
  *(v6 + 5) = 0u;
  v14 = v6 + 80;
  *(v6 + 18) = v13;
  *(v6 + 6) = 0u;
  *(v6 + 28) = *(v8 + 112);
  prime = *(v8 + 88);
  v32 = a2;
  if (prime == 1)
  {
    prime = 2;
LABEL_26:
    sub_2460D3E08((v7 + 10), prime);
    goto LABEL_27;
  }

  if ((prime & (prime - 1)) != 0)
  {
    prime = std::__next_prime(prime);
    v17 = v7[11];
    v18 = prime >= *&v17;
    if (prime > *&v17)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v17 = 0;
    v18 = 1;
    if (prime)
    {
      goto LABEL_26;
    }
  }

  if (!v18)
  {
    v19 = vcvtps_u32_f32(v7[13] / *(v7 + 28));
    if (*&v17 < 3uLL || (v20 = vcnt_s8(v17), v20.i16[0] = vaddlv_u8(v20), v20.u32[0] > 1uLL))
    {
      v22 = prime;
      v19 = std::__next_prime(v19);
      prime = v22;
    }

    else
    {
      v21 = 1 << -__clz(v19 - 1);
      if (v19 >= 2)
      {
        v19 = v21;
      }
    }

    if (prime <= v19)
    {
      prime = v19;
    }

    if (prime < *&v17)
    {
      goto LABEL_26;
    }
  }

LABEL_27:
  v23 = *(v8 + 96);
  if (!v23)
  {
    goto LABEL_50;
  }

  do
  {
    v24 = *(v23 + 4);
    v25 = v7[11];
    if (!*&v25)
    {
      goto LABEL_48;
    }

    v26 = vcnt_s8(v25);
    v26.i16[0] = vaddlv_u8(v26);
    if (v26.u32[0] > 1uLL)
    {
      v27 = *(v23 + 4);
      if (*&v25 <= v24)
      {
        v27 = v24 % v25.i32[0];
      }
    }

    else
    {
      v27 = (v25.i32[0] - 1) & v24;
    }

    v28 = *(*v14 + 8 * v27);
    if (!v28 || (v29 = *v28) == 0)
    {
LABEL_48:
      operator new();
    }

    if (v26.u32[0] < 2uLL)
    {
      while (1)
      {
        v30 = v29[1];
        if (v30 == v24)
        {
          if (*(v29 + 4) == v24)
          {
            goto LABEL_49;
          }
        }

        else if ((v30 & (*&v25 - 1)) != v27)
        {
          goto LABEL_48;
        }

        v29 = *v29;
        if (!v29)
        {
          goto LABEL_48;
        }
      }
    }

    while (1)
    {
      v31 = v29[1];
      if (v31 == v24)
      {
        break;
      }

      if (v31 >= *&v25)
      {
        v31 %= *&v25;
      }

      if (v31 != v27)
      {
        goto LABEL_48;
      }

LABEL_43:
      v29 = *v29;
      if (!v29)
      {
        goto LABEL_48;
      }
    }

    if (*(v29 + 4) != v24)
    {
      goto LABEL_43;
    }

LABEL_49:
    v23 = *v23;
  }

  while (v23);
LABEL_50:
  result = 0;
  v5[2] = v7;
  *v32 = v5;
  return result;
}

const void *OCFramingStationsRetain(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

void OCFramingStationsRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OCFramingStationsStationAt(uint64_t result, unsigned int a2)
{
  if (result)
  {
    v2 = *(*(result + 16) + 48);
    v3 = *(*(result + 16) + 56) - v2;
    if ((v3 >> 6) <= a2)
    {
      return 0;
    }

    else
    {
      if (a2 >= (v3 >> 6))
      {
        sub_2460D368C();
      }

      return v2 + (a2 << 6);
    }
  }

  return result;
}

uint64_t OCFramingStationsCount(uint64_t result)
{
  if (result)
  {
    return (*(*(result + 16) + 56) - *(*(result + 16) + 48)) >> 6;
  }

  return result;
}

uint64_t OCFramingStationsData(uint64_t result)
{
  if (result)
  {
    return *(*(result + 16) + 48);
  }

  return result;
}

uint64_t OCFramingStationsFindBestUnfinishedStation(uint64_t a1, _DWORD *a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10)
{
  if (!a1)
  {
    return 4294967294;
  }

  v10 = *(*(a1 + 16) + 48);
  v11 = *(*(a1 + 16) + 56) - v10;
  if ((v11 & 0x3FFFFFFFC0) == 0)
  {
    return 0xFFFFFFFFLL;
  }

  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = vmlaq_f32(vmulq_f32(a7, 0), 0, a8);
  __asm { FMOV            V5.4S, #-1.0 }

  v21 = vmlaq_f32(vmlaq_f32(v15, _Q5, a9), 0, a10);
  v22 = (v11 >> 6);
  v23 = 0.07;
LABEL_4:
  v24 = (v10 + (v12 << 6));
  do
  {
    if ((v24[6].i32[0] - 1) <= 1)
    {
      v25 = vmulq_f32(v21, vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*v24[2].f32)), a4, v24[2], 1), a5, *v24[2].f32, 2), 0, a6));
      if (vaddv_f32(vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL))) < -0.7)
      {
        v26 = vaddq_f32(a6, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a3, COERCE_FLOAT(*v24->f32)), a4, *v24, 1), a5, *v24->f32, 2));
        v27 = vmulq_f32(v21, vsubq_f32(v26, a10));
        v28 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
        if (vaddv_f32(v28) > 0.0)
        {
          v29 = vsubq_f32(vmlaq_n_f32(a10, v21, vadd_f32(v28, vdup_lane_s32(v28, 1)).f32[0]), v26);
          v30 = vmulq_f32(v29, v29);
          v31 = sqrtf(vaddv_f32(vadd_f32(*v30.i8, *&vextq_s8(v30, v30, 8uLL))));
          if (v31 < v23)
          {
            v14 = v12++;
            v13 = 1;
            v23 = v31;
            if (v12 != v22)
            {
              goto LABEL_4;
            }

            goto LABEL_13;
          }
        }
      }
    }

    ++v12;
    v24 += 8;
  }

  while (v22 != v12);
  if ((v13 & 1) == 0)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  result = 0;
  *a2 = v14;
  return result;
}

void OCFramingStationsDefaultCameraTransform(float32x4_t *a1)
{
  v2 = a1[1];
  LODWORD(v3) = a1[1].i64[1];
  LODWORD(v4) = HIDWORD(a1[1].i64[0]);
  v5 = 1.0 / sqrtf((vmulq_f32(v2, v2).f32[0] + vmuls_lane_f32(v4, *v2.f32, 1)) + vmuls_lane_f32(v3, v2, 2));
  v6 = v5 * v2.f32[0];
  v7 = vmuls_lane_f32(v5, *v2.f32, 1);
  v8 = vmuls_lane_f32(v5, v2, 2);
  v95.i32[0] = 1065353216;
  v93.i32[0] = 1065353216;
  v91.i32[0] = 1065353216;
  if (fabsf(v6) > 0.000001)
  {
    v9 = &v95;
    v10 = v6;
LABEL_7:
    v9->f32[0] = -((v8 + (v6 + v7)) + (-v10 * v9->f32[0])) / v10;
    v14 = 1.0 / sqrtf(((v95.f32[0] * v95.f32[0]) + (v93.f32[0] * v93.f32[0])) + (v91.f32[0] * v91.f32[0]));
    v12 = v95.f32[0] * v14;
    v11 = v93.f32[0] * v14;
    v13 = v91.f32[0] * v14;
    goto LABEL_8;
  }

  if (fabsf(v7) > 0.000001)
  {
    v9 = &v93;
    v10 = v7;
    goto LABEL_7;
  }

  v11 = 1.0;
  v12 = 1.0;
  v13 = 1.0;
  if (fabsf(v8) > 0.000001)
  {
    v9 = &v91;
    v10 = v8;
    goto LABEL_7;
  }

LABEL_8:
  v54 = *v2.f32;
  v61.columns[0].i64[0] = __PAIR64__(LODWORD(v11), LODWORD(v12));
  v61.columns[0].f32[2] = v13;
  v61.columns[0].f32[3] = (v4 * v13) - (v3 * v11);
  v61.columns[1].f32[0] = (v3 * v12) - (v2.f32[0] * v13);
  v61.columns[1].f32[1] = (v2.f32[0] * v11) - (v4 * v12);
  v68 = &v61;
  v71 = &v68;
  v72 = &v61;
  v62[0] = 0uLL;
  sub_2461045BC(v62, &v71);
  v64[0] = __invert_f2(v62[0]);
  *v75 = &v61;
  *&v75[8] = v64;
  memset(v66, 0, 24);
  *v15.i64 = sub_2461046A4(v66, v75);
  v15.i32[0] = v66[0];
  v16.i32[0] = HIDWORD(v66[0]);
  v17.i64[0] = v61.columns[0].i64[0];
  v18 = vzip1q_s32(v17, v17);
  v18.i32[2] = v61.columns[0].i32[0];
  v19.i64[0] = *(&v61.columns[0].i64[1] + 4);
  v20 = vzip1q_s32(v19, v19);
  v20.i32[2] = v61.columns[0].i32[3];
  v21.i64[0] = *(v66 + 4);
  v22.i64[0] = *&v66[1];
  v23 = vextq_s8(vextq_s8(v15, v15, 4uLL), v21, 0xCuLL);
  v23.i32[3] = v23.i32[0];
  v24 = vmlaq_f32(0, v18, v23);
  v25 = vextq_s8(vextq_s8(v16, v16, 4uLL), v22, 0xCuLL);
  v25.i32[3] = v25.i32[0];
  v57 = vmlaq_f32(v24, v20, v25);
  v58 = vmla_lane_f32(vmla_lane_f32(0, *(v66 + 4), *v61.columns[0].f32, 1), *&v66[1], *(&v61.columns[0].u64[1] + 4), 1);
  v59 = ((*v66 * v61.columns[0].f32[2]) + 0.0) + (*(v66 + 3) * v61.columns[1].f32[1]);
  v60 = vmla_n_f32(vmla_n_f32(0, *(v66 + 4), v61.columns[0].f32[2]), *&v66[1], v61.columns[1].f32[1]);
  v55 = 0;
  v56[0] = 0;
  v56[1] = 1065353216;
  *&v66[0] = &v57;
  *(&v66[0] + 1) = v56 + 4;
  sub_2460E50CC(&v55, v66);
  v26 = vmvn_s8(vcge_f32(vdup_n_s32(0x358637BDu), vabs_f32(v55)));
  if ((v26.i8[0] & 1) != 0 || (v26.i8[4] & 1) != 0 || fabsf(*v56) > 0.000001)
  {
    v30 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v55, v55)) + (*v56 * *v56));
    v29 = vmul_n_f32(v55, v30);
    v55 = v29;
    v28.f32[0] = *v56 * v30;
    *v56 = *v56 * v30;
    v27 = vneg_f32(v54);
    v28.f32[1] = -v3;
  }

  else
  {
    v27 = 0xBF80000000000000;
    v28 = 0;
    v29 = 1065353216;
  }

  v31 = vmlaq_n_f32(*a1, a1[1], a1[2].f32[0]);
  v32 = v31.f32[2] + vsub_f32(vmul_lane_f32(v27, v29, 1), vmul_lane_f32(v29, v27, 1)).f32[0];
  v88 = (((v32 + (v31.f32[2] + v28.f32[0])) + (v31.f32[2] - v28.f32[1])) + v31.f32[2]) * 0.25;
  v33 = vadd_f32(vsub_f32(vmul_f32(vext_s8(v27, v29, 4uLL), v28), vmul_f32(vrev64_s32(v28), vext_s8(v29, v27, 4uLL))), *v31.f32);
  v34 = vadd_f32(*v31.f32, v29);
  v35 = vsub_f32(*v31.f32, v27);
  __asm { FMOV            V18.2S, #0.25 }

  v87 = vmul_f32(vadd_f32(vadd_f32(vadd_f32(v33, v34), v35), *v31.f32), _D18);
  v93 = vsub_f32(v33, v87);
  v94 = v32 - v88;
  v91 = vsub_f32(v34, v87);
  v92 = (v31.f32[2] + v28.f32[0]) - v88;
  v89 = vsub_f32(v35, v87);
  v90 = (v31.f32[2] - v28.f32[1]) - v88;
  v95 = vsub_f32(*v31.f32, v87);
  v96 = v31.f32[2] - v88;
  v77 = _D18;
  v78 = 1048576000;
  v85 = 0xBE8000003F400000;
  v86 = -1098907648;
  v83 = 0x3F400000BE800000;
  v84 = -1098907648;
  __asm { FMOV            V0.2S, #-0.25 }

  v81 = _D0;
  v82 = 1061158912;
  v79 = _D0;
  v80 = -1098907648;
  v74 = &v93;
  *&v64[0] = &v85;
  *(&v64[0] + 1) = &v74;
  v73 = &v91;
  v62[0].columns[0] = &v83;
  v62[0].columns[1] = &v73;
  memset(v66 + 4, 0, 36);
  sub_246102FEC(v66 + 4, v64);
  memset(&v66[2] + 8, 0, 36);
  v42 = v62;
  sub_246102FEC(&v66[2] + 8, v62);
  v70 = &v89;
  v71 = &v81;
  v72 = &v70;
  *v75 = v66;
  memset(&v75[8], 0, 32);
  v76 = 0;
  sub_246102FEC(&v75[8], &v71);
  v67 = &v95;
  v68 = &v79;
  v69 = &v67;
  v61.columns[0].i64[0] = v75;
  memset(&v61.columns[0].u32[2], 0, 36);
  sub_246102FEC(&v61.columns[0].i64[1], &v68);
  v43 = ((*(*v61.columns[0].i64[0] + 36) + *(*v61.columns[0].i64[0] + 72)) + *(v61.columns[0].i64[0] + 40)) + v61.columns[2].f32[2];
  v44 = vaddq_f32(vaddq_f32(vaddq_f32(*(*v61.columns[0].i64[0] + 4), *(*v61.columns[0].i64[0] + 40)), *(v61.columns[0].i64[0] + 8)), *(v61.columns + 8));
  v45 = vaddq_f32(vaddq_f32(vaddq_f32(*(*v61.columns[0].i64[0] + 20), *(*v61.columns[0].i64[0] + 56)), *(v61.columns[0].i64[0] + 24)), *(&v61.columns[1] + 8));
  memset(v66, 0, 93);
  *(&v66[5] + 4) = 0x300000003;
  v61.columns[0] = v44;
  v61.columns[1] = v45;
  v61.columns[2].f32[0] = v43;
  sub_2461030E4(v66);
  *v75 = v66[0];
  *&v75[16] = v66[1];
  *&v75[32] = v66[2];
  v64[0] = *(&v66[2] + 4);
  v64[1] = *(&v66[3] + 4);
  v65 = DWORD1(v66[4]);
  v61.columns[0].i64[0] = v75;
  v61.columns[0].i64[1] = v64;
  memset(v62, 0, sizeof(v62));
  v63 = 0;
  sub_246103208(v62, &v61);
  v71 = v62;
  v72 = &v87;
  v61.columns[0] = &v77;
  v61.columns[1].i32[0] = 0;
  sub_2460E50CC(&v61.columns[0].f32[2], &v71);
  v46 = 0;
  v47 = 0;
  v48 = *(v61.columns[0].i64[0] + 8);
  v68 = vsub_f32(*v61.columns[0].i64[0], *&v61.columns[0].u32[2]);
  *&v69 = v48 - v61.columns[1].f32[0];
  memset(&v61, 0, 60);
  do
  {
    v49 = v42->columns[0].i32[0];
    v42 = (v42 + 4);
    *(v61.columns[0].i32 + v47) = v49;
    v47 += 4 * (v46 > 1) + 4;
    if (v46 <= 1)
    {
      ++v46;
    }

    else
    {
      v46 = 0;
    }
  }

  while (v47 != 48);
  v50 = 0;
  v51 = &v68;
  v52 = 48;
  do
  {
    v53 = *v51++;
    *(v61.columns[0].i32 + v52) = v53;
    v52 += 4 * (v50 > 1) + 4;
    if (v50 <= 1)
    {
      ++v50;
    }

    else
    {
      v50 = 0;
    }
  }

  while (v52 != 64);
  __invert_f4(v61);
}

float *sub_2460E50CC(float *result, float **a2)
{
  v2 = result;
  v3 = *a2;
  if (*a2 == result || (v4 = a2[1], v4 == result))
  {
    v6 = 0;
    v5 = 0;
    result = sub_2460E50CC(&v5);
    *v2 = v5;
    *(v2 + 2) = v6;
  }

  else
  {
    *result = (((*v3 * *v4) + 0.0) + (v3[3] * v4[1])) + (v3[6] * v4[2]);
    result[1] = (((v3[1] * *v4) + 0.0) + (v3[4] * v4[1])) + (v3[7] * v4[2]);
    result[2] = (((v3[2] * *v4) + 0.0) + (v3[5] * v4[1])) + (v3[8] * v4[2]);
  }

  return result;
}

uint64_t OCProxySurfaceCreate(uint64_t a1, void *a2)
{
  v108 = *MEMORY[0x277D85DE8];
  if (!a1 || !a2)
  {
    goto LABEL_57;
  }

  if (*a1 >= 2u)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v2 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136315394;
    *&buf[4] = "isConfigurationValid";
    LOWORD(v76) = 1026;
    *(&v76 + 2) = 46;
    v3 = "%s:%{public}d Invalid pipeline type.";
    goto LABEL_56;
  }

  if (*(a1 + 16) >= 6u)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v2 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136315394;
    *&buf[4] = "isConfigurationValid";
    LOWORD(v76) = 1026;
    *(&v76 + 2) = 52;
    v3 = "%s:%{public}d Invalid input type.";
    goto LABEL_56;
  }

  if (*(a1 + 20) >= 3u)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v2 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136315394;
    *&buf[4] = "isConfigurationValid";
    LOWORD(v76) = 1026;
    *(&v76 + 2) = 57;
    v3 = "%s:%{public}d Invalid mode type.";
    goto LABEL_56;
  }

  v4 = *(a1 + 24);
  v5 = fabsf(v4);
  if (v4 < 0.0 && v5 > 0.000001)
  {
    v7 = 1;
  }

  else
  {
    v7 = fabsf(v4 + -1.0) > 0.000011;
    if (v4 <= 1.0)
    {
      v7 = 0;
    }
  }

  if (*(a1 + 36) < 0.0001 || !*(a1 + 40) || *(a1 + 44) < 1.0 || !*(a1 + 28))
  {
    goto LABEL_52;
  }

  v9 = *(a1 + 48);
  v8 = *(a1 + 52);
  v10 = fabsf(v9);
  v11 = v8 > 0.0;
  if (fabsf(v8) <= 0.000001)
  {
    v11 = 1;
  }

  v12 = v10 > 0.000001 && v9 < 0.0;
  v13 = v12;
  if (v13 || v8 <= v9 || !v11)
  {
    goto LABEL_52;
  }

  v14 = *(a1 + 64);
  if (COERCE_FLOAT(*(a1 + 72)) <= 0.0)
  {
    v7 = 1;
  }

  if (*&v14 <= 0.0 || *(&v14 + 1) <= 0.0 || v7)
  {
LABEL_52:
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v2 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_57;
    }

    *buf = 136315394;
    *&buf[4] = "isConfigurationValid";
    LOWORD(v76) = 1026;
    *(&v76 + 2) = 70;
    v3 = "%s:%{public}d Invalid voxel integrator config.";
LABEL_56:
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, v3, buf, 0x12u);
LABEL_57:
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v17 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCProxySurfaceCreate";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 51;
      _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - invalid config.", buf, 0x12u);
    }

    return 4294967294;
  }

  if (!*(a1 + 96) || !*(a1 + 100))
  {
    v16 = sub_2460E638C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "isConfigurationValid";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 76;
      _os_log_error_impl(&dword_2460CF000, v16, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid surface sampling config.", buf, 0x12u);
    }

    goto LABEL_81;
  }

  if (*(a1 + 104) < 0.0)
  {
    v16 = sub_2460E638C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v27 = *(a1 + 104);
      *buf = 136315650;
      *&buf[4] = "isConfigurationValid";
      v76 = 0x802000000530402;
      v77 = v27;
      _os_log_error_impl(&dword_2460CF000, v16, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid value for pointCloudSamplingConfig.sampledPointRandomOffsetStdDev = %{public}f", buf, 0x1Cu);
    }

LABEL_81:

    goto LABEL_57;
  }

  if (*(a1 + 112) >= 3u)
  {
    v16 = sub_2460E638C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "isConfigurationValid";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 89;
      _os_log_error_impl(&dword_2460CF000, v16, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid depth rendering config.", buf, 0x12u);
    }

    goto LABEL_81;
  }

  if (!*(a1 + 116) || !*(a1 + 120))
  {
    v16 = sub_2460E638C();
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "isConfigurationValid";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 96;
      _os_log_error_impl(&dword_2460CF000, v16, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid coverage config.", buf, 0x12u);
    }

    goto LABEL_81;
  }

  v19 = operator new(0x50uLL, MEMORY[0x277D826F0]);
  if (!v19)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v26 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCProxySurfaceCreate";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 57;
      _os_log_error_impl(&dword_2460CF000, v26, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - out of memory.", buf, 0x12u);
    }

    return 4294967293;
  }

  v20 = v19;
  *(v19 + 3) = 0u;
  *(v19 + 4) = 0u;
  *(v19 + 1) = 0u;
  *(v19 + 2) = 0u;
  *v19 = 0u;
  *(v19 + 56) = *(a1 + 4);
  v21 = dispatch_queue_create("com.apple.coreocmodules.proxysurfaceserialqueue", 0);
  v22 = v20[2];
  v20[2] = v21;

  if (!v20[2])
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v28 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCProxySurfaceCreate";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 66;
      _os_log_error_impl(&dword_2460CF000, v28, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - failed to create serial queue.", buf, 0x12u);
    }

    goto LABEL_112;
  }

  v23 = dispatch_group_create();
  v24 = v20[8];
  v20[8] = v23;

  if (!v20[8])
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v29 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCProxySurfaceCreate";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 74;
      _os_log_error_impl(&dword_2460CF000, v29, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - failed to create pipeline task group.", buf, 0x12u);
    }

    goto LABEL_112;
  }

  v25 = *a1;
  if (*a1 >= 2u)
  {
    v25 = 2;
  }

  if (v25 == 1)
  {
    operator new();
  }

  if (!v25)
  {
    operator new();
  }

  v30 = 0;
  v31 = v20[3];
  v20[3] = 0;
  if (v31)
  {
    (*(*v31 + 8))(v31);
    v30 = v20[3];
  }

  if (!v30)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v44 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCProxySurfaceCreate";
      LOWORD(v76) = 1026;
      *(&v76 + 2) = 82;
      _os_log_error_impl(&dword_2460CF000, v44, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - failed to create voxelhashing pipeline.", buf, 0x12u);
    }

LABEL_112:
    OCProxySurfaceDestroy(v20);
    return 0xFFFFFFFFLL;
  }

  v33.columns[0] = *MEMORY[0x277D860B8];
  v33.columns[1] = *(MEMORY[0x277D860B8] + 16);
  v33.columns[2] = *(MEMORY[0x277D860B8] + 32);
  v32 = *(MEMORY[0x277D860B0] + 16);
  v33.columns[3] = *(MEMORY[0x277D860B0] + 32);
  v34 = vdupq_n_s32(0x38D1B717u);
  v35 = vandq_s8(vandq_s8(vcgeq_f32(v34, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v33.columns[0], *v33.columns[0].f32, 1), v33.columns[1], *v33.columns[1].f32, 1), v33.columns[2], *v33.columns[2].f32, 1), v32)), vcgeq_f32(v34, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v33.columns[0], v33.columns[0].f32[0]), v33.columns[1], v33.columns[1].f32[0]), v33.columns[2], v33.columns[2].f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v33.columns[0], v33.columns[0], 2), v33.columns[1], v33.columns[1], 2), v33.columns[2], v33.columns[2], 2), v33.columns[3])));
  v35.i32[3] = v35.i32[2];
  if ((vminvq_u32(v35) & 0x80000000) == 0 || (v36 = vzip1q_s32(vzip2q_s32(v33.columns[0], v33.columns[2]), vdupq_laneq_s32(v33.columns[1], 2)), v37 = vtrn2q_s32(v33.columns[0], v33.columns[1]), v37.i32[2] = HIDWORD(*(MEMORY[0x277D860B8] + 32)), v38 = vzip1q_s32(vzip1q_s32(v33.columns[0], v33.columns[2]), v33.columns[1]), v39 = vandq_s8(vandq_s8(vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v33.columns[1].f32[0]), v37, *v33.columns[1].f32, 1), v36, v33.columns[1], 2), v32)), vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v33.columns[0].f32[0]), v37, *v33.columns[0].f32, 1), v36, v33.columns[0], 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v34, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v38, v33.columns[2].f32[0]), v37, *v33.columns[2].f32, 1), v36, v33.columns[2], 2), v33.columns[3]))), v39.i32[3] = v39.i32[2], (vminvq_u32(v39) & 0x80000000) == 0) || (v40 = vmulq_f32(v33.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v33.columns[2], v33.columns[2], 0xCuLL), v33.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v33.columns[1], v33.columns[1]), v33.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v33.columns[2], v33.columns[2]), v33.columns[2], 0xCuLL), vextq_s8(vextq_s8(v33.columns[1], v33.columns[1], 0xCuLL), v33.columns[1], 8uLL))), fabsf((v40.f32[2] + vaddv_f32(*v40.f32)) + -1.0) > 0.000011) || (v33.columns[3] = *(a1 + 80), v33.columns[3].i32[3] = *(MEMORY[0x277D860B8] + 60), v41 = vdup_n_s32(0x38D1B717u), v42 = vand_s8(vcge_f32(v41, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v33.columns[2], v33.columns[2], 8uLL), *&vextq_s8(v33.columns[3], v33.columns[3], 8uLL)), 0xBF80000080000000))), vcge_f32(v41, vabs_f32(vzip2_s32(*&vextq_s8(v33.columns[0], v33.columns[0], 8uLL), *&vextq_s8(v33.columns[1], v33.columns[1], 8uLL))))), (vpmin_u32(v42, v42).u32[0] & 0x80000000) == 0))
  {
    buf[0] = 0;
    v107 = 0;
    v43 = sub_2460E638C();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v71 = 136315394;
      v72 = "OCProxySurfaceCreate";
      v73 = 1026;
      v74 = 91;
      _os_log_error_impl(&dword_2460CF000, v43, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - failed to create voxelhashing pipeline config.", v71, 0x12u);
    }

LABEL_107:

    OCProxySurfaceDestroy(v20);
    return 0xFFFFFFFFLL;
  }

  v45 = *(a1 + 16);
  if (v45 > 6)
  {
    v46 = 6;
  }

  else
  {
    v46 = dword_24613FFC0[v45];
  }

  v47 = *(a1 + 20);
  if (v47 >= 3)
  {
    v47 = 3;
  }

  v68 = __PAIR64__(v47, v46);
  LODWORD(v48) = *(a1 + 24);
  v49 = *(a1 + 48);
  v66 = v48;
  v67 = *(a1 + 64);
  v50 = *(a1 + 28);
  v51 = *(a1 + 36);
  v52 = *(a1 + 40);
  HIDWORD(v48) = *(a1 + 44);
  v65 = v48;
  v53 = *(a1 + 96);
  v54 = *(a1 + 108);
  v55 = *(a1 + 104);
  v56 = *(a1 + 112);
  v57 = 0;
  v58 = 0;
  if (v56 <= 2)
  {
    v57 = qword_24613FFE0[v56];
    v58 = qword_24613FFF8[v56];
  }

  v109 = __invert_f4(v33);
  v59 = *(a1 + 4);
  v60 = *(a1 + 32);
  v61 = *(a1 + 124);
  v62 = *(a1 + 116);
  v63 = *(a1 + 128);
  *buf = v68;
  *&buf[8] = v66;
  v76 = v49;
  v78 = v67;
  v79 = v50;
  v80 = v51;
  v81 = v52;
  v82 = v65;
  v83 = 0;
  v84 = v53;
  v85 = v54;
  v86 = v55;
  v87 = v57;
  v88 = v58;
  v89 = v109;
  v90 = v59;
  v91 = v60;
  v92 = v61;
  v93 = xmmword_24613FAE0;
  v94 = 0x186A000000000;
  v95 = 1;
  v96 = 0x40A000003DCCCCCDLL;
  v97 = xmmword_24613FAF0;
  v98 = xmmword_24613FB00;
  v99 = xmmword_24613FB10;
  v100 = xmmword_24613FB20;
  v101 = 0;
  v102 = 5;
  v103 = 1096810496;
  v104 = 0;
  v105 = v63;
  v106 = v62;
  v107 = 1;
  if ((*(*v20[3] + 16))(v20[3], buf))
  {
    v43 = sub_2460E638C();
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      *v71 = 136315394;
      v72 = "OCProxySurfaceCreate";
      v73 = 1026;
      v74 = 98;
      _os_log_error_impl(&dword_2460CF000, v43, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create OCProxySurface - failed to initialize voxelhashing pipeline.", v71, 0x12u);
    }

    goto LABEL_107;
  }

  atomic_store(0, v20 + 9);
  *a2 = v20;
  v64 = sub_2460E638C();
  if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
  {
    *v71 = 136315394;
    v72 = "OCProxySurfaceCreate";
    v73 = 1026;
    v74 = 107;
    _os_log_impl(&dword_2460CF000, v64, OS_LOG_TYPE_DEFAULT, "%s:%{public}d OCProxySurfaceCreate succeeded.", v71, 0x12u);
  }

  return 0;
}

uint64_t OCProxySurfaceDestroy(uint64_t a1)
{
  v14 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294967294;
  }

  dispatch_sync(*(a1 + 16), &unk_2858EBA48);
  v2 = *(a1 + 64);
  if (v2)
  {
    dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = *(a1 + 32);
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = *(a1 + 40);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 48);
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = *(a1 + 24);
  *(a1 + 24) = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
  }

  MEMORY[0x24C1995D0](a1, 0x10A0C40A52DDF8DLL);
  if (qword_27EE3F308 != -1)
  {
    dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
  }

  v7 = qword_27EE3F300;
  v8 = os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_DEFAULT);
  result = 0;
  if (v8)
  {
    v10 = 136315394;
    v11 = "OCProxySurfaceDestroy";
    v12 = 1026;
    v13 = 146;
    _os_log_impl(&dword_2460CF000, v7, OS_LOG_TYPE_DEFAULT, "%s:%{public}d OCProxySurfaceDestroy succeeded.", &v10, 0x12u);
    return 0;
  }

  return result;
}

id sub_2460E638C()
{
  if (qword_27EE3F308 != -1)
  {
    dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
  }

  v1 = qword_27EE3F300;

  return v1;
}

uint64_t sub_2460E63E4()
{
  qword_27EE3F300 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

uint64_t OCProxySurfaceWait(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    dispatch_sync(*(a1 + 16), &unk_2858EBA48);
    return 0;
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v2 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v3 = 136315394;
      v4 = "OCProxySurfaceWait";
      v5 = 1026;
      v6 = 173;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to wait on OCProxySurface - invalid handle.", &v3, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t OCProxySurfaceStart(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return 0;
  }

  if (qword_27EE3F308 != -1)
  {
    dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
  }

  v2 = qword_27EE3F300;
  if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "OCProxySurfaceStart";
    v5 = 1026;
    v6 = 153;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to start OCProxySurface - invalid handle.", &v3, 0x12u);
  }

  return 4294967294;
}

uint64_t OCProxySurfaceStop(uint64_t a1)
{
  v7 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    return 0;
  }

  if (qword_27EE3F308 != -1)
  {
    dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
  }

  v2 = qword_27EE3F300;
  if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
  {
    v3 = 136315394;
    v4 = "OCProxySurfaceStop";
    v5 = 1026;
    v6 = 163;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to stop OCProxySurface - invalid handle.", &v3, 0x12u);
  }

  return 4294967294;
}

uint64_t OCProxySurfaceExecutePipeline(uint64_t a1, void *a2, __int16 a3, int a4, __n128 a5, __n128 a6, __n128 a7, int8x16_t a8, int8x16_t a9, int8x16_t a10, int8x16_t a11, double a12, double a13, double a14, double a15)
{
  v90 = *MEMORY[0x277D85DE8];
  v88[0] = a9;
  v88[1] = a10;
  v88[2] = a11;
  *v87 = a13;
  *&v87[1] = a14;
  if (!a1)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v34 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "isValidInputForExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 198;
    v35 = "%s:%{public}d Failed to run OCProxySurface pipeline - invalid handle.";
    goto LABEL_19;
  }

  if (!a2)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v34 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "isValidInputForExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 203;
    v35 = "%s:%{public}d Failed to run OCProxySurface pipeline - invalid pointcloud.";
    goto LABEL_19;
  }

  v20 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.n128_f32[0]), a6, a6.n128_f32[0]), a7, a7.n128_f32[0]);
  v21 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, a5.n128_u64[0], 1), a6, a6.n128_u64[0], 1), a7, a7.n128_u64[0], 1);
  v22 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2);
  v23 = *(MEMORY[0x277D860B0] + 16);
  v24 = *(MEMORY[0x277D860B0] + 32);
  v25 = vdupq_n_s32(0x38D1B717u);
  v26 = vandq_s8(vandq_s8(vcgeq_f32(v25, vabdq_f32(v21, v23)), vcgeq_f32(v25, vabdq_f32(v20, *MEMORY[0x277D860B0]))), vcgeq_f32(v25, vabdq_f32(v22, v24)));
  v26.i32[3] = v26.i32[2];
  if ((vminvq_u32(v26) & 0x80000000) == 0 || (v27 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2)), v28 = vtrn2q_s32(a5, a6), v28.i32[2] = a7.n128_i32[1], v29 = vzip1q_s32(vzip1q_s32(a5, a7), a6), v30 = vandq_s8(vandq_s8(vcgeq_f32(v25, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, a6.n128_f32[0]), v28, a6.n128_u64[0], 1), v27, a6, 2), v23)), vcgeq_f32(v25, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, a5.n128_f32[0]), v28, a5.n128_u64[0], 1), v27, a5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v25, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, a7.n128_f32[0]), v28, a7.n128_u64[0], 1), v27, a7, 2), v24))), v30.i32[3] = v30.i32[2], (vminvq_u32(v30) & 0x80000000) == 0) || (v31 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL))), fabsf((v31.f32[2] + vaddv_f32(*v31.f32)) + -1.0) > 0.000011) || (v32 = vdup_n_s32(0x38D1B717u), v33 = vand_s8(vcge_f32(v32, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v32, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL))))), (vpmin_u32(v33, v33).u32[0] & 0x80000000) == 0))
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v34 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "isValidInputForExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 209;
    v35 = "%s:%{public}d Failed to run OCProxySurface pipeline - invalid camera to world transform.";
LABEL_19:
    _os_log_error_impl(&dword_2460CF000, v34, OS_LOG_TYPE_ERROR, v35, &buf, 0x12u);
    return 4294967294;
  }

  v37 = vand_s8(vcge_f32(v32, vabs_f32(vadd_f32(vzip1_s32(*&vextq_s8(a10, a10, 8uLL), *&vextq_s8(a11, a11, 8uLL)), 0xBF80000080000000))), vcge_f32(v32, vabs_f32(*&vextq_s8(a9, a9, 4uLL))));
  if ((vpmin_u32(v37, v37).u32[0] & 0x80000000) == 0)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v34 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "isValidInputForExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 215;
    v35 = "%s:%{public}d Failed to run OCProxySurface pipeline - invalid camera intrinsics.";
    goto LABEL_19;
  }

  if (a13 < 0.0 || fabs(a13) <= 0.000000999999997 || a14 < 0.0 || fabs(a14) <= 0.000000999999997)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v34 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "isValidInputForExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 222;
    v35 = "%s:%{public}d Failed to run OCProxySurface pipeline - invalid color image dimensions.";
    goto LABEL_19;
  }

  if (a15 < 0.0 || (v39 = COERCE_DOUBLE(atomic_load((a1 + 72))), v39 > a15))
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v34 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 4294967294;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "isValidInputForExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 227;
    v35 = "%s:%{public}d Failed to run OCProxySurface pipeline - invalid timestamp.";
    goto LABEL_19;
  }

  *v56 = a5;
  *&v56[16] = a6;
  *&v56[32] = a7;
  *&v56[48] = a8;
  if (dispatch_group_wait(*(a1 + 64), 0))
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v43 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_DEBUG))
    {
      buf.columns[0].i32[0] = 136315394;
      *(buf.columns[0].i64 + 4) = "OCProxySurfaceExecutePipeline";
      buf.columns[0].i16[6] = 1026;
      *(&buf.columns[0].i32[3] + 2) = 247;
      _os_log_debug_impl(&dword_2460CF000, v43, OS_LOG_TYPE_DEBUG, "%s:%{public}d Active pipeline task in queue, dropping input frame.", &buf, 0x12u);
    }

    return 0xFFFFFFFFLL;
  }

  v44 = -1431655765 * ((a2[13] - a2[12]) >> 4);
  v45 = OCPointCloudPoints(a2);
  v46 = OCPointCloudPointSupplements(a2);
  if (v44 && v45 && v46)
  {
    v55 = v46;
    v83 = 0;
    v84 = &v83;
    v85 = 0x2020000000;
    v86 = 0;
    if ((a3 & 0x100) != 0)
    {
      v47 = *(a1 + 24);
      buf = __invert_f4(*v56);
      v48 = (*(*v47 + 48))(v47, &buf, v88, v87);
      if (v48)
      {
        if (v48 == 2)
        {
          v49 = -4;
        }

        else if (v48 == 4)
        {
          v49 = -2;
        }

        else
        {
          v49 = -1;
        }

        *(v84 + 6) = v49;
        if (qword_27EE3F308 != -1)
        {
          dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
        }

        v51 = qword_27EE3F300;
        if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
        {
          buf.columns[0].i32[0] = 136315394;
          *(buf.columns[0].i64 + 4) = "OCProxySurfaceExecutePipeline";
          buf.columns[0].i16[6] = 1026;
          *(&buf.columns[0].i32[3] + 2) = 268;
          _os_log_error_impl(&dword_2460CF000, v51, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to render depth image.", &buf, 0x12u);
        }
      }
    }

    if (*(a1 + 56) == 1)
    {
      CFRetain(a2);
      dispatch_group_enter(*(a1 + 64));
      v52 = *(a1 + 16);
      block[0] = MEMORY[0x277D85DD0];
      block[1] = 3221225472;
      block[2] = sub_2460E70C8;
      block[3] = &unk_278E9B220;
      v71 = *v56;
      v72 = *&v56[16];
      v73 = *&v56[32];
      v74 = *&v56[48];
      v75 = a1;
      v76 = v45;
      v77 = v55;
      v78 = a2;
      v82 = a3;
      v80 = v44;
      v81 = a4;
      v79 = a15;
      dispatch_async(v52, block);
    }

    else
    {
      v53 = *(a1 + 16);
      v57[0] = MEMORY[0x277D85DD0];
      v57[1] = 3221225472;
      v57[2] = sub_2460E71D4;
      v57[3] = &unk_278E9B248;
      v58 = *v56;
      v59 = *&v56[16];
      v60 = *&v56[32];
      v61 = *&v56[48];
      v64 = v45;
      v65 = v55;
      v62 = &v83;
      v63 = a1;
      v69 = a3;
      v67 = v44;
      v68 = a4;
      v66 = a15;
      dispatch_sync(v53, v57);
    }

    v54 = *(v84 + 6);
    _Block_object_dispose(&v83, 8);
    return v54;
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v50 = qword_27EE3F300;
    if (!os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    buf.columns[0].i32[0] = 136315394;
    *(buf.columns[0].i64 + 4) = "OCProxySurfaceExecutePipeline";
    buf.columns[0].i16[6] = 1026;
    *(&buf.columns[0].i32[3] + 2) = 256;
    _os_log_error_impl(&dword_2460CF000, v50, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to run OCProxySurface pipeline - invalid pointcloud.", &buf, 0x12u);
    return 0xFFFFFFFFLL;
  }
}

void sub_2460E70C8(uint64_t a1)
{
  kdebug_trace();
  (*(**(*(a1 + 96) + 24) + 32))(*(*(a1 + 96) + 24), a1 + 32, *(a1 + 136), *(a1 + 104), *(a1 + 112));
  v2 = *(a1 + 120);
  if (v2)
  {
    CFRelease(v2);
  }

  if ((*(a1 + 144) & 1) != 0 || *(a1 + 145) == 1)
  {
    (*(**(*(a1 + 96) + 24) + 40))(*(*(a1 + 96) + 24), *(a1 + 140));
  }

  atomic_store(*(a1 + 128), (*(a1 + 96) + 72));
  kdebug_trace();
  v3 = *(*(a1 + 96) + 64);

  dispatch_group_leave(v3);
}

uint64_t sub_2460E71D4(uint64_t a1)
{
  kdebug_trace();
  v2 = (*(**(*(a1 + 104) + 24) + 32))(*(*(a1 + 104) + 24), a1 + 32, *(a1 + 136), *(a1 + 112), *(a1 + 120));
  if (v2)
  {
    if (v2 == 2)
    {
      v3 = -4;
    }

    else if (v2 == 4)
    {
      v3 = -2;
    }

    else
    {
      v3 = -1;
    }

    *(*(*(a1 + 96) + 8) + 24) = v3;
  }

  if ((*(a1 + 144) & 1) != 0 || *(a1 + 145) == 1)
  {
    v4 = (*(**(*(a1 + 104) + 24) + 40))(*(*(a1 + 104) + 24), *(a1 + 140));
    if (v4 > 4)
    {
      v5 = -1;
    }

    else
    {
      v5 = dword_246140010[v4];
    }

    *(*(*(a1 + 96) + 8) + 24) = v5;
  }

  atomic_store(*(a1 + 128), (*(a1 + 104) + 72));

  return kdebug_trace();
}

uint64_t OCProxySurfaceGetVoxelCloud(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = (a1 + 32);
    v2 = *(a1 + 32);
    *(a1 + 32) = 0;
    (*(**(a1 + 24) + 72))(&v5);
    OCVoxelCloudCreateFromOCPoints(v5, *(&v6 + 4), v1, *(&v6 + 3), v7, v8, v9, v10);
    if (v2)
    {
      CFRelease(v2);
    }

    return *v1;
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v4 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      *&v6 = "OCProxySurfaceGetVoxelCloud";
      WORD4(v6) = 1026;
      *(&v6 + 10) = 332;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get voxelcloud - invalid handle.", &v5, 0x12u);
    }

    return 0;
  }
}

uint64_t OCProxySurfaceGetDebugVoxelCloud(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = (a1 + 40);
    v2 = *(a1 + 40);
    *(a1 + 40) = 0;
    (*(**(a1 + 24) + 64))(&v5);
    OCVoxelCloudCreateFromOCVoxels(*v6, *&v6[4], v1, v5, *&v6[12], v7, v8, v9);
    if (v2)
    {
      CFRelease(v2);
    }

    return *v1;
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v4 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v5 = 4.8151e-34;
      *v6 = "OCProxySurfaceGetDebugVoxelCloud";
      *&v6[8] = 1026;
      *&v6[10] = 354;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get debug voxelcloud - invalid handle.", &v5, 0x12u);
    }

    return 0;
  }
}

float32x4_t *OCProxySurfaceGetPointCloud(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v1 = (a1 + 48);
    v2 = *(a1 + 48);
    *(a1 + 48) = 0;
    (*(**(a1 + 24) + 72))(&v5);
    OCPointCloudCreateFromOCPoints(v5, *(&v6 + 4), v1, *(&v6 + 3), v7, v8, v9, v10);
    if (v2)
    {
      CFRelease(v2);
    }

    return *v1;
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v4 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v5 = 136315394;
      *&v6 = "OCProxySurfaceGetPointCloud";
      WORD4(v6) = 1026;
      *(&v6 + 10) = 375;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get pointcloud - invalid handle.", &v5, 0x12u);
    }

    return 0;
  }
}

__CVBuffer *OCProxySurfaceCreateDepthImage(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v6 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "OCProxySurfaceCreateDepthImage";
      v10 = 1026;
      v11 = 396;
      _os_log_error_impl(&dword_2460CF000, v6, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get depth image - invalid handle.", &v8, 0x12u);
    }

    return 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, (a1 + 72));
  v3 = (*(**(a1 + 24) + 88))(*(a1 + 24));
  if (!v3)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v7 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "OCProxySurfaceCreateDepthImage";
      v10 = 1026;
      v11 = 406;
      _os_log_error_impl(&dword_2460CF000, v7, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get depth image from voxelhashing pipeline.", &v8, 0x12u);
      if (!v2)
      {
        return 0;
      }
    }

    else if (!v2)
    {
      return 0;
    }

    CFRelease(v2);
    return 0;
  }

  v4 = v3;
  CVBufferSetAttachment(v3, @"Timestamp", v2, kCVAttachmentMode_ShouldPropagate);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

__CVBuffer *OCProxySurfaceCreateNormalImage(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v6 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "OCProxySurfaceCreateNormalImage";
      v10 = 1026;
      v11 = 424;
      _os_log_error_impl(&dword_2460CF000, v6, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get normal image - invalid handle.", &v8, 0x12u);
    }

    return 0;
  }

  v2 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberDoubleType, (a1 + 72));
  v3 = (*(**(a1 + 24) + 96))(*(a1 + 24));
  if (!v3)
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v7 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      v8 = 136315394;
      v9 = "OCProxySurfaceCreateNormalImage";
      v10 = 1026;
      v11 = 433;
      _os_log_error_impl(&dword_2460CF000, v7, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to get normal image from voxelhashing pipeline.", &v8, 0x12u);
      if (!v2)
      {
        return 0;
      }
    }

    else if (!v2)
    {
      return 0;
    }

    CFRelease(v2);
    return 0;
  }

  v4 = v3;
  CVBufferSetAttachment(v3, @"Timestamp", v2, kCVAttachmentMode_ShouldPropagate);
  if (v2)
  {
    CFRelease(v2);
  }

  return v4;
}

uint64_t OCProxySurfaceCoverageGuideAddCameraShot(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v26 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    *&v17[32] = a7;
    *&v17[48] = a8;
    *v17 = a5;
    *&v17[16] = a6;
    v9 = (*(**(a1 + 24) + 112))(*(a1 + 24));
    v10 = (*(**(a1 + 24) + 120))(*(a1 + 24));
    v11 = *(a1 + 24);
    *buf = v9;
    LODWORD(v19) = v10;
    *&v21[2] = a2;
    v22 = a3;
    v23 = a4;
    v24 = *v17;
    v25 = __invert_f4(*v17);
    (*(*v11 + 128))(v11, buf);
    return 0;
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v13 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v19 = "OCProxySurfaceCoverageGuideAddCameraShot";
      v20 = 1026;
      *v21 = 452;
      _os_log_error_impl(&dword_2460CF000, v13, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to add camera shot - invalid handle.", buf, 0x12u);
    }

    return 4294967294;
  }
}

void OCProxySurfaceCreateResults(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v10 = *MEMORY[0x277D85DE8];
  if (a1)
  {
    kdebug_trace();
    (*(**(a1 + 24) + 104))(buf);
    if (*&v7[4])
    {
      v4 = *buf == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      operator new();
    }

    kdebug_trace();
    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
    if (__p)
    {
      v9 = __p;
      operator delete(__p);
    }
  }

  else
  {
    if (qword_27EE3F308 != -1)
    {
      dispatch_once(&qword_27EE3F308, &unk_2858EBA68);
    }

    v5 = qword_27EE3F300;
    if (os_log_type_enabled(qword_27EE3F300, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *v7 = "OCProxySurfaceCreateResults";
      *&v7[8] = 1026;
      *&v7[10] = 484;
      _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create results - invalid handle.", buf, 0x12u);
    }

    a2[4] = 0u;
    a2[5] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
    *a2 = 0u;
    a2[1] = 0u;
  }
}

void sub_2460E83A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, void *__p, uint64_t a30)
{
  operator delete(v30);
  if (!__p)
  {
    _Unwind_Resume(a1);
  }

  operator delete(__p);
  _Unwind_Resume(a1);
}

uint64_t OCNonModularSPI_GetWideToDepthTransform(_OWORD *a1, const char *a2)
{
  if (!a1)
  {
    return 4294967294;
  }

  v3 = objc_msgSend_defaultDeviceWithDeviceType_mediaType_position_(MEMORY[0x277CE5AC8], a2, *MEMORY[0x277CE5878], *MEMORY[0x277CE5EA8], 1);
  v5 = objc_msgSend_defaultDeviceWithDeviceType_mediaType_position_(MEMORY[0x277CE5AC8], v4, *MEMORY[0x277CE5858], *MEMORY[0x277CE5A08], 1);
  v7 = v5;
  if (v3)
  {
    v8 = v5 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    v9 = 0xFFFFFFFFLL;
  }

  else
  {
    v10 = objc_msgSend_extrinsicMatrixFromDevice_toDevice_(MEMORY[0x277CE5AC8], v6, v3, v5);
    v13 = v10;
    if (v10)
    {
      if (objc_msgSend_length(v10, v11, v12) <= 0x3F)
      {
        v21 = objc_msgSend_currentHandler(MEMORY[0x277CCA890], v14, v15);
        v23 = objc_msgSend_stringWithUTF8String_(MEMORY[0x277CCACA8], v22, "OCReturn OCNonModularSPI_GetWideToDepthTransform(simd_float4x4 *)");
        objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v21, v24, v23, @"AVCapture+NonModularSPI.mm", 48, @"NSData must contain enough bytes for simd_float4x3");
      }

      objc_msgSend_getBytes_length_(v13, v14, v25, 64);
      v9 = 0;
      v16 = v25[0];
      v17 = v25[1];
      HIDWORD(v16) = 0;
      HIDWORD(v17) = 0;
      v18 = v25[2];
      v19 = v25[3];
      HIDWORD(v18) = 0;
      *a1 = v16;
      a1[1] = v17;
      HIDWORD(v19) = 1.0;
      a1[2] = v18;
      a1[3] = v19;
    }

    else
    {
      v9 = 0xFFFFFFFFLL;
    }
  }

  return v9;
}

uint64_t OCNonModularSPI_AVCaptureDevice_IsTimeOfFlightOCMacroModeSupported(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_defaultDeviceWithDeviceType_mediaType_position_(MEMORY[0x277CE5AC8], a2, *MEMORY[0x277CE5858], *MEMORY[0x277CE5A08], 1);
  v4 = v2;
  if (v2)
  {
    isTimeOfFlightProjectorModeSupported = objc_msgSend_isTimeOfFlightProjectorModeSupported_(v2, v3, 6);
  }

  else
  {
    isTimeOfFlightProjectorModeSupported = 0;
  }

  return isTimeOfFlightProjectorModeSupported;
}

BOOL OCNonModularSPI_AVCaptureDevice_IsTimeOfFlightSensorType80(uint64_t a1, const char *a2)
{
  v2 = objc_msgSend_defaultDeviceWithDeviceType_mediaType_position_(MEMORY[0x277CE5AC8], a2, *MEMORY[0x277CE5858], *MEMORY[0x277CE5A08], 1);
  v5 = v2;
  if (v2)
  {
    v6 = objc_msgSend_formats(v2, v3, v4);
    v8 = objc_msgSend_objectAtIndexedSubscript_(v6, v7, 0);
    objc_msgSend_formatDescription(v8, v9, v10);
    NumberOfPoints = CMPointCloudFormatDescriptionGetNumberOfPoints();

    v13 = NumberOfPoints == 84 || NumberOfPoints == 168;
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

id OCNonModularSPI_CapturePhotoSettings(uint64_t a1, const char *a2)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v2 = MEMORY[0x277CE5B30];
  v10 = *MEMORY[0x277CC4E30];
  v11[0] = &unk_2858EE588;
  v3 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], a2, v11, &v10, 1);
  v5 = objc_msgSend_photoSettingsWithFormat_(v2, v4, v3);

  objc_msgSend_setHighResolutionPhotoEnabled_(v5, v6, 1);
  objc_msgSend_setPhotoQualityPrioritization_(v5, v7, 1);
  objc_msgSend_setShutterSound_(v5, v8, 0);

  return v5;
}

void sub_2460E880C(_Unwind_Exception *a1)
{
  v2 = v1;

  _Unwind_Resume(a1);
}

uint64_t OCNonModularSPI_ShutterSoundEntitlementValue()
{
  v0 = SecTaskCreateFromSelf(*MEMORY[0x277CBECE8]);
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = SecTaskCopyValueForEntitlement(v0, @"com.apple.avfoundation.allow-still-image-capture-shutter-sound-manipulation", 0);
  if (v2)
  {
    v3 = v2;
    v4 = CFGetTypeID(v2);
    if (v4 == CFBooleanGetTypeID())
    {
      v7 = objc_msgSend_BOOLValue(v3, v5, v6);
    }

    else
    {
      v7 = 0;
    }

    CFRelease(v3);
  }

  else
  {
    v7 = 0;
  }

  CFRelease(v1);
  return v7;
}

id OCMetalDevice()
{
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  if (qword_27EE3F710)
  {
    v0 = *qword_27EE3F710;
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id OCMetalCommandQueue()
{
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  if (qword_27EE3F710)
  {
    v0 = *(qword_27EE3F710 + 8);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

id OCMetalDefaultLibrary()
{
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  if (qword_27EE3F710)
  {
    v0 = *(qword_27EE3F710 + 16);
  }

  else
  {
    v0 = 0;
  }

  return v0;
}

uint64_t isAppleGPU()
{
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  v0 = qword_27EE3F710;
  if (qword_27EE3F710)
  {
    v0 = *(qword_27EE3F710 + 24);
  }

  return v0 & 1;
}

uint64_t OCImageScalerCreate(uint64_t a1, uint64_t a2)
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

uint64_t OCImageScalerStart(uint64_t a1)
{
  if (qword_27EE3F318 != -1)
  {
    dispatch_once(&qword_27EE3F318, &unk_2858EBA88);
  }

  v2 = qword_27EE3F310;
  if (os_log_type_enabled(qword_27EE3F310, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_2460CF000, v2, OS_LOG_TYPE_DEBUG, "OCImageScalerStart", v4, 2u);
  }

  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t sub_2460E8D18()
{
  qword_27EE3F310 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t OCImageScalerResizeImage(void ***a1, __CVBuffer *a2, CVPixelBufferRef pixelBuffer, CGFloat a4, CGFloat a5, CGFloat a6, CGFloat a7)
{
  v124[2] = *MEMORY[0x277D85DE8];
  v92.origin.x = a4;
  v92.origin.y = a5;
  v92.size.width = a6;
  v92.size.height = a7;
  if (!a1)
  {
    return 4294967294;
  }

  v7 = *a1;
  if (**a1)
  {
    if (qword_27EE3F598 != -1)
    {
      dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
    }

    v8 = qword_27EE3F590;
    if (!os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v80 = "Failed to crop and scale image, input buffer is not RGB frame!";
    goto LABEL_35;
  }

  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  Width = CVPixelBufferGetWidth(pixelBuffer);
  Height = CVPixelBufferGetHeight(pixelBuffer);
  if (PixelFormatType != 875704422 && PixelFormatType != 1111970369 && PixelFormatType != 1278226488)
  {
    if (qword_27EE3F598 != -1)
    {
      dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
    }

    v79 = qword_27EE3F590;
    if (!os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 67240192;
    *&buf[4] = PixelFormatType;
    v80 = "Failed to crop and scale image, pixel format %{public}x not supported!";
    v81 = v79;
    v82 = 8;
    goto LABEL_36;
  }

  v19 = CVPixelBufferGetPixelFormatType(a2);
  pixelBufferOut = 0;
  if (v19 != PixelFormatType)
  {
    if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, v19, 0, &pixelBufferOut))
    {
      return 0xFFFFFFFFLL;
    }

    if (!sub_24610D000(a2, &v92, v7[1], pixelBufferOut))
    {
      if (qword_27EE3F598 != -1)
      {
        dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
      }

      v83 = qword_27EE3F590;
      if (os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2460CF000, v83, OS_LOG_TYPE_ERROR, "Failed to crop and scale image, error in cropping and scaling the grayscale image!", buf, 2u);
      }

      CVPixelBufferRelease(pixelBufferOut);
      return 0xFFFFFFFFLL;
    }

    v76 = v7[1];
    if (v76)
    {
      if (!VTPixelTransferSessionTransferImage(v76, pixelBufferOut, pixelBuffer))
      {
        CVPixelBufferRelease(pixelBufferOut);
        goto LABEL_13;
      }

      if (qword_27EE3F598 != -1)
      {
        dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
      }

      v77 = qword_27EE3F590;
      if (!os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR))
      {
LABEL_52:
        if (qword_27EE3F598 != -1)
        {
          dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
        }

        v85 = qword_27EE3F590;
        if (os_log_type_enabled(v85, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2460CF000, v85, OS_LOG_TYPE_ERROR, "Failed to crop and scale image, error in converting buffer type after scaling!", buf, 2u);
        }

        CVPixelBufferRelease(pixelBufferOut);
        return 0xFFFFFFFFLL;
      }

      *buf = 0;
      v78 = "Failed to convert buffer pixel format in VTPixelTransferSession";
    }

    else
    {
      if (qword_27EE3F598 != -1)
      {
        dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
      }

      v77 = qword_27EE3F590;
      if (!os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_52;
      }

      *buf = 0;
      v78 = "Failed to convert buffer type, pixel transfer session ref is nil!";
    }

    _os_log_error_impl(&dword_2460CF000, v77, OS_LOG_TYPE_ERROR, v78, buf, 2u);
    goto LABEL_52;
  }

  if (!sub_24610D000(a2, &v92, v7[1], pixelBuffer))
  {
    if (qword_27EE3F598 != -1)
    {
      dispatch_once(&qword_27EE3F598, &unk_2858EBEA8);
    }

    v8 = qword_27EE3F590;
    if (!os_log_type_enabled(qword_27EE3F590, OS_LOG_TYPE_ERROR))
    {
      return 0xFFFFFFFFLL;
    }

    *buf = 0;
    v80 = "Failed to crop and scale image, error in cropping and scaling the grayscale image!";
LABEL_35:
    v81 = v8;
    v82 = 2;
LABEL_36:
    _os_log_error_impl(&dword_2460CF000, v81, OS_LOG_TYPE_ERROR, v80, buf, v82);
    return 0xFFFFFFFFLL;
  }

LABEL_13:
  v20 = CVBufferCopyAttachment(a2, @"Calibration Data", 0);
  if (!v20)
  {
LABEL_43:
    v75 = 0;
    goto LABEL_44;
  }

  v21 = v20;
  v22 = CFGetTypeID(v20);
  if (v22 != CFDictionaryGetTypeID())
  {
    CFRelease(v21);
    goto LABEL_43;
  }

  v97 = 0.0;
  v98 = 0.0;
  v95 = 0.0;
  v96 = 0.0;
  v94 = 0.0;
  CalibrationPinholeModel_0 = getCalibrationPinholeModel_0(v21, 0, &v98, &v97, &v96, &v95, &v94);
  CFRelease(v21);
  if (!CalibrationPinholeModel_0)
  {
    goto LABEL_43;
  }

  v26 = Width;
  if (vabdd_f64(Width / a6, Height / a7) > 0.000001)
  {
    goto LABEL_43;
  }

  v27 = a6;
  v28 = v97;
  v29 = (v96 - a4) * v26 / v27;
  v30 = v95;
  v31 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v24, v25, v29);
  v124[0] = v31;
  v34 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v32, v33, (v30 - a5) * v26 / v27);
  v124[1] = v34;
  v91 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v35, v124, 2);

  v38 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v36, v37, v94);
  v123 = v38;
  v90 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v39, &v123, 1);

  v118[0] = @"Aspect Ratio";
  v116 = @"Data";
  v88 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v40, v41, v98);
  v115 = v88;
  v87 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v42, &v115, 1);
  v117 = v87;
  v86 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v43, &v117, &v116, 1);
  *buf = v86;
  v118[1] = @"Focal Length";
  v113 = @"Data";
  v46 = objc_msgSend_numberWithDouble_(MEMORY[0x277CCABB0], v44, v45, v28 * v26 / v27);
  v112 = v46;
  v48 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v47, &v112, 1);
  v114 = v48;
  v50 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v49, &v114, &v113, 1);
  v120 = v50;
  v118[2] = @"Principal Point";
  v110 = @"Data";
  v111 = v91;
  v52 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v51, &v111, &v110, 1);
  v121 = v52;
  v118[3] = @"Skew";
  v108 = @"Data";
  v109 = v90;
  v54 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v53, &v109, &v108, 1);
  v122 = v54;
  v56 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v55, buf, v118, 4);
  v89 = objc_msgSend_mutableCopy(v56, v57, v58);

  v60 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v59, Width);
  v107[0] = v60;
  v62 = objc_msgSend_numberWithUnsignedLong_(MEMORY[0x277CCABB0], v61, Height);
  v107[1] = v62;
  v64 = objc_msgSend_arrayWithObjects_count_(MEMORY[0x277CBEA60], v63, v107, 2);

  v105 = @"Sensors";
  v103 = @"Intrinsics";
  v100[1] = v64;
  v101 = @"RGB";
  v99[0] = @"Pinhole";
  v99[1] = @"Resolution";
  v100[0] = v89;
  v66 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v65, v100, v99, 2);
  v102 = v66;
  v68 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v67, &v102, &v101, 1);
  v104 = v68;
  v70 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v69, &v104, &v103, 1);
  v106 = v70;
  v72 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v71, &v106, &v105, 1);
  v75 = objc_msgSend_mutableCopy(v72, v73, v74);

  CFRetain(v75);
LABEL_44:
  CVBufferSetAttachment(pixelBuffer, @"Calibration Data", v75, kCVAttachmentMode_ShouldPropagate);
  v84 = CVBufferCopyAttachment(a2, @"MetadataDictionary", 0);
  CVBufferSetAttachment(pixelBuffer, @"MetadataDictionary", v84, kCVAttachmentMode_ShouldPropagate);
  if (v84)
  {
    CFRelease(v84);
  }

  if (v75)
  {
    CFRelease(v75);
  }

  return 0;
}

uint64_t OCImageScalerStop(uint64_t a1)
{
  if (qword_27EE3F318 != -1)
  {
    dispatch_once(&qword_27EE3F318, &unk_2858EBA88);
  }

  v2 = qword_27EE3F310;
  if (os_log_type_enabled(qword_27EE3F310, OS_LOG_TYPE_DEBUG))
  {
    *v4 = 0;
    _os_log_debug_impl(&dword_2460CF000, v2, OS_LOG_TYPE_DEBUG, "OCImageScalerStop", v4, 2u);
  }

  if (a1)
  {
    return 0;
  }

  else
  {
    return 4294967294;
  }
}

uint64_t OCImageScalerDestroy(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    v3 = *(v1 + 8);
    if (v3)
    {
      VTPixelTransferSessionInvalidate(v3);
      CFRelease(*(v1 + 8));
      *(v1 + 8) = 0;
    }

    MEMORY[0x24C1995D0](v1, 0x1020C40D5A9D86FLL);
    a1 = v2;
  }

  MEMORY[0x24C1995D0](a1, 0x20C4093837F09);
  return 0;
}

uint64_t sub_2460E9914()
{
  qword_27EE3F330 = 0;
  *algn_27EE3F338 = "OCCoverageResults";
  qword_27EE3F340 = sub_2460E9A98;
  unk_27EE3F348 = 0;
  qword_27EE3F358 = 0;
  unk_27EE3F360 = 0;
  qword_27EE3F350 = sub_2460E9A2C;
  qword_27EE3F368 = sub_2460E99DC;
  qword_27EE3F370 = sub_2460E998C;
  result = _CFRuntimeRegisterClass();
  qword_27EE3F328 = result;
  return result;
}

CFStringRef sub_2460E998C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCCoverageResults %p [%p]>", a1, v3);
}

CFStringRef sub_2460E99DC(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCCoverageResults %p [%p]>", a1, v3);
}

uint64_t sub_2460E9A2C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = *(result + 16);
    if (v2)
    {
      if (*v2)
      {
        MEMORY[0x24C1995A0](*v2, 0x1000C80451B5BE8);
        *v2 = 0;
      }

      result = MEMORY[0x24C1995D0](v2, 0x10A0C40700A216ALL);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

const void *OCCoverageResultsRetain(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

uint64_t OCCoverageResultsGetData(uint64_t result)
{
  if (result)
  {
    return *(result + 16);
  }

  return result;
}

void OCCoverageResultsRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t sub_2460E9AE8(float **a1, const void *a2, uint64_t *a3)
{
  if (!a3)
  {
    return 4294967294;
  }

  v6 = *a3;
  if (*a3)
  {
    if (*v6)
    {
      CFRelease(*v6);
    }

    *v6 = 0;
    v7 = *(v6 + 8);
    if (v7)
    {
      MEMORY[0x24C1995A0](v7, 0x1000C8052888210);
      *(v6 + 8) = 0;
    }

    MEMORY[0x24C1995D0](v6, 0x10A0C40D63CFB62);
    *a3 = 0;
  }

  v8 = operator new(0x20uLL, MEMORY[0x277D826F0]);
  if (!v8)
  {
    return 4294967293;
  }

  v9 = v8;
  *v8 = 0u;
  v8[1] = 0u;
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 - *a1;
  if (v12 >> 62)
  {
    v13 = -1;
  }

  else
  {
    v13 = v11 - *a1;
  }

  v14 = operator new[](v13, MEMORY[0x277D826F0]);
  *(v9 + 1) = v14;
  if (!v14)
  {
    *v9 = 0;
    MEMORY[0x24C1995D0](v9, 0x10A0C40D63CFB62);
    return 4294967293;
  }

  *(v9 + 2) = v12;
  if (v11 != v10)
  {
    v15 = 0;
    v16 = v12 <= 1 ? 1 : v12;
    if (v12 < 8)
    {
      goto LABEL_22;
    }

    if ((v14 - v10) <= 0x1F)
    {
      goto LABEL_22;
    }

    v15 = v16 & 0xFFFFFFFFFFFFFFF8;
    v17 = v14 + 16;
    v18 = (v10 + 4);
    v19 = v16 & 0xFFFFFFFFFFFFFFF8;
    do
    {
      v20 = *v18;
      *(v17 - 1) = *(v18 - 1);
      *v17 = v20;
      v17 += 2;
      v18 += 2;
      v19 -= 8;
    }

    while (v19);
    if (v12 != v15)
    {
LABEL_22:
      v21 = v16 - v15;
      v22 = v15;
      v23 = &v14[4 * v15];
      v24 = &v10[v22];
      do
      {
        v25 = *v24++;
        *v23 = v25;
        v23 += 4;
        --v21;
      }

      while (v21);
    }
  }

  if (a2)
  {
    CFRetain(a2);
    v10 = *a1;
    v11 = a1[1];
  }

  *v9 = a2;
  if (v10 != v11)
  {
    v26 = v11 - v10;
    v27 = v11 - v10 - 4;
    if (v27 >= 0x1C)
    {
      v31 = (v27 >> 2) + 1;
      v32 = (v10 + 4);
      v33 = 0uLL;
      v34 = vdupq_n_s32(0x3F4CCCCDu);
      v35 = vdupq_n_s64(1uLL);
      v36 = v31 & 0x7FFFFFFFFFFFFFF8;
      v37 = 0uLL;
      v38 = 0uLL;
      v39 = 0uLL;
      do
      {
        v40 = vcgtq_f32(v32[-1], v34);
        v41.i64[0] = v40.u32[0];
        v41.i64[1] = v40.u32[1];
        v42 = vandq_s8(v41, v35);
        v41.i64[0] = v40.u32[2];
        v41.i64[1] = v40.u32[3];
        v43 = vandq_s8(v41, v35);
        v44 = vcgtq_f32(*v32, v34);
        v41.i64[0] = v44.u32[0];
        v41.i64[1] = v44.u32[1];
        v45 = vandq_s8(v41, v35);
        v41.i64[0] = v44.u32[2];
        v41.i64[1] = v44.u32[3];
        v37 = vaddq_s64(v37, v43);
        v33 = vaddq_s64(v33, v42);
        v39 = vaddq_s64(v39, vandq_s8(v41, v35));
        v38 = vaddq_s64(v38, v45);
        v32 += 2;
        v36 -= 8;
      }

      while (v36);
      v28 = vaddvq_s64(vaddq_s64(vaddq_s64(v38, v33), vaddq_s64(v39, v37)));
      if (v31 == (v31 & 0x7FFFFFFFFFFFFFF8))
      {
LABEL_40:
        v30 = v28 / (v26 >> 2);
        goto LABEL_41;
      }

      v10 += v31 & 0x7FFFFFFFFFFFFFF8;
    }

    else
    {
      v28 = 0;
    }

    do
    {
      v46 = *v10++;
      if (v46 > 0.8)
      {
        ++v28;
      }
    }

    while (v10 != v11);
    goto LABEL_40;
  }

  v30 = 0.0;
LABEL_41:
  result = 0;
  *(v9 + 6) = v30;
  *a3 = v9;
  return result;
}

uint64_t sub_2460E9D9C(float32x4_t **a1, CFTypeRef *a2)
{
  v43 = *MEMORY[0x277D85DE8];
  if (*a1)
  {
    v2 = a1[1] == 0;
  }

  else
  {
    v2 = 1;
  }

  if (v2)
  {
    return 4294967294;
  }

  v5 = a1[2];
  v6 = (-1431655765 * (((*a1)[6].i64[1] - (*a1)[6].i64[0]) >> 4));
  result = 4294967294;
  if (v5 == v6 && a2 && *(a1 + 6) >= 0.0)
  {
    if (*a2)
    {
      CFRelease(*a2);
      *a2 = 0;
    }

    if (qword_27EE3F320 != -1)
    {
      dispatch_once(&qword_27EE3F320, &unk_2858EBAA8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v9 = Instance;
      v10 = operator new(0x60uLL, MEMORY[0x277D826F0]);
      v9[2] = v10;
      if (v10)
      {
        v11 = a1[2];
        v12 = v11 >> 60 ? -1 : 16 * v11;
        v13 = operator new[](v12, MEMORY[0x277D826F0]);
        *v9[2] = v13;
        if (v13)
        {
          v14 = *a1;
          if (*a1)
          {
            v15 = v14[1].f32[0];
            v16 = v14[2];
            v17 = v14[3];
            v18 = v14[4];
            v19 = v14[5];
            v39 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v16, v15), 0, v17), 0, v18), 0, v19);
            v20 = vmulq_f32(v16, 0);
            v21 = vmlaq_f32(vmlaq_f32(vmlaq_n_f32(v20, v17, v15), 0, v18), 0, v19);
            v22 = vmlaq_f32(v20, 0, v17);
            v37 = vmlaq_f32(vmlaq_n_f32(v22, v18, v15), 0, v19);
            v38 = v21;
            v23 = vaddq_f32(v19, vmlaq_f32(v22, 0, v18));
          }

          else
          {
            if (qword_27EE3F218 != -1)
            {
              dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
            }

            v24 = qword_27EE3F210;
            if (os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR))
            {
              buf[0] = 136315394;
              *&buf[1] = "OCVoxelCloudTransformMatrix";
              v41 = 1026;
              v42 = 371;
              _os_log_error_impl(&dword_2460CF000, v24, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", buf, 0x12u);
            }

            v23 = 0uLL;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
          }

          v36 = v23;
          if (!a1[2])
          {
            v35 = v9[2];
            *(v35 + 8) = 0;
            *(v35 + 16) = *(a1 + 6);
            goto LABEL_46;
          }

          v25 = 0;
          v26 = 0;
          while (1)
          {
            v29 = *a1;
            if (*a1 && (v31 = v29 + 6, v30 = v29[6].i64[0], 0xAAAAAAAAAAAAAAABLL * ((v31->i64[1] - v30) >> 4) > v26))
            {
              if (v30)
              {
                v27 = vaddq_f32(v36, vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v39, *(v30 + v25)), v38, HIDWORD(*(v30 + v25))), v37, *(v30 + v25 + 8)));
                goto LABEL_33;
              }
            }

            else
            {
              if (qword_27EE3F218 != -1)
              {
                dispatch_once(&qword_27EE3F218, &unk_2858EB9E8);
              }

              v32 = qword_27EE3F210;
              v33 = os_log_type_enabled(qword_27EE3F210, OS_LOG_TYPE_ERROR);
              v27.i64[0] = 0;
              v27.i32[2] = 0;
              if (!v33)
              {
                goto LABEL_33;
              }

              buf[0] = 136315394;
              *&buf[1] = "OCVoxelCloudVoxelAt";
              v41 = 1026;
              v42 = 301;
              _os_log_error_impl(&dword_2460CF000, v32, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid voxelcloud.", buf, 0x12u);
            }

            v27.i64[0] = 0;
            v27.i32[2] = 0;
LABEL_33:
            v27.i32[3] = a1[1]->i32[v26];
            *(*v9[2] + 16 * v26++) = v27;
            v28 = a1[2];
            v25 += 48;
            if (v26 >= v28)
            {
              v34 = v9[2];
              *(v34 + 8) = v28;
              *(v34 + 16) = *(a1 + 6);
              if (v28)
              {
                if (v28 < 0x555555555555556)
                {
                  operator new();
                }

                sub_2460D368C();
              }

LABEL_46:
              CFRelease(v9);
              return 0xFFFFFFFFLL;
            }
          }
        }
      }

      CFRelease(v9);
    }

    return 4294967293;
  }

  return result;
}

id OCNonModularSPI_AVCameraCalibrationData_CreateDictionaryFrom(void *a1, const char *a2, uint64_t a3)
{
  if (a1)
  {
    a1 = objc_msgSend_cameraCalibrationDataDictionary(a1, a2, a3);
    v3 = vars8;
  }

  return a1;
}

id OCNonModularSPI_AVCameraCalibrationData_InitFrom(void *a1, uint64_t a2)
{
  if (a1)
  {
    v3 = MEMORY[0x277CE5A98];
    v4 = a1;
    v5 = [v3 alloc];
    v7 = objc_msgSend_initWithCameraCalibrationDataDictionary_error_(v5, v6, v4, a2);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t OCMeshToObjFile(uint64_t a1, uint64_t a2)
{
  v34[20] = *MEMORY[0x277D85DE8];
  if (a1)
  {
    v2 = a2 == 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = !v2;
  if (v2)
  {
    if (qword_27EE3F398 != -1)
    {
      dispatch_once(&qword_27EE3F398, &unk_2858EBAC8);
    }

    v28 = qword_27EE3F390;
    if (os_log_type_enabled(qword_27EE3F390, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_2460CF000, v28, OS_LOG_TYPE_ERROR, "OCMeshToObjFile: Input mesh or filepath is empty!", buf, 2u);
    }
  }

  else
  {
    v30 = v3;
    v34[6] = 0;
    v5 = MEMORY[0x277D82860] + 24;
    v6 = MEMORY[0x277D82860] + 64;
    v34[0] = MEMORY[0x277D82860] + 64;
    v7 = *(MEMORY[0x277D82810] + 16);
    *buf = *(MEMORY[0x277D82810] + 8);
    *&buf[*(*buf - 24)] = v7;
    v8 = &buf[*(*buf - 24)];
    std::ios_base::init(v8, v33);
    v8[1].__vftable = 0;
    v8[1].__fmtflags_ = -1;
    *buf = v5;
    v34[0] = v6;
    MEMORY[0x24C199400](v33);
    std::ofstream::open();
    v9 = *(a1 + 8);
    v10 = *(a1 + 24);
    v11 = *(a1 + 28);
    if (v10)
    {
      v12 = *a1 + 8;
      v13 = MEMORY[0x277D82680];
      do
      {
        sub_2460EA9F4(buf, "v ", 2);
        v14 = std::ostream::operator<<();
        sub_2460EA9F4(v14, " ", 1);
        v15 = std::ostream::operator<<();
        sub_2460EA9F4(v15, " ", 1);
        v12 += 16;
        v16 = std::ostream::operator<<();
        std::ios_base::getloc((v16 + *(*v16 - 24)));
        v17 = std::locale::use_facet(&v31, v13);
        (v17->__vftable[2].~facet_0)(v17, 10);
        std::locale::~locale(&v31);
        std::ostream::put();
        std::ostream::flush();
        --v10;
      }

      while (v10);
    }

    std::ios_base::getloc(&buf[*(*buf - 24)]);
    v18 = std::locale::use_facet(&v31, MEMORY[0x277D82680]);
    (v18->__vftable[2].~facet_0)(v18, 10);
    std::locale::~locale(&v31);
    std::ostream::put();
    std::ostream::flush();
    if (v11)
    {
      v19 = (v9 + 8);
      v20 = MEMORY[0x277D82680];
      do
      {
        sub_2460EA9F4(buf, "f ", 2);
        v21 = MEMORY[0x24C199480](buf, (*(v19 - 2) + 1));
        v22 = sub_2460EA9F4(v21, " ", 1);
        v23 = MEMORY[0x24C199480](v22, (*(v19 - 1) + 1));
        v24 = sub_2460EA9F4(v23, " ", 1);
        v25 = *v19;
        v19 += 4;
        v26 = MEMORY[0x24C199480](v24, (v25 + 1));
        std::ios_base::getloc((v26 + *(*v26 - 24)));
        v27 = std::locale::use_facet(&v31, v20);
        (v27->__vftable[2].~facet_0)(v27, 10);
        std::locale::~locale(&v31);
        std::ostream::put();
        std::ostream::flush();
        --v11;
      }

      while (v11);
    }

    if (!std::filebuf::close())
    {
      std::ios_base::clear(&buf[*(*buf - 24)], *&v33[*(*buf - 24) + 24] | 4);
    }

    *buf = *MEMORY[0x277D82810];
    *&buf[*(*buf - 24)] = *(MEMORY[0x277D82810] + 24);
    MEMORY[0x24C199410](v33);
    std::ostream::~ostream();
    MEMORY[0x24C199560](v34);
    return v30;
  }

  return v3;
}

void *sub_2460EA9F4(void *a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x24C199440](v20, a1);
  if (v20[0] != 1)
  {
    goto LABEL_30;
  }

  v6 = a1 + *(*a1 - 24);
  v7 = *(v6 + 5);
  v8 = a2 + a3;
  if ((*(v6 + 2) & 0xB0) == 0x20)
  {
    v9 = a2 + a3;
  }

  else
  {
    v9 = a2;
  }

  v10 = *(v6 + 36);
  if (v10 == -1)
  {
    std::ios_base::getloc((a1 + *(*a1 - 24)));
    v11 = std::locale::use_facet(&__b, MEMORY[0x277D82680]);
    v10 = (v11->__vftable[2].~facet_0)(v11, 32);
    std::locale::~locale(&__b);
    *(v6 + 36) = v10;
    if (!v7)
    {
      goto LABEL_29;
    }
  }

  else if (!v7)
  {
    goto LABEL_29;
  }

  v12 = *(v6 + 3);
  v13 = v12 <= a3;
  v14 = v12 - a3;
  if (v13)
  {
    v15 = 0;
  }

  else
  {
    v15 = v14;
  }

  if (v9 - a2 >= 1 && (*(*v7 + 96))(v7, a2, v9 - a2) != v9 - a2)
  {
    goto LABEL_29;
  }

  if (v15 >= 1)
  {
    if (v15 >= 0x7FFFFFFFFFFFFFF8)
    {
      sub_2460D368C();
    }

    if (v15 >= 0x17)
    {
      operator new();
    }

    v22 = v15;
    memset(&__b, v10, v15);
    *(&__b.__locale_ + v15) = 0;
    if (v22 >= 0)
    {
      p_b = &__b;
    }

    else
    {
      p_b = __b.__locale_;
    }

    v17 = (*(*v7 + 96))(v7, p_b, v15);
    v18 = v17;
    if ((v22 & 0x80000000) == 0)
    {
      if (v17 != v15)
      {
        goto LABEL_29;
      }

      goto LABEL_26;
    }

    operator delete(__b.__locale_);
    if (v18 != v15)
    {
LABEL_29:
      std::ios_base::clear((a1 + *(*a1 - 24)), *(a1 + *(*a1 - 24) + 32) | 5);
      goto LABEL_30;
    }
  }

LABEL_26:
  if (v8 - v9 >= 1 && (*(*v7 + 96))(v7, v9, v8 - v9) != v8 - v9)
  {
    goto LABEL_29;
  }

  *(v6 + 3) = 0;
LABEL_30:
  MEMORY[0x24C199450](v20);
  return a1;
}

os_log_t sub_2460EACAC()
{
  result = os_log_create("com.apple.CoreOCModules", "General");
  qword_27EE3F390 = result;
  return result;
}

uint64_t OCFramingGuideGetTypeID()
{
  if (qword_27EE3F3A0 != -1)
  {
    dispatch_once(&qword_27EE3F3A0, &unk_2858EBAE8);
  }

  return qword_27EE3F3A8;
}

uint64_t sub_2460EAD24()
{
  qword_27EE3F3B0 = 0;
  *algn_27EE3F3B8 = "OCFramingGuide";
  qword_27EE3F3C0 = sub_2460EAE7C;
  unk_27EE3F3C8 = 0;
  qword_27EE3F3D8 = 0;
  unk_27EE3F3E0 = 0;
  qword_27EE3F3D0 = sub_2460EAE3C;
  qword_27EE3F3E8 = sub_2460EADEC;
  qword_27EE3F3F0 = sub_2460EAD9C;
  result = _CFRuntimeRegisterClass();
  qword_27EE3F3A8 = result;
  return result;
}

CFStringRef sub_2460EAD9C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCFramingGuide %p [%p]>", a1, v3);
}

CFStringRef sub_2460EADEC(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCFramingGuide %p [%p]>", a1, v3);
}

double sub_2460EAE3C(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 64);
    if (v2)
    {
      CFRelease(v2);
    }

    result = 0.0;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  return result;
}

double sub_2460EAE7C(_OWORD *a1)
{
  result = 0.0;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  return result;
}

uint64_t OCFramingGuideCreate(__int128 *a1, void *a2)
{
  result = 4294967294;
  if (a1 && a2)
  {
    if (qword_27EE3F3A0 != -1)
    {
      dispatch_once(&qword_27EE3F3A0, &unk_2858EBAE8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v6 = Instance;
      result = 0;
      v7 = *a1;
      v8 = a1[2];
      v6[2] = a1[1];
      v6[3] = v8;
      v6[1] = v7;
      *a2 = v6;
    }

    else
    {
      return 4294967293;
    }
  }

  return result;
}

uint64_t OCFramingGuideStart(uint64_t a1, simd_float4 a2, simd_float4 a3, simd_float4 a4, simd_float4 a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (*(a1 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  v10 = *(a1 + 32);
  v144 = *(a1 + 36);
  v148 = *(a1 + 16);
  v11 = *(a1 + 52);
  v12 = *(a1 + 60);
  if (qword_27EE3F290 != -1)
  {
    dispatch_once(&qword_27EE3F290, &unk_2858EBA28);
  }

  Instance = _CFRuntimeCreateInstance();
  if (!Instance)
  {
    return 4294967293;
  }

  v14 = Instance;
  v15 = operator new(0x80uLL, MEMORY[0x277D826F0]);
  if (v15)
  {
    v16 = v15;
    v127 = v14;
    *v15 = v148;
    *(v15 + 4) = v10;
    *(v15 + 20) = v144;
    *(v15 + 36) = v11;
    v15[44] = v12;
    *(v15 + 6) = 0;
    v17 = (v15 + 48);
    *(v15 + 5) = 0u;
    v18 = v15 + 80;
    *(v15 + 6) = 0u;
    *(v15 + 7) = 0;
    *(v15 + 8) = 0;
    *(v15 + 18) = 0;
    *(v15 + 28) = 1065353216;
    v179.columns[0] = a2;
    v179.columns[1] = a3;
    v179.columns[2] = a4;
    v179.columns[3] = a5;
    v180 = __invert_f4(v179);
    v149 = v180.columns[3];
    v167 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v180.columns[0], COERCE_FLOAT(*v16->f32)), v180.columns[1], *v16, 1), v180.columns[2], *v16->f32, 2);
    v180.columns[3] = vmulq_f32(a6, a6);
    *v180.columns[3].f32 = vadd_f32(*v180.columns[3].f32, *&vextq_s8(v180.columns[3], v180.columns[3], 8uLL));
    v19 = vadd_f32(*v180.columns[3].f32, vdup_lane_s32(*v180.columns[3].f32, 1)).u32[0];
    v20 = vrsqrte_f32(v19);
    v21 = vmul_f32(v20, vrsqrts_f32(v19, vmul_f32(v20, v20)));
    v22 = vmulq_n_f32(a6, vmul_f32(v21, vrsqrts_f32(v19, vmul_f32(v21, v21))).f32[0]);
    v23 = vmulq_f32(a7, a7);
    *v23.i8 = vadd_f32(*v23.i8, *&vextq_s8(v23, v23, 8uLL));
    v21.i32[0] = vadd_f32(*v23.i8, vdup_lane_s32(*v23.i8, 1)).u32[0];
    v24 = vrsqrte_f32(v21.u32[0]);
    v25 = vmul_f32(v24, vrsqrts_f32(v21.u32[0], vmul_f32(v24, v24)));
    v26 = vmulq_n_f32(a7, vmul_f32(v25, vrsqrts_f32(v21.u32[0], vmul_f32(v25, v25))).f32[0]);
    v27 = vmulq_f32(a8, a8);
    *v27.i8 = vadd_f32(*v27.i8, *&vextq_s8(v27, v27, 8uLL));
    v25.i32[0] = vadd_f32(*v27.i8, vdup_lane_s32(*v27.i8, 1)).u32[0];
    v28 = vrsqrte_f32(v25.u32[0]);
    v29 = vmul_f32(v28, vrsqrts_f32(v25.u32[0], vmul_f32(v28, v28)));
    v30 = vmulq_n_f32(a8, vmul_f32(v29, vrsqrts_f32(v25.u32[0], vmul_f32(v29, v29))).f32[0]);
    v142 = v26;
    v145 = v22;
    v164 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v180.columns[0], v22.f32[0]), v180.columns[1], *v22.f32, 1), v180.columns[2], v22, 2);
    v161 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v180.columns[0], v26.f32[0]), v180.columns[1], *v26.f32, 1), v180.columns[2], v26, 2);
    v140 = v30;
    v158 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v180.columns[0], v30.f32[0]), v180.columns[1], *v30.f32, 1), v180.columns[2], v30, 2);
    v155 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v180.columns[0], a9.f32[0]), v180.columns[1], *a9.f32, 1), v180.columns[2], a9, 2);
    v153 = sqrtf(vaddv_f32(*v180.columns[3].f32));
    v31 = sqrtf(vaddv_f32(*v23.i8));
    v32 = ((v31 / v16[4].f32[0]) + 0.5);
    v151 = sqrtf(vaddv_f32(*v27.i8));
    v134 = v32;
    if (v32 <= 1)
    {
      v32 = 1;
    }

    if (v32 >= 4)
    {
      v32 = 4;
    }

    v135 = v32;
    if (v16[5].i8[4])
    {
      v33 = 0.0;
    }

    else
    {
      v33 = -0.5236;
    }

    if (((v31 * 0.5) + ((sinf(v33) * 0.6) * v31)) < 0.1)
    {
      v33 = fminf(asinf(fmaxf(fminf(((v31 * -0.5) + 0.1) / (v31 * 0.6), 1.0), -1.0)), 0.2618);
    }

    v34 = 0;
    v35 = 0;
    v165 = vmlaq_laneq_f32(v164, v149, v145, 3);
    v162 = vmlaq_laneq_f32(v161, v149, v142, 3);
    v159 = vmlaq_laneq_f32(v158, v149, v140, 3);
    v156 = vmlaq_laneq_f32(v155, v149, a9, 3);
    v36 = vmlaq_f32(v167, 0, v149);
    v37 = v153 * 0.74;
    v38 = v151 * 0.74;
    if ((v151 * 0.74) >= (v153 * 0.74))
    {
      v39 = v153 * 0.74;
    }

    else
    {
      v39 = v151 * 0.74;
    }

    if (v37 >= v38)
    {
      v40 = v153 * 0.74;
    }

    else
    {
      v40 = v151 * 0.74;
    }

    v132 = v40;
    v133 = v39;
    v41 = (v31 * 1880.0) / 2560.0;
    v130 = v33;
    v131 = flt_24613FD60[v135 - 1];
    v129 = v131 - v33;
    v143 = v18;
    v137 = v17;
    v168 = v36;
    do
    {
      v43 = v131;
      if (v134 >= 2)
      {
        v43 = v130 + ((v129 * v34) / (v135 - 1));
      }

      v136 = v34;
      v138 = v43;
      v45 = __sincosf_stret(v43);
      v46 = 0;
      v47 = v133 * v45.__cosval;
      v48 = v16[2].f32[1];
      if (v48 >= (v133 * v45.__cosval))
      {
        v47 = v16[2].f32[1];
      }

      if (v48 < (v132 * v45.__cosval))
      {
        v48 = v132 * v45.__cosval;
      }

      v49 = v48 * 6.2832;
      v50 = v16[3].f32[1];
      if (v50 < 0.001)
      {
        v50 = 0.001;
      }

      v51 = ((v49 / v50) + 0.5);
      v52 = v47 * 6.2832;
      if (v16[3].f32[0] >= 0.001)
      {
        v53 = v16[3].f32[0];
      }

      else
      {
        v53 = 0.001;
      }

      v54 = ((v52 / v53) + 0.5);
      if (v54 >= 32)
      {
        v55 = 32;
      }

      else
      {
        v55 = ((v52 / v53) + 0.5);
      }

      if (v54 <= 16)
      {
        v56 = v55;
      }

      else
      {
        v56 = 16;
      }

      if (v51 <= v56)
      {
        v51 = v56;
      }

      if (v51 <= 3)
      {
        v57 = 3;
      }

      else
      {
        v57 = v51;
      }

      v58 = v57;
      *v44.i32 = (v31 * v45.__sinval) * 0.6;
      v146 = vdupq_lane_s32(v44, 0);
      v141 = v35;
      do
      {
        v63 = (v46 * 6.2832) / v58;
        v176 = 0u;
        v177 = 0u;
        v64 = v16[9].i32[0];
        v65 = v16[2].f32[1];
        if (v65 >= v37)
        {
          v66 = v16[2].f32[1];
        }

        else
        {
          v66 = v153 * 0.74;
        }

        v67 = v45.__cosval * v66;
        if (v65 < v38)
        {
          v65 = v151 * 0.74;
        }

        v68 = v45.__cosval * v65;
        v69 = __sincosf_stret(v63);
        v70 = vmlaq_f32(vaddq_f32(v156, vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(v165, v69.__cosval * v67), 0, v162), v159, -(v69.__sinval * v68))), v146, v168);
        v71 = vsubq_f32(v70, v156);
        v72 = vmulq_f32(v71, v71);
        v170 = v72.f32[2] + vaddv_f32(*v72.f32);
        v172 = v70;
        v73 = vrsqrte_f32(LODWORD(v170));
        v74 = vmul_f32(v73, vrsqrts_f32(LODWORD(v170), vmul_f32(v73, v73)));
        v75 = vmulq_n_f32(v71, vmul_f32(v74, vrsqrts_f32(LODWORD(v170), vmul_f32(v74, v74))).f32[0]);
        v174 = v75;
        if ((v16[5].i8[4] & 1) == 0)
        {
          v76 = vmulq_f32(v168, v75);
          v76.f32[0] = v76.f32[2] + vaddv_f32(*v76.f32);
          if (v76.f32[0] < 0.0)
          {
            v77 = vmlsq_lane_f32(v75, v168, *v76.f32, 0);
            v78 = vmulq_f32(v77, v77);
            *&v79 = v78.f32[2] + vaddv_f32(*v78.f32);
            *v78.f32 = vrsqrte_f32(v79);
            *v78.f32 = vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32)));
            v174 = vmulq_n_f32(v77, vmul_f32(*v78.f32, vrsqrts_f32(v79, vmul_f32(*v78.f32, *v78.f32))).f32[0]);
          }
        }

        v80 = __sincosf_stret(v63 + 1.5708);
        v81.f32[0] = v153 * v80.__cosval;
        v81.f32[1] = v151 * v80.__sinval;
        v82 = (sqrtf(vaddv_f32(vmul_f32(v81, v81))) * 1880.0) / 1920.0;
        if (v41 >= v82)
        {
          v82 = (v31 * 1880.0) / 2560.0;
        }

        v176.i32[0] = fmaxf((v82 * 1.2) - sqrtf(v170), 0.25);
        v176.i32[1] = v35 + v46;
        v176.i32[2] = v64;
        v177.i32[0] = 1;
        v83 = v16[7];
        v84 = v16[8];
        if (v83 < v84)
        {
          v59 = v177;
          *(v83 + 2) = v176;
          *(v83 + 3) = v59;
          *v83 = v172;
          *(v83 + 1) = v174;
          v60 = (v83 + 64);
        }

        else
        {
          v85 = *v17;
          v86 = v83 - *v17;
          v87 = v86 >> 6;
          v88 = (v86 >> 6) + 1;
          if (v88 >> 58)
          {
LABEL_106:
            sub_2460D368C();
          }

          v89 = v84 - v85;
          if (v89 >> 5 > v88)
          {
            v88 = v89 >> 5;
          }

          if (v89 >= 0x7FFFFFFFFFFFFFC0)
          {
            v90 = 0x3FFFFFFFFFFFFFFLL;
          }

          else
          {
            v90 = v88;
          }

          if (v90)
          {
            if (!(v90 >> 58))
            {
              operator new();
            }

            goto LABEL_107;
          }

          v91 = (v87 << 6);
          *v91 = v172;
          v91[1] = v174;
          v92 = v177;
          v91[2] = v176;
          v91[3] = v92;
          v60 = (v87 << 6) + 64;
          f32 = v91[-4 * (v86 >> 6)].f32;
          memcpy(f32, v85, v86);
          v16[6] = f32;
          v16[7] = v60;
          v16[8] = 0;
          if (v85)
          {
            operator delete(v85);
          }

          v18 = v143;
          v35 = v141;
        }

        v16[7] = v60;
        v61 = ((v60 - *&v16[6]) >> 6) - 1;
        v178 = &v176.i8[4];
        *(sub_246105D0C(v18, v176.u32[1]) + 5) = v61;
        ++v46;
      }

      while (v57 != v46);
      v42 = v35 + v46;
      if (v138 > 0.0 && (v16[5].i8[4] & 1) != 0)
      {
        v94 = 0;
        *v62.i32 = (v31 * v45.__sinval) * -0.6;
        v147 = vdupq_lane_s32(v62, 0);
        v139 = v35 + v46;
        do
        {
          v176 = 0u;
          v177 = 0u;
          v98 = v16[9].i32[0];
          v99 = v16[2].f32[1];
          if (v99 >= v37)
          {
            v100 = v16[2].f32[1];
          }

          else
          {
            v100 = v153 * 0.74;
          }

          v101 = v45.__cosval * v100;
          if (v99 < v38)
          {
            v99 = v151 * 0.74;
          }

          v102 = v45.__cosval * v99;
          v103 = __sincosf_stret((v94 * 6.2832) / v58);
          v104 = vmlaq_f32(vaddq_f32(v156, vmlaq_n_f32(vmlaq_f32(vmulq_n_f32(v165, v103.__cosval * v101), 0, v162), v159, -(v103.__sinval * v102))), v147, v168);
          v105 = vsubq_f32(v104, v156);
          v106 = vmulq_f32(v105, v105);
          v171 = v106.f32[2] + vaddv_f32(*v106.f32);
          v173 = v104;
          v107 = vrsqrte_f32(LODWORD(v171));
          v108 = vmul_f32(v107, vrsqrts_f32(LODWORD(v171), vmul_f32(v107, v107)));
          v109 = vmulq_n_f32(v105, vmul_f32(v108, vrsqrts_f32(LODWORD(v171), vmul_f32(v108, v108))).f32[0]);
          v175 = v109;
          if ((v16[5].i8[4] & 1) == 0)
          {
            v110 = vmulq_f32(v168, v109);
            v110.f32[0] = v110.f32[2] + vaddv_f32(*v110.f32);
            if (v110.f32[0] < 0.0)
            {
              v111 = vmlsq_lane_f32(v109, v168, *v110.f32, 0);
              v112 = vmulq_f32(v111, v111);
              *&v113 = v112.f32[2] + vaddv_f32(*v112.f32);
              *v112.f32 = vrsqrte_f32(v113);
              *v112.f32 = vmul_f32(*v112.f32, vrsqrts_f32(v113, vmul_f32(*v112.f32, *v112.f32)));
              v175 = vmulq_n_f32(v111, vmul_f32(*v112.f32, vrsqrts_f32(v113, vmul_f32(*v112.f32, *v112.f32))).f32[0]);
            }
          }

          v114 = __sincosf_stret(((v94 * 6.2832) / v58) + 1.5708);
          v115.f32[0] = v153 * v114.__cosval;
          v115.f32[1] = v151 * v114.__sinval;
          v116 = (sqrtf(vaddv_f32(vmul_f32(v115, v115))) * 1880.0) / 1920.0;
          if (v41 >= v116)
          {
            v116 = (v31 * 1880.0) / 2560.0;
          }

          v176.i32[0] = fmaxf((v116 * 1.2) - sqrtf(v171), 0.25);
          v176.i32[1] = v139 + v94;
          v176.i32[2] = v98;
          v177.i32[0] = 1;
          v117 = v16[7];
          v118 = v16[8];
          if (v117 < v118)
          {
            v95 = v177;
            *(v117 + 2) = v176;
            *(v117 + 3) = v95;
            *v117 = v173;
            *(v117 + 1) = v175;
            v96 = (v117 + 64);
          }

          else
          {
            v119 = *v137;
            v120 = v117 - *v137;
            v121 = v120 >> 6;
            v122 = (v120 >> 6) + 1;
            if (v122 >> 58)
            {
              goto LABEL_106;
            }

            v123 = v118 - v119;
            if (v123 >> 5 > v122)
            {
              v122 = v123 >> 5;
            }

            if (v123 >= 0x7FFFFFFFFFFFFFC0)
            {
              v124 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v124 = v122;
            }

            if (v124)
            {
              if (!(v124 >> 58))
              {
                operator new();
              }

LABEL_107:
              sub_2460D368C();
            }

            v125 = (v121 << 6);
            *v125 = v173;
            v125[1] = v175;
            v126 = v177;
            v125[2] = v176;
            v125[3] = v126;
            v96 = (v121 << 6) + 64;
            memcpy(0, v119, v120);
            v16[6] = 0;
            v16[7] = v96;
            v16[8] = 0;
            if (v119)
            {
              operator delete(v119);
            }

            v18 = v143;
          }

          v16[7] = v96;
          v97 = ((v96 - *&v16[6]) >> 6) - 1;
          v178 = &v176.i8[4];
          *(sub_246105D0C(v18, v176.u32[1]) + 5) = v97;
          ++v94;
        }

        while (v57 != v94);
        v42 = v141 + v46 + v94;
        v17 = v137;
      }

      v34 = v136 + 1;
      v35 = v42;
    }

    while (v136 + 1 != v135);
    result = 0;
    v127[2] = v16;
    *(a1 + 64) = v127;
  }

  else
  {
    v14[2] = 0;
    CFRelease(v14);
    return 4294967293;
  }

  return result;
}

uint64_t OCFramingGuideSignalNewFrame(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = (a1 + 64);
  v1 = *(a1 + 64);
  if (!v1)
  {
    return 4294967294;
  }

  *v2 = 0;
  v3 = sub_2460E4354(v1, v2);
  if (!v3)
  {
    v4 = *(*v2 + 16);
    ++*(v4 + 72);
    v5 = *(v4 + 48);
    v6 = *(v4 + 56) - v5;
    v7 = v6 >> 6;
    if (v6)
    {
      v8 = 0;
      do
      {
        v5 = *(v4 + 48);
        v9 = (v5 + (v8 << 6));
        while (v9[12] != 3 || *(v4 + 16) + v9[10] > *(v4 + 72))
        {
          ++v8;
          v9 += 16;
          if (v8 >= v7)
          {
            goto LABEL_38;
          }
        }

        if (v8 != --v7)
        {
          v10 = *(v4 + 88);
          if (v10)
          {
            v11 = v9[9];
            v12 = vcnt_s8(v10);
            v12.i16[0] = vaddlv_u8(v12);
            if (v12.u32[0] > 1uLL)
            {
              v13 = v11;
              if (*&v10 <= v11)
              {
                v13 = v11 % v10.i32[0];
              }
            }

            else
            {
              v13 = (v10.i32[0] - 1) & v11;
            }

            v14 = *(*(v4 + 80) + 8 * v13);
            if (v14)
            {
              v15 = *v14;
              if (*v14)
              {
                if (v12.u32[0] < 2uLL)
                {
                  v16 = *&v10 - 1;
                  while (1)
                  {
                    v17 = *(v15 + 8);
                    if (v17 == v11)
                    {
                      if (*(v15 + 16) == v11)
                      {
                        goto LABEL_32;
                      }
                    }

                    else if ((v17 & v16) != v13)
                    {
                      goto LABEL_35;
                    }

                    v15 = *v15;
                    if (!v15)
                    {
                      goto LABEL_35;
                    }
                  }
                }

                do
                {
                  v18 = *(v15 + 8);
                  if (v18 == v11)
                  {
                    if (*(v15 + 16) == v11)
                    {
LABEL_32:
                      sub_246106008(&__p, (v4 + 80), v15);
                      if (__p)
                      {
                        operator delete(__p);
                      }

                      v5 = *(v4 + 48);
                      break;
                    }
                  }

                  else
                  {
                    if (v18 >= *&v10)
                    {
                      v18 %= *&v10;
                    }

                    if (v18 != v13)
                    {
                      break;
                    }
                  }

                  v15 = *v15;
                }

                while (v15);
              }
            }
          }

LABEL_35:
          v19 = (v5 + (v8 << 6));
          v20 = (v5 + (v7 << 6));
          v22 = v19[2];
          v21 = v19[3];
          v24 = *v19;
          v23 = v19[1];
          v25 = v20[3];
          v27 = *v20;
          v26 = v20[1];
          v19[2] = v20[2];
          v19[3] = v25;
          *v19 = v27;
          v19[1] = v26;
          *v20 = v24;
          v20[1] = v23;
          v20[2] = v22;
          v20[3] = v21;
          v28 = *(v4 + 48) + (v8 << 6);
          v29 = *(v28 + 36);
          __p = (v28 + 36);
          *(sub_246105D0C((v4 + 80), v29) + 5) = v8;
        }
      }

      while (v8 < v7);
      v5 = *(v4 + 48);
    }

LABEL_38:
    v30 = *(v4 + 56);
    v31 = (v30 - v5) >> 6;
    v32 = v7 - v31;
    if (v7 > v31)
    {
      v33 = *(v4 + 64);
      if (v32 > (v33 - v30) >> 6)
      {
        if (!(v7 >> 58))
        {
          v34 = v33 - v5;
          v35 = v34 >> 5;
          if (v34 >> 5 <= v7)
          {
            v35 = v7;
          }

          v36 = v34 >= 0x7FFFFFFFFFFFFFC0;
          v37 = 0x3FFFFFFFFFFFFFFLL;
          if (!v36)
          {
            v37 = v35;
          }

          if (!(v37 >> 58))
          {
            operator new();
          }

          sub_2460D368C();
        }

        sub_2460D368C();
      }

      bzero(*(v4 + 56), v32 << 6);
      v3 = 0;
      v39 = v30 + (v32 << 6);
      goto LABEL_51;
    }

    v3 = 0;
    if (v7 < v31)
    {
      v39 = v5 + (v7 << 6);
LABEL_51:
      *(v4 + 56) = v39;
    }
  }

  v40 = v3;
  CFRelease(v1);
  return v40;
}

uint64_t OCFramingGuideGetIsCameraInPosition(uint64_t a1, unsigned int a2, char *a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, float32x4_t a11)
{
  v57 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294967294;
  }

  result = 4294967294;
  if (a3)
  {
    v13 = *(a1 + 64);
    if (v13)
    {
      v14 = *(v13 + 16);
      v15 = *(v14 + 88);
      if (!v15)
      {
        return 0xFFFFFFFFLL;
      }

      v17 = vcnt_s8(v15);
      v17.i16[0] = vaddlv_u8(v17);
      if (v17.u32[0] > 1uLL)
      {
        v18 = a2;
        if (v15 <= a2)
        {
          v18 = a2 % v15;
        }
      }

      else
      {
        v18 = (v15 - 1) & a2;
      }

      v19 = *(*(v14 + 80) + 8 * v18);
      if (!v19)
      {
        return 0xFFFFFFFFLL;
      }

      v20 = *v19;
      if (!v20)
      {
        return 0xFFFFFFFFLL;
      }

      if (v17.u32[0] < 2uLL)
      {
        v21 = v15 - 1;
        result = 0xFFFFFFFFLL;
        while (1)
        {
          v22 = v20[1];
          if (v22 == a2)
          {
            if (*(v20 + 4) == a2)
            {
              goto LABEL_27;
            }
          }

          else if ((v22 & v21) != v18)
          {
            return 0xFFFFFFFFLL;
          }

          v20 = *v20;
          if (!v20)
          {
            return result;
          }
        }
      }

      result = 0xFFFFFFFFLL;
      do
      {
        v23 = v20[1];
        if (v23 == a2)
        {
          if (*(v20 + 4) == a2)
          {
LABEL_27:
            v24 = (*(v14 + 48) + (*(v20 + 5) << 6));
            if ((v24[6].i32[0] - 1) <= 1)
            {
              v48 = a4;
              v26 = vmlaq_f32(vmulq_f32(a8, 0), 0, a9);
              __asm { FMOV            V4.4S, #-1.0 }

              v53 = vmlaq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a4, COERCE_FLOAT(*v24[2].f32)), a5, v24[2], 1), a6, *v24[2].f32, 2), 0, a7);
              v54 = vmlaq_f32(vmlaq_f32(v26, _Q4, a10), 0, a11);
              v32 = acos(-1.0);
              v33 = cosf((*(v14 + 36) * v32) / 180.0);
              v34 = vmulq_f32(v54, v53);
              v35 = vaddv_f32(vadd_f32(*v34.i8, *&vextq_s8(v34, v34, 8uLL)));
              if (v35 >= -v33)
              {
                if (qword_27EE3F568 != -1)
                {
                  dispatch_once(&qword_27EE3F568, &unk_2858EBD80);
                }

                v40 = qword_27EE3F560;
                if (!os_log_type_enabled(qword_27EE3F560, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_41;
                }

                *buf = 134349056;
                v56 = v35;
                v42 = "Station is not directly facing the camera: (%{public}f)";
              }

              else
              {
                v36 = vaddq_f32(a7, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v48, COERCE_FLOAT(*v24->f32)), a5, *v24, 1), a6, *v24->f32, 2));
                v37 = vmulq_f32(v54, vsubq_f32(v36, a11));
                v38 = vadd_f32(*v37.i8, *&vextq_s8(v37, v37, 8uLL));
                v39 = vaddv_f32(v38);
                if (vabds_f32(v39, v24[4].f32[0]) > *(v14 + 40))
                {
                  if (qword_27EE3F568 != -1)
                  {
                    dispatch_once(&qword_27EE3F568, &unk_2858EBD80);
                  }

                  v40 = qword_27EE3F560;
                  if (os_log_type_enabled(qword_27EE3F560, OS_LOG_TYPE_INFO))
                  {
                    v41 = vabds_f32(v39, v24[4].f32[0]);
                    *buf = 134349056;
                    v56 = v41;
                    v42 = "Camera not at the right distance from the station: (%{public}f)";
                    goto LABEL_40;
                  }

LABEL_41:
                  v43 = 0;
                  v44 = a3;
LABEL_42:
                  result = 0;
                  *v44 = v43;
                  return result;
                }

                v45 = vsubq_f32(vmlaq_n_f32(a11, v54, vadd_f32(v38, vdup_lane_s32(v38, 1)).f32[0]), v36);
                v46 = vmulq_f32(v45, v45);
                v47 = sqrtf(vaddv_f32(vadd_f32(*v46.i8, *&vextq_s8(v46, v46, 8uLL))));
                if (v47 <= 0.007)
                {
                  v44 = a3;
                  v43 = 1;
                  goto LABEL_42;
                }

                if (qword_27EE3F568 != -1)
                {
                  dispatch_once(&qword_27EE3F568, &unk_2858EBD80);
                }

                v40 = qword_27EE3F560;
                if (!os_log_type_enabled(qword_27EE3F560, OS_LOG_TYPE_INFO))
                {
                  goto LABEL_41;
                }

                *buf = 134349056;
                v56 = v47;
                v42 = "Camera not looking directly at station: (%{public}f)";
              }

LABEL_40:
              _os_log_impl(&dword_2460CF000, v40, OS_LOG_TYPE_INFO, v42, buf, 0xCu);
              goto LABEL_41;
            }

            return 0xFFFFFFFFLL;
          }
        }

        else
        {
          if (v23 >= v15)
          {
            v23 %= v15;
          }

          if (v23 != v18)
          {
            return 0xFFFFFFFFLL;
          }
        }

        v20 = *v20;
      }

      while (v20);
    }
  }

  return result;
}

uint64_t OCFramingGuideSetStationProgress(uint64_t a1, unsigned int a2, int a3)
{
  if (!a1)
  {
    return 4294967294;
  }

  v4 = (a1 + 64);
  v3 = *(a1 + 64);
  if (!v3)
  {
    return 4294967294;
  }

  *v4 = 0;
  v7 = sub_2460E4354(v3, v4);
  if (v7)
  {
    goto LABEL_33;
  }

  v8 = *(*v4 + 16);
  v9 = *(v8 + 88);
  if (!v9)
  {
    goto LABEL_32;
  }

  v10 = vcnt_s8(v9);
  v10.i16[0] = vaddlv_u8(v10);
  if (v10.u32[0] > 1uLL)
  {
    v11 = a2;
    if (v9 <= a2)
    {
      v11 = a2 % v9;
    }
  }

  else
  {
    v11 = (v9 - 1) & a2;
  }

  v13 = *(*(v8 + 80) + 8 * v11);
  if (!v13)
  {
    goto LABEL_32;
  }

  v14 = *v13;
  if (!v14)
  {
    goto LABEL_32;
  }

  if (v10.u32[0] < 2uLL)
  {
    v15 = v9 - 1;
    v7 = 0xFFFFFFFFLL;
    while (1)
    {
      v16 = v14[1];
      if (v16 == a2)
      {
        if (*(v14 + 4) == a2)
        {
          goto LABEL_28;
        }
      }

      else if ((v16 & v15) != v11)
      {
        goto LABEL_32;
      }

      v14 = *v14;
      if (!v14)
      {
        goto LABEL_33;
      }
    }
  }

  v7 = 0xFFFFFFFFLL;
  while (1)
  {
    v17 = v14[1];
    if (v17 == a2)
    {
      break;
    }

    if (v17 >= v9)
    {
      v17 %= v9;
    }

    if (v17 != v11)
    {
      goto LABEL_32;
    }

LABEL_22:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_33;
    }
  }

  if (*(v14 + 4) != a2)
  {
    goto LABEL_22;
  }

LABEL_28:
  v18 = *(v8 + 48) + (*(v14 + 5) << 6);
  if (*(v18 + 44) > a3 || (*(v18 + 48) - 1) > 1)
  {
LABEL_32:
    v7 = 0xFFFFFFFFLL;
    goto LABEL_33;
  }

  *(v18 + 44) = a3;
  v7 = 0;
  if (a3 >= 100)
  {
    *(v18 + 48) = 3;
    *(v18 + 40) = *(v8 + 72);
  }

LABEL_33:
  v19 = v7;
  CFRelease(v3);
  return v19;
}

uint64_t OCFramingGuideStop(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 64);
  if (!v2)
  {
    return 0xFFFFFFFFLL;
  }

  CFRelease(v2);
  result = 0;
  *(a1 + 64) = 0;
  return result;
}

void OCFramingGuideRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

BOOL savePixelBufferToJpeg(__CVBuffer *a1, const char *a2, uint64_t a3)
{
  v34[1] = *MEMORY[0x277D85DE8];
  v33 = *MEMORY[0x277CD2D48];
  v5 = objc_msgSend_numberWithFloat_(MEMORY[0x277CCABB0], a2, a3);
  v34[0] = v5;
  v7 = objc_msgSend_dictionaryWithObjects_forKeys_count_(MEMORY[0x277CBEAC0], v6, v34, &v33, 1);

  memset(length, 0, sizeof(length));
  v8 = MEMORY[0x24C1991E0](a1, v7, 0, &length[1], length);
  if (*&length[1])
  {
    IOSurfaceLock(*&length[1], 0, 0);
    BaseAddress = IOSurfaceGetBaseAddress(*&length[1]);
    v10 = CFDataCreateWithBytesNoCopy(0, BaseAddress, length[0], *MEMORY[0x277CBED00]);
    if (v10)
    {
      Width = CVPixelBufferGetWidth(a1);
      CVPixelBufferGetHeight(a1);
      v12 = CVBufferCopyAttachment(a1, *MEMORY[0x277CF3F70], 0);
      if (v12)
      {
        v13 = v12;
        v14 = H10ISP::H10ISPCreateEXIFDictFromMetadataDict(v12, Width);
        CFRelease(v13);
        if (v14)
        {
          goto LABEL_5;
        }
      }

      else
      {
        if (qword_27EE3F418 != -1)
        {
          dispatch_once(&qword_27EE3F418, &unk_2858EBB08);
        }

        v26 = qword_27EE3F410;
        if (os_log_type_enabled(qword_27EE3F410, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_2460CF000, v26, OS_LOG_TYPE_ERROR, "Failed to obtain CaptureSampleBufferAttachmentKey metadata dictionary!", buf, 2u);
        }

        v14 = H10ISP::H10ISPCreateEXIFDictFromMetadataDict(0, Width);
        if (v14)
        {
LABEL_5:
          v15 = *MEMORY[0x277CD3410];
          v16 = CVBufferCopyAttachment(a1, *MEMORY[0x277CD3410], 0);
          if (v16)
          {
            v17 = v16;
            CFDictionarySetValue(v14, v15, v16);
            CFRelease(v17);
          }

          EXIFJPEGData = CGImageCreateEXIFJPEGData();
          if (EXIFJPEGData)
          {
            v19 = fopen(a2, "wb");
            if (v19)
            {
              BytePtr = CFDataGetBytePtr(EXIFJPEGData);
              v21 = CFDataGetLength(EXIFJPEGData);
              fwrite(BytePtr, 1uLL, v21, v19);
              fclose(v19);
              IOSurfaceUnlock(*&length[1], 0, 0);
              CFRelease(*&length[1]);
              CFRelease(v10);
              CFRelease(v14);
              CFRelease(EXIFJPEGData);
              return 1;
            }

            if (qword_27EE3F418 != -1)
            {
              dispatch_once(&qword_27EE3F418, &unk_2858EBB08);
            }

            v29 = qword_27EE3F410;
            if (os_log_type_enabled(qword_27EE3F410, OS_LOG_TYPE_ERROR))
            {
              *buf = 136380675;
              v32 = a2;
              _os_log_error_impl(&dword_2460CF000, v29, OS_LOG_TYPE_ERROR, "Failed to open output JPEG file: %{private}s", buf, 0xCu);
            }

            IOSurfaceUnlock(*&length[1], 0, 0);
            CFRelease(*&length[1]);
            CFRelease(v10);
            CFRelease(v14);
            CFRelease(EXIFJPEGData);
          }

          else
          {
            if (qword_27EE3F418 != -1)
            {
              dispatch_once(&qword_27EE3F418, &unk_2858EBB08);
            }

            v28 = qword_27EE3F410;
            if (os_log_type_enabled(qword_27EE3F410, OS_LOG_TYPE_ERROR))
            {
              *buf = 0;
              _os_log_error_impl(&dword_2460CF000, v28, OS_LOG_TYPE_ERROR, "Failed to create EXIF/JPEG formatted data!", buf, 2u);
            }

            IOSurfaceUnlock(*&length[1], 0, 0);
            CFRelease(*&length[1]);
            CFRelease(v10);
            CFRelease(v14);
          }

          return 0;
        }
      }

      if (qword_27EE3F418 != -1)
      {
        dispatch_once(&qword_27EE3F418, &unk_2858EBB08);
      }

      v27 = qword_27EE3F410;
      if (os_log_type_enabled(qword_27EE3F410, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2460CF000, v27, OS_LOG_TYPE_ERROR, "Failed to create JPEG properties dictionary!", buf, 2u);
      }

      IOSurfaceUnlock(*&length[1], 0, 0);
      CFRelease(*&length[1]);
      CFRelease(v10);
    }

    else
    {
      if (qword_27EE3F418 != -1)
      {
        dispatch_once(&qword_27EE3F418, &unk_2858EBB08);
      }

      v25 = qword_27EE3F410;
      if (os_log_type_enabled(qword_27EE3F410, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_2460CF000, v25, OS_LOG_TYPE_ERROR, "Failed to create JPEG code stream", buf, 2u);
      }

      IOSurfaceUnlock(*&length[1], 0, 0);
      CFRelease(*&length[1]);
    }

    return 0;
  }

  v23 = v8;
  if (qword_27EE3F418 != -1)
  {
    dispatch_once(&qword_27EE3F418, &unk_2858EBB08);
  }

  v24 = qword_27EE3F410;
  result = os_log_type_enabled(qword_27EE3F410, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *buf = 67240192;
    LODWORD(v32) = v23;
    _os_log_error_impl(&dword_2460CF000, v24, OS_LOG_TYPE_ERROR, "Failed to encode JPEG, error: 0x%{public}08X\n", buf, 8u);
    return 0;
  }

  return result;
}

uint64_t sub_2460EC9C8()
{
  qword_27EE3F410 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

CVPixelBufferRef copyPixelBufferForType(__CVBuffer *a1, OSType a2)
{
  pixelBufferOut = 0;
  v4 = *MEMORY[0x277CBECE8];
  Width = CVPixelBufferGetWidth(a1);
  Height = CVPixelBufferGetHeight(a1);
  v7 = CVPixelBufferCreate(v4, Width, Height, a2, 0, &pixelBufferOut);
  result = 0;
  if (!v7)
  {
    cf = 0;
    if (VTPixelTransferSessionCreate(v4, &cf))
    {
      CVPixelBufferRelease(pixelBufferOut);
      return 0;
    }

    else if (VTPixelTransferSessionTransferImage(cf, a1, pixelBufferOut))
    {
      CVPixelBufferRelease(pixelBufferOut);
      CFRelease(cf);
      return 0;
    }

    else
    {
      VTPixelTransferSessionInvalidate(cf);
      CFRelease(cf);
      return pixelBufferOut;
    }
  }

  return result;
}

uint64_t OCMeshingCreate(uint64_t a1, void *a2)
{
  v3 = operator new(8uLL, MEMORY[0x277D826F0]);
  if (!v3)
  {
    return 4294967293;
  }

  v4 = v3;
  v5 = operator new(0x50uLL, MEMORY[0x277D826F0]);
  if (v5)
  {
    v5[3] = 0u;
    v5[4] = 0u;
    *v5 = 0u;
    v5[1] = 0u;
    v5[2] = 0u;
    *(v5 + 3) = v5 + 2;
    *(v5 + 6) = 0;
    *(v5 + 7) = 0;
    *(v5 + 8) = 0;
  }

  v6 = 0;
  *v4 = v5;
  *a2 = v4;
  return v6;
}

uint64_t OCMeshingDestroy(char ***a1)
{
  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    v3 = v1[6];
    if (v3)
    {
      v1[7] = v3;
      operator delete(v3);
    }

    sub_2460D3D4C(v1[4]);
    v4 = *v1;
    if (*v1)
    {
      v5 = v1[1];
      v6 = *v1;
      if (v5 != v4)
      {
        do
        {
          sub_2460D3D4C(*(v5 - 3));
          sub_2460D3D4C(*(v5 - 6));
          sub_2460D3D4C(*(v5 - 9));
          v5 -= 128;
        }

        while (v5 != v4);
        v6 = *v1;
      }

      v1[1] = v4;
      operator delete(v6);
    }

    MEMORY[0x24C1995D0](v1, 0x10A0C40554643BBLL);
    a1 = v2;
  }

  MEMORY[0x24C1995D0](a1, 0x20C4093837F09);
  return 0;
}

uint64_t sub_2460ECD10()
{
  qword_27EE3F430 = 0;
  *algn_27EE3F438 = "OCMesh";
  qword_27EE3F440 = sub_2460ECE70;
  unk_27EE3F448 = 0;
  qword_27EE3F458 = 0;
  unk_27EE3F460 = 0;
  qword_27EE3F450 = sub_2460ECE28;
  qword_27EE3F468 = sub_2460ECDD8;
  qword_27EE3F470 = sub_2460ECD88;
  result = _CFRuntimeRegisterClass();
  qword_27EE3F428 = result;
  return result;
}

CFStringRef sub_2460ECD88(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCMesh %p [%p]>", a1, v3);
}

CFStringRef sub_2460ECDD8(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCMesh %p [%p]>", a1, v3);
}

uint64_t sub_2460ECE28(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = *(result + 16);
    if (result)
    {
      result = MEMORY[0x24C1995D0](result, 0x1080C409B94441ALL);
    }

    *(v1 + 16) = 0;
  }

  return result;
}

uint64_t OCMeshingProcess(float32x4_t a1, float32x4_t a2, float32x4_t a3, __n128 a4, uint64_t a5, __int128 *a6, unint64_t a7)
{
  v155 = *MEMORY[0x277D85DE8];
  v7 = vmulq_f32(a1, a1);
  v8 = vmulq_f32(a2, a2);
  v9 = vmulq_f32(a3, a3);
  v100 = sqrtf(v9.f32[2] + vaddv_f32(*v9.f32));
  v109 = &unk_2858EBD20;
  __p = 0;
  v10 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)), vadd_f32(vzip1_s32(*v7.i8, *v8.i8), vzip2_s32(*v7.i8, *v8.i8))));
  v111 = 0;
  v112 = 0;
  v101 = v10;
  if (a7)
  {
    v11 = a7;
    sub_2460FDD5C(&__p, a7);
    v10 = v101;
    v13 = __p;
    do
    {
      v14 = *a6;
      v15 = a6[2];
      v13[1] = a6[1];
      v13[2] = v15;
      *v13 = v14;
      v13 += 3;
      a6 += 3;
      --v11;
    }

    while (v11);
  }

  v89 = vdiv_f32(v10, vdup_n_s32(0x42480000u));
  v103 = v100 / 50.0;
  v132 = &unk_2858EBD48;
  *v133 = &v109;
  v135 = &v132;
  v131 = v130;
  sub_246105C78(&v132, v130);
  v132[4](&v132);
  v104 = 0u;
  v105 = 0u;
  v106 = 0u;
  *v107 = 0u;
  v108 = 0;
  if (fabsf(vmuls_lane_f32(v89.f32[0], v89, 1) * (v100 / 50.0)) < 0.00001)
  {
    goto LABEL_62;
  }

  v88 = vcvtps_s32_f32(vdiv_f32(v101, v89).f32[0]);
  if (v88 < 1)
  {
    goto LABEL_62;
  }

  v16 = vcvt_s32_f32(vrndp_f32(vdiv_f32(__PAIR64__(v101.u32[1], LODWORD(v100)), __PAIR64__(v89.u32[1], LODWORD(v103)))));
  v17 = vcgtz_s32(v16);
  if ((v17.i32[1] & v17.i32[0] & 1) == 0)
  {
    goto LABEL_62;
  }

  v18 = 0;
  v19 = a4.n128_f32[2] + (v100 * -0.5);
  v20 = sqrtf((vmul_f32(v89, v89).f32[0] + (v89.f32[1] * v89.f32[1])) + (v103 * v103)) * 0.5;
  v21 = vadd_f32(a4.n128_u64[0], vmul_f32(v101, 0xBF000000BF000000));
  v92 = vmul_f32(v89, 0x3F0000003F000000);
  v91 = v16.i32[1];
  v22 = v16.i32[0];
  v23 = &loc_24613F000;
  v95 = v20;
  v94 = v16.i32[0];
  while (2)
  {
    v24 = 0;
    v90 = v18;
    v97 = v21.f32[0] + (v18 * v89.f32[0]);
    while (2)
    {
      v25 = 0;
      v93 = v24;
      v26.f32[0] = v97;
      v26.f32[1] = v21.f32[1] + (v24 * v89.f32[1]);
      v102 = vadd_f32(v26, v92);
      v96 = v26.f32[1];
      while (2)
      {
        v27 = v19 + (v25 * v103);
        v132 = v102;
        *v133 = v27 + (v103 * 0.5);
        if (fabsf((*v109)(&v109, &v132)) > v20)
        {
          goto LABEL_13;
        }

        v132 = __PAIR64__(LODWORD(v96), LODWORD(v97));
        *v133 = v19 + (v25 * v103);
        *&v133[4] = v97 + v89.f32[0];
        *&v133[8] = v96;
        v134 = *v133;
        *&v135 = v97 + v89.f32[0];
        *(&v135 + 1) = v96;
        v136 = v27 + v103;
        v137 = __PAIR64__(LODWORD(v96), LODWORD(v97));
        v138 = v27 + v103;
        *&v139 = v97;
        *(&v139 + 1) = v96 + v89.f32[1];
        v140 = *v133;
        *&v141 = v97 + v89.f32[0];
        *(&v141 + 1) = v96 + v89.f32[1];
        v142 = *v133;
        *&v143 = v97 + v89.f32[0];
        *(&v143 + 1) = v96 + v89.f32[1];
        v144 = v27 + v103;
        *&v145 = v97;
        *(&v145 + 1) = v96 + v89.f32[1];
        v146 = v27 + v103;
        *v113 = __PAIR64__(LODWORD(v96), LODWORD(v97));
        *&v113[8] = *v133;
        v28 = (*v109)(&v109, v113);
        if (fabsf(v28) < 1.1755e-38)
        {
          v28 = v28 + 0.000001;
        }

        v147 = v28;
        *v113 = *&v133[4];
        *&v113[8] = v134;
        v29 = (*v109)(&v109, v113);
        if (fabsf(v29) < 1.1755e-38)
        {
          v29 = v29 + 0.000001;
        }

        v148 = v29;
        *v113 = v135;
        *&v113[8] = v136;
        v30 = (*v109)(&v109, v113);
        if (fabsf(v30) < 1.1755e-38)
        {
          v30 = v30 + 0.000001;
        }

        v149 = v30;
        *v113 = v137;
        *&v113[8] = v138;
        v31 = (*v109)(&v109, v113);
        if (fabsf(v31) < 1.1755e-38)
        {
          v31 = v31 + 0.000001;
        }

        v150 = v31;
        *v113 = v139;
        *&v113[8] = v140;
        v32 = (*v109)(&v109, v113);
        if (fabsf(v32) < 1.1755e-38)
        {
          v32 = v32 + 0.000001;
        }

        v151 = v32;
        *v113 = v141;
        *&v113[8] = v142;
        v33 = (*v109)(&v109, v113);
        if (fabsf(v33) < 1.1755e-38)
        {
          v33 = v33 + 0.000001;
        }

        v152 = v33;
        *v113 = v143;
        *&v113[8] = v144;
        v34 = (*v109)(&v109, v113);
        if (fabsf(v34) < 1.1755e-38)
        {
          v34 = v34 + 0.000001;
        }

        v153 = v34;
        *v113 = v145;
        *&v113[8] = v146;
        v35 = (*v109)(&v109, v113);
        v36 = 0;
        if (fabsf(v35) < 1.1755e-38)
        {
          v35 = v35 + 0.000001;
        }

        v154 = v35;
        v120 = 0u;
        v121 = 0u;
        v118 = 0u;
        v119 = 0u;
        v116 = 0u;
        v117 = 0u;
        v114 = 0u;
        v115 = 0u;
        *&v113[4] = 0u;
        v113[0] = (v147 < 0.0) | (2 * (v148 < 0.0)) | (4 * (v149 < 0.0)) | (8 * (v150 < 0.0)) | (16 * (v151 < 0.0)) | (32 * (v152 < 0.0)) | ((v153 < 0.0) << 6) | ((v35 < 0.0) << 7);
        v37 = v113[0];
        v38 = dword_2461442B0[v113[0]];
        do
        {
          if ((v38 & word_246144220[v36]) != 0)
          {
            v42 = *&word_246144220[v36 + 2];
            v43 = *(&v147 + v42);
            v44 = &v133[12 * v42 - 8];
            v45 = v23[468];
            if (vabdd_f64(0.0, v43) >= v45)
            {
              v46 = *&word_246144220[v36 + 4];
              v47 = *(&v147 + v46);
              v48 = &v133[12 * v46 - 8];
              if (vabdd_f64(0.0, v47) < v45)
              {
                v39 = *v48;
                v40 = v48[1].f32[0];
                goto LABEL_33;
              }

              if (vabdd_f64(v43, v47) >= v45)
              {
                v49 = (0.0 - v43) / (v47 - v43);
                v39 = vadd_f32(*v44, vmul_n_f32(vsub_f32(*v48, *v44), v49));
                v40 = v44[1].f32[0] + ((v48[1].f32[0] - v44[1].f32[0]) * v49);
                goto LABEL_33;
              }
            }

            v39 = *v44;
            v40 = v44[1].f32[0];
LABEL_33:
            v41 = &v113[v36 * 2];
            *(v41 + 4) = v39;
            *(v41 + 3) = v40;
          }

          v36 += 6;
        }

        while (v36 != 72);
        v99 = v25;
        v20 = v95;
        if (v37 && v37 != 255)
        {
          v50 = (&unk_246140070 + 64 * v37);
          v53 = *v50;
          v52 = v50 + 3;
          v51 = v53;
          while (1)
          {
            v56 = &v113[12 * *(v52 - 2) + 4];
            v57 = &v113[12 * *(v52 - 1) + 4];
            sub_246102E84(&v104, &v113[12 * v51 + 4]);
            sub_246102E84(&v104, v56);
            sub_246102E84(&v104, v57);
            if (!v131)
            {
              break;
            }

            (*(*v131 + 48))(&v126);
            v58 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v126, v126)) + (v127 * v127));
            v126 = vmul_n_f32(v126, v58);
            v127 = v127 * v58;
            v129 = v127;
            v128 = v126;
            if (!v131)
            {
              break;
            }

            (*(*v131 + 48))(&v124);
            v59 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v124, v124)) + (v125 * v125));
            v124 = vmul_n_f32(v124, v59);
            v125 = v125 * v59;
            v127 = v125;
            v126 = v124;
            if (!v131)
            {
              break;
            }

            (*(*v131 + 48))(&v122);
            v60 = 1.0 / sqrtf(vaddv_f32(vmul_f32(v122, v122)) + (v123 * v123));
            v122 = vmul_n_f32(v122, v60);
            v123 = v123 * v60;
            v125 = v123;
            v124 = v122;
            sub_246102E84(v107, &v128);
            sub_246102E84(v107, &v126);
            sub_246102E84(v107, &v124);
            v61 = -1431655765 * ((*(&v104 + 1) - v104) >> 2);
            v62 = v61 - 1;
            v63 = vadd_s32(vdup_n_s32(v61), 0xFFFFFFFEFFFFFFFDLL);
            v64 = v106;
            if (v106 < *(&v106 + 1))
            {
              *v106 = v63;
              *(v64 + 8) = v62;
              v54 = v64 + 12;
            }

            else
            {
              v65 = *(&v105 + 1);
              v66 = v106 - *(&v105 + 1);
              v67 = 0xAAAAAAAAAAAAAAABLL * ((v106 - *(&v105 + 1)) >> 2);
              v68 = v67 + 1;
              if (v67 + 1 > 0x1555555555555555)
              {
                goto LABEL_88;
              }

              if (0x5555555555555556 * ((*(&v106 + 1) - *(&v105 + 1)) >> 2) > v68)
              {
                v68 = 0x5555555555555556 * ((*(&v106 + 1) - *(&v105 + 1)) >> 2);
              }

              if (0xAAAAAAAAAAAAAAABLL * ((*(&v106 + 1) - *(&v105 + 1)) >> 2) >= 0xAAAAAAAAAAAAAAALL)
              {
                v69 = 0x1555555555555555;
              }

              else
              {
                v69 = v68;
              }

              if (v69)
              {
                if (v69 <= 0x1555555555555555)
                {
                  operator new();
                }

                sub_2460D368C();
              }

              v70 = 4 * ((v106 - *(&v105 + 1)) >> 2);
              *v70 = v63;
              *(v70 + 8) = v62;
              v54 = 12 * v67 + 12;
              v71 = v70 - v66;
              memcpy((v70 - v66), v65, v66);
              *(&v105 + 1) = v71;
              v106 = v54;
              if (v65)
              {
                operator delete(v65);
              }
            }

            *&v106 = v54;
            v55 = *v52;
            v52 += 3;
            v51 = v55;
            if (v55 == -1)
            {
              goto LABEL_12;
            }
          }

          sub_246102FD4();
LABEL_88:
          sub_2460D368C();
        }

LABEL_12:
        v22 = v94;
        v23 = &loc_24613F000;
        v25 = v99;
LABEL_13:
        if (++v25 != v22)
        {
          continue;
        }

        break;
      }

      v24 = v93 + 1;
      if (v93 + 1 != v91)
      {
        continue;
      }

      break;
    }

    v18 = v90 + 1;
    if (v90 + 1 != v88)
    {
      continue;
    }

    break;
  }

LABEL_62:
  if (v131 == v130)
  {
    (*(*v131 + 32))(v131);
  }

  else if (v131)
  {
    (*(*v131 + 40))();
  }

  v109 = &unk_2858EBD20;
  if (__p)
  {
    v111 = __p;
    operator delete(__p);
  }

  if (qword_27EE3F420 != -1)
  {
    dispatch_once(&qword_27EE3F420, &unk_2858EBB28);
  }

  Instance = _CFRuntimeCreateInstance();
  v73 = operator new(0x20uLL, MEMORY[0x277D826F0]);
  v74 = v73;
  if (v73)
  {
    *v73 = 0u;
    *(v73 + 1) = 0u;
  }

  v75 = v104;
  v76 = 0xAAAAAAAAAAAAAAABLL * ((*(&v104 + 1) - v104) >> 2);
  v77 = *(&v105 + 1);
  v78 = -1431655765 * ((v106 - *(&v105 + 1)) >> 2);
  *(v73 + 6) = v76;
  *(v73 + 7) = v78;
  v79 = MEMORY[0x277D826F0];
  v80 = operator new[](16 * v76, MEMORY[0x277D826F0]);
  *v74 = v80;
  v81 = operator new[](16 * v78, v79);
  v74[1] = v81;
  if (v76)
  {
    v83 = v76;
    v84 = v75 + 2;
    do
    {
      *&v82 = *(v84 - 1);
      DWORD2(v82) = *v84;
      *v80++ = v82;
      v84 += 3;
      --v83;
    }

    while (v83);
  }

  if (v78)
  {
    v85 = v78;
    v86 = v77 + 2;
    do
    {
      *&v82 = *(v86 - 1);
      DWORD2(v82) = *v86;
      *v81++ = v82;
      v86 += 3;
      --v85;
    }

    while (v85);
  }

  if (Instance)
  {
    *(Instance + 16) = v74;
  }

  if (v107[0])
  {
    operator delete(v107[0]);
  }

  if (v77)
  {
    operator delete(v77);
  }

  if (v75)
  {
    operator delete(v75);
  }

  return Instance;
}

uint64_t sub_2460EDC90(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    *(a1 + 32) = v3;
    operator delete(v3);
  }

  v4 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
  }

  return a1;
}

uint64_t OCMeshingGetMesh(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 4294967294;
  }

  v2 = *(a1 + 16);
  v3 = *(v2 + 24);
  if (v3)
  {
    *(a2 + 24) = v3;
    v5 = *(v2 + 24);
    *(a2 + 28) = *(v2 + 28);
    *a2 = operator new[](16 * v5, MEMORY[0x277D826F0]);
    if (v5)
    {
      for (i = 0; i < v7; ++i)
      {
        *(*a2 + 16 * i) = *(*v2 + 16 * i);
        v7 = *(v2 + 24);
      }
    }

    else
    {
      v7 = 0;
    }

    *(a2 + 16) = operator new[](8 * v7, MEMORY[0x277D826F0]);
    if (v7)
    {
      v9 = *(v2 + 16);
      if (v9)
      {
        v10 = 0;
LABEL_12:
        *(*(a2 + 16) + 8 * v10) = *(v9 + 8 * v10);
        while (++v10 < *(v2 + 24))
        {
          v9 = *(v2 + 16);
          if (v9)
          {
            goto LABEL_12;
          }
        }
      }
    }

    v11 = *(v2 + 28);
    *(a2 + 8) = operator new[](16 * v11, MEMORY[0x277D826F0]);
    if (v11)
    {
      v12 = 0;
      do
      {
        *(*(a2 + 8) + 16 * v12) = *(*(v2 + 8) + 16 * v12);
        ++v12;
      }

      while (v12 < *(v2 + 28));
    }
  }

  return 0;
}

const void *OCMeshingRetain(const void *result)
{
  if (result)
  {
    v1 = result;
    CFRetain(result);
    return v1;
  }

  return result;
}

void OCMeshingRelease(void *cf)
{
  if (cf)
  {
    v2 = cf[2];
    if (*v2)
    {
      MEMORY[0x24C1995A0](*v2, 0x1000C80451B5BE8);
      *v2 = 0;
    }

    v3 = v2[2];
    if (v3)
    {
      MEMORY[0x24C1995A0](v3, 0x1000C8000313F17);
      v2[2] = 0;
    }

    v4 = v2[1];
    if (v4)
    {
      MEMORY[0x24C1995A0](v4, 0x1000C80451B5BE8);
      v2[1] = 0;
    }

    CFRelease(cf);
  }
}

uint64_t OCCoverageGuideCreate(int *a1, void *a2)
{
  result = 4294967294;
  if (!a1 || !a2 || !a1[1] || !a1[2] || !a1[4] || !a1[5])
  {
    return result;
  }

  v5 = operator new(0x58uLL, MEMORY[0x277D826F0]);
  if (!v5)
  {
    return 4294967293;
  }

  v6 = v5;
  *(v5 + 2) = 0u;
  v7 = v5 + 32;
  *(v5 + 10) = 0;
  *(v5 + 3) = 0u;
  *(v5 + 4) = 0u;
  v8 = *(a1 + 1);
  *v5 = *a1;
  *(v5 + 1) = v8;
  v25 = xmmword_24613FAE0;
  v26 = 0x186A000000000;
  v27 = 1;
  v28 = 0x40A000003DCCCCCDLL;
  v29 = xmmword_24613FAF0;
  v30 = xmmword_24613FB00;
  v31 = xmmword_24613FB10;
  v32 = xmmword_24613FB20;
  v33 = 0;
  v34 = 5;
  v35 = 1096810496;
  v36 = 256;
  v37 = 1065353216;
  result = 0xFFFFFFFFLL;
  v9 = *a1;
  if (*a1 <= 1)
  {
    if (!v9)
    {
      LODWORD(v25) = 0;
      goto LABEL_16;
    }

    if (v9 != 1)
    {
      return result;
    }
  }

  else if (v9 != 2 && v9 != 3 && v9 != 4)
  {
    return result;
  }

  LODWORD(v25) = *a1;
LABEL_16:
  DWORD1(v25) = 1;
  LODWORD(v26) = 0;
  HIDWORD(v28) = 1084227584;
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  v10 = qword_27EE3F710;
  if (qword_27EE3F710)
  {
    v10 = *(qword_27EE3F710 + 24);
  }

  HIBYTE(v36) = v10 & 1;
  v11 = *(a1 + 3);
  v12 = 0.0;
  if (v11 >= 0.0)
  {
    v12 = 1.0;
    if (v11 <= 1.0)
    {
      v12 = *(a1 + 3);
    }
  }

  v37 = LODWORD(v12);
  v13 = operator new(0x320uLL, MEMORY[0x277D826F0]);
  if (!v13)
  {
    *(v6 + 5) = 0;
    goto LABEL_35;
  }

  v14 = v13;
  sub_246128228(v13, &v25);
  *(v6 + 5) = v14;
  if ((sub_246128410(v14, *(v6 + 1), *(v6 + 2)) & 1) == 0)
  {
    OCCoverageGuideDestroy(v6);
    return 4294967294;
  }

  v15 = operator new(0x130uLL, MEMORY[0x277D826F0]);
  if (!v15)
  {
    *(v6 + 6) = 0;
    goto LABEL_35;
  }

  v16 = v15;
  sub_24613D12C(v15);
  *(v6 + 6) = v16;
  if ((sub_24613D21C(v16, *(v6 + 4), *(v6 + 5), *(v6 + 6), *(v6 + 7), &v25) & 1) == 0)
  {
LABEL_35:
    OCCoverageGuideDestroy(v6);
    return 4294967293;
  }

  *(v6 + 8) = 0;
  v17 = *(v6 + 2);
  *&v18 = v17;
  *(&v18 + 1) = HIDWORD(v17);
  v22 = v18;
  v23 = 1111970369;
  v24 = xmmword_24613FB30;
  if (sub_24610D610(&v22, v6 + 9) & 1) != 0 && (v19 = *(v6 + 3), *&v20 = v19, *(&v20 + 1) = HIDWORD(v19), v22 = v20, v23 = 1717855600, (sub_24610D610(&v22, v6 + 10)))
  {
    *a2 = v6;
    v21 = *a1;
    if ((*a1 - 1) < 2)
    {
      goto LABEL_40;
    }

    if ((v21 - 3) < 2)
    {
      result = 0;
      *v7 = 0x40000000;
      return result;
    }

    if (v21)
    {
      return 0xFFFFFFFFLL;
    }

    else
    {
LABEL_40:
      result = 0;
      *v7 = 1077936128;
    }
  }

  else
  {
    OCCoverageGuideDestroy(v6);
    return 0xFFFFFFFFLL;
  }

  return result;
}

void *OCCoverageGuideDestroy(void *result)
{
  if (result)
  {
    v1 = result;
    v2 = result[5];
    if (v2)
    {
      v3 = sub_2460EE3F8(v2);
      MEMORY[0x24C1995D0](v3, 0x10E0C40FDB0B8DBLL);
      v1[5] = 0;
    }

    v4 = v1[6];
    if (v4)
    {

      MEMORY[0x24C1995D0](v4, 0x10E0C4013A4462ALL);
      v1[6] = 0;
    }

    v5 = v1[7];
    if (v5)
    {
      if (*v5)
      {
        CFRelease(*v5);
      }

      *v5 = 0;
      v6 = *(v5 + 8);
      if (v6)
      {
        MEMORY[0x24C1995A0](v6, 0x1000C8052888210);
        *(v5 + 8) = 0;
      }

      MEMORY[0x24C1995D0](v5, 0x10A0C40D63CFB62);
      v1[7] = 0;
    }

    v7 = v1[8];
    if (v7)
    {
      CFRelease(v7);
      v1[8] = 0;
    }

    v8 = v1[9];
    if (v8)
    {
      CVPixelBufferPoolRelease(v8);
      v1[9] = 0;
    }

    JUMPOUT(0x24C1995D0);
  }

  return result;
}

uint64_t sub_2460EE3F8(uint64_t a1)
{
  v2 = *(a1 + 768);
  if (v2)
  {
    *(a1 + 776) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 744);
  if (v3)
  {
    *(a1 + 752) = v3;
    operator delete(v3);
  }

  v4 = *(a1 + 704);
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

  v6 = *(a1 + 688);
  *(a1 + 688) = 0;
  if (v6)
  {
    operator delete(v6);
  }

  v7 = *(a1 + 152);
  if (v7)
  {
    *(a1 + 160) = v7;
    operator delete(v7);
  }

  v8 = *(a1 + 128);
  if (v8)
  {
    *(a1 + 136) = v8;
    operator delete(v8);
  }

  return a1;
}

uint64_t OCCoverageGuideStart(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  if (*(a1 + 56))
  {
    return 0xFFFFFFFFLL;
  }

  if (*(a1 + 64))
  {
    return 0xFFFFFFFFLL;
  }

  return 0;
}

uint64_t OCCoverageGuideAddCameraShot(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, simd_float4 a5, simd_float4 a6, simd_float4 a7, simd_float4 a8)
{
  if (!a1 || !*(a1 + 40))
  {
    return 4294967294;
  }

  *v10 = *(a1 + 4);
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v17 = a8;
  v19.columns[0] = a5;
  v19.columns[1] = a6;
  v19.columns[2] = a7;
  v19.columns[3] = a8;
  v18 = __invert_f4(v19);
  sub_24612A904(*(a1 + 40), v10);
  return 0;
}

uint64_t OCCoverageGuideCompute(uint64_t a1, uint64_t a2)
{
  result = 4294967294;
  if (a1)
  {
    if (a2)
    {
      v4 = *(a1 + 40);
      if (v4)
      {
        if (*(a2 + 16) > 0.0)
        {
          v5 = *(a2 + 32);
          v6 = *(a2 + 48);
          v7 = *(a2 + 64);
          v8 = *(MEMORY[0x277D860B0] + 16);
          v9 = *(MEMORY[0x277D860B0] + 32);
          v10 = vdupq_n_s32(0x38D1B717u);
          v11 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v6, *v6.f32, 1), v7, *v7.f32, 1), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v6, v6.f32[0]), v7, v7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v6, v6, 2), v7, v7, 2), v9)));
          v11.i32[3] = v11.i32[2];
          if ((vminvq_u32(v11) & 0x80000000) != 0)
          {
            v12 = vzip1q_s32(vzip2q_s32(v5, v7), vdupq_laneq_s32(v6, 2));
            v13 = vtrn2q_s32(v5, v6);
            v13.i32[2] = HIDWORD(*(a2 + 64));
            v14 = vzip1q_s32(vzip1q_s32(v5, v7), v6);
            v15 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v6.f32[0]), v13, *v6.f32, 1), v12, v6, 2), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v5.f32[0]), v13, *v5.f32, 1), v12, v5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v7.f32[0]), v13, *v7.f32, 1), v12, v7, 2), v9)));
            v15.i32[3] = v15.i32[2];
            if ((vminvq_u32(v15) & 0x80000000) != 0)
            {
              v16 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL))), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
              if (fabsf((v16.f32[2] + vaddv_f32(*v16.f32)) + -1.0) <= 0.000011)
              {
                v17 = vdup_n_s32(0x38D1B717u);
                v18 = vand_s8(vcge_f32(v17, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(*(a2 + 80), *(a2 + 80), 8uLL)), 0xBF80000080000000))), vcge_f32(v17, vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)))));
                if ((vpmin_u32(v18, v18).u32[0] & 0x80000000) != 0)
                {
                  v19 = *(a2 + 96);
                  v20 = 0xAAAAAAAAAAAAAAABLL * ((*(a2 + 104) - v19) >> 4);
                  v21 = v20;
                  if (v20)
                  {
                    if (v19)
                    {
                      v31 = 0uLL;
                      __asm { FMOV            V5.4S, #-1.0 }

                      v32 = _Q5;
                      v20 = v20;
                      do
                      {
                        v27 = *v19;
                        v29 = v31;
                        v28 = v32;
                        v30 = vcgtq_f32(v31, v32);
                        v30.i32[3] = v30.i32[2];
                        if ((vmaxvq_u32(v30) & 0x80000000) != 0)
                        {
                          v31 = vcvtq_f32_s32(v27);
                          v32 = v31;
                        }

                        else
                        {
                          if (v31.f32[0] > v27.i32[0])
                          {
                            v31.f32[0] = v27.i32[0];
                          }

                          if (v32.f32[0] < v27.i32[0])
                          {
                            v32.f32[0] = v27.i32[0];
                          }

                          if (v29.f32[1] > v27.i32[1])
                          {
                            v31.f32[1] = v27.i32[1];
                          }

                          if (v28.f32[1] < v27.i32[1])
                          {
                            v32.f32[1] = v27.i32[1];
                          }

                          if (v29.f32[2] > v27.i32[2])
                          {
                            v31.f32[2] = v27.i32[2];
                          }

                          if (v28.f32[2] < v27.i32[2])
                          {
                            v32.f32[2] = v27.i32[2];
                          }
                        }

                        v19 += 3;
                        --v20;
                      }

                      while (v20);
                      if (*(v4 + 4) == 1 && v21 >= *(v4 + 16))
                      {
                        operator new();
                      }

                      return 0xFFFFFFFFLL;
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  return result;
}

void sub_2460EFB78(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, void *a47, uint64_t a48, uint64_t a49, void *__p, uint64_t a51, uint64_t a52, void *a53, uint64_t a54)
{
  if (__p)
  {
    operator delete(__p);
  }

  if (a47)
  {
    operator delete(a47);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCCoverageGuideGetResults(uint64_t result)
{
  if (result)
  {
    return *(result + 64);
  }

  return result;
}

CVPixelBufferRef OCCoverageGuideCreateHeatmap(uint64_t a1, int32x4_t *a2, unsigned int a3, const void *a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, int8x16_t a8, float a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, float a21)
{
  v52[0] = a17;
  v52[1] = a18;
  v52[2] = a19;
  v52[3] = a20;
  v18 = 0;
  if (a1)
  {
    if (a4)
    {
      if (a2)
      {
        v20 = *(a1 + 48);
        if (v20)
        {
          if (a9 <= 0.0)
          {
            return 0;
          }

          v21 = *(MEMORY[0x277D860B0] + 16);
          v22 = *(MEMORY[0x277D860B0] + 32);
          v23 = vdupq_n_s32(0x38D1B717u);
          v24 = vandq_s8(vandq_s8(vcgeq_f32(v23, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, *a7.f32, 1), v21)), vcgeq_f32(v23, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v22)));
          v24.i32[3] = v24.i32[2];
          if ((vminvq_u32(v24) & 0x80000000) == 0)
          {
            return 0;
          }

          v25 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2));
          v26 = vtrn2q_s32(a5, a6);
          v26.i32[2] = a7.i32[1];
          v27 = vzip1q_s32(vzip1q_s32(a5, a7), a6);
          v28 = vandq_s8(vandq_s8(vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, a6.f32[0]), v26, *a6.f32, 1), v25, a6, 2), v21)), vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, a5.f32[0]), v26, *a5.f32, 1), v25, a5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, a7.f32[0]), v26, *a7.f32, 1), v25, a7, 2), v22)));
          v28.i32[3] = v28.i32[2];
          if ((vminvq_u32(v28) & 0x80000000) == 0)
          {
            return 0;
          }

          v30 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL)));
          v18 = 0;
          if (fabsf((v30.f32[2] + vaddv_f32(*v30.f32)) + -1.0) <= 0.000011)
          {
            v31 = vdup_n_s32(0x38D1B717u);
            v32 = vand_s8(vcge_f32(v31, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v31, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL)))));
            if ((vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0)
            {
              if (a3)
              {
                v50 = 0uLL;
                __asm { FMOV            V6.4S, #-1.0 }

                v51 = _Q6;
                v43[0] = a9;
                v44 = a5;
                v45 = a6;
                v46 = a7;
                v47 = a8;
                v38 = a3;
                v48 = a3;
                v49 = a2;
                do
                {
                  v39 = *a2;
                  v41 = v50;
                  v40 = v51;
                  v42 = vcgtq_f32(v50, v51);
                  v42.i32[3] = v42.i32[2];
                  if ((vmaxvq_u32(v42) & 0x80000000) != 0)
                  {
                    v50 = vcvtq_f32_s32(v39);
                    v51 = v50;
                  }

                  else
                  {
                    if (v50.f32[0] > v39.i32[0])
                    {
                      v50.f32[0] = v39.i32[0];
                    }

                    if (v51.f32[0] < v39.i32[0])
                    {
                      v51.f32[0] = v39.i32[0];
                    }

                    if (v41.f32[1] > v39.i32[1])
                    {
                      v50.f32[1] = v39.i32[1];
                    }

                    if (v40.f32[1] < v39.i32[1])
                    {
                      v51.f32[1] = v39.i32[1];
                    }

                    if (v41.f32[2] > v39.i32[2])
                    {
                      v50.f32[2] = v39.i32[2];
                    }

                    if (v40.f32[2] < v39.i32[2])
                    {
                      v51.f32[2] = v39.i32[2];
                    }
                  }

                  a2 += 3;
                  --v38;
                }

                while (v38);
                if (sub_24613DEE0(v20, v43, a4, v52, 1, a21))
                {
                  return sub_2460EFF1C(a1, 1);
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v18;
}

CVPixelBufferRef sub_2460EFF1C(uint64_t a1, int a2)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    if (a2)
    {
      if (*(v2 + 208))
      {
        result = *(v2 + 120);
        if (!result)
        {
          return result;
        }

        v5 = result;
        pixelBufferOut = 0;
        if (!CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(a1 + 72), &pixelBufferOut))
        {
LABEL_6:
          CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
          BaseAddress = CVPixelBufferGetBaseAddress(pixelBufferOut);
          BytesPerRow = CVPixelBufferGetBytesPerRow(pixelBufferOut);
          memset(v15, 0, 24);
          v15[3] = objc_msgSend_width(v5, v8, v9);
          v15[4] = objc_msgSend_height(v5, v10, v11);
          v15[5] = 1;
          objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v5, v12, BaseAddress, BytesPerRow, v15, 0);
          CVPixelBufferUnlockBaseAddress(pixelBufferOut, 0);
          v13 = pixelBufferOut;
LABEL_11:

          return v13;
        }

LABEL_10:
        v13 = 0;
        goto LABEL_11;
      }
    }

    else if (*(v2 + 208))
    {
      result = *(v2 + 128);
      if (!result)
      {
        return result;
      }

      v5 = result;
      pixelBufferOut = 0;
      if (!CVPixelBufferPoolCreatePixelBuffer(*MEMORY[0x277CBECE8], *(a1 + 80), &pixelBufferOut))
      {
        goto LABEL_6;
      }

      goto LABEL_10;
    }
  }

  return 0;
}

CVPixelBufferRef OCCoverageGuideCreateScoreMap(uint64_t a1, int32x4_t *a2, unsigned int a3, const void *a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, int8x16_t a8, float a9, double a10, double a11, double a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __int128 a17, __int128 a18, __int128 a19, __int128 a20, float a21)
{
  v52[0] = a17;
  v52[1] = a18;
  v52[2] = a19;
  v52[3] = a20;
  v18 = 0;
  if (a1)
  {
    if (a4)
    {
      if (a2)
      {
        v20 = *(a1 + 48);
        if (v20)
        {
          if (a9 <= 0.0)
          {
            return 0;
          }

          v21 = *(MEMORY[0x277D860B0] + 16);
          v22 = *(MEMORY[0x277D860B0] + 32);
          v23 = vdupq_n_s32(0x38D1B717u);
          v24 = vandq_s8(vandq_s8(vcgeq_f32(v23, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, *a7.f32, 1), v21)), vcgeq_f32(v23, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v22)));
          v24.i32[3] = v24.i32[2];
          if ((vminvq_u32(v24) & 0x80000000) == 0)
          {
            return 0;
          }

          v25 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2));
          v26 = vtrn2q_s32(a5, a6);
          v26.i32[2] = a7.i32[1];
          v27 = vzip1q_s32(vzip1q_s32(a5, a7), a6);
          v28 = vandq_s8(vandq_s8(vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, a6.f32[0]), v26, *a6.f32, 1), v25, a6, 2), v21)), vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, a5.f32[0]), v26, *a5.f32, 1), v25, a5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v23, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v27, a7.f32[0]), v26, *a7.f32, 1), v25, a7, 2), v22)));
          v28.i32[3] = v28.i32[2];
          if ((vminvq_u32(v28) & 0x80000000) == 0)
          {
            return 0;
          }

          v30 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL)));
          v18 = 0;
          if (fabsf((v30.f32[2] + vaddv_f32(*v30.f32)) + -1.0) <= 0.000011)
          {
            v31 = vdup_n_s32(0x38D1B717u);
            v32 = vand_s8(vcge_f32(v31, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v31, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL)))));
            if ((vpmin_u32(v32, v32).u32[0] & 0x80000000) != 0)
            {
              if (a3)
              {
                v50 = 0uLL;
                __asm { FMOV            V6.4S, #-1.0 }

                v51 = _Q6;
                v43[0] = a9;
                v44 = a5;
                v45 = a6;
                v46 = a7;
                v47 = a8;
                v38 = a3;
                v48 = a3;
                v49 = a2;
                do
                {
                  v39 = *a2;
                  v41 = v50;
                  v40 = v51;
                  v42 = vcgtq_f32(v50, v51);
                  v42.i32[3] = v42.i32[2];
                  if ((vmaxvq_u32(v42) & 0x80000000) != 0)
                  {
                    v50 = vcvtq_f32_s32(v39);
                    v51 = v50;
                  }

                  else
                  {
                    if (v50.f32[0] > v39.i32[0])
                    {
                      v50.f32[0] = v39.i32[0];
                    }

                    if (v51.f32[0] < v39.i32[0])
                    {
                      v51.f32[0] = v39.i32[0];
                    }

                    if (v41.f32[1] > v39.i32[1])
                    {
                      v50.f32[1] = v39.i32[1];
                    }

                    if (v40.f32[1] < v39.i32[1])
                    {
                      v51.f32[1] = v39.i32[1];
                    }

                    if (v41.f32[2] > v39.i32[2])
                    {
                      v50.f32[2] = v39.i32[2];
                    }

                    if (v40.f32[2] < v39.i32[2])
                    {
                      v51.f32[2] = v39.i32[2];
                    }
                  }

                  a2 += 3;
                  --v38;
                }

                while (v38);
                if (sub_24613DEE0(v20, v43, a4, v52, 0, a21))
                {
                  return sub_2460EFF1C(a1, 0);
                }

                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v18;
}

uint64_t OCCoverageGuideStop(uint64_t a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    if (*v2)
    {
      CFRelease(*v2);
    }

    *v2 = 0;
    v3 = *(v2 + 8);
    if (v3)
    {
      MEMORY[0x24C1995A0](v3, 0x1000C8052888210);
      *(v2 + 8) = 0;
    }

    MEMORY[0x24C1995D0](v2, 0x10A0C40D63CFB62);
  }

  *(a1 + 56) = 0;
  v4 = *(a1 + 64);
  if (v4)
  {
    CFRelease(v4);
  }

  result = 0;
  *(a1 + 64) = 0;
  return result;
}

uint64_t computePointColor(__CVBuffer *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  CVPixelBufferLockBaseAddress(a1, 1uLL);
  Height = CVPixelBufferGetHeight(a1);
  Width = CVPixelBufferGetWidth(a1);
  BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  v13 = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  v15 = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  if (a4)
  {
    v18 = 0;
    v19 = (a2 + 8);
    v20 = vdup_n_s32(0x437F0000u);
    do
    {
      LODWORD(v16) = llround(*(v19 - 1));
      if ((v16 & 0x80000000) != 0 || v16 >= Width || (v31 = *v19, LODWORD(v17) = llround(*v19), (v17 & 0x80000000) != 0) || v17 >= Height)
      {
        if ((a5 & 1) == 0)
        {
          *(a3 + 16 * v18++) = 0uLL;
        }
      }

      else
      {
        v21 = &BaseAddressOfPlane[BytesPerRowOfPlane * v17];
        v22 = &v13[v15 * (v17 >> 1) + (v16 & 0x7FFFFFFE)];
        v23 = *v22;
        v17 = v22[1];
        LOBYTE(v31) = v16->i8[v21];
        v24.f32[0] = LODWORD(v31);
        v25 = (v23 - 128);
        v26 = v24.f32[0] + (v25 * -0.39176);
        v27 = v24.f32[0] + (v25 * 2.0172);
        v16 = (a3 + 16 * v18);
        v24.f32[1] = v26;
        v28 = vmaxnm_f32(vmla_n_f32(v24, 0xBF501EA43FCC4A9ALL, (v17 - 128)), 0);
        v29 = vdiv_f32(vbsl_s8(vcgt_f32(v28, v20), v20, v28), v20);
        v30 = fmaxf(v27, 0.0);
        if (v30 > 255.0)
        {
          v30 = 255.0;
        }

        ++v18;
        v16[1].f32[0] = v30 / 255.0;
        *v16 = v29;
      }

      v19 += 2;
      --a4;
    }

    while (a4);
  }

  CVPixelBufferUnlockBaseAddress(a1, 1uLL);
  return 0;
}

BOOL initColorBufferData(__CVBuffer *a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  *a2 = CVPixelBufferGetHeight(a1);
  *(a2 + 4) = CVPixelBufferGetWidth(a1);
  *(a2 + 8) = CVPixelBufferGetBaseAddressOfPlane(a1, 0);
  *(a2 + 16) = CVPixelBufferGetBaseAddressOfPlane(a1, 1uLL);
  *(a2 + 24) = CVPixelBufferGetBytesPerRowOfPlane(a1, 0);
  *(a2 + 32) = CVPixelBufferGetBytesPerRowOfPlane(a1, 1uLL);
  return *(a2 + 8) && *(a2 + 16) != 0;
}

float retrieveColorFromBuffer@<S0>(uint64_t a1@<X0>, double *a2@<X1>, uint64_t a3@<X8>)
{
  LODWORD(a3) = llround(*a2);
  __asm { FMOV            V0.4S, #-1.0 }

  if ((a3 & 0x80000000) == 0)
  {
    v8 = *(a1 + 4);
    if (v8 > a3)
    {
      LODWORD(v8) = llround(a2[1]);
      if ((v8 & 0x80000000) == 0 && *a1 > v8)
      {
        v9 = *(a1 + 8) + *(a1 + 24) * v8;
        v10 = (*(a1 + 16) + *(a1 + 32) * (v8 >> 1) + (a3 & 0x7FFFFFFE));
        LOBYTE(_Q0) = *(v9 + a3);
        v11.f32[0] = _Q0;
        v11.f32[1] = v11.f32[0] + ((*v10 - 128) * -0.39176);
        v12 = vdup_n_s32(0x437F0000u);
        *&_Q0 = vmaxnm_f32(vmla_n_f32(v11, 0xBF501EA43FCC4A9ALL, (v10[1] - 128)), 0);
        LODWORD(_Q0) = vdiv_f32(vbsl_s8(vcgt_f32(*&_Q0, v12), v12, *&_Q0), v12).u32[0];
      }
    }
  }

  return *&_Q0;
}

int8x8_t scalarToBGRA(float a1)
{
  if (a1 <= 1.0)
  {
    v1 = a1;
  }

  else
  {
    v1 = 1.0;
  }

  if (a1 < 0.0)
  {
    v1 = 0.0;
  }

  __asm { FMOV            V4.2D, #4.0 }

  v7 = vabsq_f64(vmlaq_n_f64(xmmword_24613FB50, _Q4, v1));
  __asm { FMOV            V2.2D, #1.5 }

  *&v7.f64[0] = vcvt_f32_f64(vsubq_f64(_Q2, v7));
  __asm { FMOV            V4.2S, #1.0 }

  return vbic_s8(vbsl_s8(vcgt_f32(*&v7.f64[0], *&_Q4.f64[0]), *&_Q4.f64[0], *&v7.f64[0]), vcltz_f32(*&v7.f64[0]));
}

uint64_t OCMultiviewGeometryCreate(uint64_t a1, uint64_t a2)
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

void **sub_2460F0AC8(void **a1)
{
  sub_2460F0B40(a1);
  v2 = a1[1];
  v3 = a1[2];
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
      operator delete(v4);
    }

    while (v2 != v3);
    v2 = a1[1];
    v3 = a1[2];
  }

  if (v3 != v2)
  {
    a1[2] = v3 + ((v2 - v3 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  if (*a1)
  {
    operator delete(*a1);
  }

  return a1;
}

void sub_2460F0B40(void *a1)
{
  v2 = a1[1];
  v3 = a1[2];
  if (v3 == v2)
  {
    v4 = a1 + 5;
    v3 = a1[1];
  }

  else
  {
    v4 = a1 + 5;
    v5 = a1[4];
    v6 = &v2[v5 / 0x12];
    v7 = *v6 + 224 * v5 + -4032 * (v5 / 0x12);
    v8 = v2[(a1[5] + v5) / 0x12] + 224 * a1[5] + 224 * v5 + -4032 * ((a1[5] + v5) / 0x12);
    if (v7 != v8)
    {
      do
      {
        CVPixelBufferRelease(*v7);
        CVPixelBufferRelease(*(v7 + 8));
        if (*(v7 + 215) < 0)
        {
          operator delete(*(v7 + 192));
        }

        v7 += 224;
        if (v7 - *v6 == 4032)
        {
          v9 = v6[1];
          ++v6;
          v7 = v9;
        }
      }

      while (v7 != v8);
      v2 = a1[1];
      v3 = a1[2];
    }
  }

  *v4 = 0;
  v10 = v3 - v2;
  if (v10 >= 3)
  {
    do
    {
      operator delete(*v2);
      v11 = a1[2];
      v2 = (a1[1] + 8);
      a1[1] = v2;
      v10 = (v11 - v2) >> 3;
    }

    while (v10 > 2);
  }

  if (v10 == 1)
  {
    v12 = 9;
  }

  else
  {
    if (v10 != 2)
    {
      return;
    }

    v12 = 18;
  }

  a1[4] = v12;
}

void sub_2460F0C88(_Unwind_Exception *exception_object)
{
  if (*(v1 + 215) < 0)
  {
    operator delete(*(v1 + 192));
  }

  _Unwind_Resume(exception_object);
}

uint64_t sub_2460F0CA4()
{
  qword_27EE3F4A0 = os_log_create("com.apple.CoreOCModules", "General");

  return MEMORY[0x2821F96F8]();
}

uint64_t OCMultiviewGeometryStart(uint64_t a1)
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

uint64_t OCMultiviewGeometryStop(uint64_t a1)
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

uint64_t OCMultiviewGeometryDestroy(void *a1)
{
  if (!a1)
  {
    return 4294967294;
  }

  v1 = *a1;
  if (*a1)
  {
    v2 = a1;
    CVPixelBufferPoolRelease(*(v1 + 24));
    *(v1 + 24) = 0;
    CVPixelBufferRelease(*(v1 + 32));
    *(v1 + 32) = 0;
    CVPixelBufferRelease(*(v1 + 40));
    *(v1 + 40) = 0;
    sub_2460F0B40((v1 + 48));
    v3 = *(v1 + 56);
    v4 = *(v1 + 64);
    if (v3 != v4)
    {
      do
      {
        v5 = *v3++;
        operator delete(v5);
      }

      while (v3 != v4);
      v3 = *(v1 + 56);
      v4 = *(v1 + 64);
    }

    if (v4 != v3)
    {
      *(v1 + 64) = v4 + ((v3 - v4 + 7) & 0xFFFFFFFFFFFFFFF8);
    }

    v6 = *(v1 + 48);
    if (v6)
    {
      operator delete(v6);
    }

    MEMORY[0x24C1995D0](v1, 0x10A0C40F9B348C6);
    a1 = v2;
  }

  MEMORY[0x24C1995D0](a1, 0x20C4093837F09);
  return 0;
}

uint64_t OCMultiviewGeometryProcess(uint64_t *a1, uint64_t a2)
{
  v86 = *MEMORY[0x277D85DE8];
  if (!a1)
  {
    return 4294967294;
  }

  v5 = *a2;
  v4 = *(a2 + 8);
  v6 = *(a2 + 192);
  texture = 0;
  pixelBufferOut = 0;
  v7 = *(a2 + 32);
  v70 = *(a2 + 16);
  v71 = v7;
  v8 = *(a2 + 64);
  v72 = *(a2 + 48);
  v73 = v8;
  v9 = *(MEMORY[0x277D860B0] + 16);
  v74 = *MEMORY[0x277D860B0];
  v75 = v9;
  v10 = *(a2 + 176);
  v79 = *(a2 + 160);
  v80 = v10;
  v11 = *(a2 + 144);
  v77 = *(a2 + 128);
  v78 = v11;
  v76 = *(MEMORY[0x277D860B0] + 32);
  std::to_string(&__p, v6);
  Width = CVPixelBufferGetWidth(v4);
  Height = CVPixelBufferGetHeight(v4);
  v66 = Width / CVPixelBufferGetWidth(v5);
  v14 = CVPixelBufferGetHeight(v5);
  v15 = MEMORY[0x277CBECE8];
  if (vabds_f32(v66, Height / v14) >= 0.000001)
  {
    if (qword_27EE3F588 != -1)
    {
      dispatch_once(&qword_27EE3F588, &unk_2858EBE08);
    }

    v17 = qword_27EE3F580;
    if (!os_log_type_enabled(qword_27EE3F580, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    LOWORD(pixelTransferSessionOut.__r_.__value_.__l.__data_) = 0;
    v18 = "MVGDataFrame::setImageBufferAndIntrinsics: Invalid scaling parameters!";
    goto LABEL_29;
  }

  v16 = *(a2 + 112);
  v75 = *(a2 + 96);
  v76 = v16;
  v74 = *(a2 + 80);
  v74.i64[0] = vmulq_n_f32(v74, v66).u64[0];
  v75.i64[0] = vmulq_n_f32(v75, v66).u64[0];
  v76.i64[0] = vmulq_n_f32(v16, v66).u64[0];
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], Width, Height, 0x4C303038u, 0, &pixelBufferOut))
  {
    if (qword_27EE3F588 != -1)
    {
      dispatch_once(&qword_27EE3F588, &unk_2858EBE08);
    }

    v17 = qword_27EE3F580;
    if (!os_log_type_enabled(qword_27EE3F580, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_30;
    }

    LOWORD(pixelTransferSessionOut.__r_.__value_.__l.__data_) = 0;
    v18 = "MVGDataFrame::setImageBufferAndIntrinsics: Failed to create image buffer!";
    goto LABEL_29;
  }

  v20 = pixelBufferOut;
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBufferOut);
  if (PixelFormatType == 1278226488 || PixelFormatType == 1278226742)
  {
    pixelTransferSessionOut.__r_.__value_.__r.__words[0] = 0;
    if (VTPixelTransferSessionCreate(0, &pixelTransferSessionOut))
    {
      if (qword_27EE3F588 != -1)
      {
        dispatch_once(&qword_27EE3F588, &unk_2858EBE08);
      }

      v22 = qword_27EE3F580;
      if (os_log_type_enabled(qword_27EE3F580, OS_LOG_TYPE_ERROR))
      {
        LOWORD(buf[0]) = 0;
        _os_log_error_impl(&dword_2460CF000, v22, OS_LOG_TYPE_ERROR, "MVGDataFrame::scaleAndConvertToGrayscale: Failed to create vtConverter!", buf, 2u);
      }
    }

    else
    {
      v25 = VTPixelTransferSessionTransferImage(pixelTransferSessionOut.__r_.__value_.__l.__data_, v5, v20);
      VTPixelTransferSessionInvalidate(pixelTransferSessionOut.__r_.__value_.__l.__data_);
      CFRelease(pixelTransferSessionOut.__r_.__value_.__l.__data_);
      if (!v25)
      {
        goto LABEL_30;
      }
    }

    goto LABEL_25;
  }

  v23 = PixelFormatType;
  if (qword_27EE3F588 != -1)
  {
    dispatch_once(&qword_27EE3F588, &unk_2858EBE08);
  }

  v24 = qword_27EE3F580;
  if (os_log_type_enabled(qword_27EE3F580, OS_LOG_TYPE_ERROR))
  {
    LODWORD(pixelTransferSessionOut.__r_.__value_.__l.__data_) = 67240192;
    HIDWORD(pixelTransferSessionOut.__r_.__value_.__r.__words[0]) = v23;
    _os_log_error_impl(&dword_2460CF000, v24, OS_LOG_TYPE_ERROR, "MVGDataFrame::scaleAndConvertToGrayscale: Pixel format %{public}x is not supported!", &pixelTransferSessionOut, 8u);
LABEL_25:
    if (qword_27EE3F588 != -1)
    {
      dispatch_once(&qword_27EE3F588, &unk_2858EBE08);
    }
  }

  v17 = qword_27EE3F580;
  if (os_log_type_enabled(qword_27EE3F580, OS_LOG_TYPE_ERROR))
  {
    LOWORD(pixelTransferSessionOut.__r_.__value_.__l.__data_) = 0;
    v18 = "MVGDataFrame::setImageBufferAndIntrinsics: Failed to convert image buffer!";
LABEL_29:
    _os_log_error_impl(&dword_2460CF000, v17, OS_LOG_TYPE_ERROR, v18, &pixelTransferSessionOut, 2u);
  }

LABEL_30:
  texture = CVPixelBufferRetain(v4);
  v26 = *a1;
  if (*(*a1 + 88) == *(*a1 + 16) + 1)
  {
    if (qword_27EE3F558 != -1)
    {
      dispatch_once(&qword_27EE3F558, &unk_2858EBCF0);
    }

    v27 = qword_27EE3F550;
    if (os_log_type_enabled(qword_27EE3F550, OS_LOG_TYPE_DEBUG))
    {
      v43 = *(v26 + 56);
      if (*(v26 + 64) == v43)
      {
        v44 = 0;
      }

      else
      {
        v44 = *(v43 + 8 * (*(v26 + 80) / 0x12uLL)) - 4032 * (*(v26 + 80) / 0x12uLL) + 224 * *(v26 + 80);
      }

      if (*(v44 + 215) < 0)
      {
        sub_2461058F0(&pixelTransferSessionOut, *(v44 + 192), *(v44 + 200));
      }

      else
      {
        pixelTransferSessionOut = *(v44 + 192);
      }

      p_pixelTransferSessionOut = &pixelTransferSessionOut;
      if ((pixelTransferSessionOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        p_pixelTransferSessionOut = pixelTransferSessionOut.__r_.__value_.__r.__words[0];
      }

      v47 = *(v26 + 88);
      buf[0] = 136446466;
      *&buf[1] = p_pixelTransferSessionOut;
      v83 = 2050;
      v84 = v47;
      _os_log_debug_impl(&dword_2460CF000, v27, OS_LOG_TYPE_DEBUG, "MVGConsistency::addNewFrame: Erasing frame %{public}s, size = %{public}lu", buf, 0x16u);
      if (SHIBYTE(pixelTransferSessionOut.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pixelTransferSessionOut.__r_.__value_.__l.__data_);
      }
    }

    v28 = *(*(v26 + 56) + 8 * (*(v26 + 80) / 0x12uLL)) - 4032 * (*(v26 + 80) / 0x12uLL) + 224 * *(v26 + 80);
    CVPixelBufferRelease(*v28);
    CVPixelBufferRelease(*(v28 + 8));
    if (*(v28 + 215) < 0)
    {
      operator delete(*(v28 + 192));
    }

    v29 = vaddq_s64(*(v26 + 80), xmmword_24613FB70);
    *(v26 + 80) = v29;
    if (v29.i64[0] >= 0x24uLL)
    {
      operator delete(**(v26 + 56));
      *(v26 + 56) += 8;
      *(v26 + 80) -= 18;
    }
  }

  CVPixelBufferPoolFlush(*(v26 + 24), 1uLL);
  CVPixelBufferRelease(*(v26 + 32));
  *(v26 + 32) = 0;
  v30 = *v15;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(*v15, *(v26 + 24), (v26 + 32));
  CVPixelBufferRelease(*(v26 + 40));
  *(v26 + 40) = 0;
  if (PixelBuffer | CVPixelBufferPoolCreatePixelBuffer(v30, *(v26 + 24), (v26 + 40)))
  {
    if (qword_27EE3F558 != -1)
    {
      dispatch_once(&qword_27EE3F558, &unk_2858EBCF0);
    }

    v39 = qword_27EE3F550;
    if (os_log_type_enabled(qword_27EE3F550, OS_LOG_TYPE_ERROR))
    {
      LOWORD(pixelTransferSessionOut.__r_.__value_.__l.__data_) = 0;
      _os_log_error_impl(&dword_2460CF000, v39, OS_LOG_TYPE_ERROR, "MVGConsistency::addNewFrame: Failed to create buffers!", &pixelTransferSessionOut, 2u);
    }

    v19 = 0xFFFFFFFFLL;
  }

  else
  {
    if (qword_27EE3F558 != -1)
    {
      dispatch_once(&qword_27EE3F558, &unk_2858EBCF0);
    }

    v67 = a1;
    v32 = qword_27EE3F550;
    if (os_log_type_enabled(qword_27EE3F550, OS_LOG_TYPE_DEBUG))
    {
      if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
      {
        sub_2461058F0(&pixelTransferSessionOut, __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
      }

      else
      {
        pixelTransferSessionOut = __p;
      }

      v45 = &pixelTransferSessionOut;
      if ((pixelTransferSessionOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
      {
        v45 = pixelTransferSessionOut.__r_.__value_.__r.__words[0];
      }

      buf[0] = 136446210;
      *&buf[1] = v45;
      _os_log_debug_impl(&dword_2460CF000, v32, OS_LOG_TYPE_DEBUG, "MVGConsistency::addNewFrame: Adding frame %{public}s", buf, 0xCu);
      if (SHIBYTE(pixelTransferSessionOut.__r_.__value_.__r.__words[2]) < 0)
      {
        operator delete(pixelTransferSessionOut.__r_.__value_.__l.__data_);
      }
    }

    v33 = *(v26 + 64);
    v34 = *(v26 + 56);
    if (v33 == v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = 18 * (v33 - v34) - 1;
    }

    v36 = *(v26 + 80);
    v37 = *(v26 + 88) + v36;
    if (v35 == v37)
    {
      if (v36 < 0x12)
      {
        v40 = *(v26 + 72);
        v41 = *(v26 + 48);
        if (v33 - v34 < (v40 - v41))
        {
          operator new();
        }

        if (v40 == v41)
        {
          v42 = 1;
        }

        else
        {
          v42 = (v40 - v41) >> 2;
        }

        if (!(v42 >> 61))
        {
          operator new();
        }

        sub_2460D368C();
      }

      *(v26 + 80) = v36 - 18;
      pixelTransferSessionOut.__r_.__value_.__r.__words[0] = *v34;
      *(v26 + 56) = v34 + 1;
      sub_246102CFC((v26 + 48), &pixelTransferSessionOut);
      v38 = v67;
      v34 = *(v26 + 56);
      v37 = *(v26 + 88) + *(v26 + 80);
    }

    else
    {
      v38 = v67;
    }

    v48 = v34[v37 / 0x12] - 4032 * (v37 / 0x12) + 224 * v37;
    *v48 = 0;
    *(v48 + 8) = 0;
    v49 = v70;
    v50 = v71;
    v51 = v73;
    *(v48 + 48) = v72;
    *(v48 + 64) = v51;
    *(v48 + 16) = v49;
    *(v48 + 32) = v50;
    v52 = v74;
    v53 = v76;
    *(v48 + 96) = v75;
    *(v48 + 112) = v53;
    *(v48 + 80) = v52;
    v54 = v77;
    v55 = v78;
    v56 = v80;
    *(v48 + 160) = v79;
    *(v48 + 176) = v56;
    *(v48 + 128) = v54;
    *(v48 + 144) = v55;
    if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
    {
      sub_2461058F0((v48 + 192), __p.__r_.__value_.__l.__data_, __p.__r_.__value_.__l.__size_);
    }

    else
    {
      v57 = *&__p.__r_.__value_.__l.__data_;
      *(v48 + 208) = *(&__p.__r_.__value_.__l + 2);
      *(v48 + 192) = v57;
    }

    *v48 = CVPixelBufferRetain(pixelBufferOut);
    *(v48 + 8) = CVPixelBufferRetain(texture);
    ++*(v26 + 88);
    v58 = *v38;
    if (*(*v38 + 88) >= (*(*v38 + 16) + 1))
    {
      if (qword_27EE3F558 != -1)
      {
        dispatch_once(&qword_27EE3F558, &unk_2858EBCF0);
      }

      v60 = qword_27EE3F550;
      if (os_log_type_enabled(qword_27EE3F550, OS_LOG_TYPE_DEBUG))
      {
        v62 = v58[11] + v58[10] - 1;
        v63 = *(v58[7] + 8 * (v62 / 0x12)) - 4032 * (v62 / 0x12) + 224 * v62;
        if (*(v63 + 215) < 0)
        {
          sub_2461058F0(&pixelTransferSessionOut, *(v63 + 192), *(v63 + 200));
        }

        else
        {
          v64 = *(v63 + 192);
          pixelTransferSessionOut.__r_.__value_.__r.__words[2] = *(v63 + 208);
          *&pixelTransferSessionOut.__r_.__value_.__l.__data_ = v64;
        }

        v65 = &pixelTransferSessionOut;
        if ((pixelTransferSessionOut.__r_.__value_.__r.__words[2] & 0x8000000000000000) != 0)
        {
          v65 = pixelTransferSessionOut.__r_.__value_.__r.__words[0];
        }

        buf[0] = 136446210;
        *&buf[1] = v65;
        _os_log_debug_impl(&dword_2460CF000, v60, OS_LOG_TYPE_DEBUG, "MVGConsistency::evaluateFrame: Evaluating frame %{public}s", buf, 0xCu);
        if (SHIBYTE(pixelTransferSessionOut.__r_.__value_.__r.__words[2]) < 0)
        {
          operator delete(pixelTransferSessionOut.__r_.__value_.__l.__data_);
        }
      }

      CVPixelBufferLockBaseAddress(*(*(v58[7] + 8 * ((v58[11] + v58[10] - 1) / 0x12uLL)) - 4032 * ((v58[11] + v58[10] - 1) / 0x12uLL) + 224 * (v58[11] + v58[10] - 1) + 8), 1uLL);
      cva::imageViewFromPixelBuffer<float>();
    }

    if (qword_27EE3F558 != -1)
    {
      dispatch_once(&qword_27EE3F558, &unk_2858EBCF0);
    }

    v59 = qword_27EE3F550;
    if (os_log_type_enabled(qword_27EE3F550, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(pixelTransferSessionOut.__r_.__value_.__l.__data_) = 0;
      _os_log_debug_impl(&dword_2460CF000, v59, OS_LOG_TYPE_DEBUG, "MVGConsistency::evaluateFrame: Not enough frames, skipping evaluation.", &pixelTransferSessionOut, 2u);
    }

    v19 = 0;
  }

  CVPixelBufferRelease(pixelBufferOut);
  CVPixelBufferRelease(texture);
  if (SHIBYTE(__p.__r_.__value_.__r.__words[2]) < 0)
  {
    operator delete(__p.__r_.__value_.__l.__data_);
  }

  return v19;
}

void sub_2460F25B8(_Unwind_Exception *a1)
{
  if (SLOBYTE(STACK[0x2D7]) < 0)
  {
    operator delete(STACK[0x2C0]);
  }

  _Unwind_Resume(a1);
}

CVPixelBufferRef OCMultiviewGeometryCreatePhotometricConfidenceMap(CVPixelBufferRef result)
{
  if (result)
  {
    return CVPixelBufferRetain(*(*result + 40));
  }

  return result;
}

CVPixelBufferRef OCMultiviewGeometryCreateGeometricConfidenceMap(CVPixelBufferRef result)
{
  if (result)
  {
    return CVPixelBufferRetain(*(*result + 32));
  }

  return result;
}

void sub_2460F2600(uint64_t a1)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    *(a1 + 72) = v2;
    operator delete(v2);
    v1 = vars8;
  }

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_2460F2658(uint64_t result)
{
  v1 = *(result + 64);
  if (v1)
  {
    *(result + 72) = v1;
    v2 = result;
    operator delete(v1);
    return v2;
  }

  return result;
}

float sub_2460F2694(uint64_t a1, CVPixelBufferRef pixelBuffer, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  result = 0.0;
  if (*(a1 + 8) >= a5 && *(a1 + 16) >= a6 && WidthOfPlane > a3 && HeightOfPlane > a4)
  {
    v15 = a3;
    v16 = vcvtd_n_f64_u64(a5, 1uLL);
    v17 = fmax(a3 - v16, 0.0);
    v18 = fmin(v16 + v15, WidthOfPlane);
    v19 = vcvtd_n_f64_u64(a6, 1uLL);
    v20 = v18 - v17;
    v21 = fmax(a4 - v19, 0.0);
    v22 = fmin(v19 + a4, HeightOfPlane) - v21;
    CVPixelBufferLockBaseAddress(pixelBuffer, 1uLL);
    BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(pixelBuffer, 0);
    BytesPerRowOfPlane = CVPixelBufferGetBytesPerRowOfPlane(pixelBuffer, 0);
    src.data = &BaseAddressOfPlane[BytesPerRowOfPlane * v21 + v17];
    src.height = v22;
    src.width = v20;
    src.rowBytes = BytesPerRowOfPlane;
    dest.data = *(a1 + 64);
    dest.height = v22;
    dest.width = v20;
    dest.rowBytes = 4 * v20;
    vImageConvert_Planar8toPlanarF(&src, &dest, 0.0, 255.0, 0);
    CVPixelBufferUnlockBaseAddress(pixelBuffer, 1uLL);
    vDSP_f3x3(*(a1 + 64), v22, v20, (a1 + 24), *(a1 + 64));
    __StandardDeviation = 0;
    vDSP_normalize(*(a1 + 64), 1, 0, 1, &__StandardDeviation + 1, &__StandardDeviation, v22 * v20);
    return *&__StandardDeviation;
  }

  return result;
}

void sub_2460F2834(uint64_t a1)
{
  sub_2460F286C(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_2460F286C(uint64_t a1)
{
  CVMetalTextureCacheFlush(*(a1 + 64), 0);

  v2 = *(a1 + 120);
  if (v2)
  {
    *(a1 + 128) = v2;
    operator delete(v2);
  }

  return a1;
}

void sub_2460F28DC(_Unwind_Exception *a1)
{
  v3 = *(v1 + 120);
  if (v3)
  {
    *(v1 + 128) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(a1);
}

void sub_2460F292C(uint64_t a1, CVPixelBufferRef pixelBuffer, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  CVPixelBufferGetPixelFormatType(pixelBuffer);
  WidthOfPlane = CVPixelBufferGetWidthOfPlane(pixelBuffer, 0);
  HeightOfPlane = CVPixelBufferGetHeightOfPlane(pixelBuffer, 0);
  if (*(a1 + 8) >= a5 && *(a1 + 16) >= a6 && WidthOfPlane > a3)
  {
    v14 = HeightOfPlane;
    if (HeightOfPlane > a4)
    {
      textureOut = 0;
      if (!CVMetalTextureCacheCreateTextureFromImage(*MEMORY[0x277CBECE8], *(a1 + 64), pixelBuffer, 0, MTLPixelFormatR8Unorm, WidthOfPlane, HeightOfPlane, 0, &textureOut))
      {
        v53 = CVMetalTextureGetTexture(textureOut);
        v15 = *(*(a1 + 72) + 8);
        v18 = objc_msgSend_commandBuffer(v15, v16, v17);
        v21 = objc_msgSend_computeCommandEncoder(v18, v19, v20);
        objc_msgSend_setComputePipelineState_(v21, v22, *(a1 + 144));
        objc_msgSend_setTexture_atIndex_(v21, v23, v53, 0);
        v24 = vcvtd_n_f64_u64(a5, 1uLL);
        v25 = fmax(a3 - v24, 0.0);
        v26 = fmin(v24 + a3, WidthOfPlane) - v25;
        v27 = vcvtd_n_f64_u64(a6, 1uLL);
        v28 = fmax(a4 - v27, 0.0);
        v29 = fmin(v27 + a4, v14);
        LODWORD(v30) = v25;
        DWORD1(v30) = v28;
        v31 = v29 - v28;
        DWORD2(v30) = v26;
        HIDWORD(v30) = v29 - DWORD1(v30);
        v60 = v30;
        objc_msgSend_setBytes_length_atIndex_(v21, v32, &v60, 16, 0);
        objc_msgSend_setTexture_atIndex_(v21, v33, *(a1 + 96), 1);
        v34 = *(a1 + 144);
        v37 = objc_msgSend_threadExecutionWidth(v34, v35, v36);
        v40 = objc_msgSend_maxTotalThreadsPerThreadgroup(v34, v38, v39) / v37;

        v54 = v26;
        v55 = v31;
        v56 = 1;
        v59[0] = v37;
        v59[1] = v40;
        v59[2] = 1;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v21, v41, &v54, v59);
        objc_msgSend_endEncoding(v21, v42, v43);
        objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 80), v44, v18, *(a1 + 96), *(a1 + 104));
        objc_msgSend_encodeToCommandBuffer_sourceTexture_destinationTexture_(*(a1 + 88), v45, v18, *(a1 + 104), *(a1 + 112));
        objc_msgSend_commit(v18, v46, v47);
        objc_msgSend_waitUntilCompleted(v18, v48, v49);
        v50 = *(a1 + 112);
        v51 = *(a1 + 120);
        v54 = 0;
        v55 = 0;
        v56 = 0;
        v57 = xmmword_24613FBA0;
        v58 = 1;
        objc_msgSend_getBytes_bytesPerRow_fromRegion_mipmapLevel_(v50, v52, v51, 8, &v54, 0);
      }
    }
  }
}

__IOSurface *OCNonModularSPI_Serialization_CVBufferToData(__IOSurface *DataSize)
{
  if (DataSize)
  {
    DataSize = CVDataBufferGetDataSize();
    if (DataSize)
    {
      v2 = DataSize;
      DataSize = CVDataBufferGetIOSurface();
      if (DataSize)
      {
        BaseAddress = IOSurfaceGetBaseAddress(DataSize);
        DataSize = objc_msgSend_dataWithBytes_length_(MEMORY[0x277CBEA90], v4, BaseAddress, v2);
      }
    }

    v1 = vars8;
  }

  return DataSize;
}

float OCImageDSPCentralCropMean(__CVBuffer *a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, float *a6)
{
  if (a1)
  {
    PixelFormatType = CVPixelBufferGetPixelFormatType(a1);
    if ((a4 & 1) != 0 && PixelFormatType == 1717855600 && (a5 & 1) != 0 && a6)
    {
      Width = CVPixelBufferGetWidth(a1);
      Height = CVPixelBufferGetHeight(a1);
      BytesPerRow = CVPixelBufferGetBytesPerRow(a1);
      v16 = a4 >> 1;
      if (a2 >= a4 >> 1)
      {
        v17 = a2 - (a4 >> 1);
      }

      else
      {
        v17 = 0;
      }

      v18 = a5 >> 1;
      v19 = v16 + a2;
      if (a3 >= a5 >> 1)
      {
        v20 = a3 - (a5 >> 1);
      }

      else
      {
        v20 = 0;
      }

      if (v19 < Width)
      {
        Width = v19 + 1;
      }

      if (v18 + a3 < Height)
      {
        Height = v18 + a3 + 1;
      }

      v21 = Height - v20;
      if (Height != v20)
      {
        if (!(v21 >> 62))
        {
          operator new();
        }

        sub_2460D368C();
      }

      if (!CVPixelBufferLockBaseAddress(a1, 1uLL))
      {
        BaseAddress = CVPixelBufferGetBaseAddress(a1);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        block[2] = sub_2460F2F04;
        block[3] = &unk_278E9B368;
        block[4] = &BaseAddress[4 * v17 + ((BytesPerRow * v20) & 0xFFFFFFFFFFFFFFFCLL)];
        block[5] = BytesPerRow;
        block[6] = 0;
        block[7] = Width - v17;
        dispatch_apply(Height - v20, 0, block);
        __C = 0.0;
        vDSP_sve(0, 1, &__C, Height - v20);
        if (!CVPixelBufferUnlockBaseAddress(a1, 1uLL))
        {
          result = __C / (v21 * (Width - v17));
          *a6 = result;
        }
      }
    }
  }

  return result;
}

void sub_2460F2EE4(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

uint64_t OCRegistrationCreate(_DWORD *a1, void *a2)
{
  v4 = operator new(0x10uLL, MEMORY[0x277D826F0]);
  if (!v4)
  {
    return 4294967293;
  }

  v5 = v4;
  result = 0;
  *v5 = 0;
  v5[1] = 0;
  *v5 = *a1;
  *a2 = v5;
  return result;
}

uint64_t OCRegistrationStart(uint64_t a1)
{
  if (a1)
  {
    operator new();
  }

  return 0xFFFFFFFFLL;
}

void sub_2460F348C(_Unwind_Exception *a1)
{
  v4 = sub_246104EC0(v2);
  MEMORY[0x24C1995D0](v4, 0x10F0C40B93F282ALL);
  sub_246104BB8(v1 + 1);
  v5 = *v1;
  *v1 = 0;
  if (v5)
  {
    MEMORY[0x24C1995D0](v5, 0x60C4044C4A2DFLL);
  }

  _Unwind_Resume(a1);
}

uint64_t OCRegistrationStop(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v1)
  {
    v2 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (v2)
    {
      (*(*v2 + 16))(v2);
    }

    v3 = *(v1 + 8);
    if (v3)
    {
      *(v1 + 16) = v3;
      operator delete(v3);
    }

    v4 = *v1;
    *v1 = 0;
    if (v4)
    {
      v5 = sub_246105848(v4);
      MEMORY[0x24C1995D0](v5, 0x1020C406C4767B9);
    }

    MEMORY[0x24C1995D0](v1, 0x1060C406E0EDD12);
  }

  return 0;
}

uint64_t OCRegistrationDestroy(uint64_t a1)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v1 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v1)
  {
    v2 = a1;
    v3 = *(v1 + 128);
    *(v1 + 128) = 0;
    if (v3)
    {
      (*(*v3 + 16))(v3);
    }

    v4 = *(v1 + 8);
    if (v4)
    {
      *(v1 + 16) = v4;
      operator delete(v4);
    }

    v5 = *v1;
    *v1 = 0;
    if (v5)
    {
      v6 = sub_246105848(v5);
      MEMORY[0x24C1995D0](v6, 0x1020C406C4767B9);
    }

    MEMORY[0x24C1995D0](v1, 0x1060C406E0EDD12);
    a1 = v2;
  }

  MEMORY[0x24C1995D0](a1, 0x1020C40D5A9D86FLL);
  return 0;
}

uint64_t OCRegistrationProcess(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5, uint64_t a6, unint64_t a7, uint64_t *a8, uint64_t a9)
{
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v9 = *(a1 + 8);
  if (!v9)
  {
    return 0xFFFFFFFFLL;
  }

  result = 4294967294;
  if (a8)
  {
    if (a9)
    {
      v12 = *a8;
      v13 = a8[1];
      *(v9 + 112) = *a8;
      *(v9 + 120) = v13;
      if ((v13 & 0x7FFFFFFF) <= 0x7F7FFFFF)
      {
        v14 = fabsf(*(&v13 + 1)) == INFINITY || v12 == 0;
        if (!v14 && *&v13 <= 1.0 && *&v13 > 0.0 && *(&v13 + 1) > 0.0)
        {
          *(v9 + 112) = v12;
          *(v9 + 120) = v13;
          v15 = *(a1 + 8);
          v15[3] = a2;
          v15[4] = a3;
          v15[5] = a4;
          v15[6] = a5;
          v25 = 0u;
          v26 = 0u;
          v23 = 0u;
          v24 = 0u;
          if (a7)
          {
            if (a7 < 0x555555555555556)
            {
              operator new();
            }

            sub_2460D368C();
          }

          v16 = *(a1 + 8);
          if (fabsf(*(v16 + 108) + -1.0) <= 1.1755e-38)
          {
            v34 = 0;
            v32 = 0;
            v33 = 0;
            v35 = 0;
            v36 = 0;
            v37 = 0;
            v38 = 0;
            v39 = 0;
            v40 = 0;
            v41 = 0;
            v42 = 0;
            v43 = 0;
            v27 = 0x7F7FFFFF00800000;
            v17 = -1431655765 * ((*(v16 + 16) - *(v16 + 8)) >> 4);
            v18 = *(v16 + 64);
            v28 = *(v16 + 48);
            v29 = v18;
            v19 = *(v16 + 96);
            v30 = *(v16 + 80);
            v31 = v19;
            if ((v16 + 48) != &v23)
            {
              v20 = *(v16 + 64);
              v23 = *(v16 + 48);
              v24 = v20;
              v21 = *(v16 + 96);
              v25 = *(v16 + 80);
              v26 = v21;
            }

            v48 = 0;
            v49 = 16;
            memptr[0] = 0;
            malloc_type_posix_memalign(memptr, 0x20uLL, 0x40uLL, 0xE1AC2527uLL);
            v22 = memptr[0];
            v48 = memptr[0];
            LODWORD(v50) = 4;
            *memptr[0] = v28;
            v22[1] = v29;
            v22[2] = v30;
            v22[3] = v31;
            free(v22);
            if (*v16 && v17)
            {
              memptr[0] = 0;
              memptr[1] = 0;
              v47 = 0;
              v44 = 0uLL;
              v45 = 0;
              v27 = 0;
            }

            free(v41);
            free(v38);
            free(v35);
            free(v32);
          }

          return 0xFFFFFFFFLL;
        }
      }
    }
  }

  return result;
}

uint64_t OCPointCloudCreate(unsigned int a1, float32x4_t *a2, float32x4_t **a3, float32_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, int8x16_t a8)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a4 > 0.0 && (v10 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.f32[0]), v11 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, *a7.f32, 1), v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v13 = *(MEMORY[0x277D860B0] + 16), v14 = *(MEMORY[0x277D860B0] + 32), v15 = vdupq_n_s32(0x38D1B717u), v16 = vandq_s8(vandq_s8(vcgeq_f32(v15, vabdq_f32(v11, v13)), vcgeq_f32(v15, vabdq_f32(v10, *MEMORY[0x277D860B0]))), vcgeq_f32(v15, vabdq_f32(v12, v14))), v16.i32[3] = v16.i32[2], (vminvq_u32(v16) & 0x80000000) != 0) && (v17 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2)), v18 = vtrn2q_s32(a5, a6), v18.i32[2] = a7.i32[1], v19 = vzip1q_s32(vzip1q_s32(a5, a7), a6), v20 = vandq_s8(vandq_s8(vcgeq_f32(v15, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a6.f32[0]), v18, *a6.f32, 1), v17, a6, 2), v13)), vcgeq_f32(v15, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a5.f32[0]), v18, *a5.f32, 1), v17, a5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v15, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a7.f32[0]), v18, *a7.f32, 1), v17, a7, 2), v14))), v20.i32[3] = v20.i32[2], (vminvq_u32(v20) & 0x80000000) != 0) && (v21 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL))), fabsf((v21.f32[2] + vaddv_f32(*v21.f32)) + -1.0) <= 0.000011) && a3 && (v24 = vdup_n_s32(0x38D1B717u), v25 = vand_s8(vcge_f32(v24, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v24, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL))))), (vpmin_u32(v25, v25).u32[0] & 0x80000000) != 0))
  {
    v39 = a5;
    v40 = a6;
    v27 = a2;
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v31 = Instance;
      v32 = &Instance[6];
      v33 = a1;
      if (0xAAAAAAAAAAAAAAABLL * ((Instance[7].i64[0] - Instance[6].i64[0]) >> 4) < a1)
      {
        operator new();
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((Instance[8].i64[1] - Instance[7].i64[1]) >> 2) < a1)
      {
        operator new();
      }

      do
      {
        v34 = vmulq_f32(*v27, *v27);
        *&v35 = v34.f32[2] + vaddv_f32(*v34.f32);
        *v34.f32 = vrsqrte_f32(v35);
        *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32)));
        v36 = *v27;
        v36.i32[3] = 1.0;
        v37 = vmulq_n_f32(vnegq_f32(*v27), vmul_f32(*v34.f32, vrsqrts_f32(v35, vmul_f32(*v34.f32, *v34.f32))).f32[0]);
        v37.i32[3] = 0;
        *buf = v36;
        *&buf[16] = v37;
        v44 = xmmword_24613FA50;
        sub_2460F52EC(v32, buf);
        sub_2460F48CC(&v31[7].i64[1], &xmmword_24614005C);
        ++v27;
        --v33;
      }

      while (v33);
      v31[1].f32[0] = a4;
      v31[2] = v39;
      v31[3] = v40;
      v31[4] = a7;
      v31[5] = a8;
      *a3 = v31;
      kdebug_trace();
      return 0;
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
        *&buf[4] = "OCPointCloudCreate";
        *&buf[12] = 1026;
        *&buf[14] = 401;
        _os_log_error_impl(&dword_2460CF000, v38, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v22 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreate";
      *&buf[12] = 1026;
      *&buf[14] = 391;
      _os_log_error_impl(&dword_2460CF000, v22, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

void sub_2460F48CC(uint64_t a1, __int128 *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v7 = *a1;
    v8 = 0xCCCCCCCCCCCCCCCDLL * ((v3 - *a1) >> 2);
    v9 = v8 + 1;
    if (v8 + 1 > 0xCCCCCCCCCCCCCCCLL)
    {
      sub_2460D368C();
    }

    v10 = 0xCCCCCCCCCCCCCCCDLL * ((v4 - v7) >> 2);
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x666666666666666)
    {
      v11 = 0xCCCCCCCCCCCCCCCLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (v11 <= 0xCCCCCCCCCCCCCCCLL)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v12 = 4 * ((v3 - *a1) >> 2);
    *v12 = *a2;
    *(v12 + 16) = *(a2 + 4);
    v6 = 20 * v8 + 20;
    v13 = 20 * v8 - (v3 - v7);
    memcpy((v12 - (v3 - v7)), v7, v3 - v7);
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
    *(v3 + 16) = *(a2 + 4);
    *v3 = v5;
    v6 = v3 + 20;
  }

  *(a1 + 8) = v6;
}

uint64_t sub_2460F4A04()
{
  qword_27EE3F4D0 = 0;
  *algn_27EE3F4D8 = "OCPointCloud";
  qword_27EE3F4E0 = sub_2460F4B8C;
  unk_27EE3F4E8 = 0;
  qword_27EE3F4F8 = 0;
  unk_27EE3F500 = 0;
  qword_27EE3F4F0 = sub_2460F4B28;
  qword_27EE3F508 = sub_2460F4ACC;
  qword_27EE3F510 = sub_2460F4A7C;
  result = _CFRuntimeRegisterClass();
  qword_27EE3F4C0 = result;
  return result;
}

CFStringRef sub_2460F4A7C(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<OCPointCloud %p [%p]>", a1, v3);
}

CFStringRef sub_2460F4ACC(const void *a1, const __CFDictionary *a2)
{
  v4 = CFGetAllocator(a1);
  v5 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v4, a2, @"<OCPointCloud %p [%p]>", a1, v5);
}

double sub_2460F4B28(uint64_t a1)
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
    *(a1 + 128) = 0;
    *(a1 + 136) = 0;
    *(a1 + 120) = 0;
    if (v3)
    {
      operator delete(v3);
    }

    result = 0.0;
    *(a1 + 112) = 0u;
    *(a1 + 128) = 0u;
    *(a1 + 80) = 0u;
    *(a1 + 96) = 0u;
    *(a1 + 48) = 0u;
    *(a1 + 64) = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = 0u;
  }

  return result;
}

double sub_2460F4B8C(_OWORD *a1)
{
  result = 0.0;
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

uint64_t sub_2460F4BA4()
{
  qword_27EE3F4B0 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

uint64_t OCPointCloudCreateWithRGB(unsigned int a1, float32x4_t *a2, uint64_t a3, __CVBuffer *a4, float32x4_t **a5, float a6, float32x4_t a7, float32x4_t a8, float32x4_t a9, int8x16_t a10)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4 && a6 > 0.0 && (v12 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a7, a7.f32[0]), a8, a8.f32[0]), a9, a9.f32[0]), v13 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a7, *a7.f32, 1), a8, *a8.f32, 1), a9, *a9.f32, 1), v14 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a7, a7, 2), a8, a8, 2), a9, a9, 2), v15 = *(MEMORY[0x277D860B0] + 16), v16 = *(MEMORY[0x277D860B0] + 32), v17 = vdupq_n_s32(0x38D1B717u), v18 = vandq_s8(vandq_s8(vcgeq_f32(v17, vabdq_f32(v13, v15)), vcgeq_f32(v17, vabdq_f32(v12, *MEMORY[0x277D860B0]))), vcgeq_f32(v17, vabdq_f32(v14, v16))), v18.i32[3] = v18.i32[2], (vminvq_u32(v18) & 0x80000000) != 0) && (v19 = vzip1q_s32(vzip2q_s32(a7, a9), vdupq_laneq_s32(a8, 2)), v20 = vtrn2q_s32(a7, a8), v20.i32[2] = a9.i32[1], v21 = vzip1q_s32(vzip1q_s32(a7, a9), a8), v22 = vandq_s8(vandq_s8(vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, a8.f32[0]), v20, *a8.f32, 1), v19, a8, 2), v15)), vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, a7.f32[0]), v20, *a7.f32, 1), v19, a7, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v17, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v21, a9.f32[0]), v20, *a9.f32, 1), v19, a9, 2), v16))), v22.i32[3] = v22.i32[2], (vminvq_u32(v22) & 0x80000000) != 0) && (v23 = vmulq_f32(a7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a9, a9, 0xCuLL), a9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL))), vextq_s8(vuzp1q_s32(a9, a9), a9, 0xCuLL), vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL))), fabsf((v23.f32[2] + vaddv_f32(*v23.f32)) + -1.0) <= 0.000011) && a5 && (v27 = vdup_n_s32(0x38D1B717u), v28 = vand_s8(vcge_f32(v27, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a9, a9, 8uLL), *&vextq_s8(a10, a10, 8uLL)), 0xBF80000080000000))), vcge_f32(v27, vabs_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL))))), (vpmin_u32(v28, v28).u32[0] & 0x80000000) != 0))
  {
    v54 = a7;
    v55 = a8;
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v36 = Instance;
      v37 = &Instance[6];
      v38 = a1;
      if (0xAAAAAAAAAAAAAAABLL * ((Instance[7].i64[0] - Instance[6].i64[0]) >> 4) < a1)
      {
        operator new();
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((Instance[8].i64[1] - Instance[7].i64[1]) >> 2) < a1)
      {
        operator new();
      }

      v39 = (a3 + 8);
      v40 = a5;
      v41 = a6;
      v42 = a4;
      v43 = a2;
      do
      {
        LODWORD(v34) = llround(*(v39 - 1));
        if ((v34 & 0x80000000) == 0)
        {
          LODWORD(v35) = llround(*v39);
          if ((v35 & 0x80000000) == 0)
          {
            v44 = v43;
            v59 = *v43;
            v61 = *v43;
            sub_24610D3B0(&v65, v42, v34, v35);
            if (v66)
            {
              v45 = v61;
              v45.i32[3] = 1.0;
              v46 = vmulq_f32(v59, v59);
              *&v47 = v46.f32[2] + vaddv_f32(*v46.f32);
              v48 = vrsqrte_f32(v47);
              v49 = vmul_f32(v48, vrsqrts_f32(v47, vmul_f32(v48, v48)));
              v50 = vmulq_n_f32(vnegq_f32(v59), vmul_f32(v49, vrsqrts_f32(v47, vmul_f32(v49, v49))).f32[0]);
              v50.i32[3] = 0;
              v51 = v65;
              HIDWORD(v51) = 1.0;
              *buf = v45;
              *&buf[16] = v50;
              v63 = v51;
              v64 = 1;
              sub_2460F52EC(v37, buf);
              sub_2460F48CC(&v36[7].i64[1], &xmmword_24614005C);
            }

            v40 = a5;
            v41 = a6;
            v42 = a4;
            v43 = v44;
          }
        }

        v39 += 2;
        ++v43;
        --v38;
      }

      while (v38);
      if (v36[6].i64[0] == v36[6].i64[1])
      {
        if (qword_27EE3F4B8 != -1)
        {
          dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
        }

        v53 = qword_27EE3F4B0;
        if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "OCPointCloudCreateWithRGB";
          *&buf[12] = 1026;
          *&buf[14] = 471;
          _os_log_error_impl(&dword_2460CF000, v53, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - no points with valid pixel coords.", buf, 0x12u);
        }

        CFRelease(v36);
        v25 = 0xFFFFFFFFLL;
      }

      else
      {
        v25 = 0;
        v36[1].f32[0] = v41;
        v36[2] = v54;
        v36[3] = v55;
        v36[4] = a9;
        v36[5] = a10;
        *v40 = v36;
      }

      kdebug_trace();
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v52 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateWithRGB";
        *&buf[12] = 1026;
        *&buf[14] = 450;
        _os_log_error_impl(&dword_2460CF000, v52, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v24 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateWithRGB";
      *&buf[12] = 1026;
      *&buf[14] = 440;
      _os_log_error_impl(&dword_2460CF000, v24, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }

  return v25;
}

void sub_2460F52EC(uint64_t a1, _OWORD *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 >= v4)
  {
    v8 = *a1;
    v9 = 0xAAAAAAAAAAAAAAABLL * (&v3[-*a1] >> 4);
    v10 = v9 + 1;
    if (v9 + 1 > 0x555555555555555)
    {
      sub_2460D368C();
    }

    v11 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v8) >> 4);
    if (2 * v11 > v10)
    {
      v10 = 2 * v11;
    }

    if (v11 >= 0x2AAAAAAAAAAAAAALL)
    {
      v12 = 0x555555555555555;
    }

    else
    {
      v12 = v10;
    }

    if (v12)
    {
      if (v12 <= 0x555555555555555)
      {
        operator new();
      }

      sub_2460D368C();
    }

    v13 = (16 * (&v3[-*a1] >> 4));
    v14 = a2[1];
    *v13 = *a2;
    v13[1] = v14;
    v13[2] = a2[2];
    v7 = 48 * v9 + 48;
    v15 = 48 * v9 - (v3 - v8);
    memcpy(v13 - (v3 - v8), v8, v3 - v8);
    *a1 = v15;
    *(a1 + 8) = v7;
    *(a1 + 16) = 0;
    if (v8)
    {
      operator delete(v8);
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v3 + 1) = a2[1];
    *(v3 + 2) = v6;
    *v3 = v5;
    v7 = (v3 + 48);
  }

  *(a1 + 8) = v7;
}

void OCPointCloudRelease(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

uint64_t OCPointCloudCreateWithRGBAndPlaneClassification(unsigned int a1, float32x4_t *a2, uint64_t a3, __CVBuffer *a4, uint64_t a5, float32x4_t **a6, float a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, int8x16_t a11, uint64_t a12, uint64_t a13, double a14, double a15, double a16, float32x4_t a17, float32x4_t a18, float32x4_t a19, float32x4_t a20, float a21)
{
  v93 = *MEMORY[0x277D85DE8];
  if (a1
    && a2
    && a3
    && a4
    && a7 > 0.0
    && (v21 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a8, a8.f32[0]), a9, a9.f32[0]), a10, a10.f32[0]), v22 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a8, *a8.f32, 1), a9, *a9.f32, 1), a10, *a10.f32, 1), v23 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a8, a8, 2), a9, a9, 2), a10, a10, 2), v25 = *MEMORY[0x277D860B0], v24 = *(MEMORY[0x277D860B0] + 16), v26 = *(MEMORY[0x277D860B0] + 32), v27 = vdupq_n_s32(0x38D1B717u), v28 = vandq_s8(vandq_s8(vcgeq_f32(v27, vabdq_f32(v22, v24)), vcgeq_f32(v27, vabdq_f32(v21, *MEMORY[0x277D860B0]))), vcgeq_f32(v27, vabdq_f32(v23, v26))), v28.i32[3] = v28.i32[2], (vminvq_u32(v28) & 0x80000000) != 0)
    && (v29 = vzip1q_s32(vzip2q_s32(a8, a10), vdupq_laneq_s32(a9, 2)), v30 = vtrn2q_s32(a8, a9), v30.i32[2] = a10.i32[1], v31 = vzip1q_s32(vzip1q_s32(a8, a10), a9), v32 = vandq_s8(vandq_s8(vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, a9.f32[0]), v30, *a9.f32, 1), v29, a9, 2), v24)), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, a8.f32[0]), v30, *a8.f32, 1), v29, a8, 2), v25))), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, a10.f32[0]), v30, *a10.f32, 1), v29, a10, 2), v26))), v32.i32[3] = v32.i32[2], (vminvq_u32(v32) & 0x80000000) != 0)
    && (v33 = vmulq_f32(a8, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a10, a10, 0xCuLL), a10, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a9, a9), a9, 0xCuLL))), vextq_s8(vuzp1q_s32(a10, a10), a10, 0xCuLL), vextq_s8(vextq_s8(a9, a9, 0xCuLL), a9, 8uLL))), fabsf((v33.f32[2] + vaddv_f32(*v33.f32)) + -1.0) <= 0.000011)
    && a5
    && (v34 = vdup_n_s32(0x38D1B717u), v35 = vand_s8(vcge_f32(v34, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a10, a10, 8uLL), *&vextq_s8(a11, a11, 8uLL)), 0xBF80000080000000))), vcge_f32(v34, vabs_f32(vzip2_s32(*&vextq_s8(a8, a8, 8uLL), *&vextq_s8(a9, a9, 8uLL))))), (vpmin_u32(v35, v35).u32[0] & 0x80000000) != 0)
    && (v36 = vdupq_n_s32(0x38D1B717u), v37 = vandq_s8(vandq_s8(vcgeq_f32(v36, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a17, *a17.f32, 1), a18, *a18.f32, 1), a19, *a19.f32, 1), v24)), vcgeq_f32(v36, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a17, a17.f32[0]), a18, a18.f32[0]), a19, a19.f32[0]), v25))), vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a17, a17, 2), a18, a18, 2), a19, a19, 2), v26))), v37.i32[3] = v37.i32[2], (vminvq_u32(v37) & 0x80000000) != 0)
    && (v38 = vzip1q_s32(vzip2q_s32(a17, a19), vdupq_laneq_s32(a18, 2)), v39 = vtrn2q_s32(a17, a18), v39.i32[2] = a19.i32[1], v40 = vzip1q_s32(vzip1q_s32(a17, a19), a18), v41 = vandq_s8(vandq_s8(vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, a18.f32[0]), v39, *a18.f32, 1), v38, a18, 2), v24)), vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, a17.f32[0]), v39, *a17.f32, 1), v38, a17, 2), v25))), vcgeq_f32(v36, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, a19.f32[0]), v39, *a19.f32, 1), v38, a19, 2), v26))), v41.i32[3] = v41.i32[2], (vminvq_u32(v41) & 0x80000000) != 0)
    && (v42 = vmulq_f32(a17, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a19, a19, 0xCuLL), a19, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a18, a18), a18, 0xCuLL))), vextq_s8(vuzp1q_s32(a19, a19), a19, 0xCuLL), vextq_s8(vextq_s8(a18, a18, 0xCuLL), a18, 8uLL))), fabsf((v42.f32[2] + vaddv_f32(*v42.f32)) + -1.0) <= 0.000011)
    && a6
    && a21 >= 0.0
    && (v45 = vdup_n_s32(0x38D1B717u), v46 = vand_s8(vcge_f32(v45, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a19, a19, 8uLL), *&vextq_s8(a20, a20, 8uLL)), 0xBF80000080000000))), vcge_f32(v45, vabs_f32(vzip2_s32(*&vextq_s8(a17, a17, 8uLL), *&vextq_s8(a18, a18, 8uLL))))), (vpmin_u32(v46, v46).u32[0] & 0x80000000) != 0))
  {
    v76 = a8;
    v77 = a9;
    v79 = a11;
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v54 = a1;
      v82 = &Instance[6];
      if (0xAAAAAAAAAAAAAAABLL * ((Instance[7].i64[0] - Instance[6].i64[0]) >> 4) < a1)
      {
        operator new();
      }

      v80 = Instance;
      v81 = &Instance[7].i64[1];
      if (0xCCCCCCCCCCCCCCCDLL * ((Instance[8].i64[1] - Instance[7].i64[1]) >> 2) < a1)
      {
        operator new();
      }

      if (*(a5 + 104))
      {
        operator new();
      }

      v56 = a6;
      v57 = a7;
      v58 = a4;
      v59 = a2;
      v60 = a3;
      v61 = *(a5 + 48);
      v62 = *(a5 + 16);
      v63 = *(a5 + 32);
      v64 = vmlaq_f32(vmlaq_f32(vaddq_f32(v62, vmulq_f32(*a5, 0)), 0, v63), 0, v61);
      v65 = vmulq_f32(v64, vaddq_f32(v61, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a5, COERCE_FLOAT(*(a5 + 64))), v62, *(a5 + 64), 1), v63, *(a5 + 64), 2)));
      v64.f32[3] = v65.f32[2] + vaddv_f32(*v65.f32);
      v85 = v64;
      v66 = (v60 + 8);
      do
      {
        LODWORD(v52) = llround(*(v66 - 1));
        if ((v52 & 0x80000000) == 0)
        {
          LODWORD(v53) = llround(*v66);
          if ((v53 & 0x80000000) == 0)
          {
            v67 = v59;
            v87 = *v59;
            sub_24610D3B0(&v91, v58, v52, v53);
            if (v92)
            {
              v68 = v87;
              v68.i32[3] = 1.0;
              v69 = vmulq_f32(v87, v87);
              *&v70 = v69.f32[2] + vaddv_f32(*v69.f32);
              *v69.f32 = vrsqrte_f32(v70);
              *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32)));
              v71 = vmulq_n_f32(vnegq_f32(v87), vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
              v71.i32[3] = 0;
              v72 = v91;
              HIDWORD(v72) = 1.0;
              *buf = v68;
              *&buf[16] = v71;
              v89 = v72;
              v90 = 1;
              sub_2460F52EC(v82, buf);
              v73 = vaddq_f32(a20, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(a17, v87.f32[0]), a18, *v87.f32, 1), a19, v87, 2));
              v73.i32[3] = -1.0;
              v74 = vmulq_f32(v85, v73);
              v91 = xmmword_246140048;
              v92 = 0;
              BYTE8(v91) = vaddv_f32(vadd_f32(*v74.i8, *&vextq_s8(v74, v74, 8uLL))) >= a21;
              sub_2460F48CC(v81, &v91);
            }

            v56 = a6;
            v57 = a7;
            v58 = a4;
            v59 = v67;
          }
        }

        v66 += 2;
        ++v59;
        --v54;
      }

      while (v54);
      if (v80[6].i64[0] == v80[6].i64[1])
      {
        if (qword_27EE3F4B8 != -1)
        {
          dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
        }

        v75 = qword_27EE3F4B0;
        if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "OCPointCloudCreateWithRGBAndPlaneClassification";
          *&buf[12] = 1026;
          *&buf[14] = 534;
          _os_log_error_impl(&dword_2460CF000, v75, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - no points above plane with valid pixel coords.", buf, 0x12u);
        }

        CFRelease(v80);
        kdebug_trace();
        return 0xFFFFFFFFLL;
      }

      else
      {
        v80[1].f32[0] = v57;
        v80[2] = v76;
        v80[3] = v77;
        v80[4] = a10;
        v80[5] = v79;
        *v56 = v80;
        kdebug_trace();
        return 0;
      }
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v55 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateWithRGBAndPlaneClassification";
        *&buf[12] = 1026;
        *&buf[14] = 513;
        _os_log_error_impl(&dword_2460CF000, v55, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      return 4294967293;
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
      *&buf[4] = "OCPointCloudCreateWithRGBAndPlaneClassification";
      *&buf[12] = 1026;
      *&buf[14] = 503;
      _os_log_error_impl(&dword_2460CF000, v43, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

void sub_2460F5EC0(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
    _Unwind_Resume(exception_object);
  }

  operator delete(v1);
  _Unwind_Resume(exception_object);
}

uint64_t OCPointCloudCreateWithNormal(unsigned int a1, __int128 *a2, __int128 *a3, float32x4_t **a4, float32_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, int8x16_t a9)
{
  v45 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a5 > 0.0 && (v11 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a6, a6.f32[0]), a7, a7.f32[0]), a8, a8.f32[0]), v12 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a6, *a6.f32, 1), a7, *a7.f32, 1), a8, *a8.f32, 1), v13 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a6, a6, 2), a7, a7, 2), a8, a8, 2), v14 = *(MEMORY[0x277D860B0] + 16), v15 = *(MEMORY[0x277D860B0] + 32), v16 = vdupq_n_s32(0x38D1B717u), v17 = vandq_s8(vandq_s8(vcgeq_f32(v16, vabdq_f32(v12, v14)), vcgeq_f32(v16, vabdq_f32(v11, *MEMORY[0x277D860B0]))), vcgeq_f32(v16, vabdq_f32(v13, v15))), v17.i32[3] = v17.i32[2], (vminvq_u32(v17) & 0x80000000) != 0) && (v18 = vzip1q_s32(vzip2q_s32(a6, a8), vdupq_laneq_s32(a7, 2)), v19 = vtrn2q_s32(a6, a7), v19.i32[2] = a8.i32[1], v20 = vzip1q_s32(vzip1q_s32(a6, a8), a7), v21 = vandq_s8(vandq_s8(vcgeq_f32(v16, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, a7.f32[0]), v19, *a7.f32, 1), v18, a7, 2), v14)), vcgeq_f32(v16, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, a6.f32[0]), v19, *a6.f32, 1), v18, a6, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v16, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v20, a8.f32[0]), v19, *a8.f32, 1), v18, a8, 2), v15))), v21.i32[3] = v21.i32[2], (vminvq_u32(v21) & 0x80000000) != 0) && (v22 = vmulq_f32(a6, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a8, a8, 0xCuLL), a8, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL))), vextq_s8(vuzp1q_s32(a8, a8), a8, 0xCuLL), vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL))), fabsf((v22.f32[2] + vaddv_f32(*v22.f32)) + -1.0) <= 0.000011) && a4 && (v25 = vdup_n_s32(0x38D1B717u), v26 = vand_s8(vcge_f32(v25, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a8, a8, 8uLL), *&vextq_s8(a9, a9, 8uLL)), 0xBF80000080000000))), vcge_f32(v25, vabs_f32(vzip2_s32(*&vextq_s8(a6, a6, 8uLL), *&vextq_s8(a7, a7, 8uLL))))), (vpmin_u32(v26, v26).u32[0] & 0x80000000) != 0))
  {
    v38 = a6;
    v39 = a7;
    v28 = a2;
    v29 = a3;
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v32 = Instance;
      v33 = &Instance[6];
      v34 = a1;
      if (0xAAAAAAAAAAAAAAABLL * ((Instance[7].i64[0] - Instance[6].i64[0]) >> 4) < a1)
      {
        operator new();
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((Instance[8].i64[1] - Instance[7].i64[1]) >> 2) < a1)
      {
        operator new();
      }

      do
      {
        v35 = *v28;
        HIDWORD(v35) = 1.0;
        v36 = *v29;
        HIDWORD(v36) = 0;
        *buf = v35;
        *&buf[16] = v36;
        v44 = xmmword_24613FA50;
        sub_2460F52EC(v33, buf);
        sub_2460F48CC(&v32[7].i64[1], &xmmword_24614005C);
        ++v29;
        ++v28;
        --v34;
      }

      while (v34);
      v32[1].f32[0] = a5;
      v32[2] = v38;
      v32[3] = v39;
      v32[4] = a8;
      v32[5] = a9;
      *a4 = v32;
      kdebug_trace();
      return 0;
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v37 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateWithNormal";
        *&buf[12] = 1026;
        *&buf[14] = 573;
        _os_log_error_impl(&dword_2460CF000, v37, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      return 4294967293;
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
      *&buf[4] = "OCPointCloudCreateWithNormal";
      *&buf[12] = 1026;
      *&buf[14] = 563;
      _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t OCPointCloudCreateWithRGBNormal(unsigned int a1, _OWORD *a2, uint64_t a3, __CVBuffer *a4, _OWORD *a5, float32x4_t **a6, float a7, float32x4_t a8, float32x4_t a9, float32x4_t a10, int8x16_t a11)
{
  v67 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a3 && a4 && a5 && a7 > 0.0 && (v13 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a8, a8.f32[0]), a9, a9.f32[0]), a10, a10.f32[0]), v14 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a8, *a8.f32, 1), a9, *a9.f32, 1), a10, *a10.f32, 1), v15 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a8, a8, 2), a9, a9, 2), a10, a10, 2), v16 = *(MEMORY[0x277D860B0] + 16), v17 = *(MEMORY[0x277D860B0] + 32), v18 = vdupq_n_s32(0x38D1B717u), v19 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(v14, v16)), vcgeq_f32(v18, vabdq_f32(v13, *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(v15, v17))), v19.i32[3] = v19.i32[2], (vminvq_u32(v19) & 0x80000000) != 0) && (v20 = vzip1q_s32(vzip2q_s32(a8, a10), vdupq_laneq_s32(a9, 2)), v21 = vtrn2q_s32(a8, a9), v21.i32[2] = a10.i32[1], v22 = vzip1q_s32(vzip1q_s32(a8, a10), a9), v23 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a9.f32[0]), v21, *a9.f32, 1), v20, a9, 2), v16)), vcgeq_f32(v18, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a8.f32[0]), v21, *a8.f32, 1), v20, a8, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v22, a10.f32[0]), v21, *a10.f32, 1), v20, a10, 2), v17))), v23.i32[3] = v23.i32[2], (vminvq_u32(v23) & 0x80000000) != 0) && (v24 = vmulq_f32(a8, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a10, a10, 0xCuLL), a10, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a9, a9), a9, 0xCuLL))), vextq_s8(vuzp1q_s32(a10, a10), a10, 0xCuLL), vextq_s8(vextq_s8(a9, a9, 0xCuLL), a9, 8uLL))), fabsf((v24.f32[2] + vaddv_f32(*v24.f32)) + -1.0) <= 0.000011) && a6 && (v28 = vdup_n_s32(0x38D1B717u), v29 = vand_s8(vcge_f32(v28, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a10, a10, 8uLL), *&vextq_s8(a11, a11, 8uLL)), 0xBF80000080000000))), vcge_f32(v28, vabs_f32(vzip2_s32(*&vextq_s8(a8, a8, 8uLL), *&vextq_s8(a9, a9, 8uLL))))), (vpmin_u32(v29, v29).u32[0] & 0x80000000) != 0))
  {
    v53 = a8;
    v54 = a9;
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v37 = Instance;
      v38 = &Instance[6];
      v39 = a1;
      if (0xAAAAAAAAAAAAAAABLL * ((Instance[7].i64[0] - Instance[6].i64[0]) >> 4) < a1)
      {
        operator new();
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((Instance[8].i64[1] - Instance[7].i64[1]) >> 2) < a1)
      {
        operator new();
      }

      v40 = a5;
      v41 = (a3 + 8);
      v42 = a6;
      v43 = a7;
      v44 = a4;
      v45 = a2;
      do
      {
        LODWORD(v35) = llround(*(v41 - 1));
        if ((v35 & 0x80000000) == 0)
        {
          LODWORD(v36) = llround(*v41);
          if ((v36 & 0x80000000) == 0)
          {
            v46 = v45;
            v47 = v40;
            v59 = *v40;
            v61 = *v45;
            sub_24610D3B0(&v65, v44, v35, v36);
            if (v66)
            {
              v49 = v59;
              v48 = v61;
              HIDWORD(v48) = 1.0;
              HIDWORD(v49) = 0;
              v50 = v65;
              HIDWORD(v50) = 1.0;
              *buf = v48;
              *&buf[16] = v49;
              v63 = v50;
              v64 = 1;
              sub_2460F52EC(v38, buf);
              sub_2460F48CC(&v37[7].i64[1], &xmmword_24614005C);
            }

            v42 = a6;
            v43 = a7;
            v40 = v47;
            v44 = a4;
            v45 = v46;
          }
        }

        ++v40;
        v41 += 2;
        ++v45;
        --v39;
      }

      while (v39);
      if (v37[6].i64[0] == v37[6].i64[1])
      {
        if (qword_27EE3F4B8 != -1)
        {
          dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
        }

        v52 = qword_27EE3F4B0;
        if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          *&buf[4] = "OCPointCloudCreateWithRGBNormal";
          *&buf[12] = 1026;
          *&buf[14] = 644;
          _os_log_error_impl(&dword_2460CF000, v52, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - no points with valid pixel coords.", buf, 0x12u);
        }

        CFRelease(v37);
        v26 = 0xFFFFFFFFLL;
      }

      else
      {
        v26 = 0;
        v37[1].f32[0] = v43;
        v37[2] = v53;
        v37[3] = v54;
        v37[4] = a10;
        v37[5] = a11;
        *v42 = v37;
      }

      kdebug_trace();
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v51 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        *&buf[4] = "OCPointCloudCreateWithRGBNormal";
        *&buf[12] = 1026;
        *&buf[14] = 623;
        _os_log_error_impl(&dword_2460CF000, v51, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v25 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = "OCPointCloudCreateWithRGBNormal";
      *&buf[12] = 1026;
      *&buf[14] = 613;
      _os_log_error_impl(&dword_2460CF000, v25, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }

  return v26;
}

uint64_t OCPointCloudCreateFromOCPoints(unsigned int a1, _OWORD *a2, float32x4_t **a3, float32_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, int8x16_t a8)
{
  v59 = *MEMORY[0x277D85DE8];
  if (a1 && a2 && a4 > 0.0 && (v10 = vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a5, a5.f32[0]), a6, a6.f32[0]), a7, a7.f32[0]), v11 = vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(a5, *a5.f32, 1), a6, *a6.f32, 1), a7, *a7.f32, 1), v12 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(a5, a5, 2), a6, a6, 2), a7, a7, 2), v13 = *(MEMORY[0x277D860B0] + 16), v14 = *(MEMORY[0x277D860B0] + 32), v15 = vdupq_n_s32(0x38D1B717u), v16 = vandq_s8(vandq_s8(vcgeq_f32(v15, vabdq_f32(v11, v13)), vcgeq_f32(v15, vabdq_f32(v10, *MEMORY[0x277D860B0]))), vcgeq_f32(v15, vabdq_f32(v12, v14))), v16.i32[3] = v16.i32[2], (vminvq_u32(v16) & 0x80000000) != 0) && (v17 = vzip1q_s32(vzip2q_s32(a5, a7), vdupq_laneq_s32(a6, 2)), v18 = vtrn2q_s32(a5, a6), v18.i32[2] = a7.i32[1], v19 = vzip1q_s32(vzip1q_s32(a5, a7), a6), v20 = vandq_s8(vandq_s8(vcgeq_f32(v15, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a6.f32[0]), v18, *a6.f32, 1), v17, a6, 2), v13)), vcgeq_f32(v15, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a5.f32[0]), v18, *a5.f32, 1), v17, a5, 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v15, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v19, a7.f32[0]), v18, *a7.f32, 1), v17, a7, 2), v14))), v20.i32[3] = v20.i32[2], (vminvq_u32(v20) & 0x80000000) != 0) && (v21 = vmulq_f32(a5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(a7, a7, 0xCuLL), a7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(a6, a6), a6, 0xCuLL))), vextq_s8(vuzp1q_s32(a7, a7), a7, 0xCuLL), vextq_s8(vextq_s8(a6, a6, 0xCuLL), a6, 8uLL))), fabsf((v21.f32[2] + vaddv_f32(*v21.f32)) + -1.0) <= 0.000011) && a3 && (v24 = vdup_n_s32(0x38D1B717u), v25 = vand_s8(vcge_f32(v24, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(a7, a7, 8uLL), *&vextq_s8(a8, a8, 8uLL)), 0xBF80000080000000))), vcge_f32(v24, vabs_f32(vzip2_s32(*&vextq_s8(a5, a5, 8uLL), *&vextq_s8(a6, a6, 8uLL))))), (vpmin_u32(v25, v25).u32[0] & 0x80000000) != 0))
  {
    v49 = a5;
    v50 = a6;
    kdebug_trace();
    if (qword_27EE3F4C8 != -1)
    {
      dispatch_once(&qword_27EE3F4C8, &unk_2858EBBD8);
    }

    Instance = _CFRuntimeCreateInstance();
    if (Instance)
    {
      v29 = Instance;
      v30 = &Instance[6];
      v31 = a1;
      if (0xAAAAAAAAAAAAAAABLL * ((Instance[7].i64[0] - Instance[6].i64[0]) >> 4) < a1)
      {
        operator new();
      }

      if (0xCCCCCCCCCCCCCCCDLL * ((Instance[8].i64[1] - Instance[7].i64[1]) >> 2) < a1)
      {
        operator new();
      }

      __asm { FMOV            V9.2S, #1.0 }

      v37 = a2;
      do
      {
        v39 = v37;
        sub_2460F52EC(v30, v37);
        v40 = v29[8].u64[0];
        v41 = v29[8].u64[1];
        if (v40 < v41)
        {
          *v40 = _D9;
          *(v40 + 8) = 1;
          v38 = v40 + 20;
          *(v40 + 12) = 0x23F800000;
        }

        else
        {
          v42 = v29[7].i64[1];
          v43 = 0xCCCCCCCCCCCCCCCDLL * ((v40 - v42) >> 2) + 1;
          if (v43 > 0xCCCCCCCCCCCCCCCLL)
          {
            sub_2460D368C();
          }

          v44 = 0xCCCCCCCCCCCCCCCDLL * ((v41 - v42) >> 2);
          if (2 * v44 > v43)
          {
            v43 = 2 * v44;
          }

          if (v44 >= 0x666666666666666)
          {
            v45 = 0xCCCCCCCCCCCCCCCLL;
          }

          else
          {
            v45 = v43;
          }

          if (v45)
          {
            if (v45 <= 0xCCCCCCCCCCCCCCCLL)
            {
              operator new();
            }

            sub_2460D368C();
          }

          v46 = 4 * ((v40 - v42) >> 2);
          *v46 = _D9;
          *(v46 + 8) = 1;
          *(v46 + 12) = 0x23F800000;
          v38 = v46 + 20;
          v47 = (v46 - (v40 - v42));
          memcpy(v47, v42, v40 - v42);
          v29[7].i64[1] = v47;
          v29[8].i64[0] = v38;
          v29[8].i64[1] = 0;
          if (v42)
          {
            operator delete(v42);
          }
        }

        v29[8].i64[0] = v38;
        v37 = v39 + 3;
        --v31;
      }

      while (v31);
      v29[1].f32[0] = a4;
      v29[2] = v49;
      v29[3] = v50;
      v29[4] = a7;
      v29[5] = a8;
      *a3 = v29;
      kdebug_trace();
      return 0;
    }

    else
    {
      if (qword_27EE3F4B8 != -1)
      {
        dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
      }

      v48 = qword_27EE3F4B0;
      if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v56 = "OCPointCloudCreateFromOCPoints";
        v57 = 1026;
        v58 = 682;
        _os_log_error_impl(&dword_2460CF000, v48, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - insufficient memory.", buf, 0x12u);
      }

      kdebug_trace();
      return 4294967293;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v22 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v56 = "OCPointCloudCreateFromOCPoints";
      v57 = 1026;
      v58 = 672;
      _os_log_error_impl(&dword_2460CF000, v22, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud - invalid arguments.", buf, 0x12u);
    }

    return 4294967294;
  }
}

uint64_t sub_2460F71EC(uint64_t a1)
{
  if (*(a1 + 60) * *(a1 + 56) && *(a1 + 92) * *(a1 + 88) && *(a1 + 112))
  {
    v1 = *(a1 + 116) == 0;
    if (!*(a1 + 152))
    {
      goto LABEL_13;
    }
  }

  else
  {
    v1 = 1;
    if (!*(a1 + 152))
    {
      goto LABEL_13;
    }
  }

  if (*(a1 + 160))
  {
    if (*(a1 + 168))
    {
      if (*(a1 + 172))
      {
        v2 = *(a1 + 176);
        if (v2)
        {
          v3 = *(a1 + 180);
          if (v3)
          {
            if (v2 >= *(a1 + 112))
            {
              v4 = v3 < *(a1 + 116);
              goto LABEL_14;
            }
          }
        }
      }
    }
  }

LABEL_13:
  v4 = 1;
LABEL_14:
  if (*(a1 + 184) > 0.0 && *(a1 + 188) > 0.0 && (v5 = *(a1 + 192), v5 >= 0.0) && v5 < (*(a1 + 176) * 0.5) && (v6 = *(a1 + 196), v6 >= 0.0))
  {
    v7 = v6 >= (*(a1 + 180) * 0.5);
    v8 = *(a1 + 224);
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  else
  {
    v7 = 1;
    v8 = *(a1 + 224);
    if (!v8)
    {
      goto LABEL_23;
    }
  }

  v8 = *(a1 + 232);
  if (v8)
  {
    v8 = *(a1 + 236);
    if (v8)
    {
      v8 = *(a1 + 240) != 0;
    }
  }

LABEL_23:
  v9 = *(a1 + 520);
  if (v9)
  {
    v9 = *(a1 + 528);
    if (v9)
    {
      LODWORD(v9) = *(a1 + 536) != 0;
    }
  }

  if (v1 || v4 || v7)
  {
    return 0;
  }

  else
  {
    return v8 & v9;
  }
}

uint64_t sub_2460F7788(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, unint64_t a6, _OWORD *a7, double a8, double a9, double a10, double a11, double a12, float a13)
{
  v14 = floor(a8);
  v15 = floor(a9);
  if (v14 == a8 && v15 == a9)
  {
    if (result && a2 && a3 && a4)
    {
      v94 = a8;
      v95 = a9;
      if (a8 < a5 && v95 < a6)
      {
        v97 = result + v95 * a3;
        v98 = (a2 + (v95 >> 1) * a4 + (v94 & 0xFFFFFFFFFFFFFFFELL));
        LOBYTE(a8) = *(v97 + v94);
        v99.f32[0] = LODWORD(a8);
        v100 = (*v98 - 128);
        v101 = v99.f32[0] + (v100 * -0.39176);
        v102 = v99.f32[0] + (v100 * 2.0172);
        v99.f32[1] = v101;
        v103 = vdiv_f32(vmla_n_f32(v99, 0xBF501EA43FCC4A9ALL, (v98[1] - 128)), vdup_n_s32(0x437F0000u));
        __asm { FMOV            V3.2S, #1.0 }

        *&v93 = vbic_s8(vbsl_s8(vcgt_f32(v103, _D3), _D3, v103), vcltz_f32(v103));
        v91 = v102 / 255.0;
        goto LABEL_84;
      }
    }
  }

  else
  {
    v17 = v14;
    v18 = vcvtpd_u64_f64(a8);
    v19 = v14 - 1;
    if (a5 - 1 <= v14)
    {
      v20 = v14;
    }

    else
    {
      v20 = v17 + 1;
    }

    if (a5 - 1 > v14)
    {
      v19 = v14;
    }

    if (v18 == v17)
    {
      v18 = v20;
      v17 = v19;
    }

    v21 = v15;
    v22 = vcvtpd_u64_f64(a9);
    if (a6 - 1 > v15)
    {
      v23 = v15;
    }

    else
    {
      v23 = v15 - 1;
    }

    if (a6 - 1 <= v15)
    {
      v24 = v15;
    }

    else
    {
      v24 = v21 + 1;
    }

    if (v22 == v21)
    {
      v21 = v23;
      v22 = v24;
    }

    if (result)
    {
      v25 = a2 == 0;
    }

    else
    {
      v25 = 1;
    }

    v28 = !v25 && a3 != 0 && a4 != 0;
    if (v17 < a5)
    {
      v29 = v28;
    }

    else
    {
      v29 = 0;
    }

    if (v21 < a6)
    {
      v30 = v29;
    }

    else
    {
      v30 = 0;
    }

    v31 = 0uLL;
    v32 = result + v21 * a3;
    v33 = v21 >> 1;
    v34 = 0uLL;
    if (v30 == 1)
    {
      v35 = (a2 + v33 * a4 + (v17 & 0xFFFFFFFFFFFFFFFELL));
      v34.i8[0] = *(v32 + v17);
      v36.f32[0] = v34.u32[0];
      v37 = (*v35 - 128);
      v38 = v36.f32[0] + (v37 * -0.39176);
      v39 = v36.f32[0] + (v37 * 2.0172);
      v36.f32[1] = v38;
      v40 = vdiv_f32(vmla_n_f32(v36, 0xBF501EA43FCC4A9ALL, (v35[1] - 128)), vdup_n_s32(0x437F0000u));
      __asm { FMOV            V6.2S, #1.0 }

      *v34.i8 = vbic_s8(vbsl_s8(vcgt_f32(v40, _D6), _D6, v40), vcltz_f32(v40));
      v44 = v39 / 255.0;
      a13 = 1.0;
      if (v44 <= 1.0)
      {
        a13 = v44;
      }

      _NF = v44 < 0.0;
      v45 = 0.0;
      if (!_NF)
      {
        v45 = a13;
      }

      *&v34.i32[2] = v45;
    }

    v46 = v29 ^ 1;
    if (v22 >= a6)
    {
      v47 = 1;
    }

    else
    {
      v47 = v46;
    }

    v48 = result + v22 * a3;
    v49 = v22 >> 1;
    if ((v47 & 1) == 0)
    {
      v50 = (a2 + v49 * a4 + (v17 & 0xFFFFFFFFFFFFFFFELL));
      v31.i8[0] = *(v48 + v17);
      v51.f32[0] = v31.u32[0];
      v52 = (*v50 - 128);
      v53 = v51.f32[0] + (v52 * -0.39176);
      v54 = v51.f32[0] + (v52 * 2.0172);
      v51.f32[1] = v53;
      v55 = vmla_n_f32(v51, 0xBF501EA43FCC4A9ALL, (v50[1] - 128));
      result = 1132396544;
      v56 = vdiv_f32(v55, vdup_n_s32(0x437F0000u));
      __asm { FMOV            V6.2S, #1.0 }

      *v31.i8 = vbic_s8(vbsl_s8(vcgt_f32(v56, _D6), _D6, v56), vcltz_f32(v56));
      v58 = v54 / 255.0;
      a13 = 1.0;
      if (v58 <= 1.0)
      {
        a13 = v58;
      }

      _NF = v58 < 0.0;
      v59 = 0.0;
      if (!_NF)
      {
        v59 = a13;
      }

      *&v31.i32[2] = v59;
    }

    if (v18 >= a5)
    {
      v28 = 0;
    }

    v60 = 0uLL;
    if (v28 == 1 && v21 < a6)
    {
      v62 = (a2 + v33 * a4 + (v18 & 0xFFFFFFFFFFFFFFFELL));
      result = *v62;
      v60.i8[0] = *(v32 + v18);
      v63.f32[0] = v60.u32[0];
      v64 = (result - 128);
      v65 = v63.f32[0] + (v64 * -0.39176);
      v66 = v63.f32[0] + (v64 * 2.0172);
      v63.f32[1] = v65;
      v67 = vdiv_f32(vmla_n_f32(v63, 0xBF501EA43FCC4A9ALL, (v62[1] - 128)), vdup_n_s32(0x437F0000u));
      __asm { FMOV            V7.2S, #1.0 }

      *v60.i8 = vbic_s8(vbsl_s8(vcgt_f32(v67, _D7), _D7, v67), vcltz_f32(v67));
      v69 = v66 / 255.0;
      v70 = 1.0;
      if (v69 <= 1.0)
      {
        v70 = v69;
      }

      _NF = v69 < 0.0;
      a13 = 0.0;
      if (!_NF)
      {
        a13 = v70;
      }

      *&v60.i32[2] = a13;
    }

    if (v22 < a6)
    {
      v71 = v28;
    }

    else
    {
      v71 = 0;
    }

    if (v71 == 1)
    {
      v72 = (a2 + v49 * a4 + (v18 & 0xFFFFFFFFFFFFFFFELL));
      LOBYTE(a13) = *(v48 + v18);
      v73.f32[0] = LODWORD(a13);
      *v13.i32 = (*v72 - 128);
      v74 = (v73.f32[0] + (*v13.i32 * 2.0172)) / 255.0;
      if (v74 <= 1.0)
      {
        v75 = (v73.f32[0] + (*v13.i32 * 2.0172)) / 255.0;
      }

      else
      {
        v75 = 1.0;
      }

      _NF = v74 < 0.0;
      v76 = 0.0;
      if (!_NF)
      {
        v76 = v75;
      }

      if ((v30 & 1) == 1)
      {
        v73.f32[1] = v73.f32[0] + (*v13.i32 * -0.39176);
        *v13.i8 = vdiv_f32(vmla_n_f32(v73, 0xBF501EA43FCC4A9ALL, (v72[1] - 128)), vdup_n_s32(0x437F0000u));
        __asm { FMOV            V5.2S, #1.0 }

        *v13.i8 = vbic_s8(vbsl_s8(vcgt_f32(*v13.i8, _D5), _D5, *v13.i8), vcltz_f32(*v13.i8));
        *&v13.i32[2] = v76;
        v78 = 1.0 / ((v22 - v21) * (v18 - v17));
        v79 = a8;
        v80 = v18 - v79;
        v81 = v79 - v17;
        v82 = a9;
        v83 = v22 - v82;
        v84 = v82 - v21;
        v85 = vzip1q_s32(vzip1q_s32(v34, v31), vzip1q_s32(v60, v13));
        v86 = vzip1q_s32(v85, vdupq_laneq_s64(v85, 1));
        *v86.i8 = vmla_n_f32(vmul_n_f32(*v86.i8, v80), *&vextq_s8(v86, v86, 8uLL), v81);
        v87 = vzip1q_s32(vtrn2q_s32(v34, v31), vtrn2q_s32(v60, v13));
        v88 = vzip1q_s32(v87, vdupq_laneq_s64(v87, 1));
        *v88.i8 = vmla_n_f32(vmul_n_f32(*v88.i8, v80), *&vextq_s8(v88, v88, 8uLL), v81);
        v89 = vzip1q_s32(vzip2q_s32(v34, v31), vzip2q_s32(v60, v13));
        v90 = vzip1q_s32(v89, vdupq_laneq_s64(v89, 1));
        *v90.i8 = vmla_n_f32(vmul_n_f32(*v90.i8, v80), *&vextq_s8(v90, v90, 8uLL), v81);
        v91 = vmuls_lane_f32(v84, *v90.i8, 1) + ((v78 * *v90.i32) * v83);
        v92 = vmla_n_f32(vmul_n_f32(vzip2_s32(*v86.i8, *v88.i8), v84), vmul_n_f32(vzip1_s32(*v86.i8, *v88.i8), v78), v83);
        *&v93 = vbic_s8(vbsl_s8(vcgt_f32(v92, _D5), _D5, v92), vcltz_f32(v92));
LABEL_84:
        if (v91 <= 1.0)
        {
          v105 = v91;
        }

        else
        {
          v105 = 1.0;
        }

        _NF = v91 < 0.0;
        v106 = 0.0;
        if (!_NF)
        {
          v106 = v105;
        }

        *(&v93 + 1) = __PAIR64__(1.0, LODWORD(v106));
        *a7 = v93;
      }
    }
  }

  return result;
}

uint64_t sub_2460F7C9C(uint64_t a1)
{
  if (*(a1 + 416) == 1)
  {
    v2 = *(a1 + 384);
    if (v2)
    {
      *(a1 + 392) = v2;
      operator delete(v2);
    }
  }

  v3 = *(a1 + 24);
  if (v3)
  {
    do
    {
      v4 = *v3;
      operator delete(v3);
      v3 = v4;
    }

    while (v4);
  }

  v5 = *(a1 + 8);
  *(a1 + 8) = 0;
  if (v5)
  {
    operator delete(v5);
  }

  return a1;
}

void sub_2460F7D04(uint64_t a1, unint64_t a2)
{
  v69 = *MEMORY[0x277D85DE8];
  if (a1 && (sub_2460F71EC(a1) & 1) != 0)
  {
    v4 = *(a1 + 232);
    if (*(a1 + 236) * v4 > a2)
    {
      v5 = *(a1 + 224);
      v6 = *(a1 + 200);
      v7 = HIDWORD(v6) + v5 * (a2 / v4);
      v61 = v7 + v5;
      v59 = a2;
      if (v7 < v7 + v5)
      {
        v8 = v6 + v5 * (a2 % v4);
        v9 = v8 + v5;
        v60 = v8;
        if (v8 < v8 + v5)
        {
          v10 = 0;
          v11 = *(a1 + 228) * a2;
          v62 = vdupq_n_s32(0x358637BDu);
          v12 = *(a1 + 176) / *(a1 + 112);
          v13 = v11;
          while (1)
          {
            if (v7 > *(a1 + 212))
            {
              goto LABEL_57;
            }

            v16 = v60;
LABEL_18:
            if (v16 <= *(a1 + 208))
            {
              break;
            }

            v15 = *(a1 + 240);
LABEL_13:
            v7 += v15;
            if (v7 >= v61)
            {
              goto LABEL_57;
            }
          }

          sub_2460F733C();
          v26 = v25;
          v27 = *(a1 + 16);
          v28 = vabsq_f32(v25);
          if (!*&v27)
          {
            goto LABEL_39;
          }

          v29 = v7 | (v16 << 32);
          v30 = vcnt_s8(v27);
          v30.i16[0] = vaddlv_u8(v30);
          if (v30.u32[0] >= 2uLL)
          {
            v31 = v7 | (v16 << 32);
            if (v29 >= *&v27)
            {
              v31 = v29 % *&v27;
            }
          }

          else
          {
            v31 = (*&v27 - 1) & v29;
          }

          v32 = *(*(a1 + 8) + 8 * v31);
          if (!v32 || (v33 = *v32) == 0)
          {
LABEL_39:
            v39 = *(*(a1 + 512) + 16 * ((v16 - *(a1 + 200)) % *(a1 + 224) + v11 + (v7 - HIDWORD(*(a1 + 200))) % *(a1 + 224) * *(a1 + 224)));
            if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v62, v28)))) & 1) == 0 && *(a1 + 132) * *(a1 + 128))
            {
              v40 = vmulq_f32(v39, v39);
              *&v41 = v40.f32[2] + vaddv_f32(*v40.f32);
              *v40.f32 = vrsqrte_f32(v41);
              *v40.f32 = vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32)));
              v42 = vmulq_n_f32(vnegq_f32(v39), vmul_f32(*v40.f32, vrsqrts_f32(v41, vmul_f32(*v40.f32, *v40.f32))).f32[0]);
              v42.i32[3] = v26.i32[3];
              v26 = v42;
            }

            v43 = vmulq_f32(v26, v26);
            v44 = vmulq_f32(v39, v39);
            *v18.f32 = vzip2_s32(*v44.i8, *v43.i8);
            v20 = vadd_f32(vzip1_s32(*v44.i8, *v43.i8), *v18.f32);
            *v43.i8 = vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v44, v44, 8uLL), *&vextq_s8(v43, v43, 8uLL)), v20));
            LODWORD(v45) = vmul_lane_f32(*v43.i8, *v43.i8, 1).u32[0];
            v46 = 0.0;
            v20.i32[0] = 897988541;
            if (fabsf(v45) <= 0.000001)
            {
              v48 = 0.0;
            }

            else
            {
              v47 = vmulq_f32(v26, vnegq_f32(v39));
              v20.f32[0] = vaddv_f32(*v47.f32);
              v48 = (v47.f32[2] + v20.f32[0]) / v45;
              if (v48 >= 0.6)
              {
                v46 = (v48 * v48) + (v48 * v48);
              }
            }

            v49 = *(*(a1 + 104) + *(a1 + 80) + *(a1 + 96) * v16 + *(a1 + 100) * v7);
            v50 = 1;
            goto LABEL_47;
          }

          if (v30.u32[0] < 2uLL)
          {
            v34 = *&v27 - 1;
            while (1)
            {
              v36 = v33[1];
              if (*&v36 == v29)
              {
                v35 = vceq_s32(v33[2], __PAIR64__(v7, v16));
                if ((vpmin_u32(v35, v35).u32[0] & 0x80000000) != 0)
                {
                  goto LABEL_49;
                }
              }

              else if ((*&v36 & v34) != v31)
              {
                goto LABEL_39;
              }

              v33 = *v33;
              if (!v33)
              {
                goto LABEL_39;
              }
            }
          }

          while (1)
          {
            v38 = v33[1];
            if (*&v38 == v29)
            {
              v37 = vceq_s32(v33[2], __PAIR64__(v7, v16));
              if ((vpmin_u32(v37, v37).u32[0] & 0x80000000) != 0)
              {
LABEL_49:
                v33[3].i8[4] = 1;
                v51 = *(*a1 + 16 * v33[3].u32[0]);
                if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgeq_f32(v62, v28)))) & 1) == 0 && *(a1 + 132) * *(a1 + 128))
                {
                  v52 = vmulq_f32(v51, v51);
                  *&v53 = v52.f32[2] + vaddv_f32(*v52.f32);
                  *v52.f32 = vrsqrte_f32(v53);
                  *v52.f32 = vmul_f32(*v52.f32, vrsqrts_f32(v53, vmul_f32(*v52.f32, *v52.f32)));
                  v54 = vmulq_n_f32(vnegq_f32(v51), vmul_f32(*v52.f32, vrsqrts_f32(v53, vmul_f32(*v52.f32, *v52.f32))).f32[0]);
                  v54.i32[3] = v26.i32[3];
                  v26 = v54;
                }

                v39 = *(*a1 + 16 * v33[3].u32[0]);
                v39.i32[3] = 1.0;
                v55 = vmulq_f32(v26, v26);
                v56 = vmulq_f32(v51, v51);
                v24 = vzip2_s32(*v56.i8, *v55.i8);
                *v18.f32 = vadd_f32(vzip1_s32(*v56.i8, *v55.i8), v24);
                v20 = vextq_s8(v56, v56, 8uLL).u64[0];
                *v55.i8 = vsqrt_f32(vadd_f32(vzip1_s32(v20, *&vextq_s8(v55, v55, 8uLL)), *v18.f32));
                LODWORD(v57) = vmul_lane_f32(*v55.i8, *v55.i8, 1).u32[0];
                v20.f32[0] = fabsf(v57);
                v49 = 1.0;
                v46 = 0.0;
                v18.i32[0] = 897988541;
                if (v20.f32[0] <= 0.000001)
                {
                  v50 = 0;
                  v48 = 0.0;
                }

                else
                {
                  v58 = vmulq_f32(v26, vnegq_f32(v51));
                  v20.f32[0] = vaddv_f32(*v58.f32);
                  v48 = (v58.f32[2] + v20.f32[0]) / v57;
                  v50 = 0;
                  if (v48 >= 0.6)
                  {
                    v46 = (v48 * v48) * 10.0;
                  }
                }

LABEL_47:
                v63 = v39;
                v64 = v26;
                if (*(a1 + 416) == 1)
                {
                  v18 = *(a1 + 496);
                  v17 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(a1 + 448), v39.f32[0]), *(a1 + 464), *v39.f32, 1), *(a1 + 480), v39, 2), v18, v39, 3);
                  v18.i32[0] = -1.0;
                  v17.i32[3] = -1.0;
                  v19 = vmulq_f32(v17, *(a1 + 368));
                  v20 = vextq_s8(v19, v19, 8uLL).u64[0];
                  v21 = vaddv_f32(vadd_f32(*v19.i8, v20)) >= *(a1 + 432);
                }

                else
                {
                  v21 = 1;
                }

                v22 = 48 * v13;
                sub_2460F7788(*(a1 + 152), *(a1 + 160), *(a1 + 168), *(a1 + 172), *(a1 + 176), *(a1 + 180), (*(a1 + 520) + v22 + 32), (v12 * v16), (v12 * v7), *&v20, *v18.i64, *&v24, v26.f32[0]);
                *(*(a1 + 520) + v22) = v63;
                *(*(a1 + 520) + v22 + 16) = v64;
                v23 = *(a1 + 528) + 20 * v13;
                *v23 = v46;
                *(v23 + 4) = v49;
                *(v23 + 8) = v21;
                *(v23 + 12) = v48;
                *(v23 + 16) = v50;
                ++v13;
                ++v10;
                v15 = *(a1 + 240);
                v16 = (v15 + v16);
                if (v16 >= v9)
                {
                  goto LABEL_13;
                }

                goto LABEL_18;
              }
            }

            else
            {
              if (*&v38 >= *&v27)
              {
                *&v38 %= *&v27;
              }

              if (*&v38 != v31)
              {
                goto LABEL_39;
              }
            }

            v33 = *v33;
            if (!v33)
            {
              goto LABEL_39;
            }
          }
        }
      }

      v10 = 0;
LABEL_57:
      *(*(a1 + 536) + 4 * v59) = v10;
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v14 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v66 = "createPointCloudFromDenseDepthAndPointcloudBlock";
      v67 = 1026;
      v68 = 1079;
      _os_log_error_impl(&dword_2460CF000, v14, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pointcloud from depth image and pointcloud - invalid pointcloud context.", buf, 0x12u);
    }
  }
}

void sub_2460F836C(uint64_t a1, unint64_t a2)
{
  v20 = *MEMORY[0x277D85DE8];
  if (a1 && (sub_2460F71EC(a1) & 1) != 0)
  {
    v4 = *(a1 + 232);
    if (*(a1 + 236) * v4 > a2)
    {
      v5 = *(a1 + 224);
      v6 = *(a1 + 200);
      v7 = HIDWORD(v6) + v5 * (a2 / v4);
      v8 = v7 + v5;
      if (v7 < v7 + v5)
      {
        v9 = v6 + v5 * (a2 % v4);
        v10 = v9 + v5;
        if (v9 < v10)
        {
          v11 = *(a1 + 228) * a2;
          do
          {
            if (v7 > *(a1 + 212))
            {
              break;
            }

            v13 = v9;
            do
            {
              if (v13 > *(a1 + 208))
              {
                break;
              }

              v14 = *(*(a1 + 72) + *(a1 + 48) + *(a1 + 64) * v13 + *(a1 + 68) * v7);
              v15 = *(a1 + 224);
              *(*(a1 + 512) + 16 * ((v13 - *(a1 + 200)) % v15 + v11 + (v7 - HIDWORD(*(a1 + 200))) % v15 * v15)) = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(xmmword_24613FAA0, (v14 * (v13 - *(a1 + 192))) / *(a1 + 184)), xmmword_24613FB80, (v14 * (v7 - *(a1 + 196))) / *(a1 + 188)), xmmword_24613FB90, v14), xmmword_24613FA50);
              ++v13;
            }

            while (v13 < v10);
            ++v7;
          }

          while (v7 != v8);
        }
      }
    }
  }

  else
  {
    if (qword_27EE3F4B8 != -1)
    {
      dispatch_once(&qword_27EE3F4B8, &unk_2858EBBB8);
    }

    v12 = qword_27EE3F4B0;
    if (os_log_type_enabled(qword_27EE3F4B0, OS_LOG_TYPE_ERROR))
    {
      v16 = 136315394;
      v17 = "computePointsInRenderCameraFrame";
      v18 = 1026;
      v19 = 887;
      _os_log_error_impl(&dword_2460CF000, v12, OS_LOG_TYPE_ERROR, "%s:%{public}d Invalid pointcloud context.", &v16, 0x12u);
    }
  }
}