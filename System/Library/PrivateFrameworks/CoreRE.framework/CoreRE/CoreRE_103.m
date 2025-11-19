uint64_t re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidAddEvent>(void *a1, uint64_t a2, const re::ecs2::AnchorComponent *a3)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = v3[18];
      if (v4)
      {
        break;
      }

      v3 = v3[4];
      if (!v3 || (v3[38] & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(a1, v4, a3);
  return 0;
}

uint64_t re::ecs2::TransformSystem::entityHierarchyChangedHandler<RESceneEntityDidReparentEvent>(void *a1, uint64_t a2, const re::ecs2::AnchorComponent *a3)
{
  if (a1)
  {
    v3 = a1;
    while (1)
    {
      v4 = v3[18];
      if (v4)
      {
        break;
      }

      v3 = v3[4];
      if (!v3 || (v3[38] & 0x80) != 0)
      {
        goto LABEL_6;
      }
    }
  }

  else
  {
LABEL_6:
    v4 = 0;
  }

  re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(a1, v4, a3);
  return 0;
}

uint64_t re::ecs2::TransformSystem::willRemoveSceneFromECSService(re::ecs2::TransformSystem *this, re::ecs2::Scene *a2)
{
  v19 = a2;
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::service<re::TransformService>(v4);
  re::TransformService::willRemoveSceneFromECSService(v5, a2);
  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 224, &v19);
  if (result)
  {
    v8 = v19;
    v9 = *(v19 + 36);
    if (v9)
    {
      v10 = result;
      v11 = *(result + 40);
      if (v11)
      {
        for (i = 0; i != v11; ++i)
        {
          v13 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v10, i);
          re::EventBus::unsubscribe(v9, *v13, *(v13 + 8));
        }

        v8 = v19;
      }
    }

    v14 = *(v8 + 13);
    v15 = *(v14 + 344);
    if (v15)
    {
      v16 = *(v14 + 360);
      v17 = 8 * v15;
      do
      {
        v18 = *v16++;
        re::ecs2::TransformSystem::deactivateEntityHierarchyTransformState(v18, v7);
        v17 -= 8;
      }

      while (v17);
    }

    return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 224, &v19);
  }

  return result;
}

void *re::ecs2::TransformSystem::deactivateEntityHierarchyTransformState(void *result, re::ecs2::Entity *a2)
{
  v2 = result[32];
  if (v2)
  {
    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
  }

  v3 = result[43];
  if (v3)
  {
    v4 = result[45];
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = re::ecs2::TransformSystem::deactivateEntityHierarchyTransformState(v6, a2);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

void *re::ecs2::TransformSystem::updateEntityHierarchyRootAnchorComponent(void *this, re::ecs2::Entity *a2, const re::ecs2::AnchorComponent *a3)
{
  v4 = this;
  v5 = this[32];
  if (v5)
  {
    if (!*(v5 + 128))
    {
      return this;
    }

    *(v5 + 136) = a2;
    *(v5 + 128) = 1;
  }

  v17[0] = 0;
  v17[1] = 0;
  v18 = 1;
  v20 = 0;
  v21 = 0;
  v19 = 0;
  v22 = 0;
  v6 = v4[43];
  if (v6)
  {
    v7 = v4[45];
    v8 = 8 * v6;
    do
    {
      v9 = *v7++;
      *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v17) = v9;
      v8 -= 8;
    }

    while (v8);
  }

  v10 = v21;
  while (v10)
  {
    v11 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v17, v10 - 1);
    re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v17, v21 - 1);
    v10 = --v21;
    ++v22;
    if (!v11[18])
    {
      v12 = v11[32];
      if (v12)
      {
        *(v12 + 136) = a2;
        *(v12 + 128) = 1;
      }

      v13 = v11[43];
      if (v13)
      {
        v14 = v11[45];
        v15 = 8 * v13;
        do
        {
          v16 = *v14++;
          *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v17) = v16;
          v15 -= 8;
        }

        while (v15);
        v10 = v21;
      }
    }
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v17);
  this = v17[0];
  if (v17[0])
  {
    if ((v18 & 1) == 0)
    {
      return (*(*v17[0] + 40))();
    }
  }

  return this;
}

_anonymous_namespace_ *re::ecs2::TransformSystem::updateEntityHierarchyTransformDirtyState(_anonymous_namespace_ *result)
{
  v1 = result;
  v2 = *(result + 32);
  if (v2)
  {
    if (*(v2 + 128) < 2u)
    {
      return result;
    }

    *(v2 + 128) = 1;
  }

  v14[0] = 0;
  v14[1] = 0;
  v15 = 1;
  v17 = 0;
  v18 = 0;
  v16 = 0;
  v19 = 0;
  v3 = *(v1 + 43);
  if (v3)
  {
    v4 = *(v1 + 45);
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v14) = v6;
      v5 -= 8;
    }

    while (v5);
  }

  v7 = v18;
  if (v18)
  {
    while (1)
    {
      v8 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v14, v7 - 1);
      re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v14, v18 - 1);
      v7 = --v18;
      ++v19;
      if (!v8[18])
      {
        v9 = v8[32];
        if (!v9)
        {
          goto LABEL_12;
        }

        if (*(v9 + 128) >= 2u)
        {
          break;
        }
      }

LABEL_16:
      if (!v7)
      {
        goto LABEL_17;
      }
    }

    *(v9 + 128) = 1;
LABEL_12:
    v10 = v8[43];
    if (v10)
    {
      v11 = v8[45];
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        *re::BucketArray<re::ecs2::Entity *,32ul>::addUninitialized(v14) = v13;
        v12 -= 8;
      }

      while (v12);
      v7 = v18;
    }

    goto LABEL_16;
  }

LABEL_17:
  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v14);
  result = v14[0];
  if (v14[0])
  {
    if ((v15 & 1) == 0)
    {
      return (*(*v14[0] + 40))();
    }
  }

  return result;
}

void *re::ecs2::allocInfo_TransformComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_203, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_203))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4608, "TransformComponent");
    __cxa_guard_release(&_MergedGlobals_203);
  }

  return &unk_1EE1A4608;
}

void re::ecs2::initInfo_TransformComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v15[0] = 0x74A840394154E22;
  v15[1] = "TransformComponent";
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  *(this + 2) = v16;
  if ((atomic_load_explicit(&qword_1EE1A45E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A45E0);
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
      qword_1EE1A45F0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_SRT(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "transform";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A45F8 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 8, 4);
      *v13 = 0x100000004;
      qword_1EE1A4600 = v13;
      __cxa_guard_release(&qword_1EE1A45E0);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A45F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransformComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransformComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransformComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransformComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218TransformComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v14 = v16;
}

void *re::ecs2::allocInfo_TransformSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A45E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A45E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4698, "TransformSystem");
    __cxa_guard_release(&qword_1EE1A45E8);
  }

  return &unk_1EE1A4698;
}

void re::ecs2::initInfo_TransformSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1C2499D73A6E8136;
  v6[1] = "TransformSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x11000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_TransformSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TransformSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TransformSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::TransformSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::TransformSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TransformSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TransformSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::TransformSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a3 + 224);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::TransformSystem>(re::ecs2::System *a1)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 224);

  re::ecs2::System::~System(a1);
}

void re::ecs2::AnimatedTransformComponentOp::~AnimatedTransformComponentOp(re::ecs2::AnimatedTransformComponentOp *this)
{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::UnanimatedTransformComponentOp::~UnanimatedTransformComponentOp(re::ecs2::UnanimatedTransformComponentOp *this)
{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CFF148;
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::TransformSystem::~TransformSystem(re::ecs2::TransformSystem *this)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 224);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::TransformComponent::~TransformComponent(re::ecs2::TransformComponent *this)
{
  *this = &unk_1F5CEBC90;
  v2 = this + 88;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CEBC90;
  v2 = this + 88;
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 88);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::ecs2::AnimatedTransformComponentOp::willAddSceneToTransformService(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEBF38;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::AnimatedTransformComponentOp::willAddSceneToTransformService(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEBF38;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBF90;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBF90;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBFE8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEBFE8;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC040;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC040;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC098;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC098;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC148;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC148;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC0F0;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC0F0;
  a2[1] = v2;
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218TransformComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::TransformSystem *re::ecs2::TransformSystem::TransformSystem(re::ecs2::TransformSystem *this)
{
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CEBE78;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 224) = 0u;
  v3 = v2 + 224;
  *(v2 + 260) = 0x7FFFFFFFLL;
  return this;
}

void *re::ecs2::allocInfo_PortalCrossingFlagsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_204, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_204))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4750, "PortalCrossingFlagsComponent");
    __cxa_guard_release(&_MergedGlobals_204);
  }

  return &unk_1EE1A4750;
}

void re::ecs2::initInfo_PortalCrossingFlagsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x37D4EAFB9BC30C48;
  v18[1] = "PortalCrossingFlagsComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1A4730, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4730);
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
      qword_1EE1A4738 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "enablePortalCrossing";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A4740 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "enablePortalCrossingIsInherited";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A4748 = v16;
      __cxa_guard_release(&qword_1EE1A4730);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A4738;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PortalCrossingFlagsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs228PortalCrossingFlagsComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::ecs2::PortalCrossingFlagsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3EA8;
  *(v3 + 25) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PortalCrossingFlagsComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3EA8;
  *(v1 + 25) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs228PortalCrossingFlagsComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *re::ecs2::IKParametersComponent::createSolversForAsset(uint64_t *this)
{
  v1 = this;
  v2 = this[5];
  if (v2)
  {
    v3 = *(v2 + 792);
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v2 ^ (v2 >> 30))) >> 27));
  if (this[10] != (v3 ^ (v4 >> 31) ^ v4))
  {
    re::ecs2::IKParametersComponent::createRuntimeData(this);

    return re::ecs2::Component::enqueueMarkDirty(v1);
  }

  return this;
}

uint64_t *re::ecs2::IKParametersComponent::createRuntimeData(uint64_t *this)
{
  v1 = this[5];
  if (v1)
  {
    v2 = atomic_load((v1 + 896));
    if (v2 == 2)
    {
      v3 = this;
      v4 = this[5];
      if (v4)
      {
        v5 = *(v4 + 280);
        this = re::IKRigAsset::assetType(this);
        if (v5 == this)
        {
          if (v3[7])
          {
            v3[10] = 0;
            re::FixedArray<re::FullBodyIKSolver>::deinit(v3 + 7);
          }

          v6 = v3[5];
          if (v6)
          {
            v7 = *(v6 + 792);
          }

          else
          {
            v7 = 0;
          }

          v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
          v3[10] = v7 ^ (v8 >> 31) ^ v8;
          v9 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>((v3 + 4));
          v10 = *(v9 + 16);
          if (v10)
          {
            v11 = 0;
            v12 = 0;
            v13 = 0;
            while (*(v9 + 16) > v13)
            {
              v14 = *(*(v9 + 17) + 8 * v13);
              if (v14)
              {
                if (v3[8] <= v13)
                {
                  goto LABEL_24;
                }

                if (*(v9 + 4) <= v13)
                {
                  goto LABEL_25;
                }

                this = re::FullBodyIKSolver::FullBodyIKSolver(v3[9] + v12, *(v14 + 24), (*(v9 + 5) + v11));
              }

              ++v13;
              v12 += 128;
              v11 += 16;
              if (v10 == v13)
              {
                goto LABEL_21;
              }
            }

            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_24:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_25:
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

LABEL_21:
          *(v3 + 96) = 1;
        }
      }

      else
      {

        return re::IKRigAsset::assetType(this);
      }
    }
  }

  return this;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::IKRigAsset>(re::IKRigAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::IKRigAsset::assetType(a1);
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

BOOL re::ecs2::IKParametersComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v57 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v56, a5, 0);
  v8 = *&v56[0];
  v46 = a4;
  v47 = *&v56[0];
  v48 = DWORD2(v56[0]);
  v9 = WORD4(v56[0]);
  v10 = HIWORD(DWORD2(v56[0]));
  if (*&v56[0] != a5 || WORD4(v56[0]) != 0xFFFF || v10 != 0xFFFF)
  {
    while (1)
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v49 = 0;
        memset(v56, 0, sizeof(v56));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v50 = 136315906;
        *v51 = "operator[]";
        *&v51[8] = 1024;
        *&v51[10] = 797;
        v52 = 2048;
        v53 = v13;
        v54 = 2048;
        v55 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*(v8 + 32) + 16 * v10) + 8 * v9);
      v16 = *(v15 + 16);
      re::ecs2::IKParametersComponent::createSolversForAsset(v15);
      v17 = re::ecs2::EntityComponentCollection::get((v16 + 48), re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v17)
      {
        if (*(v15 + 96) == 1)
        {
          v18 = v17;
          v19 = *(v17 + 40);
          if (v19)
          {
            v20 = *(v19 + 792);
          }

          else
          {
            v20 = 0;
          }

          v21 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v19 ^ (v19 >> 30))) >> 27));
          v22 = v20 ^ (v21 >> 31) ^ v21;
          v23 = *(v15 + 88);
          v24 = *(v15 + 40);
          if (v24 || v22 != v23)
          {
            goto LABEL_20;
          }

          if (v19)
          {
            break;
          }
        }
      }

LABEL_46:
      v44 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v47);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v46, v44, *(a3 + 48));
LABEL_47:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v47);
      v8 = v47;
      v9 = v48;
      v10 = HIWORD(v48);
      if (v47 == a5 && v48 == 0xFFFF && HIWORD(v48) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v25 = *(v17 + 32);
    if (v25)
    {

      *(v18 + 32) = 0;
    }

    v19 = 0;
    *(v18 + 40) = 0;
    *(v15 + 88) = 0;
    *(v15 + 96) = 0;
    v24 = *(v15 + 40);
LABEL_20:
    v27 = v22 == v23 || v19 == 0;
    if (v24 && v27)
    {
      v28 = *(v16 + 192);
      v29 = atomic_load((v24 + 896));
      if (v29 != 2 || v28 == 0)
      {
        goto LABEL_47;
      }

      v31 = *(v28 + 40);
      if (!v31)
      {
        goto LABEL_47;
      }

      v32 = atomic_load((v31 + 896));
      if (v32 != 2)
      {
        goto LABEL_47;
      }

      v33 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v28 + 32));
      v34 = re::AssetHandle::blockUntilLoaded<re::IKRigAsset>((v15 + 32));
      IKSolverRigGraphAsset = re::RigGraphAsset::createIKSolverRigGraphAsset(v33, v34, v56);
      if (LOBYTE(v56[0]) != 1)
      {
        goto LABEL_47;
      }

      v36 = *(v15 + 40);
      if (v36)
      {
        v37 = *(v36 + 24);
      }

      else
      {
        v37 = 0;
      }

      v38 = *(&v56[0] + 1);
      v39 = re::RigGraphAsset::assetType(IKSolverRigGraphAsset);
      (*(*v37 + 424))(&v50, v37, v38, v39, 0, 0, 0);
      v40 = *&v51[4];
      if (*&v51[4])
      {
        *(&v56[0] + 1) = 0;
        re::AssetHandle::operator=(v18 + 32, &v50);
        re::ecs2::Component::enqueueMarkDirty(v18);
        v41 = *(v18 + 40);
        if (v41)
        {
          v42 = *(v41 + 792);
        }

        else
        {
          v42 = 0;
        }

        v43 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
        *(v15 + 88) = v42 ^ (v43 >> 31) ^ v43;
        *(v15 + 96) = 0;
      }

      re::AssetHandle::~AssetHandle(&v50);
      if (LOBYTE(v56[0]) == 1)
      {
        std::unique_ptr<re::RigGraphAsset,std::function<void ()(re::RigGraphAsset*)>>::~unique_ptr[abi:nn200100](v56 + 1);
      }

      if (!v40)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_46;
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::IKParametersSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v45[0] = a2;
  v45[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v44);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v5)
      {
        v10 = v5[48];
      }

      else
      {
        v10 = 0;
      }

      v7 += v10;
      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  else
  {
    v7 = 0;
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
  if (isStatisticCollectionEnabled)
  {
    v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
    v13 = *(v12 + 152);
    if (v13)
    {
      v14 = v13[920].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[920].i64[0] = v14;
      v15 = v13[920].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[920].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[921] = vaddq_s64(v13[921], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v43, 3131, a1);
  re::StackScratchAllocator::StackScratchAllocator(v57);
  v53 = 1;
  v54 = 0;
  v55 = 0;
  v51 = v57;
  v52 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v51, 0);
  v53 += 2;
  v17 = a1[54];
  if ((v17 & 0x3F) != 0)
  {
    v18 = (v17 >> 6) + 1;
  }

  else
  {
    v18 = v17 >> 6;
  }

  v56 = a1[54];
  v46[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v51, v18, v46);
  v19 = *(a3 + 200);
  if (v19)
  {
    v20 = *(a3 + 216);
    v21 = 8 * v19;
    do
    {
      v22 = *v20++;
      v46[0] = v22;
      v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 35, v46);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v51, *(a1[36] + 16 * v23 + 8));
      v21 -= 8;
    }

    while (v21);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v51, (a1 + 49));
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v46[0] = v57;
  v46[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v46, 0);
  v47 += 2;
  v24 = a1[54];
  if ((v24 & 0x3F) != 0)
  {
    v25 = (v24 >> 6) + 1;
  }

  else
  {
    v25 = v24 >> 6;
  }

  v50 = a1[54];
  v58 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v46, v25, &v58);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 49), &v51);
  v26 = v55;
  if (v53)
  {
    v26 = &v54;
  }

  v27 = v52;
  if ((v52 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v28 = 0;
    while (1)
    {
      v30 = *v26++;
      v29 = v30;
      if (v30)
      {
        break;
      }

      v28 -= 64;
      if (!--v27)
      {
        goto LABEL_45;
      }
    }

    v31 = __clz(__rbit64(v29));
    if (v31 + 1 != v28)
    {
      FirstBitSet = v31 - v28;
      do
      {
        v33 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 28), FirstBitSet);
        v34 = *(*v33 + 224);
        v35 = v33[3];
        v36 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v35);
        if (*(v36 + 40))
        {
          v37 = (*(*v34 + 24))(v34, v45, v33, v35, v36, 0);
        }

        else
        {
          v37 = 0;
        }

        v38 = v33[5];
        v39 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v38);
        if (*(v39 + 40))
        {
          v37 |= (*(*v34 + 32))(v34, v45, v33, v38, v39, 0);
        }

        v40 = v33[6];
        v41 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v33[2] + 8, v40);
        if (*(v41 + 40))
        {
          if (((v37 | (*(*v34 + 40))(v34, v45, v33, v40, v41, 0)) & 1) == 0)
          {
            goto LABEL_43;
          }
        }

        else if (!v37)
        {
LABEL_43:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v46, FirstBitSet);
          goto LABEL_44;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v46, FirstBitSet);
LABEL_44:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v51, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_45:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 49), v46);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 28));
  if (v46[0] && (v47 & 1) == 0)
  {
    (*(*v46[0] + 40))();
  }

  if (v51 && (v53 & 1) == 0)
  {
    (*(*v51 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v57);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v43);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v44);
}

unint64_t re::ecs2::IKParametersSystem::willAddSceneToECSService(re::ecs2::IKParametersSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::init(v12, this + 224, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::setBucketsCapacity(this + 28, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::init(v24, this + 224, v48[0]);
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

uint64_t re::ecs2::IKParametersSystem::willRemoveSceneFromECSService(re::ecs2::IKParametersSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::allocInfo_IKParametersComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_205, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_205))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4810, "IKParametersComponent");
    __cxa_guard_release(&_MergedGlobals_205);
  }

  return &unk_1EE1A4810;
}

void re::ecs2::initInfo_IKParametersComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v17[0] = 0x4101A12855F3362;
  v17[1] = "IKParametersComponent";
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  *(this + 2) = v18;
  if ((atomic_load_explicit(&qword_1EE1A47E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A47E8);
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
      qword_1EE1A47F8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::IntrospectionInfo<re::FixedArray<re::FullBodyIKSolver>>::get(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "solvers";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x3800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A4800 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_AssetHandle(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "ikRigAssetHandle";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A4808 = v15;
      __cxa_guard_release(&qword_1EE1A47E8);
    }
  }

  *(this + 2) = 0x6800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A47F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::IKParametersComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::IKParametersComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::IKParametersComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::IKParametersComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221IKParametersComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v16 = v18;
}

double re::internal::defaultConstruct<re::ecs2::IKParametersComponent>(int a1, int a2, ArcSharedObject *this)
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
  *v3 = &unk_1F5CE1D00;
  result = 0.0;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0;
  return result;
}

void *re::internal::defaultDestruct<re::ecs2::IKParametersComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a3 + 7);
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

double re::internal::defaultConstructV2<re::ecs2::IKParametersComponent>(uint64_t a1)
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
  *v1 = &unk_1F5CE1D00;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0;
  return result;
}

void *re::internal::defaultDestructV2<re::ecs2::IKParametersComponent>(void *a1)
{
  re::FixedArray<re::FullBodyIKSolver>::deinit(a1 + 7);
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_IKParametersSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A47F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A47F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A48A0, "IKParametersSystem");
    __cxa_guard_release(&qword_1EE1A47F0);
  }

  return &unk_1EE1A48A0;
}

void re::ecs2::initInfo_IKParametersSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x83C6DF79F9B0A3F6;
  v6[1] = "IKParametersSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1E800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_IKParametersSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::IKParametersSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::IKParametersSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::IKParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::IKParametersSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::IKParametersSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::IKParametersSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::IKParametersSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 28);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::IKParametersSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 28);

  re::ecs2::System::~System(a1);
}

void re::ecs2::IKParametersSystem::~IKParametersSystem(re::ecs2::IKParametersSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 28);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::IKParametersComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEC298;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEC2F0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEC348;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CEC3A0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CEC298;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEC2F0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEC348;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CEC3A0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::IKParametersComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC298;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC298;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC2F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC2F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC348;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC348;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC3A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC3A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::IKParametersComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs221IKParametersComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 10;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::IKParametersSystem *re::ecs2::IKParametersSystem::IKParametersSystem(re::ecs2::IKParametersSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CEC1E0;
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
  *(this + 456) = 1;
  *(this + 58) = &unk_1F5CEC1A0;
  *(this + 59) = this;
  *(this + 60) = re::ecs2::ComponentImpl<re::ecs2::RigComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  return this;
}

void *re::ecs2::allocInfo_SceneUnderstandingComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_206, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_206))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A49C8, "SceneUnderstandingComponent");
    __cxa_guard_release(&_MergedGlobals_206);
  }

  return &unk_1EE1A49C8;
}

void re::ecs2::initInfo_SceneUnderstandingComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xB7A4C0F509B6B38ALL;
  v14[1] = "SceneUnderstandingComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A4938, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4938);
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
      qword_1EE1A4978 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<unsigned char [16]>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "identifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A4980 = v12;
      __cxa_guard_release(&qword_1EE1A4938);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A4978;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227SceneUnderstandingComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::SceneUnderstandingComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEC3F8;
  *(v3 + 41) = 513;
}

void re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CEC3F8;
  *(v1 + 41) = 513;
}

void *re::ecs2::allocInfo_SceneUnderstandingRootComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4948, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4948))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4A58, "SceneUnderstandingRootComponent");
    __cxa_guard_release(&qword_1EE1A4948);
  }

  return &unk_1EE1A4A58;
}

void re::ecs2::initInfo_SceneUnderstandingRootComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x2CBC1F2A37446606;
  v14[1] = "SceneUnderstandingRootComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A4950, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4950);
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
      qword_1EE1A4988 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_size_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "updateId";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A4990 = v12;
      __cxa_guard_release(&qword_1EE1A4950);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A4988;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingRootComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs231SceneUnderstandingRootComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRootComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE3340;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRootComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE3340;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_SceneUnderstandingRenderOptionsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4958, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4958))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4AE8, "SceneUnderstandingRenderOptionsComponent");
    __cxa_guard_release(&qword_1EE1A4958);
  }

  return &unk_1EE1A4AE8;
}

void re::ecs2::initInfo_SceneUnderstandingRenderOptionsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v30[0] = 0xDCE03EE9E8EB53DALL;
  v30[1] = "SceneUnderstandingRenderOptionsComponent";
  if (v30[0])
  {
    if (v30[0])
    {
    }
  }

  *(this + 2) = v31;
  if ((atomic_load_explicit(&qword_1EE1A4960, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4960);
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
      qword_1EE1A4998 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "enableOcclusion";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A49A0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "enableWireframe";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A49A8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "enableDepthFeathering";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1B00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A49B0 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "enableGuidedFilterOcclusionSupport";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1C00000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A49B8 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_BOOL(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "enableGuidedFilterOcclusion";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x1D00000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1A49C0 = v28;
      __cxa_guard_release(&qword_1EE1A4960);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1A4998;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneUnderstandingRenderOptionsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs240SceneUnderstandingRenderOptionsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v29 = v31;
}

void re::internal::defaultConstruct<re::ecs2::SceneUnderstandingRenderOptionsComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE34A8;
  *(v3 + 25) = 0;
  *(v3 + 28) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SceneUnderstandingRenderOptionsComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE34A8;
  *(v1 + 25) = 0;
  *(v1 + 28) = 0;
}

uint64_t re::ecs2::SceneUnderstandingComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1A4970, memory_order_acquire) & 1) == 0)
  {
    v17 = __cxa_guard_acquire(&qword_1EE1A4970);
    if (v17)
    {
      v18 = qword_1EE1A4940;
      if (!qword_1EE1A4940)
      {
        v18 = re::ecs2::allocInfo_SceneUnderstandingComponent(v17);
        qword_1EE1A4940 = v18;
        re::ecs2::initInfo_SceneUnderstandingComponent(v18, v19);
      }

      qword_1EE1A4968 = v18;
      __cxa_guard_release(&qword_1EE1A4970);
    }
  }

  v2 = strlen(*(qword_1EE1A4968 + 48));
  v23[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1A4968 + 48), v2);
  v23[1] = v3;
  v4 = re::globalAllocators(v23[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v23, 1, 4);
  *v6 = &unk_1F5CEC480;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0x30);
  if ((atomic_load_explicit(&qword_1EE1A4970, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_1EE1A4970);
    if (v20)
    {
      v21 = qword_1EE1A4940;
      if (!qword_1EE1A4940)
      {
        v21 = re::ecs2::allocInfo_SceneUnderstandingComponent(v20);
        qword_1EE1A4940 = v21;
        re::ecs2::initInfo_SceneUnderstandingComponent(v21, v22);
      }

      qword_1EE1A4968 = v21;
      __cxa_guard_release(&qword_1EE1A4970);
    }
  }

  v8 = qword_1EE1A4968;
  v9 = *(v8 + 48);
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

  re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  result = re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 1);
  *(re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 1) = re::ecs2::SceneUnderstandingComponent::clone;
  return result;
}

uint64_t re::ecs2::SceneUnderstandingComponent::clone(re::ecs2::SceneUnderstandingComponent *this, const Component *a2)
{
  (*(*re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(&v5);
  v3 = v5;
  uuid_copy((v5 + 25), this + 25);
  *(v3 + 41) = *(this + 41);
  return v3;
}

void re::ecs2::SceneUnderstandingComponent::~SceneUnderstandingComponent(re::ecs2::SceneUnderstandingComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs227SceneUnderstandingComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 2;
    *(a2 + 8) = 0;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs231SceneUnderstandingRootComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs240SceneUnderstandingRenderOptionsComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

double re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doMakeComponent(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::SceneUnderstandingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 48, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CEC3F8;
  *(v3 + 41) = 513;
  *a1 = v3;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CEC4F0;
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

uint64_t re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1A4970, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4970))
  {
    qword_1EE1A4968 = re::internal::getOrCreateInfo("SceneUnderstandingComponent", re::ecs2::allocInfo_SceneUnderstandingComponent, re::ecs2::initInfo_SceneUnderstandingComponent, &qword_1EE1A4940, 0);
    __cxa_guard_release(&qword_1EE1A4970);
  }

  return qword_1EE1A4968;
}

__n128 re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::SceneUnderstandingComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CEC480;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::SceneUnderstandingComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::SceneUnderstandingComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CEC4F0;
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

void *re::ecs2::allocInfo_UIShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_207, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_207))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4BA8, "UIShadowComponent");
    __cxa_guard_release(&_MergedGlobals_207);
  }

  return &unk_1EE1A4BA8;
}

void re::ecs2::initInfo_UIShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x2DCB1E4B43297512;
  v22[1] = "UIShadowComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1A4B80, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4B80);
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
      qword_1EE1A4B88 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isShadowCaster";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A4B90 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "isShadowReceiver";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A4B98 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint64_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "groupId";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x2000000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A4BA0 = v20;
      __cxa_guard_release(&qword_1EE1A4B80);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A4B88;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UIShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UIShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UIShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UIShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217UIShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::ecs2::UIShadowComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE78F0;
  *(v3 + 25) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::UIShadowComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE78F0;
  *(v1 + 25) = 0;
  *(v1 + 32) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs217UIShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_UIShadowService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_208))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4C60, "UIShadowService");
    __cxa_guard_release(&_MergedGlobals_208);
  }

  return &unk_1EE1A4C60;
}

void re::ecs2::initInfo_UIShadowService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x6C339FE3EDD6AE82;
  v6[1] = "UIShadowService";
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
  *(this + 8) = &re::ecs2::initInfo_UIShadowService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::ecs2::UIShadowManager::UIShadowManager(uint64_t a1, uint64_t a2)
{
  *a1 = &unk_1F5CEC560;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 52) = 0u;
  *(a1 + 68) = 0x7FFFFFFFLL;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0x7FFFFFFFLL;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0;
  *(a1 + 164) = 0x7FFFFFFFLL;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  *(a1 + 212) = 0x7FFFFFFFLL;
  *(a1 + 256) = 0;
  *(a1 + 224) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 260) = 0x7FFFFFFFLL;
  *(a1 + 304) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 308) = 0x7FFFFFFFLL;
  *(a1 + 8) = re::ServiceLocator::serviceOrNull<re::RenderManager>(a2);
  *(a1 + 16) = re::ServiceLocator::serviceOrNull<re::TransformService>(a2);
  *(a1 + 24) = re::ServiceLocator::serviceOrNull<re::ecs2::CARESortingService>(a2);
  return a1;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::CARESortingService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::CARESortingService>(BOOL)::info = re::ecs2::introspect_CARESortingService(0);
  }

  v2 = re::introspect<re::ecs2::CARESortingService>(BOOL)::info;
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

void re::ecs2::UIShadowManager::update(re::ecs2::UIShadowManager *this)
{
  if (!*(this + 1))
  {
    return;
  }

  v1 = this;
  if (!*(this + 2) || !*(this + 27) && !*(this + 39))
  {
    return;
  }

  v2 = *(this + 28);
  if (v2)
  {
    v3 = 0;
    v4 = (*(this + 12) + 8);
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
        LODWORD(v3) = *(this + 28);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  v6 = *(this + 28);
  while (v3 != v2)
  {
    v7 = *(*(v1 + 12) + 24 * v3 + 16);
    v185.i64[0] = v7[39];
    v8 = re::ecs2::EntityComponentCollection::get((v7 + 6), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v9 = v8;
    v171[0] = v8;
    if (v8)
    {
      v10 = (v8 + 8);
    }

    v11 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 224, &v185);
    v12 = 0uLL;
    if (v11)
    {
      v13 = *v11;
      v175.i64[0] = v13;
      if (v13 != v9[4])
      {
        re::ecs2::UIShadowManager::removeFromShadowGroup(this, v7, v13);
        v12 = 0uLL;
        if (*(this + 22))
        {
          v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v175.i64[0] ^ (v175.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v175.i64[0] ^ (v175.i64[0] >> 30))) >> 27));
          v15 = *(*(this + 23) + 4 * ((v14 ^ (v14 >> 31)) % *(this + 50)));
          if (v15 != 0x7FFFFFFF)
          {
            v16 = *(this + 24);
            while (*(v16 + 120 * v15 + 8) != v175.i64[0])
            {
              v15 = *(v16 + 120 * v15) & 0x7FFFFFFF;
              if (v15 == 0x7FFFFFFF)
              {
                goto LABEL_23;
              }
            }

            re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 128, &v175);
            v12 = 0uLL;
          }
        }
      }
    }

LABEL_23:
    *v176 = v12;
    *&v176[16] = v12;
    v175 = v12;
    *v178 = v12;
    *&v178[16] = v12;
    v177 = v12;
    *&v176[20] = 0x7FFFFFFF;
    *&v178[20] = 0x7FFFFFFF;
    v191 = 0uLL;
    *&v192 = 0;
    v17 = v9[4];
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v17 ^ (v17 >> 30))) >> 27));
    re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v191, this + 176, v17, v18 ^ (v18 >> 31));
    if (HIDWORD(v191) == 0x7FFFFFFF)
    {
      v19 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 176, DWORD2(v191), v191);
      v20 = v9[4];
      *(v19 + 16) = 0u;
      v21 = v19 + 16;
      *(v19 + 8) = v20;
      *(v19 + 56) = 0;
      v175 = 0u;
      *(v19 + 32) = 0;
      *v176 = 0;
      *(v19 + 40) = xmmword_1E3058120;
      *&v176[8] = xmmword_1E3058120;
      *(v19 + 104) = 0;
      *(v19 + 64) = 0u;
      v177 = 0u;
      *(v19 + 80) = 0;
      *v178 = 0;
      *(v19 + 88) = xmmword_1E3058120;
      *&v178[8] = xmmword_1E3058120;
      ++*(this + 54);
    }

    else
    {
      v21 = *(this + 24) + 120 * HIDWORD(v191) + 16;
    }

    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v177);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(&v175);
    if (*(v9 + 25) == 1)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::add(v21, v171);
    }

    if (*(v9 + 26) == 1)
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::add(v21 + 48, v171);
      v9 = v171[0];
    }

    v175.i64[0] = v7[39];
    v22 = v9 + 4;
    v1 = this;
    re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 224, &v175, v22);
    v23 = v171[0];
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 128, v171[0] + 4);
    if (v23)
    {
    }

    v6 = *(this + 28);
    if (v6 <= v3 + 1)
    {
      v24 = v3 + 1;
    }

    else
    {
      v24 = *(this + 28);
    }

    while (v24 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 12) + 24 * v3 + 8) & 0x80000000) != 0)
      {
        goto LABEL_39;
      }
    }

    LODWORD(v3) = v24;
LABEL_39:
    ;
  }

  if (v6)
  {
    v25 = 0;
    v26 = (*(v1 + 12) + 8);
    while (1)
    {
      v27 = *v26;
      v26 += 6;
      if (v27 < 0)
      {
        break;
      }

      if (v6 == ++v25)
      {
        LODWORD(v25) = v6;
        break;
      }
    }
  }

  else
  {
    LODWORD(v25) = 0;
  }

  if (v25 != v6)
  {
    v31 = vdup_n_s32(0x45312A55u);
    while (1)
    {
      v32 = *(*(v1 + 12) + 24 * v25 + 16);
      v33 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v34 = re::ecs2::EntityComponentCollection::get((v32 + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      if (!v34)
      {
        break;
      }

      if (*(v33 + 26) == 1)
      {
        v175 = xmmword_1E3047670;
        *v176 = xmmword_1E3047680;
        *&v176[16] = xmmword_1E30476A0;
        v177 = xmmword_1E30474D0;
        *v178 = xmmword_1E3047670;
        *&v178[16] = xmmword_1E3047680;
        v179 = xmmword_1E30476A0;
        v180 = xmmword_1E30474D0;
        v182 = 0u;
        memset(v183, 0, 28);
        *(&v183[1] + 12) = 0x7FFFFFFFLL;
        v181 = vcvt_u32_f32(vmul_f32(v34[6], v31));
        re::TextureManager::createRenderTarget(*(*(v1 + 1) + 56), v181.u32[0], v181.u32[1], 70, 1u, "textureUIShadowColor", 7, 32, v171);
        re::TextureManager::registerTexture(*(*(v1 + 1) + 56), v171, &v185);
        v35 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(*(v1 + 1) + 24), *(v32 + 312));
        v184 = 0x6991F1236A9A01B4;
        re::MaterialParameterBlock::setTextureHandle(v35, &v184, &v185, &v191);
        *&v191 = 0;
        NS::SharedPtr<MTL::Buffer>::operator=(&v182, v171);
        re::TextureHandle::invalidate(&v185);
        if (v171[0])
        {
        }

        v185.i64[0] = *(v32 + 312);
        v191 = 0uLL;
        *&v192 = 0;
        v36 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v185.i64[0] ^ (v185.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v185.i64[0] ^ (v185.i64[0] >> 30))) >> 27));
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v191, v1 + 272, v185.i64[0], v36 ^ (v36 >> 31));
        v37 = HIDWORD(v191);
        if (HIDWORD(v191) == 0x7FFFFFFF)
        {
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long,re::UIShadowRenderData::ReceiverData const&>(v1 + 272, v191, DWORD2(v191), &v185, &v175);
        }

        else
        {
          ++*(v1 + 78);
          v39 = *(v1 + 36) + 224 * v37;
          v40 = v181;
          v41 = *&v178[16];
          v42 = v180;
          *(v39 + 112) = v179;
          *(v39 + 128) = v42;
          *(v39 + 96) = v41;
          v43 = *v176;
          v44 = *&v176[16];
          v45 = *v178;
          *(v39 + 64) = v177;
          *(v39 + 80) = v45;
          *(v39 + 32) = v43;
          *(v39 + 48) = v44;
          *(v39 + 16) = v175;
          *(v39 + 144) = v40;
          NS::SharedPtr<MTL::Buffer>::operator=((v39 + 152), &v182);
          v46 = v39 + 160;
          v1 = this;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(v46, &v182 + 8);
        }

        re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v182 + 1);
        if (v182)
        {
        }
      }

      else
      {
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 272, *(v32 + 312));
      }

      v38 = *(v1 + 1);
      if (*(v33 + 25) != 1)
      {
        goto LABEL_71;
      }

      v47 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(*(v38 + 24), *(v32 + 312));
      if ((atomic_load_explicit(&qword_1EE1A4C48, memory_order_acquire) & 1) == 0)
      {
        v51 = __cxa_guard_acquire(&qword_1EE1A4C48);
        if (v51)
        {
          qword_1EE1A4C40 = re::hashString(v51, v52);
          __cxa_guard_release(&qword_1EE1A4C48);
        }
      }

      v48 = qword_1EE1A4C40;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v47, v48, v48, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v49 = qword_1EE1A4C40;
      if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
      }

      re::MaterialParameterBlock::addPassTechniqueMapping(v47, v49, v49, re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash);
LABEL_72:
      v50 = *(v1 + 28);
      if (v50 <= v25 + 1)
      {
        v50 = v25 + 1;
      }

      while (v50 - 1 != v25)
      {
        LODWORD(v25) = v25 + 1;
        if ((*(*(v1 + 12) + 24 * v25 + 8) & 0x80000000) != 0)
        {
          goto LABEL_78;
        }
      }

      LODWORD(v25) = v50;
LABEL_78:
      if (v25 == v6)
      {
        goto LABEL_47;
      }
    }

    re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 272, *(v32 + 312));
    v38 = *(v1 + 1);
LABEL_71:
    re::ecs2::UIShadowManager::clearShadowCasterRenderData(*(v38 + 24), *(v32 + 312));
    goto LABEL_72;
  }

LABEL_47:
  v173 = 0;
  *v171 = 0u;
  v172 = 0u;
  v174 = 0x7FFFFFFFLL;
  re::RenderManager::perFrameAllocator(*(v1 + 1));
  v167 = *(v1 + 40);
  if (v167)
  {
    v28 = 0;
    v29 = (*(v1 + 18) + 8);
    while (1)
    {
      v30 = *v29;
      v29 += 6;
      if (v30 < 0)
      {
        break;
      }

      if (v167 == ++v28)
      {
        LODWORD(v28) = *(v1 + 40);
        break;
      }
    }
  }

  else
  {
    LODWORD(v28) = 0;
  }

  if (v28 != v167)
  {
    v53 = &unk_1EE187000;
    v54 = *(v1 + 40);
    do
    {
      v55 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v1 + 176, *(*(v1 + 18) + 24 * v28 + 16));
      if (!v55)
      {
        goto LABEL_159;
      }

      v56 = v55;
      v168 = *(v55 + 80);
      if (v168)
      {
        v57 = 0;
        v58 = (*(v55 + 64) + 8);
        while (1)
        {
          v59 = *v58;
          v58 += 6;
          if (v59 < 0)
          {
            break;
          }

          if (v168 == ++v57)
          {
            LODWORD(v57) = *(v55 + 80);
            break;
          }
        }
      }

      else
      {
        LODWORD(v57) = 0;
      }

      if (v57 == v168)
      {
        goto LABEL_159;
      }

      do
      {
        v60 = *(*(v56 + 64) + 24 * v57 + 16);
        if (v60)
        {
          v61 = (v60 + 8);
        }

        v170 = v60;
        v62 = *(v60 + 16);
        v63 = re::ecs2::EntityComponentCollection::get((v62 + 6), v53[474]);
        v64 = v62[39];
        v65 = v64 ^ (v64 >> 30);
        if (!v63)
        {
          v175 = xmmword_1E3047670;
          *v176 = xmmword_1E3047680;
          *&v176[16] = xmmword_1E30476A0;
          v177 = xmmword_1E30474D0;
          *v178 = xmmword_1E3047670;
          *&v178[16] = xmmword_1E3047680;
          v179 = xmmword_1E30476A0;
          v180 = xmmword_1E30474D0;
          v181 = 0x6400000064;
          v182 = 0u;
          memset(v183, 0, 40);
          HIDWORD(v183[1]) = 0x7FFFFFFF;
          v130 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v65) ^ ((0xBF58476D1CE4E5B9 * v65) >> 27));
          v131 = v130 ^ (v130 >> 31);
          if (v171[0])
          {
            v132 = v131 % DWORD2(v172);
            v133 = *(v171[1] + v132);
            if (v133 != 0x7FFFFFFF)
            {
              while (*(v172 + 224 * v133 + 8) != v64)
              {
                LODWORD(v133) = *(v172 + 224 * v133) & 0x7FFFFFFF;
                if (v133 == 0x7FFFFFFF)
                {
                  goto LABEL_110;
                }
              }

              goto LABEL_111;
            }
          }

          else
          {
            LODWORD(v132) = 0;
          }

LABEL_110:
          v134 = re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v171, v132, v131);
          *(v134 + 8) = v64;
          v135 = v180;
          *(v134 + 112) = v179;
          *(v134 + 128) = v135;
          *(v134 + 144) = v181;
          v136 = v177;
          *(v134 + 48) = *&v176[16];
          *(v134 + 64) = v136;
          v137 = *&v178[16];
          *(v134 + 80) = *v178;
          *(v134 + 96) = v137;
          v138 = *v176;
          *(v134 + 16) = v175;
          *(v134 + 32) = v138;
          *(v134 + 200) = 0;
          *(v134 + 152) = v182;
          v182 = 0u;
          v139 = *(&v183[0] + 1);
          *(v134 + 168) = *&v183[0];
          *(v134 + 176) = v139;
          v183[0] = 0u;
          *(v134 + 184) = v183[1];
          v183[1] = xmmword_1E3058120;
          ++HIDWORD(v174);
LABEL_111:
          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v182 + 1);
          if (v182)
          {
          }

          goto LABEL_150;
        }

        v66 = v63;
        v67 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * v65) ^ ((0xBF58476D1CE4E5B9 * v65) >> 27));
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v175, this + 272, v62[39], v67 ^ (v67 >> 31));
        v68 = v175.u32[3];
        if (v175.i32[3] != 0x7FFFFFFF)
        {
          v69 = *(this + 36);
          re::TransformService::worldTransform(*(this + 2), v62, 0, &v185);
          v70 = 0;
          v71 = v186;
          v72 = v187;
          v73 = v71 + v71;
          v74 = v72 + v72;
          v75 = v188;
          v76 = v75 + v75;
          v77 = v71 * (v71 + v71);
          v78 = v72 * (v72 + v72);
          v79 = v75 * (v75 + v75);
          v80 = v73 * v187;
          v81 = v73 * v188;
          v82 = v74 * v188;
          v83 = v74 * v189;
          v84 = v76 * v189;
          v85.i32[3] = 0;
          v85.f32[0] = 1.0 - (v78 + v79);
          v85.f32[1] = (v73 * v187) + v84;
          v85.f32[2] = (v73 * v188) - v83;
          v86 = v73 * v189;
          v87 = 1.0 - (v77 + v79);
          v88.i32[3] = 0;
          v88.f32[0] = v80 - v84;
          v88.f32[1] = v87;
          v88.f32[2] = v82 + v86;
          v89.i32[3] = 0;
          v89.f32[0] = v81 + v83;
          v89.f32[1] = v82 - v86;
          v89.f32[2] = 1.0 - (v77 + v78);
          v90 = vmulq_n_f32(v85, v185.f32[0]);
          v91 = vmulq_laneq_f32(v89, v185, 2);
          v92 = v185.f32[0];
          v93 = *(v66 + 132);
          v94 = *(v66 + 136);
          v95 = HIDWORD(v185.i64[0]);
          v96 = v190;
          v97 = v190;
          v97.i32[3] = 1.0;
          *&v98 = 0;
          *(&v98 + 2) = 1.0 / v185.f32[2];
          HIDWORD(v98) = 1.0;
          v191 = xmmword_1E3047670;
          v192 = xmmword_1E3047680;
          v99 = vmulq_n_f32(v88, v185.f32[1]);
          v193 = xmmword_1E30476A0;
          v194 = v98;
          do
          {
            *(&v175 + v70) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v90, COERCE_FLOAT(*(&v191 + v70))), v99, *(&v191 + v70), 1), v91, *(&v191 + v70), 2), v97, *(&v191 + v70), 3);
            v70 += 16;
          }

          while (v70 != 64);
          v100 = (v69 + 224 * v68);
          v101 = v177;
          v102 = vmulq_f32(v175, 0);
          v103 = vaddq_f32(v177, vmlaq_f32(vaddq_f32(*v176, v102), 0, *&v176[16]));
          v104 = vaddq_f32(v177, vmlaq_f32(vmlaq_f32(v102, 0, *v176), 0, *&v176[16]));
          v105 = vsubq_f32(vdivq_f32(v103, vdupq_laneq_s32(v103, 3)), vdivq_f32(v104, vdupq_laneq_s32(v104, 3)));
          v106 = vmulq_f32(v105, v105);
          *&v107 = v106.f32[2] + vaddv_f32(*v106.f32);
          *v106.f32 = vrsqrte_f32(v107);
          *v106.f32 = vmul_f32(*v106.f32, vrsqrts_f32(v107, vmul_f32(*v106.f32, *v106.f32)));
          v108 = vmulq_n_f32(v105, vmul_f32(*v106.f32, vrsqrts_f32(v107, vmul_f32(*v106.f32, *v106.f32))).f32[0]);
          v109 = vsubq_f32(v177, v96);
          v110 = vmulq_f32(v109, v109);
          *&v111 = v110.f32[2] + vaddv_f32(*v110.f32);
          *v110.f32 = vrsqrte_f32(v111);
          *v110.f32 = vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32)));
          v112 = vmulq_n_f32(v109, vmul_f32(*v110.f32, vrsqrts_f32(v111, vmul_f32(*v110.f32, *v110.f32))).f32[0]);
          v113 = vextq_s8(vuzp1q_s32(v112, v112), v112, 0xCuLL);
          v114 = vmlaq_f32(vmulq_f32(v113, vnegq_f32(v108)), v112, vextq_s8(vuzp1q_s32(v108, v108), v108, 0xCuLL));
          v115 = vextq_s8(vuzp1q_s32(v114, v114), v114, 0xCuLL);
          v116 = vmulq_f32(v114, v114);
          v103.f32[0] = v116.f32[1] + (v116.f32[2] + v116.f32[0]);
          *v116.f32 = vrsqrte_f32(v103.u32[0]);
          *v116.f32 = vmul_f32(*v116.f32, vrsqrts_f32(v103.u32[0], vmul_f32(*v116.f32, *v116.f32)));
          v117 = vmulq_n_f32(v115, vmul_f32(*v116.f32, vrsqrts_f32(v103.u32[0], vmul_f32(*v116.f32, *v116.f32))).f32[0]);
          v118 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v117, v117), v117, 0xCuLL), vnegq_f32(v112)), v117, v113);
          v113.i64[0] = __PAIR64__(v118.u32[0], v117.u32[1]);
          v103.i64[0] = __PAIR64__(v118.u32[1], v117.u32[2]);
          v119 = vmulq_f32(v177, v117);
          v117.i32[1] = v118.i32[2];
          v117.i64[1] = v112.u32[0];
          v100[1] = v117;
          v120 = v100 + 1;
          v117.i32[0] = 0;
          v117.f32[1] = 2.0 / (v94 * *&v95);
          *&v121 = 2.0 / (v93 * v92);
          v122 = vmulq_f32(v101, vextq_s8(vuzp1q_s32(v118, v118), v118, 0xCuLL));
          v123 = vadd_f32(vzip1_s32(*v119.i8, *v122.i8), vzip2_s32(*v119.i8, *v122.i8));
          v124 = vextq_s8(v122, v122, 8uLL);
          *v124.f32 = vadd_f32(vzip1_s32(*&vextq_s8(v119, v119, 8uLL), *v124.f32), v123);
          v125 = vmulq_f32(v101, v112);
          v113.i64[1] = v112.u32[1];
          v103.i64[1] = v112.u32[2];
          v124.i64[0] = vnegq_f32(v124).u64[0];
          v124.f32[2] = -(v125.f32[2] + vaddv_f32(*v125.f32));
          v124.i32[3] = 1.0;
          v120[5] = v117.u64[0];
          v120[6] = xmmword_1E306DD20;
          v120[7] = xmmword_1E3086070;
          v120[1] = v113;
          v120[2] = v103;
          v120[3] = v124;
          v120[4] = v121;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(&v120[9]);
          v126 = *(v56 + 32);
          if (v126)
          {
            v127 = 0;
            v128 = (*(v56 + 16) + 8);
            while (1)
            {
              v129 = *v128;
              v128 += 6;
              if (v129 < 0)
              {
                break;
              }

              if (v126 == ++v127)
              {
                LODWORD(v127) = *(v56 + 32);
                break;
              }
            }
          }

          else
          {
            LODWORD(v127) = 0;
          }

          if (v127 != v126)
          {
            v140 = *(v56 + 32);
            do
            {
              v141 = *(*(*(*(v56 + 16) + 24 * v127 + 16) + 16) + 312);
              v175.i64[0] = v141;
              v142 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v141 ^ (v141 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v141 ^ (v141 >> 30))) >> 27));
              v143 = v142 ^ (v142 >> 31);
              v144 = v120[10].u32[2];
              if (v144)
              {
                v145 = v143 % v144;
                v146 = *(v120[9].i64[1] + 4 * (v143 % v144));
                if (v146 != 0x7FFFFFFF)
                {
                  v147 = v120[10].i64[0];
                  while (*(v147 + 24 * v146 + 16) != v141)
                  {
                    LODWORD(v146) = *(v147 + 24 * v146 + 8) & 0x7FFFFFFF;
                    if (v146 == 0x7FFFFFFF)
                    {
                      goto LABEL_123;
                    }
                  }

                  goto LABEL_124;
                }
              }

              else
              {
                LODWORD(v145) = 0;
              }

LABEL_123:
              re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(&v120[9], v145, v143, &v175, &v175);
              ++v120[11].i32[2];
              v140 = *(v56 + 32);
LABEL_124:
              if (v140 <= v127 + 1)
              {
                v148 = v127 + 1;
              }

              else
              {
                v148 = v140;
              }

              while (v148 - 1 != v127)
              {
                LODWORD(v127) = v127 + 1;
                if ((*(*(v56 + 16) + 24 * v127 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_131;
                }
              }

              LODWORD(v127) = v148;
LABEL_131:
              ;
            }

            while (v127 != v126);
          }

          v175.i64[0] = v62[39];
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(&v120[9], &v175);
          v149 = *(this + 3);
          if (v149)
          {
            (*(*v149 + 48))(&v175);
            if (*v176)
            {
              v150 = *&v176[16];
              v151 = 8 * *v176;
              do
              {
                if (*(*v150 + 312) == v62[39])
                {
                  break;
                }

                *&v191 = *(*v150 + 312);
                re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(&v120[9], &v191);
                v150 += 8;
                v151 -= 8;
              }

              while (v151);
            }

            if (v175.i64[0] && *&v176[16])
            {
              (*(*v175.i64[0] + 40))();
            }
          }

          v175 = *v120;
          v152 = v120[1];
          v153 = v120[2];
          v154 = v120[4];
          v177 = v120[3];
          *v178 = v154;
          *v176 = v152;
          *&v176[16] = v153;
          v155 = v120[5];
          v156 = v120[6];
          v157 = v120[7];
          v181 = *v120[8].f32;
          v179 = v156;
          v180 = v157;
          *&v178[16] = v155;
          *&v182 = v120[8].i64[1];
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(&v182 + 8, &v120[9]);
          v158 = v62[39];
          *&v191 = v158;
          v159 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v158 ^ (v158 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v158 ^ (v158 >> 30))) >> 27));
          v160 = v159 ^ (v159 >> 31);
          if (v171[0])
          {
            v161 = v160 % DWORD2(v172);
            v162 = *(v171[1] + v161);
            v53 = &unk_1EE187000;
            v163 = v170;
            if (v162 != 0x7FFFFFFF)
            {
              while (*(v172 + 224 * v162 + 8) != v158)
              {
                LODWORD(v162) = *(v172 + 224 * v162) & 0x7FFFFFFF;
                if (v162 == 0x7FFFFFFF)
                {
                  goto LABEL_146;
                }
              }

LABEL_147:
              re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v182 + 1);
              if (v182)
              {
              }

              if (!v163)
              {
                goto LABEL_151;
              }

              goto LABEL_150;
            }
          }

          else
          {
            LODWORD(v161) = 0;
            v53 = &unk_1EE187000;
            v163 = v170;
          }

LABEL_146:
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long,re::UIShadowRenderData::ReceiverData const&>(v171, v160, v161, &v191, &v175);
          goto LABEL_147;
        }

LABEL_150:

LABEL_151:
        v164 = *(v56 + 80);
        if (v164 <= v57 + 1)
        {
          v164 = v57 + 1;
        }

        while (v164 - 1 != v57)
        {
          LODWORD(v57) = v57 + 1;
          if ((*(*(v56 + 64) + 24 * v57 + 8) & 0x80000000) != 0)
          {
            goto LABEL_157;
          }
        }

        LODWORD(v57) = v164;
LABEL_157:
        ;
      }

      while (v57 != v168);
      v54 = *(this + 40);
LABEL_159:
      if (v54 <= v28 + 1)
      {
        v165 = v28 + 1;
      }

      else
      {
        v165 = v54;
      }

      v1 = this;
      while (v165 - 1 != v28)
      {
        LODWORD(v28) = v28 + 1;
        if ((*(*(this + 18) + 24 * v28 + 8) & 0x80000000) != 0)
        {
          goto LABEL_167;
        }
      }

      LODWORD(v28) = v165;
LABEL_167:
      ;
    }

    while (v28 != v167);
  }

  v166 = **(re::RenderFrameBox::get((*(*(v1 + 1) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL) + 320);
  (*(v166 + 1160))();
  re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::clear(v1 + 80);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(v1 + 128);
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v171);
}

uint64_t *re::ecs2::UIShadowManager::clearShadowCasterRenderData(re::ecs2::UIShadowManager *this, re::ecs2::Entity *a2)
{
  result = re::MaterialManager::getSystemMaterialParameterBlock(this, a2);
  if (result)
  {
    v3 = result;
    if ((atomic_load_explicit(&qword_1EE1A4C58, memory_order_acquire) & 1) == 0)
    {
      v7 = __cxa_guard_acquire(&qword_1EE1A4C58);
      if (v7)
      {
        qword_1EE1A4C50 = re::hashString(v7, v8);
        __cxa_guard_release(&qword_1EE1A4C58);
      }
    }

    v4 = qword_1EE1A4C50;
    if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
    }

    re::MaterialParameterBlock::removePassTechniqueMapping(v3, v4, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
    v5 = qword_1EE1A4C50;
    if (re::MaterialParameterTable::kFadeNameHash(void)::once != -1)
    {
      dispatch_once(&re::MaterialParameterTable::kFadeNameHash(void)::once, &__block_literal_global_4_1);
    }

    v6 = re::MaterialParameterTable::kFadeNameHash(void)::_kFadeNameHash;

    return re::MaterialParameterBlock::removePassTechniqueMapping(v3, v5, v6);
  }

  return result;
}

unint64_t re::hashString(re *this, const char *a2)
{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("UIShadowCaster", 0xEuLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Occlusion", 9uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("StencilIncrement", 0x10uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Camera", 6uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("PostProcess", 0xBuLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("Opaque", 6uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("RenderGraphDataPipeData", 0x17uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

{
  v3[2] = *MEMORY[0x1E69E9840];
  MurmurHash3_x64_128("VisualProxyHighFidelity", 0x17uLL, 0, v3);
  return (v3[1] + (v3[0] << 6) + (v3[0] >> 2) - 0x61C8864680B583E9) ^ v3[0];
}

uint64_t re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v5, a1, a2, v3 ^ (v3 >> 31));
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 120 * v6 + 16;
  }
}

void re::ecs2::UIShadowManager::removeFromShadowGroup(re::ecs2::UIShadowManager *this, re::ecs2::Entity *a2, unint64_t a3)
{
  v16 = a3;
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v6 = v5;
  if (v5)
  {
    v7 = (v5 + 8);
  }

  v8 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 176, a3);
  if (v8)
  {
    v9 = v8;
    v10 = re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::remove(v8, v6);
    re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::remove(v9 + 48, v6);
    if (*(v9 + 28) || *(v9 + 76))
    {
      if (v10)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 128, &v16);
      }
    }

    else
    {
      v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v17, this + 176, a3, v11 ^ (v11 >> 31));
      v12 = v19;
      if (v19 != 0x7FFFFFFF)
      {
        v13 = *(this + 24);
        v14 = *(v13 + 120 * v19) & 0x7FFFFFFF;
        if (v20 == 0x7FFFFFFF)
        {
          *(*(this + 23) + 4 * v18) = v14;
        }

        else
        {
          *(v13 + 120 * v20) = *(v13 + 120 * v20) & 0x80000000 | v14;
        }

        re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v13, v12);
        v15 = *(this + 54);
        *(*(this + 24) + 120 * v12) = *(*(this + 24) + 120 * v12) & 0x80000000 | *(this + 53);
        --*(this + 51);
        *(this + 53) = v12;
        *(this + 54) = v15 + 1;
      }
    }
  }

  if (v6)
  {
  }
}

void re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::add(uint64_t a1, uint64_t *a2)
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
      re::HashSetBase<re::SharedPtr<re::ResourceSharingManager::Subscription>,re::SharedPtr<re::ResourceSharingManager::Subscription>,re::internal::ValueAsKey<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::Hash<re::SharedPtr<re::ResourceSharingManager::Subscription>>,re::EqualTo<re::SharedPtr<re::ResourceSharingManager::Subscription>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::UIShadowComponent>,re::SharedPtr<re::ecs2::UIShadowComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::Hash<re::SharedPtr<re::ecs2::UIShadowComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::UIShadowComponent>>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = (v4 ^ (v4 >> 31)) % v2;
  v6 = *(a1 + 8);
  v7 = *(v6 + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  v9 = *(a1 + 16);
  if (*(v9 + 24 * v7 + 16) != a2)
  {
    while (1)
    {
      v10 = v7;
      v11 = *(v9 + 24 * v7 + 8);
      v7 = v11 & 0x7FFFFFFF;
      if ((v11 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v9 + 24 * v7 + 16) == a2)
      {
        *(v9 + 24 * v10 + 8) = *(v9 + 24 * v10 + 8) & 0x80000000 | *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v6 + 4 * v5) = *(v9 + 24 * v7 + 8) & 0x7FFFFFFF;
LABEL_10:
  v12 = *(a1 + 16) + 24 * v7;
  v13 = *(v12 + 8);
  if (v13 < 0)
  {
    *(v12 + 8) = v13 & 0x7FFFFFFF;
    v14 = *(v12 + 16);
    if (v14)
    {

      *(v12 + 16) = 0;
    }
  }

  v15 = *(a1 + 16) + 24 * v7;
  v16 = *(a1 + 40);
  *(v15 + 8) = *(v15 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v7;
  *(a1 + 40) = v16 + 1;
  return 1;
}

void re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v8, a1, a2, v3 ^ (v3 >> 31));
  v4 = v10;
  if (v10 != 0x7FFFFFFF)
  {
    v5 = *(a1 + 16);
    v6 = *(v5 + 224 * v10) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * v9) = v6;
    }

    else
    {
      *(v5 + 224 * v11) = *(v5 + 224 * v11) & 0x80000000 | v6;
    }

    re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(v5, v4);
    v7 = *(a1 + 40);
    *(*(a1 + 16) + 224 * v4) = *(*(a1 + 16) + 224 * v4) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v4;
    *(a1 + 40) = v7 + 1;
  }
}

uint64_t (***re::ecs2::UIShadowManager::willAddSceneToECSService(re::ecs2::UIShadowManager *this, re::EventBus **a2))(void)
{
  v56 = *MEMORY[0x1E69E9840];
  v27 = a2;
  v3 = a2[36];
  v46 = 0uLL;
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v4 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 32, &v27, &v46);
  v5 = v46.n128_u64[0];
  if (v46.n128_u64[0] && (v47 & 1) == 0)
  {
    v5 = (*(*v46.n128_u64[0] + 40))(v46.n128_u64[0], v49);
  }

  v41 = re::globalAllocators(v5)[2];
  v6 = (*(*v41 + 32))(v41, 32, 0);
  *v6 = &unk_1F5CEC5D0;
  v6[1] = this;
  v6[2] = re::ecs2::UIShadowManager::didActivateUIShadowComponent;
  v6[3] = 0;
  v42 = v6;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v3, v40, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v7;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v8 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v40);
  v38 = re::globalAllocators(v8)[2];
  v9 = (*(*v38 + 32))(v38, 32, 0);
  *v9 = &unk_1F5CEC628;
  v9[1] = this;
  v9[2] = re::ecs2::UIShadowManager::didChangeUIShadowComponent;
  v9[3] = 0;
  v39 = v9;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, v37, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v10;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v37);
  v35 = re::globalAllocators(v11)[2];
  v12 = (*(*v35 + 32))(v35, 32, 0);
  *v12 = &unk_1F5CEC680;
  v12[1] = this;
  v12[2] = re::ecs2::UIShadowManager::willDeactivateUIShadowComponent;
  v12[3] = 0;
  v36 = v12;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v3, v34, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v13;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v14 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v34);
  v32 = re::globalAllocators(v14)[2];
  v15 = (*(*v32 + 32))(v32, 32, 0);
  *v15 = &unk_1F5CEC6D8;
  v15[1] = this;
  v15[2] = re::ecs2::UIShadowManager::willRemoveUIShadowComponent;
  v15[3] = 0;
  v33 = v15;
  v46.n128_u64[0] = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v31, re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
  v46.n128_u64[1] = v16;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v31);
  v18 = re::globalAllocators(v17)[2];
  v29 = v18;
  v19 = (*(*v18 + 32))(v18, 32, 0);
  *v19 = &unk_1F5CEC730;
  v19[1] = this;
  v19[2] = re::ecs2::UIShadowManager::didDirtyWorldTransform;
  v19[3] = 0;
  v30 = v19;
  v44 = v18;
  v45 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(v43, v28);
  v20 = re::EventBus::getTypeId<re::RenderingWorldTransformCacheDirtyEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(v3, v20);
  v54 = v44;
  v55 = 0;
  v22 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(v53, v43);
  v51 = re::globalAllocators(v22)[2];
  v52 = 0;
  v46.n128_u64[0] = &unk_1F5CEC798;
  v49 = v54;
  v50 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(&v46.n128_i64[1], v53);
  v52 = &v46;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(v53);
  v23 = re::EventBus::EventInfo::addSubscription(EventInfo, &v46, 0, 0);
  v25 = v24;
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(&v46);
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(v43);
  v46.n128_u64[0] = v23;
  v46.n128_u64[1] = v25;
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(v4, &v46);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(v28);
}

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + (HIDWORD(v10) << 6) + 16;
  }

  v7 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::DynamicOverflowArray(v7 + 16, a3);
  ++*(a1 + 40);
  return result;
}

__n128 re::DynamicOverflowArray<RESubscriptionHandle,1ul>::add(uint64_t a1, __n128 *a2)
{
  re::DynamicOverflowArray<RESubscriptionHandle,1ul>::ensureCapacity(a1);
  if (*(a1 + 16))
  {
    v4 = a1 + 24;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  result = *a2;
  *(v4 + 16 * (*(a1 + 8))++) = *a2;
  *(a1 + 16) += 2;
  return result;
}

uint64_t re::ecs2::UIShadowManager::didDirtyWorldTransform(uint64_t a1, uint64_t a2)
{
  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v4)
    {
      if (*(v4 + 25) == 1)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 128, (v4 + 32));
      }
    }
  }

  return 0;
}

BOOL re::ecs2::UIShadowManager::willRemoveSceneFromECSService(re::ecs2::UIShadowManager *this, re::ecs2::Scene *a2)
{
  v11 = a2;
  v3 = *(a2 + 36);
  v4 = re::HashTable<re::ecs2::Entity *,re::SortingPlane,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::tryGet(this + 32, &v11);
  if (*(v4 + 16))
  {
    v5 = (v4 + 24);
  }

  else
  {
    v5 = *(v4 + 32);
  }

  v6 = *(v4 + 8);
  if (v6)
  {
    v7 = &v5[2 * v6];
    do
    {
      v8 = *v5;
      v9 = v5[1];
      v5 += 2;
      re::EventBus::unsubscribe(v3, v8, v9);
    }

    while (v5 != v7);
  }

  return re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 32, &v11);
}

BOOL re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::findEntry<re::AssetType const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(a1, v5);
}

uint64_t re::ecs2::UIShadowManager::didChangeUIShadow(uint64_t this, unint64_t a2)
{
  v8 = a2;
  if ((*(a2 + 304) & 1) != 0 && (*(a2 + 387) & 1) == 0)
  {
    v2 = this;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = v3 ^ (v3 >> 31);
    v5 = *(this + 104);
    if (!v5 || (v5 = v4 % v5, v6 = *(*(this + 88) + 4 * v5), v6 == 0x7FFFFFFF))
    {
LABEL_5:
      this = re::HashSetBase<re::ecs2::Entity *,re::ecs2::Entity *,re::internal::ValueAsKey<re::ecs2::Entity *>,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>::addAsCopy(this + 80, v5, v4, &v8, &v8);
      ++*(v2 + 120);
      return this;
    }

    v7 = *(this + 96);
    if (*(v7 + 24 * v6 + 16) != a2)
    {
      while (1)
      {
        LODWORD(v6) = *(v7 + 24 * v6 + 8) & 0x7FFFFFFF;
        if (v6 == 0x7FFFFFFF)
        {
          break;
        }

        if (*(v7 + 24 * v6 + 16) == a2)
        {
          return this;
        }
      }

      goto LABEL_5;
    }
  }

  return this;
}

void re::ecs2::UIShadowManager::willRemoveUIShadow(re::ecs2::UIShadowManager *this, re::ecs2::Entity *a2)
{
  v7 = a2;
  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 80, &v7);
  re::ecs2::UIShadowManager::clearShadowCasterRenderData(*(*(this + 1) + 24), *(v7 + 39));
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 272, *(v7 + 39));
  v3 = re::ecs2::EntityComponentCollection::get((v7 + 48), re::ecs2::ComponentImpl<re::ecs2::UIShadowComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v3)
  {
    v4 = v3;
    re::ecs2::UIShadowManager::removeFromShadowGroup(this, v7, *(v3 + 32));
    v6 = *(v7 + 39);
    v5 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 224, &v6);
    if (v5)
    {
      if (*v5 != *(v4 + 32))
      {
        re::ecs2::UIShadowManager::removeFromShadowGroup(this, v7, *v5);
      }
    }
  }
}

void re::ecs2::UIShadowManager::~UIShadowManager(re::ecs2::UIShadowManager *this)
{
  re::ecs2::UIShadowManager::~UIShadowManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 34);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 28);
  re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 22);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 16);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 10);
  re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 4);
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(uint64_t a1, uint64_t a2)
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

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
  }

  return a1;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16) + v6;
      if ((*(v8 + 8) & 0x80000000) != 0)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

double re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
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

void re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 224 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit((v2 + 160));
    v3 = *(v2 + 152);
    if (v3)
    {

      *(v2 + 152) = 0;
    }
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC5D0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC5D0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC628;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC628;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC680;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC680;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC6D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC6D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC730;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::UIShadowManager,REEventHandlerResult (re::ecs2::UIShadowManager::*)(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC730;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(uint64_t a1))(void)
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

double re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(a1[2], v3++);
      }

      while (v3 < *(a1 + 8));
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

double re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::free(uint64_t a1, unsigned int a2)
{
  v2 = a1 + 120 * a2;
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 64));

    return re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit((v2 + 16));
  }

  return result;
}

double re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(uint64_t *a1)
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
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v6 + v4 + 16);
          v3 = *(a1 + 8);
        }

        v4 += 64;
      }

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

uint64_t re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long,re::UIShadowRenderData::ReceiverData const&>(uint64_t a1, unint64_t a2, unsigned int a3, void *a4, uint64_t a5)
{
  v8 = re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, a3, a2);
  *(v8 + 8) = *a4;
  v9 = *(a5 + 80);
  v10 = *(a5 + 96);
  v11 = *(a5 + 112);
  *(v8 + 144) = *(a5 + 128);
  *(v8 + 112) = v10;
  *(v8 + 128) = v11;
  *(v8 + 96) = v9;
  v12 = *(a5 + 16);
  v13 = *(a5 + 32);
  v14 = *(a5 + 64);
  *(v8 + 64) = *(a5 + 48);
  *(v8 + 80) = v14;
  *(v8 + 32) = v12;
  *(v8 + 48) = v13;
  *(v8 + 16) = *a5;
  *(v8 + 152) = *(a5 + 136);
  result = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(v8 + 160, a5 + 144);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 224 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 224 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 224 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 224 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1);
      }
    }

    else if (v4)
    {
      if (*(a2 + 28) <= 3u)
      {
        v5 = 3;
      }

      else
      {
        v5 = *(a2 + 28);
      }

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v32, 0, 36);
          *&v32[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v32, v9, v8);
          v11 = *v32;
          *v32 = *a1;
          *a1 = v11;
          v12 = *&v32[16];
          v13 = *(a1 + 16);
          *&v32[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v32[24];
          *&v32[24] = *(a1 + 24);
          v14 = *&v32[32];
          *(a1 + 24) = v15;
          ++*&v32[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            v18 = (v13 + 152);
            do
            {
              if ((*(v18 - 19) & 0x80000000) != 0)
              {
                v19 = re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v18[7] % *(a1 + 24));
                *(v19 + 8) = *(v18 - 18);
                v20 = *(v18 - 1);
                v21 = *(v18 - 3);
                v22 = *(v18 - 5);
                *(v19 + 96) = *(v18 - 7);
                *(v19 + 112) = v22;
                *(v19 + 128) = v21;
                *(v19 + 144) = v20;
                v23 = *(v18 - 9);
                v24 = *(v18 - 11);
                v25 = *(v18 - 13);
                *(v19 + 32) = *(v18 - 15);
                *(v19 + 48) = v25;
                *(v19 + 64) = v24;
                *(v19 + 80) = v23;
                *(v19 + 16) = *(v18 - 17);
                *(v19 + 152) = *v18;
                *v18 = 0;
                *(v19 + 160) = 0u;
                v19 += 160;
                *(v19 + 32) = 0;
                *(v19 + 16) = 0u;
                *(v19 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v19, v18 + 1);
              }

              ++v17;
              v18 += 28;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v32);
        }
      }

      else
      {
        if (v8)
        {
          v28 = 2 * v7;
        }

        else
        {
          v28 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v26 = *(a1 + 16);
    v27 = *(v26 + 224 * v5);
  }

  else
  {
    v26 = *(a1 + 16);
    v27 = *(v26 + 224 * v5);
    *(a1 + 36) = v27 & 0x7FFFFFFF;
  }

  v29 = v26 + 224 * v5;
  *v29 = v27 | 0x80000000;
  v30 = *(a1 + 8);
  *v29 = *(v30 + 4 * a2) | 0x80000000;
  *(v30 + 4 * a2) = v5;
  *(v29 + 208) = a3;
  ++*(a1 + 28);
  return v26 + 224 * v5;
}

void re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 224 * v10, 16);
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

uint64_t re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + 120 * v6 + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 120 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 120 * v8 + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + 120 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
            v17 = (v13 + 64);
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v17[6] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 7);
                *(v18 + 48) = 0;
                *(v18 + 32) = 0u;
                *(v18 + 16) = 0u;
                *(v18 + 52) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap((v18 + 16), v17 - 6);
                *(v18 + 64) = 0u;
                v18 += 64;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::swap(v18, v17);
              }

              v17 += 15;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 120 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 120 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 120 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 112) = a3;
  ++*(a1 + 28);
  return v19 + 120 * v5;
}

void re::HashTable<unsigned long long,re::ecs2::UIShadowManager::ShadowGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 120 * v10, 16);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(a1, v9);
      re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::move(uint64_t result, uint64_t a2)
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
        v8 = re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::allocEntry(v4, *(v7 + v5 + 56) % *(v4 + 24));
        *(v8 + 8) = *(*(a2 + 16) + v5 + 8);
        result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::DynamicOverflowArray(v8 + 16, *(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 64;
    }
  }

  return result;
}

uint64_t re::DynamicOverflowArray<RESubscriptionHandle,1ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 1;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  if (*(a2 + 16))
  {
    if (*(a2 + 8))
    {
      re::DynamicOverflowArray<RESubscriptionHandle,1ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    *(a1 + 16) = 3;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

void *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 >= *(a1 + 8))
  {
    re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(a1, v4);
    if (*(a2 + 16))
    {
      v7 = (a2 + 24);
    }

    else
    {
      v7 = *(a2 + 32);
    }

    v8 = *(a1 + 8);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = (a1 + 24);
      if (!v8)
      {
LABEL_18:
        if (v9)
        {
          v11 = a1 + 24;
        }

        else
        {
          v11 = *(a1 + 32);
        }

        v12 = *(a1 + 8);
        v13 = (v11 + 16 * v12);
        if (*(a2 + 16))
        {
          v14 = a2 + 24;
        }

        else
        {
          v14 = *(a2 + 32);
        }

        result = memcpy(v13, (v14 + 16 * v12), 16 * (v4 - v12));
        goto LABEL_25;
      }
    }

    else
    {
      v10 = *(a1 + 32);
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    memmove(v10, v7, 16 * v8);
    v9 = *(a1 + 16);
    goto LABEL_18;
  }

  if (*(a2 + 16))
  {
    v5 = (a2 + 24);
  }

  else
  {
    v5 = *(a2 + 32);
  }

  if ((*(a1 + 16) & 1) == 0)
  {
    result = *(a1 + 32);
    if (!v4)
    {
      goto LABEL_25;
    }

    goto LABEL_15;
  }

  result = (a1 + 24);
  if (v4)
  {
LABEL_15:
    result = memmove(result, v5, 16 * v4);
  }

LABEL_25:
  *(a1 + 8) = v4;
  *(a2 + 8) = 0;
  *(a2 + 16) += 4;
  *(a1 + 16) += 2;
  return result;
}

void *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(void *result, unint64_t a2)
{
  v4 = result;
  v5 = *result;
  if (a2 && !v5)
  {
    result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(v4, a2);
    v6 = *(v4 + 4) + 2;
LABEL_4:
    *(v4 + 4) = v6;
    return result;
  }

  v7 = *(result + 4);
  if (v7)
  {
    v8 = 1;
  }

  else
  {
    v8 = result[3];
  }

  if (v8 != a2)
  {
    v9 = result[1];
    if (v9 <= a2 && (a2 > 1 || (v7 & 1) == 0))
    {
      if (a2 < 2)
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

        memcpy(v14, v16, 16 * v9);
        result = (*(*v5 + 40))(v5, v15);
        v6 = *(v4 + 4) | 1;
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
        v10 = (*(*v5 + 32))(*result, 16 * a2, 8);
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

          result = memcpy(v10, v13, 16 * v4[1]);
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

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::ensureCapacity(_anonymous_namespace_ *result)
{
  v1 = result;
  if (*result)
  {
    v2 = *(result + 1);
    if (*(result + 16))
    {
      v3 = 1;
    }

    else
    {
      v3 = *(result + 3);
    }

    if (v2 >= v3)
    {

      return re::DynamicOverflowArray<RESubscriptionHandle,1ul>::growCapacity(result, v2 + 1);
    }
  }

  else
  {
    v4 = *(v1 + 1);
    result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(v1, v4 + 1);
    *(v1 + 4) += 2;
  }

  return result;
}

_anonymous_namespace_ *re::DynamicOverflowArray<RESubscriptionHandle,1ul>::growCapacity(_anonymous_namespace_ *result, unint64_t a2)
{
  v2 = a2;
  v3 = result;
  if (!*result)
  {
    result = re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(v3, v2);
    *(v3 + 4) += 2;
    return result;
  }

  if (*(result + 16))
  {
    if (a2 <= 1)
    {
      return result;
    }

    v5 = 2;
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

  return re::DynamicOverflowArray<RESubscriptionHandle,1ul>::setCapacity(result, a2);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEC798;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CEC798;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEC798;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,re::RenderingWorldTransformCacheDirtyEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CEC798;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,re::RenderingWorldTransformCacheDirtyEvent const&)>::destroyCallable(a1);
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

BOOL re::HashTable<re::ecs2::Scene *,re::DynamicOverflowArray<RESubscriptionHandle,1ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
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
      re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit((v10 + 4));
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

void *re::ecs2::PerformDeformationsSystem::deformerSubsystemTypes@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  if ((atomic_load_explicit(&qword_1EE1A4D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D18))
  {
    qword_1EE1A4D10 = re::ecs2::introspect_MeshOffsetsSystem(0);
    __cxa_guard_release(&qword_1EE1A4D18);
  }

  v4 = qword_1EE1A4D10;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D28))
  {
    qword_1EE1A4D20 = re::ecs2::introspect_MeshSmoothSystem(0);
    __cxa_guard_release(&qword_1EE1A4D28);
  }

  v4 = qword_1EE1A4D20;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D38))
  {
    qword_1EE1A4D30 = re::ecs2::introspect_SkeletalPoseBufferSystem(0);
    __cxa_guard_release(&qword_1EE1A4D38);
  }

  v4 = qword_1EE1A4D30;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D48))
  {
    qword_1EE1A4D40 = re::ecs2::introspect_BlendShapeWeightsBufferSystem(0);
    __cxa_guard_release(&qword_1EE1A4D48);
  }

  v4 = qword_1EE1A4D40;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D58))
  {
    qword_1EE1A4D50 = re::ecs2::introspect_JiggleSystem(0);
    __cxa_guard_release(&qword_1EE1A4D58);
  }

  v4 = qword_1EE1A4D50;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D68))
  {
    qword_1EE1A4D60 = re::ecs2::introspect_WrapSystem(0);
    __cxa_guard_release(&qword_1EE1A4D68);
  }

  v4 = qword_1EE1A4D60;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D78))
  {
    qword_1EE1A4D70 = re::ecs2::introspect_VertexCacheSystem(0);
    __cxa_guard_release(&qword_1EE1A4D78);
  }

  v4 = qword_1EE1A4D70;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D88))
  {
    qword_1EE1A4D80 = re::ecs2::introspect_SubdivisionSurfaceSystem(0);
    __cxa_guard_release(&qword_1EE1A4D88);
  }

  v4 = qword_1EE1A4D80;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  {
    re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info = re::ecs2::introspect_CustomDeformerSystem(0);
  }

  v4 = re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D98))
  {
    qword_1EE1A4D90 = re::ecs2::introspect_DynamicBoundingBoxSystem(0);
    __cxa_guard_release(&qword_1EE1A4D98);
  }

  v4 = qword_1EE1A4D90;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DA8))
  {
    qword_1EE1A4DA0 = re::ecs2::introspect_PerformDeformationSystem(0);
    __cxa_guard_release(&qword_1EE1A4DA8);
  }

  v4 = qword_1EE1A4DA0;
  re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
  if ((atomic_load_explicit(&qword_1EE1A4DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DB8))
  {
    qword_1EE1A4DB0 = re::ecs2::introspect_DeformedDirectMeshSystem(0);
    __cxa_guard_release(&qword_1EE1A4DB8);
  }

  v4 = qword_1EE1A4DB0;
  return re::DynamicArray<re::TransitionCondition *>::add(a1, &v4);
}

uint64_t (***re::ecs2::PerformDeformationsSystem::addDeformerSubsystemsUsingLambda(uint64_t a1))(void)
{
  v41 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 24);
  v4 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v2, a1);
  v39 = v3;
  v40 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v38, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D18))
  {
    qword_1EE1A4D10 = re::ecs2::introspect_MeshOffsetsSystem(0);
    __cxa_guard_release(&qword_1EE1A4D18);
  }

  (*(*v40 + 16))(v40, qword_1EE1A4D10 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v38);
  v36 = v3;
  v37 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v35, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D28))
  {
    qword_1EE1A4D20 = re::ecs2::introspect_MeshSmoothSystem(0);
    __cxa_guard_release(&qword_1EE1A4D28);
  }

  (*(*v37 + 16))(v37, qword_1EE1A4D20 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v35);
  v33 = v3;
  v34 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v32, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D38))
  {
    qword_1EE1A4D30 = re::ecs2::introspect_SkeletalPoseBufferSystem(0);
    __cxa_guard_release(&qword_1EE1A4D38);
  }

  (*(*v34 + 16))(v34, qword_1EE1A4D30 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v32);
  v30 = v3;
  v31 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v29, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D48))
  {
    qword_1EE1A4D40 = re::ecs2::introspect_BlendShapeWeightsBufferSystem(0);
    __cxa_guard_release(&qword_1EE1A4D48);
  }

  (*(*v31 + 16))(v31, qword_1EE1A4D40 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v29);
  v27 = v3;
  v28 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v26, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D58, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D58))
  {
    qword_1EE1A4D50 = re::ecs2::introspect_JiggleSystem(0);
    __cxa_guard_release(&qword_1EE1A4D58);
  }

  (*(*v28 + 16))(v28, qword_1EE1A4D50 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v26);
  v24 = v3;
  v25 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v23, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D68))
  {
    qword_1EE1A4D60 = re::ecs2::introspect_WrapSystem(0);
    __cxa_guard_release(&qword_1EE1A4D68);
  }

  (*(*v25 + 16))(v25, qword_1EE1A4D60 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v23);
  v21 = v3;
  v22 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v20, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D78, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D78))
  {
    qword_1EE1A4D70 = re::ecs2::introspect_VertexCacheSystem(0);
    __cxa_guard_release(&qword_1EE1A4D78);
  }

  (*(*v22 + 16))(v22, qword_1EE1A4D70 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v20);
  v18 = v3;
  v19 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v17, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D88, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D88))
  {
    qword_1EE1A4D80 = re::ecs2::introspect_SubdivisionSurfaceSystem(0);
    __cxa_guard_release(&qword_1EE1A4D88);
  }

  (*(*v19 + 16))(v19, qword_1EE1A4D80 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v17);
  v15 = v3;
  v16 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v14, v2);
  {
    re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info = re::ecs2::introspect_CustomDeformerSystem(0);
  }

  (*(*v16 + 16))(v16, re::introspect<re::ecs2::CustomDeformerSystem>(BOOL)::info + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v14);
  v12 = v3;
  v13 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v11, v2);
  if ((atomic_load_explicit(&qword_1EE1A4D98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D98))
  {
    qword_1EE1A4D90 = re::ecs2::introspect_DynamicBoundingBoxSystem(0);
    __cxa_guard_release(&qword_1EE1A4D98);
  }

  (*(*v13 + 16))(v13, qword_1EE1A4D90 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v11);
  v9 = v3;
  v10 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v8, v2);
  if ((atomic_load_explicit(&qword_1EE1A4DA8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DA8))
  {
    qword_1EE1A4DA0 = re::ecs2::introspect_PerformDeformationSystem(0);
    __cxa_guard_release(&qword_1EE1A4DA8);
  }

  (*(*v10 + 16))(v10, qword_1EE1A4DA0 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v8);
  v6 = v3;
  v7 = 0;
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::operator=<24ul>(v5, v2);
  if ((atomic_load_explicit(&qword_1EE1A4DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4DB8))
  {
    qword_1EE1A4DB0 = re::ecs2::introspect_DeformedDirectMeshSystem(0);
    __cxa_guard_release(&qword_1EE1A4DB8);
  }

  (*(*v7 + 16))(v7, qword_1EE1A4DB0 + 32);
  re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v5);
  return re::FunctionBase<24ul,void ()(re::TypeID const&)>::destroyCallable(v2);
}

BOOL re::ecs2::PerformInlineDeformationsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v79 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v68, a5, 0);
  v8 = v68;
  v64 = a4;
  v65 = v68;
  v66 = DWORD2(v68);
  v9 = WORD4(v68);
  v10 = HIWORD(DWORD2(v68));
  if (v68 != a5 || WORD4(v68) != 0xFFFF || v10 != 0xFFFF)
  {
    do
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v67[0] = 0;
        v71 = 0u;
        v72 = 0u;
        v69 = 0u;
        v70 = 0u;
        v68 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v76 = 136315906;
        *&v76[4] = "operator[]";
        *&v76[12] = 1024;
        *&v76[14] = 797;
        *&v76[18] = 2048;
        *&v76[20] = v13;
        v77 = 2048;
        v78 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*(*(v8 + 32) + 16 * v10) + 8 * v9) + 16);
      v16 = v15;
      do
      {
        v17 = v16;
        v16 = v16[4];
      }

      while (v16);
      v18 = v17[3];
      if (v18)
      {
        v19 = *(v18 + 56);
        if (v19)
        {
          v20 = v15[24];
          if (v20)
          {
            v21 = *(v20 + 40);
            if (v21)
            {
              v22 = atomic_load((v21 + 896));
              if (v22 == 2)
              {
                v23 = v15[25];
                if (v23)
                {
                  v24 = (*(*v19 + 32))(v19);
                  v25 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v24);
                  if (v25)
                  {
                    v26 = v25;
                    v27 = (*(*v19 + 32))(v19);
                    v28 = re::ServiceLocator::serviceOrNull<re::DeformationService>(v27);
                    if (v28)
                    {
                      v29 = v28;
                      v30 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                      if (v30)
                      {
                        v31 = v30;
                        v32 = *(v23 + 49);
                        v62 = v29;
                        if (v32)
                        {
                          v34 = *(v32 + 88);
                          v33 = *(v32 + 96);
                        }

                        else
                        {
                          v34 = 0;
                          v33 = 0;
                        }

                        re::ecs2::SkeletalPoseBufferComponent::resetDeformerInputs(v30, v26, 0, v33, v34);
                        re::ecs2::SkeletalPoseBufferComponent::initializePerRangeEstimators(v31);
                        re::ecs2::SkeletalPoseBufferComponent::update(v31, v26, 0, 0);
                        v35 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v20 + 32));
                        v63 = v35[73];
                        v36 = v35[71];
                        v37 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                        if (v37)
                        {
                          v38 = v37;
                          re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v37, *(v26 + 32));
                          v63 = v38[26];
                          v61 = v38[24];
                          v39 = (v38 + 27);
                        }

                        else
                        {
                          v61 = v36;
                          v39 = (v35 + 80);
                        }

                        v40 = re::ecs2::EntityComponentCollection::get((v15 + 6), re::ecs2::ComponentImpl<re::ecs2::CustomDeformerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                        if (v40)
                        {
                          v42 = v40;
                          re::ecs2::CustomDeformerComponent::updateDeformerInputData(v40, v26, v35, v39);
                          re::ecs2::CustomDeformerComponent::processContinuousUpdateMode(v42, v35, v39);
                        }

                        BoundingBoxInputs = re::ecs2::DynamicBoundingBoxComponent::makeBoundingBoxInputs(v26, v23, v41);
                        if (BoundingBoxInputs)
                        {
                          re::ecs2::DynamicBoundingBoxComponent::updateBoundingBoxes(BoundingBoxInputs, v26);
                        }

                        v44 = (*(*(v26 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v26 + 144) + 16) << 60));
                        v45 = re::RenderManager::perFrameAllocator(v26);
                        re::globalAllocators(v45);
                        v46 = (*(*v45 + 32))(v45, 5960, 8);
                        v47 = re::ecs2::DeformationGPUResources::DeformationGPUResources(v46, v26);
                        v48 = re::globalAllocators(v47)[2];
                        *&v68 = &unk_1F5CEC8E8;
                        *(&v69 + 1) = v48;
                        *&v70 = &v68;
                        v49 = (*(*v45 + 16))(v45, v46, &v68);
                        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v68);
                        v67[0] = 0;
                        v67[1] = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v49 + 8, v44);
                        *v76 = 0xFFFFFFFFFFFFFFFLL;
                        *&v76[8] = 0;
                        *&v76[16] = 0;
                        re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(v76, v26, v49 + 8, (v49 + 5320), v44);
                        v50 = *(v23 + 49);
                        PerFrameMeshDeformationData = re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(v23, v45);
                        *&v68 = v63;
                        *(&v68 + 1) = v61;
                        v52 = v50[2];
                        *&v69 = v50[3];
                        *(&v69 + 1) = v52;
                        v53 = v50[5];
                        *&v70 = v50[6];
                        *(&v70 + 1) = v53;
                        v54 = v50[8];
                        *&v71 = v50[9];
                        *(&v71 + 1) = v54;
                        v55 = v50[11];
                        *&v72 = v50[12];
                        *(&v72 + 1) = v55;
                        v56 = v50[14];
                        v73 = v50[15];
                        v74 = v56;
                        v75 = PerFrameMeshDeformationData;
                        v57 = re::ActiveDeformationData::create(v44, v45);
                        (*(*v62 + 88))(v62, &v68, v57);
                        (*(*v62 + 104))(v62, v45, v67, &v76[8], *&v76[16], v57);
                        v58 = re::RenderFrameBox::get((*(v26 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
                        re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v58 + 4136), *&v76[16]);
                        re::ecs2::PerFrameDeformationCommandData::finalizeForFrame(v76, v26, v49 + 8, v44);
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }

      v59 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v65);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v64, v59, *(a3 + 32));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v65);
      v8 = v65;
      v9 = v66;
      v10 = HIWORD(v66);
    }

    while (v65 != a5 || v66 != 0xFFFF || HIWORD(v66) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

uint64_t re::ecs2::PerformInlineDeformationsSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v33[0] = a2;
  v33[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v32);
  if (a1[29] && re::DeformerFeatureFlags::enableAppDeformation(v5))
  {
    re::StackScratchAllocator::StackScratchAllocator(v45);
    v41 = 1;
    v42 = 0;
    v43 = 0;
    v39 = v45;
    v40 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v39, 0);
    v41 += 2;
    v6 = a1[64];
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v44 = a1[64];
    v34[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v39, v7, v34);
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = *(a3 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        v34[0] = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 45, v34);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v39, *(a1[46] + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v39, (a1 + 59));
    v35 = 1;
    v36 = 0;
    v37 = 0;
    v34[0] = v45;
    v34[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v34, 0);
    v35 += 2;
    v13 = a1[64];
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    v38 = a1[64];
    v46 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v34, v14, &v46);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 59), &v39);
    v15 = v43;
    if (v41)
    {
      v15 = &v42;
    }

    v16 = v40;
    if ((v40 & 0x3FFFFFFFFFFFFFFLL) != 0)
    {
      v17 = 0;
      while (1)
      {
        v19 = *v15++;
        v18 = v19;
        if (v19)
        {
          break;
        }

        v17 -= 64;
        if (!--v16)
        {
          goto LABEL_32;
        }
      }

      v20 = __clz(__rbit64(v18));
      if (v20 + 1 != v17)
      {
        FirstBitSet = v20 - v17;
        do
        {
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 38), FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, v33, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, v33, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, v33, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else if (!v26)
          {
LABEL_30:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v34, FirstBitSet);
            goto LABEL_31;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v34, FirstBitSet);
LABEL_31:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v39, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_32:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 59), v34);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 38));
    if (v34[0] && (v35 & 1) == 0)
    {
      (*(*v34[0] + 40))();
    }

    if (v39 && (v41 & 1) == 0)
    {
      (*(*v39 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v45);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v32);
}

unint64_t re::ecs2::PerformInlineDeformationsSystem::willAddSceneToECSService(re::ecs2::PerformInlineDeformationsSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 54);
  v5 = *(this + 110);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 448);
    }

    else
    {
      v6 = *(this + 57);
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
    v7 = (this + 448);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 57);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 424, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::init(v12, this + 304, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 424, v40);
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
  v14 = *(this + 43);
  *&v47 = 0;
  v15 = *(this + 39);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,4ul>::setBucketsCapacity(this + 38, (v14 + 4) >> 2);
    v15 = *(this + 39);
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

  if (*(this + 320))
  {
    v16 = this + 328;
  }

  else
  {
    v16 = *(this + 42);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 43);
  ++*(this + 88);
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
  v23 = *(this + 43);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::init(v24, this + 304, v48[0]);
  *&v57[0] = *(this + 43) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 45, v48, v57);
  v25 = *(this + 43);
  v26 = *(this + 58);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 58) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 424), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 58) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 440))
    {
      v30 = this + 448;
    }

    else
    {
      v30 = *(this + 57);
    }

    *&v30[8 * *(this + 54) - 8] &= v28;
  }

  v31 = *(this + 43);
  v32 = *(this + 64);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 64) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 472), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 64) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 488))
    {
      v36 = this + 496;
    }

    else
    {
      v36 = *(this + 63);
    }

    *&v36[8 * *(this + 60) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 472, v13);
  if (*(this + 536) == 1)
  {
    v38 = *(this + 65);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 304);
  }

  return result;
}

uint64_t re::ecs2::PerformInlineDeformationsSystem::willRemoveSceneFromECSService(re::ecs2::PerformInlineDeformationsSystem *this, re::ecs2::Scene *a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 45, &v15);
  if (result != -1)
  {
    v4 = *(this + 46) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 424, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 472, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 304, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 360, &v15);
  }

  return result;
}

void *re::ecs2::allocInfo_InlineDeformationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_209, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_209))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4DC0, "InlineDeformationComponent");
    __cxa_guard_release(&_MergedGlobals_209);
  }

  return &unk_1EE1A4DC0;
}

void re::ecs2::initInfo_InlineDeformationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xFB546C5BFFCACBCCLL;
  v10[1] = "InlineDeformationComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A4D00, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A4D00);
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
      qword_1EE1A4CF8 = v8;
      __cxa_guard_release(&qword_1EE1A4D00);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A4CF8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::InlineDeformationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::InlineDeformationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::InlineDeformationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::InlineDeformationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226InlineDeformationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::InlineDeformationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDF138;
}

void re::internal::defaultConstructV2<re::ecs2::InlineDeformationComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CDF138;
}

void *re::ecs2::allocInfo_PerformInlineDeformationsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A4D08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4D08))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A4E50, "PerformInlineDeformationsSystem");
    __cxa_guard_release(&qword_1EE1A4D08);
  }

  return &unk_1EE1A4E50;
}

void re::ecs2::initInfo_PerformInlineDeformationsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x1E1E890095C7C018;
  v6[1] = "PerformInlineDeformationsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x22000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PerformInlineDeformationsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PerformInlineDeformationsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PerformInlineDeformationsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PerformInlineDeformationsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::PerformInlineDeformationsSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 38);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::PerformInlineDeformationsSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 38);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::InlineDeformationComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::InlineDeformationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::PerformInlineDeformationsSystem::~PerformInlineDeformationsSystem(re::ecs2::PerformInlineDeformationsSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ActiveDeformationData::create(re *a1, uint64_t a2)
{
  v9[5] = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v4 = (*(*a2 + 32))(a2, 104, 8);
  active = re::ActiveDeformationData::ActiveDeformationData(v4, a1, a2);
  v6 = re::globalAllocators(active)[2];
  v9[0] = &unk_1F5CECAA0;
  v9[3] = v6;
  v9[4] = v9;
  v7 = (*(*a2 + 16))(a2, v4, v9);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v9);
  return v7;
}

void *re::internal::Callable<re::ecs2::anonymous namespace::performInlineDeformation(re::ecs2::Entity *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEC8E8;
  return result;
}

void *re::internal::Callable<re::ecs2::anonymous namespace::performInlineDeformation(re::ecs2::Entity *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CEC8E8;
  return result;
}

uint64_t re::ActiveDeformationData::ActiveDeformationData(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a1 = a2;
  *(a1 + 16) = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 1;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0;
  *(a1 + 56) = 0;
  re::BucketArray<re::ActiveDeformation,8ul>::init(a1 + 8, a3, 1uLL);
  *(a1 + 96) = 0;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 64) = a3;
  re::DynamicArray<re::DeformationView>::setCapacity((a1 + 64), 8uLL);
  ++*(a1 + 88);
  return a1;
}

uint64_t *re::BucketArray<re::ActiveDeformation,8ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ActiveDeformation,8ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ActiveDeformation,8ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
{
  v3 = result;
  if (*result)
  {
    if (result[5] < 8 * a2)
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
        v5 = (*(**v3 + 32))(*v3, 3200, 0);
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

void *re::DynamicArray<re::DeformationView>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::DeformationView>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x110uLL))
        {
          v2 = 272 * a2;
          result = (*(*result + 32))(result, 272 * a2, 16);
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

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 272, a2);
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
        v10 = (v8 + 272 * v9);
        v11 = v7 + 16;
        v12 = (v8 + 128);
        do
        {
          v13 = *(v12 - 7);
          *(v11 - 8) = *(v12 - 8);
          *(v11 - 7) = v13;
          v15 = *(v12 - 4);
          v14 = *(v12 - 3);
          v16 = *(v12 - 5);
          *(v11 - 16) = *(v12 - 16);
          *(v11 - 4) = v15;
          *(v11 - 3) = v14;
          *(v11 - 5) = v16;
          *(v11 - 6) = *(v12 - 6);
          v17 = *(v12 - 16);
          *(v11 - 16) = v17;
          if (v17 == 1)
          {
            v18 = *v12;
            v19 = v12[1];
            v20 = v12[3];
            *(v11 + 2) = v12[2];
            *(v11 + 3) = v20;
            *v11 = v18;
            *(v11 + 1) = v19;
          }

          v21 = v12 - 8;
          v22 = *(v12 + 64);
          *(v11 + 64) = v22;
          if (v22 == 1)
          {
            v23 = v12[5];
            v24 = v12[6];
            v25 = v12[8];
            *(v11 + 7) = v12[7];
            *(v11 + 8) = v25;
            *(v11 + 5) = v23;
            *(v11 + 6) = v24;
          }

          v11 += 34;
          v12 += 17;
        }

        while (v21 + 17 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_20;
    }
  }

  return result;
}

uint64_t re::internal::Callable<re::ActiveDeformationData::create(re::FrameCount,re::PerFrameAllocator *)::{lambda(void *)#1},void ()(void *)>::operator()(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  re::DynamicArray<unsigned long>::deinit(*a2 + 64);
  re::BucketArray<re::ActiveDeformation,8ul>::deinit(v2 + 8);

  return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 8);
}

void *re::internal::Callable<re::ActiveDeformationData::create(re::FrameCount,re::PerFrameAllocator *)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CECAA0;
  return result;
}

void *re::internal::Callable<re::ActiveDeformationData::create(re::FrameCount,re::PerFrameAllocator *)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CECAA0;
  return result;
}

uint64_t re::BucketArray<re::ActiveDeformation,8ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      re::BucketArray<re::ActiveDeformation,8ul>::operator[](a1, i);
    }
  }

  while (*(a1 + 8))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(a1);
  }

  result = re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(a1);
  *(a1 + 40) = 0;
  ++*(a1 + 48);
  return result;
}

uint64_t re::BucketArray<re::ActiveDeformation,8ul>::operator[](uint64_t a1, unint64_t a2)
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

  if (*(a1 + 8) <= a2 >> 3)
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

  return *(v3 + 8 * (a2 >> 3)) + 400 * (a2 & 7);
}

{
  v2 = *(a1 + 40);
  if (v2 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 1018, a2, v2);
    _os_crash();
    __break(1u);
LABEL_8:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(a1 + 8) <= a2 >> 3)
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

  return *(v3 + 8 * (a2 >> 3)) + 400 * (a2 & 7);
}

id re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add(_anonymous_namespace_ *this, id *a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4);
  result = *a2;
  *(v5 + 8 * v4) = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

re::ecs2::MeshSmoothSystem *re::ecs2::MeshSmoothSystem::MeshSmoothSystem(re::ecs2::MeshSmoothSystem *this)
{
  v9[2] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CEDBF8;
  *(this + 32) = 0;
  *(this + 33) = &unk_1F5CEDB90;
  *(this + 34) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 37) = 0;
  v9[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v9[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v8[0] = v9;
  v8[1] = 2;
  v3 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 280), v8);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 1;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 41) = 0;
  *(this + 88) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  *(this + 122) = 1;
  *(this + 521) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 59, 0);
  *(this + 122) += 2;
  *(this + 64) = 0;
  *(this + 65) = this;
  *(this + 66) = this + 264;
  *(this + 536) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshSmoothComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

re::ecs2::JiggleSystem *re::ecs2::JiggleSystem::JiggleSystem(re::ecs2::JiggleSystem *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF1218;
  *(this + 32) = &unk_1F5CF11B0;
  *(this + 33) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 272), v4);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  return this;
}

uint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
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
  v8 = (a1 + 120);
  *(a1 + 104) = 0u;
  *(a1 + 56) = 0u;
  v9 = (a1 + 56);
  *(a1 + 136) = 1;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  *(a1 + 184) = 1;
  *(a1 + 217) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  v12 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v8, 0);
  *(a1 + 136) += 2;
  *(a1 + 160) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity((a1 + 168), 0);
  *(a1 + 184) += 2;
  *(a1 + 208) = 0;
  *(a1 + 216) = a2;
  *(a1 + 224) = a3;
  *(a1 + 232) = a4;
  return a1;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

re::ecs2::WrapSystem *re::ecs2::WrapSystem::WrapSystem(re::ecs2::WrapSystem *this)
{
  v5[2] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CFA818;
  *(this + 32) = &unk_1F5CFA7C0;
  *(this + 33) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 272), v4);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  return this;
}

re::ecs2::VertexCacheSystem *re::ecs2::VertexCacheSystem::VertexCacheSystem(re::ecs2::VertexCacheSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF4138;
  *(this + 32) = 0;
  v3 = re::ecs2::VertexCacheComponentStateImpl::VertexCacheComponentStateImpl((this + 264), this);
  *(this + 38) = 0;
  *(this + 39) = 0;
  *(this + 80) = 1;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 41) = 0;
  *(this + 88) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 392) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 110) = 1;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 60) = 0;
  *(this + 122) = 1;
  *(this + 521) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 53, 0);
  *(this + 110) += 2;
  *(this + 58) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 59, 0);
  *(this + 122) += 2;
  *(this + 64) = 0;
  *(this + 65) = this;
  *(this + 66) = this + 264;
  *(this + 536) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

re::ecs2::SubdivisionSurfaceSystem *re::ecs2::SubdivisionSurfaceSystem::SubdivisionSurfaceSystem(re::ecs2::SubdivisionSurfaceSystem *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CFDD00;
  *(this + 32) = &unk_1F5CFDCA8;
  *(this + 33) = this;
  *(this + 35) = 0;
  *(this + 36) = 0;
  *(this + 34) = 0;
  v4[1] = 1;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v4[0] = v5;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 272), v4);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  return this;
}

re::ecs2::CustomDeformerSystem *re::ecs2::CustomDeformerSystem::CustomDeformerSystem(re::ecs2::CustomDeformerSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF1B00;
  v3 = re::ecs2::CustomDeformerSystemComponentStateImpl::CustomDeformerSystemComponentStateImpl(this + 32, this);
  *(this + 37) = 0;
  *(this + 38) = 0;
  *(this + 78) = 1;
  *(this + 41) = 0;
  *(this + 42) = 0;
  *(this + 40) = 0;
  *(this + 86) = 0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 59) = 0;
  *(this + 120) = 1;
  *(this + 513) = 0u;
  *(this + 488) = 0u;
  *(this + 504) = 0u;
  v6 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 52, 0);
  *(this + 108) += 2;
  *(this + 57) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 58, 0);
  *(this + 120) += 2;
  *(this + 63) = 0;
  *(this + 64) = this;
  *(this + 65) = this + 256;
  *(this + 528) = 1;
  return this;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::CustomDeformerComponent>,4ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

re::ecs2::DynamicBoundingBoxSystem *re::ecs2::DynamicBoundingBoxSystem::DynamicBoundingBoxSystem(re::ecs2::DynamicBoundingBoxSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF4538;
  re::ecs2::DynamicBoundingBoxComponentStateImpl::DynamicBoundingBoxComponentStateImpl(this + 32, this);
  v3 = re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 296, this, this + 256, 1);
  *(this + 536) = 0u;
  *(this + 552) = 0u;
  *(this + 71) = 0x7FFFFFFF00000000;
  *(this + 144) = 0;
  return this;
}

re::ecs2::PerformDeformationSystem *re::ecs2::PerformDeformationSystem::PerformDeformationSystem(re::ecs2::PerformDeformationSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF7C40;
  re::ecs2::PerformDeformationSystemComponentStateImpl::PerformDeformationSystemComponentStateImpl((this + 256), this);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 376, this, this + 256, 1);
  return this;
}

re::ecs2::DeformedDirectMeshSystem *re::ecs2::DeformedDirectMeshSystem::DeformedDirectMeshSystem(re::ecs2::DeformedDirectMeshSystem *this)
{
  v2 = re::DeformerFeatureFlags::enableAppDeformation(this);
  re::ecs2::System::System(this, v2 ^ 1, 1);
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *this = &unk_1F5CF64D8;
  *(this + 32) = 0;
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 264, this, this + 504, 1);
  re::ecs2::DeformedDirectMeshComponentStateImpl::DeformedDirectMeshComponentStateImpl((this + 504));
  *(this + 544) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  return this;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType) + 480;
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
    *v10 = &unk_1F5CEC940;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CEC998;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CEC9F0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CECA48;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType, 0);
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
        *v37 = &unk_1F5CEC940;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CEC998;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CEC9F0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CECA48;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC940;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC940;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC998;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC998;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CEC9F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CEC9F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CECA48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::InlineDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CECA48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226InlineDeformationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::RenderPassGroupManagerStateTracking *re::ecs2::RenderPassGroupManagerStateTracking::RenderPassGroupManagerStateTracking(re::ecs2::RenderPassGroupManagerStateTracking *this, re::EntitlementManager *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::HierarchyStateTracking(this);
  *v4 = &unk_1F5CECAF8;
  *(v4 + 304) = 0u;
  *(v4 + 320) = 0u;
  *(v4 + 336) = 0u;
  *(v4 + 352) = 0;
  *(v4 + 360) = 0;
  *(v4 + 368) = a2;
  *(v4 + 376) = 0;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[1] = re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[2] = re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v6[0] = v7;
  v6[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v4 + 304), v6);
  return this;
}

uint64_t re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::HierarchyStateTracking(uint64_t a1)
{
  *a1 = &unk_1F5CECBF0;
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

void re::ecs2::RenderPassGroupManagerStateTracking::buildPerEntityStateForDirtyEntityHierarchies(void **a1, uint64_t a2)
{
  v2 = a1;
  v94 = *MEMORY[0x1E69E9840];
  if (*(a1 + 352) != 1)
  {
    goto LABEL_35;
  }

  v3 = *(a1 + 10);
  if (v3)
  {
    v4 = 0;
    v5 = (a1[3] + 8);
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
        LODWORD(v4) = *(a1 + 10);
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
    goto LABEL_35;
  }

  v7 = &unk_1EE187000;
  v8 = *(a1 + 10);
  v79 = v8;
  do
  {
    v9 = *(v2[3] + 3 * v4 + 2);
    v10 = *(v7[394] + 16);
    if (*(v9 + 224) <= v10)
    {
      goto LABEL_27;
    }

    v11 = *(*(v9 + 240) + 8 * v10);
    if (!v11)
    {
      goto LABEL_27;
    }

    v12 = *(v11 + 384);
    if (!v12)
    {
      goto LABEL_27;
    }

    v13 = *(v11 + 400);
    v14 = 8 * v12;
    do
    {
      v15 = *v13;
      v16 = (*v13 + 4);
      if (!*v16)
      {
        goto LABEL_22;
      }

      WeakRetained = objc_loadWeakRetained(*v13 + 4);
      v18 = WeakRetained;
      if (WeakRetained)
      {
        v19 = WeakRetained - 8;
      }

      else
      {
        v19 = 0;
      }

      if (re::ecs2::EntityComponentCollection::get((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType))
      {
        v91 = v19;
        a1 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(a2, &v91);
        if (!a1)
        {
          if (!v18)
          {
            goto LABEL_22;
          }

LABEL_21:

          goto LABEL_22;
        }
      }

      else
      {
        re::ecs2::EntityHandle::reset(v16);
        objc_destroyWeak(v16);
        *v16 = 0;
      }

      a1 = re::ecs2::Component::markDirty(v15);
      if (v18)
      {
        goto LABEL_21;
      }

LABEL_22:
      ++v13;
      v14 -= 8;
    }

    while (v14);
    v8 = *(v2 + 10);
    LODWORD(v3) = v79;
    v7 = &unk_1EE187000;
LABEL_27:
    if (v8 <= v4 + 1)
    {
      v20 = v4 + 1;
    }

    else
    {
      v20 = v8;
    }

    while (v20 - 1 != v4)
    {
      LODWORD(v4) = v4 + 1;
      if ((*(v2[3] + 6 * v4 + 2) & 0x80000000) != 0)
      {
        goto LABEL_34;
      }
    }

    LODWORD(v4) = v20;
LABEL_34:
    ;
  }

  while (v4 != v3);
LABEL_35:
  v80 = *(a2 + 32);
  if (v80)
  {
    v21 = 0;
    v22 = (*(a2 + 16) + 8);
    while (1)
    {
      v23 = *v22;
      v22 += 6;
      if (v23 < 0)
      {
        break;
      }

      if (v80 == ++v21)
      {
        LODWORD(v21) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v21) = 0;
  }

  if (v21 != v80)
  {
    v24 = *(a2 + 16);
    do
    {
      v25 = *(v24 + 24 * v21 + 16);
      v26 = v2[45];
      a1 = re::ecs2::RenderPassGroupService::enableRenderPassGroups(a1);
      if (a1)
      {
        if (!v2[7] || (v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v25 ^ (v25 >> 30))) >> 27)), v28 = *(v2[8] + (v27 ^ (v27 >> 31)) % *(v2 + 20)), v28 == 0x7FFFFFFF))
        {
LABEL_50:
          (*(**v26 + 8))(&v91);
          if (v91)
          {
            v30 = v92;
          }

          else
          {
            v30 = 0;
          }

          v31 = *(v25 + 32);
          if (v31 && (*(v31 + 304) & 0x80) == 0 && ((v84 = *(v25 + 32), (*(**v26 + 8))(&v91), !v91) ? (v32 = 0) : (v32 = v92), v30 == v32))
          {
            v33 = 0;
            v34 = 0;
            while (1)
            {
              v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v84 ^ (v84 >> 30))) >> 27));
              re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>((v2 + 7), &v84, v35 ^ (v35 >> 31), &v91);
              if (HIDWORD(v92) != 0x7FFFFFFF)
              {
                break;
              }

              v36 = re::ecs2::EntityComponentCollection::get((v84 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              if (v36)
              {
                v37 = v84;
                v34 = *(v84 + 312);
                v33 = *(v36 + 26);
                v25 = v84;
              }

              else
              {
                v38 = re::ecs2::EntityComponentCollection::get((v84 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                v37 = v84;
                if (v38)
                {
                  v33 = 0;
                  v34 = 0;
                  v25 = v84;
                }
              }

              v39 = *(v37 + 32);
              if (v39 && (*(v39 + 304) & 0x80) == 0)
              {
                v84 = *(v37 + 32);
                (*(**v26 + 8))(&v91);
                v40 = v91 ? v92 : 0;
                if (v30 == v40)
                {
                  continue;
                }
              }

              goto LABEL_73;
            }

            v78 = v2[9] + 40 * HIDWORD(v92);
            v34 = *(v78 + 16);
            v33 = *(v78 + 24);
          }

          else
          {
            v33 = 0;
            v34 = 0;
          }

LABEL_73:
          re::StackScratchAllocator::StackScratchAllocator(&v91);
          v84 = 0;
          v85 = 0;
          v86 = 1;
          v88 = 0;
          v89 = 0;
          v87 = 0;
          v90 = 0;
          re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::init(&v84, &v91, 1uLL);
          v41 = re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::addUninitialized(&v84);
          *v41 = v25;
          *(v41 + 8) = v34;
          *(v41 + 16) = v33;
          *(v41 + 24) = v30;
          v42 = v89;
          do
          {
LABEL_74:
            if (!v42)
            {
              while (v85)
              {
                re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v84);
              }

              if (v84 && (v86 & 1) == 0)
              {
                (*(*v84 + 40))();
              }

              re::StackScratchAllocator::~StackScratchAllocator(&v91);
              goto LABEL_130;
            }

            v43 = re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v84, --v42);
            v44 = v43[1];
            v82 = *v43;
            v83 = v44;
            re::BucketArray<re::ecs2::RootPhysicsSimulationData,32ul>::operator[](&v84, v42);
            v89 = v42;
            ++v90;
          }

          while ((*(v82 + 304) & 1) == 0);
          v45 = re::ecs2::EntityComponentCollection::get((v82 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v45)
          {
            v46 = v45;
LABEL_78:
            if (*(v46 + 25) == 1)
            {
              v47 = 0;
              v48 = 0;
            }

            else
            {
              v47 = *(*(v46 + 16) + 312);
              v48 = *(v46 + 26);
            }

            *(&v82 + 1) = v47;
            LOBYTE(v83) = v48;
          }

          else
          {
            v49 = re::ecs2::EntityComponentCollection::get((v82 + 48), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupReferenceComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v49)
            {
              v51 = *(v49 + 32);
              v50 = (v49 + 32);
              if (v51)
              {
                v52 = objc_loadWeakRetained(v50);
                if (v52)
                {
                  v53 = v52;
                  v46 = re::ecs2::EntityComponentCollection::get((v52 + 40), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);

                  if (v46)
                  {
                    goto LABEL_78;
                  }
                }
              }
            }
          }

          if (v83 == 1 && re::internal::render_on_top::never_use_this::g_enableRenderOnTopEntitlement == 1)
          {
            v54 = v82;
            if ((atomic_load_explicit(&qword_1EE1A4EE8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A4EE8))
            {
              re::Defaults::BOOLValue("enableRenderOnTopSPIEntitlement", v75, buf);
              if (buf[0])
              {
                v76 = buf[1];
              }

              else
              {
                v76 = 1;
              }

              _MergedGlobals_210 = v76;
              __cxa_guard_release(&qword_1EE1A4EE8);
            }

            if (_MergedGlobals_210 == 1)
            {
              v55 = *(v54 + 216);
              if (v55)
              {
                OwnerPeerID = *(v55 + 32);
                if (OwnerPeerID)
                {
                  OwnerPeerID = RESyncableGetOwnerPeerID();
                }

                if (!v2[46])
                {
                  v57 = *re::graphicsLogObjects(OwnerPeerID);
                  if (os_log_type_enabled(v57, OS_LOG_TYPE_ERROR))
                  {
                    v72 = *(v82 + 288);
                    if (v72 < 0xFFFFFFFFFFFFFFFELL || (v72 & 1) != 0 || (v73 = "missing name", **(v82 + 296)))
                    {
                      v73 = *(v82 + 296);
                    }

                    v74 = *(v82 + 312);
                    *buf = 134218242;
                    *&buf[4] = v74;
                    *&buf[12] = 2080;
                    *&buf[14] = v73;
                    _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, "Entity %llu (%s) is marked for RenderOnTop but failed entitlement check", buf, 0x16u);
                  }

                  LOBYTE(v83) = 0;
                }
              }
            }
          }

          v59 = *(&v82 + 1);
          v58 = v82;
          if (*(&v82 + 1))
          {
            v60 = v83;
            memset(buf, 0, sizeof(buf));
            v61 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v82 ^ (v82 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v82 ^ (v82 >> 30))) >> 27));
            re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>((v2 + 7), &v82, v61 ^ (v61 >> 31), buf);
            if (*&buf[12] == 0x7FFFFFFF)
            {
              v62 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry((v2 + 7), *&buf[8], *buf);
              v58 = v82;
              *(v62 + 8) = v82;
              *(v62 + 16) = v59;
              *(v62 + 24) = v60;
              ++*(v2 + 24);
            }

            else
            {
              v58 = v82;
            }
          }

          v63 = *(v58 + 344);
          if (v63)
          {
            v64 = *(v58 + 360);
            v65 = 8 * v63;
            do
            {
              v67 = *v64++;
              v66 = v67;
              (*(**v26 + 8))(buf);
              if (buf[0])
              {
                v68 = *&buf[8];
              }

              else
              {
                v68 = 0;
              }

              if (*(&v83 + 1) == v68)
              {
                v69 = *(&v82 + 1);
              }

              else
              {
                v69 = 0;
              }

              if (*(&v83 + 1) == v68)
              {
                v70 = v83;
              }

              else
              {
                v70 = 0;
              }

              v71 = re::BucketArray<re::ecs2::RenderPassGroupManagerStateTracking::buildRenderPassGroupsForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityRenderPassGroup,32ul>::addUninitialized(&v84);
              *v71 = v66;
              *(v71 + 8) = v69;
              *(v71 + 16) = v70;
              *(v71 + 24) = v68;
              v65 -= 8;
            }

            while (v65);
            v42 = v89;
          }

          goto LABEL_74;
        }

        v29 = v2[9];
        while (*&v29[10 * v28 + 2] != v25)
        {
          v28 = v29[10 * v28] & 0x7FFFFFFF;
          if (v28 == 0x7FFFFFFF)
          {
            goto LABEL_50;
          }
        }
      }

LABEL_130:
      v77 = *(a2 + 32);
      v24 = *(a2 + 16);
      if (v77 <= v21 + 1)
      {
        v77 = v21 + 1;
      }

      while (v77 - 1 != v21)
      {
        LODWORD(v21) = v21 + 1;
        if ((*(v24 + 24 * v21 + 8) & 0x80000000) != 0)
        {
          goto LABEL_136;
        }
      }

      LODWORD(v21) = v77;
LABEL_136:
      ;
    }

    while (v21 != v80);
  }

  *(v2 + 352) = 0;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::clearEntityHierarchyStateData(uint64_t a1, uint64_t a2)
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
        re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1 + 56, &v14, v5 ^ (v5 >> 31), v22);
        v6 = v24;
        if (v24 != 0x7FFFFFFF)
        {
          v7 = *(a1 + 72);
          v8 = *(v7 + 40 * v24) & 0x7FFFFFFF;
          if (v25 == 0x7FFFFFFF)
          {
            *(*(a1 + 64) + 4 * v23) = v8;
            v6 = v24;
          }

          else
          {
            *(v7 + 40 * v25) = *(v7 + 40 * v25) & 0x80000000 | v8;
          }

          v9 = *(a1 + 96);
          *(v7 + 40 * v6) = *(a1 + 92);
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

void re::ecs2::RenderPassGroupManager::updateGroupData(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a1 + 1;
  v3 = a1[1];
  a1[46] = a2;
  a1[48] = a3;
  (*(v3 + 32))(a1 + 1, a1 + 14);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v4 + 13));
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v4 + 25));
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear((v4 + 31));
  v4[45] = 0;
  v4[47] = 0;
}

double re::ecs2::RenderPassGroupManager::addBoundsTable(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFFLL;
  if (*(a1 + 440) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 392);
    *(a1 + 440) = v8;
  }

  v10 = *a4;
  v9 = *(a4 + 8);
  v19 = *a4;
  *a4 = 0u;
  v11 = *(a4 + 16);
  v18 = v9;
  v20 = v9;
  v21 = v11;
  *(a4 + 16) = 0;
  v12 = *(a4 + 24);
  v13 = *(a4 + 28);
  *&v22 = __PAIR64__(v13, v12);
  v15 = *(a4 + 32);
  v14 = *(a4 + 36);
  *(&v22 + 1) = __PAIR64__(v14, v15);
  *(a4 + 24) = xmmword_1E3058120;
  v23 = 1;
  v25 = 0;
  v24 = 0u;
  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v24, a1 + 392, a2);
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v16 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 392, DWORD2(v24), v24);
    re::StringID::StringID((v16 + 8), a2);
    *(v16 + 24) = a3;
    *(v16 + 32) = v10;
    v19 = 0;
    v20 = 0;
    *(v16 + 40) = v18;
    *(v16 + 48) = v11;
    v21 = 0;
    *(v16 + 56) = v12;
    *(v16 + 60) = v13;
    *(v16 + 64) = v15;
    *(v16 + 68) = v14;
    v22 = xmmword_1E3058120;
    *(v16 + 72) = 1;
    ++*(a1 + 432);
  }

  return re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v19);
}

void re::ecs2::RenderPassGroupManager::mergeBoundsTable(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  if (*(a1 + 440) == (a3 & 0xFFFFFFFFFFFFFFFLL) && (re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v28, a1 + 392, a2), HIDWORD(v29) != 0x7FFFFFFF))
  {
    v8 = *(a4 + 32);
    if (v8)
    {
      v9 = 0;
      v10 = *(a4 + 16);
      while (1)
      {
        v11 = *v10;
        v10 += 20;
        if (v11 < 0)
        {
          break;
        }

        if (v8 == ++v9)
        {
          LODWORD(v9) = *(a4 + 32);
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
      v12 = *(a1 + 408) + 80 * HIDWORD(v29);
      v13 = *(a4 + 16);
      do
      {
        v14 = v13 + 80 * v9;
        v16 = *(v14 + 8);
        v15 = v14 + 8;
        v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
        re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 32, v15, v17 ^ (v17 >> 31), &v28);
        if (HIDWORD(v29) == 0x7FFFFFFF)
        {
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v18 = 0xBF58476D1CE4E5B9 * (*v15 ^ (*v15 >> 30));
          re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v12 + 32, v15, (0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31), &v28);
          if (HIDWORD(v29) == 0x7FFFFFFF)
          {
            v19 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v12 + 32, v29, v28);
            *(v19 + 8) = *v15;
            v20 = *(v15 + 8);
            v21 = *(v15 + 40);
            *(v19 + 32) = *(v15 + 24);
            *(v19 + 48) = v21;
            *(v19 + 16) = v20;
            ++*(v12 + 72);
          }
        }

        else
        {
          v22 = *(v12 + 48) + 80 * HIDWORD(v29);
          v23 = *(v15 + 8);
          v24 = *(v22 + 16);
          v25 = *(v22 + 32);
          v24.i32[3] = 0;
          v23.i32[3] = 0;
          *(v22 + 16) = vminnmq_f32(v24, v23);
          v26 = *(v15 + 24);
          v25.i32[3] = 0;
          v26.i32[3] = 0;
          *(v22 + 32) = vmaxnmq_f32(v25, v26);
          *(v22 + 48) |= *(v15 + 40);
        }

        if (*(a4 + 32) <= (v9 + 1))
        {
          v27 = v9 + 1;
        }

        else
        {
          v27 = *(a4 + 32);
        }

        v13 = *(a4 + 16);
        while (v27 - 1 != v9)
        {
          LODWORD(v9) = v9 + 1;
          if ((*(v13 + 80 * v9) & 0x80000000) != 0)
          {
            goto LABEL_26;
          }
        }

        LODWORD(v9) = v27;
LABEL_26:
        ;
      }

      while (v9 != v8);
    }
  }

  else
  {

    re::ecs2::RenderPassGroupManager::addBoundsTable(a1, a2, a3, a4);
  }
}

uint64_t re::ecs2::RenderPassGroupManager::boundsTable(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFFFLL;
  if (*(a1 + 440) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 392);
    *(a1 + 440) = v6;
  }

  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v11, a1 + 392, a2);
  if (v12 == 0x7FFFFFFF)
  {
    return 0;
  }

  v8 = *(a1 + 408) + 80 * v12;
  v9 = *(v8 + 24) ^ a3;
  v10 = v8 + 32;
  if ((v9 & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    return 0;
  }

  else
  {
    return v10;
  }
}

uint64_t re::ecs2::RenderPassGroupManager::computeCanUseRenderPassGroupsForSorting(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  v19 = a2;
  v11 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(a1 + 64, &v19);
  if (v11)
  {
    v12 = *(v11 + 8) ^ 1;
  }

  else
  {
    v12 = 1;
  }

  v13 = re::ecs2::EntityComponentCollection::get((v19 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = a6 & ~a5 & v12;
  }

  if (v14 == 1 && (*a3 < 0xFFFFFFFFFFFFFFFELL || (*a3 & 1) != 0 || **(a3 + 8)))
  {
    v15 = *(a1 + 496);
    v16 = a4 & 0xFFFFFFFFFFFFFFFLL;
    if (v15 == (a4 & 0xFFFFFFFFFFFFFFFLL) && (v13 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v23, a1 + 448, a3), DWORD1(v24) != 0x7FFFFFFF))
    {
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(*(a1 + 464) + 80 * DWORD1(v24) + 32, &v19);
    }

    else
    {
      if (v15 < v16)
      {
        re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 448);
        *(a1 + 496) = v16;
      }

      v30[0] = v19;
      memset(v20, 0, sizeof(v20));
      v21 = 0;
      v22 = 0x7FFFFFFFLL;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::add(v20, v30);
      v23 = a4;
      re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::HashSetBase(&v24, v20);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v27, a1 + 448, a3);
      if (HIDWORD(v28) == 0x7FFFFFFF)
      {
        v17 = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1 + 448, v28, v27);
        re::StringID::StringID((v17 + 8), a3);
        *(v17 + 24) = v23;
        *(v17 + 72) = 0;
        *(v17 + 32) = v24;
        v24 = 0uLL;
        *(v17 + 48) = v25;
        v25 = 0;
        *(v17 + 56) = v26;
        v26 = xmmword_1E3058120;
        ++*(a1 + 488);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&v24);
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v20);
    }
  }

  return v14 ^ 1u;
}

uint64_t re::ecs2::RenderPassGroupManager::getPerFrameDisqualifiedEntities@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v8 = a3 & 0xFFFFFFFFFFFFFFFLL;
  if (*(a1 + 496) < (a3 & 0xFFFFFFFFFFFFFFFuLL))
  {
    re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1 + 448);
    *(a1 + 496) = v8;
  }

  result = re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v13, a1 + 448, a2);
  if (v14 == 0x7FFFFFFF || (v10 = *(a1 + 464) + 80 * v14, v12 = *(v10 + 24), v11 = v10 + 24, ((v12 ^ a3) & 0xFFFFFFFFFFFFFFFLL) != 0))
  {
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *a4 = 0u;
    *(a4 + 36) = 0x7FFFFFFF;
  }

  else
  {

    return re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::HashSetBase(a4, v11 + 8);
  }

  return result;
}

void re::ecs2::RenderPassGroupManagerStateTracking::~RenderPassGroupManagerStateTracking(re::ecs2::RenderPassGroupManagerStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 41);
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::RenderPassGroupManager::~RenderPassGroupManager(re::ecs2::RenderPassGroupManager *this)
{
  re::ecs2::RenderPassGroupManager::~RenderPassGroupManager(this);

  JUMPOUT(0x1E6906520);
}

{
  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashSet<re::ecs2::Entity const*,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 56);
  re::HashTable<re::StringID,re::Pair<re::FrameCount,re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,true>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 49);
  re::FixedArray<CoreIKTransform>::deinit(this + 42);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::~HierarchyStateTracking(this + 1);
}

uint64_t re::ecs2::RenderPassGroupManager::registerScene(re::ecs2::RenderPassGroupManager *this, re::ecs2::Scene *a2)
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
      *v10 = &unk_1F5CECC30;
      v10[1] = v4;
      v10[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<REComponentDidChangeEvent>;
      v10[3] = 0;
      v53 = v10;
      v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v2, v51, v9, 0);
      v13 = v12;
      v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v44);
      *v14 = v11;
      v14[1] = v13;
      re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v51);
      re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v9);
      v5 = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v9);
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
      re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentDidActivateEvent>(v4, v2, v44, v19);
      v15 = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::subscribeToEventToInvalidateEntityHierarchy<REComponentWillDeactivateEvent>(v4, v2, v44, v19);
      v18 -= 8;
    }

    while (v18);
  }

  v52 = re::globalAllocators(v15)[2];
  v20 = (*(*v52 + 32))(v52, 32, 0);
  *v20 = &unk_1F5CECD38;
  v20[1] = v4;
  v20[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidReparentEvent>;
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
  *v26 = &unk_1F5CECD90;
  v26[1] = v4;
  v26[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityDidActivateEvent>;
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
  *v32 = &unk_1F5CECDE8;
  v32[1] = v4;
  v32[2] = re::ecs2::HierarchyStateTracking<re::ecs2::RenderPassGroup>::invalidateEntityHierarchyEventHandler<RESceneEntityWillDeactivateEvent>;
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