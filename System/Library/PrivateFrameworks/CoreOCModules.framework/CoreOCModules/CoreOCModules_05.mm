uint64_t sub_24612DAD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v19 = *MEMORY[0x277D85DE8];
  if (*(a1 + 88))
  {
    v5 = a1;
    kdebug_trace();
    LODWORD(v5) = (*(**(v5 + 96) + 40))(*(v5 + 96), a2, a3, a4, a5);
    kdebug_trace();
    return v5 ^ 1;
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v11 = qword_27EE3F688;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::integratePointCloud(const simd_float4x4 &, const uint32_t, const oc::common::Point *, const common::PointSupplements *)");
      if (v14 >= 0)
      {
        v12 = __p;
      }

      else
      {
        v12 = __p[0];
      }

      *buf = 136315394;
      v16 = v12;
      v17 = 1026;
      v18 = 114;
      _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to integrate pointcloud - pipeline not initialized.", buf, 0x12u);
      if (v14 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 1;
  }
}

uint64_t sub_24612DCA8(uint64_t a1, const void *a2)
{
  v29 = *MEMORY[0x277D85DE8];
  if (sub_24612FC04(a2))
  {
    if (*(a1 + 88) != 1)
    {
      memcpy((a1 + 128), a2, 0x140uLL);
      if (*(a1 + 305) == 1)
      {
        if (qword_27EE3F690 != -1)
        {
          dispatch_once(&qword_27EE3F690, &unk_2858EC628);
        }

        v7 = qword_27EE3F688;
        if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
        {
          sub_24610D894(v28, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::init(const VoxelHashingPipelineConfig &)");
          v8 = v28[23] >= 0 ? v28 : *v28;
          *buf = 136315394;
          *&buf[4] = v8;
          v25 = 1026;
          v26 = 46;
          _os_log_impl(&dword_2460CF000, v7, OS_LOG_TYPE_INFO, "%s:%{public}d VoxelBlockPreallocation is enabled.", buf, 0x12u);
          if ((v28[23] & 0x80000000) != 0)
          {
            operator delete(*v28);
          }
        }

        *v9.i32 = *(a1 + 180) * 8.0;
        v10.i64[0] = 0x3F0000003F000000;
        v10.i64[1] = 0x3F0000003F000000;
        v11 = vdivq_f32(vmulq_f32(*(a1 + 160), v10), vdupq_lane_s32(v9, 0));
        v11.i32[3] = 0;
        v12 = vrndpq_f32(v11);
        v13 = 8 * v12.f32[1] * v12.f32[0] * v12.f32[2];
        if (*(a1 + 176) != v13)
        {
          if (qword_27EE3F690 != -1)
          {
            dispatch_once(&qword_27EE3F690, &unk_2858EC628);
          }

          v14 = qword_27EE3F688;
          if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
          {
            sub_24610D894(buf, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::init(const VoxelHashingPipelineConfig &)");
            v19 = v27 >= 0 ? buf : *buf;
            v20 = *(a1 + 176);
            v21 = COERCE_FLOAT(*(a1 + 160));
            v22 = COERCE_FLOAT(HIDWORD(*(a1 + 160)));
            v23 = COERCE_FLOAT(*(a1 + 168));
            *v28 = 136316674;
            *&v28[4] = v19;
            *&v28[12] = 1026;
            *&v28[14] = 57;
            *&v28[18] = 1026;
            *&v28[20] = v20;
            *&v28[24] = 2050;
            *&v28[26] = v21;
            *&v28[34] = 2050;
            *&v28[36] = v22;
            *&v28[44] = 2050;
            *&v28[46] = v23;
            *&v28[54] = 1026;
            *&v28[56] = v13;
            _os_log_error_impl(&dword_2460CF000, v14, OS_LOG_TYPE_ERROR, "%s:%{public}d Specified voxelHashingCapacity = %{public}u is insufficient/excessive to fill the bounding box with extents: [%{public}f, %{public}f, %{public}f], adjusted voxelHashingCapacity to %{public}u", v28, 0x3Cu);
            if (v27 < 0)
            {
              operator delete(*buf);
            }
          }

          *(a1 + 176) = v13;
        }
      }

      __invert_f4(*(a1 + 240));
      v15 = *(MEMORY[0x277D860B8] + 16);
      *v28 = *MEMORY[0x277D860B8];
      *&v28[16] = v15;
      v16 = *(MEMORY[0x277D860B8] + 48);
      *&v28[32] = *(MEMORY[0x277D860B8] + 32);
      *&v28[48] = v16;
      operator new();
    }

    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v4 = qword_27EE3F688;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(v28, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::init(const VoxelHashingPipelineConfig &)");
      if (v28[23] >= 0)
      {
        v5 = v28;
      }

      else
      {
        v5 = *v28;
      }

      *buf = 136315394;
      *&buf[4] = v5;
      v25 = 1026;
      v26 = 37;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelHashingPipelineGPU - already initialized.", buf, 0x12u);
      if ((v28[23] & 0x80000000) != 0)
      {
        operator delete(*v28);
      }
    }

    v6 = 1;
  }

  else
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v4 = qword_27EE3F688;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(v28, "virtual VoxelHashingStatus oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::init(const VoxelHashingPipelineConfig &)");
      v18 = v28[23] >= 0 ? v28 : *v28;
      *buf = 136315394;
      *&buf[4] = v18;
      v25 = 1026;
      v26 = 31;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelHashingPipelineGPU - invalid config.", buf, 0x12u);
      if ((v28[23] & 0x80000000) != 0)
      {
        operator delete(*v28);
      }
    }

    v6 = 4;
  }

  return v6;
}

void sub_24612FA58(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, void *__p)
{
  __cxa_guard_abort(&qword_27EE3F718);
  sub_2460D502C(v36);
  sub_2460D502C(v37 - 224);
  MEMORY[0x24C1995D0](v34, v35);
  _Unwind_Resume(a1);
}

void sub_24612FB28()
{
  sub_24613399C(v2);

  v3 = *(v0 + 448);
  if (v3)
  {
    *(v0 + 456) = v3;
    operator delete(v3);
  }

  sub_246123840(v1);
  JUMPOUT(0x24612FBDCLL);
}

uint64_t sub_24612FC04(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = fabsf(v1);
  if (v1 < 0.0 && v2 > 0.000001)
  {
    v5 = 1;
  }

  else
  {
    v4 = fabsf(v1 + -1.0) > 0.000011;
    v5 = v1 > 1.0 && v4;
  }

  v6 = *(a1 + 88) <= 0.0 || *(a1 + 96) <= 0.0;
  v7 = *(a1 + 60);
  v9 = v7 <= 1.0 && v7 >= 0.0;
  v11 = *(a1 + 200) < *(a1 + 204) && (v10 = *(a1 + 212), v10 > 0.0) && v10 < *(a1 + 216) && *(a1 + 312) && *(a1 + 316) != 0;
  if (*a1 == 6)
  {
    goto LABEL_28;
  }

  v12 = *(a1 + 4);
  if (v12 == 3)
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_28:
    v13 = 0;
    return v13 & 1;
  }

  v13 = 0;
  v16 = *(a1 + 12);
  v15 = *(a1 + 16);
  v17 = fabsf(v16);
  v18 = v15 > 0.0;
  if (fabsf(v15) <= 0.000001)
  {
    v18 = 1;
  }

  v20 = v17 > 0.000001 && v16 < 0.0;
  if (!v20 && v15 > v16 && v18)
  {
    v13 = 0;
    v21 = *(a1 + 32);
    if (*&v21 > 0.0 && *(&v21 + 1) > 0.0 && *(&v21 + 2) > 0.0)
    {
      if (*(a1 + 48))
      {
        v13 = 0;
        if (*(a1 + 52) >= 0.0001)
        {
          if (*(a1 + 56))
          {
            if (*(a1 + 72))
            {
              v22 = *(a1 + 76) == 0;
            }

            else
            {
              v22 = 1;
            }

            v23 = v22;
            if (*(a1 + 64) < 1.0)
            {
              v23 = 1;
            }

            if (*(a1 + 84) < 0.0)
            {
              v23 = 1;
            }

            if (((v23 | v6) & 1) == 0 && (sub_2461041CC(a1 + 112) & v9) == 1)
            {
              v13 = (((v12 - 1) < 2) | *(a1 + 177) ^ 1) & v11;
              return v13 & 1;
            }

            goto LABEL_28;
          }
        }
      }
    }
  }

  return v13 & 1;
}

uint64_t sub_24612FE24(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x277D85DE8];
  v13 = xmmword_24613FB30;
  v11 = vcvtq_u64_f64(*(a2 + 88));
  v12 = 1717855600;
  if ((sub_24610D610(&v11, (a1 + 72)) & 1) == 0)
  {
    if (qword_27EE3F690 != -1)
    {
      dispatch_once(&qword_27EE3F690, &unk_2858EC628);
    }

    v5 = qword_27EE3F688;
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_14;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::configureImageBufferPools(const VoxelHashingPipelineConfig &)");
    if (v10 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v15 = v6;
    v16 = 1026;
    v17 = 452;
    v7 = "%s:%{public}d Failed to create pixel buffer pool for depth image.";
    goto LABEL_19;
  }

  v11 = vcvtq_u64_f64(*(a2 + 88));
  v12 = 1380410945;
  if (sub_24610D610(&v11, (a1 + 80)))
  {
    return 1;
  }

  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v5 = qword_27EE3F688;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::configureImageBufferPools(const VoxelHashingPipelineConfig &)");
    if (v10 >= 0)
    {
      v8 = __p;
    }

    else
    {
      v8 = __p[0];
    }

    *buf = 136315394;
    v15 = v8;
    v16 = 1026;
    v17 = 462;
    v7 = "%s:%{public}d Failed to create pixel buffer pool for normal image.";
LABEL_19:
    _os_log_error_impl(&dword_2460CF000, v5, OS_LOG_TYPE_ERROR, v7, buf, 0x12u);
    if (v10 < 0)
    {
      operator delete(__p[0]);
    }
  }

LABEL_14:

  return 0;
}

void sub_246130C1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  __cxa_guard_abort(&qword_27EE3F718);
  sub_2460D502C(v15);
  sub_2460D502C(va);
  MEMORY[0x24C1995D0](v15, v16);
  _Unwind_Resume(a1);
}

void sub_246130C50(_Unwind_Exception *a1)
{
  if (v5 < 0)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_246130C9C(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a2 + 200) < *(a2 + 204))
  {
    v2 = *(a2 + 212);
    v3 = v2 > 0.0 && v2 < *(a2 + 216);
    if (v3 && *(a2 + 312) && *(a2 + 316))
    {
      operator new();
    }
  }

  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v4 = qword_27EE3F688;
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::configureCoverage(const VoxelHashingPipelineConfig &)");
    if (v8 >= 0)
    {
      v6 = __p;
    }

    else
    {
      v6 = __p[0];
    }

    *buf = 136315394;
    v10 = v6;
    v11 = 1026;
    v12 = 486;
    _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to configure coverage - invalid coverage config.", buf, 0x12u);
    if (v8 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

id sub_246130F14()
{
  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v1 = qword_27EE3F688;

  return v1;
}

void sub_246130FBC(uint64_t a1)
{
  v2 = *(a1 + 608);
  if (v2)
  {
    v3 = *(a1 + 616);
    v4 = *(a1 + 608);
    if (v3 != v2)
    {
      do
      {
        v3 -= 104;
        sub_2461310EC(v3);
      }

      while (v3 != v2);
      v4 = *(a1 + 608);
    }

    *(a1 + 616) = v2;
    operator delete(v4);
  }

  v5 = *(a1 + 448);
  if (v5)
  {
    *(a1 + 456) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 48);
  *(a1 + 48) = 0;
  if (v6)
  {

    JUMPOUT(0x24C1995D0);
  }
}

void sub_2461310EC(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  v4 = *a1;
}

void sub_246131160(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858EC658;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

void sub_2461311D4(uint64_t a1)
{
  sub_24613120C(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_24613120C(uint64_t a1)
{
  v22 = *MEMORY[0x277D85DE8];
  *a1 = &unk_2858EC5A0;
  *(a1 + 8) = 0;
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2 && !atomic_fetch_add(&v2->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v2->__on_zero_shared)(v2);
    std::__shared_weak_count::__release_weak(v2);
  }

  CVPixelBufferPoolRelease(*(a1 + 72));
  CVPixelBufferPoolRelease(*(a1 + 80));
  *(a1 + 72) = 0;
  if (qword_27EE3F690 != -1)
  {
    dispatch_once(&qword_27EE3F690, &unk_2858EC628);
  }

  v3 = qword_27EE3F688;
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    sub_24610D894(__p, "virtual oc::voxel_hashing::VoxelHashingPipelineGPUSubmaps::~VoxelHashingPipelineGPUSubmaps()");
    v4 = v17 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v19 = v4;
    v20 = 1026;
    v21 = 42;
    _os_log_impl(&dword_2460CF000, v3, OS_LOG_TYPE_DEFAULT, "%s:%{public}d Successfully destroyed VoxelHashingPipelineGPUSubmaps.", buf, 0x12u);
    if (v17 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v5 = *(a1 + 472);
  *(a1 + 472) = 0;
  if (v5)
  {
    v6 = sub_2460EE3F8(v5);
    MEMORY[0x24C1995D0](v6, 0x10E0C40FDB0B8DBLL);
  }

  v7 = *(a1 + 120);
  *(a1 + 120) = 0;
  if (v7)
  {
    v8 = sub_24610D314(v7);
    MEMORY[0x24C1995D0](v8, 0x10E0C40A317B3DBLL);
  }

  v9 = *(a1 + 112);
  *(a1 + 112) = 0;
  if (v9)
  {
    (*(*v9 + 8))(v9);
  }

  v10 = *(a1 + 104);
  *(a1 + 104) = 0;
  if (v10)
  {
    (*(*v10 + 8))(v10);
  }

  v11 = *(a1 + 96);
  *(a1 + 96) = 0;
  if (v11)
  {
    (*(*v11 + 8))(v11);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    *(a1 + 56) = v12;
    operator delete(v12);
  }

  v13 = *(a1 + 24);
  if (v13)
  {
    *(a1 + 32) = v13;
    operator delete(v13);
  }

  v14 = *(a1 + 16);
  if (v14 && !atomic_fetch_add(&v14->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v14->__on_zero_shared)(v14);
    std::__shared_weak_count::__release_weak(v14);
  }

  return a1;
}

void sub_2461314F4(_Unwind_Exception *a1)
{
  sub_2461315DC(v1 + 59);
  sub_24610D2C0(v1 + 15);
  v4 = v1[14];
  v1[14] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = v1[13];
  v1[13] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = v1[12];
  v1[12] = 0;
  if (v6)
  {
    (*(*v6 + 8))(v6);
    v7 = v1[6];
    if (!v7)
    {
LABEL_7:
      v8 = v1[3];
      if (!v8)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }
  }

  else
  {
    v7 = v1[6];
    if (!v7)
    {
      goto LABEL_7;
    }
  }

  v1[7] = v7;
  operator delete(v7);
  v8 = v1[3];
  if (!v8)
  {
LABEL_9:
    sub_2460D502C(v2);
    _Unwind_Resume(a1);
  }

LABEL_8:
  v1[4] = v8;
  operator delete(v8);
  goto LABEL_9;
}

uint64_t *sub_2461315DC(uint64_t *a1)
{
  v1 = a1;
  v2 = *a1;
  *v1 = 0;
  if (v2)
  {
    v3 = v1;
    v4 = sub_2460EE3F8(v2);
    MEMORY[0x24C1995D0](v4, 0x10E0C40FDB0B8DBLL);
    return v3;
  }

  return v1;
}

float sub_246131634@<S0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1 + 144;
  v5 = *(a1 + 192);
  block = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_24613175C;
  v15 = &unk_278E9B530;
  v16 = v4;
  dispatch_sync(v5, &block);
  v6 = *(a1 + 256);
  block = MEMORY[0x277D85DD0];
  v13 = 3221225472;
  v14 = sub_246131780;
  v15 = &unk_278E9B530;
  v16 = a1 + 208;
  dispatch_sync(v6, &block);
  v7 = *(*(a1 + 144) + 4 * *(a1 + 184));
  if (v7)
  {
    v8 = *(*(a1 + 208) + 24 * *(a1 + 248));
  }

  else
  {
    v8 = 0;
  }

  result = *(a1 + 60);
  v10 = *(a1 + 80);
  *(a2 + 32) = *(a1 + 64);
  *(a2 + 48) = v10;
  v11 = *(a1 + 112);
  *(a2 + 64) = *(a1 + 96);
  *(a2 + 80) = v11;
  *a2 = v7;
  *(a2 + 8) = v8;
  *(a2 + 16) = result;
  return result;
}

int8x16_t sub_24613175C(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[3].i8[8] == 1)
  {
    result = vextq_s8(v1[2], v1[2], 8uLL);
    v1[2] = result;
    v1[3].i8[8] = 0;
  }

  return result;
}

int8x16_t sub_246131780(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[3].i8[8] == 1)
  {
    result = vextq_s8(v1[2], v1[2], 8uLL);
    v1[2] = result;
    v1[3].i8[8] = 0;
  }

  return result;
}

void sub_2461317A8(uint64_t a1)
{
  v5 = *(a1 + 128);
  if (*v5 == 1)
  {
    v6 = *(v5 + 4);
    v7 = *(v5 + 48);
    v8 = *(v5 + 64);
    v9 = !v6 || v7 == 0;
    if (!v9 && v8 != 0)
    {
      v26 = v4;
      v27 = v3;
      v28 = v1;
      v29 = v2;
      v11 = (a1 + 272);
      atomic_store(0, (a1 + 272));
      v12 = *(a1 + 280);
      v20[0] = MEMORY[0x277D85DD0];
      v20[1] = 3221225472;
      v20[2] = sub_24613191C;
      v20[3] = &unk_278E9B4F0;
      v20[4] = a1;
      v20[5] = v7;
      v20[6] = v8;
      dispatch_apply(v6, v12, v20);
      v14 = atomic_load(v11);
      v17 = *(a1 + 144);
      v16 = (a1 + 144);
      v15 = v17;
      if (*(v16 - 26) < v14)
      {
        v14 = *(v16 - 26);
      }

      *(v15 + 4 * v16[3]) = v14;
      v18 = v16[6];
      block = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = sub_246132400;
      v24 = &unk_278E9B530;
      v25 = v16;
      dispatch_sync(v18, &block);
      v19 = v16[14];
      block = MEMORY[0x277D85DD0];
      v22 = 3221225472;
      v23 = sub_24613241C;
      v24 = &unk_278E9B530;
      v25 = v16 + 8;
      dispatch_sync(v19, &block);
    }
  }
}

uint64_t sub_24613191C(void *a1, int a2, float32x4_t a3, double a4, double a5, double a6, int8x16_t a7, __n128 a8)
{
  v8 = 0;
  v126 = *MEMORY[0x277D85DE8];
  v9 = a1[4];
  v10 = a1[5];
  v11 = a1[6];
  v12 = a2 << 9;
  v13 = 0.5;
  __asm { FMOV            V21.2S, #1.0 }

  result = 897988541;
  while (2)
  {
    v18 = v8 + v12;
    if ((v8 + v12) >= *(*(v9 + 128) + 4) << 9)
    {
      goto LABEL_2;
    }

    *a3.f32 = vand_s8(vshl_u32(vdup_n_s32(v18), 0xFFFFFFFDFFFFFFFALL), 0x700000007);
    v19 = (v11 + 4104 * (v18 >> 9));
    v20 = &v19[64 * a3.u32[0] + 8 * a3.u32[1] + (v8 & 7)];
    if (!*(v20 + 4) || fabsf(*v20) > 1.732)
    {
      goto LABEL_2;
    }

    v21 = 0;
    v22 = (*(v9 + 208) + 24 * *(v9 + 232));
    a3.i16[1] = a3.i16[2];
    a3.i16[2] = v8 & 7;
    *a3.f32 = vorr_s8(vshl_n_s16(v19[512], 3uLL), *a3.f32);
    v23 = a3.i16[2];
    v108 = a3;
    v24 = vmovl_s16(*a3.f32);
    *v24.f32 = vcvt_f32_s32(*v24.f32);
    v24.f32[2] = v23;
    v25.i64[0] = 0x3F0000003F000000;
    v25.i64[1] = 0x3F0000003F000000;
    v26 = vaddq_f32(v24, v25);
    v27 = *(v9 + 12);
    v28 = *(v9 + 16);
    v29 = *(v9 + 20);
    v30.i64[0] = 0;
    v31 = 0uLL;
    while (2)
    {
      v32 = 0;
      v26 = vmlsq_lane_f32(v26, v31, *v30.f32, 0);
      v33 = v26;
      v33.i32[3] = 0;
      v34 = vrndmq_f32(v33);
      v35 = vcvt_s32_f32(*v34.f32);
      v35.i16[1] = v35.i16[2];
      v36 = vsubq_f32(v26, v34);
      if (v36.f32[2] >= v13)
      {
        v37 = 0;
      }

      else
      {
        v37 = -1;
      }

      v38 = vcgt_f32(0x3F0000003F000000, *v36.f32);
      *v34.f32 = v38;
      v34.i16[1] = v38.i16[2];
      v34.i16[2] = v37;
      v35.i16[2] = v34.f32[2];
      *v39.i8 = vadd_s16(*v34.f32, v35);
      v40.i64[0] = v39.i64[0];
      *&v40.u32[2] = vadd_s16(*v39.i8, 1);
      v39.i64[1] = v39.i64[0];
      v125[0] = v40;
      v125[1] = vaddq_s16(v39, xmmword_24613FD10);
      v125[2] = vaddq_s16(v39, xmmword_24613FD20);
      v125[3] = vaddq_s16(v39, xmmword_24613FD30);
      v41 = v36.f32[2] >= v13;
      v42 = vmvn_s8(v38);
      v109[0] = 0;
      v124 = 0uLL;
      v111 = 0;
      v110 = 0uLL;
      v113 = 0;
      v112 = 0uLL;
      v115 = 0;
      v114 = 0uLL;
      v117 = 0;
      v116 = 0uLL;
      v119 = 0;
      v118 = 0uLL;
      v121 = 0;
      v120 = 0uLL;
      v122 = 0uLL;
      v123 = 0;
      while (2)
      {
        v45 = vshr_n_s16(*(v125 + 8 * v32), 3uLL);
        v46 = vmulq_s32(vmovl_s16(v45), xmmword_24613FBD0);
        v47 = ((v46.i32[0] ^ v46.i32[1]) ^ v46.i32[2]) % v27;
        v48 = v47 * v28;
        v49 = (v48 + v28);
        _Q1 = 0uLL;
        v51 = 0;
        if (v48 >= v49 || v48 >= v29 || v49 > v29)
        {
LABEL_13:
          v43 = 0.0;
          goto LABEL_14;
        }

        LODWORD(v54) = v29;
        while (1)
        {
          v55 = (v10 + 16 * v48);
          if ((v55[1].i32[1] & 0x80000000) == 0)
          {
            break;
          }

LABEL_23:
          if (++v48 == v49)
          {
            if (v29 > v54)
            {
              while (1)
              {
                v54 = *(v10 + 16 * v54 + 8);
                if (v54 >= v29)
                {
                  break;
                }

                v58 = vceq_s16(*(v10 + 16 * v54), v45);
                v58.i16[3] = v58.i16[2];
                if ((vminv_u16(v58) & 0x8000) != 0)
                {
                  v59 = v10 + 16 * v54;
                  goto LABEL_40;
                }
              }
            }

            goto LABEL_13;
          }
        }

        *a7.i8 = *v55;
        a8.n128_u64[0] = vceq_s16(*v55, v45);
        a8.n128_u16[3] = a8.n128_u16[2];
        if ((vminv_u16(a8.n128_u64[0]) & 0x8000) == 0)
        {
          a8.n128_u32[0] = a7.i16[0];
          v56.i32[0] = a7.u16[1];
          v56.i32[1] = a7.u16[2];
          *a7.i8 = vshr_n_s32(vshl_n_s32(v56, 0x10uLL), 0x10uLL);
          a8 = vextq_s8(a8, a8, 4uLL);
          a7 = vmulq_s32(vextq_s8(a8, a7, 0xCuLL), xmmword_24613FBD0);
          if (((a7.i32[0] ^ a7.i32[1]) ^ a7.i32[2]) % v27 == v47 && v54 == v29)
          {
            if (v55[1].i32[0] >= v29)
            {
              LODWORD(v54) = v29;
            }

            else
            {
              LODWORD(v54) = v48;
            }
          }

          goto LABEL_23;
        }

        if (v29 <= v48)
        {
          goto LABEL_13;
        }

        v59 = v10 + 16 * v48;
LABEL_40:
        v60 = *(v59 + 12);
        v43 = 0.0;
        if ((v60 & 0x80000000) == 0)
        {
          v61 = v11 + 4104 * v60 + ((*(v125 + v32) & 7) << 9) + ((WORD1(*(v125 + v32)) & 7) << 6) + 8 * (HIDWORD(*(v125 + v32)) & 7);
          v51 = *v61;
          _Q1.i8[0] = *(v61 + 4);
          v43 = _Q1.u32[0];
          _Q1.i8[0] = *(v61 + 5);
          *&v62 = _Q1.u32[0];
          *&v63 = *&v62 / 255.0;
          LOBYTE(v62) = *(v61 + 6);
          *&v64 = v62;
          *&v65 = *&v64 / 255.0;
          LOBYTE(v64) = *(v61 + 7);
          v66 = v64 / 255.0;
          __asm { FMOV            V1.4S, #1.0 }

          _Q1.i64[0] = __PAIR64__(v65, v63);
          _Q1.f32[2] = v66;
        }

LABEL_14:
        v44 = &v109[4 * v32];
        v44->i32[0] = v51;
        v44->f32[1] = v43;
        v44->i64[1] = 0;
        v44[1] = _Q1;
        if (++v32 != 8)
        {
          continue;
        }

        break;
      }

      v67 = 0.0;
      if (v36.f32[2] < v13)
      {
        v67 = 1.0;
      }

      *_Q1.f32 = vand_s8(v38, _D21);
      *v40.f32 = vcvt_f32_u32(vand_s8(v42, 0x100000001));
      _Q1.f32[2] = v67;
      v68.i64[0] = 0x3F0000003F000000;
      v68.i64[1] = 0x3F0000003F000000;
      v69 = vmlaq_f32(v36, v68, _Q1);
      v40.f32[2] = v41;
      a3.i64[0] = 0xBF000000BF000000;
      a3.i64[1] = 0xBF000000BF000000;
      v70 = vmlaq_f32(v69, a3, v40);
      v71 = *(v109 + 1);
      if (*(v109 + 1) <= 0.0)
      {
        v71 = 0.0;
        a8 = 0uLL;
        if (v70.f32[0] > 1.0 || v70.f32[0] < 0.0)
        {
LABEL_54:
          v73 = 0.0;
        }

        else
        {
          v73 = 0.0;
          if (*(&v111 + 1) > 0.0)
          {
            a8 = v112;
            v73 = v70.f32[0] * *&v111;
            v71 = *(&v111 + 1);
          }
        }
      }

      else
      {
        if (v70.f32[0] < 0.0 || v70.f32[0] > 1.0)
        {
          v71 = 0.0;
          a8 = 0uLL;
          goto LABEL_54;
        }

        v74 = 1.0 - v70.f32[0];
        if (*(&v111 + 1) <= 0.0)
        {
          a8 = v110;
          v73 = v74 * *v109;
        }

        else
        {
          v73 = (v70.f32[0] * *&v111) + (*v109 * v74);
          v71 = (v70.f32[0] * *(&v111 + 1)) + (*(v109 + 1) * v74);
          _Q1 = v110;
          a8 = vmlaq_n_f32(vmulq_n_f32(v112, v70.f32[0]), v110, v74);
        }
      }

      v75 = *(&v115 + 1);
      if (*(&v115 + 1) <= 0.0)
      {
        v75 = 0.0;
        v77 = 0uLL;
        if (v70.f32[0] > 1.0 || v70.f32[0] < 0.0)
        {
LABEL_68:
          v78 = 0.0;
        }

        else
        {
          v78 = 0.0;
          if (*(&v113 + 1) > 0.0)
          {
            v77 = v114;
            v78 = v70.f32[0] * *&v113;
            v75 = *(&v113 + 1);
          }
        }
      }

      else
      {
        if (v70.f32[0] < 0.0 || v70.f32[0] > 1.0)
        {
          v75 = 0.0;
          v77 = 0uLL;
          goto LABEL_68;
        }

        v79 = 1.0 - v70.f32[0];
        if (*(&v113 + 1) <= 0.0)
        {
          v77 = v116;
          v78 = v79 * *&v115;
        }

        else
        {
          v78 = (v70.f32[0] * *&v113) + (*&v115 * v79);
          v75 = (v70.f32[0] * *(&v113 + 1)) + (*(&v115 + 1) * v79);
          _Q1 = v116;
          v77 = vmlaq_n_f32(vmulq_n_f32(v114, v70.f32[0]), v116, v79);
        }
      }

      v80 = *(&v117 + 1);
      if (*(&v117 + 1) <= 0.0)
      {
        v80 = 0.0;
        v30 = 0uLL;
        if (v70.f32[0] > 1.0 || v70.f32[0] < 0.0)
        {
LABEL_82:
          v82 = 0.0;
        }

        else
        {
          v82 = 0.0;
          if (*(&v119 + 1) > 0.0)
          {
            v30 = v120;
            v82 = v70.f32[0] * *&v119;
            v80 = *(&v119 + 1);
          }
        }
      }

      else
      {
        if (v70.f32[0] < 0.0 || v70.f32[0] > 1.0)
        {
          v80 = 0.0;
          v30 = 0uLL;
          goto LABEL_82;
        }

        v83 = 1.0 - v70.f32[0];
        if (*(&v119 + 1) <= 0.0)
        {
          v30 = v118;
          v82 = v83 * *&v117;
        }

        else
        {
          v82 = (v70.f32[0] * *&v119) + (*&v117 * v83);
          v80 = (v70.f32[0] * *(&v119 + 1)) + (*(&v117 + 1) * v83);
          _Q1 = v118;
          v30 = vmlaq_n_f32(vmulq_n_f32(v120, v70.f32[0]), v118, v83);
        }
      }

      v84 = *(&v123 + 1);
      if (*(&v123 + 1) <= 0.0)
      {
        v84 = 0.0;
        v86 = 0uLL;
        if (v70.f32[0] > 1.0 || v70.f32[0] < 0.0)
        {
LABEL_96:
          v87 = 0.0;
        }

        else
        {
          v87 = 0.0;
          if (*(&v121 + 1) > 0.0)
          {
            v86 = v122;
            v87 = v70.f32[0] * *&v121;
            v84 = *(&v121 + 1);
          }
        }
      }

      else
      {
        if (v70.f32[0] < 0.0 || v70.f32[0] > 1.0)
        {
          v84 = 0.0;
          v86 = 0uLL;
          goto LABEL_96;
        }

        v88 = 1.0 - v70.f32[0];
        if (*(&v121 + 1) <= 0.0)
        {
          v86 = v124;
          v87 = v88 * *&v123;
        }

        else
        {
          v87 = (v70.f32[0] * *&v121) + (*&v123 * v88);
          v84 = (v70.f32[0] * *(&v121 + 1)) + (*(&v123 + 1) * v88);
          _Q1 = v124;
          v86 = vmlaq_n_f32(vmulq_n_f32(v122, v70.f32[0]), v124, v88);
        }
      }

      v89 = 1.0 - v70.f32[1];
      if (v71 <= 0.0)
      {
        v71 = 0.0;
        a8 = 0uLL;
        if (v70.f32[1] > 1.0 || v70.f32[1] < 0.0)
        {
LABEL_111:
          v91 = 0.0;
          if (v75 > 0.0)
          {
            goto LABEL_121;
          }

          goto LABEL_112;
        }

        v91 = 0.0;
        if (v80 > 0.0)
        {
          v91 = v70.f32[1] * v82;
          a8 = v30;
          v71 = v80;
          if (v75 > 0.0)
          {
            goto LABEL_121;
          }

          goto LABEL_112;
        }

LABEL_120:
        if (v75 > 0.0)
        {
          goto LABEL_121;
        }

LABEL_112:
        v75 = 0.0;
        v77 = 0uLL;
        if (v70.f32[1] > 1.0 || v70.f32[1] < 0.0)
        {
LABEL_126:
          v92 = 0.0;
        }

        else
        {
          v92 = 0.0;
          if (v84 > 0.0)
          {
            v92 = v70.f32[1] * v87;
            v77 = v86;
            v75 = v84;
          }
        }

        goto LABEL_130;
      }

      if (v70.f32[1] < 0.0 || v70.f32[1] > 1.0)
      {
        v71 = 0.0;
        a8 = 0uLL;
        goto LABEL_111;
      }

      if (v80 <= 0.0)
      {
        v91 = v89 * v73;
        goto LABEL_120;
      }

      v91 = (v70.f32[1] * v82) + (v73 * v89);
      v71 = (v70.f32[1] * v80) + (v71 * v89);
      v30 = vmlaq_n_f32(vmulq_lane_f32(v30, *v70.f32, 1), a8, v89);
      a8 = v30;
      if (v75 <= 0.0)
      {
        goto LABEL_112;
      }

LABEL_121:
      if (v70.f32[1] < 0.0 || v70.f32[1] > 1.0)
      {
        v75 = 0.0;
        v77 = 0uLL;
        goto LABEL_126;
      }

      if (v84 <= 0.0)
      {
        v92 = v89 * v78;
      }

      else
      {
        v92 = (v70.f32[1] * v87) + (v78 * v89);
        v75 = (v70.f32[1] * v84) + (v75 * v89);
        v30 = vmlaq_n_f32(vmulq_lane_f32(v86, *v70.f32, 1), v77, v89);
        v77 = v30;
      }

LABEL_130:
      v94 = 1.0 - v70.f32[2];
      if (v71 <= 0.0)
      {
        v71 = 0.0;
        a8 = 0uLL;
        if (v70.f32[2] > 1.0 || v70.f32[2] < 0.0)
        {
LABEL_140:
          v30.i64[0] = 0;
        }

        else
        {
          v30.i64[0] = 0;
          if (v75 > 0.0)
          {
            v30.f32[0] = v70.f32[2] * v92;
            a8 = v77;
            v71 = v75;
          }
        }
      }

      else
      {
        if (v70.f32[2] < 0.0 || v70.f32[2] > 1.0)
        {
          v71 = 0.0;
          a8 = 0uLL;
          goto LABEL_140;
        }

        if (v75 <= 0.0)
        {
          v30.f32[0] = v94 * v91;
        }

        else
        {
          v30.f32[0] = (v70.f32[2] * v92) + (v91 * v94);
          v71 = (v70.f32[2] * v75) + (v71 * v94);
          a8 = vmlaq_n_f32(vmulq_laneq_f32(v77, v70, 2), a8, v94);
        }
      }

      _Q1.f32[0] = (v70.f32[2] * ((v70.f32[1] * (*&v121 - *&v123)) + (v89 * (*&v113 - *&v115)))) + (v94 * ((v70.f32[1] * (*&v119 - *&v117)) + (v89 * (*&v111 - *v109))));
      v96 = v92 - v91;
      if (fabsf(_Q1.f32[0]) > 0.000001)
      {
        v97 = *(v9 + 48);
        v13 = 0.5;
        goto LABEL_151;
      }

      v98 = fabsf(v96);
      v97 = *(v9 + 48);
      v99 = fabsf((v70.f32[2] * (v87 - v78)) + (v94 * (v82 - v73))) > 0.000001 || v98 > 0.000001;
      v13 = 0.5;
      if (!v99)
      {
        _Q1.f32[0] = fabsf(v30.f32[0]);
        goto LABEL_155;
      }

LABEL_151:
      if (v71 >= v97)
      {
        _Q1.f32[1] = (v70.f32[2] * (v87 - v78)) + (v94 * (v82 - v73));
        _Q1.f32[2] = v96;
        v100 = vmulq_f32(_Q1, _Q1);
        *&v101 = v100.f32[2] + vaddv_f32(*v100.f32);
        *v100.f32 = vrsqrte_f32(v101);
        *v100.f32 = vmul_f32(*v100.f32, vrsqrts_f32(v101, vmul_f32(*v100.f32, *v100.f32)));
        v102 = vrsqrts_f32(v101, vmul_f32(*v100.f32, *v100.f32));
        v31 = vmulq_n_f32(_Q1, vmul_f32(*v100.f32, v102).f32[0]);
        _Q1.f32[0] = fabsf(v30.f32[0]);
        if (_Q1.f32[0] >= 0.01)
        {
          if (v21 <= 8)
          {
            goto LABEL_8;
          }
        }

        else
        {
          v103 = vcvt_s32_f32(vrndm_f32(*&vextq_s8(v26, v26, 4uLL)));
          v102.i16[0] = vcvtms_s32_f32(v26.f32[0]);
          v102.i16[1] = v103.i16[0];
          v102.i16[2] = v103.i16[2];
          v104 = vceq_s16(v102, *v108.f32);
          v104.i16[3] = v104.i16[2];
          if ((vminv_u16(v104) & 0x8000) == 0 && v21 < 9)
          {
LABEL_8:
            ++v21;
            continue;
          }
        }

LABEL_155:
        if (v71 >= v97 && _Q1.f32[0] < 0.01)
        {
          v105 = vcvt_s32_f32(vrndm_f32(*&vextq_s8(v26, v26, 4uLL)));
          _Q1.i16[0] = vcvtms_s32_f32(v26.f32[0]);
          _Q1.i16[1] = v105.i16[0];
          _Q1.i16[2] = v105.i16[2];
          a3.i64[1] = v108.i64[1];
          *a3.f32 = vceq_s16(*_Q1.f32, *v108.f32);
          a3.i16[3] = a3.i16[2];
          if ((vminv_u16(*a3.f32) & 0x8000) != 0)
          {
            add = atomic_fetch_add((v9 + 272), 1u);
            if (add < *(v9 + 40))
            {
              a8.n128_u32[3] = 1.0;
              v26.i32[3] = 1.0;
              v31.i32[3] = 0;
              v107 = *v22 + 48 * add;
              *v107 = v26;
              *(v107 + 16) = v31;
              *(v107 + 32) = a8;
            }
          }
        }
      }

      break;
    }

LABEL_2:
    if (++v8 != 512)
    {
      continue;
    }

    return result;
  }
}

int8x16_t sub_246132400(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  *(v1 + 24) = result;
  *(v1 + 56) = 1;
  return result;
}

int8x16_t sub_24613241C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  *(v1 + 24) = result;
  *(v1 + 56) = 1;
  return result;
}

uint64_t sub_246132438(uint64_t a1, int *a2)
{
  v54 = *MEMORY[0x277D85DE8];
  if (*a2)
  {
    v2 = *(a2 + 1) < 0.0001;
  }

  else
  {
    v2 = 1;
  }

  if (v2 || *(a2 + 8) == 0)
  {
    return 0;
  }

  v5 = *(a2 + 1);
  v6 = *(a2 + 2);
  v4 = (a2 + 4);
  v7 = *(a2 + 3);
  v8 = *(MEMORY[0x277D860B0] + 16);
  v9 = *(MEMORY[0x277D860B0] + 32);
  v10 = vdupq_n_s32(0x38D1B717u);
  v11 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v6, *v6.f32, 1), v7, *v7.f32, 1), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v6, v6.f32[0]), v7, v7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v6, v6, 2), v7, v7, 2), v9)));
  v11.i32[3] = v11.i32[2];
  if ((vminvq_u32(v11) & 0x80000000) == 0)
  {
    return 0;
  }

  v12 = vzip1q_s32(vzip2q_s32(v5, v7), vdupq_laneq_s32(v6, 2));
  v13 = vtrn2q_s32(v5, v6);
  v13.i32[2] = HIDWORD(*(a2 + 6));
  v14 = vzip1q_s32(vzip1q_s32(v5, v7), v6);
  v15 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v5.f32[0]), v13, *v5.f32, 1), v12, v5, 2);
  v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v6.f32[0]), v13, *v6.f32, 1), v12, v6, 2);
  v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v7.f32[0]), v13, *v7.f32, 1), v12, v7, 2);
  v18 = vdupq_n_s32(0x38D1B717u);
  v19 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(v16, v8)), vcgeq_f32(v18, vabdq_f32(v15, *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(v17, v9)));
  v19.i32[3] = v19.i32[2];
  if ((vminvq_u32(v19) & 0x80000000) == 0)
  {
    return 0;
  }

  v22 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL))), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL)));
  v20 = 0;
  if (fabsf((v22.f32[2] + vaddv_f32(*v22.f32)) + -1.0) <= 0.000011)
  {
    v23 = vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL)));
    v24 = vdup_n_s32(0x38D1B717u);
    v25 = vand_s8(vcge_f32(v24, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(*(a2 + 4), *(a2 + 4), 8uLL)), 0xBF80000080000000))), vcge_f32(v24, v23));
    if ((vpmin_u32(v25, v25).u32[0] & 0x80000000) != 0 && a2[20] != 3 && *(a2 + 21) >= 0.0)
    {
      if ((*(a1 + 8) & 1) != 0 || !*(a1 + 128))
      {
        return 0;
      }

      v45 = *a2;
      *v53 = &unk_2858EC6D0;
      *&v53[24] = v53;
      v52[3] = v52;
      v52[0] = &unk_2858EC6D0;
      v28 = *(a1 + 144);
      *v28 = 0;
      *(v28 + 8) = 0;
      v50[0] = &unk_2858EC718;
      v50[1] = &v45;
      v51 = v50;
      v49 = v48;
      v48[0] = &unk_2858EC718;
      v48[1] = &v45;
      sub_246132B00(v48, &v46);
      v29 = *(a1 + 208);
      v30 = *v29;
      if (*v29)
      {
        *(v29 + 8) = v30;
        operator delete(v30);
        *v29 = 0;
        *(v29 + 8) = 0;
        *(v29 + 16) = 0;
      }

      *v29 = v46;
      *(v29 + 16) = v47;
      if (!v49)
      {
        goto LABEL_40;
      }

      (*(*v49 + 48))(&v46);
      v31 = *(a1 + 208);
      v32 = v31[3];
      if (v32)
      {
        v31[4] = v32;
        operator delete(v32);
      }

      *(v31 + 3) = v46;
      v31[5] = v47;
      if (!v49)
      {
LABEL_40:
        sub_246102FD4();
        _Unwind_Resume(v44);
      }

      (*(*v49 + 48))(&v46);
      v33 = *(a1 + 208);
      v34 = v33[6];
      if (v34)
      {
        v33[7] = v34;
        operator delete(v34);
      }

      *(v33 + 3) = v46;
      v33[8] = v47;
      if (v49 == v48)
      {
        (*(*v49 + 32))(v49);
      }

      else if (v49)
      {
        (*(*v49 + 40))();
      }

      if (v51 == v50)
      {
        (*(*v51 + 32))(v51);
      }

      else if (v51)
      {
        (*(*v51 + 40))();
      }

      if (*&v53[24] == v53)
      {
        (*(**&v53[24] + 32))(*&v53[24]);
      }

      else if (*&v53[24])
      {
        (*(**&v53[24] + 40))();
      }

      v35 = a2;
      *(a1 + 60) = a2[1];
      v36 = *v4;
      v37 = v4[1];
      v38 = v4[3];
      *(a1 + 96) = v4[2];
      *(a1 + 112) = v38;
      *(a1 + 64) = v36;
      *(a1 + 80) = v37;
      v39 = *(a1 + 128);
      v20 = *v39;
      if (v20 == 1)
      {
        v40 = v39[8];
        *v53 = *(v39 + 9);
        *&v53[11] = *(v39 + 20);
        *(a1 + 12) = v40;
        *(a1 + 13) = *v53;
        v41 = *&v53[11];
        *(a1 + 24) = *&v53[11];
        *(a1 + 40) = *v35;
        LOBYTE(v41) = *(v35 + 8);
        *(a1 + 48) = v41;
        v42 = dispatch_get_global_queue(0, 0);
        v43 = *(a1 + 280);
        *(a1 + 280) = v42;

        *(a1 + 8) = 1;
      }
    }
  }

  return v20;
}

void sub_2461329DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v9 = va_arg(va1, void);
  v11 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  sub_246132A00(va);
  sub_246132A00(va1);
  sub_246132A80(v7 - 96);
  _Unwind_Resume(a1);
}

uint64_t sub_246132A00(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_246132A80(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_246132B00@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v3 = **(result + 8);
  a2[1] = 0;
  a2[2] = 0;
  *a2 = 0;
  if (v3)
  {
    operator new();
  }

  return result;
}

uint64_t sub_246132BA4(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858EC718;
  a2[1] = v2;
  return result;
}

void sub_246132CC8(uint64_t a1)
{
  sub_246132D00(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_246132D00(uint64_t a1)
{
  v2 = *(a1 + 208);
  if (v2)
  {
    v3 = *(a1 + 216);
    v4 = *(a1 + 208);
    if (v3 != v2)
    {
      v5 = *(a1 + 216);
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
      v4 = *(a1 + 208);
    }

    *(a1 + 216) = v2;
    operator delete(v4);
  }

  v8 = *(a1 + 144);
  if (v8)
  {
    *(a1 + 152) = v8;
    operator delete(v8);
  }

  v9 = *(a1 + 136);
  if (v9 && !atomic_fetch_add(&v9->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v9->__on_zero_shared)(v9);
    std::__shared_weak_count::__release_weak(v9);
  }

  return a1;
}

void **sub_246132DEC(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      v5 = a1[1];
      do
      {
        v7 = *(v5 - 3);
        v5 -= 24;
        v6 = v7;
        if (v7)
        {
          *(v3 - 2) = v6;
          operator delete(v6);
        }

        v3 = v5;
      }

      while (v5 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

uint64_t sub_246132E64(uint64_t a1)
{
  v2 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v2;
    operator delete(v2);
  }

  return a1;
}

BOOL sub_246132EB8(uint64_t a1, char **a2, uint64_t a3, uint64_t a4, uint64_t a5, float32x2_t *a6)
{
  v16 = *(a2 + 4);
  v17 = *(a4 + 16);
  if (v16)
  {
    v18 = v17 == 0;
  }

  else
  {
    v18 = 1;
  }

  if (v18)
  {
    return 0;
  }

  v196 = v15;
  v197 = v14;
  v198 = v13;
  v199 = v12;
  v200 = v11;
  v201 = v10;
  v202 = v9;
  v203 = v8;
  v204 = v6;
  v205 = v7;
  v194 = 0.0;
  v193 = 0;
  v191 = 0;
  v23 = *a2;
  v24 = 3 * v16;
  v25 = v16;
  v26 = *a4;
  v27 = (3 * v17);
  v28 = 4 * v24;
  if (v16 != 1)
  {
    v34 = &v23[v28 / 4];
    v35 = v23 + 3;
    v36 = *v23;
    v37 = v28 - 24;
    v38 = (v28 - 24) / 0xC + 1;
    if (v17 == 1)
    {
      if (v37 >= 0xC)
      {
        v39 = v23 + 3;
        v40 = v38 & 0x3FFFFFFFFFFFFFFELL;
        do
        {
          v36 = (v36 + *v39) + v39[3];
          v39 += 6;
          v40 -= 2;
        }

        while (v40);
        if (v38 == (v38 & 0x3FFFFFFFFFFFFFFELL))
        {
LABEL_17:
          v29 = v36 / v25;
          *&v193 = v36 / v25;
          v30 = *v26 / v25;
          *&v191 = v30;
          v42 = v23[1];
          v43 = v23 + 4;
          if (v37 >= 0xC)
          {
            v44 = v23 + 4;
            v45 = v38 & 0x3FFFFFFFFFFFFFFELL;
            do
            {
              v42 = (v42 + *v44) + v44[3];
              v44 += 6;
              v45 -= 2;
            }

            while (v45);
            if (v38 == (v38 & 0x3FFFFFFFFFFFFFFELL))
            {
              goto LABEL_23;
            }

            v43 += 3 * (v38 & 0x3FFFFFFFFFFFFFFELL);
          }

          do
          {
            v46 = *v43;
            v43 += 3;
            v42 = v42 + v46;
          }

          while (v43 != &v23[v24 + 1]);
LABEL_23:
          v32 = v42 / v25;
          *(&v193 + 1) = v42 / v25;
          v33 = v26[1] / v25;
          *(&v191 + 1) = v33;
          v48 = v23[2];
          v47 = (v23 + 2);
          v31 = v48;
          v49 = (v47 + 12);
          if (v37 >= 0xC)
          {
            v50 = (v47 + 12);
            v51 = v38 & 0x3FFFFFFFFFFFFFFELL;
            do
            {
              v31 = (v31 + *v50) + v50[3];
              v50 += 6;
              v51 -= 2;
            }

            while (v51);
            if (v38 == (v38 & 0x3FFFFFFFFFFFFFFELL))
            {
              goto LABEL_30;
            }

            v49 += 3 * (v38 & 0x3FFFFFFFFFFFFFFELL);
          }

          v52 = &v47[4 * v24];
          do
          {
            v53 = *v49;
            v49 += 3;
            v31 = v31 + v53;
          }

          while (v49 != v52);
LABEL_30:
          v54 = v31 / v25;
          v194 = v31 / v25;
          v55 = v26[2];
          goto LABEL_89;
        }

        v35 += 3 * (v38 & 0x3FFFFFFFFFFFFFFELL);
      }

      do
      {
        v41 = *v35;
        v35 += 3;
        v36 = v36 + v41;
      }

      while (v35 != v34);
      goto LABEL_17;
    }

    if (v37 > 0xB)
    {
      v75 = v23 + 3;
      v76 = v38 & 0x3FFFFFFFFFFFFFFELL;
      do
      {
        v36 = (v36 + *v75) + v75[3];
        v75 += 6;
        v76 -= 2;
      }

      while (v76);
      if (v38 == (v38 & 0x3FFFFFFFFFFFFFFELL))
      {
LABEL_57:
        v29 = v36 / v25;
        *&v193 = v36 / v25;
        v78 = v26 + 3;
        v79 = *v26;
        v80 = 4 * v27 - 24;
        v81 = v80 / 0xC + 1;
        if (v80 >= 0xC)
        {
          v82 = v26 + 3;
          v83 = v81 & 0x3FFFFFFFFFFFFFFELL;
          do
          {
            v79 = (v79 + *v82) + v82[3];
            v82 += 6;
            v83 -= 2;
          }

          while (v83);
          if (v81 == (v81 & 0x3FFFFFFFFFFFFFFELL))
          {
LABEL_63:
            v30 = v79 / v25;
            *&v191 = v79 / v25;
            v85 = v23[1];
            v86 = v23 + 4;
            if (v37 >= 0xC)
            {
              v87 = v23 + 4;
              v88 = v38 & 0x3FFFFFFFFFFFFFFELL;
              do
              {
                v85 = (v85 + *v87) + v87[3];
                v87 += 6;
                v88 -= 2;
              }

              while (v88);
              if (v38 == (v38 & 0x3FFFFFFFFFFFFFFELL))
              {
LABEL_69:
                v32 = v85 / v25;
                *(&v193 + 1) = v85 / v25;
                v90 = v26[1];
                v91 = v26 + 4;
                if (v80 >= 0xC)
                {
                  v92 = v26 + 4;
                  v93 = v81 & 0x3FFFFFFFFFFFFFFELL;
                  do
                  {
                    v90 = (v90 + *v92) + v92[3];
                    v92 += 6;
                    v93 -= 2;
                  }

                  while (v93);
                  if (v81 == (v81 & 0x3FFFFFFFFFFFFFFELL))
                  {
LABEL_75:
                    v33 = v90 / v25;
                    *(&v191 + 1) = v90 / v25;
                    v96 = v23[2];
                    v95 = (v23 + 2);
                    v97 = v96;
                    v98 = (v95 + 12);
                    if (v37 >= 0xC)
                    {
                      v99 = (v95 + 12);
                      v100 = v38 & 0x3FFFFFFFFFFFFFFELL;
                      do
                      {
                        v97 = (v97 + *v99) + v99[3];
                        v99 += 6;
                        v100 -= 2;
                      }

                      while (v100);
                      if (v38 == (v38 & 0x3FFFFFFFFFFFFFFELL))
                      {
                        goto LABEL_82;
                      }

                      v98 += 3 * (v38 & 0x3FFFFFFFFFFFFFFELL);
                    }

                    v101 = &v95[4 * v24];
                    do
                    {
                      v102 = *v98;
                      v98 += 3;
                      v97 = v97 + v102;
                    }

                    while (v98 != v101);
LABEL_82:
                    v54 = v97 / v25;
                    v194 = v97 / v25;
                    v104 = v26[2];
                    v103 = v26 + 2;
                    v55 = v104;
                    v105 = v103 + 3;
                    if (v80 >= 0xC)
                    {
                      v106 = v103 + 3;
                      v107 = v81 & 0x3FFFFFFFFFFFFFFELL;
                      do
                      {
                        v55 = (v55 + *v106) + v106[3];
                        v106 += 6;
                        v107 -= 2;
                      }

                      while (v107);
                      if (v81 == (v81 & 0x3FFFFFFFFFFFFFFELL))
                      {
                        goto LABEL_89;
                      }

                      v105 += 3 * (v81 & 0x3FFFFFFFFFFFFFFELL);
                    }

                    v108 = &v103[v27];
                    do
                    {
                      v109 = *v105;
                      v105 += 3;
                      v55 = v55 + v109;
                    }

                    while (v105 != v108);
                    goto LABEL_89;
                  }

                  v91 += 3 * (v81 & 0x3FFFFFFFFFFFFFFELL);
                }

                do
                {
                  v94 = *v91;
                  v91 += 3;
                  v90 = v90 + v94;
                }

                while (v91 != &v26[v27 + 1]);
                goto LABEL_75;
              }

              v86 += 3 * (v38 & 0x3FFFFFFFFFFFFFFELL);
            }

            do
            {
              v89 = *v86;
              v86 += 3;
              v85 = v85 + v89;
            }

            while (v86 != &v23[v24 + 1]);
            goto LABEL_69;
          }

          v78 += 3 * (v81 & 0x3FFFFFFFFFFFFFFELL);
        }

        do
        {
          v84 = *v78;
          v78 += 3;
          v79 = v79 + v84;
        }

        while (v78 != &v26[v27]);
        goto LABEL_63;
      }

      v35 += 3 * (v38 & 0x3FFFFFFFFFFFFFFELL);
    }

    do
    {
      v77 = *v35;
      v35 += 3;
      v36 = v36 + v77;
    }

    while (v35 != v34);
    goto LABEL_57;
  }

  v29 = *v23 / v25;
  *&v193 = v29;
  if (v17 == 1)
  {
    v30 = *v26 / v25;
    v31 = v23[2];
    v32 = v23[1] / v25;
    *(&v193 + 1) = v32;
    v33 = v26[1] / v25;
    *&v191 = v30;
    *(&v191 + 1) = v33;
    goto LABEL_30;
  }

  v56 = v26 + 3;
  v57 = *v26;
  v58 = 4 * v27 - 24;
  v59 = v58 / 0xC + 1;
  if (v58 <= 0xB)
  {
    goto LABEL_36;
  }

  v60 = v26 + 3;
  v61 = v59 & 0x3FFFFFFFFFFFFFFELL;
  do
  {
    v57 = (v57 + *v60) + v60[3];
    v60 += 6;
    v61 -= 2;
  }

  while (v61);
  if (v59 != (v59 & 0x3FFFFFFFFFFFFFFELL))
  {
    v56 += 3 * (v59 & 0x3FFFFFFFFFFFFFFELL);
    do
    {
LABEL_36:
      v62 = *v56;
      v56 += 3;
      v57 = v57 + v62;
    }

    while (v56 != &v26[v27]);
  }

  v30 = v57 / v25;
  *&v191 = v57 / v25;
  v32 = v23[1] / v25;
  *(&v193 + 1) = v32;
  v63 = v26[1];
  v64 = v26 + 4;
  if (v58 >= 0xC)
  {
    v65 = v26 + 4;
    v66 = v59 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v63 = (v63 + *v65) + v65[3];
      v65 += 6;
      v66 -= 2;
    }

    while (v66);
    if (v59 == (v59 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_43;
    }

    v64 += 3 * (v59 & 0x3FFFFFFFFFFFFFFELL);
  }

  do
  {
    v67 = *v64;
    v64 += 3;
    v63 = v63 + v67;
  }

  while (v64 != &v26[v27 + 1]);
LABEL_43:
  v33 = v63 / v25;
  *(&v191 + 1) = v63 / v25;
  v54 = v23[2] / v25;
  v194 = v54;
  v69 = v26[2];
  v68 = v26 + 2;
  v55 = v69;
  v70 = v68 + 3;
  if (v58 >= 0xC)
  {
    v71 = v68 + 3;
    v72 = v59 & 0x3FFFFFFFFFFFFFFELL;
    do
    {
      v55 = (v55 + *v71) + v71[3];
      v71 += 6;
      v72 -= 2;
    }

    while (v72);
    if (v59 == (v59 & 0x3FFFFFFFFFFFFFFELL))
    {
      goto LABEL_89;
    }

    v70 += 3 * (v59 & 0x3FFFFFFFFFFFFFFELL);
  }

  v73 = &v68[v27];
  do
  {
    v74 = *v70;
    v70 += 3;
    v55 = v55 + v74;
  }

  while (v70 != v73);
LABEL_89:
  v110 = v55 / v25;
  v192 = v55 / v25;
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, (v28 + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v111 = memptr[0];
  memcpy(memptr[0], *a2, v28);
  v112 = *(a4 + 16);
  memptr[0] = 0;
  malloc_type_posix_memalign(memptr, 0x20uLL, (4 * (3 * v112) + 31) & 0x7FFFFFFE0, 0xE1AC2527uLL);
  v113 = memptr[0];
  if (v112)
  {
    memcpy(memptr[0], *a4, 4 * (3 * v112));
  }

  v114 = 0.0;
  v115 = *(a2 + 4);
  v116 = 0.0;
  v117 = 0.0;
  v118 = 0.0;
  v119 = 0.0;
  v120 = 0.0;
  v121 = 0.0;
  v122 = 0.0;
  v123 = 0.0;
  if (v115)
  {
    v124 = 0;
    v125 = *a2;
    v126 = *a4;
    v127 = 3 * v115;
    do
    {
      v129 = 4 * v124;
      v130 = &v125[v129];
      v131 = &v111[v129];
      v132 = *&v125[v129] - v29;
      if (v125 == v111)
      {
        v133 = v130[2];
        v134 = v130[1] - v32;
        *v131 = v132;
        v131[1] = v134;
      }

      else
      {
        *v131 = v132;
        v131[1] = v130[1] - v32;
        v133 = v130[2];
      }

      v131[2] = v133 - v54;
      v135 = &v126[v129 / 4];
      v136 = &v113[v129 / 4];
      v137 = *v135 - v30;
      if (v126 == v113)
      {
        v128 = v135[2];
        v138 = v135[1] - v33;
        *v136 = v137;
        v136[1] = v138;
      }

      else
      {
        *v136 = v137;
        v136[1] = v135[1] - v33;
        v128 = v135[2];
      }

      v136[2] = v128 - v110;
      v124 += 3;
    }

    while (v127 != v124);
    v139 = 0;
    v123 = 0.0;
    v122 = 0.0;
    v121 = 0.0;
    v120 = 0.0;
    v119 = 0.0;
    v118 = 0.0;
    v117 = 0.0;
    v116 = 0.0;
    v114 = 0.0;
    do
    {
      v140 = v139;
      v141 = &v111[v140 * 4];
      v142 = &v113[v140];
      v143 = v142[1];
      v144 = v141[1];
      v123 = v123 + (*v142 * *v141);
      v122 = v122 + (v143 * *v141);
      v145 = v142[2];
      v121 = v121 + (v145 * *v141);
      v120 = v120 + (*v142 * v144);
      v119 = v119 + (v143 * v144);
      v118 = v118 + (v145 * v144);
      v146 = v141[2];
      v117 = v117 + (*v142 * v146);
      v116 = v116 + (v143 * v146);
      v114 = v114 + (v145 * v146);
      v139 += 3;
    }

    while (v127 != v139);
  }

  v189 = 0u;
  memset(v190, 0, 29);
  v188 = 0u;
  memset(memptr, 0, sizeof(memptr));
  *&v190[5] = 0x300000003;
  *&v195[0] = __PAIR64__(LODWORD(v122), LODWORD(v123));
  *(&v195[0] + 1) = __PAIR64__(LODWORD(v120), LODWORD(v121));
  *&v195[1] = __PAIR64__(LODWORD(v118), LODWORD(v119));
  *(&v195[1] + 1) = __PAIR64__(LODWORD(v116), LODWORD(v117));
  *&v195[2] = v114;
  sub_2461030E4(memptr);
  v182 = 0;
  v183 = 0x3F80000000000000;
  v185 = 0;
  v184 = 0;
  v181 = 1065353216;
  v147 = (((*(&v188 + 1) * *(memptr + 1)) + 0.0) + (*(&v188 + 2) * *&memptr[2])) + (*(&v188 + 3) * *(&memptr[3] + 1));
  v148 = (((*&v189 * *(memptr + 1)) + 0.0) + (*(&v189 + 1) * *&memptr[2])) + (*(&v189 + 2) * *(&memptr[3] + 1));
  v149 = (((*(&v189 + 3) * *(memptr + 1)) + 0.0) + (v190[0] * *&memptr[2])) + (v190[1] * *(&memptr[3] + 1));
  v150 = (((*(&v188 + 1) * *&memptr[1]) + 0.0) + (*(&v188 + 2) * *(&memptr[2] + 1))) + (*(&v188 + 3) * *&v188);
  v151 = (((*&v189 * *&memptr[1]) + 0.0) + (*(&v189 + 1) * *(&memptr[2] + 1))) + (*(&v189 + 2) * *&v188);
  v152 = (((*(&v189 + 3) * *&memptr[1]) + 0.0) + (v190[0] * *(&memptr[2] + 1))) + (v190[1] * *&v188);
  v186 = (((((*(&v189 + 3) * *memptr) + 0.0) + (v190[0] * *(&memptr[1] + 1))) + (v190[1] * *&memptr[3])) * ((v151 * v147) - (v148 * v150))) + ((((((*(&v188 + 1) * *memptr) + 0.0) + (*(&v188 + 2) * *(&memptr[1] + 1))) + (*(&v188 + 3) * *&memptr[3])) * ((v152 * v148) - (v149 * v151))) - (((((*&v189 * *memptr) + 0.0) + (*(&v189 + 1) * *(&memptr[1] + 1))) + (*(&v189 + 2) * *&memptr[3])) * ((v152 * v147) - (v149 * v150))));
  v176 = &v188 + 4;
  v177 = &v176;
  v178 = &v181;
  memset(v195, 0, 36);
  *v153.i8 = sub_2461272BC(v195, &v177);
  v153.i32[0] = v195[0];
  v154.i32[0] = HIDWORD(v195[0]);
  v155.i32[0] = DWORD2(v195[1]);
  v156.i64[0] = memptr[0];
  v157 = vzip1q_s32(v156, v156);
  v157.i32[2] = memptr[0];
  v158.i64[0] = *(&memptr[1] + 4);
  v159 = vzip1q_s32(v158, v158);
  v159.i32[2] = HIDWORD(memptr[1]);
  v160.i64[0] = memptr[3];
  v161 = vzip1q_s32(v160, v160);
  v161.i32[2] = memptr[3];
  v162.i64[0] = *(v195 + 4);
  v163.i64[0] = *&v195[1];
  v164.i64[0] = *(&v195[1] + 12);
  v165 = vextq_s8(vextq_s8(v153, v153, 4uLL), v162, 0xCuLL);
  v165.i32[3] = v165.i32[0];
  v166 = vmlaq_f32(0, v157, v165);
  v167 = vextq_s8(vextq_s8(v154, v154, 4uLL), v163, 0xCuLL);
  v167.i32[3] = v167.i32[0];
  v168 = vmlaq_f32(v166, v159, v167);
  v169 = vextq_s8(vextq_s8(v155, v155, 4uLL), v164, 0xCuLL);
  v169.i32[3] = v169.i32[0];
  *v179 = vmlaq_f32(v168, v161, v169);
  *v169.f32 = vmla_lane_f32(vmla_lane_f32(vmla_lane_f32(0, *(v195 + 4), memptr[0], 1), *&v195[1], *(&memptr[1] + 4), 1), *(&v195[1] + 12), memptr[3], 1);
  v174 = v169.i32[1];
  v175 = *v179;
  *&v179[16] = v169.i64[0];
  v180[0].f32[0] = (((*v195 * *&memptr[1]) + 0.0) + (*(v195 + 3) * *(&memptr[2] + 1))) + (*(&v195[1] + 2) * *&v188);
  *v153.i8 = vmla_n_f32(vmla_n_f32(vmla_n_f32(0, *(v195 + 4), *&memptr[1]), *&v195[1], *(&memptr[2] + 1)), *(&v195[1] + 12), *&v188);
  v173 = v153.i32[1];
  *(v180 + 4) = *v153.i8;
  v177 = v179;
  v178 = &v191;
  *&v195[0] = &v193;
  *(&v195[0] + 1) = 0;
  LODWORD(v195[1]) = 0;
  sub_2460E50CC(v195 + 2, &v177);
  v170 = *(*&v195[0] + 8) - *&v195[1];
  v171 = vsub_f32(**&v195[0], *(v195 + 8));
  *a6 = v175;
  a6[1].i32[0] = DWORD2(v175);
  a6[1].i32[1] = 0;
  a6[2] = *&v179[12];
  a6[3].i32[0] = v174;
  a6[3].i32[1] = 0;
  a6[4] = v180[0];
  a6[5].i32[0] = v173;
  a6[5].i32[1] = 0;
  a6[6] = v171;
  a6[7].f32[0] = v170;
  a6[7].i32[1] = 1065353216;
  v172 = sub_246126D24(a6);
  free(v113);
  free(v111);
  return v172;
}

void **sub_24613399C(void **a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 104;
        sub_2461310EC(v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    operator delete(v4);
  }

  return a1;
}

BOOL sub_246133A00(uint64_t a1, uint64_t a2)
{
  v23 = *MEMORY[0x277D85DE8];
  if (a1 == a2)
  {
    return 1;
  }

  v2 = *MEMORY[0x277D860B0];
  v3 = *(MEMORY[0x277D860B0] + 16);
  v4 = *(MEMORY[0x277D860B0] + 32);
  v5 = vdupq_n_s32(0x38D1B717u);
  v6 = vdup_n_s32(0x38D1B717u);
  while (1)
  {
    v7 = *a1;
    v8 = *(a1 + 16);
    v9 = *(a1 + 32);
    v10 = vandq_s8(vandq_s8(vcgeq_f32(v5, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v7, *v7.f32, 1), v8, *v8.f32, 1), v9, *v9.f32, 1), v3)), vcgeq_f32(v5, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7, v7.f32[0]), v8, v8.f32[0]), v9, v9.f32[0]), v2))), vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, v7, 2), v8, v8, 2), v9, v9, 2), v4)));
    v10.i32[3] = v10.i32[2];
    if ((vminvq_u32(v10) & 0x80000000) == 0)
    {
      break;
    }

    v11 = vzip1q_s32(vzip2q_s32(v7, v9), vdupq_laneq_s32(v8, 2));
    v12 = vtrn2q_s32(v7, v8);
    v12.i32[2] = HIDWORD(*(a1 + 32));
    v13 = vzip1q_s32(vzip1q_s32(v7, v9), v8);
    v14 = vandq_s8(vandq_s8(vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v8.f32[0]), v12, *v8.f32, 1), v11, v8, 2), v3)), vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v7.f32[0]), v12, *v7.f32, 1), v11, v7, 2), v2))), vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v13, v9.f32[0]), v12, *v9.f32, 1), v11, v9, 2), v4)));
    v14.i32[3] = v14.i32[2];
    if ((vminvq_u32(v14) & 0x80000000) == 0)
    {
      break;
    }

    v15 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
    if (fabsf((v15.f32[2] + vaddv_f32(*v15.f32)) + -1.0) > 0.000011)
    {
      break;
    }

    v16 = vand_s8(vcge_f32(v6, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(*(a1 + 48), *(a1 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v6, vabs_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)))));
    if ((vpmin_u32(v16, v16).u32[0] & 0x80000000) == 0)
    {
      break;
    }

    a1 += 64;
    if (a1 == a2)
    {
      return 1;
    }
  }

  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v18 = qword_27EE3F698;
  result = os_log_type_enabled(qword_27EE3F698, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v19 = 136315394;
    v20 = "VoxelHashingDataGPU::InitConfig";
    v21 = 1026;
    v22 = 117;
    _os_log_error_impl(&dword_2460CF000, v18, OS_LOG_TYPE_ERROR, "%s:%{public}d Submap to world transform is invalid.", &v19, 0x12u);
    return 0;
  }

  return result;
}

uint64_t sub_246133C90(uint64_t a1, const char *a2)
{
  v31 = *MEMORY[0x277D85DE8];
  v3 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), a2, @"oc::voxel_hashing::resetHashEntries");
  if (!v3)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v11 = qword_27EE3F698;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createPipelineStates()");
      v13 = (v30 & 0x80000000) == 0 ? __p : *__p;
      *buf = 136315394;
      *&buf[4] = v13;
      v23 = 1026;
      v24 = 520;
      _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find resetHashEntries compute shader.", buf, 0x12u);
      if (SBYTE3(v30) < 0)
      {
        operator delete(*__p);
      }
    }

    v7 = 0;
    goto LABEL_11;
  }

  v4 = **a1;
  v21 = 0;
  v6 = objc_msgSend_newComputePipelineStateWithFunction_error_(v4, v5, v3, &v21);
  v7 = v21;
  v9 = *(a1 + 24);
  v8 = (a1 + 24);
  *v8 = v6;

  if (!*v8)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v11 = qword_27EE3F698;
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createPipelineStates()");
      v14 = v25;
      v15 = *buf;
      v18 = objc_msgSend_localizedDescription(v7, v16, v17);
      v19 = v18;
      if (v14 >= 0)
      {
        v20 = buf;
      }

      else
      {
        v20 = v15;
      }

      *__p = 136315650;
      *&__p[4] = v20;
      v27 = 1026;
      v28 = 527;
      v29 = 2114;
      v30 = v18;
      _os_log_error_impl(&dword_2460CF000, v11, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for resetHashEntries compute shader. Error details: %{public}@", __p, 0x1Cu);

      if (v25 < 0)
      {
        operator delete(*buf);
      }
    }

LABEL_11:

    v10 = 0;
    goto LABEL_12;
  }

  v10 = 1;
LABEL_12:

  return v10;
}

void sub_246133F24(_Unwind_Exception *a1)
{
  if (v5 < 0)
  {
    operator delete(v4);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_246133F5C(uint64_t a1)
{
  v101 = *MEMORY[0x277D85DE8];
  v92 = 0;
  v2 = MEMORY[0x24C1998B0]();
  host_page_size(v2, &v92);
  *(a1 + 40) = (v92 + 24 * *(a1 + 396) + 1) / v92 * v92;
  v3 = **a1;
  v5 = objc_msgSend_newBufferWithLength_options_(v3, v4, *(a1 + 40), 0);
  v6 = *(a1 + 464);
  *(a1 + 464) = v5;

  v8 = *(a1 + 464);
  if (!v8)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v74 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v74;
    v99 = 1026;
    v100 = 548;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create hashEntries buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v8, v7, @"HashEntries Buffer");
  *(a1 + 48) = (v92 + 17368 * *(a1 + 400) + 1) / v92 * v92;
  v9 = **a1;
  v11 = objc_msgSend_newBufferWithLength_options_(v9, v10, *(a1 + 48), 0);
  v12 = *(a1 + 472);
  *(a1 + 472) = v11;

  v14 = *(a1 + 472);
  if (!v14)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v75 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v75;
    v99 = 1026;
    v100 = 560;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create voxelBlocks buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v14, v13, @"VoxelBlocks Buffer");
  v15 = **a1;
  v17 = objc_msgSend_newBufferWithLength_options_(v15, v16, 4, 0);
  v18 = *(a1 + 480);
  *(a1 + 480) = v17;

  v20 = *(a1 + 480);
  if (!v20)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v76 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v76;
    v99 = 1026;
    v100 = 569;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create nextAvailableVoxelBlockIdx buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v20, v19, @"NextAvailableVoxelBlockIdx Buffer");
  *objc_msgSend_contents(*(a1 + 480), v21, v22) = 0;
  v23 = 4 * *(a1 + 404);
  v24 = **a1;
  v26 = objc_msgSend_newBufferWithLength_options_(v24, v25, v23, 0);
  v27 = *(a1 + 488);
  *(a1 + 488) = v26;

  v29 = *(a1 + 488);
  if (!v29)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v77 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v77;
    v99 = 1026;
    v100 = 582;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create voxelBlocksFreeStack buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v29, v28, @"VoxelBlocksFreeStack Buffer");
  v30 = **a1;
  v32 = objc_msgSend_newBufferWithLength_options_(v30, v31, 4, 0);
  v33 = *(a1 + 496);
  *(a1 + 496) = v32;

  v35 = *(a1 + 496);
  if (!v35)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v85 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v85;
    v99 = 1026;
    v100 = 591;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create voxelBlocksFreeStackTop buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v35, v34, @"VoxelBlocksFreeStackTop Buffer");
  *objc_msgSend_contents(*(a1 + 496), v36, v37) = -1;
  v38 = **a1;
  v40 = objc_msgSend_newBufferWithLength_options_(v38, v39, 12 * *(a1 + 392), 0);
  v41 = *(a1 + 504);
  *(a1 + 504) = v40;

  v43 = *(a1 + 504);
  if (!v43)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v86 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v86;
    v99 = 1026;
    v100 = 605;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create updatedAndErasableHashEntries buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v43, v42, @"UpdatedAndErasableHashEntries Buffer");
  v44 = **a1;
  v46 = objc_msgSend_newBufferWithLength_options_(v44, v45, 4, 0);
  v47 = *(a1 + 512);
  *(a1 + 512) = v46;

  v49 = *(a1 + 512);
  if (!v49)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v73 = qword_27EE3F698;
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v87 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v87;
    v99 = 1026;
    v100 = 614;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create numUpdatedAndErasableHashEntries buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v49, v48, @"NumUpdatedAndErasableHashEntries Buffer");
  *objc_msgSend_contents(*(a1 + 512), v50, v51) = 0;
  v52 = **a1;
  v54 = objc_msgSend_newBufferWithLength_options_(v52, v53, 12 * *(a1 + 392), 0);
  v55 = *(a1 + 520);
  *(a1 + 520) = v54;

  v57 = *(a1 + 520);
  if (!v57)
  {
    v73 = sub_246134C3C();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v88 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v88;
    v99 = 1026;
    v100 = 626;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create updatedHashEntries buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v57, v56, @"UpdatedHashEntries Buffer");
  v58 = **a1;
  v60 = objc_msgSend_newBufferWithLength_options_(v58, v59, 4, 0);
  v61 = *(a1 + 528);
  *(a1 + 528) = v60;

  v63 = *(a1 + 528);
  if (!v63)
  {
    v73 = sub_246134C3C();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v89 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v89;
    v99 = 1026;
    v100 = 635;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create numUpdatedHashEntries buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v63, v62, @"NumUpdatedHashEntries Buffer");
  *objc_msgSend_contents(*(a1 + 528), v64, v65) = 0;
  v66 = **a1;
  v68 = objc_msgSend_newBufferWithLength_options_(v66, v67, *(a1 + 408) << 8, 0);
  v69 = *(a1 + 544);
  *(a1 + 544) = v68;

  v71 = *(a1 + 544);
  if (!v71)
  {
    v73 = sub_246134C3C();
    if (!os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_71;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v90 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v90;
    v99 = 1026;
    v100 = 646;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create submapsData buffer.", buf, 0x12u);
    if ((v95 & 0x80000000) == 0)
    {
      goto LABEL_71;
    }

    goto LABEL_66;
  }

  objc_msgSend_setLabel_(v71, v70, @"SubmapsData Buffer");
  if (*(a1 + 644) == 1)
  {
    v72 = 30852 * *(a1 + 400);
  }

  else
  {
    v72 = 1;
  }

  v78 = **a1;
  v80 = objc_msgSend_newBufferWithLength_options_(v78, v79, v72, 0);
  v81 = *(a1 + 552);
  *(a1 + 552) = v80;

  v83 = *(a1 + 552);
  if (v83)
  {
    objc_msgSend_setLabel_(v83, v82, @"TriangleFacesInVoxelBlocks Buffer");
    __p[0] = &unk_2858EC7C8;
    __p[1] = a1;
    v96 = __p;
    sub_246135260(v93, __p);
    sub_246135310((a1 + 576), v93);
    sub_2461354D4(v93);
    sub_2461354D4(__p);
    return 1;
  }

  v73 = sub_246134C3C();
  if (os_log_type_enabled(v73, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::createBuffers(const InitConfig &)");
    v91 = v95 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v98 = v91;
    v99 = 1026;
    v100 = 662;
    _os_log_error_impl(&dword_2460CF000, v73, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create triangleFacesInVoxelBlocks buffer.", buf, 0x12u);
    if (v95 < 0)
    {
LABEL_66:
      operator delete(__p[0]);
    }
  }

LABEL_71:

  return 0;
}

void sub_246134B88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va1, a3);
  va_start(va, a3);
  v4 = va_arg(va1, void);
  v6 = va_arg(va1, void);
  v7 = va_arg(va1, void);
  v8 = va_arg(va1, void);
  sub_2461354D4(va);
  sub_2461354D4(va1);
  _Unwind_Resume(a1);
}

id sub_246134C3C()
{
  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v1 = qword_27EE3F698;

  return v1;
}

void sub_246134C90(uint64_t a1)
{
  if (*(a1 + 408))
  {
    v2 = 0;
    v3 = *(a1 + 424);
    do
    {
      v4 = *(a1 + 392);
      v5 = v4 * v2++;
      v6 = v4 * v2;
      v7 = *(a1 + 432);
      if (v3 < v7)
      {
        *v3 = v5 | (v6 << 32);
        v3 += 8;
      }

      else
      {
        v8 = *(a1 + 416);
        v9 = v3 - v8;
        v10 = (v3 - v8) >> 3;
        v11 = v10 + 1;
        if ((v10 + 1) >> 61)
        {
          sub_2460D368C();
        }

        v12 = v7 - v8;
        if (v12 >> 2 > v11)
        {
          v11 = v12 >> 2;
        }

        if (v12 >= 0x7FFFFFFFFFFFFFF8)
        {
          v13 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v11;
        }

        if (v13)
        {
          if (!(v13 >> 61))
          {
            operator new();
          }

          sub_2460D368C();
        }

        v14 = v10;
        v15 = (8 * v10);
        v16 = v5 | (v6 << 32);
        v17 = &v15[-v14];
        *v15 = v16;
        v3 = (v15 + 1);
        memcpy(v17, v8, v9);
        *(a1 + 416) = v17;
        *(a1 + 424) = v3;
        *(a1 + 432) = 0;
        if (v8)
        {
          operator delete(v8);
        }
      }

      *(a1 + 424) = v3;
    }

    while (v2 < *(a1 + 408));
  }
}

void sub_246134DD0(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = objc_msgSend_computeCommandEncoder(a2, a2, a3);
  objc_msgSend_setLabel_(v4, v5, @"ResetHashEntries Encoder");
  objc_msgSend_setComputePipelineState_(v4, v6, *(a1 + 24));
  objc_msgSend_setBytes_length_atIndex_(v4, v7, a1 + 384, 28, 0);
  objc_msgSend_setBuffer_offset_atIndex_(v4, v8, *(a1 + 464), 0, 1);
  v11 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 24), v9, v10);
  v17 = *(a1 + 396);
  v18 = vdupq_n_s64(1uLL);
  v15 = v11;
  v16 = v18;
  objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v4, v12, &v17, &v15);
  objc_msgSend_endEncoding(v4, v13, v14);
}

uint64_t sub_246134EA0(uint64_t a1, unsigned int a2, uint64_t a3)
{
  if (*(a1 + 408) <= a2)
  {
    return 0;
  }

  v4.columns[0] = *a3;
  v4.columns[1] = *(a3 + 16);
  v4.columns[2] = *(a3 + 32);
  v3 = *(MEMORY[0x277D860B0] + 16);
  v4.columns[3] = *(MEMORY[0x277D860B0] + 32);
  v5 = vdupq_n_s32(0x38D1B717u);
  v6 = vandq_s8(vandq_s8(vcgeq_f32(v5, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v4.columns[0], *v4.columns[0].f32, 1), v4.columns[1], *v4.columns[1].f32, 1), v4.columns[2], *v4.columns[2].f32, 1), v3)), vcgeq_f32(v5, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v4.columns[0], v4.columns[0].f32[0]), v4.columns[1], v4.columns[1].f32[0]), v4.columns[2], v4.columns[2].f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v4.columns[0], v4.columns[0], 2), v4.columns[1], v4.columns[1], 2), v4.columns[2], v4.columns[2], 2), v4.columns[3])));
  v6.i32[3] = v6.i32[2];
  if ((vminvq_u32(v6) & 0x80000000) == 0)
  {
    return 0;
  }

  v7 = vzip1q_s32(vzip2q_s32(v4.columns[0], v4.columns[2]), vdupq_laneq_s32(v4.columns[1], 2));
  v8 = vtrn2q_s32(v4.columns[0], v4.columns[1]);
  v8.i32[2] = HIDWORD(*(a3 + 32));
  v9 = vzip1q_s32(vzip1q_s32(v4.columns[0], v4.columns[2]), v4.columns[1]);
  v10 = vandq_s8(vandq_s8(vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v4.columns[1].f32[0]), v8, *v4.columns[1].f32, 1), v7, v4.columns[1], 2), v3)), vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v4.columns[0].f32[0]), v8, *v4.columns[0].f32, 1), v7, v4.columns[0], 2), *MEMORY[0x277D860B0]))), vcgeq_f32(v5, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v9, v4.columns[2].f32[0]), v8, *v4.columns[2].f32, 1), v7, v4.columns[2], 2), v4.columns[3])));
  v10.i32[3] = v10.i32[2];
  if ((vminvq_u32(v10) & 0x80000000) == 0)
  {
    return 0;
  }

  v11 = vmulq_f32(v4.columns[0], vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v4.columns[2], v4.columns[2], 0xCuLL), v4.columns[2], 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v4.columns[1], v4.columns[1]), v4.columns[1], 0xCuLL))), vextq_s8(vuzp1q_s32(v4.columns[2], v4.columns[2]), v4.columns[2], 0xCuLL), vextq_s8(vextq_s8(v4.columns[1], v4.columns[1], 0xCuLL), v4.columns[1], 8uLL)));
  if (fabsf((v11.f32[2] + vaddv_f32(*v11.f32)) + -1.0) > 0.000011)
  {
    return 0;
  }

  v4.columns[3] = *(a3 + 48);
  v12 = vdup_n_s32(0x38D1B717u);
  v13 = vand_s8(vcge_f32(v12, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v4.columns[2], v4.columns[2], 8uLL), *&vextq_s8(v4.columns[3], v4.columns[3], 8uLL)), 0xBF80000080000000))), vcge_f32(v12, vabs_f32(vzip2_s32(*&vextq_s8(v4.columns[0], v4.columns[0], 8uLL), *&vextq_s8(v4.columns[1], v4.columns[1], 8uLL)))));
  if ((vpmin_u32(v13, v13).u32[0] & 0x80000000) == 0)
  {
    return 0;
  }

  v40 = __invert_f4(v4);
  v20 = objc_msgSend_contents(*(a1 + 544), v18, v19) + (a2 << 8);
  v21 = *(a3 + 48);
  v23 = *a3;
  v22 = *(a3 + 16);
  *(v20 + 32) = *(a3 + 32);
  *(v20 + 48) = v21;
  *v20 = v23;
  *(v20 + 16) = v22;
  *(v20 + 64) = v40;
  v24 = *(a1 + 192);
  v25 = *(a1 + 208);
  v26 = *(a1 + 224);
  v27 = *(a1 + 240);
  v28 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 256))), v40.columns[1], *(a1 + 256), 1), v40.columns[2], *(a1 + 256), 2), v40.columns[3], *(a1 + 256), 3);
  v29 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 272))), v40.columns[1], *(a1 + 272), 1), v40.columns[2], *(a1 + 272), 2), v40.columns[3], *(a1 + 272), 3);
  v30 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 288))), v40.columns[1], *(a1 + 288), 1), v40.columns[2], *(a1 + 288), 2), v40.columns[3], *(a1 + 288), 3);
  v31 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 304))), v40.columns[1], *(a1 + 304), 1), v40.columns[2], *(a1 + 304), 2), v40.columns[3], *(a1 + 304), 3);
  *(v20 + 128) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v28.f32[0]), v25, *v28.f32, 1), v26, v28, 2), v27, v28, 3);
  *(v20 + 144) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v29.f32[0]), v25, *v29.f32, 1), v26, v29, 2), v27, v29, 3);
  *(v20 + 160) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v30.f32[0]), v25, *v30.f32, 1), v26, v30, 2), v27, v30, 3);
  *(v20 + 176) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v24, v31.f32[0]), v25, *v31.f32, 1), v26, v31, 2), v27, v31, 3);
  v32 = *(a1 + 64);
  v33 = *(a1 + 80);
  v34 = *(a1 + 96);
  v35 = *(a1 + 112);
  v36 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 128))), v40.columns[1], *(a1 + 128), 1), v40.columns[2], *(a1 + 128), 2), v40.columns[3], *(a1 + 128), 3);
  v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 144))), v40.columns[1], *(a1 + 144), 1), v40.columns[2], *(a1 + 144), 2), v40.columns[3], *(a1 + 144), 3);
  v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 160))), v40.columns[1], *(a1 + 160), 1), v40.columns[2], *(a1 + 160), 2), v40.columns[3], *(a1 + 160), 3);
  v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40.columns[0], COERCE_FLOAT(*(a1 + 176))), v40.columns[1], *(a1 + 176), 1), v40.columns[2], *(a1 + 176), 2), v40.columns[3], *(a1 + 176), 3);
  *(v20 + 192) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v36.f32[0]), v33, *v36.f32, 1), v34, v36, 2), v35, v36, 3);
  *(v20 + 208) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v37.f32[0]), v33, *v37.f32, 1), v34, v37, 2), v35, v37, 3);
  *(v20 + 224) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v38.f32[0]), v33, *v38.f32, 1), v34, v38, 2), v35, v38, 3);
  *(v20 + 240) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v32, v39.f32[0]), v33, *v39.f32, 1), v34, v39, 2), v35, v39, 3);
  return 1;
}

void sub_2461351F8(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = objc_msgSend_error(a2, a2, a3);
  if (v5)
  {
    sub_24611A2D0(v5, v3, v4);
  }
}

uint64_t sub_246135260(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 24);
  if (v2)
  {
    if (v2 == a2)
    {
      *(result + 24) = result;
      v5 = result;
      (*(**(a2 + 24) + 24))(*(a2 + 24), result);
      return v5;
    }

    else
    {
      v3 = result;
      v4 = (*(*v2 + 16))(*(a2 + 24));
      result = v3;
      *(v3 + 24) = v4;
    }
  }

  else
  {
    *(result + 24) = 0;
  }

  return result;
}

void sub_246135310(uint64_t *a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (!v3)
  {
    goto LABEL_17;
  }

  (*(*v3 + 48))(&v8);
  sub_246135554(*a1, &v8);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  v5 = *(a2 + 24);
  if (!v5)
  {
    goto LABEL_17;
  }

  (*(*v5 + 48))(&v8);
  sub_246135554(*a1 + 104, &v8);
  if (__p)
  {
    v16 = __p;
    operator delete(__p);
  }

  if (v13)
  {
    v14 = v13;
    operator delete(v13);
  }

  v6 = *(a2 + 24);
  if (v6)
  {
    (*(*v6 + 48))(&v8);
    sub_246135554(*a1 + 208, &v8);
    if (__p)
    {
      v16 = __p;
      operator delete(__p);
    }

    if (v13)
    {
      v14 = v13;
      operator delete(v13);
    }
  }

  else
  {
LABEL_17:
    sub_246102FD4();
    sub_2461354D4(v7);
  }
}

uint64_t sub_2461354D4(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t sub_246135554(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;

  v6 = a2[1];
  a2[1] = 0;
  v7 = *(a1 + 8);
  *(a1 + 8) = v6;

  v8 = a2[2];
  a2[2] = 0;
  v9 = *(a1 + 16);
  *(a1 + 16) = v8;

  v10 = a2[3];
  a2[3] = 0;
  v11 = *(a1 + 24);
  *(a1 + 24) = v10;

  *(a1 + 32) = *(a2 + 8);
  v12 = a2[5];
  a2[5] = 0;
  v13 = *(a1 + 40);
  *(a1 + 40) = v12;

  v14 = *(a1 + 48);
  if (v14)
  {
    *(a1 + 56) = v14;
    operator delete(v14);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
  }

  *(a1 + 48) = *(a2 + 3);
  *(a1 + 64) = a2[8];
  a2[6] = 0;
  a2[7] = 0;
  a2[8] = 0;
  v15 = *(a1 + 72);
  if (v15)
  {
    *(a1 + 80) = v15;
    operator delete(v15);
    *(a1 + 72) = 0;
    *(a1 + 80) = 0;
    *(a1 + 88) = 0;
  }

  *(a1 + 72) = *(a2 + 9);
  *(a1 + 88) = a2[11];
  a2[9] = 0;
  a2[10] = 0;
  a2[11] = 0;
  *(a1 + 96) = *(a2 + 24);
  return a1;
}

void sub_246135660(uint64_t a1@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v32 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 8);
  v26 = 0u;
  v27 = 0;
  v5 = objc_msgSend_newBufferWithLength_options_(**v4, a2, 4, 0, 0);
  *&v26 = v5;
  if (!v5)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v20 = qword_27EE3F698;
    if (!os_log_type_enabled(qword_27EE3F698, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    v29 = "VoxelHashingDataGPU::createBuffers";
    v30 = 1026;
    v31 = 672;
    v21 = "%s:%{public}d Failed to create numVertices in meshBuffer";
    goto LABEL_30;
  }

  v7 = v5;
  objc_msgSend_setLabel_(v5, v6, @"NumVertices Buffer", v5);
  v9 = objc_msgSend_newBufferWithLength_options_(**v4, v8, 48 * *(v4 + 560), 0);
  v11 = v9;
  *(&v26 + 1) = v9;
  if (!v9)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v20 = qword_27EE3F698;
    if (!os_log_type_enabled(qword_27EE3F698, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    v29 = "VoxelHashingDataGPU::createBuffers";
    v30 = 1026;
    v31 = 681;
    v21 = "%s:%{public}d Failed to create numVertices in meshBuffer";
    goto LABEL_30;
  }

  objc_msgSend_setLabel_(v9, v10, @"Vertices Buffer");
  v13 = objc_msgSend_newBufferWithLength_options_(**v4, v12, 4, 0);
  v15 = v13;
  v27 = v13;
  if (!v13)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v20 = qword_27EE3F698;
    if (!os_log_type_enabled(qword_27EE3F698, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_31;
    }

    *buf = 136315394;
    v29 = "VoxelHashingDataGPU::createBuffers";
    v30 = 1026;
    v31 = 692;
    v21 = "%s:%{public}d Failed to create numTriangleVertexIdxs in meshBuffer";
    goto LABEL_30;
  }

  objc_msgSend_setLabel_(v13, v14, @"NumTriangleVertexIdxs Buffer");
  if (*(v4 + 644) == 1)
  {
    v17 = objc_msgSend_newBufferWithLength_options_(**v4, v16, 12 * *(v4 + 564), 0);
    v19 = v17;
    if (v17)
    {
      objc_msgSend_setLabel_(v17, v18, @"TriangleVertexIdxs Buffer");
      goto LABEL_20;
    }

    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v20 = qword_27EE3F698;
    if (!os_log_type_enabled(qword_27EE3F698, OS_LOG_TYPE_ERROR))
    {
LABEL_31:
      v19 = 0;
LABEL_32:
      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      *(a3 + 40) = 0u;
      *(a3 + 56) = 0u;
      *(a3 + 72) = 0u;
      *(a3 + 84) = 0u;
      goto LABEL_33;
    }

    *buf = 136315394;
    v29 = "VoxelHashingDataGPU::createBuffers";
    v30 = 1026;
    v31 = 703;
    v21 = "%s:%{public}d Failed to create triangleVertexIdxs in meshBuffer";
LABEL_30:
    _os_log_error_impl(&dword_2460CF000, v20, OS_LOG_TYPE_ERROR, v21, buf, 0x12u);
    goto LABEL_31;
  }

  v19 = 0;
LABEL_20:
  v22 = objc_msgSend_newBufferWithLength_options_(**v4, v16, 48 * *(v4 + 568), 0);
  v24 = v22;
  if (!v22)
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v25 = qword_27EE3F698;
    if (os_log_type_enabled(qword_27EE3F698, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v29 = "VoxelHashingDataGPU::createBuffers";
      v30 = 1026;
      v31 = 714;
      _os_log_error_impl(&dword_2460CF000, v25, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create sampledPointsFromMesh in meshBuffer", buf, 0x12u);
    }

    goto LABEL_32;
  }

  objc_msgSend_setLabel_(v22, v23, @"SampledPointsFromMesh Buffer");
  *a3 = v7;
  *(a3 + 8) = v11;
  v26 = 0u;
  v27 = 0;
  *(a3 + 16) = v15;
  *(a3 + 24) = v19;
  *(a3 + 32) = 0;
  *(a3 + 40) = v24;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  v19 = 0;
LABEL_33:
}

uint64_t sub_246135B34(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *(a1 + 48);
  if (v3)
  {
    *(a1 + 56) = v3;
    operator delete(v3);
  }

  return a1;
}

uint64_t sub_246135BA8(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_2858EC7C8;
  a2[1] = v2;
  return result;
}

uint64_t sub_246135C3C()
{
  qword_27EE3F698 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

uint64_t sub_246135C80(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    return *(a1 + 560);
  }

  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v2 = qword_27EE3F698;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "uint32_t oc::voxel_hashing::VoxelHashingDataGPU::vertexCapacity() const");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 157;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_246135DAC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    return *(a1 + 564);
  }

  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v2 = qword_27EE3F698;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "uint32_t oc::voxel_hashing::VoxelHashingDataGPU::triangleCapacity() const");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 167;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_246135ED8(uint64_t a1, const char *a2, uint64_t a3)
{
  v22 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && *(a1 + 488) && *(a1 + 496) && *(a1 + 480) && (v3 = *(a1 + 384)) != 0 && (v4 = *(a1 + 392), v5 = *(a1 + 388), v5 - 1 < v4) && v4 == v5 * v3 && !(v4 % v5) && (v6 = *(a1 + 408), *(a1 + 396) == v6 * v4) && (v7 = *(a1 + 400), v7 >= 1) && v6 && *(a1 + 404) - 1 < v7)
  {
    v9 = *objc_msgSend_contents(*(a1 + 480), a2, a3);
    v12 = *objc_msgSend_contents(*(a1 + 496), v10, v11);
    if (v12 < 0)
    {
      v12 = -1;
    }

    return (v9 + ~v12);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v14 = qword_27EE3F698;
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "uint32_t oc::voxel_hashing::VoxelHashingDataGPU::numVoxelBlocks() const");
      v15 = v17 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v19 = v15;
      v20 = 1026;
      v21 = 188;
      _os_log_error_impl(&dword_2460CF000, v14, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v17 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }
}

void sub_2461360B0(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a2 + 8))
  {
    *a1 = *(a2 + 384);
    *(a1 + 12) = *(a2 + 396);
    v3 = 1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v4 = qword_27EE3F698;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "std::optional<HashTableParams> oc::voxel_hashing::VoxelHashingDataGPU::hashTableParams() const");
      if (v7 >= 0)
      {
        v5 = __p;
      }

      else
      {
        v5 = __p[0];
      }

      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 200;
      _os_log_error_impl(&dword_2460CF000, v4, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v3 = 0;
    *a1 = 0;
  }

  *(a1 + 28) = v3;
}

id sub_246136204(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = *(a1 + 464);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v2 = qword_27EE3F698;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::hashEntries()");
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v8 = v4;
      v9 = 1026;
      v10 = 210;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v1 = 0;
  }

  return v1;
}

id sub_246136344(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = *(a1 + 472);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v2 = qword_27EE3F698;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::voxelBlocks()");
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v8 = v4;
      v9 = 1026;
      v10 = 220;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v1 = 0;
  }

  return v1;
}

id sub_246136484(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 480)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::nextAvailableVoxelBlockIdx()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 230;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_2461365CC(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 488)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::voxelBlocksFreeStack()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 240;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_246136714(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 496)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::voxelBlocksFreeStackTopBuffer()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 250;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_24613685C(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 504)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::updatedAndErasableHashEntries()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 260;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_2461369A4(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 512)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::numUpdatedAndErasableHashEntriesBuffer()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 270;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_246136AEC(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 520)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::updatedHashEntries()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 280;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_246136C34(uint64_t a1)
{
  v12 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && (v1 = *(a1 + 528)) != 0)
  {
    v2 = v1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::numUpdatedHashEntriesBuffer()");
      v5 = v7 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v9 = v5;
      v10 = 1026;
      v11 = 290;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v7 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v2 = 0;
  }

  return v2;
}

id sub_246136D7C(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = *(a1 + 552);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v2 = qword_27EE3F698;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::triangleFacesInVoxelBlocks()");
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v8 = v4;
      v9 = 1026;
      v10 = 340;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v1 = 0;
  }

  return v1;
}

uint64_t sub_246136EBC(uint64_t a1, unsigned int a2)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8) == 1 && *(a1 + 408) > a2)
  {
    *(a1 + 536) = a2;
    return 1;
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::setLastIntegratedSubmapID(const SubmapID)");
      if (v6 >= 0)
      {
        v4 = __p;
      }

      else
      {
        v4 = __p[0];
      }

      *buf = 136315394;
      v8 = v4;
      v9 = 1026;
      v10 = 350;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized or the submapID is invalid.", buf, 0x12u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    return 0;
  }
}

uint64_t sub_246136FFC(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    return *(a1 + 536) | 0x100000000;
  }

  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v2 = qword_27EE3F698;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "std::optional<SubmapID> oc::voxel_hashing::VoxelHashingDataGPU::lastIntegratedSubmapID() const");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 361;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

id sub_24613712C(uint64_t a1)
{
  v11 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = *(a1 + 544);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v2 = qword_27EE3F698;
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "id<MTLBuffer> oc::voxel_hashing::VoxelHashingDataGPU::submapsData()");
      v4 = v6 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v8 = v4;
      v9 = 1026;
      v10 = 386;
      _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v6 < 0)
      {
        operator delete(__p[0]);
      }
    }

    v1 = 0;
  }

  return v1;
}

uint64_t sub_24613726C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    return *(a1 + 576) + 104 * *(a1 + 616);
  }

  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v2 = qword_27EE3F698;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "MeshBuffers *oc::voxel_hashing::VoxelHashingDataGPU::meshReaderBuffers()");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 406;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

uint64_t sub_2461373A4(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    return *(a1 + 576) + 104 * *(a1 + 600);
  }

  if (qword_27EE3F6A0 != -1)
  {
    dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
  }

  v2 = qword_27EE3F698;
  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "MeshBuffers *oc::voxel_hashing::VoxelHashingDataGPU::meshWriterBuffers()");
    if (v5 >= 0)
    {
      v3 = __p;
    }

    else
    {
      v3 = __p[0];
    }

    *buf = 136315394;
    v7 = v3;
    v8 = 1026;
    v9 = 416;
    _os_log_error_impl(&dword_2460CF000, v2, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
    if (v5 < 0)
    {
      operator delete(__p[0]);
    }
  }

  return 0;
}

void sub_2461374DC(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  if (*(a1 + 8))
  {
    v1 = a1 + 576;
    v2 = *(a1 + 624);
    block[0] = MEMORY[0x277D85DD0];
    block[1] = 3221225472;
    v6 = sub_246137658;
    v7 = &unk_278E9B530;
    v8 = v1;
    dispatch_sync(v2, block);
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v3 = qword_27EE3F698;
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(block, "void oc::voxel_hashing::VoxelHashingDataGPU::updateMeshReaderBuffer()");
      if (SHIBYTE(v6) >= 0)
      {
        v4 = block;
      }

      else
      {
        v4 = block[0];
      }

      *buf = 136315394;
      v10 = v4;
      v11 = 1026;
      v12 = 426;
      _os_log_error_impl(&dword_2460CF000, v3, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (SHIBYTE(v6) < 0)
      {
        operator delete(block[0]);
      }
    }
  }
}

int8x16_t sub_246137658(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (v1[3].i8[8] == 1)
  {
    result = vextq_s8(v1[2], v1[2], 8uLL);
    v1[2] = result;
    v1[3].i8[8] = 0;
  }

  return result;
}

int8x16_t sub_24613767C(uint64_t a1)
{
  v1 = *(a1 + 32);
  result = vextq_s8(*(v1 + 24), *(v1 + 24), 8uLL);
  *(v1 + 24) = result;
  *(v1 + 56) = 1;
  return result;
}

uint64_t sub_246137698(uint64_t a1, const char *a2, uint64_t a3)
{
  v60 = *MEMORY[0x277D85DE8];
  v53 = *(a1 + 8);
  if (v53)
  {
    v4 = *objc_msgSend_contents(*(a1 + 512), a2, a3);
    v7 = objc_msgSend_contents(*(a1 + 504), v5, v6);
    v10 = objc_msgSend_contents(*(a1 + 528), v8, v9);
    *v10 = 0;
    v13 = objc_msgSend_contents(*(a1 + 520), v11, v12);
    v52 = objc_msgSend_contents(*(a1 + 488), v14, v15);
    v18 = objc_msgSend_contents(*(a1 + 496), v16, v17);
    v21 = v18;
    if (*v18 <= -2)
    {
      *v18 = -1;
    }

    v51 = objc_msgSend_contents(*(a1 + 472), v19, v20);
    v24 = objc_msgSend_contents(*(a1 + 464), v22, v23);
    if (v4)
    {
      v27 = v24;
      do
      {
        if (*v21 >= *(a1 + 404) - 1)
        {
          break;
        }

        if (*(v7 + 8) == 1 && (v30 = *v7, *(v27 + 24 * *v7 + 16) == 2))
        {
          v31 = (*(a1 + 416) + 8 * *(a1 + 536));
          if (*v31 > v30 || v31[1] <= v30)
          {
            if (qword_27EE3F6A0 != -1)
            {
              dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
            }

            v37 = qword_27EE3F698;
            if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
            {
              sub_24610D894(__p, "Pointer oc::voxel_hashing::VoxelHashingDataGPU::eraseHashEntry(const UpdatedHashEntry &)");
              v47 = __p;
              if (v55 < 0)
              {
                v47 = __p[0];
              }

              *buf = 136315394;
              v57 = v47;
              v58 = 1026;
              v59 = 765;
              _os_log_error_impl(&dword_2460CF000, v37, OS_LOG_TYPE_ERROR, "%s:%{public}d Received invalid updatedHashEntry.", buf, 0x12u);
              if (v55 < 0)
              {
                operator delete(__p[0]);
              }
            }
          }

          else
          {
            v32 = objc_msgSend_contents(*(a1 + 464), v25, v26);
            v33 = *v7;
            v34 = v7[1];
            v35 = *(v32 + 24 * *v7 + 12);
            v36 = (*(a1 + 416) + 8 * *(a1 + 536));
            if (*v36 > v34 || v36[1] <= v34)
            {
              v38 = v32 + 24 * v33;
              v41 = *(v38 + 8);
              v40 = (v38 + 8);
              v39 = v41;
              if (*v36 <= v41 && v36[1] > v39)
              {
                v42 = (v32 + 24 * v39);
                v43 = v42[1];
                v44 = v32 + 24 * v33;
                *v44 = *v42;
                *v40 = v43;
                *(v44 + 16) = 0;
                v33 = v39;
              }
            }

            else
            {
              *(v32 + 24 * v34 + 8) = *(v32 + 24 * v33 + 8);
            }

            v45 = v32 + 24 * v33;
            *(v45 + 8) = *(a1 + 396);
            *(v45 + 12) = 0xFFFFFFFFLL;
            if ((v35 & 0x80000000) == 0)
            {
              v46 = *v21 + 1;
              *v21 = v46;
              *(v52 + 4 * v46) = v35;
              *(v51 + 17368 * v35 + 17364) = 1;
            }
          }
        }

        else
        {
          v28 = v13 + 12 * *v10;
          v29 = *v7;
          *(v28 + 8) = *(v7 + 8);
          *v28 = v29;
          ++*v10;
        }

        v7 += 3;
        --v4;
      }

      while (v4);
    }
  }

  else
  {
    if (qword_27EE3F6A0 != -1)
    {
      dispatch_once(&qword_27EE3F6A0, &unk_2858EC798);
    }

    v48 = qword_27EE3F698;
    if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelHashingDataGPU::eraseHashEntriesWithEmptyVoxelBlocks()");
      v50 = v55 >= 0 ? __p : __p[0];
      *buf = 136315394;
      v57 = v50;
      v58 = 1026;
      v59 = 446;
      _os_log_error_impl(&dword_2460CF000, v48, OS_LOG_TYPE_ERROR, "%s:%{public}d VoxelHashingDataGPU not initialized.", buf, 0x12u);
      if (v55 < 0)
      {
        operator delete(__p[0]);
      }
    }
  }

  return v53;
}

double sub_246137AB4@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  return result;
}

void *sub_246137AD0@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  if (result[5])
  {
    v3 = result;
    result = (*(*result[4] + 40))(v8, result[4]);
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 72) = 0;
    v4 = v8[0];
    v5 = v8[1];
    v6 = v3[7];
    *(a2 + 80) = v3[6];
    *(a2 + 96) = v6;
    v7 = v3[9];
    *(a2 + 112) = v3[8];
    *(a2 + 128) = v7;
  }

  else
  {
    v4 = 0;
    v5 = 0;
    *(a2 + 56) = 0;
    *(a2 + 40) = 0u;
    *(a2 + 24) = 0u;
    *(a2 + 72) = 0u;
    *(a2 + 88) = 0u;
    *(a2 + 104) = 0u;
    *(a2 + 120) = 0u;
    *(a2 + 136) = 0;
  }

  *(a2 + 16) = 0;
  *(a2 + 64) = 0;
  *a2 = v4;
  *(a2 + 8) = v5;
  return result;
}

double sub_246137BA8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40))
  {
    (*(**(a1 + 32) + 40))();
  }

  else
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    result = 0.0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 80) = 0u;
  }

  return result;
}

void sub_246137BF4(float32x4_t *a1@<X0>, float32x4_t *a2@<X8>, __n128 a3@<Q0>)
{
  if (a1[2].i8[8])
  {
    v3 = a1->i64[1];
    if (*v3 == 1)
    {
      v34 = *(v3 + 64);
    }

    else
    {
      v34 = 0;
    }

    v4 = *(v3 + 4);
    a1[5].i64[0] = a1[4].i64[1];
    v35 = v4;
    if (v4 << 9)
    {
      operator new();
    }

    v29 = 0;
    if (v4)
    {
      v5 = 0;
      v6 = (v34 + 4);
      v7 = xmmword_24613FCB0;
      v8 = 0;
      do
      {
        v9 = 0;
        v36 = v6;
        v37 = v5;
        a3.n128_u64[0] = *(v34 + 4104 * v5 + 4096);
        v10 = vshll_n_s16(a3.n128_u64[0], 3uLL);
        v42 = v10;
        do
        {
          v11 = 0;
          v38 = v6;
          v39 = v9;
          a3.n128_u32[0] = v9;
          v40 = a3;
          do
          {
            v12 = 0;
            a3 = v40;
            v13 = v40;
            v13.n128_u32[1] = v11;
            v13.n128_u32[2] = v40.n128_u32[2];
            v41 = v6;
            v44 = v13;
            do
            {
              if (*v6)
              {
                v14 = *(v6 - 1);
                v15 = fabsf(v14);
                v16 = 1.0 - (v15 / 12.0);
                if (v16 <= 1.0)
                {
                  v17 = 1.0 - (v15 / 12.0);
                }

                else
                {
                  v17 = 1.0;
                }

                if (v16 >= 0.2)
                {
                  *&v18 = v17;
                }

                else
                {
                  *&v18 = 0.2;
                }

                v19 = v15 <= 12.0;
                v20 = v7;
                if (v19)
                {
                  if (v14 >= 0.0)
                  {
                    *&v20 = 0;
                    *(&v20 + 1) = v18 | 0x3F33333300000000;
                  }

                  else
                  {
                    DWORD1(v18) = 0;
                    *(&v18 + 1) = 0x3F33333300000000;
                    v20 = v18;
                  }
                }

                v21 = v13;
                v21.i32[2] = v12;
                v22 = vaddq_s32(v21, v10);
                v22.i32[3] = 1;
                v23 = v8 - v29;
                v24 = 0xAAAAAAAAAAAAAAABLL * ((v8 - v29) >> 4);
                v25 = v24 + 1;
                if (v24 + 1 > 0x555555555555555)
                {
                  sub_2460D368C();
                }

                if (0x5555555555555556 * (-v29 >> 4) > v25)
                {
                  v25 = 0x5555555555555556 * (-v29 >> 4);
                }

                if (0xAAAAAAAAAAAAAAABLL * (-v29 >> 4) >= 0x2AAAAAAAAAAAAAALL)
                {
                  v26 = 0x555555555555555;
                }

                else
                {
                  v26 = v25;
                }

                if (v26)
                {
                  if (v26 <= 0x555555555555555)
                  {
                    operator new();
                  }

                  sub_2460D368C();
                }

                v27 = 48 * v24;
                *v27 = v22;
                *(v27 + 16) = 0;
                *(v27 + 24) = 0;
                *(v27 + 32) = v20;
                v8 = 48 * v24 + 48;
                v28 = v27 - v23;
                memcpy((v27 - v23), v29, v23);
                if (v29)
                {
                  operator delete(v29);
                }

                v29 = v28;
                v7 = xmmword_24613FCB0;
                v10 = v42;
                v13 = v44;
              }

              ++v12;
              v6 += 2;
            }

            while (v12 != 8);
            ++v11;
            v6 = v41 + 16;
          }

          while (v11 != 8);
          v9 = v39 + 1;
          v6 = v38 + 128;
        }

        while (v39 != 7);
        v5 = v37 + 1;
        v6 = v36 + 1026;
      }

      while (v37 + 1 != v35);
    }

    else
    {
      v8 = 0;
    }

    v30 = a1[4].i64[1];
    if (v30)
    {
      a1[5].i64[0] = v30;
      operator delete(v30);
    }

    a1[4].i64[1] = v29;
    a1[5].i64[0] = v8;
    a1[5].i64[1] = 0;
    v43 = a1[6];
    v45 = a1[7];
    v46 = a1[8];
    v47 = a1[9];
    v48.columns[2].i64[0] = 0;
    v48.columns[0] = a1[2].u32[3];
    v48.columns[1].i32[0] = 0;
    v48.columns[1].i32[3] = 0;
    *(v48.columns[1].i64 + 4) = v48.columns[0].u32[0];
    v48.columns[2].i64[1] = v48.columns[0].u32[0];
    v48.columns[3] = xmmword_24613FA50;
    v49 = __invert_f4(v48);
    a2->i32[0] = a1[2].i32[3];
    v31 = a1[4].i64[1];
    a2->i32[1] = -1431655765 * ((a1[5].i64[0] - v31) >> 4);
    a2->i64[1] = v31;
    a2[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49.columns[0], v43.f32[0]), v49.columns[1], *v43.f32, 1), v49.columns[2], v43, 2), v49.columns[3], v43, 3);
    a2[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49.columns[0], v45.f32[0]), v49.columns[1], *v45.f32, 1), v49.columns[2], v45, 2), v49.columns[3], v45, 3);
    a2[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49.columns[0], v46.f32[0]), v49.columns[1], *v46.f32, 1), v49.columns[2], v46, 2), v49.columns[3], v46, 3);
    a2[4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v49.columns[0], v47.f32[0]), v49.columns[1], *v47.f32, 1), v49.columns[2], v47, 2), v49.columns[3], v47, 3);
  }

  else
  {
    a2[3] = 0u;
    a2[4] = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    *a2 = 0u;
  }
}

double sub_24613803C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (*(a1 + 40))
  {
    (*(**(a1 + 32) + 40))(v9);
    if (LODWORD(v9[0]))
    {
      v4 = v9[1] == 0;
    }

    else
    {
      v4 = 1;
    }

    if (!v4)
    {
      operator new();
    }

    v5 = *(a1 + 48);
    if (v5)
    {
      *(a1 + 56) = v5;
      operator delete(v5);
    }

    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    *a2 = v10;
    *(a2 + 4) = v9[0];
    *(a2 + 8) = 0;
    v7 = v12;
    *(a2 + 16) = v11;
    *(a2 + 32) = v7;
    result = *&v13;
    v8 = v14;
    *(a2 + 48) = v13;
    *(a2 + 64) = v8;
  }

  else
  {
    result = 0.0;
    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
    *a2 = 0u;
  }

  return result;
}

uint64_t sub_2461381D0(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 1;
  }

  if (*(a1 + 41))
  {
    return 0;
  }

  (*(**(a1 + 32) + 24))(*(a1 + 32));
  result = 0;
  *(a1 + 41) = 1;
  return result;
}

uint64_t sub_246138250(uint64_t a1)
{
  if (*(a1 + 40) != 1)
  {
    return 1;
  }

  if (!(*(**(a1 + 24) + 32))(*(a1 + 24)))
  {
    return 1;
  }

  result = 0;
  *(a1 + 41) = 0;
  return result;
}

uint64_t sub_2461382CC(uint64_t a1, uint64_t a2)
{
  if (!sub_24612FC04(a2))
  {
    return 4;
  }

  if ((*(a1 + 40) & 1) == 0)
  {
    operator new();
  }

  return 1;
}

void sub_246138998(_Unwind_Exception *a1)
{
  sub_246132DEC(v4);
  sub_246132E64(v3);
  sub_2460D502C(v2);
  _Unwind_Resume(a1);
}

uint64_t sub_2461389E8(uint64_t result)
{
  v1 = result;
  v2 = *(result + 72);
  if (v2)
  {
    result = MEMORY[0x24C199CC0](*MEMORY[0x277D85F48], v2, *(result + 64));
  }

  if (*(v1 + 88))
  {

    JUMPOUT(0x24C199CC0);
  }

  return result;
}

void sub_246138A50(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_2858EC8A8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x24C1995D0);
}

void sub_246138AC4(void *a1)
{
  sub_246138AFC(a1);

  JUMPOUT(0x24C1995D0);
}

void *sub_246138AFC(void *a1)
{
  v2 = a1[9];
  if (v2)
  {
    a1[10] = v2;
    operator delete(v2);
  }

  v3 = a1[6];
  if (v3)
  {
    a1[7] = v3;
    operator delete(v3);
  }

  v4 = a1[4];
  a1[4] = 0;
  if (v4)
  {
    (*(*v4 + 8))(v4);
  }

  v5 = a1[3];
  a1[3] = 0;
  if (v5)
  {
    (*(*v5 + 8))(v5);
  }

  v6 = a1[2];
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_246138BEC(uint64_t a1, _OWORD *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = v7 >> 4;
    v9 = (v7 >> 4) + 1;
    if (v9 >> 60)
    {
      sub_2460D368C();
    }

    v10 = v3 - v6;
    if (v10 >> 3 > v9)
    {
      v9 = v10 >> 3;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFF0)
    {
      v11 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      if (!(v11 >> 60))
      {
        operator new();
      }

      sub_2460D368C();
    }

    *(16 * v8) = *a2;
    v5 = 16 * v8 + 16;
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

void sub_246138CF0(uint64_t a1, uint64_t a2, _DWORD *a3, _DWORD *a4, _DWORD *a5, _DWORD *a6)
{
  *a4 = 0x80000000;
  *a6 = 0x80000000;
  *a3 = 0x7FFFFFFF;
  *a5 = 0x7FFFFFFF;
  __asm { FMOV            V0.4S, #1.0 }

  operator new();
}

void sub_2461393F4(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v23 = *MEMORY[0x277D85DE8];
  sub_2461374DC(*(a1 + 128));
  v4 = sub_24613726C(*(a1 + 128));
  v9 = *objc_msgSend_contents(*v4, v5, v6);
  if (v9)
  {
    *a2 = v9;
    *(a2 + 8) = objc_msgSend_contents(v4[1], v7, v8);
    *(a2 + 16) = *(a1 + 60);
    v10 = *(a1 + 80);
    *(a2 + 32) = *(a1 + 64);
    *(a2 + 48) = v10;
    v11 = *(a1 + 96);
    v12 = *(a1 + 112);
  }

  else
  {
    if (qword_27EE3F700 != -1)
    {
      dispatch_once(&qword_27EE3F700, &unk_2858EC910);
    }

    v13 = qword_27EE3F6F8;
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
    {
      sub_24610D894(__p, "virtual common::PointCloudModelFrame oc::voxel_hashing::VoxelSurfaceSamplerGPU::surfacePointCloud()");
      if (v18 >= 0)
      {
        v16 = __p;
      }

      else
      {
        v16 = __p[0];
      }

      *buf = 136315394;
      v20 = v16;
      v21 = 1026;
      v22 = 262;
      _os_log_debug_impl(&dword_2460CF000, v13, OS_LOG_TYPE_DEBUG, "%s:%{public}d No mesh vertices found.", buf, 0x12u);
      if (v18 < 0)
      {
        operator delete(__p[0]);
      }
    }

    *a2 = 0;
    *(a2 + 8) = 0;
    v14 = MEMORY[0x277D860B8];
    *(a2 + 16) = *(a1 + 60);
    v15 = v14[1];
    *(a2 + 32) = *v14;
    *(a2 + 48) = v15;
    v11 = v14[2];
    v12 = v14[3];
  }

  *(a2 + 64) = v11;
  *(a2 + 80) = v12;
}

uint64_t sub_246139590()
{
  qword_27EE3F6F8 = os_log_create("com.apple.CoreOCModules", "VoxelHashing");

  return MEMORY[0x2821F96F8]();
}

void sub_2461395D8(uint64_t a1)
{
  v143 = *MEMORY[0x277D85DE8];
  v1 = atomic_load((a1 + 228));
  if ((v1 & 1) != 0 || (v3 = atomic_load((a1 + 232)), v3 >= 1))
  {
    if (qword_27EE3F700 != -1)
    {
      dispatch_once(&qword_27EE3F700, &unk_2858EC910);
    }

    v4 = qword_27EE3F6F8;
    if (!os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      goto LABEL_6;
    }

    sub_24610D894(&__p, "virtual void oc::voxel_hashing::VoxelSurfaceSamplerGPU::sampleSurfacePoints()");
    if (v139.i8[15] >= 0)
    {
      p_p = &__p;
    }

    else
    {
      p_p = __p;
    }

    *buf = 136315394;
    *&buf[4] = p_p;
    *&buf[12] = 1026;
    *&buf[14] = 187;
    v132 = "%s:%{public}d Skipping sampling task because sampling has been stopped.";
LABEL_24:
    _os_log_debug_impl(&dword_2460CF000, v4, OS_LOG_TYPE_DEBUG, v132, buf, 0x12u);
    if (v139.i8[15] < 0)
    {
      operator delete(__p);
    }

    goto LABEL_6;
  }

  v5 = sub_246136C34(*(a1 + 128));
  v6 = v5;
  v9 = *objc_msgSend_contents(v6, v7, v8);

  if (v9)
  {
    kdebug_trace();
    v11 = objc_msgSend_commandBufferWithDescriptor_(*(*(a1 + 144) + 8), v10, *(a1 + 192));
    v4 = v11;
    if (v11)
    {
      v12 = v11;
      v13 = sub_246136C34(*(a1 + 128));
      v14 = v13;
      v17 = *objc_msgSend_contents(v14, v15, v16);
      v20 = objc_msgSend_computeCommandEncoder(v12, v18, v19);
      objc_msgSend_setLabel_(v20, v21, @"ResetMeshDataInUpdatedVoxelBlocks Encoder");
      objc_msgSend_setComputePipelineState_(v20, v22, *(a1 + 160));
      objc_msgSend_setBytes_length_atIndex_(v20, v23, a1 + 12, 48, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v20, v24, v13, 0, 1);
      v25 = sub_246136AEC(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v20, v26, v25, 0, 2);

      v27 = sub_246136204(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v20, v28, v27, 0, 3);

      v29 = sub_246136344(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v20, v30, v29, 0, 4);

      v31 = sub_246136D7C(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v20, v32, v31, 0, 5);

      v35 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 160), v33, v34);
      __p = v17;
      v139 = vdupq_n_s64(1uLL);
      *buf = v35;
      *&buf[8] = v139;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v20, v36, &__p, buf);
      objc_msgSend_endEncoding(v20, v37, v38);

      v39 = v12;
      v40 = sub_246136FFC(*(a1 + 128));
      v140 = v40;
      v141 = BYTE4(v40);
      v41 = sub_246136C34(*(a1 + 128));
      v42 = v41;
      v45 = *objc_msgSend_contents(v41, v43, v44);
      v48 = objc_msgSend_computeCommandEncoder(v39, v46, v47);
      objc_msgSend_setLabel_(v48, v49, @"GetVoxelBlocksSurroundingUpdatedVoxelBlocks Encoder");
      objc_msgSend_setComputePipelineState_(v48, v50, *(a1 + 168));
      objc_msgSend_setBytes_length_atIndex_(v48, v51, a1 + 12, 48, 0);
      objc_msgSend_setBytes_length_atIndex_(v48, v52, **(a1 + 152), *(*(a1 + 152) + 8) - **(a1 + 152), 1);
      objc_msgSend_setBytes_length_atIndex_(v48, v53, &v140, 4, 2);
      v54 = sub_246136204(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v48, v55, v54, 0, 3);

      v56 = sub_246136344(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v48, v57, v56, 0, 4);

      objc_msgSend_setBuffer_offset_atIndex_(v48, v58, v41, 0, 5);
      v59 = sub_246136AEC(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v48, v60, v59, 0, 6);

      objc_msgSend_setBuffer_offset_atIndex_(v48, v61, *(a1 + 200), 0, 7);
      v64 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 168), v62, v63);
      __p = v45;
      v139 = vdupq_n_s64(1uLL);
      *buf = v64;
      *&buf[8] = v139;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v48, v65, &__p, buf);
      objc_msgSend_endEncoding(v48, v66, v67);

      v68 = v39;
      v69 = sub_246136C34(*(a1 + 128));
      v70 = v69;
      LODWORD(v45) = *objc_msgSend_contents(v69, v71, v72);
      v75 = objc_msgSend_computeCommandEncoder(v68, v73, v74);
      objc_msgSend_setLabel_(v75, v76, @"ComputeMeshVerticesInUpdatedVoxelBlocks Encoder");
      objc_msgSend_setComputePipelineState_(v75, v77, *(a1 + 176));
      objc_msgSend_setBytes_length_atIndex_(v75, v78, a1 + 12, 48, 0);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v79, v69, 0, 1);
      v80 = sub_246136AEC(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v75, v81, v80, 0, 2);

      v82 = sub_246136204(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v75, v83, v82, 0, 3);

      objc_msgSend_setBuffer_offset_atIndex_(v75, v84, *(a1 + 200), 0, 4);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v85, *(a1 + 216), 0, 5);
      objc_msgSend_setBuffer_offset_atIndex_(v75, v86, *(a1 + 208), 0, 6);
      v87 = sub_246136344(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v75, v88, v87, 0, 7);

      v89 = sub_246136D7C(*(a1 + 128));
      objc_msgSend_setBuffer_offset_atIndex_(v75, v90, v89, 0, 8);

      __p = (729 * v45);
      v139 = vdupq_n_s64(1uLL);
      *buf = xmmword_2461441C8;
      *&buf[16] = 1;
      objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v75, v91, &__p, buf);
      objc_msgSend_endEncoding(v75, v92, v93);

      if (*(a1 + 292) == 1)
      {
        v95 = v68;
        v96 = sub_246136C34(*(a1 + 128));
        v97 = v96;
        v100 = *objc_msgSend_contents(v96, v98, v99);
        v101 = sub_246136FFC(*(a1 + 128));
        v140 = v101;
        v141 = BYTE4(v101);
        v104 = objc_msgSend_computeCommandEncoder(v95, v102, v103);
        objc_msgSend_setLabel_(v104, v105, @"GenerateMeshFacesInUpdatedVoxelBlocks Encoder");
        objc_msgSend_setComputePipelineState_(v104, v106, *(a1 + 184));
        objc_msgSend_setBytes_length_atIndex_(v104, v107, a1 + 12, 48, 0);
        objc_msgSend_setBytes_length_atIndex_(v104, v108, **(a1 + 152), *(*(a1 + 152) + 8) - **(a1 + 152), 1);
        objc_msgSend_setBytes_length_atIndex_(v104, v109, &v140, 4, 2);
        objc_msgSend_setBuffer_offset_atIndex_(v104, v110, v96, 0, 3);
        v111 = sub_246136AEC(*(a1 + 128));
        objc_msgSend_setBuffer_offset_atIndex_(v104, v112, v111, 0, 4);

        v113 = sub_246136204(*(a1 + 128));
        objc_msgSend_setBuffer_offset_atIndex_(v104, v114, v113, 0, 5);

        v115 = sub_246136344(*(a1 + 128));
        objc_msgSend_setBuffer_offset_atIndex_(v104, v116, v115, 0, 6);

        v117 = sub_246136D7C(*(a1 + 128));
        objc_msgSend_setBuffer_offset_atIndex_(v104, v118, v117, 0, 7);

        v121 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 184), v119, v120);
        __p = (v100 << 9);
        v139 = vdupq_n_s64(1uLL);
        *buf = v121;
        *&buf[8] = v139;
        objc_msgSend_dispatchThreads_threadsPerThreadgroup_(v104, v122, &__p, buf);
        objc_msgSend_endEncoding(v104, v123, v124);
      }

      v137[0] = MEMORY[0x277D85DD0];
      v137[1] = 3221225472;
      v137[2] = sub_24613A190;
      v137[3] = &unk_278E9B550;
      v137[4] = a1;
      objc_msgSend_addScheduledHandler_(v68, v94, v137);
      v136[0] = MEMORY[0x277D85DD0];
      v136[1] = 3221225472;
      v136[2] = sub_24613A1A4;
      v136[3] = &unk_278E9B550;
      v136[4] = a1;
      objc_msgSend_addCompletedHandler_(v68, v125, v136);
      v128 = atomic_load((a1 + 228));
      if ((v128 & 1) == 0)
      {
        objc_msgSend_commit(v68, v126, v127);
        objc_msgSend_waitUntilCompleted(v68, v129, v130);
      }
    }

    else
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v134 = qword_27EE3F6F8;
      if (os_log_type_enabled(v134, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(&__p, "virtual void oc::voxel_hashing::VoxelSurfaceSamplerGPU::sampleSurfacePoints()");
        v135 = v139.i8[15] >= 0 ? &__p : __p;
        *buf = 136315394;
        *&buf[4] = v135;
        *&buf[12] = 1026;
        *&buf[14] = 207;
        _os_log_error_impl(&dword_2460CF000, v134, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to sample surface points - failed to create command buffer.", buf, 0x12u);
        if (v139.i8[15] < 0)
        {
          operator delete(__p);
        }
      }
    }

    kdebug_trace();
  }

  else
  {
    if (qword_27EE3F700 != -1)
    {
      dispatch_once(&qword_27EE3F700, &unk_2858EC910);
    }

    v4 = qword_27EE3F6F8;
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      sub_24610D894(&__p, "virtual void oc::voxel_hashing::VoxelSurfaceSamplerGPU::sampleSurfacePoints()");
      if (v139.i8[15] >= 0)
      {
        v131 = &__p;
      }

      else
      {
        v131 = __p;
      }

      *buf = 136315394;
      *&buf[4] = v131;
      *&buf[12] = 1026;
      *&buf[14] = 196;
      v132 = "%s:%{public}d Skipping sampling task because no updated hash entries.";
      goto LABEL_24;
    }
  }

LABEL_6:
}

void sub_24613A1A4(uint64_t a1, void *a2, uint64_t a3)
{
  v80 = *MEMORY[0x277D85DE8];
  v3 = *(a1 + 32);
  v4 = objc_msgSend_error(a2, a2, a3);
  v7 = v4;
  if (v4)
  {
    sub_24611A2D0(v4, v5, v6);
  }

  else
  {
    v8 = sub_246136484(*(v3 + 128));
    v9 = v8;
    v12 = *objc_msgSend_contents(v9, v10, v11);

    if (v12)
    {
      kdebug_trace();
      v13 = sub_2461373A4(*(v3 + 128));
      v69 = objc_msgSend_contents(*v13, v14, v15);
      v66 = objc_msgSend_contents(v13[2], v16, v17);
      v67 = objc_msgSend_contents(v13[1], v18, v19);
      v20 = 0;
      v21 = 6144;
      *(v3 + 264) = *(v3 + 256);
      *buf = 0;
      v22 = 17364;
      v68 = v12;
      do
      {
        v26 = *(v3 + 240);
        if (*(v26 + v22) == 1)
        {
          sub_246118E18(v3 + 256, buf);
          v25 = 0;
        }

        else
        {
          v23 = *(v26 + v21);
          sub_246118E18(v3 + 256, buf);
          if (v23 >= 0x190)
          {
            v25 = 400;
          }

          else
          {
            v25 = v23;
          }
        }

        v20 += v25;
        *buf = v20;
        v21 += 17368;
        v22 += 17368;
        --v12;
      }

      while (v12);
      if (v20)
      {
        v27 = v68;
        LODWORD(v24) = vcvtps_u32_f32(v68 / 10.0);
        block[0] = MEMORY[0x277D85DD0];
        block[1] = 3221225472;
        v71 = sub_24613A8E8;
        v72 = &unk_278E9B570;
        v75 = v68;
        v73 = v3;
        v74 = v67;
        dispatch_apply(v24, 0, block);
        *v69 = v20;
        if (*(v3 + 292))
        {
          v30 = objc_msgSend_contents(v13[3], v28, v29);
          v31 = 0;
          v32 = 0;
          v33 = 16;
          while (1)
          {
            if ((*(*(v3 + 240) + 17368 * v31 + 17364) & 1) == 0)
            {
              v34 = *(v3 + 248);
              LODWORD(v35) = *(v34 + 30852 * v31);
              if (v35)
              {
                break;
              }
            }

LABEL_14:
            ++v31;
            v33 += 30852;
            if (v31 == v27)
            {
              goto LABEL_65;
            }
          }

          if (v35 >= 0x4B0)
          {
            v35 = 1200;
          }

          else
          {
            v35 = v35;
          }

          v36 = (v34 + v33);
          while (v32 < 3 * *(v3 + 44))
          {
            if ((*(v36 - 5) & 0x80000000) == 0)
            {
              v37 = *(v36 - 3);
              if ((v37 & 0x80000000) == 0 && v37 < *(v3 + 28))
              {
                v38 = (*(v3 + 240) + 17368 * v37 + 6144);
                if (atomic_load(v38))
                {
                  if (*(*(v3 + 248) + 30852 * *(v36 - 3) + (*(v36 - 8) << 8) + 32 * *(v36 - 7) + 4 * *(v36 - 6) + 28804))
                  {
                    v40 = *(*(v3 + 248) + 30852 * *(v36 - 3) + (*(v36 - 8) << 8) + 32 * *(v36 - 7) + 4 * *(v36 - 6) + 28806);
                    if ((v40 & 0x80000000) == 0)
                    {
                      if (*(*(v3 + 248) + 30852 * *(v36 - 3) + (*(v36 - 8) << 8) + 32 * *(v36 - 7) + 4 * *(v36 - 6) + 28805))
                      {
                        v41 = *(v36 - 5) + v40;
                        v42 = atomic_load(v38);
                        if (v41 < v42 && (v36[3] & 0x80000000) == 0)
                        {
                          v43 = *(v36 - 1);
                          if ((v43 & 0x80000000) == 0 && v43 < *(v3 + 28))
                          {
                            v44 = (*(v3 + 240) + 17368 * v43 + 6144);
                            if (atomic_load(v44))
                            {
                              if (*(*(v3 + 248) + 30852 * *(v36 - 1) + (*v36 << 8) + 32 * v36[1] + 4 * v36[2] + 28804))
                              {
                                v46 = *(*(v3 + 248) + 30852 * *(v36 - 1) + (*v36 << 8) + 32 * v36[1] + 4 * v36[2] + 28806);
                                if ((v46 & 0x80000000) == 0)
                                {
                                  if (*(*(v3 + 248) + 30852 * *(v36 - 1) + (*v36 << 8) + 32 * v36[1] + 4 * v36[2] + 28805))
                                  {
                                    v47 = v36[3] + v46;
                                    v48 = atomic_load(v44);
                                    if (v47 < v48 && (v36[11] & 0x80000000) == 0)
                                    {
                                      v49 = *(v36 + 1);
                                      if ((v49 & 0x80000000) == 0 && v49 < *(v3 + 28))
                                      {
                                        v50 = *(*(v3 + 256) + 4 * *(v36 - 1));
                                        v51 = (*(v3 + 240) + 17368 * v49 + 6144);
                                        if (atomic_load(v51))
                                        {
                                          if (*(*(v3 + 248) + 30852 * *(v36 + 1) + (v36[8] << 8) + 32 * v36[9] + 4 * v36[10] + 28804))
                                          {
                                            v53 = *(*(v3 + 248) + 30852 * *(v36 + 1) + (v36[8] << 8) + 32 * v36[9] + 4 * v36[10] + 28806);
                                            if ((v53 & 0x80000000) == 0)
                                            {
                                              if (*(*(v3 + 248) + 30852 * *(v36 + 1) + (v36[8] << 8) + 32 * v36[9] + 4 * v36[10] + 28805))
                                              {
                                                v54 = v36[11] + v53;
                                                v55 = atomic_load(v51);
                                                if (v54 < v55)
                                                {
                                                  v56 = *(*(v3 + 256) + 4 * *(v36 - 3)) + v41;
                                                  v57 = v50 + v47;
                                                  if (v56 != v50 + v47)
                                                  {
                                                    v58 = *(*(v3 + 256) + 4 * *(v36 + 1)) + v54;
                                                    if (v56 != v58 && v57 != v58)
                                                    {
                                                      *(v30 + 4 * v32) = v56;
                                                      v59 = v32 + 2;
                                                      *(v30 + 4 * (v32 + 1)) = v57;
                                                      v32 += 3;
                                                      *(v30 + 4 * v59) = v58;
                                                    }
                                                  }
                                                }
                                              }

                                              v27 = v68;
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
                        }
                      }
                    }
                  }
                }
              }
            }

            v36 += 24;
            if (!--v35)
            {
              goto LABEL_14;
            }
          }

          if (qword_27EE3F700 != -1)
          {
            dispatch_once(&qword_27EE3F700, &unk_2858EC910);
          }

          v62 = qword_27EE3F6F8;
          if (os_log_type_enabled(v62, OS_LOG_TYPE_DEBUG))
          {
            sub_24610D894(block, "uint32_t oc::voxel_hashing::VoxelSurfaceSamplerGPU::copyTrianglesFromVoxelBlocksToOutputBuffer(const uint32_t, uint32_t *)");
            v64 = SHIBYTE(v71) >= 0 ? block : block[0];
            *buf = 136315394;
            v77 = v64;
            v78 = 1026;
            v79 = 744;
            _os_log_debug_impl(&dword_2460CF000, v62, OS_LOG_TYPE_DEBUG, "%s:%{public}d Stopping copy task because triangle faces buffer is full.", buf, 0x12u);
            if (SHIBYTE(v71) < 0)
            {
              operator delete(block[0]);
            }
          }

LABEL_65:
          *v66 = v32;
        }
      }

      else
      {
        *v69 = 0;
        if (*(v3 + 292))
        {
          *v66 = 0;
          if (qword_27EE3F700 != -1)
          {
            dispatch_once(&qword_27EE3F700, &unk_2858EC910);
          }

          v61 = qword_27EE3F6F8;
          if (os_log_type_enabled(v61, OS_LOG_TYPE_DEBUG))
          {
            sub_24610D894(block, "void oc::voxel_hashing::VoxelSurfaceSamplerGPU::copyMeshToOutputBuffers()");
            v65 = SHIBYTE(v71) >= 0 ? block : block[0];
            *buf = 136315394;
            v77 = v65;
            v78 = 1026;
            v79 = 603;
            _os_log_debug_impl(&dword_2460CF000, v61, OS_LOG_TYPE_DEBUG, "%s:%{public}d Skip copying triangle faces because no mesh vertices found.", buf, 0x12u);
            if (SHIBYTE(v71) < 0)
            {
              operator delete(block[0]);
            }
          }
        }
      }

      kdebug_trace();
    }

    else
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v60 = qword_27EE3F6F8;
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        sub_24610D894(block, "void oc::voxel_hashing::VoxelSurfaceSamplerGPU::copyMeshToOutputBuffers()");
        v63 = SHIBYTE(v71) >= 0 ? block : block[0];
        *buf = 136315394;
        v77 = v63;
        v78 = 1026;
        v79 = 575;
        _os_log_debug_impl(&dword_2460CF000, v60, OS_LOG_TYPE_DEBUG, "%s:%{public}d Skipping copy task because no voxel blocks have been allocated.", buf, 0x12u);
        if (SHIBYTE(v71) < 0)
        {
          operator delete(block[0]);
        }
      }
    }
  }

  atomic_fetch_add((v3 + 232), 0xFFFFFFFF);
}

void sub_24613A8E8(uint64_t a1, int a2)
{
  v3 = (10 * a2);
  v35 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 32);
  LODWORD(v5) = v3 + 10;
  v6 = *(a1 + 48);
  if (v6 >= v3 + 10)
  {
    v5 = v5;
  }

  else
  {
    v5 = v6;
  }

  v28 = v5;
  for (i = 17368 * v3 + 6175; ; i += 17368)
  {
    v8 = *(*(v4 + 256) + 4 * v3);
    if (v8 >= *(v4 + 40))
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v25 = qword_27EE3F6F8;
      if (!os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
      {
        goto LABEL_27;
      }

      sub_24610D894(__p, "uint32_t oc::voxel_hashing::VoxelSurfaceSamplerGPU::copyVerticesFromVoxelBlocksToOutputBuffer(const uint32_t, common::Point *)_block_invoke");
      if (v30 >= 0)
      {
        v26 = __p;
      }

      else
      {
        v26 = __p[0];
      }

      *buf = 136315394;
      v32 = v26;
      v33 = 1026;
      v34 = 636;
LABEL_40:
      _os_log_debug_impl(&dword_2460CF000, v25, OS_LOG_TYPE_DEBUG, "%s:%{public}d Stopping copy task because vertex buffer is full.", buf, 0x12u);
      if (v30 < 0)
      {
        operator delete(__p[0]);
      }

      goto LABEL_27;
    }

    v9 = *(v4 + 240);
    v10 = v9 + 17368 * v3;
    if ((*(v10 + 17364) & 1) == 0)
    {
      break;
    }

LABEL_6:
    if (++v3 >= v28)
    {
      return;
    }
  }

  v11 = *(v10 + 6144);
  if (v11 < 0x191)
  {
    if (*(v10 + 6144))
    {
      goto LABEL_15;
    }

    goto LABEL_6;
  }

  if (qword_27EE3F700 != -1)
  {
    dispatch_once(&qword_27EE3F700, &unk_2858EC910);
  }

  v12 = qword_27EE3F6F8;
  if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
  {
    sub_24610D894(__p, "uint32_t oc::voxel_hashing::VoxelSurfaceSamplerGPU::copyVerticesFromVoxelBlocksToOutputBuffer(const uint32_t, common::Point *)_block_invoke");
    v24 = __p;
    if (v30 < 0)
    {
      v24 = __p[0];
    }

    *buf = 136315394;
    v32 = v24;
    v33 = 1026;
    v34 = 654;
    _os_log_debug_impl(&dword_2460CF000, v12, OS_LOG_TYPE_DEBUG, "%s:%{public}d Number of vertices in voxel block is greater than the capacity, adjusted number of vertices to the capacity.", buf, 0x12u);
    if (v30 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v11 = 400;
LABEL_15:
  v13 = 0;
  v14 = (v9 + i);
  v15 = (v9 + i);
  while (1)
  {
    v16 = *v15;
    v15 += 28;
    if ((v16 & 1) == 0)
    {
      *(v10 + 6144) = v13;
      goto LABEL_6;
    }

    v17 = (*(a1 + 40) + 48 * (v8 + v13));
    v18 = *v17;
    v19 = v17[1];
    LODWORD(v18) = *(v14 - 27);
    *v17 = v18;
    DWORD1(v18) = *(v14 - 23);
    *v17 = v18;
    DWORD2(v18) = *(v14 - 19);
    HIDWORD(v18) = 1.0;
    *v17 = v18;
    v20 = *(v14 - 15);
    LODWORD(v19) = v20;
    *(v17 + 4) = v20;
    DWORD1(v19) = *(v14 - 11);
    v17[1] = v19;
    *(&v19 + 1) = *(v14 - 7);
    v17[1] = v19;
    LOBYTE(v20) = *(v14 - 3);
    v21 = v20 / 255.0;
    v22 = v17[2];
    *&v22 = v21;
    *(v17 + 8) = v21;
    LOBYTE(v21) = *(v14 - 2);
    *&v23 = LODWORD(v21) / 255.0;
    DWORD1(v22) = v23;
    v17[2] = v22;
    LOBYTE(v23) = *(v14 - 1);
    *(&v22 + 1) = __PAIR64__(1.0, v23 / 255.0);
    v17[2] = v22;
    if (v8 + v13 + 1 >= *(v4 + 40))
    {
      break;
    }

    ++v13;
    v14 = v15;
    if (v11 == v13)
    {
      goto LABEL_6;
    }
  }

  if (qword_27EE3F700 != -1)
  {
    dispatch_once(&qword_27EE3F700, &unk_2858EC910);
  }

  v25 = qword_27EE3F6F8;
  if (os_log_type_enabled(v25, OS_LOG_TYPE_DEBUG))
  {
    sub_24610D894(__p, "uint32_t oc::voxel_hashing::VoxelSurfaceSamplerGPU::copyVerticesFromVoxelBlocksToOutputBuffer(const uint32_t, common::Point *)_block_invoke");
    if (v30 >= 0)
    {
      v27 = __p;
    }

    else
    {
      v27 = __p[0];
    }

    *buf = 136315394;
    v32 = v27;
    v33 = 1026;
    v34 = 677;
    goto LABEL_40;
  }

LABEL_27:
}

uint64_t sub_24613AD08(uint64_t a1, uint64_t a2)
{
  v70 = *MEMORY[0x277D85DE8];
  v2 = *(a2 + 4);
  if (*a2)
  {
    v3 = v2 < 0.0001;
  }

  else
  {
    v3 = 1;
  }

  v4 = v3 || *(a2 + 8) == 0;
  if (!v4 && (v5 = *(a2 + 16), v6 = *(a2 + 32), v7 = *(a2 + 48), v8 = *(MEMORY[0x277D860B0] + 16), v9 = *(MEMORY[0x277D860B0] + 32), v10 = vdupq_n_s32(0x38D1B717u), v11 = vandq_s8(vandq_s8(vcgeq_f32(v10, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v5, *v5.f32, 1), v6, *v6.f32, 1), v7, *v7.f32, 1), v8)), vcgeq_f32(v10, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v5, v5.f32[0]), v6, v6.f32[0]), v7, v7.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v10, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v5, v5, 2), v6, v6, 2), v7, v7, 2), v9))), v11.i32[3] = v11.i32[2], (vminvq_u32(v11) & 0x80000000) != 0) && (v12 = vzip1q_s32(vzip2q_s32(v5, v7), vdupq_laneq_s32(v6, 2)), v13 = vtrn2q_s32(v5, v6), v13.i32[2] = HIDWORD(*(a2 + 48)), v14 = vzip1q_s32(vzip1q_s32(v5, v7), v6), v15 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v5.f32[0]), v13, *v5.f32, 1), v12, v5, 2), v16 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v6.f32[0]), v13, *v6.f32, 1), v12, v6, 2), v17 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v14, v7.f32[0]), v13, *v7.f32, 1), v12, v7, 2), v18 = vdupq_n_s32(0x38D1B717u), v19 = vandq_s8(vandq_s8(vcgeq_f32(v18, vabdq_f32(v16, v8)), vcgeq_f32(v18, vabdq_f32(v15, *MEMORY[0x277D860B0]))), vcgeq_f32(v18, vabdq_f32(v17, v9))), v19.i32[3] = v19.i32[2], (vminvq_u32(v19) & 0x80000000) != 0) && (v20 = vmulq_f32(v5, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v7, v7, 0xCuLL), v7, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL))), vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL), vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL))), fabsf((v20.f32[2] + vaddv_f32(*v20.f32)) + -1.0) <= 0.000011) && (v24 = vabs_f32(vzip2_s32(*&vextq_s8(v5, v5, 8uLL), *&vextq_s8(v6, v6, 8uLL))), v25 = vdup_n_s32(0x38D1B717u), v26 = vand_s8(vcge_f32(v25, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(*(a2 + 64), *(a2 + 64), 8uLL)), 0xBF80000080000000))), vcge_f32(v25, v24)), (vpmin_u32(v26, v26).u32[0] & 0x80000000) != 0) && *(a2 + 80) != 3 && *(a2 + 84) >= 0.0)
  {
    if (*(a1 + 144))
    {
      v27 = *(a1 + 128);
      if (v27 && (*(v27 + 8) & 1) != 0)
      {
        if (*(a1 + 8) != 1)
        {
          *(a1 + 60) = v2;
          v29 = *(a2 + 16);
          v30 = *(a2 + 32);
          v31 = *(a2 + 64);
          *(a1 + 96) = *(a2 + 48);
          *(a1 + 112) = v31;
          *(a1 + 64) = v29;
          *(a1 + 80) = v30;
          sub_2461360B0(__p, v27);
          if (v61)
          {
            *(a1 + 12) = *__p;
            *(a1 + 24) = *&__p[12];
            *(a1 + 40) = sub_246135C80(*(a1 + 128));
            *(a1 + 44) = sub_246135DAC(*(a1 + 128));
            LOBYTE(v33) = *(a2 + 8);
            *(a1 + 48) = v33;
            v34 = *(a1 + 28);
            if (v34 >= 0xA)
            {
              v34 = 10;
            }

            *(a1 + 52) = v34;
            *(a1 + 56) = 1024;
            *(a1 + 288) = *(a2 + 80);
            *(a1 + 292) = *(a2 + 88);
            if (**(a1 + 152) == *(*(a1 + 152) + 8))
            {
              v21 = sub_24613B700();
              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_14;
              }

              sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
              if (v65 >= 0)
              {
                v55 = buf;
              }

              else
              {
                v55 = *buf;
              }

              *v66 = 136315394;
              v67 = v55;
              v68 = 1026;
              v69 = 126;
              v52 = "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - hashtable extents is empty.";
            }

            else if (sub_24613B754(a1))
            {
              if (sub_24613C2EC(a1))
              {
                sub_24613C6B0(*(a1 + 208), v35, v36);
                if (*(a1 + 288) == 1)
                {
                  *(a1 + 224) = *(a2 + 84);
                  sub_24613C728(a1, v37, v38);
                }

                v39 = objc_alloc_init(MEMORY[0x277CD6CE8]);
                v40 = *(a1 + 192);
                *(a1 + 192) = v39;

                v42 = *(a1 + 192);
                if (v42)
                {
                  objc_msgSend_setErrorOptions_(v42, v41, 1);
                  v43 = sub_246136344(*(a1 + 128));
                  v44 = v43;
                  *(a1 + 240) = objc_msgSend_contents(v44, v45, v46);

                  if (*(a1 + 292) == 1)
                  {
                    v47 = sub_246136D7C(*(a1 + 128));
                    v48 = v47;
                    *(a1 + 248) = objc_msgSend_contents(v48, v49, v50);
                  }

                  sub_24612369C();
                }

                v21 = sub_24613B700();
                if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_14;
                }

                sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
                if (v65 >= 0)
                {
                  v59 = buf;
                }

                else
                {
                  v59 = *buf;
                }

                *v66 = 136315394;
                v67 = v59;
                v68 = 1026;
                v69 = 152;
                v52 = "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - failed to command buffer descriptor.";
              }

              else
              {
                v21 = sub_24613B700();
                if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_14;
                }

                sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
                if (v65 >= 0)
                {
                  v57 = buf;
                }

                else
                {
                  v57 = *buf;
                }

                *v66 = 136315394;
                v67 = v57;
                v68 = 1026;
                v69 = 138;
                v52 = "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - failed to create buffers.";
              }
            }

            else
            {
              v21 = sub_24613B700();
              if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
              {
                goto LABEL_14;
              }

              sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
              if (v65 >= 0)
              {
                v56 = buf;
              }

              else
              {
                v56 = *buf;
              }

              *v66 = 136315394;
              v67 = v56;
              v68 = 1026;
              v69 = 132;
              v52 = "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - failed to create pipeline states.";
            }
          }

          else
          {
            v21 = sub_24613B700();
            if (!os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_14;
            }

            sub_24610D894(buf, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
            if (v65 >= 0)
            {
              v51 = buf;
            }

            else
            {
              v51 = *buf;
            }

            *v66 = 136315394;
            v67 = v51;
            v68 = 1026;
            v69 = 107;
            v52 = "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - failed to get hash table parameters.";
          }

          _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, v52, v66, 0x12u);
          if (v65 < 0)
          {
            operator delete(*buf);
          }

          goto LABEL_14;
        }

        if (qword_27EE3F700 != -1)
        {
          dispatch_once(&qword_27EE3F700, &unk_2858EC910);
        }

        v21 = qword_27EE3F6F8;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
          v58 = __p[23] >= 0 ? __p : *__p;
          *buf = 136315394;
          *&buf[4] = v58;
          v63 = 1026;
          v64 = 95;
          _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - already initialized.", buf, 0x12u);
          if ((__p[23] & 0x80000000) != 0)
          {
LABEL_65:
            operator delete(*__p);
          }
        }
      }

      else
      {
        if (qword_27EE3F700 != -1)
        {
          dispatch_once(&qword_27EE3F700, &unk_2858EC910);
        }

        v21 = qword_27EE3F6F8;
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
          v53 = __p[23] >= 0 ? __p : *__p;
          *buf = 136315394;
          *&buf[4] = v53;
          v63 = 1026;
          v64 = 89;
          _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - invalid voxelHashingData or it's not initialized.", buf, 0x12u);
          if ((__p[23] & 0x80000000) != 0)
          {
            goto LABEL_65;
          }
        }
      }
    }

    else
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v21 = qword_27EE3F6F8;
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
        v54 = __p[23] >= 0 ? __p : *__p;
        *buf = 136315394;
        *&buf[4] = v54;
        v63 = 1026;
        v64 = 82;
        _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - failed to get MTLDeviceContext.", buf, 0x12u);
        if ((__p[23] & 0x80000000) != 0)
        {
          goto LABEL_65;
        }
      }
    }
  }

  else
  {
    if (qword_27EE3F700 != -1)
    {
      dispatch_once(&qword_27EE3F700, &unk_2858EC910);
    }

    v21 = qword_27EE3F6F8;
    if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
    {
      sub_24610D894(__p, "virtual BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::init(const InitConfig &)");
      v23 = __p[23] >= 0 ? __p : *__p;
      *buf = 136315394;
      *&buf[4] = v23;
      v63 = 1026;
      v64 = 76;
      _os_log_error_impl(&dword_2460CF000, v21, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to initialize VoxelSurfaceSamplerGPU - invalid init config.", buf, 0x12u);
      if ((__p[23] & 0x80000000) != 0)
      {
        goto LABEL_65;
      }
    }
  }

LABEL_14:

  return 0;
}

id sub_24613B700()
{
  if (qword_27EE3F700 != -1)
  {
    dispatch_once(&qword_27EE3F700, &unk_2858EC910);
  }

  v1 = qword_27EE3F6F8;

  return v1;
}

uint64_t sub_24613B754(uint64_t a1)
{
  v111 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc_init(MEMORY[0x277CD6D70]);
  v99 = *(a1 + 288);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v3, &v99, 33, 0);
  objc_msgSend_setConstantValue_type_atIndex_(v2, v4, a1 + 292, 53, 1);
  v5 = *(*(a1 + 144) + 16);
  v98 = 0;
  v7 = objc_msgSend_newFunctionWithName_constantValues_error_(v5, v6, @"oc::voxel_hashing::resetMeshDataInUpdatedVoxelBlocks", v2, &v98);
  v8 = v98;

  if (v7)
  {
    v9 = **(a1 + 144);
    v97 = v8;
    v11 = objc_msgSend_newComputePipelineStateWithFunction_error_(v9, v10, v7, &v97);
    v12 = v97;

    v13 = *(a1 + 160);
    *(a1 + 160) = v11;

    if (!*(a1 + 160))
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v15 = qword_27EE3F6F8;
      if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR) && ((sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()"), v61 = v110, v62 = *__p, objc_msgSend_localizedDescription(v12, v63, v64), v65 = objc_claimAutoreleasedReturnValue(), v66 = v65, v61 >= 0) ? (v67 = __p) : (v67 = v62), *buf = 136315650, *&buf[4] = v67, v101 = 1026, v102 = 303, v103 = 2114, v104 = v65, _os_log_error_impl(&dword_2460CF000, v15, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for resetMeshDataInUpdatedVoxelBlocks compute shader. Error details: %{public}@", buf, 0x1Cu), v66, v110 < 0))
      {
        operator delete(*__p);
        v40 = 0;
      }

      else
      {
        v40 = 0;
      }

      goto LABEL_74;
    }

    v15 = objc_msgSend_newFunctionWithName_(*(*(a1 + 144) + 16), v14, @"oc::voxel_hashing::getVoxelBlocksSurroundingUpdatedVoxelBlocks");
    if (!v15)
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v41 = qword_27EE3F6F8;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
        v70 = (v104 & 0x80000000) == 0 ? buf : *buf;
        *__p = 136315394;
        *&__p[4] = v70;
        v108 = 1026;
        v109 = 311;
        _os_log_error_impl(&dword_2460CF000, v41, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to find getVoxelBlocksSurroundingUpdatedVoxelBlocks compute shader.", __p, 0x12u);
        if (SBYTE3(v104) < 0)
        {
          operator delete(*buf);
        }
      }

      v40 = 0;
      goto LABEL_73;
    }

    v16 = **(a1 + 144);
    v96 = v12;
    v18 = objc_msgSend_newComputePipelineStateWithFunction_error_(v16, v17, v15, &v96);
    v19 = v96;

    v20 = *(a1 + 168);
    *(a1 + 168) = v18;

    if (!*(a1 + 168))
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v41 = qword_27EE3F6F8;
      if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
        v72 = v110;
        v73 = *__p;
        v76 = objc_msgSend_localizedDescription(v19, v74, v75);
        v77 = v76;
        v78 = v72 >= 0 ? __p : v73;
        *buf = 136315650;
        *&buf[4] = v78;
        v101 = 1026;
        v102 = 321;
        v103 = 2114;
        v104 = v76;
        _os_log_error_impl(&dword_2460CF000, v41, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for getVoxelBlocksSurroundingUpdatedVoxelBlocks compute shader. Error details: %{public}@", buf, 0x1Cu);

        if (v110 < 0)
        {
          operator delete(*__p);
        }
      }

      v40 = 0;
      v12 = v19;
      goto LABEL_73;
    }

    v21 = *(*(a1 + 144) + 16);
    v95 = v19;
    v23 = objc_msgSend_newFunctionWithName_constantValues_error_(v21, v22, @"oc::voxel_hashing::computeMeshVerticesInUpdatedVoxelBlocks", v2, &v95);
    v12 = v95;

    if (!v23)
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v33 = qword_27EE3F6F8;
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
        v79 = v110;
        v80 = *__p;
        v83 = objc_msgSend_localizedDescription(v12, v81, v82);
        v84 = v83;
        v85 = v79 >= 0 ? __p : v80;
        *buf = 136315650;
        *&buf[4] = v85;
        v101 = 1026;
        v102 = 333;
        v103 = 2114;
        v104 = v83;
        _os_log_error_impl(&dword_2460CF000, v33, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed find computeMeshVerticesInUpdatedVoxelBlocks compute shader. Error details: %{public}@", buf, 0x1Cu);

        if (v110 < 0)
        {
          operator delete(*__p);
        }
      }

      v40 = 0;
      goto LABEL_72;
    }

    v24 = **(a1 + 144);
    v94 = v12;
    v26 = objc_msgSend_newComputePipelineStateWithFunction_error_(v24, v25, v23, &v94);
    v27 = v94;

    v28 = *(a1 + 176);
    *(a1 + 176) = v26;

    v31 = *(a1 + 176);
    if (v31)
    {
      if (objc_msgSend_maxTotalThreadsPerThreadgroup(v31, v29, v30) > 0x2D8)
      {
        v33 = objc_msgSend_newFunctionWithName_(*(*(a1 + 144) + 16), v32, @"oc::voxel_hashing::generateMeshFacesInUpdatedVoxelBlocks");
        if (v33)
        {
          v49 = **(a1 + 144);
          v93 = v27;
          v51 = objc_msgSend_newComputePipelineStateWithFunction_error_(v49, v50, v33, &v93);
          v12 = v93;

          v53 = *(a1 + 184);
          v52 = (a1 + 184);
          *v52 = v51;

          if (*v52)
          {
            v40 = 1;
LABEL_72:

            v41 = v23;
LABEL_73:

LABEL_74:
            v8 = v12;
            goto LABEL_75;
          }

          v68 = sub_24613B700();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
            v86 = v110;
            v87 = *__p;
            v90 = objc_msgSend_localizedDescription(v12, v88, v89);
            v91 = v90;
            v92 = __p;
            if (v86 < 0)
            {
              v92 = v87;
            }

            *buf = 136315650;
            *&buf[4] = v92;
            v101 = 1026;
            v102 = 370;
            v103 = 2114;
            v104 = v90;
            _os_log_error_impl(&dword_2460CF000, v68, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for generateMeshFacesInUpdatedVoxelBlocks compute shader. Error details: %{public}@", buf, 0x1Cu);

            if (v110 < 0)
            {
              operator delete(*__p);
            }
          }

          v27 = v12;
        }

        else
        {
          v68 = sub_24613B700();
          if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
          {
            sub_24610D894(buf, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
            v69 = (v104 & 0x80000000) == 0 ? buf : *buf;
            *__p = 136315394;
            *&__p[4] = v69;
            v108 = 1026;
            v109 = 361;
            _os_log_error_impl(&dword_2460CF000, v68, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed find generateMeshFacesInUpdatedVoxelBlocks compute shader.", __p, 0x12u);
            if (SBYTE3(v104) < 0)
            {
              operator delete(*buf);
            }
          }
        }

LABEL_71:
        v40 = 0;
        v12 = v27;
        goto LABEL_72;
      }

      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v33 = qword_27EE3F6F8;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
      v34 = v110;
      v35 = *__p;
      v38 = objc_msgSend_maxTotalThreadsPerThreadgroup(*(a1 + 176), v36, v37);
      if (v34 >= 0)
      {
        v39 = __p;
      }

      else
      {
        v39 = v35;
      }

      *buf = 136315906;
      *&buf[4] = v39;
      v101 = 1026;
      v102 = 353;
      v103 = 2050;
      v104 = v38;
      v105 = 1026;
      v106 = 729;
      _os_log_error_impl(&dword_2460CF000, v33, OS_LOG_TYPE_ERROR, "%s:%{public}d maxTotalThreadsPerThreadgroup = %{public}lu in computeMeshVerticesInUpdatedVoxelBlocks compute shader is less than the minimum required %{public}u", buf, 0x22u);
    }

    else
    {
      if (qword_27EE3F700 != -1)
      {
        dispatch_once(&qword_27EE3F700, &unk_2858EC910);
      }

      v33 = qword_27EE3F6F8;
      if (!os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_71;
      }

      sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
      v42 = v110;
      v43 = *__p;
      v46 = objc_msgSend_localizedDescription(v27, v44, v45);
      v47 = v46;
      if (v42 >= 0)
      {
        v48 = __p;
      }

      else
      {
        v48 = v43;
      }

      *buf = 136315650;
      *&buf[4] = v48;
      v101 = 1026;
      v102 = 343;
      v103 = 2114;
      v104 = v46;
      _os_log_error_impl(&dword_2460CF000, v33, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create pipeline state for computeMeshVerticesInUpdatedVoxelBlocks compute shader. Error details: %{public}@", buf, 0x1Cu);
    }

    if (v110 < 0)
    {
      operator delete(*__p);
    }

    goto LABEL_71;
  }

  if (qword_27EE3F700 != -1)
  {
    dispatch_once(&qword_27EE3F700, &unk_2858EC910);
  }

  v15 = qword_27EE3F6F8;
  if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createPipelineState()");
    v54 = v110;
    v55 = *__p;
    v58 = objc_msgSend_localizedDescription(v8, v56, v57);
    v59 = v58;
    v60 = v54 >= 0 ? __p : v55;
    *buf = 136315650;
    *&buf[4] = v60;
    v101 = 1026;
    v102 = 294;
    v103 = 2114;
    v104 = v58;
    _os_log_error_impl(&dword_2460CF000, v15, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed find resetMeshDataInUpdatedVoxelBlocks compute shader. Error details: %{public}@", buf, 0x1Cu);

    if (v110 < 0)
    {
      operator delete(*__p);
    }
  }

  v40 = 0;
LABEL_75:

  return v40;
}

void sub_24613C1AC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, _Unwind_Exception *exception_object)
{
  if (v15 < 0)
  {
    operator delete(v17);
  }

  _Unwind_Resume(a1);
}

uint64_t sub_24613C2EC(uint64_t a1)
{
  v33 = *MEMORY[0x277D85DE8];
  if (*(a1 + 28) >= 0xFA0u)
  {
    v2 = 4000;
  }

  else
  {
    v2 = *(a1 + 28);
  }

  v3 = **(a1 + 144);
  v5 = objc_msgSend_newBufferWithLength_options_(v3, v4, (108 * v2), 32);
  v6 = *(a1 + 200);
  *(a1 + 200) = v5;

  v8 = *(a1 + 200);
  if (!v8)
  {
    if (qword_27EE3F700 != -1)
    {
      dispatch_once(&qword_27EE3F700, &unk_2858EC910);
    }

    v23 = qword_27EE3F6F8;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createBuffers()");
    v24 = v28 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v24;
    v31 = 1026;
    v32 = 386;
    _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create neighborVoxelBlockIdxs Buffer.", buf, 0x12u);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  objc_msgSend_setLabel_(v8, v7, @"NeighborVoxelBlockIdxs Buffer");
  v9 = **(a1 + 144);
  v11 = objc_msgSend_newBufferWithLength_options_(v9, v10, 11664, 0);
  v12 = *(a1 + 208);
  *(a1 + 208) = v11;

  v14 = *(a1 + 208);
  if (!v14)
  {
    if (qword_27EE3F700 != -1)
    {
      dispatch_once(&qword_27EE3F700, &unk_2858EC910);
    }

    v23 = qword_27EE3F6F8;
    if (!os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_21;
    }

    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createBuffers()");
    v25 = v28 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v25;
    v31 = 1026;
    v32 = 396;
    _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create threadPosInThreadgroupToIdxInVoxelVerticesMap buffer.", buf, 0x12u);
    if ((v28 & 0x80000000) == 0)
    {
      goto LABEL_21;
    }

    goto LABEL_36;
  }

  objc_msgSend_setLabel_(v14, v13, @"ThreadPosInThreadgroupToIdxInVoxelVerticesMap Buffer");
  if (*(a1 + 288) != 1)
  {
    return 1;
  }

  v15 = (4 * *(a1 + 52) * *(a1 + 56));
  v16 = **(a1 + 144);
  v18 = objc_msgSend_newBufferWithLength_options_(v16, v17, v15, 0);
  v19 = *(a1 + 216);
  *(a1 + 216) = v18;

  v21 = *(a1 + 216);
  if (v21)
  {
    objc_msgSend_setLabel_(v21, v20, @"RandomNumbers Buffer");
    return 1;
  }

  if (qword_27EE3F700 != -1)
  {
    dispatch_once(&qword_27EE3F700, &unk_2858EC910);
  }

  v23 = qword_27EE3F6F8;
  if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
  {
    sub_24610D894(__p, "BOOL oc::voxel_hashing::VoxelSurfaceSamplerGPU::createBuffers()");
    v26 = v28 >= 0 ? __p : __p[0];
    *buf = 136315394;
    v30 = v26;
    v31 = 1026;
    v32 = 410;
    _os_log_error_impl(&dword_2460CF000, v23, OS_LOG_TYPE_ERROR, "%s:%{public}d Failed to create randomNumbers buffer.", buf, 0x12u);
    if (v28 < 0)
    {
LABEL_36:
      operator delete(__p[0]);
    }
  }

LABEL_21:

  return 0;
}

uint64_t sub_24613C6B0(void *a1, const char *a2, uint64_t a3)
{
  result = objc_msgSend_contents(a1, a2, a3);
  for (i = 0; i != 729; ++i)
  {
    LODWORD(v5) = i / 0x51u;
    HIDWORD(v5) = (i - 81 * v5) / 9u;
    *(result + 8) = i % 9u;
    *result = v5;
    result += 16;
  }

  return result;
}

void sub_24613C728(uint64_t a1, const char *a2, uint64_t a3)
{
  v42 = *MEMORY[0x277D85DE8];
  v4 = *(a1 + 224);
  v33 = objc_msgSend_contents(*(a1 + 216), a2, a3);
  if (qword_27EE3F700 != -1)
  {
    dispatch_once(&qword_27EE3F700, &unk_2858EC910);
  }

  v5 = qword_27EE3F6F8;
  if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
  {
    sub_24610D894(__p, "void oc::voxel_hashing::VoxelSurfaceSamplerGPU::generateRandomNumbers()");
    v29 = v35 >= 0 ? __p : __p[0];
    v30 = *(a1 + 224);
    *buf = 136315650;
    v37 = v29;
    v38 = 1026;
    v39 = 441;
    v40 = 2050;
    v41 = v30;
    _os_log_debug_impl(&dword_2460CF000, v5, OS_LOG_TYPE_DEBUG, "%s:%{public}d Generating random numbers from normal distribution with stddev = %{public}f", buf, 0x1Cu);
    if (v35 < 0)
    {
      operator delete(__p[0]);
    }
  }

  v31 = *(a1 + 52);
  if (v31)
  {
    v7 = *(a1 + 56);
    if (v7)
    {
      v8 = 0;
      v9 = 0;
      v10 = 1;
      do
      {
        v11 = 0;
        v32 = v8;
        v12 = v7 * v8;
        while (1)
        {
          if (v9)
          {
            v13 = v6;
          }

          else
          {
            do
            {
              v15 = 48271 * (v10 % 0xADC8);
              v16 = 3399 * (v10 / 0xADC8);
              v17 = v15 >= v16;
              v18 = v15 - v16;
              if (v17)
              {
                v19 = 0;
              }

              else
              {
                v19 = 0x7FFFFFFF;
              }

              v20 = v19 + v18;
              v21 = (vcvts_n_f32_u32(v20 - 1, 0x1FuLL) * 2.0) + -1.0;
              v22 = v20 / 0xADC8;
              v23 = 48271 * (v20 % 0xADC8);
              v22 *= 3399;
              v17 = v23 >= v22;
              v24 = v23 - v22;
              if (v17)
              {
                v25 = 0;
              }

              else
              {
                v25 = 0x7FFFFFFF;
              }

              v10 = v25 + v24;
              v26 = (vcvts_n_f32_u32(v25 + v24 - 1, 0x1FuLL) * 2.0) + -1.0;
              v27 = (v26 * v26) + (v21 * v21);
            }

            while (v27 > 1.0 || v27 == 0.0);
            v28 = sqrtf((logf((v26 * v26) + (v21 * v21)) * -2.0) / v27);
            v6 = v26 * v28;
            v13 = v21 * v28;
          }

          v9 ^= 1u;
          v14 = (v13 * v4) + 0.0;
          if (fabsf(v14) < 0.4)
          {
            *(v33 + 4 * (v12 + v11++)) = v14;
            if (v11 == v7)
            {
              break;
            }
          }
        }

        v8 = v32 + 1;
      }

      while (v32 + 1 != v31);
    }
  }
}

void sub_24613C9E8(uint64_t a1)
{
  sub_24613CA20(a1);

  JUMPOUT(0x24C1995D0);
}

uint64_t sub_24613CA20(uint64_t a1)
{
  atomic_store(1u, (a1 + 228));
  v2 = atomic_load((a1 + 232));
  if (v2 >= 1)
  {
    do
    {
      __ns.__rep_ = 1000000;
      std::this_thread::sleep_for (&__ns);
      v3 = atomic_load((a1 + 232));
    }

    while (v3 > 0);
  }

  v4 = *(a1 + 280);
  *(a1 + 280) = 0;
  if (v4)
  {

    MEMORY[0x24C1995D0](v4, 0xE0C40BC9ECFC2);
  }

  v5 = *(a1 + 256);
  if (v5)
  {
    *(a1 + 264) = v5;
    operator delete(v5);
  }

  v6 = *(a1 + 136);
  if (v6 && !atomic_fetch_add(&v6->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (v6->__on_zero_shared)(v6);
    std::__shared_weak_count::__release_weak(v6);
  }

  return a1;
}

void sub_24613CB58(_Unwind_Exception *a1)
{
  sub_246123840((v1 + 280));
  v3 = *(v1 + 256);
  if (v3)
  {
    *(v1 + 264) = v3;
    operator delete(v3);
  }

  sub_2460D502C(v1 + 128);
  _Unwind_Resume(a1);
}

uint64_t sub_24613CBC8(uint64_t result, __int128 *a2)
{
  v2 = a2[3];
  v4 = *a2;
  v3 = a2[1];
  *(result + 32) = a2[2];
  *(result + 48) = v2;
  *result = v4;
  *(result + 16) = v3;
  *(result + 64) = 0;
  *(result + 72) = 0;
  *(result + 80) = 0;
  *(result + 88) = 0xBFF0000000000000;
  *(result + 96) = 0;
  if (*(result + 8) == 1)
  {
    operator new();
  }

  if (*(result + 9) == 1)
  {
    operator new();
  }

  if (*(result + 10) == 1)
  {
    operator new();
  }

  return result;
}

BOOL sub_24613CD00(uint64_t a1, uint64_t a2, float32x2_t *a3, float32x4_t *a4)
{
  v6 = a4[1];
  v7 = a4[2];
  v8 = a4[3];
  v9 = *a3[6].f32;
  v10 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, COERCE_FLOAT(*a3[2].f32)), v6, a3[2], 1), v7, *a3[2].f32, 2), v8, *a3[2].f32, 3);
  v11 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, COERCE_FLOAT(*a3[4].f32)), v6, a3[4], 1), v7, *a3[4].f32, 2), v8, *a3[4].f32, 3);
  v12 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v9.f32[0]), v6, *v9.f32, 1), v7, v9, 2);
  v35[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, COERCE_FLOAT(*a3->f32)), v6, *a3, 1), v7, *a3->f32, 2), v8, *a3->f32, 3);
  v35[1] = v10;
  v35[2] = v11;
  v35[3] = vmlaq_laneq_f32(v12, v8, v9, 3);
  v33 = 0;
  v34 = 0;
  sub_246138CF0(a2, v35, &v34 + 1, &v34, &v33 + 1, &v33);
  if (v13)
  {
    v14 = vsub_s32(__PAIR64__(v34, v33), __PAIR64__(HIDWORD(v34), HIDWORD(v33)));
    v15.i64[0] = v14.i32[0];
    v15.i64[1] = v14.i32[1];
    v16 = vcvtq_f64_s64(v15);
    v17 = *(a2 + 272);
    v15.i64[0] = v17;
    v15.i64[1] = HIDWORD(v17);
    v18 = vdivq_f64(v16, vcvtq_f64_u64(v15));
    if (*(a1 + 10) == 1)
    {
      v19 = *(a1 + 80);
      if (*(v19 + 16) == 1)
      {
        *(v19 + 24) = v18;
        *(v19 + 16) = 0;
      }

      else
      {
        v22 = *(v19 + 24);
        if (*(v19 + 17) == 1)
        {
          v23 = *(v19 + 40);
        }

        else
        {
          v23 = vsubq_f64(v18, v22);
          *(v19 + 17) = 1;
        }

        v24 = vaddq_f64(vmulq_n_f64(v18, *v19), vmulq_n_f64(vaddq_f64(v22, v23), 1.0 - *v19));
        v25 = vaddq_f64(vmulq_n_f64(vsubq_f64(v24, v22), *(v19 + 8)), vmulq_n_f64(v23, 1.0 - *(v19 + 8)));
        *(v19 + 24) = v24;
        *(v19 + 40) = v25;
        v18 = vaddq_f64(v24, v25);
      }
    }

    v26 = v18.f64[0];
    v27 = v18.f64[1];
    v28 = v26 * v27;
    v30 = (v26 < 1.0 || v27 < 1.0) && v28 < *a1;
    v31 = *(a1 + 96) == 2 && v28 < *(a1 + 4);
    return v30 || v31;
  }

  else
  {
    v20 = 0;
    if (*(a1 + 10) == 1)
    {
      v21 = *(a1 + 80);
      *(v21 + 40) = 0u;
      *(v21 + 24) = 0u;
      *(v21 + 16) = 1;
    }
  }

  return v20;
}

uint64_t sub_24613CEFC()
{
  if (qword_27EE3F708)
  {
    v0 = qword_27EE3F708;
    goto LABEL_4;
  }

  if (MTLCreateSystemDefaultDevice())
  {
LABEL_4:
    operator new();
  }

  return 0;
}

void sub_24613D064(_Unwind_Exception *a1)
{
  MEMORY[0x24C1995D0](v2, 0x1080C4097C26A9CLL);

  _Unwind_Resume(a1);
}

id **sub_24613D0CC(id **result)
{
  v1 = *result;
  *result = 0;
  if (v1)
  {
    v2 = result;

    MEMORY[0x24C1995D0](v1, 0x1080C4097C26A9CLL);
    return v2;
  }

  return result;
}

uint64_t sub_24613D12C(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_27EE3F718, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_27EE3F718))
  {
    qword_27EE3F710 = sub_24613CEFC();
    __cxa_atexit(sub_24613D0CC, &qword_27EE3F710, &dword_2460CF000);
    __cxa_guard_release(&qword_27EE3F718);
  }

  *a1 = qword_27EE3F710;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  sub_246103AE8(a1 + 32);
  *(a1 + 208) = 0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return a1;
}

uint64_t sub_24613D21C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (!*a1)
  {
    return 0;
  }

  result = 0;
  if (!a5 || !a4 || !a3 || !a2 || (*(a1 + 208) & 1) != 0)
  {
    return result;
  }

  v8 = *(a6 + 20);
  if (*(a6 + 16) >= v8)
  {
    return 0;
  }

  result = 0;
  v9 = *(a6 + 28);
  if (v9 <= 0.0)
  {
    return result;
  }

  v10 = *(a6 + 32);
  if (v9 >= v10)
  {
    return result;
  }

  *(a1 + 176) = a2;
  *(a1 + 184) = a3;
  *(a1 + 192) = a4;
  *(a1 + 200) = a5;
  *(a1 + 160) = v8;
  *(a1 + 164) = v9;
  *(a1 + 168) = v10;
  v11 = a1;
  result = sub_246103B9C(a1 + 32, v8);
  if (!result)
  {
    return result;
  }

  v12 = v11;
  if (*(v11 + 68) == 1)
  {
    v13 = *(v11 + 56);
    v12 = v11;
  }

  else
  {
    v13 = 0;
  }

  v14 = *(v12 + 88);
  *(v12 + 88) = v13;

  if (!*(v11 + 88))
  {
    return 0;
  }

  v15 = 4 * *(v11 + 160);
  v16 = **v11;
  v18 = objc_msgSend_newBufferWithLength_options_(v16, v17, v15, 0);
  v19 = *(v11 + 96);
  *(v11 + 96) = v18;

  result = *(v11 + 96);
  if (result)
  {
    objc_msgSend_setLabel_(result, v20, @"SurfaceVoxelCoverageScoreBuffer");
    v21 = **v11;
    v23 = objc_msgSend_newBufferWithBytes_length_options_(v21, v22, &unk_2461441E0, 64, 0);
    v24 = *(v11 + 104);
    *(v11 + 104) = v23;

    result = *(v11 + 104);
    if (result)
    {
      objc_msgSend_setLabel_(result, v25, @"ImagePlaneVertexBuffer");
      result = sub_24613D3DC(v11);
      if (result)
      {
        result = sub_24613D640(v11);
        if (result)
        {
          result = sub_24613D820(v11);
          if (result)
          {
            result = sub_24613DB4C(v11);
            if (result)
            {
              result = sub_24613DC00(v11);
              if (result)
              {
                result = 1;
                *(v11 + 208) = 1;
              }
            }
          }
        }
      }
    }
  }

  return result;
}

BOOL sub_24613D3DC(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7090]);
  v3 = *(a1 + 112);
  *(a1 + 112) = v2;

  v6 = *(a1 + 112);
  if (v6)
  {
    v7 = objc_msgSend_attributes(*(a1 + 112), v4, v5);
    v9 = objc_msgSend_objectAtIndexedSubscript_(v7, v8, 0);
    objc_msgSend_setFormat_(v9, v10, 29);

    v13 = objc_msgSend_attributes(*(a1 + 112), v11, v12);
    v15 = objc_msgSend_objectAtIndexedSubscript_(v13, v14, 0);
    objc_msgSend_setOffset_(v15, v16, 0);

    v19 = objc_msgSend_attributes(*(a1 + 112), v17, v18);
    v21 = objc_msgSend_objectAtIndexedSubscript_(v19, v20, 0);
    objc_msgSend_setBufferIndex_(v21, v22, 0);

    v25 = objc_msgSend_attributes(*(a1 + 112), v23, v24);
    v27 = objc_msgSend_objectAtIndexedSubscript_(v25, v26, 1);
    objc_msgSend_setFormat_(v27, v28, 29);

    v31 = objc_msgSend_attributes(*(a1 + 112), v29, v30);
    v33 = objc_msgSend_objectAtIndexedSubscript_(v31, v32, 1);
    objc_msgSend_setOffset_(v33, v34, 8);

    v37 = objc_msgSend_attributes(*(a1 + 112), v35, v36);
    v39 = objc_msgSend_objectAtIndexedSubscript_(v37, v38, 1);
    objc_msgSend_setBufferIndex_(v39, v40, 0);

    v43 = objc_msgSend_layouts(*(a1 + 112), v41, v42);
    v45 = objc_msgSend_objectAtIndexedSubscript_(v43, v44, 0);
    objc_msgSend_setStride_(v45, v46, 16);

    v49 = objc_msgSend_layouts(*(a1 + 112), v47, v48);
    v51 = objc_msgSend_objectAtIndexedSubscript_(v49, v50, 0);
    objc_msgSend_setStepRate_(v51, v52, 1);

    v55 = objc_msgSend_layouts(*(a1 + 112), v53, v54);
    v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, 0);
    objc_msgSend_setStepFunction_(v57, v58, 1);
  }

  return v6 != 0;
}

uint64_t sub_24613D640(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD7058]);
  v4 = v2;
  if (!v2)
  {
    goto LABEL_9;
  }

  objc_msgSend_setTextureType_(v2, v3, 2);
  objc_msgSend_setPixelFormat_(v4, v5, 80);
  objc_msgSend_setWidth_(v4, v6, *(a1 + 176));
  objc_msgSend_setHeight_(v4, v7, *(a1 + 184));
  objc_msgSend_setUsage_(v4, v8, 6);
  objc_msgSend_setStorageMode_(v4, v9, 0);
  v10 = **a1;
  v12 = objc_msgSend_newTextureWithDescriptor_(v10, v11, v4);
  v13 = *(a1 + 120);
  *(a1 + 120) = v12;

  v15 = *(a1 + 120);
  if (!v15)
  {
    goto LABEL_9;
  }

  objc_msgSend_setLabel_(v15, v14, @"CoverageHeatmapTexture");
  objc_msgSend_setPixelFormat_(v4, v16, 55);
  objc_msgSend_setWidth_(v4, v17, *(a1 + 192));
  objc_msgSend_setHeight_(v4, v18, *(a1 + 200));
  objc_msgSend_setUsage_(v4, v19, 7);
  v20 = **a1;
  v22 = objc_msgSend_newTextureWithDescriptor_(v20, v21, v4);
  v23 = *(a1 + 128);
  *(a1 + 128) = v22;

  v25 = *(a1 + 128);
  if (!v25)
  {
    goto LABEL_9;
  }

  objc_msgSend_setLabel_(v25, v24, @"CoverageScoreTexture");
  objc_msgSend_setTextureType_(v4, v26, 2);
  objc_msgSend_setPixelFormat_(v4, v27, 252);
  objc_msgSend_setUsage_(v4, v28, 4);
  if (*(*a1 + 24))
  {
    objc_msgSend_setStorageMode_(v4, v29, 3);
  }

  else
  {
    objc_msgSend_setStorageMode_(v4, v29, 2);
  }

  v30 = **a1;
  v32 = objc_msgSend_newTextureWithDescriptor_(v30, v31, v4);
  v33 = *(a1 + 136);
  *(a1 + 136) = v32;

  v35 = *(a1 + 136);
  if (v35)
  {
    objc_msgSend_setLabel_(v35, v34, @"DepthTexture");
    v36 = 1;
  }

  else
  {
LABEL_9:
    v36 = 0;
  }

  return v36;
}

BOOL sub_24613D820(uint64_t a1)
{
  v3 = objc_alloc_init(MEMORY[0x277CD6F78]);
  if (v3)
  {
    v4 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v2, @"coverageHeatmapVertexShader");
    v6 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v5, @"coverageHeatmapFragmentShader");
    objc_msgSend_setVertexFunction_(v3, v7, v4);
    objc_msgSend_setFragmentFunction_(v3, v8, v6);
    objc_msgSend_setVertexDescriptor_(v3, v9, *(a1 + 112));
    v12 = objc_msgSend_pixelFormat(*(a1 + 120), v10, v11);
    v15 = objc_msgSend_colorAttachments(v3, v13, v14);
    v17 = objc_msgSend_objectAtIndexedSubscript_(v15, v16, 0);
    objc_msgSend_setPixelFormat_(v17, v18, v12);

    v19 = **a1;
    v51 = 0;
    v21 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v19, v20, v3, &v51);
    v22 = v51;
    v23 = *(a1 + 8);
    *(a1 + 8) = v21;

    if (*(a1 + 8))
    {
      v25 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v24, @"coverageScoreVertexShader");

      v27 = objc_msgSend_newFunctionWithName_(*(*a1 + 16), v26, @"coverageScoreFragmentShader");
      objc_msgSend_setVertexFunction_(v3, v28, v25);
      objc_msgSend_setFragmentFunction_(v3, v29, v27);
      v32 = objc_msgSend_pixelFormat(*(a1 + 128), v30, v31);
      v35 = objc_msgSend_colorAttachments(v3, v33, v34);
      v37 = objc_msgSend_objectAtIndexedSubscript_(v35, v36, 0);
      objc_msgSend_setPixelFormat_(v37, v38, v32);

      v41 = objc_msgSend_pixelFormat(*(a1 + 136), v39, v40);
      objc_msgSend_setDepthAttachmentPixelFormat_(v3, v42, v41);
      v43 = **a1;
      v50 = v22;
      v45 = objc_msgSend_newRenderPipelineStateWithDescriptor_error_(v43, v44, v3, &v50);
      v46 = v50;

      v47 = *(a1 + 16);
      *(a1 + 16) = v45;

      v48 = *(a1 + 16) != 0;
      v22 = v46;
      v4 = v25;
      v6 = v27;
    }

    else
    {
      v48 = 0;
    }
  }

  else
  {
    v22 = 0;
    v48 = 0;
  }

  return v48;
}

BOOL sub_24613DB4C(uint64_t a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6D60]);
  v4 = v2;
  if (v2)
  {
    objc_msgSend_setDepthCompareFunction_(v2, v3, 1);
    objc_msgSend_setDepthWriteEnabled_(v4, v5, 1);
    v6 = **a1;
    v8 = objc_msgSend_newDepthStencilStateWithDescriptor_(v6, v7, v4);
    v9 = *(a1 + 24);
    *(a1 + 24) = v8;

    v10 = *(a1 + 24) != 0;
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t sub_24613DC00(uint64_t *a1)
{
  v2 = objc_alloc_init(MEMORY[0x277CD6F50]);
  v3 = a1[18];
  a1[18] = v2;

  result = a1[18];
  if (result)
  {
    v7 = a1[15];
    v8 = objc_msgSend_colorAttachments(result, v4, v5);
    v10 = objc_msgSend_objectAtIndexedSubscript_(v8, v9, 0);
    objc_msgSend_setTexture_(v10, v11, v7);

    v14 = objc_msgSend_colorAttachments(a1[18], v12, v13);
    v16 = objc_msgSend_objectAtIndexedSubscript_(v14, v15, 0);
    objc_msgSend_setLoadAction_(v16, v17, 2);

    v20 = objc_msgSend_colorAttachments(a1[18], v18, v19);
    v22 = objc_msgSend_objectAtIndexedSubscript_(v20, v21, 0);
    objc_msgSend_setClearColor_(v22, v23, v24, 0.0, 0.0, 0.0, 0.0);

    v27 = objc_msgSend_colorAttachments(a1[18], v25, v26);
    v29 = objc_msgSend_objectAtIndexedSubscript_(v27, v28, 0);
    objc_msgSend_setStoreAction_(v29, v30, 1);

    v31 = objc_alloc_init(MEMORY[0x277CD6F50]);
    v32 = a1[19];
    a1[19] = v31;

    result = a1[19];
    if (result)
    {
      v35 = a1[16];
      v36 = objc_msgSend_colorAttachments(result, v33, v34);
      v38 = objc_msgSend_objectAtIndexedSubscript_(v36, v37, 0);
      objc_msgSend_setTexture_(v38, v39, v35);

      v42 = objc_msgSend_colorAttachments(a1[19], v40, v41);
      v44 = objc_msgSend_objectAtIndexedSubscript_(v42, v43, 0);
      objc_msgSend_setLoadAction_(v44, v45, 2);

      v48 = objc_msgSend_colorAttachments(a1[19], v46, v47);
      v50 = objc_msgSend_objectAtIndexedSubscript_(v48, v49, 0);
      objc_msgSend_setClearColor_(v50, v51, v52, 0.0, 0.0, 0.0, 0.0);

      v55 = objc_msgSend_colorAttachments(a1[19], v53, v54);
      v57 = objc_msgSend_objectAtIndexedSubscript_(v55, v56, 0);
      objc_msgSend_setStoreAction_(v57, v58, 1);

      v59 = a1[17];
      v62 = objc_msgSend_depthAttachment(a1[19], v60, v61);
      objc_msgSend_setTexture_(v62, v63, v59);

      v66 = objc_msgSend_depthAttachment(a1[19], v64, v65);
      objc_msgSend_setLoadAction_(v66, v67, 2);

      v70 = objc_msgSend_depthAttachment(a1[19], v68, v69);
      objc_msgSend_setClearDepth_(v70, v71, v72, 1.0);

      v75 = objc_msgSend_depthAttachment(a1[19], v73, v74);
      objc_msgSend_setStoreAction_(v75, v76, 0);

      return 1;
    }
  }

  return result;
}

uint64_t sub_24613DEE0(uint64_t a1, uint64_t a2, const void *a3, uint64_t a4, int a5, float a6)
{
  v6 = 0;
  if (*(a1 + 208) == 1 && *a2 > 0.0)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v9 = *(a2 + 48);
    v11 = *MEMORY[0x277D860B0];
    v10 = *(MEMORY[0x277D860B0] + 16);
    v12 = *(MEMORY[0x277D860B0] + 32);
    v13 = vdupq_n_s32(0x38D1B717u);
    v14 = vandq_s8(vandq_s8(vcgeq_f32(v13, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v7, *v7.f32, 1), v8, *v8.f32, 1), v9, *v9.f32, 1), v10)), vcgeq_f32(v13, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v7, v7.f32[0]), v8, v8.f32[0]), v9, v9.f32[0]), *MEMORY[0x277D860B0]))), vcgeq_f32(v13, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v7, v7, 2), v8, v8, 2), v9, v9, 2), v12)));
    v14.i32[3] = v14.i32[2];
    if ((vminvq_u32(v14) & 0x80000000) == 0)
    {
      return 0;
    }

    v15 = vzip1q_s32(vzip2q_s32(v7, v9), vdupq_laneq_s32(v8, 2));
    v16 = vtrn2q_s32(v7, v8);
    v16.i32[2] = HIDWORD(*(a2 + 48));
    v17 = vzip1q_s32(vzip1q_s32(v7, v9), v8);
    v18 = vandq_s8(vandq_s8(vcgeq_f32(v13, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v8.f32[0]), v16, *v8.f32, 1), v15, v8, 2), v10)), vcgeq_f32(v13, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v7.f32[0]), v16, *v7.f32, 1), v15, v7, 2), v11))), vcgeq_f32(v13, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, v9.f32[0]), v16, *v9.f32, 1), v15, v9, 2), v12)));
    v18.i32[3] = v18.i32[2];
    if ((vminvq_u32(v18) & 0x80000000) == 0)
    {
      return 0;
    }

    v20 = vmulq_f32(v7, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v9, v9, 0xCuLL), v9, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL))), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL), vextq_s8(vextq_s8(v8, v8, 0xCuLL), v8, 8uLL)));
    v6 = 0;
    if (fabsf((v20.f32[2] + vaddv_f32(*v20.f32)) + -1.0) <= 0.000011)
    {
      v21 = vabs_f32(vzip2_s32(*&vextq_s8(v7, v7, 8uLL), *&vextq_s8(v8, v8, 8uLL)));
      v22 = vdup_n_s32(0x38D1B717u);
      v23 = vand_s8(vcge_f32(v22, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v9, v9, 8uLL), *&vextq_s8(*(a2 + 64), *(a2 + 64), 8uLL)), 0xBF80000080000000))), vcge_f32(v22, v21));
      if ((vpmin_u32(v23, v23).u32[0] & 0x80000000) != 0 && *(a2 + 80) && *(a2 + 88))
      {
        v24 = *a4;
        v25 = *(a4 + 16);
        v26 = *(a4 + 32);
        v27 = vdupq_n_s32(0x38D1B717u);
        v28 = vandq_s8(vandq_s8(vcgeq_f32(v27, vabdq_f32(vmlaq_lane_f32(vmlaq_lane_f32(vmulq_lane_f32(v24, *v24.f32, 1), v25, *v25.f32, 1), v26, *v26.f32, 1), v10)), vcgeq_f32(v27, vabdq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(v24, v24.f32[0]), v25, v25.f32[0]), v26, v26.f32[0]), v11))), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v24, v24, 2), v25, v25, 2), v26, v26, 2), v12)));
        v28.i32[3] = v28.i32[2];
        if ((vminvq_u32(v28) & 0x80000000) == 0)
        {
          return 0;
        }

        v29 = vzip1q_s32(vzip2q_s32(v24, v26), vdupq_laneq_s32(v25, 2));
        v30 = vtrn2q_s32(v24, v25);
        v30.i32[2] = HIDWORD(*(a4 + 32));
        v31 = vzip1q_s32(vzip1q_s32(v24, v26), v25);
        v32 = vandq_s8(vandq_s8(vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v25.f32[0]), v30, *v25.f32, 1), v29, v25, 2), v10)), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v24.f32[0]), v30, *v24.f32, 1), v29, v24, 2), v11))), vcgeq_f32(v27, vabdq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v31, v26.f32[0]), v30, *v26.f32, 1), v29, v26, 2), v12)));
        v32.i32[3] = v32.i32[2];
        if ((vminvq_u32(v32) & 0x80000000) == 0)
        {
          return 0;
        }

        v33 = vmulq_f32(v24, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v26, v26, 0xCuLL), v26, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v25, v25), v25, 0xCuLL))), vextq_s8(vuzp1q_s32(v26, v26), v26, 0xCuLL), vextq_s8(vextq_s8(v25, v25, 0xCuLL), v25, 8uLL)));
        v6 = 0;
        if (fabsf((v33.f32[2] + vaddv_f32(*v33.f32)) + -1.0) > 0.000011)
        {
          return v6;
        }

        if (a6 >= 3.1416)
        {
          return v6;
        }

        if (a6 <= 0.0)
        {
          return v6;
        }

        v34 = vdup_n_s32(0x38D1B717u);
        v35 = vand_s8(vcge_f32(v34, vabs_f32(vadd_f32(vzip2_s32(*&vextq_s8(v26, v26, 8uLL), *&vextq_s8(*(a4 + 48), *(a4 + 48), 8uLL)), 0xBF80000080000000))), vcge_f32(v34, vabs_f32(vzip2_s32(*&vextq_s8(v24, v24, 8uLL), *&vextq_s8(v25, v25, 8uLL)))));
        if ((vpmin_u32(v35, v35).u32[0] & 0x80000000) == 0)
        {
          return v6;
        }

        if (!sub_246103D18(a1 + 32, a2, a3))
        {
          return 0;
        }

        *(a1 + 288) = *(a1 + 76);
        v44 = objc_msgSend_contents(*(a1 + 96), v42, v43);
        memcpy(v44, a3, 4 * *(a1 + 288));
        v6 = 0;
        v45 = *(a1 + 200);
        v46 = *(a1 + 192);
        v47 = *(a2 + 16);
        v48 = *(a2 + 32);
        v49 = *(a2 + 48);
        v50 = vmlaq_f32(vmulq_n_f32(v47, COERCE_FLOAT(*a2)), 0, v48);
        v51 = vmulq_f32(v47, 0);
        v52 = vmlaq_n_f32(v51, v48, COERCE_FLOAT(*a2));
        v53 = vmlaq_f32(v51, 0, v48);
        v54 = *(a2 + 64);
        v55 = vmlaq_f32(vmlaq_f32(v50, 0, v49), 0, v54);
        v56 = vmlaq_f32(vmlaq_f32(v52, 0, v49), 0, v54);
        v57 = vmlaq_f32(vmlaq_n_f32(v53, v49, COERCE_FLOAT(*a2)), 0, v54);
        v58 = vaddq_f32(v54, vmlaq_f32(v53, 0, v49));
        *(a1 + 224) = v55;
        *(a1 + 240) = v56;
        *(a1 + 256) = v57;
        *(a1 + 272) = v58;
        v59 = v46 / v45;
        if (v59 >= 0.001 && a6 >= 0.0 && fabsf(a6) > 0.000001)
        {
          v6 = 0;
          v60 = *(a1 + 164);
          v61 = *(a1 + 168);
          if (v61 > v60)
          {
            v99 = *(a1 + 168);
            if (v61 >= 0.001)
            {
              v98 = *(a1 + 164);
              if (v60 >= 0.001 && fabsf(a6 + -3.1416) > 0.000032416)
              {
                v96 = v57;
                v97 = v58;
                v94 = v55;
                v95 = v56;
                v62 = 1.0 / tanf(a6 * 0.5);
                *&v63 = v62 / v59;
                LODWORD(v64) = 0;
                *(&v64 + 1) = v62;
                v65.i64[0] = 0;
                v65.f32[2] = -v99 / (v99 - v98);
                v66.i64[0] = 0;
                v66.i32[3] = 0;
                v65.i32[3] = -1.0;
                v66.f32[2] = v65.f32[2] * v98;
                v67 = *(a4 + 16);
                v68 = *(a4 + 32);
                v69 = *(a4 + 48);
                v70 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v94.f32[0]), v67, *v94.f32, 1), v68, v94, 2), v69, v94, 3);
                v71 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v95.f32[0]), v67, *v95.f32, 1), v68, v95, 2), v69, v95, 3);
                v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v96.f32[0]), v67, *v96.f32, 1), v68, v96, 2), v69, v96, 3);
                v73 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*a4, v97.f32[0]), v67, *v97.f32, 1), v68, v97, 2), v69, v97, 3);
                v100[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v70.f32[0]), v64, *v70.f32, 1), v65, v70, 2), v66, v70, 3);
                v100[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v71.f32[0]), v64, *v71.f32, 1), v65, v71, 2), v66, v71, 3);
                v100[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v72.f32[0]), v64, *v72.f32, 1), v65, v72, 2), v66, v72, 3);
                v100[3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v63, v73.f32[0]), v64, *v73.f32, 1), v65, v73, 2), v66, v73, 3);
                v76 = objc_msgSend_commandBuffer(*(*a1 + 8), v74, v75);
                v78 = objc_msgSend_renderCommandEncoderWithDescriptor_(v76, v77, *(a1 + 152));
                objc_msgSend_setLabel_(v78, v79, @"CoverageScoreRenderEncoder");
                objc_msgSend_setRenderPipelineState_(v78, v80, *(a1 + 16));
                objc_msgSend_setDepthStencilState_(v78, v81, *(a1 + 24));
                objc_msgSend_setVertexBuffer_offset_atIndex_(v78, v82, *(a1 + 88), 0, 0);
                objc_msgSend_setVertexBytes_length_atIndex_(v78, v83, v100, 64, 1);
                objc_msgSend_setVertexBuffer_offset_atIndex_(v78, v84, *(a1 + 96), 0, 2);
                objc_msgSend_setVertexBytes_length_atIndex_(v78, v85, a1 + 288, 4, 3);
                objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v78, v86, 3, 0, (36 * *(a1 + 288)));
                v101[0] = 0;
                v101[1] = 0;
                v102 = vcvtq_f64_u64(*(a1 + 192));
                v103 = xmmword_24613FB40;
                objc_msgSend_setViewport_(v78, v87, v101);
                objc_msgSend_endEncoding(v78, v88, v89);

                if (a5)
                {
                  sub_24613E600(a1, v76);
                }

                objc_msgSend_commit(v76, v90, v91, *&v94, *&v95, *&v96, *&v97);
                objc_msgSend_waitUntilCompleted(v76, v92, v93);

                return 1;
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

void sub_24613E600(uint64_t *a1, void *a2)
{
  v10 = objc_msgSend_renderCommandEncoderWithDescriptor_(a2, a2, a1[18]);
  objc_msgSend_setLabel_(v10, v3, @"CoverageHeatmapRenderEncoder");
  objc_msgSend_setRenderPipelineState_(v10, v4, a1[1]);
  objc_msgSend_setVertexBuffer_offset_atIndex_(v10, v5, a1[13], 0, 0);
  objc_msgSend_setFragmentTexture_atIndex_(v10, v6, a1[16], 0);
  objc_msgSend_drawPrimitives_vertexStart_vertexCount_(v10, v7, 4, 0, 4);
  objc_msgSend_endEncoding(v10, v8, v9);
}

void cva::imageViewFromPixelBuffer<float>()
{
    ;
  }
}

void cva::imageViewFromPixelBuffer<unsigned char>()
{
    ;
  }
}

uint64_t std::ostream::operator<<()
{
  return MEMORY[0x2821F78F8]();
}

{
  return MEMORY[0x2821F7900]();
}

void operator delete[]()
{
    ;
  }
}

void operator delete(void *__p)
{
    ;
  }
}

void operator delete(void *__p, const std::nothrow_t *a2)
{
    ;
  }
}

void operator delete()
{
    ;
  }
}

void *__cdecl operator new[](size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}

simd_float2x2 __invert_f2(simd_float2x2 a1)
{
  MEMORY[0x282204398](a1, *(&a1 + 8));
  result.columns[1] = v2;
  result.columns[0] = v1;
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

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}