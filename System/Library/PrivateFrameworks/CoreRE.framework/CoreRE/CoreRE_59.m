void sub_1E2075DAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __cxa_guard_abort(&qword_1EE1979A0);
  re::BasicAsset<re::AnimationScene,&re::kAnimationSceneAssetName,&re::kAnimationSceneAssetExtension>::~BasicAsset(va);
  _Unwind_Resume(a1);
}

re::DynamicString *re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::getCurrentCompiledAssetInfo@<X0>(_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetName;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::assetIntrospectionType()
{
  if ((atomic_load_explicit(&qword_1EE1979B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979B0))
  {
    qword_1EE1979A8 = re::introspect_BlendShapeGroupDefinition(0);
    __cxa_guard_release(&qword_1EE1979B0);
  }

  return qword_1EE1979A8;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2[0] = &re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetExtension;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

void re::BasicJsonCompiler<re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>>::compile(char *__s@<X1>, const re::IntrospectionBase *a2@<X3>, uint64_t a3@<X8>)
{
  *v23 = 0;
  v24 = &str_67;
  HIDWORD(v26) = 0;
  memset(v25, 0, sizeof(v25));
  LOBYTE(v26) = 0;
  v6 = strrchr(__s, 46);
  if (!strcmp(v6 + 1, re::BasicAsset<re::BlendShapeGroupDefinition,&re::kBlendShapeGroupDefinitionAssetName,&re::kBlendShapeGroupDefinitionAssetExtension>::assetExtension))
  {
    if ((atomic_load_explicit(&qword_1EE1979B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979B0))
    {
      qword_1EE1979A8 = re::introspect_BlendShapeGroupDefinition(0);
      __cxa_guard_release(&qword_1EE1979B0);
    }

    SourceJson = re::AssetUtilities::readSourceJson(__s, v23, qword_1EE1979A8, a2, v20);
    if (v20[0])
    {
      v10 = re::globalAllocators(SourceJson);
      v11 = (*(*v10[2] + 32))(v10[2], 48, 8);
      *v11 = 0u;
      *(v11 + 16) = 0u;
      *(v11 + 32) = 0u;
      *(v11 + 8) = &str_67;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0;
      *(v11 + 16) = 0;
      *(v11 + 40) = 0;
      re::StringID::operator=(v11, v23);
      re::FixedArray<float>::operator=((v11 + 16), v25);
      *(v11 + 40) = v26;
      *a3 = 1;
      *(a3 + 8) = v11;
    }

    else
    {
      *&v16 = 100;
      *(&v16 + 1) = re::AssetErrorCategory(void)::instance;
      re::DynamicString::DynamicString(&v17, &v21);
      v12 = v17;
      *(a3 + 8) = v16;
      v13 = v18;
      v14 = v19;
      *a3 = 0;
      *(a3 + 24) = v12;
      *(a3 + 40) = v13;
      *(a3 + 48) = v14;
      if (v20[0] & 1) == 0 && v21 && (v22)
      {
        (*(*v21 + 40))();
      }
    }
  }

  else
  {
    re::DynamicString::format("Invalid Asset Path: %s.", &v16, __s);
    v7 = v16;
    v8 = v17;
    *a3 = 0;
    *(a3 + 8) = 200;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v7;
    *(a3 + 40) = v8;
  }

  v15 = re::FixedArray<re::BlendShapeDefinition>::deinit(v25);
  if (v23[0])
  {
    if (v23[0])
    {
    }
  }
}

void sub_1E207617C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  __cxa_guard_abort(&qword_1EE1979B0);
  re::FixedArray<re::BlendShapeDefinition>::deinit((v13 + 16));
  re::StringID::destroyString(va);
  _Unwind_Resume(a1);
}

re::DynamicString *re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::getCurrentCompiledAssetInfo@<X0>(_anonymous_namespace_ *a1@<X0>, void *a2@<X8>)
{
  *a2 = 0x100000001;
  v2 = (a2 + 1);
  v3 = re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetName;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::assetIntrospectionType()
{
  if ((atomic_load_explicit(&qword_1EE1979C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1979C0))
  {
    qword_1EE1979B8 = re::introspect_BlendTreeDefinition(0);
    __cxa_guard_release(&qword_1EE1979C0);
  }

  return qword_1EE1979B8;
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::getSupportedExtensions@<X0>(uint64_t a1@<X8>)
{
  v2[0] = &re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetExtension;
  v2[1] = 1;
  return re::DynamicArray<char const*>::DynamicArray(a1, v2);
}

uint64_t re::BasicJsonCompiler<re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>>::compile@<X0>(char *__s@<X1>, const re::IntrospectionBase *a2@<X3>, uint64_t a3@<X8>)
{
  v4 = __s;
  *v30 = 0;
  v31 = 0;
  v33 = 0;
  v32 = 0;
  v52 = 0;
  memset(v34, 0, sizeof(v34));
  v36 = 0u;
  v37 = 0u;
  v35 = 0;
  v38 = 0;
  memset(v39, 0, sizeof(v39));
  v41 = 0u;
  memset(v42, 0, 28);
  v43 = 0u;
  v44 = 0u;
  v40 = 0;
  v45 = 0;
  v48 = 0;
  v46 = 0u;
  v47 = 0u;
  v49 = 0u;
  v50 = 0u;
  v51 = 0;
  v6 = strrchr(__s, 46);
  if (strcmp(v6 + 1, re::BasicAsset<re::BlendTreeDefinition,&re::kBlendTreeDefinitionAssetName,&re::kBlendTreeDefinitionAssetExtension>::assetExtension))
  {
    re::DynamicString::format("Invalid Asset Path: %s.", &v23, v4);
    v7 = v23;
    v8 = v24;
    *a3 = 0;
    *(a3 + 8) = 200;
    *(a3 + 16) = re::AssetErrorCategory(void)::instance;
    *(a3 + 24) = v7;
    *(a3 + 40) = v8;
    goto LABEL_20;
  }

  if ((atomic_load_explicit(&qword_1EE1979C0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_42;
  }

  while (1)
  {
    SourceJson = re::AssetUtilities::readSourceJson(v4, v30, qword_1EE1979B8, a2, v27);
    if ((v27[0] & 1) == 0)
    {
      break;
    }

    v10 = re::globalAllocators(SourceJson);
    v4 = (*(*v10[2] + 32))(v10[2], 328, 8);
    *(v4 + 40) = 0;
    *(v4 + 18) = 0u;
    *(v4 + 19) = 0u;
    *(v4 + 16) = 0u;
    *(v4 + 17) = 0u;
    *(v4 + 14) = 0u;
    *(v4 + 15) = 0u;
    *(v4 + 12) = 0u;
    *(v4 + 13) = 0u;
    *(v4 + 10) = 0u;
    *(v4 + 11) = 0u;
    *(v4 + 8) = 0u;
    *(v4 + 9) = 0u;
    *(v4 + 6) = 0u;
    *(v4 + 7) = 0u;
    *(v4 + 3) = 0u;
    *(v4 + 4) = 0u;
    *(v4 + 1) = 0u;
    *(v4 + 2) = 0u;
    *v4 = 0u;
    *(v4 + 5) = 0u;
    a2 = (v4 + 80);
    re::DynamicArray<re::RigComponentConstraint>::operator=(v4, v30);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v4 + 40), &v34[1]);
    re::DynamicArray<re::RigComponentConstraint>::operator=((v4 + 80), &v36 + 8);
    re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((v4 + 120), &v39[1]);
    *(v4 + 20) = *(&v41 + 1);
    if (v4 != v30)
    {
      v12 = *(v4 + 21);
      if (v12 && v42[0] && v12 != v42[0])
      {
        re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
        _os_crash();
        __break(1u);
        goto LABEL_41;
      }

      *(v4 + 21) = v42[0];
      v42[0] = v12;
      v13 = *(v4 + 11);
      *(v4 + 22) = v42[1];
      *(v4 + 23) = v42[2];
      *&v42[1] = v13;
      v14 = *(v4 + 25);
      *(v4 + 25) = v43;
      *&v43 = v14;
      ++LODWORD(v42[3]);
      ++*(v4 + 48);
    }

    re::DynamicArray<re::RigComponentConstraint>::operator=((v4 + 208), &v43 + 8);
    re::DynamicArray<re::RigComponentConstraint>::operator=((v4 + 248), &v46 + 8);
    if (v4 == v30)
    {
      goto LABEL_15;
    }

    v16 = *(v4 + 36);
    if (!v16 || !*(&v49 + 1) || v16 == *(&v49 + 1))
    {
      *(v4 + 36) = *(&v49 + 1);
      *(&v49 + 1) = v16;
      v17 = *(v4 + 296);
      *(v4 + 296) = v50;
      v50 = v17;
      v18 = *(v4 + 40);
      *(v4 + 40) = v52;
      v52 = v18;
      ++v51;
      ++*(v4 + 78);
LABEL_15:
      *a3 = 1;
      *(a3 + 8) = v4;
      goto LABEL_20;
    }

LABEL_41:
    re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
    _os_crash();
    __break(1u);
LABEL_42:
    if (__cxa_guard_acquire(&qword_1EE1979C0))
    {
      qword_1EE1979B8 = re::introspect_BlendTreeDefinition(0);
      __cxa_guard_release(&qword_1EE1979C0);
    }
  }

  *&v23 = 100;
  *(&v23 + 1) = re::AssetErrorCategory(void)::instance;
  re::DynamicString::DynamicString(&v24, &v28);
  v19 = v24;
  *(a3 + 8) = v23;
  v20 = v25;
  v21 = v26;
  *a3 = 0;
  *(a3 + 24) = v19;
  *(a3 + 40) = v20;
  *(a3 + 48) = v21;
  if (v27[0] & 1) == 0 && v28 && (v29)
  {
    (*(*v28 + 40))();
  }

LABEL_20:
  if (*(&v49 + 1))
  {
    if (v52)
    {
      (*(**(&v49 + 1) + 40))();
    }

    v52 = 0;
    v50 = 0uLL;
    *(&v49 + 1) = 0;
    ++v51;
  }

  if (*(&v46 + 1))
  {
    if (v49)
    {
      (*(**(&v46 + 1) + 40))();
    }

    *&v49 = 0;
    v47 = 0uLL;
    *(&v46 + 1) = 0;
    ++v48;
  }

  if (*(&v43 + 1))
  {
    if (v46)
    {
      (*(**(&v43 + 1) + 40))();
    }

    *&v46 = 0;
    v44 = 0uLL;
    *(&v43 + 1) = 0;
    ++v45;
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(v42);
  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v39[1]);
  if (*(&v36 + 1))
  {
    if (v39[0])
    {
      (*(**(&v36 + 1) + 40))();
    }

    v39[0] = 0;
    v37 = 0uLL;
    *(&v36 + 1) = 0;
    ++v38;
  }

  re::DynamicArray<re::Pair<re::StringID,re::RigDataValue *,true>>::deinit(&v34[1]);
  result = *v30;
  if (*v30)
  {
    if (v34[0])
    {
      return (*(**v30 + 40))();
    }
  }

  return result;
}

void sub_1E2076860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, ...)
{
  va_start(va, a16);
  __cxa_guard_abort(&qword_1EE1979C0);
  re::BlendTreeDefinition::~BlendTreeDefinition(va);
  _Unwind_Resume(a1);
}

void *re::DynamicArray<re::MeshAssetModel>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetModel>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetModel>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::MeshAssetSkeleton>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::MeshAssetSkeleton>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::allocInfo_AudioFileAsset(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_83, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_83))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197A40, "AudioFileAsset");
    __cxa_guard_release(&_MergedGlobals_83);
  }

  return &unk_1EE197A40;
}

void re::initInfo_AudioFileAsset(re *this, re::IntrospectionBase *a2)
{
  v59[0] = 0x5AD9D7EF0324A77CLL;
  v59[1] = "AudioFileAsset";
  if (v59[0])
  {
    if (v59[0])
    {
    }
  }

  *(this + 2) = v60;
  if ((atomic_load_explicit(&qword_1EE1979D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1979D0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_int(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "loopCount";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x6800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1979D8 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_float(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "referenceLevel";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x3800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1979E0 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_uint64_t(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "lengthInFrames";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x9000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1979E8 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "streaming";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x6C00000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1979F0 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = introspect_REAudioInputMode(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "inputMode";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x3C00000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1979F8 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::introspect_double(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "maximumAlignmentLatency";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0x9800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE197A00 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "randomizeStart";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x6D00000008;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE197A08 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = introspect_REAudioNormalizationMode(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "normalizationMode";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x7000000009;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE197A10 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = introspect_REAudioCalibrationMode(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "calibrationMode";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x740000000ALL;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE197A18 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_double(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "calibrationLevel";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x780000000BLL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE197A20 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "mixGroupName";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x400000000CLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE197A28 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_uint32_t(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "layoutTag";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x880000000DLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE197A30 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::introspect_double(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "targetLUFS";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x800000000ELL;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE197A38 = v57;
      __cxa_guard_release(&qword_1EE1979D0);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1979D8;
  *(this + 9) = re::internal::defaultConstruct<re::AudioFileAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioFileAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioFileAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioFileAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v58 = v60;
}

uint64_t re::AudioFileAsset::Impl::operator==(uint64_t *a1, void *a2)
{
  result = *a1;
  if (result == *a2 || result && (result = [result isEqual:?], result))
  {
    result = a1[1];
    if (result == a2[1] || result && (result = [result isEqual:?], result))
    {
      result = a1[2];
      if (result == a2[2] || result && (result = [result isEqual:?], result))
      {
        result = a1[4];
        if (result == a2[4])
        {
          return 1;
        }

        else if (result)
        {

          return [result isEqual:?];
        }
      }
    }
  }

  return result;
}

void re::AudioFileAsset::AudioFileAsset(re::AudioFileAsset *this)
{
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = &unk_1F5CC63B8;
  *(this + 14) = -1052770304;
  *(this + 60) = 0;
  *(this + 64) = 0;
  *(this + 26) = 0;
  *(this + 54) = 0;
  *(this + 14) = 0;
  *(this + 120) = xmmword_1E3061520;
  *(this + 17) = 4294901760;
  *(this + 21) = 0;
  *(this + 19) = 0;
  *(this + 159) = 0;
  operator new();
}

void sub_1E2077498(_Unwind_Exception *a1)
{
  if (*(v1 + 64) == 1)
  {
    re::DynamicString::deinit((v1 + 72));
  }

  re::DynamicString::deinit((v1 + 24));
  v3 = *(v1 + 16);
  if (v3)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v3);
  }

  _Unwind_Resume(a1);
}

_BYTE *re::AudioFileAsset::setConfiguration(uint64_t a1, uint64_t a2)
{
  *(a1 + 108) = *a2;
  result = re::Optional<re::DynamicString>::operator=((a1 + 64), (a2 + 32));
  *(a1 + 109) = *(a2 + 2);
  *(a1 + 104) = -*(a2 + 1);
  *(a1 + 112) = *(a2 + 4);
  *(a1 + 60) = *(a2 + 80);
  *(a1 + 120) = *(a2 + 16);
  if (*(a2 + 72) == 1)
  {
    *(a1 + 136) = *(a2 + 76);
  }

  return result;
}

void re::AudioFileAsset::~AudioFileAsset(re::AudioFileAsset *this)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(this + 35);
  if (v2 + 1 >= 2)
  {
    v3 = mach_port_deallocate(*MEMORY[0x1E69E9A60], v2);
    v4 = v3;
    if (v3)
    {
      v5 = *re::audioLogObjects(v3);
      if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
      {
        v7 = 136315138;
        v8 = mach_error_string(v4);
        _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAsset] Failed to deallocate mach port, with KERN error code: %s", &v7, 0xCu);
      }
    }
  }

  if (*(this + 64) == 1)
  {
    re::DynamicString::deinit((this + 72));
  }

  re::DynamicString::deinit((this + 24));
  v6 = *(this + 2);
  if (v6)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v6);
  }
}

{
  re::AudioFileAsset::~AudioFileAsset(this);

  JUMPOUT(0x1E6906520);
}

void sub_1E2077654(_Unwind_Exception *a1)
{
  if (*(v1 + 64) == 1)
  {
    re::DynamicString::deinit((v1 + 72));
  }

  re::DynamicString::deinit((v1 + 24));
  v4 = *(v1 + 16);
  if (v4)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v4);
  }

  _Unwind_Resume(a1);
}

void re::AudioFileAsset::cloneFrom(re::AudioFileAsset *this, const re::AudioFileAsset *a2)
{
  v14 = 0;
  v12 = 0u;
  v13 = 0u;
  v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    goto LABEL_10;
  }

  while (1)
  {
    v5 = *(v4 + 319);
    __buf[1] = 0;
    __buf[2] = &v12;
    {
      break;
    }

    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "ok", "cloneFrom", 194, v12, v13, v14);
    _os_crash();
    __break(1u);
LABEL_10:
    v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v11)
    {
      re::introspect<re::AudioFileAsset>(BOOL)::info = re::internal::getOrCreateInfo("AudioFileAsset", re::allocInfo_AudioFileAsset, re::initInfo_AudioFileAsset, &re::internal::introspectionInfoStorage<re::AudioFileAsset>, 0);
      v4 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  v7 = *(this + 1);
  v8 = *(a2 + 1);
  objc_storeStrong(v7, *v8);
  objc_storeStrong((v7 + 8), *(v8 + 8));
  objc_storeStrong((v7 + 16), *(v8 + 16));
  *(v7 + 40) = *(v8 + 40);
  __buf[0] = 0;
  do
  {
    arc4random_buf(__buf, 8uLL);
  }

  while (__buf[0] < 0x3E8uLL);
  *(v7 + 24) = __buf[0];
  objc_storeStrong((v7 + 32), *(v8 + 32));
  *(v7 + 176) = *(v8 + 176);
  if (*(v8 + 72))
  {
    Detached = re::DataSeekableInputStream::CreateDetached((v8 + 48));
    re::DataSeekableInputStream::operator=(v7 + 48, Detached);
    v10 = *(v8 + 160);
  }

  else
  {
    v15 = 0;
    re::DataSeekableInputStream::DataSeekableInputStream(__buf, &v15, 0, 0);
    re::DataSeekableInputStream::operator=(v7 + 48, __buf);
    __buf[0] = &unk_1F5D0A4F8;

    __buf[0] = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v17);

    v10 = 0;
  }

  *(v7 + 160) = v10;
}

uint64_t *re::AudioFileAsset::assetType(re::AudioFileAsset *this)
{
  {
    re::AudioFileAsset::assetType(void)::type = "AudioFile";
    qword_1EE1C70E8 = 0;
    re::AssetType::generateCompiledExtension(&re::AudioFileAsset::assetType(void)::type);
  }

  return &re::AudioFileAsset::assetType(void)::type;
}

void *re::AudioFileAsset::supportedExtensions@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  v3 = re::AudioFileAsset::supportedExtensions(void)::supportedExtensions;
  v4 = 88;
  *(a1 + 24) = 0;
  do
  {
    result = re::DynamicArray<re::TransitionCondition *>::add(a1, v3++);
    v4 -= 8;
  }

  while (v4);
  return result;
}

BOOL re::AudioFileAsset::shouldSkipCompressionOnExport(re::AudioFileAsset *this)
{
  v1 = **(this + 1);
  if (!v1)
  {
    return 0;
  }

  v2 = [v1 fileFormat];
  v3 = *([v2 streamDescription] + 8) != 1819304813;

  return v3;
}

BOOL re::AudioFileAsset::prepareToLoadFrom(re::AudioFileAsset *this, const char *__s, int a3)
{
  v20 = *MEMORY[0x1E69E9840];
  *buf = __s;
  *&buf[8] = strlen(__s);
  re::DynamicString::operator=((this + 24), buf);
  v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:__s];
  if (v6)
  {
    if (a3)
    {
      [MEMORY[0x1E695DFF8] URLWithString:v6];
    }

    else
    {
      [MEMORY[0x1E695DFF8] fileURLWithPath:v6];
    }
    v8 = ;
    if (v8)
    {
      objc_storeStrong((*(this + 1) + 32), v8);
      v18 = 0;
      v9 = [objc_alloc(MEMORY[0x1E6958408]) initForReading:v8 error:&v18];
      v10 = v18;
      v11 = v10;
      v7 = v9 != 0;
      if (v9)
      {
        objc_storeStrong(*(this + 1), v9);
        v12 = [v9 processingFormat];
        v13 = *(this + 1);
        v14 = *(v13 + 8);
        *(v13 + 8) = v12;

        *(this + 18) = [v9 length];
      }

      else
      {
        v15 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
        {
          if (*(this + 32))
          {
            v17 = *(this + 5);
          }

          else
          {
            v17 = this + 33;
          }

          *buf = 136315394;
          *&buf[4] = v17;
          *&buf[12] = 2112;
          *&buf[14] = v11;
          _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Failed to load audio file at '%s'. Error = %@", buf, 0x16u);
        }
      }
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void re::AudioFileAsset::loadBuffer(re::AudioFileAsset *this, AVAudioPCMBuffer *a2)
{
  v4 = a2;
  v5 = v4;
  if (v4)
  {
    v6 = [(AVAudioPCMBuffer *)v4 format];
    v8 = re::audio::layoutTagFromFormat(v6, v7);

    if (v8 != -65536)
    {
      objc_storeStrong((*(this + 1) + 16), a2);
      v9 = [(AVAudioPCMBuffer *)v5 format];
      v10 = *(this + 1);
      v11 = *(v10 + 8);
      *(v10 + 8) = v9;

      v12 = [(AVAudioPCMBuffer *)v5 frameLength];
      *(this + 18) = v12;
      if (!v12)
      {
        v13 = *re::audioLogObjects(v12);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *v14 = 0;
          _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "AudioFileAsset handed AVAudioPCMBuffer with frameLength=0", v14, 2u);
        }
      }
    }
  }
}

void re::AudioFileAsset::markAsIncompleteLoad(re::AudioFileAsset *this)
{
  if (*(this + 161) == 1)
  {
    *(this + 161) = 256;
  }

    ;
  }

  *(*(this + 1) + 24) = __buf;
}

uint64_t re::AudioFileAsset::createSharableFileBuffer(re::AudioFileAsset::Impl **this, re::SeekableInputStream *a2)
{
  v4 = (*(*a2 + 64))(a2);
  result = re::AudioFileAsset::Impl::createIOSurface(this[1], v4);
  if (result)
  {
    v6 = [*(this[1] + 21) baseAddress];
    if (v6)
    {
      v7 = v6;
      result = (*(*a2 + 48))(a2);
      if (result)
      {
        result = (*(*a2 + 56))(a2, 0);
        if (result)
        {
          v14 = &unk_1F5D0AE00;
          v15 = a2;
          v16 = 0;
          v17 = 0;
          v18 = 0;
          v19 = (*(*a2 + 40))(a2);
          v20 = 0;
          Bytes = re::SeekableInputStreamReaderAdaptor::readBytes(&v14, v7, v4);
          v9 = this[1];
          *(v9 + 5) = Bytes;
          XPCObject = IOSurfaceCreateXPCObject(*(v9 + 21));
          v11 = this[1];
          v12 = *(v11 + 26);
          *(v11 + 26) = XPCObject;

          if (v17)
          {
            (*(*v15 + 24))(v15);
          }

          return 1;
        }
      }
    }

    else
    {
      v13 = *re::audioLogObjects(0);
      result = os_log_type_enabled(v13, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v14) = 0;
        _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [createSharableFileBuffer] surfaceBaseAddress is nil.", &v14, 2u);
        return 0;
      }
    }
  }

  return result;
}

void sub_1E2077FD4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, int a12)
{
  if (a12)
  {
    (*(*a10 + 24))(a10);
  }

  _Unwind_Resume(exception_object);
}

BOOL re::AudioFileAsset::Impl::createIOSurface(re::AudioFileAsset::Impl *this, uint64_t a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v15[0] = *MEMORY[0x1E696CE30];
  v3 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:a2];
  v15[1] = *MEMORY[0x1E696D0D8];
  v16[0] = v3;
  v16[1] = MEMORY[0x1E695E110];
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];

  v5 = IOSurfaceCreate(v4);
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%p: %s %llu", v5, "REKit_Audio_Asset:", *(this + 3)];
    IOSurfaceSetValue(v5, *MEMORY[0x1E696CF98], v6);
    v7 = IOSurfaceSetOwnership();
    v8 = v7;
    if (v7)
    {
      v9 = *re::audioLogObjects(v7);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315138;
        v14 = mach_error_string(v8);
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [createIOSurface] Failed to attribute IOSurface allocation: %s", buf, 0xCu);
      }
    }

    v10 = *(this + 21);
    *(this + 21) = v5;
  }

  else
  {
    v11 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [createIOSurface] IOSurfaceCreate returned a NULL surface.", buf, 2u);
    }
  }

  return v5 != 0;
}

uint64_t re::AudioFileAsset::createSharablePCMBuffer(re::AudioFileAsset *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *(*(this + 1) + 16);
  if (v1)
  {
    v3 = v1;
    v4 = [v3 format];
    v5 = [v4 commonFormat];

    if (v5 != 1)
    {
      v14 = *re::audioLogObjects(v6);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        v26 = [v3 format];
        v27 = 134217984;
        v28 = [v26 commonFormat];
        _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "AudioFileAsset::createSharablePCMBuffer Failed to share buffer with common format %lu", &v27, 0xCu);
      }

      goto LABEL_19;
    }

    v7 = [v3 format];
    if ([v7 channelCount] <= 1)
    {
    }

    else
    {
      v8 = [v3 format];
      v9 = [v8 isInterleaved];

      if (v9)
      {
        v11 = *re::audioLogObjects(v10);
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          LOWORD(v27) = 0;
          v12 = "AudioFileAsset::createSharablePCMBuffer Failed to share multichannel buffer.Multichannel buffers must be non-interleaved in order to be shared.";
LABEL_23:
          _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, v12, &v27, 2u);
          goto LABEL_19;
        }

        goto LABEL_19;
      }
    }

    if (re::AudioFileAsset::Impl::createIOSurface(*(this + 1), 4 * *(this + 18) * [*(*(this + 1) + 8) channelCount]))
    {
      v15 = [*(*(this + 1) + 168) baseAddress];
      if (v15)
      {
        v16 = v3;
        for (i = 0; ; ++i)
        {
          v18 = [v16 format];
          v19 = [v18 channelCount];

          if (i >= v19)
          {
            break;
          }

          memcpy((v15 + 4 * [v16 frameLength] * i), *(objc_msgSend(v16, "floatChannelData") + 8 * i), 4 * objc_msgSend(v16, "frameLength"));
        }

        XPCObject = IOSurfaceCreateXPCObject(*(*(this + 1) + 168));
        v21 = *(this + 1);
        v22 = *(v21 + 200);
        *(v21 + 200) = XPCObject;

        v23 = *(this + 1);
        v24 = *(v23 + 16);
        *(v23 + 16) = 0;

        v13 = 1;
        goto LABEL_20;
      }

      v11 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        LOWORD(v27) = 0;
        v12 = "[AudioFileAsset] [createSharablePCMBuffer] surfaceBaseAddress is nil.";
        goto LABEL_23;
      }
    }

LABEL_19:
    v13 = 0;
LABEL_20:

    return v13;
  }

  return 0;
}

void re::AudioFileAsset::completeLoad(re::AudioFileAsset *this, AudioSceneService *a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if ((*(this + 161) & 1) == 0)
  {
    *(this + 161) = 1;
    if (a2)
    {
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v63 = xmmword_1E3061530;
      v64[0] = 0;
      v67 = 0;
      v68 = 0;
      if (re::audio::CanStreamAudioFiles(this))
      {
        v3 = *(this + 108);
      }

      else
      {
        v3 = 0;
      }

      LOBYTE(v60) = v3 & 1;
      v6 = *(this + 15);
      v62 = *(this + 14);
      *&v63 = v6;
      re::Optional<re::DynamicString>::operator=(v64, this + 64);
      HIBYTE(v60) = *(this + 26) == -1;
      *(&v63 + 1) = *(this + 16);
      location = 0;
      v59 = 0;
      v7 = re::AudioFileAsset::audioFormat(this);
      v8 = [v7 channelLayout];
      v57[1] = v8;

      if (re::audio::CanStreamAudioFiles(v9) && *(this + 108) == 1 && (v10 = **(this + 1)) != 0)
      {
        v11 = v10;
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();

        if (isKindOfClass)
        {
          v13 = **(this + 1);
          v14 = [v13 getReaderFileLength];
          v15 = v14 / 0x64;
          if (v14 / 0x64 <= 0xC350)
          {
            v15 = 50000;
          }

          if ((*(this + 35) + 1) <= 1)
          {
            v15 += v14;
          }

          *(this + 21) = v15;
        }

        else
        {
          v25 = [MEMORY[0x1E696AC08] defaultManager];
          v26 = **(this + 1);
          v27 = [v26 url];
          v28 = [v27 path];
          v29 = [v25 attributesOfItemAtPath:v28 error:0];

          v30 = [v29 fileSize];
          v31 = v30 / 0x64;
          if (v30 / 0x64 <= 0xC350)
          {
            v31 = 50000;
          }

          if ((*(this + 35) + 1) <= 1)
          {
            v31 += v30;
          }

          *(this + 21) = v31;
        }
      }

      else
      {
        v16 = re::AudioFileAsset::audioFormat(this);
        v17 = v16 == 0;

        if (v17)
        {
          v24 = *re::audioLogObjects(v18);
          if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
          {
            *buf = 0;
            _os_log_error_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_ERROR, "[CoreRE] [AudioFileAsset] Cannot get bytesPerFrame from audio asset because audioFormat() is nil", buf, 2u);
          }
        }

        else
        {
          v19 = re::AudioFileAsset::audioFormat(this);
          v20 = *([v19 streamDescription] + 24);

          v21 = *(this + 18) * v20;
          v22 = v21 / 0x64;
          if (v21 / 0x64 <= 0xC350)
          {
            v22 = 50000;
          }

          v23 = v22 + v21;
          if ((*(this + 35) + 1) > 1)
          {
            v23 = v22;
          }

          *(this + 21) = v23;
        }
      }

      v32 = *(this + 2);
      v33 = *(this + 1);
      if (v32)
      {
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        atomic_fetch_add_explicit(&v32->__shared_weak_owners_, 1uLL, memory_order_relaxed);
        v33 = *(this + 1);
      }

      if (*v33)
      {
        v34 = *(v33 + 32);
        if (!v34)
        {
          v44 = [*v33 getBackingData];
          v45 = MEMORY[0x1E695DEF0];
          v46 = v44;
          v47 = [v45 dataWithBytes:objc_msgSend(v44 length:{"bytes"), objc_msgSend(v44, "length")}];
          v48 = *(this + 1);
          v49 = *(v48 + 192);
          *(v48 + 192) = v47;

          std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(&location, &location, (*(this + 1) + 192));
          *buf = *(*(this + 1) + 24);
          std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,AVAudioChannelLayout * {__strong}&,0>();
        }

        if (v59 != -1)
        {
          if (v59 == 2)
          {
            objc_storeStrong(&location, v34);
            goto LABEL_47;
          }

          (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v59])(buf, &location);
          v34 = *(v33 + 32);
        }

        v59 = -1;
        location = v34;
        v59 = 2;
LABEL_47:
        *buf = *(*(this + 1) + 24);
        std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,AVAudioChannelLayout * {__strong}&,0>();
      }

      if (!*(v33 + 200))
      {
        v50 = *(v33 + 208);
        if (v50)
        {
          v51 = IOSurfaceLookupFromXPCObject(v50);
          v52 = *(this + 1);
          v53 = *(v52 + 168);
          *(v52 + 168) = v51;

          v57[0] = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:IOSurfaceGetBaseAddress(*(*(this + 1) + 168)) length:*(*(this + 1) + 40) freeWhenDone:0];
          objc_setAssociatedObject(v57[0], "FileAssetBufferKey", *(*(this + 1) + 168), 0x301);
          std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(&location, &location, v57);
          *buf = *(*(this + 1) + 24);
          std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,AVAudioChannelLayout * {__strong}&,0>();
        }

        std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<1ul,AVAudioPCMBuffer * {__strong},AVAudioPCMBuffer * {__strong}&>(&location, &location, (v33 + 16));
        *buf = *(*(this + 1) + 24);
        std::allocate_shared[abi:nn200100]<re::AudioAssetPayload,std::allocator<re::AudioAssetPayload>,std::variant<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}> &,re::AudioFileAssetConfiguration &,unsigned int &,unsigned long long,0>();
      }

      v35 = [*(v33 + 8) channelCount];
      v36 = *(this + 18);
      v37 = IOSurfaceLookupFromXPCObject(*(*(this + 1) + 200));
      v38 = *(this + 1);
      v39 = *(v38 + 168);
      *(v38 + 168) = v37;

      AllocSize = IOSurfaceGetAllocSize(*(*(this + 1) + 168));
      v41 = AllocSize;
      v42 = 4 * v35 * v36;
      if (AllocSize >= v42)
      {
        v57[0] = [MEMORY[0x1E695DEF0] dataWithBytesNoCopy:IOSurfaceGetBaseAddress(*(*(this + 1) + 168)) length:v42 freeWhenDone:0];
        objc_setAssociatedObject(v57[0], "FileAssetBufferKey", *(*(this + 1) + 168), 0x301);
        std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(&location, &location, v57);
        re::AudioFileAsset::audioFormat(this);
        objc_claimAutoreleasedReturnValue();
        operator new();
      }

      v43 = *re::audioLogObjects(AllocSize);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 32))
        {
          v54 = *(this + 5);
        }

        else
        {
          v54 = this + 33;
        }

        v55 = [*(*(this + 1) + 8) channelCount];
        v56 = *(this + 18);
        *buf = 136315906;
        *&buf[4] = v54;
        buf_12 = 2048;
        buf_14 = v41;
        v72 = 1024;
        v73 = v55;
        v74 = 2048;
        v75 = v56;
        _os_log_error_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_ERROR, "AudioFileAsset::completeLoad buffer for asset '%s' is %lu bytes which is smaller than expected for %u channels, %llu frames of float32 pcm", buf, 0x26u);
      }

      if (v32)
      {
        std::__shared_weak_count::__release_weak(v32);
        std::__shared_weak_count::__release_weak(v32);
      }

      if (v59 != -1)
      {
        (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v59])(buf, &location);
      }

      if (v64[0] == 1 && v65 && (v66 & 1) != 0)
      {
        (*(*v65 + 40))();
      }
    }

    else
    {
      v4 = *re::audioLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        if (*(this + 32))
        {
          v5 = *(this + 5);
        }

        else
        {
          v5 = this + 33;
        }

        *buf = 136315138;
        *&buf[4] = v5;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "AudioFileAsset::completeLoad with no AudioSceneService '%s'", buf, 0xCu);
      }
    }
  }
}

void sub_1E2079218(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10, int a11, char a12, int a13, int a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  std::__function::__value_func<void ()(BOOL)>::~__value_func[abi:nn200100](&a29);
  v34 = *(v32 - 176);
  if (v34)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v34);
  }

  if (v31)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v31);
  }

  if (v30)
  {
    std::__shared_weak_count::__release_weak(v30);
    std::__shared_weak_count::__release_weak(v30);
  }

  if (a14 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[a14])(&a10, &a12);
  }

  if (a19 == 1 && a20 && (a21 & 1) != 0)
  {
    (*(*a20 + 40))();
  }

  _Unwind_Resume(a1);
}

id re::AudioFileAsset::audioFormat(re::AudioFileAsset *this)
{
  v3 = *(*(this + 1) + 8);
  if (v3)
  {
    v4 = MEMORY[0x1E69583D0];
    v5 = *(this + 34);
    if (v5 == -65536)
    {
      v5 = re::audio::layoutTagFromFormat(*(*(this + 1) + 8), v2);
    }

    v6 = [v4 layoutWithLayoutTag:v5];
    v7 = [objc_alloc(MEMORY[0x1E6958418]) initWithStreamDescription:objc_msgSend(v3 channelLayout:{"streamDescription"), v6}];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

id re::AudioFileAsset::pcmBuffer(re::AudioFileAsset *this)
{
  v1 = *(this + 1);
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v2;
  }

  else if (*(v1 + 200))
  {
    v5 = *(v1 + 8);
    v6 = *(this + 18);
    BaseAddress = IOSurfaceGetBaseAddress(*(*(this + 1) + 168));
    v8 = [v5 commonFormat];
    if (v8 == 1 && ([v5 channelCount] < 2 || (v8 = objc_msgSend(v5, "isInterleaved"), !v8)))
    {
      v3 = [objc_alloc(MEMORY[0x1E6958440]) initWithPCMFormat:v5 frameCapacity:v6];
      if (v3)
      {
        v10 = 0;
        for (i = 0; i < [v5 channelCount]; ++i)
        {
          memcpy(*([v3 floatChannelData] + 8 * i), &BaseAddress[4 * v10], 4 * v6);
          v10 += v6;
        }

        [v3 setFrameLength:{objc_msgSend(v3, "frameCapacity")}];
      }
    }

    else
    {
      v9 = *re::audioLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        *v13 = 0;
        _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "can only create non-interleaved float AVAudioPCMBuffer from bytes", v13, 2u);
      }

      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t re::AudioFileAsset::setMappedData(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *v4;
  *v4 = 0;

  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  *(v6 + 8) = 0;

  v8 = *(a1 + 8);
  v9 = *(v8 + 16);
  *(v8 + 16) = 0;

  v10 = *(a1 + 8);
  v11 = *(v10 + 32);
  *(v10 + 32) = 0;

  v12 = *(a1 + 8) + 48;

  return re::DataSeekableInputStream::operator=(v12, a2);
}

BOOL re::AudioFileAsset::makeMutableAndSetMappedData(re *a1, re::internal::AssetEntry **a2, void *a3)
{
  v3 = a2[1];
  if (!v3 || (v4 = atomic_load(v3 + 224), v4 != 2))
  {
    v19 = *re::audioLogObjects(a1);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v20 = "AudioFileAsset::makeMutableAndSetData failing as it requires the handle to be loaded.";
    goto LABEL_18;
  }

  v6 = a2[1];
  if (!v6)
  {
    v10 = re::AudioFileAsset::assetType(a1);
    goto LABEL_16;
  }

  v9 = *(v6 + 35);
  v10 = re::AudioFileAsset::assetType(a1);
  if (v9 != &re::AudioFileAsset::assetType(void)::type)
  {
LABEL_16:
    v19 = *re::audioLogObjects(v10);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v20 = "AudioFileAsset::makeMutableAndSetData failing as it requires the handle to wrap an AudioFileAsset.";
    goto LABEL_18;
  }

  v11 = a2[1];
  if (!v11 || (v10 = *(v11 + 3)) == 0 || (v10 = re::AssetManager::convertToMutable(v10, a2), (v10 & 1) == 0))
  {
    v19 = *re::audioLogObjects(v10);
    result = os_log_type_enabled(v19, OS_LOG_TYPE_ERROR);
    if (!result)
    {
      return result;
    }

    *buf = 0;
    v20 = "AudioFileAsset::makeMutableAndSetData failing as it could not convert the handle to mutable.";
LABEL_18:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v20, buf, 2u);
    return 0;
  }

  v12 = a2[1];
  if (v12)
  {
    v13 = atomic_load(v12 + 224);
    if (v13 == 2)
    {
      re::AssetHandle::mutateAssetCommon(a2);
      ++*(a2[1] + 69);
      v14 = re::AssetHandle::loadedAsset<re::AudioFileAsset>(a2);
      if (v14)
      {
        v15 = v14;
        v16 = a3;
        v21 = v16;
        re::DataSeekableInputStream::DataSeekableInputStream(buf, &v21, 0, 0);

        re::AudioFileAsset::setMappedData(v15, buf);
        re::AudioFileAssetLoader::createRuntimeData(a1, v15);
        *buf = &unk_1F5D0A4F8;

        *buf = &unk_1F5D0A468;
        re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v23);

        v17 = a2[1];
        *(v17 + 256) = 1;
        re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v17);
        re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(a2[1]);
      }
    }
  }

  re::AssetHandle::payloadDidChangeIfPossible(a2);
  return 1;
}

void sub_1E2079A5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  re::DataSeekableInputStream::~DataSeekableInputStream(va);

  _Unwind_Resume(a1);
}

uint64_t re::AudioAssetPayload::AudioAssetPayload(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, void *a6, void *a7)
{
  v13 = a6;
  v14 = a7;
  std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](a1, a2);
  v15 = *(a3 + 16);
  *(a1 + 16) = *a3;
  *(a1 + 32) = v15;
  v16 = *(a3 + 32);
  *(a1 + 48) = v16;
  if (v16 == 1)
  {
    re::DynamicString::DynamicString((a1 + 56), (a3 + 40));
  }

  v17 = *(a3 + 72);
  *(a1 + 88) = v17;
  if (v17 == 1)
  {
    *(a1 + 92) = *(a3 + 76);
  }

  *(a1 + 96) = *(a3 + 80);
  *(a1 + 104) = a4;
  *(a1 + 112) = a5;
  *(a1 + 120) = v13;
  *(a1 + 128) = v14;
  return a1;
}

re::DynamicString *re::AudioFileAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::AudioFileAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::AudioFileAsset::assetType(v3);
  v5[0] = re::AudioFileAsset::assetType(void)::type;
  v5[1] = strlen(re::AudioFileAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::AudioFileAssetCompiler::assetIntrospectionType(re::AudioFileAssetCompiler *this)
{
  v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
  {
    v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    if (v3)
    {
      re::introspect<re::AudioFileAsset>(BOOL)::info = re::internal::getOrCreateInfo("AudioFileAsset", re::allocInfo_AudioFileAsset, re::initInfo_AudioFileAsset, &re::internal::introspectionInfoStorage<re::AudioFileAsset>, 0);
      v1 = &OBJC_IVAR___REMeshBlendShapeBufferDescriptor__blendShapeConstantsBuffer;
    }
  }

  return *(v1 + 319);
}

void re::AudioFileAssetCompiler::compile(re::AudioFileAssetCompiler *this, const char *a2, void *a3, re::AssetSerializationScheme *a4)
{
  v4 = re::globalAllocators(this);
  v5 = (*(*v4[2] + 32))(v4[2], 176, 8);
  re::AudioFileAsset::AudioFileAsset(v5);
}

re *re::internal::destroyPersistent<re::AudioFileAsset>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::AudioFileAsset::~AudioFileAsset(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void re::DataSeekableInputStream::~DataSeekableInputStream(id *this)
{
  *this = &unk_1F5D0A4F8;

  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream((this + 4));
}

{
  *this = &unk_1F5D0A4F8;

  *this = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream((this + 4));

  JUMPOUT(0x1E6906520);
}

uint64_t std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1>::__copy_constructor[abi:nn200100](uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = -1;
  std::__variant_detail::__ctor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1> const&>(a1, a2);
  return a1;
}

void sub_1E2079E88(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, int a10, __int16 a11, char a12, char a13)
{
  v15 = *(v13 + 8);
  if (v15 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v15])(&a13, v13);
  }

  *(v13 + 8) = -1;
  _Unwind_Resume(exception_object);
}

uint64_t std::__variant_detail::__ctor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>,(std::__variant_detail::_Trait)1> const&>(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 8);
  if (v4 != -1)
  {
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v4])(&v7, result);
  }

  *(v3 + 8) = -1;
  v5 = *(a2 + 8);
  if (v5 != -1)
  {
    v6 = v3;
    result = (__const__ZNSt3__116__variant_detail12__visitation6__base14__visit_alt_atB8nn200100IZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISF_LNS0_6_TraitE1EEEEEvRSG_OT_EUlSP_E_JSM_EEEDcmSP_DpOT0____fdiagonal[v5])(&v6, a2);
    *(v3 + 8) = v5;
  }

  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm0EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSA_SD_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm1EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSA_SD_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

id _ZNSt3__116__variant_detail12__visitation6__base12__dispatcherIJLm2EEE10__dispatchB8nn200100IOZNS0_6__ctorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEEE19__generic_constructB8nn200100IRKNS0_18__copy_constructorISH_LNS0_6_TraitE1EEEEEvRSI_OT_EUlSR_E_JRKNS0_6__baseILSL_1EJSA_SD_SG_EEEEEEDcSQ_DpT0_(void **a1, id *a2)
{
  v2 = *a1;
  result = *a2;
  *v2 = result;
  return result;
}

void std::__shared_ptr_emplace<re::AudioFileAsset::Impl>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CC6480;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::AudioFileAsset::Impl>::__on_zero_shared(uint64_t a1)
{
  *(a1 + 72) = &unk_1F5D0A4F8;

  *(a1 + 72) = &unk_1F5D0A468;
  re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(a1 + 104);

  v2 = *(a1 + 24);
}

void sub_1E207A28C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, int a21, int a22)
{
  if (a13 == 1 && a14 && (a15 & 1) != 0)
  {
    (*(*a14 + 40))();
  }

  if (a22 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[a22])(v23 - 65, &a20);
  }

  std::__shared_weak_count::~__shared_weak_count(v22);
  operator delete(v25);
  _Unwind_Resume(a1);
}

void std::__shared_ptr_emplace<re::AudioAssetPayload>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1F5CC64D0;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1E6906520);
}

void std::__shared_ptr_emplace<re::AudioAssetPayload>::__on_zero_shared(uint64_t a1)
{
  if (*(a1 + 72) == 1)
  {
    v2.n128_f64[0] = re::DynamicString::deinit((a1 + 80));
  }

  v3 = *(a1 + 32);
  if (v3 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v3])(&v4, a1 + 24, v2);
  }

  *(a1 + 32) = -1;
}

void *std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CC6520;
  v2 = a1[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  return a1;
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::~__func(void *a1)
{
  *a1 = &unk_1F5CC6520;
  v1 = a1[2];
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }

  JUMPOUT(0x1E6906520);
}

uint64_t std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::__clone(uint64_t result, void *a2)
{
  v3 = *(result + 8);
  v2 = *(result + 16);
  *a2 = &unk_1F5CC6520;
  a2[1] = v3;
  a2[2] = v2;
  if (v2)
  {
    atomic_fetch_add_explicit((v2 + 16), 1uLL, memory_order_relaxed);
  }

  return result;
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::destroy(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    std::__shared_weak_count::__release_weak(v1);
  }
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::destroy_deallocate(void *__p)
{
  v2 = __p[2];
  if (v2)
  {
    std::__shared_weak_count::__release_weak(v2);
  }

  operator delete(__p);
}

void std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::operator()(uint64_t a1, unsigned __int8 *a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = *a2;
    v3 = std::__shared_weak_count::lock(v3);
    v5 = v3;
    if (v3)
    {
      v6 = *(a1 + 8);
      if (v6)
      {
        if (v4)
        {
          v7 = 0;
        }

        else
        {
          v7 = 2;
        }

        *(v6 + 176) = v7;
LABEL_12:
        std::__shared_weak_count::__release_shared[abi:nn200100](v5);
        return;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v8 = *re::audioLogObjects(v3);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v9 = 0;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "[AudioFileAsset] [completeLoad] Failed to register asset because instance of self is no longer valid.", v9, 2u);
  }

  if (v5)
  {
    goto LABEL_12;
  }
}

uint64_t std::__function::__func<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0,std::allocator<re::AudioFileAsset::completeLoad(re::AudioSceneService *)::$_0>,void ()(BOOL)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<0ul,NSData * {__strong},NSData * {__strong}&>(uint64_t a1, id *location, id *a3)
{
  v5 = *(a1 + 8);
  if (v5 != -1)
  {
    if (!v5)
    {
      objc_storeStrong(location, *a3);
      return;
    }

    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v5])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a3;
  *(a1 + 8) = 0;
}

void std::__variant_detail::__assignment<std::__variant_detail::__traits<NSData * {__strong},AVAudioPCMBuffer * {__strong},NSURL * {__strong}>>::__assign_alt[abi:nn200100]<1ul,AVAudioPCMBuffer * {__strong},AVAudioPCMBuffer * {__strong}&>(uint64_t a1, id *location, id *a3)
{
  v5 = *(a1 + 8);
  if (v5 != -1)
  {
    if (v5 == 1)
    {
      objc_storeStrong(location, *a3);
      return;
    }

    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v5])(&v6, a1);
  }

  *(a1 + 8) = -1;
  *a1 = *a3;
  *(a1 + 8) = 1;
}

void sub_1E207A944(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, char a13, uint64_t a14, char a15, uint64_t a16)
{
  if (a13 == 1 && a14 && (a15 & 1) != 0)
  {
    (*(*a14 + 40))();
  }

  v19 = *(v17 - 64);
  if (v19 != -1)
  {
    (__const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJU8__strongP6NSDataU8__strongP16AVAudioPCMBufferU8__strongP5NSURLEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSH_EEEDcOSI_DpOT0____fmatrix[v19])(v17 - 49, v17 - 72);
  }

  std::__shared_weak_count::~__shared_weak_count(v16);
  operator delete(v20);
  _Unwind_Resume(a1);
}

uint64_t re::AssetHandle::loadedAsset<re::AudioFileAsset>(re::AudioFileAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  re::AudioFileAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, &re::AudioFileAsset::assetType(void)::type, 1);
}

void re::ShaderGraphLoadHelper::init(uint64_t a1, uint64_t a2)
{
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  v5 = re::ServiceLocator::serviceOrNull<re::ResourceFetchService>(a2);
  v6 = re::ServiceLocator::serviceOrNull<re::ResourceSharingService>(a2);
  atomic_store(re::ServiceLocator::serviceOrNull<re::AssetService>(a2), (a1 + 144));
  *(a1 + 384) = re::ServiceLocator::serviceOrNull<re::EntitlementService>(a2);
  if (v4)
  {
    v8 = *(v4 + 26) != 0;
  }

  else
  {
    v8 = 0;
  }

  *(a1 + 128) = v8;
  re::Defaults::BOOLValue("decodeShaderGraphViaXPC", v7, &v12);
  v9 = v12 ^ 1 | v13;
  if (v5)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___ZN2re21ShaderGraphLoadHelper4initERKNS_14ServiceLocatorE_block_invoke;
    v11[3] = &__block_descriptor_40_e145__Result_re::Data__re::WrappedError__B____WrappedError____Data_____32__0_Data___8_Data___16___v__Q_SharedPtr_re::SharedObject____SharedObject___24l;
    v11[4] = a1;
    (*(*v5 + 184))(v5, v11);
    if ((v9 & 1) == 0)
    {
      return;
    }

    v10 = 152;
  }

  else
  {
    if (((v12 ^ 1 | v13) & 1) == 0)
    {
      return;
    }

    v10 = 136;
    v5 = v6;
  }

  *(a1 + v10) = v5;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ResourceSharingService>(uint64_t a1)
{
  {
    re::introspect<re::ResourceSharingService>(BOOL)::info = re::introspect_ResourceSharingService(0);
  }

  v2 = re::introspect<re::ResourceSharingService>(BOOL)::info;
  re::StringID::invalid(&v6);
  v3 = (*(*a1 + 16))(a1, v2, &v6);
  v4 = v3;
  if (v6)
  {
    if (v6)
    {
    }
  }

  return v4;
}

void ___ZN2re21ShaderGraphLoadHelper4initERKNS_14ServiceLocatorE_block_invoke(uint64_t a1@<X0>, id *a2@<X1>, id *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v9 = a4;
  v10 = *(a1 + 32);
  v11 = *a2;
  v31 = v11;
  v12 = *a3;
  v30 = v12;
  v13 = v9;
  v14 = re::shaderGraphHash(&v31, &v30, 0);
  v15 = [v11 bytes];
  v16 = [v11 length];
  location = 0;
  os_unfair_lock_lock(v10);
  re::sg::MaterialSourceCache::lookup(&v10[2], v15, v16, &v37);
  re::ObjCObject::operator=(&location, &v37);

  os_unfair_lock_unlock(v10);
  if (location)
  {
    v17 = v12;
    v19 = re::decodeFunctionConstants(v17, v18);
    v37 = v19;
    if (v19)
    {
      v20 = MEMORY[0x1E69CD9D8];
      v21 = location;
      v34 = 0;
      v22 = [v20 materialFromSource:v21 functionConstantValues:v19 error:{&v34, v30, v31}];
      v23 = v34;
      v35 = v22;

      if (v23)
      {
        goto LABEL_17;
      }

      re::make::shared::object<re::sg::CachedCompilationMaterial,re::sg::Material,re::sg::MaterialSource const&,SGREMaterialFunctionConstantValues * {__strong}&>(&v33, &v35, &location, &v37);
      if (v13)
      {
        v32 = v33;
        if (v33)
        {
          v24 = v33 + 8;
        }

        v13[2](v13, v14, &v32);
        if (v32)
        {

          v32 = 0;
        }
      }

      v25 = [MEMORY[0x1E695DF88] dataWithLength:1024];
      v26 = v33;
      v27 = re::sg::CachedCompilationMaterial::encode(v33, v25);
      v28 = v27;
      if (v27)
      {
        v29 = v25;
        *a5 = 1;
        *(a5 + 8) = v29;
        v23 = 0;
      }

      else
      {
        v23 = [MEMORY[0x1E696ABC0] errorWithDomain:@"Encoding Failure" code:0 userInfo:0];
      }

      if (v26)
      {
      }

      if (!v28)
      {
LABEL_17:
        v23 = v23;
        *a5 = 0;
        *(a5 + 8) = v23;
        v19 = v37;
      }
    }

    else
    {
      *a5 = 0;
      *(a5 + 8) = 0;
      v23 = 0;
    }
  }

  else
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    v23 = 0;
  }
}

void sub_1E207AF3C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15)
{
  if (a11)
  {
  }

  if (v19)
  {

    v17 = a9;
    v16 = a10;
  }

  _Unwind_Resume(a1);
}

void re::ShaderGraphLoadHelper::decodeAndSpecializeShaderGraph(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, re *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v11 = a2;
  v145 = *MEMORY[0x1E69E9840];
  explicit = atomic_load_explicit((a1 + 144), memory_order_acquire);
  if (explicit)
  {
    ComponentType = a2;
    os_unfair_lock_lock((a1 + 256));
    if (!*(a1 + 280))
    {
      for (i = 0; i != 6; ++i)
      {
        (*(*explicit + 8))(buf, explicit, off_1E871B138[i]);
        re::DynamicArray<re::AssetHandle>::add((a1 + 264), buf);
        re::AssetHandle::~AssetHandle(buf);
        re::AssetHandle::loadAsync((*(a1 + 296) + 24 * *(a1 + 280) - 24));
      }
    }

    os_unfair_lock_unlock((a1 + 256));
    atomic_store(0, (a1 + 144));
    v11 = ComponentType;
  }

  v15 = *(v11 + 40);
  v128 = 0;
  v129 = v15;
  v122 = 0;
  v123 = &v122;
  v124 = 0x3812000000;
  v125 = __Block_byref_object_copy__3;
  v126 = __Block_byref_object_dispose__3;
  v127 = "";
  if (!v15)
  {
    v23 = 0;
    goto LABEL_91;
  }

  if (*(a1 + 128))
  {
    v16 = [MEMORY[0x1E695DF88] dataWithLength:1024];
    v116 = v11;
    MutableBytePtr = CFDataGetMutableBytePtr(v16);
    Length = CFDataGetLength(v16);
    v115 = v16;
    *buf = &unk_1F5D16DD0;
    *&buf[8] = MutableBytePtr;
    *&buf[16] = 0;
    *&buf[20] = Length;
    v132 = v16;
    v133 = re::encodeFunctionConstants(re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<unsigned char> const&,__CFData *)::$_0::__invoke;
    memset(v134, 0, sizeof(v134));
    re::DynamicString::setCapacity(v134, 0);
    v135 = 6;
    v136 = 0;
    *buf = &unk_1F5D16F10;
    re::snapshot::EncoderOPACK::beginObject(buf);
    v114 = a5;
    re::snapshot::EncoderOPACK::writeInteger(buf, 1);
    re::snapshot::EncoderOPACK::beginDictionary(buf, *(a3 + 28));
    v19 = *(a3 + 32);
    if (v19)
    {
      v20 = 0;
      v21 = *(a3 + 16);
      while (1)
      {
        v22 = *v21;
        v21 += 16;
        if (v22 < 0)
        {
          break;
        }

        if (v19 == ++v20)
        {
          LODWORD(v20) = *(a3 + 32);
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
      v26 = *(a3 + 16);
      do
      {
        v27 = v26 + (v20 << 6);
        v28 = *(v27 + 16);
        if (v28)
        {
          v29 = *(v27 + 24);
        }

        else
        {
          v29 = (v27 + 17);
        }

        if (v28)
        {
          v30 = v28 >> 1;
        }

        else
        {
          v30 = v28 >> 1;
        }

        re::snapshot::EncoderOPACK::serializeString(buf, v29, v30);
        v31 = *(v27 + 40);
        v32 = *(a4 + 2);
        if (v32 <= v31)
        {
          v130 = 0;
          memset(v144, 0, sizeof(v144));
          v50 = MEMORY[0x1E69E9C10];
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *location = 136315906;
          *&location[4] = "operator[]";
          v138 = 1024;
          v139 = 797;
          v140 = 2048;
          v141 = v31;
          v142 = 2048;
          v143 = v32;
          v113 = 38;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_134:
          if (*(v50 + 16))
          {
            v108 = *(v50 + 24);
          }

          else
          {
            v108 = v50 + 17;
          }

          *buf = 136315138;
          *&buf[4] = v108;
          _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Failed to create shader graph material source for asset (%s)", buf, 0xCu);
LABEL_105:
          if (*(v50 + 16))
          {
            v85 = *(v50 + 24);
          }

          else
          {
            v85 = v50 + 17;
          }

          re::DynamicString::format("Failed to create shader graph material source for asset (%s)", buf, v85, v113);
          v88 = *buf;
          v89 = *&buf[16];
          v90 = v132;
          *a7 = 0;
          *(a7 + 8) = 100;
          *(a7 + 16) = re::AssetErrorCategory(void)::instance;
          *(a7 + 24) = v88;
          *(a7 + 40) = v89;
          *(a7 + 48) = v90;

LABEL_112:
          goto LABEL_121;
        }

        v33 = *(a4 + 4);
        ComponentCount = MTLDataTypeGetComponentCount();
        ComponentType = MTLDataTypeGetComponentType();
        re::snapshot::EncoderOPACK::beginObject(buf);
        v35 = (v33 + v31);
        re::snapshot::EncoderOPACK::writeInteger(buf, 1);
        re::snapshot::EncoderOPACK::writeInteger(buf, *(v27 + 48));
        re::snapshot::EncoderOPACK::writeInteger(buf, 2);
        if (ComponentType > 36)
        {
          switch(ComponentType)
          {
            case '%':
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v42 = ComponentCount;
                do
                {
                  v43 = *v35++;
                  re::snapshot::EncoderOPACK::writeInteger(buf, v43);
                  --v42;
                }

                while (v42);
              }

              break;
            case ')':
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v46 = ComponentCount;
                do
                {
                  v47 = *v35++;
                  re::snapshot::EncoderOPACK::writeInteger(buf, v47);
                  --v46;
                }

                while (v46);
              }

              break;
            case '5':
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              v38 = ComponentCount;
              if (ComponentCount)
              {
                do
                {
                  v39 = *v35;
                  v35 = (v35 + 1);
                  re::snapshot::EncoderOPACK::operator<<(buf, v39);
                  --v38;
                }

                while (v38);
              }

              break;
            default:
              goto LABEL_58;
          }
        }

        else
        {
          switch(ComponentType)
          {
            case 3:
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v40 = ComponentCount;
                do
                {
                  v41 = *v35;
                  v35 += 2;
                  re::snapshot::EncoderOPACK::operator<<(buf, v41);
                  --v40;
                }

                while (v40);
              }

              break;
            case 29:
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v44 = ComponentCount;
                do
                {
                  v45 = *v35;
                  v35 += 2;
                  re::snapshot::EncoderOPACK::writeInteger(buf, v45);
                  --v44;
                }

                while (v44);
              }

              break;
            case 33:
              re::snapshot::EncoderOPACK::beginArray(buf, ComponentCount);
              if (ComponentCount)
              {
                v36 = ComponentCount;
                do
                {
                  v37 = *v35;
                  v35 += 2;
                  re::snapshot::EncoderOPACK::writeInteger(buf, LODWORD(v37));
                  --v36;
                }

                while (v36);
              }

              break;
            default:
              goto LABEL_58;
          }
        }

        re::snapshot::EncoderOPACK::endArray(buf, ComponentCount);
LABEL_58:
        re::snapshot::EncoderOPACK::endObject(buf);
        if (*(a3 + 32) <= (v20 + 1))
        {
          v48 = v20 + 1;
        }

        else
        {
          v48 = *(a3 + 32);
        }

        v26 = *(a3 + 16);
        while (v48 - 1 != v20)
        {
          LODWORD(v20) = v20 + 1;
          if ((*(v26 + (v20 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_66;
          }
        }

        LODWORD(v20) = v48;
LABEL_66:
        ;
      }

      while (v20 != v19);
    }

    re::snapshot::EncoderOPACK::endDictionary(buf, *(a3 + 28));
    re::snapshot::EncoderOPACK::endObject(buf);
    *buf = &unk_1F5D16DD0;
    v50 = v116;
    if (v134[0] && (v134[1] & 1) != 0)
    {
      (*(*v134[0] + 40))();
    }

    a3 = re::decodeFunctionConstants(v115, v49);
    v130 = a3;
    v51 = *(a1 + 136);
    if (v51)
    {
      v52 = v115;
      *buf = v52;
      (*(*v51 + 48))(v144, v51, &v129, buf);

      if (LOBYTE(v144[0]) == 1)
      {
        v54 = *(&v144[0] + 1);
        v55 = re::globalAllocators(*(&v144[0] + 1));
        v56 = (*(*v55[2] + 32))(v55[2], 344, 8);
        *buf = v129;
        *location = a3;
        re::sg::CachedCompilationMaterial::CachedCompilationMaterial(v56, v54, buf, location);

        v58 = v123[6];
        v123[6] = v56;
        if (v58)
        {

          v56 = v123[6];
        }

        if (*(v56 + 336))
        {
          v59 = (v56 + 8);
          *a7 = 1;
          *(a7 + 8) = v56;

          goto LABEL_92;
        }

        v65 = *re::assetsLogObjects(v57);
        if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
        {
          if (*(v116 + 16))
          {
            v107 = *(v116 + 24);
          }

          else
          {
            v107 = v116 + 17;
          }

          *buf = 136315138;
          *&buf[4] = v107;
          _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, "Error creating CachedCompilationMaterial %s", buf, 0xCu);
        }
      }

      else
      {
        v60 = *re::assetsLogObjects(v53);
        if (os_log_type_enabled(v60, OS_LOG_TYPE_ERROR))
        {
          if (*(v116 + 16))
          {
            v102 = *(v116 + 24);
          }

          else
          {
            v102 = v116 + 17;
          }

          v106 = re::WrappedError::localizedDescription(v144 + 1);
          *buf = 136315394;
          *&buf[4] = v102;
          *&buf[12] = 2080;
          *&buf[14] = v106;
          _os_log_error_impl(&dword_1E1C61000, v60, OS_LOG_TYPE_ERROR, "Error while decoding %s via XPC: %s", buf, 0x16u);
          v50 = v116;
        }
      }
    }

    *&v144[0] = 0;
    a4 = v115;
    *buf = a4;
    v66 = re::shaderGraphHash(&v129, buf, v144);

    v67 = *(a1 + 152);
    if (v67)
    {
      v121[0] = MEMORY[0x1E69E9820];
      v121[1] = 3221225472;
      v121[2] = ___ZNK2re21ShaderGraphLoadHelper30decodeAndSpecializeShaderGraphEPKNS_16ShaderGraphAssetERKNS_9HashTableINS_13DynamicStringENS_17ConstantDataEntryENS_4HashIS5_EENS_7EqualToIS5_EELb1ELb0EEERKNS_12DynamicArrayIhEEmy_block_invoke;
      v121[3] = &unk_1E871B170;
      v121[4] = &v122;
      (*(*v67 + 192))(v67, v114, v66, v121);
    }

    if (!v123[6])
    {
      ComponentType = v129;
      v69 = *&v144[0];
      v70 = ComponentType;
      v71 = [ComponentType bytes];
      v72 = [ComponentType length];
      *location = 0;
      os_unfair_lock_lock(a1);
      re::sg::MaterialSourceCache::lookup((a1 + 8), v71, v69, v72, buf);
      re::ObjCObject::operator=(location, buf);

      os_unfair_lock_unlock(a1);
      v74 = *location;
      if (!*location)
      {
        v19 = *re::assetsLogObjects(v73);
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_134;
        }

        goto LABEL_105;
      }

      if (a6)
      {
        if (*(a1 + 384))
        {
          if (objc_opt_respondsToSelector())
          {
            v75 = [v74 containsPreReleaseNodes];
            v76 = (*(**(a1 + 384) + 88))(*(a1 + 384), a6);
            if (!(v76 & 1 | ((v75 & 1) == 0)))
            {
              v100 = *re::assetsLogObjects(v76);
              if (os_log_type_enabled(v100, OS_LOG_TYPE_ERROR))
              {
                if (*(v50 + 16))
                {
                  v112 = *(v50 + 24);
                }

                else
                {
                  v112 = v50 + 17;
                }

                *buf = 136315138;
                *&buf[4] = v112;
                _os_log_error_impl(&dword_1E1C61000, v100, OS_LOG_TYPE_ERROR, "Failed to create shader graph material source for asset (%s)", buf, 0xCu);
              }

              if (*(v50 + 16))
              {
                v101 = *(v50 + 24);
              }

              else
              {
                v101 = v50 + 17;
              }

              re::DynamicString::format("Invalid entitlements to load asset (%s)", buf, v101);
              v103 = *buf;
              v104 = *&buf[16];
              v105 = v132;
              *a7 = 0;
              *(a7 + 8) = 100;
              *(a7 + 16) = re::AssetErrorCategory(void)::instance;
              *(a7 + 24) = v103;
              *(a7 + 40) = v104;
              *(a7 + 48) = v105;

              goto LABEL_112;
            }
          }
        }
      }

      v77 = MEMORY[0x1E69CD9D8];
      v78 = *location;
      v119 = 0;
      v79 = [v77 materialFromSource:v78 functionConstantValues:a3 error:&v119];
      v80 = v119;
      v81 = v79;
      v120 = v81;

      if (v81)
      {
        re::make::shared::object<re::sg::CachedCompilationMaterial,re::sg::Material,re::sg::MaterialSource const&,SGREMaterialFunctionConstantValues * {__strong}&>(buf, &v120, location, &v130);
        v83 = v123[6];
        v123[6] = *buf;
        if (v83)
        {
        }

        v84 = v120;
      }

      else
      {
        v86 = *re::assetsLogObjects(v82);
        if (os_log_type_enabled(v86, OS_LOG_TYPE_ERROR))
        {
          if (*(v50 + 16))
          {
            v109 = *(v50 + 24);
          }

          else
          {
            v109 = v50 + 17;
          }

          v110 = [v80 debugDescription];
          if (v110)
          {
            v111 = [v80 debugDescription];
          }

          else
          {
            v111 = @"<nil>";
          }

          *buf = 136315394;
          *&buf[4] = v109;
          *&buf[12] = 2112;
          *&buf[14] = v111;
          _os_log_error_impl(&dword_1E1C61000, v86, OS_LOG_TYPE_ERROR, "Failed to create shader graph material for asset (%s). Error: %@", buf, 0x16u);
          v50 = v116;
          if (v110)
          {
          }
        }

        if (*(v50 + 16))
        {
          v87 = *(v50 + 24);
        }

        else
        {
          v87 = v50 + 17;
        }

        v91 = MEMORY[0x1E696AEC0];
        v92 = [v80 debugDescription];
        if (v92)
        {
          v93 = [v80 debugDescription];
        }

        else
        {
          v93 = @"<nil>";
        }

        v94 = [v91 stringWithFormat:@"Failed to create shader graph material for asset (%s). Error: %@", v87, v93];
        if (v92)
        {
        }

        v95 = v94;
        v96 = [v94 UTF8String];
        v97 = *buf;
        v98 = *&buf[16];
        v99 = v132;
        *a7 = 0;
        *(a7 + 8) = 100;
        *(a7 + 16) = re::AssetErrorCategory(void)::instance;
        *(a7 + 24) = v97;
        *(a7 + 40) = v98;
        *(a7 + 48) = v99;

        v84 = 0;
      }

      if (!v81)
      {
LABEL_121:

        goto LABEL_92;
      }
    }

    v23 = v123[6];
    if (v23)
    {
      v68 = (v23 + 8);
    }

LABEL_91:
    *a7 = 1;
    *(a7 + 8) = v23;
    goto LABEL_92;
  }

  v24 = *re::assetsLogObjects(v15);
  if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
  {
    if (*(v11 + 16))
    {
      v25 = *(v11 + 24);
    }

    else
    {
      v25 = v11 + 17;
    }

    *buf = 136315138;
    *&buf[4] = v25;
    _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_INFO, "Bypassing shader graph material creation for asset (%s) because there's no render device available", buf, 0xCu);
  }

  if (*(v11 + 16))
  {
    v61 = *(v11 + 24);
  }

  else
  {
    v61 = v11 + 17;
  }

  re::DynamicString::format("Bypassing shader graph material creation for asset (%s) because there's no render device available", buf, v61);
  v62 = *buf;
  v63 = *&buf[16];
  v64 = v132;
  *a7 = 0;
  *(a7 + 8) = 100;
  *(a7 + 16) = re::AssetErrorCategory(void)::instance;
  *(a7 + 24) = v62;
  *(a7 + 40) = v63;
  *(a7 + 48) = v64;
LABEL_92:
  _Block_object_dispose(&v122, 8);
  if (v128)
  {
  }
}

void sub_1E207BE68(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a24, 8);
  if (a30)
  {
  }

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 48) = *(a2 + 48);
  *(a2 + 48) = 0;
  return result;
}

void __Block_byref_object_dispose__3(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1)
  {

    *(a1 + 48) = 0;
  }
}

id re::decodeFunctionConstants(re *this, const __CFData *a2)
{
  v48 = *MEMORY[0x1E69E9840];
  v33 = objc_opt_new();
  v34 = objc_opt_new();
  BytePtr = CFDataGetBytePtr(this);
  Length = CFDataGetLength(this);
  v40[1] = BytePtr;
  v40[2] = Length;
  v41 = -1;
  v42 = 0;
  v43 = 0;
  v45 = 0;
  v40[3] = BytePtr;
  v40[4] = Length + BytePtr;
  v40[0] = &unk_1F5D17190;
  if (re::snapshot::DecoderOPACK::beginObject(v40, 0))
  {
    re::snapshot::DecoderOPACK::beginField(v40, 1, 0);
    v39 = 0;
    v5 = re::snapshot::DecoderOPACK::beginDictionary(v40, &v39);
    if (v5)
    {
      v6 = v39;
      if (v39)
      {
        v7 = 0;
        do
        {
          v37 = 0u;
          v38 = 0u;
          re::DynamicString::setCapacity(&v37, 0);
          v46[0] = 0;
          if (re::snapshot::DecoderOPACK::beginString(v40, v46))
          {
            v8 = v46[0];
            re::DynamicString::resize(&v37, v46[0], 0);
            if (BYTE8(v37))
            {
              v9 = v38;
            }

            else
            {
              v9 = &v37 + 9;
            }

            re::snapshot::BufferDecoder::readRaw(v40, v9, v8);
          }

          re::snapshot::DecoderOPACK::beginObject(v40, 0);
          re::snapshot::DecoderOPACK::beginField(v40, 1, 0);
          re::snapshot::DecoderOPACK::readInteger(v40, 0);
          ComponentCount = MTLDataTypeGetComponentCount();
          ComponentType = MTLDataTypeGetComponentType();
          re::snapshot::DecoderOPACK::endField(v40);
          re::snapshot::DecoderOPACK::beginField(v40, 2, 0);
          v47 = 0u;
          *v46 = 0u;
          v36 = 0;
          re::snapshot::DecoderOPACK::beginArray(v40, &v36);
          if (ComponentCount)
          {
            v12 = v46;
            v13 = ComponentCount;
            do
            {
              if (ComponentType > 36)
              {
                switch(ComponentType)
                {
                  case '%':
                    v21 = [MEMORY[0x1E696AD98] numberWithShort:{re::snapshot::DecoderOPACK::readInteger(v40, 0)}];
                    v22 = *v12;
                    *v12 = v21;

                    break;
                  case ')':
                    v25 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:{re::snapshot::DecoderOPACK::readInteger(v40, 0)}];
                    v26 = *v12;
                    *v12 = v25;

                    break;
                  case '5':
                    LOBYTE(v35) = 0;
                    re::snapshot::DecoderOPACK::operator>>(v40, &v35);
                    v16 = [MEMORY[0x1E696AD98] numberWithBool:v35];
                    v17 = *v12;
                    *v12 = v16;

                    break;
                }
              }

              else
              {
                switch(ComponentType)
                {
                  case 3:
                    v35 = 0;
                    re::snapshot::DecoderOPACK::operator>>(v40, &v35);
                    LODWORD(v18) = v35;
                    v19 = [MEMORY[0x1E696AD98] numberWithFloat:v18];
                    v20 = *v12;
                    *v12 = v19;

                    break;
                  case 29:
                    v23 = [MEMORY[0x1E696AD98] numberWithInt:{re::snapshot::DecoderOPACK::readInteger(v40, 0)}];
                    v24 = *v12;
                    *v12 = v23;

                    break;
                  case 33:
                    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{re::snapshot::DecoderOPACK::readInteger(v40, 0)}];
                    v15 = *v12;
                    *v12 = v14;

                    break;
                }
              }

              ++v12;
              --v13;
            }

            while (v13);
          }

          re::snapshot::DecoderOPACK::endArray(v40, &v36);
          re::snapshot::DecoderOPACK::endField(v40);
          re::snapshot::DecoderOPACK::endObject(v40, 0);
          if (BYTE8(v37))
          {
            v27 = v38;
          }

          else
          {
            v27 = &v37 + 9;
          }

          v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{v27, v33}];
          if (ComponentCount == 1)
          {
            [v33 setObject:v46[0] forKey:v28];
          }

          else
          {
            v29 = [MEMORY[0x1E695DEC8] arrayWithObjects:v46 count:ComponentCount];
            [v34 setObject:v29 forKey:v28];
          }

          for (i = 3; i != -1; --i)
          {
          }

          v5 = v37;
          if (v37 && (BYTE8(v37) & 1) != 0)
          {
            v5 = (*(*v37 + 40))();
          }

          ++v7;
        }

        while (v7 != v6);
      }

      re::snapshot::DecoderOPACK::endDictionary(v40, &v39);
    }

    re::snapshot::DecoderOPACK::endField(v40);
    re::snapshot::DecoderOPACK::endObject(v40, 0);
  }

  if (v42)
  {
    v31 = 0;
  }

  else
  {
    v31 = [objc_alloc(MEMORY[0x1E69CD9D0]) initWithScalarFunctionConstants:v33 vectorFunctionConstants:v34];
  }

  return v31;
}

unint64_t re::shaderGraphHash(id *a1, id *a2, unint64_t *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v6 = 0x9E3779B97F4A7C17;
  if ([*a1 bytes] && (v7 = objc_msgSend(*a1, "bytes"), (v8 = objc_msgSend(*a1, "length")) != 0))
  {
    MurmurHash3_x64_128(v7, v8, 0, &v13);
    v9 = (v14 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13;
  }

  else
  {
    v9 = 0;
  }

  if ([*a2 bytes])
  {
    v10 = [*a2 bytes];
    v11 = [*a2 length];
    if (v11)
    {
      MurmurHash3_x64_128(v10, v11, 0, &v13);
      v6 = ((v14 - 0x61C8864680B583E9 + (v13 << 6) + (v13 >> 2)) ^ v13) - 0x61C8864680B583E9;
    }
  }

  if (a3)
  {
    *a3 = v9;
  }

  return ((v9 >> 2) + (v9 << 6) + v6) ^ v9;
}

void ___ZNK2re21ShaderGraphLoadHelper30decodeAndSpecializeShaderGraphEPKNS_16ShaderGraphAssetERKNS_9HashTableINS_13DynamicStringENS_17ConstantDataEntryENS_4HashIS5_EENS_7EqualToIS5_EELb1ELb0EEERKNS_12DynamicArrayIhEEmy_block_invoke(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v4 = (a2 + 8);
  }

  v5 = *(*(a1 + 32) + 8);
  v6 = *(v5 + 48);
  *(v5 + 48) = a2;
  if (v6)
  {
  }
}

unsigned int *re::snapshot::EncoderOPACK::beginObject(unsigned int *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 < this[5])
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v2 + 1);
  if (this)
  {
    LODWORD(v2) = v1[4];
LABEL_2:
    v3 = *(v1 + 1);
    v1[4] = v2 + 1;
    *(v3 + v2) = -17;
  }

  return this;
}

unsigned int *re::snapshot::EncoderOPACK::endObject(unsigned int *this)
{
  v1 = this;
  v2 = this[4];
  if (v2 < this[5])
  {
    goto LABEL_2;
  }

  this = re::snapshot::BufferEncoder::grow(this, v2 + 1);
  if (this)
  {
    LODWORD(v2) = v1[4];
LABEL_2:
    v3 = *(v1 + 1);
    v1[4] = v2 + 1;
    *(v3 + v2) = 3;
  }

  return this;
}

UInt8 *re::encodeFunctionConstants(re::HashTable<re::DynamicString,re::ConstantDataEntry,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false> const&,re::DynamicArray<unsigned char> const&,__CFData *)::$_0::__invoke(const __CFData *a1, uint64_t a2, uint64_t a3)
{
  Length = CFDataGetLength(a1);
  if (2 * Length <= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = 2 * Length;
  }

  CFDataSetLength(a1, v6);
  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  CFDataGetLength(a1);
  return MutableBytePtr;
}

uint64_t re::snapshot::BufferEncoder::grow(re::snapshot::BufferEncoder *this, unint64_t a2)
{
  v4 = (*(this + 4))(*(this + 3), *(this + 1), a2);
  *(this + 1) = v4;
  *(this + 5) = v5;
  if (v4)
  {
    v6 = a2 > v5;
  }

  else
  {
    v6 = 1;
  }

  v7 = !v6;
  if (v6)
  {
    re::snapshot::BufferEncoder::error(this, "couldn't grow buffer to %zu bytes (buffer = %p, capacity = %d)", a2, v4, v5);
  }

  return v7;
}

BOOL re::snapshot::DecoderOPACK::beginField(re::snapshot::DecoderOPACK *this, int a2, const char *a3)
{
  Integer = *(this + 10);
  if (Integer < a2)
  {
    while (1)
    {
      v6 = *(this + 3);
      if (v6 >= *(this + 4))
      {
        v7 = 0;
      }

      else
      {
        *(this + 3) = v6 + 1;
        v7 = *v6;
      }

      re::snapshot::DecoderOPACK::skip(this, v7);
      v8 = *(this + 3);
      if (v8 >= *(this + 4))
      {
        break;
      }

      v9 = *v8;
      if (v9 == 3)
      {
        break;
      }

      if ((v9 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
      }

      else
      {
        *(this + 3) = v8 + 1;
        Integer = v9 - 8;
      }

      *(this + 10) = Integer;
      if (Integer >= a2)
      {
        return Integer == a2;
      }
    }

    Integer = 0x7FFFFFFF;
    *(this + 10) = 0x7FFFFFFF;
  }

  return Integer == a2;
}

uint64_t re::snapshot::DecoderOPACK::endField(re::snapshot::DecoderOPACK *this)
{
  v2 = *(this + 3);
  if (v2 >= *(this + 4) || (v3 = *v2, v3 == 3))
  {
    result = 0x7FFFFFFFLL;
  }

  else if ((v3 - 7) > 0x28)
  {
    result = re::snapshot::DecoderOPACK::readInteger(this, 0x7FFFFFFFLL);
  }

  else
  {
    *(this + 3) = v2 + 1;
    result = (v3 - 8);
  }

  *(this + 10) = result;
  return result;
}

BOOL re::snapshot::BufferDecoder::readRaw(re::snapshot::BufferDecoder *this, void *__dst, size_t __len)
{
  v6 = *(this + 3);
  v7 = *(this + 4) - v6;
  if (v7 < __len)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", __len, v7);
  }

  else
  {
    if (__len)
    {
      memmove(__dst, v6, __len);
      v6 = *(this + 3);
    }

    *(this + 3) = &v6[__len];
  }

  return v7 >= __len;
}

void re::make::shared::object<re::sg::CachedCompilationMaterial,re::sg::Material,re::sg::MaterialSource const&,SGREMaterialFunctionConstantValues * {__strong}&>(re *a1, uint64_t *a2, id *a3, id *a4)
{
  v8 = re::globalAllocators(a1);
  v9 = (*(*v8[2] + 32))(v8[2], 344, 8);
  v10 = *a4;
  re::sg::CachedCompilationMaterial::CachedCompilationMaterial(v9, a2, a3, &v10);
  *a1 = v9;
}

void sub_1E207D09C(_Unwind_Exception *a1)
{
  v6 = v5;

  _Unwind_Resume(a1);
}

id re::anonymous namespace::decodeError(re::_anonymous_namespace_ *this, NSString *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "DrawableQueue payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Mesh payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Direct Resource payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

{
  v12 = *MEMORY[0x1E69E9840];
  v2 = this;
  v3 = *re::assetTypesLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 138543362;
    v11 = v2;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "Mesh payload decode error: %{public}@", buf, 0xCu);
  }

  v4 = MEMORY[0x1E696ABC0];
  v8 = *MEMORY[0x1E696A278];
  v9 = v2;
  v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v9 forKeys:&v8 count:1];
  v6 = [v4 errorWithDomain:*MEMORY[0x1E696A250] code:4864 userInfo:v5];

  return v6;
}

void re::DrawableQueuePayload::make(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, REDrawableQueuePayload **a9@<X8>)
{
  v26[1] = *MEMORY[0x1E69E9840];
  MEMORY[0x1EEE9AC00](a1);
  v19 = v26 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  bzero(v19, v18);
  if (a5)
  {
    v20 = v19;
    v21 = a5;
    do
    {
      v22 = *a4++;
      *v20 = v22;
      v20 += 8;
      --v21;
    }

    while (v21);
  }

  v23 = [REDrawableQueuePayload alloc];
  v24 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:a5];
  v25 = [(REDrawableQueuePayload *)v23 initWithWidth:a1 height:a2 pixelFormat:a3 textureHandles:v24 allowPixelFormatConversion:a6 machSemaphore:a7 queueStateShmem:a8 queueStateLength:336];
  *a9 = v25;
}

uint64_t re::DrawableQueuePayload::drawableCount(id *this)
{
  v1 = [*this textureHandles];
  v2 = [v1 count];

  return v2;
}

void *re::DrawableQueuePayload::textureHandle(id *this, int a2)
{
  v3 = [*this textureHandles];
  v4 = [v3 objectAtIndexedSubscript:a2];

  return v4;
}

void *re::DrawableQueuePayload::mapQueueStateShmem(id *this)
{
  region = 0;
  v1 = [*this queueStateShmem];
  v2 = xpc_shmem_map(v1, &region);

  if (!v2)
  {
    return 0;
  }

  if (v2 > 0x14F)
  {
    return region;
  }

  re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "length >= sizeof(SharedRingBuffer)", "mapQueueStateShmem", 298);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::introspect_AcousticMeshAssetMeshType(re *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE197AD8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE197AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197AE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE197B28, "AcousticMeshAssetMeshType", 4, 4, 1, 1);
      qword_1EE197B28 = &unk_1F5D0C658;
      qword_1EE197B68 = &re::introspect_AcousticMeshAssetMeshType(BOOL)::enumTable;
      dword_1EE197B38 = 9;
      __cxa_guard_release(&qword_1EE197AE0);
    }

    if (_MergedGlobals_84)
    {
      break;
    }

    _MergedGlobals_84 = 1;
    re::IntrospectionRegistry::add(&qword_1EE197B28, a2);
    v33 = 0x7DF6D808D13ABC8ELL;
    v34 = "AcousticMeshAssetMeshType";
    v38 = 208862;
    v39 = "int";
    v4 = v37[0];
    v5 = v37[1];
    if (v38)
    {
      if (v38)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE197B68;
      v38 = v4;
      v39 = v5;
      re::TypeBuilder::beginEnumType(v37, &v33, 1, 1, &v38);
      v7 = *v6;
      if (v7)
      {
        for (i = 0; i < v7; ++i)
        {
          v9 = *(*(v6 + 1) + 8 * i);
          if (*v9 == 1)
          {
            v10 = *(v9 + 16);
            if (v10)
            {
              v11 = *v10;
              if (*v10)
              {
                v12 = v10[1];
                if (v12)
                {
                  v13 = (v10 + 2);
                  do
                  {
                    v11 = 31 * v11 + v12;
                    v14 = *v13++;
                    v12 = v14;
                  }

                  while (v14);
                }
              }
            }

            else
            {
              v11 = 0;
            }

            v15 = *(v9 + 8);
            *&v36.var0 = 2 * v11;
            v36.var1 = v10;
            re::TypeBuilder::addEnumConstant(v37, v15, &v36);
            if (*&v36.var0)
            {
              if (*&v36.var0)
              {
              }
            }

            v7 = *v6;
          }
        }

        if (v7)
        {
          for (j = 0; j < v7; ++j)
          {
            v18 = *(*(v6 + 1) + 8 * j);
            if (*v18 == 2)
            {
              v19 = *(v18 + 16);
              if (v19)
              {
                v20 = *v19;
                if (*v19)
                {
                  v21 = v19[1];
                  if (v21)
                  {
                    v22 = (v19 + 2);
                    do
                    {
                      v20 = 31 * v20 + v21;
                      v23 = *v22++;
                      v21 = v23;
                    }

                    while (v23);
                  }
                }
              }

              else
              {
                v20 = 0;
              }

              v24 = *(v18 + 8);
              *&v36.var0 = 2 * v20;
              v36.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v37, v24, &v36);
              if (*&v36.var0)
              {
                if (*&v36.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v37, v26);
      xmmword_1EE197B48 = v35;
      if (v33)
      {
        if (v33)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v34);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE197AD8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Empty";
      qword_1EE197B18 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "GeomMesh";
      qword_1EE197B20 = v32;
      __cxa_guard_release(&qword_1EE197AD8);
    }
  }
}

void *re::allocInfo_AcousticMeshAsset(re *this)
{
  if ((atomic_load_explicit(&qword_1EE197AE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197AE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197B70, "AcousticMeshAsset");
    __cxa_guard_release(&qword_1EE197AE8);
  }

  return &unk_1EE197B70;
}

void re::initInfo_AcousticMeshAsset(re *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x7370B71E3F67FEC0;
  v10[1] = "AcousticMeshAsset";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE197AF8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197AF8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::introspect_AcousticMeshAssetMeshType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "meshType";
      *(v8 + 16) = &qword_1EE197B28;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0x800000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE197AF0 = v8;
      __cxa_guard_release(&qword_1EE197AF8);
    }
  }

  *(this + 2) = 0x2F800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE197AF0;
  *(this + 9) = re::internal::defaultConstruct<re::AcousticMeshAsset>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AcousticMeshAsset>;
  *(this + 13) = re::internal::defaultConstructV2<re::AcousticMeshAsset>;
  *(this + 14) = re::internal::defaultDestructV2<re::AcousticMeshAsset>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::GeomMesh *re::internal::defaultConstruct<re::AcousticMeshAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CC6700;
  *(a3 + 8) = 0;
  result = re::GeomMesh::GeomMesh((a3 + 16), 0);
  *(a3 + 752) = 0;
  return result;
}

void re::internal::defaultDestruct<re::AcousticMeshAsset>(uint64_t a1, uint64_t a2, uint64_t a3)
{

  re::GeomMesh::~GeomMesh((a3 + 16));
}

re::GeomMesh *re::internal::defaultConstructV2<re::AcousticMeshAsset>(uint64_t a1)
{
  *a1 = &unk_1F5CC6700;
  *(a1 + 8) = 0;
  result = re::GeomMesh::GeomMesh((a1 + 16), 0);
  *(a1 + 752) = 0;
  return result;
}

void re::internal::defaultDestructV2<re::AcousticMeshAsset>(uint64_t a1)
{

  re::GeomMesh::~GeomMesh((a1 + 16));
}

void re::AcousticMeshAsset::~AcousticMeshAsset(re::AcousticMeshAsset *this)
{
  re::GeomMesh::~GeomMesh(this + 2);
}

{

  re::GeomMesh::~GeomMesh(this + 2);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AcousticMeshAsset::assetType(re::AcousticMeshAsset *this)
{
  {
    re::AcousticMeshAsset::assetType(void)::type = "AcousticMesh";
    qword_1EE1C6E28 = 0;
    re::AssetType::generateCompiledExtension(&re::AcousticMeshAsset::assetType(void)::type);
  }

  return &re::AcousticMeshAsset::assetType(void)::type;
}

re::DynamicString *re::AcousticMeshAssetCompiler::getCurrentCompiledAssetInfo@<X0>(re::AcousticMeshAssetCompiler *this@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 32) = 0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  v3 = re::DynamicString::setCapacity((a2 + 8), 0);
  *a2 = 0x100000001;
  re::AcousticMeshAsset::assetType(v3);
  v5[0] = re::AcousticMeshAsset::assetType(void)::type;
  v5[1] = strlen(re::AcousticMeshAsset::assetType(void)::type);
  return re::DynamicString::operator=((a2 + 8), v5);
}

uint64_t re::AcousticMeshAssetCompiler::assetIntrospectionType(re::AcousticMeshAssetCompiler *this)
{
  if ((atomic_load_explicit(&qword_1EE197B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197B10))
  {
    qword_1EE197B08 = re::internal::getOrCreateInfo("AcousticMeshAsset", re::allocInfo_AcousticMeshAsset, re::initInfo_AcousticMeshAsset, &unk_1EE197B00, 0);
    __cxa_guard_release(&qword_1EE197B10);
  }

  return qword_1EE197B08;
}

void re::AcousticMeshAssetCompiler::getSupportedExtensions(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
}

__n128 re::AcousticMeshAssetCompiler::compile@<Q0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  result = v6;
  v4 = v7;
  v5 = v8;
  *a2 = 0;
  *(a2 + 8) = 100;
  *(a2 + 16) = re::AssetErrorCategory(void)::instance;
  *(a2 + 24) = result;
  *(a2 + 40) = v4;
  *(a2 + 48) = v5;
  return result;
}

re *re::internal::destroyPersistent<re::AcousticMeshAsset>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];

    re::GeomMesh::~GeomMesh(v1 + 2);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::AcousticMeshAssetLoader::serializeAssetBlob(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 8);
  if (!v3)
  {
    return 1;
  }

  if (v3 == 1)
  {
    return re::internal::writeGeomMeshToStream(a3 + 16, a2);
  }

  return 0;
}

BOOL re::AcousticMeshAssetLoader::createRuntimeData(uint64_t a1, uint64_t a2, const char *a3)
{
  v3 = *(a2 + 8);
  if (!v3)
  {
    return 1;
  }

  if (v3 != 1)
  {
    return 0;
  }

  if (a3)
  {
    v9 = &unk_1F5D0AE00;
    v10 = a3;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    v14 = (*(*a3 + 40))(a3);
    v15 = 0;
    GeomMeshFromStream = re::internal::readGeomMeshFromStream((a2 + 16), &v9, v5);
    if (v12)
    {
      (*(*v10 + 24))(v10);
    }

    if (!GeomMeshFromStream)
    {
      return 0;
    }
  }

  v7 = re::createMDLMeshFromGeomMesh((a2 + 16), re::AcousticMeshAsset::kMaterialAttributeName, a3);
  re::ObjCObject::operator=((a2 + 752), v7);

  return *(a2 + 752) != 0;
}

void sub_1E207E498(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, int a13)
{
  if (a13)
  {
    (*(*a11 + 24))(a11);
  }

  _Unwind_Resume(exception_object);
}

re *re::AcousticMeshAssetLoader::unloadAsset(re::AcousticMeshAssetLoader *this, re *a2)
{
  if (a2)
  {
    return re::internal::destroyPersistent<re::AcousticMeshAsset>(a2);
  }

  return result;
}

uint64_t re::AcousticMeshAssetLoader::isSupportedSourceExtension(re::AcousticMeshAssetLoader *this, const char *__s)
{
  v3 = strlen(__s);
  if (v3 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::string::__throw_length_error[abi:nn200100]();
  }

  v4 = v3;
  if (v3 >= 0x17)
  {
    operator new();
  }

  v10 = v3;
  if (v3)
  {
    memcpy(__dst, __s, v3);
  }

  *(__dst + v4) = 0;
  v5 = v10;
  if ((v10 & 0x80u) == 0)
  {
    v6 = (__dst + v10);
  }

  else
  {
    v6 = (__dst[0] + __dst[1]);
  }

  if ((v10 & 0x80u) == 0)
  {
    v7 = __dst;
  }

  else
  {
    v7 = __dst[0];
  }

  if (v7 != v6)
  {
    do
    {
      *v7 = __tolower(*v7);
      v7 = (v7 + 1);
    }

    while (v7 != v6);
    v5 = v10;
  }

  if ((v5 & 0x80) != 0)
  {
    operator delete(__dst[0]);
  }

  return 0;
}

void sub_1E207E5E8(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

uint64_t re::AcousticMeshAssetLoader::introspectionType(re::AcousticMeshAssetLoader *this)
{
  if ((atomic_load_explicit(&qword_1EE197B10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197B10))
  {
    qword_1EE197B08 = re::internal::getOrCreateInfo("AcousticMeshAsset", re::allocInfo_AcousticMeshAsset, re::initInfo_AcousticMeshAsset, &unk_1EE197B00, 0);
    __cxa_guard_release(&qword_1EE197B10);
  }

  return qword_1EE197B08;
}

semaphore_t *re::LocklessRingBuffer::LocklessRingBuffer(semaphore_t *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CC67B0;
  this[6] = 0;
  *(this + 4) = 0;
  if (!semaphore_create(*MEMORY[0x1E69E9A60], this + 6, 0, 0))
  {
    return this;
  }

  re::internal::assertLog(4, v2, "assertion failure: '%s' (%s:line %i) Failed to create mach semaphore!", "kr == 0", "LocklessRingBuffer", 22);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::LocklessRingBuffer::~LocklessRingBuffer(re::LocklessRingBuffer *this)
{
  *this = &unk_1F5CC67B0;
  v2 = *(this + 6);
  if (v2)
  {
    semaphore_destroy(*MEMORY[0x1E69E9A60], v2);
    *(this + 6) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::LocklessRingBuffer::~LocklessRingBuffer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::LocklessRingBuffer::initializeIntoBuffer(re::LocklessRingBuffer *this, void *a2)
{
  *(this + 4) = a2;
  atomic_fetch_add(re::g_GlobalCounter, 1u);
  v3 = atomic_load(re::g_GlobalCounter);
  result = getpid();
  v5 = 0;
  v6 = *(this + 4);
  *v6 = v3 | (result << 32);
  atomic_store(0, v6 + 3);
  atomic_store(0, (*(this + 4) + 16));
  atomic_store(0, (*(this + 4) + 8));
  do
  {
    atomic_store(0, (*(this + 4) + v5 + 32));
    atomic_store(0, (*(this + 4) + v5 + 40));
    v5 += 16;
  }

  while (v5 != 48);
  return result;
}

BOOL re::LocklessRingBuffer::waitForSemaphoreSignal@<W0>(uint64_t a1@<X0>, double a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  if (a3)
  {
    LODWORD(a4) = vcvtmd_u64_f64(a2);
    v5 = a4 | (((a2 - floor(a2)) * 1000000000.0) << 32);
    do
    {
      v6 = v5;
      v7 = semaphore_timedwait(*(a1 + 24), v6);
    }

    while (v7 == 14);
  }

  else
  {
    do
    {
      v7 = MEMORY[0x1E6907EC0](*(a1 + 24));
    }

    while (v7 == 14);
  }

  return v7 == 0;
}

uint64_t re::LocklessRingBuffer::writerAcquireBuffer(uint64_t a1, uint64_t a2, char a3)
{
  v3 = atomic_load((*(a1 + 32) + 8));
  if (v3 != 1)
  {
    return 0xFFFFFFFFLL;
  }

  LODWORD(v7) = 0;
  v8 = 0;
  v9 = -1;
  v10 = 0xFFFFFFFFLL;
  do
  {
    if (!atomic_load((*(a1 + 32) + v8 + 32)))
    {
      v12 = atomic_load((*(a1 + 32) + v8 + 40));
      if (v12 >= v9)
      {
        v10 = v10;
      }

      else
      {
        v9 = v12;
        v10 = v7;
      }
    }

    v8 += 16;
    v7 = (v7 + 1);
  }

  while (v8 != 48);
  while (1)
  {
    while (v10 == -1)
    {
      if (re::LocklessRingBuffer::waitForSemaphoreSignal(a1, *&a2, a3, v7))
      {
        LODWORD(v7) = 0;
        v18 = 0;
        v19 = -1;
        v10 = 0xFFFFFFFFLL;
        do
        {
          if (!atomic_load((*(a1 + 32) + v18 + 32)))
          {
            v21 = atomic_load((*(a1 + 32) + v18 + 40));
            if (v21 >= v19)
            {
              v10 = v10;
            }

            else
            {
              v19 = v21;
              v10 = v7;
            }
          }

          v18 += 16;
          v7 = (v7 + 1);
        }

        while (v18 != 48);
        if (v10 != -1)
        {
          continue;
        }
      }

      return 0xFFFFFFFFLL;
    }

    v13 = 0;
    atomic_compare_exchange_strong((*(a1 + 32) + 16 * v10 + 32), &v13, 1u);
    if (!v13)
    {
      break;
    }

    LODWORD(v7) = 0;
    v14 = 0;
    v15 = -1;
    v10 = 0xFFFFFFFFLL;
    do
    {
      if (!atomic_load((*(a1 + 32) + v14 + 32)))
      {
        v17 = atomic_load((*(a1 + 32) + v14 + 40));
        if (v17 >= v15)
        {
          v10 = v10;
        }

        else
        {
          v15 = v17;
          v10 = v7;
        }
      }

      v14 += 16;
      v7 = (v7 + 1);
    }

    while (v14 != 48);
  }

  do
  {
    v22 = 0;
  }

  while (semaphore_timedwait(*(a1 + 24), v22) == 14);
  v23 = atomic_load((*(a1 + 32) + 24));
  atomic_store(v23 + 1, (*(a1 + 32) + 16 * v10 + 40));
  v24 = v23;
  atomic_compare_exchange_strong((*(a1 + 32) + 24), &v24, v23 + 1);
  if (v24 != v23)
  {
    v25 = v24;
    do
    {
      atomic_store(v24 + 1, (*(a1 + 32) + 16 * v10 + 40));
      atomic_compare_exchange_strong((*(a1 + 32) + 24), &v25, v24 + 1);
      v26 = v25 == v24;
      v24 = v25;
    }

    while (!v26);
  }

  return v10;
}

uint64_t re::LocklessRingBuffer::writerReleaseBuffer(uint64_t this, uint64_t a2, int a3)
{
  v5 = atomic_load((*(this + 32) + 16 * a2 + 32));
  if (v5 == 1)
  {
    if (a3)
    {
      v6 = 3;
    }

    else
    {
      v6 = 2;
    }

    v7 = 1;
    atomic_compare_exchange_strong((*(this + 32) + 16 * a2 + 32), &v7, v6);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Trying to release a buffer that is not in writing state!", "currState == BufferState::kWriting", "writerReleaseBuffer", 215, v3, v4);
    this = _os_crash();
    __break(1u);
  }

  return this;
}

uint64_t re::LocklessRingBuffer::getLatestReadableBufferIndex(re::LocklessRingBuffer *this)
{
  v1 = 0;
  v2 = 0;
  v3 = 0;
  v4 = 0xFFFFFFFFLL;
  do
  {
    v5 = atomic_load((*(this + 4) + v2 + 32));
    if (v5 == 4)
    {
      v6 = atomic_load((*(this + 4) + v2 + 40));
      if (v6 <= v3)
      {
        v4 = v4;
      }

      else
      {
        v3 = v6;
        v4 = v1;
      }
    }

    v2 += 16;
    ++v1;
  }

  while (v2 != 48);
  if (v4 >= 3)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v4 = 0xFFFFFFFFLL;
    do
    {
      v10 = atomic_load((*(this + 4) + v8 + 32));
      if ((v10 & 0xFFFFFFFE) == 2)
      {
        v11 = atomic_load((*(this + 4) + v8 + 40));
        v12 = v11 >= v9;
        if (v11 > v9)
        {
          v9 = v11;
        }

        if (v12)
        {
          v4 = v7;
        }

        else
        {
          v4 = v4;
        }
      }

      v8 += 16;
      ++v7;
    }

    while (v8 != 48);
  }

  return v4;
}

uint64_t re::LocklessRingBuffer::readerAcquireBuffer(re::LocklessRingBuffer *this)
{
  v1 = atomic_load((*(this + 4) + 16));
  if (v1)
  {
    if (v1 == this)
    {
      goto LABEL_3;
    }

    return 0xFFFFFFFFLL;
  }

  atomic_compare_exchange_strong((*(this + 4) + 16), &v1, this);
  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0xFFFFFFFFLL;
  do
  {
    v6 = atomic_load((*(this + 4) + v3 + 32));
    if (v6 == 2)
    {
      v7 = atomic_load((*(this + 4) + v3 + 40));
      if (v7 <= v4)
      {
        v5 = v5;
      }

      else
      {
        v4 = v7;
        v5 = v2;
      }
    }

    v3 += 16;
    ++v2;
  }

  while (v3 != 48);
  while (v5 != -1)
  {
    v8 = 2;
    atomic_compare_exchange_strong((*(this + 4) + 16 * v5 + 32), &v8, 4u);
    if (v8 == 2)
    {
      break;
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    v5 = 0xFFFFFFFFLL;
    do
    {
      v12 = atomic_load((*(this + 4) + v10 + 32));
      if (v12 == 2)
      {
        v13 = atomic_load((*(this + 4) + v10 + 40));
        if (v13 <= v11)
        {
          v5 = v5;
        }

        else
        {
          v11 = v13;
          v5 = v9;
        }
      }

      v10 += 16;
      ++v9;
    }

    while (v10 != 48);
  }

  return v5;
}

uint64_t re::LocklessRingBuffer::readerAcquireAnyWrittenBuffer(re::LocklessRingBuffer *this)
{
  v1 = atomic_load((*(this + 4) + 16));
  if (v1)
  {
    if (v1 == this)
    {
      goto LABEL_3;
    }

    return 0xFFFFFFFFLL;
  }

  atomic_compare_exchange_strong((*(this + 4) + 16), &v1, this);
  if (v1)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_3:
  v2 = 0;
  v3 = 0;
  v4 = 0;
  v5 = 0;
  v6 = 0xFFFFFFFFLL;
  do
  {
    v7 = atomic_load((*(this + 4) + v3 + 32));
    if ((v7 & 0xFFFFFFFE) == 2)
    {
      v8 = atomic_load((*(this + 4) + v3 + 40));
      if (v8 >= v5)
      {
        v4 = v7;
        v5 = v8;
        v6 = v2;
      }
    }

    v3 += 16;
    v2 = (v2 + 1);
  }

  while (v3 != 48);
  while (v6 != -1)
  {
    v9 = v4;
    if ((v4 & 0xFFFFFFFE) == 2)
    {
      v9 = v4;
      atomic_compare_exchange_strong((*(this + 4) + 16 * v6 + 32), &v9, 4u);
      if (v9 == v4)
      {
        break;
      }
    }

    if (v9 - 4 <= 0xFFFFFFFD)
    {
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v6 = 0xFFFFFFFFLL;
      do
      {
        v13 = atomic_load((*(this + 4) + v11 + 32));
        if ((v13 & 0xFFFFFFFE) == 2)
        {
          v14 = atomic_load((*(this + 4) + v11 + 40));
          if (v14 >= v12)
          {
            v4 = v13;
            v12 = v14;
            v6 = v10;
          }
        }

        v11 += 16;
        v10 = (v10 + 1);
      }

      while (v11 != 48);
    }
  }

  return v6;
}

void re::LocklessRingBuffer::readerReleaseBuffer(re::LocklessRingBuffer *this, uint64_t a2)
{
  v4 = atomic_load((*(this + 4) + 16));
  if (v4)
  {
    if (v4 != this)
    {
      return;
    }
  }

  else
  {
    atomic_compare_exchange_strong((*(this + 4) + 16), &v4, this);
    if (v4)
    {
      return;
    }
  }

  v5 = atomic_load((*(this + 4) + 16 * a2 + 32));
  if (v5 != 4)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Trying to free a buffer that is not in reading state!", "currState == BufferState::kReading", "readerReleaseBuffer", 389, v2, v3);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  v6 = 4;
  atomic_compare_exchange_strong((*(this + 4) + 16 * a2 + 32), &v6, 0);
  if (v6 == 4)
  {

LABEL_12:
    JUMPOUT(0x1E6907EA0);
  }
}

unint64_t re::LocklessRingBuffer::readerReleaseAnyWrittenBuffer(unint64_t this)
{
  v1 = this;
  v2 = atomic_load((*(this + 32) + 16));
  if (v2)
  {
    if (v2 != this)
    {
      return this;
    }
  }

  else
  {
    atomic_compare_exchange_strong((*(this + 32) + 16), &v2, this);
    if (v2)
    {
      return this;
    }
  }

  for (i = 32; i != 80; i += 16)
  {
    v4 = atomic_load((*(v1 + 32) + i));
    if (v4 == 2)
    {
      v5 = 2;
      atomic_compare_exchange_strong((*(v1 + 32) + i), &v5, 0);
      if (v5 == 2)
      {
        this = MEMORY[0x1E6907EA0](*(v1 + 24));
      }
    }
  }

  return this;
}

uint64_t re::TypeAvailabilityUtilities::checkAssetIsAvailableForMajorVersion(re::SceneAsset *a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = re::IntrospectionSharedLock::IntrospectionSharedLock(&v32);
  v9 = *(a1 + 1);
  if (v9)
  {
    v10 = *(v9 + 280);
    if (v10 == re::SceneAsset::assetType(v8))
    {
      v11 = re::AssetHandle::blockUntilLoaded<re::SceneAsset>(a1);
      LOBYTE(v28) = 0;
      LOBYTE(v31) = 0;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = *(v11 + 32);
        v14 = 112 * v12;
        do
        {
          v13 += 14;
          v14 -= 112;
        }

        while (v14);
        LOBYTE(v12) = v28;
        v15 = v31;
      }

      else
      {
        v15 = 0;
      }

      v24 = (v15 | v12 & a4) ^ 1;
      goto LABEL_20;
    }
  }

  else
  {
    re::SceneAsset::assetType(v8);
  }

  AssetLoader = re::AssetHandle::getAssetLoader(a1);
  v17 = (*(*AssetLoader + 128))(AssetLoader);
  v31 = *(v17 + 32);
  v27 = *(v17 + 32);
  v18 = re::AssetHandle::assetInfo(a1);
  if (v18[17])
  {
    v19 = v18[18];
  }

  else
  {
    v19 = v18 + 137;
  }

  v20 = *(a1 + 1);
  if (v20)
  {
    v21 = *(v20 + 280);
  }

  else
  {
    v21 = 0;
  }

  v22 = re::AssetHandle::assetWithType(a1, v21, 0);
  v26 = v31;
  v24 = v23;
  if (v29 == 1 && (v30 & 1) != 0)
  {
    if (v30)
    {
    }
  }

LABEL_20:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v32);
  return v24 & 1;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::SceneAsset>(re::SceneAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::SceneAsset::assetType(a1);
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

void anonymous namespace::checkSceneEntityComponentsAreAvailableForMajorVersion(void *a1, uint64_t a2, _BYTE *a3, _BYTE *a4, uint64_t a5, re *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  v11 = a1[6];
  if (v11)
  {
    v12 = a1[8];
    v13 = v12 + 24 * v11;
    do
    {
      v14 = *(v12 + 8);
      if (v14)
      {
        v15 = (*(*v14 + 40))(v14);
        (*(*v15 + 56))(&v39);
        v35 = v39;
        v34 = v39;
        if ((v16 & 1) == 0)
        {
          *a3 = 1;
          if (a2 <= 5)
          {
            re::IntrospectionSharedLock::IntrospectionSharedLock(&v42);
            v17 = (*(*v15 + 48))(v15);
            v18 = (*(*v17 + 32))(v17);
            v19 = v18;
            if (v18 < 2)
            {
              goto LABEL_17;
            }

            v20 = *re::assetsLogObjects(v18);
            if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 136315138;
              v44 = v21;
              _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "%s", buf, 0xCu);
            }

            v22 = v19 & 0x7FFFFFFF;
            if (v22)
            {
              v23 = 0;
              while (1)
              {
                if (v23)
                {
                  v24 = *((*(*v17 + 40))(v17, v23) + 16);
                  if (v24 == 10 || v24 == 6)
                  {
                    break;
                  }
                }

                if (v22 == ++v23)
                {
                  goto LABEL_17;
                }
              }

              v27 = re::StringID::StringID(&v40, v26);
              v28 = *re::assetsLogObjects(v27);
              v29 = os_log_type_enabled(v28, OS_LOG_TYPE_ERROR);
              if (v29)
              {
                *buf = 136315394;
                v44 = v41;
                v45 = 2048;
                v46 = 6;
                _os_log_error_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_ERROR, "%s can't be written for any targeted major versions prior to %lli", buf, 0x16u);
              }

              if (v40)
              {
                if (v40)
                {
                }
              }

              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v42);
              *a4 = 1;
            }

            else
            {
LABEL_17:
              re::IntrospectionSharedLock::~IntrospectionSharedLock(&v42);
            }
          }
        }

        if (v37 == 1 && (v38 & 1) != 0)
        {
          if (v38)
          {
          }
        }
      }

      v12 += 24;
    }

    while (v12 != v13);
  }

  v30 = a1[11];
  if (v30)
  {
    v31 = a1[13];
    v32 = 112 * v30;
    do
    {
      v31 += 112;
      v32 -= 112;
    }

    while (v32);
  }
}

void anonymous namespace::getTypeInitialRelease(re **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unsigned int a4@<W3>, re *a5@<X4>, uint64_t a6@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  re::TypeRegistry::typeInfo(a5, a1, v40);
  *a6 = -1;
  *(a6 + 8) = 0;
  if (v40[0])
  {
    re::TypeInfo::TypeInfo(v38, &v41);
    v11 = re::TypeInfo::name(v38);
    v12 = v11[1];
    if (a4 == 1)
    {
      v18 = 0;
      v19 = *(v39 + 64);
      v43 = 0u;
      memset(buf, 0, sizeof(buf));
      DWORD1(v43) = 0x7FFFFFFF;
      do
      {
        v20 = *(v39 + 72);
        if (v20)
        {
          if (v21 - 1 >= 5)
          {
            v22 = 0;
          }

          else
          {
            v22 = v21;
          }

          v20(&v34, a3, v22);
          v23 = v34;
        }

        else
        {
          LOBYTE(v35) = 0;
          v23 = *(v39 + 64);
          LODWORD(v34) = v23;
        }

        *a6 = v23;
        v24 = re::Optional<re::StringID>::operator=(a6 + 8, &v35);
        if (v35 == 1 && (v36 & 1) != 0)
        {
          if (v36)
          {
          }
        }

        if (*(a6 + 8) == 1)
        {
          re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(buf, (a6 + 16));
        }

        if (*a6 > v19)
        {
          v19 = *a6;
        }

        ++v18;
      }

      while (v18 != 3);
      if (*&buf[28])
      {
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashSetBase(v31, buf);
        LOBYTE(v34) = 1;
        v35 = v32;
        v36 = v33;
        v32 = 0;
        v33 = &str_67;
        v25 = re::Optional<re::StringID>::operator=(a6 + 8, &v34);
        if (v34 == 1)
        {
          if (v35)
          {
            if (v35)
            {
            }
          }

          v35 = 0;
          v36 = &str_67;
        }

        if (v32)
        {
          if (v32)
          {
          }
        }

        v32 = 0;
        v33 = &str_67;
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v31);
      }

      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(buf);
    }

    else
    {
      if (!a4)
      {
        v13 = *re::assetsLogObjects(v11);
        if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          v15 = v13;
          v16 = 2;
LABEL_52:
          _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, v14, buf, v16);
          goto LABEL_49;
        }

        goto LABEL_49;
      }

      v27 = *(v39 + 72);
      if (v27)
      {
        if (a4 - 2 >= 4)
        {
          v28 = 0;
        }

        else
        {
          v28 = a4;
        }

        v27(buf, a3, v28);
        v29 = *buf;
      }

      else
      {
        buf[8] = 0;
        v29 = *(v39 + 64);
        *buf = v29;
      }

      *a6 = v29;
      v26 = re::Optional<re::StringID>::operator=(a6 + 8, &buf[8]);
      if (buf[8] == 1 && (buf[16] & 1) != 0)
      {
        if (buf[16])
        {
        }
      }

      v19 = *a6;
    }

    if (v19 < 0xFFFFFFFE)
    {
LABEL_50:
      *a6 = v19;
      return;
    }

    v30 = *re::assetsLogObjects(v26);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      *&buf[4] = v12;
      *&buf[12] = 1024;
      *&buf[14] = v19;
      v14 = "%s has unsupported introducedInRelease value of %i";
      v15 = v30;
      v16 = 18;
      goto LABEL_52;
    }

LABEL_49:
    v19 = -1;
    goto LABEL_50;
  }

  v17 = *re::assetsLogObjects(v10);
  if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
  {
    *buf = 136315138;
    *&buf[4] = a2;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "%s didn't return a TypeID", buf, 0xCu);
  }

  *a6 = -1;
}

uint64_t anonymous namespace::checkTypeIsAvailableForMajorVersion(re **a1, uint64_t a2, unsigned int a3)
{
  v31 = *MEMORY[0x1E69E9840];
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v25);
  if (v23[0] != 1)
  {
    v11 = re::StringID::StringID(v30, v10);
    v12 = *re::assetsLogObjects(v11);
    v13 = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
    if (v13)
    {
      *buf = 136315138;
      *&buf[4] = *&v30[8];
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Didn't perform availability check because introspection info for type %s isn't available.", buf, 0xCu);
    }

    if (v30[0])
    {
      if (v30[0])
      {
      }
    }

    goto LABEL_19;
  }

  re::TypeInfo::TypeInfo(v22, &v24);
  v6 = re::TypeInfo::name(v22);
  v7 = v6[1];
  if (a3 < 0xFFFFFFFE)
  {
    if (re::TypeAvailabilityUtilities::convertToRealityKitRelease(a2) < a3)
    {
      v14 = re::TypeAvailabilityUtilities::convertToMajorVersion(a3);
      v15 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(v14);
      re::getRequiredDeploymentTargetsForRelease(v15, v30);
      v16 = *&v30[8] >> 1;
      if ((v30[8] & 1) == 0)
      {
        v16 = v30[8] >> 1;
      }

      if (v16)
      {
        if (v30[8])
        {
          v17 = *&v30[16];
        }

        else
        {
          v17 = &v30[9];
        }

        v18 = re::DynamicString::format("%s is only available for %s or later.", buf, v7, v17);
      }

      else
      {
        v18 = re::DynamicString::format("%s is not available for any platform.", buf, v7);
      }

      v20 = *re::assetsLogObjects(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
      {
        if (buf[8])
        {
          v21 = v29;
        }

        else
        {
          v21 = &buf[9];
        }

        *v26 = 136315138;
        v27 = v21;
        _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "%s", v26, 0xCu);
      }

      if (*buf && (buf[8] & 1) != 0)
      {
        (*(**buf + 40))();
      }

      if (*v30 && (v30[8] & 1) != 0)
      {
        (*(**v30 + 40))();
      }

      goto LABEL_5;
    }

LABEL_19:
    v9 = 1;
    goto LABEL_20;
  }

  v8 = *re::assetsLogObjects(v6);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    *v30 = 136315394;
    *&v30[4] = v7;
    *&v30[12] = 1024;
    *&v30[14] = a3;
    _os_log_error_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_ERROR, "%s has unsupported introducedInRelease value of %i", v30, 0x12u);
  }

LABEL_5:
  v9 = 0;
LABEL_20:
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v25);
  return v9;
}

_anonymous_namespace_ *re::TypeAvailabilityUtilities::checkComponentIsAvailableForMajorVersion(uint64_t a1, uint64_t a2, unsigned int a3)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v17);
  v6 = (*(*a1 + 40))(a1);
  (*(*v6 + 56))(&v16);
  v12 = v16;
  v7 = (*(*a1 + 40))(a1);
  v11 = v16;
  v9 = v8;
  if (v14 == 1 && (v15 & 1) != 0)
  {
    if (v15)
    {
    }
  }

  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v17);
  return v9;
}

void re::TypeAvailabilityUtilities::isAssetAllowedInRealityFile(re::TypeAvailabilityUtilities *this@<X0>, uint64_t a2@<X8>)
{
  if (re::ShaderLibraryAsset::assetType(this) == this)
  {
    re::WrappedError::make(@"RERealityFileWriterErrorDomain", 0x13, "ShaderLibraryAsset is not permitted in reality files.", &v6);
    v5 = v6;
    v6 = 0;
    *(a2 + 8) = v5;

    v4 = 0;
  }

  else
  {
    v4 = 1;
  }

  *a2 = v4;
}

void re::TypeAvailabilityUtilities::getComponentInitialRelease(uint64_t a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v10);
  v6 = (*(*a1 + 40))(a1);
  (*(*v6 + 56))(&v9);
  v8 = v9;
  v7 = (*(*a1 + 40))(a1);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v10);
}

void re::TypeAvailabilityUtilities::getAssetInitialRelease(re::AssetHandle *a1@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  re::IntrospectionSharedLock::IntrospectionSharedLock(&v13);
  AssetLoader = re::AssetHandle::getAssetLoader(a1);
  v12 = *((*(*AssetLoader + 128))(AssetLoader) + 32);
  v7 = re::AssetHandle::assetInfo(a1);
  v8 = *(a1 + 1);
  if (v8)
  {
    v9 = *(v8 + 280);
  }

  else
  {
    v9 = 0;
  }

  if (v7[17])
  {
    v10 = v7[18];
  }

  else
  {
    v10 = v7 + 137;
  }

  v11 = re::AssetHandle::assetWithType(a1, v9, 0);
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v13);
}

double re::TypeAvailabilityUtilities::getSceneRequiredReleaseInfo@<D0>(re::SceneAsset *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = -1;
  *(a4 + 8) = 0;
  v5 = a4 + 8;
  v6 = *(a1 + 1);
  if (!v6)
  {
    re::SceneAsset::assetType(a1);
    goto LABEL_20;
  }

  v10 = *(v6 + 280);
  if (v10 != re::SceneAsset::assetType(a1))
  {
LABEL_20:
    *a4 = -1;
    return result;
  }

  v32 = 2;
  v31 = 0u;
  memset(v30, 0, sizeof(v30));
  DWORD1(v31) = 0x7FFFFFFF;
  re::TypeAvailabilityUtilities::getAssetInitialRelease(a1, a2, &v27);
  v12 = re::AssetHandle::blockUntilLoaded<re::SceneAsset>(a1);
  if (v28 == 1)
  {
    v13 = v27;
    if (v13 >= re::TypeAvailabilityUtilities::convertToRealityKitRelease(a3))
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v30, &v29);
    }
  }

  re::IntrospectionSharedLock::IntrospectionSharedLock(&v26);
  v14 = *(v12 + 16);
  if (v14)
  {
    v15 = *(v12 + 32);
    v16 = 112 * v14;
    do
    {
      v15 = (v15 + 112);
      v16 -= 112;
    }

    while (v16);
  }

  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashSetBase(v20, v30);
  v23[0] = 1;
  v24 = v21;
  v25 = v22;
  v21 = 0;
  v22 = &str_67;
  v17 = re::Optional<re::StringID>::operator=(v5, v23);
  if (v23[0] == 1)
  {
    if (v24)
    {
      if (v24)
      {
      }
    }

    v24 = 0;
    v25 = &str_67;
  }

  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v20);
  if (v32)
  {
    v18 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(v32);
  }

  else
  {
    v18 = -1;
  }

  *a4 = v18;
  re::IntrospectionSharedLock::~IntrospectionSharedLock(&v26);
  if (v28 == 1 && (*&v29.var0 & 1) != 0)
  {
    if (*&v29.var0)
    {
    }
  }

  return re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v30);
}

uint64_t re::TypeAvailabilityUtilities::convertToRealityKitRelease(uint64_t result)
{
  if ((result - 1) < 0xF)
  {
    return result;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2)
{
  v4 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsCopy(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return *(a1 + 16) + 24 * v11 + 8;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = (v9 + 24 * v8 + 8);
    if (re::StringID::operator==(v10, a2))
    {
      return v10;
    }

    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }
}

void anonymous namespace::getRequiredVersionFromComponents(re *a1, uint64_t *a2, uint64_t a3, re *a4, uint64_t a5, uint64_t a6)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a1 + 4))
  {
    v7 = a6;
    v9 = a4;
    v11 = *(a1 + 6);
    if (v11)
    {
      v12 = *(a1 + 8);
      v13 = v12 + 24 * v11;
      v40 = v13;
      while (1)
      {
        v14 = *(v12 + 8);
        if (v14)
        {
          break;
        }

LABEL_36:
        v12 += 24;
        if (v12 == v13)
        {
          goto LABEL_37;
        }
      }

      v15 = (*(*v14 + 40))(v14);
      (*(*v15 + 56))(&v45);
      v16 = *((*(**(v12 + 8) + 40))(*(v12 + 8)) + 32);
      v41 = v45;
      v17 = v42;
      v18 = re::TypeAvailabilityUtilities::convertToRealityKitRelease(*a2);
      if (v17 <= v18)
      {
        v18 = re::TypeAvailabilityUtilities::convertToMajorVersion(v17);
      }

      else
      {
        if (v17 == -1)
        {
          goto LABEL_32;
        }

        v18 = re::TypeAvailabilityUtilities::convertToMajorVersion(v17);
        *a2 = v18;
      }

      if (v18 >= v7)
      {
        if (v43 == 1)
        {
          re::StringID::StringID(&v46, &v44);
        }

        else
        {
          re::getRequiredDeploymentTargetsForRelease(v17, &v46);
          v19 = __s2 + 1;
          if (__s2[0])
          {
            v19 = __s2[1];
          }

          snprintf(__str, 0x100uLL, "%s is available for %s and later.", v16, v19);
          v20 = v46;
          if (v46 && (__s2[0] & 1) != 0)
          {
            v20 = (*(*v46 + 40))();
          }

          v46 = 0;
          __s2[0] = &str_67;
          v21 = strlen(__str);
        }

        v22 = v46;
        v23 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v46 >> 31) ^ (v46 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v46 >> 31) ^ (v46 >> 1))) >> 27));
        v24 = v23 ^ (v23 >> 31);
        v25 = *(a5 + 24);
        if (v25)
        {
          v26 = v24 % v25;
          v27 = *(*(a5 + 8) + 4 * (v24 % v25));
          if (v27 != 0x7FFFFFFF)
          {
            v28 = *(a5 + 16);
            v29 = __s2[0];
            while (1)
            {
              v30 = v28 + 24 * v27;
              v32 = *(v30 + 8);
              v31 = v30 + 8;
              if ((v32 ^ v22) <= 1)
              {
                v18 = *(v31 + 8);
                if (v18 == v29)
                {
                  break;
                }

                v18 = strcmp(v18, v29);
                if (!v18)
                {
                  break;
                }
              }

              v27 = *(v28 + 24 * v27) & 0x7FFFFFFF;
              if (v27 == 0x7FFFFFFF)
              {
                v9 = a4;
                v7 = a6;
                goto LABEL_26;
              }
            }

            v9 = a4;
            v7 = a6;
            v13 = v40;
            if ((v22 & 1) == 0)
            {
              goto LABEL_32;
            }

            goto LABEL_29;
          }

LABEL_26:
          v13 = v40;
        }

        else
        {
          LODWORD(v26) = 0;
        }

        v18 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(a5, v26, v24, &v46, &v46);
        ++*(a5 + 40);
        if (v46)
        {
LABEL_29:
          if (v46)
          {
          }
        }
      }

LABEL_32:
      if (v43 == 1 && (*&v44.var0 & 1) != 0)
      {
        if (*&v44.var0)
        {
        }
      }

      goto LABEL_36;
    }

LABEL_37:
    v33 = *(a1 + 11);
    if (v33)
    {
      v34 = *(a1 + 13);
      v35 = 112 * v33;
      do
      {
        v34 += 112;
        v35 -= 112;
      }

      while (v35);
    }
  }

  else
  {
    v36 = *re::assetsLogObjects(a1);
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      *__str = 0;
      _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "No Components initialized", __str, 2u);
    }

    *a2 = 0;
  }
}

uint64_t anonymous namespace::getFormattedLog@<X0>(uint64_t a1@<X0>, re::StringID *a2@<X8>)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v13, 0);
  v4 = *(a1 + 32);
  if (v4)
  {
    v5 = 0;
    v6 = *(a1 + 16);
    while (1)
    {
      v7 = *v6;
      v6 += 6;
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
    v8 = 0;
    do
    {
      v9 = strlen(*(*(a1 + 16) + 24 * v5 + 16));
      re::DynamicString::append(&v13, *(*(a1 + 16) + 24 * v5 + 16), v9);
      if (v8 < *(a1 + 28) - 1)
      {
        re::DynamicString::append(&v13, "\n", 1uLL);
      }

      ++v8;
      v10 = *(a1 + 32);
      if (v10 <= v5 + 1)
      {
        v11 = v5 + 1;
      }

      else
      {
        v11 = *(a1 + 32);
      }

      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(a1 + 16) + 24 * v5) & 0x80000000) != 0)
        {
          goto LABEL_18;
        }
      }

      LODWORD(v5) = v11;
LABEL_18:
      ;
    }

    while (v5 != v10);
  }

  re::StringID::StringID(a2, &v13);
  result = v13;
  if (v13)
  {
    if (v14)
    {
      return (*(*v13 + 40))();
    }
  }

  return result;
}

uint64_t re::TypeAvailabilityUtilities::convertToMajorVersion(int a1)
{
  v1 = (a1 - 1);
  if (v1 < 0xF)
  {
    return v1 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::HashSetBase(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  v4 = *a2;
  if (v4)
  {
    if (*(a2 + 28) <= 3u)
    {
      v5 = 3;
    }

    else
    {
      v5 = *(a2 + 28);
    }

    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v4, v5);
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      if ((*(v8 + v6) & 0x80000000) != 0)
      {
        v9 = 0xBF58476D1CE4E5B9 * ((*(v8 + v6 + 8) >> 31) ^ (*(v8 + v6 + 8) >> 1));
        v10 = (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31);
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsCopy(a1, v10 % *(a1 + 24), v10, v8 + v6 + 8, (v8 + v6 + 8));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_9, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 0;
      for (i = 0; i < v3; ++i)
      {
        v6 = *(a1 + 16);
        v7 = *(v6 + v4);
        if (v7 < 0)
        {
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::StringID::destroyString((v6 + v4 + 8));
          v3 = *(a1 + 32);
        }

        v4 += 24;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, int a4, StringID *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  v13 = 24 * v8;
  *(v11 + v13) = v12 | 0x80000000;
  *(*(a1 + 16) + v13) = *(*(a1 + 16) + 24 * v8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  re::StringID::StringID((*(a1 + 16) + 24 * v8 + 8), a5);
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

BOOL re::NetworkAssetSerializationManager::serializeAsset(uint64_t a1, _anonymous_namespace_ *a2, re **a3, const re::IntrospectionBase **a4, uint64_t a5)
{
  if (*(a1 + 40) == 1)
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    re::TypeInfo::TypeInfo(v14, &v13);
    v10 = re::NetworkAssetSerializationManager::internalSerializeAsset(a1, a2, a3, v14, a4, a5);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    return v10;
  }

  else
  {

    return re::NetworkAssetSerializationManager::internalSerializeAsset(a1, a2, a3, 0, a4, a5);
  }
}

BOOL re::NetworkAssetSerializationManager::internalSerializeAsset(uint64_t a1, _anonymous_namespace_ *a2, const re::IntrospectionBase *a3, void *a4, const re::IntrospectionBase **a5, uint64_t a6)
{
  v37 = *MEMORY[0x1E69E9840];
  if (*(a1 + 40) != 1)
  {
    v27 = 0u;
    v26 = 0u;
    v25 = a6;
    if ((v16 & 1) == 0)
    {
      v18 = *re::assetsLogObjects(v16);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *v21 = 0;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Failed to serialize payload for asset", v21, 2u);
      }

      return 0;
    }

    return 1;
  }

  re::StreamWriterCopyingOutputStream::StreamWriterCopyingOutputStream(&v25, a2);
  v11 = *(a1 + 24);
  *(v11 + 56) = a6;
  v12 = re::serializeObject(v11, &v25, a5, a4, v21);
  *(*(a1 + 24) + 448) = 0;
  v13 = v21[0];
  if ((v21[0] & 1) == 0)
  {
    v14 = *re::assetsLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v19 = re::TypeInfo::name(a4)[1];
      if (v23)
      {
        v20 = *&v24[7];
      }

      else
      {
        v20 = v24;
      }

      *buf = 136315394;
      v34 = v19;
      v35 = 2080;
      v36 = v20;
      _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "Failed to serialize payload for asset. Type: %s. Details: %s", buf, 0x16u);
    }
  }

  if (v21[0] & 1) == 0 && v22 && (v23)
  {
    (*(*v22 + 40))();
  }

  re::StreamWriterCopyingOutputStream::Flush(&v25);
  if (v28)
  {
    if (v32)
    {
      (*(*v28 + 40))();
    }

    v32 = 0;
    v29 = 0;
    v30 = 0;
    v28 = 0;
    ++v31;
  }

  re::DynamicArrayBufferedOutputStream::~DynamicArrayBufferedOutputStream(&v25);
  return (v13 & 1) != 0;
}

re::FixedArrayInputStream *re::NetworkAssetSerializationManager::deserializeAsset(re::NetworkAssetSerializationManager *this, AssetService *a2, const char **a3, re::AssetSerializationScheme *a4, const char *a5, uint64_t a6, unint64_t *a7)
{
  if (*(this + 40) == 1)
  {
    var0 = a2[226].var0;
    v19 = a3;
    v15 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](var0, &v19);
    (*(**v15 + 128))(*v15);
    v16 = (*(**v15 + 128))();
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v22);
    re::TypeInfo::TypeInfo(v21, &v20);
    v17 = re::NetworkAssetSerializationManager::internalDeserializeAsset(this, a2, a3, v21, a4, a5, a6, a7);
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v22);
    return v17;
  }

  else
  {

    return re::NetworkAssetSerializationManager::internalDeserializeAsset(this, a2, a3, 0, a4, a5, a6, a7);
  }
}

re::FixedArrayInputStream *re::NetworkAssetSerializationManager::internalDeserializeAsset(re::NetworkAssetSerializationManager *this, AssetService *a2, const char **a3, re::TypeInfo *a4, re::AssetSerializationScheme *a5, const char *a6, uint64_t a7, unint64_t *a8)
{
  v40 = *MEMORY[0x1E69E9840];
  var0 = a2[226].var0;
  v30 = a3;
  v17 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](var0, &v30);
  (*(**v17 + 128))(*v17);
  v18 = *v17;
  v19 = (*(**v17 + 128))(*v17);
  if (*(this + 40) == 1)
  {
    re::FixedArrayInputStream::FixedArrayInputStream(&v30, a6, a7, -1);
    v20 = (*(*v18 + 136))(v18);
    v21 = *(this + 4);
    *(v21 + 56) = a5;
    v22 = re::deserializeObject(v21, &v30, v20, a4, v35);
    *(*(this + 4) + 448) = 0;
    v23 = v35[0];
    if (v35[0])
    {
      *a8 = v34[4];
    }

    else
    {
      v26 = *re::assetsLogObjects(v22);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        v28 = re::TypeInfo::name(a4)[1];
        *buf = 136315138;
        v39 = v28;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to deserialize asset for type %s.", buf, 0xCu);
      }
    }

    if (v35[0] & 1) == 0 && v36 && (v37)
    {
      (*(*v36 + 40))();
    }

    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v30);
    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    v24 = v19;
    v30 = &unk_1F5D0A468;
    v31 = 0;
    v32 = a6;
    v33 = a7;
    re::FixedArrayInputStream::FixedArrayInputStream(v34, a6, a7, -1);
    v25 = a2[226].var0;
    v35[1] = 0;
    v35[2] = 0;
    v35[0] = v25;
    v29[0] = 0;
    v20 = re::AssetUtilities::deserializeIntrospectedAsset(&v30, a3, v35, v24, a5, 2, v29);
    *a8 = v34[12];
    v30 = &unk_1F5D0A468;
    re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(v34);
  }

  return v20;
}

void *re::allocInfo_AudioLoadDescriptorParameters(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_85, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_85))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE197C50, "AudioLoadDescriptorParameters");
    __cxa_guard_release(&_MergedGlobals_85);
  }

  return &unk_1EE197C50;
}

void re::initInfo_AudioLoadDescriptorParameters(re *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xB1F2D5B8ED8A952ALL;
  v22[1] = "AudioLoadDescriptorParameters";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE197C08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE197C08);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "framework";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x5800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE197C30 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "resource";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x8000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE197C38 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "assetURL";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0xA800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE197C40 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_AudioFileAssetConfiguration(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "configuration";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 12;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE197C48 = v20;
      __cxa_guard_release(&qword_1EE197C08);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE197C30;
  *(this + 9) = re::internal::defaultConstruct<re::AudioLoadDescriptorParameters>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::AudioLoadDescriptorParameters>;
  *(this + 13) = re::internal::defaultConstructV2<re::AudioLoadDescriptorParameters>;
  *(this + 14) = re::internal::defaultDestructV2<re::AudioLoadDescriptorParameters>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::AudioLoadDescriptorParameters>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 2) = 0;
  *(a3 + 4) = 0;
  *(a3 + 8) = 0;
  result = 0.0;
  *(a3 + 16) = xmmword_1E3061530;
  *(a3 + 32) = 0;
  *(a3 + 72) = 0;
  *(a3 + 80) = 0;
  *(a3 + 88) = 0;
  *(a3 + 128) = 0;
  *(a3 + 168) = 0;
  return result;
}

double re::internal::defaultDestruct<re::AudioLoadDescriptorParameters>(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  if (a3[168] == 1)
  {
    result = re::DynamicString::deinit((a3 + 176));
  }

  if (a3[128] == 1)
  {
    result = re::DynamicString::deinit((a3 + 136));
  }

  if (a3[88] == 1)
  {
    result = re::DynamicString::deinit((a3 + 96));
  }

  if (a3[32] == 1)
  {

    return re::DynamicString::deinit((a3 + 40));
  }

  return result;
}

double re::internal::defaultConstructV2<re::AudioLoadDescriptorParameters>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  *(a1 + 4) = 0;
  *(a1 + 8) = 0;
  result = 0.0;
  *(a1 + 16) = xmmword_1E3061530;
  *(a1 + 32) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 128) = 0;
  *(a1 + 168) = 0;
  return result;
}

double re::internal::defaultDestructV2<re::AudioLoadDescriptorParameters>(_BYTE *a1)
{
  if (a1[168] == 1)
  {
    result = re::DynamicString::deinit((a1 + 176));
  }

  if (a1[128] == 1)
  {
    result = re::DynamicString::deinit((a1 + 136));
  }

  if (a1[88] == 1)
  {
    result = re::DynamicString::deinit((a1 + 96));
  }

  if (a1[32] == 1)
  {

    return re::DynamicString::deinit((a1 + 40));
  }

  return result;
}

re::AudioFileAssetProvider *re::AudioFileAssetProvider::AudioFileAssetProvider(re::AudioFileAssetProvider *this, re::AssetManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CC6850;
  *(this + 4) = 0;
  *(this + 5) = 0;
  if ((atomic_load_explicit(&qword_1EE197C28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE197C28))
  {
    qword_1EE197C20 = re::internal::getOrCreateInfo("AudioLoadDescriptorParameters", re::allocInfo_AudioLoadDescriptorParameters, re::initInfo_AudioLoadDescriptorParameters, &unk_1EE197C10, 0);
    __cxa_guard_release(&qword_1EE197C28);
  }

  qword_1EE197C18 = qword_1EE197C20;
  if (a2)
  {
    *(this + 24) = *(a2 + 113);
    v4 = *(a2 + 252);
    *(this + 5) = *(a2 + 238);
    *(this + 6) = v4;
  }

  return this;
}

void re::AudioFileAssetProvider::~AudioFileAssetProvider(re::AudioFileAssetProvider *this)
{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t *re::AudioFileAssetProvider::loadAssetWithPath(re::AudioFileAssetProvider *this, re::AudioFileAsset *a2, const re::DynamicString *a3, uint64_t a4)
{
  if (*(a4 + 8))
  {
    v7 = *(a4 + 16);
  }

  else
  {
    v7 = (a4 + 9);
  }

  v8 = re::AudioFileAsset::prepareToLoadFrom(a3, v7, 0);
  v9 = *(a2 + 3);
  v20 = re::AudioFileAsset::assetType(v8);
  v10 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v9, &v20);
  (*(**v10 + 128))(*v10);
  v11 = (*(**v10 + 24))(*v10, a3, 0, 0);
  v21 = 0;
  v22 = 0;
  v23 = 0;
  v12 = re::DynamicString::setCapacity(&v20, 0);
  v26 = 0;
  v27 = 0;
  v24 = a3;
  v25 = 0;
  v15 = *re::AudioFileAsset::assetType(v12);
  *&v16 = strlen(v15);
  re::DynamicString::operator=(&v20, &v15);
  re::types::Ok<re::AssetLoadResult>::Ok(&v15, &v20);
  *this = 1;
  *(this + 1) = v15;
  *(this + 4) = v17;
  *(this + 1) = v16;
  v13 = v19;
  *(this + 40) = v18;
  *(this + 56) = v13;
  if (v25)
  {

    v25 = 0;
  }

  result = v20;
  if (v20)
  {
    if (v21)
    {
      return (*(*v20 + 40))();
    }
  }

  return result;
}

void sub_1E208203C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  re::types::Ok<re::AssetLoadResult>::~Ok(va);
  _Unwind_Resume(a1);
}

re::DynamicString *re::AudioFileAssetProvider::load@<X0>(const re::AssetLoadDescriptor *a1@<X1>, uint64_t a2@<X8>)
{
  if (*(a1 + 8))
  {
    v7 = *(a1 + 2);
  }

  else
  {
    v7 = a1 + 9;
  }

  v8 = strcmp(v7, "AudioOptions");
  v9 = v8;
  v10 = *re::AudioFileAsset::assetType(v8);
  if (*(a1 + 15))
  {
    v11 = *(a1 + 16);
  }

  else
  {
    v11 = a1 + 121;
  }

  v12 = strcmp(v11, v10);
  if (v9 | v12)
  {
    v14 = v25;
    v15 = v26;
    *a2 = 0;
    *(a2 + 8) = v14;
    *(a2 + 24) = v15;
  }

  else
  {
    LOWORD(v25) = 0;
    BYTE2(v25) = 0;
    *(&v25 + 4) = 0;
    v26 = xmmword_1E3061530;
    v27 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v35 = 0;
    v38 = 0;
    Descriptor = re::AssetLoadDescriptor::getIntrospectableData<re::AudioLoadDescriptorParameters>(a1, &v25);
    if (Descriptor)
    {
      v17 = re::globalAllocators(Descriptor);
      v18 = (*(*v17[2] + 32))(v17[2], 176, 8);
      re::AudioFileAsset::AudioFileAsset(v18);
    }

    v19 = v22;
    v20 = v23;
    v21 = v24;
    *a2 = 0;
    *(a2 + 8) = v19;
    *(a2 + 24) = v20;
    *(a2 + 32) = v21;
    if (v38 == 1)
    {
      result = v39;
      if (v39)
      {
        if (BYTE8(v39))
        {
          result = (*(*v39 + 40))();
        }

        v39 = 0u;
        v40 = 0u;
      }
    }

    if (v35 == 1)
    {
      result = v36;
      if (v36)
      {
        if (BYTE8(v36))
        {
          result = (*(*v36 + 40))();
        }

        v37 = 0u;
        v36 = 0u;
      }
    }

    if (v32 == 1)
    {
      result = v33;
      if (v33)
      {
        if (BYTE8(v33))
        {
          result = (*(*v33 + 40))();
        }

        v33 = 0u;
        v34 = 0u;
      }
    }

    if (v27 == 1)
    {
      result = v28;
      if (v28)
      {
        if (v29)
        {
          return (*(*v28 + 40))();
        }
      }
    }
  }

  return result;
}

void sub_1E20824C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, ...)
{
  va_start(va, a17);
  if (a14)
  {
    if (a15)
    {
      (*(*a14 + 40))();
    }
  }

  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(va);
  _Unwind_Resume(a1);
}

uint64_t re::AssetLoadDescriptor::getIntrospectableData<re::AudioLoadDescriptorParameters>(re::AssetLoadDescriptor *a1, re::DynamicString **a2)
{
  v3 = a2;
  if ((atomic_load_explicit(&qword_1EE197C28, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v8 = __cxa_guard_acquire(&qword_1EE197C28);
    v3 = a2;
    v9 = v8;
    a1 = v6;
    if (v9)
    {
      qword_1EE197C20 = re::internal::getOrCreateInfo("AudioLoadDescriptorParameters", re::allocInfo_AudioLoadDescriptorParameters, re::initInfo_AudioLoadDescriptorParameters, &unk_1EE197C10, 0);
      __cxa_guard_release(&qword_1EE197C28);
      a1 = v6;
      v3 = a2;
    }
  }

  v4 = qword_1EE197C20;

  return re::AssetLoadDescriptor::getIntrospectableData(a1, v4, v3, 0);
}

void re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(re::AudioLoadDescriptorParameters *this)
{
  if (*(this + 168) == 1)
  {
    re::DynamicString::deinit((this + 176));
  }

  if (*(this + 128) == 1)
  {
    re::DynamicString::deinit((this + 136));
  }

  if (*(this + 88) == 1)
  {
    re::DynamicString::deinit((this + 96));
  }

  if (*(this + 32) == 1)
  {
    re::DynamicString::deinit((this + 40));
  }
}

void re::AudioFileAssetProvider::makeDescriptorWithBundle(void *a1@<X0>, void *a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  LOWORD(v45) = 0;
  BYTE2(v45) = 0;
  *(&v45 + 4) = 0;
  v46 = xmmword_1E3061530;
  v47[0] = 0;
  v51 = 0;
  v53 = 0;
  v54[0] = 0;
  v57[0] = 0;
  v60 = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  *(a4 + 8) = 0;
  v9 = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0;
  *(a4 + 40) = 0;
  *(a4 + 56) = 0;
  *(a4 + 48) = 0;
  *(a4 + 64) = 0u;
  *(a4 + 80) = 0u;
  *(a4 + 96) = 0;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  re::DynamicString::setCapacity((a4 + 112), 0);
  v39 = "AudioOptions";
  v40 = 12;
  v10 = re::DynamicString::operator=(a4, &v39);
  v11 = *re::AudioFileAsset::assetType(v10);
  v12 = strlen(v11);
  v39 = v11;
  v40 = v12;
  re::DynamicString::operator=((a4 + 112), &v39);
  v13 = [v7 bundleIdentifier];
  v14 = [v13 UTF8String];

  LOBYTE(v39) = 1;
  re::DynamicString::DynamicString(&v40, &v42);
  re::Optional<re::DynamicString>::operator=(v54, &v39);
  if (v39 == 1 && v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  v15 = [(_anonymous_namespace_ *)v8 UTF8String];
  LOBYTE(v39) = 1;
  re::DynamicString::DynamicString(&v40, &v36);
  re::Optional<re::DynamicString>::operator=(v57, &v39);
  if (v39 == 1 && v40 && (v41 & 1) != 0)
  {
    (*(*v40 + 40))();
  }

  v16 = a3[1];
  v45 = *a3;
  v46 = v16;
  re::Optional<re::DynamicString>::operator=(v47, a3 + 32);
  v17 = v51;
  if (v51)
  {
    if ((*(a3 + 72) & 1) == 0)
    {
      v17 = 0;
      v51 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((*(a3 + 72) & 1) == 0)
    {
      goto LABEL_15;
    }

    v17 = 1;
    v51 = 1;
  }

  v52 = *(a3 + 19);
LABEL_15:
  v53 = *(a3 + 80);
  v20[0] = v45;
  v20[1] = v46;
  v21 = v47[0];
  if (v47[0] == 1)
  {
    re::DynamicString::DynamicString(&v22, &v48);
    v17 = v51;
  }

  v24 = v17;
  if (v17)
  {
    v25 = v52;
  }

  v26 = v53;
  v27 = v54[0];
  if (v54[0] == 1)
  {
    re::DynamicString::DynamicString(&v28, &v55);
  }

  v30 = v57[0];
  if (v57[0] == 1)
  {
    re::DynamicString::DynamicString(&v31, &v58);
  }

  v33 = v60;
  if (v60 == 1)
  {
    re::DynamicString::DynamicString(&v34, &v61);
  }

  re::AssetLoadDescriptor::setIntrospectableData(a4, qword_1EE197C18, v20, 0);
  if (v33 == 1 && v34)
  {
    if (BYTE8(v34))
    {
      (*(*v34 + 40))(v34, v35, v18, v19);
    }

    v34 = 0u;
    v35 = 0u;
  }

  if (v30 == 1 && v31)
  {
    if (BYTE8(v31))
    {
      (*(*v31 + 40))(v31, v32, v18, v19);
    }

    v32 = 0u;
    v31 = 0u;
  }

  if (v27 == 1 && v28)
  {
    if (BYTE8(v28))
    {
      (*(*v28 + 40))(v28, v29, v18, v19);
    }

    v28 = 0u;
    v29 = 0u;
  }

  if (v21 == 1 && v22)
  {
    if (BYTE8(v22))
    {
      (*(*v22 + 40))(v22, v23, v18, v19);
    }

    v23 = 0u;
    v22 = 0u;
  }

  if (v36 && (v37 & 1) != 0)
  {
    (*(*v36 + 40))(v36, v38, v18, v19);
  }

  if (v42 && (v43 & 1) != 0)
  {
    (*(*v42 + 40))(v42, v44, v18, v19);
  }

  if (v60 == 1 && v61)
  {
    if (BYTE8(v61))
    {
      (*(*v61 + 40))(v61, v62, v18, v19);
    }

    v61 = 0u;
    v62 = 0u;
  }

  if (v57[0] == 1 && v58)
  {
    if (BYTE8(v58))
    {
      (*(*v58 + 40))(v58, v59, v18, v19);
    }

    v59 = 0u;
    v58 = 0u;
  }

  if (v54[0] == 1 && v55)
  {
    if (BYTE8(v55))
    {
      (*(*v55 + 40))(v55, v56, v18, v19);
    }

    v55 = 0u;
    v56 = 0u;
  }

  if (v47[0] == 1 && v48 && (v49 & 1) != 0)
  {
    (*(*v48 + 40))(v48, v50, v18, v19);
  }
}

void sub_1E2082CD8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46, uint64_t a47, uint64_t a48, char a49)
{
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(&a9);
  if (a36 && (a37 & 1) != 0)
  {
    (*(*a36 + 40))();
  }

  if (a45)
  {
    if (a46)
    {
      (*(*a45 + 40))();
    }
  }

  re::AssetLoadDescriptor::~AssetLoadDescriptor(v51);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(&a49);

  _Unwind_Resume(a1);
}

uint64_t re::AudioFileAssetProvider::makeDescriptorWithURL@<X0>(_anonymous_namespace_ *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  LOWORD(v34) = 0;
  BYTE2(v34) = 0;
  *(&v34 + 4) = 0;
  v35 = xmmword_1E3061530;
  v36[0] = 0;
  v40 = 0;
  v42 = 0;
  v43 = 0;
  v46 = 0;
  v49[0] = 0;
  *(a3 + 16) = 0;
  *(a3 + 24) = 0;
  *(a3 + 8) = 0;
  v6 = re::DynamicString::setCapacity(a3, 0);
  *(a3 + 32) = 0;
  *(a3 + 40) = 0;
  *(a3 + 56) = 0;
  *(a3 + 48) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0u;
  *(a3 + 136) = 0;
  re::DynamicString::setCapacity((a3 + 112), 0);
  v31 = "AudioOptions";
  v32 = 12;
  v7 = re::DynamicString::operator=(a3, &v31);
  v8 = *re::AudioFileAsset::assetType(v7);
  v9 = strlen(v8);
  v31 = v8;
  v32 = v9;
  re::DynamicString::operator=((a3 + 112), &v31);
  LOBYTE(v31) = 1;
  re::DynamicString::DynamicString(&v32, a1);
  re::Optional<re::DynamicString>::operator=(v49, &v31);
  if (v31 == 1 && v32 && (v33 & 1) != 0)
  {
    (*(*v32 + 40))();
  }

  v10 = a2[1];
  v34 = *a2;
  v35 = v10;
  re::Optional<re::DynamicString>::operator=(v36, a2 + 32);
  v11 = v40;
  if (v40)
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      v11 = 0;
      v40 = 0;
      goto LABEL_11;
    }
  }

  else
  {
    if ((*(a2 + 72) & 1) == 0)
    {
      goto LABEL_11;
    }

    v11 = 1;
    v40 = 1;
  }

  v41 = *(a2 + 19);
LABEL_11:
  v42 = *(a2 + 80);
  v15[0] = v34;
  v15[1] = v35;
  v16 = v36[0];
  if (v36[0] == 1)
  {
    re::DynamicString::DynamicString(&v17, &v37);
    v11 = v40;
  }

  v19 = v11;
  if (v11)
  {
    v20 = v41;
  }

  v21 = v42;
  v22 = v43;
  if (v43 == 1)
  {
    re::DynamicString::DynamicString(&v23, &v44);
  }

  v25 = v46;
  if (v46 == 1)
  {
    re::DynamicString::DynamicString(&v26, &v47);
  }

  v28 = v49[0];
  if (v49[0] == 1)
  {
    re::DynamicString::DynamicString(&v29, &v50);
  }

  result = re::AssetLoadDescriptor::setIntrospectableData(a3, qword_1EE197C18, v15, 0);
  if (v28 == 1)
  {
    result = v29;
    if (v29)
    {
      if (BYTE8(v29))
      {
        result = (*(*v29 + 40))(v29, v30, v13, v14);
      }

      v29 = 0u;
      v30 = 0u;
    }
  }

  if (v25 == 1)
  {
    result = v26;
    if (v26)
    {
      if (BYTE8(v26))
      {
        result = (*(*v26 + 40))(v26, v27, v13, v14);
      }

      v27 = 0u;
      v26 = 0u;
    }
  }

  if (v22 == 1)
  {
    result = v23;
    if (v23)
    {
      if (BYTE8(v23))
      {
        result = (*(*v23 + 40))(v23, v24, v13, v14);
      }

      v23 = 0u;
      v24 = 0u;
    }
  }

  if (v16 == 1)
  {
    result = v17;
    if (v17)
    {
      if (BYTE8(v17))
      {
        result = (*(*v17 + 40))(v17, v18, v13, v14);
      }

      v18 = 0u;
      v17 = 0u;
    }
  }

  if (v49[0] == 1)
  {
    result = v50;
    if (v50)
    {
      if (BYTE8(v50))
      {
        result = (*(*v50 + 40))(v50, v51, v13, v14);
      }

      v50 = 0u;
      v51 = 0u;
    }
  }

  if (v46 == 1)
  {
    result = v47;
    if (v47)
    {
      if (BYTE8(v47))
      {
        result = (*(*v47 + 40))(v47, v48, v13, v14);
      }

      v48 = 0u;
      v47 = 0u;
    }
  }

  if (v43 == 1)
  {
    result = v44;
    if (v44)
    {
      if (BYTE8(v44))
      {
        result = (*(*v44 + 40))(v44, v45, v13, v14);
      }

      v44 = 0u;
      v45 = 0u;
    }
  }

  if (v36[0] == 1)
  {
    result = v37;
    if (v37)
    {
      if (v38)
      {
        return (*(*v37 + 40))(v37, v39, v13, v14);
      }
    }
  }

  return result;
}

void sub_1E20832B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41)
{
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(&a9);
  re::AssetLoadDescriptor::~AssetLoadDescriptor(v41);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(&a41);
  _Unwind_Resume(a1);
}

__n128 re::AudioFileAssetProvider::resolveChild@<Q0>(re::AudioFileAssetProvider *this@<X0>, uint64_t a2@<X8>)
{
  result = v9;
  v7 = v10;
  v8 = v11;
  *a2 = 0;
  *(a2 + 8) = result;
  *(a2 + 24) = v7;
  *(a2 + 32) = v8;
  return result;
}

void *re::AudioFileAssetProvider::getDescription(re::AudioFileAssetProvider *this, const re::AssetLoadDescriptor *a2, re::DynamicString *a3)
{
  LOWORD(v10) = 0;
  BYTE2(v10) = 0;
  HIDWORD(v10) = 0;
  v11 = 0;
  v12 = xmmword_1E3061530;
  v13 = 0;
  v16 = 0;
  v17 = 0;
  v18 = 0;
  v20 = 0;
  v22 = 0;
  if (re::AssetLoadDescriptor::getIntrospectableData<re::AudioLoadDescriptorParameters>(a2, &v10))
  {
    if (v22 == 1)
    {
      re::DynamicString::operator=(a3, v23);
    }

    else if (v18 == 1 && v20 == 1)
    {
      re::DynamicString::operator+(v19, "/", &v7);
      re::DynamicString::operator+(&v7, v21, v9);
      re::DynamicString::operator=(a3, v9);
      if (*&v9[0])
      {
        if (BYTE8(v9[0]))
        {
          (*(**&v9[0] + 40))();
        }

        memset(v9, 0, sizeof(v9));
      }

      if (v7 && (v8 & 1) != 0)
      {
        (*(*v7 + 40))();
      }
    }

    if (v10)
    {
      v5 = "streamedAsset";
    }

    else
    {
      v5 = "preloadAsset";
    }

    if (v10)
    {
      v6 = 13;
    }

    else
    {
      v6 = 12;
    }

    result = re::DynamicString::append(a3, v5, v6);
  }

  else
  {
    *&v9[0] = "mangled";
    *(&v9[0] + 1) = 7;
    result = re::DynamicString::operator=(a3, v9);
  }

  if (v22 == 1)
  {
    result = v23[0];
    if (v23[0])
    {
      if (v23[1])
      {
        result = (*(*v23[0] + 40))();
      }

      memset(v23, 0, sizeof(v23));
    }
  }

  if (v20 == 1)
  {
    result = v21[0];
    if (v21[0])
    {
      if (v21[1])
      {
        result = (*(*v21[0] + 40))();
      }

      memset(v21, 0, sizeof(v21));
    }
  }

  if (v18 == 1)
  {
    result = v19[0];
    if (v19[0])
    {
      if (v19[1])
      {
        result = (*(*v19[0] + 40))();
      }

      memset(v19, 0, sizeof(v19));
    }
  }

  if (v13 == 1)
  {
    result = v14;
    if (v14)
    {
      if (v15)
      {
        return (*(*v14 + 40))();
      }
    }
  }

  return result;
}

void sub_1E208360C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  re::AudioLoadDescriptorParameters::~AudioLoadDescriptorParameters(va);
  _Unwind_Resume(a1);
}

re::ecs2::ECSJSONSerializer *re::ecs2::ECSJSONSerializer::ECSJSONSerializer(re::ecs2::ECSJSONSerializer *this)
{
  *&v4.var0 = 0xE1F66B0F30BD1E9ELL;
  v4.var1 = "ECSJSONSerializer";
  v2 = re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(this, &v4, 15);
  *v2 = &unk_1F5CC46A8;
  *(v2 + 336) = 1;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0;
  *(v2 + 380) = 0x7FFFFFFFLL;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 392) = 0;
  *(v2 + 416) = 0;
  *(v2 + 504) = 0;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0;
  if (*&v4.var0)
  {
    if (*&v4.var0)
    {
    }
  }

  *this = &unk_1F5CC68F0;
  return this;
}

re::ecs2::ECSJSONDeserializer *re::ecs2::ECSJSONDeserializer::ECSJSONDeserializer(re::ecs2::ECSJSONDeserializer *this, AssetService *a2)
{
  *&v7.var0 = 0x3373FC80C73C66A0;
  v7.var1 = "ECSJSONDeserializer";
  v4 = re::Serializer<re::EncoderRapidJSON<re::SeekableInputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(this, &v7, 15);
  *v4 = &unk_1F5CBB1E0;
  *(v4 + 336) = 1;
  *(v4 + 344) = 0u;
  *(v4 + 360) = 0u;
  *(v4 + 376) = 0;
  *(v4 + 380) = 0x7FFFFFFFLL;
  *(v4 + 400) = 0;
  *(v4 + 408) = 0;
  *(v4 + 392) = 0;
  *(v4 + 416) = 0;
  *(v4 + 504) = 0;
  *(v4 + 424) = 0u;
  *(v4 + 440) = 0u;
  *(v4 + 456) = 0;
  *(v4 + 464) = 0u;
  *(v4 + 480) = 0u;
  *(v4 + 496) = 0;
  if (*&v7.var0)
  {
    if (*&v7.var0)
    {
    }
  }

  *this = &unk_1F5CC4600;
  v5 = re::DirectAssetDeserialize::DirectAssetDeserialize((this + 512), a2, 0);
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 77) = v5;
  *(this + 33) = this + 616;
  return this;
}

void *re::ecs2::ECSOPACKSerializer::ECSOPACKSerializer(void *a1, uint64_t a2)
{
  *&v6.var0 = 0x88B8E3BC1E0ECD0ALL;
  v6.var1 = "ECSOPACKSerializer";
  v4 = re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SerializerV2(a1, &v6);
  if (*&v6.var0)
  {
    if (*&v6.var0)
    {
    }
  }

  *a1 = &unk_1F5CC6958;
  a1[56] = a2;
  return a1;
}

uint64_t re::ecs2::ECSOPACKDeserializer::ECSOPACKDeserializer(uint64_t a1, uint64_t a2)
{
  *&v8.var0 = 0x337AFDA7A6DC2A0CLL;
  v8.var1 = "ECSOPACKDeserializer";
  v4 = re::SerializerV2<re::EncoderOPACK<re::FixedArrayInputStream>>::SerializerV2(a1, &v8);
  if (*&v8.var0)
  {
    if (*&v8.var0)
    {
    }
  }

  *a1 = &unk_1F5CC69C0;
  *(a1 + 448) = 0;
  v5 = (*(*a2 + 32))(a2);
  v6 = re::ServiceLocator::service<re::AssetService>(v5);
  re::DirectAssetDeserialize::DirectAssetDeserialize((a1 + 456), v6, 0);
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 448) = a2;
  *(a1 + 560) = a1 + 456;
  *(a1 + 200) = a1 + 560;
  return a1;
}

void re::ecs2::ECSJSONSerializer::~ECSJSONSerializer(re::ecs2::ECSJSONSerializer *this)
{
  *this = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);

  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);
}

{
  *this = &unk_1F5CC46A8;
  re::DynamicArray<unsigned long>::deinit(this + 472);
  re::DynamicArray<unsigned long>::deinit(this + 432);
  re::DynamicArray<unsigned long>::deinit(this + 392);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 43);
  re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ECSOPACKSerializer::~ECSOPACKSerializer(re::ecs2::ECSOPACKSerializer *this)
{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);
}

{
  *this = off_1F5CB5A48;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ECSOPACKDeserializer::~ECSOPACKDeserializer(re::ecs2::ECSOPACKDeserializer *this)
{
  *this = &unk_1F5CC69C0;
  *(this + 57) = &unk_1F5CB95A0;
  if (*(this + 464) == 1)
  {
    re::DynamicString::deinit((this + 512));
    re::DynamicString::deinit((this + 480));
  }

  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);

  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);
}

{
  *this = &unk_1F5CC69C0;
  *(this + 57) = &unk_1F5CB95A0;
  if (*(this + 464) == 1)
  {
    re::DynamicString::deinit((this + 512));
    re::DynamicString::deinit((this + 480));
  }

  *this = &unk_1F5CB5DA8;
  re::HashTable<unsigned int,re::SerializerV2<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>>::SharedObject,re::Hash<unsigned int>,re::EqualTo<unsigned int>,true,false>::deinit(this + 50);
  re::DynamicArray<unsigned long>::deinit(this + 360);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 39);
  re::DynamicArray<unsigned long>::deinit(this + 272);
  re::Serializer<re::EncoderOPACK<re::FixedArrayInputStream>>::~Serializer(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::Serializer<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>>::Serializer(uint64_t a1, const StringID *a2, int a3)
{
  *a1 = &unk_1F5CC4710;
  re::StringID::StringID((a1 + 8), a2);
  re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::Encoder(a1 + 24, a3);
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 228) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 324) = 0x7FFFFFFFLL;
  return a1;
}

uint64_t re::Encoder<re::EncoderRapidJSON<google::protobuf::io::ZeroCopyOutputStream,rapidjson::Writer<rapidjson::GenericStringBuffer<rapidjson::UTF8<char>,re::internal::RapidJSONAllocator>,rapidjson::UTF8<char>,rapidjson::UTF8<char>,re::internal::RapidJSONAllocator,0u>>,google::protobuf::io::ZeroCopyOutputStream>::Encoder(uint64_t result, int a2)
{
  *(result + 128) = 0;
  *(result + 104) = 0;
  *(result + 112) = 0;
  *(result + 96) = 0;
  *(result + 120) = 0;
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 24) = 0;
  *(result + 32) = 0;
  *(result + 40) = 0;
  *(result + 136) = a2;
  *(result + 152) = 1024;
  *(result + 140) = 0;
  if ((atomic_load_explicit(&qword_1EE197CE8, memory_order_acquire) & 1) == 0)
  {
    v5 = result;
    v3 = __cxa_guard_acquire(&qword_1EE197CE8);
    result = v5;
    if (v3)
    {
      re::Defaults::intValue("maxSerializationDepth", v2, v6);
      if (v6[0])
      {
        v4 = v7;
      }

      else
      {
        v4 = 0;
      }

      _MergedGlobals_86 = v4;
      __cxa_guard_release(&qword_1EE197CE8);
      result = v5;
    }
  }

  if (_MergedGlobals_86)
  {
    *(result + 152) = _MergedGlobals_86;
  }

  return result;
}

uint64_t re::AssetCompatibility::sceneAssetNeedsCopyForWriting(re::AssetCompatibility *this, uint64_t a2)
{
  v16[5] = *MEMORY[0x1E69E9840];
  v4 = *(this + 1);
  if (!v4)
  {
    v6 = 0;
    goto LABEL_5;
  }

  v5 = atomic_load((v4 + 896));
  if (v5 != 2)
  {
    v6 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v6, 0);
  }

  v7 = *(this + 1);
  if (!v7 || (v8 = atomic_load((v7 + 896)), v8 != 2))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "assetHandle.isLoaded()", "sceneAssetNeedsCopyForWriting", 329);
    _os_crash();
    __break(1u);
  }

  re::AssetHandle::serializableAsset(this, v16);
  if (a2 >= 5)
  {
    if (a2 >= 9)
    {
      if (a2 >= 0xC)
      {
        v9 = 0;
      }

      else
      {
        v9 = 3;
      }
    }

    else
    {
      v9 = 2;
    }
  }

  else
  {
    v9 = 1;
  }

  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = ___ZN2re18AssetCompatibility29sceneAssetNeedsCopyForWritingERKNS_11AssetHandleEx_block_invoke;
  v14[3] = &__block_descriptor_tmp_4;
  v15 = v9;
  v10 = v13;
  if ((v12[0] & 1) == 0)
  {
  }

  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v16);
  return v10 ^ 1u;
}

uint64_t ___ZN2re18AssetCompatibility29sceneAssetNeedsCopyForWritingERKNS_11AssetHandleEx_block_invoke@<X0>(uint64_t result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = result;
  if (a2[4])
  {
    v6 = a2[6];
    if (v6)
    {
      v7 = 24 * v6;
      v8 = a2[8] + 8;
      do
      {
        v9 = (*(**v8 + 40))();
        (*(*v9 + 56))(&v22);
        result = (*(*re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 56))(&v19);
        if (v22 == v19 && v23 == v20 && v24 == HIWORD(v20) && ((v25 ^ v21) & 0xFFFFFF) == 0)
        {
          goto LABEL_22;
        }

        result = *v8;
        if (*v8)
        {
          result = (*(*result + 56))(result);
          if ((result & 1) == 0)
          {
            result = (*(**v8 + 48))();
            if (result)
            {
              goto LABEL_22;
            }
          }
        }

        v8 += 24;
        v7 -= 24;
      }

      while (v7);
    }
  }

  v10 = *(v4 + 32);
  if (v10)
  {
    v11 = a2[6];
    if (v11)
    {
      v12 = a2[8];
      v13 = 24 * v11;
      while (1)
      {
        v14 = *v12;
        v15 = re::ecs2::ComponentTypeRegistry::instance(result);
        result = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v15, v14);
        if (result)
        {
          v16 = (*(*result + 48))(result);
          re::getDowngradeFunctions(v16, v10, &v22);
          v17 = v26;
          result = v22;
          if (v22 && v27)
          {
            result = (*(*v22 + 40))();
          }

          if (v17)
          {
            break;
          }
        }

        v12 += 3;
        v13 -= 24;
        if (!v13)
        {
          goto LABEL_21;
        }
      }

LABEL_22:
      v18 = 0;
      goto LABEL_23;
    }
  }

LABEL_21:
  v18 = 1;
LABEL_23:
  *a3 = 1;
  a3[8] = v18;
  return result;
}

void anonymous namespace::walkEntityAssetData(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = *(a1 + 16);
  if (v4)
  {
    v6 = *(a1 + 32);
    v7 = 112 * v4;
    while (1)
    {
      if (v11 == 1)
      {
        v8 = v12;
        if (v12)
        {
          (*(a2 + 16))(a2, v6);
          v9 = *a3 == 1 ? a3[8] : 0;
        }

        else
        {
          v9 = 0;
          *a3 = v11;
          a3[8] = v8;
        }
      }

      else
      {
        v9 = 0;
        *a3 = v11;
        v10 = v12;
        v12 = 0;
        *(a3 + 1) = v10;
      }

      if ((v11 & 1) == 0)
      {
      }

      if ((v9 & 1) == 0)
      {
        break;
      }

      v6 += 112;
      v7 -= 112;
      if (!v7)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
LABEL_14:
    *a3 = 1;
    a3[8] = 1;
  }
}

uint64_t *re::AssetCompatibility::sceneAssetCopyForWriting@<X0>(re::AssetCompatibility *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v34 = *MEMORY[0x1E69E9840];
  v6 = *(this + 1);
  if (!v6)
  {
    v8 = 0;
    goto LABEL_5;
  }

  v7 = atomic_load((v6 + 896));
  if (v7 != 2)
  {
    v8 = *(this + 1);
LABEL_5:
    re::AssetHandle::loadNow(v8, 0);
  }

  v9 = *(this + 1);
  if (v9 && (v10 = atomic_load((v9 + 896)), v10 == 2))
  {
    re::AssetHandle::serializableAsset(this, &v32);
    v11 = v32;
    v13 = re::globalAllocators(v12);
    v14 = (*(*v13[2] + 32))(v13[2], 40, 8);
    *v14 = 0u;
    *(v14 + 16) = 0u;
    *(v14 + 32) = 0;
    if (a2 >= 5)
    {
      if (a2 >= 9)
      {
        if (a2 >= 0xC)
        {
          v15 = 0;
        }

        else
        {
          v15 = 3;
        }
      }

      else
      {
        v15 = 2;
      }
    }

    else
    {
      v15 = 1;
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 0x40000000;
    v30[2] = ___ZN2re18AssetCompatibility24sceneAssetCopyForWritingERKNS_11AssetHandleEx_block_invoke;
    v30[3] = &__block_descriptor_tmp_9;
    v31 = v15;
    if (v28[0])
    {
      v21 = *(this + 1);
      if (v21)
      {
        v22 = *(v21 + 24);
      }

      else
      {
        v22 = 0;
      }

      v24 = re::SceneAsset::assetType(v20);
      (*(*v22 + 424))(v27, v22, v14, v24, 0, 2, 0);
      re::AssetHandle::AssetHandle(&v25, v27);
      *a3 = 1;
      *(a3 + 8) = v25;
      v25 = 0uLL;
      *(a3 + 24) = v26;
      v26 = 0;
      re::AssetHandle::~AssetHandle(&v25);
      re::AssetHandle::~AssetHandle(v27);
    }

    else
    {
      v23 = v29;
      *a3 = 0;
      *(a3 + 8) = v23;
    }

    if ((v28[0] & 1) == 0)
    {
    }

    return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v32);
  }

  else
  {
    v16 = re::AssetHandle::assetInfo(this);
    if (v16[17])
    {
      v17 = v16[18];
    }

    else
    {
      v17 = v16 + 137;
    }

    re::DynamicString::format("Failed to load '%s'.", &v32, v17);
    v18 = v27[0];
    v27[0] = 0;
    *a3 = 0;
    *(a3 + 8) = v18;

    result = v32;
    if (v32 && (v33 & 1) != 0)
    {
      return (*(*v32 + 40))();
    }
  }

  return result;
}

void anonymous namespace::makeError(__CFString *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *(a2 + 8);
  v4 = v3 >> 1;
  if ((v3 & 1) == 0)
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    if (v3)
    {
      v5 = *(a2 + 16);
    }

    else
    {
      v5 = a2 + 9;
    }

    re::WrappedError::make(@"REAssetCompatibilityErrorDomain", a1, v5, a3);
  }

  else
  {
    re::WrappedError::make(@"REAssetCompatibilityErrorDomain", a1, 0, a3);
  }
}

void anonymous namespace::sceneAssetDeepCopy(re *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v6 = *(a2 + 32);
    v7 = 112 * v3;
    do
    {
      re::DynamicArray<re::ecs2::EntityAssetData>::add(a3, v8);
      re::ecs2::EntityAssetData::~EntityAssetData(v8);
      v6 += 112;
      v7 -= 112;
    }

    while (v7);
  }
}

void ___ZN2re18AssetCompatibility24sceneAssetCopyForWritingERKNS_11AssetHandleEx_block_invoke(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = a1;
  v44 = *MEMORY[0x1E69E9840];
  if (*(a2 + 32) && *(a2 + 48) >= 1)
  {
    v7 = *(a2 + 48) & 0x7FFFFFFFLL;
    v8 = v7 + 1;
    v9 = 24 * v7;
    v3 = &unk_1EE187000;
    do
    {
      v10 = v8 - 2;
      v11 = *(a2 + 48);
      if (v11 <= v8 - 2)
      {
        v33 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "operator[]";
        *&v36[12] = 1024;
        *&v36[14] = 789;
        v37 = 2048;
        *v38 = v8 - 2;
        *&v38[8] = 2048;
        *&v38[10] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_47:
        v33 = 0;
        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        v39 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v36 = 136315906;
        *&v36[4] = "removeAt";
        *&v36[12] = 1024;
        *&v36[14] = 931;
        v37 = 2048;
        *v38 = v8 - 2;
        *&v38[8] = 2048;
        *&v38[10] = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(a2 + 64) + v9;
      v13 = (*(**(v12 - 16) + 40))(*(v12 - 16));
      (*(*v13 + 56))(&v39);
      (*(*re::ecs2::ComponentImpl<re::ecs2::DirectMaterialParametersArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 56))(v36);
      if (v39 == *v36 && WORD4(v39) == *&v36[8] && WORD5(v39) == HIWORD(*&v36[8]) && ((HIDWORD(v39) ^ *&v36[12]) & 0xFFFFFF) == 0)
      {
        re::ecs2::DirectMaterialParametersArrayComponentVersionUtilities::prepareForRealityFileSerialization(a2, *(v12 - 16), v14);
      }

      a1 = *(v12 - 16);
      if (a1)
      {
        a1 = (*(*a1 + 56))(a1);
        if ((a1 & 1) == 0)
        {
          a1 = (*(**(v12 - 16) + 48))(*(v12 - 16));
          if (a1)
          {
            v15 = v12 - 24;
            re::ecs2::ComponentHandleAssetData::release(v15, *(a2 + 32));
            *v15 = 0;
            *(v15 + 8) = 0;
            *(v15 + 16) = 0;
            v11 = *(a2 + 48);
            if (v11 <= v10)
            {
              goto LABEL_47;
            }

            v16 = v11 - 1;
            if (v11 - 1 > v10)
            {
              v17 = *(a2 + 64);
              v18 = v17 + 24 * v11;
              v19 = v17 + v9;
              v20 = *(v18 - 24);
              *(v19 - 8) = *(v18 - 8);
              *(v19 - 24) = v20;
              v16 = *(a2 + 48) - 1;
            }

            *(a2 + 48) = v16;
            ++*(a2 + 56);
          }
        }
      }

      --v8;
      v9 -= 24;
    }

    while (v8 > 1);
  }

  v21 = *(v5 + 32);
  if (v21 && (v22 = *(a2 + 48)) != 0)
  {
    v23 = *(a2 + 64);
    v24 = &v23[3 * v22];
    while (1)
    {
      v26 = *v23;
      v25 = v23[1];
      v27 = re::ecs2::ComponentTypeRegistry::instance(a1);
      a1 = re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v27, v26);
      if (a1)
      {
        v28 = (*(*a1 + 48))(a1);
        re::getDowngradeFunctions(v28, v21, &v39);
        if (v40)
        {
          v29 = v41;
          while (1)
          {
            (*v29)(v36, v25, 0);
            if ((v36[0] & 1) == 0)
            {
              break;
            }

            if (++v29 == (v41 + 8 * v40))
            {
              goto LABEL_26;
            }
          }

          if (v36[16])
          {
            v31 = *&v38[4];
          }

          else
          {
            v31 = &v36[17];
          }

          re::DynamicString::format("Downgrade function failed for component. %s", &v33, v31);
          v3 = v35;
          v35 = 0;

          if (v33 && (v34 & 1) != 0)
          {
            (*(*v33 + 40))();
          }

          if (v36[0] & 1) == 0 && *&v36[8] && (v36[16])
          {
            (*(**&v36[8] + 40))();
          }

          v30 = 0;
        }

        else
        {
LABEL_26:
          v30 = 1;
        }

        a1 = v39;
        if (v39)
        {
          if (v41)
          {
            a1 = (*(*v39 + 40))();
          }
        }

        if (!v30)
        {
          break;
        }
      }

      v23 += 3;
      if (v23 == v24)
      {
        goto LABEL_43;
      }
    }

    v32 = v3;
    *a3 = 0;
    *(a3 + 8) = v32;
  }

  else
  {
LABEL_43:
    *a3 = 1;
    *(a3 + 8) = 1;
  }
}

uint64_t *re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary@<X0>(re::AssetCompatibility *this@<X0>, const re::internal::AssetEntry *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v79[5] = *MEMORY[0x1E69E9840];
  if (a3 >= 0xC)
  {
    v7 = 0;
  }

  else
  {
    v7 = 3;
  }

  if (a3 >= 9)
  {
    v8 = v7;
  }

  else
  {
    v8 = 2;
  }

  if (a3 >= 5)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1;
  }

  v10 = *(this + 35);
  if (v10)
  {
    v13 = *(a2 + 226);
    v70 = v10;
    v14 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v13, &v70);
    (*(**v14 + 128))(*v14);
    v15 = *v14;
    v16 = re::internal::AssetEntry::assetPointer(this);
    (*(*v15 + 272))(v79, v15, v16);
    if (v79[0])
    {
      v17 = (*(*v15 + 128))(v15);
      if (v17)
      {
        v18 = v17;
        if (*(v17 + 16) == 8)
        {
          v63 = 0;
          v60[1] = 0;
          v61 = 0;
          v60[0] = 0;
          v62 = 0;
          if (v9)
          {
            re::getDowngradeFunctions(v17, v9, &v70);
            re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::operator=(v60, &v70);
            if (v70)
            {
              if (v73)
              {
                (*(*v70 + 40))();
              }
            }
          }

          v19 = (*(*v15 + 288))(v15, v79[0], a4);
          if (!v61 && (v19 & 1) == 0)
          {
            *a5 = 1;
            *(a5 + 8) = 0;
            goto LABEL_127;
          }

          if (v19)
          {
            v30 = (*(*v15 + 296))(v15, v79[0], a4);
            if (v30)
            {
              v31 = 1;
              goto LABEL_48;
            }
          }

          else
          {
          }

          v32 = (*(*v15 + 136))(v15);
          if (!v32)
          {
            if (*(this + 21))
            {
              v41 = *(this + 22);
            }

            else
            {
              v41 = this + 169;
            }

            re::DynamicString::format("Failed to allocate copy of AssetEntry '%s'.", &v70, v41);
            v42 = v64;
            v64 = 0;
            *a5 = 0;
            *(a5 + 8) = v42;

            if (v70 && (v71 & 1) != 0)
            {
              (*(*v70 + 40))();
            }

LABEL_127:
            v28 = v60[0];
            if (!v60[0])
            {
              return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v79);
            }

            v29 = v63;
            if (!v63)
            {
              return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v79);
            }

            goto LABEL_129;
          }

          v30 = v32;
          v31 = 0;
LABEL_48:
          v70 = &unk_1F5CC6A90;
          *&v71 = a2;
          *(&v71 + 1) = v10;
          v72 = &v70;
          v78 = &v76;
          v75 = v30;
          v76 = &unk_1F5CC6A90;
          v77 = v71;
          v33 = std::__function::__value_func<void ()(void *)>::~__value_func[abi:nn200100](&v70);
          if (v31)
          {
            goto LABEL_49;
          }

          if (v10 == re::SceneAsset::assetType(v33))
          {
          }

          else
          {
            v71 = 0uLL;
            {
              if (*(this + 21))
              {
                v37 = *(this + 22);
              }

              else
              {
                v37 = this + 169;
              }

              re::DynamicString::format("Failed to perform introspection copy of AssetEntry '%s'.", &v70, v37);
              v38 = v64;
              v64 = 0;
              *a5 = 0;
              *(a5 + 8) = v38;

              v39 = v70;
              if (!v70 || (v71 & 1) == 0)
              {
                goto LABEL_126;
              }

              v40 = *(&v71 + 1);
              goto LABEL_115;
            }
          }

          v68 = 0;
          v65 = 0;
          *v66 = 0;
          v64 = 0;
          v67 = 0;
          v59[0] = &unk_1F5D0A7B0;
          v59[1] = &v64;
          v59[2] = 0;
          if ((*(*v15 + 72))(v15, v59, v79[0], 0))
          {
            v70 = &unk_1F5D0A468;
            LOBYTE(v71) = 0;
            *(&v71 + 1) = v68;
            v72 = *v66;
            re::FixedArrayInputStream::FixedArrayInputStream(&v73, v68, v66[0], -1);
            if (*(this + 14) == -1)
            {
              v43 = 0;
            }

            else
            {
              v43 = *(this + 14);
            }

            re::AssetSignpost::ScopeGuard::ScopeGuard(v58, 2056, v43, *v10);
            if ((*(*v15 + 24))(v15, v75, &v70, 0))
            {
              re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v58);
              v70 = &unk_1F5D0A468;
              re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v73);
              if (v64 && v68)
              {
                (*(*v64 + 40))();
              }

LABEL_49:
              if (v61)
              {
                v34 = v63;
                while (1)
                {
                  (*v34)(&v70, v75, a2);
                  if ((v70 & 1) == 0)
                  {
                    break;
                  }

                  if (++v34 == &v63[v61])
                  {
                    goto LABEL_53;
                  }
                }

                if (*(this + 21))
                {
                  v44 = *(this + 22);
                }

                else
                {
                  v44 = this + 169;
                }

                if (BYTE8(v71))
                {
                  v45 = v72;
                }

                else
                {
                  v45 = (&v71 + 9);
                }

                re::DynamicString::format("Downgrade function failed for AssetHandle '%s': %s", &v64, v44, v45);
                v46 = v55;
                v55 = 0;
                *a5 = 0;
                *(a5 + 8) = v46;

                if (v64 && (v65 & 1) != 0)
                {
                  (*(*v64 + 40))();
                }

                if (v70)
                {
                  goto LABEL_126;
                }

                v39 = v71;
                if (!v71 || (BYTE8(v71) & 1) == 0)
                {
                  goto LABEL_126;
                }

                v40 = v72;
LABEL_115:
                (*(*v39 + 40))(v39, v40);
LABEL_126:
                std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v75);
                goto LABEL_127;
              }

LABEL_53:
              LOBYTE(v64) = 1;
              v35 = v75;
              v75 = 0;
              v65 = v35;
              if (v78)
              {
                if (v78 == &v76)
                {
                  v69 = v66;
                  (*(*v78 + 3))();
                  v49 = v64;
                  LOBYTE(v70) = v64;
                  if ((v64 & 1) == 0)
                  {
                    goto LABEL_117;
                  }

                  v35 = v65;
LABEL_100:
                  v65 = 0;
                  *&v71 = v35;
                  if (v69)
                  {
                    if (v69 == v66)
                    {
                      v74 = &v71 + 2;
                      (*(*v69 + 24))();
                      v49 = v70;
                    }

                    else
                    {
                      v74 = v69;
                      v69 = 0;
                    }
                  }

                  else
                  {
                    v74 = 0;
                  }

LABEL_117:
                  *a5 = 1;
                  *(a5 + 8) = v49;
                  if ((v49 & 1) == 0)
                  {
                    goto LABEL_124;
                  }

                  v52 = v71;
                  v53 = v74;
                  *&v71 = 0;
                  *(a5 + 16) = v52;
                  if (v53)
                  {
                    if (v53 == (&v71 + 8))
                    {
                      *(a5 + 48) = a5 + 24;
                      (*(*v53 + 24))(v53);
                      if ((v70 & 1) == 0)
                      {
LABEL_124:
                        if (v64 == 1)
                        {
                          std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v65);
                        }

                        goto LABEL_126;
                      }

LABEL_123:
                      std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](&v71);
                      goto LABEL_124;
                    }

                    v54 = &v74;
                    *(a5 + 48) = v53;
                  }

                  else
                  {
                    v54 = (a5 + 48);
                  }

                  *v54 = 0;
                  goto LABEL_123;
                }

                v36 = &v78;
                v69 = v78;
              }

              else
              {
                v36 = &v69;
              }

              *v36 = 0;
              v49 = 1;
              LOBYTE(v70) = 1;
              goto LABEL_100;
            }

            if (*(this + 21))
            {
              v50 = *(this + 22);
            }

            else
            {
              v50 = this + 169;
            }

            re::DynamicString::format("Failed to deserialize asset blob of AssetEntry '%s'.", &v55, v50);
            v51 = v57;
            v57 = 0;
            *a5 = 0;
            *(a5 + 8) = v51;

            if (v55 && (v56 & 1) != 0)
            {
              (*(*v55 + 40))();
            }

            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v58);
            v70 = &unk_1F5D0A468;
            re::internal::MemoryInputStream<re::FixedArray<char>>::~MemoryInputStream(&v73);
          }

          else
          {
            if (*(this + 21))
            {
              v47 = *(this + 22);
            }

            else
            {
              v47 = this + 169;
            }

            re::DynamicString::format("Failed to serialize asset blob of AssetEntry '%s'.", &v70, v47);
            v48 = v55;
            v55 = 0;
            *a5 = 0;
            *(a5 + 8) = v48;

            if (v70 && (v71 & 1) != 0)
            {
              (*(*v70 + 40))();
            }
          }

          v39 = v64;
          if (!v64)
          {
            goto LABEL_126;
          }

          v40 = v68;
          if (!v68)
          {
            goto LABEL_126;
          }

          goto LABEL_115;
        }

        if (*(this + 21))
        {
          v26 = *(this + 22);
        }

        else
        {
          v26 = this + 169;
        }

        re::DynamicString::format("Could not make a copy of AssetEntry '%s' because its IntrospectionType is not a structure type.", &v70, v26);
        v24 = 3;
      }

      else
      {
        if (*(this + 21))
        {
          v25 = *(this + 22);
        }

        else
        {
          v25 = this + 169;
        }

        re::DynamicString::format("Could not make a copy of AssetEntry '%s' because its AssetLoader does not have an IntrospectionBase.", &v70, v25);
        v24 = 2;
      }
    }

    else
    {
      if (*(this + 21))
      {
        v23 = *(this + 22);
      }

      else
      {
        v23 = this + 169;
      }

      re::DynamicString::format("Could not make a copy of AssetEntry '%s' because it does not have an AssetPointer.", &v70, v23);
      v24 = 1;
    }

    v27 = v64;
    v64 = 0;
    *a5 = 0;
    *(a5 + 8) = v27;

    v28 = v70;
    if (!v70 || (v71 & 1) == 0)
    {
      return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v79);
    }

    v29 = *(&v71 + 1);
LABEL_129:
    (*(*v28 + 40))(v28, v29);
    return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v79);
  }

  if (*(this + 21))
  {
    v20 = *(this + 22);
  }

  else
  {
    v20 = this + 169;
  }

  re::DynamicString::format("Could not make a copy of AssetEntry '%s' because it does not have an AssetType.", &v70, v20);
  v21 = v64;
  v64 = 0;
  *a5 = 0;
  *(a5 + 8) = v21;

  result = v70;
  if (v70 && (v71 & 1) != 0)
  {
    return (*(*v70 + 40))();
  }

  return result;
}

uint64_t re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::operator=(uint64_t result, uint64_t a2)
{
  if (result != a2)
  {
    v4 = *result;
    v5 = *a2;
    if (*result)
    {
      v6 = v5 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6 || v4 == v5)
    {
      v8 = *(result + 8);
      v9 = *(a2 + 8);
      *result = v5;
      *(result + 8) = v9;
      *a2 = v4;
      *(a2 + 8) = v8;
      v10 = *(result + 16);
      *(result + 16) = *(a2 + 16);
      *(a2 + 16) = v10;
      v11 = *(result + 32);
      *(result + 32) = *(a2 + 32);
      *(a2 + 32) = v11;
      ++*(a2 + 24);
      ++*(result + 24);
    }

    else
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503, v2, v3);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t *re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessaryFromAssetHandle@<X0>(re::AssetCompatibility *this@<X0>, const re::AssetHandle *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v6 = *(this + 1);
  if (v6)
  {
    v9 = *(v6 + 3);
    if (v9)
    {

      return re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(v6, v9, a2, a3, a4);
    }

    v12 = re::AssetHandle::assetInfo(this);
    if (v12[17])
    {
      v13 = v12[18];
    }

    else
    {
      v13 = v12 + 137;
    }

    re::DynamicString::format("Could not make a copy of AssetHandle '%s' because it does not have an AssetService pointer.", &v15, v13);
    v11 = 9;
  }

  else
  {
    v11 = 8;
  }

  v14 = v17;
  v17 = 0;
  *a4 = 0;
  *(a4 + 8) = v14;

  result = v15;
  if (v15 && (v16 & 1) != 0)
  {
    return (*(*v15 + 40))();
  }

  return result;
}

uint64_t re::AssetCompatibility::isSceneAssetCompatibleWithVersion(re::AssetCompatibility *this, const re::AssetHandle *a2)
{
  v19[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = this;
  v5 = *(v2 + 280);
  if (v5 != re::SceneAsset::assetType(this))
  {
    goto LABEL_19;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = atomic_load((v7 + 896));
  if (v8 != 2)
  {
    v9 = *(v4 + 1);
LABEL_7:
    re::AssetHandle::loadNow(v9, 0);
  }

  v10 = *(v4 + 1);
  if (!v10 || (v11 = atomic_load((v10 + 896)), v11 != 2))
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.isLoaded()", "isSceneAssetCompatibleWithVersion", 564);
    this = _os_crash();
    __break(1u);
LABEL_18:
    re::SceneAsset::assetType(this);
LABEL_19:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.assetType() == SceneAsset::assetType()", "isSceneAssetCompatibleWithVersion", 560);
    _os_crash();
    __break(1u);
  }

  re::AssetHandle::serializableAsset(v4, v19);
  v12 = a2 == 2;
  if (a2 >= 2)
  {
    v13 = 1;
    if (v12)
    {
      v17[0] = MEMORY[0x1E69E9820];
      v17[1] = 0x40000000;
      v17[2] = ___ZN2re18AssetCompatibility33isSceneAssetCompatibleWithVersionERKNS_11AssetHandleEx_block_invoke;
      v17[3] = &__block_descriptor_tmp_23;
      v18 = 1;
      v13 = v16;
      if ((v15[0] & 1) == 0)
      {
      }
    }
  }

  else
  {
    v13 = 0;
  }

  std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v19);
  return v13;
}

uint64_t ___ZN2re18AssetCompatibility33isSceneAssetCompatibleWithVersionERKNS_11AssetHandleEx_block_invoke@<X0>(uint64_t result@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  v4 = 1;
  if (*(result + 32) == 1)
  {
    result = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(a2);
    if (result && (v5 = *(result + 48)) != 0)
    {
      v6 = *(result + 64);
      v7 = &v6[4 * v5];
      while (1)
      {
        v8 = *v6;
        if (!*v6)
        {
          v8 = v6[1];
        }

        v9 = *(v8 + 336);
        if (v9)
        {
          v10 = 0;
          v11 = *(v8 + 320);
          while ((*v11 & 0x80000000) == 0)
          {
            v11 += 80;
            if (v9 == ++v10)
            {
              LODWORD(v10) = *(v8 + 336);
              break;
            }
          }
        }

        else
        {
          LODWORD(v10) = 0;
        }

        if (v10 != v9)
        {
          break;
        }

LABEL_24:
        v6 += 4;
        v4 = 1;
        if (v6 == v7)
        {
          goto LABEL_28;
        }
      }

      v12 = *(v8 + 320);
      while (*(v12 + 320 * v10 + 32) != 192)
      {
        if (v9 <= v10 + 1)
        {
          v13 = v10 + 1;
        }

        else
        {
          v13 = v9;
        }

        while (v13 - 1 != v10)
        {
          LODWORD(v10) = v10 + 1;
          if ((*(v12 + 320 * v10) & 0x80000000) != 0)
          {
            goto LABEL_23;
          }
        }

        LODWORD(v10) = v13;
LABEL_23:
        if (v10 == v9)
        {
          goto LABEL_24;
        }
      }

      v4 = 0;
    }

    else
    {
      v4 = 1;
    }
  }

LABEL_28:
  *a3 = 1;
  a3[8] = v4;
  return result;
}

uint64_t *re::AssetCompatibility::sceneAssetCopyCompatibilityVariant(re::AssetCompatibility *this, uint64_t a2)
{
  v23[5] = *MEMORY[0x1E69E9840];
  v2 = *(this + 1);
  if (!v2)
  {
    goto LABEL_18;
  }

  v4 = this;
  v5 = *(v2 + 280);
  if (v5 != re::SceneAsset::assetType(this))
  {
    goto LABEL_19;
  }

  v7 = *(v4 + 1);
  if (!v7)
  {
    v9 = 0;
    goto LABEL_7;
  }

  v8 = atomic_load((v7 + 896));
  if (v8 != 2)
  {
    v9 = *(v4 + 1);
LABEL_7:
    re::AssetHandle::loadNow(v9, 0);
  }

  v10 = *(v4 + 1);
  if (!v10 || (v11 = atomic_load((v10 + 896)), v11 != 2))
  {
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.isLoaded()", "sceneAssetCopyCompatibilityVariant", 599);
    this = _os_crash();
    __break(1u);
LABEL_18:
    re::SceneAsset::assetType(this);
LABEL_19:
    re::internal::assertLog(4, v6, "assertion failure: '%s' (%s:line %i) ", "assetHandle.assetType() == SceneAsset::assetType()", "sceneAssetCopyCompatibilityVariant", 595);
    _os_crash();
    __break(1u);
  }

  re::AssetHandle::serializableAsset(v4, v23);
  v12 = v23[0];
  v14 = re::globalAllocators(v13);
  v15 = (*(*v14[2] + 32))(v14[2], 40, 8);
  *v15 = 0u;
  *(v15 + 16) = 0u;
  *(v15 + 32) = 0;
  if (a2 <= 2)
  {
    if ((v21[0] & 1) == 0)
    {
    }
  }

  v17 = *(v4 + 1);
  if (v17)
  {
    v18 = *(v17 + 24);
  }

  else
  {
    v18 = 0;
  }

  v19 = re::SceneAsset::assetType(v16);
  (*(*v18 + 424))(v18, v15, v19, 0, 2, 0);
  return std::unique_ptr<void,std::function<void ()(void *)>>::~unique_ptr[abi:nn200100](v23);
}

uint64_t ___ZN2re18AssetCompatibility34sceneAssetCopyCompatibilityVariantERKNS_11AssetHandleEx_block_invoke@<X0>(void *a1@<X1>, _BYTE *a2@<X8>)
{
  result = re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(a1);
  if (result)
  {
    v4 = result;
    v5 = *(result + 48);
    if (v5)
    {
      v6 = *(result + 64);
      v7 = v6 + 32 * v5;
      do
      {
        v8 = *v6;
        v9 = *v6;
        if (!*v6)
        {
          v9 = *(v6 + 8);
        }

        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v24 = 0x7FFFFFFFLL;
        v10 = *(v9 + 38);
        if (v10)
        {
          if (*(v9 + 83) <= 3u)
          {
            v11 = 3;
          }

          else
          {
            v11 = *(v9 + 83);
          }

          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v21, v10, v11);
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(&v21, v9 + 304);
          v8 = *v6;
        }

        ++*(v6 + 16);
        re::ecs2::SerializableMaterialParameterBlock::clearParameters(v8);
        ++*(v6 + 16);
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(*v6 + 16);
        ++*(v6 + 16);
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(*v6 + 160);
        v12 = v23;
        if (v23)
        {
          v13 = 0;
          v14 = v22;
          while ((*v14 & 0x80000000) == 0)
          {
            v14 += 80;
            if (v23 == ++v13)
            {
              LODWORD(v13) = v23;
              break;
            }
          }
        }

        else
        {
          LODWORD(v13) = 0;
        }

        if (v13 != v23)
        {
          v15 = v22;
          v16 = v23;
          do
          {
            v17 = v15 + 320 * v13;
            v19 = *(v17 + 32);
            v18 = (v17 + 32);
            if (v19 != 192)
            {
              ++*(v6 + 16);
              re::ecs2::SerializableMaterialParameterBlock::addParameter(*v6, (v15 + 320 * v13 + 8), v18);
              v16 = v23;
              v15 = v22;
            }

            if (v16 <= v13 + 1)
            {
              v20 = v13 + 1;
            }

            else
            {
              v20 = v16;
            }

            while (v20 - 1 != v13)
            {
              LODWORD(v13) = v13 + 1;
              if ((*(v15 + 320 * v13) & 0x80000000) != 0)
              {
                goto LABEL_28;
              }
            }

            LODWORD(v13) = v20;
LABEL_28:
            ;
          }

          while (v13 != v12);
        }

        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v21);
        v6 += 32;
      }

      while (v6 != v7);
    }

    result = re::ecs2::Component::markDirty(v4);
  }

  *a2 = 1;
  a2[8] = 1;
  return result;
}

uint64_t re::AssetCompatibility::sceneRequiredVersion(re::SceneAsset *a1, uint64_t a2)
{
  re::TypeAvailabilityUtilities::getSceneRequiredReleaseInfo(a1, a2, 2, &v5);
  v3 = v5;
  if (v6 == 1 && (v7 & 1) != 0)
  {
    if (v7)
    {
    }
  }

  return re::TypeAvailabilityUtilities::convertToMajorVersion(v3);
}

void anonymous namespace::entityAssetDataDeepCopy(re *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  *(a3 + 24) = 1;
  *(a3 + 32) = 0;
  v6 = (a3 + 32);
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 104) = 0;
  *(a3 + 64) = 0u;
  *(a3 + 80) = 0u;
  *(a3 + 96) = 0;
  *a3 = *a2;
  re::StringID::operator=((a3 + 8), (a2 + 8));
  *(a3 + 24) = *(a2 + 24);
  v7 = *(a2 + 48);
  *v6 = a1;
  v8 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v6, 0);
  ++*(a3 + 56);
  if (*(a3 + 40) < v7)
  {
    v8 = re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v6, v7);
  }

  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = *(a2 + 64);
    v11 = &v10[3 * v9];
    do
    {
      v12 = v10[1];
      if (v12)
      {
        v13 = *v10;
        v14 = re::ecs2::ComponentTypeRegistry::instance(v8);
        v15 = *(re::ecs2::ComponentTypeRegistry::componentTypeWithHash(v14, v13) + 8);
        if (v15)
        {
          v16 = v15(v12);
          v25.n128_u64[0] = v13;
          v25.n128_u64[1] = v16;
          LOBYTE(v26) = 1;
        }

        else
        {
          v17 = (*(*v12 + 40))(v12);
          v18 = (*(*v17 + 48))(v17);
          v19 = re::introspectionAllocPointer(a1, 0, v18);
          v25 = a1;
          v26 = 0;
          v25.n128_u64[0] = v13;
          v25.n128_u64[1] = v19;
          LOBYTE(v26) = 0;
        }

        re::DynamicArray<re::BufferView>::add(v6, &v25);
      }

      v10 += 3;
    }

    while (v10 != v11);
  }

  v20 = *(a2 + 88);
  *(a3 + 72) = a1;
  v21 = a3 + 72;
  re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(v21, 0);
  ++*(v21 + 24);
  if (*(v21 + 8) < v20)
  {
    re::DynamicArray<re::ecs2::EntityAssetData>::setCapacity(v21, v20);
  }

  v22 = *(a2 + 88);
  if (v22)
  {
    v23 = *(a2 + 104);
    v24 = 112 * v22;
    do
    {
      re::DynamicArray<re::ecs2::EntityAssetData>::add(v21, &v25);
      re::ecs2::EntityAssetData::~EntityAssetData(&v25);
      v23 += 112;
      v24 -= 112;
    }

    while (v24);
  }
}

uint64_t re::ecs2::EntityAssetData::tryGetComponent<re::ecs2::MaterialParameterBlockArrayComponent>(void *a1)
{
  if (!a1[4])
  {
    return 0;
  }

  v1 = a1[6];
  if (!v1)
  {
    return 0;
  }

  v2 = a1[8] + 8;
  v3 = 24 * v1;
  while (*(v2 - 8) != *(re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 3) >> 1)
  {
    v2 += 24;
    v3 -= 24;
    if (!v3)
    {
      return 0;
    }
  }

  return *v2;
}

void re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 40;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 320 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &unk_1E304C660, 4 * v10);
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

re::ecs2::SerializedMaterialParameter *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(re::ecs2::SerializedMaterialParameter *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
        v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, v9 % *(v4 + 24), v9);
        re::StringID::StringID((v10 + 8), (*(a2 + 16) + v5 + 8));
        result = re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v10 + 32), (*(a2 + 16) + v5 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 320;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 320 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 320 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 320 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 320 * v4;
}

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

re::ecs2::SerializedMaterialParameter *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(re::ecs2::SerializedMaterialParameter *result, uint64_t a2)
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
        v8 = 0xBF58476D1CE4E5B9 * ((*(v7 + v5 + 8) >> 31) ^ (*(v7 + v5 + 8) >> 1));
        v9 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v10 = *(a2 + 16) + v5;
        v11 = *(v10 + 8);
        v9[1] = v9[1] & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        v9[1] = *(v10 + 8) & 0xFFFFFFFFFFFFFFFELL | v11 & 1;
        v9[2] = *(v10 + 16);
        *(v10 + 8) = 0;
        *(v10 + 16) = &str_67;
        result = re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter((v9 + 4), (*(a2 + 16) + v5 + 32));
        v2 = *(a2 + 32);
      }

      v5 += 320;
    }
  }

  return result;
}

re::ecs2::SerializedMaterialParameter *re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(re::ecs2::SerializedMaterialParameter *this, const re::ecs2::SerializedMaterialParameter *a2)
{
  *this = *a2;
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  v6 = *(a2 + 4);
  *(this + 3) = *(a2 + 3);
  *(this + 4) = v6;
  *(this + 1) = v4;
  *(this + 2) = v5;
  re::AssetHandle::AssetHandle((this + 80), (a2 + 80));
  *(this + 104) = *(a2 + 104);
  v7 = *(a2 + 105);
  *(this + 105) = v7;
  if (v7 == 1)
  {
    *(this + 106) = *(a2 + 106);
  }

  v8 = *(a2 + 107);
  *(this + 107) = v8;
  if (v8 == 1)
  {
    *(this + 108) = *(a2 + 108);
  }

  v9 = *(a2 + 112);
  *(this + 112) = v9;
  if (v9 == 1)
  {
    *(this + 29) = *(a2 + 29);
  }

  v10 = *(a2 + 120);
  *(this + 120) = v10;
  if (v10 == 1)
  {
    *(this + 31) = *(a2 + 31);
  }

  v11 = *(a2 + 128);
  *(this + 128) = v11;
  if (v11 == 1)
  {
    *(this + 33) = *(a2 + 33);
  }

  v12 = *(a2 + 136);
  *(this + 136) = v12;
  if (v12 == 1)
  {
    *(this + 35) = *(a2 + 35);
  }

  v13 = *(a2 + 144);
  *(this + 144) = v13;
  if (v13 == 1)
  {
    *(this + 37) = *(a2 + 37);
  }

  v14 = *(a2 + 152);
  *(this + 152) = v14;
  if (v14 == 1)
  {
    *(this + 39) = *(a2 + 39);
  }

  v15 = *(a2 + 160);
  *(this + 160) = v15;
  if (v15 == 1)
  {
    *(this + 41) = *(a2 + 41);
  }

  v16 = *(a2 + 168);
  *(this + 168) = v16;
  if (v16 == 1)
  {
    *(this + 43) = *(a2 + 43);
  }

  v17 = *(a2 + 176);
  *(this + 176) = v17;
  if (v17 == 1)
  {
    *(this + 45) = *(a2 + 45);
  }

  v18 = *(a2 + 184);
  *(this + 184) = v18;
  if (v18 == 1)
  {
    *(this + 47) = *(a2 + 47);
  }

  v19 = *(a2 + 192);
  *(this + 192) = v19;
  if (v19 == 1)
  {
    *(this + 25) = *(a2 + 25);
  }

  re::DynamicArray<BOOL>::DynamicArray(this + 208, a2 + 26);
  *(this + 248) = *(a2 + 248);
  *(this + 32) = *(a2 + 32);
  v20 = *(a2 + 264);
  *(this + 280) = *(a2 + 280);
  *(this + 264) = v20;
  return this;
}

void re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 6);
    re::StringID::destroyString((a1 + 2));

    re::StringID::destroyString(v2);
  }
}

double re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
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
        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(a1[2] + v3);
        ++v4;
        v3 += 320;
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

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(uint64_t a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    re::StringID::destroyString((a1 + 8));
    *(a1 + 288) = 0;
    re::DynamicArray<unsigned long>::deinit(a1 + 240);

    re::AssetHandle::~AssetHandle((a1 + 112));
  }
}

__n128 std::__function::__func<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0,std::allocator<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0>,void ()(void *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CC6A90;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0,std::allocator<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0>,void ()(void *)>::operator()(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(*(a1 + 8) + 1808);
  v6 = v1;
  v3 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v2, &v6);
  (*(**v3 + 128))(*v3);
  v4 = *(**v3 + 16);

  return v4();
}

uint64_t std::__function::__func<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0,std::allocator<re::AssetCompatibility::createModifiedAssetPointerForWritingIfNecessary(re::internal::AssetEntry const&,re::AssetManager const*,long long,BOOL)::$_0>,void ()(void *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}