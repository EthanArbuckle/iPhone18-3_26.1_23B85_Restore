void ___ZN2re19CARESortingDefaults28enableDrawLayerSortingGroupsEv_block_invoke(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("CAREEnableDrawLayerSortingGroups", a2, &v6);
  if (v6)
  {
    v3 = BYTE1(v6);
  }

  else
  {
    v3 = 0;
  }

  re::gEnableDrawLayerSortingGroups = v3;
  v4 = *re::sortingLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    if (re::gEnableDrawLayerSortingGroups)
    {
      v5 = "enabled";
    }

    else
    {
      v5 = "disabled";
    }

    v6 = 136315138;
    v7 = v5;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "DrawLayerSortingGroups is now %s.", &v6, 0xCu);
  }
}

void *re::ecs2::allocInfo_SubsceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A6768, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6768))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6780, "SubsceneComponent");
    __cxa_guard_release(&qword_1EE1A6768);
  }

  return &unk_1EE1A6780;
}

void re::ecs2::initInfo_SubsceneComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x88FEEDB7C0BE1FE2;
  v14[1] = "SubsceneComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&_MergedGlobals_231, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_231);
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
      qword_1EE1A6770 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_subscene";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A6778 = v12;
      __cxa_guard_release(&_MergedGlobals_231);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A6770;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SubsceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SubsceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SubsceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SubsceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217SubsceneComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::SubsceneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE2A20;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::SubsceneComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::SubsceneComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE2A20;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::SubsceneComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

uint64_t re::ecs2::SubsceneComponent::setSubscene(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 16);
  (*(*(v4 + 40) + 16))();
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v4 + 328);
  result = re::AssetHandle::operator=(a1 + 32, a2);
  v7 = *(a1 + 40);
  if (v7)
  {
    v8 = atomic_load((v7 + 896));
    if (v8 == 2)
    {
      v9 = *(a1 + 40);
      if (v9)
      {
        v10 = *(v9 + 24);
      }

      else
      {
        v10 = 0;
      }

      result = re::ecs2::ECSSerialization::loadFromAsset(v4, v10, (a1 + 32), v6);
      *(a1 + 25) = 1;
    }
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs217SubsceneComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_LinkedTLEComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_232, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_232))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6828, "LinkedTLEComponent");
    __cxa_guard_release(&_MergedGlobals_232);
  }

  return &unk_1EE1A6828;
}

void re::ecs2::initInfo_LinkedTLEComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x181663CBD41226D2;
  v10[1] = "LinkedTLEComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A6820, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6820);
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
      qword_1EE1A6818 = v8;
      __cxa_guard_release(&qword_1EE1A6820);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A6818;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::LinkedTLEComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::LinkedTLEComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::LinkedTLEComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::LinkedTLEComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218LinkedTLEComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::LinkedTLEComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE5630;
}

void re::internal::defaultConstructV2<re::ecs2::LinkedTLEComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE5630;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218LinkedTLEComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_ColliderComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_233, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_233))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A68F8, "ColliderComponent");
    __cxa_guard_release(&_MergedGlobals_233);
  }

  return &unk_1EE1A68F8;
}

void re::ecs2::initInfo_ColliderComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v30[0] = 0x92DE29B139D12E92;
  v30[1] = "ColliderComponent";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1A68C0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A68C0);
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
      qword_1EE1A68C8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "shape";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A68D0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_CollisionObjectType(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "type";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A68D8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint32_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "group";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x4000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A68E0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_uint32_t(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "mask";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x4400000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A68E8 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_uint32_t(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "interactionType";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x3C00000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1A68F0 = v28;
      __cxa_guard_release(&qword_1EE1A68C0);
    }
  }

  *(this + 2) = 0xA800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A68C8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ColliderComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ColliderComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ColliderComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ColliderComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217ColliderComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v29 = v31;
}

void re::ecs2::ColliderComponent::removeFromSimulation(re::ecs2::ColliderComponent *this)
{
  v10[4] = *MEMORY[0x1E69E9840];
  if (*(this + 12))
  {
    WeakRetained = objc_loadWeakRetained(this + 20);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v4 = *(this + 12);
      v5 = *(this + 13);
      v10[0] = &unk_1F5CEDED0;
      v10[1] = v5;
      v10[3] = v10;
      v9[3] = v9;
      v8 = v4;
      v9[0] = &unk_1F5CEDED0;
      v9[1] = v5;
      std::__function::__value_func<void ()(re::CollisionObject *)>::~__value_func[abi:nn200100](v10);
      std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::operator=[abi:nn200100](this + 15, &v8);
      std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::~unique_ptr[abi:nn200100](&v8);
      v6 = v3[6];
      v7 = *(this + 12);
      re::ContactSetCollection::remove((*(v6 + 128) + 72), v7);
      (*(**(v6 + 128) + 200))(*(v6 + 128), v7);
      *(v7 + 7) = 0;
      objc_destroyWeak(this + 20);
      *(this + 20) = 0;
    }

    *(this + 12) = 0;
  }
}

re::CollisionObject **re::ecs2::ColliderComponent::setUnmanagedCollisionObject(re::CollisionObject **this, re::CollisionObject *a2)
{
  if (this[12] != a2)
  {
    v4 = this;
    re::ecs2::ColliderComponent::removeFromSimulation(this);
    v4[12] = a2;

    return re::AssetHandle::operator=((v4 + 9), v4 + 4);
  }

  return this;
}

uint64_t *std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::CollisionObject *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>(re::CollisionShapeAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::CollisionShapeAsset::assetType(a1);
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

BOOL re::ecs2::ColliderComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v50, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v49[0] = v12, (v49[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v46, a5, 0);
    v15 = v46;
    v14 = v47;
    v46 = a4;
    v47 = v15;
    v48 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v46);
        v17 = v16;
        v18 = *(v16 + 2);
        v19 = *(v18 + 98);
        if (!*(v18 + 98))
        {
          goto LABEL_19;
        }

        v20 = (re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v21 = *(v18 + 104);
        v22 = vld1q_dup_s16(v20);
        v23 = 1;
        v24 = v21;
        v25 = *(v18 + 98);
        while (1)
        {
          v26 = vandq_s8(vceqq_s16(v22, *v24), xmmword_1E306AC00);
          v26.i16[0] = vmaxvq_u16(v26);
          if (v26.i32[0])
          {
            break;
          }

          v23 -= 8;
          ++v24;
          if (!--v25)
          {
            goto LABEL_12;
          }
        }

        if (v26.u16[0] - v23 < *(v18 + 96))
        {
          v27 = v46;
          v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v47);
          v29 = *(a3 + 16);
          v30 = *(a3 + 32);
          goto LABEL_35;
        }

LABEL_12:
        v31 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
        v32 = vld1q_dup_s16(v31);
        v33 = 1;
        while (1)
        {
          v34 = vandq_s8(vceqq_s16(v32, *v21), xmmword_1E306AC00);
          v34.i16[0] = vmaxvq_u16(v34);
          if (v34.i32[0])
          {
            break;
          }

          v33 -= 8;
          ++v21;
          if (!--v19)
          {
            goto LABEL_19;
          }
        }

        if (v34.u16[0] - v33 < *(v18 + 96))
        {
          v35 = *re::ecsComponentsLogObjects(v16);
          if (os_log_type_enabled(v35, OS_LOG_TYPE_ERROR))
          {
            v45 = 0;
            _os_log_error_impl(&dword_1E1C61000, v35, OS_LOG_TYPE_ERROR, "Collider component cannot exist on the same entity that contains a character controller component. Deactivating collider component.", &v45, 2u);
          }
        }

        else
        {
LABEL_19:
          v36 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v49, v18);
          if (v36)
          {
            v37 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v36);
          }

          else
          {
            v37 = 0;
          }

          if ((*(v18 + 304) & 1) != 0 && *(v17 + 5) && v37 != 0)
          {
            WeakRetained = objc_loadWeakRetained(v17 + 20);
            if (WeakRetained)
            {
              v42 = WeakRetained - 8;
            }

            else
            {
              v42 = 0;
            }

            if (v42 != v37)
            {
              re::ecs2::ColliderComponent::removeFromSimulation(v17);
            }

            v27 = v46;
            v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v47);
            v29 = *(a3 + 16);
            v30 = *(a3 + 40);
LABEL_35:
            re::ecs2::ComponentBucketsBase::moveComponent(v29, v27, v28, v30);
            goto LABEL_36;
          }
        }

        v39 = v46;
        v40 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v47);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v39, v40, *(a3 + 32));
        re::ecs2::ColliderComponent::removeFromSimulation(v17);
LABEL_36:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v47);
      }

      while (v47 != a5 || v48 != 0xFFFF || HIWORD(v48) != 0xFFFF);
    }

    v43 = *(a5 + 40) != 0;
  }

  else
  {
    v43 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
  return v43;
}

BOOL re::ecs2::ColliderComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v53, 3047, a1);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (!v9 || (v10 = v9, v11 = a3[1], v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v52[0] = v12, (v52[1] = v13) == 0))
  {
    v14 = 0;
    goto LABEL_7;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v49 = a4;
  v50 = *buf;
  v51 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v49);
      v17 = v16;
      v18 = *(v16 + 40);
      if (!v18 || (v19 = *(v16 + 16), v20 = atomic_load((v18 + 896)), v20 != 2))
      {
        re::AssetHandle::loadAsync((v16 + 32));
        re::ecs2::ColliderComponent::removeFromSimulation(v17);
        goto LABEL_30;
      }

      v21 = *(v16 + 96);
      if (v21)
      {
        v22 = *(v21 + 88);
        if (*(v16 + 80) == *(v16 + 40) && v22 == *(v16 + 60))
        {
          goto LABEL_28;
        }
      }

      v24 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v52, *(v16 + 16));
      re::TransformService::worldMatrix(v24->i64[1], v19, 0, buf);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v24, buf, v48);
      v55 = xmmword_1E30474D0;
      *buf = 0u;
      v54 = 0u;
      v25 = re::decomposeScaleRotationTranslation<float>(v48, buf, &v55, &v54);
      v26 = v54;
      v27 = v55;
      v28 = vmulq_f32(v55, v55);
      v29 = vaddv_f32(vadd_f32(*v28.i8, *&vextq_s8(v28, v28, 8uLL)));
      if (v29 != 1.0 && fabsf(v29 + -1.0) > 0.00001)
      {
        v30 = *re::ecsComponentsLogObjects(v25);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v30, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (Collider). Skipping.", buf, 2u);
        }

        re::ecs2::ColliderComponent::removeFromSimulation(v17);
        v31 = v49;
        v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v50);
        v33 = a3[2];
        v34 = a3[4];
        goto LABEL_29;
      }

      v47 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v24);
      re::ecs2::ColliderComponent::removeFromSimulation(v17);
      v36 = *(re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>((v17 + 32)) + 8);
      re::AssetHandle::operator=(v17 + 72, (v17 + 32));
      v37 = v36;
      v38 = *(v17 + 120);
      v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
      v40 = 0xBF58476D1CE4E5B9 * (*(v17 + 60) ^ (*(v17 + 60) >> 30));
      v41 = (((v39 ^ (v39 >> 31)) << 6) + ((v39 ^ (v39 >> 31)) >> 2) + ((0x94D049BB133111EBLL * (v40 ^ (v40 >> 27))) ^ ((0x94D049BB133111EBLL * (v40 ^ (v40 >> 27))) >> 31)) - 0x61C8864680B583E9) ^ v39 ^ (v39 >> 31);
      if (!v38)
      {
        goto LABEL_24;
      }

      v42 = *(v17 + 112);
      *(v17 + 120) = 0;
      if (v41 != v42)
      {
        break;
      }

LABEL_27:
      *(v17 + 96) = v38;
      *(v17 + 112) = v41;
      *(v38 + 40) = *(v17 + 16);
      objc_storeWeak((v17 + 160), (v47 + 8));
      v44 = *(*(v47 + 56) + 128);
      *(*(v17 + 96) + 56) = v44;
      (*(*v44 + 192))(v44);
      re::AssetHandle::operator=(v17 + 72, (v17 + 32));
LABEL_28:
      v31 = v49;
      v32 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v50);
      v33 = a3[2];
      v34 = a3[6];
LABEL_29:
      re::ecs2::ComponentBucketsBase::moveComponent(v33, v31, v32, v34);
LABEL_30:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v50);
      if (v50 == a5 && v51 == 0xFFFF && HIWORD(v51) == 0xFFFF)
      {
        goto LABEL_5;
      }
    }

    v46 = v37;
    std::function<void ()(re::CollisionObject *)>::operator()(v17 + 128, v38);
    v37 = v46;
LABEL_24:
    *buf = v26;
    v57 = v27;
    {
      v45 = v37;
      re::initCollision(0);
      v37 = v45;
    }

    goto LABEL_27;
  }

LABEL_5:
  v14 = *(a5 + 40) != 0;
LABEL_7:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v53);
  return v14;
}

BOOL re::ecs2::ColliderComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v37, 3047, a1);
  v10 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11 && (v12 = v11, v13 = *(a3 + 8), v14 = (*(*v11 + 24))(v11), v15 = (*(*v12 + 40))(v12, v13), v36[0] = v14, (v36[1] = v15) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v41, a5, 0);
    v33 = a4;
    v34 = v41[0].i64[0];
    v35 = v41[0].i32[2];
    if (v41[0].i64[0] != a5 || v41[0].u32[2] != 0xFFFFFFFFLL)
    {
      do
      {
        v20 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v33);
        v21 = *(v20 + 2);
        v22 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v36, v21);
        v23 = v22;
        if (!a6 || re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v22) == a6)
        {
          re::TransformService::worldMatrix(v23->i64[1], v21, 0, v41);
          re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v23, v41, v32);
          v40 = 0u;
          v38 = 0u;
          v39 = xmmword_1E30474D0;
          v24 = re::decomposeScaleRotationTranslation<float>(v32, &v40, &v39, &v38);
          v41[0] = v40;
          v41[1] = v39;
          v41[2] = v38;
          v25 = vmulq_f32(v39, v39);
          v26 = vaddv_f32(vadd_f32(*v25.i8, *&vextq_s8(v25, v25, 8uLL)));
          if (v26 == 1.0 || fabsf(v26 + -1.0) <= 0.00001)
          {
            v32[0] = v38;
            v32[1] = v39;
            v16 = *(*(v20 + 12) + 16);
            v17 = v39;
            v16[1] = v38;
            v16[2] = v17;
            (*(*v16 + 64))(v16, v32);
            re::CollisionObject::setScale(*(v20 + 12), v41);
            v18 = *(v20 + 12);
            v19 = *(v20 + 8);
            if (v18[4] != v19)
            {
              v18[4] = v19;
              (*(*v18 + 80))(v18);
            }
          }

          else
          {
            v27 = *re::ecsComponentsLogObjects(v24);
            if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
            {
              LOWORD(v32[0]) = 0;
              _os_log_error_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (PhysicsSystem_Collider). Skipping.", v32, 2u);
            }

            re::ecs2::ColliderComponent::removeFromSimulation(v20);
            v28 = v33;
            v29 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v34);
            re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v28, v29, *(a3 + 32));
          }
        }

        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v34);
      }

      while (v34 != a5 || v35 != 0xFFFF || HIWORD(v35) != 0xFFFF);
    }

    v30 = *(a5 + 40) != 0;
  }

  else
  {
    v30 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v37);
  return v30;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::ColliderComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    v5 = result;
    v6 = 3;
    v7 = 0xFFFFFFFFLL;
    do
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(a2[2], a2[v6], v5);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        v11 = v8;
        v7 = v9;
        goto LABEL_11;
      }

      ++v6;
    }

    while (v6 != 7);
    v11 = -1;
LABEL_11:

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::ColliderComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::ColliderComponent>(uint64_t a1)
{
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
  *(a1 + 160) = 0;
  v2 = (a1 + 160);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD1300;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
  *(v3 + 60) = 0x100000000;
  *(v3 + 68) = -1;
  *(v3 + 152) = 0;
  *(v3 + 72) = 0u;
  *(v3 + 88) = 0u;
  *(v3 + 104) = 0u;
  *(v3 + 120) = 0;
  objc_initWeak(v2, 0);
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217ColliderComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t std::__function::__func<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1},std::allocator<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1}>,void ()(re::CollisionObject*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CEDED0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1},std::allocator<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1}>,void ()(re::CollisionObject*)>::operator()(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    (**v2)(*a2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1},std::allocator<std::unique_ptr<re::CollisionObject,std::function<void ()(re::CollisionObject*)>> re::toUniquePtr<re::CollisionObject>(re::CollisionObject*,re::Allocator *)::{lambda(re::CollisionObject*)#1}>,void ()(re::CollisionObject*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100](a1);
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

uint64_t std::__function::__value_func<void ()(re::CollisionObject *)>::operator=[abi:nn200100](uint64_t a1)
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

__n128 re::ecs2::VideoProxyComponent::impl::deinitPixelBufferGroup(uint64_t a1, uint64_t a2, int a3)
{
  if (*(a1 + 160))
  {
    re::AssetHandle::mutateAssetCommon((a1 + 152));
    ++*(*(a1 + 160) + 276);
    v6 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>((a1 + 152));
    if (a3)
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      re::VideoAsset::clearFutureUserProvidedVideoPixelBuffers(v6);
    }

    else
    {
      if (!v6)
      {
        goto LABEL_8;
      }

      re::VideoAsset::clearCurrentUserProvidedVideoPixelBuffers(v6);
    }

    v7 = *(a1 + 160);
    *(v7 + 256) = 1;
    re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v7);
    re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(a1 + 160));
  }

LABEL_8:
  if (*a2)
  {
    v8 = 0;
    do
    {
      CVPixelBufferRelease(*(a2 + 8 * v8++ + 16));
    }

    while (v8 < *a2);
  }

  *a2 = 0;
  ++*(a2 + 8);
  v9 = *(a2 + 32);
  if (v9)
  {
    CFRelease(v9);
  }

  *(a2 + 32) = 0;
  v10 = MEMORY[0x1E6960C70];
  result = *MEMORY[0x1E6960C70];
  *(a2 + 44) = *MEMORY[0x1E6960C70];
  *(a2 + 60) = *(v10 + 16);
  return result;
}

uint64_t re::ecs2::VideoProxyComponent::impl::generateAsset(re::ecs2::VideoProxyComponent::impl *this, re::AssetManager *a2)
{
  re::VideoAsset::makeVideoMutableMemoryAsset(v11, a2, a2);
  re::AssetHandle::operator=(this + 152, v11);
  re::AssetHandle::mutateAssetCommon((this + 152));
  ++*(*(this + 20) + 276);
  v3 = re::AssetHandle::blockUntilLoaded<re::VideoAsset>((this + 152));
  if (v3)
  {
    v4 = v3;
    v17 = 0;
    v5 = *(this + 1);
    memcpy(v18, this + 24, 8 * v5);
    v16 = v5;
    v6 = *(this + 56);
    v18[1] = *(this + 40);
    v18[2] = v6;
    v19 = *(this + 18);
    re::VideoAsset::setCurrentUserProvidedVideoPixelBuffers(v4, &v16);
    v16 = 0;
    ++v17;
    v13 = 0;
    v7 = *(this + 10);
    memcpy(v14, this + 96, 8 * v7);
    v12 = v7;
    v8 = *(this + 8);
    v14[1] = *(this + 7);
    v14[2] = v8;
    v15 = *(this + 36);
    re::VideoAsset::setFutureUserProvidedVideoPixelBuffers(v4, &v12);
    *(v4 + 29) = 0;
    v9 = *(this + 20);
    *(v9 + 256) = 1;
    re::internal::AssetEntry::updateMutatedRuntimeAssetSize(v9);
    re::internal::AssetEntry::updateMutatedAssetNonSharedDataSize(*(this + 20));
  }

  re::AssetHandle::payloadDidChangeIfPossible((this + 152));
  re::AssetHandle::~AssetHandle(v11);
  return this + 152;
}

void re::ecs2::VideoProxyComponent::impl::addAttachmentsToVideoComponent(re::ecs2::VideoProxyComponent::impl *this, re::ecs2::VideoComponent *a2)
{
  *&v44.var0 = 0xE7EFB84B1970EB62;
  v44.var1 = "REVideoAttachmentTextureVideoLoading";
  v45 = 0;
  v46 = &str_67;
  v3 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v44);
  if (v45)
  {
    if (v45)
    {
    }
  }

  v45 = 0;
  v46 = &str_67;
  if (*&v44.var0)
  {
    if (*&v44.var0)
    {
    }
  }

  *&v44.var0 = 0;
  v44.var1 = &str_67;
  *&v41.var0 = 0xC49C914A9995F024;
  v41.var1 = "REVideoAttachmentTextureVideoBlur";
  v42 = 0;
  v43 = &str_67;
  v4 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v41);
  if (v42)
  {
    if (v42)
    {
    }
  }

  v42 = 0;
  v43 = &str_67;
  if (*&v41.var0)
  {
    if (*&v41.var0)
    {
    }
  }

  *&v41.var0 = 0;
  v41.var1 = &str_67;
  *&v38.var0 = 0xFFB9D6614348A962;
  v38.var1 = "REVideoAttachmentChannelID1TexturePlane0";
  v39 = 0;
  v40 = &str_67;
  v5 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v38);
  if (v39)
  {
    if (v39)
    {
    }
  }

  v39 = 0;
  v40 = &str_67;
  if (*&v38.var0)
  {
    if (*&v38.var0)
    {
    }
  }

  *&v38.var0 = 0;
  v38.var1 = &str_67;
  *&v35.var0 = 0xFFB9D6614348A964;
  v35.var1 = "REVideoAttachmentChannelID1TexturePlane1";
  v36 = 0;
  v37 = &str_67;
  v6 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v35);
  if (v36)
  {
    if (v36)
    {
    }
  }

  v36 = 0;
  v37 = &str_67;
  if (*&v35.var0)
  {
    if (*&v35.var0)
    {
    }
  }

  *&v35.var0 = 0;
  v35.var1 = &str_67;
  *&v32.var0 = 0xFFB9D6614348A966;
  v32.var1 = "REVideoAttachmentChannelID1TexturePlane2";
  v33 = 0;
  v34 = &str_67;
  v7 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v32);
  if (v33)
  {
    if (v33)
    {
    }
  }

  v33 = 0;
  v34 = &str_67;
  if (*&v32.var0)
  {
    if (*&v32.var0)
    {
    }
  }

  *&v32.var0 = 0;
  v32.var1 = &str_67;
  *&v29.var0 = 0xA572F05B07043CA0;
  v29.var1 = "REVideoAttachmentChannelID2TexturePlane0";
  v30 = 0;
  v31 = &str_67;
  v8 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v29);
  if (v30)
  {
    if (v30)
    {
    }
  }

  v30 = 0;
  v31 = &str_67;
  if (*&v29.var0)
  {
    if (*&v29.var0)
    {
    }
  }

  *&v29.var0 = 0;
  v29.var1 = &str_67;
  *&v26.var0 = 0xA572F05B07043CA2;
  v26.var1 = "REVideoAttachmentChannelID2TexturePlane1";
  v27 = 0;
  v28 = &str_67;
  v9 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v26);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v27 = 0;
  v28 = &str_67;
  if (*&v26.var0)
  {
    if (*&v26.var0)
    {
    }
  }

  *&v26.var0 = 0;
  v26.var1 = &str_67;
  *&v23.var0 = 0xA572F05B07043CA4;
  v23.var1 = "REVideoAttachmentChannelID2TexturePlane2";
  v24 = 0;
  v25 = &str_67;
  v10 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v23);
  if (v24)
  {
    if (v24)
    {
    }
  }

  v24 = 0;
  v25 = &str_67;
  if (*&v23.var0)
  {
    if (*&v23.var0)
    {
    }
  }

  *&v23.var0 = 0;
  v23.var1 = &str_67;
  *&v20.var0 = 0x83807E236D5174B2;
  v20.var1 = "REVideoAttachmentConstantYCbCrMatrix";
  v21 = 0;
  v22 = &str_67;
  v11 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v20);
  if (v21)
  {
    if (v21)
    {
    }
  }

  v21 = 0;
  v22 = &str_67;
  if (*&v20.var0)
  {
    if (*&v20.var0)
    {
    }
  }

  *&v20.var0 = 0;
  v20.var1 = &str_67;
  *&v17.var0 = 0x652E145D102D3908;
  v17.var1 = "REVideoAttachmentConstantImageFunction";
  v18 = 0;
  v19 = &str_67;
  v12 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v17);
  if (v18)
  {
    if (v18)
    {
    }
  }

  v18 = 0;
  v19 = &str_67;
  if (*&v17.var0)
  {
    if (*&v17.var0)
    {
    }
  }

  *&v17.var0 = 0;
  v17.var1 = &str_67;
  *&v14.var0 = 0x963DA5D75AB5D342;
  v14.var1 = "REVideoAttachmentSpill";
  v15 = 0;
  v16 = &str_67;
  v13 = re::DynamicArray<re::ecs2::VideoMaterialAttachment>::add((a2 + 120), &v14);
  if (v15)
  {
    if (v15)
    {
    }
  }

  v15 = 0;
  v16 = &str_67;
  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }
}

_BYTE *re::ecs2::VideoProxyComponent::impl::update(_BYTE *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2 && a5)
  {
    v7 = result;
    if ((*result & 1) == 0)
    {
      v8 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      *v7 = 1;
      re::ecs2::VideoProxyComponent::impl::addAttachmentsToVideoComponent(v8, v8);
    }

    result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (result)
    {
      v9 = result;
      result[331] = 1;
      re::AssetHandle::AssetHandle(v10, (v7 + 152));
      re::AssetHandle::operator=((v9 + 208), v10);
      v9[73] = 0;
      re::AssetHandle::~AssetHandle(v10);
      result = re::AssetHandle::operator=((v9 + 32), (a3 + 32));
      v9[348] = *(*(a3 + 56) + 196);
    }
  }

  return result;
}

float32x2_t re::ecs2::VideoProxyComponent::impl::postBufferRetrievalUpdate(float32x2_t *this, float32x2_t result, re::ecs2::Entity *a3, re::AssetManager *a4)
{
  if (a3)
  {
    if (a4)
    {
      v6 = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoProxyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v6)
      {
        v7 = v6;
        v8 = re::ecs2::EntityComponentCollection::getOrAdd((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v8)
        {
          v9 = v8;
          v10 = *(v7 + 56);
          if (*(v10 + 160) && (v11 = re::AssetHandle::loadedAsset<re::VideoAsset>((v10 + 152))) != 0)
          {
            v12 = *(v11 + 208);
            if (v12)
            {
              v13 = *(v12 + 5088);
            }

            else
            {
              v13 = 0.0;
            }

            if (fabsf(v13) < 0.000001)
            {
              v14 = 1;
            }

            else
            {
              v14 = 2;
            }
          }

          else
          {
            v14 = 1;
          }

          v15 = this[22];
          v16 = this[23];
          v17 = this[24].f32[0];
          v9[33] = v15;
          v9[34] = v16;
          result = vmul_f32(vadd_f32(v15, v16), 0x3F0000003F000000);
          v9[35] = result;
          v9[36].f32[0] = v17 + 1.0;
          v9[36].i32[1] = v14;
        }
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_VideoProxyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_234, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_234))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A69A0, "VideoProxyComponent");
    __cxa_guard_release(&_MergedGlobals_234);
  }

  return &unk_1EE1A69A0;
}

void re::ecs2::initInfo_VideoProxyComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x6B0AC0336B6E06D4;
  v10[1] = "VideoProxyComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A6998, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A6998);
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
      qword_1EE1A6990 = v8;
      __cxa_guard_release(&qword_1EE1A6998);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A6990;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoProxyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoProxyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoProxyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoProxyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219VideoProxyComponentELNS_17RealityKitReleaseE11EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

re::ecs2::VideoProxyComponent *re::ecs2::VideoProxyComponent::VideoProxyComponent(re::ecs2::VideoProxyComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CEDF60;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 32) = 0;
  v3 = re::globalAllocators(v2);
  v4 = (*(*v3[2] + 32))(v3[2], 200, 8);
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0u;
  *(v4 + 96) = 0u;
  *(v4 + 112) = 0u;
  *(v4 + 128) = 0u;
  *(v4 + 144) = 0u;
  *(v4 + 160) = 0u;
  *(v4 + 176) = 0u;
  *(v4 + 64) = 0u;
  *(v4 + 80) = 0u;
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 48) = -1;
  v5 = MEMORY[0x1E6960C70];
  *(v4 + 120) = -1;
  *(v4 + 184) = 0x3F8000003F800000;
  *(v4 + 192) = 0;
  v6 = *v5;
  *(v4 + 52) = *v5;
  v7 = *(v5 + 2);
  *(v4 + 68) = v7;
  *(v4 + 140) = v7;
  *(v4 + 124) = v6;
  *(v4 + 168) = 0u;
  *(v4 + 152) = 0u;
  *(v4 + 196) = 0;
  *(this + 7) = v4;
  return this;
}

void re::ecs2::VideoProxyComponent::~VideoProxyComponent(re::ecs2::VideoProxyComponent *this)
{
  *this = &unk_1F5CEDF60;
  v2 = *(this + 7);
  if (v2)
  {
    v3 = re::globalAllocators(this)[2];
    re::ecs2::VideoProxyComponent::impl::deinitPixelBufferGroup(v2, v2 + 8, 0);
    re::ecs2::VideoProxyComponent::impl::deinitPixelBufferGroup(v2, v2 + 80, 1);
    re::AssetHandle::~AssetHandle((v2 + 152));
    *(v2 + 80) = 0;
    ++*(v2 + 88);
    *(v2 + 8) = 0;
    ++*(v2 + 16);
    (*(*v3 + 40))(v3, v2);
  }

  re::AssetHandle::~AssetHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::VideoProxyComponent::~VideoProxyComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::VideoProxyComponent::update(uint64_t a1, uint64_t a2, const re::AssetHandle *a3, uint64_t a4)
{
  v7 = *(a1 + 56);
  re::AssetHandle::AssetHandle(v9, a3);
  re::ecs2::VideoProxyComponent::impl::update(v7, a2, a1, v8, a4);
  re::AssetHandle::~AssetHandle(v9);
}

uint64_t re::AssetHandle::blockUntilLoaded<re::VideoAsset>(re::VideoAsset *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = re::VideoAsset::assetType(a1);
  v3 = re::AssetHandle::assetWithType(a1, v2, 0);
  if (!v3)
  {
    v4 = *re::assetsLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v6 = v4;
      v7 = re::AssetHandle::assetInfo(a1);
      if (v7[17])
      {
        v8 = v7[18];
      }

      else
      {
        v8 = v7 + 137;
      }

      v9 = 136315138;
      v10 = v8;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "Invalid asset: '%s'", &v9, 0xCu);
    }
  }

  return v3;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219VideoProxyComponentELNS_17RealityKitReleaseE11EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 11;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_AnimationSceneService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_235, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_235))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A6A38, "AnimationSceneService");
    __cxa_guard_release(&_MergedGlobals_235);
  }

  return &unk_1EE1A6A38;
}

void re::ecs2::initInfo_AnimationSceneService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7787547DA612D41ALL;
  v6[1] = "AnimationSceneService";
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
  *(this + 8) = &re::ecs2::initInfo_AnimationSceneService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::CARESortingDebugging::dumpSorting(re::ecs2::CARESortingDebugging *this, __CFString *a2, const re::ecs2::CARESortingManager *a3)
{
  v159 = *MEMORY[0x1E69E9840];
  v4 = a2;
  v124 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v154 = 0;
  v155 = 0;
  v156 = 1;
  v157 = 0;
  v158 = 0;
  v153[0] = &v154;
  v153[1] = a3;
  obj = v4;
  v128 = *(a3 + 22);
  if (v128)
  {
    v5 = 0;
    v6 = *(a3 + 9);
    while (1)
    {
      v7 = *v6;
      v6 += 46;
      if (v7 < 0)
      {
        break;
      }

      if (v128 == ++v5)
      {
        LODWORD(v5) = *(a3 + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  v140 = a3;
  if (v5 != v128)
  {
    v8 = *(a3 + 22);
    do
    {
      v131 = v5;
      v9 = *(a3 + 9) + 184 * v5;
      v141 = *(v9 + 48);
      if (v141)
      {
        v10 = 0;
        v11 = (*(v9 + 32) + 8);
        while (1)
        {
          v12 = *v11;
          v11 += 6;
          if (v12 < 0)
          {
            break;
          }

          if (v141 == ++v10)
          {
            LODWORD(v10) = *(v9 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      v134 = *(a3 + 9) + 184 * v5;
      if (v10 != v141)
      {
        do
        {
          v13 = *(v9 + 32) + 24 * v10;
          v14 = *(v13 + 16);
          v137 = (v13 + 16);
          v15 = *(v14 + 232);
          if (v15)
          {
            v16 = 0;
            v17 = (*(v14 + 216) + 8);
            while (1)
            {
              v18 = *v17;
              v17 += 6;
              if (v18 < 0)
              {
                break;
              }

              if (v15 == ++v16)
              {
                LODWORD(v16) = *(v14 + 232);
                break;
              }
            }
          }

          else
          {
            LODWORD(v16) = 0;
          }

          if (v16 != v15)
          {
            do
            {
              v19 = *(v14 + 216) + 24 * v16;
              v22 = *(v19 + 16);
              v21 = v19 + 16;
              v20 = v22;
              if (*(v22 + 300))
              {
                v23 = *(v20 + 304);
                if (v23)
                {
                  v24 = 0;
                  v25 = (*(v20 + 288) + 8);
                  while (1)
                  {
                    v26 = *v25;
                    v25 += 6;
                    if (v26 < 0)
                    {
                      break;
                    }

                    if (v23 == ++v24)
                    {
                      LODWORD(v24) = *(v20 + 304);
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v24) = 0;
                }

                if (v24 != v23)
                {
                  do
                  {
                    re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(v153, *(*(v20 + 288) + 24 * v24 + 16));
                    v27 = *(v20 + 304);
                    if (v27 <= v24 + 1)
                    {
                      v27 = v24 + 1;
                    }

                    while (v27 - 1 != v24)
                    {
                      LODWORD(v24) = v24 + 1;
                      if ((*(*(v20 + 288) + 24 * v24 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_37;
                      }
                    }

                    LODWORD(v24) = v27;
LABEL_37:
                    ;
                  }

                  while (v24 != v23);
                  v20 = *v21;
                  LODWORD(v23) = *(*v21 + 304);
                }

                if (v23)
                {
                  v28 = 0;
                  v29 = (*(v20 + 288) + 8);
                  while (1)
                  {
                    v30 = *v29;
                    v29 += 6;
                    if (v30 < 0)
                    {
                      break;
                    }

                    if (v23 == ++v28)
                    {
                      LODWORD(v28) = v23;
                      break;
                    }
                  }
                }

                else
                {
                  LODWORD(v28) = 0;
                }

                if (v28 == v23)
                {
                  v31 = 0;
                }

                else
                {
                  while (1)
                  {
                    v32 = *(*(v20 + 288) + 24 * v28 + 16);
                    re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(v153, v32);
                    v33 = v32[28];
                    if (v33)
                    {
                      if (*(v33 + 32))
                      {
                        break;
                      }
                    }

                    v34 = *(v20 + 304);
                    if (v34 <= v28 + 1)
                    {
                      v34 = v28 + 1;
                    }

                    while (v34 - 1 != v28)
                    {
                      LODWORD(v28) = v28 + 1;
                      if ((*(*(v20 + 288) + 24 * v28 + 8) & 0x80000000) != 0)
                      {
                        goto LABEL_55;
                      }
                    }

                    LODWORD(v28) = v34;
LABEL_55:
                    if (v28 == v23)
                    {
                      v31 = 0;
                      goto LABEL_58;
                    }
                  }

                  v31 = 1;
LABEL_58:
                  v20 = *v21;
                  LODWORD(v23) = *(*v21 + 304);
                }

                v35 = *(v20 + 288);
                v36 = 0;
                if (v23)
                {
                  v37 = (v35 + 8);
                  while (1)
                  {
                    v38 = *v37;
                    v37 += 6;
                    if (v38 < 0)
                    {
                      break;
                    }

                    if (v23 == ++v36)
                    {
                      LODWORD(v36) = v23;
                      break;
                    }
                  }
                }

                v39 = re::ecs2::EntityComponentCollection::get((*(v35 + 24 * v36 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                if (v39)
                {
                  v40 = v31;
                }

                else
                {
                  v40 = 0;
                }

                if (v40 == 1)
                {
                  v41 = 32;
                  if (*(v39 + 304))
                  {
                    v41 = 176;
                  }

                  v42 = v39 + v41;
                  if ((*(v42 + 9) & 1) == 0)
                  {
                    v149.n128_u64[0] = @"Portals z-fighting";
                    v149.n128_u64[1] = [MEMORY[0x1E696AEC0] stringWithFormat:@"MeshSortingGroup %llu contains portals but does not use depth bias. Potential z-fighting.", *v42];
                    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(&v154, &v149);
                  }
                }
              }

              v43 = *(v14 + 232);
              if (v43 <= v16 + 1)
              {
                v43 = v16 + 1;
              }

              while (v43 - 1 != v16)
              {
                LODWORD(v16) = v16 + 1;
                if ((*(*(v14 + 216) + 24 * v16 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_78;
                }
              }

              LODWORD(v16) = v43;
LABEL_78:
              ;
            }

            while (v16 != v15);
            v14 = *v137;
          }

          v44 = *(v14 + 280);
          a3 = v140;
          v9 = v134;
          if (v44)
          {
            v45 = 0;
            v46 = (*(v14 + 264) + 8);
            while (1)
            {
              v47 = *v46;
              v46 += 6;
              if (v47 < 0)
              {
                break;
              }

              if (v44 == ++v45)
              {
                LODWORD(v45) = *(v14 + 280);
                break;
              }
            }
          }

          else
          {
            LODWORD(v45) = 0;
          }

LABEL_92:
          while (v45 != v44)
          {
            re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(v153, *(*(v14 + 264) + 24 * v45 + 16));
            v48 = *(v14 + 280);
            if (v48 <= v45 + 1)
            {
              v48 = v45 + 1;
            }

            while (v48 - 1 != v45)
            {
              LODWORD(v45) = v45 + 1;
              if ((*(*(v14 + 264) + 24 * v45 + 8) & 0x80000000) != 0)
              {
                goto LABEL_92;
              }
            }

            LODWORD(v45) = v48;
          }

          v49 = *(v134 + 48);
          if (v49 <= v10 + 1)
          {
            v49 = v10 + 1;
          }

          while (v49 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(*(v134 + 32) + 24 * v10 + 8) & 0x80000000) != 0)
            {
              goto LABEL_99;
            }
          }

          LODWORD(v10) = v49;
LABEL_99:
          ;
        }

        while (v10 != v141);
        v8 = *(v140 + 22);
      }

      LODWORD(v5) = v131;
      if (v8 <= v131 + 1)
      {
        v50 = v131 + 1;
      }

      else
      {
        v50 = v8;
      }

      while (v50 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(*(a3 + 9) + 184 * v5) & 0x80000000) != 0)
        {
          goto LABEL_108;
        }
      }

      LODWORD(v5) = v50;
LABEL_108:
      ;
    }

    while (v5 != v128);
  }

  v51 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v52 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
  if (v155)
  {
    [(__CFString *)obj appendFormat:@"%@Warnings: \n", v51];
    v53 = (v156 & 1) != 0 ? &v157 : v158;
    if (v155)
    {
      v54 = &v53[2 * v155];
      do
      {
        v55 = *v53;
        v56 = v53[1];
        v53 += 2;
        [(__CFString *)obj appendFormat:@"%@⚠️ %@: %@\n", v52, v55, v56];
      }

      while (v53 != v54);
    }
  }

  if (v154)
  {
    if (v155)
    {
      v57 = v158;
      if (v156)
      {
        v57 = &v157;
      }

      v58 = 16 * v155;
      v59 = (v57 + 1);
      do
      {

        v59 += 2;
        v58 -= 16;
      }

      while (v58);
    }

    if ((v156 & 1) == 0)
    {
      (*(*v154 + 40))(v154, v158);
    }
  }

  [(__CFString *)obj appendFormat:@"%@DirtyEntities count: %d\n", v124, *(a3 + 45)];
  [(__CFString *)obj appendFormat:@"%@InactiveEntities count: %d\n", v124, *(a3 + 57)];
  [(__CFString *)obj appendFormat:@"%@DirtyTransformEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_dirtyTransformEntityCount];
  [(__CFString *)obj appendFormat:@"%@HierarchicalDirtiedTransformEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_hierarchicalDirtiedTransformEntityCount];
  [(__CFString *)obj appendFormat:@"%@DirtyAnchorEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_dirtyAnchorEntityCount];
  [(__CFString *)obj appendFormat:@"%@DirtyInactiveEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::m_dirtyInactiveEntities];
  [(__CFString *)obj appendFormat:@"%@Cached EntityWorldTransforms count: %d\n", v124, *(a3 + 119)];
  [(__CFString *)obj appendFormat:@"%@EntitiesRemovedFromSortGroups count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesRemovedFromSortGroups];
  [(__CFString *)obj appendFormat:@"%@EntitiesAddedToSortGroups count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesAddedToSortGroups];
  [(__CFString *)obj appendFormat:@"%@SortGroupsResorted count: %d\n", v124, re::ecs2::CARESortingDebugging::m_sortGroupsResorted];
  [(__CFString *)obj appendFormat:@"%@CodirGroupsWithDirtyEntities count: %d\n", v124, re::ecs2::CARESortingDebugging::s_codirGroupsWithDirtyEntities];
  [(__CFString *)obj appendFormat:@"%@SortGroupsRecalculatedOverrides count: %d\n", v124, re::ecs2::CARESortingDebugging::m_sortGroupsRecalculatedOverrides];
  [(__CFString *)obj appendFormat:@"%@EntitiesRecalculatedOverrides count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverrides];
  [(__CFString *)obj appendFormat:@"%@EntitiesRecalculatedOverridesMeshSortingComponentDirtied count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesRecalculatedOverridesMeshSortingComponentDirtied];
  [(__CFString *)obj appendFormat:@"%@HighestPriorityInGroup: %u\n", v124, re::ecs2::CARESortingDebugging::m_highestPriorityInGroup];
  [(__CFString *)obj appendFormat:@"%@HighestPriorityGroupId: %llu\n", v124, re::ecs2::CARESortingDebugging::m_highestPriorityGroupId];
  [(__CFString *)obj appendFormat:@"%@EntitiesActivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesActivated];
  [(__CFString *)obj appendFormat:@"%@EntitiesDeactivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_entitiesDeactivated];
  [(__CFString *)obj appendFormat:@"%@UISortingComponentActivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_uiSortingComponentActivated];
  [(__CFString *)obj appendFormat:@"%@UISortingComponentDeactivated count: %d\n", v124, re::ecs2::CARESortingDebugging::m_uiSortingComponentDeactivated];
  v142 = obj;
  v60 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
  v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
  v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 6, ""];
  if (qword_1EE1A6AF0 != -1)
  {
    dispatch_once(&qword_1EE1A6AF0, &__block_literal_global_25);
  }

  v62 = qword_1EE1A6AE8;
  if ([v62 count])
  {
    v123 = v60;
    [(__CFString *)v142 appendFormat:@"%@Graph:\n", v60];
    v151 = 0u;
    v152 = 0u;
    v149 = 0u;
    v150 = 0u;
    v122 = v62;
    obja = v62;
    v135 = [obja countByEnumeratingWithState:&v149 objects:&v154 count:16];
    if (v135)
    {
      v132 = *v150;
      do
      {
        for (i = 0; i != v135; ++i)
        {
          if (*v150 != v132)
          {
            objc_enumerationMutation(obja);
          }

          v64 = *(v149.n128_u64[1] + 8 * i);
          v65 = [v64 objectForKey:@"action"];
          v66 = v65;
          if (v65)
          {
            [(__CFString *)v142 appendFormat:@"%@%@:\n", v129, v65];
          }

          v138 = v66;
          v147 = 0u;
          v148 = 0u;
          v145 = 0u;
          v146 = 0u;
          v67 = v64;
          v68 = [v67 countByEnumeratingWithState:&v145 objects:v153 count:16];
          if (v68)
          {
            v69 = v68;
            v70 = *v146;
            do
            {
              for (j = 0; j != v69; ++j)
              {
                if (*v146 != v70)
                {
                  objc_enumerationMutation(v67);
                }

                v72 = *(*(&v145 + 1) + 8 * j);
                if (v72 != @"action")
                {
                  v73 = [v67 objectForKey:*(*(&v145 + 1) + 8 * j)];
                  [(__CFString *)v142 appendFormat:@"%@%@: %@\n", v61, v72, v73];
                }
              }

              v69 = [v67 countByEnumeratingWithState:&v145 objects:v153 count:16];
            }

            while (v69);
          }
        }

        v135 = [obja countByEnumeratingWithState:&v149 objects:&v154 count:16];
      }

      while (v135);
    }

    a3 = v140;
    v62 = v122;
    v60 = v123;
  }

  [(__CFString *)v142 appendString:@"\n"];
  [(__CFString *)v142 appendFormat:@"World states: %u\n", *(a3 + 21)];
  objb = *(a3 + 22);
  if (objb)
  {
    v74 = 0;
    v75 = *(a3 + 9);
    while (1)
    {
      v76 = *v75;
      v75 += 46;
      if (v76 < 0)
      {
        break;
      }

      if (objb == ++v74)
      {
        LODWORD(v74) = *(a3 + 22);
        break;
      }
    }
  }

  else
  {
    LODWORD(v74) = 0;
  }

  if (v74 != objb)
  {
    v77 = 0;
    while (1)
    {
      v78 = *(a3 + 9) + 184 * v74;
      v79 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 2, ""];
      v80 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", 4, ""];
      v130 = v79;
      [(__CFString *)v142 appendFormat:@"%@[%u] World root id: %llu\n", v79, v77, *(v78 + 8)];
      v136 = v80;
      [(__CFString *)v142 appendFormat:@"%@Codirectional Groups (aka CAMeshCodirectionalGroup): %u\n", v80, *(v78 + 44)];
      v81 = *(v78 + 48);
      v133 = v77;
      if (v81)
      {
        v82 = 0;
        v83 = (*(v78 + 32) + 8);
        v84 = v142;
        while (1)
        {
          v85 = *v83;
          v83 += 6;
          if (v85 < 0)
          {
            break;
          }

          if (v81 == ++v82)
          {
            LODWORD(v82) = *(v78 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v82) = 0;
        v84 = v142;
      }

      if (v82 != v81)
      {
        v86 = 0;
        do
        {
          v87 = *(*(v78 + 32) + 24 * v82 + 16);
          if (v87)
          {
            v88 = (v87 + 8);
            v144 = v87;
            v89 = (v87 + 8);
            re::ecs2::CARESortingDebugging::dumpCodirectionalGroup(v142, &v144, v86, v140);

            v144 = 0;
            [(__CFString *)v142 appendString:@"\n"];
          }

          else
          {
            v144 = 0;
            re::ecs2::CARESortingDebugging::dumpCodirectionalGroup(v142, &v144, v86, v140);
            [(__CFString *)v142 appendString:@"\n"];
          }

          v86 = (v86 + 1);
          v90 = *(v78 + 48);
          if (v90 <= v82 + 1)
          {
            v90 = v82 + 1;
          }

          v84 = v142;
          while (v90 - 1 != v82)
          {
            LODWORD(v82) = v82 + 1;
            if ((*(*(v78 + 32) + 24 * v82 + 8) & 0x80000000) != 0)
            {
              goto LABEL_172;
            }
          }

          LODWORD(v82) = v90;
LABEL_172:
          ;
        }

        while (v82 != v81);
      }

      [(__CFString *)v84 appendFormat:@"%@CoplanarOverlapping Groups (aka CAMeshSortGroup):\n", v136];
      v139 = *(v78 + 48);
      if (v139)
      {
        v91 = 0;
        v92 = (*(v78 + 32) + 8);
        v93 = v142;
        while (1)
        {
          v94 = *v92;
          v92 += 6;
          if (v94 < 0)
          {
            break;
          }

          if (v139 == ++v91)
          {
            LODWORD(v91) = *(v78 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v91) = 0;
        v93 = v142;
      }

      if (v91 != v139)
      {
        v95 = 0;
        while (1)
        {
          v96 = *(*(v78 + 32) + 24 * v91 + 16);
          if (v96)
          {
            v97 = (v96 + 8);
          }

          v98 = *(v96 + 232);
          if (v98)
          {
            v99 = 0;
            v100 = (*(v96 + 216) + 8);
            while (1)
            {
              v101 = *v100;
              v100 += 6;
              if (v101 < 0)
              {
                break;
              }

              if (v98 == ++v99)
              {
                LODWORD(v99) = *(v96 + 232);
                break;
              }
            }
          }

          else
          {
            LODWORD(v99) = 0;
          }

          if (v99 != v98)
          {
            break;
          }

          if (v96)
          {
            goto LABEL_202;
          }

LABEL_203:
          v105 = *(v78 + 48);
          if (v105 <= v91 + 1)
          {
            v105 = v91 + 1;
          }

          v93 = v142;
          while (v105 - 1 != v91)
          {
            LODWORD(v91) = v91 + 1;
            if ((*(*(v78 + 32) + 24 * v91 + 8) & 0x80000000) != 0)
            {
              goto LABEL_210;
            }
          }

          LODWORD(v91) = v105;
LABEL_210:
          if (v91 == v139)
          {
            goto LABEL_211;
          }
        }

        do
        {
          v102 = *(*(v96 + 216) + 24 * v99 + 16);
          v143 = v102;
          if (v102)
          {
            v103 = (v102 + 8);
            re::ecs2::CARESortingDebugging::dumpSortingGroup(v142, &v143, v95, v140);

            v143 = 0;
          }

          else
          {
            re::ecs2::CARESortingDebugging::dumpSortingGroup(v142, &v143, v95, v140);
          }

          [(__CFString *)v142 appendString:@"\n"];
          v95 = (v95 + 1);
          v104 = *(v96 + 232);
          if (v104 <= v99 + 1)
          {
            v104 = v99 + 1;
          }

          while (v104 - 1 != v99)
          {
            LODWORD(v99) = v99 + 1;
            if ((*(*(v96 + 216) + 24 * v99 + 8) & 0x80000000) != 0)
            {
              goto LABEL_201;
            }
          }

          LODWORD(v99) = v104;
LABEL_201:
          ;
        }

        while (v99 != v98);
LABEL_202:

        goto LABEL_203;
      }

LABEL_211:
      [(__CFString *)v93 appendFormat:@"%@Not in CoplanaOverlapping (aka unsortedPlanarEntities):\n", v136];
      v107 = *(v78 + 48);
      if (v107)
      {
        v108 = 0;
        v109 = (*(v78 + 32) + 8);
        v110 = v142;
        while (1)
        {
          v111 = *v109;
          v109 += 6;
          if (v111 < 0)
          {
            break;
          }

          if (v107 == ++v108)
          {
            LODWORD(v108) = *(v78 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v108) = 0;
        v110 = v142;
      }

      if (v108 != v107)
      {
        break;
      }

LABEL_246:
      v77 = (v133 + 1);
      [(__CFString *)v110 appendString:@"\n"];

      a3 = v140;
      v121 = *(v140 + 22);
      if (v121 <= v74 + 1)
      {
        v121 = v74 + 1;
      }

      while (v121 - 1 != v74)
      {
        LODWORD(v74) = v74 + 1;
        if ((*(*(v140 + 9) + 184 * v74) & 0x80000000) != 0)
        {
          goto LABEL_252;
        }
      }

      LODWORD(v74) = v121;
LABEL_252:
      if (v74 == objb)
      {
        goto LABEL_253;
      }
    }

    v112 = 0;
    while (1)
    {
      v113 = *(*(v78 + 32) + 24 * v108 + 16);
      if (v113)
      {
        v114 = (v113 + 8);
      }

      v115 = *(v113 + 280);
      if (v115)
      {
        v116 = 0;
        v117 = (*(v113 + 264) + 8);
        while (1)
        {
          v118 = *v117;
          v117 += 6;
          if (v118 < 0)
          {
            break;
          }

          if (v115 == ++v116)
          {
            LODWORD(v116) = *(v113 + 280);
            break;
          }
        }
      }

      else
      {
        LODWORD(v116) = 0;
      }

      if (v116 != v115)
      {
        break;
      }

      if (v113)
      {
        goto LABEL_237;
      }

LABEL_238:
      v120 = *(v78 + 48);
      if (v120 <= v108 + 1)
      {
        v120 = v108 + 1;
      }

      v110 = v142;
      while (v120 - 1 != v108)
      {
        LODWORD(v108) = v108 + 1;
        if ((*(*(v78 + 32) + 24 * v108 + 8) & 0x80000000) != 0)
        {
          goto LABEL_245;
        }
      }

      LODWORD(v108) = v120;
LABEL_245:
      if (v108 == v107)
      {
        goto LABEL_246;
      }
    }

    do
    {
      re::ecs2::CARESortingDebugging::dumpEntity(v142, *(*(v113 + 264) + 24 * v116 + 16), 3, v112, v140, v106);
      [(__CFString *)v142 appendString:@"\n"];
      v112 = (v112 + 1);
      v119 = *(v113 + 280);
      if (v119 <= v116 + 1)
      {
        v119 = v116 + 1;
      }

      while (v119 - 1 != v116)
      {
        LODWORD(v116) = v116 + 1;
        if ((*(*(v113 + 264) + 24 * v116 + 8) & 0x80000000) != 0)
        {
          goto LABEL_236;
        }
      }

      LODWORD(v116) = v119;
LABEL_236:
      ;
    }

    while (v116 != v115);
LABEL_237:

    goto LABEL_238;
  }

LABEL_253:
}

id anonymous namespace::getIndentString(_anonymous_namespace_ *this)
{
  v1 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%*s", (2 * this), ""];

  return v1;
}

void re::ecs2::CARESortingDebugging::dumpCodirectionalGroup(void *a1, uint64_t *a2, uint64_t a3, re::ecs2::CARESortingManager *a4)
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
      re::ecs2::CARESortingDebugging::dumpEntity(v17, *(*(v10 + 40) + 24 * v12 + 16), 5, v15, a4, v9);
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

void re::ecs2::CARESortingDebugging::dumpSortingGroup(void *a1, uint64_t *a2, uint64_t a3, re::ecs2::CARESortingManager *a4)
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
      re::ecs2::CARESortingManager::tryGetCodirectionalGroupForEntity(a4, v16, &v61);
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
      re::ecs2::CARESortingDebugging::dumpEntity(v7, *(*(v46 + 288) + 24 * v48 + 16), 5, v52, a4, v45);
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

void re::ecs2::CARESortingDebugging::dumpEntity(re::ecs2::CARESortingDebugging *this, NSMutableString *a2, const re::ecs2::Entity *a3, uint64_t a4, re::ecs2::CARESortingManager *a5, const re::ecs2::CARESortingManager *a6)
{
  v166 = *MEMORY[0x1E69E9840];
  v9 = this;
  v10 = v155 = a2;
  v11 = v140 = a3;
  v138 = v10;
  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@[%u] Entity ID: %llu\n", v10, a4, a2[39].super];
  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@name: %s\n", v11, a2[37].super];
  v139 = v11;
  v156.i64[0] = a2;
  *&v164 = 0;
  *(&v162 + 1) = 0;
  *&v163 = 0;
  DWORD2(v163) = 0;
  re::DynamicArray<float *>::setCapacity(&v162, 0x40uLL);
  ++DWORD2(v163);
  for (i = a2[4].super; i; i = *(v13 + 32))
  {
    if ((i[304] & 0x80) != 0)
    {
      break;
    }

    re::DynamicArray<re::TransitionCondition *>::add(&v162, &v156);
    v13 = *(v156.i64[0] + 32);
    if ((*(v13 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    v156.i64[0] = v13;
  }

  v14 = [MEMORY[0x1E696AD60] stringWithCapacity:256];
  [v14 appendString:@"/"];
  if (v163)
  {
    v15 = v164 + 8 * v163;
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

    while (v15 != v164);
  }

  v22 = [v14 stringByReplacingOccurrencesOfString:@"\n" withString:@"\\n"];

  if (v162 && v164)
  {
    (*(*v162 + 40))(v162);
  }

  v23 = v139;
  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@path: %@\n", v139, v22];

  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@worldMatrix:\n", v139];
  re::TransformService::worldMatrix(*(a5 + 66), a2, 1, &v142);
  v25 = v24 = v140;
  [(re::ecs2::CARESortingDebugging *)v9 appendString:v25];

  v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v155 ^ (v155 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v155 ^ (v155 >> 30))) >> 27));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::TransformAndInverse,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a5 + 448, &v155, v26 ^ (v26 >> 31), &v162);
  if (HIDWORD(v162) == 0x7FFFFFFF)
  {
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@cached worldMatrix: none\n", v139];
  }

  else
  {
    v27 = *(a5 + 58) + 160 * HIDWORD(v162);
    v29 = *(v27 + 16);
    v28 = (v27 + 16);
    v30 = v29;
    if ((v142.f32[0] == v29 || vabds_f32(v142.f32[0], v30) < (((fabsf(v142.f32[0]) + fabsf(v30)) + 1.0) * 0.00001)) && ((v31 = v28[1], v142.f32[1] == v31) || vabds_f32(v142.f32[1], v31) < (((fabsf(v142.f32[1]) + fabsf(v31)) + 1.0) * 0.00001)) && ((v32 = v28[2], v142.f32[2] == v32) || vabds_f32(v142.f32[2], v32) < (((fabsf(v142.f32[2]) + fabsf(v32)) + 1.0) * 0.00001)) && ((v33 = v28[3], v142.f32[3] == v33) || vabds_f32(v142.f32[3], v33) < (((fabsf(v142.f32[3]) + fabsf(v33)) + 1.0) * 0.00001)) && ((v34 = v28[4], v143 == v34) || vabds_f32(v143, v34) < (((fabsf(v143) + fabsf(v34)) + 1.0) * 0.00001)) && ((v35 = v28[5], v144 == v35) || vabds_f32(v144, v35) < (((fabsf(v144) + fabsf(v35)) + 1.0) * 0.00001)) && ((v36 = v28[6], v145 == v36) || vabds_f32(v145, v36) < (((fabsf(v145) + fabsf(v36)) + 1.0) * 0.00001)) && ((v37 = v28[7], v146 == v37) || vabds_f32(v146, v37) < (((fabsf(v146) + fabsf(v37)) + 1.0) * 0.00001)) && ((v38 = v28[8], v147 == v38) || vabds_f32(v147, v38) < (((fabsf(v147) + fabsf(v38)) + 1.0) * 0.00001)) && ((v39 = v28[9], v148 == v39) || vabds_f32(v148, v39) < (((fabsf(v148) + fabsf(v39)) + 1.0) * 0.00001)) && ((v40 = v28[10], v149 == v40) || vabds_f32(v149, v40) < (((fabsf(v149) + fabsf(v40)) + 1.0) * 0.00001)) && ((v41 = v28[11], v150 == v41) || vabds_f32(v150, v41) < (((fabsf(v150) + fabsf(v41)) + 1.0) * 0.00001)) && ((v42 = v28[12], v151 == v42) || vabds_f32(v151, v42) < (((fabsf(v151) + fabsf(v42)) + 1.0) * 0.00001)) && ((v43 = v28[13], v152 == v43) || vabds_f32(v152, v43) < (((fabsf(v152) + fabsf(v43)) + 1.0) * 0.00001)) && ((v44 = v28[14], v153 == v44) || vabds_f32(v153, v44) < (((fabsf(v153) + fabsf(v44)) + 1.0) * 0.00001)) && ((v45 = v28[15], v154 == v45) || vabds_f32(v154, v45) < (((fabsf(v154) + fabsf(v45)) + 1.0) * 0.00001)))
    {
      [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@cached worldMatrix: up to date\n", v139];
    }

    else
    {
      v46 = [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@cached worldMatrix: outdated\n", v139];
      [(re::ecs2::CARESortingDebugging *)v9 appendString:v46];
    }
  }

  v47 = v155;
  v48 = v155;
  do
  {
    v49 = v48;
    v48 = *(v48 + 4);
  }

  while (v48);
  if (*(v49 + 3))
  {
    v50 = v155;
    do
    {
      v51 = v50;
      v50 = *(v50 + 4);
    }

    while (v50);
    if (*(*(v51 + 3) + 56))
    {
      do
      {
        v52 = v47;
        v47 = *(v47 + 4);
      }

      while (v47);
      v53 = (*(**(*(v52 + 3) + 56) + 32))(*(*(v52 + 3) + 56));
      v54 = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v53);
      if (v54)
      {
        v55 = (*(*v54 + 24))(v54);
        (*(*v55 + 8))(&v162);
        if (v162)
        {
          v56 = *(&v162 + 1);
        }

        else
        {
          v56 = 0;
        }

        [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@worldRootId: %llu\n", v139, v56];
      }
    }
  }

  v57 = *(v155 + 28);
  if (v57)
  {
    if (*(v57 + 32))
    {
      v58 = @"true";
    }

    else
    {
      v58 = @"false";
    }
  }

  else
  {
    v58 = @"false";
  }

  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@isPortal: %@\n", v139, v58];
  re::ecs2::CARESortingManager::tryGetCodirectionalGroupForEntity(a5, v155, &v141);
  v59 = v141;
  if (v141)
  {
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@CAMeshCodirectionalGroupId: %llu\n", v139, v141[1].i64[0]];
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@averageNormal: (%f, %f, %f)\n", v139, v59[7].f32[0], v59[7].f32[1], v59[7].f32[2]];
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@averagePosition: (%f, %f, %f)\n", v139, v59[8].f32[0], v59[8].f32[1], v59[8].f32[2]];
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@CodirectionalGroup: none\n", v139, v120, v125, v127];
  }

  [(re::ecs2::CARESortingDebugging *)v9 appendFormat:@"%@UISortingComponent:\n", v139];
  v60 = re::ecs2::EntityComponentCollection::get((v155 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v62 = v61 = v9;
  v63 = v62;
  if (v60)
  {
    v64 = v60[3];
    v65 = v60[4];
    v66 = vcgtq_f32(v64, v65);
    v66.i32[3] = v66.i32[2];
    if ((vmaxvq_u32(v66) & 0x80000000) != 0)
    {
      v70 = v60[2].f32[2];
      v68.i32[0] = v60[2].i32[0];
      v69 = v60[2].f32[1];
    }

    else
    {
      v67 = vsubq_f32(v65, v64);
      v67.i32[3] = 0;
      v68 = vmaxnmq_f32(v67, 0);
      v69 = v68.f32[1];
      v70 = v68.f32[2];
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@extends: (%f, %f, %f)\n", v62, v68.f32[0], v69, v70];
    v71 = vcgtq_f32(v60[3], v60[4]);
    v71.i32[3] = v71.i32[2];
    if ((vmaxvq_u32(v71) & 0x80000000) != 0)
    {
      v72 = v60[2].f32[2] * 0.5;
    }

    else
    {
      LODWORD(v72) = v60[4].i64[1];
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@halfZExtent: %f\n", v63, v72];
    v74 = v60[3];
    v73 = v60[4];
    v75 = vcgtq_f32(v74, v73);
    v75.i32[3] = v75.i32[2];
    if ((vmaxvq_u32(v75) & 0x80000000) != 0)
    {
      v76 = v60[2];
      v77.i64[0] = 0xBF000000BF000000;
      v77.i64[1] = 0xBF000000BF000000;
      v74 = vmulq_f32(v76, v77);
      v77.i64[0] = 0x3F0000003F000000;
      v77.i64[1] = 0x3F0000003F000000;
      v73 = vmulq_f32(v76, v77);
    }

    v131 = v74;
    v135 = v73;
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@AABB min: (%f, %f, %f)\n", v63, v74.f32[0], v74.f32[1], v74.f32[2]];
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@AABB max: (%f, %f, %f)\n", v63, v135.f32[0], v135.f32[1], v135.f32[2]];
    v78 = vcgtq_f32(v131, v135);
    v78.i32[3] = v78.i32[2];
    v79.i64[0] = 0x3F0000003F000000;
    v79.i64[1] = 0x3F0000003F000000;
    v80 = vmulq_f32(vaddq_f32(v135, v131), v79);
    v81 = v80.f32[2];
    if ((vmaxvq_u32(v78) & 0x80000000) == 0)
    {
      v82 = v80.i64[0];
    }

    else
    {
      v81 = 0.0;
      v82 = 0;
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@AABB center: (%f, %f, %f)\n", v63, *&v82, *(&v82 + 1), v81];
    v83 = v60[5].u32[0];
    if ((atomic_load_explicit(&qword_1EE1A6AE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A6AE0))
    {
      v137 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4294967293];
      v156.i64[0] = v137;
      *&v162 = @"kSortCategoryMin";
      v133 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4294967294];
      v156.i64[1] = v133;
      *(&v162 + 1) = @"kBackDecoration";
      v130 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0xFFFFFFFFLL];
      v157.i64[0] = v130;
      *&v163 = @"kBehindUIContent";
      v129 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 0];
      v157.i64[1] = v129;
      *(&v163 + 1) = @"kUIContent";
      v116 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 1];
      v158 = v116;
      *&v164 = @"kAboveUIContent";
      v117 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 2];
      v159 = v117;
      *(&v164 + 1) = @"kFrontDecoration";
      v118 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 3];
      v160 = v118;
      *&v165 = @"kServerCARE";
      v119 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", 4];
      v161 = v119;
      *(&v165 + 1) = @"kSortCategoryMax";
      qword_1EE1A6AD8 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v162 forKeys:&v156 count:8];

      v24 = v140;
      __cxa_guard_release(&qword_1EE1A6AE0);
    }

    v84 = qword_1EE1A6AD8;
    v85 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%u", v83];
    v86 = [v84 valueForKey:v85];

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@sortCategory: %@\n", v63, v86];
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@sortPriorityHint: %d\n", v63, v60[5].u32[1]];
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@caSortOrder: %d\n", v63, v60[5].u32[2]];
    if (v60[5].i8[12])
    {
      v87 = @"true";
    }

    else
    {
      v87 = @"false";
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@isCaLayer: %@\n", v63, v87];
    if (v60[5].i8[13])
    {
      v88 = @"true";
    }

    else
    {
      v88 = @"false";
    }

    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@doesCaLayerNeedMesh: %@\n", v63, v88];
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@None\n", v62, v121];
  }

  [(re::ecs2::CARESortingDebugging *)v61 appendFormat:@"%@MeshSortingComponent:\n", v139];
  v89 = re::ecs2::EntityComponentCollection::get((v155 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v91 = v90 = v61;
  v92 = v91;
  if (v89)
  {
    v94 = v93 = (v24 + 3);
    v95 = 2;
    if (v89[19].i8[0])
    {
      v95 = 11;
    }

    v96 = &v89[v95];
    v97 = v96->i64[0];
    v98 = v96->u8[8];
    v99 = v96->i8[9];
    v132 = v96[1].u8[0];
    v136 = v96[2];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@groupId: %llu\n", v92, v96->i64[0]];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@priorityInGroup: %d\n", v92, v89[10].u32[0]];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@depthPriorityInGroup: %d\n", v92, v89[10].u32[1]];
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortPointOverride: (%f, %f, %f)\n", v92, v89[20].f32[0], v89[20].f32[1], v89[20].f32[2]];
    v100 = v141;
    if (v141)
    {
      v101 = vmulq_f32(vsubq_f32(v89[20], v141[8]), v141[7]);
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortPointOverrideDisplacement: %f\n", v92, (v101.f32[2] + vaddv_f32(*v101.f32))];
    }

    else
    {
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortPointOverrideDisplacement: None\n", v92, v123];
    }
    v102 = ;
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortConfiguration: %@\n", v92, v102];

    v103 = @"true";
    if ((v99 & 1) == 0)
    {
      v103 = @"false";
    }

    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@useDepthBias: %@\n", v92, v103];
    if (v97)
    {
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortGroupData:\n", v92];
      if (v98 == 5 && v132)
      {
        [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverride: (%f, %f, %f)\n", v94, v136.f32[0], v136.f32[1], v136.f32[2]];
        if (v100)
        {
          v104 = vmulq_f32(vsubq_f32(v136, v100[8]), v100[7]);
          [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverrideDisplacement: %f\n", v94, (v104.f32[2] + vaddv_f32(*v104.f32))];
        }

        else
        {
          [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverrideDisplacement: None\n", v94, v124];
        }
      }

      else
      {
        [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshGroupSortPointOverride: None\n", v94, v122];
      }

      v105 = v23 = v139;
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@perMeshSortGroupConfiguration: %@\n", v94, v105];
    }

    else
    {
      [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@sortGroupData: not-in-mesh-sort-group\n", v92];
      v23 = v139;
    }

    v24 = v140;
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@None\n", v91];
    v93 = (v24 + 3);
  }

  [(re::ecs2::CARESortingDebugging *)v90 appendFormat:@"%@MeshComponent:\n", v23];
  v106 = *(v155 + 24);
  v108 = v107 = v90;
  v109 = objc_claimAutoreleasedReturnValue();
  if (v106)
  {
    [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@MeshAsset:\n", v108];
    v110 = re::AssetHandle::loadedAsset<re::MeshAsset>((v106 + 32));
    if (v110)
    {
      v162 = xmmword_1E3047670;
      v163 = xmmword_1E3047680;
      v164 = xmmword_1E30476A0;
      v165 = xmmword_1E30474D0;
      re::MeshAsset::aabbFromMesh(v110, &v162, &v156);
      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@AABB min: (%f, %f, %f)\n", v109, v156.f32[0], v156.f32[1], v156.f32[2]];
      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@AABB max: (%f, %f, %f)\n", v109, v157.f32[0], v157.f32[1], v157.f32[2]];
      v111 = vcgtq_f32(v156, v157);
      v111.i32[3] = v111.i32[2];
      v112.i64[0] = 0x3F0000003F000000;
      v112.i64[1] = 0x3F0000003F000000;
      v113 = vmulq_f32(vaddq_f32(v156, v157), v112);
      v114 = v113.f32[2];
      if ((vmaxvq_u32(v111) & 0x80000000) == 0)
      {
        v115 = v113.i64[0];
      }

      else
      {
        v114 = 0.0;
        v115 = 0;
      }

      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@AABB center: (%f, %f, %f)\n", v109, *&v115, *(&v115 + 1), v114];
    }

    else
    {
      [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@Not Loaded\n", v109, v122, v126, v128];
    }
  }

  else
  {
    [(re::ecs2::CARESortingDebugging *)v107 appendFormat:@"%@None\n", v108, v122, v126, v128];
  }

  if (v141)
  {
  }
}

id anonymous namespace::stringifyMeshSortingConfiguration(uint64_t a1)
{
  v15[6] = *MEMORY[0x1E69E9840];
  v1 = 0x1E696A000uLL;
  if ((atomic_load_explicit(&qword_1EE1A6AD0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v7 = __cxa_guard_acquire(&qword_1EE1A6AD0);
    a1 = v6;
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 0];
      v15[0] = @"kCentroid";
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 1, v8];
      v14[1] = v9;
      v15[1] = @"kFurthestRadial";
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 2];
      v14[2] = v10;
      v15[2] = @"kNearestRadial";
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 3];
      v14[3] = v11;
      v15[3] = @"kFurthestOBB";
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 4];
      v14[4] = v12;
      v15[4] = @"kNearestOBB";
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 5];
      v14[5] = v13;
      v15[5] = @"kCentroidWithOverride";
      _MergedGlobals_236 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

      v1 = 0x1E696A000;
      __cxa_guard_release(&qword_1EE1A6AD0);
      a1 = v6;
    }
  }

  v2 = _MergedGlobals_236;
  v3 = [*(v1 + 3776) stringWithFormat:@"%hhu", a1];
  v4 = [v2 valueForKey:v3];

  return v4;
}

{
  v15[6] = *MEMORY[0x1E69E9840];
  v1 = 0x1E696A000uLL;
  if ((atomic_load_explicit(&qword_1EE1B16A0, memory_order_acquire) & 1) == 0)
  {
    v6 = a1;
    v7 = __cxa_guard_acquire(&qword_1EE1B16A0);
    a1 = v6;
    if (v7)
    {
      v8 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 0];
      v15[0] = @"kCentroid";
      v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 1, v8];
      v14[1] = v9;
      v15[1] = @"kFurthestRadial";
      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 2];
      v14[2] = v10;
      v15[2] = @"kNearestRadial";
      v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 3];
      v14[3] = v11;
      v15[3] = @"kFurthestOBB";
      v12 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 4];
      v14[4] = v12;
      v15[4] = @"kNearestOBB";
      v13 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%hhu", 5];
      v14[5] = v13;
      v15[5] = @"kCentroidWithOverride";
      _MergedGlobals_363 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v15 forKeys:v14 count:6];

      v1 = 0x1E696A000;
      __cxa_guard_release(&qword_1EE1B16A0);
      a1 = v6;
    }
  }

  v2 = _MergedGlobals_363;
  v3 = [*(v1 + 3776) stringWithFormat:@"%hhu", a1];
  v4 = [v2 valueForKey:v3];

  return v4;
}

id anonymous namespace::stringifyMatrix4x4(float *a1, _anonymous_namespace_ *this)
  v3 = {;
  v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@[%.5f, %.5f, %.5f, %.5f]\n%@[%.5f, %.5f, %.5f, %.5f]\n%@[%.5f, %.5f, %.5f, %.5f]\n%@[%.5f, %.5f, %.5f, %.5f]\n", v3, *a1, a1[1], a1[2], a1[3], v3, a1[4], a1[5], a1[6], a1[7], v3, a1[8], a1[9], a1[10], a1[11], v3, a1[12], a1[13], a1[14], a1[15]];

  return v4;
}

void re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::$_0::operator()(uint64_t *a1, unint64_t *a2)
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

  re::TransformService::worldMatrix(*(a1[1] + 528), a2, 1, &v22);
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

__n128 re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::add(uint64_t a1, __n128 *a2)
{
  if (!*a1)
  {
    v10 = *(a1 + 8);
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(a1, v10 + 1);
    v11 = *(a1 + 16) + 2;
    *(a1 + 16) = v11;
    if ((v11 & 1) == 0)
    {
      goto LABEL_12;
    }

LABEL_18:
    v12 = a1 + 24;
    goto LABEL_19;
  }

  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  if ((v5 & 1) == 0)
  {
    v6 = *(a1 + 24);
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
  if (v7 < 2)
  {
LABEL_11:
    if ((v5 & 1) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_18;
  }

  v9 = 2;
LABEL_14:
  if (v9 <= v7)
  {
    v13 = v7;
  }

  else
  {
    v13 = v9;
  }

  re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(a1, v13);
  if (*(a1 + 16))
  {
    goto LABEL_18;
  }

LABEL_12:
  v12 = *(a1 + 32);
LABEL_19:
  v14 = *(a1 + 8);
  result = *a2;
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  *(v12 + 16 * v14) = result;
  *(a1 + 8) = v14 + 1;
  *(a1 + 16) += 2;
  return result;
}

void ___ZN12_GLOBAL__N_123ensureGraphCurrentFrameEv_block_invoke()
{
  v0 = [MEMORY[0x1E695DF70] array];
  v1 = qword_1EE1A6AE8;
  qword_1EE1A6AE8 = v0;
}

void re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(void *a1, unint64_t a2)
{
  v5 = *a1;
  if (a2 && !v5)
  {
    re::DynamicOverflowArray<re::ecs2::CARESortingDebugging::dumpWarnings(NSMutableString *,re::ecs2::CARESortingManager const*,unsigned int)::Warning,1ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
      {
        v15 = a1[4];
        if (v9)
        {
          if (v7)
          {
            v16 = (a1 + 3);
          }

          else
          {
            v16 = a1[4];
          }

          v17 = *v16;
          *v16 = 0;
          v16[1] = 0;
          *(a1 + 3) = v17;

          v5 = *a1;
        }

        (*(*v5 + 40))(v5, v15);
        v6 = *(a1 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 60)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 16, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 16 * a2;
        v10 = (*(*v5 + 32))(v5, 16 * a2, 8);
        if (v10)
        {
          v12 = v10;
          v13 = *(a1 + 4);
          if (v13)
          {
            v14 = a1 + 3;
          }

          else
          {
            v14 = a1[4];
          }

          v18 = a1[1];
          if (v18)
          {
            v19 = &v14[2 * v18];
            v20 = v10;
            do
            {
              v21 = *v14;
              *v14 = 0;
              v14[1] = 0;
              *v20++ = v21;

              v22 = *v14;
              v14 += 2;
            }

            while (v14 != v19);
            v13 = *(a1 + 4);
          }

          if ((v13 & 1) == 0)
          {
            (*(**a1 + 40))(*a1, a1[4]);
            v13 = *(a1 + 4);
          }

          *(a1 + 4) = v13 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v12;
          return;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      _os_crash();
      __break(1u);
    }
  }
}

uint64_t re::ecs2::ComponentStatePayload::lightArraysForEntity(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *buf = a2;
  v5 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(*(a1 + 40), buf);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  v79 = v6;
  v7 = (*(**a3 + 8))(buf);
  if (buf[0])
  {
    v8 = *&buf[8];
  }

  else
  {
    v8 = 0;
  }

  *&v77 = v6;
  *(&v77 + 1) = v8;
  v78 = ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + v8) ^ v6;
  v9 = *(a1 + 56);
  if (*(v9 + 5052))
  {
    v7 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(buf, v9 + 5024, v6, v8, ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + v8) ^ v6);
    if (*&buf[12] != 0x7FFFFFFF)
    {
      return *(v9 + 5040) + 320 * *&buf[12] + 32;
    }
  }

  else
  {
    v11 = *(v9 + 16);
    if (v11)
    {
      v12 = 312 * v11;
      v10 = (v9 + 56);
      while (*(v10 - 3) != v6 || *(v10 - 2) != v8)
      {
        v10 += 156;
        v12 -= 312;
        if (!v12)
        {
          goto LABEL_15;
        }
      }

      return v10;
    }
  }

LABEL_15:
  if (*(a1 + 32) >= 0x10000u)
  {
    if ((atomic_exchange(&re::ecs2::ComponentStatePayload::lightArraysForEntity(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::__FILE____LINE___logged, 1u) & 1) == 0)
    {
      v13 = *re::graphicsLogObjects(v7);
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "LightSystem: lightContextId is exceeding 16 bit, some lights will not be visible", buf, 2u);
      }
    }

    return 0;
  }

  v14 = *v9;
  v54 = 0;
  *&v58 = 0;
  v56 = 0uLL;
  v57 = 0;
  v55 = v14;
  re::DynamicArray<re::AABB>::setCapacity(&v55, 0);
  ++v57;
  *&v61 = 0;
  v59 = 0uLL;
  v60 = 0;
  *(&v58 + 1) = v14;
  re::DynamicArray<re::DirectionalLightInfo>::setCapacity(&v58 + 1, 0);
  ++v60;
  *&v64 = 0;
  v62 = 0uLL;
  v63 = 0;
  *(&v61 + 1) = v14;
  re::DynamicArray<re::RealWorldProxyLightInfo>::setCapacity(&v61 + 1, 0);
  ++v63;
  *&v67 = 0;
  v65 = 0uLL;
  v66 = 0;
  *(&v64 + 1) = v14;
  re::DynamicArray<re::SpotLightInfo>::setCapacity(&v64 + 1, 0);
  ++v66;
  *&v70 = 0;
  v68 = 0uLL;
  v69 = 0;
  *(&v67 + 1) = v14;
  re::DynamicArray<re::PointLightInfo>::setCapacity(&v67 + 1, 0);
  ++v69;
  *&v73 = 0;
  v71 = 0uLL;
  v72 = 0;
  *(&v70 + 1) = v14;
  re::DynamicArray<re::RectAreaLightInfo>::setCapacity(&v70 + 1, 0);
  ++v72;
  v76 = 0;
  v74 = 0uLL;
  v75 = 0;
  *(&v73 + 1) = v14;
  v15 = re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(&v73 + 1, 0);
  v17 = v75++;
  if (*(v9 + 5052))
  {
    v18 = v9 + 5024;
LABEL_22:
    v10 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::addNew(v18, &v77, &v54);
    goto LABEL_45;
  }

  v20 = (v9 + 16);
  v19 = *(v9 + 16);
  if (v19)
  {
    v21 = 312 * v19;
    v10 = (v9 + 56);
    v22 = 312 * v19;
    do
    {
      if (*(v10 - 3) == v6 && *(v10 - 2) == v8)
      {
        goto LABEL_45;
      }

      v10 += 156;
      v22 -= 312;
    }

    while (v22);
    if ((v19 & 0xFFFFFFF0) != 0)
    {
      if (!*(v9 + 5024))
      {
        v23 = *v9;
        if (!*v9)
        {
        }

        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9 + 5024, v23, 32);
        if (!*v20)
        {
          goto LABEL_38;
        }

        v21 = 312 * *v20;
      }

      v24 = v9 + 56;
      do
      {
        v25 = *(v24 - 24);
        memset(buf, 0, sizeof(buf));
        v81 = 0;
        re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(buf, v9 + 5024, v25, *(v24 - 16), *(v24 - 8));
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v26 = re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(v9 + 5024, *&buf[8], *buf);
          v27 = *(v24 - 8);
          *(v26 + 8) = *(v24 - 24);
          *(v26 + 24) = v27;
          re::LightInfoArrays::LightInfoArrays(v26 + 32, v24);
          ++*(v9 + 5064);
        }

        v24 += 312;
        v21 -= 312;
      }

      while (v21);
LABEL_38:
      re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear((v9 + 16));
      v18 = v9 + 5024;
      goto LABEL_22;
    }
  }

  *buf = v77;
  v81 = v78;
  v28 = v54;
  v82 = v54;
  v83 = v55;
  v55 = 0;
  v84 = v56;
  v56 = 0u;
  ++v57;
  v85 = 1;
  v29 = v58;
  v58 = 0u;
  v86 = v29;
  v87 = v59;
  v59 = 0u;
  ++v60;
  v89 = v61;
  v90 = v62;
  v61 = 0u;
  v62 = 0u;
  ++v63;
  v88 = 1;
  v91 = 1;
  v92 = v64;
  v64 = 0u;
  v30 = v65;
  v93 = v65;
  v65 = 0u;
  ++v66;
  v94 = 1;
  v31 = v67;
  v95 = v67;
  v32 = v68;
  v96 = v68;
  v67 = 0u;
  v68 = 0u;
  v33 = v70;
  v70 = 0u;
  v34 = v71;
  v71 = 0u;
  v97 = 1;
  v98 = v33;
  v99 = v34;
  ++v69;
  ++v72;
  v100 = 1;
  v101 = v73;
  v102 = v74;
  v73 = 0u;
  v74 = 0u;
  v104 = v76;
  v76 = 0;
  v75 = v17 + 2;
  v103 = 1;
  if (*v20 < 0x10uLL)
  {
    v35 = v9 + 32 + 312 * *v20;
    *v35 = v77;
    *(v35 + 16) = v78;
    *(v35 + 24) = v28;
    *(v35 + 32) = v83;
    v83 = 0;
    *(v35 + 40) = v84;
    *&v84 = 0;
    *(v35 + 48) = *(&v84 + 1);
    *(&v84 + 1) = 0;
    *(v35 + 64) = v86;
    *&v86 = 0;
    ++v85;
    *(v35 + 56) = 1;
    *(v35 + 72) = *(&v86 + 1);
    *(&v86 + 1) = 0;
    *(v35 + 80) = v87;
    *&v87 = 0;
    *(v35 + 88) = *(&v87 + 1);
    *(&v87 + 1) = 0;
    *(v35 + 104) = v89;
    *&v89 = 0;
    ++v88;
    *(v35 + 96) = 1;
    *(v35 + 112) = *(&v89 + 1);
    *(&v89 + 1) = 0;
    *(v35 + 120) = v90;
    *&v90 = 0;
    *(v35 + 128) = *(&v90 + 1);
    *(&v90 + 1) = 0;
    *(v35 + 144) = v92;
    *&v92 = 0;
    ++v91;
    *(v35 + 136) = 1;
    *(v35 + 152) = *(&v92 + 1);
    *(&v92 + 1) = 0;
    *(v35 + 160) = v30;
    *&v93 = 0;
    *(v35 + 168) = *(&v30 + 1);
    *(&v93 + 1) = 0;
    *(v35 + 184) = v31;
    *&v95 = 0;
    v94 = 2;
    *(v35 + 176) = 1;
    *(v35 + 192) = *(&v31 + 1);
    *(&v95 + 1) = 0;
    *(v35 + 200) = v32;
    *&v96 = 0;
    *(v35 + 208) = *(&v96 + 1);
    *(&v96 + 1) = 0;
    *(v35 + 224) = v98;
    *&v98 = 0;
    ++v97;
    *(v35 + 216) = 1;
    *(v35 + 232) = *(&v98 + 1);
    *(&v98 + 1) = 0;
    *(v35 + 240) = v99;
    *&v99 = 0;
    *(v35 + 248) = *(&v99 + 1);
    *(&v99 + 1) = 0;
    *(v35 + 264) = v101;
    *&v101 = 0;
    ++v100;
    *(v35 + 256) = 1;
    *(v35 + 272) = *(&v101 + 1);
    *(&v101 + 1) = 0;
    *(v35 + 280) = v102;
    *&v102 = 0;
    *(v35 + 288) = *(&v102 + 1);
    *(&v102 + 1) = 0;
    *(v35 + 304) = v104;
    v104 = 0;
    ++v103;
    *(v35 + 296) = 1;
    ++*(v9 + 16);
    ++*(v9 + 24);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v101 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v98 + 8);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v95 + 8);
    re::DynamicArray<re::SpotLightInfo>::deinit(&v92 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v89 + 8);
    re::DynamicArray<re::DirectionalLightInfo>::deinit(&v86 + 8);
    if (v83)
    {
      v36 = v86;
      if (v86)
      {
        (*(*v83 + 40))();
      }
    }

    if (!*v20)
    {
      re::internal::assertLog(6, v36, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, *v20 - 1, 0);
      _os_crash();
      __break(1u);
LABEL_69:
      re::internal::assertLog(6, v50, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v51, 0);
      _os_crash();
      __break(1u);
      goto LABEL_70;
    }

    v10 = (v9 + 32 + 312 * (*v20 - 1) + 24);
LABEL_45:
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v73 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v70 + 8);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v67 + 8);
    re::DynamicArray<re::SpotLightInfo>::deinit(&v64 + 8);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v61 + 8);
    re::DynamicArray<re::DirectionalLightInfo>::deinit(&v58 + 8);
    if (v55)
    {
      v37 = v58;
      if (v58)
      {
        (*(*v55 + 40))();
      }
    }

    v38 = *(a1 + 32);
    if (v6)
    {
      v39 = *(a1 + 32);
    }

    else
    {
      v39 = 0;
    }

    *v10 = v39;
    *(a1 + 32) = v38 + 1;
    v40 = *(a1 + 48);
    if (*(v40 + 316))
    {
LABEL_52:
      re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v40 + 288, &v79, v10);
      return v10;
    }

    v41 = *(v40 + 16);
    v42 = v79;
    if (v41)
    {
      v43 = 16 * v41;
      v44 = v40 + 32;
      v45 = 32;
      v46 = 16 * v41;
      do
      {
        if (*(v40 + v45) == v79)
        {
          return v10;
        }

        v45 += 16;
        v46 -= 16;
      }

      while (v46);
      if ((v41 & 0xFFFFFFF0) == 0)
      {
        goto LABEL_66;
      }

      if (!*(v40 + 288))
      {
        v47 = *v40;
        if (!*v40)
        {
        }

        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v40 + 288, v47, 32);
        v48 = *(v40 + 16);
        if (!v48)
        {
          goto LABEL_65;
        }

        v43 = 16 * v48;
      }

      v49 = v40 + v43 + 32;
      do
      {
        re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v40 + 288, v44, (v44 + 8));
        v44 += 16;
      }

      while (v44 != v49);
LABEL_65:
      *(v40 + 16) = 0;
      ++*(v40 + 24);
      goto LABEL_52;
    }

LABEL_66:
    re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(v41, v37);
    v51 = *(v40 + 16);
    v52 = v40 + 16 * v51;
    *(v52 + 32) = v42;
    *(v52 + 40) = v39;
    ++*(v40 + 24);
    *(v40 + 16) = v51 + 1;
    if (v51 != -1)
    {
      return v10;
    }

    goto LABEL_69;
  }

LABEL_70:
  re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
  result = _os_crash();
  __break(1u);
  return result;
}

__n128 re::DynamicArray<re::DirectionalLightInfo>::add(_anonymous_namespace_ *this, re::DynamicString *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::DirectionalLightInfo>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = re::DynamicString::DynamicString((*(this + 4) + 160 * v4), a2);
  v6 = *(a2 + 3);
  *(v5 + 2) = *(a2 + 2);
  *(v5 + 3) = v6;
  v7 = *(a2 + 4);
  v8 = *(a2 + 5);
  v9 = *(a2 + 6);
  *(v5 + 108) = *(a2 + 108);
  *(v5 + 5) = v8;
  *(v5 + 6) = v9;
  *(v5 + 4) = v7;
  *(v5 + 124) = *(a2 + 124);
  v10 = *(a2 + 132);
  *(v5 + 132) = v10;
  if (v10 == 1)
  {
    *(v5 + 133) = *(a2 + 133);
  }

  result = *(a2 + 134);
  *(v5 + 75) = *(a2 + 75);
  *(v5 + 134) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

__n128 re::DynamicArray<re::DynamicLightShadowInfo>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::DynamicLightShadowInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 224 * v5;
  *v11 = 0u;
  *(v11 + 16) = 0u;
  *(v11 + 24) = *(a2 + 24);
  v12 = *(a2 + 8);
  *v11 = *a2;
  *a2 = 0;
  v13 = *(a2 + 16);
  *(a2 + 24) = 0;
  v15 = *(v11 + 8);
  v14 = *(v11 + 16);
  *(v11 + 8) = v12;
  *(v11 + 16) = v13;
  *(a2 + 8) = v15;
  *(a2 + 16) = v14;
  v16 = *(a2 + 112);
  v18 = *(a2 + 64);
  v17 = *(a2 + 80);
  *(v11 + 96) = *(a2 + 96);
  *(v11 + 112) = v16;
  *(v11 + 64) = v18;
  *(v11 + 80) = v17;
  v19 = *(a2 + 128);
  v20 = *(a2 + 144);
  v21 = *(a2 + 160);
  *(v11 + 172) = *(a2 + 172);
  *(v11 + 144) = v20;
  *(v11 + 160) = v21;
  *(v11 + 128) = v19;
  v22 = *(a2 + 48);
  *(v11 + 32) = *(a2 + 32);
  *(v11 + 48) = v22;
  LODWORD(v13) = *(a2 + 188);
  *(v11 + 188) = v13;
  if (v13 == 1)
  {
    *(v11 + 189) = *(a2 + 189);
  }

  result = *(a2 + 192);
  *(v11 + 208) = *(a2 + 208);
  *(v11 + 192) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

float anonymous namespace::makeShadowInfo(uint64_t a1, uint64_t a2, re::Allocator *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 188) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  re::DynamicString::DynamicString(&v10, v6, a3);
  re::DynamicString::operator=(a1, &v10);
  if (v10 && (v11 & 1) != 0)
  {
    (*(*v10 + 40))();
  }

  *(a1 + 32) = 0;
  v7 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v8;
  *(a1 + 112) = xmmword_1E3047670;
  *(a1 + 128) = xmmword_1E3047680;
  *(a1 + 144) = xmmword_1E30476A0;
  *(a1 + 160) = xmmword_1E30474D0;
  *(a1 + 176) = *(a2 + 144);
  *(a1 + 184) = *(a2 + 128);
  if ((*(a1 + 188) & 1) == 0)
  {
    if ((*(a2 + 132) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 188) = 1;
LABEL_12:
    *(a1 + 189) = *(a2 + 133);
    goto LABEL_13;
  }

  if (*(a2 + 132))
  {
    goto LABEL_12;
  }

  *(a1 + 188) = 0;
LABEL_13:
  *(a1 + 192) = *(a2 + 124);
  *(a1 + 196) = *(a2 + 116);
  result = *(a2 + 140);
  *(a1 + 204) = result;
  *(a1 + 208) = *(a2 + 136);
  return result;
}

{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 188) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  re::DynamicString::DynamicString(&v12, v6, a3);
  re::DynamicString::operator=(a1, &v12);
  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))();
  }

  *(a1 + 32) = 1;
  v7 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v7;
  v8 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v8;
  v9 = *(a2 + 144);
  *(a1 + 112) = *(a2 + 128);
  *(a1 + 128) = v9;
  v10 = *(a2 + 176);
  *(a1 + 144) = *(a2 + 160);
  *(a1 + 160) = v10;
  *(a1 + 176) = *(a2 + 192);
  *(a1 + 184) = *(a2 + 216);
  if ((*(a1 + 188) & 1) == 0)
  {
    if ((*(a2 + 220) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 188) = 1;
LABEL_12:
    *(a1 + 189) = *(a2 + 221);
    goto LABEL_13;
  }

  if (*(a2 + 220))
  {
    goto LABEL_12;
  }

  *(a1 + 188) = 0;
LABEL_13:
  result = *(a2 + 208);
  *(a1 + 192) = result;
  return result;
}

id re::DynamicArray<re::SpotLightInfo>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::SpotLightInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::SpotLightInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = *(a1 + 32) + 240 * v5;
  re::DynamicString::DynamicString(v11, a2);
  v12 = *(a2 + 3);
  *(v11 + 32) = *(a2 + 2);
  *(v11 + 48) = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  *(v11 + 108) = *(a2 + 108);
  *(v11 + 80) = v14;
  *(v11 + 96) = v15;
  *(v11 + 64) = v13;
  v17 = *(a2 + 11);
  v16 = *(a2 + 12);
  v18 = *(a2 + 10);
  *(v11 + 204) = *(a2 + 204);
  *(v11 + 176) = v17;
  *(v11 + 192) = v16;
  *(v11 + 160) = v18;
  v19 = *(a2 + 9);
  *(v11 + 128) = *(a2 + 8);
  *(v11 + 144) = v19;
  v20 = *(a2 + 220);
  *(v11 + 220) = v20;
  if (v20 == 1)
  {
    *(v11 + 221) = *(a2 + 221);
  }

  v21 = *(a2 + 111);
  *(v11 + 224) = *(a2 + 224);
  *(v11 + 222) = v21;
  result = *(a2 + 29);
  *(v11 + 232) = result;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

re::DynamicString *re::DynamicArray<re::PointLightInfo>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::PointLightInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::PointLightInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  result = re::DynamicString::DynamicString((*(a1 + 32) + 224 * v5), a2);
  v12 = *(a2 + 3);
  *(result + 2) = *(a2 + 2);
  *(result + 3) = v12;
  v13 = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  *(result + 108) = *(a2 + 108);
  *(result + 5) = v14;
  *(result + 6) = v15;
  *(result + 4) = v13;
  v17 = *(a2 + 11);
  v16 = *(a2 + 12);
  v18 = *(a2 + 10);
  *(result + 52) = *(a2 + 52);
  *(result + 11) = v17;
  *(result + 12) = v16;
  *(result + 10) = v18;
  v19 = *(a2 + 9);
  *(result + 8) = *(a2 + 8);
  *(result + 9) = v19;
  v20 = *(a2 + 212);
  *(result + 212) = v20;
  if (v20 == 1)
  {
    *(result + 213) = *(a2 + 213);
  }

  *(result + 107) = *(a2 + 107);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

uint64_t anonymous namespace::makeShadowInfo(uint64_t a1, uint64_t a2, re::Allocator *a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  re::DynamicString::setCapacity(a1, 0);
  *(a1 + 48) = 0u;
  *(a1 + 188) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  if (*(a2 + 8))
  {
    v6 = *(a2 + 16);
  }

  else
  {
    v6 = (a2 + 9);
  }

  re::DynamicString::DynamicString(&v12, v6, a3);
  re::DynamicString::operator=(a1, &v12);
  result = v12;
  if (v12)
  {
    if (v13)
    {
      result = (*(*v12 + 40))();
    }
  }

  *(a1 + 32) = 2;
  v8 = *(a2 + 48);
  *(a1 + 48) = *(a2 + 32);
  *(a1 + 64) = v8;
  v9 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v9;
  v10 = *(a2 + 144);
  *(a1 + 112) = *(a2 + 128);
  *(a1 + 128) = v10;
  v11 = *(a2 + 176);
  *(a1 + 144) = *(a2 + 160);
  *(a1 + 160) = v11;
  *(a1 + 176) = *(a2 + 192);
  *(a1 + 184) = *(a2 + 208);
  if (*(a1 + 188))
  {
    if ((*(a2 + 212) & 1) == 0)
    {
      *(a1 + 188) = 0;
      return result;
    }
  }

  else
  {
    if ((*(a2 + 212) & 1) == 0)
    {
      return result;
    }

    *(a1 + 188) = 1;
  }

  *(a1 + 189) = *(a2 + 213);
  return result;
}

__n128 re::DynamicArray<re::RectAreaLightInfo>::add(uint64_t a1, re::DynamicString *a2)
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

        re::DynamicArray<re::RectAreaLightInfo>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::RectAreaLightInfo>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = re::DynamicString::DynamicString((*(a1 + 32) + 144 * v5), a2);
  v12 = *(a2 + 3);
  *(v11 + 2) = *(a2 + 2);
  *(v11 + 3) = v12;
  result = *(a2 + 4);
  v14 = *(a2 + 5);
  v15 = *(a2 + 6);
  *(v11 + 108) = *(a2 + 108);
  *(v11 + 5) = v14;
  *(v11 + 6) = v15;
  *(v11 + 4) = result;
  v16 = *(a2 + 16);
  *(v11 + 136) = *(a2 + 136);
  *(v11 + 16) = v16;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

__n128 re::DynamicArray<re::AmbientLightInfo>::add(uint64_t a1, uint64_t a2)
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

        re::DynamicArray<re::AABB>::setCapacity(a1, v10);
      }

      else
      {
        re::DynamicArray<re::AABB>::setCapacity(a1, v6);
        ++*(a1 + 24);
      }
    }

    v5 = *(a1 + 16);
  }

  v11 = (*(a1 + 32) + 32 * v5);
  result = *a2;
  v13 = *(a2 + 16);
  *v11 = *a2;
  v11[1] = v13;
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

re::ecs2::PointLightComponentStateImpl *re::ecs2::PointLightComponentStateImpl::PointLightComponentStateImpl(re::ecs2::PointLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE008;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE488;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

void anonymous namespace::updateProjectionPointLightInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 215) = (a2 | a3) != 0;
  if (!(a2 | a3))
  {
    *(a1 + 208) = 0;
    if (!a4)
    {
      return;
    }

    v7 = *(a1 + 116);
    v8 = *(a1 + 120);
    goto LABEL_30;
  }

  v5 = *(a1 + 116);
  v6 = *(a1 + 120);
  if (!a2)
  {
    if (a3)
    {
      v9 = *(a3 + 28);
    }

    else
    {
      v9 = 1.0;
    }

    *(a1 + 208) = v9;
    v12 = v6;
    v7 = v5;
    goto LABEL_21;
  }

  if ((*(a1 + 212) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 212) = 1;
LABEL_12:
    *(a1 + 213) = *(a2 + 33);
    goto LABEL_13;
  }

  if (*(a2 + 32))
  {
    goto LABEL_12;
  }

  *(a1 + 212) = 0;
LABEL_13:
  *(a1 + 208) = *(a2 + 28);
  if (*(a2 + 36))
  {
    v10 = (a2 + 40);
  }

  else
  {
    v10 = &kDefaultLightShadowNearPlane;
  }

  v7 = *v10;
  v11 = (a1 + 200);
  if (*(a2 + 44))
  {
    v11 = (a2 + 48);
  }

  v12 = *v11;
LABEL_21:
  if (*(a1 + 200) <= v12)
  {
    v8 = *(a1 + 200);
  }

  else
  {
    v8 = v12;
  }

  if ((a4 & 1) != 0 || (v7 == v5 ? (v13 = v8 == v6) : (v13 = 0), !v13))
  {
    *(a1 + 116) = v7;
    *(a1 + 120) = v8;
LABEL_30:
    v14 = tanf(0.7854);
    v15 = 1.0 / v14;
    if (v8 == INFINITY)
    {
      v16 = -v7;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      *(&v18 + 1) = v15;
      v19 = xmmword_1E3085330;
    }

    else
    {
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      *(&v18 + 1) = v15;
      *&v19 = 0;
      v16 = (v8 * v7) / (v7 - v8);
      *(&v19 + 2) = v8 / (v7 - v8);
      HIDWORD(v19) = -1.0;
    }

    *&v20 = 0;
    *(&v20 + 1) = LODWORD(v16);
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = v19;
    v24[3] = v20;
    re::Projection::makeReverseDepth(v24, v23);
    v21 = v23[1];
    *(a1 + 128) = v23[0];
    *(a1 + 144) = v21;
    v22 = v23[3];
    *(a1 + 160) = v23[2];
    *(a1 + 176) = v22;
  }
}

void anonymous namespace::getAnchorScale(_anonymous_namespace_ *this, const re::ecs2::Entity *a2)
{
  *this = 0;
  v3 = re::ecs2::TransformComponent::rootAnchorComponent(a2);
  if (v3)
  {
    v4 = v3[3];
    v5 = v3[4];
    v6 = v3[5];
    v7 = vmulq_f32(v4, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v6, v6, 0xCuLL), v6, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v5, v5), v5, 0xCuLL))), vextq_s8(vuzp1q_s32(v6, v6), v6, 0xCuLL), vextq_s8(vextq_s8(v5, v5, 0xCuLL), v5, 8uLL)));
    v8 = -1.0;
    if ((v7.f32[2] + vaddv_f32(*v7.f32)) > 0.0)
    {
      v8 = 1.0;
    }

    v9 = vmulq_f32(v4, v4);
    v10 = vmulq_f32(v5, v5);
    v11 = vadd_f32(vzip1_s32(*v9.i8, *v10.i8), vzip2_s32(*v9.i8, *v10.i8));
    v12 = vextq_s8(v9, v9, 8uLL);
    *v12.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v12.f32, *&vextq_s8(v10, v10, 8uLL)), v11));
    v13 = vmulq_f32(v6, v6);
    v12.i32[2] = sqrtf(v13.f32[2] + vaddv_f32(*v13.f32));
    v14 = vmulq_n_f32(v12, v8);
    v15 = v14.f32[1];
    v16 = v14.f32[2];
    if ((v14.f32[0] == v14.f32[1] || vabds_f32(v14.f32[0], v14.f32[1]) < (((fabsf(v14.f32[0]) + fabsf(v14.f32[1])) + 1.0) * 0.00001)) && (v14.f32[0] == v14.f32[2] || vabds_f32(v14.f32[0], v14.f32[2]) < (((fabsf(v14.f32[0]) + fabsf(v14.f32[2])) + 1.0) * 0.00001)))
    {
      goto LABEL_12;
    }

    {
      v19 = v14.i32[0];
      v17 = *re::graphicsLogObjects(v3);
      v18 = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
      v14.i32[0] = v19;
      if (v18)
      {
        *buf = 0;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "LightSystem: non uniform system scale detected in AnchorComponent", buf, 2u);
        v14.i32[0] = v19;
      }
    }

    v14.f32[0] = fmaxf(fmaxf(v14.f32[0], v16), v15);
    if ((*this & 1) == 0)
    {
LABEL_12:
      *this = 1;
    }

    *(this + 1) = v14.i32[0];
  }
}

re::ecs2::SpotLightComponentStateImpl *re::ecs2::SpotLightComponentStateImpl::SpotLightComponentStateImpl(re::ecs2::SpotLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE048;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE448;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

void anonymous namespace::updateProjectionSpotLightInfo(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  *(a1 + 224) = (a2 | a3) != 0;
  if (!(a2 | a3))
  {
    *(a1 + 216) = 0;
    if (!a4)
    {
      return;
    }

    v7 = *(a1 + 116);
    v8 = *(a1 + 120);
    goto LABEL_30;
  }

  v5 = *(a1 + 116);
  v6 = *(a1 + 120);
  if (!a2)
  {
    if (a3)
    {
      v9 = *(a3 + 28);
    }

    else
    {
      v9 = 1.0;
    }

    *(a1 + 216) = v9;
    v12 = v6;
    v7 = v5;
    goto LABEL_21;
  }

  if ((*(a1 + 220) & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a1 + 220) = 1;
LABEL_12:
    *(a1 + 221) = *(a2 + 33);
    goto LABEL_13;
  }

  if (*(a2 + 32))
  {
    goto LABEL_12;
  }

  *(a1 + 220) = 0;
LABEL_13:
  *(a1 + 216) = *(a2 + 28);
  if (*(a2 + 36))
  {
    v10 = (a2 + 40);
  }

  else
  {
    v10 = &kDefaultLightShadowNearPlane;
  }

  v7 = *v10;
  v11 = (a1 + 200);
  if (*(a2 + 44))
  {
    v11 = (a2 + 48);
  }

  v12 = *v11;
LABEL_21:
  if (*(a1 + 200) <= v12)
  {
    v8 = *(a1 + 200);
  }

  else
  {
    v8 = v12;
  }

  if ((a4 & 1) != 0 || (v7 == v5 ? (v13 = v8 == v6) : (v13 = 0), !v13))
  {
    *(a1 + 116) = v7;
    *(a1 + 120) = v8;
LABEL_30:
    v14 = tanf(*(a1 + 208) * 0.5);
    v15 = 1.0 / v14;
    if (v8 == INFINITY)
    {
      v16 = -v7;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      *(&v18 + 1) = v15;
      v19 = xmmword_1E3085330;
    }

    else
    {
      DWORD1(v17) = 0;
      *(&v17 + 1) = 0;
      *&v17 = 1.0 / v14;
      LODWORD(v18) = 0;
      *(&v18 + 1) = 0;
      *(&v18 + 1) = v15;
      *&v19 = 0;
      v16 = (v8 * v7) / (v7 - v8);
      *(&v19 + 2) = v8 / (v7 - v8);
      HIDWORD(v19) = -1.0;
    }

    *&v20 = 0;
    *(&v20 + 1) = LODWORD(v16);
    v24[0] = v17;
    v24[1] = v18;
    v24[2] = v19;
    v24[3] = v20;
    re::Projection::makeReverseDepth(v24, v23);
    v21 = v23[1];
    *(a1 + 128) = v23[0];
    *(a1 + 144) = v21;
    v22 = v23[3];
    *(a1 + 160) = v23[2];
    *(a1 + 176) = v22;
  }
}

re::ecs2::DirectionalLightComponentStateImpl *re::ecs2::DirectionalLightComponentStateImpl::DirectionalLightComponentStateImpl(re::ecs2::DirectionalLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE088;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE408;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

re::ecs2::FrustumLightComponentStateImpl *re::ecs2::FrustumLightComponentStateImpl::FrustumLightComponentStateImpl(re::ecs2::FrustumLightComponentStateImpl *this)
{
  v2 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::BaseLightComponentStateImpl(this);
  *v2 = &unk_1F5CEE0C8;
  v3 = (v2 + 13);
  v5 = re::ecs2::ComponentImpl<re::ecs2::ShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add((v2 + 13), &v5);
  v5 = re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(v3, &v5);
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::BaseLightComponentStateImpl(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  *a1 = &unk_1F5CEE348;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  *(a1 + 44) = 0x7FFFFFFFLL;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0;
  *(a1 + 92) = 0x7FFFFFFFLL;
  *(a1 + 112) = 0;
  *(a1 + 104) = 0;
  *(a1 + 120) = 1;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  v3[1] = 1;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  re::DynamicOverflowArray<re::ecs2::ComponentTypeBase const*,8ul>::operator=(a1 + 104, v3);
  return a1;
}

uint64_t re::MeshAsset::partCountForModel(re::MeshAsset *this, unint64_t a2)
{
  v2 = 32;
  if (*(this + 1264))
  {
    v2 = 608;
  }

  if (*(this + v2) <= a2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "modelIndex < modelCount()", "partCountForModel", 134);
    _os_crash();
    __break(1u);
    goto LABEL_12;
  }

  if (!*(this + 1264))
  {
    if (*(this + 4) > a2)
    {
      v4 = *(this + 6) + (a2 << 9) + 208;
      return *v4;
    }

    goto LABEL_13;
  }

  v3 = *(this + 79);
  if (!v3)
  {
LABEL_12:
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "meshManager != nullptr", "partCountForModel", 137);
    _os_crash();
    __break(1u);
LABEL_13:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_14:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 76) <= a2)
  {
    goto LABEL_14;
  }

  v4 = re::DataArray<re::MeshModel>::get(v3 + 8, *(*(this + 78) + 8 * a2)) + 56;
  return *v4;
}

uint64_t re::ecs2::LightSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v4 = *(result + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = 8 * v5;
      do
      {
        v6 += 8;
        result = re::ecs2::LightSystem::updateSceneInternal(v3);
        v7 -= 8;
      }

      while (v7);
    }
  }

  return result;
}

uint64_t re::ecs2::LightSystem::updateSceneInternal(uint64_t a1)
{
  result = MEMORY[0x1EEE9AC00](a1);
  v532 = *MEMORY[0x1E69E9840];
  v442[0] = v4;
  v442[1] = v5;
  v413 = v6;
  if (!v6)
  {
    return result;
  }

  v7 = result;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v441);
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v440, 3025, v7);
  if (!*(v7 + 240))
  {
    goto LABEL_553;
  }

  if (!*(v7 + 232))
  {
LABEL_554:
    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 1587);
    _os_crash();
    __break(1u);
    goto LABEL_555;
  }

  v439 = (*(**(v7 + 256) + 24))(*(v7 + 256));
  v9 = (*(*v439 + 16))(v439);
  v10 = *(v9 + 124);
  if (!v10)
  {
    v10 = *(v9 + 16);
  }

  v433 = v10;
  v11 = *(v7 + 232);
  v12 = *(v11 + 112);
  if (v12)
  {
    v412 = re::RenderFrameBox::get((v12 + 328), 0xFFFFFFFFFFFFFFFuLL);
    v11 = *(v7 + 232);
  }

  else
  {
    v412 = 0;
  }

  v13 = v493;
  v431 = *(v11 + 322);
  __src.i64[0] = re::RenderManager::perFrameAllocator(v11);
  __src.i32[2] = 0;
  v449.i64[0] = 0;
  v449.i32[2] = 0;
  v489 = 0u;
  v490 = 0u;
  v491 = 0;
  v492 = 0x7FFFFFFFLL;
  v14 = *(*(v7 + 232) + 160);
  v444[0] = (*(**(v7 + 272) + 16))(*(v7 + 272));
  v15 = *(*(v7 + 232) + 96);
  if (v15)
  {
    v527.i8[0] = 0;
    *v493 = 0xFB51CF9FCBD130BALL;
    *&v493[8] = "overrides:enableshadows";
    v16 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v15, v493, &v527);
    v17 = v16;
    if (v493[0])
    {
      if (v493[0])
      {
      }
    }

    v18 = v17 == 0;
    LOBYTE(v13) = v527.i8[0];
    *v493 = 0x556F25DBCF9A2F18;
    *&v493[8] = "overrides:enablelightspill";
    v19 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v15, v493, &v527);
    v20 = v19;
    if (v493[0])
    {
      if (v493[0])
      {
      }
    }

    v21 = v20 == 0;
    v2 = v527.i8[0];
  }

  else
  {
    v21 = 0;
    v18 = 0;
  }

  v22 = (*(**(v7 + 296) + 48))(*(v7 + 296));
  v24 = v22;
  if (*(v22 + 316))
  {
    v25 = *(v22 + 312);
    if (v25)
    {
      memset_pattern16(*(v22 + 296), &unk_1E304C660, 4 * v25);
    }

    v26 = *(v24 + 320);
    if (v26)
    {
      v27 = *(v24 + 304);
      do
      {
        if ((*v27 & 0x80000000) != 0)
        {
          *v27 &= ~0x80000000;
        }

        v27 += 6;
        --v26;
      }

      while (v26);
    }

    *(v24 + 324) = 0x7FFFFFFF;
    *(v24 + 316) = 0;
    v28 = 328;
  }

  else
  {
    *(v22 + 16) = 0;
    v28 = 24;
  }

  ++*(v24 + v28);
  *v493 = 0;
  v29 = *(v24 + 16);
  if (v29)
  {
    v30 = 16 * v29;
    v31 = v24 + 32;
    v32 = 32;
    v33 = 16 * v29;
    do
    {
      if (!*(v24 + v32))
      {
        goto LABEL_42;
      }

      v32 += 16;
      v33 -= 16;
    }

    while (v33);
    if ((v29 & 0xFFFFFFF0) != 0)
    {
      if (!*(v24 + 288))
      {
        v34 = *v24;
        if (!*v24)
        {
        }

        re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v24 + 288, v34, 32);
        v35 = *(v24 + 16);
        if (!v35)
        {
          goto LABEL_40;
        }

        v30 = 16 * v35;
      }

      v36 = v24 + v30 + 32;
      do
      {
        re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v24 + 288, v31, (v31 + 8));
        v31 += 16;
      }

      while (v31 != v36);
LABEL_40:
      *(v24 + 16) = 0;
      ++*(v24 + 24);
      re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::add(v24 + 288, v493);
      goto LABEL_42;
    }
  }

  re::DynamicInlineArray<re::KeyValuePair<unsigned long long,unsigned short>,16ul>::ensureCapacity(v29, v23);
  v38 = *(v24 + 16);
  v39 = v24 + 16 * v38;
  *(v39 + 32) = 0;
  *(v39 + 40) = 0;
  ++*(v24 + 24);
  *(v24 + 16) = v38 + 1;
  if (v38 == -1)
  {
LABEL_555:
    re::internal::assertLog(6, v37, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, v38, 0);
    _os_crash();
    __break(1u);
  }

LABEL_42:
  v40 = *(v7 + 296);
  if (v14)
  {
    v41 = *v14;
  }

  else
  {
    v41 = 0;
  }

  *v436 = &v439;
  *&v436[8] = v40;
  *&v436[16] = v444;
  v436[24] = v18;
  if (v18)
  {
    v436[25] = v13;
  }

  v436[26] = v21;
  if (v21)
  {
    v436[27] = v2;
  }

  v436[28] = v41;
  *v437 = 0;
  *&v437[8] = (*(*v40 + 40))(v40);
  *&v437[16] = (*(*v40 + 48))(v40);
  *&v437[24] = &__src;
  v438 = 0;
  v42 = *(*&v437[16] + 316);
  if (!v42)
  {
    v42 = *(*&v437[16] + 16);
  }

  *v437 = v42;
  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v43 = *(v7 + 2104);
  if (v43)
  {
    v44 = 0;
    v45 = *(v7 + 2088);
    while (1)
    {
      v46 = *v45;
      v45 += 18;
      if (v46 < 0)
      {
        break;
      }

      if (v43 == ++v44)
      {
        LODWORD(v44) = *(v7 + 2104);
        break;
      }
    }
  }

  else
  {
    LODWORD(v44) = 0;
  }

  while (v44 != v43)
  {
    v47 = *(v7 + 2088) + 72 * v44;
    v527.i64[0] = *(v47 + 8);
    v48 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2320), &v527);
    if (v48 != -1)
    {
      v49 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2264, *(*(v7 + 2328) + 16 * v48 + 8));
      v50 = *(v47 + 48);
      if (v50)
      {
        v1 = 0;
        v51 = (*(v47 + 32) + 8);
        while (1)
        {
          v52 = *v51;
          v51 += 6;
          if (v52 < 0)
          {
            break;
          }

          if (v50 == ++v1)
          {
            LODWORD(v1) = *(v47 + 48);
            break;
          }
        }
      }

      else
      {
        LODWORD(v1) = 0;
      }

LABEL_73:
      while (v1 != v50)
      {
        WeakRetained = objc_loadWeakRetained((*(v47 + 32) + 24 * v1 + 16));
        if (WeakRetained)
        {
          v54 = WeakRetained;
          re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::checkRenderOptionChanges(v49, WeakRetained - 1, v444, v493);
        }

        v55 = *(v47 + 48);
        if (v55 <= v1 + 1)
        {
          v55 = v1 + 1;
        }

        while (v55 - 1 != v1)
        {
          LODWORD(v1) = v1 + 1;
          if ((*(*(v47 + 32) + 24 * v1 + 8) & 0x80000000) != 0)
          {
            goto LABEL_73;
          }
        }

        LODWORD(v1) = v55;
      }
    }

    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v47 + 16);
    if (HIDWORD(v524))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
    }

    else
    {
      *&v493[16] = 0;
      ++*&v493[24];
    }

    v56 = *(v7 + 2104);
    if (v56 <= v44 + 1)
    {
      v56 = v44 + 1;
    }

    while (v56 - 1 != v44)
    {
      LODWORD(v44) = v44 + 1;
      if ((*(*(v7 + 2088) + 72 * v44) & 0x80000000) != 0)
      {
        goto LABEL_83;
      }
    }

    LODWORD(v44) = v56;
LABEL_83:
    ;
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = v413;
  v57 = *(*(v7 + 2328) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2320), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 2432, v57);
  v58 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2264, v57);
  v59 = *(*v58 + 224);
  v60 = v58[3];
  v61 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v58[2] + 8, v60);
  if (*(v61 + 40))
  {
    v62 = (*(*v59 + 24))(v59, v442, v58, v60, v61, v436);
  }

  else
  {
    v62 = 0;
  }

  v63 = v58[5];
  v64 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v58[2] + 8, v63);
  if (*(v64 + 40))
  {
    v62 |= (*(*v59 + 32))(v59, v442, v58, v63, v64, v436);
  }

  v65 = v58[6];
  v66 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v58[2] + 8, v65);
  if (*(v66 + 40))
  {
    if (((v62 | (*(*v59 + 40))(v59, v442, v58, v65, v66, v436)) & 1) == 0)
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (v62)
  {
LABEL_91:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 2432, v57);
  }

LABEL_92:
  v67 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 2264);
  if (v431)
  {
    goto LABEL_358;
  }

  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v68 = *(v7 + 344);
  if (v68)
  {
    v69 = 0;
    v70 = *(v7 + 328);
    while (1)
    {
      v71 = *v70;
      v70 += 18;
      if (v71 < 0)
      {
        break;
      }

      if (v68 == ++v69)
      {
        LODWORD(v69) = *(v7 + 344);
        break;
      }
    }
  }

  else
  {
    LODWORD(v69) = 0;
  }

  if (v69 != v68)
  {
    LODWORD(v1) = 72;
    do
    {
      v72 = *(v7 + 328) + 72 * v69;
      v527.i64[0] = *(v72 + 8);
      v73 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 560), &v527);
      if (v73 != -1)
      {
        v74 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 504, *(*(v7 + 568) + 16 * v73 + 8));
        v75 = *(v72 + 48);
        if (v75)
        {
          v76 = 0;
          v77 = (*(v72 + 32) + 8);
          while (1)
          {
            v78 = *v77;
            v77 += 6;
            if (v78 < 0)
            {
              break;
            }

            if (v75 == ++v76)
            {
              LODWORD(v76) = *(v72 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v76) = 0;
        }

LABEL_118:
        while (v76 != v75)
        {
          v79 = objc_loadWeakRetained((*(v72 + 32) + 24 * v76 + 16));
          if (v79)
          {
            v80 = v79;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::checkRenderOptionChanges(v74, v79 - 1, v444, v493);
          }

          v81 = *(v72 + 48);
          if (v81 <= v76 + 1)
          {
            v81 = v76 + 1;
          }

          while (v81 - 1 != v76)
          {
            LODWORD(v76) = v76 + 1;
            if ((*(*(v72 + 32) + 24 * v76 + 8) & 0x80000000) != 0)
            {
              goto LABEL_118;
            }
          }

          LODWORD(v76) = v81;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v72 + 16);
      if (HIDWORD(v524))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
      }

      else
      {
        *&v493[16] = 0;
        ++*&v493[24];
      }

      v82 = *(v7 + 344);
      if (v82 <= v69 + 1)
      {
        v82 = v69 + 1;
      }

      while (v82 - 1 != v69)
      {
        LODWORD(v69) = v69 + 1;
        if ((*(*(v7 + 328) + 72 * v69) & 0x80000000) != 0)
        {
          goto LABEL_128;
        }
      }

      LODWORD(v69) = v82;
LABEL_128:
      ;
    }

    while (v69 != v68);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v83 = *(v7 + 784);
  if (v83)
  {
    v84 = 0;
    v85 = *(v7 + 768);
    while (1)
    {
      v86 = *v85;
      v85 += 18;
      if (v86 < 0)
      {
        break;
      }

      if (v83 == ++v84)
      {
        LODWORD(v84) = *(v7 + 784);
        break;
      }
    }
  }

  else
  {
    LODWORD(v84) = 0;
  }

  if (v84 != v83)
  {
    LODWORD(v1) = 72;
    do
    {
      v87 = *(v7 + 768) + 72 * v84;
      v527.i64[0] = *(v87 + 8);
      v88 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1000), &v527);
      if (v88 != -1)
      {
        v89 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 944, *(*(v7 + 1008) + 16 * v88 + 8));
        v90 = *(v87 + 48);
        if (v90)
        {
          v91 = 0;
          v92 = (*(v87 + 32) + 8);
          while (1)
          {
            v93 = *v92;
            v92 += 6;
            if (v93 < 0)
            {
              break;
            }

            if (v90 == ++v91)
            {
              LODWORD(v91) = *(v87 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v91) = 0;
        }

LABEL_152:
        while (v91 != v90)
        {
          v94 = objc_loadWeakRetained((*(v87 + 32) + 24 * v91 + 16));
          if (v94)
          {
            v95 = v94;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::checkRenderOptionChanges(v89, v94 - 1, v444, v493);
          }

          v96 = *(v87 + 48);
          if (v96 <= v91 + 1)
          {
            v96 = v91 + 1;
          }

          while (v96 - 1 != v91)
          {
            LODWORD(v91) = v91 + 1;
            if ((*(*(v87 + 32) + 24 * v91 + 8) & 0x80000000) != 0)
            {
              goto LABEL_152;
            }
          }

          LODWORD(v91) = v96;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v87 + 16);
      if (HIDWORD(v524))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
      }

      else
      {
        *&v493[16] = 0;
        ++*&v493[24];
      }

      v97 = *(v7 + 784);
      if (v97 <= v84 + 1)
      {
        v97 = v84 + 1;
      }

      while (v97 - 1 != v84)
      {
        LODWORD(v84) = v84 + 1;
        if ((*(*(v7 + 768) + 72 * v84) & 0x80000000) != 0)
        {
          goto LABEL_162;
        }
      }

      LODWORD(v84) = v97;
LABEL_162:
      ;
    }

    while (v84 != v83);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v98 = *(v7 + 1224);
  if (v98)
  {
    v99 = 0;
    v100 = *(v7 + 1208);
    while (1)
    {
      v101 = *v100;
      v100 += 18;
      if (v101 < 0)
      {
        break;
      }

      if (v98 == ++v99)
      {
        LODWORD(v99) = *(v7 + 1224);
        break;
      }
    }
  }

  else
  {
    LODWORD(v99) = 0;
  }

  if (v99 != v98)
  {
    LODWORD(v1) = 72;
    do
    {
      v102 = *(v7 + 1208) + 72 * v99;
      v527.i64[0] = *(v102 + 8);
      v103 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1440), &v527);
      if (v103 != -1)
      {
        v104 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1384, *(*(v7 + 1448) + 16 * v103 + 8));
        v105 = *(v102 + 48);
        if (v105)
        {
          v106 = 0;
          v107 = (*(v102 + 32) + 8);
          while (1)
          {
            v108 = *v107;
            v107 += 6;
            if (v108 < 0)
            {
              break;
            }

            if (v105 == ++v106)
            {
              LODWORD(v106) = *(v102 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v106) = 0;
        }

LABEL_186:
        while (v106 != v105)
        {
          v109 = objc_loadWeakRetained((*(v102 + 32) + 24 * v106 + 16));
          if (v109)
          {
            v110 = v109;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::checkRenderOptionChanges(v104, v109 - 1, v444, v493);
          }

          v111 = *(v102 + 48);
          if (v111 <= v106 + 1)
          {
            v111 = v106 + 1;
          }

          while (v111 - 1 != v106)
          {
            LODWORD(v106) = v106 + 1;
            if ((*(*(v102 + 32) + 24 * v106 + 8) & 0x80000000) != 0)
            {
              goto LABEL_186;
            }
          }

          LODWORD(v106) = v111;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v102 + 16);
      if (HIDWORD(v524))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
      }

      else
      {
        *&v493[16] = 0;
        ++*&v493[24];
      }

      v112 = *(v7 + 1224);
      if (v112 <= v99 + 1)
      {
        v112 = v99 + 1;
      }

      while (v112 - 1 != v99)
      {
        LODWORD(v99) = v99 + 1;
        if ((*(*(v7 + 1208) + 72 * v99) & 0x80000000) != 0)
        {
          goto LABEL_196;
        }
      }

      LODWORD(v99) = v112;
LABEL_196:
      ;
    }

    while (v99 != v98);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v113 = *(v7 + 1664);
  if (v113)
  {
    v114 = 0;
    v115 = *(v7 + 1648);
    while (1)
    {
      v116 = *v115;
      v115 += 18;
      if (v116 < 0)
      {
        break;
      }

      if (v113 == ++v114)
      {
        LODWORD(v114) = *(v7 + 1664);
        break;
      }
    }
  }

  else
  {
    LODWORD(v114) = 0;
  }

  if (v114 != v113)
  {
    LODWORD(v1) = 72;
    do
    {
      v117 = *(v7 + 1648) + 72 * v114;
      v527.i64[0] = *(v117 + 8);
      v118 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1880), &v527);
      if (v118 != -1)
      {
        v119 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1824, *(*(v7 + 1888) + 16 * v118 + 8));
        v120 = *(v117 + 48);
        if (v120)
        {
          v121 = 0;
          v122 = (*(v117 + 32) + 8);
          while (1)
          {
            v123 = *v122;
            v122 += 6;
            if (v123 < 0)
            {
              break;
            }

            if (v120 == ++v121)
            {
              LODWORD(v121) = *(v117 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v121) = 0;
        }

LABEL_220:
        while (v121 != v120)
        {
          v124 = objc_loadWeakRetained((*(v117 + 32) + 24 * v121 + 16));
          if (v124)
          {
            v125 = v124;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::checkRenderOptionChanges(v119, v124 - 1, v444, v493);
          }

          v126 = *(v117 + 48);
          if (v126 <= v121 + 1)
          {
            v126 = v121 + 1;
          }

          while (v126 - 1 != v121)
          {
            LODWORD(v121) = v121 + 1;
            if ((*(*(v117 + 32) + 24 * v121 + 8) & 0x80000000) != 0)
            {
              goto LABEL_220;
            }
          }

          LODWORD(v121) = v126;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v117 + 16);
      if (HIDWORD(v524))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
      }

      else
      {
        *&v493[16] = 0;
        ++*&v493[24];
      }

      v127 = *(v7 + 1664);
      if (v127 <= v114 + 1)
      {
        v127 = v114 + 1;
      }

      while (v127 - 1 != v114)
      {
        LODWORD(v114) = v114 + 1;
        if ((*(*(v7 + 1648) + 72 * v114) & 0x80000000) != 0)
        {
          goto LABEL_230;
        }
      }

      LODWORD(v114) = v127;
LABEL_230:
      ;
    }

    while (v114 != v113);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v128 = *(v7 + 2544);
  if (v128)
  {
    v129 = 0;
    v130 = *(v7 + 2528);
    while (1)
    {
      v131 = *v130;
      v130 += 18;
      if (v131 < 0)
      {
        break;
      }

      if (v128 == ++v129)
      {
        LODWORD(v129) = *(v7 + 2544);
        break;
      }
    }
  }

  else
  {
    LODWORD(v129) = 0;
  }

  if (v129 != v128)
  {
    LODWORD(v1) = 72;
    do
    {
      v132 = *(v7 + 2528) + 72 * v129;
      v527.i64[0] = *(v132 + 8);
      v133 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2760), &v527);
      if (v133 != -1)
      {
        v134 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2704, *(*(v7 + 2768) + 16 * v133 + 8));
        v135 = *(v132 + 48);
        if (v135)
        {
          v136 = 0;
          v137 = (*(v132 + 32) + 8);
          while (1)
          {
            v138 = *v137;
            v137 += 6;
            if (v138 < 0)
            {
              break;
            }

            if (v135 == ++v136)
            {
              LODWORD(v136) = *(v132 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v136) = 0;
        }

LABEL_254:
        while (v136 != v135)
        {
          v139 = objc_loadWeakRetained((*(v132 + 32) + 24 * v136 + 16));
          if (v139)
          {
            v140 = v139;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::checkRenderOptionChanges(v134, v139 - 1, v444, v493);
          }

          v141 = *(v132 + 48);
          if (v141 <= v136 + 1)
          {
            v141 = v136 + 1;
          }

          while (v141 - 1 != v136)
          {
            LODWORD(v136) = v136 + 1;
            if ((*(*(v132 + 32) + 24 * v136 + 8) & 0x80000000) != 0)
            {
              goto LABEL_254;
            }
          }

          LODWORD(v136) = v141;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v132 + 16);
      if (HIDWORD(v524))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
      }

      else
      {
        *&v493[16] = 0;
        ++*&v493[24];
      }

      v142 = *(v7 + 2544);
      if (v142 <= v129 + 1)
      {
        v142 = v129 + 1;
      }

      while (v142 - 1 != v129)
      {
        LODWORD(v129) = v129 + 1;
        if ((*(*(v7 + 2528) + 72 * v129) & 0x80000000) != 0)
        {
          goto LABEL_264;
        }
      }

      LODWORD(v129) = v142;
LABEL_264:
      ;
    }

    while (v129 != v128);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = 0;
  *&v493[8] = 0;
  *&v493[16] = 0;
  *&v493[24] = 0;
  v523 = 0u;
  v524 = 0u;
  v525 = 0;
  v526 = 0x7FFFFFFFLL;
  v143 = *(v7 + 2984);
  if (v143)
  {
    v144 = 0;
    v145 = *(v7 + 2968);
    while (1)
    {
      v146 = *v145;
      v145 += 18;
      if (v146 < 0)
      {
        break;
      }

      if (v143 == ++v144)
      {
        LODWORD(v144) = *(v7 + 2984);
        break;
      }
    }
  }

  else
  {
    LODWORD(v144) = 0;
  }

  if (v144 != v143)
  {
    LODWORD(v1) = 72;
    do
    {
      v147 = *(v7 + 2968) + 72 * v144;
      v527.i64[0] = *(v147 + 8);
      v148 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 3200), &v527);
      if (v148 != -1)
      {
        v149 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 3144, *(*(v7 + 3208) + 16 * v148 + 8));
        v150 = *(v147 + 48);
        if (v150)
        {
          v151 = 0;
          v152 = (*(v147 + 32) + 8);
          while (1)
          {
            v153 = *v152;
            v152 += 6;
            if (v153 < 0)
            {
              break;
            }

            if (v150 == ++v151)
            {
              LODWORD(v151) = *(v147 + 48);
              break;
            }
          }
        }

        else
        {
          LODWORD(v151) = 0;
        }

LABEL_288:
        while (v151 != v150)
        {
          v154 = objc_loadWeakRetained((*(v147 + 32) + 24 * v151 + 16));
          if (v154)
          {
            v155 = v154;
            re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::checkRenderOptionChanges(v149, v154 - 1, v444, v493);
          }

          v156 = *(v147 + 48);
          if (v156 <= v151 + 1)
          {
            v156 = v151 + 1;
          }

          while (v156 - 1 != v151)
          {
            LODWORD(v151) = v151 + 1;
            if ((*(*(v147 + 32) + 24 * v151 + 8) & 0x80000000) != 0)
            {
              goto LABEL_288;
            }
          }

          LODWORD(v151) = v156;
        }
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(v147 + 16);
      if (HIDWORD(v524))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(&v523);
      }

      else
      {
        *&v493[16] = 0;
        ++*&v493[24];
      }

      v157 = *(v7 + 2984);
      if (v157 <= v144 + 1)
      {
        v157 = v144 + 1;
      }

      while (v157 - 1 != v144)
      {
        LODWORD(v144) = v144 + 1;
        if ((*(*(v7 + 2968) + 72 * v144) & 0x80000000) != 0)
        {
          goto LABEL_298;
        }
      }

      LODWORD(v144) = v157;
LABEL_298:
      ;
    }

    while (v144 != v143);
  }

  re::SmallHashSet<unsigned long long,32ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::~SmallHashSet(v493);
  *v493 = v413;
  v158 = *(*(v7 + 568) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 560), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 672, v158);
  v159 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 504, v158);
  v160 = *(*v159 + 224);
  v161 = v159[3];
  v162 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v159[2] + 8, v161);
  if (*(v162 + 40))
  {
    v163 = (*(*v160 + 24))(v160, v442, v159, v161, v162, v436);
  }

  else
  {
    v163 = 0;
  }

  v164 = v159[5];
  v165 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v159[2] + 8, v164);
  if (*(v165 + 40))
  {
    v163 |= (*(*v160 + 32))(v160, v442, v159, v164, v165, v436);
  }

  v166 = v159[6];
  v167 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v159[2] + 8, v166);
  if (*(v167 + 40))
  {
    if (((v163 | (*(*v160 + 40))(v160, v442, v159, v166, v167, v436)) & 1) == 0)
    {
      goto LABEL_307;
    }

    goto LABEL_306;
  }

  if (v163)
  {
LABEL_306:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 672, v158);
  }

LABEL_307:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 504);
  *v493 = v413;
  v168 = *(*(v7 + 1008) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1000), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 1112, v168);
  v169 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 944, v168);
  v170 = *(*v169 + 224);
  v171 = v169[3];
  v172 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v169[2] + 8, v171);
  if (*(v172 + 40))
  {
    v173 = (*(*v170 + 24))(v170, v442, v169, v171, v172, v436);
  }

  else
  {
    v173 = 0;
  }

  v174 = v169[5];
  v175 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v169[2] + 8, v174);
  if (*(v175 + 40))
  {
    v173 |= (*(*v170 + 32))(v170, v442, v169, v174, v175, v436);
  }

  v176 = v169[6];
  v177 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v169[2] + 8, v176);
  if (*(v177 + 40))
  {
    if (((v173 | (*(*v170 + 40))(v170, v442, v169, v176, v177, v436)) & 1) == 0)
    {
      goto LABEL_317;
    }

    goto LABEL_316;
  }

  if (v173)
  {
LABEL_316:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 1112, v168);
  }

LABEL_317:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 944);
  *v493 = v413;
  v178 = *(*(v7 + 1448) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1440), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 1552, v178);
  v179 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1384, v178);
  v180 = *(*v179 + 224);
  v181 = v179[3];
  v182 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v179[2] + 8, v181);
  if (*(v182 + 40))
  {
    v183 = (*(*v180 + 24))(v180, v442, v179, v181, v182, v436);
  }

  else
  {
    v183 = 0;
  }

  v184 = v179[5];
  v185 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v179[2] + 8, v184);
  if (*(v185 + 40))
  {
    v183 |= (*(*v180 + 32))(v180, v442, v179, v184, v185, v436);
  }

  v186 = v179[6];
  v187 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v179[2] + 8, v186);
  if (*(v187 + 40))
  {
    if (((v183 | (*(*v180 + 40))(v180, v442, v179, v186, v187, v436)) & 1) == 0)
    {
      goto LABEL_327;
    }

    goto LABEL_326;
  }

  if (v183)
  {
LABEL_326:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 1552, v178);
  }

LABEL_327:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 1384);
  *v493 = v413;
  v188 = *(*(v7 + 1888) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 1880), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 1992, v188);
  v189 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 1824, v188);
  v190 = *(*v189 + 224);
  v191 = v189[3];
  v192 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v189[2] + 8, v191);
  if (*(v192 + 40))
  {
    v193 = (*(*v190 + 24))(v190, v442, v189, v191, v192, v436);
  }

  else
  {
    v193 = 0;
  }

  v194 = v189[5];
  v195 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v189[2] + 8, v194);
  if (*(v195 + 40))
  {
    v193 |= (*(*v190 + 32))(v190, v442, v189, v194, v195, v436);
  }

  v196 = v189[6];
  v197 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v189[2] + 8, v196);
  if (*(v197 + 40))
  {
    if (((v193 | (*(*v190 + 40))(v190, v442, v189, v196, v197, v436)) & 1) == 0)
    {
      goto LABEL_337;
    }

    goto LABEL_336;
  }

  if (v193)
  {
LABEL_336:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 1992, v188);
  }

LABEL_337:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 1824);
  *v493 = v413;
  v198 = *(*(v7 + 2768) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 2760), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 2872, v198);
  v199 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 2704, v198);
  v200 = *(*v199 + 224);
  v201 = v199[3];
  v202 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v199[2] + 8, v201);
  if (*(v202 + 40))
  {
    v203 = (*(*v200 + 24))(v200, v442, v199, v201, v202, v436);
  }

  else
  {
    v203 = 0;
  }

  v204 = v199[5];
  v205 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v199[2] + 8, v204);
  if (*(v205 + 40))
  {
    v203 |= (*(*v200 + 32))(v200, v442, v199, v204, v205, v436);
  }

  v206 = v199[6];
  v207 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v199[2] + 8, v206);
  if (*(v207 + 40))
  {
    if (((v203 | (*(*v200 + 40))(v200, v442, v199, v206, v207, v436)) & 1) == 0)
    {
      goto LABEL_347;
    }

    goto LABEL_346;
  }

  if (v203)
  {
LABEL_346:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 2872, v198);
  }

LABEL_347:
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 2704);
  *v493 = v413;
  v208 = *(*(v7 + 3208) + 16 * re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v7 + 3200), v493) + 8);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(v7 + 3312, v208);
  v209 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](v7 + 3144, v208);
  v210 = *(*v209 + 224);
  v211 = v209[3];
  v212 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v209[2] + 8, v211);
  if (*(v212 + 40))
  {
    v213 = (*(*v210 + 24))(v210, v442, v209, v211, v212, v436);
  }

  else
  {
    v213 = 0;
  }

  v214 = v209[5];
  v215 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v209[2] + 8, v214);
  if (*(v215 + 40))
  {
    v213 |= (*(*v210 + 32))(v210, v442, v209, v214, v215, v436);
  }

  v216 = v209[6];
  v217 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v209[2] + 8, v216);
  if (!*(v217 + 40))
  {
    if (!v213)
    {
      goto LABEL_357;
    }

    goto LABEL_356;
  }

  if ((v213 | (*(*v210 + 40))(v210, v442, v209, v216, v217, v436)))
  {
LABEL_356:
    re::DynamicBitset<unsigned long long,64ul>::setBit(v7 + 3312, v208);
  }

LABEL_357:
  v67 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v7 + 3144);
LABEL_358:
  v218 = HIDWORD(v490);
  v405 = v433 + 1;
  if (HIDWORD(v490))
  {
    v408 = v491;
    v1 = 0;
    if (v491)
    {
      v219 = v490;
      while ((*v219 & 0x80000000) == 0)
      {
        v219 += 80;
        if (v491 == ++v1)
        {
          LODWORD(v1) = v491;
          break;
        }
      }
    }

    else
    {
      v408 = 0;
    }

    v220 = &v489;
    v406 = &v489;
  }

  else
  {
    v220 = &v450;
    v406 = (&v450 + 312 * v449.i64[0]);
    v408 = v449.i32[0];
  }

  v221 = 0;
  v222 = 0;
  v223 = 0;
  v429 = 0;
  v432 = 0;
  v434 = 0;
  v410 = HIDWORD(v490);
LABEL_368:
  while (1)
  {
    v427 = v222;
    v426 = v223;
    if (!v218)
    {
      break;
    }

    if (v408 == v1)
    {
      goto LABEL_401;
    }

    v224 = v221;
    v225 = v220[1].i64[0] + 320 * v1;
    v226 = (v225 + 8);
    v227 = (v225 + 32);
LABEL_373:
    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v413, v226->i64[1], v412, v443);
    v414 = *(v227 + 3);
    v417 = *(v227 + 8);
    v419 = *(v227 + 13);
    v421 = *(v227 + 18);
    v423 = *(v227 + 23);
    v425 = *(v227 + 28);
    v445[0] = v443[0].i64[0] >> 1;
    v228 = re::RenderFrameData::stream((v412 + 33), v445);
    re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::findEntry<std::type_index>(v228, v446, v493);
    if (*&v493[12] == 0x7FFFFFFF)
    {
      v229 = *(*(v228 + 48) + 8);
      v230 = (*(*v229 + 32))(v229, 56, 8);
      *v230 = 0;
      *(v230 + 8) = 0;
      *(v230 + 16) = 1;
      *(v230 + 32) = 0;
      *(v230 + 40) = 0;
      *(v230 + 24) = 0;
      *(v230 + 48) = 0;
      v231 = re::BucketArray<re::LightInfoArrays,4ul>::init(v230, v229, 1uLL);
      v232 = re::globalAllocators(v231)[2];
      v527.i64[0] = &unk_1F5CEF150;
      v527.i64[1] = v229;
      v528.i64[1] = v232;
      v529.i64[0] = &v527;
      *&v493[8] = v230;
      *v493 = std::__any_imp::_SmallHandler<re::BucketArray<re::LightInfoArrays,4ul> *>::__handle[abi:nn200100];
      *(&v494 + 1) = v232;
      v495 = 0;
      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::operator=<24ul>(&v493[32], &v527);
      v233 = re::HashTable<std::type_index,re::RenderFrameDataArrayWrapper,re::Hash<std::type_index>,re::EqualTo<std::type_index>,true,false>::addNew(v228, v446, v493);
      if (v495)
      {
        *v447 = v493;
        (*(*v495 + 16))(v495, v447);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v493[32]);
      if (*v493)
      {
        (*v493)(0, v493, 0, 0, 0);
      }

      re::FunctionBase<24ul,void ()(re::RenderFrameDataArrayWrapper *)>::destroyCallable(&v527);
    }

    else
    {
      v233 = (*(v228 + 16) + 96 * *&v493[12] + 16);
    }

    v235 = *v227;
    v236 = *(v227 + 2);
    *&v493[8] = *(v227 + 1);
    *(v227 + 1) = 0;
    *&v493[16] = v236;
    *(v227 + 2) = 0;
    *&v493[24] = *(v227 + 3);
    *(v227 + 3) = 0;
    v237 = *(v227 + 6);
    *&v493[40] = *(v227 + 5);
    *(v227 + 5) = 0;
    ++*(v227 + 8);
    *&v494 = v237;
    *(v227 + 6) = 0;
    v238 = *(v227 + 8);
    *(&v494 + 1) = *(v227 + 7);
    *(v227 + 7) = 0;
    v495 = v238;
    *(v227 + 8) = 0;
    v239 = *(v227 + 11);
    v497 = *(v227 + 10);
    *(v227 + 10) = 0;
    ++*(v227 + 18);
    v496 = 1;
    v498 = v239;
    *(v227 + 11) = 0;
    v240 = *(v227 + 13);
    v499 = *(v227 + 12);
    *(v227 + 12) = 0;
    v500 = v240;
    *(v227 + 13) = 0;
    v241 = *(v227 + 16);
    v502 = *(v227 + 15);
    *(v227 + 15) = 0;
    ++*(v227 + 28);
    v501 = 1;
    v503 = v241;
    *(v227 + 16) = 0;
    v242 = *(v227 + 18);
    v504 = *(v227 + 17);
    *(v227 + 17) = 0;
    v505 = v242;
    *(v227 + 18) = 0;
    v243 = *(v227 + 21);
    v507 = *(v227 + 20);
    *(v227 + 20) = 0;
    ++*(v227 + 38);
    v506 = 1;
    v508 = v243;
    *(v227 + 21) = 0;
    v244 = *(v227 + 23);
    v509 = *(v227 + 22);
    *(v227 + 22) = 0;
    v510 = v244;
    *(v227 + 23) = 0;
    v245 = *(v227 + 26);
    v512 = *(v227 + 25);
    *(v227 + 25) = 0;
    ++*(v227 + 48);
    v511 = 1;
    v513 = v245;
    *(v227 + 26) = 0;
    v246 = *(v227 + 28);
    v514 = *(v227 + 27);
    *(v227 + 27) = 0;
    v515 = v246;
    *(v227 + 28) = 0;
    v247 = *(v227 + 31);
    v517 = *(v227 + 30);
    *(v227 + 30) = 0;
    ++*(v227 + 58);
    v516 = 1;
    v518 = v247;
    *(v227 + 31) = 0;
    v248 = *(v227 + 33);
    v519 = *(v227 + 32);
    *(v227 + 32) = 0;
    v520 = v248;
    *(v227 + 33) = 0;
    v522 = *(v227 + 35);
    *(v227 + 35) = 0;
    ++*(v227 + 68);
    v521 = 1;
    v249 = *(v234 + 40);
    *&v493[32] = 1;
    v250 = *(v234 + 8);
    *v493 = v235;
    if (v249 + 1 > 4 * v250)
    {
      re::BucketArray<re::LightInfoArrays,4ul>::setBucketsCapacity(v234, (v249 + 4) >> 2);
      v250 = *(v234 + 8);
    }

    if (v250 <= v249 >> 2)
    {
      v446[0] = 0;
      v530 = 0u;
      v531 = 0u;
      v528 = 0u;
      v529 = 0u;
      v527 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v447 = 136315906;
      *&v447[4] = "operator[]";
      *&v447[12] = 1024;
      *&v447[14] = 858;
      *&v447[18] = 2048;
      *&v447[20] = v249 >> 2;
      *&v447[28] = 2048;
      *&v447[30] = v250;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_545:
      re::internal::assertLog(4, v254, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
      _os_crash();
      __break(1u);
      goto LABEL_546;
    }

    if (*(v234 + 16))
    {
      v251 = v234 + 24;
    }

    else
    {
      v251 = *(v234 + 32);
    }

    v250 = v224;
    v252 = *(v251 + 8 * (v249 >> 2));
    ++*(v234 + 40);
    ++*(v234 + 48);
    v253 = v252 + 288 * (v249 & 3);
    *v253 = *v493;
    *(v253 + 40) = 0;
    *(v253 + 16) = 0;
    *(v253 + 24) = 0;
    *(v253 + 8) = 0;
    *(v253 + 32) = 0;
    *(v253 + 8) = *&v493[8];
    *&v493[8] = 0;
    *(v253 + 16) = *&v493[16];
    *&v493[16] = 0;
    *(v253 + 24) = *&v493[24];
    *&v493[24] = 0;
    *(v253 + 40) = *&v493[40];
    *&v493[40] = 0;
    ++*&v493[32];
    ++*(v253 + 32);
    *(v253 + 80) = 0;
    *(v253 + 56) = 0;
    *(v253 + 64) = 0;
    *(v253 + 48) = 0;
    *(v253 + 72) = 0;
    *(v253 + 48) = v494;
    *&v494 = 0;
    *(v253 + 56) = *(&v494 + 1);
    *(&v494 + 1) = 0;
    *(v253 + 64) = v495;
    v495 = 0;
    *(v253 + 80) = v497;
    v497 = 0;
    ++v496;
    ++*(v253 + 72);
    *(v253 + 120) = 0;
    *(v253 + 96) = 0;
    *(v253 + 104) = 0;
    *(v253 + 88) = 0;
    *(v253 + 112) = 0;
    *(v253 + 88) = v498;
    v498 = 0;
    *(v253 + 96) = v499;
    v499 = 0;
    *(v253 + 104) = v500;
    v500 = 0;
    *(v253 + 120) = v502;
    v502 = 0;
    ++v501;
    ++*(v253 + 112);
    *(v253 + 160) = 0;
    *(v253 + 136) = 0;
    *(v253 + 144) = 0;
    *(v253 + 128) = 0;
    *(v253 + 152) = 0;
    *(v253 + 128) = v503;
    v503 = 0;
    *(v253 + 136) = v504;
    v504 = 0;
    *(v253 + 144) = v505;
    v505 = 0;
    *(v253 + 160) = v507;
    v507 = 0;
    ++v506;
    ++*(v253 + 152);
    *(v253 + 200) = 0;
    *(v253 + 176) = 0;
    *(v253 + 184) = 0;
    *(v253 + 168) = 0;
    *(v253 + 192) = 0;
    *(v253 + 168) = v508;
    v508 = 0;
    *(v253 + 176) = v509;
    v509 = 0;
    *(v253 + 184) = v510;
    v510 = 0;
    *(v253 + 200) = v512;
    v512 = 0;
    ++v511;
    ++*(v253 + 192);
    *(v253 + 240) = 0;
    *(v253 + 216) = 0;
    *(v253 + 224) = 0;
    *(v253 + 208) = 0;
    *(v253 + 232) = 0;
    *(v253 + 208) = v513;
    v513 = 0;
    *(v253 + 216) = v514;
    v514 = 0;
    *(v253 + 224) = v515;
    v515 = 0;
    *(v253 + 240) = v517;
    v517 = 0;
    v516 = 2;
    ++*(v253 + 232);
    *(v253 + 280) = 0;
    *(v253 + 256) = 0;
    *(v253 + 264) = 0;
    *(v253 + 248) = 0;
    *(v253 + 272) = 0;
    *(v253 + 248) = v518;
    v518 = 0;
    *(v253 + 256) = v519;
    v519 = 0;
    *(v253 + 264) = v520;
    v520 = 0;
    *(v253 + 280) = v522;
    v522 = 0;
    v521 = 2;
    ++*(v253 + 272);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v518);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v513);
    re::DynamicArray<re::DynamicLightShadowInfo>::deinit(&v508);
    re::DynamicArray<re::SpotLightInfo>::deinit(&v503);
    re::DynamicArray<re::RectAreaLightInfo>::deinit(&v498);
    re::DynamicArray<re::DirectionalLightInfo>::deinit(&v494);
    if (*&v493[8])
    {
      v254 = *&v493[40];
      if (*&v493[40])
      {
        (*(**&v493[8] + 40))();
      }
    }

    v255 = *(v234 + 40);
    if (!v255)
    {
      goto LABEL_545;
    }

    v67 = re::BucketArray<re::LightInfoArrays,4ul>::operator[](v234, v255 - 1);
    if (v443[0].i8[0])
    {
      if (v443[0].i8[0])
      {
      }
    }

    v429 = (v429 + v414);
    v434 += v417;
    v432 += v419;
    v223 = v421 + v426;
    v222 = v423 + v427;
    v221 = v425 + v250;
    v218 = v410;
    if (v410)
    {
      v256 = v1 + 1;
      if (v220[2].i32[0] <= (v1 + 1))
      {
        LODWORD(v1) = v1 + 1;
      }

      else
      {
        LODWORD(v1) = v220[2].i32[0];
      }

      while (v1 != v256)
      {
        v257 = v256;
        v258 = *(v220[1].i64[0] + 320 * v256++);
        if (v258 < 0)
        {
          LODWORD(v1) = v257;
          goto LABEL_368;
        }
      }
    }

    else
    {
      v220 = (v220 + 312);
    }
  }

  if (v220 != v406)
  {
    v224 = v221;
    v227 = &v220[1].i8[8];
    v226 = v220;
    goto LABEL_373;
  }

LABEL_401:
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v67);
  if (isStatisticCollectionEnabled)
  {
    isStatisticCollectionEnabled = re::profilerThreadContext(isStatisticCollectionEnabled);
    v260 = *(isStatisticCollectionEnabled + 152);
    if (v260)
    {
      v261 = v260[784].i64[0];
      if (v261 >= v429)
      {
        v261 = v429;
      }

      v260[784].i64[0] = v261;
      v262 = v260[784].i64[1];
      if (v262 <= v429)
      {
        v262 = v429;
      }

      v260[784].i64[1] = v262;
      v263 = vdupq_n_s64(1uLL);
      v263.i64[0] = v429;
      v260[785] = vaddq_s64(v260[785], v263);
      *(isStatisticCollectionEnabled + 184) = 0;
    }
  }

  v264 = re::ProfilerConfig::isStatisticCollectionEnabled(isStatisticCollectionEnabled);
  if (v264)
  {
    v264 = re::profilerThreadContext(v264);
    v265 = *(v264 + 152);
    if (v265)
    {
      v266 = v265[792].u64[0];
      if (v266 >= v434)
      {
        v266 = v434;
      }

      v265[792].i64[0] = v266;
      v267 = v265[792].u64[1];
      if (v267 <= v434)
      {
        v267 = v434;
      }

      v265[792].i64[1] = v267;
      v268 = vdupq_n_s64(1uLL);
      v268.i64[0] = v434;
      v265[793] = vaddq_s64(v265[793], v268);
      *(v264 + 184) = 0;
    }
  }

  v269 = re::ProfilerConfig::isStatisticCollectionEnabled(v264);
  if (v269)
  {
    v269 = re::profilerThreadContext(v269);
    v270 = *(v269 + 152);
    if (v270)
    {
      v271 = v270[832].u64[0];
      if (v271 >= v432)
      {
        v271 = v432;
      }

      v270[832].i64[0] = v271;
      v272 = v270[832].u64[1];
      if (v272 <= v432)
      {
        v272 = v432;
      }

      v270[832].i64[1] = v272;
      v273 = vdupq_n_s64(1uLL);
      v273.i64[0] = v432;
      v270[833] = vaddq_s64(v270[833], v273);
      *(v269 + 184) = 0;
    }
  }

  v274 = re::ProfilerConfig::isStatisticCollectionEnabled(v269);
  if (v274)
  {
    v274 = re::profilerThreadContext(v274);
    v275 = *(v274 + 152);
    if (v275)
    {
      v276 = v275[816].u64[0];
      if (v276 >= v223)
      {
        v276 = v223;
      }

      v275[816].i64[0] = v276;
      v277 = v275[816].u64[1];
      if (v277 <= v223)
      {
        v277 = v223;
      }

      v275[816].i64[1] = v277;
      v278 = vdupq_n_s64(1uLL);
      v278.i64[0] = v223;
      v275[817] = vaddq_s64(v275[817], v278);
      *(v274 + 184) = 0;
    }
  }

  v279 = v223 + v432;
  v280 = re::ProfilerConfig::isStatisticCollectionEnabled(v274);
  if (v280)
  {
    v280 = re::profilerThreadContext(v280);
    v281 = *(v280 + 152);
    if (v281)
    {
      v282 = v281[800].u64[0];
      if (v282 >= v222)
      {
        v282 = v222;
      }

      v281[800].i64[0] = v282;
      v283 = v281[800].u64[1];
      if (v283 <= v222)
      {
        v283 = v222;
      }

      v281[800].i64[1] = v283;
      v284 = vdupq_n_s64(1uLL);
      v284.i64[0] = v222;
      v281[801] = vaddq_s64(v281[801], v284);
      *(v280 + 184) = 0;
    }
  }

  v285 = re::ProfilerConfig::isStatisticCollectionEnabled(v280);
  if (v285)
  {
    v285 = re::profilerThreadContext(v285);
    v286 = *(v285 + 152);
    if (v286)
    {
      v287 = v286[848].u64[0];
      if (v287 >= v221)
      {
        v287 = v221;
      }

      v286[848].i64[0] = v287;
      v288 = v286[848].u64[1];
      if (v288 <= v221)
      {
        v288 = v221;
      }

      v286[848].i64[1] = v288;
      v289 = vdupq_n_s64(1uLL);
      v289.i64[0] = v221;
      v286[849] = vaddq_s64(v286[849], v289);
      *(v285 + 184) = 0;
    }
  }

  v290 = v429 + v434 + v222 + v221 + v279;
  v291 = re::ProfilerConfig::isStatisticCollectionEnabled(v285);
  if (v291)
  {
    v292 = re::profilerThreadContext(v291);
    v293 = *(v292 + 152);
    if (v293)
    {
      v294 = v293[768].i64[0];
      if (v294 >= v290)
      {
        v294 = v429 + v434 + v222 + v221 + v279;
      }

      v293[768].i64[0] = v294;
      v295 = v293[768].i64[1];
      if (v295 <= v290)
      {
        v295 = v429 + v434 + v222 + v221 + v279;
      }

      v293[768].i64[1] = v295;
      v296 = vdupq_n_s64(1uLL);
      v296.i64[0] = v429 + v434 + v222 + v221 + v279;
      v293[769] = vaddq_s64(v293[769], v296);
      *(v292 + 184) = 0;
    }
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear(&v449);
  re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(&v489);
  __src.i64[0] = 0;
  __src.i32[2] = 0;
  re::HashTable<re::LightGroupInWorldRoot,re::LightInfoArrays,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::deinit(&v489);
  v297 = re::DynamicInlineArray<re::KeyValuePair<re::LightGroupInWorldRoot,re::LightInfoArrays>,16ul>::clear(&v449);
  memset(v447, 0, 36);
  *&v447[36] = 0x7FFFFFFFLL;
  v298 = *(v7 + 232);
  v430 = *(v7 + 240);
  v299 = re::ecs2::SceneComponentTable::get((v413 + 200), re::ecs2::ComponentImpl<re::ecs2::FilterMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v299)
  {
    v300 = *(v299 + 400);
    v301 = *(v299 + 384);
    v407 = v298;
    v428 = re::RenderManager::perFrameAllocator(v298);
    if (v301)
    {
      v435 = &v300[v301];
      v250 = 1;
      v302.i64[0] = 0x7F0000007FLL;
      v302.i64[1] = 0x7F0000007FLL;
      v404 = vnegq_f32(v302);
      __asm { FMOV            V10.2S, #1.0 }

      do
      {
        v307 = *v300;
        v308 = (*v300)[1].i64[0];
        if (v308[32])
        {
          v309 = re::ecs2::EntityComponentCollection::get((v308 + 6), re::ecs2::ComponentImpl<re::ecs2::FrustumLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v310 = re::ecs2::EntityComponentCollection::get((v308 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v311 = re::ecs2::EntityComponentCollection::get((v308 + 6), re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v312 = re::ecs2::EntityComponentCollection::get((v308 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v313 = re::ecs2::EntityComponentCollection::get((v308 + 6), re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v314 = xmmword_1E3047670;
          if (v309 | v310 || v312 != 0)
          {
            v316 = v313;
            v317 = v307[2].i64[1];
            if (v317 || ((*(*v430 + 8))(&__src, xmmword_1E3047670), v318 = v307[2], v307[2] = __src, __src = v318, v319 = v307[3].i64[0], v307[3].i64[0] = v449.i64[0], v449.i64[0] = v319, re::AssetHandle::~AssetHandle(&__src), v317 = v307[2].i64[1], v314 = xmmword_1E3047670, v317))
            {
              v320 = atomic_load((v317 + 896));
              if (v320 == 2)
              {
                *v436 = v314;
                *&v436[16] = xmmword_1E3047680;
                *v437 = xmmword_1E30476A0;
                if (v309)
                {
                  v321 = *(v309 + 52) * 0.5;
                  v415 = v321 / tanf(*(v309 + 32) * 0.5);
                  re::TransformService::worldMatrix(*(v7 + 288), v308, 0, &v527);
                  v322 = 0;
                  *&v323 = 0;
                  *(&v323 + 1) = __PAIR64__(1.0, LODWORD(v415));
                  v324 = v527;
                  v325 = v528;
                  v326 = v529;
                  v327 = v530;
                  *v493 = xmmword_1E3047670;
                  *&v493[16] = xmmword_1E3047680;
                  *&v493[32] = xmmword_1E30476A0;
                  v494 = v323;
                  do
                  {
                    *(&__src + v322) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v324, COERCE_FLOAT(*&v493[v322])), v325, *&v493[v322], 1), v326, *&v493[v322], 2), v327, *&v493[v322], 3);
                    v322 += 16;
                  }

                  while (v322 != 64);
                  v420 = v449;
                  v422 = __src;
                  v418 = v450;
                  v424 = v451;
                  v328 = v415 + 0.00001;
                  v329 = *(v309 + 48);
                  v330 = *(v309 + 52);
                  v331 = v428;
LABEL_480:
                  *&v436[4] = 0;
                  *&v436[12] = 0;
                  *&v436[24] = 0;
                  *v437 = 0;
                  *&v437[20] = 0;
                  *&v437[12] = 0;
                  *v436 = v329;
                  *&v436[20] = v330;
                  *&v437[8] = v328;
                  *&v437[28] = 1065353216;
                  re::AssetHandle::AssetHandle(v446, &v307[2]);
                  v445[0] = v446;
                  v445[1] = 1;
                  v349 = (*(*v331 + 32))(v331, 24, 8);
                  v349[1] = 0;
                  v349[2] = 0;
                  *v349 = 0;
                  v350 = (*(*v331 + 32))(v331, 24, 8);
                  v350[1] = 0;
                  v350[2] = 0;
                  *v350 = 0;
                  v351 = (*(*v331 + 32))(v331, 24, 8);
                  v351[1] = 0;
                  v351[2] = 0;
                  *v351 = 0;
                  v352 = v308[26];
                  if (v352)
                  {
                    v353 = *(v352 + 104);
                    v354 = *(v352 + 88);
                    __src.i64[0] = v353;
                    __src.i64[1] = v354;
                    re::MaterialAssetHelper::extractMaterialDataFromMaterialParameterBlocks(v331, v445, &__src, v349, v350);
                  }

                  v409 = v351;
                  v411 = v350;
                  v416 = v349;
                  re::MaterialAssetHelper::extractMaterialDataFromMaterialAssetHandles(v331, v445, 0, v349, v351);
                  re::MeshAssetLoader::sharedCube(v430, 1, v444);
                  v355 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v444);
                  re::MeshAsset::boundingBoxForModel(v355, 0, &__src);
                  re::AABB::transform(&__src, v436, v443);
                  v356 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>(v444);
                  v357 = v331;
                  v358 = re::MeshAsset::partCountForModel(v356, 0);
                  v359 = (*(*v357 + 32))(v357, 24, 8);
                  v359[1] = 0;
                  v359[2] = 0;
                  *v359 = 0;
                  re::FixedArray<re::AABB>::init<>(v359, v357, v358);
                  if (v358)
                  {
                    v360 = 0;
                    v234 = 0;
                    v361 = 416;
                    while (re::MeshAsset::partCountForModel(v355, 0) > v234)
                    {
                      if (*(v355 + 1264) == 1)
                      {
                        v363 = *(v355 + 632);
                        if (!v363)
                        {
                          goto LABEL_549;
                        }

                        if (!*(v355 + 608))
                        {
                          goto LABEL_551;
                        }

                        v364 = re::DataArray<re::MeshModel>::get(v363 + 8, **(v355 + 624));
                        v250 = *(v364 + 56);
                        if (v250 <= v234)
                        {
                          goto LABEL_552;
                        }

                        v365 = (*(v364 + 64) + v361);
                      }

                      else
                      {
                        if (!*(v355 + 32))
                        {
                          goto LABEL_548;
                        }

                        v366 = *(v355 + 48);
                        v250 = *(v366 + 208);
                        if (v250 <= v234)
                        {
                          goto LABEL_550;
                        }

                        v365 = (*(v366 + 224) + (v234 << 8) + 96);
                      }

                      v250 = v359[1];
                      if (v250 <= v234)
                      {
                        goto LABEL_547;
                      }

                      v367 = (v359[2] + v360);
                      v368 = v365[1];
                      *v367 = *v365;
                      v367[1] = v368;
                      ++v234;
                      v361 += 544;
                      v360 += 32;
                      if (v358 == v234)
                      {
                        goto LABEL_495;
                      }
                    }

LABEL_546:
                    re::internal::assertLog(4, v362, "assertion failure: '%s' (%s:line %i) ", "partIndex < partCountForModel(modelIndex)", "boundingBoxForPartOnModel", 248);
                    _os_crash();
                    __break(1u);
LABEL_547:
                    v527.i64[0] = 0;
                    v451 = 0u;
                    v452 = 0u;
                    v449 = 0u;
                    v450 = 0u;
                    __src = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v493 = 136315906;
                    *&v493[4] = "operator[]";
                    *&v493[12] = 1024;
                    *&v493[14] = 468;
                    *&v493[18] = 2048;
                    *&v493[20] = v234;
                    *&v493[28] = 2048;
                    *&v493[30] = v250;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_548:
                    v527.i64[0] = 0;
                    v451 = 0u;
                    v452 = 0u;
                    v449 = 0u;
                    v450 = 0u;
                    __src = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v493 = 136315906;
                    *&v493[4] = "operator[]";
                    *&v493[12] = 1024;
                    *&v493[14] = 797;
                    *&v493[18] = 2048;
                    *&v493[20] = 0;
                    *&v493[28] = 2048;
                    *&v493[30] = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_549:
                    re::internal::assertLog(4, v362, "assertion failure: '%s' (%s:line %i) ", "meshManager != nullptr", "boundingBoxForPartOnModel", 251);
                    _os_crash();
                    __break(1u);
LABEL_550:
                    v527.i64[0] = 0;
                    v451 = 0u;
                    v452 = 0u;
                    v449 = 0u;
                    v450 = 0u;
                    __src = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v493 = 136315906;
                    *&v493[4] = "operator[]";
                    *&v493[12] = 1024;
                    *&v493[14] = 797;
                    *&v493[18] = 2048;
                    *&v493[20] = v234;
                    *&v493[28] = 2048;
                    *&v493[30] = v250;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_551:
                    v527.i64[0] = 0;
                    v451 = 0u;
                    v452 = 0u;
                    v449 = 0u;
                    v450 = 0u;
                    __src = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v493 = 136315906;
                    *&v493[4] = "operator[]";
                    *&v493[12] = 1024;
                    *&v493[14] = 797;
                    *&v493[18] = 2048;
                    *&v493[20] = 0;
                    *&v493[28] = 2048;
                    *&v493[30] = 0;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_552:
                    v527.i64[0] = 0;
                    v451 = 0u;
                    v452 = 0u;
                    v449 = 0u;
                    v450 = 0u;
                    __src = 0u;
                    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                    *v493 = 136315906;
                    *&v493[4] = "operator[]";
                    *&v493[12] = 1024;
                    *&v493[14] = 468;
                    *&v493[18] = 2048;
                    *&v493[20] = v234;
                    *&v493[28] = 2048;
                    *&v493[30] = v250;
                    _os_log_send_and_compose_impl();
                    _os_crash_msg();
                    __break(1u);
LABEL_553:
                    re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) ", "m_assetService", "updateSceneInternal", 1586);
                    _os_crash();
                    __break(1u);
                    goto LABEL_554;
                  }

LABEL_495:
                  v450 = 0u;
                  v451 = 0u;
                  __src = 0u;
                  v449 = 0u;
                  v452 = 0u;
                  v453 = v404;
                  v369.i64[0] = 0x7F0000007FLL;
                  v369.i64[1] = 0x7F0000007FLL;
                  v454 = v369;
                  v471 = 0;
                  v472 = 0;
                  v473 = 0u;
                  v455 = 0u;
                  v456 = 0u;
                  v457 = 0u;
                  v458 = 0u;
                  v459 = 0u;
                  v460 = 0u;
                  v461 = 0u;
                  v462 = 0u;
                  v463 = 0u;
                  v464 = 0u;
                  v465 = 0;
                  memset(v470, 0, 76);
                  v468 = 0u;
                  v469 = 0u;
                  v466 = 0u;
                  v467 = 0u;
                  if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
                  {
                    dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
                  }

                  v474 = re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash;
                  v475 = _D10;
                  v476 = 1065353216;
                  v477 = 0u;
                  memset(v478, 0, 19);
                  *&v478[5] = 0xFFFFFFFF00000001;
                  v479 = 0;
                  v480 = 0;
                  v481 = 0;
                  v482 = 0;
                  v483 = 65537;
                  v484 = 1;
                  v485 = xmmword_1E3060D60;
                  v486 = 16788070;
                  v488 = 0;
                  v487 = 0;
                  v370 = *(v355 + 1072);
                  __src.i64[0] = *(v355 + 1080);
                  __src.i64[1] = v370;
                  v371 = *(v355 + 1096);
                  v451.i64[0] = *(v355 + 1104);
                  v451.i64[1] = v371;
                  *v493 = v443;
                  v250 = 1;
                  *&v493[8] = 1;
                  v372 = (*(*v428 + 32))(v428, 72, 8);
                  *&v455 = re::MeshBoundingBoxes::MeshBoundingBoxes(v372, v428, v493, 1);
                  v373 = v359[1];
                  *v493 = v359[2];
                  *&v493[8] = v373;
                  v374 = (*(*v428 + 32))(v428, 72, 8);
                  v375 = re::MeshBoundingBoxes::MeshBoundingBoxes(v374, v428, v493, 1);
                  v376 = 0;
                  *(&v455 + 1) = v375;
                  v527 = *v436;
                  v528 = *&v436[16];
                  v529 = *v437;
                  v530 = *&v437[16];
                  do
                  {
                    *&v493[v376] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v422, COERCE_FLOAT(*(&v527 + v376))), v420, *&v527.f32[v376 / 4], 1), v418, *(&v527 + v376), 2), v424, *(&v527 + v376), 3);
                    v376 += 16;
                  }

                  while (v376 != 64);
                  v456 = *v493;
                  v457 = *&v493[16];
                  v458 = *&v493[32];
                  v459 = v494;
                  v377 = v416[1];
                  *&v460 = v416[2];
                  *(&v460 + 1) = v377;
                  v378 = v411[1];
                  *&v466 = v411[2];
                  *(&v466 + 1) = v378;
                  v379 = v409[1];
                  *&v467 = v409[2];
                  *(&v467 + 1) = v379;
                  *&v478[2] = v308[39];
                  v380 = *&v478[2];
                  LODWORD(v381) = v478[0] & 0xFFFFFFF7;
                  HIDWORD(v381) = v478[1] | 8;
                  *v478 = v381;
                  v453 = v443[0];
                  v454 = v443[1];
                  v382 = *(v407 + 3);
                  if (re::MaterialManager::entityHasSystemMaterialParameterBlock(v382, *&v478[2]))
                  {
                    v383 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v382, v380);
                    v470[0] = re::MaterialParameterBlock::deltaSynchronizedMaterialParameterTable(v383, v428);
                  }

                  (*(*v439 + 8))(v493);
                  if (v493[0])
                  {
                    v384 = *&v493[8];
                  }

                  else
                  {
                    v384 = 0;
                  }

                  *&v493[16] = 0;
                  *&v493[24] = 0;
                  *&v493[32] = 0;
                  *v493 = v428;
                  re::DynamicArray<re::MeshScene>::setCapacity(v493, 0);
                  ++*&v493[24];
                  v385 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v384 ^ (v384 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v384 ^ (v384 >> 30))) >> 27));
                  v386 = v385 ^ (v385 >> 31);
                  if (*v447)
                  {
                    v387 = v386 % *&v447[24];
                    v388 = *(*&v447[8] + 4 * v387);
                    if (v388 != 0x7FFFFFFF)
                    {
                      while (*(*&v447[16] + (v388 << 6) + 8) != v384)
                      {
                        v388 = *(*&v447[16] + (v388 << 6)) & 0x7FFFFFFF;
                        if (v388 == 0x7FFFFFFF)
                        {
                          goto LABEL_510;
                        }
                      }

                      v392 = *&v447[16] + (v388 << 6);
                      v393 = *(v392 + 16);
                      v391 = v392 + 16;
                      v390 = v393;
                      goto LABEL_512;
                    }
                  }

                  else
                  {
                    LODWORD(v387) = 0;
                  }

LABEL_510:
                  v389 = re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v447, v387, v386);
                  v390 = *v493;
                  *(v389 + 16) = *v493;
                  v391 = v389 + 16;
                  *(v391 - 8) = v384;
                  *(v391 + 8) = *&v493[8];
                  memset(v493, 0, 24);
                  *(v391 + 32) = *&v493[32];
                  *&v493[32] = 0;
                  ++*&v493[24];
                  *(v391 + 24) = 1;
                  ++*&v447[40];
LABEL_512:
                  if (v390)
                  {
                    re::DynamicArray<re::MeshScene>::add(v391, &__src);
                  }

                  re::DynamicArray<re::MeshScene>::deinit(v493);
                  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(&v470[1]);
                  re::AssetHandle::~AssetHandle(v444);
                  re::AssetHandle::~AssetHandle(v446);
                  goto LABEL_515;
                }

                re::TransformService::worldMatrix(*(v7 + 288), v308, 0, &__src);
                if (v310)
                {
                  v424 = v451;
                  v332 = vmulq_f32(__src, __src);
                  *&v333 = v332.f32[2] + vaddv_f32(*v332.f32);
                  *v332.f32 = vrsqrte_f32(v333);
                  *v332.f32 = vmul_f32(*v332.f32, vrsqrts_f32(v333, vmul_f32(*v332.f32, *v332.f32)));
                  v347 = vmulq_n_f32(__src, vmul_f32(*v332.f32, vrsqrts_f32(v333, vmul_f32(*v332.f32, *v332.f32))).f32[0]);
                  v334 = vmulq_f32(v449, v347);
                  v335 = vmulq_f32(v347, v347);
                  v336 = vmulq_f32(v450, v347);
                  *v335.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v336, v336, 8uLL), *&vextq_s8(v335, v335, 8uLL)), vadd_f32(vzip1_s32(*v336.i8, *v335.i8), vzip2_s32(*v336.i8, *v335.i8)));
                  v337 = vsubq_f32(v449, vmulq_n_f32(v347, (v334.f32[2] + vaddv_f32(*v334.f32)) / *&v335.i32[1]));
                  v338 = vmulq_f32(v337, v337);
                  *&v339 = v338.f32[2] + vaddv_f32(*v338.f32);
                  *v338.f32 = vrsqrte_f32(v339);
                  *v338.f32 = vmul_f32(*v338.f32, vrsqrts_f32(v339, vmul_f32(*v338.f32, *v338.f32)));
                  v340 = vmulq_n_f32(v337, vmul_f32(*v338.f32, vrsqrts_f32(v339, vmul_f32(*v338.f32, *v338.f32))).f32[0]);
                  v341 = vsubq_f32(v450, vmulq_n_f32(v347, *v335.i32 / *&v335.i32[1]));
                  v342 = vmulq_f32(v450, v340);
                  v343 = vmulq_f32(v340, v340);
                  *v342.i8 = vadd_f32(vzip1_s32(*&vextq_s8(v342, v342, 8uLL), *&vextq_s8(v343, v343, 8uLL)), vadd_f32(vzip1_s32(*v342.i8, *v343.i8), vzip2_s32(*v342.i8, *v343.i8)));
                  v344 = vsubq_f32(v341, vmulq_n_f32(v340, vdiv_f32(*v342.i8, vdup_lane_s32(*v342.i8, 1)).f32[0]));
                  v345 = vmulq_f32(v344, v344);
                  *v343.i32 = v345.f32[2] + vaddv_f32(*v345.f32);
                  *v345.f32 = vrsqrte_f32(v343.u32[0]);
                  *v345.f32 = vmul_f32(*v345.f32, vrsqrts_f32(v343.u32[0], vmul_f32(*v345.f32, *v345.f32)));
                  v346 = vmulq_n_f32(v344, vmul_f32(*v345.f32, vrsqrts_f32(v343.u32[0], vmul_f32(*v345.f32, *v345.f32))).f32[0]);
                  v347.i32[3] = __src.i32[3];
                  v340.i32[3] = v449.i32[3];
                  v346.i32[3] = v450.i32[3];
                  v418 = v346;
                  v420 = v340;
                }

                else
                {
                  re::TransformService::worldMatrix(*(v7 + 288), v308, 0, &__src);
                  v348 = v451;
                  v348.i32[3] = 1.0;
                  v424 = v348;
                  v347 = xmmword_1E3047670;
                  v418 = xmmword_1E30476A0;
                  v420 = xmmword_1E3047680;
                }

                v331 = v428;
                v422 = v347;
                if (v316 && (*(v316 + 36) & 1) != 0)
                {
LABEL_478:
                  v329 = *(v316 + 40) + 0.00001;
                }

                else
                {
                  v329 = 0.01001;
                  if (v311 && *(v311 + 36) == 1)
                  {
                    v316 = v311;
                    goto LABEL_478;
                  }
                }

                v330 = v329;
                v328 = v329;
                goto LABEL_480;
              }
            }

            re::AssetHandle::loadAsync(&v307[2]);
          }
        }

LABEL_515:
        ++v300;
      }

      while (v300 != v435);
    }
  }

  else
  {
    re::RenderManager::perFrameAllocator(v298);
  }

  v394 = *&v447[32];
  if (*&v447[32])
  {
    v395 = 0;
    v396 = *&v447[16];
    while (1)
    {
      v397 = *v396;
      v396 += 16;
      if (v397 < 0)
      {
        break;
      }

      if (*&v447[32] == ++v395)
      {
        LODWORD(v395) = *&v447[32];
        break;
      }
    }
  }

  else
  {
    LODWORD(v395) = 0;
  }

  if (v395 != *&v447[32])
  {
    v398 = *&v447[16];
    v399 = *&v447[32];
    do
    {
      v400 = v398 + (v395 << 6);
      if (*(v400 + 32))
      {
        re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v413, *(v400 + 8), v412, &__src);
        *v493 = __src.i64[0] >> 1;
        v401 = **(re::RenderFrameData::stream((v412 + 33), v493) + 48);
        v402 = (*(v401 + 840))();
        if (__src.i8[0])
        {
          if (__src.i8[0])
          {
          }
        }

        v399 = *&v447[32];
        v398 = *&v447[16];
      }

      if (v399 <= v395 + 1)
      {
        v403 = v395 + 1;
      }

      else
      {
        v403 = v399;
      }

      while (v403 - 1 != v395)
      {
        LODWORD(v395) = v395 + 1;
        if ((*(v398 + (v395 << 6)) & 0x80000000) != 0)
        {
          goto LABEL_539;
        }
      }

      LODWORD(v395) = v403;
LABEL_539:
      ;
    }

    while (v395 != v394);
  }

  re::HashTable<unsigned long long,re::MeshSceneCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v447);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v440);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v441);
}

_anonymous_namespace_ *re::ecs2::LightSystem::willAddSystemToECSService(re::ecs2::LightSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(v2);
  *(this + 37) = result;
  return result;
}

double re::ecs2::LightSystem::willRemoveSystemFromECSService(re::ecs2::LightSystem *this)
{
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

uint64_t re::ecs2::LightSystem::willAddSceneToECSService(re::ecs2::LightSystem *this, re::EventBus **a2)
{
  v352 = *MEMORY[0x1E69E9840];
  v313 = a2;
  v4 = *(this + 37);
  if (v4)
  {
    (*(*v4 + 80))(v4, a2);
  }

  v314 = a2;
  v5 = *(this + 79);
  v6 = *(this + 160);
  if (v5 >= 0xB)
  {
    if (v6)
    {
      v7 = (this + 648);
    }

    else
    {
      v7 = *(this + 82);
    }

    v9 = 8 * v5;
    while (!*v7)
    {
      ++v7;
      v9 -= 8;
      if (!v9)
      {
        goto LABEL_19;
      }
    }

    goto LABEL_18;
  }

  if (v6)
  {
    v8 = (this + 648);
    if (!v5)
    {
      goto LABEL_19;
    }
  }

  else
  {
    v8 = *(this + 82);
    if (!v5)
    {
      goto LABEL_19;
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
LABEL_18:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 624, 0);
    v13 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 504, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::init(v13, this + 504, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 70, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 624, v334);
    v14 = v334;
    goto LABEL_51;
  }

LABEL_19:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v15 = *(this + 68);
  *&v341 = 0;
  v16 = *(this + 64);
  DWORD2(v341) = 0;
  if (v15 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,4ul>::setBucketsCapacity(this + 63, (v15 + 4) >> 2);
    v16 = *(this + 64);
  }

  v17 = v15 >> 2;
  if (v16 <= v15 >> 2)
  {
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v15 >> 2;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_366:
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_367:
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v17;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_368:
    re::internal::assertLog(4, v58, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_369:
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v17;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_370:
    re::internal::assertLog(4, v92, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_371:
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v17;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_372:
    re::internal::assertLog(4, v126, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_373:
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v17;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_374:
    re::internal::assertLog(4, v160, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_375:
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v17;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_376:
    re::internal::assertLog(4, v194, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
LABEL_377:
    v315 = 0;
    v350 = 0u;
    v351 = 0u;
    v348 = 0u;
    v349 = 0u;
    v347 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v342 = 136315906;
    *&v342[4] = "operator[]";
    *&v342[12] = 1024;
    *&v342[14] = 858;
    v343 = 2048;
    v344 = v17;
    v345 = 2048;
    v346 = v16;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_378;
  }

  if (*(this + 520))
  {
    v18 = this + 528;
  }

  else
  {
    v18 = *(this + 67);
  }

  v19 = *&v18[8 * v17];
  ++*(this + 68);
  ++*(this + 138);
  v20 = v19 + 112 * (v15 & 3);
  v21 = v334;
  v22 = v335;
  v23 = v336;
  *(v20 + 48) = v337;
  *(v20 + 16) = v22;
  *(v20 + 32) = v23;
  *v20 = v21;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v20 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v25 = *(this + 68);
  if (!v25)
  {
    goto LABEL_366;
  }

  v26 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 504, v25 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>::init(v26, this + 504, v314);
  *&v347 = *(this + 68) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 70, &v314, &v347);
  v27 = *(this + 68);
  v28 = *(this + 83);
  if ((v27 & 0x3F) != 0)
  {
    v29 = (v27 >> 6) + 1;
  }

  else
  {
    v29 = v27 >> 6;
  }

  *(this + 83) = v27;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 624), v29, &v334);
  if (v27 && v28 > v27)
  {
    v30 = 63;
    v31 = *(this + 83) & 0x3FLL;
    if (v31 && v31 != 63)
    {
      v30 = ~(-1 << v31);
    }

    if (*(this + 640))
    {
      v32 = this + 648;
    }

    else
    {
      v32 = *(this + 82);
    }

    *&v32[8 * *(this + 79) - 8] &= v30;
  }

  v33 = *(this + 68);
  v34 = *(this + 89);
  if ((v33 & 0x3F) != 0)
  {
    v35 = (v33 >> 6) + 1;
  }

  else
  {
    v35 = v33 >> 6;
  }

  *(this + 89) = v33;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 672), v35, &v334);
  if (v33 && v34 > v33)
  {
    v36 = 63;
    v37 = *(this + 89) & 0x3FLL;
    if (v37 && v37 != 63)
    {
      v36 = ~(-1 << v37);
    }

    if (*(this + 688))
    {
      v38 = this + 696;
    }

    else
    {
      v38 = *(this + 88);
    }

    *&v38[8 * *(this + 85) - 8] &= v36;
  }

  v14 = v347;
LABEL_51:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 672, v14);
  if (*(this + 736) == 1)
  {
    v39 = *(this + 90);
    v40 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v39, v40, &v334);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 504);
  }

  v314 = a2;
  v41 = *(this + 134);
  v42 = *(this + 270);
  if (v41 >= 0xB)
  {
    if (v42)
    {
      v43 = (this + 1088);
    }

    else
    {
      v43 = *(this + 137);
    }

    v45 = 8 * v41;
    while (!*v43)
    {
      ++v43;
      v45 -= 8;
      if (!v45)
      {
        goto LABEL_69;
      }
    }

    goto LABEL_68;
  }

  if (v42)
  {
    v44 = (this + 1088);
    if (!v41)
    {
      goto LABEL_69;
    }
  }

  else
  {
    v44 = *(this + 137);
    if (!v41)
    {
      goto LABEL_69;
    }
  }

  v46 = 0;
  v47 = 8 * v41;
  do
  {
    v48 = *v44++;
    v46 |= v48;
    v47 -= 8;
  }

  while (v47);
  if (v46)
  {
LABEL_68:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 1064, 0);
    v49 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 944, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::init(v49, this + 944, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 125, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1064, v334);
    v50 = v334;
    goto LABEL_101;
  }

LABEL_69:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v51 = *(this + 123);
  *&v341 = 0;
  v16 = *(this + 119);
  DWORD2(v341) = 0;
  if (v51 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,4ul>::setBucketsCapacity(this + 118, (v51 + 4) >> 2);
    v16 = *(this + 119);
  }

  v17 = v51 >> 2;
  if (v16 <= v51 >> 2)
  {
    goto LABEL_367;
  }

  if (*(this + 960))
  {
    v52 = this + 968;
  }

  else
  {
    v52 = *(this + 122);
  }

  v53 = *&v52[8 * v17];
  ++*(this + 123);
  ++*(this + 248);
  v54 = v53 + 112 * (v51 & 3);
  v55 = v334;
  v56 = v335;
  v57 = v336;
  *(v54 + 48) = v337;
  *(v54 + 16) = v56;
  *(v54 + 32) = v57;
  *v54 = v55;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v54 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v59 = *(this + 123);
  if (!v59)
  {
    goto LABEL_368;
  }

  v60 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 944, v59 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>::init(v60, this + 944, v314);
  *&v347 = *(this + 123) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 125, &v314, &v347);
  v61 = *(this + 123);
  v62 = *(this + 138);
  if ((v61 & 0x3F) != 0)
  {
    v63 = (v61 >> 6) + 1;
  }

  else
  {
    v63 = v61 >> 6;
  }

  *(this + 138) = v61;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1064), v63, &v334);
  if (v61 && v62 > v61)
  {
    v64 = 63;
    v65 = *(this + 138) & 0x3FLL;
    if (v65 && v65 != 63)
    {
      v64 = ~(-1 << v65);
    }

    if (*(this + 1080))
    {
      v66 = this + 1088;
    }

    else
    {
      v66 = *(this + 137);
    }

    *&v66[8 * *(this + 134) - 8] &= v64;
  }

  v67 = *(this + 123);
  v68 = *(this + 144);
  if ((v67 & 0x3F) != 0)
  {
    v69 = (v67 >> 6) + 1;
  }

  else
  {
    v69 = v67 >> 6;
  }

  *(this + 144) = v67;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1112), v69, &v334);
  if (v67 && v68 > v67)
  {
    v70 = 63;
    v71 = *(this + 144) & 0x3FLL;
    if (v71 && v71 != 63)
    {
      v70 = ~(-1 << v71);
    }

    if (*(this + 1128))
    {
      v72 = this + 1136;
    }

    else
    {
      v72 = *(this + 143);
    }

    *&v72[8 * *(this + 140) - 8] &= v70;
  }

  v50 = v347;
LABEL_101:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1112, v50);
  if (*(this + 1176) == 1)
  {
    v73 = *(this + 145);
    v74 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v73, v74, &v334);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 944);
  }

  v314 = a2;
  v75 = *(this + 189);
  v76 = *(this + 380);
  if (v75 >= 0xB)
  {
    if (v76)
    {
      v77 = (this + 1528);
    }

    else
    {
      v77 = *(this + 192);
    }

    v79 = 8 * v75;
    while (!*v77)
    {
      ++v77;
      v79 -= 8;
      if (!v79)
      {
        goto LABEL_119;
      }
    }

    goto LABEL_118;
  }

  if (v76)
  {
    v78 = (this + 1528);
    if (!v75)
    {
      goto LABEL_119;
    }
  }

  else
  {
    v78 = *(this + 192);
    if (!v75)
    {
      goto LABEL_119;
    }
  }

  v80 = 0;
  v81 = 8 * v75;
  do
  {
    v82 = *v78++;
    v80 |= v82;
    v81 -= 8;
  }

  while (v81);
  if (v80)
  {
LABEL_118:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 1504, 0);
    v83 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1384, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::init(v83, this + 1384, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 180, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1504, v334);
    v84 = v334;
    goto LABEL_151;
  }

LABEL_119:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v85 = *(this + 178);
  *&v341 = 0;
  v16 = *(this + 174);
  DWORD2(v341) = 0;
  if (v85 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,4ul>::setBucketsCapacity(this + 173, (v85 + 4) >> 2);
    v16 = *(this + 174);
  }

  v17 = v85 >> 2;
  if (v16 <= v85 >> 2)
  {
    goto LABEL_369;
  }

  if (*(this + 1400))
  {
    v86 = this + 1408;
  }

  else
  {
    v86 = *(this + 177);
  }

  v87 = *&v86[8 * v17];
  ++*(this + 178);
  ++*(this + 358);
  v88 = v87 + 112 * (v85 & 3);
  v89 = v334;
  v90 = v335;
  v91 = v336;
  *(v88 + 48) = v337;
  *(v88 + 16) = v90;
  *(v88 + 32) = v91;
  *v88 = v89;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v88 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v93 = *(this + 178);
  if (!v93)
  {
    goto LABEL_370;
  }

  v94 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1384, v93 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>::init(v94, this + 1384, v314);
  *&v347 = *(this + 178) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 180, &v314, &v347);
  v95 = *(this + 178);
  v96 = *(this + 193);
  if ((v95 & 0x3F) != 0)
  {
    v97 = (v95 >> 6) + 1;
  }

  else
  {
    v97 = v95 >> 6;
  }

  *(this + 193) = v95;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1504), v97, &v334);
  if (v95 && v96 > v95)
  {
    v98 = 63;
    v99 = *(this + 193) & 0x3FLL;
    if (v99 && v99 != 63)
    {
      v98 = ~(-1 << v99);
    }

    if (*(this + 1520))
    {
      v100 = this + 1528;
    }

    else
    {
      v100 = *(this + 192);
    }

    *&v100[8 * *(this + 189) - 8] &= v98;
  }

  v101 = *(this + 178);
  v102 = *(this + 199);
  if ((v101 & 0x3F) != 0)
  {
    v103 = (v101 >> 6) + 1;
  }

  else
  {
    v103 = v101 >> 6;
  }

  *(this + 199) = v101;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1552), v103, &v334);
  if (v101 && v102 > v101)
  {
    v104 = 63;
    v105 = *(this + 199) & 0x3FLL;
    if (v105 && v105 != 63)
    {
      v104 = ~(-1 << v105);
    }

    if (*(this + 1568))
    {
      v106 = this + 1576;
    }

    else
    {
      v106 = *(this + 198);
    }

    *&v106[8 * *(this + 195) - 8] &= v104;
  }

  v84 = v347;
LABEL_151:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1552, v84);
  if (*(this + 1616) == 1)
  {
    v107 = *(this + 200);
    v108 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v107, v108, &v334);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 1384);
  }

  v314 = a2;
  v109 = *(this + 244);
  v110 = *(this + 490);
  if (v109 >= 0xB)
  {
    if (v110)
    {
      v111 = (this + 1968);
    }

    else
    {
      v111 = *(this + 247);
    }

    v113 = 8 * v109;
    while (!*v111)
    {
      ++v111;
      v113 -= 8;
      if (!v113)
      {
        goto LABEL_169;
      }
    }

    goto LABEL_168;
  }

  if (v110)
  {
    v112 = (this + 1968);
    if (!v109)
    {
      goto LABEL_169;
    }
  }

  else
  {
    v112 = *(this + 247);
    if (!v109)
    {
      goto LABEL_169;
    }
  }

  v114 = 0;
  v115 = 8 * v109;
  do
  {
    v116 = *v112++;
    v114 |= v116;
    v115 -= 8;
  }

  while (v115);
  if (v114)
  {
LABEL_168:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 1944, 0);
    v117 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1824, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::init(v117, this + 1824, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 235, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 1944, v334);
    v118 = v334;
    goto LABEL_201;
  }

LABEL_169:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v119 = *(this + 233);
  *&v341 = 0;
  v16 = *(this + 229);
  DWORD2(v341) = 0;
  if (v119 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,4ul>::setBucketsCapacity(this + 228, (v119 + 4) >> 2);
    v16 = *(this + 229);
  }

  v17 = v119 >> 2;
  if (v16 <= v119 >> 2)
  {
    goto LABEL_371;
  }

  if (*(this + 1840))
  {
    v120 = this + 1848;
  }

  else
  {
    v120 = *(this + 232);
  }

  v121 = *&v120[8 * v17];
  ++*(this + 233);
  ++*(this + 468);
  v122 = v121 + 112 * (v119 & 3);
  v123 = v334;
  v124 = v335;
  v125 = v336;
  *(v122 + 48) = v337;
  *(v122 + 16) = v124;
  *(v122 + 32) = v125;
  *v122 = v123;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v122 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v127 = *(this + 233);
  if (!v127)
  {
    goto LABEL_372;
  }

  v128 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 1824, v127 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>::init(v128, this + 1824, v314);
  *&v347 = *(this + 233) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 235, &v314, &v347);
  v129 = *(this + 233);
  v130 = *(this + 248);
  if ((v129 & 0x3F) != 0)
  {
    v131 = (v129 >> 6) + 1;
  }

  else
  {
    v131 = v129 >> 6;
  }

  *(this + 248) = v129;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1944), v131, &v334);
  if (v129 && v130 > v129)
  {
    v132 = 63;
    v133 = *(this + 248) & 0x3FLL;
    if (v133 && v133 != 63)
    {
      v132 = ~(-1 << v133);
    }

    if (*(this + 1960))
    {
      v134 = this + 1968;
    }

    else
    {
      v134 = *(this + 247);
    }

    *&v134[8 * *(this + 244) - 8] &= v132;
  }

  v135 = *(this + 233);
  v136 = *(this + 254);
  if ((v135 & 0x3F) != 0)
  {
    v137 = (v135 >> 6) + 1;
  }

  else
  {
    v137 = v135 >> 6;
  }

  *(this + 254) = v135;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 1992), v137, &v334);
  if (v135 && v136 > v135)
  {
    v138 = 63;
    v139 = *(this + 254) & 0x3FLL;
    if (v139 && v139 != 63)
    {
      v138 = ~(-1 << v139);
    }

    if (*(this + 2008))
    {
      v140 = this + 2016;
    }

    else
    {
      v140 = *(this + 253);
    }

    *&v140[8 * *(this + 250) - 8] &= v138;
  }

  v118 = v347;
LABEL_201:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 1992, v118);
  if (*(this + 2056) == 1)
  {
    v141 = *(this + 255);
    v142 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v141, v142, &v334);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 1824);
  }

  v314 = a2;
  v143 = *(this + 299);
  v144 = *(this + 600);
  if (v143 >= 0xB)
  {
    if (v144)
    {
      v145 = (this + 2408);
    }

    else
    {
      v145 = *(this + 302);
    }

    v147 = 8 * v143;
    while (!*v145)
    {
      ++v145;
      v147 -= 8;
      if (!v147)
      {
        goto LABEL_219;
      }
    }

    goto LABEL_218;
  }

  if (v144)
  {
    v146 = (this + 2408);
    if (!v143)
    {
      goto LABEL_219;
    }
  }

  else
  {
    v146 = *(this + 302);
    if (!v143)
    {
      goto LABEL_219;
    }
  }

  v148 = 0;
  v149 = 8 * v143;
  do
  {
    v150 = *v146++;
    v148 |= v150;
    v149 -= 8;
  }

  while (v149);
  if (v148)
  {
LABEL_218:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 2384, 0);
    v151 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2264, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::init(v151, this + 2264, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 290, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2384, v334);
    v152 = v334;
    goto LABEL_251;
  }

LABEL_219:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v153 = *(this + 288);
  *&v341 = 0;
  v16 = *(this + 284);
  DWORD2(v341) = 0;
  if (v153 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,4ul>::setBucketsCapacity(this + 283, (v153 + 4) >> 2);
    v16 = *(this + 284);
  }

  v17 = v153 >> 2;
  if (v16 <= v153 >> 2)
  {
    goto LABEL_373;
  }

  if (*(this + 2280))
  {
    v154 = this + 2288;
  }

  else
  {
    v154 = *(this + 287);
  }

  v155 = *&v154[8 * v17];
  ++*(this + 288);
  ++*(this + 578);
  v156 = v155 + 112 * (v153 & 3);
  v157 = v334;
  v158 = v335;
  v159 = v336;
  *(v156 + 48) = v337;
  *(v156 + 16) = v158;
  *(v156 + 32) = v159;
  *v156 = v157;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v156 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v161 = *(this + 288);
  if (!v161)
  {
    goto LABEL_374;
  }

  v162 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2264, v161 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>::init(v162, this + 2264, v314);
  *&v347 = *(this + 288) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 290, &v314, &v347);
  v163 = *(this + 288);
  v164 = *(this + 303);
  if ((v163 & 0x3F) != 0)
  {
    v165 = (v163 >> 6) + 1;
  }

  else
  {
    v165 = v163 >> 6;
  }

  *(this + 303) = v163;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2384), v165, &v334);
  if (v163 && v164 > v163)
  {
    v166 = 63;
    v167 = *(this + 303) & 0x3FLL;
    if (v167 && v167 != 63)
    {
      v166 = ~(-1 << v167);
    }

    if (*(this + 2400))
    {
      v168 = this + 2408;
    }

    else
    {
      v168 = *(this + 302);
    }

    *&v168[8 * *(this + 299) - 8] &= v166;
  }

  v169 = *(this + 288);
  v170 = *(this + 309);
  if ((v169 & 0x3F) != 0)
  {
    v171 = (v169 >> 6) + 1;
  }

  else
  {
    v171 = v169 >> 6;
  }

  *(this + 309) = v169;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2432), v171, &v334);
  if (v169 && v170 > v169)
  {
    v172 = 63;
    v173 = *(this + 309) & 0x3FLL;
    if (v173 && v173 != 63)
    {
      v172 = ~(-1 << v173);
    }

    if (*(this + 2448))
    {
      v174 = this + 2456;
    }

    else
    {
      v174 = *(this + 308);
    }

    *&v174[8 * *(this + 305) - 8] &= v172;
  }

  v152 = v347;
LABEL_251:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2432, v152);
  if (*(this + 2496) == 1)
  {
    v175 = *(this + 310);
    v176 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v175, v176, &v334);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 2264);
  }

  v314 = a2;
  v177 = *(this + 354);
  v178 = *(this + 710);
  if (v177 >= 0xB)
  {
    if (v178)
    {
      v179 = (this + 2848);
    }

    else
    {
      v179 = *(this + 357);
    }

    v181 = 8 * v177;
    while (!*v179)
    {
      ++v179;
      v181 -= 8;
      if (!v181)
      {
        goto LABEL_269;
      }
    }

    goto LABEL_268;
  }

  if (v178)
  {
    v180 = (this + 2848);
    if (!v177)
    {
      goto LABEL_269;
    }
  }

  else
  {
    v180 = *(this + 357);
    if (!v177)
    {
      goto LABEL_269;
    }
  }

  v182 = 0;
  v183 = 8 * v177;
  do
  {
    v184 = *v180++;
    v182 |= v184;
    v183 -= 8;
  }

  while (v183);
  if (v182)
  {
LABEL_268:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 2824, 0);
    v185 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2704, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::init(v185, this + 2704, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 345, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 2824, v334);
    v186 = v334;
    goto LABEL_301;
  }

LABEL_269:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v187 = *(this + 343);
  *&v341 = 0;
  v16 = *(this + 339);
  DWORD2(v341) = 0;
  if (v187 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,4ul>::setBucketsCapacity(this + 338, (v187 + 4) >> 2);
    v16 = *(this + 339);
  }

  v17 = v187 >> 2;
  if (v16 <= v187 >> 2)
  {
    goto LABEL_375;
  }

  if (*(this + 2720))
  {
    v188 = this + 2728;
  }

  else
  {
    v188 = *(this + 342);
  }

  v189 = *&v188[8 * v17];
  ++*(this + 343);
  ++*(this + 688);
  v190 = v189 + 112 * (v187 & 3);
  v191 = v334;
  v192 = v335;
  v193 = v336;
  *(v190 + 48) = v337;
  *(v190 + 16) = v192;
  *(v190 + 32) = v193;
  *v190 = v191;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v190 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v195 = *(this + 343);
  if (!v195)
  {
    goto LABEL_376;
  }

  v196 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 2704, v195 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>::init(v196, this + 2704, v314);
  *&v347 = *(this + 343) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 345, &v314, &v347);
  v197 = *(this + 343);
  v198 = *(this + 358);
  if ((v197 & 0x3F) != 0)
  {
    v199 = (v197 >> 6) + 1;
  }

  else
  {
    v199 = v197 >> 6;
  }

  *(this + 358) = v197;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2824), v199, &v334);
  if (v197 && v198 > v197)
  {
    v200 = 63;
    v201 = *(this + 358) & 0x3FLL;
    if (v201 && v201 != 63)
    {
      v200 = ~(-1 << v201);
    }

    if (*(this + 2840))
    {
      v202 = this + 2848;
    }

    else
    {
      v202 = *(this + 357);
    }

    *&v202[8 * *(this + 354) - 8] &= v200;
  }

  v203 = *(this + 343);
  v204 = *(this + 364);
  if ((v203 & 0x3F) != 0)
  {
    v205 = (v203 >> 6) + 1;
  }

  else
  {
    v205 = v203 >> 6;
  }

  *(this + 364) = v203;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 2872), v205, &v334);
  if (v203 && v204 > v203)
  {
    v206 = 63;
    v207 = *(this + 364) & 0x3FLL;
    if (v207 && v207 != 63)
    {
      v206 = ~(-1 << v207);
    }

    if (*(this + 2888))
    {
      v208 = this + 2896;
    }

    else
    {
      v208 = *(this + 363);
    }

    *&v208[8 * *(this + 360) - 8] &= v206;
  }

  v186 = v347;
LABEL_301:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 2872, v186);
  if (*(this + 2936) == 1)
  {
    v209 = *(this + 365);
    v210 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v209, v210, &v334);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 2704);
  }

  v314 = a2;
  v211 = *(this + 409);
  v212 = *(this + 820);
  if (v211 >= 0xB)
  {
    if (v212)
    {
      v213 = (this + 3288);
    }

    else
    {
      v213 = *(this + 412);
    }

    v215 = 8 * v211;
    while (!*v213)
    {
      ++v213;
      v215 -= 8;
      if (!v215)
      {
        goto LABEL_319;
      }
    }

    goto LABEL_318;
  }

  if (v212)
  {
    v214 = (this + 3288);
    if (!v211)
    {
      goto LABEL_319;
    }
  }

  else
  {
    v214 = *(this + 412);
    if (!v211)
    {
      goto LABEL_319;
    }
  }

  v216 = 0;
  v217 = 8 * v211;
  do
  {
    v218 = *v214++;
    v216 |= v218;
    v217 -= 8;
  }

  while (v217);
  if (v216)
  {
LABEL_318:
    *&v334 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 3264, 0);
    v219 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 3144, v334);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::init(v219, this + 3144, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 400, &v314, &v334);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 3264, v334);
    v220 = v334;
    goto LABEL_351;
  }

LABEL_319:
  v338 = 0u;
  v341 = 0u;
  v334 = 0u;
  *&v335 = 0;
  v336 = 0u;
  v337 = 0u;
  *(&v335 + 1) = -1;
  *&v338 = 0;
  DWORD2(v338) = 1;
  v339 = 0;
  v340 = 0;
  v221 = *(this + 398);
  *&v341 = 0;
  v16 = *(this + 394);
  DWORD2(v341) = 0;
  if (v221 + 1 > 4 * v16)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,4ul>::setBucketsCapacity(this + 393, (v221 + 4) >> 2);
    v16 = *(this + 394);
  }

  v17 = v221 >> 2;
  if (v16 <= v221 >> 2)
  {
    goto LABEL_377;
  }

  if (*(this + 3160))
  {
    v222 = this + 3168;
  }

  else
  {
    v222 = *(this + 397);
  }

  v223 = *&v222[8 * v17];
  ++*(this + 398);
  ++*(this + 798);
  v224 = v223 + 112 * (v221 & 3);
  v225 = v334;
  v226 = v335;
  v227 = v336;
  *(v224 + 48) = v337;
  *(v224 + 16) = v226;
  *(v224 + 32) = v227;
  *v224 = v225;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v224 + 56, &v337 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v334);
  v229 = *(this + 398);
  if (!v229)
  {
LABEL_378:
    re::internal::assertLog(4, v228, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v230 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 3144, v229 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>::init(v230, this + 3144, v314);
  *&v347 = *(this + 398) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 400, &v314, &v347);
  v231 = *(this + 398);
  v232 = *(this + 413);
  if ((v231 & 0x3F) != 0)
  {
    v233 = (v231 >> 6) + 1;
  }

  else
  {
    v233 = v231 >> 6;
  }

  *(this + 413) = v231;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 3264), v233, &v334);
  if (v231 && v232 > v231)
  {
    v234 = 63;
    v235 = *(this + 413) & 0x3FLL;
    if (v235 && v235 != 63)
    {
      v234 = ~(-1 << v235);
    }

    if (*(this + 3280))
    {
      v236 = this + 3288;
    }

    else
    {
      v236 = *(this + 412);
    }

    *&v236[8 * *(this + 409) - 8] &= v234;
  }

  v237 = *(this + 398);
  v238 = *(this + 419);
  if ((v237 & 0x3F) != 0)
  {
    v239 = (v237 >> 6) + 1;
  }

  else
  {
    v239 = v237 >> 6;
  }

  *(this + 419) = v237;
  *&v334 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 3312), v239, &v334);
  if (v237 && v238 > v237)
  {
    v240 = 63;
    v241 = *(this + 419) & 0x3FLL;
    if (v241 && v241 != 63)
    {
      v240 = ~(-1 << v241);
    }

    if (*(this + 3328))
    {
      v242 = this + 3336;
    }

    else
    {
      v242 = *(this + 418);
    }

    *&v242[8 * *(this + 415) - 8] &= v240;
  }

  v220 = v347;
LABEL_351:
  v243 = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 3312, v220);
  if (*(this + 3376) == 1)
  {
    v244 = *(this + 420);
    v245 = *(v314 + 47);
    LOWORD(v334) = 257;
    DWORD1(v334) = 1023969417;
    BYTE8(v334) = 0;
    re::ecs2::System::setTaskOptions(v244, v245, &v334);
    v243 = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 3144);
  }

  v315 = a2;
  v246 = a2[36];
  if (v246)
  {
    v247 = re::globalAllocators(v243)[2];
    *(&v335 + 1) = v247;
    v248 = (*(*v247 + 32))(v247, 32, 0);
    *v248 = &unk_1F5CEEEA8;
    v248[1] = this + 304;
    v248[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::handleSceneEntityWillRemove;
    v248[3] = 0;
    *&v336 = v248;
    *(&v348 + 1) = v247;
    *&v349 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
    *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v246, &v347, 0, 0);
    *&v342[8] = v249;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
    re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 360, &v315, v342);
    v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
    v250 = a2[36];
    v315 = a2;
    if (v250)
    {
      v251 = re::globalAllocators(v243)[2];
      *(&v335 + 1) = v251;
      v252 = (*(*v251 + 32))(v251, 32, 0);
      *v252 = &unk_1F5CEEF00;
      v252[1] = this + 744;
      v252[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::PointLightComponent,re::ecs2::PointLightComponentStateImpl>::handleSceneEntityWillRemove;
      v252[3] = 0;
      *&v336 = v252;
      *(&v348 + 1) = v251;
      *&v349 = 0;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
      *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v250, &v347, 0, 0);
      *&v342[8] = v253;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
      re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 800, &v315, v342);
      v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
      v254 = a2[36];
      v315 = a2;
      if (v254)
      {
        v255 = re::globalAllocators(v243)[2];
        *(&v335 + 1) = v255;
        v256 = (*(*v255 + 32))(v255, 32, 0);
        *v256 = &unk_1F5CEEF58;
        v256[1] = this + 1184;
        v256[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::SpotLightComponent,re::ecs2::SpotLightComponentStateImpl>::handleSceneEntityWillRemove;
        v256[3] = 0;
        *&v336 = v256;
        *(&v348 + 1) = v255;
        *&v349 = 0;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
        *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v254, &v347, 0, 0);
        *&v342[8] = v257;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
        re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 1240, &v315, v342);
        v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
        v258 = a2[36];
        v315 = a2;
        if (v258)
        {
          v259 = re::globalAllocators(v243)[2];
          *(&v335 + 1) = v259;
          v260 = (*(*v259 + 32))(v259, 32, 0);
          *v260 = &unk_1F5CEEFB0;
          v260[1] = this + 1624;
          v260[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::DirectionalLightComponent,re::ecs2::DirectionalLightComponentStateImpl>::handleSceneEntityWillRemove;
          v260[3] = 0;
          *&v336 = v260;
          *(&v348 + 1) = v259;
          *&v349 = 0;
          re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
          *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v258, &v347, 0, 0);
          *&v342[8] = v261;
          re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
          re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 1680, &v315, v342);
          v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
          v262 = a2[36];
          v315 = a2;
          if (v262)
          {
            v263 = re::globalAllocators(v243)[2];
            *(&v335 + 1) = v263;
            v264 = (*(*v263 + 32))(v263, 32, 0);
            *v264 = &unk_1F5CEF008;
            v264[1] = this + 2064;
            v264[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::handleSceneEntityWillRemove;
            v264[3] = 0;
            *&v336 = v264;
            *(&v348 + 1) = v263;
            *&v349 = 0;
            re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
            *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v262, &v347, 0, 0);
            *&v342[8] = v265;
            re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
            re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 2120, &v315, v342);
            v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
            v266 = a2[36];
            v315 = a2;
            if (v266)
            {
              v267 = re::globalAllocators(v243)[2];
              *(&v335 + 1) = v267;
              v268 = (*(*v267 + 32))(v267, 32, 0);
              *v268 = &unk_1F5CEF060;
              v268[1] = this + 2504;
              v268[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::handleSceneEntityWillRemove;
              v268[3] = 0;
              *&v336 = v268;
              *(&v348 + 1) = v267;
              *&v349 = 0;
              re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
              *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v266, &v347, 0, 0);
              *&v342[8] = v269;
              re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
              re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 2560, &v315, v342);
              v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
              v270 = a2[36];
              v315 = a2;
              if (v270)
              {
                v271 = re::globalAllocators(v243)[2];
                *(&v335 + 1) = v271;
                v272 = (*(*v271 + 32))(v271, 32, 0);
                *v272 = &unk_1F5CEF0B8;
                v272[1] = this + 2944;
                v272[2] = re::ecs2::BaseLightComponentStateImpl<re::ecs2::FrustumLightComponent,re::ecs2::FrustumLightComponentStateImpl>::handleSceneEntityWillRemove;
                v272[3] = 0;
                *&v336 = v272;
                *(&v348 + 1) = v271;
                *&v349 = 0;
                re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator=<24ul>(&v347, &v334);
                *v342 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v270, &v347, 0, 0);
                *&v342[8] = v273;
                re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v347);
                re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addNew(this + 3000, &v315, v342);
                v243 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(&v334);
              }
            }
          }
        }
      }
    }
  }

  v274 = *(this + 36);
  *(this + 62) = v274;
  *(this + 117) = v274;
  *(this + 172) = v274;
  *(this + 227) = v274;
  *(this + 282) = v274;
  *(this + 337) = v274;
  *(this + 392) = v274;
  v334 = 0uLL;
  LODWORD(v335) = 1;
  v336 = 0uLL;
  *(&v335 + 1) = 0;
  LODWORD(v337) = 0;
  v276 = a2[36];
  v332 = re::globalAllocators(v275)[2];
  v277 = (*(*v332 + 32))(v332, 32, 0);
  *v277 = &unk_1F5CEE298;
  v277[1] = this;
  v277[2] = re::ecs2::LightSystem::componentDidAactivateEventHandler;
  v277[3] = 0;
  v333 = v277;
  v278 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v276, v331, re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v280 = v279;
  v281 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v334);
  *v281 = v278;
  v281[1] = v280;
  v282 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v331);
  v329 = re::globalAllocators(v282)[2];
  v283 = (*(*v329 + 32))(v329, 32, 0);
  *v283 = &unk_1F5CEE2F0;
  v283[1] = this;
  v283[2] = re::ecs2::LightSystem::componentWillDeactivateEventHandler;
  v283[3] = 0;
  v330 = v283;
  v284 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v276, v328, re::ecs2::ComponentImpl<re::ecs2::PointLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v286 = v285;
  v287 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v334);
  *v287 = v284;
  v287[1] = v286;
  v288 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v328);
  v326 = re::globalAllocators(v288)[2];
  v289 = (*(*v326 + 32))(v326, 32, 0);
  *v289 = &unk_1F5CEE298;
  v289[1] = this;
  v289[2] = re::ecs2::LightSystem::componentDidAactivateEventHandler;
  v289[3] = 0;
  v327 = v289;
  v290 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v276, v325, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v292 = v291;
  v293 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v334);
  *v293 = v290;
  v293[1] = v292;
  v294 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v325);
  v323 = re::globalAllocators(v294)[2];
  v295 = (*(*v323 + 32))(v323, 32, 0);
  *v295 = &unk_1F5CEE2F0;
  v295[1] = this;
  v295[2] = re::ecs2::LightSystem::componentWillDeactivateEventHandler;
  v295[3] = 0;
  v324 = v295;
  v296 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v276, v322, re::ecs2::ComponentImpl<re::ecs2::DirectionalLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v298 = v297;
  v299 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v334);
  *v299 = v296;
  v299[1] = v298;
  v300 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v322);
  v320 = re::globalAllocators(v300)[2];
  v301 = (*(*v320 + 32))(v320, 32, 0);
  *v301 = &unk_1F5CEE298;
  v301[1] = this;
  v301[2] = re::ecs2::LightSystem::componentDidAactivateEventHandler;
  v301[3] = 0;
  v321 = v301;
  v302 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v276, v319, re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v304 = v303;
  v305 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v334);
  *v305 = v302;
  v305[1] = v304;
  v306 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v319);
  v317 = re::globalAllocators(v306)[2];
  v307 = (*(*v317 + 32))(v317, 32, 0);
  *v307 = &unk_1F5CEE2F0;
  v307[1] = this;
  v307[2] = re::ecs2::LightSystem::componentWillDeactivateEventHandler;
  v307[3] = 0;
  v318 = v307;
  v308 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v276, v316, re::ecs2::ComponentImpl<re::ecs2::SpotLightShadowMapComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v310 = v309;
  v311 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(&v334);
  *v311 = v308;
  v311[1] = v310;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v316);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 3384, &v313, &v334);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(&v334);
  result = v334;
  if (v334)
  {
    if ((v335 & 1) == 0)
    {
      return (*(*v334 + 40))();
    }
  }

  return result;
}