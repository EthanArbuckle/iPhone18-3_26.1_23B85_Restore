void **re::ecs2::Component::markDirty(void **this)
{
  v1 = this;
  v2 = this[2];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = v2[4];
    }

    while (v2);
    v4 = v3[3];
    if (v4)
    {
      v5 = (*(*this + 5))(this);
      v6 = *(v4 + 288);
      v8[0] = v1[2];
      v8[1] = v5;
      v7 = re::EventBus::getTypeId<REComponentDidChangeEvent>();
      this = re::EventBus::publish(v6, v8[0], v7, v8, 0x10uLL, v5);
    }
  }

  *(v1 + 24) = 0;
  return this;
}

uint64_t re::ecs2::Component::enqueueMarkDirty(uint64_t this)
{
  if ((*(this + 24) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 16);
    if (v2)
    {
      do
      {
        v3 = v2;
        v2 = *(v2 + 32);
      }

      while (v2);
      v4 = *(v3 + 24);
      if (v4)
      {
        this = *(v4 + 56);
        if (this)
        {
          this = (*(*this + 240))(this, v1);
          *(v1 + 24) = 1;
        }
      }
    }
  }

  return this;
}

void *re::ecs2::Component::willSet(void *this)
{
  v1 = this[2];
  if (v1)
  {
    this = (*(*this + 40))(this);
    if (*(v1 + 376))
    {
      v2 = this;
      this = (v1 + 16);
      if (*(v1 + 16))
      {

        return realitykit_willSet(this, v1 + 376, v2);
      }
    }
  }

  return this;
}

void *re::ecs2::Component::didSet(void *this)
{
  v1 = this[2];
  if (v1)
  {
    this = (*(*this + 40))(this);
    if (*(v1 + 376))
    {
      v2 = this;
      this = (v1 + 16);
      if (*(v1 + 16))
      {

        return realitykit_didSet(this, v1 + 376, v2);
      }
    }
  }

  return this;
}

void *re::ecs2::Component::wasModified(void *this)
{
  v1 = this[2];
  if (v1)
  {
    v2 = this;
    v3 = (*(*this + 40))(this);
    if (*(v1 + 376) && *(v1 + 16))
    {
      realitykit_willSet(v1 + 16, v1 + 376, v3);
    }

    v4 = v2[2];
    this = (*(*v2 + 40))(v2);
    if (*(v4 + 376))
    {
      v5 = this;
      this = (v4 + 16);
      if (*(v4 + 16))
      {

        return realitykit_didSet(this, v4 + 376, v5);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::Component::adjustedIntroReleaseInfo@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(*a1 + 40))(a1);
  *a2 = 0;
  return result;
}

void *re::ecs2::allocInfo_Component(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_414, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_414))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6780, "Component");
    __cxa_guard_release(&_MergedGlobals_414);
  }

  return &unk_1EE1B6780;
}

void re::ecs2::initInfo_Component(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v9[0] = 0x6DAE480279BALL;
  v9[1] = "Component";
  if (v9[0])
  {
    if (v9[0])
    {
    }
  }

  *(this + 2) = v10;
  if ((atomic_load_explicit(&qword_1EE1B6778, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6778);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v7 = (*(*v6 + 32))(v6, 16, 8);
      *v7 = 2;
      *(v7 + 8) = 0;
      qword_1EE1B6770 = v7;
      __cxa_guard_release(&qword_1EE1B6778);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B6770;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs29ComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v8 = v10;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs29ComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_SceneComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_415, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_415))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6830, "SceneComponent");
    __cxa_guard_release(&_MergedGlobals_415);
  }

  return &unk_1EE1B6830;
}

void re::ecs2::initInfo_SceneComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x79292DCDFFD39BE2;
  v14[1] = "SceneComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1B6818, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6818);
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
      qword_1EE1B6820 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "requiresAnchoring";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B6828 = v12;
      __cxa_guard_release(&qword_1EE1B6818);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1B6820;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SceneComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SceneComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SceneComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SceneComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs214SceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::SceneComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01708;
  *(v3 + 25) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::SceneComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5D01708;
  *(v1 + 25) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs214SceneComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::Scene *re::ecs2::Scene::Scene(re::ecs2::Scene *this, const StringID *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5D01AE0;
  v4 = re::StringID::StringID((this + 32), a2);
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 124) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 25) = this;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 35) = 0;
  *(this + 68) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  re::make::shared::object<re::EventBus>(v4, this + 36);
  *(this + 37) = 0;
  *(this + 304) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0xFFFFFFFFLL;
  v6 = re::ecs2::EntityFactory::instance(v5);
  re::ecs2::EntityFactory::make(v6, 4uLL, &v14);
  v7 = *(this + 13);
  v8 = v14;
  *(this + 13) = v14;
  if (v7)
  {

    v8 = *(this + 13);
  }

  *(v8 + 3) = this;
  *(v8 + 76) |= 0x80u;
  re::ecs2::Entity::updateSwiftObjectOwnership(v8);
  re::ecs2::EntityComponentCollection::add((*(this + 13) + 48), re::ecs2::ComponentImpl<re::ecs2::SceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
  {
    re::ecs2::EntityComponentCollection::add((*(this + 13) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  }

  v9 = *(this + 13);
  v10 = re::DynamicString::format("%s_%llu", &v14, a2->var1, *(v9 + 312));
  if (v15)
  {
    v11 = *&v16[7];
  }

  else
  {
    v11 = v16;
  }

  v17 = 0;
  v18 = &str_67;
  v12 = re::StringID::operator=((v9 + 288), &v17);
  if (v17)
  {
    if (v17)
    {
    }
  }

  v17 = 0;
  v18 = &str_67;
  if (v14 && (v15 & 1) != 0)
  {
    (*(*v14 + 40))();
  }

  *(*(this + 13) + 304) |= 0x400u;
  return this;
}

re::ecs2::Scene *re::ecs2::Scene::Scene(re::ecs2::Scene *this, re::ecs2::Entity *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5D01AE0;
  v4 = *(a2 + 37);
  re::DynamicString::rfind(&v22, 95, v20);
  if (v20[0] == 1)
  {
    v6 = re::DynamicString::substr(&v22, 0, v21, &v17);
    if (v18)
    {
      v7 = *&v19[7];
    }

    else
    {
      v7 = v19;
    }

    *(this + 4) = 0;
    *(this + 5) = &str_67;
    if (v17 && (v18 & 1) != 0)
    {
      (*(*v17 + 40))();
    }
  }

  else
  {
    *(this + 4) = 0;
    *(this + 5) = &str_67;
  }

  if (v22 && (v23 & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 13) = a2;
  v8 = a2 + 8;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 14) = 0;
  *(this + 34) = 0;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 172) = 0u;
  *(this + 188) = 0x7FFFFFFFLL;
  *(this + 25) = this;
  *(this + 26) = 0;
  *(this + 27) = 0;
  *(this + 28) = 0;
  *(this + 58) = 0;
  *(this + 35) = 0;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 68) = 0;
  re::make::shared::object<re::EventBus>(v8, this + 36);
  *(this + 37) = 0;
  *(this + 304) = 0;
  *(this + 39) = 0;
  *(this + 320) = 0;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 47) = 0xFFFFFFFFLL;
  v9 = *(this + 13);
  *(v9 + 3) = this;
  re::ecs2::Entity::updateSwiftObjectOwnership(v9);
  v10 = *(this + 13);
  if (*(v10 + 72))
  {
    v11 = 0;
    do
    {
      v12 = re::ecs2::EntityComponentCollection::operator[](v10 + 48, v11);
      v13 = *v12;
      v14 = (*(**v12 + 40))(*v12);
      v15 = re::ecs2::SceneComponentTable::get((this + 200), v14);
      re::ecs2::SceneComponentCollectionBase::add(v15, v13);
      ++v11;
      v10 = *(this + 13);
    }

    while (v11 < *(v10 + 72));
  }

  return this;
}

void re::ecs2::Scene::~Scene(re::ecs2::Scene *this)
{
  v2 = *(this + 13);
  (*(*(v2 + 320) + 16))();
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(v2 + 328);
  v3 = *(this + 13);
  *(v3 + 3) = 0;
  re::ecs2::Entity::updateSwiftObjectOwnership(v3);
  re::ecs2::Entity::updateIsActive_Subtree(*(this + 13));
  re::ecs2::SceneComponentTable::clear(this + 200);
  *(this + 10) = 0;
  ++*(this + 22);
  v4 = *(this + 36);
  if (v4)
  {

    *(this + 36) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 248);
  re::DynamicArray<unsigned long>::deinit(this + 208);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 19);
  re::DynamicArray<unsigned long>::deinit(this + 112);
  v5 = *(this + 13);
  if (v5)
  {

    *(this + 13) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 64);
  re::StringID::destroyString((this + 32));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::Scene::~Scene(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::Entity *re::ecs2::Scene::setECSService(re::ecs2::Entity *a1, re::ecs2::Entity *a2)
{
  v88[5] = *MEMORY[0x1E69E9840];
  result = *(a1 + 7);
  if (result != a2)
  {
    if (result)
    {
      v5 = (*(*result + 32))(result);
      v6 = re::ServiceLocator::serviceOrNull<re::EventBus>(v5);
      if (v6)
      {
        v7 = v6;
        re::EventBus::unsubscribe(*(a1 + 36), *(a1 + 41), *(a1 + 42));
        *(a1 + 41) = 0;
        *(a1 + 42) = 0;
        re::EventBus::unsubscribe(*(a1 + 36), *(a1 + 43), *(a1 + 44));
        *(a1 + 43) = 0;
        *(a1 + 44) = 0;
        re::EventBus::unsubscribe(*(a1 + 36), *(a1 + 45), *(a1 + 46));
        *(a1 + 45) = 0;
        *(a1 + 46) = 0;
        v78 = a1;
        v8 = re::EventBus::getTypeId<RESceneWillRemoveEvent>();
        re::EventBus::publish(v7, a1, v8, &v78, 8uLL, 0);
      }

      v9 = *(a1 + 13);
      v10 = *(v9 + 344);
      if (v10)
      {
        v11 = *(v9 + 360);
        v12 = 8 * v10;
        do
        {
          if (*(*v11 + 304))
          {
            re::ecs2::Entity::sendDeactivateEvents(*v11, a1);
          }

          ++v11;
          v12 -= 8;
        }

        while (v12);
      }

      v82 = 0;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v81 = 0;
      v13 = *(a1 + 33);
      if (v13)
      {
        v14 = *(a1 + 35);
        v15 = &v14[v13];
        do
        {
          v16 = *v14;
          v80 = 0;
          ++v81;
          v17 = v16[48];
          if (v17)
          {
            v18 = v16[50];
            v19 = 8 * v17;
            do
            {
              v84 = *v18;
              if (*(v84[2] + 304))
              {
                re::DynamicArray<re::TransitionCondition *>::add(&v78, &v84);
              }

              ++v18;
              v19 -= 8;
            }

            while (v19);
          }

          (*(*v16 + 40))(v16, &v78);
          ++v14;
        }

        while (v14 != v15);
        v20 = *(a1 + 33);
        if (v20)
        {
          v21 = *(a1 + 35);
          v22 = 8 * v20;
          do
          {
            v23 = *v21++;
            (*(*v23 + 48))(v23, v23 + 368);
            v22 -= 8;
          }

          while (v22);
        }
      }

      v24 = (*(**(a1 + 7) + 304))(*(a1 + 7), *(a1 + 47));
      v25 = *(v24 + 144);
      if (v25)
      {
        v26 = *(v24 + 160);
        v27 = 8 * v25;
        do
        {
          v28 = *v26++;
          (*(*v28 + 56))(v28, a1);
          v27 -= 8;
        }

        while (v27);
      }

      v29 = (*(**(a1 + 7) + 32))(*(a1 + 7));
      v30 = *(a1 + 13);
      {
        v75 = v30;
        v30 = v75;
        if (v76)
        {
          re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0);
          v30 = v75;
        }
      }

      if ((*(*v29 + 16))(v29, re::introspect<re::EventBus>(BOOL)::info, v30 + 288))
      {
        v31 = (*(**(a1 + 7) + 32))(*(a1 + 7));
        v32 = re::ServiceLocator::service<re::ServiceRegistry>(v31);
        re::StringID::StringID(&v77, (*(a1 + 13) + 288));
        {
          re::introspect<re::EventBus>(BOOL)::info = re::introspect_EventBus(0);
        }

        v33 = re::introspect<re::EventBus>(BOOL)::info;
        re::StringID::StringID(&v83, &v77);
        v84 = v33;
        v34 = re::StringID::StringID(&v85, &v83);
        if (*&v83.var0)
        {
          if (*&v83.var0)
          {
          }
        }

        *&v83.var0 = 0;
        v83.var1 = &str_67;
        v35 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v32 + 16, &v84);
        if (v85)
        {
          if (v85)
          {
          }
        }

        if (*&v77.var0)
        {
          if (*&v77.var0)
          {
          }
        }

        *&v77.var0 = 0;
        v77.var1 = &str_67;
      }

      result = v78;
      if (v78 && v82)
      {
        result = (*(*v78 + 40))(v78, v82);
      }
    }

    *(a1 + 7) = a2;
    v36 = *(a1 + 13);
    v37 = *(v36 + 344);
    if (v37)
    {
      v38 = *(v36 + 360);
      v39 = 8 * v37;
      do
      {
        v40 = *v38++;
        result = re::ecs2::Entity::updateIsActive_Subtree(v40);
        v39 -= 8;
      }

      while (v39);
    }

    if (a2)
    {
      v41 = (*(*a2 + 32))(a2);
      v42 = re::ServiceLocator::serviceOrNull<re::ServiceRegistry>(v41);
      if (v42)
      {
        re::ServiceRegistry::add<re::EventBus>(v42, *(a1 + 36), (*(a1 + 13) + 288));
        v43 = *(a1 + 36);
        v45 = re::globalAllocators(v44)[2];
        v88[0] = &unk_1F5CEC148;
        v88[3] = v45;
        v88[4] = v88;
        *(a1 + 41) = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v43, v88, 0, 0);
        *(a1 + 42) = v46;
        v47 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v88);
        v48 = *(a1 + 36);
        v49 = re::globalAllocators(v47)[2];
        v87[0] = &unk_1F5CF4680;
        v87[3] = v49;
        v87[4] = v87;
        *(a1 + 43) = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v48, v87, 0, 0);
        *(a1 + 44) = v50;
        v51 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v87);
        v52 = *(a1 + 36);
        v53 = re::globalAllocators(v51)[2];
        v86[0] = &unk_1F5CFED20;
        v86[3] = v53;
        v86[4] = v86;
        *(a1 + 45) = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v52, v86, 0, 0);
        *(a1 + 46) = v54;
        re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v86);
      }

      v55 = (*(**(a1 + 7) + 304))(*(a1 + 7), *(a1 + 47));
      v56 = *(v55 + 144);
      if (v56)
      {
        v57 = *(v55 + 160);
        v58 = 8 * v56;
        do
        {
          v59 = *v57++;
          (*(*v59 + 48))(v59, a1);
          v58 -= 8;
        }

        while (v58);
      }

      v82 = 0;
      v79 = 0;
      v80 = 0;
      v78 = 0;
      v81 = 0;
      v60 = *(a1 + 33);
      if (v60)
      {
        v61 = *(a1 + 35);
        v62 = &v61[v60];
        do
        {
          v63 = *v61;
          (*(**v61 + 24))(*v61, *v61 + 368);
          v80 = 0;
          ++v81;
          v64 = v63[48];
          if (v64)
          {
            v65 = v63[50];
            v66 = 8 * v64;
            do
            {
              v84 = *v65;
              if (*(v84[2] + 304))
              {
                re::DynamicArray<re::TransitionCondition *>::add(&v78, &v84);
              }

              ++v65;
              v66 -= 8;
            }

            while (v66);
          }

          (*(*v63 + 32))(v63, &v78);
          ++v61;
        }

        while (v61 != v62);
      }

      v67 = *(a1 + 13);
      v68 = *(v67 + 344);
      if (v68)
      {
        v69 = *(v67 + 360);
        v70 = 8 * v68;
        do
        {
          if (*(*v69 + 304))
          {
            re::ecs2::Entity::sendActivateEvents(*v69, a1);
          }

          ++v69;
          v70 -= 8;
        }

        while (v70);
      }

      if (!(*(**(a1 + 7) + 184))(*(a1 + 7)) && re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)
      {
        re::ecs2::EntityComponentCollection::remove((*(a1 + 13) + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      }

      v71 = (*(**(a1 + 7) + 32))(*(a1 + 7));
      v72 = re::ServiceLocator::serviceOrNull<re::EventBus>(v71);
      if (v72)
      {
        v73 = v72;
        v84 = a1;
        Type = re::EventBus::getTypeId<RESceneDidAddEvent>();
        re::EventBus::publish(v73, a1, Type, &v84, 8uLL, 0);
      }

      result = v78;
      if (v78)
      {
        if (v82)
        {
          return (*(*v78 + 40))(v78, v82);
        }
      }
    }
  }

  return result;
}

uint64_t re::ecs2::Scene::addToAllEntitiesRecursively(uint64_t result, uint64_t a2)
{
  v49 = *MEMORY[0x1E69E9840];
  if (*(a2 + 16))
  {
    v3 = result;
    v4 = 0;
    v5 = 0xBF58476D1CE4E5B9;
    do
    {
      v6 = *(*(a2 + 32) + 8 * v4);
      v45 = v6;
      if (!*(v3 + 152) || (v7 = *(v6 + 312), v8 = 0x94D049BB133111EBLL * (((v7 ^ (v7 >> 30)) * v5) ^ (((v7 ^ (v7 >> 30)) * v5) >> 27)), v9 = v8 ^ (v8 >> 31), v10 = *(*(v3 + 160) + 4 * (v9 % *(v3 + 176))), v10 == 0x7FFFFFFF))
      {
LABEL_8:
        v12 = *(v3 + 128);
        re::DynamicArray<re::TransitionCondition *>::add((v3 + 112), &v45);
        v13 = v45;
        v44 = *(v45 + 312);
        memset(buf, 0, sizeof(buf));
        v14 = 0x94D049BB133111EBLL * (((v44 ^ (v44 >> 30)) * v5) ^ (((v44 ^ (v44 >> 30)) * v5) >> 27));
        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v3 + 152, &v44, v14 ^ (v14 >> 31), buf);
        if (*&buf[12] == 0x7FFFFFFF)
        {
          v16 = re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v3 + 152, *&buf[8], *buf);
          v16[1] = v44;
          v16[2] = v12;
          v16[3] = v13;
          ++*(v3 + 192);
        }

        goto LABEL_10;
      }

      v11 = *(v3 + 168);
      while (*(v11 + 40 * v10 + 8) != v7)
      {
        v10 = *(v11 + 40 * v10) & 0x7FFFFFFF;
        if (v10 == 0x7FFFFFFF)
        {
          goto LABEL_8;
        }
      }

      v28 = v5;
      v44 = v7;
      v29 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v3 + 152, &v44, v9, buf);
      v30 = v45;
      v31 = *(v3 + 168) + 40 * *&buf[12];
      v33 = *(v31 + 24);
      v32 = v31 + 24;
      log = *re::ecsCoreLogObjects(v29);
      v34 = os_log_type_enabled(log, OS_LOG_TYPE_DEFAULT);
      if (v30 == v33)
      {
        v5 = v28;
        if (v34)
        {
          v41 = *(v45 + 296);
          v42 = *(v45 + 312);
          *buf = 136315394;
          *&buf[4] = v41;
          *&buf[12] = 2048;
          *&buf[14] = v42;
          v38 = log;
          v39 = "Trying to add an entity to a scene twice: '%s' id=%llu";
          v40 = 22;
          goto LABEL_32;
        }
      }

      else
      {
        v5 = v28;
        if (v34)
        {
          v35 = *(v45 + 296);
          v36 = *(*v32 + 296);
          v37 = *(v45 + 312);
          *buf = 136315650;
          *&buf[4] = v35;
          *&buf[12] = 2080;
          *&buf[14] = v36;
          *&buf[22] = 2048;
          v47 = v37;
          v38 = log;
          v39 = "Trying to add second entity to a scene with same id: '%s' '%s' id=%llu";
          v40 = 32;
LABEL_32:
          _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, v39, buf, v40);
        }
      }

LABEL_10:
      if (*(v3 + 128) != *(v3 + 180))
      {
        re::internal::assertLog(4, v15, "assertion failure: '%s' (%s:line %i) ", "m_allEntitiesById.size() == m_allEntities.size()", "addToAllEntitiesRecursively", 402);
        _os_crash();
        __break(1u);
      }

      v17 = v45;
      *(v45 + 386) = 1;
      if (*(v17 + 72))
      {
        v18 = 0;
        do
        {
          v19 = re::ecs2::EntityComponentCollection::operator[](v17 + 48, v18);
          v20 = *v19;
          v21 = (*(**v19 + 40))(*v19);
          v22 = re::ecs2::SceneComponentTable::get((v3 + 200), v21);
          re::ecs2::SceneComponentCollectionBase::add(v22, v20);
          ++v18;
          v17 = v45;
          v23 = *(v45 + 72);
        }

        while (v18 < v23);
        *(v45 + 386) = 0;
        if (v23)
        {
          v24 = (*(v17 + 304) & 1) == 0;
        }

        else
        {
          v24 = 1;
        }

        if (!v24)
        {
          v25 = 0;
          do
          {
            v44 = *re::ecs2::EntityComponentCollection::operator[](v17 + 48, v25);
            v26 = (*(*v44 + 40))(v44);
            v27 = re::ecs2::SceneComponentTable::get((v3 + 200), v26);
            re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(buf, &v44);
            (*(*v27 + 32))(v27, buf);
            if (*buf)
            {
              if (v48)
              {
                (*(**buf + 40))();
              }
            }

            ++v25;
            v17 = v45;
          }

          while (v25 < *(v45 + 72));
        }
      }

      else
      {
        *(v17 + 386) = 0;
      }

      result = re::ecs2::Scene::addToAllEntitiesRecursively(v3, v17 + 328);
      ++v4;
    }

    while (v4 < *(a2 + 16));
  }

  return result;
}

double re::ecs2::Scene::sendAddAndActivateEvents(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 288);
  ++*(v3 + 12);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = v5 + 8 * v4;
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 304);
      v9 = *(a1 + 288);
      v29 = *v5;
      Type = re::EventBus::getTypeId<RESceneEntityDidAddEvent>();
      v10 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v9 + 3, &Type);
      if (v10 != -1)
      {
        v11 = *(*(v9 + 4) + 48 * v10 + 8);
        if (v11)
        {
          re::EventBus::EventInfo::addToBatch(v11, v9, v7, &v29, 8uLL, 0);
        }
      }

      if (v8)
      {
        v12 = *(a1 + 288);
        Type = v7;
        re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(v12, v7, &Type, 0);
      }

      v13 = v7[9];
      if (v13)
      {
        v14 = v7[11];
        v15 = 8 * v13;
        do
        {
          v16 = (*(**v14 + 40))();
          v17 = *(a1 + 288);
          Type = v7;
          v28 = v16;
          v29 = re::EventBus::getTypeId<REComponentDidAddEvent>();
          v18 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v17 + 3, &v29);
          if (v18 != -1)
          {
            v19 = *(*(v17 + 4) + 48 * v18 + 8);
            if (v19)
            {
              re::EventBus::EventInfo::addToBatch(v19, v17, v7, &Type, 0x10uLL, v16);
            }
          }

          v14 += 8;
          v15 -= 8;
        }

        while (v15);
      }

      if (v8)
      {
        v20 = v7[9];
        if (v20)
        {
          v21 = v7[11];
          v22 = 8 * v20;
          do
          {
            v23 = *v21++;
            v24 = (*(*v23 + 40))(v23);
            v25 = *(a1 + 288);
            Type = v7;
            v28 = v24;
            re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(v25, v7, &Type, v24);
            v22 -= 8;
          }

          while (v22);
        }
      }

      if (v7[43])
      {
        re::ecs2::Scene::sendAddAndActivateEvents(a1, v7 + 41);
      }

      v5 += 8;
    }

    while (v5 != v6);
    v3 = *(a1 + 288);
  }

  return re::EventBus::endBatch(v3, a2);
}

void re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<RESceneEntityDidActivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 8uLL, a4);
  }
}

void re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<REComponentDidActivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 0x10uLL, a4);
  }
}

uint64_t re::ecs2::Scene::removeFromAllEntities(uint64_t result, uint64_t a2)
{
  if ((*(result + 304) & 1) == 0)
  {
    v4 = result;
    re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(result, a2, 1);
    re::ecs2::Scene::sendDeactivateAndRemoveEvents(v4, a2);
    re::ecs2::Scene::removeFromAllEntitiesRecursively(v4, a2);

    return re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(v4, a2, 0);
  }

  return result;
}

uint64_t re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  if (v3)
  {
    v5 = result;
    v6 = *(a2 + 32);
    v7 = 8 * v3;
    do
    {
      v8 = *v6++;
      result = re::ecs2::Scene::flagEntitiesAsBeingRemovedRecursively(v5, v8 + 328, a3);
      *(v8 + 387) = a3;
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

double re::ecs2::Scene::sendDeactivateAndRemoveEvents(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 288);
  ++*(v3 + 12);
  v4 = *(a2 + 16);
  if (v4)
  {
    v5 = *(a2 + 32);
    v6 = v5 + 8 * v4;
    do
    {
      v7 = *v5;
      v8 = *(*v5 + 304);
      if (*(*v5 + 344))
      {
        re::ecs2::Scene::sendDeactivateAndRemoveEvents(a1, v7 + 41);
      }

      if (v8)
      {
        v9 = v7[9];
        if (v9)
        {
          v10 = v7[11];
          v11 = 8 * v9;
          do
          {
            v12 = *v10++;
            v13 = (*(*v12 + 40))(v12);
            v14 = *(a1 + 288);
            v26 = v7;
            v27 = v13;
            re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v14, v7, &v26, v13);
            v11 -= 8;
          }

          while (v11);
        }
      }

      v15 = v7[9];
      if (v15)
      {
        v16 = v7[11];
        v17 = 8 * v15;
        do
        {
          v18 = *v16++;
          v19 = (*(*v18 + 40))(v18);
          v20 = *(a1 + 288);
          v26 = v7;
          v27 = v19;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillRemoveEvent,void>(v20, v7, &v26, v19);
          v17 -= 8;
        }

        while (v17);
      }

      v21 = *(a1 + 288);
      if (v8)
      {
        v26 = v7;
        re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(v21, v7, &v26, 0);
        v21 = *(a1 + 288);
      }

      v25 = v7;
      v26 = re::EventBus::getTypeId<RESceneEntityWillRemoveEvent>();
      v22 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(v21 + 3, &v26);
      if (v22 != -1)
      {
        v23 = *(*(v21 + 4) + 48 * v22 + 8);
        if (v23)
        {
          re::EventBus::EventInfo::addToBatch(v23, v21, v7, &v25, 8uLL, 0);
        }
      }

      v5 += 8;
    }

    while (v5 != v6);
    v3 = *(a1 + 288);
  }

  return re::EventBus::endBatch(v3, a2);
}

uint64_t re::ecs2::Scene::removeFromAllEntitiesRecursively(uint64_t result, uint64_t a2)
{
  v64 = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {
    return result;
  }

  v2 = result;
  v3 = 0;
  v46 = a2;
  while (1)
  {
    v4 = *(*(a2 + 32) + 8 * v3);
    v5 = re::ecs2::Scene::removeFromAllEntitiesRecursively(v2, v4 + 328);
    v6 = *(v4 + 72);
    v50 = 0;
    v47[1] = 0;
    v48 = 0;
    v47[0] = 0;
    v49 = 0;
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v47, v6);
    ++v49;
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v8 = re::ecs2::EntityComponentCollection::operator[](v4 + 48, i);
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v47, v8);
      }
    }

    v9 = v50;
    v10 = v48;
    if (*(v4 + 304))
    {
      if (!v48)
      {
        *(v4 + 386) = 1;
        goto LABEL_19;
      }

      v11 = 8 * v48;
      do
      {
        *v52 = *v9;
        v12 = (*(**v52 + 40))(*v52);
        v6 = re::ecs2::SceneComponentTable::get((v2 + 200), v12);
        re::ScratchDynamicArray<re::ecs2::Component *>::ScratchDynamicArray(&v59, v52);
        (*(*v6 + 40))(v6, &v59);
        if (v59 && v61)
        {
          (*(*v59 + 40))();
        }

        ++v9;
        v11 -= 8;
      }

      while (v11);
      v9 = v50;
      v10 = v48;
    }

    *(v4 + 386) = 1;
    if (v10)
    {
      v13 = 8 * v10;
      do
      {
        v14 = *v9++;
        v6 = v14;
        v15 = (*(*v14 + 40))(v14);
        v16 = re::ecs2::SceneComponentTable::get((v2 + 200), v15);
        re::ecs2::SceneComponentCollectionBase::remove(v16, v14);
        v13 -= 8;
      }

      while (v13);
    }

LABEL_19:
    *(v4 + 386) = 0;
    re::ecs2::EntityComponentCollection::remove((v4 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v59 = *(v4 + 312);
    v17 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 152, &v59);
    if (v17)
    {
      v6 = *v17;
      *v52 = *(v4 + 312);
      v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (*v52 ^ (*v52 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (*v52 ^ (*v52 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v2 + 152, v52, v18 ^ (v18 >> 31), &v59);
      v19 = HIDWORD(v59);
      if (HIDWORD(v59) != 0x7FFFFFFF)
      {
        v20 = *(v2 + 168);
        v21 = *(v20 + 40 * HIDWORD(v59)) & 0x7FFFFFFF;
        if (v60 == 0x7FFFFFFF)
        {
          *(*(v2 + 160) + 4 * DWORD2(v59)) = v21;
          v19 = HIDWORD(v59);
        }

        else
        {
          *(v20 + 40 * v60) = *(v20 + 40 * v60) & 0x80000000 | v21;
        }

        *(v20 + 40 * v19) = *(v2 + 188);
        --*(v2 + 180);
        v22 = *(v2 + 192) + 1;
        *(v2 + 188) = v19;
        *(v2 + 192) = v22;
      }

      re::DynamicArray<re::internal::AnimationCompositionChainBase *>::removeAt(v2 + 112, v6);
      if (v6 < *(v2 + 128))
      {
        *&v59 = *(*(*(v2 + 144) + 8 * v6) + 312);
        v23 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v2 + 152, &v59);
        if (!v23)
        {
          goto LABEL_39;
        }

        *v23 = v6;
      }
    }

    v25 = *(v4 + 344);
    if (v25)
    {
      break;
    }

LABEL_36:
    result = re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v47);
    ++v3;
    a2 = v46;
    if (v3 >= *(v46 + 16))
    {
      return result;
    }
  }

  v26 = *(v4 + 360);
  v27 = &v26[v25];
  while (1)
  {
    if (*(v2 + 152))
    {
      v28 = *(*v26 + 312);
      v29 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28 ^ (v28 >> 30))) >> 27));
      v30 = *(*(v2 + 160) + 4 * ((v29 ^ (v29 >> 31)) % *(v2 + 176)));
      if (v30 != 0x7FFFFFFF)
      {
        break;
      }
    }

LABEL_35:
    if (++v26 == v27)
    {
      goto LABEL_36;
    }
  }

  v31 = *(v2 + 168);
  while (*(v31 + 40 * v30 + 8) != v28)
  {
    v30 = *(v31 + 40 * v30) & 0x7FFFFFFF;
    if (v30 == 0x7FFFFFFF)
    {
      goto LABEL_35;
    }
  }

  __CALLER_IS_PARENTING_AN_ENTITY_TO_AN_ENTITY_BEING_REMOVED__(v4, *v26);
LABEL_39:
  v32 = *(v2 + 128);
  if (v32 != *(v2 + 180))
  {
    re::internal::assertLog(4, v24, "assertion failure: '%s' (%s:line %i) m_allEntities and m_allEntitiesById somehow got out of sync", "m_allEntities.size() == m_allEntitiesById.size()", "removeFromAllEntitiesRecursively", 600);
    _os_crash();
    __break(1u);
LABEL_62:
    v51 = 0;
    v62 = 0u;
    v63 = 0u;
    v60 = 0u;
    v61 = 0u;
    v59 = 0u;
    v2 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v52 = 136315906;
    *&v52[4] = "operator[]";
    v53 = 1024;
    v54 = 789;
    v55 = 2048;
    v56 = v6;
    v57 = 2048;
    v58 = v32;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_63;
  }

  v33 = *(v2 + 184);
  if (v33)
  {
    v34 = 0;
    v35 = *(v2 + 168);
    while (1)
    {
      v36 = *v35;
      v35 += 10;
      if (v36 < 0)
      {
        break;
      }

      if (v33 == ++v34)
      {
        LODWORD(v34) = *(v2 + 184);
        break;
      }
    }
  }

  else
  {
    LODWORD(v34) = 0;
  }

  if (v34 == v33)
  {
LABEL_60:
    re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
    v41 = re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
    re::internal::assertLog(5, v42, "assertion failure: '%s' (%s:line %i) Could not find entityId %llu in m_allEntitiesById", "pair", "removeFromAllEntitiesRecursively", 609, *(*v41 + 312));
    _os_crash();
    __break(1u);
  }

  if (v32 <= v6)
  {
    goto LABEL_62;
  }

  v37 = *(v2 + 168);
  while (*(v37 + 40 * v34 + 24) != *(*(v2 + 144) + 8 * v6))
  {
    if (v33 <= v34 + 1)
    {
      v38 = v34 + 1;
    }

    else
    {
      v38 = *(v2 + 184);
    }

    while (v38 - 1 != v34)
    {
      LODWORD(v34) = v34 + 1;
      if ((*(v37 + 40 * v34) & 0x80000000) != 0)
      {
        goto LABEL_57;
      }
    }

    LODWORD(v34) = v38;
LABEL_57:
    if (v34 == v33)
    {
      goto LABEL_60;
    }
  }

  v39 = v37 + 40 * v34;
  v40 = *(v39 + 8);
  v32 = (v39 + 8);
  if (v40 == *(*re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6) + 312))
  {
    goto LABEL_60;
  }

LABEL_63:
  re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
  v43 = *v32;
  v44 = re::DynamicArray<re::ecs2::Entity *>::operator[](v2 + 112, v6);
  re::internal::assertLog(6, v45, "assertion failure: '%s' (%s:line %i) Entity was found in m_allEntitiesById but had EntityID %llu (not the expected %llu). This indicates a corruption of the EntityId", "entityId == m_allEntities[index]->id()", "removeFromAllEntitiesRecursively", 605, v43, *(*v44 + 312));
  result = _os_crash();
  __break(1u);
  return result;
}

void re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(re::EventBus *a1, void *a2, const void *a3, const void *a4)
{
  Event = re::EventBus::getEventInfo<RESceneEntityWillDeactivateEvent>(a1);
  if (Event)
  {

    re::EventBus::EventInfo::addToBatch(Event, a1, a2, a3, 8uLL, a4);
  }
}

uint64_t re::DynamicArray<re::ecs2::Entity *>::operator[](uint64_t a1, unint64_t a2)
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

uint64_t __CALLER_IS_PARENTING_AN_ENTITY_TO_AN_ENTITY_BEING_REMOVED__(unsigned __int8 *a1, uint64_t a2)
{
  v4 = *re::ecsCoreLogObjects(a1);
  v5 = os_log_type_enabled(v4, OS_LOG_TYPE_INFO);
  if (v5)
  {
    v6 = a1[387];
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a1;
    WORD6(buf[0]) = 1024;
    *(buf + 14) = v6;
    _os_log_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_INFO, "Parent (%p): isBeingRemovedFromScene=%d", buf, 0x12u);
  }

  v7 = *re::ecsCoreLogObjects(v5);
  if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
  {
    v8 = *(a2 + 387);
    LODWORD(buf[0]) = 134218240;
    *(buf + 4) = a2;
    WORD6(buf[0]) = 1024;
    *(buf + 14) = v8;
    _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_INFO, "Child (%p): isBeingRemovedFromScene=%d", buf, 0x12u);
  }

  v11 = 0;
  memset(buf, 0, sizeof(buf));
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  _os_log_send_and_compose_impl();
  result = _os_crash_msg();
  __break(1u);
  return result;
}

void re::ecs2::Scene::setRequiresAnchoring(re::ecs2::Scene *this, uint64_t a2)
{
  v4 = *(this + 48);
  if (v4 != a2)
  {
    v37 = v2;
    v38 = v3;
    v5 = a2;
    if (a2)
    {
      v7 = *(this + 36);
      ++*(v7 + 12);
      v8 = *(this + 13);
      v9 = *(v8 + 344);
      if (v9)
      {
        v10 = *(v8 + 360);
        v11 = 8 * v9;
        do
        {
          v12 = *v10++;
          re::ecs2::Entity::sendWillDeactivateEventsOnSceneRequiresAnchoringChange(v12, this, 0);
          v11 -= 8;
        }

        while (v11);
        v7 = *(this + 36);
      }

      re::EventBus::endBatch(v7, a2);
      LOBYTE(v4) = *(this + 48);
    }

    *(this + 49) = v4;
    *(this + 48) = v5;
    v13 = *(this + 13);
    v14 = *(v13 + 344);
    if (v14)
    {
      v15 = *(v13 + 360);
      v16 = 8 * v14;
      do
      {
        v17 = *v15++;
        re::ecs2::Entity::updateSceneDependentFlagsRecursively(v17);
        v16 -= 8;
      }

      while (v16);
    }

    if ((v5 & 1) == 0)
    {
      v18 = *(this + 36);
      ++*(v18 + 12);
      v19 = *(this + 13);
      v20 = *(v19 + 344);
      if (v20)
      {
        v21 = *(v19 + 360);
        v22 = 8 * v20;
        do
        {
          v23 = *v21++;
          re::ecs2::Entity::sendDidActivateEventsOnSceneRequiresAnchoringChange(v23, this, 0);
          v22 -= 8;
        }

        while (v22);
        v18 = *(this + 36);
      }

      re::EventBus::endBatch(v18, a2);
    }

    v36 = 0;
    v33[1] = 0;
    v34 = 0;
    v33[0] = 0;
    v35 = 0;
    v24 = *(this + 33);
    if (v24)
    {
      v25 = *(this + 35);
      v26 = &v25[v24];
      do
      {
        v27 = *v25;
        v28 = (*v25)[48];
        if (v28)
        {
          v29 = v27[50];
          v30 = 8 * v28;
          do
          {
            v32 = *v29;
            if ((*(*(v32 + 16) + 304) & 0x86) == 2)
            {
              re::DynamicArray<re::TransitionCondition *>::add(v33, &v32);
            }

            ++v29;
            v30 -= 8;
          }

          while (v30);
          if (v34)
          {
            v31 = *v27;
            if (*(this + 48) == 1)
            {
              (*(v31 + 40))(v27, v33);
            }

            else
            {
              (*(v31 + 32))(v27, v33);
            }

            v34 = 0;
            ++v35;
          }
        }

        ++v25;
      }

      while (v25 != v26);
      if (v33[0])
      {
        if (v36)
        {
          (*(*v33[0] + 40))();
        }
      }
    }
  }
}

uint64_t re::ecs2::Scene::sendAddAndActivateComponentEvents(re::ecs2::Scene *this, re::ecs2::Entity *a2, const re::ecs2::ComponentTypeBase *a3)
{
  v6 = *(this + 36);
  v11 = a2;
  v12 = a3;
  Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
  result = re::EventBus::publish(v6, a2, Type, &v11, 0x10uLL, a3);
  if (*(a2 + 304))
  {
    v9 = *(this + 36);
    v11 = a2;
    v12 = a3;
    v10 = re::EventBus::getTypeId<REComponentDidActivateEvent>();
    return re::EventBus::publish(v9, a2, v10, &v11, 0x10uLL, a3);
  }

  return result;
}

uint64_t re::ecs2::Scene::setHiddenFromSwiftAPI(uint64_t this, uint64_t a2)
{
  if ((*(this + 50) & 1) == 0)
  {
    if (*(this + 56))
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Must hide a scene before adding it to an ECS service.", "m_ecsService == nullptr", "setHiddenFromSwiftAPI", 720, v2, v3);
      this = _os_crash();
      __break(1u);
    }

    else
    {
      *(this + 50) = 1;
    }
  }

  return this;
}

void re::ecs2::Scene::deprecatedAddSystem(void *a1, __n128 *a2)
{
  v14 = *a2;
  re::DynamicArray<re::TypeID>::indexOf((a1 + 8), &v14, v15);
  if ((v15[0] & 1) == 0)
  {
    v4 = re::DynamicArray<re::TypeID>::add((a1 + 8), a2);
  }

  v5 = a1[7];
  if (v5)
  {
    v6 = (*(*v5 + 280))(a1[7], v4);
    v7 = a1[47];
    v9 = v6 == v7;
    v8 = (v7 ^ v6) & 0xFFFFFF00000000;
    v9 = v9 && v8 == 0;
    if (v9)
    {
      v15[0] = a1;
      v12 = a1 + 1;
      (*(*v5 + 120))(v5, v15);
      v13 = (*(*v5 + 256))(v5);
      (*(*v5 + 112))(v5, v15, v13);
      if (v15[0])
      {
      }
    }

    v10 = (*(*v5 + 40))(v5);
    v11 = re::ecs2::SystemRegistry::registerSystem(v10, a2);
    (*(*v5 + 48))(v5, v11, 0xFFFFFFFFLL, a1[47]);
  }
}

void *re::ecs2::allocInfo_Scene(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_416, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_416))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B68C8, "Scene");
    __cxa_guard_release(&_MergedGlobals_416);
  }

  return &unk_1EE1B68C8;
}

void re::ecs2::initInfo_Scene(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 159404248;
  v6[1] = "Scene";
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
  *(this + 11) = re::internal::defaultRetain<re::ecs2::Scene>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::Scene>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_Scene(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void anonymous namespace::enqueueECSLogicalUpdate(_anonymous_namespace_ *this, re::ecs2::Entity *a2)
{
  if (this && (*(this + 304) & 1) != 0)
  {
    do
    {
      v2 = this;
      this = *(this + 4);
    }

    while (this);
    v3 = *(v2 + 3);
    if (v3)
    {
      v4 = *(v3 + 56);
      v5 = *(v3 + 376);
      if (v4 && (v5 & 0xFFFFFF00000000) != 0)
      {
        v7 = (*(*v4 + 304))(v4, v5);
        v8 = *(v7 + 144);
        if (v8)
        {
          v9 = *(v7 + 160);
          v10 = 8 * v8;
          while (1)
          {
            v11 = *v9;
            if (!*(*v9 + 48))
            {
              break;
            }

            ++v9;
            v10 -= 8;
            if (!v10)
            {
              return;
            }
          }

          re::ecs2::System::queueToRun(v11, v5, 0.0);
        }
      }
    }
  }
}

uint64_t re::DynamicArray<re::TypeID>::indexOf@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = std::__find[abi:nn200100]<re::TypeID const*,re::TypeID const*,re::TypeID,std::__identity>(*(a1 + 32), *(a1 + 32) + 16 * *(a1 + 16), a2);
  v6 = *(a1 + 32);
  if (result == v6 + 16 * *(a1 + 16))
  {
    v7 = 0;
  }

  else
  {
    *(a3 + 8) = (result - v6) >> 4;
    v7 = 1;
  }

  *a3 = v7;
  return result;
}

uint64_t std::__find[abi:nn200100]<re::TypeID const*,re::TypeID const*,re::TypeID,std::__identity>(uint64_t result, uint64_t a2, uint64_t a3)
{
  for (; result != a2; result += 16)
  {
    if (*result == *a3 && *(result + 8) == *(a3 + 8) && *(result + 10) == HIWORD(*(a3 + 8)) && ((*(result + 12) ^ *(a3 + 12)) & 0xFFFFFF) == 0)
    {
      break;
    }
  }

  return result;
}

uint64_t re::EventBus::getEventInfo<RESceneEntityDidActivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RESceneEntityDidActivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getEventInfo<REComponentDidActivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<REComponentDidActivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

uint64_t re::EventBus::getEventInfo<RESceneEntityWillDeactivateEvent>(uint64_t a1)
{
  Type = re::EventBus::getTypeId<RESceneEntityWillDeactivateEvent>();
  v2 = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 24), &Type);
  if (v2 == -1)
  {
    return 0;
  }

  else
  {
    return *(*(a1 + 32) + 48 * v2 + 8);
  }
}

void *re::ecs2::allocInfo_CoordinateSpaceDefinitionComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_417, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_417))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6970, "CoordinateSpaceDefinitionComponent");
    __cxa_guard_release(&_MergedGlobals_417);
  }

  return &unk_1EE1B6970;
}

void re::ecs2::initInfo_CoordinateSpaceDefinitionComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x31B0986B663F7F78;
  v10[1] = "CoordinateSpaceDefinitionComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1B6968, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B6968);
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
      qword_1EE1B6960 = v8;
      __cxa_guard_release(&qword_1EE1B6968);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1B6960;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::CoordinateSpaceDefinitionComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs234CoordinateSpaceDefinitionComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::CoordinateSpaceDefinitionComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5D01870;
}

void re::internal::defaultConstructV2<re::ecs2::CoordinateSpaceDefinitionComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5D01870;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs234CoordinateSpaceDefinitionComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::SceneComponentTable::get(re::ecs2::SceneComponentTable *this, const re::ecs2::ComponentTypeBase *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 8);
  if (*(this + 3) <= v4)
  {
    re::DynamicArray<double>::resize(this + 8, v4 + 1);
  }

  else
  {
    result = *(*(this + 5) + 8 * v4);
    if (result)
    {
      return result;
    }
  }

  v6 = (*(*a2 + 40))(a2);
  v8[0] = v6;
  (*(*v6 + 56))(v6, *this);
  v7 = *(this + 3);
  if (v7 <= v4)
  {
    v8[1] = 0;
    v20 = 0u;
    v21 = 0u;
    v18 = 0u;
    v19 = 0u;
    v17 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v9 = 136315906;
    v10 = "operator[]";
    v11 = 1024;
    v12 = 789;
    v13 = 2048;
    v14 = v4;
    v15 = 2048;
    v16 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  *(*(this + 5) + 8 * v4) = v6;
  re::DynamicArray<re::TransitionCondition *>::add(this + 6, v8);
  return v8[0];
}

uint64_t re::ecs2::SceneComponentTable::clear(uint64_t this)
{
  v1 = this;
  v2 = *(this + 64);
  if (v2)
  {
    v3 = *(this + 80);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;
      v6 = (*(*v5 + 56))(v5, 0);
      v7 = re::globalAllocators(v6)[2];
      (**v5)(v5);
      this = (*(*v7 + 40))(v7, v5);
      v4 -= 8;
    }

    while (v4);
  }

  *(v1 + 24) = 0;
  ++*(v1 + 32);
  *(v1 + 64) = 0;
  ++*(v1 + 72);
  return this;
}

void *re::allocInfo_EventBus(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_418, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_418))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6A08, "EventBus");
    __cxa_guard_release(&_MergedGlobals_418);
  }

  return &unk_1EE1B6A08;
}

void re::initInfo_EventBus(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3A628DB734CLL;
  v6[1] = "EventBus";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xC800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_EventBus(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::EventBus>;
  *(this + 10) = re::internal::defaultDestruct<re::EventBus>;
  *(this + 11) = re::internal::defaultRetain<re::EventBus>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::EventBus>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::EventBus>;
  *(this + 14) = re::internal::defaultDestructV2<re::EventBus>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::ecs2::Entity *re::ecs2::Entity::Entity(re::ecs2::Entity *this, uint64_t a2, unint64_t a3)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v6 = &unk_1F5D01B28;
  v6[3] = 0;
  v6[4] = 0;
  v6[2] = 0;
  re::ecs2::EntityComponentCollection::EntityComponentCollection((v6 + 6), this, a3);
  *(this + 36) = 0;
  *(this + 37) = &str_67;
  *(this + 76) = 8202;
  *(this + 45) = 0;
  *(this + 46) = this;
  *(this + 42) = 0;
  *(this + 43) = 0;
  *(this + 41) = 0;
  *(this + 88) = 0;
  *(this + 39) = a2;
  *(this + 40) = &unk_1F5D01158;
  *(this + 47) = 0;
  *(this + 96) = 0;
  *(this + 49) = -1;
  return this;
}

void re::ecs2::Entity::~Entity(re::ecs2::Entity *this)
{
  v3 = *(this + 2);
  v2 = this + 16;
  *(v2 + 72) |= 0x800u;
  if (v3)
  {
    realitykit_deinitObservation(v2);
  }

  (*(*(this + 40) + 16))(this + 320);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear(this + 328);
  re::ecs2::EntityComponentCollection::clear(this + 6, v4);
  *(this + 76) = 0;
  re::Collection<re::SharedPtr<re::ecs2::Entity>>::~Collection(this + 40);
  re::StringID::destroyString((this + 288));
  re::ecs2::PackedTypeIDs::~PackedTypeIDs((this + 96));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(this + 56);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::Entity::~Entity(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::Entity::setSwiftObject(re::ecs2::Entity *this, CFTypeRef cf)
{
  v2 = *(this + 47);
  *(this + 47) = cf;
  if (v2 != cf)
  {
    if (cf && v2)
    {
      v4 = *re::ecsCoreLogObjects(this);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        *v7 = 0;
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, "Cannot assign Swift object to entity. Another Swift object is already set. New Swift object is ignored.", v7, 2u);
      }
    }

    else if ((*(this + 305) & 2) != 0)
    {
      if (v2)
      {
        CFRelease(v2);
      }

      if (cf)
      {

        CFRetain(cf);
      }
    }

    else
    {
      v5 = this + 8;
      if (cf)
      {

        v6 = v5;
      }

      else
      {
      }
    }
  }
}

void re::ecs2::Entity::updateSwiftObjectOwnership(re::ecs2::Entity *this)
{
  v2 = *(this + 76);
  if ((v2 & 0x80) != 0 && *(this + 3) || (v3 = *(this + 4)) != 0)
  {
    v4 = v2 | 0x200;
    LODWORD(v3) = 1;
  }

  else
  {
    v4 = v2 & 0xFFFFFDFF;
  }

  *(this + 76) = v4;
  v5 = *(this + 47);
  if (v5)
  {
    if ((v2 & 0x200) != 0)
    {
      v6 = v3;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      if (((v3 ^ 1 | ((v2 & 0x200) >> 9)) & 1) == 0)
      {
        CFRetain(v5);
      }
    }

    else
    {
      v7 = this + 8;
      v8 = *(this + 47);

      CFRelease(v8);
    }
  }
}

void re::ecs2::Entity::setParentInternal(re::ecs2::Entity *this, re::ecs2::Entity *a2, unint64_t a3)
{
  v6 = *(this + 4);
  if (v6 != a2)
  {
    v12 = this;
    v7 = this + 8;
    if (!a2)
    {
      v10 = dyld_program_sdk_at_least();
      v11 = *(this + 4);
      if (v10)
      {
        re::ecs2::EntityChildCollection::remove((v11 + 320), &v12);
      }

      else
      {
        re::Collection<re::SharedPtr<re::ecs2::Entity>>::removeStable(v11 + 320, &v12);
      }

      goto LABEL_13;
    }

LABEL_3:
    v8 = (a2 + 320);
    if (*(a2 + 43) <= a3)
    {
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v8, &v12);
    }

    else
    {
      re::Collection<re::SharedPtr<re::ecs2::Entity>>::insert(v8, a3, &v12);
    }

LABEL_13:
    if (v12)
    {
    }

    return;
  }

  if (a2 && *(v6 + 43) > a3 && *re::ecs2::EntityComponentCollection::operator[](v6 + 320, a3) != this)
  {
    v12 = this;
    v9 = this + 8;
    goto LABEL_3;
  }
}

uint64_t re::Collection<re::SharedPtr<re::ecs2::Entity>>::removeStable(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 + 40);
  v4 = *(a1 + 24);
  if (v4)
  {
    v5 = 8 * v4;
    for (i = *(a1 + 40); *i != *a2; ++i)
    {
      v5 -= 8;
      if (!v5)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a1 + 40);
  }

  if (i == (v3 + 8 * v4))
  {
    return 0;
  }

  v7 = (i - v3) >> 3;
  v8 = *(a1 + 32);
  v9 = *a2;
  v17 = v9;
  if (v9)
  {
    v10 = (v9 + 8);
  }

  (*(*a1 + 32))(a1, v7, &v17);
  if (v8 == *(a1 + 32))
  {
    goto LABEL_20;
  }

  v11 = *(a1 + 40);
  v12 = *(a1 + 24);
  if (v12)
  {
    v13 = 8 * v12;
    v14 = *(a1 + 40);
    while (*v14 != v17)
    {
      ++v14;
      v13 -= 8;
      if (!v13)
      {
        goto LABEL_21;
      }
    }
  }

  else
  {
    v14 = *(a1 + 40);
  }

  if (v14 != (v11 + 8 * v12))
  {
    v7 = (v14 - v11) >> 3;
LABEL_20:
    re::DynamicArray<re::SharedPtr<re::ecs2::System>>::removeStableAt(a1 + 8, v7);
    (*(*a1 + 56))(a1, v7, &v17);
    v15 = 1;
    goto LABEL_22;
  }

LABEL_21:
  v15 = 0;
LABEL_22:
  if (v17)
  {
  }

  return v15;
}

void re::Collection<re::SharedPtr<re::ecs2::Entity>>::insert(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v19[0] = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  v7 = (*(*a1 + 24))(a1, a2, v19);
  v8 = *(a1 + 24);
  if (v8 >= a2)
  {
    v10 = v8 + 1;
    if (v8 + 1 <= a2)
    {
      v19[1] = 0;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v20 = 136315906;
      v21 = "insert";
      v22 = 1024;
      v23 = 855;
      v24 = 2048;
      v25 = a2;
      v26 = 2048;
      v27 = v10;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v8 >= *(a1 + 16))
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((a1 + 8), v8 + 1);
      v8 = *(a1 + 24);
    }

    v11 = *(a1 + 40);
    v12 = (v11 + 8 * v8);
    if (v8 <= a2)
    {
      v17 = v19[0];
      *v12 = v19[0];
      if (v17)
      {
        v18 = (v17 + 8);
      }
    }

    else
    {
      *v12 = *(v12 - 1);
      *(v12 - 1) = 0;
      if (v12 - 1 != (v11 + 8 * a2))
      {
        v13 = *(v12 - 1);
        v14 = v12 - 2;
        v15 = 8 * a2 - 8 * v8 + 8;
        do
        {
          v16 = *v14;
          *v14 = v13;
          v14[1] = v16;
          --v14;
          v15 += 8;
        }

        while (v15);
        v11 = *(a1 + 40);
      }

      re::SharedPtr<re::SkeletalPoseJointDefinition>::reset((v11 + 8 * a2), v19[0]);
    }

    ++*(a1 + 24);
    ++*(a1 + 32);
    (*(*a1 + 48))(a1, a2, v19);
  }

  else
  {
    v9 = *re::foundationCoreLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "void re::Collection<re::SharedPtr<re::ecs2::Entity>>::insert(size_t, const T &) [T = re::SharedPtr<re::ecs2::Entity>]";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a2;
      _os_log_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_DEFAULT, "%s: index %zu invalid after willInsert(), not inserting", buf, 0x16u);
    }
  }

  if (v19[0])
  {
  }
}

void re::ecs2::Entity::removeFromSceneOrParent(re::ecs2::Entity *this)
{
  if ((*(this + 304) & 0x80) != 0)
  {
    v2 = *(this + 3);
    if (v2)
    {
      v3 = *(v2 + 56);
      if (v3)
      {
        v5 = *(this + 3);
        v4 = (v2 + 8);
        (*(*v3 + 120))(v3, &v5);
        if (v5)
        {
        }
      }
    }
  }

  if (*(this + 4))
  {
    re::ecs2::Entity::setParentInternal(this, 0, 0xFFFFFFFFFFFFFFFFLL);
  }
}

_anonymous_namespace_ *re::ecs2::Entity::findInHierarchyByName(_anonymous_namespace_ *a1, StringID *a2)
{
  v3 = a1;
  if (!re::StringID::operator==(a1 + 36, a2))
  {
    v4 = *(v3 + 43);
    if (v4)
    {
      v5 = *(v3 + 45);
      v6 = 8 * v4;
      while (1)
      {
        v7 = *v5;
        re::StringID::StringID(&v10, a2);
        v8 = re::ecs2::Entity::findInHierarchyByName(v7, &v10);
        v3 = v8;
        if (v10)
        {
          if (v10)
          {
          }
        }

        v10 = 0;
        v11 = &str_67;
        if (v3)
        {
          break;
        }

        ++v5;
        v6 -= 8;
        if (!v6)
        {
          return 0;
        }
      }
    }

    else
    {
      return 0;
    }
  }

  return v3;
}

void re::ecs2::Entity::setSelfEnabled(re::ecs2::Entity *this, int a2)
{
  v4 = *(this + 76);
  if (*(this + 47))
  {
    v5 = this + 16;
    if (*(this + 2))
    {
      realitykit_willSetWithString(v5, this + 376, "Entity.isEnabled");
    }
  }

  re::ecs2::Entity::setSelfEnabledForFlag(this, a2, 8);
  if (*(this + 47) && *(this + 2))
  {
    realitykit_didSetWithString(this + 16, this + 376, "Entity.isEnabled");
  }

  if ((v4 & 1) != (*(this + 76) & 1) && re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyTracing(0, 0))
  {
    re::packCharArrayToUInt64ForAriadne(*(this + 37), 0);

    kdebug_trace();
  }
}

double re::ecs2::Entity::setSelfEnabledForFlag(re::ecs2::Entity *this, int a2, int a3)
{
  v3 = *(this + 76);
  if (((a3 & ~v3) == 0) != a2)
  {
    v7 = *(this + 76);
    v8 = this;
    do
    {
      v9 = v8;
      v8 = *(v8 + 4);
    }

    while (v8);
    v10 = *(v9 + 3);
    if ((v3 & 1) != 0 && (a2 & 1) == 0)
    {
      re::ecs2::Entity::sendDeactivateEvents(this, *(v9 + 3));
      v7 = *(this + 76);
    }

    v11 = v3 & 1;
    v12 = v7 & ~a3;
    v13 = v7 | a3;
    if (!a2)
    {
      v13 = v12;
    }

    *(this + 76) = v13;
    re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(this);
    re::ecs2::Entity::updateIsActive_Self(this);
    v15 = *(this + 76);
    if (v11 != (v15 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v10);
      if (v15)
      {

        return re::ecs2::Entity::sendActivateEvents(this, v10);
      }
    }
  }

  return result;
}

double re::ecs2::Entity::sendDeactivateEvents(re::ecs2::Entity *this, re::ecs2::Scene *a2)
{
  if (a2 && (*(this + 304) & 1) != 0 && (*(this + 387) & 1) == 0)
  {
    v4 = *(a2 + 36);
    ++*(v4 + 12);
    v5 = *(this + 43);
    if (v5)
    {
      v6 = *(this + 45);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        re::ecs2::Entity::sendDeactivateEvents(v8, a2);
        v7 -= 8;
      }

      while (v7);
      v4 = *(a2 + 36);
    }

    v17[0] = this;
    re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(v4, this, v17, 0);
    v10 = *(this + 9);
    if (v10)
    {
      v11 = *(this + 11);
      v12 = 8 * v10;
      do
      {
        v13 = *v11++;
        v14 = (*(*v13 + 40))(v13);
        v15 = *(a2 + 36);
        v17[0] = this;
        v17[1] = v14;
        re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v15, this, v17, v14);
        v12 -= 8;
      }

      while (v12);
    }

    return re::EventBus::endBatch(*(a2 + 36), v9);
  }

  return result;
}

uint64_t re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(uint64_t this)
{
  v1 = *(this + 304);
  if ((~v1 & 0x2008) == 0 && ((v2 = *(this + 32)) == 0 || (v3 = *(v2 + 304), (v3 & 0x80) != 0) || (v3 & 2) != 0))
  {
    v4 = v1 | 2;
  }

  else
  {
    v4 = v1 & 0xFFFFFFFD;
  }

  *(this + 304) = v4;
  if (((v1 >> 1) & 1) != (v4 & 2) >> 1)
  {
    v5 = *(this + 344);
    if (v5)
    {
      v6 = *(this + 360);
      v7 = 8 * v5;
      v8 = (v4 >> 1) & 1;
      do
      {
        this = *v6;
        if ((~*(*v6 + 304) & 0x2008) == 0)
        {
          this = re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(this, v8);
        }

        v6 += 8;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return this;
}

uint64_t re::ecs2::Entity::updateIsActive_Self(uint64_t this)
{
  v1 = *(this + 304);
  if ((v1 & 0x42) != 2 || (v1 & 0x14) == 16)
  {
    goto LABEL_10;
  }

  v3 = *(this + 32);
  if (!v3 || (*(v3 + 304) & 0x81) != 1)
  {
    v4 = *(this + 24);
    if (v4)
    {
      if (!*(v4 + 56))
      {
        v5 = v1 & 0xFFFFFFBE;
        goto LABEL_11;
      }

      goto LABEL_9;
    }

LABEL_10:
    v5 = v1 & 0xFFFFFFFE;
    goto LABEL_11;
  }

LABEL_9:
  v5 = v1 | 1;
LABEL_11:
  *(this + 304) = v5;
  return this;
}

uint64_t re::ecs2::Entity::onActivationChanged(re *a1, uint64_t a2)
{
  v3 = a1;
  v31[11] = *MEMORY[0x1E69E9840];
  v4 = re::globalAllocators(a1)[2];
  v22 = 0;
  v19[1] = 0;
  v20 = 0;
  v21 = 0;
  v19[0] = v4;
  re::DynamicArray<float *>::setCapacity(v19, 0x10uLL);
  ++v21;
  v18 = 0;
  v15[1] = 0;
  v16 = 0;
  v17 = 0;
  v15[0] = v4;
  re::DynamicArray<float *>::setCapacity(v15, 1uLL);
  ++v17;
  v5 = *(v3 + 76);
  do
  {
    if (a2)
    {
      v6 = *(v3 + 9);
      if (v6)
      {
        for (i = 0; i < v6; ++i)
        {
          if (v6 <= i)
          {
            v23 = 0;
            memset(v31, 0, 80);
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            *v24 = 136315906;
            *&v24[4] = "operator[]";
            v25 = 1024;
            v26 = 797;
            v27 = 2048;
            v28 = i;
            v29 = 2048;
            v30 = v6;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *v24 = *(*(v3 + 11) + 8 * i);
          v8 = (*(**v24 + 40))(*v24);
          v9 = re::ecs2::SceneComponentTable::get((a2 + 200), v8);
          v31[0] = *v24;
          if (re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v9 + 51, v31) != -1)
          {
            v16 = 0;
            ++v17;
            re::DynamicArray<re::TransitionCondition *>::add(v15, v24);
            v10 = *v9;
            if (v5)
            {
              (*(v10 + 32))(v9, v15);
            }

            else
            {
              (*(v10 + 40))(v9, v15);
            }
          }

          v6 = *(v3 + 9);
        }
      }
    }

    if (*(v3 + 43) >= 1)
    {
      v11 = (*(v3 + 43) & 0x7FFFFFFFLL) + 1;
      do
      {
        v12 = re::ecs2::EntityComponentCollection::operator[](v3 + 320, v11 - 2);
        v13 = *v12;
        if ((~*(*v12 + 304) & 0x2008) == 0 && ((*(*v12 + 304) & 0x120) != 0x100 || (*(a2 + 48) & 1) == 0))
        {
          re::ecs2::Entity::updateIsActive_Self(*v12);
          v31[0] = v13;
          re::DynamicArray<re::TransitionCondition *>::add(v19, v31);
        }

        --v11;
      }

      while (v11 > 1);
    }

    if (!v20)
    {
      break;
    }

    v3 = *(v22 + 8 * v20-- - 8);
    ++v21;
  }

  while (v3);
  if (v15[0] && v18)
  {
    (*(*v15[0] + 40))();
  }

  result = v19[0];
  if (v19[0])
  {
    if (v22)
    {
      return (*(*v19[0] + 40))();
    }
  }

  return result;
}

double re::ecs2::Entity::sendActivateEvents(re::ecs2::Entity *this, re::ecs2::Scene *a2)
{
  if (a2 && (*(this + 304) & 1) != 0)
  {
    v4 = *(a2 + 36);
    ++*(v4 + 12);
    v5 = *(this + 9);
    if (v5)
    {
      v6 = *(this + 11);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        v9 = (*(*v8 + 40))(v8);
        v10 = *(a2 + 36);
        v17[0] = this;
        v17[1] = v9;
        re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(v10, this, v17, v9);
        v7 -= 8;
      }

      while (v7);
      v4 = *(a2 + 36);
    }

    v17[0] = this;
    re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(v4, this, v17, 0);
    v12 = *(this + 43);
    if (v12)
    {
      v13 = *(this + 45);
      v14 = 8 * v12;
      do
      {
        v15 = *v13++;
        re::ecs2::Entity::sendActivateEvents(v15, a2);
        v14 -= 8;
      }

      while (v14);
    }

    return re::EventBus::endBatch(*(a2 + 36), v11);
  }

  return result;
}

uint64_t re::ecs2::Entity::setSelfAnchored_Before(re::ecs2::Entity *this, char a2)
{
  if (a2)
  {
    return 0;
  }

  v2 = *(this + 76);
  if ((~v2 & 0x31) != 0)
  {
    return 0;
  }

  if (*(this + 387))
  {
    return 1;
  }

  if ((v2 & 0x100) == 0)
  {
    v4 = *(this + 4);
    if (v4)
    {
      if ((*(v4 + 304) & 0x84) == 4)
      {
        return 0;
      }
    }
  }

  v5 = this;
  do
  {
    v6 = v5;
    v5 = *(v5 + 4);
  }

  while (v5);
  re::ecs2::Entity::sendDeactivateEvents(this, *(v6 + 3));
  return 1;
}

double re::ecs2::Entity::setSelfAnchored_After(re::ecs2::Entity *this, int a2, const re::ecs2::ComponentTypeBase *a3)
{
  v3 = *(this + 76);
  if (a2 != (v3 & 0x20) >> 5)
  {
    v5 = a2;
    v7 = this;
    do
    {
      v8 = v7;
      v7 = *(v7 + 4);
    }

    while (v7);
    v9 = *(v8 + 3);
    if (a2)
    {
      v10 = 32;
    }

    else
    {
      v10 = 0;
    }

    *(this + 76) = v3 & 0xFFFFFFDF | v10;
    re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this);
    re::ecs2::Entity::updateIsActive_Self(this);
    v12 = *(this + 76);
    if (v9)
    {
      if (a3)
      {
        v13 = *(v9 + 36);
        v19 = this;
        v20 = a3;
        Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
        re::EventBus::publish(v13, this, Type, &v19, 0x10uLL, a3);
        if (v3 & 1) != 0 && (v12)
        {
          v15 = *(v9 + 36);
          v19 = this;
          v20 = a3;
          v16 = re::EventBus::getTypeId<REComponentDidActivateEvent>();
          re::EventBus::publish(v15, this, v16, &v19, 0x10uLL, a3);
        }
      }

      v17 = *(v9 + 36);
      v19 = this;
      LOBYTE(v20) = v5;
      v18 = re::EventBus::getTypeId<RESceneAnchoredStateChangedEvent>();
      re::EventBus::publish(v17, this, v18, &v19, 0x10uLL, 0);
    }

    if ((v3 & 1) != (v12 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v9);
      if (v12)
      {
        return re::ecs2::Entity::sendActivateEvents(this, v9);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(uint64_t this)
{
  v1 = *(this + 304);
  if ((v1 & 0x20) == 0)
  {
    if ((v1 & 0x100) != 0 || (v2 = *(this + 32)) == 0 || (v3 = *(v2 + 304), (v3 & 0x80) != 0))
    {
      v4 = -37;
      goto LABEL_9;
    }

    if ((v3 & 4) == 0)
    {
      v4 = -293;
LABEL_9:
      v5 = v1 & v4;
      goto LABEL_10;
    }
  }

  v5 = v1 | 4;
LABEL_10:
  *(this + 304) = v5;
  if (((v1 >> 2) & 1) != (v5 & 4) >> 2)
  {
    v6 = *(this + 344);
    if (v6)
    {
      v7 = *(this + 360);
      v8 = 8 * v6;
      v9 = (v5 >> 2) & 1;
      do
      {
        this = *v7;
        if ((*(*v7 + 304) & 0x120) == 0)
        {
          this = re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this, v9);
        }

        v7 += 8;
        v8 -= 8;
      }

      while (v8);
    }
  }

  return this;
}

double re::ecs2::Entity::setSelfRequiresAnchoring(re::ecs2::Entity *this, int a2)
{
  if (a2 && (*(this + 76) & 0x131) == 0x11)
  {
    v4 = this;
    do
    {
      v5 = v4;
      v4 = *(v4 + 4);
    }

    while (v4);
    re::ecs2::Entity::sendDeactivateEvents(this, *(v5 + 3));
  }

  return re::ecs2::Entity::setSelfRequiresAnchoring_After(this, a2, 0);
}

double re::ecs2::Entity::setSelfRequiresAnchoring_After(re::ecs2::Entity *this, int a2, const re::ecs2::ComponentTypeBase *a3)
{
  v3 = *(this + 76);
  if (a2 != (v3 & 0x100) >> 8)
  {
    v6 = this;
    do
    {
      v7 = v6;
      v6 = *(v6 + 4);
    }

    while (v6);
    v8 = *(v7 + 3);
    if (a2)
    {
      v9 = 256;
    }

    else
    {
      v9 = 0;
    }

    *(this + 76) = v3 & 0xFFFFFEFF | v9;
    re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this);
    re::ecs2::Entity::updateIsActive_Self(this);
    if (a3 && v8)
    {
      v11 = *(v8 + 36);
      v14[0] = this;
      v14[1] = a3;
      Type = re::EventBus::getTypeId<REComponentDidAddEvent>();
      re::EventBus::publish(v11, this, Type, v14, 0x10uLL, a3);
    }

    v13 = *(this + 76);
    if ((v3 & 1) != (v13 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v8);
      if (v13)
      {
        return re::ecs2::Entity::sendActivateEvents(this, v8);
      }
    }
  }

  return result;
}

double re::ecs2::Entity::setGhosted(re::ecs2::Entity *this, int a2)
{
  v2 = *(this + 76);
  if ((v2 & 0x80) == 0 && ((((*(this + 76) & 0x40) == 0) ^ a2) & 1) == 0)
  {
    v5 = *(this + 76);
    v6 = this;
    do
    {
      v7 = v6;
      v6 = *(v6 + 4);
    }

    while (v6);
    v8 = *(v7 + 3);
    if ((v2 & 1) != 0 && a2)
    {
      re::ecs2::Entity::sendDeactivateEvents(this, *(v7 + 3));
      v5 = *(this + 76);
    }

    v9 = v2 & 1;
    v10 = v5 & 0xFFFFFFBF;
    if (a2)
    {
      v11 = 64;
    }

    else
    {
      v11 = 0;
    }

    *(this + 76) = v10 | v11;
    re::ecs2::Entity::updateIsActive_Self(this);
    v13 = *(this + 76);
    if (v9 != (v13 & 1))
    {
      re::ecs2::Entity::onActivationChanged(this, v8);
      if (v13)
      {

        return re::ecs2::Entity::sendActivateEvents(this, v8);
      }
    }
  }

  return result;
}

uint64_t re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(uint64_t this, _BOOL4 a2)
{
  if (a2)
  {
    v2 = 16;
  }

  else
  {
    v2 = 0;
  }

  *(this + 304) = *(this + 304) & 0xFFFFFFEF | v2;
  v3 = *(this + 344);
  if (v3)
  {
    v4 = a2;
    v5 = *(this + 360);
    v6 = 8 * v3;
    do
    {
      v7 = *v5++;
      this = re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(v7, v4);
      v6 -= 8;
    }

    while (v6);
  }

  return this;
}

uint64_t re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(uint64_t this, int a2)
{
  v2 = *(this + 304);
  v3 = (~v2 & 0x2008) == 0;
  v4 = v3 & a2;
  v5 = v2 & 0xFFFFFFFD;
  if ((v3 & a2) != 0)
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(this + 304) = v6 | v5;
  v7 = *(this + 344);
  if (v7)
  {
    v8 = *(this + 360);
    v9 = 8 * v7;
    do
    {
      this = *v8;
      if ((~*(*v8 + 304) & 0x2008) == 0)
      {
        this = re::ecs2::Entity::updateIsEnabledInHierarchy_Subtree(this, v4 & 1);
      }

      v8 += 8;
      v9 -= 8;
    }

    while (v9);
  }

  return this;
}

uint64_t re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(uint64_t this, int a2)
{
  v2 = *(this + 304);
  if ((v2 & 0x20) != 0 || (v3 = 0, v4 = v2 & 0xFFFFFFDB, (v2 & 0x100) == 0) && a2)
  {
    v4 = v2 | 4;
    v3 = 1;
  }

  *(this + 304) = v4;
  v5 = *(this + 344);
  if (v5)
  {
    v6 = *(this + 360);
    v7 = 8 * v5;
    do
    {
      this = *v6;
      if ((*(*v6 + 304) & 0x20) == 0)
      {
        this = re::ecs2::Entity::updateIsAnchoredInHierarchy_Subtree(this, v3);
      }

      v6 += 8;
      v7 -= 8;
    }

    while (v7);
  }

  return this;
}

re::ecs2::Entity *re::ecs2::Entity::updateIsActive_Subtree(re::ecs2::Entity *this)
{
  v2 = *(this + 76) & 1;
  result = re::ecs2::Entity::updateIsActive_Self(this);
  if (v2 != (*(this + 304) & 1))
  {
    v4 = *(this + 43);
    if (v4)
    {
      v5 = *(this + 45);
      v6 = 8 * v4;
      do
      {
        result = *v5;
        if ((~*(*v5 + 76) & 0x2008) == 0)
        {
          result = re::ecs2::Entity::updateIsActive_Subtree(result);
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }
  }

  return result;
}

re::ecs2::Entity *re::ecs2::Entity::updateSceneDependentFlagsRecursively(re::ecs2::Entity ***this)
{
  result = re::ecs2::Entity::updateState<(re::ecs2::Entity::StateFlags)17>(this);
  v3 = this[43];
  if (v3)
  {
    v4 = this[45];
    v5 = 8 * v3;
    do
    {
      v6 = *v4++;
      result = re::ecs2::Entity::updateSceneDependentFlagsRecursively(v6);
      v5 -= 8;
    }

    while (v5);
  }

  return result;
}

re::ecs2::Entity *re::ecs2::Entity::updateState<(re::ecs2::Entity::StateFlags)17>(re::ecs2::Entity *this)
{
  v2 = this;
  do
  {
    v3 = v2;
    v2 = *(v2 + 4);
  }

  while (v2);
  v4 = *(v3 + 3);
  if (v4)
  {
    LOBYTE(v4) = *(v4 + 48);
  }

  re::ecs2::Entity::updateSceneRequiresAnchoring_Subtree(this, v4 & 1);

  return re::ecs2::Entity::updateIsActive_Subtree(this);
}

void re::ecs2::Entity::sendDidActivateEventsOnSceneRequiresAnchoringChange(re::ecs2::Entity *this, re::ecs2::Scene *a2, _BOOL4 a3)
{
  v3 = *(this + 76);
  if (v3)
  {
    if ((v3 & 4) == 0)
    {
      a3 = 1;
    }

    if (a3)
    {
      v7 = *(this + 9);
      if (v7)
      {
        v8 = *(this + 11);
        v9 = 8 * v7;
        do
        {
          v10 = *v8++;
          v11 = (*(*v10 + 40))(v10);
          v12 = *(a2 + 36);
          v18[0] = this;
          v18[1] = v11;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentDidActivateEvent,void>(v12, this, v18, v11);
          v9 -= 8;
        }

        while (v9);
      }

      v13 = *(a2 + 36);
      v18[0] = this;
      re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityDidActivateEvent,void>(v13, this, v18, 0);
    }

    v14 = *(this + 43);
    if (v14)
    {
      v15 = *(this + 45);
      v16 = 8 * v14;
      do
      {
        v17 = *v15++;
        re::ecs2::Entity::sendDidActivateEventsOnSceneRequiresAnchoringChange(v17, a2, a3);
        v16 -= 8;
      }

      while (v16);
    }
  }
}

void re::ecs2::Entity::sendWillDeactivateEventsOnSceneRequiresAnchoringChange(re::ecs2::Entity *this, re::EventBus **a2, BOOL a3)
{
  v3 = *(this + 76);
  if (v3)
  {
    if ((v3 & 4) == 0)
    {
      a3 = 1;
    }

    v7 = *(this + 43);
    if (v7)
    {
      v8 = *(this + 45);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        re::ecs2::Entity::sendWillDeactivateEventsOnSceneRequiresAnchoringChange(v10, a2, a3);
        v9 -= 8;
      }

      while (v9);
    }

    if (a3)
    {
      v11 = a2[36];
      v18[0] = this;
      re::EventBus::addToBatch<re::ecs2::Entity,RESceneEntityWillDeactivateEvent,void>(v11, this, v18, 0);
      v12 = *(this + 9);
      if (v12)
      {
        v13 = *(this + 11);
        v14 = 8 * v12;
        do
        {
          v15 = *v13++;
          v16 = (*(*v15 + 40))(v15);
          v17 = a2[36];
          v18[0] = this;
          v18[1] = v16;
          re::EventBus::addToBatch<re::ecs2::Entity,REComponentWillDeactivateEvent,void>(v17, this, v18, v16);
          v14 -= 8;
        }

        while (v14);
      }
    }
  }
}

double re::ecs2::Entity::updateAfterComponentDeserialized(re::ecs2::Entity *this, const re::ecs2::Component *a2)
{
  v4 = (*(*a2 + 40))(a2);
  v5 = (*(*v4 + 48))(v4);
  v6 = &unk_1EE187000;
  do
  {
    {
      v23 = v5;
      v6 = &unk_1EE187000;
      v11 = v10;
      v5 = v23;
      if (v11)
      {
        re::introspect<re::ecs2::AnchorComponent>(BOOL)::info = re::ecs2::introspect_AnchorComponent(0);
        v6 = &unk_1EE187000;
        v5 = v23;
      }
    }

    if (v5 == v6[151])
    {
      if (*(a2 + 176) == 1 && *(a2 + 177) != 1)
      {
        v21 = 0;
      }

      else
      {
        v21 = *(a2 + 178) ^ 1;
      }

      re::ecs2::Entity::setSelfAnchored_Before(this, v21 & 1);

      return re::ecs2::Entity::setSelfAnchored_After(this, v21 & 1, 0);
    }

    v7 = *(v5 + 56);
    if (!v7)
    {
      break;
    }

    v8 = *(v5 + 64);
    while (1)
    {
      v9 = *v8;
      if (**v8 == 1 && v9[10] == 3)
      {
        break;
      }

      ++v8;
      if (!--v7)
      {
        goto LABEL_14;
      }
    }

    v5 = *(v9 + 2);
  }

  while (v5);
LABEL_14:
  v12 = (*(*a2 + 40))(a2);
  v13 = (*(*v12 + 48))(v12);
  v15 = &unk_1EE187000;
  while (1)
  {
    {
      v24 = v13;
      v15 = &unk_1EE187000;
      v20 = v19;
      v13 = v24;
      if (v20)
      {
        re::introspect<re::ecs2::AnchoringComponent>(BOOL)::info = re::ecs2::introspect_AnchoringComponent(0);
        v15 = &unk_1EE187000;
        v13 = v24;
      }
    }

    if (v13 == v15[127])
    {
      break;
    }

    v16 = *(v13 + 56);
    if (v16)
    {
      for (i = *(v13 + 64); ; ++i)
      {
        v18 = *i;
        if (**i == 1 && v18[10] == 3)
        {
          break;
        }

        if (!--v16)
        {
          return result;
        }
      }

      v13 = *(v18 + 2);
      if (v13)
      {
        continue;
      }
    }

    return result;
  }

  v22 = *(a2 + 448);

  return re::ecs2::Entity::setSelfRequiresAnchoring(this, v22);
}

uint64_t *re::ecs2::Entity::debugDescription@<X0>(re::ecs2::Entity *this@<X0>, re::DynamicString *a2@<X8>)
{
  v27 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v21 = 0;
  v19 = 0;
  re::DynamicString::setCapacity(&v18, 0x20uLL);
  if (*(this + 4))
  {
    __src[0] = 34;
    re::DynamicString::append(&v18, __src, 1uLL);
    v4 = strlen(*(*(this + 4) + 296));
    re::DynamicString::append(&v18, *(*(this + 4) + 296), v4);
    __src[0] = 34;
    v5 = re::DynamicString::append(&v18, __src, 1uLL);
  }

  else
  {
    *__src = "<null>";
    v15 = 6;
    v5 = re::DynamicString::operator=(&v18, __src);
  }

  v6 = *(this + 76);
  v7 = *&vshl_u16((*&vdup_n_s16(v6) & 0xFF00FF00FF00FFLL), 0xFFFEFFFBFFFFFFFDLL) & 0xFF01FF01FF01FF01;
  v22 = vuzp1_s8(v7, v7).u32[0];
  v23 = (v6 & 0x10) != 0;
  v24 = (v6 & 0x40) != 0;
  v25 = v6 & 1;
  v26 = (v6 & 0x80) != 0;
  v16 = 0;
  v17 = 0;
  v15 = 0;
  re::DynamicString::setCapacity(__src, 0x40uLL);
  re::DynamicString::append(__src, "{ ", 2uLL);
  v8 = 0;
  v9 = 1;
  do
  {
    if (*(&v22 + v8) == 1)
    {
      if ((v9 & 1) == 0)
      {
        re::DynamicString::append(__src, " | ", 3uLL);
      }

      v10 = strlen(off_1E871E648[v8]);
      re::DynamicString::append(__src, off_1E871E648[v8], v10);
      v9 = 0;
    }

    ++v8;
  }

  while (v8 != 9);
  re::DynamicString::append(__src, " }", 2uLL);
  if (v19)
  {
    v11 = v20;
  }

  else
  {
    v11 = &v19 + 1;
  }

  if (v15)
  {
    v12 = v16;
  }

  else
  {
    v12 = &v15 + 1;
  }

  re::DynamicString::format("<Entity { name = %s, id = %llu, parent = %s, child count = %zu, state = %s }>", a2, *(this + 37), *(this + 39), v11, *(this + 43), v12);
  if (*__src && (v15 & 1) != 0)
  {
    (*(**__src + 40))();
  }

  result = v18;
  if (v18)
  {
    if (v19)
    {
      return (*(*v18 + 40))();
    }
  }

  return result;
}

uint64_t *re::ecs2::Entity::debugDescriptionRecursive@<X0>(re::ecs2::Entity *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = *(this + 43) << 6;
  *(a2 + 2) = 0;
  *(a2 + 3) = 0;
  *(a2 + 1) = 0;
  re::DynamicString::setCapacity(a2, v4 + 64);
  re::ecs2::Entity::debugDescription(this, &v15);
  v5 = v16 & 1;
  if (v16)
  {
    v6 = v17;
  }

  else
  {
    v6 = &v16 + 1;
  }

  if (v16)
  {
    v7 = v16 >> 1;
  }

  else
  {
    v7 = v16 >> 1;
  }

  re::DynamicString::append(a2, v6, v7);
  v8 = v15;
  if (v15 && v5)
  {
    v8 = (*(*v15 + 40))();
  }

  v17 = 0;
  v18 = 0;
  v16 = 0;
  re::DynamicString::setCapacity(&v15, 0x20uLL);
  re::DynamicString::append(&v15, "    ", 4uLL);
  v9 = *(this + 43);
  if (v9)
  {
    v10 = *(this + 45);
    v11 = 8 * v9;
    do
    {
      v12 = *v10;
      re::DynamicString::append(a2, "\n", 1uLL);
      re::DynamicString::DynamicString(v14, &v15);
      if (*&v14[0])
      {
        if (BYTE8(v14[0]))
        {
          (*(**&v14[0] + 40))();
        }

        memset(v14, 0, sizeof(v14));
      }

      ++v10;
      v11 -= 8;
    }

    while (v11);
  }

  result = v15;
  if (v15)
  {
    if (v16)
    {
      return (*(*v15 + 40))();
    }
  }

  return result;
}

void *anonymous namespace::debugDescriptionRecursiveHelper(re::ecs2::Entity *a1, re::DynamicString *a2, char *a3)
{
  v6 = *(a3 + 1);
  if (v6)
  {
    v7 = *(a3 + 2);
  }

  else
  {
    v7 = a3 + 9;
  }

  v8 = v6 >> 1;
  v9 = v6 >> 1;
  if (*(a3 + 1))
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  re::DynamicString::append(a2, v7, v10);
  re::ecs2::Entity::debugDescription(a1, &v20);
  v11 = v21[0] & 1;
  if (v21[0])
  {
    v12 = v21[1];
  }

  else
  {
    v12 = v21 + 1;
  }

  if (v21[0])
  {
    v13 = v21[0] >> 1;
  }

  else
  {
    v13 = LOBYTE(v21[0]) >> 1;
  }

  re::DynamicString::append(a2, v12, v13);
  if (v20 && v11)
  {
    (*(*v20 + 40))();
  }

  result = re::DynamicString::append(a3, "    ", 4uLL);
  v15 = *(a1 + 43);
  if (v15)
  {
    v16 = *(a1 + 45);
    v17 = 8 * v15;
    do
    {
      v18 = *v16;
      re::DynamicString::append(a2, "\n", 1uLL);
      re::DynamicString::DynamicString(v19, a3);
      result = *&v19[0];
      if (*&v19[0])
      {
        if (BYTE8(v19[0]))
        {
          result = (*(**&v19[0] + 40))();
        }

        memset(v19, 0, sizeof(v19));
      }

      ++v16;
      v17 -= 8;
    }

    while (v17);
  }

  return result;
}

uint64_t re::ecs2::Entity::isStateValid(uint64_t a1, __int16 a2)
{
  v2 = *(a1 + 304);
  if ((v2 & 0x80) == 0)
  {
    v5 = (~v2 & 0x2008) == 0;
    v6 = *(a1 + 144);
    if (v6 && (v6[176] != 1 || v6[177] == 1))
    {
      v7 = v6[178] ^ 1;
    }

    else
    {
      v7 = 0;
    }

    v9 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v9)
    {
      v10 = *(v9 + 448);
    }

    else
    {
      v10 = 0;
    }

    v11 = *(a1 + 304);
    v12 = (v11 >> 6) & 1;
    v13 = *(a1 + 32);
    if (!v13 || (v14 = *(v13 + 304), (v14 & 0x80) != 0))
    {
      v21 = 0;
      v16 = v7;
      v17 = a1;
    }

    else
    {
      v27 = v10;
      v28 = *(a1 + 304);
      v15 = 1;
      v16 = v7;
      do
      {
        v17 = v13;
        if ((v10 & 1) == 0)
        {
          v18 = *(v13 + 144);
          if (v18)
          {
            if (v18[176] == 1 && v18[177] != 1)
            {
              LODWORD(v18) = 0;
            }

            else
            {
              LODWORD(v18) = v18[178] ^ 1;
            }
          }

          v16 |= v18;
        }

        v19 = re::ecs2::EntityComponentCollection::get((v17 + 6), re::ecs2::ComponentImpl<re::ecs2::AnchoringComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v19)
        {
          v20 = *(v19 + 448);
        }

        else
        {
          v20 = 0;
        }

        v15 &= v14;
        v5 = v5 & ((~v14 & 0x2008) == 0);
        v12 |= (v14 & 0x40) >> 6;
        v13 = v17[4];
        if (!v13)
        {
          break;
        }

        LOBYTE(v10) = v10 | v20;
        v14 = *(v13 + 304);
      }

      while ((v14 & 0x80) == 0);
      v21 = v15 ^ 1;
      v10 = v27;
      LOBYTE(v11) = v28;
    }

    v22 = v17[3];
    if (v22)
    {
      v23 = 0;
      v24 = *(v22 + 56) == 0;
      LODWORD(v22) = *(v22 + 48);
      if (((v24 | v21 | v12) & 1) == 0 && ((v5 ^ 1) & 1) == 0)
      {
        v23 = v22 ^ 1 | v16;
      }

      if ((a2 & 2) == 0)
      {
LABEL_33:
        v25 = 0;
        if ((a2 & 0x20) == 0)
        {
LABEL_38:
          if ((a2 & 4) != 0)
          {
            v25 |= v16 ^ ((*(a1 + 304) & 4) >> 2);
            if ((a2 & 0x100) == 0)
            {
LABEL_40:
              if ((a2 & 0x10) == 0)
              {
                goto LABEL_41;
              }

              goto LABEL_48;
            }
          }

          else if ((a2 & 0x100) == 0)
          {
            goto LABEL_40;
          }

          v25 |= v10 ^ *(a1 + 305);
          if ((a2 & 0x10) == 0)
          {
LABEL_41:
            if ((a2 & 0x40) == 0)
            {
              goto LABEL_42;
            }

            goto LABEL_49;
          }

LABEL_48:
          v25 |= v22 ^ ((*(a1 + 304) & 0x10) >> 4);
          if ((a2 & 0x40) == 0)
          {
LABEL_42:
            if ((a2 & 1) == 0)
            {
LABEL_44:
              v8 = v25 ^ 1;
              return v8 & 1;
            }

LABEL_43:
            LOBYTE(v25) = v25 | v23 ^ *(a1 + 304);
            goto LABEL_44;
          }

LABEL_49:
          v25 |= ((v11 ^ *(a1 + 304)) & 0x40) >> 6;
          if ((a2 & 1) == 0)
          {
            goto LABEL_44;
          }

          goto LABEL_43;
        }

LABEL_37:
        v25 |= v7 ^ ((*(a1 + 304) & 0x20) >> 5);
        goto LABEL_38;
      }
    }

    else
    {
      v23 = 0;
      if ((a2 & 2) == 0)
      {
        goto LABEL_33;
      }
    }

    v25 = v5 ^ ((*(a1 + 304) & 2) >> 1);
    if ((a2 & 0x20) == 0)
    {
      goto LABEL_38;
    }

    goto LABEL_37;
  }

  v8 = 1;
  return v8 & 1;
}

void *re::ecs2::allocInfo_Entity(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_419, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_419))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6AA0, "Entity");
    __cxa_guard_release(&_MergedGlobals_419);
  }

  return &unk_1EE1B6AA0;
}

void re::ecs2::initInfo_Entity(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 4161118214;
  v6[1] = "Entity";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x19000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 8) = &re::ecs2::initInfo_Entity(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::EventBus::getTypeId<RESceneAnchoredStateChangedEvent>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<RESceneAnchoredStateChangedEvent>(void)const::s_id = re::EventBus::typeStringToId(("32RESceneAnchoredStateChangedEvent" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[8];
}

void re::ecs2::PackedTypeIDs::~PackedTypeIDs(re::ecs2::PackedTypeIDs *this)
{
  v1 = *(this + 1);
  if (v1 != (this + 16) && v1 != 0)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v1);
  }
}

unsigned __int16 *re::ecs2::PackedTypeIDs::ensureCapacity(unsigned __int16 *this, unint64_t a2)
{
  if (this[2] < a2)
  {
    v2 = this;
    v3 = this[1];
    v4 = re::globalAllocators(this);
    this = (*(*v4[2] + 32))(v4[2], 32 * v3, 16);
    v5 = this;
    if (v3)
    {
      v6 = 0;
      v7 = 16 * v3;
      do
      {
        *&this[v6 / 2] = *(*(v2 + 1) + v6);
        v6 += 16;
      }

      while (v7 != v6);
      this = memset(&this[8 * v3], 255, v7);
    }

    v8 = *(v2 + 1);
    if (v8 != v2 + 8 && v8 != 0)
    {
      v10 = re::globalAllocators(this);
      this = (*(*v10[2] + 40))(v10[2], v8);
    }

    *(v2 + 1) = v5;
    v2[2] = 16 * v3;
  }

  return this;
}

uint64_t re::ecs2::AnchorComponent::makeSyncInfo(re::ecs2::AnchorComponent *this)
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

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  RESyncBitReaderReadData();
  ReadOptional<unsigned long long>(v13);
  if (*(a3 + 184))
  {
    if ((v13[0] & 1) == 0)
    {
      *(a3 + 184) = 0;
      goto LABEL_7;
    }
  }

  else
  {
    if ((v13[0] & 1) == 0)
    {
      goto LABEL_7;
    }

    *(a3 + 184) = 1;
  }

  *(a3 + 192) = v14;
LABEL_7:
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  if (*(a3 + 200) == 1)
  {
    re::ecs2::AnchorComponent::setIsExternalAnchor(a3, 1);
  }

  v12.i64[0] = 0x3F8000003F800000;
  v12.i64[1] = 1065353216;
  RESyncBitReaderReadData();
  v4 = 0.0 * (0.0 + 0.0);
  v5 = (0.0 + 0.0) * 0.0;
  v6 = (0.0 + 0.0) * 1.0;
  v7.i32[3] = 0;
  v8.i32[3] = 0;
  v8.f32[0] = 1.0 - (v4 + v4);
  v8.f32[1] = v5 + v6;
  v8.f32[2] = v5 - v6;
  v9.i32[3] = 0;
  v9.f32[0] = v5 - v6;
  v9.f32[1] = v8.f32[0];
  v9.f32[2] = v5 + v6;
  v7.f32[0] = v5 + v6;
  v7.f32[1] = v5 - v6;
  v7.f32[2] = v8.f32[0];
  v10 = 0uLL;
  HIDWORD(v10) = 1.0;
  *(a3 + 48) = vmulq_n_f32(v8, 1.0);
  *(a3 + 64) = vmulq_n_f32(v9, 1.0);
  *(a3 + 80) = vmulq_laneq_f32(v7, v12, 2);
  *(a3 + 96) = v10;
  return 1;
}

uint64_t ReadOptional<unsigned long long>(_BYTE *a1)
{
  result = RESyncBitReaderReadBool();
  *a1 = 0;
  return result;
}

double re::ecs2::AnchorComponent::setIsExternalAnchor(re::ecs2::AnchorComponent *this, int a2)
{
  if (*(this + 178) != a2)
  {
    v3 = a2;
    v5 = *(this + 2);
    if (v5)
    {
      re::ecs2::Entity::setSelfAnchored_Before(v5, a2 ^ 1);
    }

    *(this + 178) = v3;

    return re::ecs2::AnchorComponent::onAnchorStateChanged_After(this);
  }

  return result;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  MEMORY[0x1E69049A0](a2, a3 + 25, 16);
  v7[0] = *(a3 + 184);
  if (v7[0] == 1)
  {
    v8 = *(a3 + 192);
  }

  re::ecs2::WriteOptional<double>(a2, v7);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  v10 = xmmword_1E30474D0;
  v11 = 0u;
  v9 = 0u;
  re::decomposeScaleRotationTranslation<float>(a3 + 48, &v11, &v10, &v9);
  v6[0] = v11;
  v6[1] = v10;
  v6[2] = v9;
  MEMORY[0x1E69049A0](a2, v6, 48);
  return 1;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a3, 0);
  if (RESyncObjectReadContextIsLocalSession())
  {
    v5 = RESyncBitReaderDataPtr();
    v6 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a3, v5, v6);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::read(a2, a3);
  }
}

uint64_t re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v12 = 0;
  RESyncBitReaderReadData();
  ReadOptional<unsigned long long>(v10);
  v5 = v10[0];
  v6 = v11;
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  RESyncBitReaderReadBool();
  MEMORY[0x1E69049A0](a2, v14, 16);
  v8[0] = v5;
  if (v5 == 1)
  {
    v9 = v6;
  }

  re::ecs2::WriteOptional<double>(a2, v8);
  RESyncBitWriterWriteBool();
  RESyncBitWriterWriteBool();
  result = RESyncBitWriterWriteBool();
  if (a3)
  {
    RESyncBitReaderReadData();
    ReadOptional<unsigned long long>(v10);
    RESyncBitReaderReadBool();
    RESyncBitReaderReadBool();
    return RESyncBitReaderReadBool();
  }

  return result;
}

uint64_t ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a4, a3);
  if (RESyncObjectReadContextIsLocalSession())
  {
    v7 = RESyncBitReaderDataPtr();
    v8 = RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();
    MEMORY[0x1E69049A0](a4, v7, v8);
    return 1;
  }

  else
  {

    return re::SRTNetworkSyncHelper::readDelta(a2, a3, a4);
  }
}

BOOL ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_5(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a3, 0);
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::write(a2, a3);
}

BOOL ___ZN2re4ecs215AnchorComponent12makeSyncInfoEv_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  re::ecs2::AnchorComponent::makeSyncInfo(void)::$_0::operator()(a2, a4, a3);
  if (RESyncObjectWriteContextIsLocalSession())
  {
    RESyncBitReaderDataPtr();
    RESyncBitReaderBytesLeft();
    RESyncBitReaderSkipData();

    JUMPOUT(0x1E69049A0);
  }

  return re::SRTNetworkSyncHelper::writeDelta(a2, a3, a4);
}

uint64_t re::ecs2::AnchorComponent::setWorldTransform(uint64_t result, float32x4_t *a2)
{
  if (vmaxvq_u8(vmvnq_s8(vuzp1q_s8(vuzp1q_s16(vceqq_f32(*a2, *a2), vceqq_f32(a2[1], a2[1])), vuzp1q_s16(vceqq_f32(a2[2], a2[2]), vceqq_f32(a2[3], a2[3]))))))
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) AnchorComponent cannot have NaN worldTransform", "!transform.containsNaN()", "setWorldTransform", 203, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[3];
    *(result + 80) = a2[2];
    *(result + 96) = v6;
    *(result + 48) = v4;
    *(result + 64) = v5;
    if (fabsf(*(result + 108) + -1.0) < 0.00001)
    {
      *(result + 108) = 1065353216;
    }
  }

  return result;
}

double re::ecs2::AnchorComponent::setRequiresLocalAnchoring(re::ecs2::AnchorComponent *this, int a2)
{
  if (*(this + 176) != a2)
  {
    v3 = a2;
    v5 = *(this + 2);
    if (v5)
    {
      re::ecs2::Entity::setSelfAnchored_Before(v5, *(this + 177) & 1 | ((a2 & 1) == 0));
    }

    *(this + 176) = v3;

    return re::ecs2::AnchorComponent::onAnchorStateChanged_After(this);
  }

  return result;
}

double re::ecs2::AnchorComponent::onAnchorStateChanged_After(re::ecs2::AnchorComponent *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    if (*(this + 176) == 1 && *(this + 177) != 1)
    {
      v3 = 0;
    }

    else
    {
      v3 = *(this + 178) ^ 1;
    }

    return re::ecs2::Entity::setSelfAnchored_After(v2, v3 & 1, 0);
  }

  return result;
}

double re::ecs2::AnchorComponent::setAnchoredLocally(re::ecs2::AnchorComponent *this, int a2)
{
  if (*(this + 177) != a2)
  {
    v3 = a2;
    v5 = *(this + 2);
    if (v5)
    {
      re::ecs2::Entity::setSelfAnchored_Before(v5, a2 & 1 | ((*(this + 176) & 1) == 0));
    }

    *(this + 177) = v3;

    return re::ecs2::AnchorComponent::onAnchorStateChanged_After(this);
  }

  return result;
}

void *re::ecs2::allocInfo_AnchorComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B6B38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B6B38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B6B78, "AnchorComponent");
    __cxa_guard_release(&qword_1EE1B6B38);
  }

  return &unk_1EE1B6B78;
}

void re::ecs2::initInfo_AnchorComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x61C8416D6D70DB50;
  v31[1] = "AnchorComponent";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&_MergedGlobals_420, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_420);
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
      qword_1EE1B6B40 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<unsigned char [16]>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "anchorIdentifier";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B6B48 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_Matrix4x4F(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "worldTransform";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B6B50 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 5;
      *(v17 + 1) = "m_transformInCoordinateSpace";
      *(v17 + 2) = "worldTransform";
      qword_1EE1B6B58 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_BOOL(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "requiresLocalAnchoring";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xB000000003;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B6B60 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "enableShadows";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0x2900000004;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B6B68 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "lateLatchId";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xB800000005;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1B6B70 = v29;
      __cxa_guard_release(&_MergedGlobals_420);
    }
  }

  *(this + 2) = 0xD000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B6B40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AnchorComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AnchorComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AnchorComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AnchorComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs215AnchorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v30 = v32;
}

double re::make::shared::unsafelyInplace<re::ecs2::AnchorComponent>(ArcSharedObject *a1)
{
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
  *v1 = &unk_1F5D01968;
  *(v1 + 44) = 0;
  *(v1 + 33) = 0;
  *(v1 + 25) = 0;
  *(v1 + 41) = 0;
  *&result = 1065353216;
  *(v1 + 48) = xmmword_1E3047670;
  *(v1 + 64) = xmmword_1E3047680;
  *(v1 + 80) = xmmword_1E30476A0;
  *(v1 + 96) = xmmword_1E30474D0;
  *(v1 + 112) = xmmword_1E3047670;
  *(v1 + 128) = xmmword_1E3047680;
  *(v1 + 144) = xmmword_1E30476A0;
  *(v1 + 160) = xmmword_1E30474D0;
  *(v1 + 184) = 0;
  *(v1 + 176) = 0;
  *(v1 + 200) = 1;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs215AnchorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

double re::ecs2::ECSHelper::deepCopyEntity@<D0>(re::ecs2::ECSHelper *this@<X0>, const re::ecs2::Entity *a2@<X1>, BOOL (*a3)(void *, void *)@<X4>, uint64_t a4@<X2>, uint64_t (*a5)(uint64_t, uint64_t)@<X3>, re::ecs2::Entity **a6@<X8>)
{
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  v11 = 0x7FFFFFFFLL;
  return re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v9);
}

void anonymous namespace::deepCopyEntity(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, re::ecs2::Entity **a7@<X8>)
{
  v44 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v14 = *(a1 + 72);
    v15 = re::ecs2::EntityFactory::instance(a1);
    re::ecs2::EntityFactory::make(v15, v14, a7);
    v16 = *a7;
    v39 = 0uLL;
    *&v40 = 0;
    v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
    re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(&v39, a4, a1, v17 ^ (v17 >> 31));
    if (HIDWORD(v39) == 0x7FFFFFFF)
    {
      v18 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(a4, DWORD2(v39), v39);
      *(v18 + 8) = a1;
      *(v18 + 16) = v16;
      ++*(a4 + 40);
    }

    re::StringID::operator=(v16 + 36, (a1 + 288));
    re::ecs2::Entity::setSelfEnabled(v16, (*(a1 + 304) >> 3) & 1);
    v19.n128_f64[0] = re::ecs2::Entity::setSelfEnabledForFlag(v16, (*(a1 + 304) >> 13) & 1, 0x2000);
    v20 = *(a1 + 72);
    if (v20)
    {
      for (i = 0; i < v20; ++i)
      {
        if (v20 <= i)
        {
          v30[1] = 0;
          v42 = 0u;
          v43 = 0u;
          v40 = 0u;
          v41 = 0u;
          v39 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v31 = 136315906;
          v32 = "operator[]";
          v33 = 1024;
          v34 = 797;
          v35 = 2048;
          v36 = i;
          v37 = 2048;
          v38 = v20;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        v22 = *(*(a1 + 88) + 8 * i);
        v23 = (*(*v22 + 40))(v22, v19);
        v25 = v23;
        if ((!a3 || ((*(*v23 + 8))(v23) & 1) == 0) && (!a5 || (a5(v25, a6) & 1) == 0) && (*(v25 + 40) & 1) == 0)
        {
          re::ecs2::ECSHelper::deepCopyComponent(v22, v24, &v39);
          v30[0] = v39;
          if (v39)
          {
            v26 = (v39 + 8);
          }

          v19.n128_f64[0] = re::ecs2::EntityComponentCollection::add((v16 + 6), v30, 1);
          if (v30[0])
          {

            v30[0] = 0;
          }

          if (v39)
          {
          }
        }

        v20 = *(a1 + 72);
      }
    }

    if (a2)
    {
      v27 = *(a1 + 344);
      if (v16[42] < v27)
      {
        re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::setCapacity(v16 + 41, v27);
        v27 = *(a1 + 344);
      }

      if (v27)
      {
        v28 = *(a1 + 360);
        v29 = 8 * v27;
        do
        {
          re::Collection<re::SharedPtr<re::ecs2::Entity>>::add(v16 + 40, &v39);
          if (v39)
          {
          }

          ++v28;
          v29 -= 8;
        }

        while (v29);
      }
    }
  }

  else
  {
    *a7 = 0;
  }
}

uint64_t anonymous namespace::fixUpEntityHandle(void *a1, uint64_t a2)
{
  v15[4] = *MEMORY[0x1E69E9840];
  v15[0] = &unk_1F5D01BB0;
  v15[1] = a2;
  v15[3] = v15;
  v4 = a1[9];
  if (v4)
  {
    v5 = a1[11];
    v6 = 8 * v4;
    do
    {
      v7 = *v5++;
      v8 = (*(*v7 + 5))(v7);
      v9 = (*(*v8 + 48))(v8);
      re::IntrospectionWalker::walk(v9, v7, v15);
      v6 -= 8;
    }

    while (v6);
  }

  v10 = a1[43];
  if (v10)
  {
    v11 = a1[45];
    v12 = 8 * v10;
    do
    {
      v13 = *v11++;
      v12 -= 8;
    }

    while (v12);
  }

  return std::__function::__value_func<void ()(re::IntrospectionBase const&,void const*)>::~__value_func[abi:nn200100](v15);
}

void re::ecs2::ECSHelper::deepCopyComponent(re::ecs2::ECSHelper *this@<X0>, const re::ecs2::Component *a2@<X1>, uint64_t *a3@<X8>)
{
  if (this)
  {
    v5 = *((*(*this + 40))(this, a2) + 8);
    if (v5)
    {
      v6 = v5(this);
      v7 = v6;
      *a3 = v6;
      if (v6)
      {
        v8 = (v6 + 8);
      }
    }

    else
    {
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v9 = (*(*this + 40))(this);
      v10 = (*(*v9 + 48))(v9);
      v11 = (*(*this + 40))(this);
      v12 = (*(*v11 + 32))(v11);
      v13 = re::globalAllocators(v12);
      v14 = *a3;
      v17[0] = v13[2];
      v17[1] = 0;
      v17[2] = v15;
    }
  }

  else
  {
    *a3 = 0;
  }
}

BOOL re::ecs2::ECSHelper::isDescendant(re::ecs2::ECSHelper *this, const re::ecs2::Entity *a2, const re::ecs2::Entity *a3)
{
  result = 0;
  if (this && a2)
  {
    if (*(a2 + 43))
    {
      while (1)
      {
        this = *(this + 4);
        if (!this)
        {
          break;
        }

        result = (*(this + 76) & 0x80) == 0;
        if ((*(this + 76) & 0x80) != 0 || this == a2)
        {
          return result;
        }
      }
    }

    return 0;
  }

  return result;
}

void *re::ecs2::ECSHelper::logIdentifier@<X0>(re::ecs2::ECSHelper **this@<X0>, const re::ecs2::Component *a2@<X1>, const re::ecs2::Entity *a3@<X2>, re::DynamicString *a4@<X8>)
{
  *(a4 + 1) = 0;
  *(a4 + 2) = 0;
  *(a4 + 3) = 0;
  re::DynamicString::setCapacity(a4, 0);
  v9 = this[2];
  if (v9)
  {
    re::ecs2::ECSHelper::logIdentifier(v9, a3, &v15);
    re::DynamicString::operator=(a4, &v15);
    if (v15 && (v16 & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v10 = ":";
  }

  else
  {
    v17 = 0;
    v18 = 0;
    v15 = a3;
    v16 = 0;
    re::DynamicString::setCapacity(&v15, 0x40uLL);
    re::DynamicString::operator=(a4, &v15);
    if (v15 && (v16 & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v10 = "<No entity>:";
  }

  v11 = strlen(v10);
  re::DynamicString::append(a4, v10, v11);
  v12 = *((*(*this + 5))(this) + 32);
  v13 = strlen(v12);
  result = re::DynamicString::append(a4, v12, v13);
  if (a2)
  {
    return re::DynamicString::appendf(a4, ".%s", a2);
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::ECSHelper::logIdentifier@<X0>(re::ecs2::ECSHelper *this@<X0>, const re::ecs2::Entity *a2@<X1>, re::DynamicString *a3@<X8>)
{
  *(a3 + 2) = 0;
  *(a3 + 3) = 0;
  *a3 = a2;
  *(a3 + 1) = 0;
  re::DynamicString::setCapacity(a3, 0x100uLL);
  v7 = this;
  do
  {
    v8 = v7;
    v7 = *(v7 + 4);
  }

  while (v7);
  if (*(v8 + 3))
  {
    v9 = this;
    do
    {
      v10 = v9;
      v9 = *(v9 + 4);
    }

    while (v9);
    v11 = *(v10 + 3);
    v12 = this;
    if (*(v11 + 32) < 2uLL && (v13 = *(v11 + 40), v12 = this, v13) && (v12 = this, !*v13))
    {
      v32 = this;
      do
      {
        v32 = *(v32 + 4);
      }

      while (v32);
      re::DynamicString::appendf(a3, "<Unnamed scene (%p)>:/");
    }

    else
    {
      do
      {
        v12 = *(v12 + 4);
      }

      while (v12);
      re::DynamicString::appendf(a3, "%s:/");
    }
  }

  else
  {
    re::DynamicString::append(a3, "<No scene>:/", 0xCuLL);
  }

  v35 = 1;
  v36 = 0;
  v37 = 0;
  v33 = a2;
  v34 = 0;
  result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v33, 0);
  v15 = v35 + 2;
  v35 += 2;
  do
  {
    if (!v33)
    {
      result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v33, v34 + 1);
      v15 = v35 + 2;
      v35 += 2;
      goto LABEL_28;
    }

    if (v15)
    {
      if (v34 - 8 >= 0xFFFFFFFFFFFFFFF7)
      {
        goto LABEL_28;
      }

      v16 = v34 + 1;
      v18 = 16;
      goto LABEL_24;
    }

    v16 = v34 + 1;
    if (v34 >= v36 && v36 < v16)
    {
      v18 = 2 * v36;
LABEL_24:
      if (v18 <= v16)
      {
        v19 = v16;
      }

      else
      {
        v19 = v18;
      }

      result = re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity(&v33, v19);
      v15 = v35;
    }

LABEL_28:
    v20 = (v15 & 1) == 0;
    v21 = v37;
    v22 = v34;
    if (!v20)
    {
      v21 = &v36;
    }

    v21[v34] = this;
    v23 = v22 + 1;
    v34 = v23;
    v24 = v35;
    v15 = v35 + 2;
    v35 += 2;
    this = *(this + 4);
  }

  while (this && (*(this + 304) & 0x80) == 0);
  v20 = (v24 & 1) == 0;
  v25 = v37;
  if (!v20)
  {
    v25 = &v36;
  }

  v26 = &v25[v23];
  if (v15)
  {
    goto LABEL_37;
  }

  while (1)
  {
    v27 = v37;
    if (v26 == v37)
    {
      break;
    }

    while (1)
    {
      if (v26 != &v27[v34])
      {
        re::DynamicString::append(a3, "/", 1uLL);
      }

      v29 = *--v26;
      v28 = v29;
      v30 = *(v29 + 296);
      if (*(v29 + 288) > 1uLL || *v30)
      {
        v31 = strlen(v30);
        result = re::DynamicString::append(a3, v30, v31);
      }

      else
      {
        result = re::DynamicString::appendf(a3, "<Unnamed entity (%p)>", v28);
      }

      if ((v35 & 1) == 0)
      {
        break;
      }

LABEL_37:
      v27 = &v36;
      if (v26 == &v36)
      {
        return result;
      }
    }
  }

  result = v33;
  if (v33)
  {
    return (*(*v33 + 40))(v33);
  }

  return result;
}

uint64_t std::__function::__func<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0,std::allocator<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5D01BB0;
  a2[1] = v2;
  return result;
}

void std::__function::__func<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0,std::allocator<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::operator()(uint64_t a1, uint64_t a2, id **a3)
{
  if (*(a2 + 16) == 11 && *(a2 + 88) == re::internal::entityHandleDeepCopy)
  {
    v15 = v3;
    v16 = v4;
    v5 = *a3;
    if (**a3)
    {
      v6 = *(a1 + 8);
      WeakRetained = objc_loadWeakRetained(*a3);
      v8 = WeakRetained;
      if (WeakRetained)
      {
        v9 = WeakRetained - 8;
      }

      else
      {
        v9 = 0;
      }

      v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v13, v6, v9, v10 ^ (v10 >> 31));
      v11 = 0;
      if (v14 != 0x7FFFFFFF)
      {
        v11 = (*(v6 + 16) + 32 * v14 + 16);
      }

      if (v8)
      {
      }

      if (v11)
      {
        v12 = *v11;
        if (*v11)
        {
          re::ecs2::EntityHandle::reset(v5);
          objc_storeWeak(v5, (v12 + 8));
          v5[1] = *(v12 + 312);
        }
      }
    }
  }
}

uint64_t std::__function::__func<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0,std::allocator<anonymous namespace::fixUpEntityHandle(re::ecs2::Entity *,re::HashTable<re::ecs2::Entity const*,re::ecs2::Entity *,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false> const&)::$_0>,void ()(re::IntrospectionBase const&,void const*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

void *re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(void *a1)
{
  *a1 = &unk_1F5D01CB0;
  v2 = (a1 + 1);
  re::DynamicArray<re::SharedPtr<re::ResourceSharingManager::Completion>>::clear((a1 + 1));
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v2);
  return a1;
}

void re::ecs2::SystemCollection::~SystemCollection(re::ecs2::SystemCollection *this)
{
  re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::SystemCollection::willClear(uint64_t this)
{
  if (***(this + 48))
  {
    v1 = this;
    v2 = *(this + 24);
    if (v2)
    {
      v3 = *(this + 40);
      v4 = &v3[v2];
      do
      {
        v5 = *v3;
        v6 = *(v1 + 48);
        v7 = *(v6 + 200);
        if (v7)
        {
          v8 = *(v6 + 216);
          v9 = 8 * v7;
          do
          {
            v10 = *v8++;
            (*(*v5 + 56))(v5, v10);
            v9 -= 8;
          }

          while (v9);
        }

        this = (*(*v5 + 96))(v5, v1);
        ++v3;
      }

      while (v3 != v4);
    }
  }

  return this;
}

uint64_t re::ecs2::SystemCollection::willInsert(uint64_t result, uint64_t a2, void *a3)
{
  if (***(result + 48))
  {
    v4 = result;
    result = (*(**a3 + 88))(*a3, result);
    v5 = *(v4 + 48);
    v6 = *(v5 + 200);
    if (v6)
    {
      v7 = *(v5 + 216);
      v8 = 8 * v6;
      do
      {
        v9 = *v7++;
        result = (*(**a3 + 48))(*a3, v9);
        v8 -= 8;
      }

      while (v8);
    }
  }

  return result;
}

uint64_t re::ecs2::SystemCollection::willRemoveAt(uint64_t result, uint64_t a2, void *a3)
{
  v3 = *(result + 48);
  if (**v3)
  {
    v5 = *(v3 + 200);
    if (v5)
    {
      v6 = *(v3 + 216);
      v7 = 8 * v5;
      do
      {
        v8 = *v6++;
        (*(**a3 + 56))(*a3, v8);
        v7 -= 8;
      }

      while (v7);
    }

    v9 = *(**a3 + 96);

    return v9();
  }

  return result;
}

void *re::ecs2::SystemCollection::willSet(void *result, unint64_t a2, void *a3)
{
  if (result[3] <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v4 = result;
  v5 = result[6];
  v6 = *(result[5] + 8 * a2);
  if (**v5)
  {
    v7 = *(v5 + 200);
    if (v7)
    {
      v8 = *(v5 + 216);
      v9 = 8 * v7;
      do
      {
        v10 = *v8++;
        (*(*v6 + 56))(v6, v10);
        v9 -= 8;
      }

      while (v9);
    }

    (*(*v6 + 96))(v6, v4);
    v6[5] = 0;
    v11 = *a3;
    v11[5] = **v4[6];
    result = (*(*v11 + 88))(v11, v4);
    v12 = v4[6];
    v13 = *(v12 + 200);
    if (v13)
    {
      v14 = *(v12 + 216);
      v15 = 8 * v13;
      do
      {
        v16 = *v14++;
        result = (*(**a3 + 48))(*a3, v16);
        v15 -= 8;
      }

      while (v15);
    }
  }

  else
  {
    v6[5] = 0;
    *(*a3 + 40) = 0;
  }

  return result;
}

void re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(void *a1)
{
  re::Collection<re::SharedPtr<re::ecs2::System>>::~Collection(a1);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::CustomSystemRegistry::init(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  if ((this->_os_unfair_lock_opaque & 1) == 0)
  {
    LOBYTE(this->_os_unfair_lock_opaque) = 1;
    v4 = re::DynamicArray<re::Encoder<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>,re::DynamicArrayBufferedOutputStream>::State>::setCapacity(&this[14]._os_unfair_lock_opaque, 0);
    ++this[20]._os_unfair_lock_opaque;
    re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(&this[24]._os_unfair_lock_opaque, 0);
    ++this[30]._os_unfair_lock_opaque;
  }

  os_unfair_lock_unlock(this + 1);
}

re::ecs2::CustomSystemRegistry *re::ecs2::CustomSystemRegistry::CustomSystemRegistry(re::ecs2::CustomSystemRegistry *this)
{
  *this = 0;
  *(this + 4) = 0u;
  *(this + 20) = 0u;
  *(this + 36) = 0;
  *(this + 44) = 0x7FFFFFFFLL;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 20) = 0;
  *(this + 16) = 0;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  *(this + 68) = 515;
  *(this + 35) = 1023969417;
  *(this + 144) = 0;
  re::ecs2::CustomSystemRegistry::init(this);
  return this;
}

void re::ecs2::CustomSystemRegistry::~CustomSystemRegistry(os_unfair_lock_s *this)
{
  re::ecs2::CustomSystemRegistry::deinit(this);
  re::DynamicArray<unsigned long>::deinit(&this[24]);
  re::DynamicArray<unsigned long>::deinit(&this[14]);
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(&this[2]);
}

void re::ecs2::CustomSystemRegistry::deinit(os_unfair_lock_s *this)
{
  os_unfair_lock_lock(this + 1);
  if (LOBYTE(this->_os_unfair_lock_opaque) == 1)
  {
    LOBYTE(this->_os_unfair_lock_opaque) = 0;
    re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(&this[2]);
    re::DynamicArray<unsigned long>::deinit(&this[14]);
    re::DynamicArray<unsigned long>::deinit(&this[24]);
  }

  os_unfair_lock_unlock(this + 1);
}

void re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 112 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_13, 4 * v10);
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

double re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 32))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::free(a1, v3++);
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

uint64_t re::ecs2::CustomSystemRegistry::setDefaultTaskOptions(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 40);
  if (v4)
  {
    v5 = 0;
    v6 = *(result + 24);
    while (1)
    {
      v7 = *v6;
      v6 += 28;
      if (v7 < 0)
      {
        break;
      }

      if (v4 == ++v5)
      {
        LODWORD(v5) = *(result + 40);
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
    v8 = (*(v3 + 24) + 112 * v5);
    v9 = v8[5];
    if (v9)
    {
      v10 = 16 * v9;
      v11 = (v8[7] + 8);
      do
      {
        result = *v11;
        if (*v11)
        {
          result = re::ecs2::System::setDefaultTaskOptions(result, a2);
        }

        v11 += 2;
        v10 -= 16;
      }

      while (v10);
    }

    v12 = v8[10];
    if (v12)
    {
      v13 = v8[12];
      v14 = 16 * v12;
      v15 = (v13 + 8);
      do
      {
        result = *v15;
        if (*v15)
        {
          result = re::ecs2::System::setDefaultTaskOptions(result, a2);
        }

        v15 += 2;
        v14 -= 16;
      }

      while (v14);
    }

    v16 = *(v3 + 40);
    if (v16 <= v5 + 1)
    {
      v16 = v5 + 1;
    }

    while (v16 - 1 != v5)
    {
      LODWORD(v5) = v5 + 1;
      if ((*(*(v3 + 24) + 112 * v5) & 0x80000000) != 0)
      {
        goto LABEL_24;
      }
    }

    LODWORD(v5) = v16;
LABEL_24:
    ;
  }

  v17 = *a2;
  *(v3 + 144) = *(a2 + 8);
  *(v3 + 136) = v17;
  return result;
}

void *re::ecs2::CustomSystemRegistry::instance(re::ecs2::CustomSystemRegistry *this)
{
  {
    re::ecs2::CustomSystemRegistry::CustomSystemRegistry(&re::ecs2::CustomSystemRegistry::instance(void)::s_instance);
  }

  return &re::ecs2::CustomSystemRegistry::instance(void)::s_instance;
}

void re::ecs2::CustomSystemRegistry::add(uint64_t a1, unint64_t a2, uint64_t *a3)
{
  os_unfair_lock_lock((a1 + 4));
  Systems = re::ecs2::CustomSystemRegistry::createSystems(a1, a2);
  re::ecs2::System::setDefaultTaskOptions(*a3, (a1 + 136));
  v7 = *a3;
  v9 = -1;
  v10 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
  }

  re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::add(Systems + 6, &v9);
  if (v10)
  {
  }

  os_unfair_lock_unlock((a1 + 4));
}

re *re::ecs2::CustomSystemRegistry::createSystems(uint64_t a1, unint64_t a2)
{
  v29 = *MEMORY[0x1E69E9840];
  *&v22 = a2;
  v4 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(a1 + 8, &v22);
  v5 = v4;
  if (!v4)
  {
    v21 = a2;
    v25 = 0;
    v23 = 0u;
    memset(v24, 0, sizeof(v24));
    v22 = 0u;
    memset(v26, 0, 24);
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>(a1 + 8, &v21, v6 ^ (v6 >> 31), v26);
    if (*&v26[12] == 0x7FFFFFFF)
    {
      v7 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::allocEntry(a1 + 8, *&v26[8], *v26);
      v8 = v21;
      *(v7 + 16) = 0u;
      v5 = (v7 + 16);
      *(v7 + 8) = v8;
      *(&v22 + 1) = 0;
      *(v7 + 32) = 0u;
      v23 = 0u;
      *(v7 + 56) = 0;
      LODWORD(v24[0]) = 1;
      *(v7 + 48) = 1;
      *(v24 + 8) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0;
      *(&v24[1] + 8) = 0u;
      *(v7 + 96) = 0;
      v25 = 0;
      DWORD2(v24[2]) = 1;
      *(v7 + 88) = 1;
      ++*(a1 + 48);
    }

    else
    {
      v5 = (*(a1 + 24) + 112 * *&v26[12] + 16);
    }

    re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(&v24[1]);
    v4 = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(&v22 + 8);
  }

  v9 = *(a1 + 72);
  v10 = *v5;
  if (*v5 < v9)
  {
    v11 = 48 * v10;
    do
    {
      v12 = *(a1 + 72);
      if (v12 <= v10)
      {
        v21 = 0;
        v23 = 0u;
        memset(v24, 0, sizeof(v24));
        v22 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v26 = 136315906;
        *&v26[4] = "operator[]";
        *&v26[12] = 1024;
        *&v26[14] = 789;
        *&v26[18] = 2048;
        *&v26[20] = v10;
        v27 = 2048;
        v28 = v12;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v13 = *(a1 + 88);
      v14 = v13 + v11;
      re::make::shared::object<re::ecs2::CustomSystem>(v4, v26);
      v15 = *v26;
      *(*v26 + 24) = vrev64_s32(*(v13 + v11));
      *(v15 + 240) = *(v13 + v11 + 32);
      v16 = _Block_copy(*(v13 + v11 + 8));
      v17 = *v26;
      *(*v26 + 224) = v16;
      if (*(v13 + v11 + 8))
      {
        v18 = _Block_copy(*(v14 + 16));
        v17 = *v26;
        *(*v26 + 232) = v18;
      }

      else
      {
        *(v17 + 248) = *(v14 + 24);
      }

      *(v17 + 32) = a1;
      re::ecs2::System::setDefaultTaskOptions(v17, (a1 + 136));
      if (*(v13 + v11 + 40) == 1)
      {
        *&v22 = v10;
        *(&v22 + 1) = *v26;
        *v26 = 0;
        v19 = (v5 + 8);
      }

      else
      {
        *&v22 = v10;
        *(&v22 + 1) = *v26;
        *v26 = 0;
        v19 = (v5 + 48);
      }

      v4 = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::add(v19, &v22);
      if (*(&v22 + 1))
      {
      }

      if (*v26)
      {
      }

      ++v10;
      v11 += 48;
    }

    while (v9 != v10);
  }

  *v5 = v9;
  return v5;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::add(void *this, void *a2)
{
  v3 = this;
  v4 = this[2];
  if (v4 >= this[1])
  {
    this = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::growCapacity(this, v4 + 1);
    v4 = v3[2];
  }

  v5 = (v3[4] + 16 * v4);
  v6 = a2[1];
  *v5 = *a2;
  v5[1] = v6;
  a2[1] = 0;
  v3[2] = v4 + 1;
  ++*(v3 + 6);
  return this;
}

void re::ecs2::CustomSystemRegistry::add(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 1);
  re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(&a1[24], a2);

  os_unfair_lock_unlock(a1 + 1);
}

__n128 re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(_anonymous_namespace_ *this, uint64_t a2)
{
  v4 = *(this + 2);
  if (v4 >= *(this + 1))
  {
    re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::growCapacity(this, v4 + 1);
    v4 = *(this + 2);
  }

  v5 = *(this + 4) + 48 * v4;
  result = *a2;
  v7 = *(a2 + 32);
  *(v5 + 16) = *(a2 + 16);
  *(v5 + 32) = v7;
  *v5 = result;
  ++*(this + 2);
  ++*(this + 6);
  return result;
}

uint64_t re::ecs2::CustomSystemRegistry::remove(os_unfair_lock_s *a1, uint64_t a2, uint64_t *a3)
{
  os_unfair_lock_lock(a1 + 1);
  v16 = a2;
  v6 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(&a1[2], &v16);
  if (!v6)
  {
    goto LABEL_10;
  }

  v7 = v6[3];
  if (v7)
  {
    v8 = v6[5];
    v9 = *a3;
    v10 = 16 * v7;
    do
    {
      v11 = *(v8 + 8);
      if (v11 == v9)
      {
        goto LABEL_11;
      }

      v8 += 16;
      v10 -= 16;
    }

    while (v10);
  }

  v12 = v6[8];
  if (!v12)
  {
LABEL_10:
    v14 = 0;
    goto LABEL_14;
  }

  v8 = v6[10];
  v9 = *a3;
  v13 = 16 * v12;
  while (1)
  {
    v11 = *(v8 + 8);
    if (v11 == v9)
    {
      break;
    }

    v8 += 16;
    v13 -= 16;
    if (!v13)
    {
      goto LABEL_10;
    }
  }

LABEL_11:
  if (v9)
  {

    *(v8 + 8) = 0;
  }

  v14 = 1;
LABEL_14:
  os_unfair_lock_unlock(a1 + 1);
  return v14;
}

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 112 * v6 + 16;
  }
}

void re::ecs2::CustomSystemRegistry::releaseSystems(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 1);
  v4 = a2;
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::remove(&a1[2], &v4);
  os_unfair_lock_unlock(a1 + 1);
}

BOOL re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::removeInternal(a1, v5);
}

BOOL re::ecs2::CustomSystemRegistry::hasPendingSystemChanges(uint64_t a1, uint64_t a2, uint64_t a3)
{
  os_unfair_lock_lock((a1 + 4));
  v14 = a2;
  v6 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::tryGet(a1 + 8, &v14);
  v7 = *(a1 + 72);
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6 == 0;
  }

  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v9 = v6;
    v12 = v7 && (!v6 || *v6 != v7) || ((v14 = a1, (v10 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a3 + 24, &v14)) == 0) ? (v11 = 0) : (v11 = *v10), v11 != *(v9 + 6)) || HIDWORD(v11) != *(v9 + 16);
  }

  os_unfair_lock_unlock((a1 + 4));
  return v12;
}

void re::ecs2::CustomSystemRegistry::configureSystemChanges(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v52 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock((a1 + 4));
  if (!*(a1 + 72))
  {
    if (!*(a1 + 8))
    {
      goto LABEL_49;
    }

    v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v12 = *(*(a1 + 16) + 4 * ((v11 ^ (v11 >> 31)) % *(a1 + 32)));
    if (v12 == 0x7FFFFFFF)
    {
      goto LABEL_49;
    }

    v13 = *(a1 + 24);
    while (*(v13 + 112 * v12 + 8) != a2)
    {
      v12 = *(v13 + 112 * v12) & 0x7FFFFFFF;
      if (v12 == 0x7FFFFFFF)
      {
        goto LABEL_49;
      }
    }
  }

  Systems = re::ecs2::CustomSystemRegistry::createSystems(a1, a2);
  *&v47 = a1;
  v9 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a3 + 24, &v47);
  if (v9)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  v14 = *(Systems + 3);
  if (v10 == v14 && HIDWORD(v10) == *(Systems + 8))
  {
    re::ecs2::CustomSystemRegistry::sortSystems(a1, a4);
  }

  else
  {
    v38 = *(Systems + 8);
    v39 = a4;
    if (v14 != v10)
    {
      v16 = v10;
      v17 = v10;
      v18 = 16 * v10 - 8;
      while (v17 >= 1)
      {
        if (v14 <= --v17)
        {
          goto LABEL_52;
        }

        v19 = *(*(Systems + 5) + v18);
        v18 -= 16;
        if (v19)
        {
          v20 = (v19 + 8);
          v21 = *(v39 + 32);
          v22 = *(v39 + 16);
          if (v22)
          {
            v23 = 8 * v22;
            v24 = *(v39 + 32);
            while (*v24 != v19)
            {
              ++v24;
              v23 -= 8;
              if (!v23)
              {
                goto LABEL_29;
              }
            }
          }

          else
          {
            v24 = *(v39 + 32);
          }

          if (v24 != (v21 + 8 * v22))
          {
            v25 = (v24 - v21) >> 3;

            v17 = (v25 + 1);
            goto LABEL_31;
          }

LABEL_29:

          break;
        }
      }

      v17 = 0;
LABEL_31:
      v26 = *(Systems + 3);
      if (v10 < v26)
      {
        v27 = (16 * v10) | 8;
        do
        {
          v28 = *(Systems + 3);
          if (v28 <= v16)
          {
            goto LABEL_51;
          }

          v29 = *(*(Systems + 5) + v27);
          if (v29)
          {
            *&v47 = *(*(Systems + 5) + v27);
            v30 = (v29 + 8);
            re::ecs2::SceneGroup::addSystemNow(a3, &v47, v17);
            if (v47)
            {
            }

            v17 = (v17 + 1);
          }

          ++v16;
          v27 += 16;
        }

        while (v26 != v16);
      }
    }

    v16 = *(Systems + 8);
    v17 = v10 >> 32;
    if (v10 >> 32 < v16)
    {
      v31 = (16 * v17) | 8;
      while (1)
      {
        v28 = *(Systems + 8);
        if (v28 <= v17)
        {
          break;
        }

        v32 = *(*(Systems + 10) + v31);
        if (v32)
        {
          *&v47 = *(*(Systems + 10) + v31);
          v33 = (v32 + 8);
          re::ecs2::SceneGroup::addSystemNow(a3, &v47, 0xFFFFFFFF);
          if (v47)
          {
          }
        }

        ++v17;
        v31 += 16;
        if (v16 == v17)
        {
          goto LABEL_46;
        }
      }

      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 789;
      v43 = 2048;
      v44 = v17;
      v45 = 2048;
      v46 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_51:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 789;
      v43 = 2048;
      v44 = v16;
      v45 = 2048;
      v46 = v28;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_52:
      v50 = 0u;
      v51 = 0u;
      v48 = 0u;
      v49 = 0u;
      v47 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v40 = 136315906;
      *&v40[4] = "operator[]";
      v41 = 1024;
      v42 = 789;
      v43 = 2048;
      v44 = v17;
      v45 = 2048;
      v46 = v14;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_46:
    re::ecs2::CustomSystemRegistry::sortSystems(a1, v39);
    *v40 = a1;
    v47 = 0uLL;
    *&v48 = 0;
    v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a1 ^ (a1 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a3 + 24, v40, v34 ^ (v34 >> 31), &v47);
    v35 = HIDWORD(v47);
    v36 = v14 | (v38 << 32);
    if (HIDWORD(v47) == 0x7FFFFFFF)
    {
      v37 = re::HashTable<re::DataArrayHandle<re::ecs2::SceneGroup>,re::DataArrayHandle<re::ecs2::System::SystemScheduling>,re::Hash<re::DataArrayHandle<re::ecs2::SceneGroup>>,re::EqualTo<re::DataArrayHandle<re::ecs2::SceneGroup>>,true,false>::allocEntry(a3 + 24, DWORD2(v47), v47);
      *(v37 + 8) = *v40;
      *(v37 + 16) = v36;
      ++*(a3 + 64);
    }

    else
    {
      ++*(a3 + 64);
      *(*(a3 + 40) + 32 * v35 + 16) = v36;
    }
  }

LABEL_49:
  os_unfair_lock_unlock((a1 + 4));
}

void re::ecs2::CustomSystemRegistry::sortSystems(_anonymous_namespace_ *a1, uint64_t a2)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!*(a1 + 14))
  {
    return;
  }

  v5 = *(a2 + 16);
  memset(v81, 0, sizeof(v81));
  v82 = 0;
  v83 = 0x7FFFFFFFLL;
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = 0xFFFFFFFFLL;
    v10 = 0x7FFFFFFFLL;
    while (1)
    {
      *v88 = 0;
      *&v88[8] = 0xFFFFFFFFLL;
      *&v88[16] = -1;
      if (v7 <= v8)
      {
        break;
      }

      v11 = *(*(a2 + 32) + 8 * v8);
      if (*(v11 + 48) == 2)
      {
        *&v88[16] = *(v11 + 28);
      }

      else
      {
        *v88 = *((*(*v11 + 32))(v11) + 32);
        v7 = *(a2 + 16);
      }

      if (v7 <= v8)
      {
        goto LABEL_135;
      }

      v2 = *(*(a2 + 32) + 8 * v8);
      memset(buf, 0, sizeof(buf));
      *&v92 = 0;
      v12 = re::Hash<re::ecs2::CustomSystemRegistry::SystemID>::operator()(v88);
      v6 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::findEntry<re::ecs2::CustomSystemRegistry::SystemID>(buf, v81, v88, v12);
      if (*&buf[12] == 0x7FFFFFFF)
      {
        v6 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::allocEntry(v81, *&buf[8], *buf);
        *(v6 + 8) = *v88;
        *(v6 + 24) = *&v88[16];
        *(v6 + 32) = v2;
        ++HIDWORD(v83);
      }

      v7 = *(a2 + 16);
      if (v7 <= v8)
      {
        goto LABEL_136;
      }

      *(*(*(a2 + 32) + 8 * v8) + 24) = v8;
      if (++v8 >= v7)
      {
        goto LABEL_13;
      }
    }

LABEL_134:
    v84 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v85 = 136315906;
    *&v85[4] = "operator[]";
    *&v85[12] = 1024;
    *&v85[14] = 789;
    *&v85[18] = 2048;
    *&v85[20] = v8;
    v86 = 2048;
    *v87 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_135:
    v84 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v85 = 136315906;
    *&v85[4] = "operator[]";
    *&v85[12] = 1024;
    *&v85[14] = 789;
    *&v85[18] = 2048;
    *&v85[20] = v8;
    v86 = 2048;
    *v87 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_136:
    v84 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v85 = 136315906;
    *&v85[4] = "operator[]";
    *&v85[12] = 1024;
    *&v85[14] = 789;
    *&v85[18] = 2048;
    *&v85[20] = v8;
    v86 = 2048;
    *v87 = v7;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_137:
    v84 = 0;
    v94 = 0u;
    v95 = 0u;
    v92 = 0u;
    v93 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v88 = 136315906;
    *&v88[4] = "operator[]";
    *&v88[12] = 1024;
    *&v88[14] = 789;
    *&v88[18] = 2048;
    *&v88[20] = v10;
    v89 = 2048;
    v90 = v9;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_138;
  }

LABEL_13:
  v13 = *(a1 + 14);
  *&v87[2] = 0;
  memset(&v85[8], 0, 20);
  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v85, v13);
  ++*&v85[24];
  v14 = *(a1 + 14);
  if (v14)
  {
    v8 = 0;
    v7 = *(a1 + 16);
    v15 = &v7[6 * v14];
    do
    {
      v16 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::tryGet(v81, v7);
      if (v16)
      {
        v17 = v16;
        v18 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::tryGet(v81, v7 + 3);
        if (v18)
        {
          v19 = v18;
          v20 = *v17;
          v21 = *v18;
          if (*v17 != *v18 && (*(v20 + 32) == a1 || *(v21 + 32) == a1))
          {
            if (*&v85[16] >= *&v85[8])
            {
              v22 = *&v85[16] + 1;
              if (*&v85[8] < (*&v85[16] + 1))
              {
                if (*v85)
                {
                  v23 = 8;
                  if (*&v85[8])
                  {
                    v23 = 2 * *&v85[8];
                  }

                  if (v23 <= v22)
                  {
                    v24 = *&v85[16] + 1;
                  }

                  else
                  {
                    v24 = v23;
                  }

                  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v85, v24);
                }

                else
                {
                  re::DynamicArray<re::internal::AnimationCompositionChainEntry>::setCapacity(v85, v22);
                  ++*&v85[24];
                }
              }
            }

            v10 = *&v87[2];
            v25 = *&v85[16];
            v26 = *&v87[2] + 24 * *&v85[16];
            *v26 = v20;
            *(v26 + 8) = v21;
            *(v26 + 16) = 0;
            v3 = v25 + 1;
            *&v85[16] = v25 + 1;
            v9 = ++*&v85[24];
            if (hasCycle)
            {
              v28 = *re::ecsCoreLogObjects(hasCycle);
              if (os_log_type_enabled(v28, OS_LOG_TYPE_DEFAULT))
              {
                *buf = 0;
              }

              if (v3 >= 1)
              {
                v29 = (v3 & 0x7FFFFFFF) + 1;
                v30 = v10 - 24 + 24 * (v3 & 0x7FFFFFFF);
                do
                {
                  v2 = v29 - 2;
                  if (v3 <= v29 - 2)
                  {
                    goto LABEL_133;
                  }

                  if (*(v30 + 17) == 1)
                  {
                    v31 = v3 - 1;
                    if (v3 - 1 > v2)
                    {
                      v32 = v10 - 24 + 24 * v3;
                      v33 = *v32;
                      *(v30 + 16) = *(v32 + 16);
                      *v30 = v33;
                      v31 = v3 - 1;
                    }

                    v9 = (v9 + 1);
                    v3 = v31;
                  }

                  --v29;
                  v30 -= 24;
                }

                while (v29 > 1);
                *&v85[16] = v3;
                *&v85[24] = v9;
              }
            }

            else
            {
              v8 = v8 | (*(*v19 + 49) == 0);
            }
          }
        }
      }

      v7 += 6;
    }

    while (v7 != v15);
    if (v8)
    {
      v34 = *&v85[16];
      if (*&v85[16])
      {
        v35 = *&v87[2];
        v36 = (*&v85[16] + 15) & 0xFFFFFFFFFFFFFFF0;
        v37 = vdupq_n_s64(*&v85[16] - 1);
        v38 = xmmword_1E30903C0;
        v39 = xmmword_1E30903D0;
        v40 = xmmword_1E30903E0;
        v41 = xmmword_1E30903F0;
        v42 = xmmword_1E305F210;
        v43 = xmmword_1E3049660;
        v44 = xmmword_1E3049640;
        v45 = xmmword_1E3049620;
        v46 = (*&v87[2] + 208);
        v47 = vdupq_n_s64(0x10uLL);
        do
        {
          v48 = vmovn_s64(vcgeq_u64(v37, v45));
          if (vuzp1_s8(vuzp1_s16(v48, *v37.i8), *v37.i8).u8[0])
          {
            *(v46 - 192) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v48, *&v37), *&v37).i8[1])
          {
            *(v46 - 168) = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v44))), *&v37).i8[2])
          {
            *(v46 - 144) = 0;
            *(v46 - 120) = 0;
          }

          v49 = vmovn_s64(vcgeq_u64(v37, v43));
          if (vuzp1_s8(*&v37, vuzp1_s16(v49, *&v37)).i32[1])
          {
            *(v46 - 96) = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(v49, *&v37)).i8[5])
          {
            *(v46 - 72) = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v42)))).i8[6])
          {
            *(v46 - 48) = 0;
            *(v46 - 24) = 0;
          }

          v50 = vmovn_s64(vcgeq_u64(v37, v41));
          if (vuzp1_s8(vuzp1_s16(v50, *v37.i8), *v37.i8).u8[0])
          {
            *v46 = 0;
          }

          if (vuzp1_s8(vuzp1_s16(v50, *&v37), *&v37).i8[1])
          {
            v46[24] = 0;
          }

          if (vuzp1_s8(vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v40))), *&v37).i8[2])
          {
            v46[48] = 0;
            v46[72] = 0;
          }

          v51 = vmovn_s64(vcgeq_u64(v37, v39));
          if (vuzp1_s8(*&v37, vuzp1_s16(v51, *&v37)).i32[1])
          {
            v46[96] = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(v51, *&v37)).i8[5])
          {
            v46[120] = 0;
          }

          if (vuzp1_s8(*&v37, vuzp1_s16(*&v37, vmovn_s64(vcgeq_u64(v37, *&v38)))).i8[6])
          {
            v46[144] = 0;
            v46[168] = 0;
          }

          v43 = vaddq_s64(v43, v47);
          v44 = vaddq_s64(v44, v47);
          v45 = vaddq_s64(v45, v47);
          v42 = vaddq_s64(v42, v47);
          v41 = vaddq_s64(v41, v47);
          v40 = vaddq_s64(v40, v47);
          v39 = vaddq_s64(v39, v47);
          v46 += 384;
          v38 = vaddq_s64(v38, v47);
          v36 -= 16;
        }

        while (v36);
        v52 = (v35 + 16);
        do
        {
          if (!*(*(v52 - 1) + 49) && (*v52 & 1) == 0)
          {
          }

          v52 += 24;
          --v34;
        }

        while (v34);
      }
    }
  }

  v9 = *&v85[16];
  if (!*&v85[16])
  {
    goto LABEL_123;
  }

  v53 = *(a2 + 16);
  if (!v53)
  {
    goto LABEL_123;
  }

  v54 = 0;
  v7 = 0;
  v55 = *&v87[2];
  v56 = *&v87[2] + 8;
  v8 = 24;
  v10 = *&v85[16];
  do
  {
    v3 = *(a2 + 16);
    if (v3 <= v7)
    {
      v57 = v7;
    }

    else
    {
      v57 = *(a2 + 16);
    }

    v2 = -1;
    v58 = 0x7FFFFFFFLL;
    v59 = v7;
    v60 = 0x7FFFFFFFLL;
    while (1)
    {
      if (v59 == v57)
      {
        goto LABEL_130;
      }

      v61 = *(*(a2 + 32) + 8 * v59);
      v62 = *(v61 + 24);
      if (v62 > v60)
      {
        goto LABEL_86;
      }

      v63 = v62;
      if (*(v61 + 48) != 2)
      {
        if (v58 > v62)
        {
          v67 = v9;
          v68 = v10;
          v69 = v56;
          while (1)
          {
            if (!v67)
            {
              goto LABEL_129;
            }

            if (*v69 == v61)
            {
              break;
            }

            v69 += 3;
            --v67;
            if (!--v68)
            {
              goto LABEL_99;
            }
          }

          v62 = v60;
          v58 = v63;
          goto LABEL_102;
        }

LABEL_86:
        v62 = v60;
        goto LABEL_102;
      }

      if (*(v61 + 32) == a1)
      {
        v64 = v9;
        v65 = v10;
        v66 = v56;
        while (v64)
        {
          if (*v66 == v61)
          {
            goto LABEL_86;
          }

          v66 += 3;
          --v64;
          if (!--v65)
          {
            goto LABEL_99;
          }
        }

        v84 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v9;
        v89 = 2048;
        v90 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_129:
        v84 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v9;
        v89 = 2048;
        v90 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_130:
        v84 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v57;
        v89 = 2048;
        v90 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_131:
        v84 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v57;
        v89 = 2048;
        v90 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_132:
        v84 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v2;
        v89 = 2048;
        v90 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_133:
        v84 = 0;
        v94 = 0u;
        v95 = 0u;
        v92 = 0u;
        v93 = 0u;
        *buf = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v88 = 136315906;
        *&v88[4] = "operator[]";
        *&v88[12] = 1024;
        *&v88[14] = 789;
        *&v88[18] = 2048;
        *&v88[20] = v2;
        v89 = 2048;
        v90 = v3;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
        goto LABEL_134;
      }

LABEL_99:
      v2 = v59;
      if (v54 == v62)
      {
        break;
      }

LABEL_102:
      ++v59;
      v60 = v62;
      if (v59 == v53)
      {
        goto LABEL_103;
      }
    }

    v2 = v59;
LABEL_103:
    LODWORD(v57) = v10;
    if (v10 - 1 >= 0)
    {
      do
      {
        v57 = (v57 - 1);
        if (v9 <= v57)
        {
          goto LABEL_131;
        }

        v3 = *(a2 + 16);
        if (v3 <= v2)
        {
          goto LABEL_132;
        }

        v70 = (v55 + 24 * v57);
        v71 = *(*(a2 + 32) + 8 * v2);
        if ((*v70 == v71 || *(v70 + 1) == v71) && --v10 > v57)
        {
          if (v9 <= v10)
          {
            goto LABEL_137;
          }

          v72 = (v55 + 24 * v10);
          v73 = *v70;
          v74 = *(v70 + 2);
          v75 = *(v72 + 8);
          *v70 = *v72;
          *(v70 + 8) = v75;
          *(v72 + 8) = v74;
          *v72 = v73;
        }
      }

      while (v57 > 0);
    }

    if (v54 == v62)
    {
      ++v54;
    }

    if (v2 != v7)
    {
      v3 = *(a2 + 16);
      if (v3 > v2)
      {
        v76 = v56;
        v77 = v54;
        v78 = *(*(a2 + 32) + 8 * v2);
        *buf = v78;
        if (v78)
        {
          v79 = (v78 + 8);
        }

        re::DynamicArray<re::SharedPtr<re::ecs2::System>>::removeStableAt(a2, v2);
        re::DynamicArray<re::SharedPtr<re::ecs2::System>>::insert(a2, v7, buf);
        if (*buf)
        {
        }

        v54 = v77;
        v56 = v76;
        goto LABEL_121;
      }

LABEL_138:
      v84 = 0;
      v94 = 0u;
      v95 = 0u;
      v92 = 0u;
      v93 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      *v88 = 136315906;
      *&v88[4] = "operator[]";
      *&v88[12] = 1024;
      *&v88[14] = 789;
      *&v88[18] = 2048;
      *&v88[20] = v2;
      v89 = 2048;
      v90 = v3;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

LABEL_121:
    v7 = (v7 + 1);
  }

  while (v7 < v53 && v10);
LABEL_123:
  if (*v85)
  {
    if (*&v87[2])
    {
      (*(**v85 + 40))();
    }
  }

  re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v81);
}

uint64_t anonymous namespace::setSystemGroup(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(result + 48) == 2 && *(result + 32) == a3)
  {
    *(result + 49) = 0;
  }

  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = 0;
    for (i = 0; i < v6; ++i)
    {
      v9 = *(a2 + 32) + v7;
      if (*(v9 + 8) == v5)
      {
        *(v9 + 16) = 1;
        v6 = *(a2 + 16);
      }

      v7 += 24;
    }
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(uint64_t a1)
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
        v5 = 16 * v4;
        v6 = v3 + 8;
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v6 += 16;
          v5 -= 16;
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

uint64_t re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::tryGet(uint64_t a1, uint64_t *a2)
{
  v4 = re::Hash<re::ecs2::CustomSystemRegistry::SystemID>::operator()(a2);
  re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::findEntry<re::ecs2::CustomSystemRegistry::SystemID>(v6, a1, a2, v4);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v7 + 32;
  }
}

uint64_t anonymous namespace::hasCycle(uint64_t a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 16);
  if (!a3)
  {
    if (v5)
    {
      goto LABEL_31;
    }

    return 0;
  }

  if (!v5)
  {
    return 0;
  }

  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
  v7 = vdupq_n_s64(v5 - 1);
  v8 = xmmword_1E30903C0;
  v9 = xmmword_1E30903D0;
  v10 = xmmword_1E30903E0;
  v11 = xmmword_1E30903F0;
  v12 = xmmword_1E305F210;
  v13 = xmmword_1E3049660;
  v14 = xmmword_1E3049640;
  v15 = xmmword_1E3049620;
  v16 = (*(a2 + 32) + 208);
  v17 = vdupq_n_s64(0x10uLL);
  do
  {
    v18 = vmovn_s64(vcgeq_u64(v7, v15));
    if (vuzp1_s8(vuzp1_s16(v18, *v7.i8), *v7.i8).u8[0])
    {
      *(v16 - 192) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v18, *&v7), *&v7).i8[1])
    {
      *(v16 - 168) = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v14))), *&v7).i8[2])
    {
      *(v16 - 144) = 0;
      *(v16 - 120) = 0;
    }

    v19 = vmovn_s64(vcgeq_u64(v7, v13));
    if (vuzp1_s8(*&v7, vuzp1_s16(v19, *&v7)).i32[1])
    {
      *(v16 - 96) = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v19, *&v7)).i8[5])
    {
      *(v16 - 72) = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v12)))).i8[6])
    {
      *(v16 - 48) = 0;
      *(v16 - 24) = 0;
    }

    v20 = vmovn_s64(vcgeq_u64(v7, v11));
    if (vuzp1_s8(vuzp1_s16(v20, *v7.i8), *v7.i8).u8[0])
    {
      *v16 = 0;
    }

    if (vuzp1_s8(vuzp1_s16(v20, *&v7), *&v7).i8[1])
    {
      v16[24] = 0;
    }

    if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v10))), *&v7).i8[2])
    {
      v16[48] = 0;
      v16[72] = 0;
    }

    v21 = vmovn_s64(vcgeq_u64(v7, v9));
    if (vuzp1_s8(*&v7, vuzp1_s16(v21, *&v7)).i32[1])
    {
      v16[96] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(v21, *&v7)).i8[5])
    {
      v16[120] = 0;
    }

    if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, *&v8)))).i8[6])
    {
      v16[144] = 0;
      v16[168] = 0;
    }

    v13 = vaddq_s64(v13, v17);
    v14 = vaddq_s64(v14, v17);
    v15 = vaddq_s64(v15, v17);
    v12 = vaddq_s64(v12, v17);
    v11 = vaddq_s64(v11, v17);
    v10 = vaddq_s64(v10, v17);
    v9 = vaddq_s64(v9, v17);
    v16 += 384;
    v8 = vaddq_s64(v8, v17);
    v6 -= 16;
  }

  while (v6);
LABEL_31:
  v22 = 0;
  v23 = 0;
  while (1)
  {
    v24 = *(a2 + 32);
    v25 = v24 + v22;
    if (*(v24 + v22 + 8) == a1)
    {
      if (*(v25 + 16) == 1)
      {
        v28 = v24 + v22;
        goto LABEL_40;
      }

      *(v25 + 16) = 1;
      v5 = *(a2 + 16);
      if (hasCycle)
      {
        break;
      }
    }

    ++v23;
    v22 += 24;
    if (v23 >= v5)
    {
      return 0;
    }
  }

  if (v5 <= v23)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v28 = *(a2 + 32) + v22;
LABEL_40:
  result = 1;
  *(v28 + 17) = 1;
  return result;
}

uint64_t re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::findEntry<re::ecs2::CustomSystemRegistry::SystemID>(uint64_t result, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v4 = *a2;
  v5 = 0x7FFFFFFF;
  if (*a2 && (v4 = a4 % *(a2 + 24), v6 = *(*(a2 + 8) + 4 * v4), v6 != 0x7FFFFFFF))
  {
    v8 = *(a2 + 16);
    v9 = *a3;
    v10 = *(a3 + 3);
    v11 = *(a3 + 2);
    v12 = HIWORD(*(a3 + 2));
    v13 = *(a3 + 4);
    v5 = 0x7FFFFFFF;
    v7 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v6;
      v15 = v8 + 48 * v6;
      v17 = *(v15 + 8);
      v16 = v15 + 8;
      if (v17 == v9 && *(v16 + 8) == v11 && *(v16 + 10) == v12)
      {
        v19 = *(v16 + 12);
        v18 = *(v16 + 16);
        if (((v19 ^ v10) & 0xFFFFFF) == 0 && v18 == v13)
        {
          break;
        }
      }

      v6 = *(v8 + 48 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v6 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_14;
      }
    }

    v5 = v14;
  }

  else
  {
    v7 = 0x7FFFFFFF;
  }

LABEL_14:
  *result = a4;
  *(result + 8) = v4;
  *(result + 12) = v5;
  *(result + 16) = v7;
  return result;
}

unint64_t re::Hash<re::ecs2::CustomSystemRegistry::SystemID>::operator()(uint64_t a1)
{
  v2 = re::Hash<re::Pair<void const*,void const*,true>>::operator()(&v5, a1);
  v3 = 0xBF58476D1CE4E5B9 * (*(a1 + 16) ^ (*(a1 + 16) >> 30));
  return ((v2 << 6) + (v2 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31))) ^ v2;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (is_mul_ok(a2, 0x30uLL))
        {
          v2 = 48 * a2;
          result = (*(*result + 32))(result, 48 * a2, 8);
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
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 48, a2);
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
        v10 = 48 * v9;
        v11 = v7;
        do
        {
          v12 = *v8;
          v13 = v8[2];
          v11[1] = v8[1];
          v11[2] = v13;
          *v11 = v12;
          v11 += 3;
          v8 += 3;
          v10 -= 48;
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

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v3 = (*(result + 16) + 112 * a2);
  if ((*v3 & 0x80000000) != 0)
  {
    *v3 &= ~0x80000000;
    v4 = (v3 + 6);
    re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit((v3 + 16));

    return re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::deinit(v4);
  }

  return result;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::ecs2::CustomSystemRegistry::PerECSSystemInstances::SystemInstance>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 60)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 16, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 16 * a2;
          result = (*(*result + 32))(result, 16 * a2, 8);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_15;
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
LABEL_15:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = (v8 + 16 * v9);
        v11 = v7;
        v12 = v5[4];
        do
        {
          v13 = v12[1];
          *v11 = *v12;
          v11[1] = v13;
          v11 += 2;
          v12[1] = 0;
          v12 += 2;
        }

        while (v12 != v10);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_15;
    }
  }

  return result;
}

void *re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::findEntry<re::ecs2::ECSService const*>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  v5 = 0x7FFFFFFF;
  if (!*result)
  {
    goto LABEL_10;
  }

  v4 = a3 % *(result + 24);
  v6 = *(*(result + 8) + 4 * v4);
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_10;
  }

  v7 = *(result + 16);
  if (*(v7 + 112 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_10:
    v6 = 0x7FFFFFFF;
    goto LABEL_11;
  }

  v8 = *(v7 + 112 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 112 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 112 * v8) & 0x7FFFFFFF;
      v6 = v9;
      if (v8 == 0x7FFFFFFF)
      {
        v6 = v9;
        goto LABEL_11;
      }
    }

    v5 = v8;
  }

LABEL_11:
  *a4 = a3;
  *(a4 + 8) = v4;
  *(a4 + 12) = v5;
  *(a4 + 16) = v6;
  return result;
}

BOOL re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 112 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 112 * v5) = *(v6 + 112 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::free(a1, v8);
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 112 * v9) = *(*(a1 + 16) + 112 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v33, 0, 36);
          *&v33[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::init(v33, v9, v8);
          v11 = *v33;
          *v33 = *a1;
          *a1 = v11;
          v12 = *&v33[16];
          *&v33[16] = *(a1 + 16);
          *(a1 + 16) = v12;
          v14 = *&v33[24];
          *&v33[24] = *(a1 + 24);
          v13 = *&v33[32];
          *(a1 + 24) = v14;
          ++*&v33[40];
          v15 = v13;
          if (v13)
          {
            v16 = 0;
            v17 = 56;
            do
            {
              if ((*(*&v33[16] + v17 - 56) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::allocEntry(a1, *(*&v33[16] + v17 + 48) % *(a1 + 24));
                v19 = *&v33[16] + v17;
                v20 = *(*&v33[16] + v17 - 40);
                *(v18 + 8) = *(*&v33[16] + v17 - 48);
                *(v18 + 16) = v20;
                *(v18 + 56) = 0;
                *(v18 + 48) = 0;
                *(v18 + 32) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                v21 = *(v19 - 24);
                *(v18 + 24) = *(v19 - 32);
                *(v18 + 32) = v21;
                *(v19 - 32) = 0;
                *(v19 - 24) = 0;
                v22 = *(v18 + 40);
                *(v18 + 40) = *(v19 - 16);
                *(v19 - 16) = v22;
                v23 = *(v18 + 56);
                *(v18 + 56) = *v19;
                *v19 = v23;
                ++*(v19 - 8);
                ++*(v18 + 48);
                *(v18 + 96) = 0;
                *(v18 + 72) = 0;
                *(v18 + 80) = 0;
                *(v18 + 64) = 0;
                *(v18 + 88) = 0;
                v24 = *(v19 + 16);
                *(v18 + 64) = *(v19 + 8);
                *(v18 + 72) = v24;
                *(v19 + 8) = 0;
                *(v19 + 16) = 0;
                v25 = *(v18 + 80);
                *(v18 + 80) = *(v19 + 24);
                *(v19 + 24) = v25;
                v26 = *(v18 + 96);
                *(v18 + 96) = *(v19 + 40);
                *(v19 + 40) = v26;
                ++*(v19 + 32);
                ++*(v18 + 88);
                v15 = *&v33[32];
              }

              ++v16;
              v17 += 112;
            }

            while (v16 < v15);
          }

          re::HashTable<re::ecs2::ECSService const*,re::ecs2::CustomSystemRegistry::PerECSSystemInstances,re::Hash<re::ecs2::ECSService const*>,re::EqualTo<re::ecs2::ECSService const*>,true,false>::deinit(v33);
        }
      }

      else
      {
        if (v8)
        {
          v29 = 2 * v7;
        }

        else
        {
          v29 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v27 = *(a1 + 16);
    v28 = *(v27 + 112 * v5);
  }

  else
  {
    v27 = *(a1 + 16);
    v28 = *(v27 + 112 * v5);
    *(a1 + 36) = v28 & 0x7FFFFFFF;
  }

  v30 = v27 + 112 * v5;
  *v30 = v28 | 0x80000000;
  v31 = *(a1 + 8);
  *v30 = *(v31 + 4 * a2) | 0x80000000;
  *(v31 + 4 * a2) = v5;
  *(v30 + 104) = a3;
  ++*(a1 + 28);
  return v27 + 112 * v5;
}

double re::make::shared::object<re::ecs2::CustomSystem>@<D0>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 368, 8);
  v5 = re::ecs2::System::System(v4, 2, 1);
  *v5 = &unk_1F5D01448;
  result = 0.0;
  *(v5 + 224) = 0u;
  *(v5 + 240) = 0u;
  *(v5 + 256) = 0u;
  *(v5 + 272) = 0u;
  *(v5 + 288) = 0u;
  *(v5 + 304) = 0;
  *(v5 + 308) = 0x7FFFFFFFLL;
  *(v5 + 320) = 0u;
  *(v5 + 336) = 0u;
  *(v5 + 352) = 0;
  *(v5 + 356) = 0x7FFFFFFFLL;
  *a2 = v5;
  return result;
}

void re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 48 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_13, 4 * v10);
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

uint64_t re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 4) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::ecs2::CustomSystemRegistry::SystemID,re::ecs2::System *,re::Hash<re::ecs2::CustomSystemRegistry::SystemID>,re::EqualTo<re::ecs2::CustomSystemRegistry::SystemID>,true,false>::allocEntry(a1, v17[1] % *(a1 + 24));
                v19 = *(v17 - 3);
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 8) = v19;
                *(v18 + 32) = *v17;
              }

              v17 += 6;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v26);
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
    v21 = *(v20 + 48 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 48 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 48 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 40) = a3;
  ++*(a1 + 28);
  return v20 + 48 * v5;
}

uint64_t re::ecs2::SystemSchedulingDisabler::disableSchedulingIfNoComponent(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = re::ecs2::System::taskOptions(a1, a2);
  v9 = *(v8 + 8);
  v20 = *v8;
  v21 = v9;
  if (v20 == 1)
  {
    return 1;
  }

  v11 = (*(**(a1 + 40) + 304))(*(a1 + 40), a2);
  v12 = *(v11 + 200);
  if (v12)
  {
    v13 = *(v11 + 216);
    v14 = v13 + 8 * v12;
    while (!a4)
    {
LABEL_11:
      v13 += 8;
      if (v13 == v14)
      {
        goto LABEL_12;
      }
    }

    v15 = 8 * a4;
    v16 = a3;
    while (1)
    {
      v17 = *(*v16 + 16);
      if (*(*v13 + 224) > v17)
      {
        v18 = *(*(*v13 + 240) + 8 * v17);
        if (v18)
        {
          if (*(v18 + 384))
          {
            return 0;
          }
        }
      }

      v16 += 8;
      v15 -= 8;
      if (!v15)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 1;
    LOBYTE(v20) = 1;
    re::ecs2::System::setTaskOptions(a1, a2, &v20);
  }

  return v10;
}

uint64_t re::ecs2::ECSManager::ECSManager(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(a1 + 24) = a2;
  *a1 = &unk_1F5D01D08;
  *(a1 + 32) = a3;
  v6 = re::ecs2::SceneGroupCollection::SceneGroupCollection(a1 + 40, a1);
  *(a1 + 384) = 0xFFFFFFFFLL;
  *(a1 + 392) = -1;
  *(a1 + 404) = 0;
  *(a1 + 396) = 0;
  *(a1 + 412) = 0;
  *(a1 + 416) = -1;
  *(a1 + 424) = 0;
  *(a1 + 428) = 0;
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  *(a1 + 448) = 1;
  *(a1 + 464) = 0;
  *(a1 + 472) = 0;
  *(a1 + 456) = 0;
  *(a1 + 480) = 0;
  *(a1 + 384) = re::ecs2::SceneGroupCollection::createSceneGroup(a1 + 40, 0, *(a1 + 32));
  return a1;
}

void re::ecs2::ECSManager::~ECSManager(re::ecs2::ECSManager *this)
{
  re::ecs2::SceneGroupCollection::deinit((this + 40));
  v2 = *(this + 59);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](this + 432, i);
      objc_destroyWeak(v4);
      *v4 = 0;
    }
  }

  while (*(this + 55))
  {
    re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(this + 54);
  }

  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 432);
  *(this + 59) = 0;
  ++*(this + 120);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 432);
  re::ecs2::SceneGroupCollection::~SceneGroupCollection(this + 10);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::ECSManager::~ECSManager(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::ECSManager::addSystem(uint64_t a1, int a2, unsigned int a3, uint64_t a4)
{
  v9 = a4;
  v7 = (a1 + 384);
  if ((a4 & 0xFFFFFF00000000) != 0)
  {
    v7 = &v9;
  }

  v8 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v7);

  re::ecs2::SceneGroup::addSystem(v8, (a1 + 48), a2, a3);
}

void re::ecs2::ECSManager::removeSystem(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a3;
  v5 = (a1 + 384);
  if ((a3 & 0xFFFFFF00000000) != 0)
  {
    v5 = &v7;
  }

  v6 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v5);

  re::ecs2::SceneGroup::removeSystem(v6, (a1 + 48), a2);
}

void re::ecs2::ECSManager::addSystemDependency(os_unfair_lock_s *a1, uint64_t a2)
{
  os_unfair_lock_lock(a1 + 57);
  re::DynamicArray<re::ecs2::CustomSystemRegistry::SystemDependency>::add(&a1[80], a2);

  os_unfair_lock_unlock(a1 + 57);
}

uint64_t re::ecs2::ECSManager::outputDeviceSystemTasks@<X0>(uint64_t this@<X0>, uint64_t a2@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  v3 = *(this + 32);
  if (!v3)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 1;
    *(a2 + 24) = 0;
    *(a2 + 32) = 0;
    *(a2 + 64) = 0;
    return this;
  }

  v4 = this;
  v5 = *(v3 + 40);
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 1;
  *(a2 + 24) = 0;
  *(a2 + 32) = 0;
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  *(a2 + 64) = v5;
  *&v31 = 0;
  this = re::DynamicOverflowArray<unsigned long long,5ul>::resize(a2, v6, &v31);
  v7 = v4 + 48;
  v20 = v4 + 48;
  if (*(v4 + 88))
  {
    v21 = 0;
    if (!*(v4 + 64))
    {
      v22 = 0;
      v35 = 0u;
      v33 = 0u;
      v34 = 0u;
      v31 = 0u;
      v32 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v23 = 136315906;
      v24 = "operator[]";
      v25 = 1024;
      v26 = 797;
      v27 = 2048;
      v28 = 0;
      v29 = 2048;
      v30 = 0;
      _os_log_send_and_compose_impl();
      this = _os_crash_msg();
      __break(1u);
      return this;
    }

    v8 = v4 + 48;
    if (!**(*(v4 + 80) + 8))
    {
      this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
      v8 = v20;
    }
  }

  else
  {
    v21 = -1;
    v8 = v4 + 48;
  }

  v20 = v8;
  v9 = v21;
  v10 = HIWORD(v21);
  if (v7 == v8)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v11 = v10;
    v12 = *(v8 + 16);
    if (v12 <= v10)
    {
      goto LABEL_31;
    }

    v11 = *(*(v8 + 32) + 16 * v10);
    v13 = *(v11 + 8 * v9);
    if (*(v13 + 48) == 1)
    {
      v14 = *(v13 + 200);
      if (v14)
      {
        break;
      }
    }

LABEL_28:
    this = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    v8 = v20;
    v9 = v21;
    v10 = HIWORD(v21);
    if (v20 == v7)
    {
LABEL_15:
      if (v9 == 0xFFFF && v10 == 0xFFFF)
      {
        return this;
      }
    }
  }

  v12 = *(v13 + 216);
  v15 = 8 * v14;
  while (1)
  {
    v16 = re::ecs2::System::taskHandle(*(v11 + 8 * v9), *v12);
    if (v16 < v5)
    {
      break;
    }

LABEL_27:
    ++v12;
    v15 -= 8;
    if (!v15)
    {
      goto LABEL_28;
    }
  }

  v17 = v16 >> 6;
  v18 = *(a2 + 8);
  if (v18 > v16 >> 6)
  {
    if (*(a2 + 16))
    {
      v19 = a2 + 24;
    }

    else
    {
      v19 = *(a2 + 32);
    }

    *(v19 + 8 * v17) |= 1 << v16;
    goto LABEL_27;
  }

  v22 = 0;
  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v23 = 136315906;
  v24 = "operator[]";
  v25 = 1024;
  v26 = 858;
  v27 = 2048;
  v28 = v17;
  v29 = 2048;
  v30 = v18;
  _os_log_send_and_compose_impl();
  _os_crash_msg();
  __break(1u);
LABEL_31:
  v22 = 0;
  v35 = 0u;
  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  v23 = 136315906;
  v24 = "operator[]";
  v25 = 1024;
  v26 = 797;
  v27 = 2048;
  v28 = v11;
  v29 = 2048;
  v30 = v12;
  _os_log_send_and_compose_impl();
  this = _os_crash_msg();
  __break(1u);
  return this;
}

void re::ecs2::ECSManager::configurePreparePhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0xEEC0FA23AB2AF7FCLL;
  v12 = "ECSManager::Prepare Profiling Begin";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(a1)[2];
  v22 = &v19;
  v19 = &unk_1F5D01E98;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }

  re::ecs2::SceneGroupCollection::configurePhaseECSSystems((a1 + 40), a2, a3, 0, a4);
  v11 = 0xA9F037AB534ABAE0;
  v12 = "ECSManager::Prepare Profiling End";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(v9)[2];
  v22 = &v19;
  v19 = &unk_1F5D01EF0;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v10 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

void re::ecs2::ECSManager::configureSimulatePhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = *MEMORY[0x1E69E9840];
  v12 = 0xD448DC82DA1AF396;
  v13 = "ECSManager::Simulate Profiling Begin";
  v14 = 1;
  v15 = 0;
  v16 = 0;
  LOWORD(v17) = 260;
  HIDWORD(v17) = 1023969417;
  v18 = 0;
  v22 = re::globalAllocators(a1)[2];
  v23 = &v19;
  v19 = &unk_1F5D01F48;
  v20 = a1;
  v24 = a4;
  v25 = 0;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v12);
  if (v25)
  {
    if (v29)
    {
      (*(*v25 + 40))();
    }

    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    ++v28;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v12)
  {
    if (v12)
    {
    }
  }

  re::ecs2::SceneGroupCollection::configurePhaseECSSystems((a1 + 40), a2, a3, 1, a4);
  *(a1 + 416) = -1;
  if (*(a1 + 408))
  {
    v12 = 0x170A146AA311E622;
    v13 = "ECS Update Callback";
    v14 = 1;
    v15 = 0;
    v16 = 0;
    v17 = *(a1 + 360);
    v18 = *(a1 + 368);
    v22 = re::globalAllocators(v9)[2];
    v23 = &v19;
    v19 = &unk_1F5D01FA0;
    v20 = a1;
    v24 = a4;
    v25 = 0;
    v29 = 0;
    v28 = 0;
    v26 = 0;
    v27 = 0;
    *(a1 + 416) = re::Scheduler::ScheduleDescriptor::addTask(a3, &v12);
    if (v25)
    {
      if (v29)
      {
        (*(*v25 + 40))();
      }

      v29 = 0;
      v26 = 0;
      v27 = 0;
      v25 = 0;
      ++v28;
    }

    v9 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
    if (v12)
    {
      if (v12)
      {
      }
    }
  }

  v12 = 0xFBB13980CD58D4FALL;
  v13 = "ECSManager::Simulate Profiling End";
  v14 = 1;
  v15 = 0;
  v16 = 0;
  LOWORD(v17) = 260;
  HIDWORD(v17) = 1023969417;
  v18 = 0;
  v10 = re::globalAllocators(v9)[2];
  v21 = a1;
  v22 = v10;
  v19 = &unk_1F5D01FF8;
  v20 = a1;
  v23 = &v19;
  v24 = a4;
  v29 = 0;
  v28 = 0;
  v26 = 0;
  v27 = 0;
  v25 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v12);
  if (v25)
  {
    if (v29)
    {
      (*(*v25 + 40))();
    }

    v29 = 0;
    v26 = 0;
    v27 = 0;
    v25 = 0;
    ++v28;
  }

  v11 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v12)
  {
    if (v12)
    {
    }
  }
}

void re::ecs2::ECSManager::configureCommitPhase(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v29 = *MEMORY[0x1E69E9840];
  v11 = 0xD1BE049E450061BCLL;
  v12 = "ECSManager::Commit Profiling Begin";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(a1)[2];
  v22 = &v19;
  v19 = &unk_1F5D02050;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v8 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }

  re::ecs2::SceneGroupCollection::configurePhaseECSSystems((a1 + 40), a2, a3, 2, a4);
  v11 = 0x37A0906342EF94A0;
  v12 = "ECSManager::Commit Profiling End";
  v13 = 1;
  v14 = 0;
  v15 = 0;
  v16 = 260;
  v17 = 1023969417;
  v18 = 0;
  v21 = re::globalAllocators(v9)[2];
  v22 = &v19;
  v19 = &unk_1F5D020A8;
  v20 = a1;
  v23 = a4;
  v24 = 0;
  v28 = 0;
  v27 = 0;
  v25 = 0;
  v26 = 0;
  re::Scheduler::ScheduleDescriptor::addTask(a3, &v11);
  if (v24)
  {
    if (v28)
    {
      (*(*v24 + 40))();
    }

    v28 = 0;
    v25 = 0;
    v26 = 0;
    v24 = 0;
    ++v27;
  }

  v10 = re::FunctionBase<24ul,void ()(float)>::destroyCallable(&v19);
  if (v11)
  {
    if (v11)
    {
    }
  }
}

float re::ecs2::ECSManager::setUpdateCallback(re::ecs2::ECSManager *this, void (*a2)(re::ecs2::ECSManager *))
{
  *(this + 51) = a2;
  re::ecs2::SceneGroupCollection::forceSystemConfiguration((this + 40));
  v4 = *(this + 4);
  if (v4)
  {
    result = *(v4 + 756);
    if (result > 0.0)
    {
      *(v4 + 756) = 0;
      result = fminf(*(v4 + 752), 0.0);
      *(v4 + 752) = result;
    }
  }

  return result;
}

uint64_t re::ecs2::ECSManager::resolveEntityHandle(re::ecs2::ECSManager *this, const re::ecs2::EntityHandle *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = *(a2 + 1);
  v3 = this + 160;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v30, this + 160, 0);
  v4 = *&v30[0];
  v19 = *&v30[0];
  v20 = DWORD2(v30[0]);
  v5 = WORD4(v30[0]);
  v6 = HIWORD(DWORD2(v30[0]));
  v7 = v3 == *&v30[0] && WORD4(v30[0]) == 0xFFFF;
  v8 = 0;
  if (!v7 || v6 != 0xFFFF)
  {
    do
    {
      v10 = v6;
      v11 = *(v4 + 2);
      if (v11 <= v6)
      {
        v21 = 0;
        memset(v30, 0, sizeof(v30));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v22 = 136315906;
        v23 = "operator[]";
        v24 = 1024;
        v25 = 797;
        v26 = 2048;
        v27 = v10;
        v28 = 2048;
        v29 = v11;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v12 = *(*(v4 + 4) + 16 * v6) + 240 * v5;
      v13 = *(v12 + 200);
      if (v13)
      {
        v14 = *(v12 + 216);
        v15 = 8 * v13;
        do
        {
          v16 = *v14;
          *&v30[0] = v2;
          v17 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v16 + 152, v30);
          if (v17)
          {
            v8 = *(v17 + 8);
            if (v8)
            {
              goto LABEL_17;
            }
          }

          else
          {
            v8 = *(v16 + 104);
            if (*(v8 + 312) == *&v30[0])
            {
              goto LABEL_17;
            }
          }

          ++v14;
          v15 -= 8;
        }

        while (v15);
        v8 = 0;
      }

LABEL_17:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v19);
      v4 = v19;
      v5 = v20;
      v6 = HIWORD(v20);
    }

    while (v19 != v3 || v20 != 0xFFFF || HIWORD(v20) != 0xFFFF);
  }

  return v8;
}

uint64_t re::ecs2::ECSManager::sceneGroupCollection(re::ecs2::ECSManager *this)
{
  return this + 40;
}

{
  return this + 40;
}

uint64_t re::ecs2::ECSManager::setSceneNetworkingMode(uint64_t a1, int a2)
{
  result = re::ecs2::SceneGroupCollection::sceneCount((a1 + 40));
  if (!result)
  {
    *(a1 + 424) = a2;
  }

  return result;
}

uint64_t re::ecs2::ECSManager::setDefaultCustomSystemTaskOptions(void *a1, float *a2)
{
  v4 = a1[4];
  if (v4)
  {
    v5 = a1[52];
    if (v5 != -1)
    {
      re::Scheduler::setTaskOptions(v4, v5, a2);
    }
  }

  return re::ecs2::SceneGroupCollection::setDefaultCustomSystemTaskOptions((a1 + 5), a2);
}

uint64_t re::ecs2::ECSManager::customSystemAtID(re::ecs2::ECSManager *this, int a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v3 = re::DataArray<re::ecs2::SceneGroup>::get(this + 160, *(this + 48));
  v4 = *(v3 + 144);
  if (!v4)
  {
    return 0;
  }

  v5 = *(v3 + 160);
  v6 = 8 * v4;
  while (*(*v5 + 28) != a2)
  {
    v5 += 8;
    v6 -= 8;
    if (!v6)
    {
      return 0;
    }
  }

  if (*(*v5 + 48) == 2)
  {
    return *v5;
  }

  else
  {
    return 0;
  }
}

uint64_t re::ecs2::ECSManager::sceneGroup(uint64_t a1, int a2)
{
  return re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2);
}

{
  return re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2);
}

void re::ecs2::ECSManager::enqueueComponentToMarkDirty(re::ecs2::ECSManager *this, const re::ecs2::Component *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = a2 + 8;
  }

  else
  {
    v3 = 0;
  }

  objc_initWeak(location, v3);
  v4 = *(this + 59);
  v5 = *(this + 55);
  if (v4 + 1 > 32 * v5)
  {
    re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::setBucketsCapacity(this + 54, (v4 + 32) >> 5);
    v5 = *(this + 55);
  }

  if (v5 <= v4 >> 5)
  {
    location[1] = 0;
    v21 = 0u;
    v22 = 0u;
    v19 = 0u;
    v20 = 0u;
    v18 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v10 = 136315906;
    v11 = "operator[]";
    v12 = 1024;
    v13 = 858;
    v14 = 2048;
    v15 = v4 >> 5;
    v16 = 2048;
    v17 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  if (*(this + 448))
  {
    v6 = this + 456;
  }

  else
  {
    v6 = *(this + 58);
  }

  v7 = *&v6[8 * (v4 >> 5)];
  ++*(this + 59);
  ++*(this + 120);
  v8 = (v7 + 8 * (v4 & 0x1F));
  *v8 = 0;
  objc_moveWeak(v8, location);
  objc_destroyWeak(location);
}

void re::ecs2::ECSManager::flushComponentToMarkDirtyQueue(re::ecs2::ECSManager *this)
{
  for (i = *(this + 59); i; i = *(this + 59))
  {
    v3 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](this + 432, i - 1);
    WeakRetained = objc_loadWeakRetained(v3);
    re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::removeLast(this + 432);
    if (WeakRetained)
    {
      if (*(WeakRetained + 16) == 1)
      {
        re::ecs2::Component::markDirty(WeakRetained - 1);
      }
    }
  }
}

void re::BucketArray<re::ArcWeakPtr<re::ecs2::Component>,32ul>::removeLast(uint64_t a1)
{
  v2 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, *(a1 + 40) - 1);
  objc_destroyWeak(v2);
  *v2 = 0;
  --*(a1 + 40);
  ++*(a1 + 48);
}

uint64_t re::ecs2::ECSManager::removeAndAddRealityRendererScenes(re::ecs2::ECSManager *this)
{
  v1 = this + 160;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v16, this + 160, 0);
  if (v1 != v16 || v17 != 0xFFFFFFFFLL)
  {
    do
    {
      v4 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v16);
      if (*(v4 + 8) == 2)
      {
        v5 = v4;
        v6 = *(v4 + 200);
        if (v6)
        {
          v7 = *(v4 + 216);
          v8 = &v7[v6];
          do
          {
            v9 = *(v5 + 144);
            if (v9)
            {
              v10 = *v7;
              v11 = *(v5 + 160);
              v12 = 8 * v9;
              do
              {
                v13 = *v11++;
                (*(*v13 + 56))(v13, v10);
                (*(*v13 + 48))(v13, v10);
                v12 -= 8;
              }

              while (v12);
            }

            ++v7;
          }

          while (v7 != v8);
        }
      }

      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v16);
    }

    while (v16 != v1 || v17 != 0xFFFF || WORD1(v17) != 0xFFFF);
  }

  return result;
}

void re::ecs2::ECSManager::destroySceneGroup(uint64_t a1, unint64_t a2)
{
  re::ecs2::ECSManager::clearScenes(a1, a2);
  re::DataArray<re::ecs2::SceneGroup>::destroy(a1 + 160, a2);
  *(a1 + 376) = 1;
}

void re::ecs2::ECSManager::clearScenes(uint64_t a1, uint64_t a2)
{
  v10 = a2;
  v3 = (a1 + 384);
  if ((a2 & 0xFFFFFF00000000) != 0)
  {
    v3 = &v10;
  }

  v4 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v3);
  v5 = *(v4 + 200);
  if (v5)
  {
    v6 = v4;
    do
    {
      v7 = *re::ecs2::EntityComponentCollection::operator[](v6 + 176, 0);
      v9 = v7;
      if (v7)
      {
        v8 = (v7 + 8);
        re::ecs2::ECSManager::removeScene(a1, &v9);
      }

      else
      {
        re::ecs2::ECSManager::removeScene(a1, &v9);
      }

      --v5;
    }

    while (v5);
  }
}

void re::ecs2::ECSManager::addScene(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v40 = a3;
  v3 = (a1 + 384);
  v4 = &v40;
  if ((a3 & 0xFFFFFF00000000) == 0)
  {
    v4 = (a1 + 384);
  }

  v5 = *v4;
  v6 = *(*a2 + 376);
  if (v6 == v5 && ((v6 ^ v5) & 0xFFFFFF00000000) == 0)
  {
    return;
  }

  v10 = v5;
  v11 = WORD1(v5);
  v12 = HIDWORD(v5);
  if ((v6 & 0xFFFFFF00000000) != 0)
  {
    re::ecs2::ECSManager::removeScene(a1, a2);
  }

  v14 = v5 == *v3 && WORD1(v5) == WORD1(*v3) && ((*v3 ^ v5) & 0xFFFFFF00000000) == 0;
  if (!v14 || !*(*a2 + 80))
  {
    goto LABEL_16;
  }

  re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v41, a1 + 160, 0);
  if (a1 + 160 == v41 && v42 == 0xFFFFFFFFLL)
  {
    goto LABEL_47;
  }

  while (1)
  {
    v21 = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::operator*(&v41);
    if (*(v21 + 8) == 1 && *(v21 + 200) != 0)
    {
      v23 = v21;
      v24 = re::ecs2::EntityComponentCollection::operator[](v21 + 176, 0);
      v25 = *(*v24 + 80);
      if (v25 == *(*a2 + 80))
      {
        break;
      }
    }

LABEL_37:
    re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v41);
    if (v41 == a1 + 160 && v42 == 0xFFFF && WORD1(v42) == 0xFFFF)
    {
      goto LABEL_47;
    }
  }

  if (v25)
  {
    v26 = *(*v24 + 96);
    v27 = v26 + 16 * v25;
    v28 = *(*a2 + 96);
    while (*v26 == *v28)
    {
      v29 = v28[1];
      if (*(v26 + 8) != v29 || *(v26 + 10) != WORD1(v29) || ((*(v26 + 12) ^ HIDWORD(v29)) & 0xFFFFFF) != 0)
      {
        break;
      }

      v26 += 16;
      v28 += 2;
      if (v26 == v27)
      {
        goto LABEL_46;
      }
    }

    goto LABEL_37;
  }

LABEL_46:
  v12 = *(v23 + 20);
  v10 = *(v23 + 16);
  v11 = HIWORD(*(v23 + 16));
LABEL_47:
  v32 = *v3;
  if (v10 == *v3 && v11 == WORD1(v32) && ((v12 ^ HIDWORD(v32)) & 0xFFFFFF) == 0)
  {
    SceneGroup = re::ecs2::SceneGroupCollection::createSceneGroup(a1 + 40, 1, *(a1 + 32));
    v34 = SceneGroup;
    v10 = SceneGroup;
    v11 = WORD1(SceneGroup);
    v12 = HIDWORD(SceneGroup);
    v35 = *(*a2 + 80);
    if (v35)
    {
      v36 = *(*a2 + 96);
      v37 = 16 * v35;
      do
      {
        v38 = re::ecs2::SystemRegistry::registerSystem(a1 + 48, v36);
        v39 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, v34);
        re::ecs2::SceneGroup::addSystem(v39, (a1 + 48), v38, 0xFFFFFFFF);
        v36 += 2;
        v37 -= 16;
      }

      while (v37);
    }
  }

LABEL_16:
  *(*a2 + 376) = (v11 << 16) | (v12 << 32) | v10;
  v15 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, (v11 << 16) | v10);
  v16 = v15 + 22;
  v17 = *a2;
  v18 = v15[25];
  v41 = v17;
  if (v17)
  {
    v19 = (v17 + 8);
  }

  (*(v15[22] + 24))(v16, v18, &v41);
  v20 = v15[25];
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v15 + 23, &v41);
  (*(v15[22] + 48))(v16, v20, &v41);
  if (v41)
  {
  }
}

uint64_t re::ecs2::ECSManager::removeScene(uint64_t a1, uint64_t *a2)
{
  v47 = *MEMORY[0x1E69E9840];
  v2 = *(*a2 + 376);
  if ((v2 & 0xFFFFFF00000000) == 0)
  {
    return 0;
  }

  v5 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *(*a2 + 376));
  v6 = v5;
  v7 = *a2;
  v8 = *(v5 + 216);
  v9 = *(v5 + 200);
  if (v9)
  {
    v10 = 8 * v9;
    for (i = *(v5 + 216); *i != v7; ++i)
    {
      v10 -= 8;
      if (!v10)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(v5 + 216);
  }

  if (i == (v8 + 8 * v9))
  {
    return 0;
  }

  v12 = (i - v8) >> 3;
  v13 = *(v5 + 208);
  v33[0] = *a2;
  if (v7)
  {
    v14 = (v7 + 8);
  }

  (*(*(v6 + 176) + 32))(v6 + 176, v12, v33);
  v15 = *(v6 + 208);
  v16 = *(v6 + 200);
  if (v13 != v15)
  {
    v17 = *(v6 + 216);
    if (v16)
    {
      v18 = 8 * v16;
      v19 = *(v6 + 216);
      while (*v19 != v33[0])
      {
        ++v19;
        v18 -= 8;
        if (!v18)
        {
          goto LABEL_29;
        }
      }
    }

    else
    {
      v19 = *(v6 + 216);
    }

    if (v19 == (v17 + 8 * v16))
    {
LABEL_29:
      v28 = 0;
      goto LABEL_30;
    }

    v12 = (v19 - v17) >> 3;
  }

  if (v16 <= v12)
  {
    v33[1] = 0;
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    v42 = 0u;
    v32 = v16;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v34 = 136315906;
    v35 = "removeStableAt";
    v36 = 1024;
    v37 = 969;
    v38 = 2048;
    v39 = v12;
    v40 = 2048;
    v41 = v32;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v20 = v16 - 1;
  v21 = *(v6 + 216);
  if (v16 - 1 > v12)
  {
    v22 = (v21 + 8 * v12);
    v23 = v22 + 1;
    if (v22 + 1 != (v21 + 8 * v16))
    {
      v24 = *v22;
      v25 = 8 * v16 - 8 * v12 - 8;
      do
      {
        *(v23 - 1) = *v23;
        *v23++ = v24;
        v25 -= 8;
      }

      while (v25);
      v21 = *(v6 + 216);
    }
  }

  v26 = v21 + 8 * v16;
  v27 = *(v26 - 8);
  if (v27)
  {

    *(v26 - 8) = 0;
    v20 = *(v6 + 200) - 1;
    v15 = *(v6 + 208);
  }

  *(v6 + 200) = v20;
  *(v6 + 208) = v15 + 1;
  (*(*(v6 + 176) + 56))(v6 + 176, v12, v33);
  v28 = 1;
LABEL_30:
  if (v33[0])
  {
  }

  if (!v28)
  {
    return 0;
  }

  *(*a2 + 376) = 0xFFFFFFFFLL;
  v29 = *(a1 + 384);
  if (v2 == v29 && ((v29 ^ v2) & 0xFFFFFF00000000) == 0 || !*(*a2 + 80))
  {
    return 1;
  }

  v30 = 1;
  if (!*(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, v2) + 200))
  {
    re::ecs2::ECSManager::clearScenes(a1, v2);
    re::DataArray<re::ecs2::SceneGroup>::destroy(a1 + 160, v2);
    *(a1 + 376) = 1;
  }

  return v30;
}

void re::ecs2::ECSManager::insertScene(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = a4;
  v6 = (a1 + 384);
  if ((a4 & 0xFFFFFF00000000) != 0)
  {
    v6 = &v27;
  }

  v7 = *v6;
  *(*a3 + 376) = *v6;
  v8 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, v7);
  v9 = v8 + 176;
  v10 = *a3;
  v28[0] = v10;
  if (v10)
  {
    v11 = (v10 + 8);
  }

  v12 = (*(*(v8 + 176) + 24))(v9, a2, v28);
  v13 = *(v8 + 200);
  if (v13 >= a2)
  {
    v15 = v13 + 1;
    if (v13 + 1 <= a2)
    {
      v28[1] = 0;
      memset(buf, 0, sizeof(buf));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v29 = 136315906;
      v30 = "insert";
      v31 = 1024;
      v32 = 855;
      v33 = 2048;
      v34 = a2;
      v35 = 2048;
      v36 = v15;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (v13 >= *(v8 + 192))
    {
      re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::growCapacity((v8 + 184), v13 + 1);
      v13 = *(v8 + 200);
    }

    v16 = *(v8 + 216);
    v17 = (v16 + 8 * v13);
    if (v13 <= a2)
    {
      v25 = v28[0];
      *v17 = v28[0];
      if (v25)
      {
        v26 = (v25 + 8);
      }
    }

    else
    {
      *v17 = *(v17 - 1);
      *(v17 - 1) = 0;
      if (v17 - 1 != (v16 + 8 * a2))
      {
        v18 = *(v17 - 1);
        v19 = v17 - 2;
        v20 = 8 * a2 - 8 * v13 + 8;
        do
        {
          v21 = *v19;
          *v19 = v18;
          v19[1] = v21;
          --v19;
          v20 += 8;
        }

        while (v20);
        v16 = *(v8 + 216);
      }

      v22 = v28[0];
      v23 = *(v16 + 8 * a2);
      if (v23 != v28[0])
      {
        if (v28[0])
        {
          v24 = (v28[0] + 8);
          v23 = *(v16 + 8 * a2);
        }

        if (v23)
        {
        }

        *(v16 + 8 * a2) = v22;
      }
    }

    ++*(v8 + 200);
    ++*(v8 + 208);
    (*(*(v8 + 176) + 48))(v9, a2, v28);
  }

  else
  {
    v14 = *re::foundationCoreLogObjects(v12);
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      LODWORD(buf[0]) = 136315394;
      *(buf + 4) = "void re::Collection<re::SharedPtr<re::ecs2::Scene>>::insert(size_t, const T &) [T = re::SharedPtr<re::ecs2::Scene>]";
      WORD6(buf[0]) = 2048;
      *(buf + 14) = a2;
      _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "%s: index %zu invalid after willInsert(), not inserting", buf, 0x16u);
    }
  }

  if (v28[0])
  {
  }
}

void re::ecs2::ECSManager::removeSceneAt(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v10 = a3;
  v5 = (a1 + 384);
  if ((a3 & 0xFFFFFF00000000) != 0)
  {
    v5 = &v10;
  }

  v6 = re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v5);
  v7 = *re::ecs2::EntityComponentCollection::operator[](v6 + 176, a2);
  v9 = v7;
  if (v7)
  {
    v8 = (v7 + 8);
    re::ecs2::ECSManager::removeScene(a1, &v9);
  }

  else
  {
    re::ecs2::ECSManager::removeScene(a1, &v9);
  }
}

uint64_t re::ecs2::ECSManager::clearAllScenes(re::ecs2::ECSManager *this)
{
  v1 = this + 160;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(&v8, this + 160, 0);
  if (v1 != v8 || v9 != 0xFFFFFFFFLL)
  {
    do
    {
      v4 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v8);
      v5 = re::DataArray<re::ecs2::SceneGroup>::get(v1, v4);
      re::ecs2::SceneGroup::clearScenes(v5);
      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v8);
    }

    while (v8 != v1 || v9 != 0xFFFF || WORD1(v9) != 0xFFFF);
  }

  return result;
}

uint64_t re::ecs2::ECSManager::scenes(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = (a1 + 384);
  if ((a2 & 0xFFFFFF00000000) != 0)
  {
    v2 = &v4;
  }

  return re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, *v2) + 176;
}

uint64_t re::ecs2::ECSManager::activeScenes(re::ecs2::ECSManager *this)
{
  v3 = *(this + 49);
  v1 = &v3;
  if ((v3 & 0xFFFFFF00000000) == 0)
  {
    v1 = (this + 384);
  }

  return re::DataArray<re::ecs2::SceneGroup>::get(this + 160, *v1) + 176;
}

uint64_t re::ecs2::ECSManager::scheduler(uint64_t a1, int a2)
{
  return *(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2) + 72);
}

{
  return *(re::DataArray<re::ecs2::SceneGroup>::get(a1 + 160, a2) + 72);
}

uint64_t re::ecs2::SceneGroupCollection::SceneGroupCollection(uint64_t a1, uint64_t a2)
{
  *a1 = a2;
  v3 = re::ecs2::SystemRegistry::SystemRegistry((a1 + 8));
  *(a1 + 184) = 0;
  *(a1 + 188) = 0u;
  *(a1 + 204) = 0u;
  *(a1 + 220) = 0;
  *(a1 + 228) = 0x7FFFFFFFLL;
  *(a1 + 248) = 0;
  *(a1 + 256) = 0;
  *(a1 + 240) = 0;
  *(a1 + 264) = 0;
  *(a1 + 312) = 0;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0;
  *(a1 + 320) = 515;
  *(a1 + 324) = 1023969417;
  *(a1 + 328) = 0;
  re::ecs2::CustomSystemRegistry::init((a1 + 184));
  *(a1 + 336) = 0;
  return a1;
}

uint64_t re::DataArray<re::ecs2::SceneGroup>::DataArray(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 52) = 0x1FFFFFFFFLL;
  *a1 = a2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 44) = a3;
  re::DataArray<re::ecs2::SceneGroup>::allocBlock(a1);
  return a1;
}

re::ecs2::SystemRegistry *re::ecs2::SystemRegistry::SystemRegistry(re::ecs2::SystemRegistry *this)
{
  *(this + 24) = 0;
  *(this + 5) = 0u;
  *(this + 4) = 0u;
  *(this + 100) = 0x7FFFFFFFLL;
  return this;
}

uint64_t re::DataArray<re::SharedPtr<re::ecs2::System>>::DataArray(uint64_t a1, uint64_t a2, int a3)
{
  *(a1 + 24) = 0;
  *(a1 + 8) = 0u;
  *(a1 + 48) = 0;
  *(a1 + 32) = 0u;
  *(a1 + 52) = 0x1FFFFFFFFLL;
  *a1 = a2;
  re::DynamicArray<re::RigNodeConstraint>::setCapacity(a1, 0);
  ++*(a1 + 24);
  *(a1 + 44) = a3;
  re::DataArray<re::SharedPtr<re::ecs2::System>>::allocBlock(a1);
  return a1;
}

void re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::operator()()
{
  v0 = re::internal::enableSignposts(0, 0);
  if (v0)
  {
    v0 = kdebug_trace();
  }

  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v0);
  if (isStatisticCollectionEnabled)
  {
    v2 = re::profilerThreadContext(isStatisticCollectionEnabled);

    re::ProfilerThreadContext::pushTimeScope(v2);
  }
}

void *re::internal::Callable<re::ecs2::ECSManager::configurePreparePhase(re::DataArrayHandle<re::ecs2::SceneGroup>,re::Scheduler::ScheduleDescriptor &,unsigned long)::$_0,void ()(float)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5D01E98;
  a2[1] = v2;
  return a2;
}