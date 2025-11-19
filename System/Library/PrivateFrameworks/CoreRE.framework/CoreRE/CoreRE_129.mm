void re::ecs2::RigidBodyComponentStateImpl::simToECS(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v74, 3047, a1);
  v10 = (*(**(*(a4 + 8) + 56) + 32))(*(*(a4 + 8) + 56));
  v11 = re::ServiceLocator::serviceOrNull<re::ecs2::PhysicsSimulationService>(v10);
  if (v11)
  {
    v12 = v11;
    v13 = *(a4 + 8);
    v14 = (*(*v11 + 24))(v11);
    v15 = (*(*v12 + 40))(v12, v13);
    v73[0] = v14;
    v73[1] = v15;
    if (v15)
    {
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v76, a6, 0);
      v70 = a5;
      v71 = v76.i64[0];
      v72 = v76.i32[2];
      if (v76.i64[0] != a6 || v76.u32[2] != 0xFFFFFFFFLL)
      {
        do
        {
          v52 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v70);
          v53 = *(v52 + 16);
          v54 = re::ecs2::EntityComponentCollection::get((v53 + 6), re::ecs2::ComponentImpl<re::ecs2::MotionStateComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
          v55 = v53[27];
          re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(v69, v52, v54, v55);
          if (v69[1])
          {
            v56 = re::ecs2::PhysicsSimulationMapping::physicsSimulationDataForEntity(v73, v53);
            if (re::ecs2::PhysicsSimulationData::ensurePhysicsSimulation(v56) == a2)
            {
              re::TransformService::worldMatrix(v56->i64[1], v53, 0, &v76);
              re::ecs2::PhysicsSimulationData::transformInPhysicsSimulationSpace(v56, &v76, &v66);
              v59 = v67;
              v60 = v66;
              v16 = vmulq_f32(v66, vmlaq_f32(vmulq_f32(vextq_s8(vextq_s8(v68, v68, 0xCuLL), v68, 8uLL), vnegq_f32(vextq_s8(vuzp1q_s32(v67, v67), v67, 0xCuLL))), vextq_s8(vuzp1q_s32(v68, v68), v68, 0xCuLL), vextq_s8(vextq_s8(v67, v67, 0xCuLL), v67, 8uLL)));
              v17 = (v16.f32[2] + vaddv_f32(*v16.f32)) <= 0.0;
              v18 = -1.0;
              if (!v17)
              {
                v18 = 1.0;
              }

              v61 = v18;
              v62 = v68;
              (*(**(v52 + 336) + 40))(&v76);
              v19 = v77;
              v64 = v76;
              (*(**(v52 + 336) + 40))(v65);
              v20 = v53[32];
              if (!v20)
              {
                v20 = re::ecs2::EntityComponentCollection::add((v53 + 6), re::ecs2::ComponentImpl<re::ecs2::TransformComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
              }

              if (!re::areAlmostEqual<float>(v65, (v52 + 304)))
              {
                v21 = vmulq_f32(v60, v60);
                v22 = vmulq_f32(v59, v59);
                v23 = vadd_f32(vzip1_s32(*v21.i8, *v22.i8), vzip2_s32(*v21.i8, *v22.i8));
                v24 = vextq_s8(v21, v21, 8uLL);
                *v24.f32 = vsqrt_f32(vadd_f32(vzip1_s32(*v24.f32, *&vextq_s8(v22, v22, 8uLL)), v23));
                v25 = vmulq_f32(v62, v62);
                v24.i32[2] = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));
                v63 = vmulq_n_f32(v24, v61);
                re::ecs2::Component::willSet(v20);
                v26 = v19.f32[0] * (v19.f32[0] + v19.f32[0]);
                v27 = v19.f32[1] * (v19.f32[1] + v19.f32[1]);
                v28 = v19.f32[2] * (v19.f32[2] + v19.f32[2]);
                v29 = (v19.f32[0] + v19.f32[0]) * v19.f32[1];
                v30 = (v19.f32[0] + v19.f32[0]) * v19.f32[2];
                v31 = (v19.f32[1] + v19.f32[1]) * v19.f32[2];
                v32 = (v19.f32[0] + v19.f32[0]) * v19.f32[3];
                v33 = (v19.f32[1] + v19.f32[1]) * v19.f32[3];
                v34 = (v19.f32[2] + v19.f32[2]) * v19.f32[3];
                v35.i32[3] = 0;
                v35.f32[0] = 1.0 - (v27 + v28);
                v35.f32[1] = v29 + v34;
                v36.i32[3] = 0;
                v35.f32[2] = v30 - v33;
                v37.i32[3] = 0;
                v37.f32[0] = v29 - v34;
                v37.f32[1] = 1.0 - (v26 + v28);
                v37.f32[2] = v31 + v32;
                v36.f32[0] = v30 + v33;
                v36.f32[1] = v31 - v32;
                v36.f32[2] = 1.0 - (v26 + v27);
                v76 = vmulq_n_f32(v35, v63.f32[0]);
                v77 = vmulq_n_f32(v37, v63.f32[1]);
                v38 = v64;
                v38.i32[3] = 1.0;
                v78 = vmulq_laneq_f32(v36, v63, 2);
                v79 = v38;
                re::ecs2::PhysicsSimulationData::localTransformFromPhysicsSimulationSpace(v56, &v76, v53, v75);
                v40 = v75[1];
                v39 = v75[2];
                *(v20 + 32) = v75[0];
                *(v20 + 48) = v40;
                *(v20 + 64) = v39;
                re::ecs2::Component::didSet(v20);
                re::ecs2::Component::markDirty(v20);
                if (v69[0] && ((*(**(v52 + 336) + 296))(*(v52 + 336)) & 1) == 0)
                {
                  re::ecs2::NetworkComponent::markDirty(v55, v20);
                }
              }

              (*(**(v52 + 336) + 40))(&v76);
              v41 = v77;
              *(v52 + 304) = v76;
              *(v52 + 320) = v41;
              if (v54)
              {
                v42 = *(v54 + 144);
                *(v54 + 148) = v42;
                v43 = *(v54 + 176);
                *(v54 + 180) = v43;
                if (v69[2])
                {
                  v44 = 0;
                  v45 = 0;
                  *(v54 + 96) = 0;
                  *(v54 + 104) = 0;
                  *(v54 + 152) = v42;
                }

                else
                {
                  *(v54 + 96) = (*(**(v52 + 336) + 216))(*(v52 + 336));
                  *(v54 + 104) = v46;
                  *(v54 + 152) = *(v54 + 148);
                  v44 = (*(**(v52 + 336) + 232))(*(v52 + 336));
                  v43 = *(v54 + 180);
                }

                *(v54 + 112) = v44;
                *(v54 + 120) = v45;
                *(v54 + 184) = v43;
                v47 = *(v54 + 25);
                v48 = (*(**(v52 + 336) + 296))();
                *(v54 + 25) = v48;
                if ((v47 != 1 || (v48 & 1) == 0) && v69[0])
                {
                  re::ecs2::Component::markDirty(v54);
                  re::ecs2::NetworkComponent::markDirty(v55, v54);
                  v48 = *(v54 + 25);
                }

                if (v47 != v48)
                {
                  v49 = v56[2].i64[0];
                  if (v49)
                  {
                    v50 = *(v52 + 336);
                    v51 = (*(*v50 + 296))(v50);
                    (*(*v49 + 16))(v49, v50, v51);
                  }
                }
              }
            }
          }

          re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v71);
        }

        while (v71 != a6 || v72 != 0xFFFF || HIWORD(v72) != 0xFFFF);
      }
    }
  }

  re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v74);
}

void *re::ecs2::allocInfo_RigidBodyComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_352, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_352))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AF968, "RigidBodyComponent");
    __cxa_guard_release(&_MergedGlobals_352);
  }

  return &unk_1EE1AF968;
}

void re::ecs2::initInfo_RigidBodyComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v83[0] = 0x1479C03CF7280260;
  v83[1] = "RigidBodyComponent";
  if (v83[0])
  {
    if (v83[0])
    {
    }
  }

  *(this + 2) = v84;
  if ((atomic_load_explicit(&qword_1EE1AF960, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AF960);
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
      qword_1EE1AF9F8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "setSleepOnCreation";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AFA00 = v12;
      v13 = re::introspectionAllocator(v12);
      v14 = re::introspect_MassFrame(1);
      v15 = (*(*v13 + 32))(v13, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "massFrame";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x2000000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1AFA08 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_AssetHandle(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "material";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x6000000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1AFA10 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_MotionType(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "motionType";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x7800000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1AFA18 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_uint32_t(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "version_deprecated";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x8000000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1AFA20 = v27;
      v28 = re::introspectionAllocator(v27);
      v29 = (*(*v28 + 32))(v28, 24, 8);
      *v29 = 5;
      *(v29 + 1) = "version";
      *(v29 + 2) = "version_deprecated";
      qword_1EE1AFA28 = v29;
      v30 = re::introspectionAllocator(v29);
      v32 = re::introspect_BOOL(1, v31);
      v33 = (*(*v30 + 32))(v30, 72, 8);
      *v33 = 1;
      *(v33 + 8) = "isCCDEnabled";
      *(v33 + 16) = v32;
      *(v33 + 24) = 0;
      *(v33 + 32) = 0x8400000006;
      *(v33 + 40) = 0;
      *(v33 + 48) = 0;
      *(v33 + 56) = 0;
      *(v33 + 64) = 0;
      qword_1EE1AFA30 = v33;
      v34 = re::introspectionAllocator(v33);
      v36 = re::introspect_float(1, v35);
      v37 = (*(*v34 + 32))(v34, 72, 8);
      *v37 = 1;
      *(v37 + 8) = "ccdVelocityThreshold";
      *(v37 + 16) = v36;
      *(v37 + 24) = 0;
      *(v37 + 32) = 0x8800000007;
      *(v37 + 40) = 0;
      *(v37 + 48) = 0;
      *(v37 + 56) = 0;
      *(v37 + 64) = 0;
      qword_1EE1AFA38 = v37;
      v38 = re::introspectionAllocator(v37);
      v40 = re::introspect_BOOL(1, v39);
      v41 = (*(*v38 + 32))(v38, 72, 8);
      *v41 = 1;
      *(v41 + 8) = "lockRotationX";
      *(v41 + 16) = v40;
      *(v41 + 24) = 0;
      *(v41 + 32) = 0x8C00000008;
      *(v41 + 40) = 0;
      *(v41 + 48) = 0;
      *(v41 + 56) = 0;
      *(v41 + 64) = 0;
      qword_1EE1AFA40 = v41;
      v42 = re::introspectionAllocator(v41);
      v44 = re::introspect_BOOL(1, v43);
      v45 = (*(*v42 + 32))(v42, 72, 8);
      *v45 = 1;
      *(v45 + 8) = "lockRotationY";
      *(v45 + 16) = v44;
      *(v45 + 24) = 0;
      *(v45 + 32) = 0x8D00000009;
      *(v45 + 40) = 0;
      *(v45 + 48) = 0;
      *(v45 + 56) = 0;
      *(v45 + 64) = 0;
      qword_1EE1AFA48 = v45;
      v46 = re::introspectionAllocator(v45);
      v48 = re::introspect_BOOL(1, v47);
      v49 = (*(*v46 + 32))(v46, 72, 8);
      *v49 = 1;
      *(v49 + 8) = "lockRotationZ";
      *(v49 + 16) = v48;
      *(v49 + 24) = 0;
      *(v49 + 32) = 0x8E0000000ALL;
      *(v49 + 40) = 0;
      *(v49 + 48) = 0;
      *(v49 + 56) = 0;
      *(v49 + 64) = 0;
      qword_1EE1AFA50 = v49;
      v50 = re::introspectionAllocator(v49);
      v52 = re::introspect_BOOL(1, v51);
      v53 = (*(*v50 + 32))(v50, 72, 8);
      *v53 = 1;
      *(v53 + 8) = "lockTranslationX";
      *(v53 + 16) = v52;
      *(v53 + 24) = 0;
      *(v53 + 32) = 0x8F0000000BLL;
      *(v53 + 40) = 0;
      *(v53 + 48) = 0;
      *(v53 + 56) = 0;
      *(v53 + 64) = 0;
      qword_1EE1AFA58 = v53;
      v54 = re::introspectionAllocator(v53);
      v56 = re::introspect_BOOL(1, v55);
      v57 = (*(*v54 + 32))(v54, 72, 8);
      *v57 = 1;
      *(v57 + 8) = "lockTranslationY";
      *(v57 + 16) = v56;
      *(v57 + 24) = 0;
      *(v57 + 32) = 0x900000000CLL;
      *(v57 + 40) = 0;
      *(v57 + 48) = 0;
      *(v57 + 56) = 0;
      *(v57 + 64) = 0;
      qword_1EE1AFA60 = v57;
      v58 = re::introspectionAllocator(v57);
      v60 = re::introspect_BOOL(1, v59);
      v61 = (*(*v58 + 32))(v58, 72, 8);
      *v61 = 1;
      *(v61 + 8) = "lockTranslationZ";
      *(v61 + 16) = v60;
      *(v61 + 24) = 0;
      *(v61 + 32) = 0x910000000DLL;
      *(v61 + 40) = 0;
      *(v61 + 48) = 0;
      *(v61 + 56) = 0;
      *(v61 + 64) = 0;
      qword_1EE1AFA68 = v61;
      v62 = re::introspectionAllocator(v61);
      v64 = re::introspect_BOOL(1, v63);
      v65 = (*(*v62 + 32))(v62, 72, 8);
      *v65 = 1;
      *(v65 + 8) = "canSleep";
      *(v65 + 16) = v64;
      *(v65 + 24) = 0;
      *(v65 + 32) = 0x920000000ELL;
      *(v65 + 40) = 0;
      *(v65 + 48) = 0;
      *(v65 + 56) = 0;
      *(v65 + 64) = 0;
      qword_1EE1AFA70 = v65;
      v66 = re::introspectionAllocator(v65);
      v68 = re::introspect_BOOL(1, v67);
      v69 = (*(*v66 + 32))(v66, 72, 8);
      *v69 = 1;
      *(v69 + 8) = "remoteAuthorityAllowed";
      *(v69 + 16) = v68;
      *(v69 + 24) = 0;
      *(v69 + 32) = 0x930000000FLL;
      *(v69 + 40) = 0;
      *(v69 + 48) = 0;
      *(v69 + 56) = 0;
      *(v69 + 64) = 0;
      qword_1EE1AFA78 = v69;
      v70 = re::introspectionAllocator(v69);
      v72 = re::introspect_float(1, v71);
      v73 = (*(*v70 + 32))(v70, 72, 8);
      *v73 = 1;
      *(v73 + 8) = "linearDamping";
      *(v73 + 16) = v72;
      *(v73 + 24) = 0;
      *(v73 + 32) = 0x9400000010;
      *(v73 + 40) = 0;
      *(v73 + 48) = 0;
      *(v73 + 56) = 0;
      *(v73 + 64) = 0;
      qword_1EE1AFA80 = v73;
      v74 = re::introspectionAllocator(v73);
      v76 = re::introspect_float(1, v75);
      v77 = (*(*v74 + 32))(v74, 72, 8);
      *v77 = 1;
      *(v77 + 8) = "angularDamping";
      *(v77 + 16) = v76;
      *(v77 + 24) = 0;
      *(v77 + 32) = 0x9800000011;
      *(v77 + 40) = 0;
      *(v77 + 48) = 0;
      *(v77 + 56) = 0;
      *(v77 + 64) = 0;
      qword_1EE1AFA88 = v77;
      v78 = re::introspectionAllocator(v77);
      v80 = re::introspect_BOOL(1, v79);
      v81 = (*(*v78 + 32))(v78, 72, 8);
      *v81 = 1;
      *(v81 + 8) = "gravityEnabled";
      *(v81 + 16) = v80;
      *(v81 + 24) = 0;
      *(v81 + 32) = 0x9C00000012;
      *(v81 + 40) = 0;
      *(v81 + 48) = 0;
      *(v81 + 56) = 0;
      *(v81 + 64) = 0;
      qword_1EE1AFA90 = v81;
      __cxa_guard_release(&qword_1EE1AF960);
    }
  }

  *(this + 2) = 0x19000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 20;
  *(this + 8) = &qword_1EE1AF9F8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::RigidBodyComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::RigidBodyComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::RigidBodyComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::RigidBodyComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs218RigidBodyComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v82 = v84;
}

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::RigidBodyComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::RigidBodyComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::RigidBodyComponent>::setComponentState(a2, v11, v7, 0);
  }

  return result;
}

BOOL *re::internal::RigidBodyUpdateStagingData::RigidBodyUpdateStagingData(BOOL *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *a1 = a4 != 0;
  if (!a4)
  {
    a1[1] = 1;
    goto LABEL_9;
  }

  if (*(a4 + 32))
  {
    LODWORD(OwnerPeerID) = RESyncableIsAuthoritative();
    v9 = *a1;
    a1[1] = OwnerPeerID;
    v10 = a1 + 1;
    if (!v9 || !OwnerPeerID)
    {
LABEL_21:
      v16 = *(a2 + 120);
      *(a1 + 1) = v16;
      if (v16 != 2)
      {
        goto LABEL_11;
      }

      if (!a3)
      {
        goto LABEL_11;
      }

      if (OwnerPeerID)
      {
        goto LABEL_11;
      }

      v11 = *(a3 + 25);
      if (v11 != 1)
      {
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

  else
  {
    a1[1] = 1;
    v10 = a1 + 1;
  }

  if ((*(a2 + 147) & 1) == 0)
  {
    if (*(a4 + 32))
    {
      OwnerPeerID = RESyncableGetOwnerPeerID();
    }

    else
    {
      if ((*(a4 + 116) & 0x80000000) == 0)
      {
        LOBYTE(OwnerPeerID) = 1;
        goto LABEL_20;
      }

      OwnerPeerID = *(a4 + 64);
    }

    LOBYTE(OwnerPeerID) = OwnerPeerID == 0;
LABEL_20:
    *v10 = OwnerPeerID;
    goto LABEL_21;
  }

LABEL_9:
  v11 = *(a2 + 120);
LABEL_10:
  *(a1 + 1) = v11;
LABEL_11:
  v12 = *(a2 + 124);
  v13 = *(a2 + 272);
  a1[2] = v12 != v13;
  v14 = v12 == v13 && a3 != 0;
  a1[3] = v14;
  return a1;
}

uint64_t std::__function::__func<std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>> re::toUniquePtr<re::RigidBody>(re::RigidBody*,re::Allocator *)::{lambda(re::RigidBody*)#1},std::allocator<std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>> re::toUniquePtr<re::RigidBody>(re::RigidBody*,re::Allocator *)::{lambda(re::RigidBody*)#1}>,void ()(re::RigidBody*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1F5CF7DE8;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>> re::toUniquePtr<re::RigidBody>(re::RigidBody*,re::Allocator *)::{lambda(re::RigidBody*)#1},std::allocator<std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>> re::toUniquePtr<re::RigidBody>(re::RigidBody*,re::Allocator *)::{lambda(re::RigidBody*)#1}>,void ()(re::RigidBody*)>::operator()(uint64_t result, void *a2)
{
  v2 = *a2;
  if (*a2)
  {
    v3 = *(result + 8);
    (**v2)(*a2);
    v4 = *(*v3 + 40);

    return v4(v3, v2);
  }

  return result;
}

uint64_t std::__function::__func<std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>> re::toUniquePtr<re::RigidBody>(re::RigidBody*,re::Allocator *)::{lambda(re::RigidBody*)#1},std::allocator<std::unique_ptr<re::RigidBody,std::function<void ()(re::RigidBody*)>> re::toUniquePtr<re::RigidBody>(re::RigidBody*,re::Allocator *)::{lambda(re::RigidBody*)#1}>,void ()(re::RigidBody*)>::target(uint64_t a1, uint64_t a2)
{
  {
    return a1 + 8;
  }

  else
  {
    return 0;
  }
}

uint64_t std::__function::__value_func<void ()(re::RigidBody *)>::operator=[abi:nn200100](uint64_t a1, uint64_t a2)
{
  std::__function::__value_func<void ()(re::RigidBody *)>::operator=[abi:nn200100](a1);
  v4 = *(a2 + 24);
  if (v4)
  {
    if (v4 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = v4;
      *(a2 + 24) = 0;
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(re::RigidBody *)>::operator=[abi:nn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  *(a1 + 24) = 0;
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

uint64_t re::make::shared::unsafelyInplace<re::ecs2::RigidBodyComponent>(uint64_t a1)
{
  *(a1 + 368) = 0u;
  *(a1 + 384) = 0u;
  *(a1 + 336) = 0u;
  *(a1 + 352) = 0u;
  *(a1 + 304) = 0u;
  *(a1 + 320) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 288) = 0u;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 224) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 16) = 0;
  *(v2 + 24) = 0;
  *v2 = &unk_1F5CD1388;
  *(v2 + 32) = 0;
  *(v2 + 40) = 0;
  *(v2 + 48) = 0;
  *(v2 + 56) = 0x3F80000000000000;
  *(v2 + 64) = vdupq_n_s32(0x3DCCCCCDu);
  *(v2 + 80) = 1065353216;
  *(v2 + 104) = 0;
  *(v2 + 112) = 0;
  *(v2 + 96) = 0;
  *(v2 + 120) = 2;
  *(v2 + 124) = 0;
  *(v2 + 132) = 0;
  *(v2 + 136) = 0;
  *(v2 + 144) = 16842752;
  *(v2 + 148) = 0xBD4CCCCDBCA3D70ALL;
  *(v2 + 156) = 1;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0u;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0u;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0;
  objc_initWeak((v2 + 280), 0);
  *(a1 + 288) = 2;
  *(a1 + 304) = 0;
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 328) = 0x3F80000000000000;
  *(a1 + 384) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  *(a1 + 336) = 0;
  return a1;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs218RigidBodyComponentELNS_17RealityKitReleaseE1EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::UpdateRenderServicesDataSystem::willAddSystemToECSService(re::ecs2::UpdateRenderServicesDataSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 37) = re::ServiceLocator::serviceOrNull<re::ecs2::ClippingService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 38) = re::ServiceLocator::serviceOrNull<re::ecs2::OpacityService>(v3);
  v4 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 39) = re::ServiceLocator::serviceOrNull<re::ecs2::RenderPassGroupService>(v4);
  v5 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 40) = re::ServiceLocator::serviceOrNull<re::ecs2::TintService>(v5);
  v6 = (*(**(this + 5) + 32))(*(this + 5));
  {
    re::introspect<re::ecs2::TrueToneService>(BOOL)::info = re::ecs2::introspect_TrueToneService(0);
  }

  v7 = re::introspect<re::ecs2::TrueToneService>(BOOL)::info;
  re::StringID::invalid(&v20);
  v8 = (*(*v6 + 16))(v6, v7, &v20);
  v9 = v8;
  if (v20)
  {
    if (v20)
    {
    }
  }

  *(this + 41) = v9;
  v10 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 42) = re::ServiceLocator::serviceOrNull<re::ecs2::VisualProxyScopeService>(v10);
  v11 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 43) = re::ServiceLocator::serviceOrNull<re::ecs2::EnvironmentLightingService>(v11);
  v12 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 44) = re::ServiceLocator::serviceOrNull<re::ecs2::LightService>(v12);
  v13 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 45) = re::ServiceLocator::serviceOrNull<re::ecs2::BillboardService>(v13);
  v14 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 46) = re::ServiceLocator::serviceOrNull<re::ecs2::ShadowScopeService>(v14);
  if (re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken != -1)
  {
    dispatch_once(&re::GraphicsFeatureFlags::enableUIShadow(void)::onceToken, &__block_literal_global_22_1);
  }

  if (re::GraphicsFeatureFlags::enableUIShadow(void)::gEnableUIShadow == 1)
  {
    v15 = (*(**(this + 5) + 32))(*(this + 5));
    {
      re::introspect<re::ecs2::UIShadowService>(BOOL)::info = re::ecs2::introspect_UIShadowService(0);
    }

    v16 = re::introspect<re::ecs2::UIShadowService>(BOOL)::info;
    re::StringID::invalid(&v20);
    v17 = (*(*v15 + 16))(v15, v16, &v20);
    v18 = v17;
    if (v20)
    {
      if (v20)
      {
      }
    }

    *(this + 47) = v18;
    if (v18)
    {
      v19 = *(*v18 + 24);

      v19(v18);
    }
  }
}

double re::ecs2::UpdateRenderServicesDataSystem::willRemoveSystemFromECSService(re::ecs2::UpdateRenderServicesDataSystem *this)
{
  v2 = *(this + 47);
  if (v2)
  {
    (*(*v2 + 32))(v2);
  }

  result = 0.0;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 20) = 0u;
  *(this + 21) = 0u;
  *(this + 18) = 0u;
  *(this + 19) = 0u;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  return result;
}

void *re::ecs2::UpdateRenderServicesDataSystem::update(void *result, uint64_t a2, uint64_t a3)
{
  v3 = result[28];
  if (v3 && (*(v3 + 432) & 0x10) != 0)
  {
    v5 = result;
    v6 = result[45];
    if (v6)
    {
      (*(*v6 + 32))(v6);
    }

    v18 = (*(*v5[32] + 24))(v5[32]);
    v7 = v5[38];
    if (v7)
    {
      (*(*v7 + 40))(v7, &v18);
    }

    v8 = v5[39];
    if (v8)
    {
      (*(*v8 + 24))(v8, &v18, v5[5]);
    }

    v9 = v5[40];
    if (v9)
    {
      (*(*v9 + 24))(v9, &v18);
    }

    v10 = v5[41];
    if (v10)
    {
      (*(*v10 + 24))(v10, &v18);
    }

    v11 = v5[43];
    if (v11)
    {
      (*(*v11 + 24))(v11, &v18);
    }

    if (v5[37])
    {
      v12 = v5[34];
      if (v12)
      {
        v17[0] = (*(*v12 + 16))(v12);
        (*(*v5[37] + 40))(v5[37], v5[29], &v18, v17, v5[5]);
      }
    }

    v13 = v5[42];
    if (v13)
    {
      (*(*v13 + 24))(v13);
    }

    v14 = v5[47];
    if (v14)
    {
      (*(*v14 + 16))(v14);
    }

    v15 = v5[44];
    if (v15)
    {
      v16 = *(a3 + 200);
      v17[0] = *(a3 + 216);
      v17[1] = v16;
      (*(*v15 + 72))(v15, v17, v5[29], &v18);
    }

    result = v5[46];
    if (result)
    {
      return (*(*result + 16))(result);
    }
  }

  return result;
}

uint64_t re::ecs2::UpdateRenderServicesDataSystem::willAddSceneToECSService(void *a1, uint64_t a2)
{
  v4 = a1[38];
  if (v4)
  {
    (*(*v4 + 48))(v4, a2);
  }

  v5 = a1[39];
  if (v5)
  {
    (*(*v5 + 72))(v5, a2);
  }

  v6 = a1[40];
  if (v6)
  {
    (*(*v6 + 32))(v6, a2);
  }

  v7 = a1[41];
  if (v7)
  {
    (*(*v7 + 32))(v7, a2);
  }

  v8 = a1[37];
  if (v8)
  {
    (*(*v8 + 48))(v8, a2);
  }

  v9 = a1[42];
  if (v9)
  {
    (*(*v9 + 32))(v9, a2);
  }

  v10 = a1[34];
  if (v10)
  {
    (*(*v10 + 24))(v10, a2);
  }

  v11 = a1[43];
  if (v11)
  {
    (*(*v11 + 32))(v11, a2);
  }

  v12 = a1[45];
  if (v12)
  {
    (*(*v12 + 16))(v12, a2);
  }

  v13 = a1[46];
  if (v13)
  {
    (*(*v13 + 24))(v13, a2);
  }

  result = a1[47];
  if (result)
  {
    v15 = *(*result + 40);

    return v15();
  }

  return result;
}

uint64_t re::ecs2::UpdateRenderServicesDataSystem::willRemoveSceneFromECSService(void *a1, uint64_t a2)
{
  v4 = a1[38];
  if (v4)
  {
    (*(*v4 + 56))(v4, a2);
  }

  v5 = a1[39];
  if (v5)
  {
    (*(*v5 + 80))(v5, a2);
  }

  v6 = a1[40];
  if (v6)
  {
    (*(*v6 + 40))(v6, a2);
  }

  v7 = a1[41];
  if (v7)
  {
    (*(*v7 + 40))(v7, a2);
  }

  v8 = a1[37];
  if (v8)
  {
    (*(*v8 + 56))(v8, a2);
  }

  v9 = a1[42];
  if (v9)
  {
    (*(*v9 + 40))(v9, a2);
  }

  v10 = a1[34];
  if (v10)
  {
    (*(*v10 + 32))(v10, a2);
  }

  v11 = a1[43];
  if (v11)
  {
    (*(*v11 + 40))(v11, a2);
  }

  v12 = a1[45];
  if (v12)
  {
    (*(*v12 + 24))(v12, a2);
  }

  v13 = a1[46];
  if (v13)
  {
    (*(*v13 + 32))(v13, a2);
  }

  result = a1[47];
  if (result)
  {
    v15 = *(*result + 48);

    return v15();
  }

  return result;
}

void *re::ecs2::allocInfo_UpdateRenderServicesDataSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_353, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_353))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1AFAA0, "UpdateRenderServicesDataSystem");
    __cxa_guard_release(&_MergedGlobals_353);
  }

  return &unk_1EE1AFAA0;
}

void re::ecs2::initInfo_UpdateRenderServicesDataSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0xF8A39FED7E88AF6CLL;
  v6[1] = "UpdateRenderServicesDataSystem";
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
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_UpdateRenderServicesDataSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::UpdateRenderServicesDataSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::UpdateRenderServicesDataSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::UpdateRenderServicesDataSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::UpdateRenderServicesDataSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::UpdateRenderServicesDataSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::UpdateRenderServicesDataSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::internal::defaultConstruct<re::ecs2::UpdateRenderServicesDataSystem>(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  a3[22] = 0u;
  a3[23] = 0u;
  a3[20] = 0u;
  a3[21] = 0u;
  a3[18] = 0u;
  a3[19] = 0u;
  a3[16] = 0u;
  a3[17] = 0u;
  a3[14] = 0u;
  a3[15] = 0u;
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
  v3 = re::ecs2::System::System(a3, 1, 1);
  *(v3 + 288) = 0;
  result = 0.0;
  *(v3 + 256) = 0u;
  *(v3 + 272) = 0u;
  *(v3 + 224) = 0u;
  *(v3 + 240) = 0u;
  *v3 = &unk_1F5CF7E78;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  *(v3 + 328) = 0u;
  *(v3 + 344) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::UpdateRenderServicesDataSystem>(_OWORD *a1)
{
  a1[22] = 0u;
  a1[23] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
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
  v1 = re::ecs2::System::System(a1, 1, 1);
  *(v1 + 288) = 0;
  result = 0.0;
  *(v1 + 256) = 0u;
  *(v1 + 272) = 0u;
  *(v1 + 224) = 0u;
  *(v1 + 240) = 0u;
  *v1 = &unk_1F5CF7E78;
  *(v1 + 296) = 0u;
  *(v1 + 312) = 0u;
  *(v1 + 328) = 0u;
  *(v1 + 344) = 0u;
  *(v1 + 360) = 0u;
  *(v1 + 376) = 0;
  return result;
}

void re::ecs2::UpdateRenderServicesDataSystem::~UpdateRenderServicesDataSystem(re::ecs2::UpdateRenderServicesDataSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

re::ecs2::LightGroupStateTracking *re::ecs2::LightGroupStateTracking::LightGroupStateTracking(re::ecs2::LightGroupStateTracking *this)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = re::ecs2::HierarchyStateTracking<unsigned long long>::HierarchyStateTracking(this);
  *v2 = &unk_1F5CF7F08;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  v4[0] = v5;
  v4[1] = 1;
  v5[0] = re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType;
  re::FixedArray<re::ecs2::ComponentTypeBase const*>::operator=((v2 + 304), v4);
  return this;
}

void re::ecs2::LightGroupStateTracking::buildPerEntityStateForDirtyEntityHierarchies(uint64_t a1, uint64_t a2)
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
    v32 = v8;
    do
    {
      v9 = *(v7 + 24 * v4 + 16);
      if (*(a1 + 56))
      {
        v10 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v9 ^ (v9 >> 30))) >> 27));
        v11 = *(*(a1 + 64) + 4 * ((v10 ^ (v10 >> 31)) % *(a1 + 80)));
        if (v11 != 0x7FFFFFFF)
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

          goto LABEL_50;
        }
      }

LABEL_14:
      v49 = 0;
      v13 = *(v9 + 32);
      if (!v13 || (*(v13 + 304) & 0x80) != 0)
      {
        v15 = &v49;
      }

      else
      {
        v48[0] = *(v9 + 32);
        v14 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 56, v48);
        if (!v14)
        {
          while (1)
          {
            v16 = v48[0];
            v17 = *(v48[0] + 32);
            if (!v17 || (*(v17 + 304) & 0x80) != 0)
            {
              break;
            }

            v48[0] = *(v48[0] + 32);
            v18 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 56, v48);
            if (v18)
            {
              v15 = v18;
              goto LABEL_24;
            }
          }

          v15 = &v49;
          goto LABEL_24;
        }

        v15 = v14;
      }

      v16 = v9;
LABEL_24:
      re::StackScratchAllocator::StackScratchAllocator(v48);
      v42[0] = 0;
      v42[1] = 0;
      v43 = 1;
      v45 = 0;
      v46 = 0;
      v44 = 0;
      v47 = 0;
      re::BucketArray<re::ecs2::Entity const*,32ul>::init(v42, v48, 1uLL);
      v35 = 0;
      v36 = 0;
      v37 = 1;
      v39 = 0;
      v40 = 0;
      v38 = 0;
      v41 = 0;
      re::BucketArray<unsigned long long,32ul>::init(&v35, v48, 1uLL);
      *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v42) = v16;
      *re::BucketArray<unsigned long long,32ul>::addUninitialized(&v35) = *v15;
      while (v46)
      {
        v34 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v42, v46 - 1);
        if (!v40)
        {
          re::internal::assertLog(4, v19, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
          _os_crash();
          __break(1u);
          return;
        }

        v20 = *re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v35, v40 - 1);
        re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](v42, --v46);
        ++v47;
        re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v35, --v40);
        ++v41;
        v21 = re::ecs2::EntityComponentCollection::get((v34 + 48), re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (v21 || (v21 = re::ecs2::EntityComponentCollection::get((v9 + 48), re::ecs2::ComponentImpl<re::ecs2::LightGroupComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType)) != 0)
        {
          v20 = *(*(v21 + 16) + 312);
        }

        v50 = 0;
        v51 = 0;
        v52 = 0;
        v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v34 ^ (v34 >> 30))) >> 27));
        re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::findEntry<void *>(a1 + 56, &v34, v22 ^ (v22 >> 31), &v50);
        if (HIDWORD(v51) == 0x7FFFFFFF)
        {
          v23 = re::HashTable<re::ecs2::Entity const*,unsigned long long,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::allocEntry(a1 + 56, v51, v50);
          v24 = v34;
          *(v23 + 8) = v34;
          *(v23 + 16) = v20;
          ++*(a1 + 96);
        }

        else
        {
          v24 = v34;
        }

        v25 = *(v24 + 344);
        if (v25)
        {
          v26 = *(v24 + 360);
          v27 = 8 * v25;
          do
          {
            v28 = *v26++;
            *re::BucketArray<re::ecs2::Entity const*,32ul>::addUninitialized(v42) = v28;
            *re::BucketArray<unsigned long long,32ul>::addUninitialized(&v35) = v20;
            v27 -= 8;
          }

          while (v27);
        }
      }

      v29 = v40;
      if (v40)
      {
        v30 = 0;
        do
        {
          re::BucketArray<re::ecs2::Entity const*,32ul>::operator[](&v35, v30++);
        }

        while (v29 != v30);
      }

      while (v36)
      {
        re::BucketArray<re::CollisionCastHit,10ul>::freeElementBucket(&v35);
      }

      if (v35 && (v37 & 1) == 0)
      {
        (*(*v35 + 40))();
      }

      re::BucketArray<re::ecs2::Entity const*,32ul>::deinit(v42);
      if (v42[0] && (v43 & 1) == 0)
      {
        (*(*v42[0] + 40))();
      }

      re::StackScratchAllocator::~StackScratchAllocator(v48);
      LODWORD(v3) = v32;
      v8 = *(a2 + 32);
      v7 = *(a2 + 16);
LABEL_50:
      if (v8 <= v4 + 1)
      {
        v31 = v4 + 1;
      }

      else
      {
        v31 = v8;
      }

      while (v31 - 1 != v4)
      {
        LODWORD(v4) = v4 + 1;
        if ((*(v7 + 24 * v4 + 8) & 0x80000000) != 0)
        {
          goto LABEL_57;
        }
      }

      LODWORD(v4) = v31;
LABEL_57:
      ;
    }

    while (v4 != v3);
  }
}

uint64_t re::ecs2::LightManager::getOrAddLightContextId(uint64_t a1, uint64_t a2)
{
  if (!*(a1 + 1260))
  {
    v6 = (a1 + 688);
    v7 = *(a1 + 704);
    if (v7)
    {
      v8 = 32 * v7;
      v9 = (a1 + 744);
      v10 = 32 * v7;
      do
      {
        if (*(v9 - 3) == *a2 && *(v9 - 2) == *(a2 + 8))
        {
          return *v9;
        }

        v9 += 16;
        v10 -= 32;
      }

      while (v10);
      v11 = *(a1 + 680);
      *(a1 + 680) = v11 + 1;
      v23 = v11;
      v5 = (a1 + 744);
      v12 = 32 * v7;
      do
      {
        if (*(v5 - 3) == *a2 && *(v5 - 2) == *(a2 + 8))
        {
          return *v5;
        }

        v5 = (v5 + 32);
        v12 -= 32;
      }

      while (v12);
      if ((v7 & 0xFFFFFFF0) != 0)
      {
        if (!*(a1 + 1232))
        {
          v13 = *v6;
          if (!*v6)
          {
          }

          re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1 + 1232, v13, 32);
          v14 = *(a1 + 704);
          if (!v14)
          {
            goto LABEL_24;
          }

          v8 = 32 * v14;
        }

        v15 = (a1 + 720);
        do
        {
          v24 = 0uLL;
          v25 = 0;
          re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v24, a1 + 1232, *v15, *(v15 + 1), *(v15 + 2));
          if (HIDWORD(v24) == 0x7FFFFFFF)
          {
            v16 = re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1 + 1232, DWORD2(v24), v24);
            v17 = *v15;
            *(v16 + 24) = *(v15 + 2);
            *(v16 + 8) = v17;
            *(v16 + 32) = *(v15 + 12);
            ++*(a1 + 1272);
          }

          v15 += 2;
          v8 -= 32;
        }

        while (v8);
LABEL_24:
        *(a1 + 704) = 0;
        ++*(a1 + 712);
        goto LABEL_4;
      }

      v24 = *a2;
      v25 = *(a2 + 16);
      if (v7 >= 0x10)
      {
LABEL_33:
        re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) Capacity limit reached. DynamicInlineArray<T,N> cannot be resized.", "false", "ensureCapacity", 277);
        result = _os_crash();
        __break(1u);
        return result;
      }
    }

    else
    {
      v11 = *(a1 + 680);
      *(a1 + 680) = v11 + 1;
      v24 = *a2;
      v25 = *(a2 + 16);
    }

    v19 = a1 + 32 * v7;
    *(v19 + 736) = v25;
    *(v19 + 720) = v24;
    *(v19 + 744) = v11;
    v20 = *(a1 + 704);
    ++*(a1 + 712);
    v21 = __CFADD__(v20, 1);
    v22 = v20 + 1;
    *(a1 + 704) = v22;
    if (!v21)
    {
      v5 = &v6[4 * v22 + 3];
      return *v5;
    }

    re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < m_size", "operator[]", 381, -1, 0);
    _os_crash();
    __break(1u);
    goto LABEL_33;
  }

  re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v24, a1 + 1232, *a2, *(a2 + 8), *(a2 + 16));
  if (HIDWORD(v24) == 0x7FFFFFFF)
  {
    v4 = *(a1 + 680);
    *(a1 + 680) = v4 + 1;
    v23 = v4;
LABEL_4:
    v5 = re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::addNew(a1 + 1232, a2, &v23);
    return *v5;
  }

  v9 = (*(a1 + 1248) + 40 * HIDWORD(v24) + 32);
  return *v9;
}

void re::ecs2::LightManager::update(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(a1 + 336) = a4;
  re::ecs2::HierarchyStateTracking<unsigned long long>::updatePerEntityStateData(a1 + 8, 1);
  *(a1 + 336) = 0;
}

void re::ecs2::LightGroupStateTracking::~LightGroupStateTracking(re::ecs2::LightGroupStateTracking *this)
{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);

  re::ecs2::HierarchyStateTracking<unsigned long long>::~HierarchyStateTracking(this);
}

{
  re::FixedArray<CoreIKTransform>::deinit(this + 38);
  re::ecs2::HierarchyStateTracking<unsigned long long>::~HierarchyStateTracking(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::LightManager::~LightManager(re::ecs2::LightManager *this)
{
  re::ecs2::LightManager::~LightManager(this);

  JUMPOUT(0x1E6906520);
}

{
  *(this + 162) = 0;
  ++*(this + 326);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 180);
  *(this + 160) = 0;
  *(this + 322) = 0;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 180);
  *(this + 162) = 0;
  ++*(this + 326);
  *(this + 88) = 0;
  ++*(this + 178);
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 154);
  *(this + 86) = 0;
  *(this + 174) = 0;
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 154);
  *(this + 88) = 0;
  ++*(this + 178);
  *(this + 45) = 0;
  ++*(this + 92);
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 79);
  *(this + 43) = 0;
  *(this + 88) = 0;
  re::HashTable<re::internal::SerializeFuncKey,BOOL (*)(re::Serializer<re::EncoderOPACK<re::DynamicArrayBufferedOutputStream>> &,char const*,int,void *,re::TypeInfo const&,re::TypeInfo const&,BOOL),re::internal::HashSerializeFuncKey,re::EqualTo<re::internal::SerializeFuncKey>,false,true>::deinit(this + 79);
  *(this + 45) = 0;
  ++*(this + 92);
  re::FixedArray<CoreIKTransform>::deinit(this + 39);
  re::ecs2::HierarchyStateTracking<unsigned long long>::~HierarchyStateTracking(this + 1);
}

uint64_t re::ecs2::LightManager::lightGroupIdForEntity(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(a1 + 64, &v3);
  if (result)
  {
    return *result;
  }

  return result;
}

const re::ecs2::Entity **re::ecs2::LightManager::lightContextIdForEntity(re::ecs2::LightManager *this, const re::ecs2::Entity *a2)
{
  v8 = a2;
  v3 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 64, &v8);
  if (v3)
  {
    v4 = *v3;
  }

  else
  {
    v4 = 0;
  }

  v8 = v4;
  if (*(this + 165))
  {
    result = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(this + 632, &v8);
    if (!result)
    {
      return result;
    }

    return *result;
  }

  v6 = *(this + 45);
  if (v6)
  {
    v7 = 16 * v6;
    for (result = (this + 384); *(result - 1) != v4; result += 2)
    {
      v7 -= 16;
      if (!v7)
      {
        return 0;
      }
    }

    return *result;
  }

  return 0;
}

unsigned __int16 *re::ecs2::LightManager::lightContextIdForEntityWithWorldRoot(re::ecs2::LightManager *this, const re::ecs2::Entity *a2, uint64_t a3)
{
  v12 = a3;
  v13 = a2;
  v5 = re::HashTable<void *,unsigned int,re::Hash<void *>,re::EqualTo<void *>,true,false>::tryGet(this + 64, &v13);
  if (v5)
  {
    v6 = *v5;
  }

  else
  {
    v6 = 0;
  }

  if (*(this + 315))
  {
    re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v13, this + 1232, v6, a3, (a3 + (v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9) ^ v6);
    if (v14 != 0x7FFFFFFF)
    {
      result = (*(this + 156) + 40 * v14 + 32);
      return *result;
    }
  }

  else
  {
    v8 = *(this + 88);
    if (v8)
    {
      v9 = 32 * v8;
      result = (this + 744);
      while (*(result - 3) != v6 || *(result - 2) != a3)
      {
        result += 16;
        v9 -= 32;
        if (!v9)
        {
          goto LABEL_12;
        }
      }

      return *result;
    }
  }

LABEL_12:
  if (*(this + 367))
  {
    result = re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(this + 1440, &v12);
    if (!result)
    {
      return result;
    }
  }

  else
  {
    v10 = *(this + 162);
    if (!v10)
    {
      return 0;
    }

    v11 = 16 * v10;
    for (result = (this + 1320); *(result - 1) != a3; result += 8)
    {
      v11 -= 16;
      if (!v11)
      {
        return 0;
      }
    }
  }

  return *result;
}

uint64_t re::HashTable<unsigned long long,unsigned short,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,false,false>::tryGet(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<unsigned long,re::RenderGraphData *,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::findEntry<unsigned long>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 24 * v6 + 16;
  }
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = *a2;
  v6 = 0x7FFFFFFF;
  if (!*a2)
  {
    goto LABEL_16;
  }

  v5 = a5 % *(a2 + 24);
  v7 = *(*(a2 + 8) + 4 * v5);
  if (v7 == 0x7FFFFFFF)
  {
    goto LABEL_16;
  }

  v8 = *(a2 + 16);
  v9 = v8 + 40 * v7;
  v11 = *(v9 + 8);
  v10 = *(v9 + 16);
  if (v11 == a3 && v10 == a4)
  {
    v6 = *(*(a2 + 8) + 4 * v5);
LABEL_16:
    v7 = 0x7FFFFFFF;
    goto LABEL_17;
  }

  v13 = *(v8 + 40 * v7) & 0x7FFFFFFF;
  v6 = 0x7FFFFFFF;
  if (v13 != 0x7FFFFFFF)
  {
    v6 = 0x7FFFFFFF;
    while (1)
    {
      v14 = v13;
      v15 = v8 + 40 * v13;
      v17 = *(v15 + 8);
      v16 = *(v15 + 16);
      if (v17 == a3 && v16 == a4)
      {
        break;
      }

      v13 = *(v8 + 40 * v14) & 0x7FFFFFFF;
      v7 = v14;
      if (v13 == 0x7FFFFFFF)
      {
        v7 = v14;
        goto LABEL_17;
      }
    }

    v6 = v14;
  }

LABEL_17:
  *result = a5;
  *(result + 8) = v5;
  *(result + 12) = v6;
  *(result + 16) = v7;
  return result;
}

uint64_t *re::BucketArray<unsigned long long,32ul>::init(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(a1, a3);
  *(a1 + 16) += 2;
  *(a1 + 40) = 0;
  result = re::BucketArray<unsigned long long,32ul>::setBucketsCapacity(a1, a3);
  ++*(a1 + 48);
  return result;
}

uint64_t *re::BucketArray<unsigned long long,32ul>::setBucketsCapacity(uint64_t *result, unint64_t a2)
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

uint64_t re::BucketArray<unsigned long long,32ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 32 * v3)
  {
    re::BucketArray<unsigned long long,32ul>::setBucketsCapacity(a1, (v2 + 32) >> 5);
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

uint64_t re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::addNew(uint64_t a1, __int128 *a2, _WORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::findEntry<re::LightGroupInWorldRoot>(&v9, a1, *a2, *(a2 + 1), *(a2 + 2));
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 32;
  }

  v6 = re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1, v10, v9);
  v7 = *a2;
  *(v6 + 24) = *(a2 + 2);
  *(v6 + 8) = v7;
  *(v6 + 32) = *a3;
  result = v6 + 32;
  ++*(a1 + 40);
  return result;
}

uint64_t re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      v7 = *(a1 + 28);
      v8 = 2 * v7;
      v9 = *a1;
      if (*a1)
      {
        if (v8)
        {
          v10 = v4 == v8;
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
            v17 = (v13 + 32);
            do
            {
              if ((*(v17 - 8) & 0x80000000) != 0)
              {
                v18 = re::HashTable<re::LightGroupInWorldRoot,unsigned short,re::Hash<re::LightGroupInWorldRoot>,re::EqualTo<re::LightGroupInWorldRoot>,false,false>::allocEntry(a1, *(v17 - 1) % *(a1 + 24));
                v19 = *(v17 - 12);
                *(v18 + 24) = *(v17 - 1);
                *(v18 + 8) = v19;
                *(v18 + 32) = *v17;
              }

              v17 += 20;
              --v16;
            }

            while (v16);
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
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v4);
  }

  else
  {
    v20 = *(a1 + 16);
    v21 = *(v20 + 40 * v4);
    *(a1 + 36) = v21 & 0x7FFFFFFF;
  }

  v23 = 40 * v4;
  *(v20 + v23) = v21 | 0x80000000;
  v24 = *(a1 + 8);
  *(v20 + v23) = *(v24 + 4 * a2) | 0x80000000;
  *(v24 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v20 + 40 * v4;
}

_anonymous_namespace_ *re::VideoManager::init(uint64_t *a1, uint64_t a2)
{
  v14[5] = *MEMORY[0x1E69E9840];
  a1[28] = a2;
  v6 = re::ServiceLocator::serviceOrNull<re::EventBus>(a2);
  result = re::ServiceLocator::serviceOrNull<re::ecs2::ThrottleService>(a1[28]);
  a1[39] = result;
  if (v6)
  {
    v8 = re::globalAllocators(result)[2];
    v14[0] = &unk_1F5CF8020;
    v14[1] = a1;
    v14[3] = v8;
    v14[4] = v14;
    a1[29] = re::EventBus::subscribe<re::ecs2::Entity,RENetworkAssetAddedEvent>(v6, 0, v14, 0, 0);
    a1[30] = v9;
    v10 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable(v14);
    v11 = re::globalAllocators(v10)[2];
    v13[0] = &unk_1F5CF8088;
    v13[1] = a1;
    v13[3] = v11;
    v13[4] = v13;
    a1[31] = re::EventBus::subscribe<re::ecs2::Entity,RENetworkAssetRemovedEvent>(v6, 0, v13, 0, 0);
    a1[32] = v12;
    return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable(v13);
  }

  return result;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RENetworkAssetAddedEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

uint64_t re::EventBus::subscribe<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::EventBus *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v14[8] = *MEMORY[0x1E69E9840];
  Type = re::EventBus::getTypeId<RENetworkAssetRemovedEvent>();
  EventInfo = re::EventBus::addOrGetEventInfo(a1, Type);
  re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(a3, a5, v14);
  v12 = re::EventBus::EventInfo::addSubscription(EventInfo, v14, a2, a4);
  re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(v14);
  return v12;
}

re *re::VideoManager::deinit(re::VideoManager *this)
{
  re::VideoProcessor::deinit(this + 34);
  result = *(this + 28);
  if (result)
  {
    result = re::ServiceLocator::serviceOrNull<re::EventBus>(result);
    if (result)
    {
      v3 = result;
      re::EventBus::unsubscribe(result, *(this + 29), *(this + 30));
      result = re::EventBus::unsubscribe(v3, *(this + 31), *(this + 32));
    }
  }

  *(this + 28) = 0;
  v4 = *(this + 38);
  if (v4)
  {
    v5 = re::globalAllocators(result)[2];
    re::VideoPipelineProcessor::~VideoPipelineProcessor(v4);
    result = (*(*v5 + 40))(v5, v4);
    *(this + 38) = 0;
  }

  v6 = *(this + 37);
  if (v6)
  {
    v7 = re::globalAllocators(result)[2];

    result = (*(*v7 + 40))(v7, v6);
    *(this + 37) = 0;
  }

  return result;
}

void re::VideoManager::~VideoManager(re::VideoManager *this)
{
  re::VideoManager::deinit(this);
  re::VideoProcessor::~VideoProcessor(this + 34);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 22);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 16);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 10);
  re::AssetHandle::~AssetHandle((this + 56));
  re::AssetHandle::~AssetHandle((this + 32));
  re::AssetHandle::~AssetHandle((this + 8));
}

{
  re::VideoManager::~VideoManager(this);

  JUMPOUT(0x1E6906520);
}

void re::VideoManager::addActiveVideoAsset(re::VideoManager *this, uint64_t a2)
{
  v12 = a2;
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(this + 176, &v12);
  v3 = *(this + 28);
  if (v3)
  {
    v4 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(v3);
    if (v4)
    {
      v5 = (*(*v4 + 40))(v4);
      re::ecs2::SystemRegistry::getSystem<re::ecs2::VideoComponentSystem>(v5, &v11);
      v6 = v11;
      if (v11)
      {
        v7 = *(v11 + 200);
        if (!v7)
        {
          goto LABEL_8;
        }

        v8 = *(v11 + 216);
        v9 = 8 * v7;
        do
        {
          v10 = *v8++;
          re::ecs2::System::queueToRun(v11, v10, 0.0);
          v9 -= 8;
        }

        while (v9);
        v6 = v11;
        if (v11)
        {
LABEL_8:
        }
      }
    }
  }
}

void *re::ecs2::SystemRegistry::getSystem<re::ecs2::VideoComponentSystem>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = &unk_1EE187000;
  {
    v8 = a2;
    v9 = a1;
    v3 = &unk_1EE187000;
    v7 = v6;
    a2 = v8;
    a1 = v9;
    if (v7)
    {
      re::introspect<re::ecs2::VideoComponentSystem>(BOOL)::info = re::ecs2::introspect_VideoComponentSystem(0);
      v3 = &unk_1EE187000;
      a2 = v8;
      a1 = v9;
    }
  }

  v4 = (v3[101] + 32);

  return re::ecs2::SystemRegistry::getSystem(a1, v4, a2);
}

void re::VideoManager::loadVideoMaterialIfNeeded(re::VideoManager *this, re::AssetManager *a2)
{
  if (a2)
  {
    re::AssetManager::assetHandle(a2, "engine:videoMaterial.rematerial", &v8);
    v4 = *(this + 8);
    v3 = (this + 8);
    *v3 = v8;
    v8 = v4;
    v5 = *(v3 + 2);
    *(v3 + 2) = v9;
    v9 = v5;
    re::AssetHandle::~AssetHandle(&v8);
    v6 = *(v3 + 1);
    if (v6)
    {
      v7 = atomic_load((v6 + 896));
      if (v7 != 2)
      {
        re::AssetHandle::loadAsync(v3);
      }
    }
  }
}

void re::VideoManager::loadDRMTextureIfNeeded(re::VideoManager *this, re::AssetManager *a2)
{
  if (a2)
  {
    re::AssetManager::assetHandle(a2, "engine:drm_icon.png", &v8);
    v4 = *(this + 2);
    v3 = (this + 32);
    *v3 = v8;
    v8 = v4;
    v5 = *(v3 + 2);
    *(v3 + 2) = v9;
    v9 = v5;
    re::AssetHandle::~AssetHandle(&v8);
    v6 = *(v3 + 1);
    if (v6)
    {
      v7 = atomic_load((v6 + 896));
      if (v7 != 2)
      {
        re::AssetHandle::loadAsync(v3);
      }
    }
  }
}

void re::VideoManager::initializeVideoProcessorIfNeeded(re::VideoManager *this, re::RenderManager *a2)
{
  if (*(this + 34))
  {
    return;
  }

  v24 = v2;
  v25 = v3;
  if (!a2)
  {
    v18 = *re::videoLogObjects(this);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v20) = 0;
    v19 = "Unable to initialize RE Video Processor. The given RenderManager is not valid.";
    goto LABEL_19;
  }

  v5 = *(a2 + 6);
  if (!v5)
  {
    v18 = *re::videoLogObjects(this);
    if (!os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      return;
    }

    LOWORD(v20) = 0;
    v19 = "Unable to initialize RE Video Processor. The given ShaderManager is not valid.";
LABEL_19:
    _os_log_error_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_ERROR, v19, &v20, 2u);
    return;
  }

  v23 = *(a2 + 26);
  v22 = v5[45];
  re::ShaderManager::defaultBinaryArchive(v5, &v21);
  re::VideoProcessor::init((this + 272));
  if (v21)
  {

    v21 = 0;
  }

  v8 = re::VideoDefaults::pipelineEnabled(v7);
  if (v8)
  {
    v9 = *(this + 38);
    if (!v9)
    {
      v10 = re::globalAllocators(v8);
      v11 = (*(*v10[2] + 32))(v10[2], 40, 8);
      *v11 = 0;
      re::VideoAutoCounter::VideoAutoCounter((v11 + 1));
    }

    v12 = *(a2 + 26);
    v13 = v5[45];
    re::ShaderManager::defaultBinaryArchive(v5, &v20);
    v14 = v20;
    re::VideoPipelineProcessor::init(v9, v12, v13, v20);
    if (v14)
    {
    }

    if (!*(this + 37))
    {
      v16 = re::globalAllocators(v15);
      v17 = (*(*v16[2] + 32))(v16[2], 80, 8);
      *v17 = 0u;
      v17[1] = 0u;
      v17[2] = 0u;
      v17[3] = 0u;
      v17[4] = 0u;
      *(v17 + 4) = 16908802;
      *(this + 37) = v17;
    }

    objc_storeStrong(*(this + 37), *(a2 + 26));
    objc_storeStrong((*(this + 37) + 8), v5[45]);
  }
}

uint64_t re::VideoManager::pipelineProcessor(re::VideoManager *this)
{
  if (!*(this + 38))
  {
    v1 = re::globalAllocators(this);
    v2 = (*(*v1[2] + 32))(v1[2], 40, 8);
    *v2 = 0;
    re::VideoAutoCounter::VideoAutoCounter((v2 + 1));
  }

  return *(this + 38);
}

double re::VideoManager::globalContext(re::VideoManager *this)
{
  if (!*(this + 37))
  {
    v2 = re::globalAllocators(0);
    v3 = (*(*v2[2] + 32))(v2[2], 80, 8);
    result = 0.0;
    *v3 = 0u;
    v3[1] = 0u;
    v3[2] = 0u;
    v3[3] = 0u;
    v3[4] = 0u;
    *(v3 + 4) = 16908802;
    *(this + 37) = v3;
  }

  return result;
}

uint64_t re::internal::Callable<re::VideoManager::init(re::ServiceLocator const*)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 8);
  v5 = a3[1];
  v6 = re::ServiceLocator::serviceOrNull<re::AssetService>(*(v4 + 224));
  if (v6)
  {
    v6 = (*(*v6 + 344))(v6);
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = a3[2];
  if (v8)
  {
    for (i = 0; i != v8; ++i)
    {
      v10 = *(v5 + 8 * i);
      if (*(v10 + 144))
      {
        v11 = *(v10 + 152);
      }

      else
      {
        v11 = (v10 + 145);
      }

      v12 = re::VideoAsset::assetType(v6);
      v6 = strcmp(v11, *v12);
      if (!v6)
      {
        if (!v7 || (v6 = (*(*v7 + 112))(v7, *a3), (v6 & 1) == 0))
        {
          v20 = *a3;
          re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(v4 + 80, &v20);
          v6 = re::ServiceLocator::serviceOrNull<re::ecs2::ECSService>(*(v4 + 224));
          if (v6)
          {
            v13 = (*(*v6 + 40))(v6);
            v6 = re::ecs2::SystemRegistry::getSystem<re::ecs2::VideoComponentSystem>(v13, &v20);
            v14 = v20;
            if (v20)
            {
              v15 = *(v20 + 200);
              if (!v15)
              {
                goto LABEL_20;
              }

              v16 = *(v20 + 216);
              v17 = 8 * v15;
              do
              {
                v18 = *v16++;
                re::ecs2::System::queueToRun(v20, v18, 0.0);
                v17 -= 8;
              }

              while (v17);
              v14 = v20;
              if (v20)
              {
LABEL_20:
              }
            }
          }
        }
      }
    }
  }

  return 0;
}

void *re::internal::Callable<re::VideoManager::init(re::ServiceLocator const*)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8020;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::VideoManager::init(re::ServiceLocator const*)::$_0,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8020;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t re::internal::Callable<re::VideoManager::init(re::ServiceLocator const*)::$_1,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator()(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = a3[2];
  if (v3)
  {
    v5 = a3[1];
    v6 = *(a1 + 8);
    do
    {
      v7 = *v5;
      if (*(*v5 + 144))
      {
        v8 = *(v7 + 152);
      }

      else
      {
        v8 = (v7 + 145);
      }

      v9 = re::VideoAsset::assetType(a1);
      a1 = strcmp(v8, *v9);
      if (!a1)
      {
        v11 = *a3;
        a1 = re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::remove(v6 + 80, &v11);
      }

      v5 += 8;
      --v3;
    }

    while (v3);
  }

  return 0;
}

void *re::internal::Callable<re::VideoManager::init(re::ServiceLocator const*)::$_1,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::cloneInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8088;
  a2[1] = v2;
  return a2;
}

void *re::internal::Callable<re::VideoManager::init(re::ServiceLocator const*)::$_1,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::moveInto(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF8088;
  a2[1] = v2;
  return a2;
}

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable(uint64_t a1))(void)
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

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CF80F0;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CF8148;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable(v8);
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable(a1);
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

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF80F0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF80F0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF80F0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF80F0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF8148;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF8148;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF8148;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetAddedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF8148;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetAddedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t (***re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>@<X0>(uint64_t a1@<X2>, char a2@<W4>, void *a3@<X8>))(void)
{
  v11 = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 24);
  v10 = 0;
  if (a2)
  {
    v6 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v6)[2];
    a3[7] = 0;
    v5 = &unk_1F5CF81A0;
  }

  else
  {
    v4 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>(v8, a1);
    a3[6] = re::globalAllocators(v4)[2];
    a3[7] = 0;
    v5 = &unk_1F5CF81F8;
  }

  *a3 = v5;
  a3[4] = v9;
  a3[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>((a3 + 1), v8);
  a3[7] = a3;
  return re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable(v8);
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable(a1);
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

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF81A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF81A0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
  return 1;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF81A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#1},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF81A0;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF81F8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF81F8;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF81F8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,RENetworkAssetRemovedEvent>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF81F8;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,RENetworkAssetRemovedEvent const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(uint64_t a1, int a2, unsigned __int8 *a3)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  *(a1 + 104) = 10;
  *(a1 + 107) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 240) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 261) = 0;
  re::ecs2::SerializedMaterialParameter::setValue(a1, a2, a3);
  return a1;
}

void re::ecs2::SerializedMaterialParameter::setValue(unsigned __int8 *a1, int a2, unsigned __int8 *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  if (a2 > 6)
  {
    v5 = (a2 - 7);
    if (v5 > 0x39)
    {
LABEL_6:
      if (a2 != 128 && a2 != 192)
      {
        return;
      }

LABEL_17:
      v7 = *re::graphicsLogObjects(a1);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        v8 = *a1;
        v9[0] = 67109120;
        v9[1] = v8;
        _os_log_error_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_ERROR, "Cannot memcpy data in SerializedMaterialParameter for parameter type %hhu", v9, 8u);
      }

      return;
    }

    if (((1 << (a2 - 7)) & 0xE000E006000) == 0 && ((1 << (a2 - 7)) & 0xF) == 0)
    {
      if (v5 == 57)
      {
        goto LABEL_17;
      }

      goto LABEL_6;
    }

    goto LABEL_10;
  }

  if (a2 > 2)
  {
    goto LABEL_10;
  }

  switch(a2)
  {
    case 0:
      goto LABEL_17;
    case 1:
LABEL_10:

      memcpy(a1 + 16, a3, v6);
      return;
    case 2:
      a1[16] = *a3;
      break;
  }
}

uint64_t re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(uint64_t a1, char a2, re::AssetHandle *a3)
{
  *a1 = 0;
  *(a1 + 88) = 0;
  *(a1 + 96) = 0;
  *(a1 + 80) = 0;
  v5 = a1 + 80;
  *(a1 + 104) = 10;
  *(a1 + 107) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  *(a1 + 128) = 0;
  *(a1 + 136) = 0;
  *(a1 + 144) = 0;
  *(a1 + 152) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 176) = 0;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  *(a1 + 240) = 0;
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 232) = 0;
  *(a1 + 224) = 0;
  *(a1 + 248) = 0;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0;
  *(a1 + 256) = 0;
  *(a1 + 261) = 0;
  re::AssetHandle::AssetHandle(v7, a3);
  *a1 = a2;
  re::AssetHandle::operator=(v5, v7);
  re::AssetHandle::~AssetHandle(v7);
  return a1;
}

uint64_t re::ecs2::SerializedMaterialParameter::setValue(_BYTE *a1, char a2, uint64_t *a3)
{
  *a1 = a2;
  v3 = (a1 + 208);
  re::DynamicArray<BOOL>::DynamicArray(v5, a3);
  re::DynamicArray<re::internal::DeferredUnregister *>::operator=(v3, v5);
  result = v5[0];
  if (v5[0])
  {
    if (v5[4])
    {
      return (*(*v5[0] + 40))();
    }
  }

  return result;
}

uint64_t anonymous namespace::calculateByteSize(int a1)
{
  if (a1 > 47)
  {
    if (a1 <= 63)
    {
      switch(a1)
      {
        case '0':
          return 16;
        case '1':
          return 48;
        case '2':
          return 64;
      }
    }

    return 0;
  }

  result = 1;
  switch(a1)
  {
    case 1:
    case 3:
    case 7:
      result = 4;
      break;
    case 2:
      return result;
    case 4:
    case 8:
    case 32:
      result = 8;
      break;
    case 5:
    case 6:
    case 9:
    case 10:
    case 33:
    case 34:
      return 16;
    case 20:
    case 21:
      result = 20;
      break;
    default:
      return 0;
  }

  return result;
}

uint64_t re::ecs2::SerializedMaterialParameter::asSampler(uint64_t this, uint64_t a2)
{
  *this = *(a2 + 104);
  v2 = *(a2 + 105);
  *(this + 1) = v2;
  if (v2 == 1)
  {
    *(this + 2) = *(a2 + 106);
  }

  v3 = *(a2 + 107);
  *(this + 3) = v3;
  if (v3 == 1)
  {
    *(this + 4) = *(a2 + 108);
  }

  v4 = *(a2 + 112);
  *(this + 8) = v4;
  if (v4 == 1)
  {
    *(this + 12) = *(a2 + 116);
  }

  v5 = *(a2 + 120);
  *(this + 16) = v5;
  if (v5 == 1)
  {
    *(this + 20) = *(a2 + 124);
  }

  v6 = *(a2 + 128);
  *(this + 24) = v6;
  if (v6 == 1)
  {
    *(this + 28) = *(a2 + 132);
  }

  v7 = *(a2 + 136);
  *(this + 32) = v7;
  if (v7 == 1)
  {
    *(this + 36) = *(a2 + 140);
  }

  v8 = *(a2 + 144);
  *(this + 40) = v8;
  if (v8 == 1)
  {
    *(this + 44) = *(a2 + 148);
  }

  v9 = *(a2 + 152);
  *(this + 48) = v9;
  if (v9 == 1)
  {
    *(this + 52) = *(a2 + 156);
  }

  v10 = *(a2 + 160);
  *(this + 56) = v10;
  if (v10 == 1)
  {
    *(this + 60) = *(a2 + 164);
  }

  v11 = *(a2 + 168);
  *(this + 64) = v11;
  if (v11 == 1)
  {
    *(this + 68) = *(a2 + 172);
  }

  v12 = *(a2 + 176);
  *(this + 72) = v12;
  if (v12 == 1)
  {
    *(this + 76) = *(a2 + 180);
  }

  v13 = *(a2 + 184);
  *(this + 80) = v13;
  if (v13 == 1)
  {
    *(this + 84) = *(a2 + 188);
  }

  v14 = *(a2 + 192);
  *(this + 88) = v14;
  if (v14 == 1)
  {
    *(this + 96) = *(a2 + 200);
  }

  return this;
}

re::DynamicString *re::ecs2::SerializedMaterialParameter::toString(re::ecs2::SerializedMaterialParameter *this, unsigned __int8 *a2)
{
  v2 = a2;
  v3 = this;
  v4 = 0;
  v5 = *a2;
  if (*a2 <= 6u)
  {
    if (*a2 > 2u)
    {
      goto LABEL_7;
    }

    if (*a2)
    {
      v7 = 0;
      if (v5 == 1)
      {
LABEL_8:
        v8 = 2;
        v9 = 1;
        if (*a2 <= 0x14u)
        {
          v10 = 3;
          if (*a2 > 7u)
          {
            if (*a2 <= 9u)
            {
              if (v5 != 8)
              {
                goto LABEL_89;
              }

              goto LABEL_46;
            }

            if (v5 != 10)
            {
              if (v5 == 20)
              {
                v9 = 4;
                v8 = 5;
                v13 = 1;
LABEL_47:
                v14 = v13 * v9;
                *this = 0u;
                *(this + 1) = 0u;
                re::DynamicString::setCapacity(v3, 0);
                if (v13 * v9 != 1)
                {
                  re::DynamicString::append(v3, "[", 1uLL);
                }

                v15 = 0;
                v36 = v5 & 0xFE;
                v30 = v9 - 1;
                v28 = 4 * v8;
                v29 = v9;
                v16 = 1;
                v17 = 16;
                v31 = v13;
                v32 = v9;
                do
                {
                  v34 = v16;
                  v35 = v15;
                  v33 = v17;
                  v19 = v29;
                  v18 = v30;
                  do
                  {
                    if (v7)
                    {
                      if (v4)
                      {
                        result = re::DynamicString::appendf(v3, "%uu");
                      }

                      else
                      {
                        result = re::DynamicString::appendf(v3, "%di");
                      }
                    }

                    else if (v36 != 20 || v18)
                    {
                      result = re::DynamicString::appendf(v3, "%ff");
                    }

                    else
                    {
                      v20 = v2[32];
                      v21 = v7;
                      v22 = v2;
                      v23 = v4;
                      v24 = re::ColorHelpers::getColorGamutSerializationLiteral(re::ColorGamut const&)::kGamutToLiterals[v20];
                      v25 = strlen(v24);
                      v26 = v24;
                      v4 = v23;
                      v2 = v22;
                      v7 = v21;
                      result = re::DynamicString::append(v3, v26, v25);
                    }

                    if (v16 < v14)
                    {
                      result = re::DynamicString::appendf(v3, ", ");
                    }

                    --v18;
                    v17 += 4;
                    ++v16;
                    --v19;
                  }

                  while (v19);
                  v15 = v35 + 1;
                  v17 = v33 + v28;
                  v16 = v34 + v32;
                }

                while (v35 + 1 != v31);
                if (*v2 == 48)
                {
                  result = re::DynamicString::append(v3, ", matrix", 8uLL);
                }

                if (v14 != 1)
                {

                  return re::DynamicString::append(v3, "]", 1uLL);
                }

                return result;
              }

              goto LABEL_42;
            }

            goto LABEL_37;
          }

          if (v5 != 4)
          {
            if (v5 == 5)
            {
              goto LABEL_89;
            }

            if (v5 != 6)
            {
              goto LABEL_42;
            }

LABEL_37:
            v8 = 4;
          }

LABEL_46:
          v13 = 1;
          v9 = v8;
          goto LABEL_47;
        }

        if (*a2 <= 0x21u)
        {
          if (v5 == 21)
          {
            v8 = 5;
            goto LABEL_46;
          }

          if (v5 == 32)
          {
            goto LABEL_46;
          }

          if (v5 != 33)
          {
            goto LABEL_42;
          }
        }

        else
        {
          if (*a2 <= 0x30u)
          {
            if (v5 != 34 && v5 != 48)
            {
              goto LABEL_42;
            }

            goto LABEL_37;
          }

          if (v5 != 49)
          {
            if (v5 == 50)
            {
              v8 = 16;
              goto LABEL_46;
            }

LABEL_42:
            if (v5 <= 0x32)
            {
              if (((1 << v5) & 0x50005002005DELL) != 0)
              {
                v8 = v9;
                goto LABEL_46;
              }

              if (v5 == 49)
              {
                v8 = 4;
                v13 = 3;
                goto LABEL_47;
              }
            }

            v10 = v9;
LABEL_89:
            v8 = 4;
            v13 = 1;
            v9 = v10;
            goto LABEL_47;
          }
        }

        v9 = 3;
        goto LABEL_42;
      }

      if (a2[16])
      {
        v11 = "true";
      }

      else
      {
        v11 = "false";
      }
    }

    else
    {
      *this = 0u;
      *(this + 1) = 0u;

      return re::DynamicString::setCapacity(v3, 0);
    }
  }

  else
  {
    v6 = (v5 - 7);
    if (v6 > 0x39)
    {
      goto LABEL_92;
    }

    v7 = 0;
    if (((1 << (v5 - 7)) & 0xE000E006000) != 0)
    {
      goto LABEL_8;
    }

    if (((1 << (v5 - 7)) & 0xF) != 0)
    {
      v4 = 1;
LABEL_7:
      v7 = 1;
      goto LABEL_8;
    }

    if (v6 == 57)
    {
      *this = 0u;
      *(this + 1) = 0u;
      re::DynamicString::setCapacity(v3, 0);
      v38[0] = 0;
      result = re::AssetSerializationScheme::commonCodingKey(v3, (v2 + 80), 0xF, v38);
      if (v38[0] == 1)
      {
        if (v41)
        {
          if (BYTE8(v41))
          {
            (*(*v41 + 40))();
          }

          v41 = 0u;
          v42 = 0u;
        }

        result = v39;
        if (v39 && (v40 & 1) != 0)
        {
          return (*(*v39 + 40))();
        }
      }
    }

    else
    {
LABEL_92:
      if ((atomic_exchange(re::ecs2::SerializedMaterialParameter::toString(void)const::__FILE____LINE___logged, 1u) & 1) == 0)
      {
        v27 = *re::graphicsLogObjects(this);
        this = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
        if (this)
        {
          *buf = 0;
          _os_log_impl(&dword_1E1C61000, v27, OS_LOG_TYPE_DEFAULT, "Buffer and sampler types cannot be converted to string\n", buf, 2u);
        }
      }

      *v3 = 0u;
      *(v3 + 1) = 0u;
      return re::DynamicString::setCapacity(v3, 0);
    }
  }

  return result;
}

void *re::IntrospectionInfo<float [16]>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<float [16]>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<float [16]>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<float [16]>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v14);
    v3 = re::IntrospectionInfo<float [16]>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v14);
    if (v3)
    {
      return &re::IntrospectionInfo<float [16]>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
    if (re::IntrospectionInfo<float [16]>::get(BOOL)::isInitialized)
    {
LABEL_17:
      v11 = re::introspectionSharedMutex(v6);
      std::__shared_mutex_base::unlock(v11);
      return &re::IntrospectionInfo<float [16]>::get(BOOL)::info;
    }
  }

  re::IntrospectionInfo<float [16]>::get(BOOL)::isInitialized = 1;
  v7 = re::introspect_float(1, a2);
  re::IntrospectionCStyleArray::IntrospectionCStyleArray(&re::IntrospectionInfo<float [16]>::get(BOOL)::info, v7, 16);
  re::IntrospectionRegistry::add(v8, v9);
  re::getPrettyTypeName(&re::IntrospectionInfo<float [16]>::get(BOOL)::info, &v14);
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

  v14 = *(v7 + 2);
  xmmword_1EE1870D0 = v13;
  if (v16)
  {
    if (v16)
    {
    }
  }

  if ((a1 & 1) == 0)
  {
    goto LABEL_17;
  }

  return &re::IntrospectionInfo<float [16]>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_SerializedMaterialParameter(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AFB48, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFB48))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B00C8, "SerializedMaterialParameter");
    __cxa_guard_release(&qword_1EE1AFB48);
  }

  return &unk_1EE1B00C8;
}

void re::ecs2::initInfo_SerializedMaterialParameter(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v26[0] = 0xCB7C4AF26B0E69FCLL;
  v26[1] = "SerializedMaterialParameter";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1AFB40, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AFB40);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::introspect_MaterialParameterType(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "ValueType";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1AFCE0 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<float [16]>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_floatValues";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1000000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1AFCE8 = v13;
      v14 = re::introspectionAllocator(v13);
      v16 = re::introspect_AssetHandle(1, v15);
      v17 = (*(*v14 + 32))(v14, 72, 8);
      *v17 = 1;
      *(v17 + 8) = "m_assetHandleValue";
      *(v17 + 16) = v16;
      *(v17 + 24) = 0;
      *(v17 + 32) = 0x5000000003;
      *(v17 + 40) = 0;
      *(v17 + 48) = 0;
      *(v17 + 56) = 0;
      *(v17 + 64) = 0;
      qword_1EE1AFCF0 = v17;
      v18 = re::introspectionAllocator(v17);
      v19 = re::introspect_OptionalMaterialSamplerData(1);
      v20 = (*(*v18 + 32))(v18, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_samplerValue";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x6800000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1AFCF8 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::IntrospectionInfo<re::DynamicArray<unsigned char>>::get(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "m_bufferData";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0xD000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1AFD00 = v24;
      __cxa_guard_release(&qword_1EE1AFB40);
    }
  }

  *(this + 2) = 0x12000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1AFCE0;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SerializedMaterialParameter>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SerializedMaterialParameter>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SerializedMaterialParameter>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SerializedMaterialParameter>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

void re::internal::defaultDestruct<re::ecs2::SerializedMaterialParameter>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a3 + 256) = 0;
  re::DynamicArray<unsigned long>::deinit(a3 + 208);

  re::AssetHandle::~AssetHandle((a3 + 80));
}

void re::internal::defaultDestructV2<re::ecs2::SerializedMaterialParameter>(uint64_t a1)
{
  *(a1 + 256) = 0;
  re::DynamicArray<unsigned long>::deinit(a1 + 208);

  re::AssetHandle::~AssetHandle((a1 + 80));
}

re::ecs2::SerializableMaterialParameterBlock *re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(re::ecs2::SerializableMaterialParameterBlock *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v2 = &unk_1F5CF8270;
  *(v2 + 16) = 0u;
  *(v2 + 32) = 0u;
  *(v2 + 48) = 0;
  *(v2 + 52) = 0x7FFFFFFFLL;
  *(v2 + 64) = 0u;
  *(v2 + 80) = 0u;
  *(v2 + 96) = 0;
  *(v2 + 100) = 0x7FFFFFFFLL;
  *(v2 + 112) = 0u;
  *(v2 + 128) = 0u;
  *(v2 + 144) = 0;
  *(v2 + 148) = 0x7FFFFFFFLL;
  *(v2 + 160) = 0u;
  *(v2 + 176) = 0u;
  *(v2 + 192) = 0;
  *(v2 + 196) = 0x7FFFFFFFLL;
  *(v2 + 208) = 0u;
  *(v2 + 224) = 0u;
  *(v2 + 240) = 0;
  *(v2 + 244) = 0x7FFFFFFFLL;
  *(v2 + 256) = 0u;
  *(v2 + 272) = 0u;
  *(v2 + 288) = 0;
  *(v2 + 292) = 0x7FFFFFFFLL;
  *(v2 + 304) = 0u;
  *(v2 + 320) = 0u;
  *(v2 + 336) = 0;
  *(v2 + 340) = 0x7FFFFFFFLL;
  *(v2 + 352) = 0u;
  *(v2 + 368) = 0u;
  *(v2 + 384) = 0;
  *(v2 + 388) = 0x7FFFFFFFLL;
  *(v2 + 400) = 0u;
  *(v2 + 416) = 0u;
  *(v2 + 432) = 0;
  *(v2 + 436) = 0x7FFFFFFFLL;
  *(v2 + 448) = 0u;
  *(v2 + 464) = 0u;
  *(v2 + 480) = 0;
  *(v2 + 484) = 0x7FFFFFFFLL;
  *(v2 + 504) = 0;
  *(v2 + 512) = 0;
  *(v2 + 516) = 0;
  *(v2 + 518) = -1;
  uuid_generate_random(&v4);
  *(this + 62) = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  uuid_generate_random(&v4);
  *(this + 63) = (v5 + (v4 << 6) + (v4 >> 2) - 0x61C8864680B583E9) ^ v4;
  return this;
}

re::ecs2::SerializableMaterialParameterBlock *re::ecs2::SerializableMaterialParameterBlock::SerializableMaterialParameterBlock(re::ecs2::SerializableMaterialParameterBlock *this, const re::ecs2::SerializableMaterialParameterBlock *a2)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *v4 = &unk_1F5CF8270;
  *(v4 + 32) = 0u;
  *(v4 + 48) = 0;
  *(v4 + 16) = 0u;
  *(this + 52) = 0x7FFFFFFFLL;
  *(this + 5) = 0u;
  *(this + 24) = 0;
  *(this + 4) = 0u;
  *(this + 100) = 0x7FFFFFFFLL;
  *(this + 8) = 0u;
  *(this + 36) = 0;
  *(this + 7) = 0u;
  *(this + 148) = 0x7FFFFFFFLL;
  *(this + 11) = 0u;
  *(this + 48) = 0;
  *(this + 10) = 0u;
  *(this + 196) = 0x7FFFFFFFLL;
  *(this + 14) = 0u;
  *(this + 60) = 0;
  *(this + 13) = 0u;
  *(this + 244) = 0x7FFFFFFFLL;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 0;
  *(this + 292) = 0x7FFFFFFFLL;
  *(this + 19) = 0u;
  *(this + 20) = 0u;
  *(this + 84) = 0;
  *(this + 340) = 0x7FFFFFFFLL;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 96) = 0;
  *(this + 388) = 0x7FFFFFFFLL;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 0;
  *(this + 436) = 0x7FFFFFFFLL;
  *(this + 28) = 0u;
  *(this + 29) = 0u;
  *(this + 120) = 0;
  *(this + 484) = 0x7FFFFFFFLL;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 516) = 0;
  *(this + 259) = -1;
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((v4 + 16), a2 + 16);
  re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 64), a2 + 64);
  re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 112), a2 + 112);
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 160), a2 + 160);
  re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(this + 208, a2 + 208);
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(this + 256, a2 + 256);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=((this + 304), a2 + 304);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(this + 352, a2 + 352);
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(this + 400, a2 + 400);
  *(this + 516) = *(a2 + 516);
  *(this + 128) = 0;
  *(this + 31) = *(a2 + 31);
  *(this + 259) = *(a2 + 259);
  return this;
}

re::StringID *re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::StringID *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

re::StringID *re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::StringID *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

uint64_t re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 24) < v4)
        {
          re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 40);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

re::ecs2::SerializedMaterialParameter *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::operator=(re::ecs2::SerializedMaterialParameter *a1, uint64_t a2)
{
  if (a1 != a2)
  {
    if (*a1)
    {
      re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
      if (*a2)
      {
        v4 = *(a2 + 28);
        if (*(a1 + 6) < v4)
        {
          re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, v4);
        }

        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
        ++*(a1 + 10);
      }
    }

    else
    {
      v5 = *a2;
      if (*a2)
      {
        if (*(a2 + 28) <= 3u)
        {
          v6 = 3;
        }

        else
        {
          v6 = *(a2 + 28);
        }

        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(a1, v5, v6);
        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::copy(a1, a2);
      }
    }
  }

  return a1;
}

unsigned __int8 *re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(uint64_t a1, char *a2, int a3, unsigned __int8 *a4)
{
  v35 = *MEMORY[0x1E69E9840];
  v25 = a4;
  if (a2)
  {
    v7 = *a2;
    if (*a2)
    {
      v8 = a2[1];
      if (v8)
      {
        v9 = (a2 + 2);
        do
        {
          v7 = 31 * v7 + v8;
          v10 = *v9++;
          v8 = v10;
        }

        while (v10);
      }
    }
  }

  else
  {
    v7 = 0;
  }

  v23 = 2 * v7;
  v24 = a2;
  v11 = 0xBF58476D1CE4E5B9 * (v7 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v7) >> 31));
  v12 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 304, &v23, (0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) ^ ((0x94D049BB133111EBLL * (v11 ^ (v11 >> 27))) >> 31), &v26);
  if (HIDWORD(v27) == 0x7FFFFFFF)
  {
    v13 = 0;
  }

  else
  {
    v13 = (*(a1 + 320) + 320 * HIDWORD(v27) + 32);
  }

  v26 = 0;
  v27 = &str_67;
  v14 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, &v26);
  if (v26)
  {
    if (v26)
    {
    }
  }

  v15 = *(a1 + 496);
  v16 = v23;
  v17 = v23 >> 1;
  v18 = MurmurHash3_x64_128(&v25, 8uLL, 0, &v26);
  *(a1 + 496) = ((v15 << 6) + (v15 >> 2) - 0x61C8864680B583E9 + (((v16 >> 3) + (v17 << 6) - 0x61C8864680B583E9 + ((v27 + 64 * v26 + (v26 >> 2) - 0x61C8864680B583E9) ^ v26)) ^ (v16 >> 1))) ^ v15;
  ++*(a1 + 512);
  if (v13 && *v13 == a3)
  {
    re::ecs2::SerializedMaterialParameter::setValue(v13, a3, v25);
  }

  else
  {
    v21 = 0;
    v22 = &str_67;
    re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v26, a3, v25);
    v13 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 304, &v21, &v26);
    v34 = 0;
    if (v29)
    {
      if (v33)
      {
        (*(*v29 + 40))();
      }

      v33 = 0;
      v30 = 0;
      v31 = 0;
      v29 = 0;
      ++v32;
    }

    re::AssetHandle::~AssetHandle(&v28);
    if (v21)
    {
      if (v21)
      {
      }
    }
  }

  if (v23)
  {
    if (v23)
    {
    }
  }

  return v13;
}

unsigned __int8 *re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(uint64_t a1, StringID *a2, int a3, unsigned __int8 *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v23 = a4;
  v7 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  v8 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 304, a2, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), &v24);
  if (HIDWORD(v25) == 0x7FFFFFFF)
  {
    v9 = 0;
  }

  else
  {
    v9 = (*(a1 + 320) + 320 * HIDWORD(v25) + 32);
  }

  if (*&a2->var0)
  {
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, a2);
  }

  else
  {
    var1 = a2->var1;
    v24 = 0;
    v25 = &str_67;
    v11 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, &v24);
    if (v24)
    {
      if (v24)
      {
      }
    }
  }

  v12 = *(a1 + 496);
  v13 = *&a2->var0;
  v14 = *&a2->var0 >> 1;
  v15 = MurmurHash3_x64_128(&v23, 8uLL, 0, &v24);
  *(a1 + 496) = ((v12 << 6) + (v12 >> 2) - 0x61C8864680B583E9 + (((v13 >> 3) + (v14 << 6) - 0x61C8864680B583E9 + ((v25 + 64 * v24 + (v24 >> 2) - 0x61C8864680B583E9) ^ v24)) ^ (v13 >> 1))) ^ v12;
  ++*(a1 + 512);
  if (v9)
  {
    if (*v9 == a3)
    {
      re::ecs2::SerializedMaterialParameter::setValue(v9, a3, v23);
      return v9;
    }

    v16 = a2->var1;
    v21 = 0;
    v22 = &str_67;
    re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v24, a3, v23);
    v17 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 304, &v21, &v24);
    goto LABEL_20;
  }

  if ((*&a2->var0 & 1) == 0)
  {
    v18 = a2->var1;
    v21 = 0;
    v22 = &str_67;
    re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v24, a3, v23);
    v17 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 304, &v21, &v24);
LABEL_20:
    v9 = v17;
    v32 = 0;
    if (v27)
    {
      if (v31)
      {
        (*(*v27 + 40))();
      }

      v31 = 0;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      ++v30;
    }

    re::AssetHandle::~AssetHandle(v26);
    if (v21)
    {
      if (v21)
      {
      }
    }

    return v9;
  }

  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v24, a3, v23);
  v9 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 304, a2, &v24);
  v32 = 0;
  if (v27)
  {
    if (v31)
    {
      (*(*v27 + 40))();
    }

    v31 = 0;
    v28 = 0;
    v29 = 0;
    v27 = 0;
    ++v30;
  }

  re::AssetHandle::~AssetHandle(v26);
  return v9;
}

void re::ecs2::SerializableMaterialParameterBlock::BOOLValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, _BYTE *a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 2)
    {
      v12 = *(v11 + 48) != 0;
      *a3 = 1;
      a3[1] = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::floatValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15 + 32;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*v11 == 1)
    {
      v12 = *(v11 + 16);
      *a3 = 1;
      *(a3 + 4) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::intValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 3)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 4) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::uintValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 7)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 4) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::vector2FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 32)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 8) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::vector3FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v12 = *(this + 40) + 320 * v15 + 32;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*v12 == 33)
    {
      *&v11 = *(v12 + 16);
      DWORD2(v11) = *(v12 + 24);
      *a3 = 1;
      *(a3 + 16) = v11;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::vector4FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 34)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 16) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::setColorGamut3F(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v4 = a3;
  *(&v4 + 1) = a4;
  v15 = v4;
  v16 = BYTE4(a4);
  v5 = re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1, a2, 20, &v15);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v6, v5);
  v13 = 1;
  v14 = 0;
  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 40))();
    }

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    ++v11;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void re::ecs2::SerializableMaterialParameterBlock::setColorGamut3F(uint64_t a1, StringID *a2, uint64_t a3, uint64_t a4)
{
  v17 = *MEMORY[0x1E69E9840];
  *&v4 = a3;
  *(&v4 + 1) = a4;
  v15 = v4;
  v16 = BYTE4(a4);
  v5 = re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1, a2, 20, &v15);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v6, v5);
  v13 = 1;
  v14 = 0;
  if (v8)
  {
    if (v12)
    {
      (*(*v8 + 40))();
    }

    v12 = 0;
    v9 = 0;
    v10 = 0;
    v8 = 0;
    ++v11;
  }

  re::AssetHandle::~AssetHandle(&v7);
}

void re::ecs2::SerializableMaterialParameterBlock::colorGamut3FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15[0] = 2 * v5;
  v15[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v15, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v16);
  if (v17 == 0x7FFFFFFF)
  {
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v17;
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }

    if (*(v11 + 32) == 20)
    {
      v12 = *(v11 + 48);
      v13 = *(v11 + 56);
      v14 = *(v11 + 64);
      *a3 = 1;
      *(a3 + 4) = v12;
      *(a3 + 16) = v14;
      *(a3 + 12) = v13;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(uint64_t a1, char *a2, __int128 *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = *a3;
  v14 = *(a3 + 16);
  v3 = re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1, a2, 21, &v13);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v4, v3);
  v11 = 1;
  v12 = 0;
  if (v6)
  {
    if (v10)
    {
      (*(*v6 + 40))();
    }

    v10 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    ++v9;
  }

  re::AssetHandle::~AssetHandle(&v5);
}

void re::ecs2::SerializableMaterialParameterBlock::setColorGamut4F(uint64_t a1, StringID *a2, __int128 *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = *a3;
  v14 = *(a3 + 16);
  v3 = re::ecs2::SerializableMaterialParameterBlock::setValue<void const*>(a1, a2, 21, &v13);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v4, v3);
  v11 = 1;
  v12 = 0;
  if (v6)
  {
    if (v10)
    {
      (*(*v6 + 40))();
    }

    v10 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 0;
    ++v9;
  }

  re::AssetHandle::~AssetHandle(&v5);
}

void re::ecs2::SerializableMaterialParameterBlock::colorGamut4FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, int32x2_t *a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16[0] = 2 * v5;
  v16[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v16, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v17);
  if (v18 == 0x7FFFFFFF)
  {
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v18;
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }

    if (*(v11 + 32) == 21)
    {
      v12 = *(v11 + 48);
      v13 = HIDWORD(*(v11 + 56));
      *(&v14 + 1) = *(v11 + 56);
      *&v14 = v12;
      v15 = *(v11 + 64);
      a3->i8[0] = 1;
      a3->i32[1] = v12;
      a3[1] = vzip1_s32((v14 >> 32), *(&v14 + 8));
      a3[2].i32[0] = v13;
      a3[2].i8[4] = v15;
      return;
    }
  }

  a3->i8[0] = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::int2Value(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 4)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 8) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::int3Value(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v12 = *(this + 40) + 320 * v15 + 32;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*v12 == 5)
    {
      *&v11 = *(v12 + 16);
      DWORD2(v11) = *(v12 + 24);
      *a3 = 1;
      *(a3 + 16) = v11;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::int4Value(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 6)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 16) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::uint2Value(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 8)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 8) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::uint3Value(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v12 = *(this + 40) + 320 * v15 + 32;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*v12 == 9)
    {
      *&v11 = *(v12 + 16);
      DWORD2(v11) = *(v12 + 24);
      *a3 = 1;
      *(a3 + 16) = v11;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::uint4Value(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v13[0] = 2 * v5;
  v13[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v13, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v15;
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    if (*(v11 + 32) == 10)
    {
      v12 = *(v11 + 48);
      *a3 = 1;
      *(a3 + 16) = v12;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::matrix2x2FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v14[0] = 2 * v5;
  v14[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v14, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v15);
  if (v16 == 0x7FFFFFFF)
  {
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v16;
    if (v14[0])
    {
      if (v14[0])
      {
      }
    }

    if (*(v11 + 32) == 48)
    {
      v12 = *(v11 + 48);
      v13 = *(v11 + 56);
      *a3 = 1;
      *(a3 + 8) = v12;
      *(a3 + 16) = v13;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::matrix3x3FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v15[0] = 2 * v5;
  v15[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v15, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v16);
  if (v17 == 0x7FFFFFFF)
  {
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }
  }

  else
  {
    v14 = *(this + 40) + 320 * v17 + 32;
    if (v15[0])
    {
      if (v15[0])
      {
      }
    }

    if (*v14 == 49)
    {
      *&v11 = *(v14 + 16);
      *&v12 = *(v14 + 32);
      *&v13 = *(v14 + 48);
      DWORD2(v11) = *(v14 + 24);
      DWORD2(v12) = *(v14 + 40);
      DWORD2(v13) = *(v14 + 56);
      *a3 = 1;
      *(a3 + 16) = v11;
      *(a3 + 32) = v12;
      *(a3 + 48) = v13;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::matrix4x4FValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v16[0] = 2 * v5;
  v16[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v16, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), v17);
  if (v18 == 0x7FFFFFFF)
  {
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }
  }

  else
  {
    v11 = *(this + 40) + 320 * v18;
    if (v16[0])
    {
      if (v16[0])
      {
      }
    }

    if (*(v11 + 32) == 50)
    {
      v12 = *(v11 + 48);
      v13 = *(v11 + 64);
      v14 = *(v11 + 80);
      v15 = *(v11 + 96);
      *a3 = 1;
      *(a3 + 16) = v12;
      *(a3 + 32) = v13;
      *(a3 + 48) = v14;
      *(a3 + 64) = v15;
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::setTexture(uint64_t a1, char *a2, const re::AssetHandle *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(v8, a3);
  v6 = re::ecs2::SerializableMaterialParameterBlock::setValue<re::AssetHandle>(a1, a2, 64, v8);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(v9, v6);
  re::AssetHandle::~AssetHandle(v8);
  v7 = re::AssetHandle::loadedAsset<re::TextureAsset>(a3);
  if (v7)
  {
    v16 = (*(v7 + 356) - 3) < 2;
  }

  v17 = 0;
  if (v11)
  {
    if (v15)
    {
      (*(*v11 + 40))();
    }

    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    ++v14;
  }

  re::AssetHandle::~AssetHandle(&v10);
}

_BYTE *re::ecs2::SerializableMaterialParameterBlock::setValue<re::AssetHandle>(uint64_t a1, char *a2, int a3, const re::AssetHandle *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = a2[1];
      if (v9)
      {
        v10 = (a2 + 2);
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

  v26[0] = 2 * v8;
  v26[1] = a2;
  v12 = 0xBF58476D1CE4E5B9 * (v8 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v8) >> 31));
  v13 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 304, v26, (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31), &v27);
  if (HIDWORD(v28) == 0x7FFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*(a1 + 320) + 320 * HIDWORD(v28) + 32);
  }

  v27 = 0;
  v28 = &str_67;
  v15 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, &v27);
  if (v27)
  {
    if (v27)
    {
    }
  }

  v16 = *(a1 + 496);
  v17 = v26[0];
  v18 = v26[0] >> 1;
  v19 = MurmurHash3_x64_128(a4, 0x18uLL, 0, &v27);
  *(a1 + 496) = ((v16 << 6) + (v16 >> 2) - 0x61C8864680B583E9 + (((v17 >> 3) + (v18 << 6) - 0x61C8864680B583E9 + ((v28 + 64 * v27 + (v27 >> 2) - 0x61C8864680B583E9) ^ v27)) ^ (v17 >> 1))) ^ v16;
  ++*(a1 + 512);
  if (v14 && *v14 == a3)
  {
    re::AssetHandle::AssetHandle(v25, a4);
    *v14 = a3;
    re::AssetHandle::operator=((v14 + 80), v25);
    re::AssetHandle::~AssetHandle(v25);
  }

  else
  {
    v23 = 0;
    v24 = &str_67;
    re::AssetHandle::AssetHandle(v22, a4);
    re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v27, a3, v22);
    v14 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 304, &v23, &v27);
    v35 = 0;
    if (v30)
    {
      if (v34)
      {
        (*(*v30 + 40))();
      }

      v34 = 0;
      v31 = 0;
      v32 = 0;
      v30 = 0;
      ++v33;
    }

    re::AssetHandle::~AssetHandle(&v29);
    re::AssetHandle::~AssetHandle(v22);
    if (v23)
    {
      if (v23)
      {
      }
    }
  }

  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  return v14;
}

void re::ecs2::SerializableMaterialParameterBlock::setTexture(uint64_t a1, StringID *a2, const re::AssetHandle *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  re::AssetHandle::AssetHandle(v8, a3);
  v6 = re::ecs2::SerializableMaterialParameterBlock::setValue<re::AssetHandle>(a1, a2, 64, v8);
  re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(v9, v6);
  re::AssetHandle::~AssetHandle(v8);
  v7 = re::AssetHandle::loadedAsset<re::TextureAsset>(a3);
  if (v7)
  {
    v16 = (*(v7 + 356) - 3) < 2;
  }

  v17 = 0;
  if (v11)
  {
    if (v15)
    {
      (*(*v11 + 40))();
    }

    v15 = 0;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    ++v14;
  }

  re::AssetHandle::~AssetHandle(&v10);
}

_BYTE *re::ecs2::SerializableMaterialParameterBlock::setValue<re::AssetHandle>(uint64_t a1, StringID *a2, int a3, const re::AssetHandle *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v8 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  v9 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 304, a2, (0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31), &v29);
  if (HIDWORD(v30) == 0x7FFFFFFF)
  {
    v10 = 0;
  }

  else
  {
    v10 = (*(a1 + 320) + 320 * HIDWORD(v30) + 32);
  }

  if (*&a2->var0)
  {
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, a2);
  }

  else
  {
    var1 = a2->var1;
    v29 = 0;
    v30 = &str_67;
    v12 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, &v29);
    if (v29)
    {
      if (v29)
      {
      }
    }
  }

  v13 = *(a1 + 496);
  v14 = *&a2->var0;
  v15 = *&a2->var0 >> 1;
  v16 = MurmurHash3_x64_128(a4, 0x18uLL, 0, &v29);
  *(a1 + 496) = ((v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9 + (((v14 >> 3) + (v15 << 6) - 0x61C8864680B583E9 + ((v30 + 64 * v29 + (v29 >> 2) - 0x61C8864680B583E9) ^ v29)) ^ (v14 >> 1))) ^ v13;
  ++*(a1 + 512);
  if (v10)
  {
    if (*v10 == a3)
    {
      re::AssetHandle::AssetHandle(v28, a4);
      *v10 = a3;
      re::AssetHandle::operator=((v10 + 80), v28);
      v17 = v28;
LABEL_18:
      re::AssetHandle::~AssetHandle(v17);
      return v10;
    }

    v18 = a2->var1;
    v26 = 0;
    v27 = &str_67;
    re::AssetHandle::AssetHandle(v25, a4);
    re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v29, a3, v25);
    v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 304, &v26, &v29);
    v37 = 0;
    if (v32)
    {
      if (v36)
      {
        (*(*v32 + 40))();
      }

      v36 = 0;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      ++v35;
    }

    re::AssetHandle::~AssetHandle(v31);
    v19 = v25;
  }

  else
  {
    if (*&a2->var0)
    {
      re::AssetHandle::AssetHandle(v24, a4);
      re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v29, a3, v24);
      v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 304, a2, &v29);
      v37 = 0;
      if (v32)
      {
        if (v36)
        {
          (*(*v32 + 40))();
        }

        v36 = 0;
        v33 = 0;
        v34 = 0;
        v32 = 0;
        ++v35;
      }

      re::AssetHandle::~AssetHandle(v31);
      v17 = v24;
      goto LABEL_18;
    }

    v20 = a2->var1;
    v26 = 0;
    v27 = &str_67;
    re::AssetHandle::AssetHandle(v23, a4);
    re::ecs2::SerializedMaterialParameter::SerializedMaterialParameter(&v29, a3, v23);
    v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 304, &v26, &v29);
    v37 = 0;
    if (v32)
    {
      if (v36)
      {
        (*(*v32 + 40))();
      }

      v36 = 0;
      v33 = 0;
      v34 = 0;
      v32 = 0;
      ++v35;
    }

    re::AssetHandle::~AssetHandle(v31);
    v19 = v23;
  }

  re::AssetHandle::~AssetHandle(v19);
  if (v26)
  {
    if (v26)
    {
    }
  }

  return v10;
}

void re::ecs2::SerializableMaterialParameterBlock::textureValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v12[0] = 2 * v5;
  v12[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v12, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), &v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    if (v12[0])
    {
      if (v12[0])
      {
      }
    }
  }

  else
  {
    v11 = (*(this + 40) + 320 * HIDWORD(v13) + 32);
    if (v12[0])
    {
      if (v12[0])
      {
      }
    }

    if (*v11 == 64)
    {
      re::AssetHandle::AssetHandle(&v13, (v11 + 80));
      *a3 = 1;
      *(a3 + 8) = v13;
      v13 = 0uLL;
      *(a3 + 24) = v14;
      v14 = 0;
      re::AssetHandle::~AssetHandle(&v13);
      return;
    }
  }

  *a3 = 0;
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::setBufferData(uint64_t a1, char *a2, uint64_t *a3)
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    re::DynamicArray<BOOL>::DynamicArray(v7, a3);
    re::ecs2::SerializableMaterialParameterBlock::setValue<re::DynamicArray<unsigned char>>(a1, a2, 128, v7);
    result = v7[0];
    if (v7[0])
    {
      if (v7[4])
      {
        return (*(*v7[0] + 40))();
      }
    }
  }

  return result;
}

_BYTE *re::ecs2::SerializableMaterialParameterBlock::setValue<re::DynamicArray<unsigned char>>(uint64_t a1, char *a2, int a3, uint64_t *a4)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v8 = *a2;
    if (*a2)
    {
      v9 = a2[1];
      if (v9)
      {
        v10 = (a2 + 2);
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

  v24[0] = 2 * v8;
  v24[1] = a2;
  v12 = 0xBF58476D1CE4E5B9 * (v8 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v8) >> 31));
  v13 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 304, v24, (0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) ^ ((0x94D049BB133111EBLL * (v12 ^ (v12 >> 27))) >> 31), &v25);
  if (HIDWORD(v26) == 0x7FFFFFFF)
  {
    v14 = 0;
  }

  else
  {
    v14 = (*(a1 + 320) + 320 * HIDWORD(v26) + 32);
  }

  v25 = 0;
  v26 = &str_67;
  v15 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, &v25);
  if (v25)
  {
    if (v25)
    {
    }
  }

  v16 = *(a1 + 496);
  v17 = v24[0];
  v18 = v24[0] >> 1;
  v19 = MurmurHash3_x64_128(a4, 0x28uLL, 0, &v25);
  *(a1 + 496) = ((v16 << 6) + (v16 >> 2) - 0x61C8864680B583E9 + (((v17 >> 3) + (v18 << 6) - 0x61C8864680B583E9 + ((v26 + 64 * v25 + (v25 >> 2) - 0x61C8864680B583E9) ^ v25)) ^ (v17 >> 1))) ^ v16;
  ++*(a1 + 512);
  if (v14 && *v14 == a3)
  {
    v20 = re::ecs2::SerializedMaterialParameter::setValue(v14, a3, a4);
  }

  else
  {
    v22 = 0;
    v23 = &str_67;
    LOBYTE(v25) = 0;
    memset(v27, 0, sizeof(v27));
    v28 = 10;
    v29 = 0;
    v30 = 0;
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v40 = 0;
    v45 = 0;
    v41 = 0;
    v42 = 0;
    v44 = 0;
    v43 = 0;
    v46 = 0;
    v48 = 0;
    *(v47 + 5) = 0;
    v47[2] = 0;
    v47[0] = 0;
    re::ecs2::SerializedMaterialParameter::setValue(&v25, a3, a4);
    v14 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 304, &v22, &v25);
    v47[0] = 0;
    if (v41)
    {
      if (v45)
      {
        (*(*v41 + 40))();
      }

      v45 = 0;
      v42 = 0;
      v43 = 0;
      v41 = 0;
      ++v44;
    }

    re::AssetHandle::~AssetHandle(v27);
    if (v22)
    {
      if (v22)
      {
      }
    }
  }

  if (v24[0])
  {
    if (v24[0])
    {
    }
  }

  return v14;
}

void re::ecs2::SerializableMaterialParameterBlock::setSampler(uint64_t a1, char *a2, __int16 *a3)
{
  v103 = *MEMORY[0x1E69E9840];
  v18 = *a3;
  if (HIBYTE(v18) == 1)
  {
    v19 = *(a3 + 2);
  }

  v20 = *(a3 + 3);
  if (v20 == 1)
  {
    v21 = *(a3 + 4);
  }

  v22 = *(a3 + 8);
  if (v22 == 1)
  {
    v23 = *(a3 + 3);
  }

  v24 = *(a3 + 16);
  if (v24 == 1)
  {
    v25 = *(a3 + 5);
  }

  v26 = *(a3 + 24);
  if (v26 == 1)
  {
    v27 = *(a3 + 7);
  }

  v28 = *(a3 + 32);
  if (v28 == 1)
  {
    v29 = *(a3 + 9);
  }

  v30 = *(a3 + 40);
  if (v30 == 1)
  {
    v31 = *(a3 + 11);
  }

  v32 = *(a3 + 48);
  if (v32 == 1)
  {
    v33 = *(a3 + 13);
  }

  v34 = *(a3 + 56);
  if (v34 == 1)
  {
    v35 = *(a3 + 15);
  }

  v36 = *(a3 + 64);
  if (v36 == 1)
  {
    v37 = *(a3 + 17);
  }

  v38 = *(a3 + 72);
  if (v38 == 1)
  {
    v39 = *(a3 + 19);
  }

  v40 = *(a3 + 80);
  if (v40 == 1)
  {
    v41 = *(a3 + 21);
  }

  v42 = *(a3 + 88);
  if (v42 == 1)
  {
    v43 = *(a3 + 12);
  }

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
    }
  }

  else
  {
    v5 = 0;
  }

  v45 = 2 * v5;
  v46 = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1 + 304, &v45, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), &v47);
  if (HIDWORD(v48) == 0x7FFFFFFF)
  {
    v11 = 0;
  }

  else
  {
    v11 = (*(a1 + 320) + 320 * HIDWORD(v48) + 32);
  }

  v47 = 0;
  v48 = &str_67;
  v12 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a1 + 400, &v47);
  if (v47)
  {
    if (v47)
    {
    }
  }

  v13 = *(a1 + 496);
  v14 = v45;
  v15 = v45 >> 1;
  v16 = MurmurHash3_x64_128(&v18, 0x68uLL, 0, &v47);
  *(a1 + 496) = ((v13 << 6) + (v13 >> 2) - 0x61C8864680B583E9 + (((v14 >> 3) + (v15 << 6) - 0x61C8864680B583E9 + ((v48 + 64 * v47 + (v47 >> 2) - 0x61C8864680B583E9) ^ v47)) ^ (v14 >> 1))) ^ v13;
  ++*(a1 + 512);
  if (v11 && *v11 == 192)
  {
    LOWORD(v47) = v18;
    if (HIBYTE(v18) == 1)
    {
      BYTE2(v47) = v19;
    }

    BYTE3(v47) = v20;
    if (v20 == 1)
    {
      BYTE4(v47) = v21;
    }

    LOBYTE(v48) = v22;
    if (v22 == 1)
    {
      HIDWORD(v48) = v23;
    }

    v49 = v24;
    if (v24 == 1)
    {
      v50 = v25;
    }

    v51 = v26;
    if (v26 == 1)
    {
      v52 = v27;
    }

    v53 = v28;
    if (v28 == 1)
    {
      v54 = v29;
    }

    v55 = v30;
    if (v30 == 1)
    {
      v56 = v31;
    }

    v57 = v32;
    if (v32 == 1)
    {
      v58 = v33;
    }

    v59 = v34;
    if (v34 == 1)
    {
      v60 = v35;
    }

    v61 = v36;
    if (v36 == 1)
    {
      v62 = v37;
    }

    v63 = v38;
    if (v38 == 1)
    {
      v64 = v39;
    }

    LOBYTE(v65) = v40;
    if (v40 == 1)
    {
      HIDWORD(v65) = v41;
    }

    LOBYTE(v66) = v42;
    if (v42 == 1)
    {
      v67 = v43;
    }

    *v11 = -64;
    v17 = re::OptionalMaterialSamplerData::operator=((v11 + 104), &v47);
    goto LABEL_91;
  }

  v44[0] = 0;
  v44[1] = &str_67;
  v65 = 0;
  v66 = 0;
  v67 = 0;
  v69 = 0;
  v71 = 0;
  v73 = 0;
  v75 = 0;
  v77 = 0;
  v79 = 0;
  v81 = 0;
  v83 = 0;
  v85 = 0;
  v87 = 0;
  v89 = 0;
  v91 = 0;
  v93 = 0;
  v99 = 0;
  v96 = 0;
  v97 = 0;
  v95 = 0;
  v98 = 0;
  v100 = 0;
  v102 = 0;
  *(v101 + 5) = 0;
  v101[2] = 0;
  v101[0] = 0;
  LOBYTE(v47) = -64;
  v68 = v18;
  if (HIBYTE(v18) == 1)
  {
    v69 = 1;
    v70 = v19;
    if (!v20)
    {
LABEL_71:
      if (!v22)
      {
        goto LABEL_73;
      }

      goto LABEL_72;
    }
  }

  else if (!v20)
  {
    goto LABEL_71;
  }

  v71 = 1;
  v72 = v21;
  if (v22)
  {
LABEL_72:
    v73 = 1;
    v74 = v23;
  }

LABEL_73:
  if (v24)
  {
    v75 = 1;
    v76 = v25;
    if (!v26)
    {
LABEL_75:
      if (!v28)
      {
        goto LABEL_76;
      }

      goto LABEL_100;
    }
  }

  else if (!v26)
  {
    goto LABEL_75;
  }

  v77 = 1;
  v78 = v27;
  if (!v28)
  {
LABEL_76:
    if (!v30)
    {
      goto LABEL_77;
    }

    goto LABEL_101;
  }

LABEL_100:
  v79 = 1;
  v80 = v29;
  if (!v30)
  {
LABEL_77:
    if (!v32)
    {
      goto LABEL_78;
    }

    goto LABEL_102;
  }

LABEL_101:
  v81 = 1;
  v82 = v31;
  if (!v32)
  {
LABEL_78:
    if (!v34)
    {
      goto LABEL_79;
    }

    goto LABEL_103;
  }

LABEL_102:
  v83 = 1;
  v84 = v33;
  if (!v34)
  {
LABEL_79:
    if (!v36)
    {
      goto LABEL_80;
    }

    goto LABEL_104;
  }

LABEL_103:
  v85 = 1;
  v86 = v35;
  if (!v36)
  {
LABEL_80:
    if (!v38)
    {
      goto LABEL_81;
    }

    goto LABEL_105;
  }

LABEL_104:
  v87 = 1;
  v88 = v37;
  if (!v38)
  {
LABEL_81:
    if (!v40)
    {
      goto LABEL_82;
    }

LABEL_106:
    v91 = 1;
    v92 = v41;
    if (!v42)
    {
      goto LABEL_84;
    }

    goto LABEL_83;
  }

LABEL_105:
  v89 = 1;
  v90 = v39;
  if (v40)
  {
    goto LABEL_106;
  }

LABEL_82:
  if (v42)
  {
LABEL_83:
    v93 = 1;
    v94 = v43;
  }

LABEL_84:
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 304, v44, &v47);
  v101[0] = 0;
  if (v95)
  {
    if (v99)
    {
      (*(*v95 + 40))();
    }

    v99 = 0;
    v96 = 0;
    v97 = 0;
    v95 = 0;
    ++v98;
  }

  re::AssetHandle::~AssetHandle(&v65);
  if (v44[0])
  {
    if (v44[0])
    {
    }
  }

LABEL_91:
  if (v45)
  {
    if (v45)
    {
    }
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::valueType(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
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
    }
  }

  else
  {
    v3 = 0;
  }

  v11[0] = 2 * v3;
  v11[1] = a2;
  v7 = 0xBF58476D1CE4E5B9 * (v3 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v3) >> 31));
  v8 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v11, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v12);
  if (v13 == 0x7FFFFFFF)
  {
    if (v11[0])
    {
      if (v11[0])
      {
      }
    }

    return 0;
  }

  else
  {
    v10 = *(this + 40) + 320 * v13;
    if (v11[0])
    {
      if (v11[0])
      {
      }
    }

    return *(v10 + 32);
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::addPassTechniqueMapping(re::ecs2::SerializableMaterialParameterBlock *this, unint64_t a2, uint64_t a3)
{
  v5 = *(this + 26);
  result = this + 208;
  v13 = a2;
  ++*(result + 304);
  *(result + 288) ^= ((a3 + (a2 << 6) + (a2 >> 2) - 0x61C8864680B583E9) ^ a2) + (*(result + 288) << 6) + (*(result + 288) >> 2) - 0x61C8864680B583E9;
  *(result + 310) |= 0x10u;
  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *(*(this + 27) + 4 * (a2 % *(this + 58)));
  if (v6 == 0x7FFFFFFF)
  {
    goto LABEL_13;
  }

  v7 = *(this + 28);
  v8 = v6;
  while (*(v7 + 32 * v8 + 8) != a2)
  {
    v8 = *(v7 + 32 * v8) & 0x7FFFFFFF;
    if (v8 == 0x7FFFFFFF)
    {
      goto LABEL_13;
    }
  }

  while (1)
  {
    v9 = v7 + 32 * v6;
    if (*(v9 + 8) == a2)
    {
      break;
    }

    v6 = *(v7 + 32 * v6) & 0x7FFFFFFF;
    if (v6 == 0x7FFFFFFF)
    {
      v10 = 0;
      goto LABEL_11;
    }
  }

  v10 = v9 + 16;
LABEL_11:
  if (*v10 != 1 || *(v10 + 8) != a3)
  {
LABEL_13:
    v11[0] = 1;
    v12 = a3;
    return re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(result, &v13, v11);
  }

  return result;
}

uint64_t re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(uint64_t a1, unint64_t *a2, unsigned __int8 *a3)
{
  v12 = 0;
  v13 = 0;
  v14 = 0;
  re::HashTable<unsigned long long,re::PeerAttributionContext *,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::findEntry<unsigned long long>(a1, a2, *a2, &v12);
  v6 = HIDWORD(v13);
  if (HIDWORD(v13) == 0x7FFFFFFF)
  {
    v7 = re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::allocEntry(a1, v13, v12);
    *(v7 + 8) = *a2;
    v8 = *a3;
    *(v7 + 16) = v8;
    result = v7 + 16;
    if (v8 == 1)
    {
      *(v7 + 24) = *(a3 + 1);
    }

    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v10 = *(a1 + 16) + 32 * v6;
    v11 = *(v10 + 16);
    result = v10 + 16;
    if (v11)
    {
      if ((*a3 & 1) == 0)
      {
        *result = 0;
        return result;
      }
    }

    else
    {
      if ((*a3 & 1) == 0)
      {
        return result;
      }

      *result = 1;
    }

    *(result + 8) = *(a3 + 1);
  }

  return result;
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::markPassTechniqueMappingRemoved(re::ecs2::SerializableMaterialParameterBlock *this, unint64_t a2)
{
  v9 = a2;
  v4 = *(this + 26);
  result = this + 208;
  if (v4)
  {
    v5 = *(*(this + 27) + 4 * (a2 % *(this + 58)));
    if (v5 != 0x7FFFFFFF)
    {
      v6 = *(this + 28);
      v7 = *(*(this + 27) + 4 * (a2 % *(this + 58)));
      while (*(v6 + 32 * v7 + 8) != a2)
      {
        v7 = *(v6 + 32 * v7) & 0x7FFFFFFF;
        if (v7 == 0x7FFFFFFF)
        {
          return result;
        }
      }

      while (*(v6 + 32 * v5 + 8) != a2)
      {
        v5 = *(v6 + 32 * v5) & 0x7FFFFFFF;
      }

      if (*(v6 + 32 * v5 + 16) == 1)
      {
        v8[0] = 0;
        result = re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>::addOrReplace(result, &v9, v8);
        ++*(this + 128);
        *(this + 62) ^= v9 + (*(this + 62) << 6) + (*(this + 62) >> 2) - 0x61C8864680B583E9;
        *(this + 259) |= 0x10u;
      }
    }
  }

  return result;
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::tryGetPassTechniqueMapping@<X0>(uint64_t this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (!*(this + 208))
  {
    goto LABEL_12;
  }

  v3 = *(*(this + 216) + 4 * (a2 % *(this + 232)));
  if (v3 == 0x7FFFFFFF)
  {
    goto LABEL_12;
  }

  v4 = *(this + 224);
  v5 = *(*(this + 216) + 4 * (a2 % *(this + 232)));
  while (*(v4 + 32 * v5 + 8) != a2)
  {
    v5 = *(v4 + 32 * v5) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  while (1)
  {
    v6 = v4 + 32 * v3;
    if (*(v6 + 8) == a2)
    {
      break;
    }

    v3 = *(v4 + 32 * v3) & 0x7FFFFFFF;
    if (v3 == 0x7FFFFFFF)
    {
      goto LABEL_12;
    }
  }

  v9 = *(v6 + 16);
  v8 = v6 + 16;
  v7 = v9;
  if (v9 == 1)
  {
    *a3 = v7;
    *(a3 + 8) = *(v8 + 8);
  }

  else
  {
LABEL_12:
    *a3 = 0;
  }

  return this;
}

void re::ecs2::SerializableMaterialParameterBlock::samplerValue(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  if (a2)
  {
    v5 = *a2;
    if (*a2)
    {
      v6 = a2[1];
      if (v6)
      {
        v7 = a2 + 2;
        do
        {
          v5 = 31 * v5 + v6;
          v8 = *v7++;
          v6 = v8;
        }

        while (v8);
      }
    }
  }

  else
  {
    v5 = 0;
  }

  v52[0] = 2 * v5;
  v52[1] = a2;
  v9 = 0xBF58476D1CE4E5B9 * (v5 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v5) >> 31));
  v10 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, v52, (0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) ^ ((0x94D049BB133111EBLL * (v9 ^ (v9 >> 27))) >> 31), &v25);
  if (v31 == 0x7FFFFFFF)
  {
    if (v52[0])
    {
      if (v52[0])
      {
      }
    }

LABEL_42:
    *a3 = 0;
    return;
  }

  v11 = *(this + 40) + 320 * v31;
  if (v52[0])
  {
    if (v52[0])
    {
    }
  }

  if (*(v11 + 32) != 192)
  {
    goto LABEL_42;
  }

  re::ecs2::SerializedMaterialParameter::asSampler(&v25, v11 + 32);
  *a3 = 1;
  *(a3 + 8) = v25;
  v12 = v26;
  *(a3 + 9) = v26;
  if (v12 == 1)
  {
    *(a3 + 10) = v27;
  }

  v13 = v28;
  *(a3 + 11) = v28;
  if (v13 == 1)
  {
    *(a3 + 12) = v29;
  }

  v14 = v30;
  *(a3 + 16) = v30;
  if (v14 == 1)
  {
    *(a3 + 20) = v31;
  }

  v15 = v32;
  *(a3 + 24) = v32;
  if (v15 == 1)
  {
    *(a3 + 28) = v33;
  }

  v16 = v34;
  *(a3 + 32) = v34;
  if (v16 == 1)
  {
    *(a3 + 36) = v35;
  }

  v17 = v36;
  *(a3 + 40) = v36;
  if (v17 == 1)
  {
    *(a3 + 44) = v37;
  }

  v18 = v38;
  *(a3 + 48) = v38;
  if (v18 == 1)
  {
    *(a3 + 52) = v39;
  }

  v19 = v40;
  *(a3 + 56) = v40;
  if (v19 == 1)
  {
    *(a3 + 60) = v41;
  }

  v20 = v42;
  *(a3 + 64) = v42;
  if (v20 == 1)
  {
    *(a3 + 68) = v43;
  }

  v21 = v44;
  *(a3 + 72) = v44;
  if (v21 == 1)
  {
    *(a3 + 76) = v45;
  }

  v22 = v46;
  *(a3 + 80) = v46;
  if (v22 == 1)
  {
    *(a3 + 84) = v47;
  }

  v23 = v48;
  *(a3 + 88) = v48;
  if (v23 == 1)
  {
    *(a3 + 92) = v49;
  }

  v24 = v50;
  *(a3 + 96) = v50;
  if (v24 == 1)
  {
    *(a3 + 104) = v51;
  }
}

void re::ecs2::SerializableMaterialParameterBlock::bindTextureToSampler(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2, const char *a3)
{
  *&v12.var0 = 0;
  v12.var1 = &str_67;
  *&v11.var0 = 0;
  v11.var1 = &str_67;
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 16, &v12, &v11);
  v9 = 0xCDBE08E7536FAD94;
  v10 = "dynamicSamplers";
  v7 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 160, &v11, &v9);
  if (v9)
  {
    if (v9)
    {
    }
  }

  var0 = v11.var0;
  *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) - 0x61C8864680B583E9 + (((*&v12.var0 >> 3) + (*&v11.var0 >> 1) + (*&v12.var0 >> 1 << 6) - 0x61C8864680B583E9) ^ (*&v12.var0 >> 1));
  *(this + 259) |= 9u;
  if (var0)
  {
    if (*&v11.var0)
    {
    }
  }

  if (*&v12.var0)
  {
    if (*&v12.var0)
    {
    }
  }
}

unint64_t *re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, StringID *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::StringID const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::StringID::operator=((*(a1 + 16) + 40 * v7 + 24), a3);
}

_anonymous_namespace_ *re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::StringID>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::StringID::operator=((*(a1 + 16) + 40 * v7 + 24), a3);
}

void re::ecs2::SerializableMaterialParameterBlock::setUVIndexForTexture(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2, unsigned int a3)
{
  v9 = a3;
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v5 = re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 64, &v8, &v9);
  ++*(this + 128);
  var0 = v8.var0;
  v7 = 73244475 * ((73244475 * (v9 ^ HIWORD(v9))) ^ ((73244475 * (v9 ^ HIWORD(v9))) >> 16));
  *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) - 0x61C8864680B583E9 + (((*&v8.var0 >> 3) + (*&v8.var0 >> 1 << 6) - 0x61C8864680B583E9 + (v7 ^ HIWORD(v7))) ^ (*&v8.var0 >> 1));
  *(this + 259) |= 2u;
  if (var0)
  {
    if (*&v8.var0)
    {
    }
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::uvIndexForTexture(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
{
  v8 = 0;
  v9 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, &v8, v4 ^ (v4 >> 31), v10);
  if (v11 == 0x7FFFFFFF)
  {
    if (v8)
    {
      if (v8)
      {
      }
    }

    return 0;
  }

  else
  {
    v7 = *(this + 10) + 32 * v11;
    if (v8)
    {
      if (v8)
      {
      }
    }

    return *(v7 + 24);
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::tryUVIndexForTexture(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
{
  v8 = 0;
  v9 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, &v8, v4 ^ (v4 >> 31), v10);
  v6 = 0;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(this + 10) + 32 * v11 + 24;
  }

  if (v8)
  {
    if (v8)
    {
    }
  }

  return v6;
}

void re::ecs2::SerializableMaterialParameterBlock::clearUVIndexForTexture(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
{
  v10 = 0;
  v11 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v10 >> 31) ^ (v10 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v10 >> 31) ^ (v10 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, &v10, v4 ^ (v4 >> 31), v12);
  if (v12[3] == 0x7FFFFFFF)
  {
    if ((v10 & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  v8 = 0;
  v9 = &str_67;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 64, &v8, v6 ^ (v6 >> 31), v12);
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 64, v12);
  if (v8)
  {
    if (v8)
    {
    }
  }

  ++*(this + 128);
  v7 = v10;
  *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) + (v10 >> 1) - 0x61C8864680B583E9;
  *(this + 259) |= 2u;
  if (v7)
  {
LABEL_8:
    if (v10)
    {
    }
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::numberOfTexturesWithNonZeroUVIndex(re::ecs2::SerializableMaterialParameterBlock *this)
{
  v2 = *(this + 24);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 10);
    while (1)
    {
      v5 = *v4;
      v4 += 8;
      if (v5 < 0)
      {
        break;
      }

      if (v2 == ++v3)
      {
        LODWORD(v3) = *(this + 24);
        break;
      }
    }
  }

  else
  {
    LODWORD(v3) = 0;
  }

  if (v3 == v2)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v7 = *(this + 10);
  do
  {
    if (*(v7 + 32 * v3 + 24))
    {
      result = (result + 1);
    }

    else
    {
      result = result;
    }

    if (v2 <= v3 + 1)
    {
      v8 = v3 + 1;
    }

    else
    {
      v8 = v2;
    }

    while (v8 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(v7 + 32 * v3) & 0x80000000) != 0)
      {
        goto LABEL_21;
      }
    }

    LODWORD(v3) = v8;
LABEL_21:
    ;
  }

  while (v3 != v2);
  return result;
}

void re::ecs2::SerializableMaterialParameterBlock::setSwizzleForTexture(uint64_t a1, const char *a2, int a3)
{
  v12[2] = *MEMORY[0x1E69E9840];
  v11 = a3;
  *&v10.var0 = 0;
  v10.var1 = &str_67;
  LOBYTE(v12[0]) = 1;
  *(v12 + 1) = a3;
  re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 112, &v10, v12);
  ++*(a1 + 512);
  v6 = *(a1 + 496);
  v7 = *&v10.var0;
  v8 = *&v10.var0 >> 1;
  v9 = MurmurHash3_x64_128(&v11, 4uLL, 0, v12);
  *(a1 + 496) = ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v7 >> 3) + (v8 << 6) - 0x61C8864680B583E9 + ((v12[1] + (v12[0] << 6) + (v12[0] >> 2) - 0x61C8864680B583E9) ^ v12[0])) ^ (v7 >> 1))) ^ v6;
  *(a1 + 518) |= 4u;
  if (*&v10.var0)
  {
    if (*&v10.var0)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t a3)
{
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v11);
  v7 = HIDWORD(v12);
  if (HIDWORD(v12) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::Optional<re::mtl::TextureSwizzleChannels>>(a1, &v11, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 32 * v7;
  v10 = *(v9 + 24);
  result = v9 + 24;
  if (v10)
  {
    if ((*a3 & 1) == 0)
    {
      *result = 0;
      return result;
    }
  }

  else
  {
    if ((*a3 & 1) == 0)
    {
      return result;
    }

    *result = 1;
  }

  *(result + 1) = *(a3 + 1);
  return result;
}

void re::ecs2::SerializableMaterialParameterBlock::swizzleForTexture(re::ecs2::SerializableMaterialParameterBlock *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v9 = 0;
  v10 = &str_67;
  v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v9 >> 31) ^ (v9 >> 1))) >> 27));
  v7 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 112, &v9, v6 ^ (v6 >> 31), v11);
  if (v12 == 0x7FFFFFFF)
  {
    if (v9)
    {
      if (v9)
      {
      }
    }
  }

  else
  {
    v8 = *(this + 16) + 32 * v12;
    if (v9)
    {
      if (v9)
      {
      }
    }

    if (*(v8 + 24) == 1)
    {
      *a3 = 1;
      *(a3 + 1) = *(v8 + 25);
      return;
    }
  }

  *a3 = 0;
}

void re::ecs2::SerializableMaterialParameterBlock::clearSwizzleForTexture(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
{
  *&v8.var0 = 0;
  v8.var1 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v8.var0 >> 31) ^ (*&v8.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v8.var0 >> 31) ^ (*&v8.var0 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 112, &v8, v4 ^ (v4 >> 31), v9);
  if (v10 == 0x7FFFFFFF)
  {
    if ((*&v8.var0 & 1) == 0)
    {
      return;
    }

    goto LABEL_8;
  }

  if (*(*(this + 16) + 32 * v10 + 24) == 1)
  {
    LOBYTE(v9[0]) = 0;
    v5 = re::HashTable<re::StringID,re::Optional<re::mtl::TextureSwizzleChannels>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 112, &v8, v9);
  }

  else
  {
    v6 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v8.var0 >> 31) ^ (*&v8.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v8.var0 >> 31) ^ (*&v8.var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 112, &v8, v6 ^ (v6 >> 31), v9);
    v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 112, v9);
  }

  ++*(this + 128);
  var0 = v8.var0;
  *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) + (*&v8.var0 >> 1) - 0x61C8864680B583E9;
  *(this + 259) |= 4u;
  if (var0)
  {
LABEL_8:
    if (*&v8.var0)
    {
    }
  }
}

void re::ecs2::SerializableMaterialParameterBlock::unbindTextureFromSamplers(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
{
  v7 = 0;
  v8 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v7 >> 31) ^ (v7 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v7 >> 31) ^ (v7 >> 1))) >> 27));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, &v7, v4 ^ (v4 >> 31), v9);
  v5 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 16, v9);
  v6 = v7;
  *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) + (v7 >> 1) - 0x61C8864680B583E9;
  *(this + 259) |= 1u;
  if (v6)
  {
    if (v7)
    {
    }
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::tryGetSamplerNameBoundToTexture(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
{
  v8 = 0;
  v9 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 16, &v8, v4 ^ (v4 >> 31), v10);
  v6 = 0;
  if (v11 != 0x7FFFFFFF)
  {
    v6 = *(*(this + 4) + 40 * v11 + 32);
  }

  if (v8)
  {
    if (v8)
    {
    }
  }

  return v6;
}

void re::ecs2::SerializableMaterialParameterBlock::setParameterBinding(uint64_t a1, const char *a2, unsigned int a3, char *a4, char *a5)
{
  *&v35.var0 = 0;
  v35.var1 = &str_67;
  v27 = 0;
  *&v28 = &str_67;
  *(&v28 + 1) = 0;
  v29 = &str_67;
  v30[0] = 1;
  v31 = a3;
  v32 = v27;
  v33 = v28;
  v27 = 0;
  v28 = &str_67;
  v34 = v29;
  v29 = &str_67;
  v12 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1 + 256, &v35, v30);
  if (v30[0] == 1)
  {
    if (BYTE8(v33))
    {
      if (BYTE8(v33))
      {
      }
    }

    *(&v33 + 1) = 0;
    v34 = &str_67;
    if (v32)
    {
      if (v32)
      {
      }
    }

    v32 = 0;
    *&v33 = &str_67;
  }

  if (BYTE8(v28))
  {
    if (BYTE8(v28))
    {
    }
  }

  *(&v28 + 1) = 0;
  v29 = &str_67;
  if (v27)
  {
    if (v27)
    {
    }
  }

  var0 = v35.var0;
  v14 = 73244475 * ((73244475 * (a3 ^ HIWORD(a3))) ^ ((73244475 * (a3 ^ HIWORD(a3))) >> 16));
  v15 = v14 ^ HIWORD(v14);
  if (a4)
  {
    v16 = *a4;
    if (*a4)
    {
      v17 = a4[1];
      if (v17)
      {
        v18 = (a4 + 2);
        do
        {
          v16 = 31 * v16 + v17;
          v19 = *v18++;
          v17 = v19;
        }

        while (v19);
      }
    }
  }

  else
  {
    v16 = 0;
  }

  v20 = v16 & 0x7FFFFFFFFFFFFFFFLL;
  if (a5)
  {
    v21 = *a5;
    if (*a5)
    {
      v22 = a5[1];
      if (v22)
      {
        v23 = (a5 + 2);
        do
        {
          v21 = 31 * v21 + v22;
          v24 = *v23++;
          v22 = v24;
        }

        while (v24);
      }
    }
  }

  else
  {
    v21 = 0;
  }

  v25 = ((*(a1 + 496) << 6) + (*(a1 + 496) >> 2) + (*&v35.var0 >> 1) - 0x61C8864680B583E9) ^ *(a1 + 496);
  v26 = ((v15 << 6) + (v15 >> 2) + v20 - 0x61C8864680B583E9) ^ v15;
  *(a1 + 496) = ((v25 << 6) + (v25 >> 2) - 0x61C8864680B583E9 + (((v26 << 6) + (v26 >> 2) + (v21 & 0x7FFFFFFFFFFFFFFFLL) - 0x61C8864680B583E9) ^ v26)) ^ v25;
  *(a1 + 518) |= 0x20u;
  if (var0)
  {
    if (*&v35.var0)
    {
    }
  }
}

uint64_t re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, unsigned __int8 *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::Optional<re::ecs2::SerializableParameterBinding>>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::Optional<re::ecs2::SerializableParameterBinding>::operator=(*(a1 + 16) + 72 * v7 + 24, a3);
}

unsigned __int8 *re::ecs2::SerializableMaterialParameterBlock::parameterBinding(re::ecs2::SerializableMaterialParameterBlock *this, const char *a2)
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
    }
  }

  else
  {
    v3 = 0;
  }

  v13[0] = 2 * v3;
  v13[1] = a2;
  v7 = 0xBF58476D1CE4E5B9 * (v3 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v3) >> 31));
  v8 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 256, v13, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v14);
  if (v15 == 0x7FFFFFFF)
  {
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    return 0;
  }

  else
  {
    v10 = (*(this + 34) + 72 * v15 + 24);
    if (v13[0])
    {
      if (v13[0])
      {
      }
    }

    v12 = *v10;
    v11 = v10 + 8;
    if (v12)
    {
      return v11;
    }

    else
    {
      return 0;
    }
  }
}

void re::ecs2::SerializableMaterialParameterBlock::markParameterBindingRemoved(re::ecs2::SerializableMaterialParameterBlock *this, char *a2)
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
    }
  }

  else
  {
    v3 = 0;
  }

  *&v14.var0 = 2 * v3;
  v14.var1 = a2;
  v7 = 0xBF58476D1CE4E5B9 * (v3 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v3) >> 31));
  v8 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 256, &v14, (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31), v9);
  if (v10 != 0x7FFFFFFF && *(*(this + 34) + 72 * v10 + 24) == 1)
  {
    v9[0] = 0;
    v8 = re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 256, &v14, v9);
    if (v9[0] == 1)
    {
      if (v12)
      {
        if (v12)
        {
        }
      }

      v12 = 0;
      v13 = &str_67;
      if (v11)
      {
        if (v11)
        {
        }
      }
    }

    ++*(this + 128);
    *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) + (*&v14.var0 >> 1) - 0x61C8864680B583E9;
    *(this + 259) |= 0x20u;
  }

  if (*&v14.var0)
  {
    if (*&v14.var0)
    {
    }
  }
}

void re::ecs2::SerializableMaterialParameterBlock::clearParameters(re::ecs2::SerializableMaterialParameterBlock *this)
{
  v2 = *(this + 108);
  if (v2)
  {
    v3 = 0;
    v4 = *(this + 52);
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
        LODWORD(v3) = *(this + 108);
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
    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 448, (*(this + 52) + 24 * v3 + 8));
    v6 = *(this + 108);
    if (v6 <= v3 + 1)
    {
      v6 = v3 + 1;
    }

    while (v6 - 1 != v3)
    {
      LODWORD(v3) = v3 + 1;
      if ((*(*(this + 52) + 24 * v3) & 0x80000000) != 0)
      {
        goto LABEL_14;
      }
    }

    LODWORD(v3) = v6;
LABEL_14:
    ;
  }

  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(this + 400);
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(this + 304);
  ++*(this + 128);
  v7 = 0xBF58476D1CE4E5B9 * (*(this + 62) ^ (*(this + 62) >> 30));
  *(this + 62) = (0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) ^ ((0x94D049BB133111EBLL * (v7 ^ (v7 >> 27))) >> 31);
}

void re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &memset_pattern_324, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(*(a1 + 16) + v3);
        ++v4;
        v3 += 320;
      }

      while (v4 < *(a1 + 32));
    }

    *(a1 + 28) = 0;
    *(a1 + 32) = 0;
    v5 = *(a1 + 40) + 1;
    *(a1 + 36) = 0x7FFFFFFF;
    *(a1 + 40) = v5;
  }
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::addParameter(re::ecs2::SerializableMaterialParameterBlock *this, StringID *a2, const re::ecs2::SerializedMaterialParameter *a3)
{
  v10[2] = *MEMORY[0x1E69E9840];
  ++*(this + 128);
  v6 = *(this + 62);
  v7 = *&a2->var0;
  v8 = *&a2->var0 >> 1;
  MurmurHash3_x64_128(a3 + 16, 0x40uLL, 0, v10);
  *(this + 62) = ((v6 << 6) + (v6 >> 2) - 0x61C8864680B583E9 + (((v7 >> 3) + (v8 << 6) - 0x61C8864680B583E9 + ((v10[1] + (v10[0] << 6) + (v10[0] >> 2) - 0x61C8864680B583E9) ^ v10[0])) ^ (v7 >> 1))) ^ v6;
  re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 400, a2);
  return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 304, a2, a3);
}

uint64_t re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, StringID *a2, const re::ecs2::SerializedMaterialParameter *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::ecs2::SerializedMaterialParameter const&>(a1, &v8, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 320 * HIDWORD(v9) + 32;
  }
}

{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::ecs2::SerializedMaterialParameter>(a1, v8, v9, a2, a3);
  }

  else
  {
    return *(a1 + 16) + 320 * HIDWORD(v9) + 32;
  }
}

BOOL re::ecs2::SerializableMaterialParameterBlock::removeParameter(re::ecs2::SerializableMaterialParameterBlock *this, StringID *a2)
{
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, a2, v4 ^ (v4 >> 31), &v11);
  v6 = HIDWORD(v12);
  if (HIDWORD(v12) != 0x7FFFFFFF)
  {
    if (*&a2->var0)
    {
      re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 448, a2);
    }

    else
    {
      var1 = a2->var1;
      v11 = 0;
      v12 = &str_67;
      v8 = re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(this + 448, &v11);
      if (v11)
      {
        if (v11)
        {
        }
      }
    }

    re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(this + 400, a2);
    v9 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1))) >> 27));
    re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 304, a2, v9 ^ (v9 >> 31), &v11);
    re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 304, &v11);
    ++*(this + 128);
    *(this + 62) ^= (*(this + 62) << 6) + (*(this + 62) >> 2) + (*&a2->var0 >> 1) - 0x61C8864680B583E9;
  }

  return v6 != 0x7FFFFFFF;
}

uint64_t re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::remove(uint64_t a1, void *a2)
{
  v2 = *(a1 + 24);
  if (!v2)
  {
    return 0;
  }

  v5 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  v6 = ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31)) % v2;
  v7 = *(a1 + 8);
  v8 = *(v7 + 4 * v6);
  if (v8 == 0x7FFFFFFF)
  {
    return 0;
  }

  v10 = *(a1 + 16);
  if (!re::StringID::operator==((v10 + 24 * v8 + 8), a2))
  {
    while (1)
    {
      v11 = v8;
      v12 = *(v10 + 24 * v8);
      v8 = v12 & 0x7FFFFFFF;
      if ((v12 & 0x7FFFFFFF) == 0x7FFFFFFF)
      {
        return 0;
      }

      if (re::StringID::operator==((v10 + 24 * v8 + 8), a2))
      {
        *(v10 + 24 * v11) = *(v10 + 24 * v11) & 0x80000000 | *(v10 + 24 * v8) & 0x7FFFFFFF;
        goto LABEL_10;
      }
    }
  }

  *(v7 + 4 * v6) = *(v10 + 24 * v8) & 0x7FFFFFFF;
LABEL_10:
  v13 = *(a1 + 16);
  v14 = (v13 + 24 * v8);
  v15 = *v14;
  if (*v14 < 0)
  {
    *v14 = v15 & 0x7FFFFFFF;
    re::StringID::destroyString((v14 + 2));
    v13 = *(a1 + 16);
    v15 = *(v13 + 24 * v8);
  }

  v16 = *(a1 + 40);
  *(v13 + 24 * v8) = *(a1 + 36) | v15 & 0x80000000;
  --*(a1 + 28);
  *(a1 + 36) = v8;
  *(a1 + 40) = v16 + 1;
  return 1;
}

_anonymous_namespace_ *re::ecs2::SerializableMaterialParameterBlock::populateMaterialParameterDataInMaterialFileFromBlock(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v71 = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 336);
  if (v4)
  {
    v5 = 0;
    v6 = *(a2 + 320);
    while ((*v6 & 0x80000000) == 0)
    {
      v6 += 80;
      if (v4 == ++v5)
      {
        LODWORD(v5) = *(a2 + 336);
        break;
      }
    }
  }

  else
  {
    LODWORD(v5) = 0;
  }

  if (v5 != v4)
  {
    v7 = *(a2 + 320);
    while (1)
    {
      v8 = v7 + 320 * v5;
      v11 = *(v8 + 32);
      v10 = (v8 + 32);
      v9 = v11;
      v12 = v10 - 24;
      v13 = (v11 - 1);
      if (v13 <= 0x3F)
      {
        if (((1 << v13) & 0x38003801803FFLL) != 0)
        {
          v14 = *(v10 - 2);
          re::ecs2::SerializedMaterialParameter::toString(&v56, v10);
          re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::addOrReplace<void>(v3 + 56, v14, &v56);
          result = v56;
          if (v56 && (BYTE8(v56) & 1) != 0)
          {
            result = (*(*v56 + 40))();
          }

          goto LABEL_14;
        }

        if (v13 == 63)
        {
          break;
        }
      }

      if (v9 == 192)
      {
        v23 = *(v10 - 2);
        re::ecs2::SerializedMaterialParameter::asSampler(&v56, v10);
        v54 = v23;
        buf = 0uLL;
        v69 = 0;
        v24 = re::Hash<re::DynamicString>::operator()(&v66, v23);
        re::HashTable<re::DynamicString,re::TechniqueFunctionConstant,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v3 + 248, &v54, v24, &buf);
        v25 = HIDWORD(buf);
        if (HIDWORD(buf) == 0x7FFFFFFF)
        {
          v26 = re::HashTable<re::DynamicString,re::OptionalMaterialSamplerData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3 + 248, DWORD2(buf), buf);
          v27 = v54;
          *(v26 + 40) = v56;
          v28 = BYTE1(v56);
          *(v26 + 41) = BYTE1(v56);
          if (v28 == 1)
          {
            *(v26 + 42) = BYTE2(v56);
          }

          v29 = BYTE3(v56);
          *(v26 + 43) = BYTE3(v56);
          if (v29 == 1)
          {
            *(v26 + 44) = BYTE4(v56);
          }

          v30 = BYTE8(v56);
          *(v26 + 48) = BYTE8(v56);
          if (v30 == 1)
          {
            *(v26 + 52) = HIDWORD(v56);
          }

          v31 = v57;
          *(v26 + 56) = v57;
          if (v31 == 1)
          {
            *(v26 + 60) = DWORD1(v57);
          }

          v32 = BYTE8(v57);
          *(v26 + 64) = BYTE8(v57);
          if (v32 == 1)
          {
            *(v26 + 68) = HIDWORD(v57);
          }

          v33 = v58;
          *(v26 + 72) = v58;
          if (v33 == 1)
          {
            *(v26 + 76) = v59;
          }

          v34 = v60;
          *(v26 + 80) = v60;
          if (v34 == 1)
          {
            *(v26 + 84) = DWORD1(v60);
          }

          v35 = BYTE8(v60);
          *(v26 + 88) = BYTE8(v60);
          if (v35 == 1)
          {
            *(v26 + 92) = HIDWORD(v60);
          }

          v36 = v61;
          *(v26 + 96) = v61;
          if (v36 == 1)
          {
            *(v26 + 100) = DWORD1(v61);
          }

          v37 = BYTE8(v61);
          *(v26 + 104) = BYTE8(v61);
          if (v37 == 1)
          {
            *(v26 + 108) = HIDWORD(v61);
          }

          v38 = v62;
          *(v26 + 112) = v62;
          if (v38 == 1)
          {
            *(v26 + 116) = DWORD1(v62);
          }

          v39 = BYTE8(v62);
          *(v26 + 120) = BYTE8(v62);
          if (v39 == 1)
          {
            *(v26 + 124) = HIDWORD(v62);
          }

          v40 = v63;
          *(v26 + 128) = v63;
          if (v40 == 1)
          {
            *(v26 + 136) = *(&v63 + 1);
          }

          ++*(v3 + 72);
        }

        else
        {
          ++*(v3 + 72);
          result = re::OptionalMaterialSamplerData::operator=(*(v3 + 33) + 152 * v25 + 40, &v56);
        }
      }

LABEL_14:
      if (*(a2 + 336) <= (v5 + 1))
      {
        v15 = v5 + 1;
      }

      else
      {
        v15 = *(a2 + 336);
      }

      v7 = *(a2 + 320);
      while (v15 - 1 != v5)
      {
        LODWORD(v5) = v5 + 1;
        if ((*(v7 + 320 * v5) & 0x80000000) != 0)
        {
          goto LABEL_22;
        }
      }

      LODWORD(v5) = v15;
LABEL_22:
      if (v5 == v4)
      {
        return result;
      }
    }

    v56 = 0u;
    v57 = 0u;
    v16 = re::DynamicString::setCapacity(&v56, 0);
    v58 = 0;
    v60 = 0u;
    v61 = 0u;
    v17 = re::DynamicString::setCapacity(&v60, 0);
    v63 = 0u;
    v62 = 0u;
    re::DynamicString::setCapacity(&v62, 0);
    v64 = 0;
    re::ecs2::SerializedMaterialParameter::toString(&v54, v10);
    re::MaterialTextureParam::MaterialTextureParam(&buf, &v54);
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__move_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1>>(&v56, &buf);
    if (v70 != -1)
    {
      __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix[v70](&v66, &buf);
    }

    v70 = -1;
    if (v54 && (v55 & 1) != 0)
    {
      (*(*v54 + 40))();
    }

    v18 = *(v10 - 2);
    if (v18)
    {
      v19 = *v18;
      if (*v18)
      {
        v20 = v18[1];
        if (v20)
        {
          v21 = (v18 + 2);
          do
          {
            v19 = 31 * v19 + v20;
            v22 = *v21++;
            v20 = v22;
          }

          while (v22);
        }
      }
    }

    else
    {
      v19 = 0;
    }

    v54 = 2 * v19;
    v55 = v18;
    v41 = 0xBF58476D1CE4E5B9 * (v19 & 0x7FFFFFFFFFFFFFFFLL ^ ((2 * v19) >> 31));
    v42 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2 + 16, &v54, (0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) ^ ((0x94D049BB133111EBLL * (v41 ^ (v41 >> 27))) >> 31), &buf);
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v43 = *re::graphicsLogObjects(v42);
      if (os_log_type_enabled(v43, OS_LOG_TYPE_DEFAULT))
      {
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v55;
        _os_log_impl(&dword_1E1C61000, v43, OS_LOG_TYPE_DEFAULT, "Texture block for texture %s is missing sampler binding information.", &buf, 0xCu);
      }
    }

    else
    {
      v44 = strlen(*(*(a2 + 32) + 40 * HIDWORD(buf) + 32));
      *&buf = *(*(a2 + 32) + 40 * HIDWORD(buf) + 32);
      *(&buf + 1) = v44;
      re::DynamicString::operator=(&v60, &buf);
    }

    v45 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v54 >> 31) ^ (v54 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v54 >> 31) ^ (v54 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2 + 64, &v54, v45 ^ (v45 >> 31), &buf);
    if (HIDWORD(buf) != 0x7FFFFFFF)
    {
      v46 = *(*(a2 + 80) + 32 * HIDWORD(buf) + 24);
      if ((v64 & 1) == 0)
      {
        v64 = 1;
      }

      v65 = v46;
    }

    v66 = *(v12 + 1);
    buf = 0uLL;
    v69 = 0;
    v47 = re::Hash<re::DynamicString>::operator()(&v67, v66);
    re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::findEntry<char const*>(v3 + 200, &v66, v47, &buf);
    v48 = HIDWORD(buf);
    if (HIDWORD(buf) == 0x7FFFFFFF)
    {
      v49 = re::HashTable<re::DynamicString,re::MaterialTextureBlockData,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::allocEntry(v3 + 200, DWORD2(buf), buf);
      v50 = v66;
      *(v49 + 40) = 0;
      *(v49 + 72) = -1;
      std::__variant_detail::__ctor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_construct[abi:nn200100]<std::__variant_detail::__copy_constructor<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>((v49 + 40), &v56);
      re::DynamicString::DynamicString((v49 + 80), &v60);
      v51 = re::DynamicString::DynamicString((v49 + 112), &v62);
      v52 = v64;
      *(v49 + 144) = v64;
      if (v52 == 1)
      {
        *(v49 + 148) = v65;
      }

      ++*(v3 + 60);
      goto LABEL_85;
    }

    ++*(v3 + 60);
    v53 = *(v3 + 27) + 160 * v48;
    std::__variant_detail::__assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>>::__generic_assign[abi:nn200100]<std::__variant_detail::__copy_assignment<std::__variant_detail::__traits<re::DynamicString,re::AssetHandle>,(std::__variant_detail::_Trait)1> const&>(v53 + 40, &v56);
    re::DynamicString::operator=((v53 + 80), &v60);
    v51 = re::DynamicString::operator=((v53 + 112), &v62);
    if (*(v53 + 144))
    {
      if ((v64 & 1) == 0)
      {
        *(v53 + 144) = 0;
        goto LABEL_85;
      }
    }

    else
    {
      if ((v64 & 1) == 0)
      {
        goto LABEL_85;
      }

      *(v53 + 144) = 1;
    }

    *(v53 + 148) = v65;
LABEL_85:
    if (v54)
    {
      if (v54)
      {
      }
    }

    if (v62)
    {
      if (BYTE8(v62))
      {
        (*(*v62 + 40))();
      }

      v63 = 0u;
      v62 = 0u;
    }

    result = v60;
    if (v60)
    {
      if (BYTE8(v60))
      {
        result = (*(*v60 + 40))();
      }

      v61 = 0u;
      v60 = 0u;
    }

    if (v58 != -1)
    {
      result = __const__ZNSt3__116__variant_detail12__visitation6__base11__visit_altB8nn200100IZNS0_6__dtorINS0_8__traitsIJN2re13DynamicStringENS6_11AssetHandleEEEELNS0_6_TraitE1EE9__destroyB8nn200100EvEUlRT_E_JRSB_EEEDcOSC_DpOT0____fmatrix[v58](&buf, &v56);
    }

    goto LABEL_14;
  }

  return result;
}

uint64_t re::ecs2::SerializableMaterialParameterBlock::sendSystemUpdateEnd()
{
  v0 = qword_1EE1AFB58;
  if (qword_1EE1AFB58)
  {
    v1 = *(qword_1EE1AFB58 + 16);
    if (v1)
    {
      v2 = *(qword_1EE1AFB58 + 32);
      v3 = 8 * v1;
      do
      {
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(*v2 + 400);
        re::HashSetBase<re::StringID,re::StringID,re::internal::ValueAsKey<re::StringID>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(*v2 + 448);
        v4 = *v2++;
        *(v4 + 504) = *(v4 + 496);
        *(v4 + 518) = 0;
        v3 -= 8;
      }

      while (v3);
      v0 = qword_1EE1AFB58;
      v5 = *(qword_1EE1AFB58 + 16);
      v6 = *(qword_1EE1AFB58 + 32);
      *(qword_1EE1AFB58 + 16) = 0;
      if (v5)
      {
        v7 = 8 * v5;
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v6 += 8;
          v7 -= 8;
        }

        while (v7);
      }
    }

    else
    {
      *(qword_1EE1AFB58 + 16) = 0;
    }

    ++*(v0 + 24);
  }

  return 0;
}

unsigned int *re::snapshot::operator<<<re::snapshot::EncoderRaw,re::StringID,re::StringID>(unsigned int *a1, uint64_t a2)
{
  __src = *(a2 + 28);
  result = re::snapshot::BufferEncoder::writeRaw<true>(a1, &__src, 8uLL);
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 10;
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

  if (v6 != v5)
  {
    v9 = *(a2 + 16);
    do
    {
      v10 = v9 + 40 * v6;
      v11 = strlen(*(v10 + 16));
      re::snapshot::EncoderRaw::serializeString(a1, *(v10 + 16), v11);
      v12 = strlen(*(v10 + 32));
      result = re::snapshot::EncoderRaw::serializeString(a1, *(v10 + 32), v12);
      if (*(a2 + 32) <= (v6 + 1))
      {
        v13 = v6 + 1;
      }

      else
      {
        v13 = *(a2 + 32);
      }

      v9 = *(a2 + 16);
      while (v13 - 1 != v6)
      {
        LODWORD(v6) = v6 + 1;
        if ((*(v9 + 40 * v6) & 0x80000000) != 0)
        {
          goto LABEL_17;
        }
      }

      LODWORD(v6) = v13;
LABEL_17:
      ;
    }

    while (v6 != v5);
  }

  return result;
}

uint64_t *re::snapshot::DecoderRaw::operator>>(uint64_t *result, _WORD *a2)
{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 1)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 2uLL, v3);
  }

  *a2 = *v2;
  result[3] += 2;
  return result;
}

{
  v2 = result[3];
  v3 = result[4] - v2;
  if (v3 <= 1)
  {
    return re::snapshot::BufferDecoder::error(result, "overrun: attempted to read %zu bytes, only %zu remaining", 2uLL, v3);
  }

  *a2 = *v2;
  result[3] += 2;
  return result;
}

double re::snapshot::operator>><re::snapshot::DecoderRaw,re::StringID,re::StringID>(re::snapshot::DecoderRaw *a1, uint64_t a2)
{
  v43 = 0;
  v39 = *a2;
  *a2 = 0;
  *(a2 + 8) = 0;
  v40 = *(a2 + 16);
  *(a2 + 16) = 0;
  v41 = *(a2 + 24);
  *(a2 + 24) = xmmword_1E3058120;
  v42 = 1;
  re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a2);
  if (re::snapshot::DecoderRaw::beginDictionary(a1, &v43))
  {
    v4 = v43;
    if (v43 == -1)
    {
      *&v38.var0 = 0;
      v38.var1 = &str_67;
      v5 = -2;
    }

    else
    {
      re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a2, v43);
      *&v38.var0 = 0;
      v38.var1 = &str_67;
      if (!v4)
      {
        return re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v39);
      }

      v5 = v4 - 1;
    }

    v6 = v5 + 1;
    do
    {
      *&v37.var0 = 0;
      v7 = re::snapshot::DecoderRaw::beginString(a1, &v37);
      if (v7)
      {
        v8 = *&v37.var0;
        v9 = *(a1 + 3);
        v10 = *(a1 + 4) - v9;
        if (v10 >= *&v37.var0)
        {
          v10 = *&v37.var0;
        }

        *(a1 + 3) = &v9[v10];
        v45 = 0;
        v46 = &str_67;
        v12 = v45;
        v13 = v46;
        v45 = 0;
        v46 = &str_67;
        var0 = v38.var0;
        var1 = v38.var1;
        *&v38.var0 = v12;
        v38.var1 = v13;
        if (var0)
        {
          if (v45)
          {
            if (v45)
            {
            }
          }
        }
      }

      v17 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v38.var0 >> 31) ^ (*&v38.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v38.var0 >> 31) ^ (*&v38.var0 >> 1))) >> 27));
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(&v39, &v38, v17 ^ (v17 >> 31), &v45);
      if (HIDWORD(v46) == 0x7FFFFFFF)
      {
        *&v37.var0 = 0;
        v37.var1 = &str_67;
        v44 = 0;
        v18 = re::snapshot::DecoderRaw::beginString(a1, &v44);
        if (v18)
        {
          v19 = v44;
          v20 = *(a1 + 3);
          v21 = *(a1 + 4) - v20;
          if (v21 >= v44)
          {
            v21 = v44;
          }

          *(a1 + 3) = &v20[v21];
          v45 = 0;
          v46 = &str_67;
          v23 = v45;
          v24 = v46;
          v45 = 0;
          v46 = &str_67;
          v25 = v37.var0;
          v26 = v37.var1;
          *&v37.var0 = v23;
          v37.var1 = v24;
          if (v25)
          {
            if (v45)
            {
              if (v45)
              {
              }
            }
          }
        }

        v28 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(a2, &v38, &v37);
        if (*&v37.var0)
        {
          if (*&v37.var0)
          {
          }
        }
      }

      else
      {
        v29 = v40 + 40 * HIDWORD(v46);
        *&v37.var0 = 0;
        v30 = re::snapshot::DecoderRaw::beginString(a1, &v37);
        if (v30)
        {
          v31 = *&v37.var0;
          v32 = *(a1 + 3);
          v33 = *(a1 + 4) - v32;
          if (v33 >= *&v37.var0)
          {
            v33 = *&v37.var0;
          }

          *(a1 + 3) = &v32[v33];
          v45 = 0;
          v46 = &str_67;
          v34 = re::StringID::operator=((v29 + 24), &v45);
          if (v45)
          {
            if (v45)
            {
            }
          }
        }

        v45 = 0;
        v46 = 0;
        v47 = 0;
        v35 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v38.var0 >> 31) ^ (*&v38.var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v38.var0 >> 31) ^ (*&v38.var0 >> 1))) >> 27));
        v28 = re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a2, &v38, v35 ^ (v35 >> 31), &v45);
        if (HIDWORD(v46) == 0x7FFFFFFF)
        {
          v28 = re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID const&,re::StringID>(a2, &v45, &v38, (v29 + 24));
        }
      }

      --v6;
    }

    while (v6);
    if (*&v38.var0)
    {
      if (*&v38.var0)
      {
      }
    }
  }

  return re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(&v39);
}

void *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v15);
  v7 = HIDWORD(v16);
  if (HIDWORD(v16) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::ecs2::SerializedMaterialParameter>(a1, v15, v16, a2, a3);
  }

  ++*(a1 + 40);
  v9 = *(a1 + 16) + 320 * v7;
  v8 = v9 + 32;
  *(v9 + 32) = *a3;
  v10 = *(a3 + 16);
  v11 = *(a3 + 32);
  v12 = *(a3 + 64);
  *(v9 + 80) = *(a3 + 48);
  *(v9 + 96) = v12;
  *(v9 + 48) = v10;
  *(v9 + 64) = v11;
  re::AssetHandle::operator=(v9 + 112, (a3 + 80));
  re::OptionalMaterialSamplerData::operator=(v9 + 136, a3 + 104);
  re::DynamicArray<BOOL>::operator=(v9 + 240, (a3 + 208));
  *(v9 + 280) = *(a3 + 248);
  *(v9 + 288) = *(a3 + 256);
  v13 = *(a3 + 280);
  *(v9 + 296) = *(a3 + 264);
  *(v9 + 312) = v13;
  return v8;
}

void *re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::add(uint64_t a1, uint64_t *a2, const re::ecs2::SerializedMaterialParameter *a3)
{
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v8);
  if (HIDWORD(v9) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::ecs2::SerializedMaterialParameter>(a1, v8, v9, a2, a3);
  }

  else
  {
    return (*(a1 + 16) + 320 * HIDWORD(v9) + 32);
  }
}

_anonymous_namespace_ *re::ecs2::MaterialParameterBlockArrayComponent::createFlattenedMaterialFileFromBlock@<X0>(_anonymous_namespace_ *a1@<X0>, unint64_t a2@<X1>, re::MaterialAsset *a3@<X2>, uint64_t a4@<X8>)
{
  *(a4 + 8) = 0;
  *(a4 + 16) = 0;
  *(a4 + 24) = 0;
  result = re::DynamicString::setCapacity(a4, 0);
  *(a4 + 32) = 0u;
  *(a4 + 76) = 0u;
  *(a4 + 48) = 0u;
  *(a4 + 64) = 0u;
  *(a4 + 92) = 0x7FFFFFFFLL;
  *(a4 + 104) = 0u;
  *(a4 + 120) = 0u;
  *(a4 + 136) = 0;
  *(a4 + 140) = 0x7FFFFFFFLL;
  *(a4 + 152) = 0u;
  *(a4 + 168) = 0u;
  *(a4 + 184) = 0;
  *(a4 + 188) = 0x7FFFFFFFLL;
  *(a4 + 200) = 0u;
  *(a4 + 216) = 0u;
  *(a4 + 232) = 0;
  *(a4 + 236) = 0x7FFFFFFFLL;
  *(a4 + 280) = 0;
  *(a4 + 248) = 0u;
  *(a4 + 264) = 0u;
  *(a4 + 284) = 0x7FFFFFFFLL;
  *(a4 + 296) = 0u;
  *(a4 + 312) = 0u;
  *(a4 + 328) = 0;
  *(a4 + 332) = 0x7FFFFFFFLL;
  *(a4 + 344) = 0;
  *(a4 + 346) = 0;
  *(a4 + 348) = 0;
  *(a4 + 350) = 0;
  *(a4 + 352) = 0;
  *(a4 + 354) = 0;
  *(a4 + 356) = 0;
  *(a4 + 358) = 0;
  *(a4 + 360) = 0;
  *(a4 + 362) = 0;
  *(a4 + 400) = 0;
  *(a4 + 376) = 0;
  *(a4 + 384) = 0;
  *(a4 + 392) = 0;
  *(a4 + 368) = 0;
  *(a4 + 408) = 0;
  if (*(a3 + 1))
  {
    result = re::AssetHandle::blockUntilLoaded<re::MaterialAsset>(a3);
    if (result)
    {
      v9 = result;
      re::DynamicString::operator=(a4, (result + 8));
      re::AssetHandle::operator=(a4 + 32, v9 + 5);
      re::MaterialParameterData::operator=((a4 + 56), v9 + 64);
      re::HashTable<re::DynamicString,re::DynamicString,re::Hash<re::DynamicString>,re::EqualTo<re::DynamicString>,true,false>::operator=((a4 + 296), v9 + 304);
      re::MaterialRenderFlags::operator=((a4 + 344), v9 + 352);
      result = re::DynamicArray<re::FunctionLink>::operator=(a4 + 368, v9 + 47);
      *(a4 + 408) = *(v9 + 416);
    }
  }

  if (*(a1 + 6) > a2)
  {
    v10 = (*(a1 + 8) + 32 * a2);
    v11 = *v10;
    if (!*v10)
    {
      v11 = v10[1];
    }

    return re::ecs2::SerializableMaterialParameterBlock::populateMaterialParameterDataInMaterialFileFromBlock(a4, v11);
  }

  return result;
}

uint64_t re::DynamicArray<re::ecs2::SerializableMaterialParameterBlockHandle>::operator[](uint64_t a1, unint64_t a2)
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

void re::ecs2::introspect_SerializableParameterBindingType(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AFB60, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1AFB68, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFB68))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1AFEF0, "SerializableParameterBindingType", 4, 4, 1, 1);
      qword_1EE1AFEF0 = &unk_1F5D0C658;
      qword_1EE1AFF30 = &re::ecs2::introspect_SerializableParameterBindingType(BOOL)::enumTable;
      dword_1EE1AFF00 = 9;
      __cxa_guard_release(&qword_1EE1AFB68);
    }

    if (_MergedGlobals_354)
    {
      break;
    }

    _MergedGlobals_354 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1AFEF0, a2);
    v39 = 0x229A01AB15C6876ALL;
    v40 = "SerializableParameterBindingType";
    v43 = 208862;
    v44 = "int";
    v4 = v42[0];
    v5 = v42[1];
    if (v43)
    {
      if (v43)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1AFF30;
      v43 = v4;
      v44 = v5;
      re::TypeBuilder::beginEnumType(v42, &v39, 1, 1, &v43);
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
            *&v41.var0 = 2 * v11;
            v41.var1 = v10;
            re::TypeBuilder::addEnumConstant(v42, v15, &v41);
            if (*&v41.var0)
            {
              if (*&v41.var0)
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
              *&v41.var0 = 2 * v20;
              v41.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v42, v24, &v41);
              if (*&v41.var0)
              {
                if (*&v41.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v42, v26);
      xmmword_1EE1AFF10 = v41;
      if (v39)
      {
        if (v39)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v40);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1AFB60);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Invalid";
      qword_1EE1AFD08 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Constant";
      qword_1EE1AFD10 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Texture";
      qword_1EE1AFD18 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 1) = 3;
      *(v36 + 2) = "Buffer";
      qword_1EE1AFD20 = v36;
      v37 = re::introspectionAllocator(v36);
      v38 = (*(*v37 + 32))(v37, 24, 8);
      *v38 = 1;
      *(v38 + 8) = 4;
      *(v38 + 16) = "Sampler";
      qword_1EE1AFD28 = v38;
      __cxa_guard_release(&qword_1EE1AFB60);
    }
  }
}

void *re::ecs2::allocInfo_SerializableParameterBinding(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1AFB70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFB70))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1B0158, "SerializableParameterBinding");
    __cxa_guard_release(&qword_1EE1AFB70);
  }

  return &unk_1EE1B0158;
}

void re::ecs2::initInfo_SerializableParameterBinding(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0xB51CBC288A0F4BB6;
  v18[1] = "SerializableParameterBinding";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1AFB78, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1AFB78);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_SerializableParameterBindingType(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "type";
      *(v8 + 16) = &qword_1EE1AFEF0;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1AFCA8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::StringID>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "structName";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x800000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1AFCB0 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::IntrospectionInfo<re::StringID>::get(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "memberName";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1AFCB8 = v16;
      __cxa_guard_release(&qword_1EE1AFB78);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1AFCA8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::SerializableParameterBinding>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::SerializableParameterBinding>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::SerializableParameterBinding>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::SerializableParameterBinding>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v17 = v19;
}

re::StringID *re::internal::defaultConstruct<re::ecs2::SerializableParameterBinding>(uint64_t a1, uint64_t a2, _DWORD *a3)
{
  *a3 = 0;
  v3 = (a3 + 6);
  re::StringID::invalid((a3 + 2));
  return re::StringID::invalid(v3);
}

void re::internal::defaultDestruct<re::ecs2::SerializableParameterBinding>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  re::StringID::destroyString((a3 + 24));

  re::StringID::destroyString((a3 + 8));
}

re::StringID *re::internal::defaultConstructV2<re::ecs2::SerializableParameterBinding>(_DWORD *a1)
{
  *a1 = 0;
  v1 = (a1 + 6);
  re::StringID::invalid((a1 + 2));
  return re::StringID::invalid(v1);
}

void re::internal::defaultDestructV2<re::ecs2::SerializableParameterBinding>(uint64_t a1)
{
  re::StringID::destroyString((a1 + 24));

  re::StringID::destroyString((a1 + 8));
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AFC10, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC10))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AFF38);
    qword_1EE1AFF38 = &unk_1F5CF83E0;
    __cxa_guard_release(&qword_1EE1AFC10);
  }

  if ((byte_1EE1AFB31 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = v2;
    v4 = qword_1EE1AFB50;
    if (!qword_1EE1AFB50)
    {
      v4 = re::ecs2::allocInfo_SerializedMaterialParameter(v2);
      qword_1EE1AFB50 = v4;
      re::ecs2::initInfo_SerializedMaterialParameter(v4, v5);
    }

    if ((byte_1EE1AFB31 & 1) == 0)
    {
      byte_1EE1AFB31 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AFF38, 0);
      qword_1EE1AFF48 = 0x3000000007;
      dword_1EE1AFF50 = v6;
      word_1EE1AFF54 = 0;
      *&xmmword_1EE1AFF58 = 0;
      *(&xmmword_1EE1AFF58 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AFF68 = v3;
      qword_1EE1AFF70 = 0;
      qword_1EE1AFF78 = v4;
      qword_1EE1AFF80 = 0;
      qword_1EE1AFF38 = &unk_1F5CF83E0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1AFF38, &v23);
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

      v10 = *(v3 + 32);
      v18 = *(v4 + 2);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::ecs2::SerializedMaterialParameter,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AFF58 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>>::get(int a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AFC18, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC18))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AFF88);
    qword_1EE1AFF88 = &unk_1F5CF8480;
    __cxa_guard_release(&qword_1EE1AFC18);
  }

  if (a1)
  {
    if (byte_1EE1AFB32)
    {
      return;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v32);
    v3 = byte_1EE1AFB32;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v32);
    if (v3)
    {
      return;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::introspect_size_t(1, a2);
  v8 = v6;
  if ((atomic_load_explicit(&qword_1EE1AFC20, memory_order_acquire) & 1) == 0)
  {
    v6 = __cxa_guard_acquire(&qword_1EE1AFC20);
    if (v6)
    {
      re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1AFD70);
      qword_1EE1AFD70 = &unk_1F5CF8520;
      __cxa_guard_release(&qword_1EE1AFC20);
    }
  }

  if ((byte_1EE1AFB33 & 1) == 0)
  {
    v6 = re::introspect_size_t(1, v7);
    if ((byte_1EE1AFB33 & 1) == 0)
    {
      v9 = v6;
      byte_1EE1AFB33 = 1;
      v10 = *(v6 + 24);
      ArcSharedObject::ArcSharedObject(&qword_1EE1AFD70, 0);
      qword_1EE1AFD80 = 0x100000000DLL;
      dword_1EE1AFD88 = v10;
      word_1EE1AFD8C = 0;
      *&xmmword_1EE1AFD90 = 0;
      *(&xmmword_1EE1AFD90 + 1) = 0xFFFFFFFFLL;
      qword_1EE1AFDA0 = v9;
      qword_1EE1AFDA8 = 0;
      qword_1EE1AFD70 = &unk_1F5CF8520;
      re::IntrospectionRegistry::add(v11, v12);
      re::getPrettyTypeName(&qword_1EE1AFD70, &v32);
      if (BYTE8(v32))
      {
        v13 = v33;
      }

      else
      {
        v13 = &v32 + 9;
      }

      if (v32 && (BYTE8(v32) & 1) != 0)
      {
        (*(*v32 + 40))();
      }

      v36 = *(v9 + 32);
      if (v37)
      {
        v35 = v37;
      }

      else
      {
        re::StackScratchAllocator::StackScratchAllocator(v34);
        re::TypeBuilder::TypeBuilder(&v32, v34);
        v40 = v36;
        re::TypeBuilder::beginOptionalType(&v32, &v39, 0x10uLL, 8uLL, &v40);
        re::TypeBuilder::setOptionalAccessors(&v32, re::TypeBuilderHelper::registerOptional<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<unsigned long>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v32, v14);
        re::StackScratchAllocator::~StackScratchAllocator(v34);
      }

      xmmword_1EE1AFD90 = v35;
      if (v39)
      {
        if (v39)
        {
        }
      }
    }
  }

  if ((byte_1EE1AFB32 & 1) == 0)
  {
    byte_1EE1AFB32 = 1;
    v15 = dword_1EE1AFD88;
    ArcSharedObject::ArcSharedObject(&qword_1EE1AFF88, 0);
    qword_1EE1AFF98 = 0x3000000007;
    dword_1EE1AFFA0 = v15;
    word_1EE1AFFA4 = 0;
    *&xmmword_1EE1AFFA8 = 0;
    *(&xmmword_1EE1AFFA8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1AFFB8 = v8;
    qword_1EE1AFFC0 = 0;
    qword_1EE1AFFC8 = &qword_1EE1AFD70;
    qword_1EE1AFFD0 = 0;
    qword_1EE1AFF88 = &unk_1F5CF8480;
    re::IntrospectionRegistry::add(v16, v17);
    re::getPrettyTypeName(&qword_1EE1AFF88, &v32);
    if (BYTE8(v32))
    {
      v18 = v33;
    }

    else
    {
      v18 = &v32 + 9;
    }

    if (v32 && (BYTE8(v32) & 1) != 0)
    {
      (*(*v32 + 40))();
    }

    v19 = *(v8 + 32);
    v27 = xmmword_1EE1AFD90;
    v28 = v19;
    if (v40)
    {
      v26 = v40;
    }

    else
    {
      *&v32 = 0x449AD97C4B77BED4;
      *(&v32 + 1) = "_CompareFunc";
      if (v32)
      {
        if (v32)
        {
        }
      }

      if (!v39)
      {
        v34[0] = 0x449AD97C4B77BED4;
        v34[1] = "_CompareFunc";
        v39 = v32;
        if (v34[0])
        {
          if (v34[0])
          {
          }
        }
      }

      re::TypeInfo::TypeInfo(&v37, &v32 + 8);
      if (!v39 || (v22 = *v38, *&v32 = *(&v39 + 1), *(&v32 + 1) = v22, LODWORD(v33) = -1, (v23 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v37 + 768, &v32)) == 0) || !*v23)
      {
        v35 = v39;
        v36 = v28;
      }

      re::StackScratchAllocator::StackScratchAllocator(v34);
      re::TypeBuilder::TypeBuilder(&v32, v34);
      v30 = v27;
      v31 = v28;
      re::TypeBuilder::beginDictionaryType(&v32, &v29, 1, 0x30uLL, 8uLL, &v31, &v30);
      re::TypeBuilder::setConstructor(&v32, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
      re::TypeBuilder::setDestructor(&v32, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
      re::TypeBuilder::setDictionaryAccessors(&v32, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
      re::TypeBuilder::setDictionaryIterator(&v32, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<unsigned long,re::Optional<unsigned long>,re::PrecalculatedHash,re::EqualTo<unsigned long>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
      re::TypeBuilder::~TypeBuilder(&v32, v24);
      re::StackScratchAllocator::~StackScratchAllocator(v34);
    }

    xmmword_1EE1AFFA8 = v26;
    if (v29)
    {
      if (v29)
      {
      }
    }
  }

  if ((a1 & 1) == 0)
  {
    v25 = re::introspectionSharedMutex(v6);
    std::__shared_mutex_base::unlock(v25);
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AFC28, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC28))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1AFFD8);
    qword_1EE1AFFD8 = &unk_1F5CF85A0;
    __cxa_guard_release(&qword_1EE1AFC28);
  }

  if ((byte_1EE1AFB34 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::IntrospectionInfo<re::StringID>::get(1, v3);
    if ((byte_1EE1AFB34 & 1) == 0)
    {
      v5 = v4;
      byte_1EE1AFB34 = 1;
      v6 = v4[6];
      ArcSharedObject::ArcSharedObject(&qword_1EE1AFFD8, 0);
      qword_1EE1AFFE8 = 0x3000000007;
      dword_1EE1AFFF0 = v6;
      word_1EE1AFFF4 = 0;
      *&xmmword_1EE1AFFF8 = 0;
      *(&xmmword_1EE1AFFF8 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B0008 = v2;
      qword_1EE1B0010 = 0;
      qword_1EE1B0018 = v5;
      qword_1EE1B0020 = 0;
      qword_1EE1AFFD8 = &unk_1F5CF85A0;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1AFFD8, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::StringID,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1AFFF8 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1AFC30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1AFC30))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1B0028);
    qword_1EE1B0028 = &unk_1F5CF8640;
    __cxa_guard_release(&qword_1EE1AFC30);
  }

  if ((byte_1EE1AFB35 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v3 = v2;
    if ((atomic_load_explicit(&qword_1EE1AFC38, memory_order_acquire) & 1) == 0)
    {
      v2 = __cxa_guard_acquire(&qword_1EE1AFC38);
      if (v2)
      {
        re::IntrospectionOptionalBase::IntrospectionOptionalBase(&qword_1EE1AFDB0);
        qword_1EE1AFDB0 = &unk_1F5CF86E0;
        __cxa_guard_release(&qword_1EE1AFC38);
      }
    }

    if ((byte_1EE1AFB36 & 1) == 0)
    {
      v4 = qword_1EE1AFB80;
      if (qword_1EE1AFB80 || (v4 = re::ecs2::allocInfo_SerializableParameterBinding(v2), qword_1EE1AFB80 = v4, re::ecs2::initInfo_SerializableParameterBinding(v4, v5), (byte_1EE1AFB36 & 1) == 0))
      {
        byte_1EE1AFB36 = 1;
        v6 = *(v4 + 6);
        ArcSharedObject::ArcSharedObject(&qword_1EE1AFDB0, 0);
        qword_1EE1AFDC0 = 0x300000000DLL;
        dword_1EE1AFDC8 = v6;
        word_1EE1AFDCC = 0;
        *&xmmword_1EE1AFDD0 = 0;
        *(&xmmword_1EE1AFDD0 + 1) = 0xFFFFFFFFLL;
        qword_1EE1AFDE0 = v4;
        qword_1EE1AFDE8 = 0;
        qword_1EE1AFDB0 = &unk_1F5CF86E0;
        re::IntrospectionRegistry::add(v7, v8);
        re::getPrettyTypeName(&qword_1EE1AFDB0, &v29);
        if (BYTE8(v29))
        {
          v9 = v30;
        }

        else
        {
          v9 = &v29 + 9;
        }

        if (v29 && (BYTE8(v29) & 1) != 0)
        {
          (*(*v29 + 40))();
        }

        v33 = *(v4 + 2);
        if (v34)
        {
          v32 = v34;
        }

        else
        {
          re::StackScratchAllocator::StackScratchAllocator(v31);
          re::TypeBuilder::TypeBuilder(&v29, v31);
          v37 = v33;
          re::TypeBuilder::beginOptionalType(&v29, &v36, 0x30uLL, 8uLL, &v37);
          re::TypeBuilder::setOptionalAccessors(&v29, re::TypeBuilderHelper::registerOptional<re::ecs2::SerializableParameterBinding>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::ecs2::SerializableParameterBinding>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
          re::TypeBuilder::~TypeBuilder(&v29, v11);
          re::StackScratchAllocator::~StackScratchAllocator(v31);
        }

        xmmword_1EE1AFDD0 = v32;
        if (v36)
        {
          if (v36)
          {
          }
        }
      }
    }

    if ((byte_1EE1AFB35 & 1) == 0)
    {
      byte_1EE1AFB35 = 1;
      v12 = dword_1EE1AFDC8;
      ArcSharedObject::ArcSharedObject(&qword_1EE1B0028, 0);
      qword_1EE1B0038 = 0x3000000007;
      dword_1EE1B0040 = v12;
      word_1EE1B0044 = 0;
      *&xmmword_1EE1B0048 = 0;
      *(&xmmword_1EE1B0048 + 1) = 0xFFFFFFFFLL;
      qword_1EE1B0058 = v3;
      qword_1EE1B0060 = 0;
      qword_1EE1B0068 = &qword_1EE1AFDB0;
      qword_1EE1B0070 = 0;
      qword_1EE1B0028 = &unk_1F5CF8640;
      re::IntrospectionRegistry::add(v13, v14);
      re::getPrettyTypeName(&qword_1EE1B0028, &v29);
      if (BYTE8(v29))
      {
        v15 = v30;
      }

      else
      {
        v15 = &v29 + 9;
      }

      if (v29 && (BYTE8(v29) & 1) != 0)
      {
        (*(*v29 + 40))();
      }

      v16 = *(v3 + 32);
      v24 = xmmword_1EE1AFDD0;
      v25 = v16;
      if (v37)
      {
        v23 = v37;
      }

      else
      {
        *&v29 = 0x449AD97C4B77BED4;
        *(&v29 + 1) = "_CompareFunc";
        if (v29)
        {
          if (v29)
          {
          }
        }

        if (!v36)
        {
          v31[0] = 0x449AD97C4B77BED4;
          v31[1] = "_CompareFunc";
          v36 = v29;
          if (v31[0])
          {
            if (v31[0])
            {
            }
          }
        }

        re::TypeInfo::TypeInfo(&v34, &v29 + 8);
        if (!v36 || (v20 = *v35, *&v29 = *(&v36 + 1), *(&v29 + 1) = v20, LODWORD(v30) = -1, (v21 = re::HashTable<re::internal::TypeAttributeKey,re::internal::TypeAttributeData,re::Hash<re::internal::TypeAttributeKey>,re::EqualTo<re::internal::TypeAttributeKey>,true,false>::tryGet(v34 + 768, &v29)) == 0) || !*v21)
        {
          v32 = v36;
          v33 = v25;
        }

        re::StackScratchAllocator::StackScratchAllocator(v31);
        re::TypeBuilder::TypeBuilder(&v29, v31);
        v27 = v24;
        v28 = v25;
        re::TypeBuilder::beginDictionaryType(&v29, &v26, 1, 0x30uLL, 8uLL, &v28, &v27);
        re::TypeBuilder::setConstructor(&v29, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v29, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v29, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v29, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::Optional<re::ecs2::SerializableParameterBinding>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v29, v22);
        re::StackScratchAllocator::~StackScratchAllocator(v31);
      }

      xmmword_1EE1B0048 = v23;
      if (v26)
      {
        if (v26)
        {
        }
      }
    }
  }
}