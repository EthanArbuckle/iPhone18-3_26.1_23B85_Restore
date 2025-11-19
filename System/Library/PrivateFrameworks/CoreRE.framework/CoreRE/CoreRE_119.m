uint64_t re::internal::Callable<re::ecs2::AudioDebugSystem::renderTrackedCALayerEntities(re::ecs2::Scene *)::$_0,void ()(unsigned long long)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF29C0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::Callable<re::ecs2::AudioDebugSystem::renderTrackedCALayerEntities(re::ecs2::Scene *)::$_0,void ()(unsigned long long)>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF29C0;
  v2 = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = v2;
  return a2;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219AudioDebugComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::EDRColorManagementComponent::~EDRColorManagementComponent(re::ecs2::EDRColorManagementComponent *this)
{
  v2 = *(this + 4);
  if (v2)
  {
    _Block_release(v2);
  }

  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::EDRColorManagementComponent::~EDRColorManagementComponent(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_EDRColorManagementComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_286, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_286))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA898, "EDRColorManagementComponent");
    __cxa_guard_release(&_MergedGlobals_286);
  }

  return &unk_1EE1AA898;
}

void re::ecs2::initInfo_EDRColorManagementComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x34DD0CE7CF85CC94;
  v10[1] = "EDRColorManagementComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AA890, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AA890);
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
      qword_1EE1AA888 = v8;
      __cxa_guard_release(&qword_1EE1AA890);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AA888;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::EDRColorManagementComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::EDRColorManagementComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::EDRColorManagementComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::EDRColorManagementComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs227EDRColorManagementComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::EDRColorManagementComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF2A18;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::EDRColorManagementComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF2A18;
  *(v1 + 32) = 0;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs227EDRColorManagementComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::ShadowScopeComponent::ShadowScopeComponent(re::ecs2::ShadowScopeComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF2AA0;
  *(v1 + 28) = 1065353216;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0u;
  for (i = 48; i != 80; i += 16)
  {
    *(v1 + i) = re::ecs2::kDefaultLightDirection;
  }
}

void re::ecs2::introspect_ShadowScopeMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AA930, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AA938, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA938))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AA980, "ShadowScopeMode", 4, 4, 1, 1);
      qword_1EE1AA980 = &unk_1F5D0C658;
      qword_1EE1AA9C0 = &re::ecs2::introspect_ShadowScopeMode(BOOL)::enumTable;
      dword_1EE1AA990 = 9;
      __cxa_guard_release(&qword_1EE1AA938);
    }

    if (_MergedGlobals_287)
    {
      break;
    }

    _MergedGlobals_287 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AA980, a2);
    v33 = 0x8A5DC928AAFE896ELL;
    v34 = "ShadowScopeMode";
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
      v6 = qword_1EE1AA9C0;
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
      xmmword_1EE1AA9A0 = v35;
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
    v28 = __cxa_guard_acquire(&qword_1EE1AA930);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Floor";
      qword_1EE1AA950 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 8) = 1;
      *(v32 + 16) = "Wall";
      qword_1EE1AA958 = v32;
      __cxa_guard_release(&qword_1EE1AA930);
    }
  }
}

void *re::ecs2::allocInfo_ShadowScopeComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AA940, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AA940))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AA9C8, "ShadowScopeComponent");
    __cxa_guard_release(&qword_1EE1AA940);
  }

  return &unk_1EE1AA9C8;
}

void re::ecs2::initInfo_ShadowScopeComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v20[0] = 0xAB3D6A8B5C65BCD2;
  v20[1] = "ShadowScopeComponent";
  if (v20[0])
  {
    if (v20[0])
    {
    }
  }

  *(this + 2) = v21;
  if ((atomic_load_explicit(&qword_1EE1AA948, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AA948);
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
      qword_1EE1AA960 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "opacity";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AA968 = v12;
      v13 = re::introspectionAllocator(v12);
      re::ecs2::introspect_ShadowScopeMode(v13, v14);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "mode";
      *(v15 + 16) = &qword_1EE1AA980;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AA970 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = re::IntrospectionInfo<re::Vector3<float> [2]>::get(1);
      v18 = (*(*v16 + 32))(v16, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "directions";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x3000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1AA978 = v18;
      __cxa_guard_release(&qword_1EE1AA948);
    }
  }

  *(this + 2) = 0x5000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AA960;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ShadowScopeComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ShadowScopeComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ShadowScopeComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ShadowScopeComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowScopeComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v19 = v21;
}

void re::ecs2::ShadowScopeComponent::~ShadowScopeComponent(re::ecs2::ShadowScopeComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs220ShadowScopeComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 15;
  *(a2 + 8) = 0;
  return result;
}

void *re::ecs2::allocInfo_PortalRenderingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_288, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_288))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAA60, "PortalRenderingSystem");
    __cxa_guard_release(&_MergedGlobals_288);
  }

  return &unk_1EE1AAA60;
}

void re::ecs2::initInfo_PortalRenderingSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB8F182DDF4708B5ELL;
  v6[1] = "PortalRenderingSystem";
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
  *(this + 8) = &re::ecs2::initInfo_PortalRenderingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PortalRenderingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PortalRenderingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PortalRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PortalRenderingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PortalRenderingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PortalRenderingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::PortalRenderingSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v3 = &unk_1F5CF2B28;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PortalRenderingSystem>(uint64_t a1)
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
  *v1 = &unk_1F5CF2B28;
  return result;
}

void re::ecs2::PortalRenderingSystem::update(uint64_t a1)
{
  v2 = *(a1 + 224);
  if (!v2 || (*(v2 + 432) & 0x10) != 0)
  {
    if (*(a1 + 256))
    {
      re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 3127, a1);
      (*(**(a1 + 256) + 48))(*(a1 + 256));
      re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
    }
  }
}

uint64_t re::ecs2::PortalRenderingSystem::willAddSystemToECSService(re::ecs2::PortalRenderingSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  result = *(this + 32);
  if (result)
  {
    v3 = *(*result + 16);

    return v3();
  }

  return result;
}

uint64_t re::ecs2::PortalRenderingSystem::willAddSceneToECSService(uint64_t a1)
{
  result = *(a1 + 256);
  if (result)
  {
    return (*(*result + 32))();
  }

  return result;
}

uint64_t re::ecs2::PortalRenderingSystem::willRemoveSceneFromECSService(uint64_t a1)
{
  result = *(a1 + 256);
  if (result)
  {
    return (*(*result + 40))();
  }

  return result;
}

void re::ecs2::PortalRenderingSystem::~PortalRenderingSystem(re::ecs2::PortalRenderingSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void *re::ecs2::allocInfo_PhysicsSimulationService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_289, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_289))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAAF8, "PhysicsSimulationService");
    __cxa_guard_release(&_MergedGlobals_289);
  }

  return &unk_1EE1AAAF8;
}

void re::ecs2::initInfo_PhysicsSimulationService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x747915B438994E8ELL;
  v6[1] = "PhysicsSimulationService";
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
  *(this + 8) = &re::ecs2::initInfo_PhysicsSimulationService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

_anonymous_namespace_ *re::ecs2::WorldRootProvider::worldIds@<X0>(re::ecs2::WorldRootProvider *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 96) = 0u;
  *(a2 + 112) = 0u;
  *(a2 + 128) = 0;
  *(a2 + 132) = 0x7FFFFFFFLL;
  v3 = (*(**this + 16))(*this);
  re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::operator=(a2, v3);

  return re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::add(a2, &re::kDefaultWorldRootId);
}

uint64_t re::SmallHashSet<unsigned long long,8ul,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 124) || *(a1 + 16) || *(a1 + 120))
  {
    v4 = (a1 + 96);
    if (*(a1 + 96))
    {
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::PrecalculatedHash,re::EqualTo<unsigned long long>,false,false>::deinit(v4);
    }

    *(a1 + 16) = 0;
    ++*(a1 + 24);
    *a1 = 0;
  }

  *a1 = *a2;
  if (*(a2 + 124))
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(a1 + 96, a2 + 96);
  }

  else
  {
    re::DynamicInlineArray<__CVBuffer *,2ul>::operator=((a1 + 16), (a2 + 16));
  }

  return a1;
}

void *re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot@<X0>(re::ecs2::RenderingSubsystem *this@<X0>, const re::ecs2::Scene *a2@<X1>, re::DynamicString **a3@<X2>, void *a4@<X8>)
{
  result = re::RenderFrame::getStreamNameForWorldRoot(a3, (*(this + 13) + 288), a2);
  v7 = result[2];
  if ((result[1] & 1) == 0)
  {
    v7 = result + 9;
  }

  if (v7)
  {
    v8 = *v7;
    if (*v7)
    {
      v9 = v7[1];
      if (v9)
      {
        v10 = (v7 + 2);
        do
        {
          v8 = 31 * v8 + v9;
          v11 = *v10++;
          v9 = v11;
        }

        while (v11);
      }
    }
  }

  else
  {
    v8 = 0;
  }

  *a4 = 2 * v8;
  a4[1] = v7;
  return result;
}

_anonymous_namespace_ *re::ecs2::RenderingSubsystem::willAddSystemToECSService(re::ecs2::RenderingSubsystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 30) = re::ServiceLocator::serviceOrNull<re::AssetService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 31) = re::ServiceLocator::serviceOrNull<re::ShadowService>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 33) = re::ServiceLocator::serviceOrNull<re::DepthMitigationService>(v6);
  v7 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 32) = re::ServiceLocator::serviceOrNull<re::ecs2::PortalService>(v7);
  v8 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 34) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderOptionsService>(v8);
  v9 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 35) = re::ServiceLocator::serviceOrNull<re::ecs2::BillboardService>(v9);
  v10 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v10);
  *(this + 36) = result;
  return result;
}

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ShadowService>(uint64_t a1)
{
  {
    re::introspect<re::ShadowService>(BOOL)::info = re::introspect_ShadowService(0);
  }

  v2 = re::introspect<re::ShadowService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::DepthMitigationService>(uint64_t a1)
{
  {
    re::introspect<re::DepthMitigationService>(BOOL)::info = re::introspect_DepthMitigationService(0);
  }

  v2 = re::introspect<re::DepthMitigationService>(BOOL)::info;
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

_anonymous_namespace_ *re::ServiceLocator::serviceOrNull<re::ecs2::BillboardService>(uint64_t a1)
{
  {
    re::introspect<re::ecs2::BillboardService>(BOOL)::info = re::ecs2::introspect_BillboardService(0);
  }

  v2 = re::introspect<re::ecs2::BillboardService>(BOOL)::info;
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

double re::ecs2::RenderingSubsystem::willRemoveSystemFromECSService(re::ecs2::RenderingSubsystem *this)
{
  *(this + 36) = 0;
  result = 0.0;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

uint64_t re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::copy(a1, a2);
        ++*(a1 + 40);
      }

      else
      {
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(a1);
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

      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::init(a1, v4, v5);
      re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::copy(a1, a2);
    }
  }

  return a1;
}

void re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::setCapacity(a1, v4);
  }

  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    for (i = 0; i < v5; ++i)
    {
      v8 = *(a2 + 16);
      if ((*(v8 + v6) & 0x80000000) != 0)
      {
        v9 = 0xBF58476D1CE4E5B9 * (*(v8 + v6 + 8) ^ (*(v8 + v6 + 8) >> 30));
        v10 = (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31);
        re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::addAsCopy(a1, v10 % *(a1 + 24), v10, v8 + v6 + 8, (v8 + v6 + 8));
        v5 = *(a2 + 32);
      }

      v6 += 16;
    }
  }
}

void media::Spatial3DImageAnimationEngine::~Spatial3DImageAnimationEngine(media::Spatial3DImageAnimationEngine *this)
{
  v2 = this + 40;
  for (i = 24; i != 24696; i += 4112)
  {
    v4 = *(this + i);
    if (v4)
    {
      v5 = 16 * v4;
      v6 = v2;
      do
      {
        v7 = *v6;
        v6 += 2;
        re::internal::destroyPersistent<media::FloatAnimation>("~Spatial3DImageAnimationEngine", 13, v7);
        v5 -= 16;
      }

      while (v5);
    }

    v2 += 4112;
  }

  v8 = (this + 20592);
  v9 = -24672;
  do
  {
    *(v8 - 1) = 0;
    ++*v8;
    v8 -= 1028;
    v9 += 4112;
  }

  while (v9);
}

double media::Spatial3DImageAnimationEngine::addScreenEntityTransitionToMXIEntityAnimation(media::Spatial3DImageAnimationEngine *this)
{
  v2 = media::Spatial3DImageAnimationEngine::add(this, 0, 0);
  if (v2)
  {
    *(v2 + 8) = xmmword_1E3083D70;
  }

  v3 = media::Spatial3DImageAnimationEngine::add(this, 2, 0);
  if (v3)
  {
    result = 0.0000000134110482;
    *(v3 + 8) = xmmword_1E308EC80;
  }

  return result;
}

uint64_t media::Spatial3DImageAnimationEngine::add(float *a1, uint64_t a2, char a3)
{
  if (a2 > 6)
  {
    return 0;
  }

  v6 = a2;
  if (a2 <= 2)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        v15 = re::globalAllocators(a1);
        v3 = (*(*v15[2] + 32))(v15[2], 48, 8);
        *(v3 + 8) = 0;
        *(v3 + 16) = 0;
        *(v3 + 24) = a1 + 2;
        *(v3 + 32) = 0;
        *(v3 + 36) = 0;
        *v3 = &unk_1F5CF2C10;
        *(v3 + 40) = 0;
        v8 = MEMORY[0x1E69793C8];
        v9 = MEMORY[0x1E6979EA8];
        goto LABEL_17;
      }

      v10 = re::globalAllocators(a1);
      v11 = (*(*v10[2] + 32))(v10[2], 40, 8);
      v3 = v11;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = a1 + 1;
    }

    else
    {
      v14 = re::globalAllocators(a1);
      v11 = (*(*v14[2] + 32))(v14[2], 40, 8);
      v3 = v11;
      *(v11 + 8) = 0;
      *(v11 + 16) = 0;
      *(v11 + 24) = a1;
    }

    *(v11 + 32) = 0;
    *(v11 + 36) = 0;
    *v11 = &unk_1F5CF2BD0;
    goto LABEL_18;
  }

  if (a2 <= 4)
  {
    if (a2 != 3)
    {
      v13 = re::globalAllocators(a1);
      v3 = (*(*v13[2] + 32))(v13[2], 48, 8);
      if (!media::FloatEaseInOutAnimation::FloatEaseInOutAnimation(v3, a1 + 4))
      {
        return v3;
      }

LABEL_18:
      v18 = &a1[1028 * v6];
      v21 = *(v18 + 3);
      v19 = v18 + 6;
      v20 = v21;
      if (v21 <= 0xFF)
      {
        v22 = &v19[4 * v20];
        *(v22 + 2) = v3;
        *(v22 + 24) = a3;
        *v19 = v20 + 1;
        ++*(v19 + 2);
      }

      return v3;
    }

    v7 = re::globalAllocators(a1);
    v3 = (*(*v7[2] + 32))(v7[2], 48, 8);
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = a1 + 3;
    *(v3 + 32) = 0;
    *(v3 + 36) = 0;
    *v3 = &unk_1F5CF2C50;
    *(v3 + 40) = 0;
    v8 = MEMORY[0x1E69793C8];
    v9 = MEMORY[0x1E6979EC8];
LABEL_17:
    v16 = [v8 functionWithName:*v9];
    v17 = *(v3 + 40);
    *(v3 + 40) = v16;

    goto LABEL_18;
  }

  if (a2 == 5)
  {
    v12 = re::globalAllocators(a1);
    v3 = (*(*v12[2] + 32))(v12[2], 48, 8);
    *(v3 + 8) = 0;
    *(v3 + 16) = 0;
    *(v3 + 24) = a1 + 5;
    *(v3 + 32) = 0;
    *(v3 + 36) = 0;
    *v3 = &unk_1F5CEABC0;
    *(v3 + 40) = 1065353216;
    goto LABEL_18;
  }

  re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < N", "operator[]", 173, a2, 6);
  result = _os_crash();
  __break(1u);
  return result;
}

double media::Spatial3DImageAnimationEngine::addMXIEntityTransitionToScreenEntityAnimation(media::Spatial3DImageAnimationEngine *this)
{
  v2 = media::Spatial3DImageAnimationEngine::add(this, 2, 0);
  if (v2)
  {
    *(v2 + 8) = xmmword_1E308EC90;
  }

  v3 = media::Spatial3DImageAnimationEngine::add(this, 0, 0);
  if (v3)
  {
    result = 0.000000381469873;
    *(v3 + 8) = xmmword_1E308ECA0;
  }

  return result;
}

double media::Spatial3DImageAnimationEngine::addAlchemistGenerationEffectFadeOutAnimation(media::Spatial3DImageAnimationEngine *this)
{
  v2 = media::Spatial3DImageAnimationEngine::add(this, 4, 1);
  if (v2)
  {
    *(v2 + 8) = xmmword_1E308ECB0;
  }

  v3 = media::Spatial3DImageAnimationEngine::add(this, 3, 1);
  if (v3)
  {
    result = 0.000000381469873;
    *(v3 + 8) = xmmword_1E308ECC0;
  }

  return result;
}

uint64_t media::Spatial3DImageAnimationEngine::addMXIImmersiveTransitionAnimation(media::Spatial3DImageAnimationEngine *this, int a2)
{
  result = media::Spatial3DImageAnimationEngine::add(this, 5, 2);
  if (result)
  {
    v4 = 0.0;
    if (a2)
    {
      v5 = 1.0;
    }

    else
    {
      v5 = 0.0;
    }

    *(result + 40) = 1063675494;
    *(result + 8) = 0x3F66666600000000;
    if (!a2)
    {
      v4 = 1.0;
    }

    *(result + 16) = v4;
    *(result + 20) = v5;
  }

  return result;
}

uint64_t media::Spatial3DImageAnimationEngine::update(uint64_t this, float a2, double a3, __n128 a4)
{
  v5 = this + 32;
  v6 = 24672;
  while (1)
  {
    if (!*(v5 - 8))
    {
      goto LABEL_9;
    }

    this = media::FloatAnimation::update(*(v5 + 8), a2, a3, a4);
    if (this)
    {
      goto LABEL_9;
    }

    if (!*(v5 - 8))
    {
      break;
    }

    this = re::internal::destroyPersistent<media::FloatAnimation>("update", 127, *(v5 + 8));
    v9 = *(v5 - 8);
    if (!v9)
    {
      goto LABEL_12;
    }

    v10 = v9 - 1;
    if (v9 != 1)
    {
      this = memmove((v5 + 8), (v5 + 24), 16 * v9 - 16);
    }

    *(v5 - 8) = v10;
    ++*v5;
LABEL_9:
    v5 += 4112;
    v6 -= 4112;
    if (!v6)
    {
      return this;
    }
  }

  re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, 0, 0);
  _os_crash();
  __break(1u);
LABEL_12:
  re::internal::assertLog(6, v8, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "removeStableAt", 555, 0, 0);
  this = _os_crash();
  __break(1u);
  return this;
}

void media::FloatEaseInAnimation::~FloatEaseInAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatEaseInAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

void media::FloatEaseOutAnimation::~FloatEaseOutAnimation(id *this)
{
}

{

  JUMPOUT(0x1E6906520);
}

float media::FloatEaseOutAnimation::interpolate(id *this, double a2, float a3, float a4)
{
  v5 = *&a2;
  *&a2 = a4;
  [this[5] _solveForInput:a2];
  if (v6 > 0.999)
  {
    v6 = 1.0;
  }

  return v5 + ((a3 - v5) * v6);
}

void *re::ecs2::allocInfo_ListenerComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_290, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_290))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AABB0, "ListenerComponent");
    __cxa_guard_release(&_MergedGlobals_290);
  }

  return &unk_1EE1AABB0;
}

void re::ecs2::initInfo_ListenerComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x9E2DEA8680918512;
  v14[1] = "ListenerComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1AAB90, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AAB90);
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
      qword_1EE1AABA0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "linearGain";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AABA8 = v12;
      __cxa_guard_release(&qword_1EE1AAB90);
    }
  }

  *(this + 2) = 0x9000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AABA0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ListenerComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ListenerComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ListenerComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ListenerComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs217ListenerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::ecs2::allocInfo_ListenerSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AAB98, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAB98))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAC40, "ListenerSystem");
    __cxa_guard_release(&qword_1EE1AAB98);
  }

  return &unk_1EE1AAC40;
}

void re::ecs2::initInfo_ListenerSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7E48499C06873046;
  v6[1] = "ListenerSystem";
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
  *(this + 8) = &re::ecs2::initInfo_ListenerSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::ListenerSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::ListenerSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ListenerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ListenerSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::ListenerSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::ListenerSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::ListenerSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = re::ecs2::System::System(a3, 1, 1);
  *v3 = &unk_1F5CF2C90;
  *(v3 + 224) = 0;
  result = 0.0;
  *(v3 + 240) = 0u;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 1065353216;
  return result;
}

void re::internal::defaultDestruct<re::ecs2::ListenerSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a3 + 240);

  re::ecs2::System::~System(a3);
}

double re::internal::defaultConstructV2<re::ecs2::ListenerSystem>(uint64_t a1)
{
  v1 = re::ecs2::System::System(a1, 1, 1);
  *v1 = &unk_1F5CF2C90;
  *(v1 + 224) = 0;
  result = 0.0;
  *(v1 + 240) = 0u;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 1065353216;
  return result;
}

void re::internal::defaultDestructV2<re::ecs2::ListenerSystem>(re::ecs2::System *a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(a1 + 240);

  re::ecs2::System::~System(a1);
}

_anonymous_namespace_ *re::ecs2::ListenerSystem::willAddSystemToECSService(re::ecs2::ListenerSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::ListenerSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void re::ecs2::ListenerSystem::willAddSceneToECSService(re::ecs2::ListenerSystem *this, re::ecs2::Scene *a2)
{
  v21 = *MEMORY[0x1E69E9840];
  v16 = a2;
  if (a2)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *buf = this;
    v18 = re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ListenerSystem::willRemoveComponents,re::ecs2::ListenerSystem>;
    v19 = 0;
    v20 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 272), buf);
    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__emplace_unique_key_args<re::ecs2::Scene *,re::ecs2::Scene * const&>(this + 30, &v16);
    v4 = *(this + 28);
    if (v4)
    {
      v5 = *(*(v16 + 13) + 288);
      v6 = (*(*v4 + 16))(v4);
      if (v6)
      {
        v9 = MEMORY[0x1E69E9820];
        v10 = 3221225472;
        v11 = ___ZN2re4ecs214ListenerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke;
        v12 = &__block_descriptor_56_e5_v8__0l;
        v13 = v16;
        v14 = v5 >> 1;
        v15 = v6;
        v7 = (*(*v6 + 32))(v6, 768);
        v8 = *re::audioLogObjects(v7);
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
        {
          *buf = 0;
          _os_log_debug_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEBUG, "[ListenerSystem] ->[willAddSystemToECSService] addServiceResetCallback :: Adding Callback", buf, 2u);
        }
      }
    }
  }
}

void ___ZN2re4ecs214ListenerSystem24willAddSceneToECSServiceEPNS0_5SceneE_block_invoke(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = *re::audioLogObjects(a1);
  if (v2)
  {
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      v9 = *(a1 + 40);
      *buf = 134217984;
      v11 = v9;
      _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[ListenerSystem] ->[willAddSystemToECSService] addServiceResetCallback :: Start of Callback for scene: %llu", buf, 0xCu);
    }

    v4 = re::ecs2::SceneComponentTable::get((*(a1 + 32) + 200), re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
          (*(**(a1 + 48) + 352))(*(a1 + 48), *(v8 + 32));
          *(v8 + 32) = xmmword_1E3049610;
          v7 -= 8;
        }

        while (v7);
      }
    }

    (*(**(a1 + 48) + 88))(*(a1 + 48), 4, *(a1 + 40), 1);
  }

  else if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_error_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_ERROR, "[ListenerSystem] ->[willAddSystemToECSService] addServiceResetCallback :: Scene is a nullptr", buf, 2u);
  }
}

uint64_t re::ecs2::ListenerSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a2)
  {
    v2 = this;
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::ListenerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    *&v5 = v2;
    *(&v5 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ListenerSystem::willRemoveComponents,re::ecs2::ListenerSystem>;
    v6 = 0;
    v7 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 272, &v5);
    std::__hash_table<re::ecs2::Scene *,std::hash<re::ecs2::Scene *>,std::equal_to<re::ecs2::Scene *>,std::allocator<re::ecs2::Scene *>>::__erase_unique<re::ecs2::Scene *>((v2 + 240), &v4);
    this = *(v2 + 224);
    if (this)
    {
      this = (*(*this + 16))(this, v4);
      if (this)
      {
        return (*(*this + 40))(this, 768, *(*(v4 + 13) + 288) >> 1);
      }
    }
  }

  return this;
}

uint64_t re::ecs2::ListenerSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 40))
  {
    v3 = result;
    if (*(result + 224))
    {
      v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v49);
      v6 = *(a3 + 200);
      if (v6)
      {
        v7 = *(a3 + 216);
        v43 = &v7[v6];
        v42 = vdupq_n_s64(1uLL);
        for (i = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType; ; i = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)
        {
          v9 = *v7;
          isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
          if (isStatisticCollectionEnabled)
          {
            v11 = re::profilerThreadContext(isStatisticCollectionEnabled);
            v12 = re::ecs2::SceneComponentTable::get((v9 + 200), i[65]);
            v13 = v12 ? *(v12 + 384) : 0;
            v14 = *(v11 + 152);
            if (v14)
            {
              v15 = v14[1128].u64[0];
              if (v15 >= v13)
              {
                v15 = v13;
              }

              v14[1128].i64[0] = v15;
              v16 = v14[1128].u64[1];
              if (v16 <= v13)
              {
                v16 = v13;
              }

              v14[1128].i64[1] = v16;
              v17.i64[1] = v42.i64[1];
              v17.i64[0] = v13;
              v14[1129] = vaddq_s64(v14[1129], v17);
              *(v11 + 184) = 0;
            }
          }

          re::ecs2::SceneComponentTable::get((v9 + 200), i[65]);
          re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v50, 3063, v3);
          v18 = *(*(v9 + 104) + 288);
          v19 = re::ecs2::SceneComponentTable::get((v9 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          v20 = !v19 || *(v19 + 384) == 0;
          v44 = v20;
          v21 = re::ecs2::SceneComponentTable::get((v9 + 200), i[65]);
          if (v21)
          {
            v22 = *(v21 + 384);
            if (v22)
            {
              break;
            }
          }

LABEL_47:
          re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v50);
          if (++v7 == v43)
          {
            return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v49);
          }
        }

        v23 = v18 >> 1;
        v24 = *(v21 + 400);
        v25 = 8 * v22;
        while (1)
        {
          v26 = *v24;
          v27 = *(*(*v24 + 16) + 216);
          if (v27)
          {
            v28 = re::ecs2::NetworkComponent::owningProcessType(v27) == 0;
          }

          else
          {
            v28 = 1;
          }

          if (*(v26 + 40) == v23 && (v29 = *(v26 + 48), v29 == *(v26 + 128)))
          {
            v30 = (v26 + 32);
            if (*(v26 + 32))
            {
              goto LABEL_35;
            }
          }

          else
          {
            *(v26 + 32) = 0;
            v30 = (v26 + 32);
            *(v26 + 52) = 1065353216;
            *(v26 + 64) = xmmword_1E3047670;
            *(v26 + 80) = xmmword_1E3047680;
            *(v26 + 96) = xmmword_1E30476A0;
            *(v26 + 112) = xmmword_1E30474D0;
          }

          *(v26 + 40) = -1;
          if (!v28)
          {
            goto LABEL_46;
          }

          v31 = (*(**(v3 + 224) + 16))(*(v3 + 224), v9);
          if (v31)
          {
            v32 = (*(*v31 + 344))(v31, v23, *(v26 + 128));
            *(v26 + 32) = v32;
            if (!v32)
            {
              goto LABEL_46;
            }
          }

          else if (!*v30)
          {
            goto LABEL_46;
          }

          *(v26 + 40) = v23;
          v29 = *(v26 + 128);
          *(v26 + 48) = v29;
LABEL_35:
          if (v29 == 2)
          {
            v33 = (*(**(v3 + 224) + 16))(*(v3 + 224), v9);
            if (v33)
            {
              (*(*v33 + 360))(v33, *v30);
            }
          }

          re::TransformService::worldMatrix(*(v3 + 232), *(v26 + 16), 0, &v51);
          if (*(v26 + 52) != *(v26 + 28))
          {
            v34 = v51;
            v35 = v52;
            v36 = v53;
            v37 = v54;
LABEL_42:
            if ((*(*(v26 + 16) + 304) & 1) != 0 && (!v44 || *(v26 + 48) == 2))
            {
              v45 = v34;
              v46 = v35;
              v47 = v36;
              v48 = v37;
              v38 = (*(**(v3 + 224) + 16))(*(v3 + 224), v9);
              v39 = *(v26 + 32);
              v51 = v45;
              v52 = v46;
              v53 = v47;
              v54 = v48;
              v40 = *(v26 + 28);
              v41 = mach_absolute_time();
              (*(*v38 + 368))(v38, v39, &v51, v41, v40);
              *(v26 + 52) = *(v26 + 28);
              *(v26 + 64) = v45;
              *(v26 + 80) = v46;
              *(v26 + 96) = v47;
              *(v26 + 112) = v48;
            }

            goto LABEL_46;
          }

          v34 = v51;
          v35 = v52;
          v36 = v53;
          v37 = v54;
          if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(*(v26 + 80), v52), vceqq_f32(*(v26 + 64), v51)), vandq_s8(vceqq_f32(*(v26 + 96), v53), vceqq_f32(*(v26 + 112), v54)))) & 0x80000000) == 0)
          {
            goto LABEL_42;
          }

LABEL_46:
          ++v24;
          v25 -= 8;
          if (!v25)
          {
            goto LABEL_47;
          }
        }
      }

      return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v49);
    }
  }

  return result;
}

void re::ecs2::ListenerSystem::~ListenerSystem(re::ecs2::ListenerSystem *this)
{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 240);

  re::ecs2::System::~System(this);
}

{
  std::__hash_table<std::__hash_value_type<unsigned long long,unsigned short>,std::__unordered_map_hasher<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::hash<unsigned long long>,std::equal_to<unsigned long long>,true>,std::__unordered_map_equal<unsigned long long,std::__hash_value_type<unsigned long long,unsigned short>,std::equal_to<unsigned long long>,std::hash<unsigned long long>,true>,std::allocator<std::__hash_value_type<unsigned long long,unsigned short>>>::~__hash_table(this + 240);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

double re::make::shared::unsafelyInplace<re::ecs2::ListenerComponent>(ArcSharedObject *a1)
{
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
  *v1 = &unk_1F5CDDF00;
  *(v1 + 28) = 1065353216;
  *(v1 + 32) = xmmword_1E3049610;
  *(v1 + 48) = 1;
  *(v1 + 52) = 1065353216;
  *(v1 + 64) = xmmword_1E3047670;
  *(v1 + 80) = xmmword_1E3047680;
  result = 0.0;
  *(v1 + 96) = xmmword_1E30476A0;
  *(v1 + 112) = xmmword_1E30474D0;
  *(v1 + 128) = 1;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs217ListenerComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::ListenerSystem::willRemoveComponents,re::ecs2::ListenerSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    v4 = a4 == 0;
  }

  else
  {
    v4 = 1;
  }

  if (!v4)
  {
    v5 = a3;
    v7 = &a3[a4];
    do
    {
      v8 = *v5;
      for (i = *(a1 + 256); i; i = *i)
      {
        v10 = (*(**(a1 + 224) + 16))(*(a1 + 224), i[2]);
        if (v10)
        {
          (*(*v10 + 352))(v10, *(v8 + 32));
        }
      }

      *(v8 + 32) = xmmword_1E3049610;
      ++v5;
    }

    while (v5 != v7);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::ListenerComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

void *re::ecs2::introspect_SpatialVideoMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Screen";
      re::ecs2::introspect_SpatialVideoMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 8) = 1;
      *(v13 + 16) = "Spatial";
      qword_1EE1C59D0 = v13;
    }
  }

  {
    v14 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_SpatialVideoMode(BOOL)::info, "SpatialVideoMode", 1, 1, 1, 1);
    *v14 = &unk_1F5D0C658;
    *(v14 + 8) = &re::ecs2::introspect_SpatialVideoMode(BOOL)::enumTable;
    *(v14 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v16);
    v3 = re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v16);
    if (v3)
    {
      return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_SpatialVideoMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_SpatialVideoMode(BOOL)::info, a2);
  v15[0] = 0xA5C0ADA706287074;
  v15[1] = "SpatialVideoMode";
  xmmword_1EE1C59A0 = v16;
  if (v15[0])
  {
    if (v15[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_SpatialVideoMode(BOOL)::info;
}

void *re::ecs2::introspect_ImageContentType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "None";
      re::ecs2::introspect_ImageContentType(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Mono";
      qword_1EE1C5B08 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Spatial";
      qword_1EE1C5B10 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImageContentType(BOOL)::info, "ImageContentType", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::ecs2::introspect_ImageContentType(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImageContentType(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImageContentType(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::ecs2::introspect_ImageContentType(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::ecs2::introspect_ImageContentType(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImageContentType(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImageContentType(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImageContentType(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImageContentType(BOOL)::info, a2);
  v17[0] = 0x3B4422DAEC277E30;
  v17[1] = "ImageContentType";
  xmmword_1EE1C5AD8 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImageContentType(BOOL)::info;
}

void *re::ecs2::introspect_ImageViewingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Mono";
      re::ecs2::introspect_ImageViewingMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "SpatialStereo";
      qword_1EE1C5AA0 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Spatial3D";
      qword_1EE1C5AA8 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImageViewingMode(BOOL)::info, "ImageViewingMode", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::ecs2::introspect_ImageViewingMode(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImageViewingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImageViewingMode(BOOL)::info, a2);
  v17[0] = 0x3BB19B7F3ADCC44ALL;
  v17[1] = "ImageViewingMode";
  xmmword_1EE1C5A70 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImageViewingMode(BOOL)::info;
}

void *re::ecs2::introspect_ImageImmersiveViewingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "None";
      re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Portal";
      qword_1EE1C5808 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 8) = 2;
      *(v15 + 16) = "Immersive";
      qword_1EE1C5810 = v15;
    }
  }

  {
    v16 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info, "ImageImmersiveViewingMode", 1, 1, 1, 1);
    *v16 = &unk_1F5D0C658;
    *(v16 + 8) = &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::enumTable;
    *(v16 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v18);
    v3 = re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v18);
    if (v3)
    {
      return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info, a2);
  v17[0] = 0x2FA9212071810500;
  v17[1] = "ImageImmersiveViewingMode";
  xmmword_1EE1C57D8 = v18;
  if (v17[0])
  {
    if (v17[0])
    {
    }
  }

  if ((v2 & 1) == 0)
  {
    goto LABEL_12;
  }

  return &re::ecs2::introspect_ImageImmersiveViewingMode(BOOL)::info;
}

void *re::ecs2::introspect_ImmersiveAnimationMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  v2 = this;
  {
    if (v9)
    {
      v10 = re::introspectionAllocator(v9);
      v11 = (*(*v10 + 32))(v10, 24, 8);
      *v11 = 1;
      *(v11 + 1) = 0;
      *(v11 + 2) = "Portal";
      re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::enumAttributes = v11;
      v12 = re::introspectionAllocator(v11);
      v13 = (*(*v12 + 32))(v12, 24, 8);
      *v13 = 1;
      *(v13 + 1) = 1;
      *(v13 + 2) = "Immersive";
      qword_1EE1C5870 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = (*(*v14 + 32))(v14, 24, 8);
      *v15 = 1;
      *(v15 + 1) = 2;
      *(v15 + 2) = "Expanding";
      qword_1EE1C5878 = v15;
      v16 = re::introspectionAllocator(v15);
      v17 = (*(*v16 + 32))(v16, 24, 8);
      *v17 = 1;
      *(v17 + 8) = 3;
      *(v17 + 16) = "Collapsing";
      qword_1EE1C5880 = v17;
    }
  }

  {
    v18 = re::IntrospectionBasic::IntrospectionBasic(&re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info, "ImmersiveAnimationMode", 1, 1, 1, 1);
    *v18 = &unk_1F5D0C658;
    *(v18 + 8) = &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::enumTable;
    *(v18 + 4) = 9;
  }

  if (v2)
  {
    if (re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized)
    {
      return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v20);
    v3 = re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v20);
    if (v3)
    {
      return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized)
    {
LABEL_12:
      v7 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v7);
      return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
    }
  }

  re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::isInitialized = 1;
  re::IntrospectionRegistry::add(&re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info, a2);
  v19[0] = 0xD3CC105FEF9C40D8;
  v19[1] = "ImmersiveAnimationMode";
  xmmword_1EE1C5840 = v20;
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

  return &re::ecs2::introspect_ImmersiveAnimationMode(BOOL)::info;
}

void re::ecs2::introspect_SpatialMediaBillboardingMode(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AACD8, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AACE0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AACE0))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AAD10, "SpatialMediaBillboardingMode", 1, 1, 1, 1);
      qword_1EE1AAD10 = &unk_1F5D0C658;
      qword_1EE1AAD50 = &re::ecs2::introspect_SpatialMediaBillboardingMode(BOOL)::enumTable;
      dword_1EE1AAD20 = 9;
      __cxa_guard_release(&qword_1EE1AACE0);
    }

    if (_MergedGlobals_291)
    {
      break;
    }

    _MergedGlobals_291 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AAD10, a2);
    v35 = 0x40D35E6F71816C0CLL;
    v36 = "SpatialMediaBillboardingMode";
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
      v6 = qword_1EE1AAD50;
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
      xmmword_1EE1AAD30 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1AACD8);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "None";
      qword_1EE1AACF8 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Headlocked";
      qword_1EE1AAD00 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Stabilized";
      qword_1EE1AAD08 = v34;
      __cxa_guard_release(&qword_1EE1AACD8);
    }
  }
}

void *re::ecs2::allocInfo_SpatialMediaComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AACF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AACF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AADB8, "SpatialMediaComponent");
    __cxa_guard_release(&qword_1EE1AACF0);
  }

  return &unk_1EE1AADB8;
}

void re::ecs2::initInfo_SpatialMediaComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v52[0] = 0x1AC73CC565FE1EFALL;
  v52[1] = "SpatialMediaComponent";
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  *(this + 2) = v53;
  if ((atomic_load_explicit(&qword_1EE1AACE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AACE8);
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
      qword_1EE1AAD58 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_spillTextureBlend";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x3800000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AAD60 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_legibilityGradientStrength";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x5400000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AAD68 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_isMediaBillboardingEnabled";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x3C00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AAD70 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "m_isFlatGeometry";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x3400000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1AAD78 = v24;
      v25 = re::introspectionAllocator(v24);
      v27 = re::introspect_BOOL(1, v26);
      v28 = (*(*v25 + 32))(v25, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "m_shouldAnimateImmersiveTransition";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x5C00000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1AAD80 = v28;
      v29 = re::introspectionAllocator(v28);
      re::ecs2::introspect_SpatialMediaBillboardingMode(v29, v30);
      v31 = (*(*v29 + 32))(v29, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "m_mediaBillboardingMode";
      *(v31 + 16) = &qword_1EE1AAD10;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x5000000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1AAD88 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_float(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "m_immersiveReducedExtent";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x5800000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1AAD90 = v35;
      v36 = re::introspectionAllocator(v35);
      v37 = re::introspect_Vector3F(1);
      v38 = (*(*v36 + 32))(v36, 72, 8);
      *v38 = 1;
      *(v38 + 8) = "m_portalMediaPlaneOffset";
      *(v38 + 16) = v37;
      *(v38 + 24) = 0;
      *(v38 + 32) = 0x2000000008;
      *(v38 + 40) = 0;
      *(v38 + 48) = 0;
      *(v38 + 56) = 0;
      *(v38 + 64) = 0;
      qword_1EE1AAD98 = v38;
      v39 = re::introspectionAllocator(v38);
      v41 = re::introspect_float(1, v40);
      v42 = (*(*v39 + 32))(v39, 72, 8);
      *v42 = 1;
      *(v42 + 8) = "m_magnificationExtent";
      *(v42 + 16) = v41;
      *(v42 + 24) = 0;
      *(v42 + 32) = 0x6000000009;
      *(v42 + 40) = 0;
      *(v42 + 48) = 0;
      *(v42 + 56) = 0;
      *(v42 + 64) = 0;
      qword_1EE1AADA0 = v42;
      v43 = re::introspectionAllocator(v42);
      v45 = re::introspect_float(1, v44);
      v46 = (*(*v43 + 32))(v43, 72, 8);
      *v46 = 1;
      *(v46 + 8) = "m_magnificationVelocity";
      *(v46 + 16) = v45;
      *(v46 + 24) = 0;
      *(v46 + 32) = 0x640000000ALL;
      *(v46 + 40) = 0;
      *(v46 + 48) = 0;
      *(v46 + 56) = 0;
      *(v46 + 64) = 0;
      qword_1EE1AADA8 = v46;
      v47 = re::introspectionAllocator(v46);
      v49 = re::introspect_BOOL(1, v48);
      v50 = (*(*v47 + 32))(v47, 72, 8);
      *v50 = 1;
      *(v50 + 8) = "m_shouldUsePortalWidthForMediaScaling";
      *(v50 + 16) = v49;
      *(v50 + 24) = 0;
      *(v50 + 32) = 0x680000000BLL;
      *(v50 + 40) = 0;
      *(v50 + 48) = 0;
      *(v50 + 56) = 0;
      *(v50 + 64) = 0;
      qword_1EE1AADB0 = v50;
      __cxa_guard_release(&qword_1EE1AACE8);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 12;
  *(this + 8) = &qword_1EE1AAD58;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SpatialMediaComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SpatialMediaComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SpatialMediaComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SpatialMediaComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221SpatialMediaComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v51 = v53;
}

re::ecs2::SpatialMediaComponent *re::ecs2::SpatialMediaComponent::SpatialMediaComponent(re::ecs2::SpatialMediaComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF2D20;
  *(v2 + 32) = xmmword_1E308ED80;
  *(v2 + 48) = 1065353216;
  *(v2 + 52) = 0;
  *(v2 + 56) = 0;
  *(v2 + 60) = 0;
  *(v2 + 64) = 0x3E3333333D23D70ALL;
  *(v2 + 72) = 0x141C80000;
  *(v2 + 80) = 0;
  *(v2 + 84) = 0;
  *(v2 + 88) = 0;
  *(v2 + 92) = 1;
  *(v2 + 96) = 1065353216;
  *(v2 + 104) = 0;
  v3 = *re::spatialMediaLogObjects(v2);
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    *v5 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "[SpatialMediaComponent] Component initialized.", v5, 2u);
  }

  return this;
}

uint64_t re::ecs2::SpatialMediaComponent::getPortalEntity(re::ecs2::SpatialMediaComponent *this)
{
  v23 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::ImagePresentationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  v3 = re::ecs2::EntityComponentCollection::get((*(this + 2) + 48), re::ecs2::ComponentImpl<re::ecs2::VideoPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v2)
  {
    if (v3)
    {
      v4 = *re::spatialMediaLogObjects(v3);
      if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
      {
        v5 = *(*(this + 2) + 312);
        v21 = 134217984;
        v22 = v5;
        v6 = "[SpatialMediaSystem::getPortalEntity] Entity %llu has both ImagePresentationComponent and VideoPlayerComponent. It should only have one of them.";
LABEL_23:
        _os_log_error_impl(&dword_1E1C61000, v4, OS_LOG_TYPE_ERROR, v6, &v21, 0xCu);
        return 0;
      }

      return 0;
    }

    v13 = *(this + 2);
    v14 = *(v13 + 344);
    if (v14)
    {
      v15 = *(v13 + 360);
      v16 = 8 * v14;
      do
      {
        v11 = *v15;
        if ((*(*v15 + 288) ^ 0xEB3B4F6DA23A16B4) <= 1)
        {
          v17 = *(v11 + 296);
          if (v17 == "__InternalIPC-Screen__")
          {
            return v11;
          }

          v3 = strcmp(v17, "__InternalIPC-Screen__");
          if (!v3)
          {
            return v11;
          }
        }

        ++v15;
        v16 -= 8;
      }

      while (v16);
    }

LABEL_19:
    v4 = *re::spatialMediaLogObjects(v3);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v18 = *(*(this + 2) + 312);
      v21 = 134217984;
      v22 = v18;
      v6 = "[SpatialMediaSystem::getPortalEntity] Unable to locate the portal entity under %llu.";
      goto LABEL_23;
    }

    return 0;
  }

  if (!v3)
  {
    v4 = *re::spatialMediaLogObjects(0);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      v19 = *(*(this + 2) + 312);
      v21 = 134217984;
      v22 = v19;
      v6 = "[SpatialMediaSystem::getPortalEntity] Entity %llu doesn't have an ImagePresentationComponent or VideoPlayerComponent.";
      goto LABEL_23;
    }

    return 0;
  }

  v7 = *(this + 2);
  v8 = *(v7 + 344);
  if (!v8)
  {
    goto LABEL_19;
  }

  v9 = *(v7 + 360);
  v10 = 8 * v8;
  while (1)
  {
    v11 = *v9;
    if ((*(*v9 + 288) ^ 0xF4664E2E6A44E25ALL) <= 1)
    {
      v12 = *(v11 + 296);
      if (v12 == "__InternalVPC-Screen__")
      {
        return v11;
      }

      v3 = strcmp(v12, "__InternalVPC-Screen__");
      if (!v3)
      {
        return v11;
      }
    }

    ++v9;
    v10 -= 8;
    if (!v10)
    {
      goto LABEL_19;
    }
  }
}

float32x2_t re::ecs2::SpatialMediaComponent::getCurrentScaledMeshSize(re::ecs2::SpatialMediaComponent *this)
{
  PortalEntity = re::ecs2::SpatialMediaComponent::getPortalEntity(this);
  if (PortalEntity)
  {
    v4 = PortalEntity;
    v5 = re::ecs2::EntityComponentCollection::get((PortalEntity + 48), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v6 = *(*(this + 2) + 256);
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
      return vmul_f32(vmul_f32(v6[4], *(*(v4 + 256) + 32)), v5[6]);
    }
  }

  return result;
}

void re::ecs2::SpatialMediaComponent::~SpatialMediaComponent(re::ecs2::SpatialMediaComponent *this)
{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221SpatialMediaComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::SceneUnderstandingDepthTracker::updateRenderData(uint64_t a1, simd_float4x4 *a2, uint64_t a3, uint64_t a4, float a5)
{
  v7 = a5;
  v30 = *MEMORY[0x1E69E9840];
  *(a1 + 96) = *(a1 + 96) + a5;
  PipelineAction = re::ecs2::SceneUnderstandingDepthTracker::getPipelineAction(a1, a1 + 16, a3, a2);
  if (PipelineAction == 1)
  {
    v10 = a2->columns[1];
    *&v28[15] = a2->columns[0];
    *&v28[31] = v10;
    v11 = a2->columns[3];
    *&v28[47] = a2->columns[2];
    v29 = v11;
    if (*(a1 + 16))
    {
      v12 = a2->columns[0];
      v13 = a2->columns[1];
      v14 = a2->columns[3];
      *(a1 + 64) = a2->columns[2];
      *(a1 + 80) = v14;
      *(a1 + 32) = v12;
      *(a1 + 48) = v13;
    }

    else
    {
      *(a1 + 16) = 1;
      v15 = *&v28[31];
      *(a1 + 32) = *&v28[15];
      *(a1 + 48) = v15;
      v16 = v29;
      *(a1 + 64) = *&v28[47];
      *(a1 + 80) = v16;
    }

    *(a1 + 96) = 0;
    *v28 = re::ecs2::getPipelineParameters(void)::params;
    *&v28[16] = unk_1ECEF63C8;
    *&v28[32] = qword_1ECEF63D8;
    *&v28[52] = 1;
  }

  else
  {
    *v28 = re::ecs2::getPipelineParameters(void)::params;
    *&v28[16] = unk_1ECEF63C8;
    *&v28[32] = qword_1ECEF63D8;
    *&v28[52] = PipelineAction;
    v7 = *(a1 + 96);
  }

  v17 = expf(-v7 / *&dword_1ECEF63CC);
  v18 = *(a1 + 100);
  *&v28[40] = v17;
  *&v28[44] = v18;
  v28[48] = v17 > *(&qword_1ECEF63D8 + 1);
  *(a1 + 100) = v17;
  v19 = *(*a1 + 112);
  if (v19)
  {
    v20 = re::RenderFrameBox::get((v19 + 328), 0xFFFFFFFFFFFFFFFuLL);
  }

  else
  {
    v20 = 0;
  }

  v21 = *(a4 + 8);
  if (v21)
  {
    v22 = *a4;
    v23 = 8 * v21;
    do
    {
      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(*v22, 0, v20, v27);
      v26 = v27[0] >> 1;
      v24 = **(re::RenderFrameData::stream((v20 + 33), &v26) + 48);
      v25 = (*(v24 + 1128))();
      if (v27[0])
      {
        if (v27[0])
        {
        }
      }

      ++v22;
      v23 -= 8;
    }

    while (v23);
  }
}

uint64_t re::ecs2::SceneUnderstandingDepthTracker::getPipelineAction(uint64_t a1, uint64_t a2, uint64_t a3, simd_float4x4 *a4)
{
  if (*a2 != 1 || *(a1 + 96) >= *&dword_1ECEF63D0 || (*(a3 + 1) & 1) != 0)
  {
    return 1;
  }

  v23 = v4;
  v24 = v5;
  v25 = __invert_f4(*a4);
  v8 = 0;
  v9 = *(a2 + 32);
  v10 = *(a2 + 48);
  v11 = *(a2 + 64);
  v21[0] = *(a2 + 16);
  v21[1] = v9;
  v21[2] = v10;
  v21[3] = v11;
  do
  {
    v22[v8] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v25.columns[0], COERCE_FLOAT(v21[v8])), v25.columns[1], *&v21[v8], 1), v25.columns[2], v21[v8], 2), v25.columns[3], v21[v8], 3);
    ++v8;
  }

  while (v8 != 4);
  v20 = v22[3];
  re::makeQuaternionFromMatrix<float>(v22);
  v13 = 1.0;
  v14 = fabsf(v12);
  if (v14 <= 1.0 || fabsf(v14 + -1.0) < (((v14 + 1.0) + 1.0) * 0.00001))
  {
    if (v12 <= 1.0)
    {
      v13 = v12;
    }

    if (v13 < -1.0)
    {
      v13 = -1.0;
    }

    v16 = acosf(v13);
    v15 = v16 + v16;
  }

  else
  {
    v15 = NAN;
  }

  v17 = vmulq_f32(v20, v20);
  v18 = v17.f32[2] + vaddv_f32(*v17.f32);
  if (fabsf(v15) <= *&qword_1ECEF63D8 && v18 <= *&dword_1ECEF63D4)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

void *re::ecs2::allocInfo_AdaptiveResolutionSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_292, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_292))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAE50, "AdaptiveResolutionSystem");
    __cxa_guard_release(&_MergedGlobals_292);
  }

  return &unk_1EE1AAE50;
}

void re::ecs2::initInfo_AdaptiveResolutionSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x5E3F6A3BDCE67162;
  v6[1] = "AdaptiveResolutionSystem";
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
  *(this + 8) = &re::ecs2::initInfo_AdaptiveResolutionSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AdaptiveResolutionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AdaptiveResolutionSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AdaptiveResolutionSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::AdaptiveResolutionSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
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
  *result = &unk_1F5CF2DA8;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AdaptiveResolutionSystem>(_OWORD *a1)
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
  *result = &unk_1F5CF2DA8;
  return result;
}

void re::ecs2::AdaptiveResolutionSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = (*(**(a1 + 40) + 32))(*(a1 + 40));
  v6 = re::ServiceLocator::service<re::TransformService>(v5);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = v6;
    v9 = 0;
    v10 = *(a3 + 216);
    v47 = &v10[v7];
    v11 = 0.0;
    v12 = &unk_1EE187000;
    v46 = v6;
    do
    {
      v13 = *v10;
      v14 = re::ecs2::SceneComponentTable::get((*v10 + 200), re::ecs2::ComponentImpl<re::ecs2::AdaptiveResolutionComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (!v14)
      {
        goto LABEL_41;
      }

      v15 = *(v14 + 384);
      if (!v15)
      {
        goto LABEL_41;
      }

      v16 = *(v14 + 400);
      v48 = &v16[v15];
      do
      {
        v17 = *v16;
        if (v9)
        {
          goto LABEL_31;
        }

        v18 = re::ecs2::SceneComponentTable::get((v13 + 200), re::ecs2::ComponentImpl<re::ecs2::CameraViewDescriptorsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!v18 || (v19 = *(v18 + 384)) == 0)
        {
          v9 = 0;
          break;
        }

        v20 = *(v18 + 400);
        v21 = 8 * v19;
        while (1)
        {
          v22 = *v20;
          v23 = *(*v20 + 2);
          if (v23)
          {
            if (*(v23 + 304))
            {
              v24 = (*(**(v13 + 56) + 32))(*(v13 + 56));
              v25 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v24);
              v26 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::PerspectiveCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v26)
              {
                v35 = v26;
                *v61 = 0;
                re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v22, v25, v61, v27, v28);
                v36 = 1.0;
                if (v61[1] >= 0.0001)
                {
                  v36 = v61[0] / v61[1];
                }

                re::ecs2::PerspectiveCameraComponent::calculateProjection(v35, v50, v36);
                goto LABEL_23;
              }

              v29 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::OrthographicCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v29)
              {
                v37 = v29;
                *v61 = 0;
                re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v22, v25, v61, v30, v31);
                v38 = 1.0;
                if (v61[1] >= 0.0001)
                {
                  v38 = v61[0] / v61[1];
                }

                re::ecs2::OrthographicCameraComponent::calculateProjection(v37, v50, v38);
LABEL_23:
                v8 = v46;
                v12 = &unk_1EE187000;
                if (v52 == 1)
                {
                  v57 = v53;
                  v58 = v54;
                  v59 = v55;
                  v60 = v56;
                }

                else
                {
                  re::Projection::cullingProjectionMatrix(v50, &v57);
                }

                goto LABEL_30;
              }

              v32 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::CustomMatrixCameraComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              if (v32)
              {
                break;
              }
            }
          }

          ++v20;
          v21 -= 8;
          if (!v21)
          {
            v9 = 0;
            v8 = v46;
            v12 = &unk_1EE187000;
            goto LABEL_41;
          }
        }

        v39 = v32;
        *v61 = 0;
        re::ecs2::CameraViewDescriptorsComponent::getCameraScreenSize(v22, v25, v61, v33, v34);
        re::ecs2::CustomMatrixCameraComponent::calculateProjection(v39, 0, v50);
        if (v52 == 1)
        {
          v57 = v53;
          v58 = v54;
          v59 = v55;
          v60 = v56;
        }

        else
        {
          re::Projection::cullingProjectionMatrix(v50, &v57);
        }

        v8 = v46;
        v12 = &unk_1EE187000;
LABEL_30:
        v3 = *&v57;
        v9 = *(v22 + 2);
        v11 = v61[0];
        if (!v9)
        {
          break;
        }

LABEL_31:
        v40 = *(v17 + 16);
        v41 = re::ecs2::EntityComponentCollection::getOrAdd((v40 + 6), v12[407]);
        re::TransformService::worldTransform(v8, v40, 0, v50);
        v49 = v51;
        re::TransformService::worldTransform(v8, v9, 0, v50);
        v42 = vsubq_f32(v49, v51);
        v43 = vmulq_f32(v42, v42);
        v43.f32[0] = sqrtf(v43.f32[2] + vaddv_f32(*v43.f32));
        v44 = v11 / ((1.0 / v3) * (v43.f32[0] + v43.f32[0]));
        v45 = 512.0;
        if (v44 >= 512.0)
        {
          if (v44 >= 1024.0)
          {
            v45 = 2048.0;
            if (v44 < 2048.0)
            {
              v45 = 1024.0;
              if ((v44 + -1024.0) > 512.0)
              {
                v45 = 2048.0;
              }
            }
          }

          else
          {
            v45 = 1024.0;
            if ((v44 + -512.0) <= 256.0)
            {
              v45 = 512.0;
            }
          }
        }

        if (v45 != *(v41 + 28))
        {
          *(v41 + 28) = v45;
          re::ecs2::Component::markDirty(v41);
        }

        ++v16;
      }

      while (v16 != v48);
LABEL_41:
      ++v10;
    }

    while (v10 != v47);
  }
}

void re::ecs2::AdaptiveResolutionSystem::~AdaptiveResolutionSystem(re::ecs2::AdaptiveResolutionSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::ecs2::BlendShapeWeightsComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v19, a5, 0);
  v8 = v19;
  v9 = v20;
  v10 = v20;
  v19 = a4;
  v20 = v8;
  v21 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v19);
      v13 = *(v12 + 2);
      re::ecs2::BlendShapeWeightsComponent::upgradeBlendWeightsFromBlendShapeWeights(v12);
      v14 = (a3 + 32);
      if (*(v13 + 200))
      {
        v15 = *(v13 + 192);
        v14 = (a3 + 32);
        if (v15)
        {
          if (*(v15 + 40))
          {
            v14 = (a3 + 40);
          }

          else
          {
            v14 = (a3 + 32);
          }
        }
      }

      v16 = v19;
      v17 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v16, v17, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

void re::ecs2::BlendShapeWeightsComponent::upgradeBlendWeightsFromBlendShapeWeights(re::ecs2::BlendShapeWeightsComponent *this)
{
  v34 = *MEMORY[0x1E69E9840];
  if (*(this + 43))
  {
    if (!*(this + 9))
    {
      v2 = re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>((this + 32));
      if (v2)
      {
        v3 = v2;
        v4 = *(this + 9);
        if (v4)
        {
          v5 = *(this + 11);
          v6 = 32 * v4;
          do
          {
            re::BlendShapeWeights::deinit(v5);
            v5 = (v5 + 32);
            v6 -= 32;
          }

          while (v6);
        }

        if (*(v3 + 16))
        {
          v7 = 0;
          v8 = 0;
          do
          {
            re::make::shared::object<re::BlendShapeWeightsDefinition,re::FixedArray<re::StringID> const&>((*(v3 + 32) + v7), v22);
            v29 = 0u;
            v30 = 0u;
            re::BlendShapeWeights::init(&v29, v22);
            v9 = *(this + 9);
            if (v9 >= *(this + 8))
            {
              re::DynamicArray<re::BlendShapeWeights>::growCapacity(this + 7, v9 + 1);
              v9 = *(this + 9);
            }

            v10 = re::FixedArray<float>::FixedArray((*(this + 11) + 32 * v9), &v29);
            v11 = *(&v30 + 1);
            v10[3] = *(&v30 + 1);
            if (v11)
            {
              v12 = (v11 + 8);
            }

            ++*(this + 9);
            ++*(this + 20);
            re::BlendShapeWeights::~BlendShapeWeights(&v29);
            if (*v22)
            {
            }

            ++v8;
            v7 += 24;
          }

          while (v8 < *(v3 + 16));
        }

        v13 = *(this + 43);
        if (v13)
        {
          v14 = 0;
          v15 = *(this + 45);
          do
          {
            v16 = v15 + 40 * v14;
            v17 = *(v16 + 16);
            if (v17)
            {
              v18 = *(this + 9);
              if (v18 > v14)
              {
                v19 = 0;
                v20 = *(v16 + 32);
                v21 = *(this + 11) + 32 * v14;
                v18 = *(v21 + 8);
                while (v18 != v19)
                {
                  *(*(v21 + 16) + 4 * v19) = *(v20 + 4 * v19);
                  if (v17 == ++v19)
                  {
                    goto LABEL_24;
                  }
                }

                v32 = 0u;
                v33 = 0u;
                v30 = 0u;
                v31 = 0u;
                v29 = 0u;
                os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                *v22 = 136315906;
                *&v22[4] = "operator[]";
                v23 = 1024;
                v24 = 468;
                v25 = 2048;
                v26 = v18;
                v27 = 2048;
                v28 = v18;
                _os_log_send_and_compose_impl();
                _os_crash_msg();
                __break(1u);
              }

              v32 = 0u;
              v33 = 0u;
              v30 = 0u;
              v31 = 0u;
              v29 = 0u;
              os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
              *v22 = 136315906;
              *&v22[4] = "operator[]";
              v23 = 1024;
              v24 = 789;
              v25 = 2048;
              v26 = v14;
              v27 = 2048;
              v28 = v18;
              _os_log_send_and_compose_impl();
              _os_crash_msg();
              __break(1u);
            }

LABEL_24:
            ++v14;
          }

          while (v14 != v13);
        }
      }
    }
  }
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::BlendShapeWeightsComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v45, a5, 0);
  v8 = v45;
  v9 = v46;
  v10 = v46;
  v45 = a4;
  v46 = v8;
  v47 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v45);
      v13 = v12[2];
      re::ecs2::BlendShapeWeightsComponent::upgradeBlendWeightsFromBlendShapeWeights(v12);
      v14 = v13[24];
      v15 = re::AssetHandle::loadedAsset<re::MeshAsset>((v14 + 32));
      if (v15)
      {
        v16 = v15;
        v17 = re::ecs2::EntityComponentCollection::get((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        v18 = v16[71];
        v43 = v16[73];
        v44 = v18;
        if (v17)
        {
          v19 = (v17 + 216);
          v20 = *(v17 + 192);
          v43 = *(v17 + 208);
          v44 = v20;
        }

        else
        {
          v19 = (v16 + 80);
        }

        v27 = re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>((v12 + 4));
        if (v27)
        {
          v28 = v27;
          v29 = *(v14 + 40);
          if (v29)
          {
            v30 = *(v29 + 792);
          }

          else
          {
            v30 = 0;
          }

          v33 = v12[5];
          if (v33)
          {
            v34 = *(v33 + 792);
          }

          else
          {
            v34 = 0;
          }

          v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v29 ^ (v29 >> 30))) >> 27));
          v36 = v30 ^ (v35 >> 31) ^ v35;
          v37 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v33 ^ (v33 >> 30))) >> 27));
          v38 = ((v36 << 6) + (v36 >> 2) + (v34 ^ (v37 >> 31) ^ v37) - 0x61C8864680B583E9) ^ v36;
          if (v12[12])
          {
            v12[12] = 0;
            re::DynamicArray<re::FixedArray<re::StringID>>::deinit((v12 + 13));
            re::DynamicArray<re::MeshDeformationIndex>::deinit((v12 + 18));
          }
        }

        else
        {
          if (v12[5])
          {
            re::AssetHandle::loadAsync((v12 + 4));
          }

          v31 = *(v14 + 40);
          if (v31)
          {
            v32 = *(v31 + 792);
          }

          else
          {
            v32 = 0;
          }

          v39 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v31 ^ (v31 >> 30))) >> 27));
          v38 = v32 ^ (v39 >> 31) ^ v39;
          if (v38 != v12[12])
          {
            v12[12] = v38;
            re::DynamicArray<re::FixedArray<re::StringID>>::deinit((v12 + 13));
            re::DynamicArray<re::MeshDeformationIndex>::deinit((v12 + 18));
            re::BlendShapeWeightsDefinitionAsset::init((v12 + 13), v16, &v43, 0);
            v38 = v12[12];
          }

          v28 = v12 + 13;
        }

        re::BlendShapeWeightsMapping::update<re::MeshAsset>((v12 + 30), v28, v16, v19, v38, (v12 + 7));
        v40 = re::ecs2::EntityComponentCollection::getOrAdd((v13 + 6), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        re::ecs2::BlendShapeWeightsBufferComponent::rebuildWeights(v40, v28, (v12 + 30), v16, v19, (v12 + 7));
        re::ecs2::Component::markDirty(v40);
        v41 = v13[27];
        if (v41)
        {
          re::ecs2::NetworkComponent::markDirty(v41, v40);
        }

        v23 = v45;
        v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v46);
        v25 = a3[2];
        v26 = a3[6];
      }

      else
      {
        v21 = *(v14 + 40);
        if (!v21 || (v22 = atomic_load((v21 + 896)), v22 != 3))
        {
          re::AssetHandle::loadAsync((v14 + 32));
          goto LABEL_34;
        }

        v23 = v45;
        v24 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v46);
        v25 = a3[2];
        v26 = a3[4];
      }

      re::ecs2::ComponentBucketsBase::moveComponent(v25, v23, v24, v26);
LABEL_34:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v46);
    }

    while (v46 != a5 || v47 != 0xFFFF || HIWORD(v47) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>(re::BlendShapeWeightsDefinitionAsset *a1)
{
  if (!*(a1 + 1))
  {
    return 0;
  }

  v2 = re::BlendShapeWeightsDefinitionAsset::assetType(a1);

  return re::AssetHandle::assetWithType(a1, v2, 1);
}

uint64_t re::ecs2::BlendShapeWeightsSystem::removedBlendShapeWeightsBufferHandler(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  do
  {
    v5 = v4;
    v4 = *(v4 + 32);
  }

  while (v4);
  v17 = *(v5 + 24);
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 392), &v17);
  if (v6 != -1)
  {
    v7 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1 + 336, *(*(a1 + 400) + 16 * v6 + 8));
    v8 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    if (v8)
    {
      v9 = v8;
      v10 = 24;
      v11 = 0xFFFFFFFFLL;
      do
      {
        v12 = re::ecs2::ComponentBucketsBase::componentHandle(*(v7 + 16), *(v7 + v10), v9);
        if (v12 != -1 && (v13 & 0xFFFFFF00000000) != 0)
        {
          v15 = v12;
          v11 = v13;
          goto LABEL_13;
        }

        v10 += 8;
      }

      while (v10 != 56);
      v15 = -1;
LABEL_13:
      re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(v7, v15, v11);
    }
  }

  return 0;
}

uint64_t re::ecs2::BlendShapeWeightsSystem::update(void *a1, uint64_t a2, uint64_t a3)
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
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
      v14 = v13[896].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[896].i64[0] = v14;
      v15 = v13[896].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[896].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[897] = vaddq_s64(v13[897], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v43, 3033, a1);
  re::StackScratchAllocator::StackScratchAllocator(v57);
  v53 = 1;
  v54 = 0;
  v55 = 0;
  v51 = v57;
  v52 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v51, 0);
  v53 += 2;
  v17 = a1[68];
  if ((v17 & 0x3F) != 0)
  {
    v18 = (v17 >> 6) + 1;
  }

  else
  {
    v18 = v17 >> 6;
  }

  v56 = a1[68];
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
      v23 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 49, v46);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v51, *(a1[50] + 16 * v23 + 8));
      v21 -= 8;
    }

    while (v21);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v51, (a1 + 63));
  v47 = 1;
  v48 = 0;
  v49 = 0;
  v46[0] = v57;
  v46[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v46, 0);
  v47 += 2;
  v24 = a1[68];
  if ((v24 & 0x3F) != 0)
  {
    v25 = (v24 >> 6) + 1;
  }

  else
  {
    v25 = v24 >> 6;
  }

  v50 = a1[68];
  v58 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v46, v25, &v58);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 63), &v51);
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
        v33 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 42), FirstBitSet);
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
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 63), v46);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 42));
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

_anonymous_namespace_ *re::ecs2::BlendShapeWeightsSystem::willAddSystemToECSService(re::ecs2::BlendShapeWeightsSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 34) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  v4 = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(v5);
  *(this + 37) = v4;
  *(this + 38) = result;
  return result;
}

void *re::ecs2::BlendShapeWeightsSystem::willRemoveSystemFromECSService(void *this)
{
  this[34] = 0;
  this[37] = 0;
  this[38] = 0;
  return this;
}

uint64_t (***re::ecs2::BlendShapeWeightsSystem::willAddSceneToECSService(re::ecs2::BlendShapeWeightsSystem *this, re::EventBus **a2))(void)
{
  v70[11] = *MEMORY[0x1E69E9840];
  v49 = a2;
  v58[0] = a2;
  v4 = *(this + 58);
  v5 = *(this + 118);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 480);
    }

    else
    {
      v6 = *(this + 61);
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
    v7 = (this + 480);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 61);
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
    *&v50 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 456, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v50);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::init(v12, this + 336, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, v58, &v50);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 456, v50);
    v13 = v50;
    goto LABEL_49;
  }

LABEL_17:
  v57 = 0u;
  v50 = 0u;
  *&v51 = 0;
  v52 = 0u;
  v53 = 0u;
  *(&v51 + 1) = -1;
  v54 = 0;
  v55 = 1;
  v56 = 0uLL;
  v14 = *(this + 47);
  *&v57 = 0;
  v15 = *(this + 43);
  DWORD2(v57) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::setBucketsCapacity(this + 42, (v14 + 4) >> 2);
    v15 = *(this + 43);
  }

  if (v15 <= v14 >> 2)
  {
    v58[1] = 0;
    memset(v70, 0, 80);
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v62 = 136315906;
    v63 = "operator[]";
    v64 = 1024;
    v65 = 858;
    v66 = 2048;
    v67 = v14 >> 2;
    v68 = 2048;
    v69 = v15;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
    goto LABEL_58;
  }

  if (*(this + 352))
  {
    v16 = this + 360;
  }

  else
  {
    v16 = *(this + 46);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 47);
  ++*(this + 96);
  v18 = v17 + 112 * (v14 & 3);
  v19 = v50;
  v20 = v51;
  v21 = v52;
  *(v18 + 48) = v53;
  *(v18 + 16) = v20;
  *(v18 + 32) = v21;
  *v18 = v19;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v18 + 56, &v53 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v50);
  v23 = *(this + 47);
  if (!v23)
  {
LABEL_58:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::init(v24, this + 336, v58[0]);
  v70[0] = *(this + 47) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 49, v58, v70);
  v25 = *(this + 47);
  v26 = *(this + 62);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 62) = v25;
  *&v50 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 456), v27, &v50);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 62) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 472))
    {
      v30 = this + 480;
    }

    else
    {
      v30 = *(this + 61);
    }

    *&v30[8 * *(this + 58) - 8] &= v28;
  }

  v31 = *(this + 47);
  v32 = *(this + 68);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 68) = v31;
  *&v50 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 504), v33, &v50);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 68) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 520))
    {
      v36 = this + 528;
    }

    else
    {
      v36 = *(this + 67);
    }

    *&v36[8 * *(this + 64) - 8] &= v34;
  }

  v13 = v70[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 504, v13);
  if (*(this + 568) == 1)
  {
    v38 = *(this + 69);
    v39 = *(v58[0] + 376);
    LOWORD(v50) = 257;
    DWORD1(v50) = 1023969417;
    BYTE8(v50) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v50);
    result = re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 336);
  }

  v40 = a2[36];
  if (v40)
  {
    *&v53 = 0;
    v50 = 0u;
    v51 = 1uLL;
    v52 = 0uLL;
    v41 = re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 224, &v49, &v50);
    re::BucketArray<RESubscriptionHandle,4ul>::deinit(&v50);
    v42 = v50;
    if (v50)
    {
      if ((v51 & 1) == 0)
      {
        v42 = (*(*v50 + 40))();
      }
    }

    v60 = re::globalAllocators(v43)[2];
    v44 = (*(*v60 + 32))(v60, 32, 0);
    *v44 = &unk_1F5CF2F30;
    v44[1] = this;
    v44[2] = re::ecs2::BlendShapeWeightsSystem::removedBlendShapeWeightsBufferHandler;
    v44[3] = 0;
    v61 = v44;
    v45 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillRemoveEvent>(v40, v59, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v47 = v46;
    v48 = re::BucketArray<RESubscriptionHandle,4ul>::addUninitialized(v41);
    *v48 = v45;
    v48[1] = v47;
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::destroyCallable(v59);
  }

  return result;
}

uint64_t re::ecs2::BlendShapeWeightsSystem::willRemoveSceneFromECSService(re::ecs2::BlendShapeWeightsSystem *this, re::ecs2::Scene *a2)
{
  v21 = a2;
  v3 = re::HashTable<re::ecs2::Scene const*,re::BucketArray<RESubscriptionHandle,8ul>,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::tryGet(this + 224, &v21);
  if (v3)
  {
    v4 = *(v21 + 36);
    if (v4)
    {
      v5 = v3;
      v6 = *(v3 + 40);
      if (v6)
      {
        for (i = 0; i != v6; ++i)
        {
          v8 = re::BucketArray<RESubscriptionHandle,4ul>::operator[](v5, i);
          re::EventBus::unsubscribe(v4, *v8, *(v8 + 8));
        }
      }
    }

    re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(this + 224, &v21);
  }

  v22 = v21;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 49, &v22);
  if (result != -1)
  {
    v10 = *(this + 50) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 456, *(v10 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 504, *(v10 + 8));
    v11 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 336, *(v10 + 8));
    if (*v11)
    {
      v12 = v11;
      *v11 = 0;
      v13 = v11 + 1;
      v14 = *(v11[1] + 288);
      if (v14)
      {
        v15 = v11[12];
        if (v15)
        {
          for (j = 0; j != v15; ++j)
          {
            v17 = re::BucketArray<RESubscriptionHandle,8ul>::operator[]((v12 + 7), j);
            re::EventBus::unsubscribe(v14, *v17, *(v17 + 8));
          }
        }
      }

      re::BucketArray<RESubscriptionHandle,8ul>::deinit((v12 + 7));
      v18 = 0;
      v19 = v12 + 3;
      do
      {
        v20 = v12[2];
        if (*v20)
        {
          re::ecs2::ComponentBucketsBase::removeBucket(v20, v19[v18]);
        }

        v19[v18++] = -1;
      }

      while (v18 != 4);
      *v13 = 0;
      v13[1] = 0;
    }

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 392, &v22);
  }

  return result;
}

void re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<float>>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AAF00, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAF00))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(&qword_1EE1AAF38);
    qword_1EE1AAF38 = &unk_1F5CF30E8;
    __cxa_guard_release(&qword_1EE1AAF00);
  }

  if ((_MergedGlobals_293 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicArray<float>>::get(1, a2);
    if ((_MergedGlobals_293 & 1) == 0)
    {
      v3 = v2;
      _MergedGlobals_293 = 1;
      v4 = *(v2 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AAF38, 0);
      qword_1EE1AAF48 = 0x2800000003;
      dword_1EE1AAF50 = v4;
      word_1EE1AAF54 = 0;
      *&xmmword_1EE1AAF58 = 0;
      *(&xmmword_1EE1AAF58 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AAF68 = v3;
      unk_1EE1AAF70 = 0;
      qword_1EE1AAF38 = &unk_1F5CF30E8;
      re::IntrospectionRegistry::add(v5, v6);
      re::getPrettyTypeName(&qword_1EE1AAF38, &v14);
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
        re::TypeBuilder::setConstructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v14, 1);
        re::TypeBuilder::setListAccessors(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v14, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v14, v9);
        re::StackScratchAllocator::~StackScratchAllocator(v17);
      }

      xmmword_1EE1AAF58 = v10;
      if (v12)
      {
        if (v12)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeights>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AAF08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAF08))
  {
    re::IntrospectionDynamicArrayBase::IntrospectionDynamicArrayBase(qword_1EE1AAF78);
    qword_1EE1AAF78[0] = &unk_1F5CF3180;
    __cxa_guard_release(&qword_1EE1AAF08);
  }

  if ((byte_1EE1AAEE1 & 1) == 0)
  {
    v0 = re::introspect_BlendShapeWeights(1);
    if ((byte_1EE1AAEE1 & 1) == 0)
    {
      v1 = v0;
      byte_1EE1AAEE1 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(qword_1EE1AAF78, 0);
      unk_1EE1AAF88 = 0x2800000003;
      unk_1EE1AAF90 = v2;
      unk_1EE1AAF94 = 0;
      *&xmmword_1EE1AAF98 = 0;
      *(&xmmword_1EE1AAF98 + 1) = 0xFFFFFFFFLL;
      unk_1EE1AAFA8 = v1;
      unk_1EE1AAFB0 = 0;
      qword_1EE1AAF78[0] = &unk_1F5CF3180;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(qword_1EE1AAF78, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AAF98 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

uint64_t re::ecs2::BlendShapeWeightsComponentVersionUtilities::downgradeBlendShapeWeightsComponentFromFall2023@<X0>(uint64_t this@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(this + 72);
  if (v5)
  {
    v6 = this;
    v7 = *(this + 88);
    v8 = v7 + 32 * v5;
    do
    {
      v17 = 0;
      v16 = 0;
      memset(v15, 0, sizeof(v15));
      v9 = *(v7 + 8);
      if (v9)
      {
        v10 = *(v7 + 16);
        v11 = 4 * v9;
        do
        {
          v12 = *v10++;
          v14 = v12;
          re::DynamicArray<float>::add(v15, &v14);
          v11 -= 4;
        }

        while (v11);
      }

      v13 = *(v6 + 344);
      if (v13 >= *(v6 + 336))
      {
        re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity((v6 + 328), v13 + 1);
        v13 = *(v6 + 344);
      }

      re::DynamicArray<float>::DynamicArray(*(v6 + 360) + 40 * v13, v15);
      ++*(v6 + 344);
      ++*(v6 + 352);
      this = v15[0];
      if (v15[0] && v17)
      {
        this = (*(*v15[0] + 40))();
      }

      v7 += 32;
    }

    while (v7 != v8);
  }

  *a2 = 1;
  return this;
}

void *re::ecs2::allocInfo_BlendShapeWeightsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AAEF0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAEF0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AAFB8, "BlendShapeWeightsComponent");
    __cxa_guard_release(&qword_1EE1AAEF0);
  }

  return &unk_1EE1AAFB8;
}

void re::ecs2::initInfo_BlendShapeWeightsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v21[0] = 0x881015E46FDA48A4;
  v21[1] = "BlendShapeWeightsComponent";
  if (v21[0])
  {
    if (v21[0])
    {
    }
  }

  *(this + 2) = v22;
  if ((atomic_load_explicit(&qword_1EE1AAEE8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AAEE8);
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
      qword_1EE1AAF10 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::DynamicArray<float>>>::get(v9, v10);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "blendShapeWeights";
      *(v11 + 16) = &qword_1EE1AAF38;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x14800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AAF18 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_AssetHandle(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "blendShapeWeightsDefinition";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AAF20 = v15;
      v16 = re::introspectionAllocator(v15);
      re::IntrospectionInfo<re::DynamicArray<re::BlendShapeWeights>>::get();
      v17 = (*(*v16 + 32))(v16, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "blendWeights";
      *(v17 + 16) = qword_1EE1AAF78;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x3800000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1AAF28 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = (*(*v18 + 32))(v18, 64, 8);
      *v19 = 6;
      *(v19 + 8) = 1;
      *(v19 + 16) = 0;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0;
      *(v19 + 40) = 1;
      *(v19 + 48) = re::ecs2::BlendShapeWeightsComponentVersionUtilities::downgradeBlendShapeWeightsComponentFromFall2023;
      *(v19 + 56) = 2;
      qword_1EE1AAF30 = v19;
      __cxa_guard_release(&qword_1EE1AAEE8);
    }
  }

  *(this + 2) = 0x17000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AAF10;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226BlendShapeWeightsComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v20 = v22;
}

void *re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsComponent>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a3 + 41));
  re::FixedArray<CoreIKTransform>::deinit(a3 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 35);
  re::FixedArray<CoreIKTransform>::deinit(a3 + 32);
  re::DynamicArray<re::StringID>::deinit((a3 + 23));
  re::DynamicArray<re::MeshDeformationIndex>::deinit((a3 + 18));
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit((a3 + 13));
  re::DynamicArray<re::BlendShapeWeights>::deinit((a3 + 7));
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsComponent>(uint64_t *a1)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit((a1 + 41));
  re::FixedArray<CoreIKTransform>::deinit(a1 + 38);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 35);
  re::FixedArray<CoreIKTransform>::deinit(a1 + 32);
  re::DynamicArray<re::StringID>::deinit((a1 + 23));
  re::DynamicArray<re::MeshDeformationIndex>::deinit((a1 + 18));
  re::DynamicArray<re::FixedArray<re::StringID>>::deinit((a1 + 13));
  re::DynamicArray<re::BlendShapeWeights>::deinit((a1 + 7));
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_BlendShapeWeightsSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AAEF8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AAEF8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB048, "BlendShapeWeightsSystem");
    __cxa_guard_release(&qword_1EE1AAEF8);
  }

  return &unk_1EE1AB048;
}

void re::ecs2::initInfo_BlendShapeWeightsSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xAD07549E6AE565F4;
  v6[1] = "BlendShapeWeightsSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x24000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_BlendShapeWeightsSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::BlendShapeWeightsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::BlendShapeWeightsSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::BlendShapeWeightsSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 42);
  a3[35] = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit((a3 + 28));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::BlendShapeWeightsSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 42);
  a1[35] = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit((a1 + 28));

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::ComponentType<re::ecs2::BlendShapeWeightsComponent>::makeBindNode@<X0>(_anonymous_namespace_ *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *v5 = &unk_1F5CF3218;
  result = re::BindPoint::BindPoint((v5 + 1), a2);
  v5[7] = 0;
  *(a3 + 16) = v5;
  return result;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::BlendShapeWeightsComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

void re::ecs2::BlendShapeWeightsSystem::~BlendShapeWeightsSystem(re::ecs2::BlendShapeWeightsSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 35) = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 224);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 42);
  *(this + 35) = &unk_1F5CF2E38;
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::HashTable<re::ecs2::Scene *,re::BucketArray<RESubscriptionHandle,4ul>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::deinit(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::BlendShapeWeightsSystem,REEventHandlerResult (re::ecs2::BlendShapeWeightsSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BlendShapeWeightsSystem,REEventHandlerResult (re::ecs2::BlendShapeWeightsSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF2F30;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BlendShapeWeightsSystem,REEventHandlerResult (re::ecs2::BlendShapeWeightsSystem::*)(re::ecs2::Entity *,REComponentWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF2F30;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF2F88;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF2FE0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF3038;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF3090;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF2F88;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF2FE0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF3038;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF3090;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::BlendShapeWeightsComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF2F88;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF2F88;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF2FE0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF2FE0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3038;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3038;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3090;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3090;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::setBucketsCapacity(void *result, unint64_t a2)
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

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsComponent>,4ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::DynamicArray<re::BlendShapeWeights>::growCapacity(void *this, unint64_t a2)
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

      return re::DynamicArray<re::BlendShapeWeights>::setCapacity(this, a2);
    }

    else
    {
      this = re::DynamicArray<re::BlendShapeWeights>::setCapacity(v4, v3);
      ++*(v4 + 6);
    }
  }

  return this;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::DynamicArray<float>>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::DynamicArray<float>>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<float>>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::DynamicArray<float>>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::DynamicArray<float>>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::DynamicArray<float>>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::DynamicArray<unsigned int>>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = *(this + 4) + 40 * v8;
  *(v9 + 32) = 0;
  *(v9 + 8) = 0;
  *(v9 + 16) = 0;
  *v9 = 0;
  *(v9 + 24) = 1;
  v10 = *(this + 2);
  *(this + 2) = v10 + 1;
  ++*(this + 6);
  v11 = (*(this + 4) + 40 * v10);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v11);
  return v11;
}

uint64_t re::IntrospectionDynamicArray<re::DynamicArray<float>>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 40 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 40 * v8;
      do
      {
        re::DynamicArray<unsigned long>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::DynamicArray<unsigned char>>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::DynamicArray<unsigned int>>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  v11 = re::DynamicArray<re::DynamicArray<float>>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 40 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 40 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 40 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::DynamicArray<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeights>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeights>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::BlendShapeWeights>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::BlendShapeWeights>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::BlendShapeWeights>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::BlendShapeWeights>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::BlendShapeWeights>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::BlendShapeWeights>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::BlendShapeWeights>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::BlendShapeWeights>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v14 = 0u;
  v15 = 0u;
  v8 = *(this + 2);
  if (v8 >= *(this + 1))
  {
    re::DynamicArray<re::BlendShapeWeights>::growCapacity(this, v8 + 1);
    v8 = *(this + 2);
  }

  v9 = re::FixedArray<float>::FixedArray((*(this + 4) + 32 * v8), &v14);
  v10 = *(&v15 + 1);
  v9[3] = *(&v15 + 1);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  ++*(this + 2);
  ++*(this + 6);
  re::BlendShapeWeights::~BlendShapeWeights(&v14);
  v12 = (*(this + 4) + 32 * *(this + 2) - 32);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v12);
  return v12;
}

uint64_t re::IntrospectionDynamicArray<re::BlendShapeWeights>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 32 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::BlendShapeWeights>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 32 * v8;
      do
      {
        re::BlendShapeWeights::~BlendShapeWeights(v9);
        v9 = (v11 + 32);
        v10 -= 32;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::BlendShapeWeights>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::BlendShapeWeights>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::BlendShapeWeights>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v17);
    re::TypeInfo::TypeInfo(v16, &v18);
    v13 = *(a1 + 16);
    if (v13)
    {
      v14 = *(a1 + 32);
      v15 = 32 * v13;
      do
      {
        re::TypeInfo::destruct(v16, v14, a3, 0);
        re::TypeInfo::construct(v16, v14, a3, 0);
        v14 += 32;
        v15 -= 32;
      }

      while (v15);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 32 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 32 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::BlendShapeWeights>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

double re::make::shared::unsafelyInplace<re::ecs2::BlendShapeWeightsComponent>(ArcSharedObject *a1)
{
  *(a1 + 21) = 0u;
  *(a1 + 22) = 0u;
  *(a1 + 19) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 17) = 0u;
  *(a1 + 18) = 0u;
  *(a1 + 15) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 13) = 0u;
  *(a1 + 14) = 0u;
  *(a1 + 11) = 0u;
  *(a1 + 12) = 0u;
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
  *(a1 + 9) = 0u;
  v1 = (a1 + 144);
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD04C0;
  result = 0.0;
  *(v2 + 136) = 0u;
  *(v2 + 152) = 0u;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0;
  *(v2 + 88) = 0u;
  *(v2 + 116) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 216) = 0;
  *(v2 + 224) = v2 + 104;
  *(v2 + 232) = v1;
  *(v2 + 240) = 0;
  *(v2 + 248) = -1;
  *(v2 + 360) = 0;
  *(v2 + 352) = 0;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226BlendShapeWeightsComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::BlendShapeWeightsSystem *re::ecs2::BlendShapeWeightsSystem::BlendShapeWeightsSystem(re::ecs2::BlendShapeWeightsSystem *this)
{
  v10[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF2EA0;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0;
  *(v2 + 260) = 0x7FFFFFFFLL;
  v3 = v2 + 280;
  *(v2 + 272) = 0;
  *(v2 + 280) = &unk_1F5CF2E38;
  *(v2 + 288) = v2;
  *(v2 + 296) = 0u;
  *(v2 + 312) = 0u;
  *(v2 + 328) = 0;
  v10[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v10[1] = re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v9[0] = v10;
  v9[1] = 2;
  v4 = re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 312), v9);
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

void re::ecs2::BlendShapeWeightsComponentBindNodeImpl::~BlendShapeWeightsComponentBindNodeImpl(re::ecs2::BlendShapeWeightsComponentBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<re::ecs2::BlendShapeWeightsComponentBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v3 = *(a1 + 8);
  *a2 = &unk_1F5CF3218;
  a2[1] = v3;
  result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
  a2[7] = 0;
  return result;
}

uint64_t re::internal::BindNodeImpl<re::ecs2::BlendShapeWeightsComponentBindNodeImpl>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF3218;
  result = re::BindPoint::BindPoint((a2 + 1), (a1 + 8));
  a2[7] = 0;
  return result;
}

BOOL re::internal::BindNodeImpl<re::ecs2::BlendShapeWeightsComponentBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "@")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

double re::ecs2::BlendShapeWeightsComponentBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t re::ecs2::BlendShapeWeightsComponentBindNodeImpl::relativeNodeForKey@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(a2 + 8);
  if (!v4 || (v5 = result, result = strncmp(*a2, "blendWeights", v4), result) || aBlendweights[v4])
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
  }

  else
  {
    *a3 = 0u;
    *(a3 + 16) = 0u;
    v7 = *(v5 + 8);
    *v6 = &unk_1F5CF32B0;
    v6[1] = v7;
    result = re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((v6 + 2), (v5 + 16));
    *(a3 + 16) = v6;
  }

  return result;
}

double re::ecs2::BlendShapeWeightsComponentBindNodeImpl::bindPointForKey@<D0>(re *a1@<X0>, uint64_t *a2@<X2>, uint64_t a3@<X8>)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = *re::foundationBindingLogObjects(a1);
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    v7 = *a2;
    v8 = 136315138;
    v9 = v7;
    _os_log_error_impl(&dword_1E1C61000, v5, OS_LOG_TYPE_ERROR, "Failed to bind to blend shape index: %s", &v8, 0xCu);
  }

  *(a3 + 40) = 0;
  result = 0.0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
  return result;
}

void re::ecs2::BlendWeightsIndexBindNodeImpl::~BlendWeightsIndexBindNodeImpl(re::ecs2::BlendWeightsIndexBindNodeImpl *this)
{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
}

{
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);
  re::DynamicArray<re::BindPoint::BindPointData>::deinit(this + 16);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::BindNodeImpl<re::ecs2::BlendWeightsIndexBindNodeImpl>::copyInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF32B0;
  a2[1] = v2;
  return re::DynamicArray<re::BindPoint::BindPointData>::DynamicArray((a2 + 2), (a1 + 16));
}

BOOL re::internal::BindNodeImpl<re::ecs2::BlendWeightsIndexBindNodeImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "8")
  {
    return 0;
  }

  return re::BindPoint::operator==((a1 + 8), (a2 + 8));
}

double re::ecs2::BlendWeightsIndexBindNodeImpl::nodeForURI@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double re::ecs2::BlendWeightsIndexBindNodeImpl::relativeNodeForKey@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

void re::ecs2::BlendWeightsIndexBindNodeImpl::bindPointForKey(uint64_t a1@<X0>, const char **a2@<X2>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  v4 = a2[1];
  if (!v4)
  {
    goto LABEL_11;
  }

  v6 = *a2;
  if (**a2 - 48 > 9)
  {
    v10 = 1;
  }

  else
  {
    v7 = 1;
    do
    {
      v8 = v7;
      if (v4 == v7)
      {
        break;
      }

      v9 = v6[v7++] - 48;
    }

    while (v9 < 0xA);
    v10 = v8 < v4;
  }

  v11 = re::BindPoint::baseValueUntyped((a1 + 8));
  if (!v11)
  {
LABEL_11:
    *(a3 + 40) = 0;
    *a3 = 0u;
    *(a3 + 16) = 0u;
    *(a3 + 32) = 0;
    return;
  }

  v12 = v11;
  *(&v22 + 1) = 0;
  v23 = &str_67;
  LOBYTE(v22) = v10;
  v20 = 0;
  v21 = &str_67;
  if (v10)
  {
    re::StringID::operator=(&v22 + 1, &v20);
    goto LABEL_14;
  }

  LODWORD(v24[0]) = 0;
  inited = sscanf(v21, "%u", v24);
  if (inited == 1)
  {
    DWORD1(v22) = v24[0];
LABEL_14:
    {
      re::introspect<re::BlendShapeWeights>(BOOL)::info = re::introspect_BlendShapeWeights(0);
    }

    *a3 = re::introspect<re::BlendShapeWeights>(BOOL)::info;
    *(a3 + 40) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    *(a3 + 32) = 0;
    *(a3 + 8) = 0;
    re::BindPoint::addToBindPointStack(a3, (a1 + 8));
    memset(v24, 0, sizeof(v24));
    re::DynamicArray<re::BindPoint::BindPointData>::add((a3 + 8), v24);
    v15 = re::BindPoint::BindPointData::deinit(v24);
    v16 = *(a3 + 40) + 32 * *(a3 + 24);
    *(v16 - 32) = 0;
    v19 = v22;
    v18 = v23;
    *(&v22 + 1) = 0;
    v23 = &str_67;
    *v17 = &unk_1F5CF3348;
    inited = objc_initWeak((v17 + 8), v12 + 8);
    *(v17 + 16) = v19;
    *(v17 + 32) = v18;
    *(v16 - 16) = v17;
    goto LABEL_17;
  }

  *(a3 + 40) = 0;
  *a3 = 0u;
  *(a3 + 16) = 0u;
  *(a3 + 32) = 0;
LABEL_17:
  if (v20)
  {
    if (v20)
    {
    }
  }

  if (BYTE8(v22))
  {
    if (BYTE8(v22))
    {
    }
  }
}

void re::ecs2::BlendWeightsIndexBindPointImpl::~BlendWeightsIndexBindPointImpl(id *this)
{
  re::StringID::destroyString((this + 3));
  objc_destroyWeak(this + 1);
  this[1] = 0;
}

{
  re::StringID::destroyString((this + 3));
  objc_destroyWeak(this + 1);
  this[1] = 0;

  JUMPOUT(0x1E6906520);
}

re::StringID *re::internal::BindPointImpl<re::ecs2::BlendWeightsIndexBindPointImpl>::copyInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3348;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);

  return re::StringID::StringID((a2 + 24), (a1 + 24));
}

re::StringID *re::internal::BindPointImpl<re::ecs2::BlendWeightsIndexBindPointImpl>::moveInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3348;
  *(a2 + 8) = 0;
  objc_copyWeak((a2 + 8), (a1 + 8));
  *(a2 + 16) = *(a1 + 16);

  return re::StringID::StringID((a2 + 24), (a1 + 24));
}

BOOL re::internal::BindPointImpl<re::ecs2::BlendWeightsIndexBindPointImpl>::equals(uint64_t a1, uint64_t a2)
{
  if ((*(*a2 + 16))(a2) != "(" || *(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16) || *(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  return re::StringID::operator==((a1 + 24), (a2 + 24));
}

uint64_t re::ecs2::BlendWeightsIndexBindPointImpl::hash(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v3 = WeakRetained - 8;
  }

  else
  {
    v3 = 0;
  }

  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v3 ^ (v3 >> 30))) >> 27));
  v5 = (*(a1 + 16) + ((v4 ^ (v4 >> 31)) << 6) + ((v4 ^ (v4 >> 31)) >> 2) - 0x61C8864680B583E9) ^ v4 ^ (v4 >> 31);
  v6 = (*(a1 + 20) + (v5 << 6) + (v5 >> 2) - 0x61C8864680B583E9) ^ v5;
  return ((*(a1 + 24) >> 1) + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6;
}

void re::ecs2::BlendWeightsIndexBindPointImpl::makeAlive(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v2 = WeakRetained;
    v3 = re::AssetHandle::loadedAsset<re::BlendShapeWeightsDefinitionAsset>((WeakRetained + 24));
    if (v3)
    {
      v4 = v3;
    }
  }
}

uint64_t re::ecs2::BlendWeightsIndexBindPointImpl::baseValueUntyped(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 8));
  if (WeakRetained)
  {
    v3 = (WeakRetained - 1);
  }

  else
  {
    v3 = 0;
  }

  if (WeakRetained)
  {
    v4 = WeakRetained;
    if (*(a1 + 16) == 1)
    {
      v8 = re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>((WeakRetained + 3));
      if (v8)
      {
        v9 = *(v8 + 96);
        if (v9)
        {
          v5 = 0;
          v10 = *(v8 + 112);
          while (!re::StringID::operator==(v10, (a1 + 24)))
          {
            ++v5;
            v10 += 2;
            if (v9 == v5)
            {
              goto LABEL_15;
            }
          }

          if (*(v3 + 9) <= v5)
          {
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v6 = v3 + 88;
          goto LABEL_18;
        }
      }
    }

    else if (!*(a1 + 16))
    {
      v5 = *(a1 + 20);
      if (WeakRetained[8] > v5)
      {
        v6 = WeakRetained + 10;
LABEL_18:
        v7 = *v6 + 32 * v5;
        goto LABEL_19;
      }
    }

LABEL_15:
    v7 = 0;
LABEL_19:

    return v7;
  }

  return 0;
}

uint64_t re::AssetHandle::blockUntilLoaded<re::BlendShapeWeightsDefinitionAsset>(re::BlendShapeWeightsDefinitionAsset *a1)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = re::BlendShapeWeightsDefinitionAsset::assetType(a1);
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

void *re::ecs2::allocInfo_MeshPartInstancesComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB0E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB0E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB150, "MeshPartInstancesComponent");
    __cxa_guard_release(&qword_1EE1AB0E0);
  }

  return &unk_1EE1AB150;
}

void re::ecs2::initInfo_MeshPartInstancesComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x91FD4F6D442EA7BELL;
  v10[1] = "MeshPartInstancesComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AB0F0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AB0F0);
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
      qword_1EE1AB0E8 = v8;
      __cxa_guard_release(&qword_1EE1AB0F0);
    }
  }

  *(this + 2) = 0xC000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AB0E8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshPartInstancesComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshPartInstancesComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshPartInstancesComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshPartInstancesComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226MeshPartInstancesComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

double re::internal::defaultConstruct<re::ecs2::MeshPartInstancesComponent>(int a1, int a2, ArcSharedObject *this)
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
  *v3 = &unk_1F5CF3570;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 92) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 108) = 0x7FFFFFFFLL;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MeshPartInstancesComponent>(ArcSharedObject *a1)
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
  *v1 = &unk_1F5CF3570;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0u;
  *(v1 + 56) = 0;
  *(v1 + 64) = 0u;
  *(v1 + 80) = 0u;
  *(v1 + 92) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 108) = 0x7FFFFFFFLL;
  *(v1 + 128) = 0u;
  *(v1 + 144) = 0u;
  *(v1 + 160) = 0u;
  *(v1 + 176) = 0u;
  return result;
}

void *re::ecs2::allocInfo_MeshPartInstancesSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AB100, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB100))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AB1E0, "MeshPartInstancesSystem");
    __cxa_guard_release(&qword_1EE1AB100);
  }

  return &unk_1EE1AB1E0;
}

void re::ecs2::initInfo_MeshPartInstancesSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xB162BE8EC620ED1ALL;
  v6[1] = "MeshPartInstancesSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x27800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshPartInstancesSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshPartInstancesSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshPartInstancesSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshPartInstancesSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshPartInstancesSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshPartInstancesSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshPartInstancesSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::MeshPartInstancesSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  a3[67] = &unk_1F5CF3420;
  v4 = a3[77];
  if (v4)
  {

    a3[77] = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a3 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshPartInstancesSystem>(uint64_t *a1)
{
  a1[67] = &unk_1F5CF3420;
  v2 = a1[77];
  if (v2)
  {

    a1[77] = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(a1 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);

  re::ecs2::System::~System(a1);
}

uint64_t re::ecs2::MeshPartInstancesComponent::getInstanceDataBuffers(uint64_t a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a2[3];
  v5 = *(a1 + 48);
  v6 = (*(*a2 + 32))(a2, 24, 8);
  v6[1] = v5;
  v6[2] = 0;
  *v6 = a2;
  if (v5)
  {
    if (v5 >> 61)
    {
      goto LABEL_19;
    }

    v8 = v6;
    v9 = 8 * v5;
    v10 = (*(*a2 + 32))(a2, 8 * v5, 8);
    v8[2] = v10;
    if (v10)
    {
      v12 = v10;
      if (v5 != 1)
      {
        bzero(v10, v9 - 8);
        v12 = (v12 + v9 - 8);
      }

      v13 = 0;
      *v12 = 0;
      while (1)
      {
        v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v13 ^ (v13 >> 30))) >> 27));
        re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(&v28, a1 + 72, v13, v14 ^ (v14 >> 31));
        if (HIDWORD(v28) == 0x7FFFFFFF)
        {
          v15 = v8[1];
          if (v15 <= v13)
          {
            v19 = 0;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v28 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v20 = 136315906;
            v21 = "operator[]";
            v22 = 1024;
            v23 = 468;
            v24 = 2048;
            v25 = v13;
            v26 = 2048;
            v27 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_18:
            v19 = 0;
            v31 = 0u;
            v32 = 0u;
            v29 = 0u;
            v30 = 0u;
            v28 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v20 = 136315906;
            v21 = "operator[]";
            v22 = 1024;
            v23 = 468;
            v24 = 2048;
            v25 = v13;
            v26 = 2048;
            v27 = v15;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_19:
            re::internal::assertLog(6, v7, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v5);
            _os_crash();
            __break(1u);
            break;
          }

          *(v8[2] + 8 * v13) = 0;
        }

        else
        {
          re::FramePersistentPooledGPUBuffer::read(*(a1 + 88) + (HIDWORD(v28) << 7) + 16, v4, &v18);
          v15 = v8[1];
          if (v15 <= v13)
          {
            goto LABEL_18;
          }

          v16 = v18;
          *(v8[2] + 8 * v13) = v18;
          if (v16)
          {
          }
        }

        if (v5 == ++v13)
        {
          return v8[2];
        }
      }
    }

    re::internal::assertLog(4, v11, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
  }

  return 0;
}

uint64_t re::ecs2::MeshPartInstancesComponent::getInstanceCounts(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 48);
  v5 = (*(*a2 + 32))(a2, 24, 8);
  v5[1] = 0;
  v5[2] = 0;
  *v5 = 0;
  re::FixedArray<int>::init<>(v5, a2, v4);
  if (v4)
  {
    v6 = 0;
    while (*(a1 + 48) > v6)
    {
      v7 = *(*(a1 + 64) + 8 * v6);
      if (v7)
      {
        v8 = DRBufferGetBytesUsed() >> 6;
      }

      else
      {
        v8 = 0;
      }

      if (v5[1] <= v6)
      {
        goto LABEL_11;
      }

      *(v5[2] + 4 * v6) = v8;

      if (v4 == ++v6)
      {
        return v5[2];
      }
    }

    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_11:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return v5[2];
}

void re::ecs2::MeshPartInstancesComponent::initComponentType(uint64_t a1)
{
  if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0)
  {
    v20 = __cxa_guard_acquire(&qword_1EE1AB110);
    if (v20)
    {
      v21 = qword_1EE1AB0F8;
      if (!qword_1EE1AB0F8)
      {
        v21 = re::ecs2::allocInfo_MeshPartInstancesComponent(v20);
        qword_1EE1AB0F8 = v21;
        re::ecs2::initInfo_MeshPartInstancesComponent(v21, v22);
      }

      qword_1EE1AB108 = v21;
      __cxa_guard_release(&qword_1EE1AB110);
    }
  }

  v2 = strlen(*(qword_1EE1AB108 + 48));
  v26[0] = re::ecs2::Component::dropComponentSuffix(*(qword_1EE1AB108 + 48), v2);
  v26[1] = v3;
  v4 = re::globalAllocators(v26[0]);
  v5 = (*(*v4[2] + 32))(v4[2], 80, 8);
  v6 = re::ecs2::ComponentTypeBase::ComponentTypeBase(v5, v26, 1, 2);
  *v6 = &unk_1F5CF35F8;
  *(v6 + 64) = 0;
  v7 = (v6 + 64);
  *(v6 + 48) = a1;
  *(v6 + 56) = 0;
  *(v6 + 72) = 0xFFFFFFFFLL;
  *(v5 + 56) = re::ecs2::ComponentTypeBase::makeAllocator((v6 + 24), 0xC0);
  if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0)
  {
    v23 = __cxa_guard_acquire(&qword_1EE1AB110);
    if (v23)
    {
      v24 = qword_1EE1AB0F8;
      if (!qword_1EE1AB0F8)
      {
        v24 = re::ecs2::allocInfo_MeshPartInstancesComponent(v23);
        qword_1EE1AB0F8 = v24;
        re::ecs2::initInfo_MeshPartInstancesComponent(v24, v25);
      }

      qword_1EE1AB108 = v24;
      __cxa_guard_release(&qword_1EE1AB110);
    }
  }

  v8 = qword_1EE1AB108;
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

  v27 = 2 * v10;
  v28 = v9;
  *v7 = v29;
  if (v27)
  {
    if (v27)
    {
    }
  }

  re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType = v5;
  v15 = re::ecs2::ComponentTypeRegistry::instance(v14);
  re::ecs2::ComponentTypeRegistry::add(v15, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 1);
  if ((atomic_load_explicit(&qword_1EE1AB118, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB118))
  {
    qword_1EE1AB148 = 0;
    *&qword_1EE1AB120 = 0u;
    *&qword_1EE1AB130 = 0u;
    __cxa_guard_release(&qword_1EE1AB118);
  }

  if ((_MergedGlobals_294 & 1) == 0)
  {
    _MergedGlobals_294 = 1;
    v16 = qword_1EE1AB120;
    qword_1EE1AB120 = &__block_literal_global_27;

    v17 = qword_1EE1AB130;
    qword_1EE1AB130 = &__block_literal_global_87;

    v18 = qword_1EE1AB128;
    qword_1EE1AB128 = &__block_literal_global_90;

    v19 = qword_1EE1AB138;
    qword_1EE1AB138 = &__block_literal_global_92;

    qword_1EE1AB140 = re::snapshot::Registry::list(void)::s_head;
    if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB110))
    {
      qword_1EE1AB108 = re::internal::getOrCreateInfo("MeshPartInstancesComponent", re::ecs2::allocInfo_MeshPartInstancesComponent, re::ecs2::initInfo_MeshPartInstancesComponent, &qword_1EE1AB0F8, 0);
      __cxa_guard_release(&qword_1EE1AB110);
    }

    qword_1EE1AB148 = qword_1EE1AB108;
    re::snapshot::Registry::list(void)::s_head = &qword_1EE1AB120;
  }

  *(re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 1) = re::ecs2::MeshPartInstancesComponent::clone;
}

re::ecs2::MeshPartInstancesComponent *re::ecs2::MeshPartInstancesComponent::clone(re::ecs2::MeshPartInstancesComponent *this, const re::ecs2::Component *a2)
{
  (*(*re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 32))(&v8);
  v3 = v8;
  if (v8 != this)
  {
    v4 = *(this + 4);
    if (*(v8 + 4))
    {
      v5 = (v8 + 32);
      if (v4)
      {
        re::DynamicArray<re::DirectBuffer>::copy(v5, this + 32);
        ++*(v3 + 14);
      }

      else
      {
        re::DynamicArray<re::DirectBuffer>::clear(v5);
      }
    }

    else if (v4)
    {
      v6 = *(this + 6);
      *(v8 + 4) = v4;
      re::DynamicArray<re::ObjCObject>::setCapacity(v3 + 4, v6);
      ++*(v3 + 14);
      re::DynamicArray<re::DirectBuffer>::copy(v3 + 4, this + 32);
    }
  }

  return v3;
}

BOOL re::ecs2::MeshPartInstancesComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v67 = *MEMORY[0x1E69E9840];
  v9 = *(*(a1 + 72) + 232);
  v52 = *(v9 + 112);
  v54 = *(v9 + 208);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(uu2, a5, 0);
  v55 = a4;
  v56 = *uu2;
  v57 = *&uu2[8];
  v53 = a5;
  if (*uu2 == a5 && *&uu2[8] == 0xFFFFFFFFLL)
  {
    goto LABEL_66;
  }

  do
  {
    v11 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v55);
    v12 = v11;
    v13 = *(v11 + 48);
    if (!v52)
    {
      if (!v13)
      {
LABEL_58:
        v43 = v55;
        v44 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v56);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v43, v44, *(a3 + 48));
        goto LABEL_59;
      }

LABEL_47:
      v37 = 0;
      while (1)
      {
        v17 = *(v12 + 48);
        if (v17 <= v37)
        {
          v58 = 0;
          v61 = 0u;
          memset(v60, 0, sizeof(v60));
          *uu2 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v64 = 136315906;
          *&v64[4] = "operator[]";
          *&v64[12] = 1024;
          *&v64[14] = 789;
          *&v64[18] = 2048;
          *&v64[20] = v37;
          v65 = 2048;
          v66 = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_68:
          v58 = 0;
          v61 = 0u;
          memset(v60, 0, sizeof(v60));
          *uu2 = 0u;
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          *v64 = 136315906;
          *&v64[4] = "operator[]";
          *&v64[12] = 1024;
          *&v64[14] = 789;
          *&v64[18] = 2048;
          *&v64[20] = v5;
          v65 = 2048;
          v66 = v17;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
LABEL_69:
          re::internal::assertLog(4, v26, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
          _os_crash();
          __break(1u);
          goto LABEL_70;
        }

        *v64 = *(*(v12 + 64) + 8 * v37);
        re::DirectBuffer::getResourceId(v64, uu2);
        v38 = (*&uu2[8] + (*uu2 << 6) + (*uu2 >> 2) - 0x61C8864680B583E9) ^ *uu2;
        v39 = *(a1 + 48);
        if (v39)
        {
          v40 = v38 % v39;
          v41 = *(*(a1 + 32) + 4 * (v38 % v39));
          if (v41 != 0x7FFFFFFF)
          {
            v42 = *(a1 + 40);
            while (uuid_compare((v42 + 32 * v41 + 12), uu2))
            {
              v42 = *(a1 + 40);
              v41 = *(v42 + 32 * v41 + 8) & 0x7FFFFFFF;
              if (v41 == 0x7FFFFFFF)
              {
                goto LABEL_56;
              }
            }

            goto LABEL_57;
          }
        }

        else
        {
          LODWORD(v40) = 0;
        }

LABEL_56:
        re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v40, v38, uu2, uu2);
        ++*(a1 + 64);
LABEL_57:

        if (++v37 == v13)
        {
          goto LABEL_58;
        }
      }
    }

    if (*(v11 + 100))
    {
      v14 = *(v11 + 96);
      if (v14)
      {
        memset_pattern16(*(v11 + 80), &unk_1E304C660, 4 * v14);
      }

      if (*(v12 + 104))
      {
        v15 = 0;
        do
        {
          re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(*(v12 + 88), v15++);
        }

        while (v15 < *(v12 + 104));
      }

      *(v12 + 100) = 0;
      *(v12 + 104) = 0;
      v16 = *(v12 + 112) + 1;
      *(v12 + 108) = 0x7FFFFFFF;
      *(v12 + 112) = v16;
    }

    if (!v13)
    {
      goto LABEL_58;
    }

    v5 = 0;
    while (1)
    {
      v17 = *(v12 + 48);
      if (v17 <= v5)
      {
        goto LABEL_68;
      }

      v18 = *(*(v12 + 64) + 8 * v5);
      if (v18)
      {
        break;
      }

LABEL_44:
      if (v13 == ++v5)
      {
        goto LABEL_47;
      }
    }

    v19 = v18;
    v20 = DRBufferCopyDescriptor();
    Capacity = DRBufferDescriptorGetCapacity();
    if (Capacity < 0x2625A040)
    {
      v22 = (4 * Capacity) & 0xFFFFFF00;
      v23 = v54;
      memset(uu2, 0, sizeof(uu2));
      memset(v60 + 8, 0, 32);
      LODWORD(v60[0]) = 1;
      DWORD2(v60[2]) = 1;
      v61 = 0uLL;
      v24 = v23;
      v62 = v24;
      v63 = v22;
      memset(v64, 0, 24);
      v25 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
      re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v64, v12 + 72, v5, v25 ^ (v25 >> 31));
      v27 = *&v64[12];
      if (*&v64[12] == 0x7FFFFFFF)
      {
        v28 = re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(v12 + 72, *&v64[8], *v64);
        *(v28 + 8) = v5;
        re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v28 + 16, uu2);
        re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::DynamicOverflowArray(v28 + 56, &v60[1] + 8);
        v29 = 0;
        v30 = v62;
        v62 = 0;
        *(v28 + 96) = v30;
        *(v28 + 104) = v63;
        ++*(v12 + 112);
      }

      else
      {
        ++*(v12 + 112);
        v31 = *(v12 + 88) + (v27 << 7) + 16;
        if (v31 != uu2)
        {
          if (*v31 && *uu2 && *v31 != *uu2)
          {
            goto LABEL_69;
          }

          if (v60[0])
          {
            if (*&uu2[8])
            {
              re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::move(v31, uu2);
            }

            else
            {
              re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v31);
              *v31 = *uu2;
              LODWORD(v60[0]) += 2;
              *(v31 + 16) += 2;
            }
          }

          else
          {
            *(*(v12 + 88) + (v27 << 7) + 24) = 0;
            *(v31 + 16) += 2;
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(v31, uu2);
          }

          v33 = *(v31 + 40);
          if (v33 && *(&v60[1] + 1) && v33 != *(&v60[1] + 1))
          {
LABEL_70:
            re::internal::assertLog(4, v32, "assertion failure: '%s' (%s:line %i) ", "!isInitialized() || !other.isInitialized() || m_allocator == other.m_allocator", "operator=", 527);
            _os_crash();
            __break(1u);
          }

          if (BYTE8(v60[2]))
          {
            if (*&v60[2])
            {
              re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::move(v31 + 40, &v60[1] + 8);
            }

            else
            {
              re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit((v31 + 40));
              *(v31 + 40) = *(&v60[1] + 1);
              DWORD2(v60[2]) += 2;
              *(v31 + 56) += 2;
            }
          }

          else
          {
            re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(v31 + 40);
            re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap((v31 + 40), &v60[1] + 1);
          }

          v34 = v62;
          v62 = 0;
          v35 = *(v31 + 80);
          *(v31 + 80) = v34;
        }

        *(v31 + 88) = v63;
        v29 = v62;
      }

      re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit(&v60[1] + 1);
      if (*uu2)
      {
        v36 = v60[0];
        if ((v60[0] & 1) == 0)
        {
          (*(**uu2 + 40))();
          v36 = v60[0];
        }

        memset(uu2, 0, sizeof(uu2));
        LODWORD(v60[0]) = (v36 | 1) + 2;
      }

      goto LABEL_44;
    }

    v45 = v55;
    v46 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v56);
    v47 = re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v45, v46, *(a3 + 32));
    v48 = *re::graphicsLogObjects(v47);
    if (os_log_type_enabled(v48, OS_LOG_TYPE_DEFAULT))
    {
      *uu2 = 67109120;
      *&uu2[4] = 10000000;
      _os_log_impl(&dword_1E1C61000, v48, OS_LOG_TYPE_DEFAULT, "Disabling MeshInstancesComponent. Attempted to render beyond the per component vertex limit of %u", uu2, 8u);
    }

LABEL_59:
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v56);
  }

  while (v56 != v53 || v57 != 0xFFFF || HIWORD(v57) != 0xFFFF);
LABEL_66:
  v49 = *(v53 + 40) != 0;

  return v49;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

BOOL re::ecs2::MeshPartInstancesComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5)
{
  v78 = *MEMORY[0x1E69E9840];
  v5 = *(*(a1 + 72) + 232);
  v6 = *(v5 + 112);
  if (!v6)
  {
    return 0;
  }

  v42 = *(v5 + 208);
  v10 = *(*(*(a1 + 72) + 232) + 144);
  v41 = re::RenderFrameBox::get((v6 + 328), 0xFFFFFFFFFFFFFFFuLL);
  v40 = (*(**(*(a1 + 72) + 256) + 24))(*(*(a1 + 72) + 256));
  v11 = *(v6 + 280);
  v59 = 0;
  v60 = v11;
  v58 = 0;
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v65, a5, 0);
  v55 = a4;
  v56 = v65[0];
  v57 = v65[1];
  if (v65[0] == a5 && LODWORD(v65[1]) == 0xFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    v39 = a5;
    do
    {
      v14 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v55);
      v15 = v14[1].i64[0];
      (*(*v40 + 8))(v65);
      v16 = v15;
      do
      {
        v17 = v16;
        v16 = *(v16 + 4);
      }

      while (v16);
      if (LOBYTE(v65[0]))
      {
        v18 = v65[1];
      }

      else
      {
        v18 = 0;
      }

      re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(*(v17 + 3), v18, v41, &v54);
      v65[0] = (v54 >> 1);
      v19 = **(re::RenderFrameData::stream((v41 + 33), v65) + 48);
      v20 = (*(v19 + 920))();
      if (v20)
      {
        if (*(v20 + 5))
        {
          v21 = *re::BucketArray<RESubscriptionHandle,4ul>::operator[](v20, 0);
        }

        else
        {
          v21 = 0uLL;
        }

        v43 = v21;
        re::TransformService::worldMatrixForRendering(*(*(a1 + 72) + 288), v15, 1, v52);
        v46 = v52[1];
        v47 = v52[0];
        v45 = v52[2];
        v22 = vsubq_f32(v53, v43);
        v22.i32[3] = v53.i32[3];
        v44 = v22;
        if (v14[3].i64[0])
        {
          v23 = 0;
          do
          {
            v24 = *(v14[4].i64[0] + 8 * v23);
            v51 = v24;
            if (v24)
            {
              if ((vminvq_u32(vandq_s8(vandq_s8(vceqq_f32(v14[9], v46), vceqq_f32(v14[8], v47)), vandq_s8(vceqq_f32(v14[10], v45), vceqq_f32(v14[11], v44)))) & 0x80000000) == 0 || (re::DirectBuffer::getResourceId(&v51, v65), re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::contains(a1 + 24, v65)))
              {
                v25 = v59;
                if (!v59)
                {
                  re::mtl::CommandQueue::makeCommandBuffer(&v60, v65);
                  v26 = v65[0];
                  v65[0] = 0;
                  v59 = v26;

                  re::mtl::CommandBuffer::makeComputeCommandEncoder(&v59, v65);
                  v27 = v65[0];
                  v65[0] = 0;

                  v65[0] = [v42 newFence];
                  NS::SharedPtr<MTL::Texture>::operator=(&v58, v65);
                  if (v65[0])
                  {
                  }

                  v28 = *(a1 + 80);
                  if (!v28)
                  {
                    v29 = *(*(a1 + 72) + 232);
                    v30 = *(v29 + 48);
                    v31 = *(v29 + 208);
                    re::ShaderManager::makeComputePipelineDescriptor(v30, &v61);
                    v65[1] = 0;
                    v66 = 0uLL;
                    re::DynamicString::setCapacity(v65, 0);
                    v67[0] = 0;
                    v68 = 0;
                    memset(v71, 0, sizeof(v71));
                    v72 = 0;
                    v73 = 0;
                    v74 = 0;
                    v75 = 0;
                    v76 = 0;
                    v77 = 0;
                    v63 = "dr::expandInstances";
                    v64.i64[0] = 19;
                    re::DynamicString::operator=(v65, &v63);
                    ComputePipelineState = re::getOrCreateComputePipelineState(*(*(a1 + 72) + 232), v65);
                    NS::SharedPtr<MTL::Buffer>::operator=((a1 + 80), ComputePipelineState);
                    if (v76)
                    {

                      v76 = 0;
                    }

                    re::DynamicArray<re::TechniqueFunctionConstant>::deinit(v71);
                    if (v68 == 1 && v69)
                    {
                      if (BYTE8(v69))
                      {
                        (*(*v69 + 40))();
                      }

                      v69 = 0u;
                      v70 = 0u;
                    }

                    if (v67[0] == 1 && *&v67[8])
                    {
                      if (v67[16])
                      {
                        (*(**&v67[8] + 40))();
                      }

                      memset(&v67[8], 0, 32);
                    }

                    if (v65[0] && (v65[1] & 1) != 0)
                    {
                      (*(*v65[0] + 40))();
                    }

                    if (v61)
                    {
                    }

                    v28 = *(a1 + 80);
                  }

                  [v27 setComputePipelineState:{v28, v39}];
                  v25 = v59;
                  v12 = v27;
                }

                v34 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v23 ^ (v23 >> 30))) >> 27));
                re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(v65, &v14[4].i64[1], v23, v34 ^ (v34 >> 31));
                re::FramePersistentPooledGPUBuffer::replace((v14[5].i64[1] + (HIDWORD(v65[1]) << 7) + 16), v10, &v50);
                v35 = v25;
                v48 = v35;
                re::DirectBuffer::readUsing(&v48, &v49);

                v36 = [v50 length] >> 8;
                *v65 = v47;
                v66 = v46;
                *v67 = v45;
                *&v67[16] = v44;
                *&v67[32] = v36;
                [v12 setBuffer:v49 offset:0 atIndex:0];
                [v12 setBuffer:v50 offset:0 atIndex:1];
                [v12 setBytes:v65 length:80 atIndex:2];
                v37 = [*(a1 + 80) maxTotalThreadsPerThreadgroup];
                v63 = (v36 + v37 - 1) / v37;
                v64 = vdupq_n_s64(1uLL);
                v61 = v37;
                v62 = v64;
                [v12 dispatchThreadgroups:&v63 threadsPerThreadgroup:&v61];
                if (v49)
                {
                }

                if (v50)
                {
                }

                v24 = v51;
              }
            }

            ++v23;
          }

          while (v23 < v14[3].i64[0]);
        }

        v14[8] = v47;
        v14[9] = v46;
        v14[10] = v45;
        v14[11] = v44;
        a5 = v39;
      }

      if (v54)
      {
        if (v54)
        {
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v56);
    }

    while (v56 != a5 || v57 != 0xFFFF || HIWORD(v57) != 0xFFFF);
    if (v59)
    {
      [v12 updateFence:v58];
      re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v41 + 517), &v58);
      [v12 endEncoding];
      [v59 commit];
    }
  }

  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(a1 + 24);
  v13 = a5[10] != 0;
  if (v58)
  {
  }

  return v13;
}

uint64_t re::ecs2::MeshPartInstancesComponentStateImpl::directResourceDidUpdateEvent(uint64_t a1, int a2, uint64_t a3)
{
  v5 = (*(a3 + 8) + (*a3 << 6) + (*a3 >> 2) - 0x61C8864680B583E9) ^ *a3;
  v6 = *(a1 + 48);
  if (!v6)
  {
    LODWORD(v7) = 0;
    goto LABEL_8;
  }

  v7 = v5 % v6;
  v8 = *(*(a1 + 32) + 4 * (v5 % v6));
  if (v8 == 0x7FFFFFFF)
  {
LABEL_8:
    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::addAsCopy(a1 + 24, v7, v5, a3, a3);
    ++*(a1 + 64);
    return 0;
  }

  v9 = *(a1 + 40);
  while (uuid_compare((v9 + 32 * v8 + 12), a3))
  {
    v9 = *(a1 + 40);
    v8 = *(v9 + 32 * v8 + 8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  return 0;
}

void re::ecs2::MeshPartInstancesSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v31[0] = a2;
  v31[1] = a3;
  v3 = a1[28];
  if (v3 && (*(v3 + 432) & 0x10) != 0)
  {
    re::StackScratchAllocator::StackScratchAllocator(v43);
    v39 = 1;
    v40 = 0;
    v41 = 0;
    v37 = v43;
    v38 = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v37, 0);
    v39 += 2;
    v6 = a1[63];
    if ((v6 & 0x3F) != 0)
    {
      v7 = (v6 >> 6) + 1;
    }

    else
    {
      v7 = v6 >> 6;
    }

    v42 = a1[63];
    v32[0] = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v37, v7, v32);
    v8 = *(a3 + 200);
    if (v8)
    {
      v9 = *(a3 + 216);
      v10 = 8 * v8;
      do
      {
        v11 = *v9++;
        v32[0] = v11;
        v12 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 44, v32);
        re::DynamicBitset<unsigned long long,64ul>::setBit(&v37, *(a1[45] + 16 * v12 + 8));
        v10 -= 8;
      }

      while (v10);
    }

    re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v37, (a1 + 58));
    v33 = 1;
    v34 = 0;
    v35 = 0;
    v32[0] = v43;
    v32[1] = 0;
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v32, 0);
    v33 += 2;
    v13 = a1[63];
    if ((v13 & 0x3F) != 0)
    {
      v14 = (v13 >> 6) + 1;
    }

    else
    {
      v14 = v13 >> 6;
    }

    v36 = a1[63];
    v44 = 0;
    re::DynamicOverflowArray<unsigned long long,2ul>::resize(v32, v14, &v44);
    re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 58), &v37);
    v15 = v41;
    if (v39)
    {
      v15 = &v40;
    }

    v16 = v38;
    if ((v38 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
          v22 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 37), FirstBitSet);
          v23 = *(*v22 + 224);
          v24 = v22[3];
          v25 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v24);
          if (*(v25 + 40))
          {
            v26 = (*(*v23 + 24))(v23, v31, v22, v24, v25, 0);
          }

          else
          {
            v26 = 0;
          }

          v27 = v22[5];
          v28 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v27);
          if (*(v28 + 40))
          {
            v26 |= (*(*v23 + 32))(v23, v31, v22, v27, v28, 0);
          }

          v29 = v22[6];
          v30 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v22[2] + 8, v29);
          if (*(v30 + 40))
          {
            if (((v26 | (*(*v23 + 40))(v23, v31, v22, v29, v30, 0)) & 1) == 0)
            {
              goto LABEL_30;
            }
          }

          else if (!v26)
          {
LABEL_30:
            re::DynamicBitset<unsigned long long,64ul>::clearBit(v32, FirstBitSet);
            goto LABEL_31;
          }

          re::DynamicBitset<unsigned long long,64ul>::setBit(v32, FirstBitSet);
LABEL_31:
          FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v37, FirstBitSet + 1);
        }

        while (FirstBitSet != -1);
      }
    }

LABEL_32:
    re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 58), v32);
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 37));
    if (v32[0] && (v33 & 1) == 0)
    {
      (*(*v32[0] + 40))(v32[0], v35);
    }

    if (v37)
    {
      if ((v39 & 1) == 0)
      {
        (*(*v37 + 40))(v37, v41);
      }
    }

    re::StackScratchAllocator::~StackScratchAllocator(v43);
  }
}

uint64_t (***re::ecs2::MeshPartInstancesSystem::willAddSystemToECSService(re::ecs2::MeshPartInstancesSystem *this))(void)
{
  v15 = *MEMORY[0x1E69E9840];
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  v3 = re::ServiceLocator::serviceOrNull<re::DirectResourceAssetTracker>(v2);
  *(this + 78) = v3;
  v4 = re::globalAllocators(v3)[2];
  v13 = v4;
  v5 = (*(*v4 + 32))(v4, 32, 0);
  *v5 = &unk_1F5CF3518;
  v5[1] = this + 536;
  v5[2] = re::ecs2::MeshPartInstancesComponentStateImpl::directResourceDidUpdateEvent;
  v5[3] = 0;
  v14 = v5;
  v6 = *(*(*(this + 76) + 224) + 1512);
  v10 = v4;
  v11 = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator=<24ul>(v9, v12);
  *(this + 68) = re::EventBus::subscribe<re::DirectResourceAssetTracker,re::DirectResourceDidUpdateEvent>(v6, v9, 0, 0);
  *(this + 69) = v7;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v9);
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::destroyCallable(v12);
}

double re::ecs2::MeshPartInstancesSystem::willRemoveSystemFromECSService(re::ecs2::MeshPartInstancesSystem *this)
{
  re::EventBus::unsubscribe(*(*(*(this + 76) + 224) + 1512), *(this + 68), *(this + 69));
  *(this + 78) = 0;
  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 36) = 0;
  return result;
}

unint64_t re::ecs2::MeshPartInstancesSystem::willAddSceneToECSService(re::ecs2::MeshPartInstancesSystem *this, re::ecs2::Scene *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(this + 53);
  v5 = *(this + 108);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (this + 440);
    }

    else
    {
      v6 = *(this + 56);
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
    v7 = (this + 440);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(this + 56);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(this + 416, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::init(v12, this + 296, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 44, v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 416, v40);
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
  v14 = *(this + 42);
  *&v47 = 0;
  v15 = *(this + 38);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,4ul>::setBucketsCapacity(this + 37, (v14 + 4) >> 2);
    v15 = *(this + 38);
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

  if (*(this + 312))
  {
    v16 = this + 320;
  }

  else
  {
    v16 = *(this + 41);
  }

  v17 = *&v16[8 * (v14 >> 2)];
  ++*(this + 42);
  ++*(this + 86);
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
  v23 = *(this + 42);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 296, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::init(v24, this + 296, v48[0]);
  *&v57[0] = *(this + 42) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew(this + 44, v48, v57);
  v25 = *(this + 42);
  v26 = *(this + 57);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(this + 57) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 416), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(this + 57) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(this + 432))
    {
      v30 = this + 440;
    }

    else
    {
      v30 = *(this + 56);
    }

    *&v30[8 * *(this + 53) - 8] &= v28;
  }

  v31 = *(this + 42);
  v32 = *(this + 63);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(this + 63) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((this + 464), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(this + 63) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(this + 480))
    {
      v36 = this + 488;
    }

    else
    {
      v36 = *(this + 62);
    }

    *&v36[8 * *(this + 59) - 8] &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(this + 464, v13);
  if (*(this + 528) == 1)
  {
    v38 = *(this + 64);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(this + 296);
  }

  return result;
}

uint64_t re::ecs2::MeshPartInstancesSystem::willRemoveSceneFromECSService(re::ecs2::MeshPartInstancesSystem *this, re::ecs2::Scene *a2)
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshPartInstancesComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshPartInstancesComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::MeshPartInstancesSystem::~MeshPartInstancesSystem(re::ecs2::MeshPartInstancesSystem *this)
{
  *(this + 67) = &unk_1F5CF3420;
  v2 = *(this + 77);
  if (v2)
  {

    *(this + 77) = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);

  re::ecs2::System::~System(this);
}

{
  *(this + 67) = &unk_1F5CF3420;
  v2 = *(this + 77);
  if (v2)
  {

    *(this + 77) = 0;
  }

  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit(void *a1)
{
  if (*a1)
  {
    v2 = a1[1];
    if (v2)
    {
      if (a1[2])
      {
        v3 = (a1 + 3);
      }

      else
      {
        v3 = a1[4];
      }

      v4 = 8 * v2;
      do
      {
        if (*v3)
        {

          *v3 = 0;
        }

        ++v3;
        v4 -= 8;
      }

      while (v4);
    }

    v5 = *(a1 + 4);
    if ((v5 & 1) == 0)
    {
      (*(**a1 + 40))(*a1, a1[4]);
      v5 = *(a1 + 4);
    }

    *a1 = 0;
    a1[1] = 0;
    *(a1 + 4) = (v5 | 1) + 2;
  }
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshPartInstancesComponentStateImpl,REEventHandlerResult (re::ecs2::MeshPartInstancesComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::MeshPartInstancesComponentStateImpl,REEventHandlerResult (re::ecs2::MeshPartInstancesComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3518;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::MeshPartInstancesComponentStateImpl,REEventHandlerResult (re::ecs2::MeshPartInstancesComponentStateImpl::*)(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&),REEventHandlerResult ()(re::DirectResourceAssetTracker *,re::DirectResourceDidUpdateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3518;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void re::DynamicArray<re::DirectBuffer>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }

    v5 = a2;
    do
    {
    }

    while (v5 < *(a1 + 16));
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::ObjCObject>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4)
    {
      bzero((*(a1 + 32) + 8 * v4), 8 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

void re::ecs2::MeshPartInstancesComponent::~MeshPartInstancesComponent(re::ecs2::MeshPartInstancesComponent *this)
{
  *this = &unk_1F5CF3570;
  v2 = this + 32;
  re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 9);
  re::DynamicArray<re::ObjCObject>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  *this = &unk_1F5CF3570;
  v2 = this + 32;
  re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(this + 9);
  re::DynamicArray<re::ObjCObject>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

double re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      do
      {
        re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(a1[2], v3++);
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

uint64_t re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::free(uint64_t result, unsigned int a2)
{
  v2 = result + (a2 << 7);
  if ((*v2 & 0x80000000) != 0)
  {
    *v2 &= ~0x80000000;

    re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit((v2 + 56));

    return re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(v2 + 16);
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs226MeshPartInstancesComponentELNS_17RealityKitReleaseE15EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::findEntry<unsigned long>(uint64_t result, uint64_t a2, uint64_t a3, unint64_t a4)
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
  if (*(v7 + (v6 << 7) + 8) == a3)
  {
    v5 = *(*(a2 + 8) + 4 * v4);
LABEL_5:
    LODWORD(v6) = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + (v6 << 7)) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + (v8 << 7) + 8) == a3)
      {
        break;
      }

      v8 = *(v7 + (v8 << 7)) & 0x7FFFFFFF;
      LODWORD(v6) = v9;
      if (v8 == 0x7FFFFFFF)
      {
        LODWORD(v6) = v9;
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

double re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::makeBindNode@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = (*(*a1 + 48))(a1);

  return re::makeRelativeBindNode(v5, a2, a3);
}

void re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::~ComponentType(uint64_t a1)
{
  re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::~ComponentType(a1);

  JUMPOUT(0x1E6906520);
}

double re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doMakeComponent@<D0>(void *a1@<X8>)
{
  v2 = (*(**(re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7) + 32))(*(re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 7), 192, 0);
  *v2 = 0u;
  *(v2 + 1) = 0u;
  *(v2 + 2) = 0u;
  *(v2 + 3) = 0u;
  *(v2 + 4) = 0u;
  *(v2 + 5) = 0u;
  *(v2 + 6) = 0u;
  *(v2 + 7) = 0u;
  *(v2 + 8) = 0u;
  *(v2 + 9) = 0u;
  *(v2 + 10) = 0u;
  *(v2 + 11) = 0u;
  ArcSharedObject::ArcSharedObject(v2, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF3570;
  *(v3 + 32) = 0;
  *(v3 + 40) = 0u;
  *(v3 + 56) = 0;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0u;
  *(v3 + 92) = 0u;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 108) = 0x7FFFFFFFLL;
  *(v3 + 128) = 0u;
  *(v3 + 144) = 0u;
  *(v3 + 160) = 0u;
  *(v3 + 176) = 0u;
  *a1 = v3;
  return result;
}

re::ecs2::SceneComponentCollectionBase *re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doMakeSceneComponentCollection(re *a1)
{
  v2 = re::globalAllocators(a1);
  v3 = (*(*v2[2] + 32))(v2[2], 784, 8);
  v4 = re::ecs2::SceneComponentCollectionBase::SceneComponentCollectionBase(v3, a1);
  *v4 = &unk_1F5CF3668;
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

uint64_t re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doGetComponentIntrospectionInfo()
{
  if ((atomic_load_explicit(&qword_1EE1AB110, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AB110))
  {
    qword_1EE1AB108 = re::internal::getOrCreateInfo("MeshPartInstancesComponent", re::ecs2::allocInfo_MeshPartInstancesComponent, re::ecs2::initInfo_MeshPartInstancesComponent, &qword_1EE1AB0F8, 0);
    __cxa_guard_release(&qword_1EE1AB110);
  }

  return qword_1EE1AB108;
}

__n128 re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::doGetComponentTypeID@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  result = a1[4];
  *a2 = result;
  return result;
}

uint64_t re::ecs2::ComponentType<re::ecs2::MeshPartInstancesComponent>::~ComponentType(uint64_t a1)
{
  *a1 = &unk_1F5CF35F8;
  if (*(a1 + 48))
  {
    RESyncRelease();
  }

  re::internal::destroyPersistent<re::Allocator>("~ComponentType", 53, *(a1 + 56));
  *a1 = &unk_1F5CD2AE8;
  re::StringID::destroyString((a1 + 24));
  return a1;
}

void re::ecs2::SceneComponentCollection<re::ecs2::MeshPartInstancesComponent>::~SceneComponentCollection(uint64_t a1)
{
  re::ecs2::SceneComponentCollection<re::ecs2::MeshPartInstancesComponent>::~SceneComponentCollection(a1);

  JUMPOUT(0x1E6906520);
}

{
  *a1 = &unk_1F5CF3668;
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

BOOL ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke(int a1, re::snapshot::BufferEncoder *this, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  __src = *(a3 + 48);
  re::snapshot::BufferEncoder::writeRaw<true>(this, &__src, 8uLL);
  v5 = *(a3 + 48);
  if (v5)
  {
    v6 = *(a3 + 64);
    v7 = 8 * v5;
    do
    {
      re::internalEncode<re::snapshot::EncoderRaw>(this, v6);
      v6 = (v6 + 8);
      v7 -= 8;
    }

    while (v7);
  }

  v8 = *(this + 6);
  if (v8)
  {
    v9 = v8 >> 1;
  }

  else
  {
    v9 = v8 >> 1;
  }

  return v9 == 0;
}

BOOL ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke_2(int a1, re::snapshot::EncoderOPACK *this, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  re::snapshot::EncoderOPACK::beginObject(this);
  v5 = *(this + 4);
  if (v5 >= *(this + 5))
  {
    re::snapshot::EncoderOPACK::writeInteger(this, 1);
  }

  else
  {
    v6 = *(this + 1);
    *(this + 4) = v5 + 1;
    *(v6 + v5) = 9;
  }

  v7 = *(a3 + 48);
  re::snapshot::EncoderOPACK::beginArray(this, v7);
  v8 = *(a3 + 48);
  if (v8)
  {
    v9 = *(a3 + 64);
    v10 = 8 * v8;
    do
    {
      re::internalEncode<re::snapshot::EncoderOPACK>(this, v9);
      v9 = (v9 + 8);
      v10 -= 8;
    }

    while (v10);
  }

  re::snapshot::EncoderOPACK::endArray(this, v7);
  re::snapshot::EncoderOPACK::endObject(this);
  v11 = *(this + 6);
  if (v11)
  {
    v12 = v11 >> 1;
  }

  else
  {
    v12 = v11 >> 1;
  }

  return v12 == 0;
}

uint64_t ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke_3(int a1, re::snapshot::DecoderRaw *this, void *a3)
{
  if (a3)
  {
    v12 = 0;
    if (!re::snapshot::DecoderRaw::beginArray(this, &v12))
    {
LABEL_20:
      v7 = *(this + 44) ^ 1;
      return v7 & 1;
    }

    v5 = v12;
    if (v12 == -1 || a3[5] >= v12)
    {
      if (!v12)
      {
        v8 = 1;
        LODWORD(v9) = 1;
LABEL_18:
        if (v8 != v9)
        {
          re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
        }

        goto LABEL_20;
      }

      v8 = v12 + 1;
      if (v12 == -1)
      {
        goto LABEL_16;
      }
    }

    else
    {
      re::DynamicArray<re::ObjCObject>::setCapacity(a3 + 4, v12);
      v8 = v5 + 1;
    }

    v9 = 1;
    v10 = v5;
    while (v8 != v9)
    {
      --v10;
      re::DynamicArray<re::DirectBuffer>::resize((a3 + 4), v9);
      re::internalDecode<re::snapshot::DecoderRaw>(this, (a3[8] + 8 * a3[6] - 8));
      ++v9;
      if (!v10)
      {
        goto LABEL_18;
      }
    }

LABEL_16:
    re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
    goto LABEL_20;
  }

  v7 = 0;
  return v7 & 1;
}

uint64_t ___ZN2re8snapshot8Registry3addINS_4ecs226MeshPartInstancesComponentEEEPKNS1_5EntryEv_block_invoke_4(int a1, const char **this, uint64_t a3)
{
  if (a3)
  {
    if (re::snapshot::DecoderOPACK::beginObject(this, 0))
    {
      if (re::snapshot::DecoderOPACK::beginField<1>(this))
      {
        v11 = 0;
        if (re::snapshot::DecoderOPACK::beginData(this, &v11, 1))
        {
          v5 = v11;
          if ((v11 & 7) != 0)
          {
            re::snapshot::BufferDecoder::error(this, "Bad data: %zu bytes, expected multiple of %zu");
          }

          else
          {
            re::DynamicArray<re::DirectBuffer>::resize(a3 + 32, v11 >> 3);
            re::snapshot::BufferDecoder::readRaw(this, *(a3 + 64), v5);
          }
        }

        else if (re::snapshot::DecoderOPACK::beginArray(this, &v11))
        {
          v7 = v11;
          if (v11 != -1 && *(a3 + 40) < v11)
          {
            re::DynamicArray<re::ObjCObject>::setCapacity((a3 + 32), v11);
          }

          LODWORD(v8) = 1;
          if (v7 + 1 > 1)
          {
            v9 = v7 + 1;
          }

          else
          {
            v9 = 1;
          }

          if (re::snapshot::DecoderOPACK::endArray(this, &v11))
          {
LABEL_20:
            if (v7 + 1 != v8)
            {
              re::snapshot::BufferDecoder::error(this, "count mismatch: expected %zu, got %d");
            }
          }

          else
          {
            if (v7 != -1)
            {
              v8 = 1;
              while (v9 != v8)
              {
                re::DynamicArray<re::DirectBuffer>::resize(a3 + 32, v8);
                re::internalDecode<re::snapshot::DecoderOPACK>(this, (*(a3 + 64) + 8 * *(a3 + 48) - 8));
                ++v8;
                if (re::snapshot::DecoderOPACK::endArray(this, &v11))
                {
                  goto LABEL_20;
                }
              }
            }

            re::snapshot::BufferDecoder::error(this, "Bad data, too many elements: have %d, expected %zu");
          }
        }

        re::snapshot::DecoderOPACK::endField(this);
      }

      re::snapshot::DecoderOPACK::endObject(this, 0);
    }

    v6 = *(this + 44) ^ 1;
  }

  else
  {
    v6 = 0;
  }

  return v6 & 1;
}

void re::DynamicArray<re::DirectBuffer>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = a1[2];
  if (v4 >= v5)
  {
    re::DynamicArray<re::ObjCObject>::setCapacity(a1, *(a2 + 16));
    v13 = *(a2 + 32);
    v14 = a1[2];
    v15 = a1[4];
    if (v14)
    {
      v16 = 8 * v14;
      do
      {
        v17 = *v13++;
        objc_storeStrong(v15++, v17);
        v16 -= 8;
      }

      while (v16);
      v15 = a1[4];
      v14 = a1[2];
      v13 = *(a2 + 32);
    }

    if (v14 != v4)
    {
      v18 = &v13[v14];
      v19 = &v15[v14];
      v20 = 8 * v4 - 8 * v14;
      do
      {
        v21 = *v18++;
        *v19++ = v21;
        v20 -= 8;
      }

      while (v20);
    }
  }

  else
  {
    v6 = a1[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 8 * v4;
      do
      {
        v9 = *v7++;
        objc_storeStrong(v6++, v9);
        v8 -= 8;
      }

      while (v8);
      v6 = a1[4];
      v5 = a1[2];
    }

    if (v4 != v5)
    {
      v10 = &v6[v4];
      v11 = 8 * v5 - 8 * v4;
      do
      {
        v12 = *v10++;

        v11 -= 8;
      }

      while (v11);
    }
  }

  a1[2] = v4;
}

void re::DynamicArray<re::DirectBuffer>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 8 * v2;
    do
    {
      v5 = *v3++;

      v4 -= 8;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::move(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  *a1 = *a2;
  if (v4 < *(a1 + 8))
  {
    if (*(a2 + 16))
    {
      v5 = (a2 + 24);
    }

    else
    {
      v5 = *(a2 + 32);
    }

    v6 = *(a1 + 16);
    if (v6)
    {
      v7 = (a1 + 24);
      if (!v4)
      {
LABEL_7:
        if ((v6 & 1) == 0)
        {
LABEL_8:
          v8 = *(a1 + 32);
          goto LABEL_21;
        }

LABEL_20:
        v8 = a1 + 24;
LABEL_21:
        v15 = *(a1 + 8);
        if (v4 != v15)
        {
          v16 = (v8 + 8 * v4);
          v17 = 8 * v15 - 8 * v4;
          do
          {
            if (*v16)
            {

              *v16 = 0;
            }

            ++v16;
            v17 -= 8;
          }

          while (v17);
        }

        goto LABEL_37;
      }
    }

    else
    {
      v7 = *(a1 + 32);
      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v14 = 8 * v4;
    do
    {
      NS::SharedPtr<MTL::Texture>::operator=(v7++, v5++);
      v14 -= 8;
    }

    while (v14);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    goto LABEL_20;
  }

  re::DynamicOverflowArray<re::SharedPtr<re::InputStreamSource>,2ul>::setCapacity(a1, v4);
  if (*(a2 + 16))
  {
    v9 = (a2 + 24);
  }

  else
  {
    v9 = *(a2 + 32);
  }

  v10 = *(a1 + 8);
  v11 = *(a1 + 16);
  if ((v11 & 1) == 0)
  {
    v12 = *(a1 + 32);
    if (!v10)
    {
      goto LABEL_14;
    }

LABEL_28:
    v18 = 8 * v10;
    do
    {
      NS::SharedPtr<MTL::Texture>::operator=(v12++, v9++);
      v18 -= 8;
    }

    while (v18);
    if ((*(a1 + 16) & 1) == 0)
    {
      goto LABEL_15;
    }

LABEL_31:
    v13 = a1 + 24;
    goto LABEL_32;
  }

  v12 = (a1 + 24);
  if (v10)
  {
    goto LABEL_28;
  }

LABEL_14:
  if (v11)
  {
    goto LABEL_31;
  }

LABEL_15:
  v13 = *(a1 + 32);
LABEL_32:
  v19 = *(a1 + 8);
  v20 = *(a2 + 32);
  if (*(a2 + 16))
  {
    v20 = a2 + 24;
  }

  if (v19 != v4)
  {
    v21 = (v20 + 8 * v19);
    v22 = (v13 + 8 * v19);
    v23 = 8 * v4 - 8 * v19;
    do
    {
      *v22++ = *v21;
      *v21++ = 0;
      v23 -= 8;
    }

    while (v23);
  }

LABEL_37:
  *(a1 + 8) = v4;
  re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(a2);
  *(a2 + 16) += 2;
  *(a1 + 16) += 2;
}

void re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(uint64_t a1)
{
  v2 = *(a1 + 8);
  *(a1 + 8) = 0;
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = (a1 + 24);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v4 = *(a1 + 32);
    if (!v2)
    {
      goto LABEL_10;
    }
  }

  v5 = 8 * v2;
  do
  {
    if (*v4)
    {

      *v4 = 0;
    }

    ++v4;
    v5 -= 8;
  }

  while (v5);
  v3 = *(a1 + 16);
LABEL_10:
  *(a1 + 16) = v3 + 2;
}

uint64_t re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v26, v9, v8);
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
            v17 = (v13 + 96);
            do
            {
              if ((*(v17 - 12) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::allocEntry(a1, v17[3] % *(a1 + 24));
                *(v18 + 8) = *(v17 - 11);
                re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::DynamicOverflowArray(v18 + 16, (v17 - 10));
                re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::DynamicOverflowArray(v18 + 56, (v17 - 5));
                v19 = *v17;
                *v17 = 0;
                *(v18 + 96) = v19;
                *(v18 + 104) = *(v17 + 1);
              }

              v17 += 16;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long,re::FramePersistentPooledGPUBuffer,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::deinit(v26);
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
    v21 = *(v20 + (v5 << 7));
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + (v5 << 7));
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + (v5 << 7);
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v23 + 120) = a3;
  *(v24 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v20 + (v5 << 7);
}

uint64_t re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::DynamicOverflowArray(uint64_t a1, uint64_t a2)
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
      re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::move(a1, a2);
    }

    else
    {
      re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::deinit(a1);
      *a1 = *a2;
      *(a2 + 16) += 2;
      *(a1 + 16) += 2;
    }
  }

  else
  {
    re::DynamicOverflowArray<NS::SharedPtr<MTL::Buffer>,2ul>::clear(a1);
    re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::swap(a1, a2);
  }

  return a1;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF3758;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF37B0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF3808;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF3860;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF3758;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF37B0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF3808;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF3860;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshPartInstancesComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3758;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3758;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF37B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF37B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF3808;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF3808;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshPartInstancesComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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