double re::internal::defaultConstruct<re::ecs2::SceneSpaceRootSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1);
  *v3 = &unk_1F5CD7998;
  result = 0.0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 1065353216;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::SceneSpaceRootSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a3 + 224);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::SceneSpaceRootSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1);
  *v1 = &unk_1F5CD7998;
  result = 0.0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 1065353216;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::SceneSpaceRootSystem>(re::ecs2::System *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1 + 224);

  re::ecs2::System::~System(a1);
}

void re::ecs2::SceneSpaceRootSystem::~SceneSpaceRootSystem(re::ecs2::SceneSpaceRootSystem *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 224);

  re::ecs2::System::~System(this);
}

{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::SceneSpaceRootComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SceneSpaceRootSystem::didAddSceneSpaceRootComponent,re::ecs2::SceneSpaceRootSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v4 = *(a1 + 240);
  if (v4)
  {
    while (1)
    {
      v7 = re::ecs2::SceneComponentTable::get((v4[2] + 200), re::ecs2::ComponentImpl<re::ecs2::ImmersiveSpaceTrackerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (v7)
      {
        if (*(v7 + 384))
        {
          break;
        }
      }

      v4 = *v4;
      if (!v4)
      {
        return 0;
      }
    }

    if (a4)
    {
      v8 = 8 * a4;
      do
      {
        v9 = *a3++;
        *(v9 + 97) = 1;
        v8 -= 8;
      }

      while (v8);
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SceneSpaceRootComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SceneSpaceRootComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SceneSpaceRootComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SceneSpaceRootSystem::didAddImmersiveSpaceTrackerComponent,re::ecs2::SceneSpaceRootSystem>(uint64_t a1)
{
  for (i = *(a1 + 240); i; i = *i)
  {
    v2 = re::ecs2::SceneComponentTable::get((i[2] + 200), re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v2)
    {
      v3 = *(v2 + 384);
      if (v3)
      {
        v4 = *(v2 + 400);
        v5 = 8 * v3;
        do
        {
          v6 = *v4++;
          *(v6 + 97) = 1;
          v5 -= 8;
        }

        while (v5);
      }
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ImmersiveSpaceTrackerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SceneSpaceRootSystem::willRemoveImmersiveSpaceTrackerComponent,re::ecs2::SceneSpaceRootSystem>(uint64_t a1)
{
  for (i = *(a1 + 240); i; i = *i)
  {
    v2 = re::ecs2::SceneComponentTable::get((i[2] + 200), re::ecs2::ComponentImpl<re::ecs2::SceneSpaceRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v2)
    {
      v3 = *(v2 + 384);
      if (v3)
      {
        v4 = *(v2 + 400);
        v5 = 8 * v3;
        do
        {
          v6 = *v4++;
          *(v6 + 97) = 0;
          v5 -= 8;
        }

        while (v5);
      }
    }
  }

  return 0;
}

void *std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__emplace_unique_key_args<re::ecs2::Scene *,re::ecs2::Scene * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t *std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__erase_unique<re::ecs2::Scene *>(void *a1, void *a2)
{
  result = std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::find<re::ecs2::Scene *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,re::PeerIDValidator::Entry>>>::erase(a1, result);
    return 1;
  }

  return result;
}

void *std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::find<re::ecs2::Scene *>(void *a1, void *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v4 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v3 >> 47) ^ v3);
  v5 = 0x9DDFEA08EB382D69 * (v4 ^ (v4 >> 47));
  v6 = vcnt_s8(v2);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = v5;
    if (v5 >= *&v2)
    {
      v7 = v5 % *&v2;
    }
  }

  else
  {
    v7 = v5 & (*&v2 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8)
  {
    return 0;
  }

  result = *v8;
  if (*v8)
  {
    do
    {
      v10 = result[1];
      if (v10 == v5)
      {
        if (result[2] == *a2)
        {
          return result;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v10 >= *&v2)
          {
            v10 %= *&v2;
          }
        }

        else
        {
          v10 &= *&v2 - 1;
        }

        if (v10 != v7)
        {
          return 0;
        }
      }

      result = *result;
    }

    while (result);
  }

  return result;
}

void re::ecs2::SceneSpaceRootComponent::~SceneSpaceRootComponent(re::ecs2::SceneSpaceRootComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223SceneSpaceRootComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::RenderingSystem::renderingSubsystemTypes@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if ((atomic_load_explicit(&qword_1EE1A10F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A10F0))
  {
    _MergedGlobals_172 = re::ecs2::introspect_PortalRenderingSystem(0);
    __cxa_guard_release(&qword_1EE1A10F0);
  }

  v4 = _MergedGlobals_172;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::DrawWorldSystem>(BOOL)::info = re::introspect_DrawWorldSystem(0);
  }

  v4 = re::introspect<re::DrawWorldSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1100))
  {
    qword_1EE1A10F8 = re::ecs2::introspect_VisualProxyCaptureSystem(0);
    __cxa_guard_release(&qword_1EE1A1100);
  }

  v4 = qword_1EE1A10F8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::SkyboxSystem>(BOOL)::info = re::introspect_SkyboxSystem(0);
  }

  v4 = re::introspect<re::SkyboxSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1110))
  {
    qword_1EE1A1108 = re::ecs2::introspect_OcclusionSystem(0);
    __cxa_guard_release(&qword_1EE1A1110);
  }

  v4 = qword_1EE1A1108;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1120))
  {
    qword_1EE1A1118 = re::ecs2::introspect_VisualDepthCustomMaterialSystem(0);
    __cxa_guard_release(&qword_1EE1A1120);
  }

  v4 = qword_1EE1A1118;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1130, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1130))
  {
    qword_1EE1A1128 = re::ecs2::introspect_UpdateRenderServicesDataSystem(0);
    __cxa_guard_release(&qword_1EE1A1130);
  }

  v4 = qword_1EE1A1128;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1140))
  {
    qword_1EE1A1138 = re::ecs2::introspect_PerformInlineDeformationsSystem(0);
    __cxa_guard_release(&qword_1EE1A1140);
  }

  v4 = qword_1EE1A1138;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1150))
  {
    qword_1EE1A1148 = re::ecs2::introspect_DynamicBoundingBoxSerializeSystem(0);
    __cxa_guard_release(&qword_1EE1A1150);
  }

  v4 = qword_1EE1A1148;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1160))
  {
    qword_1EE1A1158 = re::ecs2::introspect_SkeletalDebugSystem(0);
    __cxa_guard_release(&qword_1EE1A1160);
  }

  v4 = qword_1EE1A1158;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::ShadowClusterSystem>(BOOL)::info = re::ecs2::introspect_ShadowClusterSystem(0);
  }

  v4 = re::introspect<re::ecs2::ShadowClusterSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1170))
  {
    qword_1EE1A1168 = re::ecs2::introspect_MeshShadowSystem(0);
    __cxa_guard_release(&qword_1EE1A1170);
  }

  v4 = qword_1EE1A1168;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1180))
  {
    qword_1EE1A1178 = re::ecs2::introspect_SceneUnderstandingMeshSystem(0);
    __cxa_guard_release(&qword_1EE1A1180);
  }

  v4 = qword_1EE1A1178;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1190))
  {
    qword_1EE1A1188 = re::ecs2::introspect_PlanarReflectionSystem(0);
    __cxa_guard_release(&qword_1EE1A1190);
  }

  v4 = qword_1EE1A1188;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::LightSystem>(BOOL)::info = re::ecs2::introspect_LightSystem(0);
  }

  v4 = re::introspect<re::ecs2::LightSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::VFXEmitterSystem>(BOOL)::info = re::ecs2::introspect_VFXEmitterSystem(0);
  }

  v4 = re::introspect<re::ecs2::VFXEmitterSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::VFXSystem>(BOOL)::info = re::ecs2::introspect_VFXSystem(0);
  }

  v4 = re::introspect<re::ecs2::VFXSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::ImageBasedLightSystem>(BOOL)::info = re::ecs2::introspect_ImageBasedLightSystem(0);
  }

  v4 = re::introspect<re::ecs2::ImageBasedLightSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::VirtualEnvironmentProbeSystem>(BOOL)::info = re::ecs2::introspect_VirtualEnvironmentProbeSystem(0);
  }

  v4 = re::introspect<re::ecs2::VirtualEnvironmentProbeSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::ImageBasedReflectionSystem>(BOOL)::info = re::ecs2::introspect_ImageBasedReflectionSystem(0);
  }

  v4 = re::introspect<re::ecs2::ImageBasedReflectionSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A11A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11A0))
  {
    qword_1EE1A1198 = re::ecs2::introspect_MipmapGenerationSystem(0);
    __cxa_guard_release(&qword_1EE1A11A0);
  }

  v4 = qword_1EE1A1198;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A11B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11B0))
  {
    qword_1EE1A11A8 = re::ecs2::introspect_BlurGenerationSystem(0);
    __cxa_guard_release(&qword_1EE1A11B0);
  }

  v4 = qword_1EE1A11A8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::AnchorSystem>(BOOL)::info = re::ecs2::introspect_AnchorSystem(0);
  }

  v4 = re::introspect<re::ecs2::AnchorSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A11C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11C0))
  {
    qword_1EE1A11B8 = re::ecs2::introspect_MeshPartInstancesSystem(0);
    __cxa_guard_release(&qword_1EE1A11C0);
  }

  v4 = qword_1EE1A11B8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::InstanceGroupBoundsSystem>(BOOL)::info = re::ecs2::introspect_InstanceGroupBoundsSystem(0);
  }

  v4 = re::introspect<re::ecs2::InstanceGroupBoundsSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::MeshSystem>(BOOL)::info = re::ecs2::introspect_MeshSystem(0);
  }

  v4 = re::introspect<re::ecs2::MeshSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A11D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11D0))
  {
    qword_1EE1A11C8 = re::ecs2::introspect_MeshSortingSystem(0);
    __cxa_guard_release(&qword_1EE1A11D0);
  }

  v4 = qword_1EE1A11C8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::DynamicTextSystem>(BOOL)::info = re::ecs2::introspect_DynamicTextSystem(0);
  }

  v4 = re::introspect<re::ecs2::DynamicTextSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::StaticTextSystem>(BOOL)::info = re::ecs2::introspect_StaticTextSystem(0);
  }

  v4 = re::introspect<re::ecs2::StaticTextSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::AREnvironmentProbeSystem>(BOOL)::info = re::ecs2::introspect_AREnvironmentProbeSystem(0);
  }

  v4 = re::introspect<re::ecs2::AREnvironmentProbeSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A11E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11E0))
  {
    qword_1EE1A11D8 = re::ecs2::introspect_ARSegmentationSystem(0);
    __cxa_guard_release(&qword_1EE1A11E0);
  }

  v4 = qword_1EE1A11D8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A11F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11F0))
  {
    qword_1EE1A11E8 = re::ecs2::introspect_RenderGraphFileProviderArraySystem(0);
    __cxa_guard_release(&qword_1EE1A11F0);
  }

  v4 = qword_1EE1A11E8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1200))
  {
    qword_1EE1A11F8 = re::ecs2::introspect_VisualProxySystem(0);
    __cxa_guard_release(&qword_1EE1A1200);
  }

  v4 = qword_1EE1A11F8;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1210))
  {
    qword_1EE1A1208 = re::ecs2::introspect_DebugRenderingSystem(0);
    __cxa_guard_release(&qword_1EE1A1210);
  }

  v4 = qword_1EE1A1208;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1220))
  {
    qword_1EE1A1218 = re::ecs2::introspect_PrimitiveRenderingSystem(0);
    __cxa_guard_release(&qword_1EE1A1220);
  }

  v4 = qword_1EE1A1218;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1230))
  {
    qword_1EE1A1228 = re::ecs2::introspect_RenderCallbacksSystem(0);
    __cxa_guard_release(&qword_1EE1A1230);
  }

  v4 = qword_1EE1A1228;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A1240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1240))
  {
    qword_1EE1A1238 = re::ecs2::introspect_VisualProxyScopeSystem(0);
    __cxa_guard_release(&qword_1EE1A1240);
  }

  v4 = qword_1EE1A1238;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::CameraViewDescriptorsSystem>(BOOL)::info = re::ecs2::introspect_CameraViewDescriptorsSystem(0);
  }

  v4 = re::introspect<re::ecs2::CameraViewDescriptorsSystem>(BOOL)::info;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
}

uint64_t (***re::ecs2::RenderingSystem::addRenderingSubsystemsUsingLambda(uint64_t a1, int a2))(void)
{
  v140 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v24 = *(a1 + 24);
    v25 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v23, a1);
    re::ecs2::addSubsystemsUsingLambda<re::DrawWorldSystem>::operator()(v23);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v23);
    v21 = *(a1 + 24);
    v22 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v20, a1);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::UpdateRenderServicesDataSystem>::operator()(v20);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v20);
    v18 = *(a1 + 24);
    v19 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v17, a1);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::MeshSystem>::operator()(v17);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v17);
    v15 = *(a1 + 24);
    v16 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v14, a1);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::MeshSortingSystem>::operator()(v14);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v14);
    v12 = *(a1 + 24);
    v13 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v11, a1);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::RenderGraphFileProviderArraySystem>::operator()(v11);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v11);
    v9 = *(a1 + 24);
    v10 = 0;
    v3 = v8;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v8, a1);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::CameraViewDescriptorsSystem>::operator()(v8);
  }

  else
  {
    v6 = *(a1 + 24);
    v7 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v5, a1);
    v138 = v6;
    v139 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v137, v5);
    if ((atomic_load_explicit(&qword_1EE1A10F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A10F0))
    {
      _MergedGlobals_172 = re::ecs2::introspect_PortalRenderingSystem(0);
      __cxa_guard_release(&qword_1EE1A10F0);
    }

    (*(*v139 + 16))(v139, _MergedGlobals_172 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v137);
    v135 = v6;
    v136 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v134, v5);
    re::ecs2::addSubsystemsUsingLambda<re::DrawWorldSystem>::operator()(v134);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v134);
    v132 = v6;
    v133 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v131, v5);
    if ((atomic_load_explicit(&qword_1EE1A1100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1100))
    {
      qword_1EE1A10F8 = re::ecs2::introspect_VisualProxyCaptureSystem(0);
      __cxa_guard_release(&qword_1EE1A1100);
    }

    (*(*v133 + 16))(v133, qword_1EE1A10F8 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v131);
    v129 = v6;
    v130 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v128, v5);
    {
      re::introspect<re::SkyboxSystem>(BOOL)::info = re::introspect_SkyboxSystem(0);
    }

    (*(*v130 + 16))(v130, re::introspect<re::SkyboxSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v128);
    v126 = v6;
    v127 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v125, v5);
    if ((atomic_load_explicit(&qword_1EE1A1110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1110))
    {
      qword_1EE1A1108 = re::ecs2::introspect_OcclusionSystem(0);
      __cxa_guard_release(&qword_1EE1A1110);
    }

    (*(*v127 + 16))(v127, qword_1EE1A1108 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v125);
    v123 = v6;
    v124 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v122, v5);
    if ((atomic_load_explicit(&qword_1EE1A1120, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1120))
    {
      qword_1EE1A1118 = re::ecs2::introspect_VisualDepthCustomMaterialSystem(0);
      __cxa_guard_release(&qword_1EE1A1120);
    }

    (*(*v124 + 16))(v124, qword_1EE1A1118 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v122);
    v120 = v6;
    v121 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v119, v5);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::UpdateRenderServicesDataSystem>::operator()(v119);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v119);
    v117 = v6;
    v118 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v116, v5);
    if ((atomic_load_explicit(&qword_1EE1A1140, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1140))
    {
      qword_1EE1A1138 = re::ecs2::introspect_PerformInlineDeformationsSystem(0);
      __cxa_guard_release(&qword_1EE1A1140);
    }

    (*(*v118 + 16))(v118, qword_1EE1A1138 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v116);
    v114 = v6;
    v115 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v113, v5);
    if ((atomic_load_explicit(&qword_1EE1A1150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1150))
    {
      qword_1EE1A1148 = re::ecs2::introspect_DynamicBoundingBoxSerializeSystem(0);
      __cxa_guard_release(&qword_1EE1A1150);
    }

    (*(*v115 + 16))(v115, qword_1EE1A1148 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v113);
    v111 = v6;
    v112 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v110, v5);
    if ((atomic_load_explicit(&qword_1EE1A1160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1160))
    {
      qword_1EE1A1158 = re::ecs2::introspect_SkeletalDebugSystem(0);
      __cxa_guard_release(&qword_1EE1A1160);
    }

    (*(*v112 + 16))(v112, qword_1EE1A1158 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v110);
    v108 = v6;
    v109 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v107, v5);
    {
      re::introspect<re::ecs2::ShadowClusterSystem>(BOOL)::info = re::ecs2::introspect_ShadowClusterSystem(0);
    }

    (*(*v109 + 16))(v109, re::introspect<re::ecs2::ShadowClusterSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v107);
    v105 = v6;
    v106 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v104, v5);
    if ((atomic_load_explicit(&qword_1EE1A1170, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1170))
    {
      qword_1EE1A1168 = re::ecs2::introspect_MeshShadowSystem(0);
      __cxa_guard_release(&qword_1EE1A1170);
    }

    (*(*v106 + 16))(v106, qword_1EE1A1168 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v104);
    v102 = v6;
    v103 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v101, v5);
    if ((atomic_load_explicit(&qword_1EE1A1180, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1180))
    {
      qword_1EE1A1178 = re::ecs2::introspect_SceneUnderstandingMeshSystem(0);
      __cxa_guard_release(&qword_1EE1A1180);
    }

    (*(*v103 + 16))(v103, qword_1EE1A1178 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v101);
    v99 = v6;
    v100 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v98, v5);
    if ((atomic_load_explicit(&qword_1EE1A1190, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1190))
    {
      qword_1EE1A1188 = re::ecs2::introspect_PlanarReflectionSystem(0);
      __cxa_guard_release(&qword_1EE1A1190);
    }

    (*(*v100 + 16))(v100, qword_1EE1A1188 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v98);
    v96 = v6;
    v97 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v95, v5);
    {
      re::introspect<re::ecs2::LightSystem>(BOOL)::info = re::ecs2::introspect_LightSystem(0);
    }

    (*(*v97 + 16))(v97, re::introspect<re::ecs2::LightSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v95);
    v93 = v6;
    v94 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v92, v5);
    {
      re::introspect<re::ecs2::VFXEmitterSystem>(BOOL)::info = re::ecs2::introspect_VFXEmitterSystem(0);
    }

    (*(*v94 + 16))(v94, re::introspect<re::ecs2::VFXEmitterSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v92);
    v90 = v6;
    v91 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v89, v5);
    {
      re::introspect<re::ecs2::VFXSystem>(BOOL)::info = re::ecs2::introspect_VFXSystem(0);
    }

    (*(*v91 + 16))(v91, re::introspect<re::ecs2::VFXSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v89);
    v87 = v6;
    v88 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v86, v5);
    {
      re::introspect<re::ecs2::ImageBasedLightSystem>(BOOL)::info = re::ecs2::introspect_ImageBasedLightSystem(0);
    }

    (*(*v88 + 16))(v88, re::introspect<re::ecs2::ImageBasedLightSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v86);
    v84 = v6;
    v85 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v83, v5);
    {
      re::introspect<re::ecs2::VirtualEnvironmentProbeSystem>(BOOL)::info = re::ecs2::introspect_VirtualEnvironmentProbeSystem(0);
    }

    (*(*v85 + 16))(v85, re::introspect<re::ecs2::VirtualEnvironmentProbeSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v83);
    v81 = v6;
    v82 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v80, v5);
    {
      re::introspect<re::ecs2::ImageBasedReflectionSystem>(BOOL)::info = re::ecs2::introspect_ImageBasedReflectionSystem(0);
    }

    (*(*v82 + 16))(v82, re::introspect<re::ecs2::ImageBasedReflectionSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v80);
    v78 = v6;
    v79 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v77, v5);
    if ((atomic_load_explicit(&qword_1EE1A11A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11A0))
    {
      qword_1EE1A1198 = re::ecs2::introspect_MipmapGenerationSystem(0);
      __cxa_guard_release(&qword_1EE1A11A0);
    }

    (*(*v79 + 16))(v79, qword_1EE1A1198 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v77);
    v75 = v6;
    v76 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v74, v5);
    if ((atomic_load_explicit(&qword_1EE1A11B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11B0))
    {
      qword_1EE1A11A8 = re::ecs2::introspect_BlurGenerationSystem(0);
      __cxa_guard_release(&qword_1EE1A11B0);
    }

    (*(*v76 + 16))(v76, qword_1EE1A11A8 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v74);
    v72 = v6;
    v73 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v71, v5);
    {
      re::introspect<re::ecs2::AnchorSystem>(BOOL)::info = re::ecs2::introspect_AnchorSystem(0);
    }

    (*(*v73 + 16))(v73, re::introspect<re::ecs2::AnchorSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v71);
    v69 = v6;
    v70 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v68, v5);
    if ((atomic_load_explicit(&qword_1EE1A11C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11C0))
    {
      qword_1EE1A11B8 = re::ecs2::introspect_MeshPartInstancesSystem(0);
      __cxa_guard_release(&qword_1EE1A11C0);
    }

    (*(*v70 + 16))(v70, qword_1EE1A11B8 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v68);
    v66 = v6;
    v67 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v65, v5);
    {
      re::introspect<re::ecs2::InstanceGroupBoundsSystem>(BOOL)::info = re::ecs2::introspect_InstanceGroupBoundsSystem(0);
    }

    (*(*v67 + 16))(v67, re::introspect<re::ecs2::InstanceGroupBoundsSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v65);
    v63 = v6;
    v64 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v62, v5);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::MeshSystem>::operator()(v62);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v62);
    v60 = v6;
    v61 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v59, v5);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::MeshSortingSystem>::operator()(v59);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v59);
    v57 = v6;
    v58 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v56, v5);
    {
      re::introspect<re::ecs2::DynamicTextSystem>(BOOL)::info = re::ecs2::introspect_DynamicTextSystem(0);
    }

    (*(*v58 + 16))(v58, re::introspect<re::ecs2::DynamicTextSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v56);
    v54 = v6;
    v55 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v53, v5);
    {
      re::introspect<re::ecs2::StaticTextSystem>(BOOL)::info = re::ecs2::introspect_StaticTextSystem(0);
    }

    (*(*v55 + 16))(v55, re::introspect<re::ecs2::StaticTextSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v53);
    v51 = v6;
    v52 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v50, v5);
    {
      re::introspect<re::ecs2::AREnvironmentProbeSystem>(BOOL)::info = re::ecs2::introspect_AREnvironmentProbeSystem(0);
    }

    (*(*v52 + 16))(v52, re::introspect<re::ecs2::AREnvironmentProbeSystem>(BOOL)::info + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v50);
    v48 = v6;
    v49 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v47, v5);
    if ((atomic_load_explicit(&qword_1EE1A11E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A11E0))
    {
      qword_1EE1A11D8 = re::ecs2::introspect_ARSegmentationSystem(0);
      __cxa_guard_release(&qword_1EE1A11E0);
    }

    (*(*v49 + 16))(v49, qword_1EE1A11D8 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v47);
    v45 = v6;
    v46 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v44, v5);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::RenderGraphFileProviderArraySystem>::operator()(v44);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v44);
    v42 = v6;
    v43 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v41, v5);
    if ((atomic_load_explicit(&qword_1EE1A1200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1200))
    {
      qword_1EE1A11F8 = re::ecs2::introspect_VisualProxySystem(0);
      __cxa_guard_release(&qword_1EE1A1200);
    }

    (*(*v43 + 16))(v43, qword_1EE1A11F8 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v41);
    v39 = v6;
    v40 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v38, v5);
    if ((atomic_load_explicit(&qword_1EE1A1210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1210))
    {
      qword_1EE1A1208 = re::ecs2::introspect_DebugRenderingSystem(0);
      __cxa_guard_release(&qword_1EE1A1210);
    }

    (*(*v40 + 16))(v40, qword_1EE1A1208 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v38);
    v36 = v6;
    v37 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v35, v5);
    if ((atomic_load_explicit(&qword_1EE1A1220, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1220))
    {
      qword_1EE1A1218 = re::ecs2::introspect_PrimitiveRenderingSystem(0);
      __cxa_guard_release(&qword_1EE1A1220);
    }

    (*(*v37 + 16))(v37, qword_1EE1A1218 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v35);
    v33 = v6;
    v34 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v32, v5);
    if ((atomic_load_explicit(&qword_1EE1A1230, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1230))
    {
      qword_1EE1A1228 = re::ecs2::introspect_RenderCallbacksSystem(0);
      __cxa_guard_release(&qword_1EE1A1230);
    }

    (*(*v34 + 16))(v34, qword_1EE1A1228 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v32);
    v30 = v6;
    v31 = 0;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v29, v5);
    if ((atomic_load_explicit(&qword_1EE1A1240, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1240))
    {
      qword_1EE1A1238 = re::ecs2::introspect_VisualProxyScopeSystem(0);
      __cxa_guard_release(&qword_1EE1A1240);
    }

    (*(*v31 + 16))(v31, qword_1EE1A1238 + 32);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v29);
    v27 = v6;
    v28 = 0;
    v3 = v5;
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v26, v5);
    re::ecs2::addSubsystemsUsingLambda<re::ecs2::CameraViewDescriptorsSystem>::operator()(v26);
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v26);
  }

  return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v3);
}

uint64_t re::ecs2::addSubsystemsUsingLambda<re::DrawWorldSystem>::operator()(uint64_t a1)
{
  {
    v4 = a1;
    a1 = v4;
    if (v3)
    {
      re::introspect<re::DrawWorldSystem>(BOOL)::info = re::introspect_DrawWorldSystem(0);
      a1 = v4;
    }
  }

  v1 = *(**(a1 + 32) + 16);

  return v1();
}

uint64_t re::ecs2::addSubsystemsUsingLambda<re::ecs2::UpdateRenderServicesDataSystem>::operator()(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A1130, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v3 = __cxa_guard_acquire(&qword_1EE1A1130);
    a1 = v4;
    if (v3)
    {
      qword_1EE1A1128 = re::ecs2::introspect_UpdateRenderServicesDataSystem(0);
      __cxa_guard_release(&qword_1EE1A1130);
      a1 = v4;
    }
  }

  v1 = *(**(a1 + 32) + 16);

  return v1();
}

uint64_t re::ecs2::addSubsystemsUsingLambda<re::ecs2::MeshSystem>::operator()(uint64_t a1)
{
  {
    v4 = a1;
    a1 = v4;
    if (v3)
    {
      re::introspect<re::ecs2::MeshSystem>(BOOL)::info = re::ecs2::introspect_MeshSystem(0);
      a1 = v4;
    }
  }

  v1 = *(**(a1 + 32) + 16);

  return v1();
}

uint64_t re::ecs2::addSubsystemsUsingLambda<re::ecs2::MeshSortingSystem>::operator()(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A11D0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v3 = __cxa_guard_acquire(&qword_1EE1A11D0);
    a1 = v4;
    if (v3)
    {
      qword_1EE1A11C8 = re::ecs2::introspect_MeshSortingSystem(0);
      __cxa_guard_release(&qword_1EE1A11D0);
      a1 = v4;
    }
  }

  v1 = *(**(a1 + 32) + 16);

  return v1();
}

uint64_t re::ecs2::addSubsystemsUsingLambda<re::ecs2::RenderGraphFileProviderArraySystem>::operator()(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A11F0, memory_order_acquire) & 1) == 0)
  {
    v4 = a1;
    v3 = __cxa_guard_acquire(&qword_1EE1A11F0);
    a1 = v4;
    if (v3)
    {
      qword_1EE1A11E8 = re::ecs2::introspect_RenderGraphFileProviderArraySystem(0);
      __cxa_guard_release(&qword_1EE1A11F0);
      a1 = v4;
    }
  }

  v1 = *(**(a1 + 32) + 16);

  return v1();
}

uint64_t re::ecs2::addSubsystemsUsingLambda<re::ecs2::CameraViewDescriptorsSystem>::operator()(uint64_t a1)
{
  {
    v4 = a1;
    a1 = v4;
    if (v3)
    {
      re::introspect<re::ecs2::CameraViewDescriptorsSystem>(BOOL)::info = re::ecs2::introspect_CameraViewDescriptorsSystem(0);
      a1 = v4;
    }
  }

  v1 = *(**(a1 + 32) + 16);

  return v1();
}

uint64_t re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(uint64_t a1))(void)
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

re::ecs2::OcclusionSystem *re::ecs2::OcclusionSystem::OcclusionSystem(re::ecs2::OcclusionSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF9748;
  v3 = v2 + 304;
  v4 = re::ecs2::OcclusionComponentStateImpl::OcclusionComponentStateImpl((v2 + 304), this);
  *(this + 30) = 0u;
  *(this + 124) = 1;
  *(this + 63) = 0;
  *(this + 32) = 0u;
  *(this + 132) = 0;
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 154) = 1;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 82) = 0;
  *(this + 166) = 1;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 697) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 75, 0);
  *(this + 154) += 2;
  *(this + 80) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 81, 0);
  *(this + 166) += 2;
  *(this + 86) = 0;
  *(this + 87) = this;
  *(this + 88) = v3;
  *(this + 712) = 1;
  *(this + 45) = 0u;
  return this;
}

re::ecs2::OcclusionComponentStateImpl *re::ecs2::OcclusionComponentStateImpl::OcclusionComponentStateImpl(re::ecs2::OcclusionComponentStateImpl *this, re::ecs2::OcclusionSystem *a2)
{
  *this = &unk_1F5CF96E0;
  *(this + 1) = a2;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 1) = 0u;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 4) = xmmword_1E3047670;
  *(this + 5) = xmmword_1E3047680;
  *(this + 6) = xmmword_1E30476A0;
  *(this + 7) = xmmword_1E30474D0;
  *(this + 32) = 0;
  *(this + 18) = 0;
  *(this + 19) = 0;
  *(this + 17) = 0;
  re::StringID::invalid((this + 160));
  return this;
}

void re::HashTable<re::ecs2::Scene const*,re::ecs2::OcclusionComponentStateImpl::FramePersistentCullingResult,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 136 * v10, 16);
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::OcclusionComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::PerformInlineDeformationsSystem *re::ecs2::PerformInlineDeformationsSystem::PerformInlineDeformationsSystem(re::ecs2::PerformInlineDeformationsSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CEC858;
  v3 = v2 + 296;
  *(v2 + 304) = 0;
  *(v2 + 312) = 0;
  *(v2 + 288) = 0;
  *(v2 + 296) = &unk_1F5CEC7F0;
  *(v2 + 320) = 1;
  *(v2 + 336) = 0;
  *(v2 + 344) = 0;
  *(v2 + 328) = 0;
  *(v2 + 352) = 0;
  v4 = (v2 + 360);
  *(v2 + 360) = 0u;
  *(v2 + 376) = 0u;
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 1;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0;
  *(v2 + 488) = 1;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0u;
  *(v2 + 521) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 59, 0);
  *(this + 122) += 2;
  *(this + 64) = 0;
  *(this + 65) = this;
  *(this + 66) = v3;
  *(this + 536) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::DynamicBoundingBoxSerializeSystem *re::ecs2::DynamicBoundingBoxSerializeSystem::DynamicBoundingBoxSerializeSystem(re::ecs2::DynamicBoundingBoxSerializeSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF45F0;
  v3 = v2 + 296;
  v4 = re::ecs2::DynamicBoundingBoxSerializeComponentStateImpl::DynamicBoundingBoxSerializeComponentStateImpl((v2 + 296), this);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 1;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 96) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 64) = 0;
  *(this + 130) = 1;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 57, 0);
  *(this + 118) += 2;
  *(this + 62) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 63, 0);
  *(this + 130) += 2;
  *(this + 68) = 0;
  *(this + 69) = this;
  *(this + 70) = v3;
  *(this + 568) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DynamicBoundingBoxComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::SkeletalDebugSystem *re::ecs2::SkeletalDebugSystem::SkeletalDebugSystem(re::ecs2::SkeletalDebugSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CFE270;
  v3 = v2 + 296;
  v4 = re::ecs2::SkeletalDebugComponentStateImpl::SkeletalDebugComponentStateImpl((v2 + 296), this);
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 88) = 1;
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 45) = 0;
  *(this + 96) = 0;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 118) = 1;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 64) = 0;
  *(this + 130) = 1;
  *(this + 553) = 0u;
  *(this + 33) = 0u;
  *(this + 34) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 57, 0);
  *(this + 118) += 2;
  *(this + 62) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 63, 0);
  *(this + 130) += 2;
  *(this + 68) = 0;
  *(this + 69) = this;
  *(this + 70) = v3;
  *(this + 568) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SkeletalDebugComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::MeshShadowSystem *re::ecs2::MeshShadowSystem::MeshShadowSystem(re::ecs2::MeshShadowSystem *this)
{
  v2 = (this + 2132);
  v3 = re::ecs2::System::System(this, 1, 1);
  *(v3 + 288) = 0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CFB918;
  v4 = v3 + 368;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0;
  v5 = re::ecs2::MeshShadowSystemStateImpl::MeshShadowSystemStateImpl((v3 + 368), this);
  *(this + 584) = 0u;
  *(this + 150) = 1;
  *(this + 76) = 0;
  *(this + 616) = 0u;
  *(this + 158) = 0;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 43) = 0u;
  *(this + 44) = 0u;
  *(this + 180) = 1;
  *(this + 728) = 0u;
  *(this + 744) = 0u;
  *(this + 95) = 0;
  *(this + 192) = 1;
  *(this + 776) = 0u;
  *(this + 792) = 0u;
  *(this + 801) = 0u;
  v8 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 88, 0);
  *(this + 180) += 2;
  *(this + 93) = 0;
  v9 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 94, 0);
  *(this + 192) += 2;
  *(this + 99) = 0;
  *(this + 100) = this;
  *(this + 101) = v4;
  *(this + 816) = 0;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 214) = 0;
  *(this + 860) = 0x7FFFFFFFLL;
  *(this + 872) = 0u;
  *(this + 888) = 0u;
  *(this + 226) = 0;
  *(this + 908) = 0x7FFFFFFFLL;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 238) = 0;
  *(this + 956) = 0x7FFFFFFFLL;
  *(this + 250) = 0;
  *(this + 968) = 0u;
  *(this + 984) = 0u;
  *(this + 1004) = 0x7FFFFFFFLL;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 262) = 0;
  *(this + 1052) = 0x7FFFFFFFLL;
  *(this + 1064) = 0u;
  *(this + 1080) = 0u;
  *(this + 274) = 0;
  *(this + 1100) = 0x7FFFFFFFLL;
  *(this + 1112) = 0u;
  *(this + 1128) = 0u;
  *(this + 286) = 0;
  *(this + 1148) = 0x7FFFFFFFLL;
  *(this + 1160) = 0u;
  *(this + 1176) = 0u;
  *(this + 298) = 0;
  *(this + 1196) = 0x7FFFFFFFLL;
  *(this + 1208) = 0u;
  *(this + 1224) = 0u;
  *(this + 310) = 0;
  *(this + 1244) = 0x7FFFFFFFLL;
  *(this + 322) = 0;
  *(this + 1256) = 0u;
  *(this + 1272) = 0u;
  *(this + 1292) = 0x7FFFFFFFLL;
  *(this + 334) = 0;
  *(this + 1304) = 0u;
  *(this + 1320) = 0u;
  *(this + 1340) = 0x7FFFFFFFLL;
  *(this + 346) = 0;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 1388) = 0x7FFFFFFFLL;
  *(this + 358) = 0;
  *(this + 1400) = 0u;
  *(this + 1416) = 0u;
  *(this + 1436) = 0x7FFFFFFFLL;
  *(this + 1448) = 0u;
  *(this + 1464) = 0u;
  *(this + 370) = 0;
  *(this + 1484) = 0x7FFFFFFFLL;
  *(this + 382) = 0;
  *(this + 1496) = 0u;
  *(this + 1512) = 0u;
  *(this + 1532) = 0x7FFFFFFFLL;
  *(this + 394) = 0;
  *(this + 1544) = 0u;
  *(this + 1560) = 0u;
  *(this + 1580) = 0x7FFFFFFFLL;
  *(this + 406) = 0;
  *(this + 1592) = 0u;
  *(this + 1608) = 0u;
  *(this + 1628) = 0x7FFFFFFFLL;
  *(this + 418) = 0;
  *(this + 1640) = 0u;
  *(this + 1656) = 0u;
  *(this + 1676) = 0x7FFFFFFFLL;
  *(this + 430) = 0;
  *(this + 1688) = 0u;
  *(this + 1704) = 0u;
  *(this + 1724) = 0x7FFFFFFFLL;
  *(this + 442) = 0;
  *(this + 1736) = 0u;
  *(this + 1752) = 0u;
  *(this + 1772) = 0x7FFFFFFFLL;
  *(this + 454) = 0;
  *(this + 1784) = 0u;
  *(this + 1800) = 0u;
  *(this + 1820) = 0x7FFFFFFFLL;
  *(this + 1840) = 0;
  *(this + 2048) = 0;
  *(this + 2064) = 0;
  *(this + 2112) = 0;
  *(this + 532) = 1065353216;
  *v2 = xmmword_1E3072DE0;
  *(this + 537) = 3;
  *(v2 + 20) = xmmword_1E3072DF0;
  *(this + 1084) = 0;
  *(this + 2170) = 1;
  *(this + 136) = xmmword_1E3072E00;
  *(this + 548) = 1061158912;
  *(this + 2196) = 1;
  *(v2 + 68) = xmmword_1E3072E10;
  *(v2 + 84) = xmmword_1E3072E20;
  *(this + 279) = 0x3DCCCCCD41F00000;
  *(this + 560) = 1097877340;
  *(this + 2244) = 1;
  *(this + 141) = xmmword_1E30476B0;
  *(this + 2272) = 1;
  *(this + 286) = 0x3F8000003F2D42C4;
  *(this + 287) = 0x193F800000;
  *(this + 144) = xmmword_1E3072E30;
  *(this + 290) = 1056964608;
  *(this + 582) = 0x40000000;
  *(this + 1166) = 256;
  *(this + 292) = 0;
  *(this + 2344) = 1;
  *(this + 587) = 1056964608;
  *(this + 1176) = 1;
  *(this + 298) = 0;
  *(this + 148) = 0u;
  re::DynamicString::setCapacity(this + 295, 0x3E8uLL);
  re::Defaults::floatValue("ShadowPlaneUpdateInterval", v10, v16);
  v12 = v17;
  if (!v16[0])
  {
    v12 = 0.5;
  }

  *(this + 587) = v12;
  re::Defaults::BOOLValue("ShadowUpdateLog", v11, v15);
  if (v15[0])
  {
    v13 = v15[1];
  }

  else
  {
    v13 = 0;
  }

  *(this + 2352) = v13;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ShadowClusterComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::LightSystem *re::ecs2::LightSystem::LightSystem(re::ecs2::LightSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 288) = 0u;
  *v2 = &unk_1F5CEE108;
  v3 = v2 + 304;
  v4 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::BaseLightComponentStateImpl(v2 + 304);
  *(this + 38) = &unk_1F5CD7B28;
  *(this + 504) = 0u;
  *(this + 130) = 1;
  *(this + 66) = 0;
  *(this + 536) = 0u;
  *(this + 138) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  *(this + 160) = 1;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 85) = 0;
  *(this + 172) = 1;
  *(this + 696) = 0u;
  *(this + 712) = 0u;
  *(this + 721) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 78, 0);
  *(this + 160) += 2;
  *(this + 83) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 84, 0);
  *(this + 172) += 2;
  *(this + 89) = 0;
  *(this + 90) = this;
  *(this + 91) = v3;
  *(this + 736) = 1;
  v8 = re::ecs2::PointLightComponentStateImpl::PointLightComponentStateImpl((this + 744));
  *(this + 59) = 0u;
  *(this + 240) = 1;
  *(this + 121) = 0;
  *(this + 61) = 0u;
  *(this + 248) = 0;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 1032) = 0u;
  *(this + 1048) = 0u;
  *(this + 1064) = 0u;
  *(this + 270) = 1;
  *(this + 68) = 0u;
  *(this + 69) = 0u;
  *(this + 140) = 0;
  *(this + 282) = 1;
  *(this + 71) = 0u;
  *(this + 72) = 0u;
  *(this + 1161) = 0u;
  v11 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 133, 0);
  *(this + 270) += 2;
  *(this + 138) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 139, 0);
  *(this + 282) += 2;
  *(this + 144) = 0;
  *(this + 145) = this;
  *(this + 146) = this + 744;
  *(this + 1176) = 1;
  v12 = re::ecs2::SpotLightComponentStateImpl::SpotLightComponentStateImpl((this + 1184));
  *(this + 1384) = 0u;
  *(this + 350) = 1;
  *(this + 176) = 0;
  *(this + 1416) = 0u;
  *(this + 358) = 0;
  *(this + 90) = 0u;
  *(this + 91) = 0u;
  *(this + 92) = 0u;
  *(this + 93) = 0u;
  *(this + 94) = 0u;
  *(this + 380) = 1;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 195) = 0;
  *(this + 392) = 1;
  *(this + 1576) = 0u;
  *(this + 1592) = 0u;
  *(this + 1601) = 0u;
  v15 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 188, 0);
  *(this + 380) += 2;
  *(this + 193) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 194, 0);
  *(this + 392) += 2;
  *(this + 199) = 0;
  *(this + 200) = this;
  *(this + 201) = this + 1184;
  *(this + 1616) = 1;
  v16 = re::ecs2::DirectionalLightComponentStateImpl::DirectionalLightComponentStateImpl((this + 1624));
  *(this + 114) = 0u;
  *(this + 460) = 1;
  *(this + 231) = 0;
  *(this + 116) = 0u;
  *(this + 468) = 0;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
  *(this + 1912) = 0u;
  *(this + 1928) = 0u;
  *(this + 1944) = 0u;
  *(this + 490) = 1;
  *(this + 123) = 0u;
  *(this + 124) = 0u;
  *(this + 250) = 0;
  *(this + 502) = 1;
  *(this + 126) = 0u;
  *(this + 127) = 0u;
  *(this + 2041) = 0u;
  v19 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 243, 0);
  *(this + 490) += 2;
  *(this + 248) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 249, 0);
  *(this + 502) += 2;
  *(this + 254) = 0;
  *(this + 255) = this;
  *(this + 256) = this + 1624;
  *(this + 2056) = 1;
  v20 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::BaseLightComponentStateImpl(this + 2064);
  *(this + 258) = &unk_1F5CD7B80;
  *(this + 2264) = 0u;
  *(this + 570) = 1;
  *(this + 286) = 0;
  *(this + 2296) = 0u;
  *(this + 578) = 0;
  *(this + 145) = 0u;
  *(this + 146) = 0u;
  *(this + 147) = 0u;
  *(this + 148) = 0u;
  *(this + 149) = 0u;
  *(this + 600) = 1;
  *(this + 2408) = 0u;
  *(this + 2424) = 0u;
  *(this + 305) = 0;
  *(this + 612) = 1;
  *(this + 2456) = 0u;
  *(this + 2472) = 0u;
  *(this + 2481) = 0u;
  v23 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 298, 0);
  *(this + 600) += 2;
  *(this + 303) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 304, 0);
  *(this + 612) += 2;
  *(this + 309) = 0;
  *(this + 310) = this;
  *(this + 311) = this + 2064;
  *(this + 2496) = 1;
  v24 = re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::BaseLightComponentStateImpl(this + 2504);
  *(this + 313) = &unk_1F5CD7BD8;
  *(this + 169) = 0u;
  *(this + 680) = 1;
  *(this + 341) = 0;
  *(this + 171) = 0u;
  *(this + 688) = 0;
  *(this + 2760) = 0u;
  *(this + 2776) = 0u;
  *(this + 2792) = 0u;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 710) = 1;
  *(this + 178) = 0u;
  *(this + 179) = 0u;
  *(this + 360) = 0;
  *(this + 722) = 1;
  *(this + 181) = 0u;
  *(this + 182) = 0u;
  *(this + 2921) = 0u;
  v27 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 353, 0);
  *(this + 710) += 2;
  *(this + 358) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 359, 0);
  *(this + 722) += 2;
  *(this + 364) = 0;
  *(this + 365) = this;
  *(this + 366) = this + 2504;
  *(this + 2936) = 1;
  v28 = re::ecs2::FrustumLightComponentStateImpl::FrustumLightComponentStateImpl((this + 2944));
  *(this + 3144) = 0u;
  *(this + 790) = 1;
  *(this + 396) = 0;
  *(this + 3176) = 0u;
  *(this + 798) = 0;
  *(this + 200) = 0u;
  *(this + 201) = 0u;
  *(this + 202) = 0u;
  *(this + 203) = 0u;
  *(this + 204) = 0u;
  *(this + 820) = 1;
  *(this + 3288) = 0u;
  *(this + 3304) = 0u;
  *(this + 415) = 0;
  *(this + 832) = 1;
  *(this + 3336) = 0u;
  *(this + 3352) = 0u;
  *(this + 3361) = 0u;
  v31 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 408, 0);
  *(this + 820) += 2;
  *(this + 413) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 414, 0);
  *(this + 832) += 2;
  *(this + 419) = 0;
  *(this + 420) = this;
  *(this + 421) = this + 2944;
  *(this + 3376) = 1;
  *(this + 3384) = 0u;
  *(this + 3400) = 0u;
  *(this + 854) = 0;
  *(this + 3420) = 0x7FFFFFFFLL;
  return this;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::LightComponent,re::ecs2::LightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::LightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::LightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::PointLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::SpotLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DirectionalLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::AmbientLightComponent,re::ecs2::AmbientLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AmbientLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AmbientLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::ecs2::BaseLightComponentStateImpl<re::ecs2::RectAreaLightComponent,re::ecs2::RectAreaLightComponentStateImpl>::dependsOnComponents(uint64_t a1)
{
  v1 = a1 + 128;
  if ((*(a1 + 120) & 1) == 0)
  {
    return *(a1 + 136);
  }

  return v1;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::RectAreaLightComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::RectAreaLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::FrustumLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::ImageBasedLightSystem *re::ecs2::ImageBasedLightSystem::ImageBasedLightSystem(re::ecs2::ImageBasedLightSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF6130;
  v3 = (v2 + 544);
  *(v2 + 304) = 0;
  *(v2 + 312) = 1;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 320) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 1;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0;
  *(v2 + 480) = 1;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 513) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 52, 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 58, 0);
  *(this + 120) += 2;
  *(this + 63) = 0;
  *(this + 64) = this;
  *(this + 65) = v3;
  *(this + 528) = 1;
  re::ecs2::ImageBasedLightComponentStateImpl::ImageBasedLightComponentStateImpl(v3, this);
  *(this + 87) = 0u;
  *(this + 86) = 0u;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::ImageBasedLightComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::AnchorSystem *re::ecs2::AnchorSystem::AnchorSystem(re::ecs2::AnchorSystem *this)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CED938;
  v3 = v2 + 536;
  *(v2 + 304) = 0;
  *(v2 + 312) = 1;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 320) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 1;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0;
  *(v2 + 480) = 1;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 513) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 52, 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 58, 0);
  *(this + 120) += 2;
  *(this + 63) = 0;
  *(this + 64) = this;
  *(this + 65) = v3;
  *(this + 528) = 0;
  *(this + 67) = &unk_1F5CED8D0;
  *(this + 68) = this;
  *(this + 69) = 0;
  *(this + 71) = 0;
  *(this + 70) = 0;
  *(this + 144) = 0;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  v8[1] = 1;
  v9[0] = re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v8[0] = v9;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 592), v8);
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnchorComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::MeshPartInstancesSystem *re::ecs2::MeshPartInstancesSystem::MeshPartInstancesSystem(re::ecs2::MeshPartInstancesSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 288) = 0u;
  *v2 = &unk_1F5CF3488;
  v3 = v2 + 536;
  *(v2 + 304) = 0;
  *(v2 + 312) = 1;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 1;
  *(v2 + 472) = 0;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 480) = 1;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 513) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 52, 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 58, 0);
  *(this + 120) += 2;
  *(this + 63) = 0;
  *(this + 64) = this;
  *(this + 65) = v3;
  *(this + 528) = 0;
  *(this + 67) = &unk_1F5CF3420;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 148) = 0;
  *(this + 596) = 0x7FFFFFFFLL;
  *(this + 616) = 0u;
  *(this + 76) = this;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::InstanceGroupBoundsSystem *re::ecs2::InstanceGroupBoundsSystem::InstanceGroupBoundsSystem(re::ecs2::InstanceGroupBoundsSystem *this)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CF5AD0;
  v3 = v2 + 464;
  *(v2 + 232) = 0;
  *(v2 + 224) = 0;
  v4 = v2 + 224;
  *(v2 + 240) = 1;
  *(v2 + 256) = 0;
  *(v2 + 264) = 0;
  *(v2 + 248) = 0;
  *(v2 + 272) = 0;
  v5 = (v2 + 280);
  *(v2 + 280) = 0u;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0u;
  *(v2 + 360) = 1;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  *(v2 + 408) = 1;
  *(v2 + 441) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0u;
  v8 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 43, 0);
  *(this + 90) += 2;
  *(this + 48) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 49, 0);
  *(this + 102) += 2;
  *(this + 54) = 0;
  *(this + 55) = this;
  *(this + 56) = v3;
  *(this + 456) = 0;
  *(this + 58) = &unk_1F5CF5A68;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  *(this + 130) = 0;
  *(this + 524) = 0x7FFFFFFFLL;
  *(this + 67) = 0;
  *(this + 69) = 0;
  *(this + 68) = 0;
  *(this + 70) = this;
  v10[1] = 1;
  v11[0] = re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v10[0] = v11;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 536), v10);
  *(this + 71) = 0;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InstanceGroupBoundsComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::MeshSystem *re::ecs2::MeshSystem::MeshSystem(re::ecs2::MeshSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CED448;
  v3 = v2 + 640;
  *(v2 + 400) = 0;
  *(v2 + 408) = 0;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 416) = 1;
  *(v2 + 432) = 0;
  *(v2 + 440) = 0;
  *(v2 + 424) = 0;
  *(v2 + 448) = 0;
  v4 = (v2 + 456);
  *(v2 + 504) = 0u;
  *(v2 + 520) = 0u;
  *(v2 + 472) = 0u;
  *(v2 + 488) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 536) = 1;
  *(v2 + 544) = 0u;
  *(v2 + 560) = 0u;
  *(v2 + 576) = 0;
  *(v2 + 584) = 1;
  *(v2 + 592) = 0u;
  *(v2 + 608) = 0u;
  *(v2 + 617) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 65, 0);
  *(this + 134) += 2;
  *(this + 70) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 71, 0);
  *(this + 146) += 2;
  *(this + 76) = 0;
  *(this + 77) = this;
  *(this + 78) = v3;
  *(this + 632) = 0;
  re::ecs2::MeshComponentStateImpl::MeshComponentStateImpl(v3, this);
  *(this + 984) = 0u;
  *(this + 1000) = 0u;
  *(this + 952) = 0u;
  *(this + 968) = 0u;
  *(this + 920) = 0u;
  *(this + 936) = 0u;
  *(this + 888) = 0u;
  *(this + 904) = 0u;
  return this;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::AREnvironmentProbeSystem *re::ecs2::AREnvironmentProbeSystem::AREnvironmentProbeSystem(re::ecs2::AREnvironmentProbeSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CF9498;
  v3 = v2 + 296;
  *(v2 + 288) = 0;
  *(v2 + 296) = &unk_1F5CF9430;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0u;
  *(v2 + 344) = 0;
  *(v2 + 352) = 1;
  *(v2 + 368) = 0;
  *(v2 + 376) = 0;
  *(v2 + 360) = 0;
  *(v2 + 384) = 0;
  v4 = (v2 + 392);
  *(v2 + 392) = 0u;
  *(v2 + 408) = 0u;
  *(v2 + 424) = 0u;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 1;
  *(v2 + 480) = 0u;
  *(v2 + 496) = 0u;
  *(v2 + 512) = 0;
  *(v2 + 520) = 1;
  *(v2 + 528) = 0u;
  *(v2 + 544) = 0u;
  *(v2 + 553) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 57, 0);
  *(this + 118) += 2;
  *(this + 62) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 63, 0);
  *(this + 130) += 2;
  *(this + 68) = 0;
  *(this + 69) = this;
  *(this + 70) = v3;
  *(this + 568) = 1;
  *(this + 36) = 0u;
  *(this + 37) = 0u;
  *(this + 38) = 0u;
  *(this + 39) = 0u;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AREnvironmentProbeComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

re::ecs2::CameraViewDescriptorsSystem *re::ecs2::CameraViewDescriptorsSystem::CameraViewDescriptorsSystem(re::ecs2::CameraViewDescriptorsSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 288) = 0;
  *(v2 + 296) = 0;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CEFAC8;
  v3 = (v2 + 536);
  *(v2 + 304) = 0;
  *(v2 + 312) = 1;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  *(v2 + 320) = 0;
  *(v2 + 344) = 0;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 1;
  *(v2 + 440) = 0u;
  *(v2 + 456) = 0u;
  *(v2 + 472) = 0;
  *(v2 + 480) = 1;
  *(v2 + 488) = 0u;
  *(v2 + 504) = 0u;
  *(v2 + 513) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 52, 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 58, 0);
  *(this + 120) += 2;
  *(this + 63) = 0;
  *(this + 64) = this;
  *(this + 65) = v3;
  *(this + 528) = 0;
  re::ecs2::CameraViewDescriptorsComponentStateImpl::CameraViewDescriptorsComponentStateImpl(v3, this);
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CameraViewDescriptorsComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 448, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::ecs2::RenderPassGroupService::enableRenderPassGroups(re::ecs2::RenderPassGroupService *this)
{
  v3 = &qword_1EE1C5000;
  {
    v9 = v1;
    v10 = v2;
    v3 = &qword_1EE1C5000;
    if (v5)
    {
      re::Defaults::BOOLValue("enableRenderPassGroups", v6, v8);
      v7 = v8[1];
      if (!v8[0])
      {
        v7 = 1;
      }

      re::ecs2::RenderPassGroupService::enableRenderPassGroups(void)::enable = v7;
      v3 = &qword_1EE1C5000;
    }
  }

  return *(v3 + 2848);
}

void *re::ecs2::allocInfo_RenderPassGroupService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_173, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_173))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1250, "RenderPassGroupService");
    __cxa_guard_release(&_MergedGlobals_173);
  }

  return &unk_1EE1A1250;
}

void re::ecs2::initInfo_RenderPassGroupService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x57BC0B05EDD6AF7ALL;
  v6[1] = "RenderPassGroupService";
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
  *(this + 8) = &re::ecs2::initInfo_RenderPassGroupService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_UnlitMaterialParametersComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_174, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_174))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1328, "UnlitMaterialParametersComponent");
    __cxa_guard_release(&_MergedGlobals_174);
  }

  return &unk_1EE1A1328;
}

void re::ecs2::initInfo_UnlitMaterialParametersComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v33[0] = 0xB3F9356AA8DB1ADCLL;
  v33[1] = "UnlitMaterialParametersComponent";
  if (v33[0])
  {
    if (v33[0])
    {
    }
  }

  *(this + 2) = v34;
  if ((atomic_load_explicit(&qword_1EE1A12E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A12E8);
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
      qword_1EE1A12F0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_ColorGamut4F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "colorTint";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x1C00000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A12F8 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_AssetHandle(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "texture";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A1300 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_float(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "opacityThreshold";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x4800000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A1308 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_BlendingType(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "blending";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x4C00000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1A1310 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_BOOL(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "disableTonemap";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x4D00000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1A1318 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_AssetHandle(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "materialAsset";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x5000000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1A1320 = v31;
      __cxa_guard_release(&qword_1EE1A12E8);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1A12F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UnlitMaterialParametersComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UnlitMaterialParametersComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UnlitMaterialParametersComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UnlitMaterialParametersComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232UnlitMaterialParametersComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v32 = v34;
}

__n128 re::internal::defaultConstruct<re::ecs2::UnlitMaterialParametersComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 12) = 0;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CD7C30;
  __asm { FMOV            V0.4S, #1.0 }

  *(v3 + 28) = result;
  *(v3 + 44) = 0;
  *(v3 + 88) = 0;
  *(v3 + 96) = 0;
  *(v3 + 80) = 0;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0;
  *(v3 + 48) = 0;
  *(v3 + 70) = 0;
  return result;
}

__n128 re::internal::defaultConstructV2<re::ecs2::UnlitMaterialParametersComponent>(uint64_t a1)
{
  *(a1 + 96) = 0;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD7C30;
  __asm { FMOV            V0.4S, #1.0 }

  *(v1 + 28) = result;
  *(v1 + 44) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 80) = 0;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0;
  *(v1 + 48) = 0;
  *(v1 + 70) = 0;
  return result;
}

void re::ecs2::UnlitMaterialParametersComponent::~UnlitMaterialParametersComponent(re::ecs2::UnlitMaterialParametersComponent *this)
{
  *this = &unk_1F5CD7C30;
  v2 = (this + 48);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CD7C30;
  v2 = (this + 48);
  re::AssetHandle::~AssetHandle((this + 80));
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs232UnlitMaterialParametersComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 9;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_SpatialSceneClassificationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_175, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_175))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A13C0, "SpatialSceneClassificationSystem");
    __cxa_guard_release(&_MergedGlobals_175);
  }

  return &unk_1EE1A13C0;
}

void re::ecs2::initInfo_SpatialSceneClassificationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCFB7F49288359FBALL;
  v6[1] = "SpatialSceneClassificationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x11800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_SpatialSceneClassificationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialSceneClassificationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialSceneClassificationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SpatialSceneClassificationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SpatialSceneClassificationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialSceneClassificationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialSceneClassificationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::SpatialSceneClassificationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1, 1);
  *v3 = &unk_1F5CD7CB8;
  *(v3 + 272) = 0;
  result = 0.0;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *(v3 + 252) = 0u;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::SpatialSceneClassificationSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::DynamicArray<unsigned long>::deinit(a3 + 240);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::SpatialSceneClassificationSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1, 1);
  *v1 = &unk_1F5CD7CB8;
  *(v1 + 272) = 0;
  result = 0.0;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *(v1 + 252) = 0u;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::SpatialSceneClassificationSystem>(re::ecs2::System *a1)
{
  re::DynamicArray<unsigned long>::deinit(a1 + 240);

  re::ecs2::System::~System(a1);
}

_anonymous_namespace_ *re::ecs2::SpatialSceneClassificationSystem::willAddSystemToECSService(re::ecs2::SpatialSceneClassificationSystem *this)
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

void *re::ecs2::SpatialSceneClassificationSystem::willRemoveSystemFromECSService(re::ecs2::SpatialSceneClassificationSystem *this)
{
  v2 = *(this + 28);
  result = (this + 224);
  if (v2)
  {
    *result = 0;
    result[1] = 0;
  }

  return result;
}

uint64_t re::ecs2::SpatialSceneClassificationSystem::willAddSceneToECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v15 = v3;
    v16 = re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SpatialSceneClassificationSystem::activateComponents,re::ecs2::SpatialSceneClassificationSystem>;
    v17 = 0;
    v18 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 96), &v15);
    v15 = v3;
    v16 = re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SpatialSceneClassificationSystem::deactivateComponents,re::ecs2::SpatialSceneClassificationSystem>;
    v17 = 0;
    v18 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 184), &v15);
    v6 = *(v3 + 248);
    v7 = *(v3 + 256);
    if (v7 >= v6)
    {
      v8 = v7 + 1;
      if (v6 < v7 + 1)
      {
        if (*(v3 + 240))
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

          re::DynamicArray<float *>::setCapacity((v3 + 240), v12);
        }

        else
        {
          re::DynamicArray<float *>::setCapacity((v3 + 240), v8);
          ++*(v3 + 264);
        }
      }

      v7 = *(v3 + 256);
    }

    *(*(v3 + 272) + 8 * v7) = a2;
    *(v3 + 256) = v7 + 1;
    ++*(v3 + 264);
    this = *(v3 + 224);
    if (this)
    {
      this = (*(*this + 16))(this, a2);
      if (this)
      {
        v13 = *(*(a2 + 13) + 288) >> 1;
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = ___ZN2re4ecs232SpatialSceneClassificationSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke;
        v14[3] = &__block_descriptor_40_e5_v8__0l;
        v14[4] = a2;
        return (*(*this + 32))(this, 771, v13, v14);
      }
    }
  }

  return this;
}

void ___ZN2re4ecs232SpatialSceneClassificationSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    v3 = *(v2 + 384);
    if (v3)
    {
      v4 = *(v2 + 400);
      v5 = 8 * v3;
      do
      {
        v6 = *v4;
        v7 = *re::audioLogObjects(v2);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
        {
          v9 = *(v6 + 16);
          v10 = v7;
          v11 = *(v9 + 296);
          v12 = *(*(v6 + 16) + 312);
          v13 = *(*(*(a1 + 32) + 104) + 296);
          *buf = 134218754;
          v20 = v6;
          v21 = 2080;
          v22 = v11;
          v23 = 2048;
          v24 = v12;
          v25 = 2080;
          v26 = v13;
          _os_log_debug_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEBUG, "SpatialSceneClassificationSystem: service reset callback, resetting 'sentClassificationToAudioService' for component(%p) entity(%s, %llu) scene(%s)", buf, 0x2Au);
        }

        *(v6 + 42) = 0;
        v2 = _os_feature_enabled_impl();
        if (v2)
        {
          v8 = *re::audioLogObjects(v2);
          v2 = os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG);
          if (v2)
          {
            v14 = *(v6 + 16);
            v15 = v8;
            v16 = *(v14 + 296);
            v17 = *(*(v6 + 16) + 312);
            v18 = *(*(*(a1 + 32) + 104) + 296);
            *buf = 134218754;
            v20 = v6;
            v21 = 2080;
            v22 = v16;
            v23 = 2048;
            v24 = v17;
            v25 = 2080;
            v26 = v18;
            _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "SpatialSceneClassificationSystem: service reset callback, resetting 'sentRoomIdentifierToAudioService' for component(%p) entity(%s, %llu) scene(%s)", buf, 0x2Au);
          }

          *(v6 + 43) = 0;
        }

        ++v4;
        v5 -= 8;
      }

      while (v5);
    }
  }
}

uint64_t re::ecs2::SpatialSceneClassificationSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v11 = v3;
    *(&v11 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SpatialSceneClassificationSystem::activateComponents,re::ecs2::SpatialSceneClassificationSystem>;
    *&v12 = 0;
    *(&v12 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 96, &v11);
    *&v11 = v3;
    *(&v11 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SpatialSceneClassificationSystem::deactivateComponents,re::ecs2::SpatialSceneClassificationSystem>;
    *&v12 = 0;
    *(&v12 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 184, &v11);
    v5 = *(v3 + 272);
    v6 = *(v3 + 256);
    v7 = v5;
    if (v6)
    {
      v8 = 8 * v6;
      v7 = *(v3 + 272);
      while (*v7 != a2)
      {
        ++v7;
        v8 -= 8;
        if (!v8)
        {
          goto LABEL_12;
        }
      }
    }

    v9 = &v5[v6];
    if (v7 != v9)
    {
      v10 = v7 - v5;
      if (v6 <= v10 >> 3)
      {
        v14 = 0u;
        v15 = 0u;
        v12 = 0u;
        v13 = 0u;
        v11 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (v6 - 1 > v10 >> 3)
      {
        *(v5 + v10) = *(v9 - 1);
      }

      *(v3 + 256) = v6 - 1;
      ++*(v3 + 264);
    }

LABEL_12:
    this = *(v3 + 224);
    if (this)
    {
      this = (*(*this + 16))(this, a2);
      if (this)
      {
        return (*(*this + 40))(this, 771, *(*(a2 + 13) + 288) >> 1);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::SpatialSceneClassificationSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v29 = *MEMORY[0x1E69E9840];
  if (*(result + 224))
  {
    v4 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v24);
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v21 = vdupq_n_s64(1uLL);
      do
      {
        v23 = *v6;
        v8 = re::ecs2::SceneComponentTable::get((v23 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v8)
        {
          v9 = *(v8 + 48);
        }

        else
        {
          v9 = 0;
        }

        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v8);
        if (isStatisticCollectionEnabled)
        {
          v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v12 = *(v11 + 152);
          if (v12)
          {
            v13 = v12[1192].u64[0];
            if (v13 >= v9)
            {
              v13 = v9;
            }

            v12[1192].i64[0] = v13;
            v14 = v12[1192].u64[1];
            if (v14 <= v9)
            {
              v14 = v9;
            }

            v12[1192].i64[1] = v14;
            v15.i64[1] = v21.i64[1];
            v15.i64[0] = v9;
            v12[1193] = vaddq_s64(v12[1193], v15);
            *(v11 + 184) = 0;
          }
        }

        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v22, 3129, v4);
        v27[0] = &unk_1F5CD7D48;
        v27[1] = v4;
        v27[2] = &v23;
        v28 = v27;
        v16 = re::ecs2::SceneComponentTable::get((v23 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialSceneClassificationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v16)
        {
          v17 = *(v16 + 384);
          if (v17)
          {
            v18 = *(v16 + 400);
            v19 = 8 * v17;
            do
            {
              v20 = *(*v18 + 16);
              if (*(v20 + 304))
              {
                v25 = *v18;
                v26 = v20;
                if (!v28)
                {
                  std::__throw_bad_function_call[abi:nn200100]();
                }

                (*(*v28 + 48))(v28, &v26, &v25);
              }

              ++v18;
              v19 -= 8;
            }

            while (v19);
          }
        }

        if (v28 == v27)
        {
          (*(*v28 + 32))(v28);
        }

        else if (v28)
        {
          (*(*v28 + 40))(v28);
        }

        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v22);
        ++v6;
      }

      while (v6 != v7);
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v24);
  }

  return result;
}

void re::ecs2::SpatialSceneClassificationSystem::~SpatialSceneClassificationSystem(re::ecs2::SpatialSceneClassificationSystem *this)
{
  re::DynamicArray<unsigned long>::deinit(this + 240);

  re::ecs2::System::~System(this);
}

{
  re::DynamicArray<unsigned long>::deinit(this + 240);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SpatialSceneClassificationSystem::activateComponents,re::ecs2::SpatialSceneClassificationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      *(*a3 + 42) = 0;
      if (_os_feature_enabled_impl())
      {
        *(v6 + 43) = 0;
      }

      ++a3;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::SpatialSceneClassificationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::SpatialSceneClassificationSystem::deactivateComponents,re::ecs2::SpatialSceneClassificationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v5 = 8 * a4;
    do
    {
      v6 = *a3;
      *(*a3 + 42) = 0;
      if (_os_feature_enabled_impl())
      {
        *(v6 + 43) = 0;
      }

      ++a3;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(uint64_t result)
{
  if (*result && *(*result + 152))
  {
    v1 = result;
    result = mach_absolute_time();
    v2 = *v1;
    v3 = *(*v1 + 152);
    if (v3)
    {
      v4 = result - v1[1];
      v5 = v3[968].u64[0];
      if (v5 >= v4)
      {
        v5 = result - v1[1];
      }

      v3[968].i64[0] = v5;
      v6 = v3[968].u64[1];
      if (v6 <= v4)
      {
        v6 = v4;
      }

      v3[968].i64[1] = v6;
      v7 = vdupq_n_s64(1uLL);
      v7.i64[0] = v4;
      v3[969] = vaddq_s64(v3[969], v7);
      *(v2 + 184) = 0;
    }

    *v1 = 0;
  }

  return result;
}

__n128 std::__function::__func<re::ecs2::SpatialSceneClassificationSystem::update(re::ecs2::System::UpdateContext)::$_0,std::allocator<re::ecs2::SpatialSceneClassificationSystem::update(re::ecs2::System::UpdateContext)::$_0>,void ()(re::ecs2::Entity *,re::ecs2::SpatialSceneClassificationComponent *)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7D48;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

void std::__function::__func<re::ecs2::SpatialSceneClassificationSystem::update(re::ecs2::System::UpdateContext)::$_0,std::allocator<re::ecs2::SpatialSceneClassificationSystem::update(re::ecs2::System::UpdateContext)::$_0>,void ()(re::ecs2::Entity *,re::ecs2::SpatialSceneClassificationComponent *)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v4 = *a3;
  v5 = (*(**(*(a1 + 8) + 224) + 16))(*(*(a1 + 8) + 224), **(a1 + 16));
  if (v5)
  {
    v6 = v5;
    if ((*(v4 + 42) & 1) == 0)
    {
      v7 = *re::audioLogObjects(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v14 = *(v4 + 16);
        v15 = v7;
        v16 = *(v14 + 296);
        v17 = *(*(v4 + 16) + 312);
        v18 = *(*(**(a1 + 16) + 104) + 296);
        *v24 = 134218754;
        *&v24[4] = v4;
        *&v24[12] = 2080;
        *&v24[14] = v16;
        v25 = 2048;
        v26 = v17;
        v27 = 2080;
        v28 = v18;
        _os_log_debug_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_DEBUG, "SpatialSceneClassificationSystem: updating target Spatial Scene Classification for component(%p) entity(%s, %llu) scene(%s)", v24, 0x2Au);
      }

      (*(*v6 + 376))(v6, *(v4 + 25));
      *(v4 + 42) = 1;
    }

    v8 = _os_feature_enabled_impl();
    if (v8 && (*(v4 + 43) & 1) == 0)
    {
      v9 = *re::audioLogObjects(v8);
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
      {
        v19 = *(v4 + 16);
        v20 = v9;
        v21 = *(v19 + 296);
        v22 = *(*(v4 + 16) + 312);
        v23 = *(*(**(a1 + 16) + 104) + 296);
        *v24 = 134218754;
        *&v24[4] = v4;
        *&v24[12] = 2080;
        *&v24[14] = v21;
        v25 = 2048;
        v26 = v22;
        v27 = 2080;
        v28 = v23;
        _os_log_debug_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_DEBUG, "SpatialSceneClassificationSystem: updating target Spatial Scene Room Identifier for component(%p) entity(%s, %llu) scene(%s)", v24, 0x2Au);
      }

      *v24 = *(v4 + 26);
      (*(*v6 + 392))(v6, v24);
      *(v4 + 43) = 1;
    }
  }

  else
  {
    v10 = *re::audioLogObjects(0);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = **(a1 + 16);
      v12 = v10;
      v13 = *(*(v11 + 104) + 296);
      *v24 = 136315138;
      *&v24[4] = v13;
      _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "SpatialSceneClassifiationSystem: Audio service not found for scene %s", v24, 0xCu);
    }
  }
}

uint64_t std::__function::__func<re::ecs2::SpatialSceneClassificationSystem::update(re::ecs2::System::UpdateContext)::$_0,std::allocator<re::ecs2::SpatialSceneClassificationSystem::update(re::ecs2::System::UpdateContext)::$_0>,void ()(re::ecs2::Entity *,re::ecs2::SpatialSceneClassificationComponent *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::ecs2::VisualProxyScopeManagerStateTracking *re::ecs2::VisualProxyScopeManagerStateTracking::VisualProxyScopeManagerStateTracking(re::ecs2::VisualProxyScopeManagerStateTracking *this)
{
  v5[3] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CD7DD8;
  v2[39] = 0;
  v2[40] = 0;
  v2[38] = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::VisualProxyFilterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 38), v4);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CB7CD0;
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

void re::ecs2::VisualProxyScopeManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
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
    v34 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      if (!*(a1 + 56) || (v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27)), v11 = *(*(a1 + 64) + 4 * ((v10 ^ (v10 >> 31)) % *(a1 + 80))), v11 == 0x7FFFFFFF))
      {
        while (1)
        {
LABEL_14:
          v13 = *(v9 + 32);
          if (!v13 || (*(v13 + 304) & 0x80) != 0)
          {
            v15 = 0;
            LOBYTE(v16) = 0;
            v17 = 0;
            goto LABEL_23;
          }

          v37 = *(v9 + 32);
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v37, v14 ^ (v14 >> 31), v44);
          if (v45 != 0x7FFFFFFF)
          {
            break;
          }

          v9 = v37;
        }

        v18 = *(a1 + 72) + 32 * v45;
        v16 = *(v18 + 20);
        if (v16 == 1)
        {
          v15 = *(v18 + 16);
        }

        else
        {
          v15 = 0;
        }

        v17 = *(v18 + 21);
LABEL_23:
        re::StackScratchAllocator::StackScratchAllocator(v44);
        v37 = 0;
        v38 = 0;
        v39 = 1;
        v41 = 0;
        v42 = 0;
        v40 = 0;
        v43 = 0;
        re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::init(&v37, v44, 1uLL);
        v46.n128_u64[0] = v9;
        v46.n128_u32[2] = v15;
        v46.n128_u8[12] = v16;
        v46.n128_u8[13] = v17;
        v19 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::add(&v37, &v46);
LABEL_24:
        v20 = v42;
        while (v20)
        {
          v36 = *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v37, --v20);
          re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](&v37, v20);
          v42 = v20;
          ++v43;
          v21 = re::ecs2::EntityComponentCollection::get((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v21)
          {
            DWORD2(v36) |= *(v21 + 28);
            BYTE12(v36) = 1;
          }

          else if ((BYTE12(v36) & 1) == 0)
          {
            DWORD2(v36) = 1;
          }

          if (re::ecs2::EntityComponentCollection::get((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyScopeTraceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
          {
            BYTE13(v36) = 1;
          }

          if (re::ecs2::EntityComponentCollection::get((v36 + 48), re::ecs2::ComponentImpl<re::ecs2::VisualProxyFilterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
          {
            DWORD2(v36) = 1;
            v22 = 1;
          }

          else
          {
            v22 = DWORD2(v36);
          }

          v23 = BYTE12(v36);
          v24 = BYTE13(v36);
          v46 = 0uLL;
          v47 = 0;
          v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v36 ^ (v36 >> 30))) >> 27));
          re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v36, v25 ^ (v25 >> 31), &v46);
          if (v46.n128_u32[3] == 0x7FFFFFFF)
          {
            v26 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a1 + 56, v46.n128_u32[2], v46.n128_u64[0]);
            v27 = v36;
            *(v26 + 8) = v36;
            *(v26 + 16) = v22 | (v23 << 32) | (v24 << 40);
            ++*(a1 + 96);
          }

          else
          {
            v27 = v36;
          }

          v28 = *(v27 + 344);
          if (v28)
          {
            v29 = *(v27 + 360);
            v30 = 8 * v28;
            do
            {
              v31 = *v29++;
              v46.n128_u64[0] = v31;
              v32 = DWORD2(v36);
              if (!BYTE12(v36))
              {
                v32 = 0;
              }

              v46.n128_u32[2] = v32;
              v46.n128_u16[6] = WORD6(v36);
              v19 = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::add(&v37, &v46);
              v30 -= 8;
            }

            while (v30);
            goto LABEL_24;
          }
        }

        while (v38)
        {
          re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v37);
        }

        if (v37 && (v39 & 1) == 0)
        {
          (*(*v37 + 40))(v19);
        }

        re::StackScratchAllocator::~StackScratchAllocator(v44);
        LODWORD(v3) = v34;
        v8 = *(a2 + 32);
        v7 = *(a2 + 16);
      }

      else
      {
        v12 = *(a1 + 72);
        while (*(v12 + 32 * v11 + 8) != v9)
        {
          v11 = *(v12 + 32 * v11) & 0x7FFFFFFF;
          if (v11 == 0x7FFFFFFF)
          {
            goto LABEL_14;
          }
        }
      }

      if (v8 <= v4 + 1)
      {
        v33 = v4 + 1;
      }

      else
      {
        v33 = v8;
      }

      while (v33 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v4) = v33;
LABEL_57:
      ;
    }

    while (v4 != v3);
  }
}

__n128 re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::add(uint64_t a1, __n128 *a2)
{
  v4 = *(a1 + 40);
  v5 = *(a1 + 8);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::setBucketsCapacity(a1, (v4 + 32) >> 5);
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

void re::ecs2::VisualProxyScopeManagerStateTracking::~VisualProxyScopeManagerStateTracking(re::ecs2::VisualProxyScopeManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::EntityVisualProxyScopeData>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::VisualProxyScopeManagerStateTracking::buildScopeMaskForEntityHierarchy(re::ecs2::Entity const*)::EntityScopeMask,32ul>::operator[](uint64_t a1, unint64_t a2)
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

  return *(v3 + 8 * (a2 >> 5)) + 16 * (a2 & 0x1F);
}

void *re::ecs2::allocInfo_SpatialAudioComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_176, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_176))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A14A8, "SpatialAudioComponent");
    __cxa_guard_release(&_MergedGlobals_176);
  }

  return &unk_1EE1A14A8;
}

void re::ecs2::initInfo_SpatialAudioComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v42[0] = 0xB3E78A7CC19C6796;
  v42[1] = "SpatialAudioComponent";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE1A1458, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A1458);
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
      qword_1EE1A1460 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "gain";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A1468 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "directLevel";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1C00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A1470 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "reverbLevel";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A1478 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = introspect_REAudioSourceDirectivityMode(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "sourceDirectivityMode";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x2800000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A1480 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_float(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "directivityFocus";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x2C00000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1A1488 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_float(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "sphericalCapDiameter";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x3000000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1A1490 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::introspect_float(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "sphericalCapOpeningAngle";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x3400000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1A1498 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_float(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "rolloffFactor";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0x2400000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1A14A0 = v40;
      __cxa_guard_release(&qword_1EE1A1458);
    }
  }

  *(this + 2) = 0x4000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1A1460;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialAudioComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialAudioComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialAudioComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialAudioComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221SpatialAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v41 = v43;
}

void re::ecs2::SpatialAudioComponent::syncStateToAudioPlayerComponent(re::ecs2::SpatialAudioComponent *this)
{
  v1 = *(this + 2);
  if (v1)
  {
    v3 = re::ecs2::EntityComponentCollection::getOrAdd((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v4 = __exp10f(*(this + 8) / 20.0);
    if (*(v3 + 236) != v4)
    {
      if (v4 > 10.0)
      {
        v4 = 10.0;
      }

      re::ecs2::AudioPlayerComponent::setParameterFade(v3, v3 + 232, v3 + 256, v4, 0.0);
    }

    v5 = __exp10f(*(this + 7) / 20.0);
    if (*(v3 + 284) != v5)
    {
      if (v5 > 1.0)
      {
        v5 = 1.0;
      }

      re::ecs2::AudioPlayerComponent::setParameterFade(v3, v3 + 280, v3 + 304, v5, 0.0);
    }

    v6 = *(this + 9);
    if (*(v3 + 328) != v6)
    {
      *(v3 + 328) = v6;
    }

    v7 = *(this + 5);
    v8 = *(this + 6);
    if (*(v3 + 168) != v7 || *(v3 + 172) != *(&v7 + 1) || *(v3 + 176) != *&v8 || *(v3 + 180) != *(&v8 + 1))
    {
      *(v3 + 168) = v7;
      *(v3 + 176) = v8;
    }

    v9 = __exp10f(*(this + 14) / 20.0);
    if (*(v3 + 188) != v9)
    {
      if (v9 > 10.0)
      {
        v9 = 10.0;
      }

      re::ecs2::AudioPlayerComponent::setParameterFade(v3, v3 + 184, v3 + 208, v9, 0.0);
    }
  }
}

double re::make::shared::unsafelyInplace<re::ecs2::SpatialAudioComponent>(ArcSharedObject *a1)
{
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CD7E30;
  *(v1 + 28) = 0;
  *(v1 + 32) = 0;
  *(v1 + 36) = 0x13F800000;
  result = 6.14672757e-10;
  *(v1 + 44) = xmmword_1E3073350;
  return result;
}

void re::ecs2::SpatialAudioComponent::~SpatialAudioComponent(re::ecs2::SpatialAudioComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221SpatialAudioComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::HingeJointComponent::addToSimulation(re::ecs2::HingeJointComponent *this, re::PhysicsSimulation *a2, const re::ecs2::Entity *a3)
{
  if (RigidBody)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = v7;
    v12 = re::PhysicsFactory::defaultFactory(v10, v11);
    *(this + 19) = v13;
    re::PhysicsJointCollection::add((a2 + 136), v13);
    objc_storeWeak(this + 20, a2 + 8);

    re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::registerConstraint(this);
  }
}

void re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::registerConstraint(uint64_t a1)
{
  v2 = re::ecs2::EntityHandle::resolve((a1 + 32), *(a1 + 16));
  re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::registerConstraint(v2, *(a1 + 16));
  v3 = re::ecs2::EntityHandle::resolve((a1 + 56), *(a1 + 16));
  v4 = *(a1 + 16);

  re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::registerConstraint(v3, v4);
}

void re::ecs2::HingeJointComponent::removeFromSimulation(id *this)
{
  if (this[19])
  {
    WeakRetained = objc_loadWeakRetained(this + 20);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      v7 = this[19];
      re::DynamicArray<re::Allocator const*>::removeStable(WeakRetained + 18, &v7);
      objc_destroyWeak(this + 20);
      this[20] = 0;
    }

    v4 = this[19];
    if (v4)
    {
      (**v4)(this[19]);
    }

    this[19] = 0;
    v5 = this[2];
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v6)
      {

        re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::removeConstraintsFromSimulation(v6);
      }
    }
  }
}

void re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::removeConstraintsFromSimulation(void *a1)
{
  if (a1[11] >= 1)
  {
    v2 = a1[2];
    v3 = a1[11] & 0x7FFFFFFFLL;
    v4 = v3 + 1;
    v5 = 8 * v3 - 8;
    do
    {
      if (a1[11] <= v4 - 2)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      WeakRetained = objc_loadWeakRetained((a1[13] + v5));
      if (WeakRetained)
      {
        v7 = WeakRetained;
        v8 = re::ecs2::EntityComponentCollection::get((WeakRetained + 40), re::ecs2::ComponentImpl<re::ecs2::HingeJointComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v8 || (v9 = v8, re::ecs2::EntityHandle::resolve((v8 + 32), (v7 - 8)) != v2) && re::ecs2::EntityHandle::resolve((v9 + 56), (v7 - 8)) != v2)
        {
          re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::removeAt((a1 + 9), v4 - 2);
        }
      }

      else
      {
        re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::removeAt((a1 + 9), v4 - 2);
      }

      --v4;
      v5 -= 8;
    }

    while (v4 > 1);
  }
}

void *re::ecs2::allocInfo_HingeJointComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_177, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_177))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1578, "HingeJointComponent");
    __cxa_guard_release(&_MergedGlobals_177);
  }

  return &unk_1EE1A1578;
}

void re::ecs2::initInfo_HingeJointComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v28[0] = 0xA5242FCC04AC1AFCLL;
  v28[1] = "HingeJointComponent";
  if (v28[0])
  {
    if (v28[0])
    {
    }
  }

  *(this + 2) = v29;
  if ((atomic_load_explicit(&qword_1EE1A1540, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A1540);
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
      qword_1EE1A1548 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::ecs2::introspect_EntityHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "bodyA";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A1550 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::ecs2::introspect_EntityHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "bodyB";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A1558 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::introspect_PoseF(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "localAnchorPoseA";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x5000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A1560 = v19;
      v20 = re::introspectionAllocator(v19);
      v21 = re::introspect_PoseF(1);
      v22 = (*(*v20 + 32))(v20, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "localAnchorPoseB";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x7000000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1A1568 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_BOOL(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "collisionsEnabled";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x9000000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1A1570 = v26;
      __cxa_guard_release(&qword_1EE1A1540);
    }
  }

  *(this + 2) = 0xB000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A1548;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::HingeJointComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::HingeJointComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::HingeJointComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::HingeJointComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219HingeJointComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v27 = v29;
}

void *re::internal::defaultDestruct<re::ecs2::HingeJointComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_destroyWeak((a3 + 160));
  *(a3 + 160) = 0;
  re::ecs2::EntityHandle::reset((a3 + 56));
  objc_destroyWeak((a3 + 56));
  *(a3 + 56) = 0;
  re::ecs2::EntityHandle::reset((a3 + 32));
  objc_destroyWeak((a3 + 32));
  *(a3 + 32) = 0;
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::HingeJointComponent>(uint64_t a1)
{
  objc_destroyWeak((a1 + 160));
  *(a1 + 160) = 0;
  re::ecs2::EntityHandle::reset((a1 + 56));
  objc_destroyWeak((a1 + 56));
  *(a1 + 56) = 0;
  re::ecs2::EntityHandle::reset((a1 + 32));
  objc_destroyWeak((a1 + 32));
  *(a1 + 32) = 0;
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void re::ecs2::ConstraintComponentHelper<re::ecs2::HingeJointComponent>::registerConstraint(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = re::ecs2::EntityComponentCollection::getOrAdd((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::ConstraintListComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (a2)
    {
      v4 = (a2 + 8);
    }

    else
    {
      v4 = 0;
    }

    objc_initWeak(&location, v4);
    v5 = v3[11];
    if (v5)
    {
      v6 = 8 * v5;
      v7 = v3[13];
      while (*v7 != location)
      {
        ++v7;
        v6 -= 8;
        if (!v6)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      v7 = v3[13];
    }

    if (v7 == (v3[13] + 8 * v5))
    {
LABEL_12:
      re::DynamicArray<re::ArcWeakPtr<re::ecs2::Entity>>::add((v3 + 9), &location);
    }

    objc_destroyWeak(&location);
  }
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::HingeJointComponent>(uint64_t a1)
{
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 160) = 0u;
  v2 = (a1 + 160);
  *(a1 + 32) = 0u;
  v3 = (a1 + 32);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v4 + 16) = 0;
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CD7EB8;
  objc_initWeak(v3, 0);
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  re::ecs2::EntityHandle::reset(v3);
  objc_initWeak((a1 + 56), 0);
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  re::ecs2::EntityHandle::reset((a1 + 56));
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = 0x3F80000000000000;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0x3F80000000000000;
  *(a1 + 144) = 1;
  *(a1 + 152) = 0;
  objc_initWeak(v2, 0);
  return a1;
}

void re::ecs2::HingeJointComponent::~HingeJointComponent(id *this)
{
  objc_destroyWeak(this + 20);
  this[20] = 0;
  re::ecs2::EntityHandle::reset((this + 7));
  objc_destroyWeak(this + 7);
  this[7] = 0;
  re::ecs2::EntityHandle::reset((this + 4));
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  objc_destroyWeak(this + 20);
  this[20] = 0;
  re::ecs2::EntityHandle::reset((this + 7));
  objc_destroyWeak(this + 7);
  this[7] = 0;
  re::ecs2::EntityHandle::reset((this + 4));
  objc_destroyWeak(this + 4);
  this[4] = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs219HingeJointComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *re::ecs2::syncPolicy::denyAll(re::ecs2::syncPolicy *this)
{
  {
    re::ecs2::syncPolicy::denyAll(void)::denyAll = 0x300000001;
  }

  return &re::ecs2::syncPolicy::denyAll(void)::denyAll;
}

uint64_t *re::ecs2::syncPolicy::allowAll(re::ecs2::syncPolicy *this)
{
  {
    re::ecs2::syncPolicy::allowAll(void)::allowAll = 0x300000000;
  }

  return &re::ecs2::syncPolicy::allowAll(void)::allowAll;
}

re::ecs2::SyncAccessControl *re::ecs2::SyncAccessControl::SyncAccessControl(re::ecs2::SyncAccessControl *this, const re::ecs2::SyncAccessControl *a2)
{
  *this = *a2;
  v4 = *(a2 + 3);
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a2 + 3);
  }

  *(this + 2) = v5;
  *(this + 3) = v4;
  if (v4 >= 4)
  {
    v6 = re::globalAllocators(this);
    v8 = *(this + 2);
    if (*(this + 2))
    {
      if ((v8 & 0x80000000) != 0)
      {
        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 8, v8);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v9 = (*(*v6[2] + 32))(v6[2], 8 * v8 + 23, 0);
      v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v10 - 2) = v8;
      *(v10 - 1) = v9;
      bzero(v10, 8 * v8);
      v5 = *(this + 2);
    }

    else
    {
      v5 = 0;
      v10 = 0;
    }

    *(this + 1) = v10;
  }

  v13 = *(a2 + 1);
  v12 = a2 + 8;
  v11 = v13;
  v14 = *(v12 - 2);
  v15 = *(v12 - 1);
  v16 = &v12[8 * v15];
  v17 = &v13[8 * v15];
  if (v14 >= 4)
  {
    v18 = v11;
  }

  else
  {
    v18 = v12;
  }

  if (v14 >= 4)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  v20 = (this + 8);
  if (v5 >= 4)
  {
    v20 = *v20;
  }

  if (v19 != v18)
  {
    memmove(v20, v18, v19 - v18);
  }

  return this;
}

void re::ecs2::SyncAccessControl::~SyncAccessControl(re::ecs2::SyncAccessControl *this)
{
  if (*(this + 2) >= 4)
  {
    v2 = re::globalAllocators(this);
    v3 = *(this + 1);
    if (v3)
    {
      (*(*v2[2] + 40))(v2[2], *(v3 - 8));
    }

    *(this + 1) = 0;
  }
}

__int16 *re::ecs2::SyncAccessControl::addEntry(__int16 *this, uint64_t a2, int a3)
{
  v4 = this;
  v5 = this[2];
  v6 = (this + 4);
  v7 = (this + 4);
  if (v5 >= 4)
  {
    v7 = *v6;
  }

  if (*this == a3)
  {

    return re::ecs2::SyncAccessControl::removeEntry(this, a2);
  }

  else
  {
    v8 = this[3];
    v9 = v7;
    if (this[3])
    {
      v10 = 8 * v8;
      v9 = v7;
      while (*v9 != a2)
      {
        v9 += 8;
        v10 -= 8;
        if (!v10)
        {
          v9 = &v7[8 * v8];
          break;
        }
      }
    }

    if (v9 - v7 == 8 * v8)
    {
      if (v8 >= v5)
      {
        v11 = this[2];
        v12 = 2 * this[2];
        v13 = re::globalAllocators(this);
        if (v11)
        {
          if (v11 < 0)
          {
            re::internal::assertLog(6, v14, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 8, v12);
            this = _os_crash();
            __break(1u);
            return this;
          }

          v15 = (*(*v13[2] + 32))(v13[2], 8 * v12 + 23, 0);
          v16 = ((v15 + 23) & 0xFFFFFFFFFFFFFFF8);
          *(v16 - 2) = v12;
          *(v16 - 1) = v15;
          bzero(v16, 8 * v12);
        }

        else
        {
          v16 = 0;
        }

        v17 = v4[3];
        if (v17 >= 1)
        {
          v18 = v16;
          v19 = v4[3];
          do
          {
            v20 = *v7;
            v7 += 8;
            *v18++ = v20;
            --v19;
          }

          while (v19);
        }

        v4[3] = v17 + 1;
        v16[v17] = a2;
        if (v4[2] > 3)
        {
          v21 = re::globalAllocators(v13);
          if (*v6)
          {
            (*(*v21[2] + 40))(v21[2], *(*v6 - 8));
          }
        }

        v4[2] = v12;
        *(v4 + 1) = v16;
      }

      else
      {
        if (v5 >= 4)
        {
          v6 = *v6;
        }

        this[3] = v8 + 1;
        *&v6[8 * v8] = a2;
      }

      return re::ecs2::SyncAccessControl::normalize(v4);
    }
  }

  return this;
}

uint64_t re::ecs2::SyncAccessControl::removeEntry(__int16 *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = (a1 + 4);
  v4 = (a1 + 4);
  if (v2 >= 4)
  {
    v4 = *v3;
  }

  v5 = a1[3];
  if (a1[3])
  {
    v6 = 8 * v5;
    v7 = &v4[v5];
    while (*v4 != a2)
    {
      ++v4;
      v6 -= 8;
      if (!v6)
      {
        v4 = v7;
        break;
      }
    }
  }

  if (v2 > 3)
  {
    v3 = *v3;
  }

  v8 = &v3[v5];
  if (v4 == v8)
  {
    return 0;
  }

  v9 = *v4;
  *v4 = *(v8 - 1);
  *(v8 - 1) = v9;
  a1[3] = v5 - 1;
  re::ecs2::SyncAccessControl::normalize(a1);
  return 1;
}

unint64_t re::ecs2::SyncAccessControl::normalize(re::ecs2::SyncAccessControl *this)
{
  if (*(this + 2) > 3)
  {
    v4 = *(this + 1);
  }

  else
  {
    v4 = (this + 8);
  }

  v5 = &v4[*(this + 3)];
  *&v9[1] = v1;
  v10 = v2;
  v6 = 126 - 2 * __clz(v5 - v4);
  if (v5 == v4)
  {
    v7 = 0;
  }

  else
  {
    v7 = v6;
  }

  return std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::ecs2::SyncAccessControlEntry *,false>(v4, v5, v9, v7, 1);
}

uint64_t re::ecs2::SyncAccessControl::isAllowed(re::ecs2::SyncAccessControl *this, uint64_t a2)
{
  v2 = *(this + 2);
  v3 = (this + 8);
  if (v2 > 3)
  {
    v6 = *(this + 1);
    v4 = *(this + 3);
    v5 = &v6[v4];
  }

  else
  {
    v4 = *(this + 3);
    v5 = &v3[v4];
    v6 = (this + 8);
  }

  if (v6 != v5)
  {
    while (*v6 != a2)
    {
      if (++v6 == v5)
      {
        v6 = v5;
        break;
      }
    }
  }

  if (v2 > 3)
  {
    v3 = *v3;
  }

  return (v6 == &v3[v4]) ^ (*this != 0);
}

void re::ecs2::SyncAccessControl::resolve(re::ecs2::SyncAccessControl *this@<X0>, const re::ecs2::SyncAccessControl *a2@<X1>, re::ecs2::SyncAccessControl *a3@<X8>)
{
  if (this == a2 || (!*a2 ? (v6 = *(a2 + 3) == 0) : (v6 = 0), v6))
  {
    v8 = a3;
    a2 = this;
  }

  else
  {
    if (*this)
    {
      v7 = 0;
    }

    else
    {
      v7 = *(this + 3) == 0;
    }

    if (!v7)
    {
      re::ecs2::SyncAccessControl::SyncAccessControl(v9, a2);
      re::ecs2::SyncAccessControl::intersect(v9, this);
      re::ecs2::SyncAccessControl::SyncAccessControl(a3, v9);
      re::ecs2::SyncAccessControl::~SyncAccessControl(v9);
      return;
    }

    v8 = a3;
  }

  re::ecs2::SyncAccessControl::SyncAccessControl(v8, a2);
}

re::ecs2::SyncAccessControl *re::ecs2::SyncAccessControl::intersect(re::ecs2::SyncAccessControl *this, const re::ecs2::SyncAccessControl *a2)
{
  v3 = this;
  if (!*this && !*(this + 3))
  {
    this = re::ecs2::SyncAccessControl::operator=(this, a2);
  }

  v4 = *a2;
  v5 = *(a2 + 3);
  if (*a2)
  {
    v6 = 0;
  }

  else
  {
    v6 = v5 == 0;
  }

  if (v6)
  {
    return v3;
  }

  v7 = *(v3 + 2);
  v8 = (v3 + 8);
  if (v7 > 3)
  {
    v11 = *(v3 + 1);
    v9 = *(v3 + 3);
    v10 = &v11[8 * *(v3 + 3)];
  }

  else
  {
    v9 = *(v3 + 3);
    v10 = &v8[*(v3 + 3)];
    v11 = v3 + 8;
  }

  if (*(a2 + 2) >= 4)
  {
    v12 = *(a2 + 1);
  }

  else
  {
    v12 = a2 + 8;
  }

  if (*v3 != v4)
  {
    if (*v3)
    {
      if (*(a2 + 3))
      {
        v24 = 0;
        v25 = 0;
        do
        {
          v26 = *(v3 + 3);
          if (v25 >= v26)
          {
            break;
          }

          if (*(v3 + 2) > 3)
          {
            v29 = *v8;
            v27 = *&v12[8 * v24];
            v28 = *&(*v8)[8 * v25];
          }

          else
          {
            v27 = *&v12[8 * v24];
            v28 = v8[v25];
            v29 = v3 + 8;
          }

          if (v27 == v28)
          {
            *(v3 + 3) = v26 - 1;
            memmove(&v29[8 * v25], &v29[8 * v25 + 8], 8 * ((v26 - 1) - v25));
            ++v24;
            LOWORD(v5) = *(a2 + 3);
          }

          else if (v27 < v28)
          {
            ++v24;
          }

          else
          {
            ++v25;
          }
        }

        while (v24 < v5);
      }

      return v3;
    }

    *v3 = v4;
    v52 = 0;
    v53 = 0;
    v54 = 1;
    v36 = &v55;
    v37 = v9;
    v55 = 0;
    v56 = 0;
    if (v9)
    {
      re::DynamicOverflowArray<re::ecs2::SyncAccessControlEntry,3ul>::setCapacity(&v52, v9);
      v38 = v54;
      v54 += 2;
      v6 = (v38 & 1) == 0;
      v39 = 3;
      if (v6)
      {
        v39 = v55;
      }

      if (v39 < v9)
      {
        re::DynamicOverflowArray<re::ecs2::SyncAccessControlEntry,3ul>::setCapacity(&v52, v9);
      }

      v40 = v53;
      if (v53 < v9)
      {
        do
        {
          if (v54)
          {
            v41 = &v55;
          }

          else
          {
            v41 = v56;
          }

          v41[v40++] = 0;
        }

        while (v9 != v40);
      }

      v42 = v54;
      v54 += 2;
      LOWORD(v7) = *(v3 + 2);
      v43 = (v42 & 1) == 0;
    }

    else
    {
      v43 = 0;
    }

    if (v7 > 3)
    {
      v8 = *(v3 + 1);
    }

    if (8 * *(v3 + 3))
    {
      if (v43)
      {
        v44 = v56;
      }

      else
      {
        v44 = &v55;
      }

      memmove(v44, v8, 8 * *(v3 + 3));
    }

    *(v3 + 3) = 0;
    v45 = *(a2 + 3);
    if (!*(a2 + 3) || !v9)
    {
      v46 = 0;
LABEL_103:
      if (v46 < v45)
      {
        do
        {
          re::ecs2::SyncAccessControl::addEntry(v3, *&v12[8 * v46++], 0);
        }

        while (v46 < *(a2 + 3));
      }

      if (v52 != 0 && v43)
      {
        (*(*v52 + 40))();
      }

      return v3;
    }

    v46 = 0;
    v47 = 0;
    v48 = *(a2 + 3);
    if (v43)
    {
      v36 = v56;
    }

    while (1)
    {
      v49 = *&v12[8 * v46];
      v50 = v36[v47];
      if (v49 == v50)
      {
        ++v46;
      }

      else if (v49 < v50)
      {
        re::ecs2::SyncAccessControl::addEntry(v3, v49, 0);
        ++v46;
        v48 = *(a2 + 3);
        goto LABEL_99;
      }

      ++v47;
LABEL_99:
      v45 = v48;
      if (v46 >= v48 || v47 >= v37)
      {
        goto LABEL_103;
      }
    }
  }

  v13 = (v10 - v11) >> 3;
  if (*(a2 + 3))
  {
    v14 = v10 == v11;
  }

  else
  {
    v14 = 1;
  }

  v15 = !v14;
  if (v4)
  {
    if (v15)
    {
      v16 = 0;
      v17 = 0;
      do
      {
        v18 = *(v3 + 2);
        v19 = v3 + 8;
        if (v18 >= 4)
        {
          v19 = *v8;
        }

        v20 = *&v12[8 * v16];
        v21 = *&v19[8 * v17];
        if (v20 == v21)
        {
          ++v16;
          ++v17;
        }

        else if (v20 >= v21)
        {
          v22 = *(v3 + 3) - 1;
          *(v3 + 3) = v22;
          v23 = v3 + 8;
          if (v18 >= 4)
          {
            v23 = *v8;
          }

          --v13;
          memmove(&v23[8 * v17], &v23[8 * v17 + 8], 8 * (v22 - v17));
          LOWORD(v5) = *(a2 + 3);
        }

        else
        {
          ++v16;
        }
      }

      while (v16 < v5 && v17 < v13);
    }

    else
    {
      v17 = 0;
    }

    if (v17 < v13)
    {
      *(v3 + 3) += v17 - v13;
    }

    return v3;
  }

  if (!v15)
  {
    if (!*(a2 + 3))
    {
      return v3;
    }

    v30 = 0;
    do
    {
LABEL_80:
      re::ecs2::SyncAccessControl::addEntry(v3, *&v12[8 * v30++], 1);
    }

    while (v30 < *(a2 + 3));
    goto LABEL_81;
  }

  v30 = 0;
  v31 = 0;
  v32 = 0;
  do
  {
    v33 = v3 + 8;
    if (*(v3 + 2) >= 4)
    {
      v33 = *v8;
    }

    v34 = *&v12[8 * v30];
    v35 = *&v33[8 * v31];
    if (v34 == v35)
    {
      ++v30;
LABEL_58:
      ++v31;
      continue;
    }

    if (v34 >= v35)
    {
      goto LABEL_58;
    }

    v32 = 1;
    re::ecs2::SyncAccessControl::addEntry(v3, v34, 1);
    ++v30;
    LOWORD(v5) = *(a2 + 3);
  }

  while (v30 < v5 && v31 < v13);
  if (v30 < v5)
  {
    goto LABEL_80;
  }

  if ((v32 & 1) == 0)
  {
    return v3;
  }

LABEL_81:
  re::ecs2::SyncAccessControl::normalize(v3);
  return v3;
}

uint64_t re::ecs2::SyncAccessControl::operator=(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v4 = *(a2 + 6);
  if (v4 <= 3)
  {
    v5 = 3;
  }

  else
  {
    v5 = *(a2 + 6);
  }

  *(a1 + 4) = v5;
  *(a1 + 6) = v4;
  if (v4 >= 4)
  {
    v6 = re::globalAllocators(a1);
    v8 = *(a1 + 6);
    if (*(a1 + 6))
    {
      if ((v8 & 0x80000000) != 0)
      {
        re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in allocateArray. Element size = %zu, count = %zu", "!overflow", "allocateArray", 61, 8, v8);
        result = _os_crash();
        __break(1u);
        return result;
      }

      v9 = (*(*v6[2] + 32))(v6[2], 8 * v8 + 23, 0);
      v10 = ((v9 + 23) & 0xFFFFFFFFFFFFFFF8);
      *(v10 - 2) = v8;
      *(v10 - 1) = v9;
      bzero(v10, 8 * v8);
    }

    else
    {
      v10 = 0;
    }

    *(a1 + 8) = v10;
    v5 = *(a1 + 4);
  }

  v13 = *(a2 + 8);
  v12 = (a2 + 8);
  v11 = v13;
  v14 = *(v12 - 2);
  v15 = *(v12 - 1);
  v16 = &v12[4 * v15];
  v17 = &v13[8 * v15];
  if (v14 >= 4)
  {
    v18 = v11;
  }

  else
  {
    v18 = v12;
  }

  if (v14 >= 4)
  {
    v19 = v17;
  }

  else
  {
    v19 = v16;
  }

  v20 = (a1 + 8);
  if (v5 >= 4)
  {
    v20 = *v20;
  }

  if (v19 != v18)
  {
    memmove(v20, v18, v19 - v18);
  }

  return a1;
}

BOOL re::ecs2::SyncAccessControl::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 6);
  if (v2 != *(a2 + 6))
  {
    return 0;
  }

  v3 = v2;
  v6 = *(a2 + 8);
  v4 = (a2 + 8);
  v5 = v6;
  if (*(v4 - 2) < 4)
  {
    v5 = v4;
  }

  v7 = (a1 + 8);
  if (*(a1 + 4) > 3)
  {
    v7 = *v7;
  }

  v8 = &v7[v3];
  if (v7 == v8)
  {
    return 1;
  }

  v9 = v7 + 1;
  do
  {
    v10 = *v5++;
    result = *(v9 - 1) == v10;
    v12 = *(v9 - 1) != v10 || v9 == v8;
    ++v9;
  }

  while (!v12);
  return result;
}

void re::ecs2::introspect_SyncAccessPolicy(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A1610, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A1618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1618))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A1648, "SyncAccessPolicy", 4, 4, 1, 1);
      qword_1EE1A1648 = &unk_1F5D0C658;
      qword_1EE1A1688 = &re::ecs2::introspect_SyncAccessPolicy(BOOL)::enumTable;
      dword_1EE1A1658 = 9;
      __cxa_guard_release(&qword_1EE1A1618);
    }

    if (_MergedGlobals_178)
    {
      break;
    }

    _MergedGlobals_178 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A1648, a2);
    v33 = 0x1D0F42E6C2A29C22;
    v34 = "SyncAccessPolicy";
    v37 = 208862;
    v38 = "int";
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
      v6 = qword_1EE1A1688;
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
      xmmword_1EE1A1668 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A1610);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Allow";
      qword_1EE1A1638 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Deny";
      qword_1EE1A1640 = v32;
      __cxa_guard_release(&qword_1EE1A1610);
    }
  }
}

void *re::ecs2::allocInfo_SyncAccessControl(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A1630, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A1630))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A1690, "SyncAccessControl");
    __cxa_guard_release(&qword_1EE1A1630);
  }

  return &unk_1EE1A1690;
}

void re::ecs2::initInfo_SyncAccessControl(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x84D919EC3291B0BCLL;
  v10[1] = "SyncAccessControl";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A1628, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A1628);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_SyncAccessPolicy(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "m_defaultPolicy";
      *(v8 + 16) = &qword_1EE1A1648;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A1620 = v8;
      __cxa_guard_release(&qword_1EE1A1628);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A1620;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SyncAccessControl>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SyncAccessControl>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SyncAccessControl>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SyncAccessControl>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::ecs2::SyncAccessControlEntry *,false>(unint64_t result, unint64_t *a2, uint64_t a3, uint64_t a4, char a5)
{
  v9 = result;
LABEL_2:
  v10 = v9;
  while (1)
  {
    v9 = v10;
    v11 = a2 - v10;
    if (v11 <= 2)
    {
      if (v11 < 2)
      {
        return result;
      }

      if (v11 == 2)
      {
        v72 = *(a2 - 1);
        v73 = *v10;
        if (v72 < *v10)
        {
          *v10 = v72;
          *(a2 - 1) = v73;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v11 == 3)
    {
      break;
    }

    if (v11 == 4)
    {
      v77 = v10 + 1;
      v78 = v10[1];
      v79 = v10 + 2;
      v80 = v10[2];
      v81 = *v10;
      if (v78 >= *v10)
      {
        if (v80 >= v78)
        {
          goto LABEL_187;
        }

        *v77 = v80;
        *v79 = v78;
        v82 = v10;
        v83 = v10 + 1;
        result = v78;
        if (v80 < v81)
        {
          goto LABEL_180;
        }
      }

      else
      {
        v82 = v10;
        v83 = v10 + 2;
        result = *v10;
        if (v80 >= v78)
        {
          *v10 = v78;
          v10[1] = v81;
          v82 = v10 + 1;
          v83 = v10 + 2;
          result = v81;
          if (v80 >= v81)
          {
LABEL_187:
            v78 = v80;
            goto LABEL_188;
          }
        }

LABEL_180:
        *v82 = v80;
        *v83 = v81;
        v78 = result;
      }

LABEL_188:
      v125 = *(a2 - 1);
      if (v125 < v78)
      {
        *v79 = v125;
        *(a2 - 1) = v78;
        v126 = *v79;
        v127 = *v77;
        if (v126 < v127)
        {
          v10[1] = v126;
          v10[2] = v127;
          v128 = *v10;
          if (v126 < *v10)
          {
            *v10 = v126;
            v10[1] = v128;
          }
        }
      }

      return result;
    }

    if (v11 == 5)
    {
      v63 = v10 + 1;
      v64 = v10[1];
      v66 = v10 + 2;
      v65 = v10[2];
      v67 = *v10;
      if (v64 >= *v10)
      {
        if (v65 >= v64)
        {
          v70 = *v10;
          v67 = v10[1];
        }

        else
        {
          v68 = v10;
          v69 = v10 + 1;
          *v63 = v65;
          *v66 = v64;
          v70 = v65;
          result = v67;
          v71 = v64;
          if (v65 < v67)
          {
            goto LABEL_193;
          }

          v70 = v67;
          v67 = v65;
          v65 = v64;
        }
      }

      else
      {
        if (v65 < v64)
        {
          v68 = v10;
          v69 = v10 + 2;
          v70 = v10[2];
          result = v10[1];
          v71 = *v10;
          goto LABEL_193;
        }

        v68 = v10 + 1;
        v69 = v10 + 2;
        *v10 = v64;
        v10[1] = v67;
        v70 = v64;
        result = v65;
        v71 = v67;
        if (v65 >= v67)
        {
          v70 = v64;
        }

        else
        {
LABEL_193:
          *v68 = v65;
          *v69 = v67;
          v67 = result;
          v65 = v71;
        }
      }

      v130 = v10[3];
      if (v130 >= v65)
      {
        v65 = v10[3];
      }

      else
      {
        v10[2] = v130;
        v10[3] = v65;
        if (v130 < v67)
        {
          *v63 = v130;
          *v66 = v67;
          if (v130 < v70)
          {
            *v10 = v130;
            v10[1] = v70;
          }
        }
      }

      v131 = *(a2 - 1);
      if (v131 >= v65)
      {
        return result;
      }

      v10[3] = v131;
      *(a2 - 1) = v65;
      v132 = v10[2];
      v122 = v10[3];
      if (v122 >= v132)
      {
        return result;
      }

      v10[2] = v122;
      v10[3] = v132;
      v133 = v10[1];
      if (v122 >= v133)
      {
        return result;
      }

      v10[1] = v122;
      v10[2] = v133;
LABEL_208:
      v134 = *v10;
      if (v122 < *v10)
      {
        *v10 = v122;
        v10[1] = v134;
      }

      return result;
    }

LABEL_10:
    if (v11 <= 23)
    {
      v84 = v10 + 1;
      v86 = v10 == a2 || v84 == a2;
      if (a5)
      {
        if (!v86)
        {
          v87 = 8;
          v88 = v10;
          do
          {
            v90 = *v88;
            v89 = v88[1];
            v88 = v84;
            if (v89 < v90)
            {
              v91 = v87;
              while (1)
              {
                *(v10 + v91) = v90;
                v92 = v91 - 8;
                if (v91 == 8)
                {
                  break;
                }

                v90 = *(v10 + v91 - 16);
                v91 -= 8;
                if (v89 >= v90)
                {
                  v93 = (v10 + v92);
                  goto LABEL_129;
                }
              }

              v93 = v10;
LABEL_129:
              *v93 = v89;
            }

            v84 = v88 + 1;
            v87 += 8;
          }

          while (v88 + 1 != a2);
        }
      }

      else if (!v86)
      {
        do
        {
          v124 = *v9;
          v123 = v9[1];
          v9 = v84;
          if (v123 < v124)
          {
            do
            {
              *v84 = v124;
              v124 = *(v84 - 2);
              --v84;
            }

            while (v123 < v124);
            *v84 = v123;
          }

          v84 = v9 + 1;
        }

        while (v9 + 1 != a2);
      }

      return result;
    }

    if (!a4)
    {
      if (v10 != a2)
      {
        v94 = (v11 - 2) >> 1;
        v95 = v94;
        do
        {
          v96 = v95;
          if (v94 >= v95)
          {
            v97 = (2 * v95) | 1;
            v98 = &v10[v97];
            if (2 * v96 + 2 >= v11)
            {
              v99 = *v98;
            }

            else
            {
              v99 = v98[1];
              v100 = *v98 >= v99;
              if (*v98 > v99)
              {
                v99 = *v98;
              }

              if (!v100)
              {
                ++v98;
                v97 = 2 * v96 + 2;
              }
            }

            v101 = &v10[v96];
            v102 = *v101;
            if (v99 >= *v101)
            {
              do
              {
                *v101 = v99;
                v101 = v98;
                if (v94 < v97)
                {
                  break;
                }

                v103 = (2 * v97) | 1;
                v98 = &v10[v103];
                v97 = 2 * v97 + 2;
                if (v97 >= v11)
                {
                  v99 = *v98;
                  v97 = v103;
                }

                else
                {
                  v99 = *v98;
                  result = v98[1];
                  if (*v98 <= result)
                  {
                    v99 = v98[1];
                  }

                  if (*v98 >= result)
                  {
                    v97 = v103;
                  }

                  else
                  {
                    ++v98;
                  }
                }
              }

              while (v99 >= v102);
              *v101 = v102;
            }
          }

          v95 = v96 - 1;
        }

        while (v96);
        do
        {
          v104 = 0;
          v105 = *v10;
          v106 = v10;
          do
          {
            v107 = &v106[v104];
            v108 = v107 + 1;
            v109 = (2 * v104) | 1;
            v104 = 2 * v104 + 2;
            if (v104 >= v11)
            {
              v110 = *v108;
              v104 = v109;
            }

            else
            {
              v112 = v107[2];
              v111 = v107 + 2;
              v110 = v112;
              v113 = *(v111 - 1);
              v114 = v113 >= v112;
              if (v113 > v112)
              {
                v110 = *(v111 - 1);
              }

              if (v114)
              {
                v104 = v109;
              }

              else
              {
                v108 = v111;
              }
            }

            *v106 = v110;
            v106 = v108;
          }

          while (v104 <= ((v11 - 2) >> 1));
          if (v108 == --a2)
          {
            *v108 = v105;
          }

          else
          {
            *v108 = *a2;
            *a2 = v105;
            v115 = (v108 - v10 + 8) >> 3;
            v116 = v115 < 2;
            v117 = v115 - 2;
            if (!v116)
            {
              v118 = v117 >> 1;
              v119 = &v10[v118];
              v120 = *v119;
              v121 = *v108;
              if (*v119 < *v108)
              {
                do
                {
                  *v108 = v120;
                  v108 = v119;
                  if (!v118)
                  {
                    break;
                  }

                  v118 = (v118 - 1) >> 1;
                  v119 = &v10[v118];
                  v120 = *v119;
                }

                while (*v119 < v121);
                *v108 = v121;
              }
            }
          }

          v116 = v11-- <= 2;
        }

        while (!v116);
      }

      return result;
    }

    v12 = &v10[v11 >> 1];
    v13 = v12;
    v14 = *(a2 - 1);
    if (v11 >= 0x81)
    {
      v15 = *v12;
      v16 = *v10;
      if (*v12 >= *v10)
      {
        if (v14 < v15)
        {
          *v12 = v14;
          *(a2 - 1) = v15;
          v19 = *v10;
          if (*v12 < *v10)
          {
            *v10 = *v12;
            *v12 = v19;
          }
        }
      }

      else
      {
        if (v14 < v15)
        {
          *v10 = v14;
          goto LABEL_27;
        }

        *v10 = v15;
        *v12 = v16;
        v21 = *(a2 - 1);
        if (v21 < v16)
        {
          *v12 = v21;
LABEL_27:
          *(a2 - 1) = v16;
        }
      }

      v22 = v12 - 1;
      v23 = *(v12 - 1);
      v24 = v10[1];
      v25 = *(a2 - 2);
      if (v23 >= v24)
      {
        if (v25 < v23)
        {
          *v22 = v25;
          *(a2 - 2) = v23;
          v26 = v10[1];
          if (*v22 < v26)
          {
            v10[1] = *v22;
            *v22 = v26;
          }
        }
      }

      else
      {
        if (v25 < v23)
        {
          v10[1] = v25;
          goto LABEL_39;
        }

        v10[1] = v23;
        *v22 = v24;
        v28 = *(a2 - 2);
        if (v28 < v24)
        {
          *v22 = v28;
LABEL_39:
          *(a2 - 2) = v24;
        }
      }

      v31 = v12[1];
      v29 = v12 + 1;
      v30 = v31;
      v32 = v10[2];
      v33 = *(a2 - 3);
      if (v31 >= v32)
      {
        if (v33 < v30)
        {
          *v29 = v33;
          *(a2 - 3) = v30;
          v34 = v10[2];
          if (*v29 < v34)
          {
            v10[2] = *v29;
            *v29 = v34;
          }
        }
      }

      else
      {
        if (v33 < v30)
        {
          v10[2] = v33;
          goto LABEL_48;
        }

        v10[2] = v30;
        *v29 = v32;
        v35 = *(a2 - 3);
        if (v35 < v32)
        {
          *v29 = v35;
LABEL_48:
          *(a2 - 3) = v32;
        }
      }

      v36 = *v13;
      v37 = *v22;
      v38 = *v29;
      if (*v13 >= *v22)
      {
        if (v38 >= v36)
        {
          goto LABEL_56;
        }

        *v13 = v38;
        *v29 = v36;
        v29 = v13;
        v36 = v37;
        if (v38 >= v37)
        {
          v36 = v38;
          goto LABEL_56;
        }
      }

      else if (v38 >= v36)
      {
        *v22 = v36;
        *v13 = v37;
        v22 = v13;
        v36 = v38;
        if (v38 >= v37)
        {
          v36 = v37;
LABEL_56:
          v39 = *v10;
          *v10 = v36;
          *v13 = v39;
          goto LABEL_57;
        }
      }

      *v22 = v38;
      *v29 = v37;
      goto LABEL_56;
    }

    v17 = *v10;
    v18 = *v13;
    if (*v10 >= *v13)
    {
      if (v14 < v17)
      {
        *v10 = v14;
        *(a2 - 1) = v17;
        v20 = *v13;
        if (*v10 < *v13)
        {
          *v13 = *v10;
          *v10 = v20;
        }
      }

      goto LABEL_57;
    }

    if (v14 >= v17)
    {
      *v13 = v17;
      *v10 = v18;
      v27 = *(a2 - 1);
      if (v27 >= v18)
      {
        goto LABEL_57;
      }

      *v10 = v27;
    }

    else
    {
      *v13 = v14;
    }

    *(a2 - 1) = v18;
LABEL_57:
    --a4;
    v40 = *v10;
    if ((a5 & 1) != 0 || *(v10 - 1) < v40)
    {
      v41 = 0;
      do
      {
        v42 = v10[++v41];
      }

      while (v42 < v40);
      v43 = &v10[v41];
      v44 = a2;
      if (v41 == 1)
      {
        v44 = a2;
        do
        {
          if (v43 >= v44)
          {
            break;
          }

          v46 = *--v44;
        }

        while (v46 >= v40);
      }

      else
      {
        do
        {
          v45 = *--v44;
        }

        while (v45 >= v40);
      }

      if (v43 >= v44)
      {
        v52 = v43 - 1;
      }

      else
      {
        v47 = *v44;
        v48 = &v10[v41];
        v49 = v44;
        do
        {
          *v48 = v47;
          *v49 = v42;
          do
          {
            v50 = v48[1];
            ++v48;
            v42 = v50;
          }

          while (v50 < v40);
          do
          {
            v51 = *--v49;
            v47 = v51;
          }

          while (v51 >= v40);
        }

        while (v48 < v49);
        v52 = v48 - 1;
      }

      if (v52 != v10)
      {
        *v10 = *v52;
      }

      *v52 = v40;
      if (v43 < v44)
      {
        goto LABEL_80;
      }

      v53 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::ecs2::SyncAccessControlEntry *>(v10, v52);
      v10 = v52 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::ecs2::SyncAccessControlEntry *>(v52 + 1, a2);
      if (result)
      {
        a2 = v52;
        if (!v53)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v53)
      {
LABEL_80:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,re::ecs2::SyncAccessControlEntry *,false>(v9, v52, a3, a4, a5 & 1);
        a5 = 0;
        v10 = v52 + 1;
      }
    }

    else
    {
      if (v40 >= *(a2 - 1))
      {
        v55 = v10 + 1;
        do
        {
          v10 = v55;
          if (v55 >= a2)
          {
            break;
          }

          ++v55;
        }

        while (v40 >= *v10);
      }

      else
      {
        do
        {
          v54 = v10[1];
          ++v10;
        }

        while (v40 >= v54);
      }

      v56 = a2;
      if (v10 < a2)
      {
        v56 = a2;
        do
        {
          v57 = *--v56;
        }

        while (v40 < v57);
      }

      if (v10 < v56)
      {
        v58 = *v10;
        v59 = *v56;
        do
        {
          *v10 = v59;
          *v56 = v58;
          do
          {
            v60 = v10[1];
            ++v10;
            v58 = v60;
          }

          while (v40 >= v60);
          do
          {
            v61 = *--v56;
            v59 = v61;
          }

          while (v40 < v61);
        }

        while (v10 < v56);
      }

      v62 = v10 - 1;
      if (v10 - 1 != v9)
      {
        *v9 = *v62;
      }

      a5 = 0;
      *v62 = v40;
    }
  }

  v74 = *v10;
  v75 = v10[1];
  v76 = *(a2 - 1);
  if (v75 >= *v10)
  {
    if (v76 >= v75)
    {
      return result;
    }

    v10[1] = v76;
    *(a2 - 1) = v75;
    v122 = v10[1];
    goto LABEL_208;
  }

  if (v76 >= v75)
  {
    *v10 = v75;
    v10[1] = v74;
    v129 = *(a2 - 1);
    if (v129 >= v74)
    {
      return result;
    }

    v10[1] = v129;
  }

  else
  {
    *v10 = v76;
  }

  *(a2 - 1) = v74;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,re::ecs2::SyncAccessControlEntry *>(unint64_t *a1, unint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v16 = *a1;
      v17 = a1[1];
      v18 = *(a2 - 1);
      if (v17 < *a1)
      {
        if (v18 >= v17)
        {
          *a1 = v17;
          a1[1] = v16;
          v46 = *(a2 - 1);
          if (v46 >= v16)
          {
            return 1;
          }

          a1[1] = v46;
        }

        else
        {
          *a1 = v18;
        }

        *(a2 - 1) = v16;
        return 1;
      }

      if (v18 >= v17)
      {
        return 1;
      }

      a1[1] = v18;
      *(a2 - 1) = v17;
      v33 = a1[1];
LABEL_68:
      v51 = *a1;
      if (v33 < *a1)
      {
        *a1 = v33;
        a1[1] = v51;
      }

      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_16;
      }

      v4 = a1 + 1;
      v5 = a1[1];
      v7 = a1 + 2;
      v6 = a1[2];
      v8 = *a1;
      if (v5 >= *a1)
      {
        if (v6 >= v5)
        {
          v11 = *a1;
          v8 = a1[1];
          goto LABEL_59;
        }

        v9 = a1;
        v10 = a1 + 1;
        *v4 = v6;
        *v7 = v5;
        v11 = v6;
        v12 = v8;
        v13 = v5;
        if (v6 >= v8)
        {
          v11 = v8;
          v8 = v6;
          v6 = v5;
LABEL_59:
          v47 = a1[3];
          if (v47 >= v6)
          {
            v6 = a1[3];
          }

          else
          {
            a1[2] = v47;
            a1[3] = v6;
            if (v47 < v8)
            {
              *v4 = v47;
              *v7 = v8;
              if (v47 < v11)
              {
                *a1 = v47;
                a1[1] = v11;
              }
            }
          }

          v48 = *(a2 - 1);
          if (v48 >= v6)
          {
            return 1;
          }

          a1[3] = v48;
          *(a2 - 1) = v6;
          v49 = a1[2];
          v33 = a1[3];
          if (v33 >= v49)
          {
            return 1;
          }

          a1[2] = v33;
          a1[3] = v49;
          v50 = a1[1];
          if (v33 >= v50)
          {
            return 1;
          }

          a1[1] = v33;
          a1[2] = v50;
          goto LABEL_68;
        }
      }

      else if (v6 >= v5)
      {
        v9 = a1 + 1;
        v10 = a1 + 2;
        *a1 = v5;
        a1[1] = v8;
        v11 = v5;
        v12 = v6;
        v13 = v8;
        if (v6 >= v8)
        {
          v11 = v5;
          goto LABEL_59;
        }
      }

      else
      {
        v9 = a1;
        v10 = a1 + 2;
        v11 = a1[2];
        v12 = a1[1];
        v13 = *a1;
      }

      *v9 = v6;
      *v10 = v8;
      v8 = v12;
      v6 = v13;
      goto LABEL_59;
    }

    v25 = a1 + 1;
    v26 = a1[1];
    v27 = a1 + 2;
    v28 = a1[2];
    v29 = *a1;
    if (v26 >= *a1)
    {
      if (v28 >= v26)
      {
LABEL_46:
        v26 = v28;
        goto LABEL_47;
      }

      *v25 = v28;
      *v27 = v26;
      v30 = a1;
      v31 = a1 + 1;
      v32 = v26;
      if (v28 >= v29)
      {
LABEL_47:
        v42 = *(a2 - 1);
        if (v42 < v26)
        {
          *v27 = v42;
          *(a2 - 1) = v26;
          v43 = *v27;
          v44 = *v25;
          if (v43 < v44)
          {
            a1[1] = v43;
            a1[2] = v44;
            v45 = *a1;
            if (v43 < *a1)
            {
              *a1 = v43;
              a1[1] = v45;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v30 = a1;
      v31 = a1 + 2;
      v32 = *a1;
      if (v28 >= v26)
      {
        *a1 = v26;
        a1[1] = v29;
        v30 = a1 + 1;
        v31 = a1 + 2;
        v32 = v29;
        if (v28 >= v29)
        {
          goto LABEL_46;
        }
      }
    }

    *v30 = v28;
    *v31 = v29;
    v26 = v32;
    goto LABEL_47;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v14 = *(a2 - 1);
    v15 = *a1;
    if (v14 < *a1)
    {
      *a1 = v14;
      *(a2 - 1) = v15;
    }

    return 1;
  }

LABEL_16:
  v20 = a1 + 2;
  v19 = a1[2];
  v21 = a1[1];
  v22 = *a1;
  if (v21 >= *a1)
  {
    if (v19 >= v21)
    {
      goto LABEL_29;
    }

    a1[1] = v19;
    *v20 = v21;
    v23 = a1;
    v24 = a1 + 1;
LABEL_27:
    if (v19 >= v22)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

  v23 = a1;
  v24 = a1 + 2;
  if (v19 >= v21)
  {
    *a1 = v21;
    a1[1] = v22;
    v23 = a1 + 1;
    v24 = a1 + 2;
    goto LABEL_27;
  }

LABEL_28:
  *v23 = v19;
  *v24 = v22;
LABEL_29:
  v34 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v35 = 0;
  for (i = 24; ; i += 8)
  {
    v37 = *v34;
    v38 = *v20;
    if (*v34 < v38)
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v38;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v38 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v37 >= v38)
        {
          v41 = (a1 + v40);
          goto LABEL_37;
        }
      }

      v41 = a1;
LABEL_37:
      *v41 = v37;
      if (++v35 == 8)
      {
        break;
      }
    }

    v20 = v34++;
    if (v34 == a2)
    {
      return 1;
    }
  }

  return v34 + 1 == a2;
}

void *re::DynamicOverflowArray<re::ecs2::SyncAccessControlEntry,3ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<re::ecs2::SyncAccessControlEntry,3ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 3;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 3 || (v7 & 1) == 0))
    {
      if (a2 < 4)
      {
        v14 = result + 3;
        v15 = v4[4];
        if (v7)
        {
          v16 = v4 + 3;
        }

        else
        {
          v16 = v4[4];
        }

        memcpy(v14, v16, 8 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
        goto LABEL_4;
      }

      if (a2 >> 61)
      {
        re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicOverflowArray<T, N>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 646, 8, a2);
        _os_crash();
        __break(1u);
      }

      else
      {
        v2 = 8 * a2;
        v10 = (*(*v5 + 32))(*result, 8 * a2, 8);
        if (v10)
        {
          v12 = v10;
          if (v4[2])
          {
            v13 = v4 + 3;
          }

          else
          {
            v13 = v4[4];
          }

          result = memcpy(v10, v13, 8 * v4[1]);
          v17 = *(v4 + 4);
          if ((v17 & 1) == 0)
          {
            result = (*(**v4 + 40))(*v4, v4[4]);
            v17 = *(v4 + 4);
          }

          *(v4 + 4) = v17 & 0xFFFFFFFE;
          v4[3] = a2;
          v4[4] = v12;
          return result;
        }
      }

      re::internal::assertLog(6, v11, "assertion failure: '%s' (%s:line %i) DynamicOverflowArray<T, N> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 650, v2, *(*v4 + 8));
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

void re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::update(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  if (*(a1 + 204))
  {
    v2 = *(a1 + 208);
    if (v2)
    {
      v3 = 0;
      v4 = (*(a1 + 192) + 8);
      while (1)
      {
        v5 = *v4;
        v4 += 6;
        if (v5 < 0)
        {
          break;
        }

        if (v2 == ++v3)
        {
          LODWORD(v3) = *(a1 + 208);
          break;
        }
      }
    }

    else
    {
      LODWORD(v3) = 0;
    }

    while (v3 != v2)
    {
      WeakRetained = objc_loadWeakRetained((*(a1 + 192) + 24 * v3 + 16));
      if (WeakRetained)
      {
        v7 = WeakRetained;

        v8 = v7[3];
        if (v8)
        {
          if ((*(v8 + 304) & 0x80) != 0)
          {
            v9 = 0;
          }

          else
          {
            v9 = v7[3];
          }
        }

        else
        {
          v9 = 0;
        }

        v12[0] = &unk_1F5CD80F8;
        v12[1] = a1;
        v12[2] = v10;
        v13 = 0;
        if ((v13 & 1) == 0)
        {
          (*v12[0])(v12);
          v13 = 1;
        }
      }

      v11 = *(a1 + 208);
      if (v11 <= v3 + 1)
      {
        v11 = v3 + 1;
      }

      while (v11 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(a1 + 192) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_23;
        }
      }

      LODWORD(v3) = v11;
LABEL_23:
      ;
    }

    re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(a1 + 176);
  }
}

uint64_t anonymous namespace::getScopeForEntity<re::ecs2::ShadowScopeComponent>(uint64_t result)
{
  if (result)
  {
    v1 = result;
    while (1)
    {
      result = re::ecs2::EntityComponentCollection::get((v1 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (result)
      {
        break;
      }

      v1 = *(v1 + 32);
      if (!v1 || (*(v1 + 304) & 0x80) != 0)
      {
        return 0;
      }
    }
  }

  return result;
}

void anonymous namespace::forAllDescendants(uint64_t a1, uint64_t a2)
{
  re::StackScratchAllocator::StackScratchAllocator(v15);
  v9[0] = 0;
  v9[1] = 0;
  v10 = 1;
  v12 = 0;
  v13 = 0;
  v11 = 0;
  v14 = 0;
  re::BucketArray<re::ecs2::Entity *,32ul>::init(v9, v15, 1uLL);
  *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v9) = a1;
  while (v13)
  {
    v4 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, v13 - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v9, --v13);
    ++v14;
    v16 = v4;
    if ((*(*a2 + 16))(a2, &v16))
    {
      v5 = *(v4 + 344);
      if (v5)
      {
        v6 = *(v4 + 360);
        v7 = 8 * v5;
        do
        {
          v8 = *v6++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v9) = v8;
          v7 -= 8;
        }

        while (v7);
      }
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v9);
  if (v9[0] && (v10 & 1) == 0)
  {
    (*(*v9[0] + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v15);
}

void re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_10, 4 * v2);
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
          objc_destroyWeak((v6 + 16));
          *(v6 + 16) = 0;
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

re *re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re *result, uint64_t a2)
{
  v34 = *MEMORY[0x1E69E9840];
  v24 = a2;
  v2 = *(a2 + 288);
  if (v2)
  {
    v4 = result;
    v23 = 0;
    memset(v21, 0, sizeof(v21));
    v22 = 0;
    v32 = re::globalAllocators(result)[2];
    v5 = (*(*v32 + 32))(v32, 32, 0);
    *v5 = &unk_1F5CD7F40;
    v5[1] = v4;
    v5[2] = re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentDidAdd;
    v5[3] = 0;
    v33 = v5;
    v20.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v31, re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v20.n128_u64[1] = v6;
    re::DynamicArray<re::RigNodeConstraint>::add(v21, &v20);
    v7 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v31);
    v29 = re::globalAllocators(v7)[2];
    v8 = (*(*v29 + 32))(v29, 32, 0);
    *v8 = &unk_1F5CD7F98;
    v8[1] = v4;
    v8[2] = re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentWillRemove;
    v8[3] = 0;
    v30 = v8;
    v20.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v28, re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v20.n128_u64[1] = v9;
    re::DynamicArray<re::RigNodeConstraint>::add(v21, &v20);
    v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v28);
    v11 = re::globalAllocators(v10)[2];
    v27[2] = a2;
    v27[3] = v11;
    v27[0] = &unk_1F5CD7FF0;
    v27[1] = v4;
    v27[4] = v27;
    v20.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v2, v27, re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v20.n128_u64[1] = v12;
    re::DynamicArray<re::RigNodeConstraint>::add(v21, &v20);
    v13 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v27);
    v14 = v24;
    v15 = re::globalAllocators(v13)[2];
    v26[2] = v14;
    v26[3] = v15;
    v26[0] = &unk_1F5CD8048;
    v26[1] = v4;
    v26[4] = v26;
    v20.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v2, v26, re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v20.n128_u64[1] = v16;
    re::DynamicArray<re::RigNodeConstraint>::add(v21, &v20);
    v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v26);
    v18 = re::globalAllocators(v17)[2];
    v25[2] = v14;
    v25[3] = v18;
    v25[0] = &unk_1F5CD80A0;
    v25[1] = v4;
    v25[4] = v25;
    v20.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v2, v25, 0, 0);
    v20.n128_u64[1] = v19;
    re::DynamicArray<re::RigNodeConstraint>::add(v21, &v20);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v25);
    re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(v4, &v24, v21);
    result = v21[0];
    if (v21[0])
    {
      if (v23)
      {
        return (*(*v21[0] + 40))();
      }
    }
  }

  return result;
}

uint64_t re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentDidAdd(uint64_t a1, uint64_t a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v10[0] = &unk_1F5CD8160;
  v10[1] = a1;
  v10[2] = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v10[3] = a2;
  v11 = 0;
  if ((v11 & 1) == 0)
  {
    (*v10[0])(v10);
    v11 = 1;
  }

  v4 = *(a2 + 32);
  if (v4)
  {
    if ((*(v4 + 304) & 0x80) != 0)
    {
      v5 = 0;
    }

    else
    {
      v5 = *(a2 + 32);
    }
  }

  else
  {
    v5 = 0;
  }

  if (v9)
  {
    v6 = *(a2 + 32);
    if (v6 && (*(v6 + 304) & 0x80) != 0)
    {
      v6 = 0;
    }

    v8 = v6;
    re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(a1 + 48, &v8, &v9);
  }

  return 0;
}

uint64_t re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentWillRemove(void *a1, uint64_t a2)
{
  v32 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(a1 + 14, &v32) == -1)
  {
    return 0;
  }

  v4 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(a1 + 14, &v32);
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::HashSetBase(v29, a1[15] + 56 * v4 + 8);
  v5 = *(a2 + 32);
  if (v5 && (*(v5 + 304) & 0x80) != 0)
  {
    v5 = 0;
  }

  v33 = v5;
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 6, &v33);
  if (v6 == -1)
  {
    v11 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(a1 + 14, &v32);
    if (v11 != -1)
    {
      v12 = a1[15] + 56 * v11;
      v13 = *(v12 + 40);
      if (v13)
      {
        v14 = 0;
        v15 = (*(v12 + 24) + 8);
        while (1)
        {
          v16 = *v15;
          v15 += 6;
          if (v16 < 0)
          {
            break;
          }

          if (v13 == ++v14)
          {
            LODWORD(v14) = *(v12 + 40);
            break;
          }
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      while (v14 != v13)
      {
        v33 = *(*(v12 + 24) + 24 * v14 + 16);
        re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove((a1 + 6), &v33);
        v24 = *(v12 + 40);
        if (v24 <= v14 + 1)
        {
          v24 = v14 + 1;
        }

        while (v24 - 1 != v14)
        {
          LODWORD(v14) = v14 + 1;
          if ((*(*(v12 + 24) + 24 * v14 + 8) & 0x80000000) != 0)
          {
            goto LABEL_41;
          }
        }

        LODWORD(v14) = v24;
LABEL_41:
        ;
      }

      re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::remove((a1 + 14), &v32);
    }

    v17 = v31;
    if (v31)
    {
      goto LABEL_29;
    }
  }

  else
  {
    v7 = v31;
    if (v31)
    {
      v8 = 0;
      v9 = (v30 + 8);
      while (1)
      {
        v10 = *v9;
        v9 += 6;
        if (v10 < 0)
        {
          break;
        }

        if (v31 == ++v8)
        {
          LODWORD(v8) = v31;
          break;
        }
      }
    }

    else
    {
      LODWORD(v8) = 0;
    }

    v17 = v31;
    if (v8 != v31)
    {
      v18 = a1[7] + 16 * v6;
      v19 = v30;
      do
      {
        v33 = *(v19 + 24 * v8 + 16);
        re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace((a1 + 6), &v33, (v18 + 8));
        v17 = v31;
        v19 = v30;
        if (v31 <= v8 + 1)
        {
          v20 = v8 + 1;
        }

        else
        {
          v20 = v31;
        }

        while (v20 - 1 != v8)
        {
          LODWORD(v8) = v8 + 1;
          if ((*(v30 + 24 * v8 + 8) & 0x80000000) != 0)
          {
            goto LABEL_27;
          }
        }

        LODWORD(v8) = v20;
LABEL_27:
        ;
      }

      while (v8 != v7);
    }

    if (v17)
    {
LABEL_29:
      v21 = 0;
      v22 = (v30 + 8);
      while (1)
      {
        v23 = *v22;
        v22 += 6;
        if (v23 < 0)
        {
          goto LABEL_45;
        }

        if (v17 == ++v21)
        {
          LODWORD(v21) = v17;
          goto LABEL_45;
        }
      }
    }
  }

  LODWORD(v21) = 0;
LABEL_45:
  if (v21 != v17)
  {
    v25 = v30;
    do
    {
      v26 = re::ecs2::EntityComponentCollection::get((*(v25 + 24 * v21 + 16) + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v26)
      {
        re::ecs2::Component::enqueueMarkDirty(v26);
      }

      v25 = v30;
      if (v31 <= v21 + 1)
      {
        v27 = v21 + 1;
      }

      else
      {
        v27 = v31;
      }

      while (v27 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(v30 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          goto LABEL_56;
        }
      }

      LODWORD(v21) = v27;
LABEL_56:
      ;
    }

    while (v21 != v17);
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v29);
  return 0;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addInternal<re::ecs2::Scene * const&,re::DynamicArray<RESubscriptionHandle>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }
}

uint64_t re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::unregisterScene(uint64_t result, unint64_t a2)
{
  v16 = a2;
  if (*result)
  {
    v2 = result;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = *(*(result + 8) + 4 * ((v3 ^ (v3 >> 31)) % *(result + 24)));
    if (v4 != 0x7FFFFFFF)
    {
      v5 = *(result + 16);
      while (*(v5 + (v4 << 6) + 8) != a2)
      {
        v4 = *(v5 + (v4 << 6)) & 0x7FFFFFFF;
        if (v4 == 0x7FFFFFFF)
        {
          return result;
        }
      }

      v6 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(result, &v16);
      v7 = *v6;
      *v6 = 0;
      *(v6 + 8) = 0;
      v8 = *(v6 + 16);
      *(v6 + 16) = 0;
      v9 = *(v6 + 32);
      *(v6 + 32) = 0;
      ++*(v6 + 24);
      result = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2, &v16);
      v10 = *(v16 + 288);
      if (v10)
      {
        v11 = v8 == 0;
      }

      else
      {
        v11 = 1;
      }

      if (!v11)
      {
        v12 = &v9[2 * v8];
        v13 = v9;
        do
        {
          v14 = *v13;
          v15 = v13[1];
          v13 += 2;
          result = re::EventBus::unsubscribe(v10, v14, v15);
        }

        while (v13 != v12);
      }

      if (v7)
      {
        if (v9)
        {
          return (*(*v7 + 40))(v7, v9);
        }
      }
    }
  }

  return result;
}

BOOL re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(a1, v5);
}

double re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v32[1] = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 == -1 || *(*(a1 + 8) + 16 * v6 + 8) != *a3)
  {
    re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::removeKey(a1, a2);
    v8 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
    if (v8 == -1)
    {
      if (!*(a1 + 56))
      {
      }

      v10 = *(a1 + 32);
      if (!v10 || (v11 = *(a1 + 16), v11 > 8 * v10))
      {
        re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(a1, 1u);
        v11 = *(a1 + 16);
      }

      v12 = 0xBF58476D1CE4E5B9;
      v13 = 0x94D049BB133111EBLL;
      v14 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
      v15 = (0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) ^ ((0x94D049BB133111EBLL * (v14 ^ (v14 >> 27))) >> 31);
      v16 = v11 >> 4;
      v17 = *a1;
      v18 = v15 % v16;
      while (1)
      {
        v19 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v17 + 16 * v18)), xmmword_1E304FAD0)))), 0x3830282018100800)));
        if (v19 < 0x40)
        {
          break;
        }

        if (v18 + 1 == v16)
        {
          v18 = 0;
        }

        else
        {
          ++v18;
        }

        if (v18 == v15 % v16)
        {
          re::internal::assertLog(4, v9, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
          _os_crash();
          __break(1u);
          break;
        }
      }

      v20 = v17 + 16 * v18;
      v21 = *(v20 + v19);
      *(v20 + v19) = v15 & 0x7F;
      v22 = 16 * (v19 + 16 * v18);
      *(*(a1 + 8) + v22) = *a2;
      *(*(a1 + 8) + v22 + 8) = *a3;
      if (v21 == 255)
      {
        v23 = -1;
      }

      else
      {
        v23 = 0;
      }

      v24.i64[0] = vdupq_n_s64(1uLL).u64[0];
      v24.i64[1] = v23;
      *(a1 + 24) = vaddq_s64(*(a1 + 24), v24);
      v25 = *(*(a1 + 8) + v22) ^ (*(*(a1 + 8) + v22) >> 30);
      v26 = ((v25 * v12) ^ ((v25 * v12) >> 27)) * v13;
      *(a1 + 40) ^= (v26 >> 31) ^ v26;
    }

    else
    {
      *(*(a1 + 8) + 16 * v8 + 8) = *a3;
    }

    v27 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find((a1 + 64), a3);
    if (v27 == -1)
    {
      v32[0] = *a2;
      memset(v29, 0, sizeof(v29));
      v30 = 0;
      v31 = 0x7FFFFFFFLL;
      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v29, v32);
      if (re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find((a1 + 64), a3) == -1)
      {
        re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::internalAdd((a1 + 64), a3, v29);
      }

      return re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v29);
    }

    else
    {
      v28 = *(a1 + 72) + 56 * v27 + 8;

      re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::add(v28, a2);
    }
  }

  return result;
}

void re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::removeKey(void *a1, uint64_t *a2)
{
  v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v4 != -1)
  {
    v5 = a1[1] + 16 * v4;
    v6 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(a1 + 8, (v5 + 8));
    if (v6 == -1)
    {
      v7 = 0;
    }

    else
    {
      v7 = a1[9] + 56 * v6 + 8;
    }

    re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(v7, a2);
    if (!*(v7 + 28))
    {
      re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::remove((a1 + 8), (v5 + 8));
    }

    re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(a1, a2);
  }
}

uint64_t *re::BucketArray<re::ecs2::Entity *,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::Entity *,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::Entity *,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

      while (v4 < a2)
      {
        v5 = (*(**v3 + 32))(*v3, 256, 0);
        result = re::DynamicOverflowArray<RESubscriptionHandle *,2ul>::add(v3, &v5);
        v4 = v3[1];
      }
    }
  }

  else
  {
  }

  return result;
}

uint64_t re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::Entity *,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 5)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = *(v4 + 8 * (v2 >> 5));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 8 * (v2 & 0x1F);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>,REEventHandlerResult (re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>,REEventHandlerResult (re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7F40;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>,REEventHandlerResult (re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD7F40;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>,REEventHandlerResult (re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>,REEventHandlerResult (re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7F98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>,REEventHandlerResult (re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CD7F98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,REComponentDidAddEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v9 = *a2;
  v5 = re::ecs2::SceneComponentTable::get((v3 + 200), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v5)
  {
    if (*(v5 + 384))
    {
      if (v8)
      {
        re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(v4 + 48, &v9, &v8);
        v6 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::Component::enqueueMarkDirty(v6);
      }
    }
  }

  return 0;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,REComponentDidAddEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7FF0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,REComponentDidAddEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD7FF0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,REComponentWillRemoveEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v13 = *a2;
  v5 = re::ecs2::SceneComponentTable::get((v3 + 200), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v5 && *(v5 + 384))
  {
    v6 = *(v2 + 344);
    if (v6)
    {
      v7 = *(v2 + 360);
      v8 = 8 * v6;
      do
      {
        v9 = *v7;
        if (*v7)
        {
          v10 = (v9 + 8);
          v11 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

          if (v11)
          {
            return 0;
          }
        }

        else if (re::ecs2::EntityComponentCollection::get(0x30, re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
        {
          return 0;
        }

        ++v7;
        v8 -= 8;
      }

      while (v8);
    }

    re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::removeKey((v4 + 48), &v13);
  }

  return 0;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,REComponentWillRemoveEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8048;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,REComponentWillRemoveEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8048;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = *(a1 + 8);
  v6 = re::ecs2::SceneComponentTable::get((*(a1 + 16) + 200), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6 && *(v6 + 384))
  {
    v8 = *(v4 + 32);
    if (v8)
    {
      v9 = (*(v8 + 304) & 0x80) != 0 ? 0 : *(v4 + 32);
    }

    else
    {
      v9 = 0;
    }

    {
      objc_initWeak(&location, (v4 + 8));
      v10 = location - 8;
      if (!location)
      {
        v10 = 0;
      }

      v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
      v12 = v11 ^ (v11 >> 31);
      v13 = *(v5 + 200);
      if (v13)
      {
        v14 = v12 % v13;
        v15 = *(*(v5 + 184) + 4 * (v12 % v13));
        if (v15 != 0x7FFFFFFF)
        {
          v16 = *(v5 + 192);
          if (*(v16 + 24 * v15 + 16) == location)
          {
LABEL_19:
            objc_destroyWeak(&location);
            return 0;
          }

          while (1)
          {
            LODWORD(v15) = *(v16 + 24 * v15 + 8) & 0x7FFFFFFF;
            if (v15 == 0x7FFFFFFF)
            {
              break;
            }

            if (*(v16 + 24 * v15 + 16) == location)
            {
              goto LABEL_19;
            }
          }
        }
      }

      else
      {
        LODWORD(v14) = 0;
      }

      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::addAsMove(v5 + 176, v14, v12, &location, &location);
      ++*(v5 + 216);
      goto LABEL_19;
    }
  }

  return 0;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD80A0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::registerScene(re::ecs2::Scene *)::{lambda(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)#1},REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD80A0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v43, 0, sizeof(v43));
  v10 = re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v43, v9, v4);
  v41[0] = a1;
  v11 = *(a1 + 16);
  if (v11 >= 0x10)
  {
    v12 = 0;
    v13 = *a1;
    v14 = v11 >> 4;
    while (1)
    {
      v15 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v13), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v41[1] = v15 ^ 0xFFFFLL;
      if (v15 != 0xFFFFLL)
      {
        break;
      }

      v12 -= 16;
      ++v13;
      if (!--v14)
      {
        goto LABEL_28;
      }
    }

    v16 = __clz(__rbit64(v15 ^ 0xFFFFLL));
    v17 = v16 - v12;
    v42 = v16 - v12;
    if (v16 + 1 != v12)
    {
      do
      {
        v18 = *(v41[0] + 8);
        if (*(&v43[3] + 1))
        {
          v19 = *&v43[2];
        }

        else
        {
          *&v43[1] = 16;
          *&v34 = -1;
          *(&v34 + 1) = -1;
          **&v43[0] = v34;
          v19 = *&v43[1];
          *(&v43[0] + 1) = *&v43[0] + 16;
          *(&v43[1] + 1) = 0;
          v43[2] = *&v43[1];
          *&v43[3] = 0;
        }

        v20 = xmmword_1E304FAD0;
        if (!v19 || (v21 = *&v43[1], *&v43[1] > (8 * v19)))
        {
          re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(v43, 1);
          v20 = xmmword_1E304FAD0;
          v21 = *&v43[1];
        }

        v22 = (v18 + 16 * v17);
        v23 = 0xBF58476D1CE4E5B9 * (*v22 ^ (*v22 >> 30));
        v24 = (0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) ^ ((0x94D049BB133111EBLL * (v23 ^ (v23 >> 27))) >> 31);
        v25 = v21 >> 4;
        v26 = v24 % (v21 >> 4);
        v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v43[0] + 16 * v26)), v20)))), 0x3830282018100800)));
        if (v27 >= 0x40)
        {
          do
          {
            if (v26 + 1 == v25)
            {
              v26 = 0;
            }

            else
            {
              ++v26;
            }

            v27 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*&v43[0] + 16 * v26)), v20)))), 0x3830282018100800)));
          }

          while (v27 > 0x3F);
        }

        v28 = *&v43[0] + 16 * v26;
        v29 = *(v28 + v27);
        *(v28 + v27) = v24 & 0x7F;
        v30 = 16 * (v27 + 16 * v26);
        *(*(&v43[0] + 1) + v30) = *v22;
        if (v29 == 255)
        {
          v31 = -1;
        }

        else
        {
          v31 = 0;
        }

        v32.i64[0] = vdupq_n_s64(1uLL).u64[0];
        v32.i64[1] = v31;
        *(&v43[1] + 8) = vaddq_s64(*(&v43[1] + 8), v32);
        v33 = 0xBF58476D1CE4E5B9 * (*(*(&v43[0] + 1) + v30) ^ (*(*(&v43[0] + 1) + v30) >> 30));
        *(&v43[2] + 1) ^= ((0x94D049BB133111EBLL * (v33 ^ (v33 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v33 ^ (v33 >> 27)));
        v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v41);
        v17 = v42;
      }

      while (v42 != -1);
      v11 = *(a1 + 16);
    }
  }

LABEL_28:
  v35 = *(&v43[3] + 1);
  *(&v43[3] + 1) = *(a1 + 56);
  v36 = v43[0];
  v37 = v43[1];
  v43[0] = *a1;
  *&v43[1] = v11;
  v38 = v43[2];
  v39 = *(a1 + 40);
  *(a1 + 48) = *&v43[3];
  *(a1 + 56) = v35;
  *(&v43[2] + 8) = v39;
  v40 = *(a1 + 24);
  *a1 = v36;
  *(a1 + 16) = v37;
  *(a1 + 32) = v38;
  *(&v43[1] + 8) = v40;
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(v43);
}

uint64_t re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(void *a1, uint64_t *a2)
{
  if (!a1[7])
  {
    return -1;
  }

  v2 = a1[2];
  if (v2 < 0x10 || !a1[3])
  {
    return -1;
  }

  v3 = v2 >> 4;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = v6 % v3;
  v8 = vdupq_n_s8(v6 & 0x7F);
  v9.i64[0] = -1;
  v9.i64[1] = -1;
  v10 = v6 % v3;
  while (1)
  {
    v11 = *(*a1 + 16 * v10);
    v12 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v8, v11), xmmword_1E304FAD0)))), 0x3830282018100800);
    v13 = __clz(__rbit64(v12));
    if (v13 <= 0x3F)
    {
      break;
    }

LABEL_10:
    if (vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(v11, v9), xmmword_1E304FAD0)))), 0x3830282018100800))
    {
      return -1;
    }

    if (v10 + 1 == v3)
    {
      v10 = 0;
    }

    else
    {
      ++v10;
    }

    v15 = -1;
    if (v10 == v7)
    {
      return v15;
    }
  }

  v14 = 16 * v10;
  while (1)
  {
    v15 = v13 + v14;
    if (v4 == *(a1[1] + 56 * (v13 + v14)))
    {
      return v15;
    }

    if (v13 <= 0x3E)
    {
      v13 = __clz(__rbit64((-2 << v13) & v12));
      if (v13 < 0x40)
      {
        continue;
      }
    }

    goto LABEL_10;
  }
}

int64x2_t re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::internalAdd(uint64_t *a1, void *a2, uint64_t *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::resize(a1, 1);
    v7 = a1[2];
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = v9 % (v7 >> 4);
  v12 = *a1;
  v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(*a1 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
  if (v13 >= 0x40)
  {
    do
    {
      if (v11 + 1 == v10)
      {
        v11 = 0;
      }

      else
      {
        ++v11;
      }

      v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v12 + 16 * v11)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    }

    while (v13 > 0x3F);
  }

  v14 = v12 + 16 * v11;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = 56 * (v13 + 16 * v11);
  *(a1[1] + v16) = *a2;
  v17 = a1[1] + v16;
  *(v17 + 8) = 0u;
  v17 += 8;
  *(v17 + 32) = 0;
  *(v17 + 16) = 0u;
  *(v17 + 36) = 0x7FFFFFFFLL;
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v17, a3);
  if (v15 == 255)
  {
    v18 = -1;
  }

  else
  {
    v18 = 0;
  }

  v19.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v19.i64[1] = v18;
  result = vaddq_s64(*(a1 + 3), v19);
  *(a1 + 3) = result;
  v21 = 0xBF58476D1CE4E5B9 * (*(a1[1] + v16) ^ (*(a1[1] + v16) >> 30));
  a1[5] ^= ((0x94D049BB133111EBLL * (v21 ^ (v21 >> 27))) >> 31) ^ (0x94D049BB133111EBLL * (v21 ^ (v21 >> 27)));
  return result;
}

double re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::resize(uint64_t a1, unsigned int a2)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24) + a2;
  v5 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v5 > v3)
  {
    v6 = 3 * v3;
    v7 = v6 << 6;
    v8 = (v6 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v5 > v7 >> 7)
    {
      v8 = (((151 * v4) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v4 = (v8 << 7) / 0x97;
  }

  v9 = *(a1 + 56);
  memset(v26, 0, sizeof(v26));
  re::HashBrown<RESubscriptionHandle,re::Function<void ()(void)>,re::Hash<RESubscriptionHandle>,re::EqualTo<RESubscriptionHandle>,void,false>::init(v26, v9, v4);
  v24[0] = a1;
  v10 = *(a1 + 16);
  if (v10 >= 0x10)
  {
    v11 = 0;
    v12 = *a1;
    v13 = v10 >> 4;
    while (1)
    {
      v14 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v12), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v24[1] = v14 ^ 0xFFFFLL;
      if (v14 != 0xFFFFLL)
      {
        break;
      }

      v11 -= 16;
      ++v12;
      if (!--v13)
      {
        goto LABEL_13;
      }
    }

    v15 = __clz(__rbit64(v14 ^ 0xFFFFLL));
    v16 = v15 - v11;
    v25 = v15 - v11;
    if (v15 + 1 != v11)
    {
      do
      {
        re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 56 * v16), (*(v24[0] + 8) + 56 * v16 + 8));
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v24);
        v16 = v25;
      }

      while (v25 != -1);
      v10 = *(a1 + 16);
    }
  }

LABEL_13:
  v17 = *(&v26[3] + 1);
  *(&v26[3] + 1) = *(a1 + 56);
  v18 = v26[0];
  v19 = v26[1];
  v26[0] = *a1;
  *&v26[1] = v10;
  v20 = v26[2];
  v21 = *(a1 + 40);
  *(a1 + 48) = *&v26[3];
  *(a1 + 56) = v17;
  *(&v26[2] + 8) = v21;
  v22 = *(a1 + 24);
  *a1 = v18;
  *(a1 + 16) = v19;
  *(a1 + 32) = v20;
  *(&v26[1] + 8) = v22;
  return re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::deinit(v26);
}

double re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::remove(uint64_t a1, uint64_t *a2)
{
  v3 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::find(a1, a2);
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    v9 = *&v7 ? -1 : 0x80;
    v5->i8[v3 & 0xF] = v9;
    v10 = (*(a1 + 8) + 56 * v3);
    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v10 ^ (*v10 >> 30))) >> 27));
    *(a1 + 40) ^= (v11 >> 31) ^ v11;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v10 + 1);
    v12.i64[0] = -1;
    v12.i64[1] = v8;
    v4 = vaddq_s64(*(a1 + 24), v12);
    *(a1 + 24) = v4;
    v13 = *(a1 + 16);
    if (v13 >= 0x11 && v4.i64[0] < v13 >> 2)
    {

      *v4.i64 = re::HashBrown<re::ecs2::ShadowScopeComponent const*,re::HashSet<re::ecs2::Entity *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::ShadowScopeComponent const*>,re::EqualTo<re::ecs2::ShadowScopeComponent const*>,void,false>::resize(a1, 0);
    }
  }

  return *v4.i64;
}

void re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v3 != -1)
  {
    v4 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v5.i64[0] = -1;
    v5.i64[1] = -1;
    v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v4, v5), xmmword_1E304FAD0)))), 0x3830282018100800);
    v7 = *&v6 ? -1 : 0x80;
    v4->i8[v3 & 0xF] = v7;
    v8 = *(a1 + 16);
    v9 = *(*(a1 + 8) + 16 * v3);
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
    *(a1 + 40) ^= (v10 >> 31) ^ v10;
    v5.i64[1] = *&v6 != 0;
    v11 = vaddq_s64(*(a1 + 24), v5);
    *(a1 + 24) = v11;
    if (v8 >= 0x11 && v11.i64[0] < v8 >> 2)
    {

      re::HashBrown<re::ecs2::Entity const*,re::ecs2::ShadowScopeComponent const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,void,false>::resize(a1, 0);
    }
  }
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::update(void)::{lambda(re::ecs2::Entity *)#1},BOOL ()(re::ecs2::Entity *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v15 = v3;
  v4 = *(a1 + 8);
  v5 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v5)
  {
    v6 = v5;
    if (*(a1 + 16))
    {
      v7 = *(v3 + 32);
      if (v7 && (*(v7 + 304) & 0x80) != 0)
      {
        v7 = 0;
      }

      v14 = v7;
      re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(v4 + 48, &v14, (a1 + 16));
    }

    else
    {
      v8 = *(v3 + 32);
      if (v8 && (*(v8 + 304) & 0x80) != 0)
      {
        v8 = 0;
      }

      v14 = v8;
      re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::removeKey((v4 + 48), &v14);
    }

    if (*(a1 + 16) != v6)
    {
      return 0;
    }
  }

  v10 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v10)
  {
    v11 = v10;
    v13 = *(a1 + 16);
    v12 = (a1 + 16);
    if (v13)
    {
      re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(v4 + 48, &v15, v12);
    }

    else
    {
      re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::removeKey((v4 + 48), &v15);
    }

    re::ecs2::Component::enqueueMarkDirty(v11);
  }

  return 1;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::update(void)::{lambda(re::ecs2::Entity *)#1},BOOL ()(re::ecs2::Entity *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD80F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::update(void)::{lambda(re::ecs2::Entity *)#1},BOOL ()(re::ecs2::Entity *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD80F8;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addInternal<re::ecs2::Scene * const&,re::DynamicArray<RESubscriptionHandle>>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  *(v7 + 16) = 0;
  result = v7 + 16;
  *(result - 8) = v8;
  *(result + 32) = 0;
  *(result + 24) = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  v10 = *(a4 + 8);
  *result = *a4;
  *(result + 8) = v10;
  *a4 = 0;
  *(a4 + 8) = 0;
  v11 = *(result + 16);
  *(result + 16) = *(a4 + 16);
  *(a4 + 16) = v11;
  v12 = *(result + 32);
  *(result + 32) = *(a4 + 32);
  *(a4 + 32) = v12;
  ++*(a4 + 24);
  ++*(result + 24);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        v8 = *(a2 + 16) + v5;
        *(result + 48) = 0;
        *(result + 24) = 0;
        *(result + 32) = 0;
        *(result + 16) = 0;
        *(result + 40) = 0;
        v9 = *(v8 + 24);
        *(result + 16) = *(v8 + 16);
        *(result + 24) = v9;
        *(v8 + 16) = 0;
        *(v8 + 24) = 0;
        v10 = *(result + 32);
        *(result + 32) = *(v8 + 32);
        *(v8 + 32) = v10;
        v11 = *(result + 48);
        *(result + 48) = *(v8 + 48);
        *(v8 + 48) = v11;
        ++*(v8 + 40);
        ++*(result + 40);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

void re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + (v10 << 6), 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_64_0, 4 * v10);
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

BOOL re::HashTable<re::ecs2::Scene *,re::DynamicArray<RESubscriptionHandle>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + (v2 << 6)) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
      v9 = a2[3];
    }

    else
    {
      *(v6 + (v5 << 6)) = *(v6 + (v5 << 6)) & 0x80000000 | v7;
      v8 = v2;
      v9 = v2;
    }

    v10 = (v6 + (v8 << 6));
    v11 = *v10;
    if (*v10 < 0)
    {
      *v10 = v11 & 0x7FFFFFFF;
      re::DynamicArray<unsigned long>::deinit((v10 + 4));
      v12 = a2[3];
      v6 = *(a1 + 16);
      v11 = *(v6 + (v12 << 6));
      v9 = a2[3];
    }

    else
    {
      v12 = v9;
    }

    v13 = *(a1 + 40);
    *(v6 + (v12 << 6)) = *(a1 + 36) | v11 & 0x80000000;
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v13 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentDidAdd(re::ecs2::Entity *,REComponentDidAddEvent const&)::{lambda(re::ecs2::Entity *)#1},BOOL ()(re::ecs2::Entity *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v11 = v3;
  v4 = *(a1 + 8);
  v5 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::ShadowScopeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (!v5 || *(a1 + 16) == v5)
  {
    v8 = re::ecs2::EntityComponentCollection::get((v3 + 48), re::ecs2::ComponentImpl<re::ecs2::GroundingShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v8)
    {
      v9 = v8;
      re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(v4 + 48, &v11, (a1 + 16));
      re::ecs2::Component::enqueueMarkDirty(v9);
    }

    return 1;
  }

  else
  {
    v6 = *(v3 + 32);
    if (v6)
    {
      if ((*(v6 + 304) & 0x80) != 0)
      {
        v6 = 0;
      }
    }

    v10 = v6;
    re::ecs2::BidirectionalHashTable<re::ecs2::Entity *,re::ecs2::ShadowScopeComponent const*>::addOrReplace(v4 + 48, &v10, (a1 + 16));
    return 0;
  }
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentDidAdd(re::ecs2::Entity *,REComponentDidAddEvent const&)::{lambda(re::ecs2::Entity *)#1},BOOL ()(re::ecs2::Entity *)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8160;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::ScopeTracker<re::ecs2::ShadowScopeComponent,re::ecs2::GroundingShadowComponent>::onScopeComponentDidAdd(re::ecs2::Entity *,REComponentDidAddEvent const&)::{lambda(re::ecs2::Entity *)#1},BOOL ()(re::ecs2::Entity *)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CD8160;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, int a4, id *from)
{
  v9 = *(a1 + 36);
  if (v9 == 0x7FFFFFFF)
  {
    v9 = *(a1 + 32);
    v10 = v9;
    if (v9 == *(a1 + 24))
    {
      re::HashSetBase<re::ArcWeakPtr<re::ecs2::Entity>,re::ArcWeakPtr<re::ecs2::Entity>,re::internal::ValueAsKey<re::ArcWeakPtr<re::ecs2::Entity>>,re::Hash<re::ArcWeakPtr<re::ecs2::Entity>>,re::EqualTo<re::ArcWeakPtr<re::ecs2::Entity>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v10 = *(a1 + 32);
    }

    *(a1 + 32) = v10 + 1;
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
  }

  else
  {
    v11 = *(a1 + 16);
    v12 = *(v11 + 24 * v9 + 8);
    *(a1 + 36) = v12 & 0x7FFFFFFF;
  }

  *(v11 + 24 * v9 + 8) = v12 | 0x80000000;
  *(*(a1 + 16) + 24 * v9 + 8) = *(*(a1 + 16) + 24 * v9 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v9) = a3;
  v13 = *(a1 + 16) + 24 * v9;
  *(v13 + 16) = 0;
  objc_moveWeak((v13 + 16), from);
  *(*(a1 + 8) + 4 * a2) = v9;
  ++*(a1 + 28);
  return v9;
}