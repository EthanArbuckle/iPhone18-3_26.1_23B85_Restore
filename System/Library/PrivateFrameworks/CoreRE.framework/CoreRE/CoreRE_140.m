void re::IntrospectionInfo<re::DynamicArray<re::ecs2::AnimationEntry>>::get(re::ecs2 *a1)
{
  if ((atomic_load_explicit(&qword_1EE1B3728, memory_order_acquire) & 1) == 0)
  {
    a1 = __cxa_guard_acquire(&qword_1EE1B3728);
    if (a1)
    {
      re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1B38A0);
      qword_1EE1B38A0 = &unk_1F5CFEC88;
      __cxa_guard_release(&qword_1EE1B3728);
    }
  }

  if ((byte_1EE1B351E & 1) == 0)
  {
    v1 = qword_1EE1B3590;
    if (qword_1EE1B3590 || (v1 = re::ecs2::allocInfo_AnimationEntry(a1), qword_1EE1B3590 = v1, re::ecs2::initInfo_AnimationEntry(v1, v2), (byte_1EE1B351E & 1) == 0))
    {
      byte_1EE1B351E = 1;
      v3 = *(v1 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1B38A0, 0);
      qword_1EE1B38B0 = 0x2800000003;
      dword_1EE1B38B8 = v3;
      word_1EE1B38BC = 0;
      *&xmmword_1EE1B38C0 = 0;
      *(&xmmword_1EE1B38C0 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B38D0 = v1;
      qword_1EE1B38D8 = 0;
      qword_1EE1B38A0 = &unk_1F5CFEC88;
      re::IntrospectionRegistry::add(v4, v5);
      re::getPrettyTypeName(&qword_1EE1B38A0, &v13);
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
        re::TypeBuilder::setConstructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v13, 1);
        re::TypeBuilder::setListAccessors(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v13, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v13, v8);
        re::StackScratchAllocator::~StackScratchAllocator(v16);
      }

      xmmword_1EE1B38C0 = v9;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_AnimationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B35A0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35A0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3BE0, "AnimationComponent");
    __cxa_guard_release(&qword_1EE1B35A0);
  }

  return &unk_1EE1B3BE0;
}

void re::ecs2::initInfo_AnimationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x3B8DF49FA88D23F2;
  v22[1] = "AnimationComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1B3598, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B3598);
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
      qword_1EE1B37B8 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::AnimationComponentEntry>>::get(v9);
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "animations";
      *(v10 + 16) = &qword_1EE1B3860;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x2000000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1B37C0 = v10;
      v11 = re::introspectionAllocator(v10);
      v13 = re::introspect_uint64_t(1, v12);
      v14 = (*(*v11 + 32))(v11, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "defaultTimebaseID";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x4800000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B37C8 = v14;
      v15 = re::introspectionAllocator(v14);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::AnimationEntry>>::get(v15);
      v16 = (*(*v15 + 32))(v15, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_animationEntries";
      *(v16 + 16) = &qword_1EE1B38A0;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x6000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B37D0 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_uint64_t(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_currentAnimationToken";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xE000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B37D8 = v20;
      __cxa_guard_release(&qword_1EE1B3598);
    }
  }

  *(this + 2) = 0x10000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B37B8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnimationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnimationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnimationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnimationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218AnimationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void *re::ecs2::allocInfo_AnimationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B35A8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35A8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3C70, "AnimationSystem");
    __cxa_guard_release(&qword_1EE1B35A8);
  }

  return &unk_1EE1B3C70;
}

void re::ecs2::initInfo_AnimationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE82A1A547CEAFD66;
  v6[1] = "AnimationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x36000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AnimationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnimationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnimationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AnimationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AnimationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnimationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnimationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::AnimationSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 78);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 45);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a3 + 224);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AnimationSystem>(re::ecs2::System *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 78);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 45);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(a1 + 224);

  re::ecs2::System::~System(a1);
}

void re::ecs2::AnimationComponent::AnimationComponentEventDelegate::~AnimationComponentEventDelegate(re::ecs2::AnimationComponent::AnimationComponentEventDelegate *this)
{
  re::ecs2::AnimationComponent::AnimationComponentEventDelegate::~AnimationComponentEventDelegate(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CFE618;
  v2 = *(this + 10);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::BufferSlice,8ul>::operator[](this + 40, i);
      v5 = *(v4 + 24);
      if (v5)
      {
        v6 = v4;

        *(v6 + 24) = 0;
      }
    }
  }

  while (*(this + 6))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 5);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  *(this + 10) = 0;
  ++*(this + 22);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 40);
  objc_destroyWeak(this + 4);
  *(this + 4) = 0;
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::AnimationComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::AnimationSystem::~AnimationSystem(re::ecs2::AnimationSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 78);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 45);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 224);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 78);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 45);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AnimationComponent::~AnimationComponent(re::ecs2::AnimationComponent *this)
{
  re::ecs2::AnimationComponent::~AnimationComponent(this);

  JUMPOUT(0x1E6906520);
}

{
  *(this + 30) = 0;
  v2 = *(this + 29);
  if (v2)
  {
    CFRelease(v2);
  }

  if (*(this + 10))
  {
    realitykit_deinitObservation(this + 80);
  }

  re::DynamicArray<re::ecs2::AnimationShadowEntry>::clear(this + 184);
  re::DynamicArray<re::ecs2::AnimationEntry>::clear(this + 96);
  *(this + 34) = 0;
  re::DynamicArray<re::ecs2::AnimationEntry>::clear(this + 144);
  re::DynamicArray<re::ecs2::AnimationComponentEntry>::clear((this + 32));
  *(this + 28) = 1000;
  *(this + 248) = 0;
  v3 = *(this + 23);
  if (v3)
  {
    v4 = *(this + 27);
    if (v4)
    {
      v5 = *(this + 25);
      if (v5)
      {
        v6 = 144 * v5;
        do
        {
          re::ecs2::AnimationShadowEntry::deinit(v4);
          std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](v4 + 6);
          re::AssetHandle::~AssetHandle((v4 + 3));
          v4 += 18;
          v6 -= 144;
        }

        while (v6);
        v3 = *(this + 23);
        v4 = *(this + 27);
      }

      (*(*v3 + 40))(v3, v4);
    }

    *(this + 27) = 0;
    *(this + 24) = 0;
    *(this + 25) = 0;
    *(this + 23) = 0;
    ++*(this + 52);
  }

  re::DynamicArray<re::ecs2::AnimationEntry>::deinit(this + 144);
  re::DynamicArray<re::ecs2::AnimationEntry>::deinit(this + 96);
  v7 = *(this + 11);
  if (v7)
  {

    *(this + 11) = 0;
  }

  re::DynamicArray<re::ecs2::AnimationComponentEntry>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t *std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    std::function<void ()(re::Timeline *)>::operator()(a1[4], v2);
  }

  std::__function::__value_func<void ()(re::Timeline *)>::~__value_func[abi:nn200100]((a1 + 1));
  return a1;
}

uint64_t std::__function::__value_func<void ()(re::Timeline *)>::~__value_func[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
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

uint64_t std::__function::__func<anonymous namespace::processAnimationState(re::ecs2::AnimationEntry const&,re::ecs2::AnimationShadowEntry &,re::AnimationService *,re::ecs2::AnimationComponent *,OpaqueCMTimebase *)::$_0,std::allocator<anonymous namespace::processAnimationState(re::ecs2::AnimationEntry const&,re::ecs2::AnimationShadowEntry &,re::AnimationService *,re::ecs2::AnimationComponent *,OpaqueCMTimebase *)::$_0>,void ()(re::Timeline *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CFE810;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::processAnimationState(re::ecs2::AnimationEntry const&,re::ecs2::AnimationShadowEntry &,re::AnimationService *,re::ecs2::AnimationComponent *,OpaqueCMTimebase *)::$_0,std::allocator<anonymous namespace::processAnimationState(re::ecs2::AnimationEntry const&,re::ecs2::AnimationShadowEntry &,re::AnimationService *,re::ecs2::AnimationComponent *,OpaqueCMTimebase *)::$_0>,void ()(re::Timeline *)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

re::ecs2::AnimationEntry *re::ecs2::AnimationEntry::AnimationEntry(re::ecs2::AnimationEntry *this)
{
  *(this + 41) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  *(this + 57) = 2;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 112) = 0;
  *(this + 29) = 0x80000000;
  *(this + 15) = &str_102;
  *(this + 16) = 0;
  *(this + 136) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(this + 140) = _D0;
  *(this + 37) = 0;
  *(this + 152) = 0;
  *(this + 22) = 0;
  *(this + 23) = 0;
  *(this + 50) = 0;
  *(this + 24) = 0;
  *(this + 26) = 0;
  *(this + 27) = 0;
  objc_initWeak(this + 28, 0);
  *(this + 30) = 0;
  *(this + 31) = 0;
  *(this + 29) = 0;
  return this;
}

void re::ecs2::AnimationEntry::~AnimationEntry(id *this)
{
  re::ecs2::AnimationEntry::deinit(this);
  objc_destroyWeak(this + 28);
  this[28] = 0;
  v2 = this[22];
  if (v2)
  {
    if (this[26])
    {
      (*(*v2 + 40))(v2);
    }

    this[26] = 0;
    this[23] = 0;
    this[24] = 0;
    this[22] = 0;
    ++*(this + 50);
  }

  re::AssetHandle::~AssetHandle((this + 3));

  re::AssetHandle::~AssetHandle(this);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE8A0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE8A0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE8F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE8F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Scene *,RESceneWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Scene *,RESceneWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFE960;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AnimationSystem,REEventHandlerResult (re::ecs2::AnimationSystem::*)(re::ecs2::Scene *,RESceneWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Scene *,RESceneWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFE960;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::ecs2::AnimationComponentEntry::~AnimationComponentEntry(re::ecs2::AnimationComponentEntry *this)
{
  if (*this)
  {

    *this = 0;
  }

  *(this + 1) = 0;
  *(this + 12) = 0;
  *(this + 4) = 0;
  *(this + 40) = 0;
  *(this + 11) = 0x80000000;
  *(this + 6) = &str_102;
  re::AnimationController::stop((this + 56), 0.0);

  re::AssetHandle::~AssetHandle(this);
}

id *std::function<void ()(re::Timeline *)>::operator()(uint64_t a1, uint64_t a2)
{
  v5 = a2;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v5);
  }

  v3 = std::__throw_bad_function_call[abi:nn200100]();
  return re::make::shared::object<re::ecs2::AnimationComponent::AnimationComponentEventDelegate,re::ecs2::AnimationComponent&>(v3, v4);
}

id *re::make::shared::object<re::ecs2::AnimationComponent::AnimationComponentEventDelegate,re::ecs2::AnimationComponent&>@<X0>(re *a1@<X0>, id **a2@<X8>)
{
  v4 = re::globalAllocators(a1);
  v5 = (*(*v4[2] + 32))(v4[2], 96, 8);
  result = re::ecs2::AnimationComponent::AnimationComponentEventDelegate::AnimationComponentEventDelegate(v5, a1);
  *a2 = result;
  return result;
}

id *re::ecs2::AnimationComponent::AnimationComponentEventDelegate::AnimationComponentEventDelegate(id *this, re::ecs2::AnimationComponent *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *this = &unk_1F5CFE618;
  *(this + 6) = 0;
  objc_initWeak(this + 4, a2 + 8);
  this[5] = 0;
  this[6] = 0;
  *(this + 14) = 1;
  this[9] = 0;
  this[10] = 0;
  this[8] = 0;
  *(this + 22) = 0;
  return this;
}

__int128 *re::ecs2::AnimationEntry::operator=(__int128 *a1, __int128 *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = 0u;
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = 0;
  v6 = *a1;
  *a1 = 0;
  *a1 = *a2;
  *a2 = v6;
  v7 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  v8 = *a2;
  *a2 = v4;
  *to = v8;
  *(a2 + 2) = v5;
  *&to[16] = v7;
  re::AssetHandle::~AssetHandle(to);
  v9 = *(a1 + 24);
  *(a1 + 24) = 0u;
  v10 = *(a1 + 5);
  *(a1 + 5) = 0;
  *(a1 + 4) = *(a2 + 4);
  *(a2 + 4) = 0;
  v11 = *(a1 + 3);
  *(a1 + 3) = 0;
  *(a1 + 3) = *(a2 + 3);
  *(a2 + 3) = v11;
  v12 = *(a1 + 5);
  *(a1 + 5) = *(a2 + 5);
  v13 = *(a2 + 24);
  *(a2 + 24) = v9;
  *to = v13;
  *(a2 + 5) = v10;
  *&to[16] = v12;
  re::AssetHandle::~AssetHandle(to);
  v14 = *(a1 + 6);
  *(a1 + 6) = *(a2 + 6);
  *(a2 + 6) = v14;
  LOBYTE(v14) = *(a1 + 56);
  *(a1 + 56) = *(a2 + 56);
  *(a2 + 56) = v14;
  LOBYTE(v14) = *(a1 + 57);
  *(a1 + 57) = *(a2 + 57);
  *(a2 + 57) = v14;
  LOBYTE(v14) = *(a1 + 58);
  *(a1 + 58) = *(a2 + 58);
  *(a2 + 58) = v14;
  v15 = *(a1 + 9);
  *(a1 + 9) = *(a2 + 9);
  *(a2 + 9) = v15;
  v16 = *(a1 + 10);
  *(a1 + 10) = *(a2 + 10);
  *(a2 + 10) = v16;
  v17 = *(a1 + 11);
  *(a1 + 11) = *(a2 + 11);
  *(a2 + 11) = v17;
  v18 = *(a1 + 12);
  *(a1 + 12) = *(a2 + 12);
  *(a2 + 12) = v18;
  v19 = *(a1 + 15);
  v20 = *(a1 + 104);
  v21 = *(a2 + 15);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 15) = v21;
  *(a2 + 104) = v20;
  *(a2 + 15) = v19;
  v22 = *(a1 + 16);
  *(a1 + 16) = *(a2 + 16);
  *(a2 + 16) = v22;
  LOBYTE(v22) = *(a1 + 136);
  *(a1 + 136) = *(a2 + 136);
  *(a2 + 136) = v22;
  LODWORD(v20) = *(a1 + 35);
  *(a1 + 35) = *(a2 + 35);
  *(a2 + 35) = v20;
  LODWORD(v20) = *(a1 + 36);
  *(a1 + 36) = *(a2 + 36);
  *(a2 + 36) = v20;
  LODWORD(v20) = *(a1 + 37);
  *(a1 + 37) = *(a2 + 37);
  *(a2 + 37) = v20;
  *to = 0;
  objc_moveWeak(to, a1 + 28);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a1 + 28, a2 + 28);
  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(a2 + 28, to);
  objc_destroyWeak(to);
  v23 = *(a1 + 29);
  *(a1 + 29) = *(a2 + 29);
  *(a2 + 29) = v23;
  v24 = *(a1 + 30);
  *(a1 + 30) = *(a2 + 30);
  *(a2 + 30) = v24;
  v25 = *(a1 + 31);
  *(a1 + 31) = *(a2 + 31);
  *(a2 + 31) = v25;
  v26 = *(a1 + 152);
  if (v26)
  {
    *&to[7] = a1[10];
    if (*(a2 + 152))
    {
      a1[10] = a2[10];
    }

    else
    {
      *(a1 + 152) = 0;
    }
  }

  else if (*(a2 + 152))
  {
    *(a1 + 152) = 1;
    a1[10] = a2[10];
  }

  if ((*(a2 + 152) & 1) == 0)
  {
    if ((v26 & 1) == 0)
    {
      goto LABEL_13;
    }

    *(a2 + 152) = 1;
LABEL_12:
    a2[10] = *&to[7];
    goto LABEL_13;
  }

  if (v26)
  {
    goto LABEL_12;
  }

  *(a2 + 152) = 0;
LABEL_13:
  *to = *(a1 + 22);
  *&to[8] = *(a1 + 184);
  *(a1 + 22) = 0;
  *(a1 + 23) = 0;
  *(a1 + 24) = 0;
  v31 = *(a1 + 26);
  *(a1 + 26) = 0;
  ++*(a1 + 50);
  v30 = 1;
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a1 + 11), (a2 + 11));
  re::DynamicArray<re::DataArray<re::RigGraphNode>::ElementBlock>::operator=((a2 + 11), to);
  if (*to && v31)
  {
    (*(**to + 40))();
  }

  v27 = *(a1 + 27);
  *(a1 + 27) = *(a2 + 27);
  *(a2 + 27) = v27;
  return a1;
}

void *re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (HIBYTE(a2))
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 256, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = a2 << 8;
          result = (*(*result + 32))(result, a2 << 8, 8);
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
        v10 = v9 << 8;
        v11 = v7;
        do
        {
          re::ecs2::AnimationEntry::AnimationEntry(v11, v8);
          re::ecs2::AnimationEntry::~AnimationEntry(v8);
          v8 += 16;
          v11 += 256;
          v10 -= 256;
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

__int128 *re::ecs2::AnimationEntry::AnimationEntry(uint64_t a1, __int128 *a2)
{
  *(a1 + 41) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 57) = 2;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0;
  *(a1 + 116) = 0x80000000;
  *(a1 + 120) = &str_102;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(a1 + 140) = _D0;
  *(a1 + 148) = 0;
  *(a1 + 152) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 200) = 0;
  *(a1 + 192) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  objc_initWeak((a1 + 224), 0);
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = 0;

  return re::ecs2::AnimationEntry::operator=(a1, a2);
}

uint64_t *re::ecs2::AnimationShadowEntry::operator=(uint64_t *a1, uint64_t *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  *a1 = *a2;
  *a2 = v4;
  v5 = a1[1];
  v6 = a1[2];
  a1[1] = 0;
  a1[2] = 0;
  a1[1] = a2[1];
  a1[2] = a2[2];
  a2[1] = v5;
  a2[2] = v6;
  v7 = *(a1 + 3);
  a1[3] = 0;
  a1[4] = 0;
  v8 = a1[5];
  a1[5] = 0;
  a1[4] = a2[4];
  a2[4] = 0;
  v9 = a1[3];
  a1[3] = 0;
  a1[3] = a2[3];
  a2[3] = v9;
  v10 = a1[5];
  a1[5] = a2[5];
  v11 = *(a2 + 3);
  *(a2 + 3) = v7;
  *v25 = v11;
  a2[5] = v8;
  *&v25[16] = v10;
  re::AssetHandle::~AssetHandle(v25);
  v12 = a1[6];
  a1[6] = a2[6];
  a2[6] = v12;
  if (a2 != a1)
  {
    v13 = a1 + 7;
    v14 = a2 + 7;
    v15 = a1[10];
    v16 = a2[10];
    if (v15 == a1 + 7)
    {
      if (v16 == v14)
      {
        (*(*v15 + 24))(v15, v25);
        (*(*a1[10] + 32))(a1[10]);
        a1[10] = 0;
        (*(*a2[10] + 24))(a2[10], a1 + 7);
        (*(*a2[10] + 32))(a2[10]);
        a2[10] = 0;
        a1[10] = v13;
        (*(*v25 + 24))(v25, a2 + 7);
        (*(*v25 + 32))(v25);
      }

      else
      {
        (*(*v15 + 24))(v15, a2 + 7);
        (*(*a1[10] + 32))(a1[10]);
        a1[10] = a2[10];
      }

      a2[10] = v14;
    }

    else if (v16 == v14)
    {
      (*(*v16 + 24))(a2[10], a1 + 7);
      (*(*a2[10] + 32))(a2[10]);
      a2[10] = a1[10];
      a1[10] = v13;
    }

    else
    {
      a1[10] = v16;
      a2[10] = v15;
    }
  }

  v17 = *(a1 + 88);
  *(a1 + 88) = *(a2 + 88);
  *(a2 + 88) = v17;
  v18 = *(a1 + 89);
  *(a1 + 89) = *(a2 + 89);
  *(a2 + 89) = v18;
  v19 = a1[12];
  a1[12] = a2[12];
  a2[12] = v19;
  LOBYTE(v19) = *(a1 + 104);
  *(a1 + 104) = *(a2 + 104);
  *(a2 + 104) = v19;
  v20 = *(a1 + 27);
  *(a1 + 27) = *(a2 + 27);
  *(a2 + 27) = v20;
  v21 = *(a1 + 28);
  *(a1 + 28) = *(a2 + 28);
  *(a2 + 28) = v21;
  v22 = *(a1 + 29);
  *(a1 + 29) = *(a2 + 29);
  *(a2 + 29) = v22;
  v23 = *(a1 + 120);
  if (v23)
  {
    *&v25[7] = *(a1 + 8);
    if (a2[15])
    {
      *(a1 + 8) = *(a2 + 8);
    }

    else
    {
      *(a1 + 120) = 0;
    }
  }

  else if (a2[15])
  {
    *(a1 + 120) = 1;
    *(a1 + 8) = *(a2 + 8);
  }

  if ((a2[15] & 1) == 0)
  {
    if ((v23 & 1) == 0)
    {
      return a1;
    }

    *(a2 + 120) = 1;
LABEL_21:
    *(a2 + 8) = *&v25[7];
    return a1;
  }

  if (v23)
  {
    goto LABEL_21;
  }

  *(a2 + 120) = 0;
  return a1;
}

void *re::DynamicArray<re::ecs2::AnimationShadowEntry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::AnimationShadowEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::AnimationShadowEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::AnimationShadowEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::AnimationShadowEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x90uLL))
        {
          v2 = 144 * a2;
          result = (*(*result + 32))(result, 144 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 144, a2);
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
        v10 = 0;
        v11 = 144 * v9;
        __asm { FMOV            V8.2S, #1.0 }

        do
        {
          v17 = &v7[v10 / 8];
          v17[10] = 0;
          *v17 = 0u;
          *(v17 + 1) = 0u;
          *(v17 + 2) = 0u;
          v17[6] = 0;
          *(v17 + 44) = 2;
          v17[12] = 0;
          *(v17 + 104) = 0;
          *(v17 + 108) = _D8;
          *(v17 + 29) = 0;
          *(v17 + 120) = 0;
          re::ecs2::AnimationShadowEntry::operator=(&v7[v10 / 8], (v8 + v10));
          re::ecs2::AnimationShadowEntry::deinit((v8 + v10));
          std::unique_ptr<re::Timeline,std::function<void ()(re::Timeline*)>>::~unique_ptr[abi:nn200100]((v8 + v10 + 48));
          re::AssetHandle::~AssetHandle((v8 + v10 + 24));
          v10 += 144;
        }

        while (v11 != v10);
        v8 = v5[4];
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_16;
    }
  }

  return result;
}

id *re::DynamicArray<re::ecs2::AnimationEntry>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a1, *(a2 + 16));
    v12 = *(a2 + 32);
    v13 = a1[2];
    result = a1[4];
    if (v13)
    {
      v14 = v13 << 8;
      do
      {
        v15 = re::ecs2::AnimationEntry::operator=(result, v12);
        v12 += 256;
        result = (v15 + 256);
        v14 -= 256;
      }

      while (v14);
      result = a1[4];
      v13 = a1[2];
      v12 = *(a2 + 32);
    }

    if (v13 != v4)
    {
      v16 = v12 + (v13 << 8);
      v17 = &result[32 * v13];
      __asm { FMOV            V8.2S, #1.0 }

      v23 = (v4 << 8) - (v13 << 8);
      do
      {
        *(v17 + 41) = 0u;
        *(v17 + 16) = 0u;
        *(v17 + 32) = 0u;
        *v17 = 0u;
        *(v17 + 57) = 2;
        *(v17 + 64) = 0u;
        *(v17 + 80) = 0u;
        *(v17 + 96) = 0u;
        *(v17 + 112) = 0;
        *(v17 + 116) = 0x80000000;
        *(v17 + 120) = &str_102;
        *(v17 + 128) = 0;
        *(v17 + 136) = 0;
        *(v17 + 140) = _D8;
        *(v17 + 148) = 0;
        *(v17 + 152) = 0;
        *(v17 + 176) = 0;
        *(v17 + 184) = 0;
        *(v17 + 200) = 0;
        *(v17 + 192) = 0;
        *(v17 + 208) = 0;
        *(v17 + 216) = 0;
        objc_initWeak((v17 + 224), 0);
        *(v17 + 240) = 0;
        *(v17 + 248) = 0;
        *(v17 + 232) = 0;
        result = re::ecs2::AnimationEntry::operator=(v17, v16);
        v16 += 256;
        v17 += 256;
        v23 -= 256;
      }

      while (v23);
    }
  }

  else
  {
    result = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = v4 << 8;
      do
      {
        v9 = re::ecs2::AnimationEntry::operator=(result, v7);
        v7 += 256;
        result = (v9 + 256);
        v8 -= 256;
      }

      while (v8);
      result = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      result += 32 * v4;
      v10 = (v5 << 8) - (v4 << 8);
      do
      {
        re::ecs2::AnimationEntry::~AnimationEntry(result);
        result = (v11 + 256);
        v10 -= 256;
      }

      while (v10);
    }
  }

  a1[2] = v4;
  return result;
}

uint64_t re::ecs2::AnimationEntry::operator=(uint64_t a1, uint64_t a2)
{
  re::ecs2::AnimationEntry::deinit(a1);
  re::AssetHandle::operator=(a1, a2);
  v4 = re::AssetHandle::operator=(a1 + 24, (a2 + 24));
  v5 = *(a2 + 48);
  if (v5)
  {
  }

  else
  {
    v6 = 0;
  }

  *(a1 + 48) = v6;
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 57) = *(a2 + 57);
  *(a1 + 72) = *(a2 + 72);
  v7 = *(a2 + 88);
  *(a1 + 88) = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  *(a1 + 96) = *(a2 + 96);
  v8 = *(a2 + 104);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 104) = v8;
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 136) = *(a2 + 136);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 148) = *(a2 + 148);
  if (*(a1 + 152))
  {
    if ((*(a2 + 152) & 1) == 0)
    {
      *(a1 + 152) = 0;
      goto LABEL_12;
    }
  }

  else
  {
    if ((*(a2 + 152) & 1) == 0)
    {
      goto LABEL_12;
    }

    *(a1 + 152) = 1;
  }

  *(a1 + 160) = *(a2 + 160);
LABEL_12:
  if (a1 != a2)
  {
    v9 = *(a2 + 176);
    if (*(a1 + 176))
    {
      if (v9)
      {
        re::DynamicArray<re::RigNodeChannel>::copy((a1 + 176), a2 + 176);
      }

      else
      {
        *(a1 + 192) = 0;
      }

      ++*(a1 + 200);
    }

    else if (v9)
    {
      v10 = *(a2 + 192);
      *(a1 + 176) = v9;
      re::DynamicArray<re::RigNodeConstraint>::setCapacity((a1 + 176), v10);
      ++*(a1 + 200);
      re::DynamicArray<re::RigNodeChannel>::copy((a1 + 176), a2 + 176);
    }
  }

  v11 = *(a2 + 232);
  *(a1 + 232) = v11;
  if (v11)
  {
    CFRetain(v11);
  }

  v12 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v12;
  if (v12)
  {
    CFRetain(v12);
  }

  *(a1 + 216) = *(a2 + 216);
  return a1;
}

uint64_t re::EventBus::getTypeId<REAnimationHasTimelineEventUpdate>()
{
  if ((atomic_load_explicit(&qword_1EE1B35B8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35B8))
  {
    qword_1EE1B35B0 = re::EventBus::typeStringToId(("33REAnimationHasTimelineEventUpdate" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B35B8);
  }

  return qword_1EE1B35B0;
}

uint64_t re::EventBus::getTypeId<REAnimationHasTimelineEventEnd>()
{
  if ((atomic_load_explicit(&qword_1EE1B35C8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35C8))
  {
    qword_1EE1B35C0 = re::EventBus::typeStringToId(("30REAnimationHasTimelineEventEnd" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B35C8);
  }

  return qword_1EE1B35C0;
}

uint64_t re::EventBus::getTypeId<REAnimationTimelineEventCreated>()
{
  if ((atomic_load_explicit(&qword_1EE1B35D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35D8))
  {
    qword_1EE1B35D0 = re::EventBus::typeStringToId(("31REAnimationTimelineEventCreated" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B35D8);
  }

  return qword_1EE1B35D0;
}

uint64_t re::EventBus::getTypeId<REAnimationTimelineEventTerminated>()
{
  if ((atomic_load_explicit(&qword_1EE1B35E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35E8))
  {
    qword_1EE1B35E0 = re::EventBus::typeStringToId(("34REAnimationTimelineEventTerminated" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B35E8);
  }

  return qword_1EE1B35E0;
}

uint64_t re::EventBus::getTypeId<REAnimationTimelineEventSkipped>()
{
  if ((atomic_load_explicit(&qword_1EE1B35F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B35F8))
  {
    qword_1EE1B35F0 = re::EventBus::typeStringToId(("31REAnimationTimelineEventSkipped" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B35F8);
  }

  return qword_1EE1B35F0;
}

uint64_t re::EventBus::getTypeId<REAnimationTimelineEventPause>()
{
  if ((atomic_load_explicit(&qword_1EE1B3608, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3608))
  {
    qword_1EE1B3600 = re::EventBus::typeStringToId(("29REAnimationTimelineEventPause" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B3608);
  }

  return qword_1EE1B3600;
}

uint64_t re::EventBus::getTypeId<REAnimationTimelineEventResume>()
{
  if ((atomic_load_explicit(&qword_1EE1B3618, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3618))
  {
    qword_1EE1B3610 = re::EventBus::typeStringToId(("30REAnimationTimelineEventResume" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B3618);
  }

  return qword_1EE1B3610;
}

uint64_t re::EventBus::getTypeId<REAnimationHasTerminatedEvent>()
{
  if ((atomic_load_explicit(&qword_1EE1B36D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B36D8))
  {
    qword_1EE1B36D0 = re::EventBus::typeStringToId(("29REAnimationHasTerminatedEvent" & 0x7FFFFFFFFFFFFFFFLL), v1);
    __cxa_guard_release(&qword_1EE1B36D8);
  }

  return qword_1EE1B36D0;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFED20;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<REEventHandlerResult (*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFED20;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTerminatedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CFE9B8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTerminatedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CFE9B8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTerminatedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTerminatedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CFE9B8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTerminatedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CFE9B8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTerminatedEvent const&)>::destroyCallable(a1);
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFEA10;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFEA68;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFEAC0;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFEB18;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CFEA10;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFEA68;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFEAC0;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFEB18;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFEA10;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFEA10;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFEA68;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFEA68;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFEAC0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFEAC0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFEB18;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFEB18;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::AnimationComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t re::IntrospectionOptional<re::ecs2::ExternalAnimationEntry>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1B3820, 0);
  *(&qword_1EE1B3830 + 6) = 0;
  qword_1EE1B3830 = 0;
  *&xmmword_1EE1B3840 = 0;
  *(&xmmword_1EE1B3840 + 1) = 0xFFFFFFFFLL;
  qword_1EE1B3820 = &unk_1F5CBA310;
  qword_1EE1B3858 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1B3850);
  qword_1EE1B3820 = &unk_1F5CFEB70;
  return result;
}

void *re::IntrospectionOptional<re::ecs2::ExternalAnimationEntry>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::ecs2::ExternalAnimationEntry>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::ecs2::ExternalAnimationEntry>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::ecs2::ExternalAnimationEntry>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::ecs2::ExternalAnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<re::ecs2::ExternalAnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, __int128 *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*result)
    {
      v2 = *a2;
    }

    else
    {
      *result = 1;
      v2 = v3;
    }

    *(result + 8) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::AnimationComponentEntry>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::AnimationComponentEntry>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  v11 = 0u;
  memset(v10, 0, sizeof(v10));
  HIDWORD(v11) = 0x80000000;
  v13 = 0;
  v14 = 0;
  v12 = &str_102;
  re::DynamicArray<re::ecs2::AnimationComponentEntry>::add(a4, v10);
  re::ecs2::AnimationComponentEntry::~AnimationComponentEntry(v10);
  v8 = (*(a4 + 32) + 72 * *(a4 + 16) - 72);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::AnimationComponentEntry>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
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

uint64_t re::DynamicArray<re::ecs2::AnimationComponentEntry>::deinit(uint64_t a1)
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
        v5 = 72 * v4;
        do
        {
          re::ecs2::AnimationComponentEntry::~AnimationComponentEntry(v3);
          v3 = (v3 + 72);
          v5 -= 72;
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

void *re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(v5, a2);
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
        v10 = 72 * v9;
        v11 = v7;
        do
        {
          *(v11 + 40) = 0;
          v11[4] = 0;
          v11[1] = 0;
          v11[2] = 0;
          *v11 = 0;
          *(v11 + 12) = 0;
          *(v11 + 11) = 0x80000000;
          v11[7] = 0;
          v11[8] = 0;
          v11[6] = &str_102;
          re::ecs2::AnimationComponentEntry::operator=(v11, v8);
          re::ecs2::AnimationComponentEntry::~AnimationComponentEntry(v8);
          v8 = (v8 + 72);
          v11 += 9;
          v10 -= 72;
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

__int128 *re::ecs2::AnimationComponentEntry::operator=(__int128 *a1, __int128 *a2)
{
  v4 = *a1;
  *a1 = 0u;
  v5 = *(a1 + 2);
  *(a1 + 2) = 0;
  *(a1 + 1) = *(a2 + 1);
  *(a2 + 1) = 0;
  v6 = *a1;
  *a1 = 0;
  *a1 = *a2;
  *a2 = v6;
  v7 = *(a1 + 2);
  *(a1 + 2) = *(a2 + 2);
  v8 = *a2;
  *a2 = v4;
  v18 = v8;
  *(a2 + 2) = v5;
  v19 = v7;
  re::AssetHandle::~AssetHandle(&v18);
  v9 = *(a1 + 24);
  *(a1 + 24) = *(a2 + 24);
  *(a2 + 24) = v9;
  v10 = *(a1 + 25);
  *(a1 + 25) = *(a2 + 25);
  *(a2 + 25) = v10;
  v11 = *(a1 + 6);
  v12 = a1[2];
  v13 = *(a2 + 6);
  a1[2] = a2[2];
  *(a1 + 6) = v13;
  a2[2] = v12;
  *(a2 + 6) = v11;
  v14 = *(a1 + 7);
  v15 = *(a1 + 8);
  *(a1 + 56) = 0u;
  v16 = *(a2 + 8);
  *(a1 + 7) = *(a2 + 7);
  *(a1 + 8) = v16;
  *(a2 + 7) = v14;
  *(a2 + 8) = v15;
  return a1;
}

void re::DynamicArray<re::ecs2::AnimationComponentEntry>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = 72 * a2;
    v9 = a2;
    do
    {
      re::ecs2::AnimationComponentEntry::~AnimationComponentEntry((*(a1 + 32) + v8));
      ++v9;
      v8 += 72;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 72 * v4;
      do
      {
        v7 = *(a1 + 32) + v6;
        *(v7 + 16) = 0uLL;
        *(v7 + 32) = 0uLL;
        *v7 = 0uLL;
        *(v7 + 44) = 0x80000000;
        *(v7 + 56) = 0;
        *(v7 + 64) = 0;
        *(v7 + 48) = &str_102;
        v6 += 72;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

__int128 *re::DynamicArray<re::ecs2::AnimationComponentEntry>::add(uint64_t a1, __int128 *a2)
{
  v4 = *(a1 + 16);
  if (v4 >= *(a1 + 8))
  {
    re::DynamicArray<re::ecs2::AnimationComponentEntry>::growCapacity(a1, v4 + 1);
    v4 = *(a1 + 16);
  }

  v5 = *(a1 + 32) + 72 * v4;
  *(v5 + 40) = 0;
  *(v5 + 32) = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = 0;
  *v5 = 0;
  *(v5 + 24) = 0;
  *(v5 + 44) = 0x80000000;
  *(v5 + 56) = 0;
  *(v5 + 64) = 0;
  *(v5 + 48) = &str_102;
  result = re::ecs2::AnimationComponentEntry::operator=(v5, a2);
  ++*(a1 + 16);
  ++*(a1 + 24);
  return result;
}

void *re::DynamicArray<re::ecs2::AnimationComponentEntry>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationComponentEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationComponentEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::AnimationComponentEntry>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::AnimationComponentEntry>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::AnimationComponentEntry>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::AnimationComponentEntry>::resize(a1, a4);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationComponentEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationComponentEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationComponentEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationComponentEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::AnimationEntry>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::ecs2::AnimationEntry>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4)
{
  memset(v10, 0, sizeof(v10));
  re::ecs2::AnimationEntry::AnimationEntry(v10);
  re::DynamicArray<re::ecs2::AnimationEntry>::add(a4, v10);
  re::ecs2::AnimationEntry::~AnimationEntry(v10);
  v8 = (*(a4 + 32) + (*(a4 + 16) << 8) - 256);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v8);
  return v8;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::AnimationEntry>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + (a3 << 8);
}

uint64_t re::DynamicArray<re::ecs2::AnimationEntry>::deinit(uint64_t a1)
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
        v5 = v4 << 8;
        do
        {
          re::ecs2::AnimationEntry::~AnimationEntry(v3);
          v3 += 32;
          v5 -= 256;
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

void re::DynamicArray<re::ecs2::AnimationEntry>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v8 = a2 << 8;
    v9 = a2;
    do
    {
      re::ecs2::AnimationEntry::~AnimationEntry((*(a1 + 32) + v8));
      ++v9;
      v8 += 256;
    }

    while (v9 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = v4 << 8;
      do
      {
        v7 = (*(a1 + 32) + v6);
        *(v7 + 14) = 0u;
        *(v7 + 15) = 0u;
        *(v7 + 12) = 0u;
        *(v7 + 13) = 0u;
        *(v7 + 10) = 0u;
        *(v7 + 11) = 0u;
        *(v7 + 8) = 0u;
        *(v7 + 9) = 0u;
        *(v7 + 6) = 0u;
        *(v7 + 7) = 0u;
        *(v7 + 4) = 0u;
        *(v7 + 5) = 0u;
        *(v7 + 2) = 0u;
        *(v7 + 3) = 0u;
        *v7 = 0u;
        *(v7 + 1) = 0u;
        re::ecs2::AnimationEntry::AnimationEntry(v7);
        v6 += 256;
        --v5;
      }

      while (v5);
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::AnimationEntry>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::AnimationEntry>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::AnimationEntry>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  re::DynamicArray<re::ecs2::AnimationEntry>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = v9 << 8;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 256;
        v11 -= 256;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + (a2 << 8);
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + (v5 << 8);
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::AnimationEntry>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs218AnimationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::AnimationSystem *re::ecs2::AnimationSystem::AnimationSystem(re::ecs2::AnimationSystem *this)
{
  v2 = re::ecs2::System::System(this, 1);
  *v2 = &unk_1F5CFE750;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0x7FFFFFFFLL;
  *(v2 + 320) = 0u;
  *(v2 + 336) = &unk_1F5CFE690;
  *(v2 + 344) = 0u;
  re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::BasicComponentStates(v2 + 360, this, v2 + 336);
  *(this + 75) = &unk_1F5CFE6F8;
  *(this + 38) = 0u;
  re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::BasicComponentStates(this + 624, this, this + 600);
  return this;
}

uint64_t re::ecs2::BasicComponentStates<re::ecs2::AnimationComponent>::BasicComponentStates(uint64_t a1, uint64_t a2, uint64_t a3)
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

void re::ecs2::TextComponent::~TextComponent(id *this)
{
  *this = &unk_1F5CFED78;
  [this[4] invalidate];
  v2 = this[4];
  this[4] = 0;

  [this[6] invalidate];
  v3 = this[6];
  this[6] = 0;

  v4 = this[10];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = this[11];
  if (v5)
  {
    CGColorRelease(v5);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 1);
}

{
  re::ecs2::TextComponent::~TextComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::TextComponent::setSize(void **this, const CGSize *a2)
{
  v3 = this;
  v16 = *MEMORY[0x1E69E9840];
  width = a2->width;
  height = a2->height;
  v6 = *(this + 8) == a2->width && *(this + 9) == height;
  v7 = a2->width;
  if (!v6)
  {
    this = re::ecs2::Component::markDirty(this);
    v7 = a2->width;
  }

  if (v7 > 2048.0)
  {
    v8 = *re::ecsComponentsLogObjects(this);
    this = os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT);
    if (this)
    {
      v9 = a2->width;
      v12 = 134218240;
      v13 = v9;
      v14 = 1024;
      v15 = 2048;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Clamping TextComponent width from %f to %d. Larger sizes are not supported.", &v12, 0x12u);
    }

    width = 2048.0;
  }

  if (a2->height > 2048.0)
  {
    v10 = *re::ecsComponentsLogObjects(this);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = a2->height;
      v12 = 134218240;
      v13 = v11;
      v14 = 1024;
      v15 = 2048;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Clamping TextComponent height from %f to %d. Larger sizes are not supported.", &v12, 0x12u);
    }

    height = 2048.0;
  }

  *(v3 + 8) = width;
  *(v3 + 9) = height;
}

void re::ecs2::TextComponent::setAttributedString(void **this, const __CFAttributedString *a2)
{
  if (this[10] != a2)
  {
    re::ecs2::Component::markDirty(this);
    v4 = this[10];
    if (v4)
    {
      CFRelease(v4);
    }

    this[10] = a2;
    if (a2)
    {

      CFRetain(a2);
    }
  }
}

CGColorRef re::ecs2::TextComponent::setBackgroundColor(CGColorRef this, CGColor *a2)
{
  v2 = a2;
  v3 = this;
  if (!a2)
  {
    v4 = *MEMORY[0x1E695F090];
    do
    {
      this = CGColorGetConstantColor(v4);
    }

    while (!this);
    v2 = this;
  }

  if (*(v3 + 88) != v2)
  {
    re::ecs2::Component::markDirty(v3);
    v5 = *(v3 + 88);
    if (v5)
    {
      CFRelease(v5);
    }

    *(v3 + 88) = v2;

    return CFRetain(v2);
  }

  return this;
}

uint64_t re::ecs2::TextComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE18DA48, memory_order_acquire) & 1) == 0)
  {
    v17 = __cxa_guard_acquire(&qword_1EE18DA48);
    if (v17)
    {
      v18 = qword_1EE18DA38;
      if (!qword_1EE18DA38)
      {
        v18 = re::ecs2::allocInfo_TextComponent(v17);
        qword_1EE18DA38 = v18;
        re::ecs2::initInfo_TextComponent(v18, v19);
      }

      qword_1EE18DA40 = v18;
      __cxa_guard_release(&qword_1EE18DA48);
    }
  }

  v2 = strlen(*(qword_1EE18DA40 + 48));
  v23[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE18DA40 + 48), v2);
  v23[1] = v3;
  v4 = re::globalAllocators(v23[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v23, 0, 4);
  *v6 = &unk_1F5CFEF08;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0x80);
  if ((atomic_load_explicit(&qword_1EE18DA48, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_1EE18DA48);
    if (v20)
    {
      v21 = qword_1EE18DA38;
      if (!qword_1EE18DA38)
      {
        v21 = re::ecs2::allocInfo_TextComponent(v20);
        qword_1EE18DA38 = v21;
        re::ecs2::initInfo_TextComponent(v21, v22);
      }

      qword_1EE18DA40 = v21;
      __cxa_guard_release(&qword_1EE18DA48);
    }
  }

  v8 = qword_1EE18DA40;
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

  re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  result = re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 1);
  *(re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 1) = re::ecs2::TextComponent::clone;
  return result;
}

re::ecs2::TextComponent *re::ecs2::TextComponent::clone(re::ecs2::TextComponent *this, const re::ecs2::Component *a2)
{
  (*(*re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 32))(v9);
  v3 = v9[0];
  *v9 = *(this + 4);
  re::ecs2::TextComponent::setSize(v3, v9);
  re::ecs2::TextComponent::setAttributedString(v3, *(this + 10));
  re::ecs2::TextComponent::setBackgroundColor(v3, *(this + 11));
  v4 = *(this + 24);
  if (*(v3 + 24) != v4)
  {
    re::ecs2::Component::markDirty(v3);
  }

  *(v3 + 24) = v4;
  v5 = _Block_copy(*(this + 15));
  v6 = _Block_copy(v5);
  v7 = *(v3 + 15);
  *(v3 + 15) = v6;

  return v3;
}

uint64_t re::ecs2::TextComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v105 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v9 = *buf;
  v77 = a4;
  v78 = *buf;
  v79 = *&buf[8];
  v10 = *&buf[8];
  v11 = HIWORD(*&buf[8]);
  if (*buf == a5 && *&buf[8] == 0xFFFF && v11 == 0xFFFF)
  {
    return *(a5 + 40) != 0;
  }

  name = *MEMORY[0x1E695F1C0];
  v72 = vdupq_n_s64(0x3F371EA104B00977uLL);
  while (1)
  {
    v14 = v11;
    v15 = *(v9 + 16);
    if (v15 <= v11)
    {
      v81[0] = 0;
      memset(buf, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v85 = 136315906;
      *&v85[4] = "operator[]";
      v86 = 1024;
      v87 = 797;
      v88 = 2048;
      v89 = v14;
      v90 = 2048;
      v91 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_90:
      *v80 = 0;
      memset(buf, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v85 = 136315906;
      *&v85[4] = "operator[]";
      v86 = 1024;
      v87 = 789;
      v88 = 2048;
      v89 = 0;
      v90 = 2048;
      v91 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_91:
      v81[0] = 0;
      memset(buf, 0, 80);
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v85 = 136315906;
      *&v85[4] = "operator[]";
      v86 = 1024;
      v87 = 789;
      v88 = 2048;
      v89 = 0;
      v90 = 2048;
      v91 = 0;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if ((*(a1 + 40) & 1) == 0)
    {
      break;
    }

LABEL_85:
    v69 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v78);
    re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v77, v69, *(a3 + 32));
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v78);
    v9 = v78;
    v10 = v79;
    v11 = HIWORD(v79);
    if (v78 == a5 && v79 == 0xFFFF && HIWORD(v79) == 0xFFFF)
    {
      return *(a5 + 40) != 0;
    }
  }

  v16 = *(*(*(v9 + 32) + 16 * v11) + 8 * v10);
  v17 = *(v16 + 16);
  v18 = +[RETextLayer layer];
  [v18 setName:@"TextComponent Text Layer"];
  [v18 setValue:MEMORY[0x1E695E118] forKeyPath:@"separatedOptions.enableContext"];
  if (*(a1 + 40) == 1)
  {
    *&buf[8] = 0;
    *&buf[16] = 0;
    *buf = 0x3FF0000000000000;
    *&buf[24] = 0xBFF0000000000000;
    *&buf[40] = 0;
    [v18 setAffineTransform:buf];
  }

  v19 = _Block_copy(*(v16 + 120));

  if (v19)
  {
    [v18 setGeometryFlipped:1];
  }

  v20 = [MEMORY[0x1E6979398] layer];
  [v20 setName:@"Parent of TextComponent Layer"];
  [v20 addSublayer:v18];
  v21 = *(v16 + 40);
  *(v16 + 40) = v20;

  [MEMORY[0x1E6979520] begin];
  [MEMORY[0x1E6979520] setDisableActions:1];
  v23 = *(v16 + 64);
  v22 = *(v16 + 72);
  v24 = *(v16 + 96);
  v25 = *(a1 + 40);
  v26 = *(v16 + 40);
  v27 = v26;
  if (v25 == 1)
  {
    [v26 setContentsScale:2.0];
    [*(v16 + 56) setFrame:{0.0, 0.0, v23, v22}];
  }

  else
  {
    v28 = [v26 sublayers];
    v29 = [v28 objectAtIndex:0];

    [v27 setFrame:{0.0, 0.0, v23, v22}];
    [v27 setContentsScale:2.0];

    v27 = v29;
  }

  [v27 setFrame:{0.0, 0.0, v23, v22}];
  [v27 setAttributedString:*(v16 + 80)];
  [v27 setBackgroundColor:*(v16 + 88)];
  LODWORD(v30) = *(v16 + 100);
  LODWORD(v31) = *(v16 + 104);
  LODWORD(v32) = *(v16 + 108);
  LODWORD(v33) = *(v16 + 112);
  [v27 setEdgeInsets:{v30, v31, v32, v33}];
  v34 = _Block_copy(*(v16 + 120));
  [v27 setRenderBlock:v34];

  [v27 setNeedsDisplay];
  v35 = [MEMORY[0x1E6979520] commit];
  if (*(a1 + 40))
  {
    goto LABEL_84;
  }

  v36 = vcvtpd_u64_f64(v23);
  v37 = vcvtpd_u64_f64(v22);
  if (!(v37 * v36))
  {
    v48 = *re::ecsComponentsLogObjects(v35);
    if (!os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 134218240;
    *&buf[4] = v36;
    *&buf[12] = 2048;
    *&buf[14] = v37;
    v49 = v48;
    v50 = "TextComponent attempted to create an empty context size of (%lu x %lu)";
LABEL_36:
    _os_log_impl(&dword_1E1C61000, v49, OS_LOG_TYPE_DEFAULT, v50, buf, 0x16u);
    goto LABEL_84;
  }

  v76 = v17;
  v38 = CGColorSpaceCreateWithName(name);
  v39 = CGBitmapContextCreate(0, v36, v37, 8uLL, 4 * v36, v38, 1u);
  CGColorSpaceRelease(v38);
  if (!v39)
  {
    v51 = *re::ecsComponentsLogObjects(v40);
    if (!os_log_type_enabled(v51, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_84;
    }

    *buf = 134218240;
    *&buf[4] = v36;
    *&buf[12] = 2048;
    *&buf[14] = v37;
    v49 = v51;
    v50 = "TextComponent failed to create a context size of (%lu x %lu)";
    goto LABEL_36;
  }

  [*(v16 + 40) renderInContext:v39];
  v41 = CGBitmapContextCreateImage(v39);
  CGContextRelease(v39);
  image = v41;
  if (!v41)
  {
    v52 = *re::ecsComponentsLogObjects(v42);
    if (os_log_type_enabled(v52, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 134218240;
      *&buf[4] = v36;
      *&buf[12] = 2048;
      *&buf[14] = v37;
      v49 = v52;
      v50 = "TextComponent failed to create an image of a given bitmap context of size (%lu x %lu)";
      goto LABEL_36;
    }

LABEL_84:

    goto LABEL_85;
  }

  v73 = *(*(*(a1 + 8) + 232) + 208);
  v83 = 0;
  v84 = v73;
  *buf = 0;
  *v85 = 0;
  v81[0] = 2;
  TextureCompressionType = re::mtl::getTextureCompressionType(&v84, &v83, buf, v85, v81);
  v44 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
  v82 = v44;
  [v44 setStorageMode_];
  if (([v44 respondsToSelector_] & 1) != 0 || objc_msgSend(v44, sel_methodSignatureForSelector_, sel_setCompressionType_))
  {
    [v44 setCompressionType_];
  }

  *buf = 0;
  *&buf[8] = 0x100000000;
  *&buf[40] = 0;
  buf[44] = 0;
  *&buf[48] = 0;
  buf[52] = 0;
  memset(&buf[20], 0, 17);
  *&buf[56] = 6;
  memset(&buf[64], 0, 24);
  LODWORD(v100) = -65536;
  v102 = 0;
  v103 = 0;
  v101 = 0;
  v104 = 0;
  *&buf[16] = 1;
  v45 = re::ImportGraphicsContext::createFromRenderManager(*(*(a1 + 8) + 232), v81);
  v46 = CGImageRetain(image);
  if (!*&v85[8])
  {
    if (*v85)
    {
      NS::SharedPtr<MTL::Buffer>::operator=((a1 + 16), v85);
      if (*(a1 + 32) && *(a1 + 24))
      {
        re::TextureHandle::setMetalTexture((a1 + 24), (a1 + 16));
      }

      else
      {
        re::TextureManager::registerTexture(*(*(*(a1 + 8) + 232) + 56), (a1 + 16), v80);
        re::TextureHandle::operator=(a1 + 24, v80);
        re::TextureHandle::invalidate(v80);
      }

LABEL_44:
      if (v94)
      {
        if (v98)
        {
          (*(*v94 + 40))();
        }

        v98 = 0;
        v95 = 0;
        v96 = 0;
        v94 = 0;
        ++v97;
      }

      if (v92)
      {

        v92 = 0;
      }

      if (*&v85[8] != -1)
      {
        (off_1F5CFEEE8[*&v85[8]])(v80, v85);
      }

      if (v101)
      {
        if (v102)
        {
          (*(*v101 + 40))();
          v102 = 0;
          v103 = 0;
        }

        v101 = 0;
      }

      if (v82)
      {
      }

      CGImageRelease(image);
      v54 = re::ecs2::EntityComponentCollection::getOrAdd((v76 + 6), re::ecs2::ComponentImpl<re::ecs2::PrimitivePlaneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v55 = v36 * 0.000352777778;
      v56.f64[0] = v37;
      v56.f64[1] = v24;
      v54[4].f32[1] = v55;
      v54[5] = vcvt_f32_f64(vmulq_f64(v56, v72));
      v54[4].i16[0] = 32;
      v54[6].i32[1] = 4;
      re::ecs2::Component::markDirty(v54);
      v57 = v76[24];
      if (!v57)
      {
        v57 = re::ecs2::EntityComponentCollection::add((v76 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      }

      if (!*(v57 + 72))
      {
        (*(**(*(a1 + 8) + 240) + 8))(buf);
        re::DynamicArray<re::AssetHandle>::add((v57 + 56), buf);
        re::ecs2::Component::markDirty(v57);
        v58 = v76[27];
        if (v58 || (v58 = re::ecs2::EntityComponentCollection::add((v76 + 6), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0)
        {
          re::ecs2::NetworkComponent::markDirty(v58, v57);
        }

        re::AssetHandle::~AssetHandle(buf);
      }

      v59 = v76[26];
      if (!v59)
      {
        v59 = re::ecs2::EntityComponentCollection::add((v76 + 6), re::ecs2::ComponentImpl<re::ecs2::MaterialParameterBlockArrayComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      if (!*(v59 + 6))
      {
        re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::resize(v59 + 32, 1uLL);
        if (!*(v59 + 6))
        {
          goto LABEL_91;
        }

        v61 = *(v59 + 8);
        re::make::shared::object<re::ecs2::SerializableMaterialParameterBlock>(v60, buf);
        ++*(v61 + 16);
        re::SharedPtr<re::SkeletalPoseJointDefinition>::reset(v61, *buf);
        *(v61 + 8) = 0;
        if (*buf)
        {
        }
      }

      *v85 = *(a1 + 16);
      *&v85[8] = 0;
      *buf = 0;
      memset(&buf[8], 0, 24);
      memset(&buf[40], 0, 44);
      v100 = 0;
      v101 = 0;
      TextureAsset = re::TextureAsset::makeTextureAsset(v85, buf, 6, 0);
      if (*&buf[56])
      {
        if (v100)
        {
          (*(**&buf[56] + 40))();
        }

        v100 = 0;
        memset(&buf[56], 0, 24);
        ++*&buf[80];
      }

      if (*&buf[40])
      {
      }

      if (*&v85[8] != -1)
      {
        v63 = (off_1F5CFEEE8[*&v85[8]])(buf, v85);
      }

      v64 = *(*(a1 + 8) + 240);
      v65 = re::TextureAsset::assetType(v63);
      (*(*v64 + 424))(v81, v64, TextureAsset, v65, 0, 0, 0);
      if (!*(v59 + 6))
      {
        goto LABEL_90;
      }

      v66 = *(v59 + 8);
      ++*(v66 + 16);
      v67 = *v66;
      re::AssetHandle::AssetHandle(buf, v81);
      re::ecs2::SerializableMaterialParameterBlock::setTexture(v67, "textureBaseColor", buf);
      re::AssetHandle::~AssetHandle(buf);
      re::ecs2::Component::enqueueMarkDirty(v59);
      v68 = v76[27];
      if (v68 || (v68 = re::ecs2::EntityComponentCollection::add((v76 + 6), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0)
      {
        re::ecs2::NetworkComponent::markDirty(v68, v54);
        re::ecs2::NetworkComponent::markDirty(v68, v59);
        re::ecs2::NetworkComponent::markDirty(v68, v16);
      }

      re::AssetHandle::~AssetHandle(v81);
      goto LABEL_84;
    }

LABEL_41:
    v53 = *re::ecsComponentsLogObjects(v47);
    if (os_log_type_enabled(v53, OS_LOG_TYPE_DEFAULT))
    {
      *v80 = 0;
      _os_log_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEFAULT, "TextComponent failed to convert a CGImage to an mtl::Texture", v80, 2u);
    }

    goto LABEL_44;
  }

  if (*&v85[8] == 1 && (!*(*v85 + 48) || !*(*v85 + 24)))
  {
    goto LABEL_41;
  }

  v71 = std::__throw_bad_variant_access[abi:nn200100]();
  return re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(v71);
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

re::ecs2::TextSystem *re::ecs2::TextSystem::TextSystem(re::ecs2::TextSystem *this)
{
  v10[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *v2 = &unk_1F5CFEE10;
  v3 = v2 + 296;
  *(v2 + 288) = 0;
  *(v2 + 296) = &unk_1F5CFEDD0;
  *(v2 + 304) = v2;
  *(v2 + 312) = 0;
  *(v2 + 352) = 0;
  *(v2 + 360) = 0;
  *(v2 + 344) = 0;
  *(v2 + 320) = 0;
  *(v2 + 328) = 0;
  *(v2 + 336) = 0;
  v9[1] = 1;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 344), v9);
  *(this + 46) = 0;
  *(this + 47) = 0;
  *(this + 96) = 1;
  *(this + 50) = 0;
  *(this + 51) = 0;
  *(this + 49) = 0;
  *(this + 104) = 0;
  *(this + 424) = 0u;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 126) = 1;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 68) = 0;
  *(this + 138) = 1;
  *(this + 585) = 0u;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  v7 = re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 61, 0);
  *(this + 126) += 2;
  *(this + 66) = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(this + 67, 0);
  *(this + 138) += 2;
  *(this + 72) = 0;
  *(this + 73) = this;
  *(this + 74) = v3;
  *(this + 600) = 1;
  return this;
}

double re::ecs2::TextSystem::willAddSceneToECSService(re::ecs2::TextSystem *this, re::ecs2::Scene *a2)
{
  v59 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    return result;
  }

  v41[0] = a2;
  v4 = *(this + 62);
  v5 = *(this + 126);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 512);
    }

    else
    {
      v6 = *(this + 65);
    }

    v8 = 8 * v4;
    while (!*v6)
    {
      ++v6;
      v8 -= 8;
      if (!v8)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_17;
  }

  if (v5)
  {
    v7 = (this + 512);
    if (!v4)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v7 = *(this + 65);
    if (!v4)
    {
      goto LABEL_18;
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
  if (!v9)
  {
LABEL_18:
    v49 = 0u;
    v42 = 0u;
    *&v43 = 0;
    v44 = 0u;
    v45 = 0u;
    *(&v43 + 1) = -1;
    v46 = 0;
    v47 = 1;
    v48 = 0uLL;
    v14 = *(this + 51);
    *&v49 = 0;
    v15 = *(this + 47);
    DWORD2(v49) = 0;
    if (v14 + 1 > 4 * v15)
    {
      re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,4ul>::setBucketsCapacity(this + 46, (v14 + 4) >> 2);
      v15 = *(this + 47);
    }

    if (v15 <= v14 >> 2)
    {
      v41[1] = 0;
      memset(v58, 0, sizeof(v58));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v50 = 136315906;
      v51 = "operator[]";
      v52 = 1024;
      v53 = 858;
      v54 = 2048;
      v55 = v14 >> 2;
      v56 = 2048;
      v57 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    else
    {
      if (*(this + 384))
      {
        v16 = this + 392;
      }

      else
      {
        v16 = *(this + 50);
      }

      v17 = *&v16[8 * (v14 >> 2)];
      ++*(this + 51);
      ++*(this + 104);
      v18 = v17 + 112 * (v14 & 3);
      v19 = v42;
      v20 = v43;
      v21 = v44;
      *(v18 + 48) = v45;
      *(v18 + 16) = v20;
      *(v18 + 32) = v21;
      *v18 = v19;
      re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v45 + 8);
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v42);
      v23 = *(this + 51);
      if (v23)
      {
        v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 368, v23 - 1);
        re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::init(v24, this + 368, v41[0]);
        *&v58[0] = *(this + 51) - 1;
        re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 53, v41, v58);
        v25 = *(this + 51);
        v26 = *(this + 66);
        if ((v25 & 0x3F) != 0)
        {
          v27 = (v25 >> 6) + 1;
        }

        else
        {
          v27 = v25 >> 6;
        }

        *(this + 66) = v25;
        *&v42 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 488), v27, &v42);
        if (v25 && v26 > v25)
        {
          v28 = 63;
          v29 = *(this + 66) & 0x3FLL;
          if (v29 && v29 != 63)
          {
            v28 = ~(-1 << v29);
          }

          if (*(this + 504))
          {
            v30 = this + 512;
          }

          else
          {
            v30 = *(this + 65);
          }

          *&v30[8 * *(this + 62) - 8] &= v28;
        }

        v31 = *(this + 51);
        v32 = *(this + 72);
        if ((v31 & 0x3F) != 0)
        {
          v33 = (v31 >> 6) + 1;
        }

        else
        {
          v33 = v31 >> 6;
        }

        *(this + 72) = v31;
        *&v42 = 0;
        re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 536), v33, &v42);
        if (v31 && v32 > v31)
        {
          v34 = 63;
          v35 = *(this + 72) & 0x3FLL;
          if (v35 && v35 != 63)
          {
            v34 = ~(-1 << v35);
          }

          if (*(this + 552))
          {
            v36 = this + 560;
          }

          else
          {
            v36 = *(this + 71);
          }

          *&v36[8 * *(this + 68) - 8] &= v34;
        }

        v13 = *&v58[0];
        goto LABEL_50;
      }
    }

    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

LABEL_17:
  *&v42 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 488, 0);
  v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 368, v42);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::init(v12, this + 368, a2);
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 53, v41, &v42);
  re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 488, v42);
  v13 = v42;
LABEL_50:
  re::DynamicBitset<unsigned long long,64ul>::setBit(this + 536, v13);
  if (*(this + 600) == 1)
  {
    v37 = *(this + 73);
    v38 = *(v41[0] + 376);
    LOWORD(v42) = 257;
    DWORD1(v42) = 1023969417;
    BYTE8(v42) = 0;
    re::ecs2::System::setTaskOptions(v37, v38, &v42);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 368);
  }

  v39 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v42 = this;
  *(&v42 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TextSystem::willRemoveComponents,re::ecs2::TextSystem>;
  *&v43 = 0;
  *(&v43 + 1) = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v39 + 272), &v42);
}

void re::ecs2::TextSystem::willRemoveSceneFromECSService(re::ecs2::TextSystem *this, re::ecs2::Scene *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    *&v17 = a2;
    v4 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 53, &v17);
    if (v4 != -1)
    {
      v5 = *(this + 54) + 16 * v4;
      re::DynamicBitset<unsigned long long,64ul>::setBit(this + 488, *(v5 + 8));
      re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 536, *(v5 + 8));
      v6 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 368, *(v5 + 8));
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

      re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 424, &v17);
    }

    v16 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v17 = this;
    *(&v17 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::TextSystem::willRemoveComponents,re::ecs2::TextSystem>;
    v18 = 0;
    v19 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v16 + 272, &v17);
  }
}

uint64_t re::ecs2::TextSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  if (a1[29])
  {
    re::StackScratchAllocator::StackScratchAllocator(v44);
    v40 = 1;
    v41 = 0;
    v42 = 0;
    v38 = v44;
    v39 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
    v40 += 2;
    v5 = a1[72];
    if ((v5 & 0x3F) != 0)
    {
      v6 = (v5 >> 6) + 1;
    }

    else
    {
      v6 = v5 >> 6;
    }

    v43 = a1[72];
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
        v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 53, v33);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[54] + 16 * v11 + 8));
        v9 -= 8;
      }

      while (v9);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 67));
    v34 = 1;
    v35 = 0;
    v36 = 0;
    v33[0] = v44;
    v33[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
    v34 += 2;
    v12 = a1[72];
    if ((v12 & 0x3F) != 0)
    {
      v13 = (v12 >> 6) + 1;
    }

    else
    {
      v13 = v12 >> 6;
    }

    v37 = a1[72];
    v45 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 67), &v38);
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
          v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 46), FirstBitSet);
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
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 67), v33);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 46));
    if (v33[0] && (v34 & 1) == 0)
    {
      (*(*v33[0] + 40))();
    }

    if (v38 && (v40 & 1) == 0)
    {
      (*(*v38 + 40))();
    }

    re::StackScratchAllocator::~StackScratchAllocator(v44);
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

void *re::ecs2::allocInfo_TextSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_203, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_203))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DA50, "TextSystem");
    __cxa_guard_release(&_MergedGlobals_203);
  }

  return &unk_1EE18DA50;
}

void re::ecs2::initInfo_TextSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x106ABBCAF453B8;
  v6[1] = "TextSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x26000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_TextSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TextSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TextSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::TextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::TextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TextSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TextSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_TextComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE18DA30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DA30))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE18DAE0, "TextComponent");
    __cxa_guard_release(&qword_1EE18DA30);
  }

  return &unk_1EE18DAE0;
}

void re::ecs2::initInfo_TextComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x76749A51D9215460;
  v10[1] = "TextComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE18DA28, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE18DA28);
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
      qword_1EE18DA20 = v8;
      __cxa_guard_release(&qword_1EE18DA28);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE18DA20;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TextComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TextComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TextComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TextComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs213TextComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

__n128 re::internal::defaultConstruct<re::ecs2::TextComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CFED78;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  result = *MEMORY[0x1E695F060];
  *(v3 + 120) = 0;
  *(v3 + 64) = result;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  return result;
}

__n128 re::internal::defaultConstructV2<re::ecs2::TextComponent>(ArcSharedObject *a1)
{
  *(a1 + 6) = 0u;
  *(a1 + 7) = 0u;
  *(a1 + 4) = 0u;
  *(a1 + 5) = 0u;
  *(a1 + 2) = 0u;
  *(a1 + 3) = 0u;
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CFED78;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  result = *MEMORY[0x1E695F060];
  *(v1 + 120) = 0;
  *(v1 + 64) = result;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::TextComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::TextComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::TextSystem::~TextSystem(re::ecs2::TextSystem *this)
{
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 368);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 424);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 488);
  *(this + 66) = 0;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 536);
  *(this + 74) = 0;
  *(this + 36) = 0u;
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 536);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 488);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 424);
  re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::deinit(this + 368);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 368);
  *(this + 37) = &unk_1F5CFEDD0;
  re::FixedArray<CoreIKTransform>::deinit(this + 43);
  re::TextureHandle::invalidate((this + 320));
  v2 = *(this + 39);
  if (v2)
  {

    *(this + 39) = 0;
  }

  re::ecs2::System::~System(this);
}

{
  re::ecs2::TextSystem::~TextSystem(this);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::TextComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::TextComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::TextComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

__n128 re::ecs2::ComponentType<re::ecs2::TextComponent>::doMakeComponent@<Q0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 7), 128, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CFED78;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  result = *MEMORY[0x1E695F060];
  *(v3 + 120) = 0;
  *(v3 + 64) = result;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::TextComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CFEF78;
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

uint64_t re::ecs2::ComponentType<re::ecs2::TextComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE18DA48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE18DA48))
  {
    qword_1EE18DA40 = re::internal::getOrCreateInfo("TextComponent", re::ecs2::allocInfo_TextComponent, re::ecs2::initInfo_TextComponent, &qword_1EE18DA38, 0);
    __cxa_guard_release(&qword_1EE18DA48);
  }

  return qword_1EE18DA40;
}

__n128 re::ecs2::ComponentType<re::ecs2::TextComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::TextComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CFEF08;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CFEF78;
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CFEFE8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CFF040;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CFF098;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CFF0F0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CFEFE8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CFF040;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CFF098;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CFF0F0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::TextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFEFE8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFEFE8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF040;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFF040;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF098;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFF098;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF0F0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::TextComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFF0F0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::TextComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs213TextComponentELNS_17RealityKitReleaseE9EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_TrueToneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_379, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_379))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3D20, "TrueToneComponent");
    __cxa_guard_release(&_MergedGlobals_379);
  }

  return &unk_1EE1B3D20;
}

void re::ecs2::initInfo_TrueToneComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x8EC5B9F4617C893ALL;
  v14[1] = "TrueToneComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B3D08, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B3D08);
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
      qword_1EE1B3D10 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "enabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B3D18 = v12;
      __cxa_guard_release(&qword_1EE1B3D08);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B3D10;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::TrueToneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::TrueToneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::TrueToneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::TrueToneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217TrueToneComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::TrueToneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  *v3 = &unk_1F5CDEE10;
}

void re::internal::defaultConstructV2<re::ecs2::TrueToneComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  *v1 = &unk_1F5CDEE10;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs217TrueToneComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(re::NetworkSystemFeatureFlags *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(void)::enable = re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(void)::$_0::operator()(v3, v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v1[1368];
}

uint64_t re::NetworkSystemFeatureFlags::enableECSNetworkHFLogs(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableECSNetworkHFLogs", a2, v6);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 0;
  }

  v4 = *re::ecsNetworkLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "enableECSNetworkHFLogs=%d.", v6, 8u);
  }

  return v3 & 1;
}

uint64_t re::NetworkSystemFeatureFlags::suppressNetworkReparentMarkDirty(re::NetworkSystemFeatureFlags *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      re::NetworkSystemFeatureFlags::suppressNetworkReparentMarkDirty(void)::enable = re::NetworkSystemFeatureFlags::suppressNetworkReparentMarkDirty(void)::$_0::operator()(v3, v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v1[1384];
}

uint64_t re::NetworkSystemFeatureFlags::suppressNetworkReparentMarkDirty(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("suppressNetworkReparentMarkDirty", a2, v6);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 1;
  }

  v4 = *re::ecsNetworkLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "suppressNetworkReparentMarkDirty=%d.", v6, 8u);
  }

  return v3 & 1;
}

uint64_t re::NetworkSystemFeatureFlags::enableAltSharedApp(re::NetworkSystemFeatureFlags *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      re::NetworkSystemFeatureFlags::enableAltSharedApp(void)::enable = re::NetworkSystemFeatureFlags::enableAltSharedApp(void)::$_0::operator()(v3, v4);
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v1[1400];
}

uint64_t re::NetworkSystemFeatureFlags::enableAltSharedApp(void)::$_0::operator()(uint64_t a1, const char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  re::Defaults::BOOLValue("enableAltSharedApp", a2, v6);
  if (LOBYTE(v6[0]))
  {
    v3 = BYTE1(v6[0]);
  }

  else
  {
    v3 = 1;
  }

  v4 = *re::ecsNetworkLogObjects(v2);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "enableAltSharedApp=%d.", v6, 8u);
  }

  return v3 & 1;
}

uint64_t re::TransformOp::TransformOp(uint64_t a1, uint64_t a2, char a3, char a4)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *a1 = &unk_1F5CFF148;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 60) = 0x7FFFFFFFLL;
  *(a1 + 72) = a2;
  *(a1 + 80) = 0;
  *(a1 + 84) = a3;
  *(a1 + 85) = a4;
  return a1;
}

re *re::TransformOp::willAddSceneToTransformService(re::TransformOp *this, re::TransformService *a2, re::ecs2::Scene *a3)
{
  re::TransformOp::addAssociatedComponentAddedEventToScene(this, a2, a3);
  re::TransformOp::addAssociatedComponentRemovedEventToScene(this, a2, a3);

  return re::TransformOp::addAssociatedComponentModifiedEventToScene(this, a2, a3);
}

re *re::TransformOp::addAssociatedComponentAddedEventToScene(re *this, re::TransformService *a2, re::ecs2::Scene *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 36);
  if (v3)
  {
    v6 = this;
    v7 = re::globalAllocators(this)[2];
    v16[2] = a2;
    v17 = v7;
    v16[0] = &unk_1F5CFF1B0;
    v16[1] = v6;
    v18 = v16;
    v8 = re::TransformOp::subscriptionsArrayForScene(v6, a3);
    v14 = v17;
    v15 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator=<24ul>(v13, v16);
    v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v3, v13, v6[9], 0);
    v11 = v10;
    v12 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v8);
    *v12 = v9;
    v12[1] = v11;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v13);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::destroyCallable(v16);
  }

  return this;
}

re *re::TransformOp::addAssociatedComponentRemovedEventToScene(re *this, re::TransformService *a2, re::ecs2::Scene *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 36);
  if (v3)
  {
    v6 = this;
    v7 = re::globalAllocators(this)[2];
    v16[2] = a2;
    v17 = v7;
    v16[0] = &unk_1F5CFF208;
    v16[1] = v6;
    v18 = v16;
    v8 = re::TransformOp::subscriptionsArrayForScene(v6, a3);
    v14 = v17;
    v15 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator=<24ul>(v13, v16);
    v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v3, v13, v6[9], 0);
    v11 = v10;
    v12 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v8);
    *v12 = v9;
    v12[1] = v11;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v13);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v16);
  }

  return this;
}

re *re::TransformOp::addAssociatedComponentModifiedEventToScene(re *this, re::TransformService *a2, re::ecs2::Scene *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = *(a3 + 36);
  if (v3)
  {
    v6 = this;
    v7 = re::globalAllocators(this)[2];
    v16[2] = a2;
    v17 = v7;
    v16[0] = &unk_1F5CFF260;
    v16[1] = v6;
    v18 = v16;
    v8 = re::TransformOp::subscriptionsArrayForScene(v6, a3);
    v14 = v17;
    v15 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator=<24ul>(v13, v16);
    v9 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v3, v13, v6[9], 0);
    v11 = v10;
    v12 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v8);
    *v12 = v9;
    v12[1] = v11;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v13);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v16);
  }

  return this;
}

uint64_t re::TransformOp::willRemoveSceneFromTransformService(re::TransformOp *this, re::TransformService *a2, re::ecs2::Scene *a3)
{
  v10 = a3;
  result = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 24, &v10);
  if (result)
  {
    v5 = *(v10 + 36);
    if (v5)
    {
      v6 = result;
      v7 = *(result + 40);
      if (v7)
      {
        for (i = 0; i != v7; ++i)
        {
          v9 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v6, i);
          re::EventBus::unsubscribe(v5, *v9, *(v9 + 8));
        }
      }
    }

    return re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 24, &v10);
  }

  return result;
}

uint64_t re::TransformOp::subscriptionsArrayForScene(re::TransformOp *this, re::ecs2::Scene *a2)
{
  v11 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 24, &v11);
  if (!v3)
  {
    v5[0] = 0;
    v5[1] = 0;
    v6 = 1;
    v8 = 0;
    v9 = 0;
    v7 = 0;
    v10 = 0;
    re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 24, &v11, v5);
    v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 24, &v11);
    re::BucketArray<RESubscriptionHandle,4ul>::deinit(v5);
    if (v5[0])
    {
      if ((v6 & 1) == 0)
      {
        (*(*v5[0] + 40))();
      }
    }
  }

  return v3;
}

uint64_t re::internal::Callable<re::TransformOp::addAssociatedComponentAddedEventToScene(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF1B0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::TransformOp::addAssociatedComponentAddedEventToScene(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF1B0;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::TransformOp::addAssociatedComponentRemovedEventToScene(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF208;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::TransformOp::addAssociatedComponentRemovedEventToScene(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF208;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::TransformOp::addAssociatedComponentModifiedEventToScene(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF260;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

uint64_t re::internal::Callable<re::TransformOp::addAssociatedComponentModifiedEventToScene(re::TransformService &,re::ecs2::Scene *)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF260;
  *(a2 + 8) = *(a1 + 8);
  return a2;
}

void *re::ecs2::allocInfo_MotionStateComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B3DB8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3DB8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3E00, "MotionStateComponent");
    __cxa_guard_release(&qword_1EE1B3DB8);
  }

  return &unk_1EE1B3E00;
}

void re::ecs2::initInfo_MotionStateComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v34[0] = 0x8DBCDE6D401C29C4;
  v34[1] = "MotionStateComponent";
  if (v34[0])
  {
    if (v34[0])
    {
    }
  }

  *(this + 2) = v35;
  if ((atomic_load_explicit(&_MergedGlobals_380, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_380);
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
      qword_1EE1B3DC0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector3F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_linearVelocity";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x6000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B3DC8 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::introspect_Vector3F(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_angularVelocity";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x7000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B3DD0 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_BOOL(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "isSleeping";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x1900000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1B3DD8 = v18;
      v19 = re::introspectionAllocator(v18);
      v20 = re::introspect_Vector3F(1);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "m_userSetLinearVelocity";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x8000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B3DE0 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_uint32_t(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "m_userSetLinearVelocityVersion";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x9000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B3DE8 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = re::introspect_Vector3F(1);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "m_userSetAngularVelocity";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0xA000000006;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1B3DF0 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::introspect_uint32_t(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "m_userSetAngularVelocityVersion";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0xB000000007;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1B3DF8 = v32;
      __cxa_guard_release(&_MergedGlobals_380);
    }
  }

  *(this + 2) = 0xC000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1B3DC0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MotionStateComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MotionStateComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MotionStateComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MotionStateComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220MotionStateComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v33 = v35;
}

double re::internal::defaultConstruct<re::ecs2::MotionStateComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 10) = 0u;
  *(this + 11) = 0u;
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
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE87C8;
  *(v3 + 25) = 0;
  *(v3 + 32) = 0x3F8000003F800000;
  *(v3 + 40) = 1065353216;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0x3F80000000000000;
  *(v3 + 64) = 0;
  *(v3 + 72) = 0;
  *(v3 + 80) = 0;
  result = 0.0;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0u;
  *(v3 + 128) = 0u;
  *(v3 + 140) = 0u;
  *(v3 + 168) = 0;
  *(v3 + 176) = 0;
  *(v3 + 160) = 0;
  *(v3 + 184) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MotionStateComponent>(ArcSharedObject *a1)
{
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE87C8;
  *(v1 + 25) = 0;
  *(v1 + 32) = 0x3F8000003F800000;
  *(v1 + 40) = 1065353216;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0x3F80000000000000;
  *(v1 + 64) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  result = 0.0;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0u;
  *(v1 + 128) = 0u;
  *(v1 + 140) = 0u;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 160) = 0;
  *(v1 + 184) = 0;
  return result;
}

uint64_t re::ecs2::MotionStateComponent::makeSyncInfo(re::ecs2::MotionStateComponent *this)
{
  v1 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetDebugName();
  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetReadPayloadDeltaCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadDeltaCb();
  return v1;
}

uint64_t ___ZN2re4ecs220MotionStateComponent12makeSyncInfoEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  *(a3 + 25) = 0;
  *(a3 + 96) = 0uLL;
  *(a3 + 112) = 0uLL;
  *(a3 + 128) = 0uLL;
  *(a3 + 144) = 0;
  *(a3 + 160) = 0uLL;
  *(a3 + 176) = 0;
  *(a3 + 80) = 0;
  *(a3 + 26) = 1;
  return 1;
}

uint64_t ___ZN2re4ecs220MotionStateComponent12makeSyncInfoEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69049A0](a2, a3 + 25, 1);
  if ((*(a3 + 25) & 1) == 0)
  {
    MEMORY[0x1E69049A0](a2, a3 + 96, 4);
    MEMORY[0x1E69049A0](a2, a3 + 100, 4);
    MEMORY[0x1E69049A0](a2, a3 + 104, 4);
    MEMORY[0x1E69049A0](a2, a3 + 112, 4);
    MEMORY[0x1E69049A0](a2, a3 + 116, 4);
    MEMORY[0x1E69049A0](a2, a3 + 120, 4);
  }

  MEMORY[0x1E69049A0](a2, a3 + 80, 1);
  if ((*(a3 + 25) & 1) == 0)
  {
    MEMORY[0x1E69049A0](a2, a3 + 128, 4);
    MEMORY[0x1E69049A0](a2, a3 + 132, 4);
    MEMORY[0x1E69049A0](a2, a3 + 136, 4);
    MEMORY[0x1E69049A0](a2, a3 + 144, 4);
    MEMORY[0x1E69049A0](a2, a3 + 160, 4);
    MEMORY[0x1E69049A0](a2, a3 + 164, 4);
    MEMORY[0x1E69049A0](a2, a3 + 168, 4);
    MEMORY[0x1E69049A0](a2, a3 + 176, 4);
  }

  return 1;
}

uint64_t ___ZN2re4ecs220MotionStateComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = 0;
  RESyncBitReaderReadBool();
  MEMORY[0x1E69049A0](a3, &v10, 1);
  if ((v10 & 1) == 0)
  {
    v9 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a3, &v9, 4);
    MEMORY[0x1E69049A0](a3, &v9 + 4, 4);
    MEMORY[0x1E69049A0](a3, &v9 + 8, 4);
    v8 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a3, &v8, 4);
    MEMORY[0x1E69049A0](a3, &v8 + 4, 4);
    MEMORY[0x1E69049A0](a3, &v8 + 8, 4);
  }

  v7 = 0;
  RESyncBitReaderReadUInt8();
  MEMORY[0x1E69049A0](a3, &v7, 1);
  if ((v10 & 1) == 0)
  {
    v9 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a3, &v9, 4);
    MEMORY[0x1E69049A0](a3, &v9 + 4, 4);
    MEMORY[0x1E69049A0](a3, &v9 + 8, 4);
    v6 = 0;
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a3, &v6, 4);
    v8 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a3, &v8, 4);
    MEMORY[0x1E69049A0](a3, &v8 + 4, 4);
    MEMORY[0x1E69049A0](a3, &v8 + 8, 4);
    v5 = 0;
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a3, &v5, 4);
  }

  return RESyncBitReaderIsOverflow() ^ 1;
}

uint64_t ___ZN2re4ecs220MotionStateComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = 0;
  RESyncBitReaderReadData();
  v10 = 0u;
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  v9 = 0u;
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadBool();
  v10 = 0u;
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  v8 = 0;
  RESyncBitReaderReadData();
  v9 = 0u;
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  v7 = 0;
  RESyncBitReaderReadData();
  MEMORY[0x1E69049A0](a4, &v11, 1);
  if ((v11 & 1) == 0)
  {
    v10 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a4, &v10, 4);
    MEMORY[0x1E69049A0](a4, &v10 + 4, 4);
    MEMORY[0x1E69049A0](a4, &v10 + 8, 4);
    v9 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a4, &v9, 4);
    MEMORY[0x1E69049A0](a4, &v9 + 4, 4);
    MEMORY[0x1E69049A0](a4, &v9 + 8, 4);
  }

  v6 = 0;
  RESyncBitReaderReadData();
  RESyncBitReaderReadBool();
  MEMORY[0x1E69049A0](a4, &v6, 1);
  if ((v11 & 1) == 0)
  {
    v10 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a4, &v10, 4);
    MEMORY[0x1E69049A0](a4, &v10 + 4, 4);
    MEMORY[0x1E69049A0](a4, &v10 + 8, 4);
    v8 = 0;
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a4, &v8, 4);
    v9 = 0u;
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a4, &v9, 4);
    MEMORY[0x1E69049A0](a4, &v9 + 4, 4);
    MEMORY[0x1E69049A0](a4, &v9 + 8, 4);
    v7 = 0;
    RESyncBitReaderReadUInt32();
    MEMORY[0x1E69049A0](a4, &v7, 4);
  }

  return RESyncBitReaderIsOverflow() ^ 1;
}

uint64_t ___ZN2re4ecs220MotionStateComponent12makeSyncInfoEv_block_invoke_5()
{
  RESyncBitReaderReadData();
  RESyncBitWriterWriteBool();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt8();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  return RESyncBitWriterWriteUInt32();
}

uint64_t ___ZN2re4ecs220MotionStateComponent12makeSyncInfoEv_block_invoke_6()
{
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteBool();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteBool();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitReaderReadData();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitWriterWriteUInt32();
  RESyncBitReaderReadData();
  return RESyncBitWriterWriteUInt32();
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220MotionStateComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

id *re::ecs2::AttachedTransformComponent::AttachedTransformComponent(id *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CFF378;
  objc_initWeak((v2 + 32), 0);
  this[5] = 0;
  this[6] = 0;
  re::ecs2::EntityHandle::reset((this + 4));
  this[7] = 0;
  this[8] = &str_67;
  this[10] = 0;
  this[11] = 0;
  this[12] = 0;
  this[13] = 0x3F80000000000000;
  *(this + 112) = 0;
  objc_initWeak(this + 18, 0);
  this[19] = 0;
  this[20] = 0;
  re::ecs2::EntityHandle::reset((this + 18));
  this[21] = 0;
  this[22] = &str_67;
  this[24] = 0;
  this[25] = 0;
  this[26] = 0;
  this[27] = 0x3F80000000000000;
  *(this + 224) = 0;
  *(this + 256) = 0;
  return this;
}

void re::ecs2::AttachedTransformComponent::detach(re::ecs2::AttachedTransformComponent *this)
{
  v12 = *MEMORY[0x1E69E9840];
  objc_initWeak(&v4, 0);
  v5 = 0;
  v6 = 0;
  re::ecs2::EntityHandle::reset(&v4);
  v7 = 0;
  v8 = &str_67;
  v9 = 0uLL;
  *&v10 = 0;
  *(&v10 + 1) = 0x3F80000000000000;
  v11[0] = 0;
  re::ecs2::EntityHandle::operator=((this + 144), &v4);
  re::StringID::operator=(this + 21, &v7);
  v2 = v10;
  *(this + 12) = v9;
  *(this + 13) = v2;
  re::Optional<re::StringID>::operator=(this + 224, v11);
  re::ecs2::PinHandle::~PinHandle(&v4);
  objc_initWeak(&v4, 0);
  v5 = 0;
  v6 = 0;
  re::ecs2::EntityHandle::reset(&v4);
  v7 = 0;
  v8 = &str_67;
  v9 = 0uLL;
  *&v10 = 0;
  *(&v10 + 1) = 0x3F80000000000000;
  v11[0] = 0;
  re::ecs2::EntityHandle::operator=((this + 32), &v4);
  re::StringID::operator=(this + 7, &v7);
  v3 = v10;
  *(this + 5) = v9;
  *(this + 6) = v3;
  re::Optional<re::StringID>::operator=(this + 112, v11);
  re::ecs2::PinHandle::~PinHandle(&v4);
  if (*(this + 256) == 1)
  {
    *(this + 256) = 0;
  }
}

char *re::ecs2::AttachedTransformComponent::targetEntity(re::ecs2::AttachedTransformComponent *this)
{
  v3 = *(this + 18);
  v2 = (this + 144);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(v2);
    if (WeakRetained)
    {
      v5 = WeakRetained - 8;

      return v5;
    }

    return 0;
  }

  if (!*(this + 19))
  {
    return 0;
  }

  v6 = *(this + 2);
  if (!v6)
  {
    return 0;
  }

  do
  {
    v7 = v6;
    v6 = *(v6 + 32);
  }

  while (v6);
  v8 = *(v7 + 24);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 56);
  if (!v9)
  {
    return 0;
  }

  return re::ecs2::EntityHandle::resolve(v2, v9);
}

char *re::ecs2::AttachedTransformComponent::sourceEntity(re::ecs2::AttachedTransformComponent *this)
{
  v3 = *(this + 4);
  v2 = (this + 32);
  if (v3)
  {
    WeakRetained = objc_loadWeakRetained(v2);
    if (WeakRetained)
    {
      v5 = WeakRetained - 8;

      return v5;
    }

    return 0;
  }

  if (!*(this + 5))
  {
    return 0;
  }

  v6 = *(this + 2);
  if (!v6)
  {
    return 0;
  }

  do
  {
    v7 = v6;
    v6 = *(v6 + 32);
  }

  while (v6);
  v8 = *(v7 + 24);
  if (!v8)
  {
    return 0;
  }

  v9 = *(v8 + 56);
  if (!v9)
  {
    return 0;
  }

  return re::ecs2::EntityHandle::resolve(v2, v9);
}

char *re::ecs2::AttachedTransformComponent::sourcePinName(char **this)
{
  v7 = 0;
  __s2 = &str_67;
  v3 = v7;
  v4 = this[7];
  v5 = this[8];
  if ((v7 ^ v4) <= 1)
  {
    if (v5 == __s2 || (v2 = strcmp(v5, __s2), !v2))
    {
      v5 = 0;
    }
  }

  if (v3)
  {
    if (v7)
    {
    }
  }

  return v5;
}

char *re::ecs2::AttachedTransformComponent::targetPinName(char **this)
{
  v7 = 0;
  __s2 = &str_67;
  v3 = v7;
  v4 = this[21];
  v5 = this[22];
  if ((v7 ^ v4) <= 1)
  {
    if (v5 == __s2 || (v2 = strcmp(v5, __s2), !v2))
    {
      v5 = 0;
    }
  }

  if (v3)
  {
    if (v7)
    {
    }
  }

  return v5;
}

void re::ecs2::AttachedTransformComponent::targetPinOffset(re::ecs2::AttachedTransformComponent *this@<X0>, uint64_t *a2@<X8>)
{
  re::ecs2::PinHandle::pin((this + 144), v24);
  if (v24[0] == 1)
  {
    _Q1 = v27;
    v4 = vextq_s8(vuzp1q_s32(_Q1, _Q1), v27, 0xCuLL);
    v5 = vnegq_f32(v27);
    v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v5), v28, v4);
    v7 = vaddq_f32(v6, v6);
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v4);
    v10 = vaddq_f32(vaddq_f32(v28, vmulq_laneq_f32(v8, v27, 3)), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
    _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v5), v29, v4);
    v12 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v29, v27, 3);
    _Q5.i32[0] = v29.i32[3];
    v13 = vmlaq_laneq_f32(v12, v27, v29, 3);
    __asm { FMLA            S4, S5, V1.S[3] }

    v13.i32[3] = _S4;
    v19 = vaddq_f32(v26, v10);
    v20 = v19.i64[1];
    v21 = v19.i64[0];
    v22 = v13.i64[1];
    v23 = v13.i64[0];
    (*v25)();
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v23 = 0;
    v22 = 0x3F80000000000000;
  }

  *a2 = v21;
  a2[1] = v20;
  a2[2] = v23;
  a2[3] = v22;
}

void re::ecs2::AttachedTransformComponent::sourcePinOffset(re::ecs2::AttachedTransformComponent *this@<X0>, uint64_t *a2@<X8>)
{
  re::ecs2::PinHandle::pin((this + 32), v24);
  if (v24[0] == 1)
  {
    _Q1 = v27;
    v4 = vextq_s8(vuzp1q_s32(_Q1, _Q1), v27, 0xCuLL);
    v5 = vnegq_f32(v27);
    v6 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL), v5), v28, v4);
    v7 = vaddq_f32(v6, v6);
    v8 = vextq_s8(vuzp1q_s32(v7, v7), v7, 0xCuLL);
    v9 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL), v5), v8, v4);
    v10 = vaddq_f32(vaddq_f32(v28, vmulq_laneq_f32(v8, v27, 3)), vextq_s8(vuzp1q_s32(v9, v9), v9, 0xCuLL));
    _Q5 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v29, v29), v29, 0xCuLL), v5), v29, v4);
    v12 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q5, _Q5), _Q5, 0xCuLL), v29, v27, 3);
    _Q5.i32[0] = v29.i32[3];
    v13 = vmlaq_laneq_f32(v12, v27, v29, 3);
    __asm { FMLA            S4, S5, V1.S[3] }

    v13.i32[3] = _S4;
    v19 = vaddq_f32(v26, v10);
    v20 = v19.i64[1];
    v21 = v19.i64[0];
    v22 = v13.i64[1];
    v23 = v13.i64[0];
    (*v25)();
  }

  else
  {
    v21 = 0;
    v20 = 0;
    v23 = 0;
    v22 = 0x3F80000000000000;
  }

  *a2 = v21;
  a2[1] = v20;
  a2[2] = v23;
  a2[3] = v22;
}

void re::ecs2::AttachedTransformComponent::setTargetPin(re::ecs2::AttachedTransformComponent *this, const re::ecs2::Pin *a2, const re::ecs2::Entity *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_initWeak(location, 0);
    location[1] = 0;
    location[2] = 0;
    re::ecs2::EntityHandle::reset(location);
    v16[0] = 0;
    v16[1] = &str_67;
    v17 = 0uLL;
    *&v18 = 0;
    *(&v18 + 1) = 0x3F80000000000000;
    v19[0] = 0;
    re::ecs2::EntityHandle::operator=((this + 144), location);
    re::StringID::operator=(this + 21, v16);
    v6 = v18;
    *(this + 12) = v17;
    *(this + 13) = v6;
    re::Optional<re::StringID>::operator=(this + 224, v19);
    re::ecs2::PinHandle::~PinHandle(location);
  }

  re::StringID::StringID(&v14, (a2 + 8));
  v11 = 0uLL;
  v12 = 0;
  v13 = 0x3F80000000000000;
  v9[0] = 0;
  re::ecs2::PinHandle::PinHandle(location, a3, &v14, &v11, v9);
  re::ecs2::EntityHandle::operator=((this + 144), location);
  re::StringID::operator=(this + 21, v16);
  v7 = v18;
  *(this + 12) = v17;
  *(this + 13) = v7;
  re::Optional<re::StringID>::operator=(this + 224, v19);
  re::ecs2::PinHandle::~PinHandle(location);
  if (v9[0] == 1 && (v10 & 1) != 0)
  {
    if (v10)
    {
    }
  }

  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }
}

void re::ecs2::AttachedTransformComponent::setTargetPin(re::ecs2::AttachedTransformComponent *this, const char *a2, const re::ecs2::Entity *a3, const char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_initWeak(&location, 0);
    v20 = 0uLL;
    re::ecs2::EntityHandle::reset(&location);
    v21[0] = 0;
    v21[1] = &str_67;
    v22 = 0uLL;
    *&v23 = 0;
    *(&v23 + 1) = 0x3F80000000000000;
    v24[0] = 0;
    re::ecs2::EntityHandle::operator=((this + 144), &location);
    re::StringID::operator=(this + 21, v21);
    v8 = v23;
    *(this + 12) = v22;
    *(this + 13) = v8;
    re::Optional<re::StringID>::operator=(this + 224, v24);
    re::ecs2::PinHandle::~PinHandle(&location);
  }

  v16[0] = 0;
  if (a4)
  {
    *&v12 = 0;
    *(&v12 + 1) = &str_67;
    LOBYTE(location) = 1;
    v20 = v12;
    *&v12 = 0;
    *(&v12 + 1) = &str_67;
    v9 = re::Optional<re::StringID>::operator=(v16, &location);
    if (location == 1)
    {
      if (v20)
      {
        if (v20)
        {
        }
      }

      *&v20 = 0;
      *(&v20 + 1) = &str_67;
    }

    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  else
  {
    LOBYTE(location) = 0;
    v9 = re::Optional<re::StringID>::operator=(v16, &location);
    if (location == 1 && (v20 & 1) != 0)
    {
      if (v20)
      {
      }
    }
  }

  *&v15.var0 = 0;
  v15.var1 = &str_67;
  v12 = 0uLL;
  v13 = 0;
  v14 = 0x3F80000000000000;
  re::ecs2::PinHandle::PinHandle(&location, a3, &v15, &v12, v16);
  re::ecs2::EntityHandle::operator=((this + 144), &location);
  re::StringID::operator=(this + 21, v21);
  v10 = v23;
  *(this + 12) = v22;
  *(this + 13) = v10;
  re::Optional<re::StringID>::operator=(this + 224, v24);
  re::ecs2::PinHandle::~PinHandle(&location);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  if (v16[0] == 1 && (v17 & 1) != 0)
  {
    if (v17)
    {
    }
  }
}

void re::ecs2::AttachedTransformComponent::setSourcePin(re::ecs2::AttachedTransformComponent *this, const re::ecs2::Pin *a2, const re::ecs2::Entity *a3)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_initWeak(location, 0);
    location[1] = 0;
    location[2] = 0;
    re::ecs2::EntityHandle::reset(location);
    v15[0] = 0;
    v15[1] = &str_67;
    v16 = 0uLL;
    *&v17 = 0;
    *(&v17 + 1) = 0x3F80000000000000;
    v18[0] = 0;
    re::ecs2::EntityHandle::operator=((this + 32), location);
    re::StringID::operator=(this + 7, v15);
    v6 = v17;
    *(this + 5) = v16;
    *(this + 6) = v6;
    re::Optional<re::StringID>::operator=(this + 112, v18);
    re::ecs2::PinHandle::~PinHandle(location);
  }

  v11 = 0uLL;
  v12 = 0;
  v13 = 0x3F80000000000000;
  v9[0] = 0;
  re::ecs2::PinHandle::PinHandle(location, a3, (a2 + 8), &v11, v9);
  re::ecs2::EntityHandle::operator=((this + 32), location);
  re::StringID::operator=(this + 7, v15);
  v7 = v17;
  *(this + 5) = v16;
  *(this + 6) = v7;
  re::Optional<re::StringID>::operator=(this + 112, v18);
  re::ecs2::PinHandle::~PinHandle(location);
  if (v9[0] == 1 && (v10 & 1) != 0)
  {
    if (v10)
    {
    }
  }
}

void re::ecs2::AttachedTransformComponent::setSourcePin(re::ecs2::AttachedTransformComponent *this, const char *a2, const re::ecs2::Entity *a3, const char *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    objc_initWeak(&location, 0);
    v20 = 0uLL;
    re::ecs2::EntityHandle::reset(&location);
    v21[0] = 0;
    v21[1] = &str_67;
    v22 = 0uLL;
    *&v23 = 0;
    *(&v23 + 1) = 0x3F80000000000000;
    v24[0] = 0;
    re::ecs2::EntityHandle::operator=((this + 32), &location);
    re::StringID::operator=(this + 7, v21);
    v8 = v23;
    *(this + 5) = v22;
    *(this + 6) = v8;
    re::Optional<re::StringID>::operator=(this + 112, v24);
    re::ecs2::PinHandle::~PinHandle(&location);
  }

  v16[0] = 0;
  if (a4)
  {
    *&v12 = 0;
    *(&v12 + 1) = &str_67;
    LOBYTE(location) = 1;
    v20 = v12;
    *&v12 = 0;
    *(&v12 + 1) = &str_67;
    v9 = re::Optional<re::StringID>::operator=(v16, &location);
    if (location == 1)
    {
      if (v20)
      {
        if (v20)
        {
        }
      }

      *&v20 = 0;
      *(&v20 + 1) = &str_67;
    }

    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  else
  {
    LOBYTE(location) = 0;
    v9 = re::Optional<re::StringID>::operator=(v16, &location);
    if (location == 1 && (v20 & 1) != 0)
    {
      if (v20)
      {
      }
    }
  }

  *&v15.var0 = 0;
  v15.var1 = &str_67;
  v12 = 0uLL;
  v13 = 0;
  v14 = 0x3F80000000000000;
  re::ecs2::PinHandle::PinHandle(&location, a3, &v15, &v12, v16);
  re::ecs2::EntityHandle::operator=((this + 32), &location);
  re::StringID::operator=(this + 7, v21);
  v10 = v23;
  *(this + 5) = v22;
  *(this + 6) = v10;
  re::Optional<re::StringID>::operator=(this + 112, v24);
  re::ecs2::PinHandle::~PinHandle(&location);
  if (*&v15.var0)
  {
    if (*&v15.var0)
    {
    }
  }

  if (v16[0] == 1 && (v17 & 1) != 0)
  {
    if (v17)
    {
    }
  }
}

double re::ecs2::AttachedTransformOp::calculateTransform@<D0>(re::TransformService *this@<X1>, uint64_t a2@<X2>, _OWORD *a3@<X3>, _OWORD *a4@<X8>)
{
  v8 = re::TransformService::transformServiceFromEntity(this, this);
  if (v8)
  {
    v9 = v8;
    v10 = re::ecs2::AttachedTransformComponent::targetEntity(a2);
    if (*(a2 + 256) != 1 || v10 == 0)
    {

      *&v12 = re::TransformService::parentWorldMatrix(v9, this, 0, a4);
    }

    else
    {
      re::TransformService::worldMatrix(v9, v10, 0, v27);
      v15 = 0;
      v16 = v27[0];
      v17 = v27[1];
      v18 = v27[2];
      v19 = v27[3];
      v20 = *(a2 + 288);
      v21 = *(a2 + 304);
      v22 = *(a2 + 320);
      v28[0] = *(a2 + 272);
      v28[1] = v20;
      v28[2] = v21;
      v28[3] = v22;
      do
      {
        v29[v15] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v16, COERCE_FLOAT(v28[v15])), v17, *&v28[v15], 1), v18, v28[v15], 2), v19, v28[v15], 3);
        ++v15;
      }

      while (v15 != 4);
      *&v12 = *&v29[0];
      v23 = v29[1];
      v24 = v29[2];
      v25 = v29[3];
      *a4 = v29[0];
      a4[1] = v23;
      a4[2] = v24;
      a4[3] = v25;
    }
  }

  else
  {
    v13 = a3[1];
    *a4 = *a3;
    a4[1] = v13;
    v12 = a3[2];
    v14 = a3[3];
    a4[2] = v12;
    a4[3] = v14;
  }

  return *&v12;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(int a1)
{
  {
    re::IntrospectionOptional<re::Matrix4x4<float>>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v2 = re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v2)
    {
      return &re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info;
    }

    v4 = re::introspectionSharedMutex(v3);
    std::__shared_mutex_base::lock(v4);
  }

  v5 = re::introspect_Matrix4x4F(1);
  if ((re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v6 = v5;
    re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::isInitialized = 1;
    v7 = *(v5 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info, 0);
    qword_1EE186570 = 0x500000000DLL;
    dword_1EE186578 = v7;
    word_1EE18657C = 0;
    *&xmmword_1EE186580 = 0;
    *(&xmmword_1EE186580 + 1) = 0xFFFFFFFFLL;
    qword_1EE186590 = v6;
    unk_1EE186598 = 0;
    re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info = &unk_1F5CFF468;
    re::IntrospectionRegistry::add(v8, v9);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info, &v14);
    if (BYTE8(v14))
    {
      v10 = v15;
    }

    else
    {
      v10 = &v14 + 9;
    }

    if (v14 && (BYTE8(v14) & 1) != 0)
    {
      (*(*v14 + 40))();
    }

    v14 = *(v6 + 32);
    xmmword_1EE186580 = v13;
    if (v16)
    {
      if (v16)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v11 = re::introspectionSharedMutex(v5);
    std::__shared_mutex_base::unlock(v11);
  }

  return &re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_AttachedTransformComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B3E98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3E98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3EC0, "AttachedTransformComponent");
    __cxa_guard_release(&qword_1EE1B3E98);
  }

  return &unk_1EE1B3EC0;
}

void re::ecs2::initInfo_AttachedTransformComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v19[0] = 0x68D8C7D4A5BC3FAALL;
  v19[1] = "AttachedTransformComponent";
  if (v19[0])
  {
    if (v19[0])
    {
    }
  }

  *(this + 2) = v20;
  if ((atomic_load_explicit(&_MergedGlobals_381, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_381);
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
      qword_1EE1B3EA0 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::ecs2::introspect_PinHandle(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "m_source";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B3EA8 = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = re::ecs2::introspect_PinHandle(1);
      v14 = (*(*v12 + 32))(v12, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "m_target";
      *(v14 + 16) = v13;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x9000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1B3EB0 = v14;
      v15 = re::introspectionAllocator(v14);
      v16 = re::IntrospectionInfo<re::Optional<re::Matrix4x4<float>>>::get(1);
      v17 = (*(*v15 + 32))(v15, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_calculatedWorldMatrix";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x10000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B3EB8 = v17;
      __cxa_guard_release(&_MergedGlobals_381);
    }
  }

  *(this + 2) = 0x15000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1B3EA0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AttachedTransformComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AttachedTransformComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AttachedTransformComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AttachedTransformComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226AttachedTransformComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v18 = v20;
}

void *re::internal::defaultDestruct<re::ecs2::AttachedTransformComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::ecs2::PinHandle::~PinHandle((a3 + 18));
  re::ecs2::PinHandle::~PinHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::AttachedTransformComponent>(void *a1)
{
  re::ecs2::PinHandle::~PinHandle((a1 + 18));
  re::ecs2::PinHandle::~PinHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void re::ecs2::AttachedTransformOp::~AttachedTransformOp(re::ecs2::AttachedTransformOp *this)
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

void re::ecs2::AttachedTransformComponent::~AttachedTransformComponent(re::ecs2::AttachedTransformComponent *this)
{
  re::ecs2::PinHandle::~PinHandle((this + 144));
  re::ecs2::PinHandle::~PinHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::PinHandle::~PinHandle((this + 144));
  re::ecs2::PinHandle::~PinHandle((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void re::TypeBuilderHelper::registerOptional<re::Matrix4x4<float>>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
{
  re::TypeRegistry::typeID(a1, a2, &v12);
  if (v12)
  {
    *a4 = v12;
  }

  else
  {
    re::StackScratchAllocator::StackScratchAllocator(v11);
    re::TypeBuilder::TypeBuilder(v10, v11);
    v9 = *a3;
    re::TypeBuilder::beginOptionalType(v10, a2, 0x50uLL, 0x10uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionOptional<re::Matrix4x4<float>>::IntrospectionOptional(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CFF468;
  return a1;
}

void *re::IntrospectionOptional<re::Matrix4x4<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Matrix4x4<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Matrix4x4<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 48) = 0u;
    *(a2 + 64) = 0u;
    *(a2 + 16) = 0u;
    *(a2 + 32) = 0u;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Matrix4x4<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::Matrix4x4<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  if (a2)
  {
    v5 = *a2;
    v6 = a2[1];
    v7 = a2[2];
    v8 = a2[3];
    if (a1->n128_u8[0])
    {
      result = *a2;
      v3 = a2[1];
      v4 = a2[3];
      a1[3] = a2[2];
      a1[4] = v4;
      a1[1] = result;
      a1[2] = v3;
    }

    else
    {
      a1->n128_u8[0] = 1;
      a1[1] = v5;
      a1[2] = v6;
      result = v7;
      a1[3] = v7;
      a1[4] = v8;
    }
  }

  else if (a1->n128_u8[0] == 1)
  {
    a1->n128_u8[0] = 0;
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226AttachedTransformComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_SpatialMediaSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_382, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_382))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B3F58, "SpatialMediaSystem");
    __cxa_guard_release(&_MergedGlobals_382);
  }

  return &unk_1EE1B3F58;
}

void re::ecs2::initInfo_SpatialMediaSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3816B5BD8EEB1F5ELL;
  v6[1] = "SpatialMediaSystem";
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
  *(this + 8) = &re::ecs2::initInfo_SpatialMediaSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialMediaSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialMediaSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::SpatialMediaSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::SpatialMediaSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialMediaSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialMediaSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::ecs2::SpatialMediaSystem *re::ecs2::SpatialMediaSystem::SpatialMediaSystem(re::ecs2::SpatialMediaSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CFF4E8;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  v3 = *re::spatialMediaLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[SpatialMediaSystem] System initialized.", v5, 2u);
  }

  return this;
}

_anonymous_namespace_ *re::ecs2::SpatialMediaSystem::willAddSystemToECSService(re::ecs2::SpatialMediaSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 30) = re::ServiceLocator::serviceOrNull<re::AssetService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  v6 = re::ServiceLocator::serviceOrNull<re::SpatialMediaService>(v5);
  if (v6)
  {
    *(this + 31) = v6;
  }

  v7 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 32) = re::ServiceLocator::serviceOrNull<re::TransformService>(v7);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ImagePresentationService>(v8);
  if (result)
  {
    *(this + 33) = result;
  }

  return result;
}

double re::ecs2::SpatialMediaSystem::willRemoveSystemFromECSService(re::ecs2::SpatialMediaSystem *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

re::SpatialMediaManager *re::ecs2::SpatialMediaSystem::willAddSceneToECSService(re::SpatialMediaManager *this, re::EventBus **a2)
{
  if (a2)
  {
    this = *(this + 31);
    if (this)
    {
      return re::SpatialMediaManager::registerScene(this, a2);
    }
  }

  return this;
}

re::SpatialMediaManager *re::ecs2::SpatialMediaSystem::willRemoveSceneFromECSService(re::SpatialMediaManager *this, re::ecs2::Scene *a2)
{
  if (a2)
  {
    this = *(this + 31);
    if (this)
    {
      return re::SpatialMediaManager::unregisterScene(this, a2);
    }
  }

  return this;
}

void re::ecs2::SpatialMediaSystem::update(re::SpatialMediaManager *a1, int a2, uint64_t a3)
{
  if (*(a1 + 29) && (v3 = a1, (a1 = *(a1 + 31)) != 0))
  {
    re::SpatialMediaManager::updateRemovedComponentEntities(a1);
    v7 = *(v3 + 28);
    if (!v7 || (*(v7 + 432) & 0x10) != 0)
    {
      v8 = vextq_s8(*(v3 + 248), *(v3 + 248), 8uLL);
      v18[0] = vextq_s8(*(v3 + 232), *(v3 + 232), 8uLL);
      v18[1] = v8;
      v19 = *(v3 + 33);
      v9 = *(a3 + 200);
      if (v9)
      {
        v10 = *&a2;
        v11 = *(a3 + 216);
        v12 = &v11[v9];
        do
        {
          v13 = *v11;
          re::MediaDefaults::logEnabled(SpatialMediaComponentHelper);
          SpatialMediaComponentHelper = re::ecs2::SceneComponentTable::get((v13 + 200), re::ecs2::ComponentImpl<re::ecs2::SpatialMediaComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (SpatialMediaComponentHelper)
          {
            v14 = *(SpatialMediaComponentHelper + 48);
            if (v14)
            {
              v15 = *(SpatialMediaComponentHelper + 50);
              v16 = 8 * v14;
              do
              {
                v17 = *(*v15 + 16);
                if (v17 && (*(v17 + 304) & 1) != 0)
                {
                  SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(*(v3 + 31), *(*v15 + 16));
                  if (SpatialMediaComponentHelper)
                  {
                    re::ecs2::SpatialMediaComponentHelper::impl::update(*SpatialMediaComponentHelper, v17, v18, v10);
                  }
                }

                v15 += 8;
                v16 -= 8;
              }

              while (v16);
            }
          }

          ++v11;
        }

        while (v11 != v12);
      }
    }
  }

  else
  {

    re::MediaDefaults::logEnabled(a1);
  }
}

void re::ecs2::SpatialMediaSystem::~SpatialMediaSystem(re::ecs2::SpatialMediaSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_ClippingOptOutComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B3FF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B3FF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4000, "ClippingOptOutComponent");
    __cxa_guard_release(&qword_1EE1B3FF8);
  }

  return &unk_1EE1B4000;
}

void re::ecs2::initInfo_ClippingOptOutComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x8A42DCC7257754C0;
  v10[1] = "ClippingOptOutComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B3FF0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B3FF0);
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
      _MergedGlobals_383 = v8;
      __cxa_guard_release(&qword_1EE1B3FF0);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_383;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ClippingOptOutComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ClippingOptOutComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ClippingOptOutComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ClippingOptOutComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223ClippingOptOutComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::ClippingOptOutComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  *v3 = &unk_1F5CDB430;
}

void re::internal::defaultConstructV2<re::ecs2::ClippingOptOutComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  *v1 = &unk_1F5CDB430;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223ClippingOptOutComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_RayTracedShadowReceiverComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_384, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_384))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B40B0, "RayTracedShadowReceiverComponent");
    __cxa_guard_release(&_MergedGlobals_384);
  }

  return &unk_1EE1B40B0;
}

void re::ecs2::initInfo_RayTracedShadowReceiverComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xA5B027ABDA48EFCALL;
  v14[1] = "RayTracedShadowReceiverComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B4098, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B4098);
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
      qword_1EE1B40A0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "isVisible";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B40A8 = v12;
      __cxa_guard_release(&qword_1EE1B4098);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B40A0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RayTracedShadowReceiverComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RayTracedShadowReceiverComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RayTracedShadowReceiverComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RayTracedShadowReceiverComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs232RayTracedShadowReceiverComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::RayTracedShadowReceiverComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 256;
  *v3 = &unk_1F5CE1708;
}

void re::internal::defaultConstructV2<re::ecs2::RayTracedShadowReceiverComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 256;
  *v1 = &unk_1F5CE1708;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs232RayTracedShadowReceiverComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::PhysicsJointDefinition::PhysicsJointDefinition(uint64_t a1, int a2, re::ecs2::EntityHandle *a3, uint64_t a4, char a5)
{
  *a1 = a2;
  re::ecs2::EntityHandle::EntityHandle((a1 + 16), a3);
  re::StringID::StringID((a1 + 40), (a3 + 24));
  v9 = *(a3 + 4);
  *(a1 + 64) = *(a3 + 3);
  *(a1 + 80) = v9;
  v10 = *(a3 + 80);
  *(a1 + 96) = v10;
  if (v10 == 1)
  {
    re::StringID::StringID((a1 + 104), (a3 + 88));
  }

  re::ecs2::EntityHandle::EntityHandle((a1 + 128), a4);
  re::StringID::StringID((a1 + 152), (a4 + 24));
  v11 = *(a4 + 64);
  *(a1 + 176) = *(a4 + 48);
  *(a1 + 192) = v11;
  v12 = *(a4 + 80);
  *(a1 + 208) = v12;
  if (v12 == 1)
  {
    re::StringID::StringID((a1 + 216), (a4 + 88));
  }

  *(a1 + 240) = a5;
  __asm { FMOV            V0.2S, #1.0 }

  v18 = -_D0;
  *(a1 + 244) = v18;
  *(a1 + 252) = v18;
  *(a1 + 260) = v18;
  for (i = 268; i != 292; i += 8)
  {
    *(a1 + i) = v18;
  }

  return a1;
}

BOOL re::ecs2::PhysicsJointDefinition::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = re::ecs2::PinHandle::operator==(a1 + 16, a2 + 16);
  if (result)
  {
    result = re::ecs2::PinHandle::operator==(a1 + 128, a2 + 128);
    if (result)
    {
      return *(a1 + 240) == *(a2 + 240) && *(a1 + 244) == *(a2 + 244) && *(a1 + 248) == *(a2 + 248) && *(a1 + 252) == *(a2 + 252) && *(a1 + 256) == *(a2 + 256) && *(a1 + 260) == *(a2 + 260) && *(a1 + 264) == *(a2 + 264) && *(a1 + 268) == *(a2 + 268) && *(a1 + 272) == *(a2 + 272) && *(a1 + 276) == *(a2 + 276) && *(a1 + 280) == *(a2 + 280) && *(a1 + 292) == *(a2 + 292) && *(a1 + 296) == *(a2 + 296);
    }
  }

  return result;
}

uint64_t re::ecs2::PhysicsJointDefinition::getDataToCreateRuntimeJoint(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, float32x4_t *a6, re **a7, float32x4_t *a8)
{
  v125 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  *a5 = 0;
  a8->i64[0] = 0;
  a8->i64[1] = 0;
  a8[1].i64[0] = 0;
  a8[1].i64[1] = 0x3F80000000000000;
  v9 = a8[1];
  *a6 = *a8;
  a6[1] = v9;
  v10 = *(a3 + 56);
  if (v10)
  {
    v18 = (*(*v10 + 32))(v10);
    v19 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v18);
    if (v19)
    {
      v20 = v19;
      v21 = (*(**(a3 + 56) + 32))(*(a3 + 56));
      v22 = re::ServiceLocator::serviceOrNull<re::TransformService>(v21);
      if (v22)
      {
        v23 = v22;
        v24 = re::ecs2::EntityHandle::resolve(a1 + 16, a3);
        if (v24)
        {
          v25 = v24;
          do
          {
            v26 = v25;
            v25 = *(v25 + 4);
          }

          while (v25);
          if (*(v26 + 3))
          {
            v101 = a4;
            v102 = *(v24 + 37);
            v27 = v24;
            v28 = re::ecs2::EntityComponentCollection::get((v24 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            if (!v28)
            {
              v44 = *re::physicsLogObjects(0);
              if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
              {
                return 3;
              }

              *buf = 136315394;
              v114 = v102;
              v115 = 2048;
              v116 = v27;
              v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) does not have RigidBodyComponent";
              goto LABEL_73;
            }

            v99 = v28;
            v29 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v20, v27);
            if (!v29)
            {
              v47 = *(v27 + 76);
              v44 = *re::physicsLogObjects(0);
              v48 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
              if ((v47 & 1) == 0)
              {
                if (v48)
                {
                  *buf = 136315394;
                  v114 = v102;
                  v115 = 2048;
                  v116 = v27;
                  v46 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) is not active";
                  goto LABEL_42;
                }

                return 2;
              }

              if (!v48)
              {
                return 3;
              }

              *buf = 136315394;
              v114 = v102;
              v115 = 2048;
              v116 = v27;
              v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) does not have PhysicsSimulation";
LABEL_73:
              v32 = buf;
              v33 = v44;
              v34 = 22;
              goto LABEL_21;
            }

            v100 = v29;
            goto LABEL_25;
          }
        }

        if (!*(a1 + 24))
        {
          v100 = 0;
          v101 = a4;
          v27 = v24;
          v99 = 0;
          v102 = "null";
LABEL_25:
          v36 = re::ecs2::EntityHandle::resolve(a1 + 128, a3);
          v37 = v27;
          v38 = v36;
          if (v36)
          {
            v39 = v36;
            do
            {
              v40 = v39;
              v39 = *(v39 + 4);
            }

            while (v39);
            if (*(v40 + 3))
            {
              v98 = v36[37];
              v41 = re::ecs2::EntityComponentCollection::get((v36 + 6), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (!v41)
              {
                v44 = *re::physicsLogObjects(0);
                if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  return 3;
                }

                *buf = 136315394;
                v114 = v98;
                v115 = 2048;
                v116 = v38;
                v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity1 %s (%p) does not have RigidBodyComponent";
                goto LABEL_73;
              }

              v97 = v41;
              v42 = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(v20, v38);
              if (!v42)
              {
                v43 = *(v38 + 76);
                v44 = *re::physicsLogObjects(0);
                v45 = os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT);
                if ((v43 & 1) == 0)
                {
                  if (v45)
                  {
                    *buf = 136315394;
                    v114 = v98;
                    v115 = 2048;
                    v116 = v38;
                    v46 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) is not active";
LABEL_42:
                    v49 = buf;
LABEL_43:
                    v50 = v44;
                    v51 = 22;
LABEL_44:
                    _os_log_impl(&dword_1E1C61000, v50, OS_LOG_TYPE_DEFAULT, v46, v49, v51);
                    return 2;
                  }

                  return 2;
                }

                if (!v45)
                {
                  return 3;
                }

                *buf = 136315394;
                v114 = v98;
                v115 = 2048;
                v116 = v38;
                v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) does not have PhysicsSimulation";
                goto LABEL_73;
              }

LABEL_54:
              if (v37 == v38)
              {
                v55 = v37;
                v44 = *re::physicsLogObjects(v42);
                if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                {
                  return 3;
                }

                *buf = 136315394;
                v114 = v102;
                v115 = 2048;
                v116 = v55;
                v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entities %s (%p) are the same";
                goto LABEL_73;
              }

              if (v100 && v42 && v100 != v42)
              {
                v52 = v42;
                v53 = v37;
                v54 = *re::physicsLogObjects(v42);
                if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                {
                  return 3;
                }

                *buf = 136316418;
                v114 = v102;
                v115 = 2048;
                v116 = v53;
                v117 = 2080;
                v118 = v98;
                v119 = 2048;
                v120 = v38;
                v121 = 2048;
                v122 = v100;
                v123 = 2048;
                v124 = v52;
                v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity %s (%p) and Entity %s (%p) have different PhysicsSimulations: %p %p";
                v32 = buf;
                goto LABEL_60;
              }

              v92 = v42;
              v56 = re::ecs2::PhysicsSimulationService::physicsSimulationDataForEntity(v20, v37);
              v95 = v56[8];
              v96 = v56[7];
              v93 = v56[10];
              v94 = v56[9];
              re::ecs2::PinHandle::pinPose((a1 + 16), 1, v108);
              if (v108[0])
              {
                v58 = v38;
                v59 = v37;
                re::TransformService::worldMatrix(v23, v37, 0, buf);
                v126.columns[1] = v95;
                v126.columns[0] = v96;
                v126.columns[3] = v93;
                v126.columns[2] = v94;
                v112 = __invert_f4(v126);
                *v60.i64 = re::operator*<float>(&v112, buf, v107);
                re::Matrix4x4<float>::extractScale(v107, v60, v61, v62);
                v64.i64[0] = v63;
                v64.i64[1] = v65;
                v66 = v110;
                *a6 = v109;
                a6[1] = v66;
                *a6 = vmulq_f32(*a6, v64);
                re::ecs2::PinHandle::pinPose((a1 + 128), 1, v104);
                if (v104[0])
                {
                  re::TransformService::worldMatrix(v23, v58, 0, &v112);
                  v127.columns[1] = v95;
                  v127.columns[0] = v96;
                  v127.columns[3] = v93;
                  v127.columns[2] = v94;
                  v111 = __invert_f4(v127);
                  *v68.i64 = re::operator*<float>(&v111, &v112, v103);
                  re::Matrix4x4<float>::extractScale(v103, v68, v69, v70);
                  v72.i64[0] = v71;
                  v72.i64[1] = v73;
                  v74 = v106;
                  *a8 = v105;
                  a8[1] = v74;
                  *a8 = vmulq_f32(*a8, v72);
                  if (v100)
                  {
                    v75 = v100;
                  }

                  else
                  {
                    v75 = v92;
                  }

                  if (v75 != a2)
                  {
                    v54 = *re::physicsLogObjects(v71);
                    if (!os_log_type_enabled(v54, OS_LOG_TYPE_DEFAULT))
                    {
                      return 3;
                    }

                    v111.columns[0].i32[0] = 136316418;
                    *(v111.columns[0].i64 + 4) = v102;
                    v111.columns[0].i16[6] = 2048;
                    *(&v111.columns[0].i64[1] + 6) = v59;
                    v111.columns[1].i16[3] = 2080;
                    v111.columns[1].i64[1] = v98;
                    v111.columns[2].i16[0] = 2048;
                    *(v111.columns[2].i64 + 2) = v58;
                    v111.columns[2].i16[5] = 2048;
                    *(&v111.columns[2].i64[1] + 4) = v75;
                    v111.columns[3].i16[2] = 2048;
                    *(v111.columns[3].i64 + 6) = a2;
                    v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): PhysicsSimulation from Entities different from the given simulation, Entity %s (%p), Entity %s (%p): %p %p";
                    v32 = &v111;
LABEL_60:
                    v33 = v54;
                    v34 = 62;
                    goto LABEL_21;
                  }

                  if ((*a1 - 1) >= 6)
                  {
                    v84 = *re::physicsLogObjects(v71);
                    if (!os_log_type_enabled(v84, OS_LOG_TYPE_DEFAULT))
                    {
                      return 3;
                    }

                    v85 = *a1;
                    v111.columns[0].i32[0] = 136316162;
                    *(v111.columns[0].i64 + 4) = v102;
                    v111.columns[0].i16[6] = 2048;
                    *(&v111.columns[0].i64[1] + 6) = v59;
                    v111.columns[1].i16[3] = 2080;
                    v111.columns[1].i64[1] = v98;
                    v111.columns[2].i16[0] = 2048;
                    *(v111.columns[2].i64 + 2) = v58;
                    v111.columns[2].i16[5] = 1024;
                    v111.columns[2].i32[3] = v85;
                    v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity %s (%p), Entity %s (%p), unrecognized joint type %d";
                    v32 = &v111;
                    v33 = v84;
                    v34 = 48;
                    goto LABEL_21;
                  }

                  if (v99)
                  {
                    v80 = *(v99 + 336);
                    *a5 = v80;
                    v81 = v97;
                    if (!v80)
                    {
                      v44 = *re::physicsLogObjects(v71);
                      if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                      {
                        return 2;
                      }

                      v111.columns[0].i32[0] = 136315394;
                      *(v111.columns[0].i64 + 4) = v102;
                      v111.columns[0].i16[6] = 2048;
                      *(&v111.columns[0].i64[1] + 6) = v59;
                      v46 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity %s (%p) does not have RigidBody";
                      goto LABEL_101;
                    }

                    v82 = *(v80 + 208) == 2;
                    v83 = v82;
                    if (!v97)
                    {
                      if (!v82)
                      {
                        goto LABEL_95;
                      }

LABEL_91:
                      if (v101)
                      {
                        v87 = (*(**(v101 + 40) + 16))(*(v101 + 40));
                        v88 = (*(**(v101 + 40) + 24))(*(v101 + 40));
                        if (v87 != *a5)
                        {
                          v89 = *re::physicsLogObjects(v88);
                          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                          {
                            v111.columns[0].i32[0] = 136315394;
                            *(v111.columns[0].i64 + 4) = v102;
                            v111.columns[0].i16[6] = 2048;
                            *(&v111.columns[0].i64[1] + 6) = v59;
                            v90 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) RigidBody is different from expected";
LABEL_105:
                            _os_log_impl(&dword_1E1C61000, v89, OS_LOG_TYPE_DEFAULT, v90, &v111, 0x16u);
                            return 1;
                          }

                          return 1;
                        }

                        if (v88 != *a7)
                        {
                          v89 = *re::physicsLogObjects(v88);
                          if (os_log_type_enabled(v89, OS_LOG_TYPE_DEFAULT))
                          {
                            v111.columns[0].i32[0] = 136315394;
                            *(v111.columns[0].i64 + 4) = v98;
                            v111.columns[0].i16[6] = 2048;
                            *(&v111.columns[0].i64[1] + 6) = v58;
                            v90 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity1 %s (%p) RigidBody is different from expected";
                            goto LABEL_105;
                          }

                          return 1;
                        }
                      }

                      return 0;
                    }
                  }

                  else
                  {
                    v81 = v97;
                    if (!v97)
                    {
                      goto LABEL_95;
                    }

                    v83 = 0;
                  }

                  v86 = *(v81 + 336);
                  *a7 = v86;
                  if (v86)
                  {
                    if (*(v86 + 52) == 2 || v83)
                    {
                      goto LABEL_91;
                    }

LABEL_95:
                    v91 = *re::physicsLogObjects(v71);
                    if (!os_log_type_enabled(v91, OS_LOG_TYPE_DEFAULT))
                    {
                      return 2;
                    }

                    v111.columns[0].i32[0] = 136315906;
                    *(v111.columns[0].i64 + 4) = v102;
                    v111.columns[0].i16[6] = 2048;
                    *(&v111.columns[0].i64[1] + 6) = v59;
                    v111.columns[1].i16[3] = 2080;
                    v111.columns[1].i64[1] = v98;
                    v111.columns[2].i16[0] = 2048;
                    *(v111.columns[2].i64 + 2) = v58;
                    v46 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Neither Entity %s (%p) nor Entity %s (%p) has dynamic RigidBody";
                    v49 = &v111;
                    v50 = v91;
                    v51 = 42;
                    goto LABEL_44;
                  }

                  v44 = *re::physicsLogObjects(v71);
                  if (!os_log_type_enabled(v44, OS_LOG_TYPE_DEFAULT))
                  {
                    return 2;
                  }

                  v111.columns[0].i32[0] = 136315394;
                  *(v111.columns[0].i64 + 4) = v98;
                  v111.columns[0].i16[6] = 2048;
                  *(&v111.columns[0].i64[1] + 6) = v58;
                  v46 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity %s (%p) does not have RigidBody";
LABEL_101:
                  v49 = &v111;
                  goto LABEL_43;
                }

                v77 = *re::physicsLogObjects(v67);
                if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  return 3;
                }

                v79 = *(a1 + 160);
                v112.columns[0].i32[0] = 136315650;
                *(v112.columns[0].i64 + 4) = v98;
                v112.columns[0].i16[6] = 2048;
                *(&v112.columns[0].i64[1] + 6) = v58;
                v112.columns[1].i16[3] = 2080;
                v112.columns[1].i64[1] = v79;
                v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity1 %s (%p) does not have Pin named %s";
                v32 = &v112;
              }

              else
              {
                v76 = v37;
                v77 = *re::physicsLogObjects(v57);
                if (!os_log_type_enabled(v77, OS_LOG_TYPE_DEFAULT))
                {
                  return 3;
                }

                v78 = *(a1 + 48);
                *buf = 136315650;
                v114 = v102;
                v115 = 2048;
                v116 = v76;
                v117 = 2080;
                v118 = v78;
                v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 %s (%p) does not have Pin named %s";
                v32 = buf;
              }

              v33 = v77;
              v34 = 32;
              goto LABEL_21;
            }
          }

          if (*(a1 + 136))
          {
            v30 = *re::physicsLogObjects(v36);
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              return 3;
            }

            *buf = 0;
            v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity1 was deleted";
          }

          else
          {
            if (v37 | v36)
            {
              v42 = 0;
              v97 = 0;
              v98 = "null";
              goto LABEL_54;
            }

            v30 = *re::physicsLogObjects(v36);
            if (!os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
            {
              return 3;
            }

            *buf = 0;
            v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Both Entities are null";
          }

LABEL_20:
          v32 = buf;
          v33 = v30;
          v34 = 2;
LABEL_21:
          _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, v31, v32, v34);
          return 3;
        }

        v30 = *re::physicsLogObjects(v24);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): Entity0 was deleted";
          goto LABEL_20;
        }
      }

      else
      {
        v30 = *re::physicsLogObjects(0);
        if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): TransformService == nullptr!";
          goto LABEL_20;
        }
      }
    }

    else
    {
      v30 = *re::physicsLogObjects(0);
      if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): PhysicsSimulationService == nullptr!";
        goto LABEL_20;
      }
    }
  }

  else
  {
    v30 = *re::physicsLogObjects(0);
    if (os_log_type_enabled(v30, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v31 = "PhysicsJointDefinition::getDataToCreateRuntimeJoint(): scene->ecsService() == nullptr!";
      goto LABEL_20;
    }
  }

  return 3;
}

void re::IntrospectionInfo<re::LinearLimit [3]>::get()
{
  if ((atomic_load_explicit(&qword_1EE1B4158, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4158))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1B4198);
    __cxa_guard_release(&qword_1EE1B4158);
  }

  if ((_MergedGlobals_385 & 1) == 0)
  {
    _MergedGlobals_385 = 1;
    v0 = re::introspect_LinearLimit(1);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&unk_1EE1B4198, v0, 3);
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&unk_1EE1B4198, &v6);
    if (BYTE8(v6))
    {
      v3 = v7;
    }

    else
    {
      v3 = &v6 + 9;
    }

    if (v6 && (BYTE8(v6) & 1) != 0)
    {
      (*(*v6 + 40))();
    }

    v6 = *(v0 + 2);
    xmmword_1EE1B41B8 = v5;
    if (v8)
    {
      if (v8)
      {
      }
    }
  }
}

void re::IntrospectionInfo<re::AngularLimit [3]>::get()
{
  if ((atomic_load_explicit(&qword_1EE1B4160, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4160))
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&algn_1EE1B41C8[24]);
    __cxa_guard_release(&qword_1EE1B4160);
  }

  if ((byte_1EE1B4141 & 1) == 0)
  {
    byte_1EE1B4141 = 1;
    v0 = re::introspect_AngularLimit(1);
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&algn_1EE1B41C8[24], v0, 3);
    re::IntrospectionRegistry::add(v1, v2);
    re::getPrettyTypeName(&algn_1EE1B41C8[24], &v6);
    if (BYTE8(v6))
    {
      v3 = v7;
    }

    else
    {
      v3 = &v6 + 9;
    }

    if (v6 && (BYTE8(v6) & 1) != 0)
    {
      (*(*v6 + 40))();
    }

    v6 = *(v0 + 2);
    xmmword_1EE1B4200 = v5;
    if (v8)
    {
      if (v8)
      {
      }
    }
  }
}

void *re::ecs2::allocInfo_PhysicsJointDefinition(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4150, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4150))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4228, "PhysicsJointDefinition");
    __cxa_guard_release(&qword_1EE1B4150);
  }

  return &unk_1EE1B4228;
}

void re::ecs2::initInfo_PhysicsJointDefinition(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v25[0] = 0x19B84C07D352F8ACLL;
  v25[1] = "PhysicsJointDefinition";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&qword_1EE1B4148, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B4148);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_PhysicsJointType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_type";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B4168 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_BOOL(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_checkForCollisions";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0xF000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B4170 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::ecs2::introspect_PinHandle(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_pinHandle0";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B4178 = v16;
      v17 = re::introspectionAllocator(v16);
      v18 = re::ecs2::introspect_PinHandle(1);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "m_pinHandle1";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x8000000004;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B4180 = v19;
      v20 = re::introspectionAllocator(v19);
      re::IntrospectionInfo<re::LinearLimit [3]>::get();
      v21 = (*(*v20 + 32))(v20, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "m_linearLimits";
      *(v21 + 16) = &unk_1EE1B4198;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xF400000005;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B4188 = v21;
      v22 = re::introspectionAllocator(v21);
      re::IntrospectionInfo<re::AngularLimit [3]>::get();
      v23 = (*(*v22 + 32))(v22, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_angularLimits";
      *(v23 + 16) = &algn_1EE1B41C8[24];
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x10C00000006;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B4190 = v23;
      __cxa_guard_release(&qword_1EE1B4148);
    }
  }

  *(this + 2) = 0x13000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 6;
  *(this + 8) = &qword_1EE1B4168;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PhysicsJointDefinition>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PhysicsJointDefinition>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PhysicsJointDefinition>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PhysicsJointDefinition>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void re::internal::defaultDestruct<re::ecs2::PhysicsJointDefinition>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ecs2::PinHandle::~PinHandle((a3 + 128));

  re::ecs2::PinHandle::~PinHandle((a3 + 16));
}

void re::internal::defaultDestructV2<re::ecs2::PhysicsJointDefinition>(uint64_t a1)
{
  re::ecs2::PinHandle::~PinHandle((a1 + 128));

  re::ecs2::PinHandle::~PinHandle((a1 + 16));
}

void *re::ecs2::allocInfo_UIShadowConfigurationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_386, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_386))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B42D0, "UIShadowConfigurationComponent");
    __cxa_guard_release(&_MergedGlobals_386);
  }

  return &unk_1EE1B42D0;
}

void re::ecs2::initInfo_UIShadowConfigurationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xA72AF1728A1D8536;
  v10[1] = "UIShadowConfigurationComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B42C8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B42C8);
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
      qword_1EE1B42C0 = v8;
      __cxa_guard_release(&qword_1EE1B42C8);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B42C0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UIShadowConfigurationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UIShadowConfigurationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UIShadowConfigurationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UIShadowConfigurationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs230UIShadowConfigurationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::UIShadowConfigurationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7620;
}

void re::internal::defaultConstructV2<re::ecs2::UIShadowConfigurationComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE7620;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs230UIShadowConfigurationComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void **re::ecs2::VideoPlayerStatusComponent::didUpdateInApp(void **this)
{
  v1 = this[2];
  if (v1)
  {
    v2 = this;
    v3 = this[2];
    do
    {
      v4 = v3;
      v3 = v3[4];
    }

    while (v3);
    v5 = v4[3];
    if (v5)
    {
      v6 = *(v5 + 288);
      if (v6)
      {
        v7 = *(this + 66);
        if (*(this + 152) != v7)
        {
          LOBYTE(v16) = *(this + 152);
          BYTE1(v16) = v7;
          if ((atomic_load_explicit(&qword_1EE1B43E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B43E0))
          {
            qword_1EE1B43D8 = re::EventBus::typeStringToId(("36REVideoPlayerContentTypeChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v12);
            __cxa_guard_release(&qword_1EE1B43E0);
          }

          re::EventBus::publish(v6, v1, qword_1EE1B43D8, &v16, 2uLL, 0);
          *(v2 + 152) = *(v2 + 66);
          re::ecs2::Component::wasModified(v2);
          this = re::ecs2::Component::markDirty(v2);
        }

        v8 = *(v2 + 80);
        v9 = vmvn_s8(vceq_f32(*(v2 + 168), v8));
        if ((vpmax_u32(v9, v9).u32[0] & 0x80000000) != 0)
        {
          v16 = *(v2 + 72);
          v17 = v8;
          if ((atomic_load_explicit(&qword_1EE1B43F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B43F0))
          {
            qword_1EE1B43E8 = re::EventBus::typeStringToId(("34REVideoPlayerVideoSizeChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v15);
            __cxa_guard_release(&qword_1EE1B43F0);
          }

          re::EventBus::publish(v6, v1, qword_1EE1B43E8, &v16, 0x10uLL, 0);
          *(v2 + 160) = *(v2 + 72);
          re::ecs2::Component::wasModified(v2);
          this = re::ecs2::Component::markDirty(v2);
        }

        v10 = *(v2 + 88);
        if (*(v2 + 176) != v10)
        {
          LOBYTE(v16) = *(v2 + 176);
          BYTE1(v16) = v10;
          if ((atomic_load_explicit(&qword_1EE1B4400, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4400))
          {
            qword_1EE1B43F8 = re::EventBus::typeStringToId(("36REVideoPlayerViewingModeChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v13);
            __cxa_guard_release(&qword_1EE1B4400);
          }

          re::EventBus::publish(v6, v1, qword_1EE1B43F8, &v16, 2uLL, 0);
          *(v2 + 176) = *(v2 + 88);
          re::ecs2::Component::wasModified(v2);
          this = re::ecs2::Component::markDirty(v2);
        }

        v11 = *(v2 + 104);
        if (*(v2 + 192) != *&v11)
        {
          v16 = *(v2 + 96);
          v17 = v11;
          v18 = *(v2 + 112);
          if ((atomic_load_explicit(&qword_1EE1B4410, memory_order_acquire) & 1) == 0)
          {
            if (__cxa_guard_acquire(&qword_1EE1B4410))
            {
              qword_1EE1B4408 = re::EventBus::typeStringToId(("46REVideoPlayerVideoReceiverEndpointChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v14);
              __cxa_guard_release(&qword_1EE1B4410);
            }
          }

          re::EventBus::publish(v6, v1, qword_1EE1B4408, &v16, 0x18uLL, 0);
          objc_storeStrong((v2 + 184), *(v2 + 96));
          *(v2 + 192) = *(v2 + 104);
          re::ecs2::Component::wasModified(v2);
          return re::ecs2::Component::markDirty(v2);
        }
      }
    }
  }

  return this;
}

void re::ecs2::VideoPlayerStatusComponent::setMediaInfo(re::ecs2::Component *a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(a1 + 65) != v2)
  {
    *(a1 + 65) = v2;
    v4 = *(*(a1 + 2) + 216);
    if (v4)
    {
      re::ecs2::NetworkComponent::markDirty(v4, a1);
    }

    v5 = *re::videoLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 65);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "VideoPlayerStatusComponent setMediaInfo media: %d", v7, 8u);
    }
  }
}

void re::ecs2::VideoPlayerStatusComponent::setContentInfo(re::ecs2::Component *a1, unsigned __int8 *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*(a1 + 66) != v2)
  {
    *(a1 + 66) = v2;
    v4 = *(*(a1 + 2) + 216);
    if (v4)
    {
      re::ecs2::NetworkComponent::markDirty(v4, a1);
    }

    v5 = *re::videoLogObjects(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
    {
      v6 = *(a1 + 66);
      v7[0] = 67109120;
      v7[1] = v6;
      _os_log_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_DEFAULT, "VideoPlayerStatusComponent setContentInfo media: %d", v7, 8u);
    }
  }
}

void re::ecs2::VideoPlayerStatusComponent::setVideoIsReadyToRender(re::ecs2::VideoPlayerStatusComponent *this, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 89) != a2)
  {
    *(this + 89) = a2;
    v3 = *(*(this + 2) + 216);
    if (v3)
    {
      re::ecs2::NetworkComponent::markDirty(v3, this);
    }

    v4 = *re::videoLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 89);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VideoPlayerStatusComponent setVideoIsReadyToRender = %d", v6, 8u);
    }
  }
}

void re::ecs2::VideoPlayerStatusComponent::setVideoReceiverEndpointAvailable(re::ecs2::VideoPlayerStatusComponent *this, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  if (*(this + 120) != a2)
  {
    *(this + 120) = a2;
    v3 = *(*(this + 2) + 216);
    if (v3)
    {
      re::ecs2::NetworkComponent::markDirty(v3, this);
    }

    v4 = *re::videoLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      v5 = *(this + 120);
      v6[0] = 67109120;
      v6[1] = v5;
      _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_DEFAULT, "VideoPlayerStatusComponent setVideoReceiverEndpointAvailable = %d", v6, 8u);
    }
  }
}

void re::ecs2::introspect_VideoPlayerMediaType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B4368, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B4370, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4370))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B4438, "VideoPlayerMediaType", 1, 1, 1, 1);
      qword_1EE1B4438 = &unk_1F5D0C658;
      qword_1EE1B4478 = &re::ecs2::introspect_VideoPlayerMediaType(BOOL)::enumTable;
      dword_1EE1B4448 = 9;
      __cxa_guard_release(&qword_1EE1B4370);
    }

    if (_MergedGlobals_387)
    {
      break;
    }

    _MergedGlobals_387 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B4438, a2);
    v33 = 0xE22DD1D6E86A0B04;
    v34 = "VideoPlayerMediaType";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
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
      v6 = qword_1EE1B4478;
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
      xmmword_1EE1B4458 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1B4368);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "InvalidVideo";
      qword_1EE1B4418 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Video";
      qword_1EE1B4420 = v32;
      __cxa_guard_release(&qword_1EE1B4368);
    }
  }
}

void *re::ecs2::allocInfo_VideoPlayerMediaInfo(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4378, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4378))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4538, "VideoPlayerMediaInfo");
    __cxa_guard_release(&qword_1EE1B4378);
  }

  return &unk_1EE1B4538;
}

void re::ecs2::initInfo_VideoPlayerMediaInfo(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xE22DD1D6E85FB5ECLL;
  v10[1] = "VideoPlayerMediaInfo";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B4388, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B4388);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_VideoPlayerMediaType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "mediaType";
      *(v8 + 16) = &qword_1EE1B4438;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B4380 = v8;
      __cxa_guard_release(&qword_1EE1B4388);
    }
  }

  *(this + 2) = 0x100000008;
  *(this + 6) = 1;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B4380;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoPlayerMediaInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoPlayerMediaInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoPlayerMediaInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoPlayerMediaInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::ecs2::allocInfo_VideoPlayerContentInfo(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4398, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4398))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B45C8, "VideoPlayerContentInfo");
    __cxa_guard_release(&qword_1EE1B4398);
  }

  return &unk_1EE1B45C8;
}

void re::ecs2::initInfo_VideoPlayerContentInfo(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xDC86BCC6BE29816;
  v10[1] = "VideoPlayerContentInfo";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B43A8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B43A8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_VideoPlayerContentType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "contentType";
      *(v8 + 16) = &qword_1EE1B4480;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1B43A0 = v8;
      __cxa_guard_release(&qword_1EE1B43A8);
    }
  }

  *(this + 2) = 0x100000008;
  *(this + 6) = 1;
  *(this + 14) = 1;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B43A0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoPlayerContentInfo>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoPlayerContentInfo>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoPlayerContentInfo>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoPlayerContentInfo>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::ecs2::introspect_VideoPlayerContentType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1B43B8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1B43C0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B43C0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1B4480, "VideoPlayerContentType", 1, 1, 1, 1);
      qword_1EE1B4480 = &unk_1F5D0C658;
      qword_1EE1B44C0 = &re::ecs2::introspect_VideoPlayerContentType(BOOL)::enumTable;
      dword_1EE1B4490 = 9;
      __cxa_guard_release(&qword_1EE1B43C0);
    }

    if (byte_1EE1B4361)
    {
      break;
    }

    byte_1EE1B4361 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1B4480, a2);
    v33 = 0xDC86BCC6BECED2ELL;
    v34 = "VideoPlayerContentType";
    v37 = 0x31CD534126;
    v38 = "uint8_t";
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
      v6 = qword_1EE1B44C0;
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
      xmmword_1EE1B44A0 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1B43B8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "InvalidVideo";
      qword_1EE1B4428 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Video";
      qword_1EE1B4430 = v32;
      __cxa_guard_release(&qword_1EE1B43B8);
    }
  }
}

void *re::ecs2::allocInfo_VideoPlayerStatusComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B43D0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B43D0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4658, "VideoPlayerStatusComponent");
    __cxa_guard_release(&qword_1EE1B43D0);
  }

  return &unk_1EE1B4658;
}

void re::ecs2::initInfo_VideoPlayerStatusComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v60[0] = 0x10446737D3AC3CDELL;
  v60[1] = "VideoPlayerStatusComponent";
  if (v60[0])
  {
    if (v60[0])
    {
    }
  }

  *(this + 2) = v61;
  if ((atomic_load_explicit(&qword_1EE1B43C8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B43C8);
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
      qword_1EE1B44C8 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = v9;
      v11 = qword_1EE1B4390;
      if (!qword_1EE1B4390)
      {
        v11 = re::ecs2::allocInfo_VideoPlayerMediaInfo(v9);
        qword_1EE1B4390 = v11;
        re::ecs2::initInfo_VideoPlayerMediaInfo(v11, v12);
      }

      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_mediaInfo";
      *(v13 + 16) = v11;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x4100000001;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B44D0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::introspect_Vector2F(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_currentPlayerScreenSize";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1B44D8 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_safezoneradius";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1C00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B44E0 = v20;
      v21 = re::introspectionAllocator(v20);
      v22 = re::introspect_Vector3F(1);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_currentSceneSize";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x2000000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B44E8 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::ecs2::introspect_VideoViewingMode(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "m_currentViewingMode";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x5800000006;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B44F0 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "m_videoIsReadyToRender";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x5900000007;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1B44F8 = v31;
      v32 = re::introspectionAllocator(v31);
      v33 = re::introspect_Vector2F(1);
      v34 = (*(*v32 + 32))(v32, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "m_currentScreenVideoDimension";
      *(v34 + 16) = v33;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x5000000008;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1B4500 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = v35;
      v37 = qword_1EE1B43B0;
      if (!qword_1EE1B43B0)
      {
        v37 = re::ecs2::allocInfo_VideoPlayerContentInfo(v35);
        qword_1EE1B43B0 = v37;
        re::ecs2::initInfo_VideoPlayerContentInfo(v37, v38);
      }

      v39 = (*(*v36 + 32))(v36, 72, 8);
      *v39 = 1;
      *(v39 + 8) = "m_contentInfo";
      *(v39 + 16) = v37;
      *(v39 + 24) = 0;
      *(v39 + 32) = 0x4200000009;
      *(v39 + 40) = 0;
      *(v39 + 48) = 0;
      *(v39 + 56) = 0;
      *(v39 + 64) = 0;
      qword_1EE1B4508 = v39;
      v40 = re::introspectionAllocator(v39);
      v42 = re::introspect_BOOL(1, v41);
      v43 = (*(*v40 + 32))(v40, 72, 8);
      *v43 = 1;
      *(v43 + 8) = "m_videoReceiverEndpointAvailable";
      *(v43 + 16) = v42;
      *(v43 + 24) = 0;
      *(v43 + 32) = 0x780000000ALL;
      *(v43 + 40) = 0;
      *(v43 + 48) = 0;
      *(v43 + 56) = 0;
      *(v43 + 64) = 0;
      qword_1EE1B4510 = v43;
      v44 = re::introspectionAllocator(v43);
      v46 = re::introspect_AssetHandle(1, v45);
      v47 = (*(*v44 + 32))(v44, 72, 8);
      *v47 = 1;
      *(v47 + 8) = "m_videoAsset";
      *(v47 + 16) = v46;
      *(v47 + 24) = 0;
      *(v47 + 32) = 0x800000000BLL;
      *(v47 + 40) = 0;
      *(v47 + 48) = 0;
      *(v47 + 56) = 0;
      *(v47 + 64) = 0;
      qword_1EE1B4518 = v47;
      v48 = re::introspectionAllocator(v47);
      v49 = re::introspect_Vector4F(1);
      v50 = (*(*v48 + 32))(v48, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "m_insets";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x3000000012;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE1B4520 = v50;
      v51 = re::introspectionAllocator(v50);
      v53 = re::introspect_BOOL(1, v52);
      v54 = (*(*v51 + 32))(v51, 72, 8);
      *v54 = 1;
      *(v54 + 8) = "m_isPlayControlsOn";
      *(v54 + 16) = v53;
      *(v54 + 24) = 0;
      *(v54 + 32) = 0x4000000013;
      *(v54 + 40) = 0;
      *(v54 + 48) = 0;
      *(v54 + 56) = 0;
      *(v54 + 64) = 0;
      qword_1EE1B4528 = v54;
      v55 = re::introspectionAllocator(v54);
      v57 = re::ecs2::introspect_SpatialVideoMode(1, v56);
      v58 = (*(*v55 + 32))(v55, 72, 8);
      *v58 = 1;
      *(v58 + 8) = "m_currentSpatialVideoMode";
      *(v58 + 16) = v57;
      *(v58 + 24) = 0;
      *(v58 + 32) = 0xD000000014;
      *(v58 + 40) = 0;
      *(v58 + 48) = 0;
      *(v58 + 56) = 0;
      *(v58 + 64) = 0;
      qword_1EE1B4530 = v58;
      __cxa_guard_release(&qword_1EE1B43C8);
    }
  }

  *(this + 2) = 0xE000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 14;
  *(this + 8) = &qword_1EE1B44C8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VideoPlayerStatusComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VideoPlayerStatusComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VideoPlayerStatusComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VideoPlayerStatusComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226VideoPlayerStatusComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v59 = v61;
}

double re::make::shared::unsafelyInplace<re::ecs2::VideoPlayerStatusComponent>(ArcSharedObject *a1)
{
  *(a1 + 12) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 10) = 0u;
  *(a1 + 11) = 0u;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE30F8;
  *(v1 + 28) = -1082130432;
  result = 0.0;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 1;
  *(v1 + 66) = 0;
  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  *(v1 + 88) = 0;
  *(v1 + 96) = 0;
  *(v1 + 104) = -1;
  *(v1 + 112) = 0;
  *(v1 + 120) = 0;
  *(v1 + 160) = 0;
  *(v1 + 168) = 0;
  *(v1 + 176) = 0;
  *(v1 + 128) = 0;
  *(v1 + 136) = 0;
  *(v1 + 152) = 0;
  *(v1 + 144) = 0;
  *(v1 + 184) = 0;
  *(v1 + 192) = -1;
  *(v1 + 200) = 0;
  *(v1 + 208) = 0;
  *(v1 + 216) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226VideoPlayerStatusComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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