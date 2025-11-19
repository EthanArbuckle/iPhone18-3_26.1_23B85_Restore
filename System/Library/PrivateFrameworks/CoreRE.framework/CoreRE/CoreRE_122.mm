void re::ecs2::PhysicsSimulationComponent::setLocallyManagedParentTimebase(re::ecs2::PhysicsSimulationComponent *this, CFTypeRef cf)
{
  v3 = *(this + 12);
  if (v3 != cf)
  {
    if (v3)
    {
      CFRelease(v3);
      *(this + 12) = 0;
    }

    if (cf)
    {
      CFRetain(cf);
      *(this + 12) = cf;
    }

    WeakRetained = objc_loadWeakRetained(this + 10);
    if (WeakRetained)
    {
      v6 = WeakRetained;
      re::PhysicsSimulation::setParentClockOrTimebase((WeakRetained - 8), *(this + 12));
    }
  }
}

BOOL re::ecs2::PhysicsSimulationComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v64 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v53, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v52[0] = v12, (v52[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v63, a5, 0);
    v14 = *&v63[0];
    v49 = a4;
    v50 = *&v63[0];
    v51 = DWORD2(v63[0]);
    v15 = WORD4(v63[0]);
    v16 = HIWORD(DWORD2(v63[0]));
    if (*&v63[0] != a5 || WORD4(v63[0]) != 0xFFFF || v16 != 0xFFFF)
    {
      while (1)
      {
        v17 = v16;
        v18 = *(v14 + 16);
        if (v18 <= v16)
        {
          v54 = 0;
          memset(v63, 0, sizeof(v63));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v55 = 136315906;
          v56 = "operator[]";
          v57 = 1024;
          v58 = 797;
          v59 = 2048;
          v60 = v17;
          v61 = 2048;
          v62 = v18;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v19 = *(*(*(v14 + 32) + 16 * v16) + 8 * v15);
        v20 = *(v19 + 16);
        v21 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v52, v20);
        if ((*(v20 + 304) & 1) == 0 || (v22 = v21) == 0)
        {
          v38 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v50);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v49, v38, *(a3 + 32));
          re::ecs2::PhysicsSimulationComponent::removeFromSimulation(v19);
          goto LABEL_44;
        }

        v23 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v21);
        WeakRetained = objc_loadWeakRetained((v19 + 80));
        if (WeakRetained)
        {
          v25 = WeakRetained - 8;
        }

        else
        {
          v25 = 0;
        }

        if (WeakRetained)
        {
        }

        if (v25 != v23)
        {
          re::ecs2::PhysicsSimulationComponent::removeFromSimulation(v19);
        }

        v26 = *(v19 + 26) ? *(v19 + 25) | 2u : *(v19 + 25);
        (*(**(v23 + 56) + 144))(*(v23 + 56), v26);
        re::ecs2::PhysicsSimulationData::setGravityOverride(v22, (v19 + 32));
        re::ecs2::PhysicsSimulationData::setFixedTimeStepOverride(v22, v19 + 64);
        re::RigidBodyCollection::setSolverIterations(v23 + 80, v19 + 72);
        v27 = re::ServiceLocator::serviceOrNull<re::TimebaseService>(v8);
        if (v27)
        {
          break;
        }

LABEL_43:
        objc_storeWeak((v19 + 80), (v23 + 8));
        v46 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v50);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v49, v46, *(a3 + 48));
LABEL_44:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v50);
        v14 = v50;
        v15 = v51;
        v16 = HIWORD(v51);
        if (v50 == a5 && v51 == 0xFFFF && HIWORD(v51) == 0xFFFF)
        {
          goto LABEL_47;
        }
      }

      v28 = v27;
      v29 = *(v19 + 16);
      if (v29)
      {
        v30 = *(v19 + 16);
        do
        {
          v31 = v30;
          v30 = *(v30 + 32);
        }

        while (v30);
        v32 = *(v31 + 24);
        if (v32)
        {
          LOBYTE(v63[0]) = 0;
          SceneDataEntity = makeSceneDataEntity(v32, v63, 1, re::ecs2::Scene::kSharedSceneDataEntityID, 1);
          v34 = re::ecs2::EntityComponentCollection::getOrAdd((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::TimebaseComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v35 = *(v19 + 96);
          v36 = *(v19 + 104);
          if (v35 != v36)
          {
            v37 = v34;
            if (v36)
            {
              (*(*v28 + 72))(v28, *(v19 + 104), v34 + 32);
              CFRelease(*(v19 + 104));
              *(v19 + 104) = 0;
              v35 = *(v19 + 96);
              if (!v35)
              {
LABEL_32:
                v41 = *(SceneDataEntity + 27);
                if (!v41)
                {
                  v41 = re::ecs2::EntityComponentCollection::add((SceneDataEntity + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                }

                re::ecs2::NetworkComponent::markDirty(v41, v37);
                goto LABEL_35;
              }

LABEL_30:
              *(v19 + 88) = (*(*v28 + 64))(v28, v35, v37 + 32, 0);
              v39 = *(v19 + 96);
              *(v19 + 104) = v39;
              CFRetain(v39);
              v40 = *(v29 + 216);
              if (v40)
              {
                re::ecs2::NetworkComponent::markDirty(v40, v19);
              }

              goto LABEL_32;
            }

            if (v35)
            {
              goto LABEL_30;
            }
          }
        }
      }

LABEL_35:
      v42 = *(v19 + 96);
      if (v42)
      {
        if (*(v23 + 872) != v42)
        {
          re::PhysicsSimulation::setParentClockOrTimebase(v23, v42);
        }
      }

      else if (*(v19 + 88))
      {
        v43 = (*(*v28 + 96))(v28);
        if (v43)
        {
          v44 = v43;
          re::PhysicsSimulation::setParentClockOrTimebase(v23, v43);
          CFRelease(v44);
        }
      }

      else
      {
        v45 = *(v23 + 872);
        if (v45)
        {
          CFRelease(v45);
          *(v23 + 872) = 0;
        }
      }

      goto LABEL_43;
    }

LABEL_47:
    v47 = *(a5 + 40) != 0;
  }

  else
  {
    v47 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v53);
  return v47;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsSimulationComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PhysicsSimulationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PhysicsSimulationComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PhysicsSimulationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t re::make::shared::unsafelyInplace<re::ecs2::PhysicsSimulationComponent>(uint64_t a1)
{
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0u;
  v2 = (a1 + 80);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF48D0;
  *(v3 + 25) = 0;
  *(v3 + 32) = 0;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0x100000006;
  objc_initWeak(v2, 0);
  *(a1 + 96) = 0;
  *(a1 + 104) = 0;
  *(a1 + 88) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226PhysicsSimulationComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::Pin::~Pin(re::ecs2::Pin *this)
{
  *this = &unk_1F5CF49C0;
  re::DynamicArray<re::ecs2::EntityHandle>::deinit(this + 200);
  if (*(this + 176) == 1)
  {
    re::StringID::destroyString((this + 184));
  }

  re::DynamicArray<re::ecs2::PinAlignment>::deinit(this + 96);
  re::StringID::destroyString((this + 8));
}

{
  re::ecs2::Pin::~Pin(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::Pin::Pin(uint64_t a1, const StringID *a2, _OWORD *a3, _OWORD *a4, unsigned __int8 *a5, _OWORD *a6, uint64_t *a7)
{
  *a1 = &unk_1F5CF49C0;
  re::StringID::StringID((a1 + 8), a2);
  v13 = a3[1];
  *(a1 + 32) = *a3;
  *(a1 + 48) = v13;
  v14 = a6[1];
  *(a1 + 64) = *a6;
  *(a1 + 80) = v14;
  re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a1 + 96, a7);
  v15 = a4[1];
  *(a1 + 144) = *a4;
  *(a1 + 160) = v15;
  v16 = *a5;
  *(a1 + 176) = v16;
  if (v16 == 1)
  {
    re::StringID::StringID((a1 + 184), (a5 + 8));
  }

  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  return a1;
}

void re::ecs2::Pin::attachEntity(re::ecs2::Pin *this, re::ecs2::Entity *a2)
{
  if ((re::ecs2::findEntityIndex(this + 200, a2) & 0x80000000) != 0)
  {
    re::ecs2::EntityHandle::EntityHandle(location, a2);
    re::DynamicArray<re::ecs2::EntityHandle>::add((this + 200), location);
    re::ecs2::EntityHandle::reset(location);
    objc_destroyWeak(location);
  }
}

uint64_t re::ecs2::findEntityIndex(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 16))
  {
    return 0xFFFFFFFFLL;
  }

  v4 = 0;
  for (i = 8; ; i += 24)
  {
    v6 = *(a1 + 32);
    if (!re::ecs2::EntityHandle::isNull((v6 + i - 8)) && *(v6 + i) == *(a2 + 312))
    {
      break;
    }

    if (*(a1 + 16) <= ++v4)
    {
      return 0xFFFFFFFFLL;
    }
  }

  return v4;
}

void re::ecs2::Pin::detachEntity(re::ecs2::Pin *this, re::ecs2::Entity *a2)
{
  EntityIndex = re::ecs2::findEntityIndex(this + 200, a2);
  if ((EntityIndex & 0x80000000) == 0)
  {

    re::DynamicArray<re::ecs2::EntityHandle>::removeAt(this + 200, EntityIndex);
  }
}

void re::DynamicArray<re::ecs2::EntityHandle>::removeAt(uint64_t a1, unint64_t a2)
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
    re::ecs2::EntityHandle::operator=((*(a1 + 32) + 24 * a2), *(a1 + 32) + 24 * v2 - 24);
    v2 = *(a1 + 16);
  }

  v4 = *(a1 + 32) + 24 * v2;
  re::ecs2::EntityHandle::reset((v4 - 24));
  objc_destroyWeak((v4 - 24));
  *(v4 - 24) = 0;
  --*(a1 + 16);
  ++*(a1 + 24);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::PinAlignment>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1ABFB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABFB8))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1ABFF8);
    qword_1EE1ABFF8 = &unk_1F5CF49F0;
    __cxa_guard_release(&qword_1EE1ABFB8);
  }

  if ((_MergedGlobals_309 & 1) == 0)
  {
    v0 = re::ecs2::introspect_PinAlignment(1);
    if ((_MergedGlobals_309 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_309 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1ABFF8, 0);
      qword_1EE1AC008 = 0x2800000003;
      dword_1EE1AC010 = v2;
      word_1EE1AC014 = 0;
      *&xmmword_1EE1AC018 = 0;
      *(&xmmword_1EE1AC018 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AC028 = v1;
      unk_1EE1AC030 = 0;
      qword_1EE1ABFF8 = &unk_1F5CF49F0;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1ABFF8, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AC018 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_Pin(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1ABFB0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1ABFB0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC038, "Pin");
    __cxa_guard_release(&qword_1EE1ABFB0);
  }

  return &unk_1EE1AC038;
}

void re::ecs2::initInfo_Pin(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v30[0] = 160490;
  v30[1] = "Pin";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1ABFA8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1ABFA8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::IntrospectionInfo<re::StringID>::get(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_name";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 0x800000001;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1ABFC0 = v9;
      v10 = re::introspectionAllocator(v9);
      v11 = re::introspect_PoseF(1);
      v12 = (*(*v10 + 32))(v10, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_pose";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1ABFC8 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_AABB(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "m_box";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x4000000003;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1ABFD0 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::PinAlignment>>::get();
      v17 = (*(*v16 + 32))(v16, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_alignments";
      *(v17 + 16) = &qword_1EE1ABFF8;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x6000000004;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1ABFD8 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_PoseF(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_userOffset";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x9000000005;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1ABFE0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::Optional<re::StringID>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "m_skeletalJointName";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0xB000000006;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1ABFE8 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::IntrospectionInfo<re::DynamicArray<re::ecs2::EntityHandle>>::get(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "m_attachedEntities";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0xC800000007;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1ABFF0 = v28;
      __cxa_guard_release(&qword_1EE1ABFA8);
    }
  }

  *(this + 2) = 0xF000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1ABFC0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::Pin>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::Pin>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::Pin>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::Pin>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v29 = v31;
}

double re::internal::defaultConstruct<re::ecs2::Pin>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = &unk_1F5CF49C0;
  *(a3 + 8) = 0;
  *(a3 + 16) = &str_67;
  result = 0.0;
  *(a3 + 32) = 0u;
  *(a3 + 48) = 0;
  *(a3 + 56) = 0x3F80000000000000;
  v4.i64[0] = 0x7F0000007FLL;
  v4.i64[1] = 0x7F0000007FLL;
  *(a3 + 64) = vnegq_f32(v4);
  *(a3 + 80) = v4;
  *(a3 + 128) = 0;
  *(a3 + 104) = 0;
  *(a3 + 112) = 0;
  *(a3 + 96) = 0;
  *(a3 + 120) = 0;
  *(a3 + 144) = 0u;
  *(a3 + 160) = 0;
  *(a3 + 168) = 0x3F80000000000000;
  *(a3 + 176) = 0;
  *(a3 + 232) = 0;
  *(a3 + 208) = 0;
  *(a3 + 216) = 0;
  *(a3 + 200) = 0;
  *(a3 + 224) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::Pin>(uint64_t a1)
{
  *a1 = &unk_1F5CF49C0;
  *(a1 + 8) = 0;
  *(a1 + 16) = &str_67;
  result = 0.0;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0x3F80000000000000;
  v2.i64[0] = 0x7F0000007FLL;
  v2.i64[1] = 0x7F0000007FLL;
  *(a1 + 64) = vnegq_f32(v2);
  *(a1 + 80) = v2;
  *(a1 + 128) = 0;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 96) = 0;
  *(a1 + 120) = 0;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0x3F80000000000000;
  *(a1 + 176) = 0;
  *(a1 + 232) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0;
  *(a1 + 224) = 0;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::PinAlignment>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::PinAlignment>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::PinAlignment>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + (v8 << 7);
  *v9 = 0;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0;
  *(v9 + 40) = 0x3F80000000000000;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0;
  *(v9 + 72) = 0x3F80000000000000;
  *(v9 + 80) = 1;
  *(v9 + 120) = 0;
  *(v9 + 96) = 0;
  *(v9 + 104) = 0;
  *(v9 + 88) = 0;
  *(v9 + 112) = 1;
  v10 = *(this + 2) + 1;
  *(this + 2) = v10;
  ++*(this + 6);
  v11 = (*(this + 4) + (v10 << 7) - 128);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::PinAlignment>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

void *re::DynamicArray<re::ecs2::PinAlignment>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v8 = (a2 << 7) | 0x58;
    v9 = a2;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v3[4] + v8);
      ++v9;
      v8 += 128;
    }

    while (v9 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = (v4 << 7) | 0x78;
      do
      {
        v7 = (v3[4] + v6);
        *(v7 - 120) = 0;
        *(v7 - 13) = 0uLL;
        *(v7 - 11) = 0;
        *(v7 - 10) = 0x3F80000000000000;
        *(v7 - 9) = 0uLL;
        *(v7 - 7) = 0;
        *(v7 - 6) = 0x3F80000000000000;
        *(v7 - 40) = 1;
        *v7 = 0;
        *(v7 - 3) = 0;
        *(v7 - 2) = 0;
        *(v7 - 4) = 0;
        v6 += 128;
        *(v7 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::DynamicArray<re::ecs2::PinAlignment>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::PinAlignment>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::PinAlignment>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::PinAlignment>::resize(a1, a4);
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

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::clear(uint64_t result)
{
  v1 = result;
  v2 = *(result + 16);
  *(result + 16) = 0;
  if (v2)
  {
    v3 = v2 << 7;
    v4 = *(result + 32) + 88;
    do
    {
      result = re::DynamicArray<unsigned long>::deinit(v4);
      v4 += 128;
      v3 -= 128;
    }

    while (v3);
  }

  ++*(v1 + 24);
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::PinAlignment>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(uint64_t a1, char **this, const re::TextureHandle *a3, re::MaterialParameterBlock *a4, int a5, int a6)
{
  v73 = *MEMORY[0x1E69E9840];
  isTextureAttachment = re::ecs2::VideoMaterialAttachment::isTextureAttachment(this, this);
  v14 = *this >> 1;
  if (!isTextureAttachment)
  {
    if (v14 == 0x32970A2E88169C84)
    {
      v21 = this[1];
      if (v21 == "REVideoAttachmentConstantImageFunction" || (isTextureAttachment = strcmp(v21, "REVideoAttachmentConstantImageFunction"), !isTextureAttachment))
      {
        if (a6 == -1)
        {
          return result;
        }

        v69 = a6;
        *buf = 0x3D3952D14E0320A8;
        v20 = &v45;
        return re::MaterialParameterBlock::setConstant(a4, buf, 4uLL, &v69, 1, v20);
      }
    }

    else if (v14 == 0x41C03F11B6A8BA59)
    {
      v19 = this[1];
      if (v19 == "REVideoAttachmentConstantYCbCrMatrix" || (isTextureAttachment = strcmp(v19, "REVideoAttachmentConstantYCbCrMatrix"), !isTextureAttachment))
      {
        if (a5 == -1)
        {
          return result;
        }

        v69 = a5;
        *buf = 0x3C8C0FE134EC625DLL;
        v20 = &v46;
        return re::MaterialParameterBlock::setConstant(a4, buf, 4uLL, &v69, 1, v20);
      }
    }

    if (atomic_exchange(&re::ecs2::VideoComponent::applyVideoAttachmentToParameterBlock(re::ecs2::Entity *,re::ecs2::VideoMaterialAttachment const&,re::VideoTextureHandles &,re::MaterialParameterBlock &,unsigned int,unsigned int)::__FILE____LINE___logged, 1u))
    {
      return result;
    }

    v22 = *re::graphicsLogObjects(isTextureAttachment);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return result;
    }

LABEL_25:
    v23 = v22;
    v24 = *(a1 + 296);
    v25 = this[1];
    *buf = 136315394;
    *&buf[4] = v24;
    v71 = 2080;
    v72 = v25;
    _os_log_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_DEFAULT, "(%s) Unknown video component attachment %s encountered; skipping...", buf, 0x16u);

    return result;
  }

  if (*this >> 1 > 0x52B9782D83821E50)
  {
    if (*this >> 1 <= 0x7FDCEB30A1A454B0)
    {
      if (*this >> 1 > 0x624E48A54CCAF811)
      {
        if (v14 == 0x624E48A54CCAF812)
        {
          v41 = *(a3 + 10);
          v42 = *(a3 + 11);
          a3 = (a3 + 80);
          if (v42 && v41)
          {
            v65 = this[2] >> 1;
            v17 = &v66;
            v18 = &v65;
            return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
          }

          return result;
        }

        if (v14 == 0x73F7DC258CB875B1)
        {
          v31 = *(a3 + 12);
          v32 = *(a3 + 13);
          a3 = (a3 + 96);
          if (v32 && v31)
          {
            v67 = 0x585071CC318CDD9ALL;
            v17 = &v68;
            v18 = &v67;
            return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
          }

          return result;
        }
      }

      else
      {
        if (v14 == 0x52B9782D83821E51)
        {
          v39 = *(a3 + 22);
          v40 = *(a3 + 23);
          a3 = (a3 + 176);
          if (v40 && v39)
          {
            v55 = this[2] >> 1;
            v17 = &v56;
            v18 = &v55;
            return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
          }

          return result;
        }

        if (v14 == 0x52B9782D83821E52)
        {
          v15 = *(a3 + 24);
          v16 = *(a3 + 25);
          a3 = (a3 + 192);
          if (v16 && v15)
          {
            v53 = this[2] >> 1;
            v17 = &v54;
            v18 = &v53;
            return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
          }

          return result;
        }
      }

      goto LABEL_59;
    }

    v26 = 0x7FDCEB30A1A454B2;
    if (*this >> 1 <= 0x7FDCEB30A1A454B2)
    {
      if (v14 == 0x7FDCEB30A1A454B1)
      {
        goto LABEL_28;
      }

      goto LABEL_37;
    }

    if (v14 != 0x7FDCEB30A1A454B3)
    {
      if (v14 == 0x7FFEDE4BE45ACD2FLL)
      {
        goto LABEL_53;
      }

      goto LABEL_59;
    }

LABEL_56:
    v35 = *(a3 + 4);
    v36 = *(a3 + 5);
    a3 = (a3 + 32);
    if (v36 && v35)
    {
      v59 = this[2] >> 1;
      v17 = &v60;
      v18 = &v59;
      return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
    }

    return result;
  }

  if (*this >> 1 <= 0x489DE5C589B580C7)
  {
    if (v14 == 0x3B652FEC02A9004)
    {
      v43 = *(a3 + 8);
      v44 = *(a3 + 9);
      a3 = (a3 + 64);
      if (v44 && v43)
      {
        v47 = this[2] >> 1;
        v17 = &v48;
        v18 = &v47;
        return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
      }

      return result;
    }

    if (v14 == 0xAED356CD2DDD3B0)
    {
      v37 = *(a3 + 26);
      v38 = *(a3 + 27);
      a3 = (a3 + 208);
      if (v38 && v37)
      {
        v49 = this[2] >> 1;
        v17 = &v50;
        v18 = &v49;
        return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
      }

      return result;
    }

    v26 = 0x18BB8A89E24827A1;
LABEL_37:
    if (v14 == v26)
    {
      v27 = *(a3 + 2);
      v28 = *(a3 + 3);
      a3 = (a3 + 16);
      if (v28 && v27)
      {
        v61 = this[2] >> 1;
        v17 = &v62;
        v18 = &v61;
        return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
      }

      return result;
    }

    goto LABEL_59;
  }

  if (*this >> 1 > 0x4B1ED2EBAD5AE9A0)
  {
    if (v14 == 0x4B1ED2EBAD5AE9A1)
    {
LABEL_53:
      v33 = *(a3 + 6);
      v34 = *(a3 + 7);
      a3 = (a3 + 48);
      if (v34 && v33)
      {
        v51 = this[2] >> 1;
        v17 = &v52;
        v18 = &v51;
        return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
      }

      return result;
    }

    if (v14 == 0x52B9782D83821E50)
    {
      v29 = *(a3 + 20);
      v30 = *(a3 + 21);
      a3 = (a3 + 160);
      if (v30 && v29)
      {
        v57 = this[2] >> 1;
        v17 = &v58;
        v18 = &v57;
        return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
      }

      return result;
    }

LABEL_59:
    v22 = *re::graphicsLogObjects(isTextureAttachment);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      return result;
    }

    goto LABEL_25;
  }

  if (v14 != 0x489DE5C589B580C8)
  {
    if (v14 != 0x4B1ED2EBAC5B8AD3)
    {
      goto LABEL_59;
    }

    goto LABEL_56;
  }

LABEL_28:
  if (*(a3 + 1) && *a3)
  {
    v63 = this[2] >> 1;
    v17 = &v64;
    v18 = &v63;
    return re::MaterialParameterBlock::setTextureHandle(a4, v18, a3, v17);
  }

  return result;
}

double re::ecs2::VideoComponent::applyVideoTextureArrayAttachmentToParameterBlock(uint64_t a1, void *a2, const re::TextureHandle *a3, re::MaterialParameterBlock *a4)
{
  v4 = *a2 >> 1;
  if (v4 > 0x52B9782D83821E51)
  {
    if (*a2 >> 1 <= 0x7FDCEB30A1A454B0uLL)
    {
      switch(v4)
      {
        case 0x52B9782D83821E52uLL:
          v21 = *(a3 + 24);
          v22 = *(a3 + 25);
          a3 = (a3 + 192);
          if (v22)
          {
            v23 = v21 == 0;
          }

          else
          {
            v23 = 1;
          }

          if (!v23)
          {
            v25 = 0x434F49B340653E91;
            v7 = &v26;
            v8 = &v25;
            return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
          }

          break;
        case 0x624E48A54CCAF812uLL:
          v19 = *(a3 + 10);
          v20 = *(a3 + 11);
          a3 = (a3 + 80);
          if (v20 && v19)
          {
            v37 = 0x5E3E4F6B0382;
            v7 = &v38;
            v8 = &v37;
            return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
          }

          break;
        case 0x73F7DC258CB875B1uLL:
          v5 = *(a3 + 12);
          v6 = *(a3 + 13);
          a3 = (a3 + 96);
          if (v6)
          {
            if (v5)
            {
              v39 = 0x585071CC318CDD9ALL;
              v7 = &v40;
              v8 = &v39;
              return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
            }
          }

          break;
      }

      return result;
    }

    if (v4 != 0x7FDCEB30A1A454B1)
    {
      if (v4 != 0x7FDCEB30A1A454B2)
      {
        if (v4 != 0x7FDCEB30A1A454B3)
        {
          return result;
        }

LABEL_19:
        v11 = *(a3 + 4);
        v12 = *(a3 + 5);
        a3 = (a3 + 32);
        if (v12)
        {
          v13 = v11 == 0;
        }

        else
        {
          v13 = 1;
        }

        if (!v13)
        {
          v31 = 0x434F49B340653E72;
          v7 = &v32;
          v8 = &v31;
          return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
        }

        return result;
      }

LABEL_29:
      v14 = *(a3 + 2);
      v15 = *(a3 + 3);
      a3 = (a3 + 16);
      if (v15)
      {
        v16 = v14 == 0;
      }

      else
      {
        v16 = 1;
      }

      if (!v16)
      {
        v33 = 0x434F49B34064CA13;
        v7 = &v34;
        v8 = &v33;
        return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
      }

      return result;
    }

LABEL_26:
    if (*(a3 + 1) && *a3)
    {
      v35 = 0x434F49B3406455B4;
      v7 = &v36;
      v8 = &v35;
      return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
    }

    return result;
  }

  if (*a2 >> 1 <= 0x4B1ED2EBAC5B8AD2uLL)
  {
    if (v4 == 0x18BB8A89E24827A1)
    {
      goto LABEL_29;
    }

    if (v4 != 0x489DE5C589B580C8)
    {
      return result;
    }

    goto LABEL_26;
  }

  switch(v4)
  {
    case 0x4B1ED2EBAC5B8AD3uLL:
      goto LABEL_19;
    case 0x52B9782D83821E50uLL:
      v17 = *(a3 + 20);
      v18 = *(a3 + 21);
      a3 = (a3 + 160);
      if (v18 && v17)
      {
        v29 = 0x434F49B3406455D3;
        v7 = &v30;
        v8 = &v29;
        return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
      }

      break;
    case 0x52B9782D83821E51uLL:
      v9 = *(a3 + 22);
      v10 = *(a3 + 23);
      a3 = (a3 + 176);
      if (v10)
      {
        if (v9)
        {
          v27 = 0x434F49B34064CA32;
          v7 = &v28;
          v8 = &v27;
          return re::MaterialParameterBlock::setTextureHandle(a4, v8, a3, v7);
        }
      }

      break;
  }

  return result;
}

void re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(char **this, const re::ecs2::VideoMaterialAttachment *a2, re::MaterialParameterBlock *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  isTextureAttachment = re::ecs2::VideoMaterialAttachment::isTextureAttachment(this, a2);
  if (isTextureAttachment)
  {
    v13 = this[2] >> 1;
    re::MaterialParameterBlock::removeTexture(a2, &v13);
    return;
  }

  v6 = *this >> 1;
  if (v6 == 0x32970A2E88169C84)
  {
    v9 = this[1];
    if (v9 == "REVideoAttachmentConstantImageFunction" || (isTextureAttachment = strcmp(v9, "REVideoAttachmentConstantImageFunction"), !isTextureAttachment))
    {
      v8 = 0x3D3952D14E0320A8;
      goto LABEL_14;
    }
  }

  else if (v6 == 0x41C03F11B6A8BA59)
  {
    v7 = this[1];
    if (v7 == "REVideoAttachmentConstantYCbCrMatrix" || (isTextureAttachment = strcmp(v7, "REVideoAttachmentConstantYCbCrMatrix"), !isTextureAttachment))
    {
      v8 = 0x3C8C0FE134EC625DLL;
LABEL_14:
      *buf = v8;
      re::MaterialParameterBlock::removeConstant(a2, buf, 4);
      return;
    }
  }

  if ((atomic_exchange(re::ecs2::VideoComponent::removeVideoAttachmentFromParameterBlock(re::ecs2::VideoMaterialAttachment const&,re::MaterialParameterBlock &)::__FILE____LINE___logged, 1u) & 1) == 0)
  {
    v10 = *re::graphicsLogObjects(isTextureAttachment);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      v12 = this[1];
      *buf = 136315138;
      *&buf[4] = v12;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "removeVideoAttachmentFromParameterBlock: Unknown video component attachment %s encountered; skipping...", buf, 0xCu);
    }
  }
}

void ___ZN2re4ecs238remoteEffectsSystemActivationDebugGlowEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue("RemoteEffectsActivationDebugGlow", a2, v3);
  if (v3[0])
  {
    v2 = v3[1];
  }

  else
  {
    v2 = 0;
  }

  _MergedGlobals_310 = v2;
}

void ___ZN2re4ecs242remoteEffectsSystemPositionDebugGlowRadiusEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::floatValue("RemoteEffectsPositionDebugGlowRadius", a2, v3);
  v2 = v4;
  if (!v3[0])
  {
    v2 = 0.0;
  }

  dword_1EE1AC0CC = LODWORD(v2);
}

BOOL re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(uint64_t a1, unint64_t a2)
{
  if (!*a1)
  {
    return 0;
  }

  v2 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v3 = *(*(a1 + 8) + 4 * ((v2 ^ (v2 >> 31)) % *(a1 + 24)));
  if (v3 == 0x7FFFFFFF)
  {
    return 0;
  }

  v5 = *(a1 + 16);
  v6 = 0x7FFFFFFFLL;
  while (*(v5 + 72 * v3 + 8) != a2)
  {
    v3 = *(v5 + 72 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      return v6 != 0x7FFFFFFF;
    }
  }

  v6 = v3;
  return v6 != 0x7FFFFFFF;
}

void re::ecs2::RemoteEffectsStyleIdCache::dumpCache(re::ecs2::RemoteEffectsStyleIdCache *this)
{
  *&v44[13] = *MEMORY[0x1E69E9840];
  v2 = *re::remoteEffectsLogObjects(this);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v3)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "=== RemoteEffectsStyleIdCache Cache Dump Begin ===", buf, 2u);
  }

  v4 = *re::remoteEffectsLogObjects(v3);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT);
  if (v5)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "m_stylesToEntity:", buf, 2u);
  }

  v6 = *(this + 20);
  if (v6)
  {
    v7 = 0;
    v8 = *(this + 8);
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
        LODWORD(v7) = *(this + 20);
        break;
      }
    }
  }

  else
  {
    LODWORD(v7) = 0;
  }

  while (v7 != v6)
  {
    v10 = *(this + 8);
    v11 = *re::remoteEffectsLogObjects(v5);
    v5 = os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v12 = v10 + 32 * v7;
      v13 = *(v12 + 8);
      v14 = *(*(v12 + 16) + 312);
      *buf = 134218240;
      *&buf[4] = v13;
      v43 = 2048;
      *v44 = v14;
      _os_log_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_DEFAULT, "style: %llu --> entityId: %llu", buf, 0x16u);
    }

    v15 = *(this + 20);
    if (v15 <= v7 + 1)
    {
      v15 = v7 + 1;
    }

    while (v15 - 1 != v7)
    {
      LODWORD(v7) = v7 + 1;
      if ((*(*(this + 8) + 32 * v7) & 0x80000000) != 0)
      {
        goto LABEL_21;
      }
    }

    LODWORD(v7) = v15;
LABEL_21:
    ;
  }

  v16 = *re::remoteEffectsLogObjects(v5);
  v17 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
  if (v17)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "=========", buf, 2u);
  }

  v18 = *re::remoteEffectsLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_DEFAULT, "m_entityToStyles:", buf, 2u);
  }

  v37 = *(this + 8);
  if (v37)
  {
    v20 = 0;
    v21 = *(this + 2);
    while (1)
    {
      v22 = *v21;
      v21 += 18;
      if (v22 < 0)
      {
        break;
      }

      if (v37 == ++v20)
      {
        LODWORD(v20) = *(this + 8);
        break;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  if (v20 != v37)
  {
    while (1)
    {
      v23 = *(this + 2) + 72 * v20;
      if (*(v23 + 44))
      {
        break;
      }

LABEL_45:
      v31 = re::DynamicString::append(buf, "]", 1uLL);
      v32 = *re::remoteEffectsLogObjects(v31);
      if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
      {
        v33 = *(v23 + 8);
        v34 = &buf[9];
        if (buf[8])
        {
          v34 = *&v44[1];
        }

        *v38 = 134218242;
        v39 = v33;
        v40 = 2080;
        v41 = v34;
        _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "entity: %llu --> styles: %s", v38, 0x16u);
      }

      v19 = *buf;
      if (*buf && (buf[8] & 1) != 0)
      {
        v19 = (*(**buf + 40))();
      }

      v35 = *(this + 8);
      if (v35 <= v20 + 1)
      {
        v35 = v20 + 1;
      }

      while (v35 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(*(this + 2) + 72 * v20) & 0x80000000) != 0)
        {
          goto LABEL_58;
        }
      }

      LODWORD(v20) = v35;
LABEL_58:
      if (v20 == v37)
      {
        goto LABEL_59;
      }
    }

    v24 = 0;
    while (1)
    {
      v25 = *(v23 + 40);
      if (v25)
      {
        v26 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v24 ^ (v24 >> 30))) >> 27));
        v27 = (v26 ^ (v26 >> 31)) % v25;
        v28 = *(v23 + 32);
        v29 = *(*(v23 + 24) + 4 * v27);
        if (v29 != 0x7FFFFFFF)
        {
          while (*(v28 + 24 * v29 + 16) != v24)
          {
            v29 = *(v28 + 24 * v29 + 8) & 0x7FFFFFFF;
            if (v29 == 0x7FFFFFFF)
            {
              goto LABEL_41;
            }
          }

          goto LABEL_42;
        }
      }

      else
      {
        v28 = *(v23 + 32);
      }

LABEL_41:
      LODWORD(v29) = 0x7FFFFFFF;
LABEL_42:
      re::DynamicString::appendf(buf, "%llu", *(v28 + 24 * v29 + 16));
      v30 = *(v23 + 44);
      if (v24 != v30 - 1)
      {
        re::DynamicString::appendf(buf, ", ");
        v30 = *(v23 + 44);
      }

      if (++v24 >= v30)
      {
        goto LABEL_45;
      }
    }
  }

LABEL_59:
  v36 = *re::remoteEffectsLogObjects(v19);
  if (os_log_type_enabled(v36, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_DEFAULT, "=== RemoteEffectsStyleIdCache Cache Dump End ===", buf, 2u);
  }
}

uint64_t re::ecs2::RemoteEffectsStyleIdCache::updateStyles(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v7 = *a2;
  v66 = *(*a2 + 312);
  v64 = 0;
  v62 = 0u;
  v63 = 0u;
  v65 = 0x7FFFFFFFLL;
  v8 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = *(v8 + 56);
  if (v9)
  {
    v10 = *(v8 + 72);
    v11 = &v10[16 * v9];
    do
    {
      v12 = *v10;
      v67 = v12;
      v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v12 ^ (v12 >> 30))) >> 27));
      v14 = v13 ^ (v13 >> 31);
      if (DWORD2(v63))
      {
        v15 = v14 % DWORD2(v63);
        v16 = *(*(&v62 + 1) + 4 * v15);
        if (v16 != 0x7FFFFFFF)
        {
          while (*(v63 + 24 * v16 + 16) != v12)
          {
            LODWORD(v16) = *(v63 + 24 * v16 + 8) & 0x7FFFFFFF;
            if (v16 == 0x7FFFFFFF)
            {
              goto LABEL_9;
            }
          }

          goto LABEL_10;
        }
      }

      else
      {
        LODWORD(v15) = 0;
      }

LABEL_9:
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(&v62, v15, v14, &v67, &v67);
      ++HIDWORD(v65);
LABEL_10:
      v10 += 16;
    }

    while (v10 != v11);
  }

  v17 = *a2;
  if (!*a2)
  {
    if (re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, MEMORY[0x138]))
    {
      goto LABEL_13;
    }

LABEL_29:
    v67 = 0;
    v68 = 0;
    v69 = 0;
    v32 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v66 ^ (v66 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v66 ^ (v66 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, &v66, v32 ^ (v32 >> 31), &v67);
    if (HIDWORD(v68) == 0x7FFFFFFF)
    {
      v33 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v68, v67);
      *(v33 + 8) = v66;
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v33 + 16, &v62);
      ++*(a1 + 40);
    }

    v34 = v64;
    if (v64)
    {
      v35 = 0;
      v36 = (v63 + 8);
      while (1)
      {
        v37 = *v36;
        v36 += 6;
        if (v37 < 0)
        {
          break;
        }

        if (v64 == ++v35)
        {
          LODWORD(v35) = v64;
          break;
        }
      }
    }

    else
    {
      LODWORD(v35) = 0;
    }

    if (v35 != v64)
    {
      v38 = v63;
      do
      {
        v67 = *(v38 + 24 * v35 + 16);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 48, &v67, a2);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a3, &v67);
        v38 = v63;
        if (v64 <= v35 + 1)
        {
          v39 = v35 + 1;
        }

        else
        {
          v39 = v64;
        }

        while (v39 - 1 != v35)
        {
          LODWORD(v35) = v35 + 1;
          if ((*(v63 + 24 * v35 + 8) & 0x80000000) != 0)
          {
            goto LABEL_46;
          }
        }

        LODWORD(v35) = v39;
LABEL_46:
        ;
      }

      while (v35 != v34);
    }

    goto LABEL_86;
  }

  v18 = (v17 + 8);
  hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, *(v17 + 312));

  if (!hasCachedStyles)
  {
    goto LABEL_29;
  }

LABEL_13:
  v20 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
  if (*(v20 + 28) == HIDWORD(v63))
  {
    if (v64)
    {
      v21 = 0;
      v22 = *(v20 + 24);
      v23 = *(v20 + 16);
      while (1)
      {
        if ((*(v63 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          if (!v22)
          {
            goto LABEL_23;
          }

          v25 = *(*(v20 + 8) + 4 * (*(v63 + 24 * v21) % v22));
          if (v25 == 0x7FFFFFFF)
          {
            goto LABEL_23;
          }

          while (*(v23 + 24 * v25 + 16) != *(v63 + 24 * v21 + 16))
          {
            v25 = *(v23 + 24 * v25 + 8) & 0x7FFFFFFF;
            if (v25 == 0x7FFFFFFF)
            {
              goto LABEL_23;
            }
          }
        }

        v24 = 0;
        if (++v21 == v64)
        {
          goto LABEL_90;
        }
      }
    }

    goto LABEL_89;
  }

LABEL_23:
  v60 = a3;
  v26 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
  v27 = v26;
  v28 = *(v26 + 32);
  if (v28)
  {
    v29 = 0;
    v30 = (*(v26 + 16) + 8);
    while (1)
    {
      v31 = *v30;
      v30 += 6;
      if (v31 < 0)
      {
        break;
      }

      if (v28 == ++v29)
      {
        LODWORD(v29) = *(v26 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v29) = 0;
  }

  if (v29 == v28)
  {
    v40 = 0;
  }

  else
  {
    v40 = 0;
    v41 = *(v26 + 16);
    v42 = *(v26 + 32);
    do
    {
      v43 = *(v41 + 24 * v29 + 16);
      v67 = v43;
      if (!DWORD2(v63) || (v44 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v43 ^ (v43 >> 30))) >> 27)), v45 = *(*(&v62 + 1) + 4 * ((v44 ^ (v44 >> 31)) % DWORD2(v63))), v45 == 0x7FFFFFFF))
      {
LABEL_56:
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a4, &v67);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 48, v67);
        v46 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v46, &v67);
        v42 = *(v27 + 32);
        v41 = *(v27 + 16);
        v40 = 1;
      }

      else
      {
        while (*(v63 + 24 * v45 + 16) != v43)
        {
          LODWORD(v45) = *(v63 + 24 * v45 + 8) & 0x7FFFFFFF;
          if (v45 == 0x7FFFFFFF)
          {
            goto LABEL_56;
          }
        }
      }

      if (v42 <= v29 + 1)
      {
        v47 = v29 + 1;
      }

      else
      {
        v47 = v42;
      }

      while (v47 - 1 != v29)
      {
        LODWORD(v29) = v29 + 1;
        if ((*(v41 + 24 * v29 + 8) & 0x80000000) != 0)
        {
          goto LABEL_64;
        }
      }

      LODWORD(v29) = v47;
LABEL_64:
      ;
    }

    while (v29 != v28);
  }

  v48 = v64;
  if (v64)
  {
    v49 = 0;
    v50 = (v63 + 8);
    v51 = v60;
    while (1)
    {
      v52 = *v50;
      v50 += 6;
      if (v52 < 0)
      {
        break;
      }

      if (v64 == ++v49)
      {
        LODWORD(v49) = v64;
        break;
      }
    }
  }

  else
  {
    LODWORD(v49) = 0;
    v51 = v60;
  }

  if (v49 != v64)
  {
    v53 = v63;
    do
    {
      v67 = *(v53 + 24 * v49 + 16);
      v54 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
      if (!re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::contains(v54, &v67))
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v51, &v67);
        re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 48, &v67, a2);
        v55 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v55, &v67);
        v40 = 1;
      }

      v53 = v63;
      if (v64 <= v49 + 1)
      {
        v56 = v49 + 1;
      }

      else
      {
        v56 = v64;
      }

      while (v56 - 1 != v49)
      {
        LODWORD(v49) = v49 + 1;
        if ((*(v63 + 24 * v49 + 8) & 0x80000000) != 0)
        {
          goto LABEL_82;
        }
      }

      LODWORD(v49) = v56;
LABEL_82:
      ;
    }

    while (v49 != v48);
  }

  if (!*(re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v66) + 28))
  {
    re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, &v66);
  }

  if ((v40 & 1) == 0)
  {
LABEL_89:
    v24 = 0;
    goto LABEL_90;
  }

LABEL_86:
  v57 = *a2;
  if (v57)
  {
    v58 = (v57 + 8);
  }

  v24 = 1;
LABEL_90:
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v62);
  return v24;
}

uint64_t re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 72 * v6 + 16;
}

void re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v11, a1, a2, v3 ^ (v3 >> 31));
  v4 = v13;
  if (v13 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 32 * v13);
    v7 = *v6 & 0x7FFFFFFF;
    if (v14 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v12) = v7;
    }

    else
    {
      *(v5 + 32 * v14) = *(v5 + 32 * v14) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      v8 &= ~0x80000000;
      *v6 = v8;
      v9 = *(v6 + 2);
      if (v9)
      {

        *(v6 + 2) = 0;
        v5 = *(a1 + 16);
        v8 = *(v5 + 32 * v4);
      }
    }

    v10 = *(a1 + 40);
    *(v5 + 32 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v10 + 1;
  }
}

void *re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::SharedPtr<re::RealityFile>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    v8 = *a3;
    result[1] = *a2;
    result[2] = v8;
    if (v8)
    {
      result = (v8 + 8);
    }

    ++*(a1 + 40);
  }

  return result;
}

BOOL re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::RemoteEffectsStyleIdCache::getStyles(re::ecs2::RemoteEffectsStyleIdCache *this, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!*this || (v4 = *(*a2 + 312), v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27)), v6 = v5 ^ (v5 >> 31), v7 = *(*(this + 1) + 4 * (v6 % *(this + 6))), v7 == 0x7FFFFFFF))
  {
LABEL_6:
    re::ecs2::RemoteEffectsStyleIdCache::dumpCache(this);
    v10 = *re::remoteEffectsLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(*a2 + 312);
      *buf = 134217984;
      v16 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Failed to find entity %llu in m_entityToStyles", buf, 0xCu);
    }

    v4 = *(*a2 + 312);
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
    v6 = v12 ^ (v12 >> 31);
  }

  else
  {
    v8 = *(this + 2);
    while (*(v8 + 72 * v7 + 8) != v4)
    {
      v7 = *(v8 + 72 * v7) & 0x7FFFFFFF;
      if (v7 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v14 = v4;
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this, &v14, v6, buf);
  return *(this + 2) + 72 * v17 + 16;
}

id re::ecs2::RemoteEffectsStyleIdCache::getEntity(re::ecs2::RemoteEffectsStyleIdCache *this, re::ecs2::RemoteEffectsStyleIdCache *a2, unint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = a2 + 48;
  v7 = a3 ^ (a3 >> 30);
  if (!*(a2 + 6) || (v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27)), v9 = *(*(a2 + 7) + 4 * ((v8 ^ (v8 >> 31)) % *(a2 + 18))), v9 == 0x7FFFFFFF))
  {
LABEL_6:
    re::ecs2::RemoteEffectsStyleIdCache::dumpCache(a2);
    v12 = *re::remoteEffectsLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      v16 = 134217984;
      v17 = a3;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Failed to find entity for styleId %llu.", &v16, 0xCu);
    }
  }

  else
  {
    v10 = *(a2 + 8);
    while (*(v10 + 32 * v9 + 8) != a3)
    {
      v9 = *(v10 + 32 * v9) & 0x7FFFFFFF;
      if (v9 == 0x7FFFFFFF)
      {
        goto LABEL_6;
      }
    }
  }

  v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v16, v6, a3, v13 ^ (v13 >> 31));
  v15 = *(*(a2 + 8) + 32 * v18 + 16);
  *this = v15;
  if (v15)
  {
    return (v15 + 8);
  }

  return result;
}

double re::ecs2::RemoteEffectsStyleIdCache::removeEntity(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v5 = (v2 + 8);
    hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, *(v2 + 312));

    if (hasCachedStyles)
    {
      v15 = *(*a2 + 312);
      v8 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v15);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v16, v8);
      v15 = *(*a2 + 312);
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, &v15);
      v9 = v18;
      if (v18)
      {
        v10 = 0;
        v11 = (v17 + 8);
        while (1)
        {
          v12 = *v11;
          v11 += 6;
          if (v12 < 0)
          {
            break;
          }

          if (v18 == ++v10)
          {
            LODWORD(v10) = v18;
            break;
          }
        }
      }

      else
      {
        LODWORD(v10) = 0;
      }

      if (v10 != v18)
      {
        v13 = v17;
        do
        {
          re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 48, *(v13 + 24 * v10 + 16));
          v13 = v17;
          if (v18 <= v10 + 1)
          {
            v14 = v10 + 1;
          }

          else
          {
            v14 = v18;
          }

          while (v14 - 1 != v10)
          {
            LODWORD(v10) = v10 + 1;
            if ((*(v17 + 24 * v10 + 8) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v10) = v14;
LABEL_18:
          ;
        }

        while (v10 != v9);
      }

      return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v16);
    }
  }

  return result;
}

BOOL re::ecs2::RemoteEffectsStateStore::stateExists(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v11 = a2;
  result = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, a2);
  if (result)
  {
    v6 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v11);
    if (*v6 && (v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * a3) ^ ((0xBF58476D1CE4E5B9 * a3) >> 27)), v8 = *(*(v6 + 8) + 4 * ((v7 ^ (v7 >> 31)) % *(v6 + 24))), v8 != 0x7FFFFFFF))
    {
      v9 = *(v6 + 16);
      v10 = 0x7FFFFFFFLL;
      while (*(v9 + 24 * v8 + 4) != a3)
      {
        v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          return v10 != 0x7FFFFFFF;
        }
      }

      v10 = v8;
      return v10 != 0x7FFFFFFF;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

BOOL re::ecs2::RemoteEffectsStateStore::removeStyle(re::ecs2::RemoteEffectsStateStore *this, unint64_t a2)
{
  v5 = a2;
  hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(this, a2);
  if (hasCachedStyles)
  {
    re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this, &v5);
  }

  return hasCachedStyles;
}

BOOL re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

BOOL re::ecs2::RemoteEffectsStateStore::removeState(re::ecs2::RemoteEffectsStateStore *a1, unint64_t a2, unsigned int a3)
{
  v8 = a2;
  v7 = a3;
  v4 = re::ecs2::RemoteEffectsStateStore::stateExists(a1, a2, a3);
  if (v4)
  {
    v5 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v8);
    re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::remove(v5, &v7);
    if (!*(re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v8) + 28))
    {
      re::ecs2::RemoteEffectsStateStore::removeStyle(a1, v8);
    }
  }

  return v4;
}

BOOL re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::remove(uint64_t a1, unsigned __int8 *a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * *a2) ^ ((0xBF58476D1CE4E5B9 * *a2) >> 27));
  re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>(a1, a2, v3 ^ (v3 >> 31), v5);
  return re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::removeInternal(a1, v5);
}

void re::ecs2::RemoteEffectsStateStore::forEachEntry(re::ecs2::RemoteEffectsStateStore *a1, void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v10 = 1;
  v11 = 0;
  v12 = 0;
  v8 = a3;
  v9 = 0;
  re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(&v8, 0);
  v10 += 2;
  re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(a1, v5, &v8);
  if (v10)
  {
    v6 = &v11;
  }

  else
  {
    v6 = v12;
  }

  if (v9)
  {
    v7 = &v6[2 * v9];
    do
    {
      re::ecs2::RemoteEffectsStateStore::removeState(a1, *v6, *(v6 + 8));
      v6 += 2;
    }

    while (v6 != v7);
  }

  if (v8 && (v10 & 1) == 0)
  {
    (*(*v8 + 40))();
  }
}

void re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = a2;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 18;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  while (v6 != v5)
  {
    v9 = *(a1 + 16) + 72 * v6;
    if (!re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(v9 + 16, *(v9 + 8), v11, a3))
    {
      break;
    }

    v10 = *(a1 + 32);
    if (v10 <= v6 + 1)
    {
      v10 = v6 + 1;
    }

    while (v10 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a1 + 16) + 72 * v6) & 0x80000000) != 0)
      {
        goto LABEL_15;
      }
    }

    LODWORD(v6) = v10;
LABEL_15:
    ;
  }
}

uint64_t re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v7 = a3;
  v8 = *(a1 + 32);
  if (v8)
  {
    v9 = 0;
    v10 = *(a1 + 16);
    while (1)
    {
      v11 = *v10;
      v10 += 6;
      if (v11 < 0)
      {
        break;
      }

      if (v8 == ++v9)
      {
        LODWORD(v9) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v9) = 0;
  }

  if (v9 != v8)
  {
    v13 = *(a1 + 16);
    v14 = (a4 + 24);
    while (1)
    {
      v15 = v13 + 24 * v9;
      v32 = 0;
      v16 = *(v15 + 8);
      v31 = v16;
      if (v16)
      {
        v17 = (v16 + 8);
      }

      v18 = v7[2](v7, &v31, &v32 + 1, &v32);
      if (v31)
      {

        v31 = 0;
      }

      if (HIBYTE(v32) == 1)
      {
        break;
      }

LABEL_31:
      if ((v32 & 1) == 0)
      {
        v29 = *(a1 + 32) <= (v9 + 1) ? v9 + 1 : *(a1 + 32);
        v13 = *(a1 + 16);
        while (v29 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v13 + 24 * v9) & 0x80000000) != 0)
          {
            goto LABEL_40;
          }
        }

        LODWORD(v9) = v29;
LABEL_40:
        if (v9 != v8)
        {
          continue;
        }
      }

      v12 = v32 ^ 1u;
      goto LABEL_42;
    }

    v19 = *(v15 + 4);
    if (*a4)
    {
      v20 = *(a4 + 8);
      v21 = *(a4 + 16);
      if (v21)
      {
        if (v20 - 8 < 0xFFFFFFFFFFFFFFF7)
        {
          v23 = v20 + 1;
          v24 = 16;
          goto LABEL_23;
        }
      }

      else
      {
        v22 = *v14;
        if (v20 >= *v14)
        {
          v23 = v20 + 1;
          if (v22 < v23)
          {
            v24 = 2 * v22;
LABEL_23:
            if (v24 <= v23)
            {
              v26 = v23;
            }

            else
            {
              v26 = v24;
            }

            re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(a4, v26);
            v21 = *(a4 + 16);
          }
        }
      }
    }

    else
    {
      v25 = *(a4 + 8);
      re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(a4, v25 + 1);
      v21 = *(a4 + 16) + 2;
      *(a4 + 16) = v21;
    }

    if (v21)
    {
      v27 = a4 + 24;
    }

    else
    {
      v27 = *(a4 + 32);
    }

    v28 = (v27 + 16 * *(a4 + 8));
    *v28 = a2;
    v28[1] = v19;
    ++*(a4 + 8);
    *(a4 + 16) += 2;
    goto LABEL_31;
  }

  v12 = 1;
LABEL_42:

  return v12;
}

void re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData(re::ecs2::RemoteEffectShaderData *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((*(this + 98) + 48), re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    v3 = v2;
    MurmurHash3_x64_128("EnableGlow", 0xAuLL, 0, v5);
    v5[0] ^= v5[1] + (v5[0] << 6) + (v5[0] >> 2) - 0x61C8864680B583E9;
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove((v3 + 4), v5);
    re::ecs2::Component::markDirty(v3);
  }

  v4 = *(this + 98);
  if (v4)
  {

    *(this + 98) = 0;
  }
}

void re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v4 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = (v5 + 832 * v12);
    v7 = *v6 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v7;
    }

    else
    {
      *(v5 + 832 * v13) = *(v5 + 832 * v13) & 0x80000000 | v7;
    }

    v8 = *v6;
    if (*v6 < 0)
    {
      *v6 = v8 & 0x7FFFFFFF;
      re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData((v6 + 4));
      v5 = *(a1 + 16);
      v8 = *(v5 + 832 * v4);
    }

    v9 = *(a1 + 40);
    *(v5 + 832 * v4) = *(a1 + 36) | v8 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v9 + 1;
  }
}

void re::ecs2::RemoteEffectHoverState::~RemoteEffectHoverState(re::ecs2::RemoteEffectHoverState *this)
{
  *this = &unk_1F5CF4AC8;
  v2 = *(this + 7);
  if (v2)
  {
    (*(*v2 + 16))(v2, this);
  }

  re::AssetHandle::~AssetHandle((this + 720));
  v3 = *(this + 40);
  if (v3)
  {

    *(this + 40) = 0;
  }

  v4 = *(this + 35);
  if (v4)
  {

    *(this + 35) = 0;
  }

  v5 = *(this + 29);
  if (v5)
  {

    *(this + 29) = 0;
  }

  re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(this + 64);
  re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::RemoteEffectHoverState::~RemoteEffectHoverState(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::RemoteEffectsService::RemoteEffectsService(uint64_t a1, uint64_t a2)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 36) = 0x7FFFFFFFLL;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0;
  *(a1 + 84) = 0x7FFFFFFFLL;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 132) = 0x7FFFFFFFLL;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 1065353216;
  *(a1 + 216) = 0;
  *(a1 + 200) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 220) = 0x7FFFFFFFLL;
  *(a1 + 264) = 0;
  *(a1 + 248) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 268) = 0x7FFFFFFFLL;
  *(a1 + 312) = 0;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 316) = 0x7FFFFFFFLL;
  *(a1 + 360) = 0;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 364) = 0x7FFFFFFFLL;
  *(a1 + 408) = 0;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 412) = 0x7FFFFFFFLL;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0;
  *(a1 + 460) = 0x7FFFFFFFLL;
  *(a1 + 504) = 0;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 508) = 0x7FFFFFFFLL;
  *(a1 + 552) = 0;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 556) = 0x7FFFFFFFLL;
  *(a1 + 584) = 0;
  *(a1 + 568) = 0u;
  *(a1 + 568) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 576) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  return a1;
}

BOOL re::ecs2::RemoteEffectsService::updateAnimationNode(re::ecs2::RemoteEffectsService *a1, uint64_t a2, double a3)
{
  v5 = *(a2 + 24);
  if (v5)
  {
    updated = re::ecs2::RemoteEffectsService::updateAnimationNode(a1, a3, v5);
    v8 = *(a2 + 24);
    *(a2 + 56) = *(v8 + 80);
    if ((updated & 1) == 0)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v8);
      v9 = *(a2 + 24);
      if (v9)
      {

        *(a2 + 24) = 0;
      }
    }
  }

  v10 = a3 - *(a2 + 32) - *(a2 + 40);
  v11 = *(a2 + 48);
  if (v10 > v11)
  {
    v13 = *(a2 + 64);
  }

  else
  {
    v12 = v10 / v11;
    if (v11 <= 0.0)
    {
      v12 = 0.0;
    }

    v13 = *(a2 + 64);
    if (v12 < 1.0)
    {
      v14 = *(a2 + 56);
      if (v12 <= 0.0)
      {
        v13 = *(a2 + 56);
      }

      else
      {
        v15 = re::internal::evaluateCubicBezierEase<double>(**(a2 + 72), *(*(a2 + 72) + 8), *(*(a2 + 72) + 16), *(*(a2 + 72) + 24), v12, 0.00001);
        v13 = v13 * v15 + v14 * (1.0 - v15);
      }
    }
  }

  result = v10 <= v11;
  *(a2 + 80) = v13;
  return result;
}

void re::ecs2::RemoteEffectsService::updateAnimator(re::ecs2::RemoteEffectsService *a1, double *a2, double a3)
{
  v4 = *a2;
  if (v4)
  {
    updated = re::ecs2::RemoteEffectsService::updateAnimationNode(a1, v4, a3);
    v4 = *a2;
    a2[2] = a2[3] + *(*a2 + 80) - a2[1];
    if (!updated)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v4);
      if (*a2)
      {

        *a2 = 0.0;
      }

      v4 = 0;
      a2[1] = 0.0;
    }
  }

  else
  {
    a2[2] = a2[3];
  }

  *(a2 + 32) = v4 != 0;
}

void re::ecs2::RemoteEffectsService::updateAutoFade(uint64_t a1, uint64_t a2, int a3, uint64_t *a4, double a5)
{
  if (*(a2 + 225) != a3)
  {
    v7 = a3;
    re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(a1 + 48, a4);
    *(*a4 + 32) = a5;
    re::ecs2::addAnimation(a4, a2 + 232, (*(a2 + 225) ^ 1u), *(a2 + 225));
    *(a2 + 225) = v7;
  }
}

void ___ZNK2re4ecs220RemoteEffectsService25spotlightAnimationEnabledEv_block_invoke(uint64_t a1, const char *a2)
{
  re::Defaults::BOOLValue("RemoteEffectsSpotlightAnimationEnabled", a2, v3);
  if (v3[0])
  {
    v2 = v3[1];
  }

  else
  {
    v2 = 1;
  }

  byte_1EE1AC0C9 = v2;
}

void re::ecs2::RemoteEffectsService::recursivelyClearAnimationNodes(uint64_t a1, unint64_t *a2)
{
  v4 = *a2;
  v5 = *(v4 + 24);
  if (v5)
  {
    v9 = *(v4 + 24);
    v6 = (v5 + 8);
    re::ecs2::RemoteEffectsService::recursivelyClearAnimationNodes(a1, &v9);

    v4 = *a2;
  }

  re::HashSetBase<re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::SharedPtr<re::ecs2::CAMeshSortGroup>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::Hash<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,re::EqualTo<re::SharedPtr<re::ecs2::CAMeshSortGroup>>,true,false>::remove(a1 + 48, v4);
  v7 = *a2;
  v8 = *(v7 + 24);
  if (v8)
  {

    *(v7 + 24) = 0;
  }
}

uint64_t re::ecs2::RemoteEffectsPinchStateStore::getPinchStates(re::ecs2::RemoteEffectsPinchStateStore *this, unint64_t a2)
{
  v4 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this, a2);
  if (v4)
  {
    v5 = *v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 48, a2);
  if (v6)
  {
    v5 = *v6;
  }

  v7 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 96, a2);
  if (v7)
  {
    v8 = *v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = re::HashTable<unsigned long long,re::DataArrayHandle<re::TransformCache>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 144, a2);
  if (v9)
  {
    v8 = *v9;
  }

  return v5 | (v8 << 8);
}

void re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(a1 + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(a1 + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return;
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
          return;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  v11 = *(a1 + 36);
  if (v11 == 0x7FFFFFFF)
  {
    v11 = *(a1 + 32);
    v12 = v11;
    if (v11 == v7)
    {
      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      LODWORD(v8) = v6 % *(a1 + 24);
      v12 = *(a1 + 32);
      v4 = *a2;
    }

    *(a1 + 32) = v12 + 1;
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
  }

  else
  {
    v13 = *(a1 + 16);
    v14 = *(v13 + 24 * v11 + 8);
    *(a1 + 36) = v14 & 0x7FFFFFFF;
  }

  *(v13 + 24 * v11 + 8) = v14 | 0x80000000;
  v15 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v11 + 8) = *(*(a1 + 16) + 24 * v11 + 8) & 0x80000000 | *(v15 + 4 * v8);
  *(*(a1 + 16) + 24 * v11) = v6;
  *(*(a1 + 16) + 24 * v11 + 16) = v4;
  if (v4)
  {
    v16 = (v4 + 8);
    v15 = *(a1 + 8);
  }

  *(v15 + 4 * v8) = v11;
  ++*(a1 + 28);
  ++*(a1 + 40);
}

void re::ecs2::addAnimation(uint64_t *a1, uint64_t a2, double a3, double a4)
{
  v7 = a4 - a3 + *(a2 + 8);
  *(a2 + 8) = v7;
  v8 = *a1;
  *(v8 + 64) = v7;
  *(v8 + 56) = 0;
  *(v8 + 80) = 0;
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v8 + 24), *a2);
  re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(a2, *a1);
  *(a2 + 24) = a4;
  *(a2 + 32) = *a2 != 0;
}

void ___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke(_BOOL8 a1, uint64_t *a2, _BYTE *a3)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32);
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v5 = *re::remoteEffectsLogObjects(a1);
    a1 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    if (a1)
    {
      v6 = *a2;
      v7 = *(*a2 + 624);
      if (v7)
      {
        v7 = *(v7 + 312);
      }

      v8 = *(v6 + 612);
      buf.columns[0].i32[0] = 134218496;
      *(buf.columns[0].i64 + 4) = v6;
      buf.columns[0].i16[6] = 2048;
      *(&buf.columns[0].i64[1] + 6) = v7;
      buf.columns[1].i16[3] = 1024;
      buf.columns[1].i32[2] = v8;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "HoverState %p - updating for entity %llu - hitTestData.valid: %d", &buf, 0x1Cu);
    }
  }

  v9 = *a2;
  v10 = *(v4 + 584);
  v11 = *(*a2 + 152);
  v12 = *(*a2 + 176);
  v13 = *(*a2 + 184);
  if (!*(*a2 + 176))
  {
    v13 = 0.0;
  }

  if (v10 - (v11 + v13) > 3600.0)
  {
    *(v9 + 152) = v10;
    v11 = v10;
  }

  v14 = *(v9 + 612);
  v15 = v14;
  if (*(v9 + 144) != v14)
  {
    if (!*(v9 + 612))
    {
      v15 = 0;
      v16 = 0;
      *(v9 + 160) = v10;
      *(v9 + 144) = 0;
      v17 = (v9 + 496);
      v18 = (v9 + 765);
      v19 = *(v9 + 765);
      goto LABEL_22;
    }

    *(v9 + 152) = v10;
    v15 = 1;
    v11 = v10;
  }

  v16 = 0;
  *(v9 + 144) = v14;
  v17 = (v9 + 496);
  v18 = (v9 + 765);
  v19 = *(v9 + 765);
  if (!v15 || (v19 & 1) != 0 || (v16 = 0, !v12) || (*(v9 + 168) & 1) != 0)
  {
LABEL_22:
    if (v19 != v15 && *(v9 + 416) == 1 && (*(v9 + 312) & 1) == 0)
    {
      re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&buf);
      re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(v4 + 48, &buf);
      v20 = buf.columns[0].i64[0];
      v21 = 432;
      if (v15)
      {
        v21 = 424;
      }

      v22 = *(v9 + v21);
      if (v15)
      {
        if (*(v9 + 360) == 1)
        {
          v22 = *(v9 + 368);
        }
      }

      else
      {
        if (*(v9 + 376))
        {
          v22 = *(v9 + 384);
        }

        if (*(v9 + 777) == 1)
        {
          v24 = *(v9 + 184);
          if (!*(v9 + 176))
          {
            v24 = 0.0;
          }

          v22 = v22 + (*(v9 + 160) - (*(v9 + 152) + v24)) * *(v9 + 780);
        }
      }

      *(buf.columns[0].i64[0] + 48) = v22;
      *(v20 + 72) = v23;
      *(v20 + 32) = v10;
      if (v16)
      {
        v25 = *(v9 + 184);
        if (!*(v9 + 176))
        {
          v25 = 0.0;
        }

        *(v20 + 32) = *(v9 + 152) + v25;
      }

      re::ecs2::addAnimation(&buf, v9 + 320, *(v9 + 765), (*(v9 + 765) ^ 1u));
      *(v9 + 768) = v10;
      if (v15)
      {
        re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&v54);
        v26 = v54;
        v54[6] = *(v20 + 48);
        v26[9] = *(v20 + 72);
        v26[4] = *(v20 + 32);
        re::ecs2::RemoteEffectsService::updateAutoFade(v4, v9, 0, &v54, v10);
      }
    }

    re::ecs2::RemoteEffectsService::updateAudioPlaybackDataIsActive(v4, v9, v15);
    if (qword_1EE1AC0E0 != -1)
    {
      dispatch_once(&qword_1EE1AC0E0, &__block_literal_global_22_0);
    }

    if (byte_1EE1AC0C9 != 1 || *(v9 + 272) != 1)
    {
      goto LABEL_78;
    }

    v27 = *(*(v9 + 624) + 312);
    PinchStates = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((v4 + 376), v27);
    if ((PinchStates & 0xFE00) == 0x200 || (PinchStates & 0xFE) == 2)
    {
      goto LABEL_78;
    }

    v30 = *(v9 + 608);
    if (v30 == 2)
    {
      v31 = (re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((v4 + 376), v27) & 0xFF00) == 256;
    }

    else
    {
      if (v30 != 1)
      {
        v35 = 0;
        if (!v15)
        {
LABEL_78:
          *v18 = v15;
          goto LABEL_79;
        }

LABEL_70:
        if ((v30 - 3) >= 0xFFFFFFFE && (*(v9 + 312) & 1) == 0 && ((v35 ^ 1) & 1) == 0)
        {
          re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&v54);
          re::HashSetBase<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::Hash<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,re::EqualTo<re::SharedPtr<re::ecs2::RemoteEffectAnimationNode>>,true,false>::add(v4 + 48, &v54);
          v36 = v54;
          v54[6] = 0x3FC3333333333333;
          *(v36 + 32) = v10;
          re::ecs2::addAnimation(&v54, v9 + 280, 0.0, 1.0);
          v37 = *(v9 + 320);
          if (v37)
          {
            buf.columns[0].i64[0] = *(v9 + 320);
            v38 = (v37 + 8);
            re::ecs2::RemoteEffectsService::recursivelyClearAnimationNodes(v4, &buf);

            v39 = *(v9 + 320);
            if (v39)
            {

              *(v9 + 320) = 0;
            }

            *(v9 + 328) = 0;
            *(v9 + 352) = 0;
            *(v9 + 336) = *(v9 + 344);
          }
        }

        goto LABEL_78;
      }

      v31 = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((v4 + 376), v27) == 1;
    }

    v35 = v31;
    if (!v15)
    {
      goto LABEL_78;
    }

    goto LABEL_70;
  }

  if (v13 + v11 < v10)
  {
    v16 = 1;
    *(v9 + 168) = 1;
    goto LABEL_22;
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v32 = *re::remoteEffectsLogObjects(a1);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v9 + 184);
      if (!*(v9 + 176))
      {
        v33 = 0.0;
      }

      v34 = *(v9 + 152) + v33 - v10;
      buf.columns[0].i32[0] = 134218240;
      *(buf.columns[0].i64 + 4) = v9;
      buf.columns[0].i16[6] = 2048;
      *(&buf.columns[0].i64[1] + 6) = v34;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "HoverState %p - delayed activation counting down: %f", &buf, 0x16u);
    }
  }

LABEL_79:
  if (*v18 == 1 && (*(v9 + 225) & 1) == 0 && *(v9 + 224) == 1 && v10 - *(v9 + 768) >= 0.5)
  {
    re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(&buf);
    v40 = buf.columns[0].i64[0];
    *(buf.columns[0].i64[0] + 48) = 0x3FF8000000000000;
    re::ecs2::RemoteEffectsService::updateAutoFade(v4, v9, 1, &buf, v10);
    *(v9 + 226) = 1;
  }

  re::ecs2::RemoteEffectsService::updateAnimator(v4, (v9 + 320), v10);
  re::ecs2::RemoteEffectsService::updateAnimator(v4, (v9 + 232), v10);
  re::ecs2::RemoteEffectsService::updateAnimator(v4, (v9 + 280), v10);
  if (*(v9 + 352) == 1 || (*(v9 + 264) & 1) != 0 || (*(v9 + 312) & 1) != 0)
  {
    v42 = 1.0;
    if (*(v9 + 312))
    {
      goto LABEL_92;
    }

    goto LABEL_91;
  }

  if (*v18 & 1) != 0 || (*(v9 + 144))
  {
LABEL_91:
    v42 = *(v9 + 336);
LABEL_92:
    *(v9 + 208) = v42;
    if (*(v9 + 226) == 1)
    {
      *(v9 + 208) = v42 * *(v9 + 248);
    }

    if (*(v9 + 612) == 1)
    {
      if (*(v9 + 764))
      {
        re::TransformService::worldMatrix(*(v4 + 576), *(v9 + 624), 0, &buf);
        v57 = __invert_f4(buf);
        v57.columns[0] = vaddq_f32(v57.columns[3], vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v57.columns[0], COERCE_FLOAT(*(v9 + 496))), v57.columns[1], *(v9 + 496), 1), v57.columns[2], *(v9 + 496), 2));
        v57.columns[0].i64[0] = vdivq_f32(v57.columns[0], vdupq_laneq_s32(v57.columns[0], 3)).u64[0];
        v57.columns[0] = vaddq_f32(buf.columns[3], vmlaq_f32(vmlaq_lane_f32(vmulq_n_f32(buf.columns[0], v57.columns[0].f32[0]), buf.columns[1], *v57.columns[0].f32, 1), 0, buf.columns[2]));
        v43 = vdivq_f32(v57.columns[0], vdupq_laneq_s32(v57.columns[0], 3));
      }

      else
      {
        v43 = *v17;
      }

      *(v9 + 128) = v43;
    }

    if (*(v9 + 216) == 1)
    {
      *(v9 + 192) = *(v9 + 128);
      *(v9 + 216) = 0;
    }

    else
    {
      *(v9 + 192) = vmlaq_n_f32(vmulq_n_f32(*(v9 + 128), *(v9 + 468)), *(v9 + 192), 1.0 - *(v9 + 468));
    }

    v44 = 1;
    goto LABEL_103;
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
  {
    v44 = 0;
    goto LABEL_105;
  }

  v52 = *re::remoteEffectsLogObjects(v41);
  v41 = os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT);
  v44 = 0;
  if (v41)
  {
    buf.columns[0].i32[0] = 134217984;
    *(buf.columns[0].i64 + 4) = v9;
    _os_log_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEFAULT, "HoverState %p - updateGlowState returning false", &buf, 0xCu);
    v44 = 0;
  }

LABEL_103:
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

LABEL_105:
  if (v44)
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled)
    {
      v45 = *re::remoteEffectsLogObjects(v41);
      if (os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        v46 = *a2;
        v47 = *(*a2 + 208);
        buf.columns[0].i32[0] = 134218240;
        *(buf.columns[0].i64 + 4) = v46;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v47;
        _os_log_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEFAULT, "HoverState %p - progress: %f", &buf, 0x16u);
      }
    }

    v48 = *(*a2 + 96);
    if (v48)
    {
      (*(*v48 + 16))(v48);
    }
  }

  else
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled)
    {
      v49 = *re::remoteEffectsLogObjects(v41);
      if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
      {
        v50 = *a2;
        v51 = *(*a2 + 624);
        if (v51)
        {
          v51 = *(v51 + 312);
        }

        buf.columns[0].i32[0] = 134218240;
        *(buf.columns[0].i64 + 4) = v50;
        buf.columns[0].i16[6] = 2048;
        *(&buf.columns[0].i64[1] + 6) = v51;
        _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, "HoverState %p - Removing for entity %llu", &buf, 0x16u);
      }
    }

    *a3 = 1;
  }
}

void **___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke_25(void **result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a3 + 792))
  {
    v5 = result[4];
    v6 = *(a3 + 784);
    v7 = *(v6 + 192);
    v8 = re::CAREUtil::GetOrAddCAREComponent(v6, re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0, 0, 0);
    result = re::CAREUtil::GetOrAddCAREComponent(*(a3 + 784), re::ecs2::ComponentImpl<re::ecs2::EntityFunctionConstantComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0, 0, 0);
    if (v7)
    {
      v9 = v8 == 0;
    }

    else
    {
      v9 = 1;
    }

    if (!v9 && result != 0)
    {
      v11 = result;
      MurmurHash3_x64_128("EnableGlow", 0xAuLL, 0, &v20);
      v19 = (v21 + (v20 << 6) + (v20 >> 2) - 0x61C8864680B583E9) ^ v20;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>((v11 + 4), &v19, v12 ^ (v12 >> 31), &v20);
      v13 = HIDWORD(v21);
      if (HIDWORD(v21) == 0x7FFFFFFF)
      {
        v14 = re::HashTable<unsigned long long,int,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry((v11 + 4), v21, v20);
        *(v14 + 8) = v19;
        *(v14 + 16) = 1;
        ++*(v11 + 18);
      }

      else
      {
        ++*(v11 + 18);
        *(v11[6] + 8 * v13 + 4) = 1;
      }

      v15 = *(v7 + 72);
      if (v15)
      {
        for (i = 0; i != v15; ++i)
        {
          if (i >= *(v8 + 11) || (v17 = *(*(v8 + 13) + 8 * i)) == 0)
          {
            re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>((v5 + 568), &v19);
            re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v8 + 9, &v19);
            v17 = v19;
            if (v19)
            {
            }
          }

          v18 = 0x299360323197E82;
          re::MaterialParameterBlock::setBufferWithBytes(v17, &v18, a3, 784, &v20);
          v20 = 0;
          v18 = 0;
        }
      }

      return re::ecs2::Component::markDirty(v8);
    }
  }

  else
  {
    *a4 = 1;
  }

  return result;
}

void re::ecs2::RemoteEffectsService::setUpShaderData(re::ecs2::RemoteEffectsService *this, re::ecs2::RemoteEffectHoverState *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 26);
  v3 = (*(a2 + 105) + v2 * (1.0 - *(a2 + 105))) * *(a2 + 110);
  if (*(a2 + 312))
  {
    v4 = *(a2 + 37) * 0.399999976 + 1.0;
    v3 = v4 * v3;
    v5 = *(a2 + 116) * v3;
    v6 = (1.0 - 1.0 / v4) * v3;
  }

  else
  {
    v5 = *(a2 + 116) * v3;
    v6 = 0.0;
  }

  v7 = *(a2 + 12);
  v8 = v2;
  v9 = *(a2 + 190);
  v10 = vmulq_n_f32(vmulq_n_f32(*(a2 + 25), v8), v9);
  v11 = *(a2 + 115);
  v12 = *(a2 + 23);
  if (*(a2 + 312))
  {
    v13 = *(a2 + 37);
    v5 = (v13 * 0.399999976 + 1.0) * v5;
    v14 = 1.0 - v13;
    v15 = (1.0 - v13) * 0.219999999;
    *&v14 = v14;
    v10 = vmulq_n_f32(v10, *&v14);
  }

  else
  {
    v15 = 0.22;
  }

  if (!*(a2 + 176))
  {
    v12 = 0.0;
  }

  v16 = fmax(*(this + 73) - (*(a2 + 19) + v12), 0.0);
  v17 = *(a2 + 161);
  v18 = *(a2 + 30);
  v19 = *(a2 + 776);
  v20 = *(a2 + 78);
  v25[0] = MEMORY[0x1E69E9820];
  v21 = v2 * v9;
  v25[1] = 3221225472;
  v25[2] = ___ZN2re4ecs220RemoteEffectsService15setUpShaderDataERNS0_22RemoteEffectHoverStateE_block_invoke;
  v25[3] = &__block_descriptor_144_e46_v32__0_v8_B16__TraversedEntityDebugInfo_QCB_24l;
  v22 = v21 * 0.1;
  v38 = this;
  v39 = a2;
  if (v17 != 2)
  {
    v22 = 0.0;
  }

  v23 = v19 == 1;
  v26 = v7;
  v27 = v10;
  if (v19 == 2)
  {
    v23 = 2;
  }

  v28 = v3;
  v29 = v15;
  v30 = v11;
  v31 = v5;
  v32 = v21;
  v33 = v16;
  v34 = v18;
  v35 = v22;
  v36 = v23;
  v37 = v6;
  v24 = 0;
  re::ecs2::entityAndDescendantsRecurse(v20, &v24, v25);
}

void ___ZN2re4ecs220RemoteEffectsService15setUpShaderDataERNS0_22RemoteEffectHoverStateE_block_invoke(uint64_t a1, void *a2, _BYTE *a3, uint64_t a4)
{
  v66 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 128);
  v9 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v9)
  {
    goto LABEL_55;
  }

  v10 = *(v9 + 56);
  if (v10)
  {
    v11 = (*(v9 + 72) + 112);
    v12 = v10 << 7;
    while (1)
    {
      v13 = *v11;
      v11 += 16;
      if (v13)
      {
        break;
      }

      v12 -= 128;
      if (!v12)
      {
        goto LABEL_8;
      }
    }

    *a3 = 1;
  }

LABEL_8:
  if (*a3 != 1 || *(*(*(a1 + 136) + 624) + 312) == a2[39])
  {
LABEL_55:
    v14 = *(a4 + 8);
    *(a4 + 8) = v14 + 1;
    if (a2[24])
    {
      *(a4 + 8) = v14 + 2;
      v15 = a2 + 1;
      v16 = a2[39];
      v62 = 0uLL;
      *&v63 = 0;
      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v62, v8 + 96, v16, v17 ^ (v17 >> 31));
      if (HIDWORD(v62) == 0x7FFFFFFF)
      {
        v18 = re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v8 + 96, DWORD2(v62), v62);
        v18[1] = v16;
        v19 = (v18 + 2);
        bzero(v18 + 2, 0x320uLL);
        *(v18 + 4) = -1;
        v20 = v18 + 15;
        v21 = 768;
        __asm { FMOV            V1.4S, #1.0 }

        do
        {
          *(v20 - 14) = xmmword_1E3090E80;
          *(v20 - 5) = 0;
          *(v20 - 6) = _Q1;
          *(v20 - 2) = 0;
          *(v20 - 4) = 0;
          *v20 = 0;
          v20 += 24;
          v21 -= 96;
        }

        while (v21);
        v18[100] = 0;
        ++*(v8 + 136);
      }

      else
      {
        v19 = *(v8 + 112) + 832 * HIDWORD(v62) + 16;
      }

      ++*(a4 + 8);
      v27 = a2 + 1;
      v28 = *(v19 + 784);
      *(v19 + 784) = a2;
      if (v28)
      {
      }

      if (*(v19 + 792))
      {
        if (*(v19 + 4) > 7)
        {
          goto LABEL_50;
        }
      }

      else
      {
        *v19 = 0xFFFFFFFFLL;
      }

      v29 = *(a4 + 8);
      *(a4 + 8) = v29 + 1;
      v30 = *(*(a1 + 136) + 644);
      if (v30 == 1 && *v19 != -1)
      {
LABEL_50:

        return;
      }

      *(a4 + 8) = v29 + 2;
      v31 = *(v19 + 4);
      if (v30 == 1)
      {
        *v19 = v31;
      }

      v32 = v19 + 16;
      *(v19 + 4) = v31 + 1;
      v33 = (v19 + 16 + 96 * v31);
      v34 = *(a1 + 48);
      *v33 = *(a1 + 32);
      v33[1] = v34;
      v35 = *(a1 + 64);
      v36 = *(a1 + 80);
      v37 = *(a1 + 96);
      *(v33 + 76) = *(a1 + 108);
      v33[3] = v36;
      v33[4] = v37;
      v33[2] = v35;
      if (qword_1EE1AC0D0 != -1)
      {
        dispatch_once(&qword_1EE1AC0D0, &__block_literal_global_7_0);
      }

      if (_MergedGlobals_310 != 1)
      {
LABEL_43:
        if (qword_1EE1AC0D8 != -1)
        {
          dispatch_once(&qword_1EE1AC0D8, &__block_literal_global_10_2);
        }

        if (*&dword_1EE1AC0CC > 0.0)
        {
          v48 = *(a1 + 48);
          v49 = *(a1 + 68);
          v61 = *(a1 + 80);
          v62 = *(a1 + 32);
          v50 = *(a1 + 112);
          v59 = *(a1 + 117);
          v51 = dword_1EE1AC0CC;
          v52 = dword_1EE1AC0CC;
          __asm { FMOV            V4.4S, #10.0 }

          v54 = vmulq_f32(v48, _Q4);
          v55 = *(v19 + 4);
          _NF = -v55 < 0;
          v56 = -v55 & 7;
          v57 = v55 & 7;
          if (!_NF)
          {
            v57 = -v56;
          }

          *(v19 + 4) = v57 + 1;
          v58 = v32 + 96 * v57;
          *v58 = v62;
          *(v58 + 16) = v54;
          *(v58 + 32) = v51;
          *(v58 + 36) = v49;
          *(v58 + 44) = v52;
          *(v58 + 48) = v61;
          *(v58 + 64) = xmmword_1E3047670;
          *(v58 + 80) = v50;
          *(v58 + 84) = 0;
          *(v58 + 85) = v59;
          *(v58 + 88) = *(&v59 + 3);
        }

        *(v19 + 792) = 1;
        goto LABEL_50;
      }

      v38 = *(a1 + 48);
      v62 = *(a1 + 32);
      v63 = v38;
      v39 = *(a1 + 80);
      v64 = *(a1 + 64);
      v65 = v39;
      v60 = *(a1 + 117);
      v40 = *(*(a1 + 136) + 608);
      if (v40 > 1)
      {
        if (v40 == 2)
        {
          _Q0 = xmmword_1E3090EA0;
          goto LABEL_40;
        }

        if (v40 == 3)
        {
          _Q0 = xmmword_1E3090E90;
          goto LABEL_40;
        }
      }

      else
      {
        if (!*(*(a1 + 136) + 608))
        {
          _Q0 = xmmword_1E3047680;
          goto LABEL_40;
        }

        if (v40 == 1)
        {
          _Q0 = xmmword_1E3090EB0;
LABEL_40:
          v42 = *(v19 + 4);
          _NF = -v42 < 0;
          v43 = -v42 & 7;
          v44 = v42 & 7;
          if (!_NF)
          {
            v44 = -v43;
          }

          *(v19 + 4) = v44 + 1;
          v45 = v32 + 96 * v44;
          v46 = v63;
          *v45 = v62;
          *(v45 + 16) = v46;
          v47 = v65;
          *(v45 + 32) = v64;
          *(v45 + 48) = v47;
          *(v45 + 64) = _Q0;
          *(v45 + 80) = 1092616192;
          *(v45 + 84) = 0;
          *(v45 + 85) = v60;
          *(v45 + 88) = *(&v60 + 3);
          goto LABEL_43;
        }
      }

      __asm { FMOV            V0.4S, #1.0 }

      goto LABEL_40;
    }
  }
}

void re::ecs2::RemoteEffectsService::updateHoverStateFromStyle(re *a1, uint64_t a2, uint64_t *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  if (*(a2 + 644) == *(a3 + 3))
  {
    *(a2 + 760) = *(a3 + 10);
    *(a2 + 764) = *(a3 + 17);
    *(a2 + 776) = *(a3 + 16);
    v6 = a3[4];
    *(a2 + 480) = a3[3];
    *(a2 + 488) = v6;
    *(a2 + 492) = BYTE4(v6);
    *(a2 + 777) = *(a3 + 19);
    *(a2 + 780) = *(a3 + 11);
    v7 = *(a3 + 6);
    if (v7 <= 0.0)
    {
      if (*(a2 + 176))
      {
        *(a2 + 176) = 0;
      }
    }

    else
    {
      if ((*(a2 + 176) & 1) == 0)
      {
        *(a2 + 176) = 1;
      }

      *(a2 + 184) = v7;
    }

    *(a2 + 168) = 0;
    *(a2 + 272) = *(a3 + 21);
    if (*(a3 + 3) == 3)
    {
      v21 = re::globalAllocators(a1)[2];
      v12 = (*(*v21 + 32))(v21, 32, 0);
      *v12 = &unk_1F5CF4BE0;
      v12[1] = a1;
      v12[2] = re::ecs2::RemoteEffectsService::audioHoverStateTeardown;
      v12[3] = 0;
      v22 = v12;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 24, &v17);
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(&v17);
      v21 = 0;
      v22 = 0;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 64, &v17);
    }

    else
    {
      v21 = 0;
      v22 = 0;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 24, &v17);
      v13 = re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(&v17);
      v21 = re::globalAllocators(v13)[2];
      v14 = (*(*v21 + 32))(v21, 32, 0);
      *v14 = &unk_1F5CF4BE0;
      v14[1] = a1;
      v14[2] = re::ecs2::RemoteEffectsService::setUpShaderData;
      v14[3] = 0;
      v22 = v14;
      re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(a2 + 64, &v17);
    }

    re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(&v17);
    *(a2 + 224) = *(a3 + 18);
    if (*(a3 + 56) == 1)
    {
      v15 = a3[8];
      if ((*(a2 + 360) & 1) == 0)
      {
        *(a2 + 360) = 1;
      }

      *(a2 + 368) = v15;
    }

    else if (*(a2 + 360) == 1)
    {
      *(a2 + 360) = 0;
    }

    if (*(a3 + 72) == 1)
    {
      v16 = a3[10];
      if ((*(a2 + 376) & 1) == 0)
      {
        *(a2 + 376) = 1;
      }

      *(a2 + 384) = v16;
    }

    else if (*(a2 + 376) == 1)
    {
      *(a2 + 376) = 0;
    }
  }

  else
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v8 = *re::remoteEffectsLogObjects(a1);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        v10 = *(a2 + 632);
        v11 = *a3;
        v17 = 134218240;
        v18 = v10;
        v19 = 2048;
        v20 = v11;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "updateHoverStateFromStyle called on state and style that do not match! state: %llu, style: %llu", &v17, 0x16u);
      }
    }
  }
}

void re::ecs2::RemoteEffectsService::applyHitTestData(void *a1, uint64_t a2)
{
  v66 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 16);
  if (!v2)
  {
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
    {
      return;
    }

    v55 = *re::remoteEffectsLogObjects(a1);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v56 = "applyHitTestData() early out - targetEntity is null";
LABEL_107:
    _os_log_impl(&dword_1E1C61000, v55, OS_LOG_TYPE_DEFAULT, v56, buf, 2u);
    return;
  }

  v5 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v5)
  {
    goto LABEL_11;
  }

  v6 = v5;
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v7 = *re::remoteEffectsLogObjects(v5);
    v5 = os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT);
    if (v5)
    {
      v8 = v7;
      v9 = *(v6 + 152);
      *buf = 67109120;
      *&buf[4] = v9;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "applyHitTestData() - component version: %d", buf, 8u);
    }
  }

  if (!*(v6 + 152))
  {
LABEL_11:
    v11 = *(a2 + 16);
    if (v11)
    {
      v10 = 0;
      while (1)
      {
        v5 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v5)
        {
          if (*(v5 + 82))
          {
            v10 = v11;
          }

          if (*(v5 + 152) && v10 != 0)
          {
            goto LABEL_24;
          }
        }

        v11 = *(v11 + 32);
        if (!v11 || (*(v11 + 304) & 0x80) != 0)
        {
          goto LABEL_23;
        }
      }
    }

    goto LABEL_97;
  }

  if ((*(v6 + 82) & 1) == 0)
  {
    goto LABEL_97;
  }

  v10 = *(a2 + 16);
LABEL_23:
  if (!v10)
  {
LABEL_97:
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled != 1)
    {
      return;
    }

    v55 = *re::remoteEffectsLogObjects(v5);
    if (!os_log_type_enabled(v55, OS_LOG_TYPE_DEFAULT))
    {
      return;
    }

    *buf = 0;
    v56 = "applyHitTestData() early out - did not find activeEntity";
    goto LABEL_107;
  }

LABEL_24:
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v13 = *re::remoteEffectsLogObjects(v5);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      v14 = *(v10 + 312);
      v15 = *a2;
      v16 = *(a2 + 4);
      v17 = *(a2 + 8);
      *buf = 134218752;
      *&buf[4] = v14;
      *v61 = 2048;
      *&v61[2] = v15;
      v62 = 2048;
      v63 = v16;
      v64 = 2048;
      v65 = v17;
      _os_log_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_DEFAULT, "applyHitTestData() - found activeEntity %llu - position: %f, %f, %f", buf, 0x2Au);
    }
  }

  v18 = re::ecs2::EntityComponentCollection::get((v10 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v18)
  {
    return;
  }

  v19 = v18;
  PinchStates = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((a1 + 47), *(v10 + 312));
  if ((PinchStates & 0xFE00) == 0x200 || (PinchStates & 0xFE) == 2)
  {
    return;
  }

  v22 = *(v19 + 56);
  if (!v22)
  {
    return;
  }

  v23 = *(v19 + 72);
  v59 = v23 + (v22 << 7);
  while (1)
  {
    v24 = *(a2 + 112);
    if (v24 == 3 || v24 == 0)
    {
      v26 = 1;
    }

    else
    {
      v26 = 2;
    }

    if ((v26 & *(v23 + 8)) == 0)
    {
      goto LABEL_65;
    }

    v27 = *(v23 + 112);
    if (!v27)
    {
LABEL_64:
      re::ecs2::RemoteEffectsService::findOrCreateHoverStateAndUpdateHitTestData(a1, v23, a2);
      goto LABEL_65;
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), *(v23 + 112), *(v23 + 112));
    if (*v61 == 0x7FFFFFFF)
    {
      break;
    }

    v28 = re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), v27, v27);
    v29 = a1[31] + 72 * *v61;
    v30 = *(v29 + 48);
    if (v30)
    {
      v31 = 0;
      v32 = (*(v29 + 32) + 8);
      do
      {
        v33 = *v32;
        v32 += 6;
        if (v33 < 0)
        {
          goto LABEL_61;
        }

        ++v31;
      }

      while (v30 != v31);
      LODWORD(v31) = *(v29 + 48);
    }

    else
    {
      LODWORD(v31) = 0;
    }

LABEL_61:
    while (v31 != v30)
    {
      re::ecs2::RemoteEffectsStyleIdCache::getEntity(buf, (a1 + 35), *(*(v29 + 32) + 24 * v31 + 16));
      v34 = *buf;
      v35 = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((a1 + 47), *(*buf + 312));
      v36 = v35 & 0xFE;
      v37 = v35 & 0xFE00;

      if (v37 == 512 || v36 == 2)
      {
        return;
      }

      v39 = *(v29 + 48);
      if (v39 <= v31 + 1)
      {
        v39 = v31 + 1;
      }

      while (v39 - 1 != v31)
      {
        LODWORD(v31) = v31 + 1;
        if ((*(*(v29 + 32) + 24 * v31 + 8) & 0x80000000) != 0)
        {
          goto LABEL_61;
        }
      }

      LODWORD(v31) = v39;
    }

    v27 = *(v23 + 112);
    if (!v27 || *(v23 + 120))
    {
      goto LABEL_64;
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v40 = *re::remoteEffectsLogObjects(v28);
      if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
      {
        v41 = v40;
        *buf = 134217984;
        *&buf[4] = v27;
        _os_log_impl(&dword_1E1C61000, v41, OS_LOG_TYPE_DEFAULT, "Applying hit test to to group with groupID: %llu", buf, 0xCu);
      }
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), v27, v27);
    if (*v61 == 0x7FFFFFFF)
    {
      goto LABEL_110;
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, (a1 + 29), v27, v27);
    v42 = a1[31] + 72 * *v61;
    v43 = *(v42 + 48);
    if (v43)
    {
      v44 = 0;
      v45 = (*(v42 + 32) + 8);
      while (1)
      {
        v46 = *v45;
        v45 += 6;
        if (v46 < 0)
        {
          break;
        }

        if (v43 == ++v44)
        {
          LODWORD(v44) = *(v42 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v44) = 0;
    }

LABEL_95:
    while (v44 != v43)
    {
      v47 = *(v42 + 32) + 24 * v44;
      re::ecs2::RemoteEffectsStyleIdCache::getEntity(buf, (a1 + 35), *(v47 + 16));
      v48 = *buf;
      v49 = re::ecs2::EntityComponentCollection::get((*buf + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v50 = *(v47 + 16);
      if (v50)
      {
        v51 = *(v49 + 56);
        if (v51)
        {
          v52 = *(v49 + 72);
          v53 = v51 << 7;
          while (*v52 != v50)
          {
            v52 += 128;
            v53 -= 128;
            if (!v53)
            {
              goto LABEL_87;
            }
          }

          if (*(v52 + 120) != 2)
          {
            re::ecs2::RemoteEffectsService::findOrCreateHoverStateAndUpdateHitTestData(a1, v52, a2);
          }
        }
      }

LABEL_87:
      if (v48)
      {
      }

      v54 = *(v42 + 48);
      if (v54 <= v44 + 1)
      {
        v54 = v44 + 1;
      }

      while (v54 - 1 != v44)
      {
        LODWORD(v44) = v44 + 1;
        if ((*(*(v42 + 32) + 24 * v44 + 8) & 0x80000000) != 0)
        {
          goto LABEL_95;
        }
      }

      LODWORD(v44) = v54;
    }

LABEL_65:
    v23 += 128;
    if (v23 == v59)
    {
      return;
    }
  }

  re::ecs2::RemoteEffectsService::dumpGroups(a1);
  re::internal::assertLog(5, v57, "assertion failure: '%s' (%s:line %i) Found groupID: %llu, but no matching group!", "false", "areGroupEffectsDisabled", 1601, v27);
  _os_crash();
  __break(1u);
LABEL_110:
  re::ecs2::RemoteEffectsService::dumpGroups(a1);
  re::internal::assertLog(5, v58, "assertion failure: '%s' (%s:line %i) Found groupID: %llu, but no matching group!", "false", "applyHitTestDataToGroup", 1577, v27);
  _os_crash();
  __break(1u);
}

void re::ecs2::RemoteEffectsService::findOrCreateHoverStateAndUpdateHitTestData(uint64_t a1, uint64_t *a2, __int128 *a3)
{
  v64 = *MEMORY[0x1E69E9840];
  if (*(a2 + 22))
  {
    v7 = *(a3 + 112);
  }

  else
  {
    v7 = 4;
  }

  *buf = *a2;
  if (re::ecs2::RemoteEffectsStateStore::stateExists(a1, *buf, v7))
  {
    v8 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, buf);
    v9 = 0x7FFFFFFFLL;
    if (*v8)
    {
      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v7) ^ ((0xBF58476D1CE4E5B9 * v7) >> 27));
      v11 = *(*(v8 + 8) + 4 * ((v10 ^ (v10 >> 31)) % *(v8 + 24)));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(v8 + 16);
        v9 = 0x7FFFFFFFLL;
        while (*(v12 + 24 * v11 + 4) != v7)
        {
          v11 = *(v12 + 24 * v11) & 0x7FFFFFFF;
          if (v11 == 0x7FFFFFFF)
          {
            goto LABEL_12;
          }
        }

        v9 = v11;
      }
    }

LABEL_12:
    v13 = *(*(v8 + 16) + 24 * v9 + 8);
    if (v13)
    {
      v14 = (v13 + 8);
      if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
      {
        v15 = *re::remoteEffectsLogObjects(v14);
        if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
        {
          v16 = v15;
          v17 = *a2;
          *buf = 134217984;
          *&buf[4] = v17;
          _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "findOrCreateHoverStateAndUpdateHitTestData() - found existing state for styleId: %llu", buf, 0xCu);
        }
      }

      goto LABEL_49;
    }
  }

  v13 = *a2;
  v59 = v13;
  v58 = v7;
  if (!re::ecs2::RemoteEffectsStateStore::stateExists(a1, v13, v7))
  {
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
    v20 = re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, &v59, v19 ^ (v19 >> 31), buf);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      memset(buf, 0, 48);
      *&buf[36] = 0x7FFFFFFF;
      v60 = 0;
      v61 = 0;
      v62 = 0;
      v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v59 ^ (v59 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, &v59, v21 ^ (v21 >> 31), &v60);
      if (HIDWORD(v61) == 0x7FFFFFFF)
      {
        v22 = re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v61, v60);
        v23 = v59;
        *(v22 + 16) = 0u;
        v24 = v22 + 16;
        *(v22 + 8) = v23;
        *buf = 0u;
        *(v22 + 32) = 0;
        *&buf[16] = 0;
        *(v22 + 40) = xmmword_1E3058120;
        *&buf[24] = xmmword_1E3058120;
        *(v22 + 56) = 1;
        ++*(a1 + 40);
      }

      else
      {
        v24 = *(a1 + 16) + 72 * HIDWORD(v61) + 16;
      }

      re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(buf);
    }

    else
    {
      v24 = *(a1 + 16) + 72 * *&buf[12] + 16;
    }

    v25 = re::globalAllocators(v20);
    v26 = (*(*v25[2] + 32))(v25[2], 800, 16);
    bzero(v26, 0x320uLL);
    ArcSharedObject::ArcSharedObject(v26, 0);
    *v26 = &unk_1F5CF4AC8;
    v29 = re::globalAllocators(v28);
    v26[6] = v29[2];
    v26[7] = 0;
    v26[11] = re::globalAllocators(v29)[2];
    v26[12] = 0;
    *(v26 + 176) = 0;
    *(v26 + 144) = 0;
    v26[16] = 0;
    v26[17] = 0;
    *(v26 + 168) = 0;
    v26[19] = 0;
    v26[20] = 0;
    *(v26 + 12) = 0u;
    *(v26 + 112) = 0;
    *(v26 + 226) = 0;
    v26[29] = 0;
    *(v26 + 264) = 0;
    *(v26 + 272) = 0;
    v26[35] = 0;
    *(v26 + 312) = 0;
    v26[40] = 0;
    *(v26 + 352) = 0;
    *(v26 + 360) = 0;
    *(v26 + 376) = 0;
    *(v26 + 473) = 0;
    *(v26 + 485) = 0;
    v26[60] = 0;
    *(v26 + 31) = 0u;
    *(v26 + 601) = 0;
    *(v26 + 152) = 67372293;
    *(v26 + 612) = 0;
    v26[79] = 0;
    v26[80] = 3;
    *(v26 + 162) = 256;
    *(v26 + 326) = 1;
    *(v26 + 654) = 1;
    __asm { FMOV            V8.2S, #1.0 }

    v26[82] = _D8;
    *(v26 + 166) = 1065353216;
    *(v26 + 668) = 0;
    v26[84] = _D8;
    v26[85] = 0;
    *(v26 + 688) = 0;
    *(v26 + 704) = 0;
    *(v26 + 188) = 0;
    v35 = 0xBF58476D1CE4E5B9 * v58;
    *(v26 + 45) = 0u;
    *(v26 + 46) = 0u;
    memset(buf, 0, 24);
    re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>(v24, &v58, (0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) ^ ((0x94D049BB133111EBLL * (v35 ^ (v35 >> 27))) >> 31), buf);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      v36 = re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::allocEntry(v24, *&buf[8], *buf);
      *(v36 + 8) = v26;
      v37 = (v36 + 8);
      *(v37 - 4) = v58;
      ++*(v24 + 40);
      v26 = 0;
    }

    else
    {
      v37 = (*(v24 + 16) + 24 * *&buf[12] + 8);
    }

    v13 = *v37;
    if (*v37)
    {
      v38 = (v13 + 8);
    }

    if (v26)
    {
    }

    re::ecs2::RemoteEffectsStyleIdCache::getEntity(&v60, (a1 + 280), *a2);
    v3 = v60;
    v39 = *a2;
    v40 = *(a2 + 1);
    v41 = *(a2 + 2);
    *(v13 + 680) = a2[6];
    *(v13 + 648) = v40;
    *(v13 + 664) = v41;
    *(v13 + 632) = v39;
    if (*(v13 + 688))
    {
      if ((a2[7] & 1) == 0)
      {
        *(v13 + 688) = 0;
        goto LABEL_38;
      }
    }

    else
    {
      if ((a2[7] & 1) == 0)
      {
        goto LABEL_38;
      }

      *(v13 + 688) = 1;
    }

    *(v13 + 696) = a2[8];
LABEL_38:
    if (*(v13 + 704))
    {
      if ((a2[9] & 1) == 0)
      {
        *(v13 + 704) = 0;
        goto LABEL_44;
      }
    }

    else
    {
      if ((a2[9] & 1) == 0)
      {
        goto LABEL_44;
      }

      *(v13 + 704) = 1;
    }

    *(v13 + 712) = a2[10];
LABEL_44:
    re::AssetHandle::operator=(v13 + 720, a2 + 11);
    v42 = a2[14];
    *(v13 + 752) = *(a2 + 30);
    *(v13 + 744) = v42;
    *(v13 + 624) = v3;
    *(v13 + 784) = v7;
    *(v13 + 216) = 1;
    *(v13 + 225) = 0;
    *(v13 + 336) = 0;
    *(v13 + 344) = 0;
    *(v13 + 480) = _D8;
    *(v13 + 488) = 1065353216;
    *(v13 + 492) = 0;
    re::ecs2::RemoteEffectsService::updateHoverStateFromStyle(a1, v13, a2);
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken == -1)
    {
      goto LABEL_45;
    }

    goto LABEL_51;
  }

  re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Tried to create RemoteEffectHoverState for %llu with source: %d,but state already exists", "!stateExists(styleId, source)", "createState", 319, v13, v7);
  _os_crash();
  __break(1u);
LABEL_51:
  dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
LABEL_45:
  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v44 = *re::remoteEffectsLogObjects(v43);
    if (os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
    {
      v45 = *(v3 + 312);
      v46 = *(a3 + 112);
      *buf = 134218496;
      *&buf[4] = v13;
      *&buf[12] = 2048;
      *&buf[14] = v45;
      *&buf[22] = 1024;
      *&buf[24] = v46;
      _os_log_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEFAULT, "findOrCreateHoverStateAndUpdateHitTestData() - initializing new state %p for entity: %llu; source: %d", buf, 0x1Cu);
    }
  }

LABEL_49:
  v47 = *(v13 + 608);
  v48 = *(v13 + 610);
  v50 = a3[5];
  v49 = a3[6];
  v51 = a3[4];
  *(v13 + 605) = *(a3 + 109);
  v52 = *a3;
  v53 = a3[1];
  v54 = a3[3];
  *(v13 + 528) = a3[2];
  *(v13 + 544) = v54;
  *(v13 + 496) = v52;
  *(v13 + 512) = v53;
  *(v13 + 576) = v50;
  *(v13 + 592) = v49;
  *(v13 + 560) = v51;
  *(v13 + 609) = v47;
  *(v13 + 611) = v48;
  *(v13 + 612) = 1;
  *(v13 + 400) = a3[2];
  v55 = a3[3];
  v56 = a3[4];
  v57 = a3[5];
  *(v13 + 458) = *(a3 + 90);
  *(v13 + 432) = v56;
  *(v13 + 448) = v57;
  *(v13 + 416) = v55;
}

void re::ecs2::RemoteEffectsService::updateGroupsForStyle(re::ecs2::RemoteEffectsService *this, unint64_t *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = a2[14];
  if (v4)
  {
    v5 = *a2;
    re::ecs2::RemoteEffectsService::findGroupForStyle(&v17, this, *a2);
    if (v4 == v17)
    {
      return;
    }

    re::ecs2::RemoteEffectsService::removeStyleFromGroup(this, v17, v5);
    v7 = *a2;
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v8 = *re::remoteEffectsLogObjects(v6);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v9 = v8;
        *buf = 134218240;
        *&buf[4] = v7;
        *&buf[12] = 2048;
        *&buf[14] = v4;
        _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "addEntityToGroup - adding style %llu to group %llu", buf, 0x16u);
      }
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, this + 232, v4, v4);
    if (*&buf[12] == 0x7FFFFFFF)
    {
      memset(buf, 0, 48);
      *&buf[36] = 0x7FFFFFFF;
      v18 = 0;
      v19 = 0;
      v20 = 0;
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v18, this + 232, v4, v4);
      if (HIDWORD(v19) == 0x7FFFFFFF)
      {
        v10 = re::HashTable<re::ecs2::Entity *,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::allocEntry(this + 232, v19, v18);
        *(v10 + 8) = v4;
        *(v10 + 56) = 0;
        *(v10 + 16) = 0u;
        *buf = 0u;
        *(v10 + 32) = 0;
        *&buf[16] = 0;
        *(v10 + 40) = xmmword_1E3058120;
        *&buf[24] = xmmword_1E3058120;
        ++*(this + 68);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(buf);
    }

    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(buf, this + 232, v4, v4);
    v11 = *(this + 31) + 72 * *&buf[12];
    *buf = v7;
    v12 = *(v11 + 40);
    if (v12)
    {
      v13 = v7 % v12;
      v14 = *(*(v11 + 24) + 4 * (v7 % v12));
      if (v14 != 0x7FFFFFFF)
      {
        v15 = *(v11 + 32);
        if (*(v15 + 24 * v14 + 16) == v7)
        {
          return;
        }

        while (1)
        {
          LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
          if (v14 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v15 + 24 * v14 + 16) == v7)
          {
            return;
          }
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

    re::HashSetBase<re::ecs2::RemoteEffectsGroupEntry,re::ecs2::RemoteEffectsGroupEntry,re::internal::ValueAsKey<re::ecs2::RemoteEffectsGroupEntry>,re::Hash<re::ecs2::RemoteEffectsGroupEntry>,re::EqualTo<re::ecs2::RemoteEffectsGroupEntry>,true,false>::addAsMove(v11 + 16, v13, v7, buf);
    ++*(v11 + 56);
  }

  else
  {
    v16 = *a2;

    re::ecs2::RemoteEffectsService::removeStyleFromGroups(this, v16);
  }
}

void re::ecs2::RemoteEffectsService::removeStyleFromGroups(re::ecs2::RemoteEffectsService *this, unint64_t a2)
{
  re::ecs2::RemoteEffectsService::findGroupForStyle(&v5, this, a2);
  v4 = v5;
  if (v5)
  {

    re::ecs2::RemoteEffectsService::removeStyleFromGroup(this, v4, a2);
  }
}

void *re::ecs2::RemoteEffectsService::findGroupForStyle(void *this, uint64_t a2, unint64_t a3)
{
  v3 = *(a2 + 264);
  if (v3)
  {
    v4 = 0;
    v5 = *(a2 + 248);
    while (1)
    {
      v6 = *v5;
      v5 += 18;
      if (v6 < 0)
      {
        break;
      }

      if (v3 == ++v4)
      {
        LODWORD(v4) = *(a2 + 264);
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
LABEL_8:
    v7 = 0;
  }

  else
  {
    v8 = *(a2 + 248);
    while (1)
    {
      v9 = v8 + 72 * v4;
      v10 = *(v9 + 40);
      if (v10)
      {
        v11 = *(*(v9 + 24) + 4 * (a3 % v10));
        if (v11 != 0x7FFFFFFF)
        {
          break;
        }
      }

LABEL_15:
      if (v3 <= v4 + 1)
      {
        v13 = v4 + 1;
      }

      else
      {
        v13 = *(a2 + 264);
      }

      while (v13 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v8 + 72 * v4) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v4) = v13;
LABEL_22:
      if (v4 == v3)
      {
        goto LABEL_8;
      }
    }

    v12 = *(v9 + 32);
    while (*(v12 + 24 * v11 + 16) != a3)
    {
      LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
      if (v11 == 0x7FFFFFFF)
      {
        goto LABEL_15;
      }
    }

    v7 = *(v8 + 72 * v4 + 8);
  }

  *this = v7;
  return this;
}

void re::ecs2::RemoteEffectsService::removeStyleFromGroup(uint64_t a1, unint64_t a2, unint64_t a3)
{
  re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, a1 + 232, a2, a2);
  if (v26 != 0x7FFFFFFF)
  {
    re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, a1 + 232, a2, a2);
    v6 = *(a1 + 248);
    v7 = v6 + 72 * v26;
    v8 = *(v7 + 40);
    if (v8)
    {
      v9 = a3 % v8;
      v10 = *(v7 + 24);
      v11 = *(v10 + 4 * (a3 % v8));
      if (v11 != 0x7FFFFFFF)
      {
        v12 = *(v7 + 32);
        if (*(v12 + 24 * v11 + 16) == a3)
        {
          *(v10 + 4 * v9) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
LABEL_9:
          v14 = *(v7 + 32);
          v15 = v14 + 24 * v11;
          v18 = *(v15 + 8);
          v17 = (v15 + 8);
          v16 = v18;
          if (v18 < 0)
          {
            *v17 = v16 & 0x7FFFFFFF;
            v14 = *(v7 + 32);
            v16 = *(v14 + 24 * v11 + 8);
          }

          *(v14 + 24 * v11 + 8) = *(v7 + 52) | v16 & 0x80000000;
          --*(v7 + 44);
          v19 = *(v7 + 56) + 1;
          *(v7 + 52) = v11;
          *(v7 + 56) = v19;
        }

        else
        {
          while (1)
          {
            v13 = v11;
            LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
            if (v11 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v12 + 24 * v11 + 16) == a3)
            {
              *(v12 + 24 * v13 + 8) = *(v12 + 24 * v13 + 8) & 0x80000000 | *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
              goto LABEL_9;
            }
          }
        }
      }
    }

    if (!*(v7 + 44))
    {
      re::HashTable<unsigned long long,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v24, a1 + 232, a2, a2);
      v20 = v26;
      if (v26 != 0x7FFFFFFF)
      {
        v21 = (v6 + 72 * v26);
        v22 = *v21 & 0x7FFFFFFF;
        if (v27 == 0x7FFFFFFF)
        {
          *(*(a1 + 240) + 4 * v25) = v22;
        }

        else
        {
          *(v6 + 72 * v27) = *(v6 + 72 * v27) & 0x80000000 | v22;
        }

        v23 = *v21;
        if ((*v21 & 0x80000000) != 0)
        {
          *v21 = v23 & 0x7FFFFFFF;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v21 + 2);
          v6 = *(a1 + 248);
          v23 = *(v6 + 72 * v20);
        }

        *(v6 + 72 * v20) = *(a1 + 268) | v23 & 0x80000000;
        *(a1 + 268) = v20;
        --*(a1 + 260);
        ++*(a1 + 272);
      }
    }
  }
}

void re::ecs2::RemoteEffectsService::dumpGroups(_BOOL8 this)
{
  v1 = this;
  v23 = *MEMORY[0x1E69E9840];
  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
  {
    v2 = *re::remoteEffectsLogObjects(this);
    this = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_DEFAULT, "RemoteEffectsGroup Dump Begin", buf, 2u);
    }
  }

  v20 = *(v1 + 264);
  if (v20)
  {
    v3 = 0;
    v4 = *(v1 + 248);
    while (1)
    {
      v5 = *v4;
      v4 += 18;
      if (v5 < 0)
      {
        break;
      }

      if (v20 == ++v3)
      {
        LODWORD(v3) = *(v1 + 264);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  while (v3 != v20)
  {
    v7 = *(v1 + 248);
    if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
    {
      dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
    }

    v8 = v7 + 72 * v3;
    if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
    {
      v9 = *re::remoteEffectsLogObjects(this);
      this = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      if (this)
      {
        v10 = v9;
        v11 = *(v8 + 8);
        *buf = 134217984;
        v22 = v11;
        _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "====\nGroup %llu", buf, 0xCu);
      }
    }

    v12 = *(v8 + 48);
    if (v12)
    {
      v13 = 0;
      v14 = (*(v8 + 32) + 8);
      while (1)
      {
        v15 = *v14;
        v14 += 6;
        if (v15 < 0)
        {
          break;
        }

        if (v12 == ++v13)
        {
          LODWORD(v13) = *(v8 + 48);
          break;
        }
      }
    }

    else
    {
      LODWORD(v13) = 0;
    }

LABEL_30:
    while (v13 != v12)
    {
      v16 = *(*(v8 + 32) + 24 * v13 + 16);
      if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
      {
        dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
      }

      if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
      {
        v17 = *re::remoteEffectsLogObjects(this);
        this = os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          *buf = 134217984;
          v22 = v16;
          _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "StyleId: %llu", buf, 0xCu);
        }
      }

      v18 = *(v8 + 48);
      if (v18 <= v13 + 1)
      {
        v18 = v13 + 1;
      }

      while (v18 - 1 != v13)
      {
        LODWORD(v13) = v13 + 1;
        if ((*(*(v8 + 32) + 24 * v13 + 8) & 0x80000000) != 0)
        {
          goto LABEL_30;
        }
      }

      LODWORD(v13) = v18;
    }

    v19 = *(v1 + 264);
    if (v19 <= v3 + 1)
    {
      v19 = v3 + 1;
    }

    while (v19 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(v1 + 248) + 72 * v3) & 0x80000000) != 0)
      {
        goto LABEL_48;
      }
    }

    LODWORD(v3) = v19;
LABEL_48:
    ;
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
  {
    dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
  }

  if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled)
  {
    v6 = *re::remoteEffectsLogObjects(this);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEFAULT, "RemoteEffectsGroup Dump End", buf, 2u);
    }
  }
}

uint64_t re::ecs2::RemoteEffectsService::onComponentChanged(re::RenderManager **a1, uint64_t a2, uint64_t a3)
{
  v77 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*(a3 + 8) == re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v57 = a2;
        v58 = v5;
        v6 = *(v5 + 56);
        if (v6)
        {
          v7 = *(v5 + 72);
          v8 = &v7[16 * v6];
          v9 = MEMORY[0x1E69E9820];
          do
          {
            v10 = *v7;
            v68[0] = v9;
            v68[1] = 3221225472;
            v68[2] = ___ZN2re4ecs220RemoteEffectsService18onComponentChangedEPNS0_6EntityERK25REComponentDidChangeEvent_block_invoke;
            v68[3] = &__block_descriptor_48_e86_v32__0_SharedPtr_re::ecs2::RemoteEffectHoverState____RemoteEffectHoverState__8_B16_B24l;
            v68[4] = a1;
            v68[5] = v7;
            v11 = re::RenderManager::perFrameAllocator(a1[71]);
            *&v64 = v10;
            v12 = v68;
            if (re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1, v10))
            {
              *&buf[16] = 1;
              v73 = 0;
              *v74 = 0;
              *buf = v11;
              *&buf[8] = 0;
              re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(buf, 0);
              *&buf[16] += 2;
              v13 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](a1, &v64);
              re::ecs2::RemoteEffectsStateStore::forEachEntryInternal(v13, v64, v12, buf);
              if (buf[16])
              {
                v14 = &v73;
              }

              else
              {
                v14 = *v74;
              }

              if (*&buf[8])
              {
                v15 = &v14[2 * *&buf[8]];
                do
                {
                  re::ecs2::RemoteEffectsStateStore::removeState(a1, *v14, *(v14 + 8));
                  v14 += 2;
                }

                while (v14 != v15);
              }

              if (*buf && (buf[16] & 1) == 0)
              {
                (*(**buf + 40))();
              }
            }

            v7 += 16;
          }

          while (v7 != v8);
        }

        v66 = 0;
        v64 = 0u;
        v65 = 0u;
        v67 = 0x7FFFFFFFLL;
        v62 = 0;
        memset(v61, 0, sizeof(v61));
        v63 = 0x7FFFFFFFLL;
        v60 = a2;
        v16 = (a2 + 8);
        updated = re::ecs2::RemoteEffectsStyleIdCache::updateStyles((a1 + 35), &v60, v61, &v64);

        v60 = 0;
        if (updated)
        {
          v18 = v66;
          if (v66)
          {
            v19 = 0;
            v20 = (v65 + 8);
            while (1)
            {
              v21 = *v20;
              v20 += 6;
              if (v21 < 0)
              {
                break;
              }

              if (v66 == ++v19)
              {
                LODWORD(v19) = v66;
                break;
              }
            }
          }

          else
          {
            LODWORD(v19) = 0;
          }

          if (v19 != v66)
          {
            v22 = v65;
            do
            {
              v23 = *(v22 + 24 * v19 + 16);
              re::ecs2::RemoteEffectsService::removeStyleFromGroups(a1, v23);
              re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v23, 1);
              re::ecs2::RemoteEffectsStateStore::removeStyle(a1, v23);
              v22 = v65;
              if (v66 <= v19 + 1)
              {
                v24 = v19 + 1;
              }

              else
              {
                v24 = v66;
              }

              while (v24 - 1 != v19)
              {
                LODWORD(v19) = v19 + 1;
                if ((*(v65 + 24 * v19 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_33;
                }
              }

              LODWORD(v19) = v24;
LABEL_33:
              ;
            }

            while (v19 != v18);
          }
        }

        v25 = (v57 + 8);
        hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles((a1 + 35), *(v57 + 312));

        if (hasCachedStyles)
        {
          v59 = v57;
          v27 = (v57 + 8);
          Styles = re::ecs2::RemoteEffectsStyleIdCache::getStyles((a1 + 35), &v59);

          v29 = *(Styles + 32);
          if (v29)
          {
            v30 = 0;
            v31 = (*(Styles + 16) + 8);
            while (1)
            {
              v32 = *v31;
              v31 += 6;
              if (v32 < 0)
              {
                break;
              }

              if (v29 == ++v30)
              {
                LODWORD(v30) = *(Styles + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v30) = 0;
          }

          if (v30 != v29)
          {
            v33 = *(Styles + 16);
            do
            {
              v34 = *(v33 + 24 * v30 + 16);
              v35 = *(v58 + 72);
              for (i = *v35; i != v34; i = v37)
              {
                v37 = v35[16];
                v35 += 16;
              }

              re::ecs2::RemoteEffectsService::updateAudioPlaybackDataFromStyle(a1, v57, v35);
              re::ecs2::RemoteEffectsService::updateGroupsForStyle(a1, v35);
              v38 = *(Styles + 32);
              v33 = *(Styles + 16);
              if (v38 <= v30 + 1)
              {
                v38 = v30 + 1;
              }

              while (v38 - 1 != v30)
              {
                LODWORD(v30) = v30 + 1;
                if ((*(v33 + 24 * v30 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_52;
                }
              }

              LODWORD(v30) = v38;
LABEL_52:
              ;
            }

            while (v30 != v29);
          }
        }

        v39 = *(*(v58 + 16) + 312);
        PinchStates = re::ecs2::RemoteEffectsPinchStateStore::getPinchStates((a1 + 47), v39);
        NextPinchStateForComponentUpdate = re::ecs2::getNextPinchStateForComponentUpdate(*(v58 + 87), PinchStates);
        v42 = re::ecs2::getNextPinchStateForComponentUpdate(*(v58 + 86), HIBYTE(PinchStates));
        v43 = NextPinchStateForComponentUpdate == PinchStates && v42 == HIBYTE(PinchStates);
        if (v43)
        {
          goto LABEL_97;
        }

        v44 = v42;
        v70 = NextPinchStateForComponentUpdate | (v42 << 8);
        v69 = v39;
        if (NextPinchStateForComponentUpdate != PinchStates || HIBYTE(PinchStates) != v42)
        {
          if (re::RemoteEffectsSystemDebugEnabled(void)::onceToken != -1)
          {
            dispatch_once(&re::RemoteEffectsSystemDebugEnabled(void)::onceToken, &__block_literal_global_16);
          }

          if (re::RemoteEffectsSystemDebugEnabled(void)::isEnabled == 1)
          {
            v46 = *re::remoteEffectsLogObjects(v42);
            if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
            {
              if ((PinchStates - 1) > 2u)
              {
                v47 = "kNoPinch";
              }

              else
              {
                v47 = off_1E871E1E0[(PinchStates - 1)];
              }

              if ((NextPinchStateForComponentUpdate - 1) > 2)
              {
                v48 = "kNoPinch";
              }

              else
              {
                v48 = off_1E871E1E0[(NextPinchStateForComponentUpdate - 1)];
              }

              if ((HIBYTE(PinchStates) - 1) > 2u)
              {
                v49 = "kNoPinch";
              }

              else
              {
                v49 = off_1E871E1E0[(HIBYTE(PinchStates) - 1)];
              }

              if ((v44 - 1) > 2)
              {
                v50 = "kNoPinch";
              }

              else
              {
                v50 = off_1E871E1E0[(v44 - 1)];
              }

              *buf = 134219010;
              *&buf[4] = v39;
              *&buf[12] = 2080;
              *&buf[14] = v47;
              v72 = 2080;
              v73 = v48;
              *v74 = 2080;
              *&v74[2] = v49;
              v75 = 2080;
              v76 = v50;
              _os_log_impl(&dword_1E1C61000, v46, OS_LOG_TYPE_DEFAULT, "setPinchStates for Entity: %llu, prev left: %s, new left: %s, prev right: %s, new right: %s", buf, 0x34u);
            }
          }
        }

        if (PinchStates)
        {
          v51 = 1;
        }

        else
        {
          v51 = NextPinchStateForComponentUpdate == 0;
        }

        v52 = (a1 + 47);
        if (v51)
        {
          if (NextPinchStateForComponentUpdate == PinchStates)
          {
            goto LABEL_86;
          }

          v52 = (a1 + 53);
        }

        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(v52, &v69, &v70);
LABEL_86:
        v54 = PinchStates > 0xFFu || v44 == 0;
        if (v44 != HIBYTE(PinchStates) || !v54)
        {
          v43 = !v54;
          v55 = 12;
          if (!v43)
          {
            v55 = 18;
          }

          re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(&a1[v55 + 47], &v69, &v70 + 1);
        }

LABEL_97:
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v61);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v64);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsService::onComponentAdded(re::ecs2::RemoteEffectsService *a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    if (*(a3 + 8) == re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
    {
      v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v5)
      {
        v6 = v5;
        v26 = 0;
        memset(v25, 0, sizeof(v25));
        v27 = 0x7FFFFFFFLL;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v24 = 0x7FFFFFFFLL;
        v20 = a2;
        v7 = (a2 + 8);
        updated = re::ecs2::RemoteEffectsStyleIdCache::updateStyles(a1 + 280, &v20, &v21, v25);

        v20 = 0;
        if (updated)
        {
          v9 = v23;
          if (v23)
          {
            v10 = 0;
            v11 = (v22 + 8);
            while (1)
            {
              v12 = *v11;
              v11 += 6;
              if (v12 < 0)
              {
                break;
              }

              if (v23 == ++v10)
              {
                LODWORD(v10) = v23;
                break;
              }
            }
          }

          else
          {
            LODWORD(v10) = 0;
          }

          if (v10 != v23)
          {
            v13 = v22;
            do
            {
              v14 = *(v13 + 24 * v10 + 16);
              v15 = *(v6 + 72);
              for (i = *v15; i != v14; i = v17)
              {
                v17 = *(v15 + 128);
                v15 += 128;
              }

              if (*(v15 + 12) == 3)
              {
                re::ecs2::RemoteEffectsService::setUpAudioPlaybackData(a1, a2, v15);
              }

              re::ecs2::RemoteEffectsService::updateGroupsForStyle(a1, v15);
              v13 = v22;
              if (v23 <= v10 + 1)
              {
                v18 = v10 + 1;
              }

              else
              {
                v18 = v23;
              }

              while (v18 - 1 != v10)
              {
                LODWORD(v10) = v10 + 1;
                if ((*(v22 + 24 * v10 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_25;
                }
              }

              LODWORD(v10) = v18;
LABEL_25:
              ;
            }

            while (v10 != v9);
          }
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v21);
        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v25);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsService::onComponentRemoved(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (a2 && *(a3 + 8) == re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
  {
    v5 = a2 + 1;
    v6 = re::ecs2::EntityComponentCollection::get((a2 + 6), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = *(v6 + 56);
    if (v7)
    {
      v8 = *(v6 + 72);
      v9 = v7 << 7;
      do
      {
        re::ecs2::RemoteEffectsStateStore::removeStyle(a1, *v8);
        v10 = *v8;
        v8 += 16;
        re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v10, 1);
        v9 -= 128;
      }

      while (v9);
    }

    re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 96, a2[39]);
    v11 = a2 + 1;
    hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1 + 280, a2[39]);

    if (hasCachedStyles)
    {
      v24 = a2;
      v13 = a2 + 1;
      Styles = re::ecs2::RemoteEffectsStyleIdCache::getStyles((a1 + 280), &v24);

      v15 = *(Styles + 32);
      if (v15)
      {
        v16 = 0;
        v17 = (*(Styles + 16) + 8);
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
            LODWORD(v16) = *(Styles + 32);
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
        v19 = *(Styles + 16);
        do
        {
          re::ecs2::RemoteEffectsService::removeStyleFromGroups(a1, *(v19 + 24 * v16 + 16));
          v20 = *(Styles + 32);
          v19 = *(Styles + 16);
          if (v20 <= v16 + 1)
          {
            v20 = v16 + 1;
          }

          while (v20 - 1 != v16)
          {
            LODWORD(v16) = v16 + 1;
            if ((*(v19 + 24 * v16 + 8) & 0x80000000) != 0)
            {
              goto LABEL_21;
            }
          }

          LODWORD(v16) = v20;
LABEL_21:
          ;
        }

        while (v16 != v15);
      }

      v23 = a2;
      v21 = a2 + 1;
      re::ecs2::RemoteEffectsStyleIdCache::removeEntity(a1 + 280, &v23);
    }
  }

  return 0;
}

uint64_t re::ecs2::RemoteEffectsService::onEntityRemoved(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = *(a2 + 98);
    if (*(a2 + 98))
    {
      v5 = (re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 16);
      v6 = *(a2 + 104);
      v7 = vld1q_dup_s16(v5);
      for (i = 1; ; i -= 8)
      {
        v9 = vandq_s8(vceqq_s16(v7, *v6), xmmword_1E306AC00);
        v9.i16[0] = vmaxvq_u16(v9);
        if (v9.i32[0])
        {
          break;
        }

        ++v6;
        if (!--v3)
        {
          return 0;
        }
      }

      if (v9.u16[0] - i < *(a2 + 96))
      {
        v10 = (a2 + 8);
        v11 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v12 = *(v11 + 56);
        if (v12)
        {
          v13 = *(v11 + 72);
          v14 = v12 << 7;
          do
          {
            re::ecs2::RemoteEffectsStateStore::removeStyle(a1, *v13);
            v15 = *v13;
            v13 += 16;
            re::ecs2::RemoteEffectsService::cleanUpAudioPlaybackData(a1, v15, 1);
            v14 -= 128;
          }

          while (v14);
        }

        re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 96, *(a2 + 312));
        v16 = (a2 + 8);
        hasCachedStyles = re::ecs2::RemoteEffectsStyleIdCache::hasCachedStyles(a1 + 280, *(a2 + 312));

        if (hasCachedStyles)
        {
          v30 = a2;
          v18 = (a2 + 8);
          Styles = re::ecs2::RemoteEffectsStyleIdCache::getStyles((a1 + 280), &v30);

          v20 = *(Styles + 32);
          if (v20)
          {
            v21 = 0;
            v22 = (*(Styles + 16) + 8);
            while (1)
            {
              v23 = *v22;
              v22 += 6;
              if (v23 < 0)
              {
                break;
              }

              if (v20 == ++v21)
              {
                LODWORD(v21) = *(Styles + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v21) = 0;
          }

          if (v21 != v20)
          {
            v24 = *(Styles + 16);
            do
            {
              re::ecs2::RemoteEffectsService::removeStyleFromGroups(a1, *(v24 + 24 * v21 + 16));
              v25 = *(Styles + 32);
              v24 = *(Styles + 16);
              if (v25 <= v21 + 1)
              {
                v25 = v21 + 1;
              }

              while (v25 - 1 != v21)
              {
                LODWORD(v21) = v21 + 1;
                if ((*(v24 + 24 * v21 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_26;
                }
              }

              LODWORD(v21) = v25;
LABEL_26:
              ;
            }

            while (v21 != v20);
          }

          v29 = a2;
          v26 = (a2 + 8);
          re::ecs2::RemoteEffectsStyleIdCache::removeEntity(a1 + 280, &v29);
        }

        v27 = *(a2 + 312);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 424, v27);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 376, v27);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 520, v27);
        re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1 + 472, v27);
      }
    }
  }

  return 0;
}

uint64_t re::ecs2::getNextPinchStateForComponentUpdate(int a1, unsigned int a2)
{
  if (a1)
  {
    if (a2 < 4)
    {
      return (0x1020101u >> (8 * (a2 & 0x1F)));
    }

    return a2;
  }

  if (a2 - 1 < 2)
  {
    LOBYTE(a2) = 3;
    return a2;
  }

  v2 = 0;
  if (a2 && a2 != 3)
  {
    return a2;
  }

  return v2;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(uint64_t a1, uint64_t *a2, _BYTE *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v9, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  v8 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    *(*(a1 + 16) + 32 * v8 + 16) = *a3;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  result = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v10, a1, a2, v3 ^ (v3 >> 31));
  v5 = v12;
  if (v12 != 0x7FFFFFFF)
  {
    v6 = *(a1 + 16);
    v7 = (v6 + 32 * v12);
    v8 = *v7 & 0x7FFFFFFF;
    if (v13 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v11) = v8;
    }

    else
    {
      *(v6 + 32 * v13) = *(v6 + 32 * v13) & 0x80000000 | v8;
    }

    v9 = *(a1 + 40);
    *v7 = *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v5;
    *(a1 + 40) = v9 + 1;
  }

  return result;
}

uint64_t re::ecs2::RemoteEffectsPinchStateStore::updatePinchData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = 0;
  v30[1] = 0;
  v31 = 0;
  v32 = 0;
  v30[0] = a3;
  re::DynamicArray<float *>::setCapacity(v30, 0);
  ++v32;
  v5 = *(a1 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a1 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 8;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a1 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 != v5)
  {
    v9 = *(a1 + 16);
    do
    {
      v10 = v9 + 32 * v6;
      if (*(v10 + 16) - 1 > 1)
      {
        re::DynamicArray<re::TransitionCondition *>::add(v30, (v10 + 8));
      }

      else
      {
        v34 = 0;
        v35 = 0;
        v36 = 0;
        v11 = *(v10 + 8);
        v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v34, a1, v11, v12 ^ (v12 >> 31));
        v13 = HIDWORD(v35);
        if (HIDWORD(v35) == 0x7FFFFFFF)
        {
          v14 = re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v35, v34);
          *(v14 + 8) = *(v10 + 8);
          *(v14 + 16) = 2;
          ++*(a1 + 40);
        }

        else
        {
          ++*(a1 + 40);
          *(v9 + 32 * v13 + 16) = 2;
        }
      }

      v15 = *(a1 + 32);
      if (v15 <= v6 + 1)
      {
        v15 = v6 + 1;
      }

      v9 = *(a1 + 16);
      while (v15 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 32 * v6) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v6) = v15;
LABEL_22:
      ;
    }

    while (v6 != v5);
  }

  if (v31)
  {
    v16 = v33;
    v17 = 8 * v31;
    do
    {
      v18 = *v16++;
      re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(a1, v18);
      v17 -= 8;
    }

    while (v17);
  }

  v19 = *(a2 + 32);
  if (v19)
  {
    v20 = 0;
    v21 = *(a2 + 16);
    while (1)
    {
      v22 = *v21;
      v21 += 8;
      if (v22 < 0)
      {
        break;
      }

      if (v19 == ++v20)
      {
        LODWORD(v20) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v20) = 0;
  }

  LODWORD(v23) = *(a2 + 32);
  if (v20 != v19)
  {
    v24 = *(a2 + 16);
    do
    {
      re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1, (v24 + 32 * v20 + 8), (v24 + 32 * v20 + 16));
      LODWORD(v23) = *(a2 + 32);
      if (v23 <= v20 + 1)
      {
        v25 = v20 + 1;
      }

      else
      {
        v25 = *(a2 + 32);
      }

      v24 = *(a2 + 16);
      while (v25 - 1 != v20)
      {
        LODWORD(v20) = v20 + 1;
        if ((*(v24 + 32 * v20) & 0x80000000) != 0)
        {
          goto LABEL_43;
        }
      }

      LODWORD(v20) = v25;
LABEL_43:
      ;
    }

    while (v20 != v19);
  }

  if (*(a2 + 28))
  {
    v26 = *(a2 + 24);
    if (v26)
    {
      memset_pattern16(*(a2 + 8), &unk_1E304C660, 4 * v26);
      LODWORD(v23) = *(a2 + 32);
    }

    if (v23)
    {
      v27 = *(a2 + 16);
      v23 = v23;
      do
      {
        if ((*v27 & 0x80000000) != 0)
        {
          *v27 &= ~0x80000000;
        }

        v27 += 8;
        --v23;
      }

      while (v23);
    }

    *(a2 + 28) = 0;
    *(a2 + 32) = 0;
    v28 = *(a2 + 40) + 1;
    *(a2 + 36) = 0x7FFFFFFF;
    *(a2 + 40) = v28;
  }

  result = v30[0];
  if (v30[0])
  {
    if (v33)
    {
      return (*(*v30[0] + 40))();
    }
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::RemoteEffectsSystem::willAddSystemToECSService(re::ecs2::RemoteEffectsSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::RemoteEffectsService>(v2);
  *(this + 28) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::RemoteEffectsService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::RemoteEffectsService>(BOOL)::info = re::internal::getOrCreateInfo("RemoteEffectsService", re::ecs2::allocInfo_RemoteEffectsService, re::ecs2::initInfo_RemoteEffectsService, &re::internal::introspectionInfoStorage<re::ecs2::RemoteEffectsService>, 0);
  }

  v2 = re::introspect<re::ecs2::RemoteEffectsService>(BOOL)::info;
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

void re::ecs2::RemoteEffectsSystem::willRemoveSystemFromECSService(re::ecs2::RemoteEffectsSystem *this)
{
  v1 = *(this + 28);
  if (v1)
  {
    if (*(v1 + 124))
    {
      v3 = *(v1 + 120);
      if (v3)
      {
        memset_pattern16(*(v1 + 104), &unk_1E304C660, 4 * v3);
      }

      v4 = *(v1 + 128);
      if (v4)
      {
        v5 = 0;
        for (i = 0; i < v4; ++i)
        {
          v7 = *(v1 + 112);
          v8 = *(v7 + v5);
          if (v8 < 0)
          {
            *(v7 + v5) = v8 & 0x7FFFFFFF;
            re::ecs2::RemoteEffectShaderData::~RemoteEffectShaderData((v7 + v5 + 16));
            v4 = *(v1 + 128);
          }

          v5 += 832;
        }
      }

      *(v1 + 124) = 0;
      *(v1 + 128) = 0;
      v9 = *(v1 + 136) + 1;
      *(v1 + 132) = 0x7FFFFFFF;
      *(v1 + 136) = v9;
    }

    if (*(v1 + 168))
    {
      std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::__deallocate_node(v1 + 144, *(v1 + 160));
      *(v1 + 160) = 0;
      v10 = *(v1 + 152);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          *(*(v1 + 144) + 8 * j) = 0;
        }
      }

      *(v1 + 168) = 0;
    }

    if (*(v1 + 28))
    {
      v12 = *(v1 + 24);
      if (v12)
      {
        memset_pattern16(*(v1 + 8), &unk_1E304C660, 4 * v12);
      }

      v13 = *(v1 + 32);
      if (v13)
      {
        v14 = 0;
        for (k = 0; k < v13; ++k)
        {
          v16 = *(v1 + 16);
          v17 = *(v16 + v14);
          if (v17 < 0)
          {
            *(v16 + v14) = v17 & 0x7FFFFFFF;
            re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(v16 + v14 + 16);
            v13 = *(v1 + 32);
          }

          v14 += 72;
        }
      }

      *(v1 + 28) = 0;
      *(v1 + 32) = 0;
      v18 = *(v1 + 40) + 1;
      *(v1 + 36) = 0x7FFFFFFF;
      *(v1 + 40) = v18;
    }

    if (*(v1 + 76))
    {
      v19 = *(v1 + 72);
      if (v19)
      {
        memset_pattern16(*(v1 + 56), &unk_1E304C660, 4 * v19);
      }

      v20 = *(v1 + 80);
      if (v20)
      {
        v21 = 0;
        for (m = 0; m < v20; ++m)
        {
          v23 = *(v1 + 64) + v21;
          v24 = *(v23 + 8);
          if (v24 < 0)
          {
            *(v23 + 8) = v24 & 0x7FFFFFFF;
            v25 = *(v23 + 16);
            if (v25)
            {

              *(v23 + 16) = 0;
              v20 = *(v1 + 80);
            }
          }

          v21 += 24;
        }
      }

      *(v1 + 76) = 0;
      *(v1 + 80) = 0;
      v26 = *(v1 + 88) + 1;
      *(v1 + 84) = 0x7FFFFFFF;
      *(v1 + 88) = v26;
    }

    *(this + 28) = 0;
  }
}

_anonymous_namespace_ *re::ecs2::RemoteEffectsSystem::willAddSceneToECSService(_anonymous_namespace_ *this, re::EventBus **a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v2 = *(this + 28);
  if (v2)
  {
    v19 = 0;
    v20 = a2;
    v3 = a2[36];
    v17[1] = 0;
    v17[2] = 0;
    v18 = 0;
    v4 = re::DynamicArray<re::RigNodeConstraint>::setCapacity(v17, 8uLL);
    ++v18;
    v31 = re::globalAllocators(v4)[2];
    v5 = (*(*v31 + 32))(v31, 32, 0);
    *v5 = &unk_1F5CF4C48;
    v5[1] = v2;
    v5[2] = re::ecs2::RemoteEffectsService::onEntityRemoved;
    v5[3] = 0;
    v32 = v5;
    v27.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v3, v30, 0, 0);
    v27.n128_u64[1] = v6;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v27);
    v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v30);
    v28 = re::globalAllocators(v7)[2];
    v8 = (*(*v28 + 32))(v28, 32, 0);
    *v8 = &unk_1F5CF4CA0;
    v8[1] = v2;
    v8[2] = re::ecs2::RemoteEffectsService::onComponentChanged;
    v8[3] = 0;
    v29 = v8;
    v24.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, &v27, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v24.n128_u64[1] = v9;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v24);
    v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(&v27);
    v25 = re::globalAllocators(v10)[2];
    v11 = (*(*v25 + 32))(v25, 32, 0);
    *v11 = &unk_1F5CF4CF8;
    v11[1] = v2;
    v11[2] = re::ecs2::RemoteEffectsService::onComponentAdded;
    v11[3] = 0;
    v26 = v11;
    v21.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, &v24, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v21.n128_u64[1] = v12;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v21);
    v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(&v24);
    v22 = re::globalAllocators(v13)[2];
    v14 = (*(*v22 + 32))(v22, 32, 0);
    *v14 = &unk_1F5CF4D50;
    v14[1] = v2;
    v14[2] = re::ecs2::RemoteEffectsService::onComponentRemoved;
    v14[3] = 0;
    v23 = v14;
    v16.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, &v21, re::ecs2::ComponentImpl<re::ecs2::RemoteEffectsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v16.n128_u64[1] = v15;
    re::DynamicArray<re::RigNodeConstraint>::add(v17, &v16);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(&v21);
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(v2 + 184, &v20, v17);
    this = v17[0];
    if (v17[0])
    {
      if (v19)
      {
        return (*(*v17[0] + 40))();
      }
    }
  }

  return this;
}

void *re::ecs2::RemoteEffectsSystem::willRemoveSceneFromECSService(void *this, re::ecs2::Scene *a2)
{
  v2 = this[28];
  if (v2)
  {
    v9 = a2;
    v3 = *(a2 + 36);
    this = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(v2 + 184, &v9);
    if (this)
    {
      v4 = this[2];
      if (v4)
      {
        v5 = this[4];
        v6 = &v5[2 * v4];
        do
        {
          v7 = *v5;
          v8 = v5[1];
          v5 += 2;
          re::EventBus::unsubscribe(v3, v7, v8);
        }

        while (v5 != v6);
      }

      return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2 + 184, &v9);
    }
  }

  return this;
}

re::RenderManager *re::ecs2::RemoteEffectsSystem::update(re::RenderManager *result, int a2)
{
  v2 = *(result + 28);
  if (v2)
  {
    result = *(v2 + 568);
    if (result)
    {
      *(v2 + 584) = *(v2 + 584) + *&a2;
      v3 = *(v2 + 128);
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 112);
        while ((*v5 & 0x80000000) == 0)
        {
          v5 += 208;
          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 128);
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
        v6 = *(v2 + 112);
        do
        {
          *(v6 + 832 * v4 + 808) = 0;
          if (v3 <= v4 + 1)
          {
            v7 = v4 + 1;
          }

          else
          {
            v7 = v3;
          }

          while (v7 - 1 != v4)
          {
            LODWORD(v4) = v4 + 1;
            if ((*(v6 + 832 * v4) & 0x80000000) != 0)
            {
              goto LABEL_18;
            }
          }

          LODWORD(v4) = v7;
LABEL_18:
          ;
        }

        while (v4 != v3);
      }

      v26[0] = MEMORY[0x1E69E9820];
      v26[1] = 3221225472;
      v26[2] = ___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke;
      v26[3] = &__block_descriptor_40_e86_v32__0_SharedPtr_re::ecs2::RemoteEffectHoverState____RemoteEffectHoverState__8_B16_B24l;
      v26[4] = v2;
      v8 = re::RenderManager::perFrameAllocator(result);
      re::ecs2::RemoteEffectsStateStore::forEachEntry(v2, v26, v8);
      v22[0] = MEMORY[0x1E69E9820];
      v22[1] = 3221225472;
      v23 = ___ZN2re4ecs220RemoteEffectsService6updateENS0_6System13UpdateContextE_block_invoke_25;
      v24 = &__block_descriptor_40_e16_v32__0Q8_v16_B24l;
      v25 = v2;
      v9 = re::RenderManager::perFrameAllocator(*(v2 + 568));
      v10 = v22;
      v31 = 0;
      v28[1] = 0;
      v29 = 0;
      v30 = 0;
      v28[0] = v9;
      re::DynamicArray<float *>::setCapacity(v28, 0);
      ++v30;
      v11 = *(v2 + 128);
      if (v11)
      {
        v12 = 0;
        v13 = *(v2 + 112);
        while ((*v13 & 0x80000000) == 0)
        {
          v13 += 208;
          if (v11 == ++v12)
          {
            LODWORD(v12) = *(v2 + 128);
            break;
          }
        }
      }

      else
      {
        LODWORD(v12) = 0;
      }

      while (v12 != v11)
      {
        v14 = *(v2 + 112) + 832 * v12;
        v16 = *(v14 + 8);
        v15 = (v14 + 8);
        v27 = 0;
        v23(v10, v16, (v15 + 1), &v27);
        if (v27 == 1)
        {
          re::DynamicArray<re::TransitionCondition *>::add(v28, v15);
        }

        v17 = *(v2 + 128);
        if (v17 <= v12 + 1)
        {
          v17 = v12 + 1;
        }

        while (v17 - 1 != v12)
        {
          LODWORD(v12) = v12 + 1;
          if ((*(*(v2 + 112) + 832 * v12) & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }

        LODWORD(v12) = v17;
LABEL_34:
        ;
      }

      if (v29)
      {
        v18 = v31;
        v19 = 8 * v29;
        do
        {
          v20 = *v18++;
          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v2 + 96, v20);
          v19 -= 8;
        }

        while (v19);
      }

      if (v28[0])
      {
        if (v31)
        {
          (*(*v28[0] + 40))(v28[0], v31);
        }
      }

      v21 = re::RenderManager::perFrameAllocator(*(v2 + 568));
      re::ecs2::RemoteEffectsPinchStateStore::updatePinchData(v2 + 424, v2 + 376, v21);
      return re::ecs2::RemoteEffectsPinchStateStore::updatePinchData(v2 + 520, v2 + 472, v21);
    }
  }

  return result;
}

void *re::ecs2::allocInfo_RemoteEffectsService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC0E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC0E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC0F8, "RemoteEffectsService");
    __cxa_guard_release(&qword_1EE1AC0E8);
  }

  return &unk_1EE1AC0F8;
}

void re::ecs2::initInfo_RemoteEffectsService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1E3DEFFD1D104AB2;
  v6[1] = "RemoteEffectsService";
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
  *(this + 8) = &re::ecs2::initInfo_RemoteEffectsService(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsService>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsService>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsService>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsService>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultDestruct<re::ecs2::RemoteEffectsService>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 65);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 59);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 53);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a3 + 47);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 41);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 35);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 29);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a3 + 23);
  std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::~__hash_table((a3 + 18));
  re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3 + 12);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(a3 + 6);

  return re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a3);
}

double re::internal::defaultDestructV2<re::ecs2::RemoteEffectsService>(uint64_t *a1)
{
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 65);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 59);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 53);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(a1 + 47);
  re::HashTable<unsigned long long,re::SharedPtr<re::ecs2::Entity>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 41);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 35);
  re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 29);
  re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(a1 + 23);
  std::__hash_table<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::ecs2::RemoteEffectAudioPlaybackData>>>::~__hash_table((a1 + 18));
  re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1 + 12);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(a1 + 6);

  return re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(a1);
}

void *re::ecs2::allocInfo_RemoteEffectsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC0F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC0F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC188, "RemoteEffectsSystem");
    __cxa_guard_release(&qword_1EE1AC0F0);
  }

  return &unk_1EE1AC188;
}

void re::ecs2::initInfo_RemoteEffectsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x4B4C52106E7F5E16;
  v6[1] = "RemoteEffectsSystem";
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
  *(this + 8) = &re::ecs2::initInfo_RemoteEffectsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RemoteEffectsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RemoteEffectsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RemoteEffectsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RemoteEffectsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RemoteEffectsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RemoteEffectsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::RemoteEffectsSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF4B38;
  result[28] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::RemoteEffectsSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF4B38;
  result[28] = 0;
  return result;
}

void re::ecs2::RemoteEffectsSystem::~RemoteEffectsSystem(re::ecs2::RemoteEffectsSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t (***re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(uint64_t a1))(void)
{
  result = *(a1 + 32);
  if (result)
  {
    result = (**result)(result);
    if (*(a1 + 32) != a1)
    {
      result = (*(**(a1 + 24) + 40))(*(a1 + 24));
    }

    *(a1 + 32) = 0;
  }

  return result;
}

void re::ecs2::entityAndDescendantsRecurse(void *a1, unint64_t *a2, void *a3)
{
  v31 = *MEMORY[0x1E69E9840];
  v5 = a3;
  v6 = v5;
  if (a1)
  {
    v15 = a1[39];
    v16 = 0;
    v14 = 0;
    (*(v5 + 2))(v5, a1, &v14, &v15);
    v7 = *a2 + 1;
    *a2 = v7;
    if ((v14 & 1) == 0 && v7 <= 0x80)
    {
      v8 = a1[43];
      if (v8)
      {
        for (i = 0; i != v8; ++i)
        {
          v10 = a1[43];
          if (v10 <= i)
          {
            v17 = 0;
            v30 = 0u;
            v28 = 0u;
            v29 = 0u;
            v26 = 0u;
            v27 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v18 = 136315906;
            v19 = "operator[]";
            v20 = 1024;
            v21 = 797;
            v22 = 2048;
            v23 = i;
            v24 = 2048;
            v25 = v10;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v11 = *(a1[45] + 8 * i);
          if (v11)
          {
            v12 = (v11 + 8);
            re::ecs2::entityAndDescendantsRecurse(v11, a2, v6);
            v13 = *a2;

            if (v13 > 0x7F)
            {
              break;
            }
          }

          else
          {

            if (*a2 >= 0x80)
            {
              break;
            }
          }
        }
      }
    }
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,void (re::ecs2::RemoteEffectsService::*)(re::ecs2::RemoteEffectHoverState &),void ()(re::ecs2::RemoteEffectHoverState &)>::operator()(void *a1)
{
  v1 = a1[2];
  v2 = a1[3];
  v3 = (a1[1] + (v2 >> 1));
  if (v2)
  {
    return (*(*v3 + v1))();
  }

  else
  {
    return v1(v3);
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,void (re::ecs2::RemoteEffectsService::*)(re::ecs2::RemoteEffectHoverState &),void ()(re::ecs2::RemoteEffectHoverState &)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4BE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,void (re::ecs2::RemoteEffectsService::*)(re::ecs2::RemoteEffectHoverState &),void ()(re::ecs2::RemoteEffectHoverState &)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4BE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (*(a1 + 24) != *(a2 + 24) || v4 == a2)
    {
      if (v4)
      {
        v6 = (*(*v4 + 40))(v4);
        v7 = a1;
        if (v6 >= 0x19)
        {
          v8 = v6;
          v9 = *(a1 + 24);
          if (v9)
          {
            v7 = (*(*v9 + 32))(v9, v8, 0);
          }

          else
          {
            v7 = 0;
          }
        }

        *(a1 + 32) = v7;
        (*(**(a2 + 32) + 32))(*(a2 + 32));
        re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(a2);
      }
    }

    else
    {
      *(a1 + 32) = v4;
      *(a2 + 32) = 0;
    }
  }

  return a1;
}

{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::ecs2::RemoteEffectHoverState &)>::destroyCallable(a1);
    v4 = *(a2 + 32);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      v6 = a1;
      if (v5 >= 0x19)
      {
        v7 = v5;
        v8 = *(a1 + 24);
        if (v8)
        {
          v6 = (*(*v8 + 32))(v8, v7, 0);
        }

        else
        {
          v6 = 0;
        }
      }

      *(a1 + 32) = v6;
      (*(**(a2 + 32) + 24))(*(a2 + 32));
    }
  }

  return a1;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4C48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4C48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4CA0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4CA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4CF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4CF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4D50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::RemoteEffectsService,REEventHandlerResult (re::ecs2::RemoteEffectsService::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4D50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

BOOL re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 72 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 72 * v5) = *(v6 + 72 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 72 * v8);
    v11 = *v10;
    if ((*v10 & 0x80000000) != 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v10 + 2);
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 72 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 72 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 72 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 72 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 64) = a3;
  ++*(a1 + 28);
  return v7 + 72 * v5;
}

void re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v9, v4, a2);
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
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t *re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::move(uint64_t *result, uint64_t a2)
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
        v8 = re::HashTable<unsigned long long,re::HashSet<unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v4, *(v7 + v5 + 64) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(v8 + 16) = 0u;
        v8 += 16;
        *(v8 - 8) = v10;
        *(v8 + 32) = 0;
        *(v8 + 16) = 0u;
        *(v8 + 36) = 0x7FFFFFFFLL;
        result = re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v8, (v9 + 16));
        v2 = *(a2 + 32);
      }

      v5 += 72;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v26, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24));
                v19 = *(v13 + 8);
                *(v18 + 16) = 0u;
                v18 += 16;
                *(v18 - 8) = v19;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v18, (v13 + 16));
              }

              ++v17;
              v13 += 72;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
    v21 = *(v20 + 72 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 72 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 72 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 64) = a3;
  ++*(a1 + 28);
  return v20 + 72 * v5;
}

uint64_t re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::findEntry<re::ecs2::RemoteEffectHitTestSource>@<X0>(uint64_t result@<X0>, unsigned __int8 *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_5;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_5;
  }

  v7 = *(result + 16);
  v8 = *a2;
  if (*(v7 + 24 * v6 + 4) == v8)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v9 = *(v7 + 24 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v9 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v10 = v9;
      if (*(v7 + 24 * v9 + 4) == v8)
      {
        break;
      }

      v9 = *(v7 + 24 * v9) & 0x7FFFFFFF;
      v6 = v10;
      if (v9 == 0x7FFFFFFF)
      {
        v6 = v10;
        goto LABEL_6;
      }
    }

    v5 = v9;
  }

LABEL_6:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::init(v26, v9, v8);
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
            v18 = (v13 + 8);
            do
            {
              if ((*(v18 - 1) & 0x80000000) != 0)
              {
                v19 = re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::allocEntry(a1, v18[1] % *(a1 + 24));
                *(v19 + 4) = *(v18 - 4);
                *(v19 + 8) = *v18;
                *v18 = 0;
              }

              ++v17;
              v18 += 3;
            }

            while (v17 < v16);
          }

          re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit(v26);
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
    v21 = *(v20 + 24 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 24 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 24 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 16) = a3;
  ++*(a1 + 28);
  return v20 + 24 * v5;
}

BOOL re::HashTable<unsigned long long,re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 72 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = v8;
    }

    else
    {
      *(v6 + 72 * v5) = *(v6 + 72 * v5) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + 72 * v8);
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::deinit((v10 + 4));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + 72 * v12);
      v9 = v12;
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + 72 * v12) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

BOOL re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 24 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 24 * v5) = *(v6 + 24 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::RemoteEffectHitTestSource,re::SharedPtr<re::ecs2::RemoteEffectHoverState>,re::Hash<re::ecs2::RemoteEffectHitTestSource>,re::EqualTo<re::ecs2::RemoteEffectHitTestSource>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 24 * v9) = *(*(a1 + 16) + 24 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(void *a1, unint64_t a2)
{
  result = *a1;
  if (a2 && !result)
  {
    result = re::DynamicOverflowArray<std::tuple<unsigned long long,re::ecs2::RemoteEffectHitTestSource>,8ul>::setCapacity(a1, a2);
    v6 = *(a1 + 4) + 2;
LABEL_4:
    *(a1 + 4) = v6;
    return result;
  }

  v7 = *(a1 + 4);
  if (v7)
  {
    v8 = 8;
  }

  else
  {
    v8 = a1[3];
  }

  if (v8 != a2)
  {
    v9 = a1[1];
    if (v9 <= a2 && (a2 > 8 || (v7 & 1) == 0))
    {
      if (a2 < 9)
      {
        v14 = a1 + 3;
        if (v7)
        {
          v15 = (a1 + 3);
        }

        else
        {
          v15 = a1[4];
        }

        if (v9)
        {
          v16 = 16 * v9;
          do
          {
            v17 = *v15++;
            *v14++ = v17;
            v16 -= 16;
          }

          while (v16);
          result = *a1;
        }

        result = (*(*result + 40))(result);
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
        result = (*(*result + 32))(result, 16 * a2, 8);
        if (result)
        {
          v11 = result;
          v12 = *(a1 + 4);
          if (v12)
          {
            v13 = (a1 + 3);
          }

          else
          {
            v13 = a1[4];
          }

          v18 = a1[1];
          if (v18)
          {
            v19 = 16 * v18;
            v20 = result;
            do
            {
              v21 = *v13++;
              *v20++ = v21;
              v19 -= 16;
            }

            while (v19);
            v12 = *(a1 + 4);
          }

          if ((v12 & 1) == 0)
          {
            result = (*(**a1 + 40))(*a1, a1[4]);
            v12 = *(a1 + 4);
          }

          *(a1 + 4) = v12 & 0xFFFFFFFE;
          a1[3] = a2;
          a1[4] = v11;
          return result;
        }
      }

      re::internal::assertLog(6, v10, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*a1 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 832 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 832 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 832 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 832 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v27, 0, 36);
          *&v27[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v27, v9, v8);
          v11 = *v27;
          *v27 = *a1;
          *a1 = v11;
          v12 = *&v27[16];
          v13 = *(a1 + 16);
          *&v27[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v27[24];
          *&v27[24] = *(a1 + 24);
          v14 = *&v27[32];
          *(a1 + 24) = v15;
          ++*&v27[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 816) % *(a1 + 24));
                *(v18 + 8) = *(v13 + 8);
                memcpy((v18 + 16), (v13 + 16), 0x310uLL);
                v19 = *(v13 + 800);
                *(v18 + 800) = v19;
                if (v19)
                {
                  v20 = (v19 + 8);
                }

                *(v18 + 808) = *(v13 + 808);
              }

              ++v17;
              v13 += 832;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v27);
        }
      }

      else
      {
        if (v8)
        {
          v23 = 2 * v7;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 832 * v5);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 832 * v5);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  v24 = v21 + 832 * v5;
  *v24 = v22 | 0x80000000;
  v25 = *(a1 + 8);
  *v24 = *(v25 + 4 * a2) | 0x80000000;
  *(v25 + 4 * a2) = v5;
  *(v24 + 816) = a3;
  ++*(a1 + 28);
  return v21 + 832 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::RemoteEffectShaderData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 832 * v10, 16);
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

void re::make::shared::object<re::ecs2::RemoteEffectAnimationNode>(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 88, 8);
  *v3 = 0u;
  *(v3 + 16) = 0u;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  ArcSharedObject::ArcSharedObject(v3, 0);
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF4DA8;
  *a1 = v3;
}

void re::ecs2::RemoteEffectAnimationNode::~RemoteEffectAnimationNode(re::ecs2::RemoteEffectAnimationNode *this)
{
  *this = &unk_1F5CF4DA8;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF4DA8;
  v2 = *(this + 3);
  if (v2)
  {

    *(this + 3) = 0;
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::HashSetBase<re::ecs2::RemoteEffectsGroupEntry,re::ecs2::RemoteEffectsGroupEntry,re::internal::ValueAsKey<re::ecs2::RemoteEffectsGroupEntry>,re::Hash<re::ecs2::RemoteEffectsGroupEntry>,re::EqualTo<re::ecs2::RemoteEffectsGroupEntry>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, void *a4)
{
  v7 = *(a1 + 36);
  if (v7 == 0x7FFFFFFF)
  {
    v7 = *(a1 + 32);
    v8 = v7;
    if (v7 == *(a1 + 24))
    {
      v9 = *(a1 + 28);
      v10 = 2 * v9;
      v11 = *a1;
      if (*a1)
      {
        if (v10)
        {
          v12 = v7 == v10;
        }

        else
        {
          v12 = 1;
        }

        if (!v12 && (v9 & 0x80000000) == 0)
        {
          memset(v25, 0, 36);
          *&v25[36] = 0x7FFFFFFFLL;
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v25, v11, v10);
          v13 = *v25;
          *v25 = *a1;
          *a1 = v13;
          v14 = *&v25[16];
          v15 = *(a1 + 16);
          *&v25[16] = v15;
          *(a1 + 16) = v14;
          v17 = *&v25[24];
          *&v25[24] = *(a1 + 24);
          v16 = *&v25[32];
          *(a1 + 24) = v17;
          v18 = v16;
          if (v16)
          {
            v19 = 0;
            v20 = v15 + 16;
            do
            {
              if ((*(v20 - 8) & 0x80000000) != 0)
              {
                re::HashSetBase<re::ecs2::RemoteEffectsGroupEntry,re::ecs2::RemoteEffectsGroupEntry,re::internal::ValueAsKey<re::ecs2::RemoteEffectsGroupEntry>,re::Hash<re::ecs2::RemoteEffectsGroupEntry>,re::EqualTo<re::ecs2::RemoteEffectsGroupEntry>,true,false>::addAsMove(a1, *(v20 - 16) % *(a1 + 24), *(v20 - 16), v20);
              }

              ++v19;
              v20 += 24;
            }

            while (v19 < v18);
          }

          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v25);
        }
      }

      else
      {
        if (v10)
        {
          v23 = v10;
        }

        else
        {
          v23 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v8 = *(a1 + 32);
    }

    *(a1 + 32) = v8 + 1;
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v7 + 8);
  }

  else
  {
    v21 = *(a1 + 16);
    v22 = *(v21 + 24 * v7 + 8);
    *(a1 + 36) = v22 & 0x7FFFFFFF;
  }

  *(v21 + 24 * v7 + 8) = v22 | 0x80000000;
  v24 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v7 + 8) = *(*(a1 + 16) + 24 * v7 + 8) & 0x80000000 | *(v24 + 4 * a2);
  *(*(a1 + 16) + 24 * v7) = a3;
  *(*(a1 + 16) + 24 * v7 + 16) = *a4;
  *(v24 + 4 * a2) = v7;
  ++*(a1 + 28);
}

uint64_t re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
            v17 = 0;
            v18 = v13 + 16;
            do
            {
              if ((*(v18 - 16) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::ecs2::PinchState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 8) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 32;
            }

            while (v17 < v16);
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
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 32 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 32 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 24) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + 32 * v5;
}

double re::ecs2::RemoteEffectsService::RemoteEffectsService(re::ecs2::RemoteEffectsService *this)
{
  *(this + 8) = 0;
  result = 0.0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 0;
  *(this + 84) = 0x7FFFFFFFLL;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 32) = 0;
  *(this + 132) = 0x7FFFFFFFLL;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 44) = 1065353216;
  *(this + 54) = 0;
  *(this + 200) = 0u;
  *(this + 184) = 0u;
  *(this + 220) = 0x7FFFFFFFLL;
  *(this + 66) = 0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 78) = 0;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 90) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 364) = 0x7FFFFFFFLL;
  *(this + 102) = 0;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 412) = 0x7FFFFFFFLL;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 114) = 0;
  *(this + 460) = 0x7FFFFFFFLL;
  *(this + 126) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 508) = 0x7FFFFFFFLL;
  *(this + 138) = 0;
  *(this + 520) = 0u;
  *(this + 536) = 0u;
  *(this + 556) = 0x7FFFFFFFLL;
  *(this + 73) = 0;
  *(this + 568) = 0u;
  return result;
}

void *re::ecs2::allocInfo_DeferredActivationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_311, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_311))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC230, "DeferredActivationComponent");
    __cxa_guard_release(&_MergedGlobals_311);
  }

  return &unk_1EE1AC230;
}

void re::ecs2::initInfo_DeferredActivationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x1A4B35CD4BE33410;
  v10[1] = "DeferredActivationComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AC228, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC228);
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
      qword_1EE1AC220 = v8;
      __cxa_guard_release(&qword_1EE1AC228);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AC220;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DeferredActivationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DeferredActivationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DeferredActivationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DeferredActivationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227DeferredActivationComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::DeferredActivationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE4ED0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::DeferredActivationComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE4ED0;
  *(v1 + 32) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227DeferredActivationComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_RayCastSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_312, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_312))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC2C8, "RayCastSystem");
    __cxa_guard_release(&_MergedGlobals_312);
  }

  return &unk_1EE1AC2C8;
}

void re::ecs2::initInfo_RayCastSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x47E5E3E009048BF0;
  v6[1] = "RayCastSystem";
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
  *(this + 8) = &re::ecs2::initInfo_RayCastSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RayCastSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RayCastSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RayCastSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RayCastSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RayCastSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RayCastSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::RayCastSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[13] = 0u;
  a3[14] = 0u;
  a3[11] = 0u;
  a3[12] = 0u;
  a3[9] = 0u;
  a3[10] = 0u;
  a3[7] = 0u;
  a3[8] = 0u;
  a3[5] = 0u;
  a3[6] = 0u;
  a3[3] = 0u;
  a3[4] = 0u;
  a3[1] = 0u;
  a3[2] = 0u;
  *a3 = 0u;
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF4DF0;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::RayCastSystem>(_OWORD *a1)
{
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF4DF0;
  result[28] = 0;
  result[29] = 0;
  return result;
}

_anonymous_namespace_ *re::ecs2::RayCastSystem::willAddSystemToECSService(re::ecs2::RayCastSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::RayCastSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

uint64_t re::ecs2::RayCastSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v96 = *MEMORY[0x1E69E9840];
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v75);
  if (*(a1 + 224))
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v64 = &v6[v5];
      v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v65 = a1;
      while (1)
      {
        v67 = *v6;
        v66 = v6;
        re::ecs2::SceneComponentTable::get((*v6 + 200), v7[68]);
        v8 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v88, 3049, a1);
        v9 = re::ecs2::SceneComponentTable::get((v67 + 200), v7[68]);
        if (v9)
        {
          v10 = *(v9 + 384);
          if (v10)
          {
            break;
          }
        }

LABEL_56:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v88);
        v6 = v66 + 1;
        v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (v66 + 1 == v64)
        {
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(v75);
        }
      }

      v11 = *(v9 + 400);
      v12 = &v11[v10];
      v68 = v12;
      while (1)
      {
        v13 = *v11;
        v14 = (*v11)[1].i64[0];
        if (*(v14 + 304))
        {
          if (v13[5].i32[0])
          {
            break;
          }
        }

LABEL_55:
        if (++v11 == v12)
        {
          goto LABEL_56;
        }
      }

      re::TransformService::worldMatrix(*(a1 + 232), (*v11)[1].i64[0], 0, &v84);
      v15 = v13[2];
      v16 = vaddq_f32(v87, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, v15.f32[0]), v85, *v15.f32, 1), v86, v15, 2));
      v74 = vdivq_f32(v16, vdupq_laneq_s32(v16, 3));
      v17 = vaddq_f32(v15, vmulq_n_f32(v13[3], v13[4].f32[0]));
      v18 = vaddq_f32(v87, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v84, v17.f32[0]), v85, *v17.f32, 1), v86, v17, 2));
      v73 = vdivq_f32(v18, vdupq_laneq_s32(v18, 3));
      v78[0] = 0;
      v78[1] = 0;
      v79 = 1;
      v81 = 0;
      v82 = 0;
      v80 = 0;
      v83 = 0;
      v19 = vsubq_f32(v73, v74);
      v20 = vmulq_f32(v19, v19);
      if (fabsf(v20.f32[2] + vaddv_f32(*v20.f32)) >= 0.00001)
      {
        v21 = (*(**(a1 + 224) + 32))(*(a1 + 224), v67);
        if (v21)
        {
          v22 = v21;
          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v91, v21, 0);
          v23 = v91;
          v76 = v91;
          v77 = DWORD2(v91);
          v24 = WORD4(v91);
          v25 = HIWORD(DWORD2(v91));
          if (v22 != v91 || WORD4(v91) != 0xFFFF || v25 != 0xFFFF)
          {
            v71 = vdupq_laneq_s32(v74, 2);
            v72 = vdupq_lane_s32(*v74.f32, 1);
            v69 = vdupq_laneq_s32(v73, 2);
            v70 = vdupq_lane_s32(*v73.f32, 1);
            do
            {
              v28 = v25;
              v29 = *(v23 + 16);
              if (v29 <= v25)
              {
                v89 = 0;
                v94 = 0u;
                v95 = 0u;
                v92 = 0u;
                v93 = 0u;
                v91 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v90 = 136315906;
                *&v90[4] = "operator[]";
                *&v90[12] = 1024;
                *&v90[14] = 797;
                *&v90[18] = 2048;
                *&v90[20] = v28;
                *&v90[28] = 2048;
                *&v90[30] = v29;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }

              v30 = *(*(v23 + 32) + 16 * v25) + 272 * v24;
              if (*(v30 + 16))
              {
                v31 = *(v30 + 176);
                v32 = *(v30 + 192);
                v33 = *(v30 + 208);
                v34 = *(v30 + 224);
                v35 = vaddq_f32(v34, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v31, v74.f32[0]), v72, v32), v71, v33));
                v36 = vdivq_f32(v35, vdupq_laneq_s32(v35, 3));
                v37 = vaddq_f32(v34, vmlaq_f32(vmlaq_f32(vmulq_n_f32(v31, v73.f32[0]), v70, v32), v69, v33));
                v38 = vsubq_f32(vdivq_f32(v37, vdupq_laneq_s32(v37, 3)), v36);
                v39 = vmulq_f32(v38, v38);
                v39.f32[0] = v39.f32[2] + vaddv_f32(*v39.f32);
                *v34.f32 = vrsqrte_f32(v39.u32[0]);
                *v34.f32 = vmul_f32(*v34.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v34.f32, *v34.f32)));
                *v90 = v36;
                *&v90[16] = vmulq_n_f32(v38, vmul_f32(*v34.f32, vrsqrts_f32(v39.u32[0], vmul_f32(*v34.f32, *v34.f32))).f32[0]);
                *&v90[32] = sqrtf(v39.f32[0]);
                v91 = 0uLL;
                LODWORD(v92) = 1;
                v93 = 0uLL;
                *(&v92 + 1) = 0;
                LODWORD(v94) = 0;
                (*(**(*(v30 + 16) + 56) + 56))(*(*(v30 + 16) + 56), v90, v13 + 6, &v91);
                v40 = *(&v93 + 1);
                if (*(&v93 + 1))
                {
                  v41 = 0;
                  do
                  {
                    v42 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](&v91, v41);
                    v43 = vaddq_f32(*(v30 + 160), vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(*(v30 + 112), COERCE_FLOAT(*(v42 + 16))), *(v30 + 128), *(v42 + 16), 1), *(v30 + 144), *(v42 + 16), 2));
                    *(v42 + 16) = vdivq_f32(v43, vdupq_laneq_s32(v43, 3));
                    v97 = __invert_f3(*(v30 + 112));
                    v44 = vzip2q_s32(v97.columns[0], v97.columns[2]);
                    v45 = vzip1q_s32(vzip1q_s32(v97.columns[0], v97.columns[2]), v97.columns[1]);
                    v97.columns[0] = vtrn2q_s32(v97.columns[0], v97.columns[1]);
                    v97.columns[0].i32[2] = v97.columns[2].i32[1];
                    *(v42 + 32) = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v45, COERCE_FLOAT(*(v42 + 32))), v97.columns[0], *(v42 + 32), 1), vzip1q_s32(v44, vdupq_laneq_s32(v97.columns[1], 2)), *(v42 + 32), 2);
                    v46 = re::BucketArray<re::CollisionCastHit,10ul>::addUninitialized(v78);
                    *v46 = *v42;
                    v47 = *(v42 + 64);
                    v49 = *(v42 + 16);
                    v48 = *(v42 + 32);
                    v46[3] = *(v42 + 48);
                    v46[4] = v47;
                    v46[1] = v49;
                    v46[2] = v48;
                    ++v41;
                  }

                  while (v40 != v41);
                }

                re::BucketArray<re::CollisionCastHit,10ul>::deinit(&v91);
                if (v91 && (v92 & 1) == 0)
                {
                  (*(*v91 + 40))();
                }
              }

              re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v76);
              v23 = v76;
              v24 = v77;
              v25 = HIWORD(v77);
            }

            while (v76 != v22 || v77 != 0xFFFF || HIWORD(v77) != 0xFFFF);
          }

          a1 = v65;
        }
      }

      v50 = re::ecs2::EntityComponentCollection::getOrAdd((v14 + 48), re::ecs2::ComponentImpl<re::ecs2::RayCastResultComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
      v51 = v50;
      if (v82)
      {
        v52 = re::BucketArray<re::CollisionCastHit,10ul>::operator[](v78, 0);
        v53 = *(*v52 + 40);
        v54 = vmvnq_s8(vceqq_f32(v51[2], *(v52 + 16)));
        v54.i32[3] = v54.i32[2];
        v55 = vmaxvq_u32(v54);
        if ((v55 & 0x80000000) != 0)
        {
          v51[2] = *(v52 + 16);
        }

        v57 = *(v52 + 32);
        v56 = (v52 + 32);
        v58 = vmvnq_s8(vceqq_f32(v51[3], v57));
        v58.i32[3] = v58.i32[2];
        if ((vmaxvq_u32(v58) & 0x80000000) != 0)
        {
          v51[3] = *v56;
          v59 = 1;
        }

        else
        {
          v59 = v55 >> 31;
        }

        v60 = v51[4].i64[0];
        if (v60)
        {
          v61 = v53 + 8;
          if (!v53)
          {
            v61 = 0;
          }

          if (v60 == v61)
          {
            goto LABEL_45;
          }
        }

        re::ecs2::EntityHandle::operator=(&v51[4], v53);
      }

      else
      {
        *(v50 + 32) = 0x7FC000007FC00000;
        *(v50 + 40) = 2143289344;
        *(v50 + 48) = 0x7FC000007FC00000;
        *(v50 + 56) = 2143289344;
        v59 = 1;
        if (re::ecs2::EntityHandle::isNull((v50 + 64)))
        {
          goto LABEL_45;
        }

        re::ecs2::EntityHandle::reset(&v51[4]);
        objc_destroyWeak(&v51[4]);
        v51[4].i64[0] = 0;
      }

      v59 = 1;
LABEL_45:
      v62 = *(v14 + 216);
      if (v59 && v62)
      {
        re::ecs2::NetworkComponent::markDirty(v62, v51);
      }

      if (v13[5].i32[0] == 1)
      {
        v13[5].i32[0] = 0;
        if (v62)
        {
          re::ecs2::NetworkComponent::markDirty(v62, v51);
        }
      }

      re::BucketArray<re::CollisionCastHit,10ul>::deinit(v78);
      if (v78[0] && (v79 & 1) == 0)
      {
        (*(*v78[0] + 40))();
      }

      v12 = v68;
      goto LABEL_55;
    }
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)121>::end(v75);
}

void re::ecs2::RayCastSystem::~RayCastSystem(re::ecs2::RayCastSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ImagePresentationTextureProcessor *re::ImagePresentationTextureProcessor::ImagePresentationTextureProcessor(re::ImagePresentationTextureProcessor *this, uint64_t a2)
{
  *this = 0;
  v3 = re::ImagePresentationTextureProcessor::initializeSession(this, a2);
  if (v3)
  {
    v4 = *re::imagePresentationLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *v6 = 0;
      _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession", v6, 2u);
    }
  }

  return this;
}

BOOL re::ImagePresentationTextureProcessor::initializeSession(re::ImagePresentationTextureProcessor *this, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v9[0] = 67109120;
    v9[1] = a2;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "alloc and init: ImagePresentationTextureProcessorMetalSession (shaders: %d)", v9, 8u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = [[TextureProcessorMetalSession alloc] initWithLoadingBundlePipelines:a2];
  *this = v6;
  v7 = v6 == 0;
  objc_autoreleasePoolPop(v5);
  return v7;
}

void *re::ImagePresentationTextureProcessor::generateSpatialPhotoMixedLightSpillTexture(id *this, const re::TextureAsset *a2)
{
  v3 = this;
  if (!*this)
  {
    this = re::ImagePresentationTextureProcessor::initializeSession(this, 1);
    if (this)
    {
      v12 = *re::imagePresentationLogObjects(this);
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        *v16 = 0;
        _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession. Abort light spill texture generation.", v16, 2u);
      }

      return 0;
    }
  }

  v4 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *v16 = 0;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Begins to generate a spatial photo light spill texture.", v16, 2u);
  }

  v5 = objc_autoreleasePoolPush();
  v6 = *v3;
  if (!*(a2 + 30))
  {
    v8 = v6;
    LODWORD(v7) = 4.0;
    v9 = [v6 makeSpatialPhotoMixedLightSpillTextureFrom:*(a2 + 14) blurSigma:64 resolution:v7];
    v10 = v9;
    v24 = v9;
    v25 = 0;
    if (v9)
    {
    }

    *v16 = 0;
    v18 = 0;
    v19 = 0;
    v17 = 0;
    v20 = 0u;
    memset(v21, 0, 28);
    v22 = 0;
    v23 = 0;
    TextureAsset = re::TextureAsset::makeTextureAsset(&v24, v16, 3, 0);
    if (*&v21[0])
    {
      if (v22)
      {
        (*(**&v21[0] + 40))();
      }

      v22 = 0;
      memset(v21, 0, 24);
      ++DWORD2(v21[1]);
    }

    if (v20)
    {
    }

    if (v25 != -1)
    {
      (off_1F5CF4E70[v25])(v16, &v24);
    }

    objc_autoreleasePoolPop(v5);
    return TextureAsset;
  }

  v14 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ImagePresentationTextureProcessor::generateAlchemistAnimationLoadingTexture(v14, v15);
}

void *re::ImagePresentationTextureProcessor::generateAlchemistAnimationLoadingTexture(re::ImagePresentationTextureProcessor *this, const re::TextureAsset *a2)
{
  if (!*this)
  {
    v18 = re::ImagePresentationTextureProcessor::initializeSession(this, 1);
    if (v18)
    {
      v19 = *re::imagePresentationLogObjects(v18);
      if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
      {
        *v25 = 0;
        _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession. Abort Alchemist animation blur texture generation.", v25, 2u);
      }

      return 0;
    }
  }

  re::Defaults::intValue("ipc.mxi.enableOverrides", a2, v25);
  v6 = 256;
  if (v25[0] != 1 || LODWORD(v26) == 0)
  {
    v8 = 3.0;
  }

  else
  {
    re::Defaults::floatValue("ipc.mxi.generation.loadingTextureBlurSigma", v5, v25);
    if (v25[0])
    {
      v8 = v26;
    }

    else
    {
      v8 = 3.0;
    }

    re::Defaults::intValue("ipc.mxi.generation.loadingTextureResolution", v9, v25);
    if (v25[0])
    {
      v6 = LODWORD(v26);
    }

    else
    {
      v6 = 256;
    }
  }

  v10 = *re::imagePresentationLogObjects(v4);
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *v25 = 0;
    _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Begins to generate the blur texture for Alchemist animation.", v25, 2u);
  }

  v11 = objc_autoreleasePoolPush();
  v12 = *this;
  if (!*(a2 + 30))
  {
    v14 = v12;
    *&v13 = v8;
    v15 = [v12 makeAlchemistAnimationLoadingTextureFrom:*(a2 + 14) blurSigma:v6 resolution:v13];
    v16 = v15;
    v34 = v15;
    v35 = 0;
    if (v15)
    {
    }

    *v25 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    v30 = 0u;
    memset(v31, 0, 28);
    v32 = 0;
    v33 = 0;
    TextureAsset = re::TextureAsset::makeTextureAsset(&v34, v25, 3, 0);
    if (*&v31[0])
    {
      if (v32)
      {
        (*(**&v31[0] + 40))();
      }

      v32 = 0;
      memset(v31, 0, 24);
      ++DWORD2(v31[1]);
    }

    if (v30)
    {
    }

    if (v35 != -1)
    {
      (off_1F5CF4E70[v35])(v25, &v34);
    }

    objc_autoreleasePoolPop(v11);
    return TextureAsset;
  }

  v21 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ImagePresentationTextureProcessor::generateMXIGlowrayBackingTexture(v21, v22, v23, v24);
}

void *re::ImagePresentationTextureProcessor::generateMXIGlowrayBackingTexture(id *this, const re::TextureAsset *a2, float a3, float a4)
{
  v7 = this;
  if (!*this)
  {
    this = re::ImagePresentationTextureProcessor::initializeSession(this, 1);
    if (this)
    {
      v17 = *re::imagePresentationLogObjects(this);
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        *v20 = 0;
        _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Unable to initialize ImagePresentationTextureProcessorMetalSession. Abort glowray texture generation.", v20, 2u);
      }

      return 0;
    }
  }

  v8 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *v20 = 0;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Begins to generate the glowray texture for Alchemist.", v20, 2u);
  }

  v9 = objc_autoreleasePoolPush();
  v10 = *v7;
  if (!*(a2 + 30))
  {
    v13 = v10;
    *&v11 = a3;
    *&v12 = a4;
    v14 = [v10 makeAlchemistGlowrayTextureFrom:*(a2 + 14) insetSamplePercent:v11 cornerRadius:v12];
    v15 = v14;
    v28 = v14;
    v29 = 0;
    if (v14)
    {
    }

    *v20 = 0;
    v22 = 0;
    v23 = 0;
    v21 = 0;
    v24 = 0u;
    memset(v25, 0, 28);
    v26 = 0;
    v27 = 0;
    TextureAsset = re::TextureAsset::makeTextureAsset(&v28, v20, 3, 0);
    if (*&v25[0])
    {
      if (v26)
      {
        (*(**&v25[0] + 40))();
      }

      v26 = 0;
      memset(v25, 0, 24);
      ++DWORD2(v25[1]);
    }

    if (v24)
    {
    }

    if (v29 != -1)
    {
      (off_1F5CF4E70[v29])(v20, &v28);
    }

    objc_autoreleasePoolPop(v9);
    return TextureAsset;
  }

  v19 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ecs2::allocInfo_AudioLibraryComponent(v19);
}

void *re::ecs2::allocInfo_AudioLibraryComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AC360, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC360))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AC3D8, "AudioLibraryComponent");
    __cxa_guard_release(&qword_1EE1AC360);
  }

  return &unk_1EE1AC3D8;
}

void re::ecs2::initInfo_AudioLibraryComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0xFBB6D340A487FCB0;
  v13[1] = "AudioLibraryComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1AC368, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AC368);
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
      qword_1EE1AC378 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "resources";
      *(v11 + 16) = &qword_1EE1AC388;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AC380 = v11;
      __cxa_guard_release(&qword_1EE1AC368);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AC378;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioLibraryComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioLibraryComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioLibraryComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioLibraryComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AudioLibraryComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AC370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AC370))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AC388);
    qword_1EE1AC388 = &unk_1F5CF4E90;
    __cxa_guard_release(&qword_1EE1AC370);
  }

  if ((_MergedGlobals_313 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_AssetHandle(1, v3);
    if ((_MergedGlobals_313 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_313 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AC388, 0);
      qword_1EE1AC398 = 0x3000000007;
      dword_1EE1AC3A0 = v6;
      word_1EE1AC3A4 = 0;
      *&xmmword_1EE1AC3A8 = 0;
      *(&xmmword_1EE1AC3A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AC3B8 = v2;
      unk_1EE1AC3C0 = 0;
      qword_1EE1AC3C8 = v5;
      unk_1EE1AC3D0 = 0;
      qword_1EE1AC388 = &unk_1F5CF4E90;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1AC388, &v23);
      if (BYTE8(v23))
      {
        v9 = v24;
      }

      else
      {
        v9 = &v23 + 9;
      }

      if (v23 && (BYTE8(v23) & 1) != 0)
      {
        (*(*v23 + 40))();
      }

      v10 = v2[2];
      v18 = *(v5 + 32);
      v19 = v10;
      if (v30)
      {
        v17 = v30;
      }

      else
      {
        *&v23 = 0x449AD97C4B77BED4;
        *(&v23 + 1) = "_CompareFunc";
        if (v23)
        {
          if (v23)
          {
          }
        }

        if (!v29)
        {
          v25[0] = 0x449AD97C4B77BED4;
          v25[1] = "_CompareFunc";
          v29 = v23;
          if (v25[0])
          {
            if (v25[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(v28, &v23 + 8);
        if (!v29 || (v14 = *v28[2], *&v23 = *(&v29 + 1), *(&v23 + 1) = v14, LODWORD(v24) = -1, (v15 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v28[0] + 768, &v23)) == 0) || !*v15)
        {
          v26 = v29;
          v27 = v19;
        }

        re::StackScratchAllocator::StackScratchAllocator(v25);
        re::TypeBuilder::TypeBuilder(&v23, v25);
        v21 = v18;
        v22 = v19;
        re::TypeBuilder::beginDictionaryType(&v23, &v20, 1, 0x30uLL, 8uLL, &v22, &v21);
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AC3A8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::AudioLibraryComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDA3B0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioLibraryComponent>(ArcSharedObject *a1)
{
  *(a1 + 3) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDA3B0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  return result;
}

void re::ecs2::AudioLibraryComponent::registerAudioAsset(uint64_t a1, const re::AssetHandle *a2, uint64_t a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v6 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1 + 32, a3, a2);
  v7 = *re::audioLogObjects(v6);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = v7;
    v9 = re::AssetHandle::assetInfo(a2);
    v10 = v9[18];
    if ((v9[17] & 1) == 0)
    {
      v10 = v9 + 137;
    }

    if (*(a3 + 8))
    {
      v11 = *(a3 + 16);
    }

    else
    {
      v11 = a3 + 9;
    }

    v12 = *(*(a1 + 16) + 312);
    v13 = 136315650;
    v14 = v10;
    v15 = 2080;
    v16 = v11;
    v17 = 2048;
    v18 = v12;
    _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_INFO, "[CoreRE] [AudioLibraryComponent] registered asset='%s' with name %s (entityID=%llu).", &v13, 0x20u);
  }
}

void re::ecs2::AudioLibraryComponent::unregisterAudioAsset(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::remove(a1 + 32, a2);
  v5 = *re::audioLogObjects(v4);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    if (*(a2 + 8))
    {
      v6 = *(a2 + 16);
    }

    else
    {
      v6 = a2 + 9;
    }

    v7 = *(*(a1 + 16) + 312);
    v8 = 136315394;
    v9 = v6;
    v10 = 2048;
    v11 = v7;
    _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_INFO, "[CoreRE] [AudioLibraryComponent] unregistered asset with name %s (entityID=%llu).", &v8, 0x16u);
  }
}

const re::AssetHandle *re::ecs2::AudioLibraryComponent::getAsset@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetHandle *a3@<X8>)
{
  result = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(a1 + 32, a2);
  if (result)
  {
    result = re::AssetHandle::AssetHandle(a3, result);
    v5 = 1;
  }

  else
  {
    v5 = 0;
    *a3 = 0;
  }

  *(a3 + 24) = v5;
  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(a2, a3, v7);
}