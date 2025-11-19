re::ecs2::SkeletalPosePreparationSystem *re::ecs2::SkeletalPosePreparationSystem::SkeletalPosePreparationSystem(re::ecs2::SkeletalPosePreparationSystem *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CFA1B8;
  re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::BasicComponentStates((v2 + 28), this, (v2 + 58));
  *(this + 58) = &unk_1F5CFA110;
  *(this + 59) = 0;
  *(this + 60) = 0;
  *(this + 61) = 0;
  v4[1] = 1;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v4[0] = v5;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 472), v4);
  return this;
}

uint64_t re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::BasicComponentStates(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 24) = 0;
  *(a1 + 48) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 120) = 0u;
  v6 = (a1 + 120);
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  v7 = (a1 + 56);
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 217) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  v10 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v6, 0);
  *(a1 + 136) += 2;
  *(a1 + 160) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 168), 0);
  *(a1 + 184) += 2;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  *(a1 + 232) = 1;
  return a1;
}

re::ecs2::SkeletalPoseSystem *re::ecs2::SkeletalPoseSystem::SkeletalPoseSystem(re::ecs2::SkeletalPoseSystem *this)
{
  v7[4] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 0, 1);
  *v2 = &unk_1F5CFA260;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 224) = 0u;
  v3 = v2 + 224;
  *(v2 + 260) = 0x7FFFFFFFLL;
  re::ecs2::BasicComponentStates<re::ecs2::SkeletalPoseComponent>::BasicComponentStates(v2 + 272, this, v2 + 512);
  *(this + 64) = &unk_1F5CFA150;
  *(this + 65) = this;
  *(this + 66) = 0;
  *(this + 68) = 0;
  *(this + 67) = 0;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v7[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[2] = re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v7[3] = re::ecs2::ComponentImpl<re::ecs2::KeyValueComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v6[0] = v7;
  v6[1] = 4;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 528), v6);
  return this;
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::RemoteEffectsStyle>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B0F80, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B0F80);
    if (a1)
    {
      re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::IntrospectionDynamicArray();
      __cxa_guard_release(&qword_1EE1B0F80);
    }
  }

  if ((byte_1EE1B0ECE & 1) == 0)
  {
    v1 = qword_1EE1B0F78;
    if (qword_1EE1B0F78 || (v1 = re::ecs2::allocInfo_RemoteEffectsStyle(a1), qword_1EE1B0F78 = v1, re::ecs2::initInfo_RemoteEffectsStyle(v1, v2), (byte_1EE1B0ECE & 1) == 0))
    {
      byte_1EE1B0ECE = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B1020, 0);
      qword_1EE1B1030 = 0x2800000003;
      dword_1EE1B1038 = v3;
      word_1EE1B103C = 0;
      *&xmmword_1EE1B1040 = 0;
      *(&xmmword_1EE1B1040 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B1050 = v1;
      qword_1EE1B1058 = 0;
      qword_1EE1B1020 = &unk_1F5CFA5D8;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B1020, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B1040 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_RemoteEffectsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0ED8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0ED8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1280, "RemoteEffectsComponent");
    __cxa_guard_release(&qword_1EE1B0ED8);
  }

  return &unk_1EE1B1280;
}

void re::ecs2::initInfo_RemoteEffectsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v35[0] = 0x8681CCD58A6CC542;
  v35[1] = "RemoteEffectsComponent";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1B0ED0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B0ED0);
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
      qword_1EE1B1060 = v8;
      v9 = re::introspectionAllocator(v8);
      re::ecs2::introspect_RemoteEffectsArray(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_remoteEffectsArray";
      *(v11 + 16) = &qword_1EE1B1210;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B1068 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_BOOL(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "m_enableEntityHoverEffect";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x5200000005;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B1070 = v15;
      v16 = re::introspectionAllocator(v15);
      re::ecs2::introspect_RemoteEffectsComponentVersion(v16, v17);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "m_remoteEffectsComponentVersion";
      *(v18 + 16) = &qword_1EE1B1138;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x980000000BLL;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B1078 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::RemoteEffectsStyle>>::get(v19);
      v20 = (*(*v19 + 32))(v19, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_styles";
      *(v20 + 16) = &qword_1EE1B1020;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2800000015;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B1080 = v20;
      v21 = re::introspectionAllocator(v20);
      re::ecs2::introspect_RemoteEffectsSettingsModifier(v21, v22);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_settingsModifier";
      *(v23 + 16) = &qword_1EE1B11C8;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x9C00000016;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B1088 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_BOOL(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "m_isRightPinchActive";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x5600000017;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B1090 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 5;
      *(v29 + 1) = "m_isPinchActive";
      *(v29 + 2) = "m_isRightPinchActive";
      qword_1EE1B1098 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "m_isLeftPinchActive";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x5700000018;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1B10A0 = v33;
      __cxa_guard_release(&qword_1EE1B0ED0);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1B1060;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs222RemoteEffectsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v34 = v36;
}

void *re::ecs2::allocInfo_RemoteEffectsComponentExtraData(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0EE8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1310, "RemoteEffectsComponentExtraData");
    __cxa_guard_release(&qword_1EE1B0EE8);
  }

  return &unk_1EE1B1310;
}

void re::ecs2::initInfo_RemoteEffectsComponentExtraData(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xAB215011BEB32472;
  v22[1] = "RemoteEffectsComponentExtraData";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1B0EE0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B0EE0);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::RemoteEffectsStyle>>::get(v6);
      v7 = (*(*v6 + 32))(v6, 72, 8);
      *v7 = 1;
      *(v7 + 8) = "m_styles";
      *(v7 + 16) = &qword_1EE1B1020;
      *(v7 + 24) = 0;
      *(v7 + 32) = 0x280000000ALL;
      *(v7 + 40) = 0;
      *(v7 + 48) = 0;
      *(v7 + 56) = 0;
      *(v7 + 64) = 0;
      qword_1EE1B0FF8 = v7;
      v8 = re::introspectionAllocator(v7);
      re::ecs2::introspect_RemoteEffectsSettingsModifier(v8, v9);
      v10 = (*(*v8 + 32))(v8, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_settingsModifier";
      *(v10 + 16) = &qword_1EE1B11C8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x9C0000000BLL;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1B1000 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_BOOL(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_isRightPinchActive";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x560000000CLL;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B1008 = v14;
      v15 = re::introspectionAllocator(v14);
      v16 = (*(*v15 + 32))(v15, 24, 8);
      *v16 = 5;
      *(v16 + 1) = "m_isPinchActive";
      *(v16 + 2) = "m_isRightPinchActive";
      qword_1EE1B1010 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_isLeftPinchActive";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x570000000DLL;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B1018 = v20;
      __cxa_guard_release(&qword_1EE1B0EE0);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B0FF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsComponentExtraData>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsComponentExtraData>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsComponentExtraData>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsComponentExtraData>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231RemoteEffectsComponentExtraDataELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v21 = v23;
}

re::ecs2::RemoteEffectsComponent *re::internal::defaultConstruct<re::ecs2::RemoteEffectsComponentExtraData>(int a1, int a2, re::ecs2::RemoteEffectsComponent *this)
{
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  result = re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(this);
  *result = &unk_1F5CFA670;
  return result;
}

re::ecs2::RemoteEffectsComponent *re::internal::defaultConstructV2<re::ecs2::RemoteEffectsComponentExtraData>(re::ecs2::RemoteEffectsComponent *a1)
{
  *(a1 + 8) = 0u;
  *(a1 + 9) = 0u;
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  result = re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(a1);
  *result = &unk_1F5CFA670;
  return result;
}

void re::ecs2::introspect_RemoteEffectsStyleType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B0EF0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B0EF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0EF8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B10A8, "RemoteEffectsStyleType", 4, 4, 1, 1);
      qword_1EE1B10A8 = &unk_1F5D0C658;
      qword_1EE1B10E8 = &re::ecs2::introspect_RemoteEffectsStyleType(BOOL)::enumTable;
      dword_1EE1B10B8 = 9;
      __cxa_guard_release(&qword_1EE1B0EF8);
    }

    if (_MergedGlobals_361)
    {
      break;
    }

    _MergedGlobals_361 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B10A8, a2);
    v37 = 0x8681E5ED08844C5ELL;
    v38 = "RemoteEffectsStyleType";
    v41 = 208862;
    v42 = "int";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B10E8;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1B10C8 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B0EF0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Spotlight";
      qword_1EE1B0FD8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Shader";
      qword_1EE1B0FE0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Highlight";
      qword_1EE1B0FE8 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "AudioResource";
      qword_1EE1B0FF0 = v36;
      __cxa_guard_release(&qword_1EE1B0EF0);
    }
  }
}

void re::ecs2::introspect_RemoteEffectsOpacityFunction(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B0F00, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B0F08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F08))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B10F0, "RemoteEffectsOpacityFunction", 1, 1, 1, 1);
      qword_1EE1B10F0 = &unk_1F5D0C658;
      qword_1EE1B1130 = &re::ecs2::introspect_RemoteEffectsOpacityFunction(BOOL)::enumTable;
      dword_1EE1B1100 = 9;
      __cxa_guard_release(&qword_1EE1B0F08);
    }

    if (byte_1EE1B0EC9)
    {
      break;
    }

    byte_1EE1B0EC9 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B10F0, a2);
    v35 = 0xE030AA35FDF01F4ELL;
    v36 = "RemoteEffectsOpacityFunction";
    v39 = 0x31CD534126;
    v40 = "uint8_t";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B1130;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B1110 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B0F00);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Full";
      qword_1EE1B0FA8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Mask";
      qword_1EE1B0FB0 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Blend";
      qword_1EE1B0FB8 = v34;
      __cxa_guard_release(&qword_1EE1B0F00);
    }
  }
}

void re::ecs2::introspect_RemoteEffectsComponentVersion(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B0F10, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B0F18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F18))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B1138, "RemoteEffectsComponentVersion", 4, 4, 1, 1);
      qword_1EE1B1138 = &unk_1F5D0C658;
      qword_1EE1B1178 = &re::ecs2::introspect_RemoteEffectsComponentVersion(BOOL)::enumTable;
      dword_1EE1B1148 = 9;
      __cxa_guard_release(&qword_1EE1B0F18);
    }

    if (byte_1EE1B0ECA)
    {
      break;
    }

    byte_1EE1B0ECA = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B1138, a2);
    v33 = 0xAB332E76240495EELL;
    v34 = "RemoteEffectsComponentVersion";
    v37 = 0x607DD0F01DCLL;
    v38 = "uint32_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B1178;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1B1158 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1B0F10);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Launch";
      qword_1EE1B0F88 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Fall2024";
      qword_1EE1B0F90 = v32;
      __cxa_guard_release(&qword_1EE1B0F10);
    }
  }
}

void re::ecs2::introspect_RemoteEffectsGroupBehavior(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B0F20, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B0F28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F28))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B1180, "RemoteEffectsGroupBehavior", 4, 4, 1, 1);
      qword_1EE1B1180 = &unk_1F5D0C658;
      qword_1EE1B11C0 = &re::ecs2::introspect_RemoteEffectsGroupBehavior(BOOL)::enumTable;
      dword_1EE1B1190 = 9;
      __cxa_guard_release(&qword_1EE1B0F28);
    }

    if (byte_1EE1B0ECB)
    {
      break;
    }

    byte_1EE1B0ECB = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B1180, a2);
    v35 = 0xFE19E4E02DD5E32ALL;
    v36 = "RemoteEffectsGroupBehavior";
    v39 = 208862;
    v40 = "int";
    v4 = v38[0];
    v5 = v38[1];
    if (v39)
    {
      if (v39)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B11C0;
      v39 = v4;
      v40 = v5;
      re::TypeBuilder::beginEnumType(v38, &v35, 1, 1, &v39);
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
            *&v37.var0 = 2 * v11;
            v37.var1 = v10;
            re::TypeBuilder::addEnumConstant(v38, v15, &v37);
            if (*&v37.var0)
            {
              if (*&v37.var0)
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
              *&v37.var0 = 2 * v20;
              v37.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v38, v24, &v37);
              if (*&v37.var0)
              {
                if (*&v37.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v38, v26);
      xmmword_1EE1B11A0 = v37;
      if (v35)
      {
        if (v35)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v36);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1B0F20);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "ActivatesGroup";
      qword_1EE1B0FC0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "FollowsGroup";
      qword_1EE1B0FC8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "IgnoresGroup";
      qword_1EE1B0FD0 = v34;
      __cxa_guard_release(&qword_1EE1B0F20);
    }
  }
}

void re::ecs2::introspect_RemoteEffectsSettingsModifier(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B0F30, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B0F38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F38))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B11C8, "RemoteEffectsSettingsModifier", 4, 4, 1, 1);
      qword_1EE1B11C8 = &unk_1F5D0C658;
      qword_1EE1B1208 = &re::ecs2::introspect_RemoteEffectsSettingsModifier(BOOL)::enumTable;
      dword_1EE1B11D8 = 9;
      __cxa_guard_release(&qword_1EE1B0F38);
    }

    if (byte_1EE1B0ECC)
    {
      break;
    }

    byte_1EE1B0ECC = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B11C8, a2);
    v33 = 0x95FD7DE308BC53ECLL;
    v34 = "RemoteEffectsSettingsModifier";
    v37 = 0x607DD0F01DCLL;
    v38 = "uint32_t";
    v4 = v36[0];
    v5 = v36[1];
    if (v37)
    {
      if (v37)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1B1208;
      v37 = v4;
      v38 = v5;
      re::TypeBuilder::beginEnumType(v36, &v33, 1, 1, &v37);
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
            *&v35.var0 = 2 * v11;
            v35.var1 = v10;
            re::TypeBuilder::addEnumConstant(v36, v15, &v35);
            if (*&v35.var0)
            {
              if (*&v35.var0)
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
              *&v35.var0 = 2 * v20;
              v35.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v36, v24, &v35);
              if (*&v35.var0)
              {
                if (*&v35.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v36, v26);
      xmmword_1EE1B11E8 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1B0F30);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Default";
      qword_1EE1B0F98 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "ObjectManipulation";
      qword_1EE1B0FA0 = v32;
      __cxa_guard_release(&qword_1EE1B0F30);
    }
  }
}

void re::ecs2::introspect_RemoteEffectsArray(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B0F40, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F40))
  {
    re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B1210, "RemoteEffectsArray", 8, 8, 0, 0);
    qword_1EE1B1210 = &unk_1F5D0C698;
    qword_1EE1B1250 = re::internal::defaultConstruct<re::ecs2::RemoteEffectsArray>;
    qword_1EE1B1258 = re::ecs2::RemoteEffectsArray::introspectionSerialize;
    qword_1EE1B1260 = re::ecs2::RemoteEffectsArray::introspectionDeserialize;
    qword_1EE1B1268 = re::ecs2::RemoteEffectsArray::introspectionDeepCopy;
    qword_1EE1B1278 = 0;
    qword_1EE1B1270 = 0;
    dword_1EE1B1220 = 11;
    __cxa_guard_release(&qword_1EE1B0F40);
  }

  if ((byte_1EE1B0ECD & 1) == 0)
  {
    byte_1EE1B0ECD = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B1210, a2);
    v3[0] = 0xE1658F08C7C053FALL;
    v3[1] = "RemoteEffectsArray";
    xmmword_1EE1B1230 = v4;
    if (v3[0])
    {
      if (v3[0])
      {
      }
    }
  }
}

void re::internal::defaultDestructV2<re::ecs2::RemoteEffectsArray>(const void **a1)
{
  v1 = *a1;
  if (v1)
  {
    CFRelease(v1);
  }
}

void *re::ecs2::allocInfo_RemoteEffectsGroupID(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0F58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F58))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B13A0, "RemoteEffectsGroupID");
    __cxa_guard_release(&qword_1EE1B0F58);
  }

  return &unk_1EE1B13A0;
}

void re::ecs2::initInfo_RemoteEffectsGroupID(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v11[0] = 0x1E3DEFF8538374FCLL;
  v11[1] = "RemoteEffectsGroupID";
  if (v11[0])
  {
    if (v11[0])
    {
    }
  }

  *(this + 2) = v12;
  if ((atomic_load_explicit(&qword_1EE1B0F50, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B0F50);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint64_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_uuid";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B0F48 = v9;
      __cxa_guard_release(&qword_1EE1B0F50);
    }
  }

  *(this + 2) = 0x800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B0F48;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsGroupID>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsGroupID>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsGroupID>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsGroupID>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v10 = v12;
}

void *re::ecs2::allocInfo_RemoteEffectsStyle(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B0F70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B0F70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1430, "RemoteEffectsStyle");
    __cxa_guard_release(&qword_1EE1B0F70);
  }

  return &unk_1EE1B1430;
}

void re::ecs2::initInfo_RemoteEffectsStyle(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v80[0] = 0xE1658F08C9BDAAAALL;
  v80[1] = "RemoteEffectsStyle";
  if (v80[0])
  {
    if (v80[0])
    {
    }
  }

  *(this + 2) = v81;
  if ((atomic_load_explicit(&qword_1EE1B0F68, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B0F68);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_RemoteEffectsStyleType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "m_styleType";
      *(v8 + 16) = &qword_1EE1B10A8;
      *(v8 + 24) = 0;
      *(v8 + 32) = 0xC00000001;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B14C0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint32_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_sources";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B14C8 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_uint64_t(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_uuid";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 3;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B14D0 = v16;
      v17 = re::introspectionAllocator(v16);
      re::ecs2::introspect_RemoteEffectsOpacityFunction(v17, v18);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_opacityFunction";
      *(v19 + 16) = &qword_1EE1B10F0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x1000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B14D8 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_BOOL(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_autoFadeEnabled";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x1200000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B14E0 = v23;
      v24 = re::introspectionAllocator(v23);
      v25 = re::introspect_ColorGamut3F(1);
      v26 = (*(*v24 + 32))(v24, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "m_colorGamutTint";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x1800000006;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1B14E8 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_float(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "m_intensityMultiplier";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x2800000007;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1B14F0 = v30;
      v31 = re::introspectionAllocator(v30);
      v33 = re::IntrospectionInfo<re::Optional<double>>::get(1, v32);
      v34 = (*(*v31 + 32))(v31, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "m_glowAppearDurationOverride";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x3800000008;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B14F8 = v34;
      v35 = re::introspectionAllocator(v34);
      v37 = re::IntrospectionInfo<re::Optional<double>>::get(1, v36);
      v38 = (*(*v35 + 32))(v35, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "m_glowDisappearDurationOverride";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x4800000009;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1B1500 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::introspect_AssetHandle(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "m_audioAssetHandle";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x580000000ALL;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE1B1508 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_BOOL(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "m_fadeUsesActiveTime";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x130000000BLL;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE1B1510 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_float(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "m_fadeUsesActiveTimeMultiplier";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x2C0000000CLL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE1B1518 = v50;
      v51 = re::introspectionAllocator(v50);
      v53 = re::introspect_double(1, v52);
      v54 = (*(*v51 + 32))(v51, 72, 8);
      *v54 = 1;
      *(v54 + 8) = "m_activationDelayTime";
      *(v54 + 16) = v53;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0x300000000DLL;
      *(v54 + 40) = 0;
      *(v54 + 48) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      qword_1EE1B1520 = v54;
      v55 = re::introspectionAllocator(v54);
      v57 = re::introspect_BOOL(1, v56);
      v58 = (*(*v55 + 32))(v55, 72, 8);
      *v58 = 1;
      *(v58 + 8) = "m_isHierarchical";
      *(v58 + 16) = v57;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0x140000000ELL;
      *(v58 + 40) = 0;
      *(v58 + 48) = 0;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      qword_1EE1B1528 = v58;
      v59 = re::introspectionAllocator(v58);
      v61 = re::introspect_BOOL(1, v60);
      v62 = (*(*v59 + 32))(v59, 72, 8);
      *v62 = 1;
      *(v62 + 8) = "m_isPlanar";
      *(v62 + 16) = v61;
      *(v62 + 24) = 0;
      *(v62 + 32) = 0x110000000FLL;
      *(v62 + 40) = 0;
      *(v62 + 48) = 0;
      *(v62 + 56) = 0;
      *(v62 + 64) = 0;
      qword_1EE1B1530 = v62;
      v63 = re::introspectionAllocator(v62);
      v65 = re::introspect_BOOL(1, v64);
      v66 = (*(*v63 + 32))(v63, 72, 8);
      *v66 = 1;
      *(v66 + 8) = "m_enableDirectPinchAnimation";
      *(v66 + 16) = v65;
      *(v66 + 24) = 0;
      *(v66 + 32) = 0x1500000010;
      *(v66 + 40) = 0;
      *(v66 + 48) = 0;
      *(v66 + 56) = 0;
      *(v66 + 64) = 0;
      qword_1EE1B1538 = v66;
      v67 = re::introspectionAllocator(v66);
      v68 = v67;
      v69 = qword_1EE1B0F60;
      if (!qword_1EE1B0F60)
      {
        v69 = re::ecs2::allocInfo_RemoteEffectsGroupID(v67);
        qword_1EE1B0F60 = v69;
        re::ecs2::initInfo_RemoteEffectsGroupID(v69, v70);
      }

      v71 = (*(*v68 + 32))(v68, 72, 8);
      *v71 = 1;
      *(v71 + 8) = "m_groupID";
      *(v71 + 16) = v69;
      *(v71 + 24) = 0;
      *(v71 + 32) = 0x7000000011;
      *(v71 + 40) = 0;
      *(v71 + 48) = 0;
      *(v71 + 56) = 0;
      *(v71 + 64) = 0;
      qword_1EE1B1540 = v71;
      v72 = re::introspectionAllocator(v71);
      re::ecs2::introspect_RemoteEffectsGroupBehavior(v72, v73);
      v74 = (*(*v72 + 32))(v72, 72, 8);
      *v74 = 1;
      *(v74 + 8) = "m_groupBehavior";
      *(v74 + 16) = &qword_1EE1B1180;
      *(v74 + 24) = 0;
      *(v74 + 32) = 0x7800000012;
      *(v74 + 40) = 0;
      *(v74 + 48) = 0;
      *(v74 + 56) = 0;
      *(v74 + 64) = 0;
      qword_1EE1B1548 = v74;
      v75 = re::introspectionAllocator(v74);
      v77 = re::introspect_BOOL(1, v76);
      v78 = (*(*v75 + 32))(v75, 72, 8);
      *v78 = 1;
      *(v78 + 8) = "m_createPerHitTestSource";
      *(v78 + 16) = v77;
      *(v78 + 24) = 0;
      *(v78 + 32) = 0x1600000013;
      *(v78 + 40) = 0;
      *(v78 + 48) = 0;
      *(v78 + 56) = 0;
      *(v78 + 64) = 0;
      qword_1EE1B1550 = v78;
      __cxa_guard_release(&qword_1EE1B0F68);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 19;
  *(this + 8) = &qword_1EE1B14C0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsStyle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsStyle>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsStyle>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsStyle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v79 = v81;
}

double re::internal::defaultConstruct<re::ecs2::RemoteEffectsStyle>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 3;
  *(a3 + 16) = 256;
  *(a3 + 20) = 1;
  *(a3 + 22) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a3 + 24) = _D0;
  *(a3 + 32) = 1065353216;
  *(a3 + 36) = 0;
  *(a3 + 40) = _D0;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0;
  *(a3 + 72) = 0;
  result = 0.0;
  *(a3 + 88) = 0u;
  *(a3 + 104) = 0u;
  *(a3 + 120) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::RemoteEffectsStyle>(uint64_t a1)
{
  *a1 = 0;
  *(a1 + 8) = 3;
  *(a1 + 16) = 256;
  *(a1 + 20) = 1;
  *(a1 + 22) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 24) = _D0;
  *(a1 + 32) = 1065353216;
  *(a1 + 36) = 0;
  *(a1 + 40) = _D0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 72) = 0;
  result = 0.0;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0;
  return result;
}

uint64_t re::ecs2::RemoteEffectsComponent::initComponentType(uint64_t a1)
{
  {
    if (v17)
    {
      v18 = re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent>;
      if (!re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent>)
      {
        v18 = re::ecs2::allocInfo_RemoteEffectsComponent(v17);
        re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent> = v18;
        re::ecs2::initInfo_RemoteEffectsComponent(v18, v19);
      }

      re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = v18;
    }
  }

  v2 = strlen(*(re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info + 6));
  v23[0] = re::ecs2::Component::dropComponentSuffix(*(re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info + 6), v2);
  v23[1] = v3;
  v4 = re::globalAllocators(v23[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v23, 0, 2);
  *v6 = &unk_1F5CFA6E0;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0xA0);
  {
    if (v20)
    {
      v21 = re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent>;
      if (!re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent>)
      {
        v21 = re::ecs2::allocInfo_RemoteEffectsComponent(v20);
        re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent> = v21;
        re::ecs2::initInfo_RemoteEffectsComponent(v21, v22);
      }

      re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = v21;
    }
  }

  v8 = re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info;
  v9 = v8[6];
  if (v9)
  {
    v10 = *v9;
    if (*v9)
    {
      v11 = v9[1];
      if (v11)
      {
        v12 = (v9 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }
    }
  }

  else
  {
    v10 = 0;
  }

  v24 = 2 * v10;
  v25 = v9;
  *v7 = v26;
  if (v24)
  {
    if (v24)
    {
    }
  }

  re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  result = re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
  *(re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 1) = re::ecs2::RemoteEffectsComponent::clone;
  return result;
}

uint64_t re::ecs2::RemoteEffectsComponent::clone(re::ecs2::RemoteEffectsComponent *this, const re::ecs2::Component *a2)
{
  (*(*re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 32))(out);
  v3 = *out;
  LegacyStyle = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (LegacyStyle)
  {
    v5 = *(LegacyStyle + 17);
  }

  else
  {
    v5 = 1;
  }

  v6 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v6)
  {
    *(v6 + 17) = v5 & 1;
  }

  *(v3 + 82) = *(this + 82);
  v7 = *(this + 7);
  if (v7)
  {
    v8 = (v7 << 7) - 128;
    v9 = (*(this + 9) + 20);
    do
    {
      v11 = *v9;
      v9 += 128;
      v10 = v11;
      if (v11)
      {
        break;
      }

      v12 = v8;
      v8 -= 128;
    }

    while (v12);
  }

  else
  {
    v10 = 0;
  }

  v13 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v13)
  {
    *(v13 + 20) = v10 & 1;
  }

  v14 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v14)
  {
    v15 = *(v14 + 12);
  }

  else
  {
    v15 = 0;
  }

  v16 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v16)
  {
    *(v16 + 12) = v15;
    *(v16 + 22) = v15 == 0;
  }

  if (v3 != this)
  {
    v17 = *(this + 5);
    if (*(v3 + 40))
    {
      v18 = (v3 + 40);
      if (v17)
      {
        re::DynamicArray<re::ecs2::RemoteEffectsStyle>::copy(v18, this + 40);
        ++*(v3 + 64);
      }

      else
      {
        re::DynamicArray<re::ecs2::RemoteEffectsStyle>::clear(v18);
      }
    }

    else if (v17)
    {
      v19 = *(this + 7);
      *(v3 + 40) = v17;
      re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity((v3 + 40), v19);
      ++*(v3 + 64);
      re::DynamicArray<re::ecs2::RemoteEffectsStyle>::copy((v3 + 40), this + 40);
    }
  }

  v20 = *(v3 + 56);
  if (v20)
  {
    v21 = *(v3 + 72);
    v22 = v20 << 7;
    do
    {
      uuid_generate_random(out);
      *v21 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
      v21 += 16;
      v22 -= 128;
    }

    while (v22);
  }

  v23 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v23)
  {
    v24 = *(v23 + 24);
    v25 = *(v23 + 32);
  }

  else
  {
    v24 = 0x3F8000003F800000;
    v25 = 1065353216;
  }

  v26 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v26)
  {
    *(v26 + 24) = v24;
    *(v26 + 32) = v25;
    *(v26 + 36) = BYTE4(v25);
  }

  v27 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v27)
  {
    v28 = *(v27 + 40);
  }

  else
  {
    v28 = 1.0;
  }

  v29 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v29)
  {
    *(v29 + 40) = v28;
  }

  v30 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v30)
  {
    v31 = *(v30 + 18);
  }

  else
  {
    v31 = 0;
  }

  v32 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v32)
  {
    *(v32 + 18) = v31 & 1;
  }

  v33 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v33)
  {
    v34 = *(v33 + 16);
  }

  else
  {
    v34 = 0;
  }

  v35 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v35)
  {
    *(v35 + 16) = v34;
  }

  v36 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v36)
  {
    v37 = *(v36 + 19);
  }

  else
  {
    v37 = 0;
  }

  v38 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v38)
  {
    *(v38 + 19) = v37 & 1;
  }

  v39 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v39)
  {
    v40 = *(v39 + 44);
  }

  else
  {
    v40 = 1.0;
  }

  v41 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v41)
  {
    *(v41 + 44) = v40;
  }

  v42 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v42)
  {
    v43 = *(v42 + 48);
  }

  else
  {
    v43 = 0;
  }

  v44 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v44)
  {
    *(v44 + 48) = v43;
  }

  v45 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (!v45 || (*(v45 + 56) & 1) != 0)
  {
    v46 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
    if (v46)
    {
      v63[0] = *(v46 + 56);
      if (v63[0] == 1)
      {
        v64 = *(v46 + 64);
      }
    }

    else
    {
      v63[0] = 1;
      v64 = 0x3FC999999999999ALL;
    }

    re::ecs2::RemoteEffectsComponent::setGlowAppearDurationOverride(v3, v63);
  }

  v47 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (!v47 || *(v47 + 72) == 1)
  {
    v48 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
    if (v48)
    {
      v61[0] = *(v48 + 72);
      if (v61[0] == 1)
      {
        v62 = *(v48 + 80);
      }
    }

    else
    {
      v61[0] = 1;
      v62 = 0x3FC999999999999ALL;
    }

    re::ecs2::RemoteEffectsComponent::setGlowDisappearDurationOverride(v3, v61);
  }

  re::ecs2::RemoteEffectsComponent::getAudioAssetHandle(this, v60);
  re::ecs2::RemoteEffectsComponent::setAudioAssetHandle(v3, v60);
  re::AssetHandle::~AssetHandle(v60);
  v49 = *(this + 4);
  v50 = *(v3 + 32);
  if (v50 != v49)
  {
    if (v50)
    {
      CFRelease(v50);
    }

    if (v49)
    {
      Default = CFAllocatorGetDefault();
      Copy = CFArrayCreateCopy(Default, v49);
    }

    else
    {
      Copy = 0;
    }

    *(v3 + 32) = Copy;
  }

  v53 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v53)
  {
    v54 = *(v53 + 112);
  }

  else
  {
    v54 = 0;
  }

  v55 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v55)
  {
    *(v55 + 112) = v54;
  }

  v56 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(this);
  if (v56)
  {
    v57 = *(v56 + 120);
  }

  else
  {
    v57 = 0;
  }

  v58 = re::ecs2::RemoteEffectsComponent::getLegacyStyle(v3);
  if (v58)
  {
    *(v58 + 120) = v57;
  }

  return v3;
}

re::ecs2::RemoteEffectsComponent *re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(re::ecs2::RemoteEffectsComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF0020;
  *(v2 + 72) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0;
  __asm { FMOV            V2.2S, #1.0 }

  *(v2 + 80) = 0x10000000100;
  *(v2 + 88) = _D2;
  *(v2 + 96) = 1065353216;
  *(v2 + 100) = 0;
  *(v2 + 104) = _D2;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 136) = 0;
  *(v2 + 152) = 0;
  *(&v15 + 1) = 3;
  LODWORD(v16) = 256;
  WORD2(v16) = 1;
  BYTE6(v16) = 1;
  *(&v16 + 1) = _D2;
  LODWORD(v17) = 1065353216;
  BYTE4(v17) = 0;
  *(&v17 + 1) = _D2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  memset(v21, 0, sizeof(v21));
  v22 = 0;
  uuid_generate_random(out);
  *&v15 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
  v9[1] = v16;
  v9[2] = v17;
  v10 = 0;
  v9[0] = v15;
  v11 = 0;
  v12 = 0;
  re::AssetHandle::AssetHandle(v13, v21);
  v13[3] = 0;
  v14 = 0;
  re::ecs2::RemoteEffectsComponent::addOrUpdateStyle(this, v9);
  re::AssetHandle::~AssetHandle(v13);
  re::AssetHandle::~AssetHandle(v21);
  return this;
}

re::AssetHandle *re::ecs2::RemoteEffectsComponent::addOrUpdateStyle(re::AssetHandle *result, __int128 *a2)
{
  if (*a2)
  {
    v3 = *(result + 7);
    if (v3)
    {
      v4 = 0;
      v5 = *(result + 9);
      v6 = v3 << 7;
      while (*(v5 + v4) != *a2)
      {
        v4 += 128;
        if (v6 == v4)
        {
          goto LABEL_6;
        }
      }

      v8 = v5 + v4;
      v9 = *a2;
      v10 = a2[1];
      v11 = a2[2];
      *(v8 + 48) = *(a2 + 6);
      *(v8 + 16) = v10;
      *(v8 + 32) = v11;
      *v8 = v9;
      if (*(v5 + v4 + 56))
      {
        if ((*(a2 + 56) & 1) == 0)
        {
          *(v8 + 56) = 0;
LABEL_16:
          v14 = v5 + v4;
          if (*(v5 + v4 + 72))
          {
            if ((*(a2 + 72) & 1) == 0)
            {
              *(v14 + 72) = 0;
              goto LABEL_23;
            }

            v15 = *(a2 + 10);
            v16 = v5 + v4;
          }

          else
          {
            if ((*(a2 + 72) & 1) == 0)
            {
LABEL_23:
              v17 = v5 + v4;
              result = re::AssetHandle::operator=(v5 + v4 + 88, a2 + 11);
              v18 = *(a2 + 14);
              *(v17 + 120) = *(a2 + 30);
              *(v17 + 112) = v18;
              return result;
            }

            *(v14 + 72) = 1;
            v16 = v5 + v4;
            v15 = *(a2 + 10);
          }

          *(v16 + 80) = v15;
          goto LABEL_23;
        }

        v12 = *(a2 + 8);
        v13 = v5 + v4;
      }

      else
      {
        if ((*(a2 + 56) & 1) == 0)
        {
          goto LABEL_16;
        }

        *(v8 + 56) = 1;
        v13 = v5 + v4;
        v12 = *(a2 + 8);
      }

      *(v13 + 64) = v12;
      goto LABEL_16;
    }

LABEL_6:
    v7 = (result + 40);

    return re::DynamicArray<re::ecs2::RemoteEffectsStyle>::add(v7, a2);
  }

  return result;
}

re::AssetHandle *re::DynamicArray<re::ecs2::RemoteEffectsStyle>::add(_anonymous_namespace_ *this, __int128 *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + (v4 << 7);
  v6 = *a2;
  v7 = a2[1];
  v8 = a2[2];
  *(v5 + 48) = *(a2 + 6);
  *(v5 + 16) = v7;
  *(v5 + 32) = v8;
  *v5 = v6;
  v9 = *(a2 + 56);
  *(v5 + 56) = v9;
  if (v9 == 1)
  {
    *(v5 + 64) = *(a2 + 8);
  }

  v10 = *(a2 + 72);
  *(v5 + 72) = v10;
  if (v10 == 1)
  {
    *(v5 + 80) = *(a2 + 10);
  }

  result = re::AssetHandle::AssetHandle((v5 + 88), (a2 + 88));
  *(v5 + 112) = *(a2 + 14);
  *(v5 + 120) = *(a2 + 30);
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::AssetHandle *re::DynamicArray<re::ecs2::RemoteEffectsStyle>::clear(re::AssetHandle *result)
{
  v1 = result;
  v2 = *(result + 2);
  *(result + 2) = 0;
  if (v2)
  {
    v3 = v2 << 7;
    result = (*(result + 4) + 88);
    do
    {
      re::AssetHandle::~AssetHandle(result);
      result = (v4 + 128);
      v3 -= 128;
    }

    while (v3);
  }

  ++*(v1 + 6);
  return result;
}

void re::DynamicArray<re::ecs2::RemoteEffectsStyle>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v13 = (a2 << 7) | 0x58;
    v14 = a2;
    do
    {
      re::AssetHandle::~AssetHandle((*(a1 + 32) + v13));
      ++v14;
      v13 += 128;
    }

    while (v14 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 7) | 0x58;
      __asm { FMOV            V2.2S, #1.0 }

      do
      {
        v12 = *(a1 + 32) + v6;
        *(v12 - 88) = 0;
        *(v12 - 80) = 3;
        *(v12 - 72) = 256;
        *(v12 - 68) = 1;
        *(v12 - 66) = 1;
        *(v12 - 64) = _D2;
        *(v12 - 56) = 1065353216;
        *(v12 - 52) = 0;
        *(v12 - 48) = _D2;
        *(v12 - 40) = 0;
        *(v12 - 32) = 0;
        *(v12 - 16) = 0;
        *v12 = 0uLL;
        *(v12 + 16) = 0uLL;
        v6 += 128;
        *(v12 + 32) = 0;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1B1020, 0);
  *(&qword_1EE1B1030 + 6) = 0;
  qword_1EE1B1030 = 0;
  *&xmmword_1EE1B1040 = 0;
  *(&xmmword_1EE1B1040 + 1) = 0xFFFFFFFFLL;
  qword_1EE1B1020 = &unk_1F5CADA48;
  qword_1EE1B1058 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1B1050);
  qword_1EE1B1020 = &unk_1F5CFA5D8;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  *&v17 = 0;
  *(&v17 + 1) = 3;
  LODWORD(v18) = 256;
  WORD2(v18) = 1;
  BYTE6(v18) = 1;
  __asm { FMOV            V0.2S, #1.0 }

  *(&v18 + 1) = _D0;
  LODWORD(v19) = 1065353216;
  BYTE4(v19) = 0;
  *(&v19 + 1) = _D0;
  v20[3] = 0;
  v21 = 0;
  v13 = *(this + 2);
  if (v13 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::growCapacity(this, v13 + 1);
    v13 = *(this + 2);
  }

  v14 = *(this + 4) + (v13 << 7);
  *(v14 + 48) = 0;
  *(v14 + 16) = v18;
  *(v14 + 32) = v19;
  *v14 = v17;
  *(v14 + 56) = 0;
  *(v14 + 72) = 0;
  *(v14 + 96) = 0;
  v20[1] = 0;
  *(v14 + 88) = 0;
  v20[0] = 0;
  *(v14 + 104) = 0;
  v20[2] = 0;
  *(v14 + 112) = 0;
  *(v14 + 120) = 0;
  ++*(this + 2);
  ++*(this + 6);
  re::AssetHandle::~AssetHandle(v20);
  v15 = (*(this + 4) + (*(this + 2) << 7) - 128);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v15);
  return v15;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::RemoteEffectsStyle>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 7);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 7);
}

void *re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 57)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 128, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 7;
          result = (*(*result + 32))(result, a2 << 7, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_20;
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
LABEL_20:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v8 + (v9 << 7);
        v11 = v8 + 88;
        v12 = v7 + 8;
        do
        {
          v13 = *(v11 - 88);
          v14 = *(v11 - 72);
          v15 = *(v11 - 56);
          *(v12 - 2) = *(v11 - 40);
          *(v12 - 3) = v14;
          *(v12 - 2) = v15;
          *(v12 - 4) = v13;
          v16 = *(v11 - 32);
          *(v12 - 8) = v16;
          if (v16 == 1)
          {
            *v12 = *(v11 - 24);
          }

          v17 = v11 - 88;
          v18 = *(v11 - 16);
          *(v12 + 8) = v18;
          if (v18 == 1)
          {
            v12[2] = *(v11 - 8);
          }

          v12[3] = 0;
          v12[4] = 0;
          v12[5] = 0;
          v12[4] = *(v11 + 8);
          *(v11 + 8) = 0;
          v19 = v12[3];
          v12[3] = 0;
          v12[3] = *v11;
          *v11 = v19;
          v20 = v12[5];
          v21 = *(v11 + 24);
          v12[5] = *(v11 + 16);
          *(v11 + 16) = v20;
          v12[6] = v21;
          *(v12 + 14) = *(v11 + 32);
          re::AssetHandle::~AssetHandle(v11);
          v11 = v22 + 128;
          v12 += 16;
        }

        while (v17 + 128 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

void *re::DynamicArray<re::ecs2::RemoteEffectsStyle>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 7;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 128;
        v11 -= 128;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 7);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 7);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::RemoteEffectsStyle>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs222RemoteEffectsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::RemoteEffectsComponentExtraData::~RemoteEffectsComponentExtraData(re::ecs2::RemoteEffectsComponentExtraData *this)
{
  *this = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF0020;
  re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(this + 40);
  v2 = *(this + 4);
  if (v2)
  {
    CFRelease(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs231RemoteEffectsComponentExtraDataELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 1;
    *(a2 + 8) = 0;
  }
}

double re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

re::ecs2::RemoteEffectsComponent *re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::doMakeComponent@<X0>(re::ecs2::RemoteEffectsComponent **a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 160, 0);
  result = re::ecs2::RemoteEffectsComponent::RemoteEffectsComponent(v2);
  *a1 = result;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CFA750;
  v5 = (v4 + 480);
  *(v4 + 60) = 0;
  *(v4 + 488) = 0u;
  *(v4 + 126) = 1;
  *(v4 + 64) = 0;
  *(v4 + 520) = 0u;
  *(v4 + 134) = 0;
  *(v4 + 34) = 0u;
  *(v4 + 140) = 1;
  *(v4 + 71) = 0;
  *(v4 + 36) = 0u;
  *(v4 + 148) = 0;
  *(v4 + 600) = 0u;
  *(v4 + 154) = 1;
  *(v4 + 39) = 0u;
  *(v4 + 162) = 0;
  *(v4 + 80) = 0;
  *(v4 + 84) = 0;
  *(v4 + 170) = 0;
  *(v4 + 41) = 0u;
  *(v4 + 176) = 0;
  *(v4 + 43) = 0u;
  *(v4 + 708) = 0x1FFFFFFFFLL;
  *(v4 + 45) = 0u;
  *(v4 + 186) = 0;
  *(v4 + 92) = 0;
  *(v4 + 192) = 0;
  *(v4 + 47) = 0u;
  *(v4 + 772) = 0x1FFFFFFFFLL;
  return v3;
}

uint64_t re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::doGetComponentIntrospectionInfo()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::ecs2::RemoteEffectsComponent>(BOOL)::info = re::internal::getOrCreateInfo("RemoteEffectsComponent", re::ecs2::allocInfo_RemoteEffectsComponent, re::ecs2::initInfo_RemoteEffectsComponent, &re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsComponent>, 0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[89];
}

__n128 re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::RemoteEffectsComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CFA6E0;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::RemoteEffectsComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::RemoteEffectsComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CFA750;
  re::ecs2::ComponentBucketsBase::deinit((a1 + 480));
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketWillRemoveComponentFromBucketEvent const&)>>::deinit(a1 + 720);
  re::DynamicArray<unsigned long>::deinit(a1 + 720);
  re::DataArray<re::Function<void ()(re::ecs2::ComponentBucketsBase *,re::ecs2::ComponentBucketsDidAddComponentToBucketEvent const&)>>::deinit(a1 + 656);
  re::DynamicArray<unsigned long>::deinit(a1 + 656);
  re::BucketArray<unsigned long,8ul>::deinit(a1 + 600);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 600);
  re::BucketArray<re::HashTable<re::ecs2::Component *,re::DataArrayHandle<re::ecs2::Component *>,re::Hash<re::ecs2::Component *>,re::EqualTo<re::ecs2::Component *>,true,false>,8ul>::deinit(a1 + 544);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 544);
  re::BucketArray<re::DataArray<re::ecs2::Component *>,8ul>::deinit(a1 + 488);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1 + 488);

  re::ecs2::SceneComponentCollectionBase::~SceneComponentCollectionBase(a1);
}

re::AssetHandle *re::DynamicArray<re::ecs2::RemoteEffectsStyle>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::ecs2::RemoteEffectsStyle>::setCapacity(a1, *(a2 + 16));
    result = std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RemoteEffectsStyle *,re::ecs2::RemoteEffectsStyle *,re::ecs2::RemoteEffectsStyle *>(*(a2 + 32), *(a2 + 32) + (a1[2] << 7), a1[4]);
    v9 = a1[2];
    if (v9 != v4)
    {
      v10 = *(a2 + 32);
      v11 = v10 + (v4 << 7);
      v12 = a1[4];
      v13 = v9 << 7;
      do
      {
        v14 = v12 + v13;
        v15 = v10 + v13;
        v16 = *(v10 + v13);
        v17 = *(v10 + v13 + 16);
        v18 = *(v10 + v13 + 32);
        *(v14 + 48) = *(v10 + v13 + 48);
        *(v14 + 16) = v17;
        *(v14 + 32) = v18;
        *v14 = v16;
        v19 = *(v10 + v13 + 56);
        *(v14 + 56) = v19;
        if (v19 == 1)
        {
          *(v14 + 64) = *(v15 + 64);
        }

        v20 = *(v15 + 72);
        *(v14 + 72) = v20;
        if (v20 == 1)
        {
          *(v12 + v13 + 80) = *(v10 + v13 + 80);
        }

        result = re::AssetHandle::AssetHandle((v12 + v13 + 88), (v10 + v13 + 88));
        *(v14 + 112) = *(v15 + 112);
        *(v14 + 120) = *(v15 + 120);
        v10 += 128;
        v12 += 128;
      }

      while (v15 + 128 != v11);
    }
  }

  else
  {
    result = std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RemoteEffectsStyle *,re::ecs2::RemoteEffectsStyle *,re::ecs2::RemoteEffectsStyle *>(*(a2 + 32), *(a2 + 32) + (v4 << 7), a1[4]);
    v6 = a1[2];
    if (v4 != v6)
    {
      v7 = (v6 << 7) - (v4 << 7);
      result = (a1[4] + (v4 << 7) + 88);
      do
      {
        re::AssetHandle::~AssetHandle(result);
        result = (v8 + 128);
        v7 -= 128;
      }

      while (v7);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t std::__copy_impl::operator()[abi:nn200100]<re::ecs2::RemoteEffectsStyle *,re::ecs2::RemoteEffectsStyle *,re::ecs2::RemoteEffectsStyle *>(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (result != a2)
  {
    v5 = result;
    for (i = 0; ; i += 128)
    {
      v7 = v5 + i;
      v8 = a3 + i;
      v9 = *(v5 + i);
      v10 = *(v5 + i + 16);
      v11 = *(v5 + i + 32);
      *(v8 + 48) = *(v5 + i + 48);
      *(v8 + 16) = v10;
      *(v8 + 32) = v11;
      *v8 = v9;
      if ((*(a3 + i + 56) & 1) == 0)
      {
        break;
      }

      if (*(v5 + i + 56))
      {
        v12 = *(v5 + i + 64);
        v13 = a3 + i;
LABEL_8:
        *(v13 + 64) = v12;
        goto LABEL_10;
      }

      *(v8 + 56) = 0;
LABEL_10:
      v14 = a3 + i;
      if (*(a3 + i + 72))
      {
        if ((*(v7 + 72) & 1) == 0)
        {
          *(v14 + 72) = 0;
          goto LABEL_17;
        }

        v15 = *(v5 + i + 80);
        v16 = a3 + i;
        goto LABEL_15;
      }

      if (*(v7 + 72))
      {
        *(v14 + 72) = 1;
        v16 = a3 + i;
        v15 = *(v5 + i + 80);
LABEL_15:
        *(v16 + 80) = v15;
      }

LABEL_17:
      v17 = a3 + i;
      result = re::AssetHandle::operator=(a3 + i + 88, (v5 + i + 88));
      v18 = *(v7 + 112);
      *(v17 + 120) = *(v7 + 120);
      *(v17 + 112) = v18;
      if (v7 + 128 == a2)
      {
        return result;
      }
    }

    if ((*(v5 + i + 56) & 1) == 0)
    {
      goto LABEL_10;
    }

    *(v8 + 56) = 1;
    v13 = a3 + i;
    v12 = *(v5 + i + 64);
    goto LABEL_8;
  }

  return result;
}

BOOL re::ecs2::WrapSystemComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, unint64_t started, unint64_t a4, uint64_t a5)
{
  v6 = a5;
  v77 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v72, a5, 0);
  v9 = v72;
  v60 = a4;
  v61 = v72;
  v62 = DWORD2(v72);
  v10 = WORD4(v72);
  v11 = HIWORD(DWORD2(v72));
  if (v72 != v6 || WORD4(v72) != 0xFFFF || v11 != 0xFFFF)
  {
    v52 = started;
    v53 = v6;
    while (1)
    {
      v14 = v11;
      v15 = *(v9 + 16);
      if (v15 <= v11)
      {
        goto LABEL_56;
      }

      v16 = *(*(*(v9 + 32) + 16 * v11) + 8 * v10);
      if (!v16[30])
      {
        break;
      }

      v14 = v16[46];
      if (v14 <= 0xC)
      {
        goto LABEL_57;
      }

      v17 = v16[2];
      v18 = v16[49];
      v19 = *(v17 + 192);
      v20 = !*(v16[47] + 1160) || v18 == 0;
      v21 = v20 || v19 == 0;
      if (v21 || !*(v19 + 40))
      {
        break;
      }

      v22 = re::AssetHandle::loadedAsset<re::MeshAsset>((v19 + 32));
      if (v22)
      {
        v23 = (v22 + 640);
        v55 = v17;
        v24 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v24)
        {
          v25 = (v24 + 216);
        }

        else
        {
          v25 = v23;
        }

        v5 = v18[2];
        v26 = v18[3];
        v27 = v18[8];
        v58 = v18[9];
        v28 = *(v16[49] + 96);
        v56 = *(v16[49] + 88);
        v29 = re::globalAllocators(v24);
        v30 = (*(*v29[2] + 32))(v29[2], 24, 8);
        *(v30 + 1) = 0;
        *(v30 + 2) = 0;
        *v30 = 0;
        *(v30 + 1) = v5;
        v57 = v30;
        if (v5)
        {
          if (v5 >> 62)
          {
            goto LABEL_60;
          }

          v32 = 4 * v5;
          *(v30 + 2) = v33;
          if (v33)
          {
            started = v33;
            if (v5 != 1)
            {
              v32 -= 4;
              memset(v33, 255, v32);
              started += v32;
            }

            v15 = 0;
            v14 = 0;
            *started = -1;
            v35 = (v28 + 120);
            v36 = v26 + 4;
            while (v27 != v14)
            {
              v37 = *(*(v58 + 8 * v14) + 480);
              if (v37)
              {
                started = *(v36 + 2 * v15);
                v32 = v37[4];
                if (v32 <= started)
                {
                  goto LABEL_54;
                }

                started = *(v37[5] + 2 * started);
                v32 = v37[1];
                if (v32 <= started)
                {
                  goto LABEL_55;
                }

                v38 = re::MeshNameMap::instanceIndex(v25, (v37[2] + 40 * started));
                if (v38 != 0xFFFF)
                {
                  v32 = v38;
                  started = re::MeshNameMap::meshPartStartIndexForInstance(v25, v38);
                  if (re::MeshNameMap::meshPartStartIndexForInstance(v25, v32) - started == 1)
                  {
                    v39 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v16 + 29), started);
                    started = *(v57 + 1);
                    if (started <= v14)
                    {
                      goto LABEL_58;
                    }

                    v40 = (*(v57 + 2) + v15);
                    *v40 = v39;
                    if (v56 <= v14)
                    {
                      goto LABEL_59;
                    }

                    ++*(v35 - 108);
                    *v35 = v40;
                  }
                }
              }

              ++v14;
              v35 += 21;
              v15 += 4;
              if (v5 == v14)
              {
                goto LABEL_40;
              }
            }

            re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v27, v27);
            _os_crash();
            __break(1u);
LABEL_54:
            v63 = 0;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v72 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v64 = 136315906;
            v65 = "operator[]";
            v66 = 1024;
            v67 = 476;
            v68 = 2048;
            v69 = started;
            v70 = 2048;
            v71 = v32;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_55:
            v63 = 0;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v72 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v64 = 136315906;
            v65 = "operator[]";
            v66 = 1024;
            v67 = 476;
            v68 = 2048;
            v69 = started;
            v70 = 2048;
            v71 = v32;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_56:
            v63 = 0;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v72 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v64 = 136315906;
            v65 = "operator[]";
            v66 = 1024;
            v67 = 797;
            v68 = 2048;
            v69 = v14;
            v70 = 2048;
            v71 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_57:
            v63 = 0;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v72 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v64 = 136315906;
            v65 = "operator[]";
            v66 = 1024;
            v67 = 476;
            v68 = 2048;
            v69 = 12;
            v70 = 2048;
            v71 = v14;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_58:
            v63 = 0;
            v75 = 0u;
            v76 = 0u;
            v73 = 0u;
            v74 = 0u;
            v72 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v64 = 136315906;
            v65 = "operator[]";
            v66 = 1024;
            v67 = 468;
            v68 = 2048;
            v69 = v14;
            v70 = 2048;
            v71 = started;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_59:
            re::internal::assertLog(6, v34, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v14, v56);
            _os_crash();
            __break(1u);
LABEL_60:
            re::internal::assertLog(6, v31, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 4, v5);
            _os_crash();
            __break(1u);
          }

          re::internal::assertLog(4, v34, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
          _os_crash();
          __break(1u);
        }

LABEL_40:
        v41 = re::ecs2::EntityComponentCollection::getOrAdd((v55 + 48), re::ecs2::ComponentImpl<re::ecs2::WrapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v42 = *(*(*(a1 + 8) + 232) + 144);
        if (v42)
        {
          v43 = (v42 + 8);
        }

        else
        {
          v43 = 0;
        }

        inited = objc_initWeak(&location, v43);
        *&v74 = 0;
        v72 = 0u;
        v73 = 0u;
        *(&v73 + 1) = re::globalAllocators(inited)[2];
        *&v74 = 0;
        re::FramePersistentPtr<re::ecs2::WrapComponent::WrapDeformerInputs,re::FrameManager>::reset((v41 + 32), &location, v57, &v72);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v72);
        objc_destroyWeak(&location);
        location = 0;
        v45 = v60;
        v46 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v61);
        started = v52;
        re::ecs2::ComponentBucketsBase::moveComponent(*(v52 + 16), v45, v46, *(v52 + 32));
        v6 = v53;
      }

      else
      {
        v47 = *(v19 + 40);
        if (v47)
        {
          v48 = atomic_load((v47 + 896));
          if (v48 == 3)
          {
            break;
          }
        }

        re::AssetHandle::loadAsync((v19 + 32));
      }

LABEL_47:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v61);
      v9 = v61;
      v10 = v62;
      v11 = HIWORD(v62);
      if (v61 == v6 && v62 == 0xFFFF && HIWORD(v62) == 0xFFFF)
      {
        return *(v6 + 40) != 0;
      }
    }

    v49 = v60;
    v50 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v61);
    re::ecs2::ComponentBucketsBase::moveComponent(*(started + 16), v49, v50, *(started + 32));
    goto LABEL_47;
  }

  return *(v6 + 40) != 0;
}

uint64_t re::ecs2::WrapSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 296), v6, 0);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

uint64_t re::ecs2::WrapSystem::willRemoveSceneFromECSService(re::ecs2::WrapSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 44, &v15);
  if (result != -1)
  {
    v4 = *(this + 45) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 416, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 464, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 352, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_WrapComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_362, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_362))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1578, "WrapComponent");
    __cxa_guard_release(&_MergedGlobals_362);
  }

  return &unk_1EE1B1578;
}

void re::ecs2::initInfo_WrapComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xC0AEF0E1D4DA9F66;
  v10[1] = "WrapComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B1568, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B1568);
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
      qword_1EE1B1560 = v8;
      __cxa_guard_release(&qword_1EE1B1568);
    }
  }

  *(this + 2) = 0x5800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B1560;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WrapComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WrapComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WrapComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WrapComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs213WrapComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::ecs2::allocInfo_WrapSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1570, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1570))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1608, "WrapSystem");
    __cxa_guard_release(&qword_1EE1B1570);
  }

  return &unk_1EE1B1608;
}

void re::ecs2::initInfo_WrapSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x110E0641F85672;
  v6[1] = "WrapSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_WrapSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::WrapSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::WrapSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::WrapSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::WrapSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::WrapSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::WrapSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::WrapSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CFA7C0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::WrapSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CFA7C0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

void re::ecs2::WrapSystem::~WrapSystem(re::ecs2::WrapSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CFA7C0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CFA7C0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::WrapComponent>(uint64_t a1)
{
  *(a1 + 80) = 0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  v2 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5C80;
  inited = objc_initWeak(v2, 0);
  *(a1 + 40) = 0;
  *(a1 + 72) = re::globalAllocators(inited)[2];
  *(a1 + 80) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs213WrapComponentELNS_17RealityKitReleaseE7EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 7;
    *(a2 + 8) = 0;
  }
}

void re::ecs2::CARESortingDebuggingV2::dumpSorting(re::ecs2::CARESortingDebuggingV2 *this, __CFString *a2, const re::ecs2::CARESortingManagerV2 *a3)
{
  v185 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v143 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v5 = v4;
  v180 = 0;
  v181 = 0;
  v182 = 1;
  v183 = 0;
  v184 = 0;
  v179[0] = &v180;
  v179[1] = a3;
  v166 = a3;
  v145 = *(a3 + 456);
  v142 = v5;
  if (v145)
  {
    v6 = 0;
    v7 = *(a3 + 226);
    while (1)
    {
      v8 = *v7;
      v7 += 32;
      if (v8 < 0)
      {
        break;
      }

      if (v145 == ++v6)
      {
        LODWORD(v6) = *(a3 + 456);
        break;
      }
    }

    v9 = v6;
  }

  else
  {
    v9 = 0;
  }

  if (v9 != v145)
  {
    v10 = *(a3 + 456);
    do
    {
      v11 = *(v166 + 226) + (v9 << 7);
      v154 = *(v11 + 48);
      if (v154)
      {
        v12 = 0;
        v13 = *(v11 + 32);
        while (1)
        {
          v14 = *v13;
          v13 += 48;
          if (v14 < 0)
          {
            break;
          }

          if (v154 == ++v12)
          {
            LODWORD(v12) = *(v11 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v12) = 0;
      }

      v15 = *(v11 + 48);
      v148 = v9;
      obj = (*(v166 + 226) + (v9 << 7));
      if (v12 != v154)
      {
        do
        {
          v157 = v12;
          v16 = *(v11 + 32) + 192 * v12;
          v167 = *(v16 + 48);
          if (v167)
          {
            v17 = 0;
            v18 = (*(v16 + 32) + 8);
            while (1)
            {
              v19 = *v18;
              v18 += 6;
              if (v19 < 0)
              {
                break;
              }

              if (v167 == ++v17)
              {
                LODWORD(v17) = *(v16 + 48);
                break;
              }
            }
          }

          else
          {
            LODWORD(v17) = 0;
          }

          v160 = *(v11 + 32) + 192 * v12;
          if (v17 != v167)
          {
            do
            {
              v20 = *(v16 + 32) + 24 * v17;
              v21 = *(v20 + 16);
              v163 = (v20 + 16);
              v22 = *(v21 + 232);
              if (v22)
              {
                v23 = 0;
                v24 = (*(v21 + 216) + 8);
                while (1)
                {
                  v25 = *v24;
                  v24 += 6;
                  if (v25 < 0)
                  {
                    break;
                  }

                  if (v22 == ++v23)
                  {
                    LODWORD(v23) = *(v21 + 232);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v23) = 0;
              }

              if (v23 != v22)
              {
                do
                {
                  v26 = *(v21 + 216) + 24 * v23;
                  v29 = *(v26 + 16);
                  v28 = v26 + 16;
                  v27 = v29;
                  if (*(v29 + 300))
                  {
                    v30 = *(v27 + 304);
                    if (v30)
                    {
                      v31 = 0;
                      v32 = (*(v27 + 288) + 8);
                      while (1)
                      {
                        v33 = *v32;
                        v32 += 6;
                        if (v33 < 0)
                        {
                          break;
                        }

                        if (v30 == ++v31)
                        {
                          LODWORD(v31) = *(v27 + 304);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v31) = 0;
                    }

                    if (v31 != v30)
                    {
                      do
                      {
                        re::ecs2::CARESortingDebuggingV2::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManagerV2 const*,unsigned int)::$_0::operator()(v179, *(*(v27 + 288) + 24 * v31 + 16));
                        v34 = *(v27 + 304);
                        if (v34 <= v31 + 1)
                        {
                          v34 = v31 + 1;
                        }

                        while (v34 - 1 != v31)
                        {
                          LODWORD(v31) = v31 + 1;
                          if ((*(*(v27 + 288) + 24 * v31 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_45;
                          }
                        }

                        LODWORD(v31) = v34;
LABEL_45:
                        ;
                      }

                      while (v31 != v30);
                      v27 = *v28;
                      LODWORD(v30) = *(*v28 + 304);
                    }

                    if (v30)
                    {
                      v35 = 0;
                      v36 = (*(v27 + 288) + 8);
                      while (1)
                      {
                        v37 = *v36;
                        v36 += 6;
                        if (v37 < 0)
                        {
                          break;
                        }

                        if (v30 == ++v35)
                        {
                          LODWORD(v35) = v30;
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v35) = 0;
                    }

                    if (v35 == v30)
                    {
                      v38 = 0;
                    }

                    else
                    {
                      while (1)
                      {
                        v39 = *(*(v27 + 288) + 24 * v35 + 16);
                        re::ecs2::CARESortingDebuggingV2::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManagerV2 const*,unsigned int)::$_0::operator()(v179, v39);
                        v40 = v39[28];
                        if (v40)
                        {
                          if (*(v40 + 32))
                          {
                            break;
                          }
                        }

                        v41 = *(v27 + 304);
                        if (v41 <= v35 + 1)
                        {
                          v41 = v35 + 1;
                        }

                        while (v41 - 1 != v35)
                        {
                          LODWORD(v35) = v35 + 1;
                          if ((*(*(v27 + 288) + 24 * v35 + 8) & 0x80000000) != 0)
                          {
                            goto LABEL_63;
                          }
                        }

                        LODWORD(v35) = v41;
LABEL_63:
                        if (v35 == v30)
                        {
                          v38 = 0;
                          goto LABEL_66;
                        }
                      }

                      v38 = 1;
LABEL_66:
                      v27 = *v28;
                      LODWORD(v30) = *(*v28 + 304);
                    }

                    v42 = *(v27 + 288);
                    v43 = 0;
                    if (v30)
                    {
                      v44 = (v42 + 8);
                      while (1)
                      {
                        v45 = *v44;
                        v44 += 6;
                        if (v45 < 0)
                        {
                          break;
                        }

                        if (v30 == ++v43)
                        {
                          LODWORD(v43) = v30;
                          break;
                        }
                      }
                    }

                    v46 = re::ecs2::EntityComponentCollection::get((*(v42 + 24 * v43 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                    if (v46)
                    {
                      v47 = v38;
                    }

                    else
                    {
                      v47 = 0;
                    }

                    if (v47 == 1)
                    {
                      v48 = 32;
                      if (*(v46 + 304))
                      {
                        v48 = 176;
                      }

                      v49 = v46 + v48;
                      if ((*(v49 + 9) & 1) == 0)
                      {
                        v175.n128_u64[0] = @"Portals z-fighting";
                        v175.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"MeshSortingGroup %llu contains portals but does not use depth bias. Potential z-fighting.", *v49];
                        re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(&v180, &v175);
                      }
                    }
                  }

                  v50 = *(v21 + 232);
                  if (v50 <= v23 + 1)
                  {
                    v50 = v23 + 1;
                  }

                  while (v50 - 1 != v23)
                  {
                    LODWORD(v23) = v23 + 1;
                    if ((*(*(v21 + 216) + 24 * v23 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_86;
                    }
                  }

                  LODWORD(v23) = v50;
LABEL_86:
                  ;
                }

                while (v23 != v22);
                v21 = *v163;
              }

              v51 = *(v21 + 280);
              v16 = v160;
              if (v51)
              {
                v52 = 0;
                v53 = (*(v21 + 264) + 8);
                while (1)
                {
                  v54 = *v53;
                  v53 += 6;
                  if (v54 < 0)
                  {
                    break;
                  }

                  if (v51 == ++v52)
                  {
                    LODWORD(v52) = *(v21 + 280);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v52) = 0;
              }

LABEL_100:
              while (v52 != v51)
              {
                re::ecs2::CARESortingDebuggingV2::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManagerV2 const*,unsigned int)::$_0::operator()(v179, *(*(v21 + 264) + 24 * v52 + 16));
                v55 = *(v21 + 280);
                if (v55 <= v52 + 1)
                {
                  v55 = v52 + 1;
                }

                while (v55 - 1 != v52)
                {
                  LODWORD(v52) = v52 + 1;
                  if ((*(*(v21 + 264) + 24 * v52 + 8) & 0x80000000) != 0)
                  {
                    goto LABEL_100;
                  }
                }

                LODWORD(v52) = v55;
              }

              v56 = *(v160 + 48);
              if (v56 <= v17 + 1)
              {
                v56 = v17 + 1;
              }

              while (v56 - 1 != v17)
              {
                LODWORD(v17) = v17 + 1;
                if ((*(*(v160 + 32) + 24 * v17 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_107;
                }
              }

              LODWORD(v17) = v56;
LABEL_107:
              ;
            }

            while (v17 != v167);
            v15 = obj[12];
          }

          LODWORD(v12) = v157;
          if (v15 <= v157 + 1)
          {
            v57 = v157 + 1;
          }

          else
          {
            v57 = v15;
          }

          v9 = v148;
          v11 = obj;
          while (v57 - 1 != v12)
          {
            LODWORD(v12) = v12 + 1;
            if ((*(*(obj + 4) + 192 * v12) & 0x80000000) != 0)
            {
              goto LABEL_117;
            }
          }

          LODWORD(v12) = v57;
LABEL_117:
          ;
        }

        while (v12 != v154);
        v10 = *(v166 + 456);
      }

      if (v10 <= v9 + 1)
      {
        v58 = v9 + 1;
      }

      else
      {
        v58 = v10;
      }

      while (v58 - 1 != v9)
      {
        if ((*(*(v166 + 226) + (++v9 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_126;
        }
      }

      v9 = v58;
LABEL_126:
      ;
    }

    while (v9 != v145);
  }

  v59 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
  if (v181)
  {
    [(__CFString *)v142 appendFormat:@"%@Warnings: \n", v59];
    v61 = (v182 & 1) != 0 ? &v183 : v184;
    if (v181)
    {
      v62 = &v61[2 * v181];
      do
      {
        v63 = *v61;
        v64 = v61[1];
        v61 += 2;
        [(__CFString *)v142 appendFormat:@"%@⚠️ %@: %@\n", v60, v63, v64];
      }

      while (v61 != v62);
    }
  }

  if (v180)
  {
    if (v181)
    {
      v65 = v184;
      if (v182)
      {
        v65 = &v183;
      }

      v66 = 16 * v181;
      v67 = (v65 + 1);
      do
      {

        v67 += 2;
        v66 -= 16;
      }

      while (v66);
    }

    if ((v182 & 1) == 0)
    {
      (*(*v180 + 40))(v180, v184);
    }
  }

  [(__CFString *)v142 appendFormat:@"%@DirtyEntities count: %d\n", v143, *(v166 + 33)];
  [(__CFString *)v142 appendFormat:@"%@InactiveEntities count: %d\n", v143, *(v166 + 45)];
  [(__CFString *)v142 appendFormat:@"%@DirtyTransformEntities count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_dirtyTransformEntityCount];
  [(__CFString *)v142 appendFormat:@"%@HierarchicalDirtiedTransformEntities count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_hierarchicalDirtiedTransformEntityCount];
  [(__CFString *)v142 appendFormat:@"%@DirtyAnchorEntities count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_dirtyAnchorEntityCount];
  [(__CFString *)v142 appendFormat:@"%@DirtyInactiveEntities count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_dirtyInactiveEntities];
  [(__CFString *)v142 appendFormat:@"%@Cached EntityWorldTransforms count: %d\n", v143, *(v166 + 107)];
  [(__CFString *)v142 appendFormat:@"%@EntitiesRemovedFromSortGroups count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_entitiesRemovedFromSortGroups];
  [(__CFString *)v142 appendFormat:@"%@EntitiesAddedToSortGroups count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_entitiesAddedToSortGroups];
  [(__CFString *)v142 appendFormat:@"%@SortGroupsResorted count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_sortGroupsResorted];
  [(__CFString *)v142 appendFormat:@"%@CodirGroupsWithDirtyEntities count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::s_codirGroupsWithDirtyEntities];
  [(__CFString *)v142 appendFormat:@"%@SortGroupsRecalculatedOverrides count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_sortGroupsRecalculatedOverrides];
  [(__CFString *)v142 appendFormat:@"%@EntitiesRecalculatedOverrides count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_entitiesRecalculatedOverrides];
  [(__CFString *)v142 appendFormat:@"%@EntitiesRecalculatedOverridesMeshSortingComponentDirtied count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied];
  [(__CFString *)v142 appendFormat:@"%@HighestPriorityInGroup: %u\n", v143, re::ecs2::CARESortingDebuggingV2::m_highestPriorityInGroup];
  [(__CFString *)v142 appendFormat:@"%@HighestPriorityGroupId: %llu\n", v143, re::ecs2::CARESortingDebuggingV2::m_highestPriorityGroupId];
  [(__CFString *)v142 appendFormat:@"%@EntitiesActivated count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_entitiesActivated];
  [(__CFString *)v142 appendFormat:@"%@EntitiesDeactivated count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_entitiesDeactivated];
  [(__CFString *)v142 appendFormat:@"%@UISortingComponentActivated count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentActivated];
  [(__CFString *)v142 appendFormat:@"%@UISortingComponentDeactivated count: %d\n", v143, re::ecs2::CARESortingDebuggingV2::m_uiSortingComponentDeactivated];
  [(__CFString *)v142 appendFormat:@"%@Is CARESorting V2: yes\n", v143];
  v168 = v142;
  v68 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v155 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
  v69 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  if (qword_1EE1B16C0 != -1)
  {
    dispatch_once(&qword_1EE1B16C0, &__block_literal_global_30);
  }

  v70 = qword_1EE1B16B8;
  if ([v70 count])
  {
    v149 = v68;
    [(__CFString *)v168 appendFormat:@"%@Graph:\n", v68];
    v177 = 0u;
    v178 = 0u;
    v175 = 0u;
    v176 = 0u;
    v146 = v70;
    obja = v70;
    v161 = [obja countByEnumeratingWithState:&v175 objects:&v180 count:16];
    if (v161)
    {
      v158 = *v176;
      do
      {
        for (i = 0; i != v161; ++i)
        {
          if (*v176 != v158)
          {
            objc_enumerationMutation(obja);
          }

          v72 = *(v175.n128_u64[1] + 8 * i);
          v73 = [v72 objectForKey:@"action"];
          v74 = v73;
          if (v73)
          {
            [(__CFString *)v168 appendFormat:@"%@%@:\n", v155, v73];
          }

          v164 = v74;
          v173 = 0u;
          v174 = 0u;
          v171 = 0u;
          v172 = 0u;
          v75 = v72;
          v76 = [v75 countByEnumeratingWithState:&v171 objects:v179 count:16];
          if (v76)
          {
            v77 = v76;
            v78 = *v172;
            do
            {
              for (j = 0; j != v77; ++j)
              {
                if (*v172 != v78)
                {
                  objc_enumerationMutation(v75);
                }

                v80 = *(*(&v171 + 1) + 8 * j);
                if (v80 != @"action")
                {
                  v81 = [v75 objectForKey:*(*(&v171 + 1) + 8 * j)];
                  [(__CFString *)v168 appendFormat:@"%@%@: %@\n", v69, v80, v81];
                }
              }

              v77 = [v75 countByEnumeratingWithState:&v171 objects:v179 count:16];
            }

            while (v77);
          }
        }

        v161 = [obja countByEnumeratingWithState:&v175 objects:&v180 count:16];
      }

      while (v161);
    }

    v70 = v146;
    v68 = v149;
  }

  [(__CFString *)v168 appendString:@"\n"];
  [(__CFString *)v168 appendFormat:@"World states: %u\n", *(v166 + 455)];
  v82 = v166;
  v144 = *(v166 + 456);
  if (v144)
  {
    v83 = 0;
    v84 = *(v166 + 226);
    v85 = v168;
    while (1)
    {
      v86 = *v84;
      v84 += 32;
      if (v86 < 0)
      {
        break;
      }

      if (v144 == ++v83)
      {
        LODWORD(v83) = *(v166 + 456);
        break;
      }
    }

    v87 = v83;
    v82 = v166;
  }

  else
  {
    v87 = 0;
    v85 = v168;
  }

  if (v87 != v144)
  {
    v88 = 0;
    v89 = *(v166 + 456);
    do
    {
      v147 = v87;
      v90 = *(v82 + 226) + (v87 << 7);
      objb = *(v90 + 48);
      if (objb)
      {
        v91 = 0;
        v92 = *(v90 + 32);
        while (1)
        {
          v93 = *v92;
          v92 += 48;
          if (v93 < 0)
          {
            break;
          }

          if (objb == ++v91)
          {
            LODWORD(v91) = *(v90 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v91) = 0;
      }

      v150 = v90;
      if (v91 == objb)
      {
        goto LABEL_284;
      }

      do
      {
        v94 = *(v90 + 32) + 192 * v91;
        v95 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
        v96 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
        v97 = *(v94 + 8);
        if (!v97)
        {
          v97 = *(v150 + 8);
        }

        [(__CFString *)v168 appendFormat:@"%@[%u] World root id: %llu\n", v95, v88, v97];
        v98 = @"false";
        if (*(v94 + 176))
        {
          v98 = @"true";
        }

        [(__CFString *)v168 appendFormat:@"%@hasSingularForwardCodirectionalGroup: %@\n", v96, v98];
        v159 = v96;
        [(__CFString *)v168 appendFormat:@"%@Codirectional Groups (aka CAMeshCodirectionalGroup): %u\n", v96, *(v94 + 44)];
        v99 = *(v94 + 48);
        v156 = v88;
        if (v99)
        {
          v100 = 0;
          v101 = (*(v94 + 32) + 8);
          v102 = v168;
          while (1)
          {
            v103 = *v101;
            v101 += 6;
            if (v103 < 0)
            {
              break;
            }

            if (v99 == ++v100)
            {
              LODWORD(v100) = *(v94 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v100) = 0;
          v102 = v168;
        }

        if (v100 != v99)
        {
          v104 = 0;
          do
          {
            v105 = *(*(v94 + 32) + 24 * v100 + 16);
            if (v105)
            {
              v106 = (v105 + 8);
              v170 = v105;
              v107 = (v105 + 8);
              re::ecs2::CARESortingDebuggingV2::dumpCodirectionalGroup(v168, &v170, v104, v166);

              v170 = 0;
              [(__CFString *)v168 appendString:@"\n"];
            }

            else
            {
              v170 = 0;
              re::ecs2::CARESortingDebuggingV2::dumpCodirectionalGroup(v168, &v170, v104, v166);
              [(__CFString *)v168 appendString:@"\n"];
            }

            v104 = (v104 + 1);
            v108 = *(v94 + 48);
            if (v108 <= v100 + 1)
            {
              v108 = v100 + 1;
            }

            v102 = v168;
            while (v108 - 1 != v100)
            {
              LODWORD(v100) = v100 + 1;
              if ((*(*(v94 + 32) + 24 * v100 + 8) & 0x80000000) != 0)
              {
                goto LABEL_202;
              }
            }

            LODWORD(v100) = v108;
LABEL_202:
            ;
          }

          while (v100 != v99);
        }

        v162 = v95;
        [(__CFString *)v102 appendFormat:@"%@CoplanarOverlapping Groups (aka CAMeshSortGroup):\n", v159];
        v165 = *(v94 + 48);
        if (v165)
        {
          v109 = 0;
          v110 = (*(v94 + 32) + 8);
          v111 = v168;
          while (1)
          {
            v112 = *v110;
            v110 += 6;
            if (v112 < 0)
            {
              break;
            }

            if (v165 == ++v109)
            {
              LODWORD(v109) = *(v94 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v109) = 0;
          v111 = v168;
        }

        if (v109 != v165)
        {
          v113 = 0;
          while (1)
          {
            v114 = *(*(v94 + 32) + 24 * v109 + 16);
            if (v114)
            {
              v115 = (v114 + 8);
            }

            v116 = *(v114 + 232);
            if (v116)
            {
              v117 = 0;
              v118 = (*(v114 + 216) + 8);
              while (1)
              {
                v119 = *v118;
                v118 += 6;
                if (v119 < 0)
                {
                  break;
                }

                if (v116 == ++v117)
                {
                  LODWORD(v117) = *(v114 + 232);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v117) = 0;
            }

            if (v117 != v116)
            {
              break;
            }

            if (v114)
            {
              goto LABEL_232;
            }

LABEL_233:
            v123 = *(v94 + 48);
            if (v123 <= v109 + 1)
            {
              v123 = v109 + 1;
            }

            v111 = v168;
            while (v123 - 1 != v109)
            {
              LODWORD(v109) = v109 + 1;
              if ((*(*(v94 + 32) + 24 * v109 + 8) & 0x80000000) != 0)
              {
                goto LABEL_240;
              }
            }

            LODWORD(v109) = v123;
LABEL_240:
            if (v109 == v165)
            {
              goto LABEL_241;
            }
          }

          do
          {
            v120 = *(*(v114 + 216) + 24 * v117 + 16);
            v169 = v120;
            if (v120)
            {
              v121 = (v120 + 8);
              re::ecs2::CARESortingDebuggingV2::dumpSortingGroup(v168, &v169, v113, v166);

              v169 = 0;
            }

            else
            {
              re::ecs2::CARESortingDebuggingV2::dumpSortingGroup(v168, &v169, v113, v166);
            }

            [(__CFString *)v168 appendString:@"\n"];
            v113 = (v113 + 1);
            v122 = *(v114 + 232);
            if (v122 <= v117 + 1)
            {
              v122 = v117 + 1;
            }

            while (v122 - 1 != v117)
            {
              LODWORD(v117) = v117 + 1;
              if ((*(*(v114 + 216) + 24 * v117 + 8) & 0x80000000) != 0)
              {
                goto LABEL_231;
              }
            }

            LODWORD(v117) = v122;
LABEL_231:
            ;
          }

          while (v117 != v116);
LABEL_232:

          goto LABEL_233;
        }

LABEL_241:
        [(__CFString *)v111 appendFormat:@"%@Not in CoplanaOverlapping (aka unsortedPlanarEntities):\n", v159];
        v125 = *(v94 + 48);
        if (v125)
        {
          v126 = 0;
          v127 = (*(v94 + 32) + 8);
          v128 = v168;
          v129 = v162;
          while (1)
          {
            v130 = *v127;
            v127 += 6;
            if (v130 < 0)
            {
              break;
            }

            if (v125 == ++v126)
            {
              LODWORD(v126) = *(v94 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v126) = 0;
          v128 = v168;
          v129 = v162;
        }

        if (v126 != v125)
        {
          v131 = 0;
          while (1)
          {
            v132 = *(*(v94 + 32) + 24 * v126 + 16);
            if (v132)
            {
              v133 = (v132 + 8);
            }

            v134 = *(v132 + 280);
            if (v134)
            {
              v135 = 0;
              v136 = (*(v132 + 264) + 8);
              while (1)
              {
                v137 = *v136;
                v136 += 6;
                if (v137 < 0)
                {
                  break;
                }

                if (v134 == ++v135)
                {
                  LODWORD(v135) = *(v132 + 280);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v135) = 0;
            }

            if (v135 != v134)
            {
              break;
            }

            if (v132)
            {
              goto LABEL_267;
            }

LABEL_268:
            v139 = *(v94 + 48);
            if (v139 <= v126 + 1)
            {
              v139 = v126 + 1;
            }

            v128 = v168;
            v129 = v162;
            while (v139 - 1 != v126)
            {
              LODWORD(v126) = v126 + 1;
              if ((*(*(v94 + 32) + 24 * v126 + 8) & 0x80000000) != 0)
              {
                goto LABEL_275;
              }
            }

            LODWORD(v126) = v139;
LABEL_275:
            if (v126 == v125)
            {
              goto LABEL_276;
            }
          }

          do
          {
            re::ecs2::CARESortingDebuggingV2::dumpEntity(v168, *(*(v132 + 264) + 24 * v135 + 16), 3, v131, v166, v124);
            [(__CFString *)v168 appendString:@"\n"];
            v131 = (v131 + 1);
            v138 = *(v132 + 280);
            if (v138 <= v135 + 1)
            {
              v138 = v135 + 1;
            }

            while (v138 - 1 != v135)
            {
              LODWORD(v135) = v135 + 1;
              if ((*(*(v132 + 264) + 24 * v135 + 8) & 0x80000000) != 0)
              {
                goto LABEL_266;
              }
            }

            LODWORD(v135) = v138;
LABEL_266:
            ;
          }

          while (v135 != v134);
LABEL_267:

          goto LABEL_268;
        }

LABEL_276:
        v88 = (v156 + 1);
        [(__CFString *)v128 appendString:@"\n"];

        v90 = v150;
        v140 = *(v150 + 48);
        if (v140 <= v91 + 1)
        {
          v140 = v91 + 1;
        }

        while (v140 - 1 != v91)
        {
          LODWORD(v91) = v91 + 1;
          if ((*(*(v150 + 32) + 192 * v91) & 0x80000000) != 0)
          {
            goto LABEL_282;
          }
        }

        LODWORD(v91) = v140;
LABEL_282:
        ;
      }

      while (v91 != objb);
      v89 = *(v166 + 456);
LABEL_284:
      v87 = v147;
      if (v89 <= v147 + 1)
      {
        v141 = v147 + 1;
      }

      else
      {
        v141 = v89;
      }

      v85 = v168;
      while (v141 - 1 != v87)
      {
        if ((*(*(v166 + 226) + (++v87 << 7)) & 0x80000000) != 0)
        {
          goto LABEL_292;
        }
      }

      v87 = v141;
LABEL_292:
      v82 = v166;
    }

    while (v87 != v144);
  }
}

void re::ecs2::CARESortingDebuggingV2::dumpCodirectionalGroup(void *a1, uint64_t *a2, uint64_t a3, re::ecs2::CARESortingManagerV2 *a4)
{
  v17 = a1;
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 8, ""];
  [v17 appendFormat:@"%@[%u] CAMeshCodirectionalGroup ID: %llu\n", v7, a3, *(*a2 + 16)];
  [v17 appendFormat:@"%@averagePosition: (%f, %f, %f)\n", v8, *(*a2 + 128), *(*a2 + 132), *(*a2 + 136)];
  [v17 appendFormat:@"%@averageNormal: (%f, %f, %f)\n", v8, *(*a2 + 112), *(*a2 + 116), *(*a2 + 120)];
  [v17 appendFormat:@"%@initialPosition: (%f, %f, %f)\n", v8, *(*a2 + 96), *(*a2 + 100), *(*a2 + 104)];
  [v17 appendFormat:@"%@initialNormal: (%f, %f, %f)\n", v8, *(*a2 + 80), *(*a2 + 84), *(*a2 + 88)];
  [v17 appendFormat:@"%@entities count: %d\n", v8, *(*a2 + 52)];
  v10 = *a2;
  v11 = *(*a2 + 56);
  if (v11)
  {
    v12 = 0;
    v13 = (*(v10 + 40) + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 6;
      if (v14 < 0)
      {
        break;
      }

      if (v11 == ++v12)
      {
        LODWORD(v12) = *(*a2 + 56);
        break;
      }
    }
  }

  else
  {
    LODWORD(v12) = 0;
  }

  if (v12 != v11)
  {
    v15 = 0;
    do
    {
      re::ecs2::CARESortingDebuggingV2::dumpEntity(v17, *(*(v10 + 40) + 24 * v12 + 16), 5, v15, a4, v9);
      v15 = (v15 + 1);
      v16 = *(v10 + 56);
      if (v16 <= v12 + 1)
      {
        v16 = v12 + 1;
      }

      while (v16 - 1 != v12)
      {
        LODWORD(v12) = v12 + 1;
        if ((*(*(v10 + 40) + 24 * v12 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v12) = v16;
LABEL_15:
      ;
    }

    while (v12 != v11);
  }
}

void re::ecs2::CARESortingDebuggingV2::dumpSortingGroup(void *a1, uint64_t *a2, uint64_t a3, re::ecs2::CARESortingManagerV2 *a4)
{
  v7 = a1;
  v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 8, ""];
  v63.n128_u64[0] = 0;
  v63.n128_u16[4] = 0;
  v64 = 0;
  v66 = 0;
  v67 = 0;
  v10 = *(*a2 + 304);
  v11 = *(*a2 + 288);
  if (v10)
  {
    v12 = 0;
    v13 = (v11 + 8);
    while (1)
    {
      v14 = *v13;
      v13 += 6;
      if (v14 < 0)
      {
        break;
      }

      if (v10 == ++v12)
      {
        LODWORD(v12) = *(*a2 + 304);
        break;
      }
    }

    v15 = v12;
  }

  else
  {
    v15 = 0;
  }

  v16 = *(v11 + 24 * v15 + 16);
  v60 = v8;
  if (v16)
  {
    v17 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v17)
    {
      v18 = 32;
      if (*(v17 + 304))
      {
        v18 = 176;
      }

      *&v19 = re::ecs2::MeshSortGroupToken::operator=(&v63, (v17 + v18)).n128_u64[0];
      v57 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v19, v63.n128_u64[0]];
      v59 = [MEMORY[0x1E696AD98] numberWithUnsignedLongLong:v63.n128_u64[0]];
      re::ecs2::CARESortingManagerV2::tryGetCodirectionalGroupForEntity(a4, v16, &v61);
      v20 = v61;
    }

    else
    {
      v20 = 0;
      v59 = 0;
      v57 = @"undefined";
    }

    v23 = v16;
    do
    {
      v24 = v23;
      v23 = *(v23 + 32);
    }

    while (v23);
    if (!*(v24 + 24))
    {
      goto LABEL_32;
    }

    v25 = v16;
    do
    {
      v26 = v25;
      v25 = *(v25 + 32);
    }

    while (v25);
    if (*(*(v26 + 24) + 56))
    {
      v56 = a3;
      v27 = v16;
      do
      {
        v28 = v27;
        v27 = *(v27 + 32);
      }

      while (v27);
      v29 = (*(**(*(v28 + 24) + 56) + 32))(*(*(v28 + 24) + 56));
      v30 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v29);
      if (!v30)
      {
        goto LABEL_35;
      }

      v31 = (*(*v30 + 24))(v30);
      (*(*v31 + 8))(&v61);
      v32 = v61 ? v62 : 0;
      v33 = *a2;
      v34 = *(*a2 + 304);
      if (v34)
      {
        v35 = 0;
        v36 = (*(v33 + 288) + 8);
        while (1)
        {
          v37 = *v36;
          v36 += 6;
          if (v37 < 0)
          {
            break;
          }

          if (v34 == ++v35)
          {
            LODWORD(v35) = *(*a2 + 304);
            break;
          }
        }
      }

      else
      {
        LODWORD(v35) = 0;
      }

      if (v35 != v34)
      {
        v55 = v20;
        v38 = 0;
        do
        {
          (*(*v31 + 8))(&v61, v31, *(*(v33 + 288) + 24 * v35 + 16));
          if (v61)
          {
            v39 = v62;
          }

          else
          {
            v39 = 0;
          }

          v40 = v39 == v32;
          v41 = v39 != v32;
          if (!v40)
          {
            goto LABEL_50;
          }

          v38 |= v41;
          v42 = *(v33 + 304);
          if (v42 <= v35 + 1)
          {
            v42 = v35 + 1;
          }

          while (v42 - 1 != v35)
          {
            LODWORD(v35) = v35 + 1;
            if ((*(*(v33 + 288) + 24 * v35 + 8) & 0x80000000) != 0)
            {
              goto LABEL_48;
            }
          }

          LODWORD(v35) = v42;
LABEL_48:
          ;
        }

        while (v35 != v34);
        if (v38)
        {
LABEL_50:
          v21 = @"true";
          goto LABEL_52;
        }

        v21 = @"false";
LABEL_52:
        v8 = v60;
        v20 = v55;
      }

      else
      {
LABEL_35:
        v21 = @"false";
        v8 = v60;
      }

      a3 = v56;
      v22 = v57;
    }

    else
    {
LABEL_32:
      v21 = @"false";
      v22 = v57;
    }
  }

  else
  {
    v59 = 0;
    v20 = 0;
    v21 = @"false";
    v22 = @"undefined";
  }

  [v7 appendFormat:@"%@[%u] CAMeshSortGroup ID: %@\n", v8, a3, v22];
  [v7 appendFormat:@"%@containsMixedWorlds: %@\n", v9, v21];
  [v7 appendFormat:@"%@sortGroupPosition: (%f, %f, %f)\n", v9, *(*a2 + 32), *(*a2 + 36), *(*a2 + 40)];
  v43 = [v7 appendFormat:@"%@sortGroupNormal: (%f, %f, %f)\n", v9, *(*a2 + 16), *(*a2 + 20), *(*a2 + 24)];
  [v7 appendFormat:@"%@sortGroupSortingConfiguration: %@\n", v9, v43];

  if (v63.n128_u8[8] == 5 && v64 == 1)
  {
    v58 = v65;
    [v7 appendFormat:@"%@sortGroupSortPointOverride: (%f, %f, %f)\n", v9, v65.f32[0], v65.f32[1], v65.f32[2]];
    if (v20)
    {
      v44 = vmulq_f32(vsubq_f32(v58, v20[8]), v20[7]);
      [v7 appendFormat:@"%@sortGroupSortPointOverrideDisplacement: %f\n", v9, (v44.f32[2] + vaddv_f32(*v44.f32))];
      goto LABEL_60;
    }
  }

  else
  {
    [v7 appendFormat:@"%@sortGroupSortPointOverride: None\n", v9];
  }

  [v7 appendFormat:@"%@sortGroupSortPointOverrideDisplacement: None\n", v9, v54];
LABEL_60:
  [v7 appendFormat:@"%@entities count: %d\n", v9, *(*a2 + 300)];
  v46 = *a2;
  v47 = *(*a2 + 304);
  if (v47)
  {
    v48 = 0;
    v49 = (*(v46 + 288) + 8);
    while (1)
    {
      v50 = *v49;
      v49 += 6;
      if (v50 < 0)
      {
        break;
      }

      if (v47 == ++v48)
      {
        v51 = v20;
        LODWORD(v48) = *(*a2 + 304);
        goto LABEL_67;
      }
    }

    v51 = v20;
  }

  else
  {
    v51 = v20;
    LODWORD(v48) = 0;
  }

LABEL_67:
  if (v48 != v47)
  {
    v52 = 0;
    do
    {
      re::ecs2::CARESortingDebuggingV2::dumpEntity(v7, *(*(v46 + 288) + 24 * v48 + 16), 5, v52, a4, v45);
      v52 = (v52 + 1);
      v53 = *(v46 + 304);
      if (v53 <= v48 + 1)
      {
        v53 = v48 + 1;
      }

      while (v53 - 1 != v48)
      {
        LODWORD(v48) = v48 + 1;
        if ((*(*(v46 + 288) + 24 * v48 + 8) & 0x80000000) != 0)
        {
          goto LABEL_75;
        }
      }

      LODWORD(v48) = v53;
LABEL_75:
      ;
    }

    while (v48 != v47);
  }

  if (v51)
  {
  }
}

void re::ecs2::CARESortingDebuggingV2::dumpEntity(re::ecs2::CARESortingDebuggingV2 *this, NSMutableString *a2, re::ecs2::Entity *a3, uint64_t a4, re::ecs2::CARESortingManagerV2 *a5, const re::ecs2::CARESortingManagerV2 *a6)
{
  v162 = *MEMORY[0x1E69E9840];
  v9 = this;
  v10 = v151 = a2;
  v11 = v136 = a3;
  v135 = v10;
  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@[%u] Entity ID: %llu\n", v10, a4, a2[39].super];
  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@name: %s\n", v11, a2[37].super];
  v152.i64[0] = a2;
  *&v160 = 0;
  *(&v158 + 1) = 0;
  *&v159 = 0;
  DWORD2(v159) = 0;
  re::DynamicArray<float *>::setCapacity(&v158, 0x40uLL);
  ++DWORD2(v159);
  for (i = a2[4].super; i; i = *(v13 + 32))
  {
    if ((i[304] & 0x80) != 0)
    {
      break;
    }

    re::DynamicArray<re::TransitionCondition *>::add(&v158, &v152);
    v13 = *(v152.i64[0] + 32);
    if ((*(v13 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    v152.i64[0] = v13;
  }

  v14 = [MEMORY[0x1E696AD60] stringWithCapacity:256];
  [v14 appendString:@"/"];
  if (v159)
  {
    v15 = v160 + 8 * v159;
    do
    {
      v17 = *(v15 - 8);
      v15 -= 8;
      v16 = v17;
      v18 = *(v17 + 288);
      if (v18 < 0xFFFFFFFFFFFFFFFELL || (v18 & 1) != 0)
      {
        v19 = *(v16 + 296);
        if (v18 > 1 || !v19)
        {
          goto LABEL_14;
        }
      }

      else
      {
        v19 = *(v16 + 296);
      }

      if (!*v19)
      {
        [v14 appendFormat:@"%llu/", *(v16 + 312)];
        continue;
      }

LABEL_14:
      v20 = [MEMORY[0x1E696AEC0] stringWithCString:v19 encoding:4];
      v21 = [v20 stringByReplacingOccurrencesOfString:@"/" withString:&stru_1F5D319D0];
      [v14 appendFormat:@"%@/", v21];
    }

    while (v15 != v160);
  }

  v22 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  if (v158 && v160)
  {
    (*(*v158 + 40))(v158);
  }

  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@path: %@\n", v11, v22];

  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@worldMatrix:\n", v11];
  re::TransformService::worldMatrix(*(a5 + 234), v151, 1, &v138);
  v24 = v23 = v136;
  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendString:v24];

  v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v151 ^ (v151 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v151 ^ (v151 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a5 + 400, &v151, v25 ^ (v25 >> 31), &v158);
  if (HIDWORD(v158) == 0x7FFFFFFF)
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@cached worldMatrix: none\n", v11];
  }

  else
  {
    v26 = *(a5 + 52) + 160 * HIDWORD(v158);
    v28 = *(v26 + 16);
    v27 = (v26 + 16);
    v29 = v28;
    if ((v138.f32[0] == v28 || vabds_f32(v138.f32[0], v29) < (((fabsf(v138.f32[0]) + fabsf(v29)) + 1.0) * 0.00001)) && ((v30 = v27[1], v138.f32[1] == v30) || vabds_f32(v138.f32[1], v30) < (((fabsf(v138.f32[1]) + fabsf(v30)) + 1.0) * 0.00001)) && ((v31 = v27[2], v138.f32[2] == v31) || vabds_f32(v138.f32[2], v31) < (((fabsf(v138.f32[2]) + fabsf(v31)) + 1.0) * 0.00001)) && ((v32 = v27[3], v138.f32[3] == v32) || vabds_f32(v138.f32[3], v32) < (((fabsf(v138.f32[3]) + fabsf(v32)) + 1.0) * 0.00001)) && ((v33 = v27[4], v139 == v33) || vabds_f32(v139, v33) < (((fabsf(v139) + fabsf(v33)) + 1.0) * 0.00001)) && ((v34 = v27[5], v140 == v34) || vabds_f32(v140, v34) < (((fabsf(v140) + fabsf(v34)) + 1.0) * 0.00001)) && ((v35 = v27[6], v141 == v35) || vabds_f32(v141, v35) < (((fabsf(v141) + fabsf(v35)) + 1.0) * 0.00001)) && ((v36 = v27[7], v142 == v36) || vabds_f32(v142, v36) < (((fabsf(v142) + fabsf(v36)) + 1.0) * 0.00001)) && ((v37 = v27[8], v143 == v37) || vabds_f32(v143, v37) < (((fabsf(v143) + fabsf(v37)) + 1.0) * 0.00001)) && ((v38 = v27[9], v144 == v38) || vabds_f32(v144, v38) < (((fabsf(v144) + fabsf(v38)) + 1.0) * 0.00001)) && ((v39 = v27[10], v145 == v39) || vabds_f32(v145, v39) < (((fabsf(v145) + fabsf(v39)) + 1.0) * 0.00001)) && ((v40 = v27[11], v146 == v40) || vabds_f32(v146, v40) < (((fabsf(v146) + fabsf(v40)) + 1.0) * 0.00001)) && ((v41 = v27[12], v147 == v41) || vabds_f32(v147, v41) < (((fabsf(v147) + fabsf(v41)) + 1.0) * 0.00001)) && ((v42 = v27[13], v148 == v42) || vabds_f32(v148, v42) < (((fabsf(v148) + fabsf(v42)) + 1.0) * 0.00001)) && ((v43 = v27[14], v149 == v43) || vabds_f32(v149, v43) < (((fabsf(v149) + fabsf(v43)) + 1.0) * 0.00001)) && ((v44 = v27[15], v150 == v44) || vabds_f32(v150, v44) < (((fabsf(v150) + fabsf(v44)) + 1.0) * 0.00001)))
    {
      [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@cached worldMatrix: up to date\n", v11];
    }

    else
    {
      v45 = [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@cached worldMatrix: outdated\n", v11];
      [(re::ecs2::CARESortingDebuggingV2 *)v9 appendString:v45];
    }
  }

  v46 = v151;
  v47 = v151;
  do
  {
    v48 = v47;
    v47 = *(v47 + 4);
  }

  while (v47);
  if (*(v48 + 3))
  {
    v49 = v151;
    do
    {
      v50 = v49;
      v49 = *(v49 + 4);
    }

    while (v49);
    if (*(*(v50 + 3) + 56))
    {
      do
      {
        v51 = v46;
        v46 = *(v46 + 4);
      }

      while (v46);
      v52 = (*(**(*(v51 + 3) + 56) + 32))(*(*(v51 + 3) + 56));
      v53 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v52);
      if (v53)
      {
        v54 = (*(*v53 + 24))(v53);
        (*(*v54 + 8))(&v158);
        if (v158)
        {
          v55 = *(&v158 + 1);
        }

        else
        {
          v55 = 0;
        }

        [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@worldRootId: %llu\n", v11, v55];
      }
    }
  }

  v56 = *(v151 + 28);
  if (v56)
  {
    if (*(v56 + 32))
    {
      v57 = @"true";
    }

    else
    {
      v57 = @"false";
    }
  }

  else
  {
    v57 = @"false";
  }

  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@isPortal: %@\n", v11, v57];
  re::ecs2::CARESortingManagerV2::tryGetCodirectionalGroupForEntity(a5, v151, &v137);
  if (v137)
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@CAMeshCodirectionalGroupId: %llu\n", v11, v137[1].i64[0]];
    [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@averageNormal: (%f, %f, %f)\n", v11, v137[7].f32[0], v137[7].f32[1], v137[7].f32[2]];
    [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@averagePosition: (%f, %f, %f)\n", v11, v137[8].f32[0], v137[8].f32[1], v137[8].f32[2]];
  }

  else
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@CodirectionalGroup: none\n", v11, v115, v120, v122];
  }

  [(re::ecs2::CARESortingDebuggingV2 *)v9 appendFormat:@"%@UISortingComponent:\n", v11];
  v58 = re::ecs2::EntityComponentCollection::get((v151 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v60 = v59 = v9;
  v61 = v60;
  if (v58)
  {
    v62 = v58[3];
    v63 = v58[4];
    v64 = vcgtq_f32(v62, v63);
    v64.i32[3] = v64.i32[2];
    if ((vmaxvq_u32(v64) & 0x80000000) != 0)
    {
      v68 = v58[2].f32[2];
      v66.i32[0] = v58[2].i32[0];
      v67 = v58[2].f32[1];
    }

    else
    {
      v65 = vsubq_f32(v63, v62);
      v65.i32[3] = 0;
      v66 = vmaxnmq_f32(v65, 0);
      v67 = v66.f32[1];
      v68 = v66.f32[2];
    }

    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@extends: (%f, %f, %f)\n", v60, v66.f32[0], v67, v68];
    v69 = vcgtq_f32(v58[3], v58[4]);
    v69.i32[3] = v69.i32[2];
    if ((vmaxvq_u32(v69) & 0x80000000) != 0)
    {
      v70 = v58[2].f32[2] * 0.5;
    }

    else
    {
      LODWORD(v70) = v58[4].i64[1];
    }

    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@halfZExtent: %f\n", v61, v70];
    v72 = v58[3];
    v71 = v58[4];
    v73 = vcgtq_f32(v72, v71);
    v73.i32[3] = v73.i32[2];
    if ((vmaxvq_u32(v73) & 0x80000000) != 0)
    {
      v74 = v58[2];
      v75.i64[0] = 0xBF000000BF000000;
      v75.i64[1] = 0xBF000000BF000000;
      v72 = vmulq_f32(v74, v75);
      v75.i64[0] = 0x3F0000003F000000;
      v75.i64[1] = 0x3F0000003F000000;
      v71 = vmulq_f32(v74, v75);
    }

    v129 = v72;
    v133 = v71;
    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@AABB min: (%f, %f, %f)\n", v61, v72.f32[0], v72.f32[1], v72.f32[2]];
    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@AABB max: (%f, %f, %f)\n", v61, v133.f32[0], v133.f32[1], v133.f32[2]];
    v76 = vcgtq_f32(v129, v133);
    v76.i32[3] = v76.i32[2];
    v77.i64[0] = 0x3F0000003F000000;
    v77.i64[1] = 0x3F0000003F000000;
    v78 = vmulq_f32(vaddq_f32(v133, v129), v77);
    v79 = v78.f32[2];
    if ((vmaxvq_u32(v76) & 0x80000000) == 0)
    {
      v80 = v78.i64[0];
    }

    else
    {
      v79 = 0.0;
      v80 = 0;
    }

    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@AABB center: (%f, %f, %f)\n", v61, *&v80, *(&v80 + 1), v79];
    v81 = v58[5].u32[0];
    if ((atomic_load_explicit(&qword_1EE1B16B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B16B0))
    {
      v134 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4294967293];
      v152.i64[0] = v134;
      *&v158 = @"kSortCategoryMin";
      v131 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4294967294];
      v152.i64[1] = v131;
      *(&v158 + 1) = @"kBackDecoration";
      v128 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0xFFFFFFFFLL];
      v153.i64[0] = v128;
      *&v159 = @"kBehindUIContent";
      v126 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0];
      v153.i64[1] = v126;
      *(&v159 + 1) = @"kUIContent";
      v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 1];
      v154 = v124;
      *&v160 = @"kAboveUIContent";
      v112 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 2];
      v155 = v112;
      *(&v160 + 1) = @"kFrontDecoration";
      v113 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 3];
      v156 = v113;
      *&v161 = @"kServerCARE";
      v114 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4];
      v157 = v114;
      *(&v161 + 1) = @"kSortCategoryMax";
      qword_1EE1B16A8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v158 forKeys:&v152 count:8];

      __cxa_guard_release(&qword_1EE1B16B0);
    }

    v82 = qword_1EE1B16A8;
    v83 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v81];
    v84 = [v82 valueForKey:v83];

    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@sortCategory: %@\n", v61, v84];
    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@sortPriorityHint: %d\n", v61, v58[5].u32[1]];
    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@caSortOrder: %d\n", v61, v58[5].u32[2]];
    if (v58[5].i8[12])
    {
      v85 = @"true";
    }

    else
    {
      v85 = @"false";
    }

    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@isCaLayer: %@\n", v61, v85];
    if (v58[5].i8[13])
    {
      v86 = @"true";
    }

    else
    {
      v86 = @"false";
    }

    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@doesCaLayerNeedMesh: %@\n", v61, v86];
  }

  else
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@None\n", v60, v116];
  }

  [(re::ecs2::CARESortingDebuggingV2 *)v59 appendFormat:@"%@MeshSortingComponent:\n", v11];
  v87 = re::ecs2::EntityComponentCollection::get((v151 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v89 = v88 = v59;
  v90 = v89;
  if (v87)
  {
    v92 = v91 = (v136 + 3);
    v93 = 2;
    if (v87[19].i8[0])
    {
      v93 = 11;
    }

    v94 = &v87[v93];
    v95 = v94->i64[0];
    v130 = v94->u8[8];
    v96 = v94->i8[9];
    v125 = v94[1].u8[0];
    v127 = v94[2];
    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@groupId: %llu\n", v90, v94->i64[0]];
    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@priorityInGroup: %d\n", v90, v87[10].u32[0]];
    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@depthPriorityInGroup: %d\n", v90, v87[10].u32[1]];
    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@sortPointOverride: (%f, %f, %f)\n", v90, v87[20].f32[0], v87[20].f32[1], v87[20].f32[2]];
    if (v137)
    {
      v97 = vmulq_f32(vsubq_f32(v87[20], v137[8]), v137[7]);
      [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@sortPointOverrideDisplacement: %f\n", v90, (v97.f32[2] + vaddv_f32(*v97.f32))];
    }

    else
    {
      [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@sortPointOverrideDisplacement: None\n", v90, v118];
    }
    v98 = ;
    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@sortConfiguration: %@\n", v90, v98];

    if (v96)
    {
      v99 = @"true";
    }

    else
    {
      v99 = @"false";
    }

    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@useDepthBias: %@\n", v90, v99];
    if (v95)
    {
      [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@sortGroupData:\n", v90];
      if (v130 == 5 && v125)
      {
        [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@perMeshGroupSortPointOverride: (%f, %f, %f)\n", v92, v127.f32[0], v127.f32[1], v127.f32[2]];
        if (v137)
        {
          v100 = vmulq_f32(vsubq_f32(v127, v137[8]), v137[7]);
          [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@perMeshGroupSortPointOverrideDisplacement: %f\n", v92, (v100.f32[2] + vaddv_f32(*v100.f32))];
        }

        else
        {
          [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@perMeshGroupSortPointOverrideDisplacement: None\n", v92, v119];
        }
      }

      else
      {
        [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@perMeshGroupSortPointOverride: None\n", v92, v117];
      }

      v101 = v23 = v136;
      [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@perMeshSortGroupConfiguration: %@\n", v92, v101];
    }

    else
    {
      [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@sortGroupData: not-in-mesh-sort-group\n", v90];
      v23 = v136;
    }
  }

  else
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@None\n", v89];
    v91 = (v136 + 3);
  }

  [(re::ecs2::CARESortingDebuggingV2 *)v88 appendFormat:@"%@MeshComponent:\n", v11];
  v102 = *(v151 + 24);
  v104 = v103 = v88;
  v105 = objc_claimAutoreleasedReturnValue();
  if (v102)
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v103 appendFormat:@"%@MeshAsset:\n", v104];
    v106 = re::AssetHandle::loadedAsset<re::MeshAsset>((v102 + 32));
    if (v106)
    {
      v158 = xmmword_1E3047670;
      v159 = xmmword_1E3047680;
      v160 = xmmword_1E30476A0;
      v161 = xmmword_1E30474D0;
      re::MeshAsset::aabbFromMesh(v106, &v158, &v152);
      [(re::ecs2::CARESortingDebuggingV2 *)v103 appendFormat:@"%@AABB min: (%f, %f, %f)\n", v105, v152.f32[0], v152.f32[1], v152.f32[2]];
      [(re::ecs2::CARESortingDebuggingV2 *)v103 appendFormat:@"%@AABB max: (%f, %f, %f)\n", v105, v153.f32[0], v153.f32[1], v153.f32[2]];
      v107 = vcgtq_f32(v152, v153);
      v107.i32[3] = v107.i32[2];
      v108.i64[0] = 0x3F0000003F000000;
      v108.i64[1] = 0x3F0000003F000000;
      v109 = vmulq_f32(vaddq_f32(v152, v153), v108);
      v110 = v109.f32[2];
      if ((vmaxvq_u32(v107) & 0x80000000) == 0)
      {
        v111 = v109.i64[0];
      }

      else
      {
        v110 = 0.0;
        v111 = 0;
      }

      [(re::ecs2::CARESortingDebuggingV2 *)v103 appendFormat:@"%@AABB center: (%f, %f, %f)\n", v105, *&v111, *(&v111 + 1), v110];
    }

    else
    {
      [(re::ecs2::CARESortingDebuggingV2 *)v103 appendFormat:@"%@Not Loaded\n", v105, v117, v121, v123];
    }
  }

  else
  {
    [(re::ecs2::CARESortingDebuggingV2 *)v103 appendFormat:@"%@None\n", v104, v117, v121, v123];
  }

  if (v137)
  {
  }
}

void re::ecs2::CARESortingDebuggingV2::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManagerV2 const*,unsigned int)::$_0::operator()(uint64_t *a1, unint64_t *a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4)
  {
    v5 = v4[3];
    v6 = v4[4];
    v7 = vcgtq_f32(v5, v6);
    v7.i32[3] = v7.i32[2];
    if ((vmaxvq_u32(v7) & 0x80000000) != 0)
    {
      v6 = v4[2];
      v8 = 0xBF000000BF000000;
      v5.i64[1] = 0xBF000000BF000000;
      v5.i64[0] = vmulq_f32(v6, v5).u64[0];
      v9.i64[0] = 0x3F0000003F000000;
      v9.i64[1] = 0x3F0000003F000000;
      v6.i64[0] = vmulq_f32(v6, v9).u64[0];
    }

    v10 = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabs_f32(vmaxnm_f32(vsub_f32(*v6.f32, *v5.f32), 0)));
    if ((v10.i32[0] | v10.i32[1]))
    {
      v11 = *a1;
      v22.i64[0] = @"Zero area";
      v22.i64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"UISortingComponent with a zero XY area in entity #%llu.", a2[39]];
      re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(v11, &v22);
    }
  }

  re::TransformService::worldMatrix(*(a1[1] + 1872), a2, 1, &v22);
  v12 = v24;
  v13 = vmulq_f32(v22, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v12, v12, 0xCuLL), v24, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v23, v23), v23, 0xCuLL))), vextq_s8(vuzp1q_s32(v12, v12), v24, 0xCuLL), vextq_s8(vextq_s8(v23, v23, 0xCuLL), v23, 8uLL)));
  v14 = vaddv_f32(*v13.f32);
  v15 = -1.0;
  if ((v13.f32[2] + v14) > 0.0)
  {
    v15 = 1.0;
  }

  v16 = vmulq_f32(v22, v22);
  v17 = vmulq_f32(v23, v23);
  *v16.i8 = vcgt_f32(vdup_n_s32(0x3727C5ACu), vabs_f32(vmul_n_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v16, v16, 8uLL), *&vextq_s8(v17, v17, 8uLL)), vadd_f32(vzip1_s32(*v16.i8, *v17.i8), vzip2_s32(*v16.i8, *v17.i8)))), v15)));
  if ((v16.i32[0] | v16.i32[1]))
  {
    v18 = *a1;
    v21.n128_u64[0] = @"Zero area";
    v21.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Transform with a zero XY area in entity #%llu.", a2[39]];
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(v18, &v21);

    v12 = v24;
  }

  v19 = vmulq_f32(v12, v12);
  if (fabsf(v19.f32[2] + vaddv_f32(*v19.f32)) < 1.0e-10)
  {
    v20 = *a1;
    v21.n128_u64[0] = @"Zero normal";
    v21.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"Almost-zero normal in entity #%llu.", a2[39]];
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(v20, &v21);
  }
}

void ___ZN12_GLOBAL__N_123ensureGraphCurrentFrameEv_block_invoke_0()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = qword_1EE1B16B8;
  qword_1EE1B16B8 = v0;
}

void ___ZN2re4ecs216BillboardService18isBillboardEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue("enableBillboard", a2, &v3);
  if (v3)
  {
    v2 = &v4;
  }

  else
  {
    v2 = &re::ecs2::gIsBillboardEnabled;
  }

  re::ecs2::gIsBillboardEnabled = *v2;
}

void re::ecs2::BillboardService::setEnableBillboard(re::ecs2::BillboardService *this)
{
  v1 = this;
  v6 = *MEMORY[0x1E69E9840];
  if (re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::ecs2::BillboardService::isBillboardEnabled(void)::onceToken, &__block_literal_global_31);
  }

  if (re::ecs2::gIsBillboardEnabled != v1)
  {
    re::ecs2::gIsBillboardEnabled = v1;
    v2 = *re::ecsComponentsLogObjects(this);
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      if (re::ecs2::gIsBillboardEnabled)
      {
        v3 = "enabled";
      }

      else
      {
        v3 = "disabled";
      }

      v4 = 136315138;
      v5 = v3;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "re.enableBillboard is now %s.", &v4, 0xCu);
    }
  }
}

float ___ZN2re4ecs216BillboardService36getBillboardTransformChangeThresholdEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue("billboardTransformChangeThreshold", a2, v4);
  if (v4[0])
  {
    v2 = &v5;
  }

  else
  {
    v2 = &re::ecs2::gBillboardTransformChangeThreshold;
  }

  result = *v2;
  re::ecs2::gBillboardTransformChangeThreshold = *v2;
  return result;
}

void *re::ecs2::allocInfo_BillboardService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_364, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_364))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B16D0, "BillboardService");
    __cxa_guard_release(&_MergedGlobals_364);
  }

  return &unk_1EE1B16D0;
}

void re::ecs2::initInfo_BillboardService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xBDC586F2E0B72D2CLL;
  v6[1] = "BillboardService";
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
  *(this + 8) = &re::ecs2::initInfo_BillboardService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_EnvironmentLightingService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_365, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_365))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1768, "EnvironmentLightingService");
    __cxa_guard_release(&_MergedGlobals_365);
  }

  return &unk_1EE1B1768;
}

void re::ecs2::initInfo_EnvironmentLightingService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA9E53BDC66725F2CLL;
  v6[1] = "EnvironmentLightingService";
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
  *(this + 8) = &re::ecs2::initInfo_EnvironmentLightingService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::ecs2::RenderOptionsManagerStateTracking *re::ecs2::RenderOptionsManagerStateTracking::RenderOptionsManagerStateTracking(re::ecs2::RenderOptionsManagerStateTracking *this)
{
  v8[3] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CFA908;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  v8[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v8[1] = re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v8[2] = re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5 = v8;
  v6 = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v6 = re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7 = re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[0] = &v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 328), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CB7C30;
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

void re::ecs2::RenderOptionsManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
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

  if (v4 == v3)
  {
    return;
  }

  v7 = *(a2 + 16);
  v8 = *(a2 + 32);
  v82 = v8;
  do
  {
    v9 = *(v7 + 24 * v4 + 16);
    if ((*(v9 + 304) & 0x41) == 0)
    {
      goto LABEL_160;
    }

    if (*(a1 + 56))
    {
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      v11 = *(*(a1 + 64) + 4 * ((v10 ^ (v10 >> 31)) % *(a1 + 80)));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(a1 + 72);
        do
        {
          if (*(v12 + 56 * v11 + 8) == v9)
          {
            goto LABEL_160;
          }

          v11 = *(v12 + 56 * v11) & 0x7FFFFFFF;
        }

        while (v11 != 0x7FFFFFFF);
      }
    }

    while (1)
    {
      v146 = v9;
      v13 = *(v9 + 32);
      if (!v13 || (*(v13 + 304) & 0x80) != 0)
      {
        v15 = &re::ecs2::EntityRenderOptions::defaultRenderOptions(void)::s_defaultRenderOptions;
        goto LABEL_21;
      }

      v145[0] = *(v9 + 32);
      v14 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 56, v145);
      if (v14)
      {
        break;
      }

      v9 = v145[0];
    }

    v15 = v14;
LABEL_21:
    re::StackScratchAllocator::StackScratchAllocator(v145);
    v139[0] = 0;
    v139[1] = 0;
    v140 = 1;
    v142 = 0;
    v143 = 0;
    v141 = 0;
    v144 = 0;
    re::BucketArray<re::ecs2::Entity const*,32ul>::init(v139, v145, 1uLL);
    v132 = 0;
    v133 = 0;
    v134 = 1;
    v136 = 0;
    v137 = 0;
    v135 = 0;
    v138 = 0;
    re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::init(&v132, v145, 1uLL);
    *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v139) = v9;
    re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::add(&v132, v15);
    while (v143)
    {
      v131 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v139, v143 - 1);
      if (!v137)
      {
        re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
        _os_crash();
        __break(1u);
        return;
      }

      v17 = v137 - 1;
      v18 = re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::operator[](&v132, v137 - 1);
      v19 = *v18;
      LOWORD(v115) = *v18;
      BYTE2(v115) = *(v18 + 2);
      if (BYTE2(v115) == 1)
      {
        BYTE3(v115) = *(v18 + 3);
      }

      BYTE4(v115) = *(v18 + 4);
      if (BYTE4(v115) == 1)
      {
        BYTE5(v115) = *(v18 + 5);
      }

      BYTE6(v115) = *(v18 + 6);
      if (BYTE6(v115) == 1)
      {
        HIBYTE(v115) = *(v18 + 7);
      }

      v20 = *(v18 + 8);
      v116 = v20;
      v21 = *(v18 + 9);
      v118 = *(v18 + 11);
      v117 = v21;
      v119 = *(v18 + 12);
      if (v119 == 1)
      {
        v120 = *(v18 + 13);
      }

      v121 = *(v18 + 14);
      if (v121 == 1)
      {
        v122 = *(v18 + 15);
      }

      v123 = *(v18 + 16);
      if (v123 == 1)
      {
        v124 = *(v18 + 17);
      }

      v125 = *(v18 + 18);
      if (v125 == 1)
      {
        v126 = *(v18 + 19);
      }

      v127 = *(v18 + 20);
      if (v127 == 1)
      {
        v128 = *(v18 + 22);
      }

      v22 = *(v18 + 24);
      v130 = *(v18 + 28);
      v129 = v22;
      *v99 = v19;
      v99[2] = BYTE2(v115);
      if (BYTE2(v115))
      {
        v99[3] = BYTE3(v115);
      }

      v99[4] = BYTE4(v115);
      if (BYTE4(v115))
      {
        v99[5] = BYTE5(v115);
      }

      v99[6] = BYTE6(v115);
      if (BYTE6(v115))
      {
        v99[7] = HIBYTE(v115);
      }

      v100 = v20;
      v101 = v117;
      v102 = v118;
      v103 = v119;
      if (v119)
      {
        v104 = v120;
      }

      v105 = v121;
      if (v121)
      {
        v106 = v122;
      }

      v107 = v123;
      if (v123)
      {
        v108 = v124;
      }

      v109 = v125;
      if (v125)
      {
        v110 = v126;
      }

      v111 = v127;
      if (v127)
      {
        v112 = v128;
      }

      v113 = v129;
      v114 = v130;
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v139, --v143);
      ++v144;
      re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::operator[](&v132, v17);
      v137 = v17;
      ++v138;
      v84[0] = BYTE2(v115);
      if (BYTE2(v115) == 1)
      {
        v84[1] = BYTE3(v115);
      }

      v84[2] = BYTE4(v115);
      if (BYTE4(v115) == 1)
      {
        v84[3] = BYTE5(v115);
      }

      v84[4] = BYTE6(v115);
      if (BYTE6(v115) == 1)
      {
        v84[5] = HIBYTE(v115);
      }

      v84[6] = v116;
      v85 = v117;
      v86 = v118;
      v87 = v119;
      if (v119 == 1)
      {
        v88 = v120;
      }

      v89 = v121;
      if (v121 == 1)
      {
        v90 = v122;
      }

      v91 = v123;
      if (v123 == 1)
      {
        v92 = v124;
      }

      v93 = v125;
      if (v125 == 1)
      {
        v94 = v126;
      }

      v95 = v127;
      if (v127 == 1)
      {
        v96 = v128;
      }

      v97 = v129;
      v98 = v130;
      re::ecs2::RenderOptionsComponent::mixMeshFlags(v131, v84, &v115 + 2, &v99[2], v23, v24);
      v25 = re::ecs2::EntityComponentCollection::get((v131 + 48), re::ecs2::ComponentImpl<re::ecs2::PortalCrossingFlagsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v25)
      {
        if ((v125 & 1) == 0)
        {
          v125 = 1;
        }

        v27 = *(v25 + 25);
        v126 = v27;
        HIBYTE(v129) = *(v25 + 26);
        if (HIBYTE(v129) == 1)
        {
          if ((v109 & 1) == 0)
          {
            v109 = 1;
          }

          v110 = v27;
          HIBYTE(v113) = 1;
        }
      }

      re::ecs2::RenderOptionsComponent::mixVisibility(v131, v115, &v115, v99, v26);
      if (v115 == 1 && (v28 = *(a1 + 336)) != 0)
      {
        v29 = *(a1 + 344);
        v30 = &v29[v28];
        while (1)
        {
          if (*(v131 + 49))
          {
            v31 = (*v29 + 16);
            v32 = *(v131 + 13);
            v33 = vld1q_dup_s16(v31);
            v34 = 1;
            v35 = *(v131 + 49);
            while (1)
            {
              v36 = vandq_s8(vceqq_s16(v33, *v32), xmmword_1E306AC00);
              v36.i16[0] = vmaxvq_u16(v36);
              if (v36.i32[0])
              {
                break;
              }

              v34 -= 8;
              ++v32;
              if (!--v35)
              {
                goto LABEL_88;
              }
            }

            if (v36.u16[0] - v34 < *(v131 + 48))
            {
              break;
            }
          }

LABEL_88:
          if (++v29 == v30)
          {
            goto LABEL_89;
          }
        }

        BYTE1(v115) = 1;
        v52 = *(v131 + 4);
        if (v52)
        {
          if ((*(v52 + 304) & 0x80) == 0)
          {
            v147 = *(v131 + 4);
            v53 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::operator[](a1 + 56, &v147);
            v55 = *(v53 + 1);
            v54 = (v53 + 1);
            if ((v55 & 1) == 0)
            {
              do
              {
                *v54 = 1;
                v56 = *(v147 + 32);
                if (!v56)
                {
                  break;
                }

                if ((*(v56 + 304) & 0x80) != 0)
                {
                  break;
                }

                v147 = *(v147 + 32);
                v57 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::operator[](a1 + 56, &v147);
                v58 = *(v57 + 1);
                v54 = (v57 + 1);
              }

              while (v58 != 1);
            }
          }
        }
      }

      else
      {
LABEL_89:
        BYTE1(v115) = 0;
      }

      v147 = 0;
      v148 = 0;
      v149 = 0;
      v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v131 ^ (v131 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v131 ^ (v131 >> 30))) >> 27));
      re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1 + 56, &v131, v37 ^ (v37 >> 31), &v147);
      if (HIDWORD(v148) == 0x7FFFFFFF)
      {
        v38 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v148, v147);
        v39 = v131;
        *(v38 + 8) = v131;
        *(v38 + 16) = v115;
        v40 = BYTE2(v115);
        *(v38 + 18) = BYTE2(v115);
        if (v40 == 1)
        {
          *(v38 + 19) = BYTE3(v115);
        }

        v41 = BYTE4(v115);
        *(v38 + 20) = BYTE4(v115);
        if (v41 == 1)
        {
          *(v38 + 21) = BYTE5(v115);
        }

        v42 = BYTE6(v115);
        *(v38 + 22) = BYTE6(v115);
        if (v42 == 1)
        {
          *(v38 + 23) = HIBYTE(v115);
        }

        *(v38 + 24) = v116;
        *(v38 + 25) = v117;
        *(v38 + 27) = v118;
        v43 = v119;
        *(v38 + 28) = v119;
        if (v43 == 1)
        {
          *(v38 + 29) = v120;
        }

        v44 = v121;
        *(v38 + 30) = v121;
        if (v44 == 1)
        {
          *(v38 + 31) = v122;
        }

        v45 = v123;
        *(v38 + 32) = v123;
        if (v45 == 1)
        {
          *(v38 + 33) = v124;
        }

        v46 = v125;
        *(v38 + 34) = v125;
        if (v46 == 1)
        {
          *(v38 + 35) = v126;
        }

        v47 = v127;
        *(v38 + 36) = v127;
        if (v47 == 1)
        {
          *(v38 + 38) = v128;
        }

        *(v38 + 40) = v129;
        *(v38 + 44) = v130;
        ++*(a1 + 96);
      }

      else
      {
        v39 = v131;
      }

      v48 = *(v39 + 43);
      if (v48)
      {
        v49 = *(v39 + 45);
        v50 = 8 * v48;
        do
        {
          if ((*(*v49 + 304) & 0x41) != 0)
          {
            v51 = *v49;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v139) = v51;
            re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::add(&v132, v99);
          }

          ++v49;
          v50 -= 8;
        }

        while (v50);
      }
    }

    if (*(re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::operator[](a1 + 56, &v146) + 1))
    {
      goto LABEL_147;
    }

    v59 = *(v146 + 32);
    if (!v59)
    {
      goto LABEL_147;
    }

    if ((*(v59 + 304) & 0x80) != 0)
    {
      goto LABEL_147;
    }

    v115 = *(v146 + 32);
    v60 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::operator[](a1 + 56, &v115);
    v61 = xmmword_1E306AC00;
    v62 = v60 + 1;
    if (v60[1] != 1)
    {
      goto LABEL_147;
    }

    while ((*v60 & 1) == 0)
    {
      v64 = v115;
LABEL_138:
      v73 = *(v64 + 43);
      if (v73)
      {
        v81 = v62;
        v74 = *(v64 + 45);
        v75 = 8 * v73;
        while (1)
        {
          *v99 = *v74;
          v76 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RootPhysicsSimulationData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 56, v99);
          if (v76)
          {
            if (*(v76 + 1) == 1)
            {
              goto LABEL_147;
            }
          }

          ++v74;
          v75 -= 8;
          if (!v75)
          {
            v64 = v115;
            v62 = v81;
            break;
          }
        }
      }

      *v62 = 0;
      v77 = *(v64 + 4);
      if (v77)
      {
        if ((*(v77 + 304) & 0x80) == 0)
        {
          v115 = v77;
          v60 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::operator[](a1 + 56, &v115);
          v61 = xmmword_1E306AC00;
          v62 = v60 + 1;
          if (v60[1])
          {
            continue;
          }
        }
      }

      goto LABEL_147;
    }

    v63 = *(a1 + 336);
    v64 = v115;
    if (!v63)
    {
      goto LABEL_138;
    }

    v65 = *(a1 + 344);
    v66 = &v65[v63];
    while (1)
    {
      if (*(v115 + 49))
      {
        v67 = (*v65 + 16);
        v68 = *(v115 + 13);
        v69 = vld1q_dup_s16(v67);
        v70 = 1;
        v71 = *(v115 + 49);
        while (1)
        {
          v72 = vandq_s8(vceqq_s16(v69, *v68), v61);
          v72.i16[0] = vmaxvq_u16(v72);
          if (v72.i32[0])
          {
            break;
          }

          v70 -= 8;
          ++v68;
          if (!--v71)
          {
            goto LABEL_135;
          }
        }

        if (v72.u16[0] - v70 < *(v115 + 48))
        {
          break;
        }
      }

LABEL_135:
      if (++v65 == v66)
      {
        goto LABEL_138;
      }
    }

LABEL_147:
    v78 = v137;
    if (v137)
    {
      v79 = 0;
      do
      {
        re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::operator[](&v132, v79++);
      }

      while (v78 != v79);
    }

    while (v133)
    {
      re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v132);
    }

    if (v132 && (v134 & 1) == 0)
    {
      (*(*v132 + 40))();
    }

    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v139);
    if (v139[0] && (v140 & 1) == 0)
    {
      (*(*v139[0] + 40))(v139[0], v142);
    }

    re::StackScratchAllocator::~StackScratchAllocator(v145);
    LODWORD(v3) = v82;
    v8 = *(a2 + 32);
    v7 = *(a2 + 16);
LABEL_160:
    if (v8 <= v4 + 1)
    {
      v80 = v4 + 1;
    }

    else
    {
      v80 = v8;
    }

    while (v80 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
      {
        goto LABEL_167;
      }
    }

    LODWORD(v4) = v80;
LABEL_167:
    ;
  }

  while (v4 != v3);
}

void *re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::add(void *result, uint64_t a2)
{
  v3 = result;
  v4 = result[5];
  v5 = result[1];
  if (v4 + 1 > 32 * v5)
  {
    result = re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::setBucketsCapacity(result, (v4 + 32) >> 5);
    v5 = v3[1];
  }

  if (v5 <= v4 >> 5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (v3[2])
  {
    v6 = v3 + 3;
  }

  else
  {
    v6 = v3[4];
  }

  v7 = v6[v4 >> 5];
  ++v3[5];
  ++*(v3 + 12);
  v8 = v7 + 30 * (v4 & 0x1F);
  *v8 = *a2;
  v9 = *(a2 + 2);
  *(v8 + 2) = v9;
  if (v9 == 1)
  {
    *(v8 + 3) = *(a2 + 3);
  }

  v10 = *(a2 + 4);
  *(v8 + 4) = v10;
  if (v10 == 1)
  {
    *(v8 + 5) = *(a2 + 5);
  }

  v11 = *(a2 + 6);
  *(v8 + 6) = v11;
  if (v11 == 1)
  {
    *(v8 + 7) = *(a2 + 7);
  }

  *(v8 + 8) = *(a2 + 8);
  v12 = *(a2 + 9);
  *(v8 + 11) = *(a2 + 11);
  *(v8 + 9) = v12;
  v13 = *(a2 + 12);
  *(v8 + 12) = v13;
  if (v13 == 1)
  {
    *(v8 + 13) = *(a2 + 13);
  }

  v14 = *(a2 + 14);
  *(v8 + 14) = v14;
  if (v14 == 1)
  {
    *(v8 + 15) = *(a2 + 15);
  }

  v15 = *(a2 + 16);
  *(v8 + 16) = v15;
  if (v15 == 1)
  {
    *(v8 + 17) = *(a2 + 17);
  }

  v16 = *(a2 + 18);
  *(v8 + 18) = v16;
  if (v16 == 1)
  {
    *(v8 + 19) = *(a2 + 19);
  }

  v17 = *(a2 + 20);
  *(v8 + 20) = v17;
  if (v17 == 1)
  {
    *(v8 + 22) = *(a2 + 22);
  }

  v18 = *(a2 + 24);
  *(v8 + 28) = *(a2 + 28);
  *(v8 + 24) = v18;
  return result;
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 56 * v6 + 16;
}

void re::ecs2::RenderOptionsManagerStateTracking::~RenderOptionsManagerStateTracking(re::ecs2::RenderOptionsManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 960, 0);
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

uint64_t re::BucketArray<re::ecs2::EntityRenderOptions,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 5)
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

  return *(v3 + 8 * (a2 >> 5)) + 30 * (a2 & 0x1F);
}

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v36, 0, 36);
          *&v36[36] = 0x7FFFFFFFLL;
          re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v36, v9, v8);
          v11 = *v36;
          *v36 = *a1;
          *a1 = v11;
          v12 = *&v36[16];
          v13 = *(a1 + 16);
          *&v36[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v36[24];
          *&v36[24] = *(a1 + 24);
          v14 = *&v36[32];
          *(a1 + 24) = v15;
          ++*&v36[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = v13 + 24;
            do
            {
              if ((*(v18 - 24) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1, *(v18 + 24) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 16);
                *(v19 + 16) = *(v18 - 8);
                v20 = *(v18 - 6);
                *(v19 + 18) = v20;
                if (v20 == 1)
                {
                  *(v19 + 19) = *(v18 - 5);
                }

                v21 = *(v18 - 4);
                *(v19 + 20) = v21;
                if (v21 == 1)
                {
                  *(v19 + 21) = *(v18 - 3);
                }

                v22 = *(v18 - 2);
                *(v19 + 22) = v22;
                if (v22 == 1)
                {
                  *(v19 + 23) = *(v18 - 1);
                }

                *(v19 + 24) = *v18;
                v23 = *(v18 + 1);
                *(v19 + 27) = *(v18 + 3);
                *(v19 + 25) = v23;
                v24 = *(v18 + 4);
                *(v19 + 28) = v24;
                if (v24 == 1)
                {
                  *(v19 + 29) = *(v18 + 5);
                }

                v25 = *(v18 + 6);
                *(v19 + 30) = v25;
                if (v25 == 1)
                {
                  *(v19 + 31) = *(v18 + 7);
                }

                v26 = *(v18 + 8);
                *(v19 + 32) = v26;
                if (v26 == 1)
                {
                  *(v19 + 33) = *(v18 + 9);
                }

                v27 = *(v18 + 10);
                *(v19 + 34) = v27;
                if (v27 == 1)
                {
                  *(v19 + 35) = *(v18 + 11);
                }

                v28 = *(v18 + 12);
                *(v19 + 36) = v28;
                if (v28 == 1)
                {
                  *(v19 + 38) = *(v18 + 14);
                }

                v29 = *(v18 + 16);
                *(v19 + 44) = *(v18 + 20);
                *(v19 + 40) = v29;
              }

              v18 += 56;
              ++v17;
            }

            while (v17 < v16);
          }

          re::HashTable<re::Pair<re::StringSlice,re::StringSlice,true>,unsigned long,re::Hash<re::Pair<re::StringSlice,re::StringSlice,true>>,re::EqualTo<re::Pair<re::StringSlice,re::StringSlice,true>>,true,false>::deinit(v36);
        }
      }

      else
      {
        if (v8)
        {
          v32 = 2 * v7;
        }

        else
        {
          v32 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v30 = *(a1 + 16);
    v31 = *(v30 + 56 * v5);
  }

  else
  {
    v30 = *(a1 + 16);
    v31 = *(v30 + 56 * v5);
    *(a1 + 36) = v31 & 0x7FFFFFFF;
  }

  v33 = v30 + 56 * v5;
  *v33 = v31 | 0x80000000;
  v34 = *(a1 + 8);
  *v33 = *(v34 + 4 * a2) | 0x80000000;
  *(v34 + 4 * a2) = v5;
  *(v33 + 48) = a3;
  ++*(a1 + 28);
  return v30 + 56 * v5;
}

void *anonymous namespace::createStateCommandsFromAssetData(uint64_t a1, re::StateGraph *this)
{
  v34 = *MEMORY[0x1E69E9840];
  v19 = 0;
  result = re::StateGraph::findStateByName(this, (a1 + 80), &v19);
  if (result)
  {
    v4 = result;
    re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(v16, (a1 + 40));
    if (v17)
    {
      v5 = v18;
      v6 = v18 + 424 * v17;
      do
      {
        StateCommand = re::ecs2::StateCommandFactoryECS::createStateCommand(*(v5 + 400), (v5 + 408));
        if (StateCommand)
        {
          v8 = StateCommand;
          if (*(v5 + 16))
          {
            v9 = 0;
            v10 = 0;
            while (1)
            {
              v11 = *(v5 + 56);
              if (v11 <= v10)
              {
                break;
              }

              (*(*v8 + 56))(v8, *(v5 + 32) + v9, *(*(v5 + 72) + 8 * v10++));
              v9 += 16;
              if (v10 >= *(v5 + 16))
              {
                goto LABEL_9;
              }
            }

            v20 = 0;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v29 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v21 = 136315906;
            v22 = "operator[]";
            v23 = 1024;
            v24 = 797;
            v25 = 2048;
            v26 = v10;
            v27 = 2048;
            v28 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_30;
          }

LABEL_9:
          if (*(v5 + 96))
          {
            v12 = 0;
            v10 = 0;
            while (1)
            {
              v11 = *(v5 + 136);
              if (v11 <= v10)
              {
                break;
              }

              (*(*v8 + 64))(v8, *(v5 + 112) + v12, *(*(v5 + 152) + 4 * v10++));
              v12 += 16;
              if (v10 >= *(v5 + 96))
              {
                goto LABEL_13;
              }
            }

LABEL_30:
            v20 = 0;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v29 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v21 = 136315906;
            v22 = "operator[]";
            v23 = 1024;
            v24 = 797;
            v25 = 2048;
            v26 = v10;
            v27 = 2048;
            v28 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_31:
            v20 = 0;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v29 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v21 = 136315906;
            v22 = "operator[]";
            v23 = 1024;
            v24 = 797;
            v25 = 2048;
            v26 = v10;
            v27 = 2048;
            v28 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_32:
            v20 = 0;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v29 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v21 = 136315906;
            v22 = "operator[]";
            v23 = 1024;
            v24 = 797;
            v25 = 2048;
            v26 = v10;
            v27 = 2048;
            v28 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
            goto LABEL_33;
          }

LABEL_13:
          if (*(v5 + 176))
          {
            v13 = 0;
            v10 = 0;
            do
            {
              v11 = *(v5 + 216);
              if (v11 <= v10)
              {
                goto LABEL_31;
              }

              (*(*v8 + 72))(v8, *(v5 + 192) + v13, *(*(v5 + 232) + 8 * v10++));
              v13 += 16;
            }

            while (v10 < *(v5 + 176));
          }

          if (*(v5 + 256))
          {
            v14 = 0;
            v10 = 0;
            do
            {
              v11 = *(v5 + 296);
              if (v11 <= v10)
              {
                goto LABEL_32;
              }

              (*(*v8 + 80))(v8, *(v5 + 272) + v14, *(*(v5 + 312) + v10++));
              v14 += 16;
            }

            while (v10 < *(v5 + 256));
          }

          if (*(v5 + 336))
          {
            v15 = 0;
            v10 = 0;
            while (1)
            {
              v11 = *(v5 + 376);
              if (v11 <= v10)
              {
                break;
              }

              (*(*v8 + 88))(v8, *(v5 + 352) + v15, *(v5 + 392) + v15);
              ++v10;
              v15 += 16;
              if (v10 >= *(v5 + 336))
              {
                goto LABEL_25;
              }
            }

LABEL_33:
            v20 = 0;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            v29 = 0u;
            v30 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v21 = 136315906;
            v22 = "operator[]";
            v23 = 1024;
            v24 = 797;
            v25 = 2048;
            v26 = v10;
            v27 = 2048;
            v28 = v11;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_25:
          *&v29 = v8;
          re::DynamicArray<re::TransitionCondition *>::add((v4 + 48), &v29);
        }

        v5 += 424;
      }

      while (v5 != v6);
    }

    return re::DynamicArray<re::SMAssetStateCommand>::deinit(v16);
  }

  return result;
}

void re::ecs2::LayeredStateMachine::deinit(uint64_t **this)
{
  v1 = this;
  v2 = this[2];
  if (v2)
  {
    v3 = this[3];
    v4 = 8 * v2;
    do
    {
      v5 = *v3;
      if (*v3)
      {
        v6 = re::globalAllocators(this);
        this = (*(*v6[2] + 40))(v6[2], v5);
      }

      ++v3;
      v4 -= 8;
    }

    while (v4);
  }

  re::FixedArray<CoreIKTransform>::deinit(v1 + 1);
  re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(v1 + 32);
  *(v1 + 88) = 0;
  *(v1 + 10) = 0;
}

uint64_t re::ecs2::LayeredStateMachine::currentState(void *a1, uint64_t a2, void *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 4), a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v9);
  if (v10 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1[6] + 32 * v10 + 24);
  if (v6 >= a1[2] || v6 >= *(a2 + 8))
  {
    return 0;
  }

  else
  {
    return re::StateMachine::currentState(*(a1[3] + 8 * v6), *(a2 + 16) + 40 * v6);
  }
}

uint64_t re::ecs2::LayeredStateMachine::previousState(void *a1, uint64_t a2, void *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 4), a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v9);
  if (v10 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1[6] + 32 * v10 + 24);
  if (v6 >= a1[2] || v6 >= *(a2 + 8))
  {
    return 0;
  }

  result = *(a1[3] + 8 * v6);
  if (result)
  {
    return re::StateMachine::previousState(result, *(a2 + 16) + 40 * v6);
  }

  return result;
}

uint64_t re::ecs2::LayeredStateMachine::currentTransition(void *a1, uint64_t a2, void *a3)
{
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 4), a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v9);
  if (v10 == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = *(a1[6] + 32 * v10 + 24);
  if (v6 >= a1[2] || v6 >= *(a2 + 8))
  {
    return 0;
  }

  else
  {
    return *(*(a1[3] + 8 * v6) + 32);
  }
}

uint64_t re::ecs2::StateMachineComponent::currentState(re::ecs2::StateMachineComponent *this, const re::StringID *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if ((~*(v2 + 304) & 0x2008) != 0)
  {
    return 0;
  }

  v5 = re::AssetHandle::loadedAsset<re::StateMachineAsset>((this + 32));
  if (!v5)
  {
    return 0;
  }

  return re::ecs2::LayeredStateMachine::currentState(this + 10, v5 + 80, a2);
}

uint64_t re::AssetHandle::loadedAsset<re::StateMachineAsset>(re::StateMachineAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::StateMachineAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::ecs2::StateMachineComponent::previousState(re::ecs2::StateMachineComponent *this, const re::StringID *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if ((~*(v2 + 304) & 0x2008) != 0)
  {
    return 0;
  }

  v5 = re::AssetHandle::loadedAsset<re::StateMachineAsset>((this + 32));
  if (!v5)
  {
    return 0;
  }

  return re::ecs2::LayeredStateMachine::previousState(this + 10, v5 + 80, a2);
}

uint64_t re::ecs2::StateMachineComponent::currentTransition(re::ecs2::StateMachineComponent *this, const re::StringID *a2)
{
  v2 = *(this + 2);
  if (!v2)
  {
    return 0;
  }

  if ((~*(v2 + 304) & 0x2008) != 0)
  {
    return 0;
  }

  v5 = re::AssetHandle::loadedAsset<re::StateMachineAsset>((this + 32));
  if (!v5)
  {
    return 0;
  }

  return re::ecs2::LayeredStateMachine::currentTransition(this + 10, v5 + 80, a2);
}

void re::ecs2::StateMachineSystem::update(uint64_t a1, int a2, uint64_t a3)
{
  v115 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 200);
  if (v3)
  {
    v5 = *(a3 + 216);
    v91 = v5 + 8 * v3;
    while (1)
    {
      v93 = v5;
      v6 = re::ecs2::SceneComponentTable::get((*v5 + 200), re::ecs2::ComponentImpl<re::ecs2::StateMachineComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v6)
      {
        v7 = *(v6 + 384);
        if (v7)
        {
          break;
        }
      }

LABEL_129:
      v5 = v93 + 8;
      if (v93 + 8 == v91)
      {
        return;
      }
    }

    v8 = *(v6 + 400);
    v9 = &v8[v7];
    v92 = v9;
    while (1)
    {
      v95 = *v8;
      v10 = *(*v8 + 16);
      if (v10 && (~*(v10 + 304) & 0x2008) == 0)
      {
        v11 = (v95 + 56);
        v12 = *(v95 + 64);
        if (!v12 || (v13 = atomic_load((v12 + 896)), v13 == 2))
        {
          v14 = *v8;
          v15 = (v95 + 32);
          v16 = re::AssetHandle::loadedAsset<re::StateMachineAsset>((v95 + 32));
          if (v16)
          {
            v17 = v16;
            if (!*(v95 + 456))
            {
              {
                re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0);
              }

              v14 = v95;
              re::makeBindPoint(re::introspect<re::ecs2::Entity>(BOOL)::info, *(v95 + 16), buf);
              *(v95 + 432) = *buf;
              re::DynamicArray<re::RigDataValue>::operator=(v95 + 440, &buf[8]);
              re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
              v16 = re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
            }

            v94 = v8;
            v18 = v14;
            if (*(v14 + 64))
            {
              v19 = re::StateParameterBlackboardAsset::assetType(v16);
              v20 = re::AssetHandle::assetWithType(v11, v19, 0);
              if (!v20)
              {
                v21 = *re::assetsLogObjects(0);
                if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
                {
                  v86 = re::AssetHandle::assetInfo(v11);
                  if (v86[17])
                  {
                    v87 = v86[18];
                  }

                  else
                  {
                    v87 = v86 + 137;
                  }

                  *buf = 136315138;
                  *&buf[4] = v87;
                  _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", buf, 0xCu);
                }
              }

              v22 = *(v18 + 64);
              v23 = v22 ? *(v22 + 792) : 0;
              v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v22 ^ (v22 >> 30))) >> 27));
              v25 = v23 ^ (v24 >> 31) ^ v24;
              if (*(v18 + 424) != v25)
              {
                v89 = v25;
                re::StateParameterBlackboard::deinit((v18 + 176));
                v26 = v20[2];
                if (v26)
                {
                  v27 = v20[3];
                  v28 = 32 * v26;
                  while (1)
                  {
                    re::makeBindNode(*(v18 + 16), &v107);
                    v29 = strlen(v27[1].var1);
                    var1 = v27[1].var1;
                    v97 = v29;
                    {
                      re::introspect<long long>(BOOL)::info = re::introspect_int64_t(0, v30);
                    }

                    re::BindNode::bindPoint(&v107, re::introspect<long long>(BOOL)::info, &var1, buf);
                    if (!*(&v100 + 1))
                    {
                      break;
                    }

                    re::StateParameterBlackboard::addStateParameterInt((v18 + 176), v27, buf);
                    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                    re::BindNode::deinit(&v107);
                    v27 += 2;
                    v28 -= 32;
                    if (!v28)
                    {
                      goto LABEL_31;
                    }
                  }

LABEL_39:
                  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                  re::BindNode::deinit(&v107);
                  v36 = 0;
                  v15 = (v95 + 32);
                }

                else
                {
LABEL_31:
                  v31 = v20[5];
                  if (v31)
                  {
                    v32 = v20[6];
                    v33 = 32 * v31;
                    do
                    {
                      re::makeBindNode(*(v18 + 16), &v107);
                      v34 = strlen(v32[1].var1);
                      var1 = v32[1].var1;
                      v97 = v34;
                      {
                        re::introspect<float>(BOOL)::info = re::introspect_float(0, v35);
                      }

                      re::BindNode::bindPoint(&v107, re::introspect<float>(BOOL)::info, &var1, buf);
                      if (!*(&v100 + 1))
                      {
                        goto LABEL_39;
                      }

                      re::StateParameterBlackboard::addStateParameterFloat((v18 + 176), v32, buf);
                      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                      re::BindNode::deinit(&v107);
                      v32 += 2;
                      v33 -= 32;
                    }

                    while (v33);
                  }

                  v37 = v20[8];
                  v15 = (v95 + 32);
                  if (v37)
                  {
                    v38 = v20[9];
                    v39 = 32 * v37;
                    while (1)
                    {
                      re::makeBindNode(*(v18 + 16), &v107);
                      v40 = strlen(v38[1].var1);
                      var1 = v38[1].var1;
                      v97 = v40;
                      re::BindNode::bindPoint<BOOL>(&v107, &var1, buf);
                      if (!*(&v100 + 1))
                      {
                        break;
                      }

                      re::StateParameterBlackboard::addStateParameterBool((v18 + 176), v38, buf);
                      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                      re::BindNode::deinit(&v107);
                      v38 += 2;
                      v39 -= 32;
                      if (!v39)
                      {
                        goto LABEL_44;
                      }
                    }
                  }

                  else
                  {
LABEL_44:
                    v41 = v20[11];
                    if (!v41)
                    {
LABEL_48:
                      v36 = v89;
                      goto LABEL_50;
                    }

                    v42 = v20[12];
                    v43 = 32 * v41;
                    while (1)
                    {
                      re::makeBindNode(*(v18 + 16), &v107);
                      v44 = strlen(v42[1].var1);
                      var1 = v42[1].var1;
                      v97 = v44;
                      re::BindNode::bindPoint<BOOL>(&v107, &var1, buf);
                      if (!*(&v100 + 1))
                      {
                        break;
                      }

                      re::StateParameterBlackboard::addStateParameterTrigger((v18 + 176), v42, buf);
                      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                      re::BindNode::deinit(&v107);
                      v42 += 2;
                      v43 -= 32;
                      if (!v43)
                      {
                        goto LABEL_48;
                      }
                    }
                  }

                  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&buf[8]);
                  re::BindNode::deinit(&v107);
                  v36 = 0;
                }

LABEL_50:
                *(v18 + 424) = v36;
              }
            }

            v45 = *(v18 + 40);
            if (v45)
            {
              v46 = *(v45 + 792);
            }

            else
            {
              v46 = 0;
            }

            v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27));
            v48 = v46 ^ (v47 >> 31) ^ v47;
            if (*(v18 + 160) == v48)
            {
              v49 = 0;
              goto LABEL_92;
            }

            v88 = v48;
            v90 = v15;
            re::ecs2::LayeredStateMachine::deinit((v18 + 80));
            v51 = *(v17 + 7);
            if (!v51)
            {
              goto LABEL_73;
            }

            for (i = 0; i < v51; ++i)
            {
              v53 = *(v17 + 9) + 40 * i;
              if (!*(v53 + 16))
              {
                continue;
              }

              v54 = 0;
              do
              {
                v55 = *(v17 + 11);
                if (v55 <= i)
                {
                  var1 = 0;
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  *buf = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v107 = 136315906;
                  v108 = "operator[]";
                  v109 = 1024;
                  v110 = 476;
                  v111 = 2048;
                  v112 = i;
                  v113 = 2048;
                  v114 = v55;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_132:
                  var1 = 0;
                  v102 = 0u;
                  v103 = 0u;
                  v100 = 0u;
                  v101 = 0u;
                  *buf = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v107 = 136315906;
                  v108 = "operator[]";
                  v109 = 1024;
                  v110 = 797;
                  v111 = 2048;
                  v112 = v54;
                  v113 = 2048;
                  v114 = v55;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                  goto LABEL_133;
                }

                v56 = *(v17 + 12) + 40 * i;
                v55 = *(v56 + 16);
                if (v55 <= v54)
                {
                  goto LABEL_132;
                }

                v57 = *(v53 + 32) + 168 * v54;
                v58 = *(*(v56 + 32) + 8 * v54);
                if (*(v57 + 56) == 1)
                {
                }

                v59 = *(v57 + 16);
                if (v59)
                {
                  v60 = *(v57 + 32);
                  v61 = v60 + 104 * v59;
                  do
                  {
                    re::DynamicArray<re::SMAssetStateTransition>::DynamicArray(buf, v60);
                    re::DynamicArray<re::SMAssetStateCommand>::DynamicArray(&v101 + 8, (v60 + 40));
                    re::StringID::StringID(&v104, (v60 + 80));
                    v106 = *(v60 + 96);
                    if (v104)
                    {
                      if (v104)
                      {
                      }
                    }

                    v104 = 0;
                    v105 = &str_67;
                    re::DynamicArray<re::SMAssetStateCommand>::deinit(&v101 + 1);
                    StateCommandsFromAssetData = re::DynamicArray<re::SMAssetStateTransition>::deinit(buf);
                    v60 += 104;
                  }

                  while (v60 != v61);
                }

                ++v54;
              }

              while (v54 < *(v53 + 16));
              v51 = *(v17 + 7);
              v18 = v95;
            }

LABEL_73:
            v55 = *(v17 + 2);
            if (!v55)
            {
              goto LABEL_90;
            }

            if (*(v18 + 168) == 1)
            {
              re::ecs2::LayeredStateMachine::deinit((v18 + 80));
              v55 = *(v17 + 2);
            }

            *(v18 + 96) = v55;
            if (v55)
            {
              if (!(v55 >> 61))
              {
                *(v18 + 104) = v63;
                if (v63)
                {
                  v66 = v63;
                  if (v55 != 1)
                  {
                    bzero(v63, 8 * v55 - 8);
                    v66 += v55 - 1;
                  }

                  *v66 = 0;
                  goto LABEL_82;
                }

LABEL_137:
                re::internal::assertLog(4, v65, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
                _os_crash();
                __break(1u);
              }

LABEL_136:
              re::internal::assertLog(6, v64, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v55);
              _os_crash();
              __break(1u);
              goto LABEL_137;
            }

LABEL_82:
            v98 = 0;
            if (*(v17 + 2))
            {
              v53 = 0;
              while (1)
              {
                v67 = v18;
                v68 = *(v17 + 4);
                v69 = re::globalAllocators(v63);
                v70 = (*(*v69[2] + 32))(v69[2], 48, 8);
                *&v71 = -1;
                *(&v71 + 1) = -1;
                *v70 = v71;
                *(v70 + 16) = v71;
                *(v70 + 32) = 0;
                *(v70 + 40) = 0;
                v55 = v98;
                i = *(v67 + 96);
                if (i <= v98)
                {
                  goto LABEL_134;
                }

                v72 = v70;
                v73 = v68 + 48 * v53;
                *(*(v67 + 104) + 8 * v98) = v70;
                re::HashTable<re::StringID,unsigned long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(v67 + 112, v73, &v98);
                v55 = v98;
                v53 = *(v17 + 11);
                if (v53 <= v98)
                {
                  goto LABEL_135;
                }

                v18 = v67;
                v63 = re::StateMachine::init(v72, *(v17 + 12) + 40 * v98, v67 + 176, (v73 + 16), (v73 + 32), v67 + 432);
                if (!v63)
                {
                  break;
                }

                v53 = v98 + 1;
                v98 = v53;
                if (v53 >= *(v17 + 2))
                {
                  goto LABEL_88;
                }
              }

              re::ecs2::LayeredStateMachine::deinit((v67 + 80));
LABEL_90:
              v49 = 0;
            }

            else
            {
LABEL_88:
              v49 = 1;
              *(v18 + 168) = 1;
              *(v18 + 160) = v88;
            }

            v15 = v90;
LABEL_92:
            v74 = *(v18 + 64);
            v75 = v18;
            v8 = v94;
            v9 = v92;
            if (!v74)
            {
              v80 = *(v75 + 16);
              if (v80)
              {
                if ((~*(v80 + 304) & 0x2008) == 0)
                {
                  v81 = *(v75 + 40);
                  if (v81)
                  {
                    v82 = atomic_load((v81 + 896));
                    if (v82 == 2)
                    {
                      re::StateMachineBlackboardBinding::updateFromGraphsAndParameterBinding((v75 + 176), v15, (v75 + 376), *(v75 + 16), v49);
                    }
                  }
                }
              }
            }

            if (*(v75 + 96))
            {
              v53 = 0;
              i = 0;
              while (1)
              {
                v55 = *(v17 + 11);
                if (v55 <= i)
                {
                  break;
                }

                re::StateMachine::update(*(*(v95 + 104) + 8 * i++), *(v17 + 12) + v53, v95 + 176, v95 + 432, *&a2);
                v53 += 40;
                if (i >= *(v95 + 96))
                {
                  goto LABEL_97;
                }
              }

LABEL_133:
              var1 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v107 = 136315906;
              v108 = "operator[]";
              v109 = 1024;
              v110 = 476;
              v111 = 2048;
              v112 = i;
              v113 = 2048;
              v114 = v55;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_134:
              var1 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v107 = 136315906;
              v108 = "operator[]";
              v109 = 1024;
              v110 = 468;
              v111 = 2048;
              v112 = v55;
              v113 = 2048;
              v114 = i;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_135:
              var1 = 0;
              v102 = 0u;
              v103 = 0u;
              v100 = 0u;
              v101 = 0u;
              *buf = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              v107 = 136315906;
              v108 = "operator[]";
              v109 = 1024;
              v110 = 476;
              v111 = 2048;
              v112 = v55;
              v113 = 2048;
              v114 = v53;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_136;
            }

LABEL_97:
            v76 = *(v95 + 360);
            if (v76)
            {
              v77 = 0;
              v78 = *(v95 + 344);
              while (1)
              {
                v79 = *v78;
                v78 += 8;
                if (v79 < 0)
                {
                  break;
                }

                if (v76 == ++v77)
                {
                  LODWORD(v77) = *(v95 + 360);
                  break;
                }
              }
            }

            else
            {
              LODWORD(v77) = 0;
            }

            if (v77 != v76)
            {
              v83 = *(v95 + 344);
              do
              {
                v84 = *(v83 + 32 * v77 + 24);
                if (v84[56] == 1)
                {
                  (*(*v84 + 8))(v84);
                  v84[56] = 0;
                  LODWORD(v76) = *(v95 + 360);
                  v83 = *(v95 + 344);
                }

                if (v76 <= v77 + 1)
                {
                  v85 = v77 + 1;
                }

                else
                {
                  v85 = v76;
                }

                while (v85 - 1 != v77)
                {
                  LODWORD(v77) = v77 + 1;
                  if ((*(v83 + 32 * v77) & 0x80000000) != 0)
                  {
                    goto LABEL_120;
                  }
                }

                LODWORD(v77) = v85;
LABEL_120:
                ;
              }

              while (v77 != v76);
            }

            goto LABEL_121;
          }

          v11 = (v95 + 32);
        }

        re::AssetHandle::loadAsync(v11);
      }

LABEL_121:
      if (++v8 == v9)
      {
        goto LABEL_129;
      }
    }
  }
}

void *re::ecs2::allocInfo_StateMachineComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B1830, "StateMachineComponent");
    __cxa_guard_release(&qword_1EE1B1800);
  }

  return &unk_1EE1B1830;
}

void re::ecs2::initInfo_StateMachineComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x700177634F73DE0ELL;
  v21[1] = "StateMachineComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&_MergedGlobals_366, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_366);
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
      qword_1EE1B1810 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "stateMachineAsset";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B1818 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "stateParameterBlackboardAsset";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B1820 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::introspect_StateMachineParameterBinding(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_boundParameters";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x17800000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B1828 = v19;
      __cxa_guard_release(&_MergedGlobals_366);
    }
  }

  *(this + 2) = 0x1E000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B1810;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::StateMachineComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::StateMachineComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::StateMachineComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::StateMachineComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221StateMachineComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void *re::ecs2::allocInfo_StateMachineSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B1808, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B1808))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B18C0, "StateMachineSystem");
    __cxa_guard_release(&qword_1EE1B1808);
  }

  return &unk_1EE1B18C0;
}

void re::ecs2::initInfo_StateMachineSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x628ABEEFE93FD8CALL;
  v6[1] = "StateMachineSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xE000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_StateMachineSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::StateMachineSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::StateMachineSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::StateMachineSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::StateMachineSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::StateMachineSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::StateMachineSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::StateMachineSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[12] = 0u;
  a3[13] = 0u;
  a3[10] = 0u;
  a3[11] = 0u;
  a3[8] = 0u;
  a3[9] = 0u;
  a3[6] = 0u;
  a3[7] = 0u;
  a3[4] = 0u;
  a3[5] = 0u;
  a3[2] = 0u;
  a3[3] = 0u;
  *a3 = 0u;
  a3[1] = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CFA960;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::StateMachineSystem>(_OWORD *a1)
{
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
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CFA960;
  return result;
}

void re::ecs2::StateMachineSystem::~StateMachineSystem(re::ecs2::StateMachineSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::unsafelyInplace<re::ecs2::StateMachineComponent>(_OWORD *a1)
{
  a1[28] = 0u;
  a1[29] = 0u;
  a1[26] = 0u;
  a1[27] = 0u;
  a1[24] = 0u;
  a1[25] = 0u;
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
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  a1[11] = 0u;
  v1 = a1 + 11;
  a1[5] = 0u;
  v2 = a1 + 5;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE86E0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *v2 = &unk_1F5CE8768;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0u;
  *(v3 + 132) = 0u;
  *(v3 + 148) = 0x7FFFFFFFLL;
  *(v3 + 160) = 0;
  *(v3 + 168) = 0;
  *v1 = &unk_1F5CE8798;
  *(v3 + 184) = 0u;
  *(v3 + 200) = 0u;
  *(v3 + 216) = 0;
  *(v3 + 220) = 0x7FFFFFFFLL;
  *(v3 + 264) = 0;
  *(v3 + 248) = 0u;
  *(v3 + 232) = 0u;
  *(v3 + 268) = 0x7FFFFFFFLL;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0;
  *(v3 + 316) = 0x7FFFFFFFLL;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  result = 0.0;
  *(v3 + 360) = 0;
  *(v3 + 364) = 0x7FFFFFFFLL;
  *(v3 + 408) = 0;
  *(v3 + 384) = 0;
  *(v3 + 392) = 0;
  *(v3 + 400) = 0;
  *(v3 + 376) = 0;
  *(v3 + 416) = 0;
  *(v3 + 472) = 0;
  *(v3 + 452) = 0u;
  *(v3 + 424) = 0u;
  *(v3 + 440) = 0u;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221StateMachineComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

double re::makeBindNode@<D0>(_anonymous_namespace_ *a1@<X0>, uint64_t a2@<X8>)
{
  v13 = a1;
  if (a1)
  {
    v12 = 0;
    v9 = 0u;
    v10 = 0u;
    v11 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v5 = v9;
    v6 = v10;
    *v4 = &unk_1F5CFAC38;
    *(v4 + 8) = v5;
    *(v4 + 24) = 0;
    *(v4 + 32) = 0;
    *(v4 + 40) = 0;
    *(v4 + 24) = v6;
    v7 = *(&v10 + 1);
    *(v4 + 16) = *(&v9 + 1);
    *(v4 + 32) = v7;
    *(&v9 + 1) = 0;
    v10 = 0uLL;
    *(v4 + 48) = v12;
    v12 = 0;
    ++v11;
    *(v4 + 40) = 1;
    *(a2 + 16) = v4;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v9 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v9 + 8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::ECSService>,re::ecs2::ECSService*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB3E8;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

double re::makeBindNode@<D0>(re *this@<X0>, uint64_t a2@<X8>)
{
  v14 = this;
  if (this)
  {
    v13 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v6 = v10;
    v7 = v11;
    *v5 = &unk_1F5CFA9F0;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = v7;
    v8 = *(&v11 + 1);
    *(v5 + 16) = *(&v10 + 1);
    *(v5 + 32) = v8;
    *(&v10 + 1) = 0;
    v11 = 0uLL;
    *(v5 + 48) = v13;
    v13 = 0;
    ++v12;
    *(v5 + 40) = 1;
    *(a2 + 16) = v5;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v10 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v10 + 8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

{
  v14 = this;
  if (this)
  {
    v13 = 0;
    v10 = 0u;
    v11 = 0u;
    v12 = 0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v6 = v10;
    v7 = v11;
    *v5 = &unk_1F5CFADA8;
    *(v5 + 8) = v6;
    *(v5 + 24) = 0;
    *(v5 + 32) = 0;
    *(v5 + 40) = 0;
    *(v5 + 24) = v7;
    v8 = *(&v11 + 1);
    *(v5 + 16) = *(&v10 + 1);
    *(v5 + 32) = v8;
    *(&v10 + 1) = 0;
    v11 = 0uLL;
    *(v5 + 48) = v13;
    v13 = 0;
    ++v12;
    *(v5 + 40) = 1;
    *(a2 + 16) = v5;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v10 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v10 + 8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

{
  v11 = this;
  if (this)
  {
    v10 = 0;
    memset(v8, 0, sizeof(v8));
    v9 = 0;
    v5 = (*(*v11 + 40))(v11);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(v8 + 8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Scene>,re::ecs2::Scene*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB4C0;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Entity>,re::ecs2::Entity*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB598;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

uint64_t re::BindNode::create<anonymous namespace::EntityBindNodeImpl,re::BindPoint>@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 8) = a1;
  v5 = (*(*a1 + 32))(a1, 56, 8);
  *v5 = &unk_1F5CFADA8;
  result = re::BindPoint::BindPoint((v5 + 1), a2);
  *(a3 + 16) = v5;
  return result;
}

id re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Component>,re::ecs2::Component*&>(void *a1, uint64_t a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  memset(v9, 0, sizeof(v9));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v9);
  re::BindPoint::BindPointData::deinit(v9);
  v5 = a1[5] + 32 * a1[3];
  v6 = *a3;
  *(v5 - 32) = &unk_1F5CFB670;
  if (v6)
  {
    v7 = (v6 + 8);
  }

  else
  {
    v7 = 0;
  }

  return objc_initWeak((v5 - 24), v7);
}

double re::makeEntityBindNodeForComponent@<D0>(re *this@<X0>, uint64_t a2@<X8>)
{
  v17 = *MEMORY[0x1E69E9840];
  v15 = this;
  if (this)
  {
    v14 = 0;
    v11 = 0u;
    v12 = 0u;
    v13 = 0;
    memset(v16, 0, sizeof(v16));
    re::DynamicArray<re::BindPoint::BindPointData>::add((&v11 + 8), v16);
    re::BindPoint::BindPointData::deinit(v16);
    *(v14 + 32 * *(&v12 + 1) - 32) = &unk_1F5CFB748;
    *a2 = 0u;
    *(a2 + 16) = 0u;
    v7 = v11;
    v8 = v12;
    *v6 = &unk_1F5CFADA8;
    *(v6 + 8) = v7;
    *(v6 + 24) = 0;
    *(v6 + 32) = 0;
    *(v6 + 40) = 0;
    *(v6 + 24) = v8;
    v9 = *(&v12 + 1);
    *(v6 + 16) = *(&v11 + 1);
    *(v6 + 32) = v9;
    *(&v11 + 1) = 0;
    v12 = 0uLL;
    *(v6 + 48) = v14;
    v14 = 0;
    ++v13;
    *(v6 + 40) = 1;
    *(a2 + 16) = v6;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11 + 8);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v11 + 8);
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

void re::BindPoint::addToBindPointStack<re::internal::WeakBindPointImpl<re::ecs2::Component>,re::ecs2::Component const*&>(void *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x1E69E9840];
  memset(v8, 0, sizeof(v8));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v8);
  re::BindPoint::BindPointData::deinit(v8);
  v5 = a1[5] + 32 * a1[3];
  if (*a3)
  {
    v6 = (*a3 + 8);
  }

  else
  {
    v6 = 0;
  }

  objc_initWeak(v8, v6);
  *(v5 - 24) = 0;
  v7 = (v5 - 24);
  *(v7 - 1) = &unk_1F5CFB670;
  objc_moveWeak(v7, v8);
  objc_destroyWeak(v8);
}

void anonymous namespace::SceneBindNodeImpl::~SceneBindNodeImpl(_anonymous_namespace_::SceneBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<anonymous namespace::SceneBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFA9F0;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<anonymous namespace::SceneBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

uint64_t anonymous namespace::SceneBindNodeImpl::nodeForURI@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v24 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v5 = *(a2 + 8);
  v7 = strncmp(*a2, "scene", v5);
  if (v7 || aScene_1[v5])
  {
    result = strncmp(v6, "service", v5);
    if (result || aService[v5])
    {
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }

    else
    {
      {
        {
          re::introspect<re::ecs2::ECSService>(BOOL)::info = re::ecs2::introspect_ECSService(0);
        }
      }

      v22 = 0;
      v17 = re::introspect<re::ecs2::ECSService>(BOOL)::info;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      v21 = 0;
      re::BindPoint::addToBindPointStack(&v17, (a1 + 8));
      memset(v23, 0, sizeof(v23));
      re::DynamicArray<re::BindPoint::BindPointData>::add(&v18, v23);
      re::BindPoint::BindPointData::deinit(v23);
      *(v22 + 32 * v20 - 32) = &unk_1F5CFAA88;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      v14 = v17;
      v15 = v19;
      *v13 = &unk_1F5CFAC38;
      *(v13 + 8) = v14;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0;
      *(v13 + 40) = 0;
      *(v13 + 24) = v15;
      v16 = v20;
      *(v13 + 16) = v18;
      *(v13 + 32) = v16;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      *(v13 + 48) = v22;
      v22 = 0;
      ++v21;
      *(v13 + 40) = 1;
      *(a3 + 16) = v13;
      re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v18);
      return re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v18);
    }
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v10 = *(a1 + 8);
    *v9 = &unk_1F5CFA9F0;
    v9[1] = v10;
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v9 + 2), (a1 + 16));
    *(a3 + 16) = v9;
  }

  return result;
}

uint64_t anonymous namespace::SceneBindNodeImpl::relativeNodeForKey@<X0>(uint64_t *a1@<X0>, __int128 *a2@<X1>, uint64_t a3@<X8>)
{
  v28 = 0;
  v29 = 0;
  v30 = 0;
  re::DynamicString::setCapacity(&v27, 0);
  if (v24[0])
  {
    v18 = a1[1];
    v6 = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray(&v19, a1 + 2);
    v7 = v25;
    v8 = v26;
    v16 = 0;
    v17 = &str_67;
    re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>,re::internal::SceneEntityRelationship>(&v18, &v16);
    if (v16)
    {
      if (v16)
      {
      }
    }

    *a3 = 0u;
    *(a3 + 16) = 0u;
    v12 = v18;
    v13 = v20;
    *v11 = &unk_1F5CFADA8;
    *(v11 + 8) = v12;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 24) = v13;
    v14 = v21;
    *(v11 + 16) = v19;
    *(v11 + 32) = v14;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    *(v11 + 48) = v23;
    v23 = 0;
    ++v22;
    *(v11 + 40) = 1;
    *(a3 + 16) = v11;
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
    re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19);
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  result = v27;
  if (v27)
  {
    if (v28)
    {
      return (*(*v27 + 40))(v27, v29);
    }
  }

  return result;
}

BOOL anonymous namespace::SceneBindNodeImpl::readBindingKey(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  *a4 = 0;
  *(a4 + 8) = 0;
  if (*(a4 + 16) == 1)
  {
    *(a4 + 16) = 0;
  }

  v12 = 0uLL;
  result = re::internal::parseNextBindingKey(a2, &v12, a3);
  if (result)
  {
    v8 = *(&v12 + 1);
    if (*(&v12 + 1) == 8)
    {
      v9 = v12;
      if (*v12 == 0x7365697469746E65)
      {
        v11 = 0uLL;
        result = re::internal::parseNextBindingKey(a2, &v11, a3);
        if (result)
        {
          v10 = v11;
          *a4 = v12;
          if ((*(a4 + 16) & 1) == 0)
          {
            *(a4 + 16) = 1;
          }

          *(a4 + 24) = v10;
        }

        return result;
      }
    }

    else
    {
      v9 = v12;
    }

    *a4 = v9;
    *(a4 + 8) = v8;
    if (*(a4 + 16) == 1)
    {
      *(a4 + 16) = 0;
    }

    return 1;
  }

  return result;
}

uint64_t anonymous namespace::SceneBindNodeImpl::bindPointForKey@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X8>)
{
  v22 = 0;
  v23 = 0;
  v24 = 0;
  re::DynamicString::setCapacity(&v21, 0);
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v15)
    {
      re::introspect<re::ecs2::Entity>(BOOL)::info = re::ecs2::introspect_Entity(0);
      v8 = &unk_1EE187000;
    }
  }

  {
    *(a4 + 40) = 0;
    *a4 = a2;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    *(a4 + 24) = 0;
    *(a4 + 32) = 0;
    re::BindPoint::addToBindPointStack(a4, (a1 + 8));
    v10 = v19;
    v11 = v20;
    v16 = 0;
    v17 = &str_67;
    re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>,re::internal::SceneEntityRelationship>(a4, &v16);
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  else
  {
    *(a4 + 40) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0;
  }

  result = v21;
  if (v21)
  {
    if (v22)
    {
      return (*(*v21 + 40))();
    }
  }

  return result;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 48))(v5, v4, v6, v7) - 0x61C8864680B583E9;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::isAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  if (!a4)
  {
    return 1;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 64))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::makeAlive(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (v4)
  {
    v5 = a4 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5)
  {
    v6 = *a3;
    v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    (*(*v6 + 72))(v6, v4, v7, v8);
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::targetIdentifier(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 80))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::baseValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  v4 = *(a2 + 56);
  if (v4 && a4)
  {
    v5 = *a3;
    v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
    return (*(*v5 + 88))(v5, v4, v6, v7);
  }

  return v4;
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::supportsOverrideValue(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *a3;
  if (a2)
  {
    v5 = *(a2 + 56);
  }

  else
  {
    v5 = 0;
  }

  v7 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v4 + 96))(v4, v5, v7, v8);
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::isOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 104))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::setIsOverridden(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4, uint64_t a5)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a4)
  {
    v5 = *(a2 + 56);
    if (v5)
    {
      v7 = *a3;
      v8 = re::Slice<re::internal::BindPointImplBase const*>::range(v10, 1uLL, a4);
      (*(*v7 + 112))(v7, v5, v8, v9, a5);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::overrideValueUntyped(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 120))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::markAsWritten(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 128))(v5, v4, v6, v7);
    }
  }
}

uint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::boundOwner(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v9[0] = a3;
  v9[1] = a4;
  if (!a4)
  {
    return 0;
  }

  v4 = *(a2 + 56);
  if (!v4)
  {
    return 0;
  }

  v5 = *a3;
  v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v9, 1uLL, a4);
  return (*(*v5 + 136))(v5, v4, v6, v7);
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneServiceRelationship>::willSet(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  if (a4)
  {
    v4 = *(a2 + 56);
    if (v4)
    {
      v5 = *a3;
      v6 = re::Slice<re::internal::BindPointImplBase const*>::range(v8, 1uLL, a4);
      (*(*v5 + 144))(v5, v4, v6, v7);
    }
  }
}

double anonymous namespace::EntityAndComponentBindingKeyHelper::entityNameFromBindingKey(uint64_t a1, __int128 *a2, re::DynamicString *a3)
{
  if (*(a2 + 16) == 1)
  {
    if (*(a2 + 1) != 8 || **a2 != 0x7365697469746E65)
    {
      *a1 = 0;
      return result;
    }

    a2 = (a2 + 24);
  }

  v10 = *a2;
  if (re::internal::doesBindingKeyNeedUnescaping(&v10))
  {
    re::internal::unescapeBindingKey(&v10, a3);
    v6 = *(a3 + 1);
    v7 = *(a3 + 2);
    if ((v6 & 1) == 0)
    {
      v7 = a3 + 9;
    }

    v8 = v6 >> 1;
    v9 = v6 >> 1;
    if (*(a3 + 1))
    {
      v9 = v8;
    }

    *(a1 + 8) = v7;
    *(a1 + 16) = v9;
    *a1 = 1;
  }

  else
  {
    *a1 = 1;
    result = *&v10;
    *(a1 + 8) = v10;
  }

  return result;
}

void re::BindPoint::addToBindPointStack<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>,re::internal::SceneEntityRelationship>(void *a1, uint64_t *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  memset(v6, 0, sizeof(v6));
  re::DynamicArray<re::BindPoint::BindPointData>::add((a1 + 1), v6);
  re::BindPoint::BindPointData::deinit(v6);
  v4 = a1[5] + 32 * a1[3];
  *(v4 - 32) = &unk_1F5CFAB60;
  v5 = *a2;
  *(v4 - 24) = *(v4 - 24) & 0xFFFFFFFFFFFFFFFELL | *a2 & 1;
  *(v4 - 24) = *a2 & 0xFFFFFFFFFFFFFFFELL | v5 & 1;
  *(v4 - 16) = a2[1];
  *a2 = 0;
  a2[1] = &str_67;
}

void re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::~ECSRelationshipBindPointImpl(uint64_t a1)
{
  re::StringID::destroyString((a1 + 8));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>>::moveInto(uint64_t result, void *a2)
{
  *a2 = &unk_1F5CFAB60;
  v2 = *(result + 8);
  a2[1] = a2[1] & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[1] = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v2 & 1;
  a2[2] = *(result + 16);
  *(result + 8) = 0;
  *(result + 16) = &str_67;
  return result;
}

BOOL re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>>::equals(uint64_t a1, void *a2)
{
  if ((*(*a2 + 16))(a2) != &re::internal::BindPointImpl<re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>>::implTypeInfo(void)const::typeInfo)
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 8), a2 + 1);
}

unint64_t re::internal::ECSRelationshipBindPointImpl<re::internal::SceneEntityRelationship>::hash(uint64_t a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v16[0] = a3;
  v16[1] = a4;
  v5 = *(a1 + 8);
  v4 = (a1 + 8);
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v5 >> 31) ^ (v5 >> 1))) >> 27));
  v7 = v6 ^ (v6 >> 31);
  if (a4)
  {
    v10 = re::internal::SceneEntityRelationship::resolveRelationship(v4, *(*(a2 + 104) + 344), *(*(a2 + 104) + 360));
    if (v10)
    {
      v11 = v10;
      v12 = *a3;
      v13 = re::Slice<re::internal::BindPointImplBase const*>::range(v16, 1uLL, a4);
      v7 ^= (v7 << 6) + (v7 >> 2) + (*(*v12 + 48))(v12, v11, v13, v14) - 0x61C8864680B583E9;
    }
  }

  return v7;
}