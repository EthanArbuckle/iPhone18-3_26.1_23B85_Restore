uint64_t re::DynamicArray<re::ecs2::RemoteEffectsStyle>::deinit(uint64_t a1)
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
        v5 = v4 << 7;
        v6 = (v3 + 88);
        do
        {
          re::AssetHandle::~AssetHandle(v6);
          v6 = (v7 + 128);
          v5 -= 128;
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

void re::ecs2::SceneSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (!v3)
  {
    return;
  }

  v4 = *(a3 + 216);
  v5 = 8 * v3;
  while (1)
  {
    v6 = *v4;
    v7 = *(*v4 + 104);
    if (!*(v7 + 216))
    {
      goto LABEL_12;
    }

    v8 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = *(v6 + 49);
    if (v9 != v8[26])
    {
      break;
    }

    v10 = v8;
    v11 = *(v6 + 48);
    v12 = v8[25];
    if (v12 == v11)
    {
      if (v9 != v11)
      {
        goto LABEL_17;
      }
    }

    else if (v9 == v12)
    {
      v8[25] = v11;
      v8[26] = v11;
      *(v6 + 49) = v11;
      re::ecs2::NetworkComponent::markDirty(*(*(v6 + 104) + 216), v8);
    }

    else
    {
      if (v9 != v11)
      {
        goto LABEL_20;
      }

      re::ecs2::Scene::setRequiresAnchoring(v6, v12);
      v13 = v10[25];
      *(v6 + 49) = v13;
      v10[26] = v13;
    }

LABEL_12:
    ++v4;
    v5 -= 8;
    if (!v5)
    {
      return;
    }
  }

  v14 = *re::ecsComponentsLogObjects(v8);
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_ERROR, "[Scene] inconsistent previous requiresAnchoring", buf, 2u);
  }

  re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "update", 23);
  v8 = _os_crash();
  __break(1u);
LABEL_17:
  v16 = *re::ecsComponentsLogObjects(v8);
  if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
  {
    *v20 = 0;
    _os_log_error_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_ERROR, "[Scene] inconsistent requiresAnchoring", v20, 2u);
  }

  re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "update", 47);
  v8 = _os_crash();
  __break(1u);
LABEL_20:
  v18 = *re::ecsComponentsLogObjects(v8);
  if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
  {
    *v21 = 0;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[Scene] inconsistent requiresAnchoring", v21, 2u);
  }

  re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "!Unreachable code", "update", 42);
  _os_crash();
  __break(1u);
}

void *re::ecs2::allocInfo_SceneSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_245, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_245))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8010, "SceneSystem");
    __cxa_guard_release(&_MergedGlobals_245);
  }

  return &unk_1EE1A8010;
}

void re::ecs2::initInfo_SceneSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1F69BE8A7490B76;
  v6[1] = "SceneSystem";
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
  *(this + 8) = &re::ecs2::initInfo_SceneSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SceneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SceneSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::SceneSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
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
  *result = &unk_1F5CF00A8;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::SceneSystem>(_OWORD *a1)
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
  *result = &unk_1F5CF00A8;
  return result;
}

void re::ecs2::SceneSystem::~SceneSystem(re::ecs2::SceneSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ClientWorldOriginOverrideComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_246, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_246))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A80B8, "ClientWorldOriginOverrideComponent");
    __cxa_guard_release(&_MergedGlobals_246);
  }

  return &unk_1EE1A80B8;
}

void re::ecs2::initInfo_ClientWorldOriginOverrideComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xD300BA41B62D6B48;
  v10[1] = "ClientWorldOriginOverrideComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A80B0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A80B0);
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
      qword_1EE1A80A8 = v8;
      __cxa_guard_release(&qword_1EE1A80B0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A80A8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClientWorldOriginOverrideComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs234ClientWorldOriginOverrideComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ClientWorldOriginOverrideComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE8188;
}

void re::internal::defaultConstructV2<re::ecs2::ClientWorldOriginOverrideComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE8188;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs234ClientWorldOriginOverrideComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

uint64_t (***re::ecs2::ComponentHelper::addDefaultSystems(uint64_t (***result)(void), uint64_t a2))(void)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = (*result)[4](result);
    v5 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v4);
    if (v5)
    {
      v6 = *(v5 + 26) != 0;
    }

    else
    {
      v6 = 0;
    }

    v7 = re::globalAllocators(v5)[2];
    v8[2] = a2;
    v8[3] = v7;
    v8[0] = &unk_1F5CF0138;
    v8[1] = v3;
    v8[4] = v8;
    return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v8);
  }

  return result;
}

uint64_t anonymous namespace::addDefaultSystemsUsingLambda(uint64_t a1, int a2)
{
  v99 = *MEMORY[0x1E69E9840];
  v4 = &unk_1EE187000;
  {
    v4 = &unk_1EE187000;
    if (v49)
    {
      re::introspect<re::ecs2::NetworkReceiveSystem>(BOOL)::info = re::ecs2::introspect_NetworkReceiveSystem(0);
      v4 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v4[105] + 32);
  v5 = &unk_1EE187000;
  {
    v5 = &unk_1EE187000;
    if (v50)
    {
      re::introspect<re::ecs2::SceneSystem>(BOOL)::info = re::ecs2::introspect_SceneSystem(0);
      v5 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v5[163] + 32);
  v6 = &unk_1EE187000;
  {
    v6 = &unk_1EE187000;
    if (v51)
    {
      re::introspect<re::ecs2::TimebaseSystem>(BOOL)::info = re::ecs2::introspect_TimebaseSystem(0);
      v6 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v6[152] + 32);
  v7 = &unk_1EE187000;
  {
    v7 = &unk_1EE187000;
    if (v52)
    {
      re::introspect<re::ecs2::DeferredActivationSystem>(BOOL)::info = re::ecs2::introspect_DeferredActivationSystem(0);
      v7 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v7[76] + 32);
  v8 = &unk_1EE187000;
  {
    v8 = &unk_1EE187000;
    if (v53)
    {
      re::introspect<re::ecs2::LoadTraceSystem>(BOOL)::info = re::ecs2::introspect_LoadTraceSystem(0);
      v8 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v8[148] + 32);
  v9 = &unk_1EE187000;
  {
    v9 = &unk_1EE187000;
    if (v54)
    {
      re::introspect<re::ecs2::NetworkAssetComponentSystem>(BOOL)::info = re::ecs2::introspect_NetworkAssetComponentSystem(0);
      v9 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v9[65] + 32);
  v10 = &unk_1EE187000;
  {
    v10 = &unk_1EE187000;
    if (v55)
    {
      re::introspect<re::ecs2::AssetMutateTrackingSystem>(BOOL)::info = re::ecs2::introspect_AssetMutateTrackingSystem(0);
      v10 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v10[72] + 32);
  v11 = &unk_1EE187000;
  {
    v11 = &unk_1EE187000;
    if (v56)
    {
      re::introspect<re::ecs2::CameraMovementSystem>(BOOL)::info = re::ecs2::introspect_CameraMovementSystem(0);
      v11 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v11[108] + 32);
  v12 = &unk_1EE187000;
  {
    v12 = &unk_1EE187000;
    if (v57)
    {
      re::introspect<re::ecs2::PrimitiveBoxSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxSystem(0);
      v12 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v12[122] + 32);
  v13 = &unk_1EE187000;
  {
    v13 = &unk_1EE187000;
    if (v58)
    {
      re::introspect<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxWithRoundedCornersSystem(0);
      v13 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v13[58] + 32);
  v14 = &unk_1EE187000;
  {
    v14 = &unk_1EE187000;
    if (v59)
    {
      re::introspect<re::ecs2::PrimitiveCapsuleSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCapsuleSystem(0);
      v14 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v14[91] + 32);
  v15 = &unk_1EE187000;
  {
    v15 = &unk_1EE187000;
    if (v60)
    {
      re::introspect<re::ecs2::PrimitiveConeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveConeSystem(0);
      v15 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v15[113] + 32);
  v16 = &unk_1EE187000;
  {
    v16 = &unk_1EE187000;
    if (v61)
    {
      re::introspect<re::ecs2::PrimitiveCylinderSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCylinderSystem(0);
      v16 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v16[82] + 32);
  v17 = &unk_1EE187000;
  {
    v17 = &unk_1EE187000;
    if (v62)
    {
      re::introspect<re::ecs2::PrimitivePlaneSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePlaneSystem(0);
      v17 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v17[104] + 32);
  v18 = &unk_1EE187000;
  {
    v18 = &unk_1EE187000;
    if (v63)
    {
      re::introspect<re::ecs2::PrimitivePyramidSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePyramidSystem(0);
      v18 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v18[90] + 32);
  v19 = &unk_1EE187000;
  {
    v19 = &unk_1EE187000;
    if (v64)
    {
      re::introspect<re::ecs2::PrimitiveSphereSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveSphereSystem(0);
      v19 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v19[95] + 32);
  v20 = &unk_1EE187000;
  {
    v20 = &unk_1EE187000;
    if (v65)
    {
      re::introspect<re::ecs2::PrimitiveTetrahedronSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTetrahedronSystem(0);
      v20 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v20[68] + 32);
  v21 = &unk_1EE187000;
  {
    v21 = &unk_1EE187000;
    if (v66)
    {
      re::introspect<re::ecs2::PrimitiveTubeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTubeSystem(0);
      v21 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v21[112] + 32);
  v22 = &unk_1EE187000;
  {
    v22 = &unk_1EE187000;
    if (v67)
    {
      re::introspect<re::ecs2::MXISystem>(BOOL)::info = re::ecs2::introspect_MXISystem(0);
      v22 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v22[53] + 32);
  v23 = &unk_1EE187000;
  {
    v23 = &unk_1EE187000;
    if (v68)
    {
      re::introspect<re::ecs2::Static3DTextSystem>(BOOL)::info = re::ecs2::introspect_Static3DTextSystem(0);
      v23 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v23[116] + 32);
  v24 = &unk_1EE187000;
  {
    v24 = &unk_1EE187000;
    if (v69)
    {
      re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info = re::ecs2::introspect_MeshSceneSystem(0);
      v24 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v24[147] + 32);
  v25 = &unk_1EE187000;
  {
    v25 = &unk_1EE187000;
    if (v70)
    {
      re::introspect<re::ecs2::StateMachineSystem>(BOOL)::info = re::ecs2::introspect_StateMachineSystem(0);
      v25 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v25[117] + 32);
  v26 = &unk_1EE187000;
  {
    v26 = &unk_1EE187000;
    if (v71)
    {
      re::introspect<re::ecs2::SkeletalPosePreparationSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPosePreparationSystem(0);
      v26 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v26[64] + 32);
  v27 = &unk_1EE187000;
  {
    v27 = &unk_1EE187000;
    if (v72)
    {
      re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info = re::ecs2::introspect_AnimationUpdateSystem(0);
      v27 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v27[99] + 32);
  v28 = &unk_1EE187000;
  {
    v28 = &unk_1EE187000;
    if (v73)
    {
      re::introspect<re::ecs2::AnimationSystem>(BOOL)::info = re::ecs2::introspect_AnimationSystem(0);
      v28 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v28[150] + 32);
  v29 = &unk_1EE187000;
  {
    v29 = &unk_1EE187000;
    if (v74)
    {
      re::introspect<re::ecs2::TextSystem>(BOOL)::info = re::ecs2::introspect_TextSystem(0);
      v29 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v29[165] + 32);
  v30 = &unk_1EE187000;
  {
    v30 = &unk_1EE187000;
    if (v75)
    {
      re::introspect<re::ecs2::RemoteEffectsSystem>(BOOL)::info = re::ecs2::introspect_RemoteEffectsSystem(0);
      v30 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v30[111] + 32);
  v31 = &unk_1EE187000;
  {
    v31 = &unk_1EE187000;
    if (v76)
    {
      re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::ecs2::introspect_PhysicsSystem(0);
      v31 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v31[158] + 32);
  v32 = &unk_1EE187000;
  {
    v32 = &unk_1EE187000;
    if (v77)
    {
      re::introspect<re::ecs2::PhysicsDebugSystem>(BOOL)::info = re::ecs2::introspect_PhysicsDebugSystem(0);
      v32 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v32[123] + 32);
  v33 = &unk_1EE187000;
  {
    v33 = &unk_1EE187000;
    if (v78)
    {
      re::introspect<re::ecs2::TransformSystem>(BOOL)::info = re::ecs2::introspect_TransformSystem(0);
      v33 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v33[145] + 32);
  v34 = &unk_1EE187000;
  {
    v34 = &unk_1EE187000;
    if (v79)
    {
      re::introspect<re::ecs2::RayCastSystem>(BOOL)::info = re::ecs2::introspect_RayCastSystem(0);
      v34 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v34[156] + 32);
  v35 = &unk_1EE187000;
  {
    v35 = &unk_1EE187000;
    if (v80)
    {
      re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info = re::ecs2::introspect_MaterialOverrideSystem(0);
      v35 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v35[92] + 32);
  v36 = &unk_1EE187000;
  {
    v36 = &unk_1EE187000;
    if (v81)
    {
      re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info = re::ecs2::introspect_MaterialParameterBlockArraySystem(0);
      v36 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v36[60] + 32);
  v37 = &unk_1EE187000;
  {
    v37 = &unk_1EE187000;
    if (v82)
    {
      re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info = re::ecs2::introspect_MaterialParametersSystem(0);
      v37 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v37[75] + 32);
  v38 = &unk_1EE187000;
  {
    v38 = &unk_1EE187000;
    if (v83)
    {
      re::introspect<re::ecs2::IKParametersSystem>(BOOL)::info = re::ecs2::introspect_IKParametersSystem(0);
      v38 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v38[124] + 32);
  v39 = &unk_1EE187000;
  {
    v39 = &unk_1EE187000;
    if (v84)
    {
      re::introspect<re::ecs2::RigSystem>(BOOL)::info = re::ecs2::introspect_RigSystem(0);
      v39 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v39[52] + 32);
  v40 = &unk_1EE187000;
  {
    v40 = &unk_1EE187000;
    if (v85)
    {
      re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPoseSystem(0);
      v40 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v40[119] + 32);
  v41 = &unk_1EE187000;
  {
    v41 = &unk_1EE187000;
    if (v86)
    {
      re::introspect<re::ecs2::MeshDeformationSystem>(BOOL)::info = re::ecs2::introspect_MeshDeformationSystem(0);
      v41 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v41[97] + 32);
  v42 = &unk_1EE187000;
  {
    v42 = &unk_1EE187000;
    if (v87)
    {
      re::introspect<re::ecs2::BlendShapeWeightsSystem>(BOOL)::info = re::ecs2::introspect_BlendShapeWeightsSystem(0);
      v42 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v42[85] + 32);
  if ((atomic_load_explicit(&qword_1EE1A8150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8150))
  {
    _MergedGlobals_247 = re::ecs2::introspect_AnimationLibrarySystem(0);
    __cxa_guard_release(&qword_1EE1A8150);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), _MergedGlobals_247 + 32);
  v43 = &unk_1EE187000;
  {
    v43 = &unk_1EE187000;
    if (v88)
    {
      re::introspect<re::ecs2::GroundPlaneSystem>(BOOL)::info = re::ecs2::introspect_GroundPlaneSystem(0);
      v43 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v43[131] + 32);
  v44 = &unk_1EE187000;
  {
    v44 = &unk_1EE187000;
    if (v89)
    {
      re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info = re::ecs2::introspect_VideoComponentSystem(0);
      v44 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v44[101] + 32);
  v45 = &unk_1EE187000;
  {
    v45 = &unk_1EE187000;
    if (v90)
    {
      re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info = re::ecs2::introspect_ImagePresentationSystem(0);
      v45 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v45[83] + 32);
  v46 = &unk_1EE187000;
  {
    v46 = &unk_1EE187000;
    if (v91)
    {
      re::introspect<re::ecs2::SpatialMediaSystem>(BOOL)::info = re::ecs2::introspect_SpatialMediaSystem(0);
      v46 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v46[118] + 32);
  v47 = &unk_1EE187000;
  {
    v47 = &unk_1EE187000;
    if (v92)
    {
      re::introspect<re::ecs2::UISystem>(BOOL)::info = re::ecs2::introspect_UISystem(0);
      v47 = &unk_1EE187000;
    }
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), v47[55] + 32);
  v97 = *(a1 + 24);
  v98 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v96, a1);
  re::ecs2::PerformDeformationsSystem::addDeformerSubsystemsUsingLambda(v96);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v96);
  if (a2)
  {
    v94 = *(a1 + 24);
    v95 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v93, a1);
    re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(v93, 0);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v93);
  }

  {
    re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info = re::ecs2::introspect_AudioUpdateSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info = re::ecs2::introspect_AudioSessionSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioControlSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info = re::ecs2::introspect_AudioPlayerSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info = re::ecs2::introspect_AudioAnimationSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioTetherSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info = re::ecs2::introspect_AudioMixerSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::ReverbSystem>(BOOL)::info = re::ecs2::introspect_ReverbSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::ReverbSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info = re::ecs2::introspect_AcousticMeshSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info = re::ecs2::introspect_AudioGroupPlaybackSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info = re::ecs2::introspect_SpatialSceneClassificationSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::ListenerSystem>(BOOL)::info = re::ecs2::introspect_ListenerSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::ListenerSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info = re::ecs2::introspect_AudioDebugSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info + 32);
  {
    re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info = re::ecs2::introspect_NetworkSendSystem(0);
  }

  (*(**(a1 + 32) + 16))(*(a1 + 32), re::introspect<re::ecs2::NetworkSendSystem>(BOOL)::info + 32);
  if ((atomic_load_explicit(&qword_1EE1A8160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8160))
  {
    qword_1EE1A8158 = re::ecs2::introspect_AdaptiveResolutionSystem(0);
    __cxa_guard_release(&qword_1EE1A8160);
  }

  return (*(**(a1 + 32) + 16))(*(a1 + 32), qword_1EE1A8158 + 32);
}

re *re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(re *this, re::ecs2::Scene *a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (this)
  {
    v2 = this;
    v3 = re::globalAllocators(this)[2];
    v4[0] = &unk_1F5CF01A0;
    v4[1] = v2;
    v4[3] = v3;
    v4[4] = v4;
    return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v4);
  }

  return this;
}

re *re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re *result, uint64_t a2, unsigned __int8 *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v5 = result;
    v6 = re::globalAllocators(result)[2];
    v10[2] = a2;
    v11 = v6;
    v10[0] = &unk_1F5CF01F8;
    v10[1] = v5;
    v12 = v10;
    v7 = *a3;
    if (v7 == 1)
    {
      {
        re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info = re::ecs2::introspect_ProtectionOptionsSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SceneSystem>(BOOL)::info = re::ecs2::introspect_SceneSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::SceneSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MXISystem>(BOOL)::info = re::ecs2::introspect_MXISystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MXISystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info = re::ecs2::introspect_MeshSceneSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info + 32);
      v9 = &unk_1EE187000;
      {
        re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info = re::ecs2::introspect_MaterialOverrideSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info = re::ecs2::introspect_MaterialParameterBlockArraySystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info = re::ecs2::introspect_MaterialParametersSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info = re::ecs2::introspect_ImagePresentationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info + 32);
      v17 = v11;
      v18 = 0;
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v16, v10);
      re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(v16, *a3);
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v16);
    }

    else
    {
      {
        re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info = re::ecs2::introspect_ProtectionOptionsSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::ProtectionOptionsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SceneSystem>(BOOL)::info = re::ecs2::introspect_SceneSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::SceneSystem>(BOOL)::info + 32);
      if ((*(a3 + 2) & 0x104) != 0)
      {
        {
          re::introspect<re::ecs2::TimebaseSystem>(BOOL)::info = re::ecs2::introspect_TimebaseSystem(0);
        }

        (*(*v12 + 16))(v12, re::introspect<re::ecs2::TimebaseSystem>(BOOL)::info + 32);
      }

      {
        re::introspect<re::ecs2::DeferredActivationSystem>(BOOL)::info = re::ecs2::introspect_DeferredActivationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::DeferredActivationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::LoadTraceSystem>(BOOL)::info = re::ecs2::introspect_LoadTraceSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::LoadTraceSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::NetworkAssetComponentSystem>(BOOL)::info = re::ecs2::introspect_NetworkAssetComponentSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::NetworkAssetComponentSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AssetMutateTrackingSystem>(BOOL)::info = re::ecs2::introspect_AssetMutateTrackingSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AssetMutateTrackingSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::CameraMovementSystem>(BOOL)::info = re::ecs2::introspect_CameraMovementSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::CameraMovementSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveBoxSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveBoxSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveBoxWithRoundedCornersSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveBoxWithRoundedCornersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveCapsuleSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCapsuleSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveCapsuleSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveConeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveConeSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveConeSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveCylinderSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveCylinderSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveCylinderSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitivePlaneSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePlaneSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitivePlaneSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitivePyramidSystem>(BOOL)::info = re::ecs2::introspect_PrimitivePyramidSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitivePyramidSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveSphereSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveSphereSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveSphereSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveTetrahedronSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTetrahedronSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveTetrahedronSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PrimitiveTubeSystem>(BOOL)::info = re::ecs2::introspect_PrimitiveTubeSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PrimitiveTubeSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MXISystem>(BOOL)::info = re::ecs2::introspect_MXISystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MXISystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::Static3DTextSystem>(BOOL)::info = re::ecs2::introspect_Static3DTextSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::Static3DTextSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info = re::ecs2::introspect_MeshSceneSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MeshSceneSystem>(BOOL)::info + 32);
      v9 = &unk_1EE187000;
      {
        re::introspect<re::ecs2::StateMachineSystem>(BOOL)::info = re::ecs2::introspect_StateMachineSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::StateMachineSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SkeletalPosePreparationSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPosePreparationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::SkeletalPosePreparationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info = re::ecs2::introspect_AnimationUpdateSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AnimationUpdateSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AnimationSystem>(BOOL)::info = re::ecs2::introspect_AnimationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AnimationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::TextSystem>(BOOL)::info = re::ecs2::introspect_TextSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::TextSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::RemoteEffectsSystem>(BOOL)::info = re::ecs2::introspect_RemoteEffectsSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::RemoteEffectsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info = re::ecs2::introspect_PhysicsSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PhysicsSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::PhysicsDebugSystem>(BOOL)::info = re::ecs2::introspect_PhysicsDebugSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::PhysicsDebugSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::TransformSystem>(BOOL)::info = re::ecs2::introspect_TransformSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::TransformSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::RayCastSystem>(BOOL)::info = re::ecs2::introspect_RayCastSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::RayCastSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info = re::ecs2::introspect_MaterialOverrideSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MaterialOverrideSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info = re::ecs2::introspect_MaterialParameterBlockArraySystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MaterialParameterBlockArraySystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info = re::ecs2::introspect_MaterialParametersSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MaterialParametersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::IKParametersSystem>(BOOL)::info = re::ecs2::introspect_IKParametersSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::IKParametersSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::RigSystem>(BOOL)::info = re::ecs2::introspect_RigSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::RigSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info = re::ecs2::introspect_SkeletalPoseSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::SkeletalPoseSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::MeshDeformationSystem>(BOOL)::info = re::ecs2::introspect_MeshDeformationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::MeshDeformationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::BlendShapeWeightsSystem>(BOOL)::info = re::ecs2::introspect_BlendShapeWeightsSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::BlendShapeWeightsSystem>(BOOL)::info + 32);
      if ((atomic_load_explicit(&qword_1EE1A8150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8150))
      {
        _MergedGlobals_247 = re::ecs2::introspect_AnimationLibrarySystem(0);
        __cxa_guard_release(&qword_1EE1A8150);
      }

      (*(*v12 + 16))(v12, _MergedGlobals_247 + 32);
      {
        re::introspect<re::ecs2::GroundPlaneSystem>(BOOL)::info = re::ecs2::introspect_GroundPlaneSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::GroundPlaneSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info = re::ecs2::introspect_VideoComponentSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info = re::ecs2::introspect_ImagePresentationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::ImagePresentationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SpatialMediaSystem>(BOOL)::info = re::ecs2::introspect_SpatialMediaSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::SpatialMediaSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::UISystem>(BOOL)::info = re::ecs2::introspect_UISystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::UISystem>(BOOL)::info + 32);
      v17 = v11;
      v18 = 0;
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v16, v10);
      re::ecs2::PerformDeformationsSystem::addDeformerSubsystemsUsingLambda(v16);
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v16);
      v14 = v11;
      v15 = 0;
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v13, v10);
      re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(v13, 0);
      re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v13);
      {
        re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info = re::ecs2::introspect_AudioUpdateSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioUpdateSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info = re::ecs2::introspect_AudioSessionSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioSessionSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioControlSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::VideoAudioControlSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info = re::ecs2::introspect_AudioPlayerSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioPlayerSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info = re::ecs2::introspect_AudioAnimationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioAnimationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info = re::ecs2::introspect_VideoAudioTetherSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::VideoAudioTetherSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info = re::ecs2::introspect_AudioMixerSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioMixerSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ReverbSystem>(BOOL)::info = re::ecs2::introspect_ReverbSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::ReverbSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info = re::ecs2::introspect_AcousticMeshSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AcousticMeshSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info = re::ecs2::introspect_AudioGroupPlaybackSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioGroupPlaybackSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info = re::ecs2::introspect_SpatialSceneClassificationSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::SpatialSceneClassificationSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::ListenerSystem>(BOOL)::info = re::ecs2::introspect_ListenerSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::ListenerSystem>(BOOL)::info + 32);
      {
        re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info = re::ecs2::introspect_AudioDebugSystem(0);
      }

      (*(*v12 + 16))(v12, re::introspect<re::ecs2::AudioDebugSystem>(BOOL)::info + 32);
    }

    {
      {
        v9[139] = re::ecs2::introspect_FrameReuseSystem(0);
      }
    }

    (*(*v12 + 16))(v12, v9[139] + 32);
    return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v10);
  }

  return result;
}

re::ecs2::Entity *re::ecs2::ComponentHelper::privateSceneDataEntity(re::ecs2::ComponentHelper *this, re::ecs2::Scene *a2)
{
  v2 = a2;
  v3 = this;
  v4 = *(this + 13);
  v5 = *(v4 + 344);
  if (v5)
  {
    v6 = *(v4 + 360);
    v7 = 8 * v5;
    while (1)
    {
      v8 = *v6;
      if ((*(*v6 + 36) ^ 0x4B834A2ABFA269B4uLL) <= 1)
      {
        this = *(v8 + 37);
        if (this == "com.apple.RealityKit.PrivateSceneData")
        {
          break;
        }

        this = strcmp(this, "com.apple.RealityKit.PrivateSceneData");
        if (!this)
        {
          break;
        }
      }

      ++v6;
      v7 -= 8;
      if (!v7)
      {
        goto LABEL_7;
      }
    }
  }

  else
  {
LABEL_7:
    v8 = 0;
  }

  if (!v8)
  {
    if (v2)
    {
      v9 = re::ecs2::EntityFactory::instance(this);
      re::ecs2::EntityFactory::make(v9, 4uLL, &v13);
      v10 = v13;
      v12[0] = 0x4B834A2ABFA269B4;
      v12[1] = "com.apple.RealityKit.PrivateSceneData";
      re::StringID::operator=(v13 + 36, v12);
      *(v10 + 76) |= 0x400u;
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(v3 + 13) + 320), &v13);
      v8 = v13;
      if (v13)
      {
      }
    }
  }

  return v8;
}

re::ecs2::Entity *makeSceneDataEntity(uint64_t a1, uint64_t a2, int a3, void *a4, int a5)
{
  if (*a2 == 1)
  {
    v10 = *(a2 + 8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 104);
  v12 = *(v11 + 344);
  if (v12)
  {
    v13 = *(v11 + 360);
    v14 = 8 * v12;
    while (1)
    {
      v15 = *v13;
      if (re::StringID::operator==((*v13 + 288), a4))
      {
        v16 = *(v15 + 216);
        if (!v16)
        {
          v16 = re::ecs2::EntityComponentCollection::add((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v17 = *(v16 + 32) ? RESyncableGetOwnerPeerID() : *(v16 + 64);
        if (v17 == v10)
        {
          return *v13;
        }
      }

      ++v13;
      v14 -= 8;
      if (!v14)
      {
        goto LABEL_14;
      }
    }
  }

  else
  {
    if (!a3)
    {
      return 0;
    }

LABEL_14:
    v18 = *(a1 + 56);
    if (v18)
    {
      v19 = (*(*v18 + 32))(v18);
      v18 = re::ServiceLocator::serviceOrNull<re::NetworkSystem>(v19);
      if (v18)
      {
        v18 = *(v18 + 303);
        if (v18)
        {
          v18 = RESyncNetSessionPeerID();
        }
      }
    }

    if (*a2 != 1 || *(a2 + 8) == v18)
    {
      v20 = re::ecs2::EntityFactory::instance(v18);
      re::ecs2::EntityFactory::make(v20, 4uLL, &v27);
      v21 = v27;
      v22 = a4[1];
      v26[0] = 2 * *a4;
      v26[1] = v22;
      re::StringID::operator=(v27 + 36, v26);
      *(v21 + 76) |= 0x400u;
      v23 = *(v21 + 27);
      if (!v23)
      {
        v23 = re::ecs2::EntityComponentCollection::add((v21 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::ecs2::NetworkComponent::setNetworkShareMode(v23, a5);
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((*(a1 + 104) + 320), &v27);
      v24 = v27;
      if (v27)
      {
      }
    }

    else
    {
      return 0;
    }
  }

  return v24;
}

uint64_t re::ecs2::ComponentHelper::findAssetHandles(uint64_t result, uint64_t a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v2 = *(result + 72);
  if (v2)
  {
    v4 = *(result + 88);
    v5 = 8 * v2;
    do
    {
      v6 = *v4++;
      v7 = (*(*v6 + 5))(v6);
      v8 = (*(*v7 + 48))(v7);
      std::__function::__value_func<void ()(re::AssetHandle *)>::__value_func[abi:nn200100](v9, a2);
      v10[0] = &unk_1F5CB9490;
      v10[1] = v9;
      v10[3] = v10;
      re::IntrospectionWalker::walk(v8, v6, v10);
      std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v10);
      result = std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v9);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

uint64_t re::ecs2::ComponentHelper::addToLoadRequest(re::ecs2::ComponentHelper *this, re::AssetLoadRequest *a2, re::ecs2::Entity *a3)
{
  v3 = a3;
  v12[4] = *MEMORY[0x1E69E9840];
  v12[0] = &unk_1F5CF0250;
  v12[1] = this;
  v12[3] = v12;
  re::ecs2::ComponentHelper::findAssetHandles(a2, v12);
  result = std::__function::__value_func<void ()(re::AssetHandle *)>::~__value_func[abi:nn200100](v12);
  if (v3)
  {
    v8 = *(a2 + 43);
    if (v8)
    {
      v9 = *(a2 + 45);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        result = re::ecs2::ComponentHelper::addToLoadRequest(this, v11, 1, v7);
        v10 -= 8;
      }

      while (v10);
    }
  }

  return result;
}

void re::ecs2::ComponentHelper::getComponentsWithoutAnyExplicitRealityFileSerializationFlag(re::ecs2::ComponentHelper *this@<X0>, uint64_t a2@<X8>)
{
  v3 = re::ecs2::ComponentTypeRegistry::instance(this);
  v4 = *(v3 + 24);
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      v6 = re::ecs2::ComponentTypeRegistry::instance(v3);
      v3 = re::ecs2::ComponentTypeRegistry::operator[](v6, i);
      if ((*(v3 + 40) & 7 ^ ((*(v3 + 40) & 7u) - 1)) <= (*(v3 + 40) & 7u) - 1)
      {
        v7 = re::ecs2::ComponentTypeRegistry::instance(v3);
        v8 = re::ecs2::ComponentTypeRegistry::operator[](v7, i);
        re::StringID::StringID(&v9, (v8 + 24));
        v3 = re::DynamicArray<re::StringID>::add(a2, &v9);
        if (*&v9.var0)
        {
          if (*&v9.var0)
          {
          }
        }
      }
    }
  }
}

uint64_t re::ecs2::ComponentTypeRegistry::operator[](uint64_t a1, unint64_t a2)
{
  if (*(a1 + 24) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(a1 + 40) + 8 * a2);
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(re::TypeID const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v5 = (*(*v4 + 40))(v4);
  v6 = re::ecs2::SystemRegistry::registerSystem(v5, a2);
  v7 = *(a1 + 16);
  v8 = *(*v4 + 48);

  return v8(v4, v6, 0xFFFFFFFFLL, v7);
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(re::TypeID const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0138;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>)::$_0,void ()(re::TypeID const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0138;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(re::ecs2::Scene *)::$_0,void ()(re::TypeID const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF01A0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::ecs2::ComponentHelper::deprecatedAddDefaultSystems(re::ecs2::Scene *)::$_0,void ()(re::TypeID const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF01A0;
  a2[1] = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>,re::EngineConfiguration const&)::$_0,void ()(re::TypeID const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v4 = (*(**(a1 + 8) + 40))(*(a1 + 8));
  v5 = *(a1 + 8);
  v6 = re::ecs2::SystemRegistry::registerSystem(v4, a2);
  v7 = *(a1 + 16);
  v8 = *(*v5 + 48);

  return v8(v5, v6, 0xFFFFFFFFLL, v7);
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>,re::EngineConfiguration const&)::$_0,void ()(re::TypeID const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF01F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ComponentHelper::addRealityRendererDefaultSystems(re::ecs2::ECSService *,re::DataArrayHandle<re::ecs2::SceneGroup>,re::EngineConfiguration const&)::$_0,void ()(re::TypeID const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF01F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t std::__function::__value_func<void ()(re::AssetHandle *)>::__value_func[abi:nn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0,std::allocator<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0>,void ()(re::AssetHandle *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF0250;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0,std::allocator<re::ecs2::ComponentHelper::addToLoadRequest(re::AssetLoadRequest &,re::ecs2::Entity &,BOOL)::$_0>,void ()(re::AssetHandle *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::allocInfo_MXIService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_248, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_248))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8170, "MXIService");
    __cxa_guard_release(&_MergedGlobals_248);
  }

  return &unk_1EE1A8170;
}

void re::initInfo_MXIService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xF0381D49EB1AELL;
  v6[1] = "MXIService";
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
  *(this + 8) = &re::initInfo_MXIService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::MXIManager::MXIManager(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CF02D0;
  *(a1 + 8) = 1;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 52) = 0x7FFFFFFFLL;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = xmmword_1E3047670;
  *(a1 + 144) = xmmword_1E3047680;
  *(a1 + 160) = xmmword_1E30476A0;
  *(a1 + 176) = xmmword_1E30474D0;
  *(a1 + 192) = 9999999;
  *(a1 + 234) = 0;
  *(a1 + 236) = 0;
  *(a1 + 238) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 264) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 288) = 0;
  *(a1 + 296) = 0;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 314) = 0;
  *(a1 + 316) = 0;
  *(a1 + 324) = 0;
  *(a1 + 326) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 348) = 0;
  *(a1 + 356) = 0;
  *(a1 + 364) = 0;
  *(a1 + 372) = 0;
  *(a1 + 380) = 0;
  *(a1 + 388) = 0;
  *(a1 + 396) = 0;
  *(a1 + 404) = 0;
  *(a1 + 412) = 0;
  *(a1 + 420) = 0;
  *(a1 + 428) = 0;
  *(a1 + 436) = 0;
  *(a1 + 444) = 0;
  *(a1 + 452) = 0;
  *(a1 + 460) = 0;
  *(a1 + 468) = 0;
  *(a1 + 476) = 0;
  *(a1 + 484) = 0;
  *(a1 + 492) = 0;
  *(a1 + 500) = 0;
  *(a1 + 508) = 0;
  *(a1 + 516) = 0;
  *(a1 + 520) = 0;
  *(a1 + 528) = 0;
  *(a1 + 208) = 0;
  v4 = (a1 + 208);
  *(a1 + 568) = 0;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 572) = 0x7FFFFFFFLL;
  *(a1 + 616) = 0;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 620) = 0x7FFFFFFFLL;
  *(a1 + 1192) = 0;
  *(a1 + 1199) = 0;
  bzero((a1 + 632), 0x22CuLL);
  *(v4 - 1) = a2;
  v5 = re::ServiceLocator::serviceOrNull<re::AssetService>(a2);
  if (v5)
  {
    *v4 = v5;
  }

  *(a1 + 216) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 224) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  re::MXIManager::reloadDebugOverrides(a1);
  return a1;
}

void re::MXIManager::reloadDebugOverrides(re::MXIManager *this)
{
  v2 = *re::mxiLogObjects(this);
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&dword_1E1C61000, v2, OS_LOG_TYPE_INFO, "[MXIManager] Reloading MXI-specific debug overrides", buf, 2u);
  }

  re::Defaults::BOOLValue("MXIDefaultsUpdateEveryFrame", v3, buf);
  if (*(this + 232))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 232) = 0;
      goto LABEL_9;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_9;
    }

    *(this + 232) = 1;
  }

  *(this + 233) = buf[1];
LABEL_9:
  re::Defaults::BOOLValue("MXIEnableTwoPass", v4, buf);
  if (*(this + 234))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 234) = 0;
      goto LABEL_15;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_15;
    }

    *(this + 234) = 1;
  }

  *(this + 235) = buf[1];
LABEL_15:
  re::Defaults::BOOLValue("MXIDoReprojection", v5, buf);
  if (*(this + 236))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 236) = 0;
      goto LABEL_21;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_21;
    }

    *(this + 236) = 1;
  }

  *(this + 237) = buf[1];
LABEL_21:
  re::Defaults::BOOLValue("MXIUseProxyRendering", v6, buf);
  if (*(this + 238))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 238) = 0;
      goto LABEL_27;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_27;
    }

    *(this + 238) = 1;
  }

  *(this + 239) = buf[1];
LABEL_27:
  re::Defaults::floatValue("MXIResolutionScale", v7, buf);
  if (*(this + 240))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 240) = 0;
      goto LABEL_33;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_33;
    }

    *(this + 240) = 1;
  }

  *(this + 61) = v56;
LABEL_33:
  re::Defaults::intValue("MXIFramesPerRender", v8, buf);
  if (*(this + 248))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 248) = 0;
      goto LABEL_39;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_39;
    }

    *(this + 248) = 1;
  }

  *(this + 63) = v56;
LABEL_39:
  re::Defaults::floatValue("MXIKeepReprojectingThreshold", v9, buf);
  if (*(this + 256))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 256) = 0;
      goto LABEL_45;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_45;
    }

    *(this + 256) = 1;
  }

  *(this + 65) = v56;
LABEL_45:
  re::Defaults::floatValue("MXIDepthEdgeThreshold", v10, buf);
  if (*(this + 272))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 272) = 0;
      goto LABEL_51;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_51;
    }

    *(this + 272) = 1;
  }

  *(this + 69) = v56;
LABEL_51:
  re::Defaults::floatValue("MXIExpandedRegionMultiplier", v11, buf);
  if (*(this + 280))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 280) = 0;
      goto LABEL_57;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_57;
    }

    *(this + 280) = 1;
  }

  *(this + 71) = v56;
LABEL_57:
  re::Defaults::floatValue("MXIVertexMotionThreshold", v12, buf);
  if (*(this + 288))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 288) = 0;
      goto LABEL_63;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_63;
    }

    *(this + 288) = 1;
  }

  *(this + 73) = v56;
LABEL_63:
  re::Defaults::intValue("MXIWidthSegmentsOverride", v13, buf);
  if (*(this + 296))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 296) = 0;
      goto LABEL_69;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_69;
    }

    *(this + 296) = 1;
  }

  *(this + 75) = v56;
LABEL_69:
  re::Defaults::intValue("MXIHeightSegmentsOverride", v14, buf);
  if (*(this + 304))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 304) = 0;
      goto LABEL_75;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_75;
    }

    *(this + 304) = 1;
  }

  *(this + 77) = v56;
LABEL_75:
  re::Defaults::BOOLValue("MXIDebugTintNearFarRectangles", v15, buf);
  if (*(this + 312))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 312) = 0;
      goto LABEL_81;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_81;
    }

    *(this + 312) = 1;
  }

  *(this + 313) = buf[1];
LABEL_81:
  re::Defaults::floatValue("MXINearPlaneSizeScalar", v16, buf);
  if (*(this + 316))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 316) = 0;
      goto LABEL_87;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_87;
    }

    *(this + 316) = 1;
  }

  *(this + 80) = v56;
LABEL_87:
  re::Defaults::BOOLValue("MXIEnableBillboard", v17, buf);
  if (*(this + 324))
  {
    if ((buf[0] & 1) == 0)
    {
      *(this + 324) = 0;
      goto LABEL_93;
    }
  }

  else
  {
    if ((buf[0] & 1) == 0)
    {
      goto LABEL_93;
    }

    *(this + 324) = 1;
  }

  *(this + 325) = buf[1];
LABEL_93:
  if (*(this + 326) == 1)
  {
    *(this + 326) = 0;
  }

  re::Defaults::intValue("MXIBillboardPolicy", v18, buf);
  if (buf[0] == 1)
  {
    v20 = v56;
    if ((*(this + 326) & 1) == 0)
    {
      *(this + 326) = 1;
    }

    *(this + 327) = v20;
  }

  re::Defaults::floatValue("MXIBillboardPolicyAbsoluteMaxAllowedAngle", v19, v53);
  if (*(this + 328))
  {
    if ((v53[0] & 1) == 0)
    {
      *(this + 328) = 0;
      goto LABEL_105;
    }
  }

  else
  {
    if ((v53[0] & 1) == 0)
    {
      goto LABEL_105;
    }

    *(this + 328) = 1;
  }

  *(this + 83) = v54;
LABEL_105:
  re::Defaults::floatValue("MXIBillboardPolicyRelativeMaxAllowedAngle", v21, v53);
  if (*(this + 336))
  {
    if ((v53[0] & 1) == 0)
    {
      *(this + 336) = 0;
      goto LABEL_111;
    }
  }

  else
  {
    if ((v53[0] & 1) == 0)
    {
      goto LABEL_111;
    }

    *(this + 336) = 1;
  }

  *(this + 85) = v54;
LABEL_111:
  if (*(this + 344) == 1)
  {
    *(this + 344) = 0;
  }

  re::Defaults::intValue("MXIBillboardActivationFunction", v22, v53);
  if (v53[0] == 1)
  {
    v24 = v54;
    if ((*(this + 344) & 1) == 0)
    {
      *(this + 344) = 1;
    }

    *(this + 345) = v24;
  }

  re::Defaults::floatValue("MXIBillboardActivationFunctionSmoothPlusScale", v23, &v50);
  if (*(this + 348))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 348) = 0;
      goto LABEL_123;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_123;
    }

    *(this + 348) = 1;
  }

  *(this + 88) = v52;
LABEL_123:
  re::Defaults::floatValue("MXITreatmentCompositingMixBegin", v25, &v50);
  if (*(this + 356))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 356) = 0;
      goto LABEL_129;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_129;
    }

    *(this + 356) = 1;
  }

  *(this + 90) = v52;
LABEL_129:
  re::Defaults::floatValue("MXITreatmentCompositingMixEnd", v26, &v50);
  if (*(this + 364))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 364) = 0;
      goto LABEL_135;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_135;
    }

    *(this + 364) = 1;
  }

  *(this + 92) = v52;
LABEL_135:
  re::Defaults::floatValue("MXITreatmentCompositingMixCornerRadius", v27, &v50);
  if (*(this + 372))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 372) = 0;
      goto LABEL_141;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_141;
    }

    *(this + 372) = 1;
  }

  *(this + 94) = v52;
LABEL_141:
  re::Defaults::uintValue("MXITreatmentCompositingMixStepFunction", v28, &v50);
  if (*(this + 380))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 380) = 0;
      goto LABEL_147;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_147;
    }

    *(this + 380) = 1;
  }

  *(this + 96) = v52;
LABEL_147:
  re::Defaults::floatValue("MXITreatmentNearFalloffBegin", v29, &v50);
  if (*(this + 388))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 388) = 0;
      goto LABEL_153;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_153;
    }

    *(this + 388) = 1;
  }

  *(this + 98) = v52;
LABEL_153:
  re::Defaults::floatValue("MXITreatmentNearFalloffEnd", v30, &v50);
  if (*(this + 396))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 396) = 0;
      goto LABEL_159;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_159;
    }

    *(this + 396) = 1;
  }

  *(this + 100) = v52;
LABEL_159:
  re::Defaults::floatValue("MXITreatmentNearFalloffCornerRadius", v31, &v50);
  if (*(this + 404))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 404) = 0;
      goto LABEL_165;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_165;
    }

    *(this + 404) = 1;
  }

  *(this + 102) = v52;
LABEL_165:
  re::Defaults::uintValue("MXITreatmentNearFalloffStepFunction", v32, &v50);
  if (*(this + 412))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 412) = 0;
      goto LABEL_171;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_171;
    }

    *(this + 412) = 1;
  }

  *(this + 104) = v52;
LABEL_171:
  re::Defaults::floatValue("MXITreatmentSpillFalloffBegin", v33, &v50);
  if (*(this + 420))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 420) = 0;
      goto LABEL_177;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_177;
    }

    *(this + 420) = 1;
  }

  *(this + 106) = v52;
LABEL_177:
  re::Defaults::floatValue("MXITreatmentSpillFalloffEnd", v34, &v50);
  if (*(this + 428))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 428) = 0;
      goto LABEL_183;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_183;
    }

    *(this + 428) = 1;
  }

  *(this + 108) = v52;
LABEL_183:
  re::Defaults::floatValue("MXITreatmentSpillFalloffCornerRadius", v35, &v50);
  if (*(this + 436))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 436) = 0;
      goto LABEL_189;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_189;
    }

    *(this + 436) = 1;
  }

  *(this + 110) = v52;
LABEL_189:
  re::Defaults::uintValue("MXITreatmentSpillFalloffStepFunction", v36, &v50);
  if (*(this + 444))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 444) = 0;
      goto LABEL_195;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_195;
    }

    *(this + 444) = 1;
  }

  *(this + 112) = v52;
LABEL_195:
  re::Defaults::uintValue("MXITreatmentSpillColorSampleMode", v37, &v50);
  if (*(this + 452))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 452) = 0;
      goto LABEL_201;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_201;
    }

    *(this + 452) = 1;
  }

  *(this + 114) = v52;
LABEL_201:
  re::Defaults::floatValue("MXITreatmentEnableGlowrayStarburstMitigation", v38, &v50);
  if (*(this + 460))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 460) = 0;
      goto LABEL_207;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_207;
    }

    *(this + 460) = 1;
  }

  *(this + 116) = v52;
LABEL_207:
  re::Defaults::uintValue("mxi.headboxShape", v39, &v50);
  if (*(this + 468))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 468) = 0;
      goto LABEL_213;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_213;
    }

    *(this + 468) = 1;
  }

  *(this + 118) = v52;
LABEL_213:
  re::Defaults::floatValue("mxi.headboxMaxDisparity", v40, &v50);
  if (*(this + 476))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 476) = 0;
      goto LABEL_219;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_219;
    }

    *(this + 476) = 1;
  }

  *(this + 120) = v52;
LABEL_219:
  re::Defaults::uintValue("mxi.headboxMaxErrorMarginInPixels", v41, &v50);
  if (*(this + 484))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 484) = 0;
      goto LABEL_225;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_225;
    }

    *(this + 484) = 1;
  }

  *(this + 122) = v52;
LABEL_225:
  re::Defaults::floatValue("mxi.headboxMinimumRadius", v42, &v50);
  if (*(this + 492))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 492) = 0;
      goto LABEL_231;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_231;
    }

    *(this + 492) = 1;
  }

  *(this + 124) = v52;
LABEL_231:
  re::Defaults::floatValue("mxi.headboxMinimumForwardDistance", v43, &v50);
  if (*(this + 500))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 500) = 0;
      goto LABEL_237;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_237;
    }

    *(this + 500) = 1;
  }

  *(this + 126) = v52;
LABEL_237:
  re::Defaults::floatValue("mxi.headboxMinimumBackwardDistance", v44, &v50);
  if (*(this + 508))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 508) = 0;
      goto LABEL_243;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_243;
    }

    *(this + 508) = 1;
  }

  *(this + 128) = v52;
LABEL_243:
  re::Defaults::BOOLValue("mxi.headboxEnableAdaptiveScaling", v45, &v50);
  if (*(this + 516))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 516) = 0;
      goto LABEL_249;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_249;
    }

    *(this + 516) = 1;
  }

  *(this + 517) = v51;
LABEL_249:
  re::Defaults::floatValue("mxi.headboxShearStrength", v46, &v50);
  if (*(this + 520))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 520) = 0;
      goto LABEL_255;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_255;
    }

    *(this + 520) = 1;
  }

  *(this + 131) = v52;
LABEL_255:
  re::Defaults::floatValue("mxi.headboxDynamicShearStrength", v47, &v50);
  if (*(this + 528))
  {
    if ((v50 & 1) == 0)
    {
      *(this + 528) = 0;
      goto LABEL_261;
    }
  }

  else
  {
    if ((v50 & 1) == 0)
    {
      goto LABEL_261;
    }

    *(this + 528) = 1;
  }

  *(this + 133) = v52;
LABEL_261:
  re::Defaults::BOOLValue("mxi.enablePerFrameDebugLog", v48, &v50);
  if (v50)
  {
    v49 = v51;
  }

  else
  {
    v49 = 0;
  }

  *(this + 1202) = v49;
}

void re::MXIManager::~MXIManager(re::MXIManager *this)
{
  *(this + 25) = 0;
  *(this + 26) = 0;
  re::DynamicArray<re::AssetHandle>::deinit(this + 1160);
  re::AssetHandle::~AssetHandle((this + 1136));
  re::AssetHandle::~AssetHandle((this + 1112));
  re::AssetHandle::~AssetHandle((this + 1088));
  re::AssetHandle::~AssetHandle((this + 1064));
  re::AssetHandle::~AssetHandle((this + 1040));
  for (i = 1016; i != 824; i -= 24)
  {
    re::AssetHandle::~AssetHandle((this + i));
  }

  re::AssetHandle::~AssetHandle((this + 824));
  re::AssetHandle::~AssetHandle((this + 800));
  re::AssetHandle::~AssetHandle((this + 776));
  re::AssetHandle::~AssetHandle((this + 752));
  re::AssetHandle::~AssetHandle((this + 728));
  re::AssetHandle::~AssetHandle((this + 704));
  re::AssetHandle::~AssetHandle((this + 680));
  re::AssetHandle::~AssetHandle((this + 656));
  re::AssetHandle::~AssetHandle((this + 632));
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 584);
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 67);
  re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 16);
}

{
  re::MXIManager::~MXIManager(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::MXIManager::registerScene(re::MXIManager *this, re::EventBus **a2)
{
  v40 = *MEMORY[0x1E69E9840];
  v30 = a2;
  v2 = a2[36];
  if (!v2)
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track MXIComponent changes.", "eventBus", "registerScene", 229);
    _os_crash();
    __break(1u);
  }

  v24[0] = 0;
  v24[1] = 0;
  v25 = 1;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  re::MXIManager::reloadDebugOverrides(this);
  v4 = re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v38 = re::globalAllocators(v5)[2];
  v6 = (*(*v38 + 32))(v38, 32, 0);
  *v6 = &unk_1F5CF0338;
  v6[1] = this;
  v6[2] = re::MXIManager::didAddMXIComponent;
  v6[3] = 0;
  v39 = v6;
  v7 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v37, v4, 0);
  v9 = v8;
  v10 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v10 = v7;
  v10[1] = v9;
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v37);
  v35 = re::globalAllocators(v11)[2];
  v12 = (*(*v35 + 32))(v35, 32, 0);
  *v12 = &unk_1F5CF0390;
  v12[1] = this;
  v12[2] = re::MXIManager::didChangeMXIComponent;
  v12[3] = 0;
  v36 = v12;
  v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v34, v4, 0);
  v15 = v14;
  v16 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v16 = v13;
  v16[1] = v15;
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v34);
  v32 = re::globalAllocators(v17)[2];
  v18 = (*(*v32 + 32))(v32, 32, 0);
  *v18 = &unk_1F5CF03E8;
  v18[1] = this;
  v18[2] = re::MXIManager::willRemoveMXIComponent;
  v18[3] = 0;
  v33 = v18;
  v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v31, v4, 0);
  v21 = v20;
  v22 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v24);
  *v22 = v19;
  v22[1] = v21;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v31);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 584, &v30, v24);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v24);
  result = v24[0];
  if (v24[0])
  {
    if ((v25 & 1) == 0)
    {
      return (*(*v24[0] + 40))();
    }
  }

  return result;
}

uint64_t re::MXIManager::unregisterScene(re::MXIManager *this, re::ecs2::Entity **a2)
{
  v13 = a2;
  for (i = 64; i != 128; i += 8)
  {
    v14 = *(this + i);
    v5 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet((a2 + 19), &v14);
    if (v5)
    {
      v6 = *(v5 + 8);
      if (!v6)
      {
        continue;
      }

LABEL_4:
      re::MXIManager::removeMXIScene(this, v6);
      continue;
    }

    v6 = a2[13];
    if (*(v6 + 39) == v14)
    {
      goto LABEL_4;
    }
  }

  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 584, &v13);
  if (result)
  {
    v8 = *(v13 + 36);
    if (v8)
    {
      v9 = result;
      v10 = *(result + 40);
      if (v10)
      {
        for (j = 0; j != v10; ++j)
        {
          v12 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v9, j);
          re::EventBus::unsubscribe(v8, *v12, *(v12 + 8));
        }
      }
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 584, &v13);
  }

  return result;
}

void re::MXIManager::removeMXIScene(re::MXIManager *this, re::ecs2::Entity *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *buf = *(a2 + 39);
    v4 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 16, buf);
    if (v4)
    {
      v5 = v4;
      if ((*(a2 + 387) & 1) == 0 && (*(a2 + 305) & 8) == 0)
      {
        v6 = *(v4 + 672);
        if (v6)
        {
          re::ecs2::Entity::setSelfEnabled(*(v4 + 672), 0);
          re::ecs2::Entity::removeFromSceneOrParent(v6);
        }

        v7 = *(v5 + 768);
        if (v7)
        {
          re::ecs2::Entity::setSelfEnabled(*(v5 + 768), 0);
          re::ecs2::Entity::removeFromSceneOrParent(v7);
        }
      }

      *(this + *(v5 + 40) + 8) = 0;
      v17 = *(a2 + 39);
      v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
      v9 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 16, &v17, v8 ^ (v8 >> 31), buf);
      v10 = v19;
      if (v19 != 0x7FFFFFFF)
      {
        v11 = *(this + 4);
        v12 = *(v11 + 816 * v19) & 0x7FFFFFFF;
        if (v20 == 0x7FFFFFFF)
        {
          *(*(this + 3) + 4 * *&buf[8]) = v12;
          v10 = v19;
        }

        else
        {
          *(v11 + 816 * v20) = *(v11 + 816 * v20) & 0x80000000 | v12;
        }

        re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(this + 16, v10);
        v13 = v19;
        *(*(this + 4) + 816 * v19) = *(*(this + 4) + 816 * v19) & 0x80000000 | *(this + 13);
        --*(this + 11);
        v14 = *(this + 14) + 1;
        *(this + 13) = v13;
        *(this + 14) = v14;
      }

      v15 = *re::mxiLogObjects(v9);
      if (os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG))
      {
        v16 = *(a2 + 39);
        *buf = 134217984;
        *&buf[4] = v16;
        _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "[MXIManager] MXI rendering done on entity %llu", buf, 0xCu);
      }
    }
  }
}

__n128 re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, __n128 *a3)
{
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v10);
  v7 = HIDWORD(v11);
  if (HIDWORD(v11) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v11, v10);
    re::StringID::StringID((v8 + 8), a2);
    result = *a3;
    *(v8 + 32) = *a3;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    result = *a3;
    *(*(a1 + 16) + 48 * v7 + 32) = *a3;
  }

  return result;
}

uint64_t re::MXIManager::update(re::MXIManager *this, re::ecs2::Scene *a2, re::ecs2::Entity *a3, float32x4_t *a4)
{
  v6 = this;
  v206 = *MEMORY[0x1E69E9840];
  if (__PAIR64__(*(this + 233), *(this + 232)) == 0x100000001)
  {
    v7 = *re::mxiLogObjects(this);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      *&buf[0].var0 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "[MXIManager] update - Reloading Debug Overrides", buf, 2u);
    }

    re::MXIManager::reloadDebugOverrides(v6);
  }

  v171 = *(a3 + 39);
  if (*(v6 + 234) == 1)
  {
    a4[5].i8[0] = *(v6 + 235);
  }

  if (*(v6 + 238) == 1)
  {
    a4[7].i8[9] = *(v6 + 239);
  }

  v8 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 16, &v171);
  if (v8)
  {
    if (v8->i64[0] && v8->i64[0] != v171)
    {
      return 0;
    }

    v9 = v8[10].i64[0];
    if (v9)
    {
      v10 = a4[44].i64[1] != v9;
    }

    else
    {
      v11 = a4[46].i64[1];
      if (v11 == v8[12].i64[0])
      {
        if (v11)
        {
          v12 = (v8[13].i64[0] + 8);
          v13 = 24 * v11 - 24;
          v14 = (a4[47].i64[1] + 8);
          do
          {
            v16 = *v14;
            v14 += 3;
            v15 = v16;
            v17 = *v12;
            v12 += 3;
            v10 = v15 != v17;
            _ZF = v15 != v17 || v13 == 0;
            v13 -= 24;
          }

          while (!_ZF);
        }

        else
        {
          v10 = 0;
        }
      }

      else
      {
        v10 = 1;
      }
    }

    v19 = a4[38].i64[1];
    v20 = v8[8].i64[1];
    v21 = a4[5].u8[8] != v8[4].u8[11] || (vminvq_u32(vceqq_f32(a4[6], v8[5])) & 0x80000000) == 0;
    v22 = a4[5].f32[1];
    v23 = v8[4].f32[1];
    v24 = v8[1].i64[0] != 0;
    v26 = a4[5].u8[0] != v24 || v19 != v20;
    if (v26 || v10 || (v22 == v23 ? (v27 = !v21) : (v27 = 0), !v27))
    {
      v28 = *re::mxiLogObjects(v8);
      if (os_log_type_enabled(v28, OS_LOG_TYPE_DEBUG))
      {
        v93 = *(a3 + 39);
        v94 = a4[5].u8[0] != v24;
        buf[0].var0 = 134219264;
        *(&buf[0].var0 + 1) = v93;
        WORD2(buf[0].var1) = 1024;
        *(&buf[0].var1 + 6) = v19 != v20;
        *(&buf[1].var0 + 1) = 1024;
        *(&buf[1].var0 + 1) = v10;
        LOWORD(buf[1].var1) = 1024;
        *(&buf[1].var1 + 2) = v94;
        HIWORD(buf[1].var1) = 1024;
        *v195 = v22 != v23;
        *&v195[4] = 1024;
        *&v195[6] = v21;
        _os_log_debug_impl(&dword_1E1C61000, v28, OS_LOG_TYPE_DEBUG, "[MXIManager] need update rendering, active MXIComponent entity %llu, mesh changed=%d, texture changed=%d, render mode changed=%d, split depth changed=%d, foreground rect changed=%d", buf, 0x2Au);
      }

      re::MXIManager::removeMXIScene(v6, a3);
    }

    v170 = 0;
    if (!a3)
    {
      goto LABEL_50;
    }
  }

  else
  {
    v170 = 0;
  }

  if ((*(a3 + 305) & 8) == 0 && (*(a3 + 387) & 1) == 0)
  {
    *&buf[0].var0 = 0x453764D203EAEEDCLL;
    buf[0].var1 = "__MXIScene__";
    v29 = re::ecs2::Entity::findInHierarchyByName(a3, buf);
    v30 = v29;
    if (*&buf[0].var0)
    {
      if (*&buf[0].var0)
      {
      }
    }

    if (v30)
    {
      goto LABEL_167;
    }
  }

LABEL_50:
  result = 0;
  if (!a3 || !a4)
  {
    return result;
  }

  v32 = *(a3 + 39);
  if (a4[5].i8[0] != 1 || (v33 = *(v6 + 8)) == 0 || v33 == v32)
  {
LABEL_63:
    v37 = re::AssetHandle::AssetHandle(v182, &a4[38]);
    if (!v182[1])
    {
LABEL_234:
      v153 = *re::mxiLogObjects(v37);
      if (os_log_type_enabled(v153, OS_LOG_TYPE_ERROR))
      {
        v154 = *(a3 + 39);
        buf[0].var0 = 134217984;
        *(&buf[0].var0 + 1) = v154;
        _os_log_error_impl(&dword_1E1C61000, v153, OS_LOG_TYPE_ERROR, "[MXIManager] Mesh resource not available on entity %llu, cannot start MXI rendering", buf, 0xCu);
      }

      goto LABEL_97;
    }

    if (a4[5].i8[2])
    {
      v38 = re::AssetHandle::loadedAsset<re::MeshAsset>(v182);
      if (!v38)
      {
LABEL_237:
        v155 = *re::mxiLogObjects(v38);
        if (os_log_type_enabled(v155, OS_LOG_TYPE_DEFAULT))
        {
          v156 = *(a3 + 39);
          buf[0].var0 = 134217984;
          *(&buf[0].var0 + 1) = v156;
          _os_log_impl(&dword_1E1C61000, v155, OS_LOG_TYPE_DEFAULT, "[MXIManager] MeshAsset was not loaded on entity %llu. Starting loadAsync and skipping this frame.", buf, 0xCu);
        }

        re::AssetHandle::loadAsync(v182);
        goto LABEL_97;
      }
    }

    v181 = 0;
    v178 = 0;
    v179 = 0;
    v177 = 0;
    v180 = 0;
    re::AssetHandle::AssetHandle(&v175, &a4[44]);
    if (!v176)
    {
      re::DynamicArray<re::AssetHandle>::operator=(&v177, &a4[45].i64[1]);
      goto LABEL_74;
    }

    v39 = *(v176 + 24);
    v40 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v175);
    if (!v40 || *(v40 + 120) || (v41 = *(v40 + 112)) == 0)
    {
LABEL_74:
      v46 = re::AssetHandle::AssetHandle(v173, &a4[39].u32[2]);
      v47 = v179;
      if (v179)
      {
        goto LABEL_75;
      }

      if (!v174 || (v46 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v173)) == 0 || *(v46 + 1842) != 7)
      {
        v64 = *re::mxiLogObjects(v46);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
        {
          v102 = *(a3 + 39);
          buf[0].var0 = 134217984;
          *(&buf[0].var0 + 1) = v102;
          _os_log_error_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_ERROR, "[MXIManager] Texture resource and ShaderGraph material not available on entity %llu, cannot start MXI rendering", buf, 0xCu);
        }

LABEL_96:
        re::AssetHandle::~AssetHandle(v173);
        re::AssetHandle::~AssetHandle(&v175);
        re::DynamicArray<re::AssetHandle>::deinit(&v177);
LABEL_97:
        re::AssetHandle::~AssetHandle(v182);
        return 0;
      }

      v47 = v179;
      if (v179)
      {
LABEL_75:
        v48 = v181;
        v49 = 24 * v47;
        while (1)
        {
          re::AssetHandle::AssetHandle(buf, v48);
          if (!re::AssetHandle::blockUntilLoaded<re::TextureAsset>(buf))
          {
            break;
          }

          re::AssetHandle::~AssetHandle(buf);
          v48 = (v48 + 24);
          v49 -= 24;
          if (!v49)
          {
            v50 = 0;
            goto LABEL_79;
          }
        }

        v63 = *re::mxiLogObjects(0);
        if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
        {
          *v190 = 0;
          _os_log_error_impl(&dword_1E1C61000, v63, OS_LOG_TYPE_ERROR, "[MXIManager] MXI texture's backing asset is null", v190, 2u);
        }

        re::AssetHandle::~AssetHandle(buf);
        goto LABEL_96;
      }

      v50 = 1;
LABEL_79:
      re::MXIManager::reloadDebugOverrides(v6);
      v52 = re::ecs2::EntityFactory::instance(v51);
      re::ecs2::EntityFactory::make(v52, 4uLL, &v172);
      v53 = v172;
      if (v172)
      {
        *&buf[0].var0 = 0x453764D203EAEEDCLL;
        buf[0].var1 = "__MXIScene__";
        re::StringID::operator=(v172 + 36, buf);
        v54 = *(v53 + 29);
        if (!v54)
        {
          v54 = re::ecs2::EntityComponentCollection::add((v53 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        if ((v54[38] & 1) == 0)
        {
          v54[38] = 1;
        }

        v54[39] = 0;
        v54[49] = 1;
        *v190 = *(a3 + 39);
        memset(buf, 0, 24);
        v55 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v190 ^ (*v190 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v190 ^ (*v190 >> 30))) >> 27));
        v56 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v6 + 16, v190, v55 ^ (v55 >> 31), buf);
        v165 = v32;
        if (HIDWORD(buf[0].var1) == 0x7FFFFFFF)
        {
          v57 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v6 + 16, buf[0].var1, *&buf[0].var0);
          *(v57 + 8) = *v190;
          v58 = v57 + 16;
          bzero((v57 + 16), 0x310uLL);
          *(v57 + 72) = &str_67;
          *(v57 + 80) = 1065353216;
          *(v57 + 88) = 257;
          *(v57 + 90) = 1;
          *(v57 + 96) = xmmword_1E3063230;
          *(v57 + 112) = xmmword_1E308C1A0;
          *(v57 + 128) = 1045220557;
          *(v57 + 224) = 0u;
          *(v57 + 240) = 0;
          *(v57 + 132) = 0u;
          *(v57 + 148) = 0u;
          *(v57 + 164) = 0u;
          *(v57 + 180) = 0u;
          *(v57 + 196) = 0u;
          *(v57 + 212) = 0;
          _Q1.i64[0] = 0x7F0000007FLL;
          _Q1.i64[1] = 0x7F0000007FLL;
          *(v57 + 256) = vnegq_f32(_Q1);
          *(v57 + 272) = _Q1;
          *(v57 + 288) = 0x3F80000000000002;
          *(v57 + 304) = 0u;
          __asm { FMOV            V1.2S, #1.0 }

          *(v57 + 320) = _Q1.i64[0];
          *(v57 + 328) = 1056964608;
          *(v57 + 336) = 65537;
          *(v57 + 352) = 0x3DCCCCCD3ECCCCCDLL;
          *(v57 + 360) = 1106247680;
          *(v57 + 372) = xmmword_1E306AB10;
          *(v57 + 388) = 1065353216;
          *(v57 + 392) = 64;
          *(v57 + 396) = 0x3E4CCCCD3DCCCCCDLL;
          *(v57 + 408) = 0xA3EC00000;
          *(v57 + 420) = 0x3F8000003FECCCCDLL;
          *(v57 + 432) = 0x3DCCCCCD3E99999ALL;
          *(v57 + 444) = 0x10000000ALL;
          *(v57 + 456) = 0x3CF5C28FBDCCCCCDLL;
          *(v57 + 464) = 1041865114;
          *(v57 + 472) = 10;
          *(v57 + 480) = 0;
          *(v57 + 488) = 0;
          *(v57 + 492) = 0x3F8000003E4CCCCDLL;
          *(v57 + 500) = 1;
          *(v57 + 508) = 1065353216;
          *(v57 + 528) = 0u;
          *(v57 + 544) = 0x3E4CCCCD00000000;
          *(v57 + 556) = 1;
          *(v57 + 560) = 1036831949;
          *(v57 + 564) = 1;
          *(v57 + 568) = 0x73E4CCCCDLL;
          *(v57 + 576) = 0x3F8000003F000000;
          *(v57 + 584) = 1065353216;
          *(v57 + 588) = 1;
          *(v57 + 672) = 0u;
          *(v57 + 688) = 0;
          *(v57 + 704) = 0u;
          *(v57 + 720) = 0u;
          *(v57 + 736) = 0;
          *(v57 + 608) = 0u;
          *(v57 + 624) = 0u;
          *(v57 + 640) = 0u;
          *(v57 + 656) = 0;
          *(v57 + 776) = 1065353216;
          *(v57 + 768) = 0x3F8000003F800000;
          ++*(v6 + 14);
        }

        else
        {
          v58 = *(v6 + 4) + 816 * HIDWORD(buf[0].var1) + 16;
        }

        v66 = re::globalAllocators(v56);
        v67 = (*(*v66[2] + 32))(v66[2], 272, 16);
        *v67 = 0u;
        *(v67 + 16) = 0u;
        *(v67 + 32) = 0u;
        *(v67 + 48) = 0u;
        *(v67 + 64) = 0u;
        *(v67 + 80) = 0u;
        *(v67 + 96) = 0u;
        *(v67 + 112) = 0u;
        *(v67 + 128) = 0u;
        *(v67 + 144) = 0u;
        *(v67 + 160) = 0u;
        *(v67 + 176) = 0u;
        *(v67 + 192) = 0u;
        *(v67 + 208) = 0u;
        *(v67 + 224) = 0u;
        *(v67 + 240) = 0u;
        *(v67 + 256) = 0u;
        ArcSharedObject::ArcSharedObject(v67, 0);
        *v67 = &unk_1F5CF0450;
        *(v67 + 24) = 0xFFFFFFFFFFFFFFFLL;
        *(v67 + 224) = 0;
        *(v67 + 32) = 0u;
        *(v67 + 48) = 0u;
        *(v67 + 64) = 0u;
        *(v67 + 80) = 0u;
        *(v67 + 96) = 0u;
        *(v67 + 112) = 0u;
        *(v67 + 128) = 0u;
        *(v67 + 144) = 0u;
        *(v67 + 160) = 0;
        *(v67 + 240) = 0x3F80000000000000;
        *(v67 + 248) = -3243035853;
        *(v67 + 256) = 0;
        v69 = *(v58 + 216);
        *(v58 + 216) = v67;
        if (v69)
        {
        }

        if (v50)
        {
          v163 = v58;
          v70 = re::ecs2::EntityFactory::instance(v68);
          re::ecs2::EntityFactory::make(v70, 4uLL, &v188);
          v71 = v188;
          re::ecs2::EntityComponentCollection::remove((v188 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v72 = *(v71 + 24);
          if (!v72)
          {
            v72 = re::ecs2::EntityComponentCollection::add((v71 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
          }

          v161 = v53;
          v157 = v6;
          re::AssetHandle::operator=((v72 + 4), v182);
          re::DynamicArray<re::AssetHandle>::add((v72 + 7), v173);
          re::ecs2::Component::markDirty(v72);
          v73 = v71;
          v74 = *(v71 + 26);
          if (!v74)
          {
            v74 = re::ecs2::EntityComponentCollection::add((v71 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          re::ecs2::MXIComponent::copyShaderGraphMaterialTextureParameterNames(a4, v190);
          v75 = v191[0];
          re::ecs2::MaterialParameterBlockArrayComponent::resizeBlockHandles(v74, v191[0]);
          if (v75)
          {
            v76 = 0;
            for (i = 0; v75 != i; ++i)
            {
              v78 = v191[0];
              if (v191[0] <= i)
              {
                v189 = 0;
                memset(v195, 0, 48);
                memset(buf, 0, sizeof(buf));
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                v198 = 136315906;
                v199 = "operator[]";
                v200 = 1024;
                v201 = 789;
                v202 = 2048;
                v203 = i;
                v204 = 2048;
                v205 = v78;
                _os_log_send_and_compose_impl();
                v37 = _os_crash_msg();
                __break(1u);
                goto LABEL_234;
              }

              re::DynamicString::DynamicString(&v185, (v192 + v76));
              re::DynamicString::DynamicString(v184, &v185);
              v79 = re::HashTable<re::DynamicString,re::AssetHandle,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::tryGet(&a4[41], v184);
              if (*&v184[0])
              {
                if (BYTE8(v184[0]))
                {
                  (*(**&v184[0] + 40))();
                }

                memset(v184, 0, sizeof(v184));
              }

              if (v79 && *(v79 + 1))
              {
                re::DynamicString::insert(&v185, 0, "$1.", 3uLL);
                v80 = *(v74 + 6);
                if (v80 <= i)
                {
                  v189 = 0;
                  memset(v195, 0, 48);
                  memset(buf, 0, sizeof(buf));
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v198 = 136315906;
                  v199 = "operator[]";
                  v200 = 1024;
                  v201 = 789;
                  v202 = 2048;
                  v203 = i;
                  v204 = 2048;
                  v205 = v80;
                  _os_log_send_and_compose_impl();
                  v38 = _os_crash_msg();
                  __break(1u);
                  goto LABEL_237;
                }

                v81 = *(v74 + 8) + v76;
                ++*(v81 + 16);
                v82 = *v81;
                if (v186)
                {
                  v83 = *&v187[7];
                }

                else
                {
                  v83 = v187;
                }

                re::AssetHandle::AssetHandle(v183, v79);
                re::ecs2::SerializableMaterialParameterBlock::setTexture(v82, v83, v183);
                re::AssetHandle::~AssetHandle(v183);
              }

              if (v185 && (v186 & 1) != 0)
              {
                (*(*v185 + 40))();
              }

              v76 += 32;
            }
          }

          re::ecs2::Component::markDirty(v74);
          v53 = v161;
          re::ecs2::Entity::setParentInternal(v73, v161, 0xFFFFFFFFFFFFFFFFLL);
          v84 = re::DynamicArray<re::DynamicString>::deinit(v190);
          if (v73)
          {
          }

          v6 = v157;
          v58 = v163;
        }

        else
        {
          re::MXIManager::createMXIEntityForSplit(v6, v53, a4, v182, &v177, 0, v58);
          if (a4[5].i8[2])
          {
            re::MXIManager::createMXIEntityForSplit(v6, v53, a4, v182, &v177, 1, v58);
          }
        }

        *(v58 + 73) = a4[7].i8[8];
        if (a4[5].i8[0] == 1 && a4[7].i8[9] == 1)
        {
          v85 = re::ecs2::EntityFactory::instance(v84);
          re::ecs2::EntityFactory::make(v85, 4uLL, v190);
          v86 = *v190;
          if (*v190)
          {
            *&buf[0].var0 = 0x453764D0FADA71A0;
            buf[0].var1 = "__MXIProxy__";
            re::StringID::operator=((*v190 + 288), buf);
            re::StringID::destroyString(buf);
            re::ecs2::EntityComponentCollection::add((v86 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v87 = v86[29];
            if (!v87)
            {
              v87 = re::ecs2::EntityComponentCollection::add((v86 + 6), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            }

            if ((v87[38] & 1) == 0)
            {
              v87[38] = 1;
            }

            v87[39] = 0;
            v87[49] = 1;
            v88 = a4[37].u8[8];
            v89 = v6;
            v90 = v86;
            if (a4[5].i8[2])
            {
              re::MXIManager::setupMXIProxy(v6, v86, v165, 1, 1, v58, v88);
              v88 = a4[37].u8[8];
              v89 = v6;
              v90 = v86;
              v91 = v165;
              v92 = 1;
            }

            else
            {
              v91 = v165;
              v92 = 0;
            }

            re::MXIManager::setupMXIProxy(v89, v90, v91, v92, 0, v58, v88);
            re::ecs2::Entity::setParentInternal(v86, a3, 0xFFFFFFFFFFFFFFFFLL);
            *(v58 + 672) = v86;
          }
        }

        re::ecs2::EntityComponentCollection::remove((v53 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v104 = re::ecs2::EntityFactory::instance(v103);
        re::ecs2::EntityFactory::make(v104, 4uLL, v190);
        v105 = *v190;
        *&buf[0].var0 = 0x453764D0DCE02B48;
        buf[0].var1 = "__MXIPivot__";
        re::StringID::operator=((*v190 + 288), buf);
        re::ecs2::EntityComponentCollection::remove((v105 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::EntityComponentCollection::add((v105 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::Entity::setParentInternal(v105, a3, 0xFFFFFFFFFFFFFFFFLL);
        *(v58 + 768) = v105;
        re::ecs2::Entity::setParentInternal(v53, v105, 0xFFFFFFFFFFFFFFFFLL);
        *(v58 + 640) = v53;
        *v58 = *(a3 + 39);
        re::AssetHandle::operator=(v58 + 128, v182);
        re::AssetHandle::operator=(v58 + 152, &v175);
        v106 = re::DynamicArray<re::AssetHandle>::operator=(v58 + 176, &v177);
        *(v58 + 68) = a4[5].i32[1];
        *(v58 + 75) = a4[5].i8[8];
        *(v58 + 80) = a4[6];
        v107 = *(a3 + 4);
        v108 = a3;
        if (v107)
        {
          v108 = a3;
          if ((*(v107 + 304) & 0x80) == 0)
          {
            do
            {
              v108 = v107;
              v107 = *(v107 + 32);
            }

            while (v107 && (*(v107 + 304) & 0x80) == 0);
          }
        }

        *(v58 + 720) = v108;
        v109 = *re::mxiLogObjects(v106);
        if (os_log_type_enabled(v109, OS_LOG_TYPE_DEBUG))
        {
          v150 = *v58;
          v151 = *(v58 + 720);
          if (v151)
          {
            v152 = *(v151 + 296);
          }

          else
          {
            v152 = "unknown";
          }

          buf[0].var0 = 134218242;
          *(&buf[0].var0 + 1) = v150;
          WORD2(buf[0].var1) = 2080;
          *(&buf[0].var1 + 6) = v152;
          _os_log_debug_impl(&dword_1E1C61000, v109, OS_LOG_TYPE_DEBUG, "[MXIManager] MXI rendering started on entity %llu, window %s", buf, 0x16u);
        }

        if (*v190)
        {
        }

        if (v172)
        {
        }
      }

      re::AssetHandle::~AssetHandle(v173);
      re::AssetHandle::~AssetHandle(&v175);
      re::DynamicArray<re::AssetHandle>::deinit(&v177);
      re::AssetHandle::~AssetHandle(v182);
      v170 = 1;
LABEL_167:
      *&buf[0].var0 = *(a3 + 39);
      result = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v6 + 16, buf);
      if (result)
      {
        v110 = result;
        v111 = &a4[22].i32[2];
        v112 = a4[27].f32[0];
        if (*(v6 + 372))
        {
          v111 = (v6 + 376);
        }

        v113 = *v111;
        *&v169.var0 = 0x453764D203EAEEDCLL;
        v169.var1 = "__MXIScene__";
        v114 = re::ecs2::Entity::findInHierarchyByName(a3, &v169);
        v115 = v114;
        if (*&v169.var0)
        {
          if (*&v169.var0)
          {
          }
        }

        *&v169.var0 = 0;
        v169.var1 = &str_67;
        if (v115 && (v116 = re::AssetHandle::loadedAsset<re::MeshAsset>((v110 + 128))) != 0 && *(v116 + 1144))
        {
          v117 = *(v116 + 1152);
          v159 = *v117;
          v160 = v117[1];
        }

        else
        {
          v118.i64[0] = 0x7F0000007FLL;
          v118.i64[1] = 0x7F0000007FLL;
          v119.i64[0] = 0x7F0000007FLL;
          v119.i64[1] = 0x7F0000007FLL;
          v159 = vnegq_f32(v118);
          v160 = v119;
        }

        if (a4[5].i8[0] == 1)
        {
          v158 = v6;
          if (v112 <= 0.0)
          {
            *v162 = xmmword_1E30474D0;
            v164 = xmmword_1E30476A0;
            v166 = xmmword_1E3047680;
            v126 = xmmword_1E3047670;
            v168 = xmmword_1E3047670;
          }

          else
          {
            v120 = 0;
            v121 = (a4[35].f32[3] + -1.0) * v112 + 1.0;
            v122 = LODWORD(v121);
            v123.i32[0] = 0;
            v123.i64[1] = 0;
            v123.f32[1] = v121;
            v124.i64[0] = 0;
            v124.f32[2] = v121;
            v125.i64[0] = 0;
            v125.i32[2] = 0;
            *v190 = xmmword_1E3047670;
            *v191 = xmmword_1E3047680;
            v192 = xmmword_1E30476A0;
            v193 = xmmword_1E30474D0;
            do
            {
              v124.f32[3] = -v112;
              v125.f32[3] = 1.0 - v112;
              buf[v120 / 0x10] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v122, COERCE_FLOAT(*&v190[v120])), v123, *&v190[v120], 1), v124, *&v190[v120], 2), v125, *&v190[v120], 3);
              v120 += 16;
            }

            while (v120 != 64);
            v166 = buf[1];
            v168 = buf[0];
            v126 = *&v195[16];
            *v162 = *&v195[16];
            v164 = *v195;
          }

          v127 = *(v115 + 43);
          if (v127)
          {
            v128 = *(v115 + 45);
            v129 = &v128[v127];
            do
            {
              v130 = *v128;
              if (*v128)
              {
                v131 = (v130 + 8);
              }

              v132 = *(v130 + 208);
              if (!v132)
              {
                goto LABEL_195;
              }

              v133 = *(v132 + 88);
              if (!v133)
              {
                goto LABEL_195;
              }

              v134 = *(v132 + 104);
              v135 = 8 * v133;
              do
              {
                v136 = *v134;
                if (*v134)
                {
                  v137 = (v136 + 8);
                  buf[0] = v168;
                  buf[1] = v166;
                  *v195 = v164;
                  *&v195[16] = *v162;
                  re::MaterialParameterBlock::setMatrix4x4F(v136, "collapseTransform", buf, v190);
                  *v190 = 0;
                  v198 = v113;
                  *&buf[0].var0 = 0x6D716CE8D23A597BLL;
                  re::MaterialParameterBlock::setConstant(v136, buf, 4uLL, &v198, 1, &v177);
                  v177 = 0;
                }

                ++v134;
                v135 -= 8;
              }

              while (v135);
              if (v130)
              {
LABEL_195:
              }

              ++v128;
            }

            while (v128 != v129);
          }

          v138 = a4[7].u8[9];
          *(v110 + 74) = v138;
          if (v138 == 1)
          {
            v6 = v158;
            v139 = v158;
            v140 = a4;
            if (a4[5].i8[2])
            {
              v126 = re::MXIManager::configureProxy(v158, a4, &v170, 1, 1, v110, v126);
              v139 = v158;
              v140 = a4;
              v141 = 1;
            }

            else
            {
              v141 = 0;
            }

            re::MXIManager::configureProxy(v139, v140, &v170, v141, 0, v110, v126);
          }

          else
          {
            *(v110 + 16) = 1;
            v6 = v158;
            if (*(v158 + 296) == 1)
            {
              v142 = *(v158 + 300);
            }

            else
            {
              v142 = a4[9].u16[2];
            }

            *(v110 + 96) = v142;
            if (*(v158 + 304) == 1)
            {
              v143 = *(v158 + 308);
            }

            else
            {
              v143 = a4[9].u16[3];
            }

            *(v110 + 100) = v143;
            if (*(v158 + 288) == 1)
            {
              *(v110 + 104) = *(v158 + 292);
            }

            if (*(v158 + 272) == 1)
            {
              *(v110 + 108) = *(v158 + 276);
            }

            if (*(v158 + 280) == 1)
            {
              *(v110 + 112) = *(v158 + 284);
            }
          }
        }

        v144 = *(v110 + 16);
        if (v144)
        {
          if (v170)
          {
            v145 = 0;
          }

          else
          {
            v146 = &a4[7].i8[8];
            if (*(v6 + 236))
            {
              v146 = v6 + 237;
            }

            v145 = *v146;
          }

          *(v110 + 224) = v145 & 1;
          *(v110 + 240) = v159;
          *(v110 + 256) = v160;
          v147 = a4 + 7;
          v148 = &a4[7].i32[1];
          if (*(v6 + 248))
          {
            v148 = (v6 + 252);
          }

          *(v110 + 272) = *v148;
          v149 = &a4[7].i32[3];
          if (*(v6 + 256))
          {
            v149 = (v6 + 260);
          }

          *(v110 + 276) = *v149;
          if (*(v6 + 240))
          {
            v147 = (v6 + 244);
          }

          *(v110 + 64) = v147->i32[0];
        }

        return v144 != 0;
      }

      return result;
    }

    v42 = v41;
    v43 = v6;
    if ([v41 textureType] == 3)
    {
      v167 = [v42 mipmapLevelCount];
      v44 = [v42 arrayLength];
      v45 = v44;
      if (v178 < v44)
      {
        re::DynamicArray<re::AssetHandle>::setCapacity(&v177, v44);
        goto LABEL_142;
      }

      if (v44)
      {
LABEL_142:
        v95 = 0;
        v96 = 1;
        do
        {
          v97 = [v42 newTextureViewWithPixelFormat:objc_msgSend(v42 textureType:sel_pixelFormat) levels:2 slices:0, v167, v95, 1];
          *v190 = v97;
          *&v190[8] = 0;
          *&buf[0].var0 = 0;
          memset(&buf[0].var1, 0, 24);
          memset(&v195[8], 0, 44);
          v196 = 0;
          v197 = 0;
          TextureAsset = re::TextureAsset::makeTextureAsset(v190, buf, 3, 0);
          if (*&v195[24])
          {
            if (v196)
            {
              (*(**&v195[24] + 40))();
            }

            v196 = 0;
            memset(&v195[24], 0, 24);
            ++*&v195[48];
          }

          if (*&v195[8])
          {
          }

          if (*&v190[8] != -1)
          {
            v99 = (off_1F5CF0430[*&v190[8]])(buf, v190);
          }

          v100 = re::TextureAsset::assetType(v99);
          (*(*v39 + 424))(buf, v39, TextureAsset, v100, 0, 0, 0);
          re::DynamicArray<re::AssetHandle>::add(&v177, buf);
          re::AssetHandle::~AssetHandle(buf);
          if (v97)
          {
          }

          v95 = v96;
        }

        while (v45 > v96++);
      }
    }

    v6 = v43;
    goto LABEL_74;
  }

  v34 = 0;
  while (v34 != 7)
  {
    v35 = *(v6 + v34++ + 9);
    if (v35)
    {
      v36 = v35 == v32;
    }

    else
    {
      v36 = 1;
    }

    if (v36)
    {
      if ((v34 - 1) < 7)
      {
        goto LABEL_63;
      }

      break;
    }
  }

  v65 = *re::mxiLogObjects(0);
  result = os_log_type_enabled(v65, OS_LOG_TYPE_ERROR);
  if (result)
  {
    *&buf[0].var0 = 0;
    _os_log_error_impl(&dword_1E1C61000, v65, OS_LOG_TYPE_ERROR, "[MXIManager] All 8 MXI proxy materials already in use.", buf, 2u);
    return 0;
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 816 * v6 + 16;
  }
}

__n128 re::MXIManager::configureProxy(uint64_t a1, uint64_t a2, _BYTE *a3, int a4, int a5, uint64_t a6, __n128 result)
{
  v7 = 296;
  if (a4 ^ 1 | a5)
  {
    v7 = 288;
  }

  v8 = *(a6 + v7);
  if (v8)
  {
    LOWORD(v13) = *(a2 + 150);
    if (*(a1 + 296) == 1)
    {
      v14 = *(a1 + 300);
    }

    else
    {
      LOWORD(v14) = *(a2 + 148);
    }

    v15 = *(a2 + 152);
    v16 = *(a2 + 132);
    if (*(a1 + 304) == 1)
    {
      v13 = *(a1 + 308);
    }

    *(a6 + 96) = v14;
    *(a6 + 100) = v13;
    if (v15)
    {
      v17 = -1;
    }

    else
    {
      v17 = 0;
    }

    __asm { FMOV            V1.2S, #1.0 }

    v22 = vbsl_s8(vdup_n_s32(v17), _D1, v16.n128_u64[0]);
    v51 = v16;
    if ((*a3 & 1) == 0 && *v22.i32 == *(a6 + 304) && (*&v22.i32[1] == *(a6 + 308) ? (_ZF = v16.n128_f32[3] == *(a6 + 316)) : (_ZF = 0), _ZF))
    {
      v27 = 0;
    }

    else
    {
      v62 = 0;
      v65 = 1;
      v63 = v22;
      v64 = v16.n128_u32[3];
      if (v16.n128_f32[3] > 0.0)
      {
        v62 = 16;
      }

      v66 = 0;
      v67 = 4;
      v61 = 65537;
      re::GeomMesh::GeomMesh(v60, 0);
      re::buildPlane(v60, &v61);
      v53 = 16842752;
      v54 = 1;
      v55 = 0;
      v56 = 0;
      v57 = 65793;
      v59 = 0u;
      memset(v58, 0, sizeof(v58));
      DWORD1(v59) = 0x7FFFFFFF;
      re::AssetHelper::makeMeshMemoryAsset(*(a1 + 208), v60, 1, 0, 0);
      v24 = v8[24];
      if (!v24)
      {
        v24 = re::ecs2::EntityComponentCollection::add((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      }

      re::AssetHandle::operator=(v24 + 32, v52);
      re::ecs2::Component::enqueueMarkDirty(v24);
      v25 = v8[21];
      if (!v25)
      {
        v25 = re::ecs2::EntityComponentCollection::add((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      re::ecs2::Component::willSet(v25);
      *(v25 + 28) = 1065353216;
      re::ecs2::Component::didSet(v25);
      re::ecs2::NetworkComponent::markComponentDirty(v25, v26);
      re::ecs2::Component::markDirty(v25);
      re::AssetHandle::~AssetHandle(v52);
      re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(v58);
      re::GeomMesh::~GeomMesh(v60);
      v27 = 1;
    }

    v28 = re::ecs2::EntityComponentCollection::getOrAdd((v8 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v29 = v28;
    v30.i64[0] = *(a2 + 132);
    v30.i32[2] = 0;
    v60[0] = v30;
    v31 = *(v28 + 48);
    v32 = *(v28 + 64);
    v33 = vcgtq_f32(v31, v32);
    v33.i32[3] = v33.i32[2];
    if ((vmaxvq_u32(v33) & 0x80000000) != 0)
    {
      v35 = *(v28 + 32);
    }

    else
    {
      v34 = vsubq_f32(v32, v31);
      v34.i32[3] = 0;
      v35 = vmaxnmq_f32(v34, 0);
    }

    v36 = vmvnq_s8(vceqq_f32(v30, v35));
    v36.i32[3] = v36.i32[2];
    v37 = vmaxvq_u32(v36);
    if ((v37 & 0x80000000) != 0)
    {
      re::ecs2::UISortingComponent::setExtents(v28, v60);
    }

    v38 = *(a1 + 8);
    WeakRetained = objc_loadWeakRetained((a2 + 784));
    v40 = WeakRetained;
    if (WeakRetained)
    {
      v41 = WeakRetained[18];
      v38 = WeakRetained[19];
    }

    else
    {
      v41 = -1;
    }

    v42 = v51;
    if (*(v29 + 80) == v41)
    {
      v43 = *(v29 + 84);
      if (v43 == v38)
      {
        if ((v37 & 0x80000000) == 0)
        {
          if (!WeakRetained)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

LABEL_64:
        re::ecs2::Component::markDirty(v29);
        v42 = v51;
        if (!v40)
        {
LABEL_39:
          v44 = *(a6 + 672);
          v45 = *(v44 + 256);
          if (!v45)
          {
            v46 = re::ecs2::EntityComponentCollection::add((v44 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            v42 = v51;
            v45 = v46;
          }

          if ((*a3 & 1) != 0 || *(a6 + 312) != v42.f32[2])
          {
            re::ecs2::TransformComponent::setLocalPosition(v45, 0, vnegq_f32(v42).u32[2], 0);
            re::ecs2::Component::enqueueMarkDirty(v45);
            if (v15)
            {
              v49 = v51.n128_u64[0];
            }

            else
            {
              v49 = 0x3F8000003F800000;
            }

            if (v15)
            {
              v50 = __PAIR64__(v51.n128_u32[3], 1.0);
            }

            else
            {
              v50 = 1065353216;
            }

            re::ecs2::TransformComponent::setLocalScale(v45, v49, v50, 0);
            re::ecs2::Component::enqueueMarkDirty(v45);
          }

          else
          {
            if (v15)
            {
              v47 = v42.i64[0];
            }

            else
            {
              v47 = 0x3F8000003F800000;
            }

            if (v15)
            {
              v48 = __PAIR64__(v42.u32[3], 1.0);
            }

            else
            {
              v48 = 1065353216;
            }

            re::ecs2::TransformComponent::setLocalScale(v45, v47, v48, 0);
            re::ecs2::Component::enqueueMarkDirty(v45);
            if (!v27)
            {
              goto LABEL_59;
            }
          }

          *a3 = 1;
LABEL_59:
          result = v51;
          *(a6 + 304) = v51;
          *(a6 + 320) = v14;
          *(a6 + 322) = v13;
          *(a6 + 324) = v15;
          return result;
        }

LABEL_38:

        v42 = v51;
        goto LABEL_39;
      }
    }

    else
    {
      *(v29 + 80) = v41;
      v43 = *(v29 + 84);
    }

    if (v43 != v38)
    {
      *(v29 + 84) = v38;
    }

    goto LABEL_64;
  }

  return result;
}

double re::MXIManager::getMXIContextForEntity@<D0>(re::MXIManager *this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v18 = a2;
  v4 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 16, &v18);
  if (v4)
  {
    v5 = v4;
    v6 = *v4;
    v7 = *(v4 + 32);
    *(a3 + 16) = *(v4 + 16);
    *(a3 + 32) = v7;
    *a3 = v6;
    re::StringID::StringID((a3 + 48), (v4 + 48));
    v8 = *(v5 + 64);
    v9 = *(v5 + 80);
    v10 = *(v5 + 112);
    *(a3 + 96) = *(v5 + 96);
    *(a3 + 112) = v10;
    *(a3 + 64) = v8;
    *(a3 + 80) = v9;
    re::AssetHandle::AssetHandle((a3 + 128), (v5 + 128));
    re::AssetHandle::AssetHandle((a3 + 152), (v5 + 152));
    re::DynamicArray<re::AssetHandle>::DynamicArray(a3 + 176, (v5 + 176));
    v11 = *(v5 + 216);
    *(a3 + 216) = v11;
    if (v11)
    {
      v12 = (v11 + 8);
    }

    v13 = *(v5 + 224);
    v14 = *(v5 + 240);
    v15 = *(v5 + 272);
    *(a3 + 256) = *(v5 + 256);
    *(a3 + 272) = v15;
    *(a3 + 224) = v13;
    *(a3 + 240) = v14;
  }

  else
  {
    *&v13 = 0;
    *(a3 + 240) = 0u;
    *(a3 + 256) = 0u;
    *(a3 + 80) = 0u;
    *(a3 + 96) = 0u;
    *(a3 + 112) = 0u;
    *(a3 + 128) = 0u;
    *(a3 + 80) = xmmword_1E3063230;
    *(a3 + 96) = xmmword_1E308C1A0;
    v16.i64[0] = 0x7F0000007FLL;
    v16.i64[1] = 0x7F0000007FLL;
    *(a3 + 224) = 0u;
    *(a3 + 240) = vnegq_f32(v16);
    *(a3 + 192) = 0u;
    *(a3 + 208) = 0u;
    *(a3 + 160) = 0u;
    *(a3 + 176) = 0u;
    *(a3 + 144) = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 64) = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0u;
    *a3 = 0u;
    *(a3 + 56) = &str_67;
    *(a3 + 64) = 1065353216;
    *(a3 + 72) = 257;
    *(a3 + 74) = 1;
    *(a3 + 112) = 1045220557;
    *(a3 + 208) = 0;
    *(a3 + 216) = 0;
    *(a3 + 224) = 0;
    *(a3 + 116) = 0u;
    *(a3 + 132) = 0u;
    *(a3 + 148) = 0u;
    *(a3 + 164) = 0u;
    *(a3 + 180) = 0u;
    *(a3 + 196) = 0;
    *(a3 + 256) = v16;
    *(a3 + 272) = 0u;
    *(a3 + 272) = 0x3F80000000000002;
  }

  return *&v13;
}

void re::MXIManager::preloadMXIAssets(re::MXIManager *this)
{
  v2 = (this + 632);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiMaterial.rematerial", &v44);
  v3 = *v2;
  *v2 = v44;
  v44 = v3;
  v4 = *(this + 81);
  *(this + 81) = v45;
  v45 = v4;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiMaterialAlphaThreshold.rematerial", &v44);
  v5 = *(this + 41);
  *(this + 41) = v44;
  v44 = v5;
  v6 = *(this + 84);
  *(this + 84) = v45;
  v45 = v6;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenMaterial.rematerial", &v44);
  v7 = v2[3];
  v2[3] = v44;
  v44 = v7;
  v8 = *(this + 87);
  *(this + 87) = v45;
  v45 = v8;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenOpaqueMaterial.rematerial", &v44);
  v9 = *(this + 44);
  *(this + 44) = v44;
  v44 = v9;
  v10 = *(this + 90);
  *(this + 90) = v45;
  v45 = v10;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenTransparentMaterial.rematerial", &v44);
  v11 = v2[6];
  v2[6] = v44;
  v44 = v11;
  v12 = *(this + 93);
  *(this + 93) = v45;
  v45 = v12;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiAlphaMaterial.rematerial", &v44);
  v13 = *(this + 47);
  *(this + 47) = v44;
  v44 = v13;
  v14 = *(this + 96);
  *(this + 96) = v45;
  v45 = v14;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiAlphaOffscreenMaterial.rematerial", &v44);
  v15 = v2[9];
  v2[9] = v44;
  v44 = v15;
  v16 = *(this + 99);
  *(this + 99) = v45;
  v45 = v16;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiAlphaOffscreenOpaque.rematerial", &v44);
  v17 = *(this + 50);
  *(this + 50) = v44;
  v44 = v17;
  v18 = *(this + 102);
  *(this + 102) = v45;
  v45 = v18;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiProxyMaterialIOS_Reprojection.rematerial", &v44);
  v19 = (v2 + 12);
  v20 = v2[12];
  v2[12] = v44;
  v44 = v20;
  v21 = *(this + 105);
  *(this + 105) = v45;
  v45 = v21;
  re::AssetHandle::~AssetHandle(&v44);
  v22 = 0;
  v23 = (this + 848);
  v24 = this + 848;
  do
  {
    re::AssetManager::assetHandle(*(this + 26), off_1E871DA28[v22], &v44);
    v25 = *v24;
    *v24 = v44;
    v44 = v25;
    v26 = *(v24 + 2);
    *(v24 + 2) = v45;
    v45 = v26;
    re::AssetHandle::~AssetHandle(&v44);
    ++v22;
    v24 += 24;
  }

  while (v22 != 8);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartOpaqueMaterial.rematerial", &v44);
  v27 = *(this + 65);
  *(this + 65) = v44;
  v44 = v27;
  v28 = *(this + 132);
  *(this + 132) = v45;
  v45 = v28;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartTransparentMaterial.rematerial", &v44);
  v29 = v2[27];
  *(this + 1064) = v44;
  v44 = v29;
  v30 = *(this + 135);
  *(this + 135) = v45;
  v45 = v30;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartAlphaThresholdMaterial.rematerial", &v44);
  v31 = *(this + 68);
  *(this + 68) = v44;
  v44 = v31;
  v32 = *(this + 138);
  *(this + 138) = v45;
  v45 = v32;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartDrawAlphaOnlyMaterial.rematerial", &v44);
  v33 = v2[30];
  *(this + 1112) = v44;
  v44 = v33;
  v34 = *(this + 141);
  *(this + 141) = v45;
  v45 = v34;
  re::AssetHandle::~AssetHandle(&v44);
  re::AssetManager::assetHandle(*(this + 26), "engine:mxiDualMeshPartDrawOnesMaterial.rematerial", &v44);
  v35 = *(this + 71);
  *(this + 71) = v44;
  v44 = v35;
  v36 = *(this + 144);
  *(this + 144) = v45;
  v45 = v36;
  re::AssetHandle::~AssetHandle(&v44);
  if (*(this + 1200))
  {
    re::AssetManager::assetHandle(*(this + 26), "engine:engineDefaults.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxi.metallib", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenMaterial.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenOpaqueMaterial.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiOffscreenTransparentMaterial.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:mxiProxyMaterialIOS_Reprojection.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateDepth.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerialdefinition", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    re::AssetManager::assetHandle(*(this + 26), "engine:BuiltinRenderGraphResources/Common/separateStencil.rematerial", &v44);
    re::DynamicArray<re::AssetHandle>::add(this + 145, &v44);
    re::AssetHandle::~AssetHandle(&v44);
    v37 = *(this + 147);
    if (v37)
    {
      v38 = *(this + 149);
      v39 = 24 * v37;
      do
      {
        re::AssetHandle::AssetHandle(&v44, v38);
        re::AssetHandle::loadAsync(&v44);
        re::AssetHandle::~AssetHandle(&v44);
        v38 = (v38 + 24);
        v39 -= 24;
      }

      while (v39);
    }

    if (*(this + 1201))
    {
      v40 = (v2 + 3);
      v41 = (this + 704);
      v42 = (v2 + 6);
    }

    else
    {
      v40 = (v2 + 27);
      v41 = (this + 1088);
      v42 = (v2 + 30);
      re::AssetHandle::loadAsync(v2);
      re::AssetHandle::loadAsync((this + 656));
      re::AssetHandle::loadAsync((v2 + 3));
      re::AssetHandle::loadAsync((this + 704));
      re::AssetHandle::loadAsync((v2 + 6));
      re::AssetHandle::loadAsync((this + 752));
      re::AssetHandle::loadAsync((v2 + 9));
      re::AssetHandle::loadAsync((this + 800));
      re::AssetHandle::loadAsync((v2 + 12));
      v43 = 8;
      do
      {
        re::AssetHandle::loadAsync(v23);
        v23 = (v23 + 24);
        --v43;
      }

      while (v43);
      re::AssetHandle::loadAsync((this + 1040));
      v19 = (this + 1136);
    }

    re::AssetHandle::loadAsync(v40);
    re::AssetHandle::loadAsync(v41);
    re::AssetHandle::loadAsync(v42);
    re::AssetHandle::loadAsync(v19);
  }
}

void re::MXIManager::setupMXIProxy(uint64_t *a1, re::ecs2::Entity *a2, uint64_t a3, int a4, int a5, uint64_t a6, int a7)
{
  v13 = 0;
  v39 = *MEMORY[0x1E69E9840];
  v14 = a1 + 8;
  for (i = a1 + 106; ; i += 3)
  {
    v16 = *&v14[2 * v13];
    if (!v16 || v16 == a3)
    {
      break;
    }

    if (++v13 == 8)
    {
      v18 = *re::mxiLogObjects(a1);
      if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
      {
        *buf = 0;
        _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "[MXIManager] Unable to allocate MXI proxy material, All 8 MXI proxy materials used", buf, 2u);
      }

      return;
    }
  }

  *&v14[2 * v13] = a3;
  v19 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(v19, 4uLL, &v36);
  v20 = v36;
  re::ecs2::EntityComponentCollection::remove((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v22 = *(v20 + 24);
  if (!v22)
  {
    v21 = re::ecs2::EntityComponentCollection::add((v20 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
    v22 = v21;
  }

  if (*(a6 + 73) == 1 && *(a1 + 11) <= 1u)
  {
    i = a1 + 103;
  }

  v23 = i[1];
  if (!v23 || (v24 = atomic_load((v23 + 896)), v24 != 2))
  {
    v25 = *re::mxiLogObjects(v21);
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      v26 = v25;
      re::AssetHandle::getDescription(i, 0, buf);
      v27 = (v34 & 1) != 0 ? *&v35[7] : v35;
      *v37 = 136315138;
      v38 = v27;
      _os_log_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", v37, 0xCu);

      if (*buf)
      {
        if (v34)
        {
          (*(**buf + 40))();
        }
      }
    }

    re::AssetHandle::loadNow(i[1], 0);
  }

  re::DynamicArray<re::AssetHandle>::add((v22 + 7), i);
  re::ecs2::Component::markDirty(v22);
  if (a4)
  {
    v28 = re::ecs2::EntityComponentCollection::getOrAdd((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *(v28 + 28) = 1 << (a5 ^ 1);
    re::ecs2::Component::markDirty(v28);
  }

  if (a7)
  {
    re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>((a1 + 27), buf);
    re::MaterialParameterBlock::setBool(*buf, "performSRGBConversion", 1, v32);
    v32[0] = 0;
    v29 = *(v36 + 26);
    if (!v29)
    {
      v29 = re::ecs2::EntityComponentCollection::add((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v29 + 72);
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v29 + 72), buf);
    re::ecs2::Component::markDirty(v29);
    if (*buf)
    {
    }
  }

  v30 = v36;
  re::ecs2::Entity::setParentInternal(v36, a2, 0xFFFFFFFFFFFFFFFFLL);
  v31 = *(v30 + 39);
  if (a4 && !a5)
  {
    *(a6 + 32) = v31;
    *(a6 + 296) = v30;
  }

  else
  {
    *(a6 + 16) = v31;
    *(a6 + 288) = v30;
  }

  *(a6 + 40) = v13;
}

void re::MXIManager::createMXIEntityForSplit(uint64_t a1, re::ecs2::Entity *a2, float32x2_t *a3, re::MeshAsset *a4, uint64_t a5, int a6, uint64_t a7)
{
  v116 = *MEMORY[0x1E69E9840];
  v14 = re::ecs2::EntityFactory::instance(a1);
  re::ecs2::EntityFactory::make(v14, 4uLL, &v106);
  v15 = v106;
  re::ecs2::EntityComponentCollection::remove((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v16 = re::AssetHandle::loadedAsset<re::MeshAsset>(a4);
  if (!v16)
  {
    goto LABEL_6;
  }

  v17 = 32;
  if (*(v16 + 1264))
  {
    v17 = 608;
  }

  if (*(v16 + v17))
  {
    v18 = re::MeshAsset::partCountForModel(v16, 0) == 2;
  }

  else
  {
LABEL_6:
    v18 = 0;
  }

  v19 = *(v15 + 24);
  if (!v19)
  {
    v19 = re::ecs2::EntityComponentCollection::add((v15 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
  }

  re::AssetHandle::operator=((v19 + 4), a4);
  re::DynamicArray<re::AssetHandle>::clear((v19 + 7));
  if (v18)
  {
    v107 = 0;
    v108 = 0;
    v109 = 0;
    if (a3[10].i8[2] == 2 && a6)
    {
      v20 = 1112;
      if (a3[10].i8[0])
      {
        v20 = 776;
      }

      v21 = re::AssetHandle::AssetHandle(&v114, (a1 + v20));
      if (!*(&v114 + 1) || (v22 = atomic_load((*(&v114 + 1) + 896)), v22 != 2))
      {
        v23 = *re::mxiLogObjects(v21);
        if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
        {
          v24 = v23;
          re::AssetHandle::getDescription(&v114, 0, &v89);
          v25 = (BYTE8(v89) & 1) != 0 ? v90 : (&v89 + 9);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v25;
          _os_log_impl(&dword_1E1C61000, v24, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", &buf, 0xCu);

          if (v89)
          {
            if (BYTE8(v89))
            {
              (*(*v89 + 40))();
            }
          }
        }

        re::AssetHandle::loadNow(*(&v114 + 1), 0);
      }

      v26 = 1136;
      if (a3[10].i8[0])
      {
        v26 = 800;
      }

      v27 = re::AssetHandle::AssetHandle(&buf, (a1 + v26));
      if (*(&buf + 1))
      {
        v28 = atomic_load((*(&buf + 1) + 896));
        if (v28 == 2)
        {
          goto LABEL_68;
        }
      }

      v29 = *re::mxiLogObjects(v27);
      if (!os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
      {
LABEL_67:
        re::AssetHandle::loadNow(*(&buf + 1), 0);
LABEL_68:
        re::DynamicArray<re::AssetHandle>::add((v19 + 7), &v114);
        re::DynamicArray<re::AssetHandle>::add((v19 + 7), &buf);
        re::AssetHandle::~AssetHandle(&buf);
        re::AssetHandle::~AssetHandle(&v114);
        goto LABEL_82;
      }

      v84 = a7;
      v30 = a2;
      v31 = v29;
      re::AssetHandle::getDescription(&buf, 0, &v89);
      if (BYTE8(v89))
      {
        v32 = v90;
      }

      else
      {
        v32 = &v89 + 9;
      }

      *v110 = 136315138;
      v111 = v32;
    }

    else
    {
      v114 = 0uLL;
      v115 = 0;
      if (a3[10].i8[0])
      {
        v36 = 728;
      }

      else
      {
        v36 = 1064;
        if (a3[75].f32[1] > 0.0)
        {
          v36 = 1088;
        }
      }

      v37 = re::AssetHandle::operator=(&v114, (a1 + v36));
      if (!*(&v114 + 1) || (v38 = atomic_load((*(&v114 + 1) + 896)), v38 != 2))
      {
        v39 = *re::mxiLogObjects(v37);
        if (os_log_type_enabled(v39, OS_LOG_TYPE_DEFAULT))
        {
          v40 = v39;
          re::AssetHandle::getDescription(&v114, 0, &v89);
          v41 = (BYTE8(v89) & 1) != 0 ? v90 : (&v89 + 9);
          LODWORD(buf) = 136315138;
          *(&buf + 4) = v41;
          _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", &buf, 0xCu);

          if (v89)
          {
            if (BYTE8(v89))
            {
              (*(*v89 + 40))();
            }
          }
        }

        re::AssetHandle::loadNow(*(&v114 + 1), 0);
      }

      buf = 0uLL;
      v113 = 0;
      v42 = 1040;
      if (a3[10].i8[0])
      {
        v42 = 704;
      }

      v43 = re::AssetHandle::operator=(&buf, (a1 + v42));
      if (*(&buf + 1))
      {
        v44 = atomic_load((*(&buf + 1) + 896));
        if (v44 == 2)
        {
          goto LABEL_68;
        }
      }

      v45 = *re::mxiLogObjects(v43);
      if (!os_log_type_enabled(v45, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_67;
      }

      v84 = a7;
      v30 = a2;
      v31 = v45;
      re::AssetHandle::getDescription(&buf, 0, &v89);
      if (BYTE8(v89))
      {
        v46 = v90;
      }

      else
      {
        v46 = &v89 + 9;
      }

      *v110 = 136315138;
      v111 = v46;
    }

    _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", v110, 0xCu);

    if (v89 && (BYTE8(v89) & 1) != 0)
    {
      (*(*v89 + 40))();
    }

    a2 = v30;
    a7 = v84;
    goto LABEL_67;
  }

  v107 = 0;
  v108 = 0;
  v109 = 0;
  v33 = a3[10].u8[0];
  if (a3[10].i8[2] == 2 && a6)
  {
    _ZF = v33 == 0;
    v35 = 752;
    if (!_ZF)
    {
      v35 = 776;
    }
  }

  else if (v33)
  {
    v35 = 680;
  }

  else
  {
    v35 = 632;
    if (a3[75].f32[1] > 0.0)
    {
      v35 = 656;
    }
  }

  v47 = re::AssetHandle::operator=(&v107, (a1 + v35));
  if (!v108 || (v48 = atomic_load((v108 + 896)), v48 != 2))
  {
    v49 = *re::mxiLogObjects(v47);
    if (os_log_type_enabled(v49, OS_LOG_TYPE_DEFAULT))
    {
      v50 = v49;
      re::AssetHandle::getDescription(&v107, 0, &v89);
      v51 = (BYTE8(v89) & 1) != 0 ? v90 : (&v89 + 9);
      LODWORD(v114) = 136315138;
      *(&v114 + 4) = v51;
      _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, "[MXIManager] MXI material not Loaded: %s", &v114, 0xCu);

      if (v89)
      {
        if (BYTE8(v89))
        {
          (*(*v89 + 40))();
        }
      }
    }

    re::AssetHandle::loadNow(v108, 0);
  }

  re::DynamicArray<re::AssetHandle>::add((v19 + 7), &v107);
LABEL_82:
  re::AssetHandle::~AssetHandle(&v107);
  re::ecs2::Component::markDirty(v19);
  re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>((a1 + 216), &v114);
  v52 = a3[10].u8[2];
  switch(v52)
  {
    case 1:
      re::MaterialParameterBlock::setFloat(v114, "splitDepth", a3[10].f32[1], v103);
      v103[0] = 0;
      re::MaterialParameterBlock::setUint(v114, "vertexStatusToDraw", a6 ^ 1, v102);
      v102[0] = 0;
      break;
    case 2:
      if (a6)
      {
        v62 = a3[10].f32[1];
      }

      else
      {
        v62 = 10000.0;
      }

      re::MaterialParameterBlock::setFloat(v114, "splitDepth", v62, v98);
      v98[0] = 0;
      re::MaterialParameterBlock::setUint(v114, "vertexStatusToDraw", 0, v97);
      v97[0] = 0;
      if (a3[11].i8[0] == 1 && a6)
      {
        __asm { FMOV            V1.2S, #-1.0 }

        v64 = a3[12];
        v65 = vmla_f32(COERCE_FLOAT32X2_T(-_D1), COERCE_FLOAT32X2_T(-2.00000048), v64);
        v66 = vsub_f32(a3[13], v64);
        __asm { FMOV            V2.2S, #1.0 }

        re::MaterialParameterBlock::setVector4F(v114, "screenUVSubRect", v65, *&vdiv_f32(_D2, v66), v96);
        v96[0] = 0;
      }

      break;
    case 3:
      v53 = 0.0;
      if (a6)
      {
        v53 = a3[10].f32[1];
      }

      re::MaterialParameterBlock::setFloat(v114, "splitDepth", v53, v101);
      v101[0] = 0;
      re::MaterialParameterBlock::setUint(v114, "vertexStatusToDraw", a6 ^ 1, v100);
      v100[0] = 0;
      if (a3[11].i8[0] == 1 && a6)
      {
        __asm { FMOV            V1.2S, #-1.0 }

        v58 = a3[12];
        v59 = vmla_f32(COERCE_FLOAT32X2_T(-_D1), COERCE_FLOAT32X2_T(-2.00000048), v58);
        v60 = vsub_f32(a3[13], v58);
        __asm { FMOV            V2.2S, #1.0 }

        re::MaterialParameterBlock::setVector4F(v114, "screenUVSubRect", v59, *&vdiv_f32(_D2, v60), v99);
        v99[0] = 0;
      }

      break;
    default:
      re::MaterialParameterBlock::setFloat(v114, "splitDepth", 10000.0, v105);
      v105[0] = 0;
      re::MaterialParameterBlock::setUint(v114, "vertexStatusToDraw", 0, v104);
      v104[0] = 0;
      break;
  }

  if (a3[10].i8[2])
  {
    v68 = re::ecs2::EntityComponentCollection::getOrAdd((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *(v68 + 28) = 1 << (a6 ^ 1);
    re::ecs2::Component::markDirty(v68);
  }

  if (*(a5 + 16))
  {
    v69 = 0;
    v70 = 0;
    v71 = &kMXIMaterialParametersTextureArray;
    do
    {
      v72 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((*(a5 + 32) + v69));
      v73 = *v71;
      v71 += 2;
      v94 = v73 & 0x7FFFFFFFFFFFFFFFLL;
      re::MaterialParameterBlock::setTextureHandle(v114, &v94, (v72 + 8), v95);
      v94 = 0;
      v95[0] = 0;
      ++v70;
      v69 += 24;
    }

    while (v70 < *(a5 + 16));
  }

  v74 = a3[70].f32[1];
  v75 = a3[71].f32[0];
  v76 = tanf(v74 * 0.5);
  LODWORD(v77) = 0;
  *(&v77 + 1) = 1.0 / v76;
  v89 = COERCE_UNSIGNED_INT((1.0 / v76) / v75);
  v90 = v77;
  v91 = xmmword_1E308C1B0;
  v92 = xmmword_1E308C1C0;
  v107 = 0x131B97A52F2A913;
  re::MaterialParameterBlock::setConstant(v114, &v107, 0x40uLL, &v89, 50, v93);
  v93[0] = 0;
  v78 = tan(v74 * 0.5);
  *&v78 = v78 + v78;
  v79.f32[0] = v75 * *&v78;
  v79.i32[1] = LODWORD(v78);
  *&v89 = vdiv_f32(0x4000000040000000, v79);
  v107 = 0x273B31D9098848B8;
  re::MaterialParameterBlock::setConstant(v114, &v107, 8uLL, &v89, 32, v88);
  v88[0] = 0;
  if (a3[75].f32[1] > 0.0)
  {
    LODWORD(v107) = a3[75].i32[1];
    *&v89 = 0x2AD486A8BA18FCADLL;
    re::MaterialParameterBlock::setConstant(v114, &v89, 4uLL, &v107, 1, v87);
    v87[0] = 0;
  }

  LODWORD(v107) = a3[71].i32[0];
  *&v89 = 0x1259B4641194293;
  re::MaterialParameterBlock::setConstant(v114, &v89, 4uLL, &v107, 1, v86);
  v86[0] = 0;
  LOBYTE(v107) = a3[74].i8[0];
  *&v89 = 0x7159284529FD2E68;
  re::MaterialParameterBlock::setConstant(v114, &v89, 1uLL, &v107, 2, v85);
  v85[0] = 0;
  v80 = *(v106 + 26);
  if (!v80)
  {
    v80 = re::ecs2::EntityComponentCollection::add((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v80 + 72);
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v80 + 72), &v114);
  if (v18)
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add((v80 + 72), &v114);
  }

  re::ecs2::Component::markDirty(v80);
  v81 = v106;
  v82 = re::ecs2::EntityComponentCollection::add((v106 + 48), re::ecs2::ComponentImpl<re::ecs2::ClippingOptOutComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  *(v82 + 25) = 1;
  re::ecs2::Component::markDirty(v82);
  v83 = *(v81 + 39);
  *(a7 + 8) = v83;
  if (a3[10].i8[2] && (a6 & 1) == 0)
  {
    *(a7 + 24) = v83;
  }

  re::ecs2::Entity::setParentInternal(v81, a2, 0xFFFFFFFFFFFFFFFFLL);
  if (v114)
  {
  }
}

__n128 re::MXIContext::ReprojectionContext::notifyFrame@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, simd_float4 *a3@<X2>, float32x4_t *a4@<X3>, uint64_t a5@<X4>, int a6@<W5>, _DWORD *a7@<X6>, uint64_t a8@<X8>)
{
  if (*(a1 + 24) != a5)
  {
    v16 = 0;
    ++*(a1 + 252);
    *(a1 + 256) = 0;
    v17 = *a4;
    v18 = a4[1];
    v19 = a4[2];
    v20 = a4[3];
    v21 = a3[1];
    v22 = a3[2];
    v23 = a3[3];
    v169 = *a3;
    v170 = v21;
    v171 = v22;
    v172 = v23;
    do
    {
      *(&v173 + v16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v17, COERCE_FLOAT(*(&v169 + v16))), v18, *(&v169 + v16), 1), v19, *(&v169 + v16), 2), v20, *(&v169 + v16), 3);
      v16 += 16;
    }

    while (v16 != 64);
    v25 = v173;
    v24 = v174;
    v26 = v175;
    v27 = v176;
    v167 = v176;
    v168 = v175;
    v165 = v173;
    v166 = v174;
    if (*a2 == 1 && (a6 & 1) == 0)
    {
      v28 = 0;
      v29 = *(a1 + 96);
      v30 = *(a1 + 112);
      v31 = *(a1 + 128);
      v32 = *(a1 + 144);
      v33 = *(a1 + 48);
      v34 = *(a1 + 64);
      v35 = *(a1 + 80);
      v169 = *(a1 + 32);
      v170 = v33;
      v171 = v34;
      v172 = v35;
      do
      {
        *(&v173 + v28) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v29, COERCE_FLOAT(*(&v169 + v28))), v30, *(&v169 + v28), 1), v31, *(&v169 + v28), 2), v32, *(&v169 + v28), 3);
        v28 += 16;
      }

      while (v28 != 64);
      v36.columns[0] = v173;
      v36.columns[1] = v174;
      v36.columns[2] = v175;
      v36.columns[3] = v176;
      v38 = *(a2 + 16);
      v37 = *(a2 + 32);
      v39 = vcgtq_f32(v38, v37);
      v39.i32[3] = v39.i32[2];
      if ((vmaxvq_u32(v39) & 0x80000000) != 0)
      {
        v177 = __invert_f4(v36);
        v87 = 0;
        v169 = v165;
        v170 = v166;
        v171 = v168;
        v172 = v167;
        do
        {
          *(&v173 + v87) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v177.columns[0], COERCE_FLOAT(*(&v169 + v87))), v177.columns[1], *(&v169 + v87), 1), v177.columns[2], *(&v169 + v87), 2), v177.columns[3], *(&v169 + v87), 3);
          v87 += 16;
        }

        while (v87 != 64);
        v88 = vnegq_f32(v173);
        v89 = vsubq_f32(xmmword_1E308C1D0, vaddq_f32(v176, vmlaq_f32(vsubq_f32(v174, v173), 0, v175)));
        v90 = vmulq_f32(v89, v89);
        v91 = fmaxf(vaddv_f32(vadd_f32(*v90.i8, *&vextq_s8(v90, v90, 8uLL))), 0.0);
        v92 = vsubq_f32(xmmword_1E308C1E0, vaddq_f32(v176, vmlaq_f32(vaddq_f32(v173, v174), 0, v175)));
        v93 = vmulq_f32(v92, v92);
        v94 = vaddv_f32(vadd_f32(*v93.i8, *&vextq_s8(v93, v93, 8uLL)));
        if (v91 < v94)
        {
          v91 = v94;
        }

        __asm { FMOV            V7.4S, #-1.0 }

        v100 = vmulq_f32(v173, 0);
        v101 = vsubq_f32(xmmword_1E308C1F0, vaddq_f32(v176, vmlaq_f32(vmlaq_f32(v173, _Q7, v174), 0, v175)));
        v102 = vmulq_f32(v101, v101);
        v103 = vaddv_f32(vadd_f32(*v102.i8, *&vextq_s8(v102, v102, 8uLL)));
        if (v91 >= v103)
        {
          v103 = v91;
        }

        v104 = vsubq_f32(xmmword_1E308C200, vaddq_f32(v176, vmlaq_f32(vmlaq_f32(v88, _Q7, v174), 0, v175)));
        v105 = vmulq_f32(v104, v104);
        v106 = vaddv_f32(vadd_f32(*v105.i8, *&vextq_s8(v105, v105, 8uLL)));
        if (v103 >= v106)
        {
          v106 = v103;
        }

        v107 = vsubq_f32(xmmword_1E30474D0, vaddq_f32(v176, vmlaq_f32(vmlaq_f32(v100, 0, v174), 0, v175)));
        v108 = vmulq_f32(v107, v107);
        v109 = vaddv_f32(vadd_f32(*v108.i8, *&vextq_s8(v108, v108, 8uLL)));
        if (v106 >= v109)
        {
          v109 = v106;
        }

        v86 = sqrtf(v109) * 5.0;
      }

      else
      {
        v40.i64[0] = 0x3F0000003F000000;
        v40.i64[1] = 0x3F0000003F000000;
        v41 = vmulq_f32(vaddq_f32(v38, v37), v40);
        v42 = vmulq_n_f32(v173, v41.f32[0]);
        v43 = vmlaq_lane_f32(v42, v174, *v41.f32, 1);
        v44 = vaddq_f32(v176, vmlaq_laneq_f32(v43, v175, v41, 2));
        v45 = vmulq_n_f32(v25, v41.f32[0]);
        v46 = vmlaq_lane_f32(v45, v24, *v41.f32, 1);
        v47 = vaddq_f32(v27, vmlaq_laneq_f32(v46, v26, v41, 2));
        v48 = vsubq_f32(vdivq_f32(v44, vdupq_laneq_s32(v44, 3)), vdivq_f32(v47, vdupq_laneq_s32(v47, 3)));
        v49 = vmulq_f32(v48, v48);
        v50 = fmaxf(v49.f32[2] + vaddv_f32(*v49.f32), 0.0);
        v51 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v37.f32[0]), v174, *v41.f32, 1), v175, v41, 2));
        v52 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v37.f32[0]), v24, *v41.f32, 1), v26, v41, 2));
        v53 = vsubq_f32(vdivq_f32(v51, vdupq_laneq_s32(v51, 3)), vdivq_f32(v52, vdupq_laneq_s32(v52, 3)));
        v54 = vmulq_f32(v53, v53);
        v55 = vaddv_f32(*v54.f32);
        if (v50 < (v54.f32[2] + v55))
        {
          v50 = v54.f32[2] + v55;
        }

        v56 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v173, v38.f32[0]), v174, *v41.f32, 1), v175, v41, 2));
        v57 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25, v38.f32[0]), v24, *v41.f32, 1), v26, v41, 2));
        v58 = vsubq_f32(vdivq_f32(v56, vdupq_laneq_s32(v56, 3)), vdivq_f32(v57, vdupq_laneq_s32(v57, 3)));
        v59 = vmulq_f32(v58, v58);
        v60 = v59.f32[2] + vaddv_f32(*v59.f32);
        if (v50 >= v60)
        {
          v60 = v50;
        }

        LODWORD(v61) = vshrq_n_u64(v37, 0x20uLL).u32[0];
        v62 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_n_f32(v42, v174, v61), v175, v41, 2));
        v63 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_n_f32(v45, v24, v61), v26, v41, 2));
        v64 = vsubq_f32(vdivq_f32(v62, vdupq_laneq_s32(v62, 3)), vdivq_f32(v63, vdupq_laneq_s32(v63, 3)));
        v65 = vmulq_f32(v64, v64);
        v66 = v65.f32[2] + vaddv_f32(*v65.f32);
        v67 = *(a2 + 20);
        v68 = vaddq_f32(v176, vmlaq_laneq_f32(vmlaq_n_f32(v42, v174, *&v67), v175, v41, 2));
        v69 = vdupq_laneq_s32(v68, 3);
        if (v60 < v66)
        {
          v60 = v66;
        }

        v70 = vaddq_f32(v27, vmlaq_laneq_f32(vmlaq_n_f32(v45, v24, *&v67), v26, v41, 2));
        v71 = vsubq_f32(vdivq_f32(v68, v69), vdivq_f32(v70, vdupq_laneq_s32(v70, 3)));
        v72 = vmulq_f32(v71, v71);
        v73 = vaddv_f32(*v72.f32);
        if (v60 < (v72.f32[2] + v73))
        {
          v60 = v72.f32[2] + v73;
        }

        v74 = *(a2 + 40);
        v75 = vaddq_f32(v176, vmlaq_n_f32(v43, v175, *&v74));
        v76 = vaddq_f32(v27, vmlaq_n_f32(v46, v26, *&v74));
        v77 = vsubq_f32(vdivq_f32(v75, vdupq_laneq_s32(v75, 3)), vdivq_f32(v76, vdupq_laneq_s32(v76, 3)));
        v78 = vmulq_f32(v77, v77);
        v79 = vaddv_f32(*v78.f32);
        if (v60 < (v78.f32[2] + v79))
        {
          v60 = v78.f32[2] + v79;
        }

        v80 = *(a2 + 24);
        v81 = vaddq_f32(v176, vmlaq_n_f32(v43, v175, *&v80));
        v82 = vaddq_f32(v27, vmlaq_n_f32(v46, v26, *&v80));
        v83 = vsubq_f32(vdivq_f32(v81, vdupq_laneq_s32(v81, 3)), vdivq_f32(v82, vdupq_laneq_s32(v82, 3)));
        v84 = vmulq_f32(v83, v83);
        v85 = vaddv_f32(*v84.f32);
        if (v60 < (v84.f32[2] + v85))
        {
          v60 = v84.f32[2] + v85;
        }

        v86 = sqrtf(v60);
      }

      *(a1 + 240) = v86;
      v110 = *(a2 + 48);
      v111 = v86 < *(a2 + 52) && v110 > 1;
      if (v111 || v86 < *(a1 + 248) && v110 > *(a1 + 252))
      {
        *(a1 + 256) = 1;
      }
    }

    v112 = re::internal::enableSignposts(0, 0);
    if (v112)
    {
      if (*(a1 + 256))
      {
        v120 = "Reprojs";
      }

      else
      {
        v120 = "Renders";
      }

      re::packCharArrayToUInt64ForAriadne(v120, 0);
      v112 = kdebug_trace();
    }

    if (*(a1 + 256))
    {
      *&v121 = re::createWarpMatrixForSourceProjection(*(a1 + 96), *(a1 + 112), *(a1 + 128), *(a1 + 144), *(a1 + 32), *(a1 + 48), *(a1 + 64), *(a1 + 80), v112, v113, v114, v115, v116, v117, v118, v119, *a4, a4[1], a4[2], a4[3], *a3, a3[1], a3[2], a3[3]);
      v122 = *(a1 + 224);
      *(a1 + 160) = v121;
      *(a1 + 176) = v123;
      *(a1 + 192) = v124;
      *(a1 + 208) = v125;
      if ((v122 & 1) == 0)
      {
        *(a1 + 224) = 1;
      }
    }

    else
    {
      v126 = *(a2 + 16);
      v127 = *(a2 + 32);
      v128 = vcgtq_f32(v126, v127);
      v128.i32[3] = v128.i32[2];
      if ((vmaxvq_u32(v128) & 0x80000000) == 0)
      {
        v129 = vaddq_f32(v167, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165, v127.f32[0]), v166, *v127.f32, 1), v168, v127, 2));
        v130 = vaddq_f32(v167, vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v165, v126.f32[0]), v166, *v126.f32, 1), v168, v126, 2));
        *(a1 + 244) = fabsf(COERCE_FLOAT(vsubq_f32(vdivq_f32(v129, vdupq_laneq_s32(*&v129, 3)), vdivq_f32(v130, vdupq_laneq_s32(*&v130, 3))).i32[2]));
        if (a6)
        {
          v131 = 0;
          v132 = *a4;
          v133 = a4[1];
          v134 = a4[2];
          v135 = a4[3];
          v169 = xmmword_1E308C210;
          v170 = xmmword_1E3047680;
          v171 = xmmword_1E308C220;
          v172 = xmmword_1E30474D0;
          do
          {
            *(&v173 + v131) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v132, COERCE_FLOAT(*(&v169 + v131))), v133, *(&v169 + v131), 1), v134, *(&v169 + v131), 2), v135, *(&v169 + v131), 3);
            v131 += 16;
          }

          while (v131 != 64);
          v136 = 0;
          v137 = v173;
          v138 = v174;
          v139 = v175;
          v140 = v176;
          v141 = a3[1];
          v142 = a3[2];
          v143 = a3[3];
          v169 = *a3;
          v170 = v141;
          v171 = v142;
          v172 = v143;
          do
          {
            *(&v173 + v136) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v137, COERCE_FLOAT(*(&v169 + v136))), v138, *(&v169 + v136), 1), v139, *(&v169 + v136), 2), v140, *(&v169 + v136), 3);
            v136 += 16;
          }

          while (v136 != 64);
          v144 = *(a2 + 16);
          v145 = *(a2 + 32);
          v146 = vcgtq_f32(v144, v145);
          v146.i32[3] = v146.i32[2];
          v147 = vaddq_f32(v144, v145);
          v145.i64[0] = 0x3F0000003F000000;
          v145.i64[1] = 0x3F0000003F000000;
          v148 = vmulq_f32(v147, v145).u64[0];
          if ((vmaxvq_u32(v146) & 0x80000000) == 0)
          {
            v149 = v148;
          }

          else
          {
            v149 = 0;
          }

          v150 = vdupq_n_s32(v149);
          v151 = *(a2 + 40);
          v152 = vdupq_n_s32(HIDWORD(v149));
          v153 = vaddq_f32(v167, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v165, v150), v152, v166), v168, *&v151));
          v154 = vaddq_f32(v176, vmlaq_n_f32(vmlaq_f32(vmulq_f32(v173, v150), v152, v174), v175, *&v151));
          v155 = vsubq_f32(vdivq_f32(v153, vdupq_laneq_s32(v153, 3)), vdivq_f32(v154, vdupq_laneq_s32(v154, 3)));
          v156 = vmulq_f32(v155, v155);
          *(a1 + 248) = sqrtf(v156.f32[2] + vaddv_f32(*v156.f32));
        }
      }

      *(a1 + 252) = 0;
      v157 = *a4;
      v158 = a4[1];
      v159 = a4[3];
      *(a1 + 128) = a4[2];
      *(a1 + 144) = v159;
      *(a1 + 96) = v157;
      *(a1 + 112) = v158;
      v160 = *a3;
      v161 = a3[1];
      v162 = a3[3];
      *(a1 + 64) = a3[2];
      *(a1 + 80) = v162;
      *(a1 + 32) = v160;
      *(a1 + 48) = v161;
      if (*(a1 + 224) == 1)
      {
        *(a1 + 224) = 0;
      }

      *(a1 + 240) = 0;
    }

    *(a1 + 24) = a5;
  }

  *a7 = *(a1 + 240);
  v163 = *(a1 + 208);
  *(a8 + 32) = *(a1 + 192);
  *(a8 + 48) = v163;
  *(a8 + 64) = *(a1 + 224);
  result = *(a1 + 176);
  *a8 = *(a1 + 160);
  *(a8 + 16) = result;
  return result;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0338;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0338;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF0390;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF0390;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF03E8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::MXIManager,REEventHandlerResult (re::MXIManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF03E8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1, v3++);
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

void re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 16) + 816 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::AssetHandle::~AssetHandle((v2 + 632));
    re::AssetHandle::~AssetHandle((v2 + 608));
    v3 = *(v2 + 232);
    if (v3)
    {

      *(v2 + 232) = 0;
    }

    re::DynamicArray<re::AssetHandle>::deinit(v2 + 192);
    re::AssetHandle::~AssetHandle((v2 + 168));
    re::AssetHandle::~AssetHandle((v2 + 144));

    re::StringID::destroyString((v2 + 64));
  }
}

uint64_t re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v4);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = 48 * v4;
  *(v7 + v9) = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *(v7 + v9) = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v7 + 48 * v4;
}

void re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

uint64_t re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::StringID,re::Vector3<float>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 24));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        *(result + 8) = *(result + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 8) = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        *(result + 16) = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        *(result + 32) = *(*(a2 + 16) + v5 + 32);
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 816 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 816 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 816 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 816 * v8) & 0x7FFFFFFF;
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
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

uint64_t re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v52, 0, 36);
          *&v52[36] = 0x7FFFFFFFLL;
          re::HashTable<re::internal::FontNameAndGlyphIndexCacheKey,re::GeomBuildExtrudedTextSupport::Glyph,re::Hash<re::internal::FontNameAndGlyphIndexCacheKey>,re::EqualTo<re::internal::FontNameAndGlyphIndexCacheKey>,true,false>::init(v52, v9, v8);
          v11 = *v52;
          *v52 = *a1;
          *a1 = v11;
          v12 = *&v52[16];
          *&v52[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v52[24];
          *&v52[24] = *(a1 + 24);
          v13 = *&v52[32];
          *(a1 + 24) = v14;
          ++*&v52[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 0;
            do
            {
              if ((*(*&v52[16] + v16) & 0x80000000) != 0)
              {
                v18 = *&v52[16] + v16;
                v19 = re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(*&v52[16] + v16 + 800) % *(a1 + 24));
                *(v19 + 8) = *(v18 + 8);
                v20 = *(v18 + 16);
                v21 = *(v18 + 48);
                *(v19 + 32) = *(v18 + 32);
                *(v19 + 48) = v21;
                *(v19 + 16) = v20;
                v22 = *(v18 + 64);
                *(v19 + 64) = *(v19 + 64) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v19 + 64) = *(v18 + 64) & 0xFFFFFFFFFFFFFFFELL | v22 & 1;
                *(v19 + 72) = *(v18 + 72);
                *(v18 + 64) = 0;
                *(v18 + 72) = &str_67;
                v24 = *(v18 + 112);
                v23 = *(v18 + 128);
                v25 = *(v18 + 96);
                *(v19 + 80) = *(v18 + 80);
                *(v19 + 96) = v25;
                *(v19 + 112) = v24;
                *(v19 + 128) = v23;
                *(v19 + 152) = 0u;
                *(v19 + 144) = 0;
                *(v19 + 152) = *(v18 + 152);
                *(v18 + 152) = 0;
                v26 = *(v19 + 144);
                *(v19 + 144) = 0;
                *(v19 + 144) = *(v18 + 144);
                *(v18 + 144) = v26;
                v27 = *(v19 + 160);
                *(v19 + 160) = *(v18 + 160);
                *(v18 + 160) = v27;
                *(v19 + 168) = 0u;
                *(v19 + 184) = 0;
                *(v19 + 176) = *(v18 + 176);
                *(v18 + 176) = 0;
                v28 = *(v19 + 168);
                *(v19 + 168) = 0;
                *(v19 + 168) = *(v18 + 168);
                *(v18 + 168) = v28;
                v29 = *(v19 + 184);
                *(v19 + 184) = *(v18 + 184);
                *(v18 + 184) = v29;
                *(v19 + 224) = 0;
                *(v19 + 192) = 0;
                *(v19 + 200) = 0u;
                *(v19 + 216) = 0;
                v30 = *(v18 + 200);
                *(v19 + 192) = *(v18 + 192);
                *(v19 + 200) = v30;
                *(v18 + 192) = 0;
                *(v18 + 200) = 0;
                v31 = *(v19 + 208);
                *(v19 + 208) = *(v18 + 208);
                *(v18 + 208) = v31;
                v32 = *(v19 + 224);
                *(v19 + 224) = *(v18 + 224);
                *(v18 + 224) = v32;
                ++*(v18 + 216);
                ++*(v19 + 216);
                *(v19 + 232) = *(v18 + 232);
                *(v18 + 232) = 0;
                v33 = *(v18 + 240);
                v34 = *(v18 + 256);
                v35 = *(v18 + 288);
                *(v19 + 272) = *(v18 + 272);
                *(v19 + 288) = v35;
                *(v19 + 240) = v33;
                *(v19 + 256) = v34;
                memcpy((v19 + 304), (v18 + 304), 0x128uLL);
                *(v19 + 608) = 0;
                *(v19 + 616) = 0u;
                *(v19 + 616) = *(v18 + 616);
                *(v18 + 616) = 0;
                v36 = *(v19 + 608);
                *(v19 + 608) = 0;
                *(v19 + 608) = *(v18 + 608);
                *(v18 + 608) = v36;
                v37 = *(v19 + 624);
                *(v19 + 624) = *(v18 + 624);
                *(v18 + 624) = v37;
                *(v19 + 632) = 0u;
                *(v19 + 648) = 0;
                *(v19 + 640) = *(v18 + 640);
                *(v18 + 640) = 0;
                v38 = *(v19 + 632);
                *(v19 + 632) = 0;
                *(v19 + 632) = *(v18 + 632);
                *(v18 + 632) = v38;
                v39 = *(v19 + 648);
                *(v19 + 648) = *(v18 + 648);
                *(v18 + 648) = v39;
                *(v19 + 656) = *(v18 + 656);
                v40 = *(v18 + 672);
                v41 = *(v18 + 688);
                v42 = *(v18 + 720);
                *(v19 + 704) = *(v18 + 704);
                *(v19 + 720) = v42;
                *(v19 + 672) = v40;
                *(v19 + 688) = v41;
                v43 = *(v18 + 736);
                v44 = *(v18 + 752);
                v45 = *(v18 + 768);
                *(v19 + 784) = *(v18 + 784);
                *(v19 + 752) = v44;
                *(v19 + 768) = v45;
                *(v19 + 736) = v43;
                v15 = *&v52[32];
              }

              ++v17;
              v16 += 816;
            }

            while (v17 < v15);
          }

          re::HashTable<unsigned long long,re::MXIManager::ContextWithProxies,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v52);
        }
      }

      else
      {
        if (v8)
        {
          v48 = 2 * v7;
        }

        else
        {
          v48 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v46 = *(a1 + 16);
    v47 = *(v46 + 816 * v5);
  }

  else
  {
    v46 = *(a1 + 16);
    v47 = *(v46 + 816 * v5);
    *(a1 + 36) = v47 & 0x7FFFFFFF;
  }

  v49 = v46 + 816 * v5;
  *v49 = v47 | 0x80000000;
  v50 = *(a1 + 8);
  *v49 = *(v50 + 4 * a2) | 0x80000000;
  *(v50 + 4 * a2) = v5;
  *(v49 + 800) = a3;
  ++*(a1 + 28);
  return v46 + 816 * v5;
}

void re::MXIContext::ReprojectionContext::~ReprojectionContext(re::MXIContext::ReprojectionContext *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

re::MaterialParameterBlock *re::make::shared::object<re::MaterialParameterBlock,re::RenderManager *&>@<X0>(re *a1@<X0>, re::MaterialParameterBlock **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 1008, 8);
  result = re::MaterialParameterBlock::MaterialParameterBlock(v5, *a1);
  *a2 = result;
  return result;
}

uint64_t re::ecs2::BlurGenerationSystem::update(uint64_t result, uint64_t a2)
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
      re::TextureManager::dequeueBlurGeneration(*(v5 + 56), v8);
      re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=(v9, v8);
      re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v8);
      if (v10)
      {
        (*(**(v7 + 320) + 208))(*(v7 + 320), v9);
      }

      return re::DynamicArray<re::VirtualEnvironmentProbeSource>::deinit(v9);
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

void *re::ecs2::allocInfo_BlurGenerationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_249, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_249))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8208, "BlurGenerationSystem");
    __cxa_guard_release(&_MergedGlobals_249);
  }

  return &unk_1EE1A8208;
}

void re::ecs2::initInfo_BlurGenerationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCD17DA683639A01CLL;
  v6[1] = "BlurGenerationSystem";
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
  *(this + 8) = &re::ecs2::initInfo_BlurGenerationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlurGenerationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlurGenerationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::BlurGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::BlurGenerationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlurGenerationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlurGenerationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::BlurGenerationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v3 = &unk_1F5CF0498;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::BlurGenerationSystem>(uint64_t a1)
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
  *v1 = &unk_1F5CF0498;
  return result;
}

void re::ecs2::BlurGenerationSystem::~BlurGenerationSystem(re::ecs2::BlurGenerationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_HierarchicalTintComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A82A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A82A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A82B8, "HierarchicalTintComponent");
    __cxa_guard_release(&qword_1EE1A82A0);
  }

  return &unk_1EE1A82B8;
}

void re::ecs2::initInfo_HierarchicalTintComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x8CA32477D16ED632;
  v14[1] = "HierarchicalTintComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&_MergedGlobals_250, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_250);
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
      qword_1EE1A82A8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "tintAmount";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A82B0 = v12;
      __cxa_guard_release(&_MergedGlobals_250);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A82A8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HierarchicalTintComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HierarchicalTintComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HierarchicalTintComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HierarchicalTintComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalTintComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::HierarchicalTintComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDECA8;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::HierarchicalTintComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDECA8;
  *(v1 + 28) = 0;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs225HierarchicalTintComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::AnimationUpdateSystem::willAddSystemToECSService(re::ecs2::AnimationUpdateSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::ecs2::AnimationSceneService>(v2);
  *(this + 28) = v3;
  v4 = *(*v3 + 48);

  return v4();
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::AnimationSceneService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::AnimationSceneService>(BOOL)::info = re::ecs2::introspect_AnimationSceneService(0);
  }

  v2 = re::introspect<re::ecs2::AnimationSceneService>(BOOL)::info;
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

uint64_t re::ecs2::AnimationUpdateSystem::willRemoveSystemFromECSService(re::ecs2::AnimationUpdateSystem *this)
{
  result = (*(**(this + 28) + 56))(*(this + 28), this);
  *(this + 28) = 0;
  return result;
}

uint64_t re::ecs2::AnimationUpdateSystem::willAddSceneToECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 64))();
  }

  return result;
}

uint64_t re::ecs2::AnimationUpdateSystem::willRemoveSceneFromECSService(uint64_t a1)
{
  result = *(a1 + 224);
  if (result)
  {
    return (*(*result + 72))();
  }

  return result;
}

uint64_t re::ecs2::AnimationUpdateSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x100000000) == 0)
  {
    v3 = result;
    if (*(result + 224))
    {
      v4 = *(a3 + 200);
      if (v4)
      {
        v5 = *&a2;
        v6 = *(a3 + 216);
        v7 = 8 * v4;
        do
        {
          v8 = *v6++;
          result = (*(**(v3 + 224) + 24))(*(v3 + 224), v8, v5);
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  return result;
}

void *re::ecs2::allocInfo_AnimationUpdateSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_251, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_251))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A8350, "AnimationUpdateSystem");
    __cxa_guard_release(&_MergedGlobals_251);
  }

  return &unk_1EE1A8350;
}

void re::ecs2::initInfo_AnimationUpdateSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x793BDA254CA56BB8;
  v6[1] = "AnimationUpdateSystem";
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
  *(this + 8) = &re::ecs2::initInfo_AnimationUpdateSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnimationUpdateSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnimationUpdateSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AnimationUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AnimationUpdateSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnimationUpdateSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnimationUpdateSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::AnimationUpdateSystem::~AnimationUpdateSystem(re::ecs2::AnimationUpdateSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::AnimationUpdateSystem *re::ecs2::AnimationUpdateSystem::AnimationUpdateSystem(re::ecs2::AnimationUpdateSystem *this)
{
  v2 = re::ecs2::System::System(this, 0);
  *v2 = &unk_1F5CF0528;
  v2[28] = 0;
  LOWORD(v4) = 257;
  HIDWORD(v4) = 1023969417;
  v5 = 0;
  re::ecs2::System::setDefaultTaskOptions(v2, &v4);
  return this;
}

void *re::ecs2::allocInfo_MaterialParametersSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_252, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_252))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A83E8, "MaterialParametersSystem");
    __cxa_guard_release(&_MergedGlobals_252);
  }

  return &unk_1EE1A83E8;
}

void re::ecs2::initInfo_MaterialParametersSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x54BED6764F265040;
  v6[1] = "MaterialParametersSystem";
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
  *(this + 8) = &re::ecs2::initInfo_MaterialParametersSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MaterialParametersSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MaterialParametersSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MaterialParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MaterialParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MaterialParametersSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MaterialParametersSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::MaterialParametersSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1, 1);
  *result = &unk_1F5CF05B8;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::MaterialParametersSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1, 1);
  *result = &unk_1F5CF05B8;
  return result;
}

_anonymous_namespace_ *re::ecs2::MaterialParametersSystem::willAddSceneToECSService(re::ecs2::MaterialParametersSystem *this, re::ecs2::Scene *a2)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v2);
  if (result)
  {
    v4 = *(*result + 64);

    return v4();
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::MaterialParametersSystem::willRemoveSceneFromECSService(re::ecs2::MaterialParametersSystem *this, re::ecs2::Scene *a2)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v2);
  if (result)
  {
    v4 = *(*result + 72);

    return v4();
  }

  return result;
}

void re::ecs2::MaterialParametersSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  v5 = re::ServiceLocator::serviceOrNull<re::MaterialParametersService>(v4);
  v6 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v4);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = v6;
      v10 = *(a3 + 216);
      v31 = &v10[v8];
      do
      {
        v11 = *v10;
        v12 = re::ecs2::SceneComponentTable::get((*v10 + 200), re::ecs2::ComponentImpl<re::ecs2::UnlitMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v12)
        {
          v13 = *(v12 + 384);
          if (v13)
          {
            v14 = *(v12 + 400);
            v15 = 8 * v13;
            do
            {
              v16 = *v14;
              v17 = *(*v14 + 88);
              if (v17 && (v18 = atomic_load((v17 + 896)), v18 == 2))
              {
                v19 = *(*(v16 + 16) + 312);
                v20 = *(v16 + 76);
                v21 = *(v16 + 77);
                v22 = *(v16 + 72);
                re::AssetHandle::AssetHandle(v34, (v16 + 48));
                re::AssetHandle::AssetHandle(v33, (v16 + 80));
                (*(*v5 + 48))(v5, v9, v19, v20, v21, v16 + 28, v34, v33, v22);
                re::AssetHandle::~AssetHandle(v33);
                re::AssetHandle::~AssetHandle(v34);
              }

              else
              {
                re::AssetHandle::loadAsync((v16 + 80));
              }

              ++v14;
              v15 -= 8;
            }

            while (v15);
          }
        }

        v23 = re::ecs2::SceneComponentTable::get((v11 + 200), re::ecs2::ComponentImpl<re::ecs2::PbrMaterialParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v23)
        {
          v24 = *(v23 + 384);
          if (v24)
          {
            v25 = *(v23 + 400);
            v26 = 8 * v24;
            do
            {
              v27 = *v25;
              v28 = *(*v25 + 536);
              if (v28 && (v29 = atomic_load((v28 + 896)), v29 == 2))
              {
                v30 = *(*(v27 + 16) + 312);
                re::AssetHandle::AssetHandle(v32, (v27 + 528));
                (*(*v5 + 40))(v5, v9, v30, v27 + 32, v32);
                re::AssetHandle::~AssetHandle(v32);
              }

              else
              {
                re::AssetHandle::loadAsync((v27 + 528));
              }

              ++v25;
              v26 -= 8;
            }

            while (v26);
          }
        }

        ++v10;
      }

      while (v10 != v31);
    }
  }
}

void re::ecs2::MaterialParametersSystem::~MaterialParametersSystem(re::ecs2::MaterialParametersSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ImagePresentationComponentHelper::impl::~impl(id *this)
{
  re::ecs2::ImagePresentationComponentHelper::impl::removeStatusAndSpatialComponents(this);
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v3 = WeakRetained;
    v4 = WeakRetained[3];
    if (v4 && (*(v4 + 304) & 0x80) == 0)
    {
      re::ecs2::ImagePresentationComponentHelper::impl::unsubscribeAllEventListeners(WeakRetained, WeakRetained[3]);
      re::ecs2::ImagePresentationComponentHelper::impl::removeImageEntityHierarchy(this, v4);
    }
  }

  media::Spatial3DImageAnimationEngine::~Spatial3DImageAnimationEngine((this + 1569));
  media::MediaScreenAnimationEngine::~MediaScreenAnimationEngine((this + 12));
  objc_destroyWeak(this + 11);
  this[11] = 0;
  objc_destroyWeak(this + 9);
  this[9] = 0;
  objc_destroyWeak(this + 8);
  this[8] = 0;
  objc_destroyWeak(this + 7);
  this[7] = 0;
  objc_destroyWeak(this + 3);
  this[3] = 0;
  objc_destroyWeak(this + 2);
  this[2] = 0;
}

void re::ecs2::ImagePresentationComponentHelper::impl::removeStatusAndSpatialComponents(id *this)
{
  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = *(WeakRetained + 3);
    if (v3 && (*(v3 + 304) & 0x80) == 0)
    {
      re::ecs2::EntityComponentCollection::remove((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      re::ecs2::EntityComponentCollection::remove((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      re::ecs2::EntityComponentCollection::remove((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    }
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::unsubscribeAllEventListeners(re::ecs2::ImagePresentationComponentHelper::impl *this, re::ecs2::Entity *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a2 + 39);
    v5 = 134217984;
    v6 = v4;
    _os_log_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEFAULT, "Unsubscribing all event listeners. [entityID: %llu]", &v5, 0xCu);
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::removeImageEntityHierarchy(id *this, re::ecs2::Entity *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = *re::imagePresentationLogObjects(this);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a2 + 39);
    v15 = 134217984;
    v16 = v5;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "Tearing down the image entity hierarchy. [entityID: %llu]", &v15, 0xCu);
  }

  WeakRetained = objc_loadWeakRetained(this + 7);
  if (WeakRetained)
  {
    v7 = WeakRetained;
    v8 = (WeakRetained - 8);
    re::ecs2::Entity::setSelfEnabled((WeakRetained - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v8);
    objc_destroyWeak(this + 7);
    this[7] = 0;
  }

  v9 = objc_loadWeakRetained(this + 8);
  if (v9)
  {
    v10 = v9;
    v11 = (v9 - 8);
    re::ecs2::Entity::setSelfEnabled((v9 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v11);
    objc_destroyWeak(this + 8);
    this[8] = 0;
  }

  v12 = objc_loadWeakRetained(this + 9);
  if (v12)
  {
    v13 = v12;
    v14 = (v12 - 8);
    re::ecs2::Entity::setSelfEnabled((v12 - 8), 0);
    re::ecs2::Entity::removeFromSceneOrParent(v14);
    objc_destroyWeak(this + 9);
    this[9] = 0;
  }
}

void re::ecs2::ImagePresentationComponentHelper::impl::update(re::MediaDefaults *a1, uint64_t a2, re::ecs2 **a3, float a4)
{
  v726 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    v16 = re::MediaDefaults::logEnabled(a1);
    if (!v16)
    {
      return;
    }

    v17 = *re::imagePresentationLogObjects(v16);
    if (!os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    *buf = 0;
    v18 = "[ImagePresentationComponentHelper] Skipping update due to imagePresentationEntity is not found.";
    v19 = v17;
    v20 = 2;
LABEL_18:
    _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, v18, buf, v20);
    return;
  }

  v5 = a2;
  v684 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v684)
  {
    v21 = re::MediaDefaults::logEnabled(0);
    if (!v21)
    {
      return;
    }

    v22 = *re::imagePresentationLogObjects(v21);
    if (!os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    v23 = *(v5 + 312);
    *buf = 134217984;
    *&buf[4] = v23;
    v18 = "[ImagePresentationComponentHelper] Skipping update due to image presentation component is not found on %llu.";
    v19 = v22;
    v20 = 12;
    goto LABEL_18;
  }

  v690 = a1;
  re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  re::ecs2::EntityComponentCollection::getOrAdd((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v8 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v685 = v8;
  v691 = v5;
  v683 = a3;
  if ((*(v5 + 305) & 8) != 0 || (*(v5 + 387) & 1) != 0 || (v11 = *(v5 + 344)) == 0)
  {
LABEL_23:
    if (!*a3 || !a3[2])
    {
      v84 = *re::imagePresentationLogObjects(v8);
      v62 = v690;
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        v85 = *(v5 + 312);
        *buf = 134217984;
        *&buf[4] = v85;
        _os_log_error_impl(&dword_1E1C61000, v84, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper::impl] Cannot find dependencies. Skip buildImageEntityHierarchy on entity %llu.", buf, 0xCu);
      }

      goto LABEL_98;
    }

    v25 = *re::imagePresentationLogObjects(v8);
    v26 = os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT);
    if (v26)
    {
      *buf = 0;
      _os_log_impl(&dword_1E1C61000, v25, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::impl] Build image entity hierarchy.", buf, 2u);
    }

    v27 = *a3;
    v28 = a3[2];
    v29 = re::ecs2::EntityFactory::instance(v26);
    v30 = re::ecs2::EntityFactory::make(v29, 4uLL, v703);
    v31 = v703[0].i64[0];
    if (!v703[0].i64[0])
    {
LABEL_54:
      v55 = *(a3[2] + 17);
      v56 = *a3;
      v57 = re::ecs2::EntityFactory::instance(v30);
      v58 = re::ecs2::EntityFactory::make(v57, 4uLL, v700);
      v59 = re::ecs2::EntityFactory::instance(v58);
      v60 = re::ecs2::EntityFactory::make(v59, 4uLL, v699);
      v61 = v700[0];
      v62 = v690;
      if (v700[0])
      {
        v63 = v699[0];
        if (!v699[0])
        {
LABEL_97:

LABEL_98:
          v107 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v107)
          {
            if (*(v107 + 25) == 2)
            {
              v108 = 0x3F80000000000000;
            }

            else
            {
              v108 = 1065353216;
            }

            *(v62 + 1569) = v108;
          }

          else
          {
            v630 = *re::imagePresentationLogObjects(0);
            if (os_log_type_enabled(v630, OS_LOG_TYPE_ERROR))
            {
              *buf = 67109120;
              *&buf[4] = 2899;
              _os_log_error_impl(&dword_1E1C61000, v630, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", buf, 8u);
            }
          }

          goto LABEL_103;
        }

        v64 = *re::imagePresentationLogObjects(v60);
        if (os_log_type_enabled(v64, OS_LOG_TYPE_DEFAULT))
        {
          v65 = *(v5 + 312);
          *buf = 134217984;
          *&buf[4] = v65;
          _os_log_impl(&dword_1E1C61000, v64, OS_LOG_TYPE_DEFAULT, "MXI: Created the MXI entity and now configuring it. [entityID: %llu]", buf, 0xCu);
        }

        *buf = 0xCD040ED7D618C260;
        *&buf[8] = "__InternalIPC-MXI__";
        re::StringID::operator=(v61 + 36, buf);
        *(v61 + 76) |= 0x1400u;
        re::ecs2::Entity::setSelfEnabled(v61, 0);
        *buf = 0x15C850817C18C722;
        *&buf[8] = "__InternalIPC-MXI-Collider__";
        re::StringID::operator=(v63 + 36, buf);
        *(v63 + 76) |= 0x1400u;
        re::ecs2::Entity::setSelfEnabled(v63, 0);
        re::ecs2::EntityComponentCollection::remove((v61 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v66 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v67 = *re::imagePresentationLogObjects(v66);
        v68 = os_log_type_enabled(v67, OS_LOG_TYPE_DEFAULT);
        if (v68)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v67, OS_LOG_TYPE_DEFAULT, "MXI: ImagePresentationComponentHelper addComponentsToMXIEntity", buf, 2u);
        }

        if (v56)
        {
          v69 = *(v61 + 32);
          if (!v69)
          {
            v69 = re::ecs2::EntityComponentCollection::add((v61 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          *buf = xmmword_1E3047670;
          *&buf[16] = xmmword_1E3047680;
          *v716 = xmmword_1E30476A0;
          *&v716[16] = xmmword_1E30474D0;
          *v710 = 0u;
          *location = xmmword_1E30474D0;
          v705[0] = 0u;
          re::decomposeScaleRotationTranslation<float>(buf, v710, location, v705);
          v70 = *&v710[8];
          v71 = *location;
          v72 = *&location[8];
          v73 = v705[0];
          *(v69 + 32) = *v710;
          *(v69 + 40) = v70;
          *(v69 + 48) = v71;
          *(v69 + 56) = v72;
          *(v69 + 64) = v73;
          re::ecs2::Component::markDirty(v69);
          v74 = re::ecs2::EntityComponentCollection::getOrAdd((v61 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v74[428] = 1;
          v74[440] = 1;
          v74[420] = 1;
          re::ecs2::ImagePresentationComponentHelper::impl::updateMXIComponentResources(v66, v74, v55, v56, v75);
          v77 = *re::imagePresentationLogObjects(v76);
          if (os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
          {
            v78 = v74[80];
            *buf = 67109120;
            *&buf[4] = v78;
            _os_log_impl(&dword_1E1C61000, v77, OS_LOG_TYPE_DEFAULT, "MXI: rendering using two pass: %d", buf, 8u);
          }

          v79 = *(v61 + 21);
          if (!v79)
          {
            v79 = re::ecs2::EntityComponentCollection::add((v61 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          re::ecs2::Component::willSet(v79);
          *(v79 + 28) = 1065353216;
          re::ecs2::Component::didSet(v79);
          re::ecs2::NetworkComponent::markComponentDirty(v79, v80);
          re::ecs2::Component::markDirty(v79);
          v81 = *(v690 + 20);
          v82 = *(v61 + 4);
          if (v82)
          {
            if ((*(v82 + 304) & 0x80) != 0)
            {
              v83 = 0;
            }

            else
            {
              v83 = *(v61 + 4);
            }
          }

          else
          {
            v83 = 0;
          }

          v710[0] = 1;
          re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(buf, v690, v83, v66, v710);
          if (buf[0])
          {
            v86 = *&v716[28];
          }

          else
          {
            v86 = 0.0;
          }

          re::AssetManager::assetHandle(v56, "engine:emptyMaterial.rematerial", v705);
          BYTE4(v713) = 0;
          *&location[8] = 0;
          *&location[14] = 0;
          *v714 = 1065353216;
          *&v714[8] = xmmword_1E3063230;
          __asm { FMOV            V0.2S, #1.0 }

          *location = _D0;
          LODWORD(v713) = re::ecs2::ImagePresentationComponentHelper::impl::getPlaneDepthInMeters(v61, v91);
          *&location[12] = v86;
          re::ecs2::createPlane(v61, location);
          v92 = *(v61 + 24);
          if (!v92)
          {
            v92 = re::ecs2::EntityComponentCollection::add((v61 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
          }

          re::DynamicArray<re::AssetHandle>::add((v92 + 7), v705);
          re::ecs2::Component::markDirty(v92);
          re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v61, 0);
          v94 = *re::imagePresentationLogObjects(v93);
          if (os_log_type_enabled(v94, OS_LOG_TYPE_DEFAULT))
          {
            *v710 = 0;
            _os_log_impl(&dword_1E1C61000, v94, OS_LOG_TYPE_DEFAULT, "MXI: ImagePresentationComponentHelper adding uiSortingComponent and colliderComponent to mxiColliderEntity", v710, 2u);
          }

          v95 = re::ecs2::EntityComponentCollection::getOrAdd((v63 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          __asm { FMOV            V0.4S, #1.0 }

          *(&_Q0 + 2) = 10.0 / v81;
          *v710 = _Q0;
          re::ecs2::UISortingComponent::setExtents(v95, v710);
          v62 = v690;
          if (*(v95 + 80) != -1)
          {
            *(v95 + 80) = -1;
          }

          re::ecs2::Component::markDirty(v95);
          v97 = re::ecs2::EntityComponentCollection::add((v63 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v98.n128_u32[0] = 1.0;
          re::ecs2::buildCollisionShapeAssetHandle(v56, v99, v98, 1.0, 10.0 / v81);
          re::AssetHandle::operator=((v97 + 4), v704);
          re::ecs2::Component::markDirty(v97);
          v100 = *(v63 + 32);
          if (!v100)
          {
            v100 = re::ecs2::EntityComponentCollection::add((v63 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          }

          *v710 = xmmword_1E3047670;
          *&v710[16] = xmmword_1E3047680;
          *&v710[32] = xmmword_1E30476A0;
          *&v710[48] = xmmword_1E30474D0;
          v703[0] = 0u;
          *v702 = xmmword_1E30474D0;
          *v701[0].f32 = 0u;
          re::decomposeScaleRotationTranslation<float>(v710, v703, v702, v701);
          v101 = v703[0].i64[1];
          v102 = *v702;
          v103 = *v701[0].f32;
          *(v100 + 32) = v703[0].i64[0];
          *(v100 + 40) = v101;
          *(v100 + 48) = v102;
          *(v100 + 64) = v103;
          re::ecs2::Component::markDirty(v100);
          v104 = re::ecs2::EntityComponentCollection::getOrAdd((v63 + 48), re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          *(v104 + 25) = 16843009;
          re::ecs2::Component::markDirty(v104);
          re::ecs2::Component::markDirty(v74);
          re::AssetHandle::~AssetHandle(v704);
          re::AssetHandle::~AssetHandle(v705);
          v61 = v700[0];
        }

        else
        {
          v645 = *re::imagePresentationLogObjects(v68);
          if (os_log_type_enabled(v645, OS_LOG_TYPE_ERROR))
          {
            *buf = 67109120;
            *&buf[4] = 2733;
            _os_log_error_impl(&dword_1E1C61000, v645, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, assetManager is nullptr", buf, 8u);
          }

          v62 = v690;
        }

        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v61 + 40, v699);
        v5 = v691;
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v691 + 320), v700);
        if (v700[0])
        {
          v105 = v700[0] + 8;
        }

        else
        {
          v105 = 0;
        }

        objc_storeWeak(v62 + 8, v105);
        if (v699[0])
        {
          v106 = v699[0] + 8;
        }

        else
        {
          v106 = 0;
        }

        objc_storeWeak(v62 + 9, v106);
      }

      if (v699[0])
      {
      }

      v61 = v700[0];
      if (!v700[0])
      {
        goto LABEL_98;
      }

      goto LABEL_97;
    }

    v32 = *re::imagePresentationLogObjects(v30);
    if (os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT))
    {
      v33 = *(v5 + 312);
      *buf = 134217984;
      *&buf[4] = v33;
      _os_log_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_DEFAULT, "Created the screen entity and now configuring it. [entityID: %llu]", buf, 0xCu);
    }

    *buf = 0xEB3B4F6DA23A16B4;
    *&buf[8] = "__InternalIPC-Screen__";
    re::StringID::operator=((v31 + 288), buf);
    *(v31 + 304) |= 0x1400u;
    re::ecs2::Entity::setSelfEnabled(v31, 0);
    re::ecs2::EntityComponentCollection::remove((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    v34 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v27)
    {
      if (v28)
      {
        re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(buf, v690, v34[2]);
        v35 = 0uLL;
        memset(v710, 0, 48);
        *&v710[20] = *&buf[20];
        *v710 = *&buf[16];
        *&v710[40] = *&buf[24];
        v36 = *buf;
        HIDWORD(v36) = 0;
        *&v710[48] = v36;
        v37 = *(v31 + 256);
        if (!v37)
        {
          v38 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v35 = 0uLL;
          v37 = v38;
        }

        *location = v35;
        v705[0] = xmmword_1E30474D0;
        *v704 = v35;
        re::decomposeScaleRotationTranslation<float>(v710, location, v705, v704);
        v39 = *&location[8];
        v40 = v705[0];
        v41 = *v704;
        *(v37 + 32) = *location;
        *(v37 + 40) = v39;
        *(v37 + 48) = v40;
        *(v37 + 64) = v41;
        v42 = *(v31 + 232);
        if (!v42)
        {
          v42 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        v42[25] = 0;
        v42[35] = 1;
        if ((v42[30] & 1) == 0)
        {
          v42[30] = 1;
        }

        v42[31] = 1;
        re::AssetHandle::AssetHandle(location, (v28 + 144));
        re::AssetHandle::loadAsync(location);
        v43.n128_u64[0] = *v716;
        v676 = v43;
        v686 = *&v716[24];
        re::ecs2::createPlane(v31, v716);
        v44 = *(v31 + 192);
        if (!v44)
        {
          v44 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
        }

        re::DynamicArray<re::AssetHandle>::add((v44 + 7), location);
        re::ecs2::Component::markDirty(v44);
        v45 = re::ecs2::EntityComponentCollection::get((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v46 = v690;
        if (v45)
        {
          *(v45 + 108) = 1;
          re::ecs2::Component::markDirty(v45);
        }

        v47 = re::ecs2::EntityComponentCollection::getOrAdd((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v48 = v676;
        v48.n128_f32[2] = v686;
        v705[0] = v48;
        re::ecs2::UISortingComponent::setExtents(v47, v705);
        if (*(v47 + 84) != 2)
        {
          *(v47 + 84) = 2;
        }

        if (*(v47 + 80) != -1)
        {
          *(v47 + 80) = -1;
        }

        re::ecs2::Component::markDirty(v47);
        v49 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::buildCollisionShapeAssetHandle(v27, v50, v676, v676.n128_f32[1], v686);
        re::AssetHandle::operator=((v49 + 4), v705);
        re::ecs2::Component::markDirty(v49);
        v51 = re::ecs2::EntityComponentCollection::getOrAdd((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::InputTargetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        *(v51 + 25) = 16843009;
        re::ecs2::Component::markDirty(v51);
        v52 = *(v31 + 168);
        if (!v52)
        {
          v52 = re::ecs2::EntityComponentCollection::add((v31 + 48), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        }

        re::ecs2::Component::willSet(v52);
        *(v52 + 28) = 1065353216;
        re::ecs2::Component::didSet(v52);
        re::ecs2::NetworkComponent::markComponentDirty(v52, v53);
        re::ecs2::Component::markDirty(v52);
        re::AssetHandle::~AssetHandle(v705);
        re::AssetHandle::~AssetHandle(location);
        goto LABEL_49;
      }

      v642 = *re::imagePresentationLogObjects(v34);
      v46 = v690;
      if (!os_log_type_enabled(v642, OS_LOG_TYPE_ERROR))
      {
LABEL_49:
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::add((v5 + 320), v703[0].i64);
        if (v703[0].i64[0])
        {
          v54 = (v703[0].i64[0] + 8);
        }

        else
        {
          v54 = 0;
        }

        objc_initWeak(buf, v54);
        re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(v46 + 7, buf);
        objc_destroyWeak(buf);
        if (v703[0].i64[0])
        {
        }

        goto LABEL_54;
      }

      *buf = 67109120;
      *&buf[4] = 1707;
      v643 = "ImagePresentationComponentHelper line: %d, imagePresentationManager is nullptr";
    }

    else
    {
      v642 = *re::imagePresentationLogObjects(v34);
      v46 = v690;
      if (!os_log_type_enabled(v642, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_49;
      }

      *buf = 67109120;
      *&buf[4] = 1706;
      v643 = "ImagePresentationComponentHelper line: %d, assetManager is nullptr";
    }

    _os_log_error_impl(&dword_1E1C61000, v642, OS_LOG_TYPE_ERROR, v643, buf, 8u);
    goto LABEL_49;
  }

  v12 = *(v5 + 360);
  v13 = 8 * v11;
  v14 = 8 * v11;
  v15 = v12;
  while (1)
  {
    if ((*(*v15 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v8 = *(*v15 + 296);
      if (v8 == "__InternalIPC-Screen__")
      {
        break;
      }

      v8 = strcmp(v8, "__InternalIPC-Screen__");
      if (!v8)
      {
        break;
      }
    }

    v15 += 8;
    v14 -= 8;
    if (!v14)
    {
      goto LABEL_23;
    }
  }

  while (1)
  {
    if ((*(*v12 + 288) ^ 0xCD040ED7D618C260) <= 1)
    {
      v24 = *(*v12 + 296);
      if (v24 == "__InternalIPC-MXI__")
      {
        break;
      }

      v8 = strcmp(v24, "__InternalIPC-MXI__");
      if (!v8)
      {
        break;
      }
    }

    v12 += 8;
    v13 -= 8;
    if (!v13)
    {
      goto LABEL_23;
    }
  }

LABEL_103:
  v687 = v690 + 12544;
  v675 = (v690 + 12552);
  media::Spatial3DImageAnimationEngine::update(v690 + 12552, a4, v9, v10);
  media::MediaScreenAnimationEngine::update(v690 + 96, a4, v109, v110);
  v111 = v685;
  v677 = *(v685 + 25);
  v112 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v113 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v114 = v5;
  v115 = v113;
  v116 = *(v112 + 25);
  v117 = *(v113 + 132);
  v118 = *(v112 + 26);
  v119 = *(v113 + 133);
  v120 = re::ecs2::EntityComponentCollection::get((v114 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v123 = v120;
  v124 = *(v120 + 134);
  *&buf[16] = 0;
  *&buf[8] = 0;
  *buf = &buf[8];
  if (v124 == 2)
  {
    *v710 = 256;
    v125 = &v710[2];
  }

  else if (v124 == 1)
  {
    v710[0] = 0;
    v125 = &v710[1];
  }

  else
  {
    if (v124)
    {
      if ((*(v120 + 345) & 1) == 0)
      {
LABEL_135:
        v134 = &buf[8];
LABEL_136:
        if (v134 == &buf[8])
        {
          v117 = 0;
        }

        else
        {
          v117 = v116;
        }

        goto LABEL_139;
      }

      goto LABEL_119;
    }

    *v710 = 256;
    v710[2] = 2;
    v125 = &v710[3];
  }

  std::__tree<re::ecs2::ImageViewingMode>::__assign_unique<re::ecs2::ImageViewingMode const*>(buf, v710, v125);
  v126 = *&buf[8];
  if ((*(v123 + 345) & 1) == 0)
  {
    goto LABEL_120;
  }

  if (!*&buf[8])
  {
LABEL_119:
    operator new();
  }

  v127 = *&buf[8];
  while (1)
  {
    while (1)
    {
      v128 = v127;
      v129 = *(v127 + 25);
      if (v129 < 3)
      {
        break;
      }

      v127 = *v128;
      if (!*v128)
      {
        goto LABEL_119;
      }
    }

    if (v129 == 2)
    {
      break;
    }

    v127 = v128[1];
    if (!v127)
    {
      goto LABEL_119;
    }
  }

LABEL_120:
  if (!*&buf[8])
  {
    goto LABEL_135;
  }

  v130 = &buf[8];
  v131 = *&buf[8];
  do
  {
    v132 = v131[25];
    _CF = v132 >= v117;
    v133 = v132 < v117;
    if (_CF)
    {
      v130 = v131;
    }

    v131 = *&v131[8 * v133];
  }

  while (v131);
  if (v130 == &buf[8] || v117 < v130[25])
  {
    v134 = &buf[8];
    do
    {
      v135 = v126[25];
      _CF = v135 >= v116;
      v136 = v135 < v116;
      if (_CF)
      {
        v134 = v126;
      }

      v126 = *&v126[8 * v136];
    }

    while (v126);
    if (v134 != &buf[8] && v116 >= v134[25])
    {
      goto LABEL_136;
    }

    goto LABEL_135;
  }

LABEL_139:
  if (v117 == v116)
  {
    LOBYTE(v137) = 0;
    v138 = v691;
    goto LABEL_235;
  }

  _ZF = v119 == 2 || v118 == 2;
  v137 = _ZF;
  v140 = 1.0;
  if (v112)
  {
    v141 = *(v112 + 44);
    if (v141 > 0.0)
    {
      LODWORD(v121) = *(v112 + 40);
      v140 = *&v121 / v141;
    }
  }

  if (v115 && (re::ecs2::ImagePresentationComponentHelper::impl::getScreenImageDimensionInViewingMode(v115, v117), LODWORD(v121) = HIDWORD(v120), v142 = *&v120 / *(&v120 + 1), (*&v120 / *(&v120 + 1)) != v140))
  {
    v122.n128_u32[0] = 925353388;
    *&v121 = ((fabsf(v140) + fabsf(v142)) + 1.0) * 0.00001;
    v143 = vabds_f32(v140, v142) >= *&v121;
  }

  else
  {
    v143 = 0;
  }

  v138 = v691;
  if (v117 != 2 && v116 != 2 || ((*(v112 + 29) | v137 | v143) & 1) != 0)
  {
    re::ecs2::ImagePresentationComponentHelper::impl::completeViewingModeTransition(v690, v691, v112, v117);
    goto LABEL_235;
  }

  if ((*v687 & 1) == 0)
  {
    v144 = *(v691 + 344);
    if (v144)
    {
      v145 = *(v691 + 360);
      v146 = 8 * v144;
      v147 = 8 * v144;
      v148 = v145;
      while (1)
      {
        v149 = *v148;
        if ((*(*v148 + 36) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v120 = *(v149 + 37);
          if (v120 == "__InternalIPC-Screen__")
          {
            break;
          }

          v120 = strcmp(v120, "__InternalIPC-Screen__");
          if (!v120)
          {
            break;
          }
        }

        ++v148;
        v147 -= 8;
        if (!v147)
        {
          v149 = 0;
          break;
        }
      }

      v111 = v685;
      while (1)
      {
        v150 = *v145;
        if ((*(*v145 + 36) ^ 0xCD040ED7D618C260) <= 1)
        {
          v120 = *(v150 + 37);
          if (v120 == "__InternalIPC-MXI__")
          {
            break;
          }

          v120 = strcmp(v120, "__InternalIPC-MXI__");
          if (!v120)
          {
            break;
          }
        }

        ++v145;
        v146 -= 8;
        if (!v146)
        {
          v150 = 0;
          break;
        }
      }

      v138 = v691;
    }

    else
    {
      v149 = 0;
      v150 = 0;
    }

    v151 = *(v150 + 43);
    if (v151)
    {
      v152 = *(v150 + 45);
      v153 = 8 * v151;
      while (1)
      {
        v154 = *v152;
        if ((*(*v152 + 36) ^ 0x15C850817C18C722uLL) <= 1)
        {
          v120 = *(v154 + 37);
          if (v120 == "__InternalIPC-MXI-Collider__")
          {
            break;
          }

          v120 = strcmp(v120, "__InternalIPC-MXI-Collider__");
          if (!v120)
          {
            break;
          }
        }

        ++v152;
        v153 -= 8;
        if (!v153)
        {
          v154 = 0;
          break;
        }
      }

      v111 = v685;
      v138 = v691;
    }

    else
    {
      v154 = 0;
    }

    if (v149)
    {
      if (v150)
      {
        if (v154)
        {
          *v687 = 1;
          *(v690 + 12545) = v116;
          *(v690 + 12546) = v117;
          if (v117 == 2)
          {
            media::Spatial3DImageAnimationEngine::addScreenEntityTransitionToMXIEntityAnimation(v675);
            re::ecs2::Entity::setSelfEnabled(v150, 1);
          }

          else
          {
            if (v116 != 2)
            {
LABEL_191:
              v155 = media::Spatial3DImageAnimationEngine::update(v675, 0.0, v121, v122);
              if (v112)
              {
                if ((*(v112 + 27) & 1) == 0)
                {
                  *(v112 + 27) = 1;
                  v155 = *(*(v112 + 16) + 216);
                  if (v155)
                  {
                    re::ecs2::NetworkComponent::markDirty(v155, v112);
                  }
                }
              }

              else
              {
                v650 = *re::imagePresentationLogObjects(v155);
                v155 = os_log_type_enabled(v650, OS_LOG_TYPE_ERROR);
                if (v155)
                {
                  *v710 = 67109120;
                  *&v710[4] = 645;
                  _os_log_error_impl(&dword_1E1C61000, v650, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", v710, 8u);
                }
              }

              v156 = *re::imagePresentationLogObjects(v155);
              v120 = os_log_type_enabled(v156, OS_LOG_TYPE_DEFAULT);
              if (v120)
              {
                v157 = v138[39];
                *v710 = 16777984;
                v710[4] = v116;
                *&v710[5] = 256;
                v710[7] = v117;
                *&v710[8] = 2048;
                *&v710[10] = v157;
                _os_log_impl(&dword_1E1C61000, v156, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::startViewingModeTransition] current viewing mode: %d --> target viewing mode: %d. [entityID: %llu]", v710, 0x12u);
              }

              goto LABEL_197;
            }

            media::Spatial3DImageAnimationEngine::addMXIEntityTransitionToScreenEntityAnimation(v675);
            v154 = v149;
          }

          re::ecs2::Entity::setSelfEnabled(v154, 1);
          goto LABEL_191;
        }

        v648 = *re::imagePresentationLogObjects(v120);
        v120 = os_log_type_enabled(v648, OS_LOG_TYPE_ERROR);
        if (!v120)
        {
          goto LABEL_197;
        }

        *v710 = 67109120;
        *&v710[4] = 623;
        v649 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
      }

      else
      {
        v648 = *re::imagePresentationLogObjects(v120);
        v120 = os_log_type_enabled(v648, OS_LOG_TYPE_ERROR);
        if (!v120)
        {
          goto LABEL_197;
        }

        *v710 = 67109120;
        *&v710[4] = 622;
        v649 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
      }
    }

    else
    {
      v648 = *re::imagePresentationLogObjects(v120);
      v120 = os_log_type_enabled(v648, OS_LOG_TYPE_ERROR);
      if (!v120)
      {
        goto LABEL_197;
      }

      *v710 = 67109120;
      *&v710[4] = 621;
      v649 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
    }

    _os_log_error_impl(&dword_1E1C61000, v648, OS_LOG_TYPE_ERROR, v649, v710, 8u);
  }

LABEL_197:
  v158 = v138[43];
  if (v158)
  {
    v159 = v138[45];
    v160 = 8 * v158;
    v161 = 8 * v158;
    v162 = v159;
    while (1)
    {
      v163 = *v162;
      if ((*(*v162 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
      {
        v120 = *(v163 + 296);
        if (v120 == "__InternalIPC-Screen__")
        {
          break;
        }

        v120 = strcmp(v120, "__InternalIPC-Screen__");
        if (!v120)
        {
          break;
        }
      }

      ++v162;
      v161 -= 8;
      if (!v161)
      {
        v163 = 0;
        break;
      }
    }

    v111 = v685;
    while (1)
    {
      v164 = *v159;
      if ((*(*v159 + 288) ^ 0xCD040ED7D618C260) <= 1)
      {
        v120 = v164[37];
        if (v120 == "__InternalIPC-MXI__")
        {
          break;
        }

        v120 = strcmp(v120, "__InternalIPC-MXI__");
        if (!v120)
        {
          break;
        }
      }

      ++v159;
      v160 -= 8;
      if (!v160)
      {
        v164 = 0;
        break;
      }
    }

    v138 = v691;
  }

  else
  {
    v163 = 0;
    v164 = 0;
  }

  v165 = v164[43];
  if (v165)
  {
    v166 = v164[45];
    v167 = 8 * v165;
    while (1)
    {
      if ((*(*v166 + 288) ^ 0x15C850817C18C722uLL) <= 1)
      {
        v120 = *(*v166 + 296);
        if (v120 == "__InternalIPC-MXI-Collider__")
        {
          break;
        }

        v120 = strcmp(v120, "__InternalIPC-MXI-Collider__");
        if (!v120)
        {
          break;
        }
      }

      v166 += 8;
      v167 -= 8;
      if (!v167)
      {
        v168 = 1;
        goto LABEL_221;
      }
    }

    v168 = 0;
LABEL_221:
    v111 = v685;
  }

  else
  {
    v168 = 1;
  }

  if (!v163)
  {
    v646 = *re::imagePresentationLogObjects(v120);
    v120 = os_log_type_enabled(v646, OS_LOG_TYPE_ERROR);
    v169 = v690;
    if (!v120)
    {
      goto LABEL_227;
    }

    *v710 = 67109120;
    *&v710[4] = 659;
    v647 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
LABEL_941:
    _os_log_error_impl(&dword_1E1C61000, v646, OS_LOG_TYPE_ERROR, v647, v710, 8u);
    goto LABEL_227;
  }

  if (!v164)
  {
    v646 = *re::imagePresentationLogObjects(v120);
    v120 = os_log_type_enabled(v646, OS_LOG_TYPE_ERROR);
    v169 = v690;
    if (!v120)
    {
      goto LABEL_227;
    }

    *v710 = 67109120;
    *&v710[4] = 660;
    v647 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_941;
  }

  v169 = v690;
  if (v168)
  {
    v646 = *re::imagePresentationLogObjects(v120);
    v120 = os_log_type_enabled(v646, OS_LOG_TYPE_ERROR);
    if (!v120)
    {
      goto LABEL_227;
    }

    *v710 = 67109120;
    *&v710[4] = 661;
    v647 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
    goto LABEL_941;
  }

  v120 = re::ecs2::EntityComponentCollection::get((v164 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v120)
  {
    *(v120 + 79) = *(v690 + 3140);
    v120 = re::ecs2::Component::markDirty(v120);
  }

LABEL_227:
  v170 = v169 + 12600;
  v171 = 24;
  while (1)
  {
    v172 = *(v675 + v171);
    if (v172)
    {
      break;
    }

LABEL_232:
    v171 += 4112;
    v170 += 4112;
    if (v171 == 24696)
    {
      re::ecs2::ImagePresentationComponentHelper::impl::completeViewingModeTransition(v169, v138, v112, v117);
      goto LABEL_234;
    }
  }

  v173 = 16 * v172;
  v174 = v170;
  while (1)
  {
    v175 = *v174;
    v174 += 16;
    if (!v175)
    {
      break;
    }

    v173 -= 16;
    if (!v173)
    {
      goto LABEL_232;
    }
  }

LABEL_234:
  LOBYTE(v137) = 0;
LABEL_235:
  v176 = v690 + 12544;
  if ((*v687 & 1) == 0)
  {
    v177 = v138[43];
    if (v177)
    {
      v178 = v138[45];
      v179 = 8 * v177;
      v180 = 8 * v177;
      v181 = v178;
      while (1)
      {
        v182 = *v181;
        if ((*(*v181 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v120 = *(v182 + 296);
          if (v120 == "__InternalIPC-Screen__")
          {
            break;
          }

          v120 = strcmp(v120, "__InternalIPC-Screen__");
          if (!v120)
          {
            break;
          }
        }

        ++v181;
        v180 -= 8;
        if (!v180)
        {
          goto LABEL_242;
        }
      }

      v111 = v685;
      while (1)
      {
        v231 = *v178;
        if ((*(*v178 + 288) ^ 0xCD040ED7D618C260) <= 1)
        {
          v120 = *(v231 + 296);
          if (v120 == "__InternalIPC-MXI__")
          {
            break;
          }

          v120 = strcmp(v120, "__InternalIPC-MXI__");
          if (!v120)
          {
            break;
          }
        }

        ++v178;
        v179 -= 8;
        if (!v179)
        {
          v183 = *re::imagePresentationLogObjects(v120);
          if (!os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_243;
          }

          *v710 = 67109120;
          *&v710[4] = 1909;
          v232 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
          goto LABEL_624;
        }
      }

      v237 = *(v231 + 344);
      if (v237)
      {
        v238 = *(v231 + 360);
        v239 = 8 * v237;
        while (1)
        {
          v240 = *v238;
          if ((*(*v238 + 288) ^ 0x15C850817C18C722uLL) <= 1)
          {
            v241 = *(v240 + 296);
            if (v241 == "__InternalIPC-MXI-Collider__")
            {
              break;
            }

            v120 = strcmp(v241, "__InternalIPC-MXI-Collider__");
            if (!v120)
            {
              break;
            }
          }

          ++v238;
          v239 -= 8;
          if (!v239)
          {
            goto LABEL_328;
          }
        }

        v461 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v461)
        {
          v462 = v461;
          v463 = re::MediaDefaults::logEnabled(v461);
          if (v463)
          {
            v463 = re::MediaDefaults::logLevel(v463);
            v464 = v463 > 1;
          }

          else
          {
            v464 = 0;
          }

          v584 = *(v462 + 25);
          if (v584 >= 2)
          {
            v176 = v690 + 12544;
            if (v584 == 2)
            {
              if ((*(v182 + 304) & 8) != 0 || (*(v231 + 304) & 8) == 0 || (*(v240 + 304) & 8) == 0)
              {
                re::ecs2::Entity::setSelfEnabled(v182, 0);
                re::ecs2::Entity::setSelfEnabled(v231, 1);
                re::ecs2::Entity::setSelfEnabled(v240, 1);
                if (v464)
                {
                  v586 = *re::imagePresentationLogObjects(v589);
                  if (os_log_type_enabled(v586, OS_LOG_TYPE_DEBUG))
                  {
                    v590 = v138[39];
                    *v710 = 16777728;
                    *&v710[4] = 2;
                    v710[6] = 8;
                    *&v710[7] = v590;
                    v588 = "Change image entity hierarchy state to mxiEntity for viewing mode %hhu. [entityID: %llu]";
                    goto LABEL_827;
                  }
                }
              }
            }

            else if (v464)
            {
              v586 = *re::imagePresentationLogObjects(v463);
              if (os_log_type_enabled(v586, OS_LOG_TYPE_DEBUG))
              {
                v606 = v138[39];
                *v710 = 16777728;
                v710[4] = v584;
                *&v710[5] = 2048;
                *&v710[7] = v606;
                v588 = "Unknown viewing mode %hhu. Skipping image entity hierarchy state update. [entityID: %llu]";
                goto LABEL_827;
              }
            }
          }

          else
          {
            v176 = v690 + 12544;
            if ((*(v182 + 304) & 8) == 0 || (*(v231 + 304) & 8) != 0 || (*(v240 + 304) & 8) != 0)
            {
              re::ecs2::Entity::setSelfEnabled(v182, 1);
              re::ecs2::Entity::setSelfEnabled(v231, 0);
              re::ecs2::Entity::setSelfEnabled(v240, 0);
              if (v464)
              {
                v586 = *re::imagePresentationLogObjects(v585);
                if (os_log_type_enabled(v586, OS_LOG_TYPE_DEBUG))
                {
                  v587 = v138[39];
                  *v710 = 16777728;
                  v710[4] = v584;
                  *&v710[5] = 2048;
                  *&v710[7] = v587;
                  v588 = "Change image entity hierarchy state to screenEntity for viewing mode %hhu. [entityID: %llu]";
LABEL_827:
                  _os_log_debug_impl(&dword_1E1C61000, v586, OS_LOG_TYPE_DEBUG, v588, v710, 0xFu);
                }
              }
            }
          }
        }

        else
        {
          v183 = *re::imagePresentationLogObjects(0);
          v176 = v690 + 12544;
          if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
          {
            *v710 = 67109120;
            *&v710[4] = 1914;
            v232 = "ImagePresentationComponentHelper line: %d, statusComponent is nullptr";
            goto LABEL_624;
          }
        }
      }

      else
      {
LABEL_328:
        v183 = *re::imagePresentationLogObjects(v120);
        v176 = v690 + 12544;
        if (!os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_243;
        }

        *v710 = 67109120;
        *&v710[4] = 1911;
        v232 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
LABEL_624:
        _os_log_error_impl(&dword_1E1C61000, v183, OS_LOG_TYPE_ERROR, v232, v710, 8u);
      }
    }

    else
    {
LABEL_242:
      v183 = *re::imagePresentationLogObjects(v120);
      v111 = v685;
      if (os_log_type_enabled(v183, OS_LOG_TYPE_ERROR))
      {
        *v710 = 67109120;
        *&v710[4] = 1906;
        v232 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
        goto LABEL_624;
      }
    }
  }

LABEL_243:
  v184 = (v690 + 37248);
  std::__tree<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,std::__map_value_compare<re::Pose<float>,std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>,re::PoseQuantization::Less,true>,std::allocator<std::__value_type<re::Pose<float>,re::PoseQuantization::QuantizedValue>>>::destroy(*&buf[8]);
  if (v111)
  {
    v186 = re::ecs2::EntityComponentCollection::get((*&v684[2] + 48), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v187 = *(v111 + 25);
    if (v186)
    {
      v188 = v187 == 1;
    }

    else
    {
      v188 = 0;
    }

    if (!v188)
    {
LABEL_255:
      re::ecs2::ImagePresentationComponentHelper::impl::getScreenImageDimensionInViewingMode(v684, v187);
      v191 = vmvn_s8(vceq_f32(*(v111 + 40), v190));
      if ((vpmax_u32(v191, v191).u32[0] & 0x80000000) != 0)
      {
        *(v111 + 40) = v190;
        v192 = *(*(v111 + 16) + 216);
        if (v192)
        {
          re::ecs2::NetworkComponent::markDirty(v192, v111);
        }
      }

      goto LABEL_258;
    }

    if ((*(v186 + 232) & 1) != 0 || *v176 != 1 || v176[2] != 2)
    {
      v187 = 1;
      goto LABEL_255;
    }

    v189 = *re::imagePresentationLogObjects(v186);
    if (os_log_type_enabled(v189, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v189, OS_LOG_TYPE_DEBUG, "Skip screen image dimension update when transitioning from a loading SpatialStereo to Spatial3D.", buf, 2u);
    }
  }

  else
  {
    v623 = *re::imagePresentationLogObjects(v185);
    if (os_log_type_enabled(v623, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 761;
      _os_log_error_impl(&dword_1E1C61000, v623, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", buf, 8u);
    }
  }

LABEL_258:
  v193 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v193)
  {
    v624 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 812;
    v625 = "ImagePresentationComponentHelper line: %d, imagePresentationStatusComponent is nullptr";
    goto LABEL_929;
  }

  v194 = v193;
  if (!re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
  {
    v624 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 815;
    v625 = "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr";
    goto LABEL_929;
  }

  v195 = *(v194 + 25);
  if (v195 != 2 && (*v176 != 1 || v176[2] != 2))
  {
    if (v195 != 1)
    {
      if (*(v194 + 25) || !*(v194 + 26))
      {
        goto LABEL_356;
      }

      *(v194 + 26) = 0;
LABEL_306:
      v229 = *(*(v194 + 16) + 216);
      if (!v229)
      {
        goto LABEL_356;
      }

      v230 = v194;
      goto LABEL_308;
    }

    v215 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v215)
    {
      v216 = *(v215 + 133);
      v217 = *(v215 + 132);
      v218 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v218)
      {
        v194 = v218;
        if (*(v218 + 25) == 1)
        {
          if (v217 == 1)
          {
            v111 = v685;
            if (*(v218 + 48) == 1)
            {
              v219 = (v690 + 160);
              v220 = 10320;
              do
              {
                v221 = *v219;
                if (*v219)
                {
                  v222 = 1;
                }

                else
                {
                  v222 = v220 == 0;
                }

                v220 -= 2064;
                v219 += 258;
              }

              while (!v222);
              if (!v221)
              {
                v218 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                if (v218)
                {
                  v598 = v218;
                  if (*(v218 + 48) == 1)
                  {
                    v599 = *(v218 + 88);
                    if (v599 == 1)
                    {
                      v600 = 2;
                    }

                    else
                    {
                      v600 = 1;
                    }

                    if (*(v218 + 26) != v600)
                    {
                      *(v218 + 26) = v600;
                      v601 = *(*(v218 + 16) + 216);
                      if (v601)
                      {
                        re::ecs2::NetworkComponent::markDirty(v601, v598);
                      }
                    }

                    re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(v138, v599);
                    v603 = *re::imagePresentationLogObjects(v602);
                    v218 = os_log_type_enabled(v603, OS_LOG_TYPE_DEFAULT);
                    if (v218)
                    {
                      v604 = v138[39];
                      *buf = 16777728;
                      buf[4] = v600;
                      *&buf[5] = 2048;
                      *&buf[7] = v604;
                      _os_log_impl(&dword_1E1C61000, v603, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::completeAnimatingSpatialImmersiveTransition] target ImageImmersiveViewingMode %u [id=%llu]", buf, 0xFu);
                    }
                  }

                  if (*(v598 + 48) == 1)
                  {
                    *(v598 + 48) = 0;
                  }

                  if (*(v598 + 28))
                  {
                    *(v598 + 28) = 0;
                    v218 = *(*(v598 + 16) + 216);
                    if (v218)
                    {
                      re::ecs2::NetworkComponent::markDirty(v218, v598);
                    }
                  }
                }

                else
                {
                  v661 = *re::imagePresentationLogObjects(0);
                  v218 = os_log_type_enabled(v661, OS_LOG_TYPE_ERROR);
                  if (v218)
                  {
                    *buf = 67109120;
                    *&buf[4] = 2364;
                    _os_log_error_impl(&dword_1E1C61000, v661, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, ipsc is nullptr", buf, 8u);
                  }
                }
              }

              v223 = re::MediaDefaults::logEnabled(v218);
              if (!v223)
              {
                goto LABEL_356;
              }

              v224 = *re::imagePresentationLogObjects(v223);
              if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
              {
                goto LABEL_356;
              }

              v225 = v138[39];
              *buf = 134217984;
              *&buf[4] = v225;
              v226 = "Skipping handleImmersiveModeChangeForSpatialImages as an animated immersive transition is underway [id=%llu]";
              goto LABEL_354;
            }

            v468 = *(v218 + 26);
            if (!*(v218 + 26) && v216 == 1)
            {
              *(v218 + 26) = 1;
              v469 = *(*(v218 + 16) + 216);
              if (v469)
              {
                re::ecs2::NetworkComponent::markDirty(v469, v194);
              }

              v470 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v470 && *(v470 + 25))
              {
                *(v470 + 25) = 0;
                re::ecs2::SpatialMediaStatusComponent::networkMarkDirty(v470);
              }

              v471 = re::MediaDefaults::logEnabled(v470);
              if (!v471)
              {
                goto LABEL_356;
              }

              v224 = *re::imagePresentationLogObjects(v471);
              if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
              {
                goto LABEL_356;
              }

              v472 = v138[39];
              *buf = 134217984;
              *&buf[4] = v472;
              v226 = "Setting current ImmersiveViewingMode to portal as this is the first frame presenting spatial content [id=%llu]";
              goto LABEL_354;
            }

            if (v468 == v216)
            {
              v595 = re::MediaDefaults::logEnabled(v218);
              if (v595)
              {
                v596 = *re::imagePresentationLogObjects(v595);
                if (os_log_type_enabled(v596, OS_LOG_TYPE_INFO))
                {
                  v597 = v138[39];
                  *buf = 16777984;
                  buf[4] = v216;
                  *&buf[5] = 256;
                  buf[7] = v216;
                  *&buf[8] = 2048;
                  *&buf[10] = v597;
                  v226 = "Skipping handleImmersiveModeChangeForSpatialImages as the desired immersive viewing mode %d is the current immersive viewing mode %d [id=%llu]";
                  v258 = v596;
                  v259 = 18;
                  goto LABEL_355;
                }
              }

              goto LABEL_356;
            }

            v607 = (v137 | *(v218 + 29)) ^ 1;
            v608 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v608)
            {
              v607 &= *(v608 + 92);
            }

            else
            {
              v662 = *re::imagePresentationLogObjects(0);
              v608 = os_log_type_enabled(v662, OS_LOG_TYPE_ERROR);
              if (v608)
              {
                *buf = 67109120;
                *&buf[4] = 2290;
                _os_log_error_impl(&dword_1E1C61000, v662, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, spatialMediaComponent is nullptr", buf, 8u);
              }

              v111 = v685;
              v176 = v690 + 12544;
              v138 = v691;
            }

            v609 = *re::imagePresentationLogObjects(v608);
            if (os_log_type_enabled(v609, OS_LOG_TYPE_INFO))
            {
              v610 = v138[39];
              *buf = 16778240;
              buf[4] = v468;
              *&buf[5] = 256;
              buf[7] = v216;
              *&buf[8] = 1024;
              *&buf[10] = v607 & 1;
              *&buf[14] = 2048;
              *&buf[16] = v610;
              _os_log_impl(&dword_1E1C61000, v609, OS_LOG_TYPE_INFO, "Triggering spatial immersive transition, current mode %d, desired mode %d, shouldAnimateTransition %d [id=%llu]", buf, 0x18u);
            }

            if (v216 == 2)
            {
              if (v607)
              {
                v611 = v690;
                v612 = v138;
                v613 = 2;
LABEL_843:
                re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingSpatialImmersiveTransition(v611, v612, v613);
                goto LABEL_356;
              }

              if (*(v194 + 26) == 2)
              {
                goto LABEL_356;
              }

              v614 = 2;
            }

            else
            {
              if (v216 != 1)
              {
                goto LABEL_356;
              }

              if (v607)
              {
                v611 = v690;
                v612 = v138;
                v613 = 1;
                goto LABEL_843;
              }

              if (*(v194 + 26) == 1)
              {
                goto LABEL_356;
              }

              v614 = 1;
            }

            *(v194 + 26) = v614;
            goto LABEL_306;
          }

          v248 = re::MediaDefaults::logEnabled(v218);
          v111 = v685;
          if (!v248)
          {
            goto LABEL_356;
          }

          v224 = *re::imagePresentationLogObjects(v248);
          if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
          {
            goto LABEL_356;
          }

          v249 = v138[39];
          *buf = 134217984;
          *&buf[4] = v249;
          v226 = "Skipping handleImmersiveModeChangeForSpatialImages as the desired viewing mode is not spatial stereo [id=%llu]";
        }

        else
        {
          v235 = re::MediaDefaults::logEnabled(v218);
          v111 = v685;
          if (!v235)
          {
            goto LABEL_356;
          }

          v224 = *re::imagePresentationLogObjects(v235);
          if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
          {
            goto LABEL_356;
          }

          v236 = v138[39];
          *buf = 134217984;
          *&buf[4] = v236;
          v226 = "Skipping handleImmersiveModeChangeForSpatialImages as not currently displaying the image in spatial [id=%llu]";
        }

LABEL_354:
        v258 = v224;
        v259 = 12;
LABEL_355:
        _os_log_impl(&dword_1E1C61000, v258, OS_LOG_TYPE_INFO, v226, buf, v259);
        goto LABEL_356;
      }

      v624 = *re::imagePresentationLogObjects(0);
      v111 = v685;
      if (!os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_356;
      }

      *buf = 67109120;
      *&buf[4] = 2234;
      v625 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    }

    else
    {
      v624 = *re::imagePresentationLogObjects(0);
      v111 = v685;
      if (!os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_356;
      }

      *buf = 67109120;
      *&buf[4] = 2229;
      v625 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    }

LABEL_929:
    _os_log_error_impl(&dword_1E1C61000, v624, OS_LOG_TYPE_ERROR, v625, buf, 8u);
    goto LABEL_356;
  }

  v196 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v196)
  {
    v624 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 1471;
    v625 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    goto LABEL_929;
  }

  v197 = *(v196 + 133);
  v198 = *(v196 + 132);
  v199 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v199)
  {
    v624 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v624, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_356;
    }

    *buf = 67109120;
    *&buf[4] = 1476;
    v625 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    goto LABEL_929;
  }

  v200 = v199;
  if (*(v199 + 25) != 2)
  {
    v227 = re::MediaDefaults::logEnabled(v199);
    if (!v227)
    {
      goto LABEL_356;
    }

    v224 = *re::imagePresentationLogObjects(v227);
    if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v228 = v138[39];
    *buf = 134217984;
    *&buf[4] = v228;
    v226 = "Skipping handleImmersiveModeChangeForMXI as not currently displaying the image in spatial3D. [entityID: %llu]";
    goto LABEL_354;
  }

  if (v198 != 2)
  {
    v233 = re::MediaDefaults::logEnabled(v199);
    if (!v233)
    {
      goto LABEL_356;
    }

    v224 = *re::imagePresentationLogObjects(v233);
    if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v234 = v138[39];
    *buf = 134217984;
    *&buf[4] = v234;
    v226 = "Skipping handleImmersiveModeChangeForMXI as the desired viewing mode is not spatial3D [entityID: %llu]";
    goto LABEL_354;
  }

  if (!v197)
  {
    v242 = re::MediaDefaults::logEnabled(v199);
    if (!v242)
    {
      goto LABEL_356;
    }

    v224 = *re::imagePresentationLogObjects(v242);
    if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v243 = v138[39];
    *buf = 134217984;
    *&buf[4] = v243;
    v226 = "Skipping handleImmersiveModeChangeForMXI, since None isn't a proper immersive viewing mode for MXI. [entityID: %llu]";
    goto LABEL_354;
  }

  if (v184->i8[0] == 1)
  {
    v201 = 24;
    v202 = 12600;
    while (1)
    {
      v203 = *(v675 + v201);
      if (v203)
      {
        break;
      }

LABEL_272:
      v201 += 4112;
      v202 += 4112;
      if (v201 == 24696)
      {
        v206 = v690 + 37248;
        v207 = v138[43];
        if (v207)
        {
          v208 = v138[45];
          v209 = 8 * v207;
          while (1)
          {
            v210 = *v208;
            if ((*(*v208 + 288) ^ 0xCD040ED7D618C260) <= 1)
            {
              v211 = v210[37];
              if (v211 == "__InternalIPC-MXI__")
              {
                break;
              }

              v199 = strcmp(v211, "__InternalIPC-MXI__");
              if (!v199)
              {
                break;
              }
            }

            v208 += 8;
            v209 -= 8;
            if (!v209)
            {
              goto LABEL_279;
            }
          }

          v213 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v213)
          {
            v615 = v213;
            v184 = (v690 + 37248);
            if (*v206 == 1)
            {
              v616 = *(v690 + 37264);
              if (*(v213 + 26) != v616)
              {
                *(v213 + 26) = v616;
                v617 = *(*(v213 + 16) + 216);
                if (v617)
                {
                  re::ecs2::NetworkComponent::markDirty(v617, v615);
                }
              }

              re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(v690, v210, v138, v616);
              if (v616 == 2)
              {
                re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v210, 0);
                v618 = re::ecs2::EntityComponentCollection::get((v210 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                *(v618 + 114) = 1065353216;
              }

              v619 = *re::imagePresentationLogObjects(v618);
              v213 = os_log_type_enabled(v619, OS_LOG_TYPE_DEFAULT);
              if (v213)
              {
                v620 = v138[39];
                *buf = 16777728;
                buf[4] = v616;
                *&buf[5] = 2048;
                *&buf[7] = v620;
                _os_log_impl(&dword_1E1C61000, v619, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper::completeAnimatingMXIImmersiveTransition] target ImageImmersiveViewingMode %u [entityID: %llu]", buf, 0xFu);
              }

              if (*v206)
              {
                *v206 = 0;
              }
            }

            if (*(v615 + 28))
            {
              *(v615 + 28) = 0;
              v213 = *(*(v615 + 16) + 216);
              if (v213)
              {
                re::ecs2::NetworkComponent::markDirty(v213, v615);
              }
            }

            goto LABEL_351;
          }

          v212 = *re::imagePresentationLogObjects(0);
          v213 = os_log_type_enabled(v212, OS_LOG_TYPE_ERROR);
          v184 = (v690 + 37248);
          if (!v213)
          {
            goto LABEL_351;
          }

          *buf = 67109120;
          *&buf[4] = 1254;
          v214 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
        }

        else
        {
LABEL_279:
          v212 = *re::imagePresentationLogObjects(v199);
          v213 = os_log_type_enabled(v212, OS_LOG_TYPE_ERROR);
          v184 = (v690 + 37248);
          if (!v213)
          {
            goto LABEL_351;
          }

          *buf = 67109120;
          *&buf[4] = 1251;
          v214 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
        }

        _os_log_error_impl(&dword_1E1C61000, v212, OS_LOG_TYPE_ERROR, v214, buf, 8u);
        goto LABEL_351;
      }
    }

    v204 = 16 * v203;
    v205 = v202;
    while (*(v690 + v205) != 2)
    {
      v205 += 16;
      v204 -= 16;
      if (!v204)
      {
        goto LABEL_272;
      }
    }

    v250 = *(v690 + 37264);
    v251 = v138[43];
    if (v251)
    {
      v252 = v138[45];
      v253 = 8 * v251;
      while (1)
      {
        v254 = *v252;
        if ((*(*v252 + 288) ^ 0xCD040ED7D618C260) <= 1)
        {
          v255 = *(v254 + 296);
          if (v255 == "__InternalIPC-MXI__" || !strcmp(v255, "__InternalIPC-MXI__"))
          {
            break;
          }
        }

        ++v252;
        v253 -= 8;
        if (!v253)
        {
          goto LABEL_349;
        }
      }
    }

    else
    {
LABEL_349:
      v254 = 0;
    }

    re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(v690, v254, v138, v250);
    v184 = (v690 + 37248);
LABEL_351:
    v256 = re::MediaDefaults::logEnabled(v213);
    if (!v256)
    {
      goto LABEL_356;
    }

    v224 = *re::imagePresentationLogObjects(v256);
    if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v257 = v138[39];
    *buf = 134217984;
    *&buf[4] = v257;
    v226 = "Skipping handleImmersiveModeChangeForMXI as an animated immersive transition is underway. [entityID: %llu]";
    goto LABEL_354;
  }

  v244 = *(v199 + 26);
  if (!*(v199 + 26) && v197 == 1)
  {
    *(v199 + 26) = 1;
    v245 = *(*(v199 + 16) + 216);
    if (v245)
    {
      re::ecs2::NetworkComponent::markDirty(v245, v200);
    }

    v246 = re::MediaDefaults::logEnabled(v245);
    if (!v246)
    {
      goto LABEL_356;
    }

    v224 = *re::imagePresentationLogObjects(v246);
    if (!os_log_type_enabled(v224, OS_LOG_TYPE_INFO))
    {
      goto LABEL_356;
    }

    v247 = v138[39];
    *buf = 134217984;
    *&buf[4] = v247;
    v226 = "Setting current ImmersiveViewingMode to portal as this is the first frame presenting MXI content. [entityID: %llu]";
    goto LABEL_354;
  }

  if (v244 != v197)
  {
    v591 = (v137 | *(v199 + 29)) ^ 1;
    v592 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v592)
    {
      v591 &= *(v592 + 92);
    }

    v593 = *re::imagePresentationLogObjects(v592);
    if (os_log_type_enabled(v593, OS_LOG_TYPE_INFO))
    {
      v594 = v138[39];
      *buf = 16778240;
      buf[4] = v244;
      *&buf[5] = 256;
      buf[7] = v197;
      *&buf[8] = 1024;
      *&buf[10] = v591 & 1;
      *&buf[14] = 2048;
      *&buf[16] = v594;
      _os_log_impl(&dword_1E1C61000, v593, OS_LOG_TYPE_INFO, "Triggering MXI immersive transition, current mode %d, desired mode %d, shouldAnimateTransition %d. [entityID: %llu]", buf, 0x18u);
    }

    if (v591)
    {
      re::ecs2::ImagePresentationComponentHelper::impl::startAnimatingMXIImmersiveTransition(v690, v138, v197);
      goto LABEL_356;
    }

    if (*(v200 + 26) == v197)
    {
      goto LABEL_356;
    }

    *(v200 + 26) = v197;
    v229 = *(*(v200 + 16) + 216);
    if (!v229)
    {
      goto LABEL_356;
    }

    v230 = v200;
LABEL_308:
    re::ecs2::NetworkComponent::markDirty(v229, v230);
    goto LABEL_356;
  }

  v465 = re::MediaDefaults::logEnabled(v199);
  if (v465)
  {
    v466 = *re::imagePresentationLogObjects(v465);
    if (os_log_type_enabled(v466, OS_LOG_TYPE_INFO))
    {
      v467 = v138[39];
      *buf = 16777728;
      buf[4] = v197;
      *&buf[5] = 2048;
      *&buf[7] = v467;
      v226 = "Skipping handleImmersiveModeChangeForMXI as the desired immersive viewing mode is the current immersive viewing mode (%d) . [entityID: %llu]";
      v258 = v466;
      v259 = 15;
      goto LABEL_355;
    }
  }

LABEL_356:
  v260 = re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if ((*(v260 + 345) & 1) == 0)
  {
    v261 = v260;
    if (*(re::ecs2::EntityComponentCollection::get((v138 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 25) != 2 && (*v176 != 1 || v176[2] != 2) && re::ecs2::ImagePresentationComponentHelper::impl::hasMXIResources(v138, v262))
    {
      v263 = *(v261 + 160);
      if (v263)
      {

        *(v261 + 160) = 0;
      }

      *(v261 + 168) = 0;
      v264 = *(v261 + 184);
      if (v264)
      {

        *(v261 + 184) = 0;
      }

      *(v261 + 192) = 0;
      re::DynamicArray<re::AssetHandle>::clear((v261 + 208));
      v265 = *(v261 + 248);
      if (v265)
      {

        *(v261 + 248) = 0;
      }

      *(v261 + 256) = 0;
      v266 = *(v261 + 272);
      if (v266)
      {

        *(v261 + 272) = 0;
      }

      *(v261 + 280) = 0;
      *(v261 + 296) = 0;
      *(v261 + 304) = 0;
      *(v261 + 312) = 0x80000000040;
      *(v261 + 320) = 2048;
      *(v261 + 324) = 1;
      *(v261 + 345) = 0;
    }
  }

  if (v677 != 2 && *(v111 + 25) != 2 && (*v176 != 1 || v176[2] != 2))
  {
    goto LABEL_465;
  }

  for (i = *(v691 + 360); ; i += 8)
  {
    v268 = *i;
    if ((*(*i + 288) ^ 0xCD040ED7D618C260) <= 1)
    {
      v269 = v268[37];
      if (v269 == "__InternalIPC-MXI__")
      {
        break;
      }

      v269 = strcmp(v269, "__InternalIPC-MXI__");
      if (!v269)
      {
        break;
      }
    }
  }

  v270 = v268[43];
  if (!v270)
  {
LABEL_384:
    v275 = *re::imagePresentationLogObjects(v269);
    v176 = v690 + 12544;
    if (os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 2817;
      v276 = "ImagePresentationComponentHelper line: %d, mxiColliderEntity is nullptr";
      goto LABEL_386;
    }

    goto LABEL_465;
  }

  v271 = v184;
  v272 = v268[45];
  v273 = 8 * v270;
  do
  {
    v274 = *v272;
    if ((*(*v272 + 288) ^ 0x15C850817C18C722uLL) <= 1)
    {
      v269 = v274[37];
      if (v269 == "__InternalIPC-MXI-Collider__" || (v269 = strcmp(v269, "__InternalIPC-MXI-Collider__"), !v269))
      {
        if (!v268)
        {
          goto LABEL_886;
        }

        if (!v111)
        {
          v275 = *re::imagePresentationLogObjects(v269);
          v176 = v690 + 12544;
          if (!os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 67109120;
          *&buf[4] = 2820;
          v276 = "ImagePresentationComponentHelper line: %d, statusComponent is nullptr";
          goto LABEL_386;
        }

        v277 = *(v683[2] + 17);
        v278 = *v683;
        v279 = re::ecs2::EntityComponentCollection::get((v268 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v279)
        {
          v275 = *re::imagePresentationLogObjects(0);
          v176 = v690 + 12544;
          if (!os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_465;
          }

          *buf = 67109120;
          *&buf[4] = 2823;
          v276 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
          goto LABEL_386;
        }

        v281 = v279;
        *(v279 + 108) = v684[41].i32[0];
        re::ecs2::ImagePresentationComponentHelper::impl::updateMXIComponentResources(v684, v279, v277, v278, v280);
        v282 = re::ecs2::EntityComponentCollection::get((v691 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        v285 = v282;
        v286.n128_u64[0] = *(v281 + 132);
        v287 = *(v690 + 1);
        if (v286.n128_f32[0] != *v690 && vabds_f32(v286.n128_f32[0], *v690) >= (((fabsf(v286.n128_f32[0]) + fabsf(*v690)) + 1.0) * 0.00001) || v286.n128_f32[1] != v287 && vabds_f32(v286.n128_f32[1], v287) >= (((fabsf(v286.n128_f32[1]) + fabsf(v287)) + 1.0) * 0.00001))
        {
          v673 = 10.0 / *(v690 + 20);
          v678 = v286;
          re::ecs2::buildCollisionShapeAssetHandle(v278, v283, v286, v286.n128_f32[1], v673);
          v288 = re::ecs2::EntityComponentCollection::get((v274 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          re::AssetHandle::operator=((v288 + 4), buf);
          re::ecs2::Component::markDirty(v288);
          v289 = re::ecs2::EntityComponentCollection::get((v274 + 6), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v290 = v678;
          v290.n128_f32[2] = v673;
          *v710 = v290;
          re::ecs2::UISortingComponent::setExtents(v289, v710);
          if (v285)
          {
            v291 = *(v285 + 20);
            if (*(v289 + 80) != v291)
            {
              *(v289 + 80) = v291;
            }

            v292 = *(v285 + 21);
          }

          else
          {
            if (*(v289 + 80) != -1)
            {
              *(v289 + 80) = -1;
            }

            v292 = 2;
          }

          if (*(v289 + 84) != v292)
          {
            *(v289 + 84) = v292;
          }

          re::ecs2::Component::markDirty(v289);
          *v690 = v678.n128_u64[0];
          re::AssetHandle::~AssetHandle(buf);
        }

        v293 = *(v281 + 35);
        v294 = *(v690 + 2) - v293;
        if (v294 < 0.0)
        {
          v294 = -v294;
        }

        if (v294 > 0.001)
        {
          v295 = v274[32];
          re::ecs2::TransformComponent::setLocalPosition(v295, 0, COERCE_UNSIGNED_INT(-v293), 0);
          v282 = re::ecs2::Component::markDirty(v295);
          *(v690 + 2) = *(v281 + 35);
        }

        if (*(v111 + 28) == 1 && v271->i8[0] == 1)
        {
          v296 = v271[2].i8[0];
          v297 = *(v690 + 2330);
          v298 = *(v690 + 2331);
          v299 = v271[11].f32[0];
          v300 = *(v690 + 2334);
          v301 = *(v690 + 2335);
          v302 = v271[19].f32[0];
          v286.n128_u32[0] = *(v690 + 3143);
          *v284.i32 = 1.0 - v286.n128_f32[0];
          v679 = vmlaq_n_f32(vmulq_n_f32(*(v690 + 2336), v286.n128_f32[0]), *(v690 + 2332), 1.0 - v286.n128_f32[0]);
          *v716 = v679;
          *buf = vmlaq_n_f32(vmulq_n_f32(v300, v286.n128_f32[0]), v297, 1.0 - v286.n128_f32[0]);
          *&buf[16] = vmlaq_n_f32(vmulq_n_f32(v301, v286.n128_f32[0]), v298, 1.0 - v286.n128_f32[0]);
          *&v716[16] = vmla_f32(vmul_f32(v271[18], *&vdupq_lane_s32(v286.n128_u64[0], 0)), *&vdupq_lane_s32(v284, 0), v271[10]);
          v303 = 1.0;
          v304 = v691;
          v305 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
          if (v286.n128_f32[0] < 1.0)
          {
            v303 = 1.0 - exp2f(v286.n128_f32[0] * -10.0);
          }

          *&v716[24] = (v302 * v303) + (v299 * (1.0 - v303));
          re::ecs2::ImagePresentationComponentHelper::impl::applyLowLevelMXILayoutDescriptionToMXIEntity(v268, buf);
          v307 = re::MediaDefaults::logEnabled(v306);
          if (v307)
          {
            v308 = *re::imagePresentationLogObjects(v307);
            v307 = os_log_type_enabled(v308, OS_LOG_TYPE_DEBUG);
            if (v307)
            {
              v309 = v308;
              v310 = v268[4];
              if ((*(v310 + 304) & 0x80) != 0)
              {
                v310 = 0;
              }

              v311 = *(v310 + 312);
              *v710 = 16778752;
              v710[4] = v296;
              *&v710[5] = 2048;
              *&v710[7] = v679.f32[0];
              *&v710[15] = 2048;
              *&v710[17] = v679.f32[1];
              *&v710[25] = 2048;
              *&v710[27] = v679.f32[2];
              *&v710[35] = 2048;
              *&v710[37] = v679.f32[3];
              *&v710[45] = 2048;
              *&v710[47] = v311;
              _os_log_debug_impl(&dword_1E1C61000, v309, OS_LOG_TYPE_DEBUG, "[ImagePresentationComponentHelper::updateAnimatingMXIImmersiveTransition] target ImageImmersiveViewingMode %d, proxyWidth: %f, proxyHeight: %f, proxyDistance: %f, proxyCornerRadius: %f [entityID: %llu]", v710, 0x37u);
            }
          }

          goto LABEL_430;
        }

        if ((*(v268[4] + 304) & 0x80) != 0)
        {
          v312 = 0;
        }

        else
        {
          v312 = v268[4];
        }

        v313 = *(v111 + 26);
        LOBYTE(v705[0]) = *(v111 + 26);
        v314 = v312[43];
        v305 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (v314)
        {
          v315 = v312[45];
          v316 = 8 * v314;
          while (1)
          {
            v317 = *v315;
            if ((*(*v315 + 288) ^ 0xCD040ED7D618C260) <= 1)
            {
              v318 = v317[37];
              if (v318 == "__InternalIPC-MXI__")
              {
                break;
              }

              v282 = strcmp(v318, "__InternalIPC-MXI__");
              if (!v282)
              {
                break;
              }
            }

            v315 += 8;
            v316 -= 8;
            if (!v316)
            {
              goto LABEL_429;
            }
          }

          if (re::ecs2::EntityComponentCollection::get((v317 + 6), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
          {
            v331 = re::ecs2::EntityComponentCollection::get((v312 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            v332 = v690;
            if (v331)
            {
              v333 = v331;
              v334 = re::MediaDefaults::logEnabled(v331);
              if (v334 && (v651 = re::MediaDefaults::logLevel(v334), v651 > 1))
              {
                v652 = qword_1EE1A8520;
                v653 = re::MediaDefaults::logSubsampleRate(v651);
                ++qword_1EE1A8520;
                v332 = v690;
                if (!(v652 % v653))
                {
                  hasMXIResources = re::ecs2::ImagePresentationComponentHelper::impl::hasMXIResources(v312, v654);
                  if (hasMXIResources)
                  {
                    v656 = *re::imagePresentationLogObjects(hasMXIResources);
                    if (os_log_type_enabled(v656, OS_LOG_TYPE_DEFAULT))
                    {
                      v657 = v333[75];
                      v658 = v333[74];
                      *buf = 134218240;
                      *&buf[4] = v657;
                      *&buf[12] = 2048;
                      *&buf[14] = v658;
                      _os_log_impl(&dword_1E1C61000, v656, OS_LOG_TYPE_DEFAULT, "[MXI] Has MXI Active Resources: VFoV & AR: %f %f", buf, 0x16u);
                    }
                  }

                  v332 = v690;
                  re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(buf, v690, v312, v333, v705);
                  v304 = v691;
                  v305 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
                  if ((buf[0] & 1) == 0)
                  {
                    v660 = *re::imagePresentationLogObjects(v659);
                    v307 = os_log_type_enabled(v660, OS_LOG_TYPE_DEFAULT);
                    if (v307)
                    {
                      *v710 = 16777472;
                      v710[4] = v313;
                      _os_log_impl(&dword_1E1C61000, v660, OS_LOG_TYPE_DEFAULT, "[MXI] failed to get layout description for immersive viewing mode %d, skipping update", v710, 5u);
                    }

                    goto LABEL_430;
                  }

LABEL_445:
                  re::ecs2::ImagePresentationComponentHelper::impl::applyLowLevelMXILayoutDescriptionToMXIEntity(v317, &buf[16]);
                  re::ecs2::ImagePresentationComponentHelper::impl::updateMXITreatmentConfig(v332, v317, v312, v313);
                  v335 = re::ecs2::EntityComponentCollection::get((v312 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                  if (*(v335 + 26) != v313)
                  {
                    v336 = v335;
                    *(v335 + 26) = v313;
                    v337 = *(*(v335 + 16) + 216);
                    if (v337)
                    {
                      re::ecs2::NetworkComponent::markDirty(v337, v336);
                    }
                  }

                  re::ecs2::ImagePresentationComponentHelper::impl::setMXIGroundingShadowEnabled(v317, (v313 != 2));
LABEL_430:
                  v320 = *(v304 + 256);
                  if (v320)
                  {
                    v321 = re::ecs2::EntityComponentCollection::get((v304 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                    v111 = v685;
                    if (v321)
                    {
                      v322 = v321;
                      v323 = re::ecs2::EntityComponentCollection::get((v304 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                      if (v323)
                      {
                        v324 = v268[32];
                        if (v324)
                        {
                          v325 = v323;
                          v326 = re::ecs2::EntityComponentCollection::get((v268 + 6), v305[83]);
                          if (v326)
                          {
                            v327 = v326;
                            v328 = v320[9];
                            __asm { FMOV            V2.4S, #1.0 }

                            _Q2.f32[2] = v328 / v320[10];
                            v176 = v690 + 12544;
                            v680 = _Q2;
                            if (*(v322 + 148))
                            {
                              *(v326 + 152) = 0;
                              v304 = v691;
                            }

                            else
                            {
                              v674 = v328 / v320[8];
                              *(v326 + 132) = *(v326 + 136) / v674;
                              v330 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(v326) && (*(v325 + 28) & 1) == 0 && *(v325 + 26) != 2;
                              v304 = v691;
                              v338 = v680;
                              v338.f32[0] = v674;
                              v680 = v338;
                              *(v327 + 152) = v330;
                            }

                            re::ecs2::Component::markDirty(v327);
                            v339 = *(v690 + 12545);
                            if (v339 == 2)
                            {
                              v340 = *(v690 + 12546) != 1;
                            }

                            else
                            {
                              if (v339 != 1 || *(v690 + 12546) != 2)
                              {
                                goto LABEL_459;
                              }

                              v340 = 0;
                            }

                            if (*v687 == 1 && !v340)
                            {
                              v341 = 3141062592;
LABEL_460:
                              re::ecs2::TransformComponent::setLocalPosition(v324, 0, v341, 0);
                              re::ecs2::TransformComponent::setLocalScale(v324, v680.i64[0], v680.i64[1], 0);
                              re::ecs2::Component::markDirty(v324);
LABEL_461:
                              v342 = re::ecs2::EntityComponentCollection::get((v304 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
                              if (v342)
                              {
                                v343 = (v342 + 8);
                              }

                              else
                              {
                                v343 = 0;
                              }

                              objc_initWeak(location, v343);
                              re::ArcWeakPtr<re::ecs2::UISortingComponent>::operator=(v281 + 98, location);
                              objc_destroyWeak(location);
                              goto LABEL_465;
                            }

LABEL_459:
                            v341 = 0;
                            goto LABEL_460;
                          }

                          v640 = *re::imagePresentationLogObjects(0);
                          v304 = v691;
                          v176 = v690 + 12544;
                          if (!os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_461;
                          }

                          *buf = 67109120;
                          *&buf[4] = 1634;
                          v641 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
                        }

                        else
                        {
                          v640 = *re::imagePresentationLogObjects(v323);
                          v304 = v691;
                          v176 = v690 + 12544;
                          if (!os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
                          {
                            goto LABEL_461;
                          }

                          *buf = 67109120;
                          *&buf[4] = 1632;
                          v641 = "ImagePresentationComponentHelper line: %d, mxiTransform is nullptr";
                        }
                      }

                      else
                      {
                        v640 = *re::imagePresentationLogObjects(0);
                        v304 = v691;
                        v176 = v690 + 12544;
                        if (!os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
                        {
                          goto LABEL_461;
                        }

                        *buf = 67109120;
                        *&buf[4] = 1630;
                        v641 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
                      }
                    }

                    else
                    {
                      v640 = *re::imagePresentationLogObjects(0);
                      v176 = v690 + 12544;
                      if (!os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
                      {
                        goto LABEL_461;
                      }

                      *buf = 67109120;
                      *&buf[4] = 1628;
                      v641 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
                    }
                  }

                  else
                  {
                    v640 = *re::imagePresentationLogObjects(v307);
                    v111 = v685;
                    v176 = v690 + 12544;
                    if (!os_log_type_enabled(v640, OS_LOG_TYPE_ERROR))
                    {
                      goto LABEL_461;
                    }

                    *buf = 67109120;
                    *&buf[4] = 1626;
                    v641 = "ImagePresentationComponentHelper line: %d, ipcTransform is nullptr";
                  }

                  _os_log_error_impl(&dword_1E1C61000, v640, OS_LOG_TYPE_ERROR, v641, buf, 8u);
                  goto LABEL_461;
                }
              }

              else
              {
                ++qword_1EE1A8520;
              }

              re::ecs2::ImagePresentationComponentHelper::impl::getMXILayoutDescriptionDescribing(buf, v332, v312, v333, v705);
              v304 = v691;
              if ((buf[0] & 1) == 0)
              {
                goto LABEL_430;
              }

              goto LABEL_445;
            }

            v319 = *re::imagePresentationLogObjects(0);
            v307 = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
            v304 = v691;
            if (!v307)
            {
              goto LABEL_430;
            }

            *buf = 67109120;
            *&buf[4] = 1111;
            v605 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
          }

          else
          {
            v319 = *re::imagePresentationLogObjects(0);
            v307 = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
            v304 = v691;
            if (!v307)
            {
              goto LABEL_430;
            }

            *buf = 67109120;
            *&buf[4] = 1108;
            v605 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
          }
        }

        else
        {
LABEL_429:
          v319 = *re::imagePresentationLogObjects(v282);
          v307 = os_log_type_enabled(v319, OS_LOG_TYPE_ERROR);
          v304 = v691;
          if (!v307)
          {
            goto LABEL_430;
          }

          *buf = 67109120;
          *&buf[4] = 1106;
          v605 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
        }

        _os_log_error_impl(&dword_1E1C61000, v319, OS_LOG_TYPE_ERROR, v605, buf, 8u);
        goto LABEL_430;
      }
    }

    v272 += 8;
    v273 -= 8;
  }

  while (v273);
  if (v268)
  {
    goto LABEL_384;
  }

LABEL_886:
  v275 = *re::imagePresentationLogObjects(v269);
  v176 = v690 + 12544;
  if (!os_log_type_enabled(v275, OS_LOG_TYPE_ERROR))
  {
    goto LABEL_465;
  }

  *buf = 67109120;
  *&buf[4] = 2816;
  v276 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
LABEL_386:
  _os_log_error_impl(&dword_1E1C61000, v275, OS_LOG_TYPE_ERROR, v276, buf, 8u);
LABEL_465:
  v344 = v683;
  v345 = *v683;
  v346 = re::ecs2::EntityComponentCollection::get((v691 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v346)
  {
    v352 = *re::imagePresentationLogObjects(0);
    v353 = os_log_type_enabled(v352, OS_LOG_TYPE_ERROR);
    v354 = v691;
    v355 = v684;
    if (!v353)
    {
      goto LABEL_473;
    }

    *buf = 67109120;
    *&buf[4] = 1966;
    v451 = "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr";
LABEL_596:
    _os_log_error_impl(&dword_1E1C61000, v352, OS_LOG_TYPE_ERROR, v451, buf, 8u);
    goto LABEL_473;
  }

  v347 = *(v691 + 344);
  if (!v347)
  {
LABEL_472:
    v352 = *re::imagePresentationLogObjects(v346);
    v353 = os_log_type_enabled(v352, OS_LOG_TYPE_ERROR);
    v354 = v691;
    v176 = v690 + 12544;
    v355 = v684;
    if (!v353)
    {
      goto LABEL_473;
    }

    *buf = 67109120;
    *&buf[4] = 1969;
    v451 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
    goto LABEL_596;
  }

  v348 = *(v691 + 360);
  v349 = 8 * v347;
  while (1)
  {
    v350 = *v348;
    if ((*(*v348 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v351 = *(v350 + 296);
      if (v351 == "__InternalIPC-Screen__")
      {
        break;
      }

      v346 = strcmp(v351, "__InternalIPC-Screen__");
      if (!v346)
      {
        break;
      }
    }

    ++v348;
    v349 -= 8;
    if (!v349)
    {
      goto LABEL_472;
    }
  }

  re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(buf, v690, v691);
  v364 = *(v691 + 344);
  if (v364)
  {
    v365 = *(v691 + 360);
    v366 = 8 * v364;
    while (1)
    {
      v367 = *v365;
      if ((*(*v365 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
      {
        v368 = *(v367 + 296);
        if (v368 == "__InternalIPC-Screen__")
        {
          break;
        }

        v363 = strcmp(v368, "__InternalIPC-Screen__");
        if (!v363)
        {
          break;
        }
      }

      ++v365;
      v366 -= 8;
      if (!v366)
      {
        goto LABEL_490;
      }
    }

    v393 = re::ecs2::EntityComponentCollection::get((v367 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v393)
    {
      v370 = *(v393 + 120);
      v369 = *(v393 + 128);
      v371 = *(v393 + 144);
      goto LABEL_517;
    }

    v369 = 0uLL;
    v370 = 0.0;
    if ((atomic_exchange(byte_1EE1A847C, 1u) & 1) == 0)
    {
      v390 = *re::imagePresentationLogObjects(0);
      if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
      {
        v452 = *(v691 + 312);
        *v710 = 134217984;
        *&v710[4] = v452;
        v392 = "[getCurrentScreenEntityConfiguration] screen entity has no UILayerGeometryComponent [id=%llu]";
LABEL_513:
        _os_log_impl(&dword_1E1C61000, v390, OS_LOG_TYPE_DEFAULT, v392, v710, 0xCu);
      }

      goto LABEL_514;
    }

LABEL_491:
    v371 = 0;
  }

  else
  {
LABEL_490:
    v369 = 0uLL;
    v370 = 0.0;
    if (atomic_exchange(&unk_1EE1A847B, 1u))
    {
      goto LABEL_491;
    }

    v390 = *re::imagePresentationLogObjects(v363);
    if (os_log_type_enabled(v390, OS_LOG_TYPE_DEFAULT))
    {
      v391 = *(v691 + 312);
      *v710 = 134217984;
      *&v710[4] = v391;
      v392 = "[getCurrentScreenGeometryConfiguration] entity has no screen entity [id=%llu]";
      goto LABEL_513;
    }

LABEL_514:
    v371 = 0;
    v369 = 0uLL;
  }

LABEL_517:
  v681 = *&v716[24];
  if ((vminv_u16(vmovn_s32(vceqq_f32(*v716, vzip2q_s32(vzip1q_s32(v369, vextq_s8(v369, v369, 0xCuLL)), v369)))) & 1) == 0)
  {
    goto LABEL_533;
  }

  v394 = *&v716[16] != 0.0 || *&v716[24] != v370;
  v395 = !v394 && *&v717 == 1.0;
  if (!v395 || v716[20] != 0)
  {
    goto LABEL_533;
  }

  if (v371 != v716[21])
  {
    goto LABEL_533;
  }

  if (v716[28])
  {
    goto LABEL_533;
  }

  v397 = vceqz_f32(*(&v717 + 8));
  if ((vpmin_u32(v397, v397).u32[0] & 0x80000000) == 0)
  {
    goto LABEL_533;
  }

  __asm { FMOV            V1.2S, #1.0 }

  v399 = vceq_f32(v718, _D1);
  if ((vpmin_u32(v399, v399).u32[0] & 0x80000000) == 0)
  {
LABEL_533:
    *v710 = *v716;
    *&v710[16] = *&v716[16];
    *&v710[32] = v717;
    *&v710[48] = v718;
    re::ecs2::createPlane(v350, v710);
    v400 = *(v350 + 192);
    if (v400)
    {
      re::ecs2::Component::markDirty(v400);
      v401 = re::ecs2::EntityComponentCollection::get((v350 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v401)
      {
        v404 = v401;
        v403.n128_u32[0] = *v710;
        re::ecs2::buildCollisionShapeAssetHandle(v345, v402, v403, *&v710[4], *&v710[24]);
        re::AssetHandle::operator=((v404 + 4), location);
        re::ecs2::Component::markDirty(v404);
        re::AssetHandle::~AssetHandle(location);
      }

      else
      {
        v405 = *re::imagePresentationLogObjects(0);
        if (os_log_type_enabled(v405, OS_LOG_TYPE_ERROR))
        {
          *location = 0;
          _os_log_error_impl(&dword_1E1C61000, v405, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper] Can't update colliderComponent as it is nil for screenEntity.", location, 2u);
        }
      }

      v406 = re::ecs2::EntityComponentCollection::get((v350 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v406)
      {
        v407 = v406;
        v408 = *v710;
        DWORD2(v408) = *&v710[24];
        *location = v408;
        re::ecs2::UISortingComponent::setExtents(v406, location);
        v409 = re::ecs2::Component::markDirty(v407);
      }

      else
      {
        v410 = *re::imagePresentationLogObjects(0);
        v409 = os_log_type_enabled(v410, OS_LOG_TYPE_ERROR);
        if (v409)
        {
          *location = 0;
          _os_log_error_impl(&dword_1E1C61000, v410, OS_LOG_TYPE_ERROR, "[ImagePresentationComponentHelper] Can't update uiSortingComponent as it is nil for screenEntity.", location, 2u);
        }
      }

      v411 = re::MediaDefaults::logEnabled(v409);
      if (v411)
      {
        v632 = *re::imagePresentationLogObjects(v411);
        if (os_log_type_enabled(v632, OS_LOG_TYPE_DEFAULT))
        {
          v633 = *v710;
          v634 = *&v710[4];
          v635 = *&v710[24];
          v636 = *&v710[12];
          v637 = v632;
          v638 = *(v350 + 32);
          if ((*(v638 + 304) & 0x80) != 0)
          {
            v638 = 0;
          }

          v639 = *(v638 + 312);
          *location = 134219008;
          *&location[4] = v633;
          *&location[12] = 2048;
          *&location[14] = v634;
          v712 = 2048;
          v713 = v635;
          *v714 = 2048;
          *&v714[2] = v636;
          *&v714[10] = 2048;
          *&v714[12] = v639;
          _os_log_impl(&dword_1E1C61000, v637, OS_LOG_TYPE_DEFAULT, "[ImagePresentationComponentHelper] Re-generated the screen entity mesh. Updated width: %f, height: %f, bevelFrontDepthInMeters: %f, corner radius: %f. [entityID = %llu].", location, 0x34u);
        }
      }
    }

    else
    {
      v631 = *re::imagePresentationLogObjects(0);
      if (os_log_type_enabled(v631, OS_LOG_TYPE_ERROR))
      {
        *location = 0xB6504000100;
        _os_log_error_impl(&dword_1E1C61000, v631, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, meshComponent is nullptr", location, 8u);
      }
    }
  }

  v412 = *(v350 + 256);
  if (v412)
  {
    v413 = vmvnq_s8(vceqq_f32(v412[4], *buf));
    v413.i32[3] = v413.i32[2];
    v414 = vmaxvq_u32(v413);
    if ((v414 & 0x80000000) != 0)
    {
      re::ecs2::TransformComponent::setLocalPosition(*(v350 + 256), *buf, *&buf[8], 0);
    }

    v415 = vmvnq_s8(vceqq_f32(v412[2], *&buf[16]));
    v415.i32[3] = v415.i32[2];
    if ((vmaxvq_u32(v415) & 0x80000000) != 0)
    {
      re::ecs2::TransformComponent::setLocalScale(v412, *&buf[16], *&buf[24], 0);
      goto LABEL_550;
    }

    if ((v414 & 0x80000000) != 0)
    {
LABEL_550:
      re::ecs2::Component::markDirty(v412);
    }
  }

  v416 = *(v350 + 168);
  if (v416)
  {
    v417 = v719;
    if (*(v416 + 28) != *&v719)
    {
      re::ecs2::Component::willSet(*(v350 + 168));
      *(v416 + 28) = v417;
      re::ecs2::Component::didSet(v416);
      re::ecs2::NetworkComponent::markComponentDirty(v416, v418);
      re::ecs2::Component::markDirty(v416);
    }
  }

  v419 = *v716;
  v419.i32[2] = v681;
  v682 = v419;
  *v710 = v419;
  v420 = re::ecs2::EntityComponentCollection::get((v691 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v420)
  {
    v422 = *(v420 + 80);
    v421 = *(v420 + 84);
    v423 = re::ecs2::EntityComponentCollection::get((v691 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v423)
    {
      if (*(v423 + 25) == 2 || *v687 == 1 && *(v690 + 12546) == 2)
      {
        ++v421;
      }
    }

    else
    {
      v644 = *re::imagePresentationLogObjects(0);
      if (os_log_type_enabled(v644, OS_LOG_TYPE_ERROR))
      {
        *location = 0x7F904000100;
        _os_log_error_impl(&dword_1E1C61000, v644, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, imagePresentationStatusComponent is nullptr", location, 8u);
      }

      v344 = v683;
    }
  }

  else
  {
    v422 = -1;
    v421 = 2;
  }

  v424 = re::ecs2::EntityComponentCollection::getOrAdd((v350 + 48), re::ecs2::ComponentImpl<re::ecs2::UISortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v425 = v424;
  v426 = *(v424 + 48);
  v427 = *(v424 + 64);
  v428 = vcgtq_f32(v426, v427);
  v428.i32[3] = v428.i32[2];
  if ((vmaxvq_u32(v428) & 0x80000000) != 0)
  {
    v430 = *(v424 + 32);
  }

  else
  {
    v429 = vsubq_f32(v427, v426);
    v429.i32[3] = 0;
    v430 = vmaxnmq_f32(v429, 0);
  }

  v431 = vmvnq_s8(vceqq_f32(v682, v430));
  v431.i32[3] = v431.i32[2];
  if ((vmaxvq_u32(v431) & 0x80000000) != 0 || *(v424 + 80) != v422 || *(v424 + 84) != v421)
  {
    re::ecs2::UISortingComponent::setExtents(v424, v710);
    if (*(v425 + 80) != v422)
    {
      *(v425 + 80) = v422;
    }

    if (*(v425 + 84) != v421)
    {
      *(v425 + 84) = v421;
    }

    re::ecs2::Component::markDirty(v425);
  }

  v354 = v691;
  v432 = re::ecs2::EntityComponentCollection::get((v691 + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v432)
  {
    v439 = *re::imagePresentationLogObjects(0);
    v111 = v685;
    v176 = v690 + 12544;
    if (!os_log_type_enabled(v439, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_592;
    }

    *v710 = 67109120;
    *&v710[4] = 1876;
    v440 = "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr";
LABEL_581:
    _os_log_error_impl(&dword_1E1C61000, v439, OS_LOG_TYPE_ERROR, v440, v710, 8u);
    goto LABEL_592;
  }

  v433 = *(v691 + 344);
  if (!v433)
  {
LABEL_579:
    v439 = *re::imagePresentationLogObjects(v432);
    v111 = v685;
    v176 = v690 + 12544;
    if (!os_log_type_enabled(v439, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_592;
    }

    *v710 = 67109120;
    *&v710[4] = 1878;
    v440 = "ImagePresentationComponentHelper line: %d, screenEntity is nullptr";
    goto LABEL_581;
  }

  v434 = v432;
  v435 = *(v691 + 360);
  v436 = 8 * v433;
  while (1)
  {
    v437 = *v435;
    if ((*(*v435 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v438 = v437[37];
      if (v438 == "__InternalIPC-Screen__")
      {
        break;
      }

      v432 = strcmp(v438, "__InternalIPC-Screen__");
      if (!v432)
      {
        break;
      }
    }

    v435 += 8;
    v436 -= 8;
    if (!v436)
    {
      goto LABEL_579;
    }
  }

  v441 = *(v434 + 134);
  re::AssetHandle::AssetHandle(v710, (v434 + 40));
  v442 = v710[8];
  if (*&v710[8])
  {
    v443 = atomic_load((*&v710[8] + 896));
    v442 = v443 == 2;
  }

  v111 = v685;
  v176 = v690 + 12544;
  v444 = (v441 != 0) | v442;
  v445 = v437[29];
  if (!v445)
  {
    v445 = re::ecs2::EntityComponentCollection::add((v437 + 6), re::ecs2::ComponentImpl<re::ecs2::RenderOptionsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v446 = (v444 ^ 1) & 1;
  if (*(v445 + 25) != v446)
  {
    *(v445 + 25) = v446;
    v447 = re::ecs2::Component::markDirty(v445);
    v448 = re::MediaDefaults::logEnabled(v447);
    if (v448)
    {
      v449 = re::MediaDefaults::logLevel(v448);
      if (v449 >= 2)
      {
        v450 = *re::imagePresentationLogObjects(v449);
        if (os_log_type_enabled(v450, OS_LOG_TYPE_ERROR))
        {
          v622 = *(v691 + 312);
          *location = 67109376;
          *&location[4] = v444 & 1;
          *&location[8] = 2048;
          *&location[10] = v622;
          _os_log_error_impl(&dword_1E1C61000, v450, OS_LOG_TYPE_ERROR, "updateScreenEntityMeshVisibility to %d [entityID: %llu]", location, 0x12u);
        }
      }
    }
  }

  re::AssetHandle::~AssetHandle(v710);
LABEL_592:
  v353 = re::ecs2::EntityComponentCollection::get((v350 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v355 = v684;
  if (v353 && *(v353 + 108) != BYTE4(v719))
  {
    *(v353 + 108) = BYTE4(v719);
    v353 = re::ecs2::Component::markDirty(v353);
  }

LABEL_473:
  if (!v111)
  {
    v626 = *re::imagePresentationLogObjects(v353);
    if (os_log_type_enabled(v626, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 2495;
      _os_log_error_impl(&dword_1E1C61000, v626, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, statusComponent is nullptr", buf, 8u);
    }

    goto LABEL_634;
  }

  if (v355[43].i8[0] != 1 || *(v111 + 25))
  {
    *buf = *(v111 + 96);
    re::AssetHandle::AssetHandle(&buf[16], (v111 + 112));
    goto LABEL_477;
  }

  v386 = *&v344[2][34]._os_unfair_lock_opaque;
  v387 = *v344;
  v388 = v684[16].u8[4];
  *buf = *(v111 + 96);
  v389 = re::AssetHandle::AssetHandle(&buf[16], (v111 + 112));
  _ZF = v388 == 2;
  v355 = v684;
  if (_ZF)
  {
    if (*(v111 + 96))
    {
      if (buf[0] == 2)
      {
        *&buf[12] = *&buf[12] + a4;
        goto LABEL_631;
      }

      if (buf[0] != 1)
      {
LABEL_631:
        re::ecs2::ImagePresentationStatusComponent::setAlchemistAnimationParams(v111, buf);
LABEL_632:
        re::ecs2::Component::markDirty(v111);
        goto LABEL_633;
      }
    }

    else
    {
      v453 = *re::imagePresentationLogObjects(v389);
      if (os_log_type_enabled(v453, OS_LOG_TYPE_DEFAULT))
      {
        v454 = v354[39];
        *v710 = 134217984;
        *&v710[4] = v454;
        _os_log_impl(&dword_1E1C61000, v453, OS_LOG_TYPE_DEFAULT, "[Alchemist Animation] Starting to prepare for generation animation. [entityID: %llu]", v710, 0xCu);
      }

      buf[0] = 1;
    }

    v455 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v684[8]);
    if (v455)
    {
      AlchemistAnimationLoadingTexture = re::ImagePresentationTextureProcessor::generateAlchemistAnimationLoadingTexture(v386, v455);
      if (AlchemistAnimationLoadingTexture)
      {
        v457 = AlchemistAnimationLoadingTexture;
        v458 = re::TextureAsset::assetType(AlchemistAnimationLoadingTexture);
        (*(*&v387->_os_unfair_lock_opaque + 424))(v710, v387, v457, v458, 0, 0, 0);
        v459 = *&buf[16];
        *&buf[16] = *v710;
        *v710 = v459;
        v460 = *v716;
        *v716 = *&v710[16];
        *&v710[16] = v460;
        re::AssetHandle::~AssetHandle(v710);
      }

      else
      {
        v473 = *re::imagePresentationLogObjects(0);
        v455 = os_log_type_enabled(v473, OS_LOG_TYPE_ERROR);
        if (v455)
        {
          v621 = v354[39];
          *v710 = 134217984;
          *&v710[4] = v621;
          _os_log_error_impl(&dword_1E1C61000, v473, OS_LOG_TYPE_ERROR, "[Alchemist Animation] Preparing the loading texture for Alchemist generation animation but got a null texture asset. [entityID: %llu]", v710, 0xCu);
        }
      }
    }

    if (*&buf[24])
    {
      *&buf[4] = 0x3F19999A3F800000;
      buf[0] = 2;
      *&buf[12] = 0;
      v474 = *re::imagePresentationLogObjects(v455);
      if (os_log_type_enabled(v474, OS_LOG_TYPE_DEFAULT))
      {
        v475 = v354[39];
        *v710 = 134217984;
        *&v710[4] = v475;
        _os_log_impl(&dword_1E1C61000, v474, OS_LOG_TYPE_DEFAULT, "[Alchemist Animation] Generation animation started. [entityID: %llu]", v710, 0xCu);
      }
    }

    goto LABEL_631;
  }

LABEL_477:
  switch(buf[0])
  {
    case 3:
      *&buf[4] = *(v176 + 20);
      v377 = (v176 + 56);
      v378 = 24;
      while (1)
      {
        v379 = *(v675 + v378);
        if (v379)
        {
          break;
        }

LABEL_502:
        v378 += 4112;
        v377 += 4112;
        if (v378 == 24696)
        {
          re::ecs2::ImagePresentationStatusComponent::resetAlchemistAnimationParams(v111);
          v384 = *re::imagePresentationLogObjects(v383);
          if (os_log_type_enabled(v384, OS_LOG_TYPE_DEFAULT))
          {
            v385 = v354[39];
            *v710 = 134217984;
            *&v710[4] = v385;
            _os_log_impl(&dword_1E1C61000, v384, OS_LOG_TYPE_DEFAULT, "[Alchemist Animation] Generation animation ended. [entityID: %llu]", v710, 0xCu);
          }

          goto LABEL_632;
        }
      }

      v380 = 16 * v379;
      v381 = v377;
      while (1)
      {
        v382 = *v381;
        v381 += 16;
        if (v382 == 1)
        {
          goto LABEL_631;
        }

        v380 -= 16;
        if (!v380)
        {
          goto LABEL_502;
        }
      }

    case 2:
      media::Spatial3DImageAnimationEngine::addAlchemistGenerationEffectFadeOutAnimation(v675);
      buf[0] = 3;
      re::ecs2::ImagePresentationStatusComponent::setAlchemistAnimationParams(v111, buf);
      v372 = re::ecs2::Component::markDirty(v111);
      v357 = *re::imagePresentationLogObjects(v372);
      if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
      {
        v373 = "False";
        if (v355[43].i8[0])
        {
          v373 = "True";
        }

        v374 = *(v111 + 25);
        v375 = v355[16].i8[4];
        v376 = v354[39];
        *v710 = 136315906;
        *&v710[4] = v373;
        *&v710[12] = 256;
        v710[14] = v374;
        *&v710[15] = 256;
        v710[17] = v375;
        *&v710[18] = 2048;
        *&v710[20] = v376;
        v362 = "[Alchemist Animation] Ending the current generation animation as it is not needed. isSpatial3DImageGenerating = %s, currentViewingMode = %d, desiredViewingMode = %d. [entityID: %llu]";
LABEL_496:
        _os_log_impl(&dword_1E1C61000, v357, OS_LOG_TYPE_DEFAULT, v362, v710, 0x1Cu);
      }

      break;
    case 1:
      re::ecs2::ImagePresentationStatusComponent::resetAlchemistAnimationParams(v111);
      v357 = *re::imagePresentationLogObjects(v356);
      if (os_log_type_enabled(v357, OS_LOG_TYPE_DEFAULT))
      {
        v358 = "False";
        if (v355[43].i8[0])
        {
          v358 = "True";
        }

        v359 = *(v111 + 25);
        v360 = v355[16].i8[4];
        v361 = v354[39];
        *v710 = 136315906;
        *&v710[4] = v358;
        *&v710[12] = 256;
        v710[14] = v359;
        *&v710[15] = 256;
        v710[17] = v360;
        *&v710[18] = 2048;
        *&v710[20] = v361;
        v362 = "[Alchemist Animation] Abort the generation animation preparation as it is not needed. isSpatial3DImageGenerating = %s, currentViewingMode = %d, desiredViewingMode = %d. [entityID: %llu]";
        goto LABEL_496;
      }

      break;
  }

LABEL_633:
  re::AssetHandle::~AssetHandle(&buf[16]);
LABEL_634:
  v477 = *v344;
  v476 = v344[1];
  v478 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v479 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v480 = v354[43];
  if (!v480)
  {
    goto LABEL_731;
  }

  v481 = v479;
  v482 = v354[45];
  v483 = 8 * v480;
  while (1)
  {
    v484 = *v482;
    if ((*(*v482 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
    {
      v485 = v484[37];
      if (v485 == "__InternalIPC-Screen__" || !strcmp(v485, "__InternalIPC-Screen__"))
      {
        break;
      }
    }

    v482 += 8;
    v483 -= 8;
    if (!v483)
    {
      goto LABEL_731;
    }
  }

  if (!v478)
  {
    goto LABEL_731;
  }

  v486 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*&v476[6]._os_unfair_lock_opaque, v484[39]);
  v487 = v486;
  v488 = *(v481 + 25);
  if (v488 != 2)
  {
    goto LABEL_645;
  }

  if ((*v687 & 1) == 0)
  {
    *location = 2;
    *buf = 0x5B80F73BCFAA1E05;
    re::MaterialParameterBlock::setConstant(v486, buf, 4uLL, location, 3, v710);
    v709 = 0;
    *v710 = 0;
    v707 = 0;
    v708 = 0;
    goto LABEL_655;
  }

  v488 = *(v690 + 12546);
LABEL_645:
  *location = v488;
  *buf = 0x5B80F73BCFAA1E05;
  re::MaterialParameterBlock::setConstant(v486, buf, 4uLL, location, 3, v710);
  v709 = 0;
  *v710 = 0;
  v489 = *(v478 + 134);
  v707 = 0;
  v708 = 0;
  if (v488 == 1)
  {
    if (v489 != 2)
    {
      goto LABEL_655;
    }

    v490 = 104;
    v491 = 128;
LABEL_651:
    v492 = *(v478 + v491);
    v493 = re::AssetHandle::operator=(&v707, (v478 + v490));
    if (v708)
    {
      v494 = atomic_load((v708 + 896));
      if (v494 == 2)
      {
        v495 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v707);
        v706 = 0x13DF8790D55F72F9;
        re::MaterialParameterBlock::setTextureHandle(v487, &v706, (v495 + 8), buf);
        *buf = 0;
        v706 = 0;
LABEL_674:
        LODWORD(v704[0]) = v492;
        *&v705[0] = 0x14E4212AA32F5D0;
        re::MaterialParameterBlock::setConstant(v487, v705, 4uLL, v704, 3, location);
        *location = 0;
        goto LABEL_675;
      }

      v497 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v707);
      v498 = *re::imagePresentationLogObjects(v497);
      v499 = os_log_type_enabled(v498, OS_LOG_TYPE_ERROR);
      if (v497)
      {
        if (!v499)
        {
          goto LABEL_674;
        }

        *buf = 0;
        v500 = "[updateImagePresentationMaterialParameters] Texture asset is missing or cannot be loaded for entity";
      }

      else
      {
        if (!v499)
        {
          goto LABEL_674;
        }

        *buf = 0;
        v500 = "[updateImagePresentationMaterialParameters] cannot find asset";
      }
    }

    else
    {
      v498 = *re::imagePresentationLogObjects(v493);
      if (!os_log_type_enabled(v498, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_674;
      }

      *buf = 0;
      v500 = "[updateImagePresentationMaterialParameters] texture is null";
    }

    _os_log_error_impl(&dword_1E1C61000, v498, OS_LOG_TYPE_ERROR, v500, buf, 2u);
    goto LABEL_674;
  }

  if (!v488 && (v489 - 1) < 2)
  {
    v490 = 64;
    v491 = 96;
    goto LABEL_651;
  }

LABEL_655:
  re::BuiltinTextureAssetProvider::makeDescriptor("fallback.blackArray", buf);
  os_unfair_lock_lock(v477 + 32);
  re::AssetManager::assetHandle_assetTablesLocked(v704, v477, buf);
  os_unfair_lock_unlock(v477 + 32);
  re::AssetHandle::loadNow(v704[1], 0);
  v496 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(v704);
  v706 = 0x13DF8790D55F72F9;
  re::MaterialParameterBlock::setTextureHandle(v487, &v706, (v496 + 8), location);
  *location = 0;
  v706 = 0;
  LODWORD(v702[0]) = 1;
  v703[0].i64[0] = 0x14E4212AA32F5D0;
  re::MaterialParameterBlock::setConstant(v487, v703[0].i64, 4uLL, v702, 3, v705);
  *&v705[0] = 0;
  re::AssetHandle::~AssetHandle(v704);
  if (v722)
  {
    if (BYTE8(v722))
    {
      (*(*v722 + 40))();
    }

    v722 = 0u;
    v723 = 0u;
  }

  if (*(&v717 + 1))
  {
    if (v721)
    {
      (*(**(&v717 + 1) + 40))();
    }

    v721 = 0;
    v718 = 0;
    v719 = 0;
    *(&v717 + 1) = 0;
    ++v720;
  }

  if (*v716)
  {
    if (v717)
    {
      (*(**v716 + 40))();
    }

    *&v717 = 0;
    memset(v716, 0, 24);
    ++*&v716[24];
  }

  if (*buf && (buf[8] & 1) != 0)
  {
    (*(**buf + 40))();
  }

LABEL_675:
  LODWORD(v702[0]) = *(v478 + 88);
  v703[0].i64[0] = 0x4E6879392755F0CFLL;
  re::MaterialParameterBlock::setConstant(v487, v703[0].i64, 4uLL, v702, 3, v704);
  v704[0] = 0;
  if (*(v478 + 148))
  {
    v502 = 0;
  }

  else
  {
    v502 = re::MediaDefaults::resizeMeshInVertexShaderEnabled(v501);
  }

  v701[0].i8[0] = v502;
  v702[0] = 0x6AA3FABF8F80C062;
  re::MaterialParameterBlock::setConstant(v487, v702, 1uLL, v701, 2, v703);
  v703[0].i64[0] = 0;
  v503 = v354[32];
  v504 = 0x3F8000003F800000;
  if (v503)
  {
    v505 = v484[32];
    if (v505)
    {
      v504 = vmul_f32(v503[4], v505[4]);
    }
  }

  v701[0] = v504;
  v700[0] = 0x5B6C6E13F16AE237;
  re::MaterialParameterBlock::setConstant(v487, v700, 8uLL, v701, 32, v702);
  v702[0] = 0;
  LODWORD(v699[0]) = *(v481 + 100);
  v700[0] = 0x53282180F550D95CLL;
  re::MaterialParameterBlock::setConstant(v487, v700, 4uLL, v699, 1, v701);
  v701[0] = 0;
  LODWORD(v698[0]) = *(v481 + 104);
  v699[0] = 0x7D19F8F3DB42F496;
  re::MaterialParameterBlock::setConstant(v487, v699, 4uLL, v698, 1, v700);
  v700[0] = 0;
  LODWORD(v695[0]) = *(v481 + 108);
  v698[0] = 0x43E79139A1B20FA2;
  re::MaterialParameterBlock::setConstant(v487, v698, 4uLL, v695, 1, v699);
  v699[0] = 0;
  re::Defaults::intValue("ipc.mxi.enableOverrides", v506, v698);
  if (LOBYTE(v698[0]) == 1 && HIDWORD(v698[0]))
  {
    re::Defaults::floatValue("ipc.mxi.generation.sweepUpDuration", v507, v698);
    v508 = *(v698 + 1);
    if (!LOBYTE(v698[0]))
    {
      v508 = 1.8;
    }

    v696 = LODWORD(v508);
  }

  else
  {
    v696 = 1072064102;
  }

  v695[0] = 0x19D1FA9B0724A31;
  re::MaterialParameterBlock::setConstant(v487, v695, 4uLL, &v696, 1, v698);
  v698[0] = 0;
  re::AssetHandle::AssetHandle(&v696, (v481 + 112));
  if (v697)
  {
    v509 = atomic_load((v697 + 896));
    if (v509 == 2)
    {
      v510 = re::AssetHandle::loadedAsset<re::TextureAsset>(&v696);
      v694 = 0x1C043ACF1C3447F1;
      re::MaterialParameterBlock::setTextureHandle(v487, &v694, (v510 + 8), v695);
      v694 = 0;
      v695[0] = 0;
    }
  }

  if (*(v481 + 26) == 2)
  {
    v511 = 1;
  }

  else
  {
    v511 = *(v481 + 28);
  }

  if (*(v481 + 136) != (v511 & 1))
  {
    if ((atomic_load_explicit(&qword_1EE1A8488, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8488))
    {
      qword_1EE1A8480 = re::hashString("Opaque", v663);
      __cxa_guard_release(&qword_1EE1A8488);
    }

    if ((atomic_load_explicit(&qword_1EE1A8498, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8498))
    {
      qword_1EE1A8490 = re::hashString("FadeDepthPrepass", v664);
      __cxa_guard_release(&qword_1EE1A8498);
    }

    if ((atomic_load_explicit(&qword_1EE1A84A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84A8))
    {
      qword_1EE1A84A0 = re::hashString("Transparent", v665);
      __cxa_guard_release(&qword_1EE1A84A8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84B8))
    {
      qword_1EE1A84B0 = re::hashString("FadeOpaque", v666);
      __cxa_guard_release(&qword_1EE1A84B8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84C8))
    {
      qword_1EE1A84C0 = re::hashString("ImageColorPresentation", v667);
      __cxa_guard_release(&qword_1EE1A84C8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84D8))
    {
      qword_1EE1A84D0 = re::hashString("", v668);
      __cxa_guard_release(&qword_1EE1A84D8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84E8))
    {
      qword_1EE1A84E0 = re::hashString("ImageColorPresentationOpaque", v669);
      __cxa_guard_release(&qword_1EE1A84E8);
    }

    if ((atomic_load_explicit(&qword_1EE1A84F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A84F8))
    {
      qword_1EE1A84F0 = re::hashString("ImagePresentationDepthOnly", v670);
      __cxa_guard_release(&qword_1EE1A84F8);
    }

    if ((atomic_load_explicit(&qword_1EE1A8508, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8508))
    {
      qword_1EE1A8500 = re::hashString("ImageColorPresentationFadeOpaque", v671);
      __cxa_guard_release(&qword_1EE1A8508);
    }

    if ((atomic_load_explicit(&qword_1EE1A8518, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A8518))
    {
      qword_1EE1A8510 = re::hashString("ImageColorPresentationFadeOpaque_BackCompat", v672);
      __cxa_guard_release(&qword_1EE1A8518);
    }

    v512 = qword_1EE1A8480;
    if (v511)
    {
      v513 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v512, v513, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v514 = qword_1EE1A84A0;
      v515 = qword_1EE1A84C0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v514, v515, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v516 = qword_1EE1A8490;
      v517 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v516, v517, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v518 = qword_1EE1A84B0;
      v519 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v518, v519, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v520 = qword_1EE1A84A0;
      v521 = qword_1EE1A84C0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      v522 = re::MaterialParameterBlock::addPassTechniqueMapping(v487, v520, v521, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      *(v481 + 136) = 1;
      v523 = *re::imagePresentationLogObjects(v522);
      v354 = v691;
      if (os_log_type_enabled(v523, OS_LOG_TYPE_DEFAULT))
      {
        v524 = *(*(v481 + 16) + 312);
        *v724 = 134217984;
        v725 = v524;
        v525 = "[ImagePresentationComponentHelper->toggleOpaquePassForImagePresentationMaterial] disabling opaque pass on entity %llu.";
        goto LABEL_729;
      }
    }

    else
    {
      v526 = qword_1EE1A84E0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v512, v526, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v527 = qword_1EE1A84A0;
      v528 = qword_1EE1A84D0;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v527, v528, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v529 = qword_1EE1A8490;
      v530 = qword_1EE1A84F0;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v529, v530, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v531 = qword_1EE1A84B0;
      v532 = qword_1EE1A8500;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v487, v531, v532, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      v533 = qword_1EE1A84A0;
      v534 = qword_1EE1A8510;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      v535 = re::MaterialParameterBlock::addPassTechniqueMapping(v487, v533, v534, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
      *(v481 + 136) = 0;
      v523 = *re::imagePresentationLogObjects(v535);
      v354 = v691;
      if (os_log_type_enabled(v523, OS_LOG_TYPE_DEFAULT))
      {
        v536 = *(*(v481 + 16) + 312);
        *v724 = 134217984;
        v725 = v536;
        v525 = "[ImagePresentationComponentHelper->toggleOpaquePassForImagePresentationMaterial] enabling opaque pass on entity %llu.";
LABEL_729:
        _os_log_impl(&dword_1E1C61000, v523, OS_LOG_TYPE_DEFAULT, v525, v724, 0xCu);
      }
    }
  }

  re::AssetHandle::~AssetHandle(&v696);
  re::AssetHandle::~AssetHandle(&v707);
LABEL_731:
  v537 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v537)
  {
    v627 = *re::imagePresentationLogObjects(0);
    v540 = v690;
    v541 = v690 + 12544;
    if (!os_log_type_enabled(v627, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_761;
    }

    *buf = 67109120;
    *&buf[4] = 1831;
    v628 = "ImagePresentationComponentHelper line: %d, smsc is nullptr";
    goto LABEL_883;
  }

  v538 = v537;
  v539 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v540 = v690;
  if (v539)
  {
    re::AssetHandle::AssetHandle(buf, (v539 + 40));
    v541 = v690 + 12544;
    if (*&buf[8])
    {
      v542 = atomic_load((*&buf[8] + 896));
      if (v542 == 2)
      {
        re::AssetHandle::AssetHandle(location, buf);
        re::ecs2::SpatialMediaStatusComponent::setSpatialMediaLoadingTexture(v538, location);
        re::AssetHandle::~AssetHandle(location);
      }

      else
      {
        v543 = atomic_load((*&buf[8] + 896));
        if (v543 != 1)
        {
          re::AssetHandle::loadAsync(buf);
        }
      }
    }

    re::AssetHandle::~AssetHandle(buf);
  }

  else
  {
    v629 = *re::imagePresentationLogObjects(0);
    v541 = v690 + 12544;
    if (os_log_type_enabled(v629, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      *&buf[4] = 1834;
      _os_log_error_impl(&dword_1E1C61000, v629, OS_LOG_TYPE_ERROR, "ImagePresentationComponentHelper line: %d, imagePresentationComponent is nullptr", buf, 8u);
    }
  }

  v544 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v544)
  {
    v627 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v627, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_761;
    }

    *buf = 67109120;
    *&buf[4] = 1849;
    v628 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    goto LABEL_883;
  }

  if (*(v544 + 48) == 1 && *(v544 + 28) == 1)
  {
    v546 = *(v544 + 88);
    v547 = *(v544 + 72);
    *v710 = *(v544 + 56);
    *&v710[16] = v547;
    *&v710[33] = *(v544 + 89);
    *&v710[36] = *(v544 + 92);
    v548 = *(v690 + 37);
    LODWORD(v547) = *(v690 + 38);
    v710[32] = v546;
    re::ecs2::SpatialMediaComponentHelper::impl::getPortalParamsInImmersiveTransition(v354, v710, buf, v548, *&v547);
    re::ecs2::SpatialMediaComponentHelper::impl::updateInImmersiveTransition(v354, buf);
    if (v546)
    {
      if (v546 != 1 || *(v538 + 25) == 2)
      {
        goto LABEL_761;
      }
    }

    else if (*(v538 + 25) == 3)
    {
      goto LABEL_761;
    }

    re::ecs2::SpatialMediaComponentHelper::impl::startImmersiveTransition(v354, v546);
    goto LABEL_761;
  }

  v549 = *(v544 + 26);
  if (v549 != 1)
  {
    if (v549 != 2 || *(v538 + 25) == 1)
    {
      goto LABEL_761;
    }

    v550 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v550)
    {
      v551 = v550;
      v552 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v552)
      {
        v553 = v552[11];
        v554 = 1.0;
        if (v553 > 0.0)
        {
          v554 = v552[10] / v553;
        }

        v555 = vdiv_f32(vmul_f32(vmul_f32(re::ecs2::SpatialMedia::calculateEffectiveImmersiveFoVInDegrees(v552, *(v551 + 144), v554), 0x3F0000003F000000), vdup_n_s32(0x40490FDBu)), vdup_n_s32(0x43340000u));
        v688 = v555.f32[0];
        v692 = tanf(v555.f32[1]);
        v556.f32[0] = tanf(v688);
        v556.f32[1] = v692;
        v557 = vmul_f32(vadd_f32(v556, v556), vdup_n_s32(0x3FC66666u));
        v558 = *&v557;
        __asm { FMOV            V0.2S, #4.25 }

        v693 = *(&v557 + 1);
        v560 = vmul_f32(v557, _D0);
        v689 = *(&v560 + 1);
        v561 = *&v560;
        re::ecs2::SpatialMediaComponentHelper::impl::updateToImmersiveMode(v354, v557, v560);
        re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(v354, 1);
        v563 = *re::imagePresentationLogObjects(v562);
        if (os_log_type_enabled(v563, OS_LOG_TYPE_DEFAULT))
        {
          v564 = v354[39];
          *buf = 134219008;
          *&buf[4] = v558;
          *&buf[12] = 2048;
          *&buf[14] = v693;
          *&buf[22] = 2048;
          *&buf[24] = v561;
          *v716 = 2048;
          *&v716[2] = v689;
          *&v716[10] = 2048;
          *&v716[12] = v564;
          v565 = "[updateSpatialMediaComponentToImmersiveMode] immersiveMediaSize (%.3f, %.3f), immersiveScreenSize (%.3f, %.3f) [id=%llu]";
          v566 = v563;
          v567 = 52;
LABEL_758:
          _os_log_impl(&dword_1E1C61000, v566, OS_LOG_TYPE_DEFAULT, v565, buf, v567);
          goto LABEL_761;
        }

        goto LABEL_761;
      }

      v627 = *re::imagePresentationLogObjects(0);
      if (!os_log_type_enabled(v627, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_761;
      }

      *buf = 67109120;
      *&buf[4] = 2388;
      v628 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
    }

    else
    {
      v627 = *re::imagePresentationLogObjects(0);
      if (!os_log_type_enabled(v627, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_761;
      }

      *buf = 67109120;
      *&buf[4] = 2385;
      v628 = "ImagePresentationComponentHelper line: %d, ipc is nullptr";
    }

LABEL_883:
    _os_log_error_impl(&dword_1E1C61000, v627, OS_LOG_TYPE_ERROR, v628, buf, 8u);
    goto LABEL_761;
  }

  if (*(v538 + 25))
  {
    re::ecs2::SpatialMediaComponentHelper::impl::updateToPortalMode(v354, v545);
    re::ecs2::SpatialMediaComponentHelper::impl::completeImmersiveTransition(v354, 0);
    v569 = *re::imagePresentationLogObjects(v568);
    if (os_log_type_enabled(v569, OS_LOG_TYPE_DEFAULT))
    {
      v570 = v354[39];
      *buf = 134217984;
      *&buf[4] = v570;
      v565 = "[updateSpatialMediaComponentToPortalMode] [id=%llu]";
      v566 = v569;
      v567 = 12;
      goto LABEL_758;
    }
  }

LABEL_761:
  v571 = re::ecs2::EntityComponentCollection::get((v354 + 6), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationStatusComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v571)
  {
    v578 = *re::imagePresentationLogObjects(0);
    if (!os_log_type_enabled(v578, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_780;
    }

    *buf = 67109120;
    *&buf[4] = 786;
    v579 = "ImagePresentationComponentHelper line: %d, ipsc is nullptr";
LABEL_771:
    _os_log_error_impl(&dword_1E1C61000, v578, OS_LOG_TYPE_ERROR, v579, buf, 8u);
    goto LABEL_780;
  }

  v572 = v571;
  if (*(v571 + 25) != 2 && (*v541 != 1 || v541[2] != 2))
  {
    re::ecs2::ImagePresentationComponentHelper::impl::getDesiredScreenEntityConfiguration(buf, v540, v354);
    v580 = vmul_f32(*&buf[16], *v716);
LABEL_777:
    v582 = vmvn_s8(vceq_f32(v572[4], v580));
    if ((vpmax_u32(v582, v582).u32[0] & 0x80000000) != 0)
    {
      v572[4] = v580;
      v583 = *(*&v572[2] + 216);
      if (v583)
      {
        re::ecs2::NetworkComponent::markDirty(v583, v572);
      }
    }

    goto LABEL_780;
  }

  v573 = v354[43];
  if (!v573)
  {
LABEL_769:
    v578 = *re::imagePresentationLogObjects(v571);
    if (!os_log_type_enabled(v578, OS_LOG_TYPE_ERROR))
    {
      goto LABEL_780;
    }

    *buf = 67109120;
    *&buf[4] = 792;
    v579 = "ImagePresentationComponentHelper line: %d, mxiEntity is nullptr";
    goto LABEL_771;
  }

  v574 = v354[45];
  v575 = 8 * v573;
  while (1)
  {
    v576 = *v574;
    if ((*(*v574 + 288) ^ 0xCD040ED7D618C260) <= 1)
    {
      v577 = *(v576 + 296);
      if (v577 == "__InternalIPC-MXI__")
      {
        break;
      }

      v571 = strcmp(v577, "__InternalIPC-MXI__");
      if (!v571)
      {
        break;
      }
    }

    ++v574;
    v575 -= 8;
    if (!v575)
    {
      goto LABEL_769;
    }
  }

  v581 = re::ecs2::EntityComponentCollection::get((v576 + 48), re::ecs2::ComponentImpl<re::ecs2::MXIComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v581)
  {
    v580 = *(v581 + 132);
    goto LABEL_777;
  }

  v578 = *re::imagePresentationLogObjects(0);
  if (os_log_type_enabled(v578, OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    *&buf[4] = 794;
    v579 = "ImagePresentationComponentHelper line: %d, mxiComponent is nullptr";
    goto LABEL_771;
  }

LABEL_780:
  *(v685 + 29) = 0;
}