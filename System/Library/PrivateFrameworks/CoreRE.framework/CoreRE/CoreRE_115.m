uint64_t re::AssetHandle::blockUntilLoaded<re::RenderGraphAsset>(re::RenderGraphAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::RenderGraphAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = re::AssetHandle::assetInfo(a1);
      if (v6[17])
      {
        v7 = v6[18];
      }

      else
      {
        v7 = v6 + 137;
      }

      v8 = 136315138;
      v9 = v7;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v8, 0xCu);
    }
  }

  return v3;
}

re::DynamicString *re::DynamicArray<re::RenderGraphFileProvider>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::RenderGraphFileProvider>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  *v5 = *a2;
  result = re::DynamicString::DynamicString((v5 + 8), (a2 + 8));
  *(v5 + 40) = *(a2 + 40);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void *re::DynamicArray<re::RenderGraphFileProvider>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::RenderGraphFileProvider>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::AssetHandle::loadedAsset<re::RenderGraphAsset>(re::RenderGraphAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::RenderGraphAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

void *re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x50uLL))
        {
          v2 = 80 * a2;
          result = (*(*result + 32))(result, 80 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 80, a2);
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
        v10 = 80 * v9;
        v11 = v7;
        do
        {
          *v11 = 0;
          v11[1] = 0;
          v11[2] = 0;
          v11[1] = *(v8 + 8);
          *(v8 + 8) = 0;
          v12 = *v11;
          *v11 = 0;
          *v11 = *v8;
          *v8 = v12;
          v13 = v11[2];
          v11[2] = *(v8 + 16);
          *(v8 + 16) = v13;
          *(v11 + 5) = 0u;
          *(v11 + 3) = 0u;
          v11[3] = *(v8 + 24);
          *(v8 + 24) = 0;
          v11[6] = *(v8 + 48);
          *(v8 + 48) = 0;
          v15 = v11[4];
          v14 = v11[5];
          v16 = *(v8 + 40);
          v11[4] = *(v8 + 32);
          v11[5] = v16;
          *(v8 + 32) = v15;
          *(v8 + 40) = v14;
          v17 = *(v8 + 56);
          *(v11 + 72) = *(v8 + 72);
          *(v11 + 7) = v17;
          re::DynamicString::deinit((v8 + 24));
          re::AssetHandle::~AssetHandle(v8);
          v8 += 80;
          v11 += 10;
          v10 -= 80;
        }

        while (v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

__n128 std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *,re::ecs2::RenderGraphFileProviderEntry *>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    do
    {
      re::AssetHandle::operator=(a3, v5);
      re::DynamicString::operator=((a3 + 24), (v5 + 24));
      result = *(v5 + 56);
      *(a3 + 72) = *(v5 + 72);
      *(a3 + 56) = result;
      v5 += 80;
      a3 += 80;
    }

    while (v5 != a2);
  }

  return result;
}

uint64_t anonymous namespace::setCameraViewDescriptorData(_anonymous_namespace_ *this, re::RenderManager *a2, re::CameraView *a3, re::CameraMultiView *a4, const re::ecs2::CameraViewDescriptor *a5, re::Allocator *a6)
{
  v88 = *MEMORY[0x1E69E9840];
  v9 = *(a4 + 26);
  v10 = *(a4 + 28);
  v11 = *(a4 + 25);
  v12 = *(a4 + 27);
  v13 = *(a4 + 68);
  v14 = *(a4 + 69);
  v15 = *(a4 + 70);
  v16 = *(a4 + 71);
  v17 = *(a4 + 18);
  *(a2 + 695) = 0;
  *(a2 + 346) = 0;
  *(a2 + 617) = 0;
  *(a2 + 42) = *(a4 + 3);
  *(a2 + 694) = *(a4 + 31);
  *(a2 + 172) = *(a4 + 16);
  if (*(a4 + 24))
  {
    v18 = 1;
  }

  else
  {
    v18 = 4;
  }

  *(a2 + 178) = v18;
  *(a2 + 294) = v17;
  *(a2 + 697) = v9;
  *(a2 + 704) = v10;
  *(a2 + 696) = v12 ^ 1;
  *(a2 + 703) = v11;
  *(a2 + 308) = *(a4 + 29);
  *(a2 + 1172) = *(a4 + 320);
  *(a2 + 1173) = (*(this + 319) | *(a4 + 321)) & 1;
  *(a2 + 1174) = *(a4 + 322);
  re::FunctionBase<24ul,void ()(re::mtl::CommandBuffer const&)>::operator=<24ul>(a2 + 1184, a4 + 328);
  *(a2 + 698) = *(a4 + 32);
  if (v15 || v16 != 7)
  {
    *(a2 + 716) = 1;
    *(a2 + 732) = v14;
    *(a2 + 717) = v13;
    *(a2 + 718) = v13;
    *(a2 + 722) = v15;
    *(a2 + 719) = v16;
    *(a2 + 724) = 1;
    *(a2 + 725) = v13;
    *(a2 + 726) = v13;
    *(a2 + 730) = v15;
    *(a2 + 727) = v16;
  }

  if (*(a4 + 200))
  {
    *(a3 + 3104) = *(a4 + 200);
    re::CameraView::operator=(a3, a2);
    re::CameraView::operator=(a3 + 1552, a2);
    v19 = 0;
    v60 = (a4 + 80);
    v61 = a4 + 120;
    v58 = a4 + 432;
    v59 = a4 + 368;
    v20 = 1;
    do
    {
      v63 = v20;
      v21 = a3 + 1552 * v19;
      if (*&v61[40 * v19 + 16])
      {
        v22 = &v61[40 * v19];
      }

      else
      {
        v22 = v60;
      }

      re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(v68, v22);
      re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(v21 + 78, v69);
      if (v69)
      {
        v23 = v70;
        v24 = v69 << 6;
        do
        {
          re::DynamicString::DynamicString(&v71, v23);
          re::DynamicString::DynamicString(&v74[17], (v23 + 32));
          if (v72)
          {
            v25 = *&v74[1];
          }

          else
          {
            v25 = v73;
          }

          if (v74[25])
          {
            v26 = v75;
          }

          else
          {
            v26 = &v74[26];
          }

          re::DynamicString::DynamicString(&v64, v25, a5);
          re::DynamicString::DynamicString(&v66, v26, a5);
          v27.n128_f64[0] = re::DynamicArray<re::CameraView::PickupScopeLane>::add((v21 + 624), &v64);
          if (v66)
          {
            if (BYTE8(v66))
            {
              (*(*v66 + 40))(v27.n128_f64[0]);
            }

            v27 = 0uLL;
            v66 = 0u;
            v67 = 0u;
          }

          if (v64 && (v65 & 1) != 0)
          {
            (*(*v64 + 40))(v27);
          }

          if (*&v74[17])
          {
            if (v74[25])
            {
              (*(**&v74[17] + 40))(v27);
            }

            v27 = 0uLL;
            *&v74[17] = 0u;
            v75 = 0u;
          }

          if (v71 && (v72 & 1) != 0)
          {
            (*(*v71 + 40))(v27);
          }

          v23 = (v23 + 64);
          v24 -= 64;
        }

        while (v24);
      }

      *(v21 + 292) = *(&qword_1E306DD40 + v19);
      v28 = &v59[32 * v19];
      if ((*v28 & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v28 + 1) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(v28 + 2) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
      {
        v29 = vmulq_f32(*(v28 + 1), *(v28 + 1));
        v30 = vaddv_f32(vadd_f32(*v29.i8, *&vextq_s8(v29, v29, 8uLL)));
        if (v30 == 1.0 || fabsf(v30 + -1.0) <= 0.00001)
        {
          v31 = *(v28 + 1);
          *v74 = *v28;
          *&v74[16] = v31;
          if (v21[1248])
          {
            v32 = *v28;
            *(v21 + 80) = *(v28 + 1);
            *(v21 + 79) = v32;
          }

          else
          {
            v21[1248] = 1;
            *(v21 + 79) = *v74;
            *(v21 + 80) = *&v74[16];
          }
        }
      }

      v33 = &v58[240 * v19];
      if (fabsf(*(v33 + 1)) >= 0.00001)
      {
        LOBYTE(v71) = 1;
        v34 = *(v33 + 3);
        v75 = *(v33 + 2);
        v76 = v34;
        v77 = *(v33 + 32);
        v35 = *(v33 + 1);
        *&v74[1] = *v33;
        *&v74[17] = v35;
        v78 = v33[80];
        if (v78 == 1)
        {
          v36 = *(v33 + 7);
          v79 = *(v33 + 6);
          v80 = v36;
          v37 = *(v33 + 9);
          v81 = *(v33 + 8);
          v82 = v37;
        }

        v83 = v33[160];
        if (v83 == 1)
        {
          v38 = *(v33 + 12);
          v84 = *(v33 + 11);
          v85 = v38;
          v39 = *(v33 + 14);
          v86 = *(v33 + 13);
          v87 = v39;
        }

        re::Optional<re::Projection>::operator=((v21 + 1296), &v71);
      }

      result = re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v68);
      v20 = 0;
      v19 = 1;
    }

    while ((v63 & 1) != 0);
  }

  else
  {
    v41 = 120;
    if (!*(a4 + 17))
    {
      v41 = 80;
    }

    re::DynamicArray<re::CameraView::PickupScopeLane>::DynamicArray(v68, (a4 + v41));
    re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a2 + 78, v69);
    if (v69)
    {
      v42 = v70;
      v43 = v69 << 6;
      do
      {
        re::DynamicString::DynamicString(&v71, v42);
        re::DynamicString::DynamicString(&v74[17], (v42 + 32));
        if (v72)
        {
          v44 = *&v74[1];
        }

        else
        {
          v44 = v73;
        }

        if (v74[25])
        {
          v45 = v75;
        }

        else
        {
          v45 = &v74[26];
        }

        re::DynamicString::DynamicString(&v64, v44, a5);
        re::DynamicString::DynamicString(&v66, v45, a5);
        v46.n128_f64[0] = re::DynamicArray<re::CameraView::PickupScopeLane>::add(a2 + 624, &v64);
        if (v66)
        {
          if (BYTE8(v66))
          {
            (*(*v66 + 40))(v46.n128_f64[0]);
          }

          v46 = 0uLL;
          v66 = 0u;
          v67 = 0u;
        }

        if (v64 && (v65 & 1) != 0)
        {
          (*(*v64 + 40))(v46);
        }

        if (*&v74[17])
        {
          if (v74[25])
          {
            (*(**&v74[17] + 40))(v46);
          }

          v46 = 0uLL;
          *&v74[17] = 0u;
          v75 = 0u;
        }

        if (v71 && (v72 & 1) != 0)
        {
          (*(*v71 + 40))(v46);
        }

        v42 = (v42 + 64);
        v43 -= 64;
      }

      while (v43);
    }

    *(a2 + 292) = 0;
    if ((*(a4 + 92) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a4 + 93) & 0x7FFFFFFFu) <= 0x7F7FFFFF && (*(a4 + 94) & 0x7FFFFFFFu) <= 0x7F7FFFFF)
    {
      v47 = vmulq_f32(*(a4 + 24), *(a4 + 24));
      v48 = vaddv_f32(vadd_f32(*v47.i8, *&vextq_s8(v47, v47, 8uLL)));
      if (v48 == 1.0 || fabsf(v48 + -1.0) <= 0.00001)
      {
        v49 = *(a4 + 24);
        *v74 = *(a4 + 23);
        *&v74[16] = v49;
        if (*(a2 + 1248))
        {
          v50 = *(a4 + 23);
          *(a2 + 80) = *(a4 + 24);
          *(a2 + 79) = v50;
        }

        else
        {
          *(a2 + 1248) = 1;
          *(a2 + 79) = *v74;
          *(a2 + 80) = *&v74[16];
        }
      }
    }

    if (fabsf(*(a4 + 109)) >= 0.00001)
    {
      v51 = *(a4 + 29);
      v52 = *(a4 + 30);
      v53 = *(a4 + 27);
      *&v74[17] = *(a4 + 28);
      v75 = v51;
      v76 = v52;
      LOBYTE(v71) = 1;
      v77 = *(a4 + 248);
      *&v74[1] = v53;
      v78 = *(a4 + 512);
      if (v78 == 1)
      {
        v54 = *(a4 + 34);
        v79 = *(a4 + 33);
        v80 = v54;
        v55 = *(a4 + 36);
        v81 = *(a4 + 35);
        v82 = v55;
      }

      v83 = *(a4 + 592);
      if (v83 == 1)
      {
        v56 = *(a4 + 39);
        v84 = *(a4 + 38);
        v85 = v56;
        v57 = *(a4 + 41);
        v86 = *(a4 + 40);
        v87 = v57;
      }

      re::Optional<re::Projection>::operator=(a2 + 1296, &v71);
    }

    return re::DynamicArray<re::ecs2::ScopeLanePair>::deinit(v68);
  }

  return result;
}

uint64_t re::DynamicArray<re::CameraMultiView>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::CameraMultiView>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 3120 * v4;
  v6 = 2;
  result = v5;
  v8 = a2;
  do
  {
    v9 = re::CameraView::CameraView(result, v8);
    v8 += 1552;
    result = v9 + 1552;
    --v6;
  }

  while (v6);
  *(v5 + 3104) = *(a2 + 3104);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

void anonymous namespace::buildOneCameraView<re::ecs2::PerspectiveCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::PerspectiveCameraComponent *,re::ecs2::CameraViewDescriptorsComponent *,re::DynamicArray<re::CameraView> &,re::DynamicArray<re::CameraMultiView> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry> const&,re::Allocator *,re::ecs2::Entity *,re::RenderFrameWorkloadPatch *)::{lambda(re::CameraView&,re::ecs2::PerspectiveCameraComponent*,re::ecs2::CameraViewport const*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, float *a3, _OWORD *a4)
{
  re::ecs2::PerspectiveCameraComponent::calculateProjection(a3, &v32, 1.0);
  v8 = v35;
  *(a2 + 848) = v34;
  *(a2 + 864) = v8;
  *(a2 + 880) = v36;
  v9 = v33;
  *(a2 + 816) = v32;
  *(a2 + 832) = v9;
  if (*(a2 + 896))
  {
    if ((v37 & 1) == 0)
    {
      *(a2 + 896) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 896) = 1;
  }

  v10 = v39;
  *(a2 + 912) = v38;
  *(a2 + 928) = v10;
  v11 = v41;
  *(a2 + 944) = v40;
  *(a2 + 960) = v11;
LABEL_7:
  if (*(a2 + 976))
  {
    if ((v42 & 1) == 0)
    {
      *(a2 + 976) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 976) = 1;
  }

  v12 = v44;
  *(a2 + 992) = v43;
  *(a2 + 1008) = v12;
  v13 = v46;
  *(a2 + 1024) = v45;
  *(a2 + 1040) = v13;
LABEL_13:
  *(a2 + 1056) = *a4;
  re::ecs2::PerspectiveCameraComponent::calculateProjection(a3, &v32, 1.0);
  v14 = v35;
  *(a2 + 96) = v34;
  *(a2 + 112) = v14;
  *(a2 + 128) = v36;
  v15 = v33;
  *(a2 + 64) = v32;
  *(a2 + 80) = v15;
  if (*(a2 + 144))
  {
    if (v37)
    {
      v16 = v39;
      *(a2 + 160) = v38;
      *(a2 + 176) = v16;
      v17 = v41;
      *(a2 + 192) = v40;
      *(a2 + 208) = v17;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *(a2 + 144) = 0;
    }
  }

  else if (v37)
  {
    v18 = 1;
    *(a2 + 144) = 1;
    v19 = v39;
    *(a2 + 160) = v38;
    *(a2 + 176) = v19;
    v20 = v41;
    *(a2 + 192) = v40;
    *(a2 + 208) = v20;
  }

  else
  {
    v18 = 0;
  }

  if (*(a2 + 224))
  {
    if (v42)
    {
      v21 = v44;
      *(a2 + 240) = v43;
      *(a2 + 256) = v21;
      v22 = v46;
      *(a2 + 272) = v45;
      *(a2 + 288) = v22;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *(a2 + 224) = 0;
    }
  }

  else if (v42)
  {
    v23 = 1;
    *(a2 + 224) = 1;
    v24 = v44;
    *(a2 + 240) = v43;
    *(a2 + 256) = v24;
    v25 = v46;
    *(a2 + 272) = v45;
    *(a2 + 288) = v25;
  }

  else
  {
    v23 = 0;
  }

  *(a2 + 1072) = xmmword_1E3063230;
  v26 = *(a2 + 112);
  *(a2 + 368) = *(a2 + 96);
  *(a2 + 384) = v26;
  *(a2 + 400) = *(a2 + 128);
  v27 = *(a2 + 80);
  *(a2 + 336) = *(a2 + 64);
  *(a2 + 352) = v27;
  if (*(a2 + 416))
  {
    if ((v18 & 1) == 0)
    {
      *(a2 + 416) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a2 + 416) = 1;
  }

  v28 = *(a2 + 176);
  *(a2 + 432) = *(a2 + 160);
  *(a2 + 448) = v28;
  v29 = *(a2 + 208);
  *(a2 + 464) = *(a2 + 192);
  *(a2 + 480) = v29;
LABEL_33:
  if ((*(a2 + 496) & 1) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_39;
    }

    *(a2 + 496) = 1;
LABEL_38:
    v30 = *(a2 + 256);
    *(a2 + 512) = *(a2 + 240);
    *(a2 + 528) = v30;
    v31 = *(a2 + 288);
    *(a2 + 544) = *(a2 + 272);
    *(a2 + 560) = v31;
    goto LABEL_39;
  }

  if (v23)
  {
    goto LABEL_38;
  }

  *(a2 + 496) = 0;
LABEL_39:
  *(a2 + 736) = **(a1 + 16);
}

uint64_t re::DynamicArray<re::CameraView>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::CameraView>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  result = re::CameraView::CameraView(*(this + 4) + 1552 * v4, a2);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

double re::DynamicArray<re::CameraView::PickupScopeLane>::add(uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*a1)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::CameraView::PickupScopeLane>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + (v5 << 6);
  result = 0.0;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = a2[3];
  v13 = a2[1];
  *v11 = *a2;
  *a2 = 0;
  v14 = a2[2];
  a2[3] = 0;
  v16 = *(v11 + 8);
  v15 = *(v11 + 16);
  *(v11 + 8) = v13;
  *(v11 + 16) = v14;
  a2[1] = v16;
  a2[2] = v15;
  *(v11 + 32) = 0u;
  *(v11 + 48) = 0u;
  *(v11 + 56) = a2[7];
  v17 = a2[5];
  *(v11 + 32) = a2[4];
  a2[4] = 0;
  v18 = a2[6];
  a2[7] = 0;
  v20 = *(v11 + 40);
  v19 = *(v11 + 48);
  *(v11 + 40) = v17;
  *(v11 + 48) = v18;
  a2[5] = v20;
  a2[6] = v19;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void anonymous namespace::buildOneCameraView<re::ecs2::OrthographicCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::OrthographicCameraComponent *,re::ecs2::CameraViewDescriptorsComponent *,re::DynamicArray<re::CameraView> &,re::DynamicArray<re::CameraMultiView> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry> const&,re::Allocator *,re::ecs2::Entity *,re::RenderFrameWorkloadPatch *)::{lambda(re::CameraView&,re::ecs2::OrthographicCameraComponent*,re::ecs2::CameraViewport const*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, float *a3, _OWORD *a4)
{
  re::ecs2::OrthographicCameraComponent::calculateProjection(a3, &v32, 1.0);
  v8 = v35;
  *(a2 + 848) = v34;
  *(a2 + 864) = v8;
  *(a2 + 880) = v36;
  v9 = v33;
  *(a2 + 816) = v32;
  *(a2 + 832) = v9;
  if (*(a2 + 896))
  {
    if ((v37 & 1) == 0)
    {
      *(a2 + 896) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v37 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 896) = 1;
  }

  v10 = v39;
  *(a2 + 912) = v38;
  *(a2 + 928) = v10;
  v11 = v41;
  *(a2 + 944) = v40;
  *(a2 + 960) = v11;
LABEL_7:
  if (*(a2 + 976))
  {
    if ((v42 & 1) == 0)
    {
      *(a2 + 976) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v42 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 976) = 1;
  }

  v12 = v44;
  *(a2 + 992) = v43;
  *(a2 + 1008) = v12;
  v13 = v46;
  *(a2 + 1024) = v45;
  *(a2 + 1040) = v13;
LABEL_13:
  *(a2 + 1056) = *a4;
  re::ecs2::OrthographicCameraComponent::calculateProjection(a3, &v32, 1.0);
  v14 = v35;
  *(a2 + 96) = v34;
  *(a2 + 112) = v14;
  *(a2 + 128) = v36;
  v15 = v33;
  *(a2 + 64) = v32;
  *(a2 + 80) = v15;
  if (*(a2 + 144))
  {
    if (v37)
    {
      v16 = v39;
      *(a2 + 160) = v38;
      *(a2 + 176) = v16;
      v17 = v41;
      *(a2 + 192) = v40;
      *(a2 + 208) = v17;
      v18 = 1;
    }

    else
    {
      v18 = 0;
      *(a2 + 144) = 0;
    }
  }

  else if (v37)
  {
    v18 = 1;
    *(a2 + 144) = 1;
    v19 = v39;
    *(a2 + 160) = v38;
    *(a2 + 176) = v19;
    v20 = v41;
    *(a2 + 192) = v40;
    *(a2 + 208) = v20;
  }

  else
  {
    v18 = 0;
  }

  if (*(a2 + 224))
  {
    if (v42)
    {
      v21 = v44;
      *(a2 + 240) = v43;
      *(a2 + 256) = v21;
      v22 = v46;
      *(a2 + 272) = v45;
      *(a2 + 288) = v22;
      v23 = 1;
    }

    else
    {
      v23 = 0;
      *(a2 + 224) = 0;
    }
  }

  else if (v42)
  {
    v23 = 1;
    *(a2 + 224) = 1;
    v24 = v44;
    *(a2 + 240) = v43;
    *(a2 + 256) = v24;
    v25 = v46;
    *(a2 + 272) = v45;
    *(a2 + 288) = v25;
  }

  else
  {
    v23 = 0;
  }

  *(a2 + 1072) = xmmword_1E3063230;
  v26 = *(a2 + 112);
  *(a2 + 368) = *(a2 + 96);
  *(a2 + 384) = v26;
  *(a2 + 400) = *(a2 + 128);
  v27 = *(a2 + 80);
  *(a2 + 336) = *(a2 + 64);
  *(a2 + 352) = v27;
  if (*(a2 + 416))
  {
    if ((v18 & 1) == 0)
    {
      *(a2 + 416) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((v18 & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a2 + 416) = 1;
  }

  v28 = *(a2 + 176);
  *(a2 + 432) = *(a2 + 160);
  *(a2 + 448) = v28;
  v29 = *(a2 + 208);
  *(a2 + 464) = *(a2 + 192);
  *(a2 + 480) = v29;
LABEL_33:
  if ((*(a2 + 496) & 1) == 0)
  {
    if ((v23 & 1) == 0)
    {
      goto LABEL_39;
    }

    *(a2 + 496) = 1;
LABEL_38:
    v30 = *(a2 + 256);
    *(a2 + 512) = *(a2 + 240);
    *(a2 + 528) = v30;
    v31 = *(a2 + 288);
    *(a2 + 544) = *(a2 + 272);
    *(a2 + 560) = v31;
    goto LABEL_39;
  }

  if (v23)
  {
    goto LABEL_38;
  }

  *(a2 + 496) = 0;
LABEL_39:
  *(a2 + 736) = **(a1 + 16);
}

void anonymous namespace::buildOneCameraView<re::ecs2::CustomMatrixCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CustomMatrixCameraComponent *,re::ecs2::CameraViewDescriptorsComponent *,re::DynamicArray<re::CameraView> &,re::DynamicArray<re::CameraMultiView> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::CameraViewDescriptor> &,re::DynamicArray<re::ecs2::RenderGraphFileProviderEntry> const&,re::Allocator *,re::ecs2::Entity *,re::RenderFrameWorkloadPatch *)::{lambda(re::CameraView&,re::ecs2::CustomMatrixCameraComponent*,re::ecs2::CameraViewport const*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, uint64_t a3, _OWORD *a4, uint64_t a5)
{
  re::ecs2::CustomMatrixCameraComponent::calculateProjection(a3, 0, &v34);
  v10 = v37;
  *(a2 + 848) = v36;
  *(a2 + 864) = v10;
  *(a2 + 880) = v38;
  v11 = v35;
  *(a2 + 816) = v34;
  *(a2 + 832) = v11;
  if (*(a2 + 896))
  {
    if ((v39 & 1) == 0)
    {
      *(a2 + 896) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v39 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a2 + 896) = 1;
  }

  v12 = v41;
  *(a2 + 912) = v40;
  *(a2 + 928) = v12;
  v13 = v43;
  *(a2 + 944) = v42;
  *(a2 + 960) = v13;
LABEL_7:
  if (*(a2 + 976))
  {
    if ((v44 & 1) == 0)
    {
      *(a2 + 976) = 0;
      goto LABEL_13;
    }
  }

  else
  {
    if ((v44 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 976) = 1;
  }

  v14 = v46;
  *(a2 + 992) = v45;
  *(a2 + 1008) = v14;
  v15 = v48;
  *(a2 + 1024) = v47;
  *(a2 + 1040) = v15;
LABEL_13:
  *(a2 + 1056) = *a4;
  re::ecs2::CustomMatrixCameraComponent::calculateProjection(a3, a5, &v34);
  v16 = v37;
  *(a2 + 96) = v36;
  *(a2 + 112) = v16;
  *(a2 + 128) = v38;
  v17 = v35;
  *(a2 + 64) = v34;
  *(a2 + 80) = v17;
  if (*(a2 + 144))
  {
    if (v39)
    {
      v18 = v41;
      *(a2 + 160) = v40;
      *(a2 + 176) = v18;
      v19 = v43;
      *(a2 + 192) = v42;
      *(a2 + 208) = v19;
      v20 = 1;
    }

    else
    {
      v20 = 0;
      *(a2 + 144) = 0;
    }
  }

  else if (v39)
  {
    v20 = 1;
    *(a2 + 144) = 1;
    v21 = v41;
    *(a2 + 160) = v40;
    *(a2 + 176) = v21;
    v22 = v43;
    *(a2 + 192) = v42;
    *(a2 + 208) = v22;
  }

  else
  {
    v20 = 0;
  }

  if (*(a2 + 224))
  {
    if (v44)
    {
      v23 = v46;
      *(a2 + 240) = v45;
      *(a2 + 256) = v23;
      v24 = v48;
      *(a2 + 272) = v47;
      *(a2 + 288) = v24;
      v25 = 1;
    }

    else
    {
      v25 = 0;
      *(a2 + 224) = 0;
    }
  }

  else if (v44)
  {
    v25 = 1;
    *(a2 + 224) = 1;
    v26 = v46;
    *(a2 + 240) = v45;
    *(a2 + 256) = v26;
    v27 = v48;
    *(a2 + 272) = v47;
    *(a2 + 288) = v27;
  }

  else
  {
    v25 = 0;
  }

  *(a2 + 1072) = xmmword_1E3063230;
  v28 = *(a2 + 112);
  *(a2 + 368) = *(a2 + 96);
  *(a2 + 384) = v28;
  *(a2 + 400) = *(a2 + 128);
  v29 = *(a2 + 80);
  *(a2 + 336) = *(a2 + 64);
  *(a2 + 352) = v29;
  if (*(a2 + 416))
  {
    if ((v20 & 1) == 0)
    {
      *(a2 + 416) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((v20 & 1) == 0)
    {
      goto LABEL_33;
    }

    *(a2 + 416) = 1;
  }

  v30 = *(a2 + 176);
  *(a2 + 432) = *(a2 + 160);
  *(a2 + 448) = v30;
  v31 = *(a2 + 208);
  *(a2 + 464) = *(a2 + 192);
  *(a2 + 480) = v31;
LABEL_33:
  if ((*(a2 + 496) & 1) == 0)
  {
    if ((v25 & 1) == 0)
    {
      goto LABEL_39;
    }

    *(a2 + 496) = 1;
LABEL_38:
    v32 = *(a2 + 256);
    *(a2 + 512) = *(a2 + 240);
    *(a2 + 528) = v32;
    v33 = *(a2 + 288);
    *(a2 + 544) = *(a2 + 272);
    *(a2 + 560) = v33;
    goto LABEL_39;
  }

  if (v25)
  {
    goto LABEL_38;
  }

  *(a2 + 496) = 0;
LABEL_39:
  *(a2 + 736) = **(a1 + 16);
}

double anonymous namespace::updateOneViewPerFrameData<re::ecs2::PerspectiveCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CameraViewDescriptorsComponent *,re::ecs2::PerspectiveCameraComponent *,re::CameraView *,re::CameraMultiView *)::{lambda(re::CameraView&,re::ecs2::PerspectiveCameraComponent*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, const re::ecs2::Entity *a3)
{
  if (*(a1 + 1248) == 1)
  {
    re::RenderCamera::computeInverseTransform((a1 + 1264), &v121);
    v6 = v122;
    *(a1 + 752) = v121;
    *(a1 + 768) = v6;
    v7 = v124;
    *(a1 + 784) = v123;
    *(a1 + 800) = v7;
    re::RenderCamera::computeLocalTransform((a1 + 1264), &v121);
    v8 = (v121.f32[0] + v122.f32[1]) + v123.f32[2];
    if (v8 >= 0.0)
    {
      v34 = sqrtf(v8 + 1.0);
      v35 = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).f32[0];
      *&v13 = (v122.f32[2] - v123.f32[1]) * v38;
      v14 = (v123.f32[0] - v121.f32[2]) * v38;
      v15 = (v121.f32[1] - v122.f32[0]) * v38;
      v16 = v35 * 0.25;
    }

    else if (v121.f32[0] < v122.f32[1] || v121.f32[0] < v123.f32[2])
    {
      v39 = sqrtf(((1.0 - v121.f32[0]) - v122.f32[1]) + v123.f32[2]);
      *&v40 = v39 + v39;
      v41 = vrecpe_f32(v40);
      v42 = vmul_f32(v41, vrecps_f32(v40, v41));
      v43 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
      v44 = (v121.f32[2] + v123.f32[0]) * v43;
      v45 = (v122.f32[2] + v123.f32[1]) * v43;
      v46 = *&v40 * 0.25;
      v47 = (v121.f32[1] - v122.f32[0]) * v43;
      v48 = sqrtf(v122.f32[1] + ((1.0 - v121.f32[0]) - v123.f32[2]));
      *&v49 = v48 + v48;
      v50 = vrecpe_f32(v49);
      v51 = vmul_f32(v50, vrecps_f32(v49, v50));
      v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
      v53 = *&v49 * 0.25;
      v54 = (v122.f32[2] + v123.f32[1]) * v52;
      v16 = (v123.f32[0] - v121.f32[2]) * v52;
      if (v122.f32[1] >= v123.f32[2])
      {
        *&v13 = (v121.f32[1] + v122.f32[0]) * v52;
      }

      else
      {
        *&v13 = v44;
      }

      if (v122.f32[1] >= v123.f32[2])
      {
        v14 = v53;
      }

      else
      {
        v14 = v45;
      }

      if (v122.f32[1] >= v123.f32[2])
      {
        v15 = v54;
      }

      else
      {
        v15 = v46;
      }

      if (v122.f32[1] < v123.f32[2])
      {
        v16 = v47;
      }
    }

    else
    {
      v9 = sqrtf(v121.f32[0] + ((1.0 - v122.f32[1]) - v123.f32[2]));
      *&v10 = v9 + v9;
      v11 = vrecpe_f32(v10);
      v12 = vmul_f32(v11, vrecps_f32(v10, v11));
      v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
      *&v13 = *&v10 * 0.25;
      v14 = (v121.f32[1] + v122.f32[0]) * v12.f32[0];
      v15 = (v121.f32[2] + v123.f32[0]) * v12.f32[0];
      v16 = (v122.f32[2] - v123.f32[1]) * v12.f32[0];
    }

    *(&v13 + 1) = v14;
    *(&v13 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
    *(a1 + 32) = v124;
    *(a1 + 48) = v13;
  }

  else
  {
    re::ecs2::PerspectiveCameraComponent::calculateWorldPose(a2, 0, &v121);
    v17 = vnegq_f32(v122);
    v18 = vnegq_f32(v121);
    v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v20 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v122), v19, v121);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v122), v22, v19);
    v24 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v22, v122, 3), v121), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    v22.f32[0] = v17.f32[0] + v17.f32[0];
    v25 = (v17.f32[0] + v17.f32[0]) * v17.f32[0];
    v26 = vmuls_lane_f32(v17.f32[1] + v17.f32[1], *v17.f32, 1);
    v27 = vmuls_lane_f32(v17.f32[2] + v17.f32[2], v17, 2);
    v28 = vmuls_lane_f32(v17.f32[0] + v17.f32[0], *v17.f32, 1);
    v29 = vmuls_lane_f32(v17.f32[0] + v17.f32[0], v17, 2);
    v17.f32[0] = vmuls_lane_f32(v17.f32[1] + v17.f32[1], v17, 2);
    v22.f32[0] = vmuls_lane_f32(v22.f32[0], v122, 3);
    v19.f32[0] = vmuls_lane_f32(v17.f32[1] + v17.f32[1], v122, 3);
    v30 = vmuls_lane_f32(v17.f32[2] + v17.f32[2], v122, 3);
    HIDWORD(v31) = 0;
    *&v31 = 1.0 - (v26 + v27);
    *(&v31 + 1) = v28 + v30;
    v23.i32[3] = 0;
    *(&v31 + 2) = v29 - v19.f32[0];
    HIDWORD(v32) = 0;
    *&v32 = v28 - v30;
    *(&v32 + 1) = 1.0 - (v25 + v27);
    *(&v32 + 2) = v17.f32[0] + v22.f32[0];
    *v23.i32 = v29 + v19.f32[0];
    *&v23.i32[1] = v17.f32[0] - v22.f32[0];
    *&v23.i32[2] = 1.0 - (v25 + v26);
    v24.i32[3] = 1.0;
    *(a1 + 752) = v31;
    *(a1 + 768) = v32;
    *(a1 + 784) = v23;
    *(a1 + 800) = v24;
    re::ecs2::PerspectiveCameraComponent::calculateWorldPose(a2, a3, &v121);
    v33 = v122;
    *(a1 + 32) = v121;
    *(a1 + 48) = v33;
  }

  v55 = *(a1 + 48);
  *(a1 + 304) = *(a1 + 32);
  *(a1 + 320) = v55;
  if (*(a1 + 1296) == 1)
  {
    v56 = *(a1 + 1328);
    v57 = *(a1 + 1360);
    *(a1 + 96) = *(a1 + 1344);
    *(a1 + 112) = v57;
    *(a1 + 128) = *(a1 + 1376);
    *(a1 + 64) = *(a1 + 1312);
    *(a1 + 80) = v56;
    v58 = *(a1 + 1392);
    if (*(a1 + 144))
    {
      if (v58)
      {
        v59 = *(a1 + 1424);
        *(a1 + 160) = *(a1 + 1408);
        *(a1 + 176) = v59;
        v60 = *(a1 + 1456);
        *(a1 + 192) = *(a1 + 1440);
        *(a1 + 208) = v60;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        *(a1 + 144) = 0;
      }
    }

    else if (v58)
    {
      v61 = 1;
      *(a1 + 144) = 1;
      v80 = *(a1 + 1424);
      *(a1 + 160) = *(a1 + 1408);
      *(a1 + 176) = v80;
      v81 = *(a1 + 1456);
      *(a1 + 192) = *(a1 + 1440);
      *(a1 + 208) = v81;
    }

    else
    {
      v61 = 0;
    }

    if (*(a1 + 224))
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        *(a1 + 224) = 0;
        goto LABEL_42;
      }
    }

    else
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        goto LABEL_42;
      }

      *(a1 + 224) = 1;
    }

    v91 = *(a1 + 1504);
    *(a1 + 240) = *(a1 + 1488);
    *(a1 + 256) = v91;
    v92 = *(a1 + 1536);
    *(a1 + 272) = *(a1 + 1520);
    *(a1 + 288) = v92;
LABEL_42:
    if (v58)
    {
      *(a1 + 1088) = *(a1 + 1408);
      *(a1 + 1104) = *(a1 + 1424);
      *(a1 + 1120) = *(a1 + 1440);
      *(a1 + 1136) = *(a1 + 1456);
      if ((v61 & 1) == 0)
      {
LABEL_44:
        re::Projection::cullingProjectionMatrix((a1 + 64), &v113);
        goto LABEL_47;
      }
    }

    else
    {
      re::Projection::cullingProjectionMatrix((a1 + 1312), &v121);
      v93 = *(a1 + 144);
      v94 = v122;
      *(a1 + 1088) = v121;
      *(a1 + 1104) = v94;
      v95 = v124;
      *(a1 + 1120) = v123;
      *(a1 + 1136) = v95;
      if ((v93 & 1) == 0)
      {
        goto LABEL_44;
      }
    }

    v96 = *(a1 + 176);
    v113 = *(a1 + 160);
    v114 = v96;
    v97 = *(a1 + 208);
    v115 = *(a1 + 192);
    v116 = v97;
LABEL_47:
    re::RenderCamera::computeInverseTransform((a1 + 32), &v109);
    v98 = 0;
    v99 = v113;
    v100 = v114;
    v101 = v115;
    v102 = v116;
    v117 = v109;
    v118 = v110;
    v119 = v111;
    v120 = v112;
    do
    {
      *(&v121 + v98) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v99, COERCE_FLOAT(*(&v117 + v98))), v100, *(&v117 + v98), 1), v101, *(&v117 + v98), 2), v102, *(&v117 + v98), 3);
      v98 += 16;
    }

    while (v98 != 64);
    result = *v121.i64;
    v103 = v122;
    v104 = v123;
    v105 = v124;
    v106 = (a2 + ((a3 == 2) << 6));
    v106[3] = v121;
    v106[4] = v103;
    v106[5] = v104;
    v106[6] = v105;
    return result;
  }

  if (*(a2 + 176) == 1)
  {
    *(a1 + 92) = 1;
    *(a1 + 364) = 1;
    v107 = *(a2 + 192);
    v108 = vmulq_n_f32(v107, -v107.f32[3]);
    re::RenderCamera::computeInverseTransform((a1 + 32), &v121);
    v62 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v107.f32[0]), v122, *v107.f32, 1), v123, v107, 2);
    v63 = vmulq_f32(v62, v62);
    *&v64 = v63.f32[2] + vaddv_f32(*v63.f32);
    *v63.f32 = vrsqrte_f32(v64);
    *v63.f32 = vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32)));
    v65 = vmulq_n_f32(v62, vmul_f32(*v63.f32, vrsqrts_f32(v64, vmul_f32(*v63.f32, *v63.f32))).f32[0]);
    v66 = vaddq_f32(v124, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v108.f32[0]), v122, *v108.f32, 1), v123, v108, 2));
    v67 = vmulq_f32(v65, vdivq_f32(v66, vdupq_laneq_s32(v66, 3)));
    v65.f32[3] = -(v67.f32[2] + vaddv_f32(*v67.f32));
    *(a1 + 96) = v65;
    re::RenderCamera::computeInverseTransform((a1 + 304), &v121);
    v68 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v107.f32[0]), v122, *v107.f32, 1), v123, v107, 2);
    v69 = vmulq_f32(v68, v68);
    *&v70 = v69.f32[2] + vaddv_f32(*v69.f32);
    *v69.f32 = vrsqrte_f32(v70);
    *v69.f32 = vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32)));
    v71 = vmulq_n_f32(v68, vmul_f32(*v69.f32, vrsqrts_f32(v70, vmul_f32(*v69.f32, *v69.f32))).f32[0]);
    v72 = vaddq_f32(v124, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v121, v108.f32[0]), v122, *v108.f32, 1), v123, v108, 2));
    v73 = vmulq_f32(v71, vdivq_f32(v72, vdupq_laneq_s32(v72, 3)));
    v71.f32[3] = -(v73.f32[2] + vaddv_f32(*v73.f32));
    *(a1 + 368) = v71;
  }

  v74 = (a2 + ((a3 == 2) << 6));
  v75 = v74[3];
  v76 = v74[4];
  v77 = v74[5];
  *(a1 + 1136) = v74[6];
  *(a1 + 1120) = v77;
  *(a1 + 1104) = v76;
  *(a1 + 1088) = v75;
  if (*(a1 + 144) == 1)
  {
    v78 = *(a1 + 176);
    v113 = *(a1 + 160);
    v114 = v78;
    v79 = *(a1 + 208);
    v115 = *(a1 + 192);
    v116 = v79;
  }

  else
  {
    re::Projection::cullingProjectionMatrix((a1 + 64), &v113);
  }

  re::RenderCamera::computeInverseTransform((a1 + 32), &v109);
  v82 = 0;
  v83 = v113;
  v84 = v114;
  v85 = v115;
  v86 = v116;
  v117 = v109;
  v118 = v110;
  v119 = v111;
  v120 = v112;
  do
  {
    *(&v121 + v82) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v83, COERCE_FLOAT(*(&v117 + v82))), v84, *(&v117 + v82), 1), v85, *(&v117 + v82), 2), v86, *(&v117 + v82), 3);
    v82 += 16;
  }

  while (v82 != 64);
  result = *v121.i64;
  v88 = v122;
  v89 = v123;
  v90 = v124;
  v74[3] = v121;
  v74[4] = v88;
  v74[5] = v89;
  v74[6] = v90;
  return result;
}

uint64_t re::DynamicInlineArray<re::Vector4<float>,2ul>::ensureCapacity(void *a1, uint64_t a2)
{
  if (*a1 <= 1uLL)
  {
    return 1;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

double anonymous namespace::updateOneViewPerFrameData<re::ecs2::OrthographicCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CameraViewDescriptorsComponent *,re::ecs2::OrthographicCameraComponent *,re::CameraView *,re::CameraMultiView *)::{lambda(re::CameraView&,re::ecs2::OrthographicCameraComponent*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, const re::ecs2::Entity *a3)
{
  if (*(a1 + 1248) == 1)
  {
    re::RenderCamera::computeInverseTransform((a1 + 1264), &v107);
    v6 = v108;
    *(a1 + 752) = v107;
    *(a1 + 768) = v6;
    v7 = v110;
    *(a1 + 784) = v109;
    *(a1 + 800) = v7;
    re::RenderCamera::computeLocalTransform((a1 + 1264), &v107);
    v8 = (v107.f32[0] + v108.f32[1]) + *(&v109 + 2);
    if (v8 >= 0.0)
    {
      v34 = sqrtf(v8 + 1.0);
      v35 = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).f32[0];
      *&v13 = (v108.f32[2] - *(&v109 + 1)) * v38;
      v14 = (*&v109 - v107.f32[2]) * v38;
      v15 = (v107.f32[1] - v108.f32[0]) * v38;
      v16 = v35 * 0.25;
    }

    else if (v107.f32[0] < v108.f32[1] || v107.f32[0] < *(&v109 + 2))
    {
      v39 = sqrtf(((1.0 - v107.f32[0]) - v108.f32[1]) + *(&v109 + 2));
      *&v40 = v39 + v39;
      v41 = vrecpe_f32(v40);
      v42 = vmul_f32(v41, vrecps_f32(v40, v41));
      v43 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
      v44 = (v107.f32[2] + *&v109) * v43;
      v45 = (v108.f32[2] + *(&v109 + 1)) * v43;
      v46 = *&v40 * 0.25;
      v47 = (v107.f32[1] - v108.f32[0]) * v43;
      v48 = sqrtf(v108.f32[1] + ((1.0 - v107.f32[0]) - *(&v109 + 2)));
      *&v49 = v48 + v48;
      v50 = vrecpe_f32(v49);
      v51 = vmul_f32(v50, vrecps_f32(v49, v50));
      v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
      v53 = *&v49 * 0.25;
      v54 = (v108.f32[2] + *(&v109 + 1)) * v52;
      v16 = (*&v109 - v107.f32[2]) * v52;
      if (v108.f32[1] >= *(&v109 + 2))
      {
        *&v13 = (v107.f32[1] + v108.f32[0]) * v52;
      }

      else
      {
        *&v13 = v44;
      }

      if (v108.f32[1] >= *(&v109 + 2))
      {
        v14 = v53;
      }

      else
      {
        v14 = v45;
      }

      if (v108.f32[1] >= *(&v109 + 2))
      {
        v15 = v54;
      }

      else
      {
        v15 = v46;
      }

      if (v108.f32[1] < *(&v109 + 2))
      {
        v16 = v47;
      }
    }

    else
    {
      v9 = sqrtf(v107.f32[0] + ((1.0 - v108.f32[1]) - *(&v109 + 2)));
      *&v10 = v9 + v9;
      v11 = vrecpe_f32(v10);
      v12 = vmul_f32(v11, vrecps_f32(v10, v11));
      v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
      *&v13 = *&v10 * 0.25;
      v14 = (v107.f32[1] + v108.f32[0]) * v12.f32[0];
      v15 = (v107.f32[2] + *&v109) * v12.f32[0];
      v16 = (v108.f32[2] - *(&v109 + 1)) * v12.f32[0];
    }

    *(&v13 + 1) = v14;
    *(&v13 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
    *(a1 + 32) = v110;
    *(a1 + 48) = v13;
  }

  else
  {
    re::ecs2::OrthographicCameraComponent::calculateWorldPose(a2, 0, &v107);
    v17 = vnegq_f32(v108);
    v18 = vnegq_f32(v107);
    v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v20 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v108), v19, v107);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v108), v22, v19);
    v24 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v22, v108, 3), v107), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    v22.f32[0] = v17.f32[0] + v17.f32[0];
    v25 = (v17.f32[0] + v17.f32[0]) * v17.f32[0];
    v26 = vmuls_lane_f32(v17.f32[1] + v17.f32[1], *v17.f32, 1);
    v27 = vmuls_lane_f32(v17.f32[2] + v17.f32[2], v17, 2);
    v28 = vmuls_lane_f32(v17.f32[0] + v17.f32[0], *v17.f32, 1);
    v29 = vmuls_lane_f32(v17.f32[0] + v17.f32[0], v17, 2);
    v17.f32[0] = vmuls_lane_f32(v17.f32[1] + v17.f32[1], v17, 2);
    v22.f32[0] = vmuls_lane_f32(v22.f32[0], v108, 3);
    v19.f32[0] = vmuls_lane_f32(v17.f32[1] + v17.f32[1], v108, 3);
    v30 = vmuls_lane_f32(v17.f32[2] + v17.f32[2], v108, 3);
    HIDWORD(v31) = 0;
    *&v31 = 1.0 - (v26 + v27);
    *(&v31 + 1) = v28 + v30;
    v23.i32[3] = 0;
    *(&v31 + 2) = v29 - v19.f32[0];
    HIDWORD(v32) = 0;
    *&v32 = v28 - v30;
    *(&v32 + 1) = 1.0 - (v25 + v27);
    *(&v32 + 2) = v17.f32[0] + v22.f32[0];
    *v23.i32 = v29 + v19.f32[0];
    *&v23.i32[1] = v17.f32[0] - v22.f32[0];
    *&v23.i32[2] = 1.0 - (v25 + v26);
    v24.i32[3] = 1.0;
    *(a1 + 752) = v31;
    *(a1 + 768) = v32;
    *(a1 + 784) = v23;
    *(a1 + 800) = v24;
    re::ecs2::OrthographicCameraComponent::calculateWorldPose(a2, a3, &v107);
    v33 = v108;
    *(a1 + 32) = v107;
    *(a1 + 48) = v33;
  }

  v55 = *(a1 + 48);
  *(a1 + 304) = *(a1 + 32);
  *(a1 + 320) = v55;
  if (*(a1 + 1296) == 1)
  {
    v56 = *(a1 + 1328);
    v57 = *(a1 + 1360);
    *(a1 + 96) = *(a1 + 1344);
    *(a1 + 112) = v57;
    *(a1 + 128) = *(a1 + 1376);
    *(a1 + 64) = *(a1 + 1312);
    *(a1 + 80) = v56;
    v58 = *(a1 + 1392);
    if (*(a1 + 144))
    {
      if (v58)
      {
        v59 = *(a1 + 1424);
        *(a1 + 160) = *(a1 + 1408);
        *(a1 + 176) = v59;
        v60 = *(a1 + 1456);
        *(a1 + 192) = *(a1 + 1440);
        *(a1 + 208) = v60;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        *(a1 + 144) = 0;
      }
    }

    else if (v58)
    {
      v61 = 1;
      *(a1 + 144) = 1;
      v68 = *(a1 + 1424);
      *(a1 + 160) = *(a1 + 1408);
      *(a1 + 176) = v68;
      v69 = *(a1 + 1456);
      *(a1 + 192) = *(a1 + 1440);
      *(a1 + 208) = v69;
    }

    else
    {
      v61 = 0;
    }

    if (*(a1 + 224))
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        *(a1 + 224) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        goto LABEL_40;
      }

      *(a1 + 224) = 1;
    }

    v79 = *(a1 + 1504);
    *(a1 + 240) = *(a1 + 1488);
    *(a1 + 256) = v79;
    v80 = *(a1 + 1536);
    *(a1 + 272) = *(a1 + 1520);
    *(a1 + 288) = v80;
LABEL_40:
    if (v58)
    {
      *(a1 + 1088) = *(a1 + 1408);
      *(a1 + 1104) = *(a1 + 1424);
      *(a1 + 1120) = *(a1 + 1440);
      *(a1 + 1136) = *(a1 + 1456);
      if ((v61 & 1) == 0)
      {
LABEL_42:
        re::Projection::cullingProjectionMatrix((a1 + 64), &v99);
        goto LABEL_45;
      }
    }

    else
    {
      re::Projection::cullingProjectionMatrix((a1 + 1312), &v107);
      v81 = *(a1 + 144);
      v82 = v108;
      *(a1 + 1088) = v107;
      *(a1 + 1104) = v82;
      v83 = v110;
      *(a1 + 1120) = v109;
      *(a1 + 1136) = v83;
      if ((v81 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v84 = *(a1 + 176);
    v99 = *(a1 + 160);
    v100 = v84;
    v85 = *(a1 + 208);
    v101 = *(a1 + 192);
    v102 = v85;
LABEL_45:
    re::RenderCamera::computeInverseTransform((a1 + 32), &v95);
    v86 = 0;
    v87 = v99;
    v88 = v100;
    v89 = v101;
    v90 = v102;
    v103 = v95;
    v104 = v96;
    v105 = v97;
    v106 = v98;
    do
    {
      *(&v107 + v86) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v87, COERCE_FLOAT(*(&v103 + v86))), v88, *(&v103 + v86), 1), v89, *(&v103 + v86), 2), v90, *(&v103 + v86), 3);
      v86 += 16;
    }

    while (v86 != 64);
    result = *v107.i64;
    v91 = v108;
    v92 = v109;
    v93 = v110;
    v94 = a2 + ((a3 == 2) << 6);
    *(v94 + 48) = v107;
    *(v94 + 64) = v91;
    *(v94 + 80) = v92;
    *(v94 + 96) = v93;
    return result;
  }

  v62 = (a2 + ((a3 == 2) << 6));
  v63 = v62[3];
  v64 = v62[4];
  v65 = v62[5];
  *(a1 + 1136) = v62[6];
  *(a1 + 1120) = v65;
  *(a1 + 1104) = v64;
  *(a1 + 1088) = v63;
  if (*(a1 + 144) == 1)
  {
    v66 = *(a1 + 176);
    v99 = *(a1 + 160);
    v100 = v66;
    v67 = *(a1 + 208);
    v101 = *(a1 + 192);
    v102 = v67;
  }

  else
  {
    re::Projection::cullingProjectionMatrix((a1 + 64), &v99);
  }

  re::RenderCamera::computeInverseTransform((a1 + 32), &v95);
  v70 = 0;
  v71 = v99;
  v72 = v100;
  v73 = v101;
  v74 = v102;
  v103 = v95;
  v104 = v96;
  v105 = v97;
  v106 = v98;
  do
  {
    *(&v107 + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v71, COERCE_FLOAT(*(&v103 + v70))), v72, *(&v103 + v70), 1), v73, *(&v103 + v70), 2), v74, *(&v103 + v70), 3);
    v70 += 16;
  }

  while (v70 != 64);
  result = *v107.i64;
  v76 = v108;
  v77 = v109;
  v78 = v110;
  v62[3] = v107;
  v62[4] = v76;
  v62[5] = v77;
  v62[6] = v78;
  return result;
}

double anonymous namespace::updateOneViewPerFrameData<re::ecs2::CustomMatrixCameraComponent>(re::RenderManager &,unsigned long,re::ecs2::CameraViewDescriptorsComponent *,re::ecs2::CustomMatrixCameraComponent *,re::CameraView *,re::CameraMultiView *)::{lambda(re::CameraView&,re::ecs2::CustomMatrixCameraComponent*,re::CameraEye)#1}::operator()(uint64_t a1, uint64_t a2, const re::ecs2::Entity *a3)
{
  if (*(a1 + 1248) == 1)
  {
    re::RenderCamera::computeInverseTransform((a1 + 1264), &v109);
    v6 = v110;
    *(a1 + 752) = v109;
    *(a1 + 768) = v6;
    v7 = v112;
    *(a1 + 784) = v111;
    *(a1 + 800) = v7;
    re::RenderCamera::computeLocalTransform((a1 + 1264), &v109);
    v8 = (v109.f32[0] + v110.f32[1]) + *(&v111 + 2);
    if (v8 >= 0.0)
    {
      v34 = sqrtf(v8 + 1.0);
      v35 = v34 + v34;
      v36 = vrecpe_f32(COERCE_UNSIGNED_INT(v34 + v34));
      v37 = vmul_f32(v36, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v36));
      v38 = vmul_f32(v37, vrecps_f32(COERCE_UNSIGNED_INT(v34 + v34), v37)).f32[0];
      *&v13 = (v110.f32[2] - *(&v111 + 1)) * v38;
      v14 = (*&v111 - v109.f32[2]) * v38;
      v15 = (v109.f32[1] - v110.f32[0]) * v38;
      v16 = v35 * 0.25;
    }

    else if (v109.f32[0] < v110.f32[1] || v109.f32[0] < *(&v111 + 2))
    {
      v39 = sqrtf(((1.0 - v109.f32[0]) - v110.f32[1]) + *(&v111 + 2));
      *&v40 = v39 + v39;
      v41 = vrecpe_f32(v40);
      v42 = vmul_f32(v41, vrecps_f32(v40, v41));
      v43 = vmul_f32(v42, vrecps_f32(v40, v42)).f32[0];
      v44 = (v109.f32[2] + *&v111) * v43;
      v45 = (v110.f32[2] + *(&v111 + 1)) * v43;
      v46 = *&v40 * 0.25;
      v47 = (v109.f32[1] - v110.f32[0]) * v43;
      v48 = sqrtf(v110.f32[1] + ((1.0 - v109.f32[0]) - *(&v111 + 2)));
      *&v49 = v48 + v48;
      v50 = vrecpe_f32(v49);
      v51 = vmul_f32(v50, vrecps_f32(v49, v50));
      v52 = vmul_f32(v51, vrecps_f32(v49, v51)).f32[0];
      v53 = *&v49 * 0.25;
      v54 = (v110.f32[2] + *(&v111 + 1)) * v52;
      v16 = (*&v111 - v109.f32[2]) * v52;
      if (v110.f32[1] >= *(&v111 + 2))
      {
        *&v13 = (v109.f32[1] + v110.f32[0]) * v52;
      }

      else
      {
        *&v13 = v44;
      }

      if (v110.f32[1] >= *(&v111 + 2))
      {
        v14 = v53;
      }

      else
      {
        v14 = v45;
      }

      if (v110.f32[1] >= *(&v111 + 2))
      {
        v15 = v54;
      }

      else
      {
        v15 = v46;
      }

      if (v110.f32[1] < *(&v111 + 2))
      {
        v16 = v47;
      }
    }

    else
    {
      v9 = sqrtf(v109.f32[0] + ((1.0 - v110.f32[1]) - *(&v111 + 2)));
      *&v10 = v9 + v9;
      v11 = vrecpe_f32(v10);
      v12 = vmul_f32(v11, vrecps_f32(v10, v11));
      v12.f32[0] = vmul_f32(v12, vrecps_f32(v10, v12)).f32[0];
      *&v13 = *&v10 * 0.25;
      v14 = (v109.f32[1] + v110.f32[0]) * v12.f32[0];
      v15 = (v109.f32[2] + *&v111) * v12.f32[0];
      v16 = (v110.f32[2] - *(&v111 + 1)) * v12.f32[0];
    }

    *(&v13 + 1) = v14;
    *(&v13 + 1) = __PAIR64__(LODWORD(v16), LODWORD(v15));
    *(a1 + 32) = v112;
    *(a1 + 48) = v13;
  }

  else
  {
    re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(a2, 0, &v109);
    v17 = vnegq_f32(v110);
    v18 = vnegq_f32(v109);
    v19 = vextq_s8(vuzp1q_s32(v17, v17), v17, 0xCuLL);
    v20 = vmlsq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v18, v18), v18, 0xCuLL), v110), v19, v109);
    v21 = vaddq_f32(v20, v20);
    v22 = vextq_s8(vuzp1q_s32(v21, v21), v21, 0xCuLL);
    v23 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v22, v22), v22, 0xCuLL), v110), v22, v19);
    v24 = vaddq_f32(vsubq_f32(vmulq_laneq_f32(v22, v110, 3), v109), vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL));
    v22.f32[0] = v17.f32[0] + v17.f32[0];
    v25 = (v17.f32[0] + v17.f32[0]) * v17.f32[0];
    v26 = vmuls_lane_f32(v17.f32[1] + v17.f32[1], *v17.f32, 1);
    v27 = vmuls_lane_f32(v17.f32[2] + v17.f32[2], v17, 2);
    v28 = vmuls_lane_f32(v17.f32[0] + v17.f32[0], *v17.f32, 1);
    v29 = vmuls_lane_f32(v17.f32[0] + v17.f32[0], v17, 2);
    v17.f32[0] = vmuls_lane_f32(v17.f32[1] + v17.f32[1], v17, 2);
    v22.f32[0] = vmuls_lane_f32(v22.f32[0], v110, 3);
    v19.f32[0] = vmuls_lane_f32(v17.f32[1] + v17.f32[1], v110, 3);
    v30 = vmuls_lane_f32(v17.f32[2] + v17.f32[2], v110, 3);
    HIDWORD(v31) = 0;
    *&v31 = 1.0 - (v26 + v27);
    *(&v31 + 1) = v28 + v30;
    v23.i32[3] = 0;
    *(&v31 + 2) = v29 - v19.f32[0];
    HIDWORD(v32) = 0;
    *&v32 = v28 - v30;
    *(&v32 + 1) = 1.0 - (v25 + v27);
    *(&v32 + 2) = v17.f32[0] + v22.f32[0];
    *v23.i32 = v29 + v19.f32[0];
    *&v23.i32[1] = v17.f32[0] - v22.f32[0];
    *&v23.i32[2] = 1.0 - (v25 + v26);
    v24.i32[3] = 1.0;
    *(a1 + 752) = v31;
    *(a1 + 768) = v32;
    *(a1 + 784) = v23;
    *(a1 + 800) = v24;
    re::ecs2::CustomMatrixCameraComponent::calculateWorldPose(a2, a3, &v109);
    v33 = v110;
    *(a1 + 32) = v109;
    *(a1 + 48) = v33;
  }

  v55 = *(a1 + 48);
  *(a1 + 304) = *(a1 + 32);
  *(a1 + 320) = v55;
  if (*(a1 + 1296) == 1)
  {
    v56 = *(a1 + 1328);
    v57 = *(a1 + 1360);
    *(a1 + 96) = *(a1 + 1344);
    *(a1 + 112) = v57;
    *(a1 + 128) = *(a1 + 1376);
    *(a1 + 64) = *(a1 + 1312);
    *(a1 + 80) = v56;
    v58 = *(a1 + 1392);
    if (*(a1 + 144))
    {
      if (v58)
      {
        v59 = *(a1 + 1424);
        *(a1 + 160) = *(a1 + 1408);
        *(a1 + 176) = v59;
        v60 = *(a1 + 1456);
        *(a1 + 192) = *(a1 + 1440);
        *(a1 + 208) = v60;
        v61 = 1;
      }

      else
      {
        v61 = 0;
        *(a1 + 144) = 0;
      }
    }

    else if (v58)
    {
      v61 = 1;
      *(a1 + 144) = 1;
      v70 = *(a1 + 1424);
      *(a1 + 160) = *(a1 + 1408);
      *(a1 + 176) = v70;
      v71 = *(a1 + 1456);
      *(a1 + 192) = *(a1 + 1440);
      *(a1 + 208) = v71;
    }

    else
    {
      v61 = 0;
    }

    if (*(a1 + 224))
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        *(a1 + 224) = 0;
        goto LABEL_40;
      }
    }

    else
    {
      if ((*(a1 + 1472) & 1) == 0)
      {
        goto LABEL_40;
      }

      *(a1 + 224) = 1;
    }

    v81 = *(a1 + 1504);
    *(a1 + 240) = *(a1 + 1488);
    *(a1 + 256) = v81;
    v82 = *(a1 + 1536);
    *(a1 + 272) = *(a1 + 1520);
    *(a1 + 288) = v82;
LABEL_40:
    if (v58)
    {
      *(a1 + 1088) = *(a1 + 1408);
      *(a1 + 1104) = *(a1 + 1424);
      *(a1 + 1120) = *(a1 + 1440);
      *(a1 + 1136) = *(a1 + 1456);
      if ((v61 & 1) == 0)
      {
LABEL_42:
        re::Projection::cullingProjectionMatrix((a1 + 64), &v101);
        goto LABEL_45;
      }
    }

    else
    {
      re::Projection::cullingProjectionMatrix((a1 + 1312), &v109);
      v83 = *(a1 + 144);
      v84 = v110;
      *(a1 + 1088) = v109;
      *(a1 + 1104) = v84;
      v85 = v112;
      *(a1 + 1120) = v111;
      *(a1 + 1136) = v85;
      if ((v83 & 1) == 0)
      {
        goto LABEL_42;
      }
    }

    v86 = *(a1 + 176);
    v101 = *(a1 + 160);
    v102 = v86;
    v87 = *(a1 + 208);
    v103 = *(a1 + 192);
    v104 = v87;
LABEL_45:
    re::RenderCamera::computeInverseTransform((a1 + 32), &v97);
    v88 = 0;
    v89 = v101;
    v90 = v102;
    v91 = v103;
    v92 = v104;
    v105 = v97;
    v106 = v98;
    v107 = v99;
    v108 = v100;
    do
    {
      *(&v109 + v88) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v89, COERCE_FLOAT(*(&v105 + v88))), v90, *(&v105 + v88), 1), v91, *(&v105 + v88), 2), v92, *(&v105 + v88), 3);
      v88 += 16;
    }

    while (v88 != 64);
    result = *v109.i64;
    v93 = v110;
    v94 = v111;
    v95 = v112;
    v96 = a2 + ((a3 == 2) << 6);
    *(v96 + 48) = v109;
    *(v96 + 64) = v93;
    *(v96 + 80) = v94;
    *(v96 + 96) = v95;
    return result;
  }

  v62 = re::ecs2::CustomMatrixCameraComponent::renderFrustumTangents(a2, a3);
  *(a1 + 1240) = v63;
  *(a1 + 1232) = v62;
  v64 = (a2 + ((a3 == 2) << 6));
  v65 = v64[5];
  v66 = v64[6];
  v67 = v64[4];
  *(a1 + 1088) = v64[3];
  *(a1 + 1136) = v66;
  *(a1 + 1120) = v65;
  *(a1 + 1104) = v67;
  if (*(a1 + 144) == 1)
  {
    v68 = *(a1 + 176);
    v101 = *(a1 + 160);
    v102 = v68;
    v69 = *(a1 + 208);
    v103 = *(a1 + 192);
    v104 = v69;
  }

  else
  {
    re::Projection::cullingProjectionMatrix((a1 + 64), &v101);
  }

  re::RenderCamera::computeInverseTransform((a1 + 32), &v97);
  v72 = 0;
  v73 = v101;
  v74 = v102;
  v75 = v103;
  v76 = v104;
  v105 = v97;
  v106 = v98;
  v107 = v99;
  v108 = v100;
  do
  {
    *(&v109 + v72) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v73, COERCE_FLOAT(*(&v105 + v72))), v74, *(&v105 + v72), 1), v75, *(&v105 + v72), 2), v76, *(&v105 + v72), 3);
    v72 += 16;
  }

  while (v72 != 64);
  result = *v109.i64;
  v78 = v110;
  v79 = v111;
  v80 = v112;
  v64[3] = v109;
  v64[4] = v78;
  v64[5] = v79;
  v64[6] = v80;
  return result;
}

void *re::ecs2::allocInfo_AdaptiveResolutionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_257, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_257))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8728, "AdaptiveResolutionComponent");
    __cxa_guard_release(&_MergedGlobals_257);
  }

  return &unk_1EE1A8728;
}

void re::ecs2::initInfo_AdaptiveResolutionComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xB5AB72FA376B5E76;
  v10[1] = "AdaptiveResolutionComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A8700, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8700);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A86F8 = v8;
      __cxa_guard_release(&qword_1EE1A8700);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A86F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AdaptiveResolutionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227AdaptiveResolutionComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD8F30;
}

void re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8F30;
}

void *re::ecs2::allocInfo_AdaptiveResolutionStateComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8708, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8708))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A87B8, "AdaptiveResolutionStateComponent");
    __cxa_guard_release(&qword_1EE1A8708);
  }

  return &unk_1EE1A87B8;
}

void re::ecs2::initInfo_AdaptiveResolutionStateComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x1125A55C2DBA5FDCLL;
  v14[1] = "AdaptiveResolutionStateComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A8710, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8710);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A8718 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "pixelsPerMeter";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A8720 = v12;
      __cxa_guard_release(&qword_1EE1A8710);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A8718;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AdaptiveResolutionStateComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232AdaptiveResolutionStateComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionStateComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD9098;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionStateComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD9098;
  *(v1 + 28) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227AdaptiveResolutionComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs232AdaptiveResolutionStateComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 9;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_VideoAudioControlComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_258, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_258))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8868, "VideoAudioControlComponent");
    __cxa_guard_release(&_MergedGlobals_258);
  }

  return &unk_1EE1A8868;
}

void re::ecs2::initInfo_VideoAudioControlComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x700C00A660220CF6;
  v10[1] = "VideoAudioControlComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A8858, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8858);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A8850 = v8;
      __cxa_guard_release(&qword_1EE1A8858);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A8850;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoAudioControlComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoAudioControlComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoAudioControlComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoAudioControlComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226VideoAudioControlComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::VideoAudioControlComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8280;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::VideoAudioControlComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8280;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
}

void *re::ecs2::allocInfo_VideoAudioControlSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8860))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A88F8, "VideoAudioControlSystem");
    __cxa_guard_release(&qword_1EE1A8860);
  }

  return &unk_1EE1A88F8;
}

void re::ecs2::initInfo_VideoAudioControlSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x731113394ED252E2;
  v6[1] = "VideoAudioControlSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_VideoAudioControlSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoAudioControlSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoAudioControlSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VideoAudioControlSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VideoAudioControlSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoAudioControlSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoAudioControlSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::VideoAudioControlSystem>(uint64_t a1, uint64_t a2, uint64_t **a3)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, a3[28]);
  a3[28] = 0;

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VideoAudioControlSystem>(uint64_t **a1)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, a1[28]);
  a1[28] = 0;

  re::ecs2::System::~System(a1);
}

id re::ecs2::VideoAudioControlComponent::ControlInfo::label(id *this)
{
  if (*this)
  {
    return this[1];
  }

  else
  {
    return 0;
  }
}

void re::ecs2::VideoAudioControlComponent::setDeferToSystemAcousticTuning(re::ecs2::VideoAudioControlComponent *this)
{
  v3 = *(this + 2);
  if (v3)
  {
    if (*(this + 8) == 1)
    {
      v8[3] = v1;
      v8[4] = v2;
      v8[0] = *(this + 6);
      v4 = *(v3 + 216);
      v5 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = v5;
        v7 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v5 + 32, v8);
        if (v7)
        {
          if (*(v7 + 272))
          {
            *(v7 + 272) = 0;
            re::ecs2::Component::markDirty(v6);
            if (v4)
            {
              re::ecs2::NetworkComponent::markDirty(v4, v6);
            }
          }
        }
      }
    }
  }
}

re::ecs2::VideoAudioControlSystem *re::ecs2::VideoAudioControlSystem::VideoAudioControlSystem(re::ecs2::VideoAudioControlSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF0830;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 48, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0;
  *(v4 + 36) = 0x7FFFFFFFLL;
  *(this + 28) = v4;
  return this;
}

void re::ecs2::VideoAudioControlSystem::~VideoAudioControlSystem(uint64_t **this)
{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, this[28]);
  this[28] = 0;

  re::ecs2::System::~System(this);
}

{
  re::internal::destroyPersistent<re::ecs2::AudioComponentForwarder>("~VideoAudioControlSystem", 227, this[28]);
  this[28] = 0;
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::VideoAudioControlSystem::willAddSceneToECSService(re::ecs2::VideoAudioControlSystem *this, re::ecs2::Scene *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = this;
    v8 = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoComponent>,re::ecs2::VideoAudioControlSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v7);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = this;
    v8 = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoPlayerComponent>,re::ecs2::VideoAudioControlSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 272), &v7);
  }

  return result;
}

void re::ecs2::VideoAudioControlSystem::willRemoveSceneFromECSService(re::ecs2::VideoAudioControlSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoComponent>,re::ecs2::VideoAudioControlSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v6);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = this;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoPlayerComponent>,re::ecs2::VideoAudioControlSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 272, &v6);
  }
}

uint64_t re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(uint64_t this, re::ecs2::Entity *a2)
{
  if (this)
  {
    v2 = *(this + 344);
    if (v2)
    {
      v3 = *(this + 360);
      v4 = 8 * v2;
      while (1)
      {
        v5 = *v3;
        if ((*(*v3 + 288) ^ 0x731113391DD5364AuLL) <= 1)
        {
          v6 = *(v5 + 296);
          if (v6 == "VideoAudioControlEntity" || !strcmp(v6, "VideoAudioControlEntity"))
          {
            break;
          }
        }

        ++v3;
        v4 -= 8;
        if (!v4)
        {
          return 0;
        }
      }

      return re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }

    else
    {
      return 0;
    }
  }

  return this;
}

void re::ecs2::VideoAudioControlSystem::ignoreCreateOrCleanUpComponentForAudioControl(uint64_t a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v56 = *MEMORY[0x1E69E9840];
  v8 = re::AssetHandle::loadedAsset<re::VideoAsset>((a3 + 8));
  if (v8)
  {
    v9 = v8;
    v10 = re::VideoAsset::getAVPlayer(v8);
    v11 = v10;
    if (v10)
    {
      v12 = v10;
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
      v14 = v13 ^ (v13 >> 31);
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(buf, a2, v12, v14);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v15 = [v12 _STSLabel];
        memset(buf, 0, sizeof(buf));
        re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(buf, a2, v12, v14);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v16 = re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::allocEntry(a2, *&buf[8], *buf);
          *(v16 + 8) = v12;
          *(v16 + 16) = 0;
          *(v16 + 48) = 0;
          *(v16 + 24) = 0;
          *(v16 + 32) = 0;
          *(v16 + 40) = 0;
          v17 = v15;
          v18 = v17;
          if (v17)
          {
            if ([v17 hasPrefix:@"REVideoAudioControl:"])
            {
              v19 = 1;
            }

            else
            {
              v19 = 2;
            }
          }

          else
          {
            v19 = 0;
          }

          *(v16 + 56) = v19;
          *(v16 + 64) = v18;
          ++*(a2 + 40);
          v20 = v16 + 16;
        }

        else
        {
          v20 = *(a2 + 16) + 80 * *&buf[12] + 16;
        }
      }

      else
      {
        v20 = *(a2 + 16) + 80 * *&buf[12] + 16;
      }

      v22 = *(a4 + 8);
      v23 = *a3;
      if (v22)
      {
        v24 = 8 * v22;
        v25 = *a4;
        while (*v25 != v23)
        {
          ++v25;
          v24 -= 8;
          if (!v24)
          {
            goto LABEL_22;
          }
        }
      }

      else
      {
        v25 = *a4;
      }

      if (v25 != (*a4 + 8 * v22))
      {
        v26 = *(v23 + 16);
        goto LABEL_24;
      }

LABEL_22:
      v26 = *(v23 + 16);
      if (*(v26 + 387))
      {
        goto LABEL_24;
      }

      if ((*(v26 + 304) & 1) == 0)
      {
        goto LABEL_24;
      }

      v34 = *(v23 + 16);
      do
      {
        v35 = v34;
        v34 = *(v34 + 32);
      }

      while (v34);
      if (!*(v35 + 24) || (a3[32] & 1) != 0 || *(v20 + 40) == 2)
      {
LABEL_24:
        VideoAudioControlComponentUnderneathParent = re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(v26, v21);
        if (VideoAudioControlComponentUnderneathParent)
        {
          v28 = VideoAudioControlComponentUnderneathParent;
          re::ecs2::AudioComponentForwarder::stopForwardingAudioComponentState(*(a1 + 224), v26, *(VideoAudioControlComponentUnderneathParent + 16));
          v29 = (v28 + 32);
          if (*(v28 + 32) == 1)
          {
            v30 = *(v28 + 16);
            v31 = re::ecs2::EntityComponentCollection::get((v30 + 6), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v31)
            {
              v32 = v31;
              v33 = *v29 ? *(v28 + 48) : 0;
              re::ecs2::AudioPlayerComponent::destroy(v31, v33);
              v31 = v30[27];
              if (v31)
              {
                re::ecs2::NetworkComponent::markDirty(v31, v32);
              }
            }

            v46 = *re::audioLogObjects(v31);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              if (*v29)
              {
                v47 = *(v28 + 48);
              }

              else
              {
                v47 = 0;
              }

              v48 = v46;
              v49 = re::ecs2::VideoAudioControlComponent::ControlInfo::label((v28 + 32));
              v50 = v30[37];
              *buf = 134218754;
              *&buf[4] = v47;
              *&buf[12] = 2112;
              *&buf[14] = v49;
              *&buf[22] = 2048;
              v53 = v28;
              v54 = 2080;
              v55 = v50;
              _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Cleaning up audio token %llu for label %@ in VideoAudioControlComponent@%p on entity %s", buf, 0x2Au);
            }

            *v29 = 0;
          }
        }

        goto LABEL_61;
      }

      v36 = re::ecs2::VideoAudioControlSystem::getVideoAudioControlComponentUnderneathParent(v26, v21);
      v37 = v36;
      if (!v36)
      {
        v38 = *(*a3 + 16);
        *buf = 0x731113391DD5364ALL;
        *&buf[8] = "VideoAudioControlEntity";
        v39 = re::ecs2::EntityChildCollection::getOrAdd((v38 + 320), buf);
        v40 = v39;
        if (buf[0])
        {
          if (buf[0])
          {
          }
        }

        *(v40 + 76) |= 0x1400u;
        if (!*(v40 + 27))
        {
          re::ecs2::EntityComponentCollection::add((v40 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        if (!*(v40 + 32))
        {
          re::ecs2::EntityComponentCollection::add((v40 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v37 = re::ecs2::EntityComponentCollection::getOrAdd((v40 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::ecs2::AudioComponentForwarder::forwardAudioComponentState(*(a1 + 224), v38, v40);
      }

      v42 = *(v20 + 8);
      v41 = *(v20 + 16);
      if (v41 >= v42)
      {
        v43 = v41 + 1;
        if (v42 < v41 + 1)
        {
          if (*v20)
          {
            v44 = 2 * v42;
            if (!v42)
            {
              v44 = 8;
            }

            if (v44 <= v43)
            {
              v45 = v43;
            }

            else
            {
              v45 = v44;
            }

            re::DynamicArray<re::RigNodeConstraint>::setCapacity(v20, v45);
          }

          else
          {
            re::DynamicArray<re::RigNodeConstraint>::setCapacity(v20, v43);
            ++*(v20 + 24);
          }
        }

        v41 = *(v20 + 16);
      }

      v51 = (*(v20 + 32) + 16 * v41);
      *v51 = v37;
      v51[1] = v9;
      *(v20 + 16) = v41 + 1;
      ++*(v20 + 24);
    }

LABEL_61:
  }
}

void re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v100 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if ((v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0 && *(v6 + 48) || (v6 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0 && *(v6 + 48))
    {
      v91 = 0;
      v89 = 0u;
      v90 = 0u;
      v92 = 0x7FFFFFFFLL;
      v7 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v7)
      {
        v8 = *(v7 + 384);
        if (v8)
        {
          v9 = *(v7 + 400);
          v10 = 8 * v8;
          do
          {
            v11 = *v9++;
            *buf = v11;
            re::AssetHandle::AssetHandle(&buf[8], (v11 + 208));
            v99 = *(v11 + 331);
            re::ecs2::VideoAudioControlSystem::ignoreCreateOrCleanUpComponentForAudioControl(a1, &v89, buf, a3);
            re::AssetHandle::~AssetHandle(&buf[8]);
            v10 -= 8;
          }

          while (v10);
        }
      }

      v12 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v12)
      {
        v13 = *(v12 + 48);
        if (v13)
        {
          v14 = *(v12 + 50);
          v15 = 8 * v13;
          do
          {
            v16 = *v14++;
            *buf = v16;
            re::AssetHandle::AssetHandle(&buf[8], (v16 + 40));
            v99 = 0;
            re::ecs2::VideoAudioControlSystem::ignoreCreateOrCleanUpComponentForAudioControl(a1, &v89, buf, a3);
            re::AssetHandle::~AssetHandle(&buf[8]);
            v15 -= 8;
          }

          while (v15);
        }
      }

      v83 = a1;
      if (v91)
      {
        v17 = 0;
        v18 = v90;
        while (1)
        {
          v19 = *v18;
          v18 += 20;
          if (v19 < 0)
          {
            break;
          }

          if (v91 == ++v17)
          {
            LODWORD(v17) = v91;
            break;
          }
        }
      }

      else
      {
        LODWORD(v17) = 0;
      }

      if (v17 != v91)
      {
        v20 = v90;
        v81 = v90;
        v82 = v91;
        while (1)
        {
          v21 = v20 + 80 * v17;
          v22 = *(v21 + 32);
          if (v22)
          {
            break;
          }

          if (*(v21 + 56) == 1)
          {
            v76 = *re::audioLogObjects(v12);
            if (os_log_type_enabled(v76, OS_LOG_TYPE_DEFAULT))
            {
              v77 = *(v21 + 8);
              v78 = v76;
              v79 = [v77 _STSLabel];
              *buf = 138412290;
              *&buf[4] = v79;
              _os_log_impl(&dword_1E1C61000, v78, OS_LOG_TYPE_DEFAULT, "clearing label %@ for uncontrolled player", buf, 0xCu);
            }

            v12 = [*(v21 + 8) _setSTSLabel:0];
          }

LABEL_83:
          v20 = v81;
          if (v82 <= v17 + 1)
          {
            v80 = v17 + 1;
          }

          else
          {
            v80 = v82;
          }

          while (v80 - 1 != v17)
          {
            LODWORD(v17) = v17 + 1;
            if ((*(v81 + 80 * v17) & 0x80000000) != 0)
            {
              goto LABEL_90;
            }
          }

          LODWORD(v17) = v80;
LABEL_90:
          if (v17 == v82)
          {
            goto LABEL_91;
          }
        }

        v23 = *(v21 + 48);
        v84 = *(v21 + 32);
        v85 = v20 + 80 * v17;
        v86 = &v23[2 * v22];
        while (1)
        {
          v24 = *v23;
          v87 = v23[1];
          v25 = *(v21 + 8);
          v26 = *(v21 + 56);
          v88 = *(v21 + 64);
          if (*(v24 + 32) == 1)
          {
            v27 = re::ecs2::VideoAudioControlComponent::ControlInfo::label((v24 + 32));
            v28 = v27;
            if (!v26)
            {
              goto LABEL_42;
            }
          }

          else
          {
            v34 = v25;
            v35 = MEMORY[0x1E696AEC0];
            *buf = 0;
            do
            {
              arc4random_buf(buf, 8uLL);
            }

            while (*buf < 0x3E8uLL);
            v36 = [v35 stringWithFormat:@"%@%llx", @"REVideoAudioControl:", *buf];
            v37 = *(v24 + 16);
            v38 = re::ecs2::EntityComponentCollection::getOrAdd((v37 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            v39 = re::ecs2::AudioPlayerComponent::prepare(v38, v36);
            v40 = *(v37 + 216);
            if (v40)
            {
              re::ecs2::NetworkComponent::markDirty(v40, v38);
            }

            v41 = v36;
            v42 = v41;
            if (v41 && v39)
            {
              v43 = 1;
            }

            else
            {
              v44 = *re::audioLogObjects(v41);
              if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
              {
                *buf = 134218242;
                *&buf[4] = v39;
                v95 = 2112;
                v96 = v42;
                _os_log_error_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_ERROR, "invalid control info %llu, %@", buf, 0x16u);
              }

              v43 = 0;
            }

            *(v24 + 32) = v43;
            objc_storeStrong((v24 + 40), v36);
            *(v24 + 48) = v39;

            v28 = re::ecs2::VideoAudioControlComponent::ControlInfo::label((v24 + 32));

            v25 = v34;
            v21 = v85;
            if (!v26)
            {
LABEL_42:
              v45 = *re::audioLogObjects(v27);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 134218242;
                *&buf[4] = v83;
                v95 = 2112;
                v96 = v28;
                _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "VideoAudioControlComponent@%p setting AVPlayer's STS label to %@", buf, 0x16u);
              }

              goto LABEL_44;
            }
          }

          if (v84 == 1 && v26 == 1)
          {
            v29 = [(re *)v28 isEqualToString:v88];
            if ((v29 & 1) == 0)
            {
              v30 = *re::audioLogObjects(v29);
              if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
              {
                v31 = v25;
                v32 = v88;
                *buf = 134218498;
                *&buf[4] = v83;
                v95 = 2112;
                v96 = v32;
                v97 = 2112;
                v98 = v28;
                v33 = v30;
                _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "VideoAudioControlComponent@%p overwriting AVPlayer's existing STS label %@ to %@", buf, 0x20u);

                v25 = v31;
                v21 = v85;
              }

LABEL_44:
              [v25 _setSTSLabel:v28];
            }
          }

          v46 = *(v24 + 16);
          v47 = *(v46 + 98);
          if (*(v46 + 98))
          {
            v48 = (re::ecs2::ComponentImpl<re::ecs2::SpatialAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v49 = *(v46 + 104);
            v50 = vld1q_dup_s16(v48);
            v51 = 1;
            v52 = v49;
            v53 = *(v46 + 98);
            while (1)
            {
              v54 = vandq_s8(vceqq_s16(v50, *v52), xmmword_1E306AC00);
              v54.i16[0] = vmaxvq_u16(v54);
              if (v54.i32[0])
              {
                break;
              }

              v51 -= 8;
              ++v52;
              if (!--v53)
              {
                goto LABEL_51;
              }
            }

            if (v54.u16[0] - v51 < *(v46 + 96))
            {
LABEL_61:
              re::ecs2::VideoAudioControlComponent::setDeferToSystemAcousticTuning(v24);
              goto LABEL_77;
            }

LABEL_51:
            v55 = (re::ecs2::ComponentImpl<re::ecs2::AmbientAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v56 = vld1q_dup_s16(v55);
            v57 = 1;
            v58 = *(v46 + 104);
            v59 = *(v46 + 98);
            while (1)
            {
              v60 = vandq_s8(vceqq_s16(v56, *v58), xmmword_1E306AC00);
              v60.i16[0] = vmaxvq_u16(v60);
              if (v60.i32[0])
              {
                break;
              }

              v57 -= 8;
              ++v58;
              if (!--v59)
              {
                goto LABEL_56;
              }
            }

            if (v60.u16[0] - v57 < *(v46 + 96))
            {
              goto LABEL_61;
            }

LABEL_56:
            v61 = (re::ecs2::ComponentImpl<re::ecs2::ChannelAudioComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
            v62 = vld1q_dup_s16(v61);
            v63 = 1;
            while (1)
            {
              v64 = vandq_s8(vceqq_s16(v62, *v49), xmmword_1E306AC00);
              v64.i16[0] = vmaxvq_u16(v64);
              if (v64.i32[0])
              {
                break;
              }

              v63 -= 8;
              ++v49;
              if (!--v47)
              {
                goto LABEL_62;
              }
            }

            if (v64.u16[0] - v63 < *(v46 + 96))
            {
              goto LABEL_61;
            }
          }

LABEL_62:
          re::ecs2::VideoAudioControlComponent::setDeferToSystemAcousticTuning(v24);
          v65 = *(v24 + 16);
          if (v65 && *(v24 + 32) == 1)
          {
            v66 = v25;
            v67 = *(v87 + 24);
            v68 = *(v87 + 28);
            *buf = *(v24 + 48);
            v69 = *(v65 + 216);
            v70 = re::ecs2::EntityComponentCollection::get((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v70)
            {
              v71 = v70;
              v72 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v70 + 32, buf);
              if (v72)
              {
                if (*(v72 + 72) != v68)
                {
                  *(v72 + 72) = v68;
                  re::ecs2::Component::markDirty(v71);
                  if (v69)
                  {
                    re::ecs2::NetworkComponent::markDirty(v69, v71);
                  }
                }

                v73 = re::ecs2::EntityComponentCollection::getOrAdd((v65 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioTransientComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
                if (v73)
                {
                  v74 = v73;
                  v75 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v73 + 40, buf);
                  if (!v75)
                  {
                    HIDWORD(v93) = 6553601;
                    LOBYTE(v93) = v67;
                    re::HashTable<unsigned long long,re::ecs2::TransientAudioState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((v74 + 5), buf, &v93);
                    goto LABEL_74;
                  }

                  if (*v75 != v67)
                  {
                    *v75 = v67;
LABEL_74:
                    re::ecs2::Component::markDirty(v74);
                    if (v69)
                    {
                      re::ecs2::NetworkComponent::markDirty(v69, v74);
                    }
                  }
                }
              }
            }

            v25 = v66;
            v21 = v85;
          }

LABEL_77:

          v23 += 2;
          if (v23 == v86)
          {
            goto LABEL_83;
          }
        }
      }

LABEL_91:
      re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::deinit(&v89);
    }
  }
}

uint64_t re::ecs2::VideoAudioControlSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v12);
  v5 = *(a3 + 200);
  if (v5)
  {
    v6 = *(a3 + 216);
    v7 = 8 * v5;
    do
    {
      v8 = *v6;
      re::ecs2::SceneComponentTable::get((*v6 + 200), re::ecs2::ComponentImpl<re::ecs2::VideoAudioControlComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v11, 3137, a1);
      v10[0] = 0;
      v10[1] = 0;
      re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(a1, v8, v10);
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v11);
      ++v6;
      v7 -= 8;
    }

    while (v7);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v12);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226VideoAudioControlComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 10;
    *(a2 + 8) = 0;
  }
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoComponent>,re::ecs2::VideoAudioControlSystem>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 472);
  v6[0] = a3;
  v6[1] = a4;
  re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(a1, v4, v6);
  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::VideoPlayerComponent>::EventWrapper::erasedMemberCallback<&REEventHandlerResult re::ecs2::VideoAudioControlSystem::willRemoveComponents<re::ecs2::VideoPlayerComponent>,re::ecs2::VideoAudioControlSystem>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *(a2 + 472);
  v6[0] = a3;
  v6[1] = a4;
  re::ecs2::VideoAudioControlSystem::updateAudioControllersForAllVideoAssetsInScene(a1, v4, v6);
  return 0;
}

uint64_t re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 40;
            do
            {
              if ((*(v17 - 40) & 0x80000000) != 0)
              {
                v18 = re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::allocEntry(a1, *(v17 + 32) % *(a1 + 24));
                v19 = *(v17 - 32);
                *(v17 - 32) = 0;
                *(v18 + 48) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                v20 = *(v17 - 16);
                *(v18 + 16) = *(v17 - 24);
                *(v18 + 24) = v20;
                *(v17 - 24) = 0;
                *(v17 - 16) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *(v17 - 8);
                *(v17 - 8) = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 8);
                *(v17 + 8) = v22;
                ++*v17;
                ++*(v18 + 40);
                *(v18 + 56) = *(v17 + 16);
                v23 = *(v17 + 24);
                *(v17 + 24) = 0;
                *(v18 + 64) = v23;
              }

              v17 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 80 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 80 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 80 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 72) = a3;
  ++*(a1 + 28);
  return v24 + 80 * v5;
}

double re::HashTable<AVPlayer * {__strong},re::ecs2::VideoAudioControlSystem::AVPlayerState,re::Hash<AVPlayer * {__strong}>,re::EqualTo<AVPlayer * {__strong}>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        v5 = a1[2];
        v6 = *(v5 + v3);
        if (v6 < 0)
        {
          v7 = (v5 + v3);
          *(v5 + v3) = v6 & 0x7FFFFFFF;

          v8 = *(v5 + v3 + 16);
          if (v8)
          {
            if (v7[6])
            {
              (*(*v8 + 40))(v8);
            }

            v7[6] = 0;
            v7[3] = 0;
            v7[4] = 0;
            v7[2] = 0;
            ++*(v5 + v3 + 40);
          }
        }

        ++v4;
        v3 += 80;
      }

      while (v4 < *(a1 + 8));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

uint64_t re::ecs2::StateCommandFactoryECS::getCommandIDFromCommandName(re::ecs2::StateCommandFactoryECS *this, const re::StringID *a2)
{
  {
    return 1;
  }

  {
    return 2;
  }

  {
    return 3;
  }

  {
    return 4;
  }

  return 0;
}

uint64_t re::ecs2::StateCommandFactoryECS::createStateCommand(re::ecs2::StateCommandFactoryECS *this, const StringID *a2, const re::StringID *a3)
{
  if (v5)
  {
    v6 = re::globalAllocators(v5);
    v7 = (*(*v6[2] + 32))(v6[2], 104, 8);
    *v7 = &unk_1F5CF08E8;
    re::StringID::StringID((v7 + 8), a2);
    *(v7 + 56) = 0;
    *(v7 + 40) = 0u;
    *(v7 + 24) = 0u;
    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *v7 = &unk_1F5D002F8;
    *(v7 + 80) = 0;
    *(v7 + 88) = &str_67;
    *(v7 + 96) = 0;
  }

  else
  {
    if (v8)
    {
      v9 = re::globalAllocators(v8);
      v7 = (*(*v9[2] + 32))(v9[2], 80, 8);
      *v7 = &unk_1F5CF08E8;
      re::StringID::StringID((v7 + 8), a2);
      *(v7 + 56) = 0;
      *(v7 + 40) = 0u;
      *(v7 + 24) = 0u;
      v10 = &unk_1F5D003B0;
    }

    else
    {
      if (v11)
      {
        v12 = re::globalAllocators(v11);
        v7 = (*(*v12[2] + 32))(v12[2], 80, 8);
        *v7 = &unk_1F5CF08E8;
        re::StringID::StringID((v7 + 8), a2);
        *(v7 + 56) = 0;
        *(v7 + 40) = 0u;
        *(v7 + 24) = 0u;
        v10 = &unk_1F5D00468;
      }

      else
      {
        if (!v13)
        {
          return 0;
        }

        v14 = re::globalAllocators(v13);
        v7 = (*(*v14[2] + 32))(v14[2], 88, 8);
        *v7 = &unk_1F5CF08E8;
        re::StringID::StringID((v7 + 8), a2);
        *(v7 + 56) = 0;
        *(v7 + 40) = 0u;
        *(v7 + 24) = 0u;
        v10 = &unk_1F5D00520;
      }
    }

    *(v7 + 64) = 0;
    *(v7 + 72) = 0;
    *v7 = v10;
  }

  return v7;
}

uint64_t re::ecs2::StateCommandFactoryECS::createStateCommand(re *a1, const StringID *a2)
{
  v3 = 0;
  if (a1 > 2)
  {
    if (a1 == 3)
    {
      v8 = re::globalAllocators(a1);
      v3 = (*(*v8[2] + 32))(v8[2], 80, 8);
      *v3 = &unk_1F5CF08E8;
      re::StringID::StringID((v3 + 8), a2);
      *(v3 + 56) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      v5 = &unk_1F5D00468;
      goto LABEL_10;
    }

    if (a1 == 4)
    {
      v6 = re::globalAllocators(a1);
      v3 = (*(*v6[2] + 32))(v6[2], 88, 8);
      *v3 = &unk_1F5CF08E8;
      re::StringID::StringID((v3 + 8), a2);
      *(v3 + 56) = 0;
      *(v3 + 40) = 0u;
      *(v3 + 24) = 0u;
      v5 = &unk_1F5D00520;
      goto LABEL_10;
    }
  }

  else if (a1 == 1)
  {
    v7 = re::globalAllocators(a1);
    v3 = (*(*v7[2] + 32))(v7[2], 104, 8);
    *v3 = &unk_1F5CF08E8;
    re::StringID::StringID((v3 + 8), a2);
    *(v3 + 56) = 0;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *v3 = &unk_1F5D002F8;
    *(v3 + 80) = 0;
    *(v3 + 88) = &str_67;
    *(v3 + 96) = 0;
  }

  else if (a1 == 2)
  {
    v4 = re::globalAllocators(a1);
    v3 = (*(*v4[2] + 32))(v4[2], 80, 8);
    *v3 = &unk_1F5CF08E8;
    re::StringID::StringID((v3 + 8), a2);
    *(v3 + 56) = 0;
    *(v3 + 40) = 0u;
    *(v3 + 24) = 0u;
    v5 = &unk_1F5D003B0;
LABEL_10:
    *(v3 + 64) = 0;
    *(v3 + 72) = 0;
    *v3 = v5;
  }

  return v3;
}

void re::ecs2::ECSStateCommand::~ECSStateCommand(re::ecs2::ECSStateCommand *this)
{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);
}

{
  *this = &unk_1F5CF08E8;
  v2 = (this + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 32);
  re::StringID::destroyString(v2);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecsNetworkLogObjects(re *this)
{
  {
    re::ecsNetworkLogObjects(void)::logObjects = os_log_create("com.apple.re", "ECS.Network");
  }

  return &re::ecsNetworkLogObjects(void)::logObjects;
}

void *re::ecs2::allocInfo_OpacityService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_259, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_259))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8990, "OpacityService");
    __cxa_guard_release(&_MergedGlobals_259);
  }

  return &unk_1EE1A8990;
}

void re::ecs2::initInfo_OpacityService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xFB68753FBF224094;
  v6[1] = "OpacityService";
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
  *(this + 8) = &re::ecs2::initInfo_OpacityService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re *re::ecs2::PhysicsSimulationData::deinit(re *this)
{
  v17 = *MEMORY[0x1E69E9840];
  if (*(this + 2))
  {
    v1 = this;
    v2 = *re::physicsLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v3 = v1[2];
      v13 = 134218240;
      v14 = v1;
      v15 = 2048;
      v16 = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "PhysicsSimulationData::deinit %p %p", &v13, 0x16u);
    }

    if (*v1)
    {
      v4 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(*v1);
      if (v4)
      {
        (*(*v4 + 216))(v4, v1[2]);
      }
    }

    this = re::internal::destroyPersistent<re::PhysicsSimulation>("deinit", 75, v1[2]);
    v1[2] = 0;
    v5 = v1[3];
    if (v5)
    {
      v6 = re::globalAllocators(this)[2];
      (**v5)(v5);
      this = (*(*v6 + 40))(v6, v5);
    }

    v1[3] = 0;
    v7 = v1[4];
    if (v7)
    {
      v8 = re::globalAllocators(this)[2];
      (**v7)(v7);
      this = (*(*v8 + 40))(v8, v7);
    }

    v1[4] = 0;
    v9 = v1[5];
    if (v9)
    {
      v10 = re::globalAllocators(this)[2];
      (**v9)(v9);
      this = (*(*v10 + 40))(v10, v9);
    }

    v1[5] = 0;
    v11 = v1[6];
    if (v11)
    {
      v12 = re::globalAllocators(this)[2];
      (**v11)(v11);
      this = (*(*v12 + 40))(v12, v11);
    }

    v1[6] = 0;
  }

  return this;
}

re *re::internal::destroyPersistent<re::PhysicsSimulation>(re *result, uint64_t a2, void (***a3)(void))
{
  if (a3)
  {
    v4 = re::globalAllocators(result)[2];
    (**a3)(a3);
    v5 = *(*v4 + 40);

    return v5(v4, a3);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(re::ecs2::PhysicsSimulationData *this)
{
  v33 = *MEMORY[0x1E69E9840];
  result = *(this + 2);
  if (!result)
  {
    WeakRetained = objc_loadWeakRetained(this + 7);
    v5 = WeakRetained;
    if (WeakRetained)
    {
      v6 = WeakRetained - 8;
    }

    else
    {
      v6 = 0;
    }

    if (WeakRetained)
    {
    }

    v7 = re::PhysicsFactory::defaultFactory(WeakRetained, v4);
    *(this + 2) = (*(*v7 + 32))(v7, re::PhysicsFactory::m_defaultAllocator);
    v8 = *this;
    if (*this)
    {
      v8 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
      if (v8)
      {
        v8 = (*(*v8 + 224))(v8, *(this + 2));
      }
    }

    v9 = *re::physicsLogObjects(v8);
    v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
    if (v10)
    {
      if (v5)
      {
        v11 = *(v5 + 36);
      }

      else
      {
        v11 = "null";
      }

      v12 = *(this + 2);
      v27 = 136315650;
      v28 = v11;
      v29 = 2048;
      v30 = v6;
      v31 = 2048;
      v32 = v12;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "----- CREATING SIMULATION FOR ROOT ENTITY %s (%p) %p ------ ", &v27, 0x20u);
    }

    v13 = *(this + 2);
    v14 = *this;
    v15 = re::ServiceLocator::serviceOrNull<re::JobService>(*this);
    v16 = *(this + 2);
    *(v16 + 68) = *(this + 64);
    *(v16 + 64) = *(this + 65);
    v17 = re::ServiceLocator::serviceOrNull<re::EventBus>(*this);
    v18 = re::globalAllocators(v17);
    v19 = (*(*v18[2] + 32))(v18[2], 16, 8);
    *v19 = &unk_1F5D00F78;
    *(v19 + 1) = v17;
    *(this + 3) = v19;
    *(*(*(this + 2) + 56) + 64) = v19;
    v20 = re::globalAllocators(v19);
    v21 = (*(*v20[2] + 32))(v20[2], 16, 8);
    *v21 = &unk_1F5CF1078;
    *(v21 + 1) = v17;
    *(this + 4) = v21;
    v22 = re::globalAllocators(v21);
    v23 = (*(*v22[2] + 32))(v22[2], 192, 16);
    *(v23 + 48) = 0;
    *(v23 + 56) = 0;
    *v23 = &unk_1F5CF71C0;
    *(v23 + 8) = 0u;
    *(v23 + 24) = 0u;
    *(v23 + 40) = 0x7FFFFFFF00000000;
    *(v23 + 64) = xmmword_1E3047670;
    *(v23 + 80) = xmmword_1E3047680;
    *(v23 + 96) = xmmword_1E30476A0;
    *(v23 + 112) = xmmword_1E30474D0;
    *(v23 + 128) = xmmword_1E3047670;
    *(v23 + 144) = xmmword_1E3047680;
    *(v23 + 160) = xmmword_1E30476A0;
    *(v23 + 176) = xmmword_1E30474D0;
    *(this + 6) = v23;
    v24 = *(this + 2);
    *(v24 + 40) = v23;
    if ((*(this + 264) & 1) == 0)
    {
      v25 = re::globalAllocators(v23);
      v26 = (*(*v25[2] + 32))(v25[2], 32, 8);
      *(v26 + 24) = 0;
      *(v26 + 8) = 0;
      *(v26 + 16) = 0;
      *v26 = &unk_1F5CF0C68;
      objc_initWeak((v26 + 24), 0);
      *(this + 5) = v26;
      v24 = *(this + 2);
      *(v24 + 32) = v26;
    }

    (*(**(v24 + 56) + 120))(*(v24 + 56), this + 112);
    return *(this + 2);
  }

  return result;
}

__n128 re::ecs2::PhysicsSimulationData::setGravityOverride(__n128 *a1, __n128 *a2)
{
  if (a1[4].n128_u8[0])
  {
    if ((a2->n128_u8[0] & 1) == 0)
    {
      a1[4].n128_u8[0] = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((a2->n128_u8[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    a1[4].n128_u8[0] = 1;
  }

  a1[5] = a2[1];
LABEL_7:
  if (a2->n128_u8[0] == 1)
  {
    v3 = a2 + 1;
  }

  else
  {
    v4 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(a1->n128_u64[0]);
    v3 = (*(*v4 + 104))(v4);
  }

  v7 = *v3;
  v5 = a1[1].n128_i64[0];
  if (v5)
  {
    (*(*v5 + 80))(a1[1].n128_u64[0], &v7);
  }

  else
  {
    result = *v3;
    a1[15] = *v3;
  }

  return result;
}

uint64_t re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(a1);
  if (!result)
  {
    v2 = re::introspect<re::ecs2::PhysicsSimulationService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::ecs2::PhysicsSimulationService>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v3, v6, v7);
    if (v7[8])
    {
      v5 = *&v8[7];
    }

    else
    {
      v5 = v8;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::setFixedTimeStepOverride(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (*(result + 96))
  {
    if ((*a2 & 1) == 0)
    {
      *(result + 96) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((*a2 & 1) == 0)
    {
      goto LABEL_7;
    }

    *(result + 96) = 1;
  }

  *(result + 100) = *(a2 + 4);
LABEL_7:
  if (*a2 == 1)
  {
    v3 = *(a2 + 4);
  }

  else
  {
    v4 = re::ServiceLocator::service<re::ecs2::PhysicsSimulationService>(*result);
    result = (*(*v4 + 152))(v4);
  }

  v5 = *(v2 + 16);
  if (v5)
  {
    *(v5 + 68) = v3;
  }

  else
  {
    *(v2 + 256) = v3;
  }

  return result;
}

void re::ecs2::PhysicsSimulationData::updatePhysicsOrigin(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  v5 = a2[3];
  *(a1 + 144) = a2[2];
  *(a1 + 160) = v5;
  *(a1 + 112) = v3;
  *(a1 + 128) = v4;
  *(a1 + 176) = __invert_f4(*a2);
  v6 = *(a1 + 16);
  if (v6)
  {
    v7 = *(**(v6 + 56) + 120);

    v7();
  }
}

double re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace@<D0>(float32x4_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v3 = 0;
  v4 = a1[11];
  v5 = a1[12];
  v6 = a1[13];
  v7 = a1[14];
  v8 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v8;
  do
  {
    v14[v3] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v4, COERCE_FLOAT(v13[v3])), v5, *&v13[v3], 1), v6, v13[v3], 2), v7, v13[v3], 3);
    ++v3;
  }

  while (v3 != 4);
  result = *v14;
  v10 = v14[1];
  v11 = v14[2];
  v12 = v14[3];
  *a3 = v14[0];
  a3[1] = v10;
  a3[2] = v11;
  a3[3] = v12;
  return result;
}

uint64_t re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *(a1 + 8);
  v8 = *(a3 + 32);
  if (v8)
  {
    if ((*(v8 + 304) & 0x80) != 0)
    {
      v9 = 0;
    }

    else
    {
      v9 = *(a3 + 32);
    }
  }

  else
  {
    v9 = 0;
  }

  re::TransformService::worldMatrix(v7, v9, 0, v26);
  v34.columns[2] = v26[2];
  v34.columns[3] = v26[3];
  v34.columns[0] = v26[0];
  v34.columns[1] = v26[1];
  v35 = __invert_f4(v34);
  v10 = 0;
  v11 = *(a1 + 128);
  v12 = *(a1 + 144);
  v13 = *(a1 + 160);
  v27 = *(a1 + 112);
  v28 = v11;
  v29 = v12;
  v30 = v13;
  do
  {
    v31[v10 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35.columns[0], COERCE_FLOAT(*(&v27 + v10))), v35.columns[1], *&v27.i8[v10], 1), v35.columns[2], *(&v27 + v10), 2), v35.columns[3], *(&v27 + v10), 3);
    v10 += 16;
  }

  while (v10 != 64);
  v14 = 0;
  v15 = v31[0];
  v16 = v31[1];
  v17 = v31[2];
  v18 = v31[3];
  v19 = *(a2 + 16);
  v20 = *(a2 + 32);
  v21 = *(a2 + 48);
  v27 = *a2;
  v28 = v19;
  v29 = v20;
  v30 = v21;
  do
  {
    v31[v14 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v15, COERCE_FLOAT(*(&v27 + v14))), v16, *&v27.i8[v14], 1), v17, *(&v27 + v14), 2), v18, *(&v27 + v14), 3);
    v14 += 16;
  }

  while (v14 != 64);
  v27 = 0u;
  v32 = 0u;
  v33 = xmmword_1E30474D0;
  result = re::decomposeScaleRotationTranslation<float>(v31, &v27, &v33, &v32);
  v23 = v27.i64[1];
  v24 = v33;
  v25 = v32;
  *a4 = v27.i64[0];
  *(a4 + 8) = v23;
  *(a4 + 16) = v24;
  *(a4 + 32) = v25;
  return result;
}

uint64_t re::introspect<re::ecs2::PhysicsSimulationService>(unsigned int a1)
{
  v1 = &unk_1EE187000;
  {
    v1 = &unk_1EE187000;
    if (v3)
    {
      re::introspect<re::ecs2::PhysicsSimulationService>(BOOL)::info = re::ecs2::introspect_PhysicsSimulationService(a1);
      v1 = &unk_1EE187000;
    }
  }

  return v1[74];
}

void *re::ecs2::allocInfo_LightGroupComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_260, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_260))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8A38, "LightGroupComponent");
    __cxa_guard_release(&_MergedGlobals_260);
  }

  return &unk_1EE1A8A38;
}

void re::ecs2::initInfo_LightGroupComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE3D9149F7DF89FA8;
  v10[1] = "LightGroupComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A8A30, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8A30);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A8A28 = v8;
      __cxa_guard_release(&qword_1EE1A8A30);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A8A28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LightGroupComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LightGroupComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LightGroupComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LightGroupComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219LightGroupComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::LightGroupComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDCBB0;
}

void re::internal::defaultConstructV2<re::ecs2::LightGroupComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDCBB0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219LightGroupComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_ChannelAudioComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_261, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_261))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8AE8, "ChannelAudioComponent");
    __cxa_guard_release(&_MergedGlobals_261);
  }

  return &unk_1EE1A8AE8;
}

void re::ecs2::initInfo_ChannelAudioComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xD5EC3C99B0BB5314;
  v14[1] = "ChannelAudioComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A8AD0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8AD0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A8AD8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "gain";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A8AE0 = v12;
      __cxa_guard_release(&qword_1EE1A8AD0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A8AD8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ChannelAudioComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ChannelAudioComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ChannelAudioComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ChannelAudioComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221ChannelAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::ChannelAudioComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD9660;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::ChannelAudioComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD9660;
  *(v1 + 28) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221ChannelAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 6;
    *(a2 + 8) = 0;
  }
}

re::VideoBufferInfo *re::VideoBufferInfo::VideoBufferInfo(re::VideoBufferInfo *this, CVPixelBufferRef pixelBuffer)
{
  *this = CVPixelBufferGetWidth(pixelBuffer);
  *(this + 1) = CVPixelBufferGetHeight(pixelBuffer);
  PixelFormatType = CVPixelBufferGetPixelFormatType(pixelBuffer);
  re::PeerVideoStreamingUtils::mtlPixelFormatFromCVPixelFormat(PixelFormatType, v5);
  *(this + 4) = 80;
  return this;
}

uint64_t re::PeerVideoStreamingUtils::mtlPixelFormatFromCVPixelFormat(re::PeerVideoStreamingUtils *this, uint64_t a2)
{
  if (this == 1111970369)
  {
    return 80;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unsupported CV pixel format %lu", "false", "mtlPixelFormatFromCVPixelFormat", 432, this);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t *re::VideoBufferInfo::debugStr@<X0>(re::VideoBufferInfo *this@<X0>, re::DynamicString *a2@<X8>)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::DynamicString::setCapacity(&v11, 0);
  v5 = *(this + 4);
  if (v5)
  {
    v6 = re::PeerVideoStreamingUtils::cvPixelFormatFromMTLPixelFormat(v5, v4);
    strcpy(__s, "ARGB");
    re::DynamicString::operator=(&v11, &v9);
    if (v9 && (v10 & 1) != 0)
    {
      (*(*v9 + 40))();
    }
  }

  else
  {
    v9 = "Invalid";
    v10 = 7;
    re::DynamicString::operator=(&v11, &v9);
  }

  if (v12)
  {
    v7 = v13;
  }

  else
  {
    v7 = &v12 + 1;
  }

  re::DynamicString::format("(Size %lux%lu, Format %s)", a2, *this, *(this + 1), v7);
  result = v11;
  if (v11)
  {
    if (v12)
    {
      return (*(*v11 + 40))();
    }
  }

  return result;
}

uint64_t re::PeerVideoStreamingUtils::cvPixelFormatFromMTLPixelFormat(int a1, uint64_t a2)
{
  if ((a1 & 0xFFFFFFFE) == 0x50)
  {
    return 1111970369;
  }

  re::internal::assertLog(5, a2, "assertion failure: '%s' (%s:line %i) Unsupported metal format: %lu", "false", "cvPixelFormatFromMTLPixelFormat", 444, a1);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::PeerVideoStreamingUtils::writeCMSampleBuffer(re::zerocopy **this, re::OPackWriter *a2, opaqueCMSampleBuffer *a3)
{
  v14 = -27;
  re::zerocopy::writeAll(*this, &v14, 1);
  v15 = 8;
  re::zerocopy::writeAll(*this, &v15, 1);
  FormatDescription = CMSampleBufferGetFormatDescription(a2);
  re::PeerVideoStreamingUtils::writeCMFormatDescription(this, FormatDescription, v7);
  v16 = 9;
  re::zerocopy::writeAll(*this, &v16, 1);
  NumSamples = CMSampleBufferGetNumSamples(a2);
  re::OPackWriter::writeInteger(this, NumSamples);
  v17 = 10;
  re::zerocopy::writeAll(*this, &v17, 1);
  re::OPackWriter::writeArrayBegin(this, NumSamples);
  if (NumSamples)
  {
    for (i = 0; i != NumSamples; ++i)
    {
      SampleSize = CMSampleBufferGetSampleSize(a2, i);
      re::OPackWriter::writeInteger(this, SampleSize);
    }

    if (NumSamples >= 0xF)
    {
      v18 = 3;
      re::zerocopy::writeAll(*this, &v18, 1);
    }
  }

  v19 = 11;
  re::zerocopy::writeAll(*this, &v19, 1);
  DataBuffer = CMSampleBufferGetDataBuffer(a2);
  re::PeerVideoStreamingUtils::writeCMBlockBuffer(this, DataBuffer, v12);
  v20 = 12;
  re::zerocopy::writeAll(*this, &v20, 1);

  return re::OPackWriter::writeInteger(this, a3);
}

uint64_t re::PeerVideoStreamingUtils::writeCMFormatDescription(re::zerocopy **this, CMFormatDescriptionRef videoDesc, const opaqueCMFormatDescription *a3)
{
  v22 = *MEMORY[0x1E69E9840];
  parameterSetCountOut = 0;
  NALUnitHeaderLengthOut = 0;
  HEVCParameterSetAtIndex = CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(videoDesc, 0, 0, 0, &parameterSetCountOut, &NALUnitHeaderLengthOut);
  if (HEVCParameterSetAtIndex)
  {
    v6 = HEVCParameterSetAtIndex;
    v7 = *re::peerVideoStreamingLogObjects(HEVCParameterSetAtIndex);
    HEVCParameterSetAtIndex = os_log_type_enabled(v7, OS_LOG_TYPE_ERROR);
    if (HEVCParameterSetAtIndex)
    {
      LODWORD(parameterSetPointerOut) = 67109120;
      HIDWORD(parameterSetPointerOut) = v6;
      _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Error getting parameter set: %d", &parameterSetPointerOut, 8u);
    }
  }

  if (NALUnitHeaderLengthOut != 4)
  {
    v8 = *re::peerVideoStreamingLogObjects(HEVCParameterSetAtIndex);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      parameterSetPointerOut = 0x404000200;
      v20 = 1024;
      v21 = NALUnitHeaderLengthOut;
      _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "Expected parameter sets to use NAL header size of %d. Parameters are using %d instead.", &parameterSetPointerOut, 0xEu);
    }
  }

  result = re::OPackWriter::writeArrayBegin(this, parameterSetCountOut);
  if (parameterSetCountOut)
  {
    for (i = 0; i < parameterSetCountOut; ++i)
    {
      parameterSetPointerOut = 0;
      parameterSetSizeOut = 0;
      v11 = CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(videoDesc, i, &parameterSetPointerOut, &parameterSetSizeOut, 0, 0);
      if (v11)
      {
        v12 = v11;
        v13 = *re::peerVideoStreamingLogObjects(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 67109120;
          v18 = v12;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Error getting parameter set, errCode: %d", buf, 8u);
        }
      }

      result = re::OPackWriter::writeData(this, parameterSetPointerOut, parameterSetSizeOut);
    }

    if (parameterSetCountOut >= 0xF)
    {
      LOBYTE(parameterSetPointerOut) = 3;
      return re::zerocopy::writeAll(*this, &parameterSetPointerOut, 1);
    }
  }

  return result;
}

void re::PeerVideoStreamingUtils::writeCMBlockBuffer(re::zerocopy **this, CMBlockBufferRef theBuffer, OpaqueCMBlockBuffer *a3)
{
  lengthAtOffsetOut[1] = *MEMORY[0x1E69E9840];
  DataLength = CMBlockBufferGetDataLength(theBuffer);
  blockBufferOut = 0;
  v6 = CMBlockBufferCreateContiguous(0, theBuffer, 0, 0, 0, DataLength, 0, &blockBufferOut);
  if (v6)
  {
    v7 = v6;
    v8 = *re::peerVideoStreamingLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      LODWORD(lengthAtOffsetOut[0]) = 67109120;
      HIDWORD(lengthAtOffsetOut[0]) = v7;
      v9 = "Error creating contiguous CMSampleBuffer, errCode: %d";
      v10 = lengthAtOffsetOut;
LABEL_7:
      v14 = v8;
      v15 = 8;
LABEL_8:
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, v9, v10, v15);
    }
  }

  else
  {
    lengthAtOffsetOut[0] = 0;
    dataPointerOut = 0;
    totalLengthOut = 0;
    DataPointer = CMBlockBufferGetDataPointer(blockBufferOut, 0, lengthAtOffsetOut, &totalLengthOut, &dataPointerOut);
    if (DataPointer)
    {
      v12 = DataPointer;
      CFRelease(blockBufferOut);
      v8 = *re::peerVideoStreamingLogObjects(v13);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        *buf = 67109120;
        v22 = v12;
        v9 = "Error getting CMSampleBuffer data pointer, errCode: %d";
        v10 = buf;
        goto LABEL_7;
      }
    }

    else if (lengthAtOffsetOut[0] == totalLengthOut)
    {
      re::OPackWriter::writeData(this, dataPointerOut, lengthAtOffsetOut[0]);
      CFRelease(blockBufferOut);
    }

    else
    {
      CFRelease(blockBufferOut);
      v17 = *re::peerVideoStreamingLogObjects(v16);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        v9 = "Expected lengthAtOffset == totalLength because buffer is contiguous.";
        v10 = buf;
        v14 = v17;
        v15 = 2;
        goto LABEL_8;
      }
    }
  }
}

BOOL re::PeerVideoStreamingUtils::readCMSampleBuffer(re::PeerVideoStreamingUtils *this, re::OPackReader *a2, unint64_t *a3, opaqueCMSampleBuffer **a4, unint64_t *a5)
{
  v73 = *MEMORY[0x1E69E9840];
  v10 = 0;
  if (re::OPackReader::next(this, a2) && *(this + 196) == 13)
  {
    v55 = a3;
    sampleSizeArray = 0;
    formatDescriptionOut = 0;
    v60[1] = 0;
    v61 = 0;
    v60[0] = 0;
    v62 = 0;
    v12 = 0;
    if (re::OPackReader::next(this, v9))
    {
      v13 = 0;
      if (*(this + 196) == 6)
      {
        v13 = 0;
        v12 = 0;
        while (1)
        {
          v10 = 0;
          v14 = *(this + 224);
          if (v14 <= 1)
          {
            break;
          }

          switch(v14)
          {
            case 2u:
              v10 = 0;
              if (!re::OPackReader::next(this, v11) || *(this + 196) != 12)
              {
                goto LABEL_89;
              }

              while (re::OPackReader::next(this, v33) && *(this + 184) != 3)
              {
                *(this + 2) = 1;
                v10 = 0;
                if (!re::OPackReader::next(this, v15) || *(this + 196) != 6)
                {
                  goto LABEL_89;
                }

                destinationBuffer[0] = *(this + 28);
                re::DynamicArray<unsigned long>::add(v60, destinationBuffer);
              }

              break;
            case 3u:
              v10 = 0;
              if (!re::OPackReader::next(this, v11) || *(this + 196) != 11)
              {
                goto LABEL_89;
              }

              destinationBuffer[0] = 0;
              v16 = CMBlockBufferCreateWithMemoryBlock(0, 0, *(this + 27), 0, 0, 0, *(this + 27), 1u, destinationBuffer);
              v17 = v16;
              if (!destinationBuffer[0] || v16)
              {
                v52 = *re::peerVideoStreamingLogObjects(v16);
                if (!os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  goto LABEL_88;
                }

                *v68 = 67109120;
                *&v68[4] = v17;
                v49 = "Failed to create block buffer, errCode: %d";
                goto LABEL_94;
              }

              v18 = CMBlockBufferReplaceDataBytes(*(this + 26), destinationBuffer[0], 0, *(this + 27));
              v12 = destinationBuffer[0];
              if (v18)
              {
                v50 = v18;
                CFRelease(destinationBuffer[0]);
                v52 = *re::peerVideoStreamingLogObjects(v51);
                if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
                {
                  *v68 = 67109120;
                  *&v68[4] = v50;
                  v49 = "Failed to copy data to block buffer, errCode: %d";
LABEL_94:
                  _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, v49, v68, 8u);
                }

LABEL_88:
                v10 = 0;
                goto LABEL_89;
              }

              break;
            case 4u:
              v10 = 0;
              if (!re::OPackReader::next(this, v11) || *(this + 196) != 6)
              {
                goto LABEL_89;
              }

              *a4 = *(this + 28);
              break;
            default:
              goto LABEL_89;
          }

LABEL_65:
          if (!re::OPackReader::next(this, v15) || *(this + 196) != 6)
          {
            goto LABEL_69;
          }
        }

        if (*(this + 224))
        {
          if (v14 != 1)
          {
            goto LABEL_89;
          }

          v10 = 0;
          if (!re::OPackReader::next(this, v11) || *(this + 196) != 6)
          {
            goto LABEL_89;
          }

          v13 = *(this + 28);
          goto LABEL_65;
        }

        v10 = 0;
        if (!re::OPackReader::next(this, v11) || *(this + 196) != 12)
        {
          goto LABEL_89;
        }

        *&v57[16] = 0;
        destinationBuffer[1] = 0;
        *v57 = 0;
        destinationBuffer[0] = 0;
        *&v57[8] = 0;
        v72 = 0;
        v69 = 0;
        v70 = 0;
        *v68 = 0;
        v71 = 0;
        v20 = re::OPackReader::next(this, v19);
        v22 = 0;
        if (v20)
        {
          v23 = 0;
          v24 = 0;
          if (*(this + 184) != 3)
          {
            v25 = 0;
            v26 = 0;
            v24 = 0;
            while (1)
            {
              *(this + 2) = 1;
              v27 = re::OPackReader::next(this, v21);
              v28 = 0;
              if (!v27 || *(this + 196) != 11)
              {
                break;
              }

              if (v24 >= destinationBuffer[1])
              {
                v29 = (v24 + 1);
                if (destinationBuffer[1] < v29)
                {
                  if (destinationBuffer[0])
                  {
                    v30 = 8;
                    if (destinationBuffer[1])
                    {
                      v30 = 2 * destinationBuffer[1];
                    }

                    if (v30 <= v29)
                    {
                      v31 = v29;
                    }

                    else
                    {
                      v31 = v30;
                    }

                    re::DynamicArray<float *>::setCapacity(destinationBuffer, v31);
                    v25 = *&v57[8];
                  }

                  else
                  {
                    re::DynamicArray<float *>::setCapacity(destinationBuffer, v29);
                    v25 = *&v57[8] + 1;
                  }
                }

                v24 = *v57;
                v26 = *&v57[16];
              }

              *(v26 + 8 * v24++) = *(this + 26);
              *v57 = v24;
              *&v57[8] = ++v25;
              re::DynamicArray<unsigned long>::add(v68, this + 27);
              if (!re::OPackReader::next(this, v32) || *(this + 184) == 3)
              {
                v23 = *&v57[16];
                v22 = v72;
                goto LABEL_53;
              }
            }

LABEL_58:
            if (*v68)
            {
              v15 = v72;
              if (v72)
              {
                (*(**v68 + 40))(*v68);
              }
            }

            if (destinationBuffer[0])
            {
              v15 = *&v57[16];
              if (*&v57[16])
              {
                (*(*destinationBuffer[0] + 40))();
              }
            }

            if ((v28 & 1) == 0)
            {
              goto LABEL_88;
            }

            goto LABEL_65;
          }
        }

        else
        {
          v23 = 0;
          v24 = 0;
        }

LABEL_53:
        v34 = CMVideoFormatDescriptionCreateFromHEVCParameterSets(0, v24, v23, v22, 4, 0, &formatDescriptionOut);
        if (v34)
        {
          v35 = v34;
          v36 = *re::peerVideoStreamingLogObjects(v34);
          if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
          {
            LODWORD(buf.value) = 67109120;
            HIDWORD(buf.value) = v35;
            _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Error creating format description from parameters, errCode: %d", &buf, 8u);
          }

          v28 = 0;
        }

        else
        {
          v28 = 1;
        }

        goto LABEL_58;
      }
    }

    else
    {
      v13 = 0;
    }

LABEL_69:
    if (*(this + 184) != 5)
    {
      goto LABEL_88;
    }

    v72 = 0;
    v69 = 0;
    v70 = 0;
    v71 = 0;
    v58 = *MEMORY[0x1E6960C70];
    v59 = *(MEMORY[0x1E6960C70] + 16);
    CMTimeMake(destinationBuffer, 1, 90);
    v37 = (*a2)++;
    v38 = CMTimeMake(&buf, v37, 90);
    *&v57[8] = buf;
    re::DynamicArray<CMSampleTimingInfo>::setCapacity(v68, 1uLL);
    v39 = v71;
    v40 = v70;
    v41 = v72;
    v42 = &v72[v70];
    *&v42->duration.value = *destinationBuffer;
    v43 = v58;
    v44 = *&v57[16];
    v45 = *v57;
    v42->decodeTimeStamp.epoch = v59;
    *&v42->presentationTimeStamp.timescale = v44;
    *&v42->decodeTimeStamp.value = v43;
    *&v42->duration.epoch = v45;
    v70 = v40 + 1;
    v71 = v39 + 2;
    buf.value = 0;
    v46 = CMSampleBufferCreate(*MEMORY[0x1E695E480], v12, 1u, 0, 0, formatDescriptionOut, v13, v40 + 1, v41, v61, sampleSizeArray, &buf);
    v10 = v46 == 0;
    v47 = formatDescriptionOut;
    if (v46)
    {
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      v48 = *re::peerVideoStreamingLogObjects(v47);
      if (os_log_type_enabled(v48, OS_LOG_TYPE_ERROR))
      {
        *v65 = 67109120;
        v66 = v46;
        _os_log_error_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_ERROR, "Failed to create CMSampleBuffer, errCode: %d", v65, 8u);
      }
    }

    else
    {
      if (formatDescriptionOut)
      {
        CFRelease(formatDescriptionOut);
      }

      if (v12)
      {
        CFRelease(v12);
      }

      *v55 = buf.value;
    }

    if (*v68 && v72)
    {
      (*(**v68 + 40))();
    }

LABEL_89:
    if (v60[0] && sampleSizeArray)
    {
      (*(*v60[0] + 40))();
    }
  }

  return v10;
}

void *re::DynamicArray<CMSampleTimingInfo>::setCapacity(void *result, unint64_t a2)
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

        if (is_mul_ok(a2, 0x48uLL))
        {
          v2 = 72 * a2;
          result = (*(*result + 32))(result, 72 * a2, 4);
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
            memcpy(v7, v5[4], 72 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
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
      }

      else
      {
        result = re::DynamicArray<CMSampleTimingInfo>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_UIGroundingShadowService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_262, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_262))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8B80, "UIGroundingShadowService");
    __cxa_guard_release(&_MergedGlobals_262);
  }

  return &unk_1EE1A8B80;
}

void re::ecs2::initInfo_UIGroundingShadowService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x5B1C4CC1C23827DCLL;
  v6[1] = "UIGroundingShadowService";
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
  *(this + 8) = &re::ecs2::initInfo_UIGroundingShadowService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_ReverbComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_263, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_263))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8C48, "ReverbComponent");
    __cxa_guard_release(&_MergedGlobals_263);
  }

  return &unk_1EE1A8C48;
}

void re::ecs2::initInfo_ReverbComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x53A499A3A873EE56;
  v22[1] = "ReverbComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1A8C18, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8C18);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A8C28 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint16_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "priority";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2A00000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A8C30 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "allowSpaceBlendingWithReverbPreset";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A8C38 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_ReverbPreset(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "reverbPreset";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A8C40 = v20;
      __cxa_guard_release(&qword_1EE1A8C18);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A8C28;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReverbComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReverbComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReverbComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReverbComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215ReverbComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::ecs2::ReverbComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF0A80;
  *(v3 + 32) = -1;
  *(v3 + 40) = 1;
  *(v3 + 42) = 1;
}

void re::internal::defaultConstructV2<re::ecs2::ReverbComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF0A80;
  *(v1 + 32) = -1;
  *(v1 + 40) = 1;
  *(v1 + 42) = 1;
}

void *re::ecs2::allocInfo_ReverbSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8C20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8C20))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8CD8, "ReverbSystem");
    __cxa_guard_release(&qword_1EE1A8C20);
  }

  return &unk_1EE1A8CD8;
}

void re::ecs2::initInfo_ReverbSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3C372182C9CAED82;
  v6[1] = "ReverbSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1F000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ReverbSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ReverbSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ReverbSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ReverbSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ReverbSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ReverbSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ReverbSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::ReverbSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 32);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::ReverbSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 32);

  re::ecs2::System::~System(a1);
}

void re::ecs2::ReverbComponent::~ReverbComponent(re::ecs2::ReverbComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::ReverbComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v42 = *MEMORY[0x1E69E9840];
  v5 = *(a3 + 8);
  if (!v5)
  {
    return 0;
  }

  result = *(a1 + 8);
  if (result)
  {
    v11 = (*(*result + 16))(result, *(a3 + 8));
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v37, a5, 0);
    v12 = v37;
    v28 = v37;
    v29 = DWORD2(v37);
    v13 = WORD4(v37);
    v14 = HIWORD(DWORD2(v37));
    if (v37 != a5 || WORD4(v37) != 0xFFFF || v14 != 0xFFFF)
    {
      do
      {
        v17 = v14;
        v18 = *(v12 + 16);
        if (v18 <= v14)
        {
          v30 = 0;
          v40 = 0u;
          v41 = 0u;
          v38 = 0u;
          v39 = 0u;
          v37 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *buf = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          *v34 = 797;
          *&v34[4] = 2048;
          *&v34[6] = v17;
          v35 = 2048;
          v36 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v19 = *(*(*(v12 + 32) + 16 * v14) + 8 * v13);
        if (*(v19 + 16))
        {
          v20 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v28);
          v21 = re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), a4, v20, *(a3 + 48));
          v22 = *re::audioLogObjects(v21);
          if (os_log_type_enabled(v22, OS_LOG_TYPE_DEBUG))
          {
            v25 = *(v19 + 16);
            v26 = v22;
            re::ecs2::Entity::debugDescription(v25, &v37);
            v27 = &v37 + 9;
            if (BYTE8(v37))
            {
              v27 = v38;
            }

            *buf = 134218242;
            v32 = v19;
            v33 = 2080;
            *v34 = v27;
            _os_log_debug_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEBUG, "[RE/ECS] [Update] ReverbComponentStateImpl::processDirtyComponents: setting state to 'updating' for ReverbComponent %p on entity %s", buf, 0x16u);

            if (v37 && (BYTE8(v37) & 1) != 0)
            {
              (*(*v37 + 40))();
            }
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v28);
        v12 = v28;
        v13 = v29;
        v14 = HIWORD(v29);
      }

      while (v28 != a5 || v29 != 0xFFFF || HIWORD(v29) != 0xFFFF);
    }

    if (*(a1 + 16) && v11)
    {
      if ((*(*v11 + 568))(v11))
      {
        re::ecs2::ReverbSystem::updateLatestReverbPresetState(*(*(a1 + 16) + 224), v5, 0, 0);
      }
    }

    return *(a5 + 40) != 0;
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  result = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[3]);
  if (result != a2 || v7 != a3 || ((v7 ^ a3) & 0xFFFFFF00000000) != 0)
  {
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, result);
    v10 = *a1;
    v11 = a1[1];
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v10 + 56), &v11);
    if (result != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v10 + 168, *(*(v10 + 64) + 16 * result + 8));
      return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v10);
    }
  }

  return result;
}

void re::ecs2::ReverbSystem::updateLatestReverbPresetState(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v41 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v7 = (*(*a1 + 16))(a1, a2);
  if (!v7)
  {
    return;
  }

  v8 = v7;
  v9 = *(*(a2 + 104) + 288) >> 1;
  v10 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!v10)
  {
    goto LABEL_31;
  }

  v11 = *(v10 + 384);
  if (!v11)
  {
    goto LABEL_31;
  }

  v33 = v9;
  v12 = 0;
  v13 = 0;
  v34 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(v10 + 400);
  v17 = &v16[v11];
  do
  {
    v18 = *v16;
    v19 = *(*v16 + 16);
    if (!v19 || (*(v19 + 304) & 1) == 0)
    {
      goto LABEL_9;
    }

    if (a4)
    {
      v22 = 8 * a4;
      v23 = a3;
      while (*v23 != v18)
      {
        ++v23;
        v22 -= 8;
        if (!v22)
        {
          goto LABEL_18;
        }
      }

      if (v22)
      {
        goto LABEL_9;
      }
    }

LABEL_18:
    v24 = *(v19 + 216);
    if (v24)
    {
      v20 = re::ecs2::NetworkComponent::owningProcessType(v24) == 0;
    }

    else
    {
      v20 = 1;
    }

    v21 = *(v18 + 42);
    if (v12)
    {
      v25 = v20 && !v13;
      if (v14 != v21)
      {
        v25 = 0;
      }

      if (v14 >= v21 && !v25)
      {
        v12 = 1;
LABEL_9:
        v20 = v13;
        v21 = v14;
        goto LABEL_10;
      }
    }

    v12 = 1;
    v34 = *(v18 + 40);
    v15 = *(v18 + 32);
LABEL_10:
    ++v16;
    v13 = v20;
    v14 = v21;
  }

  while (v16 != v17);
  v9 = v33;
  if (v12)
  {
    v26 = (*(*v8 + 496))(v8, v33, v15, v34 & 1);
    v27 = *re::audioLogObjects(v26);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218496;
      v36 = v33;
      v37 = 2048;
      v38 = v15;
      v39 = 1024;
      v40 = v34 & 1;
      v28 = "[RE/ECS] [Update] Set sceneID %llu with reverbPreset %lld and allowSpaceBlending %d";
      v29 = v27;
      v30 = 28;
      goto LABEL_33;
    }

    return;
  }

LABEL_31:
  v31 = (*(*v8 + 496))(v8, v9, -1, 1);
  v32 = *re::audioLogObjects(v31);
  if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    v28 = "[RE/ECS] [Update] Set sceneID to default reverbPreset with no valid reverb components in scene.";
    v29 = v32;
    v30 = 2;
LABEL_33:
    _os_log_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_DEFAULT, v28, buf, v30);
  }
}

_anonymous_namespace_ *re::ecs2::ReverbSystem::willAddSystemToECSService(re::ecs2::ReverbSystem *this)
{
  result = *(this + 5);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v3);
    *(this + 28) = result;
    *(this + 30) = result;
  }

  return result;
}

uint64_t re::ecs2::ReverbSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 240) = 0;
  return this;
}

unint64_t re::ecs2::ReverbSystem::willAddSceneToECSService(unint64_t this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v41 = v3;
    *(&v41 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::activateComponents,re::ecs2::ReverbSystem>;
    *&v42 = 0;
    *(&v42 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 96), &v41);
    *&v41 = v3;
    *(&v41 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::deactivateComponents,re::ecs2::ReverbSystem>;
    *&v42 = 0;
    *(&v42 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 184), &v41);
    v40[0] = a2;
    v5 = *(v3 + 384);
    v6 = *(v3 + 392);
    if (v5 >= 0xB)
    {
      if (v6)
      {
        v7 = (v3 + 400);
      }

      else
      {
        v7 = *(v3 + 408);
      }

      v9 = 8 * v5;
      while (!*v7)
      {
        ++v7;
        v9 -= 8;
        if (!v9)
        {
          goto LABEL_18;
        }
      }

      goto LABEL_17;
    }

    if (v6)
    {
      v8 = (v3 + 400);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    else
    {
      v8 = *(v3 + 408);
      if (!v5)
      {
        goto LABEL_18;
      }
    }

    v10 = 0;
    v11 = 8 * v5;
    do
    {
      v12 = *v8++;
      v10 |= v12;
      v11 -= 8;
    }

    while (v11);
    if (v10)
    {
LABEL_17:
      *&v41 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v3 + 376, 0);
      v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 256, v41);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::init(v13, v3 + 256, a2);
      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 312), v40, &v41);
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 376, v41);
      v14 = v41;
LABEL_50:
      this = re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 424, v14);
      if (*(v3 + 488) == 1)
      {
        v38 = *(v3 + 472);
        v39 = *(v40[0] + 376);
        LOWORD(v41) = 257;
        DWORD1(v41) = 1023969417;
        BYTE8(v41) = 0;
        re::ecs2::System::setTaskOptions(v38, v39, &v41);
        return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v3 + 256);
      }

      return this;
    }

LABEL_18:
    v48 = 0u;
    v41 = 0u;
    *&v42 = 0;
    v43 = 0u;
    v44 = 0u;
    *(&v42 + 1) = -1;
    v45 = 0;
    v46 = 1;
    v47 = 0uLL;
    v15 = *(v3 + 296);
    *&v48 = 0;
    v16 = *(v3 + 264);
    DWORD2(v48) = 0;
    if (v15 + 1 > 4 * v16)
    {
      re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::setBucketsCapacity((v3 + 256), (v15 + 4) >> 2);
      v16 = *(v3 + 264);
    }

    if (v16 <= v15 >> 2)
    {
      v40[1] = 0;
      memset(v57, 0, sizeof(v57));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v49 = 136315906;
      v50 = "operator[]";
      v51 = 1024;
      v52 = 858;
      v53 = 2048;
      v54 = v15 >> 2;
      v55 = 2048;
      v56 = v16;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (*(v3 + 272))
      {
        v17 = v3 + 280;
      }

      else
      {
        v17 = *(v3 + 288);
      }

      v18 = *(v17 + 8 * (v15 >> 2));
      ++*(v3 + 296);
      ++*(v3 + 304);
      v19 = v18 + 112 * (v15 & 3);
      v20 = v41;
      v21 = v42;
      v22 = v43;
      *(v19 + 48) = v44;
      *(v19 + 16) = v21;
      *(v19 + 32) = v22;
      *v19 = v20;
      re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v19 + 56, &v44 + 8);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v41);
      v24 = *(v3 + 296);
      if (v24)
      {
        v25 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 256, v24 - 1);
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::init(v25, v3 + 256, v40[0]);
        *&v57[0] = *(v3 + 296) - 1;
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((v3 + 312), v40, v57);
        v26 = *(v3 + 296);
        v27 = *(v3 + 416);
        if ((v26 & 0x3F) != 0)
        {
          v28 = (v26 >> 6) + 1;
        }

        else
        {
          v28 = v26 >> 6;
        }

        *(v3 + 416) = v26;
        *&v41 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 376), v28, &v41);
        if (v26 && v27 > v26)
        {
          v29 = 63;
          v30 = *(v3 + 416) & 0x3FLL;
          if (v30 && v30 != 63)
          {
            v29 = ~(-1 << v30);
          }

          if (*(v3 + 392))
          {
            v31 = v3 + 400;
          }

          else
          {
            v31 = *(v3 + 408);
          }

          *(v31 + 8 * *(v3 + 384) - 8) &= v29;
        }

        v32 = *(v3 + 296);
        v33 = *(v3 + 464);
        if ((v32 & 0x3F) != 0)
        {
          v34 = (v32 >> 6) + 1;
        }

        else
        {
          v34 = v32 >> 6;
        }

        *(v3 + 464) = v32;
        *&v41 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((v3 + 424), v34, &v41);
        if (v32 && v33 > v32)
        {
          v35 = 63;
          v36 = *(v3 + 464) & 0x3FLL;
          if (v36 && v36 != 63)
          {
            v35 = ~(-1 << v36);
          }

          if (*(v3 + 440))
          {
            v37 = v3 + 448;
          }

          else
          {
            v37 = *(v3 + 456);
          }

          *(v37 + 8 * *(v3 + 432) - 8) &= v35;
        }

        v14 = *&v57[0];
        goto LABEL_50;
      }
    }

    re::internal::assertLog(4, v23, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::ecs2::ReverbSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v16 = v3;
    *(&v16 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::activateComponents,re::ecs2::ReverbSystem>;
    v17 = 0;
    v18 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 96, &v16);
    *&v16 = v3;
    *(&v16 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::deactivateComponents,re::ecs2::ReverbSystem>;
    v17 = 0;
    v18 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 184, &v16);
    *&v16 = a2;
    this = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v3 + 312), &v16);
    if (this != -1)
    {
      v5 = *(v3 + 320) + 16 * this;
      re::DynamicBitset<unsigned long long,64ul>::setBit(v3 + 376, *(v5 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit(v3 + 424, *(v5 + 8));
      v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v3 + 256, *(v5 + 8));
      if (*v6)
      {
        v7 = v6;
        *v6 = 0;
        v8 = v6 + 1;
        v9 = *(v6[1] + 288);
        if (v9)
        {
          v10 = v6[12];
          if (v10)
          {
            for (i = 0; i != v10; ++i)
            {
              v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v7 + 7), i);
              re::EventBus::unsubscribe(v9, *v12, *(v12 + 8));
            }
          }
        }

        re::BucketArray<RESubscriptionHandle,8ul>::deinit((v7 + 7));
        v13 = 0;
        v14 = v7 + 3;
        do
        {
          v15 = v7[2];
          if (*v15)
          {
            re::ecs2::ComponentBucketsBase::removeBucket(v15, v14[v13]);
          }

          v14[v13++] = -1;
        }

        while (v13 != 4);
        *v8 = 0;
        v8[1] = 0;
      }

      return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(v3 + 312, &v16);
    }
  }

  return this;
}

uint64_t re::ecs2::ReverbSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  if (*(result + 224))
  {
    v4 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
    re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v30, 3148, v4);
    re::StackScratchAllocator::StackScratchAllocator(v44);
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v38 = v44;
    v39 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
    v40 += 2;
    v5 = v4[58];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v43 = v4[58];
    v33[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v38, v6, v33);
    v7 = *(a3 + 200);
    if (v7)
    {
      v8 = *(a3 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        v33[0] = v10;
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 39, v33);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(v4[40] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (v4 + 53));
    v34 = 1;
    v35 = 0;
    v36 = 0;
    v33[0] = v44;
    v33[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
    v34 += 2;
    v12 = v4[58];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v37 = v4[58];
    v45 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((v4 + 53), &v38);
    v14 = v42;
    if (v40)
    {
      v14 = &v41;
    }

    v15 = v39;
    if ((v39 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v16 = 0;
      while (1)
      {
        v18 = *v14++;
        v17 = v18;
        if (v18)
        {
          break;
        }

        v16 -= 64;
        if (!--v15)
        {
          goto LABEL_31;
        }
      }

      v19 = __clz(__rbit64(v17));
      if (v19 + 1 != v16)
      {
        FirstBitSet = v19 - v16;
        do
        {
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((v4 + 32), FirstBitSet);
          v22 = *(*v21 + 224);
          v23 = v21[3];
          v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
          if (*(v24 + 40))
          {
            v25 = (*(*v22 + 24))(v22, v32, v21, v23, v24, 0);
          }

          else
          {
            v25 = 0;
          }

          v26 = v21[5];
          v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
          if (*(v27 + 40))
          {
            v25 |= (*(*v22 + 32))(v22, v32, v21, v26, v27, 0);
          }

          v28 = v21[6];
          v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
          if (*(v29 + 40))
          {
            if (((v25 | (*(*v22 + 40))(v22, v32, v21, v28, v29, 0)) & 1) == 0)
            {
              goto LABEL_29;
            }
          }

          else if (!v25)
          {
LABEL_29:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
            goto LABEL_30;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_30:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_31:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((v4 + 53), v33);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((v4 + 32));
    if (v33[0] && (v34 & 1) == 0)
    {
      (*(*v33[0] + 40))();
    }

    if (v38)
    {
      if ((v40 & 1) == 0)
      {
        (*(*v38 + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v44);
    re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v30);
    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v31);
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ReverbComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 24;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a2 + 16), *(a2 + v6), v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      v6 += 8;
    }

    while (v6 != 56);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ReverbComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v17, a5, 0);
  v8 = v17;
  v9 = v18;
  v10 = v18;
  v17 = a4;
  v18 = v8;
  v19 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return 0;
}

void re::ecs2::ReverbSystem::~ReverbSystem(re::ecs2::ReverbSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 32);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs215ReverbComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 && ((*(*a1 + 64))(&v5), v5 == 1))
  {
    *a2 = v6;
    v3 = v7;
    *(a2 + 8) = v7;
    if (v3 == 1)
    {
      v4 = re::StringID::StringID((a2 + 16), &v8);
      if (v5 & 1) != 0 && (v7 & 1) != 0 && (*&v8.var0)
      {
        if (*&v8.var0)
        {
        }
      }
    }
  }

  else
  {
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

re::ecs2::ReverbSystem *re::ecs2::ReverbSystem::ReverbSystem(re::ecs2::ReverbSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF09F0;
  v3 = v2 + 232;
  *(v2 + 224) = 0;
  *(v2 + 232) = &unk_1F5CF0988;
  *(v2 + 240) = 0;
  *(v2 + 248) = v2;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 272) = 1;
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 280) = 0;
  *(v2 + 304) = 0;
  v4 = (v2 + 312);
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 1;
  *(v2 + 432) = 0;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 440) = 1;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 473) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 47, 0);
  *(this + 98) += 2;
  *(this + 52) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  *(this + 59) = this;
  *(this + 60) = v3;
  *(this + 488) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 4 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 448, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::activateComponents,re::ecs2::ReverbSystem>(re *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      v7 = *(*a3 + 16);
      v8 = *re::audioLogObjects(a1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        if (v7)
        {
          v9 = *(v7 + 296);
          v10 = *(v7 + 312);
        }

        else
        {
          v10 = 0;
          v9 = "(null)";
        }

        v11 = *(v6 + 32);
        v12 = *(v6 + 40);
        v13 = *(v6 + 42);
        *buf = 136316162;
        v16 = v9;
        v17 = 2048;
        v18 = v10;
        v19 = 1024;
        v20 = v11;
        v21 = 1024;
        v22 = v12;
        v23 = 1024;
        v24 = v13;
        _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "ReverbSystem::activateComponents() ReverbComponent activating, name='%s', entityId=%llu, preset=%d, allowSpaceBlending=%d, priority=%d", buf, 0x28u);
      }

      ++a3;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2[1];
  v5 = a2[2];
  v6 = (*a2 + (v5 >> 1));
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  return v4(v6, a1, *a3, a3[1]);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ReverbComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ReverbSystem::deactivateComponents,re::ecs2::ReverbSystem>(re *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v4 = *a3;
    v5 = *(*a3 + 16);
    v6 = *re::audioLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      if (v5)
      {
        v7 = v5[37];
        v8 = v5[39];
      }

      else
      {
        v8 = 0;
        v7 = "(null)";
      }

      v9 = *(v4 + 32);
      v10 = *(v4 + 40);
      v11 = *(v4 + 42);
      *buf = 136316162;
      v14 = v7;
      v15 = 2048;
      v16 = v8;
      v17 = 1024;
      v18 = v9;
      v19 = 1024;
      v20 = v10;
      v21 = 1024;
      v22 = v11;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "ReverbSystem::deactivateComponents() ReverbComponent deactivating, name='%s', entityId=%llu, preset=%d, allowSpaceBlending=%d, priority=%d", buf, 0x28u);
    }

    do
    {
      v5 = v5[4];
    }

    while (v5);
    operator new();
  }

  std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(0);
  return 0;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
  for (i = 24; i != 56; i += 8)
  {
    v7 = re::ecs2::ComponentBucketsBase::addBucket(*(a1 + 16));
    *(a1 + i) = v7;
  }

  v9 = *(a3 + 288);
  if (v9)
  {
    v82 = re::globalAllocators(result)[2];
    v10 = (*(*v82 + 32))(v82, 32, 0);
    *v10 = &unk_1F5CF0B08;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF0B60;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF0BB8;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF0C10;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v31 = v30;
    v32 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v32 = v29;
    v32[1] = v31;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v72);
    result = (***(a2 + 224))();
    if (v33)
    {
      v34 = result;
      v35 = 8 * v33;
      do
      {
        v36 = *v34++;
        v70 = re::globalAllocators(result)[2];
        v71 = 0;
        v37 = (*(*v70 + 32))(v70, 32, 0);
        *v37 = &unk_1F5CF0B08;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
        v37[3] = 0;
        v71 = v37;
        v38 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v69, v36, 0);
        v40 = v39;
        v41 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v41 = v38;
        v41[1] = v40;
        v42 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v69);
        v67 = re::globalAllocators(v42)[2];
        v68 = 0;
        v43 = (*(*v67 + 32))(v67, 32, 0);
        *v43 = &unk_1F5CF0B60;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
        v43[3] = 0;
        v68 = v43;
        v44 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v66, v36, 0);
        v46 = v45;
        v47 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v47 = v44;
        v47[1] = v46;
        v48 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v66);
        v64 = re::globalAllocators(v48)[2];
        v65 = 0;
        v49 = (*(*v64 + 32))(v64, 32, 0);
        *v49 = &unk_1F5CF0BB8;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
        v49[3] = 0;
        v65 = v49;
        v50 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v63, v36, 0);
        v52 = v51;
        v53 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v53 = v50;
        v53[1] = v52;
        v54 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v63);
        v61 = re::globalAllocators(v54)[2];
        v62 = 0;
        v55 = (*(*v61 + 32))(v61, 32, 0);
        *v55 = &unk_1F5CF0C10;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
        v55[3] = 0;
        v62 = v55;
        v56 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v60, v36, 0);
        v58 = v57;
        v59 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
        *v59 = v56;
        v59[1] = v58;
        result = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v60);
        v35 -= 8;
      }

      while (v35);
    }
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ReverbComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  v6 = *a1;
  v9 = a1[1];
  v7 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v6 + 56), &v9);
  if (v7 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v6 + 168, *(*(v6 + 64) + 16 * v7 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v6);
  }

  (*(**(*a1 + 224) + 8))(*(*a1 + 224), a1, a2, *(a3 + 8));
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0B08;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0B08;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0B60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0BB8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0C10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::ReverbComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0C10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::RigComponentHelper::areExternalDependenciesLoadedForRigGraph(re::ecs2::RigComponentHelper *this, const re::ecs2::RigComponent *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v6 = *(this + 5);
  if (v6)
  {
    v7 = *(v6 + 280);
  }

  else
  {
    v7 = 0;
  }

  v8 = re::AssetHandle::assetWithType((this + 32), v7, 0);
  re::makeBindNode(*(this + 2), v22);
  v9 = 0;
  if (!(v22[0] | v22[2]))
  {
    goto LABEL_33;
  }

  v21 = v8[17];
  if (!v21)
  {
LABEL_29:
    v9 = 1;
    goto LABEL_33;
  }

  v10 = 0;
  while (1)
  {
    v11 = v8[12];
    if (v11)
    {
      break;
    }

LABEL_28:
    if (++v10 == v21)
    {
      goto LABEL_29;
    }
  }

  v12 = 0;
  while (1)
  {
    v13 = v8[12];
    if (v13 <= v12)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      v24 = 2048;
      v25 = v12;
      v26 = 2048;
      v27 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_35:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      v24 = 2048;
      v25 = v10;
      v26 = 2048;
      v27 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_36:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      v24 = 2048;
      v25 = v4;
      v26 = 2048;
      v27 = v2;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *buf = 136315906;
      *&buf[4] = "operator[]";
      *&buf[12] = 1024;
      *&buf[14] = 797;
      v24 = 2048;
      v25 = v2;
      v26 = 2048;
      v27 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = v8[14] + 40 * v12;
    if (v10 == *(v14 + 32))
    {
      v13 = v8[17];
      if (v13 <= v10)
      {
        goto LABEL_35;
      }

      v15 = (v8[19] + 200 * v10);
      v2 = v15[2];
      if (v2)
      {
        v16 = 0;
        v3 = v15[4];
        while (!re::StringID::operator==(v14, v3))
        {
          ++v16;
          v3 += 40;
          if (v2 == v16)
          {
            goto LABEL_18;
          }
        }

        v4 = v16;
      }

LABEL_18:
      if (v2 <= v4)
      {
        goto LABEL_36;
      }

      v2 = *(v15[4] + 40 * v4 + 16);
      v3 = v15[17];
      if (v3 <= v2)
      {
        goto LABEL_37;
      }

      if (re::StringID::operator==((v15[19] + 16 * v2), re::ecs2::RigComponentHelper::areExternalDependenciesLoadedForRigGraph(re::ecs2::RigComponent const&)::rigHierarchyStr))
      {
        break;
      }
    }

LABEL_24:
    if (++v12 == v11)
    {
      goto LABEL_28;
    }
  }

  v3 = *(v14 + 24);
  v17 = strlen(v3);
  *buf = v3;
  *&buf[8] = v17;
  {
    re::introspect<re::SkeletalPose>(BOOL)::info = re::introspect_SkeletalPose(0);
  }

  re::BindNode::bindPointWithOverride(v22, re::introspect<re::SkeletalPose>(BOOL)::info, buf, &v28);
  if (re::BindPoint::valueUntyped(&v28))
  {
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v28 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v28 + 8);
    goto LABEL_24;
  }

  v18 = *re::assetsLogObjects(0);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v14 + 24);
    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "RigHierarchy Input Binding path could not be resolved: %s", buf, 0xCu);
  }

  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v28 + 8);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v28 + 8);
  v9 = 0;
LABEL_33:
  re::BindNode::deinit(v22);
  return v9;
}

uint64_t re::ecs2::RigComponentHelper::areAssetAndDependenciesLoaded(re::ecs2::RigComponentHelper *this, const re::ecs2::RigComponent *a2)
{
  v2 = *(this + 5);
  if (!v2)
  {
    goto LABEL_7;
  }

  v3 = atomic_load((v2 + 896));
  if (v3 != 2)
  {
    return 0;
  }

  v5 = *(this + 5);
  if (!v5)
  {
LABEL_7:
    re::RigGraphAsset::assetType(this);
    return 1;
  }

  v6 = *(v5 + 280);
  if (v6 != re::RigGraphAsset::assetType(this))
  {
    return 1;
  }

  result = re::ecs2::RigComponentHelper::areExternalDependenciesLoadedForRigGraph(this, v7);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t re::ecs2::ECSSimulationEventDelegate::shouldTriggerEventWithNullRoot(re::ecs2::ECSSimulationEventDelegate *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8D70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8D70))
  {
    _MergedGlobals_264 = dyld_program_sdk_at_least();
    __cxa_guard_release(&qword_1EE1A8D70);
  }

  return _MergedGlobals_264;
}

void re::ecs2::ECSSimulationEventDelegate::preSimulation(id *location, char a2, re::PhysicsSimulation *a3, _BYTE *a4, float a5)
{
  v9 = location;
  v40 = *MEMORY[0x1E69E9840];
  v11 = location + 3;
  v10 = location[3];
  v12 = location[2];
  if (v10)
  {
    v13 = v12 == 0;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
    goto LABEL_23;
  }

  v14 = *(v12 + 36);
  WeakRetained = objc_loadWeakRetained(location + 3);
  location = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(v14);
  if (location)
  {
    v16 = location;
    if (WeakRetained)
    {
      v39 = WeakRetained - 8;
      v17 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(location + 27, &v39);
      if (v17 != -1)
      {
        v18 = *(v16[28] + 18 * v17 + 17);
        goto LABEL_11;
      }

LABEL_10:
      v18 = 0;
LABEL_11:
      Event = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(v14);
      if (Event)
      {
        v20 = *(Event + 208);
      }

      else
      {
        v20 = 0;
      }

      if (!(v20 + v18))
      {
        goto LABEL_22;
      }

LABEL_14:
      v21 = objc_loadWeakRetained(v11);
      if (v21)
      {
        v22 = v21 - 8;
      }

      else
      {
        v22 = 0;
      }

      if (v21)
      {
      }

      v23 = *(v12 + 36);
      *&v39 = a5;
      *(&v39 + 1) = v22;
      Type = re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>();
      v25 = v23;
      v26 = v22;
      goto LABEL_33;
    }

    if (location[26])
    {
      goto LABEL_14;
    }
  }

  else if (WeakRetained)
  {
    goto LABEL_10;
  }

LABEL_22:
  v10 = *v11;
LABEL_23:
  if (!v10 && re::ecs2::ECSSimulationEventDelegate::shouldTriggerEventWithNullRoot(location) && v12)
  {
    v27 = *(v12 + 36);
    v28 = re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsWillSimulateEvent>(v27, v12);
    v29 = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(v27);
    v30 = v29 ? *(v29 + 208) : 0;
    if (v30 + v28)
    {
      v31 = *(v12 + 36);
      *&v39 = a5;
      *(&v39 + 1) = 0;
      Type = re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>();
      v25 = v31;
      v26 = v12;
LABEL_33:
      re::EventBus::publish(v25, v26, Type, &v39, 0x10uLL, 0);
      (*(**(v12 + 7) + 248))(*(v12 + 7));
      v32 = (*(**(v12 + 7) + 32))(*(v12 + 7));
      v33 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v32);
      (*(*v33 + 56))(v33, 1);
      goto LABEL_34;
    }
  }

  if (a2)
  {
LABEL_36:
    if (!v12)
    {
      return;
    }

    goto LABEL_37;
  }

LABEL_34:
  if (!v9[1])
  {
    goto LABEL_36;
  }

  (*(**(v12 + 7) + 248))(*(v12 + 7));
  re::ecs2::PhysicsSystem::ecsToSim(v9[1], v12, a3);
LABEL_37:
  v34 = (*(**(v12 + 7) + 32))(*(v12 + 7));
  v35 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v34);
  if (v35)
  {
    v36 = v35;
    *a4 = (*(*v35 + 208))(v35, a3);
    v37 = (*(*v36 + 232))(v36, a3);
    if (v37)
    {
      v38 = *re::physicsLogObjects(v37);
      if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v39) = 134217984;
        *(&v39 + 4) = a3;
        _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "ECSSimulationEventDelegate::preSimulation dying simulation %p", &v39, 0xCu);
      }

      (*(*v36 + 224))(v36, a3);
    }
  }

  else
  {
    *a4 = 0;
  }
}

void re::ecs2::ECSSimulationEventDelegate::postSimulation(re::ecs2::ECSSimulationEventDelegate *this, float a2, re::PhysicsSimulation *a3)
{
  v6 = *(this + 1);
  v7 = *(this + 2);
  if (v6)
  {
    v8 = *(v6 + 304);
    if (v8)
    {
      v9 = *(v6 + 312);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        (*(*v11 + 64))(v11, a3, v7);
        v10 -= 8;
      }

      while (v10);
    }
  }

  if (a2 <= 0.0)
  {
    return;
  }

  Event = (*(**(a3 + 7) + 208))(*(a3 + 7));
  v15 = *(this + 3);
  v14 = (this + 24);
  v13 = v15;
  if (v15)
  {
    v16 = v7 == 0;
  }

  else
  {
    v16 = 1;
  }

  if (!v16)
  {
    v17 = *(v7 + 288);
    WeakRetained = objc_loadWeakRetained(v14);
    Event = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(v17);
    if (Event)
    {
      v19 = Event;
      if (WeakRetained)
      {
        v35 = WeakRetained - 8;
        v36 = 0;
        v20 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find(Event + 27, &v35);
        if (v20 != -1)
        {
          v21 = *(v19[28] + 144 * v20 + 136);
          goto LABEL_16;
        }

LABEL_15:
        v21 = 0;
LABEL_16:
        v22 = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(v17);
        if (v22)
        {
          v23 = *(v22 + 208);
        }

        else
        {
          v23 = 0;
        }

        if (!(v23 + v21))
        {
          goto LABEL_27;
        }

LABEL_19:
        v24 = objc_loadWeakRetained(v14);
        if (v24)
        {
          v25 = v24 - 8;
        }

        else
        {
          v25 = 0;
        }

        if (v24)
        {
        }

        v26 = *(v7 + 288);
        *&v35 = a2;
        v36 = v25;
        Type = re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>();
        v28 = v26;
        v29 = v25;
        goto LABEL_36;
      }

      if (Event[26])
      {
        goto LABEL_19;
      }
    }

    else if (WeakRetained)
    {
      goto LABEL_15;
    }

LABEL_27:
    v13 = *v14;
  }

  if (!v13 && re::ecs2::ECSSimulationEventDelegate::shouldTriggerEventWithNullRoot(Event) && v7)
  {
    v30 = *(v7 + 288);
    v31 = re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsDidSimulateEvent>(v30, v7);
    v32 = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(v30);
    v33 = v32 ? *(v32 + 208) : 0;
    if (v33 + v31)
    {
      v34 = *(v7 + 288);
      *&v35 = a2;
      v36 = 0;
      Type = re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>();
      v28 = v34;
      v29 = v7;
LABEL_36:
      re::EventBus::publish(v28, v29, Type, &v35, 0x10uLL, 0);
      (*(**(v7 + 56) + 248))(*(v7 + 56));
    }
  }
}

uint64_t re::ecs2::ECSSimulationEventDelegate::simulationPausedTick(uint64_t result, uint64_t a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    v3 = *(v2 + 304);
    if (v3)
    {
      v5 = *(result + 16);
      v6 = *(v2 + 312);
      v7 = 8 * v3;
      do
      {
        v8 = *v6++;
        result = (*(*v8 + 64))(v8, a2, v5);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

void re::ecs2::ECSSimulationEventDelegate::~ECSSimulationEventDelegate(id *this)
{
  *this = &unk_1F5CF0C68;
  objc_destroyWeak(this + 3);
  this[3] = 0;
}

{
  *this = &unk_1F5CF0C68;
  objc_destroyWeak(this + 3);
  this[3] = 0;

  JUMPOUT(0x1E6906520);
}

uint64_t re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getTypeId<REEntityPhysicsWillSimulateEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1A8D80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8D80))
  {
    qword_1EE1A8D78 = re::EventBus::typeStringToId(("32REEntityPhysicsWillSimulateEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1A8D80);
  }

  return qword_1EE1A8D78;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsWillSimulateEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<REEntityPhysicsWillSimulateEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getTypeId<REEntityPhysicsDidSimulateEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1A8D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8D90))
  {
    qword_1EE1A8D88 = re::EventBus::typeStringToId(("31REEntityPhysicsDidSimulateEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1A8D90);
  }

  return qword_1EE1A8D88;
}

uint64_t re::EventBus::subscriptionCountInternal<re::ecs2::Scene,REEntityPhysicsDidSimulateEvent>(uint64_t a1, uint64_t a2)
{
  result = re::EventBus::getEventInfo<REEntityPhysicsDidSimulateEvent>(a1);
  if (result)
  {
    v4 = result;
    if (!a2)
    {
      v6 = result + 88;
      return *(v6 + 120);
    }

    v7[0] = a2;
    v7[1] = 0;
    v5 = re::HashBrown<re::Pair<void const*,void const*,true>,re::EventBus::Subscriptions,re::Hash<re::Pair<void const*,void const*,true>>,re::EqualTo<re::Pair<void const*,void const*,true>>,void,false>::find((result + 216), v7);
    if (v5 != -1)
    {
      v6 = *(v4 + 224) + 144 * v5 + 16;
      return *(v6 + 120);
    }

    return 0;
  }

  return result;
}

uint64_t re::ecs2::MipmapGenerationSystem::update(uint64_t result, uint64_t a2)
{
  v2 = result;
  v3 = *(result + 224);
  if (!v3 || (*(v3 + 432) & 0x10) != 0)
  {
    v4 = *(*(result + 232) + 112);
    if (v4 && re::RenderFrameBox::get((v4 + 328), 0xFFFFFFFFFFFFFFFuLL))
    {
      v5 = *(v2 + 232);
      v6 = *(v5 + 112);
      if (v6)
      {
        v7 = re::RenderFrameBox::get((v6 + 328), 0xFFFFFFFFFFFFFFFuLL);
        v5 = *(v2 + 232);
      }

      else
      {
        v7 = 0;
      }

      v12 = 0;
      v9[1] = 0;
      v10 = 0;
      v9[0] = 0;
      v11 = 0;
      re::TextureManager::dequeueMipmapGeneration(*(v5 + 56), v8);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v9, v8);
      re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v8);
      if (v10)
      {
        (*(**(v7 + 320) + 16))(*(v7 + 320), v9);
      }

      return re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(v9);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager->renderFrame()", "update", 19);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_MipmapGenerationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_265, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_265))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8DA0, "MipmapGenerationSystem");
    __cxa_guard_release(&_MergedGlobals_265);
  }

  return &unk_1EE1A8DA0;
}

void re::ecs2::initInfo_MipmapGenerationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7C4B2F6E5830485ELL;
  v6[1] = "MipmapGenerationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x12800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MipmapGenerationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MipmapGenerationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MipmapGenerationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MipmapGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MipmapGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MipmapGenerationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MipmapGenerationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::MipmapGenerationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 288) = 0;
  *(a3 + 256) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0u;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF0CC8;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MipmapGenerationSystem>(uint64_t a1)
{
  *(a1 + 288) = 0;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF0CC8;
  return result;
}

void re::ecs2::MipmapGenerationSystem::~MipmapGenerationSystem(re::ecs2::MipmapGenerationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::TintManagerStateTracking *re::ecs2::TintManagerStateTracking::TintManagerStateTracking(re::ecs2::TintManagerStateTracking *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<float>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CF0D58;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::HierarchicalTintComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CF0E28;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 72) = 0u;
  *(a1 + 56) = 0u;
  v2 = a1 + 56;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 120) = 0u;
  *(a1 + 104) = 0u;
  v3 = a1 + 104;
  *(a1 + 136) = 0;
  *(a1 + 140) = 0x7FFFFFFFLL;
  *(a1 + 168) = 0u;
  *(a1 + 152) = 0u;
  v4 = a1 + 152;
  *(a1 + 184) = 0;
  *(a1 + 188) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0u;
  *(a1 + 200) = 0u;
  v5 = a1 + 200;
  *(a1 + 232) = 0;
  *(a1 + 236) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0u;
  *(a1 + 280) = 0;
  *(a1 + 264) = 0u;
  *(a1 + 284) = 0x7FFFFFFFLL;
  *(a1 + 296) = -1;
  return a1;
}

void re::ecs2::TintManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 32);
  if (v3)
  {
    v4 = 0;
    v5 = (*(a2 + 16) + 8);
    while (1)
    {
      v6 = *v5;
      v5 += 6;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = 0;
  }

  if (v4 != v3)
  {
    v7 = *(a2 + 16);
    v8 = *(a2 + 32);
    v33 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      v10 = *(a1 + 328);
      if (!*(a1 + 56) || (v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v12 = *(*(a1 + 64) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 80))), v12 == 0x7FFFFFFF))
      {
LABEL_14:
        (*(**v10 + 8))(&v43);
        if (v43)
        {
          v14 = v44;
        }

        else
        {
          v14 = 0;
        }

        v15 = *(v9 + 32);
        for (i = 1.0; v15; v15 = *(v36 + 32))
        {
          if ((*(v15 + 304) & 0x80) != 0)
          {
            break;
          }

          v36 = v15;
          (*(**v10 + 8))(&v43);
          v17 = v43 ? v44 : 0;
          if (v14 != v17)
          {
            break;
          }

          v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v36, v18 ^ (v18 >> 31), &v43);
          if (HIDWORD(v44) != 0x7FFFFFFF)
          {
            i = *(*(a1 + 72) + 32 * HIDWORD(v44) + 16);
            break;
          }

          v19 = *(v36 + 176);
          if (v19 && *(v19 + 28) != 0.0)
          {
            v9 = v36;
          }
        }

        re::StackScratchAllocator::StackScratchAllocator(&v43);
        v36 = 0;
        v37 = 0;
        v38 = 1;
        v40 = 0;
        v41 = 0;
        v39 = 0;
        v42 = 0;
        re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::init(&v36, &v43, 1uLL);
        v45.n128_u64[0] = v9;
        v45.n128_u32[2] = i;
        v20 = re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::add(&v36, &v45);
LABEL_31:
        v21 = v41;
        while (v21)
        {
          v35 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v36, --v21);
          re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v36, v21);
          v41 = v21;
          ++v42;
          v22 = v35;
          if (*(v35 + 304))
          {
            v23 = *(v35 + 176);
            if (v23)
            {
              v20.n128_f32[0] = 1.0 - *(v23 + 28);
              v24 = *(&v35 + 2) * v20.n128_f32[0];
              *(&v35 + 2) = *(&v35 + 2) * v20.n128_f32[0];
            }

            else
            {
              v24 = *(&v35 + 2);
            }

            if (v24 != 1.0)
            {
              v45 = 0uLL;
              v46 = 0;
              v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v35 ^ (v35 >> 30))) >> 27));
              re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v35, v25 ^ (v25 >> 31), &v45);
              if (v45.n128_u32[3] == 0x7FFFFFFF)
              {
                v26 = re::HashTable<re::ecs2::Entity const*,float,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v45.n128_u32[2], v45.n128_u64[0]);
                v22 = v35;
                *(v26 + 8) = v35;
                *(v26 + 16) = v24;
                ++*(a1 + 96);
              }

              else
              {
                v22 = v35;
              }
            }

            v27 = *(v22 + 344);
            if (v27)
            {
              v28 = *(v22 + 360);
              v29 = 8 * v27;
              do
              {
                v30 = *v28;
                (*(**v10 + 8))(&v45);
                if (v45.n128_u8[0])
                {
                  v31 = v45.n128_u64[1];
                }

                else
                {
                  v31 = 0;
                }

                v45.n128_u64[0] = v30;
                if (v14 == v31)
                {
                  v45.n128_u32[2] = DWORD2(v35);
                }

                else
                {
                  v45.n128_u32[2] = 1065353216;
                }

                v20 = re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::add(&v36, &v45);
                ++v28;
                v29 -= 8;
              }

              while (v29);
              goto LABEL_31;
            }
          }
        }

        while (v37)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v36);
        }

        if (v36 && (v38 & 1) == 0)
        {
          (*(*v36 + 40))(v20);
        }

        re::StackScratchAllocator::~StackScratchAllocator(&v43);
        LODWORD(v3) = v33;
        v8 = *(a2 + 32);
        v7 = *(a2 + 16);
      }

      else
      {
        v13 = *(a1 + 72);
        while (*(v13 + 32 * v12 + 8) != v9)
        {
          v12 = *(v13 + 32 * v12) & 0x7FFFFFFF;
          if (v12 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 <= v4 + 1)
      {
        v32 = v4 + 1;
      }

      else
      {
        v32 = v8;
      }

      while (v32 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_64;
        }
      }

      LODWORD(v4) = v32;
LABEL_64:
      ;
    }

    while (v4 != v3);
  }
}

__n128 re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
    v5 = *(a1 + 8);
  }

  if (v5 <= v4 >> 5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v6 = a1 + 24;
  }

  else
  {
    v6 = *(a1 + 32);
  }

  v7 = *(v6 + 8 * (v4 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  result = *a2;
  *(v7 + 16 * (v4 & 0x1F)) = *a2;
  return result;
}

void re::ecs2::TintManager::updateTintData(uint64_t a1, uint64_t a2)
{
  v3 = a1 + 8;
  v2 = *(a1 + 8);
  *(a1 + 336) = a2;
  (*(v2 + 32))(a1 + 8, a1 + 112);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 200);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v3 + 248);
  *(v3 + 328) = 0;
}

uint64_t re::ecs2::TintManager::registerScene(re::ecs2::TintManager *this, re::ecs2::Scene *a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v50 = a2;
  v2 = *(a2 + 36);
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track entity state changes.", "eventBus", "registerScene", 106);
    _os_crash();
    __break(1u);
  }

  v4 = (this + 8);
  v44[0] = 0;
  v44[1] = 0;
  v45 = 1;
  v47 = 0;
  v48 = 0;
  v46 = 0;
  v49 = 0;
  v5 = (*(*v4 + 16))(v4);
  if (v6)
  {
    v7 = v5;
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      v52 = re::globalAllocators(v5)[2];
      v10 = (*(*v52 + 32))(v52, 32, 0);
      *v10 = &unk_1F5CF0E68;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
      v8 -= 8;
    }

    while (v8);
  }

  v15 = (*(*v4 + 24))(v4);
  if (v16)
  {
    v17 = v15;
    v18 = 8 * v16;
    do
    {
      v19 = *v17++;
      re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CF0F70;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
  v20[3] = 0;
  v53 = v20;
  v21 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v51, 0, 0);
  v23 = v22;
  v24 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v24 = v21;
  v24[1] = v23;
  v25 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v25)[2];
  v26 = (*(*v52 + 32))(v52, 32, 0);
  *v26 = &unk_1F5CF0FC8;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
  v26[3] = 0;
  v53 = v26;
  v27 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidActivateEvent>(v2, v51, 0, 0);
  v29 = v28;
  v30 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v30 = v27;
  v30[1] = v29;
  v31 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::destroyCallable(v51);
  v52 = re::globalAllocators(v31)[2];
  v32 = (*(*v52 + 32))(v52, 32, 0);
  *v32 = &unk_1F5CF1020;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
  v32[3] = 0;
  v53 = v32;
  v33 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v2, v51, 0, 0);
  v35 = v34;
  v36 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
  *v36 = v33;
  v36[1] = v35;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v51);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 160, &v50, v44);
  v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v50 ^ (v50 >> 30))) >> 27));
  v38 = v37 ^ (v37 >> 31);
  v39 = *(this + 10);
  if (v39)
  {
    v40 = v38 % v39;
    v41 = *(*(this + 3) + 4 * (v38 % v39));
    if (v41 != 0x7FFFFFFF)
    {
      v42 = *(this + 4);
      if (*(v42 + 24 * v41 + 16) == v50)
      {
        goto LABEL_16;
      }

      while (1)
      {
        LODWORD(v41) = *(v42 + 24 * v41 + 8) & 0x7FFFFFFF;
        if (v41 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v42 + 24 * v41 + 16) == v50)
        {
          goto LABEL_16;
        }
      }
    }
  }

  else
  {
    LODWORD(v40) = 0;
  }

  re::HashSetBase<re::ecs2::Scene const*,re::ecs2::Scene const*,re::internal::ValueAsKey<re::ecs2::Scene const*>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addAsCopy(this + 16, v40, v38, &v50, &v50);
  ++*(this + 14);
LABEL_16:
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v44);
  result = v44[0];
  if (v44[0])
  {
    if ((v45 & 1) == 0)
    {
      return (*(*v44[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::TintManager::unregisterScene(re::ecs2::TintManager *this, re::ecs2::Scene *a2)
{
  v13 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 16, &v13);
  v3 = *(v13 + 13);
  v4 = *(v3 + 344);
  if (v4)
  {
    v5 = *(v3 + 360);
    v6 = 8 * v4;
    do
    {
      if (*(*v5 + 304))
      {
        (*(*(this + 1) + 40))(this + 8);
      }

      v5 += 8;
      v6 -= 8;
    }

    while (v6);
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 160, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (i = 0; i != v10; ++i)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, i);
          re::EventBus::unsubscribe(v8, *v12, *(v12 + 8));
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 160, &v13);
  }

  return result;
}

void re::ecs2::TintManagerStateTracking::~TintManagerStateTracking(re::ecs2::TintManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::HierarchyStateTracking<float>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 84))
  {
    if (*(a1 + 296) != *(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
    }

    re::StackScratchAllocator::StackScratchAllocator(v21);
    v15[0] = 0;
    v15[1] = 0;
    v16 = 1;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v15, v21, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = a2;
    for (i = v19; v19; i = v19)
    {
      v14 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, i - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v15, --v19);
      ++v20;
      if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 248, &v14))
      {
        v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v14 ^ (v14 >> 30))) >> 27));
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 32 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 32 * v25) = *(v7 + 32 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 32 * v6) = *(a1 + 92);
          --*(a1 + 84);
          *(a1 + 92) = v6;
          *(a1 + 96) = v9 + 1;
        }

        re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 248, &v14);
        v10 = *(v14 + 344);
        if (v10)
        {
          v11 = *(v14 + 360);
          v12 = 8 * v10;
          do
          {
            v13 = *v11++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v15) = v13;
            v12 -= 8;
          }

          while (v12);
        }
      }
    }

    *(a1 + 296) = *(a1 + 96);
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v15);
    if (v15[0])
    {
      if ((v16 & 1) == 0)
      {
        (*(*v15[0] + 40))();
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v21);
  }
}

void re::ecs2::TintManager::~TintManager(re::ecs2::TintManager *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this + 1);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::ecs2::HierarchyStateTracking<float>::~HierarchyStateTracking(uint64_t *a1)
{
  *a1 = &unk_1F5CF0E28;
  v2 = a1 + 1;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 31);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 25);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 19));
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 13);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 7);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v2);
  return a1;
}

uint64_t re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::TintManagerStateTracking::buildTintForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityTint,32ul>::setBucketsCapacity(void *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 32 * a2)
    {
      while (1)
      {
        v4 = v3[1];
        if (v4 <= a2)
        {
          break;
        }

        result = re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v3);
      }

      if (v4 < a2)
      {
        v5 = v3 + 3;
        do
        {
          result = (*(**v3 + 32))(*v3, 512, 0);
          v6 = result;
          if (*v3)
          {
            v7 = v3[1];
            v8 = *(v3 + 4);
            if ((v8 & 1) == 0)
            {
              v9 = *v5;
              v11 = v7 >= *v5;
              v10 = v7 + 1;
              v11 = !v11 || v9 >= v10;
              if (v11)
              {
                goto LABEL_24;
              }

              v12 = 2 * v9;
              goto LABEL_20;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_20:
              if (v12 <= v10)
              {
                v14 = v10;
              }

              else
              {
                v14 = v12;
              }

              result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v14);
              v8 = *(v3 + 4);
            }
          }

          else
          {
            v13 = v3[1];
            result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v13 + 1);
            v8 = *(v3 + 4) + 2;
            *(v3 + 4) = v8;
          }

LABEL_24:
          v15 = v3 + 3;
          if ((v8 & 1) == 0)
          {
            v15 = v3[4];
          }

          v16 = v3[1];
          v15[v16++] = v6;
          v3[1] = v16;
          *(v3 + 4) += 2;
        }

        while (v16 < a2);
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,float,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v5 == v8;
        }

        else
        {
          v10 = 1;
        }

        if (!v10 && (v7 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v25, v9, v8);
          v11 = *v25;
          *v25 = *a1;
          *a1 = v11;
          v12 = *&v25[16];
          v13 = *(a1 + 16);
          *&v25[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v14 = *&v25[32];
          *(a1 + 24) = v15;
          ++*&v25[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 16;
            do
            {
              if ((*(v17 - 16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::Entity const*,float,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v17 + 8) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 8);
                *(v18 + 16) = *v17;
              }

              v17 += 32;
              --v16;
            }

            while (v16);
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v8)
        {
          v21 = 2 * v7;
        }

        else
        {
          v21 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 32 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 32 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 24) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + 32 * v5;
}

uint64_t (***re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF0EC0;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v14);
}

uint64_t (***re::ecs2::HierarchyStateTracking<float>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(re *a1, re::EventBus *a2, uint64_t a3, uint64_t a4))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = re::globalAllocators(a1)[2];
  v8 = (*(*v15 + 32))(v15, 32, 0);
  *v8 = &unk_1F5CF0F18;
  v8[1] = a1;
  v8[2] = re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>;
  v8[3] = 0;
  v16 = v8;
  v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(a2, v14, a4, 0);
  v11 = v10;
  v12 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a3);
  *v12 = v9;
  v12[1] = v11;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v14);
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0E68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0E68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0EC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0EC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0F18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0F18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  if ((*(a2 + 387) & 1) == 0 && (*(a2 + 304) & 1) != 0 && !re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a1 + 200, &v4))
  {
    (*(*a1 + 40))(a1, v4);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v4);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0F70;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0F70;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if ((*(a2 + 387) & 1) == 0)
  {
    v3 = a1 + 200;
    (*(*a1 + 40))(a1);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(a1 + 104, &v5);
    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v3, &v5);
  }

  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0FC8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0FC8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::ecs2::HierarchyStateTracking<float>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  v3 = a1 + 200;
  (*(*a1 + 40))(a1);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(a1 + 104, &v5);
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v3, &v5);
  return 0;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = (a1[1] + (v3 >> 1));
  if (v3)
  {
    v2 = *(*v4 + v2);
  }

  return v2(v4, *a2);
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1020;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<float>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<float>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1020;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::EngineMotionStateEventDelegate::updateMotionState(uint64_t this, const re::RigidBody *a2, char a3)
{
  v4 = *(a2 + 9);
  v5 = *(v4 + 40);
  if (v5)
  {
    v6 = *(v4 + 40);
    do
    {
      v7 = v6;
      v6 = *(v6 + 32);
    }

    while (v6);
    if (!*(v7 + 24))
    {
      goto LABEL_8;
    }

    v8 = v5;
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v10 = *(*(v9 + 3) + 288);
    if (!v10)
    {
LABEL_8:
      v10 = *(this + 8);
    }

    v14 = a2;
    v15 = a3;
    if ((atomic_load_explicit(&qword_1EE1A8E38, memory_order_acquire) & 1) == 0)
    {
      v12 = v5;
      v13 = v10;
      v11 = __cxa_guard_acquire(&qword_1EE1A8E38);
      v5 = v12;
      v10 = v13;
      if (v11)
      {
        _MergedGlobals_266 = re::EventBus::typeStringToId(("27REMotionStateDidChangeEvent" & 0x7FFFFFFFFFFFFFFFLL), v12);
        __cxa_guard_release(&qword_1EE1A8E38);
        v5 = v12;
        v10 = v13;
      }
    }

    return re::EventBus::publish(v10, v5, _MergedGlobals_266, &v14, 0x10uLL, 0);
  }

  return this;
}

void *re::ecs2::allocInfo_PlanarReflectionCaptureComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E50))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8E80, "PlanarReflectionCaptureComponent");
    __cxa_guard_release(&qword_1EE1A8E50);
  }

  return &unk_1EE1A8E80;
}

void re::ecs2::initInfo_PlanarReflectionCaptureComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x28414266274E86F8;
  v10[1] = "PlanarReflectionCaptureComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A8E48, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8E48);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      _MergedGlobals_267 = v8;
      __cxa_guard_release(&qword_1EE1A8E48);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_267;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PlanarReflectionCaptureComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232PlanarReflectionCaptureComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::PlanarReflectionCaptureComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE03D0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PlanarReflectionCaptureComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE03D0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_PlanarReflectionReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8F10, "PlanarReflectionReceiverComponent");
    __cxa_guard_release(&qword_1EE1A8E60);
  }

  return &unk_1EE1A8F10;
}

void re::ecs2::initInfo_PlanarReflectionReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x4B7E6CB8AD15EA92;
  v14[1] = "PlanarReflectionReceiverComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A8E58, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A8E58);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = re::ecs2::introspect_Component(1);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "Component";
      *(v8 + 16) = v7;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0;
      *(v8 + 40) = 3;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A8E70 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::ecs2::introspect_EntityHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "captureEntity";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A8E78 = v12;
      __cxa_guard_release(&qword_1EE1A8E58);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A8E70;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PlanarReflectionReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs233PlanarReflectionReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::PlanarReflectionReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  v4 = (this + 32);
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 2) = 0;
  *(this + 24) = 0;
  *this = &unk_1F5CE0538;
  objc_initWeak(v4, 0);
  *(this + 5) = 0;
  *(this + 6) = 0;

  re::ecs2::EntityHandle::reset(v4);
}

void re::internal::defaultConstructV2<re::ecs2::PlanarReflectionReceiverComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE0538;
  objc_initWeak(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;

  re::ecs2::EntityHandle::reset(v2);
}

void *re::ecs2::allocInfo_PlanarReflectionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A8E68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8E68))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8FA0, "PlanarReflectionSystem");
    __cxa_guard_release(&qword_1EE1A8E68);
  }

  return &unk_1EE1A8FA0;
}

void re::ecs2::initInfo_PlanarReflectionSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x9B1399D5F4C5728;
  v6[1] = "PlanarReflectionSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x15800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PlanarReflectionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PlanarReflectionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PlanarReflectionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PlanarReflectionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PlanarReflectionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PlanarReflectionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PlanarReflectionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::PlanarReflectionSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 336) = 0;
  *(a3 + 304) = 0u;
  *(a3 + 320) = 0u;
  *(a3 + 272) = 0u;
  *(a3 + 288) = 0u;
  *(a3 + 240) = 0u;
  *(a3 + 256) = 0u;
  *(a3 + 208) = 0u;
  *(a3 + 224) = 0u;
  *(a3 + 176) = 0u;
  *(a3 + 192) = 0u;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0u;
  *(a3 + 112) = 0u;
  *(a3 + 128) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0u;
  *(a3 + 48) = 0u;
  *(a3 + 64) = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0u;
  *a3 = 0u;
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF10C8;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0;
  *(v3 + 332) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::PlanarReflectionSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 37);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::PlanarReflectionSystem>(uint64_t a1)
{
  *(a1 + 336) = 0;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
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
  *a1 = 0u;
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF10C8;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0;
  *(v1 + 332) = 0x7FFFFFFFLL;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::PlanarReflectionSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 37);

  re::ecs2::System::~System(a1);
}

uint64_t (***re::ecs2::PlanarReflectionSystem::willAddSceneToECSService(re::ecs2::PlanarReflectionSystem *this, re::EventBus **a2))(void)
{
  v12 = *MEMORY[0x1E69E9840];
  v8 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for PlanarReflectionSystem to track parameter changes.", "eventBus", "willAddSceneToECSService", 63);
    _os_crash();
    __break(1u);
  }

  v10 = re::globalAllocators(this)[2];
  v4 = (*(*v10 + 32))(v10, 32, 0);
  *v4 = &unk_1F5CF1158;
  v4[1] = this;
  v4[2] = re::ecs2::PlanarReflectionSystem::componentWillDeactivateEventHandler;
  v4[3] = 0;
  v11 = v4;
  *&v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v2, v9, re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  *(&v7 + 1) = v5;
  re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addNew(this + 296, &v8, &v7);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v9);
}