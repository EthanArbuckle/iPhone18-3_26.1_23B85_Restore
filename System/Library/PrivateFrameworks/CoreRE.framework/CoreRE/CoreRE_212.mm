uint64_t anonymous namespace::shouldSkipBlurMaterial(uint64_t a1)
{
  if (a1)
  {
    v3 = *(a1 + 8);
  }

  else
  {
    v7 = v1;
    v8 = v2;
    v4 = *re::graphicsLogObjects(a1);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "BlurReprojectionState was not set.", v6, 2u);
    }

    v3 = 0;
  }

  return v3 & 1;
}

uint64_t re::MeshPassInfoData::getMeshPartBucket(re::MeshPassInfoData *this, unint64_t a2)
{
  v2 = *(this + 1);
  if (!*v2)
  {
    return 0;
  }

  v3 = *(*(v2 + 8) + 4 * (a2 % *(v2 + 24)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v4 = *(v2 + 16);
  while (*(v4 + 80 * v3 + 8) != a2)
  {
    v3 = *(v4 + 80 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return v4 + 80 * v3 + 16;
}

uint64_t re::rendergraph_helper::populateMeshPassArray<1ul,re::FixedInlineArray<re::rendergraph_helper::RenderPass,1ul>>(re::MeshPassInfoData *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  v5 = *(a3 + 16);
  v6 = *(a3 + 17);
  v7 = *(a3 + 18);
  v19 = *(a3 + 19);
  v20 = *(a3 + 23);
  v8 = *(a3 + 24);
  result = re::MeshPassInfoData::getMeshPartBucket(a1, v4);
  if (result)
  {
    v10 = result;
    v11 = 1;
    v12 = v19;
    v13 = v20;
    v14 = v5;
    v15 = v6;
    v16 = v7;
    v17 = v8;
    v18 = 1;
    return re::DynamicInlineArray<re::FilteredMeshPass,1ul>::add(a2, &v10);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,10ul>::add(uint64_t result, uint64_t a2)
{
  if (*result >= 0xAuLL)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = result + 24 * *result;
    *(v4 + 16) = *a2;
    v5 = v4 + 16;
    v6 = *(a2 + 8);
    *(v5 + 8) = v6;
    if (v6 == 1)
    {
      v7 = *(a2 + 9);
      *(v5 + 13) = *(a2 + 13);
      *(v5 + 9) = v7;
    }

    v8 = *(a2 + 14);
    *(v5 + 18) = *(a2 + 18);
    *(v5 + 14) = v8;
    ++*result;
    ++*(result + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,2ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<__CVBuffer *,2ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

_BYTE *re::DrawTable::clearAll(re::DrawTable *this)
{
  v15 = *MEMORY[0x1E69E9840];
  v2 = *(this + 5);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::DrawCall,128ul>::operator[](this, i);
    }
  }

  *(this + 5) = 0;
  ++*(this + 12);
  v4 = *(this + 12);
  if (v4)
  {
    for (j = 0; j != v4; ++j)
    {
      re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](this + 56, j);
    }
  }

  *(this + 12) = 0;
  ++*(this + 26);
  v6 = *(this + 19);
  if (v6)
  {
    for (k = 0; k != v6; ++k)
    {
      re::BucketArray<re::ConstantTable const*,128ul>::operator[](this + 112, k);
    }
  }

  *(this + 19) = 0;
  ++*(this + 40);
  v8 = *(this + 26);
  if (v8)
  {
    for (m = 0; m != v8; ++m)
    {
      re::BucketArray<unsigned int,128ul>::operator[](this + 168, m);
    }
  }

  *(this + 26) = 0;
  ++*(this + 54);
  v10 = *(this + 33);
  if (v10)
  {
    for (n = 0; n != v10; ++n)
    {
      re::BucketArray<unsigned int,128ul>::operator[](this + 224, n);
    }
  }

  *(this + 33) = 0;
  ++*(this + 68);
  v14 = 0u;
  memset(v13, 0, sizeof(v13));
  BYTE8(v14) = 1;
  result = re::InlineFunction<40ul,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator=(this + 280, v13);
  if ((BYTE8(v14) & 1) == 0)
  {
    return (**&v13[0])(v13);
  }

  return result;
}

uint64_t re::SmallHashTable<unsigned long long,re::anonymous namespace::SPlatterDrawInfo,16ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::tryGet(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 444))
  {
    if (v7 != 0x7FFFFFFF)
    {
      return *(a1 + 432) + 32 * v7 + 16;
    }

    return 0;
  }

  v4 = *(a1 + 16);
  if (!v4)
  {
    return 0;
  }

  v5 = 24 * v4;
  for (result = a1 + 40; *(result - 8) != a2; result += 24)
  {
    v5 -= 24;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

void re::allocViewportPercentsBuffer(re *this, re::PerFrameAllocatorGPU **a2, const re::ViewportPercentData *a3)
{
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer(a2 + 2, 0x20uLL, 0x10uLL, &v16);
  v6 = v16;
  v8 = v17;
  v7 = v18;
  v9 = v19;
  *this = v16;
  *(this + 2) = v8;
  *(this + 3) = v7;
  *(this + 2) = v9;
  v10 = v7 >> 4;
  if (v7 <= 0xF)
  {
LABEL_15:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v10);
    _os_crash();
    __break(1u);
    goto LABEL_16;
  }

  v11 = (v6 + v8);
  *v11 = xmmword_1E3063230;
  if (v7 <= 0x1F)
  {
LABEL_16:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v10);
    _os_crash();
    __break(1u);
    return;
  }

  v11[1] = xmmword_1E3063230;
  if (a3 && *(a3 + 64))
  {
    for (i = 0; ; i = 1)
    {
      v13 = *(a3 + 2);
      if (v13 <= i)
      {
        break;
      }

      if (i == v10)
      {
        goto LABEL_14;
      }

      v11[i] = *(a3 + i + 2);
      v14 = i + 1;
      if (*(a3 + 64) >= 2u)
      {
        v15 = 2;
      }

      else
      {
        v15 = *(a3 + 64);
      }

      if (v14 >= v15)
      {
        return;
      }
    }

    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 389, i, v13);
    _os_crash();
    __break(1u);
LABEL_14:
    re::internal::assertLog(6, v5, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v10, v10);
    _os_crash();
    __break(1u);
    goto LABEL_15;
  }
}

uint64_t re::setViewportPercentsBuffer(re *this, id *a2, const re::mtl::ComputeCommandEncoder *a3)
{
  v3 = a3;
  v6 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(this + 146), *(*(this + 5) + 48));
  if (!v6)
  {
    v7 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *v9 = 0;
      _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "ViewportPercentsData is missing in blur pipeline. Using default values.", v9, 2u);
    }
  }

  re::allocViewportPercentsBuffer(v9, *this, v6);
  return [*a2 setBuffer:v11 offset:v10 atIndex:v3];
}

void re::SFBSystemShellDownsampleRawNodeCompute::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v6)
  {
    v9 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Missing camera stream context.", buf, 2u);
    }

    return;
  }

  v7 = v6;
  if (*(a1 + 496) != 1)
  {
    v6 = re::CameraStreamContext::leftMCAM(v6);
    if (*(v6 + 25))
    {
      v6 = re::CameraStreamContext::rightMCAM(v7);
      if (*(v6 + 25))
      {
        [*a3 setTexture:*(re::CameraStreamContext::leftMCAM(v7) + 25) atIndex:0];
        v8 = *(re::CameraStreamContext::rightMCAM(v7) + 25);
        goto LABEL_11;
      }
    }

LABEL_12:
    if (++_MergedGlobals_509 % 45 == 1)
    {
      v10 = *re::graphicsLogObjects(v6);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 67109120;
        *&buf[4] = _MergedGlobals_509;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "No passthrough textures sent to blur CameraStreamManager for %i frame(s).", buf, 8u);
      }
    }

    v11 = *(*(*(a2 + 1) + 56) + 240);
    v62 = 93818879;
    v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v11 + 1, &v62);
    (*(*v11 + 24))(buf, v11, *(v11[2] + 16 * v12 + 9));
    [*a3 setTexture:*buf atIndex:0];
    [*a3 setTexture:*buf atIndex:1];
    if (*buf)
    {
    }

    goto LABEL_17;
  }

  if (!*(v6 + 229) || !*(v6 + 230))
  {
    goto LABEL_12;
  }

  [*a3 setTexture:? atIndex:?];
  v8 = *(v7 + 230);
LABEL_11:
  [*a3 setTexture:v8 atIndex:1];
LABEL_17:
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x410uLL, 4uLL, buf);
  v56 = *buf;
  v13 = v64;
  v61 = v65;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x84uLL, 4uLL, buf);
  v58 = *buf;
  v14 = v64;
  v60 = v65;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x30uLL, 0x10uLL, buf);
  v57 = *buf;
  v15 = v64;
  v59 = v65;
  re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x50uLL, 0x10uLL, buf);
  v16 = *buf;
  v17 = v64;
  v18 = v65;
  re::setViewportPercentsBuffer(a2, a3, 0);
  if (*(a1 + 496) == 1)
  {
    v19 = &v16[v17];
    v20 = *(v7 + 110);
    v21 = *(v7 + 111);
    v22 = *(v7 + 113);
    *(v19 + 2) = *(v7 + 112);
    *(v19 + 3) = v22;
    *v19 = v20;
    *(v19 + 1) = v21;
    *(v19 + 16) = *(v7 + 456);
  }

  else
  {
    if ((atomic_load_explicit(&qword_1EE1BEBC0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBC0))
    {
      qword_1EE1BEBB8 = re::getCombinedScopeHash("CameraTMData", v52, v53);
      __cxa_guard_release(&qword_1EE1BEBC0);
    }

    v23 = *(a2 + 146);
    v24 = "N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE";
    if (("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x8000000000000000) != 0)
    {
      v25 = ("N2re27RenderGraphDataStoreWrapperINS_12CameraTMDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
      v26 = 5381;
      do
      {
        v24 = v26;
        v27 = *v25++;
        v26 = (33 * v26) ^ v27;
      }

      while (v27);
    }

    if (*(v23 + 16))
    {
      v28 = (qword_1EE1BEBB8 + (v24 << 6) + (v24 >> 2) - 0x61C8864680B583E9) ^ v24;
      v29 = *(*(v23 + 24) + 4 * (v28 % *(v23 + 40)));
      if (v29 != 0x7FFFFFFF)
      {
        v30 = *(v23 + 32);
        while (*(v30 + 24 * v29 + 8) != v28)
        {
          v29 = *(v30 + 24 * v29) & 0x7FFFFFFF;
          if (v29 == 0x7FFFFFFF)
          {
            goto LABEL_31;
          }
        }

        v31 = *(v30 + 24 * v29 + 16);
        if (v31)
        {
          memcpy(&v56[v13], (v31 + 8), 0x410uLL);
        }
      }
    }

LABEL_31:
    if ((atomic_load_explicit(&qword_1EE1BEBD0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBD0))
    {
      qword_1EE1BEBC8 = re::getCombinedScopeHash("ToneMapping", v54, v55);
      __cxa_guard_release(&qword_1EE1BEBD0);
    }

    v32 = re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(*(a2 + 146), qword_1EE1BEBC8);
    if (v32)
    {
      v33 = &v58[v14];
      *v33 = *(v32 + 8);
      v34 = *(v32 + 24);
      v35 = *(v32 + 40);
      v36 = *(v32 + 72);
      *(v33 + 3) = *(v32 + 56);
      *(v33 + 4) = v36;
      *(v33 + 1) = v34;
      *(v33 + 2) = v35;
      v37 = *(v32 + 88);
      v38 = *(v32 + 104);
      v39 = *(v32 + 120);
      *(v33 + 32) = *(v32 + 136);
      *(v33 + 6) = v38;
      *(v33 + 7) = v39;
      *(v33 + 5) = v37;
    }

    v40 = *(a2 + 146);
    v41 = "N2re17TintConstantsDataE";
    if (("N2re17TintConstantsDataE" & 0x8000000000000000) != 0)
    {
      v42 = ("N2re17TintConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v43 = 5381;
      do
      {
        v41 = v43;
        v44 = *v42++;
        v43 = (33 * v43) ^ v44;
      }

      while (v44);
    }

    if (*(v40 + 64))
    {
      v45 = (*(*(a2 + 5) + 48) - 0x61C8864680B583E9 + (v41 << 6) + (v41 >> 2)) ^ v41;
      v46 = *(*(v40 + 72) + 4 * (v45 % *(v40 + 88)));
      if (v46 != 0x7FFFFFFF)
      {
        v47 = *(v40 + 80);
        while (*(v47 + 24 * v46 + 8) != v45)
        {
          v46 = *(v47 + 24 * v46) & 0x7FFFFFFF;
          if (v46 == 0x7FFFFFFF)
          {
            goto LABEL_45;
          }
        }

        v48 = *(v47 + 24 * v46 + 16);
        if (v48)
        {
          v49 = &v57[v15];
          v50 = v48[1];
          v51 = v48[3];
          *(v49 + 1) = v48[2];
          *(v49 + 2) = v51;
          *v49 = v50;
        }
      }
    }
  }

LABEL_45:
  [*a3 setBuffer:v61 offset:v13 atIndex:1];
  [*a3 setBuffer:v60 offset:v14 atIndex:2];
  [*a3 setBuffer:v59 offset:v15 atIndex:3];
  [*a3 setBuffer:v18 offset:v17 atIndex:4];
}

char *re::CameraStreamContext::leftMCAM(re::CameraStreamContext *this)
{
  v5 = 0x11844F475DLL;
  if (*(this + 435))
  {
    return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](this + 1712, &v5);
  }

  v2 = this + 48;
  if (*(this + 6) != 0x11844F475DLL)
  {
    v3 = (this + 464);
    do
    {
      v4 = *v3;
      v3 += 52;
    }

    while (v4 != 0x11844F475DLL);
    v2 = (v3 - 52);
  }

  return v2 + 16;
}

char *re::CameraStreamContext::rightMCAM(re::CameraStreamContext *this)
{
  v5 = 0x21F05F00586;
  if (*(this + 435))
  {
    return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](this + 1712, &v5);
  }

  v2 = this + 48;
  if (*(this + 6) != 0x21F05F00586)
  {
    v3 = (this + 464);
    do
    {
      v4 = *v3;
      v3 += 52;
    }

    while (v4 != 0x21F05F00586);
    v2 = (v3 - 52);
  }

  return v2 + 16;
}

void re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v142 = *MEMORY[0x1E69E9840];
  v6 = *(a2 + 146);
  v7 = *(*(a2 + 5) + 48);
  v8 = re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(v6, v7);
  v9 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(v6, v7);
  v10 = v9;
  v11 = *(a2 + 146);
  v12 = "N2re18CameraProjFrustumsE";
  if (("N2re18CameraProjFrustumsE" & 0x8000000000000000) != 0)
  {
    v13 = ("N2re18CameraProjFrustumsE" & 0x7FFFFFFFFFFFFFFFLL);
    v14 = 5381;
    do
    {
      v12 = v14;
      v15 = *v13++;
      v14 = (33 * v14) ^ v15;
    }

    while (v15);
  }

  if (!*(v11 + 64))
  {
    goto LABEL_46;
  }

  v16 = (*(*(a2 + 5) + 48) + (v12 << 6) + (v12 >> 2) - 0x61C8864680B583E9) ^ v12;
  v17 = *(*(v11 + 72) + 4 * (v16 % *(v11 + 88)));
  if (v17 == 0x7FFFFFFF)
  {
    goto LABEL_46;
  }

  v18 = *(v11 + 80);
  while (*(v18 + 24 * v17 + 8) != v16)
  {
    v17 = *(v18 + 24 * v17) & 0x7FFFFFFF;
    if (v17 == 0x7FFFFFFF)
    {
      goto LABEL_46;
    }
  }

  v19 = *(v18 + 24 * v17 + 16);
  if (v19 && (*(v19 + 16) ? (v20 = v8 == 0) : (v20 = 1), !v20 ? (v21 = v9 == 0) : (v21 = 1), !v21 && v9[8]))
  {
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x180uLL, 0x10uLL, buf);
    v22 = *buf;
    v23 = *&buf[8];
    v24 = *&buf[12];
    v121 = *&v134[0];
    v122 = *&buf[12] / 0xC0uLL;
    v25 = re::CameraStreamContext::leftMCAM(v8);
    if (v24 <= 0xBF)
    {
LABEL_70:
      re::internal::assertLog(6, v26, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v122);
      _os_crash();
      __break(1u);
LABEL_71:
      re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v122);
      _os_crash();
      __break(1u);
    }

    v116 = v22;
    v27 = (v22 + v23);
    v28 = *(v25 + 13);
    v29 = *(v25 + 14);
    v30 = *(v25 + 16);
    v27[2] = *(v25 + 15);
    v27[3] = v30;
    *v27 = v28;
    v27[1] = v29;
    v31 = *(v25 + 17);
    v32 = *(v25 + 18);
    v33 = *(v25 + 20);
    v27[6] = *(v25 + 19);
    v27[7] = v33;
    v27[4] = v31;
    v27[5] = v32;
    v34 = *(v25 + 21);
    v35 = *(v25 + 22);
    v36 = *(v25 + 24);
    v27[10] = *(v25 + 23);
    v27[11] = v36;
    v27[8] = v34;
    v27[9] = v35;
    v37 = re::CameraStreamContext::rightMCAM(v8);
    if (v24 <= 0x17F)
    {
      goto LABEL_71;
    }

    v39 = *(v37 + 13);
    v40 = *(v37 + 14);
    v41 = *(v37 + 16);
    v27[14] = *(v37 + 15);
    v27[15] = v41;
    v27[12] = v39;
    v27[13] = v40;
    v42 = *(v37 + 17);
    v43 = *(v37 + 18);
    v44 = *(v37 + 20);
    v27[18] = *(v37 + 19);
    v27[19] = v44;
    v27[16] = v42;
    v27[17] = v43;
    v45 = *(v37 + 21);
    v46 = *(v37 + 22);
    v47 = *(v37 + 24);
    v27[22] = *(v37 + 23);
    v27[23] = v47;
    v27[20] = v45;
    v27[21] = v46;
    if (*(v19 + 16))
    {
      v48 = 0;
      v49 = 1;
      while (v48 != v122)
      {
        v50 = *(v19 + 32 + 16 * v48);
        v51 = vextq_s8(v50, v50, 8uLL).u64[0];
        v52 = vabs_f32(vext_s8(*v50.i8, v51, 4uLL));
        v50.i32[1] = v51.i32[1];
        *v50.i8 = vabs_f32(*v50.i8);
        *&v53 = vadd_f32(v52, *v50.i8);
        *(&v53 + 1) = __PAIR64__(v52.u32[1], v50.u32[0]);
        v27[12 * v48 + 1] = v53;
        v54 = v49 & (*(v19 + 16) > (v48 + 1));
        v48 = 1;
        v49 = 0;
        if ((v54 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

      re::internal::assertLog(6, v38, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v122, v122);
      _os_crash();
      __break(1u);
      goto LABEL_69;
    }

LABEL_25:
    v118 = v24;
    v119 = v23;
    v117 = a1;
    v120 = a3;
    v55 = 0;
    v56 = __src;
    v57 = &__src[16];
    v58 = 1;
    do
    {
      v59 = v58;
      v125 = *(re::CameraStreamContext::camForEyeIndex(v8, v55) + 1);
      v60 = re::CameraStreamContext::camForEyeIndex(v8, v55);
      v126 = *v60;
      v127 = *(v60 + 1);
      v123 = *(v60 + 3);
      v124 = *(v60 + 2);
      v143 = __invert_f4(v125);
      v69 = 0;
      v138 = v143.columns[0];
      v139 = v143.columns[1];
      v140 = v143.columns[2];
      v141[0] = v143.columns[3];
      do
      {
        *&buf[v69] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v126, COERCE_FLOAT(*(&v138 + v69))), v127, *&v138.f32[v69 / 4], 1), v124, *(&v138 + v69), 2), v123, *(&v138 + v69), 3);
        v69 += 16;
      }

      while (v69 != 64);
      v70 = v134[0];
      v71 = v134[1];
      v72 = v135;
      *v56 = *buf;
      v56[1] = v70;
      v56[2] = v71;
      v56[3] = v72;
      v73 = MEMORY[0x1E69E9B18];
      if (v10[8] > v55)
      {
        v73 = (v10[10] + (v55 << 6));
      }

      v58 = 0;
      v75 = v73[2];
      v74 = v73[3];
      v77 = *v73;
      v76 = v73[1];
      v78 = &__src[8 * v55 + 16];
      *v78 = v77;
      v78[1] = v76;
      v78[2] = v75;
      v78[3] = v74;
      v56 = &__src[8];
      v55 = 1;
    }

    while ((v59 & 1) != 0);
    __src[32] = *(*a2 + 40) & 0xFFFFFFFFFFFFFFFLL;
    if (v10[3])
    {
      v79 = 0;
      v80 = v119 + v116 + 64;
      v81 = 128;
      while (1)
      {
        v82 = v10[5] + v81;
        WarpMatrixForSourceProjection = re::createWarpMatrixForSourceProjection(*v57, v57[1], v57[2], v57[3], *(v82 - 128), *(v82 - 112), *(v82 - 96), *(v82 - 80), v61, v62, v63, v64, v65, v66, v67, v68, *v57, v57[1], v57[2], v57[3], v57[-8], v57[-7], v57[-6], v57[-5]);
        if (v122 == v79)
        {
          break;
        }

        *(v80 - 24) = v84;
        *(v80 - 8) = v86;
        *(v80 - 32) = WarpMatrixForSourceProjection;
        *(v80 - 16) = v85;
        *(v80 + 8) = v88;
        *v80 = v87;
        v80 += 192;
        ++v79;
        v81 += 64;
        v57 += 4;
        if (v10[3] <= v79)
        {
          goto LABEL_35;
        }
      }

LABEL_69:
      re::internal::assertLog(6, v62, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v122, v122);
      _os_crash();
      __break(1u);
      goto LABEL_70;
    }

LABEL_35:
    v129[0] = v121;
    v130 = 0;
    v131 = __PAIR64__(v118, v119);
    re::BufferSlice::buffer(v129, v89);
    [*v120 setBuffer:v129[0] offset:v131 atIndex:0];
    v90 = *(*(a2 + 1) + 128);
    v138.i8[0] = 0;
    v139.i32[2] = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(&v138, v129);
    v140.i64[0] = v131;
    memcpy(v141, __src, 0x110uLL);
    *&v141[17] = v90;
    *buf = *(v117 + 48);
    v137 = 1;
    *&buf[8] = &unk_1F5D11210;
    BYTE8(v134[0]) = 0;
    LODWORD(v135) = -1;
    std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v134 + 8, &v138);
    *(&v135 + 1) = v140.i64[0];
    memcpy(v136, v141, sizeof(v136));
    v137 = 0;
    re::DynamicOverflowArray<re::PatchTransform,5ul>::add(a2 + 1704, buf);
    if ((v137 & 1) == 0)
    {
      (**&buf[8])(&buf[8]);
    }

    re::setViewportPercentsBuffer(a2, v120, 1);
    v91 = *(a2 + 146);
    v92 = "N2re25BlurBackgroundOpacityDataE";
    if (("N2re25BlurBackgroundOpacityDataE" & 0x8000000000000000) != 0)
    {
      v93 = ("N2re25BlurBackgroundOpacityDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v94 = 5381;
      do
      {
        v92 = v94;
        v95 = *v93++;
        v94 = (33 * v94) ^ v95;
      }

      while (v95);
    }

    v96 = 0uLL;
    v97 = 0;
    if (*(v91 + 64))
    {
      v98 = (*(*(a2 + 5) + 48) - 0x61C8864680B583E9 + (v92 << 6) + (v92 >> 2)) ^ v92;
      v99 = *(*(v91 + 72) + 4 * (v98 % *(v91 + 88)));
      if (v99 != 0x7FFFFFFF)
      {
        v100 = *(v91 + 80);
        while (*(v100 + 24 * v99 + 8) != v98)
        {
          v99 = *(v100 + 24 * v99) & 0x7FFFFFFF;
          if (v99 == 0x7FFFFFFF)
          {
            goto LABEL_51;
          }
        }

        v102 = *(v100 + 24 * v99 + 16);
        if (v102)
        {
          v97 = *(v102 + 8);
          v96 = *(v102 + 16);
        }
      }
    }

LABEL_51:
    v128 = v96;
    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 0x20uLL, 0x10uLL, buf);
    v103 = *&v134[0];
    v104 = *buf + *&buf[8];
    *v104 = v97;
    *(v104 + 16) = v128;
    [*v120 setBuffer:v103 offset:? atIndex:?];
    v105 = *(a2 + 146);
    v106 = "N2re23ImmersiveEnvDimmingDataE";
    if (("N2re23ImmersiveEnvDimmingDataE" & 0x8000000000000000) != 0)
    {
      v107 = ("N2re23ImmersiveEnvDimmingDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v108 = 5381;
      do
      {
        v106 = v108;
        v109 = *v107++;
        v108 = (33 * v108) ^ v109;
      }

      while (v109);
    }

    if (!*(v105 + 64) || (v110 = (*(*(a2 + 5) + 48) - 0x61C8864680B583E9 + (v106 << 6) + (v106 >> 2)) ^ v106, v111 = *(*(v105 + 72) + 4 * (v110 % *(v105 + 88))), v111 == 0x7FFFFFFF))
    {
LABEL_59:
      v113 = 0;
    }

    else
    {
      v112 = *(v105 + 80);
      while (*(v112 + 24 * v111 + 8) != v110)
      {
        v111 = *(v112 + 24 * v111) & 0x7FFFFFFF;
        if (v111 == 0x7FFFFFFF)
        {
          goto LABEL_59;
        }
      }

      v113 = *(v112 + 24 * v111 + 16);
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 4uLL, 4uLL, buf);
    v114 = *&v134[0];
    if (v113)
    {
      v115 = *(v113 + 8);
    }

    else
    {
      v115 = 1.0;
    }

    *(*buf + *&buf[8]) = v115;
    [*v120 setBuffer:v114 offset:? atIndex:?];
    if (v139.i32[2] != -1)
    {
      (off_1F5D11070[v139.u32[2]])(buf, &v138);
    }

    if (v130 != -1)
    {
      (off_1F5D11070[v130])(buf, v129);
    }
  }

  else
  {
LABEL_46:
    v101 = *re::graphicsLogObjects(v9);
    if (os_log_type_enabled(v101, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v101, OS_LOG_TYPE_ERROR, "Camera projection frustums were not properly set. Unable to initialize encoder in SFBSystemShellReprojectAndFilterNode.", buf, 2u);
    }
  }
}

char *re::CameraStreamContext::camForEyeIndex(re::CameraStreamContext *this, int a2)
{
  v2 = 0x21F05F00586;
  if (!a2)
  {
    v2 = 0x11844F475DLL;
  }

  v7 = v2;
  if (*(this + 435))
  {
    return re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](this + 1712, &v7);
  }

  v4 = this + 48;
  if (*(this + 6) != v2)
  {
    v5 = (this + 464);
    do
    {
      v6 = *v5;
      v5 += 52;
    }

    while (v6 != v2);
    v4 = (v5 - 52);
  }

  return v4 + 16;
}

uint64_t anonymous namespace::setColorConstants(void *a1, void **a2, unsigned int a3)
{
  *&v6 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0xB0uLL, 0x10uLL, &v28);
  v7 = v29;
  v8 = v30;
  v9 = "N2re24ColorFilterConstantsDataE";
  v10 = a1[146];
  if (("N2re24ColorFilterConstantsDataE" & 0x8000000000000000) != 0)
  {
    v11 = ("N2re24ColorFilterConstantsDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v12 = 5381;
    do
    {
      v9 = v12;
      v13 = *v11++;
      v12 = (33 * v12) ^ v13;
    }

    while (v13);
  }

  if (*(v10 + 64))
  {
    v14 = (*(a1[5] + 48) + (v9 << 6) + (v9 >> 2) - 0x61C8864680B583E9) ^ v9;
    v15 = *(*(v10 + 72) + 4 * (v14 % *(v10 + 88)));
    if (v15 != 0x7FFFFFFF)
    {
      v16 = *(v10 + 80);
      while (*(v16 + 24 * v15 + 8) != v14)
      {
        v15 = *(v16 + 24 * v15) & 0x7FFFFFFF;
        if (v15 == 0x7FFFFFFF)
        {
          goto LABEL_12;
        }
      }

      v17 = *(v16 + 24 * v15 + 16);
      if (v17)
      {
        v18 = (v28 + v29);
        v19 = v17[1];
        v20 = v17[3];
        v18[1] = v17[2];
        v18[2] = v20;
        *v18 = v19;
        v21 = v17[4];
        v22 = v17[5];
        v23 = v17[7];
        v18[5] = v17[6];
        v18[6] = v23;
        v18[3] = v21;
        v18[4] = v22;
        v6 = v17[8];
        v24 = v17[9];
        v25 = v17[11];
        v18[9] = v17[10];
        v18[10] = v25;
        v18[7] = v6;
        v18[8] = v24;
      }
    }
  }

LABEL_12:
  v26 = *a2;

  return [v26 setBuffer:v8 offset:v7 atIndex:{a3, *&v6}];
}

uint64_t anonymous namespace::setGammaLUTs(void *a1, id *a2, unsigned int a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *&v9[0] = 0x526A495CDE0FLL;
  v6 = *(a1[1] + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, v9) + 8);
  if (a1[10] <= v6)
  {
    memset(v9, 0, sizeof(v9));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v7 = a1[12] + 24 * v6;
  return [*a2 setBuffer:*v7 offset:*(v7 + 16) atIndex:a3];
}

void re::SFBSystemShellCreateTextureAliasNode::execute(re::SFBSystemShellCreateTextureAliasNode *this, re::RenderGraphContext *a2)
{
  {
    if (*(this + 25))
    {
      re::RenderGraphContext::metalTexture(a2, *(this + 27), 0, 0, &v5);
      if (v5)
      {
        re::DynamicTextureTableAdd((*a2 + 368), this + 34, &v5);
        if (v5)
        {
        }
      }
    }
  }
}

void re::SFBSystemShellReprojectNode::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v5 = *(a1 + 48);
  v6 = *(a1 + 500);
  v7 = *(a1 + 496);
  v8 = *a3;
  v13 = v8;

  re::setViewportPercentsBuffer(a2, a3, 1);
  v9 = *a3;
  v12 = v9;

  v10 = *a3;
  v11 = v10;
}

void anonymous namespace::setReprojectionConstants(void *a1, uint64_t a2, id *a3, float a4, float a5)
{
  __src[55] = *MEMORY[0x1E69E9840];
  v10 = a1[146];
  v11 = *(a1[5] + 48);
  v12 = re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(v10, v11);
  v13 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(v10, v11);
  v14 = re::RenderGraphDataStore::tryGet<re::CameraMatrices>(a1[146], *(a1[5] + 48));
  if (v13)
  {
    v15 = v12 == 0;
  }

  else
  {
    v15 = 1;
  }

  if (!v15 && v14 != 0)
  {
    v18 = v14;
    v19 = a1[146];
    v20 = "N2re20WorldToViewCacheDataE";
    if (("N2re20WorldToViewCacheDataE" & 0x8000000000000000) != 0)
    {
      v21 = ("N2re20WorldToViewCacheDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v22 = 5381;
      do
      {
        v20 = v22;
        v23 = *v21++;
        v22 = (33 * v22) ^ v23;
      }

      while (v23);
    }

    v93 = a2;
    if (!*(v19 + 64) || (v24 = (*(a1[5] + 48) + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583E9) ^ v20, v25 = *(*(v19 + 72) + 4 * (v24 % *(v19 + 88))), v25 == 0x7FFFFFFF))
    {
LABEL_19:
      v27 = 0;
    }

    else
    {
      v26 = *(v19 + 80);
      while (*(v26 + 24 * v25 + 8) != v24)
      {
        v25 = *(v26 + 24 * v25) & 0x7FFFFFFF;
        if (v25 == 0x7FFFFFFF)
        {
          goto LABEL_19;
        }
      }

      v27 = *(v26 + 24 * v25 + 16);
    }

    re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a1 + 16), 0x180uLL, 0x10uLL, buf);
    v28 = *buf;
    v30 = *&buf[8];
    v29 = *&buf[12];
    v92 = *v98;
    v31 = *&buf[12] / 0xC0uLL;
    v32 = re::CameraStreamContext::leftMCAM(v12);
    if (v29 <= 0xBF)
    {
      goto LABEL_48;
    }

    v91 = a3;
    v34 = (v28 + v30);
    v35 = *(v32 + 13);
    v36 = *(v32 + 14);
    v37 = *(v32 + 16);
    *(v34 + 2) = *(v32 + 15);
    *(v34 + 3) = v37;
    *v34 = v35;
    *(v34 + 1) = v36;
    v38 = *(v32 + 17);
    v39 = *(v32 + 18);
    v40 = *(v32 + 20);
    *(v34 + 6) = *(v32 + 19);
    *(v34 + 7) = v40;
    *(v34 + 4) = v38;
    *(v34 + 5) = v39;
    v41 = *(v32 + 21);
    v42 = *(v32 + 22);
    v43 = *(v32 + 24);
    *(v34 + 10) = *(v32 + 23);
    *(v34 + 11) = v43;
    *(v34 + 8) = v41;
    *(v34 + 9) = v42;
    v44 = re::CameraStreamContext::rightMCAM(v12);
    if (v29 > 0x17F)
    {
      v46 = v30;
      v47 = *(v44 + 13);
      v48 = *(v44 + 14);
      v49 = *(v44 + 16);
      *(v34 + 14) = *(v44 + 15);
      *(v34 + 15) = v49;
      *(v34 + 12) = v47;
      *(v34 + 13) = v48;
      v50 = *(v44 + 17);
      v51 = *(v44 + 18);
      v52 = *(v44 + 20);
      *(v34 + 18) = *(v44 + 19);
      *(v34 + 19) = v52;
      *(v34 + 16) = v50;
      *(v34 + 17) = v51;
      v53 = *(v44 + 21);
      v54 = *(v44 + 22);
      v55 = *(v44 + 24);
      *(v34 + 22) = *(v44 + 23);
      *(v34 + 23) = v55;
      *(v34 + 20) = v53;
      *(v34 + 21) = v54;
      v56 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(a1[146], *(a1[5] + 48));
      if (v56)
      {
        v60 = *(v56 + 20);
      }

      else
      {
        v60 = 1.0;
      }

      v61 = 0;
      v34[44] = v60;
      v34[92] = v60;
      v62 = __src;
      memset(&__src[48], 0, 32);
      v63 = *(v18 + 3);
      v64 = 1;
      v65 = MEMORY[0x1E69E9B18];
      while (1)
      {
        v66 = v64;
        v67 = (v27 + 16 + (v61 << 6));
        if (!v27)
        {
          v67 = v65;
        }

        v68 = v67[1];
        *v62 = *v67;
        v62[1] = v68;
        v69 = v67[3];
        v62[2] = v67[2];
        v62[3] = v69;
        v70 = (v27 + 144 + (v61 << 6));
        if (!v27)
        {
          v70 = v65;
        }

        v71 = &__src[8 * v61 + 16];
        v72 = v70[1];
        *v71 = *v70;
        v71[1] = v72;
        v73 = v70[3];
        v71[2] = v70[2];
        v71[3] = v73;
        v74 = v65;
        if (v63 > v61)
        {
          v75 = v46;
          v76 = *(v18 + 8);
          if (v76 <= v61)
          {
            v94[0] = 0;
            memset(v98, 0, 64);
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            __dst[0] = 136315906;
            *&__dst[1] = "operator[]";
            LOWORD(__dst[3]) = 1024;
            *(&__dst[3] + 2) = 797;
            HIWORD(__dst[4]) = 2048;
            *&__dst[5] = v61;
            LOWORD(__dst[7]) = 2048;
            *(&__dst[7] + 2) = v76;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_48:
            re::internal::assertLog(6, v33, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, v31);
            _os_crash();
            __break(1u);
            break;
          }

          v74 = (*(v18 + 10) + (v61 << 6));
          v46 = v75;
        }

        v78 = v74[2];
        v77 = v74[3];
        v79 = *v74;
        v80 = v74[1];
        v81 = &__src[8 * v61 + 32];
        *v81 = v79;
        v81[1] = v80;
        v81[2] = v78;
        v81[3] = v77;
        v82 = xmmword_1E3063230;
        if (*(v13 + 16) > v61)
        {
          v82 = *(v13 + 32 + 16 * v61);
        }

        v64 = 0;
        *&__src[2 * v61 + 48] = v82;
        v62 = &__src[8];
        v61 = 1;
        if ((v66 & 1) == 0)
        {
          __src[52] = __PAIR64__(LODWORD(a4), LODWORD(a5));
          if (v63)
          {
            v83 = 0;
            v84 = 0;
            do
            {
              v85 = (*(v18 + 5) + v83);
              v86 = v85[1];
              v87 = v85[2];
              v88 = v85[3];
              *buf = *v85;
              *v98 = v86;
              *&v98[16] = v87;
              *&v98[32] = v88;
              v83 += 64;
            }

            while (*(v18 + 3) > v84);
          }

          v89 = v92;
          v94[0] = v89;
          v95 = 0;
          v96 = __PAIR64__(v29, v46);
          re::BufferSlice::buffer(v94, v90);
          [*v91 setBuffer:v89 offset:v46 atIndex:0];
          memcpy(__dst, __src, 0x1A8uLL);
          v104[0] = 0;
          v105 = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v104, v94);
          v106 = v96;
          v102 = 1;
          *buf = v93;
          *&buf[8] = &unk_1F5D11090;
          memcpy(&v98[8], __dst, 0x1B0uLL);
          v99[0] = 0;
          v100 = -1;
          std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v99, v104);
          v101 = v106;
          v102 = 0;
          re::DynamicOverflowArray<re::PatchTransform,5ul>::add((a1 + 213), buf);
          if ((v102 & 1) == 0)
          {
            (**&buf[8])(&buf[8]);
          }

          if (v105 != -1)
          {
            (off_1F5D11070[v105])(buf, v104);
          }

          if (v95 != -1)
          {
            (off_1F5D11070[v95])(buf, v94);
          }

          return;
        }
      }
    }

    re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 1, v31);
    _os_crash();
    __break(1u);
  }

  v17 = *re::graphicsLogObjects(v14);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Missing data for Reprojection Constants in blur pipeline. Unable to setup encoder.", buf, 2u);
  }
}

void re::SFBSystemShellBlurTAANode::setupEncoder(uint64_t a1, re *a2, id *a3)
{
  v6 = *(a1 + 48);
  v7 = *(a1 + 504);
  v8 = *(a1 + 500);
  v9 = *a3;
  v19 = v9;

  re::setViewportPercentsBuffer(a2, a3, 1);
  v10 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  *&v12 = re::PerFrameGPUDataAllocator::perFrameAllocCpuToGpuBuffer((*a2 + 16), 4uLL, 4uLL, &v20);
  if (v22 <= 3)
  {
    re::internal::assertLog(6, *&v11, v12, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, 0, 0);
    _os_crash();
    __break(1u);
  }

  else
  {
    v13 = v23;
    v14 = 12;
    if (*(a1 + 496))
    {
      v14 = 16;
    }

    *(v20 + v21) = *(v10 + v14);
    [*a3 setBuffer:v13 offset:? atIndex:?];
    v15 = *a3;
    v18 = v15;

    v16 = *a3;
    v17 = v16;
  }
}

void re::SFBSystemShellReprojectNode::execute(re::SFBSystemShellReprojectNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {

    re::RenderGraphComputeNodeBase::execute(this, a2);
  }
}

BOOL re::SFBSystemShellComputeNode::skipNode(re::SFBSystemShellComputeNode *this, re::RenderGraphContext *a2)
{
  v3 = this;
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(this + 25);
  v5 = 0;
  if (v4)
  {
    v6 = *(this + 27);
    v7 = 32 * v4;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v6, 0, 0, v17);
      v8 = [*v17 protectionOptions];
      this = *v17;
      if (*v17)
      {
      }

      v5 |= v8;
      v6 += 32;
      v7 -= 32;
    }

    while (v7);
  }

  v9 = *(v3 + 30);
  if (v9)
  {
    v10 = 0;
    v11 = *(v3 + 32);
    v12 = v9 << 6;
    do
    {
      re::RenderGraphContext::metalTexture(a2, v11, 0, 0, v17);
      v13 = [*v17 protectionOptions];
      this = *v17;
      if (*v17)
      {
      }

      v10 |= v13;
      v11 += 64;
      v12 -= 64;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  if ((v5 & ~v10) != 0)
  {
    v14 = *re::graphicsLogObjects(this);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v16 = *(v3 + 2);
      *v17 = 136315650;
      *&v17[4] = v16;
      v18 = 2048;
      v19 = v5;
      v20 = 2048;
      v21 = v10;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[SFBSystemShellComputeNode] (%s) Mismatching protection options for input texture %llu and output texture %llu. Skipping compute for this frame.", v17, 0x20u);
    }
  }

  return (v5 & ~v10) != 0;
}

void re::SFBSystemShellTileDownsampleNode::execute(re::SFBSystemShellTileDownsampleNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {

    re::RenderGraphMRCNode::execute(this, a2);
  }
}

id re::SFBSystemShellTileDownsampleNode::setupEncoder(re::SFBSystemShellTileDownsampleNode *this, re::RenderGraphContext *a2, id *a3)
{
  v5 = re::RenderGraphDataStore::tryGet<re::ViewportPercentData>(*(a2 + 146), *(*(a2 + 5) + 48));
  if (!v5)
  {
    v6 = *re::graphicsLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *v8 = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ViewportPercentsData is missing in blur pipeline. Using default values.", v8, 2u);
    }
  }

  re::allocViewportPercentsBuffer(v8, *a2, v5);
  return [*a3 setTileBuffer:v10 offset:v9 atIndex:0];
}

void re::SFBSystemShellComputeNode::execute(re::SFBSystemShellComputeNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {

    re::RenderGraphComputeNodeBase::execute(this, a2);
  }
}

void re::SFBSystemShellMeshNode::execute(re::SFBSystemShellMeshNode *this, re::RenderGraphContext *a2)
{
  v4 = re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(*(a2 + 146), *(*(a2 + 5) + 48));
  {
    re::RenderGraphContext::acquireManagedRenderCommandEncoder(v5, a2, 0);
    re::mtl::RenderCommandEncoder::~RenderCommandEncoder(v5);
    re::RenderGraphMeshNode::execute(this, a2);
  }
}

void re::SFBSystemShellComputeNode::~SFBSystemShellComputeNode(re::SFBSystemShellComputeNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellBlurTAANode::~SFBSystemShellBlurTAANode(re::SFBSystemShellBlurTAANode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellStencilBlurMeshNode::~SFBSystemShellStencilBlurMeshNode(id *this)
{
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellDownsampleRawNodeCompute::~SFBSystemShellDownsampleRawNodeCompute(re::SFBSystemShellDownsampleRawNodeCompute *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellReprojectAndRectifyNode::~SFBSystemShellReprojectAndRectifyNode(re::SFBSystemShellReprojectAndRectifyNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellReprojectNode::~SFBSystemShellReprojectNode(re::SFBSystemShellReprojectNode *this)
{
  re::RenderGraphComputeNodeBase::~RenderGraphComputeNodeBase(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellCreateTextureAliasNode::~SFBSystemShellCreateTextureAliasNode(re::SFBSystemShellCreateTextureAliasNode *this)
{
  *(this + 34) = 0;
  re::RenderGraphNode::~RenderGraphNode(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellMeshNode::~SFBSystemShellMeshNode(id *this)
{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void re::SFBSystemShellTileDownsampleNode::~SFBSystemShellTileDownsampleNode(re::SFBSystemShellTileDownsampleNode *this)
{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

re::CameraMatrices *re::CameraMatrices::CameraMatrices(re::CameraMatrices *this, re::Allocator *a2, unint64_t a3)
{
  *this = &unk_1F5D03790;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 8) = 0;
  *(this + 15) = 0;
  *(this + 128) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 0;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 160) = 1;
  *(this + 1) = a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 1, a3);
  ++*(this + 8);
  *(this + 6) = a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 6, a3);
  ++*(this + 18);
  *(this + 11) = a2;
  re::DynamicArray<re::Matrix4x4<float>>::setCapacity(this + 11, a3);
  ++*(this + 28);
  *(this + 160) = a3;
  return this;
}

uint64_t re::RenderGraphContext::tryGetRenderGraphDataPipe(re::RenderGraphContext *this, const char *a2)
{
  v2 = &unk_1ECF17000;
  {
    v6 = a2;
    v7 = this;
    v2 = &unk_1ECF17000;
    v5 = v4;
    a2 = v6;
    this = v7;
    if (v5)
    {
      re::RenderGraphContext::tryGetRenderGraphDataPipe(unsigned long)::kRenderGraphDataPipeDataScopeHash = re::hashString("RenderGraphDataPipeData", v6);
      v2 = &unk_1ECF17000;
      a2 = v6;
      this = v7;
    }
  }

  result = re::RenderGraphDataStore::tryGet<re::RenderGraphDataPipeData>(*(this + 146), &a2[64 * v2[347] - 0x61C8864680B583E9 + (v2[347] >> 2)] ^ v2[347]);
  if (result)
  {
    return *(result + 8);
  }

  return result;
}

BOOL re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_0,BOOL ()(re::MeshPartDrawContext const&)>::operator()(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  v3 = *(v2 + 32);
  v4 = *(v2 + 16);
  v5 = &v3[14 * v4];
  if (v4)
  {
    v6 = 112 * v4;
    while (*v3 != *a2)
    {
      v3 += 14;
      v6 -= 112;
      if (!v6)
      {
        v3 = v5;
        return v3 != v5;
      }
    }
  }

  return v3 != v5;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_0,BOOL ()(re::MeshPartDrawContext const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10FC0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_0,BOOL ()(re::MeshPartDrawContext const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D10FC0;
  a2[1] = v2;
  return a2;
}

uint64_t re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::operator=<32ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(a1);
    v4 = *(a2 + 40);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x21)
      {
        v7 = v5;
        v8 = *(a1 + 32);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 40) = v6;
      (*(**(a2 + 40) + 24))(*(a2 + 40));
    }
  }

  return a1;
}

uint64_t (***re::FunctionBase<32ul,BOOL ()(re::MeshPartDrawContext const&)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 40);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 40) != a1)
    {
      result = (*(**(a1 + 32) + 40))(*(a1 + 32));
    }

    *(a1 + 40) = 0;
  }

  return result;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_2,BOOL ()(re::MeshPartDrawContext const&)>::operator()(uint64_t a1, float32x4_t *a2)
{
  v4 = *(a1 + 8);
  if (*(v4 + 24))
  {
    v5 = v4 + 32;
  }

  else
  {
    v5 = *(v4 + 40);
  }

  v6 = v5 + 40 * *(v4 + 16);
  v7 = *(v6 - 24);
  if (!v7)
  {
    return 0;
  }

  v8 = *(v6 - 8);
  v9 = v8 + 6;
  v10 = 112 * v7;
  for (i = v8 + 2; ; i += 7)
  {
    if (v12)
    {
      if ((a2[10].i8[1] & 1) != 0 && *(v12 + 1) == 1 && a2[11].f32[0] == *(v12 + 4))
      {
        v14 = a2[10].u8[3] == *(v12 + 8) ? v9[-6].i64[1] : 0;
      }

      else
      {
        v14 = 0;
      }

      v15 = a2[12].i32[1];
      if (re::isBoundingBoxInsideVCAPlanes(a2[1].i64[1] + 416, a2 + 5, v14, a2[12].i32[2], &a2[10], a2 + 9, v9, v13, i, 4, v9[-6].i64[1], v9[-5].i32[0]))
      {
        if ((v15 & 0x4000000) == 0)
        {
          break;
        }
      }
    }

    v9 += 7;
    v10 -= 112;
    if (!v10)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_2,BOOL ()(re::MeshPartDrawContext const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11028;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_2,BOOL ()(re::MeshPartDrawContext const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11028;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::WeakStringID,re::CameraStreamParams,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,false,false>::findEntry<re::WeakStringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 416 * v6 + 16;
}

void anonymous namespace::computeWarpTransforms(uint64_t a1, unint64_t a2, uint64_t a3, simd_float4 *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a5;
  v13 = a5;
  v14 = a3 + (a5 << 6);
  WarpMatrixForSourceProjection = re::createWarpMatrixForSourceProjection(*(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *a4, a4[1], a4[2], a4[3], a1, a2, a3, a4, a5, a6, a7, a8, *(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *v14, *(v14 + 16), *(v14 + 32), *(v14 + 48));
  if (a2 <= v8)
  {
    re::internal::assertLog(6, v15, WarpMatrixForSourceProjection, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v13, a2);
    _os_crash();
    __break(1u);
  }

  else
  {
    v23 = (a1 + 192 * v13);
    *v23[5].i64 = WarpMatrixForSourceProjection;
    v23[5].i32[2] = v17;
    v23[6].i64[0] = v18;
    v23[6].i32[2] = v19;
    v23[7].i64[0] = v20;
    v23[7].i32[2] = v21;
    LODWORD(v22) = *(a3 + 420);
    v24 = a3 + 16 * v13;
    ViewportToNDCReprojectionMatrix = re::createViewportToNDCReprojectionMatrix(*(v24 + 384), *(v24 + 392), v23[5], v23[6], v23[7], *(a3 + 416), v22);
    v23[5].i32[2] = v26;
    *v23[5].i64 = ViewportToNDCReprojectionMatrix;
    v23[6].i32[2] = v27;
    v23[6].i64[0] = v28;
    v23[7].i32[2] = v29;
    v23[7].i64[0] = v30;
    *v23[8].i64 = re::createWarpMatrixForSourceProjection(*(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *a4, a4[1], a4[2], a4[3], v31, v32, v33, v34, v35, v36, v37, v38, *(v14 + 256), *(v14 + 272), *(v14 + 288), *(v14 + 304), *(v14 + 128), *(v14 + 144), *(v14 + 160), *(v14 + 176));
    v23[8].i32[2] = v39;
    v23[9].i32[2] = v40;
    v23[9].i64[0] = v41;
    v23[10].i64[0] = v42;
    v23[10].i32[2] = v43;
    LODWORD(v44) = *(a3 + 420);
    v45 = re::createViewportToNDCReprojectionMatrix(*(v24 + 384), *(v24 + 392), v23[8], v23[9], v23[10], *(a3 + 416), v44);
    v23[8].i32[2] = v46;
    *v23[8].i64 = v45;
    v23[9].i32[2] = v47;
    v23[9].i64[0] = v48;
    v23[10].i32[2] = v49;
    v23[10].i64[0] = v50;
  }
}

uint64_t re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D11090;
  v2 = *(a1 + 472);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 448);
  }

  *(a1 + 472) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D11090;
  v2 = *(a1 + 472);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 448);
  }

  *(a1 + 472) = -1;
  return MEMORY[0x1E6906520](a1, 0x10A3C40DD184A7ELL);
}

void *re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator()(uint64_t a1, simd_float4 *a2, simd_float4 *a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v6 = re::BufferSlice::contents((a1 + 448));
  memcpy(__dst, v6, *(a1 + 484));
  v10 = 0;
  v11 = 1;
  do
  {
    v12 = v11 & 1;
    if (v11)
    {
      v13 = a2;
    }

    else
    {
      v13 = a3;
    }

    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v19[0] = *v13;
    v19[1] = v14;
    v19[2] = v15;
    v19[3] = v16;
    v11 = 0;
    v10 = 1;
  }

  while (v12);
  v17 = re::BufferSlice::contents((a1 + 448));
  return memcpy(v17, __dst, *(a1 + 484));
}

uint64_t re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11090;
  memcpy((a2 + 16), (a1 + 16), 0x1B0uLL);
  *(a2 + 448) = 0;
  *(a2 + 472) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 448, a1 + 448);
  *(a2 + 480) = *(a1 + 480);
  return a2;
}

uint64_t re::internal::Callable<anonymous namespace::setReprojectionConstants(re::RenderGraphContext &,unsigned long,float,float,re::mtl::ComputeCommandEncoder,unsigned int)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11090;
  memcpy((a2 + 16), (a1 + 16), 0x1B0uLL);
  *(a2 + 448) = 0;
  *(a2 + 472) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 448, a1 + 448);
  *(a2 + 480) = *(a1 + 480);
  return a2;
}

void re::RenderGraphMeshNode::~RenderGraphMeshNode(id *this)
{
  *this = &unk_1F5D15DC8;
  re::DynamicArray<re::RigDataTypeClass::RigDataTypeAttribute>::deinit((this + 38));
  re::DynamicString::deinit((this + 34));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::RenderGraphMeshNode::~RenderGraphMeshNode(this);

  JUMPOUT(0x1E6906520);
}

void re::RenderGraphMRCNode::~RenderGraphMRCNode(re::RenderGraphMRCNode *this)
{
  *this = &unk_1F5D14908;
  re::DynamicArray<re::TechniqueFunctionConstant>::deinit(this + 400);
  v2 = *(this + 49);
  if (v2)
  {

    *(this + 49) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 352);
  re::DynamicString::deinit((this + 288));
  re::AssetHandle::~AssetHandle((this + 264));

  re::RenderGraphNode::~RenderGraphNode(this);
}

{
  re::RenderGraphMRCNode::~RenderGraphMRCNode(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::RenderGraphDataStore::tryGet<re::CameraStreamContext>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re19CameraStreamContextE";
  if (("N2re19CameraStreamContextE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re19CameraStreamContextE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::BlurReprojectionState>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re21BlurReprojectionStateE";
  if (("N2re21BlurReprojectionStateE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re21BlurReprojectionStateE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::tryGet<re::VCARenderData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re13VCARenderDataE";
  if (("N2re13VCARenderDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re13VCARenderDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::RenderGraphDataStore::get<re::RendererGlobals>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re15RendererGlobalsE";
  if (("N2re15RendererGlobalsE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re15RendererGlobalsE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  v6 = 0x7FFFFFFFLL;
  if (*(a1 + 64))
  {
    v7 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
    v8 = *(*(a1 + 72) + 4 * (v7 % *(a1 + 88)));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(a1 + 80);
      v6 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 8) != v7)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return *(*(a1 + 80) + 24 * v6 + 16);
        }
      }

      v6 = v8;
    }
  }

  return *(*(a1 + 80) + 24 * v6 + 16);
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,1ul>::add(uint64_t a1, uint64_t a2)
{
  result = re::DynamicInlineArray<re::FilteredMeshPass,1ul>::ensureCapacity(a1, a2);
  if (result)
  {
    v5 = a1 + 24 * *a1;
    *(v5 + 16) = *a2;
    v6 = v5 + 16;
    v7 = *(a2 + 8);
    *(v6 + 8) = v7;
    if (v7 == 1)
    {
      v8 = *(a2 + 9);
      *(v6 + 13) = *(a2 + 13);
      *(v6 + 9) = v8;
    }

    v9 = *(a2 + 14);
    *(v6 + 18) = *(a2 + 18);
    *(v6 + 14) = v9;
    ++*a1;
    ++*(a1 + 8);
  }

  return result;
}

uint64_t re::DynamicInlineArray<re::FilteredMeshPass,1ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (!*a1)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

float32x4_t *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_1,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a1 + 1);
  v6 = *v5 + 1;
  *v5 = v6;
  if ((*(a2 + 145) & 1) == 0)
  {
    *(a2 + 145) = 1;
  }

  *(a2 + 146) = v6;
  v7 = *(*(a1 + 1) + 24);
  v8 = *(a3 + 161) & 1;
  v9 = *(a3 + 176);
  v10 = *(a3 + 163);
  v11 = *(a3 + 200);
  if (*(v7 + 444))
  {
    v12 = v7 + 416;
LABEL_5:
    v41 = 0uLL;
    v42.i64[0] = 0;
    if (HIDWORD(v41) == 0x7FFFFFFF)
    {
      *(v13 + 8) = *(a2 + 88);
      *(v13 + 16) = v6;
      *(v13 + 17) = v8;
      *(v13 + 20) = v9;
      *(v13 + 24) = v10;
      *(v13 + 28) = v11;
      ++*(v7 + 456);
    }

    goto LABEL_24;
  }

  v14 = *(v7 + 16);
  if (v14)
  {
    v15 = 24 * v14;
    v16 = v7 + 32;
    v17 = *(a2 + 88);
    v18 = 32;
    v19 = 24 * v14;
    do
    {
      if (*(v7 + v18) == v17)
      {
        goto LABEL_24;
      }

      v18 += 24;
      v19 -= 24;
    }

    while (v19);
    if ((v14 & 0xFFFFFFF0) != 0)
    {
      v12 = v7 + 416;
      if (!*(v7 + 416))
      {
        v20 = *v7;
        if (!*v7)
        {
        }

        re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v7 + 416, v20, 32);
        v21 = *(v7 + 16);
        if (!v21)
        {
          goto LABEL_20;
        }

        v15 = 24 * v21;
      }

      do
      {
        v41 = 0uLL;
        v42.i64[0] = 0;
        if (HIDWORD(v41) == 0x7FFFFFFF)
        {
          *(v22 + 8) = *v16;
          *(v22 + 16) = *(v16 + 8);
          ++*(v7 + 456);
        }

        v16 += 24;
        v15 -= 24;
      }

      while (v15);
LABEL_20:
      *(v7 + 16) = 0;
      ++*(v7 + 24);
      goto LABEL_5;
    }

    if (v14 >= 0x10)
    {
LABEL_30:
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
      result = _os_crash();
      __break(1u);
      return result;
    }
  }

  else
  {
    v17 = *(a2 + 88);
  }

  v23 = v7 + 24 * v14;
  *(v23 + 32) = v17;
  *(v23 + 40) = v6;
  *(v23 + 41) = v8;
  *(v23 + 44) = v9;
  *(v23 + 48) = v10;
  *(v23 + 49) = v41;
  *(v23 + 51) = BYTE2(v41);
  *(v23 + 52) = v11;
  v24 = *(v7 + 16);
  ++*(v7 + 24);
  v25 = __CFADD__(v24, 1);
  v26 = v24 + 1;
  *(v7 + 16) = v26;
  if (v25)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, v26);
    _os_crash();
    __break(1u);
    goto LABEL_30;
  }

LABEL_24:
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(*(*(a1 + 1) + 16) + 192, (a2 + 88));
  if (result)
  {
    v28 = result;
    result = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](*(*(a1 + 1) + 8) + 56, *(a2 + 84));
    v29 = 0;
    LODWORD(v30) = 0;
    HIDWORD(v30) = 0;
    *(&v30 + 4) = v28->u32[1];
    *&v31 = 0;
    *(&v31 + 1) = v28->u32[2];
    v32 = vnegq_f32(v28[1]);
    v32.i32[3] = 1.0;
    v33 = *result;
    v34 = result[1];
    v35 = result[2];
    v36 = result[3];
    v40[0] = v28->u32[0];
    v40[1] = v30;
    v40[2] = v31;
    v40[3] = v32;
    do
    {
      *(&v41 + v29 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v33, COERCE_FLOAT(v40[v29])), v34, *&v40[v29], 1), v35, v40[v29], 2), v36, v40[v29], 3);
      ++v29;
    }

    while (v29 != 4);
    v37 = v42;
    v38 = v43;
    v39 = v44;
    *result = v41;
    result[1] = v37;
    result[2] = v38;
    result[3] = v39;
  }

  return result;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_1,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D110F8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_1,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D110F8;
  a2[1] = v2;
  return a2;
}

uint64_t re::HashTable<unsigned long long,re::anonymous namespace::SPlatterDrawInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
  v4 = v3 ^ (v3 >> 31);
  v5 = *a2;
  LODWORD(v6) = 0x7FFFFFFF;
  if (!*a2)
  {
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v5 = v4 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v8 = *(a2 + 16);
  if (*(v8 + 32 * v7 + 8) == a3)
  {
    LODWORD(v6) = *(*(a2 + 8) + 4 * v5);
LABEL_5:
    LODWORD(v7) = 0x7FFFFFFF;
    goto LABEL_7;
  }

  v6 = *(v8 + 32 * v7) & 0x7FFFFFFF;
  if (v6 == 0x7FFFFFFF)
  {
    LODWORD(v6) = 0x7FFFFFFF;
  }

  else if (*(v8 + 32 * v6 + 8) != a3)
  {
    LODWORD(v9) = *(v8 + 32 * v7) & 0x7FFFFFFF;
    while (1)
    {
      LODWORD(v7) = v9;
      v9 = *(v8 + 32 * v6) & 0x7FFFFFFF;
      LODWORD(v6) = 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        break;
      }

      v6 = v9;
      if (*(v8 + 32 * v9 + 8) == a3)
      {
        LODWORD(v6) = v9;
        break;
      }
    }
  }

LABEL_7:
  *result = v4;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::anonymous namespace::SPlatterDrawInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
          v11 = *v26;
          *v26 = *a1;
          *a1 = v11;
          v12 = *&v26[16];
          v13 = *(a1 + 16);
          *&v26[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v26[24];
          *&v26[24] = *(a1 + 24);
          v14 = *&v26[32];
          *(a1 + 24) = v15;
          ++*&v26[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 8;
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * (*v17 ^ (*v17 >> 30));
                *(v19 + 8) = *v17;
                *(v19 + 16) = *(v17 + 8);
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v26);
        }
      }

      else
      {
        if (v8)
        {
          v22 = 2 * v7;
        }

        else
        {
          v22 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 32 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 32 * v4;
}

uint64_t *re::DynamicInlineArray<re::DynamicInlineArray<re::PlaneF,6ul>,2ul>::copy(uint64_t *result, uint64_t *a2)
{
  v2 = result;
  v3 = *a2;
  v4 = *result;
  if (*a2 >= *result)
  {
    v11 = a2 + 2;
    v12 = result + 2;
    if (v4)
    {
      v13 = 112 * v4;
      v14 = result + 2;
      v15 = a2 + 2;
      do
      {
        result = re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(v14, v15);
        v15 += 14;
        v14 += 14;
        v13 -= 112;
      }

      while (v13);
      v4 = *v2;
    }

    if (v4 != v3)
    {
      v16 = 14 * v4;
      v17 = &v11[14 * v4];
      v18 = &v12[v16];
      v19 = v17;
      do
      {
        *v18 = 0;
        *(v18 + 2) = 0;
        v20 = *v19;
        v19 += 14;
        result = memcpy(v18 + 2, v17 + 2, 16 * v20);
        *v18 = v20;
        v18 += 14;
        v17 = v19;
      }

      while (v19 != &v11[14 * v3]);
    }
  }

  else
  {
    v5 = result + 2;
    if (v3)
    {
      v6 = 112 * v3;
      v7 = a2 + 2;
      v8 = result + 2;
      do
      {
        result = re::DynamicInlineArray<re::Vector4<float>,2ul>::operator=(v8, v7);
        v7 += 14;
        v8 += 14;
        v6 -= 112;
      }

      while (v6);
      v4 = *v2;
    }

    if (v3 != v4)
    {
      v9 = &v5[14 * v4];
      v10 = &v5[14 * v3];
      do
      {
        *v10 = 0;
        ++*(v10 + 2);
        v10 += 14;
      }

      while (v10 != v9);
    }
  }

  *v2 = v3;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,false>(uint64_t a1, __n128 *a2, uint64_t a3, char a4, __n128 a5)
{
LABEL_1:
  v9 = &a2[-1];
  v10 = &a2[-2];
  v11 = &a2[-3];
  v12 = a1;
  while (1)
  {
    a1 = v12;
    v13 = (a2 - v12) >> 4;
    if (v13 <= 2)
    {
      if (v13 < 2)
      {
        return;
      }

      if (v13 == 2)
      {
        v54 = a2[-1].n128_f32[0];
        v53 = a2 - 1;
        if (v54 <= *v12)
        {
          return;
        }

LABEL_106:
        v132 = *v12;
        *v12 = *v53;
        v59 = v132;
LABEL_107:
        *v53 = v59;
        return;
      }

      goto LABEL_9;
    }

    if (v13 == 3)
    {
      break;
    }

    if (v13 == 4)
    {
      v55 = (v12 + 16);
      v60 = *(v12 + 16);
      v61 = (v12 + 32);
      v62 = *(v12 + 32);
      if (v60 <= *v12)
      {
        if (v62 > v60)
        {
          v100 = *v55;
          *v55 = *v61;
          *v61 = v100;
          if (*(v12 + 16) > *v12)
          {
            v137 = *v12;
            *v12 = *v55;
            *v55 = v137;
          }
        }
      }

      else
      {
        if (v62 > v60)
        {
          v133 = *v12;
          *v12 = *v61;
          v63 = v133;
          goto LABEL_176;
        }

        v140 = *v12;
        *v12 = *v55;
        *v55 = v140;
        if (v62 > *(v12 + 16))
        {
          v63 = *v55;
          *v55 = *v61;
LABEL_176:
          *v61 = v63;
        }
      }

      if (*v9 <= v61->n128_f32[0])
      {
        return;
      }

      v105 = *v61;
      *v61 = *v9;
      *v9 = v105;
      if (v61->n128_f32[0] <= v55->n128_f32[0])
      {
        return;
      }

      v106 = *v55;
      *v55 = *v61;
      *v61 = v106;
LABEL_180:
      if (*(v12 + 16) > *v12)
      {
        v141 = *v12;
        *v12 = *v55;
        *v55 = v141;
      }

      return;
    }

    if (v13 == 5)
    {

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,0>(v12, (v12 + 16), (v12 + 32), (v12 + 48), &a2[-1], a5);
      return;
    }

LABEL_9:
    if (v13 <= 23)
    {
      v64 = (v12 + 16);
      v66 = v12 == a2 || v64 == a2;
      if (a4)
      {
        if (!v66)
        {
          v67 = 0;
          v68 = v12;
          do
          {
            v69 = v64;
            v70 = *(v68 + 16);
            if (v70 > *v68)
            {
              v134 = *(v68 + 20);
              v142 = *(v68 + 28);
              v71 = v67;
              while (1)
              {
                *(v12 + v71 + 16) = *(v12 + v71);
                if (!v71)
                {
                  break;
                }

                v72 = *(v12 + v71 - 16);
                v71 -= 16;
                if (v70 <= v72)
                {
                  v73 = v12 + v71 + 16;
                  goto LABEL_126;
                }
              }

              v73 = v12;
LABEL_126:
              *v73 = v70;
              *(v73 + 12) = v142;
              *(v73 + 4) = v134;
            }

            v64 = v69 + 1;
            v67 += 16;
            v68 = v69;
          }

          while (&v69[1] != a2);
        }
      }

      else if (!v66)
      {
        do
        {
          v101 = v64;
          v102 = *(a1 + 16);
          if (v102 > *a1)
          {
            v138 = *(a1 + 20);
            v144 = *(a1 + 28);
            v103 = v64;
            do
            {
              *v103 = v103[-1];
              v104 = v103[-2].n128_f32[0];
              --v103;
            }

            while (v102 > v104);
            v103->n128_f32[0] = v102;
            v103->n128_u32[3] = v144;
            *(v103->n128_u64 + 4) = v138;
          }

          ++v64;
          a1 = v101;
        }

        while ((v101 + 16) != a2);
      }

      return;
    }

    if (!a3)
    {
      if (v12 != a2)
      {
        v74 = (v13 - 2) >> 1;
        v75 = v74;
        do
        {
          v76 = v75;
          if (v74 >= v75)
          {
            v77 = (2 * v75) | 1;
            v78 = (v12 + 16 * v77);
            if (2 * v76 + 2 < v13 && *v78 > v78[4])
            {
              v78 += 4;
              v77 = 2 * v76 + 2;
            }

            v79 = (v12 + 16 * v76);
            v80 = *v79;
            if (*v78 <= *v79)
            {
              v143 = *(v79 + 3);
              v135 = *(v79 + 1);
              do
              {
                v81 = v79;
                v79 = v78;
                *v81 = *v78;
                if (v74 < v77)
                {
                  break;
                }

                v82 = 2 * v77;
                v77 = (2 * v77) | 1;
                v78 = (v12 + 16 * v77);
                v83 = v82 + 2;
                if (v83 < v13 && *v78 > v78[4])
                {
                  v78 += 4;
                  v77 = v83;
                }
              }

              while (*v78 <= v80);
              *v79 = v80;
              *(v79 + 3) = v143;
              *(v79 + 1) = v135;
            }
          }

          v75 = v76 - 1;
        }

        while (v76);
        do
        {
          v84 = 0;
          v136 = *v12;
          v85 = v12;
          do
          {
            v86 = v85;
            v87 = &v85[v84];
            v85 = v87 + 1;
            v88 = 2 * v84;
            v84 = (2 * v84) | 1;
            v89 = v88 + 2;
            if (v89 < v13)
            {
              v91 = v87[2].n128_f32[0];
              v90 = v87 + 2;
              if (v90[-1].n128_f32[0] > v91)
              {
                v85 = v90;
                v84 = v89;
              }
            }

            *v86 = *v85;
          }

          while (v84 <= ((v13 - 2) >> 1));
          if (v85 == --a2)
          {
            *v85 = v136;
          }

          else
          {
            *v85 = *a2;
            *a2 = v136;
            v92 = (&v85[1] - v12) >> 4;
            v93 = v92 < 2;
            v94 = v92 - 2;
            if (!v93)
            {
              v95 = v94 >> 1;
              v96 = (v12 + 16 * v95);
              v97 = v85->n128_f32[0];
              if (v96->n128_f32[0] > v85->n128_f32[0])
              {
                v112 = v85->n128_i32[3];
                v109 = *(v85->n128_u64 + 4);
                do
                {
                  v98 = v85;
                  v85 = v96;
                  *v98 = *v96;
                  if (!v95)
                  {
                    break;
                  }

                  v95 = (v95 - 1) >> 1;
                  v96 = (v12 + 16 * v95);
                }

                while (v96->n128_f32[0] > v97);
                v85->n128_f32[0] = v97;
                v85->n128_u32[3] = v112;
                *(v85->n128_u64 + 4) = v109;
              }
            }
          }

          v93 = v13-- <= 2;
        }

        while (!v93);
      }

      return;
    }

    v14 = (v12 + 16 * (v13 >> 1));
    v15 = v14;
    v16 = *v9;
    if (v13 >= 0x81)
    {
      v17 = *v14;
      if (*v14 <= *v12)
      {
        if (v16 > v17)
        {
          v115 = *v14;
          *v14 = *v9;
          *v9 = v115;
          if (*v14 > *v12)
          {
            v116 = *v12;
            *v12 = *v14;
            *v14 = v116;
          }
        }
      }

      else
      {
        if (v16 > v17)
        {
          v113 = *v12;
          *v12 = *v9;
          goto LABEL_26;
        }

        v119 = *v12;
        *v12 = *v14;
        *v14 = v119;
        if (*v9 > *v14)
        {
          v113 = *v14;
          *v14 = *v9;
LABEL_26:
          *v9 = v113;
        }
      }

      v19 = (v12 + 16);
      v20 = v14 - 4;
      v21 = *(v14 - 4);
      v22 = *v10;
      if (v21 <= *(v12 + 16))
      {
        if (v22 > v21)
        {
          v120 = *v20;
          *v20 = *v10;
          *v10 = v120;
          if (*v20 > *v19)
          {
            v24 = *v19;
            *v19 = *v20;
            *v20 = v24;
          }
        }
      }

      else
      {
        if (v22 > v21)
        {
          v23 = *v19;
          *v19 = *v10;
          goto LABEL_38;
        }

        v25 = *v19;
        *v19 = *v20;
        *v20 = v25;
        if (*v10 > *v20)
        {
          v122 = *v20;
          *v20 = *v10;
          v23 = v122;
LABEL_38:
          *v10 = v23;
        }
      }

      v26 = (v12 + 32);
      v28 = v14[4];
      v27 = (v14 + 4);
      v29 = v28;
      v30 = *v11;
      if (v28 <= *(v12 + 32))
      {
        if (v30 > v29)
        {
          v123 = *v27;
          *v27 = *v11;
          *v11 = v123;
          if (*v27 > *v26)
          {
            v32 = *v26;
            *v26 = *v27;
            *v27 = v32;
          }
        }
      }

      else
      {
        if (v30 > v29)
        {
          v31 = *v26;
          *v26 = *v11;
          goto LABEL_47;
        }

        v33 = *v26;
        *v26 = *v27;
        *v27 = v33;
        if (*v11 > *v27)
        {
          v124 = *v27;
          *v27 = *v11;
          v31 = v124;
LABEL_47:
          *v11 = v31;
        }
      }

      v34 = *v15;
      v35 = *v27;
      if (*v15 <= *v20)
      {
        if (v35 > v34)
        {
          v126 = *v15;
          *v15 = *v27;
          *v27 = v126;
          if (*v15 > *v20)
          {
            v127 = *v20;
            *v20 = *v15;
            *v15 = v127;
          }
        }
      }

      else
      {
        if (v35 > v34)
        {
          v125 = *v20;
          *v20 = *v27;
          goto LABEL_56;
        }

        v128 = *v20;
        *v20 = *v15;
        *v15 = v128;
        if (*v27 > *v15)
        {
          v125 = *v15;
          *v15 = *v27;
LABEL_56:
          *v27 = v125;
        }
      }

      v129 = *v12;
      *v12 = *v15;
      a5 = v129;
      *v15 = v129;
      goto LABEL_58;
    }

    v18 = *v12;
    if (*v12 <= *v14)
    {
      if (v16 > v18)
      {
        v117 = *v12;
        *v12 = *v9;
        a5 = v117;
        *v9 = v117;
        if (*v12 > *v14)
        {
          v118 = *v14;
          *v14 = *v12;
          a5 = v118;
          *v12 = v118;
        }
      }

      goto LABEL_58;
    }

    if (v16 <= v18)
    {
      v121 = *v14;
      *v14 = *v12;
      a5 = v121;
      *v12 = v121;
      if (*v9 <= *v12)
      {
        goto LABEL_58;
      }

      v114 = *v12;
      *v12 = *v9;
    }

    else
    {
      v114 = *v14;
      *v14 = *v9;
    }

    a5 = v114;
    *v9 = v114;
LABEL_58:
    --a3;
    a5.n128_u32[0] = *v12;
    if ((a4 & 1) != 0 || *(v12 - 16) > a5.n128_f32[0])
    {
      v36 = 0;
      v110 = *(v12 + 12);
      v107 = *(v12 + 4);
      do
      {
        v37 = *(v12 + v36 + 16);
        v36 += 16;
      }

      while (v37 > a5.n128_f32[0]);
      v38 = v12 + v36;
      v39 = a2;
      if (v36 == 16)
      {
        v39 = a2;
        do
        {
          if (v38 >= v39)
          {
            break;
          }

          v41 = v39[-1].n128_f32[0];
          --v39;
        }

        while (v41 <= a5.n128_f32[0]);
      }

      else
      {
        do
        {
          v40 = v39[-1].n128_f32[0];
          --v39;
        }

        while (v40 <= a5.n128_f32[0]);
      }

      v12 += v36;
      if (v38 < v39)
      {
        v42 = v39;
        do
        {
          v130 = *v12;
          *v12 = *v42;
          *v42 = v130;
          do
          {
            v43 = *(v12 + 16);
            v12 += 16;
          }

          while (v43 > a5.n128_f32[0]);
          do
          {
            v44 = v42[-1].n128_f32[0];
            --v42;
          }

          while (v44 <= a5.n128_f32[0]);
        }

        while (v12 < v42);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      *(v12 - 16) = a5.n128_u32[0];
      *(v12 - 4) = v110;
      *(v12 - 12) = v107;
      if (v38 < v39)
      {
        goto LABEL_79;
      }

      v45 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *>(a1, v12 - 16, a5);
      if (std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *>(v12, a2, v46))
      {
        a2 = (v12 - 16);
        if (!v45)
        {
          goto LABEL_1;
        }

        return;
      }

      if (!v45)
      {
LABEL_79:
        std::__introsort<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,false>(a1, v12 - 16, a3, a4 & 1);
        a4 = 0;
      }
    }

    else
    {
      v111 = *(v12 + 12);
      v108 = *(v12 + 4);
      if (a5.n128_f32[0] <= *v9)
      {
        v48 = v12 + 16;
        do
        {
          v12 = v48;
          if (v48 >= a2)
          {
            break;
          }

          v48 += 16;
        }

        while (a5.n128_f32[0] <= *v12);
      }

      else
      {
        do
        {
          v47 = *(v12 + 16);
          v12 += 16;
        }

        while (a5.n128_f32[0] <= v47);
      }

      v49 = a2;
      if (v12 < a2)
      {
        v49 = a2;
        do
        {
          v50 = v49[-1].n128_f32[0];
          --v49;
        }

        while (a5.n128_f32[0] > v50);
      }

      while (v12 < v49)
      {
        v131 = *v12;
        *v12 = *v49;
        *v49 = v131;
        do
        {
          v51 = *(v12 + 16);
          v12 += 16;
        }

        while (a5.n128_f32[0] <= v51);
        do
        {
          v52 = v49[-1].n128_f32[0];
          --v49;
        }

        while (a5.n128_f32[0] > v52);
      }

      if (v12 - 16 != a1)
      {
        *a1 = *(v12 - 16);
      }

      a4 = 0;
      *(v12 - 16) = a5.n128_u32[0];
      *(v12 - 4) = v111;
      *(v12 - 12) = v108;
    }
  }

  v55 = (v12 + 16);
  v56 = *(v12 + 16);
  v57 = a2[-1].n128_f32[0];
  v53 = a2 - 1;
  v58 = v57;
  if (v56 <= *v12)
  {
    if (v58 <= v56)
    {
      return;
    }

    v99 = *v55;
    *v55 = *v53;
    *v53 = v99;
    goto LABEL_180;
  }

  if (v58 > v56)
  {
    goto LABEL_106;
  }

  v139 = *v12;
  *v12 = *v55;
  *v55 = v139;
  if (v53->n128_f32[0] > *(v12 + 16))
  {
    v59 = *v55;
    *v55 = *v53;
    goto LABEL_107;
  }
}

__n128 std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,0>(__n128 *a1, float *a2, float *a3, _OWORD *a4, unsigned __int32 *a5, __n128 result)
{
  v6 = *a2;
  v7 = *a3;
  if (*a2 <= a1->n128_f32[0])
  {
    if (v7 > v6)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 > a1->n128_f32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  else
  {
    if (v7 > v6)
    {
      result = *a1;
      *a1 = *a3;
LABEL_9:
      *a3 = result;
      goto LABEL_10;
    }

    result = *a1;
    *a1 = *a2;
    *a2 = result;
    if (*a3 > *a2)
    {
      result = *a2;
      *a2 = *a3;
      goto LABEL_9;
    }
  }

LABEL_10:
  if (*a4 > *a3)
  {
    result = *a3;
    *a3 = *a4;
    *a4 = result;
    if (*a3 > *a2)
    {
      result = *a2;
      *a2 = *a3;
      *a3 = result;
      if (*a2 > a1->n128_f32[0])
      {
        result = *a1;
        *a1 = *a2;
        *a2 = result;
      }
    }
  }

  result.n128_u32[0] = *a5;
  if (*a5 > *a4)
  {
    result = *a4;
    *a4 = *a5;
    *a5 = result;
    result.n128_u32[0] = *a4;
    if (*a4 > *a3)
    {
      result = *a3;
      *a3 = *a4;
      *a4 = result;
      result.n128_f32[0] = *a3;
      if (*a3 > *a2)
      {
        result = *a2;
        *a2 = *a3;
        *a3 = result;
        result.n128_f32[0] = *a2;
        if (*a2 > a1->n128_f32[0])
        {
          result = *a1;
          *a1 = *a2;
          *a2 = result;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *>(uint64_t a1, uint64_t a2, __n128 a3)
{
  v3 = (a2 - a1) >> 4;
  if (v3 > 2)
  {
    if (v3 == 3)
    {
      v6 = (a1 + 16);
      v7 = *(a1 + 16);
      v8 = *(a2 - 16);
      v4 = (a2 - 16);
      v9 = v8;
      if (v7 > *a1)
      {
        if (v9 <= v7)
        {
          v28 = *a1;
          *a1 = *v6;
          *v6 = v28;
          if (*v4 <= *(a1 + 16))
          {
            return 1;
          }

          v10 = *v6;
          *v6 = *v4;
          goto LABEL_13;
        }

LABEL_12:
        v10 = *a1;
        *a1 = *v4;
LABEL_13:
        *v4 = v10;
        return 1;
      }

      if (v9 <= v7)
      {
        return 1;
      }

      v23 = *v6;
      *v6 = *v4;
      *v4 = v23;
LABEL_50:
      if (*(a1 + 16) > *a1)
      {
        v40 = *a1;
        *a1 = *v6;
        *v6 = v40;
      }

      return 1;
    }

    if (v3 != 4)
    {
      if (v3 != 5)
      {
        goto LABEL_14;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_7 &,re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::StencilPortalSortInfo *,0>(a1, (a1 + 16), (a1 + 32), (a1 + 48), (a2 - 16), a3);
      return 1;
    }

    v6 = (a1 + 16);
    v17 = *(a1 + 16);
    v18 = (a1 + 32);
    v19 = *(a1 + 32);
    v20 = (a2 - 16);
    v21 = *a1;
    if (v17 <= *a1)
    {
      if (v19 > v17)
      {
        v26 = *v6;
        *v6 = *v18;
        *v18 = v26;
        if (v6->n128_f32[0] > v21)
        {
          v27 = *a1;
          *a1 = *v6;
          *v6 = v27;
        }
      }

      goto LABEL_47;
    }

    if (v19 <= v17)
    {
      v37 = *a1;
      *a1 = *v6;
      *v6 = v37;
      if (v19 <= *(a1 + 16))
      {
        goto LABEL_47;
      }

      v22 = *v6;
      *v6 = *v18;
    }

    else
    {
      v22 = *a1;
      *a1 = *v18;
    }

    *v18 = v22;
LABEL_47:
    if (*v20 <= v18->n128_f32[0])
    {
      return 1;
    }

    v38 = *v18;
    *v18 = *v20;
    *v20 = v38;
    if (v18->n128_f32[0] <= v6->n128_f32[0])
    {
      return 1;
    }

    v39 = *v6;
    *v6 = *v18;
    *v18 = v39;
    goto LABEL_50;
  }

  if (v3 < 2)
  {
    return 1;
  }

  if (v3 == 2)
  {
    v5 = *(a2 - 16);
    v4 = (a2 - 16);
    if (v5 <= *a1)
    {
      return 1;
    }

    goto LABEL_12;
  }

LABEL_14:
  v11 = (a1 + 32);
  v12 = *(a1 + 32);
  v13 = (a1 + 16);
  v14 = *(a1 + 16);
  v15 = *a1;
  if (v14 <= *a1)
  {
    if (v12 > v14)
    {
      v24 = *v13;
      *v13 = *v11;
      *v11 = v24;
      if (v13->n128_f32[0] > v15)
      {
        v25 = *a1;
        *a1 = *v13;
        *v13 = v25;
      }
    }
  }

  else
  {
    if (v12 <= v14)
    {
      v29 = *a1;
      *a1 = *v13;
      *v13 = v29;
      if (v12 <= *(a1 + 16))
      {
        goto LABEL_33;
      }

      v16 = *v13;
      *v13 = *v11;
    }

    else
    {
      v16 = *a1;
      *a1 = *v11;
    }

    *v11 = v16;
  }

LABEL_33:
  v30 = a1 + 48;
  if (a1 + 48 == a2)
  {
    return 1;
  }

  v31 = 0;
  v32 = 0;
  while (1)
  {
    v33 = *v30;
    if (*v30 > v11->n128_f32[0])
    {
      v42 = *(v30 + 4);
      v43 = *(v30 + 12);
      v34 = v31;
      while (1)
      {
        *(a1 + v34 + 48) = *(a1 + v34 + 32);
        if (v34 == -32)
        {
          break;
        }

        v35 = *(a1 + v34 + 16);
        v34 -= 16;
        if (v33 <= v35)
        {
          v36 = a1 + v34 + 48;
          goto LABEL_41;
        }
      }

      v36 = a1;
LABEL_41:
      *v36 = v33;
      *(v36 + 4) = v42;
      *(v36 + 12) = v43;
      if (++v32 == 8)
      {
        return v30 + 16 == a2;
      }
    }

    v11 = v30;
    v31 += 16;
    v30 += 16;
    if (v30 == a2)
    {
      return 1;
    }
  }
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_3,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(uint64_t result, uint64_t a2, float32x4_t *a3)
{
  v3 = a3[2].i64[0];
  if (v3)
  {
    v5 = v3[1];
    v25[0] = *v3;
    v25[1] = v5;
    v6 = *(result + 8);
    if (*(v6 + 24))
    {
      v7 = v6 + 32;
    }

    else
    {
      v7 = *(v6 + 40);
    }

    v8 = v7 + 40 * *(v6 + 16);
    v9 = *(v8 - 24);
    if (v9)
    {
      v10 = a2;
      v24 = a3[12].i32[2];
      v11 = *(v8 - 8);
      v23 = &v11[7 * v9];
      v12 = -1;
      v13 = result;
      do
      {
        if (v14)
        {
          if (a3[10].i8[1])
          {
            v15 = v10;
            if (*(v14 + 1) == 1 && a3[11].f32[0] == *(v14 + 4))
            {
              v16 = a3[10].u8[3] == *(v14 + 8) ? v11->i64[1] : 0;
            }

            else
            {
              v16 = 0;
            }
          }

          else
          {
            v16 = 0;
            v15 = v10;
          }

          v17 = *(v15 + 3) == 2 ? *(v15 + 32) : 1;
          if (v17 >= 1)
          {
            v18 = v14;
            for (i = 0; i != v17; ++i)
            {
              v20 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](*(v13 + 16) + 56, (i + *(v10 + 84)));
              if (re::isBoundingBoxInsideVCAPlanes(v25, v20, v16, v24, &a3[10], a3 + 9, v11 + 6, v21, v11 + 2, 4, v11->i64[1], v11[1].i32[0]) && v12 >= *v18)
              {
                v12 = *v18;
              }
            }
          }
        }

        v11 += 7;
        result = v13;
      }

      while (v11 != v23);
      v22 = v12 - 1;
      a2 = v10;
    }

    else
    {
      v22 = -2;
    }

    if ((*(a2 + 145) & 1) == 0)
    {
      *(a2 + 145) = 1;
    }

    *(a2 + 146) = v22;
  }

  return result;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_3,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11160;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_3,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11160;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

unsigned __int8 *re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_4,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::operator()(unsigned __int8 *result, uint64_t a2, float32x4_t *a3, unsigned __int8 *a4)
{
  v4 = a3[2].i64[0];
  if (v4)
  {
    v7 = result;
    {
      v9 = v4[1];
      v25[0] = *v4;
      v25[1] = v9;
      v10 = *(v7 + 1);
      if (*(v10 + 24))
      {
        v11 = v10 + 32;
      }

      else
      {
        v11 = *(v10 + 40);
      }

      v12 = v11 + 40 * *(v10 + 16);
      v13 = *(v12 - 24);
      if (v13)
      {
        v24 = a3[12].i32[2];
        v14 = *(v12 - 8);
        v23 = &v14[7 * v13];
        v15 = -1;
        v16 = v7;
        do
        {
          if (result)
          {
            if ((a3[10].i8[1] & 1) != 0 && result[1] == 1 && a3[11].f32[0] == *(result + 1))
            {
              v17 = a3[10].u8[3] == result[8] ? v14->i64[1] : 0;
            }

            else
            {
              v17 = 0;
            }

            v18 = *(a2 + 3) == 2 ? *(a2 + 32) : 1;
            if (v18 >= 1)
            {
              v19 = result;
              for (i = 0; i != v18; ++i)
              {
                v21 = re::BucketArray<re::Matrix4x4<float>,128ul>::operator[](*(v16 + 3) + 56, (i + *(a2 + 84)));
                result = re::isBoundingBoxInsideVCAPlanes(v25, v21, v17, v24, &a3[10], a3 + 9, v14 + 6, v22, v14 + 2, 4, v14->i64[1], v14[1].i32[0]);
                if (result && v15 >= *v19)
                {
                  v15 = *v19;
                }
              }
            }
          }

          v14 += 7;
          v7 = v16;
        }

        while (v14 != v23);
        LOBYTE(v8) = v15 - 1;
      }

      else
      {
        LOBYTE(v8) = -2;
      }
    }

    if ((*(a2 + 145) & 1) == 0)
    {
      *(a2 + 145) = 1;
    }

    *(a2 + 146) = v8;
  }

  return result;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_4,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D111B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellStencilBlurMeshNode::executeWithRenderForBlurBitSet(re::RenderGraphContext &)::$_4,void ()(re::DrawCall &,re::MeshPartDrawContext const&,unsigned char)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D111B8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::RenderGraphDataStore::tryGet<re::TonemapParametersData>(uint64_t a1, uint64_t a2)
{
  v2 = "N2re21TonemapParametersDataE";
  if (("N2re21TonemapParametersDataE" & 0x8000000000000000) != 0)
  {
    v3 = ("N2re21TonemapParametersDataE" & 0x7FFFFFFFFFFFFFFFLL);
    v4 = 5381;
    do
    {
      v2 = v4;
      v5 = *v3++;
      v4 = (33 * v4) ^ v5;
    }

    while (v5);
  }

  if (!*(a1 + 64))
  {
    return 0;
  }

  v6 = (a2 + (v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9) ^ v2;
  v7 = *(*(a1 + 72) + 4 * (v6 % *(a1 + 88)));
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 80);
  while (*(v8 + 24 * v7 + 8) != v6)
  {
    v7 = *(v8 + 24 * v7) & 0x7FFFFFFF;
    if (v7 == 0x7FFFFFFF)
    {
      return 0;
    }
  }

  return *(v8 + 24 * v7 + 16);
}

uint64_t re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::~Callable(uint64_t a1)
{
  *a1 = &unk_1F5D11210;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return a1;
}

{
  *a1 = &unk_1F5D11210;
  v2 = *(a1 + 40);
  if (v2 != -1)
  {
    (off_1F5D11070[v2])(&v4, a1 + 16);
  }

  *(a1 + 40) = -1;
  return MEMORY[0x1E6906520](a1, 0x10E3C40B2DC33E2);
}

void *re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::operator()(uint64_t a1, simd_float4 *a2, simd_float4 *a3)
{
  v40[21] = *MEMORY[0x1E69E9840];
  v6 = re::BufferSlice::contents((a1 + 16));
  v7 = memcpy(__dst, v6, *(a1 + 52));
  v15 = 0;
  v16 = &v39;
  v17 = 1;
  do
  {
    v18 = v17 & 1;
    if (v17)
    {
      v19 = a2;
    }

    else
    {
      v19 = a3;
    }

    v20 = v19[1];
    v36 = v20;
    v37 = *v19;
    v21 = v19[3];
    v34 = v21;
    v35 = v19[2];
    v22 = (a1 + 192 + (v15 << 6));
    WarpMatrixForSourceProjection = re::createWarpMatrixForSourceProjection(*v22, v22[1], v22[2], v22[3], v37, v20, v35, v21, v7, v8, v9, v10, v11, v12, v13, v14, *v22, v22[1], v22[2], v22[3], *(a1 + 64 + (v15 << 6)), *(a1 + 64 + (v15 << 6) + 16), *(a1 + 64 + (v15 << 6) + 32), *(a1 + 64 + (v15 << 6) + 48));
    v17 = 0;
    *(v16 + 2) = v24;
    *v16 = WarpMatrixForSourceProjection;
    *(v16 + 6) = v25;
    *(v16 + 10) = v26;
    v16[2] = v27;
    v16[4] = v28;
    v29 = *(a1 + 336);
    v30 = *(a1 + 320);
    v31 = (v29 + (v15 << 6));
    *v31 = v37;
    v31[1] = v36;
    v31[2] = v35;
    v31[3] = v34;
    *(v29 + 128) = v30;
    v16 = v40;
    v15 = 1;
  }

  while (v18);
  v32 = re::BufferSlice::contents((a1 + 16));
  return memcpy(v32, __dst, *(a1 + 52));
}

uint64_t re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11210;
  *(a2 + 16) = 0;
  *(a2 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 16, a1 + 16);
  *(a2 + 48) = *(a1 + 48);
  memcpy((a2 + 64), (a1 + 64), 0x118uLL);
  return a2;
}

uint64_t re::internal::Callable<re::SFBSystemShellReprojectAndRectifyNode::setupEncoder(re::RenderGraphContext &,re::mtl::ComputeCommandEncoder)::$_0,void ()(re::Matrix4x4<float> const&,re::Matrix4x4<float> const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5D11210;
  *(a2 + 16) = 0;
  *(a2 + 40) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(a2 + 16, a1 + 16);
  *(a2 + 48) = *(a1 + 48);
  memcpy((a2 + 64), (a1 + 64), 0x118uLL);
  return a2;
}

__n128 re::DynamicArray<re::TargetRead>::add(_anonymous_namespace_ *this, __n128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TargetRead>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = (*(this + 4) + 32 * v4);
  v5->n128_u64[0] = 0;
  v5->n128_u64[1] = -1;
  v5->n128_u64[0] = a2->n128_u64[0];
  v5->n128_u64[1] = a2->n128_u64[1];
  result = a2[1];
  v5[1] = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::TargetWrite>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::TargetWrite>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 6);
  *v5 = 0;
  *(v5 + 8) = -1;
  *v5 = *a2;
  *(v5 + 8) = *(a2 + 8);
  result = *(a2 + 16);
  v7 = *(a2 + 48);
  *(v5 + 32) = *(a2 + 32);
  *(v5 + 48) = v7;
  *(v5 + 16) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void re::RenderGraphNode::configure(re::RenderGraphNode *this, const char *a2, const char *a3, re::RenderFrame *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v5 = 0x9E3779B97F4A7C17;
  v7 = *(this + 3);
  v6 = *(this + 4);
  v8 = strlen(v7);
  if (v8)
  {
    MurmurHash3_x64_128(v7, v8, 0, &v12);
    v9 = (v13 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12;
  }

  else
  {
    v9 = 0;
  }

  v10 = strlen(v6);
  if (v10)
  {
    MurmurHash3_x64_128(v6, v10, 0, &v12);
    v5 = ((v13 - 0x61C8864680B583E9 + (v12 << 6) + (v12 >> 2)) ^ v12) - 0x61C8864680B583E9;
  }

  *(this + 6) = ((v9 >> 2) + (v9 << 6) + v5) ^ v9;
  v11 = *(this + 12);
  *(this + 12) = 0;
}

void re::RenderGraphNode::setup(re::RenderGraphNode *this, re::RenderGraphBuilder *a2, re::RenderGraphDataStore *a3)
{
  v5 = *(this + 15);
  if (v5)
  {
    v6 = *(this + 17);
    v7 = v6 + 32 * v5;
    do
    {
      re::RenderGraphBuilder::read(a2, v6, v6 + 16);
      v6 += 32;
    }

    while (v6 != v7);
  }

  v8 = *(this + 20);
  if (v8)
  {
    v9 = *(this + 22);
    v10 = v9 + (v8 << 6);
    do
    {
      re::RenderGraphBuilder::write(a2, v9, v9 + 16);
      v9 += 64;
    }

    while (v9 != v10);
  }

  v11 = *(this + 25);
  if (v11)
  {
    v12 = *(this + 27);
    v13 = v12 + 32 * v11;
    do
    {
      re::RenderGraphBuilder::read(a2, v12, v12 + 16);
      v12 += 32;
    }

    while (v12 != v13);
  }

  v14 = *(this + 30);
  if (v14)
  {
    v15 = *(this + 32);
    v16 = v15 + (v14 << 6);
    do
    {
      re::RenderGraphBuilder::write(a2, v15, v15 + 16);
      v15 += 64;
    }

    while (v15 != v16);
  }

  *(a2 + 75) = *(this + 9);
  if (*(this + 88))
  {
    *(a2 + 616) = *(this + 88);
  }

  v17 = *(this + 10);
  if (v17)
  {
    *(a2 + 76) = v17;
  }
}

re::DynamicString **re::RenderGraphNode::patch(re::DynamicString **this, re::RenderGraphContext *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  if (this[5])
  {
    v2 = this;
    v3 = *(a2 + 146);
    v4 = "N2re28RenderGraphNodeExecutionDataE";
    if (("N2re28RenderGraphNodeExecutionDataE" & 0x8000000000000000) != 0)
    {
      v5 = ("N2re28RenderGraphNodeExecutionDataE" & 0x7FFFFFFFFFFFFFFFLL);
      v6 = 5381;
      do
      {
        v4 = v6;
        v7 = *v5++;
        v6 = (33 * v6) ^ v7;
      }

      while (v7);
    }

    if (*(v3 + 16))
    {
      v8 = (((this[7] + 64 * this[6] + (this[6] >> 2) - 0x61C8864680B583E9) ^ this[6]) - 0x61C8864680B583E9 + (v4 << 6) + (v4 >> 2)) ^ v4;
      v9 = *(*(v3 + 24) + 4 * (v8 % *(v3 + 40)));
      if (v9 != 0x7FFFFFFF)
      {
        v10 = *(v3 + 32);
        while (*(v10 + 24 * v9 + 8) != v8)
        {
          v9 = *(v10 + 24 * v9) & 0x7FFFFFFF;
          if (v9 == 0x7FFFFFFF)
          {
            return this;
          }
        }

        v11 = *(v10 + 24 * v9 + 16);
        if (v11)
        {
          v12 = this[2];
          v13 = strlen(v12);
          if (v13)
          {
            MurmurHash3_x64_128(v12, v13, 0, &v23);
            v14 = (v24 - 0x61C8864680B583E9 + (v23 << 6) + (v23 >> 2)) ^ v23;
          }

          else
          {
            v14 = 0;
          }

          v23 = v14;
          this = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v11 + 8, &v23);
          if (this)
          {
            v15 = this[2];
            if (v15)
            {
              v16 = this[4];
              v17 = &v16[7 * v15];
              do
              {
                re::FixedArray<unsigned char>::FixedArray(&v23, v16);
                re::FixedArray<unsigned int>::FixedArray(&v26, (v16 + 3));
                v29 = v16[6];
                v20 = v29;
                v21 = v2;
                v18 = re::scanForCopy(&v26, &v21, &v20);
                if (v18)
                {
                  v19 = v25;
                  v22[1] = 0;
                  v22[2] = 0;
                }

                if (v26)
                {
                  if (v27)
                  {
                    (*(*v26 + 40))();
                    v27 = 0;
                    v28 = 0;
                  }

                  v26 = 0;
                }

                this = v23;
                if (v23)
                {
                  if (v24)
                  {
                    this = (*(*v23 + 40))();
                  }
                }

                v16 += 7;
              }

              while (v16 != v17);
            }
          }
        }
      }
    }
  }

  return this;
}

void re::IntrospectionInfo<re::DynamicArray<re::TargetRead>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC60, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC60);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BED00);
      qword_1EE1BED00 = &unk_1F5D11310;
      __cxa_guard_release(&qword_1EE1BEC60);
    }
  }

  if ((_MergedGlobals_510 & 1) == 0)
  {
    v1 = qword_1EE1BEC10;
    if (qword_1EE1BEC10 || (v1 = re::allocInfo_TargetRead(a1), qword_1EE1BEC10 = v1, re::initInfo_TargetRead(v1, v2), (_MergedGlobals_510 & 1) == 0))
    {
      _MergedGlobals_510 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BED00, 0);
      qword_1EE1BED10 = 0x2800000003;
      dword_1EE1BED18 = v3;
      word_1EE1BED1C = 0;
      *&xmmword_1EE1BED20 = 0;
      *(&xmmword_1EE1BED20 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BED30 = v1;
      unk_1EE1BED38 = 0;
      qword_1EE1BED00 = &unk_1F5D11310;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1BED00, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BED20 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::TargetWrite>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC68, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC68);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BED40);
      qword_1EE1BED40 = &unk_1F5D113A8;
      __cxa_guard_release(&qword_1EE1BEC68);
    }
  }

  if ((byte_1EE1BEBE9 & 1) == 0)
  {
    v1 = qword_1EE1BEC28;
    if (qword_1EE1BEC28 || (v1 = re::allocInfo_TargetWrite(a1), qword_1EE1BEC28 = v1, re::initInfo_TargetWrite(v1, v2), (byte_1EE1BEBE9 & 1) == 0))
    {
      byte_1EE1BEBE9 = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BED40, 0);
      qword_1EE1BED50 = 0x2800000003;
      dword_1EE1BED58 = v3;
      word_1EE1BED5C = 0;
      *&xmmword_1EE1BED60 = 0;
      *(&xmmword_1EE1BED60 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BED70 = v1;
      unk_1EE1BED78 = 0;
      qword_1EE1BED40 = &unk_1F5D113A8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1BED40, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BED60 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BufferRead>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC70, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC70);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BED80);
      qword_1EE1BED80 = &unk_1F5D11440;
      __cxa_guard_release(&qword_1EE1BEC70);
    }
  }

  if ((byte_1EE1BEBEA & 1) == 0)
  {
    v1 = qword_1EE1BEC40;
    if (qword_1EE1BEC40 || (v1 = re::allocInfo_BufferRead(a1), qword_1EE1BEC40 = v1, re::initInfo_BufferRead(v1, v2), (byte_1EE1BEBEA & 1) == 0))
    {
      byte_1EE1BEBEA = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BED80, 0);
      qword_1EE1BED90 = 0x2800000003;
      dword_1EE1BED98 = v3;
      word_1EE1BED9C = 0;
      *&xmmword_1EE1BEDA0 = 0;
      *(&xmmword_1EE1BEDA0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BEDB0 = v1;
      unk_1EE1BEDB8 = 0;
      qword_1EE1BED80 = &unk_1F5D11440;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1BED80, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BEDA0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BufferWrite>>::get(re *a1)
{
  if ((atomic_load_explicit(&qword_1EE1BEC78, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1BEC78);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1BEDC0);
      qword_1EE1BEDC0 = &unk_1F5D114D8;
      __cxa_guard_release(&qword_1EE1BEC78);
    }
  }

  if ((byte_1EE1BEBEB & 1) == 0)
  {
    v1 = qword_1EE1BEC58;
    if (qword_1EE1BEC58 || (v1 = re::allocInfo_BufferWrite(a1), qword_1EE1BEC58 = v1, re::initInfo_BufferWrite(v1, v2), (byte_1EE1BEBEB & 1) == 0))
    {
      byte_1EE1BEBEB = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1BEDC0, 0);
      qword_1EE1BEDD0 = 0x2800000003;
      dword_1EE1BEDD8 = v3;
      word_1EE1BEDDC = 0;
      *&xmmword_1EE1BEDE0 = 0;
      *(&xmmword_1EE1BEDE0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1BEDF0 = v1;
      qword_1EE1BEDF8 = 0;
      qword_1EE1BEDC0 = &unk_1F5D114D8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1BEDC0, &v13);
      if (v14)
      {
        v6 = *&v15[7];
      }

      else
      {
        v6 = v15;
      }

      if (v13 && (v14 & 1) != 0)
      {
        (*(*v13 + 40))();
      }

      v10 = *(v1 + 2);
      if (v17)
      {
        v9 = v17;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v16);
        re::TypeBuilder::TypeBuilder(&v13, v16);
        v12 = v10;
        re::TypeBuilder::beginListType(&v13, &v11, 1, 0x28uLL, 8uLL, &v12);
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1BEDE0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::allocInfo_RenderGraphNode(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEBF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEBF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEE00, "RenderGraphNode");
    __cxa_guard_release(&qword_1EE1BEBF8);
  }

  return &unk_1EE1BEE00;
}

void re::initInfo_RenderGraphNode(re *this, re::IntrospectionBase *a2)
{
  v28[0] = 0xA3C1F00635C716B4;
  v28[1] = "RenderGraphNode";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1BEBF0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BEBF0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::introspect_RenderGraphNodeBase(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "RenderGraphNodeBase";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1BECC0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::StringID>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "name";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BECC8 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::DynamicArray<re::TargetRead>>::get(v13);
      v14 = (*(*v13 + 32))(v13, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "TargetReads";
      *(v14 + 16) = &qword_1EE1BED00;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0xB800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1BECD0 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<re::DynamicArray<re::TargetWrite>>::get(v15);
      v16 = (*(*v15 + 32))(v15, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "TargetWrites";
      *(v16 + 16) = &qword_1EE1BED40;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0xE000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1BECD8 = v16;
      v17 = re::introspectionAllocator(v16);
      re::IntrospectionInfo<re::DynamicArray<re::BufferRead>>::get(v17);
      v18 = (*(*v17 + 32))(v17, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "BufferReads";
      *(v18 + 16) = &qword_1EE1BED80;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6800000004;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1BECE0 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::DynamicArray<re::BufferWrite>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "BufferWrites";
      *(v20 + 16) = &qword_1EE1BEDC0;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x9000000005;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1BECE8 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_size_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "ThreadgroupMemoryLength";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x4800000006;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1BECF0 = v24;
      v25 = re::introspectionAllocator(v24);
      v26 = (*(*v25 + 32))(v25, 16, 8);
      *v26 = 2;
      *(v26 + 8) = 0;
      qword_1EE1BECF8 = v26;
      __cxa_guard_release(&qword_1EE1BEBF0);
    }
  }

  *(this + 2) = 0x10800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1BECC0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v27 = v29;
}

void *re::allocInfo_TargetRead(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC00))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEE90, "TargetRead");
    __cxa_guard_release(&qword_1EE1BEC00);
  }

  return &unk_1EE1BEE90;
}

void re::initInfo_TargetRead(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x10643527A3D5CELL;
  v14[1] = "TargetRead";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BEC08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BEC08);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_RenderGraphTargetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "targetHandle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BEC80 = v9;
      v10 = re::introspectionAllocator(v9);
      Settings = re::introspect_ReadSettings(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "settings";
      *(v12 + 16) = Settings;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BEC88 = v12;
      __cxa_guard_release(&qword_1EE1BEC08);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BEC80;
  *(this + 9) = re::internal::defaultConstruct<re::TargetRead>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TargetRead>;
  *(this + 13) = re::internal::defaultConstructV2<re::TargetRead>;
  *(this + 14) = re::internal::defaultDestructV2<re::TargetRead>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::TargetRead>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 16) = 0;
  *(a3 + 19) = 0;
  *&result = 2;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::TargetRead>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 19) = 0;
  *&result = 2;
  *(a1 + 24) = 2;
  return result;
}

void *re::allocInfo_TargetWrite(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC18))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEF20, "TargetWrite");
    __cxa_guard_release(&qword_1EE1BEC18);
  }

  return &unk_1EE1BEF20;
}

void re::initInfo_TargetWrite(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x1FC226FCD6FE15CLL;
  v14[1] = "TargetWrite";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BEC20, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BEC20);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_RenderGraphTargetHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "targetHandle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BEC90 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_WriteSettings(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "settings";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BEC98 = v12;
      __cxa_guard_release(&qword_1EE1BEC20);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BEC90;
  *(this + 9) = re::internal::defaultConstruct<re::TargetWrite>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::TargetWrite>;
  *(this + 13) = re::internal::defaultConstructV2<re::TargetWrite>;
  *(this + 14) = re::internal::defaultDestructV2<re::TargetWrite>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::TargetWrite>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a3 + 32) = xmmword_1E30474D0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::TargetWrite>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a1 + 32) = xmmword_1E30474D0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  return result;
}

void *re::allocInfo_BufferRead(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BEFB0, "BufferRead");
    __cxa_guard_release(&qword_1EE1BEC30);
  }

  return &unk_1EE1BEFB0;
}

void re::initInfo_BufferRead(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xD20F3D0E03C2CLL;
  v14[1] = "BufferRead";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BEC38, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BEC38);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_RenderGraphBufferHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "bufferHandle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BECA0 = v9;
      v10 = re::introspectionAllocator(v9);
      Settings = re::introspect_ReadSettings(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "settings";
      *(v12 + 16) = Settings;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BECA8 = v12;
      __cxa_guard_release(&qword_1EE1BEC38);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BECA0;
  *(this + 9) = re::internal::defaultConstruct<re::BufferRead>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BufferRead>;
  *(this + 13) = re::internal::defaultConstructV2<re::BufferRead>;
  *(this + 14) = re::internal::defaultDestructV2<re::BufferRead>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::BufferRead>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = -1;
  *(a3 + 16) = 0;
  *(a3 + 19) = 0;
  *&result = 2;
  *(a3 + 24) = 2;
  return result;
}

double re::internal::defaultConstructV2<re::BufferRead>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  *(a1 + 16) = 0;
  *(a1 + 19) = 0;
  *&result = 2;
  *(a1 + 24) = 2;
  return result;
}

void *re::allocInfo_BufferWrite(re *this)
{
  if ((atomic_load_explicit(&qword_1EE1BEC48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BEC48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1BF040, "BufferWrite");
    __cxa_guard_release(&qword_1EE1BEC48);
  }

  return &unk_1EE1BF040;
}

void re::initInfo_BufferWrite(re *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x196FD864BC046BELL;
  v14[1] = "BufferWrite";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1BEC50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1BEC50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_RenderGraphBufferHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "bufferHandle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1BECB0 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_WriteSettings(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "settings";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1BECB8 = v12;
      __cxa_guard_release(&qword_1EE1BEC50);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1BECB0;
  *(this + 9) = re::internal::defaultConstruct<re::BufferWrite>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::BufferWrite>;
  *(this + 13) = re::internal::defaultConstructV2<re::BufferWrite>;
  *(this + 14) = re::internal::defaultDestructV2<re::BufferWrite>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::BufferWrite>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a3 + 32) = xmmword_1E30474D0;
  *(a3 + 48) = 0;
  *(a3 + 52) = 0;
  *(a3 + 56) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::BufferWrite>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1E31038B0;
  result = 0.0;
  *(a1 + 32) = xmmword_1E30474D0;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0;
  *(a1 + 56) = 0;
  return result;
}

void *re::DynamicArray<re::TargetRead>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TargetRead>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TargetRead>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TargetRead>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TargetRead>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 8);
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
        v10 = v8 + 32 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = -1;
          *v11 = *v8;
          v11[1] = *(v8 + 8);
          *(v11 + 1) = *(v8 + 16);
          v8 += 32;
          v11 += 4;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::DynamicArray<re::TargetWrite>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::TargetWrite>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::TargetWrite>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::TargetWrite>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::TargetWrite>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 58)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 64, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 6;
          result = (*(*result + 32))(result, a2 << 6, 16);
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
        v10 = v8 + (v9 << 6);
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = -1;
          *v11 = *v8;
          v11[1] = *(v8 + 8);
          v12 = *(v8 + 16);
          v13 = *(v8 + 48);
          *(v11 + 2) = *(v8 + 32);
          *(v11 + 3) = v13;
          *(v11 + 1) = v12;
          v8 += 64;
          v11 += 8;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::TargetRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::TargetRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::TargetRead>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::TargetRead>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::TargetRead>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetRead>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetRead>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::TargetRead>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = -1;
  v12 = 2;
  re::DynamicArray<re::TargetRead>::add(this, &v10);
  v8 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::TargetRead>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::DynamicArray<re::TargetRead>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::TargetRead>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 32 * v4;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = -1;
        *(v7 + 16) = 0;
        *(v7 + 19) = 0;
        *(v7 + 24) = 2;
        v6 += 32;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetRead>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetRead>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::TargetWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::TargetWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::TargetWrite>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::TargetWrite>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::TargetWrite>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetWrite>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetWrite>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::TargetWrite>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v11 = 0u;
  v10[1] = -1;
  DWORD1(v11) = 1;
  v12 = xmmword_1E30474D0;
  v13 = 0u;
  DWORD2(v13) = 0;
  re::DynamicArray<re::TargetWrite>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::TargetWrite>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::DynamicArray<re::TargetWrite>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::TargetWrite>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 6;
      do
      {
        v7 = v3[4] + v6;
        *v7 = 0;
        *(v7 + 8) = xmmword_1E31038B0;
        *(v7 + 32) = xmmword_1E30474D0;
        *(v7 + 48) = 0;
        *(v7 + 52) = 0;
        *(v7 + 56) = 0;
        v6 += 64;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetWrite>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetWrite>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::TargetWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BufferRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BufferRead>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BufferRead>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BufferRead>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BufferRead>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetRead>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetRead>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BufferRead>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11 = 0;
  v10.n128_u64[0] = 0;
  v10.n128_u64[1] = -1;
  v12 = 2;
  re::DynamicArray<re::TargetRead>::add(this, &v10);
  v8 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::BufferRead>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetRead>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetRead>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetRead>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 32 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 32;
        v11 -= 32;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + 32 * v5;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferRead>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BufferWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BufferWrite>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BufferWrite>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BufferWrite>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::BufferWrite>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::TargetWrite>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::TargetWrite>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BufferWrite>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = *MEMORY[0x1E69E9840];
  v10[0] = 0;
  v11 = 0u;
  v10[1] = -1;
  DWORD1(v11) = 1;
  v12 = xmmword_1E30474D0;
  v13 = 0u;
  DWORD2(v13) = 0;
  re::DynamicArray<re::TargetWrite>::add(this, v10);
  v8 = (*(this + 4) + (*(this + 2) << 6) - 64);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::BufferWrite>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 6);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::TargetWrite>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::TargetWrite>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::TargetWrite>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 6;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 64;
        v11 -= 64;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 6);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  v4 = *a1;
  if (a1[2] == *(*a1 + 24))
  {
    v5 = a1[3];
    v6 = *(v4 + 16);
    if (v5 < v6)
    {
      a1[3] = ++v5;
    }

    if (v6 <= v5)
    {
      return 0;
    }

    else
    {
      return *(v4 + 32) + (v5 << 6);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) DynamicArray elements may not be added or removed during iteration.", "iter->originalVersion == iter->array->version()", "operator()", 316, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BufferWrite>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::ProjectiveMeshShadowBuilder::buildShadowGenerationData(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X4>, uint64_t a4@<X5>, unint64_t a5@<X6>, uint64_t a6@<X7>, unint64_t a7@<X8>)
{
  v11 = a2;
  v301 = *MEMORY[0x1E69E9840];
  v14 = *(a6 + 8);
  v15 = *(a2 + 64);
  v219 = v14;
  v220 = a7;
  if (!v15)
  {
    goto LABEL_167;
  }

  v8 = a5;
  v16 = *(v14 + 112);
  if (v16)
  {
    v17 = *(v16 + 320);
  }

  else
  {
    v17 = 0;
  }

  v218 = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v17, *(*(v14 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v14 + 144) + 16) << 60));
  if ((atomic_load_explicit(&qword_1EE1BF0D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF0D8))
  {
    _MergedGlobals_511 = re::hashString("ProjectiveMeshShadow", v211);
    __cxa_guard_release(&qword_1EE1BF0D8);
  }

  if ((atomic_load_explicit(&qword_1EE1BF0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1BF0E8))
  {
    v7 = _MergedGlobals_511;
    qword_1EE1BF0E0 = ((v7 << 6) + (v7 >> 2) + re::hashString("RenderFrame", v212) - 0x61C8864680B583E9) ^ v7;
    __cxa_guard_release(&qword_1EE1BF0E8);
  }

  v18 = *(*(a6 + 8) + 96);
  if (v18)
  {
    goto LABEL_245;
  }

LABEL_8:
  v19 = &v267;
  v21 = re::WorldOrderedShadows::create((v11 + 48), v292);
  v22 = *&v292[16];
  v240 = *&v292[16];
  v237 = a1;
  v239 = a4;
  v217 = v11;
  if (!*&v292[16])
  {
    goto LABEL_28;
  }

  if (*&v292[16] >= 0x24924924924924AuLL)
  {
    re::internal::assertLog(6, v20, v21, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 112, *&v292[16]);
    _os_crash();
    __break(1u);
    goto LABEL_248;
  }

  v23 = (*(*a4 + 32))(a4, 112 * *&v292[16], 16, v21);
  *(&v240 + 1) = v23;
  if (!v23)
  {
LABEL_248:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_249;
  }

  v25 = v22 - 1;
  if (v22 != 1)
  {
    do
    {
      *v23 = 0;
      *(v23 + 8) = 0;
      v23 += 112;
      --v25;
    }

    while (v25);
  }

  *v23 = 0;
  *(v23 + 8) = 0;
  v9 = *&v292[16];
  if (!*&v292[16])
  {
LABEL_28:
    v22 = (v8 + 80);
    a7 = v8 + 56;
    v229 = *(v8 + 56);
    v226 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(*(v8 + 80), a4);
    goto LABEL_29;
  }

  if (*&v292[16] > 0x2AAAAAAAAAAAAAAuLL)
  {
    goto LABEL_259;
  }

  v7 = 96 * *&v292[16];
  v26 = (*(*a4 + 32))(a4, 96 * *&v292[16], 16);
  if (v26)
  {
    v28 = v26;
    v29 = v26;
    if (v9 != 1)
    {
      bzero(v26, v7 - 96);
      v29 = &v28[v7 - 96];
    }

    v215 = 96 * v9;
    a7 = 0;
    *(v29 + 4) = 0u;
    *(v29 + 5) = 0u;
    *(v29 + 2) = 0u;
    *(v29 + 3) = 0u;
    *v29 = 0u;
    *(v29 + 1) = 0u;
    a1 = 1;
    v19 = *(&v240 + 1);
    do
    {
      v11 = *&v292[16];
      if (*&v292[16] <= a7)
      {
        goto LABEL_239;
      }

      v11 = *&v292[32] + 32 * a7;
      v7 = v237;
      ShadowInfo = re::PersistentShadowState::getShadowInfo(v237, v11);
      v31 = *(ShadowInfo + 176);
      v293[0] = *(ShadowInfo + 160);
      v293[1] = v31;
      v32 = *(ShadowInfo + 208);
      v293[2] = *(ShadowInfo + 192);
      v293[3] = v32;
      v231 = v293[1];
      v234 = v293[0];
      v225 = v32;
      v228 = v293[2];
      _S8 = *(ShadowInfo + 256);
      v8 = *(v11 + 24);
      v34 = re::PersistentShadowState::getShadowInfo(v237, v11);
      if (v9 <= a7)
      {
        goto LABEL_240;
      }

      v36 = *(v34 + 1296);
      v37 = vmulq_f32(v36, v36);
      *&_S2 = v37.f32[2] + vaddv_f32(*v37.f32);
      *v37.f32 = vrsqrte_f32(_S2);
      *v37.f32 = vmul_f32(*v37.f32, vrsqrts_f32(_S2, vmul_f32(*v37.f32, *v37.f32)));
      v37.i32[0] = vmul_f32(*v37.f32, vrsqrts_f32(_S2, vmul_f32(*v37.f32, *v37.f32))).u32[0];
      __asm { FCVT            H2, S8 }

      v42 = &v28[96 * a7];
      *v42 = v234;
      *(v42 + 1) = v231;
      *(v42 + 2) = v228;
      *(v42 + 3) = v225;
      *(v42 + 32) = _S2;
      *(v42 + 33) = v8;
      *(v42 + 5) = vmulq_n_f32(v36, v37.f32[0]);
      re::buildCullingPlanes(v293, v35, v270);
      if (v22 <= a7)
      {
        goto LABEL_241;
      }

      v43 = &v19[7 * a7];
      if (v43 != v270)
      {
        re::DynamicInlineArray<re::PlaneF,6ul>::move(&v19[7 * a7], v270);
        ++*(v43 + 2);
      }

      a7 = a1;
      v44 = v9 > a1;
      a1 = (a1 + 1);
    }

    while (v44);
    v8 = a5;
    v22 = (a5 + 80);
    v11 = *(a5 + 80);
    v262[0] = 0x31EF696315A95E84;
    re::PerFrameAllocatorGPU::allocInternal(v218, v215, 0x10uLL, 0, v270);
    v7 = *&v270[8];
    memcpy((*v270 + *&v270[8]), v28, v215);
    v241 = **&v270[24];
    v244 = 0;
    v245 = v7;
    v246 = 96 * v9;
    v45 = re::MaterialParameterBlock::setBuffer(v11, v262, &v241, &v264);
    v264 = 0;
    if (v244 != -1)
    {
      (off_1F5D11560[v244])(v270, &v241, v45);
    }

    v244 = -1;
    a7 = a5 + 56;
    v229 = *(a5 + 56);
    v226 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v11, a4);
    (*(*a4 + 40))(a4, v28);
    v19 = &v267;
LABEL_29:
    v9 = *&v292[16];
    if (!*&v292[16])
    {
      v7 = *a7;
      v58 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(*v22, a4);
      goto LABEL_42;
    }

    if (*&v292[16] < 0x666666666666667uLL)
    {
      v7 = 40 * *&v292[16];
      v47 = (*(*a4 + 32))(a4, 40 * *&v292[16], 8);
      if (v47)
      {
        v49 = v47;
        v50 = v47;
        if (v9 != 1)
        {
          bzero(v47, v7 - 40);
          v50 = v49 + v7 - 40;
        }

        v8 = 0;
        v11 = 0;
        *(v50 + 4) = 0;
        *v50 = 0u;
        *(v50 + 1) = 0u;
        v19 = v49 + 1;
        while (1)
        {
          a1 = *&v292[16];
          if (*&v292[16] <= v11)
          {
            break;
          }

          v51 = *(*&v292[32] + v8 + 16);
          v293[0] = *(*&v292[32] + v8);
          v293[1] = v51;
          v52 = re::PersistentShadowState::getShadowInfo(v237, v293);
          if (v9 == v11)
          {
            goto LABEL_233;
          }

          v54 = *(v52 + 240);
          v53 = *(v52 + 248);
          v55 = *(v52 + 224);
          *(v19 - 8) = WORD4(v293[1]);
          *(v19 - 8) = v55;
          *(v19 + 1) = v54;
          *(v19 + 2) = v53;
          ++v11;
          v19 = (v19 + 40);
          v8 += 32;
          if (v9 == v11)
          {
            v11 = *v22;
            *&v293[0] = 0x29BCD869CB9AA7DDLL;
            re::PerFrameAllocatorGPU::allocInternal(v218, 40 * v9, 0x10uLL, 0, v287);
            v56 = DWORD2(v287[0]);
            memcpy((*&v287[0] + *(&v287[0] + 1)), v49, 40 * v9);
            *v270 = **(&v287[1] + 1);
            *&v270[24] = 0;
            *&v270[32] = v56;
            *&v270[36] = v7;
            v57 = re::MaterialParameterBlock::setBuffer(v11, v293, v270, v287);
            *&v287[0] = 0;
            if (*&v270[24] != -1)
            {
              (off_1F5D11560[*&v270[24]])(&v241, v270, v57);
            }

            *&v270[24] = -1;
            v7 = *a7;
            v58 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v11, a4);
            (*(*a4 + 40))(a4, v49);
            v8 = a5;
            v19 = &v267;
LABEL_42:
            a7 = *&v292[16];
            v218 = v7;
            v216 = v58;
            if (!*&v292[16])
            {
              v235 = 0;
              goto LABEL_49;
            }

            if (!(*&v292[16] >> 61))
            {
              v60 = (*(*a4 + 32))(a4, 8 * *&v292[16], 8);
              if (v60)
              {
                v62 = v60;
                v63 = v60;
                if (a7 != 1)
                {
                  bzero(v60, 8 * a7 - 8);
                  v63 = &v62[a7 - 1];
                }

                v235 = v62;
                *v63 = 0;
LABEL_49:
                v11 = 0xBF58476D1CE4E5B9;
                v267 = 0uLL;
                v268 = 0;
                re::FixedArray<int>::init<>(&v267, a4, a7);
                memset(v293, 0, 36);
                *(&v293[2] + 4) = 0x7FFFFFFFLL;
                re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v293, a4, 3);
                if (a7)
                {
                  v22 = 0;
                  a1 = v270;
                  v9 = 0x7FFFFFFFLL;
                  v232 = a7;
                  v223 = a4;
                  do
                  {
                    v7 = *&v292[16];
                    if (*&v292[16] <= v22)
                    {
                      goto LABEL_234;
                    }

                    a7 = v11;
                    v64 = *&v292[32] + 32 * v22;
                    v11 = v8;
                    v19 = v237;
                    v7 = re::PersistentShadowState::getShadowInfo(v237, v64);
                    v65 = *(v8 + 72);
                    re::MaterialParameterBlock::setVector4F(v65, "receiverPlane", *v7, *(v7 + 8), &v241);
                    v241 = 0;
                    re::MaterialParameterBlock::setFloat(v65, "receiverDepthNormalization", *(v7 + 16), v294);
                    *v294 = 0;
                    re::MaterialParameterBlock::setVector4F(v65, "floorPlane", *(v7 + 32), *(v7 + 40), &v264);
                    v264 = 0;
                    re::MaterialParameterBlock::setInt(v65, "tileIndex", *(v64 + 24), v263);
                    v263[0] = 0;
                    v66 = *(v7 + 112);
                    *v270 = *(v7 + 96);
                    *&v270[16] = v66;
                    v67 = *(v7 + 144);
                    *&v270[32] = *(v7 + 128);
                    *&v270[48] = v67;
                    re::MaterialParameterBlock::setMatrix4x4F(v65, "tileProj", v270, v262);
                    v262[0] = 0;
                    LODWORD(v287[0]) = *(v11 + 204);
                    *v270 = 0x58F744A8543328D7;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v261);
                    v261[0] = 0;
                    LODWORD(v287[0]) = *(v11 + 228);
                    *v270 = 0x13276C0E66FCCEDLL;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v260);
                    *v260 = 0;
                    LODWORD(v287[0]) = *(v11 + 232);
                    *v270 = 0x76708FF238D5F0A6;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v259);
                    v259[0] = 0;
                    v68 = cos(*(v11 + 248) * 3.14159265 / 180.0);
                    *v287 = v68;
                    *v270 = 0x7DDA5D55C0FC4FA9;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v258);
                    v258[0] = 0;
                    LODWORD(v287[0]) = *(v11 + 252);
                    *v270 = 0x17E9B59A609C84C2;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v257);
                    v257[0] = 0;
                    if (*(v7 + 64))
                    {
                      v69 = 1;
                    }

                    else
                    {
                      v69 = 2;
                    }

                    if (re::internal::shadows::g_enableShadowFlattening)
                    {
                      v70 = v69;
                    }

                    else
                    {
                      v70 = 1;
                    }

                    LODWORD(v287[0]) = v70;
                    *v270 = 0x5FE82A114F627B09;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 7, v256);
                    v256[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 48);
                    *v270 = 0x65BBCF6D7FDD200ALL;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v255);
                    v255[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 52);
                    *v270 = 0x7300C2F63F7BC750;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v254);
                    v254[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 56);
                    *v270 = 0x71A74BC906F47D1BLL;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v253);
                    v253[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 68);
                    *v270 = 0x572BFF15FAD034E6;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v252);
                    v252[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 72);
                    *v270 = 0x27F92942C5FF139DLL;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v251);
                    v251[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 76);
                    *v270 = 0x521049A67D17C4ELL;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v250);
                    v250[0] = 0;
                    LODWORD(v287[0]) = *(v7 + 80);
                    *v270 = 0x99AD6FB8E5505;
                    re::MaterialParameterBlock::setConstant(v65, v270, 4uLL, v287, 1, v249);
                    v249[0] = 0;
                    v247 = 0x3559BD29F3DDB747;
                    re::MaterialParameterBlock::setBinding(v65, &v247, "rendergraph", "MeshShadowMippedReceiverDepthColorTexture", 2, v248);
                    v247 = 0;
                    v248[0] = 0;
                    a4 = v223;
                    v235[v22] = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v65, v223);
                    v8 = *(&v267 + 1);
                    if (*(&v267 + 1) <= v22)
                    {
                      goto LABEL_235;
                    }

                    *(v268 + 4 * v22) = *(v7 + 60);
                    v71 = *(v64 + 16);
                    *v270 = *v64;
                    *&v270[8] = v71;
                    v72 = re::HashTable<re::SceneShadowClusterID,re::PersistentShadowState::ClusterInfo,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::tryGet(v237 + 128, v270);
                    v73 = *(v72 + 16);
                    v8 = a5;
                    v11 = a7;
                    v19 = &v267;
                    if (v73)
                    {
                      v74 = *(v72 + 32);
                      v75 = 16 * v73;
                      do
                      {
                        memset(&v270[8], 0, 20);
                        *&v270[32] = 0;
                        *v270 = v223;
                        re::DynamicArray<int>::setCapacity(v270, 0);
                        ++*&v270[24];
                        memset(v287, 0, 24);
                        v76 = (*v74 ^ (*v74 >> 30)) * a7;
                        re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v293, v74, (0x94D049BB133111EBLL * (v76 ^ (v76 >> 27))) ^ ((0x94D049BB133111EBLL * (v76 ^ (v76 >> 27))) >> 31), v287);
                        if (HIDWORD(v287[0]) == 0x7FFFFFFF)
                        {
                          v77 = re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v293, DWORD2(v287[0]), *&v287[0]);
                          v78 = *v74;
                          *(v77 + 16) = *v270;
                          v79 = v77 + 16;
                          *(v79 - 8) = v78;
                          *(v79 + 8) = *&v270[8];
                          memset(v270, 0, 24);
                          *(v79 + 32) = *&v270[32];
                          *&v270[32] = 0;
                          ++*&v270[24];
                          *(v79 + 24) = 1;
                          ++DWORD2(v293[2]);
                        }

                        else
                        {
                          v79 = *&v293[1] + (HIDWORD(v287[0]) << 6) + 16;
                        }

                        LODWORD(v287[0]) = v22;
                        re::DynamicArray<int>::add(v79, v287);
                        if (*v270 && *&v270[32])
                        {
                          (*(**v270 + 40))(*v270, *&v270[32]);
                        }

                        v74 += 2;
                        v75 -= 16;
                      }

                      while (v75);
                    }

                    v22 = (v22 + 1);
                    a7 = v232;
                  }

                  while (v22 != v232);
                }

                *&v287[0] = *(v8 + 48);
                *(&v287[0] + 1) = a4;
                *&v287[1] = a7;
                *(&v287[1] + 1) = v235;
                v287[2] = v267;
                v80 = v268;
                v268 = 0;
                v267 = 0uLL;
                v81 = *(v8 + 96);
                *&v288 = v80;
                *(&v288 + 1) = v81;
                *v289 = v293[0];
                memset(v293, 0, 24);
                *&v289[16] = *&v293[1];
                v290 = *(&v293[1] + 8);
                *(&v293[1] + 8) = xmmword_1E3058120;
                v291 = 1;
                v82 = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v293);
                if (v267 && *(&v267 + 1))
                {
                  (*(*v267 + 40))(v82);
                }

                v83 = *&v292[16];
                v241 = 0;
                v242 = 0;
                __src = 0;
                re::FixedArray<re::ShadowInfo::BlurInfo>::init<>(&v241, a4, *&v292[16]);
                v19 = v237;
                if (v83)
                {
                  v8 = 0;
                  a7 = 0;
                  v22 = v242;
                  v7 = __src;
                  do
                  {
                    v9 = *&v292[16];
                    if (*&v292[16] <= a7)
                    {
                      goto LABEL_236;
                    }

                    v84 = re::PersistentShadowState::getShadowInfo(v237, *&v292[32] + v8);
                    if (v22 == a7)
                    {
                      goto LABEL_237;
                    }

                    memcpy(v7, (v84 + 272), 0x394uLL);
                    ++a7;
                    v7 += 928;
                    v8 += 32;
                  }

                  while (v83 != a7);
                }

                memset(v293, 0, 24);
                v85 = v241;
                v19 = a5;
                if (v241)
                {
                  v7 = v242;
                  re::FixedArray<re::ShadowInfo::BlurInfo>::init<>(v293, v241, v242);
                  if (*(&v293[0] + 1) == v7)
                  {
                    if (v7)
                    {
                      v87 = __src;
                      memmove(*&v293[1], __src, 928 * v7 - 12);
                      (*(*v85 + 40))(v85, v87);
                    }

                    goto LABEL_81;
                  }

LABEL_253:
                  re::internal::assertLog(4, v86, "assertion failure: '%s' (%s:line %i) Cannot copy from a FixedArray of a different size", "m_size == other.m_size", "copy", 388);
                  _os_crash();
                  __break(1u);
LABEL_254:
                  re::internal::assertLog(6, v157, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, v7);
                  _os_crash();
                  __break(1u);
LABEL_255:
                  re::internal::assertLog(4, v159, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                  _os_crash();
                  __break(1u);
LABEL_256:
                  re::internal::assertLog(4, v88, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
                  _os_crash();
                  __break(1u);
LABEL_257:
                  re::internal::assertLog(4, v92, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
                  _os_crash();
                  __break(1u);
                  goto LABEL_258;
                }

LABEL_81:
                v7 = v270;
                v8 = &v267;
                *v270 = 0;
                *&v270[16] = 0u;
                a7 = v270;
                *&v270[8] = a4;
                *&v270[32] = a4;
                *&v270[40] = 0u;
                *&v270[56] = -1;
                memset(&v270[60], 0, 40);
                *&v270[100] = 0x7FFFFFFFLL;
                re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v270[64], a4, 3);
                memset(v272, 0, 40);
                v271 = 0u;
                *&v272[1] = a4;
                *&v273[4] = xmmword_1E3072DE0;
                *v273 = 1065353216;
                *&v273[20] = 3;
                *&v273[24] = xmmword_1E3072DF0;
                *&v273[40] = 0;
                v273[42] = 1;
                v274 = xmmword_1E3072E00;
                *v275 = 1061158912;
                v275[4] = 1;
                *&v275[8] = xmmword_1E3072E10;
                *&v275[24] = xmmword_1E3072E20;
                *&v275[40] = 0x3DCCCCCD41F00000;
                LODWORD(v276) = 1097877340;
                BYTE4(v276) = 1;
                v277 = xmmword_1E30476B0;
                LOBYTE(v278) = 1;
                *&v279 = 0x3F8000003F2D42C4;
                *(&v279 + 1) = 0x193F800000;
                v280 = xmmword_1E3072E30;
                *&v281 = 1056964608;
                DWORD2(v281) = 0x40000000;
                WORD6(v281) = 256;
                v283 = 0u;
                v284 = 0;
                *&v285 = 0;
                v282 = a4;
                re::DynamicArray<re::EvaluationRegister>::setCapacity(&v282, 0);
                ++v284;
                *(&v285 + 1) = 0;
                v286 = 0u;
                *(&v271 + 1) = v216;
                *&v272[0] = v229;
                *(&v272[0] + 1) = v226;
                *&v271 = v218;
                *v270 = *&v287[0];
                v89 = *&v270[8];
                if (*&v270[8] && *&v270[8] != *(&v287[0] + 1))
                {
                  goto LABEL_256;
                }

                v7 = v287;
                v90 = *&v270[16];
                v91 = *&v270[24];
                *&v270[8] = *(&v287[0] + 1);
                *&v270[16] = v287[1];
                *(&v287[0] + 1) = v89;
                *&v287[1] = v90;
                *(&v287[1] + 1) = v91;
                re::FixedArray<float>::operator=(&v270[32], &v287[2]);
                v93 = *v289;
                *&v270[56] = *(&v288 + 1);
                v94 = *&v270[64];
                if (!*&v270[64] || *&v270[64] == *v289)
                {
                  *&v270[64] = *v289;
                  *v289 = v94;
                  v99 = *&v270[72];
                  *&v270[72] = *&v289[8];
                  *&v289[8] = v99;
                  v100 = *&v270[88];
                  *&v270[88] = v290;
                  v290 = v100;
                  goto LABEL_100;
                }

                if (*&v270[92])
                {
                  if (*&v270[88])
                  {
                    memset_pattern16(*&v270[72], &unk_1E304C660, 4 * *&v270[88]);
                  }

                  v95 = *&v270[96];
                  if (*&v270[96])
                  {
                    v96 = 0;
                    v8 = 0;
                    do
                    {
                      v97 = *&v270[80];
                      v98 = *(*&v270[80] + v96);
                      if (v98 < 0)
                      {
                        *(*&v270[80] + v96) = v98 & 0x7FFFFFFF;
                        re::DynamicArray<unsigned long>::deinit(v97 + v96 + 16);
                        v95 = *&v270[96];
                      }

                      ++v8;
                      v96 += 64;
                    }

                    while (v8 < v95);
                    v93 = *v289;
                  }

                  *&v270[96] = 0;
                  *&v270[92] = 0;
                  *&v270[100] = 0x7FFFFFFF;
                  ++*&v270[104];
                }

                if (v93)
                {
                  if (*&v270[88] < DWORD1(v290))
                  {
                    re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(&v270[64], DWORD1(v290));
                  }

                  re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(&v270[64], v289);
LABEL_100:
                  ++*&v270[104];
                }

                v101 = *&v272[1];
                if (*&v272[1] && *&v272[1] != *&v293[0])
                {
                  goto LABEL_257;
                }

                v102 = *(&v272[1] + 1);
                v103 = *&v272[2];
                v272[1] = v293[0];
                *&v293[0] = v101;
                *(&v293[0] + 1) = v102;
                *&v272[2] = *&v293[1];
                *&v293[1] = v103;
                if (v282)
                {
                  if (*v292)
                  {
                    re::DynamicArray<re::AllocatedShadowHandle>::copy(&v282, v292);
                  }

                  else
                  {
                    *(&v283 + 1) = 0;
                  }

                  ++v284;
                }

                else if (*v292)
                {
                  v282 = *v292;
                  re::DynamicArray<re::EvaluationRegister>::setCapacity(&v282, *&v292[16]);
                  ++v284;
                  re::DynamicArray<re::AllocatedShadowHandle>::copy(&v282, v292);
                }

                v104 = *(a5 + 320);
                v279 = *(a5 + 304);
                v280 = v104;
                v281 = *(a5 + 336);
                v105 = *(a5 + 256);
                *&v275[32] = *(a5 + 240);
                v276 = v105;
                v106 = *(a5 + 288);
                v277 = *(a5 + 272);
                v278 = v106;
                v107 = *(a5 + 192);
                *&v273[32] = *(a5 + 176);
                v274 = v107;
                v108 = *(a5 + 224);
                *v275 = *(a5 + 208);
                *&v275[16] = v108;
                v109 = *(a5 + 160);
                *v273 = *(a5 + 144);
                *&v273[16] = v109;
                v110 = *(&v285 + 1);
                if (!*(&v285 + 1) || *(&v285 + 1) == v239)
                {
                  v111 = v286;
                  *(&v285 + 1) = v239;
                  v286 = v240;
                  v239 = v110;
                  v240 = v111;
                  v112 = "N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE";
                  if (("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x8000000000000000) != 0)
                  {
                    v113 = ("N2re27RenderGraphDataStoreWrapperINS_24MeshShadowGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
                    v114 = 5381;
                    do
                    {
                      v112 = v114;
                      v115 = *v113++;
                      v114 = (33 * v114) ^ v115;
                    }

                    while (v115);
                  }

                  v241 = (qword_1EE1BF0E0 + (v112 << 6) + (v112 >> 2) - 0x61C8864680B583E9) ^ v112;
                  v116 = (*(**(a6 + 40) + 32))(*(a6 + 40), 464, 16);
                  *v116 = &unk_1F5D11598;
                  *(v116 + 16) = *v270;
                  v117 = *&v270[16];
                  *&v270[8] = 0u;
                  *(v116 + 32) = v117;
                  *(v116 + 40) = *&v270[24];
                  *&v270[24] = 0u;
                  v118 = *&v270[48];
                  *(v116 + 56) = *&v270[40];
                  *(v116 + 64) = v118;
                  *&v270[40] = 0;
                  *&v270[48] = 0;
                  *(v116 + 72) = *&v270[56];
                  *(v116 + 112) = 0;
                  *(v116 + 80) = *&v270[64];
                  *&v270[64] = 0u;
                  *(v116 + 96) = *&v270[80];
                  *(v116 + 104) = *&v270[88];
                  *&v270[88] = xmmword_1E3058120;
                  *(v116 + 120) = 1;
                  v119 = v272[0];
                  *(v116 + 128) = v271;
                  *(v116 + 144) = v119;
                  v120 = v272[1];
                  v272[1] = 0u;
                  *(v116 + 160) = v120;
                  *(v116 + 176) = *&v272[2];
                  *&v270[80] = 0;
                  *&v272[2] = 0;
                  *(v116 + 192) = *v273;
                  v121 = *&v273[16];
                  v122 = *&v273[32];
                  v123 = *v275;
                  *(v116 + 240) = v274;
                  *(v116 + 256) = v123;
                  *(v116 + 208) = v121;
                  *(v116 + 224) = v122;
                  v124 = *&v275[16];
                  v125 = *&v275[32];
                  v126 = v277;
                  *(v116 + 304) = v276;
                  *(v116 + 320) = v126;
                  *(v116 + 272) = v124;
                  *(v116 + 288) = v125;
                  v127 = v278;
                  v128 = v279;
                  v129 = v281;
                  *(v116 + 368) = v280;
                  *(v116 + 384) = v129;
                  *(v116 + 336) = v127;
                  *(v116 + 352) = v128;
                  *(v116 + 424) = 0;
                  *(v116 + 400) = v282;
                  v282 = 0;
                  v130 = v283;
                  v283 = 0u;
                  *(v116 + 408) = v130;
                  ++v284;
                  *(v116 + 424) = 1;
                  *(v116 + 432) = v285;
                  v285 = 0u;
                  v131 = *(&v286 + 1);
                  *(v116 + 448) = v286;
                  *(v116 + 456) = v131;
                  v286 = 0uLL;
                  *v294 = v116;
                  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a6 + 96, &v241, v294);
                  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(&v285 + 1);
                  if (v282)
                  {
                    if (v285)
                    {
                      (*(*v282 + 40))(v282, v285);
                    }

                    *&v285 = 0;
                    v283 = 0uLL;
                    v282 = 0;
                    ++v284;
                  }

                  if (*&v272[1])
                  {
                    if (*(&v272[1] + 1))
                    {
                      (*(**&v272[1] + 40))(*&v272[1], *&v272[2]);
                      *(&v272[1] + 1) = 0;
                      *&v272[2] = 0;
                    }

                    *&v272[1] = 0;
                  }

                  v132.n128_f64[0] = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(&v270[64]);
                  if (*&v270[32])
                  {
                    if (*&v270[40])
                    {
                      (*(**&v270[32] + 40))(v132.n128_f64[0]);
                      *&v270[40] = 0;
                      *&v270[48] = 0;
                    }

                    *&v270[32] = 0;
                  }

                  if (*&v270[8] && *&v270[16])
                  {
                    (*(**&v270[8] + 40))(v132);
                  }

                  if (*&v293[0] && *(&v293[0] + 1))
                  {
                    (*(**&v293[0] + 40))(v132);
                  }

                  v133.n128_f64[0] = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v289);
                  if (*&v287[2])
                  {
                    if (*(&v287[2] + 1))
                    {
                      (*(**&v287[2] + 40))(v133.n128_f64[0]);
                      *(&v287[2] + 1) = 0;
                      *&v288 = 0;
                    }

                    *&v287[2] = 0;
                  }

                  if (*(&v287[0] + 1) && *&v287[1])
                  {
                    (*(**(&v287[0] + 1) + 40))(v133);
                  }

                  re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(&v239);
                  v7 = *(a5 + 16);
                  if (!v7)
                  {
LABEL_162:
                    v154 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v292[40]);
                    if (*v292 && *&v292[32])
                    {
                      (*(**v292 + 40))(v154);
                    }

                    a7 = v220;
                    a1 = v237;
                    v11 = v217;
                    goto LABEL_166;
                  }

                  v22 = 0;
                  v9 = "N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE";
                  a1 = 0x7FFFFFFFLL;
                  while (1)
                  {
                    v134 = *(a5 + 32) + 32 * v22;
                    a7 = *(v134 + 24);
                    v241 = a7;
                    if (v7 <= v22)
                    {
                      goto LABEL_238;
                    }

                    v136 = *v134;
                    v135 = *(v134 + 8);
                    v137 = strlen(*v134);
                    if (v137)
                    {
                      MurmurHash3_x64_128(v136, v137, 0, v270);
                      v8 = ((*&v270[8] - 0x61C8864680B583E9 + (*v270 << 6) + (*v270 >> 2)) ^ *v270) - 0x61C8864680B583E9;
                      a7 = v241;
                    }

                    else
                    {
                      v8 = 0x9E3779B97F4A7C17;
                    }

                    v138 = v135 >> 1;
                    *v270 = a7;
                    *&v270[8] = v138;
                    v139 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(&v292[40], v270);
                    if (v139)
                    {
                      v140 = v139;
                      v141 = 0;
                      v142 = *(a3 + 32);
                      v143 = 368 * *(a3 + 16);
                      do
                      {
                        if (*(v142 + 360) == v138)
                        {
                          v141 = v142;
                        }

                        v142 += 368;
                        v143 -= 368;
                      }

                      while (v143);
                      v144 = 0x94D049BB133111EBLL * (((v241 ^ (v241 >> 30)) * v11) ^ (((v241 ^ (v241 >> 30)) * v11) >> 27));
                      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v141 + 264, &v241, v144 ^ (v144 >> 31), v270);
                      if (*&v270[12] == 0x7FFFFFFF)
                      {
                        v145 = 0;
                      }

                      else
                      {
                        v145 = *(v141 + 280) + 72 * *&v270[12] + 16;
                      }

                      memset(v270, 0, 36);
                      *&v270[36] = 0x7FFFFFFFLL;
                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v270, a4, 3);
                      *&v270[48] = 0;
                      memset(v293, 0, 48);
                      DWORD1(v293[2]) = 0x7FFFFFFF;
                      if (v145)
                      {
                        v147 = v145;
                      }

                      else
                      {
                        v147 = v293;
                      }

                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v287, v147);
                      *&v288 = *v140;
                      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v293);
                      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v270, v287);
                      *&v270[48] = v288;
                      v148.n128_f64[0] = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v287);
                      v149 = "N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE";
                      if (("N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE" & 0x8000000000000000) != 0)
                      {
                        v150 = 5381;
                        v151 = ("N2re27RenderGraphDataStoreWrapperINS_32MeshShadowPerSceneGenerationDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
                        do
                        {
                          v149 = v150;
                          v152 = *v151++;
                          v150 = (33 * v150) ^ v152;
                        }

                        while (v152);
                      }

                      *&v287[0] = (((v8 + (_MergedGlobals_511 << 6) + (_MergedGlobals_511 >> 2)) ^ _MergedGlobals_511) - 0x61C8864680B583E9 + (v149 << 6) + (v149 >> 2)) ^ v149;
                      v153 = (*(**(a6 + 40) + 32))(*(a6 + 40), 64, 8, v148);
                      *v153 = &unk_1F5D115D8;
                      *(v153 + 40) = 0;
                      *(v153 + 48) = 0;
                      *(v153 + 8) = *v270;
                      *(v153 + 16) = *&v270[8];
                      *v270 = 0;
                      *&v270[8] = 0;
                      *(v153 + 24) = *&v270[16];
                      *(v153 + 32) = 0;
                      *&v270[16] = 0;
                      *(v153 + 32) = *&v270[24];
                      *(v153 + 40) = *&v270[32];
                      *&v270[24] = xmmword_1E3058120;
                      *(v153 + 56) = *&v270[48];
                      *&v293[0] = v153;
                      re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a6 + 96, v287, v293);
                      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v270);
                    }

                    v22 = (v22 + 1);
                    v7 = *(a5 + 16);
                    if (v7 <= v22)
                    {
                      goto LABEL_162;
                    }
                  }
                }

LABEL_258:
                re::internal::assertLog(4, v92, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || m_allocator == other.m_allocator", "operator=", 296);
                _os_crash();
                __break(1u);
LABEL_259:
                re::internal::assertLog(6, v24, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, v9);
                _os_crash();
                __break(1u);
                goto LABEL_260;
              }

LABEL_252:
              re::internal::assertLog(4, v61, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
              _os_crash();
              __break(1u);
              goto LABEL_253;
            }

LABEL_251:
            re::internal::assertLog(6, v59, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, a7);
            _os_crash();
            __break(1u);
            goto LABEL_252;
          }
        }

        *&v293[0] = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 797;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = v11;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = a1;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_233:
        v241 = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 468;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = v9;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_234:
        v269 = 0;
        v19[5] = 0u;
        v19[6] = 0u;
        v19[3] = 0u;
        v19[4] = 0u;
        v19[2] = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 797;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = v22;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_235:
        v269 = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 468;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = v22;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = v8;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_236:
        *v294 = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v293[0]) = 136315906;
        *(v293 + 4) = "operator[]";
        WORD6(v293[0]) = 1024;
        *(v293 + 14) = 797;
        WORD1(v293[1]) = 2048;
        *(&v293[1] + 4) = a7;
        WORD6(v293[1]) = 2048;
        *(&v293[1] + 14) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_237:
        *v294 = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v293[0]) = 136315906;
        *(v293 + 4) = "operator[]";
        WORD6(v293[0]) = 1024;
        *(v293 + 14) = 468;
        WORD1(v293[1]) = 2048;
        *(&v293[1] + 4) = v22;
        WORD6(v293[1]) = 2048;
        *(&v293[1] + 14) = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_238:
        *&v293[0] = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 789;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = v22;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_239:
        *&v293[0] = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 797;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = a7;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_240:
        *v294 = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v287[0]) = 136315906;
        *(v287 + 4) = "operator[]";
        WORD6(v287[0]) = 1024;
        *(v287 + 14) = 468;
        WORD1(v287[1]) = 2048;
        *(&v287[1] + 4) = a7;
        WORD6(v287[1]) = 2048;
        *(&v287[1] + 14) = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_241:
        v263[0] = 0;
        v288 = 0u;
        *v289 = 0u;
        memset(v287, 0, sizeof(v287));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v294 = 136315906;
        *&v294[4] = "operator[]";
        v295 = 1024;
        v296 = 468;
        v297 = 2048;
        v298 = a7;
        v299 = 2048;
        v300 = v22;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_242:
        *&v293[0] = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v292 = 136315906;
        *&v292[4] = "operator[]";
        *&v292[12] = 1024;
        *&v292[14] = 468;
        *&v292[18] = 2048;
        *&v292[20] = v22;
        *&v292[28] = 2048;
        *&v292[30] = v19;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_243:
        *&v293[0] = 0;
        memset(v270, 0, 80);
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v292 = 136315906;
        *&v292[4] = "operator[]";
        *&v292[12] = 1024;
        *&v292[14] = 468;
        *&v292[18] = 2048;
        *&v292[20] = v22;
        *&v292[28] = 2048;
        *&v292[30] = v7;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_244;
      }

LABEL_250:
      re::internal::assertLog(4, v48, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
      goto LABEL_251;
    }

LABEL_249:
    re::internal::assertLog(6, v46, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v9);
    _os_crash();
    __break(1u);
    goto LABEL_250;
  }

LABEL_260:
  re::internal::assertLog(4, v27, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
  _os_crash();
  __break(1u);
  while (1)
  {
    v210 = v287[0];
    re::StringID::destroyString(v270);
    if (v210)
    {
      goto LABEL_8;
    }

LABEL_166:
    LODWORD(v15) = *(v11 + 64) != 0;
LABEL_167:
    if (*(v11 + 28))
    {
      _ZF = 0;
    }

    else
    {
      _ZF = v15 == 0;
    }

    if (_ZF)
    {
      *a7 = 0;
      return;
    }

    re::WorldOrderedShadows::create(a1 + 80, v287);
    v7 = *&v287[1];
    if (!*&v287[1])
    {
      memset(v270, 0, 36);
      *&v270[36] = 0x7FFFFFFFLL;
      *&v270[48] = *&v287[0];
      memset(v287, 0, 24);
      *&v270[56] = *(v287 + 8);
      ++DWORD2(v287[1]);
      *&v270[80] = v287[2];
      *&v270[96] = v288;
      v287[2] = 0u;
      v288 = 0u;
      v271 = *v289;
      *v289 = xmmword_1E3058120;
      *&v270[72] = 1;
      LODWORD(v272[0]) = 1;
      *(&v272[0] + 1) = 0;
      *(&v272[1] + 8) = 0u;
      goto LABEL_224;
    }

    v265 = 0;
    v264 = 0;
    v266 = 0;
    re::FixedArray<re::Matrix4x4<float>>::init<>(&v264, a4, *&v287[1]);
    if (v7 > 0x2AAAAAAAAAAAAAALL)
    {
      goto LABEL_254;
    }

    v11 = 96 * v7;
    v158 = (*(*a4 + 32))(a4, 96 * v7, 16);
    if (!v158)
    {
      goto LABEL_255;
    }

    v160 = v158;
    v161 = v158;
    v162 = v7 - 1;
    if (v7 != 1)
    {
      v161 = v158;
      do
      {
        *(v161 + 64) = 0uLL;
        *(v161 + 80) = 0uLL;
        *(v161 + 32) = 0uLL;
        *(v161 + 48) = 0uLL;
        *(v161 + 8) = 0;
        *(v161 + 16) = 0;
        *v161 = 0;
        *(v161 + 24) = 0;
        v161 += 96;
        --v162;
      }

      while (v162);
    }

    *(v161 + 64) = 0u;
    *(v161 + 80) = 0u;
    *(v161 + 32) = 0u;
    *(v161 + 48) = 0u;
    *(v161 + 8) = 0;
    *(v161 + 16) = 0;
    *v161 = 0;
    *(v161 + 24) = 0;
    if (*&v287[1])
    {
      v22 = 0;
      a7 = 1;
      v9 = 96;
      do
      {
        v8 = *&v287[2] + 32 * v22;
        v163 = re::PersistentShadowState::getShadowInfo(a1, v8);
        v19 = v265;
        if (v265 <= v22)
        {
          goto LABEL_242;
        }

        v164 = (v266 + (v22 << 6));
        v165 = *(v163 + 1200);
        v166 = *(v163 + 1216);
        v167 = *(v163 + 1248);
        v164[2] = *(v163 + 1232);
        v164[3] = v167;
        *v164 = v165;
        v164[1] = v166;
        if (v7 <= v22)
        {
          goto LABEL_243;
        }

        v168 = v160 + 96 * v22;
        *(v168 + 16) = *(v163 + 1264);
        *(v168 + 20) = *(v163 + 1268);
        *v168 = *(v163 + 1280);
        *(v168 + 24) = *(v8 + 24);
        v169 = *(v163 + 1328);
        v170 = *(v163 + 1344);
        v171 = *(v163 + 1360);
        *(v168 + 32) = *(v163 + 1312);
        *(v168 + 48) = v169;
        *(v168 + 64) = v170;
        *(v168 + 80) = v171;
        v22 = a7;
        v44 = *&v287[1] > a7;
        a7 = (a7 + 1);
      }

      while (v44);
    }

    v172 = [*(v219 + 208) newBufferWithBytes:v266 length:v7 << 6 options:{0, v213, v214}];
    v8 = [*(v219 + 208) newBufferWithBytes:v160 length:v11 options:0];
    v9 = *(a5 + 88);
    if (v9)
    {
      v173 = (v9 + 8);
    }

    v262[0] = 0x26B98E39084D2FA1;
    *v270 = v172;
    *&v270[24] = 0;
    *&v270[32] = 0;
    *&v270[36] = [v172 length];
    v174 = re::MaterialParameterBlock::setBuffer(v9, v262, v270, v293);
    *&v293[0] = 0;
    if (*&v270[24] != -1)
    {
      (off_1F5D11560[*&v270[24]])(v292, v270, v174);
    }

    *&v270[24] = -1;
    v262[0] = 0;
    v261[0] = 0x5A438D3F6E44D7FFLL;
    *v292 = v8;
    *&v292[24] = 0;
    *&v292[32] = 0;
    *&v292[36] = [v8 length];
    v175 = re::MaterialParameterBlock::setBuffer(v9, v261, v292, &v241);
    v241 = 0;
    if (*&v292[24] != -1)
    {
      (off_1F5D11560[*&v292[24]])(v294, v292, v175);
    }

    *&v292[24] = -1;
    v261[0] = 0;
    v176 = cos(*(a5 + 244) * 3.14159265 / 180.0);
    v260[0] = v176;
    v263[0] = 0x7DDA5D55C0FC4FA9;
    v177.n128_f64[0] = re::MaterialParameterBlock::setConstant(v9, v263, 4uLL, v260, 1, v294);
    *v294 = 0;
    if (v9)
    {
      v178 = (v9 + 8);
    }

    if (v8)
    {
    }

    if (v172)
    {
    }

    (*(*a4 + 40))(a4, v160, v177);
    v179 = v264;
    if (v264 && v265)
    {
      v179 = (*(*v264 + 40))();
    }

    memset(v293, 0, 24);
    v236 = v9;
    if (!*&v287[1])
    {
      break;
    }

    v7 = 0;
    v181 = 1;
    a7 = *(&v293[0] + 1);
    v11 = *&v293[1];
    a4 = 96;
    while (1)
    {
      v182 = *&v287[2] + 32 * v7;
      v180 = re::PersistentShadowState::getShadowInfo(a1, v182);
      if (a7 <= v7)
      {
        break;
      }

      v183 = *(v180 + 1816);
      v184 = *(v182 + 24);
      v185 = *(v180 + 1808);
      v186 = *(v180 + 1792);
      v187 = v11 + 96 * v7;
      v188 = *(v180 + 1728);
      v189 = *(v180 + 1744);
      v190 = *(v180 + 1776);
      *(v187 + 32) = *(v180 + 1760);
      *(v187 + 48) = v190;
      *v187 = v188;
      *(v187 + 16) = v189;
      *(v187 + 64) = v186;
      *(v187 + 80) = v185;
      *(v187 + 84) = v184;
      *(v187 + 88) = v183;
      v7 = v181;
      v44 = *&v287[1] > v181++;
      if (!v44)
      {
        v230 = v11;
        v233 = a7;
        goto LABEL_205;
      }
    }

LABEL_244:
    v241 = 0;
    memset(v270, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v292 = 136315906;
    *&v292[4] = "operator[]";
    *&v292[12] = 1024;
    *&v292[14] = 468;
    *&v292[18] = 2048;
    *&v292[20] = v7;
    *&v292[28] = 2048;
    *&v292[30] = a7;
    LODWORD(v214) = 38;
    v213 = v292;
    _os_log_send_and_compose_impl();
    v18 = _os_crash_msg();
    __break(1u);
LABEL_245:
    *v270 = 0xAD90622DE24C6320;
    *&v270[8] = "meshshadow:enableShadow";
    LOBYTE(v287[0]) = 0;
    if (re::DebugSettingsManager::getWithErrorCode<BOOL>(v18, v270, v287))
    {
      re::StringID::destroyString(v270);
      goto LABEL_8;
    }
  }

  v233 = *(&v293[0] + 1);
  v230 = *&v293[1];
LABEL_205:
  v227 = *&v293[0];
  memset(v292, 0, 36);
  *&v292[36] = 0x7FFFFFFFLL;
  v192 = *(a3 + 16);
  if (v192)
  {
    v193 = *(a3 + 32);
    v238 = v193 + 368 * v192;
    do
    {
      v194 = *(v193 + 296);
      if (v194)
      {
        v195 = 0;
        v196 = *(v193 + 280);
        while (1)
        {
          v197 = *v196;
          v196 += 18;
          if (v197 < 0)
          {
            break;
          }

          if (v194 == ++v195)
          {
            LODWORD(v195) = *(v193 + 296);
            break;
          }
        }
      }

      else
      {
        LODWORD(v195) = 0;
      }

LABEL_221:
      while (v195 != v194)
      {
        v198 = *(v193 + 280);
        v199 = *(v198 + 72 * v195 + 8);
        v200 = *(v193 + 360);
        memset(v270, 0, 24);
        v201 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v199 ^ (v199 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v199 ^ (v199 >> 30))) >> 27));
        v202 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v200 ^ (v200 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v200 ^ (v200 >> 30))) >> 27));
        re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(v270, v292, v199, v200, ((v202 ^ (v202 >> 31)) - 0x61C8864680B583E9 + ((v201 ^ (v201 >> 31)) << 6) + ((v201 ^ (v201 >> 31)) >> 2)) ^ v201 ^ (v201 >> 31));
        if (*&v270[12] == 0x7FFFFFFF)
        {
          v203 = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::allocEntry(v292, *&v270[8], *v270);
          *(v203 + 8) = v199;
          *(v203 + 16) = v200;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v203 + 24, v198 + 72 * v195 + 16);
          ++*&v292[40];
        }

        v204 = *(v193 + 296);
        if (v204 <= v195 + 1)
        {
          v204 = v195 + 1;
        }

        while (v204 - 1 != v195)
        {
          LODWORD(v195) = v195 + 1;
          if ((*(*(v193 + 280) + 72 * v195) & 0x80000000) != 0)
          {
            goto LABEL_221;
          }
        }

        LODWORD(v195) = v204;
      }

      v193 += 368;
    }

    while (v193 != v238);
  }

  *v270 = *v292;
  memset(v292, 0, 24);
  *&v270[16] = *&v292[16];
  *&v270[24] = *&v292[24];
  *&v292[24] = xmmword_1E3058120;
  *&v270[40] = 1;
  *&v270[48] = *&v287[0];
  memset(v287, 0, 24);
  *&v270[56] = *(v287 + 8);
  ++DWORD2(v287[1]);
  *&v270[80] = v287[2];
  *&v270[96] = v288;
  v287[2] = 0u;
  v288 = 0u;
  v271 = *v289;
  *v289 = xmmword_1E3058120;
  *&v270[72] = 1;
  LODWORD(v272[0]) = 1;
  *(&v272[0] + 1) = v236;
  *&v272[1] = v227;
  *(&v272[1] + 1) = v233;
  *&v272[2] = v230;
  re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(v292);
  a7 = v220;
LABEL_224:
  v205 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v287[2] + 1);
  if (*&v287[0] && *&v287[2])
  {
    (*(**&v287[0] + 40))(v205);
  }

  v206 = *&v270[48];
  *(a7 + 24) = *&v270[16];
  *a7 = 1;
  *(a7 + 8) = *v270;
  *v270 = 0u;
  *(a7 + 32) = *&v270[24];
  *(a7 + 64) = *&v270[56];
  v207 = *&v270[96];
  *(a7 + 88) = *&v270[80];
  *&v270[24] = xmmword_1E3058120;
  *(a7 + 48) = 1;
  *(a7 + 56) = v206;
  *&v270[16] = 0;
  memset(&v270[48], 0, 24);
  ++*&v270[72];
  *(a7 + 80) = 1;
  *(a7 + 104) = v207;
  memset(&v270[80], 0, 32);
  *(a7 + 120) = v271;
  v271 = xmmword_1E3058120;
  *(a7 + 136) = 1;
  *(a7 + 144) = *(v272 + 8);
  *(v272 + 8) = 0u;
  v208 = *&v272[2];
  *(a7 + 160) = *(&v272[1] + 1);
  *(a7 + 168) = v208;
  *(&v272[1] + 1) = 0;
  *&v272[2] = 0;
  v209 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v270[88]);
  if (*&v270[48])
  {
    if (*&v270[80])
    {
      (*(**&v270[48] + 40))(v209);
    }

    *&v270[80] = 0;
    memset(&v270[48], 0, 24);
    ++*&v270[72];
  }

  re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::deinit(v270);
}

uint64_t *re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(uint64_t a1, re::PersistentShadowState *a2, uint64_t a3, re::MaterialParameterTableBuilder *a4, unint64_t a5, uint64_t a6, unint64_t a7, uint64_t a8)
{
  v208 = *MEMORY[0x1E69E9840];
  v10 = *(a8 + 8);
  v11 = v10[14];
  if (v11)
  {
    v12 = *(v11 + 320);
  }

  else
  {
    v12 = 0;
  }

  result = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v12, *(v10[18] + 24) & 0xFFFFFFFFFFFFFFFLL | (*(v10[18] + 16) << 60));
  v15 = a3;
  if (!*(a3 + 64))
  {
    return result;
  }

  v16 = result;
  v188 = *(a3 + 64);
  if ((atomic_load_explicit(&qword_1EE1BF0F8, memory_order_acquire) & 1) == 0)
  {
    v179 = __cxa_guard_acquire(&qword_1EE1BF0F8);
    v15 = a3;
    if (v179)
    {
      qword_1EE1BF0F0 = re::hashString("ProjectiveMeshShadow", v14);
      __cxa_guard_release(&qword_1EE1BF0F8);
      v15 = a3;
    }
  }

  if ((atomic_load_explicit(&qword_1EE1BF108, memory_order_acquire) & 1) == 0)
  {
    v180 = __cxa_guard_acquire(&qword_1EE1BF108);
    v15 = a3;
    if (v180)
    {
      v181 = v10;
      v182 = qword_1EE1BF0F0;
      v183 = ((v182 << 6) - 0x61C8864680B583E9 + (v182 >> 2) + re::hashString("RenderFrame", v14)) ^ v182;
      v10 = v181;
      qword_1EE1BF100 = v183;
      __cxa_guard_release(&qword_1EE1BF108);
      v15 = a3;
    }
  }

  v190 = a5;
  v186 = v10;
  v187 = v10[12];
  if (v187)
  {
    goto LABEL_188;
  }

  while (1)
  {
    while (1)
    {
      v17 = *(a5 + 40);
      v18 = *(v15 + 64);
      v19 = *(v15 + 136);
      if (!v18)
      {
        goto LABEL_34;
      }

      if ((v18 & 0x8000000000000000) != 0)
      {
        goto LABEL_191;
      }

      v20 = 2 * v18;
      v21 = (*(*a4 + 32))(a4, 2 * v18, 2);
      if (v21)
      {
        break;
      }

LABEL_192:
      re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
LABEL_193:
      v178 = v202[0];
      re::StringID::destroyString(v203);
      v15 = a3;
      if (v178 != 1)
      {
        v90 = 1;
        goto LABEL_66;
      }
    }

    v23 = v21;
    v184 = v16;
    v24 = v21;
    if (v18 != 1)
    {
      bzero(v21, v20 - 2);
      v24 = &v23[v20 / 2 - 1];
    }

    *v24 = 0;
    v25 = a3;
    if (*(a3 + 64))
    {
      a5 = 0;
      v16 = 0;
      do
      {
        v26 = (*(v25 + 80) + 32 * a5);
        v27 = *v26;
        v199 = *v26;
        v28 = *(a7 + 16);
        _H0 = 0;
        if (v28)
        {
          v31 = v26[1];
          v30 = v26[2];
          v32 = *(a7 + 32) + 312;
          v33 = 368 * v28;
          while (*(v32 + 48) != v30)
          {
            v32 += 368;
            v33 -= 368;
            if (!v33)
            {
              goto LABEL_29;
            }
          }

          if (*v32)
          {
            v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
            v35 = *(*(v32 + 8) + 4 * ((v34 ^ (v34 >> 31)) % *(v32 + 24)));
            if (v35 != 0x7FFFFFFF)
            {
              v36 = *(v32 + 16);
              while (*(v36 + 40 * v35 + 8) != v27)
              {
                v35 = *(v36 + 40 * v35) & 0x7FFFFFFF;
                if (v35 == 0x7FFFFFFF)
                {
                  goto LABEL_29;
                }
              }

              v37 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v32, &v199);
              v25 = a3;
              _S0 = *v37;
              if (v31)
              {
                _S0 = *v37 * (1.0 - v37[1]);
              }

              __asm { FCVT            H0, S0 }
            }
          }
        }

LABEL_29:
        if (v18 <= a5)
        {
          goto LABEL_187;
        }

        v23[a5] = _H0;
        a5 = (v16 + 1);
        v16 = a5;
      }

      while (*(v25 + 64) > a5);
    }

    re::PerFrameAllocatorGPU::allocInternal(v184, 2 * v18, 0x10uLL, 0, v202);
    v42 = *&v202[8];
    memcpy((*v202 + *&v202[8]), v23, v20);
    *&v203[0] = **&v202[24];
    DWORD2(v203[1]) = 0;
    *v204 = v42;
    *&v204[4] = v20;
    re::MaterialParameterBlock::setBuffer(v19, "receiverPerFrameParameterArray", v203, v202);
    *v202 = 0;
    if (DWORD2(v203[1]) != -1)
    {
      (off_1F5D11560[DWORD2(v203[1])])(v205, v203);
    }

    DWORD2(v203[1]) = -1;
    (*(*a4 + 40))(a4, v23);
    a5 = v190;
    v15 = a3;
LABEL_34:
    LODWORD(v197) = v17;
    v199 = 0x114714ADE9B09C5FLL;
    v18 = v15;
    re::MaterialParameterBlock::setConstant(v19, &v199, 4uLL, &v197, 1, v205);
    *v205 = 0;
    v43 = *(a5 + 64);
    a5 = re::MaterialParameterBlock::copyCurrentStateAsMaterialParameterTable(v19, a4);
    v44 = *(v18 + 152);
    v45 = *(v18 + 160);
    memset(v205, 0, 24);
    re::FixedArray<re::MeshReceiverPerShadowConstants>::init<>(v205, a4, v44);
    if (*&v205[8] != v44)
    {
      re::internal::assertLog(4, v46, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378);
      _os_crash();
      __break(1u);
LABEL_191:
      re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 2, v18);
      _os_crash();
      __break(1u);
      goto LABEL_192;
    }

    v47 = *&v205[16];
    if (v44)
    {
      memmove(*&v205[16], v45, 96 * v44 - 4);
    }

    v48 = a3;
    if (!*(a3 + 64))
    {
      break;
    }

    v185 = a5;
    a5 = 0;
    v49 = 0;
    v50 = 96;
    v16 = 368;
    v18 = 40;
    while (1)
    {
      v51 = (*(v48 + 80) + 32 * a5);
      v52 = *v51;
      v197 = *v51;
      v53 = *(a7 + 16);
      if (!v53)
      {
        goto LABEL_49;
      }

      v55 = v51[1];
      v54 = v51[2];
      v56 = *(a7 + 32) + 312;
      v57 = 368 * v53;
      while (*(v56 + 48) != v54)
      {
        v56 += 368;
        v57 -= 368;
        if (!v57)
        {
          goto LABEL_49;
        }
      }

      if (*v56 && (v58 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v52 ^ (v52 >> 30))) >> 27)), v59 = *(*(v56 + 8) + 4 * ((v58 ^ (v58 >> 31)) % *(v56 + 24))), v59 != 0x7FFFFFFF))
      {
        v60 = *(v56 + 16);
        while (*(v60 + 40 * v59 + 8) != v52)
        {
          v59 = *(v60 + 40 * v59) & 0x7FFFFFFF;
          if (v59 == 0x7FFFFFFF)
          {
            goto LABEL_49;
          }
        }

        v62 = re::HashTable<unsigned long long,re::RenderGraphTargetHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v56, &v197);
        v48 = a3;
        v61 = *v62;
        if (v55)
        {
          v61 = *v62 * (1.0 - v62[1]);
        }

        v44 = *&v205[8];
      }

      else
      {
LABEL_49:
        v61 = 1.0;
      }

      if (v44 <= a5)
      {
        break;
      }

      v47 = *&v205[16];
      *(*&v205[16] + 96 * a5 + 88) = v61;
      a5 = ++v49;
      if (*(v48 + 64) <= v49)
      {
        a5 = v185;
        goto LABEL_56;
      }
    }

    v199 = 0;
    memset(v204, 0, 48);
    memset(v203, 0, sizeof(v203));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v202 = 136315906;
    *&v202[4] = "operator[]";
    *&v202[12] = 1024;
    *&v202[14] = 468;
    *&v202[18] = 2048;
    *&v202[20] = a5;
    *&v202[28] = 2048;
    *&v202[30] = v44;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_186:
    v199 = 0;
    memset(v204, 0, 48);
    memset(v203, 0, sizeof(v203));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v205 = 136315906;
    *&v205[4] = "operator[]";
    *&v205[12] = 1024;
    *&v205[14] = 789;
    *&v205[18] = 2048;
    *&v205[20] = v50;
    v206 = 2048;
    v207 = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_187:
    *v205 = 0;
    memset(v204, 0, 48);
    memset(v203, 0, sizeof(v203));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v202 = 136315906;
    *&v202[4] = "operator[]";
    *&v202[12] = 1024;
    *&v202[14] = 468;
    *&v202[18] = 2048;
    *&v202[20] = a5;
    *&v202[28] = 2048;
    *&v202[30] = v18;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_188:
    *&v203[0] = 0xAD90622DE24C6320;
    *(&v203[0] + 1) = "meshshadow:enableShadow";
    v202[0] = 0;
    if (!re::DebugSettingsManager::getWithErrorCode<BOOL>(v187, v203, v202))
    {
      goto LABEL_193;
    }

    re::StringID::destroyString(v203);
    v15 = a3;
  }

LABEL_56:
  *v202 = *v205;
  *&v202[8] = v44;
  *&v202[16] = v47;
  *(v203 + 5) = 0;
  *&v203[0] = 0;
  v203[1] = a4;
  *v204 = 0;
  *&v204[36] = xmmword_1E3072DE0;
  *&v204[32] = 1065353216;
  *&v204[52] = 3;
  *&v204[56] = xmmword_1E3072DF0;
  *&v204[72] = 0;
  v204[74] = 1;
  *&v204[80] = xmmword_1E3072E00;
  *&v204[96] = 1061158912;
  v204[100] = 1;
  *&v204[104] = xmmword_1E3072E10;
  *&v204[120] = xmmword_1E3072E20;
  *&v204[136] = 0x3DCCCCCD41F00000;
  *&v204[144] = 1097877340;
  v204[148] = 1;
  *&v204[160] = xmmword_1E30476B0;
  v204[176] = 1;
  *&v204[192] = 0x3F8000003F2D42C4;
  *&v204[200] = 0x193F800000;
  *&v204[208] = xmmword_1E3072E30;
  *&v204[224] = 1056964608;
  *&v204[232] = 0x40000000;
  *&v204[236] = 256;
  *&v204[8] = v43;
  *&v204[16] = a5;
  re::FixedArray<float>::operator=(&v203[1], v202);
  a5 = v190;
  v63 = *(v190 + 288);
  v64 = *(v190 + 320);
  v65 = *(v190 + 336);
  *&v204[192] = *(v190 + 304);
  *&v204[208] = v64;
  *&v204[224] = v65;
  v66 = *(v190 + 224);
  v67 = *(v190 + 256);
  v68 = *(v190 + 272);
  *&v204[128] = *(v190 + 240);
  *&v204[144] = v67;
  *&v204[160] = v68;
  *&v204[176] = v63;
  v69 = *(v190 + 160);
  v70 = *(v190 + 192);
  v71 = *(v190 + 208);
  *&v204[64] = *(v190 + 176);
  *&v204[80] = v70;
  v72 = *(v190 + 152);
  DWORD2(v203[0]) = *(a2 + 7);
  *&v203[0] = __PAIR64__(v188, v72);
  BYTE12(v203[0]) = *(v190 + 185);
  *&v204[96] = v71;
  *&v204[112] = v66;
  *&v204[32] = *(v190 + 144);
  *&v204[48] = v69;
  v73 = "N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE";
  if (("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x8000000000000000) != 0)
  {
    v74 = ("N2re27RenderGraphDataStoreWrapperINS_23MeshShadowRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
    v75 = 5381;
    do
    {
      v73 = v75;
      v76 = *v74++;
      v75 = (33 * v75) ^ v76;
    }

    while (v76);
  }

  *v205 = (qword_1EE1BF100 - 0x61C8864680B583E9 + (v73 << 6) + (v73 >> 2)) ^ v73;
  v77 = (*(**(a8 + 40) + 32))(*(a8 + 40), 288, 16);
  *v77 = &unk_1F5D11618;
  *(v77 + 21) = *(v203 + 5);
  *(v77 + 16) = *&v203[0];
  v78 = v203[1];
  v203[1] = 0uLL;
  *(v77 + 32) = v78;
  *(v77 + 48) = 0;
  *(v77 + 48) = *v204;
  *v204 = 0;
  v79 = *&v204[8];
  v80 = *&v204[24];
  *(v77 + 88) = *&v204[40];
  *(v77 + 72) = v80;
  *(v77 + 56) = v79;
  v81 = *&v204[56];
  v82 = *&v204[72];
  v83 = *&v204[88];
  *(v77 + 152) = *&v204[104];
  *(v77 + 136) = v83;
  *(v77 + 120) = v82;
  *(v77 + 104) = v81;
  v84 = *&v204[120];
  v85 = *&v204[136];
  v86 = *&v204[152];
  *(v77 + 216) = *&v204[168];
  *(v77 + 200) = v86;
  *(v77 + 184) = v85;
  *(v77 + 168) = v84;
  v87 = *&v204[184];
  v88 = *&v204[200];
  v89 = *&v204[216];
  *(v77 + 280) = *&v204[232];
  *(v77 + 264) = v89;
  *(v77 + 248) = v88;
  *(v77 + 232) = v87;
  v199 = v77;
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a8 + 96, v205, &v199);
  if (*&v203[1] && *(&v203[1] + 1))
  {
    (*(**&v203[1] + 40))(*&v203[1], *v204);
  }

  if (*v202 && *&v202[8])
  {
    (*(**v202 + 40))(*v202, *&v202[16]);
  }

  v90 = 0;
LABEL_66:
  memset(v202, 0, 36);
  *&v202[36] = 0x7FFFFFFFLL;
  re::HashTable<re::SceneShadowClusterID,re::internal::shadows::ShadowClusterEntityData,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::init(v202, a4, 3);
  if ((v90 & 1) == 0)
  {
    v18 = *(a5 + 16);
    if (v18)
    {
      v50 = 0;
      v16 = v203;
      do
      {
        if (v18 <= v50)
        {
          goto LABEL_186;
        }

        v92 = *(a5 + 32) + 32 * v50;
        a7 = *(v92 + 24);
        v93 = *v92;
        v94 = *(v92 + 8);
        v95 = strlen(*v92);
        if (v95)
        {
          MurmurHash3_x64_128(v93, v95, 0, v203);
          v96 = (*(&v203[0] + 1) - 0x61C8864680B583E9 + (*&v203[0] << 6) + (*&v203[0] >> 2)) ^ *&v203[0];
        }

        else
        {
          v96 = 0;
        }

        v97 = v94 >> 1;
        *&v203[1] = 0;
        DWORD2(v203[1]) = 0;
        *v204 = 0;
        v203[0] = a4;
        re::DynamicArray<float *>::setCapacity(v203, 0);
        ++DWORD2(v203[1]);
        memset(&v204[16], 0, 20);
        *&v204[40] = 0;
        *&v204[8] = a4;
        re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(&v204[8], 0);
        ++*&v204[32];
        v98 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v97 ^ (v94 >> 31))) ^ ((0xBF58476D1CE4E5B9 * (v97 ^ (v94 >> 31))) >> 27));
        v99 = v98 ^ (v98 >> 31);
        if (*v202)
        {
          v100 = v99 % *&v202[24];
          v101 = *(*&v202[8] + 4 * v100);
          if (v101 != 0x7FFFFFFF)
          {
            while (*(*&v202[16] + 104 * v101 + 8) != v97)
            {
              LODWORD(v101) = *(*&v202[16] + 104 * v101) & 0x7FFFFFFF;
              if (v101 == 0x7FFFFFFF)
              {
                goto LABEL_79;
              }
            }

            v103 = *&v202[16] + 104 * v101 + 16;
            goto LABEL_81;
          }
        }

        else
        {
          LODWORD(v100) = 0;
        }

LABEL_79:
        v102 = re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v202, v100, v99);
        *(v102 + 16) = *&v203[0];
        v103 = v102 + 16;
        *(v102 + 8) = v97;
        *&v203[0] = 0;
        *(v102 + 24) = *(v203 + 8);
        *(v203 + 8) = 0u;
        *(v102 + 40) = 1;
        *(v102 + 48) = *v204;
        *(v102 + 64) = *&v204[16];
        *(v102 + 88) = *&v204[40];
        memset(v204, 0, 32);
        *&v204[40] = 0;
        ++DWORD2(v203[1]);
        ++*&v204[32];
        *(v102 + 80) = 1;
        ++*&v202[40];
LABEL_81:
        re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit(&v204[8]);
        if (*&v203[0] && *v204)
        {
          (*(**&v203[0] + 40))(*&v203[0], *v204);
        }

        *&v203[0] = a7;
        *(&v203[0] + 1) = v94 >> 1;
        v91 = re::HashTable<re::SceneWorldRootId,re::WorldOrderedShadows::Range,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::tryGet(a3 + 88, v203);
        if (v91)
        {
          v104 = v91;
          *&v203[0] = v96;
          re::DynamicArray<re::TransitionCondition *>::add(v103, v203);
          v203[1] = 0u;
          memset(v204, 0, 20);
          *&v203[0] = 0;
          BYTE8(v203[0]) = 0;
          *&v204[20] = 0x7FFFFFFFLL;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v203[1], a4, 3);
          *&v203[0] = *v104;
          BYTE8(v203[0]) = a7 != 0;
          *&v204[32] = v96;
          v105 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a7 ^ (a7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a7 ^ (a7 >> 30))) >> 27));
          v106 = re::HashTable<re::SceneWorldRootId,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::SceneWorldRootId>,re::EqualTo<re::SceneWorldRootId>,true,false>::findEntry<re::SceneWorldRootId>(v205, a3, a7, v97, (v99 - 0x61C8864680B583E9 + ((v105 ^ (v105 >> 31)) << 6) + ((v105 ^ (v105 >> 31)) >> 2)) ^ v105 ^ (v105 >> 31));
          if (*&v205[12] != 0x7FFFFFFF)
          {
            v106 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(&v203[1], *(a3 + 16) + 80 * *&v205[12] + 24);
          }

          v107 = *(v103 + 48);
          v108 = *(v103 + 56);
          if (v108 >= v107)
          {
            v109 = v108 + 1;
            if (v107 < v108 + 1)
            {
              if (*(v103 + 40))
              {
                v110 = 2 * v107;
                _ZF = v107 == 0;
                v111 = 8;
                if (!_ZF)
                {
                  v111 = v110;
                }

                if (v111 <= v109)
                {
                  v112 = v109;
                }

                else
                {
                  v112 = v111;
                }

                re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity((v103 + 40), v112);
              }

              else
              {
                re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity((v103 + 40), v109);
                ++*(v103 + 64);
              }
            }

            v108 = *(v103 + 56);
          }

          v113 = *(v103 + 72) + 72 * v108;
          v114 = *&v203[0];
          *(v113 + 8) = BYTE8(v203[0]);
          *v113 = v114;
          *(v113 + 48) = 0;
          *(v113 + 16) = 0u;
          *(v113 + 32) = 0u;
          *(v113 + 52) = 0x7FFFFFFFLL;
          *(v113 + 16) = *&v203[1];
          *&v203[1] = 0;
          v115 = *(v113 + 24);
          *(v113 + 24) = *(&v203[1] + 1);
          *(&v203[1] + 1) = v115;
          v116 = *(v113 + 32);
          *(v113 + 32) = *v204;
          *v204 = v116;
          LODWORD(v116) = *(v113 + 40);
          *(v113 + 40) = *&v204[8];
          *&v204[8] = v116;
          LODWORD(v116) = *(v113 + 44);
          *(v113 + 44) = *&v204[12];
          *&v204[12] = v116;
          LODWORD(v116) = *(v113 + 48);
          *(v113 + 48) = *&v204[16];
          *&v204[16] = v116;
          LODWORD(v116) = *(v113 + 52);
          *(v113 + 52) = *&v204[20];
          *&v204[20] = v116;
          *(v113 + 64) = *&v204[32];
          ++*(v103 + 56);
          ++*(v103 + 64);
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v203[1]);
        }

        ++v50;
        a5 = v190;
        v18 = *(v190 + 16);
      }

      while (v18 > v50);
    }
  }

  v117 = *&v202[32];
  if (*&v202[32])
  {
    v118 = 0;
    v119 = *&v202[16];
    while (1)
    {
      v120 = *v119;
      v119 += 26;
      if (v120 < 0)
      {
        break;
      }

      if (*&v202[32] == ++v118)
      {
        LODWORD(v118) = *&v202[32];
        break;
      }
    }
  }

  else
  {
    LODWORD(v118) = 0;
  }

  if (v118 != *&v202[32])
  {
    v121 = *&v202[16];
    v192 = *&v202[32];
    v122 = *&v202[32];
    do
    {
      v123 = (v121 + 104 * v118);
      v124 = v123[4];
      if (v124)
      {
        v125 = v123[6];
        v126 = &v125[v124];
        do
        {
          v127 = "N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE";
          if (("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x8000000000000000) != 0)
          {
            v128 = 5381;
            v129 = ("N2re27RenderGraphDataStoreWrapperINS_31MeshShadowPerSceneRenderingDataEEE" & 0x7FFFFFFFFFFFFFFFLL);
            do
            {
              v127 = v128;
              v130 = *v129++;
              v128 = (33 * v128) ^ v130;
            }

            while (v130);
          }

          *&v203[0] = (((*v125 - 0x61C8864680B583E9 + (qword_1EE1BF0F0 << 6) + (qword_1EE1BF0F0 >> 2)) ^ qword_1EE1BF0F0) - 0x61C8864680B583E9 + (v127 << 6) + (v127 >> 2)) ^ v127;
          v131 = re::globalAllocators(v91);
          v132 = (*(*v131[2] + 32))(v131[2], 48, 8);
          v133 = v132;
          *(v132 + 8) = 0;
          v134 = (v132 + 8);
          *v132 = &unk_1F5D11658;
          *(v132 + 40) = 0;
          *(v132 + 16) = 0;
          *(v132 + 24) = 0;
          *(v132 + 32) = 0;
          v135 = v123[7];
          if (v135)
          {
            v136 = v123[9];
            *(v132 + 8) = v135;
            re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity((v132 + 8), v136);
            ++*(v133 + 32);
            v137 = v123[9];
            v138 = *(v133 + 24);
            if (v137 >= v138)
            {
              re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(v134, v123[9]);
              v145 = v123[11];
              v146 = *(v133 + 24);
              v147 = *(v133 + 40);
              if (v146)
              {
                v148 = &v145[9 * v146];
                do
                {
                  v149 = *v145;
                  *(v147 + 8) = *(v145 + 8);
                  *v147 = v149;
                  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v147 + 16, (v145 + 2));
                  *(v147 + 64) = v145[8];
                  v145 += 9;
                  v147 += 72;
                }

                while (v145 != v148);
                v147 = *(v133 + 40);
                v146 = *(v133 + 24);
                v145 = v123[11];
              }

              if (v146 != v137)
              {
                v150 = &v145[9 * v137];
                v151 = 9 * v146;
                v152 = &v145[v151 + 2];
                v153 = v147 + 8 * v151 + 16;
                do
                {
                  v154 = *(v152 - 16);
                  *(v153 - 8) = *(v152 - 8);
                  *(v153 - 16) = v154;
                  v155 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v153, v152);
                  *(v155 + 48) = *(v152 + 48);
                  v156 = v152 + 56;
                  v152 += 72;
                  v153 = v155 + 72;
                }

                while (v156 != v150);
              }
            }

            else
            {
              v139 = *(v133 + 40);
              if (v137)
              {
                v140 = v123[11];
                v141 = &v140[9 * v137];
                do
                {
                  v142 = *v140;
                  *(v139 + 8) = *(v140 + 8);
                  *v139 = v142;
                  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v139 + 16, (v140 + 2));
                  *(v139 + 64) = v140[8];
                  v140 += 9;
                  v139 += 72;
                }

                while (v140 != v141);
                v139 = *(v133 + 40);
                v138 = *(v133 + 24);
              }

              if (v137 != v138)
              {
                v143 = 72 * v138 - 72 * v137;
                v144 = (v139 + 72 * v137 + 16);
                do
                {
                  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v144);
                  v144 += 9;
                  v143 -= 72;
                }

                while (v143);
              }
            }

            *(v133 + 24) = v137;
          }

          *v205 = v133;
          v91 = re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addNew(a8 + 48, v203, v205);
          ++v125;
        }

        while (v125 != v126);
        v122 = *&v202[32];
        v121 = *&v202[16];
        v117 = v192;
      }

      if (v122 <= v118 + 1)
      {
        v157 = v118 + 1;
      }

      else
      {
        v157 = v122;
      }

      while (v157 - 1 != v118)
      {
        LODWORD(v118) = v118 + 1;
        if ((*(v121 + 104 * v118) & 0x80000000) != 0)
        {
          goto LABEL_140;
        }
      }

      LODWORD(v118) = v157;
LABEL_140:
      ;
    }

    while (v118 != v117);
  }

  if (!v187)
  {
    return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v202);
  }

  *&v203[0] = 0x3C62BE4765422600;
  *(&v203[0] + 1) = "meshshadow:visualizeClusters";
  v205[0] = 0;
  v158 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v187, v203, v205);
  v159 = v205[0];
  *v205 = 0x26DCF6608CA13E42;
  *&v205[8] = "meshshadow:visualizeClusterInfo";
  LOBYTE(v199) = 0;
  v160 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v187, v205, &v199);
  v161 = v199;
  v199 = 0x3C62BEC2F3809D42;
  v200 = "meshshadow:visualizeMatrices";
  LOBYTE(v197) = 0;
  v162 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v187, &v199, &v197);
  v163 = v197;
  v197 = 0x572C0E956CDDF93CLL;
  v198 = "meshshadow:visualizePlanes";
  LOBYTE(v195) = 0;
  v164 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v187, &v197, &v195);
  v165 = v195;
  v195 = 0x5A213028C6E74578;
  v196 = "meshshadow:visualizeCullBoundingBoxes";
  v201 = 0;
  v166 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v187, &v195, &v201);
  v167 = v166;
  v168 = v201;
  if (v195)
  {
    if (v195)
    {
    }
  }

  if (v197)
  {
    if (v197)
    {
    }
  }

  if (v199)
  {
    if (v199)
    {
    }
  }

  if (v205[0])
  {
    if (v205[0])
    {
    }
  }

  if (v203[0])
  {
    if (v203[0])
    {
    }
  }

  v169 = v167 == 0;
  v170 = v158 == 0;
  _ZF = v163 && v162 == 0;
  v172 = _ZF;
  v173 = v165 && v164 == 0;
  v174 = v173;
  v175 = v186[10];
  if (!v175)
  {
    return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v202);
  }

  v176 = v170 & v159;
  v177 = v169 & v168;
  if (!v160 && v161 && *(v190 + 104) == 1)
  {
    re::PersistentShadowState::visualizeShadowClusterInfo(a2, v186[10], (v190 + 112), v190 + 144);
    if ((v176 & 1) == 0)
    {
      goto LABEL_174;
    }

LABEL_181:
    re::PersistentShadowState::visualizeShadowClusters(a2, v175);
    if (!v172)
    {
      goto LABEL_182;
    }

LABEL_175:
    re::PersistentShadowState::visualizeShadowMatrices(a2, v175);
    if (!v174)
    {
      goto LABEL_176;
    }

LABEL_183:
    re::PersistentShadowState::visualizeShadowPlanes(a2, v175);
    if ((v177 & 1) == 0)
    {
      return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v202);
    }

LABEL_177:
    re::PersistentShadowState::visualizeCullBoundingBoxes(a2, v175);
    return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v202);
  }

  if (v176)
  {
    goto LABEL_181;
  }

LABEL_174:
  if (v172)
  {
    goto LABEL_175;
  }

LABEL_182:
  if (v174)
  {
    goto LABEL_183;
  }

LABEL_176:
  if (v177)
  {
    goto LABEL_177;
  }

  return re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v202);
}

uint64_t *re::HashTable<unsigned long long,re::ProjectiveMeshShadowBuilder::buildShadowRenderingData(re::PersistentShadowState const&,re::PersistentShadowRenderingData const&,re::PerFrameAllocator &,re::ProjectiveMeshShadowBuilder::Input &,re::MeshShadowPerFrameUpdateData const&,re::DynamicArray<re::MeshShadowPerSceneUpdateData> const&,re::RenderFrame &)::PerUniqueScene,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = a1[2];
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit(v6 + v4 + 56);
          re::DynamicArray<unsigned long>::deinit(v8 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 104;
      }

      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

uint64_t re::ProjectiveMeshShadowBuilder::requiresDebugFont(re::ProjectiveMeshShadowBuilder *this, const re::RenderManager *a2)
{
  if (!this)
  {
    return 0;
  }

  v2 = *(this + 12);
  if (!v2)
  {
    return 0;
  }

  v6[0] = 0x26DCF6608CA13E42;
  v6[1] = "meshshadow:visualizeClusterInfo";
  v7 = 0;
  v3 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v2, v6, &v7);
  v4 = (v3 == 0) & v7;
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  return v4;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + (v5 << 6));
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + (v5 << 6);
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 56) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + (v5 << 6);
}

void re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
      v5 = *v9;
      *v9 = *a1;
      *a1 = v5;
      v6 = *&v9[16];
      *&v9[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v7 = *&v9[24];
      *&v9[24] = *(a1 + 24);
      *(a1 + 24) = v7;
      ++*&v9[40];
      re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v9);
    }
  }

  else
  {
    if (a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = 3;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    for (i = 0; i < v2; ++i)
    {
      v7 = *(a2 + 16);
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<unsigned long long,re::DynamicArray<unsigned int>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24));
        v8 = *(a2 + 16) + v5;
        v9 = *(v8 + 8);
        *(result + 48) = 0;
        *(result + 40) = 0;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 8) = v9;
        *(result + 16) = 0;
        v10 = *(v8 + 24);
        *(result + 16) = *(v8 + 16);
        *(result + 24) = v10;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v11 = *(result + 32);
        *(result + 32) = *(v8 + 32);
        *(v8 + 32) = v11;
        v12 = *(result + 48);
        *(result + 48) = *(v8 + 48);
        *(v8 + 48) = v12;
        ++*(v8 + 40);
        ++*(result + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::FixedArray<re::ShadowInfo::BlurInfo>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x469EE58469EE59)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 928, a3);
    _os_crash();
    __break(1u);
    goto LABEL_13;
  }

  v5 = (*(*a2 + 32))(a2, 928 * a3, 16);
  a1[2] = v5;
  if (!v5)
  {
LABEL_13:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v7 = v5;
  v8 = a3 - 1;
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      bzero(v7, 0x3A0uLL);
      v10 = 0;
      do
      {
        v11 = &v7[v10];
        v10 += 14;
        v11[7] = 0uLL;
        v11[8] = 0uLL;
        v11[5] = 0uLL;
        v11[6] = 0uLL;
        v11[3] = 0uLL;
        v11[4] = 0uLL;
        v11[10] = 0uLL;
        v11[11] = 0uLL;
        v11[12] = 0uLL;
        v11[13] = 0uLL;
      }

      while (v10 != 56);
      v7 += 58;
    }
  }

  bzero(v7, 0x3A0uLL);
  v12 = v7 + 10;
  v13 = 896;
  do
  {
    *(v12 - 3) = 0uLL;
    *(v12 - 2) = 0uLL;
    *(v12 - 5) = 0uLL;
    *(v12 - 4) = 0uLL;
    *(v12 - 7) = 0uLL;
    *(v12 - 6) = 0uLL;
    *v12 = 0uLL;
    v12[1] = 0uLL;
    v12[2] = 0uLL;
    v12[3] = 0uLL;
    v12 += 14;
    v13 -= 224;
  }

  while (v13);
}

uint64_t re::FixedArray<re::MeshReceiverPerShadowConstants>::init<>(uint64_t result, uint64_t a2, unint64_t a3)
{
  *result = a2;
  *(result + 8) = a3;
  if (!a3)
  {
    return result;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v4 = result;
  result = (*(*a2 + 32))(a2, 96 * a3, 16);
  *(v4 + 16) = result;
  if (!result)
  {
LABEL_9:
    re::internal::assertLog(4, v5, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v6 = a3 - 1;
  if (a3 != 1)
  {
    do
    {
      *(result + 88) = 0;
      *result = 0uLL;
      *(result + 16) = 0uLL;
      *(result + 32) = 0uLL;
      *(result + 48) = 0uLL;
      *(result + 64) = 0uLL;
      *(result + 78) = 0;
      result += 96;
      --v6;
    }

    while (v6);
  }

  *(result + 88) = 0;
  *result = 0u;
  *(result + 16) = 0u;
  *(result + 32) = 0u;
  *(result + 48) = 0u;
  *(result + 64) = 0u;
  *(result + 78) = 0;
  return result;
}

void *re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 72, a2);
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
        v10 = &v8[9 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          *(v11 + 8) = *(v8 + 8);
          *v11 = v12;
          *(v11 + 2) = 0u;
          *(v11 + 12) = 0;
          *(v11 + 1) = 0u;
          *(v11 + 52) = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v11 + 2, v8 + 2);
          v11[8] = v8[8];
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v8 + 2);
          v8 += 9;
          v11 += 9;
        }

        while (v8 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::MeshShadowPerSceneRenderingData::PerWorld>::deinit(uint64_t a1)
{
  result = *a1;
  if (result)
  {
    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = *(a1 + 16);
      if (v4)
      {
        v5 = 72 * v4;
        v6 = (v3 + 16);
        do
        {
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v6);
          v6 += 9;
          v5 -= 72;
        }

        while (v5);
        result = *a1;
        v3 = *(a1 + 32);
      }

      result = (*(*result + 40))(result, v3);
    }

    *(a1 + 32) = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *a1 = 0;
    ++*(a1 + 24);
  }

  return result;
}

uint64_t re::FixedArray<re::MeshShadowDepthPrepassReceiverParametersCPU>::deinit(uint64_t *a1)
{
  result = *a1;
  if (result)
  {
    v3 = a1[1];
    if (v3)
    {
      v4 = a1[2] + 112 * v3;
      v5 = a1[2];
      do
      {
        *v5 = 0;
        ++*(v5 + 8);
        v5 += 112;
      }

      while (v5 != v4);
      result = (*(*result + 40))(result);
      a1[1] = 0;
      a1[2] = 0;
    }

    *a1 = 0;
  }

  return result;
}