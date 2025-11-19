uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::MeshInstanceAndPartIndex>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::DeformedDirectMeshComponent>(uint64_t a1)
{
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
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
  *(a1 + 176) = 0u;
  v2 = (a1 + 176);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF6428;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 60) = 0u;
  *(v3 + 168) = 0;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0;
  inited = objc_initWeak(v2, 0);
  *(a1 + 184) = 0;
  *(a1 + 216) = re::globalAllocators(inited)[2];
  *(a1 + 224) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227DeformedDirectMeshComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_NetworkReceiveSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_333, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_333))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE5F0, "NetworkReceiveSystem");
    __cxa_guard_release(&_MergedGlobals_333);
  }

  return &unk_1EE1AE5F0;
}

void re::ecs2::initInfo_NetworkReceiveSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2D555FC17D8BF08;
  v6[1] = "NetworkReceiveSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_NetworkReceiveSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkReceiveSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkReceiveSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::NetworkReceiveSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::NetworkReceiveSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkReceiveSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkReceiveSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::NetworkReceiveSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 0);
  *v3 = &unk_1F5CF66F0;
  result = 0.0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0;
  *(v3 + 260) = 0x7FFFFFFFLL;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::NetworkReceiveSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 0);
  *v1 = &unk_1F5CF66F0;
  result = 0.0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0;
  *(v1 + 260) = 0x7FFFFFFFLL;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  return result;
}

void *re::ecs2::allocInfo_NetworkSendSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE5A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE5A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE680, "NetworkSendSystem");
    __cxa_guard_release(&qword_1EE1AE5A0);
  }

  return &unk_1EE1AE680;
}

void re::ecs2::initInfo_NetworkSendSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCDD33CCFDEACF90ALL;
  v6[1] = "NetworkSendSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x16000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_NetworkSendSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkSendSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkSendSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::NetworkSendSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::NetworkSendSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkSendSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkSendSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::NetworkSendSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 2);
  *v3 = &unk_1F5CF6788;
  *(v3 + 232) = 0;
  *(v3 + 240) = 0;
  *(v3 + 224) = 0;
  *(v3 + 248) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 288) = 0u;
  *(v3 + 304) = 0u;
  *(v3 + 320) = 0u;
  *(v3 + 336) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::NetworkSendSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 2);
  *v1 = &unk_1F5CF6788;
  *(v1 + 232) = 0;
  *(v1 + 240) = 0;
  *(v1 + 224) = 0;
  *(v1 + 248) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 288) = 0u;
  *(v1 + 304) = 0u;
  *(v1 + 320) = 0u;
  *(v1 + 336) = 0u;
  return result;
}

void *re::ecs2::introspect_NetworkShareMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Local";
      re::ecs2::introspect_NetworkShareMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Shared";
      qword_1EE1C5A30 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "None";
      qword_1EE1C5A38 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 8) = 3;
      *(v17 + 16) = "Remote";
      qword_1EE1C5A40 = v17;
    }
  }

  {
    v18 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_NetworkShareMode(BOOL)::info, "NetworkShareMode", 1, 1, 1, 1);
    *v18 = &unk_1F5D0C658;
    *(v18 + 8) = &re::ecs2::introspect_NetworkShareMode(BOOL)::enumTable;
    *(v18 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_NetworkShareMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_NetworkShareMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v20);
    v3 = re::ecs2::introspect_NetworkShareMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v20);
    if (v3)
    {
      return &re::ecs2::introspect_NetworkShareMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_NetworkShareMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_NetworkShareMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_NetworkShareMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_NetworkShareMode(BOOL)::info, a2);
  v19[0] = 0xEDDD86387A3B2768;
  v19[1] = "NetworkShareMode";
  xmmword_1EE1C5A00 = v20;
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_NetworkShareMode(BOOL)::info;
}

void *re::ecs2::allocInfo_NetworkComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AE5B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AE5B0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AE710, "NetworkComponent");
    __cxa_guard_release(&qword_1EE1AE5B0);
  }

  return &unk_1EE1AE710;
}

void re::ecs2::initInfo_NetworkComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v16[0] = 0xEDDD6DC48FF7751ELL;
  v16[1] = "NetworkComponent";
  if (v16[0])
  {
    if (v16[0])
    {
    }
  }

  *(this + 2) = v17;
  if ((atomic_load_explicit(&qword_1EE1AE5A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AE5A8);
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
      qword_1EE1AE5D8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::ecs2::introspect_NetworkShareMode(1, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_shareMode";
      *(v11 + 16) = &re::ecs2::introspect_NetworkShareMode(BOOL)::info;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1B000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AE5E0 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::ecs2::introspect_SyncAccessControl(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_accessControl";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x1B800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1AE5E8 = v14;
      __cxa_guard_release(&qword_1EE1AE5A8);
    }
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AE5D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs216NetworkComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v15 = v17;
}

void re::ecs2::NetworkReceiveSystem::~NetworkReceiveSystem(re::ecs2::NetworkReceiveSystem *this)
{
  *this = &unk_1F5CF66F0;
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 28);

  re::ecs2::System::~System(this);
}

{
  *this = &unk_1F5CF66F0;
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::NetworkReceiveSystem::willAddSystemToECSService(re::ecs2::NetworkReceiveSystem *this)
{
  v2 = *(this + 5);
  if (v2)
  {
    v3 = (*(*v2 + 32))(v2);
    v4 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v3);
    v2 = *(this + 5);
  }

  else
  {
    v4 = 0;
  }

  *(this + 34) = v4;
  v5 = (*(*v2 + 32))(v2);
  v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(v5);
  *(this + 35) = v6;
  if (*(this + 34))
  {
    v7 = re::globalAllocators(v6);
    v8 = (*(*v7[2] + 32))(v7[2], 176, 8);
    re::NetworkSystem::peerIDStringForAssetSerialization(*(this + 34), buf);
    v9 = *(this + 35);
    re::DefaultAssetSerialize::DefaultAssetSerialize(v8, 0);
    *v8 = &unk_1F5CB9868;
    *(v8 + 96) = 1;
    v10 = re::DynamicString::DynamicString((v8 + 104), buf);
    *(v8 + 136) = v9;
    *v8 = &unk_1F5CF68B0;
    *(v8 + 160) = 0u;
    *(v8 + 144) = 0u;
    re::DynamicString::setCapacity((v8 + 144), 0);
    re::DynamicString::operator=((v8 + 144), buf);
    *(this + 40) = v8;
    if (*buf && (v44 & 1) != 0)
    {
      (*(**buf + 40))(*buf, v45);
    }

    v11 = *(*(this + 34) + 2560);
    *(this + 36) = v11;
    if (v11)
    {
      *(this + 37) = RESyncServiceObserverCreate();
      v38 = MEMORY[0x1E69E9820];
      v39 = 0x40000000;
      v40 = ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke;
      v41 = &__block_descriptor_tmp_19;
      v42 = this;
      RESyncServiceObserverOnSessionDidReceiveOwnershipRequest();
      v33 = MEMORY[0x1E69E9820];
      v34 = 0x40000000;
      v35 = ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke_2;
      v36 = &__block_descriptor_tmp_13_0;
      v37 = this;
      RESyncServiceObserverOnSessionDidReceiveOwnershipResponse();
      v28 = MEMORY[0x1E69E9820];
      v29 = 0x40000000;
      v30 = ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke_3;
      v31 = &__block_descriptor_tmp_15_0;
      v32 = this;
      RESyncServiceObserverOnSessionDidReceiveOwnershipHandoff();
      v23 = MEMORY[0x1E69E9820];
      v24 = 0x40000000;
      v25 = ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke_4;
      v26 = &__block_descriptor_tmp_16_0;
      v27 = this;
      RESyncServiceObserverOnSessionDidReceiveOwnershipChange();
      RESyncServiceAddObserver();
    }
  }

  else
  {
    v12 = *re::ecsNetworkLogObjects(v6);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Attempting to init the NetworkReceiveSystem without the NetworkSystem, Ownership requests will be ignored!", buf, 2u);
    }
  }

  v13 = (*(**(this + 5) + 32))(*(this + 5));
  v14 = &unk_1EE187000;
  {
    goto LABEL_27;
  }

  while (1)
  {
    v15 = v14[183];
    re::StringID::invalid(buf);
    v16 = (*(*v13 + 16))(v13, v15, buf);
    v17 = v16;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *(this + 38) = v17;
    *(this + 39) = RESyncCreateSyncObjectContext();
    RESyncAddSyncObjectContextEntry();
    v18 = (*(**(this + 5) + 32))(*(this + 5));
    {
      re::introspect<re::NetworkCompatDeserializer>(BOOL)::info = re::introspect_NetworkCompatDeserializer(0);
    }

    v14 = re::introspect<re::NetworkCompatDeserializer>(BOOL)::info;
    re::StringID::invalid(buf);
    v19 = (*(*v18 + 16))(v18, v14, buf);
    v13 = v19;
    if (buf[0])
    {
      if (buf[0])
      {
      }
    }

    *(this + 41) = v13;
    v20 = (*(**(this + 5) + 32))(*(this + 5));
    *(this + 42) = re::ServiceLocator::serviceOrNull<re::FrameManager>(v20);
    *(this + 43) = RESyncCreateSyncObjectReadContext();
    RESyncAddSyncObjectReadContextEntry();
    result = RESyncAddSyncObjectReadContextEntry();
    if (!*(this + 38))
    {
      re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) [NetworkComponent] Deserializer not found. Please register the NetworkOPACKDeserializer in the service locator.", "m_opackDeserializer", "willAddSystemToECSService", 322);
      _os_crash();
      __break(1u);
LABEL_25:
      re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) [NetworkComponent] Deserializer not found. Please register the NetworkCompatDeserializer in the service locator.", "m_compatDeserializer", "willAddSystemToECSService", 323, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42);
      _os_crash();
      __break(1u);
      goto LABEL_26;
    }

    if (!*(this + 41))
    {
      goto LABEL_25;
    }

    if (*(this + 42))
    {
      return result;
    }

LABEL_26:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) [NetworkComponent] FrameManager not found. Please register the FrameManager in the service locator.", "m_frameManager", "willAddSystemToECSService", 324);
    _os_crash();
    __break(1u);
LABEL_27:
    {
      v14[183] = re::introspect_NetworkOPACKDeserializer(0);
    }
  }
}

void ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = a3;
  v30 = *MEMORY[0x1E69E9840];
  EntityBoundTo = re::ecs2::NetworkComponent::getEntityBoundTo(a3, &v27);
  v11 = v27;
  if (v27)
  {
    v12 = v27;
    do
    {
      v13 = v12;
      v12 = *(v12 + 32);
    }

    while (v12);
    if (!*(v13 + 24))
    {
      goto LABEL_14;
    }

    v14 = v27;
    do
    {
      v15 = v14;
      v14 = *(v14 + 32);
    }

    while (v14);
    if (*(*(v15 + 24) + 288))
    {
      v16 = v27;
      do
      {
        v17 = v16;
        v16 = *(v16 + 32);
      }

      while (v16);
      v9 = *(*(v17 + 24) + 288);
      v18 = v27;
      do
      {
        v19 = v18;
        v18 = *(v18 + 32);
      }

      while (v18);
      v20 = *(v19 + 24);
      *buf = v27;
      *&buf[8] = a4;
      *&buf[16] = a7;
      if (atomic_load_explicit(&qword_1EE1AE5C0, memory_order_acquire))
      {
        goto LABEL_13;
      }
    }

    else
    {
      v21 = *re::ecsNetworkLogObjects(EntityBoundTo);
      if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
      {
        v23 = v11[37];
        v11 = v11[39];
        Guid = RESyncableGetGuid();
        *buf = 136381187;
        *&buf[4] = v23;
        *&buf[12] = 2048;
        *&buf[14] = v11;
        *&buf[22] = 2048;
        v29 = Guid;
        _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, "Event bus does not exist in entity:%{private}s, entity.id:%llu, syncable.guidid:%llu", buf, 0x20u);
      }

      re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "onOwnershipRequest", 390);
      _os_crash();
      __break(1u);
    }

    v25 = v20;
    v26 = __cxa_guard_acquire(&qword_1EE1AE5C0);
    v20 = v25;
    if (v26)
    {
      qword_1EE1AE5B8 = re::EventBus::typeStringToId(("23REOwnershipRequestEvent" & 0x7FFFFFFFFFFFFFFFLL), v25);
      __cxa_guard_release(&qword_1EE1AE5C0);
      v20 = v25;
    }

LABEL_13:
    re::EventBus::publish(v9, v20, qword_1EE1AE5B8, buf, 0x18uLL, 0);
LABEL_14:
  }
}

void ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  re::ecs2::NetworkComponent::getEntityBoundTo(a3, &v25);
  v8 = v25;
  if (v25)
  {
    v9 = v25;
    do
    {
      v10 = v9;
      v9 = *(v9 + 32);
    }

    while (v9);
    if (!*(v10 + 24))
    {
      goto LABEL_14;
    }

    v11 = v25;
    do
    {
      v12 = v11;
      v11 = *(v11 + 32);
    }

    while (v11);
    if (*(*(v12 + 24) + 288))
    {
      v13 = v25;
      do
      {
        v14 = v13;
        v13 = *(v13 + 32);
      }

      while (v13);
      v15 = *(*(v14 + 24) + 288);
      v16 = v25;
      do
      {
        v17 = v16;
        v16 = *(v16 + 32);
      }

      while (v16);
      v18 = *(v17 + 24);
      v23[0] = v25;
      v23[1] = a4;
      v24 = a5;
      if (atomic_load_explicit(&qword_1EE1AE5D0, memory_order_acquire))
      {
        goto LABEL_13;
      }
    }

    else
    {
      re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "onOwnershipResponse", 412);
      v15 = _os_crash();
      __break(1u);
    }

    v19 = v15;
    v20 = v18;
    v21 = __cxa_guard_acquire(&qword_1EE1AE5D0);
    v18 = v20;
    v22 = v21;
    v15 = v19;
    if (v22)
    {
      qword_1EE1AE5C8 = re::EventBus::typeStringToId(("24REOwnershipResponseEvent" & 0x7FFFFFFFFFFFFFFFLL), v20);
      __cxa_guard_release(&qword_1EE1AE5D0);
      v18 = v20;
      v15 = v19;
    }

LABEL_13:
    re::EventBus::publish(v15, v18, qword_1EE1AE5C8, v23, 0x18uLL, 0);
LABEL_14:
  }
}

void ___ZN2re4ecs220NetworkReceiveSystem25willAddSystemToECSServiceEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RESyncSessionGetNetSession();
  v4 = RESyncNetSessionPeerID();

  re::ecs2::NetworkReceiveSystem::onOwnershipChange(a3, v4);
}

void re::ecs2::NetworkReceiveSystem::onOwnershipChange(uint64_t a1, uint64_t a2)
{
  re::ecs2::NetworkComponent::getEntityBoundTo(a1, &v15);
  v4 = v15;
  if (v15)
  {
    v5 = v15;
    do
    {
      v6 = v5;
      v5 = *(v5 + 32);
    }

    while (v5);
    if (*(v6 + 24))
    {
      v7 = v15;
      do
      {
        v8 = v7;
        v7 = *(v7 + 32);
      }

      while (v7);
      v9 = *(*(v8 + 24) + 288);
      if (!v9)
      {
        re::internal::assertLog(4, v3, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "onOwnershipChange", 433);
        _os_crash();
        __break(1u);
        return;
      }

      v10 = v15;
      do
      {
        v11 = v10;
        v10 = *(v10 + 32);
      }

      while (v10);
      v12 = *(v11 + 24);
      v14[0] = v15;
      v14[1] = a2;
      Type = re::EventBus::getTypeId<REOwnershipChangedEvent>();
      re::EventBus::publish(v9, v12, Type, v14, 0x10uLL, 0);
    }
  }
}

uint64_t re::ecs2::NetworkReceiveSystem::willAddSceneToECSService(re::ecs2::NetworkReceiveSystem *this, re::EventBus **a2)
{
  v2 = a2;
  v20 = a2;
  v3 = a2[36];
  if (v3)
  {
    v19 = 0;
    v17[1] = 0;
    v17[2] = 0;
    v18 = 0;
    re::DynamicArray<re::RigNodeConstraint>::setCapacity(v17, 3uLL);
    ++v18;
    v16.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v3, 0, re::ecs2::NetworkComponent::onEntityReparented, 0, 0);
    v16.n128_u64[1] = v5;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v16);
    v16.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, 0, re::ecs2::NetworkComponent::onComponentDidAddEvent, 0, 0);
    v16.n128_u64[1] = v6;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v16);
    v16.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, 0, re::ecs2::NetworkComponent::onComponentWillRemoveEvent, 0, 0);
    v16.n128_u64[1] = v7;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v16);
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 224, &v20, v17);
    if (v17[0] && v19)
    {
      (*(*v17[0] + 40))();
    }

    v2 = v20;
  }

  v8 = *(v2 + 7);
  if (v8)
  {
    v9 = (*(*v8 + 32))(v8);
    v10 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v9);
  }

  else
  {
    v10 = 0;
  }

  result = re::ecs2::SceneComponentTable::get((v2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v12 = *(result + 384);
    if (v12)
    {
      v13 = *(result + 400);
      v14 = 8 * v12;
      do
      {
        v15 = *v13++;
        result = re::ecs2::NetworkComponent::onAdded(v15, v10);
        v14 -= 8;
      }

      while (v14);
    }
  }

  return result;
}

uint64_t re::ecs2::NetworkComponent::onEntityReparented(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  v3 = *(v2 + 216);
  if (v3)
  {
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      re::packCharArrayToUInt64ForAriadne(*(v2 + 296), 0);
      v4 = *(v2 + 32);
      if (!v4 || (*(v4 + 304) & 0x80) != 0)
      {
        v5 = "N/A";
      }

      else
      {
        v5 = *(v4 + 296);
      }

      re::packCharArrayToUInt64ForAriadne(v5, 0);
      kdebug_trace();
    }

    re::ecs2::NetworkComponent::resolveViews(v3, 0);
    re::ecs2::NetworkComponent::resolveLocalViews(v3, 0);
    if (*(v3 + 480) != 1)
    {
      goto LABEL_14;
    }

    v6 = *(v2 + 32);
    if (v6 && (*(v6 + 304) & 0x80) != 0)
    {
      v6 = 0;
    }

    if (*(v3 + 488) != v6)
    {
LABEL_14:
      re::ecs2::NetworkComponent::markEntityDirty(v3, 3);
    }
  }

  return 0;
}

uint64_t re::ecs2::NetworkComponent::onComponentDidAddEvent(uint64_t a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    re::packCharArrayToUInt64ForAriadne(*(a1 + 296), 0);
    re::packCharArrayToUInt64ForAriadne(v3[4], 0);
    kdebug_trace();
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), v3);
  if (v4)
  {
    v5 = v4;
    v6 = a1;
    do
    {
      v7 = v6;
      v6 = *(v6 + 32);
    }

    while (v6);
    v8 = *(v7 + 24);
    if (v8)
    {
      v9 = *(v8 + 56);
      if (v9)
      {
        v10 = (*(*v9 + 32))(v9);
        v11 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v10);
        if (v11)
        {
          v12 = v11;
          if (v3 == re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
          {
            re::ecs2::NetworkComponent::onAdded(v5, v11);
            return 0;
          }

          v13 = *(a1 + 216);
          if (v13)
          {
            if (!*(v13 + 32) || RESyncableIsAuthoritative())
            {
              v14 = (*(*v5 + 40))(v5);
              if (!re::ecs2::LocalComponentInfo::contains((v13 + 112), v15, v14[2]))
              {
                *buf = *((*(*v5 + 40))(v5) + 16);
                if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(v13 + 336, buf))
                {
                  {
                    v17 = (*(*v5 + 40))(v5);
                    if (*(v13 + 116) < 0)
                    {
                      re::ecs2::LocalComponentInfo::add((v13 + 112), *(v17 + 16));
                    }

                    v18 = (*(*v5 + 40))(v5);
                    if (*(v13 + 116) < 0)
                    {
                      re::ecs2::LocalComponentInfo::markDirty((v13 + 112), *(v18 + 16));
                    }
                  }
                }
              }

              if (!*(v13 + 32))
              {
                goto LABEL_33;
              }

              v19 = (*(*v5 + 40))(v5);
              if (!re::ecs2::RemoteComponentInfo::get((v13 + 144), *(v19 + 16)))
              {
                re::ecs2::NetworkComponent::createSyncObjectForLocalComponent(&v29, v13, v5);
                if (v29)
                {
                  v20 = (*(*v5 + 40))(v5);
                  re::ecs2::RemoteComponentInfo::markDirty(v13 + 144, *(v20 + 16));
                  v22 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v21);
                  if (v22)
                  {
                    v23 = *re::ecsNetworkLogObjects(v22);
                    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
                    {
                      v24 = v3[4];
                      v25 = *(a1 + 312);
                      Guid = RESyncableGetGuid();
                      v27 = RESyncableGetGuid();
                      *buf = 134219011;
                      v31 = v5;
                      v32 = 2081;
                      v33 = v24;
                      v34 = 2048;
                      v35 = v25;
                      v36 = 2048;
                      v37 = Guid;
                      v38 = 2048;
                      v39 = v27;
                      _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "[NetworkComponent], Binding component %p(%{private}s) in entity %llu(%llu) to syncable %llu", buf, 0x34u);
                    }
                  }

                  RESyncRelease();
                }
              }
            }

            if (*(v13 + 32))
            {
              if (!RESyncableGetOwnerPeerID())
              {
LABEL_34:
                re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(v12 + 792, v12);
                return 0;
              }

              return 0;
            }

LABEL_33:
            if ((*(v13 + 116) & 0x80000000) == 0 || !*(v13 + 64))
            {
              goto LABEL_34;
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::NetworkComponent::onComponentWillRemoveEvent(uint64_t a1, uint64_t a2)
{
  v54 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 8);
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    re::packCharArrayToUInt64ForAriadne(*(a1 + 296), 0);
    re::packCharArrayToUInt64ForAriadne(v3[4], 0);
    kdebug_trace();
  }

  v4 = re::ecs2::EntityComponentCollection::get((a1 + 48), v3);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = (*(*v4 + 40))(v4);
  v7 = (*(*v6 + 48))(v6);
  while (1)
  {
    {
      v11 = v7;
      v7 = v11;
      if (v12)
      {
        re::introspect<re::ecs2::NetworkComponent>(BOOL)::info = re::internal::getOrCreateInfo("NetworkComponent", re::ecs2::allocInfo_NetworkComponent, re::ecs2::initInfo_NetworkComponent, &re::internal::introspectionInfoStorage<re::ecs2::NetworkComponent>, 0);
        v7 = v11;
      }
    }

    if (v7 == re::introspect<re::ecs2::NetworkComponent>(BOOL)::info)
    {
      break;
    }

    v8 = *(v7 + 56);
    if (v8)
    {
      v9 = *(v7 + 64);
      while (1)
      {
        v10 = *v9;
        if (**v9 == 1 && v10[10] == 3)
        {
          break;
        }

        ++v9;
        if (!--v8)
        {
          goto LABEL_19;
        }
      }

      v7 = *(v10 + 2);
      if (v7)
      {
        continue;
      }
    }

    goto LABEL_19;
  }

  re::ecs2::NetworkComponent::onRemoved(v5, 0);
LABEL_19:
  v13 = *(a1 + 216);
  if (!v13 || !*(v13 + 56))
  {
    return 0;
  }

  if (*(v13 + 32))
  {
    if (RESyncableGetOwnerPeerID())
    {
      goto LABEL_32;
    }
  }

  else if (*(v13 + 116) < 0 && *(v13 + 64))
  {
    goto LABEL_32;
  }

  v14 = a1;
  do
  {
    v15 = v14;
    v14 = *(v14 + 32);
  }

  while (v14);
  v16 = *(v15 + 24);
  if (v16)
  {
    v17 = *(v16 + 56);
    if (v17)
    {
      v18 = (*(*v17 + 32))(v17);
      v19 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v18);
      if (v19)
      {
        re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(v19 + 968, *(v13 + 56));
      }
    }
  }

LABEL_32:
  v20 = (*(*v5 + 40))(v5);
  if (re::ecs2::LocalComponentInfo::contains((v13 + 112), v21, v20[2]))
  {
    v22 = (*(*v5 + 40))(v5);
    if (*(v13 + 116) < 0)
    {
      re::ecs2::LocalComponentInfo::remove((v13 + 112), *(v22 + 16));
    }
  }

  v23 = (*(*v5 + 40))(v5);
  v24 = re::ecs2::RemoteComponentInfo::get((v13 + 144), *(v23 + 16));
  if (v24)
  {
    v25 = v24;
    RESyncRetain();
    re::ecs2::NetworkComponent::unbindComponentFromSyncable(v13, v5, v25);
    if (!*(v13 + 32) || !RESyncableIsAuthoritative())
    {
LABEL_55:
      RESyncRelease();
      return 0;
    }

    LOWORD(v44) = *((*(*v5 + 40))(v5) + 16);
    re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::remove(v13 + 336, &v44);
    v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27));
    v27 = v26 ^ (v26 >> 31);
    v28 = *(v13 + 408);
    if (v28)
    {
      v29 = v27 % v28;
      v30 = *(*(v13 + 392) + 4 * (v27 % v28));
      if (v30 != 0x7FFFFFFF)
      {
        v31 = *(v13 + 400);
        if (*(v31 + 24 * v30 + 16) == v25)
        {
LABEL_52:
          v37 = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(v36);
          if (v37)
          {
            v38 = *re::ecsNetworkLogObjects(v37);
            if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
            {
              v39 = v3[4];
              v40 = *(a1 + 312);
              Guid = RESyncableGetGuid();
              v42 = RESyncableGetGuid();
              v44 = 134219011;
              v45 = v5;
              v46 = 2081;
              v47 = v39;
              v48 = 2048;
              v49 = v40;
              v50 = 2048;
              v51 = Guid;
              v52 = 2048;
              v53 = v42;
              _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Unbinding component %p(%{private}s) in entity %llu(%llu) from syncable %llu", &v44, 0x34u);
            }
          }

          goto LABEL_55;
        }

        while (1)
        {
          LODWORD(v30) = *(v31 + 24 * v30 + 8) & 0x7FFFFFFF;
          if (v30 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v31 + 24 * v30 + 16) == v25)
          {
            goto LABEL_52;
          }
        }
      }
    }

    else
    {
      LODWORD(v29) = 0;
    }

    v32 = *(v13 + 420);
    if (v32 == 0x7FFFFFFF)
    {
      v32 = *(v13 + 416);
      v33 = v32;
      if (v32 == v28)
      {
        re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::setCapacity(v13 + 384, 2 * *(v13 + 412));
        LODWORD(v29) = v27 % *(v13 + 408);
        v33 = *(v13 + 416);
      }

      *(v13 + 416) = v33 + 1;
      v34 = *(v13 + 400);
      v35 = *(v34 + 24 * v32 + 8);
    }

    else
    {
      v34 = *(v13 + 400);
      v35 = *(v34 + 24 * v32 + 8);
      *(v13 + 420) = v35 & 0x7FFFFFFF;
    }

    *(v34 + 24 * v32 + 8) = v35 | 0x80000000;
    *(*(v13 + 400) + 24 * v32 + 8) = *(*(v13 + 400) + 24 * v32 + 8) & 0x80000000 | *(*(v13 + 392) + 4 * v29);
    *(*(v13 + 400) + 24 * v32) = v27;
    *(*(v13 + 400) + 24 * v32 + 16) = v25;
    RESyncRetain();
    *(*(v13 + 392) + 4 * v29) = v32;
    ++*(v13 + 412);
    ++*(v13 + 424);
    goto LABEL_52;
  }

  return 0;
}

void re::ecs2::NetworkReceiveSystem::willRemoveSceneFromECSService(re::ecs2::NetworkReceiveSystem *this, re::ecs2::Scene *a2)
{
  v16 = a2;
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4)
  {
    v5 = *(v4 + 384);
    if (v5)
    {
      v6 = *(v4 + 400);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        re::ecs2::NetworkComponent::onRemoved(v8, 1);
        v7 -= 8;
      }

      while (v7);
    }
  }

  v9 = *(a2 + 36);
  if (v9)
  {
    v10 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](this + 224, &v16);
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = *(v10 + 32);
      v13 = &v12[2 * v11];
      do
      {
        v14 = *v12;
        v15 = v12[1];
        v12 += 2;
        re::EventBus::unsubscribe(v9, v14, v15);
      }

      while (v12 != v13);
    }

    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 224, &v16);
  }
}

uint64_t re::ecs2::NetworkReceiveSystem::willRemoveSystemFromECSService(re::ecs2::NetworkReceiveSystem *this)
{
  if (*(this + 34))
  {
    RESyncServiceRemoveObserver();
    RESyncRelease();
    *(this + 35) = 0;
    *(this + 36) = 0;
    *(this + 37) = 0;
    re::internal::destroyPersistent<re::NetworkAssetSerialization>(*(this + 40));
  }

  *(this + 34) = 0;
  RESyncDestroySyncObjectReadContext();
  *(this + 43) = 0;
  result = RESyncDestroySyncObjectContext();
  *(this + 41) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  return result;
}

re *re::internal::destroyPersistent<re::NetworkAssetSerialization>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    (**v1)(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

uint64_t re::ecs2::NetworkComponent::getEntityBoundTo@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  if (result && (result = RESyncableGetUserData(), (result & 1) != 0) && (result &= ~1uLL) != 0)
  {
    result = objc_loadWeakRetained(result);
    v3 = result - 8;
    if (!result)
    {
      v3 = 0;
    }
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

void re::ecs2::NetworkReceiveSystem::update(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a1[34])
  {
    v5 = (*(*a1[5] + 184))(a1[5]);
    if (v5 || *(a3 + 200))
    {
      isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
      if (isStatisticCollectionEnabled)
      {
        v7 = re::profilerThreadContext(isStatisticCollectionEnabled);
        if (*(v7 + 152))
        {
          v39 = mach_absolute_time();
        }
      }

      else
      {
        v7 = 0;
      }

      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v83, 3051, a1);
      if (a1[36])
      {
        v40 = v7;
        v65[0] = 0;
        v65[1] = v65;
        v65[2] = 0x15002000000;
        v65[3] = __Block_byref_object_copy__13;
        v65[4] = __Block_byref_object_dispose__13;
        v66 = 0;
        v68 = 0;
        v67 = 0u;
        memset(v69, 0, sizeof(v69));
        v70 = 0x7FFFFFFFLL;
        memset(v71, 0, sizeof(v71));
        v72 = 0;
        v74 = 0;
        memset(v73, 0, sizeof(v73));
        memset(v75, 0, sizeof(v75));
        v76 = 0x7FFFFFFFLL;
        v78 = 0;
        memset(v77, 0, sizeof(v77));
        v79 = 0x7FFFFFFFLL;
        v81 = 0;
        v80 = 0;
        v82 = 0;
        SessionCount = RESyncServiceGetSessionCount();
        if (SessionCount)
        {
          v10 = SessionCount;
          for (i = 0; i != v10; ++i)
          {
            RESyncServiceGetSession();
            IsLocal = RESyncSessionIsLocal();
            if (IsLocal && re::NetworkSystemFeatureFlags::enableAltSharedApp(IsLocal))
            {
              re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v90, 6008, a1);
              v13 = a1[38];
              *(v13 + 448) = a1[40];
              v86 = 0;
              v87 = re::ecs2::NetworkReceiveSystem::processLocalSession(RESyncSession *)const::$_0::__invoke;
              v88 = 0;
              v89 = 0;
              *(v13 + 472) = &v86;
              v41 = MEMORY[0x1E69E9820];
              v42 = 0x40000000;
              v43 = ___ZNK2re4ecs220NetworkReceiveSystem19processLocalSessionEP13RESyncSession_block_invoke;
              v44 = &__block_descriptor_tmp_39;
              *v45 = a1;
              RESyncSessionReceiveRaw();
              v14 = a1[38];
              *(v14 + 472) = 0;
              *(v14 + 448) = 0;
              re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v90);
            }

            else
            {
              v59 = MEMORY[0x1E69E9820];
              v60 = 0x40000000;
              v61 = ___ZNK2re4ecs220NetworkReceiveSystem6updateENS0_6System13UpdateContextE_block_invoke;
              v62 = &unk_1E871E2A8;
              v63 = v65;
              v64 = a1;
              RESyncSessionReceive();
            }
          }
        }

        v41 = 0;
        v42 = 0;
        LODWORD(v44) = 0;
        v43 = 0;
        memset(v45, 0, sizeof(v45));
        v46 = 0x7FFFFFFFLL;
        memset(v47, 0, sizeof(v47));
        v48 = 0;
        memset(v49, 0, sizeof(v49));
        v50 = 0;
        memset(v51, 0, sizeof(v51));
        v52 = 0x7FFFFFFFLL;
        v54 = 0;
        memset(v53, 0, sizeof(v53));
        v55 = 0x7FFFFFFFLL;
        v56 = 0;
        v57 = 0;
        v58 = 0;
        v15 = a1[34];
        v16 = *(v15 + 3104);
        if (v16)
        {
          v17 = *(v15 + 3120);
          v18 = &v17[v16];
          do
          {
            v84 = *v17;
            v19 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v15 + 3040, &v84);
            if (v19)
            {
              v20 = v19;
              v90[0] = 0;
              v21 = *(v19 + 192);
              if (v21)
              {
                v22 = 0;
                v23 = *(v19 + 176);
                while (1)
                {
                  v24 = *v23;
                  v23 += 8;
                  if (v24 < 0)
                  {
                    break;
                  }

                  if (v21 == ++v22)
                  {
                    LODWORD(v22) = *(v19 + 192);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v22) = 0;
              }

              if (v22 != v21)
              {
                v25 = *(v19 + 176);
                do
                {
                  re::ecs2::NetworkReceiveSystem::findEntity(&v85, a1, *(v25 + 32 * v22 + 8), v90);
                  if (v85)
                  {
                    v26 = *(v85 + 216);
                    if (v26)
                    {
                      if (*(v26 + 32))
                      {
                        OwnerPeerID = RESyncableGetOwnerPeerID();
                      }

                      else
                      {
                        OwnerPeerID = *(v26 + 64);
                      }

                      if (OwnerPeerID == *v20)
                      {
                        re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(&v45[8], &v85);
                      }

                      else
                      {
                        re::DynamicOverflowArray<unsigned long long,2ul>::indexOf(&v86, v26 + 72, *v20);
                        if (v86 == 1)
                        {
                          re::DynamicOverflowArray<unsigned long long,2ul>::remove(v26 + 72, *v20);
                        }
                      }
                    }

                    if (v85)
                    {
                    }
                  }

                  if (*(v20 + 192) <= (v22 + 1))
                  {
                    v28 = v22 + 1;
                  }

                  else
                  {
                    v28 = *(v20 + 192);
                  }

                  v25 = *(v20 + 176);
                  while (v28 - 1 != v22)
                  {
                    LODWORD(v22) = v22 + 1;
                    if ((*(v25 + 32 * v22) & 0x80000000) != 0)
                    {
                      goto LABEL_47;
                    }
                  }

                  LODWORD(v22) = v28;
LABEL_47:
                  ;
                }

                while (v22 != v21);
              }

              re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v15 + 3040, &v84, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27))) >> 31), &v86);
              v29 = HIDWORD(v87);
              if (HIDWORD(v87) != 0x7FFFFFFF)
              {
                v30 = *(v15 + 3056);
                v31 = *(v30 + 328 * HIDWORD(v87)) & 0x7FFFFFFF;
                if (v88 == 0x7FFFFFFF)
                {
                  *(*(v15 + 3048) + 4 * v87) = v31;
                  v29 = HIDWORD(v87);
                }

                else
                {
                  *(v30 + 328 * v88) = *(v30 + 328 * v88) & 0x80000000 | v31;
                }

                v32 = (v30 + 328 * v29);
                v33 = *v32;
                if (*v32 < 0)
                {
                  *v32 = v33 & 0x7FFFFFFF;
                  re::NetworkSystem::LocalPeer::~LocalPeer((v32 + 4));
                  v29 = HIDWORD(v87);
                  v30 = *(v15 + 3056);
                  v33 = *(v30 + 328 * HIDWORD(v87));
                }

                *(v30 + 328 * v29) = *(v15 + 3076) | v33 & 0x80000000;
                *(v15 + 3076) = v29;
                --*(v15 + 3068);
                ++*(v15 + 3080);
              }
            }

            ++v17;
          }

          while (v17 != v18);
        }

        re::ecs2::NetworkReceiveSystem::processDestroyedEntities(a1, &v41);
        re::Event<re::GeometricObjectBase>::raise(a1[34] + 1496, a1[34]);
        re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v53);
        re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(&v51[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v49 + 8);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v47);
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v45[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v41);
        _Block_object_dispose(v65, 8);
        re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v77);
        re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(&v75[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v73[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v71);
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v69[8]);
        re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v66);
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v83);
        if (v40)
        {
          if (*(v40 + 152))
          {
            v34 = mach_absolute_time();
            v35 = *(v40 + 152);
            if (v35)
            {
              v36 = v35[1000].u64[0];
              if (v36 >= v34 - v39)
              {
                v36 = v34 - v39;
              }

              v35[1000].i64[0] = v36;
              v37 = v35[1000].u64[1];
              if (v37 <= v34 - v39)
              {
                v37 = v34 - v39;
              }

              v35[1000].i64[1] = v37;
              v38 = vdupq_n_s64(1uLL);
              v38.i64[0] = v34 - v39;
              v35[1001] = vaddq_s64(v35[1001], v38);
              *(v40 + 184) = 0;
            }
          }
        }
      }

      else
      {
        re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_syncService", "update", 460);
        _os_crash();
        __break(1u);
      }
    }
  }
}

uint64_t anonymous namespace::countOfNetworkComponentsInECSService(uint64_t a1)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = (*(*a1 + 296))(a1) + 120;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v28, v1, 0);
  v2 = *&v28[0];
  v17 = *&v28[0];
  v18 = DWORD2(v28[0]);
  v3 = WORD4(v28[0]);
  v4 = HIWORD(DWORD2(v28[0]));
  v5 = v1 == *&v28[0] && WORD4(v28[0]) == 0xFFFF;
  v6 = 0;
  if (!v5 || v4 != 0xFFFF)
  {
    do
    {
      v8 = v4;
      v9 = *(v2 + 16);
      if (v9 <= v4)
      {
        v19 = 0;
        memset(v28, 0, sizeof(v28));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v20 = 136315906;
        v21 = "operator[]";
        v22 = 1024;
        v23 = 797;
        v24 = 2048;
        v25 = v8;
        v26 = 2048;
        v27 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(*(v2 + 32) + 16 * v4) + 240 * v3;
      v11 = *(v10 + 200);
      if (v11)
      {
        v12 = *(v10 + 216);
        v13 = 8 * v11;
        do
        {
          v14 = re::ecs2::SceneComponentTable::get((*v12 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          if (v14)
          {
            v15 = *(v14 + 384);
          }

          else
          {
            v15 = 0;
          }

          v6 += v15;
          v12 += 8;
          v13 -= 8;
        }

        while (v13);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v17);
      v2 = v17;
      v3 = v18;
      v4 = HIWORD(v18);
    }

    while (v17 != v1 || v18 != 0xFFFF || HIWORD(v18) != 0xFFFF);
  }

  return v6;
}

__n128 __Block_byref_object_copy__13(uint64_t a1, uint64_t a2)
{
  *(a1 + 72) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 40) = 0;
  *(a1 + 64) = 0;
  v2 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v3 = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v3;
  v4 = *(a1 + 72);
  *(a1 + 72) = *(a2 + 72);
  *(a2 + 72) = v4;
  ++*(a2 + 64);
  ++*(a1 + 64);
  *(a1 + 112) = 0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 116) = 0x7FFFFFFFLL;
  *(a1 + 80) = *(a2 + 80);
  *(a2 + 80) = 0;
  v5 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v5;
  v6 = *(a1 + 96);
  *(a1 + 96) = *(a2 + 96);
  *(a2 + 96) = v6;
  LODWORD(v6) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v6;
  LODWORD(v6) = *(a1 + 108);
  *(a1 + 108) = *(a2 + 108);
  *(a2 + 108) = v6;
  LODWORD(v6) = *(a1 + 112);
  *(a1 + 112) = *(a2 + 112);
  *(a2 + 112) = v6;
  LODWORD(v6) = *(a1 + 116);
  *(a1 + 116) = *(a2 + 116);
  *(a2 + 116) = v6;
  *(a1 + 160) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 128) = 0;
  *(a1 + 152) = 0;
  v7 = *(a2 + 136);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = v7;
  *(a2 + 128) = 0;
  *(a2 + 136) = 0;
  v8 = *(a1 + 144);
  *(a1 + 144) = *(a2 + 144);
  *(a2 + 144) = v8;
  v9 = *(a1 + 160);
  *(a1 + 160) = *(a2 + 160);
  *(a2 + 160) = v9;
  ++*(a2 + 152);
  ++*(a1 + 152);
  *(a1 + 200) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 168) = 0;
  *(a1 + 192) = 0;
  v10 = *(a2 + 176);
  *(a1 + 168) = *(a2 + 168);
  *(a1 + 176) = v10;
  *(a2 + 168) = 0;
  *(a2 + 176) = 0;
  v11 = *(a1 + 184);
  *(a1 + 184) = *(a2 + 184);
  *(a2 + 184) = v11;
  v12 = *(a1 + 200);
  *(a1 + 200) = *(a2 + 200);
  *(a2 + 200) = v12;
  ++*(a2 + 192);
  ++*(a1 + 192);
  *(a1 + 240) = 0;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 244) = 0x7FFFFFFFLL;
  *(a1 + 208) = *(a2 + 208);
  *(a2 + 208) = 0;
  v13 = *(a1 + 216);
  *(a1 + 216) = *(a2 + 216);
  *(a2 + 216) = v13;
  v14 = *(a1 + 224);
  *(a1 + 224) = *(a2 + 224);
  *(a2 + 224) = v14;
  *(a1 + 232) = *(a2 + 232);
  *(a2 + 232) = 0;
  LODWORD(v14) = *(a1 + 236);
  *(a1 + 236) = *(a2 + 236);
  *(a2 + 236) = v14;
  LODWORD(v14) = *(a1 + 240);
  *(a1 + 240) = *(a2 + 240);
  *(a2 + 240) = v14;
  LODWORD(v14) = *(a1 + 244);
  *(a1 + 244) = *(a2 + 244);
  *(a2 + 244) = v14;
  ++*(a1 + 248);
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0;
  *(a1 + 292) = 0x7FFFFFFFLL;
  *(a1 + 256) = *(a2 + 256);
  *(a2 + 256) = 0;
  v15 = *(a1 + 264);
  *(a1 + 264) = *(a2 + 264);
  *(a2 + 264) = v15;
  v16 = *(a1 + 272);
  *(a1 + 272) = *(a2 + 272);
  *(a2 + 272) = v16;
  *(a1 + 280) = *(a2 + 280);
  *(a2 + 280) = 0;
  LODWORD(v16) = *(a1 + 284);
  *(a1 + 284) = *(a2 + 284);
  *(a2 + 284) = v16;
  LODWORD(v16) = *(a1 + 288);
  *(a1 + 288) = *(a2 + 288);
  *(a2 + 288) = v16;
  LODWORD(v16) = *(a1 + 292);
  *(a1 + 292) = *(a2 + 292);
  *(a2 + 292) = v16;
  ++*(a1 + 296);
  result = *(a2 + 304);
  v18 = *(a2 + 320);
  *(a1 + 304) = result;
  *(a1 + 320) = v18;
  return result;
}

uint64_t __Block_byref_object_dispose__13(uint64_t *a1)
{
  re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 32);
  re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(a1 + 26);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 21));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 16));
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(a1 + 10);

  return re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit((a1 + 5));
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem6updateENS0_6System13UpdateContextE_block_invoke(uint64_t a1)
{
  v38 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  *(*(*(a1 + 32) + 8) + 328) = RESyncCommitGetSourcePeerID();
  if (v2[34])
  {
    v3 = *(*(a1 + 32) + 8);
    *(v3 + 320) = *(v3 + 320) - CFAbsoluteTimeGetCurrent();
    *(v2[38] + 448) = v2[40];
    if (re::internal::enableSignposts(0, 0))
    {
      kdebug_trace();
    }

    *(v3 + 304) = 0;
    *(v3 + 312) = 0;
    IsAtomic = RESyncCommitIsAtomic();
    RESyncCommitEnumerateForRead();
    *&v32 = MEMORY[0x1E69E9820];
    *(&v32 + 1) = 0x40000000;
    v33 = ___ZNK2re4ecs220NetworkReceiveSystem25processComponentSnapshotsEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke;
    v34 = &__block_descriptor_tmp_42;
    v35 = v2;
    v36 = v3 + 40;
    RESyncCommitEnumerateForRead();
    RESyncCommitEnumerateForRead();
    v4 = re::internal::enableSignposts(0, 0);
    if (v4)
    {
      v4 = kdebug_trace();
    }

    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v4);
    if (isStatisticCollectionEnabled)
    {
      isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
      v6 = *(isStatisticCollectionEnabled + 152);
      if (v6)
      {
        v7 = *(v3 + 304);
        v8 = v6[384].u64[0];
        if (v8 >= v7)
        {
          v8 = *(v3 + 304);
        }

        v6[384].i64[0] = v8;
        v9 = v6[384].u64[1];
        if (v9 <= v7)
        {
          v9 = v7;
        }

        v6[384].i64[1] = v9;
        v10 = vdupq_n_s64(1uLL);
        v10.i64[0] = v7;
        v6[385] = vaddq_s64(v6[385], v10);
        *(isStatisticCollectionEnabled + 184) = 0;
      }
    }

    v11 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
    if (v11)
    {
      v12 = re::profilerThreadContext(v11);
      v13 = *(v12 + 152);
      if (v13)
      {
        v14 = *(v3 + 312);
        v15 = v13[368].u64[0];
        if (v15 >= v14)
        {
          v15 = *(v3 + 312);
        }

        v13[368].i64[0] = v15;
        v16 = v13[368].u64[1];
        if (v16 <= v14)
        {
          v16 = v14;
        }

        v13[368].i64[1] = v16;
        v17 = vdupq_n_s64(1uLL);
        v17.i64[0] = v14;
        v13[369] = vaddq_s64(v13[369], v17);
        *(v12 + 184) = 0;
      }
    }

    *(v2[38] + 448) = 0;
    v19 = CFAbsoluteTimeGetCurrent() + *(v3 + 320);
    *(v3 + 320) = v19;
    if (v19 > 0.05)
    {
      v20 = *re::ecsNetworkLogObjects(v18);
      if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
      {
        v21 = *(v3 + 328);
        LODWORD(v32) = 134217984;
        *(&v32 + 4) = v21;
        _os_log_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processCommit for peer %llu", &v32, 0xCu);
      }

      *(v3 + 320) = 0;
    }
  }

  RESyncCommitListAddCopy();
  RESyncCommitSetForwarded();
  re::ecs2::NetworkReceiveSystem::processCreatedEntities(v2, *(*(a1 + 32) + 8) + 40);
  re::ecs2::NetworkReceiveSystem::processParentChanges(v2, *(*(a1 + 32) + 8) + 40);
  re::ecs2::NetworkReceiveSystem::processEvents(v2, *(*(a1 + 32) + 8) + 40);
  re::ecs2::NetworkReceiveSystem::processDestroyedEntities(v2, *(*(a1 + 32) + 8) + 40);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(*(*(a1 + 32) + 8) + 40);
  re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::clear(*(*(a1 + 32) + 8) + 80);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(*(*(a1 + 32) + 8) + 128);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(*(*(a1 + 32) + 8) + 168);
  v22 = *(*(a1 + 32) + 8);
  if (*(v22 + 236))
  {
    v23 = *(v22 + 232);
    if (v23)
    {
      memset_pattern16(*(v22 + 216), &unk_1E304C660, 4 * v23);
    }

    v24 = *(v22 + 240);
    if (v24)
    {
      v25 = 0;
      for (i = 0; i < v24; ++i)
      {
        v27 = *(v22 + 224);
        v28 = *(v27 + v25);
        if (v28 < 0)
        {
          v29 = v27 + v25;
          *(v27 + v25) = v28 & 0x7FFFFFFF;
          if (*(v27 + v25 + 8))
          {
            RESyncRelease();
            *(v29 + 8) = 0;
            v24 = *(v22 + 240);
          }
        }

        v25 += 32;
      }
    }

    *(v22 + 236) = 0;
    *(v22 + 240) = 0;
    v30 = *(v22 + 248) + 1;
    *(v22 + 244) = 0x7FFFFFFF;
    *(v22 + 248) = v30;
  }

  return 1;
}

void re::ecs2::NetworkReceiveSystem::processCreatedEntities(uint64_t a1, uint64_t a2)
{
  v35 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v32, 6045, a1);
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  v3 = *(a2 + 16);
  if (v3)
  {
    v4 = *(a2 + 32);
    v5 = &v4[v3];
    do
    {
      v6 = *v4;
      v7 = *(*v4 + 216);
      if (v7 && (v8 = *(v7 + 32), v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27)), re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(buf, a2 + 168, v8, v9 ^ (v9 >> 31)), v34 != 0x7FFFFFFF))
      {
        v10 = (*(a2 + 184) + 32 * v34 + 16);
      }

      else
      {
        v10 = 0;
      }

      v11 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 216, *(v6 + 312));
      v12 = v6;
      do
      {
        v13 = v12;
        v12 = *(v12 + 32);
      }

      while (v12);
      if (!*(v13 + 24) && (!v10 || !*v10) && (!v11 || !*(v11 + 8)))
      {
        v14 = re::ecs2::EntityComponentCollection::get((v6 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v14)
        {
          *(v6 + 304) |= 0x480u;
          v15 = *(a1 + 40);
          v16 = re::globalAllocators(v14);
          v17 = (*(*v16[2] + 32))(v16[2], 384, 8);
          *buf = re::ecs2::Scene::Scene(v17, v6);
          (*(*v15 + 112))(v15, buf, 0xFFFFFFFFLL);
          if (*buf)
          {
          }
        }

        else
        {
          v31 = 0;
          re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(*(a1 + 272) + 1408, *(a1 + 272));
          if (!v31)
          {
            v18 = (*(**(a1 + 40) + 288))(*(a1 + 40)) + 120;
            re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v18, 0);
            if (v18 != *buf || *&buf[8] != 0xFFFFFFFFLL)
            {
              do
              {
                v20 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(buf);
                if (*(v20 + 200))
                {
                  v21 = *(*re::ecs2::EntityComponentCollection::operator[](v20 + 176, 0) + 104);
                  v30 = v6;
                  if (v6)
                  {
                    v22 = (v6 + 8);
                  }

                  re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v21 + 320), &v30);
                  if (v30)
                  {
                  }
                }

                re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(buf);
              }

              while (*buf != v18 || *&buf[8] != 0xFFFF || *&buf[10] != 0xFFFF);
            }
          }
        }
      }

      ++v4;
    }

    while (v4 != v5);
  }

  v26 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v26;
  if (v26 > 0.05)
  {
    v27 = *re::ecsNetworkLogObjects(v25);
    if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
    {
      v28 = *(a2 + 288);
      *buf = 134217984;
      *&buf[4] = v28;
      _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processCreatedEntities for peer %llu", buf, 0xCu);
    }

    *(a2 + 280) = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v32);
}

void re::ecs2::NetworkReceiveSystem::processParentChanges(unint64_t a1, uint64_t a2)
{
  v174[16] = *MEMORY[0x1E69E9840];
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v161 = a1;
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  while (*(a2 + 244))
  {
    v5 = *(a2 + 248);
    v6 = *(a2 + 232);
    if (v5)
    {
      v7 = 0;
      v8 = *(a2 + 232);
      while (1)
      {
        v9 = *v8;
        v8 += 10;
        if (v9 < 0)
        {
          break;
        }

        if (v5 == ++v7)
        {
          LODWORD(v7) = *(a2 + 248);
          break;
        }
      }

      v10 = 0;
      v11 = *(v6 + 40 * v7 + 8);
      v12 = *(a2 + 232);
      while (1)
      {
        v13 = *v12;
        v12 += 10;
        if (v13 < 0)
        {
          break;
        }

        if (v5 == ++v10)
        {
          LODWORD(v10) = *(a2 + 248);
          break;
        }
      }

      v14 = v10;
    }

    else
    {
      v14 = 0;
      v11 = *(v6 + 8);
    }

    v15 = v6 + 40 * v14;
    v18 = *(v15 + 16);
    v16 = v15 + 16;
    v17 = v18;
    if (v18)
    {
      v19 = (v17 + 8);
      v20 = *(v16 + 8);
      *v166 = v17;
      v21 = (v17 + 8);
    }

    else
    {
      v20 = *(v16 + 8);
      *v166 = 0;
    }

    v22 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 216, v20);
    if (v22)
    {
      v23 = v22;
      do
      {
        v11 = v20;
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v166, *v23);
        v20 = v23[1];
        v23 = re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a2 + 216, v20);
      }

      while (v23);
    }

    v24 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::MaterialInstanceHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, a2 + 216, v11, v24 ^ (v24 >> 31));
    v25 = *&buf[12];
    if (*&buf[12] != 0x7FFFFFFF)
    {
      v26 = *(a2 + 232);
      v27 = (v26 + 40 * *&buf[12]);
      v28 = *v27 & 0x7FFFFFFF;
      if (*&buf[16] == 0x7FFFFFFF)
      {
        *(*(a2 + 224) + 4 * *&buf[8]) = v28;
      }

      else
      {
        *(v26 + 40 * *&buf[16]) = *(v26 + 40 * *&buf[16]) & 0x80000000 | v28;
      }

      v29 = *v27;
      if (*v27 < 0)
      {
        v29 &= ~0x80000000;
        *v27 = v29;
        v30 = *(v27 + 2);
        if (v30)
        {

          *(v27 + 2) = 0;
          v26 = *(a2 + 232);
          v29 = *(v26 + 40 * v25);
        }
      }

      *(v26 + 40 * v25) = *(a2 + 252) | v29 & 0x80000000;
      --*(a2 + 244);
      v31 = *(a2 + 256) + 1;
      *(a2 + 252) = v25;
      *(a2 + 256) = v31;
    }

    if (v20)
    {
      v32 = *v166;
      do
      {
        v33 = v32;
        v32 = *(v32 + 32);
      }

      while (v32);
      v165 = *(v33 + 24);
      re::ecs2::NetworkReceiveSystem::findEntity(&v164, v161, v20, &v165);
      v36 = v164;
      if (v164)
      {
        v37 = *v166;
        do
        {
          v38 = v37;
          v37 = *(v37 + 32);
        }

        while (v37);
        if (!*(v38 + 24))
        {
          goto LABEL_39;
        }

        v39 = v164;
        do
        {
          v40 = v39;
          v39 = *(v39 + 4);
        }

        while (v39);
        if (!*(v40 + 3))
        {
          v50 = *re::ecsNetworkLogObjects(*v166);
          if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
          {
            v52 = *(v36 + 39);
            v53 = *(v36 + 37);
            v54 = *(*v166 + 312);
            v55 = *(*v166 + 296);
            *buf = 134218755;
            *&buf[4] = v52;
            *&buf[12] = 2081;
            *&buf[14] = v53;
            v172 = 2048;
            v173 = v54;
            LOWORD(v174[0]) = 2081;
            *(v174 + 2) = v55;
            _os_log_error_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_ERROR, "[NetworkComponent] Parent (id=%llu name=%{private}s) not in scene while reparenting Entity (id=%llu name=%{private}s)", buf, 0x2Au);
          }
        }

        else
        {
LABEL_39:
          re::ecs2::NetworkReceiveSystem::setEntityParent(*v166, v164, v35);
        }

        v164 = 0;
      }

      else
      {
        v47 = *re::ecsNetworkLogObjects(v34);
        EntityBoundTo = os_log_type_enabled(v47, OS_LOG_TYPE_ERROR);
        if (EntityBoundTo)
        {
          v48 = *(*v166 + 312);
          v49 = *(*v166 + 296);
          *buf = 134218499;
          *&buf[4] = v48;
          *&buf[12] = 2081;
          *&buf[14] = v49;
          v172 = 2048;
          v173 = v20;
          _os_log_error_impl(&dword_1E1C61000, v47, OS_LOG_TYPE_ERROR, "[NetworkComponent] Entity (id=%llu name=%{private}s) unable to find parent %llu.", buf, 0x20u);
        }
      }
    }

    else
    {
      v41 = *(*v166 + 32);
      if (v41 && (*(v41 + 304) & 0x80) == 0)
      {
        re::ecs2::NetworkReceiveSystem::setEntityParent(*v166, 0, *v166);
      }

      LODWORD(v165) = 0;
      re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(*(v161 + 272) + 1408, *(v161 + 272));
      if (!v165)
      {
        v42 = (*(**(v161 + 40) + 288))(*(v161 + 40)) + 120;
        EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v42, 0);
        v43 = v42 == *buf && *&buf[8] == 0xFFFFFFFFLL;
        if (!v43)
        {
          while (1)
          {
            v44 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(buf);
            if (*(v44 + 200))
            {
              break;
            }

            EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(buf);
            if (*buf == v42 && *&buf[8] == 0xFFFF && *&buf[10] == 0xFFFF)
            {
              goto LABEL_63;
            }
          }

          v51 = re::ecs2::EntityComponentCollection::operator[](v44 + 176, 0);
          re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(*v51 + 104) + 320), v166);
        }
      }
    }

LABEL_63:
    if (*v166)
    {
    }

    if (v17)
    {
    }
  }

  *buf = 0;
  *&buf[8] = 0;
  *&buf[16] = 1;
  v173 = 0;
  v174[0] = 0;
  v56 = *(a2 + 200);
  if (v56)
  {
    v57 = 0;
    v58 = *(a2 + 184);
    while (1)
    {
      v59 = *v58;
      v58 += 8;
      if (v59 < 0)
      {
        break;
      }

      if (v56 == ++v57)
      {
        LODWORD(v57) = *(a2 + 200);
        break;
      }
    }
  }

  else
  {
    LODWORD(v57) = 0;
  }

  if (v57 == v56)
  {
    v60 = v161;
    goto LABEL_162;
  }

  v61 = *(a2 + 184);
  do
  {
    v62 = v61 + 32 * v57;
    v64 = *(v62 + 8);
    v63 = v62 + 8;
    EntityBoundTo = re::ecs2::NetworkComponent::getEntityBoundTo(v64, &v165);
    v65 = v165;
    if (v165)
    {
      if (!*(v63 + 8))
      {
        v75 = *(v165 + 4);
        if (v75 && (*(v75 + 304) & 0x80) == 0)
        {
          re::ecs2::NetworkReceiveSystem::setEntityParent(v165, 0, v165);
        }

        LODWORD(v164) = 0;
        re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(*(v161 + 272) + 1408, *(v161 + 272));
        if (!v164)
        {
          v76 = (*(**(v161 + 40) + 288))(*(v161 + 40)) + 120;
          EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v166, v76, 0);
          if (v76 != *v166 || *&v166[8] != 0xFFFFFFFFLL)
          {
            while (1)
            {
              v78 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(v166);
              if (*(v78 + 200))
              {
                break;
              }

              EntityBoundTo = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(v166);
              if (*v166 == v76 && *&v166[8] == 0xFFFF && *&v166[10] == 0xFFFF)
              {
                goto LABEL_131;
              }
            }

            v92 = re::ecs2::EntityComponentCollection::operator[](v78 + 176, 0);
            re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(*v92 + 104) + 320), &v165);
          }
        }

        goto LABEL_131;
      }

      SyncableWithGuid = RESyncServiceFindSyncableWithGuid();
      v67 = re::ecs2::NetworkComponent::getEntityBoundTo(SyncableWithGuid, &v164);
      v69 = v164;
      if (!v164)
      {
        v81 = *(v161 + 272);
        v82 = *(v63 + 8);
        v163 = v165;
        if (v165)
        {
          v83 = v165 + 8;
        }

        v84 = re::NetworkSystem::queueWaitForParentEntity(v81, v82, &v163);
        if (v163)
        {

          v163 = 0;
        }

        v85 = *re::ecsNetworkLogObjects(v84);
        EntityBoundTo = os_log_type_enabled(v85, OS_LOG_TYPE_DEFAULT);
        if (EntityBoundTo)
        {
          Guid = RESyncableGetGuid();
          v87 = *(v165 + 37);
          v88 = *(v63 + 8);
          *v166 = 134218499;
          *&v166[4] = Guid;
          *&v166[12] = 2081;
          *&v166[14] = v87;
          v167 = 2048;
          v168 = v88;
          _os_log_impl(&dword_1E1C61000, v85, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Entity (guid=%llu name=%{private}s) unable to find parent %llu. Postpone binding with parent.", v166, 0x20u);
        }

        goto LABEL_131;
      }

      v70 = v165;
      v71 = v165;
      do
      {
        v72 = v71;
        v71 = *(v71 + 4);
      }

      while (v71);
      if (!*(v72 + 3))
      {
        goto LABEL_89;
      }

      v73 = v164;
      do
      {
        v74 = v73;
        v73 = *(v73 + 4);
      }

      while (v73);
      if (*(v74 + 3))
      {
LABEL_89:
        re::ecs2::NetworkReceiveSystem::setEntityParent(v165, v164, v68);
LABEL_130:

LABEL_131:
        if (v165)
        {
        }

        goto LABEL_133;
      }

      if (*buf)
      {
        v89 = buf[16];
        if (buf[16])
        {
          if ((*&buf[8] - 8) < 0xFFFFFFFFFFFFFFF7)
          {
            v90 = *&buf[8] + 1;
            v91 = 16;
            goto LABEL_123;
          }
        }

        else if (*&buf[8] >= v173)
        {
          v90 = *&buf[8] + 1;
          if (v173 < *&buf[8] + 1)
          {
            v91 = 2 * v173;
LABEL_123:
            if (v91 <= v90)
            {
              v93 = v90;
            }

            else
            {
              v93 = v91;
            }

            re::DynamicOverflowArray<re::Pair<re::ecs2::Entity *,re::ecs2::Entity *,true>,8ul>::setCapacity(buf, v93);
            v89 = buf[16];
          }
        }
      }

      else
      {
        re::DynamicOverflowArray<re::Pair<re::ecs2::Entity *,re::ecs2::Entity *,true>,8ul>::setCapacity(buf, *&buf[8] + 1);
        v89 = buf[16] + 2;
        *&buf[16] += 2;
      }

      v43 = (v89 & 1) == 0;
      v94 = v174[0];
      v95 = *&buf[8];
      if (!v43)
      {
        v94 = &v173;
      }

      v96 = &v94[2 * *&buf[8]];
      *v96 = v70;
      v96[1] = v69;
      *&buf[8] = v95 + 1;
      *&buf[16] += 2;
      goto LABEL_130;
    }

LABEL_133:
    if (*(a2 + 200) <= (v57 + 1))
    {
      v97 = v57 + 1;
    }

    else
    {
      v97 = *(a2 + 200);
    }

    v61 = *(a2 + 184);
    while (v97 - 1 != v57)
    {
      LODWORD(v57) = v57 + 1;
      if ((*(v61 + 32 * v57) & 0x80000000) != 0)
      {
        goto LABEL_141;
      }
    }

    LODWORD(v57) = v97;
LABEL_141:
    ;
  }

  while (v57 != v56);
  v60 = v161;
  if (*&buf[8])
  {
    v98 = 0;
    v99 = (buf[16] & 1) != 0 ? &v173 : v174[0];
    v100 = &v99[2 * *&buf[8]];
    do
    {
      v101 = 0;
      do
      {
        v102 = v99[1];
        do
        {
          v103 = v102;
          v102 = *(v102 + 4);
        }

        while (v102);
        if (*(v103 + 3))
        {
          re::ecs2::NetworkReceiveSystem::setEntityParent(*v99, v99[1], v65);
          *v166 = *v99;
          *v99 = *(v100 - 1);
          *(v100 - 1) = *v166;
          v100 -= 2;
          v101 = 1;
        }

        else
        {
          v99 += 2;
        }
      }

      while (v99 != v100);
      ++v98;
      if (buf[16])
      {
        v99 = &v173;
      }

      else
      {
        v99 = v174[0];
      }
    }

    while ((v101 & (v99 != v100)) != 0);
    while (v99 != v100)
    {
      v104 = *re::ecsNetworkLogObjects(EntityBoundTo);
      if (os_log_type_enabled(v104, OS_LOG_TYPE_DEFAULT))
      {
        v106 = v99[1];
        v107 = *(*v99 + 39);
        v108 = *(*v99 + 37);
        v109 = *(v106 + 39);
        v110 = *(v106 + 37);
        *v166 = 134218755;
        *&v166[4] = v107;
        *&v166[12] = 2081;
        *&v166[14] = v108;
        v167 = 2048;
        v168 = v109;
        v169 = 2081;
        v170 = v110;
        _os_log_impl(&dword_1E1C61000, v104, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Entity %llu(%{private}s) in a scene reparented to %llu(%{private}s) not in a scene", v166, 0x2Au);
      }

      v111 = *v99;
      v112 = v99[1];
      v99 += 2;
      re::ecs2::NetworkReceiveSystem::setEntityParent(v111, v112, v105);
    }
  }

LABEL_162:
  v113 = *(a2 + 16);
  if (v113)
  {
    v114 = *(a2 + 32);
    v160 = &v114[v113];
    do
    {
      v115 = *(*v114 + 27);
      if (v115)
      {
        if (*(v115 + 32))
        {
          v116 = RESyncableGetGuid();
        }

        else
        {
          v116 = 0;
        }

        v118 = *(v60 + 272);
        *v166 = v116;
        v119 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v118 + 2200, v166);
        if (v119)
        {
          v120 = *(v119 + 2);
          if (v120)
          {
            v121 = *(v119 + 4);
            v122 = 8 * v120;
            do
            {
              v123 = *re::ecsNetworkLogObjects(v119);
              if (os_log_type_enabled(v123, OS_LOG_TYPE_DEFAULT))
              {
                v125 = *(*v121 + 37);
                v126 = *(*v114 + 37);
                *v166 = 136381187;
                *&v166[4] = v125;
                *&v166[12] = 2081;
                *&v166[14] = v126;
                v167 = 2048;
                v168 = v116;
                _os_log_impl(&dword_1E1C61000, v123, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Late binding entity %{private}s to parent %{private}s(guid=%llu)", v166, 0x20u);
              }

              v127 = *v121++;
              re::ecs2::NetworkReceiveSystem::setEntityParent(v127, *v114, v124);
              v122 -= 8;
            }

            while (v122);
          }
        }

        v60 = v161;
        EntityBoundTo = re::NetworkSystem::clearWaitListForParent(*(v161 + 272), v116);
      }

      else
      {
        v117 = *re::ecsNetworkLogObjects(EntityBoundTo);
        EntityBoundTo = os_log_type_enabled(v117, OS_LOG_TYPE_INFO);
        if (EntityBoundTo)
        {
          *v166 = 0;
          _os_log_impl(&dword_1E1C61000, v117, OS_LOG_TYPE_INFO, "[NetworkComponent] Entity arrived without network component.", v166, 2u);
        }
      }

      ++v114;
    }

    while (v114 != v160);
  }

  v128 = *(v60 + 272);
  v129 = *(v128 + 2232);
  if (!v129)
  {
    LODWORD(v130) = 0;
    goto LABEL_185;
  }

  v130 = 0;
  v131 = *(v128 + 2216);
  do
  {
    v132 = *v131;
    v131 += 16;
    if (v132 < 0)
    {
      goto LABEL_185;
    }

    ++v130;
  }

  while (v129 != v130);
  LODWORD(v130) = *(v128 + 2232);
LABEL_185:
  while (v130 != v129)
  {
    v133 = (*(v128 + 2216) + (v130 << 6));
    v134 = RESyncServiceFindSyncableWithGuid();
    v135 = re::ecs2::NetworkComponent::getEntityBoundTo(v134, &v165);
    v136 = v165;
    if (v165)
    {
      v138 = v133[1];
      v139 = v133[4];
      if (v139)
      {
        v140 = v133[6];
        v141 = 8 * v139;
        do
        {
          v142 = *re::ecsNetworkLogObjects(v135);
          if (os_log_type_enabled(v142, OS_LOG_TYPE_DEFAULT))
          {
            v144 = *(*v140 + 37);
            v145 = *(v136 + 37);
            *v166 = 136381187;
            *&v166[4] = v144;
            *&v166[12] = 2081;
            *&v166[14] = v145;
            v167 = 2048;
            v168 = v138;
            _os_log_impl(&dword_1E1C61000, v142, OS_LOG_TYPE_DEFAULT, "DOUBLE Late binding entity %{private}s to parent %{private}s(guid=%llu)", v166, 0x20u);
          }

          v146 = *v140++;
          re::ecs2::NetworkReceiveSystem::setEntityParent(v146, v136, v143);
          v141 -= 8;
        }

        while (v141);
      }

      v60 = v161;
      re::NetworkSystem::clearWaitListForParent(*(v161 + 272), v138);

      break;
    }

    v137 = *(v128 + 2232);
    if (v137 <= v130 + 1)
    {
      v137 = v130 + 1;
    }

    while (v137 - 1 != v130)
    {
      LODWORD(v130) = v130 + 1;
      if ((*(*(v128 + 2216) + (v130 << 6)) & 0x80000000) != 0)
      {
        goto LABEL_185;
      }
    }

    LODWORD(v130) = v137;
  }

  v147 = *(a2 + 72);
  if (v147)
  {
    v148 = 0;
    v149 = (*(a2 + 56) + 8);
    while (1)
    {
      v150 = *v149;
      v149 += 6;
      if (v150 < 0)
      {
        break;
      }

      if (v147 == ++v148)
      {
        LODWORD(v148) = *(a2 + 72);
        break;
      }
    }
  }

  else
  {
    LODWORD(v148) = 0;
  }

  if (v148 != v147)
  {
    v151 = *(a2 + 56);
    do
    {
      v152 = *(v60 + 272);
      v153 = *(v151 + 24 * v148 + 16);
      v162 = v153;
      if (v153)
      {
        v154 = (v153 + 8);
      }

      re::NetworkSystem::removeEntityFromParentWaitlist(v152, &v162);
      if (v162)
      {

        v162 = 0;
      }

      v155 = *(a2 + 72);
      v151 = *(a2 + 56);
      if (v155 <= v148 + 1)
      {
        v155 = v148 + 1;
      }

      while (v155 - 1 != v148)
      {
        LODWORD(v148) = v148 + 1;
        if ((*(v151 + 24 * v148 + 8) & 0x80000000) != 0)
        {
          goto LABEL_217;
        }
      }

      LODWORD(v148) = v155;
LABEL_217:
      ;
    }

    while (v148 != v147);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (*buf && (buf[16] & 1) == 0)
  {
    (*(**buf + 40))();
  }

  v157 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v157;
  if (v157 > 0.05)
  {
    v158 = *re::ecsNetworkLogObjects(v156);
    if (os_log_type_enabled(v158, OS_LOG_TYPE_DEFAULT))
    {
      v159 = *(a2 + 288);
      *buf = 134217984;
      *&buf[4] = v159;
      _os_log_impl(&dword_1E1C61000, v158, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processParentChanges for peer %llu", buf, 0xCu);
    }

    *(a2 + 280) = 0;
  }
}

void re::ecs2::NetworkReceiveSystem::processEvents(uint64_t a1, uint64_t a2)
{
  v21 = *MEMORY[0x1E69E9840];
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = &v5[v4];
    do
    {
      v7 = *v5;
      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(a1 + 272), *(a1 + 272));
      if ((*(v7 + 304) & 0x80) != 0)
      {
        do
        {
          v7 = *(v7 + 32);
        }

        while (v7);
        re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(*(a1 + 272) + 1056, *(a1 + 272));
      }

      ++v5;
    }

    while (v5 != v6);
  }

  v8 = *(a2 + 104);
  if (v8)
  {
    v9 = *(a2 + 120);
    v10 = 8 * v8;
    do
    {
      v9 += 8;
      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(a1 + 272) + 88, *(a1 + 272));
      v10 -= 8;
    }

    while (v10);
  }

  v11 = *(a2 + 144);
  if (v11)
  {
    v12 = *(a2 + 160);
    v13 = 8 * v11;
    do
    {
      v14 = *v12;
      if ((*v12)[2])
      {
        if ((*(*v14 + 5))(*v12) == re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
        {
          re::ecs2::NetworkComponent::resolveViews(v14, 0);
        }

        re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(a1 + 272) + 352, *(a1 + 272));
        re::ecs2::Component::markDirty(v14);
      }

      ++v12;
      v13 -= 8;
    }

    while (v13);
  }

  v16 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v16;
  if (v16 > 0.05)
  {
    v17 = *re::ecsNetworkLogObjects(v15);
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      v18 = *(a2 + 288);
      v19 = 134217984;
      v20 = v18;
      _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processEvents for peer %llu", &v19, 0xCu);
    }

    *(a2 + 280) = 0;
  }
}

void re::ecs2::NetworkReceiveSystem::processDestroyedEntities(uint64_t a1, uint64_t a2)
{
  v19 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v16, 6047, a1);
  *(a2 + 280) = *(a2 + 280) - CFAbsoluteTimeGetCurrent();
  v4 = *(a2 + 72);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a2 + 56) + 8);
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
        LODWORD(v5) = *(a2 + 72);
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
    v8 = *(a2 + 56);
    do
    {
      v9 = *(v8 + 24 * v5 + 16);
      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(a1 + 272) + 176, *(a1 + 272));
      if ((*(v9 + 304) & 0x80) != 0)
      {
        v10 = v9;
        do
        {
          v10 = *(v10 + 4);
        }

        while (v10);
        re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(*(a1 + 272) + 1144, *(a1 + 272));
      }

      re::ecs2::Entity::removeFromSceneOrParent(v9);
      v11 = *(a2 + 72);
      v8 = *(a2 + 56);
      if (v11 <= v5 + 1)
      {
        v11 = v5 + 1;
      }

      while (v11 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v8 + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_19;
        }
      }

      LODWORD(v5) = v11;
LABEL_19:
      ;
    }

    while (v5 != v4);
  }

  v13 = CFAbsoluteTimeGetCurrent() + *(a2 + 280);
  *(a2 + 280) = v13;
  if (v13 > 0.05)
  {
    v14 = *re::ecsNetworkLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      v15 = *(a2 + 288);
      *buf = 134217984;
      v18 = v15;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "50ms threshold crossed in NetworkReceiveSystem::processDestroyedEntities for peer %llu", buf, 0xCu);
    }

    *(a2 + 280) = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v16);
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem19processLocalSessionEP13RESyncSession_block_invoke(uint64_t a1, uint64_t a2, const char *a3, const char *a4)
{
  v162 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 32);
  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  v155 = 0;
  v156 = &str_67;
  memset(v138, 0, sizeof(v138));
  v139 = 0;
  memset(v140, 0, sizeof(v140));
  v141 = 0x7FFFFFFFLL;
  memset(v142, 0, sizeof(v142));
  memset(v144, 0, sizeof(v144));
  v143 = 0;
  v145 = 0;
  memset(v146, 0, sizeof(v146));
  v147 = 0x7FFFFFFFLL;
  v148 = 0u;
  v149 = 0u;
  v150 = 0;
  v151 = 0x7FFFFFFFLL;
  v154 = 0;
  v153 = 0;
  v152 = 0;
  v7 = re::NetworkSystem::localSyncToPeer(*(v6 + 272));
  v117 = v7 + 160;
  v137 = *v7;
  v8 = *(v6 + 304);
  v9 = v8 + 448;
  *(v8 + 464) = v137;
  v129[1] = a3;
  v129[2] = a4;
  v132 = -1;
  v133 = 0;
  v134 = v9;
  v136 = 0;
  v130 = a3;
  v131 = &a4[a3];
  v128 = 0;
  v129[0] = &unk_1F5D172F0;
  v127 = 0;
  re::snapshot::DecoderRaw::operator>>(v129, &v127);
  if (!v127)
  {
    v10 = 0;
    v118 = 0;
    goto LABEL_165;
  }

  v118 = 0;
  v10 = 0;
  do
  {
    v126 = 0;
    re::snapshot::DecoderRaw::operator>>(v129, &v126);
    if (v131 == v130)
    {
      re::snapshot::BufferDecoder::error(v129, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
      v11 = 0;
    }

    else
    {
      v11 = *v130++;
    }

    v12 = (v11 & 2) == 0;
    re::ecs2::NetworkReceiveSystem::findEntity(&v125, v6, v127, &v128);
    v14 = v125;
    if (v125)
    {
      v15 = 0;
      v12 = 1;
    }

    else
    {
      v16 = re::ecs2::EntityFactory::instance(0);
      re::ecs2::EntityFactory::make(v16, 4uLL, buf);
      v17 = v125;
      v14 = *buf;
      v125 = *buf;
      if (v17)
      {

        v14 = v125;
      }

      *(v14 + 39) = v127;
      v15 = (v11 & 2) == 0;
    }

    v18 = *(v14 + 27);
    if (!v18)
    {
      (*(*re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(buf);
      v18 = *buf;
      *(*buf + 48) = 1;
      *(v18 + 64) = v137;
      *(v18 + 476) = v126;
      *(v18 + 116) |= 0x8000u;
      v19 = *(v6 + 272);
      *(v18 + 56) = v19;
      if (*(v19 + 3156))
      {
        IncomingSyncable = RESyncServiceCreateIncomingSyncable();
        if (*(v18 + 32) != IncomingSyncable)
        {
          RESyncableRefRetainer::reset((v18 + 32), IncomingSyncable);
        }

        if (IncomingSyncable)
        {
          RESyncRelease();
        }

        re::ecs2::NetworkComponent::bindEntityTo(IncomingSyncable, v125);
      }

      v124 = v18;
      re::ecs2::EntityComponentCollection::add(v125 + 48, &v124, 1);
      if (v124)
      {

        v124 = 0;
      }

      *buf = *(v125 + 39);
      re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v117, buf, &v137);
      re::DynamicOverflowArray<unsigned long long,2ul>::add((v18 + 72), &v137);
      re::ecs2::NetworkComponent::resolveViews(v18, 0);
      v14 = v125;
    }

    v21 = *(v14 + 4);
    if (!v21 || (*(v21 + 304) & 0x80) != 0)
    {
      v22 = 0;
    }

    else
    {
      v22 = *(v21 + 312);
    }

    v119 = v11 != 0;
    if (v11)
    {
      *(v18 + 48) = 1;
      if (v131 == v130)
      {
        re::snapshot::BufferDecoder::error(v129, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
        v23 = 0;
        v14 = v125;
      }

      else
      {
        v23 = *v130++;
      }

      if (v23 != ((*(v14 + 304) >> 3) & 1))
      {
        re::ecs2::Entity::setSelfEnabled(v14, v23 & 1);
      }

      v123 = 0;
      v24 = re::snapshot::DecoderRaw::operator>>(v129, &v123);
      if ((*(v18 + 473) & (v123 == 0)) == 0)
      {
        v22 = v123;
      }

      if (v131 == v130)
      {
        v24 = re::snapshot::BufferDecoder::error(v129, "overrun: attempted to read %zu bytes, only %zu remaining", 1uLL, 0);
        v25 = 2;
      }

      else
      {
        v25 = *v130++;
      }

      if (v25 != *(v18 + 432))
      {
        *(v18 + 432) = v25;
        v26 = (v18 + 8);
        *buf = v18;
        v24 = re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v144[1], buf);
        if (*buf)
        {
        }
      }

      v27 = v155;
      v155 = 0;
      v156 = &str_67;
      if (v27)
      {
      }

      v157 = 0;
      v28 = re::snapshot::DecoderRaw::beginString(v129, &v157);
      if (v28)
      {
        v29 = v157;
        v30 = v130;
        v31 = v131 - v130;
        if (v131 - v130 >= v157)
        {
          v31 = v157;
        }

        v130 += v31;
        *buf = 0;
        *&buf[8] = &str_67;
        v33 = *buf;
        v32 = *&buf[8];
        v155 = *buf;
        v156 = *&buf[8];
      }

      else
      {
        v33 = 0;
        v32 = &str_67;
      }

      v34 = v125;
      if ((*(v125 + 36) ^ v33) > 1 || (v13 = *(v125 + 37), v32 != v13) && strcmp(v32, v13))
      {
        re::StringID::operator=(v34 + 36, &v155);
      }

      if (!v12 || !v15)
      {
        if (v12)
        {
          v35 = v142;
        }

        else
        {
          v35 = v138;
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v35, &v125);
      }

      ++v118;
    }

    v36 = v11 != 0;
    if (v15)
    {
      goto LABEL_109;
    }

    v37 = v125;
    v38 = *(v125 + 4);
    if (!v38 || (*(v38 + 304) & 0x80) != 0)
    {
      if (!v22)
      {
        goto LABEL_71;
      }
    }

    else if (v22 == *(v38 + 312))
    {
      goto LABEL_71;
    }

    v39 = *(v125 + 39);
    v40 = v125 + 8;
    v41 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v39 ^ (v39 >> 30))) >> 27));
    v42 = v41 ^ (v41 >> 31);
    if (v148)
    {
      v13 = v42 % DWORD2(v149);
      v43 = *(*(&v148 + 1) + 4 * v13);
      if (v43 != 0x7FFFFFFF)
      {
        if (*(v149 + 40 * v43 + 8) == v39)
        {
LABEL_70:

LABEL_71:
          if ((v11 & 2) == 0)
          {
            goto LABEL_109;
          }

          goto LABEL_75;
        }

        while (1)
        {
          LODWORD(v43) = *(v149 + 40 * v43) & 0x7FFFFFFF;
          if (v43 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v149 + 40 * v43 + 8) == v39)
          {
            if (!v37)
            {
              goto LABEL_71;
            }

            goto LABEL_70;
          }
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    v44 = re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v148, v13, v42);
    v44[1] = v39;
    v44[2] = v37;
    v44[3] = v22;
    ++HIDWORD(v151);
    if ((v11 & 2) == 0)
    {
      goto LABEL_109;
    }

LABEL_75:
    *buf = 0;
    *&buf[8] = 0;
    *&buf[16] = 1;
    v160 = 0;
    v161 = 0;
    v45 = *(v125 + 9);
    if (!v45)
    {
      goto LABEL_104;
    }

    v46 = *(v125 + 11);
    v47 = 8 * v45;
    do
    {
      v48 = *v46;
      if (!*v46)
      {
        if (!v18)
        {
          goto LABEL_97;
        }

LABEL_81:
        re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v6 + 272) + 440, *(v6 + 272));
        v50 = (*(*v48 + 40))(v48);
        v51 = re::ecs2::RemoteComponentInfo::get((v18 + 144), *(v50 + 16));
        v52 = re::ecs2::NetworkComponent::unbindComponentFromSyncable(v18, v48, v51);
        if (*buf)
        {
          v53 = buf[16];
          if (buf[16])
          {
            if ((*&buf[8] - 8) < 0xFFFFFFFFFFFFFFF7)
            {
              v54 = *&buf[8] + 1;
              v55 = 16;
              goto LABEL_89;
            }
          }

          else if (*&buf[8] >= v160)
          {
            v54 = *&buf[8] + 1;
            if (v160 < *&buf[8] + 1)
            {
              v55 = 2 * v160;
LABEL_89:
              if (v55 <= v54)
              {
                v56 = v54;
              }

              else
              {
                v56 = v55;
              }

              re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(buf, v56);
              v53 = buf[16];
            }
          }
        }

        else
        {
          re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(buf, *&buf[8] + 1);
          v53 = buf[16] + 2;
          *&buf[16] += 2;
        }

        v57 = (v53 & 1) == 0;
        v58 = v161;
        v59 = *&buf[8];
        if (!v57)
        {
          v58 = &v160;
        }

        v58[*&buf[8]] = v48;
        *&buf[8] = v59 + 1;
        *&buf[16] += 2;
        goto LABEL_96;
      }

      v49 = (v48 + 8);
      if (v48 != v18)
      {
        goto LABEL_81;
      }

LABEL_96:

LABEL_97:
      ++v46;
      v47 -= 8;
    }

    while (v47);
    if (buf[16])
    {
      v60 = &v160;
    }

    else
    {
      v60 = v161;
    }

    if (*&buf[8])
    {
      v61 = 8 * *&buf[8];
      do
      {
        v62 = *v60++;
        re::ecs2::EntityComponentCollection::remove((v125 + 48), v62);
        v61 -= 8;
      }

      while (v61);
    }

LABEL_104:
    if (*(v18 + 114) > *(v18 + 112))
    {
      re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "clearComponents", 3184);
      _os_crash();
      __break(1u);
    }

    memset(*(v18 + 120), 255, 16 * (*(v18 + 116) & 0x1FFF));
    *(v18 + 118) = 0;
    *(v18 + 112) = 0;
    if (*buf && (buf[16] & 1) == 0)
    {
      (*(**buf + 40))();
    }

    v36 = v119;
LABEL_109:
    v157 = 0;
    re::snapshot::DecoderRaw::operator>>(v129, &v157);
    v63 = v157;
    if (v157)
    {
      while (2)
      {
        v64 = *(v6 + 272);
        if (!v15)
        {
          *buf = v63;
          v65 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v64 + 2856, buf);
          if (v65)
          {
            v66 = *v65;
            if (*v65)
            {
              v67 = re::ecs2::EntityComponentCollection::get((v125 + 48), v66);
              if (v67)
              {
                v68 = v67;
                re::ecs2::Component::willSet(v67);
                v69 = re::NetworkSystem::decodeComponent(*(v6 + 272), v129, v68);
                v70 = re::ecs2::Component::didSet(v68);
              }

              else
              {
                (*(*v66 + 32))(buf, v66);
                v68 = *buf;
                v72 = (*(**buf + 40))(*buf);
                if (*(v18 + 116) < 0)
                {
                  re::ecs2::LocalComponentInfo::add((v18 + 112), *(v72 + 16));
                }

                if (*(v18 + 32))
                {
                  v73 = RESyncServiceCreateIncomingSyncable();
                  MEMORY[0x1E6905A30](v73, *(v18 + 32));
                  v122 = v73;
                  re::ecs2::NetworkComponent::bindComponentToSyncable(v18, *buf, &v122);
                  if (v73)
                  {
                    RESyncRelease();
                    v122 = 0;
                  }
                }

                v69 = re::NetworkSystem::decodeComponent(*(v6 + 272), v129, v68);
                v121 = *buf;
                *buf = 0;
                re::ecs2::EntityComponentCollection::add(v125 + 48, &v121, 1);
                if (v121)
                {

                  v121 = 0;
                }

                re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v6 + 272) + 264, *(v6 + 272));
                if (*buf)
                {
                }
              }

              if (v69)
              {
                if (v68[2])
                {
                  re::ecs2::Component::willSet(v68);
                  re::ecs2::Entity::updateAfterComponentDeserialized(v68[2], v68);
                  re::ecs2::Component::didSet(v68);
                }

                *buf = v68;
                v74 = v68 + 1;
                re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add(&v144[1], buf);
                if (*buf)
                {
                }

                if (*(v18 + 32))
                {
                  v75 = (*(*v68 + 40))(v68);
                  re::ecs2::RemoteComponentInfo::markDirty(v18 + 144, *(v75 + 16));
                  v36 = 1;
                }
              }

              else
              {
                v76 = *re::ecsNetworkLogObjects(v70);
                if (os_log_type_enabled(v76, OS_LOG_TYPE_ERROR))
                {
                  v77 = *(v66 + 4);
                  v78 = *(v125 + 39);
                  v79 = *(v125 + 37);
                  *buf = 136381187;
                  *&buf[4] = v77;
                  *&buf[12] = 2048;
                  *&buf[14] = v78;
                  v159 = 2081;
                  v160 = v79;
                  _os_log_error_impl(&dword_1E1C61000, v76, OS_LOG_TYPE_ERROR, "[NetworkComponent] failed to decode component %{private}s on entity (id = %llu, name = %{private}s", buf, 0x20u);
                }
              }

LABEL_119:
              v157 = 0;
              re::snapshot::DecoderRaw::operator>>(v129, &v157);
              v63 = v157;
              ++v10;
              if (!v157)
              {
                goto LABEL_139;
              }

              continue;
            }
          }

          v71 = *re::ecsNetworkLogObjects(v65);
          if (os_log_type_enabled(v71, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v157;
            _os_log_impl(&dword_1E1C61000, v71, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Unknown component type %llx. Skipping...", buf, 0xCu);
          }

          v64 = *(v6 + 272);
        }

        break;
      }

      re::NetworkSystem::decodeComponent(v64, v129, 0);
      goto LABEL_119;
    }

LABEL_139:
    if (v36)
    {
      v80 = *(v6 + 272);
      v120 = v18;
      v81 = (v18 + 8);
      v82 = 2632;
      if (!*(v120 + 32))
      {
        v82 = 2680;
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v80 + v82, &v120);
      if (v120)
      {

        v120 = 0;
      }
    }

    v83 = *(v18 + 114);
    do
    {
      while (1)
      {
        v157 = 0;
        re::snapshot::DecoderRaw::operator>>(v129, &v157);
        if (v157 == 0 || v15)
        {
          break;
        }

        v84 = *(v6 + 272);
        *buf = v157;
        v85 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v84 + 2856, buf);
        if (v85 && (v86 = *v85) != 0)
        {
          v87 = re::ecs2::EntityComponentCollection::get((v125 + 48), v86);
          if (v87)
          {
            v88 = v87;
            re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v6 + 272) + 440, *(v6 + 272));
            v89 = (*(*v88 + 40))(v88);
            v90 = re::ecs2::RemoteComponentInfo::get((v18 + 144), *(v89 + 16));
            re::ecs2::NetworkComponent::unbindComponentFromSyncable(v18, v88, v90);
            v91 = (*(*v88 + 40))(v88);
            if (*(v18 + 116) < 0)
            {
              re::ecs2::LocalComponentInfo::remove((v18 + 112), *(v91 + 16));
            }

            re::ecs2::EntityComponentCollection::remove((v125 + 48), v86);
          }

          else
          {
            v93 = *re::ecsNetworkLogObjects(0);
            if (os_log_type_enabled(v93, OS_LOG_TYPE_DEFAULT))
            {
              v94 = *(v125 + 37);
              v95 = *(v125 + 39);
              v96 = *(v86 + 4);
              *buf = 136315650;
              *&buf[4] = v94;
              *&buf[12] = 2048;
              *&buf[14] = v95;
              v159 = 2080;
              v160 = v96;
              _os_log_impl(&dword_1E1C61000, v93, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] entity %s(%llu)doesn't have a %s component to remove.", buf, 0x20u);
            }
          }
        }

        else
        {
          v92 = *re::ecsNetworkLogObjects(v85);
          if (os_log_type_enabled(v92, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            *&buf[4] = v157;
            _os_log_impl(&dword_1E1C61000, v92, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] unknown component type hash during local sync: %llu", buf, 0xCu);
          }
        }
      }
    }

    while (v157);
    v97 = *(v18 + 114);
    if (v97 < v83)
    {
      v98 = v83 - v97;
      v99 = *(v18 + 120);
      memmove((v99 + 2 * *(v18 + 114)), (v99 + 2 * (*(v18 + 112) - v98)), 2 * v98);
      memset((v99 + 2 * (*(v18 + 112) - v98)), 255, 2 * v98);
      *(v18 + 112) -= v98;
    }

    if (v125)
    {
    }

    v127 = 0;
    re::snapshot::DecoderRaw::operator>>(v129, &v127);
  }

  while (v127);
LABEL_165:
  re::ecs2::NetworkReceiveSystem::processCreatedEntities(v6, v138);
  re::ecs2::NetworkReceiveSystem::processParentChanges(v6, v138);
  re::ecs2::NetworkReceiveSystem::processEvents(v6, v138);
  while (1)
  {
    *buf = 0;
    re::snapshot::DecoderRaw::operator>>(v129, buf);
    LODWORD(v127) = 0;
    if (!*buf)
    {
      break;
    }

    re::snapshot::DecoderRaw::operator>>(v129, &v127);
    re::ecs2::NetworkReceiveSystem::findEntity(&v157, v6, *buf, &v128);
    v100 = v157;
    if (v157)
    {
      v101 = *(v157 + 216);
      if (v101 && *(v101 + 64) == v137)
      {
        re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(*(v6 + 272) + 176, *(v6 + 272));
        if ((v100[304] & 0x80) != 0)
        {
          v102 = v100;
          do
          {
            v102 = *(v102 + 4);
          }

          while (v102);
          re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(*(v6 + 272) + 1144, *(v6 + 272));
        }

        re::ecs2::Entity::removeFromSceneOrParent(v100);
        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v117, buf);
      }
    }
  }

  v103 = re::internal::enableSignposts(0, 0);
  if (v103)
  {
    v103 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v103);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v105 = *(isStatisticCollectionEnabled + 152);
    if (v105)
    {
      v106 = v105[384].u64[0];
      if (v106 >= v118)
      {
        v106 = v118;
      }

      v105[384].i64[0] = v106;
      v107 = v105[384].u64[1];
      if (v107 <= v118)
      {
        v107 = v118;
      }

      v105[384].i64[1] = v107;
      v108 = vdupq_n_s64(1uLL);
      v108.i64[0] = v118;
      v105[385] = vaddq_s64(v105[385], v108);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v109 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v109)
  {
    v110 = re::profilerThreadContext(v109);
    v111 = *(v110 + 152);
    if (v111)
    {
      v112 = v111[368].u64[0];
      if (v112 >= v10)
      {
        v112 = v10;
      }

      v111[368].i64[0] = v112;
      v113 = v111[368].u64[1];
      if (v113 <= v10)
      {
        v113 = v10;
      }

      v111[368].i64[1] = v113;
      v114 = vdupq_n_s64(1uLL);
      v114.i64[0] = v10;
      v111[369] = vaddq_s64(v111[369], v114);
      *(v110 + 184) = 0;
    }
  }

  re::HashTable<unsigned long long,re::Pair<re::SharedPtr<re::ecs2::Entity>,unsigned long long,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v148);
  re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(&v146[8]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(&v144[1]);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v142);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v140[8]);
  v115 = re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v138);
  if (v155)
  {
  }

  return 1;
}

void re::ecs2::NetworkReceiveSystem::findEntity(re::ecs2::NetworkReceiveSystem *this, uint64_t a2, re::ecs2::Scene **a3, uint64_t *a4)
{
  v26 = 0;
  v8 = *a4;
  if (*a4)
  {
    v27 = a3;
    v9 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v8 + 152, &v27);
    if (v9)
    {
      v10 = *(v9 + 8);
    }

    else
    {
      v10 = *(*(v8 + 104) + 312) == v27 ? *(v8 + 104) : 0;
    }

    re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v26, v10);
    v11 = v26;
    if (v26)
    {
LABEL_32:
      *this = v11;
      return;
    }
  }

  v12 = (*(**(a2 + 40) + 288))(*(a2 + 40)) + 120;
  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v27, v12, 0);
  v24 = v27;
  v25 = v28;
  if (v12 != v27 || v28 != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v14 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v24);
      v15 = *(v14 + 200);
      if (v15)
      {
        break;
      }

LABEL_21:
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v24);
      if (v24 == v12 && v25 == 0xFFFF && HIWORD(v25) == 0xFFFF)
      {
        goto LABEL_29;
      }
    }

    v16 = *(v14 + 216);
    v17 = 8 * v15;
    while (1)
    {
      v18 = *v16;
      v27 = a3;
      v19 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v18 + 152, &v27);
      if (v19)
      {
        v20 = *(v19 + 8);
      }

      else
      {
        v20 = *(*(v18 + 104) + 312) == v27 ? *(v18 + 104) : 0;
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v26, v20);
      v11 = v26;
      if (v26)
      {
        break;
      }

      ++v16;
      v17 -= 8;
      if (!v17)
      {
        goto LABEL_21;
      }
    }

    *a4 = v18;
    goto LABEL_32;
  }

LABEL_29:
  v23 = v26;
  *this = 0;
  if (v23)
  {
  }
}

uint64_t re::ecs2::NetworkComponent::bindEntityTo(re *a1, uint64_t a2)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 8, 8);
  if (a2)
  {
    v5 = (a2 + 8);
  }

  else
  {
    v5 = 0;
  }

  objc_initWeak(v4, v5);

  return RESyncableSetUserData();
}

_anonymous_namespace_ *re::DynamicOverflowArray<unsigned long long,2ul>::add(_anonymous_namespace_ *result, void *a2)
{
  v3 = result;
  if (!*result)
  {
    v10 = *(v3 + 1);
    result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, v10 + 1);
    v11 = *(v3 + 4) + 2;
    *(v3 + 4) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = (v3 + 24);
    goto LABEL_19;
  }

  v4 = *(result + 1);
  v5 = *(result + 4);
  if ((v5 & 1) == 0)
  {
    v6 = *(result + 3);
    v8 = v4 >= v6;
    v7 = v4 + 1;
    v8 = !v8 || v6 >= v7;
    if (!v8)
    {
      v9 = 2 * v6;
      goto LABEL_14;
    }

    goto LABEL_11;
  }

  v7 = v4 + 1;
  if (v7 < 3)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 4;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  result = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(result, v13);
  if (*(v3 + 4))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(v3 + 4);
LABEL_19:
  v14 = *(v3 + 1);
  v12[v14] = *a2;
  *(v3 + 1) = v14 + 1;
  *(v3 + 4) += 2;
  return result;
}

void re::ecs2::NetworkComponent::resolveViews(uint64_t a1, uint64_t a2)
{
  if (a2 || (v4 = *(a1 + 56)) == 0)
  {
    if (re::ecs2::NetworkComponent::resolveSelfView(a1, a2))
    {

      re::ecs2::NetworkComponent::resolveChildEntityViews(a1, a2);
    }
  }

  else
  {
    v6 = a1;
    v5 = (a1 + 8);
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v4 + 2760, &v6);
    if (v6)
    {
    }
  }
}

void re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v23, 0, sizeof(v23));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v15 = 136315906;
          v16 = "operator[]";
          v17 = 1024;
          v18 = 789;
          v19 = 2048;
          v20 = i;
          v21 = 2048;
          v22 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v13[0] = *v10;
        v13[1] = v12;
        v14 = v11;
        if (LOBYTE(v13[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if ((v23[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v13 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStable(a1, v13 + 1);
        }

        v7 += 40;
      }
    }
  }
}

_anonymous_namespace_ *re::ecs2::NetworkComponent::unbindComponentFromSyncable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    RESyncableSetUserData();
  }

  v5 = *(a1 + 200);
  if (v5)
  {
    v6 = 64 - __clz((v5 - 1) >> 3);
    v7 = v6 >= 4 ? 4 : v6;
    --re::NetworkSystem::boundComponents[v7];
    if (v5 != 1)
    {
      v8 = 64 - __clz((v5 - 2) >> 3);
      if (v8 >= 4)
      {
        v8 = 4;
      }

      ++re::NetworkSystem::boundComponents[v8];
    }
  }

  result = (*(*a2 + 40))(a2);
  v10 = *(a1 + 146);
  if (*(a1 + 146))
  {
    v11 = (result + 16);
    v12 = *(a1 + 152);
    v13 = vld1q_dup_s16(v11);
    v14 = 1;
    for (i = v12; ; ++i)
    {
      v16 = vandq_s8(vceqq_s16(v13, *i), xmmword_1E306AC00);
      v16.i16[0] = vmaxvq_u16(v16);
      if (v16.i32[0])
      {
        break;
      }

      v14 -= 8;
      if (!--v10)
      {
        return result;
      }
    }

    v17 = v16.u16[0] - v14;
    v18 = *(a1 + 144);
    if (v17 < v18)
    {
      v12->i16[v17] = v12->i16[v18 - 1];
      v12->i16[*(a1 + 144) - 1] = -1;
      v19 = *(a1 + 144) - 1;
      *(a1 + 144) = v19;
      *(a1 + 146) = (v19 + 7) >> 3;
      v20 = *(a1 + 200);
      if (v20 <= v17)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      else
      {
        v21 = v20 - 1;
        if (v20 - 1 > v17)
        {
          if (*(a1 + 208))
          {
            v22 = a1 + 216;
          }

          else
          {
            v22 = *(a1 + 224);
          }

          v23 = v22 + 8 * v20;
          v24 = *(v22 + 8 * v17);
          *(v22 + 8 * v17) = *(v23 - 8);
          *(v23 - 8) = v24;
        }

        v25 = v18 - 1;
        v26 = *(a1 + 208);
        if (v26)
        {
          v27 = a1 + 216;
        }

        else
        {
          v27 = *(a1 + 224);
        }

        v28 = v27 + 8 * v20;
        if (*(v28 - 8))
        {
          RESyncRelease();
          *(v28 - 8) = 0;
          v26 = *(a1 + 208);
          v21 = *(a1 + 200) - 1;
        }

        *(a1 + 200) = v21;
        *(a1 + 208) = v26 + 2;
        if (re::DynamicBitset<unsigned long long,64ul>::getBit(a1 + 280, v25))
        {
          re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 280, v17);
          goto LABEL_35;
        }

        if (*(a1 + 288) > v17 >> 6)
        {
          if (*(a1 + 296))
          {
            v29 = a1 + 304;
          }

          else
          {
            v29 = *(a1 + 312);
          }

          *(v29 + 8 * (v17 >> 6)) &= ~(1 << v17);
LABEL_35:
          v30 = *(a1 + 320);
          if ((v25 & 0x3F) != 0)
          {
            v31 = (v25 >> 6) + 1;
          }

          else
          {
            v31 = v25 >> 6;
          }

          *(a1 + 320) = v25;
          *&v35 = 0;
          result = re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 280), v31, &v35);
          if (v25 && v30 > v25)
          {
            v32 = 63;
            v33 = *(a1 + 320) & 0x3FLL;
            if (v33 && v33 != 63)
            {
              v32 = ~(-1 << v33);
            }

            if (*(a1 + 296))
            {
              v34 = a1 + 304;
            }

            else
            {
              v34 = *(a1 + 312);
            }

            *(v34 + 8 * *(a1 + 288) - 8) &= v32;
          }

          return result;
        }
      }

      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      v35 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::ecs2::NetworkComponent::bindComponentToSyncable(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 200);
  if (v5)
  {
    v6 = 64 - __clz((v5 - 1) >> 3);
    if (v6 >= 4)
    {
      v6 = 4;
    }

    --re::NetworkSystem::boundComponents[v6];
  }

  v7 = 64 - __clz(v5 >> 3);
  if (v7 >= 4)
  {
    v7 = 4;
  }

  ++re::NetworkSystem::boundComponents[v7];
  v8 = *a3;
  if (*a3)
  {
    RESyncRetain();
  }

  v9 = (*(*a2 + 40))(a2);
  v10 = v9[8];
  v11 = *(a1 + 146);
  if (!*(a1 + 146))
  {
    goto LABEL_20;
  }

  v12 = v9;
  v13 = *(a1 + 152);
  v14 = vdupq_n_s16(v10);
  v15 = 1;
  while (1)
  {
    v16 = vandq_s8(vceqq_s16(v14, *v13), xmmword_1E306AC00);
    v16.i16[0] = vmaxvq_u16(v16);
    if (v16.i32[0])
    {
      break;
    }

    v15 -= 8;
    ++v13;
    if (!--v11)
    {
      goto LABEL_20;
    }
  }

  v17 = v16.u16[0] - v15;
  if (v17 >= *(a1 + 144))
  {
LABEL_20:
    v21 = re::ecs2::PackedTypeIDs::ensureCapacity((a1 + 144), *(a1 + 144) + 1);
    v22 = *(a1 + 192);
    *(*(a1 + 152) + 2 * *(a1 + 144)) = v10;
    v23 = *(a1 + 144) + 1;
    *(a1 + 144) = v23;
    *(a1 + 146) = (v23 + 7) >> 3;
    if (!v22)
    {
      v29 = *(a1 + 200);
      re::DynamicOverflowArray<RESyncableRefRetainer,8ul>::setCapacity((a1 + 192), v29 + 1);
      v25 = *(a1 + 208) + 2;
      *(a1 + 208) = v25;
      goto LABEL_32;
    }

    v24 = *(a1 + 200);
    v25 = *(a1 + 208);
    if (v25)
    {
      if (v24 - 8 >= 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_32;
      }

      v27 = v24 + 1;
      v28 = 16;
    }

    else
    {
      v26 = *(a1 + 216);
      if (v24 < v26)
      {
        goto LABEL_32;
      }

      v27 = v24 + 1;
      if (v26 >= v27)
      {
        goto LABEL_32;
      }

      v28 = 2 * v26;
    }

    if (v28 <= v27)
    {
      v30 = v27;
    }

    else
    {
      v30 = v28;
    }

    re::DynamicOverflowArray<RESyncableRefRetainer,8ul>::setCapacity((a1 + 192), v30);
    v25 = *(a1 + 208);
LABEL_32:
    if (v25)
    {
      v31 = a1 + 216;
    }

    else
    {
      v31 = *(a1 + 224);
    }

    v32 = *(a1 + 200);
    *(v31 + 8 * v32) = v8;
    *(a1 + 200) = v32 + 1;
    *(a1 + 208) += 2;
    v33 = *(a1 + 144);
    v34 = *(a1 + 320);
    if ((v33 & 0x3F) != 0)
    {
      v35 = (v33 >> 6) + 1;
    }

    else
    {
      v35 = v33 >> 6;
    }

    *(a1 + 320) = v33;
    *buf = 0;
    v36 = re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 280), v35, buf);
    if (v33 && v34 > v33)
    {
      v37 = 63;
      v38 = *(a1 + 320) & 0x3FLL;
      if (v38 && v38 != 63)
      {
        v37 = ~(-1 << v38);
      }

      if (*(a1 + 296))
      {
        v39 = a1 + 304;
      }

      else
      {
        v39 = *(a1 + 312);
      }

      *(v39 + 8 * *(a1 + 288) - 8) &= v37;
    }

    goto LABEL_47;
  }

  v18 = *re::ecsNetworkLogObjects(v9);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
  {
    v19 = *(v12 + 4);
    *buf = 136315138;
    *&buf[4] = v19;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] component of type %s is already in component info table.  Re-binding?", buf, 0xCu);
  }

  if (*(a1 + 200) <= v17)
  {
    v46 = 0u;
    v47 = 0u;
    v44 = 0u;
    v45 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 208))
  {
    v20 = a1 + 216;
  }

  else
  {
    v20 = *(a1 + 224);
  }

  v36 = *(v20 + 8 * v17);
  *(v20 + 8 * v17) = v8;
  if (v36)
  {
    v36 = RESyncRelease();
  }

LABEL_47:
  v40 = re::globalAllocators(v36);
  v41 = (*(*v40[2] + 32))(v40[2], 8, 8);
  objc_initWeak(v41, (a2 + 8));
  return RESyncableSetUserData();
}

void re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    re::Event<re::GeometricObjectBase>::doDeferredActions(a1);
  }
}

void re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v23, 0, sizeof(v23));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v15 = 136315906;
          v16 = "operator[]";
          v17 = 1024;
          v18 = 789;
          v19 = 2048;
          v20 = i;
          v21 = 2048;
          v22 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v13[0] = *v10;
        v13[1] = v12;
        v14 = v11;
        if (LOBYTE(v13[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if ((v23[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v13 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if (LOBYTE(v23[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, *(&v23[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem13processCommitEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke()
{
  if (RESyncReadContextIsDestroyed())
  {
    Syncable = RESyncReadContextGetSyncable();
    re::ecs2::NetworkComponent::getEntityBoundTo(Syncable, &v7);
    v1 = v7;
    if (v7)
    {
      v2 = *(v7 + 216);
      if (v2)
      {
        if (*(v2 + 208))
        {
          v3 = (v2 + 216);
        }

        else
        {
          v3 = *(v2 + 224);
        }

        v4 = *(v2 + 200);
        if (v4)
        {
          v5 = 8 * v4;
          do
          {
            if (*v3)
            {
              RESyncableSetUserData();
            }

            ++v3;
            v5 -= 8;
          }

          while (v5);
        }

        memset(*(v2 + 120), 255, 16 * (*(v2 + 116) & 0x1FFF));
        *(v2 + 112) = 0;
        *(v2 + 118) = 0;
        *(v2 + 116) &= 0x9FFFu;
        re::ecs2::RemoteComponentInfo::clearAll(v2 + 144);
      }

      RESyncableSetUserData();
    }

    else
    {
      RESyncableSetUserData();
    }
  }

  return 1;
}

uint64_t re::ecs2::RemoteComponentInfo::clearAll(uint64_t this)
{
  v1 = this;
  if (*(this + 2))
  {
    v2 = 0;
    v3 = 16 * *(this + 2);
    *&v4 = -1;
    *(&v4 + 1) = -1;
    do
    {
      *(*(this + 8) + v2) = v4;
      v2 += 16;
    }

    while (v3 != v2);
  }

  *this = 0;
  v5 = *(this + 56);
  *(this + 56) = 0;
  v6 = *(this + 64);
  if (v6)
  {
    v7 = (this + 72);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = *(this + 80);
    if (!v5)
    {
      goto LABEL_13;
    }
  }

  v8 = 8 * v5;
  do
  {
    this = *v7;
    if (*v7)
    {
      this = RESyncRelease();
      *v7 = 0;
    }

    ++v7;
    v8 -= 8;
  }

  while (v8);
  v6 = *(v1 + 64);
LABEL_13:
  *(v1 + 64) = v6 + 2;
  v9 = *(v1 + 152);
  if (v9)
  {
    v10 = (v1 + 160);
  }

  else
  {
    v10 = *(v1 + 168);
  }

  v11 = *(v1 + 144);
  while (1)
  {
    v12 = v1 + 160;
    if ((v9 & 1) == 0)
    {
      v12 = *(v1 + 168);
    }

    if (v10 == (v12 + 8 * v11))
    {
      break;
    }

    *v10++ = 0;
    v9 = *(v1 + 152);
  }

  return this;
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem25processComponentSnapshotsEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke(uint64_t a1)
{
  v73 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  Syncable = RESyncReadContextGetSyncable();
  if ((RESyncableIsOpaque() & 1) != 0 || !RESyncableGetTypeId())
  {
    return 1;
  }

  Parent = RESyncableGetParent();
  re::ecs2::NetworkComponent::getEntityBoundTo(Parent, &v65);
  re::ecs2::NetworkComponent::getComponentBoundTo(&v64, Syncable);
  if (v64)
  {
    v5 = 0;
  }

  else
  {
    if (!RESyncReadContextIsNew())
    {
      goto LABEL_89;
    }

    v8 = *(v2 + 272);
    *buf = RESyncableGetTypeId();
    v9 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(v8 + 2856, buf);
    if (v9 && (v10 = *v9) != 0)
    {
      v11 = 0;
    }

    else
    {
      v36 = *re::ecsNetworkLogObjects(v9);
      v9 = os_log_type_enabled(v36, OS_LOG_TYPE_ERROR);
      if (v9)
      {
        TypeId = RESyncableGetTypeId();
        *buf = 134217984;
        *&buf[4] = TypeId;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "[NetworkComponent] Unknown component type hash (%llu)", buf, 0xCu);
      }

      v10 = 0;
      v11 = 1;
    }

    v37 = v65;
    if (!v65)
    {
      v40 = *re::ecsNetworkLogObjects(v9);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_ERROR))
      {
        Guid = RESyncableGetGuid();
        v60 = RESyncableGetTypeId();
        RESyncableGetTypeInfo();
        DebugName = RESyncSyncableTypeInfoGetDebugName();
        *buf = 134218755;
        *&buf[4] = Guid;
        v67 = 2048;
        v68 = v60;
        v69 = 2081;
        v70 = DebugName;
        v71 = 2048;
        v72 = Parent;
        _os_log_error_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_ERROR, "[NetworkComponent] Cannot find component's entity (guid=%llu, typeID=%llu, type=%{private}s, entity=%p).", buf, 0x2Au);
      }

      RESyncableIsDestroyed();
      goto LABEL_89;
    }

    if ((v11 | RESyncableIsDestroyed()) == 1)
    {
LABEL_90:

      return 1;
    }

    v38 = v37[27];
    v5 = v10 != re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
    if (v10 == re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
    {
      if (v38)
      {
        v55 = (v38 + 8);
      }

      v64 = v38;
      v39 = v38;
    }

    else
    {
      (*(*v10 + 32))(buf, v10);
      v39 = *buf;
      v64 = *buf;
    }

    v56 = (*(*v39 + 40))(v39);
    re::ecs2::EntityComponentCollection::remove((v37 + 6), v56);
    v63 = Syncable;
    if (Syncable)
    {
      RESyncRetain();
      re::ecs2::NetworkComponent::bindComponentToSyncable(v38, v39, &v63);
      RESyncRelease();
      v63 = 0;
    }

    else
    {
      re::ecs2::NetworkComponent::bindComponentToSyncable(v38, v39, &v63);
    }
  }

  IsDataChanged = RESyncReadContextIsDataChanged();
  if (IsDataChanged)
  {
    IsDataChanged = RESyncReadContextGetStateSize();
    if (IsDataChanged)
    {
      IsDataChanged = re::ecs2::IntrospectedNetworkTypeHelper::deserialize();
      if (IsDataChanged)
      {
        v7 = 1;
        goto LABEL_16;
      }

      v12 = *re::ecsNetworkLogObjects(IsDataChanged);
      IsDataChanged = os_log_type_enabled(v12, OS_LOG_TYPE_ERROR);
      if (IsDataChanged)
      {
        RESyncableGetTypeInfo();
        v57 = RESyncSyncableTypeInfoGetDebugName();
        *buf = 136380675;
        *&buf[4] = v57;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[NetworkComponent] Failed to deserialize component of type '%{private}s'. Ignoring state update.", buf, 0xCu);
      }
    }
  }

  v7 = 0;
LABEL_16:
  v13 = v65;
  v14 = !v5;
  if (!v65)
  {
    v14 = 1;
  }

  if (v14)
  {
    v16 = v64;
    if (!v64[2])
    {
      v19 = *re::ecsNetworkLogObjects(IsDataChanged);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
      {
        v20 = RESyncableGetGuid();
        v21 = RESyncableGetGuid();
        IsDestroyed = RESyncReadContextIsDestroyed();
        *buf = 134218496;
        *&buf[4] = v20;
        v67 = 2048;
        v68 = v21;
        v69 = 1024;
        LODWORD(v70) = IsDestroyed;
        _os_log_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_DEFAULT, "Received component: {id: %llu, parent: %llu: isDestroyed: %d} with no entity", buf, 0x1Cu);
      }
    }
  }

  else
  {
    v15 = v65[27];
    v16 = v64;
    *buf = *((*(*v64 + 40))(v64) + 16);
    if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(v15 + 336, buf))
    {
      v17 = (*(*v16 + 40))(v16);
      if (*(v15 + 116) < 0)
      {
        re::ecs2::LocalComponentInfo::add((v15 + 112), *(v17 + 16));
      }
    }

    v62 = v16;
    v18 = v16 + 1;
    re::ecs2::EntityComponentCollection::add(v13 + 48, &v62, 1);
    if (v62)
    {

      v62 = 0;
    }

    re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v2 + 272) + 264, *(v2 + 272));
  }

  if ((*(*v16 + 40))(v16) != re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    goto LABEL_29;
  }

  v23 = re::internal::enableSignposts(0, 0);
  if (v23)
  {
    v23 = kdebug_trace();
  }

  v24 = v16[5];
  if (v24 == 0x800000000)
  {
    isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v23);
    if (!isStatisticCollectionEnabled)
    {
      goto LABEL_29;
    }

    v26 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v27 = *(v26 + 152);
    if (!v27)
    {
      goto LABEL_29;
    }

    v33 = v16[4];
    v34 = v27[864];
    if (v34 >= v33)
    {
      v34 = v16[4];
    }

    v27[864] = v34;
    v35 = v27[865];
    if (v35 <= v33)
    {
      v35 = v33;
    }

    v27[865] = v35;
    v27[866] += v33;
    v31 = 867;
  }

  else
  {
    if (v24 != 1)
    {
      goto LABEL_29;
    }

    v25 = re::ProfilerConfig::isStatisticCollectionEnabled(v23);
    if (!v25)
    {
      goto LABEL_29;
    }

    v26 = re::profilerThreadContext(v25);
    v27 = *(v26 + 152);
    if (!v27)
    {
      goto LABEL_29;
    }

    v28 = v16[4];
    v29 = v27[848];
    if (v29 >= v28)
    {
      v29 = v16[4];
    }

    v27[848] = v29;
    v30 = v27[849];
    if (v30 <= v28)
    {
      v30 = v28;
    }

    v27[849] = v30;
    v27[850] += v28;
    v31 = 851;
  }

  ++v27[v31];
  *(v26 + 184) = 0;
LABEL_29:
  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    v41 = (*(*v16 + 40))(v16);
    re::packCharArrayToUInt64ForAriadne(*(v41 + 32), 0);
    RESyncReadContextGetStateSize();
    kdebug_trace();
  }

  if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
    v42 = v16[2];
    v43 = *(v42 + 216);
    if (v43)
    {
      v44 = re::ecs2::NetworkComponent::owningProcessType(*(v42 + 216));
      if (v44)
      {
        v45 = v44;
        v46 = *(v43 + 432) ? "Remote" : "Local";
        v47 = (*(v43 + 432) == 1 ? "Shared" : v46);
        re::packCharArrayToUInt64ForAriadne(v47, 0);
        if (re::internal::enableSignposts(0, 0))
        {
          if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
          {
            v48 = (*(*v16 + 40))(v16);
            re::packCharArrayToUInt64ForAriadne(*(v48 + 32), 0);
            if (v45 == 1)
            {
              v49 = "Local";
            }

            else
            {
              v49 = "Remote";
            }

            re::packCharArrayToUInt64ForAriadne(v49, 0);
            kdebug_trace();
          }
        }
      }
    }
  }

  ++*(*(a1 + 40) + 272);
  if (RESyncReadContextIsDestroyed())
  {
    if (v16[2])
    {
      re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(v2 + 272) + 440, *(v2 + 272));
      v50 = v16[2];
      v51 = *(v50 + 216);
      if (v51)
      {
        re::ecs2::NetworkComponent::unbindComponentFromSyncable(*(v50 + 216), v16, Syncable);
        v52 = (*(*v16 + 40))(v16);
        if (*(v51 + 116) < 0)
        {
          re::ecs2::LocalComponentInfo::remove((v51 + 112), *(v52 + 16));
        }
      }

      else
      {
        RESyncableSetUserData();
      }

      re::ecs2::EntityComponentCollection::remove((v16[2] + 48), v16);
    }

LABEL_88:

    goto LABEL_89;
  }

  if (!v7)
  {
    goto LABEL_88;
  }

  v53 = v16[2];
  if (v53)
  {
    re::ecs2::Entity::updateAfterComponentDeserialized(v53, v16);
  }

  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((*(a1 + 40) + 128), &v64);
  v16 = v64;
  if (v64)
  {
    goto LABEL_88;
  }

LABEL_89:
  v37 = v65;
  if (v65)
  {
    goto LABEL_90;
  }

  return 1;
}

uint64_t re::ecs2::NetworkComponent::getComponentBoundTo(uint64_t result, uint64_t a2)
{
  v2 = result;
  if (a2)
  {
    result = RESyncableGetUserData();
    v3 = 0;
    if (result)
    {
      if ((result & 1) == 0)
      {
        result = objc_loadWeakRetained(result);
        v3 = result - 8;
        if (!result)
        {
          v3 = 0;
        }
      }
    }
  }

  else
  {
    v3 = 0;
  }

  *v2 = v3;
  return result;
}

uint64_t re::ecs2::NetworkComponent::owningProcessType(re::ecs2::NetworkComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return v1;
  }

  do
  {
    v3 = v1;
    v1 = *(v1 + 32);
  }

  while (v1);
  v1 = *(v3 + 24);
  if (!v1)
  {
    return v1;
  }

  v4 = *(v1 + 56);
  if (!v4)
  {
    goto LABEL_15;
  }

  v5 = (*(*v4 + 32))(v4);
  if (!re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v5))
  {
    goto LABEL_15;
  }

  if (*(this + 4))
  {
    if (RESyncableGetOwnerPeerID())
    {
      goto LABEL_8;
    }

LABEL_15:
    LOBYTE(v1) = 0;
    return v1;
  }

  if (!*(this + 8))
  {
    goto LABEL_15;
  }

LABEL_8:
  v6 = 0;
  do
  {
    if (v6 >= RESyncServiceGetSessionCount())
    {
      LOBYTE(v1) = 3;
      return v1;
    }

    RESyncServiceGetSession();
    RESyncSessionGetNetSession();
    ++v6;
  }

  while (!RESyncNetSessionGetParticipantWithPeerID());
  if (RESyncNetSessionGetIsLocal())
  {
    LOBYTE(v1) = 1;
  }

  else
  {
    LOBYTE(v1) = 2;
  }

  return v1;
}

void re::ecs2::NetworkReceiveSystem::setEntityParent(re::ecs2::NetworkReceiveSystem *this, re::ecs2::Entity *a2, re::ecs2::Entity *a3)
{
  if (re::NetworkSystemFeatureFlags::suppressNetworkReparentMarkDirty(this) && (v5 = *(this + 27)) != 0)
  {
    *(v5 + 480) = 1;
    *(v5 + 488) = a2;
    re::ecs2::Entity::setParentInternal(this, a2, 0xFFFFFFFFFFFFFFFFLL);
    *(v5 + 480) = 0;
    *(v5 + 488) = 0;
  }

  else
  {

    re::ecs2::Entity::setParentInternal(this, a2, 0xFFFFFFFFFFFFFFFFLL);
  }
}

void re::Event<re::NetworkSystem,re::ecs2::Entity *,re::TLEInfo *,re::NewUnboundTLEHandlerResult *>::raise(uint64_t a1, uint64_t a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 80);
  *(a1 + 80) = v3 + 1;
  if (*(a1 + 16))
  {
    v5 = 0;
    do
    {
      if ((*(*(a1 + 32) + 32 * v5 + 24))(a2) == 1)
      {
        re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, v5);
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < *(a1 + 16));
    v3 = *(a1 + 80) - 1;
  }

  *(a1 + 80) = v3;
  if (!v3)
  {
    v6 = *(a1 + 56);
    if (v6)
    {
      v7 = 0;
      for (i = 0; i != v6; ++i)
      {
        v9 = *(a1 + 56);
        if (v9 <= i)
        {
          memset(v23, 0, sizeof(v23));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v15 = 136315906;
          v16 = "operator[]";
          v17 = 1024;
          v18 = 789;
          v19 = 2048;
          v20 = i;
          v21 = 2048;
          v22 = v9;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v10 = *(a1 + 72) + v7;
        v11 = *(v10 + 32);
        v12 = *(v10 + 16);
        v13[0] = *v10;
        v13[1] = v12;
        v14 = v11;
        if (LOBYTE(v13[0]) == 1)
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if ((v23[0] & 1) == 0)
          {
            re::DynamicArray<re::EvaluationRegister>::add(a1, v13 + 8);
          }
        }

        else
        {
          re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::indexOf(a1, v13 + 1, v23);
          if (LOBYTE(v23[0]) == 1)
          {
            re::DynamicArray<re::Event<re::SimulationTimer,re::SimulationTimerEventArgs const&>::Subscription>::removeStableAt(a1, *(&v23[0] + 1));
          }
        }

        v7 += 40;
      }
    }
  }
}

uint64_t ___ZNK2re4ecs220NetworkReceiveSystem22processEntitySnapshotsEPK12RESyncCommitRNS0_21NetworkReceiveContextE_block_invoke(uint64_t a1)
{
  v85 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  Syncable = RESyncReadContextGetSyncable();
  if (RESyncableGetTypeId())
  {
    return 1;
  }

  ++*(*(a1 + 40) + 264);
  IsDestroyed = RESyncableIsDestroyed();
  re::ecs2::NetworkComponent::getEntityBoundTo(Syncable, &v77);
  IsNew = RESyncReadContextIsNew();
  if ((IsNew & 1) != 0 || (IsDestroyed & 1) != 0 || v77)
  {
    v72 = 0;
    __s1 = &str_67;
    v74 = 0;
    v75 = 0;
    *v76 = 512;
    v7 = re::ecs2::IntrospectedNetworkTypeHelper::deserialize();
    if (!v7)
    {
      v29 = *re::ecsNetworkLogObjects(v7);
      v7 = os_log_type_enabled(v29, OS_LOG_TYPE_ERROR);
      if (v7)
      {
        Guid = RESyncableGetGuid();
        if (v77)
        {
          v31 = *(v77 + 39);
          v32 = *(v77 + 37);
        }

        else
        {
          v31 = 0;
          v32 = "N/A";
        }

        *buf = 134218499;
        *&buf[4] = Guid;
        v79 = 2048;
        v80 = v31;
        v81 = 2081;
        v82 = v32;
        _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "[NetworkComponent] Failed to deserialize entity state. (syncable=%llu, entity=%llu (%{private}s))", buf, 0x20u);
      }

      goto LABEL_133;
    }

    v8 = v77;
    if (!((v77 != 0) | IsDestroyed & 1))
    {
      if (*(a1 + 48) != 1)
      {
LABEL_133:
        if (v77)
        {
          v7 = RESyncReadContextIsDestroyed();
          if (v7)
          {
            v7 = re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(*(a1 + 40) + 40, &v77);
          }
        }

LABEL_136:
        if (v72)
        {
          if (v72)
          {
          }
        }

        goto LABEL_139;
      }

      v9 = (*(**(v2 + 40) + 288))(*(v2 + 40)) + 120;
      v10 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v9, 0);
      v70 = *buf;
      v71 = *&buf[8];
      if (v9 != *buf || *&buf[8] != 0xFFFFFFFFLL)
      {
        while (1)
        {
          v12 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v70);
          v13 = *(v12 + 200);
          if (v13)
          {
            v14 = *(v12 + 216);
            v15 = 8 * v13;
            while (1)
            {
              v16 = *v14;
              *buf = v74;
              v17 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v16 + 152, buf);
              if (v17)
              {
                v18 = *(v17 + 8);
              }

              else
              {
                v18 = *(*(v16 + 104) + 312) == *buf ? *(v16 + 104) : 0;
              }

              re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v77, v18);
              if (v77)
              {
                break;
              }

              ++v14;
              v15 -= 8;
              if (!v15)
              {
                goto LABEL_35;
              }
            }

            v19 = *(v77 + 27);
            if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
            {
              re::packCharArrayToUInt64ForAriadne(*(v77 + 37), 0);
              if (v19 && *(v19 + 32))
              {
                RESyncableGetGuid();
              }

              RESyncableGetGuid();
              kdebug_trace();
            }

            if (!v19 || RESyncableHasOwnership())
            {
              HasOwnership = RESyncableHasOwnership();
              if ((HasOwnership & 1) == 0)
              {
                break;
              }
            }
          }

LABEL_35:
          v10 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v70);
          if (v70 == v9 && v71 == 0xFFFF && HIWORD(v71) == 0xFFFF)
          {
            goto LABEL_43;
          }
        }

        v37 = *re::ecsNetworkLogObjects(HasOwnership);
        v7 = os_log_type_enabled(v37, OS_LOG_TYPE_ERROR);
        if (v7)
        {
          v38 = *(v77 + 39);
          v39 = *(v77 + 37);
          if (v19 && *(v19 + 32))
          {
            v40 = RESyncableGetGuid();
          }

          else
          {
            v40 = 0;
          }

          v68 = RESyncableGetGuid();
          *buf = 134218755;
          *&buf[4] = v38;
          v79 = 2081;
          v80 = v39;
          v81 = 2048;
          v82 = v40;
          v83 = 2048;
          v84 = v68;
          _os_log_error_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_ERROR, "[NetworkComponent] Trying to rebind entity (id=%llu name=%{private}s) from owned syncable (%llu) to an unowned syncable (%llu)", buf, 0x2Au);
        }

        goto LABEL_136;
      }

LABEL_43:
      v23 = v77;
      if (v77)
      {
        goto LABEL_146;
      }

      v24 = *(v2 + 272);
      v25 = *(v24 + 2280);
      if (v25)
      {
        v26 = 0;
        v27 = *(v24 + 2264);
        while (1)
        {
          v28 = *v27;
          v27 += 8;
          if (v28 < 0)
          {
            break;
          }

          if (v25 == ++v26)
          {
            LODWORD(v26) = *(v24 + 2280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v26) = 0;
      }

      if (v26 != v25)
      {
        v34 = *(v24 + 2264);
        while (1)
        {
          v35 = *(v34 + 32 * v26 + 8);
          if (*(v35 + 312) == v74)
          {
            break;
          }

          if (v25 <= v26 + 1)
          {
            v36 = v26 + 1;
          }

          else
          {
            v36 = v25;
          }

          while (v36 - 1 != v26)
          {
            LODWORD(v26) = v26 + 1;
            if ((*(v34 + 32 * v26) & 0x80000000) != 0)
            {
              goto LABEL_64;
            }
          }

          LODWORD(v26) = v36;
LABEL_64:
          if (v26 == v25)
          {
            goto LABEL_90;
          }
        }

        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(&v77, v35);
        v41 = *(v77 + 27);
        v10 = re::internal::enableSignposts(0, 0);
        if (v10)
        {
          v10 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
          if (v10)
          {
            re::packCharArrayToUInt64ForAriadne(*(v77 + 37), 0);
            if (v41 && *(v41 + 32))
            {
              RESyncableGetGuid();
            }

            RESyncableGetGuid();
            v10 = kdebug_trace();
          }
        }

        if (v41)
        {
          if (*(v41 + 208))
          {
            v42 = (v41 + 216);
          }

          else
          {
            v42 = *(v41 + 224);
          }

          v43 = *(v41 + 200);
          if (v43)
          {
            v44 = 8 * v43;
            do
            {
              if (*v42)
              {
                RESyncableSetUserData();
              }

              ++v42;
              v44 -= 8;
            }

            while (v44);
          }

          v10 = *(v41 + 32);
          if (v10)
          {
            RESyncableSetUserData();
            v10 = *(v41 + 32);
            if (v10)
            {
              v10 = RESyncRelease();
              *(v41 + 32) = 0;
            }
          }
        }
      }

LABEL_90:
      v23 = v77;
      if (v77)
      {
LABEL_146:
        while (1)
        {
          v48 = *(v23 + 9);
          if (!v48)
          {
            break;
          }

          re::ecs2::EntityComponentCollection::removeAt((v23 + 48), v48 - 1);
          v23 = v77;
        }

        re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(*(a1 + 40) + 40, v23);
      }

      else
      {
        v45 = re::ecs2::EntityFactory::instance(v10);
        re::ecs2::EntityFactory::make(v45, 4uLL, buf);
        v47 = v77;
        v46 = *buf;
        v77 = *buf;
        if (v47)
        {

          v46 = v77;
        }

        *(v46 + 39) = v74;
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(*(a1 + 40), &v77);
      }

      (*(*re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(buf);
      v49 = *buf;
      *(*buf + 56) = *(v2 + 272);
      *(v49 + 432) = 2;
      if (Syncable)
      {
        RESyncRetain();
      }

      if (*(v49 + 32) != Syncable)
      {
        RESyncableRefRetainer::reset((v49 + 32), Syncable);
      }

      if (Syncable)
      {
        RESyncRelease();
      }

      re::ecs2::NetworkComponent::bindEntityTo(Syncable, v77);
      v50 = v77;
      v69 = v49;
      v51 = (v49 + 8);
      re::ecs2::EntityComponentCollection::add(v50 + 48, &v69, 1);
      if (v69)
      {

        v69 = 0;
      }

      re::ecs2::NetworkComponent::clearDirty(v49, 2);

      v8 = v77;
    }

    if (v8)
    {
      if (*(v8 + 39) != v74)
      {
        v52 = *re::ecsNetworkLogObjects(v7);
        v53 = os_log_type_enabled(v52, OS_LOG_TYPE_ERROR);
        v8 = v77;
        if (v53)
        {
          v64 = *(v77 + 37);
          v65 = *(v77 + 39);
          v66 = v74;
          v67 = RESyncableGetGuid();
          *buf = 136381443;
          *&buf[4] = v64;
          v79 = 2048;
          v80 = v65;
          v81 = 2048;
          v82 = v66;
          v83 = 2048;
          v84 = v67;
          _os_log_error_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_ERROR, "Trying to reassign id on pre-existing entity %{private}s entity.id:%llu, entityState.entityId:%llu, syncable.guidid:%llu", buf, 0x2Au);
          v8 = v77;
        }
      }

      v54 = *(v8 + 27);
      v55 = *(v8 + 4);
      if (v55 && (v56 = *(v55 + 216)) != 0)
      {
        v57 = *(v56 + 32);
        if (v57)
        {
          v57 = RESyncableGetGuid();
        }
      }

      else
      {
        v57 = 0;
      }

      if (v57 != v75 && (!v54 || v75 || (v54[473] & 1) == 0))
      {
        v58 = *(a1 + 40);
        *buf = Syncable;
        if (Syncable)
        {
          RESyncRetain();
        }

        re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addOrReplace(v58 + 168, buf, &v75);
        if (*buf)
        {
          RESyncRelease();
        }
      }

      v59 = v77;
      if (v76[0] != ((*(v77 + 304) >> 3) & 1))
      {
        re::ecs2::Entity::setSelfEnabled(v77, v76[0]);
        v59 = v77;
      }

      if ((*(v59 + 36) ^ v72) > 1 || (v7 = __s1, v60 = *(v59 + 37), __s1 != v60) && (v7 = strcmp(__s1, v60), v7))
      {
        v7 = re::StringID::operator=(v59 + 36, &v72);
      }

      if (v54)
      {
        if (v76[1] != v54[432])
        {
          v54[432] = v76[1];
          v61 = *(a1 + 40);
          v62 = v54 + 8;
          *buf = v54;
          v7 = re::DynamicArray<re::SharedPtr<re::AssetDescriptorBase>>::add((v61 + 128), buf);
          if (*buf)
          {
          }
        }
      }
    }

    goto LABEL_133;
  }

  v6 = *re::ecsNetworkLogObjects(IsNew);
  if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
  {
    v33 = RESyncableGetGuid();
    *buf = 134217984;
    *&buf[4] = v33;
    _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "[NetworkComponent] Trying to process with outdated syncable that has already been unbound, guid=%llu", buf, 0xCu);
  }

  if (re::internal::enableSignposts(0, 0))
  {
    RESyncableGetGuid();
    kdebug_trace();
  }

LABEL_139:
  if (v77)
  {
  }

  return 1;
}

void re::ecs2::NetworkComponent::clearDirty(re::ecs2::NetworkComponent *this, uint64_t a2)
{
  if (a2)
  {
    *(this + 59) = 0;
    *(this + 58) &= 0x9FFFu;
    re::ecs2::LocalComponentInfo::clearRemoved((this + 112), a2);
  }

  *(this + 48) = 0;
  *(this + 50) = 0;
  v3 = *(this + 74);
  if (v3)
  {
    v4 = this + 304;
  }

  else
  {
    v4 = *(this + 39);
  }

  v5 = *(this + 36);
  while (1)
  {
    v6 = this + 304;
    if ((v3 & 1) == 0)
    {
      v6 = *(this + 39);
    }

    if (v4 == &v6[8 * v5])
    {
      break;
    }

    *v4 = 0;
    v4 += 8;
    v3 = *(this + 74);
  }

  re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(this + 384);
}

uint64_t re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v10, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    result = re::HashTable<RESyncableRefRetainer,unsigned long long,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::allocEntry(a1, v11, v10);
    v9 = *a3;
    *(result + 8) = *a2;
    *a2 = 0;
    *(result + 16) = v9;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
      }

      while (1)
      {
        LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
        if (v9 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v10 + 24 * v9 + 16) == v4)
        {
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::SharedPtr<re::ecs2::Entity>,re::SharedPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::Entity>>,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::ecs2::NetworkSendSystem::willAddSystemToECSService(re::ecs2::NetworkSendSystem *this)
{
  v2 = this;
  v53 = *MEMORY[0x1E69E9840];
  v3 = *(this + 5);
  if (v3)
  {
    v4 = (*(*v3 + 32))(v3);
    v5 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v4);
    v3 = *(v2 + 5);
  }

  else
  {
    v5 = 0;
  }

  *(v2 + 33) = v5;
  v6 = (*(*v3 + 32))(v3);
  *(v2 + 35) = re::ServiceLocator::serviceOrNull<re::AssetService>(v6);
  v7 = (*(**(v2 + 5) + 32))(*(v2 + 5));
  Request = re::ServiceLocator::serviceOrNull<re::NetworkSendBlockingAssetLoadRequestService>(v7);
  *(v2 + 34) = Request;
  if (Request)
  {
    Request = (**Request)(Request);
  }

  if (*(v2 + 33))
  {
    v9 = re::globalAllocators(Request);
    v10 = (*(*v9[2] + 32))(v9[2], 144, 8);
    re::NetworkSystem::peerIDStringForAssetSerialization(*(v2 + 33), v52);
    v11 = *(v2 + 35);
    re::DefaultAssetSerialize::DefaultAssetSerialize(v10, 0);
    *v10 = &unk_1F5CB9868;
    *(v10 + 96) = 0;
    re::DynamicString::DynamicString((v10 + 104), v52);
    *(v10 + 136) = v11;
    *(v2 + 40) = v10;
    if (*&v52[0] && (BYTE8(v52[0]) & 1) != 0)
    {
      (*(**&v52[0] + 40))();
    }

    v12 = *(*(v2 + 33) + 2560);
    *(v2 + 36) = v12;
    if (v12)
    {
      *(v2 + 37) = RESyncServiceObserverCreate();
      v45 = MEMORY[0x1E69E9820];
      v46 = 0x40000000;
      v47 = ___ZN2re4ecs217NetworkSendSystem25willAddSystemToECSServiceEv_block_invoke;
      v48 = &__block_descriptor_tmp_51_0;
      v49 = v2;
      RESyncServiceObserverOnSessionDidAdd();
      RESyncServiceAddObserver();
      if (RESyncServiceGetSessionCount())
      {
        v13 = 0;
        do
        {
          RESyncServiceGetSession();
          if ((RESyncSessionHasViewFilterCB() & 1) == 0)
          {
            RESyncSessionSetViewFilterCB();
          }

          ++v13;
        }

        while (RESyncServiceGetSessionCount() > v13);
      }
    }
  }

  v14 = *(v2 + 5);
  v15 = (*(*v14 + 280))(v14);
  v16 = (*(*v14 + 312))(v14, v15);
  v17 = *(v16 + 144);
  if (v17)
  {
    v18 = v16;
    v1 = 0;
    while (2)
    {
      if (v18[18] <= v1)
      {
        v50 = 0;
        memset(v52, 0, sizeof(v52));
        v2 = MEMORY[0x1E69E9C10];
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        LODWORD(v51) = 136315906;
        *(&v51 + 4) = "operator[]";
        WORD6(v51) = 1024;
        HIWORD(v51) = 797;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_61;
      }

      v20 = *(v18[20] + 8 * v1);
      v21 = (*(*v20 + 32))(v20);
      do
      {
        {
          v25 = v21;
          v21 = v25;
          if (v26)
          {
            re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info = re::internal::getOrCreateInfo("NetworkReceiveSystem", re::ecs2::allocInfo_NetworkReceiveSystem, re::ecs2::initInfo_NetworkReceiveSystem, &re::internal::introspectionInfoStorage<re::ecs2::NetworkReceiveSystem>, 0);
            v21 = v25;
          }
        }

        if (v21 == re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info)
        {
          v27 = 0;
          goto LABEL_35;
        }

        v22 = *(v21 + 56);
        if (!v22)
        {
          break;
        }

        v23 = *(v21 + 64);
        while (1)
        {
          v24 = *v23;
          if (**v23 == 1 && v24[10] == 3)
          {
            break;
          }

          ++v23;
          if (!--v22)
          {
            goto LABEL_32;
          }
        }

        v21 = *(v24 + 2);
      }

      while (v21);
LABEL_32:
      if (++v1 != v17)
      {
        continue;
      }

      break;
    }
  }

  v27 = 1;
LABEL_35:
  v28 = *(v2 + 5);
  v29 = (*(*v28 + 280))(v28);
  v30 = (*(*v28 + 304))(v28, v29);
  v31 = v2 + 8;
  v32 = *(v30 + 160);
  v33 = *(v30 + 144);
  if (v33)
  {
    v34 = 8 * v33;
    v35 = v32;
    while (*v35 != v2)
    {
      ++v35;
      v34 -= 8;
      if (!v34)
      {
        goto LABEL_43;
      }
    }
  }

  else
  {
    v35 = v32;
  }

  if (v35 != &v32[v33])
  {
    v33 = v35 - v32;
  }

LABEL_43:

  if (v1 > v33)
  {
    v36 = 1;
  }

  else
  {
    v36 = v27;
  }

  if (v36 == 1)
  {
    *(v2 + 49) = 0;
  }

  v18 = (*(**(v2 + 5) + 32))(*(v2 + 5));
  v19 = &unk_1EE187000;
  {
    goto LABEL_64;
  }

  while (1)
  {
    v37 = v19[193];
    re::StringID::invalid(v52);
    v38 = (*(*v18 + 16))(v18, v37, v52);
    v39 = v38;
    if (v52[0])
    {
      if (v52[0])
      {
      }
    }

    *(v2 + 38) = v39;
    *(v2 + 39) = RESyncCreateSyncObjectContext();
    RESyncAddSyncObjectContextEntry();
    v40 = (*(**(v2 + 5) + 32))(*(v2 + 5));
    {
      re::introspect<re::NetworkCompatSerializer>(BOOL)::info = re::introspect_NetworkCompatSerializer(0);
    }

    v19 = re::introspect<re::NetworkCompatSerializer>(BOOL)::info;
    re::StringID::invalid(v52);
    v41 = (*(*v40 + 16))(v40, v19, v52);
    v18 = v41;
    if (v52[0])
    {
      if (v52[0])
      {
      }
    }

    *(v2 + 41) = v18;
    v42 = (*(**(v2 + 5) + 32))(*(v2 + 5));
    *(v2 + 42) = re::ServiceLocator::serviceOrNull<re::FrameManager>(v42);
    *(v2 + 43) = RESyncCreateSyncObjectWriteContext();
    RESyncAddSyncObjectWriteContextEntry();
    result = RESyncAddSyncObjectWriteContextEntry();
    if (!*(v2 + 38))
    {
LABEL_61:
      re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) [NetworkComponent] Serializer not found. Please register the NetworkOPACKSerializer in the service locator.", "m_opackSerializer", "willAddSystemToECSService", 1566, v45, v46, v47, v48, v49, v50, v51);
      _os_crash();
      __break(1u);
LABEL_62:
      re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) [NetworkComponent] Deserializer not found. Please register the NetworkCompatSerializer in the service locator.", "m_compatSerializer", "willAddSystemToECSService", 1567);
      _os_crash();
      __break(1u);
      goto LABEL_63;
    }

    if (!*(v2 + 41))
    {
      goto LABEL_62;
    }

    if (*(v2 + 42))
    {
      return result;
    }

LABEL_63:
    re::internal::assertLog(4, v44, "assertion failure: '%s' (%s:line %i) [NetworkComponent] FrameManager not found. Please register the FrameManager in the service locator.", "m_frameManager", "willAddSystemToECSService", 1568);
    _os_crash();
    __break(1u);
LABEL_64:
    {
      v19[193] = re::introspect_NetworkOPACKSerializer(0);
    }
  }
}

void ___ZN2re4ecs217NetworkSendSystem25willAddSystemToECSServiceEv_block_invoke()
{
  v3 = *MEMORY[0x1E69E9840];
  if (RESyncServiceGetSyncSession())
  {
    if ((RESyncSessionHasViewFilterCB() & 1) == 0)
    {

      RESyncSessionSetViewFilterCB();
    }
  }

  else
  {
    v0 = *re::ecsNetworkLogObjects(0);
    if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
    {
      v1 = 134217984;
      v2 = RESyncNetSessionPeerID();
      _os_log_impl(&dword_1E1C61000, v0, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] couldn't find sync session for net session %llx", &v1, 0xCu);
    }
  }
}

uint64_t anonymous namespace::viewFilterAccessList(uint64_t a1, uint64_t a2)
{
  ++re::NetworkSystem::viewFilterListCount;
  if (RESyncSessionIsPrivileged())
  {
    return 1;
  }

  result = RESyncViewGetUserData();
  if (result)
  {
    v4 = result;
    if (RESyncSessionIsLocal())
    {
      if (*(v4 + 88) <= 1u)
      {
        RESyncSessionGetNetSession();
        if (RESyncNetSessionGetParticipantWithPeerID())
        {
          if (RESyncParticipantHasForceAuthorityCapability())
          {
            return 1;
          }
        }
      }
    }

    IsLocal = RESyncSessionIsLocal();
    v6 = *(v4 + 88);
    if (v6 != 2)
    {
      if (*(v4 + 88))
      {
        if (v6 == 3)
        {
          v7 = IsLocal;
        }

        else
        {
          v7 = 0;
        }

        if ((v7 & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      else if (IsLocal)
      {
LABEL_11:

        return re::ecs2::SyncAccessControl::isAllowed((v4 + 56), a2);
      }
    }

    return 0;
  }

  return result;
}

uint64_t re::ecs2::NetworkSendSystem::willRemoveSystemFromECSService(re::ecs2::NetworkSendSystem *this)
{
  if (*(this + 33))
  {
    RESyncServiceRemoveObserver();
    RESyncRelease();
    *(this + 35) = 0;
    *(this + 36) = 0;
    *(this + 37) = 0;
    re::internal::destroyPersistent<re::NetworkAssetSerialization>(*(this + 40));
  }

  *(this + 33) = 0;
  RESyncDestroySyncObjectWriteContext();
  *(this + 43) = 0;
  result = RESyncDestroySyncObjectContext();
  *(this + 41) = 0;
  *(this + 38) = 0;
  *(this + 39) = 0;
  return result;
}

void re::ecs2::NetworkSendSystem::update(uint64_t a1)
{
  v1 = a1;
  v236 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 272);
  if (v2)
  {
    (*(*v2 + 24))(v2);
  }

  v3 = *(v1 + 264);
  if (v3)
  {
    re::NetworkSystem::resolveDeferedViews(v3);
    if (!*(v1 + 288))
    {
      goto LABEL_387;
    }

    if (RESyncServiceGetSessionCount())
    {
      isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
      if (isStatisticCollectionEnabled)
      {
        isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
        v7 = isStatisticCollectionEnabled;
        if (*(isStatisticCollectionEnabled + 19))
        {
          isStatisticCollectionEnabled = mach_absolute_time();
          v209 = isStatisticCollectionEnabled;
        }
      }

      else
      {
        v7 = 0;
      }

      v9 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
      if (v9)
      {
        v10 = re::profilerThreadContext(v9);
        v11 = *(v10 + 152);
        if (v11)
        {
          v12 = v11[392].i64[0];
          if (v12 >= v5)
          {
            v12 = v5;
          }

          v11[392].i64[0] = v12;
          v13 = v11[392].i64[1];
          if (v13 <= v5)
          {
            v13 = v5;
          }

          v11[392].i64[1] = v13;
          v14 = vdupq_n_s64(1uLL);
          v14.i64[0] = v5;
          v11[393] = vaddq_s64(v11[393], v14);
          *(v10 + 184) = 0;
        }
      }

      v210 = v7;
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v228, 3055, v1);
      v226 = v1;
      SessionCount = RESyncServiceGetSessionCount();
      if (SessionCount)
      {
        v15 = 0;
        v16 = 0;
        v215 = 0;
        while (1)
        {
          RESyncServiceGetSession();
          if (!RESyncSessionIsLocal() || !*(*(v1 + 264) + 3068))
          {
            break;
          }

          v222 = v16;
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v213 = v15;
          *buf = re::ecs2::NetworkSendSystem::updateLocalSession(RESyncSession *)const::$_0::__invoke;
          memset(&buf[8], 0, 24);
          v17 = *(v1 + 304);
          *(v17 + 472) = buf;
          *(v17 + 448) = *(v1 + 320);
          v18 = *(v1 + 264);
          v19 = *(v18 + 3072);
          if (v19)
          {
            v20 = 0;
            v21 = *(v18 + 3056);
            do
            {
              if ((*v21 & 0x80000000) != 0)
              {
                goto LABEL_110;
              }

              v21 += 82;
              ++v20;
            }

            while (v19 != v20);
            LODWORD(v20) = *(v18 + 3072);
          }

          else
          {
            LODWORD(v20) = 0;
          }

LABEL_110:
          if (v20 == v19)
          {
            v62 = 0;
            v225 = 0;
          }

          else
          {
            v62 = 0;
            v225 = 0;
            v63 = *(v18 + 3072);
            v217 = *(v1 + 264);
            do
            {
              v64 = *(v18 + 3056) + 328 * v20;
              if ((*(v64 + 25) & 1) == 0)
              {
                v65 = v64 + 16;
                if (*(v64 + 26))
                {
                  goto LABEL_122;
                }

                *(v64 + 56) = 0;
                v66 = *(v1 + 304);
                *(v66 + 464) = *v65;
                *(v64 + 120) = v66 + 448;
                v67 = *(v64 + 160);
                if (v67)
                {
                  v68 = 0;
                  v69 = (*(v64 + 144) + 8);
                  do
                  {
                    v70 = *v69;
                    v69 += 6;
                    if (v70 < 0)
                    {
                      goto LABEL_121;
                    }

                    ++v68;
                  }

                  while (v67 != v68);
                  LODWORD(v68) = *(v65 + 144);
                }

                else
                {
                  LODWORD(v68) = 0;
                }

LABEL_121:
                if (v68 == v67)
                {
LABEL_122:
                  v18 = v217;
                }

                else
                {
                  v71 = *(v65 + 128);
                  do
                  {
                    v72 = *(v71 + 24 * v68 + 16);
                    if (v72)
                    {
                      v73 = v72 + 1;
                    }

                    if (!v72[4] || RESyncableIsAuthoritative())
                    {
                      v74 = v72[2];
                      if (v74)
                      {
                        do
                        {
                          v75 = v74;
                          v74 = *(v74 + 32);
                        }

                        while (v74);
                        if (*(v75 + 24))
                        {
                          ++v62;
                          v225 += re::ecs2::NetworkSendSystem::writeEntity(v1, (v65 + 24), v72, (v72 + 14), 1);
                        }
                      }
                    }

                    v76 = *(v65 + 144);
                    v71 = *(v65 + 128);
                    if (v76 <= v68 + 1)
                    {
                      v76 = v68 + 1;
                    }

                    while (v76 - 1 != v68)
                    {
                      LODWORD(v68) = v68 + 1;
                      if ((*(v71 + 24 * v68 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_138;
                      }
                    }

                    LODWORD(v68) = v76;
LABEL_138:
                    ;
                  }

                  while (v68 != v67);
                  v18 = v217;
                  v63 = *(v217 + 3072);
                }
              }

              if (v63 <= v20 + 1)
              {
                v77 = v20 + 1;
              }

              else
              {
                v77 = v63;
              }

              while (v77 - 1 != v20)
              {
                LODWORD(v20) = v20 + 1;
                if ((*(*(v18 + 3056) + 328 * v20) & 0x80000000) != 0)
                {
                  goto LABEL_147;
                }
              }

              LODWORD(v20) = v77;
LABEL_147:
              ;
            }

            while (v20 != v19);
            v18 = *(v1 + 264);
          }

          v78 = *(v18 + 2616);
          if (v78)
          {
            v79 = 0;
            v80 = (*(v18 + 2600) + 8);
            do
            {
              v81 = *v80;
              v80 += 6;
              if (v81 < 0)
              {
                goto LABEL_155;
              }

              ++v79;
            }

            while (v78 != v79);
            LODWORD(v79) = *(v18 + 2616);
          }

          else
          {
            LODWORD(v79) = 0;
          }

LABEL_155:
          if (v79 == v78)
          {
            v82 = v62;
            goto LABEL_219;
          }

          v83 = *(v18 + 2616);
          v218 = v18;
          v216 = v83;
          do
          {
            v84 = *(v18 + 2600) + 24 * v79;
            v87 = *(v84 + 16);
            v86 = (v84 + 16);
            v85 = v87;
            if (*(v87 + 88))
            {
              v88 = v85 + 12;
            }

            else
            {
              v88 = v85[13];
            }

            v89 = v85[10];
            if (!v89)
            {
              goto LABEL_210;
            }

            v90 = &v88[v89];
            do
            {
              v91 = *v88;
              v92 = *v86;
              if (*(*v86 + 4))
              {
                if (!RESyncableIsAuthoritative())
                {
                  goto LABEL_208;
                }

                v92 = *v86;
              }

              v93 = *(v92 + 2);
              if (v93)
              {
                do
                {
                  v94 = v93;
                  v93 = *(v93 + 32);
                }

                while (v93);
                if (*(v94 + 24))
                {
                  v95 = *(v1 + 264);
                  *__src = v91;
                  v96 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v95 + 3040, __src);
                  if (v96)
                  {
                    v97 = v96;
                    if ((*(v96 + 10) & 1) == 0)
                    {
                      if ((*(v96 + 9) & 1) != 0 || *(v96 + 284))
                      {
                        v98 = *(*v86 + 2);
                        v230 = v98;
                        if (v98)
                        {
                          v99 = (v98 + 8);
                          v98 = v230;
                        }

                        v100 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v98 ^ (v98 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v98 ^ (v98 >> 30))) >> 27));
                        re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v97 + 256, &v230, v100 ^ (v100 >> 31), __src);
                        if (*&__src[12] == 0x7FFFFFFF)
                        {
                          v102 = 0;
                        }

                        else
                        {
                          v102 = (*(v97 + 272) + 56 * *&__src[12] + 16);
                        }

                        if (v230)
                        {
                        }

                        if (v102)
                        {
                          v219 = v62;
                          v107 = *v86;
                          v108 = (*v86 + 112);
                          v109 = re::ecs2::LocalComponentInfo::removed(v108, v101);
                          if (v110)
                          {
                            v111 = v109;
                            v112 = 2 * v110;
                            do
                            {
                              v113 = *v111++;
                              re::ecs2::LocalComponentInfo::remove(v102, v113);
                              v112 -= 2;
                            }

                            while (v112);
                          }

                          v114 = *(v107 + 58);
                          v115 = 2;
                          if ((v114 & 0x4000) == 0)
                          {
                            v115 = 6;
                          }

                          v116 = *(v108 + v115);
                          if (v116)
                          {
                            v117 = *(v107 + 15);
                            v118 = 2 * v116;
                            do
                            {
                              v119 = *v117++;
                              re::ecs2::LocalComponentInfo::add(v102, v119);
                              re::ecs2::LocalComponentInfo::markDirty(v102, v119);
                              v118 -= 2;
                            }

                            while (v118);
                            v114 = *(v107 + 58);
                          }

                          v120 = *(v102 + 2);
                          v121 = v114 & 0x2000 | v120;
                          *(v102 + 2) = v121;
                          *(v102 + 2) = (*(v107 + 58) | v120) & 0x4000 | v121 & 0xBFFF;
                          v1 = v226;
                          v62 = v219;
                        }

                        else
                        {
                          v122 = *v86;
                          v123 = *(*v86 + 2);
                          v230 = v123;
                          if (v123)
                          {
                            v124 = (v123 + 8);
                            v122 = *v86;
                            v123 = v230;
                          }

                          v1 = v226;
                          memset(__src, 0, 24);
                          v125 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v123 ^ (v123 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v123 ^ (v123 >> 30))) >> 27));
                          re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v97 + 256, &v230, v125 ^ (v125 >> 31), __src);
                          if (*&__src[12] == 0x7FFFFFFF)
                          {
                            v126 = re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::allocEntry(v97 + 256, *&__src[8], *__src);
                            *(v126 + 8) = v230;
                            v230 = 0;
                            *(v126 + 16) = 0;
                            *(v126 + 22) = 0;
                            *(v126 + 24) = v126 + 32;
                            v128 = *(v122 + 8);
                            *(v126 + 16) = *(v122 + 7);
                            *(v126 + 32) = v128;
                            if (*(v126 + 18) > *(v126 + 16))
                            {
                              goto LABEL_386;
                            }

                            v129 = v126;
                            if (*(v122 + 15) == (v122 + 128))
                            {
                              *(v126 + 24) = v126 + 32;
                            }

                            else
                            {
                              v130 = re::globalAllocators(v126);
                              if (8 * *(v129 + 20))
                              {
                                v220 = v62;
                                v131 = (8 * *(v129 + 20));
                                v211 = 2 * v131;
                                v132 = (*(*v130[2] + 32))(v130[2], 2 * v131 + 17, 0);
                                v133 = ((v132 + 17) & 0xFFFFFFFFFFFFFFFELL);
                                *(v133 - 2) = v131;
                                *(v133 - 1) = v132;
                                v62 = v220;
                                bzero(v133, v211);
                                v134 = 16 * (*(v129 + 20) & 0x1FFF);
                              }

                              else
                              {
                                v134 = 0;
                                v133 = 0;
                              }

                              *(v129 + 24) = v133;
                              memcpy(v133, *(v122 + 15), v134);
                            }

                            ++*(v97 + 296);
                            v1 = v226;
                          }

                          if (v230)
                          {
                          }
                        }
                      }

                      else if (!re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(v96 + 112, v86))
                      {
                        ++v62;
                        *(*(v1 + 304) + 464) = v91;
                        v225 += re::ecs2::NetworkSendSystem::writeEntity(v1, (v97 + 24), *v86, (*v86 + 112), 0);
                      }
                    }
                  }

                  else
                  {
                    v103 = *re::ecsNetworkLogObjects(0);
                    if (os_log_type_enabled(v103, OS_LOG_TYPE_DEFAULT))
                    {
                      v104 = *(*v86 + 2);
                      v105 = *(v104 + 296);
                      v106 = *(v104 + 312);
                      *__src = 134218498;
                      *&__src[4] = v91;
                      *&__src[12] = 2080;
                      *&__src[14] = v105;
                      *&__src[22] = 2048;
                      *&__src[24] = v106;
                      _os_log_impl(&dword_1E1C61000, v103, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] no peer found for peerID %llu on entity %s(%llu).", __src, 0x20u);
                    }
                  }
                }
              }

LABEL_208:
              ++v88;
            }

            while (v88 != v90);
            v18 = v218;
            v83 = *(v218 + 2616);
            LODWORD(v78) = v216;
LABEL_210:
            if (v83 <= v79 + 1)
            {
              v135 = v79 + 1;
            }

            else
            {
              v135 = v83;
            }

            while (v135 - 1 != v79)
            {
              LODWORD(v79) = v79 + 1;
              if ((*(*(v18 + 2600) + 24 * v79 + 8) & 0x80000000) != 0)
              {
                goto LABEL_217;
              }
            }

            LODWORD(v79) = v135;
LABEL_217:
            ;
          }

          while (v79 != v78);
          v82 = v62;
          v18 = *(v1 + 264);
LABEL_219:
          re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v18 + 2584);
          v136 = *(v1 + 264);
          v137 = *(v136 + 3072);
          if (v137)
          {
            v138 = 0;
            v139 = *(v136 + 3056);
            while ((*v139 & 0x80000000) == 0)
            {
              v139 += 82;
              if (v137 == ++v138)
              {
                LODWORD(v138) = *(v136 + 3072);
                break;
              }
            }
          }

          else
          {
            LODWORD(v138) = 0;
          }

          if (v138 == v137)
          {
            v140 = 0;
          }

          else
          {
            v140 = 0;
            v221 = *(v136 + 3072);
            do
            {
              v141 = *(v136 + 3056) + 328 * v138;
              if ((*(v141 + 25) & 1) == 0)
              {
                v142 = v141 + 16;
                if ((*(v141 + 26) & 1) == 0)
                {
                  *(*(v1 + 304) + 464) = *v142;
                  v143 = *(v141 + 304);
                  if (v143)
                  {
                    v144 = 0;
                    v145 = *(v141 + 288);
                    while (1)
                    {
                      v146 = *v145;
                      v145 += 14;
                      if (v146 < 0)
                      {
                        break;
                      }

                      if (v143 == ++v144)
                      {
                        LODWORD(v144) = *(v142 + 288);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v144) = 0;
                  }

                  if (v144 == v143)
                  {
                    v147 = *(v142 + 288);
                  }

                  else
                  {
                    v148 = *(v142 + 272);
                    v147 = *(v142 + 288);
                    do
                    {
                      v149 = *(*(v148 + 56 * v144 + 8) + 216);
                      if (v149)
                      {
                        ++v82;
                        v225 += re::ecs2::NetworkSendSystem::writeEntity(v1, (v142 + 24), v149, (v148 + 56 * v144 + 16), 0);
                        v147 = *(v142 + 288);
                        v148 = *(v142 + 272);
                      }

                      if (v147 <= v144 + 1)
                      {
                        v150 = v144 + 1;
                      }

                      else
                      {
                        v150 = v147;
                      }

                      while (v150 - 1 != v144)
                      {
                        LODWORD(v144) = v144 + 1;
                        if ((*(v148 + 56 * v144) & 0x80000000) != 0)
                        {
                          goto LABEL_248;
                        }
                      }

                      LODWORD(v144) = v150;
LABEL_248:
                      ;
                    }

                    while (v144 != v143);
                  }

                  if (*(v142 + 284))
                  {
                    v151 = *(v142 + 280);
                    if (v151)
                    {
                      memset_pattern16(*(v142 + 264), &unk_1E304C660, 4 * v151);
                      v147 = *(v142 + 288);
                    }

                    if (v147)
                    {
                      v152 = 0;
                      v153 = 0;
                      do
                      {
                        re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::EntryBase::free(*(v142 + 272) + v152);
                        ++v153;
                        v152 += 56;
                      }

                      while (v153 < *(v142 + 288));
                    }

                    *(v142 + 292) = 0x7FFFFFFF;
                    *(v142 + 284) = 0;
                    ++*(v142 + 296);
                  }

                  v154 = *(v142 + 144);
                  if (v154)
                  {
                    v155 = 0;
                    v156 = (*(v142 + 128) + 8);
                    while (1)
                    {
                      v157 = *v156;
                      v156 += 6;
                      if (v157 < 0)
                      {
                        break;
                      }

                      if (v154 == ++v155)
                      {
                        LODWORD(v155) = *(v142 + 144);
                        break;
                      }
                    }
                  }

                  else
                  {
                    LODWORD(v155) = 0;
                  }

                  if (v155 != v154)
                  {
                    v158 = *(v142 + 128);
                    v159 = *(v142 + 144);
                    do
                    {
                      v160 = *(*(v158 + 24 * v155 + 16) + 16);
                      if (v160)
                      {
                        v230 = *(v160 + 312);
                        memset(__src, 0, 24);
                        v161 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v230 ^ (v230 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v230 ^ (v230 >> 30))) >> 27));
                        re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v142 + 160, &v230, v161 ^ (v161 >> 31), __src);
                        if (*&__src[12] == 0x7FFFFFFF)
                        {
                          v162 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v142 + 160, *&__src[8], *__src);
                          *(v162 + 8) = v230;
                          *(v162 + 16) = 0;
                          ++*(v142 + 200);
                        }

                        v159 = *(v142 + 144);
                        v158 = *(v142 + 128);
                      }

                      if (v159 <= v155 + 1)
                      {
                        v163 = v155 + 1;
                      }

                      else
                      {
                        v163 = v159;
                      }

                      while (v163 - 1 != v155)
                      {
                        LODWORD(v155) = v155 + 1;
                        if ((*(v158 + 24 * v155 + 8) & 0x80000000) != 0)
                        {
                          goto LABEL_275;
                        }
                      }

                      LODWORD(v155) = v163;
LABEL_275:
                      ;
                    }

                    while (v155 != v154);
                  }

                  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(v142 + 112);
                  if (*(v142 + 40) | *(v142 + 236))
                  {
                    *__src = 0;
                    re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 8uLL);
                    v164 = *(v142 + 240);
                    if (v164)
                    {
                      v165 = 0;
                      v166 = *(v142 + 224);
                      while (1)
                      {
                        v167 = *v166;
                        v166 += 8;
                        if (v167 < 0)
                        {
                          break;
                        }

                        if (v164 == ++v165)
                        {
                          LODWORD(v165) = *(v142 + 240);
                          break;
                        }
                      }
                    }

                    else
                    {
                      LODWORD(v165) = 0;
                    }

                    if (v165 != v164)
                    {
                      v168 = *(v142 + 224);
                      v169 = *(v142 + 240);
                      do
                      {
                        v170 = v168 + 32 * v165;
                        if (*(v170 + 16) != *v142)
                        {
                          *__src = *(v170 + 8);
                          re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 8uLL);
                          *__src = 0;
                          re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 4uLL);
                          re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v142 + 160, (v170 + 8));
                          v169 = *(v142 + 240);
                          v168 = *(v142 + 224);
                        }

                        if (v169 <= v165 + 1)
                        {
                          v171 = v165 + 1;
                        }

                        else
                        {
                          v171 = v169;
                        }

                        while (v171 - 1 != v165)
                        {
                          LODWORD(v165) = v165 + 1;
                          if ((*(v168 + 32 * v165) & 0x80000000) != 0)
                          {
                            goto LABEL_295;
                          }
                        }

                        LODWORD(v165) = v171;
LABEL_295:
                        ;
                      }

                      while (v165 != v164);
                    }

                    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(v142 + 208);
                    *__src = 0;
                    re::snapshot::BufferEncoder::writeRaw<true>((v142 + 24), __src, 8uLL);
                    *(v142 + 104) = 0;
                    RESyncSessionSendRaw();
                    v140 = 1;
                  }

                  LODWORD(v137) = v221;
                }
              }

              v172 = *(v136 + 3072);
              if (v172 <= v138 + 1)
              {
                v172 = v138 + 1;
              }

              while (v172 - 1 != v138)
              {
                LODWORD(v138) = v138 + 1;
                if ((*(*(v136 + 3056) + 328 * v138) & 0x80000000) != 0)
                {
                  goto LABEL_304;
                }
              }

              LODWORD(v138) = v172;
LABEL_304:
              ;
            }

            while (v138 != v137);
          }

          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v173 = *(v1 + 304);
          v173[56] = 0;
          v173[58] = 0;
          v173[59] = 0;
          v215 |= v140;
          v16 = v222;
          v15 = v213;
LABEL_332:
          if (++v15 == SessionCount)
          {
            v189 = v16;
            v190 = (v215 & 1) == 0;
            goto LABEL_335;
          }
        }

        if (!v16)
        {
          *(v1 + 240) = 0;
          ++*(v1 + 248);
          v22 = *(v1 + 264);
          v227[0] = MEMORY[0x1E69E9820];
          v227[1] = 0x40000000;
          v227[2] = ___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke_2;
          v227[3] = &__block_descriptor_tmp_65_0;
          v227[4] = v1;
          *__src = v227;
          re::NetworkSystem::enumerateRemoteDirtyComponents<void({block_pointer})(re::SharedPtr<re::ecs2::NetworkComponent>)>(v22, __src);
          v23 = RESyncCommitListCreate();
          if (re::internal::enableSignposts(0, 0))
          {
            kdebug_trace();
          }

          v214 = v15;
          v223 = v23;
          v25 = *(v1 + 304);
          *(v25 + 448) = *(v1 + 320);
          v26 = *(v1 + 240);
          if (v26)
          {
            v27 = 0;
            v28 = 0;
            v29 = 0;
            v30 = 0;
            v31 = *(v1 + 256);
            v224 = &v31[v26];
            while (1)
            {
              v32 = *v31;
              if (*(*v31 + 48) == 1)
              {
                if (!v30)
                {
                  v30 = RESyncCommitListAddNewCommit();
                }

                if (!v226[36])
                {
                  goto LABEL_385;
                }

                RESyncServiceGetTypeInfo();
                *__src = 0;
                *&__src[8] = &str_67;
                *&__src[16] = 0;
                *&__src[24] = 0;
                LOWORD(v233) = 512;
                v33 = *(v32 + 16);
                re::StringID::operator=(__src, (v33 + 288));
                *&__src[16] = *(v33 + 312);
                LOBYTE(v233) = (*(v33 + 304) & 8) != 0;
                if ((*(v32 + 473) & 1) == 0 && (v34 = *(v33 + 32)) != 0 && (v35 = *(v34 + 216)) != 0)
                {
                  Guid = *(v35 + 32);
                  if (Guid)
                  {
                    Guid = RESyncableGetGuid();
                  }
                }

                else
                {
                  Guid = 0;
                }

                *&__src[24] = Guid;
                BYTE1(v233) = *(v32 + 432);
                v37 = re::ecs2::IntrospectedNetworkTypeHelper::serialize();
                if (v37)
                {
                  is_enabled = kdebug_is_enabled();
                  if (is_enabled)
                  {
                    re::packCharArrayToUInt64ForAriadne(*(*(v32 + 16) + 296), 0);
                    is_enabled = kdebug_trace();
                  }
                }

                else
                {
                  v39 = *re::ecsNetworkLogObjects(v37);
                  is_enabled = os_log_type_enabled(v39, OS_LOG_TYPE_FAULT);
                  if (is_enabled)
                  {
                    v60 = *(*(v32 + 16) + 296);
                    v61 = *(v32 + 32);
                    if (v61)
                    {
                      v61 = RESyncableGetGuid();
                    }

                    *buf = 136380931;
                    *&buf[4] = v60;
                    *&buf[12] = 2048;
                    *&buf[14] = v61;
                    _os_log_fault_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_FAULT, "Failed to write entity state. (name=%{private}s, guid=%llu)", buf, 0x16u);
                  }
                }

                if (__src[0])
                {
                  if (__src[0])
                  {
                  }
                }

                ++v29;
                v27 = 1;
              }

              if (*(v32 + 50) != 1)
              {
                break;
              }

              if (*(v32 + 200))
              {
                if (!v30)
                {
                  v30 = RESyncCommitListAddNewCommit();
                }

                if (*(v32 + 208))
                {
                  v40 = (v32 + 216);
                }

                else
                {
                  v40 = *(v32 + 224);
                }

                v52 = *(v32 + 200);
                if (v52)
                {
                  v53 = 8 * v52;
                  do
                  {
                    v54 = *v40++;
                    re::ecs2::NetworkSendSystem::buildComponentSnapshot(v226, v54);
                    v53 -= 8;
                  }

                  while (v53);
                  i = *(v32 + 200);
                }

                else
                {
                  i = 0;
                }

LABEL_86:
                v27 = 1;
                goto LABEL_87;
              }

              i = 0;
LABEL_87:
              v55 = *(v32 + 416);
              if (v55)
              {
                v56 = 0;
                v57 = (*(v32 + 400) + 8);
                do
                {
                  v58 = *v57;
                  v57 += 6;
                  if (v58 < 0)
                  {
                    goto LABEL_93;
                  }

                  ++v56;
                }

                while (v55 != v56);
                LODWORD(v56) = *(v32 + 416);
              }

              else
              {
                LODWORD(v56) = 0;
              }

LABEL_93:
              if (v56 != v55)
              {
                do
                {
                  if (!v30)
                  {
                    v30 = RESyncCommitListAddNewCommit();
                  }

                  RESyncCommitMarkDestroyed();
                  v59 = *(v32 + 416);
                  if (v59 <= v56 + 1)
                  {
                    v59 = v56 + 1;
                  }

                  while (v59 - 1 != v56)
                  {
                    LODWORD(v56) = v56 + 1;
                    if ((*(*(v32 + 400) + 24 * v56 + 8) & 0x80000000) != 0)
                    {
                      goto LABEL_102;
                    }
                  }

                  LODWORD(v56) = v59;
LABEL_102:
                  ;
                }

                while (v56 != v55);
                v27 = 1;
              }

              v28 += i;
              re::ecs2::NetworkComponent::clearDirty(v32, 2);
              if (++v31 == v224)
              {
                v1 = v226;
                v25 = v226[38];
                goto LABEL_309;
              }
            }

            v41 = *(v32 + 296);
            if (v41)
            {
              v42 = (v32 + 304);
            }

            else
            {
              v42 = *(v32 + 312);
            }

            for (i = 0; ; i += v46.u32[0])
            {
              v44 = v32 + 304;
              if ((v41 & 1) == 0)
              {
                v44 = *(v32 + 312);
              }

              if (v42 == (v44 + 8 * *(v32 + 288)))
              {
                break;
              }

              v45 = *v42++;
              v46 = vcnt_s8(v45);
              v46.i16[0] = vaddlv_u8(v46);
            }

            if (!i)
            {
              goto LABEL_87;
            }

            if (!v30)
            {
              v30 = RESyncCommitListAddNewCommit();
            }

            FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v32 + 280, 0);
            if (FirstBitSet != -1)
            {
              v48 = FirstBitSet;
              while (1)
              {
                v49 = *(v32 + 200);
                if (v49 <= v48)
                {
                  break;
                }

                v50 = v32 + 216;
                if ((*(v32 + 208) & 1) == 0)
                {
                  v50 = *(v32 + 224);
                }

                v51 = *(v50 + 8 * v48);
                if (v51)
                {
                  RESyncRetain();
                  re::ecs2::NetworkSendSystem::buildComponentSnapshot(v226, v51);
                  RESyncRelease();
                }

                else
                {
                  re::ecs2::NetworkSendSystem::buildComponentSnapshot(v226, 0);
                }

                v48 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(v32 + 280, v48 + 1);
                if (v48 == -1)
                {
                  goto LABEL_86;
                }
              }

              v230 = 0;
              v234 = 0u;
              v235 = 0u;
              v233 = 0u;
              memset(__src, 0, sizeof(__src));
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *buf = 136315906;
              *&buf[4] = "operator[]";
              *&buf[12] = 1024;
              *&buf[14] = 858;
              *&buf[18] = 2048;
              *&buf[20] = v48;
              *&buf[28] = 2048;
              *&buf[30] = v49;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_385:
              re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) ", "m_syncService", "buildEntitySnapshot", 1884);
              _os_crash();
              __break(1u);
LABEL_386:
              re::internal::assertLog(4, v127, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "LocalComponentInfo", 3035);
              _os_crash();
              __break(1u);
LABEL_387:
              re::internal::assertLog(4, v4, "assertion failure: '%s' (%s:line %i) ", "m_syncService", "update", 1605);
              _os_crash();
              __break(1u);
            }

            goto LABEL_86;
          }

          v29 = 0;
          v28 = 0;
          v27 = 0;
LABEL_309:
          *(v25 + 448) = 0;
          v174 = re::internal::enableSignposts(0, 0);
          if (v174)
          {
            v174 = kdebug_trace();
          }

          v175 = re::ProfilerConfig::isStatisticCollectionEnabled(v174);
          if (v175)
          {
            v175 = re::profilerThreadContext(v175);
            v176 = *(v175 + 152);
            if (v176)
            {
              v177 = v176[376].u64[0];
              if (v177 >= v29)
              {
                v177 = v29;
              }

              v176[376].i64[0] = v177;
              v178 = v176[376].u64[1];
              if (v178 <= v29)
              {
                v178 = v29;
              }

              v176[376].i64[1] = v178;
              v179 = vdupq_n_s64(1uLL);
              v179.i64[0] = v29;
              v176[377] = vaddq_s64(v176[377], v179);
              *(v175 + 184) = 0;
            }
          }

          v180 = re::ProfilerConfig::isStatisticCollectionEnabled(v175);
          if (v180)
          {
            v181 = re::profilerThreadContext(v180);
            v182 = *(v181 + 152);
            if (v182)
            {
              v183 = v182[360].u64[0];
              if (v183 >= v28)
              {
                v183 = v28;
              }

              v182[360].i64[0] = v183;
              v184 = v182[360].u64[1];
              if (v184 <= v28)
              {
                v184 = v28;
              }

              v182[360].i64[1] = v184;
              v185 = vdupq_n_s64(1uLL);
              v185.i64[0] = v28;
              v182[361] = vaddq_s64(v182[361], v185);
              *(v181 + 184) = 0;
            }
          }

          v215 |= v27;
          EntryCount = RESyncCommitListGetEntryCount();
          if (EntryCount)
          {
            v187 = EntryCount;
            v188 = 0;
            v16 = v223;
            do
            {
              RESyncCommitListGetEntry();
              RESyncCommitListAddCopy();
              ++v188;
            }

            while (v187 != v188);
          }

          else
          {
            v16 = v223;
          }

          v15 = v214;
        }

        RESyncServiceGetSession();
        RESyncSessionSend();
        goto LABEL_332;
      }

      v189 = 0;
      v190 = 1;
LABEL_335:
      v191 = *(v1 + 264);
      v192 = *(v191 + 2664);
      if (v192)
      {
        v193 = 0;
        v194 = (*(v191 + 2648) + 8);
        while (1)
        {
          v195 = *v194;
          v194 += 6;
          if (v195 < 0)
          {
            break;
          }

          if (v192 == ++v193)
          {
            LODWORD(v193) = *(v191 + 2664);
            break;
          }
        }
      }

      else
      {
        LODWORD(v193) = 0;
      }

      if (v193 != v192)
      {
        do
        {
          v196 = *(*(v191 + 2648) + 24 * v193 + 16);
          if (v196)
          {
            v197 = (v196 + 8);
          }

          v198 = *(v196 + 416);
          if (v198)
          {
            v199 = 0;
            v200 = (*(v196 + 400) + 8);
            while (1)
            {
              v201 = *v200;
              v200 += 6;
              if (v201 < 0)
              {
                break;
              }

              if (v198 == ++v199)
              {
                LODWORD(v199) = *(v196 + 416);
                break;
              }
            }
          }

          else
          {
            LODWORD(v199) = 0;
          }

LABEL_359:
          while (v199 != v198)
          {
            if (*(*(v196 + 400) + 24 * v199 + 16))
            {
              RESyncRetain();
              RESyncServiceRemoveSyncable();
              RESyncRelease();
            }

            else
            {
              RESyncServiceRemoveSyncable();
            }

            v202 = *(v196 + 416);
            if (v202 <= v199 + 1)
            {
              v202 = v199 + 1;
            }

            while (v202 - 1 != v199)
            {
              LODWORD(v199) = v199 + 1;
              if ((*(*(v196 + 400) + 24 * v199 + 8) & 0x80000000) != 0)
              {
                goto LABEL_359;
              }
            }

            LODWORD(v199) = v202;
          }

          re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(v196 + 384);
          if (v196)
          {
          }

          v203 = *(v191 + 2664);
          if (v203 <= v193 + 1)
          {
            v203 = v193 + 1;
          }

          v1 = v226;
          while (v203 - 1 != v193)
          {
            LODWORD(v193) = v193 + 1;
            if ((*(*(v191 + 2648) + 24 * v193 + 8) & 0x80000000) != 0)
            {
              goto LABEL_369;
            }
          }

          LODWORD(v193) = v203;
LABEL_369:
          ;
        }

        while (v193 != v192);
        v191 = v226[33];
      }

      re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(v191 + 2344);
      re::NetworkSystem::clearRemoteDirty(*(v1 + 264));
      if (v189)
      {
        re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(*(v1 + 264) + 2632);
        RESyncRelease();
      }

      if (!v190)
      {
        re::Event<re::GeometricObjectBase>::raise(*(v1 + 264) + 1848, *(v1 + 264));
      }

      re::Event<re::GeometricObjectBase>::raise(*(v1 + 264) + 1584, *(v1 + 264));
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v228);
      if (v210)
      {
        if (*(v210 + 19))
        {
          v204 = mach_absolute_time();
          v205 = *(v210 + 19);
          if (v205)
          {
            v206 = v205[992].u64[0];
            if (v206 >= v204 - v209)
            {
              v206 = v204 - v209;
            }

            v205[992].i64[0] = v206;
            v207 = v205[992].u64[1];
            if (v207 <= v204 - v209)
            {
              v207 = v204 - v209;
            }

            v205[992].i64[1] = v207;
            v208 = vdupq_n_s64(1uLL);
            v208.i64[0] = v204 - v209;
            v205[993] = vaddq_s64(v205[993], v208);
            *(v210 + 184) = 0;
          }
        }
      }
    }

    else
    {
      v8 = *(v1 + 264);
      v229[0] = MEMORY[0x1E69E9820];
      v229[1] = 0x40000000;
      v229[2] = ___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke;
      v229[3] = &__block_descriptor_tmp_64;
      v229[4] = v1;
      *__src = v229;
      re::NetworkSystem::enumerateRemoteDirtyComponents<void({block_pointer})(re::SharedPtr<re::ecs2::NetworkComponent>)>(v8, __src);
      re::NetworkSystem::clearRemoteDirty(*(v1 + 264));
    }
  }
}

void re::NetworkSystem::enumerateRemoteDirtyComponents<void({block_pointer})(re::SharedPtr<re::ecs2::NetworkComponent>)>(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 2664);
  if (v4)
  {
    v5 = 0;
    v6 = (*(a1 + 2648) + 8);
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
        LODWORD(v5) = *(a1 + 2664);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  while (v5 != v4)
  {
    v8 = *a2;
    v9 = *(*(a1 + 2648) + 24 * v5 + 16);
    v12 = v9;
    if (v9)
    {
      v10 = (v9 + 8);
    }

    (*(v8 + 16))(v8, &v12);
    if (v12)
    {

      v12 = 0;
    }

    v11 = *(a1 + 2664);
    if (v11 <= v5 + 1)
    {
      v11 = v5 + 1;
    }

    while (v11 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(a1 + 2648) + 24 * v5 + 8) & 0x80000000) != 0)
      {
        goto LABEL_18;
      }
    }

    LODWORD(v5) = v11;
LABEL_18:
    ;
  }
}

uint64_t ___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(*a2 + 416);
  if (v4)
  {
    v5 = 0;
    v6 = (*(v3 + 400) + 8);
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
        LODWORD(v5) = *(*a2 + 416);
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
    do
    {
      if (*(*(v3 + 400) + 24 * v5 + 16))
      {
        RESyncRetain();
        RESyncServiceRemoveSyncable();
        RESyncRelease();
      }

      else
      {
        RESyncServiceRemoveSyncable();
      }

      v8 = *(v3 + 416);
      if (v8 <= v5 + 1)
      {
        v8 = v5 + 1;
      }

      while (v8 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(v3 + 400) + 24 * v5 + 8) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v5) = v8;
LABEL_17:
      ;
    }

    while (v5 != v4);
    v3 = *a2;
  }

  re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(v3 + 384);
  v10 = (*a2 + 112);

  return re::ecs2::LocalComponentInfo::clearRemoved(v10, v9);
}

void re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(uint64_t a1)
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
        v6 = *(a1 + 16) + v4;
        v7 = *(v6 + 8);
        if (v7 < 0)
        {
          *(v6 + 8) = v7 & 0x7FFFFFFF;
          if (*(v6 + 16))
          {
            RESyncRelease();
            *(v6 + 16) = 0;
            v3 = *(a1 + 32);
          }
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

uint64_t re::ecs2::LocalComponentInfo::clearRemoved(re::ecs2::LocalComponentInfo *this, uint64_t a2)
{
  v2 = *(this + 1);
  v3 = *this;
  if (v2 > v3)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "clearRemoved", 3177);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    result = memset((*(this + 1) + 2 * v2), 255, 2 * (v3 - v2));
    *this = *(this + 1);
  }

  return result;
}

_anonymous_namespace_ *___ZNK2re4ecs217NetworkSendSystem6updateENS0_6System13UpdateContextE_block_invoke_2(_anonymous_namespace_ *result, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 4);
    result = *(v2 + 32);
    if (!result || (result = RESyncableIsAuthoritative(), result))
    {
      v4 = *(v2 + 16);
      if (v4)
      {
        do
        {
          v5 = v4;
          v4 = *(v4 + 32);
        }

        while (v4);
        if (*(v5 + 24))
        {
          v6 = *(v3 + 232);
          v7 = *(v3 + 240);
          if (v7 >= v6)
          {
            v8 = v7 + 1;
            if (v6 < v7 + 1)
            {
              if (*(v3 + 224))
              {
                v9 = 2 * v6;
                v10 = v6 == 0;
                v11 = 8;
                if (!v10)
                {
                  v11 = v9;
                }

                if (v11 <= v8)
                {
                  v12 = v8;
                }

                else
                {
                  v12 = v11;
                }

                result = re::DynamicArray<float *>::setCapacity((v3 + 224), v12);
              }

              else
              {
                result = re::DynamicArray<float *>::setCapacity((v3 + 224), v8);
                ++*(v3 + 248);
              }
            }

            v7 = *(v3 + 240);
          }

          *(*(v3 + 256) + 8 * v7) = v2;
          *(v3 + 240) = v7 + 1;
          ++*(v3 + 248);
        }
      }
    }
  }

  return result;
}

uint64_t re::ecs2::NetworkSendSystem::writeEntity(re::ecs2::NetworkSendSystem *this, re::snapshot::EncoderRaw *a2, re::ecs2::NetworkComponent *a3, const re::ecs2::LocalComponentInfo *a4, int a5)
{
  v59 = *MEMORY[0x1E69E9840];
  v10 = 6;
  if ((*(a4 + 2) & 0x4000) != 0)
  {
    v10 = 2;
  }

  v50 = *(a4 + v10);
  v11 = *(a3 + 2);
  *buf = *(v11 + 312);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
  *buf = *(a3 + 119);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 4uLL);
  v12 = *(a4 + 2);
  v51 = a5 | ((v12 & 0x4000) >> 14);
  if (v51)
  {
    v13 = 2;
  }

  else
  {
    v13 = 0;
  }

  v14 = v13 & 0xFFFFFFFE | (v12 >> 13) & 1;
  buf[0] = v14;
  is_enabled = re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 1uLL);
  if (v14)
  {
    buf[0] = (*(v11 + 304) & 8) != 0;
    re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 1uLL);
    if (*(a3 + 473) != 1 && (v16 = *(v11 + 32)) != 0 && *(v16 + 216))
    {
      *buf = *(v16 + 312);
    }

    else
    {
      *buf = 0;
    }

    re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
    buf[0] = *(a3 + 432);
    re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 1uLL);
    v17 = strlen(*(v11 + 296));
    re::snapshot::EncoderRaw::serializeString(a2, *(v11 + 296), v17);
    is_enabled = kdebug_is_enabled();
    if (is_enabled)
    {
      re::packCharArrayToUInt64ForAriadne(*(*(a3 + 2) + 296), 0);
      is_enabled = kdebug_trace();
    }
  }

  v18 = 2;
  if ((*(a4 + 2) & 0x4000) == 0)
  {
    v18 = 6;
  }

  v19 = *(a4 + v18);
  if (v19)
  {
    v20 = *(a4 + 1);
    v21 = &v20[v19];
    v22 = xmmword_1E306AC00;
    do
    {
      v23 = *v20;
      v24 = *(this + 33);
      if (*(v24 + 2920) > v23 && (v25 = *(*(v24 + 2936) + 8 * v23)) != 0)
      {
        v26 = *(v11 + 98);
        if (!*(v11 + 98))
        {
          goto LABEL_31;
        }

        v27 = v25 + 8;
        v28 = *(v11 + 104);
        v29 = vld1q_dup_s16(v27);
        v30 = 1;
        while (1)
        {
          v31 = vandq_s8(vceqq_s16(v29, *v28), v22);
          v31.i16[0] = vmaxvq_u16(v31);
          if (v31.i32[0])
          {
            break;
          }

          v30 -= 8;
          ++v28;
          if (!--v26)
          {
            goto LABEL_31;
          }
        }

        if (v31.u16[0] - v30 < *(v11 + 96))
        {
          v33 = re::ecs2::EntityComponentCollection::get((v11 + 48), v25);
          *buf = *((*(*v33 + 40))(v33) + 24) >> 1;
          re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
          is_enabled = re::NetworkSystem::encodeComponent(*(this + 33), a2, v33);
          if ((is_enabled & 1) == 0)
          {
            v34 = *re::ecsNetworkLogObjects(is_enabled);
            is_enabled = os_log_type_enabled(v34, OS_LOG_TYPE_ERROR);
            if (is_enabled)
            {
              v35 = *((*(*v33 + 40))(v33) + 32);
              v36 = *(v11 + 296);
              v37 = *(v11 + 312);
              *buf = 136315650;
              *&buf[4] = v35;
              v53 = 2080;
              v54 = v36;
              v55 = 2048;
              v56 = v37;
              _os_log_error_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_ERROR, "[NetworkComponent] Failed to serialize component %s for entity %s(%llu)", buf, 0x20u);
            }
          }
        }

        else
        {
LABEL_31:
          v38 = *re::ecsNetworkLogObjects(is_enabled);
          is_enabled = os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT);
          if (is_enabled)
          {
            v39 = *(v11 + 296);
            v40 = *(v11 + 312);
            v41 = *(v25 + 4);
            *buf = 136315906;
            *&buf[4] = v39;
            v53 = 2048;
            v54 = v40;
            v55 = 2080;
            v56 = v41;
            v57 = 1024;
            v58 = v23;
            _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "[NetworkComponent] Entity %s(%llu) no longer has component of type %s(shortID == %d)", buf, 0x26u);
          }
        }
      }

      else
      {
        v32 = *re::ecsNetworkLogObjects(is_enabled);
        is_enabled = os_log_type_enabled(v32, OS_LOG_TYPE_FAULT);
        if (is_enabled)
        {
          *buf = 67109120;
          *&buf[4] = v23;
          _os_log_fault_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_FAULT, "[NetworkComponent] No componentType for localID %d", buf, 8u);
        }
      }

      ++v20;
      v22 = xmmword_1E306AC00;
    }

    while (v20 != v21);
  }

  *buf = 0;
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
  if ((v51 & 1) == 0)
  {
    v43 = re::ecs2::LocalComponentInfo::removed((a3 + 112), v42);
    if (v44)
    {
      v45 = v43;
      v46 = 2 * v44;
      do
      {
        v47 = *v45++;
        *buf = *(*(*(*(this + 33) + 2936) + 8 * v47) + 24) >> 1;
        re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
        v46 -= 2;
      }

      while (v46);
    }
  }

  *buf = 0;
  re::snapshot::BufferEncoder::writeRaw<true>(a2, buf, 8uLL);
  *(a3 + 59) = 0;
  *(a3 + 58) &= 0x9FFFu;
  re::ecs2::LocalComponentInfo::clearRemoved((a3 + 112), v48);
  return v50;
}

uint64_t re::ecs2::LocalComponentInfo::removed(re::ecs2::LocalComponentInfo *this, uint64_t a2)
{
  v4 = *(this + 1);
  if (v4 <= *this)
  {
    return *(this + 1) + 2 * v4;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_live <= m_count", "removed", 203, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

void re::ecs2::NetworkSendSystem::buildComponentSnapshot(uint64_t a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  re::ecs2::NetworkComponent::getComponentBoundTo(&v15, a2);
  v2 = v15;
  if (v15)
  {
    v3 = re::ecs2::IntrospectedNetworkTypeHelper::serialize();
    if (v3)
    {
      if ((*(*v2 + 40))(v2) == re::ecs2::ComponentImpl<re::ecs2::LatencyEventsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType && kdebug_is_enabled())
      {
        kdebug_trace();
      }

      if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        v4 = (*(*v2 + 40))(v2);
        re::packCharArrayToUInt64ForAriadne(*(v4 + 32), 0);
        kdebug_trace();
      }

      if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        v5 = v2[2];
        v6 = *(v5 + 216);
        if (v6)
        {
          v7 = re::ecs2::NetworkComponent::owningProcessType(*(v5 + 216));
          if (v7)
          {
            v8 = v7;
            v9 = *(v6 + 432) ? "Remote" : "Local";
            v10 = (*(v6 + 432) == 1 ? "Shared" : v9);
            re::packCharArrayToUInt64ForAriadne(v10, 0);
            if (re::internal::enableSignposts(0, 0))
            {
              if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
              {
                v11 = (*(*v2 + 40))(v2);
                re::packCharArrayToUInt64ForAriadne(*(v11 + 32), 0);
                if (v8 == 1)
                {
                  v12 = "Local";
                }

                else
                {
                  v12 = "Remote";
                }

                re::packCharArrayToUInt64ForAriadne(v12, 0);
                kdebug_trace();
              }
            }
          }
        }
      }
    }

    else
    {
      v13 = *re::ecsNetworkLogObjects(v3);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
      {
        v14 = *((*(*v2 + 40))(v2) + 32);
        *buf = 136380675;
        v17 = v14;
        _os_log_fault_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_FAULT, "Failed to serialize component of type '%{private}s'", buf, 0xCu);
      }
    }
  }
}

uint64_t re::ecs2::NetworkComponent::findSyncService(re::ecs2::NetworkComponent *this)
{
  v1 = *(this + 2);
  if (!v1)
  {
    return 0;
  }

  v3 = (v1 + 8);
  v4 = v1;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  if (v6 && *(v6 + 56) && (v7 = *(this + 7)) != 0)
  {
    v8 = *(v7 + 2560);
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

BOOL re::ecs2::NetworkComponent::shouldCaptureForSnapshot(re::ecs2::NetworkComponent *this)
{
  if (*(this + 48) & 1) != 0 || (*(this + 50))
  {
    return 1;
  }

  v1 = *(this + 74);
  v2 = (v1 & 1) != 0 ? (this + 304) : *(this + 39);
  for (i = 0; ; i += v6.u32[0])
  {
    v4 = this + 304;
    if ((v1 & 1) == 0)
    {
      v4 = *(this + 39);
    }

    if (v2 == &v4[8 * *(this + 36)])
    {
      break;
    }

    v5 = *v2;
    v2 = (v2 + 8);
    v6 = vcnt_s8(v5);
    v6.i16[0] = vaddlv_u8(v6);
  }

  return i || *(this + 103) != 0;
}

uint64_t re::ecs2::NetworkComponent::isWritable(re::ecs2::NetworkComponent *this)
{
  if (*(this + 4) && (RESyncableIsAuthoritative() & 1) == 0)
  {
    return RESyncableIsLocked() ^ 1;
  }

  else
  {
    return 1;
  }
}

re::ecs2::NetworkComponent *re::ecs2::NetworkComponent::requestOwnership(re::ecs2::NetworkComponent *this, BOOL a2, const void *a3, double a4)
{
  if (*(this + 4))
  {
    this = re::ecs2::NetworkComponent::findSyncService(this);
    if (this)
    {
      v5.n128_f64[0] = a4;

      return MEMORY[0x1EEE31548](v5);
    }
  }

  return this;
}

void re::ecs2::NetworkComponent::handOff(re::ecs2::NetworkComponent *this)
{
  if (*(this + 4))
  {
    RESyncableHandoffOwnership();

    re::ecs2::NetworkComponent::markEntityDirty(this, 3);
  }
}

void re::ecs2::NetworkComponent::markEntityDirty(re::ecs2::NetworkComponent *this, re::ecs2::NetworkComponent *a2)
{
  if ((*(this + 49) & 1) == 0)
  {
    if (a2)
    {
      *(this + 58) |= 0x2000u;
    }

    *(this + 48) |= (a2 & 2) >> 1;
    v3 = *(this + 7);
    if (v3)
    {

      re::Event<re::NetworkSystem,re::ecs2::Entity *>::raise(v3 + 616, v3);
    }
  }
}

void anonymous namespace::addToSystemDirtySet(_anonymous_namespace_ *this, re::NetworkSystem *a2, re::ecs2::NetworkComponent *a3)
{
  if (this)
  {
    v3 = a3;
    if (a2)
    {
      v6 = a2 + 8;
      if ((v3 & 1) == 0)
      {
        if ((v3 & 2) == 0)
        {
LABEL_21:

          return;
        }

        v10 = a2;
        goto LABEL_15;
      }

      v11 = a2;
      v7 = a2 + 8;
    }

    else
    {
      if ((a3 & 1) == 0)
      {
        if ((a3 & 2) == 0)
        {
          return;
        }

        v10 = 0;
        goto LABEL_16;
      }

      v11 = 0;
    }

    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(this + 2584, &v11);
    if (v11)
    {

      v11 = 0;
    }

    if ((v3 & 2) == 0)
    {
LABEL_20:
      if (!a2)
      {
        return;
      }

      goto LABEL_21;
    }

    v10 = a2;
    if (!a2)
    {
LABEL_16:
      v9 = 2632;
      if (!*(a2 + 4))
      {
        v9 = 2680;
      }

      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(this + v9, &v10);
      if (v10)
      {

        v10 = 0;
      }

      goto LABEL_20;
    }

LABEL_15:
    v8 = a2 + 8;
    goto LABEL_16;
  }
}

uint64_t re::ecs2::NetworkComponent::isDirty(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  if (re::ecs2::NetworkComponent::isLocalDirty(this, a2))
  {
    return 1;
  }

  v5 = (*(*a2 + 40))(a2);

  return re::ecs2::RemoteComponentInfo::isDirty((this + 144), v5);
}

uint64_t re::ecs2::NetworkComponent::isLocalDirty(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  if (re::NetworkSystemFeatureFlags::enableAltSharedApp(this))
  {
    v4 = (*(*a2 + 40))(a2);
    if ((*(this + 58) & 0x80000000) == 0 || !*(this + 56))
    {
      return 0;
    }

    v7 = (v4 + 16);
    v8 = vld1q_dup_s16(v7);
    v9 = *(this + 15);
    v10 = 1;
    while (1)
    {
      v11 = vandq_s8(vceqq_s16(*v9, v8), xmmword_1E306AC00);
      v11.i16[0] = vmaxvq_u16(v11);
      if (v11.i32[0])
      {
        break;
      }

      ++v9;
      v10 -= 8;
      if (8 * ((*(this + 56) + 7) >> 3) + v10 == 1)
      {
        return 0;
      }
    }

    return v11.u16[0] - v10 >= 0 && v11.u16[0] - v10 < *(this + 59);
  }

  else
  {
    v6 = (*(*a2 + 40))(a2);

    return re::ecs2::RemoteComponentInfo::isDirty((this + 144), v6);
  }
}

void re::ecs2::NetworkComponent::createSyncObjectForLocalComponent(uint64_t *a1, re::NetworkSystem **a2, _anonymous_namespace_ *this)
{
  v15 = *MEMORY[0x1E69E9840];
  {
    goto LABEL_11;
  }

  *buf = *((*(*this + 40))(this) + 16);
  if (re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains((a2 + 42), buf))
  {
    goto LABEL_11;
  }

  re::ecs2::NetworkComponent::findSyncService(a2);
  (*(*this + 40))(this);
  if (!RESyncServiceGetTypeInfo())
  {
    re::NetworkSystem::prepareObjectStores(a2[7]);
    (*(*this + 40))(this);
    if (!RESyncServiceGetTypeInfo())
    {
      v7 = *re::ecsNetworkLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *((*(*this + 40))(this) + 24) >> 1;
        v9 = *((*(*this + 40))(this) + 32);
        *buf = 134218243;
        v12 = v8;
        v13 = 2081;
        v14 = v9;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "[NetworkComponent] No storage has been registered for component type %llu(%{private}s).", buf, 0x16u);
      }

      goto LABEL_11;
    }
  }

  if ((RESyncSyncableTypeInfoSupportsNetworkSync() & 1) == 0)
  {
LABEL_11:
    *a1 = 0;
    return;
  }

  SyncableWithTypeInfo = RESyncServiceCreateSyncableWithTypeInfo();
  *a1 = SyncableWithTypeInfo;
  MEMORY[0x1E6905A30]();
  v10 = SyncableWithTypeInfo;
  if (SyncableWithTypeInfo)
  {
    RESyncRetain();
    re::ecs2::NetworkComponent::bindComponentToSyncable(a2, this, &v10);
    RESyncRelease();
  }

  else
  {
    re::ecs2::NetworkComponent::bindComponentToSyncable(a2, this, &v10);
  }
}

uint64_t anonymous namespace::supportsNetworkSync(_anonymous_namespace_ *this, const re::ecs2::Component *a2)
{
  v2 = (*(*this + 40))(this, a2);
  if (!(*(*v2 + 64))(v2))
  {
    return 1;
  }

  return RESyncSyncableTypeInfoSupportsNetworkSync();
}

void re::ecs2::NetworkComponent::markDirty(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((*(this + 49) & 1) == 0)
  {
    {
      LOWORD(v13) = *((*(*a2 + 40))(a2) + 16);
      if (!re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(this + 336, &v13))
      {
        v4 = (*(*a2 + 40))(a2);
        if (*(this + 58) < 0)
        {
          v5 = re::ecs2::LocalComponentInfo::markDirty((this + 112), *(v4 + 16));
          if ((v5 & 1) == 0)
          {
            v6 = *re::ecsNetworkLogObjects(v5);
            if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
            {
              v7 = *((*(*a2 + 40))(a2) + 32);
              v8 = *((*(*a2 + 40))(a2) + 16);
              v9 = *(*(this + 2) + 296);
              v13 = 136315650;
              v14 = v7;
              v15 = 1024;
              v16 = v8;
              v17 = 2080;
              v18 = v9;
              _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "[NetworkComponent::markDirty] m_localInfo.markDirty(%s/%d) failed for %s.", &v13, 0x1Cu);
            }
          }
        }

        if (*(this + 4))
        {
          v10 = (*(*a2 + 40))(a2);
          re::ecs2::RemoteComponentInfo::markDirty(this + 144, *(v10 + 16));
        }

        if (*(this + 7))
        {
          v11 = *(a2 + 2);
          v12 = (*(*a2 + 40))(a2);
          re::ecs2::EntityComponentCollection::get((v11 + 48), v12);
          re::Event<re::NetworkSystem,re::ecs2::Component *>::raise(*(this + 7) + 880, *(this + 7));
        }
      }
    }
  }
}

BOOL re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::contains(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v3) ^ ((0xBF58476D1CE4E5B9 * v3) >> 27));
  v5 = *(*(a1 + 8) + 4 * ((v4 ^ (v4 >> 31)) % v2));
  if (v5 == 0x7FFFFFFF)
  {
    return 0;
  }

  v7 = *(a1 + 16);
  if (*(v7 + 16 * v5 + 12) == v3)
  {
    return 1;
  }

  do
  {
    v5 = *(v7 + 16 * v5 + 8) & 0x7FFFFFFF;
    result = v5 != 0x7FFFFFFF;
  }

  while (v5 != 0x7FFFFFFF && *(v7 + 16 * v5 + 12) != v3);
  return result;
}

void re::ecs2::NetworkComponent::disableSyncForComponent(re::ecs2::NetworkComponent *this, const re::ecs2::Component *a2)
{
  v21 = *((*(*a2 + 40))(a2) + 16);
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v21) ^ ((0xBF58476D1CE4E5B9 * v21) >> 27));
  v5 = v4 ^ (v4 >> 31);
  v6 = *(this + 90);
  if (v6)
  {
    v7 = v5 % v6;
    v8 = *(*(this + 43) + 4 * (v5 % v6));
    if (v8 != 0x7FFFFFFF)
    {
      v9 = *(this + 44);
      if (*(v9 + 16 * v8 + 12) == v21)
      {
        goto LABEL_9;
      }

      while (1)
      {
        v8 = *(v9 + 16 * v8 + 8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v9 + 16 * v8 + 12) == v21)
        {
          goto LABEL_9;
        }
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  re::HashSetBase<unsigned short,unsigned short,re::internal::ValueAsKey<unsigned short>,re::Hash<unsigned short>,re::EqualTo<unsigned short>,true,false>::addAsCopy(this + 336, v7, v5, &v21, &v21);
  ++*(this + 94);
LABEL_9:
  v10 = (*(*a2 + 40))(a2);
  if (*(this + 58) < 0)
  {
    re::ecs2::LocalComponentInfo::remove((this + 112), *(v10 + 16));
  }

  if (*(this + 4))
  {
    if (RESyncableIsAuthoritative())
    {
      v11 = (*(*a2 + 40))(a2);
      v12 = re::ecs2::RemoteComponentInfo::get((this + 144), *(v11 + 16));
      if (v12)
      {
        v13 = v12;
        re::ecs2::NetworkComponent::unbindComponentFromSyncable(this, a2, v12);
        v20 = v13;
        RESyncRetain();
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
        v15 = v14 ^ (v14 >> 31);
        v16 = *(this + 102);
        if (v16)
        {
          v17 = v15 % v16;
          v18 = *(*(this + 49) + 4 * (v15 % v16));
          if (v18 != 0x7FFFFFFF)
          {
            v19 = *(this + 50);
            if (*(v19 + 24 * v18 + 16) == v13)
            {
LABEL_23:
              RESyncRelease();
LABEL_24:
              return;
            }

            while (1)
            {
              LODWORD(v18) = *(v19 + 24 * v18 + 8) & 0x7FFFFFFF;
              if (v18 == 0x7FFFFFFF)
              {
                break;
              }

              if (*(v19 + 24 * v18 + 16) == v13)
              {
                goto LABEL_22;
              }
            }
          }
        }

        else
        {
          LODWORD(v17) = 0;
        }

        re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(this + 384, v17, v15, &v20);
        ++*(this + 106);
        v13 = v20;
LABEL_22:
        if (!v13)
        {
          goto LABEL_24;
        }

        goto LABEL_23;
      }
    }
  }
}

void re::ecs2::NetworkComponent::setNetworkShareMode(re::ecs2::NetworkComponent *a1, int a2)
{
  if (*(a1 + 432) != a2)
  {
    *(a1 + 432) = a2;
    re::ecs2::NetworkComponent::markEntityDirty(a1, 3);
    re::ecs2::NetworkComponent::resolveViews(a1, 0);

    re::ecs2::NetworkComponent::resolveLocalViews(a1, 0);
  }
}

void re::ecs2::NetworkComponent::resolveLocalViews(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 56);
  if (!a2)
  {
    if (v3)
    {
      v35 = a1;
      v10 = (a1 + 8);
      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v3 + 2808, &v35);
      v9 = v35;
      if (v35)
      {
        goto LABEL_13;
      }
    }

    return;
  }

  if (!v3 || (v5 = re::NetworkSystemFeatureFlags::enableAltSharedApp(a1), !v5) || (v6 = *(a1 + 16)) == 0)
  {
    v30 = a1;
LABEL_8:
    v8 = (a1 + 8);
    goto LABEL_9;
  }

  v30 = 0;
  v31 = 0;
  v32 = 1;
  v33 = 0;
  v34 = 0;
  if (*(a1 + 88))
  {
    v7 = (a1 + 96);
  }

  else
  {
    v7 = *(a1 + 104);
  }

  v11 = *(a1 + 80);
  v12 = *(v6 + 32);
  if (v12 && (*(v12 + 304) & 0x80) == 0)
  {
    if (*(a1 + 473))
    {
      goto LABEL_60;
    }

    v13 = *(v12 + 216);
    if (v13)
    {
      if (*(v13 + 88))
      {
        v7 = (v13 + 96);
      }

      else
      {
        v7 = *(v13 + 104);
      }

      v11 = *(v13 + 80);
      if (*(v13 + 32))
      {
        OwnerPeerID = RESyncableGetOwnerPeerID();
      }

      else
      {
        OwnerPeerID = *(v13 + 64);
      }
    }

    else
    {
      OwnerPeerID = 0;
      v7 = 0;
      v11 = 0;
    }

    goto LABEL_61;
  }

  if (*(a1 + 473))
  {
    goto LABEL_60;
  }

  v15 = *(a1 + 56);
  v16 = *(v15 + 3072);
  if (v16)
  {
    v17 = 0;
    v18 = *(v15 + 3056);
    while ((*v18 & 0x80000000) == 0)
    {
      v18 += 82;
      if (v16 == ++v17)
      {
        LODWORD(v17) = *(v15 + 3072);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  v7 = &v33;
  if (v17 == v16)
  {
    v11 = 0;
    goto LABEL_60;
  }

  v11 = 0;
  v19 = 1;
  do
  {
    v20 = *(v15 + 3056);
    if (v30)
    {
      if ((v19 & 1) == 0)
      {
        v21 = v11 + 1;
        if (v11 < v33 || v33 >= v21)
        {
          goto LABEL_49;
        }

        v23 = 2 * v33;
        goto LABEL_45;
      }

      v21 = v11 + 1;
      if (v11 + 1 >= 5)
      {
        v23 = 8;
LABEL_45:
        if (v23 <= v21)
        {
          v24 = v21;
        }

        else
        {
          v24 = v23;
        }

        v5 = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(&v30, v24);
        v19 = v32;
      }
    }

    else
    {
      v5 = re::DynamicOverflowArray<re::internal::TimelineTreeInfo const*,4ul>::setCapacity(&v30, v11 + 1);
      v19 = v32 + 2;
      v32 += 2;
    }

LABEL_49:
    v25 = (v19 & 1) == 0;
    v26 = v34;
    v27 = v31;
    if (!v25)
    {
      v26 = &v33;
    }

    v26[v31] = *(v20 + 328 * v17 + 16);
    v11 = v27 + 1;
    v31 = v27 + 1;
    v28 = v32 & 1;
    v19 = v32 + 2;
    v32 += 2;
    v29 = *(v15 + 3072);
    if (v29 <= v17 + 1)
    {
      v29 = v17 + 1;
    }

    while (v29 - 1 != v17)
    {
      LODWORD(v17) = v17 + 1;
      if ((*(*(v15 + 3056) + 328 * v17) & 0x80000000) != 0)
      {
        goto LABEL_57;
      }
    }

    LODWORD(v17) = v29;
LABEL_57:
    ;
  }

  while (v17 != v16);
  if (!v28)
  {
    v7 = v34;
  }

LABEL_60:
  OwnerPeerID = 0;
LABEL_61:
  re::ecs2::NetworkComponent::resolveLocalViews(a1, a2, v7, v11, OwnerPeerID);
  if (v30)
  {
    if ((v32 & 1) == 0)
    {
      (*(*v30 + 40))();
    }
  }

  v30 = a1;
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:
  re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(a2, &v30);
  v9 = v30;
  if (!v30)
  {
    return;
  }

LABEL_13:
}

void re::ecs2::NetworkComponent::setHost(re::ecs2::NetworkComponent *this, re::ecs2::Entity *a2)
{
  v3 = a2 != 0;
  v4 = *(this + 2);
  v5 = *(v4 + 4);
  if (v5 && (*(v5 + 304) & 0x80) != 0)
  {
    v5 = 0;
  }

  if (v5 != a2 || *(this + 473) != v3)
  {
    *(this + 473) = v3;
    re::ecs2::Entity::setParentInternal(v4, a2, 0xFFFFFFFFFFFFFFFFLL);

    re::ecs2::NetworkComponent::markEntityDirty(this, 3);
  }
}