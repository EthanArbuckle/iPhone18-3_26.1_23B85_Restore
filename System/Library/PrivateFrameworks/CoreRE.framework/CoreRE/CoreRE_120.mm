uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3860;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3860;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::ecs2::allocInfo_UIGroundingShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB280, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB280))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB288, "UIGroundingShadowComponent");
    __cxa_guard_release(&qword_1EE1AB280);
  }

  return &unk_1EE1AB288;
}

void re::ecs2::initInfo_UIGroundingShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x53C0B058511FFECLL;
  v10[1] = "UIGroundingShadowComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AB278, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AB278);
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
      _MergedGlobals_295 = v8;
      __cxa_guard_release(&qword_1EE1AB278);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &_MergedGlobals_295;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UIGroundingShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UIGroundingShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UIGroundingShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UIGroundingShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226UIGroundingShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::internal::defaultDestruct<re::ecs2::UIGroundingShadowComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_destroyWeak((a3 + 40));
  *(a3 + 40) = 0;
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::UIGroundingShadowComponent>(uint64_t a1)
{
  objc_destroyWeak((a1 + 40));
  *(a1 + 40) = 0;
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

ArcSharedObject *re::make::shared::unsafelyInplace<re::ecs2::UIGroundingShadowComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE7788;
  *(v2 + 32) = 0;
  objc_initWeak((v2 + 40), 0);
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226UIGroundingShadowComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::RenderCallbacksComponent *re::ecs2::RenderCallbacksComponent::RenderCallbacksComponent(re::ecs2::RenderCallbacksComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF38B8;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 76) = 0u;
  *(v2 + 92) = 0x7FFFFFFFLL;
  *(v2 + 136) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 128) = 0;
  *(v2 + 104) = 0;
  v3 = (v2 + 104);
  *(v2 + 144) = 0;
  v4 = re::globalAllocators(v2);
  re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(this + 56, v4[2], 16);
  *v3 = re::globalAllocators(v5)[2];
  re::DynamicArray<re::EvaluationRegisterId<int>>::setCapacity(v3, 0x10uLL);
  ++*(this + 32);
  return this;
}

void re::ecs2::RenderCallbacksSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v41 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  if (v4 && (*(v4 + 432) & 0x10) == 0)
  {
    return;
  }

  v5 = *(a3 + 200);
  if (!v5)
  {
    return;
  }

  v6 = *(a3 + 216);
  v7 = &v6[v5];
  v8 = &unk_1EE187000;
  v36 = v7;
  do
  {
    v9 = *(v3 + 232);
    if (!v9)
    {
      re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 39);
      _os_crash();
      __break(1u);
    }

    v10 = *v6;
    v11 = *(v9 + 112);
    if (v11)
    {
      v12 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
    }

    else
    {
      v12 = 0;
    }

    v13 = re::ecs2::SceneComponentTable::get((v10 + 25), v8[476]);
    if (!v13)
    {
      goto LABEL_38;
    }

    v14 = *(v13 + 384);
    if (!v14)
    {
      goto LABEL_38;
    }

    v15 = *(v13 + 400);
    if (v14 != 1)
    {
      v16 = *re::graphicsLogObjects(v13);
      v13 = os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT);
      if (v13)
      {
        v17 = v16;
        v18 = v10[5];
        *buf = 136315394;
        *&buf[4] = "updateSceneInternal";
        *&buf[12] = 2080;
        *&buf[14] = v18;
        _os_log_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_DEFAULT, "%s: more than 1 RenderCallbacksComponent found on scene: %s.Only first component will be processed.\n", buf, 0x16u);
      }
    }

    v19 = *v15;
    if ((*(v19 + 144) & 1) == 0)
    {
      v20 = *(v19 + 48);
      if (v20)
      {
        if (!*(v3 + 232))
        {
          v34 = *re::graphicsLogObjects(v13);
          v3 = a1;
          v7 = v36;
          v8 = &unk_1EE187000;
          if (os_log_type_enabled(v34, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 136315138;
            *&buf[4] = "updateSceneInternal";
            _os_log_impl(&dword_1E1C61000, v34, OS_LOG_TYPE_DEFAULT, "%s: invalid RenderManager.\n", buf, 0xCu);
          }

          goto LABEL_38;
        }

        v21 = v20;
        v20[2]();

        *(v19 + 144) = 1;
        v3 = a1;
      }
    }

    v22 = (*(**(v3 + 256) + 24))(*(v3 + 256));
    (*(*v22 + 8))(buf);
    if (buf[0])
    {
      v23 = *&buf[8];
    }

    else
    {
      v23 = 0;
    }

    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v10, v23, v12, &v38);
    memset(buf, 0, sizeof(buf));
    v40 = 0x7FFFFFFFLL;
    if (!*(v19 + 32))
    {
      goto LABEL_34;
    }

    re::ObjCObject::operator=(buf, (v19 + 32));
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(&buf[8], v19 + 56);
    v24 = *(v19 + 120);
    if (!v24)
    {
      goto LABEL_33;
    }

    v25 = *(v19 + 136);
    v26 = &v25[v24];
    do
    {
      v27 = *v25;
      v37 = v27;
      v28 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
      v29 = v28 ^ (v28 >> 31);
      if (!*&buf[32])
      {
        LODWORD(v30) = 0;
LABEL_30:
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(&buf[8], v30, v29, &v37, &v37);
        ++HIDWORD(v40);
        goto LABEL_31;
      }

      v30 = v29 % *&buf[32];
      v31 = *(*&buf[16] + 4 * v30);
      if (v31 == 0x7FFFFFFF)
      {
        goto LABEL_30;
      }

      while (*(*&buf[24] + 24 * v31 + 16) != v27)
      {
        LODWORD(v31) = *(*&buf[24] + 24 * v31 + 8) & 0x7FFFFFFF;
        if (v31 == 0x7FFFFFFF)
        {
          goto LABEL_30;
        }
      }

LABEL_31:
      ++v25;
    }

    while (v25 != v26);
    *(v19 + 120) = 0;
    ++*(v19 + 128);
LABEL_33:
    v37 = v38 >> 1;
    v32 = **(re::RenderFrameData::stream((v12 + 33), &v37) + 48);
    (*(v32 + 1032))();
LABEL_34:
    re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(&buf[8]);

    if (v38)
    {
      if (v38)
      {
      }
    }

    v7 = v36;
    v8 = &unk_1EE187000;
LABEL_38:
    ++v6;
  }

  while (v6 != v7);
}

void *re::ecs2::allocInfo_RenderCallbacksComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_296, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_296))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB338, "RenderCallbacksComponent");
    __cxa_guard_release(&_MergedGlobals_296);
  }

  return &unk_1EE1AB338;
}

void re::ecs2::initInfo_RenderCallbacksComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xD3BBB33D62F7084ALL;
  v10[1] = "RenderCallbacksComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AB328, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AB328);
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
      qword_1EE1AB320 = v8;
      __cxa_guard_release(&qword_1EE1AB328);
    }
  }

  *(this + 2) = 0x9800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AB320;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderCallbacksComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderCallbacksComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderCallbacksComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderCallbacksComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224RenderCallbacksComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void *re::ecs2::allocInfo_RenderCallbacksSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB330, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB330))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB3C8, "RenderCallbacksSystem");
    __cxa_guard_release(&qword_1EE1AB330);
  }

  return &unk_1EE1AB3C8;
}

void re::ecs2::initInfo_RenderCallbacksSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xD5A6B6E0F52B380ELL;
  v6[1] = "RenderCallbacksSystem";
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
  *(this + 8) = &re::ecs2::initInfo_RenderCallbacksSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RenderCallbacksSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RenderCallbacksSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::RenderCallbacksSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::RenderCallbacksSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RenderCallbacksSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RenderCallbacksSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::RenderCallbacksSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v3 = &unk_1F5CF3910;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::RenderCallbacksSystem>(uint64_t a1)
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
  *v1 = &unk_1F5CF3910;
  return result;
}

void re::ecs2::RenderCallbacksSystem::~RenderCallbacksSystem(re::ecs2::RenderCallbacksSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::RenderCallbacksComponent::~RenderCallbacksComponent(re::ecs2::RenderCallbacksComponent *this)
{
  *this = &unk_1F5CF38B8;
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 7);

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF38B8;
  re::DynamicArray<unsigned long>::deinit(this + 104);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 7);

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
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

      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 24;
    }
  }
}

void re::HashSetBase<unsigned long,unsigned long,re::internal::ValueAsKey<unsigned long>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_40, 4 * v2);
    }

    v3 = *(a1 + 32);
    if (v3)
    {
      v4 = 8;
      do
      {
        v5 = *(a1 + 16);
        v6 = *(v5 + v4);
        if (v6 < 0)
        {
          *(v5 + v4) = v6 & 0x7FFFFFFF;
        }

        v4 += 24;
        --v3;
      }

      while (v3);
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v7 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v7;
  }
}

void _ZZN2re8internal15setIntroVersionINS_4ecs224RenderCallbacksComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

__n128 re::PeerVideoStreamingEncoder::operator=(__int128 *a1, __int128 *a2)
{
  if (a2 != a1)
  {
    v2 = *a1;
    v3 = *(a1 + 2);
    v4 = *(a2 + 4);
    *a1 = *a2;
    *(a1 + 4) = v4;
    *(a2 + 4) = v3;
    *a2 = v2;
    v5 = *(a1 + 3);
    *(a1 + 3) = *(a2 + 3);
    *(a2 + 3) = v5;
    result = a1[2];
    v7 = *(a1 + 6);
    v8 = *(a2 + 12);
    a1[2] = a2[2];
    *(a1 + 12) = v8;
    *(a2 + 12) = v7;
    a2[2] = result;
    v9 = *(a1 + 7);
    v10 = *(a1 + 8);
    v11 = *(a2 + 8);
    *(a1 + 7) = *(a2 + 7);
    *(a1 + 8) = v11;
    *(a2 + 7) = v9;
    *(a2 + 8) = v10;
  }

  return result;
}

void re::PeerVideoStreamingEncoder::~PeerVideoStreamingEncoder(re::PeerVideoStreamingEncoder *this)
{
  v2 = *(this + 3);
  if (v2)
  {
    VTCompressionSessionInvalidate(*(this + 3));
    CFRelease(v2);
    *(this + 3) = 0;
  }

  v3 = *(this + 7);
  if (v3)
  {
    CVPixelBufferPoolRelease(v3);
    *(this + 7) = 0;
  }
}

void re::PeerVideoStreamingEncoder::createPixelBufferFromPool(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 56);
  if (v5)
  {
    if (*a2 == *(a1 + 32) && *(a2 + 8) == *(a1 + 40) && *(a2 + 16) == *(a1 + 48))
    {
      goto LABEL_18;
    }

    v6 = *a2;
    *(a1 + 48) = *(a2 + 16);
    *(a1 + 32) = v6;
    CVPixelBufferPoolRelease(v5);
    *(a1 + 56) = 0;
  }

  else
  {
    v7 = *a2;
    *(a1 + 48) = *(a2 + 16);
    *(a1 + 32) = v7;
  }

  v8 = re::PeerVideoStreamingUtils::cvPixelFormatFromMTLPixelFormat(*(a1 + 48), a2);
  *v34 = *MEMORY[0x1E6966208];
  v9 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 32)];
  *pixelBufferOut = v9;
  v35 = *MEMORY[0x1E69660B8];
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedLong:*(a1 + 40)];
  *&pixelBufferOut[8] = v10;
  v36 = *MEMORY[0x1E6966130];
  v11 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v8];
  v37 = *MEMORY[0x1E6966100];
  *&pixelBufferOut[16] = v11;
  v29 = MEMORY[0x1E695E118];
  v12 = [MEMORY[0x1E695DF20] dictionaryWithObjects:pixelBufferOut forKeys:v34 count:4];

  poolOut = 0;
  v13 = CVPixelBufferPoolCreate(0, 0, v12, &poolOut);
  if (v13)
  {
    v14 = v13;
    v15 = *re::peerVideoStreamingLogObjects(v13);
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v33 = v14;
      _os_log_error_impl(&dword_1E1C61000, v15, OS_LOG_TYPE_ERROR, "Error creating pixel buffer pool. errCode: %d", buf, 8u);
    }

    *(a1 + 56) = 0;
  }

  else
  {
    v5 = poolOut;

    *(a1 + 56) = v5;
    if (v5)
    {
      goto LABEL_18;
    }
  }

  v17 = *re::peerVideoStreamingLogObjects(v16);
  v18 = os_log_type_enabled(v17, OS_LOG_TYPE_ERROR);
  if (v18)
  {
    v24 = *(a1 + 32);
    v25 = *(a1 + 40);
    v26 = *(a1 + 48);
    *pixelBufferOut = 134218752;
    *&pixelBufferOut[4] = a1;
    *&pixelBufferOut[12] = 2048;
    *&pixelBufferOut[14] = v24;
    *&pixelBufferOut[22] = 2048;
    v29 = v25;
    v30 = 1024;
    v31 = v26;
    _os_log_error_impl(&dword_1E1C61000, v17, OS_LOG_TYPE_ERROR, "Invalid pixel buffer pool for encoder 0x%p, w:%zu, h:%zu, format:%d", pixelBufferOut, 0x26u);
  }

  v5 = *(a1 + 56);
  if (!v5)
  {
    v19 = *re::peerVideoStreamingLogObjects(v18);
    if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
    {
      *pixelBufferOut = 0;
      _os_log_error_impl(&dword_1E1C61000, v19, OS_LOG_TYPE_ERROR, "Could not create pixel buffer because could not create a pixel buffer pool", pixelBufferOut, 2u);
    }

    *a3 = 0;
    return;
  }

LABEL_18:
  *pixelBufferOut = 0;
  PixelBuffer = CVPixelBufferPoolCreatePixelBuffer(0, v5, pixelBufferOut);
  if (PixelBuffer)
  {
    v21 = PixelBuffer;
    v22 = *re::peerVideoStreamingLogObjects(PixelBuffer);
    if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
    {
      *v34 = 67109120;
      *&v34[4] = v21;
      _os_log_error_impl(&dword_1E1C61000, v22, OS_LOG_TYPE_ERROR, "Failed to create CVPixelBuffer, errCode: %d", v34, 8u);
    }

    v23 = 0;
  }

  else
  {
    v23 = *pixelBufferOut;
  }

  *a3 = v23;
}

void re::PeerVideoStreamingEncoder::encodeFrame(CMTimeValue a1, CVPixelBufferRef *a2, uint64_t a3, uint64_t a4, id *a5)
{
  v77 = *MEMORY[0x1E69E9840];
  v10 = re::internal::enableSignposts(0, 0);
  if (v10)
  {
    v10 = re::internal::enableHighFrequencyNetworkTracing(0, 0);
    if (v10)
    {
      v10 = kdebug_trace();
    }
  }

  if (!*a2)
  {
    v12 = *re::peerVideoStreamingLogObjects(v10);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LOWORD(v73.value) = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Invalid arg to encodeFrame: pixelBuffer is nullptr", &v73, 2u);
    }

    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      goto LABEL_25;
    }

    return;
  }

  re::VideoBufferInfo::VideoBufferInfo(&v59, *a2);
  v11 = *(a1 + 24);
  if (v11)
  {
    if (v59 == *a1 && v60 == *(a1 + 16))
    {
      goto LABEL_52;
    }

    *a1 = v59;
    *(a1 + 16) = v60;
    VTCompressionSessionInvalidate(v11);
    CFRelease(v11);
  }

  else
  {
    *a1 = v59;
    *(a1 + 16) = v60;
  }

  duration.value = *MEMORY[0x1E6984270];
  presentationTimeStamp.value = MEMORY[0x1E695E118];
  v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&presentationTimeStamp forKeys:&duration count:1];
  session = 0;
  v14 = VTCompressionSessionCreate(0, *a1, *(a1 + 8), 0x6D757861u, v13, 0, 0, 0, 0, &session);
  v15 = v14;
  v16 = *re::peerVideoStreamingLogObjects(v14);
  if (v15)
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
    {
      v57 = v16;
      re::VideoBufferInfo::debugStr(a1, &v73);
      v58 = (v73.timescale & 1) != 0 ? v73.epoch : (&v73.timescale + 1);
      LODWORD(buf.value) = 67109378;
      HIDWORD(buf.value) = v15;
      LOWORD(buf.timescale) = 2080;
      *(&buf.timescale + 2) = v58;
      _os_log_error_impl(&dword_1E1C61000, v57, OS_LOG_TYPE_ERROR, "Error creating compression session, errCode: %d. Info: %s", &buf, 0x12u);

      if (v73.value)
      {
        if (v73.timescale)
        {
          (*(*v73.value + 40))();
        }
      }
    }

    *(a1 + 24) = 0;
  }

  else
  {
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      v21 = v16;
      re::VideoBufferInfo::debugStr(a1, &v73);
      v22 = (v73.timescale & 1) != 0 ? v73.epoch : (&v73.timescale + 1);
      LODWORD(buf.value) = 136315138;
      *(&buf.value + 4) = v22;
      _os_log_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_DEFAULT, "Created compression session with info: %s", &buf, 0xCu);

      if (v73.value)
      {
        if (v73.timescale)
        {
          (*(*v73.value + 40))();
        }
      }
    }

    v23 = *MEMORY[0x1E695E4C0];
    v24 = VTSessionSetProperty(session, *MEMORY[0x1E6983518], *MEMORY[0x1E695E4C0]);
    if (v24)
    {
      v25 = v24;
      v26 = *re::peerVideoStreamingLogObjects(v24);
      if (os_log_type_enabled(v26, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v25;
        _os_log_error_impl(&dword_1E1C61000, v26, OS_LOG_TYPE_ERROR, "Failed to disable frame reordering, errCode: %d", &v73, 8u);
      }
    }

    v27 = VTSessionSetProperty(session, *MEMORY[0x1E6983860], v23);
    if (v27)
    {
      v28 = v27;
      v29 = *re::peerVideoStreamingLogObjects(v27);
      if (os_log_type_enabled(v29, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v28;
        _os_log_error_impl(&dword_1E1C61000, v29, OS_LOG_TYPE_ERROR, "Failed to disable throttling, errCode: %d", &v73, 8u);
      }
    }

    v30 = *MEMORY[0x1E695E4D0];
    v31 = VTSessionSetProperty(session, *MEMORY[0x1E69837F0], *MEMORY[0x1E695E4D0]);
    if (v31)
    {
      v32 = v31;
      v33 = *re::peerVideoStreamingLogObjects(v31);
      if (os_log_type_enabled(v33, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v32;
        _os_log_error_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_ERROR, "Failed to enable real time compression, errCode: %d", &v73, 8u);
      }
    }

    v34 = VTSessionSetProperty(session, *MEMORY[0x1E6983700], &unk_1F5D42A08);
    if (v34)
    {
      v35 = v34;
      v36 = *re::peerVideoStreamingLogObjects(v34);
      if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v35;
        _os_log_error_impl(&dword_1E1C61000, v36, OS_LOG_TYPE_ERROR, "Failed to set make keyframe interval duration, errCode: %d", &v73, 8u);
      }
    }

    v37 = VTSessionSetProperty(session, *MEMORY[0x1E6983530], v30);
    if (v37)
    {
      v38 = v37;
      v39 = *re::peerVideoStreamingLogObjects(v37);
      if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v38;
        _os_log_error_impl(&dword_1E1C61000, v39, OS_LOG_TYPE_ERROR, "Failed to enable temporal compression, errCode: %d", &v73, 8u);
      }
    }

    v40 = VTCompressionSessionPrepareToEncodeFrames(session);
    if (v40)
    {
      v41 = v40;
      v42 = *re::peerVideoStreamingLogObjects(v40);
      if (os_log_type_enabled(v42, OS_LOG_TYPE_ERROR))
      {
        LODWORD(v73.value) = 67109120;
        HIDWORD(v73.value) = v41;
        _os_log_error_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_ERROR, "Error preparing compression session: %d", &v73, 8u);
      }
    }

    v11 = session;

    *(a1 + 24) = v11;
    if (v11)
    {
      goto LABEL_52;
    }
  }

  v18 = *re::peerVideoStreamingLogObjects(v17);
  v19 = os_log_type_enabled(v18, OS_LOG_TYPE_ERROR);
  if (v19)
  {
    v54 = *a1;
    v55 = *(a1 + 8);
    v56 = *(a1 + 16);
    LODWORD(v73.value) = 134218752;
    *(&v73.value + 4) = a1;
    LOWORD(v73.flags) = 2048;
    *(&v73.flags + 2) = v54;
    HIWORD(v73.epoch) = 2048;
    v74 = v55;
    v75 = 1024;
    v76 = v56;
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, "Invalid compression session for encoder 0x%p, w:%zu, h:%zu, format:%d", &v73, 0x26u);
  }

  v11 = *(a1 + 24);
  if (v11)
  {
LABEL_52:
    v43 = *(a1 + 64);
    *(a1 + 64) = v43 + 1;
    v44 = applesauce::dispatch::v1::queue::get(a5);
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 3321888768;
    aBlock[2] = ___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke;
    aBlock[3] = &unk_1F5CF39F8;
    v69 = a1;
    v70 = a2;
    v71 = v43;
    v45 = v44;
    v46 = *(a4 + 24);
    v68 = v45;
    v72[3] = v46;
    v72[4] = 0;
    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(v72, a4);
    v47 = _Block_copy(aBlock);
    v65 = *MEMORY[0x1E6983BD8];
    v48 = [MEMORY[0x1E696AD98] numberWithBool:a3];
    v66 = v48;
    v49 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v66 forKeys:&v65 count:1];

    memset(&v73, 0, sizeof(v73));
    CMTimeMake(&v73, v43, 1);
    memset(&buf, 0, sizeof(buf));
    CMTimeMake(&buf, 1, 90);
    v50 = *a2;
    presentationTimeStamp = v73;
    duration = buf;
    v51 = VTCompressionSessionEncodeFrameWithOutputHandler(v11, v50, &presentationTimeStamp, &duration, v49, 0, v47);
    if (v51)
    {
      v52 = v51;
      v53 = *re::peerVideoStreamingLogObjects(v51);
      if (os_log_type_enabled(v53, OS_LOG_TYPE_ERROR))
      {
        LODWORD(presentationTimeStamp.value) = 67109120;
        HIDWORD(presentationTimeStamp.value) = v52;
        _os_log_error_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_ERROR, "Failed to encode frame, errCode %d", &presentationTimeStamp, 8u);
      }
    }

    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(v72);
    return;
  }

  v20 = *re::peerVideoStreamingLogObjects(v19);
  if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
  {
    LOWORD(v73.value) = 0;
    _os_log_error_impl(&dword_1E1C61000, v20, OS_LOG_TYPE_ERROR, "Could not create compression session for encodeFrame", &v73, 2u);
  }

  if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
  {
LABEL_25:
    kdebug_trace();
  }
}

uint64_t (***___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke(re *a1, int a2, char a3, CFTypeRef cf))(void)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      LODWORD(v16) = a2;
      _os_log_error_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_ERROR, "CompressionOutputHandler. Failed with errCode: %d", buf, 8u);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        return kdebug_trace();
      }
    }
  }

  else if ((a3 & 2) != 0)
  {
    v10 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      v11 = *(a1 + 7);
      *buf = 134217984;
      v16 = v11;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_DEFAULT, "Encoder dropped frame with timestamp %lld", buf, 0xCu);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        return kdebug_trace();
      }
    }
  }

  else if (cf)
  {
    CFRetain(cf);
    v9 = *(a1 + 4);
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3321888768;
    v13[2] = ___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke_1;
    v13[3] = &__block_descriptor_80_a8_32c46_ZTSN2re8FunctionIFvP20opaqueCMSampleBufferEEE_e5_v8__0l;
    v14[3] = *(a1 + 11);
    v14[4] = 0;
    re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(v14, a1 + 64);
    v14[5] = cf;
    dispatch_async(v9, v13);
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      kdebug_trace();
    }

    return re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::destroyCallable(v14);
  }

  else
  {
    v12 = *re::peerVideoStreamingLogObjects(a1);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "CMSampleBuffer for encoded frame is null.", buf, 2u);
    }

    result = re::internal::enableSignposts(0, 0);
    if (result)
    {
      result = re::internal::enableHighFrequencyNetworkTracing(0, 0);
      if (result)
      {
        return kdebug_trace();
      }
    }
  }

  return result;
}

void ___ZN2re25PeerVideoStreamingEncoder11encodeFrameERKNS_15InputVideoFrameEbNS_8FunctionIFvP20opaqueCMSampleBufferEEEN10applesauce8dispatch2v15queueE_block_invoke_1(uint64_t a1)
{
  v3 = a1 + 64;
  v2 = *(a1 + 64);
  v4 = *(v3 + 8);
  (*(*v2 + 16))(v2, &v4);
  CFRelease(*(a1 + 72));
}

uint64_t __copy_helper_block_a8_32c46_ZTSN2re8FunctionIFvP20opaqueCMSampleBufferEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 64) = 0;
  return re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(a1 + 32, a2 + 32);
}

uint64_t __copy_helper_block_a8_64c46_ZTSN2re8FunctionIFvP20opaqueCMSampleBufferEEE(uint64_t a1, uint64_t a2)
{
  *(a1 + 88) = *(a2 + 88);
  *(a1 + 96) = 0;
  return re::FunctionBase<24ul,void ()(opaqueCMSampleBuffer *)>::operator=<24ul>(a1 + 64, a2 + 64);
}

float32x4_t re::ecs2::MeshComponentHelper::computeEntityMeshBounds@<Q0>(uint64_t a1@<X0>, int a2@<W1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  if (a1)
  {
    v6 = a4;
    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
    if (!a4 || (a4 & ~*(a1 + 304)) == 0)
    {
      if (a2)
      {
        if (*(a1 + 344))
        {
        }
      }
    }
  }

  else
  {
    v11 = *re::ecsCoreLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Null entity passed to computeEntityMeshBoundsAnchored!", v12, 2u);
    }

    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
  }

  return result;
}

void anonymous namespace::extendBounds(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  v5 = a1;
  v63 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 192);
  v7 = re::ecs2::EntityComponentCollection::get((a1 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v8 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::InstanceGroupBoundsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v9 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v9)
  {
    re::ecs2::VideoPlayerComponent::getBounds(v9, v56);
    re::AABB::transform(v56, a2, &v58);
    v10 = *a3;
    v11 = a3[1];
    v10.i32[3] = 0;
    v12 = v58;
    v13 = v59;
    v12.i32[3] = 0;
    v11.i32[3] = 0;
    v13.i32[3] = 0;
    *a3 = vminnmq_f32(v10, v12);
    a3[1] = vmaxnmq_f32(v11, v13);
  }

  if (v6)
  {
    v14 = re::AssetHandle::loadedAsset<re::MeshAsset>((v6 + 32));
    if (v14)
    {
      if (v8)
      {
        re::ecs2::InstanceGroupBoundsComponent::computeObjectBoundsUncached(v8, &v58);
        re::AABB::transform(&v58, a2, v56);
        v16 = *a3;
        v15 = a3[1];
        v16.i32[3] = 0;
        v17 = *v56;
        v18 = *&v56[16];
      }

      else
      {
        if (v7)
        {
          v19 = v5;
          do
          {
            v20 = v19;
            v19 = *(v19 + 32);
          }

          while (v19);
          if (*(v20 + 24))
          {
            do
            {
              v21 = v5;
              v5 = *(v5 + 32);
            }

            while (v5);
            v22 = (*(**(*(v21 + 24) + 56) + 32))(*(*(v21 + 24) + 56));
            v23 = *(re::ServiceLocator::service<re::RenderManager>(v22) + 32);
            re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v7, v23);
            v24 = v7[24];
            if (v24)
            {
              v25 = v7[26];
              v26 = &v25[v24];
              v27 = *(v23 + 11);
              v28 = *a2;
              v29 = a2[1];
              v30.i64[0] = 0x7F0000007FLL;
              v30.i64[1] = 0x7F0000007FLL;
              v31 = vnegq_f32(v30);
              v32 = a2[2];
              v33 = a2[3];
              v52 = v29;
              v53 = *a2;
              v50 = v33;
              v51 = v32;
              do
              {
                v34 = WORD1(*v25);
                if (v27 <= v34)
                {
                  v62 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v56 = 136315906;
                  *&v56[4] = "operator[]";
                  *&v56[12] = 1024;
                  *&v56[14] = 797;
                  *&v56[18] = 2048;
                  *&v56[20] = v34;
                  *&v56[28] = 2048;
                  *&v56[30] = v27;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_27:
                  v62 = 0u;
                  v60 = 0u;
                  v61 = 0u;
                  v58 = 0u;
                  v59 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v56 = 136315906;
                  *&v56[4] = "operator[]";
                  *&v56[12] = 1024;
                  *&v56[14] = 797;
                  *&v56[18] = 2048;
                  *&v56[20] = v8;
                  *&v56[28] = 2048;
                  *&v56[30] = v34;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
                }

                v35 = *(*(v23 + 13) + 16 * v34) + 144 * *v25;
                v36 = *(v35 + 16);
                v8 = WORD1(v36);
                v34 = *(v23 + 3);
                if (v34 <= WORD1(v36))
                {
                  goto LABEL_27;
                }

                v54 = v31;
                v55 = v30;
                v37 = 0;
                v38 = *(*(v23 + 5) + 16 * WORD1(v36));
                v39 = *(v35 + 48);
                v40 = *(v35 + 64);
                v41 = *(v35 + 80);
                *v56 = *(v35 + 32);
                *&v56[16] = v39;
                *&v56[32] = v40;
                v57 = v41;
                do
                {
                  *(&v58 + v37) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v28, COERCE_FLOAT(*&v56[v37])), v29, *&v56[v37], 1), v32, *&v56[v37], 2), v33, *&v56[v37], 3);
                  v37 += 16;
                }

                while (v37 != 64);
                re::AABB::transform((v38 + 864 * v36 + 16), &v58, v56);
                v33 = v50;
                v32 = v51;
                v29 = v52;
                v28 = v53;
                v43 = v54;
                v42 = v55;
                v43.i32[3] = 0;
                v44 = *v56;
                v45 = *&v56[16];
                v44.i32[3] = 0;
                v42.i32[3] = 0;
                v31 = vminnmq_f32(v43, v44);
                v45.i32[3] = 0;
                v30 = vmaxnmq_f32(v42, v45);
                ++v25;
              }

              while (v25 != v26);
            }

            else
            {
              v30.i64[0] = 0x7F0000007FLL;
              v30.i64[1] = 0x7F0000007FLL;
              v31 = vnegq_f32(v30);
            }

            v48 = *a3;
            v49 = a3[1];
            v48.i32[3] = 0;
            v31.i32[3] = 0;
            v49.i32[3] = 0;
            v46 = vminnmq_f32(v48, v31);
            v30.i32[3] = 0;
            v47 = vmaxnmq_f32(v49, v30);
            goto LABEL_22;
          }
        }

        re::MeshAsset::aabbFromMesh(v14, a2, &v58);
        v16 = *a3;
        v15 = a3[1];
        v16.i32[3] = 0;
        v17 = v58;
        v18 = v59;
      }

      v17.i32[3] = 0;
      v15.i32[3] = 0;
      v46 = vminnmq_f32(v16, v17);
      v18.i32[3] = 0;
      v47 = vmaxnmq_f32(v15, v18);
LABEL_22:
      *a3 = v46;
      a3[1] = v47;
    }
  }
}

uint64_t anonymous namespace::extendChildBounds(uint64_t result, float32x4_t *a2, uint64_t a3, float32x4_t *a4)
{
  v4 = *(result + 344);
  if (v4)
  {
    v8 = *(result + 360);
    v9 = &v8[v4];
    do
    {
      result = re::ecs2::EntityComponentCollection::get((*v8 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!result)
      {
        result = *v8;
        if ((a3 & 1) != 0 || (~*(result + 304) & 0x2008) == 0)
        {
          v10 = *(result + 256);
          if (v10)
          {
            v11 = 0;
            v12 = *(v10 + 48);
            v13 = *(v10 + 52);
            v14 = v12 + v12;
            v15 = v13 + v13;
            v16 = *(v10 + 56);
            v17 = *(v10 + 60);
            v18 = v16 + v16;
            v19 = v12 * (v12 + v12);
            v20 = v13 * (v13 + v13);
            v21 = v16 * (v16 + v16);
            v22 = v14 * v13;
            v23 = v14 * v16;
            v24 = v15 * v16;
            v25 = v15 * v17;
            v26 = v18 * v17;
            v27.i32[3] = 0;
            v27.f32[0] = 1.0 - (v20 + v21);
            v27.f32[1] = v22 + v26;
            v27.f32[2] = v23 - v25;
            v28 = v14 * v17;
            v29 = 1.0 - (v19 + v21);
            v30.i32[3] = 0;
            v30.f32[0] = v22 - v26;
            v30.f32[1] = v29;
            v30.f32[2] = v24 + v28;
            v31.i32[3] = 0;
            v31.f32[0] = v23 + v25;
            v31.f32[1] = v24 - v28;
            v31.f32[2] = 1.0 - (v19 + v20);
            v32 = *(v10 + 32);
            v33 = vmulq_n_f32(v27, v32.f32[0]);
            v34 = vmulq_laneq_f32(v31, v32, 2);
            v35 = *(v10 + 64);
            HIDWORD(v35) = 1.0;
            v36 = *a2;
            v37 = a2[1];
            v38 = a2[2];
            v39 = a2[3];
            v40 = vmulq_n_f32(v30, COERCE_FLOAT(HIDWORD(*(v10 + 32))));
            v47 = v33;
            v48 = v40;
            v49 = v34;
            v50 = v35;
            do
            {
              v51[v11 / 4] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v36, COERCE_FLOAT(*(&v47 + v11 * 4))), v37, *&v47.f32[v11], 1), v38, *(&v47 + v11 * 4), 2), v39, *(&v47 + v11 * 4), 3);
              v11 += 4;
            }

            while (v11 != 16);
          }

          else
          {
            v41 = a2[1];
            v51[0] = *a2;
            v51[1] = v41;
            v42 = a2[3];
            v51[2] = a2[2];
            v51[3] = v42;
          }

          result = *v8;
          if (*(*v8 + 344))
          {
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

float32x4_t re::ecs2::MeshComponentHelper::computeEntityMeshTightBounds@<Q0>(uint64_t a1@<X0>, int a2@<W1>, float32x4_t *a3@<X2>, int a4@<W3>, float32x4_t *a5@<X8>)
{
  if (a1)
  {
    v6 = a4;
    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
    if (!a4 || (a4 & ~*(a1 + 304)) == 0)
    {
      if (a2)
      {
        if (*(a1 + 344))
        {
        }
      }
    }
  }

  else
  {
    v11 = *re::ecsCoreLogObjects(0);
    if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
    {
      *v12 = 0;
      _os_log_error_impl(&dword_1E1C61000, v11, OS_LOG_TYPE_ERROR, "Null entity passed to computeEntityMeshTightBounds!", v12, 2u);
    }

    result.i64[0] = 0x7F0000007FLL;
    result.i64[1] = 0x7F0000007FLL;
    *a5 = vnegq_f32(result);
    a5[1] = result;
  }

  return result;
}

float32x4_t anonymous namespace::extendTightBounds(uint64_t a1, float32x4_t *a2, float32x4_t *a3)
{
  if (a1)
  {
    v5 = re::AssetHandle::loadedAsset<re::MeshAsset>((a1 + 32));
    if (v5)
    {
      re::MeshAsset::tightAABBFromMesh(v5, a2, v11);
      v7 = *a3;
      v8 = a3[1];
      v7.i32[3] = 0;
      v9 = v11[0];
      v10 = v11[1];
      v9.i32[3] = 0;
      v8.i32[3] = 0;
      result = vminnmq_f32(v7, v9);
      v10.i32[3] = 0;
      *a3 = result;
      a3[1] = vmaxnmq_f32(v8, v10);
    }
  }

  return result;
}

uint64_t anonymous namespace::extendChildTightBounds(uint64_t result, float32x4_t *a2, char a3, float32x4_t *a4)
{
  v4 = *(result + 344);
  if (v4)
  {
    v8 = *(result + 360);
    v9 = &v8[v4];
    do
    {
      result = re::ecs2::EntityComponentCollection::get((*v8 + 48), re::ecs2::ComponentImpl<re::ecs2::WorldRootComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!result)
      {
        v10 = *v8;
        if ((a3 & 1) != 0 || (~*(v10 + 304) & 0x2008) == 0)
        {
          v11 = *(v10 + 256);
          if (v11)
          {
            v12 = 0;
            v13 = *(v11 + 48);
            v14 = *(v11 + 52);
            v15 = v13 + v13;
            v16 = v14 + v14;
            v17 = *(v11 + 56);
            v18 = *(v11 + 60);
            v19 = v17 + v17;
            v20 = v13 * (v13 + v13);
            v21 = v14 * (v14 + v14);
            v22 = v17 * (v17 + v17);
            v23 = v15 * v14;
            v24 = v15 * v17;
            v25 = v16 * v17;
            v26 = v16 * v18;
            v27 = v19 * v18;
            v28.i32[3] = 0;
            v28.f32[0] = 1.0 - (v21 + v22);
            v28.f32[1] = v23 + v27;
            v28.f32[2] = v24 - v26;
            v29 = v15 * v18;
            v30 = 1.0 - (v20 + v22);
            v31.i32[3] = 0;
            v31.f32[0] = v23 - v27;
            v31.f32[1] = v30;
            v31.f32[2] = v25 + v29;
            v32.i32[3] = 0;
            v32.f32[0] = v24 + v26;
            v32.f32[1] = v25 - v29;
            v32.f32[2] = 1.0 - (v20 + v21);
            v33 = *(v11 + 32);
            v34 = vmulq_n_f32(v28, v33.f32[0]);
            v35 = vmulq_laneq_f32(v32, v33, 2);
            v36 = *(v11 + 64);
            HIDWORD(v36) = 1.0;
            v37 = *a2;
            v38 = a2[1];
            v39 = a2[2];
            v40 = a2[3];
            v41 = vmulq_n_f32(v31, COERCE_FLOAT(HIDWORD(*(v11 + 32))));
            v45[0] = v34;
            v45[1] = v41;
            v45[2] = v35;
            v45[3] = v36;
            do
            {
              v46[v12] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v37, COERCE_FLOAT(v45[v12])), v38, *&v45[v12], 1), v39, v45[v12], 2), v40, v45[v12], 3);
              ++v12;
            }

            while (v12 != 4);
          }

          else
          {
            v42 = a2[1];
            v46[0] = *a2;
            v46[1] = v42;
            v43 = a2[3];
            v46[2] = a2[2];
            v46[3] = v43;
          }

          result = *v8;
          if (*(*v8 + 344))
          {
          }
        }
      }

      ++v8;
    }

    while (v8 != v9);
  }

  return result;
}

void re::ecs2::MeshComponentHelper::repairedMaterialHandles(uint64_t a1@<X0>, void *a2@<X1>, re::AssetHandle *a3@<X2>, re::AssetHandle *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  MaxMaterialIndex = re::MeshManager::findMaxMaterialIndex(a2, (a1 + 552));
  *(a6 + 32) = 0;
  *(a6 + 8) = 0;
  *(a6 + 16) = 0;
  *(a6 + 24) = 0;
  v11 = MaxMaterialIndex + 1;
  re::DynamicArray<re::AssetHandle>::setCapacity(a6, v11);
  ++*(a6 + 24);
  if (a5)
  {
    v12 = 24 * a5;
    while (1)
    {
      v13 = *(a4 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        v15 = a4;
        if (v14 == 2)
        {
          goto LABEL_7;
        }
      }

      v16 = *(a3 + 1);
      if (!v16)
      {
        break;
      }

      v17 = atomic_load((v16 + 896));
      v15 = a3;
      if (v17 != 2)
      {
        v18 = *(a3 + 1);
        goto LABEL_10;
      }

LABEL_7:
      re::DynamicArray<re::AssetHandle>::add(a6, v15);
      a4 = (a4 + 24);
      v12 -= 24;
      if (!v12)
      {
        goto LABEL_12;
      }
    }

    v18 = 0;
LABEL_10:
    re::AssetHandle::loadNow(v18, 0);
    v15 = a3;
    goto LABEL_7;
  }

LABEL_12:
  if (*(a6 + 16) < v11)
  {
    v19 = *(a3 + 1);
    if (v19)
    {
      v20 = atomic_load((v19 + 896));
      if (v20 == 2)
      {
        goto LABEL_19;
      }

      v21 = *(a3 + 1);
    }

    else
    {
      v21 = 0;
    }

    re::AssetHandle::loadNow(v21, 0);
LABEL_19:
    while (*(a6 + 16) < v11)
    {
      re::DynamicArray<re::AssetHandle>::add(a6, a3);
    }
  }
}

void re::ecs2::MeshComponentHelper::overrideMaterials(uint64_t a1, void *a2, re::MaterialAsset *a3, uint64_t *a4, uint64_t *a5, void *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  MaxMaterialIndex = re::MeshManager::findMaxMaterialIndex(a2, (a1 + 552));
  v11 = (MaxMaterialIndex + 1);
  if (!*a4)
  {
  }

  if (!*a5)
  {
  }

  if (*a6)
  {
    if (!v11)
    {
      return;
    }

    goto LABEL_9;
  }

  if (v11)
  {
LABEL_9:
    for (i = 0; v11 != i; ++i)
    {
      v13 = *(a3 + 1);
      if (v13)
      {
        v14 = atomic_load((v13 + 896));
        if (v14 == 2)
        {
          v15 = re::AssetHandle::loadedAsset<re::MaterialAsset>(a3);
          v16 = a4[1];
          if (v16 <= i)
          {
            v22 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v23 = 136315906;
            v24 = "operator[]";
            v25 = 1024;
            v26 = 468;
            v27 = 2048;
            v28 = i;
            v29 = 2048;
            v30 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_24:
            v22 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v23 = 136315906;
            v24 = "operator[]";
            v25 = 1024;
            v26 = 468;
            v27 = 2048;
            v28 = i;
            v29 = 2048;
            v30 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_25:
            v22 = 0;
            v34 = 0u;
            v35 = 0u;
            v32 = 0u;
            v33 = 0u;
            v31 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v23 = 136315906;
            v24 = "operator[]";
            v25 = 1024;
            v26 = 468;
            v27 = 2048;
            v28 = i;
            v29 = 2048;
            v30 = v16;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          *(a4[2] + 8 * i) = *(v15 + 1776);
          v17 = *(v15 + 1784);
          if (re::MaterialParameterBlock::isEmpty(v17))
          {
            v16 = a5[1];
            if (v16 <= i)
            {
              goto LABEL_25;
            }
          }

          else
          {
            re::MaterialParameterBlock::createMaterialParameterTableIfNeeded(v17, &v21);
            v18 = re::BucketArray<re::SharedPtr<re::MaterialParameterTable>,8ul>::addUninitialized(a6);
            v19 = v21;
            *v18 = v21;
            if (v19)
            {
              v20 = (v19 + 8);
              v16 = a5[1];
              if (v16 <= i)
              {
                goto LABEL_24;
              }

              *(a5[2] + 8 * i) = v19;

              continue;
            }

            v16 = a5[1];
            if (v16 <= i)
            {
              goto LABEL_24;
            }
          }

          *(a5[2] + 8 * i) = 0;
        }
      }
    }
  }
}

uint64_t re::ecs2::MeshComponentHelper::areRequiredAssetsLoaded(re::ecs2::MeshComponentHelper *this, const re::ecs2::MeshComponent *a2)
{
  v3 = *(this + 5);
  if (v3 && (v4 = atomic_load((v3 + 896)), v4 == 2))
  {
    v5 = 1;
  }

  else
  {
    re::AssetHandle::loadAsync((this + 32));
    v5 = 0;
  }

  v6 = *(this + 5);
  if (v6 && *(v6 + 24))
  {
    v7 = *(this + 9);
    if (v7)
    {
      v8 = *(this + 11);
      v9 = 24 * v7;
      do
      {
        v10 = *(v8 + 1);
        if (v10)
        {
          v11 = atomic_load((v10 + 896));
          if (v11 != 3)
          {
            if (*(v8 + 1))
            {
              v12 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v8);
              if (!v12 || *(v12 + 1768) == 1)
              {
                re::AssetHandle::loadAsync(v8);
                v5 = 0;
              }
            }
          }
        }

        v8 = (v8 + 24);
        v9 -= 24;
      }

      while (v9);
    }
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t re::ecs2::MeshComponentHelper::computeTriangleCount(re::ecs2::MeshComponentHelper *this, const re::ecs2::MeshComponent *a2)
{
  v3 = *(this + 2);
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  if (!*(v4 + 24))
  {
    return 0xFFFFFFFFLL;
  }

  v5 = *(this + 5);
  if (!v5)
  {
    return 0xFFFFFFFFLL;
  }

  v6 = atomic_load((v5 + 896));
  if (v6 != 2)
  {
    return 0xFFFFFFFFLL;
  }

  v7 = *(this + 2);
  do
  {
    v8 = v7;
    v7 = *(v7 + 32);
  }

  while (v7);
  v9 = (*(**(*(v8 + 24) + 56) + 32))(*(*(v8 + 24) + 56), a2);
  v10 = *(re::ServiceLocator::service<re::RenderManager>(v9) + 32);
  v11 = re::AssetHandle::loadedAsset<re::MeshAsset>((this + 32));
  v12 = *(v11 + 568);
  if (!v12)
  {
    return 0;
  }

  v13 = 0;
  v14 = *(v11 + 584);
  v15 = &v14[v12];
  do
  {
    v16 = re::DataArray<re::MeshInstance>::tryGet(v10 + 72, *v14);
    v17 = re::DataArray<re::MeshModel>::tryGet(v10 + 8, *(v16 + 16));
    v18 = *(v17 + 56);
    if (v18)
    {
      v19 = *(v17 + 64);
      v20 = 544 * v18;
      do
      {
        re::MeshPart::computeTriangleCount(v19);
        v13 = (v21 + v13);
        v19 = (v19 + 544);
        v20 -= 544;
      }

      while (v20);
    }

    ++v14;
  }

  while (v14 != v15);
  return v13;
}

BOOL re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(re::ecs2::MeshComponentHelper *this, const re::ecs2::MeshComponent *a2)
{
  v2 = *(this + 9);
  if (v2)
  {
    v3 = 24 * v2 - 24;
    v4 = *(this + 11);
    while (1)
    {
      re::AssetHandle::AssetHandle(v14, v4);
      v5 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v14);
      if (!v5)
      {
        break;
      }

      v6 = *(v5 + 1776);
      if (!v6)
      {
        break;
      }

      {
        if (v11)
        {
          re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(re::ecs2::MeshComponent const&)::occlusionKey = re::hashString(v11, v12);
        }
      }

      v7 = re::ecs2::MeshComponentHelper::isMappedToOcclusionPass(re::ecs2::MeshComponent const&)::occlusionKey;
      if (re::MaterialParameterTable::kDefaultNameHash(void)::once != -1)
      {
        dispatch_once(&re::MaterialParameterTable::kDefaultNameHash(void)::once, &__block_literal_global_35);
      }

      PassTechniqueMapping = re::MaterialParameterTable::tryGetPassTechniqueMapping((v6 + 304), v7, re::MaterialParameterTable::kDefaultNameHash(void)::_kDefaultNameHash);
      v9 = PassTechniqueMapping != 0;
      re::AssetHandle::~AssetHandle(v14);
      if (PassTechniqueMapping)
      {
        v4 = (v4 + 24);
        v10 = v3;
        v3 -= 24;
        if (v10)
        {
          continue;
        }
      }

      return v9;
    }

    re::AssetHandle::~AssetHandle(v14);
  }

  return 0;
}

void re::ecs2::MeshComponentHelper::fixLegacyParametersColorGamut(re::RenderManager *a1, uint64_t a2, unint64_t *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v6 = a3[11];
  v7 = a3[6];
  if (v6 < v7)
  {
    re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::resize((a3 + 9), a3[6]);
    do
    {
      v9 = re::globalAllocators(v8);
      v10 = (*(*v9[2] + 32))(v9[2], 1008, 8);
      v8 = re::MaterialParameterBlock::MaterialParameterBlock(v10, a1);
      if (a3[11] <= v6)
      {
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
LABEL_42:
        v38 = 0u;
        v39 = 0u;
        v36 = 0u;
        v37 = 0u;
        *v35 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v11 = a3[13];
      v12 = *(v11 + 8 * v6);
      *(v11 + 8 * v6) = v8;
      if (v12)
      {
      }

      ++v6;
    }

    while (v7 != v6);
  }

  if (*(a2 + 16))
  {
    v13 = 0;
    while (a3[6] > v13)
    {
      v14 = (*(a2 + 32) + 24 * v13);
      v15 = *(v14 + 1);
      if (v15)
      {
        v16 = atomic_load((v15 + 896));
        if (v16 == 2)
        {
          v17 = re::AssetHandle::loadedAsset<re::MaterialAsset>(v14);
          v18 = *(v17 + 48);
          if (v18)
          {
            v19 = atomic_load((v18 + 896));
            if (v19 == 2)
            {
              v20 = v17;
              v21 = re::AssetHandle::loadedAsset<re::MaterialDefinitionAsset>((v17 + 40));
              if (a3[6] <= v13)
              {
                goto LABEL_42;
              }

              v22 = v21;
              v23 = (a3[8] + 32 * v13);
              v24 = *v23;
              if (!*v23)
              {
                v24 = v23[1];
              }

              v25 = *(v24 + 336);
              if (v25)
              {
                v26 = 0;
                v27 = *(v24 + 320);
                while ((*v27 & 0x80000000) == 0)
                {
                  v27 += 80;
                  if (v25 == ++v26)
                  {
                    LODWORD(v26) = *(v24 + 336);
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
                do
                {
                  v28 = *(v24 + 320);
                  if ((*(v28 + 320 * v26 + 280) & 1) == 0)
                  {
                    *v35 = *(v28 + 320 * v26 + 8) >> 1;
                    v29 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v20 + 1792, v35);
                    if (!v29 || (v30 = *(v29 + 20)) == 0)
                    {
                      *v35 = *(*(v24 + 320) + 320 * v26 + 8) >> 1;
                      v31 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v22 + 2280, v35);
                      if (!v31)
                      {
                        goto LABEL_31;
                      }

                      v30 = *(v31 + 20);
                    }

                    if ((v30 & 0xFE) == 0x14)
                    {
                      v32 = *(v24 + 320) + 320 * v26;
                      *(v32 + 280) = 1;
                      re::ecs2::MaterialParameterBlockArrayComponent::updateParameterBlockValue(a3, a1, (v32 + 8), (v32 + 32), v13, 0, v35);
                    }
                  }

LABEL_31:
                  v33 = *(v24 + 336);
                  if (v33 <= v26 + 1)
                  {
                    v34 = v26 + 1;
                  }

                  else
                  {
                    v34 = *(v24 + 336);
                  }

                  while (v34 - 1 != v26)
                  {
                    LODWORD(v26) = v26 + 1;
                    if ((*(*(v24 + 320) + 320 * v26) & 0x80000000) != 0)
                    {
                      goto LABEL_38;
                    }
                  }

                  LODWORD(v26) = v34;
LABEL_38:
                  ;
                }

                while (v26 != v33);
              }
            }
          }
        }
      }

      if (++v13 >= *(a2 + 16))
      {
        return;
      }
    }
  }
}

float32x4_t re::ecs2::MeshComponentHelper::addRenderPassGroupBoundsTable(uint64_t a1)
{
  v2 = re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(*a1, (a1 + 8));
  if (v2)
  {
    v4 = v2;
    re::AABB::transform(*(a1 + 16), *(a1 + 24), &v17);
    if (*(a1 + 40))
    {
      v5 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v4, (a1 + 40));
      v6 = *v5;
      v7 = v5[1];
      v6.i32[3] = 0;
      v8 = v17;
      v9 = v18;
      v8.i32[3] = 0;
      result = vminnmq_f32(v6, v8);
      v7.i32[3] = 0;
      v9.i32[3] = 0;
      *v5 = result;
      v5[1] = vmaxnmq_f32(v7, v9);
      v5[2].i8[0] |= *(a1 + 49);
    }

    v11 = *(a1 + 32);
    v10 = (a1 + 32);
    if (v11)
    {
      v12 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(v4, v10);
      v13 = *v12;
      v14 = v12[1];
      v13.i32[3] = 0;
      v15 = v17;
      v16 = v18;
      v15.i32[3] = 0;
      v14.i32[3] = 0;
      result = vminnmq_f32(v13, v15);
      v16.i32[3] = 0;
      *v12 = result;
      v12[1] = vmaxnmq_f32(v14, v16);
    }
  }

  return result;
}

float32x4_t *re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<>(uint64_t a1, uint64_t *a2)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v4 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 80 * HIDWORD(v10) + 16);
  }

  v5 = re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  v6 = *a2;
  v7.i64[0] = 0x7F0000007FLL;
  v7.i64[1] = 0x7F0000007FLL;
  v5[1] = vnegq_f32(v7);
  result = v5 + 1;
  result[-1].i64[1] = v6;
  result[2].i64[0] = 0;
  result[2].i64[1] = 0;
  result[1] = v7;
  ++*(a1 + 40);
  return result;
}

re::ecs2::ClippingParametersRegistry *re::ecs2::ClippingParametersRegistry::ClippingParametersRegistry(re::ecs2::ClippingParametersRegistry *this)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 6) = 0;
  *(this + 2) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 26) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v2 = re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(this, 0x400uLL);
  ++*(this + 6);
  v3 = re::DynamicArray<int>::setCapacity(this + 5, 0x400uLL);
  ++*(this + 16);
  re::DynamicArray<unsigned short>::setCapacity(this + 10, 0x400uLL);
  ++*(this + 26);
  return this;
}

void re::ecs2::ClippingParametersRegistry::~ClippingParametersRegistry(re::ecs2::ClippingParametersRegistry *this)
{
  v2 = *(this + 15);
  if (v2)
  {

    *(this + 15) = 0;
  }

  re::DynamicArray<unsigned long>::deinit(this + 80);
  re::DynamicArray<unsigned long>::deinit(this + 40);
  re::DynamicArray<unsigned long>::deinit(this);
}

uint64_t re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(_anonymous_namespace_ *a1, uint64_t a2)
{
  v3 = a1;
  v12[5] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 15))
  {
    re::make::shared::object<re::ecs2::ShareableClippingParameters>(a1, v12);
    v4 = *(v3 + 15);
    v5 = v12[0];
    *(v3 + 15) = v12[0];
    v12[0] = v4;
    if (v4)
    {

      v5 = *(v3 + 15);
    }

    v6 = *(v3 + 2);
    v12[0] = *(v3 + 4);
    v12[1] = v6;
    a1 = re::FixedArray<re::UberClippingParametersEntry>::operator=((v5 + 24), v12);
  }

  re::globalAllocators(a1);
  v7 = (*(*a2 + 32))(a2, 8, 8);
  v8 = v7;
  v9 = *(v3 + 15);
  *v7 = v9;
  if (v9)
  {
    v7 = (v9 + 8);
  }

  v10 = re::globalAllocators(v7)[2];
  v12[0] = &unk_1F5CF3A38;
  v12[3] = v10;
  v12[4] = v12;
  (*(*a2 + 16))(a2, v8, v12);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v12);
  return *(*(v3 + 15) + 40);
}

_anonymous_namespace_ *re::FixedArray<re::UberClippingParametersEntry>::operator=(_anonymous_namespace_ *a1, uint64_t a2)
{
  if (*a1)
  {
    goto LABEL_4;
  }

  v4 = *(a2 + 8);
  if (v4)
  {
LABEL_4:
    re::FixedArray<re::UberClippingParametersEntry>::copy(a1, a2);
  }

  return a1;
}

void re::ecs2::ClippingParametersRegistry::add(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = *(*(a1 + 112) + 2 * v6 - 2);
    *(a1 + 96) = v6 - 1;
    ++*(a1 + 104);
    if (*(a1 + 16) <= v7)
    {
      memset(v29, 0, sizeof(v29));
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = (*(a1 + 32) + 96 * v7);
    v9 = a2[1];
    *v8 = *a2;
    v8[1] = v9;
    v10 = a2[2];
    v11 = a2[3];
    v12 = a2[5];
    v8[4] = a2[4];
    v8[5] = v12;
    v8[2] = v10;
    v8[3] = v11;
    v14 = (a1 + 120);
    v13 = *(a1 + 120);
    if (!v13)
    {
      goto LABEL_20;
    }
  }

  else
  {
    v15 = *(a1 + 16);
    if (v15 > 0x3FF)
    {
      *a3 = 0;
      return;
    }

    v16 = *(a1 + 8);
    v17 = *(a1 + 16);
    if (v15 >= v16)
    {
      if (*a1)
      {
        v18 = 2 * v16;
        v19 = v16 == 0;
        v20 = 8;
        if (!v19)
        {
          v20 = v18;
        }

        if (v20 <= v15 + 1)
        {
          v21 = v15 + 1;
        }

        else
        {
          v21 = v20;
        }

        re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(a1, v21);
      }

      else
      {
        re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(a1, v15 + 1);
        ++*(a1 + 24);
      }

      v17 = *(a1 + 16);
    }

    v22 = (*(a1 + 32) + 96 * v17);
    v23 = a2[1];
    *v22 = *a2;
    v22[1] = v23;
    v24 = a2[2];
    v25 = a2[3];
    v26 = a2[5];
    v22[4] = a2[4];
    v22[5] = v26;
    v22[2] = v24;
    v22[3] = v25;
    ++*(a1 + 16);
    ++*(a1 + 24);
    LODWORD(v29[0]) = 0;
    re::DynamicArray<int>::add((a1 + 40), v29);
    v28 = *(a1 + 120);
    v14 = (a1 + 120);
    v27 = v28;
    if (!v28)
    {
      LOWORD(v7) = v15;
      goto LABEL_20;
    }

    LOWORD(v7) = v15;
  }

  *v14 = 0;
LABEL_20:
  *a3 = 1;
  *(a3 + 2) = v7;
}

uint64_t re::ecs2::ClippingParametersRegistry::registerClippingParameterDataRefs(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 152);
  if (v2)
  {
    v3 = 0;
    v4 = *(result + 56);
    do
    {
      v5 = *(a2 + 176);
      if (*(a2 + 160))
      {
        v5 = a2 + 168;
      }

      v6 = *(v5 + 2 * v3);
      if (v4 <= v6)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      ++*(*(result + 72) + 4 * v6);
      ++v3;
    }

    while (v2 != v3);
  }

  return result;
}

void re::ecs2::ClippingParametersRegistry::unregisterClippingParameterDataRefs(uint64_t a1, uint64_t a2)
{
  v28 = *MEMORY[0x1E69E9840];
  v3 = *(a2 + 152);
  if (v3)
  {
    v5 = 0;
    v6 = a2 + 168;
    do
    {
      if (*(a2 + 160))
      {
        v7 = v6;
      }

      else
      {
        v7 = *(a2 + 176);
      }

      v13 = *(v7 + 2 * v5);
      v8 = v13;
      v9 = *(a1 + 56);
      if (v9 <= v13)
      {
        v14 = 0;
        v26 = 0u;
        v27 = 0u;
        v24 = 0u;
        v25 = 0u;
        v23 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v15 = 136315906;
        v16 = "operator[]";
        v17 = 1024;
        v18 = 789;
        v19 = 2048;
        v20 = v8;
        v21 = 2048;
        v22 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(a1 + 72);
      v11 = *(v10 + 4 * v13) - 1;
      *(v10 + 4 * v13) = v11;
      if (!v11)
      {
        re::DynamicArray<unsigned short>::add((a1 + 80), &v13);
      }

      ++v5;
    }

    while (v3 != v5);
  }

  if (*(a1 + 96) == *(a1 + 16))
  {
    *(a1 + 16) = 0;
    ++*(a1 + 24);
    *(a1 + 56) = 0;
    ++*(a1 + 64);
    *(a1 + 96) = 0;
    ++*(a1 + 104);
    v12 = *(a1 + 120);
    if (v12)
    {

      *(a1 + 120) = 0;
    }
  }
}

void re::internal::Callable<re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(re::PerFrameAllocator *)::$_0,void ()(void *)>::operator()(uint64_t a1, uint64_t **a2)
{
  v2 = *a2;
  v3 = **a2;
  if (v3)
  {

    *v2 = 0;
  }
}

void *re::internal::Callable<re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(re::PerFrameAllocator *)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF3A38;
  return result;
}

void *re::internal::Callable<re::ecs2::ClippingParametersRegistry::copyClippingParameterEntries(re::PerFrameAllocator *)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF3A38;
  return result;
}

void *re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(void *result, unint64_t a2)
{
  v3 = result[1];
  if (v3 != a2)
  {
    v5 = result;
    if (result[2] <= a2)
    {
      result = *result;
      if (*v5)
      {
        if (!a2)
        {
          v7 = 0;
          if (!v3)
          {
            goto LABEL_9;
          }

          goto LABEL_8;
        }

        if (is_mul_ok(a2, 0x60uLL))
        {
          v2 = 96 * a2;
          result = (*(*result + 32))(result, 96 * a2, 16);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
LABEL_9:
              v5[4] = v7;
              v5[1] = a2;
              return result;
            }

LABEL_8:
            memcpy(v7, v5[4], 96 * v5[2]);
            result = (*(**v5 + 40))(*v5, v5[4]);
            goto LABEL_9;
          }
        }

        else
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 96, a2);
          _os_crash();
          __break(1u);
        }

        re::internal::assertLog(6, v6, "assertion failure: '%s' (%s:line %i) DynamicArray<T> is out of memory (tried to allocate %zu bytes from allocator '%s').", "newData", "setCapacity", 619, v2, *(*v5 + 8));
        result = _os_crash();
        __break(1u);
      }

      else
      {
        result = re::DynamicArray<re::UberClippingParametersEntry>::setCapacity(v5, a2);
        ++*(v5 + 6);
      }
    }
  }

  return result;
}

void re::make::shared::object<re::ecs2::ShareableClippingParameters>(re *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = re::globalAllocators(a1);
  v4 = (*(*v3[2] + 32))(v3[2], 48, 8);
  *v4 = 0u;
  *(v4 + 16) = 0u;
  *(v4 + 32) = 0u;
  ArcSharedObject::ArcSharedObject(v4, 0);
  *(v4 + 24) = 0;
  *v4 = &unk_1F5CF3A90;
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *a2 = v4;
}

void re::ecs2::ShareableClippingParameters::~ShareableClippingParameters(re::ecs2::ShareableClippingParameters *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 3);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void *re::FixedArray<re::UberClippingParametersEntry>::copy(void *result, const void **a2)
{
  v4 = result[1];
  if (v4 == a2[1])
  {
    if (v4)
    {
      v5 = *a2;
      v6 = result[2];

      return memmove(v6, v5, 96 * v4);
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Cannot copy from a Slice of a different size", "m_size == other.size()", "copy", 378, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::FixedArray<re::UberClippingParametersEntry>::init<>(uint64_t *a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  a1[1] = a3;
  if (!a3)
  {
    return;
  }

  if (a3 >= 0x2AAAAAAAAAAAAABLL)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 96, a3);
    _os_crash();
    __break(1u);
    goto LABEL_9;
  }

  v5 = 96 * a3;
  v6 = (*(*a2 + 32))(a2, 96 * a3, 16);
  a1[2] = v6;
  if (!v6)
  {
LABEL_9:
    re::internal::assertLog(4, v7, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    return;
  }

  v8 = v6;
  if (a3 != 1)
  {
    bzero(v6, v5 - 96);
    v8 = (v8 + v5 - 96);
  }

  v8[4] = 0u;
  v8[5] = 0u;
  v8[2] = 0u;
  v8[3] = 0u;
  *v8 = 0u;
  v8[1] = 0u;
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(re::ecs2::IntrospectedNetworkTypeHelper *this, const re::ecs2::ComponentTypeBase *a2, const re::IntrospectionBase *a3)
{
  result = (*(*this + 8))(this, a2, a3);
  if (result)
  {
    if (result)
    {
      if (*(a2 + 4) != 8)
      {
        return 0;
      }

      v6 = *(a2 + 14);
      if (!v6)
      {
        return 0;
      }

      for (i = *(a2 + 8); ; ++i)
      {
        v8 = *i;
        if (**i == 1)
        {
          break;
        }

        if (!--v6)
        {
          return 0;
        }
      }

      if (!*(v8 + 10) && !strcmp("object", v8[1]) && (v9 = v8[2]) != 0 && *(v9 + 4) == 1 && (v10 = *(v9 + 6)) != 0 && *(v10 + 16) == 8 && (!re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(re::ecs2::ComponentTypeBase const&,re::IntrospectionBase const&)::$_0::__invoke(v10) ? (v11 = *(v10 + 56) == 0) : (v11 = 1), v11))
      {
        return 1;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void re::ecs2::IntrospectedNetworkTypeHelper::registerSwiftComponent(re::ecs2::IntrospectedNetworkTypeHelper *this, const char *a2)
{
  {
  }

  v3 = strncmp(this, "CustomComponent", 0xFuLL);
  v6 = 0;
  v7 = &str_67;
  if (v3)
  {
    v4 = this;
  }

  else
  {
    v4 = this + 15;
  }

  if (v6)
  {
    if (v6)
    {
    }
  }
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  v5 = (0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31);
  v6 = *(a1 + 24);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 8) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    v11 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addAsMove(a1, v7, v5, a2, a2);
    ++*(a1 + 40);
    return *(a1 + 16) + 24 * v11 + 8;
  }

  v9 = *(a1 + 16);
  while (1)
  {
    v10 = (v9 + 24 * v8 + 8);
    if (re::StringID::operator==(v10, a2))
    {
      return v10;
    }

    v8 = *(v9 + 24 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::serialize()
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  memset(&v2[1], 0, 24);
  *(SyncObjectContextEntry + 472) = v2;
  result = RESyncCommitCaptureSnapshot();
  *(SyncObjectContextEntry + 472) = 0;
  return result;
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::deserialize()
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  v2[2] = 0;
  v2[3] = 0;
  v2[0] = 0;
  *(SyncObjectContextEntry + 472) = v2;
  *(SyncObjectContextEntry + 464) = RESyncableGetFromPeerID();
  result = RESyncableReadState();
  *(SyncObjectContextEntry + 472) = 0;
  return result;
}

void anonymous namespace::decodeEntity(_anonymous_namespace_ *this@<X0>, uint64_t a2@<X8>)
{
  objc_initWeak(a2, 0);
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  re::ecs2::EntityHandle::reset(a2);
  if (this && *this)
  {
    v6 = 0;
    if (sscanf(this, "%llu", &v6) == 1)
    {
      v5 = v6;
      re::ecs2::EntityHandle::reset(a2);
      *(a2 + 8) = v5;
    }
  }
}

void re::ecs2::IntrospectedNetworkTypeHelper::SyncInfo::~SyncInfo(re::ecs2::IntrospectedNetworkTypeHelper::SyncInfo *this)
{
  if (*this)
  {
    RESyncRelease();
    *this = 0;
  }

  v2 = *(this + 2);
  if (v2)
  {
    _Block_release(v2);
    *(this + 2) = 0;
  }

  v3 = *(this + 1);
  if (v3)
  {
    _Block_release(v3);
    *(this + 1) = 0;
  }
}

uint64_t re::ecs2::IntrospectedNetworkTypeHelper::makeTypeInfo@<X0>(const re::IntrospectionBase *a1@<X2>, const re::ecs2::ComponentTypeBase *a2@<X3>, uint64_t a3@<X1>, uint64_t *a4@<X8>)
{
  v96 = *MEMORY[0x1E69E9840];
  if (a1 && (*(*a1 + 64))(a1, a3, a1, a2))
  {
    v8 = (*(*a1 + 64))(a1);
    RESyncSyncableTypeInfoSetTypeId();
    result = RESyncSyncableTypeInfoSupportsNetworkSync();
    if (result)
    {
      v10 = RESyncRetain();
      result = re::NetworkSystemFeatureFlags::enableAltSharedApp(v10);
      *a4 = v8;
      if (result)
      {
        v11 = RESyncSyncableTypeInfoGetWriteSnapshotCb();
        v12 = RESyncBitWriterBackedRequiredSize();
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 0x40000000;
        aBlock[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke;
        aBlock[3] = &unk_1E871DD00;
        aBlock[4] = v11;
        aBlock[5] = v12;
        a4[1] = _Block_copy(aBlock);
        SnapshotCb = RESyncSyncableTypeInfoGetReadSnapshotCb();
        RequiredSize = RESyncBitReaderGetRequiredSize();
        v92[0] = MEMORY[0x1E69E9820];
        v92[1] = 0x40000000;
        v92[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2;
        v92[3] = &unk_1E871DD28;
        v92[4] = SnapshotCb;
        v92[5] = RequiredSize;
        result = _Block_copy(v92);
        a4[2] = result;
      }

      else
      {
        a4[1] = 0;
        a4[2] = 0;
      }
    }

    else
    {
      *a4 = 0;
      a4[1] = 0;
      a4[2] = 0;
    }

    return result;
  }

  v91 = 0;
  memset(v89, 0, sizeof(v89));
  v90 = 0;
  if (*(a3 + 16) != 8)
  {
    goto LABEL_15;
  }

  re::getDowngradeFunctions(a3, 2u, buf);
  re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::operator=(v89, buf);
  v15 = *buf;
  if (*buf && v95)
  {
    v15 = (*(**buf + 40))(*buf);
  }

  if (*(a3 + 16) == 8 && (v16 = re::snapshot::Registry::list(void)::s_head) != 0)
  {
    v17 = *(a3 + 48);
    while (*(v16 + 40) != a3)
    {
      v16 = *(v16 + 32);
      if (!v16)
      {
        goto LABEL_15;
      }
    }

    v31 = *re::ecsNetworkLogObjects(v15);
    if (os_log_type_enabled(v31, OS_LOG_TYPE_INFO))
    {
      *buf = 136380675;
      *&buf[4] = v17;
      _os_log_impl(&dword_1E1C61000, v31, OS_LOG_TYPE_INFO, "Found static snapshot entry for '%{private}s'", buf, 0xCu);
    }

    v20 = v88;
    v88[0] = MEMORY[0x1E69E9820];
    v88[1] = 0x40000000;
    v88[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6;
    v88[3] = &__block_descriptor_tmp_8_2;
    v88[4] = v16;
    v88[5] = v17;
    v32 = v17;
    v19 = v87;
    v87[0] = MEMORY[0x1E69E9820];
    v87[1] = 0x40000000;
    v87[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_9;
    v87[3] = &__block_descriptor_tmp_10_0;
    v87[4] = v16;
    v87[5] = v32;
    v21 = v86;
    v86[0] = MEMORY[0x1E69E9820];
    v86[1] = 0x40000000;
    v86[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_11;
    v86[3] = &__block_descriptor_tmp_13;
    v86[4] = v16;
    v86[5] = v32;
    v18 = v85;
    v85[0] = MEMORY[0x1E69E9820];
    v85[1] = 0x40000000;
    v85[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_14;
    v85[3] = &__block_descriptor_tmp_15;
    v85[4] = v16;
    v85[5] = v32;
  }

  else
  {
LABEL_15:
    v18 = 0;
    v19 = 0;
    v20 = v84;
    v84[0] = MEMORY[0x1E69E9820];
    v84[1] = 0x40000000;
    v84[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_16;
    v84[3] = &__block_descriptor_tmp_17_0;
    v84[4] = a3;
    v21 = v83;
    v83[0] = MEMORY[0x1E69E9820];
    v83[1] = 0x40000000;
    v83[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_18;
    v83[3] = &__block_descriptor_tmp_19;
    v83[4] = a3;
  }

  v22 = RESyncSyncableTypeInfoCreate();
  RESyncSyncableTypeInfoSetTypeId();
  re::getPrettyTypeName(a3, buf);
  RESyncSyncableTypeInfoSetDebugName();
  v23 = *buf;
  if (*buf && (buf[8] & 1) != 0)
  {
    v23 = (*(**buf + 40))();
  }

  a4[1] = 0;
  a4[2] = 0;
  *a4 = v22;
  if (re::NetworkSystemFeatureFlags::enableAltSharedApp(v23))
  {
    for (i = re::snapshot::Registry::list(void)::s_head; i; i = *(i + 32))
    {
      if (*(i + 40) == a3)
      {
        break;
      }
    }

    if (a1 && (*(*a1 + 8))(a1))
    {
      if (i)
      {
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 0x40000000;
        v82[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_20;
        v82[3] = &__block_descriptor_tmp_21;
        v82[4] = i;
        a4[1] = _Block_copy(v82);
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 0x40000000;
        v81[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_22;
        v81[3] = &__block_descriptor_tmp_23_0;
        v81[4] = i;
        v26 = v81;
      }

      else
      {
        v33 = *(a1 + 12);
        v43 = *(a1 + 13);
        if (re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(a1, a3, v25))
        {
          v34 = re::ecs2::g_encodeComponent;
          if (v33)
          {
            v34 = v33;
          }

          v80[0] = MEMORY[0x1E69E9820];
          v80[1] = 0x40000000;
          v80[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3;
          v80[3] = &__block_descriptor_tmp_25_0;
          if (v43)
          {
            v35 = v43;
          }

          else
          {
            v35 = re::ecs2::g_decodeComponent;
          }

          v80[4] = v34;
          v80[5] = a1;
          a4[1] = _Block_copy(v80);
          v79[0] = MEMORY[0x1E69E9820];
          v79[1] = 0x40000000;
          v79[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_26;
          v79[3] = &__block_descriptor_tmp_27_0;
          v79[4] = v35;
          v79[5] = a1;
          v26 = v79;
        }

        else
        {
          v78[0] = MEMORY[0x1E69E9820];
          v78[1] = 0x40000000;
          v78[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_28;
          v78[3] = &__block_descriptor_tmp_29;
          v78[4] = a3;
          a4[1] = _Block_copy(v78);
          v77[0] = MEMORY[0x1E69E9820];
          v77[1] = 0x40000000;
          v77[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_30;
          v77[3] = &__block_descriptor_tmp_31;
          v77[4] = a3;
          v26 = v77;
        }
      }

      a4[2] = _Block_copy(v26);
      goto LABEL_47;
    }

    if (i)
    {
      v76[0] = MEMORY[0x1E69E9820];
      v76[1] = 0x40000000;
      v76[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_4;
      v76[3] = &__block_descriptor_tmp_32;
      v76[4] = i;
      v27 = _Block_copy(v76);
      v28 = v75;
      v75[0] = MEMORY[0x1E69E9820];
      v75[1] = 0x40000000;
      v29 = &__block_descriptor_tmp_33;
      v30 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5;
    }

    else
    {
      v74[0] = MEMORY[0x1E69E9820];
      v74[1] = 0x40000000;
      v74[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6;
      v74[3] = &__block_descriptor_tmp_34;
      v74[4] = a3;
      v27 = _Block_copy(v74);
      v28 = v73;
      v73[0] = MEMORY[0x1E69E9820];
      v73[1] = 0x40000000;
      v29 = &__block_descriptor_tmp_35;
      v30 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_7;
      i = a3;
    }

    a4[1] = v27;
    v28[2] = v30;
    v28[3] = v29;
    v28[4] = i;
    a4[2] = _Block_copy(v28);
  }

  if (!a1)
  {
LABEL_58:
    if (!v19)
    {
      v19 = v70;
      v70[0] = MEMORY[0x1E69E9820];
      v70[1] = 0x40000000;
      v70[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_58;
      v70[3] = &__block_descriptor_tmp_59;
      v70[4] = a3;
    }

    v42 = 0;
    if (!v18)
    {
      v18 = v69;
      v69[0] = MEMORY[0x1E69E9820];
      v69[1] = 0x40000000;
      v69[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_60;
      v69[3] = &__block_descriptor_tmp_61;
      v69[4] = a3;
    }

    goto LABEL_67;
  }

LABEL_47:
  shouldSerializeAsJson = (*(*a1 + 8))(a1);
  if (!shouldSerializeAsJson)
  {
    goto LABEL_58;
  }

  v39 = *(a1 + 12);
  v38 = *(a1 + 13);
  if (*(a1 + 6) == 0)
  {
    shouldSerializeAsJson = re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(a1, a3, v37);
    if (!shouldSerializeAsJson)
    {
      v42 = 1;
      goto LABEL_63;
    }

    v39 = re::ecs2::g_encodeComponent;
    v38 = re::ecs2::g_decodeComponent;
  }

  if ((!v39 || v38) && (v39 || !v38))
  {
    v42 = 1;
    if (v39)
    {
      v19 = v20;
      v18 = v21;
      if (v38)
      {
        v19 = v72;
        v72[0] = MEMORY[0x1E69E9820];
        v72[1] = 0x40000000;
        v72[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5_54;
        v72[3] = &__block_descriptor_tmp_55;
        v72[4] = v39;
        v72[5] = a1;
        v21 = v71;
        v71[0] = MEMORY[0x1E69E9820];
        v71[1] = 0x40000000;
        v71[2] = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_56;
        v71[3] = &__block_descriptor_tmp_57;
        v71[4] = v38;
        v71[5] = a1;
        v18 = v71;
      }

      goto LABEL_67;
    }

LABEL_63:
    v19 = v20;
    v18 = v21;
LABEL_67:
    v64 = MEMORY[0x1E69E9820];
    v65 = 0x40000000;
    v66 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_62;
    v67 = &unk_1E871E050;
    v68 = v18;
    RESyncSyncableTypeInfoSetReadSnapshotCb();
    v59 = MEMORY[0x1E69E9820];
    v60 = 0x40000000;
    v61 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_64;
    v62 = &unk_1E871E078;
    v63 = v19;
    RESyncSyncableTypeInfoSetWriteSnapshotCb();
    v49 = MEMORY[0x1E69E9820];
    v50 = 0x40000000;
    v51 = ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_66;
    v52 = &unk_1E871E0A0;
    v58 = v42;
    v55 = a3;
    v56 = v22;
    v57 = a3;
    v53 = v21;
    v54 = v19;
    RESyncSyncableTypeInfoSetReadPayloadCb();
    v48 = v42;
    re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(v44, v89);
    v47 = a3;
    RESyncSyncableTypeInfoSetWritePayloadCb();
    if (v44[0])
    {
      if (v46)
      {
        (*(*v44[0] + 40))();
      }

      v46 = 0;
      memset(v44, 0, sizeof(v44));
      ++v45;
    }

    goto LABEL_71;
  }

  v40 = *re::ecsNetworkLogObjects(shouldSerializeAsJson);
  if (os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT))
  {
    v41 = *(a1 + 4);
    *buf = 136315138;
    *&buf[4] = v41;
    _os_log_impl(&dword_1E1C61000, v40, OS_LOG_TYPE_DEFAULT, "Custom Component %s has an encode or decode function, but not both.  This is incompatible with RESync.  Treating as opaque type.", buf, 0xCu);
  }

  RESyncSyncableTypeInfoSetReadSnapshotCb();
  RESyncSyncableTypeInfoSetWriteSnapshotCb();
  RESyncSyncableTypeInfoSetReadPayloadCb();
  RESyncSyncableTypeInfoSetWritePayloadCb();
LABEL_71:
  result = v89[0];
  if (v89[0] && v91)
  {
    return (*(*v89[0] + 40))();
  }

  return result;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke(uint64_t a1, uint64_t a2)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  MEMORY[0x1EEE9AC00](a1);
  bzero(v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), v4);
  v5 = *(a2 + 16);
  RESyncBitWriterConstructBackedNoAlloc();
  v6 = (*(*(a1 + 32) + 16))();
  *(a2 + 16) = RESyncBitWriterSize() + v5;
  RESyncBitWriterDestructNoDealloc();
  return v6;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  MEMORY[0x1EEE9AC00](a1);
  bzero(v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0), v6);
  RESyncBitReaderConstructNoAlloc();
  v7 = (*(*(a1 + 32) + 16))();
  re::snapshot::BufferDecoder::skipData(a2, a3);
  RESyncBitReaderDestructNoDealloc();
  return v7;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v14 = RESyncBitWriterOpenBuffer();
  v15 = 0u;
  v16 = 0u;
  re::DynamicString::setCapacity(&v15, 0);
  v17 = a5;
  v18 = a4;
  v8 = (*(*(*(a1 + 32) + 16) + 16))();
  v9 = RESyncBitWriterCloseBuffer();
  if ((v8 & 1) == 0)
  {
    v10 = *re::ecsNetworkLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      if (BYTE8(v15))
      {
        v13 = v16;
      }

      else
      {
        v13 = &v15 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v12;
      v20 = 2081;
      v21 = v13;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write OPACK payload of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  if (v15 && (BYTE8(v15) & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  return v8;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_9(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v22 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v14 = RESyncBitWriterOpenBuffer();
  v15 = 0u;
  v16 = 0u;
  re::DynamicString::setCapacity(&v15, 0);
  v17 = a5;
  v18 = a4;
  v8 = (*(**(a1 + 32) + 16))();
  v9 = RESyncBitWriterCloseBuffer();
  if ((v8 & 1) == 0)
  {
    v10 = *re::ecsNetworkLogObjects(v9);
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v12 = *(a1 + 40);
      if (BYTE8(v15))
      {
        v13 = v16;
      }

      else
      {
        v13 = &v15 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v12;
      v20 = 2081;
      v21 = v13;
      _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write raw snapshot of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  if (v15 && (BYTE8(v15) & 1) != 0)
  {
    (*(*v15 + 40))();
  }

  return v8;
}

re *___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_11(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v17 = -1;
  v18 = 0;
  v19 = a5;
  v20 = a6;
  v21 = 0;
  v15 = a2;
  v16 = a2 + a3;
  v12 = &unk_1F5D17190;
  v7 = (*(*(*(a1 + 32) + 24) + 16))();
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 136380675;
      v23 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read OPACK payload of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

re *___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24 = *MEMORY[0x1E69E9840];
  v13 = a2;
  v14 = a3;
  v17 = -1;
  v18 = 0;
  v19 = a5;
  v20 = a6;
  v21 = 0;
  v15 = a2;
  v16 = a2 + a3;
  v12 = &unk_1F5D172F0;
  v7 = (*(*(*(a1 + 32) + 8) + 16))();
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(a1 + 40);
      *buf = 136380675;
      v23 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_16(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v17 = RESyncBitWriterOpenBuffer();
  v18 = 0;
  v19 = 0;
  v20 = a2;
  v22 = 0u;
  v23 = 0u;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = a5;
  v25 = a4;
  v16 = &unk_1F5D16F10;
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(&v16, a3, *(a1 + 32));
  if (BYTE8(v22))
  {
    v10 = *(&v22 + 1) >> 1;
  }

  else
  {
    v10 = BYTE8(v22) >> 1;
  }

  v11 = RESyncBitWriterCloseBuffer();
  if (v10)
  {
    v12 = *re::ecsNetworkLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 48);
      if (BYTE8(v22))
      {
        v15 = v23;
      }

      else
      {
        v15 = &v22 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v14;
      v27 = 2081;
      v28 = v15;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to write OPACK payload of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  v16 = &unk_1F5D16DD0;
  if (v22 && (BYTE8(v22) & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  return v10 == 0;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_18(uint64_t a1, const char *a2, const char *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12[1] = a2;
  v12[2] = a3;
  v13 = -1;
  v14 = 0;
  v15 = a5;
  v16 = a6;
  v17 = 0;
  v12[3] = a2;
  v12[4] = &a3[a2];
  v12[0] = &unk_1F5D17190;
  v7 = re::snapshot::DecoderOPACK::apply(v12, a4, *(a1 + 32));
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 48);
      *buf = 136380675;
      v19 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read OPACK payload of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

uint64_t re::snapshot::DecoderOPACK::apply(const char **this, size_t a2, const re::IntrospectionBase *a3)
{
  re::snapshot::introspected::read<re::snapshot::DecoderOPACK>(this, a2, a3);
  v4 = this[3];
  if (v4 != this[4])
  {
    re::snapshot::BufferDecoder::error(this, "failed to consume input: %zu vs %zu", v4 - this[1], this[2]);
  }

  v5 = *(this + 44);
  if (v5 == 1)
  {
    re::snapshot::BufferDecoder::logInput(this);
  }

  return v5 ^ 1u;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_20(_anonymous_namespace_ *a1, uint64_t a2)
{
  v2 = *(a2 + 48);
  if (v2)
  {
    v3 = v2 >> 1;
  }

  else
  {
    v3 = v2 >> 1;
  }

  if (v3)
  {
    return 0;
  }

  v7 = *(a1 + 4);
  v8 = *(a2 + 80);
  v9 = *(a2 + 72);
  v10 = *(a2 + 8);
  HIDWORD(v11) = *(a2 + 20);
  v12 = *(a2 + 24);
  memset(v13, 0, sizeof(v13));
  re::DynamicString::setCapacity(v13, 0);
  v14 = v9;
  v15 = v8;
  LODWORD(v11) = *(a2 + 16);
  v4 = (*(*(v7 + 16) + 16))();
  *(a2 + 16) = v11;
  *(a2 + 8) = v10;
  *(a2 + 24) = v12;
  re::DynamicString::operator=((a2 + 40), v13);
  if (*&v13[0] && (BYTE8(v13[0]) & 1) != 0)
  {
    (*(**&v13[0] + 40))();
  }

  return v4;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_22(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v13 = *(a2 + 1);
  v5 = a3;
  v6 = re::Slice<unsigned char>::range(&v13, a2[3] - v13, a2[3] - v13 + a3);
  v8 = v7;
  v9 = (*(*a2 + 32))(a2);
  v10 = (*(*a2 + 40))(a2);
  v15 = v6;
  v16 = v8;
  v19 = -1;
  v20 = 0;
  v21 = v9;
  v22 = v10;
  v23 = 0;
  v17 = v6;
  v18 = v6 + v8;
  v14 = &unk_1F5D17190;
  v11 = (*(*(*(a1 + 32) + 24) + 16))();
  re::snapshot::BufferDecoder::skipData(a2, v5);
  return v11;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v16 = *MEMORY[0x1E69E9840];
  Length = (*(a1 + 32))(a3, *(a1 + 40), "json");
  v6 = Length;
  if (!Length || (Length = CFDataGetLength(Length)) == 0)
  {
    v12 = *re::ecsNetworkLogObjects(Length);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = *(*(a1 + 40) + 32);
      v14 = 136380675;
      v15 = v13;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to encode custom component of type %{private}s.", &v14, 0xCu);
      if (!v6)
      {
        return 0;
      }
    }

    else if (!v6)
    {
      return 0;
    }

    CFRelease(v6);
    return 0;
  }

  v7 = Length;
  BytePtr = CFDataGetBytePtr(v6);
  re::snapshot::BufferEncoder::writeRaw<true>(a2, BytePtr, v7);
  CFRelease(v6);
  v9 = *(a2 + 48);
  if (v9)
  {
    v10 = v9 >> 1;
  }

  else
  {
    v10 = v9 >> 1;
  }

  return v10 == 0;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_26(uint64_t a1, uint64_t a2, CFIndex length, uint64_t a4)
{
  v7 = length;
  v8 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(a2 + 24), length, *MEMORY[0x1E695E498]);
  v9 = (*(a1 + 32))(a4, *(a1 + 40), v8, "json");
  CFRelease(v8);
  re::snapshot::BufferDecoder::skipData(a2, v7);
  return v9;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_28(_anonymous_namespace_ *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 48);
  if (v3)
  {
    v4 = v3 >> 1;
  }

  else
  {
    v4 = v3 >> 1;
  }

  if (v4)
  {
    return 0;
  }

  v9 = *(a1 + 4);
  v10 = *(a2 + 8);
  v11 = *(a2 + 20);
  v12 = *(a2 + 80);
  v13 = *(a2 + 72);
  v16 = &unk_1F5D16DD0;
  v17 = v10;
  LODWORD(v18) = 0;
  HIDWORD(v18) = v11;
  v19 = *(a2 + 24);
  memset(v20, 0, sizeof(v20));
  re::DynamicString::setCapacity(v20, 0);
  v21 = v13;
  v22 = v12;
  v16 = &unk_1F5D16F10;
  LODWORD(v18) = *(a2 + 16);
  re::snapshot::introspected::write<re::snapshot::EncoderOPACK>(&v16, a3, v9);
  v14 = v19;
  if (BYTE8(v20[0]))
  {
    v15 = *(&v20[0] + 1) >> 1;
  }

  else
  {
    v15 = BYTE8(v20[0]) >> 1;
  }

  v5 = v15 == 0;
  *(a2 + 16) = v18;
  *(a2 + 8) = v17;
  *(a2 + 24) = v14;
  re::DynamicString::operator=((a2 + 40), v20);
  v16 = &unk_1F5D16DD0;
  if (*&v20[0] && (BYTE8(v20[0]) & 1) != 0)
  {
    (*(**&v20[0] + 40))();
  }

  return v5;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_30(uint64_t a1, uint64_t *a2, unsigned int a3, size_t a4)
{
  v15 = *(a2 + 1);
  v7 = a3;
  v8 = re::Slice<unsigned char>::range(&v15, a2[3] - v15, a2[3] - v15 + a3);
  v10 = v9;
  v11 = (*(*a2 + 32))(a2);
  v12 = (*(*a2 + 40))(a2);
  v16[1] = v8;
  v16[2] = v10;
  v17 = -1;
  v18 = 0;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  v16[3] = v8;
  v16[4] = &v10[v8];
  v16[0] = &unk_1F5D17190;
  v13 = re::snapshot::DecoderOPACK::apply(v16, a4, *(a1 + 32));
  re::snapshot::BufferDecoder::skipData(a2, v7);
  return v13;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5(uint64_t a1, uint64_t *a2, unsigned int a3)
{
  v13 = *(a2 + 1);
  v5 = a3;
  v6 = re::Slice<unsigned char>::range(&v13, a2[3] - v13, a2[3] - v13 + a3);
  v8 = v7;
  v9 = (*(*a2 + 32))(a2);
  v10 = (*(*a2 + 40))(a2);
  v15 = v6;
  v16 = v8;
  v19 = -1;
  v20 = 0;
  v21 = v9;
  v22 = v10;
  v23 = 0;
  v17 = v6;
  v18 = v6 + v8;
  v14 = &unk_1F5D172F0;
  v11 = (*(*(*(a1 + 32) + 8) + 16))();
  re::snapshot::BufferDecoder::skipData(a2, v5);
  return v11;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_6(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(a2, a3, *(a1 + 32));
  v4 = *(a2 + 48);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  return v5 == 0;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_7(uint64_t a1, uint64_t *a2, unsigned int a3, unint64_t a4)
{
  v15 = *(a2 + 1);
  v7 = a3;
  v8 = re::Slice<unsigned char>::range(&v15, a2[3] - v15, a2[3] - v15 + a3);
  v10 = v9;
  v11 = (*(*a2 + 32))(a2);
  v12 = (*(*a2 + 40))(a2);
  v16[1] = v8;
  v16[2] = v10;
  v17 = -1;
  v18 = 0;
  v19 = v11;
  v20 = v12;
  v21 = 0;
  v16[3] = v8;
  v16[4] = v8 + v10;
  v16[0] = &unk_1F5D172F0;
  v13 = re::snapshot::DecoderRaw::apply(v16, a4, *(a1 + 32));
  re::snapshot::BufferDecoder::skipData(a2, v7);
  return v13;
}

uint64_t re::snapshot::DecoderRaw::apply(re::snapshot::DecoderRaw *this, unint64_t a2, const re::IntrospectionBase *a3)
{
  re::snapshot::introspected::read<re::snapshot::DecoderRaw>(this, a2, a3);
  v4 = *(this + 3);
  if (v4 != *(this + 4))
  {
    re::snapshot::BufferDecoder::error(this, "failed to consume input: %zu vs %zu", v4 - *(this + 1), *(this + 2));
  }

  v5 = *(this + 44);
  if (v5 == 1)
  {
    re::snapshot::BufferDecoder::logInput(this);
  }

  return v5 ^ 1u;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_44(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = RESyncBitReaderDataPtr();
  v5 = RESyncBitReaderBytesLeft();
  MEMORY[0x1E69049A0](a3, v4, v5);
  RESyncBitReaderBytesLeft();
  RESyncBitReaderSkipData();
  return RESyncBitWriterIsOverflow() ^ 1;
}

void ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_4_49()
{
  RESyncBitReaderDataPtr();
  RESyncBitReaderBytesLeft();

  JUMPOUT(0x1E69049A0);
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_5_54(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  Length = (*(a1 + 32))(a3, *(a1 + 40), "json");
  v6 = Length;
  if (!Length || (Length = CFDataGetLength(Length)) == 0)
  {
    v13 = *re::ecsNetworkLogObjects(Length);
    if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 40) + 32);
      v15 = 136380675;
      v16 = v14;
      _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Failed to encode custom component of type %{private}s.", &v15, 0xCu);
      if (!v6)
      {
        return 0;
      }
    }

    else if (!v6)
    {
      return 0;
    }

    CFRelease(v6);
    return 0;
  }

  v7 = Length;
  BytePtr = CFDataGetBytePtr(v6);
  MEMORY[0x1E69049A0](a2, BytePtr, v7);
  CFRelease(v6);
  IsOverflow = RESyncBitWriterIsOverflow();
  if (!IsOverflow)
  {
    return 1;
  }

  v10 = *re::ecsNetworkLogObjects(IsOverflow);
  result = os_log_type_enabled(v10, OS_LOG_TYPE_ERROR);
  if (result)
  {
    v12 = *(*(a1 + 40) + 32);
    v15 = 136380675;
    v16 = v12;
    _os_log_error_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_ERROR, "Failed to write data payload of type %{private}s", &v15, 0xCu);
    return 0;
  }

  return result;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_56(uint64_t a1, const UInt8 *a2, CFIndex a3, uint64_t a4)
{
  v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], a2, a3, *MEMORY[0x1E695E498]);
  v7 = (*(a1 + 32))(a4, *(a1 + 40), v6, "json");
  CFRelease(v6);
  return v7;
}

BOOL ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_58(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v29 = *MEMORY[0x1E69E9840];
  *buf = 0;
  v17 = RESyncBitWriterOpenBuffer();
  v18 = 0;
  v19 = 0;
  v20 = a2;
  v22 = 0u;
  v23 = 0u;
  re::DynamicString::setCapacity(&v22, 0);
  v24 = a5;
  v25 = a4;
  v16 = &unk_1F5D17050;
  re::snapshot::introspected::write<re::snapshot::EncoderRaw>(&v16, a3, *(a1 + 32));
  if (BYTE8(v22))
  {
    v10 = *(&v22 + 1) >> 1;
  }

  else
  {
    v10 = BYTE8(v22) >> 1;
  }

  v11 = RESyncBitWriterCloseBuffer();
  if (v10)
  {
    v12 = *re::ecsNetworkLogObjects(v11);
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v14 = *(*(a1 + 32) + 48);
      if (BYTE8(v22))
      {
        v15 = v23;
      }

      else
      {
        v15 = &v22 + 9;
      }

      *buf = 136380931;
      *&buf[4] = v14;
      v27 = 2081;
      v28 = v15;
      _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "Failed to write raw snapshot of type %{private}s: %{private}s", buf, 0x16u);
    }
  }

  v16 = &unk_1F5D16DD0;
  if (v22 && (BYTE8(v22) & 1) != 0)
  {
    (*(*v22 + 40))();
  }

  return v10 == 0;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_60(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v12[1] = a2;
  v12[2] = a3;
  v13 = -1;
  v14 = 0;
  v15 = a5;
  v16 = a6;
  v17 = 0;
  v12[3] = a2;
  v12[4] = a2 + a3;
  v12[0] = &unk_1F5D172F0;
  v7 = re::snapshot::DecoderRaw::apply(v12, a4, *(a1 + 32));
  v8 = v7;
  if ((v7 & 1) == 0)
  {
    v9 = *re::ecsNetworkLogObjects(v7);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      v11 = *(*(a1 + 32) + 48);
      *buf = 136380675;
      v19 = v11;
      _os_log_error_impl(&dword_1E1C61000, v9, OS_LOG_TYPE_ERROR, "Failed to read raw snapshot of type %{private}s", buf, 0xCu);
    }
  }

  return v8;
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_62(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  v6 = *(a1 + 32);
  v7 = RESyncBitReaderDataPtr();
  v8 = RESyncBitReaderSize();
  v9 = RESyncBitReaderSkipData();
  v10 = *(v6 + 16);
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_2_64(uint64_t a1, uint64_t a2, uint64_t a3)
{
  SyncObjectContextEntry = RESyncGetSyncObjectContextEntry();
  v7 = *(*(a1 + 32) + 16);
  v8 = SyncObjectContextEntry + 448;
  v9 = *(a1 + 32);

  return v7(v9, a2, a3, v8, 6);
}

uint64_t ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_3_66(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  ContextSupportsProtocolLevelWalnut = RESyncObjectReadContextSupportsProtocolLevelWalnut();
  *v12 = RESyncBitReaderBytesLeft();
  if ((ContextSupportsProtocolLevelWalnut & 1) == 0)
  {
    RESyncBiasedVLQRead();
  }

  v6 = RESyncBitReaderDataPtr();
  RESyncBitReaderSkipData();
  if (RESyncBitReaderIsOverflow())
  {
    return 0;
  }

  IsLocalSession = RESyncObjectReadContextIsLocalSession();
  if ((IsLocalSession & 1) == 0 && *(a1 + 72) != 1)
  {
    memset(&v11[1], 0, 24);
    v10[0] = re::PassthroughAssetSerialization::instance(void)::instance;
    v10[1] = 0;
    v10[2] = RESyncObjectReadContextGetSourcePeerID();
    v10[3] = v11;
    v10[4] = 0;
    operator new();
  }

  MEMORY[0x1E69049A0](a3, v6, v12[0]);
  return 1;
}

void ___ZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseE_block_invoke_69(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  RESyncObjectWriteContextSupportsProtocolLevelWalnut();
  RESyncBitReaderBytesLeft();
  RESyncBitReaderDataPtr();
  v2 = RESyncObjectWriteContextIsLocalSession();
  if ((v2 & 1) != 0 || *(a1 + 112) == 1)
  {

    JUMPOUT(0x1E69049A0);
  }

  memset(&v4[1], 0, 24);
  v3[0] = re::PassthroughAssetSerialization::instance(void)::instance;
  v3[1] = 0;
  v3[2] = 0;
  v3[3] = v4;
  v3[4] = 0;
  v5 = 0;
  operator new();
}

uint64_t __destroy_helper_block_8_64c74_ZTSN2re12DynamicArrayIPFNS_6ResultINS_4UnitENS_13DynamicStringEEEPvS5_EEE(uint64_t a1)
{
  v3 = (a1 + 64);
  result = *(a1 + 64);
  if (result)
  {
    if (*(a1 + 96))
    {
      result = (*(*result + 40))(result);
    }

    *(a1 + 96) = 0;
    v3[1] = 0;
    v3[2] = 0;
    *v3 = 0;
    ++*(a1 + 88);
  }

  return result;
}

const char **re::ecs2::IntrospectedNetworkTypeHelper::shouldSerializeAsJson(re::ecs2::ComponentTypeBase const&,re::IntrospectionBase const&)::$_0::__invoke(uint64_t a1)
{
  if (*(a1 + 16) != 8)
  {
    return 0;
  }

  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  for (i = *(a1 + 64); ; ++i)
  {
    v3 = *i;
    if (**i == 1)
    {
      break;
    }

    if (!--v1)
    {
      return 0;
    }
  }

  if (*(v3 + 10) || strcmp("__JSON__", v3[1]))
  {
    return 0;
  }

  return v3;
}

uint64_t _ZZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseEEUb1_EN3__38__invokeEPvPhjPj(re::snapshot::BufferEncoder *this, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v6 = *(this + 4);
  v7 = *(this + 5);
  v8 = v6 + *a4;
  if (v8 <= v7)
  {
    goto LABEL_2;
  }

  v11 = re::snapshot::BufferEncoder::grow(this, v8);
  if (v11)
  {
    LODWORD(v6) = *(this + 4);
    LODWORD(v7) = *(this + 5);
LABEL_2:
    v9 = *(this + 1);
    *a4 = v7 - v6;
    return v9 + *(this + 4);
  }

  v12 = *re::ecsNetworkLogObjects(v11);
  if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
  {
    *v13 = 0;
    _os_log_error_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_ERROR, "[NetworkSystem] failed to grow snapshot buffer for BitWriter.", v13, 2u);
  }

  return 0;
}

__n128 _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb_E3__1NS_9allocatorISB_EEFvPvEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3B90;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb_E3__1NS_9allocatorISB_EEFvPvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseEEUb_E3__1))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

__n128 _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb0_E3__2NS_9allocatorISB_EEFvPvEE7__cloneEPNS0_6__baseISF_EE(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3C10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t _ZNKSt3__110__function6__funcIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS2_17IntrospectionBaseEPKNS3_17ComponentTypeBaseEEUb0_E3__2NS_9allocatorISB_EEFvPvEE6targetERKSt9type_info(uint64_t a1, uint64_t a2)
{
  if (std::type_info::operator==[abi:nn200100](a2, &_ZTIZZN2re4ecs229IntrospectedNetworkTypeHelper12makeTypeInfoEyRKNS_17IntrospectionBaseEPKNS0_17ComponentTypeBaseEEUb0_E3__2))
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t re::DynamicArray<re::Result<re::Unit,re::DynamicString> (*)(void *,void *)>::DynamicArray(uint64_t a1, uint64_t *a2)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *a1 = 0;
  *(a1 + 24) = 0;
  v3 = *a2;
  if (*a2)
  {
    v5 = a2[2];
    *a1 = v3;
    re::DynamicArray<float *>::setCapacity(a1, v5);
    ++*(a1 + 24);
    v6 = a2[2];
    if (v6 >= *(a1 + 16))
    {
      re::DynamicArray<float *>::setCapacity(a1, a2[2]);
      v7 = *(a1 + 16);
      if (v7)
      {
        memmove(*(a1 + 32), a2[4], 8 * v7);
        v7 = *(a1 + 16);
      }

      memcpy((*(a1 + 32) + 8 * v7), (a2[4] + 8 * v7), 8 * (v6 - v7));
    }

    else if (v6)
    {
      memmove(*(a1 + 32), a2[4], 8 * v6);
    }

    *(a1 + 16) = v6;
  }

  return a1;
}

void *re::ecs2::allocInfo_ImagePresentationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_297, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_297))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB460, "ImagePresentationSystem");
    __cxa_guard_release(&_MergedGlobals_297);
  }

  return &unk_1EE1AB460;
}

void re::ecs2::initInfo_ImagePresentationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xEFBCDC8F382DBD08;
  v6[1] = "ImagePresentationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x10000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ImagePresentationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ImagePresentationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ImagePresentationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ImagePresentationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ImagePresentationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ImagePresentationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ImagePresentationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

re::ecs2::ImagePresentationSystem *re::ecs2::ImagePresentationSystem::ImagePresentationSystem(re::ecs2::ImagePresentationSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF3C90;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  v3 = *re::imagePresentationLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[ImagePresentationSystem] System initialized.", v5, 2u);
  }

  return this;
}

_anonymous_namespace_ *re::ecs2::ImagePresentationSystem::willAddSystemToECSService(re::ecs2::ImagePresentationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  v4 = re::ServiceLocator::serviceOrNull<re::AssetService>(v3);
  if (v4)
  {
    *(this + 29) = v4;
  }

  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 30) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ImagePresentationService>(v6);
  if (result)
  {
    *(this + 31) = result;
  }

  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ImagePresentationService>(uint64_t a1)
{
  {
    re::introspect<re::ImagePresentationService>(BOOL)::info = re::introspect_ImagePresentationService(0);
  }

  v2 = re::introspect<re::ImagePresentationService>(BOOL)::info;
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

double re::ecs2::ImagePresentationSystem::willRemoveSystemFromECSService(re::ecs2::ImagePresentationSystem *this)
{
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

re::ImagePresentationManager *re::ecs2::ImagePresentationSystem::willAddSceneToECSService(re::ImagePresentationManager *this, re::EventBus **a2)
{
  if (a2)
  {
    this = *(this + 31);
    if (this)
    {
      return re::ImagePresentationManager::registerScene(this, a2);
    }
  }

  return this;
}

re::ImagePresentationManager *re::ecs2::ImagePresentationSystem::willRemoveSceneFromECSService(re::ImagePresentationManager *this, re::ecs2::Scene *a2)
{
  if (a2)
  {
    this = *(this + 31);
    if (this)
    {
      return re::ImagePresentationManager::unregisterScene(this, a2);
    }
  }

  return this;
}

void re::ecs2::ImagePresentationSystem::update(uint64_t SpatialMediaComponentHelper, int a2, uint64_t a3)
{
  if (*(SpatialMediaComponentHelper + 232) && (v3 = SpatialMediaComponentHelper, (v4 = *(SpatialMediaComponentHelper + 240)) != 0) && (v5 = *(SpatialMediaComponentHelper + 248)) != 0)
  {
    v6 = *(SpatialMediaComponentHelper + 224);
    if (!v6 || (*(v6 + 432) & 0x10) != 0)
    {
      v16[0] = *(SpatialMediaComponentHelper + 232);
      v16[1] = v4;
      v16[2] = v5;
      v7 = *(a3 + 200);
      if (v7)
      {
        v9 = *(a3 + 216);
        v10 = &v9[v7];
        do
        {
          v11 = *v9;
          re::MediaDefaults::logEnabled(SpatialMediaComponentHelper);
          SpatialMediaComponentHelper = re::ecs2::SceneComponentTable::get((v11 + 200), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (SpatialMediaComponentHelper)
          {
            v12 = *(SpatialMediaComponentHelper + 384);
            if (v12)
            {
              v13 = *(SpatialMediaComponentHelper + 400);
              v14 = 8 * v12;
              do
              {
                v15 = *(*v13 + 16);
                if (v15 && (*(v15 + 304) & 1) != 0)
                {
                  SpatialMediaComponentHelper = re::SpatialMediaManager::getSpatialMediaComponentHelper(*(v3 + 248), *(*v13 + 16));
                  if (SpatialMediaComponentHelper)
                  {
                    re::ecs2::ImagePresentationComponentHelper::impl::update(*SpatialMediaComponentHelper, v15, v16, *&a2);
                  }
                }

                v13 += 8;
                v14 -= 8;
              }

              while (v14);
            }
          }

          ++v9;
        }

        while (v9 != v10);
      }
    }
  }

  else
  {

    re::MediaDefaults::logEnabled(SpatialMediaComponentHelper);
  }
}

void re::ecs2::ImagePresentationSystem::~ImagePresentationSystem(re::ecs2::ImagePresentationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::allocInfo_ImagePresentationService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_298, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_298))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB4F8, "ImagePresentationService");
    __cxa_guard_release(&_MergedGlobals_298);
  }

  return &unk_1EE1AB4F8;
}

void re::initInfo_ImagePresentationService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7DEB557892DCA00;
  v6[1] = "ImagePresentationService";
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
  *(this + 8) = &re::initInfo_ImagePresentationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::ImageBasedLightReceiverManager::updateIBLData(re::ecs2::ImageBasedLightReceiverManager *this, unint64_t a2, re::RenderManager *a3, re::TransformService *a4)
{
  v121 = *MEMORY[0x1E69E9840];
  v6 = *(a3 + 20);
  if (v6)
  {
    v7 = *v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a3 + 12);
  v115 = -1.0;
  if (v8)
  {
    v91 = 0x7FB5C51BA04C45D6;
    v92 = "imageBasedLight:systemIBLIntensity";
    v9 = re::DebugSettingsManager::getWithErrorCode<float>(v8, &v91, &v115);
    if (v91)
    {
      if (v91)
      {
      }
    }
  }

  v10 = *(re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 8);
  if (*(a2 + 224) > v10)
  {
    v11 = *(*(a2 + 240) + 8 * v10);
    if (v11)
    {
      v12 = *(v11 + 384);
      if (v12)
      {
        v13 = *(v11 + 400);
        v14 = &v13[v12];
        do
        {
          v15 = *v13;
          if (*(*v13 + 1304))
          {
            if ((*(v15 + 152) & 1) == 0)
            {
              re::MaterialParameterBlock::MaterialParameterBlock(&v86, a3);
              LOBYTE(v91) = 1;
              re::MaterialParameterBlock::MaterialParameterBlock(&v92, &v86);
              re::Optional<re::MaterialParameterBlock>::operator=(v15 + 152, &v91);
              if (v91 == 1)
              {
                (*v92)();
              }

              re::MaterialParameterBlock::~MaterialParameterBlock(&v86);
            }

            v16 = v115;
            if (v115 < 0.0 || (*(v15 + 148) & 1) == 0)
            {
              v16 = exp2f(*(v15 + 28));
            }

            v97 = v16;
            if (*(v15 + 1208) == 1)
            {
              re::TransformService::worldMatrix(a4, *(v15 + 16), 0, &v86);
              *buf = 0u;
              v116 = 0u;
              v117[0] = xmmword_1E30474D0;
              v17 = re::decomposeScaleRotationTranslation<float>(&v86, buf, v117, &v116);
              v18 = 0;
              LODWORD(v28) = v117[0];
              v33.i32[0] = DWORD2(v117[0]);
              v19 = *&v28 * (*&v28 + *&v28);
              v20 = *(v117 + 1) * (*(v117 + 1) + *(v117 + 1));
              v21 = v33.f32[0] * (v33.f32[0] + v33.f32[0]);
              *&v35 = (*&v28 + *&v28) * *(v117 + 1);
              v22 = (*&v28 + *&v28) * *(v117 + 2);
              v23 = (*(v117 + 1) + *(v117 + 1)) * *(v117 + 2);
              v24 = (*&v28 + *&v28) * *(v117 + 3);
              v25 = (*(v117 + 1) + *(v117 + 1)) * *(v117 + 3);
              v33.f32[0] = (v33.f32[0] + v33.f32[0]) * *(v117 + 3);
              *&v28 = 1.0 - (v20 + v21);
              v26 = v28;
              *&v26.i32[1] = *&v35 + v33.f32[0];
              *v27.i32 = *&v35 - v33.f32[0];
              v33.f32[0] = v22 + v25;
              DWORD1(v28) = v27.i32[0];
              *(&v28 + 2) = v22 + v25;
              v33.f32[1] = v23 - v24;
              *&v35 = v22 - v25;
              v29 = vzip1q_s32(v26, v33);
              v30 = v26;
              v30.i32[2] = v35;
              *v26.i32 = 1.0 - (v19 + v21);
              *v31.i32 = v23 + v24;
              v32 = v27;
              v32.i32[1] = v26.i32[0];
              v32.i32[2] = v31.i32[0];
              v33.f32[2] = 1.0 - (v19 + v20);
              v34 = vzip2q_s32(v29, vdupq_lane_s32(*v26.i8, 0));
              DWORD1(v35) = v31.i32[0];
              DWORD2(v35) = v33.i32[2];
              v117[0] = vzip1q_s32(v29, v27);
              v117[1] = v34;
              v117[2] = vzip1q_s32(vzip2q_s32(v30, v33), v31);
              do
              {
                *&buf[v18 * 16] = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v30, COERCE_FLOAT(v117[v18])), v32, *&v117[v18], 1), v33, v117[v18], 2);
                ++v18;
              }

              while (v18 != 3);
              v36 = vdupq_n_s32(0x38D1B717u);
              v37 = vandq_s8(vandq_s8(vcgeq_f32(v36, vabdq_f32(xmmword_1E3047680, v119)), vcgeq_f32(v36, vabdq_f32(xmmword_1E3047670, *buf))), vcgeq_f32(v36, vabdq_f32(xmmword_1E30476A0, v120)));
              v37.i32[3] = v37.i32[2];
              if ((vminvq_u32(v37) & 0x80000000) == 0)
              {
                v38 = *re::ecsComponentsLogObjects(v17);
                if (os_log_type_enabled(v38, OS_LOG_TYPE_DEFAULT))
                {
                  v39 = *(*(v15 + 16) + 296);
                  *buf = 136315138;
                  *&buf[4] = v39;
                  _os_log_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_DEFAULT, "The world transform of the entity [%s] includes non-uniform scaling.                                     Set the rotation of its IBL component to identity.", buf, 0xCu);
                }

                v34 = xmmword_1E3047680;
                v28 = xmmword_1E3047670;
                v35 = xmmword_1E30476A0;
              }

              LODWORD(v92) = DWORD2(v28);
              v94 = v34.i32[2];
              v91 = v28;
              v93 = v34.i64[0];
              v96 = DWORD2(v35);
              v95 = v35;
            }

            else
            {
              LODWORD(v92) = 0;
              v91 = 1065353216;
              v94 = 0;
              v93 = 0x3F80000000000000;
              v96 = 1065353216;
              v95 = 0;
            }

            v98 = *(v15 + 1200);
            v40 = *(v15 + 1288);
            v41 = *(v15 + 1296);
            v86.i64[0] = *(v15 + 1280);
            v86.i8[12] = v41;
            v86.i32[2] = v40;
            *&v42 = re::ColorGamut3F::as(&v86, v7, 1);
            DWORD2(v42) = v43;
            v99 = v42;
            re::ColorManager::computeWPCMatrix((*(a3 + 15) + 2048), *(a3 + 12), &v86);
            v101 = v86.i32[2];
            v103 = v88;
            v105 = v90;
            v100 = v86.i64[0];
            v102 = v87;
            v104 = v89;
            v106 = *(v15 + 1204);
            if (*(v15 + 1209) == 1)
            {
              v45 = *(v15 + 1216);
              v44 = *(v15 + 1232);
              v46 = *(v15 + 1248);
            }

            else
            {
              v44 = xmmword_1E3090300;
              v46 = unk_1E3090310;
              v45 = _PromotedConst_0;
            }

            v108 = DWORD2(v45);
            v110 = DWORD2(v44);
            v107 = v45;
            v109 = v44;
            v112 = DWORD2(v46);
            v111 = v46;
            if (*(v15 + 136))
            {
              v113 = *(v15 + 140);
              v47 = 0;
              if (*(v15 + 137) == 1)
              {
                v47 = *(v15 + 144);
              }
            }

            else
            {
              v113 = 0;
              v47 = 0;
            }

            v114 = v47;
            v48 = [*(a3 + 26) newBufferWithBytes:&v91 length:208 options:0];
            *buf = v48;
            v119.i32[2] = 0;
            v120.i32[0] = 0;
            v120.i32[1] = [v48 length];
            v84 = 0x262DF9A294ABAC1CLL;
            v81[0] = 0;
            v82 = -1;
            std::__variant_detail::__ctor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v81, buf);
            v83 = v120.i64[0];
            v49 = re::MaterialParameterBlock::setBuffer((v15 + 160), &v84, v81, v85);
            v85[0] = 0;
            if (v82 != -1)
            {
              (off_1F5CF3D78[v82])(v117, v81, v49);
            }

            v82 = -1;
            v84 = 0;
            if (v119.i32[2] != -1)
            {
              (off_1F5CF3D78[v119.u32[2]])(v117, buf);
            }

            if (v48)
            {
            }
          }

          ++v13;
        }

        while (v13 != v14);
      }
    }
  }

  v50 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v91, this + 56, a2, v50 ^ (v50 >> 31));
  v51 = *(this + 9) + 80 * HIDWORD(v92);
  if (*(v51 + 56))
  {
    v52 = 0;
    while (1)
    {
      v53 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v51 + 16, v52);
      v54 = (v53 + 152);
      if ((*v54 & 1) == 0)
      {
        re::MaterialParameterBlock::MaterialParameterBlock(&v86, a3);
        LOBYTE(v91) = 1;
        re::MaterialParameterBlock::MaterialParameterBlock(&v92, &v86);
        re::Optional<re::MaterialParameterBlock>::operator=(v54, &v91);
        if (v91 == 1)
        {
          (*v92)(&v92);
        }

        re::MaterialParameterBlock::~MaterialParameterBlock(&v86);
      }

      if (!*(v53 + 96))
      {
        break;
      }

      v55 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v53 + 88));
      if (v55)
      {
        v56 = v55;
        v57 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v55 + 24));
        v58 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v56 + 72));
        v86 = 0uLL;
        memset(buf, 0, sizeof(buf));
        v117[0] = 0uLL;
        re::AssetHandle::AssetHandle(&v91, (v56 + 48));
        if (v92)
        {
          v59 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>(&v91);
        }

        else
        {
          v59 = 0;
        }

        re::TextureHandle::operator=(&v86, v57 + 8);
        re::TextureHandle::operator=(buf, v58 + 8);
        if (v59)
        {
          v63 = (v59 + 8);
        }

        else
        {
          v63 = &v86;
        }

        re::TextureHandle::operator=(v117, v63);
        re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredDiffuse", &v86, v80);
        v80[0] = 0;
        re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredSpecular", buf, v79);
        v79[0] = 0;
        re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredSSSDiffuse", v117, v78);
        v78[0] = 0;
        re::AssetHandle::~AssetHandle(&v91);
        re::TextureHandle::invalidate(v117);
        re::TextureHandle::invalidate(buf);
        v61 = &v86;
        goto LABEL_60;
      }

      re::AssetHandle::loadAsync((v53 + 88));
      v62 = 1;
LABEL_61:
      if ((*(v53 + 136) & 1) != 0 || *(v53 + 1208) == 1)
      {
        if (*(v53 + 120))
        {
          v64 = re::AssetHandle::loadedAsset<re::ImageBasedLightAsset>((v53 + 112));
          if (!v64)
          {
            re::AssetHandle::loadAsync((v53 + 112));
LABEL_71:
            ++v52;
            goto LABEL_72;
          }

          v65 = v64;
          v66 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v64 + 24));
          v67 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v65 + 72));
          v92 = 0;
          v91 = 0;
          v86 = 0uLL;
          re::TextureHandle::operator=(&v91, v66 + 8);
          re::TextureHandle::operator=(&v86, v67 + 8);
          re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredBlendDiffuse", &v91, v74);
          v74[0] = 0;
          re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredBlendSpecular", &v86, v73);
          v73[0] = 0;
        }

        else
        {
          v68 = *(a3 + 7);
          v92 = 0;
          v91 = 0;
          re::TextureManager::registerTexture(v68, (v68 + 88), &v86);
          re::TextureHandle::operator=(&v91, &v86);
          re::TextureHandle::invalidate(&v86);
          v86 = 0uLL;
          re::TextureManager::registerTexture(*(a3 + 7), (v68 + 88), buf);
          re::TextureHandle::operator=(&v86, buf);
          re::TextureHandle::invalidate(buf);
          re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredBlendDiffuse", &v91, v72);
          v72[0] = 0;
          re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredBlendSpecular", &v86, v71);
          v71[0] = 0;
        }

        re::TextureHandle::invalidate(&v86);
        re::TextureHandle::invalidate(&v91);
      }

      if (v62)
      {
        goto LABEL_71;
      }

      re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::removeAt(v51 + 16, v52);
LABEL_72:
      if (v52 >= *(v51 + 56))
      {
        return;
      }
    }

    v60 = *(a3 + 7);
    v92 = 0;
    v91 = 0;
    re::TextureManager::registerTexture(v60, (v60 + 88), &v86);
    re::TextureHandle::operator=(&v91, &v86);
    re::TextureHandle::invalidate(&v86);
    v86 = 0uLL;
    re::TextureManager::registerTexture(*(a3 + 7), (v60 + 88), buf);
    re::TextureHandle::operator=(&v86, buf);
    re::TextureHandle::invalidate(buf);
    re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredDiffuse", &v91, v77);
    v77[0] = 0;
    re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredSpecular", &v86, v76);
    v76[0] = 0;
    re::MaterialParameterBlock::setTextureHandle((v53 + 160), "texturePrefilteredSSSDiffuse", &v91, v75);
    v75[0] = 0;
    re::TextureHandle::invalidate(&v86);
    v61 = &v91;
LABEL_60:
    re::TextureHandle::invalidate(v61);
    v62 = 0;
    goto LABEL_61;
  }
}

uint64_t re::Optional<re::MaterialParameterBlock>::operator=(uint64_t a1, _BYTE *a2)
{
  if (*a1)
  {
    if (*a2)
    {
      re::MaterialParameterBlock::operator=(a1 + 8, (a2 + 8));
    }

    else
    {
      (**(a1 + 8))();
      *a1 = 0;
    }
  }

  else if (*a2)
  {
    *a1 = 1;
    re::MaterialParameterBlock::MaterialParameterBlock(a1 + 8, (a2 + 8));
  }

  return a1;
}

uint64_t re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::removeAt(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 40);
  if (v3 <= a2)
  {
    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeAt", 848, a2, v3);
    result = _os_crash();
    __break(1u);
  }

  else
  {
    v5 = v3 - 1;
    if (v3 - 1 > a2)
    {
      v6 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, v5);
      *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, a2) = v6;
      v5 = *(a1 + 40) - 1;
    }

    result = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, v5);
    --*(a1 + 40);
    ++*(a1 + 48);
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::getEntityToImageBasedLightReceiverComponentMap(uint64_t a1, unint64_t a2)
{
  v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v5, a1 + 8, a2, v3 ^ (v3 >> 31));
  return *(a1 + 24) + 72 * v6 + 16;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::registerScene(re::ecs2::ImageBasedLightReceiverManager *this, uint64_t a2)
{
  v117 = *MEMORY[0x1E69E9840];
  v80 = a2;
  v81 = 0;
  memset(v78, 0, sizeof(v78));
  DWORD1(v78[2]) = 0x7FFFFFFF;
  v82 = 0;
  v83 = 0;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v81, this + 8, a2, v5);
  if (HIDWORD(v82) == 0x7FFFFFFF)
  {
    v6 = re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 8, v82, v81);
    *(v6 + 8) = a2;
    *(v6 + 16) = 0u;
    v78[0] = 0u;
    *(v6 + 32) = 0;
    *&v78[1] = 0;
    *(v6 + 40) = xmmword_1E3058120;
    *(&v78[1] + 8) = xmmword_1E3058120;
    *(v6 + 56) = 1;
    ++*(this + 12);
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v78);
  v79 = 0;
  v78[0] = 0u;
  v78[1] = 1uLL;
  v78[2] = 0uLL;
  v81 = 0;
  v82 = 0;
  v83 = 0;
  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(&v81, this + 56, a2, v5);
  if (HIDWORD(v82) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(this + 56, v82, v81);
    *(v7 + 16) = 0;
    v7 += 16;
    *(v7 - 8) = a2;
    *(v7 + 8) = 0;
    *(v7 + 16) = 1;
    *(v7 + 32) = 0;
    *(v7 + 40) = 0;
    *(v7 + 24) = 0;
    *(v7 + 48) = 0;
    re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v7, v78);
    ++*(this + 24);
  }

  re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v78);
  v8 = *&v78[0];
  if (*&v78[0] && (v78[1] & 1) == 0)
  {
    v8 = (*(**&v78[0] + 40))();
  }

  v78[0] = 0uLL;
  LODWORD(v78[1]) = 1;
  memset(&v78[1] + 8, 0, 24);
  LODWORD(v79) = 0;
  v11 = *(a2 + 288);
  if (!v11)
  {
    re::internal::assertLog(4, v10, "assertion failure: '%s' (%s:line %i) An event bus is expected for this system to track IBL parameter changes.", "eventBus", "registerScene", 293);
    _os_crash();
    __break(1u);
  }

  v115 = re::globalAllocators(v9)[2];
  v12 = (*(*v115 + 32))(v115, 32, 0);
  *v12 = &unk_1F5CF3D98;
  v12[1] = this;
  v12[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentDidActivateEventHandler;
  v12[3] = 0;
  v116 = v12;
  v13 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v11, v114, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v15 = v14;
  v16 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v16 = v13;
  v16[1] = v15;
  v17 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v114);
  v112 = re::globalAllocators(v17)[2];
  v18 = (*(*v112 + 32))(v112, 32, 0);
  *v18 = &unk_1F5CF3DF0;
  v18[1] = this;
  v18[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandler;
  v18[3] = 0;
  v113 = v18;
  v19 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v11, v111, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v21 = v20;
  v22 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v22 = v19;
  v22[1] = v21;
  v23 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v111);
  v109 = re::globalAllocators(v23)[2];
  v24 = (*(*v109 + 32))(v109, 32, 0);
  *v24 = &unk_1F5CF3E48;
  v24[1] = this;
  v24[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandlerSceneEntityEvent;
  v24[3] = 0;
  v110 = v24;
  v25 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v11, v108, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v27 = v26;
  v28 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v28 = v25;
  v28[1] = v27;
  v29 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v108);
  v106 = re::globalAllocators(v29)[2];
  v30 = (*(*v106 + 32))(v106, 32, 0);
  *v30 = &unk_1F5CF3EA0;
  v30[1] = this;
  v30[2] = re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentDidChangeEventHandler;
  v30[3] = 0;
  v107 = v30;
  v31 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, v105, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v33 = v32;
  v34 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v34 = v31;
  v34[1] = v33;
  v35 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v105);
  v103 = re::globalAllocators(v35)[2];
  v36 = (*(*v103 + 32))(v103, 32, 0);
  *v36 = &unk_1F5CF3EF8;
  v36[1] = this;
  v36[2] = re::ecs2::ImageBasedLightReceiverManager::entityAddEventHandler;
  v36[3] = 0;
  v104 = v36;
  v37 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidAddEvent>(v11, v102, 0, 0);
  v39 = v38;
  v40 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v40 = v37;
  v40[1] = v39;
  v41 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::destroyCallable(v102);
  v100 = re::globalAllocators(v41)[2];
  v42 = (*(*v100 + 32))(v100, 32, 0);
  *v42 = &unk_1F5CF3F50;
  v42[1] = this;
  v42[2] = re::ecs2::ImageBasedLightReceiverManager::entityRemoveEventHandler;
  v42[3] = 0;
  v101 = v42;
  v43 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v11, v99, 0, 0);
  v45 = v44;
  v46 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v46 = v43;
  v46[1] = v45;
  v47 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v99);
  v97 = re::globalAllocators(v47)[2];
  v48 = (*(*v97 + 32))(v97, 32, 0);
  *v48 = &unk_1F5CF3FA8;
  v48[1] = this;
  v48[2] = re::ecs2::ImageBasedLightReceiverManager::entityReparentEventHandler;
  v48[3] = 0;
  v98 = v48;
  v49 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityDidReparentEvent>(v11, v96, 0, 0);
  v51 = v50;
  v52 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v52 = v49;
  v52[1] = v51;
  v53 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::destroyCallable(v96);
  v94 = re::globalAllocators(v53)[2];
  v54 = (*(*v94 + 32))(v94, 32, 0);
  *v54 = &unk_1F5CF3D98;
  v54[1] = this;
  v54[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentDidActivateEventHandler;
  v54[3] = 0;
  v95 = v54;
  v55 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v11, v93, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v57 = v56;
  v58 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v58 = v55;
  v58[1] = v57;
  v59 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v93);
  v91 = re::globalAllocators(v59)[2];
  v60 = (*(*v91 + 32))(v91, 32, 0);
  *v60 = &unk_1F5CF3DF0;
  v60[1] = this;
  v60[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandler;
  v60[3] = 0;
  v92 = v60;
  v61 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v11, v90, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v63 = v62;
  v64 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v64 = v61;
  v64[1] = v63;
  v65 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v90);
  v88 = re::globalAllocators(v65)[2];
  v66 = (*(*v88 + 32))(v88, 32, 0);
  *v66 = &unk_1F5CF3E48;
  v66[1] = this;
  v66[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandlerSceneEntityEvent;
  v66[3] = 0;
  v89 = v66;
  v67 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillDeactivateEvent>(v11, v87, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v69 = v68;
  v70 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v70 = v67;
  v70[1] = v69;
  v71 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::destroyCallable(v87);
  v85 = re::globalAllocators(v71)[2];
  v72 = (*(*v85 + 32))(v85, 32, 0);
  *v72 = &unk_1F5CF3EA0;
  v72[1] = this;
  v72[2] = re::ecs2::ImageBasedLightReceiverManager::iblComponentDidChangeEventHandler;
  v72[3] = 0;
  v86 = v72;
  v73 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v11, v84, re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
  v75 = v74;
  v76 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(v78);
  *v76 = v73;
  v76[1] = v75;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v84);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::add(this + 104, &v80, v78);
  re::BucketArray<RESubscriptionHandle,8ul>::deinit(v78);
  result = *&v78[0];
  if (*&v78[0])
  {
    if ((v78[1] & 1) == 0)
    {
      return (*(**&v78[0] + 40))();
    }
  }

  return result;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentDidActivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (!re::ecs2::EntityHandle::isNull(v4 + 4))
  {
    re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLReceiverComponentCache(a1, v4, a2);
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = a2;
  do
  {
    v6 = v5;
    v5 = *(v5 + 32);
  }

  while (v5);
  re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, v4, a2, *(v6 + 24));
  *(v4 + 7) = 0;
  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblReceiverComponentWillDeactivateEventHandlerSceneEntityEvent(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = a2;
  do
  {
    v6 = v5;
    v5 = *(v5 + 32);
  }

  while (v5);
  re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, v4, a2, *(v6 + 24));
  *(v4 + 7) = 0;
  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::entityAddEventHandler(uint64_t a1, unint64_t a2)
{
  v15 = a2;
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v6 = *(v5 + 24);
  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v6 ^ (v6 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v16, a1 + 8, v6, v7 ^ (v7 >> 31));
  v8 = *(a1 + 24) + 72 * HIDWORD(v17);
  v9 = *(a2 + 32);
  if (v9 && (*(v9 + 304) & 0x80) != 0)
  {
    v9 = 0;
  }

  v16 = v9;
  v10 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v8 + 16, &v16);
  if (v10)
  {
    v11 = *v10;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v8 + 16, &v15, v12 ^ (v12 >> 31), &v16);
    if (HIDWORD(v17) == 0x7FFFFFFF)
    {
      v13 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v8 + 16, v17, v16);
      *(v13 + 8) = v15;
      *(v13 + 16) = v11;
      ++*(v8 + 56);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::entityRemoveEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, re::ecs2::Entity *a2)
{
  v8 = a2;
  do
  {
    v3 = a2;
    a2 = *(a2 + 4);
  }

  while (a2);
  v4 = *(v3 + 3);
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v9, a1 + 8, v4, v5 ^ (v5 >> 31));
  v6 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(*(a1 + 3) + 72 * v10 + 16, &v8);
  if (v6)
  {
    re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(a1, v8, *v6, 0);
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::entityReparentEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, re::ecs2::Entity *a2, uint64_t *a3)
{
  v22 = a2;
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  v8 = *(v7 + 3);
  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v23, a1 + 8, v8, v9 ^ (v9 >> 31));
  v10 = *(a1 + 3);
  v11 = *a3;
  v23 = *a3;
  v12 = *(a2 + 4);
  if (v12)
  {
    if ((*(v12 + 304) & 0x80) != 0)
    {
      v13 = 0;
    }

    else
    {
      v13 = *(a2 + 4);
    }
  }

  else
  {
    v13 = 0;
  }

  v14 = v10 + 72 * v24;
  if (!v11 || (v15 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v14 + 16, &v23)) == 0)
  {
    v16 = 0;
    if (!v13)
    {
      goto LABEL_16;
    }

LABEL_13:
    v21 = v13;
    v17 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v14 + 16, &v21);
    if (v17)
    {
      v13 = *v17;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_16;
  }

  v16 = *v15;
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_16:
  v18 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v14 + 16, &v22);
  if (v18)
  {
    v19 = *v18;
  }

  else
  {
    v19 = 0;
  }

  if (v19 == v16)
  {
    re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(a1, v22, v19, v13);
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentDidActivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, char *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v7)
  {
    v8 = *(v7 + 384);
    if (v8)
    {
      v9 = *(v7 + 400);
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        if (re::ecs2::EntityHandle::resolve((*v9 + 32), v6) == a2)
        {
          re::ecs2::ImageBasedLightReceiverManager::processIBLReceiverComponentDidChange(a1, *(v11 + 16));
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandler(re::ecs2::ImageBasedLightReceiverManager *a1, uint64_t a2)
{
  v3 = a2;
  do
  {
    v4 = v3;
    v3 = *(v3 + 32);
  }

  while (v3);
  v5 = *(v4 + 24);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v7 = re::ecs2::SceneComponentTable::get((v5 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v7)
  {
    v8 = *(v7 + 384);
    if (v8)
    {
      v9 = *(v7 + 400);
      v10 = 8 * v8;
      do
      {
        v11 = *v9;
        if (*(*v9 + 7) == v6)
        {
          re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, *v9, *(v11 + 2), v5);
          *(v11 + 7) = 0;
        }

        ++v9;
        v10 -= 8;
      }

      while (v10);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentWillDeactivateEventHandlerSceneEntityEvent(re::ecs2::ImageBasedLightReceiverManager *a1, char *a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 4);
  }

  while (v4);
  v6 = *(v5 + 3);
  v7 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v8 = re::ecs2::SceneComponentTable::get((v6 + 200), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v8)
  {
    v9 = *(v8 + 384);
    if (v9)
    {
      v10 = *(v8 + 400);
      v11 = 8 * v9;
      do
      {
        v12 = *v10;
        if (*(*v10 + 7) == v7)
        {
          re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, *v10, *(v12 + 2), v6);
          *(v12 + 7) = 0;
        }

        if (re::ecs2::EntityHandle::resolve(v12 + 4, v6) == a2)
        {
          re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(a1, v12, *(v12 + 2), v6);
          re::ecs2::EntityHandle::reset((v12 + 32));
          objc_destroyWeak(v12 + 4);
          *(v12 + 4) = 0;
        }

        ++v10;
        v11 -= 8;
      }

      while (v11);
    }
  }

  return 0;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::iblComponentDidChangeEventHandler(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = v4;
  do
  {
    v6 = v2;
    v2 = *(v2 + 32);
  }

  while (v2);
  if (*(v4 + 1304))
  {
    v7 = *(v6 + 24);
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v7 ^ (v7 >> 30))) >> 27));
    v9 = v8 ^ (v8 >> 31);
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v11, a1 + 56, v7, v9);
    re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(v11, *(a1 + 72) + 80 * v12 + 16, v5);
    if ((v11[0] & 1) == 0)
    {
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v11, a1 + 56, v7, v9);
      *re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::addUninitialized(*(a1 + 72) + 80 * v12 + 16) = v5;
    }
  }

  return 0;
}

BOOL re::ecs2::ImageBasedLightReceiverManager::unregisterScene(re::ecs2::ImageBasedLightReceiverManager *this, uint64_t a2)
{
  v23 = a2;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v5 = v4 ^ (v4 >> 31);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(v24, this + 8, a2, v5);
  v6 = v26;
  if (v26 != 0x7FFFFFFF)
  {
    v7 = *(this + 3);
    v8 = (v7 + 72 * v26);
    v9 = *v8 & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      *(*(this + 2) + 4 * v25) = v9;
    }

    else
    {
      *(v7 + 72 * v27) = *(v7 + 72 * v27) & 0x80000000 | v9;
    }

    v10 = *v8;
    if ((*v8 & 0x80000000) != 0)
    {
      *v8 = v10 & 0x7FFFFFFF;
      re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v8 + 2);
      v7 = *(this + 3);
      v10 = *(v7 + 72 * v6);
    }

    *(v7 + 72 * v6) = *(this + 11) | v10 & 0x80000000;
    --*(this + 9);
    v11 = *(this + 12) + 1;
    *(this + 11) = v6;
    *(this + 12) = v11;
  }

  re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v24, this + 56, a2, v5);
  v12 = v26;
  if (v26 != 0x7FFFFFFF)
  {
    v13 = *(this + 9);
    v14 = *(v13 + 80 * v26) & 0x7FFFFFFF;
    if (v27 == 0x7FFFFFFF)
    {
      *(*(this + 8) + 4 * v25) = v14;
    }

    else
    {
      *(v13 + 80 * v27) = *(v13 + 80 * v27) & 0x80000000 | v14;
    }

    re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(v13, v12);
    *(*(this + 9) + 80 * v12) = *(*(this + 9) + 80 * v12) & 0x80000000 | *(this + 23);
    --*(this + 21);
    v15 = *(this + 24) + 1;
    *(this + 23) = v12;
    *(this + 24) = v15;
  }

  v16 = *(a2 + 288);
  v17 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 104, &v23);
  if (v17)
  {
    v18 = v17;
    v19 = *(v17 + 40);
    if (v19)
    {
      for (i = 0; i != v19; ++i)
      {
        v21 = re::BucketArray<RESubscriptionHandle,8ul>::operator[](v18, i);
        re::EventBus::unsubscribe(v16, *v21, *(v21 + 8));
      }
    }
  }

  return re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::remove(this + 104, &v23);
}

void re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLReceiverComponentCache(re::ecs2::ImageBasedLightReceiverManager *this, id *a2, re::ecs2::Entity *a3)
{
  v6 = a3;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  v8 = *(v7 + 3);
  if (!a2[7])
  {
    if (ResolvedIBLComponent)
    {
      re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLComponentCache(this, ResolvedIBLComponent, a2, v8);
    }
  }

  if (*(a3 + 304))
  {
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v8 ^ (v8 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v15, this + 8, v8, v10 ^ (v10 >> 31));
    v11 = *(a3 + 4);
    if (v11 && (*(v11 + 304) & 0x80) == 0 && (v12 = *(this + 3) + 72 * v16, v15 = *(a3 + 4), (v13 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v12 + 16, &v15)) != 0))
    {
      v14 = *v13;
    }

    else
    {
      v14 = 0;
    }

    re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(this, a3, v14, a2);
  }
}

void re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(re::ecs2::ImageBasedLightReceiverManager *this, re::ecs2::ImageBasedLightReceiverComponent *a2, re::ecs2::Entity *a3, unint64_t a4)
{
  v8 = *(a2 + 7);
  if (v8)
  {
    re::ecs2::ImageBasedLightReceiverManager::removeIBLComponentCache(this, v8, a4);
  }

  v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v14, this + 8, a4, v9 ^ (v9 >> 31));
  v10 = *(a3 + 4);
  if (v10 && (*(v10 + 304) & 0x80) == 0 && (v11 = *(this + 3) + 72 * v15, v14 = *(a3 + 4), (v12 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v11 + 16, &v14)) != 0))
  {
    v13 = *v12;
  }

  else
  {
    v13 = 0;
  }

  re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(this, a3, a2, v13);
}

void re::ecs2::ImageBasedLightReceiverManager::processIBLReceiverComponentDidChange(re::ecs2::ImageBasedLightReceiverManager *this, re::ecs2::Entity *a2)
{
  v4 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v5 = v4;
  v6 = a2;
  do
  {
    v7 = v6;
    v6 = *(v6 + 4);
  }

  while (v6);
  v8 = *(v7 + 3);
  isNull = re::ecs2::EntityHandle::isNull((v4 + 32));
  v11 = *(v5 + 7);
  if (isNull)
  {
    if (v11)
    {
      re::ecs2::ImageBasedLightReceiverManager::removeIBLReceiverComponentCache(this, v5, a2, v8);
      *(v5 + 7) = 0;
    }
  }

  else if (v11)
  {
    v13 = *(v5 + 7);
    if (ResolvedIBLComponent != v13)
    {
      v14 = ResolvedIBLComponent;
      re::ecs2::ImageBasedLightReceiverManager::removeIBLComponentCache(this, v13, v8);
      if (v14)
      {

        re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLComponentCache(this, v14, v5, v8);
      }
    }
  }

  else
  {

    re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLReceiverComponentCache(this, v5, a2);
  }
}

void re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(re::ecs2::ImageBasedLightReceiverManager *this, unint64_t a2, re::ecs2::ImageBasedLightReceiverComponent *a3, re::ecs2::ImageBasedLightReceiverComponent *a4)
{
  v27 = a2;
  v8 = a2;
  do
  {
    v9 = v8;
    v8 = *(v8 + 4);
  }

  while (v8);
  v10 = *(v9 + 3);
  v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v10 ^ (v10 >> 30))) >> 27));
  re::HashTable<re::ecs2::Scene const*,re::HashTable<unsigned long long,re::SharedPtr<re::AudioSourceState>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::findEntry<re::ecs2::Scene const*>(&v28, this + 8, v10, v11 ^ (v11 >> 31));
  v12 = *(this + 3) + 72 * HIDWORD(v29);
  if (a4)
  {
    v28 = 0;
    v29 = 0;
    v30 = 0;
    v13 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v12 + 16, &v27, v13 ^ (v13 >> 31), &v28);
    v14 = HIDWORD(v29);
    if (HIDWORD(v29) == 0x7FFFFFFF)
    {
      v15 = re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::allocEntry(v12 + 16, v29, v28);
      *(v15 + 8) = v27;
      *(v15 + 16) = a4;
      ++*(v12 + 56);
    }

    else
    {
      ++*(v12 + 56);
      *(*(v12 + 32) + 32 * v14 + 16) = a4;
    }
  }

  else
  {
    v16 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(v12 + 16, &v27, v16 ^ (v16 >> 31), &v28);
    v17 = HIDWORD(v29);
    if (HIDWORD(v29) != 0x7FFFFFFF)
    {
      v18 = *(v12 + 32);
      v19 = *(v18 + 32 * HIDWORD(v29)) & 0x7FFFFFFF;
      if (v30 == 0x7FFFFFFF)
      {
        *(*(v12 + 24) + 4 * v29) = v19;
        v17 = HIDWORD(v29);
      }

      else
      {
        *(v18 + 32 * v30) = *(v18 + 32 * v30) & 0x80000000 | v19;
      }

      *(v18 + 32 * v17) = *(v12 + 52);
      --*(v12 + 44);
      v20 = *(v12 + 56) + 1;
      *(v12 + 52) = v17;
      *(v12 + 56) = v20;
    }
  }

  v21 = *(v27 + 43);
  if (v21)
  {
    v22 = *(v27 + 45);
    v23 = 8 * v21;
    do
    {
      v24 = *v22;
      if (*v22)
      {
        v25 = (v24 + 8);
      }

      v28 = v24;
      v26 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(v12 + 16, &v28);
      if (!v26 || *v26 == a3)
      {
        re::ecs2::ImageBasedLightReceiverManager::updateEntityToIBLReceiverComponentMap(this, v24, a3, a4);
      }

      if (v24)
      {
      }

      ++v22;
      v23 -= 8;
    }

    while (v23);
  }
}

char *anonymous namespace::getResolvedIBLComponent(id *this, re::ecs2::ImageBasedLightReceiverComponent *a2, const re::ecs2::Scene *a3)
{
  result = re::ecs2::EntityHandle::resolve(this + 4, a2);
  if (result)
  {
    if (result[304])
    {
      return re::ecs2::EntityComponentCollection::get((result + 48), re::ecs2::ComponentImpl<re::ecs2::ImageBasedLightComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void *re::ecs2::ImageBasedLightReceiverManager::addOrUpdateIBLComponentCache(void *this, re::ecs2::ImageBasedLightComponent *a2, re::ecs2::ImageBasedLightReceiverComponent *a3, uint64_t a4)
{
  if (!*(a2 + 163))
  {
    v7 = this;
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a4 ^ (a4 >> 30))) >> 27));
    v9 = v8 ^ (v8 >> 31);
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v10, (this + 7), a4, v9);
    this = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(v10, v7[9] + 80 * v11 + 16, a2);
    if ((v10[0] & 1) == 0)
    {
      re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v10, (v7 + 7), a4, v9);
      this = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::addUninitialized(v7[9] + 80 * v11 + 16);
      *this = a2;
    }
  }

  ++*(a2 + 163);
  *(a3 + 7) = a2;
  return this;
}

uint64_t re::ecs2::ImageBasedLightReceiverManager::removeIBLComponentCache(uint64_t this, re::ecs2::ImageBasedLightComponent *a2, unint64_t a3)
{
  v5 = *(a2 + 163) - 1;
  *(a2 + 163) = v5;
  if (!v5)
  {
    v13 = v3;
    v14 = v4;
    v8 = this;
    v11[0] = 0;
    re::Optional<re::MaterialParameterBlock>::operator=(a2 + 152, v11);
    if (v11[0] == 1)
    {
      (*v12)();
    }

    v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
    re::HashTable<re::ecs2::Scene *,re::FrameAnalysisManager::SceneSubscriptions,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::findEntry<re::ecs2::Scene *>(v11, v8 + 56, a3, v9 ^ (v9 >> 31));
    v10 = *(v8 + 72) + 80 * HIDWORD(v12);
    this = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(v11, v10 + 16, a2);
    if (v11[0] == 1)
    {
      return re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::removeAt(v10 + 16, v12);
    }
  }

  return this;
}

void re::ecs2::ImageBasedLightReceiverManager::~ImageBasedLightReceiverManager(re::ecs2::ImageBasedLightReceiverManager *this)
{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 104);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);
}

{
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 104);
  re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 7);
  re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(this + 1);

  JUMPOUT(0x1E6906520);
}

void re::MaterialParameterBlock::~MaterialParameterBlock(re::MaterialParameterBlock *this)
{
  *this = &unk_1F5CF4000;
  re::MaterialParameterBlock::deinit(this);
  v2 = *(this + 124);
  if (v2)
  {

    *(this + 124) = 0;
  }

  re::HashTable<unsigned long,re::HashTable<unsigned long,unsigned long,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 111);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 824);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 760);
  re::HashBrown<re::WeakStringID,re::WeakStringID,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakStringID>,false>::deinit(this + 696);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 632);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 568);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 504);
  re::HashBrown<re::WeakStringID,re::WeakParameterBinding,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::WeakParameterBinding>,false>::deinit(this + 440);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 376);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 312);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 248);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 184);
  re::DynamicArray<NS::SharedPtr<MTL::SamplerState>>::deinit(this + 144);
  re::DynamicArray<re::BufferSlice>::deinit(this + 104);
  re::DynamicArray<re::TextureHandle>::deinit(this + 64);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::MaterialParameterBlock::~MaterialParameterBlock(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3D98;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3D98;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3DF0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3DF0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3E48;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3E48;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3EA0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3EA0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3EF8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3EF8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3F50;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3F50;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3FA8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::ImageBasedLightReceiverManager,REEventHandlerResult (re::ecs2::ImageBasedLightReceiverManager::*)(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityDidReparentEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3FA8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

double re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(a1[2], v3++);
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = (result + 80 * a2);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;
    v3 = (v2 + 4);
    re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v3);

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v3);
  }

  return result;
}

double re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(uint64_t *a1)
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
          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 72;
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

uint64_t re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<char const*,re::AssetLoadRequest::LoadStatistics::AssetTypeStats,re::Hash<char const*>,re::EqualTo<char const*>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 64) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0u;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 32) = 0;
                *(v17 + 16) = 0u;
                *(v17 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v17, (v13 + 16));
              }

              v13 += 72;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::HashTable<re::ecs2::Entity *,re::ecs2::ImageBasedLightReceiverComponent *,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,true,false>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
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
    v20 = *(v19 + 72 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 72 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 72 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 64) = a3;
  ++*(a1 + 28);
  return v19 + 72 * v5;
}

uint64_t re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::init(v25, v9, v8);
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
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, *(v13 + 72) % *(a1 + 24));
                v18 = *(v13 + 8);
                *(v17 + 16) = 0;
                v17 += 16;
                *(v17 - 8) = v18;
                *(v17 + 8) = 0;
                *(v17 + 16) = 1;
                *(v17 + 48) = 0;
                *(v17 + 32) = 0;
                *(v17 + 40) = 0;
                *(v17 + 24) = 0;
                re::BucketArray<re::ecs2::Entity const*,8ul>::swap(v17, v13 + 16);
              }

              v13 += 80;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Scene const*,re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::deinit(v25);
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
    v20 = *(v19 + 80 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 80 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 80 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 72) = a3;
  ++*(a1 + 28);
  return v19 + 80 * v5;
}

uint64_t re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::indexOf(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 40);
  if (v3)
  {
    v4 = 0;
    while (1)
    {
      if (*(a2 + 8) <= v4 >> 5)
      {
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v5 = a2 + 24;
      if ((*(a2 + 16) & 1) == 0)
      {
        v5 = *(a2 + 32);
      }

      if (*(*(v5 + 8 * (v4 >> 5)) + 8 * (v4 & 0x1F)) == a3)
      {
        break;
      }

      if (v3 == ++v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
    v4 = 0;
  }

  if (v4 == v3)
  {
LABEL_11:
    v6 = 0;
  }

  else
  {
    *(result + 8) = v4;
    v6 = 1;
  }

  *result = v6;
  return result;
}

uint64_t re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
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

void *re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 256, 0);
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
                goto LABEL_22;
              }

              v12 = 2 * v9;
              goto LABEL_18;
            }

            v10 = v7 + 1;
            if (v10 >= 3)
            {
              v12 = 4;
LABEL_18:
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

LABEL_22:
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
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v3, a2);
    *(v3 + 4) += 2;
    v3[5] = 0;
    result = re::BucketArray<re::ecs2::ImageBasedLightComponent *,32ul>::setBucketsCapacity(v3, a2);
    ++*(v3 + 12);
  }

  return result;
}

float32x2_t re::poseFromOriginAndXYAxes@<D0>(uint64_t *a1@<X0>, float32x4_t *a2@<X1>, int32x4_t *a3@<X2>, uint64_t a4@<X8>)
{
  v4 = vmulq_f32(*a2, *a2);
  *&v5 = v4.f32[2] + vaddv_f32(*v4.f32);
  v6 = vrsqrte_f32(v5);
  v7 = vmul_f32(v6, vrsqrts_f32(v5, vmul_f32(v6, v6)));
  v8 = vmulq_n_f32(*a2, vmul_f32(v7, vrsqrts_f32(v5, vmul_f32(v7, v7))).f32[0]);
  v9 = vextq_s8(vuzp1q_s32(v8, v8), v8, 0xCuLL);
  v10 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(*a3, *a3), *a3, 0xCuLL), vnegq_f32(v8)), *a3, v9);
  v11 = vmulq_f32(v10, v10);
  *&v12 = v11.f32[1] + (v11.f32[2] + v11.f32[0]);
  v13 = vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL);
  *v10.f32 = vrsqrte_f32(v12);
  *v10.f32 = vmul_f32(*v10.f32, vrsqrts_f32(v12, vmul_f32(*v10.f32, *v10.f32)));
  v14 = vmulq_n_f32(v13, vmul_f32(*v10.f32, vrsqrts_f32(v12, vmul_f32(*v10.f32, *v10.f32))).f32[0]);
  v15 = vmlaq_f32(vmulq_f32(v9, vnegq_f32(v14)), v8, vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL));
  v16 = vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL);
  v17 = vmulq_f32(v15, v15);
  v4.f32[0] = v17.f32[1] + (v17.f32[2] + v17.f32[0]);
  *v17.f32 = vrsqrte_f32(v4.u32[0]);
  *v17.f32 = vmul_f32(*v17.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v17.f32, *v17.f32)));
  v18 = *a1;
  v19 = a1[1];
  v21[0] = v8;
  v21[1] = vmulq_n_f32(v16, vmul_f32(*v17.f32, vrsqrts_f32(v4.u32[0], vmul_f32(*v17.f32, *v17.f32))).f32[0]);
  v21[2] = v14;
  return re::Pose<float>::Pose(a4, v18, v19, v21);
}

void *re::ecs2::allocInfo_AudioTetherComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB590, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB590))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB5B0, "AudioTetherComponent");
    __cxa_guard_release(&qword_1EE1AB590);
  }

  return &unk_1EE1AB5B0;
}

void re::ecs2::initInfo_AudioTetherComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xE2320D5BE5AEBCEALL;
  v18[1] = "AudioTetherComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&_MergedGlobals_299, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_299);
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
      qword_1EE1AB598 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "uniquePid";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AB5A0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<unsigned char [16]>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "anchorIdentifier";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1900000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AB5A8 = v16;
      __cxa_guard_release(&_MergedGlobals_299);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AB598;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioTetherComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioTetherComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioTetherComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioTetherComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220AudioTetherComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::ecs2::AudioTetherComponent *re::ecs2::AudioTetherComponent::AudioTetherComponent(re::ecs2::AudioTetherComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF4048;
  *(this + 6) = getpid();
  uuid_generate_random(this + 25);
  return this;
}

void re::ecs2::AudioTetherComponent::~AudioTetherComponent(re::ecs2::AudioTetherComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220AudioTetherComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::VertexCacheComponent::resetDeformerInputs(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v15[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v9 = (a2 + 8);
  }

  else
  {
    v9 = 0;
  }

  inited = objc_initWeak(&location, v9);
  memset(v15, 0, 24);
  v15[3] = re::globalAllocators(inited)[2];
  v15[4] = 0;
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::reset((a1 + 192), &location, a3, v15);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v15);
  objc_destroyWeak(&location);
  if (a5)
  {
    v11 = 168 * a5;
    v12 = (a4 + 144);
    do
    {
      ++*(v12 - 129);
      *v12 = 0;
      v12 += 21;
      v11 -= 168;
    }

    while (v11);
  }

  return a1 + 192;
}

double re::ecs2::VertexCacheComponent::initializeBindPoint(re::ecs2::VertexCacheComponent *this, unint64_t a2)
{
  v39 = *MEMORY[0x1E69E9840];
  v4 = *(this + 21);
  v5 = *(this + 11);
  if (v4 >= v5)
  {
    v5 = *(this + 21);
  }

  else
  {
    if (*(this + 20) < v5)
    {
      re::DynamicArray<re::BindPoint>::setCapacity(this + 19, v5);
      v4 = *(this + 21);
    }

    v7 = v5 - v4;
    if (v5 > v4)
    {
      v8 = 48 * v4;
      v6 = 0uLL;
      do
      {
        v9 = *(this + 23) + v8;
        *(v9 + 40) = 0;
        *v9 = 0uLL;
        *(v9 + 16) = 0uLL;
        *(v9 + 32) = 0;
        v8 += 48;
        --v7;
      }

      while (v7);
    }

    *(this + 21) = v5;
    ++*(this + 44);
  }

  if (v5 <= a2)
  {
    *v27 = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v19 = 136315906;
    *&v19[4] = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = a2;
    v24 = 2048;
    v25 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_25;
  }

  if (*(*(this + 23) + 48 * a2 + 24))
  {
    return *&v6;
  }

  v10 = *(this + 2);
  if (!v10 || !*(v10 + 23))
  {
    return *&v6;
  }

  re::makeBindNode(v10, v26);
  re::DynamicString::format("VertexCache.vertexCacheTimes[%zu]", &v17, a2);
  v11 = v18[1];
  if ((v18[0] & 1) == 0)
  {
    v11 = v18 + 1;
  }

  v12 = LOBYTE(v18[0]) >> 1;
  if (v18[0])
  {
    v12 = v18[0] >> 1;
  }

  v16[0] = v11;
  v16[1] = v12;
  {
    re::introspect<float>(BOOL)::info = re::introspect_float(0, v14);
  }

  re::BindNode::bindPointWithOverride(v26, re::introspect<float>(BOOL)::info, v16, v19);
  v5 = *(this + 21);
  if (v5 <= a2)
  {
LABEL_25:
    v18[3] = 0;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v34 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v27 = 136315906;
    *&v27[4] = "operator[]";
    v28 = 1024;
    v29 = 789;
    v30 = 2048;
    v31 = a2;
    v32 = 2048;
    v33 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v13 = (*(this + 23) + 48 * a2);
  *v13 = *v19;
  re::DynamicArray<re::RigDataValue>::operator=((v13 + 1), &v19[8]);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19[8]);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(&v19[8]);
  if (v17 && (v18[0] & 1) != 0)
  {
    (*(*v17 + 40))();
  }

  *&v6 = re::BindNode::deinit(v26);
  return *&v6;
}

re::ecs2::VertexCacheComponentStateImpl *re::ecs2::VertexCacheComponentStateImpl::VertexCacheComponentStateImpl(re::ecs2::VertexCacheComponentStateImpl *this, re::ecs2::VertexCacheSystem *a2)
{
  v5[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF40D0;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v5[1] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v5[2] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v4[0] = v5;
  v4[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 16), v4);
  return this;
}

BOOL re::ecs2::VertexCacheComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v33 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v32, a5, 0);
  v20 = a4;
  v21 = *&v32[0];
  v22 = DWORD2(v32[0]);
  if (*&v32[0] != a5 || DWORD2(v32[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v10 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      v12 = *(*(v10 + 16) + 192);
      v11 = *(*(v10 + 16) + 200);
      if (v11)
      {
        v13 = v12 == 0;
      }

      else
      {
        v13 = 1;
      }

      if (v13 || !*(v12 + 40) || !v11[30])
      {
        goto LABEL_14;
      }

      v14 = v11[46];
      if (v14 <= 0xF)
      {
        v23 = 0;
        memset(v32, 0, sizeof(v32));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v24 = 136315906;
        v25 = "operator[]";
        v26 = 1024;
        v27 = 476;
        v28 = 2048;
        v29 = 15;
        v30 = 2048;
        v31 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      if (*(v11[47] + 1448))
      {
        v15 = v20;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v15, v16, *(a3 + 40));
      }

      else
      {
LABEL_14:
        v17 = v20;
        v18 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v17, v18, *(a3 + 32));
        re::ecs2::VertexCacheComponent::resetDeformerInputs(v10, *(*(*(a1 + 8) + 232) + 144), 0, 0, 0);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::VertexCacheComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 8) + 256);
  if (v7)
  {
    v83 = (*(*v7 + 104))(v7);
  }

  else
  {
    v83 = 0;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v101, a5, 0);
  v90 = a4;
  v91 = v101;
  v92 = DWORD2(v101);
  if (v101 != a5 || DWORD2(v101) != 0xFFFFFFFFLL)
  {
    v9 = 24;
    v10.i64[0] = 0x7F0000007FLL;
    v10.i64[1] = 0x7F0000007FLL;
    v79 = vnegq_f32(v10);
    while (1)
    {
      v11 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v90);
      v12 = v11;
      v13 = *(v11 + 16);
      v14 = v13[25];
      v86 = *(v14[49] + 96);
      v87 = *(v14[49] + 88);
      v15 = v14[31];
      v16 = *(v11 + 200);
      if (v16)
      {
        v17 = v15 != *v16 || v83 == 0;
        if (!v17 && v83 == v16[1])
        {
          goto LABEL_85;
        }

        re::ecs2::VertexCacheComponent::resetDeformerInputs(v11, *(*(*(a1 + 8) + 232) + 144), 0, v86, v87);
      }

      v18 = v13[24];
      v19 = re::AssetHandle::loadedAsset<re::MeshAsset>((v18 + 32));
      if (v19)
      {
        break;
      }

      v69 = *(v18 + 40);
      if (v69)
      {
        v70 = atomic_load((v69 + 896));
        if (v70 == 3)
        {
          v71 = v90;
          v72 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v91);
          v73 = a3[2];
          v74 = a3[4];
          goto LABEL_84;
        }
      }

      re::AssetHandle::loadAsync((v18 + 32));
LABEL_85:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v91);
      if (v91 == a5 && v92 == 0xFFFF && HIWORD(v92) == 0xFFFF)
      {
        return *(a5 + 40) != 0;
      }
    }

    v20 = v19;
    v85 = re::ecs2::EntityComponentCollection::getOrAdd((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::DynamicBoundingBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType);
    v21 = (v20 + 640);
    v22 = re::ecs2::EntityComponentCollection::get((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v22)
    {
      v23 = (v22 + 216);
    }

    else
    {
      v23 = v21;
    }

    v24 = v12[6];
    v25 = *(*(a1 + 8) + 232);
    v26 = re::globalAllocators(v22);
    v27 = (*(*v26[2] + 32))(v26[2], 40, 8);
    *v27 = v15;
    *(v27 + 1) = v83;
    *(v27 + 3) = v24;
    *(v27 + 4) = 0;
    if (!v24)
    {
      re::ecs2::VertexCacheComponent::resetDeformerInputs(v12, *(v25 + 144), v27, v86, v87);
      goto LABEL_83;
    }

    if (v24 >= 0x2E8BA2E8BA2E8BBLL)
    {
LABEL_93:
      re::internal::assertLog(6, v28, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 88, v24);
      _os_crash();
      __break(1u);
    }

    else
    {
      *(v27 + 4) = v29;
      if (v29)
      {
        v31 = v29;
        if (v24 != 1)
        {
          bzero(v29, 88 * v24 - 88);
          v31 += 88 * v24 - 88;
        }

        *(v31 + 10) = 0;
        *(v31 + 3) = 0u;
        *(v31 + 4) = 0u;
        *(v31 + 1) = 0u;
        *(v31 + 2) = 0u;
        *v31 = 0u;
        v32 = re::ecs2::VertexCacheComponent::resetDeformerInputs(v12, *(v25 + 144), v27, v86, v87);
        v81 = v24;
        v82 = v32;
        v33 = 0;
        v34 = 0;
        while (1)
        {
          v78 = v33;
          while (1)
          {
            v35 = v12[6];
            if (v35 <= v34)
            {
              v88.i64[0] = 0;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v101 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v94 = 136315906;
              *&v94[4] = "operator[]";
              v95 = 1024;
              v96 = 789;
              v97 = 2048;
              v98 = v34;
              v99 = 2048;
              *v100 = v35;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_90:
              re::internal::assertLog(6, v67, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v24, v87);
              _os_crash();
              __break(1u);
LABEL_91:
              v88.i64[0] = 0;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v101 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v94 = 136315906;
              *&v94[4] = "operator[]";
              v95 = 1024;
              v96 = 468;
              v97 = 2048;
              v98 = v34;
              v99 = 2048;
              *v100 = v35;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
LABEL_92:
              v93 = 0;
              v104 = 0u;
              v105 = 0u;
              v102 = 0u;
              v103 = 0u;
              v101 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v94 = 136315906;
              *&v94[4] = "operator[]";
              v95 = 1024;
              v96 = 476;
              v97 = 2048;
              v98 = 0;
              v99 = 2048;
              *v100 = 0;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
              goto LABEL_93;
            }

            v36 = (v12[8] + 24 * v34);
            if (!*(v36 + 1))
            {
              goto LABEL_72;
            }

            v37 = re::VertexCacheAsset::assetType(v32);
            v32 = re::AssetHandle::assetWithType(v36, v37, 1);
            if (!v32)
            {
              break;
            }

            v38 = v32;
            if (*(v32 + 49) == 30 && v34 < v12[11])
            {
              v39 = *(v32 + 48);
              if (v34 < v12[16])
              {
                v40 = (v12[18] + 2 * v34);
                if (*v40 == 1)
                {
                  v39 = v40[1];
                }
              }

              v41 = *(v82 + 8);
              v35 = *(v41 + 24);
              if (v35 <= v34)
              {
                goto LABEL_91;
              }

              v42 = *(v12[13] + 4 * v34);
              v35 = *(v41 + 32) + 88 * v34;
              v43.i64[0] = 0x7F0000007FLL;
              v43.i64[1] = 0x7F0000007FLL;
              v88 = v79;
              v89 = v43;
              v25 = *(v32 + 72) * *(v32 + 80);
              v44 = *(v32 + 56);
              if (v42 <= v44)
              {
                *&v101 = *(v32 + 112);
                DWORD2(v102) = 0;
                LODWORD(v103) = 0;
                DWORD1(v103) = v25;
                *(v35 + 84) = 0;
                std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v101);
                *(v35 + 32) = v103;
                re::BufferSlice::deinit((v35 + 40));
                *(v35 + 80) = 0;
                if (DWORD2(v102) != -1)
                {
                  (off_1F5CF41B8[DWORD2(v102)])(v94, &v101);
                }

                if (!*(v38 + 96))
                {
                  goto LABEL_92;
                }

                v62 = *(v38 + 104);
              }

              else
              {
                v45 = *(v32 + 52);
                v46 = *(v32 + 64);
                if (v42 >= (v44 + (v45 * v46)))
                {
                  v9 = v46 - 1;
                  v24 = ((v46 - 1) * v25);
                  *&v101 = *(v32 + 112);
                  DWORD2(v102) = 0;
                  *&v103 = __PAIR64__(v25, v24);
                  *(v35 + 84) = 0;
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v101);
                  *(v35 + 32) = v103;
                  re::BufferSlice::deinit((v35 + 40));
                  *(v35 + 80) = 0;
                  if (DWORD2(v102) != -1)
                  {
                    (off_1F5CF41B8[DWORD2(v102)])(v94, &v101);
                  }

                  v25 = *(v38 + 96);
                  if (v25 <= v9)
                  {
                    goto LABEL_95;
                  }
                }

                else
                {
                  v47 = (v42 - v44) / v45;
                  v48 = floorf(v47);
                  v49 = v48 + ceilf(v47 - v48);
                  v5 = (v49 + 0.5);
                  if ((v39 & (v46 != v5)) != 0)
                  {
                    v50 = v47 - (v49 + -1.0);
                    v76 = v5 - 1;
                    *&v101 = *(v32 + 112);
                    DWORD2(v102) = 0;
                    LODWORD(v103) = (v5 - 1) * v25;
                    DWORD1(v103) = v25;
                    *v94 = *(v38 + 112);
                    HIDWORD(v98) = 0;
                    *&v100[2] = v25 * v5;
                    *&v100[6] = v25;
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v101);
                    *(v35 + 32) = v103;
                    std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35 + 40, v94);
                    *(v35 + 72) = *&v100[2];
                    *(v35 + 80) = v50;
                    *(v35 + 84) = 0;
                    if (HIDWORD(v98) != -1)
                    {
                      (off_1F5CF41B8[HIDWORD(v98)])(&v93, v94);
                    }

                    if (DWORD2(v102) != -1)
                    {
                      (off_1F5CF41B8[DWORD2(v102)])(v94, &v101);
                    }

                    v25 = *(v38 + 96);
                    v24 = v5 - 1;
                    if (v25 <= v76)
                    {
                      goto LABEL_97;
                    }

                    v51 = *(v38 + 104);
                    v52 = (v51 + 32 * v76);
                    v53 = v52[1];
                    v88 = *v52;
                    v89 = v53;
                    if (v25 <= v5)
                    {
                      goto LABEL_98;
                    }

                    v54 = (v51 + 32 * v5);
                    v55 = v88;
                    v56 = v89;
                    v55.i32[3] = 0;
                    v57 = *v54;
                    v57.i32[3] = 0;
                    v88 = vminnmq_f32(v55, v57);
                    v58 = v54[1];
                    v56.i32[3] = 0;
                    v58.i32[3] = 0;
                    v59 = vmaxnmq_f32(v56, v58);
                    goto LABEL_65;
                  }

                  if (v46 <= v5)
                  {
                    v9 = v46 - 1;
                  }

                  else
                  {
                    v9 = (v49 + 0.5);
                  }

                  v24 = (v9 * v25);
                  *&v101 = *(v32 + 112);
                  DWORD2(v102) = 0;
                  LODWORD(v103) = v9 * v25;
                  DWORD1(v103) = v25;
                  *(v35 + 84) = 0;
                  std::__variant_detail::__assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<NS::SharedPtr<MTL::Buffer>,re::BufferSliceSourceCPU>,(std::__variant_detail::_Trait)1> const&>(v35, &v101);
                  *(v35 + 32) = v103;
                  re::BufferSlice::deinit((v35 + 40));
                  *(v35 + 80) = 0;
                  if (DWORD2(v102) != -1)
                  {
                    (off_1F5CF41B8[DWORD2(v102)])(v94, &v101);
                  }

                  v25 = *(v38 + 96);
                  if (v25 <= v9)
                  {
                    goto LABEL_96;
                  }
                }

                v62 = (*(v38 + 104) + 32 * v9);
              }

              v59 = v62[1];
              v88 = *v62;
LABEL_65:
              v89 = v59;
              v25 = v14[32];
              re::MeshNameMap::meshInstancePartsForIdentifier(v23, (v38 + 8), &v101);
              v9 = v101;
              if (v101)
              {
                v5 = 0;
                do
                {
                  *v94 = v5;
                  v63 = (*(**(&v103 + 1) + 16))(*(&v103 + 1), v94);
                  v64 = re::MeshNameMap::meshPartStartIndexForInstance(v23, v63) + WORD2(v63);
                  v65 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v14 + 29), v64);
                  if (v25 > v65)
                  {
                    v24 = v65;
                    v66 = *(*(*(a1 + 8) + 232) + 144);
                    re::ecs2::DynamicBoundingBoxComponent::setMeshPartEstimatedBoundingBox(v85, *(v66 + 24) & 0xFFFFFFFFFFFFFFFLL | (*(v66 + 16) << 60), v64, &v88);
                    if (v87 <= v24)
                    {
                      goto LABEL_90;
                    }

                    v68 = v86 + 168 * v24;
                    ++*(v68 + 15);
                    *(v68 + 144) = v35;
                  }

                  ++v5;
                }

                while (v9 != v5);
              }

              re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v101 + 8);
              v32 = re::ecs2::Component::markDirty(v85);
              v9 = 24;
              v24 = v81;
            }

LABEL_72:
            if (++v34 == v24)
            {
              if (v78)
              {
                goto LABEL_85;
              }

LABEL_83:
              v71 = v90;
              v72 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v91);
              v73 = a3[2];
              v74 = a3[6];
LABEL_84:
              re::ecs2::ComponentBucketsBase::moveComponent(v73, v71, v72, v74);
              goto LABEL_85;
            }
          }

          v60 = *(v36 + 1);
          if (v60)
          {
            v61 = atomic_load((v60 + 896));
            if (v61 == 3)
            {
              goto LABEL_72;
            }
          }

          re::AssetHandle::loadAsync(v36);
          ++v34;
          v33 = 1;
          if (v34 == v24)
          {
            goto LABEL_85;
          }
        }
      }
    }

    re::internal::assertLog(4, v30, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
LABEL_95:
    v93 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    v95 = 1024;
    v96 = 476;
    v97 = 2048;
    v98 = v9;
    v99 = 2048;
    *v100 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_96:
    v93 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    v95 = 1024;
    v96 = 476;
    v97 = 2048;
    v98 = v9;
    v99 = 2048;
    *v100 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_97:
    v93 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    v95 = 1024;
    v96 = 476;
    v97 = 2048;
    v98 = v24;
    v99 = 2048;
    *v100 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_98:
    v93 = 0;
    v104 = 0u;
    v105 = 0u;
    v102 = 0u;
    v103 = 0u;
    v101 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    *v94 = 136315906;
    *&v94[4] = "operator[]";
    v95 = 1024;
    v96 = 476;
    v97 = 2048;
    v98 = v5;
    v99 = 2048;
    *v100 = v25;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::VertexCacheSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v32[0] = a2;
  v32[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v31);
  re::StackScratchAllocator::StackScratchAllocator(v44);
  v40 = 1;
  v41 = 0;
  v42 = 0;
  v38 = v44;
  v39 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v38, 0);
  v40 += 2;
  v5 = a1[64];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v43 = a1[64];
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
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 45, v33);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v38, *(a1[46] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v38, (a1 + 59));
  v34 = 1;
  v35 = 0;
  v36 = 0;
  v33[0] = v44;
  v33[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v33, 0);
  v34 += 2;
  v12 = a1[64];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v37 = a1[64];
  v45 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v33, v13, &v45);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 59), &v38);
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
        goto LABEL_30;
      }
    }

    v19 = __clz(__rbit64(v17));
    if (v19 + 1 != v16)
    {
      FirstBitSet = v19 - v16;
      do
      {
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 38), FirstBitSet);
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
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v33, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v33, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v38, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 59), v33);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 38));
  if (v33[0] && (v34 & 1) == 0)
  {
    (*(*v33[0] + 40))();
  }

  if (v38 && (v40 & 1) == 0)
  {
    (*(*v38 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v44);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v31);
}

_anonymous_namespace_ *re::ecs2::VertexCacheSystem::willAddSystemToECSService(re::ecs2::VertexCacheSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 32) = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v2);

  return re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
}

double re::ecs2::VertexCacheSystem::willRemoveSystemFromECSService(re::ecs2::VertexCacheSystem *this)
{
  *(this + 32) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

unint64_t re::ecs2::VertexCacheSystem::willAddSceneToECSService(re::ecs2::VertexCacheSystem *this, re::ecs2::Scene *a2)
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
    re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::init(v12, this + 304, a2);
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
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,4ul>::setBucketsCapacity(this + 38, (v14 + 4) >> 2);
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
  re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::init(v24, this + 304, v48[0]);
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

uint64_t re::ecs2::VertexCacheSystem::willRemoveSceneFromECSService(re::ecs2::VertexCacheSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::allocInfo_VertexCacheComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB648, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB648))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB6C8, "VertexCacheComponent");
    __cxa_guard_release(&qword_1EE1AB648);
  }

  return &unk_1EE1AB6C8;
}

void re::ecs2::initInfo_VertexCacheComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0xF2B611314067C4FELL;
  v21[1] = "VertexCacheComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1AB650, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AB650);
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
      qword_1EE1AB668 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::DynamicArray<re::AssetHandle>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "vertexCaches";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AB670 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "vertexCacheTimes";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x4800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AB678 = v16;
      v17 = re::introspectionAllocator(v16);
      re::IntrospectionInfo<re::DynamicArray<re::Optional<BOOL>>>::get(v17, v18);
      v19 = (*(*v17 + 32))(v17, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "interpolationOverride";
      *(v19 + 16) = &qword_1EE1AB688;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x7000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1AB680 = v19;
      __cxa_guard_release(&qword_1EE1AB650);
    }
  }

  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AB668;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VertexCacheComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VertexCacheComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VertexCacheComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VertexCacheComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220VertexCacheComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void re::IntrospectionInfo<re::DynamicArray<re::Optional<BOOL>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AB660, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB660))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AB688);
    qword_1EE1AB688 = &unk_1F5CF4338;
    __cxa_guard_release(&qword_1EE1AB660);
  }

  if ((_MergedGlobals_300 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::Optional<BOOL>>::get(1, a2);
    if ((_MergedGlobals_300 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_300 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AB688, 0);
      qword_1EE1AB698 = 0x2800000003;
      dword_1EE1AB6A0 = v4;
      word_1EE1AB6A4 = 0;
      *&xmmword_1EE1AB6A8 = 0;
      *(&xmmword_1EE1AB6A8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AB6B8 = v3;
      unk_1EE1AB6C0 = 0;
      qword_1EE1AB688 = &unk_1F5CF4338;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1AB688, &v14);
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

      v11 = *(v3 + 32);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1AB6A8 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void *re::internal::defaultDestruct<re::ecs2::VertexCacheComponent>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr((a3 + 192));
  re::DynamicArray<re::BindPoint>::deinit(a3 + 152);
  re::DynamicArray<unsigned long>::deinit(a3 + 112);
  re::DynamicArray<unsigned long>::deinit(a3 + 72);
  re::DynamicArray<re::AssetHandle>::deinit(a3 + 32);
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance((a3 + 8));
}

void *re::internal::defaultDestructV2<re::ecs2::VertexCacheComponent>(uint64_t a1)
{
  re::FramePersistentPtr<re::ecs2::VertexCacheComponent::VertexCacheInputs,re::FrameManager>::~FramePersistentPtr((a1 + 192));
  re::DynamicArray<re::BindPoint>::deinit(a1 + 152);
  re::DynamicArray<unsigned long>::deinit(a1 + 112);
  re::DynamicArray<unsigned long>::deinit(a1 + 72);
  re::DynamicArray<re::AssetHandle>::deinit(a1 + 32);
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance((a1 + 8));
}

void *re::ecs2::allocInfo_VertexCacheSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB658, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB658))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB758, "VertexCacheSystem");
    __cxa_guard_release(&qword_1EE1AB658);
  }

  return &unk_1EE1AB758;
}

void re::ecs2::initInfo_VertexCacheSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xDE383D715B7ED7DALL;
  v6[1] = "VertexCacheSystem";
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
  *(this + 8) = &re::ecs2::initInfo_VertexCacheSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::VertexCacheSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::VertexCacheSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::VertexCacheSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::VertexCacheSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::VertexCacheSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::VertexCacheSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::VertexCacheSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 38);
  a3[33] = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 35);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::VertexCacheSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 38);
  a1[33] = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);

  re::ecs2::System::~System(a1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::VertexCacheComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::VertexCacheSystem::~VertexCacheSystem(re::ecs2::VertexCacheSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 38);
  *(this + 33) = &unk_1F5CF40D0;
  re::FixedArray<CoreIKTransform>::deinit(this + 35);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::DynamicArray<re::BindPoint>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::BindPoint>::setCapacity(v5, a2);
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
        v10 = &v8[6 * v9];
        v11 = v7;
        do
        {
          v12 = *v8;
          v11[5] = 0;
          *v11 = v12;
          v11[1] = 0;
          v11[2] = 0;
          v11[3] = 0;
          *(v11 + 8) = 0;
          v13 = v8[1];
          v14 = v8[2];
          v15 = (v8 + 1);
          v11[1] = v13;
          v11[2] = v14;
          *v15 = 0;
          *(v15 + 8) = 0;
          v16 = v11[3];
          v11[3] = *(v15 + 16);
          *(v15 + 16) = v16;
          v17 = v11[5];
          v11[5] = *(v15 + 32);
          *(v15 + 32) = v17;
          ++*(v15 + 24);
          ++*(v11 + 8);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
          re::DynamicArray<re::BindPoint::BindPointData>::deinit(v15);
          v11 += 6;
          v8 = (v15 + 40);
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

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF41D8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF4230;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF4288;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF42E0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF41D8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF4230;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF4288;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF42E0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::VertexCacheComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF41D8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF41D8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4230;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4230;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF4288;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF4288;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF42E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::VertexCacheComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF42E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::IntrospectionInfo<re::Optional<BOOL>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<BOOL>::IntrospectionOptional();
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_BOOL(1, a2);
  if ((re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info, 0);
    qword_1EE186528 = 0x20000000DLL;
    dword_1EE186530 = v8;
    word_1EE186534 = 0;
    *&xmmword_1EE186538 = 0;
    *(&xmmword_1EE186538 + 1) = 0xFFFFFFFFLL;
    qword_1EE186548 = v7;
    qword_1EE186550 = 0;
    re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info = &unk_1F5CF43D0;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info, &v15);
    if (BYTE8(v15))
    {
      v11 = v16;
    }

    else
    {
      v11 = &v15 + 9;
    }

    if (v15 && (BYTE8(v15) & 1) != 0)
    {
      (*(*v15 + 40))();
    }

    v15 = *(v7 + 32);
    xmmword_1EE186538 = v14;
    if (v17)
    {
      if (v17)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v12 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v12);
  }

  return &re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info;
}

void *re::IntrospectionDynamicArray<re::Optional<BOOL>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::Optional<BOOL>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::Optional<BOOL>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::Optional<BOOL>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<unsigned long>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::Optional<BOOL>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::Optional<BOOL>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::Optional<BOOL>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::Optional<BOOL>>::addElement(re::Allocator **a1, re *a2, int a3, uint64_t a4)
{
  v9 = *(a4 + 8);
  v8 = *(a4 + 16);
  if (v8 >= v9)
  {
    v10 = v8 + 1;
    if (v9 < v8 + 1)
    {
      if (*a4)
      {
        v11 = 2 * v9;
        if (!v9)
        {
          v11 = 8;
        }

        if (v11 <= v10)
        {
          v12 = v10;
        }

        else
        {
          v12 = v11;
        }

        re::DynamicArray<re::Optional<BOOL>>::setCapacity(a4, v12);
      }

      else
      {
        re::DynamicArray<re::Optional<BOOL>>::setCapacity(a4, v10);
        ++*(a4 + 24);
      }
    }

    v8 = *(a4 + 16);
  }

  v13 = *(a4 + 32);
  *(v13 + 2 * v8) = 0;
  v14 = v8 + 1;
  *(a4 + 16) = v14;
  ++*(a4 + 24);
  v15 = (v13 + 2 * v14 - 2);
  re::introspectionInitElement(a2, a3, a1[6], v15);
  return v15;
}

uint64_t re::IntrospectionDynamicArray<re::Optional<BOOL>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 2 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 2 * a3;
}

void *re::DynamicArray<re::Optional<BOOL>>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if ((a2 & 0x8000000000000000) != 0)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 2, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 2 * a2;
          result = (*(*result + 32))(result, 2 * a2, 1);
          if (result)
          {
            v7 = result;
            if (!v5[1])
            {
              goto LABEL_17;
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
LABEL_17:
        v5[4] = v7;
        v5[1] = a2;
        return result;
      }

LABEL_11:
      v8 = v5[4];
      v9 = v5[2];
      if (v9)
      {
        v10 = v7 + 1;
        v11 = 2 * v9;
        v12 = (v8 + 1);
        do
        {
          v13 = *(v12 - 1);
          *(v10 - 1) = v13;
          if (v13 == 1)
          {
            *v10 = *v12;
          }

          v10 += 2;
          v12 += 2;
          v11 -= 2;
        }

        while (v11);
      }

      result = (*(**v5 + 40))(*v5, v8);
      goto LABEL_17;
    }
  }

  return result;
}

void *re::DynamicArray<re::Optional<BOOL>>::resize(void *result, unint64_t a2)
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
      result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 0;
      v7 = vdupq_n_s64(v5 - 1);
      v8 = (v5 + 15) & 0xFFFFFFFFFFFFFFF0;
      v9 = (v3[4] + 2 * v4 + 16);
      do
      {
        v10 = vdupq_n_s64(v6);
        v11 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E3049620)));
        if (vuzp1_s8(vuzp1_s16(v11, *v7.i8), *v7.i8).u8[0])
        {
          *(v9 - 16) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v11, *&v7), *&v7).i8[1])
        {
          *(v9 - 14) = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E3049640)))), *&v7).i8[2])
        {
          *(v9 - 12) = 0;
          *(v9 - 10) = 0;
        }

        v12 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E3049660)));
        if (vuzp1_s8(*&v7, vuzp1_s16(v12, *&v7)).i32[1])
        {
          *(v9 - 8) = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v12, *&v7)).i8[5])
        {
          *(v9 - 6) = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E305F210))))).i8[6])
        {
          *(v9 - 4) = 0;
          *(v9 - 2) = 0;
        }

        v13 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903F0)));
        if (vuzp1_s8(vuzp1_s16(v13, *v7.i8), *v7.i8).u8[0])
        {
          *v9 = 0;
        }

        if (vuzp1_s8(vuzp1_s16(v13, *&v7), *&v7).i8[1])
        {
          v9[2] = 0;
        }

        if (vuzp1_s8(vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903E0)))), *&v7).i8[2])
        {
          v9[4] = 0;
          v9[6] = 0;
        }

        v14 = vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903D0)));
        if (vuzp1_s8(*&v7, vuzp1_s16(v14, *&v7)).i32[1])
        {
          v9[8] = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(v14, *&v7)).i8[5])
        {
          v9[10] = 0;
        }

        if (vuzp1_s8(*&v7, vuzp1_s16(*&v7, vmovn_s64(vcgeq_u64(v7, vorrq_s8(v10, xmmword_1E30903C0))))).i8[6])
        {
          v9[12] = 0;
          v9[14] = 0;
        }

        v6 += 16;
        v9 += 32;
      }

      while (v8 != v6);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 2uLL, 1uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

uint64_t re::IntrospectionOptional<BOOL>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info, 0);
  *(&qword_1EE186528 + 6) = 0;
  qword_1EE186528 = 0;
  *&xmmword_1EE186538 = 0;
  *(&xmmword_1EE186538 + 1) = 0xFFFFFFFFLL;
  re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info = &unk_1F5CBA310;
  qword_1EE186550 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE186548);
  re::IntrospectionInfo<re::Optional<BOOL>>::get(BOOL)::info = &unk_1F5CF43D0;
  return result;
}

void *re::IntrospectionOptional<BOOL>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<BOOL>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<BOOL>::setHasValue(uint64_t a1, _BYTE *a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    ++a2;
  }

  else if (!*a2)
  {
    return;
  }

  *a2 = 0;
}

uint64_t re::IntrospectionOptional<BOOL>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 1;
}

{
  return a2 + 1;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 1;
  if (!v2)
  {
    return 0;
  }

  return result;
}

_BYTE *re::TypeBuilderHelper::registerOptional<BOOL>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(_BYTE *result, char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    result[1] = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::Optional<BOOL>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::Optional<BOOL>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}