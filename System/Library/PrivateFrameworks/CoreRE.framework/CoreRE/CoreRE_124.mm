void re::SceneUnderstandingGuidedFilterOcclusionData::~SceneUnderstandingGuidedFilterOcclusionData(re::SceneUnderstandingGuidedFilterOcclusionData *this)
{
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }
}

{
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  v3 = *(this + 2);
  if (v3)
  {

    *(this + 2) = 0;
  }

  JUMPOUT(0x1E6906520);
}

void re::ecs2::SceneUnderstandingMeshSystem::~SceneUnderstandingMeshSystem(re::ecs2::SceneUnderstandingMeshSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 768, 0);
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

void *std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100](int a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  if (a1 <= 1)
  {
    if (a1)
    {
      result = 0;
      v9 = a2[1];
      *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100];
      a3[1] = v9;
      return result;
    }

    result = 0;
LABEL_9:
    *a2 = 0;
    return result;
  }

  if (a1 == 2)
  {
    result = 0;
    v8 = a2[1];
    *a3 = std::__any_imp::_SmallHandler<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__handle[abi:nn200100];
    a3[1] = v8;
    goto LABEL_9;
  }

  if (a1 != 3)
  {
  }

  if (a4)
  {
  }

  else
  {
    v6 = a5 == &std::__any_imp::__unique_typeinfo<re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul> *>::__id;
  }

  if (v6)
  {
    return a2 + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::SceneUnderstandingGuidedFilterOcclusionData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::operator()(uint64_t a1, uint64_t (***a2)(uint64_t))
{
  v2 = *(a1 + 8);
  result = (**a2)(3);
  v4 = *result;
  if (*result)
  {
    v5 = *(v4 + 40);
    if (v5)
    {
      for (i = 0; i != v5; ++i)
      {
        v7 = re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](v4, i);
        v8 = *(v7 + 24);
        if (v8)
        {

          *(v7 + 24) = 0;
        }

        v9 = *(v7 + 16);
        if (v9)
        {

          *(v7 + 16) = 0;
        }
      }
    }

    while (*(v4 + 8))
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(v4);
    }

    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    *(v4 + 40) = 0;
    ++*(v4 + 48);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v4);
    v10 = *(*v2 + 40);

    return v10(v2, v4);
  }

  return result;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::SceneUnderstandingGuidedFilterOcclusionData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5670;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::RenderFrameDataArrayWrapper & re::RenderFrameDataStream::getOrAddDataArrayWrapper<re::SceneUnderstandingGuidedFilterOcclusionData>(void)::{lambda(re::RenderFrameDataArrayWrapper*)#1},void ()(re::RenderFrameDataArrayWrapper*)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5670;
  a2[1] = v2;
  return a2;
}

uint64_t re::BucketArray<re::SceneUnderstandingGuidedFilterOcclusionData,4ul>::operator[](uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1011, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 2)
  {
    goto LABEL_8;
  }

  if (*(a1 + 16))
  {
    v3 = a1 + 24;
  }

  else
  {
    v3 = *(a1 + 32);
  }

  return *(v3 + 8 * (a2 >> 2)) + 192 * (a2 & 3);
}

void *re::allocInfo_ShadowService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_321, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_321))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD6D8, "ShadowService");
    __cxa_guard_release(&_MergedGlobals_321);
  }

  return &unk_1EE1AD6D8;
}

void re::initInfo_ShadowService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x622CD9D971A522AALL;
  v6[1] = "ShadowService";
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
  *(this + 8) = &re::initInfo_ShadowService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_AccessibilityComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD770, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD770))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD878, "AccessibilityComponent");
    __cxa_guard_release(&qword_1EE1AD770);
  }

  return &unk_1EE1AD878;
}

void re::ecs2::initInfo_AccessibilityComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v55[0] = 0xA4CC9857620F7EDELL;
  v55[1] = "AccessibilityComponent";
  if (v55[0])
  {
    if (v55[0])
    {
    }
  }

  *(this + 2) = v56;
  if ((atomic_load_explicit(&qword_1EE1AD778, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AD778);
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
      qword_1EE1AD810 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isRoot";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AD818 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "isEnabled";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AD820 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "identifier";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AD828 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "label";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x4800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1AD830 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "description";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x7000000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1AD838 = v28;
      v29 = re::introspectionAllocator(v28);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::accessibility::CustomContent>>::get();
      v30 = (*(*v29 + 32))(v29, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "customContent";
      *(v30 + 16) = &qword_1EE1AD790;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x9800000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1AD840 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::IntrospectionInfo<re::Optional<re::DynamicString>>::get(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "value";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0xC000000007;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1AD848 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::introspect_uint64_t(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "traits";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0xE800000008;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1AD850 = v38;
      v39 = re::introspectionAllocator(v38);
      re::IntrospectionInfo<re::DynamicArray<long>>::get(v39, v40);
      v41 = (*(*v39 + 32))(v39, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "systemRotors";
      *(v41 + 16) = qword_1EE1AD7D0;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0xF000000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1AD858 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "customRotors";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x1180000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1AD860 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_uint64_t(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "systemActions";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x1400000000BLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1AD868 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::IntrospectionInfo<re::DynamicArray<re::DynamicString>>::get(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "customActions";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x1480000000CLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE1AD870 = v53;
      __cxa_guard_release(&qword_1EE1AD778);
    }
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 13;
  *(this + 8) = &qword_1EE1AD810;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AccessibilityComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AccessibilityComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AccessibilityComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AccessibilityComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222AccessibilityComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v54 = v56;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::accessibility::CustomContent>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AD780, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD780))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AD790);
    qword_1EE1AD790 = &unk_1F5CF56F0;
    __cxa_guard_release(&qword_1EE1AD780);
  }

  if ((_MergedGlobals_322 & 1) == 0)
  {
    v0 = re::ecs2::accessibility::introspect_CustomContent(1);
    if ((_MergedGlobals_322 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_322 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AD790, 0);
      qword_1EE1AD7A0 = 0x2800000003;
      dword_1EE1AD7A8 = v2;
      word_1EE1AD7AC = 0;
      *&xmmword_1EE1AD7B0 = 0;
      *(&xmmword_1EE1AD7B0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AD7C0 = v1;
      unk_1EE1AD7C8 = 0;
      qword_1EE1AD790 = &unk_1F5CF56F0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AD790, &v12);
      if (v13)
      {
        v5 = *&v14[7];
      }

      else
      {
        v5 = v14;
      }

      if (v12 && (v13 & 1) != 0)
      {
        (*(*v12 + 40))();
      }

      v9 = *(v1 + 32);
      if (v16)
      {
        v8 = v16;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v15);
        re::TypeBuilder::TypeBuilder(&v12, v15);
        v11 = v9;
        re::TypeBuilder::beginListType(&v12, &v10, 1, 0x28uLL, 8uLL, &v11);
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AD7B0 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<long>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AD788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD788))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1AD7D0);
    qword_1EE1AD7D0[0] = &unk_1F5CF5788;
    __cxa_guard_release(&qword_1EE1AD788);
  }

  if ((byte_1EE1AD769 & 1) == 0)
  {
    v2 = re::introspect_long(1, a2);
    if ((byte_1EE1AD769 & 1) == 0)
    {
      v3 = v2;
      byte_1EE1AD769 = 1;
      v4 = v2[6];
      ArcSharedObject::ArcSharedObject(qword_1EE1AD7D0, 0);
      unk_1EE1AD7E0 = 0x2800000003;
      unk_1EE1AD7E8 = v4;
      unk_1EE1AD7EC = 0;
      *&xmmword_1EE1AD7F0 = 0;
      *(&xmmword_1EE1AD7F0 + 1) = 0xFFFFFFFFLL;
      unk_1EE1AD800 = v3;
      unk_1EE1AD808 = 0;
      qword_1EE1AD7D0[0] = &unk_1F5CF5788;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(qword_1EE1AD7D0, &v14);
      if (v15)
      {
        v7 = *&v16[7];
      }

      else
      {
        v7 = v16;
      }

      if (v14 && (v15 & 1) != 0)
      {
        (*(*v14 + 40))();
      }

      v11 = *(v3 + 2);
      if (v18)
      {
        v10 = v18;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v17);
        re::TypeBuilder::TypeBuilder(&v14, v17);
        v13 = v11;
        re::TypeBuilder::beginListType(&v14, &v12, 1, 0x28uLL, 8uLL, &v13);
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1AD7F0 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::internal::defaultDestruct<re::ecs2::AccessibilityComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicString>::deinit(a3 + 328);
  re::DynamicArray<re::DynamicString>::deinit(a3 + 280);
  re::DynamicArray<unsigned long>::deinit(a3 + 240);
  if (*(a3 + 192) == 1)
  {
    re::DynamicString::deinit((a3 + 200));
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a3 + 152);
  if (*(a3 + 112) == 1)
  {
    re::DynamicString::deinit((a3 + 120));
  }

  if (*(a3 + 72) == 1)
  {
    re::DynamicString::deinit((a3 + 80));
  }

  if (*(a3 + 32) == 1)
  {
    re::DynamicString::deinit((a3 + 40));
  }

  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::AccessibilityComponent>(uint64_t a1)
{
  re::DynamicArray<re::DynamicString>::deinit(a1 + 328);
  re::DynamicArray<re::DynamicString>::deinit(a1 + 280);
  re::DynamicArray<unsigned long>::deinit(a1 + 240);
  if (*(a1 + 192) == 1)
  {
    re::DynamicString::deinit((a1 + 200));
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a1 + 152);
  if (*(a1 + 112) == 1)
  {
    re::DynamicString::deinit((a1 + 120));
  }

  if (*(a1 + 72) == 1)
  {
    re::DynamicString::deinit((a1 + 80));
  }

  if (*(a1 + 32) == 1)
  {
    re::DynamicString::deinit((a1 + 40));
  }

  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v8 = re::DynamicString::setCapacity(&v15, 0);
  v18 = 0uLL;
  *&v19 = 0;
  re::DynamicString::setCapacity(&v17 + 1, 0);
  v9 = *(a4 + 16);
  if (v9 >= *(a4 + 8))
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::growCapacity(a4, v9 + 1);
    v9 = *(a4 + 16);
  }

  v10 = *(a4 + 32) + 72 * v9;
  *v10 = v15;
  *(v10 + 8) = v16;
  v11 = *(&v17 + 1);
  *(v10 + 24) = v17;
  *(v10 + 32) = v11;
  *(v10 + 56) = v19;
  *(v10 + 40) = v18;
  *(v10 + 64) = BYTE8(v19);
  v12 = *(a4 + 16);
  *(a4 + 16) = v12 + 1;
  ++*(a4 + 24);
  v13 = (*(a4 + 32) + 72 * v12);
  re::introspectionInitElement(a2, a3, a1[6], v13);
  return v13;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::accessibility::CustomContent>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 72 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 72 * a3;
}

void *re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(v5, a2);
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
        v10 = v8 + 72 * v9;
        v11 = v7;
        do
        {
          *v11 = 0u;
          *(v11 + 1) = 0u;
          v11[3] = *(v8 + 24);
          v12 = *(v8 + 8);
          *v11 = *v8;
          *v8 = 0;
          v13 = *(v8 + 16);
          *(v8 + 24) = 0;
          v15 = v11[1];
          v14 = v11[2];
          v11[1] = v12;
          v11[2] = v13;
          *(v8 + 8) = v15;
          *(v8 + 16) = v14;
          *(v11 + 2) = 0u;
          *(v11 + 3) = 0u;
          v11[4] = *(v8 + 32);
          *(v8 + 32) = 0;
          v11[7] = *(v8 + 56);
          *(v8 + 56) = 0;
          v17 = v11[5];
          v16 = v11[6];
          v18 = *(v8 + 48);
          v11[5] = *(v8 + 40);
          v11[6] = v18;
          *(v8 + 40) = v17;
          *(v8 + 48) = v16;
          *(v11 + 64) = *(v8 + 64);
          re::DynamicString::deinit((v8 + 32));
          re::DynamicString::deinit(v8);
          v11 += 9;
          v8 += 72;
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

void re::DynamicArray<re::ecs2::accessibility::CustomContent>::resize(_anonymous_namespace_ *a1, unint64_t a2)
{
  v3 = a1;
  v4 = *(a1 + 2);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v9 = 72 * a2;
    v10 = a2;
    do
    {
      v11 = *(v3 + 4) + v9;
      re::DynamicString::deinit((v11 + 32));
      re::DynamicString::deinit(v11);
      ++v10;
      v9 += 72;
    }

    while (v10 < *(v3 + 2));
  }

  else
  {
    if (*(a1 + 1) < a2)
    {
      a1 = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a1, a2);
      v4 = *(v3 + 2);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 72 * v4;
      do
      {
        v7 = *(v3 + 4) + v6;
        *v7 = 0u;
        *(v7 + 16) = 0u;
        v8 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0u;
        *(v7 + 48) = 0u;
        v7 += 32;
        a1 = re::DynamicString::setCapacity(v7, 0);
        *(v7 + 32) = 0;
        v6 += 72;
        --v5;
      }

      while (v5);
    }
  }

  *(v3 + 2) = a2;
  ++*(v3 + 6);
}

void *re::DynamicArray<re::ecs2::accessibility::CustomContent>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::accessibility::CustomContent>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::accessibility::CustomContent>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 72 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 72;
        v11 -= 72;
      }

      while (v11);
    }
  }
}

void re::DynamicArray<re::ecs2::accessibility::CustomContent>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 72 * v2;
    do
    {
      re::DynamicString::deinit((v3 + 32));
      re::DynamicString::deinit(v3);
      v3 += 72;
      v4 -= 72;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 72 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 72 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::accessibility::CustomContent>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<long>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<long>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<long>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<float *>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<long>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<float *>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<double>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<long>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v10 = 0;
  re::DynamicArray<re::DataArrayHandle<re::MeshModel>>::add(this, &v10);
  v8 = (*(this + 4) + 8 * *(this + 2) - 8);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<long>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 8 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<float *>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<float *>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<double>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 8 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 8;
        v11 -= 8;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 8 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 8 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::AccessibilityComponent>(ArcSharedObject *a1)
{
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 8) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD8DC8;
  *(v1 + 25) = 0;
  *(v1 + 32) = 0;
  *(v1 + 72) = 0;
  *(v1 + 112) = 0;
  *(v1 + 184) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 152) = 0;
  *(v1 + 176) = 0;
  *(v1 + 192) = 0;
  *(v1 + 360) = 0;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0;
  *(v1 + 304) = 0;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 340) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs222AccessibilityComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 2;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::DecoderRaw>(unint64_t a1, re::snapshot::DecoderRaw *a2)
{
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v6)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
      v4 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(a2, a1, v4[54]);
  re::snapshot::DecoderRaw::operator>>(a2, (a1 + 28));

  return re::snapshot::DecoderRaw::operator>>(a2, (a1 + 32));
}

BOOL re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::DecoderOPACK>(size_t a1, const char **a2)
{
  re::snapshot::DecoderOPACK::field<0,re::ecs2::Component>(a2, a1);
  re::snapshot::DecoderOPACK::field<1,float>(a2, (a1 + 28));

  return re::snapshot::DecoderOPACK::field<4,BOOL>(a2, (a1 + 32));
}

unsigned int *re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::EncoderRaw>(uint64_t a1, unsigned int *a2)
{
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v6)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
      v4 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a2, a1, v4[54]);
  __src = *(a1 + 28);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, &__src, 4uLL);
  v8 = *(a1 + 32);
  return re::snapshot::BufferEncoder::writeRaw<true>(a2, &v8, 1uLL);
}

unsigned int *re::ecs2::HierarchicalFadeComponent::snapshotMapFields<re::snapshot::EncoderOPACK>(uint64_t a1, re::snapshot::EncoderOPACK *this)
{
  v4 = *(this + 4);
  if (v4 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 0);
  }

  else
  {
    v5 = *(this + 1);
    *(this + 4) = v4 + 1;
    *(v5 + v4) = 8;
  }

  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v13)
    {
      re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
      v6 = &unk_1EE187000;
    }
  }

  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(this, a1, v6[54]);
  v7 = *(this + 4);
  if (v7 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v8 = *(this + 1);
    *(this + 4) = v7 + 1;
    *(v8 + v7) = 9;
  }

  re::snapshot::EncoderOPACK::operator<<(this, *(a1 + 28));
  v9 = *(this + 4);
  if (v9 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 4);
  }

  else
  {
    v10 = *(this + 1);
    *(this + 4) = v9 + 1;
    *(v10 + v9) = 12;
  }

  v11 = *(a1 + 32);

  return re::snapshot::EncoderOPACK::operator<<(this, v11);
}

uint64_t re::ecs2::HierarchicalFadeComponent::getUseDepthPrePass(re::ecs2::HierarchicalFadeComponent *this)
{
  if (*(this + 32) == 1)
  {
    v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    {
      v9 = v1;
      v10 = v2;
      v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      if (v6)
      {
        re::Defaults::BOOLValue("disableDepthPrepassForFade", v7, v8);
        useDepthPrePassForFade(void)::kUseDepthPrePassForFade = v8[0] & v8[1] ^ 1;
        v3 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
      }
    }

    v4 = v3[1224];
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t re::ecs2::HierarchicalFadeComponent::getFadeGroupID@<X0>(re::ecs2::HierarchicalFadeComponent *this@<X0>, uint64_t a2@<X8>)
{
  result = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if ((!result || *(result + 25) == 1) && (result = re::ecs2::HierarchicalFadeComponent::getUseDepthPrePass(this), result))
  {
    v5 = *(*(this + 2) + 312);
    *a2 = 1;
    *(a2 + 8) = v5;
  }

  else
  {
    *a2 = 0;
  }

  return result;
}

void *re::ecs2::allocInfo_HierarchicalFadeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD910, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD910))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD948, "HierarchicalFadeComponent");
    __cxa_guard_release(&qword_1EE1AD910);
  }

  return &unk_1EE1AD948;
}

void re::ecs2::initInfo_HierarchicalFadeComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x54B04082FD869170;
  v18[1] = "HierarchicalFadeComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&_MergedGlobals_323, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_323);
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
      qword_1EE1AD930 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "opacity";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AD938 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "useDepthPrePass";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000004;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AD940 = v16;
      __cxa_guard_release(&_MergedGlobals_323);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AD930;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalFadeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalFadeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalFadeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalFadeComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::ecs2::HierarchicalFadeComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8308;
  *(v3 + 28) = 1065353216;
  *(v3 + 32) = 1;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8308;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = 1;
}

void *re::ecs2::allocInfo_HierarchicalFadeSecondaryOpacityMarkerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AD918, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AD918))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AD9D8, "HierarchicalFadeSecondaryOpacityMarkerComponent");
    __cxa_guard_release(&qword_1EE1AD918);
  }

  return &unk_1EE1AD9D8;
}

void re::ecs2::initInfo_HierarchicalFadeSecondaryOpacityMarkerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x9018DAA3288F7CCELL;
  v10[1] = "HierarchicalFadeSecondaryOpacityMarkerComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AD928, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AD928);
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
      qword_1EE1AD920 = v8;
      __cxa_guard_release(&qword_1EE1AD928);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AD920;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs247HierarchicalFadeSecondaryOpacityMarkerComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8390;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalFadeSecondaryOpacityMarkerComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8390;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalFadeComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 5;
    *(a2 + 8) = 0;
  }
}

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, _DWORD *a2)
{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 3)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v3);
  }

  *a2 = *v2;
  result[3] += 4;
  return result;
}

{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 3)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v3);
  }

  *a2 = *v2;
  result[3] += 4;
  return result;
}

{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 3)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 4uLL, v3);
  }

  *a2 = *v2;
  result[3] += 4;
  return result;
}

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, _BYTE *a2)
{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

{
  v2 = result[3];
  if (result[4] == v2)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
  }

  *a2 = *v2;
  ++result[3];
  return result;
}

BOOL re::snapshot::DecoderOPACK::field<0,re::ecs2::Component>(const char **a1, size_t a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<0>(a1);
  if (v4)
  {
    v5 = &unk_1EE187000;
    {
      v5 = &unk_1EE187000;
      if (v7)
      {
        re::introspect<re::ecs2::Component>(BOOL)::info = re::ecs2::introspect_Component(0);
        v5 = &unk_1EE187000;
      }
    }

    re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(a1, a2, v5[54]);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<1,float>(uint64_t *a1, float *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<4,BOOL>(uint64_t *a1, _BYTE *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<4>(a1);
  if (v4)
  {
    re::snapshot::DecoderOPACK::operator>>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::beginField<0>(uint64_t a1)
{
  Integer = *(a1 + 40);
  if (Integer < 0)
  {
    while (1)
    {
      v5 = *(a1 + 24);
      if (v5 >= *(a1 + 32))
      {
        v4 = 0;
      }

      else
      {
        *(a1 + 24) = v5 + 1;
        v4 = *v5;
      }

      re::snapshot::DecoderOPACK::skip(a1, v4);
      v6 = *(a1 + 24);
      if (v6 >= *(a1 + 32))
      {
        break;
      }

      v3 = *v6;
      if (v3 == 3)
      {
        break;
      }

      if ((v3 - 7) > 0x28)
      {
        Integer = re::snapshot::DecoderOPACK::readInteger(a1, 0x7FFFFFFFLL);
      }

      else
      {
        *(a1 + 24) = v6 + 1;
        Integer = v3 - 8;
      }

      *(a1 + 40) = Integer;
      if ((Integer & 0x80000000) == 0)
      {
        return Integer == 0;
      }
    }

    Integer = 0x7FFFFFFF;
    *(a1 + 40) = 0x7FFFFFFF;
  }

  return Integer == 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs247HierarchicalFadeSecondaryOpacityMarkerComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::SpatialMediaStatusComponent *re::ecs2::SpatialMediaStatusComponent::SpatialMediaStatusComponent(re::ecs2::SpatialMediaStatusComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF5820;
  v3 = vdup_n_s32(0x3FC66666u);
  *(v2 + 32) = v3;
  *(v2 + 40) = v3;
  *(v2 + 48) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = xmmword_1E308ED80;
  *(v2 + 96) = 0u;
  *(v2 + 112) = 256;
  *(v2 + 120) = 0;
  *(v2 + 116) = 0;
  *(v2 + 128) = 1;
  *(v2 + 132) = xmmword_1E3091CF0;
  *(v2 + 152) = 0x3F80000040000000;
  *(v2 + 160) = 1;
  *(v2 + 164) = 0x3F4000003F428F5CLL;
  *(v2 + 172) = 0;
  *(v2 + 176) = 0;
  *(v2 + 232) = 0;
  *(v2 + 216) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 184) = 0u;
  v4 = *re::spatialMediaLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    *v6 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEBUG, "[SpatialMediaStatusComponent] Component initialized.", v6, 2u);
  }

  return this;
}

void re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(void **this)
{
  re::ecs2::Component::markDirty(this);
  v2 = *(this[2] + 27);
  if (v2)
  {

    re::ecs2::NetworkComponent::markDirty(v2, this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setImmersiveFrameSize(void **this, void *a2)
{
  v2 = *(this + 8);
  if (v2 != *&a2 && vabds_f32(*&a2, v2) >= (((fabsf(*&a2) + fabsf(v2)) + 1.0) * 0.00001) || (v3 = *(this + 9), v3 != *(&a2 + 1)) && vabds_f32(*(&a2 + 1), v3) >= (((fabsf(*(&a2 + 1)) + fabsf(v3)) + 1.0) * 0.00001))
  {
    this[4] = a2;
    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::publishUpdatesInApp(float32x2_t *this)
{
  v1 = this[2];
  if (!v1)
  {
    v8 = *re::spatialMediaLogObjects(this);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v17 = 0;
    v9 = "[SpatialMediaStatusComponent::publishUpdatesInApp] Cannot find entity of SpatialMediaStatusComponent";
    v10 = &v17;
LABEL_15:
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, v9, v10, 2u);
    return;
  }

  v3 = this[2];
  do
  {
    v4 = v3;
    v3 = *(*&v3 + 32);
  }

  while (v3);
  v5 = *(*&v4 + 24);
  if (!v5)
  {
    v8 = *re::spatialMediaLogObjects(this);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    v16 = 0;
    v9 = "[SpatialMediaStatusComponent::publishUpdatesInApp] Entity of SpatialMediaStatusComponent is not in a scene";
    v10 = &v16;
    goto LABEL_15;
  }

  v6 = *(v5 + 288);
  if (!v6)
  {
    v8 = *re::spatialMediaLogObjects(0);
    if (!os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v9 = "[SpatialMediaStatusComponent::publishUpdatesInApp] Cannot find eventBus for the scene of SpatialMediaStatusComponent";
    v10 = buf;
    goto LABEL_15;
  }

  v7 = vmvn_s8(vceq_f32(this[5], this[4]));
  if ((vpmax_u32(v7, v7).u32[0] & 0x80000000) != 0)
  {
    v14 = this[4];
    if ((atomic_load_explicit(&qword_1EE1ADA80, memory_order_acquire) & 1) == 0)
    {
      v12 = v1;
      v13 = v6;
      v11 = __cxa_guard_acquire(&qword_1EE1ADA80);
      v1 = v12;
      v6 = v13;
      if (v11)
      {
        qword_1EE1ADA78 = re::EventBus::typeStringToId(("46RESpatialMediaImmersiveFrameSizeDidChangeEvent" & 0x7FFFFFFFFFFFFFFFLL), v12);
        __cxa_guard_release(&qword_1EE1ADA80);
        v1 = v12;
        v6 = v13;
      }
    }

    re::EventBus::publish(v6, v1, qword_1EE1ADA78, &v14, 8uLL, 0);
    this[5] = this[4];
    re::ecs2::Component::wasModified(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setBackingPlaneImmersiveParameters(void **this, float *a2)
{
  v2 = vabds_f32(*a2, *(this + 35));
  v3 = v2 > 0.00000011921;
  if (v2 > 0.00000011921)
  {
    *(this + 35) = *a2;
  }

  v4 = a2[1];
  if (vabds_f32(v4, *(this + 36)) > 0.00000011921)
  {
    *(this + 36) = v4;
    v3 = 1;
  }

  v5 = a2[2];
  if (vabds_f32(v5, *(this + 33)) > 0.00000011921)
  {
    *(this + 33) = v5;
    v3 = 1;
  }

  v6 = a2[4];
  v7 = *(this + 38);
  if (v6 != v7 && vabds_f32(v6, v7) >= (((fabsf(v6) + fabsf(v7)) + 1.0) * 0.00001) || (v8 = a2[5], v9 = *(this + 39), v8 != v9) && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001))
  {
    this[19] = *(a2 + 2);
    goto LABEL_14;
  }

  if (v3)
  {
LABEL_14:
    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setLoadingTextureBlend(void **this, float a2)
{
  if (vabds_f32(a2, *(this + 43)) > 0.00000011921)
  {
    v2 = 1.0;
    if (a2 <= 1.0)
    {
      v2 = a2;
    }

    if (v2 < 0.0)
    {
      v2 = 0.0;
    }

    *(this + 43) = v2;
    if (a2 > 0.0)
    {
      *(this + 176) = 1;
    }

    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setPortalParams(void **this, float *a2)
{
  v2 = *(this + 16);
  if ((*a2 == v2 || vabds_f32(*a2, v2) < (((fabsf(*a2) + fabsf(v2)) + 1.0) * 0.00001)) && ((v3 = a2[1], v4 = *(this + 17), v3 == v4) || vabds_f32(v3, v4) < (((fabsf(v3) + fabsf(v4)) + 1.0) * 0.00001)))
  {
    v5 = 0;
  }

  else
  {
    this[8] = *a2;
    v5 = 1;
  }

  v6 = a2[2];
  if (vabds_f32(v6, *(this + 18)) > 0.00000011921)
  {
    *(this + 18) = v6;
    v5 = 1;
  }

  v7 = a2[3];
  if (vabds_f32(v7, *(this + 19)) > 0.00000011921)
  {
    *(this + 19) = v7;
    v5 = 1;
  }

  v8 = a2[4];
  v9 = *(this + 20);
  if (v8 != v9 && vabds_f32(v8, v9) >= (((fabsf(v8) + fabsf(v9)) + 1.0) * 0.00001) || (v10 = a2[5], v11 = *(this + 21), v10 != v11) && vabds_f32(v10, v11) >= (((fabsf(v10) + fabsf(v11)) + 1.0) * 0.00001) || (v12 = a2[6], v13 = *(this + 22), v12 != v13) && vabds_f32(v12, v13) >= (((fabsf(v12) + fabsf(v13)) + 1.0) * 0.00001))
  {
    *(this + 5) = *(a2 + 1);
    v14 = a2[8];
    v15 = this + 12;
    if (vabds_f32(v14, *(this + 24)) <= 0.00000011921)
    {
      goto LABEL_22;
    }

LABEL_21:
    *v15 = v14;
    goto LABEL_22;
  }

  v14 = a2[8];
  v15 = this + 12;
  if (vabds_f32(v14, *(this + 24)) > 0.00000011921)
  {
    goto LABEL_21;
  }

  if (v5)
  {
LABEL_22:
    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(this);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setSpatialMediaLoadingTexture(void **a1, re::AssetHandle *a2)
{
  v4 = re::AssetHandle::assetInfo((a1 + 23));
  if (v4[10] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[10];
  }

  v6 = *(re::AssetHandle::assetInfo(a2) + 10);
  if (v6 == -1)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    re::AssetHandle::operator=((a1 + 23), a2);
    re::AssetHandle::loadAsync((a1 + 23));

    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(a1);
  }
}

void re::ecs2::SpatialMediaStatusComponent::setMixedSpillTextureAsset(void **a1, re::AssetHandle *a2)
{
  v4 = re::AssetHandle::assetInfo((a1 + 26));
  if (v4[10] == -1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4[10];
  }

  v6 = *(re::AssetHandle::assetInfo(a2) + 10);
  if (v6 == -1)
  {
    v6 = 0;
  }

  if (v5 != v6)
  {
    re::AssetHandle::operator=((a1 + 26), a2);

    re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(a1);
  }
}

void *re::ecs2::allocInfo_SpatialMediaStatusComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADA70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADA70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADA88, "SpatialMediaStatusComponent");
    __cxa_guard_release(&qword_1EE1ADA70);
  }

  return &unk_1EE1ADA88;
}

void re::ecs2::initInfo_SpatialMediaStatusComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v106[0] = 0xB986AC139C129F56;
  v106[1] = "SpatialMediaStatusComponent";
  if (v106[0])
  {
    if (v106[0])
    {
    }
  }

  *(this + 2) = v107;
  if ((atomic_load_explicit(&_MergedGlobals_324, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_324);
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
      qword_1EE1ADB18 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::ecs2::introspect_ImmersiveAnimationMode(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_immersiveAnimationMode";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ADB20 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_Vector2F(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "m_immersiveFrameSize";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ADB28 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_BOOL(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_renderingVideoSpatially";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x7000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1ADB30 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_BOOL(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_renderWithRaycasting";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x7100000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1ADB38 = v23;
      v24 = re::introspectionAllocator(v23);
      v25 = re::introspect_Vector2F(1);
      v26 = (*(*v24 + 32))(v24, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "m_portalParams.portalScale";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x4000000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1ADB40 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_float(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "m_portalParams.portalZOffset";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x4800000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1ADB48 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::introspect_float(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "m_portalParams.mediaScale";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x4C00000007;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1ADB50 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = re::introspect_Vector3F(1);
      v37 = (*(*v35 + 32))(v35, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "m_portalParams.mediaOffset";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x5000000008;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1ADB58 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_float(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "m_portalParams.immersiveFactor";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x6000000009;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1ADB60 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_float(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "m_loadingTextureBlend";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0xAC0000000ALL;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1ADB68 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_BOOL(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "m_loadingAnimationStarted";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0xB00000000BLL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1ADB70 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_float(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "m_currentHorizontalFOV";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x780000000CLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE1ADB78 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::introspect_float(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "m_portalModeHalfDisparityShift";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x740000000DLL;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE1ADB80 = v57;
      v58 = re::introspectionAllocator(v57);
      v60 = re::introspect_BOOL(1, v59);
      v61 = (*(*v58 + 32))(v58, 72, 8);
      *v61 = 1;
      *(v61 + 8) = "m_isBackingPlaneEnabled";
      *(v61 + 16) = v60;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0x800000000ELL;
      *(v61 + 40) = 0;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 0;
      qword_1EE1ADB88 = v61;
      v62 = re::introspectionAllocator(v61);
      v64 = re::introspect_float(1, v63);
      v65 = (*(*v62 + 32))(v62, 72, 8);
      *v65 = 1;
      *(v65 + 8) = "m_fallOffExp";
      *(v65 + 16) = v64;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0x840000000FLL;
      *(v65 + 40) = 0;
      *(v65 + 48) = 0;
      *(v65 + 56) = 0;
      *(v65 + 64) = 0;
      qword_1EE1ADB90 = v65;
      v66 = re::introspectionAllocator(v65);
      v68 = re::introspect_float(1, v67);
      v69 = (*(*v66 + 32))(v66, 72, 8);
      *v69 = 1;
      *(v69 + 8) = "m_backingPlaneBlendStartPortal";
      *(v69 + 16) = v68;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0x8800000010;
      *(v69 + 40) = 0;
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      qword_1EE1ADB98 = v69;
      v70 = re::introspectionAllocator(v69);
      v72 = re::introspect_float(1, v71);
      v73 = (*(*v70 + 32))(v70, 72, 8);
      *v73 = 1;
      *(v73 + 8) = "m_backingPlaneBlendStartImmersive";
      *(v73 + 16) = v72;
      *(v73 + 24) = 0;
      *(v73 + 32) = 0x8C00000011;
      *(v73 + 40) = 0;
      *(v73 + 48) = 0;
      *(v73 + 56) = 0;
      *(v73 + 64) = 0;
      qword_1EE1ADBA0 = v73;
      v74 = re::introspectionAllocator(v73);
      v76 = re::introspect_float(1, v75);
      v77 = (*(*v74 + 32))(v74, 72, 8);
      *v77 = 1;
      *(v77 + 8) = "m_backingPlaneBlendEnd";
      *(v77 + 16) = v76;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0x9000000012;
      *(v77 + 40) = 0;
      *(v77 + 48) = 0;
      *(v77 + 56) = 0;
      *(v77 + 64) = 0;
      qword_1EE1ADBA8 = v77;
      v78 = re::introspectionAllocator(v77);
      v79 = re::introspect_Vector2F(1);
      v80 = (*(*v78 + 32))(v78, 72, 8);
      *v80 = 1;
      *(v80 + 8) = "m_backingPlaneBlendEaseSlopeE";
      *(v80 + 16) = v79;
      *(v80 + 24) = 0;
      *(v80 + 32) = 0x9800000013;
      *(v80 + 40) = 0;
      *(v80 + 48) = 0;
      *(v80 + 56) = 0;
      *(v80 + 64) = 0;
      qword_1EE1ADBB0 = v80;
      v81 = re::introspectionAllocator(v80);
      v83 = re::introspect_BOOL(1, v82);
      v84 = (*(*v81 + 32))(v81, 72, 8);
      *v84 = 1;
      *(v84 + 8) = "m_isInnerGlowEnabled";
      *(v84 + 16) = v83;
      *(v84 + 24) = 0;
      *(v84 + 32) = 0xA000000014;
      *(v84 + 40) = 0;
      *(v84 + 48) = 0;
      *(v84 + 56) = 0;
      *(v84 + 64) = 0;
      qword_1EE1ADBB8 = v84;
      v85 = re::introspectionAllocator(v84);
      v87 = re::introspect_float(1, v86);
      v88 = (*(*v85 + 32))(v85, 72, 8);
      *v88 = 1;
      *(v88 + 8) = "m_innerGlowStart";
      *(v88 + 16) = v87;
      *(v88 + 24) = 0;
      *(v88 + 32) = 0xA400000015;
      *(v88 + 40) = 0;
      *(v88 + 48) = 0;
      *(v88 + 56) = 0;
      *(v88 + 64) = 0;
      qword_1EE1ADBC0 = v88;
      v89 = re::introspectionAllocator(v88);
      v91 = re::introspect_float(1, v90);
      v92 = (*(*v89 + 32))(v89, 72, 8);
      *v92 = 1;
      *(v92 + 8) = "m_innerGlowAmplitudeMultiplier";
      *(v92 + 16) = v91;
      *(v92 + 24) = 0;
      *(v92 + 32) = 0xA800000016;
      *(v92 + 40) = 0;
      *(v92 + 48) = 0;
      *(v92 + 56) = 0;
      *(v92 + 64) = 0;
      qword_1EE1ADBC8 = v92;
      v93 = re::introspectionAllocator(v92);
      v95 = re::introspect_float(1, v94);
      v96 = (*(*v93 + 32))(v93, 72, 8);
      *v96 = 1;
      *(v96 + 8) = "m_currentStereoBaseline";
      *(v96 + 16) = v95;
      *(v96 + 24) = 0;
      *(v96 + 32) = 0x7C00000017;
      *(v96 + 40) = 0;
      *(v96 + 48) = 0;
      *(v96 + 56) = 0;
      *(v96 + 64) = 0;
      qword_1EE1ADBD0 = v96;
      v97 = re::introspectionAllocator(v96);
      v99 = re::introspect_AssetHandle(1, v98);
      v100 = (*(*v97 + 32))(v97, 72, 8);
      *v100 = 1;
      *(v100 + 8) = "m_spatialMediaLoadingTextureAsset";
      *(v100 + 16) = v99;
      *(v100 + 24) = 0;
      *(v100 + 32) = 0xB80000001ALL;
      *(v100 + 40) = 0;
      *(v100 + 48) = 0;
      *(v100 + 56) = 0;
      *(v100 + 64) = 0;
      qword_1EE1ADBD8 = v100;
      v101 = re::introspectionAllocator(v100);
      v103 = re::introspect_BOOL(1, v102);
      v104 = (*(*v101 + 32))(v101, 72, 8);
      *v104 = 1;
      *(v104 + 8) = "m_spatialMediaReady";
      *(v104 + 16) = v103;
      *(v104 + 24) = 0;
      *(v104 + 32) = 0xE80000001CLL;
      *(v104 + 40) = 0;
      *(v104 + 48) = 0;
      *(v104 + 56) = 0;
      *(v104 + 64) = 0;
      qword_1EE1ADBE0 = v104;
      __cxa_guard_release(&_MergedGlobals_324);
    }
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 26;
  *(this + 8) = &qword_1EE1ADB18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialMediaStatusComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SpatialMediaStatusComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v105 = v107;
}

void re::ecs2::SpatialMediaStatusComponent::~SpatialMediaStatusComponent(re::ecs2::SpatialMediaStatusComponent *this)
{
  re::ecs2::SpatialMediaStatusComponent::~SpatialMediaStatusComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CF5820;
  v2 = (this + 184);
  re::AssetHandle::~AssetHandle((this + 208));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227SpatialMediaStatusComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

re::ecs2::LoadTraceSystem *re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceSystem *this, re::ecs2::LoadTraceComponent *a2, re::ecs2::Entity *a3)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v8 = this;
  if (this)
  {
    if (a2)
    {
      v9[0] = &unk_1F5CF59E8;
      v9[1] = &v8;
      v9[3] = v9;
      re::ecs2::ComponentHelper::findAssetHandles(a2, v9);
      this = std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v9);
      v5 = *(a2 + 43);
      if (v5)
      {
        v6 = *(a2 + 45);
        v7 = 8 * v5;
        do
        {
          if (*v6)
          {
            this = re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(v8, *v6, v4);
          }

          ++v6;
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return this;
}

uint64_t re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(uint64_t a1, void *a2, _DWORD *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    result = re::HashTable<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*,unsigned int,re::Hash<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,re::EqualTo<re::Pair<re::DynamicArray<re::AABB>,re::DynamicArray<re::ecs2::ShadowClusterComponent *>,true> const*>,true,false>::allocEntry(a1, v9, v8);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::LoadTraceSystem::willAddSystemToECSService(re::ecs2::LoadTraceSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  *(this + 35) = result;
  if (result)
  {
    if (*(result + 2234) == 1)
    {
      v36 = re::MeshAsset::assetType(result);
      v35 = 1;
      v4 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::TextureAsset::assetType(v4);
      v35 = 2;
      v5 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RenderGraphAsset::assetType(v5);
      v35 = 3;
      v6 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::SceneAsset::assetType(v6);
      v35 = 4;
      v7 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::ShaderLibraryAsset::assetType(v7);
      v35 = 5;
      v8 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::ShaderGraphAsset::assetType(v8);
      v35 = 6;
      v9 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::MeshDeformationAsset::assetType(v9);
      v35 = 7;
      v10 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RenderGraphEmitterAsset::assetType(v10);
      v35 = 8;
      v11 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::FontAsset::assetType(v11);
      v35 = 9;
      v12 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::ImageBasedLightAsset::assetType(v12);
      v35 = 10;
      v13 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::FontLayoutAsset::assetType(v13);
      v35 = 11;
      v14 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::CGPerspectiveContextAsset::assetType(v14);
      v35 = 12;
      v15 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VideoAsset::assetType(v15);
      v35 = 13;
      v16 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VideoFileAsset::assetType(v16);
      v35 = 14;
      v17 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VFXAsset::assetType(v17);
      v35 = 15;
      v18 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::VertexCacheAsset::assetType(v18);
      v35 = 16;
      v19 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::MaterialDefinitionAsset::assetType(v19);
      v35 = 17;
      v20 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::MaterialAsset::assetType(v20);
      v35 = 18;
      v21 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AcousticMeshAsset::assetType(v21);
      v35 = 19;
      v22 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AnimationLibraryAsset::assetType(v22);
      v35 = 20;
      v23 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AudioFileAsset::assetType(v23);
      v35 = 21;
      v24 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AudioFileGroupAsset::assetType(v24);
      v35 = 22;
      v25 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::AudioGeneratorAsset::assetType(v25);
      v35 = 23;
      v26 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::BlendShapeWeightsDefinitionAsset::assetType(v26);
      v35 = 24;
      v27 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::IKRigAsset::assetType(v27);
      v35 = 25;
      v28 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RigAsset::assetType(v28);
      v35 = 26;
      v29 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::RigGraphAsset::assetType(v29);
      v35 = 27;
      v30 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::SkeletalPoseDefinitionAsset::assetType(v30);
      v35 = 28;
      v31 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::SkeletonAsset::assetType(v31);
      v35 = 29;
      v32 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::StateMachineAsset::assetType(v32);
      v35 = 30;
      v33 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::StateParameterBlackboardAsset::assetType(v33);
      v35 = 31;
      v34 = re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
      v36 = re::TimelineAsset::assetType(v34);
      v35 = 32;
      return re::HashTable<re::AssetType const*,unsigned int,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::addNew(this + 232, &v36, &v35);
    }
  }

  return result;
}

void *re::ecs2::LoadTraceSystem::willAddSceneToECSService(void *this, re::EventBus **a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v2 = this[35];
  if (v2 && *(v2 + 2234) == 1)
  {
    v3 = a2[36];
    if (v3)
    {
      v4 = this;
      v17 = re::globalAllocators(this)[2];
      v5 = (*(*v17 + 32))(v17, 32, 0);
      *v5 = &unk_1F5CF5938;
      v5[1] = v4;
      v5[2] = re::ecs2::LoadTraceSystem::onEntityAdded;
      v5[3] = 0;
      v18 = v5;
      *&v11 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(v3, 0, v16, 0, 0);
      *(&v11 + 1) = v6;
      v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v16);
      v14 = re::globalAllocators(v7)[2];
      v8 = (*(*v14 + 32))(v14, 32, 0);
      *v8 = &unk_1F5CF5990;
      v8[1] = v4;
      v8[2] = re::ecs2::LoadTraceSystem::onEntityWillRemove;
      v8[3] = 0;
      v15 = v8;
      *&v10 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v3, 0, v13, 0, 0);
      *(&v10 + 1) = v9;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v13);
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew((v4 + 36), &v12, &v11);
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew((v4 + 42), &v12, &v10);
    }
  }

  return this;
}

uint64_t re::ecs2::LoadTraceSystem::onEntityAdded(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    if (a2)
    {
      if (*(v2 + 2234))
      {
        v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v5)
        {
          v6 = v5;
          re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(v5);
          re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear(v6 + 136);
          re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(v6, a2, v7);
          re::ecs2::LoadTraceComponent::updateTrackedAssets(v6, 2020, 2024, a1 + 232);
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::LoadTraceSystem::onEntityWillRemove(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 280);
  if (v2)
  {
    if (a2)
    {
      if (*(v2 + 2234))
      {
        v3 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v3)
        {
          re::ecs2::LoadTraceComponent::emitLoadTraceSignpost(v3);
        }
      }
    }
  }

  return 0;
}

BOOL re::ecs2::LoadTraceSystem::willRemoveSceneFromECSService(_BOOL8 this, re::ecs2::Scene *a2)
{
  v7 = a2;
  v2 = *(this + 280);
  if (v2 && *(v2 + 2234) == 1)
  {
    v3 = *(a2 + 36);
    if (v3)
    {
      v4 = this;
      v5 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 288, &v7);
      re::EventBus::unsubscribe(v3, *v5, *(v5 + 8));
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v4 + 288, &v7);
      v6 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](v4 + 336, &v7);
      re::EventBus::unsubscribe(v3, *v6, *(v6 + 8));
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v4 + 336, &v7);
    }
  }

  return this;
}

void re::ecs2::LoadTraceSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 280);
  if (v3 && *(v3 + 2234) == 1)
  {
    v6 = *(a1 + 264);
    if (v6)
    {
      v7 = 0;
      v8 = *(a1 + 248);
      while (1)
      {
        v9 = *v8;
        v8 += 8;
        if (v9 < 0)
        {
          break;
        }

        if (v6 == ++v7)
        {
          LODWORD(v7) = *(a1 + 264);
          break;
        }
      }
    }

    else
    {
      LODWORD(v7) = 0;
    }

    if (v6 != v7)
    {
      v10 = v7;
      while (1)
      {
        v11 = *(a1 + 248);
        if (v6 <= v10 + 1)
        {
          v12 = v10 + 1;
        }

        else
        {
          v12 = v6;
        }

        while (v12 - 1 != v10)
        {
          if ((*(v11 + 32 * ++v10) & 0x80000000) != 0)
          {
            goto LABEL_18;
          }
        }

        v10 = v12;
LABEL_18:
        if (v10 == v6)
        {
          if ((re::internal::enableSignposts(0, 0) & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_42;
        }

        v13 = v6 <= v10 + 1 ? v10 + 1 : v6;
        v14 = v10;
        while (v13 - 1 != v14)
        {
          if ((*(v11 + 32 * ++v14) & 0x80000000) != 0)
          {
            goto LABEL_27;
          }
        }

        v14 = v13;
LABEL_27:
        if (v14 == v6)
        {
          break;
        }

        if (re::internal::enableSignposts(0, 0))
        {
          kdebug_trace();
        }

        LODWORD(v6) = *(a1 + 264);
        if (v6 <= v14 + 1)
        {
          v10 = v14 + 1;
        }

        else
        {
          v10 = *(a1 + 264);
        }

        v15 = v14;
        while (v10 - 1 != v15)
        {
          if ((*(*(a1 + 248) + 32 * ++v15) & 0x80000000) != 0)
          {
            v10 = v15;
            break;
          }
        }

        if (v6 == v10)
        {
          goto LABEL_43;
        }
      }

      if ((re::internal::enableSignposts(0, 0) & 1) == 0)
      {
        goto LABEL_43;
      }

LABEL_42:
      kdebug_trace();
    }

LABEL_43:
    v16 = *(a3 + 200);
    if (v16)
    {
      v17 = *(a3 + 216);
      v18 = v17 + 8 * v16;
      do
      {
        v19 = re::ecs2::SceneComponentTable::get((*v17 + 200), re::ecs2::ComponentImpl<re::ecs2::LoadTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v19)
        {
          v20 = *(v19 + 384);
          if (v20)
          {
            v21 = *(v19 + 400);
            if (re::ecs2::LoadTraceComponent::log(void)::onceToken != -1)
            {
              dispatch_once(&re::ecs2::LoadTraceComponent::log(void)::onceToken, &__block_literal_global_22);
            }

            v22 = re::ecs2::LoadTraceComponent::log(void)::log;
            if (os_log_type_enabled(re::ecs2::LoadTraceComponent::log(void)::log, OS_LOG_TYPE_DEBUG))
            {
              *buf = 67109120;
              v27 = v20;
              _os_log_debug_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_DEBUG, "Load trace components in scene: %d", buf, 8u);
            }

            v23 = 8 * v20;
            do
            {
              v24 = *v21++;
              re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::clear((v24 + 17));
              re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(v24, v24[2], v25);
              re::ecs2::LoadTraceComponent::updateTrackedAssets(v24, 2020, 2024, a1 + 232);
              re::ecs2::LoadTraceComponent::checkAssetLoadStates(v24, 2021, 2022, 2023, a1 + 232);
              v23 -= 8;
            }

            while (v23);
          }
        }

        v17 += 8;
      }

      while (v17 != v18);
    }
  }
}

void *re::ecs2::allocInfo_LoadTraceSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_325, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_325))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADBF0, "LoadTraceSystem");
    __cxa_guard_release(&_MergedGlobals_325);
  }

  return &unk_1EE1ADBF0;
}

void re::ecs2::initInfo_LoadTraceSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x97E86156DCE06DDCLL;
  v6[1] = "LoadTraceSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x18000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_LoadTraceSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LoadTraceSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LoadTraceSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::LoadTraceSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::LoadTraceSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LoadTraceSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LoadTraceSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::LoadTraceSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 29);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::LoadTraceSystem>(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 29);

  re::ecs2::System::~System(a1);
}

void re::ecs2::LoadTraceSystem::~LoadTraceSystem(re::ecs2::LoadTraceSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 29);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 42);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 36);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 29);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5938;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5938;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5990;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::LoadTraceSystem,REEventHandlerResult (re::ecs2::LoadTraceSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5990;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t std::__function::__func<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0,std::allocator<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF59E8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0,std::allocator<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0>,void ()(re::AssetHandle *)>::operator()(uint64_t a1, const re::AssetHandle **a2)
{
  v2 = *a2;
  if (v2)
  {
    if (*(v2 + 1))
    {
      v3 = **(a1 + 8);
      re::AssetHandle::AssetHandle(v4, v2);
      re::HashSetBase<re::AssetHandle,re::AssetHandle,re::internal::ValueAsKey<re::AssetHandle>,re::Hash<re::AssetHandle>,re::EqualTo<re::AssetHandle>,true,false>::add(v3 + 136, v4);
      re::AssetHandle::~AssetHandle(v4);
    }
  }
}

uint64_t std::__function::__func<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0,std::allocator<re::ecs2::LoadTraceSystem::findAssetHandlesRecursively(re::ecs2::LoadTraceComponent *,re::ecs2::Entity *)::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

double re::make::shared::unsafelyInplace<re::ecs2::LoadTraceSystem>(_OWORD *a1)
{
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  v1 = re::ecs2::System::System(a1, 1);
  *v1 = &unk_1F5CF58A8;
  *(v1 + 224) = 2;
  result = 0.0;
  *(v1 + 232) = 0u;
  *(v1 + 248) = 0u;
  *(v1 + 264) = 0;
  *(v1 + 268) = 0x7FFFFFFFLL;
  *(v1 + 280) = 0u;
  *(v1 + 296) = 0u;
  *(v1 + 308) = 0u;
  *(v1 + 324) = 0x7FFFFFFFLL;
  *(v1 + 336) = 0u;
  *(v1 + 352) = 0u;
  *(v1 + 368) = 0;
  *(v1 + 372) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_ClippingService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_326, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_326))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADC88, "ClippingService");
    __cxa_guard_release(&_MergedGlobals_326);
  }

  return &unk_1EE1ADC88;
}

void re::ecs2::initInfo_ClippingService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xC1FF1FD5603D36E6;
  v6[1] = "ClippingService";
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
  *(this + 8) = &re::ecs2::initInfo_ClippingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t *re::ecs2::snapshotMapFields<re::snapshot::DecoderRaw>(re::snapshot::BufferDecoder *a1, void *a2)
{
  re::snapshot::operator>><re::snapshot::DecoderRaw,re::AABB>(a1, a2 + 4);
  re::snapshot::operator>><re::snapshot::DecoderRaw,re::AABB>(a1, a2 + 9);

  return re::snapshot::operator>><re::snapshot::DecoderRaw,BOOL>(a1, a2 + 14);
}

BOOL re::ecs2::snapshotMapFields<re::snapshot::DecoderOPACK>(const char **a1, void *a2)
{
  re::snapshot::DecoderOPACK::field<1,re::DynamicArray<re::AABB>>(a1, a2 + 4);
  re::snapshot::DecoderOPACK::field<2,re::DynamicArray<re::AABB>>(a1, a2 + 9);

  return re::snapshot::DecoderOPACK::field<3,re::DynamicArray<BOOL>>(a1, a2 + 14);
}

BOOL re::snapshot::DecoderOPACK::field<1,re::DynamicArray<re::AABB>>(const char **a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<1>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::AABB>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<2,re::DynamicArray<re::AABB>>(const char **a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<2>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,re::AABB>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

BOOL re::snapshot::DecoderOPACK::field<3,re::DynamicArray<BOOL>>(re::snapshot::BufferDecoder *a1, void *a2)
{
  v4 = re::snapshot::DecoderOPACK::beginField<3>(a1);
  if (v4)
  {
    re::snapshot::operator>><re::snapshot::DecoderOPACK,BOOL>(a1, a2);
    re::snapshot::DecoderOPACK::endField(a1);
  }

  return v4;
}

void *re::ecs2::allocInfo_InstanceGroupBoundsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_327, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_327))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADD38, "InstanceGroupBoundsComponent");
    __cxa_guard_release(&_MergedGlobals_327);
  }

  return &unk_1EE1ADD38;
}

void re::ecs2::initInfo_InstanceGroupBoundsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xF8C3A6C6E751AB3CLL;
  v10[1] = "InstanceGroupBoundsComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1ADD28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1ADD28);
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
      qword_1EE1ADD20 = v8;
      __cxa_guard_release(&qword_1EE1ADD28);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1ADD20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InstanceGroupBoundsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228InstanceGroupBoundsComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::ecs2::allocInfo_InstanceGroupBoundsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADD30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADD30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADDC8, "InstanceGroupBoundsSystem");
    __cxa_guard_release(&qword_1EE1ADD30);
  }

  return &unk_1EE1ADDC8;
}

void re::ecs2::initInfo_InstanceGroupBoundsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x9195F305A9F2CA5CLL;
  v6[1] = "InstanceGroupBoundsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x25000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_InstanceGroupBoundsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::InstanceGroupBoundsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::InstanceGroupBoundsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InstanceGroupBoundsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::InstanceGroupBoundsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[58] = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a3 + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::InstanceGroupBoundsSystem>(uint64_t *a1)
{
  a1[58] = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a1 + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

void re::ecs2::InstanceGroupBoundsSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[54];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[54];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 35, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[36] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 49));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[54];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[54];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 49), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 28), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 49), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 28));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

uint64_t re::ecs2::InstanceGroupBoundsComponentStateImpl::directResourceDidUpdateEvent(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(a3 + 8) + (*a3 << 6) + (*a3 >> 2) - 0x61C8864680B583E9) ^ *a3;
  v6 = *(a1 + 48);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 32) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v7, v5, a3, a3);
    ++*(a1 + 64);
    return 0;
  }

  v9 = *(a1 + 40);
  while (uuid_compare((v9 + 32 * v8 + 12), a3))
  {
    v9 = *(a1 + 40);
    v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

float32x4_t re::ecs2::InstanceGroupBoundsComponent::computeObjectBoundsUncached@<Q0>(re::ecs2::InstanceGroupBoundsComponent *this@<X0>, float32x4_t *a2@<X8>)
{
  v45 = *MEMORY[0x1E69E9840];
  v3 = *(this + 2);
  v4 = *(v3 + 192);
  if (v4 && (v6 = re::AssetHandle::loadedAsset<re::MeshAsset>((v4 + 32))) != 0 && (v7 = v6, (v8 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0))
  {
    v9 = v8;
    v10 = *(v8 + 48);
    if (v10)
    {
      v11 = 0;
      v12 = 0;
      v13.i64[0] = 0x7F0000007FLL;
      v13.i64[1] = 0x7F0000007FLL;
      v36 = vnegq_f32(v13);
      v37 = v13;
      v35 = v36;
      while (1)
      {
        v14 = *(v9 + 48);
        if (v14 <= v12)
        {
          v38[1] = 0;
          v43 = 0u;
          v44 = 0u;
          v41 = 0u;
          v42 = 0u;
          v40 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v39 = 136315906;
          *&v39[4] = "operator[]";
          *&v39[12] = 1024;
          *&v39[14] = 789;
          *&v39[18] = 2048;
          *&v39[20] = v12;
          *&v39[28] = 2048;
          *&v39[30] = v14;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v15 = *(*(v9 + 64) + 8 * v12);
        v38[0] = v15;
        if (v15)
        {
          if (v12 < *(this + 16) && (*(*(this + 18) + v12) & 1) != 0)
          {
            if (v12 < *(this + 11))
            {
              v16 = (*(this + 13) + v11);
              v17 = v36;
              v17.i32[3] = 0;
              v18 = *v16;
              v19 = v16[1];
              v18.i32[3] = 0;
              v20 = vminnmq_f32(v17, v18);
              v21 = v37;
              v21.i32[3] = 0;
              v19.i32[3] = 0;
              v36 = v20;
              v37 = vmaxnmq_f32(v21, v19);
            }
          }

          else
          {
            v22.i64[0] = 0x7F0000007FLL;
            v22.i64[1] = 0x7F0000007FLL;
            v40 = v35;
            v41 = v22;
            if (v12 < *(v7 + 1072))
            {
              v23 = *(*(v7 + 1080) + 8 * v12);
              v24 = *(v23 + 432);
              *v39 = *(v23 + 416);
              *&v39[16] = v24;
              {
                v34.i64[0] = 0x7F0000007FLL;
                v34.i64[1] = 0x7F0000007FLL;
                *a2 = vnegq_f32(v34);
                a2[1] = v34;

                return result;
              }

              v25 = v36;
              v25.i32[3] = 0;
              v26 = v40;
              v27 = v41;
              v26.i32[3] = 0;
              v28 = vminnmq_f32(v25, v26);
              v29 = v37;
              v29.i32[3] = 0;
              v27.i32[3] = 0;
              v36 = v28;
              v37 = vmaxnmq_f32(v29, v27);
              v15 = v38[0];
            }
          }
        }

        ++v12;
        v11 += 32;
        if (v10 == v12)
        {
          goto LABEL_19;
        }
      }
    }

    v32.i64[0] = 0x7F0000007FLL;
    v32.i64[1] = 0x7F0000007FLL;
    v33.i64[0] = 0x7F0000007FLL;
    v33.i64[1] = 0x7F0000007FLL;
    v36 = vnegq_f32(v32);
    v37 = v33;
LABEL_19:
    v31 = v36;
    result = v37;
  }

  else
  {
    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    v31 = vnegq_f32(result);
  }

  *a2 = v31;
  a2[1] = result;
  return result;
}

uint64_t re::ecs2::anonymous namespace::computeInstancedBoundsFromDirectBuffer(uint64_t a1, uint64_t a2, float32x4_t *a3)
{
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x5012000000;
  v12 = __Block_byref_object_copy__12;
  v13 = __Block_byref_object_dispose__12;
  v14 = "";
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  v15 = vnegq_f32(v4);
  v16 = v4;
  *a3 = v15;
  a3[1] = v4;
  DRBufferRead();
  v5 = 0;
  v6 = v18;
  if ((v18[3] & 1) == 0)
  {
    v7 = v10[4];
    *a3 = v10[3];
    a3[1] = v7;
    v5 = *(v6 + 24) ^ 1;
  }

  _Block_object_dispose(&v9, 8);
  _Block_object_dispose(&v17, 8);
  return v5 & 1;
}

BOOL re::ecs2::InstanceGroupBoundsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v44 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(uu2, a5, 0);
  v28 = a4;
  v29 = *uu2;
  v30 = *&uu2[8];
  v27 = a5;
  if (*uu2 != a5 || *&uu2[8] != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v28);
      v11 = *(v10 + 16);
      v12 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v12)
      {
        v13 = v12;
        v14 = *(v12 + 48);
        re::DynamicArray<re::AABB>::resize((v10 + 72), v14);
        *(v10 + 48) = 0;
        ++*(v10 + 56);
        if (v14)
        {
          for (i = 0; i != v14; ++i)
          {
            v16 = *(v13 + 48);
            if (v16 <= i)
            {
              v31 = 0;
              v42 = 0u;
              v43 = 0u;
              v40 = 0u;
              v41 = 0u;
              *uu2 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v32 = 136315906;
              *&v32[4] = "operator[]";
              v33 = 1024;
              v34 = 789;
              v35 = 2048;
              v36 = i;
              v37 = 2048;
              v38 = v16;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

            *v32 = *(*(v13 + 64) + 8 * i);
            re::DirectBuffer::getResourceId(v32, uu2);
            v17 = (*&uu2[8] + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
            v18 = *(a1 + 48);
            if (v18)
            {
              v19 = v17 % v18;
              v20 = *(*(a1 + 32) + 4 * (v17 % v18));
              if (v20 != 0x7FFFFFFF)
              {
                v21 = *(a1 + 40);
                while (uuid_compare((v21 + 32 * v20 + 12), uu2))
                {
                  v21 = *(a1 + 40);
                  v20 = *(v21 + 32 * v20 + 8) & 0x7FFFFFFF;
                  if (v20 == 0x7FFFFFFF)
                  {
                    goto LABEL_16;
                  }
                }

                goto LABEL_17;
              }
            }

            else
            {
              LODWORD(v19) = 0;
            }

LABEL_16:
            re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v19, v17, uu2, uu2);
            ++*(a1 + 64);
LABEL_17:
          }
        }

        v22 = v28;
        v23 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v29);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v22, v23, *(a3 + 48));
      }

      else
      {
        v24 = v28;
        v25 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v29);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v24, v25, *(a3 + 32));
        re::ecs2::EntityComponentCollection::remove((v11 + 48), v10);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v29);
    }

    while (v29 != v27 || v30 != 0xFFFF || HIWORD(v30) != 0xFFFF);
  }

  return *(v27 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::InstanceGroupBoundsComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a5;
  v91 = *MEMORY[0x1E69E9840];
  v8 = *(*(*(a1 + 96) + 584) + 144);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&uu2, a5, 0);
  v77 = a4;
  v78 = uu2;
  v79 = DWORD2(uu2);
  if (uu2 != v5 || DWORD2(uu2) != 0xFFFFFFFFLL)
  {
    v10 = 0x94D049BB133111EBLL;
    v11 = (v8 + 8);
    if (!v8)
    {
      v11 = 0;
    }

    val = v11;
    v12.i64[0] = 0x7F0000007FLL;
    v12.i64[1] = 0x7F0000007FLL;
    v76 = vnegq_f32(v12);
    v73 = v5;
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v77);
      v14 = *(v13 + 16);
      v15 = v14[24];
      if (v15)
      {
        v16 = v13;
        v17 = re::AssetHandle::loadedAsset<re::MeshAsset>((v15 + 32));
        if (v17)
        {
          v18 = v17;
          v74 = v14[27];
          v19 = re::ecs2::EntityComponentCollection::get((v14 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (!v19)
          {
            re::ecs2::EntityComponentCollection::remove((v14 + 6), v16);
          }

          v20 = *(v19 + 48);
          if (v20)
          {
            v21 = 0;
            v75 = 0;
            for (i = 0; i != v20; ++i)
            {
              v23 = *(v19 + 48);
              if (v23 <= i)
              {
                location[0] = 0;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                uu2 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v85 = 136315906;
                *&v85[4] = "operator[]";
                *&v85[12] = 1024;
                *&v85[14] = 789;
                *&v85[18] = 2048;
                *&v85[20] = i;
                *&v85[28] = 2048;
                *&v85[30] = v23;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_77:
                v84 = 0;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                uu2 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v85 = 136315906;
                *&v85[4] = "operator[]";
                *&v85[12] = 1024;
                *&v85[14] = 789;
                *&v85[18] = 2048;
                *&v85[20] = i;
                *&v85[28] = 2048;
                *&v85[30] = v10;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
LABEL_78:
                v84 = 0;
                v89 = 0u;
                v90 = 0u;
                v87 = 0u;
                v88 = 0u;
                uu2 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v85 = 136315906;
                *&v85[4] = "operator[]";
                *&v85[12] = 1024;
                *&v85[14] = 789;
                *&v85[18] = 2048;
                *&v85[20] = i;
                *&v85[28] = 2048;
                *&v85[30] = v10;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }

              v83 = *(*(v19 + 64) + 8 * i);
              if (v83)
              {
                re::DirectBuffer::getResourceId(&v83, &uu2);
                v24 = re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(a1 + 24, &uu2);
                v25 = i >= *(v16 + 128) ? 1 : *(*(v16 + 144) + i) ^ 1;
                if (i >= *(v16 + 88))
                {
                  v27 = 1;
                }

                else
                {
                  v26 = vcgtq_f32(*(*(v16 + 104) + v21), *(*(v16 + 104) + v21 + 16));
                  v26.i32[3] = v26.i32[2];
                  v27 = vmaxvq_u32(v26) >> 31;
                }

                if (v25 & (v24 | v27))
                {
                  *&v28 = 0x7F0000007FLL;
                  *(&v28 + 1) = 0x7F0000007FLL;
                  *location = v76;
                  v82 = v28;
                  if (i < v18[134])
                  {
                    v29 = v10;
                    v30 = *(v18[135] + 8 * i);
                    v31 = *(v30 + 432);
                    v80[0] = *(v30 + 416);
                    v80[1] = v31;
                    v10 = *(v16 + 88);
                    if (i >= v10)
                    {
                      re::DynamicArray<re::AABB>::resize((v16 + 72), i + 1);
                      v10 = *(v16 + 88);
                    }

                    if (v32)
                    {
                      if (v10 <= i)
                      {
                        goto LABEL_77;
                      }

                      v33 = (*(v16 + 104) + v21);
                      *v33 = *location;
                      v33[1] = v82;
                      re::ecs2::Component::markDirty(v16);
                      if (v74)
                      {
                        re::ecs2::NetworkComponent::markDirty(v74, v16);
                      }

                      v75 = 1;
                    }

                    else
                    {
                      if (v10 <= i)
                      {
                        goto LABEL_78;
                      }

                      v34 = (*(v16 + 104) + v21);
                      v35.i64[0] = 0x7F0000007FLL;
                      v35.i64[1] = 0x7F0000007FLL;
                      *v34 = v76;
                      v34[1] = v35;
                    }

                    v10 = v29;
                  }
                }
              }

              v21 += 32;
            }

            v5 = v73;
            if (v75)
            {
              goto LABEL_38;
            }
          }

          if (!*(v16 + 48) || !*(v16 + 160))
          {
LABEL_38:
            *(v16 + 48) = 0;
            ++*(v16 + 56);
            LODWORD(v88) = 0;
            uu2 = 0u;
            v87 = 0u;
            *(&v88 + 4) = 0x7FFFFFFFLL;
            v36 = v18[79];
            v37 = v18[76];
            if (v37)
            {
              v38 = v18[78];
              v39 = &v38[v37];
              do
              {
                *&v80[0] = *v38;
                if (re::HashTable<re::DataArrayHandle<re::MeshModel>,re::Range,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::tryGet((v18 + 148), v80))
                {
                  v40.i64[0] = 0x7F0000007FLL;
                  v40.i64[1] = 0x7F0000007FLL;
                  *v85 = v76;
                  *&v85[16] = v40;
                  v41 = *(v16 + 88);
                  if (v41)
                  {
                    v42 = vnegq_f32(v40);
                    v43 = (*(v16 + 104) + 16);
                    do
                    {
                      v44 = v43[-1];
                      v45 = *v43;
                      v42.i32[3] = 0;
                      v44.i32[3] = 0;
                      v40.i32[3] = 0;
                      v45.i32[3] = 0;
                      v42 = vminnmq_f32(v42, v44);
                      v40 = vmaxnmq_f32(v40, v45);
                      *v85 = v42;
                      *&v85[16] = v40;
                      v43 += 2;
                      --v41;
                    }

                    while (v41);
                  }

                  re::DynamicArray<re::AABB>::add((v16 + 32), v85);
                  v46 = *(v16 + 48);
                  location[0] = 0;
                  location[1] = 0;
                  *&v82 = 0;
                  v47 = ((0xBF58476D1CE4E5B9 * (v80[0] & 0xFFFFFF)) ^ ((0xBF58476D1CE4E5B9 * (v80[0] & 0xFFFFFF)) >> 27)) * v10;
                  re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(&uu2, v80, v47 ^ (v47 >> 31), location);
                  if (HIDWORD(location[1]) == 0x7FFFFFFF)
                  {
                    v48 = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(&uu2, location[1], location[0]);
                    *(v48 + 8) = *&v80[0];
                    *(v48 + 16) = v46 - 1;
                    ++DWORD2(v88);
                  }
                }

                else
                {
                  *&v49 = 0x7F0000007FLL;
                  *(&v49 + 1) = 0x7F0000007FLL;
                  *v85 = v76;
                  *&v85[16] = v49;
                  re::DynamicArray<re::AABB>::add((v16 + 32), v85);
                }

                ++v38;
              }

              while (v38 != v39);
            }

            inited = objc_initWeak(location, val);
            v51 = re::globalAllocators(inited);
            v52 = (*(*v51[2] + 32))(v51[2], 192, 8);
            *(v52 + 128) = 0u;
            *(v52 + 144) = 0u;
            *(v52 + 96) = 0u;
            *(v52 + 112) = 0u;
            *v52 = 0u;
            *(v52 + 16) = 0u;
            *(v52 + 32) = 0u;
            *(v52 + 48) = 0u;
            *(v52 + 64) = 0u;
            *(v52 + 80) = 0u;
            *(v52 + 160) = 0u;
            *(v52 + 176) = 0u;
            *(v52 + 80) = 1;
            *(v52 + 88) = 0;
            *(v52 + 96) = 0;
            *(v52 + 136) = 0u;
            *(v52 + 120) = 0u;
            *(v52 + 152) = 1;
            *(v52 + 160) = 0;
            *(v52 + 168) = 0;
            memset(v85, 0, 24);
            *&v85[24] = re::globalAllocators(v52)[2];
            *&v85[32] = 0;
            re::FramePersistentPtr<re::ecs2::InstanceGroupBoundsComponent::BoundingBoxRenderData,re::FrameManager>::reset((v16 + 152), location, v52, v85);
            re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v85);
            objc_destroyWeak(location);
            location[0] = 0;
            v53 = *(v16 + 48);
            *v85 = *(v16 + 64);
            *&v85[8] = v53;
            re::FixedArray<re::AABB>::operator=(*(v16 + 160), v85);
            v54 = *(v16 + 88);
            *v85 = *(v16 + 104);
            *&v85[8] = v54;
            re::FixedArray<re::AABB>::operator=((*(v16 + 160) + 24), v85);
            v55 = *(v16 + 160);
            *(v55 + 48) = *(v55 + 16);
            *(v55 + 120) = *(v55 + 40);
            v56 = v18[137];
            if (v56)
            {
              v57 = v18[138];
              v58 = &v57[12 * v56];
              do
              {
                v59 = v57[1];
                v60 = v59 - *v57;
                if (v59 > *v57)
                {
                  v61 = 2 * *v57;
                  do
                  {
                    re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::ensureCapacity((v55 + 136));
                    v62 = v55 + 160;
                    if ((*(v55 + 152) & 1) == 0)
                    {
                      v62 = *(v55 + 168);
                    }

                    *(v62 + 4 * (*(v55 + 144))++) = v61;
                    *(v55 + 152) += 2;
                    v61 += 2;
                    --v60;
                  }

                  while (v60);
                }

                v57 += 12;
              }

              while (v57 != v58);
            }

            v63 = v18[71];
            v5 = v73;
            if (v63)
            {
              v64 = v18[73];
              v65 = 8 * v63;
              do
              {
                if (re::DataArray<re::MeshInstance>::tryGet(v36 + 72, *v64) || (v66 = ((0xBF58476D1CE4E5B9 * (MEMORY[0x10] & 0xFFFFFFLL)) ^ ((0xBF58476D1CE4E5B9 * (MEMORY[0x10] & 0xFFFFFFLL)) >> 27)) * v10, re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>(&uu2, 0x10, v66 ^ (v66 >> 31), v85), *&v85[12] == 0x7FFFFFFF))
                {
                  v67 = 0;
                }

                else
                {
                  v67 = 2 * *(v87 + 32 * *&v85[12] + 16);
                }

                re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::ensureCapacity((v55 + 64));
                v68 = v55 + 88;
                if ((*(v55 + 80) & 1) == 0)
                {
                  v68 = *(v55 + 96);
                }

                *(v68 + 4 * (*(v55 + 72))++) = v67;
                *(v55 + 80) += 2;
                ++v64;
                v65 -= 8;
              }

              while (v65);
            }

            re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&uu2);
          }
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v78);
    }

    while (v78 != v5 || v79 != 0xFFFF || HIWORD(v79) != 0xFFFF);
  }

  return *(v5 + 40) != 0;
}

uint64_t (***re::ecs2::InstanceGroupBoundsSystem::willAddSystemToECSService(re::ecs2::InstanceGroupBoundsSystem *this))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 72) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 73) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v4);
  *(this + 71) = v5;
  v6 = re::globalAllocators(v5)[2];
  v15 = v6;
  v7 = (*(*v6 + 32))(v6, 32, 0);
  *v7 = &unk_1F5CF5B60;
  v7[1] = this + 464;
  v7[2] = re::ecs2::InstanceGroupBoundsComponentStateImpl::directResourceDidUpdateEvent;
  v7[3] = 0;
  v16 = v7;
  v8 = *(*(*(this + 70) + 576) + 1512);
  v12 = v6;
  v13 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v11, v14);
  *(this + 59) = re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(v8, v11, 0, 0);
  *(this + 60) = v9;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v11);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v14);
}

double re::ecs2::InstanceGroupBoundsSystem::willRemoveSystemFromECSService(re::ecs2::InstanceGroupBoundsSystem *this)
{
  re::EventBus::unsubscribe(*(*(*(this + 70) + 576) + 1512), *(this + 59), *(this + 60));
  *(this + 73) = 0;
  result = 0.0;
  *(this + 568) = 0u;
  return result;
}

unint64_t re::ecs2::InstanceGroupBoundsSystem::willAddSceneToECSService(re::ecs2::InstanceGroupBoundsSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 44);
  v5 = *(this + 90);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 368);
    }

    else
    {
      v6 = *(this + 47);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_17;
      }
    }

    goto LABEL_16;
  }

  if (v5)
  {
    v7 = (this + 368);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 47);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  v9 = 0;
  v10 = 8 * v4;
  do
  {
    v11 = *v7++;
    v9 |= v11;
    v10 -= 8;
  }

  while (v10);
  if (v9)
  {
LABEL_16:
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 344, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::init(v12, this + 224, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 344, v40);
    v13 = v40;
    goto LABEL_49;
  }

LABEL_17:
  v47 = 0u;
  v40 = 0u;
  *&v41 = 0;
  v42 = 0u;
  v43 = 0u;
  *(&v41 + 1) = -1;
  v44 = 0;
  v45 = 1;
  v46 = 0uLL;
  v14 = *(this + 33);
  *&v47 = 0;
  v15 = *(this + 29);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,4ul>::setBucketsCapacity(this + 28, (v14 + 4) >> 2);
    v15 = *(this + 29);
  }

  if (v15 <= v14 >> 2)
  {
    v48[1] = 0;
    memset(v57, 0, sizeof(v57));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v49 = 136315906;
    v50 = "operator[]";
    v51 = 1024;
    v52 = 858;
    v53 = 2048;
    v54 = v14 >> 2;
    v55 = 2048;
    v56 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_53;
  }

  if (*(this + 240))
  {
    v16 = this + 248;
  }

  else
  {
    v16 = *(this + 32);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 33);
  ++*(this + 68);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v40;
  v20 = v41;
  v21 = v42;
  *(v18 + 48) = v43;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v43 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v40);
  v23 = *(this + 33);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::init(v24, this + 224, v48[0]);
  *&v57[0] = *(this + 33) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 35, v48, v57);
  v25 = *(this + 33);
  v26 = *(this + 48);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 48) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 344), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 48) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 360))
    {
      v30 = this + 368;
    }

    else
    {
      v30 = *(this + 47);
    }

    *&v30[8 * *(this + 44) - 8] &= v28;
  }

  v31 = *(this + 33);
  v32 = *(this + 54);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 54) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 392), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 54) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 408))
    {
      v36 = this + 416;
    }

    else
    {
      v36 = *(this + 53);
    }

    *&v36[8 * *(this + 50) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 392, v13);
  if (*(this + 456) == 1)
  {
    v38 = *(this + 55);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 224);
  }

  return result;
}

uint64_t re::ecs2::InstanceGroupBoundsSystem::willRemoveSceneFromECSService(re::ecs2::InstanceGroupBoundsSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 35, &v15);
  if (result != -1)
  {
    v4 = *(this + 36) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 344, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 392, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 224, *(v4 + 8));
    if (*v5)
    {
      v6 = v5;
      *v5 = 0;
      v7 = v5 + 1;
      v8 = *(v5[1] + 288);
      if (v8)
      {
        v9 = v5[12];
        if (v9)
        {
          for (i = 0; i != v9; ++i)
          {
            v11 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v6 + 7), i);
            re::EventBus::unsubscribe(v8, *v11, *(v11 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v6 + 7));
      v12 = 0;
      v13 = v6 + 3;
      do
      {
        v14 = v6[2];
        if (*v14)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v14, v13[v12]);
        }

        v13[v12++] = -1;
      }

      while (v12 != 4);
      *v7 = 0;
      v7[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 280, &v15);
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::InstanceGroupBoundsComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::InstanceGroupBoundsComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::InstanceGroupBoundsSystem::~InstanceGroupBoundsSystem(re::ecs2::InstanceGroupBoundsSystem *this)
{
  *(this + 58) = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  *(this + 58) = &unk_1F5CF5A68;
  re::FixedArray<CoreIKTransform>::deinit(this + 67);
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 61);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

__n128 __Block_byref_object_copy__12(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  v3 = *(a2 + 64);
  *(a1 + 48) = result;
  *(a1 + 64) = v3;
  return result;
}

void ___ZN2re4ecs212_GLOBAL__N_138computeInstancedBoundsFromDirectBufferERKNS_4AABBERKNS_12DirectBufferERS2__block_invoke(uint64_t a1, float32x4_t *a2)
{
  v18 = DRBufferCopyDescriptor();
  if (a2->i8[DRBufferDescriptorGetCapacity() - 1])
  {
    if (**(a1 + 48))
    {
      BytesUsed = DRBufferGetBytesUsed();
      if (BytesUsed >= 0x40)
      {
        v5 = BytesUsed >> 6;
        v6 = a2 + 2;
        do
        {
          v7 = v6[-2];
          v8 = v6[-1];
          v9 = *v6;
          v10 = v6[1];
          v6 += 4;
          v11 = *(a1 + 56);
          v19[0] = v7;
          v19[1] = v8;
          v19[2] = v9;
          v19[3] = v10;
          re::AABB::transform(v11, v19, v20);
          v12 = *(*(a1 + 40) + 8);
          v13 = v12[3];
          v13.i32[3] = 0;
          v14 = v20[0];
          v15 = v20[1];
          v14.i32[3] = 0;
          v12[3] = vminnmq_f32(v13, v14);
          v16 = *(*(a1 + 40) + 8);
          v17 = v16[4];
          v17.i32[3] = 0;
          v15.i32[3] = 0;
          v16[4] = vmaxnmq_f32(v17, v15);
          --v5;
        }

        while (v5);
      }
    }
  }

  else
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::InstanceGroupBoundsComponentStateImpl,REEventHandlerResult (re::ecs2::InstanceGroupBoundsComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::InstanceGroupBoundsComponentStateImpl,REEventHandlerResult (re::ecs2::InstanceGroupBoundsComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5B60;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::InstanceGroupBoundsComponentStateImpl,REEventHandlerResult (re::ecs2::InstanceGroupBoundsComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5B60;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,re::AABB>(re::snapshot::BufferDecoder *this, void *a2)
{
  v16 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 >= 8)
  {
    v6 = *v4;
    *(this + 3) = v4 + 1;
    if ((v6 & 0x1F) != 0)
    {
      return re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
    }

    re::DynamicArray<re::AABB>::resize(a2, v6 >> 5);
    v12 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(this, v12, v6);
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
  result = re::snapshot::DecoderRaw::beginArray(this, &v16);
  if (!result)
  {
    return result;
  }

  v8 = v16;
  if (v16 != -1 && a2[1] < v16)
  {
    re::DynamicArray<re::AABB>::setCapacity(a2, v16);
LABEL_15:
    v13 = 0;
    v10 = v8 + 1;
    if (v8 + 1 > 1)
    {
      v14 = v8 + 1;
    }

    else
    {
      v14 = 1;
    }

    while (v8 != -1 && v14 - 1 != v13)
    {
      re::DynamicArray<re::AABB>::resize(a2, v13 + 1);
      v15 = a2[4] + 32 * a2[2];
      re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(this, v15 - 32);
      result = re::snapshot::operator>><re::snapshot::DecoderRaw,float,3ul>(this, v15 - 16);
      if (v8 == ++v13)
      {
        v11 = v13 + 1;
        goto LABEL_22;
      }
    }

    return re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
  }

  if (v16)
  {
    goto LABEL_15;
  }

  v10 = 1;
  v11 = 1;
LABEL_22:
  if (v10 != v11)
  {
    return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
  }

  return result;
}

uint64_t *re::snapshot::operator>><re::snapshot::DecoderRaw,BOOL>(re::snapshot::BufferDecoder *this, void *a2)
{
  v15 = 0;
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 >= 8)
  {
    v6 = *v4;
    *(this + 3) = v4 + 1;
    re::DynamicArray<BOOL>::resize(a2, v6);
    v7 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(this, v7, v6);
  }

  re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
  result = re::snapshot::DecoderRaw::beginArray(this, &v15);
  if (!result)
  {
    return result;
  }

  v9 = v15;
  if (v15 != -1 && a2[1] < v15)
  {
    re::DynamicArray<BOOL>::setCapacity(a2, v15);
LABEL_13:
    v13 = 0;
    v11 = v9 + 1;
    if (v9 + 1 > 1)
    {
      v14 = v9 + 1;
    }

    else
    {
      v14 = 1;
    }

    while (v9 != -1 && v14 - 1 != v13)
    {
      re::DynamicArray<BOOL>::resize(a2, v13 + 1);
      result = re::snapshot::DecoderRaw::operator>>(this, (a2[4] + a2[2] - 1));
      if (v9 == ++v13)
      {
        v12 = v13 + 1;
        goto LABEL_20;
      }
    }

    return re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
  }

  if (v15)
  {
    goto LABEL_13;
  }

  v11 = 1;
  v12 = 1;
LABEL_20:
  if (v11 != v12)
  {
    return re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
  }

  return result;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,re::AABB>(const char **a1, void *a2)
{
  v14 = 0;
  if (re::snapshot::DecoderOPACK::beginData(a1, &v14, 1))
  {
    v4 = v14;
    if ((v14 & 0x1F) != 0)
    {
      return re::snapshot::BufferDecoder::error(a1, "Bad data: %zu bytes, expected multiple of %zu");
    }

    else
    {
      re::DynamicArray<re::AABB>::resize(a2, v14 >> 5);
      v13 = a2[4];

      return re::snapshot::BufferDecoder::readRaw(a1, v13, v4);
    }
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v14);
    if (result)
    {
      v6 = v14;
      if (v14 != -1 && a2[1] < v14)
      {
        re::DynamicArray<re::AABB>::setCapacity(a2, v14);
      }

      LODWORD(v8) = 1;
      if (v6 + 1 > 1)
      {
        v9 = v6 + 1;
      }

      else
      {
        v9 = 1;
      }

      result = re::snapshot::DecoderOPACK::endArray(a1, &v14);
      if (result)
      {
LABEL_20:
        if (v6 + 1 != v8)
        {
          return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        v8 = 1;
        while (v6 != -1 && v9 != v8)
        {
          re::DynamicArray<re::AABB>::resize(a2, v8);
          v10 = a2[4];
          v11 = a2[2];
          if (re::snapshot::DecoderOPACK::beginObject(a1, 0))
          {
            v12 = v10 + 32 * v11;
            re::snapshot::DecoderOPACK::field<1,re::Vector3<float>>(a1, v12 - 32);
            re::snapshot::DecoderOPACK::field<2,re::Vector3<float>>(a1, v12 - 16);
            re::snapshot::DecoderOPACK::endObject(a1, 0);
          }

          ++v8;
          result = re::snapshot::DecoderOPACK::endArray(a1, &v14);
          if (result)
          {
            goto LABEL_20;
          }
        }

        return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
      }
    }
  }

  return result;
}

uint64_t re::snapshot::operator>><re::snapshot::DecoderOPACK,BOOL>(re::snapshot::BufferDecoder *a1, void *a2)
{
  v11 = 0;
  if (re::snapshot::DecoderOPACK::beginData(a1, &v11, 1))
  {
    v4 = v11;
    re::DynamicArray<BOOL>::resize(a2, v11);
    v5 = a2[4];

    return re::snapshot::BufferDecoder::readRaw(a1, v5, v4);
  }

  else
  {
    result = re::snapshot::DecoderOPACK::beginArray(a1, &v11);
    if (result)
    {
      v7 = v11;
      if (v11 != -1 && a2[1] < v11)
      {
        re::DynamicArray<BOOL>::setCapacity(a2, v11);
      }

      LODWORD(v9) = 1;
      if (v7 + 1 > 1)
      {
        v10 = v7 + 1;
      }

      else
      {
        v10 = 1;
      }

      result = re::snapshot::DecoderOPACK::endArray(a1, &v11);
      if (result)
      {
LABEL_19:
        if (v7 + 1 != v9)
        {
          return re::snapshot::BufferDecoder::error(a1, "count mismatch: expected %zu, got %d");
        }
      }

      else
      {
        v9 = 1;
        while (v7 != -1 && v10 != v9)
        {
          re::DynamicArray<BOOL>::resize(a2, v9);
          re::snapshot::DecoderOPACK::operator>>(a1, (a2[4] + a2[2] - 1));
          ++v9;
          result = re::snapshot::DecoderOPACK::endArray(a1, &v11);
          if (result)
          {
            goto LABEL_19;
          }
        }

        return re::snapshot::BufferDecoder::error(a1, "Bad data, too many elements: have %d, expected %zu");
      }
    }
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::InstanceGroupBoundsComponent>(uint64_t a1)
{
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE8418;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0;
  *(v2 + 144) = 0;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  inited = objc_initWeak((v2 + 152), 0);
  *(a1 + 160) = 0;
  *(a1 + 192) = re::globalAllocators(inited)[2];
  *(a1 + 200) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs228InstanceGroupBoundsComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::findEntry<re::DataArrayHandle<re::MeshModel>>@<X0>(uint64_t result@<X0>, _DWORD *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (*result && (v4 = a3 % *(result + 24), v6 = *(*(result + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(result + 16);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v6;
      v10 = v8 + 32 * v6;
      v12 = *(v10 + 8);
      v11 = v10 + 8;
      result = v12;
      if (v12 == *a2)
      {
        result = *(v11 + 2);
        if (result == HIWORD(*a2) && ((*(v11 + 4) ^ a2[1]) & 0xFFFFFF) == 0)
        {
          break;
        }
      }

      v6 = *(v8 + 32 * v9) & 0x7FFFFFFF;
      v7 = v9;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v9;
        goto LABEL_11;
      }
    }

    v5 = v9;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v7;
  return result;
}

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 32 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 32 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v9 + 24) = a3;
  *(v10 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v7 + 32 * v5;
}

void re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::move(a1, v9);
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::move(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 32);
  if (v2)
  {
    v4 = result;
    v5 = 0;
    v6 = 0;
    v7 = *(a2 + 16);
    do
    {
      if ((*(v7 + v5) & 0x80000000) != 0)
      {
        result = re::HashTable<re::DataArrayHandle<re::MeshModel>,unsigned long,re::Hash<re::DataArrayHandle<re::MeshModel>>,re::EqualTo<re::DataArrayHandle<re::MeshModel>>,true,false>::allocEntry(v4, *(v7 + v5 + 24) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v7 = *(a2 + 16);
        *(result + 16) = *(v7 + v5 + 16);
        v2 = *(a2 + 32);
      }

      ++v6;
      v5 += 32;
    }

    while (v6 < v2);
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 8;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<re::MeshBoundingBoxes::BoundingBoxIndex,8ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 8)
    {
      return result;
    }

    v5 = 16;
  }

  else
  {
    v4 = *(result + 3);
    if (v4 >= a2)
    {
      return result;
    }

    v5 = 2 * v4;
  }

  if (v5 > a2)
  {
    a2 = v5;
  }

  return re::DynamicOverflowArray<unsigned int,8ul>::setCapacity(result, a2);
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF5BB8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF5C10;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF5C68;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF5CC0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF5BB8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF5C10;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF5C68;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF5CC0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5BB8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5BB8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5C10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5C10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5C68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5C68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF5CC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF5CC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_AudioGroupPlaybackComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADE60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE60))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADF28, "AudioGroupPlaybackComponent");
    __cxa_guard_release(&qword_1EE1ADE60);
  }

  return &unk_1EE1ADF28;
}

void re::ecs2::initInfo_AudioGroupPlaybackComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x2F587CFA4460AF72;
  v13[1] = "AudioGroupPlaybackComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1ADE68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1ADE68);
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
      qword_1EE1ADE88 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "audioPlaybackGroups";
      *(v11 + 16) = &qword_1EE1ADED8;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1ADE90 = v11;
      __cxa_guard_release(&qword_1EE1ADE68);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1ADE88;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGroupPlaybackComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227AudioGroupPlaybackComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1ADE78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE78))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1ADED8);
    qword_1EE1ADED8 = &unk_1F5CF5E30;
    __cxa_guard_release(&qword_1EE1ADE78);
  }

  if ((_MergedGlobals_328 & 1) == 0)
  {
    v2 = re::introspect_uint64_t(1, a2);
    if ((atomic_load_explicit(&qword_1EE1ADE80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE80))
    {
      re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1ADE80);
    }

    if ((byte_1EE1ADE59 & 1) == 0)
    {
      v3 = re::ecs2::introspect_AudioPlaybackGroup(1);
      if ((byte_1EE1ADE59 & 1) == 0)
      {
        v4 = v3;
        byte_1EE1ADE59 = 1;
        v5 = *(v3 + 24);
        ArcSharedObject::ArcSharedObject(&qword_1EE1ADE98, 0);
        qword_1EE1ADEA8 = 0x2800000003;
        dword_1EE1ADEB0 = v5;
        *algn_1EE1ADEB4 = 0;
        *&xmmword_1EE1ADEB8 = 0;
        *(&xmmword_1EE1ADEB8 + 1) = 0xFFFFFFFFLL;
        *algn_1EE1ADEC8 = v4;
        qword_1EE1ADED0 = 0;
        qword_1EE1ADE98 = &unk_1F5CF5ED0;
        re::IntrospectionRegistry::add(v6, v7);
        re::getPrettyTypeName(&qword_1EE1ADE98, &v28);
        if (BYTE8(v28))
        {
          v8 = v29;
        }

        else
        {
          v8 = &v28 + 9;
        }

        if (v28 && (BYTE8(v28) & 1) != 0)
        {
          (*(*v28 + 40))();
        }

        v32 = *(v4 + 32);
        if (v33)
        {
          v31 = v33;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(v30);
          re::TypeBuilder::TypeBuilder(&v28, v30);
          v36 = v32;
          re::TypeBuilder::beginListType(&v28, &v35, 1, 0x28uLL, 8uLL, &v36);
          re::TypeBuilder::setConstructor(&v28, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
          re::TypeBuilder::setDestructor(&v28, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
          re::TypeBuilder::setListUsesContiguousStorage(&v28, 1);
          re::TypeBuilder::setListAccessors(&v28, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
          re::TypeBuilder::setListIndexer(&v28, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
          re::TypeBuilder::setListIterator(&v28, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v28, v10);
          re::StackScratchAllocator::~StackScratchAllocator(v30);
        }

        xmmword_1EE1ADEB8 = v31;
        if (v35)
        {
          if (v35)
          {
          }
        }
      }
    }

    if ((_MergedGlobals_328 & 1) == 0)
    {
      _MergedGlobals_328 = 1;
      v11 = dword_1EE1ADEB0;
      ArcSharedObject::ArcSharedObject(&qword_1EE1ADED8, 0);
      qword_1EE1ADEE8 = 0x3000000007;
      dword_1EE1ADEF0 = v11;
      word_1EE1ADEF4 = 0;
      *&xmmword_1EE1ADEF8 = 0;
      *(&xmmword_1EE1ADEF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1ADF08 = v2;
      unk_1EE1ADF10 = 0;
      qword_1EE1ADF18 = &qword_1EE1ADE98;
      unk_1EE1ADF20 = 0;
      qword_1EE1ADED8 = &unk_1F5CF5E30;
      re::IntrospectionRegistry::add(v12, v13);
      re::getPrettyTypeName(&qword_1EE1ADED8, &v28);
      if (BYTE8(v28))
      {
        v14 = v29;
      }

      else
      {
        v14 = &v28 + 9;
      }

      if (v28 && (BYTE8(v28) & 1) != 0)
      {
        (*(*v28 + 40))();
      }

      v15 = v2[2];
      v23 = xmmword_1EE1ADEB8;
      v24 = v15;
      if (v36)
      {
        v22 = v36;
      }

      else
      {
        *&v28 = 0x449AD97C4B77BED4;
        *(&v28 + 1) = "_CompareFunc";
        if (v28)
        {
          if (v28)
          {
          }
        }

        if (!v35)
        {
          v30[0] = 0x449AD97C4B77BED4;
          v30[1] = "_CompareFunc";
          v35 = v28;
          if (v30[0])
          {
            if (v30[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(&v33, &v28 + 8);
        if (!v35 || (v19 = *v34, *&v28 = *(&v35 + 1), *(&v28 + 1) = v19, LODWORD(v29) = -1, (v20 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v33 + 768, &v28)) == 0) || !*v20)
        {
          v31 = v35;
          v32 = v24;
        }

        re::StackScratchAllocator::StackScratchAllocator(v30);
        re::TypeBuilder::TypeBuilder(&v28, v30);
        v26 = v23;
        v27 = v24;
        re::TypeBuilder::beginDictionaryType(&v28, &v25, 1, 0x30uLL, 8uLL, &v27, &v26);
        re::TypeBuilder::setConstructor(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v28, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v28, v21);
        re::StackScratchAllocator::~StackScratchAllocator(v30);
      }

      xmmword_1EE1ADEF8 = v22;
      if (v25)
      {
        if (v25)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF5D18;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF5D18;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  return result;
}

void *re::ecs2::allocInfo_AudioGroupPlaybackSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ADE70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ADE70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1ADFB8, "AudioGroupPlaybackSystem");
    __cxa_guard_release(&qword_1EE1ADE70);
  }

  return &unk_1EE1ADFB8;
}

void re::ecs2::initInfo_AudioGroupPlaybackSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB400DA8C1B2F21E6;
  v6[1] = "AudioGroupPlaybackSystem";
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
  *(this + 8) = &re::ecs2::initInfo_AudioGroupPlaybackSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioGroupPlaybackSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioGroupPlaybackSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGroupPlaybackSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::AudioGroupPlaybackSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF5D70;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AudioGroupPlaybackSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF5D70;
  result[28] = 0;
  return result;
}

void re::ecs2::AudioGroupPlaybackComponent::~AudioGroupPlaybackComponent(re::ecs2::AudioGroupPlaybackComponent *this)
{
  *this = &unk_1F5CF5D18;
  v2 = (this + 32);
  re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(this + 32);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioGroupPlaybackComponent::~AudioGroupPlaybackComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
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
          re::DynamicArray<unsigned long>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 32);
        }

        v4 += 64;
      }
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v8 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v8;
  }
}

_anonymous_namespace_ *re::ecs2::AudioGroupPlaybackSystem::willAddSystemToECSService(re::ecs2::AudioGroupPlaybackSystem *this)
{
  result = *(this + 5);
  if (result)
  {
    v3 = (*(*result + 32))(result);
    result = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v3);
    *(this + 28) = result;
  }

  return result;
}

double re::ecs2::AudioGroupPlaybackSystem::willAddSceneToECSService(re::ecs2::AudioGroupPlaybackSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v5 = this;
    v6 = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::didAddComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 96), &v5);
    v5 = this;
    v6 = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::willRemoveComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 184), &v5);
  }

  return result;
}

void re::ecs2::AudioGroupPlaybackSystem::willRemoveSceneFromECSService(re::ecs2::AudioGroupPlaybackSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGroupPlaybackComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::didAddComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 96, &v4);
    *&v4 = this;
    *(&v4 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::willRemoveComponents,re::ecs2::AudioGroupPlaybackSystem>;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 184, &v4);
  }
}

uint64_t re::ecs2::AudioGroupPlaybackSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v46);
  if (*(a1 + 224))
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v8 = &unk_1EE187000;
      v38 = v7;
      v39 = a1;
      do
      {
        v9 = *v6;
        v10 = re::ecs2::SceneComponentTable::get((*v6 + 200), v8[444]);
        if (v10 && *(v10 + 384))
        {
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v45, 3152, a1);
          v11 = (*(**(a1 + 224) + 16))(*(a1 + 224), v9);
          if ((*(*v11 + 568))())
          {
            v40 = v6;
            v12 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[444]);
            if (v12)
            {
              v13 = *(v12 + 384);
              if (v13)
              {
                v14 = *(v12 + 400);
                v41 = &v14[v13];
                do
                {
                  v15 = (*(*v11 + 912))(&v43, v11);
                  v17 = v43;
                  v16 = v44;
                  if (v43 != v44)
                  {
                    do
                    {
                      v42 = *v17;
                      v18 = *v14;
                      v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v42 ^ (v42 >> 30))) >> 27));
                      v15 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(*v14 + 32, &v42, v19 ^ (v19 >> 31), buf);
                      v20 = v49;
                      if (v49 != 0x7FFFFFFF)
                      {
                        v21 = *(v18 + 48);
                        v22 = *(v21 + (v49 << 6)) & 0x7FFFFFFF;
                        if (v50 == 0x7FFFFFFF)
                        {
                          *(*(v18 + 40) + 4 * v48) = v22;
                          v20 = v49;
                        }

                        else
                        {
                          *(v21 + (v50 << 6)) = *(v21 + (v50 << 6)) & 0x80000000 | v22;
                        }

                        v15 = v21 + (v20 << 6);
                        v23 = *v15;
                        if ((*v15 & 0x80000000) != 0)
                        {
                          *v15 = v23 & 0x7FFFFFFF;
                          v15 = re::DynamicArray<unsigned long>::deinit(v15 + 16);
                          v20 = v49;
                          v21 = *(v18 + 48);
                          v23 = *(v21 + (v49 << 6));
                        }

                        *(v21 + (v20 << 6)) = *(v18 + 68) | v23 & 0x80000000;
                        --*(v18 + 60);
                        v24 = *(v18 + 72) + 1;
                        *(v18 + 68) = v20;
                        *(v18 + 72) = v24;
                      }

                      ++v17;
                    }

                    while (v17 != v16);
                    v17 = v43;
                  }

                  if (v17)
                  {
                    v44 = v17;
                    operator delete(v17);
                  }

                  v25 = *v14;
                  v26 = *(*v14 + 64);
                  if (v26)
                  {
                    v27 = 0;
                    v28 = *(v25 + 48);
                    while (1)
                    {
                      v29 = *v28;
                      v28 += 16;
                      if (v29 < 0)
                      {
                        break;
                      }

                      if (v26 == ++v27)
                      {
                        LODWORD(v27) = *(*v14 + 64);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v27) = 0;
                  }

                  v30 = *(*v14 + 64);
LABEL_30:
                  while (v27 != v26)
                  {
                    v31 = *(v25 + 48) + (v27 << 6);
                    v32 = *(v31 + 32);
                    if (v32)
                    {
                      v33 = *(v31 + 48);
                      v34 = 40 * v32;
                      do
                      {
                        if (*v33)
                        {
                          v15 = (*(*v11 + 864))(v11, *v33, *(v33 + 8), *(v33 + 32));
                          if (*(v33 + 24) == 1)
                          {
                            v15 = (*(*v11 + 872))(v11, *v33, *(v33 + 16));
                          }
                        }

                        else
                        {
                          v35 = *re::audioLogObjects(v15);
                          v15 = os_log_type_enabled(v35, OS_LOG_TYPE_ERROR);
                          if (v15)
                          {
                            *buf = 0;
                            _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "[AudioGroupPlaybackSystem] Group Token is invalid.", buf, 2u);
                          }
                        }

                        v33 += 40;
                        v34 -= 40;
                      }

                      while (v34);
                      v30 = *(v25 + 64);
                    }

                    if (v30 <= v27 + 1)
                    {
                      v36 = v27 + 1;
                    }

                    else
                    {
                      v36 = v30;
                    }

                    while (v36 - 1 != v27)
                    {
                      LODWORD(v27) = v27 + 1;
                      if ((*(*(v25 + 48) + (v27 << 6)) & 0x80000000) != 0)
                      {
                        goto LABEL_30;
                      }
                    }

                    LODWORD(v27) = v36;
                  }

                  ++v14;
                }

                while (v14 != v41);
              }
            }

            (*(*v11 + 880))(v11);
            a1 = v39;
            v6 = v40;
            v7 = v38;
            v8 = &unk_1EE187000;
          }

          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v45);
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v46);
}

void re::ecs2::AudioGroupPlaybackSystem::~AudioGroupPlaybackSystem(re::ecs2::AudioGroupPlaybackSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, uint64_t *a5)
{
  v12 = 0;
  memset(v10, 0, sizeof(v10));
  v11 = 0;
  v8 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a4, a5, v10);
  if (v10[0] && v12)
  {
    (*(*v10[0] + 40))();
  }

  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 16;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + (v6 << 6);
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 16);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + (v6 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_17;
      }
    }

    LODWORD(v6) = v11;
LABEL_17:
    ;
  }

  while (v6 != v5);
  return result;
}

void re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24));
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v25);
  v8 = HIDWORD(v26);
  if (HIDWORD(v26) == 0x7FFFFFFF)
  {
    v9 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v26, v25);
    v10 = *a2;
    *(v9 + 16) = 0;
    result = v9 + 16;
    *(result + 32) = 0;
    *(result + 24) = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    v12 = *a3;
    v13 = a3[1];
    *(result - 8) = v10;
    *result = v12;
    *(result + 8) = v13;
    *a3 = 0;
    a3[1] = 0;
    v14 = *(result + 16);
    *(result + 16) = a3[2];
    a3[2] = v14;
    v15 = *(result + 32);
    *(result + 32) = a3[4];
    a3[4] = v15;
    ++*(a3 + 6);
    ++*(result + 24);
    v16 = (a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *(a1 + 16) + (v8 << 6) + 16;
    if (result == a3)
    {
      return result;
    }

    v17 = *result;
    v18 = *a3;
    if (*result)
    {
      v19 = v18 == 0;
    }

    else
    {
      v19 = 1;
    }

    if (!v19 && v17 != v18)
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 503);
      result = _os_crash();
      __break(1u);
      return result;
    }

    v21 = *(result + 8);
    v22 = a3[1];
    *result = v18;
    *(result + 8) = v22;
    *a3 = v17;
    a3[1] = v21;
    v23 = *(result + 16);
    *(result + 16) = a3[2];
    a3[2] = v23;
    v24 = *(result + 32);
    *(result + 32) = a3[4];
    a3[4] = v24;
    ++*(a3 + 6);
    v16 = (result + 24);
  }

  ++*v16;
  return result;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1ADE98, 0);
  *(&qword_1EE1ADEA8 + 6) = 0;
  qword_1EE1ADEA8 = 0;
  *&xmmword_1EE1ADEB8 = 0;
  *(&xmmword_1EE1ADEB8 + 1) = 0xFFFFFFFFLL;
  qword_1EE1ADE98 = &unk_1F5CADA48;
  qword_1EE1ADED0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(algn_1EE1ADEC8);
  qword_1EE1ADE98 = &unk_1F5CF5ED0;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::AudioPlaybackGroup>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::Pair<BOOL,re::Event<re::NetworkSystem,re::ecs2::Component *>::Subscription,true>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4);
  *(v9 + 40 * v8 + 24) = 0;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (v9 + 40 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::AudioPlaybackGroup>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::DynamicArray<re::ecs2::AudioPlaybackGroup>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 40 * v5;
      if ((40 * v5) >= 1)
      {
        v7 = 0;
        v8 = (v3[4] + 40 * v4);
        v9 = v6 / 0x28 - (v6 > 0x27);
        v10 = vdupq_n_s64(v9);
        do
        {
          v11 = vdupq_n_s64(v7);
          v12 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E3049620)));
          if (vuzp1_s8(vuzp1_s16(v12, *v10.i8), *v10.i8).u8[0])
          {
            v8[24] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v12, *&v10), *&v10).i8[1])
          {
            v8[64] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E3049640)))), *&v10).i8[2])
          {
            v8[104] = 0;
            v8[144] = 0;
          }

          v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E3049660)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i32[1])
          {
            v8[184] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v13, *&v10)).i8[5])
          {
            v8[224] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E305F210))))).i8[6])
          {
            v8[264] = 0;
            v8[304] = 0;
          }

          v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903F0)));
          if (vuzp1_s8(vuzp1_s16(v14, *v10.i8), *v10.i8).u8[0])
          {
            v8[344] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v14, *&v10), *&v10).i8[1])
          {
            v8[384] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903E0)))), *&v10).i8[2])
          {
            v8[424] = 0;
            v8[464] = 0;
          }

          v15 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903D0)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i32[1])
          {
            v8[504] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v15, *&v10)).i8[5])
          {
            v8[544] = 0;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v11, xmmword_1E30903C0))))).i8[6])
          {
            v8[584] = 0;
            v8[624] = 0;
          }

          v7 += 16;
          v8 += 640;
        }

        while (((v9 + 16) & 0xFFFFFFFFFFFFFFF0) != v7);
      }
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    *(a1 + 16) = 0;
  }

  else
  {
    re::DynamicArray<unsigned long>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::Pair<BOOL,re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription,true>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v8 = re::DynamicArray<re::ecs2::AudioPlaybackGroup>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 40 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 40;
        v11 -= 40;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AudioPlaybackGroup>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1);

  return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1);

    re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, uint64_t *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + (v4 << 6)) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 16;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + (*(a1 + 32) << 6) + 16;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<unsigned long long,re::DynamicArray<re::ecs2::AudioPlaybackGroup>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227AudioGroupPlaybackComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 15;
    *(a2 + 8) = 0;
  }
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioGroupPlaybackComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioGroupPlaybackSystem::willRemoveComponents,re::ecs2::AudioGroupPlaybackSystem>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 224);
  if (*(a2 + 472))
  {
    v3 = v2 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = (*(*v2 + 16))(v2);
    if ((*(*v4 + 568))())
    {
      (*(*v4 + 896))(v4);
    }
  }

  return 0;
}

void *re::ecs2::allocInfo_UISystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_329, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_329))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE050, "UISystem");
    __cxa_guard_release(&_MergedGlobals_329);
  }

  return &unk_1EE1AE050;
}

void re::ecs2::initInfo_UISystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4604FD853C6;
  v6[1] = "UISystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xF000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_UISystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UISystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UISystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::UISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::UISystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UISystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UISystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::UISystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 0, 1);
  *result = &unk_1F5CF5F68;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::UISystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 0, 1);
  *result = &unk_1F5CF5F68;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void re::ecs2::UISystem::willAddSystemToECSService(re::ecs2::UISystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  {
    re::introspect<re::ecs2::UILayerGeometryService>(BOOL)::info = re::ecs2::introspect_UILayerGeometryService(0);
  }

  v3 = re::introspect<re::ecs2::UILayerGeometryService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v4 = (*(*v2 + 16))(v2, v3, &v11);
  v5 = v4;
  if (v11)
  {
    if (v11)
    {
    }
  }

  *(this + 28) = v5;
  if (v5)
  {
    (*(*v5 + 24))(v5);
  }

  v6 = (*(**(this + 5) + 32))(*(this + 5));
  {
    re::introspect<re::ecs2::UIGroundingShadowService>(BOOL)::info = re::ecs2::introspect_UIGroundingShadowService(0);
  }

  v7 = re::introspect<re::ecs2::UIGroundingShadowService>(BOOL)::info;
  re::StringID::invalid(&v11);
  v8 = (*(*v6 + 16))(v6, v7, &v11);
  v9 = v8;
  if (v11)
  {
    if (v11)
    {
    }
  }

  *(this + 29) = v9;
  if (v9)
  {
    v10 = *(*v9 + 24);

    v10(v9);
  }
}

uint64_t re::ecs2::UISystem::willRemoveSystemFromECSService(re::ecs2::UISystem *this)
{
  v2 = *(this + 28);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  *(this + 28) = 0;
  result = *(this + 29);
  if (result)
  {
    result = (*(*result + 32))(result);
  }

  *(this + 29) = 0;
  return result;
}

uint64_t re::ecs2::UISystem::willAddSceneToECSService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    (*(*v3 + 40))(v3, a2);
  }

  result = *(a1 + 232);
  if (result)
  {
    v5 = *(*result + 40);

    return v5();
  }

  return result;
}

uint64_t re::ecs2::UISystem::willRemoveSceneFromECSService(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 224);
  if (v3)
  {
    (*(*v3 + 48))(v3, a2);
  }

  result = *(a1 + 232);
  if (result)
  {
    v5 = *(*result + 48);

    return v5();
  }

  return result;
}

void *re::ecs2::UISystem::update(void *result, uint64_t a2, uint64_t a3)
{
  if (result[5])
  {
    v4 = result;
    v5 = result[28];
    if (v5)
    {
      v6 = *(a3 + 200);
      v8 = *(a3 + 216);
      v9 = v6;
      (*(*v5 + 16))(v5, &v8);
    }

    result = v4[29];
    if (result)
    {
      v7 = *(a3 + 200);
      v8 = *(a3 + 216);
      v9 = v7;
      return (*(*result + 16))(result, &v8);
    }
  }

  return result;
}

void re::ecs2::UISystem::~UISystem(re::ecs2::UISystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::MaterialParametersManager::~MaterialParametersManager(re::MaterialParametersManager *this)
{
  re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 32);
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }
}

{
  re::MaterialParametersManager::~MaterialParametersManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::MaterialParametersManager::willAddScene(uint64_t result, uint64_t a2)
{
  if (!*(result + 16))
  {
    *(result + 16) = a2;
  }

  return result;
}

uint64_t re::MaterialParametersManager::willRemoveScene(uint64_t result, uint64_t a2)
{
  if (*(result + 16) == a2)
  {
    *(result + 16) = 0;
  }

  return result;
}

void re::MaterialParametersManager::ensureRootEntityExists(re::MaterialParametersManager *this)
{
  v2 = (this + 24);
  if (!*(this + 3))
  {
    v3 = re::ecs2::EntityFactory::instance(this);
    re::ecs2::EntityFactory::make(v3, 4uLL, v9);
    v4 = *v2;
    v5 = v9[0];
    *v2 = v9[0];
    if (v4)
    {

      v5 = *v2;
    }

    *(v5 + 76) |= 0x1400u;
    v9[0] = 0xB0FDF3493E2CFA72;
    v9[1] = "MaterialInstanceSyncRoot";
    v6 = re::StringID::operator=(v5 + 36, v9);
    if (v9[0])
    {
    }

    re::ecs2::EntityComponentCollection::add((*v2 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v7 = *(this + 2);
  if (v7)
  {
    v8 = (*(v7 + 104) + 320);

    re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v8, v2);
  }
}

void re::MaterialParametersManager::createPbrMaterialParametersEntity(_anonymous_namespace_ *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, int a4@<W3>, int a5@<W4>, re::ecs2::Entity **a6@<X8>)
{
  v9 = a2;
  v10 = a1;
  v28 = 0uLL;
  v29 = 0;
  if (a2 == 2)
  {
    (*(**(a1 + 1) + 8))(&v24);
    goto LABEL_5;
  }

  if (a2 <= 1)
  {
    (*(**(a1 + 1) + 8))(&v24);
LABEL_5:
    v28 = v24;
    v24 = 0uLL;
    v29 = v25;
    *&v25 = 0;
    re::AssetHandle::~AssetHandle(&v24);
  }

  v26 = 0;
  v24 = 0u;
  v25 = 0u;
  v27 = 0x7FFFFFFFLL;
  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v24, "EnableClearcoat", &v22);
    a1 = v22;
    if (v22)
    {
      if (v23)
      {
        a1 = (*(*v22 + 40))();
      }
    }
  }

  if (a4)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v24, "EnableAnisotropy", &v22);
    a1 = v22;
    if (v22)
    {
      if (v23)
      {
        a1 = (*(*v22 + 40))();
      }
    }
  }

  if (a5)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v24, "EnableCloth", &v22);
    a1 = v22;
    if (v22)
    {
      if (v23)
      {
        a1 = (*(*v22 + 40))();
      }
    }
  }

  v12 = re::globalAllocators(a1);
  v13 = (*(*v12[2] + 32))(v12[2], 1992, 8);
  bzero(v13, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v13);
  v22 = "PhysicallyBasedMaterialResource";
  v23 = 31;
  re::DynamicString::operator=((v13 + 8), &v22);
  re::AssetHandle::operator=(v13 + 40, &v28);
  v14 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v13 + 304), &v24);
  v15 = *(v10 + 1);
  v16 = re::MaterialAsset::assetType(v14);
  (*(*v15 + 424))(&v22, v15, v13, v16, 0, 0, 1);
  re::MaterialParametersManager::ensureRootEntityExists(v10);
  v18 = re::ecs2::EntityFactory::instance(v17);
  re::ecs2::EntityFactory::make(v18, 4uLL, a6);
  v19 = *a6;
  *(v19 + 76) |= 0x1400u;
  v21[0] = 0xCEA8EA11163BE4E8;
  v21[1] = "PbrMaterialParametersEntity";
  re::StringID::operator=(v19 + 36, v21);
  re::ecs2::Entity::setParentInternal(v19, *(v10 + 3), 0xFFFFFFFFFFFFFFFFLL);
  v20 = re::ecs2::EntityComponentCollection::add((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v20[512] = v9;
  v20[513] = a3;
  v20[515] = a5;
  v20[514] = a4;
  re::AssetHandle::operator=((v20 + 528), &v22);
  re::ecs2::EntityComponentCollection::add((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::AssetHandle::~AssetHandle(&v22);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v24);
  re::AssetHandle::~AssetHandle(&v28);
}

void re::MaterialParametersManager::addOrUpdatePbrMaterialInstanceHandle(uint64_t a1, re::RenderManager *a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v31 = 0;
  v32 = a3;
  v9 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, a3);
  if (!v9)
  {
    v12 = re::globalAllocators(0);
    v13 = (*(*v12[2] + 32))(v12[2], 592, 16);
    re::PbrMaterial::PbrMaterial(v13, 0);
    v30[0] = 2;
    v31 = v14;
    re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 32, &v32, v30);
LABEL_7:
    v15 = v31;
    if (v31)
    {
      v16 = (v31 + 8);
      *(v15 + 368) = *(a4 + 336);
      v17 = *(a4 + 400);
      v19 = *(a4 + 352);
      v18 = *(a4 + 368);
      *(v15 + 416) = *(a4 + 384);
      *(v15 + 432) = v17;
      *(v15 + 384) = v19;
      *(v15 + 400) = v18;
      v20 = *(a4 + 464);
      v22 = *(a4 + 416);
      v21 = *(a4 + 432);
      *(v15 + 480) = *(a4 + 448);
      *(v15 + 496) = v20;
      *(v15 + 448) = v22;
      *(v15 + 464) = v21;
      re::PbrMaterialTextures::operator=(v15 + 32, a4);
      *(v15 + 512) = *(a4 + 480);
      *(v15 + 516) = *(a4 + 484);
      *(v15 + 520) = *(a4 + 488);
      re::AssetHandle::operator=(v15 + 528, a5);
      re::PbrMaterial::commitConstantChanges(v15, a2);
      re::PbrMaterial::commitTextureChanges(v15, a2);
    }

    else
    {
      MEMORY[0x170] = *(a4 + 336);
      v23 = *(a4 + 352);
      v24 = *(a4 + 368);
      v25 = *(a4 + 384);
      MEMORY[0x1B0] = *(a4 + 400);
      MEMORY[0x1A0] = v25;
      MEMORY[0x190] = v24;
      MEMORY[0x180] = v23;
      v26 = *(a4 + 416);
      v27 = *(a4 + 432);
      v28 = *(a4 + 448);
      MEMORY[0x1F0] = *(a4 + 464);
      MEMORY[0x1E0] = v28;
      MEMORY[0x1D0] = v27;
      MEMORY[0x1C0] = v26;
      re::PbrMaterialTextures::operator=(32, a4);
      MEMORY[0x200] = *(a4 + 480);
      MEMORY[0x204] = *(a4 + 484);
      MEMORY[0x208] = *(a4 + 488);
      re::AssetHandle::operator=(528, a5);
      re::PbrMaterial::commitConstantChanges(0, a2);
      re::PbrMaterial::commitTextureChanges(0, a2);
    }

    goto LABEL_10;
  }

  v30[0] = *v9;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v31, *(v9 + 8));
  if (v30[0] == 2)
  {
    goto LABEL_7;
  }

  if ((atomic_exchange(re::MaterialParametersManager::addOrUpdatePbrMaterialInstanceHandle(re::RenderManager *,unsigned long long,re::PbrMaterialParameters const&,re::AssetHandle)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v11 = *re::graphicsLogObjects(v10);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *v29 = 0;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "MaterialInstanceHandle is not expected type", v29, 2u);
    }
  }

LABEL_10:
  if (v31)
  {
  }
}

uint64_t re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 40 * v6 + 16;
  }
}

void *re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    result[1] = *a2;
    *(result + 16) = *a3;
    v8 = *(a3 + 8);
    result[3] = v8;
    if (v8)
    {
      result = (v8 + 8);
    }

    ++*(a1 + 40);
  }

  return result;
}

__n128 re::PbrMaterial::commitConstantChanges(re::PbrMaterial *this, re::RenderManager *a2)
{
  if (*(this + 130))
  {
    v4 = re::PbrMaterial::addRenderFrameParameterDelta(this, a2);
    if (v4)
    {
      v6 = v4;
      *(v4 + 16) = 1;
      re::PbrMaterialConstants::asPbrConstants(this + 368, a2, v10);
      v7 = v10[7];
      *(v6 + 128) = v10[6];
      *(v6 + 144) = v7;
      *(v6 + 160) = v10[8];
      v8 = v10[3];
      *(v6 + 64) = v10[2];
      *(v6 + 80) = v8;
      v9 = v10[5];
      *(v6 + 96) = v10[4];
      *(v6 + 112) = v9;
      result = v10[1];
      *(v6 + 32) = v10[0];
      *(v6 + 48) = result;
      *(v6 + 20) = *(this + 129);
      *(this + 130) = 0;
    }
  }

  return result;
}

void re::PbrMaterial::commitTextureChanges(re::PbrMaterial *this, re::RenderManager *a2)
{
  v3 = re::PbrMaterial::addRenderFrameParameterDelta(this, a2);
  if (v3)
  {
    *(v3 + 17) = 1;
    v4 = (this + 32);
    v5 = v3 + 176;
    v6 = 14;
    do
    {
      re::PbrMaterial::makeTextureHandle(v4, v7);
      re::TextureHandle::operator=(v5, v7);
      re::TextureHandle::invalidate(v7);
      v5 += 16;
      v4 = (v4 + 24);
      --v6;
    }

    while (v6);
  }
}

void re::MaterialParametersManager::createUnlitMaterialParametersEntity(_anonymous_namespace_ *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, re::ecs2::Entity **a6@<X8>, float a7@<S0>)
{
  v11 = a2;
  v12 = a1;
  v31 = 0uLL;
  v32 = 0;
  if (a2 == 2)
  {
    (*(**(a1 + 1) + 8))(&v27);
    goto LABEL_5;
  }

  if (a2 <= 1)
  {
    (*(**(a1 + 1) + 8))(&v27);
LABEL_5:
    v31 = v27;
    v27 = 0uLL;
    v32 = v28;
    *&v28 = 0;
    re::AssetHandle::~AssetHandle(&v27);
  }

  v29 = 0;
  v27 = 0u;
  v28 = 0u;
  v30 = 0x7FFFFFFFLL;
  if (a3)
  {
    re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addNew<void>(&v27, "MatchUnlitColor", &v25);
    a1 = v25;
    if (v25)
    {
      if (v26)
      {
        a1 = (*(*v25 + 40))();
      }
    }
  }

  v14 = re::globalAllocators(a1);
  v15 = (*(*v14[2] + 32))(v14[2], 1992, 8);
  bzero(v15, 0x7C8uLL);
  re::MaterialAsset::MaterialAsset(v15);
  v25 = "UnlitMaterialResource";
  v26 = 21;
  re::DynamicString::operator=((v15 + 8), &v25);
  re::AssetHandle::operator=(v15 + 40, &v31);
  v16 = re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((v15 + 304), &v27);
  v17 = *(v12 + 1);
  v18 = re::MaterialAsset::assetType(v16);
  (*(*v17 + 424))(&v25, v17, v15, v18, 0, 0, 1);
  re::MaterialParametersManager::ensureRootEntityExists(v12);
  v20 = re::ecs2::EntityFactory::instance(v19);
  re::ecs2::EntityFactory::make(v20, 4uLL, a6);
  v21 = *a6;
  *(v21 + 76) |= 0x1400u;
  v24[0] = 0x942092D10A3FF97ALL;
  v24[1] = "UnlitMaterialInstanceEntity";
  re::StringID::operator=(v21 + 36, v24);
  re::ecs2::Entity::setParentInternal(v21, *(v12 + 3), 0xFFFFFFFFFFFFFFFFLL);
  v22 = re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  *(v22 + 76) = v11;
  *(v22 + 77) = a3;
  v23 = *(a4 + 16);
  *(v22 + 28) = *a4;
  *(v22 + 44) = v23;
  *(v22 + 72) = a7;
  re::AssetHandle::operator=(v22 + 48, a5);
  re::AssetHandle::operator=(v22 + 80, &v25);
  re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  re::AssetHandle::~AssetHandle(&v25);
  re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(&v27);
  re::AssetHandle::~AssetHandle(&v31);
}

uint64_t re::MaterialParametersManager::findMaterialParametersEntityByID(re::MaterialParametersManager *this, uint64_t a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  v5 = a2;
  v3 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 152, &v5);
  if (v3)
  {
    return *(v3 + 8);
  }

  if (*(*(v2 + 104) + 312) == v5)
  {
    return *(v2 + 104);
  }

  return 0;
}

void re::MaterialParametersManager::addOrUpdateUnlitMaterialInstanceHandle(uint64_t a1, re::RenderManager *a2, unint64_t a3, char a4, char a5, __int128 *a6, uint64_t *a7, uint64_t *a8, float a9)
{
  v31 = 0;
  v32 = a3;
  v17 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, a3);
  if (v17)
  {
    v30[0] = *v17;
    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v31, *(v17 + 8));
    if (v30[0] != 1)
    {
      v18 = 0;
      goto LABEL_7;
    }
  }

  else
  {
    v19 = re::globalAllocators(0);
    v20 = (*(*v19[2] + 32))(v19[2], 136, 8);
    ArcSharedObject::ArcSharedObject(v20, 0);
    *v20 = &unk_1F5CF6080;
    __asm { FMOV            V0.4S, #1.0 }

    *(v20 + 24) = _Q0;
    *(v20 + 40) = 0;
    *(v20 + 44) = 1065353216;
    *(v20 + 56) = 0;
    *(v20 + 64) = 0;
    *(v20 + 48) = 0;
    *(v20 + 80) = 0u;
    *(v20 + 96) = 0u;
    *(v20 + 72) = 0;
    *(v20 + 112) = vdupq_n_s64(0xFFFFFFFFFFFFFFFuLL);
    *(v20 + 128) = 0;
    v30[0] = 1;
    v31 = v20;
    re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 32, &v32, v30);
  }

  v18 = v31;
  if (v31)
  {
    v26 = (v31 + 8);
  }

LABEL_7:
  v27 = *a6;
  *(v18 + 40) = *(a6 + 16);
  *(v18 + 24) = v27;
  *(v18 + 44) = a9;
  *(v18 + 72) = a4;
  re::AssetHandle::operator=(v18 + 48, a7);
  *(v18 + 73) = a5;
  re::AssetHandle::operator=(v18 + 80, a8);
  re::UnlitMaterial::commitConstantChanges(v18, a2);
  v28 = re::UnlitMaterial::addRenderFrameParameterDelta(v18, a2);
  if (v28)
  {
    v29 = v28;
    *(v28 + 17) = 1;
    re::PbrMaterial::makeTextureHandle((v18 + 48), v33);
    re::TextureHandle::operator=(v29 + 64, v33);
    re::TextureHandle::invalidate(v33);
  }

  if (v31)
  {
  }
}

uint64_t re::MaterialParametersManager::materialInstanceHandle(re::MaterialParametersManager *this, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, this + 32, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(this + 6) + 40 * v6 + 16;
  }
}

double re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
      }

      while (v3 < *(a1 + 32));
      v2 = *a1;
    }

    (*(*v2 + 40))(v2, *(a1 + 8));
    *(a1 + 32) = 0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *&result = 0x7FFFFFFFLL;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return result;
}

void re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 40 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = *(v2 + 24);
    if (v3)
    {

      *(v2 + 24) = 0;
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_5;
  }

  v4 = a4 % *(a2 + 24);
  v6 = *(*(a2 + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(a2 + 16);
  if (*(v7 + 40 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 40 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 40 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 40 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_6;
      }
    }

    v5 = v8;
  }

LABEL_6:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v26, 0, 36);
          *&v26[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
            v17 = 0;
            v18 = (v13 + 32);
            do
            {
              if ((*(v18 - 4) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *v18 % *(a1 + 24));
                *(v19 + 8) = *(v18 - 3);
                *(v19 + 16) = *(v18 - 16);
                *(v19 + 24) = *(v18 - 1);
                *(v18 - 1) = 0;
              }

              ++v17;
              v18 += 5;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

void re::UnlitMaterial::~UnlitMaterial(re::UnlitMaterial *this)
{
  *this = &unk_1F5CF6080;
  v2 = *(this + 13);
  if (v2)
  {

    *(this + 13) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF6080;
  v2 = *(this + 13);
  if (v2)
  {

    *(this + 13) = 0;
  }

  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle((this + 48));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ImageBasedLightComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE0E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE198, "ImageBasedLightComponent");
    __cxa_guard_release(&qword_1EE1AE0E8);
  }

  return &unk_1EE1AE198;
}

void re::ecs2::initInfo_ImageBasedLightComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v68[0] = 0x54A3D8680549C3BELL;
  v68[1] = "ImageBasedLightComponent";
  if (v68[0])
  {
    if (v68[0])
    {
    }
  }

  *(this + 2) = v69;
  if ((atomic_load_explicit(&_MergedGlobals_330, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_330);
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
      qword_1EE1AE118 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "intensityExponent";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AE120 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "ibl";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x5800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AE128 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_AssetHandle(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "diffuseTexture";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2800000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AE130 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_AssetHandle(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "specularTexture";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x4000000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1AE138 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_BOOL(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "isGlobalIBL";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x9400000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1AE140 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_float(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "mixFactor";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x4B000000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1AE148 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = re::introspect_Vector3F(1);
      v35 = (*(*v33 + 32))(v33, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "mixColor";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x50000000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1AE150 = v35;
      v36 = re::introspectionAllocator(v35);
      v38 = re::introspect_ColorGamut(1, v37);
      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "mixColorGamut";
      *(v39 + 16) = v38;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x51000000008;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1AE158 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::introspect_AssetHandle(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "iblBlend";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x7000000009;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1AE160 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::introspect_BOOL(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "enableBlend";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x880000000ALL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1AE168 = v47;
      v48 = re::introspectionAllocator(v47);
      v50 = re::introspect_float(1, v49);
      v51 = (*(*v48 + 32))(v48, 72, 8);
      *v51 = 1;
      *(v51 + 8) = "blendIBLsFactor";
      *(v51 + 16) = v50;
      *(v51 + 24) = 0;
      *(v51 + 32) = 0x8C0000000BLL;
      *(v51 + 40) = 0;
      *(v51 + 48) = 0;
      *(v51 + 56) = 0;
      *(v51 + 64) = 0;
      qword_1EE1AE170 = v51;
      v52 = re::introspectionAllocator(v51);
      v54 = re::introspect_BOOL(1, v53);
      v55 = (*(*v52 + 32))(v52, 72, 8);
      *v55 = 1;
      *(v55 + 8) = "enableRotation";
      *(v55 + 16) = v54;
      *(v55 + 24) = 0;
      *(v55 + 32) = 0x4B80000000CLL;
      *(v55 + 40) = 0;
      *(v55 + 48) = 0;
      *(v55 + 56) = 0;
      *(v55 + 64) = 0;
      qword_1EE1AE178 = v55;
      v56 = re::introspectionAllocator(v55);
      v58 = re::introspect_BOOL(1, v57);
      v59 = (*(*v56 + 32))(v56, 72, 8);
      *v59 = 1;
      *(v59 + 8) = "enableRotationBlend";
      *(v59 + 16) = v58;
      *(v59 + 24) = 0;
      *(v59 + 32) = 0x4B90000000DLL;
      *(v59 + 40) = 0;
      *(v59 + 48) = 0;
      *(v59 + 56) = 0;
      *(v59 + 64) = 0;
      qword_1EE1AE180 = v59;
      v60 = re::introspectionAllocator(v59);
      v61 = re::introspect_Matrix3x3F(1);
      v62 = (*(*v60 + 32))(v60, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "rotationBlendIBL";
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x4C00000000ELL;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE1AE188 = v62;
      v63 = re::introspectionAllocator(v62);
      v65 = re::introspect_uint64_t(1, v64);
      v66 = (*(*v63 + 32))(v63, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "textureContentUpdateTimestamp";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0x4F00000000FLL;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE1AE190 = v66;
      __cxa_guard_release(&_MergedGlobals_330);
    }
  }

  *(this + 2) = 0x55000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 16;
  *(this + 8) = &qword_1EE1AE118;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedLightComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedLightComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedLightComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedLightComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224ImageBasedLightComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v67 = v69;
}

void *re::ecs2::allocInfo_ImageBasedLightReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE0F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE228, "ImageBasedLightReceiverComponent");
    __cxa_guard_release(&qword_1EE1AE0F0);
  }

  return &unk_1EE1AE228;
}

void re::ecs2::initInfo_ImageBasedLightReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x4BF3A083172FA560;
  v14[1] = "ImageBasedLightReceiverComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1AE0F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AE0F8);
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
      qword_1EE1AE108 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::ecs2::introspect_EntityHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "iblEntity";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AE110 = v12;
      __cxa_guard_release(&qword_1EE1AE0F8);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AE108;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedLightReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232ImageBasedLightReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::ecs2::allocInfo_ImageBasedLightSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE100))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE2B8, "ImageBasedLightSystem");
    __cxa_guard_release(&qword_1EE1AE100);
  }

  return &unk_1EE1AE2B8;
}

void re::ecs2::initInfo_ImageBasedLightSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x8D1ECFE7443B511ALL;
  v6[1] = "ImageBasedLightSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x58000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ImageBasedLightSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImageBasedLightSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImageBasedLightSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ImageBasedLightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ImageBasedLightSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImageBasedLightSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImageBasedLightSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::ImageBasedLightSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 173));
  a3[68] = &unk_1F5CF60C8;
  re::IBL::~IBL((a3 + 142));
  re::IBL::~IBL((a3 + 112));
  re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a3 + 104));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a3 + 95));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a3 + 87));
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit((a3 + 79));
  re::DynamicArray<unsigned long>::deinit((a3 + 79));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a3 + 73));
  re::FixedArray<CoreIKTransform>::deinit(a3 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::ImageBasedLightSystem>(uint64_t *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 173));
  a1[68] = &unk_1F5CF60C8;
  re::IBL::~IBL((a1 + 142));
  re::IBL::~IBL((a1 + 112));
  re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit((a1 + 104));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a1 + 95));
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((a1 + 87));
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::deinit((a1 + 79));
  re::DynamicArray<unsigned long>::deinit((a1 + 79));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit((a1 + 73));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::ImageBasedLightComponent::mainIBLForScene(uint64_t a1)
{
  v1 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a1 + 224) <= v1)
  {
    return 0;
  }

  v2 = *(*(a1 + 240) + 8 * v1);
  if (!v2)
  {
    return 0;
  }

  v3 = *(v2 + 384);
  if (!v3)
  {
    return 0;
  }

  v4 = *(v2 + 400);
  v5 = 8 * v3;
  while (1)
  {
    result = *v4;
    if (*(*(*v4 + 16) + 304))
    {
      break;
    }

    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return 0;
    }
  }

  return result;
}

re::ecs2::ImageBasedLightComponentStateImpl *re::ecs2::ImageBasedLightComponentStateImpl::ImageBasedLightComponentStateImpl(re::ecs2::ImageBasedLightComponentStateImpl *this, re::ecs2::ImageBasedLightSystem *a2)
{
  v7[1] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF60C8;
  *(this + 1) = a2;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 60) = 0u;
  *(this + 1) = 0u;
  *(this + 76) = 0x7FFFFFFFLL;
  *(this + 28) = 0;
  *(this + 6) = 0u;
  *(this + 11) = 0;
  v3 = (this + 88);
  *(this + 34) = 0;
  *(this + 120) = 0u;
  *(this + 140) = 0x1FFFFFFFFLL;
  *(this + 168) = 0u;
  *(this + 184) = 0u;
  *(this + 200) = 0u;
  *(this + 216) = 0u;
  *(this + 232) = 0u;
  *(this + 248) = 0u;
  *(this + 280) = 0;
  *(this + 152) = 0u;
  *(this + 264) = 0u;
  *(this + 364) = 0u;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 18) = 0u;
  *(this + 24) = xmmword_1E3047670;
  *(this + 25) = xmmword_1E3047680;
  *(this + 26) = xmmword_1E30476A0;
  *(this + 108) = 0;
  *(this + 28) = xmmword_1E3092750;
  *(this + 116) = 0;
  *(this + 234) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 63) = 0;
  *(this + 32) = xmmword_1E3047670;
  *(this + 33) = xmmword_1E3047680;
  *(this + 34) = xmmword_1E30476A0;
  *(this + 280) = 256;
  *(this + 576) = 0;
  *(this + 154) = 0;
  *(this + 76) = 0;
  *(this + 37) = 0u;
  *(this + 39) = xmmword_1E3047670;
  *(this + 40) = xmmword_1E3047680;
  *(this + 41) = xmmword_1E30476A0;
  *(this + 168) = 0;
  *(this + 43) = xmmword_1E3092750;
  *(this + 176) = 0;
  *(this + 354) = 0;
  *(this + 93) = 0;
  *(this + 712) = 0u;
  *(this + 728) = 0u;
  *(this + 47) = xmmword_1E3047670;
  *(this + 48) = xmmword_1E3047680;
  *(this + 49) = xmmword_1E30476A0;
  *(this + 400) = 256;
  *(this + 816) = 0;
  v6[0] = v7;
  v6[1] = 1;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 16), v6);
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(this + 11, 0);
  ++*(this + 28);
  *(this + 33) = 4;
  re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::allocBlock(this + 11);
  return this;
}

uint64_t re::ecs2::ImageBasedLightComponentStateImpl::didReparentEntityHandler(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  v7 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v7 && *(v7 + 384))
  {
    v8 = *(a1 + 8);
    v12 = v6;
    v9 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v8 + 352), &v12);
    if (v9 == -1)
    {
      v10 = 0;
    }

    else
    {
      v10 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v8 + 296, *(*(v8 + 360) + 16 * v9 + 8));
    }

    re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(v10, a2);
    *(a1 + 280) = 1;
  }

  return 0;
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::destroy(uint64_t result, uint64_t a2)
{
  v2 = WORD1(a2);
  v3 = *(result + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v5 = result;
    v6 = (v3 - 1) == WORD1(a2) ? *(result + 48) : *(result + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(result + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          v12 = (v11 + (a2 << 7));
          re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit((v12 + 16));
          re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::deinit(v12);
          result = re::DynamicArray<unsigned long>::deinit(v12);
          if (*(v5 + 16) <= v2)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(v5 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(v5 + 52);
          *(v5 + 52) = v4;
          --*(v5 + 40);
        }
      }
    }
  }

  return result;
}

double re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(a1, a2);
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v7)
    {
      v8 = -1;
    }

    else
    {
      v8 = 0x80;
    }

    v5->i8[v3 & 0xF] = v8;
    v9 = (*(a1 + 8) + 72 * v3);
    v10 = 0xBF58476D1CE4E5B9 * (*v9 ^ (*v9 >> 30));
    *(a1 + 40) ^= ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27)));
    v11 = v9 + 1;
    v12 = v9[7];
    if (v12)
    {

      v11[6] = 0;
    }

    re::DynamicArray<re::IBL>::deinit((v11 + 1));
    v13.i64[0] = -1;
    v13.i64[1] = *&v7 != 0;
    v4 = vaddq_s64(*(a1 + 24), v13);
    *(a1 + 24) = v4;
    v14 = *(a1 + 16);
    if (v14 >= 0x11 && v4.i64[0] < v14 >> 2)
    {

      *v4.i64 = re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(a1, 0);
    }
  }

  return *v4.i64;
}

unint64_t re::ecs2::ImageBasedLightComponentStateImpl::didDependentComponentChange(uint64_t a1, unint64_t a2, uint64_t a3)
{
  result = re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(a2, a3);
  *(a1 + 280) = 1;
  return result;
}

unint64_t re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(unint64_t result, uint64_t a2)
{
  if (*(a2 + 304))
  {
    v3 = result;
    result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (result)
    {
      v4 = result;
      v5 = 24;
      v6 = 0xFFFFFFFFLL;
      do
      {
        v7 = re::ecs2::ComponentBucketsBase::componentHandle(*(v3 + 16), *(v3 + v5), v4);
        if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
        {
          v10 = v7;
          v6 = v8;
          goto LABEL_11;
        }

        v5 += 8;
      }

      while (v5 != 56);
      v10 = -1;
LABEL_11:
      result = re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>::setComponentState(v3, v10, v6);
    }

    v11 = *(a2 + 344);
    if (v11)
    {
      v12 = *(a2 + 360);
      v13 = 8 * v11;
      do
      {
        v14 = *v12++;
        result = re::ecs2::ImageBasedLightComponentStateImpl::processWorldIdChangeInEntityHierarchy(v3, v14);
        v13 -= 8;
      }

      while (v13);
    }
  }

  return result;
}

double re::ecs2::ImageBasedLightComponentStateImpl::clearDataForEntity(int64x2_t *this, const re::ecs2::Entity *a2)
{
  v3 = this;
  v63 = *MEMORY[0x1E69E9840];
  v4 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(&this[13].i64[1], a2);
  if (v4 == -1)
  {
    return *v5.i64;
  }

  v6 = 0xBF58476D1CE4E5B9;
  v7 = v3[14].i64[0] + 32 * v4;
  v9 = *(v7 + 8);
  v8 = (v7 + 8);
  v10 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get(&v3[5].i64[1], v9);
  v11 = re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(*(v10 + 16), *(v10 + 32), v8[1]);
  v12 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v13 = 0x1E304F000;
  if (!v12)
  {
    goto LABEL_17;
  }

  v14 = *(v11 + 88);
  v15 = *(v11 + 72);
  if (v15)
  {
    v16 = 8 * v15;
    v17 = *(v11 + 88);
    while (*v17 != v12)
    {
      ++v17;
      v16 -= 8;
      if (!v16)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
    v17 = *(v11 + 88);
  }

  if (v17 == (v14 + 8 * v15))
  {
    goto LABEL_17;
  }

  v18 = v17 - v14;
  v13 = (v17 - v14) >> 3;
  v6 = *(v11 + 16);
  if (v6 <= v13)
  {
    v62 = 0u;
    memset(v61, 0, sizeof(v61));
    *buf = 0u;
    v60 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v55 = 136315906;
    *&v55[4] = "removeAt";
    *&v55[12] = 1024;
    *&v55[14] = 931;
    *&v55[18] = 2048;
    *&v55[20] = v13;
    v56 = 2048;
    *v57 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_44:
    v62 = 0u;
    memset(v61, 0, sizeof(v61));
    *buf = 0u;
    v60 = 0u;
    v3 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v55 = 136315906;
    *&v55[4] = "removeAt";
    *&v55[12] = 1024;
    *&v55[14] = 931;
    *&v55[18] = 2048;
    *&v55[20] = v13;
    v56 = 2048;
    *v57 = v6;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_45;
  }

  if (v6 - 1 > v13)
  {
    v19 = *(v11 + 32);
    v20 = v19 + 224 * v6;
    v21 = v19 + 224 * v13;
    NS::SharedPtr<MTL::Texture>::operator=(v21, (v20 - 224));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 8), (v20 - 216));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 16), (v20 - 208));
    v22 = *(v20 - 184);
    *(v21 + 24) = *(v20 - 200);
    *(v21 + 40) = v22;
    v23 = *(v20 - 152);
    v24 = *(v20 - 136);
    v25 = *(v20 - 122);
    *(v21 + 56) = *(v20 - 168);
    *(v21 + 102) = v25;
    *(v21 + 88) = v24;
    *(v21 + 72) = v23;
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 120), (v20 - 104));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 128), (v20 - 96));
    *(v21 + 136) = *(v20 - 88);
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 144), (v20 - 80));
    NS::SharedPtr<MTL::Texture>::operator=((v21 + 152), (v20 - 72));
    v26 = *(v20 - 64);
    v27 = *(v20 - 48);
    v28 = *(v20 - 32);
    *(v21 + 208) = *(v20 - 16);
    *(v21 + 176) = v27;
    *(v21 + 192) = v28;
    *(v21 + 160) = v26;
    v6 = *(v11 + 16);
  }

  re::IBL::~IBL((*(v11 + 32) + 224 * v6 - 224));
  --*(v11 + 16);
  ++*(v11 + 24);
  v6 = *(v11 + 72);
  if (v6 <= v13)
  {
    goto LABEL_44;
  }

  v29 = v6 - 1;
  if (v6 - 1 > v13)
  {
    *&v18[*(v11 + 88)] = *(*(v11 + 88) + 8 * v6 - 8);
    *(v11 + 72) = v29;
    ++*(v11 + 80);
    v6 = 0xBF58476D1CE4E5B9;
    v13 = 0x1E304F000;
    goto LABEL_17;
  }

  *(v11 + 72) = v29;
  ++*(v11 + 80);
  v6 = 0xBF58476D1CE4E5B9;
  v13 = "omToByAnimationINS_7Vector2IfEEEE";
  if (!v29)
  {
    re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::destroy(v10, v8[1]);
    v38 = v8[2];
    v8 += 2;
    v39 = re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::find((v10 + 64), v38);
    if (v39 == -1 || ((v40 = (*(v10 + 64) + (v39 & 0xFFFFFFFFFFFFFFF0)), v41.i64[0] = -1, v41.i64[1] = -1, (v42 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v40, v41), xmmword_1E304FAD0)))), 0x3830282018100800)) != 0) ? (v43 = -1) : (v43 = 0x80), (v40->i8[v39 & 0xF] = v43, v44 = *(v10 + 80), v45 = *(*(v10 + 72) + 16 * v39), v46 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27)), *(v10 + 104) ^= (v46 >> 31) ^ v46, v41.i64[1] = *&v42 != 0, v47 = vaddq_s64(*(v10 + 88), v41), *(v10 + 88) = v47, v44 < 0x11) || v47.i64[0] >= v44 >> 2))
    {
LABEL_31:
      re::AssetHandle::AssetHandle(buf, (v3->i64[1] + 1384));
      if (*&buf[8])
      {
        v48 = atomic_load((*&buf[8] + 896));
        re::AssetHandle::~AssetHandle(buf);
        if (v48 == 2)
        {
          memset(v55, 0, sizeof(v55));
          *&v57[2] = 0;
          *&v57[10] = 0;
          v58 = 0;
          DefaultIBLData = re::ecs2::ImageBasedLightComponentStateImpl::getDefaultIBLData(v3);
          re::DynamicArray<re::IBL>::add(v55, DefaultIBLData);
          v51 = a2;
          do
          {
            v52 = v51;
            v51 = *(v51 + 4);
          }

          while (v51);
          *buf = *(v52 + 3);
          *&buf[8] = *v55;
          memset(v55, 0, 24);
          v60 = *&v55[8];
          ++*&v55[24];
          LODWORD(v61[0]) = 1;
          *(v61 + 8) = *&v57[2];
          *&v57[2] = 0u;
          DWORD2(v61[1]) = v58;
          re::HashBrown<unsigned long long,std::pair<re::ecs2::Scene *,re::IBLContext>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::addOrReplace(v3[18].i64, v8, buf);
          if (*&v61[1])
          {

            *&v61[1] = 0;
          }

          re::DynamicArray<re::IBL>::deinit(&buf[8]);
          if (*&v57[10])
          {

            *&v57[10] = 0;
          }

          re::DynamicArray<re::IBL>::deinit(v55);
          goto LABEL_17;
        }
      }

      else
      {
        re::AssetHandle::~AssetHandle(buf);
      }

      v53 = *re::graphicsLogObjects(v49);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "Failed to add default IBL data to the world upon IBLComponent removal because the default IBL asset hasn't been loaded yet.", buf, 2u);
      }

      goto LABEL_17;
    }

LABEL_45:
    re::HashBrown<unsigned long long,re::DataArrayHandle<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::resize(v10 + 64, 0);
    goto LABEL_31;
  }

LABEL_17:
  v30 = re::HashBrown<re::ecs2::Scene *,std::vector<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::find(&v3[13].i64[1], a2);
  if (v30 != -1)
  {
    v31 = (v3[13].i64[1] + (v30 & 0xFFFFFFFFFFFFFFF0));
    v32.i64[0] = -1;
    v32.i64[1] = -1;
    v33 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v31, v32), xmmword_1E304FAD0)))), *(v13 + 2752));
    if (v33)
    {
      v34 = -1;
    }

    else
    {
      v34 = 0x80;
    }

    v31->i8[v30 & 0xF] = v34;
    v35 = v3[14].u64[1];
    v36 = *(v3[14].i64[0] + 32 * v30);
    v37 = 0x94D049BB133111EBLL * (((v36 ^ (v36 >> 30)) * v6) ^ (((v36 ^ (v36 >> 30)) * v6) >> 27));
    v3[16].i64[0] ^= (v37 >> 31) ^ v37;
    v32.i64[1] = *&v33 != 0;
    v5 = vaddq_s64(v3[15], v32);
    v3[15] = v5;
    if (v35 >= 0x11 && v5.i64[0] < v35 >> 2)
    {
      *v5.i64 = re::HashBrown<re::ecs2::Entity const*,re::ecs2::ImageBasedLightComponentStateImpl::EntityDataHandle,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(&v3[13].i64[1], 0);
    }
  }

  return *v5.i64;
}

unint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerSceneData>::get(uint64_t a1, int a2)
{
  if (*(a1 + 16) <= HIWORD(a2))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 32) + 16 * HIWORD(a2)) + (a2 << 7);
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::get(unint64_t a1, uint64_t a2, int a3)
{
  if (HIWORD(a3) >= a1)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 16 * HIWORD(a3)) + 96 * a3;
}

uint64_t re::DataArray<re::ecs2::ImageBasedLightComponentStateImpl::PerWorldData>::destroy(uint64_t result, uint64_t a2)
{
  v2 = WORD1(a2);
  v3 = *(result + 16);
  if (WORD1(a2) < v3)
  {
    v4 = a2;
    v5 = result;
    v6 = (v3 - 1) == WORD1(a2) ? *(result + 48) : *(result + 44);
    if (a2 < v6)
    {
      v7 = a2;
      v8 = (*(result + 32) + 16 * WORD1(a2));
      v9 = *(v8[1] + 4 * a2);
      if (v9 && v9 == (HIDWORD(a2) & 0xFFFFFF))
      {
        v11 = *v8;
        if (v11)
        {
          v12 = v11 + 96 * a2;
          v13 = *(v12 + 56);
          if (v13)
          {
            if (*(v12 + 88))
            {
              (*(*v13 + 40))(v13);
            }

            *(v12 + 88) = 0;
            *(v12 + 64) = 0;
            *(v12 + 72) = 0;
            *(v12 + 56) = 0;
            ++*(v12 + 80);
          }

          v14 = *(v12 + 40);
          if (v14)
          {

            *(v12 + 40) = 0;
          }

          result = re::DynamicArray<re::IBL>::deinit(v12);
          if (*(v5 + 16) <= v2)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(*(*(v5 + 32) + 16 * v2 + 8) + 4 * v7) = 0;
          *v12 = *(v5 + 52);
          *(v5 + 52) = v4;
          --*(v5 + 40);
        }
      }
    }
  }

  return result;
}