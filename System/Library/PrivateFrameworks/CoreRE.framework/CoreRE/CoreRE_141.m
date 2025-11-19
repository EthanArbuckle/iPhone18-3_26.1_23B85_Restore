double re::ecs2::downgradeStaticTextComponentFromFall2023@<D0>(re::ecs2 *this@<X0>, _BYTE *a2@<X8>)
{
  v6 = HIDWORD(*(this + 17));
  v7 = *(this + 8);
  v8 = *(this + 144);
  v10 = v7;
  v11 = vzip1_s32((v7 >> 32), *(&v7 + 8));
  v12 = v6;
  v13 = v8;
  re::ColorGamut4F::as(&v10, 0, 3, &v14);
  result = *&v14;
  *(this + 8) = v14;
  *(this + 144) = v15;
  *a2 = 1;
  return result;
}

void *re::ecs2::allocInfo_StaticTextComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B46F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B46F0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4738, "StaticTextComponent");
    __cxa_guard_release(&qword_1EE1B46F0);
  }

  return &unk_1EE1B4738;
}

void re::ecs2::initInfo_StaticTextComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v31[0] = 0x57F126D54E440CC4;
  v31[1] = "StaticTextComponent";
  if (v31[0])
  {
    if (v31[0])
    {
    }
  }

  *(this + 2) = v32;
  if ((atomic_load_explicit(&_MergedGlobals_388, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_388);
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
      qword_1EE1B4700 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_Vector4F(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "color";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x8000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1B4708 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::ecs2::introspect_TextAnchor(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "anchor";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x1C00000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1B4710 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::IntrospectionInfo<re::DynamicString>::get(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "text";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x2800000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1B4718 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_AssetHandle(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "fontAssetHandle";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x4800000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B4720 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_ColorGamut(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "colorGamut";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x9000000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1B4728 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = (*(*v28 + 32))(v28, 64, 8);
      *v29 = 6;
      *(v29 + 8) = 1;
      *(v29 + 16) = 0;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0;
      *(v29 + 40) = 1;
      *(v29 + 48) = re::ecs2::downgradeStaticTextComponentFromFall2023;
      *(v29 + 56) = 2;
      qword_1EE1B4730 = v29;
      __cxa_guard_release(&_MergedGlobals_388);
    }
  }

  *(this + 2) = 0xA000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1B4700;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::StaticTextComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::StaticTextComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::StaticTextComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::StaticTextComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219StaticTextComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v30 = v32;
}

void *re::internal::defaultDestruct<re::ecs2::StaticTextComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 9));
  re::DynamicString::deinit((a3 + 5));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void *re::internal::defaultDestructV2<re::ecs2::StaticTextComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 9));
  re::DynamicString::deinit((a1 + 5));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_StaticTextSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B46F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B46F8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B47C8, "StaticTextSystem");
    __cxa_guard_release(&qword_1EE1B46F8);
  }

  return &unk_1EE1B47C8;
}

void re::ecs2::initInfo_StaticTextSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xEB707E3A47CF15D4;
  v6[1] = "StaticTextSystem";
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
  *(this + 8) = &re::ecs2::initInfo_StaticTextSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::StaticTextSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::StaticTextSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::StaticTextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::StaticTextSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::StaticTextSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::StaticTextSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::StaticTextSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
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
  *v3 = &unk_1F5CFF578;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::StaticTextSystem>(uint64_t a1)
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
  *v1 = &unk_1F5CFF578;
  return result;
}

double re::ecs2::StaticTextSystem::willAddSceneToECSService(re::ecs2::StaticTextSystem *this, re::ecs2::Scene *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v2 = *(this + 28);
  if (!v2 || (*(v2 + 432) & 0x10) != 0)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v5[0] = 0;
    v5[2] = 0;
    v5[3] = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription(REEventHandlerResult (*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    return re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v3 + 184), v5);
  }

  return result;
}

void re::ecs2::StaticTextSystem::willRemoveSceneFromECSService(re::ecs2::StaticTextSystem *this, re::ecs2::Scene *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = *(this + 28);
  if (!v2 || (*(v2 + 432) & 0x10) != 0)
  {
    v3 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::StaticTextComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v4 = 0;
    v5 = 0;
    v6 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription(REEventHandlerResult (*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v3 + 184, &v4);
  }
}

uint64_t re::ecs2::StaticTextSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v87 = *MEMORY[0x1E69E9840];
  v56 = result;
  v3 = *(result + 224);
  if (!v3 || (*(v3 + 432) & 0x10) != 0)
  {
    v4 = *(a3 + 200);
    if (v4)
    {
      v5 = *(a3 + 216);
      v6 = &v5[v4];
      v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      v52 = v6;
      do
      {
        v8 = *v5;
        if (*v5)
        {
          v9 = *(v56 + 232);
          if (!v9)
          {
            re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 152);
            _os_crash();
            __break(1u);
          }

          v54 = *(v9 + 64);
          if (v54)
          {
            v10 = *(v9 + 160);
            v53 = v5;
            if (v10)
            {
              v11 = *v10;
            }

            else
            {
              v11 = 0;
            }

            re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v72);
            re::ecs2::SceneComponentTable::get((v8 + 200), v7[31]);
            re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v71, 3021, v56);
            v12 = *(*(v56 + 232) + 112);
            if (v12)
            {
              v13 = re::RenderFrameBox::get((v12 + 328), 0xFFFFFFFFFFFFFFFuLL);
            }

            else
            {
              v13 = 0;
            }

            v55 = (*(**(v56 + 256) + 24))(*(v56 + 256));
            v14 = (*(*v55 + 16))();
            if (*(v14 + 31))
            {
              v15 = *(v14 + 31);
            }

            else
            {
              v15 = *(v14 + 4);
            }

            v69 = 0;
            v67 = 0u;
            v68 = 0u;
            v70 = 0x7FFFFFFFLL;
            v66 = (*(**(v56 + 272) + 16))(*(v56 + 272));
            v16 = re::ecs2::SceneComponentTable::get((v8 + 200), v7[31]);
            if (v16)
            {
              v17 = *(v16 + 384);
              if (v17)
              {
                v18 = *(v16 + 400);
                v19 = &v18[v17];
                do
                {
                  v20 = *v18;
                  v21 = *(*v18 + 16);
                  if (*re::ecs2::RenderOptions::forEntity(&v66, v21) == 1)
                  {
                    (*(*v55 + 8))(&v77);
                    if (v77.i8[0])
                    {
                      v22 = v77.i64[1];
                    }

                    else
                    {
                      v22 = 0;
                    }

                    v65 = v22;
                    v77.i64[0] = &v67;
                    v77.i64[1] = v8;
                    v78.i64[0] = v22;
                    v23 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(&v67, &v78);
                    if (v23)
                    {
                      v24 = *v23;
                    }

                    else
                    {
                      v25 = 0xBF58476D1CE4E5B9 * ((*(*(v77.i64[1] + 104) + 288) >> 31) ^ (*(*(v77.i64[1] + 104) + 288) >> 1));
                      v26 = (0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) ^ ((0x94D049BB133111EBLL * (v25 ^ (v25 >> 27))) >> 31);
                      v27 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v78.i64[0] ^ (v78.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v78.i64[0] ^ (v78.i64[0] >> 30))) >> 27));
                      v24 = ((v27 ^ (v27 >> 31)) + (v26 << 6) + (v26 >> 2) - 0x61C8864680B583E9) ^ v26;
                    }

                    v64 = v24;
                    v29.i64[0] = *(v20 + 128);
                    v28 = *(v20 + 144);
                    *&v29.u32[2] = vzip1_s32(*(v20 + 136), HIDWORD(*(v20 + 136)));
                    if (v28 != v11)
                    {
                      v57 = v29;
                      re::ColorHelpers::computeGamutTransformMatrix(v28, v11, &v77);
                      v30 = vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v77, v57.f32[0]), v78, *v57.f32, 1), v79, v57, 2);
                      v30.i32[3] = 0;
                      v31 = vmaxnmq_f32(v30, 0);
                      v31.i32[3] = v57.i32[3];
                      v29 = v31;
                    }

                    v32 = *(v20 + 96);
                    if (v32)
                    {
                      goto LABEL_30;
                    }

                    v38 = *(v20 + 80);
                    if (v38)
                    {
                      v39 = atomic_load((v38 + 896));
                      if (v39 == 2)
                      {
                        v59 = v29;
                        re::makeFontID((v20 + 72), &v60);
                        *(v20 + 112) = re::TextManager::computeSize(v54, (v20 + 40), &v60);
                        re::StringID::invalid(&v77);
                        v78.i64[0] = 0x3F8000003F800000;
                        v78.i64[1] = 0x3F8000003F800000;
                        v79 = 0u;
                        v80 = 0u;
                        v81 = 0u;
                        v82 = 0u;
                        v83 = -1;
                        v84 = 0;
                        v85 = 0;
                        v86 = re::kInvalidStringRenderHandle;
                        re::TransformService::worldMatrix(*(v56 + 288), v21, 0, &v73);
                        v79 = v73;
                        v80 = v74;
                        v81 = v75;
                        v82 = v76;
                        v83 = v64;
                        v78 = v59;
                        re::StringID::operator=(&v77, &v60);
                        v40 = re::TextManager::addStaticText(v54, v20 + 40, &v77);
                        *(v20 + 96) = v40;
                        *(v20 + 104) = v41;
                        *(v20 + 32) = 1;
                        if (v77.i8[0])
                        {
                          if (v77.i8[0])
                          {
                          }
                        }

                        if (v60.i8[0])
                        {
                          if (v60.i8[0])
                          {
                          }
                        }

                        v32 = *(v20 + 96);
                        v29 = v59;
                        if (!v32)
                        {
                          v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
                          goto LABEL_68;
                        }

LABEL_30:
                        v58 = v29;
                        v33 = v8;
                        v34 = v11;
                        v35 = *(v20 + 104);
                        re::TransformService::worldMatrix(*(v56 + 288), v21, 0, &v60);
                        if (*(v20 + 28) == 1)
                        {
                          v36 = 0;
                          v37 = vnegq_f32(vaddq_f32(vmlaq_f32(vmlaq_f32(vmulq_n_f32(v60, *(v20 + 112) * 0.5), 0, v61), 0, v62), vmlaq_f32(vmlaq_n_f32(vmulq_f32(v60, 0), v61, *(v20 + 116) * -0.5), 0, v62)));
                          v37.i32[3] = 1.0;
                          v73 = v60;
                          v74 = v61;
                          v75 = v62;
                          v76 = v63;
                          do
                          {
                            *(&v77 + v36) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(xmmword_1E3047670, COERCE_FLOAT(*(&v73 + v36))), xmmword_1E3047680, *&v73.f32[v36 / 4], 1), xmmword_1E30476A0, *(&v73 + v36), 2), v37, *(&v73 + v36), 3);
                            v36 += 16;
                          }

                          while (v36 != 64);
                          v60 = v77;
                          v61 = v78;
                          v62 = v79;
                          v63 = v80;
                        }

                        re::TextManager::modifyStaticTextColor(v54, v32, v35, v58.i64[0], v58.i64[1]);
                        re::TextManager::modifyStaticTextWorldMatrix(v54, v32, v35, &v60);
                        re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v67, &v65, &v64);
                        v11 = v34;
                        v8 = v33;
                        goto LABEL_46;
                      }
                    }

                    re::AssetHandle::loadAsync((v20 + 72));
                  }

LABEL_46:
                  ++v18;
                }

                while (v18 != v19);
              }
            }

            v42 = v69;
            if (v69)
            {
              v43 = 0;
              v44 = v68;
              while (1)
              {
                v45 = *v44;
                v44 += 8;
                if (v45 < 0)
                {
                  break;
                }

                if (v69 == ++v43)
                {
                  LODWORD(v43) = v69;
                  break;
                }
              }
            }

            else
            {
              LODWORD(v43) = 0;
            }

            v7 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
            if (v43 != v69)
            {
              v46 = v68;
              do
              {
                v47 = v46 + 32 * v43;
                v48 = *(v47 + 16);
                re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v8, *(v47 + 8), v13, &v77);
                v73.i64[0] = v77.i64[0] >> 1;
                v60.i64[0] = v48;
                v49 = **(re::RenderFrameData::stream((v13 + 33), &v73) + 48);
                v50 = (*(v49 + 672))();
                if (v77.i8[0])
                {
                  if (v77.i8[0])
                  {
                  }
                }

                if (v69 <= v43 + 1)
                {
                  v51 = v43 + 1;
                }

                else
                {
                  v51 = v69;
                }

                v46 = v68;
                while (v51 - 1 != v43)
                {
                  LODWORD(v43) = v43 + 1;
                  if ((*(v68 + 32 * v43) & 0x80000000) != 0)
                  {
                    goto LABEL_67;
                  }
                }

                LODWORD(v43) = v51;
LABEL_67:
                ;
              }

              while (v43 != v42);
            }

LABEL_68:
            re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v67);
            re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v71);
            result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v72);
            v6 = v52;
            v5 = v53;
          }
        }

        ++v5;
      }

      while (v5 != v6);
    }
  }

  return result;
}

void re::ecs2::StaticTextSystem::~StaticTextSystem(re::ecs2::StaticTextSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::StaticTextComponent>(uint64_t a1)
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CE27D8;
  *(v2 + 28) = 0;
  *(v2 + 32) = 0;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  v3 = (v2 + 40);
  re::DynamicString::setCapacity(v3, 0);
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = re::kInvalidStringRenderHandle;
  *(a1 + 112) = 0;
  *(a1 + 128) = 0x3F8000003F800000;
  *(a1 + 136) = 0x3F8000003F800000;
  *(a1 + 144) = 0;
  return a1;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs219StaticTextComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 1;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::StaticTextComponent>::EventWrapper::erasedStaticCallback<&(anonymous namespace::deactivateComponent(re::ecs2::SceneComponentCollection<re::ecs2::StaticTextComponent>*,re::Slice<re::ecs2::StaticTextComponent*>))>(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v5 = (*(**(*(a1 + 472) + 56) + 32))(*(*(a1 + 472) + 56));
  v6 = re::ServiceLocator::service<re::RenderManager>(v5);
  if (a3)
  {
    v7 = *(v6 + 64);
    v8 = 8 * a3;
    do
    {
      v9 = *a2++;
      re::TextManager::removeStaticText(v7, *(v9 + 96), *(v9 + 104));
      v8 -= 8;
    }

    while (v8);
  }

  return 0;
}

void *re::ecs2::allocInfo_MeshSortGroupToken(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4860, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4860))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B48F8, "MeshSortGroupToken");
    __cxa_guard_release(&qword_1EE1B4860);
  }

  return &unk_1EE1B48F8;
}

void re::ecs2::initInfo_MeshSortGroupToken(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v25[0] = 0xE012E5EA2B5454CALL;
  v25[1] = "MeshSortGroupToken";
  if (v25[0])
  {
    if (v25[0])
    {
    }
  }

  *(this + 2) = v26;
  if ((atomic_load_explicit(&_MergedGlobals_389, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_389);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_uint64_t(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_groupId";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1B4888 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::introspect_MeshSortingConfiguration(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_sortingConfiguration";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1B4890 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_BOOL(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_useDepthBias";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x900000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B4898 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_sortPointOverride";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1B48A0 = v20;
      v21 = re::introspectionAllocator(v20);
      v22 = re::IntrospectionInfo<re::Optional<re::Vector3<float>>>::get(1);
      v23 = (*(*v21 + 32))(v21, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "m_groupNormal";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x3000000005;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1B48A8 = v23;
      __cxa_guard_release(&_MergedGlobals_389);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1B4888;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSortGroupToken>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSortGroupToken>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSortGroupToken>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSortGroupToken>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v24 = v26;
}

void re::internal::defaultConstruct<re::ecs2::MeshSortGroupToken>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  *(a3 + 48) = 0;
  *(a3 + 80) = 0;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::MeshSortGroupToken>(uint64_t result)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  *(result + 80) = 0;
  return result;
}

void *re::ecs2::allocInfo_MeshSortingComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4870, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4870))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4988, "MeshSortingComponent");
    __cxa_guard_release(&qword_1EE1B4870);
  }

  return &unk_1EE1B4988;
}

void re::ecs2::initInfo_MeshSortingComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v42[0] = 0x3ED245A66561E00CLL;
  v42[1] = "MeshSortingComponent";
  if (v42[0])
  {
    if (v42[0])
    {
    }
  }

  *(this + 2) = v43;
  if ((atomic_load_explicit(&qword_1EE1B4878, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1B4878);
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
      qword_1EE1B48B0 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_MeshSortingConfiguration(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "sortingConfiguration";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1B48B8 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = v13;
      v15 = qword_1EE1B4868;
      if (!qword_1EE1B4868)
      {
        v15 = re::ecs2::allocInfo_MeshSortGroupToken(v13);
        qword_1EE1B4868 = v15;
        re::ecs2::initInfo_MeshSortGroupToken(v15, v16);
      }

      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "groupToken";
      *(v17 + 16) = v15;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x2000000002;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1B48C0 = v17;
      v18 = re::introspectionAllocator(v17);
      v20 = re::introspect_int(1, v19);
      v21 = (*(*v18 + 32))(v18, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "priorityInGroup";
      *(v21 + 16) = v20;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0xA000000003;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1B48C8 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_int(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "depthPriorityInGroup";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xA400000004;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1B48D0 = v25;
      v26 = re::introspectionAllocator(v25);
      v27 = re::introspect_Vector3F(1);
      v28 = (*(*v26 + 32))(v26, 72, 8);
      *v28 = 1;
      *(v28 + 8) = "sortPointOverride";
      *(v28 + 16) = v27;
      *(v28 + 24) = 0;
      *(v28 + 32) = 0x14000000005;
      *(v28 + 40) = 0;
      *(v28 + 48) = 0;
      *(v28 + 56) = 0;
      *(v28 + 64) = 0;
      qword_1EE1B48D8 = v28;
      v29 = re::introspectionAllocator(v28);
      v31 = re::IntrospectionInfo<re::DynamicArray<int>>::get(1, v30);
      v32 = (*(*v29 + 32))(v29, 72, 8);
      *v32 = 1;
      *(v32 + 8) = "meshPartPrioritiesInGroup";
      *(v32 + 16) = v31;
      *(v32 + 24) = 0;
      *(v32 + 32) = 0x15000000006;
      *(v32 + 40) = 0;
      *(v32 + 48) = 0;
      *(v32 + 56) = 0;
      *(v32 + 64) = 0;
      qword_1EE1B48E0 = v32;
      v33 = re::introspectionAllocator(v32);
      v35 = re::IntrospectionInfo<re::DynamicArray<int>>::get(1, v34);
      v36 = (*(*v33 + 32))(v33, 72, 8);
      *v36 = 1;
      *(v36 + 8) = "meshPartDepthPrioritiesInGroup";
      *(v36 + 16) = v35;
      *(v36 + 24) = 0;
      *(v36 + 32) = 0x17800000007;
      *(v36 + 40) = 0;
      *(v36 + 48) = 0;
      *(v36 + 56) = 0;
      *(v36 + 64) = 0;
      qword_1EE1B48E8 = v36;
      v37 = re::introspectionAllocator(v36);
      v39 = re::introspect_BOOL(1, v38);
      v40 = (*(*v37 + 32))(v37, 72, 8);
      *v40 = 1;
      *(v40 + 8) = "isManagingUISorting";
      *(v40 + 16) = v39;
      *(v40 + 24) = 0;
      *(v40 + 32) = 0xA800000008;
      *(v40 + 40) = 0;
      *(v40 + 48) = 0;
      *(v40 + 56) = 0;
      *(v40 + 64) = 0;
      qword_1EE1B48F0 = v40;
      __cxa_guard_release(&qword_1EE1B4878);
    }
  }

  *(this + 2) = 0x1F000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 9;
  *(this + 8) = &qword_1EE1B48B0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSortingComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSortingComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSortingComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSortingComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs220MeshSortingComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v41 = v43;
}

void *re::ecs2::allocInfo_MeshSortingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1B4880, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4880))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4A18, "MeshSortingSystem");
    __cxa_guard_release(&qword_1EE1B4880);
  }

  return &unk_1EE1B4A18;
}

void re::ecs2::initInfo_MeshSortingSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x410912A8B5CB478CLL;
  v6[1] = "MeshSortingSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x13000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshSortingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshSortingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshSortingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshSortingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshSortingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshSortingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshSortingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::MeshSortingSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[17] = 0u;
  a3[18] = 0u;
  a3[15] = 0u;
  a3[16] = 0u;
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
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  *(v3 + 296) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CFF608;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::MeshSortingSystem>(_OWORD *a1)
{
  a1[17] = 0u;
  a1[18] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
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
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  *(v1 + 296) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CFF608;
  return result;
}

__n128 re::ecs2::MeshSortGroupToken::createNewToken@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *(a2 + 48) = 0;
  *(a2 + 80) = 0;
  uuid_generate_random(v6);
  *a2 = (v6[1] + (v6[0] << 6) + (v6[0] >> 2) - 0x61C8864680B583E9) ^ v6[0];
  *(a2 + 8) = *a1;
  if (*(a1 + 16) == 1)
  {
    *(a2 + 16) = 1;
    result = *(a1 + 32);
    *(a2 + 32) = result;
  }

  if (*(a1 + 48) == 1)
  {
    *(a2 + 48) = 1;
    result = *(a1 + 64);
    *(a2 + 64) = result;
  }

  if (*(a1 + 80) == 1)
  {
    *(a2 + 80) = 1;
    result = *(a1 + 96);
    v5 = *(a1 + 112);
    *(a2 + 96) = result;
    *(a2 + 112) = v5;
  }

  return result;
}

uint64_t re::ecs2::MeshSortGroupToken::createNewToken@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *(result + 16);
  if (v5)
  {
    *(a3 + 16) = 0;
    *(a3 + 48) = 0;
    *(a3 + 80) = 0;
    *a3 = *(v5 + 312);
    *(a3 + 8) = *a2;
    if (*(a2 + 16) == 1)
    {
      *(a3 + 16) = 1;
      *(a3 + 32) = *(a2 + 32);
    }

    if (*(a2 + 48) == 1)
    {
      *(a3 + 48) = 1;
      *(a3 + 64) = *(a2 + 64);
    }

    if (*(a2 + 80) == 1)
    {
      *(a3 + 80) = 1;
      v6 = *(a2 + 112);
      *(a3 + 96) = *(a2 + 96);
      *(a3 + 112) = v6;
    }
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Component must be part of an entity", "component->entity() != nullptr", "createNewToken", 89, v3, v4);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::MeshSortGroupToken::MeshSortGroupToken(uint64_t result, uint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  *(result + 48) = 0;
  *(result + 80) = 0;
  *result = *a2;
  *(result + 8) = *(a2 + 8);
  if (*(a2 + 16) == 1)
  {
    *(result + 16) = 1;
    *(result + 32) = *(a2 + 32);
  }

  if (*(a2 + 48) == 1)
  {
    *(result + 48) = 1;
    *(result + 64) = *(a2 + 64);
  }

  if (*(a2 + 80) == 1)
  {
    *(result + 80) = 1;
    v2 = *(a2 + 112);
    *(result + 96) = *(a2 + 96);
    *(result + 112) = v2;
  }

  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(a2 + 16) == 1)
  {
    *(a2 + 16) = 0;
  }

  if (*(a2 + 48) == 1)
  {
    *(a2 + 48) = 0;
  }

  if (*(a2 + 80) == 1)
  {
    *(a2 + 80) = 0;
  }

  return result;
}

uint64_t re::ecs2::MeshSortGroupToken::operator=(uint64_t result, uint64_t a2)
{
  if (result == a2)
  {
    return result;
  }

  *result = *a2;
  *(result + 8) = *(a2 + 8);
  if (*(result + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      *(result + 16) = 0;
      goto LABEL_8;
    }
  }

  else
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      goto LABEL_8;
    }

    *(result + 16) = 1;
  }

  *(result + 32) = *(a2 + 32);
LABEL_8:
  if (*(result + 48))
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      *(result + 48) = 0;
      goto LABEL_14;
    }
  }

  else
  {
    if ((*(a2 + 48) & 1) == 0)
    {
      goto LABEL_14;
    }

    *(result + 48) = 1;
  }

  *(result + 64) = *(a2 + 64);
LABEL_14:
  if ((*(result + 80) & 1) == 0)
  {
    if ((*(a2 + 80) & 1) == 0)
    {
      goto LABEL_20;
    }

    *(result + 80) = 1;
LABEL_19:
    v2 = *(a2 + 112);
    *(result + 96) = *(a2 + 96);
    *(result + 112) = v2;
    goto LABEL_20;
  }

  if (*(a2 + 80))
  {
    goto LABEL_19;
  }

  *(result + 80) = 0;
LABEL_20:
  *a2 = 0;
  *(a2 + 8) = 0;
  if (*(a2 + 16) == 1)
  {
    *(a2 + 16) = 0;
  }

  if (*(a2 + 48) == 1)
  {
    *(a2 + 48) = 0;
  }

  if (*(a2 + 80) == 1)
  {
    *(a2 + 80) = 0;
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::MeshSortingSystem::willAddSystemToECSService(re::ecs2::MeshSortingSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 37) = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v2);

  return re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
}

double re::ecs2::MeshSortingSystem::willRemoveSystemFromECSService(re::ecs2::MeshSortingSystem *this)
{
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

void re::ecs2::MeshSortingSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v312[7] = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v249 = &v6[v5];
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v251 = vnegq_f32(v7);
      do
      {
        v8 = *v6;
        v302 = v8;
        v9 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v9)
        {
          v259 = *(v9 + 400);
          v262 = *(v9 + 384);
        }

        else
        {
          v259 = 0;
          v262 = 0;
        }

        v10 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::HierarchicalFadeComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v10)
        {
          v250 = *(v10 + 400);
          v11 = *(v10 + 384);
        }

        else
        {
          v250 = 0;
          v11 = 0;
        }

        v12 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::RenderPassGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v12)
        {
          v14 = *(v12 + 400);
          v15 = *(v12 + 384);
        }

        else
        {
          v14 = 0;
          v15 = 0;
        }

        if (v262 || v11 || v15)
        {
          v16 = *(v3 + 232);
          if (!v16)
          {
            re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 346);
            _os_crash();
            __break(1u);
          }

          v246 = v15;
          v247 = v11;
          v253 = v14;
          v301 = re::RenderFrameBox::get((*(v16 + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
          v17 = *(v301 + 49);
          v300 = (*(**(v3 + 256) + 24))(*(v3 + 256));
          v18 = (*(*v300 + 16))(v300);
          v19 = *(v18 + 124);
          if (!v19)
          {
            v19 = *(v18 + 16);
          }

          v298 = 0;
          v296 = 0u;
          v297 = 0u;
          v299 = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v296, v17, v19 + 1);
          v294 = 0;
          v292 = 0u;
          v293 = 0u;
          v295 = 0x7FFFFFFFLL;
          v257 = v17;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v292, v17, 3);
          re::StackScratchAllocator::StackScratchAllocator(v291);
          v289 = 0;
          memset(v288, 0, sizeof(v288));
          v290 = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v288, v291, 3);
          v20 = v259;
          v21 = &v259[v262];
          if (v262)
          {
            while (1)
            {
              v22 = *v20;
              v263.i64[0] = v22;
              v23 = *(v22 + 304) ? 176 : 32;
              v24 = v22 + v23;
              if (*(v24 + 9) == 1 && *(v24 + 8) != 5)
              {
                break;
              }

LABEL_50:
              if (++v20 == v21)
              {
                goto LABEL_51;
              }
            }

            v25 = *v24;
            v26 = 0xBF58476D1CE4E5B9 * (*v24 ^ (*v24 >> 30));
            v27 = (0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) ^ ((0x94D049BB133111EBLL * (v26 ^ (v26 >> 27))) >> 31);
            if (v292)
            {
              v28 = v27 % DWORD2(v293);
              v29 = *(&v292 + 1);
              v30 = *(*(&v292 + 1) + 4 * v28);
              if (v30 != 0x7FFFFFFF)
              {
                while (*(v293 + (v30 << 6) + 8) != v25)
                {
                  v30 = *(v293 + (v30 << 6)) & 0x7FFFFFFF;
                  if (v30 == 0x7FFFFFFF)
                  {
                    goto LABEL_30;
                  }
                }

                re::DynamicArray<re::RigDataValue *>::add((v293 + (v30 << 6) + 16), &v263);
                v21 = &v259[v262];
                goto LABEL_50;
              }

LABEL_30:
              *&v305[16] = 0;
              *&v305[24] = 0;
              *(&v306 + 1) = 0;
              *v305 = v257;
              re::DynamicArray<float *>::setCapacity(v305, 0);
              ++*&v305[24];
              re::DynamicArray<re::RigDataValue *>::add(v305, &v263);
              v31 = *(v29 + 4 * v28);
              if (v31 == 0x7FFFFFFF)
              {
                v21 = &v259[v262];
              }

              else
              {
                v21 = &v259[v262];
                if (*(v293 + (v31 << 6) + 8) == v25)
                {
LABEL_47:
                  if (*v305 && *(&v306 + 1))
                  {
                    (*(**v305 + 40))();
                  }

                  goto LABEL_50;
                }

                while (1)
                {
                  v31 = *(v293 + (v31 << 6)) & 0x7FFFFFFF;
                  if (v31 == 0x7FFFFFFF)
                  {
                    break;
                  }

                  if (*(v293 + (v31 << 6) + 8) == v25)
                  {
                    goto LABEL_47;
                  }
                }
              }
            }

            else
            {
              *&v305[16] = 0;
              *&v305[24] = 0;
              *(&v306 + 1) = 0;
              *v305 = v257;
              re::DynamicArray<float *>::setCapacity(v305, 0);
              ++*&v305[24];
              re::DynamicArray<re::RigDataValue *>::add(v305, &v263);
              LODWORD(v28) = 0;
            }

            v32 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v292, v28, v27);
            *(v32 + 16) = 0;
            v33 = (v32 + 16);
            *(v32 + 8) = v25;
            *(v32 + 48) = 0;
            *(v32 + 24) = 0;
            *(v32 + 32) = 0;
            *(v32 + 40) = 0;
            if (*v305)
            {
              v34 = v32;
              v35 = *&v305[16];
              *(v32 + 16) = *v305;
              re::DynamicArray<float *>::setCapacity((v32 + 16), v35);
              ++*(v34 + 40);
              if (v35 >= *(v34 + 32))
              {
                re::DynamicArray<float *>::setCapacity(v33, v35);
                v36 = *(v34 + 32);
                v37 = *(&v306 + 1);
                if (v36)
                {
                  memmove(*(v34 + 48), *(&v306 + 1), 8 * v36);
                  v36 = *(v34 + 32);
                }

                memcpy((*(v34 + 48) + 8 * v36), (v37 + 8 * v36), 8 * (v35 - v36));
              }

              else if (v35)
              {
                memmove(*(v34 + 48), *(&v306 + 1), 8 * v35);
              }

              *(v34 + 32) = v35;
            }

            ++HIDWORD(v295);
            goto LABEL_47;
          }

LABEL_51:
          v284[1] = 0;
          v285 = 0;
          v286 = 0;
          v287 = 0;
          v284[0] = v257;
          re::DynamicArray<float *>::setCapacity(v284, 0);
          ++v286;
          v38 = v294;
          v248 = v6;
          if (v294)
          {
            v39 = 0;
            v40 = v293;
            while (1)
            {
              v41 = *v40;
              v40 += 16;
              if (v41 < 0)
              {
                break;
              }

              if (v294 == ++v39)
              {
                LODWORD(v39) = v294;
                break;
              }
            }
          }

          else
          {
            LODWORD(v39) = 0;
          }

          if (v39 != v294)
          {
            v42 = v293;
            do
            {
              v43 = v42 + (v39 << 6);
              v44 = *(v43 + 32);
              if (v44)
              {
                v45 = *(v43 + 48);
                v46 = 8 * v44;
                do
                {
                  v47 = *v45++;
                  *v305 = v47;
                  re::DynamicArray<re::RigDataValue *>::add(v284, v305);
                  v46 -= 8;
                }

                while (v46);
              }

              v48 = v287;
              v49 = v285;
              v50 = 126 - 2 * __clz(v285);
              if (v285)
              {
                v51 = v50;
              }

              else
              {
                v51 = 0;
              }

              std::__introsort<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **,false>(v287, (v287 + 8 * v285), v51, 1);
              if (v49)
              {
                v52 = 0;
                v53 = *(*v48 + 160);
                v54 = 8 * v49;
                do
                {
                  v56 = *v48;
                  v48 += 8;
                  v55 = v56;
                  v57 = *(v56 + 160);
                  if (v53 != v57)
                  {
                    ++v52;
                  }

                  *(v55 + 416) = v52;
                  v53 = v57;
                  v54 -= 8;
                }

                while (v54);
              }

              v285 = 0;
              ++v286;
              if (v38 <= v39 + 1)
              {
                v58 = v39 + 1;
              }

              else
              {
                v58 = v38;
              }

              while (v58 - 1 != v39)
              {
                LODWORD(v39) = v39 + 1;
                if ((*(v42 + (v39 << 6)) & 0x80000000) != 0)
                {
                  goto LABEL_78;
                }
              }

              LODWORD(v39) = v58;
LABEL_78:
              ;
            }

            while (v39 != v38);
          }

          v59 = a1;
          v60 = *(a1 + 296);
          if (v60)
          {
            v61 = (*(*v60 + 16))(v60);
            v281 = 0u;
            v282 = 0u;
            LODWORD(v283) = 0;
            *(&v283 + 4) = 0x7FFFFFFFLL;
            if (*v61)
            {
              v62 = v61;
              v63 = *(v61 + 28) <= 3u ? 3 : *(v61 + 28);
              re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v281, *v61, v63);
              if (*(v62 + 32))
              {
                v64 = 0;
                v65 = 0;
                do
                {
                  v66 = *(v62 + 16);
                  if ((*(v66 + v64) & 0x80000000) != 0)
                  {
                    v67 = re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v281, *(v66 + v64 + 40) % DWORD2(v282), *(v66 + v64 + 40));
                    *(v67 + 8) = *(*(v62 + 16) + v64 + 8);
                    v68 = *(v62 + 16) + v64;
                    *(v67 + 16) = *(v68 + 16);
                    v69 = *(v68 + 32);
                    *(v67 + 32) = v69;
                    if (v69 == 1)
                    {
                      *(v67 + 36) = *(v68 + 36);
                    }
                  }

                  ++v65;
                  v64 += 48;
                }

                while (v65 < *(v62 + 32));
              }
            }
          }

          else
          {
            v282 = 0u;
            v283 = 0u;
            v281 = 0u;
            DWORD1(v283) = 0x7FFFFFFF;
          }

          v70 = (*(**(a1 + 40) + 32))(*(a1 + 40));
          v71 = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v70);
          v280 = v71;
          if (v71)
          {
            v72 = (*(*v71 + 16))(v71);
            v277 = 0u;
            v278 = 0u;
            LODWORD(v279) = 0;
            *(&v279 + 4) = 0x7FFFFFFFLL;
            if (*v72)
            {
              v73 = v72;
              v74 = *(v72 + 28) <= 3u ? 3 : *(v72 + 28);
              re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(&v277, *v72, v74);
              v75 = *(v73 + 32);
              if (v75)
              {
                v76 = 0;
                for (i = 0; i < v75; ++i)
                {
                  v78 = *(v73 + 16);
                  if ((*(v78 + v76) & 0x80000000) != 0)
                  {
                    v79 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(&v277, *(v78 + v76 + 32) % DWORD2(v278), *(v78 + v76 + 32));
                    *(v79 + 8) = *(*(v73 + 16) + v76 + 8);
                    *(v79 + 16) = *(*(v73 + 16) + v76 + 16);
                    v75 = *(v73 + 32);
                  }

                  v76 += 40;
                }
              }
            }
          }

          else
          {
            v278 = 0u;
            v279 = 0u;
            v277 = 0u;
            DWORD1(v279) = 0x7FFFFFFF;
          }

          v276 = (*(**(a1 + 272) + 16))(*(a1 + 272));
          re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v302, 0, v301, &v275);
          v81 = v259;
          if (v262)
          {
            while (1)
            {
              v82 = *v81;
              if (*(*v81 + 304))
              {
                v83 = 176;
              }

              else
              {
                v83 = 32;
              }

              v84 = v82 + v83;
              v304 = *(v82 + v83);
              v85 = *(v82 + v83 + 8);
              v86 = *(v82 + v83 + 9);
              v87 = *(*(v59 + 232) + 96);
              if (v87)
              {
                v263.i8[0] = 0;
                *v305 = 0xF2997E03A38ACEACLL;
                *&v305[8] = "meshsorting:enableDepthBias";
                v88 = re::DebugSettingsManager::getWithErrorCode<BOOL>(v87, v305, &v263);
                v89 = v88;
                if (v305[0])
                {
                  if (v305[0])
                  {
                  }
                }

                if (!v89)
                {
                  v86 &= v263.i8[0];
                }
              }

              v303 = *(v82 + 320);
              if (v85 != 5)
              {
                goto LABEL_119;
              }

              if (*(v84 + 16) == 1)
              {
                v303 = *(v84 + 32);
              }

              if (*(v84 + 48) == 1)
              {
                v90 = *(v84 + 64);
                v91 = *(v84 + 72);
              }

              else
              {
LABEL_119:
                v90 = 0;
                v91 = 0;
              }

              if (!v304)
              {
                goto LABEL_167;
              }

              v258 = v91;
              v260 = v90;
              v274 = *(v82 + 16);
              QualifiedComponentForSorting = re::ecs2::MeshSortingSystem::getQualifiedComponentForSorting((v274 + 6), v80);
              if (!QualifiedComponentForSorting)
              {
                goto LABEL_167;
              }

              v93 = QualifiedComponentForSorting;
              if ((*(*QualifiedComponentForSorting + 32))(QualifiedComponentForSorting) != 6)
              {
                break;
              }

              re::TransformService::worldMatrix(*(v59 + 288), v274, 0, v305);
              v94 = re::AssetHandle::loadedAsset<re::MeshAsset>((v93 + 4));
              if (v94)
              {
                v256 = v86;
                re::MeshAsset::aabbFromMesh(v94, v305, &v263);
                goto LABEL_125;
              }

LABEL_167:
              if (++v81 == &v259[v262])
              {
                goto LABEL_170;
              }
            }

            v95 = (*(*v93 + 5))(v93);
            (*(*v95 + 56))(v305);
            (*(*re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType + 56))(&v263);
            v256 = v86;
            if (*v305 == v263.i64[0] && *&v305[8] == v263.u16[4] && *&v305[10] == HIWORD(v263.i32[2]) && ((*&v305[12] ^ v263.i32[3]) & 0xFFFFFF) == 0)
            {
              re::TransformService::worldMatrix(*(v59 + 288), v274, 0, v305);
              re::ecs2::VFXSceneComponent::worldAabb(v93, v305, &v263);
LABEL_125:
              v254 = v263;
              v255 = v264;
            }

            else
            {
              v96.i64[0] = 0x7F0000007FLL;
              v96.i64[1] = 0x7F0000007FLL;
              v97.i64[0] = 0x7F0000007FLL;
              v97.i64[1] = 0x7F0000007FLL;
              v254 = vnegq_f32(v96);
              v255 = v97;
            }

            (*(*v300 + 8))(v305);
            if (v305[0])
            {
              v98 = *&v305[8];
            }

            else
            {
              v98 = 0;
            }

            v273 = v98;
            re::MeshSortingCollection::MeshSortingCollection(v305, v257);
            v99 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v296, &v273, v305);
            re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v312);
            re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v311);
            re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v307);
            re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v305);
            v100 = *(v82 + 352);
            *v305 = *(v82 + 368);
            *&v305[8] = v100;
            re::DynamicArray<int>::DynamicArray(&v263, v257, v305);
            v101 = *(v82 + 392);
            *v305 = *(v82 + 408);
            *&v305[8] = v101;
            re::DynamicArray<int>::DynamicArray(&v269, v257, v305);
            if (((v85 != 5) & v256) != 0)
            {
              v102 = *(v82 + 416);
            }

            else
            {
              v102 = *(v82 + 160);
            }

            if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::onceToken != -1)
            {
              dispatch_once(&re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::onceToken, &__block_literal_global_18_0);
            }

            if (re::GraphicsFeatureFlags::enableMeshPartDepthBiasInSortGroup(void)::gEnableMeshPartDepthBiasInSortGroup == 1)
            {
              v268 = v274[39];
              *v305 = v304;
              v103 = *(v82 + 164);
              *&v305[8] = v102;
              *&v305[12] = v103;
              re::DynamicArray<float>::DynamicArray(&v305[16], &v263);
              re::DynamicArray<float>::DynamicArray(v308, &v269);
              LOBYTE(v311[0]) = *(v82 + 480);
              if (LOBYTE(v311[0]) == 1)
              {
                HIDWORD(v311[0]) = *(v82 + 484);
              }
            }

            else
            {
              v268 = v274[39];
              *v305 = v304;
              v104 = *(v82 + 164);
              *&v305[8] = v102;
              *&v305[12] = v104;
              re::DynamicArray<float>::DynamicArray(&v305[16], &v263);
              re::DynamicArray<float>::DynamicArray(v308, &v269);
              LOBYTE(v311[0]) = 0;
            }

            re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v99, &v268, v305);
            if (v308[0])
            {
              if (v310)
              {
                (*(*v308[0] + 40))();
              }

              v310 = 0;
              memset(v308, 0, sizeof(v308));
              ++v309;
            }

            if (*&v305[16] && v307)
            {
              (*(**&v305[16] + 40))();
            }

            v105 = *(v99 + 96);
            *&v305[15] = v303;
            v106 = *(v84 + 80);
            v107 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v304 ^ (v304 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v304 ^ (v304 >> 30))) >> 27));
            v108 = v107 ^ (v107 >> 31);
            if (v105)
            {
              v109 = v108 % *(v99 + 120);
              v110 = *(*(v99 + 104) + 4 * v109);
              if (v110 != 0x7FFFFFFF)
              {
                v111 = *(v99 + 112);
                while (*(v111 + (v110 << 7) + 8) != v304)
                {
                  v110 = *(v111 + (v110 << 7)) & 0x7FFFFFFF;
                  if (v110 == 0x7FFFFFFF)
                  {
                    goto LABEL_157;
                  }
                }

                v114 = v111 + (v110 << 7) + 16;
                goto LABEL_159;
              }
            }

            else
            {
              LODWORD(v109) = 0;
            }

LABEL_157:
            v112 = re::HashTable<unsigned long long,re::MeshSortingCollection::GroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v99 + 96, v109, v108);
            v113 = v304;
            *(v112 + 16) = v251;
            v114 = v112 + 16;
            *(v112 + 8) = v113;
            *&v115 = 0x7F0000007FLL;
            *(&v115 + 1) = 0x7F0000007FLL;
            *(v112 + 32) = v115;
            *(v112 + 48) = v85;
            *(v112 + 49) = *v305;
            *(v112 + 64) = *&v305[15];
            *(v112 + 80) = v260;
            *(v112 + 88) = v258;
            *(v112 + 96) = v256 & 1;
            *(v112 + 97) = 0;
            *(v112 + 98) = v106;
            ++*(v99 + 136);
LABEL_159:
            *(v99 + 192) |= (v256 ^ 1) & 1;
            v116 = *v114;
            v117 = *(v114 + 16);
            v116.i32[3] = 0;
            v118 = v254;
            v118.i32[3] = 0;
            v119 = vminnmq_f32(v116, v118);
            v117.i32[3] = 0;
            v120 = v255;
            v120.i32[3] = 0;
            *v114 = v119;
            *(v114 + 16) = vmaxnmq_f32(v117, v120);
            *v305 = 0;
            v121 = re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&v281, &v274);
            if (v121)
            {
              *v305 = *v121;
            }

            v122 = re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v288, &v304, v305);
            *(v114 + 81) |= *v122 != *v305;
            v59 = a1;
            if (v269)
            {
              v80 = v272;
              if (v272)
              {
                (*(*v269 + 40))();
              }
            }

            if (v263.i64[0])
            {
              v80 = v265;
              if (v265)
              {
                (*(*v263.i64[0] + 40))();
              }
            }

            goto LABEL_167;
          }

LABEL_170:
          v123 = v279;
          if (v279)
          {
            v124 = 0;
            v125 = v278;
            v126 = v257;
            v127 = v253;
            while (1)
            {
              v128 = *v125;
              v125 += 10;
              if (v128 < 0)
              {
                break;
              }

              if (v279 == ++v124)
              {
                LODWORD(v124) = v279;
                break;
              }
            }
          }

          else
          {
            LODWORD(v124) = 0;
            v126 = v257;
            v127 = v253;
          }

          if (v124 != v279)
          {
            v129 = v278;
            do
            {
              v130 = v129 + 40 * v124;
              v132 = *(v130 + 8);
              v131 = (v130 + 8);
              if (re::ecs2::MeshSortingSystem::getQualifiedComponentForSorting((v132 + 48), v80) && *re::ecs2::RenderOptions::forEntity(&v276, *v131) == 1)
              {
                (*(*v300 + 8))(v305);
                if (v305[0])
                {
                  v133 = *&v305[8];
                }

                else
                {
                  v133 = 0;
                }

                v263.i64[0] = v133;
                re::MeshSortingCollection::MeshSortingCollection(v305, v126);
                v134 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v296, &v263, v305);
                re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v312);
                re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v311);
                v127 = v253;
                re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v307);
                re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v305);
                v269 = *(*v131 + 312);
                *v305 = 0uLL;
                *re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v134 + 48, &v269, v305) = v131[1];
              }

              if (v279 <= v124 + 1)
              {
                v135 = v124 + 1;
              }

              else
              {
                v135 = v279;
              }

              v129 = v278;
              while (v135 - 1 != v124)
              {
                LODWORD(v124) = v124 + 1;
                if ((*(v278 + 40 * v124) & 0x80000000) != 0)
                {
                  goto LABEL_192;
                }
              }

              LODWORD(v124) = v135;
LABEL_192:
              ;
            }

            while (v124 != v123);
          }

          if (v280)
          {
            v263.i64[0] = a1;
            v263.i64[1] = &v276;
            v264.i64[0] = &v302;
            v264.i64[1] = &v301;
            *&v265 = v126;
            *(&v265 + 1) = &v280;
            v266 = &v296;
            v267 = &v300;
            if (v246)
            {
              v136 = 8 * v246;
              do
              {
                v137 = *v127;
                if (*(*v127 + 25) != 1)
                {
                  *v305 = *(v137 + 16);
                  v138 = re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::tryGet(&v277, v305);
                  if (v138)
                  {
                    v139 = *(v138 + 8);
                    v140 = re::ecs2::MeshSortingSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)const::$_0::operator()(&v263, *(v137 + 16), *(*(v137 + 16) + 312), *(v137 + 25), v139);
                    if (v139 == 1)
                    {
                      (*(*v300 + 8))(v305, v140);
                      if (v305[0])
                      {
                        v141 = *&v305[8];
                      }

                      else
                      {
                        v141 = 0;
                      }

                      v269 = v141;
                      re::MeshSortingCollection::MeshSortingCollection(v305, v126);
                      v142 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v296, &v269, v305);
                      re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v312);
                      re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v311);
                      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v307);
                      re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v305);
                      *(v142 + 193) = 1;
                      v143 = *(v137 + 32);
                      memset(v305, 0, 24);
                      v144 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v143 ^ (v143 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v143 ^ (v143 >> 30))) >> 27));
                      re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v142 + 48, (v137 + 32), v144 ^ (v144 >> 31), v305);
                      if (*&v305[12] == 0x7FFFFFFF)
                      {
                        v145 = re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v142 + 48, *&v305[8], *v305);
                        v146 = *(v137 + 32);
                        *(v145 + 16) = 0;
                        v147 = (v145 + 16);
                        *(v147 - 1) = v146;
                        v147[1] = 0;
                        ++*(v142 + 88);
                      }

                      else
                      {
                        v147 = (*(v142 + 64) + 40 * *&v305[12] + 16);
                      }

                      *v147 = *(*(v137 + 16) + 312);
                    }
                  }

                  else
                  {
                    re::ecs2::MeshSortingSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)const::$_0::operator()(&v263, *(v137 + 16), *(*(v137 + 16) + 312), *(v137 + 25), 0);
                  }
                }

                ++v127;
                v136 -= 8;
              }

              while (v136);
            }

            v148 = v250;
            if (v247)
            {
              v149 = 8 * v247;
              do
              {
                v150 = *v148;
                if (*(*(*v148 + 2) + 304))
                {
                  re::ecs2::HierarchicalFadeComponent::getFadeGroupID(*v148, v305);
                  if (v305[0] == 1)
                  {
                    re::ecs2::MeshSortingSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)const::$_0::operator()(&v263, *(v150 + 2), *&v305[8], 2, 0);
                  }
                }

                ++v148;
                v149 -= 8;
              }

              while (v149);
            }
          }

          v151 = v283;
          if (v283)
          {
            v152 = 0;
            v153 = v282;
            while (1)
            {
              v154 = *v153;
              v153 += 12;
              if (v154 < 0)
              {
                break;
              }

              if (v283 == ++v152)
              {
                LODWORD(v152) = v283;
                break;
              }
            }
          }

          else
          {
            LODWORD(v152) = 0;
          }

          if (v152 != v283)
          {
            v155 = v282;
            v156 = v283;
            do
            {
              v157 = v155 + 48 * v152;
              v159 = *(v157 + 16);
              v158 = (v157 + 16);
              if (v159)
              {
                v160 = *(v155 + 48 * v152 + 8);
                (*(*v300 + 8))(v305);
                if (v305[0])
                {
                  v161 = *&v305[8];
                }

                else
                {
                  v161 = 0;
                }

                v263.i64[0] = v161;
                re::MeshSortingCollection::MeshSortingCollection(v305, v126);
                v162 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v296, &v263, v305);
                re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v312);
                re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v311);
                re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v307);
                re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v305);
                v269 = *(v160 + 312);
                *v305 = 0uLL;
                *(re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v162 + 48, &v269, v305) + 8) = *v158;
                v156 = v283;
                v155 = v282;
              }

              if (v156 <= v152 + 1)
              {
                v163 = v152 + 1;
              }

              else
              {
                v163 = v156;
              }

              while (v163 - 1 != v152)
              {
                LODWORD(v152) = v152 + 1;
                if ((*(v155 + 48 * v152) & 0x80000000) != 0)
                {
                  goto LABEL_234;
                }
              }

              LODWORD(v152) = v163;
LABEL_234:
              ;
            }

            while (v152 != v151);
          }

          (*(*v280 + 64))(v305);
          v164 = *(&v306 + 1);
          if (*(&v306 + 1))
          {
            v165 = 0;
            v166 = (*&v305[16] + 8);
            while (1)
            {
              v167 = *v166;
              v166 += 6;
              if (v167 < 0)
              {
                break;
              }

              if (*(&v306 + 1) == ++v165)
              {
                LODWORD(v165) = *(&v306 + 1);
                break;
              }
            }
          }

          else
          {
            LODWORD(v165) = 0;
          }

          if (v165 != *(&v306 + 1))
          {
            v168 = *&v305[16];
            do
            {
              v169 = *(v168 + 24 * v165 + 16);
              (*(*v300 + 8))(&v263);
              if (v263.i8[0])
              {
                v170 = v263.u64[1];
              }

              else
              {
                v170 = 0;
              }

              if (v296)
              {
                v171 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v170 ^ (v170 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v170 ^ (v170 >> 30))) >> 27));
                v172 = *(*(&v296 + 1) + 4 * ((v171 ^ (v171 >> 31)) % DWORD2(v297)));
                if (v172 != 0x7FFFFFFF)
                {
                  while (*(v297 + 224 * v172 + 8) != v170)
                  {
                    LODWORD(v172) = *(v297 + 224 * v172) & 0x7FFFFFFF;
                    if (v172 == 0x7FFFFFFF)
                    {
                      goto LABEL_256;
                    }
                  }

                  v173 = v297 + 224 * v172;
                  v269 = *(v169 + 312);
                  v174 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v269 ^ (v269 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v269 ^ (v269 >> 30))) >> 27));
                  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v173 + 64, &v269, v174 ^ (v174 >> 31), &v263);
                  v175 = v263.u32[3];
                  if (v263.i32[3] != 0x7FFFFFFF)
                  {
                    v176 = *(v173 + 80);
                    v177 = *(v176 + 40 * v263.u32[3]) & 0x7FFFFFFF;
                    if (v264.i32[0] == 0x7FFFFFFF)
                    {
                      *(*(v173 + 72) + 4 * v263.u32[2]) = v177;
                      v175 = v263.u32[3];
                    }

                    else
                    {
                      *(v176 + 40 * v264.u32[0]) = *(v176 + 40 * v264.u32[0]) & 0x80000000 | v177;
                    }

                    *(v176 + 40 * v175) = *(v173 + 100);
                    --*(v173 + 92);
                    v178 = *(v173 + 104) + 1;
                    *(v173 + 100) = v175;
                    *(v173 + 104) = v178;
                  }
                }
              }

LABEL_256:
              v168 = *&v305[16];
              if (*(&v306 + 1) <= (v165 + 1))
              {
                v179 = v165 + 1;
              }

              else
              {
                v179 = *(&v306 + 1);
              }

              while (v179 - 1 != v165)
              {
                LODWORD(v165) = v165 + 1;
                if ((*(*&v305[16] + 24 * v165 + 8) & 0x80000000) != 0)
                {
                  goto LABEL_263;
                }
              }

              LODWORD(v165) = v179;
LABEL_263:
              ;
            }

            while (v165 != v164);
          }

          re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v305);
          v261 = v298;
          if (v298)
          {
            v181 = 0;
            v182 = v297;
            v183 = &v259[v262];
            while (1)
            {
              v184 = *v182;
              v182 += 56;
              if (v184 < 0)
              {
                break;
              }

              if (v298 == ++v181)
              {
                LODWORD(v181) = v298;
                break;
              }
            }
          }

          else
          {
            LODWORD(v181) = 0;
            v183 = &v259[v262];
          }

          v185 = v298;
          if (v181 != v298)
          {
            v186 = v297;
            do
            {
              v187 = v186 + 224 * v181 + 16;
              re::StackScratchAllocator::StackScratchAllocator(v305);
              LODWORD(v265) = 0;
              v263 = 0u;
              v264 = 0u;
              *(&v265 + 4) = 0x7FFFFFFFLL;
              re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(&v263, v305, 3);
              if (v262)
              {
                v188 = v259;
                do
                {
                  v189 = *v188;
                  if ((*v188)[1].i8[9] == 5)
                  {
                    v190 = *(v189[1].i64[0] + 312);
                    v304 = v190;
                    if (*(v187 + 48))
                    {
                      v191 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v190 ^ (v190 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v190 ^ (v190 >> 30))) >> 27));
                      v192 = v191 ^ (v191 >> 31);
                      v193 = *(*(v187 + 56) + 4 * (v192 % *(v187 + 72)));
                      if (v193 != 0x7FFFFFFF)
                      {
                        v194 = *(v187 + 64);
                        while (*(v194 + 40 * v193 + 8) != v190)
                        {
                          v193 = *(v194 + 40 * v193) & 0x7FFFFFFF;
                          if (v193 == 0x7FFFFFFF)
                          {
                            goto LABEL_294;
                          }
                        }

                        re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v187 + 48, &v304, v192, &v269);
                        v195 = 0;
                        v196 = *(v187 + 64) + 40 * HIDWORD(v270);
                        v197 = *(v196 + 24);
                        *&v303 = *(v196 + 16);
                        *(&v303 + 1) = v197;
                        do
                        {
                          v198 = *(&v303 + v195);
                          if (v198)
                          {
                            v269 = 0;
                            v270 = 0;
                            v271 = 0;
                            if (HIDWORD(v270) == 0x7FFFFFFF)
                            {
                              v199 = re::HashTable<unsigned long long,computeAndSaveSortPointPerRPG(re::MeshSortingCollection &,re::Slice<re::ecs2::MeshSortingComponent *> &)::SimpleAverageAccumulator,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v263, v270, v269);
                              *(v199 + 8) = v198;
                              *(v199 + 16) = 0u;
                              *(v199 + 32) = 0u;
                              ++DWORD2(v265);
                            }

                            v200 = v264.i64[0];
                            v201 = (v264.i64[0] + (HIDWORD(v270) << 6));
                            v201[2] = vaddq_f32(v189[20], v201[2]);
                            ++v201[1].i64[1];
                            if (re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::onceToken != -1)
                            {
                              dispatch_once(&re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::onceToken, &__block_literal_global_26);
                            }

                            if (re::GraphicsFeatureFlags::enableOptOutFadeGroupInnerDistance(void)::gEnableOptOutFadeGroupInnerDistance == 1 && v198 == v197)
                            {
                              v202 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v304 ^ (v304 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v304 ^ (v304 >> 30))) >> 27));
                              re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v187, &v304, v202 ^ (v202 >> 31), &v269);
                              if (HIDWORD(v270) != 0x7FFFFFFF)
                              {
                                if (*(*(v187 + 16) + (HIDWORD(v270) << 7) + 16))
                                {
                                  *(v200 + (HIDWORD(v270) << 6) + 16) = 1;
                                }
                              }
                            }
                          }

                          v195 += 8;
                        }

                        while (v195 != 16);
                        v183 = &v259[v262];
                      }
                    }
                  }

LABEL_294:
                  ++v188;
                }

                while (v188 != v183);
              }

              v203 = *(v187 + 176);
              if (v203)
              {
                v204 = 0;
                v205 = *(v187 + 160);
                while (1)
                {
                  v206 = *v205;
                  v205 += 44;
                  if (v206 < 0)
                  {
                    break;
                  }

                  if (v203 == ++v204)
                  {
                    LODWORD(v204) = *(v187 + 176);
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v204) = 0;
              }

              if (v204 != v203)
              {
                v207 = *(v187 + 160);
                do
                {
                  v208 = (v207 + 176 * v204);
                  if (HIDWORD(v270) == 0x7FFFFFFF)
                  {
                    v210 = v208[1];
                    v211 = v208[2];
                    v212 = vcgtq_f32(v210, v211);
                    v212.i32[3] = v212.i32[2];
                    v213 = vmaxvq_u32(v212);
                    v214 = vaddq_f32(v210, v211);
                    v211.i64[0] = 0x3F0000003F000000;
                    v211.i64[1] = 0x3F0000003F000000;
                    v215 = vmulq_f32(v214, v211);
                    v216 = v215.i64[1];
                    if (v213 >= 0)
                    {
                      v217 = v215.i64[0];
                    }

                    else
                    {
                      v217 = 0;
                    }

                    if (v213 < 0)
                    {
                      v216 = 0;
                    }

                    v208[4].i64[0] = v217;
                    v208[4].i64[1] = v216;
                  }

                  else
                  {
                    v218 = (v264.i64[0] + (HIDWORD(v270) << 6));
                    *v209.i32 = v218[1].u64[1];
                    v208[4] = vdivq_f32(v218[2], vdupq_lane_s32(v209, 0));
                    v208[5].i16[0] = v218[1].i64[1];
                    v208[5].i8[2] = v218[1].i8[0];
                  }

                  if (*(v187 + 176) <= (v204 + 1))
                  {
                    v219 = v204 + 1;
                  }

                  else
                  {
                    v219 = *(v187 + 176);
                  }

                  v207 = *(v187 + 160);
                  while (v219 - 1 != v204)
                  {
                    LODWORD(v204) = v204 + 1;
                    if ((*(v207 + 176 * v204) & 0x80000000) != 0)
                    {
                      goto LABEL_319;
                    }
                  }

                  LODWORD(v204) = v219;
LABEL_319:
                  ;
                }

                while (v204 != v203);
              }

              re::HashTable<unsigned long long,computeAndSaveSortPointPerRPG(re::MeshSortingCollection &,re::Slice<re::ecs2::MeshSortingComponent *> &)::SimpleAverageAccumulator,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(&v263);
              re::StackScratchAllocator::~StackScratchAllocator(v305);
              v183 = &v259[v262];
              if (v262)
              {
                v220 = 8 * v262;
                v221 = v259;
                do
                {
                  v222 = *v221;
                  if (*(*v221 + 432) == 1)
                  {
                    v263.i64[0] = *(*(v222 + 16) + 312);
                    v223 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v263.i64[0] ^ (v263.i64[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v263.i64[0] ^ (v263.i64[0] >> 30))) >> 27));
                    v180 = re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v187 + 48, &v263, v223 ^ (v223 >> 31), v305);
                    if (*&v305[12] != 0x7FFFFFFF)
                    {
                      v224 = *(v187 + 64) + 40 * *&v305[12];
                      v226 = *(v224 + 16);
                      v225 = (v224 + 16);
                      if (v226)
                      {
                        v180 = re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v187 + 144, v225);
                        if (v180)
                        {
                          if ((*(v180 + 80) & 1) == 0)
                          {
                            v227 = *(*(v222 + 16) + 312);
                            v229 = *(v222 + 464);
                            *&v305[15] = *(v222 + 448);
                            v228 = *&v305[15];
                            v306 = v229;
                            *(v180 + 80) = 1;
                            *(v180 + 96) = v228;
                            *(v180 + 112) = v229;
                            *(v180 + 128) = v227;
                          }
                        }
                      }

                      v231 = v225[1];
                      v230 = v225 + 1;
                      if (v231)
                      {
                        v180 = re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v187 + 144, v230);
                        if (v180)
                        {
                          if ((*(v180 + 80) & 1) == 0)
                          {
                            v232 = *(*(v222 + 16) + 312);
                            v234 = *(v222 + 464);
                            *&v305[15] = *(v222 + 448);
                            v233 = *&v305[15];
                            v306 = v234;
                            *(v180 + 80) = 1;
                            *(v180 + 96) = v233;
                            *(v180 + 112) = v234;
                            *(v180 + 128) = v232;
                          }
                        }
                      }
                    }
                  }

                  ++v221;
                  v220 -= 8;
                }

                while (v220);
              }

              v185 = v298;
              if (v298 <= v181 + 1)
              {
                v235 = v181 + 1;
              }

              else
              {
                v235 = v298;
              }

              v186 = v297;
              while (v235 - 1 != v181)
              {
                LODWORD(v181) = v181 + 1;
                if ((*(v297 + 224 * v181) & 0x80000000) != 0)
                {
                  goto LABEL_341;
                }
              }

              LODWORD(v181) = v235;
LABEL_341:
              ;
            }

            while (v181 != v261);
          }

          v236 = v301;
          if (v185)
          {
            v237 = 0;
            v238 = v297;
            while (1)
            {
              v239 = *v238;
              v238 += 56;
              if (v239 < 0)
              {
                break;
              }

              if (v185 == ++v237)
              {
                LODWORD(v237) = v185;
                break;
              }
            }
          }

          else
          {
            LODWORD(v237) = 0;
          }

          if (v237 != v185)
          {
            v240 = v297;
            v241 = v185;
            do
            {
              v242 = v240 + 224 * v237;
              if (*(v242 + 140) || *(v242 + 188))
              {
                re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v302, *(v242 + 8), v301, v305);
                v263.i64[0] = *v305 >> 1;
                v243 = **(re::RenderFrameData::stream((v236 + 264), &v263) + 48);
                v180 = (*(v243 + 968))();
                if (v305[0])
                {
                  if (v305[0])
                  {
                  }
                }

                v241 = v298;
                v240 = v297;
              }

              if (v241 <= v237 + 1)
              {
                v244 = v237 + 1;
              }

              else
              {
                v244 = v241;
              }

              while (v244 - 1 != v237)
              {
                LODWORD(v237) = v237 + 1;
                if ((*(v240 + 224 * v237) & 0x80000000) != 0)
                {
                  goto LABEL_363;
                }
              }

              LODWORD(v237) = v244;
LABEL_363:
              ;
            }

            while (v237 != v185);
          }

          if (v275)
          {
            if (v275)
            {
            }
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v277);
          v245 = re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(&v281);
          v3 = a1;
          v6 = v248;
          if (v284[0])
          {
            if (v287)
            {
              (*(*v284[0] + 40))(v245);
            }
          }

          re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(v288);
          re::StackScratchAllocator::~StackScratchAllocator(v291);
          re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v292);
          re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v296);
        }

        ++v6;
      }

      while (v6 != v249);
    }
  }
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 176 * v6 + 16;
  }
}

uint64_t *re::HashTable<unsigned long long,computeAndSaveSortPointPerRPG(re::MeshSortingCollection &,re::Slice<re::ecs2::MeshSortingComponent *> &)::SimpleAverageAccumulator,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = *(a1 + 8);
    if (v3)
    {
      v4 = a1[2];
      do
      {
        if ((*v4 & 0x80000000) != 0)
        {
          *v4 &= ~0x80000000;
        }

        v4 += 16;
        --v3;
      }

      while (v3);
    }

    (*(*v2 + 40))(v2, a1[1]);
    *(a1 + 8) = 0;
    *a1 = 0u;
    *(a1 + 1) = 0u;
    *(a1 + 36) = 0x7FFFFFFFLL;
  }

  return a1;
}

uint64_t re::ecs2::MeshSortingSystem::getQualifiedComponentForSorting(re::ecs2::MeshSortingSystem *this, const re::ecs2::EntityComponentCollection *a2)
{
  result = *(this + 18);
  if (!result)
  {
    result = re::ecs2::EntityComponentCollection::get(this, re::ecs2::ComponentImpl<re::ecs2::VFXSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (!result)
    {
      result = re::ecs2::EntityComponentCollection::get(this, re::ecs2::ComponentImpl<re::ecs2::VFXEmitterComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (result)
      {
        return *(result + 32);
      }
    }
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v11, a1, *a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31));
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 224 * HIDWORD(v12) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
  v8 = *a2;
  *(v7 + 16) = 0u;
  v9 = v7 + 16;
  *(v7 + 8) = v8;
  *(v7 + 48) = 0;
  *(v7 + 32) = 0u;
  *(v7 + 52) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 16), a3);
  *(v7 + 96) = 0;
  *(v7 + 80) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 100) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 64), (a3 + 48));
  *(v7 + 144) = 0;
  *(v7 + 128) = 0u;
  *(v7 + 112) = 0u;
  *(v7 + 148) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v7 + 112), (a3 + 96));
  *(v7 + 160) = 0u;
  v7 += 160;
  *(v7 + 32) = 0;
  *(v7 + 16) = 0u;
  *(v7 + 36) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v7, (a3 + 144));
  *(v7 + 48) = *(a3 + 192);
  ++*(a1 + 40);
  return v9;
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, uint64_t a3)
{
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  result = re::HashTable<unsigned long long,re::PeerTransferReport,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v14);
  if (HIDWORD(v15) == 0x7FFFFFFF)
  {
    result = re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v15, v14);
    *(result + 8) = *a2;
    *(result + 16) = *a3;
    *(result + 64) = 0;
    *(result + 56) = 0;
    *(result + 40) = 0;
    *(result + 48) = 0;
    *(result + 32) = 0;
    v8 = *(a3 + 24);
    *(result + 32) = *(a3 + 16);
    *(result + 40) = v8;
    *(a3 + 16) = 0;
    *(a3 + 24) = 0;
    v9 = *(result + 48);
    *(result + 48) = *(a3 + 32);
    *(a3 + 32) = v9;
    v10 = *(result + 64);
    *(result + 64) = *(a3 + 48);
    *(a3 + 48) = v10;
    ++*(a3 + 40);
    ++*(result + 56);
    *(result + 104) = 0;
    *(result + 80) = 0;
    *(result + 88) = 0;
    *(result + 72) = 0;
    *(result + 96) = 0;
    v11 = *(a3 + 64);
    *(result + 72) = *(a3 + 56);
    *(result + 80) = v11;
    *(a3 + 56) = 0;
    *(a3 + 64) = 0;
    v12 = *(result + 88);
    *(result + 88) = *(a3 + 72);
    *(a3 + 72) = v12;
    v13 = *(result + 104);
    *(result + 104) = *(a3 + 88);
    *(a3 + 88) = v13;
    ++*(a3 + 80);
    ++*(result + 96);
    LODWORD(v13) = *(a3 + 96);
    *(result + 112) = v13;
    if (v13 == 1)
    {
      *(result + 116) = *(a3 + 100);
    }

    ++*(a1 + 40);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, void *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::FrameAnalysisManager::RenderState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

__n128 re::ecs2::MeshSortingSystem::updateSceneInternal(re::ecs2::Scene *,re::ecs2::System::UpdateContext)const::$_0::operator()(uint64_t a1, unint64_t a2, unint64_t a3, char a4, char a5)
{
  v32 = *MEMORY[0x1E69E9840];
  v27 = a3;
  if (*re::ecs2::RenderOptions::forEntity(*(a1 + 8), a2) == 1)
  {
    (*(***(a1 + 56) + 8))(&v21);
    if (v21)
    {
      v10 = *(&v21 + 1);
    }

    else
    {
      v10 = 0;
    }

    v26 = v10;
    v11 = **(a1 + 40);
    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(**(a1 + 16), v10, **(a1 + 24), &v21);
    v12 = (*(*v11 + 48))(v11, &v21, *(**(a1 + 24) + 384));
    v13 = v12;
    if (v21)
    {
      if (v21)
      {
      }
    }

    if (v13)
    {
      v14 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a3 ^ (a3 >> 30))) >> 27));
      re::HashTable<unsigned long long,re::ecs2::RenderPassGroupBoundsInfo,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v13, &v27, v14 ^ (v14 >> 31), &v21);
      if (HIDWORD(v21) != 0x7FFFFFFF)
      {
        v15 = *(v13 + 16) + 80 * HIDWORD(v21);
        v16 = *(a1 + 48);
        re::MeshSortingCollection::MeshSortingCollection(&v21, *(a1 + 32));
        v17 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v16, &v26, &v21);
        re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v25);
        re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v24);
        re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v23);
        re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v21);
        v21 = *(v15 + 16);
        v22 = *(v15 + 32);
        v18 = *(v15 + 48);
        memset(&v31[13], 0, 19);
        v28 = 0;
        v29 = 0;
        v30 = 0;
        re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v17 + 144, &v27, (0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27))) ^ ((0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27))) >> 31), &v28);
        if (HIDWORD(v29) == 0x7FFFFFFF)
        {
          v19 = re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(v17 + 144, v29, v28);
          *(v19 + 8) = v27;
          *(v19 + 16) = v21;
          *(v19 + 32) = v22;
          result = *v31;
          v20 = *&v31[16];
          *(v19 + 51) = *v31;
          *(v19 + 48) = a4;
          *(v19 + 49) = a5;
          *(v19 + 50) = v18;
          *(v19 + 67) = v20;
          *(v19 + 96) = 0;
          ++*(v17 + 184);
        }
      }
    }
  }

  return result;
}

void **re::internal::MeshSortGroupFixupTable::fixupMeshSortGroupsForEntity(void **this, re::ecs2::Entity *a2)
{
  result = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSortingComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (result)
  {
    result = re::internal::MeshSortGroupFixupTable::fixupMeshSortGroup(this, result);
  }

  v5 = *(a2 + 43);
  if (v5)
  {
    v6 = *(a2 + 45);
    v7 = 8 * v5;
    do
    {
      v8 = *v6++;
      result = re::internal::MeshSortGroupFixupTable::fixupMeshSortGroupsForEntity(this, v8, 0);
      v7 -= 8;
    }

    while (v7);
  }

  return result;
}

void **re::internal::MeshSortGroupFixupTable::fixupMeshSortGroup(void **this, re::ecs2::MeshSortingComponent *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v2 = 32;
  if (*(a2 + 304))
  {
    v2 = 176;
  }

  v3 = a2 + v2;
  v4 = *v3;
  v23 = v4;
  if (v4)
  {
    v6 = this;
    if (!*this || (v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v4 ^ (v4 >> 30))) >> 27)), v8 = *(this[1] + (v7 ^ (v7 >> 31)) % *(this + 6)), v8 == 0x7FFFFFFF))
    {
LABEL_9:
      v10 = v3[8];
      v11 = v3[9];
      v12 = v3[16];
      if (v12)
      {
        v25 = *(v3 + 2);
      }

      v19 = 0;
      v21 = 0;
      v22 = 0;
      uuid_generate_random(out);
      v16 = (*&out[8] + (*out << 6) + (*out >> 2) - 0x61C8864680B583E9) ^ *out;
      v17 = v10;
      v18 = v11;
      if (v12)
      {
        v19 = 1;
        v20 = v25;
      }

      re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(v6, &v23, &v16);
    }

    else
    {
      v9 = this[2];
      while (*&v9[40 * v8 + 2] != v4)
      {
        v8 = v9[40 * v8] & 0x7FFFFFFF;
        if (v8 == 0x7FFFFFFF)
        {
          goto LABEL_9;
        }
      }
    }

    v13 = *(a2 + 22);
    v14 = re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](v6, &v23);
    if (v13)
    {
      v15 = (a2 + 176);
    }

    else
    {
      v15 = (a2 + 32);
    }

    re::ecs2::MeshSortGroupToken::operator=(v15, v14);
    return re::ecs2::Component::markDirty(a2);
  }

  return this;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addNew(uint64_t a1, void *a2, uint64_t a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 160 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = re::ecs2::MeshSortGroupToken::MeshSortGroupToken(v7 + 16, a3);
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::operator[](uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return *(a1 + 16) + 160 * v6 + 16;
}

void re::ecs2::MeshSortingSystem::~MeshSortingSystem(re::ecs2::MeshSortingSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::MeshSortingCollection *re::MeshSortingCollection::MeshSortingCollection(re::MeshSortingCollection *this, re::Allocator *a2)
{
  *(this + 8) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 36) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(this, a2, 3);
  *(this + 20) = 0;
  *(this + 4) = 0u;
  *(this + 3) = 0u;
  *(this + 84) = 0x7FFFFFFFLL;
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(this + 48, a2, 3);
  *(this + 32) = 0;
  *(this + 7) = 0u;
  *(this + 6) = 0u;
  *(this + 132) = 0x7FFFFFFFLL;
  re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(this + 96, a2, 3);
  *(this + 44) = 0;
  *(this + 10) = 0u;
  *(this + 9) = 0u;
  *(this + 180) = 0x7FFFFFFFLL;
  re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(this + 144, a2, 3);
  *(this + 96) = 0;
  return this;
}

double re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v8 = (v6 + v4);
          *v8 = v7 & 0x7FFFFFFF;
          v9 = (v8 + 8);
          re::DynamicArray<unsigned long>::deinit((v8 + 18));
          re::DynamicArray<unsigned long>::deinit(v9);
          v3 = *(a1 + 8);
        }

        v4 += 128;
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

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 176 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 176 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 176 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 176 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v30, 0, 36);
          *&v30[36] = 0x7FFFFFFFLL;
          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::init(v30, v9, v8);
          v11 = *v30;
          *v30 = *a1;
          *a1 = v11;
          v12 = *&v30[16];
          v13 = *(a1 + 16);
          *&v30[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v30[24];
          *&v30[24] = *(a1 + 24);
          v14 = *&v30[32];
          *(a1 + 24) = v15;
          ++*&v30[40];
          v16 = v14;
          if (v14)
          {
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v17 = re::HashTable<unsigned long long,re::MeshSortingCollection::RenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 160) % *(a1 + 24));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 32);
                v19 = *(v13 + 48);
                v20 = *(v13 + 64);
                *(v17 + 79) = *(v13 + 79);
                *(v17 + 48) = v19;
                *(v17 + 64) = v20;
                *(v17 + 32) = v18;
                *(v17 + 16) = *(v13 + 16);
                v21 = *(v13 + 96);
                *(v17 + 96) = v21;
                if (v21 == 1)
                {
                  v22 = *(v13 + 112);
                  v23 = *(v13 + 144);
                  *(v17 + 128) = *(v13 + 128);
                  *(v17 + 144) = v23;
                  *(v17 + 112) = v22;
                }
              }

              v13 += 176;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit(v30);
        }
      }

      else
      {
        if (v8)
        {
          v26 = 2 * v7;
        }

        else
        {
          v26 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v24 = *(a1 + 16);
    v25 = *(v24 + 176 * v5);
  }

  else
  {
    v24 = *(a1 + 16);
    v25 = *(v24 + 176 * v5);
    *(a1 + 36) = v25 & 0x7FFFFFFF;
  }

  v27 = v24 + 176 * v5;
  *v27 = v25 | 0x80000000;
  v28 = *(a1 + 8);
  *v27 = *(v28 + 4 * a2) | 0x80000000;
  *(v28 + 4 * a2) = v5;
  *(v27 + 160) = a3;
  ++*(a1 + 28);
  return v24 + 176 * v5;
}

double re::make::shared::unsafelyInplace<re::ecs2::MeshSortingComponent>(ArcSharedObject *a1)
{
  *(a1 + 29) = 0u;
  *(a1 + 30) = 0u;
  *(a1 + 27) = 0u;
  *(a1 + 28) = 0u;
  *(a1 + 25) = 0u;
  *(a1 + 26) = 0u;
  *(a1 + 23) = 0u;
  *(a1 + 24) = 0u;
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
  v1 = (a1 + 320);
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD27E0;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 80) = 0;
  *(v2 + 112) = 0;
  *(v2 + 160) = -NAN;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
  *(v2 + 192) = 0;
  *(v2 + 224) = 0;
  *(v2 + 256) = 0;
  *(v2 + 304) = 0;
  *(v2 + 408) = 0;
  *(v2 + 416) = 0;
  *(v2 + 432) = 0;
  *(v2 + 480) = 0;
  result = 0.0;
  *(v1 + 28) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0u;
  *(v2 + 400) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs220MeshSortingComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::HashTable<unsigned long long,computeAndSaveSortPointPerRPG(re::MeshSortingCollection &,re::Slice<re::ecs2::MeshSortingComponent *> &)::SimpleAverageAccumulator,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
                v17 = re::HashTable<unsigned long long,computeAndSaveSortPointPerRPG(re::MeshSortingCollection &,re::Slice<re::ecs2::MeshSortingComponent *> &)::SimpleAverageAccumulator,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 48) % *(a1 + 24));
                *(v17 + 8) = *(v13 + 8);
                v18 = *(v13 + 32);
                *(v17 + 16) = *(v13 + 16);
                *(v17 + 32) = v18;
              }

              v13 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,computeAndSaveSortPointPerRPG(re::MeshSortingCollection &,re::Slice<re::ecs2::MeshSortingComponent *> &)::SimpleAverageAccumulator,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::~HashTable(v25);
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
    v20 = *(v19 + (v5 << 6));
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + (v5 << 6));
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + (v5 << 6);
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v22 + 48) = a3;
  *(v23 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v19 + (v5 << 6);
}

unint64_t std::__introsort<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **,false>(unint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = a2 - v8;
    if (v9 <= 2)
    {
      if (v9 < 2)
      {
        return result;
      }

      if (v9 == 2)
      {
        v76 = *(a2 - 1);
        v77 = *v8;
        if (*(v76 + 160) < *(*v8 + 160))
        {
          *v8 = v76;
          *(a2 - 1) = v77;
        }

        return result;
      }

      goto LABEL_10;
    }

    if (v9 == 3)
    {
      break;
    }

    if (v9 == 4)
    {
      v84 = v8 + 1;
      v85 = v8[1];
      v86 = v8 + 2;
      v87 = v8[2];
      v88 = *v8;
      v89 = *(v85 + 40);
      v90 = *(*v8 + 160);
      v91 = *(v87 + 160);
      if (v89 >= v90)
      {
        if (v91 >= v89)
        {
          goto LABEL_177;
        }

        *v84 = v87;
        *v86 = v85;
        v92 = v8;
        v93 = (v8 + 1);
        result = v85;
        if (v91 < v90)
        {
          goto LABEL_169;
        }
      }

      else
      {
        v92 = v8;
        v93 = (v8 + 2);
        result = *v8;
        if (v91 >= v89)
        {
          *v8 = v85;
          v8[1] = v88;
          v92 = v8 + 1;
          v93 = (v8 + 2);
          result = v88;
          if (v91 >= v90)
          {
LABEL_177:
            v85 = v87;
            goto LABEL_178;
          }
        }

LABEL_169:
        *v92 = v87;
        *v93 = v88;
        v85 = result;
      }

LABEL_178:
      v141 = *(a2 - 1);
      if (*(v141 + 160) < *(v85 + 40))
      {
        *v86 = v141;
        *(a2 - 1) = v85;
        v142 = *v86;
        v143 = *v84;
        v144 = *(v142 + 160);
        if (v144 < *(v143 + 160))
        {
          v8[1] = v142;
          v8[2] = v143;
          v145 = *v8;
          if (v144 < *(*v8 + 160))
          {
            *v8 = v142;
            v8[1] = v145;
          }
        }
      }

      return result;
    }

    if (v9 == 5)
    {

      return std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **,0>(v8, v8 + 1, v8 + 2, v8 + 3, a2 - 1);
    }

LABEL_10:
    if (v9 <= 23)
    {
      v94 = v8 + 1;
      v96 = v8 == a2 || v94 == a2;
      if (a4)
      {
        if (!v96)
        {
          v97 = 8;
          v98 = v8;
          do
          {
            v100 = *v98;
            v99 = v98[1];
            v98 = v94;
            v101 = *(v99 + 160);
            if (v101 < *(v100 + 160))
            {
              v102 = v97;
              while (1)
              {
                *(v8 + v102) = v100;
                v103 = v102 - 8;
                if (v102 == 8)
                {
                  break;
                }

                v100 = *(v8 + v102 - 16);
                v102 -= 8;
                if (v101 >= *(v100 + 160))
                {
                  v104 = (v8 + v103);
                  goto LABEL_130;
                }
              }

              v104 = v8;
LABEL_130:
              *v104 = v99;
            }

            v94 = v98 + 1;
            v97 += 8;
          }

          while (v98 + 1 != a2);
        }
      }

      else if (!v96)
      {
        do
        {
          v138 = *v7;
          v137 = v7[1];
          v7 = v94;
          v139 = *(v137 + 160);
          if (v139 < *(v138 + 160))
          {
            v140 = v7;
            do
            {
              *v140 = v138;
              v138 = *(v140 - 2);
              --v140;
            }

            while (v139 < *(v138 + 160));
            *v140 = v137;
          }

          v94 = v7 + 1;
        }

        while (v7 + 1 != a2);
      }

      return result;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v105 = (v9 - 2) >> 1;
        v106 = v105;
        do
        {
          v107 = v106;
          if (v105 >= v106)
          {
            v108 = (2 * v106) | 1;
            v109 = &v8[v108];
            v110 = *v109;
            if (2 * v107 + 2 < v9 && *(v110 + 160) < *(v109[1] + 160))
            {
              v110 = v109[1];
              ++v109;
              v108 = 2 * v107 + 2;
            }

            result = &v8[v107];
            v111 = *result;
            v112 = *(*result + 160);
            if (*(v110 + 160) >= v112)
            {
              do
              {
                v113 = v109;
                *result = v110;
                if (v105 < v108)
                {
                  break;
                }

                v114 = (2 * v108) | 1;
                v109 = &v8[v114];
                v115 = 2 * v108 + 2;
                v110 = *v109;
                if (v115 < v9 && *(v110 + 160) < *(v109[1] + 160))
                {
                  v110 = v109[1];
                  ++v109;
                  v114 = v115;
                }

                result = v113;
                v108 = v114;
              }

              while (*(v110 + 160) >= v112);
              *v113 = v111;
            }
          }

          v106 = v107 - 1;
        }

        while (v107);
        do
        {
          v116 = 0;
          v117 = *v8;
          v118 = v8;
          do
          {
            v119 = &v118[v116];
            v120 = v119 + 1;
            v121 = v119[1];
            v122 = (2 * v116) | 1;
            v116 = 2 * v116 + 2;
            if (v116 >= v9)
            {
              v116 = v122;
            }

            else
            {
              v125 = v119[2];
              v123 = v119 + 2;
              v124 = v125;
              result = *(v121 + 160);
              if (result >= *(v125 + 160))
              {
                v116 = v122;
              }

              else
              {
                v121 = v124;
                v120 = v123;
              }
            }

            *v118 = v121;
            v118 = v120;
          }

          while (v116 <= ((v9 - 2) >> 1));
          if (v120 == --a2)
          {
            *v120 = v117;
          }

          else
          {
            *v120 = *a2;
            *a2 = v117;
            v126 = (v120 - v8 + 8) >> 3;
            v127 = v126 < 2;
            v128 = v126 - 2;
            if (!v127)
            {
              v129 = v128 >> 1;
              v130 = &v8[v129];
              v131 = *v130;
              v132 = *v120;
              v133 = *(*v120 + 160);
              if (*(*v130 + 160) < v133)
              {
                do
                {
                  v134 = v130;
                  *v120 = v131;
                  if (!v129)
                  {
                    break;
                  }

                  v129 = (v129 - 1) >> 1;
                  v130 = &v8[v129];
                  v131 = *v130;
                  v120 = v134;
                }

                while (*(*v130 + 160) < v133);
                *v134 = v132;
              }
            }
          }

          v127 = v9-- <= 2;
        }

        while (!v127);
      }

      return result;
    }

    v10 = &v8[v9 >> 1];
    v11 = v10;
    v12 = *(a2 - 1);
    v13 = *(v12 + 160);
    if (v9 >= 0x81)
    {
      v14 = *v10;
      v15 = *v8;
      v16 = *(*v10 + 160);
      v17 = *(*v8 + 160);
      if (v16 >= v17)
      {
        if (v13 < v16)
        {
          *v10 = v12;
          *(a2 - 1) = v14;
          v22 = *v8;
          if (*(*v10 + 160) < *(*v8 + 160))
          {
            *v8 = *v10;
            *v10 = v22;
          }
        }
      }

      else
      {
        if (v13 < v16)
        {
          *v8 = v12;
          goto LABEL_27;
        }

        *v8 = v14;
        *v10 = v15;
        v24 = *(a2 - 1);
        if (*(v24 + 160) < v17)
        {
          *v10 = v24;
LABEL_27:
          *(a2 - 1) = v15;
        }
      }

      v25 = v10 - 1;
      v26 = *(v10 - 1);
      v27 = v8[1];
      v28 = *(v26 + 160);
      v29 = *(v27 + 160);
      v30 = *(a2 - 2);
      v31 = *(v30 + 160);
      if (v28 >= v29)
      {
        if (v31 < v28)
        {
          *v25 = v30;
          *(a2 - 2) = v26;
          v32 = v8[1];
          if (*(*v25 + 160) < *(v32 + 160))
          {
            v8[1] = *v25;
            *v25 = v32;
          }
        }
      }

      else
      {
        if (v31 < v28)
        {
          v8[1] = v30;
          goto LABEL_39;
        }

        v8[1] = v26;
        *v25 = v27;
        v34 = *(a2 - 2);
        if (*(v34 + 160) < v29)
        {
          *v25 = v34;
LABEL_39:
          *(a2 - 2) = v27;
        }
      }

      v37 = v10[1];
      v35 = v10 + 1;
      v36 = v37;
      v38 = v8[2];
      v39 = *(v37 + 160);
      v40 = *(v38 + 160);
      v41 = *(a2 - 3);
      v42 = *(v41 + 160);
      if (v39 >= v40)
      {
        if (v42 < v39)
        {
          *v35 = v41;
          *(a2 - 3) = v36;
          v43 = v8[2];
          if (*(*v35 + 160) < *(v43 + 160))
          {
            v8[2] = *v35;
            *v35 = v43;
          }
        }
      }

      else
      {
        if (v42 < v39)
        {
          v8[2] = v41;
          goto LABEL_48;
        }

        v8[2] = v36;
        *v35 = v38;
        v44 = *(a2 - 3);
        if (*(v44 + 160) < v40)
        {
          *v35 = v44;
LABEL_48:
          *(a2 - 3) = v38;
        }
      }

      v45 = *v11;
      v46 = *v25;
      v47 = *(*v11 + 160);
      v48 = *(*v25 + 160);
      v49 = *v35;
      v50 = *(*v35 + 160);
      if (v47 >= v48)
      {
        if (v50 >= v47)
        {
          goto LABEL_56;
        }

        *v11 = v49;
        *v35 = v45;
        v35 = v11;
        v45 = v46;
        if (v50 >= v48)
        {
          v45 = v49;
          goto LABEL_56;
        }
      }

      else if (v50 >= v47)
      {
        *v25 = v45;
        *v11 = v46;
        v25 = v11;
        v45 = v49;
        if (v50 >= v48)
        {
          v45 = v46;
LABEL_56:
          v51 = *v8;
          *v8 = v45;
          *v11 = v51;
          goto LABEL_57;
        }
      }

      *v25 = v49;
      *v35 = v46;
      goto LABEL_56;
    }

    v18 = *v8;
    v19 = *v11;
    v20 = *(*v8 + 160);
    v21 = *(*v11 + 160);
    if (v20 >= v21)
    {
      if (v13 < v20)
      {
        *v8 = v12;
        *(a2 - 1) = v18;
        v23 = *v11;
        if (*(*v8 + 160) < *(*v11 + 160))
        {
          *v11 = *v8;
          *v8 = v23;
        }
      }

      goto LABEL_57;
    }

    if (v13 < v20)
    {
      *v11 = v12;
LABEL_36:
      *(a2 - 1) = v19;
      goto LABEL_57;
    }

    *v11 = v18;
    *v8 = v19;
    v33 = *(a2 - 1);
    if (*(v33 + 160) < v21)
    {
      *v8 = v33;
      goto LABEL_36;
    }

LABEL_57:
    --a3;
    v52 = *v8;
    if (a4)
    {
      v53 = *(v52 + 160);
LABEL_60:
      v54 = 0;
      do
      {
        v55 = v8[++v54];
      }

      while (*(v55 + 160) < v53);
      v56 = &v8[v54];
      v57 = a2;
      if (v54 == 1)
      {
        v57 = a2;
        do
        {
          if (v56 >= v57)
          {
            break;
          }

          v59 = *--v57;
        }

        while (*(v59 + 160) >= v53);
      }

      else
      {
        do
        {
          v58 = *--v57;
        }

        while (*(v58 + 160) >= v53);
      }

      if (v56 >= v57)
      {
        v65 = v56 - 1;
      }

      else
      {
        v60 = *v57;
        v61 = &v8[v54];
        v62 = v57;
        do
        {
          *v61 = v60;
          *v62 = v55;
          do
          {
            v63 = v61[1];
            ++v61;
            v55 = v63;
          }

          while (*(v63 + 160) < v53);
          do
          {
            v64 = *--v62;
            v60 = v64;
          }

          while (*(v64 + 160) >= v53);
        }

        while (v61 < v62);
        v65 = v61 - 1;
      }

      if (v65 != v8)
      {
        *v8 = *v65;
      }

      *v65 = v52;
      if (v56 < v57)
      {
        goto LABEL_81;
      }

      v66 = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **>(v8, v65);
      v8 = v65 + 1;
      result = std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **>(v65 + 1, a2);
      if (result)
      {
        a2 = v65;
        if (!v66)
        {
          goto LABEL_2;
        }

        return result;
      }

      if (!v66)
      {
LABEL_81:
        result = std::__introsort<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **,false>(v7, v65, a3, a4 & 1);
        a4 = 0;
        v8 = v65 + 1;
      }
    }

    else
    {
      v53 = *(v52 + 160);
      if (*(*(v8 - 1) + 160) < v53)
      {
        goto LABEL_60;
      }

      if (v53 >= *(*(a2 - 1) + 160))
      {
        v68 = v8 + 1;
        do
        {
          v8 = v68;
          if (v68 >= a2)
          {
            break;
          }

          ++v68;
        }

        while (v53 >= *(*v8 + 160));
      }

      else
      {
        do
        {
          v67 = v8[1];
          ++v8;
        }

        while (v53 >= *(v67 + 160));
      }

      v69 = a2;
      if (v8 < a2)
      {
        v69 = a2;
        do
        {
          v70 = *--v69;
        }

        while (v53 < *(v70 + 160));
      }

      if (v8 < v69)
      {
        v71 = *v8;
        v72 = *v69;
        do
        {
          *v8 = v72;
          *v69 = v71;
          do
          {
            v73 = v8[1];
            ++v8;
            v71 = v73;
          }

          while (v53 >= *(v73 + 160));
          do
          {
            v74 = *--v69;
            v72 = v74;
          }

          while (v53 < *(v74 + 160));
        }

        while (v8 < v69);
      }

      v75 = v8 - 1;
      if (v8 - 1 != v7)
      {
        *v7 = *v75;
      }

      a4 = 0;
      *v75 = v52;
    }
  }

  v78 = *v8;
  v79 = v8[1];
  v80 = *(v79 + 160);
  v81 = *(*v8 + 160);
  v82 = *(a2 - 1);
  v83 = *(v82 + 160);
  if (v80 >= v81)
  {
    if (v83 < v80)
    {
      v8[1] = v82;
      *(a2 - 1) = v79;
      v136 = *v8;
      v135 = v8[1];
      if (*(v135 + 160) < *(*v8 + 160))
      {
        *v8 = v135;
        v8[1] = v136;
      }
    }
  }

  else
  {
    if (v83 >= v80)
    {
      *v8 = v79;
      v8[1] = v78;
      v146 = *(a2 - 1);
      if (*(v146 + 160) >= v81)
      {
        return result;
      }

      v8[1] = v146;
    }

    else
    {
      *v8 = v82;
    }

    *(a2 - 1) = v78;
  }

  return result;
}

uint64_t *std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *a2;
  v6 = *result;
  v7 = *(*a2 + 160);
  v8 = *(*result + 160);
  v9 = *a3;
  v10 = *(*a3 + 160);
  if (v7 >= v8)
  {
    if (v10 >= v7)
    {
      v5 = *a3;
    }

    else
    {
      *a2 = v9;
      *a3 = v5;
      v11 = *result;
      if (*(*a2 + 160) < *(*result + 160))
      {
        *result = *a2;
        *a2 = v11;
        v5 = *a3;
      }
    }
  }

  else
  {
    if (v10 < v7)
    {
      *result = v9;
LABEL_9:
      *a3 = v6;
      v5 = v6;
      goto LABEL_11;
    }

    *result = v5;
    *a2 = v6;
    v5 = *a3;
    if (*(*a3 + 160) < v8)
    {
      *a2 = v5;
      goto LABEL_9;
    }
  }

LABEL_11:
  if (*(*a4 + 160) < *(v5 + 160))
  {
    *a3 = *a4;
    *a4 = v5;
    v12 = *a2;
    if (*(*a3 + 160) < *(*a2 + 160))
    {
      *a2 = *a3;
      *a3 = v12;
      v13 = *result;
      if (*(*a2 + 160) < *(*result + 160))
      {
        *result = *a2;
        *a2 = v13;
      }
    }
  }

  v14 = *a4;
  if (*(*a5 + 160) < *(*a4 + 160))
  {
    *a4 = *a5;
    *a5 = v14;
    v15 = *a3;
    if (*(*a4 + 160) < *(*a3 + 160))
    {
      *a3 = *a4;
      *a4 = v15;
      v16 = *a2;
      if (*(*a3 + 160) < *(*a2 + 160))
      {
        *a2 = *a3;
        *a3 = v16;
        v17 = *result;
        if (*(*a2 + 160) < *(*result + 160))
        {
          *result = *a2;
          *a2 = v17;
        }
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:nn200100]<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **>(uint64_t *a1, uint64_t *a2)
{
  v2 = a2 - a1;
  if (v2 > 2)
  {
    if (v2 == 3)
    {
      v5 = *a1;
      v6 = a1[1];
      v7 = *(v6 + 160);
      v8 = *(*a1 + 160);
      v9 = *(a2 - 1);
      v10 = *(v9 + 160);
      if (v7 >= v8)
      {
        if (v10 < v7)
        {
          a1[1] = v9;
          *(a2 - 1) = v6;
          v32 = *a1;
          v31 = a1[1];
          if (*(v31 + 160) < *(*a1 + 160))
          {
            *a1 = v31;
            a1[1] = v32;
          }
        }

        return 1;
      }

      if (v10 >= v7)
      {
        *a1 = v6;
        a1[1] = v5;
        v47 = *(a2 - 1);
        if (*(v47 + 160) >= v8)
        {
          return 1;
        }

        a1[1] = v47;
      }

      else
      {
        *a1 = v9;
      }

      *(a2 - 1) = v5;
      return 1;
    }

    if (v2 != 4)
    {
      if (v2 != 5)
      {
        goto LABEL_13;
      }

      std::__sort5[abi:nn200100]<std::_ClassicAlgPolicy,compressPriorityInGroupUsing(re::DynamicArray<re::ecs2::MeshSortingComponent *> &)::$_0 &,re::ecs2::MeshSortingComponent **,0>(a1, a1 + 1, a1 + 2, a1 + 3, a2 - 1);
      return 1;
    }

    v20 = a1 + 1;
    v21 = a1[1];
    v22 = a1 + 2;
    v23 = a1[2];
    v24 = *a1;
    v25 = *(v21 + 160);
    v26 = *(*a1 + 160);
    v27 = *(v23 + 160);
    if (v25 >= v26)
    {
      if (v27 >= v25)
      {
LABEL_41:
        v21 = v23;
        goto LABEL_42;
      }

      *v20 = v23;
      *v22 = v21;
      v28 = a1;
      v29 = a1 + 1;
      v30 = v21;
      if (v27 >= v26)
      {
LABEL_42:
        v42 = *(a2 - 1);
        if (*(v42 + 160) < *(v21 + 160))
        {
          *v22 = v42;
          *(a2 - 1) = v21;
          v43 = *v22;
          v44 = *v20;
          v45 = *(v43 + 160);
          if (v45 < *(v44 + 160))
          {
            a1[1] = v43;
            a1[2] = v44;
            v46 = *a1;
            if (v45 < *(*a1 + 160))
            {
              *a1 = v43;
              a1[1] = v46;
            }
          }
        }

        return 1;
      }
    }

    else
    {
      v28 = a1;
      v29 = a1 + 2;
      v30 = *a1;
      if (v27 >= v25)
      {
        *a1 = v21;
        a1[1] = v24;
        v28 = a1 + 1;
        v29 = a1 + 2;
        v30 = v24;
        if (v27 >= v26)
        {
          goto LABEL_41;
        }
      }
    }

    *v28 = v23;
    *v29 = v24;
    v21 = v30;
    goto LABEL_42;
  }

  if (v2 < 2)
  {
    return 1;
  }

  if (v2 == 2)
  {
    v3 = *(a2 - 1);
    v4 = *a1;
    if (*(v3 + 160) < *(*a1 + 160))
    {
      *a1 = v3;
      *(a2 - 1) = v4;
    }

    return 1;
  }

LABEL_13:
  v12 = a1 + 2;
  v11 = a1[2];
  v13 = a1[1];
  v14 = *a1;
  v15 = *(v13 + 160);
  v16 = *(*a1 + 160);
  v17 = *(v11 + 160);
  if (v15 >= v16)
  {
    if (v17 >= v15)
    {
      goto LABEL_27;
    }

    a1[1] = v11;
    *v12 = v13;
    v18 = a1;
    v19 = a1 + 1;
LABEL_25:
    if (v17 >= v16)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v18 = a1;
  v19 = a1 + 2;
  if (v17 >= v15)
  {
    *a1 = v13;
    a1[1] = v14;
    v18 = a1 + 1;
    v19 = a1 + 2;
    goto LABEL_25;
  }

LABEL_26:
  *v18 = v11;
  *v19 = v14;
LABEL_27:
  v33 = a1 + 3;
  if (a1 + 3 == a2)
  {
    return 1;
  }

  v34 = 0;
  for (i = 24; ; i += 8)
  {
    v36 = *v33;
    v37 = *v12;
    v38 = *(*v33 + 160);
    if (v38 < *(v37 + 160))
    {
      v39 = i;
      while (1)
      {
        *(a1 + v39) = v37;
        v40 = v39 - 8;
        if (v39 == 8)
        {
          break;
        }

        v37 = *(a1 + v39 - 16);
        v39 -= 8;
        if (v38 >= *(v37 + 160))
        {
          v41 = (a1 + v40);
          goto LABEL_35;
        }
      }

      v41 = a1;
LABEL_35:
      *v41 = v36;
      if (++v34 == 8)
      {
        break;
      }
    }

    v12 = v33++;
    if (v33 == a2)
    {
      return 1;
    }
  }

  return v33 + 1 == a2;
}

double re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = (v6 + v4 + 64);
          re::HashTable<re::ecs2::Entity const*,re::ecs2::BillboardData,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::deinit((v6 + v4 + 160));
          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + 112));
          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
          re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit((v8 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 224;
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

double re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          v8 = v6 + v4;
          *(v6 + v4) = v7 & 0x7FFFFFFF;
          v9 = *(v6 + v4 + 16);
          if (v9)
          {
            if (*(v8 + 48))
            {
              (*(*v9 + 40))(v9);
            }

            *(v8 + 48) = 0;
            *(v6 + v4 + 24) = 0;
            *(v6 + v4 + 32) = 0;
            *(v6 + v4 + 16) = 0;
            ++*(v6 + v4 + 40);
            v3 = *(a1 + 8);
          }
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

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::Function<void ()(void)>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 32;
            do
            {
              if ((*(v17 - 32) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
                v19 = *(v17 - 24);
                *(v18 + 48) = 0;
                *(v18 + 40) = 0;
                *(v18 + 24) = 0;
                *(v18 + 32) = 0;
                *(v18 + 8) = v19;
                *(v18 + 16) = 0;
                v20 = *(v17 - 8);
                *(v18 + 16) = *(v17 - 16);
                *(v18 + 24) = v20;
                *(v17 - 16) = 0;
                *(v17 - 8) = 0;
                v21 = *(v18 + 32);
                *(v18 + 32) = *v17;
                *v17 = v21;
                v22 = *(v18 + 48);
                *(v18 + 48) = *(v17 + 16);
                *(v17 + 16) = v22;
                ++*(v17 + 8);
                ++*(v18 + 40);
              }

              v17 += 64;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::DynamicArray<re::ecs2::MeshSortingComponent *>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 6));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 6);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 56) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 6);
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<unsigned long long,re::UIShadowRenderData::ReceiverData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v25, v9, v8);
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
          if (v14)
          {
            v16 = 0;
            v17 = 224 * v14;
            do
            {
              if ((*(v13 + v16) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + v16 + 216) % *(a1 + 24));
                *(v18 + 8) = *(v13 + v16 + 8);
                *(v18 + 48) = 0;
                *(v18 + 32) = 0u;
                *(v18 + 16) = 0u;
                *(v18 + 52) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v18 + 16), (v13 + v16 + 16));
                *(v18 + 96) = 0;
                *(v18 + 80) = 0u;
                *(v18 + 64) = 0u;
                *(v18 + 100) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v18 + 64), (v13 + v16 + 64));
                *(v18 + 144) = 0;
                *(v18 + 128) = 0u;
                *(v18 + 112) = 0u;
                *(v18 + 148) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap((v18 + 112), (v13 + v16 + 112));
                *(v18 + 160) = 0u;
                v18 += 160;
                *(v18 + 32) = 0;
                *(v18 + 16) = 0u;
                *(v18 + 36) = 0x7FFFFFFFLL;
                re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::swap(v18, (v13 + v16 + 160));
                *(v18 + 48) = *(v13 + v16 + 208);
              }

              v16 += 224;
            }

            while (v17 != v16);
          }

          re::HashTable<unsigned long long,re::MeshSortingCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 224 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 224 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 224 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 216) = a3;
  ++*(a1 + 28);
  return v19 + 224 * v5;
}

uint64_t re::DynamicArray<int>::DynamicArray(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = 0;
  v5 = *(a3 + 8);
  *a1 = a2;
  if (v5)
  {
    re::DynamicArray<int>::setCapacity(a1, v5);
    ++*(a1 + 24);
    re::DynamicArray<float>::copy(a1, 0, *a3, *(a3 + 8));
  }

  else
  {
    re::DynamicArray<int>::setCapacity(a1, 0);
    ++*(a1 + 24);
  }

  return a1;
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v31, 0, 36);
          *&v31[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v31, v9, v8);
          v11 = *v31;
          *v31 = *a1;
          *a1 = v11;
          v12 = *&v31[16];
          v13 = *(a1 + 16);
          *&v31[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v31[24];
          *&v31[24] = *(a1 + 24);
          v14 = *&v31[32];
          *(a1 + 24) = v15;
          ++*&v31[40];
          v16 = v14;
          if (v14)
          {
            v17 = v13 + 64;
            do
            {
              if ((*(v17 - 64) & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 56) % *(a1 + 24));
                *(v18 + 8) = *(v17 - 56);
                *(v18 + 16) = *(v17 - 48);
                *(v18 + 64) = 0;
                *(v18 + 56) = 0;
                *(v18 + 40) = 0;
                *(v18 + 48) = 0;
                *(v18 + 32) = 0;
                v19 = *(v17 - 24);
                *(v18 + 32) = *(v17 - 32);
                *(v18 + 40) = v19;
                *(v17 - 32) = 0;
                *(v17 - 24) = 0;
                v20 = *(v18 + 48);
                *(v18 + 48) = *(v17 - 16);
                *(v17 - 16) = v20;
                v21 = *(v18 + 64);
                *(v18 + 64) = *v17;
                *v17 = v21;
                ++*(v17 - 8);
                ++*(v18 + 56);
                *(v18 + 104) = 0;
                *(v18 + 80) = 0;
                *(v18 + 88) = 0;
                *(v18 + 72) = 0;
                *(v18 + 96) = 0;
                v22 = *(v17 + 16);
                *(v18 + 72) = *(v17 + 8);
                *(v18 + 80) = v22;
                *(v17 + 8) = 0;
                *(v17 + 16) = 0;
                v23 = *(v18 + 88);
                *(v18 + 88) = *(v17 + 24);
                *(v17 + 24) = v23;
                v24 = *(v18 + 104);
                *(v18 + 104) = *(v17 + 40);
                *(v17 + 40) = v24;
                ++*(v17 + 32);
                ++*(v18 + 96);
                LODWORD(v24) = *(v17 + 48);
                *(v18 + 112) = v24;
                if (v24 == 1)
                {
                  *(v18 + 116) = *(v17 + 52);
                }
              }

              v17 += 128;
              --v16;
            }

            while (v16);
          }

          re::HashTable<unsigned long long,re::MeshSortingCollection::EntitySortingData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v31);
        }
      }

      else
      {
        if (v8)
        {
          v27 = 2 * v7;
        }

        else
        {
          v27 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v25 = *(a1 + 16);
    v26 = *(v25 + (v5 << 7));
  }

  else
  {
    v25 = *(a1 + 16);
    v26 = *(v25 + (v5 << 7));
    *(a1 + 36) = v26 & 0x7FFFFFFF;
  }

  v28 = v25 + (v5 << 7);
  *v28 = v26 | 0x80000000;
  v29 = *(a1 + 8);
  *v28 = *(v29 + 4 * a2) | 0x80000000;
  *(v28 + 120) = a3;
  *(v29 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v25 + (v5 << 7);
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::GroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v29, 0, 36);
          *&v29[36] = 0x7FFFFFFFLL;
          re::HashTable<unsigned long long,re::ecs2::CARESortingManagerV2::SorterCollection,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(v29, v9, v8);
          v11 = *v29;
          *v29 = *a1;
          *a1 = v11;
          v12 = *&v29[16];
          v13 = *(a1 + 16);
          *&v29[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v29[24];
          *&v29[24] = *(a1 + 24);
          v14 = *&v29[32];
          *(a1 + 24) = v15;
          ++*&v29[40];
          v16 = v14;
          if (v14)
          {
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::MeshSortingCollection::GroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 112) % *(a1 + 24));
                *(v18 + 8) = *(v13 + 8);
                v19 = *(v13 + 48);
                v20 = *(v13 + 64);
                v21 = *(v13 + 96);
                *(v18 + 80) = *(v13 + 80);
                *(v18 + 96) = v21;
                *(v18 + 48) = v19;
                *(v18 + 64) = v20;
                v22 = *(v13 + 32);
                *(v18 + 16) = *(v13 + 16);
                *(v18 + 32) = v22;
              }

              ++v17;
              v13 += 128;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::MeshShadowPlaneData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
        }
      }

      else
      {
        if (v8)
        {
          v25 = 2 * v7;
        }

        else
        {
          v25 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 7));
  }

  else
  {
    v23 = *(a1 + 16);
    v24 = *(v23 + (v5 << 7));
    *(a1 + 36) = v24 & 0x7FFFFFFF;
  }

  v26 = v23 + (v5 << 7);
  *v26 = v24 | 0x80000000;
  v27 = *(a1 + 8);
  *v26 = *(v27 + 4 * a2) | 0x80000000;
  *(v26 + 112) = a3;
  *(v27 + 4 * a2) = v5;
  ++*(a1 + 28);
  return v23 + (v5 << 7);
}

uint64_t re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v26, v9, v8);
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
                v19 = re::HashTable<unsigned long long,re::MeshSortingCollection::EntityRenderPassGroupData,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v18 + 16) % *(a1 + 24));
                *(v19 + 8) = *(v18 - 8);
                *(v19 + 16) = *v18;
              }

              ++v17;
              v18 += 40;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v26);
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
    v21 = *(v20 + 40 * v5);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v5);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = v20 + 40 * v5;
  *v23 = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *v23 = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v5;
  *(v23 + 32) = a3;
  ++*(a1 + 28);
  return v20 + 40 * v5;
}

uint64_t re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>@<X0>(uint64_t result@<X0>, void *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
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
  if (*(v7 + 160 * v6 + 8) == *a2)
  {
    v5 = *(*(result + 8) + 4 * v4);
LABEL_5:
    v6 = 0x7FFFFFFF;
    goto LABEL_6;
  }

  v8 = *(v7 + 160 * v6) & 0x7FFFFFFF;
  v5 = 0x7FFFFFFF;
  if (v8 != 0x7FFFFFFF)
  {
    v5 = 0x7FFFFFFF;
    while (1)
    {
      v9 = v8;
      if (*(v7 + 160 * v8 + 8) == *a2)
      {
        break;
      }

      v8 = *(v7 + 160 * v8) & 0x7FFFFFFF;
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

uint64_t re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(v25, v9, v8);
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
            v17 = 0;
            do
            {
              if ((*v13 & 0x80000000) != 0)
              {
                v18 = re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v13 + 144) % *(a1 + 24));
                *(v18 + 8) = *(v13 + 8);
                re::ecs2::MeshSortGroupToken::MeshSortGroupToken(v18 + 16, v13 + 16);
              }

              ++v17;
              v13 += 160;
            }

            while (v17 < v16);
          }

          re::HashTable<unsigned long long,re::ecs2::MeshSortGroupToken,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v25);
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
    v20 = *(v19 + 160 * v5);
  }

  else
  {
    v19 = *(a1 + 16);
    v20 = *(v19 + 160 * v5);
    *(a1 + 36) = v20 & 0x7FFFFFFF;
  }

  v22 = v19 + 160 * v5;
  *v22 = v20 | 0x80000000;
  v23 = *(a1 + 8);
  *v22 = *(v23 + 4 * a2) | 0x80000000;
  *(v23 + 4 * a2) = v5;
  *(v22 + 144) = a3;
  ++*(a1 + 28);
  return v19 + 160 * v5;
}

re *re::ecs2::AssetMutateTrackingSystem::willAddSceneToECSService(re *this, re::EventBus **a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v2 = a2[36];
  if (v2)
  {
    v3 = this;
    v9 = re::globalAllocators(this)[2];
    v4 = (*(*v9 + 32))(v9, 32, 0);
    *v4 = &unk_1F5CFF728;
    v4[1] = v3;
    v4[2] = re::ecs2::AssetMutateTrackingSystem::sceneEntityWillRemoveHandler;
    v4[3] = 0;
    v10 = v4;
    *&v6 = re::EventBus::subscribe<re::ecs2::Entity,RESceneEntityWillRemoveEvent>(v2, v8, 0, 0);
    *(&v6 + 1) = v5;
    re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::addNew(v3 + 28, &v7, &v6);
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::destroyCallable(v8);
  }

  return this;
}

uint64_t re::ecs2::AssetMutateTrackingSystem::sceneEntityWillRemoveHandler(uint64_t a1, unint64_t a2)
{
  v3 = re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 288), a2);
  if (v3 != -1)
  {
    v4 = (*(a1 + 288) + (v3 & 0xFFFFFFFFFFFFFFF0));
    v5.i64[0] = -1;
    v5.i64[1] = -1;
    v6 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v4, v5), xmmword_1E304FAD0)))), 0x3830282018100800);
    if (v6)
    {
      v7 = -1;
    }

    else
    {
      v7 = 0x80;
    }

    v4->i8[v3 & 0xF] = v7;
    v8 = *(a1 + 304);
    v9 = *(*(a1 + 296) + 24 * v3);
    v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
    *(a1 + 328) ^= (v10 >> 31) ^ v10;
    v5.i64[1] = *&v6 != 0;
    v11 = vaddq_s64(*(a1 + 312), v5);
    *(a1 + 312) = v11;
    if (v8 >= 0x11 && v11.i64[0] < v8 >> 2)
    {
      re::HashBrown<re::ecs2::Entity *,re::ecs2::AssetMutateTrackingSystem::EntityAssetMutationData,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,void,false>::resize(a1 + 288, 0);
    }
  }

  return 0;
}

uint64_t re::ecs2::AssetMutateTrackingSystem::willRemoveSceneFromECSService(re::ecs2::AssetMutateTrackingSystem *this, re::ecs2::Scene *a2)
{
  v4 = a2;
  result = re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find(this + 28, &v4);
  if (result != -1)
  {
    if (*(v4 + 36))
    {
      re::EventBus::unsubscribe(*(v4 + 36), *(*(this + 29) + 24 * result + 8), *(*(this + 29) + 24 * result + 16));
    }

    return re::HashBrown<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,void,false>::remove(this + 224, &v4);
  }

  return result;
}

void re::ecs2::AssetMutateTrackingSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v35, 3119, a1);
  isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v5);
  if (isStatisticCollectionEnabled)
  {
    v31 = re::profilerThreadContext(isStatisticCollectionEnabled);
    if (*(v31 + 152))
    {
      v30 = mach_absolute_time();
    }
  }

  else
  {
    v31 = 0;
  }

  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v32 = v8 + 8 * v7;
    while (1)
    {
      v9 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType);
      if (v9)
      {
        v10 = *(v9 + 384);
        if (v10)
        {
          break;
        }
      }

LABEL_27:
      v8 += 8;
      if (v8 == v32)
      {
        goto LABEL_28;
      }
    }

    v11 = *(v9 + 400);
    v12 = 8 * v10;
    while (1)
    {
      v13 = *v11;
      v14 = *(*v11 + 40);
      if (v14 && (v15 = atomic_load((v14 + 896)), v15 == 2))
      {
        v16 = *(v13 + 40);
        if (v16)
        {
          v17 = *(v16 + 792);
        }

        else
        {
          v17 = 0;
        }

        v20 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v16 ^ (v16 >> 30))) >> 27));
        v18 = v17 ^ (v20 >> 31) ^ v20;
        v19 = *(v16 + 276);
      }

      else
      {
        v18 = 0;
        v19 = 0;
      }

      v34 = *(v13 + 16);
      v21 = re::HashBrown<unsigned long long,re::ecs2::ProbeHierarchyDepth,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::find((a1 + 288), v34);
      if (v21 == -1)
      {
        if (v19)
        {
          v33 = 0uLL;
          v23 = re::HashBrown<re::ecs2::Entity *,re::ecs2::AssetMutateTrackingSystem::EntityAssetMutationData,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,void,false>::internalAdd((a1 + 288), &v34, &v33);
LABEL_24:
          *v23 = v18;
          v23[1] = v19;
          re::ecs2::Component::markDirty(v13);
        }
      }

      else
      {
        v22 = *(a1 + 296) + 24 * v21;
        v24 = *(v22 + 8);
        v23 = (v22 + 8);
        if (v18 != v24)
        {
          *v23 = v18;
          v23[1] = v19;
          goto LABEL_26;
        }

        if (v23[1] != v19)
        {
          if (v19)
          {
            goto LABEL_24;
          }

          v23[1] = 0;
        }
      }

LABEL_26:
      ++v11;
      v12 -= 8;
      if (!v12)
      {
        goto LABEL_27;
      }
    }
  }

LABEL_28:
  if (v31)
  {
    if (*(v31 + 152))
    {
      v25 = mach_absolute_time();
      v26 = *(v31 + 152);
      if (v26)
      {
        v27 = v26[960].u64[0];
        if (v27 >= v25 - v30)
        {
          v27 = v25 - v30;
        }

        v26[960].i64[0] = v27;
        v28 = v26[960].u64[1];
        if (v28 <= v25 - v30)
        {
          v28 = v25 - v30;
        }

        v26[960].i64[1] = v28;
        v29 = vdupq_n_s64(1uLL);
        v29.i64[0] = v25 - v30;
        v26[961] = vaddq_s64(v26[961], v29);
        *(v31 + 184) = 0;
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v35);
}

void *re::ecs2::allocInfo_AssetMutateTrackingSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_390, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_390))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4AB0, "AssetMutateTrackingSystem");
    __cxa_guard_release(&_MergedGlobals_390);
  }

  return &unk_1EE1B4AB0;
}

void re::ecs2::initInfo_AssetMutateTrackingSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xE35F5F30290B8F38;
  v6[1] = "AssetMutateTrackingSystem";
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
  *(this + 8) = &re::ecs2::initInfo_AssetMutateTrackingSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AssetMutateTrackingSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AssetMutateTrackingSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AssetMutateTrackingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AssetMutateTrackingSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AssetMutateTrackingSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AssetMutateTrackingSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::AssetMutateTrackingSystem>(uint64_t a1, uint64_t a2, re::ecs2::System *a3)
{
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(a3 + 288);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(a3 + 224);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::AssetMutateTrackingSystem>(re::ecs2::System *a1)
{
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(a1 + 288);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(a1 + 224);

  re::ecs2::System::~System(a1);
}

void re::ecs2::AssetMutateTrackingSystem::~AssetMutateTrackingSystem(re::ecs2::AssetMutateTrackingSystem *this)
{
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 288);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 224);

  re::ecs2::System::~System(this);
}

{
  re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(this + 288);
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::deinit(this + 224);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AssetMutateTrackingSystem,REEventHandlerResult (re::ecs2::AssetMutateTrackingSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AssetMutateTrackingSystem,REEventHandlerResult (re::ecs2::AssetMutateTrackingSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CFF728;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AssetMutateTrackingSystem,REEventHandlerResult (re::ecs2::AssetMutateTrackingSystem::*)(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillRemoveEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CFF728;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::HashBrown<re::ecs2::Entity *,re::ecs2::AssetMutateTrackingSystem::EntityAssetMutationData,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,void,false>::internalAdd(uint64_t *a1, void *a2, _OWORD *a3)
{
  if (!a1[7])
  {
  }

  v6 = a1[4];
  if (!v6 || (v7 = a1[2], v7 > 8 * v6))
  {
    re::HashBrown<re::ecs2::Entity *,re::ecs2::AssetMutateTrackingSystem::EntityAssetMutationData,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,void,false>::resize(a1, 1);
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
  v16 = 3 * (v13 + 16 * v11);
  *(a1[1] + 24 * (v13 + 16 * v11)) = *a2;
  *(a1[1] + 24 * (v13 + 16 * v11) + 8) = *a3;
  if (v15 == 255)
  {
    v17 = -1;
  }

  else
  {
    v17 = 0;
  }

  v18.i64[0] = vdupq_n_s64(1uLL).u64[0];
  v18.i64[1] = v17;
  *(a1 + 3) = vaddq_s64(*(a1 + 3), v18);
  v19 = (a1[1] + 8 * v16);
  v21 = *v19;
  result = v19 + 1;
  v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v21 ^ (v21 >> 30))) >> 27));
  a1[5] ^= (v22 >> 31) ^ v22;
  return result;
}

double re::HashBrown<re::ecs2::Entity *,re::ecs2::AssetMutateTrackingSystem::EntityAssetMutationData,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,void,false>::resize(uint64_t a1, unsigned int a2)
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
  re::HashBrown<unsigned long long,re::Pair<void const*,void const*,true>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::init(v26, v9, v4);
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
        re::HashBrown<re::ecs2::Entity *,re::ecs2::AssetMutateTrackingSystem::EntityAssetMutationData,re::Hash<re::ecs2::Entity *>,re::EqualTo<re::ecs2::Entity *>,void,false>::internalAdd(v26, (*(v24[0] + 8) + 24 * v16), (*(v24[0] + 8) + 24 * v16 + 8));
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
  return re::HashBrown<void const*,unsigned long,re::Hash<void const*>,re::EqualTo<void const*>,void,false>::deinit(v26);
}

re::ecs2::AssetMutateTrackingSystem *re::ecs2::AssetMutateTrackingSystem::AssetMutateTrackingSystem(re::ecs2::AssetMutateTrackingSystem *this)
{
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CFF698;
  *(v2 + 14) = 0u;
  *(v2 + 15) = 0u;
  *(v2 + 16) = 0u;
  *(v2 + 17) = 0u;
  *(v2 + 18) = 0u;
  *(v2 + 19) = 0u;
  *(v2 + 20) = 0u;
  *(v2 + 21) = 0u;
  return this;
}

uint64_t *re::sortingLogObjects(re *this)
{
  {
    re::sortingLogObjects(void)::logObjects = os_log_create("com.apple.re", "Sorting");
  }

  return &re::sortingLogObjects(void)::logObjects;
}

re::NetworkSystem::LocalPeer *re::NetworkSystem::LocalPeer::LocalPeer(re::NetworkSystem::LocalPeer *this, uint64_t a2, char a3)
{
  *this = a2;
  *(this + 8) = a3;
  *(this + 9) = 0;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  *(this + 2) = Mutable;
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *(this + 3) = &unk_1F5D16DD0;
  *(this + 4) = MutableBytePtr;
  *(this + 5) = 0;
  *(this + 6) = Mutable;
  *(this + 7) = re::NetworkSystem::LocalPeer::growFn;
  *(this + 5) = 0u;
  *(this + 4) = 0u;
  re::DynamicString::setCapacity(this + 8, 0);
  *(this + 24) = 6;
  *(this + 13) = 0;
  *(this + 3) = &unk_1F5D17050;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  return this;
}

UInt8 *re::NetworkSystem::LocalPeer::growFn(re::NetworkSystem::LocalPeer *this, void *a2, unsigned __int8 *a3)
{
  Length = CFDataGetLength(this);
  v6 = (3 * Length + 1) >> 1;
  if (v6 <= a3)
  {
    v6 = a3;
  }

  CFDataIncreaseLength(this, v6 - Length);
  MutableBytePtr = CFDataGetMutableBytePtr(this);
  CFDataGetLength(this);
  return MutableBytePtr;
}

void re::NetworkSystem::LocalPeer::~LocalPeer(re::NetworkSystem::LocalPeer *this)
{
  v2 = *(this + 2);
  if (v2)
  {
    CFRelease(v2);
    *(this + 2) = 0;
  }

  re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::deinit(this + 32);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 26);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 20);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 14);
  *(this + 3) = &unk_1F5D16DD0;
  re::DynamicString::deinit((this + 64));
}

void re::NetworkSystem::LocalPeer::enter(re::NetworkSystem::LocalPeer *this, re::ecs2::NetworkComponent *a2)
{
  if (*(a2 + 4))
  {
    OwnerPeerID = RESyncableGetOwnerPeerID();
  }

  else
  {
    OwnerPeerID = *(a2 + 8);
  }

  if (OwnerPeerID != *this)
  {
    v6 = *(*(a2 + 2) + 312);
    re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 208, &v6);
    v6 = a2;
    v5 = a2 + 8;
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(this + 112, &v6);
    if (v6)
    {
    }
  }
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(a1 + 24);
  if (!v7)
  {
    LODWORD(v8) = 0;
    goto LABEL_8;
  }

  v8 = v6 % v7;
  v9 = *(*(a1 + 8) + 4 * (v6 % v7));
  if (v9 == 0x7FFFFFFF)
  {
LABEL_8:
    v12 = re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::addAsMove(a1, v8, v6, a2, a2);
    ++*(a1 + 40);
    v11 = *(a1 + 16) + 24 * v12;
    return v11 + 16;
  }

  v10 = *(a1 + 16);
  while (*(v10 + 24 * v9 + 16) != v4)
  {
    LODWORD(v9) = *(v10 + 24 * v9 + 8) & 0x7FFFFFFF;
    if (v9 == 0x7FFFFFFF)
    {
      goto LABEL_8;
    }
  }

  v11 = v10 + 24 * v9;
  return v11 + 16;
}

uint64_t re::NetworkSystem::LocalPeer::exit(re::NetworkSystem::LocalPeer *this, re::ecs2::NetworkComponent *a2)
{
  if (*(a2 + 4))
  {
    result = RESyncableGetOwnerPeerID();
  }

  else
  {
    result = *(a2 + 8);
  }

  if (result != *this)
  {
    v10 = a2;
    v5 = a2 + 8;
    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::remove(this + 112, &v10);
    if (v10)
    {
    }

    v6 = *(a2 + 2);
    v10 = v6;
    if (v6)
    {
      v7 = v6 + 8;
    }

    re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::remove(this + 256, &v10);
    if (v10)
    {
    }

    v10 = *(*(a2 + 2) + 312);
    if (*(a2 + 4))
    {
      OwnerPeerID = RESyncableGetOwnerPeerID();
    }

    else
    {
      OwnerPeerID = *(a2 + 8);
    }

    v9 = OwnerPeerID;
    return re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 208, &v10, &v9);
  }

  return result;
}

BOOL re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::SharedPtr<re::ecs2::Entity>,re::ecs2::LocalComponentInfo,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::removeInternal(a1, v5);
}

re::NetworkSystem *re::NetworkSystem::NetworkSystem(re::NetworkSystem *this)
{
  *(this + 6) = 0;
  *(this + 2) = 0;
  *this = 0u;
  *(this + 9) = 0;
  *(this + 20) = 0;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 16) = 0;
  *(this + 11) = 0;
  *(this + 6) = 0u;
  *(this + 28) = 0;
  *(this + 20) = 0;
  *(this + 42) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 38) = 0;
  *(this + 24) = 0;
  *(this + 50) = 0;
  *(this + 11) = 0u;
  *(this + 31) = 0;
  *(this + 64) = 0;
  *(this + 13) = 0u;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 264) = 0u;
  *(this + 72) = 0;
  *(this + 35) = 0;
  *(this + 42) = 0;
  *(this + 86) = 0;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 82) = 0;
  *(this + 22) = 0u;
  *(this + 94) = 0;
  *(this + 46) = 0;
  *(this + 53) = 0;
  *(this + 108) = 0;
  *(this + 104) = 0;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 116) = 0;
  *(this + 57) = 0;
  *(this + 440) = 0u;
  *(this + 64) = 0;
  *(this + 130) = 0;
  *(this + 126) = 0;
  *(this + 472) = 0u;
  *(this + 488) = 0u;
  *(this + 138) = 0;
  *(this + 68) = 0;
  *(this + 33) = 0u;
  *(this + 75) = 0;
  *(this + 152) = 0;
  *(this + 148) = 0;
  *(this + 35) = 0u;
  *(this + 36) = 0u;
  *(this + 160) = 0;
  *(this + 79) = 0;
  *(this + 616) = 0u;
  *(this + 86) = 0;
  *(this + 174) = 0;
  *(this + 170) = 0;
  *(this + 648) = 0u;
  *(this + 664) = 0u;
  *(this + 182) = 0;
  *(this + 90) = 0;
  *(this + 44) = 0u;
  *(this + 97) = 0;
  *(this + 196) = 0;
  *(this + 192) = 0;
  *(this + 46) = 0u;
  *(this + 47) = 0u;
  *(this + 204) = 0;
  *(this + 101) = 0;
  *(this + 792) = 0u;
  *(this + 108) = 0;
  *(this + 218) = 0;
  *(this + 214) = 0;
  *(this + 824) = 0u;
  *(this + 840) = 0u;
  *(this + 226) = 0;
  *(this + 112) = 0;
  *(this + 55) = 0u;
  *(this + 119) = 0;
  *(this + 240) = 0;
  *(this + 236) = 0;
  *(this + 57) = 0u;
  *(this + 58) = 0u;
  *(this + 248) = 0;
  *(this + 123) = 0;
  *(this + 968) = 0u;
  *(this + 130) = 0;
  *(this + 262) = 0;
  *(this + 258) = 0;
  *(this + 1000) = 0u;
  *(this + 1016) = 0u;
  *(this + 270) = 0;
  *(this + 134) = 0;
  *(this + 66) = 0u;
  *(this + 141) = 0;
  *(this + 284) = 0;
  *(this + 280) = 0;
  *(this + 69) = 0u;
  *(this + 68) = 0u;
  *(this + 292) = 0;
  *(this + 145) = 0;
  *(this + 1144) = 0u;
  *(this + 152) = 0;
  *(this + 306) = 0;
  *(this + 302) = 0;
  *(this + 1176) = 0u;
  *(this + 1192) = 0u;
  *(this + 314) = 0;
  *(this + 156) = 0;
  *(this + 77) = 0u;
  *(this + 163) = 0;
  *(this + 328) = 0;
  *(this + 324) = 0;
  *(this + 80) = 0u;
  *(this + 79) = 0u;
  *(this + 336) = 0;
  *(this + 167) = 0;
  *(this + 1320) = 0u;
  *(this + 174) = 0;
  *(this + 350) = 0;
  *(this + 346) = 0;
  *(this + 1352) = 0u;
  *(this + 1368) = 0u;
  *(this + 358) = 0;
  *(this + 178) = 0;
  *(this + 88) = 0u;
  *(this + 185) = 0;
  *(this + 372) = 0;
  *(this + 368) = 0;
  *(this + 91) = 0u;
  *(this + 90) = 0u;
  *(this + 380) = 0;
  *(this + 189) = 0;
  *(this + 1496) = 0u;
  *(this + 196) = 0;
  *(this + 394) = 0;
  *(this + 390) = 0;
  *(this + 1528) = 0u;
  *(this + 1544) = 0u;
  *(this + 402) = 0;
  *(this + 200) = 0;
  *(this + 99) = 0u;
  *(this + 207) = 0;
  *(this + 416) = 0;
  *(this + 412) = 0;
  *(this + 102) = 0u;
  *(this + 101) = 0u;
  *(this + 424) = 0;
  *(this + 211) = 0;
  *(this + 1672) = 0u;
  *(this + 218) = 0;
  *(this + 438) = 0;
  *(this + 434) = 0;
  *(this + 1704) = 0u;
  *(this + 1720) = 0u;
  *(this + 446) = 0;
  *(this + 222) = 0;
  *(this + 110) = 0u;
  *(this + 229) = 0;
  *(this + 460) = 0;
  *(this + 456) = 0;
  *(this + 113) = 0u;
  *(this + 112) = 0u;
  *(this + 468) = 0;
  *(this + 233) = 0;
  *(this + 1848) = 0u;
  *(this + 240) = 0;
  *(this + 482) = 0;
  *(this + 478) = 0;
  *(this + 1880) = 0u;
  *(this + 1896) = 0u;
  *(this + 490) = 0;
  *(this + 244) = 0;
  *(this + 121) = 0u;
  *(this + 251) = 0;
  *(this + 504) = 0;
  *(this + 500) = 0;
  *(this + 124) = 0u;
  *(this + 123) = 0u;
  *(this + 512) = 0;
  *(this + 255) = 0;
  *(this + 2024) = 0u;
  *(this + 262) = 0;
  *(this + 526) = 0;
  *(this + 522) = 0;
  *(this + 2056) = 0u;
  *(this + 2072) = 0u;
  *(this + 534) = 0;
  *(this + 266) = 0;
  *(this + 132) = 0u;
  *(this + 273) = 0;
  *(this + 548) = 0;
  *(this + 544) = 0;
  *(this + 135) = 0u;
  *(this + 134) = 0u;
  *(this + 558) = 0;
  *(this + 2200) = 0u;
  *(this + 2216) = 0u;
  *(this + 2236) = 0x7FFFFFFFLL;
  *(this + 570) = 0;
  *(this + 2248) = 0u;
  *(this + 2264) = 0u;
  *(this + 2284) = 0x7FFFFFFFLL;
  *(this + 582) = 0;
  *(this + 2296) = 0u;
  *(this + 2312) = 0u;
  *(this + 2332) = 0x7FFFFFFFLL;
  *(this + 594) = 0;
  *(this + 2344) = 0u;
  *(this + 2360) = 0u;
  *(this + 2380) = 0x7FFFFFFFLL;
  *(this + 306) = 0;
  *(this + 152) = 0u;
  *(this + 151) = 0u;
  *(this + 150) = 0u;
  *(this + 307) = &unk_1F5CFF780;
  *(this + 312) = 0;
  *(this + 158) = 0u;
  *(this + 308) = this;
  *(this + 317) = RESyncNetSessionObserverCreate();
  RESyncNetSessionObserverOnReceiveData();
  v2 = RESyncNetSessionObserverOnParticipantLeave();
  *(this + 1272) = 256;
  *(this + 2552) = 0u;
  *(this + 2568) = 0u;
  *(this + 2584) = 0u;
  *(this + 2600) = 0u;
  *(this + 654) = 0;
  *(this + 2620) = 0x7FFFFFFFLL;
  *(this + 2632) = 0u;
  *(this + 2648) = 0u;
  *(this + 666) = 0;
  *(this + 2668) = 0x7FFFFFFFLL;
  *(this + 2680) = 0u;
  *(this + 2696) = 0u;
  *(this + 678) = 0;
  *(this + 2716) = 0x7FFFFFFFLL;
  *(this + 2728) = 0u;
  *(this + 2744) = 0u;
  re::DynamicString::setCapacity(this + 341, 0);
  *(this + 2760) = 0u;
  *(this + 2776) = 0u;
  *(this + 349) = 0x7FFFFFFF00000000;
  *(this + 700) = 0;
  *(this + 2808) = 0u;
  *(this + 2824) = 0u;
  *(this + 710) = 0;
  *(this + 2844) = 0x7FFFFFFFLL;
  *(this + 2856) = 0u;
  *(this + 2872) = 0u;
  *(this + 722) = 0;
  *(this + 2892) = 0x7FFFFFFFLL;
  *(this + 363) = 0;
  *(this + 182) = 0u;
  *(this + 732) = 0;
  *(this + 2936) = 0u;
  *(this + 2952) = 0u;
  *(this + 2964) = 0u;
  *(this + 2980) = 0x7FFFFFFFLL;
  *(this + 756) = 0;
  *(this + 188) = 0u;
  *(this + 187) = 0u;
  *(this + 3028) = 0x7FFFFFFFLL;
  *(this + 768) = 0;
  *(this + 191) = 0u;
  *(this + 190) = 0u;
  *(this + 3076) = 0x7FFFFFFFLL;
  *(this + 193) = 0u;
  *(this + 778) = 0;
  *(this + 388) = 0;
  *(this + 195) = 0u;
  *(this + 196) = 0u;
  *(this + 3148) = 0u;
  *(this + 3164) = 0x7FFFFFFFLL;
  *(this + 397) = 0;
  return this;
}

void re::NetworkSystem::~NetworkSystem(re::NetworkSystem *this)
{
  if (*(this + 302))
  {
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2760);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2808);
    re::Event<re::GeometricObjectBase>::raise(this + 1320, this);
    if (*(this + 303))
    {
      if (*(this + 306))
      {
        RESyncNetSessionRemoveObserver();
      }

      RESyncRelease();
      *(this + 303) = 0;
    }

    if (*(this + 304))
    {
      if (*(this + 306))
      {
        RESyncNetSessionRemoveObserver();
      }

      RESyncRelease();
      *(this + 304) = 0;
    }

    if (*(this + 305))
    {
      if (*(this + 306))
      {
        RESyncNetSessionRemoveObserver();
      }

      RESyncRelease();
      *(this + 305) = 0;
    }

    RESyncRelease();
    *(this + 306) = 0;
    v2 = re::ServiceLocator::service<re::ServiceRegistry>(*(this + 302));
    if (*(this + 319))
    {
      RESyncMCServiceDestroy();
      *(this + 319) = 0;
    }

    v3 = *(this + 744);
    if (v3)
    {
      v4 = 0;
      v5 = *(this + 370);
      while (1)
      {
        v6 = *v5;
        v5 += 8;
        if (v6 < 0)
        {
          break;
        }

        if (v3 == ++v4)
        {
          LODWORD(v4) = *(this + 744);
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
      v7 = *(this + 744);
      do
      {
        v8 = *(*(this + 370) + 32 * v4 + 16);
        if (v8)
        {
          _Block_release(v8);
          v7 = *(this + 744);
        }

        if (v7 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = v7;
        }

        while (v9 - 1 != v4)
        {
          LODWORD(v4) = v4 + 1;
          if ((*(*(this + 370) + 32 * v4) & 0x80000000) != 0)
          {
            goto LABEL_34;
          }
        }

        LODWORD(v4) = v9;
LABEL_34:
        ;
      }

      while (v4 != v3);
    }

    v10 = *(this + 756);
    if (v10)
    {
      v11 = 0;
      v12 = *(this + 376);
      while (1)
      {
        v13 = *v12;
        v12 += 8;
        if (v13 < 0)
        {
          break;
        }

        if (v10 == ++v11)
        {
          LODWORD(v11) = *(this + 756);
          break;
        }
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    if (v11 != v10)
    {
      v14 = *(this + 756);
      do
      {
        v15 = *(*(this + 376) + 32 * v11 + 16);
        if (v15)
        {
          _Block_release(v15);
          v14 = *(this + 756);
        }

        if (v14 <= v11 + 1)
        {
          v16 = v11 + 1;
        }

        else
        {
          v16 = v14;
        }

        while (v16 - 1 != v11)
        {
          LODWORD(v11) = v11 + 1;
          if ((*(*(this + 376) + 32 * v11) & 0x80000000) != 0)
          {
            goto LABEL_53;
          }
        }

        LODWORD(v11) = v16;
LABEL_53:
        ;
      }

      while (v11 != v10);
    }

    re::StringID::invalid(&v26);
    if ((atomic_load_explicit(&qword_1EE1B4B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4B50))
    {
      qword_1EE1B4B48 = re::introspect_PeerVideoStreamingService(0);
      __cxa_guard_release(&qword_1EE1B4B50);
    }

    v17 = qword_1EE1B4B48;
    re::StringID::StringID(&v27, &v26);
    v28 = v17;
    v18 = re::StringID::StringID(&v29, &v27);
    if (*&v27.var0)
    {
      if (*&v27.var0)
      {
      }
    }

    *&v27.var0 = 0;
    v27.var1 = &str_67;
    v19 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::remove(v2 + 16, &v28);
    if (v29)
    {
      if (v29)
      {
      }
    }

    if (*&v26.var0)
    {
      if (*&v26.var0)
      {
      }
    }

    *&v26.var0 = 0;
    v26.var1 = &str_67;
    v20 = *(this + 321);
    if (v20)
    {
      v21 = re::globalAllocators(v19)[2];
      re::PeerVideoStreamingManager::~PeerVideoStreamingManager(v20);
      (*(*v21 + 40))(v21, v20);
      *(this + 321) = 0;
    }

    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2584);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2632);
    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2680);
    re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(this + 2296);
    re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 2344);
    re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 380);
    RESyncRelease();
    RESyncServiceRemoveObserver();
    RESyncRelease();
    *(this + 320) = 0;
    RESyncRelease();
    if (*(this + 176))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1408);
    }

    if (*(this + 154))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1232);
    }

    if (*(this + 231))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1848);
    }

    if (*this)
    {
      re::DynamicArray<unsigned long>::deinit(this);
    }

    if (*(this + 11))
    {
      re::DynamicArray<unsigned long>::deinit(this + 88);
    }

    if (*(this + 22))
    {
      re::DynamicArray<unsigned long>::deinit(this + 176);
    }

    if (*(this + 33))
    {
      re::DynamicArray<unsigned long>::deinit(this + 264);
    }

    if (*(this + 44))
    {
      re::DynamicArray<unsigned long>::deinit(this + 352);
    }

    if (*(this + 55))
    {
      re::DynamicArray<unsigned long>::deinit(this + 440);
    }

    if (*(this + 66))
    {
      re::DynamicArray<unsigned long>::deinit(this + 528);
    }

    if (*(this + 77))
    {
      re::DynamicArray<unsigned long>::deinit(this + 616);
    }

    if (*(this + 88))
    {
      re::DynamicArray<unsigned long>::deinit(this + 704);
    }

    if (*(this + 99))
    {
      re::DynamicArray<unsigned long>::deinit(this + 792);
    }

    if (*(this + 110))
    {
      re::DynamicArray<unsigned long>::deinit(this + 880);
    }

    if (*(this + 121))
    {
      re::DynamicArray<unsigned long>::deinit(this + 968);
    }

    if (*(this + 132))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1056);
    }

    if (*(this + 143))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1144);
    }

    if (*(this + 220))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1760);
    }

    if (*(this + 187))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1496);
    }

    if (*(this + 198))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1584);
    }

    if (*(this + 253))
    {
      re::DynamicArray<unsigned long>::deinit(this + 2024);
    }

    if (*(this + 264))
    {
      re::DynamicArray<unsigned long>::deinit(this + 2112);
    }

    if (*(this + 209))
    {
      re::DynamicArray<unsigned long>::deinit(this + 1672);
    }
  }

  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 391);
  re::DynamicArray<unsigned long>::deinit(this + 3088);
  re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 380);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 374);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 368);
  re::DynamicArray<unsigned long>::deinit(this + 2904);
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 357);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 351);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 345);
  re::DynamicString::deinit((this + 2728));
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 335);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 329);
  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(this + 323);
  re::internal::NetworkSystemAssetMessaging::~NetworkSystemAssetMessaging((this + 2456));
  v22 = *(this + 301);
  if (v22)
  {
    dispatch_release(v22);
  }

  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 293);
  re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::ecs2::NetworkComponent::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::deinit(this + 287);
  re::HashTable<re::SharedPtr<re::RealityFileWriter::AssetInfo>,unsigned long,re::Hash<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,re::EqualTo<re::SharedPtr<re::RealityFileWriter::AssetInfo>>,true,false>::deinit(this + 281);
  re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 275);
  re::Event<re::Engine>::~Event(this + 2112);
  re::Event<re::Engine>::~Event(this + 2024);
  if (*(this + 242))
  {
    re::DynamicArray<unsigned long>::deinit(this + 1936);
  }

  v23 = *(this + 247);
  if (v23)
  {
    if (*(this + 251))
    {
      (*(*v23 + 40))(v23);
    }

    *(this + 251) = 0;
    *(this + 248) = 0;
    *(this + 249) = 0;
    *(this + 247) = 0;
    ++*(this + 500);
  }

  re::DynamicArray<unsigned long>::deinit(this + 1936);
  re::Event<re::Engine>::~Event(this + 1848);
  if (*(this + 220))
  {
    re::DynamicArray<unsigned long>::deinit(this + 1760);
  }

  v24 = *(this + 225);
  if (v24)
  {
    if (*(this + 229))
    {
      (*(*v24 + 40))(v24);
    }

    *(this + 229) = 0;
    *(this + 226) = 0;
    *(this + 227) = 0;
    *(this + 225) = 0;
    ++*(this + 456);
  }

  re::DynamicArray<unsigned long>::deinit(this + 1760);
  re::Event<re::Engine>::~Event(this + 1672);
  re::Event<re::Engine>::~Event(this + 1584);
  re::Event<re::Engine>::~Event(this + 1496);
  if (*(this + 176))
  {
    re::DynamicArray<unsigned long>::deinit(this + 1408);
  }

  v25 = *(this + 181);
  if (v25)
  {
    if (*(this + 185))
    {
      (*(*v25 + 40))(v25);
    }

    *(this + 185) = 0;
    *(this + 182) = 0;
    *(this + 183) = 0;
    *(this + 181) = 0;
    ++*(this + 368);
  }

  re::DynamicArray<unsigned long>::deinit(this + 1408);
  re::Event<re::Engine>::~Event(this + 1320);
  re::Event<re::Engine>::~Event(this + 1232);
  re::Event<re::Engine>::~Event(this + 1144);
  re::Event<re::Engine>::~Event(this + 1056);
  re::Event<re::Engine>::~Event(this + 968);
  re::Event<re::Engine>::~Event(this + 880);
  re::Event<re::Engine>::~Event(this + 792);
  re::Event<re::Engine>::~Event(this + 704);
  re::Event<re::Engine>::~Event(this + 616);
  re::Event<re::Engine>::~Event(this + 528);
  re::Event<re::Engine>::~Event(this + 440);
  re::Event<re::Engine>::~Event(this + 352);
  re::Event<re::Engine>::~Event(this + 264);
  re::Event<re::Engine>::~Event(this + 176);
  re::Event<re::Engine>::~Event(this + 88);

  re::Event<re::Engine>::~Event(this);
}

void re::NetworkSystem::init(uint64_t a1, uint64_t a2)
{
  v109 = *MEMORY[0x1E69E9840];
  *(a1 + 2544) = *(a2 + 16);
  *(a1 + 2416) = *a2;
  v4 = *(a2 + 8);
  if (v4)
  {
    dispatch_retain(*(a2 + 8));
  }

  v5 = *(a1 + 2408);
  *(a1 + 2408) = v4;
  if (v5)
  {
    dispatch_release(v5);
  }

  v6 = re::DynamicArray<re::EvaluationRegister>::setCapacity(a1, 0);
  ++*(a1 + 24);
  v7 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 88), 0);
  ++*(a1 + 112);
  v8 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 176), 0);
  ++*(a1 + 200);
  v9 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 264), 0);
  ++*(a1 + 288);
  v10 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 352), 0);
  ++*(a1 + 376);
  v11 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 440), 0);
  ++*(a1 + 464);
  v12 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 528), 0);
  ++*(a1 + 552);
  v13 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 616), 0);
  ++*(a1 + 640);
  v14 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 704), 0);
  ++*(a1 + 728);
  v15 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 792), 0);
  ++*(a1 + 816);
  v16 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 880), 0);
  ++*(a1 + 904);
  v17 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 968), 0);
  ++*(a1 + 992);
  v18 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1056), 0);
  ++*(a1 + 1080);
  v19 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1144), 0);
  ++*(a1 + 1168);
  v20 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1320), 0);
  ++*(a1 + 1344);
  v21 = re::DynamicArray<re::Event<re::NetworkSystem,unsigned long long,RESyncPendingCommitAction *>::Subscription>::setCapacity((a1 + 1760));
  ++*(a1 + 1784);
  v22 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1848), 0);
  ++*(a1 + 1872);
  v23 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1232), 0);
  ++*(a1 + 1256);
  v24 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1408), 0);
  ++*(a1 + 1432);
  v25 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1496), 0);
  ++*(a1 + 1520);
  v26 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1584), 0);
  ++*(a1 + 1608);
  v27 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 2024), 0);
  ++*(a1 + 2048);
  v28 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 2112), 0);
  ++*(a1 + 2136);
  v29 = re::DynamicArray<re::EvaluationRegister>::setCapacity((a1 + 1672), 0);
  ++*(a1 + 1696);
  *(a1 + 2448) = RESyncNetSessionObserverCreate();
  v90 = MEMORY[0x1E69E9820];
  v91 = 0x40000000;
  v92 = ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke;
  v93 = &__block_descriptor_tmp_22;
  v94 = a1;
  RESyncNetSessionObserverOnPeerDidPause();
  v85 = MEMORY[0x1E69E9820];
  v86 = 0x40000000;
  v87 = ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_2;
  v88 = &__block_descriptor_tmp_1;
  v89 = a1;
  RESyncNetSessionObserverOnPeerDidResume();
  v80 = MEMORY[0x1E69E9820];
  v81 = 0x40000000;
  v82 = ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_3;
  v83 = &__block_descriptor_tmp_3_2;
  v84 = a1;
  RESyncNetSessionObserverOnParticipantJoin();
  v75 = MEMORY[0x1E69E9820];
  v76 = 0x40000000;
  v77 = ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_4;
  v78 = &__block_descriptor_tmp_6_1;
  v79 = a1;
  RESyncNetSessionObserverOnParticipantLeave();
  v30 = re::ServiceLocator::service<re::ServiceRegistry>(*(a1 + 2416));
  Size = RESyncServiceConfigGetSize();
  MEMORY[0x1EEE9AC00](Size);
  bzero(v67 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0), Size);
  DefaultNoAlloc = RESyncServiceConfigCreateDefaultNoAlloc();
  if (*(a1 + 2544) == 1)
  {
    v67[0] = DefaultNoAlloc;
    v67[1] = a2;
    v68 = v30;
    {
      if (DefaultNoAlloc)
      {
        re::introspect<re::PersistedSchema>(BOOL)::info = re::introspect_PersistedSchema(0);
      }
    }

    v34 = re::introspect<re::PersistedSchema>(BOOL)::info;
    v103 = 0;
    memset(v102, 0, sizeof(v102));
    v104 = 0x7FFFFFFFLL;
    v35 = re::ecs2::ComponentTypeRegistry::instance(DefaultNoAlloc);
    if (*(v35 + 3))
    {
      v36 = v35;
      v37 = 0;
      do
      {
        v38 = re::ecs2::ComponentTypeRegistry::operator[](v36, v37);
        v39 = (*(*v38 + 48))(v38);
        v35 = re::PersistedSchema::addIntrospectionGraph(v102, v39);
        ++v37;
      }

      while (v37 < *(v36 + 24));
    }

    memset(v101, 0, sizeof(v101));
    re::DynamicString::setCapacity(v101, 0);
    v40 = re::DynamicString::setCapacity(v101, 0x10000uLL);
    v100[0] = &unk_1F5D0B0E8;
    v100[1] = v101;
    v107 = v34[2];
    {
      memset(&v99, 0, sizeof(v99));
      if (v101[1])
      {
        v43 = v101[1] >> 1;
      }

      else
      {
        v43 = LOBYTE(v101[1]) >> 1;
      }

      std::string::reserve(&v99, v43);
      std::regex_traits<char>::regex_traits(&v95);
      v98 = 0;
      v97 = 0u;
      v96 = 0u;
      std::basic_regex<char,std::regex_traits<char>>::__parse<char const*>();
    }

    re::internal::assertLog(4, v42, "assertion failure: '%s' (%s:line %i) Failed to get the schema hash for all the components.", "!Unreachable code", "calculateComponentsSchemaHash", 552);
    _os_crash();
    __break(1u);
    v64 = std::__throw_regex_error[abi:nn200100]<(std::regex_constants::error_type)17>();
    ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke(v64, v65, v66);
    return;
  }

  RESyncServiceConfigSetSchemaHash();
  RESyncServiceConfigSetDispatchQueue();
  *(a1 + 2560) = RESyncCreateSyncService();
  *(a1 + 2576) = RESyncServiceObserverCreate();
  v70 = MEMORY[0x1E69E9820];
  v71 = 0x40000000;
  v72 = ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_2_7;
  v73 = &__block_descriptor_tmp_9_0;
  v74 = a1;
  RESyncServiceObserverOnDataArrive();
  RESyncServiceAddObserver();
  v44 = RESyncServiceConfigDestruct();
  re::ecs2::NetworkEntityState::makeSyncInfo(v44);
  RESyncServiceRegisterTypeInfo();
  RESyncRelease();
  v45 = RESyncCommitListCreate();
  *(a1 + 2392) = v45;
  v46 = re::globalAllocators(v45);
  v47 = (*(*v46[2] + 32))(v46[2], 312, 8);
  *(v47 + 24) = 0u;
  *(v47 + 40) = 0u;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0u;
  *(v47 + 120) = 0u;
  *(v47 + 136) = 0u;
  *(v47 + 152) = 0u;
  *(v47 + 168) = 0u;
  *(v47 + 184) = 0u;
  *(v47 + 200) = 0u;
  *(v47 + 216) = 0u;
  *(v47 + 232) = 0u;
  *(v47 + 248) = 0u;
  *(v47 + 8) = 0u;
  *(v47 + 264) = 0u;
  *(v47 + 280) = 0u;
  *(v47 + 296) = 0u;
  *v47 = &unk_1F5CEA6D8;
  v48 = MEMORY[0x1E69E96A0];
  dispatch_retain(MEMORY[0x1E69E96A0]);
  *(v47 + 8) = v48;
  *(v47 + 16) = 0;
  *(v47 + 32) = 0;
  *(v47 + 40) = 0;
  *(v47 + 48) = 0;
  *(v47 + 112) = 0;
  *(v47 + 56) = 0u;
  *(v47 + 72) = 0u;
  *(v47 + 88) = 0u;
  *(v47 + 104) = 0;
  *(v47 + 120) = 1;
  *(v47 + 128) = 0u;
  *(v47 + 144) = 0u;
  *(v47 + 160) = 0;
  *(v47 + 164) = 0x7FFFFFFFLL;
  *(v47 + 176) = 0u;
  *(v47 + 192) = 0u;
  *(v47 + 208) = 0;
  *(v47 + 212) = 0x7FFFFFFFLL;
  *(v47 + 224) = 0;
  *(v47 + 232) = 0;
  *(v47 + 248) = 0;
  *(v47 + 240) = 0;
  *(v47 + 296) = 0;
  *(v47 + 304) = 0;
  *(v47 + 256) = 0u;
  *(v47 + 272) = 0u;
  *(v47 + 288) = 0;
  *(a1 + 2568) = v47;
  v49 = *(a2 + 8);
  if (v49)
  {
    dispatch_retain(*(a2 + 8));
    v47 = *(a1 + 2568);
  }

  v50 = *(a1 + 2416);
  v105[0] = v49;
  v105[1] = v50;
  v105[2] = *(a1 + 2560);
  re::PeerVideoStreamingManager::init(v47, v105);
  v51 = *(a1 + 2568);
  re::StringID::invalid(v106);
  if ((atomic_load_explicit(&qword_1EE1B4B50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1B4B50))
  {
    qword_1EE1B4B48 = re::introspect_PeerVideoStreamingService(0);
    __cxa_guard_release(&qword_1EE1B4B50);
  }

  re::ServiceRegistration::ServiceRegistration(&v107, qword_1EE1B4B48, v106, v51);
  v52 = re::internal::ServiceKeyHash::operator()(&v95, &v107);
  v53 = v52;
  v54 = *(v30 + 40);
  if (v54)
  {
    v55 = v52 % v54;
    v56 = *(*(v30 + 24) + 4 * (v52 % v54));
    if (v56 != 0x7FFFFFFF)
    {
      v69 = v52 % v54;
      v68 = v30;
      v57 = *(v30 + 32);
      v58 = v107;
      v59 = v108;
      while (1)
      {
        v60 = v57 + 40 * v56;
        v62 = *(v60 + 8);
        v61 = v60 + 8;
        if (v62 == v58 && (*(v61 + 8) ^ *(&v58 + 1)) <= 1)
        {
          v63 = *(v61 + 16);
          if (v63 == v59)
          {
            break;
          }

          v63 = strcmp(v63, v59);
          if (!v63)
          {
            break;
          }
        }

        v56 = *(v57 + 40 * v56) & 0x7FFFFFFF;
        if (v56 == 0x7FFFFFFF)
        {
          v30 = v68;
          LODWORD(v55) = v69;
          goto LABEL_28;
        }
      }

      v30 = v68;
      if ((BYTE8(v58) & 1) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_29;
    }
  }

  else
  {
    LODWORD(v55) = 0;
  }

LABEL_28:
  v63 = re::HashSetBase<re::ServiceKey,re::ServiceRegistration,re::internal::ServiceKeyGetter,re::internal::ServiceKeyHash,re::internal::ServiceKeyEqualTo,false,false>::addAsCopy(v30 + 16, v55, v53, &v107, &v107);
  ++*(v30 + 56);
  if (BYTE8(v107))
  {
LABEL_29:
    if (BYTE8(v107))
    {
    }
  }

LABEL_31:
  if (*&v106[0].var0)
  {
    if (*&v106[0].var0)
    {
    }
  }

  if (v105[0])
  {
    dispatch_release(v105[0]);
  }

  *(a1 + 3176) = re::ServiceLocator::serviceOrNull<re::FrameManager>(v30);
}

void ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = a3;
  v4 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v3 + 3040, &v5);
  if (v4)
  {
    *(v4 + 9) = 1;
  }

  re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(v3 + 2024, v3);
}

void ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a1 + 32);
  v5 = a3;
  v4 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v3 + 3040, &v5);
  if (v4)
  {
    *(v4 + 9) = 0;
  }

  re::Event<re::NetworkSystem,re::ecs2::Scene *>::raise(v3 + 2112, v3);
}

void ___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_3(uint64_t a1)
{
  v55 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 32);
  PeerID = RESyncParticipantGetPeerID();
  v41[0] = PeerID;
  IsLocal = RESyncNetSessionGetIsLocal();
  if (IsLocal && (re::NetworkSystemFeatureFlags::enableAltSharedApp(IsLocal) & 1) != 0)
  {
    HasForceAuthorityCapability = RESyncParticipantHasForceAuthorityCapability();
    v40 = HasForceAuthorityCapability;
    v5 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v1 + 3040, v41);
    if (v5)
    {
      v6 = v5;
      if (v5[8] != HasForceAuthorityCapability)
      {
        v7 = *re::ecsNetworkLogObjects(v5);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEFAULT, "Peer previously created with different force authority setting.", buf, 2u);
        }
      }

      v6[8] = HasForceAuthorityCapability;
    }

    else
    {
      re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<unsigned long long &,BOOL &>(v1 + 3040, v41, v41, &v40);
      v14 = *re::ServiceLocator::service<re::ecs2::ECSService>(*(v1 + 2416));
      v15 = (*(v14 + 288))() + 120;
      re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(buf, v15, 0);
      v16 = *buf;
      v38 = *buf;
      v39 = *&buf[8];
      v17 = *&buf[8];
      v18 = *&buf[10];
      if (v15 != *buf || *&buf[8] != 0xFFFF || *&buf[10] != 0xFFFF)
      {
        do
        {
          v21 = v18;
          v22 = *(v16 + 16);
          if (v22 <= v18)
          {
            v41[1] = 0;
            v53 = 0u;
            v54 = 0u;
            v51 = 0u;
            v52 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v42 = 136315906;
            v43 = "operator[]";
            v44 = 1024;
            v45 = 797;
            v46 = 2048;
            v47 = v21;
            v48 = 2048;
            v49 = v22;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
          }

          v23 = *(*(v16 + 32) + 16 * v18) + 240 * v17;
          v24 = *(v23 + 200);
          if (v24)
          {
            v25 = *(v23 + 216);
            v26 = &v25[v24];
            do
            {
              v27 = *v25;
              v28 = *(*v25 + 104);
              v29 = v28[27];
              if (v29)
              {
                *buf = v28[27];
                v30 = (v29 + 8);
                re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v1 + 2808, buf);
                if (*buf)
                {
                }

                v28 = *(v27 + 104);
              }

              v31 = v28[43];
              if (v31)
              {
                v32 = v28[45];
                v33 = 8 * v31;
                do
                {
                  v34 = *v32;
                  if (*v32)
                  {
                    v35 = (v34 + 8);
                  }

                  v36 = *(v34 + 216);
                  if (v36)
                  {
                    *buf = *(v34 + 216);
                    v37 = (v36 + 8);
                    re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::add(v1 + 2808, buf);
                    if (*buf)
                    {
                    }
                  }

                  ++v32;
                  v33 -= 8;
                }

                while (v33);
              }

              ++v25;
            }

            while (v25 != v26);
          }

          re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v38);
          v16 = v38;
          v17 = v39;
          v18 = HIWORD(v39);
        }

        while (v38 != v15 || v39 != 0xFFFF || HIWORD(v39) != 0xFFFF);
      }
    }
  }

  else
  {
    v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (PeerID ^ (PeerID >> 30))) ^ ((0xBF58476D1CE4E5B9 * (PeerID ^ (PeerID >> 30))) >> 27));
    v9 = v8 ^ (v8 >> 31);
    v10 = *(v1 + 3152);
    if (v10)
    {
      v11 = v9 % v10;
      v12 = *(*(v1 + 3136) + 4 * (v9 % v10));
      if (v12 != 0x7FFFFFFF)
      {
        v13 = *(v1 + 3144);
        if (*(v13 + 24 * v12 + 16) == PeerID)
        {
          return;
        }

        while (1)
        {
          LODWORD(v12) = *(v13 + 24 * v12 + 8) & 0x7FFFFFFF;
          if (v12 == 0x7FFFFFFF)
          {
            break;
          }

          if (*(v13 + 24 * v12 + 16) == PeerID)
          {
            return;
          }
        }
      }
    }

    else
    {
      LODWORD(v11) = 0;
    }

    re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addAsCopy(v1 + 3128, v11, v9, v41, v41);
    ++*(v1 + 3168);
  }
}

re::NetworkSystem::LocalPeer *re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<unsigned long long &,BOOL &>(uint64_t a1, void *a2, uint64_t *a3, char *a4)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), &v11);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 328 * HIDWORD(v12) + 16);
  }

  v9 = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, v12, v11);
  *(v9 + 8) = *a2;
  result = re::NetworkSystem::LocalPeer::LocalPeer((v9 + 16), *a3, *a4);
  ++*(a1 + 40);
  return result;
}

void *___ZN2re13NetworkSystem4initERKNS0_6ConfigE_block_invoke_4(uint64_t a1)
{
  v1 = *(a1 + 32);
  PeerID = RESyncParticipantGetPeerID();
  IsLocal = RESyncNetSessionGetIsLocal();
  if (!IsLocal || (re::NetworkSystemFeatureFlags::enableAltSharedApp(IsLocal) & 1) == 0)
  {
    return re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v1 + 3128, &PeerID);
  }

  result = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v1 + 3040, &PeerID);
  if (result)
  {
    return re::DynamicArray<re::TransitionCondition *>::add((v1 + 3088), &PeerID);
  }

  return result;
}

uint64_t re::ServiceLocator::service<re::ServiceRegistry>(uint64_t a1)
{
  result = re::ServiceLocator::serviceOrNull<re::ServiceRegistry>(a1);
  if (!result)
  {
    v2 = re::introspect<re::ServiceRegistry>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v2, v6, v7);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    v3 = re::introspect<re::ServiceRegistry>(0);
    re::StringID::invalid(v6);
    re::internal::missingServiceErrorMessage(v3, v6, v7);
    if (v7[8])
    {
      v5 = *&v8[7];
    }

    else
    {
      v5 = v8;
    }

    re::internal::assertLog(5, v4, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v5);
    re::DynamicString::~DynamicString(v7);
    re::StringID::~StringID(v6);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_154, 4 * v2);
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

double re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::NetworkSystem::LocalPeer::~LocalPeer((v6 + v4 + 16));
          v3 = *(a1 + 8);
        }

        v4 += 328;
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

uint64_t re::NetworkSystem::initMCService(re::NetworkSystem *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  Size = RESyncMCServiceConfigGetSize();
  MEMORY[0x1EEE9AC00](Size);
  bzero(v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0), Size);
  RESyncMCServiceConfigCreateNoAlloc();
  RESyncMCServiceConfigSetDispatchQueue();
  RESyncMCServiceConfigSetSyncService();
  *(this + 319) = RESyncMCServiceCreate();
  return RESyncMCServiceConfigDestroyNoDealloc();
}

void re::NetworkSystem::beforeFrameUpdate(re::NetworkSystem *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 6006, this);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v2);
  re::NetworkSystem::prepareObjectStores(this);
  if (*(this + 320))
  {
    RESyncServiceBeforeFrameUpdate();
    re::NetworkSystem::setAclCount = 0;
    re::NetworkSystem::resolveSelfViewCount = 0;
    re::NetworkSystem::viewFilterListCount = 0;
    re::NetworkSystem::resolveSelfViewTime = 0;
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)16>::end(v2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

uint64_t re::NetworkSystem::destroyObject(uint64_t a1)
{
  while (RESyncableGetChildCount())
  {
    Child = RESyncableGetChild();
    if (Child)
    {
      v4 = Child;
      RESyncRetain();
      re::NetworkSystem::destroyObject(a1, &v4);
      RESyncRelease();
    }
  }

  return RESyncServiceRemoveSyncable();
}

void re::NetworkSystem::afterFrameUpdate(re::NetworkSystem *this)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v3, 6014, this);
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v2);
  if (*(this + 320))
  {
    RESyncServiceAfterFrameUpdate();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  if (re::internal::enableSignposts(0, 0))
  {
    kdebug_trace();
  }

  re::ProfilerTimeGuard<(re::ProfilerStatistic)17>::end(v2);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v3);
}

void re::NetworkSystem::prepareObjectStores(re::NetworkSystem *this)
{
  v42 = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::ComponentTypeRegistry::instance(this);
  v3 = *(v2 + 3);
  if (v3 > *(this + 300))
  {
    v4 = v2;
    v5 = re::ecs2::ComponentTypeRegistry::operator[](v2, v3 - 1);
    re::DynamicArray<double>::resize(this + 2904, *(v5 + 16) + 1);
    v6 = *(this + 300);
    if (v6 < v3)
    {
      do
      {
        v7 = re::ecs2::ComponentTypeRegistry::operator[](v4, v6);
        v28[0] = *(v7 + 3) >> 1;
        v8 = (*(*v7 + 48))(v7);
        re::ecs2::IntrospectedNetworkTypeHelper::makeTypeInfo(v7, v9, v8, &v25);
        if (v25)
        {
          v10 = RESyncServiceRegisterTypeInfo();
          if (re::NetworkSystemFeatureFlags::enableAltSharedApp(v10))
          {
            if (aBlock)
            {
              v11 = _Block_copy(aBlock);
              v37 = 0uLL;
              *&v38 = 0;
              v12 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28[0] ^ (v28[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28[0] ^ (v28[0] >> 30))) >> 27));
              re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v37, this + 2944, v28[0], v12 ^ (v12 >> 31));
              if (HIDWORD(v37) == 0x7FFFFFFF)
              {
                v13 = re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 2944, DWORD2(v37), v37);
                *(v13 + 8) = v28[0];
                *(v13 + 16) = v11;
                ++*(this + 746);
              }
            }

            if (v27)
            {
              v14 = _Block_copy(v27);
              v37 = 0uLL;
              *&v38 = 0;
              v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28[0] ^ (v28[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28[0] ^ (v28[0] >> 30))) >> 27));
              re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v37, this + 2992, v28[0], v15 ^ (v15 >> 31));
              if (HIDWORD(v37) == 0x7FFFFFFF)
              {
                v16 = re::HashTable<unsigned long long,BOOL({block_pointer})(re::snapshot::EncoderRaw &,void const*,RESyncObjectContext *),re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 2992, DWORD2(v37), v37);
                *(v16 + 8) = v28[0];
                *(v16 + 16) = v14;
                ++*(this + 758);
              }
            }
          }

          v37 = 0uLL;
          *&v38 = 0;
          v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v28[0] ^ (v28[0] >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v28[0] ^ (v28[0] >> 30))) >> 27));
          re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(this + 2856, v28, v17 ^ (v17 >> 31), &v37);
          if (HIDWORD(v37) == 0x7FFFFFFF)
          {
            v18 = re::HashTable<unsigned long long,re::ecs2::ComponentTypeBase const*,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(this + 2856, DWORD2(v37), v37);
            *(v18 + 8) = v28[0];
            *(v18 + 16) = v7;
            ++*(this + 724);
          }

          re::DynamicArray<double>::resize(this + 2904, v7[8] + 1);
          v20 = v7[8];
          v21 = *(this + 365);
          if (v21 <= v20)
          {
            v28[1] = 0;
            v40 = 0u;
            v41 = 0u;
            v38 = 0u;
            v39 = 0u;
            v37 = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v29 = 136315906;
            v30 = "operator[]";
            v31 = 1024;
            v32 = 789;
            v33 = 2048;
            v34 = v20;
            v35 = 2048;
            v36 = v21;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_24:
            re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) ", "(m_componentTypeByLocalId[componentType.localComponentTypeShortID()] == nullptr) || (m_componentTypeByLocalId[componentType.localComponentTypeShortID()] == &componentType)", "prepareObjectStores", 504);
            _os_crash();
            __break(1u);
          }

          v22 = *(this + 367);
          v23 = *(v22 + 8 * v20);
          if (v23)
          {
            v24 = v23 == v7;
          }

          else
          {
            v24 = 1;
          }

          if (!v24)
          {
            goto LABEL_24;
          }

          *(v22 + 8 * v20) = v7;
        }

        re::ecs2::IntrospectedNetworkTypeHelper::SyncInfo::~SyncInfo(&v25);
        ++v6;
      }

      while (v3 != v6);
    }

    *(this + 300) = v3;
  }
}

void std::basic_regex<char,std::regex_traits<char>>::~basic_regex(std::locale *this)
{
  locale = this[6].__locale_;
  if (locale)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](locale);
  }

  std::locale::~locale(this);
}

re::NetworkSystemFeatureFlags *re::NetworkSystem::entityAddedToScene(re::NetworkSystemFeatureFlags *result, uint64_t a2, uint64_t *a3)
{
  v4 = result;
  if (*a3)
  {
    result = re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::remove(result + 2296, a3);
  }

  if (a2)
  {
    result = re::NetworkSystemFeatureFlags::enableAltSharedApp(result);
    if (result)
    {
      v5 = *(a2 + 312);
      return re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v4 + 2344, &v5);
    }
  }

  return result;
}

uint64_t re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::remove(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (*(v10 + 24 * v8 + 16) != v4)
  {
    while (1)
    {
      v11 = v8;
      v12 = *(v10 + 24 * v8 + 8);
      v8 = v12 & 0x7FFFFFFF;
      if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (*(v10 + 24 * v8 + 16) == v4)
      {
        *(v10 + 24 * v11 + 8) = *(v10 + 24 * v11 + 8) & 0x80000000 | *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 24 * v8 + 8) & 0x7FFFFFFF;
LABEL_10:
  v13 = *(a1 + 16) + 24 * v8;
  v14 = *(v13 + 8);
  if (v14 < 0)
  {
    *(v13 + 8) = v14 & 0x7FFFFFFF;
    if (*(v13 + 16))
    {
      RESyncRelease();
      *(v13 + 16) = 0;
    }
  }

  v15 = *(a1 + 16) + 24 * v8;
  v16 = *(a1 + 40);
  *(v15 + 8) = *(v15 + 8) & 0x80000000 | *(a1 + 36);
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v16 + 1;
  return 1;
}

uint64_t re::NetworkSystem::entityRemovedFromScene(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  v4 = a1;
  v5 = *a3;
  if (!*a3)
  {
    goto LABEL_10;
  }

  v7 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v5 ^ (v5 >> 30))) >> 27));
  v8 = v7 ^ (v7 >> 31);
  v9 = *(a1 + 2320);
  if (!v9)
  {
    LODWORD(v10) = 0;
    goto LABEL_9;
  }

  v10 = v8 % v9;
  v11 = *(*(a1 + 2304) + 4 * (v8 % v9));
  if (v11 == 0x7FFFFFFF)
  {
LABEL_9:
    a1 = re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::addAsMove(a1 + 2296, v10, v8, a3, a3);
    ++*(v4 + 2336);
    goto LABEL_10;
  }

  v12 = *(a1 + 2312);
  while (*(v12 + 24 * v11 + 16) != v5)
  {
    LODWORD(v11) = *(v12 + 24 * v11 + 8) & 0x7FFFFFFF;
    if (v11 == 0x7FFFFFFF)
    {
      goto LABEL_9;
    }
  }

LABEL_10:
  result = re::NetworkSystemFeatureFlags::enableAltSharedApp(a1);
  if (result)
  {
    v14 = *(a2 + 216);
    if (v14)
    {
      v17 = *(a2 + 312);
      if (*(v14 + 32))
      {
        OwnerPeerID = RESyncableGetOwnerPeerID();
      }

      else
      {
        OwnerPeerID = *(v14 + 64);
      }

      v16 = OwnerPeerID;
      return re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v4 + 2344, &v17, &v16);
    }
  }

  return result;
}

re::NetworkSystem::LocalPeer *re::NetworkSystem::exitingLocalPeerView(re::NetworkSystem::LocalPeer *this, re::ecs2::NetworkComponent *a2)
{
  if (*(a2 + 88))
  {
    v2 = (a2 + 96);
  }

  else
  {
    v2 = *(a2 + 13);
  }

  v3 = *(a2 + 10);
  if (v3)
  {
    v5 = this;
    v6 = 8 * v3;
    do
    {
      v7 = *v2;
      this = re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v5 + 3040, &v7);
      if (this)
      {
        this = re::NetworkSystem::LocalPeer::exit(this, a2);
      }

      ++v2;
      v6 -= 8;
    }

    while (v6);
  }

  return this;
}

re::NetworkSystem::LocalPeer *re::NetworkSystem::localSyncToPeer(uint64_t a1)
{
  PeerID = RESyncParticipantGetPeerID();
  HasForceAuthorityCapability = RESyncParticipantHasForceAuthorityCapability();
  return re::HashTable<unsigned long long,re::NetworkSystem::LocalPeer,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryEmplace<unsigned long long &,BOOL &>(a1 + 3040, &PeerID, &PeerID, &HasForceAuthorityCapability);
}

uint64_t re::NetworkSystem::clearRemoteDirty(re::NetworkSystem *this)
{
  if (*(this + 581))
  {
    v2 = *(this + 582);
    if (v2)
    {
      v3 = 0;
      v4 = (*(this + 289) + 8);
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
          LODWORD(v3) = *(this + 582);
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
      re::NetworkSystem::destroyObject(this);
      v6 = *(this + 582);
      if (v6 <= v3 + 1)
      {
        v6 = v3 + 1;
      }

      while (v6 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 289) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_15;
        }
      }

      LODWORD(v3) = v6;
LABEL_15:
      ;
    }

    re::HashSetBase<RESyncableRefRetainer,RESyncableRefRetainer,re::internal::ValueAsKey<RESyncableRefRetainer>,re::NetworkSystem::RESyncableRefRetainerHash,re::EqualTo<RESyncableRefRetainer>,true,false>::clear(this + 2296);
  }

  v7 = *(this + 299);

  return MEMORY[0x1EEE30E78](v7);
}

re::DynamicString *re::NetworkSystem::peerIDStringForAssetSerialization@<X0>(re::NetworkSystem *this@<X0>, re::DynamicString *a2@<X8>)
{
  v4 = *(this + 342);
  if (v4)
  {
    v5 = v4 >> 1;
  }

  else
  {
    v5 = v4 >> 1;
  }

  if (!v5)
  {
    LocalPeerId = RESyncServiceGetLocalPeerId();
    if (LocalPeerId)
    {
      re::DynamicString::format("%llu", &v8, LocalPeerId);
      re::DynamicString::operator=((this + 2728), &v8);
      if (v8)
      {
        if (v9)
        {
          (*(*v8 + 40))();
        }
      }
    }
  }

  return re::DynamicString::DynamicString(a2, (this + 2728));
}

uint64_t re::NetworkSystem::queueWaitForParentEntity(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v13 = a2;
  v5 = *a3;
  v12 = v5;
  if (v5)
  {
    v6 = (v5 + 8);
  }

  re::NetworkSystem::removeEntityFromParentWaitlist(a1, &v12);
  if (v12)
  {

    v12 = 0;
  }

  v11 = 0;
  memset(v9, 0, sizeof(v9));
  v10 = 0;
  v7 = re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(a1 + 2200, &v13, v9);
  re::DynamicArray<re::SharedPtr<re::Shareable<re::AssetLoadDescriptor>>>::deinit(v9);
  re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::add(v7, a3);
  return re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(a1 + 2248, a3, &v13);
}

void *re::NetworkSystem::removeEntityFromParentWaitlist(uint64_t a1, void *a2)
{
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 2248, a2);
  if (result)
  {
    v5 = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 2200, result);
    re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::remove(v5, a2);

    return re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::remove(a1 + 2248, a2);
  }

  return result;
}

uint64_t re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addInternal<unsigned long long const&,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + (HIDWORD(v9) << 6) + 16;
  }
}

uint64_t re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::add(uint64_t a1, uint64_t *a2, void *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::addInternal<re::SharedPtr<re::ecs2::Entity> const&,unsigned long long const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 32 * HIDWORD(v9) + 16;
  }
}

unint64_t re::NetworkSystem::clearWaitListForParent(re::NetworkSystem *this, uint64_t a2)
{
  v10 = a2;
  result = re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 2200, &v10);
  if (result)
  {
    v4 = *(result + 16);
    if (v4)
    {
      v5 = *(result + 32);
      v6 = 8 * v4;
      do
      {
        v7 = *v5;
        v9 = v7;
        if (v7)
        {
          v8 = (v7 + 8);
        }

        re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::remove(this + 2248, &v9);
        if (v9)
        {
        }

        ++v5;
        v6 -= 8;
      }

      while (v6);
    }

    return re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(this + 2200, &v10);
  }

  return result;
}

BOOL re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<re::SharedPtr<re::ecs2::Entity>,unsigned long long,re::Hash<re::SharedPtr<re::ecs2::Entity>>,re::EqualTo<re::SharedPtr<re::ecs2::Entity>>,true,false>::removeInternal(a1, v5);
}

BOOL re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long long,re::DynamicArray<re::AssetLoadDescriptor>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  return re::HashTable<unsigned long long,re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::removeInternal(a1, v5);
}

uint64_t re::DynamicArray<re::SharedPtr<re::ecs2::Entity>>::remove(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 16);
  if (v3)
  {
    v4 = 8 * v3;
    for (i = *(a1 + 32); *i != *a2; ++i)
    {
      v4 -= 8;
      if (!v4)
      {
        return 0;
      }
    }
  }

  else
  {
    i = *(a1 + 32);
  }

  if (i == (v2 + 8 * v3))
  {
    return 0;
  }

  re::DynamicArray<re::SharedPtr<re::internal::AssetReference>>::removeAt(a1, (i - v2) >> 3);
  return 1;
}

uint64_t re::NetworkSystem::registerLocalSessionForAssetSync(uint64_t a1, uint64_t a2)
{
  RESyncRetain();
  *(a1 + 2440) = a2;
  RESyncNetSessionAddObserver();
  RESyncNetSessionSetIsLocal();

  return RESyncNetSessionAddObserver();
}

uint64_t re::NetworkSystem::registerNetworkSessionForAssetSync(uint64_t a1, uint64_t a2)
{
  RESyncRetain();
  *(a1 + 2424) = a2;
  RESyncNetSessionAddObserver();

  return RESyncNetSessionAddObserver();
}

uint64_t re::NetworkSystem::registerDebugSessionForAssetSync(uint64_t a1, uint64_t a2)
{
  RESyncRetain();
  *(a1 + 2432) = a2;
  RESyncNetSessionAddObserver();

  return RESyncNetSessionAddObserver();
}

uint64_t re::NetworkSystem::unRegisterLocalSessionForAssetSync(re::NetworkSystem *this)
{
  RESyncNetSessionRemoveObserver();
  RESyncNetSessionRemoveObserver();
  result = RESyncRelease();
  *(this + 305) = 0;
  return result;
}

uint64_t re::NetworkSystem::unRegisterNetworkSessionForAssetSync(re::NetworkSystem *this)
{
  RESyncNetSessionRemoveObserver();
  RESyncNetSessionRemoveObserver();
  result = RESyncRelease();
  *(this + 303) = 0;
  return result;
}

uint64_t re::NetworkSystem::unRegisterDebugSessionForAssetSync(re::NetworkSystem *this)
{
  RESyncNetSessionRemoveObserver();
  RESyncNetSessionRemoveObserver();
  result = RESyncRelease();
  *(this + 304) = 0;
  return result;
}

uint64_t re::NetworkSystem::useOPACK(re::NetworkSystem *this)
{
  v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
  {
    v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    if (v3)
    {
      re::NetworkSystem::useOPACK(void)::useOPACK = re::NetworkSystem::useOPACK(void)::$_0::operator()();
      v1 = &re::introspect_StateTransitionInterruptionType(BOOL)::isInitialized;
    }
  }

  return v1[1416];
}

re *re::NetworkSystem::useOPACK(void)::$_0::operator()()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = _os_feature_enabled_impl();
  v1 = *re::ecsNetworkLogObjects(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEFAULT))
  {
    v2 = "binary format";
    if (v0)
    {
      v2 = "OPACK format";
    }

    v4 = 136446210;
    v5 = v2;
    _os_log_impl(&dword_1E1C61000, v1, OS_LOG_TYPE_DEFAULT, "Using %{public}s for network serialization.", &v4, 0xCu);
  }

  return v0;
}

uint64_t re::NetworkSystem::encodeComponent(uint64_t a1, unsigned int *a2, void *a3)
{
  v29 = *MEMORY[0x1E69E9840];
  v6 = *((*(*a3 + 40))(a3) + 24);
  v7 = v6 >> 1;
  v8 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) >> 27));
  v9 = re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(v27, a1 + 2944, v7, v8 ^ (v8 >> 31));
  if (v28 == 0x7FFFFFFF)
  {
    v10 = *re::ecsNetworkLogObjects(v9);
    v11 = 1;
    if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
    {
      v12 = *((*(*a3 + 40))(a3) + 32);
      *v27 = 136315138;
      *&v27[4] = v12;
      _os_log_impl(&dword_1E1C61000, v10, OS_LOG_TYPE_INFO, "No encoder for %s, skipping", v27, 0xCu);
    }
  }

  else
  {
    v13 = *(a1 + 2960) + 32 * v28;
    v14 = a2[4];
    *v27 = 0;
    re::snapshot::BufferEncoder::writeRaw<true>(a2, v27, 8uLL);
    v15 = a2[4];
    v11 = (*(*(v13 + 16) + 16))();
    v16 = a2[4];
    a2[4] = v14;
    *v27 = v16 - v15;
    re::snapshot::BufferEncoder::writeRaw<true>(a2, v27, 8uLL);
    a2[4] = v16;
    if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      v17 = (*(*a3 + 40))(a3);
      re::packCharArrayToUInt64ForAriadne(*(v17 + 32), 0);
      kdebug_trace();
    }

    if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
    {
      v18 = a3[2];
      v19 = *(v18 + 216);
      if (v19)
      {
        v20 = re::ecs2::NetworkComponent::owningProcessType(*(v18 + 216));
        if (v20)
        {
          v21 = v20;
          v22 = *(v19 + 432) ? "Remote" : "Local";
          v23 = (*(v19 + 432) == 1 ? "Shared" : v22);
          re::packCharArrayToUInt64ForAriadne(v23, 0);
          if (re::internal::enableSignposts(0, 0))
          {
            if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
            {
              v24 = (*(*a3 + 40))(a3);
              re::packCharArrayToUInt64ForAriadne(*(v24 + 32), 0);
              if (v21 == 1)
              {
                v25 = "Local";
              }

              else
              {
                v25 = "Remote";
              }

              re::packCharArrayToUInt64ForAriadne(v25, 0);
              kdebug_trace();
            }
          }
        }
      }
    }
  }

  return v11;
}

uint64_t re::NetworkSystem::decodeComponent(uint64_t a1, re::snapshot::BufferDecoder *this, void *a3)
{
  v4 = *(this + 3);
  v5 = *(this + 4) - v4;
  if (v5 <= 7)
  {
    re::snapshot::BufferDecoder::error(this, "overrun: attempted to read %zu bytes, only %zu remaining", 8uLL, v5);
    return 1;
  }

  else
  {
    v7 = *v4;
    *(this + 3) = v4 + 1;
    if (a3 && (v9 = *((*(*a3 + 40))(a3) + 24), v10 = v9 >> 1, v11 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) >> 27)), re::HashTable<unsigned long long,re::SharedPtr<re::SharedObject>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(&v27, a1 + 2992, v10, v11 ^ (v11 >> 31)), HIDWORD(v28) != 0x7FFFFFFF))
    {
      v14 = *(a1 + 3008) + 32 * HIDWORD(v28);
      v15 = *(this + 3);
      v16 = (*(*this + 32))(this);
      v17 = (*(*this + 40))(this);
      v28 = v15;
      v29 = v7;
      v32 = -1;
      v33 = 0;
      v34 = v16;
      v35 = v17;
      v36 = 0;
      v30 = v15;
      v31 = v15 + v7;
      v27 = &unk_1F5D172F0;
      v12 = (*(*(v14 + 16) + 16))();
      re::snapshot::BufferDecoder::skipData(this, v7);
      if (re::internal::enableSignposts(0, 0) && re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        v18 = (*(*a3 + 40))(a3);
        re::packCharArrayToUInt64ForAriadne(*(v18 + 32), 0);
        kdebug_trace();
      }

      if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
      {
        v19 = a3[2];
        if (v19)
        {
          v20 = *(v19 + 216);
          if (v20)
          {
            v21 = re::ecs2::NetworkComponent::owningProcessType(*(v19 + 216));
            if (v21)
            {
              v22 = v21;
              v23 = *(v20 + 432) ? "Remote" : "Local";
              v24 = (*(v20 + 432) == 1 ? "Shared" : v23);
              re::packCharArrayToUInt64ForAriadne(v24, 0);
              if (re::internal::enableSignposts(0, 0))
              {
                if (re::internal::enableHighFrequencyNetworkTracing(0, 0))
                {
                  v25 = (*(*a3 + 40))(a3);
                  re::packCharArrayToUInt64ForAriadne(*(v25 + 32), 0);
                  if (v22 == 1)
                  {
                    v26 = "Local";
                  }

                  else
                  {
                    v26 = "Remote";
                  }

                  re::packCharArrayToUInt64ForAriadne(v26, 0);
                  kdebug_trace();
                }
              }
            }
          }
        }
      }
    }

    else
    {
      re::snapshot::BufferDecoder::skipData(this, v7);
      return 0;
    }
  }

  return v12;
}

void re::NetworkSystem::resolveDeferedViews(re::NetworkSystem *this)
{
  if (re::NetworkSystemFeatureFlags::enableAltSharedApp(this) && *(this + 789))
  {
    v2 = *(this + 678);
    if (v2)
    {
      v3 = 0;
      v4 = (*(this + 337) + 8);
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
          LODWORD(v3) = *(this + 678);
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
      v6 = *(this + 337) + 24 * v3;
      v8 = *(v6 + 16);
      v7 = (v6 + 16);
      re::ecs2::NetworkComponent::bindEntityForRemoteSync(v8);
      v9 = *v7;
      v10 = 0xBF58476D1CE4E5B9 * (*v7 ^ (*v7 >> 30));
      v11 = (0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) ^ ((0x94D049BB133111EBLL * (v10 ^ (v10 >> 27))) >> 31);
      v12 = *(this + 696);
      if (v12)
      {
        v13 = v11 % v12;
        v14 = *(*(this + 346) + 4 * (v11 % v12));
        if (v14 != 0x7FFFFFFF)
        {
          v15 = *(this + 347);
          while (*(v15 + 24 * v14 + 16) != v9)
          {
            LODWORD(v14) = *(v15 + 24 * v14 + 8) & 0x7FFFFFFF;
            if (v14 == 0x7FFFFFFF)
            {
              goto LABEL_17;
            }
          }

          goto LABEL_25;
        }
      }

      else
      {
        v13 = 0;
      }

LABEL_17:
      v16 = *(this + 699);
      if (v16 == 0x7FFFFFFF)
      {
        v16 = *(this + 698);
        v17 = v16;
        if (v16 == v12)
        {
          re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::setCapacity(this + 2760, 2 * *(this + 697));
          v13 = v11 % *(this + 696);
          v17 = *(this + 698);
          v9 = *v7;
        }

        *(this + 698) = v17 + 1;
        v18 = *(this + 347);
        v19 = *(v18 + 24 * v16 + 8);
      }

      else
      {
        v18 = *(this + 347);
        v19 = *(v18 + 24 * v16 + 8);
        *(this + 699) = v19 & 0x7FFFFFFF;
      }

      *(v18 + 24 * v16 + 8) = v19 | 0x80000000;
      v20 = *(this + 346);
      *(*(this + 347) + 24 * v16 + 8) = *(*(this + 347) + 24 * v16 + 8) & 0x80000000 | *(v20 + 4 * v13);
      *(*(this + 347) + 24 * v16) = v11;
      *(*(this + 347) + 24 * v16 + 16) = v9;
      if (v9)
      {
        v21 = (v9 + 8);
        v20 = *(this + 346);
      }

      *(v20 + 4 * v13) = v16;
      ++*(this + 697);
      ++*(this + 700);
LABEL_25:
      v22 = *(this + 678);
      if (v22 <= v3 + 1)
      {
        v22 = v3 + 1;
      }

      while (v22 - 1 != v3)
      {
        LODWORD(v3) = v3 + 1;
        if ((*(*(this + 337) + 24 * v3 + 8) & 0x80000000) != 0)
        {
          goto LABEL_31;
        }
      }

      LODWORD(v3) = v22;
LABEL_31:
      ;
    }

    re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2680);
  }

  while (*(this + 697))
  {
    v23 = *(this + 698);
    v24 = *(this + 347);
    if (v23)
    {
      v25 = 0;
      v26 = (v24 + 8);
      while (1)
      {
        v27 = *v26;
        v26 += 6;
        if (v27 < 0)
        {
          break;
        }

        if (v23 == ++v25)
        {
          LODWORD(v25) = *(this + 698);
          break;
        }
      }

      v28 = v25;
    }

    else
    {
      v28 = 0;
    }

    v29 = v24 + 24 * v28;
    v30 = *(v29 + 16);
    if (v30)
    {
      v31 = *(v29 + 16);
      do
      {
        v32 = *(v31 + 16);
        if (!v32)
        {
          break;
        }

        v33 = *(v32 + 32);
        if (!v33 || (*(v33 + 304) & 0x80) != 0)
        {
          break;
        }

        v31 = *(v33 + 216);
        v64 = v31;
        if (v31)
        {
          v34 = (v31 + 8);
        }

        v35 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(this + 2760, &v64);
        if (v64)
        {
        }

        if (v35)
        {
          v30 = v31;
        }
      }

      while (v31);
    }

    re::ecs2::NetworkComponent::resolveViews(v30, this + 2760);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2760);
  while (*(this + 709))
  {
    v36 = *(this + 710);
    v37 = *(this + 353);
    if (v36)
    {
      v38 = 0;
      v39 = (v37 + 8);
      while (1)
      {
        v40 = *v39;
        v39 += 6;
        if (v40 < 0)
        {
          break;
        }

        if (v36 == ++v38)
        {
          LODWORD(v38) = *(this + 710);
          break;
        }
      }

      v41 = v38;
    }

    else
    {
      v41 = 0;
    }

    v42 = v37 + 24 * v41;
    v43 = *(v42 + 16);
    if (v43)
    {
      v44 = *(v42 + 16);
      do
      {
        v45 = *(v44 + 16);
        if (!v45)
        {
          break;
        }

        v46 = *(v45 + 32);
        if (!v46 || (*(v46 + 304) & 0x80) != 0)
        {
          break;
        }

        v44 = *(v46 + 216);
        v64 = v44;
        if (v44)
        {
          v47 = (v44 + 8);
        }

        v48 = re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::contains(this + 2808, &v64);
        if (v64)
        {
        }

        if (v48)
        {
          v43 = v44;
        }
      }

      while (v44);
    }

    re::ecs2::NetworkComponent::resolveLocalViews(v43, this + 2808);
  }

  re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::clear(this + 2808);
  v49 = *(this + 768);
  if (v49)
  {
    v50 = 0;
    v51 = *(this + 382);
    while ((*v51 & 0x80000000) == 0)
    {
      v51 += 82;
      if (v49 == ++v50)
      {
        LODWORD(v50) = *(this + 768);
        break;
      }
    }
  }

  else
  {
    LODWORD(v50) = 0;
  }

  if (v50 != v49)
  {
    v52 = *(this + 594);
    v53 = *(this + 768);
    v54 = v52;
    do
    {
      if (v54)
      {
        v55 = 0;
        v56 = *(this + 295);
        while (1)
        {
          v57 = *v56;
          v56 += 8;
          if (v57 < 0)
          {
            break;
          }

          if (v54 == ++v55)
          {
            LODWORD(v55) = v54;
            break;
          }
        }
      }

      else
      {
        LODWORD(v55) = 0;
      }

      if (v55 != v54)
      {
        v58 = (*(this + 382) + 328 * v50 + 16);
        do
        {
          v59 = *(this + 295) + 32 * v55;
          v61 = *(v59 + 16);
          v60 = (v59 + 16);
          if (v61 != *v58)
          {
            re::HashTable<unsigned long long,unsigned long long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add((v58 + 26), (*(this + 295) + 32 * v55 + 8), v60);
            v52 = *(this + 594);
          }

          if (v52 <= v55 + 1)
          {
            v62 = v55 + 1;
          }

          else
          {
            v62 = v52;
          }

          while (v62 - 1 != v55)
          {
            LODWORD(v55) = v55 + 1;
            if ((*(*(this + 295) + 32 * v55) & 0x80000000) != 0)
            {
              goto LABEL_101;
            }
          }

          LODWORD(v55) = v62;
LABEL_101:
          ;
        }

        while (v55 != v54);
        v53 = *(this + 768);
        v54 = v52;
      }

      if (v53 <= v50 + 1)
      {
        v63 = v50 + 1;
      }

      else
      {
        v63 = v53;
      }

      while (v63 - 1 != v50)
      {
        LODWORD(v50) = v50 + 1;
        if ((*(*(this + 382) + 328 * v50) & 0x80000000) != 0)
        {
          goto LABEL_110;
        }
      }

      LODWORD(v50) = v63;
LABEL_110:
      ;
    }

    while (v50 != v49);
  }

  re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::clear(this + 2344);
}

void ___ZN2re8internal27NetworkSystemAssetMessagingC2EPNS_13NetworkSystemE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = *(*(a1 + 32) + 40);
  if (v5)
  {
    v8 = a4;
    *buf = a3;
    v7 = a5;
    (*(*v5 + 48))(v5, buf, &v8, &v7);
  }

  else
  {
    v6 = *re::ecsNetworkLogObjects(0);
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
    {
      *buf = 0;
      _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "Missing receive message handler.", buf, 2u);
    }
  }
}

void ___ZN2re8internal27NetworkSystemAssetMessagingC2EPNS_13NetworkSystemE_block_invoke_2(re *a1)
{
  v1 = *(a1 + 4);
  if (*(v1 + 72))
  {
    PeerID = RESyncParticipantGetPeerID();

    std::function<void ()(unsigned long long)>::operator()(v1 + 48, PeerID);
  }

  else
  {
    v3 = *re::ecsNetworkLogObjects(a1);
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
    {
      *v4 = 0;
      _os_log_debug_impl(&dword_1E1C61000, v3, OS_LOG_TYPE_DEBUG, "Missing peer left handler.", v4, 2u);
    }
  }
}

void re::internal::NetworkSystemAssetMessaging::~NetworkSystemAssetMessaging(re::internal::NetworkSystemAssetMessaging *this)
{
  RESyncRelease();
  std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](this + 48);
  std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](this + 16);
}

{
  re::internal::NetworkSystemAssetMessaging::~NetworkSystemAssetMessaging(this);

  JUMPOUT(0x1E6906520);
}

BOOL re::internal::NetworkSystemAssetMessaging::sendMessage(re::internal::NetworkSystemAssetMessaging *this, unint64_t a2, const void *a3)
{
  v3 = this;
  v4 = *(this + 1);
  if (v4[303])
  {
    this = RESyncNetSessionIsActive();
    if (this)
    {
      goto LABEL_9;
    }

    v4 = *(v3 + 1);
  }

  if (v4[304])
  {
    this = RESyncNetSessionIsActive();
    if ((this & 1) == 0)
    {
      v4 = *(v3 + 1);
      goto LABEL_7;
    }

LABEL_9:
    RESyncNetSessionSendData();
    return 1;
  }

LABEL_7:
  if (v4[305])
  {
    this = RESyncNetSessionIsActive();
    if (this)
    {
      goto LABEL_9;
    }
  }

  v6 = *re::ecsNetworkLogObjects(this);
  result = os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG);
  if (result)
  {
    *v7 = 0;
    _os_log_debug_impl(&dword_1E1C61000, v6, OS_LOG_TYPE_DEBUG, "Failed to send message (no session available)", v7, 2u);
    return 0;
  }

  return result;
}

uint64_t re::internal::NetworkSystemAssetMessaging::setReceiveMessageHandler(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 16);
  std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::__value_func[abi:nn200100](v7, a2);
  if (v7 != v3)
  {
    v4 = v8;
    v5 = *(a1 + 40);
    if (v8 == v7)
    {
      if (v5 == v3)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 40) + 24))(*(a1 + 40), v7);
        (*(**(a1 + 40) + 32))(*(a1 + 40));
        *(a1 + 40) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, v3);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 40);
      }

      *(a1 + 40) = v3;
    }

    else if (v5 == v3)
    {
      (*(*v5 + 24))(*(a1 + 40), v7);
      (*(**(a1 + 40) + 32))(*(a1 + 40));
      *(a1 + 40) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 40);
      *(a1 + 40) = v4;
    }
  }

  return std::__function::__value_func<void ()(unsigned long long,void const*,unsigned int)>::~__value_func[abi:nn200100](v7);
}

uint64_t re::internal::NetworkSystemAssetMessaging::setPeerLeftHandler(uint64_t a1, uint64_t a2)
{
  v9[3] = *MEMORY[0x1E69E9840];
  v3 = (a1 + 48);
  std::__function::__value_func<void ()(unsigned long long)>::__value_func[abi:nn200100](v7, a2);
  if (v7 != v3)
  {
    v4 = v8;
    v5 = *(a1 + 72);
    if (v8 == v7)
    {
      if (v5 == v3)
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = 0;
        (*(**(a1 + 72) + 24))(*(a1 + 72), v7);
        (*(**(a1 + 72) + 32))(*(a1 + 72));
        *(a1 + 72) = 0;
        v8 = v7;
        (*(v9[0] + 24))(v9, v3);
        (*(v9[0] + 32))(v9);
      }

      else
      {
        (*(*v8 + 24))();
        (*(*v8 + 32))(v8);
        v8 = *(a1 + 72);
      }

      *(a1 + 72) = v3;
    }

    else if (v5 == v3)
    {
      (*(*v5 + 24))(*(a1 + 72), v7);
      (*(**(a1 + 72) + 32))(*(a1 + 72));
      *(a1 + 72) = v8;
      v8 = v7;
    }

    else
    {
      v8 = *(a1 + 72);
      *(a1 + 72) = v4;
    }
  }

  return std::__function::__value_func<void ()(unsigned long long)>::~__value_func[abi:nn200100](v7);
}

void *re::allocInfo_NetworkSystem(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_391, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_391))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B4B58, "NetworkSystem");
    __cxa_guard_release(&_MergedGlobals_391);
  }

  return &unk_1EE1B4B58;
}

void re::initInfo_NetworkSystem(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xF3320DE1EEEA1BBALL;
  v6[1] = "NetworkSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0xC7000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::initInfo_NetworkSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::NetworkSystem>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::NetworkSystem>;
  *(this + 13) = re::internal::defaultConstructV2<re::NetworkSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::NetworkSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::addAsMove(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 24 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 24 * v8 + 8) = v11 | 0x80000000;
  v12 = *(a1 + 8);
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(v12 + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *a5 = 0;
  *(v12 + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v14, 0, 36);
      *&v14[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::init(v14, v4, a2);
      v5 = *v14;
      *v14 = *a1;
      *a1 = v5;
      v6 = *&v14[16];
      v7 = *(a1 + 16);
      *&v14[16] = v7;
      *(a1 + 16) = v6;
      v9 = *&v14[24];
      *&v14[24] = *(a1 + 24);
      v8 = *&v14[32];
      *(a1 + 24) = v9;
      v10 = v8;
      if (v8)
      {
        v11 = 0;
        v12 = v7 + 16;
        do
        {
          if ((*(v12 - 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::addAsMove(a1, *(v12 - 16) % *(a1 + 24), *(v12 - 16), v12, v12);
          }

          ++v11;
          v12 += 24;
        }

        while (v11 < v10);
      }

      re::HashSetBase<re::SharedPtr<re::AnimationEventDelegate>,re::SharedPtr<re::AnimationEventDelegate>,re::internal::ValueAsKey<re::SharedPtr<re::AnimationEventDelegate>>,re::Hash<re::SharedPtr<re::AnimationEventDelegate>>,re::EqualTo<re::SharedPtr<re::AnimationEventDelegate>>,true,false>::deinit(v14);
    }
  }

  else
  {
    if (a2)
    {
      v13 = a2;
    }

    else
    {
      v13 = 3;
    }
  }
}

void re::HashSetBase<re::SharedPtr<re::ecs2::NetworkComponent>,re::SharedPtr<re::ecs2::NetworkComponent>,re::internal::ValueAsKey<re::SharedPtr<re::ecs2::NetworkComponent>>,re::Hash<re::SharedPtr<re::ecs2::NetworkComponent>>,re::EqualTo<re::SharedPtr<re::ecs2::NetworkComponent>>,true,false>::init(uint64_t a1, uint64_t a2, signed int a3)
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
  v12 = (*(*a2 + 32))(a2, v11 + 24 * v10, 16);
  if (v12)
  {
    v14 = v12;
    *(a1 + 8) = v12;
    if (v10)
    {
      memset_pattern16(v12, &memset_pattern_154, 4 * v10);
    }

    *(a1 + 16) = &v14[v11];
    *(a1 + 24) = v10;
    *(a1 + 40) = 0;
  }

  else
  {
    re::internal::assertLog(4, v13, "assertion failure: '%s' (%s:line %i) Out of memory.", "temp", "init", 601);
    _os_crash();
    __break(1u);
  }
}