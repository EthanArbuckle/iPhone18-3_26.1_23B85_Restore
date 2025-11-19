uint64_t re::SmoothDeformer::deformGPU(uint64_t a1, uint64_t a2, void **this, uint64_t *a4)
{
  v37 = *MEMORY[0x1E69E9840];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Smoothing");
  v29 = a4;
  v32 = *a4;
  v31 = *(*a4 + 48);
  if (v31)
  {
    v8 = 0;
    v30 = a2;
    do
    {
      v9 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v32 + 8, v8);
      v11 = *(a2 + 8);
      if (v11 <= v8)
      {
        memset(v36, 0, sizeof(v36));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v33 = 136315906;
        *&v33[4] = "operator[]";
        *&v33[12] = 1024;
        *&v33[14] = 468;
        *&v33[18] = 2048;
        *&v33[20] = v8;
        v34 = 2048;
        v35 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_25:
        re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v13, v14);
        _os_crash();
        __break(1u);
      }

      v12 = *(a2 + 16) + (v8 << 7);
      if (*(v12 + 104) && *(v12 + 112) && *(v12 + 120))
      {
        v13 = *(v9 + 8);
        v14 = v29[6];
        if (v14 <= v13)
        {
          goto LABEL_25;
        }

        v15 = (v29[5] + 312 * v13);
        LOBYTE(v36[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v16 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v36) + 20);
        LOBYTE(v36[0]) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
        v17 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 15, v36);
        if (*v12)
        {
          v18 = *(v15[16] + 20 * v17 + 4);
          v19 = [*(a1 + 16) maxTotalThreadsPerThreadgroup];
          if (*v12)
          {
            v20 = 0;
            v21 = v19;
            v22 = (v16 / v18 + v19 - 1) / v19;
            do
            {
              [*this setComputePipelineState:*(a1 + 16)];
              if (v20)
              {
                if (v20)
                {
                  v23 = *(v12 + 48);
                  v24 = (v12 + 40);
                }

                else
                {
                  v23 = *(v12 + 72);
                  v24 = (v12 + 64);
                }
              }

              else
              {
                LOBYTE(v36[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v23 = *(v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v36) + 24);
                LOBYTE(v36[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v24 = (v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, v36) + 16);
              }

              [*this setBuffer:v23 offset:*v24 atIndex:1];
              if (v20 == *v12 - 1)
              {
                LOBYTE(v36[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v25 = *(v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v36) + 24);
                LOBYTE(v36[0]) = 1;
                re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
                v26 = (v15[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, v36) + 16);
              }

              else if (v20)
              {
                v25 = *(v12 + 72);
                v26 = (v12 + 64);
              }

              else
              {
                v25 = *(v12 + 48);
                v26 = (v12 + 40);
              }

              [*this setBuffer:v25 offset:*v26 atIndex:0];
              [*this setBuffer:**(v12 + 104) offset:*(*(v12 + 104) + 16) atIndex:2];
              [*this setBuffer:**(v12 + 112) offset:*(*(v12 + 112) + 16) atIndex:3];
              [*this setBuffer:**(v12 + 120) offset:*(*(v12 + 120) + 16) atIndex:4];
              [*this setBuffer:*(v12 + 96) offset:*(v12 + 88) atIndex:5];
              [*this setBuffer:*(v12 + 24) offset:*(v12 + 16) atIndex:6];
              v27 = *this;
              *&v36[0] = v22;
              *(v36 + 8) = vdupq_n_s64(1uLL);
              *v33 = v21;
              *&v33[8] = *(v36 + 8);
              [v27 dispatchThreadgroups:v36 threadsPerThreadgroup:v33];
              ++v20;
            }

            while (v20 < *v12);
          }
        }
      }

      ++v8;
      a2 = v30;
    }

    while (v8 != v31);
  }

  return [*this popDebugGroup];
}

void re::SmoothDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v63 = *MEMORY[0x1E69E9840];
  v60 = *a3;
  v59 = *(*a3 + 48);
  if (v59)
  {
    v3 = a2;
    v4 = 0;
    while (1)
    {
      v5 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v60 + 8, v4);
      if (*(v3 + 8) <= v4)
      {
        goto LABEL_34;
      }

      v61 = v4;
      v7 = *(v3 + 16) + (v4 << 7);
      if (*(v7 + 104))
      {
        if (*(v7 + 112) && *(v7 + 120))
        {
          v8 = *(v5 + 8);
          v9 = a3[6];
          if (v9 <= v8)
          {
            goto LABEL_35;
          }

          v10 = (a3[5] + 312 * v8);
          LOBYTE(v62[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v10, 1u);
          v11 = *(v10[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v10 + 7, v62) + 20);
          LOBYTE(v62[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v10, 1u);
          v12 = *(v10[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v10 + 15, v62) + 4);
          v13 = re::BufferView::contents(*(v7 + 104));
          v14 = re::BufferView::contents(*(v7 + 112));
          v15 = re::BufferView::contents(*(v7 + 120));
          v16 = *(v7 + 80);
          v17 = *(v7 + 88);
          LOBYTE(v62[0]) = 1;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v10, 1u);
          v18 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v10 + 23, v62);
          v21 = *v7;
          if (*v7)
          {
            break;
          }
        }
      }

LABEL_28:
      v4 = v61 + 1;
      v3 = a2;
      if (v61 + 1 == v59)
      {
        return;
      }
    }

    v22 = v15;
    v23 = v13;
    v24 = v12;
    v25 = v11;
    v26 = 0;
    v27 = v11 / v12;
    v28 = v16 + v17;
    v29 = v10[24] + 32 * v18;
    v30 = (*(v29 + 8) + *(v29 + 16));
    v31 = *(v29 + 20);
    v32 = v31 / 0xCuLL;
    v33 = *(v7 + 44);
    v34 = (*(v7 + 32) + *(v7 + 40));
    v35 = v33 / 0xCuLL;
    v51 = v33;
    v54 = v24;
    v55 = v25;
    v52 = v22;
    v53 = v23;
    while (v25 < v24)
    {
LABEL_25:
      if (v33 >= 0xC)
      {
        v57 = v26;
        memmove(v30, v34, 12 * v35);
        v33 = v51;
        v22 = v52;
        v26 = v57;
        v23 = v53;
        v24 = v54;
        v25 = v55;
        v21 = *v7;
      }

      if (++v26 >= v21)
      {
        goto LABEL_28;
      }
    }

    v36 = 0;
    while (1)
    {
      v37 = v36 ? *(v14 - 4 + 4 * v36) + 1 : 1;
      v38 = *(v14 + 4 * v36);
      if (v37 < v38)
      {
        break;
      }

      v42 = 0.0;
      v41 = 0uLL;
LABEL_22:
      if (v36 == v32)
      {
        goto LABEL_32;
      }

      if (v36 == v35)
      {
        goto LABEL_33;
      }

      v48 = &v30[12 * v36];
      v19.i64[0] = *v48;
      v19.i32[2] = *(v48 + 2);
      v49 = vaddq_f32(v19, vmulq_n_f32(vmulq_n_f32(vdivq_f32(v41, vdupq_lane_s32(*&v42, 0)), *(v7 + 4)), *(v28 + 4 * v36)));
      v50 = &v34[12 * v36];
      *v50 = v49.i64[0];
      *(v50 + 2) = v49.i32[2];
      if (++v36 >= v27)
      {
        goto LABEL_25;
      }
    }

    v39 = &v30[12 * v36];
    v40 = (v22 + 4 * v37);
    v41 = 0uLL;
    v42 = 0.0;
    v43 = (v23 + 4 * v37);
    while (1)
    {
      v45 = *v43++;
      v44 = v45;
      if (v32 <= v45)
      {
        break;
      }

      if (v36 >= v32)
      {
        goto LABEL_31;
      }

      v46 = &v30[12 * v44];
      v19.i64[0] = *v46;
      v19.i32[2] = *(v46 + 2);
      v47 = *v40++;
      v20.i64[0] = *v39;
      v20.i32[2] = *(v39 + 2);
      v19 = vmulq_n_f32(vsubq_f32(v19, v20), v47);
      v41 = vaddq_f32(v41, v19);
      *&v42 = *&v42 + v47;
      if (v38 <= ++v37)
      {
        goto LABEL_22;
      }
    }

    re::internal::assertLog(6, v23, *v41.i64, v42, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v44, v31 / 0xCuLL);
    _os_crash();
    __break(1u);
LABEL_31:
    re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v36, v31 / 0xCuLL);
    _os_crash();
    __break(1u);
LABEL_32:
    re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v31 / 0xCuLL, v31 / 0xCuLL);
    _os_crash();
    __break(1u);
LABEL_33:
    re::internal::assertLog(6, v23, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v35, v35);
    _os_crash();
    __break(1u);
LABEL_34:
    memset(v62, 0, sizeof(v62));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_35:
    re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v8, v9);
    _os_crash();
    __break(1u);
  }
}

re::StringID *re::SmoothDeformerModelUtil::envelopeBufferNameForSmoothDataIndex@<X0>(re::SmoothDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 50);
  if (v3 && *(v3 + 8) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 16) + 16 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

uint64_t re::SmoothDeformerModelUtil::computeSmoothDeformerModelSizeExcludingMetalBuffers(re::SmoothDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 50);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  v4 = 2 * v2[4] + 16 * v3 + 48;
  if (v3)
  {
    v5 = (v2[2] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void re::SmoothDeformer::~SmoothDeformer(re::SmoothDeformer *this)
{
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }
}

{
  v2 = *(this + 2);
  if (v2)
  {

    *(this + 2) = 0;
  }

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::SmoothDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  result = **a2;
  if (result)
  {
    if (v2[1])
    {
      result = (*(*result + 40))(result, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }

  return result;
}

void *re::internal::Callable<re::SmoothDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09B98;
  return result;
}

void *re::internal::Callable<re::SmoothDeformer::allocateBuffers(re::PerFrameAllocator &,re::PerFrameGPUDataAllocator &,re::DeformationExecutionMode,re::DeformationParameters &,re::BufferInitializationOptions &,re::DynamicArray<re::PostDeformationBlit> &,re::DynamicArray<re::EventWait> &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5D09B98;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14SmoothDeformerENS2_19SmoothDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D09BF0;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14SmoothDeformerENS2_19SmoothDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    re::FixedArray<re::StringID>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_14SmoothDeformerENS2_19SmoothDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

float32x2_t re::TonemapUserParameters::computeDirectParameters@<D0>(re::TonemapUserParameters *this@<X0>, float32x2_t *a2@<X8>)
{
  v4 = *(this + 1);
  if (v4 > 1.0)
  {
    v4 = 1.0;
  }

  if (v4 < 0.0)
  {
    v4 = 0.0;
  }

  v5 = powf(v4, 2.2);
  v6 = *this;
  if (*this > 1.0)
  {
    v6 = 1.0;
  }

  if (v6 < 0.0)
  {
    v6 = 0.0;
  }

  v7 = *(this + 4);
  if (v7 > 1.0)
  {
    v7 = 1.0;
  }

  if (v7 < 0.0)
  {
    v7 = 0.0;
  }

  v21 = v7;
  v9 = *(this + 2);
  v8 = *(this + 3);
  if (v8 > 1.0)
  {
    v8 = 1.0;
  }

  if (v8 < 0.0)
  {
    v8 = 0.0;
  }

  if (v9 > 10.0)
  {
    v9 = 10.0;
  }

  if (v9 >= 0.0)
  {
    v10 = v9;
  }

  else
  {
    v10 = 0.0;
  }

  v20 = v10;
  v11 = v5 * 0.5;
  v12 = (v5 * 0.5) + (v6 * (0.0 - (v5 * 0.5)));
  v13 = (1.0 - v12) + (v8 * (0.0 - (1.0 - v12)));
  v14 = (v5 * 0.5) + v13;
  v15 = v12 + v13;
  v16 = (exp2f(v10) + ((v5 * 0.5) + (1.0 - v12))) + -1.0;
  v17 = *(this + 5);
  a2[2].f32[0] = v16;
  a2[2].i32[1] = v17;
  a2->f32[0] = v11;
  a2->f32[1] = v12;
  a2[1].f32[0] = v14;
  a2[1].f32[1] = v15;
  v18.i32[1] = 1056964608;
  v18.f32[0] = v16 + v16;
  result = vmul_n_f32(vmul_n_f32(v18, v21), v20);
  a2[3] = result;
  return result;
}

float re::TonemapUserParameters::computeRenderParameters@<S0>(re::TonemapUserParameters *this@<X0>, uint64_t a2@<X8>)
{
  memset(v13, 0, sizeof(v13));
  re::TonemapUserParameters::computeDirectParameters(this, v13);
  re::TonemapUserParameters::computeRenderParametersImpl(this, v13, a2);
  v4 = *(a2 + 24);
  *(a2 + 24) = 1065353216;
  *(a2 + 124) = 1065353216;
  if (*(this + 44) == 1)
  {
    v5 = *(this + 12);
    if (v5 == 2)
    {
      v9 = *(this + 10);
    }

    else
    {
      if (v5 == 1)
      {
        v8 = *(this + 13) * 0.18;
      }

      else
      {
        v6 = 1.0;
        if (v5)
        {
LABEL_12:
          *(a2 + 128) = 1.0 / *(this + 13);
          goto LABEL_13;
        }

        v7 = re::computeTonemappingInverse(a2, *(this + 13));
        v8 = re::computeTonemapping(a2, v7 * 0.18);
      }

      v9 = v8 / 0.13;
    }

    v10 = *(this + 9);
    v6 = (v10 * re::computeTonemappingInverse(a2, v9 * 0.13)) / 0.18;
    goto LABEL_12;
  }

  v6 = 1.0;
  if (*(this + 32) == 1)
  {
    v6 = (re::computeTonemappingInverse(a2, *(this + 10) * 0.13) * *(this + 9)) / 0.18;
  }

LABEL_13:
  v11 = v4 * v6;
  *(a2 + 24) = v11;
  result = 1.0 / v11;
  *(a2 + 124) = result;
  return result;
}

float32x2_t re::TonemapUserParameters::computeRenderParametersImpl@<D0>(float *a1@<X0>, float *a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 120) = 1;
  v5 = a2[1];
  v6 = a2[3];
  v7 = a2[5];
  v46 = a2[7];
  v47 = a2[4];
  v8 = 1.0 / v47;
  v9 = *a2 * (1.0 / v47);
  v48 = a2[2] * (1.0 / v47);
  v10 = 1.0;
  if ((v48 - v9) != 0.0)
  {
    v10 = (v6 - v5) / (v48 - v9);
  }

  v44 = a2[6];
  *(a3 + 68) = -(v5 + (-v10 * v9)) / v10;
  *(a3 + 72) = 0x3F80000000000000;
  *(a3 + 80) = 1065353216;
  *(a3 + 84) = v7 * logf(v10);
  *(a3 + 88) = v7;
  v43 = v5 - (v10 * v9);
  v41 = v7 + -1.0;
  v42 = v7 * v10;
  v45 = (v7 * v10) * powf(v43 + (v10 * v9), v7 + -1.0);
  v11 = powf(v5, v7);
  if (v11 >= 0.00001)
  {
    v12 = v11;
  }

  else
  {
    v12 = 0.00001;
  }

  v13 = powf(v6, v7);
  if (v13 >= 0.00001)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0.00001;
  }

  v15 = powf(v46 + 1.0, v7) + -1.0;
  *a3 = v47;
  *(a3 + 4) = v8;
  *(a3 + 8) = v9;
  *(a3 + 12) = v48;
  *(a3 + 16) = v12;
  *(a3 + 20) = v14;
  v16 = (v9 * v45) / v12;
  v17 = logf(v12);
  v18 = logf(v9);
  *(a3 + 44) = xmmword_1E3063230;
  *(a3 + 60) = v17 - (v16 * v18);
  *(a3 + 64) = v16;
  v19 = v15 + 1.0;
  v20 = v19 - v14;
  v21 = 0.0;
  v22 = (v19 - v14) <= 0.0;
  v23 = 0.0;
  v24 = 0.0;
  v25 = 0.0;
  v26 = 0.0;
  if (!v22)
  {
    v24 = (v8 * v44) + 1.0;
    v25 = ((v24 - v48) * (v42 * powf(v43 + (v10 * v48), v41))) / v20;
    v27 = logf(v20);
    v28 = logf(v24 - v48);
    v21 = 0.0;
    v26 = v27 - (v25 * v28);
    v23 = -1.0;
  }

  *(a3 + 100) = v23;
  *(a3 + 104) = v23;
  *(a3 + 92) = v24;
  *(a3 + 96) = v19;
  *(a3 + 108) = v26;
  *(a3 + 112) = v25;
  v29 = v23 * (1.0 - v24);
  if (v29 > 0.0)
  {
    v30 = logf(v29);
    v21 = expf(v26 + (v25 * v30));
  }

  v31 = 1.0 / (v19 + (v21 * v23));
  v32 = (a3 + 56);
  v33 = 3;
  do
  {
    *(v32 - 2) = v31 * *(v32 - 2);
    *v32 = v31 * *v32;
    v32 += 6;
    --v33;
  }

  while (v33);
  *(a3 + 24) = exp2f(a1[7]);
  v49 = a1[6];
  v34.f32[0] = powf(0.18 / a1[9], 1.0 - v49);
  *(a3 + 28) = v34.i32[0];
  v34.f32[1] = v49;
  *(a3 + 32) = v49;
  __asm { FMOV            V1.2S, #1.0 }

  result = vdiv_f32(_D1, v34);
  *(a3 + 36) = result;
  *(a3 + 128) = 1065353216;
  return result;
}

float re::computeTonemappingInverse(float *a1, float a2)
{
  v3 = 1.0;
  if (a2 <= 1.0)
  {
    v3 = a2;
  }

  v4 = 0.0;
  if (v3 < 0.0)
  {
    v3 = 0.0;
  }

  if (v3 <= a1[5])
  {
    v5 = v3 > a1[4];
  }

  else
  {
    v5 = 2;
  }

  v6 = &a1[6 * v5];
  v8 = v6[11];
  v7 = v6 + 11;
  v9 = v8;
  v10 = v7[2];
  v11 = (v3 - v7[1]) / v7[3];
  if (v11 > 0.0)
  {
    v13 = v7[4];
    v12 = v7[5];
    v14 = logf(v11);
    v4 = expf((v14 - v13) / v12);
  }

  return (*a1 * powf(a1[9] * (v9 + (v4 / v10)), a1[10])) / a1[6];
}

float re::computeTonemapping(float *a1, float a2)
{
  v3 = (powf(a1[6] * a2, a1[8]) * a1[7]) * a1[1];
  if (v3 <= a1[3])
  {
    v4 = v3 > a1[2];
  }

  else
  {
    v4 = 2;
  }

  v5 = &a1[6 * v4];
  v7 = v5[11];
  v6 = v5 + 11;
  v8 = v6[3];
  v9 = v6[1];
  v10 = (v3 - v7) * v6[2];
  v11 = 0.0;
  if (v10 > 0.0)
  {
    v13 = v6[4];
    v12 = v6[5];
    v14 = logf(v10);
    v11 = expf(v13 + (v12 * v14));
  }

  return v9 + (v11 * v8);
}

uint64_t re::computeTonemappingInverseAccelerated(float *a1, uint64_t a2, float *a3, unint64_t a4)
{
  v6 = a2;
  v25 = a1;
  if (a4)
  {
    v8 = a2;
    v9 = a4;
    do
    {
      v10 = v9 >> 1;
      v11 = (v8 + 4 * (v9 >> 1));
      v13 = *v11;
      v12 = v11 + 1;
      v9 += ~(v9 >> 1);
      if (v13 < a1[4])
      {
        v8 = v12;
      }

      else
      {
        v9 = v10;
      }
    }

    while (v9);
    v14 = v8 - a2;
    v15 = (v8 - a2) >> 2;
    re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 0, a2, a3, v15);
    v16 = a1[5];
    v17 = v6;
    v18 = a4;
    do
    {
      v19 = v18 >> 1;
      v20 = (v17 + 4 * (v18 >> 1));
      v22 = *v20;
      v21 = v20 + 1;
      v18 += ~(v18 >> 1);
      if (v22 < v16)
      {
        v17 = v21;
      }

      else
      {
        v18 = v19;
      }
    }

    while (v18);
    v6 = v8;
  }

  else
  {
    re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 0, a2, a3, 0);
    v15 = 0;
    v14 = 0;
    v17 = v6;
  }

  v23 = (a3 + v14);
  re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 1, v6, v23, (v17 - v6) >> 2);
  return re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(&v25, 2, v17, (v23 + v17 - v6), a4 - (v15 + ((v17 - v6) >> 2)));
}

uint64_t re::computeTonemappingInverseAccelerated(re::TonemapParameters const&,float *,float *,unsigned long)::$_0::operator()(float **a1, int a2, uint64_t a3, float *a4, unint64_t a5)
{
  v7 = *a1;
  v8 = &(*a1)[6 * a2];
  v24 = *(v8 + 44);
  v23 = 1.0 / *(v8 + 52);
  v22 = -*(v8 + 60);
  v21 = 1.0 / *(v8 + 64);
  v20 = 1.0 / *(v8 + 56);
  v19 = -*(v8 + 48);
  v18 = *v7 / v7[6];
  MEMORY[0x1E69082E0](a3, 1, &v19, a4, 1, a5);
  MEMORY[0x1E69082F0](a4, 1, &v20, a4, 1, a5);
  __B = 0.0;
  v9 = a4;
  if (a5)
  {
    v10 = a5;
    v9 = a4;
    do
    {
      v11 = v10 >> 1;
      v12 = &v9[v10 >> 1];
      v14 = *v12;
      v13 = v12 + 1;
      v10 += ~(v10 >> 1);
      if (v14 > 0.0)
      {
        v10 = v11;
      }

      else
      {
        v9 = v13;
      }
    }

    while (v10);
  }

  vDSP_vramp(&__B, &__B, a4, 1, (v9 - a4));
  v16 = a5 - ((v9 - a4) >> 2);
  vvlogf(v9, v9, &v16);
  MEMORY[0x1E69082E0](v9, 1, &v22, v9, 1, v16);
  MEMORY[0x1E69082F0](v9, 1, &v21, v9, 1, v16);
  vvexpf(v9, v9, &v16);
  MEMORY[0x1E69082F0](a4, 1, &v23, a4, 1, a5);
  MEMORY[0x1E69082E0](a4, 1, &v24, a4, 1, a5);
  return MEMORY[0x1E69082F0](a4, 1, &v18, a4, 1, a5);
}

void *re::allocInfo_TonemapUserParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_475, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_475))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BBBA0, "TonemapUserParameters");
    __cxa_guard_release(&_MergedGlobals_475);
  }

  return &unk_1EE1BBBA0;
}

void re::initInfo_TonemapUserParameters(re *this, re::IntrospectionBase *a2)
{
  v47[0] = 0xA8AD3C79569E427ELL;
  v47[1] = "TonemapUserParameters";
  if (v47[0])
  {
    if (v47[0])
    {
    }
  }

  *(this + 2) = v48;
  if ((atomic_load_explicit(&qword_1EE1BBB48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BBB48);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_float(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "toeStrength";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BBB50 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "toeLength";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x400000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1BBB58 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_float(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "shoulderStrength";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1BBB60 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_float(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "shoulderLength";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xC00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1BBB68 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_float(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "shoulderAngle";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x1000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1BBB70 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_float(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "gamma";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x1400000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1BBB78 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_float(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "exposure";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x1C00000008;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1BBB80 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_BOOL(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "enableExposureCompensation";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x2000000009;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1BBB88 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_float(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "exposureCompensationInputScalar";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x240000000ALL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1BBB90 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_float(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "exposureCompensationTargetScalar";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x280000000BLL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1BBB98 = v45;
      __cxa_guard_release(&qword_1EE1BBB48);
    }
  }

  *(this + 2) = 0x3C00000008;
  *(this + 6) = 4;
  *(this + 14) = 1;
  *(this + 14) = 10;
  *(this + 8) = &qword_1EE1BBB50;
  *(this + 9) = re::internal::defaultConstruct<re::TonemapUserParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TonemapUserParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::TonemapUserParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::TonemapUserParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v46 = v48;
}

double re::internal::defaultConstruct<re::TonemapUserParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = xmmword_1E3054790;
  *(a3 + 16) = xmmword_1E304F3C0;
  *(a3 + 32) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 36) = result;
  *(a3 + 44) = 0;
  *(a3 + 48) = 0x3F80000000000000;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::TonemapUserParameters>(uint64_t a1)
{
  *a1 = xmmword_1E3054790;
  *(a1 + 16) = xmmword_1E304F3C0;
  *(a1 + 32) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 36) = result;
  *(a1 + 44) = 0;
  *(a1 + 48) = 0x3F80000000000000;
  *(a1 + 56) = 0;
  return result;
}

uint64_t re::RenderGraphBuilder::RenderGraphBuilder(uint64_t a1, re::RenderGraphResourceDescriptions *a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  re::RenderGraphResourceDescriptions::swap(a1, a2);
  *(a1 + 296) = a1 + 8;
  *(a1 + 304) = a1 + 48;
  *(a1 + 312) = a1 + 88;
  *(a1 + 320) = a1 + 128;
  *(a1 + 328) = a1 + 168;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 396) = 0u;
  *(a1 + 412) = 0x7FFFFFFFLL;
  *(a1 + 424) = 0;
  *(a1 + 432) = 0u;
  *(a1 + 448) = 0;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0;
  *(a1 + 568) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 576) = 0u;
  *(a1 + 592) = 0;
  *(a1 + 615) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 656) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 648) = 0;
  *(a1 + 640) = 0;
  v7 = *(a3 + 8);
  *(a1 + 624) = *a3;
  *(a1 + 632) = v7;
  *a3 = 0;
  *(a3 + 8) = 0;
  v8 = *(a1 + 640);
  *(a1 + 640) = *(a3 + 16);
  *(a3 + 16) = v8;
  v9 = *(a1 + 656);
  *(a1 + 656) = *(a3 + 32);
  *(a3 + 32) = v9;
  ++*(a3 + 24);
  ++*(a1 + 648);
  *(a1 + 664) = a4;
  return a1;
}

void re::RenderGraphBuilder::~RenderGraphBuilder(re::RenderGraphBuilder *this)
{
  re::DynamicArray<re::RenderGraphScopeOutput>::deinit(this + 624);
  re::DynamicArray<unsigned long>::deinit(this + 544);
  re::DynamicArray<unsigned long>::deinit(this + 504);
  re::DynamicArray<unsigned long>::deinit(this + 464);
  re::DynamicArray<unsigned long>::deinit(this + 424);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 47);
  re::DynamicArray<re::RenderGraphResourceSetup>::deinit(this + 336);

  re::RenderGraphResourceDescriptions::~RenderGraphResourceDescriptions(this);
}

uint64_t re::RenderGraphBuilder::createCompiledGraph(re *a1, uint64_t a2)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 832, 8);
  v6 = *(a1 + 83);

  return re::RenderGraphCompiled::RenderGraphCompiled(v5, a1, a1 + 624, a1 + 336, a2, v6);
}

void re::RenderGraphBuilder::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 4))
    {
      return;
    }

    v7 = *re::graphicsLogObjects(a1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v6 = *(a2 + 8);
    if (v8)
    {
      v12 = 67109120;
      v13 = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Attempting to read from an invalid non-optional target (%u).", &v12, 8u);
      v6 = *(a2 + 8);
    }
  }

  v10 = *(a3 + 8);
  v9 = *(a3 + 12);
  v12 = *a3;
  v13 = v9;
  v14 = xmmword_1E30474D0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v10;
  v19 = 0;
  v20 = v6;
  re::DynamicArray<re::RigTransform>::add((a1 + 464), &v12);
  if (*(a3 + 12) != 12)
  {
    v11 = re::RenderGraphCompiled::targetDescription(a1, a2);
    *(v11 + 68) |= 1u;
  }
}

uint64_t re::RenderGraphBuilder::write(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 33))
    {
      return result;
    }

    v7 = *re::graphicsLogObjects(result);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v6 = *(a2 + 8);
    if (v8)
    {
      LODWORD(v11[0]) = 67109120;
      HIDWORD(v11[0]) = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Attempting to write to an invalid non-optional target (%u).", v11, 8u);
      v6 = *(a2 + 8);
    }
  }

  v11[0] = *a3;
  v12 = xmmword_1E30474D0;
  v13 = *(a3 + 32);
  v14 = *(a3 + 36);
  v15 = 2;
  v16 = 0;
  v17 = v6;
  re::DynamicArray<re::RigTransform>::add((v5 + 58), v11);
  *(v5[62] + (v5[60] << 6) - 48) = *(a3 + 16);
  result = re::RenderGraphCompiled::targetDescription(v5, a2);
  if (*(a3 + 4) == 5)
  {
    v9 = 2;
  }

  else
  {
    v9 = 4;
  }

  *(result + 68) |= v9;
  v10 = *(result + 88);
  if (v10 != -1)
  {
    v5[73] |= v10;
  }

  return result;
}

double re::RenderGraphBuilder::read(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v5 = *(a2 + 8);
  if (v5 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 4))
    {
      return result;
    }

    v6 = *re::graphicsLogObjects(a1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v5 = *(a2 + 8);
    if (v7)
    {
      LODWORD(v9[0]) = 67109120;
      HIDWORD(v9[0]) = v5;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attempting to read from an invalid non-optional buffer (%u).", v9, 8u);
      v5 = *(a2 + 8);
    }
  }

  v9[0] = 0;
  v10 = xmmword_1E30474D0;
  v11 = 0;
  v12 = 0;
  v13 = 2;
  v14 = 0;
  v15 = v5;
  *&result = re::DynamicArray<re::RigTransform>::add((a1 + 464), v9).n128_u64[0];
  return result;
}

void re::RenderGraphBuilder::write(void *a1, uint64_t a2, uint64_t a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 8);
  if (v6 == -1 || *(a2 + 12) == -1)
  {
    if (*(a3 + 33))
    {
      return;
    }

    v7 = *re::graphicsLogObjects(a1);
    v8 = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    v6 = *(a2 + 8);
    if (v8)
    {
      *buf = 67109120;
      *&buf[4] = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Attempting to write to an invalid non-optional buffer (%u).", buf, 8u);
      v6 = *(a2 + 8);
    }
  }

  v9 = *(a3 + 4);
  if (v9 == 1)
  {
    v9 = 11;
  }

  *buf = *a3;
  *&buf[4] = v9;
  v14 = xmmword_1E30474D0;
  LOWORD(v15) = 0;
  *(&v15 + 4) = 0;
  HIDWORD(v15) = 2;
  LOBYTE(v16) = 0;
  DWORD1(v16) = v6;
  re::DynamicArray<re::RigTransform>::add((a1 + 58), buf);
  v10 = a1[39];
  v11 = *(a2 + 12);
  if (*(v10 + 16) <= v11)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v12 = *(*(v10 + 32) + 48 * v11 + 32);
  if (v12 != -1)
  {
    a1[73] |= v12;
  }
}

uint64_t re::RenderGraphBuilder::handleAutoMsaaTargets(re::RenderGraphBuilder *this)
{
  v37 = *MEMORY[0x1E69E9840];
  v22 = 0;
  v19[1] = 0;
  v20 = 0;
  v19[0] = 0;
  v21 = 0;
  re::DynamicArray<re::RigTransform>::setCapacity(v19, 3uLL);
  v2 = *(this + 60);
  if (v2)
  {
    v3 = v2 << 6;
    v4 = (*(this + 62) + 52);
    while (1)
    {
      v5 = *v4;
      v6 = *(this + 37);
      v7 = *(v6 + 16);
      if (v7 <= v5)
      {
        break;
      }

      v8 = (*(v6 + 32) + 48 * v5);
      if (!*v8)
      {
        v9 = *(this + 38);
        v5 = v8[7];
        v7 = *(v9 + 16);
        if (v7 <= v5)
        {
          goto LABEL_19;
        }

        v10 = *(v9 + 32) + 112 * v5;
        v12 = *(v10 + 84);
        v11 = (v10 + 84);
        if (v12 != -1)
        {
          v13 = *(v4 - 1);
          v15 = *(v4 - 13);
          v14 = *(v4 - 9);
          v34 = *(v4 - 5);
          v35 = v13;
          v32 = v15;
          v33 = v14;
          if ((DWORD1(v15) - 1) <= 2)
          {
            DWORD1(v32) = DWORD1(v15) + 5;
            re::DynamicArray<re::RigTransform>::add(v19, &v32);
            *v4 = *v11;
          }
        }
      }

      v4 += 16;
      v3 -= 64;
      if (!v3)
      {
        goto LABEL_11;
      }
    }

    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_19:
    v23 = 0;
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v32 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v24 = 136315906;
    v25 = "operator[]";
    v26 = 1024;
    v27 = 789;
    v28 = 2048;
    v29 = v5;
    v30 = 2048;
    v31 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

LABEL_11:
  if (v20)
  {
    v16 = v22;
    v17 = v20 << 6;
    do
    {
      re::DynamicArray<re::RigTransform>::add((this + 464), v16);
      v16 += 64;
      v17 -= 64;
    }

    while (v17);
  }

  result = v19[0];
  if (v19[0])
  {
    if (v22)
    {
      return (*(*v19[0] + 40))();
    }
  }

  return result;
}

uint64_t re::RenderGraphBuilder::handleProgrammableBlendingTargets(re::RenderGraphBuilder *this)
{
  v32 = *MEMORY[0x1E69E9840];
  v17 = 0;
  v14[1] = 0;
  v15 = 0;
  v14[0] = 0;
  v16 = 0;
  re::DynamicArray<re::RigTransform>::setCapacity(v14, 8uLL);
  v2 = *(this + 60);
  if (v2)
  {
    v3 = *(this + 62);
    v4 = v2 << 6;
    do
    {
      v5 = *(this + 37);
      v6 = *(v3 + 13);
      v7 = *(v5 + 16);
      if (v7 <= v6)
      {
        v18 = 0;
        v30 = 0u;
        v31 = 0u;
        v28 = 0u;
        v29 = 0u;
        v27 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v19 = 136315906;
        v20 = "operator[]";
        v21 = 1024;
        v22 = 789;
        v23 = 2048;
        v24 = v6;
        v25 = 2048;
        v26 = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (!*(*(v5 + 32) + 48 * v6) && *(v3 + 1) == 1 && ((*(this + 617) >> *v3) & 1) != 0)
      {
        v9 = v3[1];
        v8 = v3[2];
        v10 = *v3;
        *&v30 = *(v3 + 6);
        v28 = v9;
        v29 = v8;
        v27 = v10;
        DWORD1(v27) = 10;
        re::DynamicArray<re::RigTransform>::add(v14, &v27);
      }

      v3 += 4;
      v4 -= 64;
    }

    while (v4);
  }

  if (v15)
  {
    v11 = v17;
    v12 = v15 << 6;
    do
    {
      re::DynamicArray<re::RigTransform>::add((this + 464), v11);
      v11 += 64;
      v12 -= 64;
    }

    while (v12);
  }

  result = v14[0];
  if (v14[0])
  {
    if (v17)
    {
      return (*(*v14[0] + 40))();
    }
  }

  return result;
}

void *re::RenderGraphBuilder::handleForceResolve(void *this)
{
  v1 = this[60];
  if (v1)
  {
    v2 = this[37];
    v3 = v1 << 6;
    v4 = *(v2 + 16);
    for (i = (this[62] + 52); ; i += 16)
    {
      v6 = *i;
      if (v4 <= v6)
      {
        break;
      }

      v7 = (*(v2 + 32) + 48 * v6);
      if (!*v7)
      {
        v8 = this[38];
        v9 = v7[7];
        if (*(v8 + 16) <= v9)
        {
          goto LABEL_13;
        }

        v10 = *(v8 + 32) + 112 * v9;
        v12 = *(v10 + 84);
        v11 = (v10 + 84);
        if (v12 != -1 && *(i - 12) - 6 <= 2)
        {
          *v11 = -1;
        }
      }

      v3 -= 64;
      if (!v3)
      {
        return this;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return this;
}

double re::RenderGraphBuilder::setVisibilityResultsBuffer(uint64_t a1, uint64_t a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (v3 == -1 || *(a2 + 12) == -1)
  {
    v6 = *re::graphicsLogObjects(a1);
    v7 = os_log_type_enabled(v6, OS_LOG_TYPE_ERROR);
    v3 = *(a2 + 8);
    if (v7)
    {
      LODWORD(v9[0]) = 67109120;
      HIDWORD(v9[0]) = v3;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Attempting to use an invalid buffer for visibility results (%u).", v9, 8u);
      v3 = *(a2 + 8);
    }
  }

  v9[0] = 0x900000000;
  v10 = xmmword_1E30474D0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 2;
  v15 = 0;
  v16 = v3;
  *&result = re::DynamicArray<re::RigTransform>::add((a1 + 464), v9).n128_u64[0];
  return result;
}

void *re::RenderGraphBuilder::startNode(re::RenderGraphBuilder *this, re::RenderGraphNodeBase *a2)
{
  v5 = a2;
  *(this + 55) = 0;
  ++*(this + 112);
  *(this + 60) = 0;
  ++*(this + 122);
  *(this + 65) = 0;
  ++*(this + 132);
  *(this + 70) = 0;
  ++*(this + 142);
  *(this + 73) = 0;
  *(this + 148) = 0;
  *(this + 600) = 0u;
  *(this + 615) = 0;
  re::DynamicArray<re::TransitionCondition *>::add(this + 53, &v5);
  if ((*(*v5 + 16))(v5))
  {
    v4 = 0;
    re::DynamicArray<unsigned long>::add(this + 63, &v4);
  }

  result = (*(*v5 + 24))(v5);
  if (result)
  {
    v4 = 0;
    return re::DynamicArray<unsigned long>::add(this + 68, &v4);
  }

  return result;
}

double re::RenderGraphBuilder::finishNode(re::RenderGraphBuilder *this, re::RenderGraphNodeBase *a2)
{
  re::DynamicArray<re::RenderGraphResourceSetup>::add((this + 336), this + 424);
  *(this + 55) = 0;
  ++*(this + 112);
  *(this + 60) = 0;
  ++*(this + 122);
  *(this + 65) = 0;
  ++*(this + 132);
  *(this + 70) = 0;
  ++*(this + 142);
  *(this + 73) = 0;
  *(this + 148) = 0;
  result = 0.0;
  *(this + 600) = 0u;
  *(this + 615) = 0;
  return result;
}

__n128 re::DynamicArray<re::RenderGraphResourceSetup>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphResourceSetup>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 200 * v4;
  re::DynamicArray<char const*>::DynamicArray(v5, a2);
  re::DynamicArray<re::RenderGraphResourceOperation>::DynamicArray(v5 + 40, (a2 + 40));
  re::DynamicArray<unsigned long>::DynamicArray(v5 + 80, (a2 + 80));
  re::DynamicArray<unsigned long>::DynamicArray(v5 + 120, (a2 + 120));
  result = *(a2 + 160);
  v7 = *(a2 + 176);
  *(v5 + 191) = *(a2 + 191);
  *(v5 + 160) = result;
  *(v5 + 176) = v7;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::RenderGraphBuilder::resourceFromIndex@<Q0>(re::RenderGraphBuilder *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v4 = *(this + 37);
  if (*(v4 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = *(v4 + 32) + 48 * a2;
  *a3 = *v5;
  re::StringID::StringID((a3 + 8), (v5 + 8));
  result = *(v5 + 24);
  *(a3 + 40) = *(v5 + 40);
  *(a3 + 24) = result;
  return result;
}

uint64_t re::RenderGraphCompiled::RenderGraphCompiled(uint64_t a1, re::RenderGraphResourceDescriptions *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 216) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 280) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  re::RenderGraphResourceDescriptions::swap(a1, a2);
  *(a1 + 296) = a1 + 8;
  *(a1 + 304) = a1 + 48;
  *(a1 + 312) = a1 + 88;
  *(a1 + 320) = a1 + 128;
  *(a1 + 368) = 0;
  *(a1 + 328) = a1 + 168;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0;
  v11 = *(a4 + 8);
  *(a1 + 336) = *a4;
  *(a1 + 344) = v11;
  *a4 = 0;
  *(a4 + 8) = 0;
  v12 = *(a1 + 352);
  *(a1 + 352) = *(a4 + 16);
  *(a4 + 16) = v12;
  v13 = *(a1 + 368);
  *(a1 + 368) = *(a4 + 32);
  *(a4 + 32) = v13;
  ++*(a4 + 24);
  ++*(a1 + 360);
  *(a1 + 376) = 0;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0;
  *(a1 + 608) = 0;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0;
  *(a1 + 448) = 0u;
  *(a1 + 464) = 0u;
  *(a1 + 480) = 0;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0u;
  *(a1 + 560) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0;
  v14 = *(a6 + 8);
  *(a1 + 576) = *a6;
  *(a1 + 584) = v14;
  *a6 = 0;
  *(a6 + 8) = 0;
  v15 = *(a1 + 592);
  *(a1 + 592) = *(a6 + 16);
  *(a6 + 16) = v15;
  v16 = *(a1 + 608);
  *(a1 + 608) = *(a6 + 32);
  *(a6 + 32) = v16;
  ++*(a6 + 24);
  ++*(a1 + 600);
  *(a1 + 648) = 0;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0;
  v17 = *(a5 + 8);
  *(a1 + 616) = *a5;
  *(a1 + 624) = v17;
  *a5 = 0;
  *(a5 + 8) = 0;
  v18 = *(a1 + 632);
  *(a1 + 632) = *(a5 + 16);
  *(a5 + 16) = v18;
  v19 = *(a1 + 648);
  *(a1 + 648) = *(a5 + 32);
  *(a5 + 32) = v19;
  ++*(a5 + 24);
  ++*(a1 + 640);
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 692) = 0x7FFFFFFFLL;
  *(a1 + 728) = 0;
  *(a1 + 712) = 0u;
  *(a1 + 704) = 0;
  *(a1 + 776) = 0;
  *(a1 + 736) = 0u;
  *(a1 + 752) = 0u;
  *(a1 + 768) = 0;
  v20 = *(a3 + 8);
  *(a1 + 744) = *a3;
  *(a1 + 752) = v20;
  *a3 = 0;
  *(a3 + 8) = 0;
  v21 = *(a1 + 760);
  *(a1 + 760) = *(a3 + 16);
  *(a3 + 16) = v21;
  v22 = *(a1 + 776);
  *(a1 + 776) = *(a3 + 32);
  *(a3 + 32) = v22;
  ++*(a3 + 24);
  ++*(a1 + 768);
  *(a1 + 784) = 0;
  *(a1 + 792) = 0u;
  *(a1 + 808) = 0;
  *(a1 + 816) = 0u;
  return a1;
}

void *re::DynamicArray<re::RenderGraphResourceSetup>::growCapacity(void *this, unint64_t a2)
{
  v2 = this[1];
  if (v2 < a2)
  {
    v3 = a2;
    v4 = this;
    if (*this)
    {
      v5 = 2 * v2;
      v6 = v2 == 0;
      v7 = 8;
      if (!v6)
      {
        v7 = v5;
      }

      if (v7 > a2)
      {
        a2 = v7;
      }

      return re::DynamicArray<re::RenderGraphResourceSetup>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphResourceSetup>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::RenderGraphResourceSetup>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (!*v5)
      {
        result = re::DynamicArray<re::RenderGraphResourceSetup>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0xC8uLL))
        {
          v2 = 200 * a2;
          result = (*(*result + 32))(result, 200 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_16;
            }

            goto LABEL_11;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 200, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
        return result;
      }

      v7 = 0;
      if (!v3)
      {
LABEL_16:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = 0;
        v11 = v8 + 200 * v9;
        do
        {
          v12 = v8 + v10;
          v13 = &v7[v10 / 8];
          v13[4] = 0;
          v13[1] = 0;
          v13[2] = 0;
          *v13 = 0;
          *(v13 + 6) = 0;
          v14 = *(v8 + v10 + 8);
          *v13 = *(v8 + v10);
          v13[1] = v14;
          *v12 = 0;
          *(v12 + 8) = 0;
          v15 = v7[v10 / 8 + 2];
          v13[2] = *(v8 + v10 + 16);
          *(v12 + 16) = v15;
          v16 = v7[v10 / 8 + 4];
          v13[4] = *(v8 + v10 + 32);
          *(v12 + 32) = v16;
          *(v12 + 24) = *(v8 + v10 + 24) + 1;
          *(v13 + 6) = LODWORD(v7[v10 / 8 + 3]) + 1;
          v13[9] = 0;
          v13[6] = 0;
          v13[7] = 0;
          v13[5] = 0;
          *(v13 + 16) = 0;
          v17 = *(v8 + v10 + 48);
          v13[5] = *(v8 + v10 + 40);
          *(v8 + v10 + 40) = 0;
          v13[6] = v17;
          *(v12 + 48) = 0;
          v18 = v7[v10 / 8 + 7];
          v13[7] = *(v8 + v10 + 56);
          *(v12 + 56) = v18;
          v19 = v7[v10 / 8 + 9];
          v13[9] = *(v8 + v10 + 72);
          *(v12 + 72) = v19;
          *(v12 + 64) = *(v8 + v10 + 64) + 1;
          *(v13 + 16) = LODWORD(v7[v10 / 8 + 8]) + 1;
          v13[14] = 0;
          v13[11] = 0;
          v13[12] = 0;
          v13[10] = 0;
          *(v13 + 26) = 0;
          v20 = *(v8 + v10 + 88);
          v13[10] = *(v8 + v10 + 80);
          *(v8 + v10 + 80) = 0;
          v13[11] = v20;
          *(v12 + 88) = 0;
          v21 = v7[v10 / 8 + 12];
          v13[12] = *(v8 + v10 + 96);
          *(v12 + 96) = v21;
          v22 = v7[v10 / 8 + 14];
          v13[14] = *(v8 + v10 + 112);
          *(v12 + 112) = v22;
          *(v12 + 104) = *(v8 + v10 + 104) + 1;
          *(v13 + 26) = LODWORD(v7[v10 / 8 + 13]) + 1;
          v13[19] = 0;
          v13[16] = 0;
          v13[17] = 0;
          v13[15] = 0;
          *(v13 + 36) = 0;
          v23 = (v8 + v10 + 120);
          v24 = *(v8 + v10 + 128);
          v13[15] = *v23;
          *v23 = 0;
          v13[16] = v24;
          *(v12 + 128) = 0;
          v25 = v7[v10 / 8 + 17];
          v13[17] = *(v8 + v10 + 136);
          *(v12 + 136) = v25;
          v26 = v7[v10 / 8 + 19];
          v13[19] = *(v8 + v10 + 152);
          *(v12 + 152) = v26;
          *(v12 + 144) = *(v8 + v10 + 144) + 1;
          *(v13 + 36) = LODWORD(v7[v10 / 8 + 18]) + 1;
          v27 = *(v8 + v10 + 160);
          v28 = *(v8 + v10 + 176);
          *(v13 + 191) = *(v8 + v10 + 191);
          *(v13 + 10) = v27;
          *(v13 + 11) = v28;
          re::DynamicArray<unsigned long>::deinit(v23);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 80);
          re::DynamicArray<unsigned long>::deinit(v8 + v10 + 40);
          re::DynamicArray<unsigned long>::deinit(v8 + v10);
          v10 += 200;
        }

        while (v12 + 200 != v11);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

re::DepthMitigationManager *re::DepthMitigationManager::DepthMitigationManager(re::DepthMitigationManager *this, const char *a2)
{
  *this = &unk_1F5D09C70;
  re::Defaults::BOOLValue("DepthMitigation.UseUserDefaultTweaking", a2, v5);
  if (v5[0])
  {
    v3 = v5[1];
  }

  else
  {
    v3 = 0;
  }

  *(this + 8) = v3;
  v5[0] = 0;
  v6 = xmmword_1E30DBA40;
  v7 = xmmword_1E30DBA50;
  v8 = xmmword_1E30DBA60;
  v9 = xmmword_1E30DBA70;
  v10 = 0x3EEA05DE3C008081;
  v11 = 0x40000000;
  v12 = 1;
  v13 = xmmword_1E30DBA80;
  v14 = 981668463;
  re::MotionParallaxPredictor::MotionParallaxPredictor((this + 128));
  *(this + 32) = xmmword_1E3047670;
  *(this + 33) = xmmword_1E3047680;
  *(this + 34) = xmmword_1E30476A0;
  *(this + 35) = xmmword_1E30474D0;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 684) = 0u;
  *(this + 708) = 0x42C8000042C80000;
  *(this + 182) = 0;
  *(this + 736) = 0;
  *(this + 784) = 0;
  *(this + 716) = 0;
  *(this + 724) = 0;
  return this;
}

float anonymous namespace::getParamsUsingDefaults(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v3;
  *(a1 + 96) = *(a2 + 96);
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  re::Defaults::BOOLValue("DepthMitigation.Enabled", a2, &v32);
  if (v32 == 1)
  {
    *a1 = v33;
  }

  re::Defaults::floatValue("DepthMitigation.ResolutionScale", v6, &v32);
  if (v32 == 1)
  {
    *(a1 + 4) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DilateSigma", v7, &v32);
  if (v32 == 1)
  {
    *(a1 + 8) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DilateWeightThreshold", v8, &v32);
  if (v32 == 1)
  {
    *(a1 + 12) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.BlurSigma", v9, &v32);
  if (v32 == 1)
  {
    *(a1 + 16) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.BlurWeightThreshold", v10, &v32);
  if (v32 == 1)
  {
    *(a1 + 20) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DepthFadeNear", v11, &v32);
  if (v32 == 1)
  {
    *(a1 + 24) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DepthFadeFar", v12, &v32);
  if (v32 == 1)
  {
    *(a1 + 28) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DepthFadeGamma", v13, &v32);
  if (v32 == 1)
  {
    *(a1 + 32) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.MaxDistanceOpacity", v14, &v32);
  if (v32 == 1)
  {
    *(a1 + 36) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.MaxParallaxOpacity", v15, &v32);
  if (v32 == 1)
  {
    *(a1 + 40) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DarkeningGamma", v16, &v32);
  if (v32 == 1)
  {
    *(a1 + 48) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.TimeDeltaThreshold", v17, &v32);
  if (v32 == 1)
  {
    *(a1 + 56) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.AngularThreshold", v18, &v32);
  if (v32 == 1)
  {
    *(a1 + 64) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DistanceThreshold", v19, &v32);
  if (v32 == 1)
  {
    *(a1 + 60) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.TemporalWeightThreshold", v20, &v32);
  if (v32 == 1)
  {
    *(a1 + 68) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.SettlingTime", v21, &v32);
  if (v32 == 1)
  {
    *(a1 + 52) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.MaxDragOpacity", v22, &v32);
  if (v32 == 1)
  {
    *(a1 + 44) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.DragSettlingTime", v23, &v32);
  if (v32 == 1)
  {
    *(a1 + 72) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.CurveStrength", v24, &v32);
  if (v32 == 1)
  {
    *(a1 + 76) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.ImmersiveEnvSituationalAwarenessChangeThreshold", v25, &v32);
  if (v32 == 1)
  {
    *(a1 + 100) = v34;
  }

  re::Defaults::BOOLValue("DepthMitigation.FOV.EnableAttenuation", v26, &v32);
  if (v32 == 1)
  {
    *(a1 + 80) = v33;
  }

  re::Defaults::floatValue("DepthMitigation.FOV.FOVMin", v27, &v32);
  if (v32 == 1)
  {
    *(a1 + 84) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.FOV.FOVMax", v28, &v32);
  if (v32 == 1)
  {
    *(a1 + 88) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.FOV.SettingTime", v29, &v32);
  if (v32 == 1)
  {
    *(a1 + 96) = v34;
  }

  re::Defaults::floatValue("DepthMitigation.FOV.CurveFactor", v30, &v32);
  if (v32 == 1)
  {
    result = v34;
    *(a1 + 92) = v34;
  }

  return result;
}

__n128 re::DepthMitigationManager::getRawCameraTransform@<Q0>(re::DepthMitigationManager *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 22);
  *a2 = *(this + 21);
  *(a2 + 16) = v2;
  result = *(this + 23);
  v4 = *(this + 24);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

void **re::DepthMitigationManager::getNextAvailableDepthMitigationReductionBuffer(re::DepthMitigationManager *this, id *a2)
{
  v2 = (*(this + 152) + 1) & 3;
  *(this + 76) = v2;
  v3 = (this + 8 * v2 + 576);
  v4 = *v3;
  if (!*v3)
  {
    v7 = [*a2 newBufferWithLength:28 options:0];
    NS::SharedPtr<MTL::Texture>::operator=(v3, &v7);
    if (v7)
    {
    }

    [*v3 setLabel_];
    v4 = *v3;
  }

  v5 = [v4 contents];
  atomic_store(0, v5);
  atomic_store(0, v5 + 1);
  atomic_store(0, v5 + 2);
  atomic_store(0, v5 + 3);
  atomic_store(0, v5 + 4);
  atomic_store(0, v5 + 5);
  *(v5 + 24) = 0;
  return v3;
}

float re::DepthMitigationManager::updateWithDepthMitigationReductionResults(uint64_t a1, id *a2)
{
  if (*a2)
  {
    v3 = [*a2 contents];
    v5 = atomic_load(v3);
    if (v5)
    {
      v6 = atomic_load(v3 + 1);
      v7 = atomic_load(v3 + 2);
      v8 = atomic_load(v3 + 3);
      v9 = v8;
      v10 = atomic_load(v3 + 4);
      *(a1 + 680) = v5;
      *(a1 + 688) = v6;
      result = v9 / v10;
      *(a1 + 692) = v7;
      *(a1 + 696) = result;
    }
  }

  return result;
}

_DWORD *re::DepthMitigationManager::recordPipelineAction(_DWORD *result, unint64_t a2)
{
  if (a2 == 2)
  {
    ++result[156];
  }

  else if (a2 == 1)
  {
    ++result[155];
  }

  else if (!a2)
  {
    ++result[154];
  }

  if (BYTE1(a2) <= 0xBu)
  {
    ++result[((a2 >> 8) & 0xF) + 158];
  }

  ++result[157];
  return result;
}

__n128 re::DepthMitigationManager::getParams@<Q0>(re::DepthMitigationManager *this@<X0>, uint64_t a2@<X8>)
{
  if (*(this + 8) == 1)
  {
    Current = CFAbsoluteTimeGetCurrent();
    v5 = &re::DepthMitigationManager::getParams(void)::$_0::operator() const(void)::s_cachedParams;
    if (*&re::DepthMitigationManager::getParams(void)::$_0::operator() const(void)::s_lastUpdatedTime + 0.1 < Current)
    {
      xmmword_1ECF179C0 = v9[4];
      unk_1ECF179D0 = v9[5];
      qword_1ECF179E0 = v10;
      re::DepthMitigationManager::getParams(void)::$_0::operator() const(void)::s_cachedParams = v9[0];
      unk_1ECF17990 = v9[1];
      xmmword_1ECF179A0 = v9[2];
      unk_1ECF179B0 = v9[3];
      re::DepthMitigationManager::getParams(void)::$_0::operator() const(void)::s_lastUpdatedTime = *&Current;
    }
  }

  else
  {
    v5 = (this + 12);
  }

  v6 = v5[5];
  *(a2 + 64) = v5[4];
  *(a2 + 80) = v6;
  *(a2 + 96) = *(v5 + 12);
  v7 = v5[1];
  *a2 = *v5;
  *(a2 + 16) = v7;
  result = v5[3];
  *(a2 + 32) = v5[2];
  *(a2 + 48) = result;
  return result;
}

void *re::allocInfo_DepthMitigationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_476, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_476))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BBC38, "DepthMitigationService");
    __cxa_guard_release(&_MergedGlobals_476);
  }

  return &unk_1EE1BBC38;
}

void re::initInfo_DepthMitigationService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xC6185671164AE426;
  v6[1] = "DepthMitigationService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::initInfo_DepthMitigationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::DepthMitigationManager::~DepthMitigationManager(re::DepthMitigationManager *this)
{
  *this = &unk_1F5D09C70;
  for (i = 600; i != 568; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }

  v4 = *(this + 30);
  if (v4)
  {
    if (*(this + 35))
    {
      (*(*v4 + 40))(v4);
    }

    *(this + 35) = 0;
    *(this + 15) = 0u;
    *(this + 16) = 0u;
    *(this + 68) = 0;
  }

  v5 = *(this + 18);
  if (v5)
  {
    if (*(this + 23))
    {
      (*(*v5 + 40))(v5);
    }

    *(this + 23) = 0;
    *(this + 9) = 0u;
    *(this + 10) = 0u;
    *(this + 44) = 0;
  }
}

{
  *this = &unk_1F5D09C70;
  v2 = 600;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 568)
    {
      v4 = *(this + 30);
      if (v4)
      {
        if (*(this + 35))
        {
          (*(*v4 + 40))(v4);
        }

        *(this + 35) = 0;
        *(this + 15) = 0u;
        *(this + 16) = 0u;
        *(this + 68) = 0;
      }

      v5 = *(this + 18);
      if (v5)
      {
        if (*(this + 23))
        {
          (*(*v5 + 40))(v5);
        }

        *(this + 23) = 0;
        *(this + 9) = 0u;
        *(this + 10) = 0u;
        *(this + 44) = 0;
      }

      JUMPOUT(0x1E6906520);
    }
  }
}

float re::DepthMitigationManager::updateMotionParallaxParamsFromDefaults(re::DepthMitigationManager *this, const char *a2)
{
  if (*(this + 8) == 1)
  {
    return re::MotionParallaxPredictor::updateParamsFromDefaults((this + 128), a2);
  }

  return result;
}

__n128 re::DepthMitigationManager::getPipelineActionCount@<Q0>(re::DepthMitigationManager *this@<X0>, uint64_t a2@<X8>)
{
  v2 = *(this + 632);
  *a2 = *(this + 616);
  *(a2 + 16) = v2;
  result = *(this + 648);
  v4 = *(this + 664);
  *(a2 + 32) = result;
  *(a2 + 48) = v4;
  return result;
}

re::OffsetsDeformerModelBuilder *re::OffsetsDeformerModelBuilder::OffsetsDeformerModelBuilder(re::OffsetsDeformerModelBuilder *this, re::Allocator *a2, uint64_t a3, unint64_t a4, DeformationModelData *a5)
{
  *this = a5;
  v9 = re::DeformationModelData::create<re::OffsetsDeformer,re::OffsetsDeformerModel>(a5, a2);
  re::FixedArray<re::StringID>::init<>(v9, a2, a4);
  re::FixedArray<unsigned short>::init<unsigned short const&>(v9 + 3, a2, a3, &re::OffsetsDeformerModel::kInvalidIndex);
  return this;
}

uint64_t re::DeformationModelData::create<re::OffsetsDeformer,re::OffsetsDeformerModel>(uint64_t a1, uint64_t a2)
{
  v8[4] = *MEMORY[0x1E69E9840];
  v4 = (*(*a2 + 32))(a2, 48, 8);
  *v4 = 0u;
  v4[1] = 0u;
  v4[2] = 0u;
  v6[0] = &unk_1F5D09E10;
  v6[1] = a2;
  v6[3] = v6;
  v7 = v4;
  v8[3] = v8;
  v8[0] = &unk_1F5D09E10;
  v8[1] = a2;
  std::unique_ptr<void,std::function<void ()(void *)>>::operator=[abi:nn200100]((a1 + 360), &v7);
  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v7);
  std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](v6);
  return *(a1 + 360);
}

unint64_t *re::OffsetsDeformerModelBuilder::setEnvelopeBufferName(re::OffsetsDeformerModelBuilder *this, unint64_t a2, unint64_t a3, const re::StringID *a4)
{
  v4 = *(*this + 360);
  if (v4[4] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_7:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(v4[5] + 2 * a2) = a3;
  if (v4[1] <= a3)
  {
    goto LABEL_7;
  }

  v5 = (v4[2] + 16 * a3);

  return re::StringID::operator=(v5, a4);
}

uint64_t re::OffsetsDeformer::init(uint64_t result, uint64_t a2)
{
  v41[1] = *MEMORY[0x1E69E9840];
  if ((*(result + 8) & 1) == 0)
  {
    *(result + 8) = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      if (*(v3 + 208))
      {
        *(result + 16) = *(v3 + 32);
        if (*(v3 + 307) == 1)
        {
          v4 = 0;
          v5 = 0;
          v41[0] = 0x100000000;
          v11 = result;
          v12 = result + 24;
          do
          {
            v6 = 0;
            v13 = v4;
            do
            {
              v7 = *(v41 + v6);
              v16 = 0;
              v19 = 0;
              memset(v22, 0, sizeof(v22));
              v23 = 0;
              v27 = 0;
              v28 = 0;
              v24 = 0;
              v25 = 0;
              v26 = 0;
              memset(v35, 0, sizeof(v35));
              re::DynamicString::setCapacity(v35, 0);
              v40 = 0u;
              v39 = 0u;
              v38 = 0u;
              v37 = 0u;
              LOBYTE(v37) = v5;
              v36 = 53;
              re::DynamicArray<re::TechniqueFunctionConstant>::add(v22, v35);
              memset(v29, 0, sizeof(v29));
              re::DynamicString::setCapacity(v29, 0);
              memset(v34, 0, sizeof(v34));
              v33 = 0u;
              v32 = 0u;
              v30 = 65565;
              v31 = v7;
              re::DynamicArray<re::TechniqueFunctionConstant>::add(v22, v29);
              ComputePipelineState = re::getOrCreateComputePipelineState(*(a2 + 16), &v14);
              NS::SharedPtr<MTL::Buffer>::operator=((v12 + 16 * v5 + 8 * v7), ComputePipelineState);
              if (v29[0] && (v29[1] & 1) != 0)
              {
                (*(*v29[0] + 40))();
              }

              if (v35[0] && (v35[1] & 1) != 0)
              {
                (*(*v35[0] + 40))();
              }

              if (v27)
              {

                v27 = 0;
              }

              re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v22);
              if (v19 == 1 && v20)
              {
                if (BYTE8(v20))
                {
                  (*(*v20 + 40))();
                }

                v20 = 0u;
                v21 = 0u;
              }

              if (v16 == 1 && v17)
              {
                if (BYTE8(v17))
                {
                  (*(*v17 + 40))();
                }

                v18 = 0u;
                v17 = 0u;
              }

              result = v14;
              if (v14)
              {
                if (v15)
                {
                  result = (*(*v14 + 40))();
                }
              }

              v6 += 4;
            }

            while (v6 != 8);
            v4 = 1;
            v5 = 1;
          }

          while ((v13 & 1) == 0);
          *(v11 + 9) = 1;
        }
      }
    }
  }

  return result;
}

uint64_t re::OffsetsDeformer::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 8) == 1)
  {
    v4 = *(result + 9);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = xmmword_1E30A3700;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::OffsetsDeformer::allocateBuffers(char *a1, uint64_t a2, re::PerFrameAllocatorGPU **a3, unint64_t a4, uint64_t *a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v5 = *(*a5 + 48);
  if (v5)
  {
    v6 = a5;
    v7 = a4;
    v8 = a1;
    v9 = 0;
    v10 = 0;
    v73 = *(*a5 + 48);
    while (1)
    {
      re::DeformationInstanceIterator::Instance::Instance(&v89, v6, v10);
      v11 = *(*(v91 + 352) + 96);
      if (!v11)
      {
        goto LABEL_61;
      }

      v12 = re::DeformationInstanceIterator::Instance::meshPart(&v89, *(v8 + 2));
      v13 = v12;
      do
      {
        v14 = v13;
        v13 = *v13;
      }

      while (v13 && !v14[8]);
      *&v101 = 0x2DB839E585F57D8ALL;
      v15 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v14 + 5, &v101);
      if (v15 == -1)
      {
        v16 = 0;
      }

      else
      {
        v16 = (v14[6] + 16 * v15 + 8);
      }

      v17 = *(v12 + 512);
      v18 = v16 != 0 && v17 <= *(v12 + 452);
      if (!v18)
      {
        v17 = *(v12 + 452);
      }

      if (12 * v17 != *(v11 + 43))
      {
        goto LABEL_61;
      }

      v19 = v92;
      if (v18)
      {
        v20 = re::AttributeTable::buffers(v12);
        v22 = *v16;
        if (v21 <= v22)
        {
          goto LABEL_67;
        }

        v8 = v20 + 24 * *v16;
      }

      else
      {
        v8 = 0;
      }

      v23 = *(*(v91 + 344) + 360);
      v87 = v8;
      if (v23)
      {
        v24 = *(v91 + 392);
        v25 = v23[4];
        if (v25 <= v24)
        {
          v93 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v94 = 136315906;
          *&v94[4] = "operator[]";
          v95 = 1024;
          v96 = 476;
          v97 = 2048;
          v98 = v24;
          v99 = 2048;
          v100 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_66:
          v93 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v94 = 136315906;
          *&v94[4] = "operator[]";
          v95 = 1024;
          v96 = 476;
          v97 = 2048;
          v98 = v24;
          v99 = 2048;
          v100 = v25;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_67:
          re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v22, v21);
          _os_crash();
          __break(1u);
LABEL_68:
          re::internal::assertLog(6, v32, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v33, v32);
          _os_crash();
          __break(1u);
LABEL_69:
          v93 = 0;
          v104 = 0u;
          v105 = 0u;
          v102 = 0u;
          v103 = 0u;
          v101 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v94 = 136315906;
          *&v94[4] = "operator[]";
          v95 = 1024;
          v96 = 476;
          v97 = 2048;
          v98 = v7;
          v99 = 2048;
          v100 = v8;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_70:
          std::__throw_bad_variant_access[abi:nn200100]();
LABEL_71:
          re::internal::assertLog(5, v39, "assertion failure: '%s' (%s:line %i) Invalid deformation execution mode: %u.", "!Unreachable code", "allocateBuffers", 228, a4);
          _os_crash();
          __break(1u);
        }

        v24 = *(v23[5] + 2 * v24);
        v25 = v23[1];
        if (v25 <= v24)
        {
          goto LABEL_66;
        }

        re::StringID::StringID(&v101, (v23[2] + 16 * v24));
        v26 = v12;
        do
        {
          v27 = v26;
          v26 = *v26;
        }

        while (v26 && !v27[8]);
        *v94 = v101 >> 1;
        v28 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v27 + 5, v94);
        if (v28 == -1)
        {
          v29 = 0;
        }

        else
        {
          v29 = (v27[6] + 16 * v28 + 8);
        }

        if (v101)
        {
          if (v101)
          {
          }
        }

        v30 = re::DeformationVertexBufferState::inputVertexCount(v19, 1u);
        if (v29)
        {
          v31 = re::AttributeTable::buffers(v12);
          v33 = *v29;
          if (v32 <= v33)
          {
            goto LABEL_68;
          }

          v34 = (v31 + 24 * *v29);
          v35 = *v34;
          v86 = v34[1];
          v88 = v34[2];
          goto LABEL_37;
        }
      }

      else
      {
        v30 = re::DeformationVertexBufferState::inputVertexCount(v19, 1u);
      }

      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 4 * v30, 4uLL, &v101);
      v35 = v102;
      v88 = *(&v101 + 1);
      if (HIDWORD(v101) >= 4)
      {
        memset_pattern16((v101 + DWORD2(v101)), &unk_1E30D6460, HIDWORD(v101) & 0xFFFFFFFC);
      }

      if (!v7)
      {
        v50 = *(v11 + 40);
        if (v50 == -1)
        {
          goto LABEL_70;
        }

        v85 = *(v11 + 21);
        v37 = 12 * v30;
        *&v101 = v94;
        v84 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v50])(&v101, v11 + 136);
        v86 = 0;
        v83 = *(v11 + 32);
        v81 = v51;
        v82 = HIDWORD(v51);
        goto LABEL_45;
      }

      v86 = 0;
LABEL_37:
      v36 = *(v11 + 40);
      if (v36 == -1)
      {
        goto LABEL_70;
      }

      v37 = 12 * v30;
      v38 = *(v11 + 21);
      *&v101 = v94;
      v84 = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100INS1_9__variant15__value_visitorIN2re8internal10overloadedIJZNS6_10BufferViewC1ERKNS6_11BufferSliceEmmE3__0ZNS9_C1ESC_mmE3__1EEEEEJRKNS0_6__implIJN2NS9SharedPtrIN3MTL6BufferEEENS6_20BufferSliceSourceCPUEEEEEEEDcOT_DpOT0____fmatrix[v36])(&v101, v11 + 136);
      v85 = v38;
      v83 = *(v11 + 32);
      v81 = v39;
      v82 = HIDWORD(v39);
      if (v7 == 1)
      {
        v40 = v91;
        v41 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*v89 + 8, v90);
        v71 = v71 & 0xFFFFFF0000000000 | 0x1E00000000;
        v72 = v72 & 0xFFFF000000000000 | 0x1010001000CLL;
        v42 = re::DeformationBufferAllocator::alloc(*(v40 + 360), a5[2], 1, v72, v71, *(v41 + 16), 12 * v30);
        v43 = *(v40 + 360);
        v7 = *(v41 + 16);
        v8 = *(v43 + 8);
        if (v8 <= v7)
        {
          goto LABEL_69;
        }

        v44 = re::BucketArray<re::DeformationBufferAllocator::VertexBufferAllocation,4ul>::operator[](*(v43 + 16) + 72 * v7 + 16, v42);
        WORD2(v101) = 257;
        LODWORD(v101) = 65548;
        BYTE12(v101) = 30;
        DWORD2(v101) = 0;
        re::DeformationVertexBufferState::setOutputBuffer(v19, 1, 1, (v44 + 24), &v101);
        v76 = *v11;
        v69 = v11[2];
        v70 = v11[1];
        v67 = v11[4];
        v68 = v11[3];
        v65 = v11[6];
        v66 = v11[5];
        v64 = v11[7];
        re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 0x90uLL, 0x10uLL, &v101);
        v47 = *(&v101 + 1);
        v46 = v101;
        v48 = v102;
        v49 = v101 + DWORD2(v101);
        *v49 = v76;
        *(v49 + 16) = v70;
        *(v49 + 32) = v69;
        *(v49 + 48) = v68;
        *(v49 + 64) = v67;
        *(v49 + 80) = v66;
        *(v49 + 96) = v65;
        *(v49 + 112) = v64;
        *(v49 + 128) = v30;
        goto LABEL_46;
      }

      if (v7)
      {
        goto LABEL_71;
      }

LABEL_45:
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, v37, 0x10uLL, &v101);
      *&v94[4] = 257;
      *v94 = 65548;
      LOBYTE(v95) = 30;
      *&v94[8] = 0;
      v45 = re::DeformationVertexBufferState::setOutputBuffer(v19, 1u, 0, &v101, v94);
      v48 = 0;
      v46 = 0;
      v47 = 0;
LABEL_46:
      v6 = a5;
      v8 = a1;
      if (!v9)
      {
        v77 = v47;
        v9 = (*(*a2 + 32))(a2, 40, 8);
        v52 = *(*a5 + 48);
        *(v9 + 32) = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 0;
        *(v9 + 24) = 0;
        *v9 = a2;
        v45 = re::DynamicArray<re::KeyValuePair<unsigned long,re::OffsetsDeformer::PerFrameOffsetData>>::setCapacity(v9, v52);
        v47 = v77;
        ++*(v9 + 24);
      }

      v53 = v90;
      v54 = *(v9 + 8);
      v55 = *(v9 + 16);
      if (v55 >= v54)
      {
        v56 = v55 + 1;
        if (v54 < v55 + 1)
        {
          v78 = v47;
          if (*v9)
          {
            v57 = 2 * v54;
            v58 = v54 == 0;
            v59 = 8;
            if (!v58)
            {
              v59 = v57;
            }

            if (v59 <= v56)
            {
              v60 = v56;
            }

            else
            {
              v60 = v59;
            }

            re::DynamicArray<re::KeyValuePair<unsigned long,re::OffsetsDeformer::PerFrameOffsetData>>::setCapacity(v9, v60);
          }

          else
          {
            re::DynamicArray<re::KeyValuePair<unsigned long,re::OffsetsDeformer::PerFrameOffsetData>>::setCapacity(v9, v56);
            ++*(v9 + 24);
          }

          v47 = v78;
        }

        v55 = *(v9 + 16);
      }

      v61 = *(v9 + 32) + 96 * v55;
      *v61 = v53;
      *(v61 + 8) = v84;
      *(v61 + 16) = v81;
      *(v61 + 20) = v82;
      *(v61 + 24) = v85;
      *(v61 + 32) = v35;
      *(v61 + 40) = v86;
      *(v61 + 48) = v88;
      *(v61 + 56) = v46;
      *(v61 + 64) = v47;
      *(v61 + 72) = v48;
      *(v61 + 80) = v83;
      *(v61 + 88) = v87;
      ++*(v9 + 16);
      ++*(v9 + 24);
      v7 = a4;
      v5 = v73;
LABEL_61:
      if (++v10 == v5)
      {
        return v9;
      }
    }
  }

  return 0;
}

uint64_t re::OffsetsDeformer::deformGPU(uint64_t result, uint64_t a2, void **this, void *a4)
{
  if (a2)
  {
    v6 = result;
    re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Offset");
    v7 = *(a2 + 16);
    if (v7)
    {
      v8 = *(a2 + 32);
      v9 = v8 + 96 * v7;
      v10 = v6 + 24;
      do
      {
        re::DeformationInstanceIterator::Instance::Instance(v21, a4, *v8);
        v11 = v22;
        v12 = re::DeformationVertexBufferState::inputVertexCount(v22, 1u);
        v13 = *(v8 + 80);
        v14 = v10 + 16 * (*(v8 + 88) != 0);
        v15 = [*(v14 + 8 * v13) maxTotalThreadsPerThreadgroup];
        [*this setComputePipelineState:*(v14 + 8 * v13)];
        LOBYTE(v25) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
        v16 = *(v11[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v11 + 23, &v25) + 24);
        LOBYTE(v25) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
        [*this setBuffer:v16 offset:*(v11[24] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v11 + 23, &v25) + 16), 0}];
        LOBYTE(v25) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
        v17 = *(v11[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v11 + 7, &v25) + 24);
        LOBYTE(v25) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v11, 1u);
        [*this setBuffer:v17 offset:*(v11[8] + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find(v11 + 7, &v25) + 16), 1}];
        [*this setBuffer:*(v8 + 8) offset:*(v8 + 24) atIndex:2];
        [*this setBuffer:*(v8 + 32) offset:*(v8 + 48) atIndex:3];
        v18 = *(v8 + 88);
        if (v18)
        {
          [*this setBuffer:*v18 offset:*(v18 + 16) atIndex:4];
        }

        [*this setBuffer:*(v8 + 72) offset:*(v8 + 64) atIndex:5];
        v19 = *this;
        v25 = (v15 + v12 - 1) / v15;
        v26 = vdupq_n_s64(1uLL);
        v23 = v15;
        v24 = v26;
        [v19 dispatchThreadgroups:&v25 threadsPerThreadgroup:&v23];
        v8 += 96;
      }

      while (v8 != v9);
    }

    return [*this popDebugGroup];
  }

  return result;
}

void re::OffsetsDeformer::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  if (a2)
  {
    v3 = *(a2 + 16);
    if (v3)
    {
      v4 = *(a2 + 32);
      v33 = v4 + 96 * v3;
      while (1)
      {
        re::DeformationInstanceIterator::Instance::Instance(v48, a3, *v4);
        v5 = *(v4 + 88);
        v6 = v5 ? re::BufferView::contents(v5) : 0;
        v7 = v49;
        v8 = re::DeformationVertexBufferState::inputVertexCount(v49, 1u);
        v44 = re::BufferView::contents((v4 + 32));
        LOBYTE(v45) = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v7, 1u);
        v9 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v7 + 15, &v45);
        v10 = v7[16];
        v45 = 0;
        v46 = 0;
        v47 = 0;
        re::VertexUnpacker::setVertexFormat(&v45, (v10 + 20 * v9 + 4));
        v11 = *(v4 + 80);
        v12 = *(*(v48[2] + 352) + 96);
        v38 = v12[1];
        v39 = *v12;
        v36 = v12[3];
        v37 = v12[2];
        v42 = v12[5];
        v43 = v12[4];
        v40 = v12[7];
        v41 = v12[6];
        v35 = v4;
        v13 = re::BufferView::contents((v4 + 8));
        v50[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v7, 1u);
        v14 = v7[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v7 + 7, v50);
        v15 = *(v14 + 8);
        v16 = *(v14 + 16);
        v50[0] = 1;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(v7, 1u);
        v17 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v7 + 23, v50);
        if (v8)
        {
          break;
        }

LABEL_19:
        v4 = v35 + 96;
        if (v35 + 96 == v33)
        {
          return;
        }
      }

      v18 = 0;
      v19 = v7[24] + 32 * v17;
      v20 = *(v19 + 8);
      v19 += 8;
      v21 = *(v19 + 12);
      v22 = (v20 + *(v19 + 8) + 8);
      while (1)
      {
        v23 = v6 ? *(v6 + 4 * v18) : v18;
        v24 = v45(v15 + v16, v18);
        if (v8 <= v23)
        {
          break;
        }

        v27.i64[0] = v24;
        v27.i64[1] = v25;
        v28 = v13 + 12 * v23;
        v26.i64[0] = *v28;
        v26.i32[2] = *(v28 + 8);
        if (v11 == 1)
        {
          v29 = v26;
        }

        else
        {
          v29 = 0uLL;
          if (!v11)
          {
            v30 = vaddq_f32(v36, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v39, v27.f32[0]), v38, *v27.f32, 1), v37, v27, 2));
            v29 = vaddq_f32(vdivq_f32(v30, vdupq_laneq_s32(v30, 3)), v26);
          }
        }

        if (v21 / 0xCuLL == v18)
        {
          goto LABEL_22;
        }

        v31 = vaddq_f32(v40, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v43, v29.f32[0]), v42, *v29.f32, 1), v41, v29, 2));
        v32 = vmlaq_n_f32(vmulq_n_f32(vdivq_f32(v31, vdupq_laneq_s32(v31, 3)), *(v44 + 4 * v23)), v27, 1.0 - *(v44 + 4 * v23));
        *(v22 - 1) = v32.i64[0];
        *v22 = v32.i32[2];
        ++v18;
        v22 += 3;
        if (v8 == v18)
        {
          goto LABEL_19;
        }
      }

      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v23, v8);
      _os_crash();
      __break(1u);
LABEL_22:
      re::internal::assertLog(6, v25, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v21 / 0xCuLL, v21 / 0xCuLL);
      _os_crash();
      __break(1u);
    }
  }
}

re::StringID *re::OffsetsDeformerModelUtil::envelopeBufferNameForOffsetsDataIndex@<X0>(re::OffsetsDeformerModelUtil *this@<X0>, const DeformationModelData *a2@<X1>, re::StringID *a3@<X8>)
{
  v3 = *(this + 45);
  if (v3 && *(v3 + 8) > a2)
  {
    return re::StringID::StringID(a3, (*(v3 + 16) + 16 * a2));
  }

  else
  {
    return re::StringID::invalid(a3);
  }
}

uint64_t re::OffsetsDeformerModelUtil::computeOffsetsDeformerModelSizeExcludingMetalBuffers(re::OffsetsDeformerModelUtil *this, const DeformationModelData *a2)
{
  v2 = *(this + 45);
  if (!v2)
  {
    return 0;
  }

  v3 = v2[1];
  v4 = 2 * v2[4] + 16 * v3 + 48;
  if (v3)
  {
    v5 = (v2[2] + 8);
    do
    {
      if (*(v5 - 1))
      {
        v6 = strlen(*v5) + 1;
      }

      else
      {
        v6 = 0;
      }

      v4 += v6;
      v5 += 2;
      --v3;
    }

    while (v3);
  }

  return v4;
}

void re::OffsetsDeformer::~OffsetsDeformer(re::OffsetsDeformer *this)
{
  for (i = 48; i != 16; i -= 8)
  {
    v3 = *(this + i);
    if (v3)
    {

      *(this + i) = 0;
    }
  }
}

{
  v2 = 48;
  while (1)
  {
    v3 = *(this + v2);
    if (v3)
    {

      *(this + v2) = 0;
    }

    v2 -= 8;
    if (v2 == 16)
    {

      JUMPOUT(0x1E6906520);
    }
  }
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15OffsetsDeformerENS2_20OffsetsDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE7__cloneEPNS0_6__baseISI_EE(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D09E10;
  a2[1] = v2;
  return result;
}

uint64_t _ZNSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15OffsetsDeformerENS2_20OffsetsDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EEclEOSE_(uint64_t result, void **a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    re::FixedArray<CoreIKTransform>::deinit(v2 + 3);
    re::FixedArray<re::StringID>::deinit(v2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZN2re20DeformationModelData6createINS2_15OffsetsDeformerENS2_20OffsetsDeformerModelEJEEEPT0_PNS2_9AllocatorEDpOT1_EUlPvE_NS_9allocatorISF_EEFvSE_EE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::DynamicArray<re::KeyValuePair<unsigned long,re::OffsetsDeformer::PerFrameOffsetData>>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 96 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::KeyValuePair<unsigned long,re::OffsetsDeformer::PerFrameOffsetData>>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

uint64_t re::DeformationVertexBufferState::makeFromMeshInstance@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  result = re::DataArray<re::MeshModel>::get(a1 + 8, *(a2 + 16));
  v7 = a3;
  if (*(result + 56) <= a3)
  {
LABEL_10:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v8 = 0;
  v9 = (*(result + 64) + 544 * v7);
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0;
  *(a4 + 72) = 0u;
  *(a4 + 88) = 0u;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0u;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0u;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0u;
  *(a4 + 248) = 0u;
  *(a4 + 56) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 280) = 0u;
  *(a4 + 296) = 0u;
  *(a4 + 40) = v9 + 460;
  *(a4 + 48) = v9;
  do
  {
    v10 = *(v9 + v8 + 460);
    if (v10 == 255)
    {
      goto LABEL_7;
    }

    result = re::AttributeTable::buffers(v9);
    if (v11 <= v10)
    {
      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v10, v11);
      _os_crash();
      __break(1u);
      goto LABEL_10;
    }

    if (*(result + 24 * v10 + 20))
    {
      v12 = re::Bitset<64>::toWordIndex(a4, v8);
      *(a4 + 8 * v12) |= 1 << v8;
      result = re::Bitset<64>::toWordIndex(a4 + 8, v8);
      *(a4 + 8 + 8 * result) |= 1 << v8;
    }

LABEL_7:
    ++v8;
  }

  while (v8 != 21);
  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew(void *a1, unsigned __int8 *a2, __int128 *a3)
{
  result = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew(void *a1, unsigned __int8 *a2, _OWORD *a3)
{
  v6 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 20 * v6 + 4);
  }

  return re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, a2, a3);
}

uint64_t re::DeformationVertexBufferState::resetVertexBufferChangedState(uint64_t this)
{
  v1 = this;
  v2 = *(this + 16);
  *this = *(this + 8);
  if (v2)
  {
    v3 = __clz(__rbit64(v2));
    do
    {
      v11 = v3;
      v4 = v1[24] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v1 + 23, &v11);
      v5 = v1[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v1 + 7, &v11);
      v6 = *(v4 + 24);
      *(v5 + 8) = *(v4 + 8);
      *(v5 + 24) = v6;
      v7 = v1[32] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v1 + 31, &v11);
      this = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v1 + 15, &v11);
      v8 = v1[16] + 20 * this;
      v9 = *(v7 + 9);
      *(v8 + 4) = *(v7 + 4);
      *(v8 + 9) = v9;
      if (v3 == 63)
      {
        break;
      }

      v10 = (v1[2] & (-2 << v3)) == 0;
      v3 = __clz(__rbit64(v1[2] & (-2 << v3)));
    }

    while (!v10);
  }

  v1[2] = 0;
  return this;
}

void re::DeformationVertexBufferState::buildAttributeTable(re::DeformationVertexBufferState *this, re::AttributeTable *a2)
{
  v67 = *MEMORY[0x1E69E9840];
  v39 = 0;
  v37 = 0u;
  v38 = 0u;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  v36 = 0;
  v43 = 1;
  v45 = 0;
  v46 = 0;
  v44 = 0;
  v47 = 0;
  v48 = 0;
  v49 = 0;
  v51 = 0;
  v50 = 0;
  v55 = 0;
  v56 = 0;
  v52 = 0u;
  v53 = 0u;
  v54 = 0;
  v57 = 0;
  v6 = *(this + 6);
  v28 = v6;
  if (*(this + 3))
  {
    do
    {
      v8 = v6;
      v6 = *v6;
    }

    while (v6 && !v8[15]);
    re::BufferTable::operator=(&v30 + 8, (v8 + 5));
    v10 = *(this + 3);
    if (v10)
    {
      v3 = 0;
      v11 = __clz(__rbit64(v10));
      do
      {
        while (1)
        {
          if (v11 >= 0x15)
          {
            re::internal::assertLog(6, v9, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v11, 21, v28);
            _os_crash();
            __break(1u);
            goto LABEL_40;
          }

          v2 = *(*(this + 5) + v11);
          v4 = -2 << v11;
          if (v2 != 255)
          {
            break;
          }

          LOBYTE(v59) = v11;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(this, v11);
          v13 = *(this + 24) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(this + 23, &v59);
          *&v59 = *(v13 + 24);
          DWORD2(v59) = 0;
          *&v60 = *(v13 + 16);
          re::BufferTable::setBuffer((&v30 + 8), v64, &v59);
          v3 = 1;
          v11 = __clz(__rbit64(*(this + 3) & v4));
          if ((*(this + 3) & v4) == 0)
          {
            goto LABEL_14;
          }
        }

        LOBYTE(v59) = v11;
        re::DeformationVertexBufferState::ensureVertexBufferInitialized(this, v11);
        v12 = *(this + 24) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(this + 23, &v59);
        *&v59 = *(v12 + 24);
        DWORD2(v59) = 0;
        *&v60 = *(v12 + 16);
        re::BufferTable::setBuffer((&v30 + 8), v2, &v59);
        v11 = __clz(__rbit64(*(this + 3) & v4));
      }

      while ((*(this + 3) & v4) != 0);
      if ((v3 & 1) == 0)
      {
        goto LABEL_13;
      }

LABEL_14:
      if (*(&v29 + 1) >= *(&v35 + 1))
      {
        v18 = *(this + 6);
        do
        {
          v19 = v18;
          v18 = *v18;
        }

        while (v18 && !v19[3]);
        re::FixedArray<re::VertexBufferFormat>::operator=(&v29, (v19 + 2));
        goto LABEL_30;
      }

      re::StackScratchAllocator::StackScratchAllocator(&v59);
      memset(v64, 0, 24);
      re::FixedArray<re::VertexBufferFormat>::init<>(v64, &v59, *(&v29 + 1));
      if (*&v64[8] != *(&v29 + 1))
      {
LABEL_42:
        re::internal::assertLog(4, v14, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
        _os_crash();
        __break(1u);
      }

      if (*(&v29 + 1))
      {
        memmove(*&v64[16], v30, 16 * *(&v29 + 1) - 3);
      }

      v15 = v29;
      if (v29)
      {
        if (*(&v29 + 1))
        {
          v15 = (*(*v29 + 40))();
          *(&v29 + 1) = 0;
          *&v30 = 0;
        }

        *&v29 = 0;
      }

      v16 = *(&v35 + 1);
      re::FixedArray<re::VertexBufferFormat>::copy(&v29, 0, *&v64[16], *&v64[8]);
      if (*v64 && *&v64[8])
      {
        (*(**v64 + 40))(*v64, *&v64[16]);
      }

      re::StackScratchAllocator::~StackScratchAllocator(&v59);
LABEL_30:
      v20 = *(this + 3);
      if (v20)
      {
        v2 = __clz(__rbit64(v20));
        while (v2 < 0x15)
        {
          v21 = *(*(this + 5) + v2);
          if (v21 == 255)
          {
            v22 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(&v30 + 1, &v59);
            v21 = *(v31 + 16 * v22 + 8);
          }

          LOBYTE(v59) = v2;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(this, v2);
          v23 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(this + 31, &v59);
          v3 = v21;
          v4 = *(&v29 + 1);
          if (*(&v29 + 1) <= v21)
          {
            goto LABEL_41;
          }

          v24 = *(this + 32) + 20 * v23;
          v25 = (v30 + 16 * v21);
          v26 = *(v24 + 4);
          *(v25 + 5) = *(v24 + 9);
          *v25 = v26;
          v27 = (*(this + 3) & (-2 << v2)) == 0;
          v2 = __clz(__rbit64(*(this + 3) & (-2 << v2)));
          if (v27)
          {
            goto LABEL_38;
          }
        }

LABEL_40:
        re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v2, 21);
        _os_crash();
        __break(1u);
LABEL_41:
        v58 = 0;
        v62 = 0u;
        v63 = 0u;
        v60 = 0u;
        v61 = 0u;
        v59 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v64 = 136315906;
        *&v64[4] = "operator[]";
        *&v64[12] = 1024;
        *&v64[14] = 468;
        *&v64[18] = 2048;
        *&v64[20] = v3;
        v65 = 2048;
        v66 = v4;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_42;
      }
    }

    else
    {
LABEL_13:
      if (*(this + 32) == 1)
      {
        goto LABEL_14;
      }
    }
  }

LABEL_38:
  re::AttributeTableBuilder::makeAttributeTableAndReset(&v28, a2);
  re::AttributeTableBuilder::~AttributeTableBuilder(&v28);
}

uint64_t re::BufferTable::setBuffer(re::BufferTable *this, unint64_t a2, const re::BufferView *a3)
{
  if (*(this + 70) <= a2)
  {
    *(this + 70) = a2 + 1;
  }

  re::BufferTable::clearBufferRef(this, a2);
  v7 = *a3;
  v8 = *(a3 + 2);
  re::BufferTable::setBufferView(this, a2, &v7);
  return re::BufferTable::setBufferIndirectResources(this, a2, 0, 0);
}

unsigned __int8 *re::DeformationVertexBufferState::ensureVertexBufferInitialized(uint64_t a1, unsigned __int8 a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v25 = a2;
  result = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 56), &v25);
  if (result == -1)
  {
    v6 = *(a1 + 40);
    if (!v6)
    {
      goto LABEL_15;
    }

    if (v25 >= 0x15uLL)
    {
      re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 181, v25, 21);
      _os_crash();
      __break(1u);
    }

    else
    {
      v2 = *(v6 + v25);
      if (v2 == 255)
      {
        goto LABEL_15;
      }

      v7 = re::AttributeTable::buffers(*(a1 + 48));
      if (v8 > v2)
      {
        if (*(v7 + 6 * v2 + 5))
        {
          v9 = re::AttributeTable::buffers(*(a1 + 48));
          if (v10 > v2)
          {
            v11 = v9 + 24 * v2;
            v12 = *(a1 + 48);
            do
            {
              v13 = v12;
              v12 = *v12;
              v14 = v13[3];
              if (v12)
              {
                v15 = v14 == 0;
              }

              else
              {
                v15 = 0;
              }
            }

            while (v15);
            if (v14 > v2)
            {
              v16 = (v13[4] + 16 * v2);
              v17 = [*v11 contents];
              v18 = *v11;
              *&v35 = v17;
              *(&v35 + 1) = *(v11 + 2);
              *&v36 = v18;
              v19 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 184), &v25, &v35);
              re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 56), &v25, v19);
              v20 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 248), &v25, v16);
              goto LABEL_18;
            }

LABEL_24:
            v26 = 0;
            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v35 = 0u;
            v24 = v14;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v27 = 136315906;
            v28 = "operator[]";
            v29 = 1024;
            v30 = 476;
            v31 = 2048;
            v32 = v2;
            v33 = 2048;
            v34 = v24;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_23:
          re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v10);
          _os_crash();
          __break(1u);
          goto LABEL_24;
        }

LABEL_15:
        v35 = 0uLL;
        *&v36 = 0;
        v21 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 184), &v25, &v35);
        re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 56), &v25, v21);
        LODWORD(v35) = 0x10000;
        WORD2(v35) = 256;
        v22 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((a1 + 248), &v25);
        if (v22 != -1)
        {
          v23 = (*(a1 + 256) + 20 * v22 + 4);
          return re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 120), &v25, v23);
        }

        v20 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1 + 248, &v25, &v35);
LABEL_18:
        v23 = v20;
        return re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew((a1 + 120), &v25, v23);
      }
    }

    re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v2, v8);
    _os_crash();
    __break(1u);
    goto LABEL_23;
  }

  return result;
}

unsigned __int8 *re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::addNew(uint64_t *a1, unsigned __int8 *a2, __int128 *a3)
{
  v6 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(a1, a2);
  if (v6 != -1)
  {
    return (a1[1] + 32 * v6 + 8);
  }

  return re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::internalAdd(a1, a2, a3);
}

void re::BufferInitializationOptions::initializeGPUVertexBuffers(unint64_t *a1, id *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a1)
  {
    return;
  }

  v9 = __clz(__rbit64(*a1));
  v25 = a1 + 1;
  while (1)
  {
    v10 = *(v25 + v9);
    if (v10 == 2)
    {
      break;
    }

    if (v10 != 1)
    {
      goto LABEL_24;
    }

    v11 = *(a3 + 48);
    if (v11)
    {
      v12 = 0;
      do
      {
        v14 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](a3 + 8, v12) + 8);
        if (a5 <= v14)
        {
          goto LABEL_23;
        }

        v15 = (a4 + 312 * v14);
        if ((v15[re::Bitset<64>::toWordIndex((v15 + 1), v9) + 1] & (1 << v9)) != 0)
        {
          v27 = v9;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, v9);
          v16 = v15[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 7, &v27);
          v28 = v9;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, v9);
          v17 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v15 + 23, &v28);
          re::mtl::BlitCommandEncoder::bufferCopy(a2, *(v16 + 24), *(v16 + 16), *(v15[24] + 32 * v17 + 24), *(v15[24] + 32 * v17 + 16), *(v15[24] + 32 * v17 + 20));
        }
      }

      while (v11 != ++v12);
    }

LABEL_18:
    if (v9 == 63 || (*a1 & (-2 << v9)) == 0)
    {
      return;
    }

    v9 = __clz(__rbit64(*a1 & (-2 << v9)));
  }

  v18 = *(a3 + 48);
  if (!v18)
  {
    goto LABEL_18;
  }

  v19 = 0;
  while (1)
  {
    v20 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](a3 + 8, v19);
    v22 = *(v20 + 8);
    if (a5 <= v22)
    {
      break;
    }

    v23 = a4 + 312 * v22;
    if ((*(v23 + 8 + 8 * re::Bitset<64>::toWordIndex(v23 + 8, v9)) & (1 << v9)) != 0)
    {
      v29 = v9;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v23, v9);
      v24 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v23 + 184), &v29);
      re::mtl::BlitCommandEncoder::fillBuffer(a2, *(*(v23 + 192) + 32 * v24 + 24), *(*(v23 + 192) + 32 * v24 + 16), *(*(v23 + 192) + 32 * v24 + 20), 0);
    }

    if (v18 == ++v19)
    {
      goto LABEL_18;
    }
  }

  re::internal::assertLog(6, v21, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v20 + 8), a5);
  _os_crash();
  __break(1u);
LABEL_23:
  re::internal::assertLog(6, v13, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v14, a5);
  _os_crash();
  __break(1u);
LABEL_24:
  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid buffer initialization type: %u.", "!Unreachable code", "initializeGPUVertexBuffers", 239, v10);
  _os_crash();
  __break(1u);
}

void re::BufferInitializationOptions::initializeCPUVertexBuffers(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!*a1)
  {
    return;
  }

  v7 = __clz(__rbit64(*a1));
  v23 = a1 + 1;
  while (1)
  {
    v8 = *(v23 + v7);
    if (v8 == 2)
    {
      break;
    }

    if (v8 != 1)
    {
      goto LABEL_24;
    }

    v9 = *(a2 + 48);
    if (v9)
    {
      v10 = 0;
      do
      {
        v12 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](a2 + 8, v10) + 8);
        if (a4 <= v12)
        {
          goto LABEL_23;
        }

        v13 = (a3 + 312 * v12);
        if ((v13[re::Bitset<64>::toWordIndex((v13 + 1), v7) + 1] & (1 << v7)) != 0)
        {
          v25 = v7;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, v7);
          v14 = v13[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 7, &v25);
          v26 = v7;
          re::DeformationVertexBufferState::ensureVertexBufferInitialized(v13, v7);
          v15 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v13 + 23, &v26);
          memcpy((*(v13[24] + 32 * v15 + 8) + *(v13[24] + 32 * v15 + 16)), (*(v14 + 8) + *(v14 + 16)), *(v13[24] + 32 * v15 + 20));
        }
      }

      while (v9 != ++v10);
    }

LABEL_18:
    if (v7 == 63 || (*a1 & (-2 << v7)) == 0)
    {
      return;
    }

    v7 = __clz(__rbit64(*a1 & (-2 << v7)));
  }

  v16 = *(a2 + 48);
  if (!v16)
  {
    goto LABEL_18;
  }

  v17 = 0;
  while (1)
  {
    v18 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](a2 + 8, v17);
    v20 = *(v18 + 8);
    if (a4 <= v20)
    {
      break;
    }

    v21 = a3 + 312 * v20;
    if ((*(v21 + 8 + 8 * re::Bitset<64>::toWordIndex(v21 + 8, v7)) & (1 << v7)) != 0)
    {
      v27 = v7;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v21, v7);
      v22 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v21 + 184), &v27);
      bzero((*(*(v21 + 192) + 32 * v22 + 8) + *(*(v21 + 192) + 32 * v22 + 16)), *(*(v21 + 192) + 32 * v22 + 20));
    }

    if (v16 == ++v17)
    {
      goto LABEL_18;
    }
  }

  re::internal::assertLog(6, v19, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v18 + 8), a4);
  _os_crash();
  __break(1u);
LABEL_23:
  re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v12, a4);
  _os_crash();
  __break(1u);
LABEL_24:
  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Invalid buffer initialization type: %u.", "!Unreachable code", "initializeCPUVertexBuffers", 286, v8);
  _os_crash();
  __break(1u);
}

uint64_t re::DeformationInstanceIterator::Instance::Instance(void *a1, void *a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  a1[2] = 0;
  a1[3] = 0;
  v4 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](*a2 + 8, a3) + 8);
  a1[2] = re::BucketArray<re::ActiveDeformation,8ul>::operator[](*(*a1 + 8), v4);
  v6 = *(*a1 + 48);
  if (v6 <= v4)
  {
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v4, v6);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    a1[3] = *(*a1 + 40) + 312 * v4;
    return a1;
  }

  return result;
}

uint64_t re::DeformationInstanceIterator::Instance::handle(re::DeformationInstanceIterator::Instance *this)
{
  v2 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](**this + 8, *(this + 1));
  v4 = *(this + 2);
  v5 = *(v2 + 16);
  v6 = *(v4 + 336);
  if (v6 > v5)
  {
    return *(*(v4 + 328) + (v5 << 6));
  }

  re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v2 + 16), v6);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::DeformationInstanceIterator::Instance::meshPart(uint64_t a1, uint64_t a2)
{
  v3 = re::DataArray<re::MeshModel>::get(a2 + 8, *(*(*(a1 + 16) + 368) + 16));
  if (*(v3 + 56) <= *(*(a1 + 16) + 392))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(v3 + 64) + 544 * *(*(a1 + 16) + 392);
}

void re::ConstantTableCollection::fill(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 **a5)
{
  v34 = *MEMORY[0x1E69E9840];
  v8 = *(a4 + 8);
  if (v8)
  {
    v9 = *a4;
    v10 = *a4 + 16 * v8;
    do
    {
      v11 = *v9;
      v12 = v9[1];
      v14 = v9[2];
      v13 = v9[3];
      if (v11 == 11)
      {
        if (!*(a1 + 128))
        {
          *v26 = 0;
          memset(v25, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          LODWORD(v33[0]) = 136315906;
          *(v33 + 4) = "operator[]";
          WORD6(v33[0]) = 1024;
          *(v33 + 14) = 797;
          WORD1(v33[1]) = 2048;
          *(&v33[1] + 4) = 0;
          WORD6(v33[1]) = 2048;
          *(&v33[1] + 14) = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_20:
          v24 = 0;
          memset(v33, 0, sizeof(v33));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v26 = 136315906;
          *&v26[4] = "operator[]";
          v27 = 1024;
          v28 = 797;
          v29 = 2048;
          v30 = 0;
          v31 = 2048;
          v32 = 0;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v15 = *(a1 + 144);
      }

      else
      {
        v15 = a1 + 8 * v11;
      }

      v16 = (*(**v15 + 16))();
      memcpy((a2 + v14), (v16 + v12), v13);
      v9 += 4;
    }

    while (v9 != v10);
  }

  v17 = a5[1];
  if (v17)
  {
    v18 = *a5;
    v19 = 16 * v17;
    do
    {
      v23 = *v18;
      re::StackScratchAllocator::StackScratchAllocator(v25);
      if (v23 == 11)
      {
        if (!*(a1 + 128))
        {
          goto LABEL_20;
        }

        v20 = *(a1 + 144);
      }

      else
      {
        v20 = a1 + 8 * v23;
      }

      v21 = (*(**v20 + 16))();
      v22 = *&v33[1];
      memcpy((a2 + DWORD2(v23)), *&v33[1], HIDWORD(v23));
      if (*&v33[0])
      {
        if (*(&v33[0] + 1))
        {
          (*(**&v33[0] + 40))(*&v33[0], v22);
        }
      }

      re::StackScratchAllocator::~StackScratchAllocator(v25);
      ++v18;
      v19 -= 16;
    }

    while (v19);
  }
}

__int16 re::anonymous namespace::castToHalfBuffer@<H0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *(a1 + 12);
  v6 = v5 >> 1;
  *a4 = a3;
  a4[1] = v5 >> 1;
  a4[2] = 0;
  if (v5 >= 2)
  {
    v8 = v6;
    v9 = (*(*a3 + 32))(a3, 2 * v6, 2);
    a4[2] = v9;
    if (v9)
    {
      v11 = v9;
      v12 = v9;
      if (v6 != 1)
      {
        bzero(v9, v8 * 2 - 2);
        v12 = &v11[v8 - 1];
      }

      *v12 = 0;
      v13 = v6;
      while (v13)
      {
        v14 = *a2++;
        _S0 = v14;
        __asm { FCVT            H0, S0 }

        *v11++ = result;
        if (!--v13)
        {
          return result;
        }
      }

      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  return result;
}

void re::ConstantTableCollection::fillInstanceArray(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __int128 **a6, uint64_t a7)
{
  if (a5)
  {
    for (i = 0; i != a5; ++i)
    {
      v13 = i * a4;
      v14 = a6[1];
      if (v14)
      {
        v15 = *a6;
        v16 = 16 * v14;
        do
        {
          v17 = *v15++;
          *v27 = v17;
          InstanceArraySourcePtr = re::ConstantTableCollection::getInstanceArraySourcePtr(a1, v27, i);
          memcpy((a2 + v13 + v27[2]), InstanceArraySourcePtr, v27[3]);
          v16 -= 16;
        }

        while (v16);
      }

      v19 = *(a7 + 8);
      if (v19)
      {
        v20 = *a7;
        v21 = a2 + v13;
        v22 = 16 * v19;
        do
        {
          *v28 = *v20;
          re::StackScratchAllocator::StackScratchAllocator(v27);
          v23 = re::ConstantTableCollection::getInstanceArraySourcePtr(a1, v28, i);
          memcpy((v21 + v28[2]), v26[2], v28[3]);
          if (v26[0])
          {
            v24 = v26[1] == 0;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            (*(*v26[0] + 40))();
          }

          re::StackScratchAllocator::~StackScratchAllocator(v27);
          ++v20;
          v22 -= 16;
        }

        while (v22);
      }
    }
  }
}

uint64_t re::ConstantTableCollection::getInstanceArraySourcePtr(uint64_t a1, unsigned int *a2, int a3)
{
  v4 = *a2;
  if (*a2 == 11)
  {
    if (*(a1 + 128) <= a3)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v6 = *(*(a1 + 144) + 8 * a3);
    goto LABEL_7;
  }

  if (v4 != 3)
  {
    v6 = *(a1 + 8 * v4);
LABEL_7:
    v5 = (*(*v6 + 16))(v6);
    return v5 + a2[1];
  }

  v5 = (*(**(a1 + 24) + 16))(*(a1 + 24)) + (a3 << 8);
  return v5 + a2[1];
}

void *re::AttributeTableBuilder::makeAttributeTable(re::AttributeTableBuilder *this, re::AttributeTable *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v3 = this + 8;
  *a2 = *this;
  v4 = (a2 + 16);
  re::BufferTable::operator=(a2 + 40, this + 32);
  result = re::FixedArray<re::VertexBufferFormat>::operator=(v4, v3);
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 && !*(v7 + 3));
  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 && !*(v9 + 8));
  v10 = (v9 + 40);
  v23[0] = v9 + 40;
  v11 = *(v9 + 7);
  if (v11 < 0x10)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v13 = *v10;
  v14 = v11 >> 4;
  while (1)
  {
    v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
    v23[1] = v15 ^ 0xFFFFLL;
    if (v15 != 0xFFFFLL)
    {
      break;
    }

    v12 -= 16;
    ++v13;
    if (!--v14)
    {
      goto LABEL_13;
    }
  }

  v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
  v17 = v16 - v12;
  v24 = v16 - v12;
  if (v16 + 1 == v12)
  {
LABEL_13:
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v19 = *(v23[0] + 8) + 16 * v17;
      v20 = *(v19 + 8);
      v21 = *(v7 + 3);
      if (v21 <= v20)
      {
        v25 = 0;
        v37 = 0u;
        v38 = 0u;
        v35 = 0u;
        v36 = 0u;
        v34 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v26 = 136315906;
        v27 = "operator[]";
        v28 = 1024;
        v29 = 476;
        v30 = 2048;
        v31 = v20;
        v32 = 2048;
        v33 = v21;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v22 = *v19;
      v18 ^= v22 ^ re::VertexBufferFormat::hash((*(v7 + 4) + 16 * v20), 0, 0, 0, 0, 0);
      result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v23);
      v17 = v24;
    }

    while (v24 != -1);
  }

  *(a2 + 1) = v18;
  return result;
}

uint64_t re::AttributeTableBuilder::makeAttributeTableAndReset(re::AttributeTableBuilder *this, re::AttributeTable *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = (this + 8);
  *a2 = *this;
  v5 = (a2 + 16);
  re::BufferTable::operator=(a2 + 40, this + 32);
  re::FixedArray<float>::operator=(v5, v4);
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 && !*(v7 + 3));
  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *v8;
  }

  while (v8 && !*(v9 + 8));
  v10 = (v9 + 40);
  v24[0] = v9 + 40;
  v11 = *(v9 + 7);
  if (v11 < 0x10)
  {
    goto LABEL_13;
  }

  v12 = 0;
  v13 = *v10;
  v14 = v11 >> 4;
  while (1)
  {
    v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
    v24[1] = v15 ^ 0xFFFFLL;
    if (v15 != 0xFFFFLL)
    {
      break;
    }

    v12 -= 16;
    ++v13;
    if (!--v14)
    {
      goto LABEL_13;
    }
  }

  v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
  v17 = v16 - v12;
  v25 = v16 - v12;
  if (v16 + 1 == v12)
  {
LABEL_13:
    v18 = 0;
  }

  else
  {
    v18 = 0;
    do
    {
      v20 = *(v24[0] + 8) + 16 * v17;
      v21 = *(v20 + 8);
      v22 = *(v7 + 3);
      if (v22 <= v21)
      {
        v26 = 0;
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v27 = 136315906;
        v28 = "operator[]";
        v29 = 1024;
        v30 = 476;
        v31 = 2048;
        v32 = v21;
        v33 = 2048;
        v34 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v23 = *v20;
      v18 ^= v23 ^ re::VertexBufferFormat::hash((*(v7 + 4) + 16 * v21), 0, 0, 0, 0, 0);
      re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
      v17 = v25;
    }

    while (v25 != -1);
  }

  *(a2 + 1) = v18;
  *this = 0;
  re::FixedArray<CoreIKTransform>::deinit(v4);
  result = re::BufferTable::deinit((this + 32));
  *(this + 320) = 0;
  return result;
}

void re::DynamicTextureTableAdd(void *a1, void *a2, id *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 1, a2);
  if (v6 != -1)
  {
    v7 = a1[2] + 16 * v6;
    v12 = *a3;
    v13[0] = 0;
    v15 = 0;
    v8 = *(v7 + 9);
    v9 = a1[11];
    if (v9 <= v8)
    {
      v17 = 0;
      v29 = 0u;
      v30 = 0u;
      *v27 = 0u;
      v28 = 0u;
      *v26 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v18 = 136315906;
      v19 = "operator[]";
      v20 = 1024;
      v21 = 789;
      v22 = 2048;
      v23 = v8;
      v24 = 2048;
      v25 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v10 = a1[13] + 32 * v8;
    NS::SharedPtr<MTL::Texture>::operator=(v10, &v12);
    re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(v10 + 8, v13);
    if (*(v10 + 24))
    {
      if ((v15 & 1) == 0)
      {
        *(v10 + 24) = 0;
        goto LABEL_16;
      }
    }

    else
    {
      if ((v15 & 1) == 0)
      {
        goto LABEL_16;
      }

      *(v10 + 24) = 1;
    }

    *(v10 + 25) = v16;
LABEL_16:
    if (v13[0] == 1 && v14)
    {

      v14 = 0;
    }

    if (v12)
    {
    }

    v11 = [*a3 protectionOptions];
    if (*(v7 + 8) != v11)
    {
      LOBYTE(v26[0]) = v11;
      BYTE1(v26[0]) = *(v7 + 9);
      re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::replace(a1 + 1, a2, v26);
    }

    return;
  }

  BYTE1(v18) = a1[11];
  LOBYTE(v18) = [*a3 protectionOptions];
  if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 1, a2) == -1)
  {
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::internalAdd((a1 + 1), a2, &v18);
  }

  v26[0] = *a3;
  LOBYTE(v26[1]) = 0;
  LOBYTE(v27[1]) = 0;
  re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::add(a1 + 9, v26);
  if (LOBYTE(v26[1]) == 1 && v27[0])
  {

    v27[0] = 0;
  }

  if (v26[0])
  {
  }
}

BOOL re::DynamicTextureTableRemove(re *this, re::TextureTable *a2, const re::WeakStringID *a3)
{
  v5 = (this + 8);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 1, a2);
  v7 = v6;
  if (v6 != -1)
  {
    v8 = *(this + 2) + 16 * v6;
    v10 = *(v8 + 9);
    v9 = (v8 + 9);
    re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::removeStableAt(this + 72, v10);
    v20[0] = v5;
    v11 = *(this + 3);
    if (v11 >= 0x10)
    {
      v12 = 0;
      v13 = *v5;
      v14 = v11 >> 4;
      while (1)
      {
        v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v20[1] = v15 ^ 0xFFFFLL;
        if (v15 != 0xFFFFLL)
        {
          break;
        }

        v12 -= 16;
        ++v13;
        if (!--v14)
        {
          goto LABEL_11;
        }
      }

      v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
      v17 = v16 - v12;
      v21 = v16 - v12;
      if (v16 + 1 != v12)
      {
        do
        {
          re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(v5, *(this + 2) + 16 * v17);
          v18 = *(this + 2) + 16 * v21;
          if (*(v18 + 9) > *v9)
          {
            --*(v18 + 9);
          }

          re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(v5, v18);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v20);
          v17 = v21;
        }

        while (v21 != -1);
      }
    }

LABEL_11:
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::remove(v5, a2);
    v20[0] = this;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::rehashKeysWith<re::TextureTableImpl<NS::SharedPtr<MTL::Texture>>::rehashNames(void)::{lambda(re::IndexAndProtectionOptions)#1}>(v5, v20);
  }

  return v7 != -1;
}

void re::DynamicArray<re::TextureViews<NS::SharedPtr<MTL::Texture>>>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    memset(v7, 0, sizeof(v7));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::TextureViews<NS::SharedPtr<MTL::Texture>> *,re::TextureViews<NS::SharedPtr<MTL::Texture>> *,re::TextureViews<NS::SharedPtr<MTL::Texture>> *>(v7, *(a1 + 32) + 32 * a2 + 32, *(a1 + 32) + 32 * v2, *(a1 + 32) + 32 * a2);
    v2 = *(a1 + 16);
  }

  v4 = *(a1 + 32) + 32 * v2;
  if (*(v4 - 24) == 1)
  {
    v5 = *(v4 - 16);
    if (v5)
    {

      *(v4 - 16) = 0;
    }
  }

  v6 = *(v4 - 32);
  if (v6)
  {

    *(v4 - 32) = 0;
  }

  --*(a1 + 16);
  ++*(a1 + 24);
}

BOOL re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t std::__move_impl<std::_ClassicAlgPolicy>::operator()[abi:nn200100]<re::TextureViews<NS::SharedPtr<MTL::Texture>> *,re::TextureViews<NS::SharedPtr<MTL::Texture>> *,re::TextureViews<NS::SharedPtr<MTL::Texture>> *>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a2;
  if (a2 != a3)
  {
    while (1)
    {
      NS::SharedPtr<MTL::Texture>::operator=(a4, v5);
      v7 = v5 + 8;
      re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(a4 + 8, v5 + 8);
      if (*(a4 + 24))
      {
        if (*(v5 + 24))
        {
          goto LABEL_7;
        }

        *(a4 + 24) = 0;
      }

      else if (*(v5 + 24))
      {
        *(a4 + 24) = 1;
LABEL_7:
        *(a4 + 25) = *(v5 + 25);
      }

      a4 += 32;
      v5 += 32;
      if (v7 + 24 == a3)
      {
        return a3;
      }
    }
  }

  return v5;
}

_BYTE *re::BoundingBoxCalculation::init(_BYTE *result, uint64_t a2)
{
  v53 = *MEMORY[0x1E69E9840];
  if ((result[32] & 1) == 0)
  {
    v2 = result;
    result[32] = 1;
    v3 = *(a2 + 16);
    if (v3)
    {
      result = *(v3 + 208);
      if (result)
      {
        if (*(v3 + 308) == 1)
        {
          if ([result supportsFamily:1006])
          {
            v4 = 1;
          }

          else
          {
            v4 = [*(v3 + 208) supportsFamily:2002];
          }

          v2[34] = v4;
          v24 = 0;
          v27 = 0;
          memset(v30, 0, sizeof(v30));
          v31 = 0;
          v35 = 0;
          v36 = 0;
          v32 = 0;
          v33 = 0;
          v34 = 0;
          v46 = 0u;
          v47 = 0u;
          re::DynamicString::setCapacity(&v46, 0);
          memset(v52, 0, sizeof(v52));
          v51 = 0u;
          v50 = 0u;
          v6 = *(v2 + 9);
          v48 = 33;
          v49 = v6;
          re::DynamicArray<re::TechniqueFunctionConstant>::add(v30, &v46);
          memset(v40, 0, sizeof(v40));
          re::DynamicString::setCapacity(v40, 0);
          v42 = 0u;
          v45 = 0u;
          v44 = 0u;
          v43 = 0u;
          LOBYTE(v42) = v2[34];
          v41 = 65589;
          re::DynamicArray<re::TechniqueFunctionConstant>::add(v30, v40);
          ComputePipelineState = re::getOrCreateComputePipelineState(v3, &v22);
          v9 = NS::SharedPtr<MTL::Buffer>::operator=(v2 + 1, ComputePipelineState);
          if (*(v2 + 1))
          {
            v2[33] = 1;
          }

          else
          {
            v10 = *re::graphicsLogObjects(v9);
            v9 = os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT);
            if (v9)
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Bounding box make pipeline function failed, disabling GPU bounding box calculations.", buf, 2u);
            }
          }

          if (v2[33])
          {
            v11 = *(v3 + 208);
            if (v11)
            {
              *buf = 0;
              v38 = 0;
              v39 = 0;
              [v11 maxThreadsPerThreadgroup];
              v12 = *buf;
            }

            else
            {
              v12 = 0;
            }

            v14 = [*(v2 + 1) maxTotalThreadsPerThreadgroup];
            if (v14 >= v12)
            {
              v15 = v12;
            }

            else
            {
              v15 = v14;
            }

            *(v2 + 2) = v15;
            v16 = [*(v3 + 208) maxThreadgroupMemoryLength];
            v17 = (v16 - [*(v2 + 1) staticThreadgroupMemoryLength]) & 0xFFFFFFFFFFFFFF00;
            v18 = v17 >> 5;
            v19 = *(v2 + 1);
            if (v17 >> 5 >= *(v2 + 2))
            {
              v18 = *(v2 + 2);
            }

            *(v2 + 2) = v18;
            *(v2 + 3) = v17;
            v20 = [v19 threadExecutionWidth];
            v21 = [*(v2 + 1) threadExecutionWidth] * v20;
            if (v21 >= *(v2 + 2))
            {
              v21 = *(v2 + 2);
            }

            *(v2 + 2) = v21;
          }

          else
          {
            v13 = *re::graphicsLogObjects(v9);
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "Could not create GPU Bounding box reduction pipeline. Using CPU fallback", buf, 2u);
            }
          }

          if (v40[0] && (v40[1] & 1) != 0)
          {
            (*(*v40[0] + 40))();
          }

          if (v46 && (BYTE8(v46) & 1) != 0)
          {
            (*(*v46 + 40))(v46, v47);
          }

          if (v35)
          {

            v35 = 0;
          }

          re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v30);
          if (v27 == 1 && v28)
          {
            if (BYTE8(v28))
            {
              (*(*v28 + 40))();
            }

            v28 = 0u;
            v29 = 0u;
          }

          if (v24 == 1 && v25)
          {
            if (BYTE8(v25))
            {
              (*(*v25 + 40))();
            }

            v26 = 0u;
            v25 = 0u;
          }

          result = v22;
          if (v22)
          {
            if (v23)
            {
              return (*(*v22 + 40))();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t re::BoundingBoxCalculation::addDeformationInstance@<X0>(uint64_t result@<X0>, _BYTE *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2)
  {
    v4 = 0;
  }

  else if (*(result + 32) == 1)
  {
    v4 = *(result + 33);
  }

  else
  {
    v4 = 1;
  }

  *a4 = 0xFFFFFFFFLL;
  *(a4 + 8) = xmmword_1E30DBC20;
  LODWORD(v5) = *a3;
  if (v5 == 255)
  {
    v5 = *(a3 + 2);
    if (v5)
    {
      LOBYTE(v5) = (*(v5 + 208) != 0) & v4;
    }
  }

  *(a4 + 24) = v5;
  *(a4 + 32) = -1;
  *(a4 + 40) = 0;
  *(a4 + 48) = 0;
  *(a4 + 56) = 0;
  return result;
}

uint64_t re::BoundingBoxCalculation::allocateBuffers(uint64_t a1, void *a2, re::PerFrameAllocatorGPU **a3, uint64_t a4, uint64_t *a5, uint64_t a6)
{
  v7 = *a5;
  *(a6 + 29) = 0;
  v8 = a5[6];
  v39 = v8;
  if (v8)
  {
    if (!is_mul_ok(v8, 0x30uLL) || 48 * v8 >= 0xFFFFFFFFFFFFFFF0)
    {
      goto LABEL_28;
    }

    v9 = (*(*a2 + 32))(a2, (48 * v8 + 16) | 7, 0);
    v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
    *(v10 - 2) = v8;
    *(v10 - 1) = v9;
    bzero(v10, 48 * v8);
  }

  else
  {
    v10 = 0;
  }

  v8 = *(v7 + 48);
  if (!v8)
  {
    return v10;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v7 + 8, v11) + 8);
    v13 = re::BucketArray<re::ActiveDeformation,8ul>::operator[](a5[1], v12);
    v15 = a5[6];
    if (v15 <= v12)
    {
      break;
    }

    v16 = v13;
    v17 = (a5[5] + 312 * v12);
    LOBYTE(v41) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v17, 1u);
    v18 = *(v17[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v17 + 7, &v41) + 20);
    LOBYTE(v41) = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v17, 1u);
    v19 = re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v17 + 15, &v41);
    v21 = *(*(v16 + 352) + 56);
    if (v21)
    {
      if (v39 <= v12)
      {
        goto LABEL_27;
      }

      v22 = v18 / *(v17[16] + 20 * v19 + 4);
      v23 = &v10[6 * v12];
      re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a3, 8uLL, 4uLL, &v41);
      v24 = v41;
      v25 = v43;
      v26 = v42;
      *(v41 + v42) = v22 | (v12 << 32);
      *v23 = v24;
      *(v23 + 1) = v26;
      *(v23 + 2) = v25;
      v27 = *v21;
      v28 = **v21;
      if (v28)
      {
        v29 = (v28 - 1) & 7;
        if (1 - v28 >= 0)
        {
          v29 = -((1 - v28) & 7);
        }

        v30 = v27[v29 + 1];
      }

      else
      {
        v30 = 0xFFFFFFFFFFFFFFFLL;
      }

      v31 = a2[3];
      if (((v30 ^ v31) & 0xFFFFFFFFFFFFFFFLL) != 0)
      {
        *v27 = v28 + 1;
        v32 = -v28 < 0;
        v33 = -v28 & 7;
        v34 = v28 & 7;
        if (v32)
        {
          v35 = v34;
        }

        else
        {
          v35 = -v33;
        }

        v27[v35 + 1] = v31;
      }

      else
      {
        v36 = v31 & 0xFFFFFFFFFFFFFFFLL;
        do
        {
          v35 = --v28 & 7;
        }

        while ((v27[v35 + 1] & 0xFFFFFFFFFFFFFFFuLL) > v36);
      }

      *(v23 + 3) = v27[v35 + 9];
      *(v23 + 8) = 0;
      *(v23 + 5) = 0x2000000000;
    }

    if (++v11 == v8)
    {
      return v10;
    }
  }

  re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v15);
  _os_crash();
  __break(1u);
LABEL_27:
  re::internal::assertLog(6, v20, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v12, v39);
  _os_crash();
  __break(1u);
LABEL_28:
  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 48, v8);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::BoundingBoxCalculation::deformGPU(uint64_t a1, uint64_t a2, void **this, uint64_t *a4)
{
  v7 = *a4;
  v28 = a4[6];
  re::mtl::ComputeCommandEncoder::pushDebugGroup(this, "Perform Bounding Box Reduction Calculation");
  v27 = v7;
  v8 = *(v7 + 48);
  if (!v8)
  {
    return [*this popDebugGroup];
  }

  v9 = 0;
  while (1)
  {
    v10 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v27 + 8, v9);
    v12 = *(v10 + 8);
    if (v28 <= v12)
    {
      break;
    }

    v13 = a2 + 48 * v12;
    if (*(v13 + 12))
    {
      v14 = a4[6];
      if (v14 <= v12)
      {
        goto LABEL_16;
      }

      v15 = a4[5] + 312 * v12;
      v31.i8[0] = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      v16 = [*(*(v15 + 64) + 32 * re::HashBrown<re::VertexBufferID re:re::Hash<re::VertexBufferID> :{re::EqualTo<re::VertexBufferID>, void, false>::find((v15 + 56), &v31) + 24), sel_length}PerFrameGPUDataBuffer] / *(a1 + 40);
      v17 = sqrtf(v16);
      if (*(a1 + 34))
      {
        v18 = v16;
      }

      else
      {
        v18 = v17;
      }

      v19 = [*(a1 + 8) threadExecutionWidth];
      v20 = (v19 + v18 - 1) & -v19;
      v21 = *(a1 + 16);
      if (v20 >= v21)
      {
        v22 = v21;
      }

      else
      {
        v22 = v20;
      }

      [*this setComputePipelineState:*(a1 + 8)];
      v31.i8[0] = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      v23 = *(*(v15 + 64) + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find((v15 + 56), &v31) + 24);
      v31.i8[0] = 1;
      re::DeformationVertexBufferState::ensureVertexBufferInitialized(v15, 1u);
      [*this setBuffer:v23 offset:*(*(v15 + 64) + 32 * re::HashBrown<re::VertexBufferID atIndex:{re::PerFrameGPUDataBuffer, re::Hash<re::VertexBufferID>, re::EqualTo<re::VertexBufferID>, void, false>::find((v15 + 56), &v31) + 16), 0}];
      [*this setBuffer:*(v13 + 16) offset:*(v13 + 8) atIndex:1];
      [*this setBuffer:*(v13 + 24) offset:*(v13 + 40) atIndex:2];
      [*this setThreadgroupMemoryLength:16 * v22 atIndex:0];
      [*this setThreadgroupMemoryLength:16 * v22 atIndex:1];
      v24 = *this;
      v30 = vdupq_n_s64(1uLL);
      v31 = v30;
      v32 = 1;
      v29 = v22;
      [v24 dispatchThreadgroups:&v31 threadsPerThreadgroup:&v29];
    }

    if (v8 == ++v9)
    {
      return [*this popDebugGroup];
    }
  }

  re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, *(v10 + 8), v28);
  _os_crash();
  __break(1u);
LABEL_16:
  re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, v12, v14);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::BoundingBoxCalculation::deformCPU(uint64_t a1, uint64_t a2, void *a3)
{
  v34 = *a3;
  v32 = *(*a3 + 48);
  if (!v32)
  {
    return;
  }

  v4 = 0;
  v31 = a3[6];
  while (1)
  {
    v5 = re::BucketArray<re::DeformationInstanceIndex,64ul>::operator[](v34 + 8, v4);
    v7 = *(v5 + 8);
    v8 = a3[6];
    if (v8 <= v7)
    {
      break;
    }

    v9 = (a3[5] + 312 * v7);
    v39 = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v9, 1u);
    v10 = *(v9[8] + 32 * re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v9 + 7, &v39) + 20);
    v40 = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v9, 1u);
    v11 = *(v9[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v9 + 15, &v40) + 4);
    v41 = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v9, 1u);
    v13 = *(v9[16] + 20 * re::HashBrown<re::VertexBufferID,re::VertexBufferFormat,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v9 + 15, &v41) + 16);
    if (v13 > 0x19)
    {
      if (v13 == 26)
      {
        goto LABEL_13;
      }

      if (v13 != 30)
      {
        goto LABEL_24;
      }
    }

    else if (v13 == 8)
    {
    }

    else
    {
      if (v13 != 11)
      {
        goto LABEL_24;
      }
    }

    v15 = v14;
LABEL_13:
    v42 = 1;
    re::DeformationVertexBufferState::ensureVertexBufferInitialized(v9, 1u);
    v16 = re::HashBrown<re::VertexBufferID,re::PerFrameGPUDataBuffer,re::Hash<re::VertexBufferID>,re::EqualTo<re::VertexBufferID>,void,false>::find(v9 + 7, &v42);
    if (v10 >= v11)
    {
      v20 = 0;
      v21 = v9[8] + 32 * v16;
      v22 = *(v21 + 8);
      v23 = *(v21 + 16);
      v18.i64[0] = 0x7F0000007FLL;
      v18.i64[1] = 0x7F0000007FLL;
      v19 = vnegq_f32(v18);
      v24 = v10 / v11;
      do
      {
        v35 = v19;
        v37 = v18;
        v25 = (v15)(v22 + v23, v20);
        v27 = v35;
        v26 = v37;
        v28.i64[0] = v25;
        v28.i64[1] = v17;
        v27.i32[3] = 0;
        v19 = vminnmq_f32(v27, v28);
        v26.i32[3] = 0;
        v18 = vmaxnmq_f32(v26, v28);
        ++v20;
      }

      while (v20 < v24);
    }

    else
    {
      v18.i64[0] = 0x7F0000007FLL;
      v18.i64[1] = 0x7F0000007FLL;
      v19 = vnegq_f32(v18);
    }

    if (v31 <= v7)
    {
      goto LABEL_23;
    }

    v36 = v19;
    v38 = v18;
    v29 = a2 + 48 * v7;
    if (re::BufferView::isValid((v29 + 24)))
    {
      v30 = re::BufferView::contents((v29 + 24));
      *v30 = v36;
      v30[1] = v38;
    }

    if (++v4 == v32)
    {
      return;
    }
  }

  re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 679, *(v5 + 8), v8);
  _os_crash();
  __break(1u);
LABEL_23:
  re::internal::assertLog(6, v17, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v7, v31);
  _os_crash();
  __break(1u);
LABEL_24:
  re::internal::assertLog(5, v12, "assertion failure: '%s' (%s:line %i) Unsupported packed vertex format: %u.", "!Unreachable code", "vertexUnpackFunctionForFormat", 54, v13);
  _os_crash();
  __break(1u);
}

void re::BoundingBoxCalculation::~BoundingBoxCalculation(re::BoundingBoxCalculation *this)
{
  v2 = *(this + 1);
  if (v2)
  {

    *(this + 1) = 0;
  }
}

{
  v2 = *(this + 1);
  if (v2)
  {

    *(this + 1) = 0;
  }

  JUMPOUT(0x1E6906520);
}

double re::anonymous namespace::unpackHalf3Data(re::_anonymous_namespace_ *this, const void *a2, float16x4_t a3)
{
  v3 = this + 8 * a2;
  a3.i32[0] = *v3;
  *&result = vcvtq_f32_f16(a3).u64[0];
  _H1 = *(v3 + 2);
  __asm { FCVT            S1, H1 }

  return result;
}

int8x8_t re::anonymous namespace::unpackChar3NormalizedData(re::_anonymous_namespace_ *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  v4 = vdiv_f32(vcvt_f32_s32(v3), vdup_n_s32(0x42FE0000u));
  __asm { FMOV            V1.2S, #1.0 }

  return vbsl_s8(vcgt_f32(v4, _D1), _D1, v4);
}

float32x2_t re::anonymous namespace::unpackUChar3NormalizedData(re::_anonymous_namespace_ *this, const void *a2)
{
  v2 = this + 4 * a2;
  v3.i32[0] = *v2;
  v3.i32[1] = v2[1];
  return vdiv_f32(vcvt_f32_u32(v3), vdup_n_s32(0x437F0000u));
}

uint64_t re::TechniqueFunctionConstant::getNameWithoutNamespace@<X0>(re::TechniqueFunctionConstant *this@<X0>, uint64_t *a2@<X8>)
{
  result = re::DynamicString::rfind(this, 58, v15);
  v5 = *(this + 1);
  if (v15[0] != 1)
  {
    if (v5)
    {
      v8 = *(this + 2);
      if (!v8)
      {
        v7 = 0x7FFFFFFFFFFFFFFFLL;
        goto LABEL_21;
      }

      LOBYTE(v7) = *v8;
    }

    else
    {
      v7 = v5 >> 8;
      v8 = this + 9;
    }

    if (!v7)
    {
      v7 = 0;
      goto LABEL_21;
    }

    v7 = v7;
    v12 = v8[1];
    if (v12)
    {
      v13 = (v8 + 2);
      do
      {
        v7 = 31 * v7 + v12;
        v14 = *v13++;
        v12 = v14;
      }

      while (v14);
    }

    goto LABEL_18;
  }

  if (v5)
  {
    v6 = *(this + 2);
  }

  else
  {
    v6 = this + 9;
  }

  v7 = v6[v16 + 1];
  if (v6[v16 + 1])
  {
    v9 = v6[v16 + 2];
    if (v9)
    {
      v10 = &v6[v16 + 3];
      do
      {
        v7 = 31 * v7 + v9;
        v11 = *v10++;
        v9 = v11;
      }

      while (v11);
    }

LABEL_18:
    v7 &= ~0x8000000000000000;
  }

LABEL_21:
  *a2 = v7;
  return result;
}

uint64_t re::CombinedDynamicFunctionConstants::hash(unsigned __int16 *a1, unsigned __int8 *a2)
{
  v2 = 0x9E3779B97F4A7C17;
  v3 = 0x9E3779B97F4A7C17;
  if (*a1)
  {
    v3 = *(*a1 + 48) - 0x61C8864680B583E9;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    v4 = *(v4 + 48);
  }

  v5 = *(a1 + 2);
  if (v5)
  {
    v2 = *(v5 + 48) - 0x61C8864680B583E9;
  }

  v6 = (a1 + 44);
  v8 = *a2;
  v7 = a2 + 2;
  if (v8)
  {
    v6 = v7;
  }

  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *v6) ^ ((0xBF58476D1CE4E5B9 * *v6) >> 27));
  v10 = (v3 + ((v9 ^ (v9 >> 31)) << 6) + ((v9 ^ (v9 >> 31)) >> 2)) ^ v9 ^ (v9 >> 31);
  v11 = ((v4 >> 2) + (v4 << 6) + v2) ^ v4;
  return (((*(a1 + 9) - 0x61C8864680B583E9 + (v11 << 6) + (v11 >> 2)) ^ v11) - 0x61C8864680B583E9 + (v10 << 6) + (v10 >> 2)) ^ v10;
}

void re::CombinedDynamicFunctionConstants::combinedMap(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = 0;
  v34 = *MEMORY[0x1E69E9840];
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v31 = vextq_s8(*(a1 + 1), *(a1 + 1), 8uLL);
  v32 = *a1;
  v33 = a1 + 3;
  v7 = xmmword_1E304FAD0;
  do
  {
    v8 = v31.i64[v6];
    if (v8)
    {
      v28 = v31.i64[v6];
      v29 = 0;
      v9 = *(v8 + 16);
      if (v9 >= 0x10)
      {
        v10 = 0;
        v11 = *v8;
        v12 = v9 >> 4;
        while (1)
        {
          v13 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v11), v7)))), 0x3830282018100800).u16[0];
          v29 = v13 ^ 0xFFFFLL;
          if (v13 != 0xFFFFLL)
          {
            break;
          }

          v10 -= 16;
          ++v11;
          if (!--v12)
          {
            goto LABEL_10;
          }
        }

        v14 = __clz(__rbit64(v13 ^ 0xFFFFLL));
        v15 = v14 - v10;
        v30 = v14 - v10;
        if (v14 + 1 != v10)
        {
          do
          {
            re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(a3, (*(v28 + 8) + 16 * v15), (*(v28 + 8) + 16 * v15 + 8));
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(&v28);
            v7 = xmmword_1E304FAD0;
            v15 = v30;
          }

          while (v30 != -1);
        }
      }
    }

LABEL_10:
    ++v6;
  }

  while (v6 != 4);
  if ((atomic_load_explicit(&_MergedGlobals_477, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_477))
  {
    qword_1EE1BBD00 = re::hashString("EnableDitherFade", v21);
    qword_1EE1BBD08 = re::hashString("EnableClipping", v22);
    qword_1EE1BBD10 = re::hashString("RenderForBlur", v23);
    xmmword_1EE1BBD18 = 0u;
    unk_1EE1BBD28 = 0u;
    xmmword_1EE1BBD38 = 0u;
    __cxa_guard_release(&_MergedGlobals_477);
  }

  v16 = 0;
  v17 = (a1 + 11);
  v19 = *a2;
  v18 = a2 + 2;
  if (v19)
  {
    v17 = v18;
  }

  v20 = *v17;
  do
  {
    if ((v20 >> v16))
    {
      v28 = *(&_MergedGlobals_477 + v16 + 7);
      v27 = 1;
      re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(a3, &v28, &v27);
    }

    ++v16;
  }

  while (v16 != 9);
  if ((v20 & 0x80) == 0)
  {
    if ((atomic_load_explicit(&qword_1EE1BBCD8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBCD8))
    {
      qword_1EE1BBCD0 = re::hashString("IsVisualDepthStaticOcclusionTextureAvailable", v24);
      __cxa_guard_release(&qword_1EE1BBCD8);
    }

    if ((atomic_load_explicit(&qword_1EE1BBCE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBCE8))
    {
      qword_1EE1BBCE0 = re::hashString("EnableVisualDepthStaticOcclusion", v25);
      __cxa_guard_release(&qword_1EE1BBCE8);
    }

    if ((atomic_load_explicit(&qword_1EE1BBCF8, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1EE1BBCF8))
      {
        qword_1EE1BBCF0 = re::hashString("EnableSceneUnderstandingStaticOcclusion", v26);
        __cxa_guard_release(&qword_1EE1BBCF8);
      }
    }

    v28 = qword_1EE1BBCD0;
    v27 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(a3, &v28, &v27);
    v28 = qword_1EE1BBCE0;
    v27 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(a3, &v28, &v27);
    v28 = qword_1EE1BBCF0;
    v27 = 0;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::addOrReplace(a3, &v28, &v27);
  }
}

int32x2_t re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer@<D0>(re::PerFrameAllocatorGPU **this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v7 = *this;
    if (*this)
    {
      v8 = 0;
      if (a3 <= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = a3;
      }

      v10 = (v9 + *(*v7 + 40) - 1) & -v9;
      if ((v10 + a2) <= *(*v7 + 48))
      {
        *(*v7 + 40) = v10 + a2;
        v8 = v10;
      }

      v11 = v8 - *(v7 + 4);
      v12 = [*(v7 + 1) contents];
      v14 = *(*this + 1);
      *a4 = v12;
      *(a4 + 8) = v11;
      *(a4 + 12) = v5;
      *(a4 + 16) = v14;
    }

    else
    {
      re::PerFrameAllocatorGPU::allocInternal(this[1], a2, a3, 0, &v16);
      v15 = *v18;
      *a4 = v16;
      result = vmovn_s64(v17);
      *(a4 + 8) = result;
      *(a4 + 16) = v15;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

int32x2_t re::PerFrameGPUDataAllocator::perFrameAllocGpuBuffer@<D0>(re::PerFrameAllocatorGPU **this@<X0>, unint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v5 = a2;
    v7 = *this;
    if (*this)
    {
      v8 = 0;
      if (a3 <= 0x10)
      {
        v9 = 16;
      }

      else
      {
        v9 = a3;
      }

      v10 = (*(*v7 + 48) - a2) & -v9;
      if (*(*v7 + 40) <= v10)
      {
        *(*v7 + 48) = v10;
        v8 = v10;
      }

      v11 = v8 - *(v7 + 4);
      v12 = [*(v7 + 1) contents];
      v14 = *(*this + 1);
      *a4 = v12;
      *(a4 + 8) = v11;
      *(a4 + 12) = v5;
      *(a4 + 16) = v14;
    }

    else
    {
      re::PerFrameAllocatorGPU::allocInternal(this[1], a2, a3, 1, &v16);
      v15 = *v18;
      *a4 = v16;
      result = vmovn_s64(v17);
      *(a4 + 8) = result;
      *(a4 + 16) = v15;
    }
  }

  else
  {
    *a4 = 0;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
  }

  return result;
}

void *re::MeshManager::init(re::MeshManager *this, re::RenderManager *a2, int a3, int a4)
{
  *this = a2;
  v7 = *(a2 + 26);
  if (v7)
  {
    v8 = [v7 newCommandQueue];

    v9 = *(this + 22);
    *(this + 22) = v8;
  }

  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 1, 0);
  ++*(this + 8);
  *(this + 13) = a3;
  re::DataArray<re::MeshModel>::allocBlock(this + 2);
  v11 = this + 72;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(v11, 0);
  ++*(v11 + 6);
  *(v11 + 11) = a4;
  re::DataArray<re::MeshInstance>::allocBlock(v11);
  re::createVertexFetchReflection(v12, v14);
  re::FixedArray<re::AttributeArgument>::operator=(v11 + 10, v14);
  return re::FixedArray<re::AttributeArgument>::deinit(v14);
}

void re::MeshManager::prewarmVertexFetchFunctions(void **this)
{
  v11[2] = *MEMORY[0x1E69E9840];
  v2 = mach_absolute_time();
  re::compileAllFetchTypeFunctions(*(*this + 6), &v10);
  NS::SharedPtr<MTL::Texture>::operator=(this + 17, &v10);
  NS::SharedPtr<MTL::Texture>::operator=(this + 18, v11);
  if (v11[0])
  {

    v11[0] = 0;
  }

  if (v10)
  {
  }

  v3 = mach_absolute_time();
  v4 = v3;
  v5 = *&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale;
  if (*&re::convertMachTimeToNanoSecs(unsigned long long)::tmscale < 0.0)
  {
    v3 = mach_timebase_info(&v10);
    if (v3)
    {
      v8 = NAN;
      goto LABEL_10;
    }

    LODWORD(v7) = HIDWORD(v10);
    LODWORD(v6) = v10;
    v5 = v6 / v7;
    re::convertMachTimeToNanoSecs(unsigned long long)::tmscale = *&v5;
  }

  v8 = v5 * (v4 - v2);
LABEL_10:
  v9 = *re::graphicsLogObjects(v3);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
  {
    LODWORD(v10) = 67109120;
    HIDWORD(v10) = (v8 / 1000000.0);
    _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "Vertex fetch functions compiled in %dms", &v10, 8u);
  }
}

unint64_t re::DataArray<re::MeshModel>::create<re::MeshModel>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::MeshModel>::allocBlock(a1);
    }

    v11 = *(a1 + 16);
    v7 = (v11 - 1);
    if (v11)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v12 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        *(v12[1] + 4 * v6) = *(a1 + 56);
        v10 = (*v12 + 864 * v6);
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6, v14, v15);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v14 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v15) = 136315906;
    *(&v15 + 4) = "operator[]";
    WORD6(v15) = 1024;
    HIWORD(v15) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = (*(a1 + 32) + 16 * v7);
  *(v9[1] + 4 * v6) = v5;
  v10 = (*v9 + 864 * v6);
  *(a1 + 52) = *v10;
LABEL_15:
  ++*(a1 + 40);
  re::MeshModel::MeshModel(v10, a2);
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

unint64_t re::DataArray<re::MeshInstance>::create<re::MeshInstance>(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  if ((v4 + 1) >> 24)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4 + 1;
  }

  *(a1 + 56) = v5;
  v6 = *(a1 + 52);
  v7 = *(a1 + 54);
  if (v6 == 0xFFFF && v7 == 0xFFFF)
  {
    if (*(a1 + 48) >= *(a1 + 44))
    {
      re::DataArray<re::MeshInstance>::allocBlock(a1);
    }

    v11 = *(a1 + 16);
    v7 = (v11 - 1);
    if (v11)
    {
      v6 = *(a1 + 48);
      if (v6 < 0x10000)
      {
        v12 = (*(a1 + 32) + 16 * v7);
        *(a1 + 48) = v6 + 1;
        *(v12[1] + 4 * v6) = *(a1 + 56);
        v10 = *v12 + 144 * v6;
        goto LABEL_15;
      }

LABEL_18:
      re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) m_tailBlockLinearAllocationCount (%u) is too large for a 16-bit unsigned integer", "!overflow", "create", 601, v6, v20, v21);
      _os_crash();
      __break(1u);
    }

LABEL_17:
    v20 = 0;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    LODWORD(v21) = 136315906;
    *(&v21 + 4) = "operator[]";
    WORD6(v21) = 1024;
    HIWORD(v21) = 789;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_18;
  }

  if (*(a1 + 16) <= v7)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_17;
  }

  v9 = (*(a1 + 32) + 16 * v7);
  *(v9[1] + 4 * v6) = v5;
  v10 = *v9 + 144 * v6;
  *(a1 + 52) = *v10;
LABEL_15:
  ++*(a1 + 40);
  v13 = *a2;
  *v10 = *v10 & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *v10 = *a2 & 0xFFFFFFFFFFFFFFFELL | v13 & 1;
  *(v10 + 8) = *(a2 + 8);
  *a2 = 0;
  *(a2 + 8) = &str_67;
  v14 = *(a2 + 32);
  v16 = *(a2 + 64);
  v15 = *(a2 + 80);
  *(v10 + 48) = *(a2 + 48);
  *(v10 + 64) = v16;
  *(v10 + 32) = v14;
  *(v10 + 16) = *(a2 + 16);
  *(v10 + 80) = v15;
  *(v10 + 104) = 0;
  *(v10 + 112) = 0;
  *(v10 + 96) = 0;
  *(v10 + 96) = *(a2 + 96);
  *(a2 + 96) = 0;
  *(v10 + 104) = *(a2 + 104);
  *(a2 + 104) = 0;
  v17 = *(v10 + 112);
  *(v10 + 112) = *(a2 + 112);
  *(a2 + 112) = v17;
  *(v10 + 120) = 0;
  *(v10 + 128) = 0;
  *(v10 + 136) = 0;
  *(v10 + 120) = *(a2 + 120);
  *(a2 + 120) = 0;
  *(v10 + 128) = *(a2 + 128);
  *(a2 + 128) = 0;
  v18 = *(v10 + 136);
  *(v10 + 136) = *(a2 + 136);
  *(a2 + 136) = v18;
  return ((v7 << 16) | ((*(a1 + 56) & 0xFFFFFF) << 32)) + v6;
}

uint64_t (***re::MeshManager::destroyModel(uint64_t a1, uint64_t a2))(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  ValidAllocator = re::getValidAllocator((*(*(*a1 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*a1 + 144) + 16) << 60)));
  v5 = *a1;
  v7[2] = a2;
  v7[3] = ValidAllocator;
  v7[0] = &unk_1F5D09F00;
  v7[1] = a1;
  v7[4] = v7;
  re::RenderManager::addDelayedDestructor(v5, v7);
  return re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v7);
}

uint64_t (***re::MeshManager::destroyInstance(uint64_t a1, uint64_t a2))(void)
{
  v7[5] = *MEMORY[0x1E69E9840];
  ValidAllocator = re::getValidAllocator((*(*(*a1 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*a1 + 144) + 16) << 60)));
  v5 = *a1;
  v7[2] = a2;
  v7[3] = ValidAllocator;
  v7[0] = &unk_1F5D09F50;
  v7[1] = a1;
  v7[4] = v7;
  re::RenderManager::addDelayedDestructor(v5, v7);
  return re::MoveOnlyFunctionBase<24ul,void ()(void)>::destroyCallable(v7);
}

uint64_t (***re::MeshManager::destroyCollection(uint64_t (***result)(void), void *a2))(void)
{
  v3 = result;
  v4 = a2[2];
  if (v4)
  {
    v5 = a2[4];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      result = re::MeshManager::destroyInstance(v3, v7);
      v6 -= 8;
    }

    while (v6);
  }

  v8 = a2[7];
  if (v8)
  {
    v9 = a2[9];
    v10 = 8 * v8;
    do
    {
      v11 = *v9++;
      result = re::MeshManager::destroyModel(v3, v11);
      v10 -= 8;
    }

    while (v10);
  }

  return result;
}

uint64_t re::MeshManager::findMaxMaterialIndex(void *a1, void *a2)
{
  v2 = a2[7];
  if (v2)
  {
    v3 = a2[9];
    v4 = &v3[v2];
    v5 = 0xFFFFFFFFLL;
    while (a1[3] > WORD1(*v3))
    {
      v6 = *(a1[5] + 16 * WORD1(*v3)) + 864 * *v3;
      v7 = *(v6 + 56);
      if (v7)
      {
        v8 = *(v6 + 64);
        v9 = 544 * v7;
        v10 = (v8 + 458);
        do
        {
          if (v5 <= *v10)
          {
            v5 = *v10;
          }

          else
          {
            v5 = v5;
          }

          v10 += 272;
          v9 -= 544;
        }

        while (v9);
      }

      if (++v3 == v4)
      {
        goto LABEL_13;
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_25:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v5 = 0xFFFFFFFFLL;
LABEL_13:
  v11 = a2[2];
  if (v11)
  {
    v12 = a2[4];
    v13 = &v12[v11];
    while (a1[11] > WORD1(*v12))
    {
      v14 = *(a1[13] + 16 * WORD1(*v12)) + 144 * *v12;
      v15 = *(v14 + 104);
      if (v15)
      {
        v16 = *(v14 + 112);
        v17 = 4 * v15;
        do
        {
          v19 = *v16++;
          v18 = v19;
          if (v5 <= v19)
          {
            v5 = v18;
          }

          else
          {
            v5 = v5;
          }

          v17 -= 4;
        }

        while (v17);
      }

      if (++v12 == v13)
      {
        return v5;
      }
    }

    goto LABEL_25;
  }

  return v5;
}

void re::internal::MoveOnlyCallable<re::MeshManager::destroyModel(re::DataArrayHandle<re::MeshModel>)::$_0,void ()(void)>::operator()(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (re::DataArray<re::MeshModel>::tryGet(v2 + 8, *(a1 + 16)))
  {
    v3 = *(a1 + 16);

    re::DataArray<re::MeshModel>::destroy(v2 + 8, v3);
  }
}

uint64_t re::internal::MoveOnlyCallable<re::MeshManager::destroyModel(re::DataArrayHandle<re::MeshModel>)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D09F00;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::MoveOnlyCallable<re::MeshManager::destroyInstance(re::DataArrayHandle<re::MeshInstance>)::$_0,void ()(void)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D09F50;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::DataArray<re::MeshModel>::allocBlock(unsigned int *a1)
{
  v2 = 864 * a1[11];
  v5.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v5.n128_u64[0])
  {
    v2 = 4 * a1[11];
    v5.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v5.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v5);
      a1[12] = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash();
  __break(1u);
}

void re::DataArray<re::MeshInstance>::allocBlock(unsigned int *a1)
{
  v2 = 144 * a1[11];
  v5.n128_u64[0] = (*(**a1 + 32))(*a1, v2, 0);
  if (v5.n128_u64[0])
  {
    v2 = 4 * a1[11];
    v5.n128_u64[1] = (*(**a1 + 32))(*a1, v2, 0);
    if (v5.n128_u64[1])
    {
      re::DynamicArray<re::RigNodeConstraint>::add(a1, &v5);
      a1[12] = 0;
      return;
    }
  }

  else
  {
    re::internal::assertLog(6, v3, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.elements", "allocBlock", 520, v2, *(*a1 + 8), 0);
    _os_crash();
    __break(1u);
  }

  re::internal::assertLog(6, v4, "assertion failure: '%s' (%s:line %i) DataArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "block.allocationCounters", "allocBlock", 528, v2, *(*a1 + 8));
  _os_crash();
  __break(1u);
}

uint64_t re::getOrCreateDepthStencilState(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (*a3 == 1)
  {
    v6 = re::Hash<re::DynamicString>::operator()(v44, a3 + 8);
  }

  else
  {
    v6 = 0;
  }

  v7 = *(a3 + 49);
  if (!*(a3 + 54))
  {
    v7 = 0;
  }

  v8 = *(a3 + 55);
  if (v8 == 1)
  {
    v7 |= (*(a3 + 52) << 24) | (*(a3 + 51) << 16);
  }

  if (*(a3 + 54))
  {
    v9 = *(a3 + 40) | (16 * *(a3 + 41)) | (*(a3 + 42) << 8) | (*(a3 + 43) << 12);
    if (!*(a3 + 55))
    {
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  v9 = 0;
  if (*(a3 + 55))
  {
LABEL_12:
    v9 |= (*(a3 + 44) << 16) | (*(a3 + 45) << 20) | (*(a3 + 46) << 24) | (*(a3 + 47) << 28);
  }

LABEL_13:
  v10 = (*(a3 + 54) << 48) | (v8 << 56) | v7 | (*(a3 + 53) << 32) | (*(a3 + 48) << 40);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
  v13 = ((((((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6) + ((v11 ^ (v11 >> 31)) << 6) + ((v11 ^ (v11 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v11 ^ (v11 >> 31)) + ((v12 ^ (v12 >> 31)) << 6) + ((v12 ^ (v12 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v12 ^ (v12 >> 31);
  if (!*a2 || (v14 = *(*(a2 + 8) + 4 * (v13 % *(a2 + 24))), v14 == 0x7FFFFFFF))
  {
LABEL_18:
    v16 = [objc_msgSend(MEMORY[0x1E6974050] alloc)];
    if (*a3 == 1)
    {
      if (*(a3 + 16))
      {
        v17 = *(a3 + 24);
      }

      else
      {
        v17 = a3 + 17;
      }

      [v16 setLabel_];
    }

    [v16 setDepthWriteEnabled_];
    [v16 setDepthCompareFunction_];
    if (*(a3 + 54) == 1)
    {
      v18 = [objc_msgSend(MEMORY[0x1E6974190] alloc)];
      [v18 setStencilCompareFunction_];
      [v18 setDepthFailureOperation_];
      [v18 setStencilFailureOperation_];
      [v18 setDepthStencilPassOperation_];
      [v18 setReadMask_];
      [v18 setWriteMask_];
      [v16 setFrontFaceStencil_];
      if (v18)
      {
      }
    }

    if (*(a3 + 55) == 1)
    {
      v19 = [objc_msgSend(MEMORY[0x1E6974190] alloc)];
      [v19 setStencilCompareFunction_];
      [v19 setDepthFailureOperation_];
      [v19 setStencilFailureOperation_];
      [v19 setDepthStencilPassOperation_];
      [v19 setReadMask_];
      [v19 setWriteMask_];
      [v16 setBackFaceStencil_];
      if (v19)
      {
      }
    }

    v43 = 0;
    *v44 = [*(a1 + 208) newDepthStencilStateWithDescriptor_];
    NS::SharedPtr<MTL::Texture>::operator=(&v43, v44);
    v20 = *v44;
    if (*v44)
    {
    }

    if (!v43)
    {
      v21 = *re::graphicsLogObjects(v20);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        if (*a3 == 1)
        {
          if (*(a3 + 16))
          {
            v28 = *(a3 + 24);
          }

          else
          {
            v28 = (a3 + 17);
          }
        }

        else
        {
          v28 = "<Unnamed>";
        }

        v29 = *(a3 + 53);
        v30 = *(a3 + 48);
        v31 = *(a3 + 54);
        v32 = *(a3 + 40);
        v33 = *(a3 + 41);
        v34 = *(a3 + 42);
        v35 = *(a3 + 43);
        v36 = *(a3 + 49);
        v37 = *(a3 + 55);
        v38 = *(a3 + 44);
        v39 = *(a3 + 45);
        v40 = *(a3 + 46);
        v41 = *(a3 + 47);
        v42 = *(a3 + 51);
        *v44 = 136319234;
        *&v44[4] = v28;
        v45 = 1024;
        v46 = v29;
        v47 = 1024;
        v48 = v30;
        v49 = 1024;
        v50 = v31;
        v51 = 1024;
        v52 = v32;
        v53 = 1024;
        v54 = v33;
        v55 = 1024;
        v56 = v34;
        v57 = 1024;
        v58 = v35;
        v59 = 1024;
        v60 = v36;
        v61 = 1024;
        v62 = v36;
        v63 = 1024;
        v64 = v37;
        v65 = 1024;
        v66 = v38;
        v67 = 1024;
        v68 = v39;
        v69 = 1024;
        v70 = v40;
        v71 = 1024;
        v72 = v41;
        v73 = 1024;
        v74 = v42;
        v75 = 1024;
        v76 = v42;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Failed to create depth-stencil state. Descriptor parameters:  label: %s  depth write enabled: %u  depth cmp: %u  frontStencilEnabled: %u    frontStencilCmp: %u    frontStencilDepthFailOp: %u    frontStencilStencilFailOp: %u    frontStencilDepthStencilPassOp: %u    frontStencilReadMask: %u    frontStencilWriteMask: %u  backStencilEnabled: %u    backStencilCmp: %u    backStencilDepthFailOp: %u    backStencilStencilFailOp: %u    backStencilDepthStencilPassOp: %u    backStencilReadMask: %u    backStencilWriteMask: %u", v44, 0x6Cu);
      }
    }

    if (*a2)
    {
      v22 = v13 % *(a2 + 24);
      v23 = *(*(a2 + 8) + 4 * v22);
      if (v23 != 0x7FFFFFFF)
      {
        v24 = *(a2 + 16);
        if (*(v24 + 24 * v23 + 8) == v13)
        {
LABEL_38:
          v25 = v24 + 24 * v23 + 16;
LABEL_41:
          if (v43)
          {
          }

          if (v16)
          {
          }

          return v25;
        }

        while (1)
        {
          LODWORD(v23) = *(v24 + 24 * v23) & 0x7FFFFFFF;
          if (v23 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v24 + 24 * v23 + 8) == v13)
          {
            goto LABEL_38;
          }
        }
      }
    }

    else
    {
      LODWORD(v22) = 0;
    }

    v26 = re::HashTable<unsigned long,re::CachedTileRenderPipelineState,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a2, v22, v13);
    *(v26 + 8) = v13;
    *(v26 + 16) = v43;
    v25 = v26 + 16;
    ++*(a2 + 40);
    goto LABEL_41;
  }

  v15 = *(a2 + 16);
  while (*(v15 + 24 * v14 + 8) != v13)
  {
    v14 = *(v15 + 24 * v14) & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      goto LABEL_18;
    }
  }

  return v15 + 24 * v14 + 16;
}

uint64_t re::removeNameMappedProtectedTexture<re::DynamicArray<re::TextureViews<re::TextureHandle>>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    re::DynamicArray<re::TextureViews<re::TextureHandle>>::removeStableAt(a3, *(i64 + 9));
    v8 = *(i64 + 9);
    re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::mapValues<void re::removeNameMappedProtectedTexture<re::DynamicArray<re::TextureViews<re::TextureHandle>>>(re::WeakStringID,re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>&,re::DynamicArray<re::TextureViews<re::TextureHandle>> &)::{lambda(re::IndexAndProtectionOptions&)#1}>(a2, &v8);
    return re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::remove(a2, a1);
  }

  return result;
}

void re::DynamicArray<re::TextureViews<re::TextureHandle>>::removeStableAt(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v2 - 1 > a2)
  {
    v4 = *(a1 + 32);
    if (v4 + 40 * a2 + 40 != v4 + 40 * v2)
    {
      v5 = 40 * a2;
      v6 = 40 * v2 - 40;
      while (1)
      {
        v7 = v4 + v5;
        re::TextureHandle::operator=(v4 + v5, v4 + v5 + 40);
        re::Optional<NS::SharedPtr<MTL::Texture>>::operator=(v7 + 16, v7 + 56);
        if (*(v4 + v5 + 32))
        {
          if (*(v4 + v5 + 72))
          {
            goto LABEL_10;
          }

          *(v7 + 32) = 0;
        }

        else if (*(v4 + v5 + 72))
        {
          *(v7 + 32) = 1;
LABEL_10:
          *(v4 + v5 + 33) = *(v4 + v5 + 73);
        }

        v4 += 40;
        v6 -= 40;
        if (v5 == v6)
        {
          v2 = *(a1 + 16);
          break;
        }
      }
    }
  }

  v8 = *(a1 + 32) + 40 * v2;
  if (*(v8 - 24) == 1)
  {
    v9 = *(v8 - 16);
    if (v9)
    {

      *(v8 - 16) = 0;
    }
  }

  re::TextureHandle::invalidate((v8 - 40));
  --*(a1 + 16);
  ++*(a1 + 24);
}

int8x16_t **re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::mapValues<void re::removeNameMappedProtectedTexture<re::DynamicArray<re::TextureViews<re::TextureHandle>>>(re::WeakStringID,re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>&,re::DynamicArray<re::TextureViews<re::TextureHandle>> &)::{lambda(re::IndexAndProtectionOptions&)#1}>(int8x16_t **result, unsigned __int8 *a2)
{
  v12[0] = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v12[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v13 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(v4, *(v4 + 8) + 16 * v10);
        v11 = *(v4 + 8) + 16 * v13;
        if (*(v11 + 9) >= *a2)
        {
          --*(v11 + 9);
        }

        re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::updateKvpsHash(v4, v11);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v12);
        v10 = v13;
      }

      while (v13 != -1);
    }
  }

  return result;
}

uint64_t re::removeNameMappedConstant(void *a1, int8x16_t **a2, void *a3, uint64_t a4)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    if (*(i64 + 10) == a4)
    {
      v10 = *(i64 + 8);
      if (((a4 + 3) & 0xFFFFFFFFFFFFFFFCLL) >= a3[2] - v10)
      {
        v11 = a3[2] - v10;
      }

      else
      {
        v11 = (a4 + 3) & 0xFFFFFFFFFFFFFFFCLL;
      }

      re::DynamicArray<unsigned char>::removeManyStableAt(a3, v10, v11);
      v20[0] = a2;
      v12 = a2[2];
      if (v12 >= 0x10)
      {
        v13 = 0;
        v14 = *a2;
        v15 = v12 >> 4;
        while (1)
        {
          v16 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v14), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
          v20[1] = v16 ^ 0xFFFFLL;
          if (v16 != 0xFFFFLL)
          {
            break;
          }

          v13 -= 16;
          ++v14;
          if (!--v15)
          {
            return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::remove(a2, a1);
          }
        }

        v17 = __clz(__rbit64(v16 ^ 0xFFFFLL));
        v18 = v17 - v13;
        v21 = v17 - v13;
        if (v17 + 1 != v13)
        {
          do
          {
            re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(a2, a2[1][v18].i64);
            v19 = a2[1][v21].i64;
            if (*(v19 + 8) > *(i64 + 8))
            {
              *(v19 + 8) -= v11;
            }

            re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(a2, v19);
            re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v20);
            v18 = v21;
          }

          while (v21 != -1);
        }
      }

      return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::remove(a2, a1);
    }
  }

  return result;
}

void *re::DynamicArray<unsigned char>::removeManyStableAt(void *result, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = result;
    v5 = a2 + a3 - 1;
    v6 = result[2];
    if (v5 >= v6)
    {
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v5 < v6 - 1)
    {
      v7 = result[4];
      result = (v7 + a2);
      v8 = (v7 + a2 + a3);
      v9 = (v7 + v6);
      if (v9 != v8)
      {
        result = memmove(result, v8, v9 - v8);
        v6 = v4[2];
      }
    }

    v4[2] = v6 - a3;
    ++*(v4 + 6);
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::removeNameMappedConstant(void *a1, int8x16_t **a2, void *a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    v10 = *(i64 + 8);
    v9 = (i64 + 8);
    v8 = v10;
    v11 = a3[2] - v10;
    if (((*(v9 + 2) + 3) & 0x1FCu) >= v11)
    {
      v12 = v11;
    }

    else
    {
      v12 = (*(v9 + 2) + 3) & 0x1FC;
    }

    re::DynamicArray<unsigned char>::removeManyStableAt(a3, v8, v12);
    v21[0] = a2;
    v13 = a2[2];
    if (v13 >= 0x10)
    {
      v14 = 0;
      v15 = *a2;
      v16 = v13 >> 4;
      while (1)
      {
        v17 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v15), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
        v21[1] = v17 ^ 0xFFFFLL;
        if (v17 != 0xFFFFLL)
        {
          break;
        }

        v14 -= 16;
        ++v15;
        if (!--v16)
        {
          return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::remove(a2, a1);
        }
      }

      v18 = __clz(__rbit64(v17 ^ 0xFFFFLL));
      v19 = v18 - v14;
      v22 = v18 - v14;
      if (v18 + 1 != v14)
      {
        do
        {
          re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(a2, a2[1][v19].i64);
          v20 = a2[1][v22].i64;
          if (*(v20 + 8) > *v9)
          {
            *(v20 + 8) -= v12;
          }

          re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateKvpsHash(a2, v20);
          re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
          v19 = v22;
        }

        while (v22 != -1);
      }
    }

    return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::remove(a2, a1);
  }

  return result;
}

re::ShadowRenderManager *re::ShadowRenderManager::ShadowRenderManager(re::ShadowRenderManager *this, const re::RenderManager *a2)
{
  *this = a2;
  *(this + 1) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 148) = 0u;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 164) = 0x7FFFFFFFLL;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 52) = 0;
  *(this + 212) = 0x7FFFFFFFLL;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 64) = 0;
  *(this + 260) = 0x7FFFFFFFLL;
  v3 = re::MeshShadowGenerationQueue::MeshShadowGenerationQueue((this + 272));
  *(this + 52) = 0;
  *(this + 53) = 0;
  *(this + 54) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 59) = 0x7FFFFFFF00000000;
  *(this + 120) = 0;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 128) = 0;
  *(this + 63) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 548) = 0u;
  *(this + 564) = 0x7FFFFFFFLL;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 76) = 0;
  return this;
}

uint64_t *re::ShadowRenderManager::getReceiverMesh(re::ShadowRenderManager *this)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v1 = (this + 8);
  if (!*(this + 1))
  {
    v2 = *this;
    v4 = vdupq_n_s64(1uLL);
    v5 = 0;
    re::generatePatchPlane(v2, &v4, v6);
    std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::operator=[abi:nn200100](v1, v6);
    std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::~unique_ptr[abi:nn200100](v6);
  }

  return v1;
}

uint64_t *std::unique_ptr<re::MeshPart,std::function<void ()(re::MeshPart*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::MeshPart *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::MeshPart *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

void re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
{
  v4 = 245;
  v5 = &re::internal::PrimeHelper::s_primes;
  do
  {
    v6 = v4 >> 1;
    v7 = &v5[v4 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v4 += ~(v4 >> 1);
    if (v9 < a3)
    {
      v5 = v8;
    }

    else
    {
      v4 = v6;
    }
  }

  while (v4);
  v10 = *v5;
  *a1 = a2;
  v11 = (4 * v10 + 15) & 0x7FFFFFFF0;
  v12 = (*(*a2 + 32))(a2, v11 + 80 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_23, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 750);
    _os_crash();
    __break(1u);
  }
}

uint64_t std::__function::__value_func<void ()(re::MeshPart *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::MeshPart *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::MeshPart *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

double re::WorldOrderedShadows::create@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  memset(v34, 0, 36);
  *&v34[36] = 0x7FFFFFFFLL;
  v5 = *(a1 + 2);
  if (v5)
  {
    v6 = 32 * v5;
    v7 = (*(a1 + 4) + 8);
    do
    {
      v8 = *v7;
      v7 += 2;
      v44[0] = v8;
      v30 = 0;
      v4 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v34, v44, &v30);
      ++*(v4 + 1);
      v6 -= 32;
    }

    while (v6);
  }

  v9 = *&v34[32];
  if (*&v34[32])
  {
    v10 = 0;
    v11 = *&v34[16];
    while (1)
    {
      v12 = *v11;
      v11 += 10;
      if (v12 < 0)
      {
        break;
      }

      if (*&v34[32] == ++v10)
      {
        LODWORD(v10) = *&v34[32];
        break;
      }
    }
  }

  else
  {
    LODWORD(v10) = 0;
  }

  if (v10 == *&v34[32])
  {
    v13 = 0;
  }

  else
  {
    LODWORD(v13) = 0;
    v14 = *&v34[16];
    do
    {
      v15 = v14 + 40 * v10;
      v16 = *(v15 + 28);
      *(v15 + 24) = v13;
      *(v15 + 28) = 0;
      v13 = (v16 + v13);
      if (v9 <= v10 + 1)
      {
        v17 = v10 + 1;
      }

      else
      {
        v17 = v9;
      }

      while (v17 - 1 != v10)
      {
        LODWORD(v10) = v10 + 1;
        if ((*(v14 + 40 * v10) & 0x80000000) != 0)
        {
          goto LABEL_20;
        }
      }

      LODWORD(v10) = v17;
LABEL_20:
      ;
    }

    while (v10 != v9);
  }

  v33 = 0;
  v31 = 0uLL;
  v32 = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(&v30, v13);
  ++v32;
  re::DynamicArray<re::AllocatedShadowHandle>::resizeUninitialized(&v30, v13);
  v18 = *(a1 + 2);
  if (v18)
  {
    v19 = *(a1 + 4);
    v20 = &v19[4 * v18];
    do
    {
      v21 = *v19;
      v22 = v19[1];
      v24 = v19[2];
      v23 = v19[3];
      *&v44[0] = v22;
      *(&v44[0] + 1) = v24;
      v25 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v34, v44);
      v26 = (v25[1] + *v25);
      v27 = *(&v31 + 1);
      if (*(&v31 + 1) <= v26)
      {
        v35 = 0;
        memset(v44, 0, sizeof(v44));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        v39 = 789;
        v40 = 2048;
        v41 = v26;
        v42 = 2048;
        v43 = v27;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v28 = v33 + 32 * v26;
      *v28 = v21;
      *(v28 + 8) = v22;
      *(v28 + 16) = v24;
      *(v28 + 24) = v23;
      ++v25[1];
      v19 += 4;
    }

    while (v19 != v20);
  }

  *a2 = v30;
  *(a2 + 8) = v31;
  *(a2 + 32) = v33;
  *(a2 + 24) = 1;
  *(a2 + 40) = *v34;
  *v34 = 0uLL;
  *(a2 + 56) = *&v34[16];
  *&v34[16] = 0;
  *(a2 + 64) = *&v34[24];
  *&v34[24] = xmmword_1E3058120;
  *(a2 + 80) = 1;
  return re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v34);
}

double re::WorldOrderedShadows::create@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v51 = *MEMORY[0x1E69E9840];
  memset(v40, 0, 36);
  *&v40[36] = 0x7FFFFFFFLL;
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 18;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v8 = *(a1 + 16);
    do
    {
      v50[0] = *(v8 + 72 * v5 + 40);
      v36 = 0;
      v3 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::add(v40, v50, &v36);
      ++*(v3 + 1);
      if (*(a1 + 32) <= (v5 + 1))
      {
        v9 = v5 + 1;
      }

      else
      {
        v9 = *(a1 + 32);
      }

      v8 = *(a1 + 16);
      while (v9 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 72 * v5) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v9;
LABEL_17:
      ;
    }

    while (v5 != v4);
  }

  v10 = *&v40[32];
  if (*&v40[32])
  {
    v11 = 0;
    v12 = *&v40[16];
    while (1)
    {
      v13 = *v12;
      v12 += 10;
      if (v13 < 0)
      {
        break;
      }

      if (*&v40[32] == ++v11)
      {
        LODWORD(v11) = *&v40[32];
        break;
      }
    }
  }

  else
  {
    LODWORD(v11) = 0;
  }

  if (v11 == *&v40[32])
  {
    v14 = 0;
  }

  else
  {
    LODWORD(v14) = 0;
    v15 = *&v40[16];
    do
    {
      v16 = v15 + 40 * v11;
      v17 = *(v16 + 28);
      *(v16 + 24) = v14;
      *(v16 + 28) = 0;
      v14 = (v17 + v14);
      if (v10 <= v11 + 1)
      {
        v18 = v11 + 1;
      }

      else
      {
        v18 = v10;
      }

      while (v18 - 1 != v11)
      {
        LODWORD(v11) = v11 + 1;
        if ((*(v15 + 40 * v11) & 0x80000000) != 0)
        {
          goto LABEL_34;
        }
      }

      LODWORD(v11) = v18;
LABEL_34:
      ;
    }

    while (v11 != v10);
  }

  v39 = 0;
  v37 = 0uLL;
  v38 = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(&v36, v14);
  ++v38;
  re::DynamicArray<re::AllocatedShadowHandle>::resizeUninitialized(&v36, v14);
  v19 = *(a1 + 32);
  if (v19)
  {
    v20 = 0;
    v21 = *(a1 + 16);
    while (1)
    {
      v22 = *v21;
      v21 += 18;
      if (v22 < 0)
      {
        break;
      }

      if (v19 == ++v20)
      {
        LODWORD(v20) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 != v19)
  {
    v23 = *(a1 + 16);
    do
    {
      v24 = (v23 + 72 * v20);
      v26 = v24[4];
      v25 = v24[5];
      v27 = v24[6];
      v28 = v24[7];
      *&v50[0] = v25;
      *(&v50[0] + 1) = v27;
      v29 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(v40, v50);
      v30 = (v29[1] + *v29);
      v31 = *(&v37 + 1);
      if (*(&v37 + 1) <= v30)
      {
        v41 = 0;
        memset(v50, 0, sizeof(v50));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v42 = 136315906;
        v43 = "operator[]";
        v44 = 1024;
        v45 = 789;
        v46 = 2048;
        v47 = v30;
        v48 = 2048;
        v49 = v31;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v32 = v39 + 32 * v30;
      *v32 = v26;
      *(v32 + 8) = v25;
      *(v32 + 16) = v27;
      *(v32 + 24) = v28;
      ++v29[1];
      if (*(a1 + 32) <= (v20 + 1))
      {
        v33 = v20 + 1;
      }

      else
      {
        v33 = *(a1 + 32);
      }

      v23 = *(a1 + 16);
      while (v33 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(v23 + 72 * v20) & 0x80000000) != 0)
        {
          goto LABEL_52;
        }
      }

      LODWORD(v20) = v33;
LABEL_52:
      ;
    }

    while (v20 != v19);
  }

  *a2 = v36;
  *(a2 + 8) = v37;
  *(a2 + 32) = v39;
  *(a2 + 24) = 1;
  *(a2 + 40) = *v40;
  *v40 = 0uLL;
  *(a2 + 56) = *&v40[16];
  *&v40[16] = 0;
  *(a2 + 64) = *&v40[24];
  *&v40[24] = xmmword_1E3058120;
  *(a2 + 80) = 1;
  return re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v40);
}

void re::PersistentShadowState::processMeshShadowInputRemovals(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v78 = *MEMORY[0x1E69E9840];
  *(a3 + 32) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 36) = 0x7FFFFFFFLL;
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = a1;
    v6 = *(a2 + 32);
    v71 = v6 + 368 * v4;
    do
    {
      v73 = *(v6 + 248);
      if (v73)
      {
        v7 = 0;
        v8 = (*(v6 + 232) + 8);
        while (1)
        {
          v9 = *v8;
          v8 += 6;
          if (v9 < 0)
          {
            break;
          }

          if (v73 == ++v7)
          {
            LODWORD(v7) = *(v6 + 248);
            break;
          }
        }
      }

      else
      {
        LODWORD(v7) = 0;
      }

      v10 = *(v6 + 360);
      if (v7 != v73)
      {
        v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
        v72 = (v11 ^ (v11 >> 31)) - 0x61C8864680B583E9;
        do
        {
          v12 = *(v6 + 232);
          a1 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v5 + 176, v10);
          if (a1)
          {
            v13 = a1;
            v14 = v12 + 24 * v7;
            *&v75 = *(v14 + 16);
            *(&v75 + 1) = v10;
            v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v75 ^ (v75 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v75 ^ (v75 >> 30))) >> 27));
            a1 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v5 + 128, &v75, (v72 + ((v15 ^ (v15 >> 31)) << 6) + ((v15 ^ (v15 >> 31)) >> 2)) ^ v15 ^ (v15 >> 31), buf);
            if (*&buf[12] != 0x7FFFFFFF)
            {
              v16 = *re::shadowLogObjects(a1);
              a1 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
              if (a1)
              {
                v17 = *(v14 + 16);
                *buf = 134218240;
                *&buf[4] = v17;
                *&buf[12] = 2048;
                *&buf[14] = v10;
                _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "PersistentShadowState: Removing cluster %llu (scene %llu)", buf, 0x16u);
              }

              v18 = *(v13 + 16);
              if (v18)
              {
                v19 = *(v13 + 32);
                v20 = 8 * v18;
                do
                {
                  *buf = *(v14 + 16);
                  v21 = *v19++;
                  *&buf[8] = v21;
                  *&buf[16] = v10;
                  a1 = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a3, buf);
                  v20 -= 8;
                }

                while (v20);
              }
            }
          }

          v22 = *(v6 + 248);
          if (v22 <= v7 + 1)
          {
            v22 = v7 + 1;
          }

          while (v22 - 1 != v7)
          {
            LODWORD(v7) = v7 + 1;
            if ((*(*(v6 + 232) + 24 * v7 + 8) & 0x80000000) != 0)
            {
              goto LABEL_24;
            }
          }

          LODWORD(v7) = v22;
LABEL_24:
          ;
        }

        while (v7 != v73);
      }

      v23 = *(v6 + 96);
      if (v23)
      {
        v24 = *(v6 + 112);
        v25 = &v24[v23];
        do
        {
          v26 = *re::shadowLogObjects(a1);
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            v27 = *v24;
            *buf = 134218240;
            *&buf[4] = v27;
            *&buf[12] = 2048;
            *&buf[14] = v10;
            _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "PersistentShadowState: Removing world %llu (scene %llu)", buf, 0x16u);
          }

          a1 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v5 + 176, v10);
          if (a1)
          {
            v28 = *(a1 + 16);
            if (v28)
            {
              v29 = 8 * v28;
              v30 = *(a1 + 32);
              while (*v30 != *v24)
              {
                ++v30;
                v29 -= 8;
                if (!v29)
                {
                  goto LABEL_50;
                }
              }
            }

            else
            {
              v30 = *(a1 + 32);
            }

            if (v30 != (*(a1 + 32) + 8 * v28))
            {
              v31 = *(v5 + 160);
              if (v31)
              {
                v32 = 0;
                v33 = *(v5 + 144);
                while ((*v33 & 0x80000000) == 0)
                {
                  v33 += 96;
                  if (v31 == ++v32)
                  {
                    LODWORD(v32) = *(v5 + 160);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v32) = 0;
              }

LABEL_49:
              while (v32 != v31)
              {
                *buf = *(*(v5 + 144) + 384 * v32 + 8);
                *&buf[8] = *v24;
                *&buf[16] = v10;
                a1 = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(a3, buf);
                v34 = *(v5 + 160);
                if (v34 <= v32 + 1)
                {
                  v34 = v32 + 1;
                }

                while (v34 - 1 != v32)
                {
                  LODWORD(v32) = v32 + 1;
                  if ((*(*(v5 + 144) + 384 * v32) & 0x80000000) != 0)
                  {
                    goto LABEL_49;
                  }
                }

                LODWORD(v32) = v34;
              }
            }
          }

LABEL_50:
          ++v24;
        }

        while (v24 != v25);
        v35 = *(v6 + 96);
        if (v35)
        {
          v36 = *(v6 + 112);
          v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
          v74 = v37 ^ (v37 >> 31);
          v38 = 8 * v35;
          do
          {
            a1 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v5 + 176, v10);
            if (a1)
            {
              v39 = a1;
              a1 = re::DynamicArray<unsigned long long>::remove(a1, v36);
              if (!*(v39 + 16))
              {
                a1 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v5 + 176, v10, v74);
                v40 = *&buf[12];
                if (*&buf[12] != 0x7FFFFFFF)
                {
                  v41 = *(v5 + 192);
                  a1 = v41 + (*&buf[12] << 6);
                  v42 = *a1 & 0x7FFFFFFF;
                  if (*&buf[16] == 0x7FFFFFFF)
                  {
                    *(*(v5 + 184) + 4 * *&buf[8]) = v42;
                  }

                  else
                  {
                    *(v41 + (*&buf[16] << 6)) = *(v41 + (*&buf[16] << 6)) & 0x80000000 | v42;
                  }

                  v43 = *a1;
                  if ((*a1 & 0x80000000) != 0)
                  {
                    *a1 = v43 & 0x7FFFFFFF;
                    a1 = re::DynamicArray<unsigned long>::deinit(a1 + 16);
                    v41 = *(v5 + 192);
                    v43 = *(v41 + (v40 << 6));
                  }

                  *(v41 + (v40 << 6)) = *(v5 + 212) | v43 & 0x80000000;
                  --*(v5 + 204);
                  v44 = *(v5 + 216) + 1;
                  *(v5 + 212) = v40;
                  *(v5 + 216) = v44;
                }
              }
            }

            ++v36;
            v38 -= 8;
          }

          while (v38);
        }
      }

      v45 = *(v6 + 248);
      if (v45)
      {
        v46 = 0;
        v47 = (*(v6 + 232) + 8);
        while (1)
        {
          v48 = *v47;
          v47 += 6;
          if (v48 < 0)
          {
            break;
          }

          if (v45 == ++v46)
          {
            LODWORD(v46) = *(v6 + 248);
            break;
          }
        }
      }

      else
      {
        LODWORD(v46) = 0;
      }

      if (v46 != v45)
      {
        v49 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
        v50 = (v49 ^ (v49 >> 31)) - 0x61C8864680B583E9;
        do
        {
          *&v75 = *(*(v6 + 232) + 24 * v46 + 16);
          *(&v75 + 1) = v10;
          v51 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v75 ^ (v75 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v75 ^ (v75 >> 30))) >> 27));
          a1 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v5 + 128, &v75, (v50 + ((v51 ^ (v51 >> 31)) << 6) + ((v51 ^ (v51 >> 31)) >> 2)) ^ v51 ^ (v51 >> 31), buf);
          v52 = *&buf[12];
          if (*&buf[12] != 0x7FFFFFFF)
          {
            v53 = *(v5 + 144);
            v54 = *(v53 + 384 * *&buf[12]) & 0x7FFFFFFF;
            if (*&buf[16] == 0x7FFFFFFF)
            {
              *(*(v5 + 136) + 4 * *&buf[8]) = v54;
              v52 = *&buf[12];
            }

            else
            {
              *(v53 + 384 * *&buf[16]) = *(v53 + 384 * *&buf[16]) & 0x80000000 | v54;
            }

            a1 = v53 + 384 * v52;
            v55 = *a1;
            if ((*a1 & 0x80000000) != 0)
            {
              *a1 = v55 & 0x7FFFFFFF;
              a1 = re::DynamicArray<unsigned long>::deinit(a1 + 32);
              v52 = *&buf[12];
              v53 = *(v5 + 144);
              v55 = *(v53 + 384 * *&buf[12]);
            }

            *(v53 + 384 * v52) = *(v5 + 164) | v55 & 0x80000000;
            --*(v5 + 156);
            v56 = *(v5 + 168) + 1;
            *(v5 + 164) = v52;
            *(v5 + 168) = v56;
          }

          v57 = *(v6 + 248);
          if (v57 <= v46 + 1)
          {
            v57 = v46 + 1;
          }

          while (v57 - 1 != v46)
          {
            LODWORD(v46) = v46 + 1;
            if ((*(*(v6 + 232) + 24 * v46 + 8) & 0x80000000) != 0)
            {
              goto LABEL_84;
            }
          }

          LODWORD(v46) = v57;
LABEL_84:
          ;
        }

        while (v46 != v45);
      }

      v58 = *(a3 + 32);
      if (v58)
      {
        v59 = 0;
        v60 = (*(a3 + 16) + 8);
        while (1)
        {
          v61 = *v60;
          v60 += 10;
          if (v61 < 0)
          {
            break;
          }

          if (v58 == ++v59)
          {
            LODWORD(v59) = *(a3 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v59) = 0;
      }

      if (v59 != v58)
      {
        v62 = *(a3 + 16);
        do
        {
          v63 = v62 + 40 * v59;
          a1 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::tryGet(v5 + 80, (v63 + 16));
          if (a1)
          {
            re::ShadowTileManager::releaseTile(v5, (a1 + 24));
            v64 = re::Hash<re::ShadowPair>::operator()(buf, (v63 + 16));
            re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(v5 + 80, (v63 + 16), v64, buf);
            v65 = *&buf[12];
            if (*&buf[12] != 0x7FFFFFFF)
            {
              v66 = *(v5 + 96);
              v67 = *(v66 + 72 * *&buf[12]) & 0x7FFFFFFF;
              if (*&buf[16] == 0x7FFFFFFF)
              {
                *(*(v5 + 88) + 4 * *&buf[8]) = v67;
                v65 = *&buf[12];
              }

              else
              {
                *(v66 + 72 * *&buf[16]) = *(v66 + 72 * *&buf[16]) & 0x80000000 | v67;
              }

              *(v66 + 72 * v65) = *(v5 + 116);
              --*(v5 + 108);
              v68 = *(v5 + 120) + 1;
              *(v5 + 116) = v65;
              *(v5 + 120) = v68;
            }

            v69 = *(v63 + 16);
            v76 = *(v63 + 32);
            v75 = v69;
            re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(v5 + 224, &v75);
            *buf = v75;
            *&buf[16] = v76;
            a1 = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::remove(v5 + 320, buf);
          }

          v70 = *(a3 + 32);
          v62 = *(a3 + 16);
          if (v70 <= v59 + 1)
          {
            v70 = v59 + 1;
          }

          while (v70 - 1 != v59)
          {
            LODWORD(v59) = v59 + 1;
            if ((*(v62 + 40 * v59 + 8) & 0x80000000) != 0)
            {
              goto LABEL_106;
            }
          }

          LODWORD(v59) = v70;
LABEL_106:
          ;
        }

        while (v59 != v58);
      }

      v6 += 368;
    }

    while (v6 != v71);
  }
}

unint64_t re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(uint64_t a1, __int128 *a2)
{
  result = re::Hash<re::ShadowPair>::operator()(&v12, a2);
  v5 = *(a1 + 24);
  if (!v5)
  {
    LODWORD(v6) = 0;
    goto LABEL_10;
  }

  v6 = result % v5;
  v7 = *(*(a1 + 8) + 4 * (result % v5));
  if (v7 == 0x7FFFFFFF)
  {
LABEL_10:
    result = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::addAsCopy(a1, v6, result, a2, a2);
    ++*(a1 + 40);
    return result;
  }

  v8 = *(a1 + 16);
  while (1)
  {
    v9 = v8 + 40 * v7;
    v11 = *(v9 + 16);
    v10 = v9 + 16;
    if (v11 == *a2 && *(v10 + 8) == *(a2 + 1) && *(v10 + 16) == *(a2 + 2))
    {
      return result;
    }

    v7 = *(v8 + 40 * v7 + 8) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      goto LABEL_10;
    }
  }
}

void re::PersistentShadowState::processMeshShadowInputUpdates(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v514 = v2;
  v515 = v3;
  v518 = v4;
  v601 = v5;
  v7 = v6;
  v8 = v1;
  v516 = v9;
  v647 = *MEMORY[0x1E69E9840];
  v10 = re::StackScratchAllocator::StackScratchAllocator(v628);
  v11 = *(v7 + 16);
  __asm { FMOV            V8.2S, #1.0 }

  if (v11)
  {
    v16 = *(v7 + 32);
    v598 = v16 + 368 * v11;
    v17.i64[0] = 0x7F0000007FLL;
    v17.i64[1] = 0x7F0000007FLL;
    v607 = vnegq_f32(v17);
    while (1)
    {
      v18 = *(v16 + 360);
      v19 = *(v16 + 16);
      v602 = v18 ^ (v18 >> 30);
      if (v19)
      {
        v20 = *(v16 + 32);
        v613 = &v20[v19];
        v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v602) ^ ((0xBF58476D1CE4E5B9 * v602) >> 27));
        v22 = v21 ^ (v21 >> 31);
        do
        {
          __src[0].i64[0] = *v20;
          v23 = *re::shadowLogObjects(v10);
          if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
          {
            buf[0].n128_u32[0] = 134218240;
            *(buf[0].n128_u64 + 4) = __src[0].i64[0];
            buf[0].n128_u16[6] = 2048;
            *(&buf[0].n128_u64[1] + 6) = v18;
            _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "PersistentShadowState: Adding world %llu (scene %llu)", buf, 0x16u);
          }

          memset(buf, 0, 24);
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, v8 + 176, v18, v22);
          if (buf[0].n128_u32[3] == 0x7FFFFFFF)
          {
            v24 = re::HashTable<unsigned long long,re::DynamicArray<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v8 + 176, buf[0].n128_u32[2], buf[0].n128_u64[0]);
            *(v24 + 16) = 0;
            v25 = v24 + 16;
            *(v25 - 8) = v18;
            *(v25 + 32) = 0;
            *(v25 + 8) = 0;
            *(v25 + 16) = 0;
            *(v25 + 24) = 1;
            ++*(v8 + 216);
          }

          else
          {
            v25 = *(v8 + 192) + (buf[0].n128_u32[3] << 6) + 16;
          }

          v10 = re::DynamicArray<re::TransitionCondition *>::add(v25, __src);
          v26 = *(v8 + 160);
          if (v26)
          {
            v27 = 0;
            v28 = *(v8 + 144);
            while ((*v28 & 0x80000000) == 0)
            {
              v28 += 96;
              if (v26 == ++v27)
              {
                LODWORD(v27) = *(v8 + 160);
                break;
              }
            }
          }

          else
          {
            LODWORD(v27) = 0;
          }

LABEL_22:
          while (v27 != v26)
          {
            buf[0].n128_u64[0] = *(*(v8 + 144) + 384 * v27 + 8);
            buf[0].n128_u64[1] = __src[0].i64[0];
            buf[1].n128_u64[0] = v18;
            v10 = re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(v8 + 224, buf);
            v29 = *(v8 + 160);
            if (v29 <= v27 + 1)
            {
              v29 = v27 + 1;
            }

            while (v29 - 1 != v27)
            {
              LODWORD(v27) = v27 + 1;
              if ((*(*(v8 + 144) + 384 * v27) & 0x80000000) != 0)
              {
                goto LABEL_22;
              }
            }

            LODWORD(v27) = v29;
          }

          ++v20;
        }

        while (v20 != v613);
      }

      v611 = *(v16 + 152);
      if (v611)
      {
        v30 = 0;
        v31 = *(v16 + 136);
        while ((*v31 & 0x80000000) == 0)
        {
          v31 += 68;
          if (v611 == ++v30)
          {
            LODWORD(v30) = *(v16 + 152);
            break;
          }
        }
      }

      else
      {
        LODWORD(v30) = 0;
      }

      if (v30 != v611)
      {
        v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v602) ^ ((0xBF58476D1CE4E5B9 * v602) >> 27));
        v614 = (v32 ^ (v32 >> 31)) - 0x61C8864680B583E9;
        do
        {
          v33 = *(v16 + 136) + 272 * v30;
          v35 = *(v33 + 8);
          v34 = v33 + 8;
          __src[0].i64[0] = v35;
          __src[0].i64[1] = v18;
          v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
          v37 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v8 + 128, __src, (v614 + ((v36 ^ (v36 >> 31)) << 6) + ((v36 ^ (v36 >> 31)) >> 2)) ^ v36 ^ (v36 >> 31), buf);
          v38 = buf[0].n128_u32[3];
          if (buf[0].n128_u32[3] == 0x7FFFFFFF)
          {
            v39 = *re::shadowLogObjects(v37);
            if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
            {
              v40 = *v34;
              buf[0].n128_u32[0] = 134218240;
              *(buf[0].n128_u64 + 4) = v40;
              buf[0].n128_u16[6] = 2048;
              *(&buf[0].n128_u64[1] + 6) = v18;
              _os_log_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_DEFAULT, "PersistentShadowState: Inserting cluster %llu (scene %llu)", buf, 0x16u);
            }
          }

          __src[0].i64[0] = *v34;
          __src[0].i64[1] = v18;
          memset(buf, 0, 24);
          v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__src[0].i64[0] ^ (__src[0].i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__src[0].i64[0] ^ (__src[0].i64[0] >> 30))) >> 27));
          re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v8 + 128, __src, (v614 + ((v41 ^ (v41 >> 31)) << 6) + ((v41 ^ (v41 >> 31)) >> 2)) ^ v41 ^ (v41 >> 31), buf);
          if (buf[0].n128_u32[3] == 0x7FFFFFFF)
          {
            v42 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::allocEntry(v8 + 128, buf[0].n128_u32[2], buf[0].n128_u64[0]);
            *(v42 + 32) = 0u;
            v43 = v42 + 32;
            *(v42 + 8) = __src[0];
            *(v42 + 48) = 0u;
            *(v42 + 64) = 0u;
            *(v42 + 80) = 0u;
            *(v42 + 96) = 0u;
            *(v42 + 112) = 0u;
            *(v42 + 128) = 0u;
            *(v42 + 144) = 0u;
            *(v42 + 160) = 0u;
            *(v42 + 176) = 0u;
            *(v42 + 192) = 0u;
            *(v42 + 208) = 0u;
            *(v42 + 224) = 0u;
            *(v42 + 240) = 0u;
            *(v42 + 256) = 0u;
            *(v42 + 272) = 0u;
            *(v42 + 288) = 0u;
            *(v42 + 304) = 0u;
            *(v42 + 320) = 0u;
            *(v42 + 336) = 0u;
            *(v42 + 352) = 0u;
            *&v44 = 0x7F0000007FLL;
            *(&v44 + 1) = 0x7F0000007FLL;
            *(v42 + 80) = v607;
            *(v42 + 96) = v44;
            *(v42 + 112) = v607;
            *(v42 + 128) = v44;
            *(v42 + 144) = 0u;
            *(v42 + 160) = 0u;
            *(v42 + 176) = 0u;
            *(v42 + 192) = 0u;
            *(v42 + 208) = 0u;
            *(v42 + 224) = xmmword_1E30476B0;
            *(v42 + 240) = _D8;
            ++*(v8 + 168);
          }

          else
          {
            v43 = *(v8 + 144) + 384 * buf[0].n128_u32[3] + 32;
          }

          re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v43, v34 + 8);
          v45 = *(v34 + 72);
          v46 = *(v34 + 104);
          v47 = *(v34 + 56);
          *(v43 + 80) = *(v34 + 88);
          *(v43 + 96) = v46;
          *(v43 + 48) = v47;
          *(v43 + 64) = v45;
          v48 = *(v34 + 136);
          v49 = *(v34 + 168);
          v50 = *(v34 + 120);
          *(v43 + 144) = *(v34 + 152);
          *(v43 + 160) = v49;
          *(v43 + 112) = v50;
          *(v43 + 128) = v48;
          v51 = *(v34 + 200);
          v52 = *(v34 + 216);
          v53 = *(v34 + 184);
          *(v43 + 224) = *(v34 + 232);
          *(v43 + 192) = v51;
          *(v43 + 208) = v52;
          *(v43 + 176) = v53;
          v10 = re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v8 + 176, v18);
          if (v10)
          {
            v54 = *(v10 + 2);
            if (v54)
            {
              v55 = *(v10 + 4);
              v56 = 8 * v54;
              do
              {
                v57 = *v55++;
                buf[0].n128_u64[0] = *v34;
                buf[0].n128_u64[1] = v57;
                buf[1].n128_u64[0] = v18;
                v10 = re::MeshShadowGenerationQueue::enqueue(v8 + 224, buf, v38 == 0x7FFFFFFF);
                v56 -= 8;
              }

              while (v56);
            }
          }

          v58 = *(v16 + 152);
          if (v58 <= v30 + 1)
          {
            v58 = v30 + 1;
          }

          while (v58 - 1 != v30)
          {
            LODWORD(v30) = v30 + 1;
            if ((*(*(v16 + 136) + 272 * v30) & 0x80000000) != 0)
            {
              goto LABEL_48;
            }
          }

          LODWORD(v30) = v58;
LABEL_48:
          ;
        }

        while (v30 != v611);
      }

      v59 = *(v16 + 200);
      if (v59)
      {
        v60 = 0;
        v61 = *(v16 + 184);
        while (1)
        {
          v62 = *v61;
          v61 += 32;
          if (v62 < 0)
          {
            break;
          }

          if (v59 == ++v60)
          {
            LODWORD(v60) = *(v16 + 200);
            break;
          }
        }
      }

      else
      {
        LODWORD(v60) = 0;
      }

      if (v60 != v59)
      {
        break;
      }

LABEL_78:
      v71 = *(v16 + 56);
      if (v71)
      {
        v72 = *(v16 + 72);
        v615 = &v72[v71];
        v73 = *(v8 + 160);
        do
        {
          if (v73)
          {
            v74 = 0;
            v75 = *(v8 + 144);
            while ((*v75 & 0x80000000) == 0)
            {
              v75 += 96;
              if (v73 == ++v74)
              {
                LODWORD(v74) = v73;
                break;
              }
            }
          }

          else
          {
            LODWORD(v74) = 0;
          }

          if (v74 == v73)
          {
            v76 = v73;
          }

          else
          {
            v77 = *v72;
            do
            {
              buf[0].n128_u64[0] = *(*(v8 + 144) + 384 * v74 + 8);
              buf[0].n128_u64[1] = v77;
              buf[1].n128_u64[0] = v18;
              v10 = re::MeshShadowGenerationBacklog::pushBack(v8 + 272, buf);
              v76 = *(v8 + 160);
              if (v76 <= v74 + 1)
              {
                v78 = v74 + 1;
              }

              else
              {
                v78 = *(v8 + 160);
              }

              while (v78 - 1 != v74)
              {
                LODWORD(v74) = v74 + 1;
                if ((*(*(v8 + 144) + 384 * v74) & 0x80000000) != 0)
                {
                  goto LABEL_96;
                }
              }

              LODWORD(v74) = v78;
LABEL_96:
              ;
            }

            while (v74 != v73);
          }

          ++v72;
          v73 = v76;
        }

        while (v72 != v615);
      }

      v16 += 368;
      if (v16 == v598)
      {
        goto LABEL_99;
      }
    }

    v63 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v602) ^ ((0xBF58476D1CE4E5B9 * v602) >> 27));
    v64 = (v63 ^ (v63 >> 31)) - 0x61C8864680B583E9;
    while (1)
    {
      v65 = *(v16 + 184) + (v60 << 7);
      __src[0].i64[0] = *(v65 + 8);
      __src[0].i64[1] = v18;
      v66 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (__src[0].i64[0] ^ (__src[0].i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (__src[0].i64[0] ^ (__src[0].i64[0] >> 30))) >> 27));
      v10 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::findEntry<re::SceneShadowClusterID>(v8 + 128, __src, (v64 + ((v66 ^ (v66 >> 31)) << 6) + ((v66 ^ (v66 >> 31)) >> 2)) ^ v66 ^ (v66 >> 31), buf);
      if (buf[0].n128_u32[3] == 0x7FFFFFFF)
      {
        goto LABEL_71;
      }

      v67 = *(v8 + 144) + 384 * buf[0].n128_u32[3];
      if (*(v67 + 272))
      {
        if ((*(v65 + 16) & 1) == 0)
        {
          *(v67 + 272) = 0;
          goto LABEL_65;
        }
      }

      else
      {
        if ((*(v65 + 16) & 1) == 0)
        {
          goto LABEL_65;
        }

        *(v67 + 272) = 1;
      }

      v68 = *(v65 + 48);
      *(v67 + 288) = *(v65 + 32);
      *(v67 + 304) = v68;
LABEL_65:
      if (*(v67 + 320))
      {
        if (*(v65 + 64))
        {
          goto LABEL_70;
        }

        *(v67 + 320) = 0;
      }

      else if (*(v65 + 64))
      {
        *(v67 + 320) = 1;
LABEL_70:
        v69 = *(v65 + 96);
        *(v67 + 336) = *(v65 + 80);
        *(v67 + 352) = v69;
      }

LABEL_71:
      v70 = *(v16 + 200);
      if (v70 <= v60 + 1)
      {
        v70 = v60 + 1;
      }

      while (v70 - 1 != v60)
      {
        LODWORD(v60) = v60 + 1;
        if ((*(*(v16 + 184) + (v60 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_77;
        }
      }

      LODWORD(v60) = v70;
LABEL_77:
      if (v60 == v59)
      {
        goto LABEL_78;
      }
    }
  }

LABEL_99:
  v626 = 0;
  v624 = 0u;
  v625 = 0u;
  v627 = 0x7FFFFFFFLL;
  v622 = 0;
  memset(v621, 0, sizeof(v621));
  v623 = 0x7FFFFFFFLL;
  re::MeshShadowGenerationQueue::getEnqueued((v8 + 224), v618);
  if (v620)
  {
    v80 = 0;
    v81 = (v619 + 8);
    while (1)
    {
      v82 = *v81;
      v81 += 10;
      if (v82 < 0)
      {
        break;
      }

      if (v620 == ++v80)
      {
        LODWORD(v80) = v620;
        break;
      }
    }
  }

  else
  {
    LODWORD(v80) = 0;
  }

  if (v80 != v620)
  {
    _S13 = 0.5;
    v90.i64[0] = 0x3F0000003FLL;
    v90.i64[1] = 0x3F0000003FLL;
    v517 = vnegq_f32(v90);
    v91 = v619;
    v544 = v620;
    while (1)
    {
      v92 = v91 + 40 * v80;
      v94 = *(v92 + 16);
      v93 = v92 + 16;
      v95 = *(v93 + 16);
      buf[0].n128_u64[0] = v94;
      buf[0].n128_u64[1] = v95;
      v96 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::tryGet(v8 + 128, buf);
      v562 = (v93 + 16);
      v97 = *(v93 + 16);
      buf[0].n128_u64[0] = *v93;
      buf[0].n128_u64[1] = v97;
      v98 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::tryGet(v8 + 128, buf);
      v100 = v98 ? v98 + 240 : 0;
      if (v96 && v98)
      {
        break;
      }

      re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(v621, v93);
      v116 = v544;
LABEL_301:
      v91 = v619;
      if (v620 <= v80 + 1)
      {
        v488 = v80 + 1;
      }

      else
      {
        v488 = v620;
      }

      while (v488 - 1 != v80)
      {
        LODWORD(v80) = v80 + 1;
        if ((*(v619 + 40 * v80 + 8) & 0x80000000) != 0)
        {
          goto LABEL_308;
        }
      }

      LODWORD(v80) = v488;
LABEL_308:
      if (v80 == v116)
      {
        goto LABEL_106;
      }
    }

    v101 = *(v93 + 8);
    v102 = v96;
    v103 = (v96 + 128);
    v105 = *(v96 + 144);
    v104 = *(v96 + 160);
    v106 = 1.0;
    __asm { FMOV            V4.4S, #1.0 }

    v617 = *(&_Q4 + 1);
    v519 = (v93 + 8);
    v520 = v93;
    v550 = v100;
    if (_NF)
    {
      v108 = 0.0;
      v109 = 0uLL;
      v110 = 0uLL;
      v111 = 0uLL;
      v112 = 0uLL;
      v581 = 0u;
      v582 = 0u;
      v579 = 0u;
      v580 = 0u;
      v603 = 0u;
      v605 = 0u;
      v596 = 0u;
      v599 = 0u;
      v612 = 0u;
      v594 = 0;
      v587 = 0.0;
      v113 = 0.0;
      v534 = 0.0;
      v114 = v601;
      v115.i64[0] = 0x3F0000003F000000;
      v115.i64[1] = 0x3F0000003F000000;
    }

    else
    {
      v609 = *(v93 + 8);
      v612 = *(v96 + 192);
      v117 = vabsq_f32(v612);
      _ZF = fmaxf(fmaxf(v117.f32[0], v117.f32[2]), v117.f32[1]) == v117.f32[1];
      v118 = xmmword_1E3047680;
      if (_ZF)
      {
        v99.i32[2] = *(v96 + 136);
        v99.i64[0] = *(v96 + 128);
        v118 = vaddq_f32(vmlaq_f32(vmulq_f32(v99, 0), 0, v105), v104);
      }

      v119 = vsubq_f32(0, v612);
      v120 = vmulq_f32(v119, v119);
      *&v121 = v120.f32[2] + vaddv_f32(*v120.f32);
      *v120.f32 = vrsqrte_f32(v121);
      *v120.f32 = vmul_f32(*v120.f32, vrsqrts_f32(v121, vmul_f32(*v120.f32, *v120.f32)));
      v122 = vmulq_n_f32(v119, vmul_f32(*v120.f32, vrsqrts_f32(v121, vmul_f32(*v120.f32, *v120.f32))).f32[0]);
      v123 = vextq_s8(vuzp1q_s32(v122, v122), v122, 0xCuLL);
      v124 = vmlaq_f32(vmulq_f32(v123, vnegq_f32(v118)), v122, vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL));
      v125 = vextq_s8(vuzp1q_s32(v124, v124), v124, 0xCuLL);
      v126 = vmulq_f32(v124, v124);
      *&v127 = v126.f32[1] + (v126.f32[2] + v126.f32[0]);
      *v126.f32 = vrsqrte_f32(v127);
      *v126.f32 = vmul_f32(*v126.f32, vrsqrts_f32(v127, vmul_f32(*v126.f32, *v126.f32)));
      v128 = vmulq_n_f32(v125, vmul_f32(*v126.f32, vrsqrts_f32(v127, vmul_f32(*v126.f32, *v126.f32))).f32[0]);
      v129 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v128, v128), v128, 0xCuLL), vnegq_f32(v122)), v128, v123);
      v130 = vmulq_f32(v128, 0);
      v131 = vmulq_f32(v129, 0);
      v132 = vmulq_f32(v122, 0);
      v133.i64[0] = __PAIR64__(v129.u32[0], v128.u32[1]);
      v134.i64[0] = __PAIR64__(v129.u32[1], v128.u32[2]);
      v128.i32[1] = v129.i32[2];
      v128.i64[1] = v122.u32[0];
      v133.i64[1] = v122.u32[1];
      v604 = v133;
      v606 = v128;
      v134.i64[1] = v122.u32[2];
      v129.i32[3] = HIDWORD(v617);
      v129.f32[0] = -(v130.f32[2] + vaddv_f32(*v130.f32));
      v129.f32[1] = -(v131.f32[1] + (v131.f32[2] + v131.f32[0]));
      v129.f32[2] = -(v132.f32[2] + vaddv_f32(*v132.f32));
      v597 = v129;
      v600 = v134;
      v646.columns[0] = v128;
      v646.columns[1] = v133;
      v646.columns[2] = v134;
      v646.columns[3] = v129;
      re::AABB::transform((v96 + 48), v103, &v631);
      v589 = v632;
      v595 = v631;
      v135 = vsubq_f32(v632, v631);
      v135.i32[3] = 0;
      v136 = vmaxnmq_f32(v135, 0);
      v137.i64[0] = 0xBF000000BF000000;
      v137.i64[1] = 0xBF000000BF000000;
      v138.i64[0] = 0x3F0000003F000000;
      v138.i64[1] = 0x3F0000003F000000;
      v637 = vmulq_f32(v136, v137);
      v638 = vmulq_f32(v136, v138);
      re::AABB::transform(&v637, &v646, &v635);
      v139 = vsubq_f32(v636, v635);
      v139.i32[3] = 0;
      v588 = vmaxnmq_f32(v139, 0);
      re::BoundingSphere::BoundingSphere(&v629, v96 + 48, (v96 + 128));
      v115.i64[0] = 0x3F0000003F000000;
      v115.i64[1] = 0x3F0000003F000000;
      v140 = 0;
      v141 = v629.f32[3];
      v142 = vmuls_lane_f32(0.5, v588, 2);
      v143 = vcgtq_f32(v595, v589);
      v143.i32[3] = v143.i32[2];
      v144 = vmaxvq_u32(v143);
      v145 = vmulq_f32(vaddq_f32(v589, v595), v115);
      v146 = v145.i64[1];
      _NF = v144 < 0;
      v147 = v145.i64[0];
      if (_NF)
      {
        v146 = 0;
        v147 = 0;
      }

      v148.i64[0] = v147;
      v148.i64[1] = v146;
      v149 = v629.f32[3] + (v629.f32[3] - v142);
      v150 = vnegq_f32(vsubq_f32(v148, vmulq_n_f32(v612, v149)));
      v106 = 1.0;
      v150.i32[3] = 1.0;
      v640.columns[0] = xmmword_1E3047670;
      v640.columns[1] = xmmword_1E3047680;
      v640.columns[2] = xmmword_1E30476A0;
      v640.columns[3] = v150;
      do
      {
        __src[v140] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v606, COERCE_FLOAT(*&v640.columns[v140])), v604, *v640.columns[v140].f32, 1), v600, v640.columns[v140], 2), v597, v640.columns[v140], 3);
        ++v140;
      }

      while (v140 != 4);
      v151 = 0;
      v152 = v141 + v141;
      v153 = (v141 + v141) * 1.001;
      v114 = v601;
      v154 = *(v601 + 36);
      if (v153 >= *(v601 + 32))
      {
        v113 = v153;
      }

      else
      {
        v113 = *(v601 + 32);
      }

      v155 = (*(v601 + 28) / 10.0) * 256.0;
      v156 = v152 / *(v601 + 24);
      if (v155 < v156)
      {
        v155 = v156;
      }

      v587 = v155;
      v157.i32[1] = 0;
      v157.i64[1] = 0;
      v157.f32[0] = 2.0 / v155;
      v158.i32[0] = 0;
      v158.i64[1] = 0;
      v158.i32[1] = v157.i32[0];
      v159.i64[0] = 0;
      v159.i32[3] = 0;
      v159.f32[2] = 1.0 / (0.0 - v113);
      v160.i64[0] = 0;
      v160.f32[2] = 0.0 / (0.0 - v113);
      v160.i32[3] = 1.0;
      v603 = __src[1];
      v605 = __src[0];
      v640.columns[0] = __src[0];
      v640.columns[1] = __src[1];
      v596 = __src[3];
      v599 = __src[2];
      v640.columns[2] = __src[2];
      v640.columns[3] = __src[3];
      do
      {
        __src[v151] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v157, COERCE_FLOAT(*&v640.columns[v151])), v158, *v640.columns[v151].f32, 1), v159, v640.columns[v151], 2), v160, v640.columns[v151], 3);
        ++v151;
      }

      while (v151 != 4);
      v161 = 0;
      v109 = __src[0];
      v110 = __src[1];
      v111 = __src[2];
      v112 = __src[3];
      *&v594 = fmaxf(v587 * 10.0, 10.0) / v587;
      v162.i64[0] = 0;
      v162.i32[3] = 0;
      v162.f32[2] = 1.0 / *&v594;
      v640.columns[0] = xmmword_1E3047670;
      v640.columns[1] = xmmword_1E3047680;
      v640.columns[2] = v162;
      v640.columns[3] = xmmword_1E30474D0;
      v103 = (v96 + 128);
      v101 = v609;
      do
      {
        __src[v161] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v157, COERCE_FLOAT(*&v640.columns[v161])), v158, *v640.columns[v161].f32, 1), v159, v640.columns[v161], 2), v160, v640.columns[v161], 3);
        ++v161;
      }

      while (v161 != 4);
      v163 = 0;
      v164 = __src[0];
      v165 = __src[1];
      v166 = __src[2];
      v167 = __src[3];
      v640.columns[0] = v605;
      v640.columns[1] = v603;
      v640.columns[2] = v599;
      v640.columns[3] = v596;
      do
      {
        __src[v163] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v164, COERCE_FLOAT(*&v640.columns[v163])), v165, *v640.columns[v163].f32, 1), v166, v640.columns[v163], 2), v167, v640.columns[v163], 3);
        ++v163;
      }

      while (v163 != 4);
      v168 = 1.0 - (v153 / v113);
      if (v168 <= v154)
      {
        v108 = v168;
      }

      else
      {
        v108 = v154;
      }

      v581 = __src[1];
      v582 = __src[0];
      v579 = __src[3];
      v580 = __src[2];
      v534 = (v149 - v142) / (v113 * *&v594);
      v105 = *(v96 + 144);
      v104 = *(v96 + 160);
    }

    v169 = 0;
    v170 = *(v96 + 219);
    v608 = v101 - 1;
    v171 = *(v114 + 205);
    v172 = 12;
    if (*(v96 + 219))
    {
      v172 = 20;
    }

    v173 = *(v114 + v172);
    v174 = re::internal::shadows::g_enableAbsoluteSpace;
    v175 = *(v114 + 52);
    v532 = *(v114 + 56);
    v533 = *(v114 + 48);
    v176 = *(v114 + 4);
    v177 = *(v114 + 8);
    v178 = *v114;
    v179 = *(v96 + 176);
    v640.columns[0] = *(v96 + 128);
    v640.columns[1] = v105;
    v640.columns[2] = v104;
    v640.columns[3] = v179;
    do
    {
      __src[v169] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v109, COERCE_FLOAT(*&v640.columns[v169])), v110, *v640.columns[v169].f32, 1), v111, v640.columns[v169], 2), v112, v640.columns[v169], 3);
      ++v169;
    }

    while (v169 != 4);
    v180 = (v106 - v108) * v113;
    if (!v174)
    {
      v180 = v106;
    }

    v610 = v180;
    v631 = __src[0];
    v632 = __src[1];
    v633 = __src[2];
    v634 = __src[3];
    v181 = *(v96 + 216);
    v585 = v110;
    v586 = v109;
    v583 = v112;
    v584 = v111;
    v571 = v173;
    v573 = __src[1];
    v576 = __src[0];
    v563 = __src[3];
    v568 = __src[2];
    v590 = v170 & v171;
    if ((v170 & v171) == 1)
    {
      v183 = v102[3];
      v182 = v102[4];
      v184 = vsubq_f32(v182, v183);
      v184.i32[3] = 0;
      _Q1 = vmaxnmq_f32(v184, 0);
      v186 = vmul_f32(*&vextq_s8(_Q1, _Q1, 4uLL), 0x3F0000003F000000);
      v187 = v186.f32[1];
      if (v186.f32[0] >= v186.f32[1])
      {
        v187 = v186.f32[0];
      }

      if (v181)
      {
        v187 = v186.f32[0];
      }

      if (-(v187 - (*_Q1.i32 * 0.5)) >= 0.0)
      {
        v188 = -(v187 - (*_Q1.i32 * 0.5));
      }

      else
      {
        v188 = 0.0;
      }

      v189 = LODWORD(v188);
      __asm { FMLA            S5, S13, V1.S[2] }

      if (_S5 < 0.0)
      {
        _S5 = 0.0;
      }

      v191.i64[0] = 0;
      v191.i64[1] = LODWORD(_S5);
      v192 = vcgtq_f32(v183, v182);
      v192.i32[3] = v192.i32[2];
      v193 = vmaxvq_u32(v192);
      v194 = vmulq_f32(vaddq_f32(v182, v183), v115);
      if (v193 >= 0)
      {
        v195 = v194.i64[1];
      }

      else
      {
        v195 = 0;
      }

      if (v193 >= 0)
      {
        v196 = v194.i64[0];
      }

      else
      {
        v196 = 0;
      }

      v197.i64[0] = v196;
      v197.i64[1] = v195;
      v198 = vdupq_n_s32(0x3F13CD3Au);
      v199 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(__src[0], v198), v198, __src[1]), v198, __src[2]), 0, __src[3]);
      v200 = vmulq_f32(v199, v199);
      v201 = sqrtf(vaddv_f32(vadd_f32(*v200.i8, *&vextq_s8(v200, v200, 8uLL)))) * v187;
      v202.i64[0] = 0x7F0000007FLL;
      v202.i64[1] = 0x7F0000007FLL;
      v203 = vnegq_f32(v202);
      v204 = 1;
      do
      {
        v205 = v204;
        if (v204)
        {
          v206 = v106;
        }

        else
        {
          v206 = -1.0;
        }

        v207 = vaddq_f32(vmulq_n_f32(v189, v206), v197);
        LOBYTE(v204) = 1;
        do
        {
          v208 = v204;
          if (v204)
          {
            v209 = v106;
          }

          else
          {
            v209 = -1.0;
          }

          v210 = vaddq_f32(v207, vmulq_n_f32(v191, v209));
          v211 = vaddq_f32(__src[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(__src[0], v210.f32[0]), __src[1], *v210.f32, 1), __src[2], v210, 2));
          v212 = vdivq_f32(v211, vdupq_laneq_s32(v211, 3));
          v212.f32[3] = v201;
          v213 = vdupq_laneq_s32(v212, 3);
          v214 = vsubq_f32(v212, v213);
          v215 = vaddq_f32(v212, v213);
          v203.i32[3] = 0;
          v214.i32[3] = 0;
          v203 = vminnmq_f32(v203, v214);
          v202.i32[3] = 0;
          v215.i32[3] = 0;
          v202 = vmaxnmq_f32(v202, v215);
          LOBYTE(v204) = 0;
        }

        while (v208);
        v204 = 0;
      }

      while ((v205 & 1) != 0);
      v637 = v203;
      v638 = v202;
    }

    else
    {
      v216 = v102 + 3;
      v559 = v177;
      v217 = v176;
      v218 = v102;
      v219 = v181;
      v220 = v103;
      re::AABB::transform(v216, &v631, &v637);
      v103 = v220;
      v181 = v219;
      v102 = v218;
      v176 = v217;
      v177 = v559;
    }

    v221 = v102[3];
    v636 = v102[4];
    v635 = v221;
    *__src[0].f32 = vmaxnm_f32(vsub_f32(*v636.f32, *v221.f32), 0);
    v222 = re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(__src, v103);
    v223 = *(v601 + 160);
    v635.f32[2] = -(v223 * v222) * 0.5;
    v636.f32[2] = (v222 * v223) * 0.5;
    v535 = LODWORD(v108);
    v536 = v113;
    if (v590)
    {
      v224 = vsubq_f32(v636, v635);
      v224.i32[3] = 0;
      _Q1 = vmaxnmq_f32(v224, 0);
      v226 = vmul_f32(*&vextq_s8(_Q1, _Q1, 4uLL), 0x3F0000003F000000);
      v227 = v226.f32[1];
      if (v226.f32[0] >= v226.f32[1])
      {
        v227 = v226.f32[0];
      }

      if (v181)
      {
        v227 = v226.f32[0];
      }

      if (-(v227 - (*_Q1.i32 * 0.5)) >= 0.0)
      {
        v228 = -(v227 - (*_Q1.i32 * 0.5));
      }

      else
      {
        v228 = 0.0;
      }

      v229 = LODWORD(v228);
      __asm { FMLA            S5, S13, V1.S[2] }

      if (_S5 < 0.0)
      {
        _S5 = 0.0;
      }

      v231.i64[0] = 0;
      v231.i64[1] = LODWORD(_S5);
      v232 = vcgtq_f32(v635, v636);
      v232.i32[3] = v232.i32[2];
      v233 = vmaxvq_u32(v232);
      v234.i64[0] = 0x3F0000003F000000;
      v234.i64[1] = 0x3F0000003F000000;
      v235 = vmulq_f32(vaddq_f32(v636, v635), v234);
      if (v233 >= 0)
      {
        v236 = v235.i64[1];
      }

      else
      {
        v236 = 0;
      }

      if (v233 >= 0)
      {
        v237 = v235.i64[0];
      }

      else
      {
        v237 = 0;
      }

      v238.i64[0] = v237;
      v238.i64[1] = v236;
      v239 = vdupq_n_s32(0x3F13CD3Au);
      v240 = vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(v576, v239), v239, v573), v239, v568), 0, v563);
      v241 = vmulq_f32(v240, v240);
      v242 = sqrtf(vaddv_f32(vadd_f32(*v241.i8, *&vextq_s8(v241, v241, 8uLL)))) * v227;
      v243.i64[0] = 0x7F0000007FLL;
      v243.i64[1] = 0x7F0000007FLL;
      v244 = vnegq_f32(v243);
      v245 = 1;
      do
      {
        v246 = v245;
        if (v245)
        {
          v247 = 1.0;
        }

        else
        {
          v247 = -1.0;
        }

        v248 = vaddq_f32(vmulq_n_f32(v229, v247), v238);
        LOBYTE(v245) = 1;
        do
        {
          v249 = v245;
          if (v245)
          {
            v250 = 1.0;
          }

          else
          {
            v250 = -1.0;
          }

          v251 = vaddq_f32(v248, vmulq_n_f32(v231, v250));
          v252 = vaddq_f32(v563, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v576, v251.f32[0]), v573, *v251.f32, 1), v568, v251, 2));
          v253 = vdivq_f32(v252, vdupq_laneq_s32(v252, 3));
          v253.f32[3] = v242;
          v254 = vdupq_laneq_s32(v253, 3);
          v255 = vsubq_f32(v253, v254);
          v256 = vaddq_f32(v253, v254);
          v244.i32[3] = 0;
          v255.i32[3] = 0;
          v244 = vminnmq_f32(v244, v255);
          v243.i32[3] = 0;
          v256.i32[3] = 0;
          v243 = vmaxnmq_f32(v243, v256);
          LOBYTE(v245) = 0;
        }

        while (v249);
        v245 = 0;
      }

      while ((v246 & 1) != 0);
      v629 = v244;
      v564 = *v243.f32;
      v630 = v243;
    }

    else
    {
      re::AABB::transform(&v635, &v631, &v629);
      v244.i64[0] = v629.i64[0];
      v229.i32[1] = v630.i32[1];
      v564 = *v630.f32;
    }

    v238.f32[0] = v176;
    v549 = v175 * v610;
    v257 = (v178 * 3.0) * (v238.f32[0] / v238.f32[0]);
    v258 = ceilf(v257 * 2.4477);
    v229.f32[0] = (v177 >> 1);
    v259 = *v637.f32;
    v260 = *v638.f32;
    v591 = *v229.f32;
    v570 = v244.i32[1];
    v560 = v176 * 0.5;
    v574 = v229.f32[0] + (v244.f32[0] * v560);
    v577 = *v238.f32;
    bzero(__src, 0x3A0uLL);
    v264 = 0;
    do
    {
      v265 = &__src[v264];
      v264 += 14;
      v265[7] = 0uLL;
      v265[8] = 0uLL;
      v265[5] = 0uLL;
      v265[6] = 0uLL;
      v265[3] = 0uLL;
      v265[4] = 0uLL;
      v265[10] = 0uLL;
      v265[11] = 0uLL;
      v265[12] = 0uLL;
      v265[13] = 0uLL;
    }

    while (v264 != 56);
    _D17.i32[1] = v591.i32[1];
    v266 = vdup_lane_s32(v591, 0);
    _S4 = v176 * 0.5;
    v268 = vmla_n_f32(v266, v259, v560);
    v269 = vmla_n_f32(v266, v260, v560);
    _V3.S[1] = v570;
    v271 = vmla_n_f32(v266, v564, v560);
    __asm { FMLA            S17, S4, V3.S[1] }

    __src[56].f32[0] = v257;
    __src[56].i32[1] = v258;
    __src[56].i64[1] = __PAIR64__(v594, LODWORD(v610));
    v273 = v601;
    v274 = *(v601 + 16);
    if (v274)
    {
      v275 = 0;
      v276 = vadd_f32(v268, 0x3F0000003F000000);
      *&v277.u32[2] = v271;
      v277.i64[0] = __PAIR64__(_D17.u32[0], LODWORD(v574));
      v592 = _D17.i32[0];
      v278 = vadd_f32(v269, 0xBF000000BF000000);
      *v261.i32 = v571;
      *_D17.i32 = v258;
      v279 = vaddq_f32(v277, xmmword_1E30DBD60);
      v280 = vsub_f32(v278, v276);
      v281 = vdup_lane_s32(_D17, 0);
      v282 = vdup_lane_s32(v261, 0);
      v283.i64[0] = 0x3F0000003F000000;
      v283.i64[1] = 0x3F0000003F000000;
      do
      {
        v284 = v278;
        v285 = v276;
        v286 = v280;
        v287 = v279;
        if (v275)
        {
          v288 = &__src[14 * v275];
          v285 = vmul_f32(*v288[-14].f32, 0x3F0000003F000000);
          v284 = vmul_f32(*&v288[-14].u32[2], 0x3F0000003F000000);
          v286 = vsub_f32(v284, v285);
          v287 = vmulq_f32(v288[-13], v283);
        }

        v289 = vadd_f32(v286, _D8);
        v290 = vadd_f32(vsub_f32(*&vextq_s8(v287, v287, 8uLL), *v287.i8), _D8);
        v291 = vdiv_f32(vbsl_s8(vcgt_f32(v290, v282), v290, v282), v290);
        v292 = v102[13].u8[8];
        v293 = COERCE_DOUBLE(vbsl_s8(vcgt_f32(v289, v282), v289, v282));
        v262.f32[0] = (v176 >> v275);
        v294 = vmul_f32(v289, v291);
        v295 = vdup_lane_s32(*v262.f32, 0);
        v296 = COERCE_DOUBLE(vbsl_s8(vcgt_f32(v294, v295), v295, v294));
        if (v292 != 1)
        {
          v296 = v293;
        }

        v297 = vadd_f32(v284, v285);
        v298 = vmul_f32(*&v296, 0x3F0000003F000000);
        *v299.f32 = vmul_f32(v297, 0x3F0000003F000000);
        *v262.f32 = vadd_f32(vsub_f32(*v299.f32, v298), 0x3F0000003F000000);
        v300 = vadd_f32(vadd_f32(*v299.f32, v298), 0xBF000000BF000000);
        v301.i64[0] = v262.i64[0];
        *&v301.u32[2] = v300;
        v299.i64[1] = v299.i64[0];
        v302 = &__src[14 * v275];
        *v303.f32 = vmul_f32(v290, v291);
        v303.i64[1] = v303.i64[0];
        v304 = vmulq_f32(v303, v283);
        v305.i64[0] = vsubq_f32(v299, v304).u64[0];
        v305.i64[1] = vaddq_f32(v299, v304).i64[1];
        *v302 = v301;
        v302[1] = vaddq_f32(v305, xmmword_1E30DBD60);
        v306 = vsub_f32(*v262.f32, v281);
        v307 = vadd_f32(v300, v281);
        *v304.f32 = v306;
        *&v304.u32[2] = v307;
        v302[2] = v304;
        if (v275)
        {
          v308 = 0;
          v309 = &__src[14 * v275 - 14];
          v310.i32[1] = 0;
          v310.i64[1] = 0;
          v310.f32[0] = 1.0 / (v177 >> (v275 - 1));
          v312 = v309->f32[0];
          v311 = v309->f32[1];
          v313.i32[0] = 0;
          v313.i64[1] = 0;
          v313.f32[1] = v310.f32[0];
          v314.i64[1] = v617;
          v314.f32[0] = v309->f32[0] + 0.5;
          v314.f32[1] = v311 + 0.5;
          v316 = v309->f32[2];
          v315 = v309->i32[3];
          v646.columns[0] = xmmword_1E3047670;
          v646.columns[1] = xmmword_1E3047680;
          v646.columns[2] = v314;
          do
          {
            v640.columns[v308] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*&v646.columns[v308])), v313, *v646.columns[v308].f32, 1), xmmword_1E30476A0, v646.columns[v308], 2);
            ++v308;
          }

          while (v308 != 3);
          v317 = 0;
          v318 = vsub_f32(v300, *v262.f32).f32[0];
          v300.i32[0] = v315;
          v319 = (v316 - v312) / v318;
          v320 = vsub_f32(v300, __PAIR64__(v262.u32[1], LODWORD(v311)));
          v321 = v640.columns[0];
          v322 = v640.columns[1];
          v323 = v640.columns[2];
          v324 = v319;
          LODWORD(v325) = 0;
          HIDWORD(v325) = vdiv_f32(v320, vdup_lane_s32(v320, 1)).u32[0];
          v646.columns[0] = LODWORD(v324);
          v646.columns[1] = v325;
          v646.columns[2] = xmmword_1E30476A0;
          do
          {
            v640.columns[v317] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v321, COERCE_FLOAT(*&v646.columns[v317])), v322, *v646.columns[v317].f32, 1), v323, v646.columns[v317], 2);
            ++v317;
          }

          while (v317 != 3);
          v326 = 0;
          v327 = v640.columns[0];
          v328 = v640.columns[1];
          v329 = v640.columns[2];
          *v262.f32 = vneg_f32(*v262.f32);
          v262.i32[2] = 1.0;
          v646.columns[0] = xmmword_1E3047670;
          v646.columns[1] = xmmword_1E3047680;
          v646.columns[2] = v262;
          do
          {
            v640.columns[v326] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v327, COERCE_FLOAT(*&v646.columns[v326])), v328, *v646.columns[v326].f32, 1), v329, v646.columns[v326], 2);
            ++v326;
          }

          while (v326 != 3);
          v330 = 0;
          v331 = v640.columns[0].i64[0];
          v332 = v640.columns[1];
          v333 = v640.columns[2];
          v302[3].i32[2] = v640.columns[0].i32[2];
          v302[4].i32[2] = v332.i32[2];
          v302[5].i32[2] = v333.i32[2];
          v302[3].i64[0] = v331;
          v302[4].i64[0] = v332.i64[0];
          v302[5].i64[0] = v333.i64[0];
          v335 = v309[2].f32[2];
          v334 = v309[2].i32[3];
          v337 = v309[2].f32[0];
          v336 = v309[2].f32[1];
          v338.i64[1] = v617;
          v338.f32[0] = v337 + 0.5;
          v338.f32[1] = v336 + 0.5;
          v646.columns[0] = xmmword_1E3047670;
          v646.columns[1] = xmmword_1E3047680;
          v646.columns[2] = v338;
          do
          {
            v640.columns[v330] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v310, COERCE_FLOAT(*&v646.columns[v330])), v313, *v646.columns[v330].f32, 1), xmmword_1E30476A0, v646.columns[v330], 2);
            ++v330;
          }

          while (v330 != 3);
          v339 = 0;
          v340 = vsub_f32(__PAIR64__(v307.u32[1], v334), __PAIR64__(v306.u32[1], LODWORD(v336)));
          v341 = vdiv_f32(v340, vdup_lane_s32(v340, 1)).u32[0];
          v342 = v640.columns[0];
          v343 = v640.columns[1];
          v344 = v640.columns[2];
          LODWORD(v345) = 0;
          HIDWORD(v345) = v341;
          v646.columns[0] = COERCE_UNSIGNED_INT((v335 - v337) / vsub_f32(v307, v306).f32[0]);
          v646.columns[1] = v345;
          v646.columns[2] = xmmword_1E30476A0;
          do
          {
            v346 = v646.columns[v339];
            v263 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v342, v346.f32[0]), v343, *v346.f32, 1), v344, v346, 2);
            v640.columns[v339++] = v263;
          }

          while (v339 != 3);
          v347 = 0;
          v348 = v640.columns[0];
          v349 = v640.columns[1];
          v350 = v640.columns[2];
          *v346.f32 = vneg_f32(v306);
          v346.i32[2] = 1.0;
          v646.columns[0] = xmmword_1E3047670;
          v646.columns[1] = xmmword_1E3047680;
          v646.columns[2] = v346;
          do
          {
            v640.columns[v347] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v348, COERCE_FLOAT(*&v646.columns[v347])), v349, *v646.columns[v347].f32, 1), v350, v646.columns[v347], 2);
            ++v347;
          }

          while (v347 != 3);
          v351 = v640.columns[0].i64[0];
          v305 = v640.columns[1];
          v352 = v640.columns[2];
          v302[6].i32[2] = v640.columns[0].i32[2];
          v302[7].i32[2] = v305.i32[2];
          v302[6].i64[0] = v351;
          v302[7].i64[0] = v305.i64[0];
          v302[8].i32[2] = v352.i32[2];
          v302[8].i64[0] = v352.i64[0];
        }

        v353 = 0;
        v354 = (1 << v275);
        *v305.f32 = vmul_n_f32(v306, v354);
        v355.i32[1] = 0;
        v355.i64[1] = 0;
        v356.i32[0] = 0;
        v356.i64[1] = 0;
        *v263.f32 = vadd_f32(v306, 0x3F0000003F000000);
        v263.i32[2] = 1.0;
        v302[9].i64[0] = v305.i64[0];
        *&v302[9].u32[2] = vmul_n_f32(v307, v354);
        v646.columns[0] = xmmword_1E3047670;
        v646.columns[1] = xmmword_1E3047680;
        v646.columns[2] = v263;
        do
        {
          v355.f32[0] = 1.0 / (v177 >> v275);
          v356.f32[1] = v355.f32[0];
          v640.columns[v353] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v355, COERCE_FLOAT(*&v646.columns[v353])), v356, *v646.columns[v353].f32, 1), xmmword_1E30476A0, v646.columns[v353], 2);
          ++v353;
        }

        while (v353 != 3);
        v357 = 0;
        v358 = v640.columns[0];
        v359 = v640.columns[1];
        v360 = v640.columns[2];
        LODWORD(v361) = 0;
        *(&v361 + 1) = 1.0 / v354;
        v646.columns[0] = COERCE_UNSIGNED_INT(1.0 / v354);
        v646.columns[1] = v361;
        v646.columns[2] = xmmword_1E30476A0;
        do
        {
          v640.columns[v357] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v358, COERCE_FLOAT(*&v646.columns[v357])), v359, *v646.columns[v357].f32, 1), v360, v646.columns[v357], 2);
          ++v357;
        }

        while (v357 != 3);
        v362 = 0;
        v363 = v640.columns[0];
        v364 = v640.columns[1];
        v263 = v640.columns[2];
        *v305.f32 = vneg_f32(*v305.f32);
        v305.i32[2] = 1.0;
        v646.columns[0] = xmmword_1E3047670;
        v646.columns[1] = xmmword_1E3047680;
        v646.columns[2] = v305;
        do
        {
          v640.columns[v362] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v363, COERCE_FLOAT(*&v646.columns[v362])), v364, *v646.columns[v362].f32, 1), v263, v646.columns[v362], 2);
          ++v362;
        }

        while (v362 != 3);
        v262 = v640.columns[0];
        v365 = v640.columns[1];
        v366 = v640.columns[2];
        v302[11].i32[2] = v640.columns[0].i32[2];
        v302[12].i32[2] = v365.i32[2];
        v302[12].i64[0] = v365.i64[0];
        v302[13].i32[2] = v366.i32[2];
        v302[13].i64[0] = v366.i64[0];
        v367 = (v587 / *v577.i32) * v354;
        v368 = vmul_f32(vadd_f32(v306, v307), 0x3F0000003F000000);
        *v302[10].f32 = vmul_n_f32(vsub_f32(v306, v368), v367);
        *&v302[10].u32[2] = vmul_n_f32(vsub_f32(v307, v368), v367);
        v302[11].i64[0] = v262.i64[0];
        ++v275;
      }

      while (v275 != v274);
      v369 = v577;
      _D17.i32[0] = v592;
    }

    else
    {
      LOBYTE(v292) = v102[13].i8[8];
      v369 = v577;
    }

    v370 = *&__src[9].u32[2];
    if (v274 <= 1)
    {
      LODWORD(v274) = 1;
    }

    v371 = &__src[14 * (v274 - 1)];
    v373 = *v371[9].f32;
    v372 = *&v371[9].u32[2];
    v374 = vsub_f32(v269, v268);
    v375 = v550;
    v531 = *__src[9].f32;
    if (v292)
    {
      v376 = __PAIR64__(_D17.u32[0], LODWORD(v574));
      v377 = vsub_f32(v271, __PAIR64__(_D17.u32[0], LODWORD(v574)));
      *v376.i32 = v571;
      v378 = vdup_lane_s32(v376, 0);
      v379 = vmul_f32(v374, vdiv_f32(vbsl_s8(vcgt_f32(v377, v378), v377, v378), v377));
      v380 = vdup_lane_s32(v369, 0);
      v381 = vbsl_s8(vcgt_f32(v379, v380), v380, v379);
    }

    else
    {
      v271.f32[0] = v571;
      v382 = vdup_lane_s32(v271, 0);
      v380 = vcgt_f32(v374, v382);
      v381 = vbsl_s8(v380, v374, v382);
    }

    v383 = 0;
    v380.f32[0] = v177;
    v530 = v380;
    v384 = *v369.i32 / v177;
    v385 = vdiv_f32(v381, v374);
    v386 = vmuls_lane_f32(v384, v385, 1);
    v387.i32[1] = 0;
    v387.i64[1] = 0;
    v387.f32[0] = v384 * v385.f32[0];
    v388.i32[0] = 0;
    v388.i64[1] = 0;
    v388.f32[1] = v386;
    v646.columns[0] = v586;
    v646.columns[1] = v585;
    v646.columns[2] = v584;
    v646.columns[3] = v583;
    do
    {
      v640.columns[v383] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v387, COERCE_FLOAT(*&v646.columns[v383])), v388, *v646.columns[v383].f32, 1), xmmword_1E30476A0, v646.columns[v383], 2), xmmword_1E30474D0, v646.columns[v383], 3);
      ++v383;
    }

    while (v383 != 4);
    v389 = 0;
    v390.i32[0] = 0;
    v390.i64[1] = 0;
    v390.f32[1] = *v369.i32 / v177;
    v575 = v640.columns[1];
    v578 = v640.columns[0];
    v569 = v640.columns[3];
    v572 = v640.columns[2];
    v646.columns[0] = v582;
    v646.columns[1] = v581;
    v646.columns[2] = v580;
    v646.columns[3] = v579;
    do
    {
      v640.columns[v389] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v384), COERCE_FLOAT(*&v646.columns[v389])), v390, *v646.columns[v389].f32, 1), xmmword_1E30476A0, v646.columns[v389], 2), xmmword_1E30474D0, v646.columns[v389], 3);
      ++v389;
    }

    while (v389 != 4);
    v391 = 0;
    v558 = v640.columns[1];
    v561 = v640.columns[0];
    v556 = v640.columns[3];
    v557 = v640.columns[2];
    v646.columns[0] = v586;
    v646.columns[1] = v585;
    v646.columns[2] = v584;
    v646.columns[3] = v583;
    do
    {
      v640.columns[v391] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(LODWORD(v384), COERCE_FLOAT(*&v646.columns[v391])), v390, *v646.columns[v391].f32, 1), xmmword_1E30476A0, v646.columns[v391], 2), xmmword_1E30474D0, v646.columns[v391], 3);
      ++v391;
    }

    while (v391 != 4);
    v547 = v640.columns[0];
    v548 = v640.columns[1];
    v392 = v517;
    v393 = v517;
    v394 = v517;
    v545 = v640.columns[3];
    v546 = v640.columns[2];
    v616 = xmmword_1E30476A0;
    v593 = xmmword_1E30474D0;
    if (v608 >= 0xFFFFFFFFFFFFFFFELL)
    {
      v395.i64[0] = 0x3F0000003FLL;
      v395.i64[1] = 0x3F0000003FLL;
      v393 = vnegq_f32(v395);
      v392 = v393;
      v394 = v393;
      if (v550->i8[0] == 1)
      {
        v396 = v550[1];
        v397 = v550[2];
        v541 = v396;
        v398 = vmulq_f32(v396, v397);
        v396.f32[3] = -(v398.f32[2] + vaddv_f32(*v398.f32));
        v565 = v396;
        v648.columns[1] = v558;
        v648.columns[0] = v561;
        v553 = v393;
        v648.columns[2] = v557;
        v399 = vaddq_f32(v556, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v561, v397.f32[0]), v558, *v397.f32, 1), v557, v397, 2));
        v539 = vdivq_f32(v399, vdupq_laneq_s32(v399, 3));
        v649 = __invert_f3(v648);
        v375 = v550;
        v273 = v601;
        v400 = vzip1q_s32(v649.columns[0], v649.columns[2]);
        v401 = vzip2q_s32(v649.columns[0], v649.columns[2]);
        v402 = vdupq_laneq_s32(v649.columns[1], 2);
        v649.columns[0] = vtrn2q_s32(v649.columns[0], v649.columns[1]);
        v649.columns[0].i32[2] = v649.columns[2].i32[1];
        v649.columns[1] = vzip1q_s32(v400, v649.columns[1]);
        v392 = v565;
        v649.columns[2] = vzip1q_s32(v401, v402);
        v393 = v553;
        v394 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v649.columns[1], v541.f32[0]), v649.columns[0], *v541.f32, 1), v649.columns[2], v541, 2);
        v649.columns[0] = vmulq_f32(v539, v394);
        v394.f32[3] = -(v649.columns[0].f32[2] + vaddv_f32(*v649.columns[0].f32));
      }

      if (v375[3].i8[0] == 1)
      {
        v551 = v394;
        v554 = v375[4];
        v650.columns[1] = v558;
        v650.columns[0] = v561;
        v566 = v392;
        v650.columns[2] = v557;
        v403 = vaddq_f32(v556, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v561, COERCE_FLOAT(*&v375[5])), v558, *v375[5].f32, 1), v557, v375[5], 2));
        v542 = vdivq_f32(v403, vdupq_laneq_s32(v403, 3));
        v651 = __invert_f3(v650);
        v273 = v601;
        v404 = vzip1q_s32(v651.columns[0], v651.columns[2]);
        v405 = vzip2q_s32(v651.columns[0], v651.columns[2]);
        v406 = vdupq_laneq_s32(v651.columns[1], 2);
        v651.columns[0] = vtrn2q_s32(v651.columns[0], v651.columns[1]);
        v651.columns[0].i32[2] = v651.columns[2].i32[1];
        v651.columns[1] = vzip1q_s32(v404, v651.columns[1]);
        v392 = v566;
        v651.columns[2] = vzip1q_s32(v405, v406);
        v394 = v551;
        v393 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v651.columns[1], v554.f32[0]), v651.columns[0], *v554.f32, 1), v651.columns[2], v554, 2);
        v651.columns[0] = vmulq_f32(v542, v393);
        v393.f32[3] = -(v651.columns[0].f32[2] + vaddv_f32(*v651.columns[0].f32));
      }
    }

    if ((((vmaxvq_u32(vmvnq_s8(vceqq_f32(v392, v392))) & 0x80000000) != 0) & re::internal::shadows::g_enableMeshDepthFallbackWhenFlattening) != 0)
    {
      v407 = -1;
    }

    else
    {
      v407 = 0;
    }

    v408 = v102[1].i64[0];
    v552 = v394;
    v555 = v393;
    if (v408)
    {
      v409 = 16 * v408;
      v410 = v102[2].i64[0];
      while ((*(v410 + 8) & 1) == 0)
      {
        v410 += 16;
        v409 -= 16;
        if (!v409)
        {
          goto LABEL_266;
        }
      }
    }

    else
    {
      v410 = v102[2].i64[0];
    }

    _ZF = *(v273 + 68) != 1 || v410 == v102[2].i64[0] + 16 * v408;
    if (_ZF)
    {
LABEL_266:
      v414 = 0;
      v528 = 1.0;
      v529 = 0.0;
    }

    else
    {
      v412 = *(v273 + 72);
      v413 = *(v273 + 76) - v412;
      v414 = 1;
      v528 = -v412 / v413;
      v529 = v610 / v413;
    }

    v415 = v612;
    v415.i32[3] = -8388608;
    v567 = v392;
    v522 = vbslq_s8(vdupq_n_s32(v407), v415, v392);
    v526 = v102[13].u32[0];
    v527 = *(v273 + 80);
    v652.columns[1] = v603;
    v652.columns[0] = v605;
    v652.columns[3] = v596;
    v652.columns[2] = v599;
    v429 = __invert_f4(v652);
    v416 = 0;
    v417 = vmulq_f32(v612, v612);
    *&v418 = v417.f32[2] + vaddv_f32(*v417.f32);
    *v417.f32 = vrsqrte_f32(v418);
    *v417.f32 = vmul_f32(*v417.f32, vrsqrts_f32(v418, vmul_f32(*v417.f32, *v417.f32)));
    v419 = vmulq_n_f32(v612, vmul_f32(*v417.f32, vrsqrts_f32(v418, vmul_f32(*v417.f32, *v417.f32))).f32[0]);
    v419.i32[3] = 0;
    v420 = vmulq_f32(v522, v419);
    *v420.i32 = 1.0 / vaddv_f32(vadd_f32(*v420.i8, *&vextq_s8(v420, v420, 8uLL)));
    v421 = vmulq_lane_f32(v419, *v522.f32, 1);
    v422 = vmulq_n_f32(vmulq_laneq_f32(v419, v522, 2), *v420.i32);
    v423 = vmulq_n_f32(vmulq_laneq_f32(v419, v522, 3), *v420.i32);
    v424 = &off_1E3047000;
    v425 = vsubq_f32(xmmword_1E3047670, vmulq_n_f32(vmulq_n_f32(v419, v522.f32[0]), *v420.i32));
    v426 = &off_1E3047000;
    v427 = vsubq_f32(xmmword_1E3047680, vmulq_n_f32(v421, *v420.i32));
    v428 = vsubq_f32(xmmword_1E30476A0, v422);
    v646 = v429;
    v429.columns[0] = vsubq_f32(xmmword_1E30474D0, v423);
    do
    {
      v640.columns[v416] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v425, COERCE_FLOAT(*&v646.columns[v416])), v427, *v646.columns[v416].f32, 1), v428, v646.columns[v416], 2), v429.columns[0], v646.columns[v416], 3);
      ++v416;
    }

    while (v416 != 4);
    v430 = v640.columns[0];
    v431 = v640.columns[1];
    v432 = v640.columns[2];
    v433 = v640.columns[3];
    v429.columns[0] = vaddq_f32(v640.columns[3], vmlaq_f32(vmlaq_f32(vmulq_f32(v640.columns[0], 0), 0, v640.columns[1]), 0, v640.columns[2]));
    v434 = vsubq_f32(v429.columns[3], vdivq_f32(v429.columns[0], vdupq_laneq_s32(v429.columns[0], 3)));
    v435 = vmulq_f32(v434, v434);
    __src[57].f32[0] = sqrtf(v435.f32[2] + vaddv_f32(*v435.f32)) / v536;
    v540 = v640.columns[1];
    v543 = v640.columns[0];
    v537 = v640.columns[3];
    v538 = v640.columns[2];
    if (v518)
    {
      v436 = fabsf(v522.f32[3]) != INFINITY;
      if (v608 >= 0xFFFFFFFFFFFFFFFELL && (re::internal::shadows::g_enableShadowFlattening & 1) != 0 && v436 && (vmaxvq_u32(vmvnq_s8(vceqq_f32(v522, v522))) & 0x80000000) == 0)
      {
        v521 = *v518;
        v523 = *(v518 + 16);
        if ((atomic_load_explicit(&_MergedGlobals_478, memory_order_acquire) & 1) == 0)
        {
          v489 = __cxa_guard_acquire(&_MergedGlobals_478);
          v433 = v537;
          v432 = v538;
          v431 = v540;
          v430 = v543;
          v426 = &off_1E3047000;
          v424 = &off_1E3047000;
          if (v489)
          {
            *zmmword_1EE1BBD60 = xmmword_1E3047670;
            *&zmmword_1EE1BBD60[16] = xmmword_1E3047680;
            *&zmmword_1EE1BBD60[32] = xmmword_1E30476A0;
            *&zmmword_1EE1BBD60[48] = xmmword_1E30A1180;
            __cxa_guard_release(&_MergedGlobals_478);
            v433 = v537;
            v432 = v538;
            v431 = v540;
            v430 = v543;
            v426 = &off_1E3047000;
            v424 = &off_1E3047000;
          }
        }

        v437 = 0;
        v438.i64[0] = __src[52].i64[0];
        v438.i64[1] = 0x3F80000000000000;
        v439 = vdupq_lane_s32(0, 0);
        v440 = v439;
        v441 = vsub_f32(*&__src[52].u32[2], *__src[52].f32);
        v439.i32[1] = v441.i32[1];
        v440.i32[0] = v441.i32[0];
        v646.columns[0] = v440;
        v646.columns[1] = v439;
        v646.columns[2] = 0uLL;
        v646.columns[3] = xmmword_1E30474D0;
        do
        {
          v640.columns[v437] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v424[103], COERCE_FLOAT(*&v646.columns[v437])), v426[104], *v646.columns[v437].f32, 1), xmmword_1E30476A0, v646.columns[v437], 2), v438, v646.columns[v437], 3);
          ++v437;
        }

        while (v437 != 4);
        v442 = 0;
        v646 = v640;
        do
        {
          v640.columns[v442] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v430, COERCE_FLOAT(*&v646.columns[v442])), v431, *v646.columns[v442].f32, 1), v432, v646.columns[v442], 2), v433, v646.columns[v442], 3);
          ++v442;
        }

        while (v442 != 4);
        v443 = 0;
        v444 = v640.columns[0];
        v445 = v640.columns[1];
        v446 = v640.columns[2];
        v447 = v640.columns[3];
        v646 = *zmmword_1EE1BBD60;
        do
        {
          v640.columns[v443] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v444, COERCE_FLOAT(*&v646.columns[v443])), v445, *v646.columns[v443].f32, 1), v446, v646.columns[v443], 2), v447, v646.columns[v443], 3);
          ++v443;
        }

        while (v443 != 4);
        v448 = 0;
        v524 = v640.columns[1];
        v525 = v640.columns[0];
        v616 = v640.columns[2];
        v593 = v640.columns[3];
      }

      else
      {
        v524 = xmmword_1E3047680;
        v525 = xmmword_1E3047670;
        if ((atomic_load_explicit(&qword_1EE1BBD58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BBD58))
        {
          xmmword_1EE1BBDA0 = xmmword_1E30714F0;
          *algn_1EE1BBDB0 = xmmword_1E30A1A00;
          xmmword_1EE1BBDC0 = xmmword_1E30476A0;
          unk_1EE1BBDD0 = xmmword_1E30A1180;
          __cxa_guard_release(&qword_1EE1BBD58);
        }

        v449 = 0;
        v450 = xmmword_1EE1BBDA0;
        v451 = *algn_1EE1BBDB0;
        v452 = xmmword_1EE1BBDC0;
        v453 = unk_1EE1BBDD0;
        v646.columns[0] = v547;
        v646.columns[1] = v548;
        v646.columns[2] = v546;
        v646.columns[3] = v545;
        do
        {
          v640.columns[v449] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v450, COERCE_FLOAT(*&v646.columns[v449])), v451, *v646.columns[v449].f32, 1), v452, v646.columns[v449], 2), v453, v646.columns[v449], 3);
          ++v449;
        }

        while (v449 != 4);
        v653 = __invert_f4(v640);
        v454 = 0;
        *v455.i32 = *(v601 + 8);
        v456 = vdup_lane_s32(v455, 0);
        *&v457 = vdiv_f32(vadd_f32(*__src[51].f32, _D8), v456);
        __asm { FMOV            V7.2S, #-1.0 }

        *&v459 = vdiv_f32(vadd_f32(*&__src[51].u32[2], _D7), v456);
        v460.i64[0] = v457;
        v460.i64[1] = 0x3F80000000000000;
        *&v461 = __PAIR64__(DWORD1(v459), v457);
        v462.i64[0] = __PAIR64__(DWORD1(v459), v457);
        v462.i64[1] = 0x3F80000000000000;
        *&v463 = ((4.6052 / v549) + 1.0) - *(v601 + 84);
        v640.columns[0] = v460;
        v640.columns[1] = v462;
        v464.i64[0] = v459;
        v464.i64[1] = 0x3F80000000000000;
        v460.i64[0] = __PAIR64__(DWORD1(v457), v459);
        v462.i64[0] = __PAIR64__(DWORD1(v457), v459);
        v462.i64[1] = 0x3F80000000000000;
        v640.columns[2] = v464;
        v640.columns[3] = v462;
        *(&v457 + 1) = __PAIR64__(1.0, v463);
        *(&v461 + 1) = __PAIR64__(1.0, v463);
        v641 = v457;
        v642 = v461;
        *(&v459 + 1) = __PAIR64__(1.0, v463);
        v460.i64[1] = __PAIR64__(1.0, v463);
        v643 = v459;
        v644 = v460;
        v465.i64[0] = 0x7F0000007FLL;
        v465.i64[1] = 0x7F0000007FLL;
        v466 = vnegq_f32(v465);
        do
        {
          v467 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v653.columns[0], COERCE_FLOAT(*&v640.columns[v454])), v653.columns[1], *v640.columns[v454].f32, 1), v653.columns[2], v640.columns[v454], 2), v653.columns[3], v640.columns[v454], 3);
          v468 = vdivq_f32(v467, vdupq_laneq_s32(v467, 3));
          v466.i32[3] = 0;
          v468.i32[3] = 0;
          v466 = vminnmq_f32(v466, v468);
          v465.i32[3] = 0;
          v465 = vmaxnmq_f32(v465, v468);
          ++v454;
        }

        while (v454 != 8);
        v448 = 1;
        v521 = v466;
        v523 = v465;
      }
    }

    else
    {
      v524 = xmmword_1E3047680;
      v525 = xmmword_1E3047670;
      v469.i64[0] = 0x7F0000007FLL;
      v469.i64[1] = 0x7F0000007FLL;
      v470.n128_u64[0] = 0x7F0000007FLL;
      v470.n128_u64[1] = 0x7F0000007FLL;
      v521 = vnegq_f32(v469);
      v523 = v470;
      v448 = 1;
    }

    v471 = vdup_lane_s32(v530, 0);
    v472 = vmul_f32(vadd_f32(v373, v372), 0x3F0000003F000000);
    v473 = vmul_f32(vadd_f32(v531, v370), 0x3F0000003F000000);
    __asm { FMOV            V5.2S, #1.5 }

    v475 = vdiv_f32(vadd_f32(vsub_f32(v370, v473), _D5), v471);
    buf[0] = v552;
    buf[1].n128_u32[0] = v594;
    *(buf[1].n128_u64 + 4) = v640.columns[0].i64[0];
    buf[1].n128_u32[3] = v640.columns[0].u32[2];
    buf[2] = v555;
    __asm { FMOV            V5.2S, #-1.5 }

    buf[3].n128_f32[0] = v549;
    buf[3].n128_f32[1] = v610 * v533;
    buf[3].n128_f32[2] = v610 * v532;
    buf[3].n128_u32[3] = v526;
    buf[4].n128_u8[0] = v608 < 0xFFFFFFFFFFFFFFFELL;
    buf[4].n128_u8[1] = v414;
    *(buf[4].n128_u64 + 4) = __PAIR64__(LODWORD(v528), LODWORD(v529));
    buf[4].n128_u32[3] = v527;
    buf[5].n128_u32[0] = v535;
    buf[6] = v578;
    buf[7] = v575;
    buf[8] = v572;
    buf[9] = v569;
    buf[10] = v561;
    buf[11] = v558;
    buf[12] = v557;
    buf[13] = v556;
    buf[14].n128_u64[0] = vdiv_f32(vadd_f32(vsub_f32(v531, v473), _D5), v471);
    *&buf[14].n128_i8[8] = vsub_f32(v475, buf[14].n128_u64[0]);
    buf[15].n128_u64[0] = vdiv_f32(vadd_f32(vsub_f32(v373, v472), 0xBF000000BF000000), v471);
    *&buf[15].n128_i8[8] = vsub_f32(vdiv_f32(vadd_f32(vsub_f32(v372, vdup_lane_s32(v472, 0)), 0x3F0000003F000000), v471), buf[15].n128_u64[0]);
    buf[16].n128_f32[0] = v534;
    memcpy(&buf[17], __src, 0x394uLL);
    buf[75] = v543;
    buf[76] = v540;
    buf[77] = v538;
    buf[78] = v537;
    buf[81] = v567;
    buf[82] = v547;
    buf[79].n128_f32[0] = v536;
    buf[79].n128_u32[1] = v608 < 0xFFFFFFFFFFFFFFFELL;
    buf[80] = v612;
    buf[83] = v548;
    buf[84] = v546;
    buf[85] = v545;
    buf[86].n128_u8[0] = v448;
    buf[87] = v521;
    buf[88] = v523;
    buf[89] = v525;
    buf[90] = v524;
    buf[91] = v616;
    buf[92] = v593;
    buf[93] = v586;
    buf[94] = v585;
    buf[95] = v584;
    buf[96] = v583;
    buf[97] = v582;
    buf[98] = v581;
    buf[99] = v580;
    buf[100] = v579;
    buf[101] = v605;
    buf[102] = v603;
    buf[103] = v599;
    buf[104] = v596;
    buf[105] = v612;
    buf[106].n128_u64[0] = __PAIR64__(LODWORD(v536), LODWORD(v534));
    buf[106].n128_u64[1] = __PAIR64__(v594, LODWORD(v587));
    buf[107].n128_u32[0] = v535;
    buf[108] = v578;
    buf[109] = v575;
    buf[110] = v572;
    buf[111] = v569;
    buf[112] = vnegq_f32(v612);
    buf[113].n128_u32[0] = v594;
    buf[113].n128_u16[2] = 0;
    buf[113].n128_u32[2] = 0;
    if (v518)
    {
      v477 = 0xBF58476D1CE4E5B9 * (*v562 ^ (*v562 >> 30));
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v518 + 32, v562, (0x94D049BB133111EBLL * (v477 ^ (v477 >> 27))) ^ ((0x94D049BB133111EBLL * (v477 ^ (v477 >> 27))) >> 31), __src);
      if (__src[0].i32[3] != 0x7FFFFFFF)
      {
        v481 = *(v518 + 48) + 72 * __src[0].u32[3];
        v482 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v481 + 16, v519);
        if (v482 || (v482 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v481 + 16, &re::kDefaultWorldRootId)) != 0)
        {
          v483 = *(v482 + 16);
          if (!v483)
          {
LABEL_299:
            re::HashSetBase<re::ShadowPair,re::ShadowPair,re::internal::ValueAsKey<re::ShadowPair>,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::add(v621, v520);
LABEL_300:
            v116 = v544;
            goto LABEL_301;
          }

          v484 = *(v482 + 32);
          v485 = &v484[14 * v483];
          while (1)
          {
            v487 = *v484;
            v486 = (v484 + 2);
            __src[0].i64[0] = v486;
            __src[0].i64[1] = v487;
            if (re::isBoundingBoxInsidePlanes(&buf[87], __src, &buf[89]))
            {
              break;
            }

            v484 = (v486 + 96);
            if (v484 == v485)
            {
              goto LABEL_299;
            }
          }
        }
      }
    }

    memset(__src, 0, 24);
    v478 = re::Hash<re::ShadowPair>::operator()(&v640, v520);
    re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(__src, &v624, v520, v478);
    if (__src[0].i32[3] == 0x7FFFFFFF)
    {
      v479 = re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(&v624, __src[0].u32[2], __src[0].u64[0]);
      v480 = *(v520 + 16);
      *(v479 + 8) = *v520;
      *(v479 + 24) = v480;
      memcpy((v479 + 32), buf, 0x720uLL);
      ++HIDWORD(v627);
    }

    goto LABEL_300;
  }

LABEL_106:
  re::MeshShadowGenerationQueue::dequeue(v8 + 224, v514, v515, v621, __src);
  v83 = __src[1].u32[3];
  *(v516 + 32) = 0;
  *(v516 + 8) = 0;
  *(v516 + 16) = 0;
  *(v516 + 24) = 0;
  re::DynamicArray<re::EvaluationRegister>::setCapacity(v516, v83);
  ++*(v516 + 24);
  v85 = __src[2].i32[0];
  if (__src[2].i32[0])
  {
    v86 = 0;
    v87 = (__src[1].i64[0] + 8);
    while (1)
    {
      v88 = *v87;
      v87 += 10;
      if (v88 < 0)
      {
        break;
      }

      if (__src[2].u32[0] == ++v86)
      {
        LODWORD(v86) = __src[2].i32[0];
        break;
      }
    }
  }

  else
  {
    LODWORD(v86) = 0;
  }

  if (v86 != __src[2].i32[0])
  {
    v490 = __src[1].i64[0];
    do
    {
      v491 = v490 + 40 * v86;
      v492 = re::Hash<re::ShadowPair>::operator()(buf, (v491 + 16));
      re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(buf, &v624, (v491 + 16), v492);
      v493 = buf[0].n128_u32[3];
      if (buf[0].n128_u32[3] != 0x7FFFFFFF)
      {
        v494 = v625;
        v495 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::tryGet(v8 + 80, (v491 + 16));
        if (v495)
        {
          *(v646.columns + 7) = *v495;
          *(v646.columns[1].i64 + 7) = *(v495 + 16);
          v496 = *(v495 + 24);
          v637.i32[0] = *(v495 + 26);
          v497 = *(v495 + 30);
        }

        else
        {
          re::ShadowTileManager::acquireTile(v8, &v640);
          if (v640.columns[0].u8[0] != 1)
          {
            v640.columns[0] = *(v491 + 16);
            v640.columns[1].i64[0] = *(v491 + 32);
            buf[0] = v640.columns[0];
            buf[1].n128_u64[0] = v640.columns[1].u64[0];
            re::MeshShadowGenerationBacklog::pushBack(v8 + 272, buf);
            goto LABEL_339;
          }

          memset(buf, 0, 24);
          v498 = re::Hash<re::ShadowPair>::operator()(&v631, (v491 + 16));
          re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::findEntry<re::ShadowPair>(v8 + 80, (v491 + 16), v498, buf);
          if (buf[0].n128_u32[3] == 0x7FFFFFFF)
          {
            v499 = re::HashTable<re::ShadowPair,re::AllocatedShadowHandle,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::allocEntry(v8 + 80, buf[0].n128_u32[2], buf[0].n128_u64[0]);
            v500 = *(v491 + 16);
            *(v499 + 24) = *(v491 + 32);
            *(v499 + 8) = v500;
            v501 = v499 + 32;
            v502 = *(v640.columns[0].i32 + 2);
            v503 = *(v491 + 32);
            *(v499 + 32) = *(v491 + 16);
            *(v499 + 48) = v503;
            *(v499 + 56) = v502;
            ++*(v8 + 120);
          }

          else
          {
            v501 = *(v8 + 96) + 72 * buf[0].n128_u32[3] + 32;
          }

          *(v646.columns + 7) = *v501;
          *(v646.columns[1].i64 + 7) = *(v501 + 16);
          v496 = *(v501 + 24);
          v637.i32[0] = *(v501 + 26);
          v497 = *(v501 + 30);
        }

        v637.i16[2] = v497;
        v504 = *(v8 + 56);
        if (v504 <= v496)
        {
          v631.i64[0] = 0;
          memset(buf, 0, 80);
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v640.columns[0].i32[0] = 136315906;
          *(v640.columns[0].i64 + 4) = "operator[]";
          v640.columns[0].i16[6] = 1024;
          *(&v640.columns[0].i32[3] + 2) = 789;
          v640.columns[1].i16[1] = 2048;
          *(v640.columns[1].i64 + 4) = v496;
          v640.columns[1].i16[6] = 2048;
          *(&v640.columns[1].i64[1] + 6) = v504;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v505 = memcpy((*(v8 + 72) + 1840 * v496), (v494 + 1872 * v493 + 32), 0x720uLL);
        v506 = *(v516 + 8);
        v507 = *(v516 + 16);
        if (v507 >= v506)
        {
          v508 = v507 + 1;
          if (v506 < v507 + 1)
          {
            if (*v516)
            {
              v509 = 2 * v506;
              _ZF = v506 == 0;
              v510 = 8;
              if (!_ZF)
              {
                v510 = v509;
              }

              if (v510 <= v508)
              {
                v511 = v508;
              }

              else
              {
                v511 = v510;
              }

              re::DynamicArray<re::EvaluationRegister>::setCapacity(v516, v511);
            }

            else
            {
              re::DynamicArray<re::EvaluationRegister>::setCapacity(v516, v508);
              ++*(v516 + 24);
            }
          }

          v507 = *(v516 + 16);
        }

        v512 = *(v516 + 32) + 32 * v507;
        *v512 = *(v646.columns + 7);
        *(v512 + 16) = *(v646.columns[1].i64 + 7);
        *(v512 + 24) = v496;
        *(v512 + 26) = v637.i32[0];
        *(v512 + 30) = v637.i16[2];
        ++*(v516 + 16);
        ++*(v516 + 24);
      }

LABEL_339:
      v490 = __src[1].i64[0];
      if (__src[2].i32[0] <= (v86 + 1))
      {
        v513 = v86 + 1;
      }

      else
      {
        v513 = __src[2].i32[0];
      }

      while (v513 - 1 != v86)
      {
        LODWORD(v86) = v86 + 1;
        if ((*(__src[1].i64[0] + 40 * v86 + 8) & 0x80000000) != 0)
        {
          goto LABEL_346;
        }
      }

      LODWORD(v86) = v513;
LABEL_346:
      ;
    }

    while (v86 != v85);
  }

  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(__src);
  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v618);
  re::HashSetBase<re::TriggerPair,re::TriggerPair,re::internal::ValueAsKey<re::TriggerPair>,re::Hash<re::TriggerPair>,re::EqualTo<re::TriggerPair>,true,false>::deinit(v621);
  re::HashTable<re::ShadowPair,re::ShadowInfo,re::Hash<re::ShadowPair>,re::EqualTo<re::ShadowPair>,true,false>::deinit(&v624);
  re::StackScratchAllocator::~StackScratchAllocator(v628);
}