uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF74F8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>,REEventHandlerResult (re::ecs2::HierarchyStateTracking<re::ecs2::FadeOpacity>::*)(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,RESceneEntityWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF74F8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

void *re::BucketArray<re::ecs2::OpacityManagerStateTracking::buildOpacityForEntityHierarchy(re::ecs2::Entity const*,re::ecs2::WorldRootProvider const&)::EntityOpacity,32ul>::setBucketsCapacity(void *result, unint64_t a2)
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
          result = (*(**v3 + 32))(*v3, 1024, 0);
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

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 48 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 48 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 40) = a3;
  ++*(a1 + 28);
  return v7 + 48 * v5;
}

void re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(a1, v9);
      re::HashTable<re::internal::MemoryAttributionTaskAndPeerID,re::MemoryAttributionIDMap::MapValue,re::Hash<re::internal::MemoryAttributionTaskAndPeerID>,re::EqualTo<re::internal::MemoryAttributionTaskAndPeerID>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::move(uint64_t result, uint64_t a2)
{
  if (*(a2 + 32))
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    do
    {
      v6 = *(a2 + 16);
      if ((*(v6 + v4) & 0x80000000) != 0)
      {
        result = re::HashTable<re::ecs2::Entity const*,re::ecs2::FadeOpacity,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(v3, *(v6 + v4 + 40) % *(v3 + 24));
        *(result + 8) = *(*(a2 + 16) + v4 + 8);
        v7 = *(a2 + 16) + v4;
        *(result + 16) = *(v7 + 16);
        v8 = *(v7 + 32);
        *(result + 32) = v8;
        if (v8 == 1)
        {
          *(result + 36) = *(v7 + 36);
        }
      }

      ++v5;
      v4 += 48;
    }

    while (v5 < *(a2 + 32));
  }

  return result;
}

void *re::ecs2::allocInfo_DepthMitigationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_340, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_340))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AED38, "DepthMitigationComponent");
    __cxa_guard_release(&_MergedGlobals_340);
  }

  return &unk_1EE1AED38;
}

void re::ecs2::initInfo_DepthMitigationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0xA15C66301F66D1B6;
  v22[1] = "DepthMitigationComponent";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&qword_1EE1AED10, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AED10);
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
      qword_1EE1AED18 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "depthMitigationEnabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AED20 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "appliesToChildren";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1A00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AED28 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "isDragged";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1B00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AED30 = v20;
      __cxa_guard_release(&qword_1EE1AED10);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1AED18;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DepthMitigationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DepthMitigationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DepthMitigationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DepthMitigationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224DepthMitigationComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v21 = v23;
}

double re::internal::defaultConstruct<re::ecs2::DepthMitigationComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *v3 = &unk_1F5CE4D68;
  *&result = 65792;
  *(v3 + 24) = 65792;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::DepthMitigationComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *v1 = &unk_1F5CE4D68;
  *&result = 65792;
  *(v1 + 24) = 65792;
  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs224DepthMitigationComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

void re::ecs2::ibrutils::inferContentPlaneGeometry(re::ecs2::ibrutils *this@<X0>, const re::ecs2::Entity *a2@<X1>, re::TransformService *a3@<X2>, uint64_t a4@<X8>)
{
  if ((atomic_load_explicit(_MergedGlobals_341, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(_MergedGlobals_341))
  {
    xmmword_1EE1AEDE0 = 0u;
    unk_1EE1AEDF0 = 0u;
    xmmword_1EE1AEE00 = 0u;
    unk_1EE1AEE10 = xmmword_1E308C200;
    __asm { FMOV            V0.2S, #-1.0 }

    *&xmmword_1EE1AEE20 = _D0;
    __cxa_guard_release(_MergedGlobals_341);
  }

  v7 = *(this + 24);
  if (v7 && (v8 = re::AssetHandle::loadedAsset<re::MeshAsset>((v7 + 32))) != 0)
  {
    v9 = v8;
    re::TransformService::worldMatrix(a2, this, 0, &v47);
    re::TransformService::worldTransform(a2, this, 0, &v52);
    v10 = v53;
    v52 = xmmword_1E3047670;
    v53 = xmmword_1E3047680;
    v54 = xmmword_1E30476A0;
    v55 = xmmword_1E30474D0;
    re::MeshAsset::aabbFromMesh(v9, &v52, &v45);
    v11 = 0;
    v12 = vmulq_f32(v47, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v49, v49, 0xCuLL), v49, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v48, v48), v48, 0xCuLL))), vextq_s8(vuzp1q_s32(v49, v49), v49, 0xCuLL), vextq_s8(vextq_s8(v48, v48, 0xCuLL), v48, 8uLL)));
    v13 = -1.0;
    if ((v12.f32[2] + vaddv_f32(*v12.f32)) > 0.0)
    {
      v13 = 1.0;
    }

    v14 = vmulq_f32(v47, v47);
    v15 = vmulq_f32(v48, v48);
    v16 = vmul_f32(vmaxnm_f32(vsub_f32(*v46.f32, *v45.f32), 0), vmul_n_f32(vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v14, v14, 8uLL), *&vextq_s8(v15, v15, 8uLL)), vadd_f32(vzip1_s32(*v14.f32, *v15.i8), vzip2_s32(*v14.f32, *v15.i8)))), v13));
    v17 = vcgtq_f32(v45, v46);
    v17.i32[3] = v17.i32[2];
    v18 = vmaxvq_u32(v17);
    v14.i64[0] = 0x3F0000003F000000;
    v14.i64[1] = 0x3F0000003F000000;
    v19 = vmulq_f32(vaddq_f32(v46, v45), v14);
    v20 = v19.u32[2];
    _NF = v18 < 0;
    v22 = v19.i64[0];
    if (_NF)
    {
      v20 = 0;
      v22 = 0;
    }

    v36 = vaddq_f32(v50, vmlaq_f32(vmlaq_f32(vmulq_f32(v47, vdupq_n_s32(v22)), vdupq_n_s32(HIDWORD(v22)), v48), vdupq_n_s32(v20), v49));
    v23 = v10.f32[0] * (v10.f32[0] + v10.f32[0]);
    v24 = v10.f32[1] * (v10.f32[1] + v10.f32[1]);
    v25 = v10.f32[2] * (v10.f32[2] + v10.f32[2]);
    v26 = (v10.f32[0] + v10.f32[0]) * v10.f32[1];
    v27 = (v10.f32[0] + v10.f32[0]) * v10.f32[2];
    v28 = (v10.f32[1] + v10.f32[1]) * v10.f32[2];
    v29 = (v10.f32[1] + v10.f32[1]) * v10.f32[3];
    v30 = (v10.f32[2] + v10.f32[2]) * v10.f32[3];
    v31.i32[3] = 0;
    v31.f32[0] = 1.0 - (v24 + v25);
    v31.f32[1] = v26 + v30;
    v31.f32[2] = v27 - v29;
    v32 = (v10.f32[0] + v10.f32[0]) * v10.f32[3];
    v33.i32[3] = 0;
    v33.f32[0] = v26 - v30;
    v33.f32[1] = 1.0 - (v23 + v25);
    v33.f32[2] = v28 + v32;
    v34.i32[3] = 0;
    v34.f32[0] = v27 + v29;
    v44 = v16;
    v35 = vmulq_n_f32(v31, v16.f32[0]);
    v36.i32[3] = 1.0;
    v51[0] = xmmword_1E3047670;
    v51[1] = xmmword_1E3047680;
    v37 = vmulq_n_f32(v33, -v16.f32[1]);
    v51[2] = xmmword_1E30476A0;
    v51[3] = xmmword_1E3093FA0;
    do
    {
      v34.f32[2] = 1.0 - (v23 + v24);
      v34.f32[1] = v28 - v32;
      *(&v52 + v11 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v35, COERCE_FLOAT(v51[v11])), v37, *&v51[v11], 1), v34, v51[v11], 2), v36, v51[v11], 3);
      ++v11;
    }

    while (v11 != 4);
    v56.columns[2] = v54;
    v56.columns[3] = v55;
    v56.columns[0] = v52;
    v56.columns[1] = v53;
    *a4 = __invert_f4(v56);
    *(a4 + 64) = v44;
  }

  else
  {
    v38 = unk_1EE1AEE10;
    *(a4 + 32) = xmmword_1EE1AEE00;
    *(a4 + 48) = v38;
    *(a4 + 64) = xmmword_1EE1AEE20;
    v39 = unk_1EE1AEDF0;
    *a4 = xmmword_1EE1AEDE0;
    *(a4 + 16) = v39;
  }
}

void *re::ecs2::allocInfo_FrameCountComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AEE38, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AEE38))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AEE50, "FrameCountComponent");
    __cxa_guard_release(&qword_1EE1AEE38);
  }

  return &unk_1EE1AEE50;
}

void re::ecs2::initInfo_FrameCountComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x4A8E0D736060CEB6;
  v14[1] = "FrameCountComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&_MergedGlobals_342, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_342);
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
      qword_1EE1AEE40 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "m_frameCount";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AEE48 = v12;
      __cxa_guard_release(&_MergedGlobals_342);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AEE40;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::FrameCountComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::FrameCountComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::FrameCountComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::FrameCountComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs219FrameCountComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void re::internal::defaultConstruct<re::ecs2::FrameCountComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 4) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE7EB8;
}

void re::internal::defaultConstructV2<re::ecs2::FrameCountComponent>(uint64_t a1)
{
  *(a1 + 32) = 0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE7EB8;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs219FrameCountComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 12;
    *(a2 + 8) = 0;
  }
}

void *re::ecs2::allocInfo_RenderOptionsService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_343, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_343))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AEEE8, "RenderOptionsService");
    __cxa_guard_release(&_MergedGlobals_343);
  }

  return &unk_1EE1AEEE8;
}

void re::ecs2::initInfo_RenderOptionsService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x31DB530E229D1B1ALL;
  v6[1] = "RenderOptionsService";
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
  *(this + 8) = &re::ecs2::initInfo_RenderOptionsService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::ecs2::HierarchyStateTracking<re::ecs2::EntityRenderOptions>::updatePerEntityStateData(uint64_t a1, int a2)
{
  if (a2)
  {
    (*(*a1 + 32))(a1, a1 + 104);
  }

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 104);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 200);

  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::clear(a1 + 248);
}

void *re::ecs2::RenderOptions::forEntity(re::ecs2::RenderOptions *this, unint64_t a2)
{
  if (!a2 || (*(a2 + 304) & 0x41) == 0)
  {
    return &re::ecs2::EntityRenderOptions::invisibleRenderOptions(void)::s_invisibleRenderOptions;
  }

  v12 = v2;
  v13 = v3;
  v4 = *this;
  v9 = a2;
  v5 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
  v6 = re::HashTable<re::ecs2::Entity const*,re::ecs2::EntityRenderOptions,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(v4 + 56, &v9, v5 ^ (v5 >> 31), buf);
  if (v11 != 0x7FFFFFFF)
  {
    return (*(v4 + 72) + 56 * v11 + 16);
  }

  if ((atomic_exchange(re::ecs2::RenderOptions::forEntity(re::ecs2::Entity const*)const::errorLogged, 1u) & 1) == 0)
  {
    v7 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
    }
  }

  return &re::ecs2::EntityRenderOptions::defaultRenderOptions(void)::s_defaultRenderOptions;
}

void *re::allocInfo_SpatialMediaService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_344, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_344))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AEF80, "SpatialMediaService");
    __cxa_guard_release(&_MergedGlobals_344);
  }

  return &unk_1EE1AEF80;
}

void re::initInfo_SpatialMediaService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xCAC001F40A1CB26ALL;
  v6[1] = "SpatialMediaService";
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
  *(this + 8) = &re::initInfo_SpatialMediaService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_PassthroughDarkeningComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF018, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF018))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF0A8, "PassthroughDarkeningComponent");
    __cxa_guard_release(&qword_1EE1AF018);
  }

  return &unk_1EE1AF0A8;
}

void re::ecs2::initInfo_PassthroughDarkeningComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v32[0] = 0x3BE276F3A69CE7DCLL;
  v32[1] = "PassthroughDarkeningComponent";
  if (v32[0])
  {
    if (v32[0])
    {
    }
  }

  *(this + 2) = v33;
  if ((atomic_load_explicit(&qword_1EE1AF020, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF020);
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
      qword_1EE1AF030 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "lightspillEnabled";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AF038 = v12;
      v13 = re::introspectionAllocator(v12);
      re::IntrospectionInfo<re::Optional<re::Matrix3x3<float>>>::get();
      v14 = (*(*v13 + 32))(v13, 72, 8);
      *v14 = 1;
      *(v14 + 8) = "darkeningMatrix";
      *(v14 + 16) = &qword_1EE1AF068;
      *(v14 + 24) = 0;
      *(v14 + 32) = 0x2000000002;
      *(v14 + 40) = 0;
      *(v14 + 48) = 0;
      *(v14 + 56) = 0;
      *(v14 + 64) = 0;
      qword_1EE1AF040 = v14;
      v15 = re::introspectionAllocator(v14);
      v17 = re::introspect_float(1, v16);
      v18 = (*(*v15 + 32))(v15, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "lightSpillIntensity";
      *(v18 + 16) = v17;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x6000000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1AF048 = v18;
      v19 = re::introspectionAllocator(v18);
      v21 = re::introspect_BOOL(1, v20);
      v22 = (*(*v19 + 32))(v19, 72, 8);
      *v22 = 1;
      *(v22 + 8) = "chromaticAdaptationSuspended";
      *(v22 + 16) = v21;
      *(v22 + 24) = 0;
      *(v22 + 32) = 0x6400000004;
      *(v22 + 40) = 0;
      *(v22 + 48) = 0;
      *(v22 + 56) = 0;
      *(v22 + 64) = 0;
      qword_1EE1AF050 = v22;
      v23 = re::introspectionAllocator(v22);
      v25 = re::introspect_float(1, v24);
      v26 = (*(*v23 + 32))(v23, 72, 8);
      *v26 = 1;
      *(v26 + 8) = "glowIntensity";
      *(v26 + 16) = v25;
      *(v26 + 24) = 0;
      *(v26 + 32) = 0x6800000005;
      *(v26 + 40) = 0;
      *(v26 + 48) = 0;
      *(v26 + 56) = 0;
      *(v26 + 64) = 0;
      qword_1EE1AF058 = v26;
      v27 = re::introspectionAllocator(v26);
      v29 = re::introspect_float(1, v28);
      v30 = (*(*v27 + 32))(v27, 72, 8);
      *v30 = 1;
      *(v30 + 8) = "glowSampleSpread";
      *(v30 + 16) = v29;
      *(v30 + 24) = 0;
      *(v30 + 32) = 0x6C00000006;
      *(v30 + 40) = 0;
      *(v30 + 48) = 0;
      *(v30 + 56) = 0;
      *(v30 + 64) = 0;
      qword_1EE1AF060 = v30;
      __cxa_guard_release(&qword_1EE1AF020);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 7;
  *(this + 8) = &qword_1EE1AF030;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PassthroughDarkeningComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PassthroughDarkeningComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PassthroughDarkeningComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PassthroughDarkeningComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs229PassthroughDarkeningComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v31 = v33;
}

void re::IntrospectionInfo<re::Optional<re::Matrix3x3<float>>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AF028, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF028))
  {
    re::IntrospectionOptional<re::Matrix3x3<float>>::IntrospectionOptional();
    __cxa_guard_release(&qword_1EE1AF028);
  }

  if ((_MergedGlobals_345 & 1) == 0)
  {
    v0 = re::introspect_Matrix3x3F(1);
    if ((_MergedGlobals_345 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_345 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AF068, 0);
      qword_1EE1AF078 = 0x400000000DLL;
      dword_1EE1AF080 = v2;
      word_1EE1AF084 = 0;
      *&xmmword_1EE1AF088 = 0;
      *(&xmmword_1EE1AF088 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AF098 = v1;
      qword_1EE1AF0A0 = 0;
      qword_1EE1AF068 = &unk_1F5CF7550;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AF068, &v12);
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
        re::TypeBuilder::beginOptionalType(&v12, &v10, 0x40uLL, 0x10uLL, &v11);
        re::TypeBuilder::setOptionalAccessors(&v12, re::TypeBuilderHelper::registerOptional<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AF088 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

double re::internal::defaultConstruct<re::ecs2::PassthroughDarkeningComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CDFEE8;
  *(v3 + 32) = 0;
  *(v3 + 96) = 1065353216;
  *(v3 + 100) = 0;
  result = 0.12500003;
  *(v3 + 104) = 0x3FC000003F800000;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::PassthroughDarkeningComponent>(ArcSharedObject *a1)
{
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
  *v1 = &unk_1F5CDFEE8;
  *(v1 + 32) = 0;
  *(v1 + 96) = 1065353216;
  *(v1 + 100) = 0;
  result = 0.12500003;
  *(v1 + 104) = 0x3FC000003F800000;
  return result;
}

uint64_t re::IntrospectionOptional<re::Matrix3x3<float>>::IntrospectionOptional()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AF068, 0);
  *(&qword_1EE1AF078 + 6) = 0;
  qword_1EE1AF078 = 0;
  *&xmmword_1EE1AF088 = 0;
  *(&xmmword_1EE1AF088 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AF068 = &unk_1F5CBA310;
  qword_1EE1AF0A0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AF098);
  qword_1EE1AF068 = &unk_1F5CF7550;
  return result;
}

void *re::IntrospectionOptional<re::Matrix3x3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::Matrix3x3<float>>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::Matrix3x3<float>>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *(a2 + 16) = 0u;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<re::Matrix3x3<float>>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 16;
}

{
  return a2 + 16;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 16;
  if (!v2)
  {
    return 0;
  }

  return result;
}

__n128 re::TypeBuilderHelper::registerOptional<re::Matrix3x3<float>>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(__n128 *a1, __n128 *a2)
{
  if (a2)
  {
    v4 = *a2;
    v5 = a2[1];
    v6 = a2[2];
    if (a1->n128_u8[0])
    {
      result = *a2;
      v3 = a2[2];
      a1[2] = a2[1];
      a1[3] = v3;
      a1[1] = result;
    }

    else
    {
      a1->n128_u8[0] = 1;
      a1[1] = v4;
      a1[2] = v5;
      result = v6;
      a1[3] = v6;
    }
  }

  else if (a1->n128_u8[0] == 1)
  {
    a1->n128_u8[0] = 0;
  }

  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs229PassthroughDarkeningComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::allocInfo_VideoService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_346, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_346))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF140, "VideoService");
    __cxa_guard_release(&_MergedGlobals_346);
  }

  return &unk_1EE1AF140;
}

void re::initInfo_VideoService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x3F1D323CEE935BB4;
  v6[1] = "VideoService";
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
  *(this + 8) = &re::initInfo_VideoService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

_anonymous_namespace_ *re::ecs2::NetworkAssetComponentSystem::willAddSystemToECSService(re::ecs2::NetworkAssetComponentSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::NetworkAssetService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::AssetService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::NetworkAssetComponentSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

uint64_t re::ecs2::NetworkAssetComponentSystem::willAddSceneToECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = v3;
    v8 = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddComponents,re::ecs2::NetworkAssetComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v7);
    v7 = v3;
    v8 = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::willRemoveComponents,re::ecs2::NetworkAssetComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 272), &v7);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = v3;
    v8 = re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddPreloadComponents,re::ecs2::NetworkAssetComponentSystem>;
    v9 = 0;
    v10 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    v6 = re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v5 + 8), &v7);
    this = *(v3 + 224);
    if (this)
    {
      return (*(*this + 184))(this, a2, v6);
    }
  }

  return this;
}

uint64_t re::ecs2::NetworkAssetComponentSystem::willRemoveSceneFromECSService(uint64_t this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = this;
    v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = v3;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddComponents,re::ecs2::NetworkAssetComponentSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v6);
    *&v6 = v3;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::willRemoveComponents,re::ecs2::NetworkAssetComponentSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 272, &v6);
    v5 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AssetPreloadComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    *&v6 = v3;
    *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddPreloadComponents,re::ecs2::NetworkAssetComponentSystem>;
    v7 = 0;
    v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
    re::Event<re::GeometricObjectBase>::removeSubscription(v5 + 8, &v6);
    this = *(v3 + 224);
    if (this)
    {
      return (*(*this + 192))(this, a2);
    }
  }

  return this;
}

void *re::ecs2::allocInfo_NetworkAssetComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF1D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF1D8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF2E8, "NetworkAssetComponent");
    __cxa_guard_release(&qword_1EE1AF1D8);
  }

  return &unk_1EE1AF2E8;
}

void re::ecs2::initInfo_NetworkAssetComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v35[0] = 0x93E695FE988D5B36;
  v35[1] = "NetworkAssetComponent";
  if (v35[0])
  {
    if (v35[0])
    {
    }
  }

  *(this + 2) = v36;
  if ((atomic_load_explicit(&qword_1EE1AF1E0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF1E0);
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
      qword_1EE1AF218 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_uint64_t(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "assetId";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AF220 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::DynamicString>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "assetType";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2800000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AF228 = v16;
      v17 = re::introspectionAllocator(v16);
      re::IntrospectionInfo<re::DynamicArray<re::AssetLoadDescriptor>>::get();
      v18 = (*(*v17 + 32))(v17, 72, 8);
      *v18 = 1;
      *(v18 + 8) = "loadDescriptors";
      *(v18 + 16) = &qword_1EE1AF258;
      *(v18 + 24) = 0;
      *(v18 + 32) = 0x4800000003;
      *(v18 + 40) = 0;
      *(v18 + 48) = 0;
      *(v18 + 56) = 0;
      *(v18 + 64) = 0;
      qword_1EE1AF230 = v18;
      v19 = re::introspectionAllocator(v18);
      re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(v19, v20);
      v21 = (*(*v19 + 32))(v19, 72, 8);
      *v21 = 1;
      *(v21 + 8) = "dependencies";
      *(v21 + 16) = qword_1EE1AF298;
      *(v21 + 24) = 0;
      *(v21 + 32) = 0x7000000004;
      *(v21 + 40) = 0;
      *(v21 + 48) = 0;
      *(v21 + 56) = 0;
      *(v21 + 64) = 0;
      qword_1EE1AF238 = v21;
      v22 = re::introspectionAllocator(v21);
      v24 = re::introspect_BOOL(1, v23);
      v25 = (*(*v22 + 32))(v22, 72, 8);
      *v25 = 1;
      *(v25 + 8) = "isMutable";
      *(v25 + 16) = v24;
      *(v25 + 24) = 0;
      *(v25 + 32) = 0xA000000005;
      *(v25 + 40) = 0;
      *(v25 + 48) = 0;
      *(v25 + 56) = 0;
      *(v25 + 64) = 0;
      qword_1EE1AF240 = v25;
      v26 = re::introspectionAllocator(v25);
      v28 = re::IntrospectionInfo<re::HashTable<re::StringID,re::DynamicString,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(1, v27);
      v29 = (*(*v26 + 32))(v26, 72, 8);
      *v29 = 1;
      *(v29 + 8) = "metadata";
      *(v29 + 16) = v28;
      *(v29 + 24) = 0;
      *(v29 + 32) = 0xA800000006;
      *(v29 + 40) = 0;
      *(v29 + 48) = 0;
      *(v29 + 56) = 0;
      *(v29 + 64) = 0;
      qword_1EE1AF248 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "memoryAttributionID";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0xD800000007;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1AF250 = v33;
      __cxa_guard_release(&qword_1EE1AF1E0);
    }
  }

  *(this + 2) = 0xE800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1AF218;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkAssetComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkAssetComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkAssetComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkAssetComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221NetworkAssetComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v34 = v36;
}

void re::IntrospectionInfo<re::DynamicArray<re::AssetLoadDescriptor>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AF208, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF208))
  {
    re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AF208);
  }

  if ((_MergedGlobals_347 & 1) == 0)
  {
    Descriptor = re::introspect_AssetLoadDescriptor(1);
    if ((_MergedGlobals_347 & 1) == 0)
    {
      v1 = Descriptor;
      _MergedGlobals_347 = 1;
      v2 = *(Descriptor + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AF258, 0);
      qword_1EE1AF268 = 0x2800000003;
      dword_1EE1AF270 = v2;
      word_1EE1AF274 = 0;
      *&xmmword_1EE1AF278 = 0;
      *(&xmmword_1EE1AF278 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AF288 = v1;
      qword_1EE1AF290 = 0;
      qword_1EE1AF258 = &unk_1F5CF7660;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AF258, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AF278 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AF210, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF210))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(qword_1EE1AF298);
    qword_1EE1AF298[0] = &unk_1F5CF76F8;
    __cxa_guard_release(&qword_1EE1AF210);
  }

  if ((byte_1EE1AF1D1 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::DynamicString>::get(1, a2);
    v4 = re::introspect_uint64_t(1, v3);
    if ((byte_1EE1AF1D1 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1AF1D1 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(qword_1EE1AF298, 0);
      unk_1EE1AF2A8 = 0x3000000007;
      unk_1EE1AF2B0 = v6;
      unk_1EE1AF2B4 = 0;
      *&xmmword_1EE1AF2B8 = 0;
      *(&xmmword_1EE1AF2B8 + 1) = 0xFFFFFFFFLL;
      unk_1EE1AF2C8 = v2;
      unk_1EE1AF2D0 = 0;
      qword_1EE1AF2D8 = v5;
      unk_1EE1AF2E0 = 0;
      qword_1EE1AF298[0] = &unk_1F5CF76F8;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(qword_1EE1AF298, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AF2B8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

uint64_t *re::IntrospectionInfo<re::Optional<unsigned long long>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<unsigned long long>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_uint64_t(1, a2);
  if ((re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info, 0);
    qword_1EE186408 = 0x100000000DLL;
    dword_1EE186410 = v8;
    word_1EE186414 = 0;
    *&xmmword_1EE186418 = 0;
    *(&xmmword_1EE186418 + 1) = 0xFFFFFFFFLL;
    qword_1EE186428 = v7;
    unk_1EE186430 = 0;
    re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info = &unk_1F5CF7798;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info, &v15);
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
    xmmword_1EE186418 = v14;
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

  return &re::IntrospectionInfo<re::Optional<unsigned long long>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_AssetPreloadComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF1E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF1E8))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF378, "AssetPreloadComponent");
    __cxa_guard_release(&qword_1EE1AF1E8);
  }

  return &unk_1EE1AF378;
}

void re::ecs2::initInfo_AssetPreloadComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0xBC3854CE9A184FC8;
  v10[1] = "AssetPreloadComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1AF1F8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF1F8);
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
      qword_1EE1AF1F0 = v8;
      __cxa_guard_release(&qword_1EE1AF1F8);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1AF1F0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AssetPreloadComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AssetPreloadComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AssetPreloadComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AssetPreloadComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs221AssetPreloadComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::AssetPreloadComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CB8110;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::AssetPreloadComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CB8110;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::ecs2::allocInfo_NetworkAssetComponentSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF200, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF200))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF408, "NetworkAssetComponentSystem");
    __cxa_guard_release(&qword_1EE1AF200);
  }

  return &unk_1EE1AF408;
}

void re::ecs2::initInfo_NetworkAssetComponentSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2BD7885563705754;
  v6[1] = "NetworkAssetComponentSystem";
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
  *(this + 8) = &re::ecs2::initInfo_NetworkAssetComponentSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::NetworkAssetComponentSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::NetworkAssetComponentSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::NetworkAssetComponentSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
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
  *result = &unk_1F5CF75D0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::NetworkAssetComponentSystem>(_OWORD *a1)
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
  *result = &unk_1F5CF75D0;
  return result;
}

void re::ecs2::NetworkAssetComponentSystem::~NetworkAssetComponentSystem(re::ecs2::NetworkAssetComponentSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddComponents,re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    if (*(a1 + 40))
    {
      v5 = a4 == 0;
    }

    else
    {
      v5 = 1;
    }

    if (!v5)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3++;
        (*(**(a1 + 224) + 136))(*(a1 + 224), *(v8 + 32), v8 + 72, *(v8 + 16));
        v7 -= 8;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::NetworkAssetComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::willRemoveComponents,re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (*(a1 + 224))
  {
    if (*(a1 + 40) && a4 != 0)
    {
      v7 = 8 * a4;
      do
      {
        v8 = *a3;
        v9 = (*(**(a1 + 224) + 112))(*(a1 + 224), *(*a3 + 32));
        if ((*(**(a1 + 224) + 144))(*(a1 + 224), *(v8 + 32), v8 + 72) && (v9 & 1) == 0)
        {
          re::AssetManager::cancelLoadingAssetId(*(a1 + 232), *(v8 + 32));
        }

        ++a3;
        v7 -= 8;
      }

      while (v7);
    }
  }

  return 0;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::NetworkAssetComponentSystem::didAddPreloadComponents,re::ecs2::NetworkAssetComponentSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v39 = *MEMORY[0x1E69E9840];
  if (*(a1 + 224))
  {
    v4 = a1;
    if (*(a1 + 40) && a4 != 0)
    {
      for (i = 8 * a4; i; i -= 8)
      {
        v9 = *a3;
        v10 = *(*a3 + 16);
        if (v10)
        {
          v11 = *(v10 + 32);
          if (!v11 || (*(v11 + 304) & 0x80) != 0)
          {
            v20 = *re::assetsLogObjects(a1);
            a1 = os_log_type_enabled(v20, OS_LOG_TYPE_ERROR);
            if (a1)
            {
              *buf = 0;
              v21 = v20;
              v22 = "Could not find parent of AssetPreloadComponent Entity. Aborting asset preload.";
LABEL_28:
              v26 = 2;
              goto LABEL_29;
            }
          }

          else
          {
            v12 = *(v4 + 224);
            v13 = *(v4 + 232);
            v14 = re::ecs2::EntityComponentCollection::get((v11 + 48), re::ecs2::ComponentImpl<re::ecs2::NetworkAssetComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v14)
            {
              v15 = v14;
              v16 = *(v14 + 32);
              a1 = (*(*v12 + 112))(v12, v16);
              if ((a1 & 1) == 0)
              {
                v17 = *(v15 + 48);
                v18 = v17 >> 1;
                if ((v17 & 1) == 0)
                {
                  v18 = v17 >> 1;
                }

                if (v18)
                {
                  if (v17)
                  {
                    v19 = *(v15 + 56);
                  }

                  else
                  {
                    v19 = (v15 + 49);
                  }

                  v27 = re::internal::AssetTypeRegistry::assetTypeWithName(*(v13 + 1808), v19);
                  if (v27)
                  {
                    v28 = v27;
                    *buf = 0;
                    *&v34[4] = 0u;
                    v35 = 0u;
                    v29 = re::DynamicString::setCapacity(&v34[4], 0);
                    v37 = 0u;
                    v36 = 0u;
                    re::DynamicString::setCapacity(&v36, 0);
                    v38 = 0;
                    re::AssetPath::initAssetIdAssetPath(buf, v16, v28);
                    (**v13)(v32, v13, buf);
                    re::AssetHandle::operator=(v9 + 32, v32);
                    re::AssetHandle::loadAsync((v9 + 32));
                    re::AssetHandle::~AssetHandle(v32);
                    if (v36)
                    {
                      if (BYTE8(v36))
                      {
                        (*(*v36 + 40))();
                      }

                      v37 = 0u;
                      v36 = 0u;
                    }

                    a1 = *&v34[4];
                    if (*&v34[4] && (v34[12] & 1) != 0)
                    {
                      a1 = (*(**&v34[4] + 40))();
                    }

                    goto LABEL_21;
                  }

                  v30 = *re::assetsLogObjects(0);
                  a1 = os_log_type_enabled(v30, OS_LOG_TYPE_ERROR);
                  if (a1)
                  {
                    if (*(v15 + 48))
                    {
                      v31 = *(v15 + 56);
                    }

                    else
                    {
                      v31 = v15 + 49;
                    }

                    *buf = 136315394;
                    *v34 = v31;
                    *&v34[8] = 2048;
                    *&v34[10] = v16;
                    v21 = v30;
                    v22 = "Could not find asset type named '%s' in the type registry. Aborting preload for asset %llu.";
                    v26 = 22;
                    goto LABEL_29;
                  }
                }

                else
                {
                  v25 = *re::assetsLogObjects(a1);
                  a1 = os_log_type_enabled(v25, OS_LOG_TYPE_ERROR);
                  if (a1)
                  {
                    *buf = 134217984;
                    *v34 = v16;
                    v21 = v25;
                    v22 = "NetworkAssetComponent for asset %llu does not have an assetType string. Aborting asset preload.";
                    v26 = 12;
LABEL_29:
                    _os_log_error_impl(&dword_1E1C61000, v21, OS_LOG_TYPE_ERROR, v22, buf, v26);
                  }
                }
              }
            }

            else
            {
              v24 = *re::assetsLogObjects(0);
              a1 = os_log_type_enabled(v24, OS_LOG_TYPE_ERROR);
              if (a1)
              {
                *buf = 0;
                v21 = v24;
                v22 = "Could not find NetworkAssetComponent for asset. Aborting asset preload.";
                goto LABEL_28;
              }
            }
          }
        }

        else
        {
          v23 = *re::assetsLogObjects(a1);
          a1 = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
          if (a1)
          {
            *buf = 0;
            v21 = v23;
            v22 = "Could not find entity for AssetPreloadComponent. Aborting asset preload.";
            goto LABEL_28;
          }
        }

LABEL_21:
        ++a3;
      }
    }
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AssetPreloadComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AF258, 0);
  *(&qword_1EE1AF268 + 6) = 0;
  qword_1EE1AF268 = 0;
  *&xmmword_1EE1AF278 = 0;
  *(&xmmword_1EE1AF278 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AF258 = &unk_1F5CADA48;
  qword_1EE1AF290 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AF288);
  qword_1EE1AF258 = &unk_1F5CF7660;
  return result;
}

void *re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::AssetLoadDescriptor>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  re::DynamicArray<re::AssetLoadDescriptor>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::addElement(re::Allocator **a1, re *a2, int a3, _anonymous_namespace_ *a4)
{
  memset(v17, 0, sizeof(v17));
  memset(v16, 0, sizeof(v16));
  v15 = 0u;
  v14 = 0u;
  v13 = 0u;
  v8 = re::DynamicString::setCapacity(&v12, 0);
  *(&v14 + 1) = 0;
  v15 = 0uLL;
  LODWORD(v16[0]) = 0;
  memset(v16 + 8, 0, 36);
  memset(v17, 0, sizeof(v17));
  re::DynamicString::setCapacity(&v17[8], 0);
  v9.n128_f64[0] = re::DynamicArray<re::AssetLoadDescriptor>::add(a4, &v12);
  if (*&v17[8])
  {
    if (v17[16])
    {
      (*(**&v17[8] + 40))(v9.n128_f64[0]);
    }

    v9 = 0uLL;
    memset(&v17[8], 0, 32);
  }

  if (*&v16[1])
  {
    if (*v17)
    {
      (*(**&v16[1] + 40))(v9);
    }

    *v17 = 0;
    memset(&v16[1], 0, 24);
    ++DWORD2(v16[2]);
  }

  if (*(&v14 + 1))
  {
    if (*(&v16[0] + 1))
    {
      (*(**(&v14 + 1) + 40))(v9);
    }

    *(&v16[0] + 1) = 0;
    v15 = 0uLL;
    *(&v14 + 1) = 0;
    ++LODWORD(v16[0]);
  }

  if (v12 && (v13 & 1) != 0)
  {
    (*(*v12 + 40))(v9);
  }

  v10 = (*(a4 + 4) + 144 * *(a4 + 2) - 144);
  re::introspectionInitElement(a2, a3, a1[6], v10);
  return v10;
}

uint64_t re::IntrospectionDynamicArray<re::AssetLoadDescriptor>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 144 * a3;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    v8 = *(a1 + 16);
    *(a1 + 16) = 0;
    if (v8)
    {
      v9 = *(a1 + 32);
      v10 = 144 * v8;
      do
      {
        re::DynamicString::deinit((v9 + 112));
        re::DynamicArray<unsigned long>::deinit(v9 + 72);
        re::DynamicArray<unsigned long>::deinit(v9 + 32);
        re::DynamicString::deinit(v9);
        v9 += 144;
        v10 -= 144;
      }

      while (v10);
    }
  }

  else
  {
    re::DynamicArray<re::AssetLoadDescriptor>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::AssetLoadDescriptor>::setCapacity(a1, a4);
  }

  ++*(a1 + 24);
  re::DynamicArray<re::AssetLoadDescriptor>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v16);
    re::TypeInfo::TypeInfo(v15, &v17);
    v12 = *(a1 + 16);
    if (v12)
    {
      v13 = *(a1 + 32);
      v14 = 144 * v12;
      do
      {
        re::TypeInfo::destruct(v15, v13, a3, 0);
        re::TypeInfo::construct(v15, v13, a3, 0);
        v13 += 144;
        v14 -= 144;
      }

      while (v14);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 144 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 144 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::AssetLoadDescriptor>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

void *re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a2, a3, v7);
}

re::IntrospectionBase *re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, const re::DynamicString *a5)
{
  v10 = 0;
  v8 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a4, a5, &v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 14;
      if (v8 < 0)
      {
        break;
      }

      if (v5 == ++v6)
      {
        LODWORD(v6) = *(a2 + 32);
        break;
      }
    }
  }

  else
  {
    LODWORD(v6) = 0;
  }

  if (v6 == v5)
  {
    return 1;
  }

  do
  {
    v10 = *(a2 + 16) + 56 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 40);
    if (!result)
    {
      break;
    }

    v11 = *(a2 + 32);
    if (v11 <= v6 + 1)
    {
      v11 = v6 + 1;
    }

    while (v11 - 1 != v6)
    {
      LODWORD(v6) = v6 + 1;
      if ((*(*(a2 + 16) + 56 * v6) & 0x80000000) != 0)
      {
        goto LABEL_16;
      }
    }

    LODWORD(v6) = v11;
LABEL_16:
    ;
  }

  while (v6 != v5);
  return result;
}

uint64_t re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(uint64_t a1, const re::DynamicString *a2, void *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v6 = re::Hash<re::DynamicString>::operator()(&v15, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v6, &v12);
  v7 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(a1, v13, v12);
    re::DynamicString::DynamicString((v8 + 8), a2);
    *(v8 + 40) = *a3;
    v9 = v8 + 40;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 56 * v7;
    *(v10 + 40) = *a3;
    return v10 + 40;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

  return re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::deinit(a1);

    re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::init(a1, a3, 3);
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, const re::DynamicString *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  v4 = re::Hash<re::DynamicString>::operator()(v6, a2);
  re::HashTable<re::DynamicString,unsigned long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<re::DynamicString>(a1, a2, v4, v6);
  if (v7 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 56 * v7 + 40;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  if (*(a1 + 2) == *(*a1 + 40))
  {
    v3 = *(v2 + 32);
    if (a1[2])
    {
      LODWORD(v4) = *(a1 + 8);
      if (v4 == v3)
      {
        LODWORD(v4) = *(v2 + 32);
      }

      else
      {
        v7 = a1[3];
        v8 = *(v7 + 32);
        if (v8 <= v4 + 1)
        {
          v9 = v4 + 1;
        }

        else
        {
          v9 = *(v7 + 32);
        }

        while (1)
        {
          LODWORD(v4) = v4 + 1;
          if (v4 >= v8)
          {
            break;
          }

          if ((*(*(v7 + 16) + 56 * v4) & 0x80000000) != 0)
          {
            goto LABEL_19;
          }
        }

        LODWORD(v4) = v9;
LABEL_19:
        *(a1 + 8) = v4;
      }
    }

    else
    {
      if (v3)
      {
        v4 = 0;
        v5 = *(v2 + 16);
        while (1)
        {
          v6 = *v5;
          v5 += 14;
          if (v6 < 0)
          {
            break;
          }

          if (v3 == ++v4)
          {
            LODWORD(v4) = *(v2 + 32);
            break;
          }
        }
      }

      else
      {
        LODWORD(v4) = 0;
      }

      *(a1 + 16) = 1;
      a1[3] = v2;
      *(a1 + 8) = v4;
      LODWORD(v3) = *(v2 + 32);
    }

    return v4 != v3;
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 589);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 56 * *(a1 + 32) + 40;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::DynamicString,unsigned long long,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
{
  if (a1[2] == *(*a1 + 40))
  {
    v4 = *(*a2 + 40);

    return v4(a2, a1);
  }

  else
  {
    re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 622, v2, v3);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x10uLL, 8uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionOptional<unsigned long long>::IntrospectionOptional(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CF7798;
  return a1;
}

void *re::IntrospectionOptional<unsigned long long>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<unsigned long long>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<unsigned long long>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    if ((*a2 & 1) == 0)
    {
      *a2 = 1;
    }

    *(a2 + 8) = 0;
  }

  else if (*a2)
  {
    *a2 = 0;
  }
}

uint64_t re::IntrospectionOptional<unsigned long long>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

uint64_t re::TypeBuilderHelper::registerOptional<unsigned long long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t result, uint64_t *a2)
{
  if (a2)
  {
    v2 = *a2;
    if ((*result & 1) == 0)
    {
      *result = 1;
    }

    *(result + 8) = v2;
  }

  else if (*result == 1)
  {
    *result = 0;
  }

  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::NetworkAssetComponent>(uint64_t a1)
{
  *(a1 + 224) = 0;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CB8088;
  *(v2 + 56) = 0u;
  *(v2 + 40) = 0u;
  v3 = (v2 + 40);
  re::DynamicString::setCapacity(v3, 0);
  *(a1 + 96) = 0;
  *(a1 + 88) = 0;
  *(a1 + 72) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 132) = 0u;
  *(a1 + 148) = 0x7FFFFFFFLL;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0;
  *(a1 + 204) = 0x7FFFFFFFLL;
  *(a1 + 216) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs221NetworkAssetComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs221AssetPreloadComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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
    *a2 = 8;
    *(a2 + 8) = 0;
  }
}

double re::ShaderGraphMaterial::ShaderGraphMaterial(re::ShaderGraphMaterial *this, re::RenderManager *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(this + 3) = 0;
  *this = &unk_1F5CF7818;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 12) = 0;
  result = 0.0;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 22) = 0;
  *(this + 6) = 0u;
  *(this + 7) = 0u;
  *(this + 8) = 0u;
  *(this + 9) = 0u;
  *(this + 10) = 0u;
  *(this + 11) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 28) = 0;
  *(this + 29) = a2;
  *(this + 31) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 32) = 0;
  *(this + 33) = 0xFFFFFFFFFFFFFFFLL;
  return result;
}

uint64_t re::ShaderGraphMaterial::handle@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 13, a2);
  if (result == -1)
  {
    result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 21, a2);
    if (result == -1)
    {
      LOWORD(v8) = 0;
      v9 = 0;
      v12 = 0;
      v10 = 0;
      v11 = 0;
    }

    else
    {
      v11 = 0;
      v8 = *(a1[22] + 16 * result + 8);
      v10 = (a1[26] + (a1[18] << 6) + (a1[18] >> 2) - 0x61C8864680B583E9) ^ a1[18];
      v12 = 10;
      v9 = 1;
    }
  }

  else
  {
    v7 = a1[14] + 16 * result;
    LOWORD(v8) = *(v7 + 8);
    v9 = *(v7 + 10);
    v10 = (a1[26] + (a1[18] << 6) + (a1[18] >> 2) - 0x61C8864680B583E9) ^ a1[18];
    v11 = *(v7 + 11);
    v12 = 9;
  }

  *a3 = *a2;
  *(a3 + 8) = v8;
  *(a3 + 10) = v9;
  *(a3 + 12) = v12;
  *(a3 + 16) = v10;
  *(a3 + 24) = v11;
  return result;
}

uint64_t re::ShaderGraphMaterial::handle@<X0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v3;
  return re::ShaderGraphMaterial::handle(this, &v8, a3);
}

unint64_t re::ShaderGraphMaterial::getConstant(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 8);
  if (*(a1 + 40) <= v2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 56) + v2;
}

int32x2_t re::ShaderGraphMaterial::colorGamut4FValue@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  Constant = re::ShaderGraphMaterial::getConstant(a1, a2);
  v6 = *(Constant + 8);
  v7 = *(a1 + 232);
  if (v7)
  {
    v7 = *(v7 + 160);
    if (v7)
    {
      LOBYTE(v7) = *v7;
    }
  }

  v8 = *Constant;
  *a3 = *Constant;
  result = vzip1_s32((v8 >> 32), v6);
  *(a3 + 4) = result;
  *(a3 + 12) = v6.i32[1];
  *(a3 + 16) = v7;
  return result;
}

re::AssetHandle *re::ShaderGraphMaterial::assetHandleValue@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, re::AssetHandle *a3@<X8>)
{
  if (*(a1 + 80) <= *(a2 + 8))
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = (*(a1 + 96) + 24 * *(a2 + 8));

  return re::AssetHandle::AssetHandle(a3, v3);
}

BOOL re::ShaderGraphMaterial::hasParameter(re::ShaderGraphMaterial *this, const char *a2)
{
  if (a2)
  {
    v2 = *a2;
    if (*a2)
    {
      v3 = a2[1];
      if (v3)
      {
        v4 = a2 + 2;
        do
        {
          v2 = 31 * v2 + v3;
          v5 = *v4++;
          v3 = v5;
        }

        while (v5);
      }

      v2 &= ~0x8000000000000000;
    }
  }

  else
  {
    v2 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v8 = v2;
  re::ShaderGraphMaterial::handle(this, &v8, v7);
  return (v7[12] & 7) != 0;
}

uint64_t re::ShaderGraphMaterial::removeParameter(int8x16_t **this, const char *a2)
{
  if (a2)
  {
    v3 = *a2;
    if (*a2)
    {
      v4 = a2[1];
      if (v4)
      {
        v5 = a2 + 2;
        do
        {
          v3 = 31 * v3 + v4;
          v6 = *v5++;
          v4 = v6;
        }

        while (v6);
      }

      v3 &= ~0x8000000000000000;
    }
  }

  else
  {
    v3 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v13 = v3;
  result = re::ShaderGraphMaterial::handle(this, &v13, &v10);
  v9 = v12 & 7;
  if ((v12 & 7) != 0)
  {
    if (v9 == 2)
    {
      v13 = v10;
      return re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(&v13, this + 21, (this + 8));
    }

    else if (v9 == 1)
    {
      v13 = v10;
      return re::removeNameMappedConstant(&v13, this + 13, this + 3, v11);
    }

    else
    {
      re::internal::assertLog(4, v8, "assertion failure: '%s' (%s:line %i) Trying to remove a paramter which exists but has an invalid type.", "!Unreachable code", "removeParameter", 241);
      result = _os_crash();
      __break(1u);
    }
  }

  return result;
}

re::AssetHandle *re::ShaderGraphMaterial::addTexture(uint64_t a1, uint64_t *a2, re::AssetHandle *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 168), a2);
  if (v6 == -1)
  {
    *buf = *(a1 + 80);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew((a1 + 168), a2, buf);
    return re::DynamicArray<re::AssetHandle>::add((a1 + 64), a3);
  }

  else
  {
    v7 = *(a1 + 176) + 16 * v6;
    v8 = *re::graphicsLogObjects(v6);
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      v9 = *a2;
      if (*a2 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v10 = 0;
      }

      else if (v9)
      {
        v10 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v9);
      }

      else
      {
        v10 = &str_67;
      }

      *buf = 136315138;
      *&buf[4] = v10;
      _os_log_impl(&dword_1E1C61000, v8, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable texture (%s) that already exists. Overwiting with new value.", buf, 0xCu);
    }

    v12 = *(v7 + 8);
    if (*(a1 + 80) <= v12)
    {
      v16 = 0u;
      v17 = 0u;
      v14 = 0u;
      v15 = 0u;
      *buf = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    return re::AssetHandle::operator=(*(a1 + 96) + 24 * v12, a3);
  }
}

uint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::addNew(void *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
}

{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

uint64_t re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(void *a1, int8x16_t **a2, uint64_t a3)
{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a2, a1);
  if (result != -1)
  {
    i64 = a2[1][result].i64;
    re::DynamicArray<re::AssetHandle>::removeStableAt(a3, *(i64 + 8));
    v8 = *(i64 + 8);
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(a2, &v8);
    return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(a2, a1);
  }

  return result;
}

double re::ShaderGraphMaterial::setConstant@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, size_t a3@<X2>, void *a4@<X3>, uint8_t a5@<W4>, uint64_t a6@<X8>)
{
  v19 = *a2;
  re::ShaderGraphMaterial::handle(a1, &v19, a6);
  v19 = 0;
  if ((*(a6 + 12) & 7) != 0)
  {
    re::ShaderGraphMaterial::setConstant(v13, a1, a6, a3, a4);
  }

  else
  {
    v18 = *a2;
    re::ShaderGraphMaterial::addConstant(a1, &v18, a3, a4, a5);
    v18 = 0;
    v14 = *a2;
    re::ShaderGraphMaterial::handle(a1, &v14, &v15);
    *a6 = v15;
    result = *&v16;
    *(a6 + 8) = v16;
    *(a6 + 24) = v17;
  }

  return result;
}

void *re::ShaderGraphMaterial::addConstant(void *a1, uint64_t *a2, size_t a3, const void *a4, uint8_t a5)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 13, a2);
  if (v10 == -1)
  {
    v11 = a1[5] + 3;
    *buf = v11 & 0xFFFC;
    buf[2] = a3;
    buf[3] = a5;
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(a1 + 13, a2, buf);
    v12 = v11 & 0xFFFC;
    re::DynamicArray<BOOL>::resize((a1 + 3), v12 + a3);
    if (a1[5] > v12)
    {
      return memcpy((a1[7] + v12), a4, a3);
    }

    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    a3 = MEMORY[0x1E69E9C10];
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  else
  {
    v11 = a1[14] + 16 * v10;
    v12 = *re::graphicsLogObjects(v10);
    if (!os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      goto LABEL_11;
    }

    v13 = *a2;
    if (*a2 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (v13)
      {
        v14 = re::WeakStringID::debugStr(void)const::msg;
        snprintf(re::WeakStringID::debugStr(void)const::msg, 0x50uLL, "%llu", v13);
      }

      else
      {
        v14 = &str_67;
      }

      goto LABEL_10;
    }
  }

  v14 = 0;
LABEL_10:
  *buf = 136315138;
  *&buf[4] = v14;
  _os_log_impl(&dword_1E1C61000, v12, OS_LOG_TYPE_DEFAULT, "Warning - trying to create a mutable constant (%s) that already exists. Overwiting with new values.", buf, 0xCu);
LABEL_11:
  v12 = *(v11 + 8);
  if (a1[5] <= v12)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    *buf = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return memcpy((a1[7] + v12), a4, a3);
}

__n128 re::ShaderGraphMaterial::setConstant@<Q0>(uint64_t *__return_ptr a1@<X8>, size_t __n@<X2>, void *__s2@<X3>, void *a4@<X0>, uint64_t a5@<X1>, uint8_t a6@<W4>)
{
  v29 = *MEMORY[0x1E69E9840];
  if ((*(a5 + 12) & 8) != 0)
  {
    v12 = (a5 + 8);
    v11 = *(a5 + 8);
    v13 = a4[5];
    if (v13 <= v11)
    {
      v15[1] = 0;
      v27 = 0u;
      v28 = 0u;
      v25 = 0u;
      v26 = 0u;
      v24 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v16 = 136315906;
      v17 = "operator[]";
      v18 = 1024;
      v19 = 789;
      v20 = 2048;
      v21 = v11;
      v22 = 2048;
      v23 = v13;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v14 = a4[7];
    if (memcmp((v14 + v11), __s2, __n))
    {
      memcpy((v14 + v11), __s2, __n);
    }

    *a1 = *a5;
    result = *v12;
    *(a1 + 1) = *v12;
    *(a1 + 24) = *(a5 + 24);
  }

  else
  {
    v15[0] = *a5;
    result.n128_f64[0] = re::ShaderGraphMaterial::setConstant(a4, v15, __n, __s2, a6, a1);
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::addNew(void *a1, void *a2, _DWORD *a3)
{
  v6 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (v6 != -1)
  {
    return a1[1] + 16 * v6 + 8;
  }

  return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(a1, a2, a3);
}

{
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  if (result == -1)
  {

    return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(a1, a2, a3);
  }

  return result;
}

uint64_t re::DrawingManager::addRenderFrameDeltaForNextFrame<re::MaterialParameterTableDelta,re::MaterialParameterTable>(uint64_t a1, uint64_t *a2)
{
  v4 = re::globalAllocators(a1);
  v5 = re::PerFrameAllocatorManager::perFrameAllocator(v4[6], *(*(*(a1 + 256) + 144) + 48) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1 + 256) + 144) + 40) << 60));
  v6 = (*(*v5 + 32))(v5, 568, 8);
  bzero((v6 + 8), 0x230uLL);
  *v6 = &unk_1F5CD4138;
  objc_initWeak((v6 + 8), 0);
  *v6 = &unk_1F5D03120;
  *(v6 + 24) = 0;
  *(v6 + 32) = 0;
  *(v6 + 16) = 0;
  *(v6 + 40) = 0;
  *(v6 + 528) = 0;
  *(v6 + 536) = 0;
  *(v6 + 548) = 0;
  *(v6 + 564) = 0;
  *(v6 + 48) = 0u;
  *(v6 + 64) = 0u;
  *(v6 + 80) = 0;
  *(v6 + 88) = 0u;
  *(v6 + 104) = 0u;
  *(v6 + 120) = 0;
  *(v6 + 128) = 0u;
  *(v6 + 144) = 0u;
  *(v6 + 160) = 0;
  *(v6 + 200) = 0;
  *(v6 + 184) = 0u;
  *(v6 + 168) = 0u;
  *(v6 + 208) = 0u;
  *(v6 + 224) = 0u;
  *(v6 + 240) = 0;
  *(v6 + 248) = 0u;
  *(v6 + 280) = 0;
  *(v6 + 264) = 0u;
  *(v6 + 288) = 0u;
  *(v6 + 304) = 0u;
  *(v6 + 320) = 0;
  *(v6 + 328) = 0u;
  *(v6 + 344) = 0u;
  *(v6 + 360) = 0;
  *(v6 + 368) = 0u;
  *(v6 + 384) = 0u;
  *(v6 + 400) = 0;
  *(v6 + 440) = 0;
  *(v6 + 408) = 0u;
  *(v6 + 424) = 0u;
  *(v6 + 480) = 0;
  *(v6 + 448) = 0u;
  *(v6 + 464) = 0u;
  *(v6 + 520) = 0;
  *(v6 + 488) = 0u;
  *(v6 + 504) = 0u;
  v7 = *a2;
  off_1F5D03128(v6, v5);
  if (v7)
  {
    v8 = (v7 + 8);
  }

  else
  {
    v8 = 0;
  }

  objc_storeWeak((v6 + 8), v8);
  if (!*(a1 + 608))
  {
    *(a1 + 608) = v5;
    re::DynamicOverflowArray<re::internal::BindPointImplBase const*,8ul>::setCapacity((a1 + 608), 0);
    *(a1 + 624) += 2;
  }

  v10 = v6;
  re::DynamicOverflowArray<re::RenderFrameDelta *,8ul>::add(a1 + 608, &v10);
  return v6;
}

double re::ShaderGraphMaterial::setBool@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 1uLL, &v9, 2u, a4);
}

double re::ShaderGraphMaterial::setFloat@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, float a3@<S0>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 4uLL, &v9, 1u, a4);
}

double re::ShaderGraphMaterial::setInt@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 4uLL, &v9, 3u, a4);
}

double re::ShaderGraphMaterial::setUint@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(this, &v10, 4uLL, &v9, 7u, a4);
}

double re::ShaderGraphMaterial::setVector2F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = a3;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 8uLL, &v9, 0x20u, a4);
}

double re::ShaderGraphMaterial::setInt2@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 8uLL, &v9, 4u, a3);
}

double re::ShaderGraphMaterial::setUint2@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 8uLL, &v9, 8u, a3);
}

double re::ShaderGraphMaterial::setVector3F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, v10, 0x21u, a5);
}

double re::ShaderGraphMaterial::setColorGamut3F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v19[0] = a3;
  v19[1] = a4;
  v8 = a1[29];
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v19, v10, 1);
  DWORD2(v11) = v12;
  v18 = v11;
  if (a2)
  {
    v13 = *a2;
    if (*a2)
    {
      v14 = a2[1];
      if (v14)
      {
        v15 = (a2 + 2);
        do
        {
          v13 = 31 * v13 + v14;
          v16 = *v15++;
          v14 = v16;
        }

        while (v16);
      }

      v13 &= ~0x8000000000000000;
    }
  }

  else
  {
    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v20 = v13;
  return re::ShaderGraphMaterial::setConstant(a1, &v20, 0x10uLL, &v18, 0x14u, a5);
}

double re::ShaderGraphMaterial::setColorGamut3F@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v16[0] = a3;
  v16[1] = a4;
  v8 = a1[29];
  if (v8 && (v9 = *(v8 + 160)) != 0)
  {
    v10 = *v9;
  }

  else
  {
    v10 = 0;
  }

  *&v11 = re::ColorGamut3F::as(v16, v10, 1);
  DWORD2(v11) = v12;
  v15 = v11;
  v14 = *a2;
  return re::ShaderGraphMaterial::setConstant(a1, &v14, 0x10uLL, &v15, 0x14u, a5);
}

double re::ShaderGraphMaterial::setInt3@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 5u, a3);
}

double re::ShaderGraphMaterial::setUint3@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 9u, a3);
}

double re::ShaderGraphMaterial::setVector4F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, v10, 0x22u, a5);
}

double re::ShaderGraphMaterial::setColorGamut4F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[29];
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, v15);
  v16 = *v15;
  if (a2)
  {
    v10 = *a2;
    if (*a2)
    {
      v11 = a2[1];
      if (v11)
      {
        v12 = (a2 + 2);
        do
        {
          v10 = 31 * v10 + v11;
          v13 = *v12++;
          v11 = v13;
        }

        while (v13);
      }

      v10 &= ~0x8000000000000000;
    }
  }

  else
  {
    v10 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v15[0] = v10;
  return re::ShaderGraphMaterial::setConstant(a1, v15, 0x10uLL, &v16, 0x15u, a4);
}

double re::ShaderGraphMaterial::setColorGamut4F@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = a1[29];
  if (v7 && (v8 = *(v7 + 160)) != 0)
  {
    v9 = *v8;
  }

  else
  {
    v9 = 0;
  }

  re::ColorGamut4F::as(a3, v9, 1, &v12);
  v13 = v12;
  v11 = *a2;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, &v13, 0x15u, a4);
}

double re::ShaderGraphMaterial::setInt4@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 6u, a3);
}

double re::ShaderGraphMaterial::setUint4@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>, __n128 a4@<Q0>)
{
  v9 = a4;
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v10 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v10, 0x10uLL, &v9, 0xAu, a3);
}

double re::ShaderGraphMaterial::setMatrix2x2F@<D0>(void *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10[0] = a3;
  v10[1] = a4;
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = (a2 + 2);
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }

      v5 &= ~0x8000000000000000;
    }
  }

  else
  {
    v5 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v11 = v5;
  return re::ShaderGraphMaterial::setConstant(a1, &v11, 0x10uLL, v10, 0x30u, a5);
}

double re::ShaderGraphMaterial::setMatrix3x3F@<D0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v9, 0x30uLL, a3, 0x31u, a4);
}

double re::ShaderGraphMaterial::setMatrix4x4F@<D0>(void *a1@<X0>, char *a2@<X1>, void *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = (a2 + 2);
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::ShaderGraphMaterial::setConstant(a1, &v9, 0x40uLL, a3, 0x32u, a4);
}

double re::ShaderGraphMaterial::setAssetHandle@<D0>(re::ShaderGraphMaterial *this@<X0>, const char *a2@<X1>, const re::AssetHandle *a3@<X2>, uint64_t a4@<X8>)
{
  if (a2)
  {
    v4 = *a2;
    if (*a2)
    {
      v5 = a2[1];
      if (v5)
      {
        v6 = a2 + 2;
        do
        {
          v4 = 31 * v4 + v5;
          v7 = *v6++;
          v5 = v7;
        }

        while (v7);
      }

      v4 &= ~0x8000000000000000;
    }
  }

  else
  {
    v4 = 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v4;
  return re::ShaderGraphMaterial::setAssetHandle(this, &v9, a3, a4);
}

double re::ShaderGraphMaterial::setAssetHandle@<D0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v15 = *a2;
  re::ShaderGraphMaterial::handle(a1, &v15, a4);
  v15 = 0;
  if ((*(a4 + 12) & 7) != 0)
  {
    *&result = re::ShaderGraphMaterial::setAssetHandle(a1, a4, a3, v9).n128_u64[0];
  }

  else
  {
    v14 = *a2;
    re::ShaderGraphMaterial::addTexture(a1, &v14, a3);
    v14 = 0;
    v10 = *a2;
    re::ShaderGraphMaterial::handle(a1, &v10, &v11);
    *a4 = v11;
    result = *&v12;
    *(a4 + 8) = v12;
    *(a4 + 24) = v13;
  }

  return result;
}

__n128 re::ShaderGraphMaterial::setAssetHandle@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  if ((*(a2 + 12) & 8) != 0)
  {
    v8 = (a2 + 8);
    v7 = *(a2 + 8);
    v9 = *(a1 + 80);
    if (v9 <= v7)
    {
      v11[1] = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 789;
      v16 = 2048;
      v17 = v7;
      v18 = 2048;
      v19 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v10 = *(a1 + 96) + 24 * *(a2 + 8);
    if (*(v10 + 8) != a3[1])
    {
      re::AssetHandle::operator=(v10, a3);
    }

    *a4 = *a2;
    result = *v8;
    *(a4 + 8) = *v8;
    *(a4 + 24) = *(a2 + 24);
  }

  else
  {
    v11[0] = *a2;
    re::ShaderGraphMaterial::setAssetHandle(a1, v11);
  }

  return result;
}

void re::ShaderGraphMaterial::~ShaderGraphMaterial(re::ShaderGraphMaterial *this)
{
  re::ShaderGraphMaterial::~ShaderGraphMaterial(this);

  JUMPOUT(0x1E6906520);
}

{
  *this = &unk_1F5CF7818;
  re::DynamicArray<unsigned long>::deinit(this + 24);
  re::DynamicArray<re::AssetHandle>::deinit(this + 64);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 104);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 168);
  v2 = *(this + 32);
  if (v2)
  {

    *(this + 32) = 0;
  }

  *(this + 33) = 0xFFFFFFFFFFFFFFFLL;
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 168);
  re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(this + 104);
  re::DynamicArray<re::AssetHandle>::deinit(this + 64);
  re::DynamicArray<unsigned long>::deinit(this + 24);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

uint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
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
  v16 = v13 + 16 * v11;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
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
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(a1, *(a1 + 8) + 16 * v16);
  return *(a1 + 8) + 16 * v16 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
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
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(a1, *(a1 + 8) + 16 * v16);
  return *(a1 + 8) + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::doResize(a1, v3);
}

uint64_t re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::updateHashes(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = v3 ^ *(result + 40);
  v5 = 0xBF58476D1CE4E5B9 * ((*(a2 + 8) | (*(a2 + 11) << 24) | (*(a2 + 10) << 16)) ^ (*(a2 + 11) >> 6));
  v6 = *(result + 48) ^ v3 ^ ((v3 << 6) + (v3 >> 2) - 0x61C8864680B583E9 + ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)));
  *(result + 40) = v4;
  *(result + 48) = v6;
  return result;
}

double re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v23);
}

void *re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v15[0] + 8) + 16 * v11;
        v13 = *v12;
        v14 = *(v12 + 8);
        re::HashBrown<re::WeakStringID,re::ConstantLocation,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::ConstantLocation>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

void *re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::copy(void *a1, uint64_t a2)
{
  result = re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::clear(a1);
  v15[0] = a2;
  v5 = *(a2 + 16);
  if (v5 >= 0x10)
  {
    v6 = 0;
    v7 = *a2;
    v8 = v5 >> 4;
    while (1)
    {
      v9 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v7), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v15[1] = v9 ^ 0xFFFFLL;
      if (v9 != 0xFFFFLL)
      {
        break;
      }

      v6 -= 16;
      ++v7;
      if (!--v8)
      {
        return result;
      }
    }

    v10 = __clz(__rbit64(v9 ^ 0xFFFFLL));
    v11 = v10 - v6;
    v16 = v10 - v6;
    if (v10 + 1 != v6)
    {
      do
      {
        v12 = *(v15[0] + 8) + 16 * v11;
        v13 = *v12;
        v14 = *(v12 + 8);
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(a1, &v13, &v14);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v15);
        v11 = v16;
      }

      while (v16 != -1);
    }
  }

  return result;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(uint64_t a1, void *a2, _DWORD *a3)
{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
  }

  v8 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v9 = (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31);
  v10 = v7 >> 4;
  v11 = *a1;
  v12 = v9 % v10;
  while (1)
  {
    v13 = __clz(__rbit64(*&vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*(v11 + 16 * v12)), xmmword_1E304FAD0)))), 0x3830282018100800)));
    if (v13 < 0x40)
    {
      break;
    }

    if (v12 + 1 == v10)
    {
      v12 = 0;
    }

    else
    {
      ++v12;
    }

    if (v12 == v9 % v10)
    {
      re::internal::assertLog(4, a2, -1.79399301e-307, 4.74803907e-38, "assertion failure: '%s' (%s:line %i) Unexpected full hash-table", "blockIndex != h1(key) % blockCount()", "internalAdd", 658);
      _os_crash();
      __break(1u);
      break;
    }
  }

  v14 = v11 + 16 * v12;
  v15 = *(v14 + v13);
  *(v14 + v13) = v9 & 0x7F;
  v16 = v13 + 16 * v12;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
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
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, v17);
  return *(a1 + 8) + 16 * v16 + 8;
}

{
  if (!*(a1 + 56))
  {
  }

  v6 = *(a1 + 32);
  if (!v6 || (v7 = *(a1 + 16), v7 > 8 * v6))
  {
    re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(a1, 1);
    v7 = *(a1 + 16);
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
  v16 = v13 + 16 * v11;
  v17 = *(a1 + 8) + 16 * v16;
  *v17 = *a2;
  *(v17 + 8) = *a3;
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
  *(a1 + 24) = vaddq_s64(*(a1 + 24), v19);
  re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, v17);
  return *(a1 + 8) + 16 * v16 + 8;
}

double re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(uint64_t a1, int a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24) + a2;
  v4 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
  if (v4 > v2)
  {
    v5 = 3 * v2;
    v6 = v5 << 6;
    v7 = (v5 >> 1) & 0x1FFFFFFFFFFFFFFLL;
    if (v4 > v6 >> 7)
    {
      v7 = (((151 * v3) >> 7) + 15) & 0x3FFFFFFFFFFFFF0;
    }

    v3 = (v7 << 7) / 0x97;
  }

  return re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::doResize(a1, v3);
}

double re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::doResize(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 56);
  memset(v23, 0, sizeof(v23));
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::init(v23, v4, a2);
  v21[0] = a1;
  v6 = *(a1 + 16);
  if (v6 >= 0x10)
  {
    v7 = 0;
    v8 = *a1;
    v9 = v6 >> 4;
    v10 = xmmword_1E304FAD0;
    v5.n128_u64[0] = 0x3830282018100800;
    while (1)
    {
      v11 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v8), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v21[1] = v11 ^ 0xFFFFLL;
      if (v11 != 0xFFFFLL)
      {
        break;
      }

      v7 -= 16;
      ++v8;
      if (!--v9)
      {
        goto LABEL_9;
      }
    }

    v12 = __clz(__rbit64(v11 ^ 0xFFFFLL));
    v13 = v12 - v7;
    v22 = v12 - v7;
    if (v12 + 1 != v7)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::internalAdd(v23, *(v21[0] + 8) + 16 * v13, *(v21[0] + 8) + 16 * v13 + 8, v10, v5);
        re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v21);
        v13 = v22;
      }

      while (v22 != -1);
      v6 = *(a1 + 16);
    }
  }

LABEL_9:
  v14 = *(&v23[3] + 1);
  *(&v23[3] + 1) = *(a1 + 56);
  v15 = v23[0];
  v16 = v23[1];
  v23[0] = *a1;
  *&v23[1] = v6;
  v17 = v23[2];
  v18 = *(a1 + 40);
  *(a1 + 48) = *&v23[3];
  *(a1 + 56) = v14;
  *(&v23[2] + 8) = v18;
  v19 = *(a1 + 24);
  *a1 = v15;
  *(a1 + 16) = v16;
  *(a1 + 32) = v17;
  *(&v23[1] + 8) = v19;
  return re::HashBrown<re::WeakStringID,unsigned char,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned char>,false>::deinit(v23);
}

int8x16_t **re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::mapValues<void re::removeNameMappedParameter<re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>,re::DynamicArray<re::AssetHandle>>(re::WeakStringID,re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &,re::DynamicArray<re::AssetHandle> &)::{lambda(re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false> &)#1}>(int8x16_t **result, unsigned int *a2)
{
  v13[0] = result;
  v2 = result[2];
  if (v2 >= 0x10)
  {
    v4 = result;
    v5 = 0;
    v6 = *result;
    v7 = v2 >> 4;
    while (1)
    {
      v8 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vcltzq_s8(*v6), xmmword_1E304FAD0)))), 0x3830282018100800).u16[0];
      v13[1] = v8 ^ 0xFFFFLL;
      if (v8 != 0xFFFFLL)
      {
        break;
      }

      v5 -= 16;
      ++v6;
      if (!--v7)
      {
        return result;
      }
    }

    v9 = __clz(__rbit64(v8 ^ 0xFFFFLL));
    v10 = v9 - v5;
    v14 = v9 - v5;
    if (v9 + 1 != v5)
    {
      do
      {
        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v4, *(v4 + 8) + 16 * v10);
        v11 = *(v4 + 8) + 16 * v14;
        v12 = *(v11 + 8);
        if (v12 >= *a2)
        {
          *(v11 + 8) = v12 - 1;
        }

        re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(v4, v11);
        result = re::HashBrown<unsigned long long,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,void,false>::HashBrownIterator<re::KeyValuePair<unsigned long long const&,std::unique_ptr<re::EventBus::EventInfo,std::function<void ()(re::EventBus::EventInfo*)>>&>>::operator++(v13);
        v10 = v14;
      }

      while (v14 != -1);
    }
  }

  return result;
}

BOOL re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::remove(uint64_t a1, void *a2)
{
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1, a2);
  v4 = v3;
  if (v3 != -1)
  {
    v5 = (*a1 + (v3 & 0xFFFFFFFFFFFFFFF0));
    v6.i64[0] = -1;
    v6.i64[1] = -1;
    v7 = vqtbl1_s8(vpaddlq_u32(vpaddlq_u16(vpaddlq_u8(vandq_s8(vceqq_s8(*v5, v6), xmmword_1E304FAD0)))), 0x3830282018100800);
    v8 = *&v7 != 0;
    if (v7)
    {
      v9 = -1;
    }

    else
    {
      v9 = 0x80;
    }

    v5->i8[v3 & 0xF] = v9;
    re::HashBrown<unsigned long,unsigned int,re::Hash<unsigned long>,re::EqualTo<unsigned long>,re::Hash<unsigned int>,false>::updateHashes(a1, *(a1 + 8) + 16 * v3);
    v10 = *(a1 + 16);
    *(*(a1 + 8) + 16 * v4) = 0;
    v11.i64[0] = -1;
    v11.i64[1] = v8;
    v12 = vaddq_s64(*(a1 + 24), v11);
    *(a1 + 24) = v12;
    if (v10 >= 0x11 && v12.i64[0] < v10 >> 2)
    {
      re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::resize(a1, 0);
    }
  }

  return v4 != -1;
}

uint64_t re::HashBrown<re::WeakStringID,unsigned int,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<unsigned int>,false>::updateKvpsHash(uint64_t result, uint64_t a2)
{
  v2 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v3 = (0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) ^ ((0x94D049BB133111EBLL * (v2 ^ (v2 >> 27))) >> 31);
  v4 = 0xBF58476D1CE4E5B9 * (*(a2 + 8) ^ (*(a2 + 8) >> 30));
  *(result + 48) ^= v3 ^ ((v3 << 6) + (v3 >> 2) + ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) ^ ((0x94D049BB133111EBLL * (v4 ^ (v4 >> 27))) >> 31)) - 0x61C8864680B583E9);
  return result;
}

void *re::allocInfo_AudioSceneService(re *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_348, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_348))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF4A0, "AudioSceneService");
    __cxa_guard_release(&_MergedGlobals_348);
  }

  return &unk_1EE1AF4A0;
}

void re::initInfo_AudioSceneService(re *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x75B63B8F740DDEBELL;
  v6[1] = "AudioSceneService";
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
  *(this + 8) = &re::initInfo_AudioSceneService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_AudioGeneratorComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_349, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_349))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF558, "AudioGeneratorComponent");
    __cxa_guard_release(&_MergedGlobals_349);
  }

  return &unk_1EE1AF558;
}

void re::ecs2::initInfo_AudioGeneratorComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v13[0] = 0x9619D97E206E8B80;
  v13[1] = "AudioGeneratorComponent";
  if (v13[0])
  {
    if (v13[0])
    {
    }
  }

  *(this + 2) = v14;
  if ((atomic_load_explicit(&qword_1EE1AF538, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF538);
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
      qword_1EE1AF548 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_AudioSourceSyncState(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "syncState";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2800000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1AF550 = v11;
      __cxa_guard_release(&qword_1EE1AF538);
    }
  }

  *(this + 2) = 0x4A000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AF548;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGeneratorComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGeneratorComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGeneratorComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGeneratorComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioGeneratorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v12 = v14;
}

void *re::ecs2::allocInfo_AudioGeneratorSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF540, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF540))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF5E8, "AudioGeneratorSystem");
    __cxa_guard_release(&qword_1EE1AF540);
  }

  return &unk_1EE1AF5E8;
}

void re::ecs2::initInfo_AudioGeneratorSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7ACD467487E77098;
  v6[1] = "AudioGeneratorSystem";
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
  *(this + 8) = &re::ecs2::initInfo_AudioGeneratorSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioGeneratorSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioGeneratorSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioGeneratorSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioGeneratorSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioGeneratorSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioGeneratorSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::internal::defaultConstruct<re::ecs2::AudioGeneratorSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF78B8;
  result[28] = 0;
  result[29] = 0;
  return result;
}

void *re::internal::defaultConstructV2<re::ecs2::AudioGeneratorSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF78B8;
  result[28] = 0;
  result[29] = 0;
  return result;
}

re::ecs2::AudioGeneratorComponent *re::ecs2::AudioGeneratorComponent::AudioGeneratorComponent(re::ecs2::AudioGeneratorComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CF7860;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0;
  *(v2 + 88) = 9;
  *(v2 + 96) = 1065353216;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 120) = 0;
  *(v2 + 124) = 1065353216;
  *(v2 + 132) = 0;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 136) = _D0;
  *(v2 + 144) = 0;
  *(v2 + 152) = 0;
  *(v2 + 160) = 1065353216;
  *(v2 + 168) = 0;
  *(v2 + 208) = 0;
  *(v2 + 232) = 0u;
  *(v2 + 216) = 0u;
  v8 = (v2 + 216);
  v9 = re::DynamicString::setCapacity(v8, 0);
  *(this + 62) = 1;
  *(this + 252) = 0x3E051EB800000000;
  *(this + 65) = 1106247680;
  *(this + 264) = 0u;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  re::DynamicString::setCapacity(this + 35, 0);
  *(this + 156) = 0;
  v10 = re::AudioSourceState::AudioSourceState((this + 320));
  *(this + 72) = xmmword_1E3094140;
  *(this + 292) = 0;
  v11 = re::globalAllocators(v10);
  v12 = (*(*v11[2] + 32))(v11[2], 8, 4);
  *v12 = 0;
  *(this + 4) = v12;
  return this;
}

void re::ecs2::AudioGeneratorComponent::~AudioGeneratorComponent(re::ecs2::AudioGeneratorComponent *this)
{
  *this = &unk_1F5CF7860;
  v2 = *(this + 4);
  if (v2)
  {
    v3 = re::globalAllocators(this);
    (*(*v3[2] + 40))(v3[2], v2);
  }

  re::AudioSourceState::~AudioSourceState((this + 320));
  re::DynamicString::deinit((this + 280));
  re::DynamicString::deinit((this + 216));
  if (*(this + 168) == 1)
  {
    re::DynamicString::deinit((this + 176));
  }

  re::AssetHandle::~AssetHandle((this + 64));
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioGeneratorComponent::~AudioGeneratorComponent(this);

  JUMPOUT(0x1E6906520);
}

_anonymous_namespace_ *re::ecs2::AudioGeneratorSystem::willAddSystemToECSService(re::ecs2::AudioGeneratorSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::TransformService>(v3);
  *(this + 29) = result;
  return result;
}

uint64_t re::ecs2::AudioGeneratorSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

uint64_t re::ecs2::AudioGeneratorSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (*(result + 224))
  {
    v4 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v32);
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v29 = vdupq_n_s64(1uLL);
      do
      {
        v8 = *v6;
        v9 = (*(**(v4 + 224) + 16))(*(v4 + 224), *v6);
        if (!v9)
        {
          break;
        }

        v10 = v9;
        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v9);
        if (isStatisticCollectionEnabled)
        {
          v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v13 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v14 = v13 ? *(v13 + 384) : 0;
          v15 = *(v12 + 152);
          if (v15)
          {
            v16 = v15[1136].u64[0];
            if (v16 >= v14)
            {
              v16 = v14;
            }

            v15[1136].i64[0] = v16;
            v17 = v15[1136].u64[1];
            if (v17 <= v14)
            {
              v17 = v14;
            }

            v15[1136].i64[1] = v17;
            v18.i64[1] = v29.i64[1];
            v18.i64[0] = v14;
            v15[1137] = vaddq_s64(v15[1137], v18);
            *(v12 + 184) = 0;
          }
        }

        re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v31, 3061, v4);
        v19 = *(*(v8 + 104) + 288);
        v20 = re::ecs2::SceneComponentTable::get((v8 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioGeneratorComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v20)
        {
          v21 = *(v20 + 384);
          if (v21)
          {
            v22 = v19 >> 1;
            v23 = *(v20 + 400);
            v24 = 8 * v21;
            do
            {
              v25 = *v23++;
              re::TransformService::worldMatrix(*(v4 + 232), *(v25 + 16), 0, v30);
              v26 = v30[1];
              v27 = v30[2];
              v28 = v30[3];
              *(v25 + 672) = v30[0];
              *(v25 + 688) = v26;
              *(v25 + 704) = v27;
              *(v25 + 720) = v28;
              *(v25 + 800) = v22;
              (*(*v10 + 304))(v10, v25 + 320);
              v24 -= 8;
            }

            while (v24);
          }
        }

        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v31);
        ++v6;
      }

      while (v6 != v7);
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v32);
  }

  return result;
}

void re::ecs2::AudioGeneratorSystem::~AudioGeneratorSystem(re::ecs2::AudioGeneratorSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioGeneratorComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::ecs2::PinComponent::pinByName@<X0>(re::ecs2::PinComponent *this@<X0>, const re::StringID *a2@<X1>, uint64_t a3@<X8>)
{
  v30 = *MEMORY[0x1E69E9840];
  result = re::ecs2::PinComponent::indexOfPin(v14, this, a2);
  if (v14[0] == 1)
  {
    v6 = v15;
    v7 = *(this + 6);
    if (v7 <= v15)
    {
      v16 = 0;
      v28 = 0u;
      v29 = 0u;
      v26 = 0u;
      v27 = 0u;
      v25 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v17 = 136315906;
      v18 = "operator[]";
      v19 = 1024;
      v20 = 797;
      v21 = 2048;
      v22 = v6;
      v23 = 2048;
      v24 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v8 = *(this + 8) + 240 * v15;
    *a3 = 1;
    *(a3 + 16) = &unk_1F5CF49C0;
    re::StringID::StringID((a3 + 24), (v8 + 8));
    v9 = *(v8 + 32);
    v10 = *(v8 + 48);
    v11 = *(v8 + 80);
    *(a3 + 80) = *(v8 + 64);
    *(a3 + 96) = v11;
    *(a3 + 48) = v9;
    *(a3 + 64) = v10;
    re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a3 + 112, (v8 + 96));
    v12 = *(v8 + 160);
    *(a3 + 160) = *(v8 + 144);
    *(a3 + 176) = v12;
    v13 = *(v8 + 176);
    *(a3 + 192) = v13;
    if (v13 == 1)
    {
      re::StringID::StringID((a3 + 200), (v8 + 184));
    }

    return re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(a3 + 216, (v8 + 200));
  }

  else
  {
    *a3 = 0;
  }

  return result;
}

BOOL re::ecs2::PinComponent::indexOfPin(_BOOL8 this, const re::StringID *a2, void *a3)
{
  v4 = this;
  if ((*a3 > 1uLL || (v5 = a3[1]) == 0 || *v5) && (v6 = *(a2 + 6)) != 0)
  {
    v7 = 0;
    v8 = (*(a2 + 8) + 8);
    while (1)
    {
      this = re::StringID::operator==(v8, a3);
      if (this)
      {
        break;
      }

      ++v7;
      v8 += 30;
      if (v6 == v7)
      {
        goto LABEL_8;
      }
    }

    *v4 = 1;
    *(v4 + 8) = v7;
  }

  else
  {
LABEL_8:
    *v4 = 0;
  }

  return this;
}

uint64_t re::ecs2::PinComponent::removePin(const re::ecs2::Entity **this, const re::StringID *a2)
{
  v40 = *MEMORY[0x1E69E9840];
  result = re::ecs2::PinComponent::indexOfPin(v24, this, a2);
  if (v24[0] != 1)
  {
    return result;
  }

  v4 = v25;
  v5 = this[6];
  if (v5 <= v25)
  {
    v26 = 0;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    v30 = 789;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_23:
    v26 = 0;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "operator[]";
    v29 = 1024;
    v30 = 789;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_24:
    v26 = 0;
    v39 = 0u;
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v27 = 136315906;
    v28 = "removeAt";
    v29 = 1024;
    v30 = 931;
    v31 = 2048;
    v32 = v4;
    v33 = 2048;
    v34 = v5;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v6 = this[8] + 240 * v25;
  v7 = *(v6 + 216);
  if (v7)
  {
    v8 = *(v6 + 232);
    do
    {
      WeakRetained = objc_loadWeakRetained(v8);
      if (WeakRetained)
      {
        v10 = WeakRetained;

        v11 = re::ecs2::EntityComponentCollection::get((v10 + 40), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        re::ecs2::AttachedTransformComponent::detach(v11);
        re::ecs2::Component::markDirty(v11);
      }

      v8 += 3;
      --v7;
    }

    while (v7);
    v5 = this[6];
  }

  if (v5 <= v4)
  {
    goto LABEL_23;
  }

  re::DynamicArray<re::ecs2::EntityHandle>::clear(this[8] + 240 * v4 + 200);
  v5 = this[6];
  if (v5 <= v4)
  {
    goto LABEL_24;
  }

  if (v5 - 1 > v4)
  {
    v12 = this[8];
    v13 = v12 + 240 * v5;
    v14 = v12 + 240 * v4;
    re::StringID::operator=((v14 + 8), (v13 - 232));
    v15 = *(v13 - 208);
    v16 = *(v13 - 192);
    v17 = *(v13 - 160);
    *(v14 + 64) = *(v13 - 176);
    *(v14 + 80) = v17;
    *(v14 + 32) = v15;
    *(v14 + 48) = v16;
    re::DynamicArray<re::ecs2::PinAlignment>::operator=(v14 + 96, (v13 - 144));
    v18 = *(v13 - 80);
    *(v14 + 144) = *(v13 - 96);
    *(v14 + 160) = v18;
    re::Optional<re::StringID>::operator=((v14 + 176), v13 - 64);
    re::DynamicArray<re::ecs2::EntityHandle>::operator=(v14 + 200, (v13 - 40));
    v5 = this[6];
  }

  result = (**(this[8] + 30 * v5 - 30))();
  this[6] = (this[6] - 1);
  ++*(this + 14);
  v19 = this[2];
  if (v19)
  {
    v20 = v19;
    do
    {
      v21 = v20;
      v20 = *(v20 + 4);
    }

    while (v20);
    v22 = *(v21 + 3);
    if (v22)
    {
      result = *(v22 + 56);
      if (result)
      {
        v23 = (*(*result + 32))(result);
        result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v23);
        if (result)
        {
          result = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(result, v19);
          if (result)
          {
            *(result + 240) = 1;
          }
        }
      }
    }
  }

  return result;
}

_anonymous_namespace_ *re::ecs2::PinComponent::removeAllPins(re::ecs2::PinComponent *this)
{
  if (*(this + 6))
  {
    v2 = 0;
    do
    {
      v3 = *(this + 8) + 240 * v2;
      v4 = *(v3 + 216);
      if (v4)
      {
        v5 = *(v3 + 232);
        do
        {
          WeakRetained = objc_loadWeakRetained(v5);
          if (WeakRetained)
          {
            v7 = WeakRetained;

            v8 = re::ecs2::EntityComponentCollection::get((v7 + 40), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
            re::ecs2::AttachedTransformComponent::detach(v8);
            re::ecs2::Component::markDirty(v8);
          }

          v5 += 3;
          --v4;
        }

        while (v4);
      }

      re::DynamicArray<re::ecs2::EntityHandle>::clear(v3 + 200);
      ++v2;
    }

    while (v2 < *(this + 6));
  }

  result = re::DynamicArray<re::ecs2::Pin>::clear(this + 4);
  v10 = *(this + 2);
  if (v10)
  {
    v11 = v10;
    do
    {
      v12 = v11;
      v11 = *(v11 + 4);
    }

    while (v11);
    v13 = *(v12 + 3);
    if (v13)
    {
      result = *(v13 + 56);
      if (result)
      {
        v14 = (*(*result + 32))(result);
        result = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v14);
        if (result)
        {
          result = re::ecs2::PhysicsSimulationService::physicsSimulationForEntity(result, v10);
          if (result)
          {
            *(result + 240) = 1;
          }
        }
      }
    }
  }

  return result;
}

void (***re::DynamicArray<re::ecs2::Pin>::clear(void (***result)(void)))(void)
{
  v1 = result;
  v2 = result[2];
  result[2] = 0;
  if (v2)
  {
    v3 = result[4];
    v4 = 240 * v2;
    result = v3;
    v5 = v1[4];
    do
    {
      v6 = *v5;
      v5 += 30;
      (*v6)(result);
      v3 += 30;
      result = v5;
      v4 -= 240;
    }

    while (v4);
  }

  ++*(v1 + 6);
  return result;
}

void re::ecs2::PinComponent::attachEntity(re::ecs2::PinComponent *this, re::ecs2::Entity *a2, const re::StringID *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  re::ecs2::PinComponent::indexOfPin(v8, this, a3);
  if (v8[0] == 1)
  {
    v5 = v9;
    v6 = *(this + 6);
    if (v6 <= v9)
    {
      v10 = 0;
      v22 = 0u;
      v23 = 0u;
      v20 = 0u;
      v21 = 0u;
      v19 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v11 = 136315906;
      v12 = "operator[]";
      v13 = 1024;
      v14 = 789;
      v15 = 2048;
      v16 = v5;
      v17 = 2048;
      v18 = v6;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    v7 = (*(this + 8) + 240 * v9);

    re::ecs2::Pin::attachEntity(v7, a2);
  }
}

void **re::ecs2::PinComponent::detachEntity(re::ecs2::PinComponent *this, re::ecs2::Entity *a2, const re::StringID *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  result = re::ecs2::PinComponent::indexOfPin(v9, this, a3);
  if (v9[0] == 1)
  {
    v6 = v10;
    v7 = *(this + 6);
    if (v7 <= v10)
    {
      v11 = 0;
      v23 = 0u;
      v24 = 0u;
      v21 = 0u;
      v22 = 0u;
      v20 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v12 = 136315906;
      v13 = "operator[]";
      v14 = 1024;
      v15 = 789;
      v16 = 2048;
      v17 = v6;
      v18 = 2048;
      v19 = v7;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    re::ecs2::Pin::detachEntity((*(this + 8) + 240 * v10), a2);
    v8 = re::ecs2::EntityComponentCollection::getOrAdd((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
    re::ecs2::AttachedTransformComponent::detach(v8);

    return re::ecs2::Component::markDirty(v8);
  }

  return result;
}

BOOL re::ecs2::PinComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v21, 3047, a1);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v18, a5, 0);
  v8 = v18;
  v9 = v19;
  v10 = v19;
  v18 = a4;
  v19 = v8;
  v20 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      if (*(*(re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v18) + 16) + 304))
      {
        v12 = v18;
        v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v19);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *(a3 + 48));
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v19);
    }

    while (v19 != a5 || v20 != 0xFFFF || HIWORD(v20) != 0xFFFF);
  }

  v16 = *(a5 + 40) != 0;
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v21);
  return v16;
}

void re::ecs2::PinComponentStateImpl::simToECS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v101, 3047, a1);
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v94, a6, 0);
  v98 = a5;
  v99 = v94;
  v100 = DWORD2(v94);
  v70 = a6;
  if (v94 != a6 || DWORD2(v94) != 0xFFFFFFFFLL)
  {
    while (1)
    {
      v9 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v98);
      v10 = v9[2];
      v11 = v10[31];
      v12 = v10[24];
      v13 = re::ecs2::EntityComponentCollection::get((v10 + 6), re::ecs2::ComponentImpl<re::ecs2::SkeletalPoseBufferComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
      v71 = v12;
      v72 = v11;
      v14 = !v11 || v13 == 0;
      v15 = v14 || v12 == 0;
      if (v15 || (v16 = *(v12 + 40)) == 0)
      {
        v74 = 0;
      }

      else
      {
        v17 = atomic_load((v16 + 896));
        v74 = v17 == 2;
      }

      v18 = v9[6];
      if (v18)
      {
        break;
      }

LABEL_51:
      v67 = v98;
      v68 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v99);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a4 + 16), v67, v68, *(a4 + 48));
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v99);
      if (v99 == v70 && v100 == 0xFFFF && HIWORD(v100) == 0xFFFF)
      {
        goto LABEL_54;
      }
    }

    v19 = 0;
    v73 = v9;
    while (1)
    {
      v20 = v9[8] + 240 * v19;
      if (*(v20 + 176) != 1)
      {
        goto LABEL_21;
      }

      if (v74)
      {
        break;
      }

LABEL_50:
      if (++v19 >= v18)
      {
        goto LABEL_51;
      }
    }

    v21 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v71 + 32));
    re::ecs2::PinSkeletalPoseHelper::pinByName(v72, v21, (v20 + 184), &v94);
    if (v94 == 1)
    {
      (*v95)();
    }

LABEL_21:
    v22 = *(v20 + 232);
    v23 = *(v20 + 216);
    v93 = 0;
    v90[1] = 0;
    v91 = 0;
    v89 = 0;
    v90[0] = 0;
    v92 = 0;
    if (v23)
    {
      for (i = 0; i < v23; v89 = i)
      {
        WeakRetained = objc_loadWeakRetained((v22 + 24 * i));
        v26 = WeakRetained;
        if (WeakRetained)
        {
          v27 = WeakRetained - 8;
        }

        else
        {
          v27 = 0;
        }

        if (WeakRetained)
        {
        }

        v28 = re::ecs2::EntityComponentCollection::get((v27 + 48), re::ecs2::ComponentImpl<re::ecs2::AttachedTransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v28)
        {
          v29 = v28;
          v30 = *(v27 + 27);
          if (v26 && (v26[296] & 1) != 0)
          {
            re::ecs2::AttachedTransformComponent::targetPinOffset(v28, &v84);
            re::ecs2::AttachedTransformComponent::sourcePinOffset(v29, &v79);
            v31 = v85;
            v32 = v86;
            v33 = v31 + v31;
            v34 = v32 + v32;
            v35 = v87;
            v36 = v35 + v35;
            v37 = v31 * (v31 + v31);
            v38 = v32 * (v32 + v32);
            v39 = v35 * (v35 + v35);
            v40 = v33 * v86;
            v41 = v33 * v87;
            v42 = v34 * v87;
            v43 = v34 * v88;
            v44 = v36 * v88;
            v45.i32[3] = 0;
            v45.f32[0] = 1.0 - (v38 + v39);
            v45.f32[1] = (v33 * v86) + v44;
            v45.f32[2] = (v33 * v87) - v43;
            v46 = v33 * v88;
            v47 = 1.0 - (v37 + v39);
            v48.i32[3] = 0;
            v48.f32[0] = v40 - v44;
            v48.f32[1] = v47;
            v48.f32[2] = v42 + v46;
            v77 = v48;
            v78 = v45;
            v49.i32[3] = 0;
            v49.f32[0] = v41 + v43;
            v49.f32[1] = v42 - v46;
            v49.f32[2] = 1.0 - (v37 + v38);
            v103.columns[0] = v84;
            v103.columns[0].i32[3] = 1.0;
            v75 = v103.columns[0];
            v76 = v49;
            v103.columns[0].i32[0] = v80;
            v50 = v81;
            v49.f32[0] = v50 + v50;
            v51 = v82;
            v52 = v51 + v51;
            v53 = v103.columns[0].f32[0] * (v103.columns[0].f32[0] + v103.columns[0].f32[0]);
            v48.f32[0] = v50 * (v50 + v50);
            v54 = v51 * (v51 + v51);
            v55 = (v103.columns[0].f32[0] + v103.columns[0].f32[0]) * v81;
            v56 = (v103.columns[0].f32[0] + v103.columns[0].f32[0]) * v82;
            v57 = v49.f32[0] * v82;
            v58 = (v103.columns[0].f32[0] + v103.columns[0].f32[0]) * v83;
            v49.f32[0] = v49.f32[0] * v83;
            v103.columns[0].i32[3] = 0;
            v103.columns[0].f32[0] = 1.0 - (v48.f32[0] + v54);
            v103.columns[0].f32[1] = v55 + (v52 * v83);
            v103.columns[0].f32[2] = v56 - v49.f32[0];
            v103.columns[1].i32[3] = 0;
            v103.columns[1].f32[0] = v55 - (v52 * v83);
            v103.columns[1].f32[1] = 1.0 - (v53 + v54);
            v103.columns[1].f32[2] = v57 + v58;
            v59 = v57 - v58;
            v103.columns[2].i32[3] = 0;
            v103.columns[2].f32[0] = v56 + v49.f32[0];
            v103.columns[2].f32[1] = v59;
            v103.columns[2].f32[2] = 1.0 - (v53 + v48.f32[0]);
            v103.columns[3] = v79;
            v103.columns[3].i32[3] = 1.0;
            v104 = __invert_f4(v103);
            v60 = 0;
            v102 = v104;
            do
            {
              *(&v94 + v60 * 16) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v78, COERCE_FLOAT(*&v102.columns[v60])), v77, *v102.columns[v60].f32, 1), v76, v102.columns[v60], 2), v75, v102.columns[v60], 3);
              ++v60;
            }

            while (v60 != 4);
            v61 = v94;
            v62 = v95;
            v63 = v96;
            v64 = v97;
            if ((*(v29 + 256) & 1) == 0)
            {
              *(v29 + 256) = 1;
            }

            *(v29 + 17) = v61;
            *(v29 + 18) = v62;
            *(v29 + 19) = v63;
            *(v29 + 20) = v64;
          }

          else if (*(v28 + 256) == 1)
          {
            *(v28 + 256) = 0;
          }

          re::ecs2::Component::markDirty(v29);
          re::ecs2::NetworkComponent::markDirty(v30, v29);
        }

        else
        {
          re::DynamicArray<unsigned long>::add(v90, &v89);
        }

        i = v89 + 1;
      }

      v9 = v73;
      if (v91)
      {
        v65 = v93;
        v66 = 8 * v91;
        do
        {
          if (*(v20 + 216) > *v65)
          {
            re::DynamicArray<re::ecs2::EntityHandle>::removeAt(v20 + 200, *v65);
          }

          ++v65;
          v66 -= 8;
        }

        while (v66);
      }
    }

    if (v90[0] && v93)
    {
      (*(*v90[0] + 40))();
    }

    v18 = v9[6];
    goto LABEL_50;
  }

LABEL_54:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v101);
}

void re::IntrospectionInfo<re::DynamicArray<re::ecs2::Pin>>::get()
{
  if ((atomic_load_explicit(&qword_1EE1AF690, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF690))
  {
    re::IntrospectionDynamicArray<re::ecs2::Pin>::IntrospectionDynamicArray();
    __cxa_guard_release(&qword_1EE1AF690);
  }

  if ((_MergedGlobals_350 & 1) == 0)
  {
    v0 = re::ecs2::introspect_Pin(1);
    if ((_MergedGlobals_350 & 1) == 0)
    {
      v1 = v0;
      _MergedGlobals_350 = 1;
      v2 = *(v0 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AF6A8, 0);
      qword_1EE1AF6B8 = 0x2800000003;
      dword_1EE1AF6C0 = v2;
      word_1EE1AF6C4 = 0;
      *&xmmword_1EE1AF6C8 = 0;
      *(&xmmword_1EE1AF6C8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AF6D8 = v1;
      qword_1EE1AF6E0 = 0;
      qword_1EE1AF6A8 = &unk_1F5CF7A68;
      re::IntrospectionRegistry::add(v3, v4);
      re::getPrettyTypeName(&qword_1EE1AF6A8, &v12);
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
        re::TypeBuilder::setConstructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setListUsesContiguousStorage(&v12, 1);
        re::TypeBuilder::setListAccessors(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIndexer(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke);
        re::TypeBuilder::setListIterator(&v12, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v12, v7);
        re::StackScratchAllocator::~StackScratchAllocator(v15);
      }

      xmmword_1EE1AF6C8 = v8;
      if (v10)
      {
        if (v10)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_PinComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF688, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF688))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF6E8, "PinComponent");
    __cxa_guard_release(&qword_1EE1AF688);
  }

  return &unk_1EE1AF6E8;
}

void re::ecs2::initInfo_PinComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v12[0] = 0x3AE3A3F729C1AE10;
  v12[1] = "PinComponent";
  if (v12[0])
  {
    if (v12[0])
    {
    }
  }

  *(this + 2) = v13;
  if ((atomic_load_explicit(&qword_1EE1AF680, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF680);
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
      qword_1EE1AF698 = v8;
      v9 = re::introspectionAllocator(v8);
      re::IntrospectionInfo<re::DynamicArray<re::ecs2::Pin>>::get();
      v10 = (*(*v9 + 32))(v9, 72, 8);
      *v10 = 1;
      *(v10 + 8) = "m_pins";
      *(v10 + 16) = &qword_1EE1AF6A8;
      *(v10 + 24) = 0;
      *(v10 + 32) = 0x2000000001;
      *(v10 + 40) = 0;
      *(v10 + 48) = 0;
      *(v10 + 56) = 0;
      *(v10 + 64) = 0;
      qword_1EE1AF6A0 = v10;
      __cxa_guard_release(&qword_1EE1AF680);
    }
  }

  *(this + 2) = 0x4800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AF698;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PinComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PinComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PinComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PinComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs212PinComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v11 = v13;
}

void re::internal::defaultConstruct<re::ecs2::PinComponent>(int a1, int a2, ArcSharedObject *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CF7978;
  *(v3 + 64) = 0;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
  *(v3 + 56) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::PinComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::DynamicArray<re::ecs2::Pin>::deinit((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::PinComponent>(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF7978;
  *(v1 + 64) = 0;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
  *(v1 + 56) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::PinComponent>(void *a1)
{
  re::DynamicArray<re::ecs2::Pin>::deinit((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PinComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::PinComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::PinComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::PinComponent::~PinComponent(re::ecs2::PinComponent *this)
{
  re::DynamicArray<re::ecs2::Pin>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::DynamicArray<re::ecs2::Pin>::deinit(this + 32);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);

  JUMPOUT(0x1E6906520);
}

uint64_t re::DynamicArray<re::ecs2::PinAlignment>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::PinAlignment>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::PinAlignment>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::PinAlignment>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::PinAlignment>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::DynamicArray<re::ecs2::EntityHandle>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::ecs2::EntityHandle>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::ecs2::EntityHandle>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::ecs2::EntityHandle>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::ecs2::EntityHandle>::copy(a1, a2);
    }
  }

  return a1;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::Pin>::IntrospectionDynamicArray()
{
  ArcSharedObject::ArcSharedObject(&qword_1EE1AF6A8, 0);
  *(&qword_1EE1AF6B8 + 6) = 0;
  qword_1EE1AF6B8 = 0;
  *&xmmword_1EE1AF6C8 = 0;
  *(&xmmword_1EE1AF6C8 + 1) = 0xFFFFFFFFLL;
  qword_1EE1AF6A8 = &unk_1F5CADA48;
  qword_1EE1AF6E0 = 0;
  result = re::SerializedReference<re::IntrospectionBase const*>::reset(&qword_1EE1AF6D8);
  qword_1EE1AF6A8 = &unk_1F5CF7A68;
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::Pin>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionDynamicArray<re::ecs2::Pin>::~IntrospectionDynamicArray(void *a1)
{
  *a1 = &unk_1F5CADA48;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionDynamicArray<re::ecs2::Pin>::construct(uint64_t a1, uint64_t a2)
{
  *(a2 + 32) = 0;
  *(a2 + 8) = 0;
  *(a2 + 16) = 0;
  *a2 = 0;
  *(a2 + 24) = 0;
}

void *re::IntrospectionDynamicArray<re::ecs2::Pin>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::DynamicArray<re::ecs2::Pin>::deinit(a2);
  *a2 = a3;
  result = re::DynamicArray<re::ecs2::Pin>::setCapacity(a2, 0);
  ++*(a2 + 24);
  return result;
}

void *re::IntrospectionDynamicArray<re::ecs2::Pin>::resize(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  if (!*a4)
  {
    *a4 = a2;
    re::DynamicArray<re::ecs2::Pin>::setCapacity(a4, a5);
    ++*(a4 + 24);
  }

  return re::DynamicArray<re::ecs2::Pin>::resize(a4, a5);
}

re::IntrospectionBase *re::IntrospectionDynamicArray<re::ecs2::Pin>::addElement(uint64_t a1, re *a2, int a3, _anonymous_namespace_ *this)
{
  v11[0] = &unk_1F5CF49C0;
  v11[1] = 0;
  v11[2] = &str_67;
  v12 = 0u;
  v13 = 0;
  v14 = 0x3F80000000000000;
  v8.i64[0] = 0x7F0000007FLL;
  v8.i64[1] = 0x7F0000007FLL;
  v15 = vnegq_f32(v8);
  v16 = v8;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v17 = 0;
  v20 = 0;
  v22 = 0u;
  v23 = 0;
  v24 = 0x3F80000000000000;
  v25 = 0;
  v30 = 0;
  v27 = 0;
  v28 = 0;
  v26 = 0;
  v29 = 0;
  re::DynamicArray<re::ecs2::Pin>::add(this, v11);
  re::ecs2::Pin::~Pin(v11);
  v9 = (*(this + 4) + 240 * *(this + 2) - 240);
  re::introspectionInitElement(a2, a3, *(a1 + 48), v9);
  return v9;
}

uint64_t re::IntrospectionDynamicArray<re::ecs2::Pin>::elementAt(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 240 * a3;
}

{
  if (*(a2 + 16) <= a3)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a2 + 32) + 240 * a3;
}

uint64_t re::DynamicArray<re::ecs2::Pin>::deinit(uint64_t a1)
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
        v5 = 240 * v4;
        v6 = *(a1 + 32);
        v7 = v6;
        do
        {
          v8 = *v7;
          v7 += 30;
          (*v8)(v3);
          v6 += 30;
          v3 = v7;
          v5 -= 240;
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

void *re::DynamicArray<re::ecs2::Pin>::resize(void *result, unint64_t a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return result;
    }

    v10 = 240 * a2;
    v11 = a2;
    do
    {
      result = (**(v3[4] + v10))(v3[4] + v10);
      ++v11;
      v10 += 240;
    }

    while (v11 < v3[2]);
  }

  else
  {
    if (result[1] < a2)
    {
      result = re::DynamicArray<re::ecs2::Pin>::setCapacity(result, a2);
      v4 = v3[2];
    }

    v5 = a2 - v4;
    if (a2 > v4)
    {
      v6 = 240 * v4 + 232;
      v7.i64[0] = 0x7F0000007FLL;
      v7.i64[1] = 0x7F0000007FLL;
      v8 = vnegq_f32(v7);
      do
      {
        v9 = (v3[4] + v6);
        *(v9 - 29) = &unk_1F5CF49C0;
        *(v9 - 28) = 0;
        *(v9 - 27) = &str_67;
        *(v9 - 25) = 0uLL;
        *(v9 - 23) = 0;
        *(v9 - 22) = 0x3F80000000000000;
        *(v9 - 21) = v8;
        *(v9 - 19) = v7;
        *(v9 - 13) = 0;
        *(v9 - 16) = 0;
        *(v9 - 15) = 0;
        *(v9 - 17) = 0;
        *(v9 - 28) = 0;
        *(v9 - 11) = 0uLL;
        *(v9 - 9) = 0;
        *(v9 - 8) = 0x3F80000000000000;
        *(v9 - 56) = 0;
        *v9 = 0;
        *(v9 - 3) = 0;
        *(v9 - 2) = 0;
        *(v9 - 4) = 0;
        v6 += 240;
        *(v9 - 2) = 0;
        --v5;
      }

      while (v5);
    }
  }

  v3[2] = a2;
  ++*(v3 + 6);
  return result;
}

void *re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 32) = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *a1 = a3;
  result = re::DynamicArray<re::ecs2::Pin>::setCapacity(a1, 0);
  ++*(a1 + 24);
  return result;
}

void re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,unsigned long)#1}::__invoke(uint64_t a1, uint64_t a2, re::Allocator *a3, unint64_t a4)
{
  if (*a1 == a3)
  {
    re::DynamicArray<re::ecs2::Pin>::clear(a1);
  }

  else
  {
    re::DynamicArray<re::ecs2::Pin>::deinit(a1);
    *a1 = a3;
    re::DynamicArray<re::ecs2::Pin>::setCapacity(a1, a4);
    ++*(a1 + 24);
  }

  v8 = re::DynamicArray<re::ecs2::Pin>::resize(a1, a4);
  {
    re::TypeRegistry::typeInfo(*a2, *(*(a2 + 16) + 80), v13);
    re::TypeInfo::TypeInfo(v12, &v14);
    v9 = *(a1 + 16);
    if (v9)
    {
      v10 = *(a1 + 32);
      v11 = 240 * v9;
      do
      {
        re::TypeInfo::destruct(v12, v10, a3, 0);
        re::TypeInfo::construct(v12, v10, a3, 0);
        v10 += 240;
        v11 -= 240;
      }

      while (v11);
    }
  }
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,unsigned long)#1}::__invoke(uint64_t a1, unint64_t a2)
{
  if (*(a1 + 16) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(a1 + 32) + 240 * a2;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 16, 8);
  *result = a1;
  *(result + 8) = *(a1 + 24);
  *(result + 12) = -1;
  return result;
}

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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
      return *(v4 + 32) + 240 * v5;
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

uint64_t re::TypeBuilderHelper::registerDynamicArray<re::ecs2::Pin>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(uint64_t result, uint64_t a2)
{
  if (result)
  {
    return (*(*a2 + 40))(a2, result);
  }

  return result;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs212PinComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 5;
  *(a2 + 8) = 0;
  return result;
}

re::ecs2::DeformationGPUResources *re::ecs2::DeformationGPUResources::DeformationGPUResources(re::ecs2::DeformationGPUResources *this, re::RenderManager *a2)
{
  *this = 0xFFFFFFFFFFFFFFFLL;
  *(this + 8) = 0;
  v4 = (this + 8);
  *(this + 3) = 0;
  *(this + 12) = 0;
  *(this + 2) = 0u;
  *(this + 18) = 0;
  *(this + 56) = 0u;
  *(this + 76) = 0x1FFFFFFFFLL;
  *(this + 22) = 0;
  *(this + 12) = 0;
  *(this + 104) = 0u;
  *(this + 30) = 0;
  bzero(this + 128, 0x143CuLL);
  *(this + 332) = 0u;
  v5 = -512;
  do
  {
    v6 = this + v5;
    *(v6 + 730) = 0xFFFFFFFFFFFFFFFLL;
    *(v6 + 5848) = 0uLL;
    *(v6 + 1466) = 1;
    *(v6 + 734) = 0;
    *(v6 + 736) = 0;
    *(v6 + 735) = 0;
    *(v6 + 1474) = 0;
    v5 += 64;
  }

  while (v5);
  *(this + 732) = 0;
  *(this + 365) = 0u;
  *(this + 1466) = 1;
  *(this + 734) = 0;
  *(this + 1474) = 0;
  *(this + 5880) = 0u;
  *(this + 369) = 0u;
  *(this + 1480) = 1;
  *(this + 741) = 0;
  *(this + 371) = 0u;
  *(this + 1488) = 0;
  re::PerFrameAllocatorGPUManager::init(v4, a2);
  re::DeformationFencePool::init((this + 5320), (a2 + 208));
  return this;
}

void re::ecs2::DeformationGPUResources::~DeformationGPUResources(re::ecs2::DeformationGPUResources *this)
{
  v2 = this + 8;
  re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual((this + 8), *this);
  re::PerFrameAllocatorGPUManager::deinit(v2);
  re::DeformationFencePool::deinit((this + 5320));
  re::DeformationFencePool::~DeformationFencePool((this + 5320));
  re::DynamicArray<unsigned long>::deinit(this + 5280);
  v3 = 5120;
  do
  {
    *(this + v3 + 104) = 0;
    v3 -= 40;
  }

  while (v3);
  re::DynamicArray<re::RigComponentConstraint>::deinit(this + 96);
  re::DataArray<re::PerFrameAllocatorGPU>::deinit(this + 24);
  re::DynamicArray<unsigned long>::deinit(this + 24);
}

uint64_t *re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(uint64_t *result, uint64_t a2, uint64_t a3, re::DeformationFencePool *a4, uint64_t a5)
{
  if (((*result ^ a5) & 0xFFFFFFFFFFFFFFFLL) != 0)
  {
    v14[5] = v5;
    v14[6] = v6;
    v9 = result;
    *result = a5;
    v10 = (result + 1);
    re::DeformationFencePool::setCurrentFrame(a4, *(*(a2 + 144) + 32) & 0xFFFFFFFFFFFFFFFLL | (*(*(a2 + 144) + 16) << 60), a5);
    re::mtl::CommandQueue::makeCommandBuffer((*(a2 + 112) + 280), v14);
    if (v10 != v14)
    {
      v11 = v14[0];
      v14[0] = 0;
      v12 = *v10;
      *v10 = v11;
    }

    {
      {
        re::ns::String::String(&re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(re::RenderManager &,re::PerFrameAllocatorGPUManager &,re::DeformationFencePool &,re::FrameCount)::$_0::operator() const(void)::s_ns_string, "Deformation Command Buffer");
      }
    }

    v13 = re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(re::RenderManager &,re::PerFrameAllocatorGPUManager &,re::DeformationFencePool &,re::FrameCount)::$_0::operator() const(void)::s_ns_string;
    [v9[1] setLabel:v13];

    result = re::DeformationFencePool::allocateFence(a4);
    v9[2] = result;
  }

  return result;
}

void re::ecs2::PerFrameDeformationCommandData::finalizeForFrame(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (((*a1 ^ a4) & 0xFFFFFFFFFFFFFFFLL) == 0)
  {
    re::DrawingManager::trackCommandBufferForFrameCompletion(*(a2 + 112), (a1 + 8), a4);
    [*(a1 + 8) enqueue];
    [*(a1 + 8) commit];
  }

  v5 = *(a1 + 8);
  *a1 = 0xFFFFFFFFFFFFFFFLL;
  *(a1 + 8) = 0;

  *(a1 + 16) = 0;
}

uint64_t re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(re::ecs2::MeshDeformationComponent *this, const re::ecs2::MeshComponent *a2)
{
  if (a2 && (v3 = *(a2 + 5)) != 0 && (v4 = atomic_load((v3 + 896)), v4 != 2))
  {
    re::AssetHandle::loadAsync((a2 + 32));
    result = 0;
  }

  else
  {
    result = 1;
  }

  v6 = *(this + 5);
  if (v6)
  {
    v7 = atomic_load((v6 + 896));
    if (v7 != 2)
    {
      re::AssetHandle::loadAsync((this + 32));
      return 0;
    }
  }

  return result;
}

unint64_t re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData::calculateAllocationHash(re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData *this)
{
  v1 = *(this + 14);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = *(this + 15);
  v5 = v4 + 48 * v1;
  do
  {
    v6 = *(v4 + 8);
    if (v6)
    {
      v7 = 0;
      v8 = 72 * v6;
      v9 = (*(v4 + 16) + 8);
      do
      {
        v10 = *v9;
        v9 += 9;
        v7 ^= (v7 << 6) - 0x61C8864680B583E9 + (v7 >> 2) + v10;
        v8 -= 72;
      }

      while (v8);
    }

    else
    {
      v7 = 0;
    }

    result ^= (result << 6) - 0x61C8864680B583E9 + (result >> 2) + v7;
    v4 += 48;
  }

  while (v4 != v5);
  return result;
}

uint64_t re::ecs2::MeshDeformationComponent::update(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v118 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = v6[24];
  if (v7)
  {
    re::AssetHandle::AssetHandle(v92, (v7 + 32));
    v11 = v93;
    if (v93)
    {
      v12 = *(v93 + 792);
    }

    else
    {
      v12 = 0;
    }

    v15 = *(v93 + 276);
    v16 = re::AssetHandle::loadedAsset<re::MeshAsset>(v92);
    if (!v16)
    {
      re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(a1);
      if (v93)
      {
        v25 = atomic_load((v93 + 896));
        if (v25 == 3)
        {
          goto LABEL_84;
        }
      }

      v26 = v92;
LABEL_83:
      re::AssetHandle::loadAsync(v26);
LABEL_84:
      v14 = 0;
LABEL_88:
      re::AssetHandle::~AssetHandle(v92);
      return v14;
    }

    v17 = v16;
    v87 = a1;
    v18 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v11 ^ (v11 >> 30))) >> 27));
    v19 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v15 ^ (v15 >> 30))) >> 27));
    v20 = (((v12 ^ (v18 >> 31) ^ v18) << 6) + ((v12 ^ (v18 >> 31) ^ v18) >> 2) + (v19 ^ (v19 >> 31)) - 0x61C8864680B583E9) ^ v12 ^ (v18 >> 31) ^ v18;
    v21 = *(v16 + 584);
    v22 = *(v16 + 568);
    v23 = re::ecs2::EntityComponentCollection::get((v6 + 6), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v23)
    {
      v86 = (v23 + 216);
      v90 = *(v23 + 208);
      v22 = *(v23 + 192);
      v24 = 0xBF58476D1CE4E5B9 * (*(v23 + 700) ^ (*(v23 + 700) >> 30));
      v20 ^= (v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) ^ ((0x94D049BB133111EBLL * (v24 ^ (v24 >> 27))) >> 31));
    }

    else
    {
      v90 = v21;
      v86 = (v17 + 640);
    }

    v26 = (a1 + 32);
    if (*(a1 + 40) && (v27 = re::MeshDeformationAsset::assetType(v23), (v28 = re::AssetHandle::assetWithType(v26, v27, 1)) != 0))
    {
      v29 = v28;
      v30 = *(a1 + 40);
      if (v30)
      {
        v31 = *(v30 + 792);
      }

      else
      {
        v31 = 0;
      }

      v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v30 ^ (v30 >> 30))) >> 27));
      v20 ^= (v20 << 6) - 0x61C8864680B583E9 + (v20 >> 2) + (v31 ^ (v33 >> 31) ^ v33);
      v32 = a1;
      if (*(a1 + 56))
      {
        *(a1 + 56) = 0;
        re::DynamicArray<re::DeformationStackDefinition>::deinit(a1 + 152);
        re::DynamicArray<re::MeshDeformationIndex>::deinit(a1 + 192);
        re::ecs2::Component::markDirty(a1);
      }
    }

    else
    {
      v32 = a1;
      if (v20 != *(a1 + 56))
      {
        *(a1 + 56) = v20;
        re::DynamicArray<re::DeformationStackDefinition>::deinit(a1 + 152);
        re::DynamicArray<re::MeshDeformationIndex>::deinit(a1 + 192);
        re::MeshDeformationAsset::init(a1 + 152, v17, 0, 0);
        v20 = *(a1 + 56);
      }

      v29 = a1 + 152;
    }

    v85 = (a1 + 32);
    if (a2)
    {
      v20 ^= (v20 << 6) + (v20 >> 2) - 0xB36702970AA7E04;
      if (*(v32 + 64) != v20)
      {
        if (v32 + 72 != v29)
        {
          v34 = *v29;
          if (*(v32 + 72))
          {
            v35 = (v32 + 72);
            if (v34)
            {
              re::DynamicArray<re::DeformationStackDefinition>::copy(v35, v29);
              ++*(v32 + 96);
            }

            else
            {
              re::DynamicArray<re::DeformationStackDefinition>::clear(v35);
            }
          }

          else if (v34)
          {
            v36 = *(v29 + 16);
            *(v32 + 72) = v34;
            re::DynamicArray<re::DeformationStackDefinition>::setCapacity((v32 + 72), v36);
            ++*(v32 + 96);
            re::DynamicArray<re::DeformationStackDefinition>::copy((v32 + 72), v29);
          }
        }

        if (v32 + 112 != v29 + 40)
        {
          v38 = *(v29 + 40);
          if (*(v32 + 112))
          {
            v39 = (v32 + 112);
            if (v38)
            {
              re::DynamicArray<re::MeshDeformationIndex>::copy(v39, v29 + 40);
              ++*(v32 + 136);
            }

            else
            {
              re::DynamicArray<re::MeshDeformationIndex>::clear(v39);
            }
          }

          else if (v38)
          {
            v40 = *(v29 + 56);
            *(v32 + 112) = v38;
            re::DynamicArray<re::MeshDeformationIndex>::setCapacity((v32 + 112), v40);
            ++*(v32 + 136);
            re::DynamicArray<re::MeshDeformationIndex>::copy((v32 + 112), v29 + 40);
          }
        }

        re::MeshDeformationAsset::forceVertexFrameSkinning((v32 + 72));
        *(v32 + 64) = v20;
      }

      v29 = v32 + 72;
    }

    else if (*(v32 + 64))
    {
      *(v32 + 64) = 0;
      re::DynamicArray<re::DeformationStackDefinition>::deinit(v32 + 72);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v32 + 112);
    }

    v41 = (v32 + 232);
    re::MeshDeformationRuntimeData::update<re::MeshAsset>((v32 + 232), a4, a5, v29, v17, v86, v20);
    v42 = *(v32 + 392);
    if (v42 && *v42 == *(v32 + 248))
    {
LABEL_81:
      v80 = *(v32 + 40);
      if (!v80 || (v81 = atomic_load((v80 + 896)), v81 != 1) && ((v82 = *(v32 + 40)) == 0 || (v83 = atomic_load((v82 + 896))) != 0))
      {
        v14 = 1;
        goto LABEL_88;
      }

      goto LABEL_83;
    }

    v89 = v22;
    v43 = *(a3 + 144);
    if (v43)
    {
      v44 = (v43 + 8);
    }

    else
    {
      v44 = 0;
    }

    inited = objc_initWeak(&location, v44);
    v46 = re::globalAllocators(inited);
    v47 = (*(*v46[2] + 32))(v46[2], 128, 8);
    v48 = *(a3 + 32);
    *(v47 + 32) = 0u;
    *(v47 + 48) = 0u;
    *(v47 + 64) = 0u;
    *(v47 + 80) = 0u;
    *(v47 + 96) = 0u;
    *(v47 + 112) = 0u;
    *v47 = 0u;
    *(v47 + 16) = 0u;
    v49 = *(v32 + 256);
    *v47 = *(v32 + 248);
    *(v47 + 16) = v49;
    if (!v49)
    {
      *(v47 + 64) = 0;
      *(v47 + 88) = 0;
LABEL_64:
      *(v47 + 112) = v49;
      if (!v49)
      {
        goto LABEL_69;
      }

      v64 = 48 * v49;
      *(v47 + 120) = v65;
      if (v65)
      {
        v67 = v65;
        if (v49 != 1)
        {
          bzero(v65, v64 - 48);
          v67 = (v67 + v64 - 48);
        }

        v67[1] = 0u;
        v67[2] = 0u;
        *v67 = 0u;
LABEL_69:
        v68 = *(v32 + 368);
        v102 = v32 + 232;
        v103 = v68 - 1;
        v98 = v32 + 232;
        v99 = v68 - 1;
        v100 = 0;
        v101 = 0;
        v69 = re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v102, v95);
        v70 = 0;
        v71 = 0;
        while (v70 != v96 || v101 != v97)
        {
          v49 = re::MeshDeformationRuntimeData::MeshDeformationIterator::originalMeshInstanceAndPartIndex(&v98);
          v72 = re::MeshDeformationRuntimeData::meshDeformationHandle(v41, v49, WORD2(v49));
          v94 = re::MeshDeformationRuntimeData::deformationStackHandle(v41, v72);
          v73 = *(v47 + 16);
          if (v73 <= v71)
          {
            v104 = 0;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = 136315906;
            v106 = "operator[]";
            v107 = 1024;
            v108 = 468;
            v109 = 2048;
            v110 = v71;
            v111 = 2048;
            v112 = v73;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_91:
            v104 = 0;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = 136315906;
            v106 = "operator[]";
            v107 = 1024;
            v108 = 468;
            v109 = 2048;
            v110 = v71;
            v111 = 2048;
            v112 = v73;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_92:
            v104 = 0;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = 136315906;
            v106 = "operator[]";
            v107 = 1024;
            v108 = 468;
            v109 = 2048;
            v110 = v71;
            v111 = 2048;
            v112 = v73;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_93:
            re::internal::assertLog(6, v76, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 264, v77, v89);
            _os_crash();
            __break(1u);
LABEL_94:
            v104 = 0;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = 136315906;
            v106 = "operator[]";
            v107 = 1024;
            v108 = 797;
            v109 = 2048;
            v110 = v73;
            v111 = 2048;
            v112 = v49;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_95:
            v104 = 0;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = 136315906;
            v106 = "operator[]";
            v107 = 1024;
            v108 = 797;
            v109 = 2048;
            v110 = v73;
            v111 = 2048;
            v112 = v49;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_96:
            v104 = 0;
            v116 = 0u;
            v117 = 0u;
            v114 = 0u;
            v115 = 0u;
            *buf = 0u;
            os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
            v105 = 136315906;
            v106 = "operator[]";
            v107 = 1024;
            v108 = 468;
            v109 = 2048;
            v110 = v71;
            v111 = 2048;
            v112 = v49;
            _os_log_send_and_compose_impl();
            _os_crash_msg();
            __break(1u);
LABEL_97:
            re::internal::assertLog(6, v51, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 8, v49);
            _os_crash();
            __break(1u);
            goto LABEL_98;
          }

          v74 = *(v47 + 24) + 8 * v71;
          *v74 = v49;
          *(v74 + 4) = WORD2(v49);
          v73 = *(v47 + 40);
          if (v73 <= v71)
          {
            goto LABEL_91;
          }

          *(*(v47 + 48) + 8 * v71) = v94;
          v73 = *(v47 + 112);
          if (v73 <= v71)
          {
            goto LABEL_92;
          }

          v73 = *(v47 + 120) + 48 * v71;
          v75 = (*(*a4 + 72))(a4, &v94);
          re::DeformationBufferAllocator::init(v73, v75);
          v77 = v49;
          if (v89 <= v49)
          {
            goto LABEL_93;
          }

          v78 = *(v90 + 8 * v49);
          v73 = WORD1(v78);
          v49 = v48[11];
          if (v49 <= WORD1(v78))
          {
            goto LABEL_94;
          }

          v79 = *(*(v48[13] + 16 * WORD1(v78)) + 144 * v78 + 16);
          v73 = WORD1(v79);
          v49 = v48[3];
          if (v49 <= WORD1(v79))
          {
            goto LABEL_95;
          }

          v49 = *(v47 + 64);
          if (v49 <= v71)
          {
            goto LABEL_96;
          }

          *(*(v47 + 72) + 8 * v71++) = *(v48[5] + 16 * WORD1(v79)) + 864 * v79 + 144;
          v69 = re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v98);
          v70 = v100;
        }

        memset(buf, 0, sizeof(buf));
        *&v114 = 0;
        *(&v114 + 1) = re::globalAllocators(v69)[2];
        *&v115 = 0;
        v32 = v87;
        re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset((v87 + 384), &location, v47, buf);
        re::FunctionBase<24ul,void ()(void *)>::destroyCallable(buf);
        objc_destroyWeak(&location);
        location = 0;
        v26 = v85;
        goto LABEL_81;
      }

      goto LABEL_101;
    }

    if (v49 >> 61)
    {
      goto LABEL_97;
    }

    *(v47 + 24) = v52;
    if (v52)
    {
      v54 = v49 - 1;
      if (v49 != 1)
      {
        do
        {
          *v52 = -1;
          *(v52 + 2) = -1;
          v52 = (v52 + 8);
          --v54;
        }

        while (v54);
      }

      *v52 = -1;
      *(v52 + 2) = -1;
      *(v47 + 64) = v49;
      *(v47 + 72) = v55;
      if (v55)
      {
        v57 = v55;
        if (v49 != 1)
        {
          bzero(v55, 8 * v49 - 8);
          v57 += v49 - 1;
        }

        *v57 = 0;
        *(v47 + 88) = v49;
        if (v49 < 0x186186186186187)
        {
          *(v47 + 96) = v59;
          if (!v59)
          {
            goto LABEL_102;
          }

          v61 = v59;
          if (v49 != 1)
          {
            bzero(v59, 168 * v49 - 168);
            v61 = (v61 + 168 * v49 - 168);
          }

          *(v61 + 20) = 0;
          *(v61 + 8) = 0u;
          *(v61 + 9) = 0u;
          *(v61 + 6) = 0u;
          *(v61 + 7) = 0u;
          *(v61 + 4) = 0u;
          *(v61 + 5) = 0u;
          *(v61 + 2) = 0u;
          *(v61 + 3) = 0u;
          *v61 = 0u;
          *(v61 + 1) = 0u;
          goto LABEL_64;
        }

LABEL_100:
        re::internal::assertLog(6, v58, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 168, v49);
        _os_crash();
        __break(1u);
LABEL_101:
        re::internal::assertLog(4, v66, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
LABEL_102:
        re::internal::assertLog(4, v60, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
        _os_crash();
        __break(1u);
      }
    }

    else
    {
LABEL_98:
      re::internal::assertLog(4, v53, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    re::internal::assertLog(4, v56, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
    _os_crash();
    __break(1u);
    goto LABEL_100;
  }

  v13 = *re::foundationCoreLogObjects(a1);
  if (os_log_type_enabled(v13, OS_LOG_TYPE_ERROR))
  {
    v37 = v6[39];
    *buf = 134217984;
    *&buf[4] = v37;
    _os_log_error_impl(&dword_1E1C61000, v13, OS_LOG_TYPE_ERROR, "Dependent MeshComponent removed from Entity - %llu with MeshDeformationComponent", buf, 0xCu);
  }

  re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(a1);
  return 0;
}

void *re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(id *this)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::MeshDeformationComponent::BuiltMeshDeformationData,re::FrameManager>::reset(this + 48, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  result = re::MeshDeformationRuntimeData::clear((this + 29));
  this[29] = 0;
  this[30] = 0;
  this[55] = 0;
  return result;
}

uint64_t re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re *a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  re::globalAllocators(a1);
  v4 = (*(*a2 + 32))(a2, 24, 8);
  *(v4 + 1) = 0;
  *(v4 + 2) = 0;
  *v4 = 0;
  v5 = re::globalAllocators(v4)[2];
  v7[0] = &unk_1F5CF7CD0;
  v7[3] = v5;
  v7[4] = v7;
  *(a1 + 55) = (*(*a2 + 16))(a2, v4, v7);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v7);
  return *(a1 + 55);
}

BOOL re::ecs2::MeshDeformationComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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
      v13 = *(*(v12 + 16) + 192);
      if (v13 && *(v13 + 40))
      {
        v14 = v19;
        v15 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v14, v15, *(a3 + 40));
      }

      else
      {
        v16 = v19;
        v17 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v20);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v16, v17, *(a3 + 32));
        re::ecs2::MeshDeformationComponent::clearRuntimeMeshDeformationData(v12);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v20);
    }

    while (v20 != a5 || v21 != 0xFFFF || HIWORD(v21) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

re *re::ecs2::MeshDeformationComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(*(*(*(a1 + 8) + 224) + 688));
  if (v9)
  {
    v10 = (*(*v9 + 120))(v9);
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a1 + 8);
  v12 = *(v11 + 240);
  result = re::ServiceLocator::serviceOrNull<re::DeformationService>(*(*(v11 + 224) + 688));
  if (result)
  {
    v14 = *(*(a1 + 8) + 232);
    if (v14)
    {
      v15 = result;
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v24, a5, 0);
      v17 = v24;
      v16 = v25;
      v24 = a4;
      v25 = v17;
      v26 = v16;
      if (v17 != a5 || v16 != 0xFFFFFFFFLL)
      {
        do
        {
          v18 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v24);
          if (re::ecs2::MeshDeformationComponent::update(v18, v10, v14, v15, v12))
          {
            v19 = v24;
            v20 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v25);
            re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v19, v20, *(a3 + 48));
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v25);
        }

        while (v25 != a5 || v26 != 0xFFFF || HIWORD(v26) != 0xFFFF);
      }

      return (*(a5 + 40) != 0);
    }

    else
    {
      v23 = *re::foundationCoreLogObjects(result);
      result = os_log_type_enabled(v23, OS_LOG_TYPE_ERROR);
      if (result)
      {
        LOWORD(v24) = 0;
        _os_log_error_impl(&dword_1E1C61000, v23, OS_LOG_TYPE_ERROR, "MeshDeformationComponentStateImpl::processPreparingComponents attempted without RenderManager", &v24, 2u);
        return 0;
      }
    }
  }

  return result;
}

uint64_t re::ecs2::MeshDeformationSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v20[0] = a2;
  v20[1] = a3;
  v5 = re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v19);
  v6 = *(a3 + 200);
  if (v6)
  {
    v7 = 0;
    v8 = *(a3 + 216);
    v9 = 8 * v6;
    do
    {
      v5 = re::ecs2::SceneComponentTable::get((*v8 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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
      v14 = v13[888].u64[0];
      if (v14 >= v7)
      {
        v14 = v7;
      }

      v13[888].i64[0] = v14;
      v15 = v13[888].u64[1];
      if (v15 <= v7)
      {
        v15 = v7;
      }

      v13[888].i64[1] = v15;
      v16 = vdupq_n_s64(1uLL);
      v16.i64[0] = v7;
      v13[889] = vaddq_s64(v13[889], v16);
      *(v12 + 184) = 0;
    }
  }

  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v18, 3039, a1);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 288), v20, 0);
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v18);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v19);
}

uint64_t re::ecs2::MeshDeformationSystem::willAddSystemToECSService(re::ecs2::MeshDeformationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::Engine>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 29) = re::ServiceLocator::serviceOrNull<re::RenderManager>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  v5 = re::ServiceLocator::service<re::AssetService>(v4);
  v6 = re::MeshDeformationAsset::assetType(v5);
  v7 = *(v5 + 226);
  v10 = v6;
  v8 = re::HashTable<re::AssetType const*,std::unique_ptr<re::AssetLoader,std::function<void ()(re::AssetLoader*)>>,re::Hash<re::AssetType const*>,re::EqualTo<re::AssetType const*>,true,false>::operator[](v7, &v10);
  result = (*(**v8 + 128))(*v8);
  *(this + 30) = *v8;
  return result;
}

void *re::ecs2::MeshDeformationSystem::willRemoveSystemFromECSService(void *this)
{
  this[28] = 0;
  this[29] = 0;
  this[30] = 0;
  return this;
}

uint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::removeScene(uint64_t a1, uint64_t a2)
{
  v15 = a2;
  result = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((a1 + 56), &v15);
  if (result != -1)
  {
    v4 = *(a1 + 64) + 16 * result;
    re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 120, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 168, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, *(v4 + 8));
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

    return re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(a1 + 56, &v15);
  }

  return result;
}

re::ecs2::PerformDeformationSystemComponentStateImpl *re::ecs2::PerformDeformationSystemComponentStateImpl::PerformDeformationSystemComponentStateImpl(re::ecs2::PerformDeformationSystemComponentStateImpl *this, re::ecs2::PerformDeformationSystem *a2)
{
  v7[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF7B40;
  *(this + 1) = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  v3 = (this + 16);
  inited = objc_initWeak(this + 5, 0);
  *(this + 6) = 0;
  *(this + 10) = re::globalAllocators(inited)[2];
  *(this + 11) = 0;
  *(this + 12) = 0xFFFFFFFFFFFFFFFLL;
  *(this + 13) = 0;
  *(this + 14) = 0;
  v7[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v7[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v7[2] = re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType;
  v6[0] = v7;
  v6[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=(v3, v6);
  return this;
}

uint64_t re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(id *location, id *a2, void *a3, uint64_t a4)
{
  v18[5] = *MEMORY[0x1E69E9840];
  if (location[1])
  {
    WeakRetained = objc_loadWeakRetained(location);
    if (WeakRetained)
    {
      v9 = WeakRetained;

      if (!location[6])
      {
        v11 = re::globalAllocators(v10)[2];
        v18[0] = &unk_1F5CF7D28;
        v18[3] = v11;
        v18[4] = v18;
        re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), v18);
        v10 = re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v18);
      }

      v12 = re::globalAllocators(v10);
      v13 = v9[2] & 0xFFFFFFFFFFFFFFFLL | (v9[1] << 60);
      v14 = location[1];
      v15 = re::PerFrameAllocatorManager::perFrameAllocator(v12[6], v13);
      (*(*v15 + 16))(v15, v14, location + 2);
    }

    else
    {
      v16 = location[6];
      if (v16)
      {
        v18[0] = location[1];
        (*(*v16 + 16))(v16, v18);
      }

      else
      {
        re::internal::destroyPersistent<re::ecs2::DeformationGPUResources>(location[1]);
      }
    }
  }

  re::ArcWeakPtr<re::internal::AssetManagerAliveToken>::operator=(location, a2);
  location[1] = a3;
  return re::FunctionBase<24ul,void ()(void *)>::operator=<24ul>((location + 2), a4);
}

BOOL re::ecs2::PerformDeformationSystemComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v26, a5, 0);
  v8 = v26;
  v9 = v27;
  v10 = v27;
  v26 = a4;
  v27 = v8;
  v28 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v26);
      v13 = *(v12 + 16);
      *(v12 + 440) = 0;
      v14 = (a3 + 32);
      if (*(v13 + 192))
      {
        v15 = *(v13 + 98);
        v14 = (a3 + 40);
        if (*(v13 + 98))
        {
          v16 = (re::ecs2::ComponentImpl<re::ecs2::InlineDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)1>::s_componentType + 16);
          v17 = *(v13 + 104);
          v18 = vld1q_dup_s16(v16);
          v19 = 1;
          while (1)
          {
            v20 = vandq_s8(vceqq_s16(v18, *v17), xmmword_1E306AC00);
            v20.i16[0] = vmaxvq_u16(v20);
            if (v20.i32[0])
            {
              break;
            }

            v19 -= 8;
            ++v17;
            if (!--v15)
            {
              v14 = (a3 + 40);
              goto LABEL_14;
            }
          }

          if (v20.u16[0] - v19 >= *(v13 + 96))
          {
            v14 = (a3 + 40);
          }

          else
          {
            v14 = (a3 + 32);
          }
        }
      }

LABEL_14:
      v21 = v26;
      v22 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v27);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v21, v22, *v14);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v27);
    }

    while (v27 != a5 || v28 != 0xFFFF || HIWORD(v28) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

BOOL re::ecs2::PerformDeformationSystemComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::Engine::createDrawingManager(*(*(a1 + 8) + 224));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v20, a5, 0);
  v8 = v20;
  v9 = v21;
  v10 = v21;
  v20 = a4;
  v21 = v8;
  v22 = v9;
  if (v8 != a5 || v10 != 0xFFFFFFFFLL)
  {
    do
    {
      v12 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v20);
      if (re::ecs2::MeshDeformationComponent::areRequiredAssetsLoaded(v12, *(*(v12 + 2) + 192)))
      {
        v13 = *(v12 + 49);
        v14 = (a3 + 32);
        if (v13)
        {
          if (*(v13 + 16))
          {
            v14 = (a3 + 48);
          }

          else
          {
            v14 = (a3 + 32);
          }
        }

        v15 = v20;
        v16 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v21);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v15, v16, *v14);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v21);
    }

    while (v21 != a5 || v22 != 0xFFFF || HIWORD(v22) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::PerformDeformationSystemComponentStateImpl::processUpdatingComponents(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = re::ServiceLocator::serviceOrNull<re::DeformationService>(*(*(a1[1] + 224) + 688));
  if (v8)
  {
    v9 = v8;
    v10 = *(a1[1] + 232);
    v11 = (*(*(v10 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v10 + 144) + 16) << 60));
    v12 = re::RenderManager::perFrameAllocator(v10);
    v13 = a1[6];
    v53[0] = 0;
    v53[1] = re::PerFrameAllocatorGPUManager::perFrameAllocatorGPU(v13 + 8, v11);
    v36 = a1;
    re::ecs2::PerFrameDeformationCommandData::ensureInitializedForFrame(a1 + 12, *(a1[1] + 232), v14, (a1[6] + 5320), v11);
    v15 = re::ActiveDeformationData::create(v11, v12);
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v37, a5, 0);
    v50 = a4;
    v51 = v37;
    v52 = v38;
    if (v37 != a5 || v38 != 0xFFFFFFFFLL)
    {
      do
      {
        v16 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v50);
        v17 = *(v16 + 2);
        v18 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((*(v17 + 192) + 32));
        v19 = *(v18 + 584);
        v20 = *(v18 + 568);
        v21 = re::ecs2::EntityComponentCollection::get((v17 + 48), re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v21)
        {
          v22 = v21;
          re::ecs2::MeshSceneComponent::ensureCachedDataUpToDate(v21, *(v10 + 32));
          v19 = v22[26];
          v20 = v22[24];
        }

        v23 = *(v16 + 49);
        PerFrameMeshDeformationData = re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(v16, v12);
        v37 = v19;
        v38 = v20;
        v25 = v23[2];
        v39 = v23[3];
        v40 = v25;
        v26 = v23[5];
        v41 = v23[6];
        v42 = v26;
        v27 = v23[8];
        v43 = v23[9];
        v44 = v27;
        v28 = v23[11];
        v45 = v23[12];
        v46 = v28;
        v29 = v23[14];
        v47 = v23[15];
        v48 = v29;
        v49 = PerFrameMeshDeformationData;
        (*(*v9 + 88))(v9, &v37, v15);
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v51);
      }

      while (v51 != a5 || v52 != 0xFFFF || HIWORD(v52) != 0xFFFF);
    }

    (*(*v9 + 104))(v9, v12, v53, v36 + 13, v36[14], v15);
    v30 = re::RenderFrameBox::get((*(*(v36[1] + 232) + 112) + 328), 0xFFFFFFFFFFFFFFFuLL);
    re::DynamicArray<NS::SharedPtr<MTL::Fence>>::add((v30 + 4136), v36[14]);
    return *(a5 + 40) != 0;
  }

  else
  {
    v32 = re::introspect<re::DeformationService>();
    re::StringID::invalid(&v50);
    re::internal::missingServiceErrorMessage(v32, &v50, &v37);
    re::DynamicString::~DynamicString(&v37);
    re::StringID::~StringID(&v50);
    v33 = re::introspect<re::DeformationService>();
    re::StringID::invalid(&v50);
    re::internal::missingServiceErrorMessage(v33, &v50, &v37);
    if (v38)
    {
      v35 = v39;
    }

    else
    {
      v35 = &v38 + 1;
    }

    re::internal::assertLog(5, v34, "assertion failure: '%s' (%s:line %i) %s", "service", "service", 69, v35);
    re::DynamicString::~DynamicString(&v37);
    re::StringID::~StringID(&v50);
    result = _os_crash();
    __break(1u);
  }

  return result;
}

uint64_t re::ecs2::PerformDeformationSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v9[0] = a2;
  v9[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v8);
  if (a1[29])
  {
    v4 = a1[38];
    if (v4)
    {
      v5 = *(*(a1[33] + 232) + 144);
      re::PerFrameAllocatorGPUManager::freeAllocatorsOlderOrEqual((v4 + 8), *(v5 + 32) & 0xFFFFFFFFFFFFFFFLL | (*(v5 + 16) << 60));
    }

    re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update(a1 + 47, v9, 0);
    re::ecs2::PerFrameDeformationCommandData::finalizeForFrame((a1 + 44), *(a1[33] + 232), v6, *(*(*(a1[33] + 232) + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(*(a1[33] + 232) + 144) + 16) << 60));
  }

  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v8);
}

void re::ecs2::PerformDeformationSystem::willAddSystemToECSService(id *this)
{
  v10[5] = *MEMORY[0x1E69E9840];
  re::ecs2::DeformationSubsystem::willAddSystemToECSService(this);
  v2 = *(this[33] + 29);
  if (v2 && *(v2 + 208))
  {
    v3 = *(v2 + 144);
    if (v3)
    {
      v4 = (v3 + 8);
    }

    else
    {
      v4 = 0;
    }

    inited = objc_initWeak(&location, v4);
    v6 = re::globalAllocators(inited);
    v7 = (*(*v6[2] + 32))(v6[2], 5960, 8);
    v8 = re::ecs2::DeformationGPUResources::DeformationGPUResources(v7, *(this[33] + 29));
    memset(v10, 0, 24);
    v10[3] = re::globalAllocators(v8)[2];
    v10[4] = 0;
    re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(this + 37, &location, v7, v10);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v10);
    objc_destroyWeak(&location);
  }
}

double re::ecs2::PerformDeformationSystem::willRemoveSystemFromECSService(re::ecs2::PerformDeformationSystem *this)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v2 = *(*(this + 33) + 232);
  if (v2 && *(v2 + 208))
  {
    **(this + 38) = *(*(v2 + 144) + 24) & 0xFFFFFFFFFFFFFFFLL | (*(*(v2 + 144) + 16) << 60);
    inited = objc_initWeak(&location, 0);
    memset(v6, 0, 24);
    v6[3] = re::globalAllocators(inited)[2];
    v6[4] = 0;
    re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(this + 37, &location, 0, v6);
    re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v6);
    objc_destroyWeak(&location);
  }

  result = 0.0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void *re::ecs2::allocInfo_MeshDeformationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_351, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_351))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF7A8, "MeshDeformationComponent");
    __cxa_guard_release(&_MergedGlobals_351);
  }

  return &unk_1EE1AF7A8;
}

void re::ecs2::initInfo_MeshDeformationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0x590DB2F18B38DE74;
  v14[1] = "MeshDeformationComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1AF780, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF780);
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
      qword_1EE1AF798 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_AssetHandle(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "meshDeformationAssetHandle";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AF7A0 = v12;
      __cxa_guard_release(&qword_1EE1AF780);
    }
  }

  *(this + 2) = 0x1C000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1AF798;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshDeformationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshDeformationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshDeformationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshDeformationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224MeshDeformationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

void *re::ecs2::allocInfo_MeshDeformationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF788, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF788))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF838, "MeshDeformationSystem");
    __cxa_guard_release(&qword_1EE1AF788);
  }

  return &unk_1EE1AF838;
}

void re::ecs2::initInfo_MeshDeformationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xA362AF4CADF32224;
  v6[1] = "MeshDeformationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x21000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_MeshDeformationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::MeshDeformationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::MeshDeformationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::MeshDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::MeshDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::MeshDeformationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::MeshDeformationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::MeshDeformationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 36);
  a3[31] = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 33);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::MeshDeformationSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 36);
  a1[31] = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 33);

  re::ecs2::System::~System(a1);
}

void *re::ecs2::allocInfo_PerformDeformationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AF790, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AF790))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF8C8, "PerformDeformationSystem");
    __cxa_guard_release(&qword_1EE1AF790);
  }

  return &unk_1EE1AF8C8;
}

void re::ecs2::initInfo_PerformDeformationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x6FEEDF872A0C54BCLL;
  v6[1] = "PerformDeformationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x26800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_PerformDeformationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PerformDeformationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PerformDeformationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::PerformDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::PerformDeformationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PerformDeformationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PerformDeformationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::PerformDeformationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates((a3 + 376));
  *(a3 + 256) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr((a3 + 296));
  re::FixedArray<CoreIKTransform>::deinit((a3 + 272));

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::PerformDeformationSystem>(uint64_t a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates((a1 + 376));
  *(a1 + 256) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr((a1 + 296));
  re::FixedArray<CoreIKTransform>::deinit((a1 + 272));

  re::ecs2::System::~System(a1);
}

void re::ecs2::MeshDeformationSystem::~MeshDeformationSystem(re::ecs2::MeshDeformationSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 36);
  *(this + 31) = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(this + 33);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 36);
  *(this + 31) = &unk_1F5CF7B00;
  re::FixedArray<CoreIKTransform>::deinit(this + 33);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::PerformDeformationSystem::~PerformDeformationSystem(re::ecs2::PerformDeformationSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 47);
  *(this + 32) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 47);
  *(this + 32) = &unk_1F5CF7B40;

  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr(this + 37);
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

void re::DeformationFencePool::~DeformationFencePool(re::DeformationFencePool *this)
{
  re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::deinit(this + 584);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 584);
  re::BucketArray<unsigned long,8ul>::deinit(this + 528);
  re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + 528);
  for (i = 464; i != -48; i -= 64)
  {
    re::BucketArray<unsigned long,8ul>::deinit(this + i);
    re::DynamicOverflowArray<re::CollisionCastHit *,2ul>::deinit(this + i);
  }
}

uint64_t re::BucketArray<NS::SharedPtr<MTL::Fence>,32ul>::deinit(uint64_t a1)
{
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i != v2; ++i)
    {
      v4 = re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](a1, i);
      if (*v4)
      {

        *v4 = 0;
      }
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

void *re::DynamicArray<re::DeformationStackDefinition>::copy(void *result, uint64_t a2)
{
  v3 = result;
  v4 = *(a2 + 16);
  v5 = result[2];
  if (v4 >= v5)
  {
    result = re::DynamicArray<re::DeformationStackDefinition>::setCapacity(result, *(a2 + 16));
    v11 = *(a2 + 32);
    v12 = v3[2];
    v13 = v3[4];
    if (v12)
    {
      v14 = 40 * v12;
      do
      {
        result = re::DynamicArray<re::DeformationDefinition>::operator=(v13, v11);
        v11 += 5;
        v13 += 40;
        v14 -= 40;
      }

      while (v14);
      v13 = v3[4];
      v12 = v3[2];
      v11 = *(a2 + 32);
    }

    if (v12 != v4)
    {
      v15 = 5 * v12;
      v16 = &v11[v15];
      result = (v13 + 8 * v15);
      v17 = 40 * v4 - 8 * v15;
      do
      {
        v18 = re::DynamicArray<re::DeformationDefinition>::DynamicArray(result, v16);
        v16 += 5;
        result = (v18 + 40);
        v17 -= 40;
      }

      while (v17);
    }
  }

  else
  {
    v6 = result[4];
    if (v4)
    {
      v7 = *(a2 + 32);
      v8 = 40 * v4;
      do
      {
        result = re::DynamicArray<re::DeformationDefinition>::operator=(v6, v7);
        v7 += 5;
        v6 += 40;
        v8 -= 40;
      }

      while (v8);
      v6 = v3[4];
      v5 = v3[2];
    }

    if (v4 != v5)
    {
      v9 = v6 + 40 * v4;
      v10 = 40 * v5 - 40 * v4;
      do
      {
        result = re::DynamicArray<re::DeformationDefinition>::deinit(v9);
        v9 += 40;
        v10 -= 40;
      }

      while (v10);
    }
  }

  v3[2] = v4;
  return result;
}

uint64_t re::DynamicArray<re::DeformationDefinition>::operator=(uint64_t a1, uint64_t *a2)
{
  if (a1 != a2)
  {
    v4 = *a2;
    if (*a1)
    {
      if (v4)
      {
        re::DynamicArray<re::DeformationDefinition>::copy(a1, a2);
        ++*(a1 + 24);
      }

      else
      {
        re::DynamicArray<re::DeformationDefinition>::clear(a1);
      }
    }

    else if (v4)
    {
      v5 = a2[2];
      *a1 = v4;
      re::DynamicArray<re::DeformationDefinition>::setCapacity(a1, v5);
      ++*(a1 + 24);
      re::DynamicArray<re::DeformationDefinition>::copy(a1, a2);
    }
  }

  return a1;
}

void re::DynamicArray<re::DeformationDefinition>::clear(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(a1 + 16) = 0;
  if (v2)
  {
    v3 = *(a1 + 32);
    v4 = 40 * v2;
    do
    {
      re::FixedArray<CoreIKTransform>::deinit(v3 + 2);
      re::StringID::destroyString(v3);
      v3 += 5;
      v4 -= 40;
    }

    while (v4);
  }

  ++*(a1 + 24);
}

void re::DynamicArray<re::MeshDeformationIndex>::copy(void *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  if (v4 >= a1[2])
  {
    re::DynamicArray<re::MeshDeformationIndex>::setCapacity(a1, *(a2 + 16));
    std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex *,re::MeshDeformationIndex *,re::MeshDeformationIndex *>(&v15, *(a2 + 32), (*(a2 + 32) + 48 * a1[2]), a1[4]);
    v8 = a1[2];
    if (v8 != v4)
    {
      v9 = *(a2 + 32);
      v10 = v9 + 48 * v4;
      v11 = a1[4];
      v12 = 48 * v8;
      do
      {
        v13 = v9 + v12;
        *(v11 + v12) = *(v9 + v12);
        re::StringID::StringID((v11 + v12 + 8), (v9 + v12 + 8));
        re::StringID::StringID((v11 + v12 + 24), (v9 + v12 + 24));
        *(v11 + v12 + 40) = *(v9 + v12 + 40);
        v9 += 48;
        v11 += 48;
      }

      while (v13 + 48 != v10);
    }
  }

  else
  {
    std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex *,re::MeshDeformationIndex *,re::MeshDeformationIndex *>(&v14, *(a2 + 32), (*(a2 + 32) + 48 * v4), a1[4]);
    v5 = a1[2];
    if (v4 != v5)
    {
      v6 = 48 * v5 - 48 * v4;
      v7 = (a1[4] + 48 * v4 + 24);
      do
      {
        re::StringID::destroyString(v7);
        re::StringID::destroyString((v7 - 16));
        v7 = (v7 + 48);
        v6 -= 48;
      }

      while (v6);
    }
  }

  a1[2] = v4;
}

uint64_t *std::__copy_impl::operator()[abi:nn200100]<re::MeshDeformationIndex *,re::MeshDeformationIndex *,re::MeshDeformationIndex *>(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = a2;
  if (a2 != a3)
  {
    v7 = a2 + 3;
    do
    {
      *a4 = *(v7 - 24);
      re::StringID::operator=((a4 + 8), v7 - 2);
      re::StringID::operator=((a4 + 24), v7);
      *(a4 + 40) = v7[2];
      a4 += 48;
      v8 = v7 + 3;
      v7 += 6;
    }

    while (v8 != a3);
    return a3;
  }

  return result;
}

void re::internal::Callable<re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re::PerFrameAllocator &)::$_0,void ()(void *)>::operator()(uint64_t a1, void **a2)
{
  v2 = *a2;
  if (**a2)
  {
    v3 = v2[1];
    if (v3)
    {
      v4 = 24 * v3;
      v5 = (v2[2] + 8);
      do
      {
        v6 = *(v5 - 1);
        if (v6)
        {
          if (*v5)
          {
            (*(*v6 + 40))(v6, v5[1]);
            *v5 = 0;
            v5[1] = 0;
          }

          *(v5 - 1) = 0;
        }

        v5 += 3;
        v4 -= 24;
      }

      while (v4);
      (*(**v2 + 40))(*v2, v2[2]);
      v2[1] = 0;
      v2[2] = 0;
    }

    *v2 = 0;
  }
}

void *re::internal::Callable<re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re::PerFrameAllocator &)::$_0,void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7CD0;
  return result;
}

void *re::internal::Callable<re::ecs2::MeshDeformationComponent::createPerFrameMeshDeformationData(re::PerFrameAllocator &)::$_0,void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7CD0;
  return result;
}

id *re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::~FramePersistentPtr(id *a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  inited = objc_initWeak(&location, 0);
  memset(v5, 0, 24);
  v5[3] = re::globalAllocators(inited)[2];
  v5[4] = 0;
  re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(a1, &location, 0, v5);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(v5);
  objc_destroyWeak(&location);
  location = 0;
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable((a1 + 2));
  objc_destroyWeak(a1);
  *a1 = 0;
  return a1;
}

_anonymous_namespace_ *re::FixedArray<re::ecs2::ComponentTypeBase const*>::FixedArray(_anonymous_namespace_ *a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 1) = 0;
  *(a1 + 2) = 0;
  v3 = *(a2 + 8);
  if (v3)
  {
    re::FixedArray<re::ecs2::ComponentTypeBase const*>::copy(a1, a2);
  }

  return a1;
}

uint64_t re::introspect<re::DeformationService>()
{
  v0 = &unk_1EE187000;
  {
    v0 = &unk_1EE187000;
    if (v2)
    {
      re::introspect<re::DeformationService>(BOOL)::info = re::introspect_DeformationService(0);
      v0 = &unk_1EE187000;
    }
  }

  return v0[210];
}

re *re::internal::destroyPersistent<re::ecs2::DeformationGPUResources>(re *result)
{
  if (result)
  {
    v1 = result;
    v2 = re::globalAllocators(result)[2];
    re::ecs2::DeformationGPUResources::~DeformationGPUResources(v1);
    v3 = *(*v2 + 40);

    return v3(v2, v1);
  }

  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::DeformationGPUResources*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::cloneInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7D28;
  return result;
}

void *re::internal::Callable<re::FramePersistentPtr<re::ecs2::DeformationGPUResources,re::FrameManager>::reset(re::ArcWeakPtr<re::FrameManager>,re::ecs2::DeformationGPUResources*,re::Function<void ()(void *)> &&)::{lambda(void *)#1},void ()(void *)>::moveInto(uint64_t a1, void *a2)
{
  result = a2;
  *a2 = &unk_1F5CF7D28;
  return result;
}

uint64_t re::make::shared::unsafelyInplace<re::ecs2::MeshDeformationComponent>(uint64_t a1)
{
  *(a1 + 416) = 0u;
  *(a1 + 432) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 400) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 368) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 304) = 0u;
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
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD0348;
  *(v2 + 104) = 0u;
  *(v2 + 120) = 0u;
  *(v2 + 136) = 0;
  *(v2 + 184) = 0u;
  *(v2 + 200) = 0u;
  *(v2 + 216) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0;
  *(v2 + 224) = 0;
  *(v2 + 232) = 0;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0u;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 240) = 0;
  *(v2 + 248) = -1;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0u;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0u;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  inited = objc_initWeak((v2 + 384), 0);
  *(a1 + 392) = 0;
  *(a1 + 424) = re::globalAllocators(inited)[2];
  *(a1 + 432) = 0;
  *(a1 + 440) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs224MeshDeformationComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

re::ecs2::MeshDeformationSystem *re::ecs2::MeshDeformationSystem::MeshDeformationSystem(re::ecs2::MeshDeformationSystem *this)
{
  v6[2] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::System::System(this, 1, 1);
  *v2 = &unk_1F5CF7B98;
  v3 = (v2 + 31);
  v2[28] = 0;
  v2[29] = 0;
  v2[30] = 0;
  v2[31] = &unk_1F5CF7B00;
  v2[32] = v2;
  v2[33] = 0;
  v2[34] = 0;
  v2[35] = 0;
  v6[0] = re::ecs2::ComponentImpl<re::ecs2::MeshComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)12>::s_componentType;
  v6[1] = re::ecs2::ComponentImpl<re::ecs2::MeshSceneComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  v5[0] = v6;
  v5[1] = 2;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 33), v5);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::BasicComponentStates(this + 288, this, v3, 1);
  return this;
}

double re::ecs2::RigidBodyComponent::updateRigidBody(re::ecs2::RigidBodyComponent *this, re::ecs2::ColliderComponent *a2)
{
  if (*(this + 30) != *(*(this + 42) + 208))
  {
    WeakRetained = objc_loadWeakRetained(this + 35);
    if (WeakRetained)
    {
      WeakRetained[232] = 1;
    }
  }

  re::RigidBody::setMotionType(*(this + 42), *(this + 30));
  v5 = *(this + 42);
  v5[304] = *(this + 132);
  (*(*v5 + 432))();
  v6 = *(this + 42);
  v6[55] = *(this + 34);
  (*(*v6 + 432))();
  (*(**(this + 42) + 184))(*(this + 42), *(this + 140));
  (*(**(this + 42) + 192))(*(this + 42), *(this + 141));
  (*(**(this + 42) + 200))(*(this + 42), *(this + 142));
  (*(**(this + 42) + 136))(*(this + 42), *(this + 143));
  (*(**(this + 42) + 144))(*(this + 42), *(this + 144));
  (*(**(this + 42) + 152))(*(this + 42), *(this + 145));
  (*(**(this + 42) + 288))();
  v7.n128_u32[0] = *(this + 37);
  v8.n128_u32[0] = *(this + 38);
  (*(**(this + 42) + 336))(v7, v8);
  (*(**(this + 42) + 344))();
  v9 = *(this + 42);
  *(v9[4].i64[1] + 88) = *(v9[4].i64[1] + 88) & 0xFFFFFFFB | (4 * ((*(a2 + 15) >> 2) & 1));
  v10 = *(this + 10);
  v11 = vmvnq_s8(vceqzq_f32(v10));
  v11.i32[3] = v11.i32[2];
  if ((vmaxvq_u32(v11) & 0x80000000) != 0)
  {
    v9[15] = vaddq_f32(v10, v9[15]);
    *(this + 10) = 0u;
  }

  v12 = *(this + 11);
  v13 = vmvnq_s8(vceqzq_f32(v12));
  v13.i32[3] = v13.i32[2];
  if ((vmaxvq_u32(v13) & 0x80000000) != 0)
  {
    *(*(this + 42) + 256) = vaddq_f32(v12, *(*(this + 42) + 256));
    *(this + 11) = 0u;
  }

  v14 = *(this + 12);
  v15 = vmvnq_s8(vceqzq_f32(v14));
  v15.i32[3] = v15.i32[2];
  if ((vmaxvq_u32(v15) & 0x80000000) != 0)
  {
    *(*(this + 42) + 272) = vaddq_f32(v14, *(*(this + 42) + 272));
    *(this + 12) = 0u;
  }

  v16 = *(this + 13);
  v17 = vmvnq_s8(vceqzq_f32(v16));
  v17.i32[3] = v17.i32[2];
  if ((vmaxvq_u32(v17) & 0x80000000) != 0)
  {
    *(*(this + 42) + 288) = vaddq_f32(v16, *(*(this + 42) + 288));
    v16.i64[0] = 0;
    *(this + 13) = 0u;
  }

  return *v16.i64;
}

void re::ecs2::RigidBodyComponent::removeFromSimulation(re::ecs2::RigidBodyComponent *this)
{
  v9[4] = *MEMORY[0x1E69E9840];
  if (*(this + 42))
  {
    WeakRetained = objc_loadWeakRetained(this + 35);
    if (WeakRetained)
    {
      v3 = WeakRetained;
      re::PhysicsJointCollection::deleteJointsReferencingRigidBody((WeakRetained + 16), *(this + 42));
      re::RigidBodyCollection::remove(v3 + 9, *(this + 42));
      objc_destroyWeak(this + 35);
      *(this + 35) = 0;
    }

    v4 = *(this + 42);
    v9[0] = &unk_1F5CF7DE8;
    v9[3] = v9;
    v8[3] = v8;
    v7 = v4;
    v8[0] = &unk_1F5CF7DE8;
    std::__function::__value_func<void ()(re::RigidBody *)>::~__value_func[abi:nn200100](v9);
    std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::operator=[abi:nn200100](this + 44, &v7);
    std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::~unique_ptr[abi:nn200100](&v7);
    *(this + 42) = 0;
    re::AssetHandle::operator=(this + 248, this + 12);
    v5 = *(this + 2);
    if (v5)
    {
      v6 = re::ecs2::EntityComponentCollection::get((v5 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      if (v6)
      {
        re::ecs2::ColliderComponent::removeFromSimulation(v6);
      }
    }
  }
}

uint64_t *std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>>::operator=[abi:nn200100](uint64_t *a1, uint64_t *a2)
{
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    std::function<void ()(re::RigidBody *)>::operator()((a1 + 1), v5);
  }

  std::__function::__value_func<void ()(re::RigidBody *)>::operator=[abi:nn200100]((a1 + 1), (a2 + 1));
  return a1;
}

void re::ecs2::RigidBodyComponent::teleport(re::ecs2::RigidBodyComponent *this)
{
  v2 = *(this + 2);
  v3 = *(v2 + 216);
  if (v3 && *(v3 + 4))
  {
    if (!RESyncableIsAuthoritative())
    {
      return;
    }

    v2 = *(this + 2);
  }

  ++*(this + 31);
  v4 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  if (v4)
  {
    v5 = v4;
    *(v4 + 80) = *(this + 31);
    re::ecs2::Component::markDirty(v4);
    if (v3)
    {

      re::ecs2::NetworkComponent::markDirty(v3, v5);
    }
  }
}

re::ecs2::RigidBodyComponentStateImpl *re::ecs2::RigidBodyComponentStateImpl::RigidBodyComponentStateImpl(re::ecs2::RigidBodyComponentStateImpl *this)
{
  v4[3] = *MEMORY[0x1E69E9840];
  *this = &unk_1F5CF7D80;
  *(this + 2) = 0;
  *(this + 3) = 0;
  *(this + 1) = 0;
  v4[0] = re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[1] = re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v4[2] = re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType;
  v3[0] = v4;
  v3[1] = 3;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((this + 8), v3);
  return this;
}

BOOL re::ecs2::RigidBodyComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v44, 3047, a1);
  v8 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (v9 && (v10 = v9, v11 = *(a3 + 8), v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v43[0] = v12, (v43[1] = v13) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v40, a5, 0);
    v15 = v40;
    v14 = v41;
    v40 = a4;
    v41 = v15;
    v42 = v14;
    if (v15 != a5 || v14 != 0xFFFFFFFFLL)
    {
      do
      {
        v22 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v40);
        v23 = *(v22 + 16);
        v24 = re::ecs2::EntityComponentCollection::get((v23 + 48), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (v24)
        {
          v25 = v24;
          v26 = *(v23 + 98);
          if (!*(v23 + 98))
          {
            goto LABEL_27;
          }

          v27 = (re::ecs2::ComponentImpl<re::ecs2::CharacterControllerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType + 16);
          v28 = *(v23 + 104);
          v29 = vld1q_dup_s16(v27);
          v30 = 1;
          while (1)
          {
            v31 = vandq_s8(vceqq_s16(v29, *v28), xmmword_1E306AC00);
            v31.i16[0] = vmaxvq_u16(v31);
            if (v31.i32[0])
            {
              break;
            }

            v30 -= 8;
            ++v28;
            if (!--v26)
            {
              goto LABEL_27;
            }
          }

          if (v31.u16[0] - v30 < *(v23 + 96))
          {
            v32 = *re::ecsComponentsLogObjects(v24);
            if (os_log_type_enabled(v32, OS_LOG_TYPE_ERROR))
            {
              v39 = 0;
              _os_log_error_impl(&dword_1E1C61000, v32, OS_LOG_TYPE_ERROR, "Rigid Body component cannot exist on the same entity that contains a character controller component. Deactivating component.", &v39, 2u);
            }
          }

          else
          {
LABEL_27:
            v33 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v43, v23);
            if (v33)
            {
              v34 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v33);
            }

            else
            {
              v34 = 0;
            }

            if (*(v23 + 304))
            {
              v16 = *(v25 + 5);
              if (v16)
              {
                if (v34)
                {
                  v17 = *(v22 + 336);
                  if (!v17 || *(v22 + 104) != *(v22 + 256) || !re::MassFrame::operator==((v22 + 32), v17 + 5) || *(v25 + 10) != v16)
                  {
                    goto LABEL_16;
                  }

                  WeakRetained = objc_loadWeakRetained((v22 + 280));
                  if (WeakRetained)
                  {
                    v19 = WeakRetained - 8;
                  }

                  else
                  {
                    v19 = 0;
                  }

                  if (v19 != v34)
                  {
LABEL_16:
                    re::ecs2::RigidBodyComponent::removeFromSimulation(v22);
                  }

                  v20 = v40;
                  v21 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v41);
                  re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v20, v21, *(a3 + 40));
                  goto LABEL_32;
                }
              }
            }
          }
        }

        v35 = v40;
        v36 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v41);
        re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v35, v36, *(a3 + 32));
        re::ecs2::RigidBodyComponent::removeFromSimulation(v22);
LABEL_32:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v41);
      }

      while (v41 != a5 || v42 != 0xFFFF || HIWORD(v42) != 0xFFFF);
    }

    v37 = *(a5 + 40) != 0;
  }

  else
  {
    v37 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v44);
  return v37;
}

BOOL re::ecs2::RigidBodyComponentStateImpl::processPreparingComponents(uint64_t a1, uint64_t a2, void *a3, unint64_t a4, uint64_t a5)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v67, 3047, a1);
  v8 = (*(**(a3[1] + 56) + 32))(*(a3[1] + 56));
  v9 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v8);
  if (!v9 || (v10 = v9, v11 = a3[1], v12 = (*(*v9 + 24))(v9), v13 = (*(*v10 + 40))(v10, v11), v66[0] = v12, (v66[1] = v13) == 0))
  {
    v14 = 0;
    goto LABEL_7;
  }

  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(buf, a5, 0);
  v63 = a4;
  v64 = *buf;
  v65 = *&buf[8];
  if (*buf != a5 || *&buf[8] != 0xFFFFFFFFLL)
  {
    v16 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
    while (1)
    {
      v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v63);
      v18 = *(v17 + 16);
      v19 = re::ecs2::EntityComponentCollection::get((v18 + 6), v16[67]);
      v21 = v19;
      v22 = v19[5];
      if (v22 && (v23 = atomic_load((v22 + 896)), v23 == 2))
      {
        v24 = 1;
      }

      else
      {
        re::AssetHandle::loadAsync((v19 + 4));
        v24 = 0;
      }

      if (*(v17 + 104))
      {
        v25 = re::PhysicsMaterialAsset::assetType(v19);
        v26 = re::AssetHandle::assetWithType((v17 + 96), v25, 1);
        if (!v26)
        {
          re::AssetHandle::loadAsync((v17 + 96));
LABEL_24:
          re::ecs2::RigidBodyComponent::removeFromSimulation(v17);
          goto LABEL_31;
        }

        v27 = *(v26 + 8);
      }

      else
      {
        v28 = re::PhysicsFactory::defaultFactory(v19, v20);
        v27 = (*(*v28 + 24))(v28);
      }

      if (v27)
      {
        v29 = v24;
      }

      else
      {
        v29 = 0;
      }

      if ((v29 & 1) == 0)
      {
        goto LABEL_24;
      }

      if (*(v17 + 336))
      {
        goto LABEL_22;
      }

      v34 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v66, v18);
      re::TransformService::worldMatrix(v34->i64[1], v18, 0, buf);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v34, buf, v59);
      v69 = xmmword_1E30474D0;
      *buf = 0u;
      v68 = 0u;
      v35 = re::decomposeScaleRotationTranslation<float>(v59, buf, &v69, &v68);
      v60 = *buf;
      v61 = v69;
      v62 = v68;
      v36 = vmulq_f32(v69, v69);
      v37 = vaddv_f32(vadd_f32(*v36.i8, *&vextq_s8(v36, v36, 8uLL)));
      if (v37 != 1.0 && fabsf(v37 + -1.0) > 0.00001)
      {
        v38 = *re::ecsComponentsLogObjects(v35);
        v16 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
        if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
        {
          *buf = 0;
          _os_log_error_impl(&dword_1E1C61000, v38, OS_LOG_TYPE_ERROR, "NaN or non-unit rotation detected in transform (RigidBody). Skipping.", buf, 2u);
        }

        re::ecs2::RigidBodyComponent::removeFromSimulation(v17);
        v30 = v63;
        v31 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v64);
        v32 = a3[2];
        v33 = a3[4];
        goto LABEL_30;
      }

      v39 = re::ecs2::EntityComponentCollection::get((v18 + 6), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(v59, v17, v39, v18[27]);
      v40 = re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v34);
      v58 = DWORD1(v59[0]);
      v41 = (*(*v10 + 120))(v10);
      (*(*v10 + 136))(v10);
      if (*(v17 + 148) < 0.0)
      {
        *(v17 + 148) = v41;
      }

      if (*(v17 + 152) < 0.0)
      {
        *(v17 + 152) = v42;
      }

      v43 = re::AssetHandle::blockUntilLoaded<re::CollisionShapeAsset>((v21 + 4));
      v45 = *(v43 + 1);
      v46 = *(v17 + 352);
      v47 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v27 ^ (v27 >> 30))) >> 27));
      v48 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v45 ^ (v45 >> 30))) >> 27));
      v49 = (((v47 ^ (v47 >> 31)) << 6) + ((v47 ^ (v47 >> 31)) >> 2) - 0x61C8864680B583E9 + (v48 ^ (v48 >> 31))) ^ v47 ^ (v47 >> 31);
      if (!v46)
      {
        goto LABEL_44;
      }

      if (v49 != *(v17 + 344) || !re::MassFrame::operator==((v17 + 32), v46 + 5))
      {
        break;
      }

      *(v17 + 352) = 0;
LABEL_45:
      *(v17 + 336) = v46;
      *(v17 + 344) = v49;
      re::RigidBodyCollection::add((v40 + 80), v46);
      objc_storeWeak((v17 + 280), (v40 + 8));
      *buf = v62;
      v71 = v61;
      v51 = *(v17 + 336);
      v52 = v61;
      v51[1] = v62;
      v51[2] = v52;
      (*(*v51 + 64))(v51, buf);
      re::ecs2::RigidBodyComponent::updateRigidBody(v17, v21);
      re::AssetHandle::operator=(v17 + 248, (v17 + 96));
      v53 = *(v17 + 120);
      *(v17 + 272) = *(v17 + 124);
      *(v17 + 288) = v53;
      re::ecs2::ColliderComponent::setUnmanagedCollisionObject(v21, *(*(v17 + 336) + 72));
      v54 = v21[8];
      v55 = *(*(v17 + 336) + 72);
      if (v55[4] != v54)
      {
        v55[4] = v54;
        (*(*v55 + 80))(v55);
        v55 = *(*(v17 + 336) + 72);
      }

      v16 = &re::ecs2::ComponentImpl<re::ecs2::PrimitiveBoxComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
      re::CollisionObject::setScale(v55, &v60);
      v56 = *(v17 + 336);
      *(v56[9] + 40) = *(v17 + 16);
      v57 = *v56;
      if (*(v17 + 25) == 1)
      {
        (*(v57 + 304))();
      }

      else
      {
        (*(v57 + 312))();
      }

      re::RigidBody::setMotionType(*(v17 + 336), v58);
LABEL_22:
      re::ecs2::RigidBodyComponent::updateRigidBody(v17, v21);
      v30 = v63;
      v31 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v64);
      v32 = a3[2];
      v33 = a3[6];
LABEL_30:
      re::ecs2::ComponentBucketsBase::moveComponent(v32, v30, v31, v33);
LABEL_31:
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v64);
      if (v64 == a5 && v65 == 0xFFFF && HIWORD(v65) == 0xFFFF)
      {
        goto LABEL_5;
      }
    }

    *(v17 + 352) = 0;
    v43 = std::function<void ()(re::RigidBody *)>::operator()(v17 + 360, v46);
LABEL_44:
    v50 = re::PhysicsFactory::defaultFactory(v43, v44);
    *buf = v27;
    v46 = (*(*v50 + 40))(v50, re::PhysicsFactory::m_defaultAllocator, v45, v17 + 32, buf, 1);
    goto LABEL_45;
  }

LABEL_5:
  v14 = *(a5 + 40) != 0;
LABEL_7:
  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v67);
  return v14;
}

BOOL re::ecs2::RigidBodyComponentStateImpl::processUpdatingComponents(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v169 = *MEMORY[0x1E69E9840];
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v157, 3047, a1);
  v10 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11 && (v12 = v11, v13 = (*(**(*(a3 + 8) + 56) + 32))(*(*(a3 + 8) + 56)), v136 = re::ServiceLocator::service<re::TransformService>(v13), v14 = *(a3 + 8), v15 = (*(*v12 + 24))(v12), v16 = (*(*v12 + 40))(v12, v14), v156[0] = v15, (v156[1] = v16) != 0))
  {
    re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v164, a5, 0);
    v153 = a4;
    v154 = v164.i64[0];
    v155 = v164.i32[2];
    if (v164.i64[0] != a5 || v164.u32[2] != 0xFFFFFFFFLL)
    {
      while (1)
      {
        v17 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v153);
        v18 = *(v17 + 16);
        v19 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v156, v18);
        v20 = v19;
        if (!a6 || re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v19) == a6)
        {
          break;
        }

LABEL_93:
        re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v154);
        if (v154 == a5 && v155 == 0xFFFF && HIWORD(v155) == 0xFFFF)
        {
          goto LABEL_96;
        }
      }

      re::TransformService::worldMatrix(*(v20 + 8), v18, 0, &v164);
      re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v20, &v164, v152);
      v164 = 0u;
      v158 = xmmword_1E30474D0;
      *v168 = 0u;
      re::decomposeScaleRotationTranslation<float>(v152, &v164, &v158, v168);
      v150 = *v168;
      v151 = v158;
      v149 = v164;
      v21 = re::ecs2::EntityComponentCollection::get((v18 + 6), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
      re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(&v145, v17, v21, v18[27]);
      if (v146 == 1)
      {
        v22 = (v17 + 304);
        v23 = *(v17 + 320);
        if (v23 != *v151.i32 && vabds_f32(v23, *v151.i32) > 0.001 || (v24 = *(v17 + 324), v24 != *&v151.i32[1]) && vabds_f32(v24, *&v151.i32[1]) > 0.001 || (v25 = *(v17 + 328), v25 != *&v151.i32[2]) && vabds_f32(v25, *&v151.i32[2]) > 0.001 || (v26 = *(v17 + 332), v26 != *&v151.i32[3]) && vabds_f32(v26, *&v151.i32[3]) > 0.001 || *v22 != *&v150 && vabds_f32(*v22, *&v150) > 0.001 || (v27 = *(v17 + 308), v27 != *(&v150 + 1)) && vabds_f32(v27, *(&v150 + 1)) > 0.001 || (v28 = *(v17 + 312), v28 != *(&v150 + 2)) && vabds_f32(v28, *(&v150 + 2)) > 0.001)
        {
          v29 = *(v17 + 336);
          v30 = v151;
          v29[1] = v150;
          v29[2] = v30;
          (*(*v29 + 64))(v29, &v150);
          v31 = v151;
          *v22 = v150;
          *(v17 + 320) = v31;
          if (!v21)
          {
            goto LABEL_90;
          }

          goto LABEL_38;
        }

LABEL_37:
        if (!v21)
        {
LABEL_90:
          re::CollisionObject::setScale(*(*(v17 + 336) + 72), &v149);
          *(v17 + 272) = *(v17 + 124);
          v132 = *(re::ecs2::EntityComponentCollection::get((v18 + 6), re::ecs2::ComponentImpl<re::ecs2::ColliderComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 64);
          v133 = *(*(v17 + 336) + 72);
          if (v133[4] != v132)
          {
            v133[4] = v132;
            (*(*v133 + 80))(v133);
          }

          *(v17 + 288) = v148;
          goto LABEL_93;
        }

LABEL_38:
        v164.i8[0] = 0;
        v158.i8[0] = 0;
        v77 = *(v17 + 288);
        if (v77 != 2 || v148 == 2)
        {
          if (!v148)
          {
            v164.i8[0] = 1;
            v165 = 0uLL;
            v158.i8[0] = 1;
            v159 = 0uLL;
            goto LABEL_82;
          }

          if (v148 != 1)
          {
            if (*(v21 + 144) == *(v21 + 148))
            {
              if (*(v21 + 176) == *(v21 + 180))
              {
                if (v77 != 2 || (v146 & 1) != 0 || v148 != 2)
                {
                  goto LABEL_84;
                }

                v164.i8[0] = 1;
                v165 = *(v21 + 96);
                v80 = (v21 + 112);
                goto LABEL_68;
              }

              v129 = 0;
              *&v168[15] = *(v21 + 160);
LABEL_73:
              v158.i8[0] = 1;
              v159 = *&v168[15];
LABEL_74:
              if (v77 == 2 && (v146 & 1) == 0 && v148 == 2)
              {
                if (!v129)
                {
                  v164.i8[0] = 1;
                }

                v165 = *(v21 + 96);
                v80 = (v21 + 112);
                goto LABEL_80;
              }

              if (!v129)
              {
LABEL_83:
                (*(**(v17 + 336) + 240))(*(v17 + 336), &v159);
LABEL_84:
                if ((v146 & 1) == 0)
                {
                  v130 = *(v21 + 25);
                  if (v130 != (*(**(v17 + 336) + 296))(*(v17 + 336)))
                  {
                    v131 = **(v17 + 336);
                    if (*(v21 + 25) == 1)
                    {
                      (*(v131 + 304))();
                    }

                    else
                    {
                      (*(v131 + 312))();
                    }
                  }
                }

                *(v21 + 26) = 0;
                goto LABEL_90;
              }

LABEL_82:
              (*(**(v17 + 336) + 224))(*(v17 + 336), &v165);
              if ((v158.i8[0] & 1) == 0)
              {
                goto LABEL_84;
              }

              goto LABEL_83;
            }

            v79 = 0;
            v164.i8[0] = 1;
LABEL_63:
            v165 = *(v21 + 128);
            if (*(v21 + 176) == *(v21 + 180))
            {
              if (v77 != 2 || (v146 & 1) != 0 || v148 != 2)
              {
                goto LABEL_82;
              }

              v165 = *(v21 + 96);
              v80 = (v21 + 112);
              if (v79)
              {
LABEL_80:
                v159 = *v80;
                goto LABEL_82;
              }

LABEL_68:
              v158.i8[0] = 1;
              goto LABEL_80;
            }

            *&v168[15] = *(v21 + 160);
            if (v79)
            {
LABEL_70:
              v159 = *(v21 + 160);
              v129 = 1;
              goto LABEL_74;
            }

            v129 = 1;
            goto LABEL_73;
          }

          v164.i8[0] = 1;
          v78 = *(v21 + 112);
          v165 = *(v21 + 96);
          v158.i8[0] = 1;
          v159 = v78;
        }

        else
        {
          v164.i8[0] = 1;
          v165 = 0uLL;
          v158.i8[0] = 1;
          v159 = 0uLL;
          if (!v148)
          {
            goto LABEL_82;
          }
        }

        if (*(v21 + 144) == *(v21 + 148))
        {
          if (*(v21 + 176) == *(v21 + 180))
          {
            goto LABEL_82;
          }

          goto LABEL_70;
        }

        v79 = 1;
        goto LABEL_63;
      }

      v32 = v18[32];
      if (v32)
      {
        if (!v21)
        {
          goto LABEL_33;
        }
      }

      else
      {
        v32 = re::ecs2::EntityComponentCollection::add((v18 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
        if (!v21)
        {
LABEL_33:
          if (v148 == 2 && *(v17 + 124) == *(v17 + 272))
          {
            (*(**(v17 + 336) + 40))(v168);
            v55 = *&v168[16];
            v56 = *&v168[20];
            v57 = v55 + v55;
            v58 = v56 + v56;
            v59 = *&v168[24];
            v60 = v59 + v59;
            v61 = v55 * (v55 + v55);
            v62 = v56 * (v56 + v56);
            v63 = v59 * (v59 + v59);
            v64 = v57 * *&v168[20];
            v65 = v57 * *&v168[24];
            v66 = v58 * *&v168[24];
            v67 = v57 * *&v168[28];
            v68 = v58 * *&v168[28];
            v69.i32[3] = 0;
            v69.f32[0] = 1.0 - (v62 + v63);
            v69.f32[1] = v64 + (v60 * *&v168[28]);
            v69.f32[2] = v65 - v68;
            v70.i32[3] = 0;
            v70.f32[0] = v64 - (v60 * *&v168[28]);
            v70.f32[1] = 1.0 - (v61 + v63);
            v70.f32[2] = v66 + v67;
            v71.i32[3] = 0;
            v71.f32[0] = v65 + v68;
            v71.f32[1] = v66 - v67;
            v71.f32[2] = 1.0 - (v61 + v62);
            v164 = vmulq_n_f32(v69, v149.f32[0]);
            v165 = vmulq_n_f32(v70, v149.f32[1]);
            v72 = *v168;
            v72.i32[3] = 1.0;
            v166 = vmulq_laneq_f32(v71, v149, 2);
            v167 = v72;
            re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace(v20, &v164, v18, &v158);
            v74 = v159;
            v73 = v160;
            *(v32 + 32) = v158;
            *(v32 + 48) = v74;
            *(v32 + 64) = v73;
            re::ecs2::Component::markDirty(v32);
          }

          else
          {
            v75 = *(v17 + 336);
            v76 = v151;
            v75[1] = v150;
            v75[2] = v76;
            (*(*v75 + 64))(v75, &v150);
          }

          goto LABEL_37;
        }
      }

      if (v147)
      {
        (*(**(v17 + 336) + 40))(&v140);
        v33 = v141;
        v34 = v142;
        v35 = v33 + v33;
        v36 = v34 + v34;
        v37 = v143;
        v38 = v37 + v37;
        v39 = v33 * (v33 + v33);
        v40 = v34 * (v34 + v34);
        v41 = v37 * (v37 + v37);
        v42 = v35 * v142;
        v43 = v35 * v143;
        v44 = v36 * v143;
        v45 = v35 * v144;
        v46 = v36 * v144;
        v47.i32[3] = 0;
        v47.f32[0] = 1.0 - (v40 + v41);
        v47.f32[1] = v42 + (v38 * v144);
        v47.f32[2] = v43 - v46;
        v48.i32[3] = 0;
        v48.f32[0] = v42 - (v38 * v144);
        v48.f32[1] = 1.0 - (v39 + v41);
        v48.f32[2] = v44 + v45;
        v49.i32[3] = 0;
        v49.f32[0] = v43 + v46;
        v49.f32[1] = v44 - v45;
        v49.f32[2] = 1.0 - (v39 + v40);
        v164 = vmulq_n_f32(v47, v149.f32[0]);
        v165 = vmulq_n_f32(v48, v149.f32[1]);
        v50 = v140;
        v50.i32[3] = 1.0;
        v166 = vmulq_laneq_f32(v49, v149, 2);
        v167 = v50;
        re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace(v20, &v164, v18, v168);
        re::lerp<float>(v168, (v21 + 32), &v137, 0.1);
        v52 = v138;
        v51 = v139;
        *(v32 + 32) = v137;
        *(v32 + 48) = v52;
        *(v32 + 64) = v51;
        re::ecs2::Component::markDirty(v32);
        v53 = v18[4];
        if (v53)
        {
          if ((*(v53 + 304) & 0x80) != 0)
          {
            v54 = 0;
          }

          else
          {
            v54 = v18[4];
          }
        }

        else
        {
          v54 = 0;
        }

        re::TransformService::worldTransform(v136, v54, 0, &v164);
        v81 = 0;
        v82 = v165.f32[0];
        v83 = v82 + v82;
        v84 = v165.f32[2];
        v85 = v84 + v84;
        v86 = v82 * (v82 + v82);
        v87 = v165.f32[1] * (v165.f32[1] + v165.f32[1]);
        v88 = v84 * (v84 + v84);
        v89 = v83 * v165.f32[1];
        v90 = v83 * v165.f32[2];
        v91 = (v165.f32[1] + v165.f32[1]) * v165.f32[2];
        v92 = (v165.f32[1] + v165.f32[1]) * v165.f32[3];
        v93 = v85 * v165.f32[3];
        v94.i32[3] = 0;
        v94.f32[0] = 1.0 - (v87 + v88);
        v94.f32[1] = (v83 * v165.f32[1]) + v93;
        v94.f32[2] = (v83 * v165.f32[2]) - v92;
        v95 = v83 * v165.f32[3];
        v96.i32[3] = 0;
        v96.f32[0] = v90 + v92;
        v96.f32[1] = v91 - v95;
        v96.f32[2] = 1.0 - (v86 + v87);
        *&v97 = v91 + v95;
        v98.f32[0] = v89 - v93;
        v98.f32[1] = 1.0 - (v86 + v88);
        v98.i64[1] = v97;
        v99 = v166;
        v99.i32[3] = 1.0;
        v100 = *(v20 + 176);
        v101 = *(v20 + 192);
        v102 = *(v20 + 208);
        v103 = *(v20 + 224);
        v158 = vmulq_n_f32(v94, v164.f32[0]);
        v159 = vmulq_n_f32(v98, v164.f32[1]);
        v160 = vmulq_laneq_f32(v96, v164, 2);
        v161 = v99;
        do
        {
          *(&v164 + v81) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v100, COERCE_FLOAT(*(&v158 + v81))), v101, *&v158.i8[v81], 1), v102, *(&v158 + v81), 2), v103, *(&v158 + v81), 3);
          v81 += 16;
        }

        while (v81 != 64);
        v104 = 0;
        v105 = *&v138;
        v106 = v105 + v105;
        v107 = *(&v138 + 2);
        v108 = v107 + v107;
        v109 = v105 * (v105 + v105);
        v110 = *(&v138 + 1) * (*(&v138 + 1) + *(&v138 + 1));
        v111 = v107 * (v107 + v107);
        v112 = v106 * *(&v138 + 1);
        v113 = v106 * *(&v138 + 2);
        v114 = (*(&v138 + 1) + *(&v138 + 1)) * *(&v138 + 2);
        v115 = (*(&v138 + 1) + *(&v138 + 1)) * *(&v138 + 3);
        v116 = v108 * *(&v138 + 3);
        v117.i32[3] = 0;
        v117.f32[0] = 1.0 - (v110 + v111);
        v117.f32[1] = (v106 * *(&v138 + 1)) + v116;
        v117.f32[2] = (v106 * *(&v138 + 2)) - v115;
        v118 = v106 * *(&v138 + 3);
        v119.i32[3] = 0;
        v119.f32[0] = v113 + v115;
        v119.f32[1] = v114 - v118;
        v119.f32[2] = 1.0 - (v109 + v110);
        v120 = v164;
        v121 = v165;
        *&v122 = v114 + v118;
        v123.f32[0] = v112 - v116;
        v123.f32[1] = 1.0 - (v109 + v111);
        v123.i64[1] = v122;
        v124 = v139;
        v124.i32[3] = 1.0;
        v125 = v166;
        v126 = v167;
        v158 = vmulq_n_f32(v117, v137.f32[0]);
        v159 = vmulq_n_f32(v123, v137.f32[1]);
        v160 = vmulq_laneq_f32(v119, v137, 2);
        v161 = v124;
        do
        {
          *(&v164 + v104) = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v120, COERCE_FLOAT(*(&v158 + v104))), v121, *&v158.i8[v104], 1), v125, *(&v158 + v104), 2), v126, *(&v158 + v104), 3);
          v104 += 16;
        }

        while (v104 != 64);
        v158 = 0u;
        v162 = 0u;
        v163 = xmmword_1E30474D0;
        re::decomposeScaleRotationTranslation<float>(&v164, &v158, &v163, &v162);
        v164 = v162;
        v165 = v163;
        v127 = *(v17 + 336);
        v128 = v163;
        v127[1] = v162;
        v127[2] = v128;
        (*(*v127 + 64))(v127, &v164);
        goto LABEL_38;
      }

      goto LABEL_33;
    }

LABEL_96:
    v134 = *(a5 + 40) != 0;
  }

  else
  {
    v134 = 0;
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v157);
  return v134;
}