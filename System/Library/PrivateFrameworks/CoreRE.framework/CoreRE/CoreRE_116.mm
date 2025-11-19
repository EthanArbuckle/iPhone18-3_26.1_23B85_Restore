uint64_t re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::addNew(uint64_t a1, void *a2, _OWORD *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::ecs2::Entity const*,re::ecs2::RenderPassGroup,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::findEntry<re::ecs2::Entity const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return *(a1 + 16) + 40 * HIDWORD(v10) + 16;
  }

  v7 = re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = v7 + 16;
  *(v7 + 16) = *a3;
  ++*(a1 + 40);
  return result;
}

BOOL re::ecs2::PlanarReflectionSystem::willRemoveSceneFromECSService(_BOOL8 this, unint64_t a2)
{
  v8 = a2;
  if (*(this + 296))
  {
    v2 = this;
    v3 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (a2 ^ (a2 >> 30))) >> 27));
    v4 = *(*(this + 304) + 4 * ((v3 ^ (v3 >> 31)) % *(this + 320)));
    if (v4 != 0x7FFFFFFF)
    {
      v5 = *(a2 + 288);
      v6 = *(this + 312);
      while (*(v6 + 40 * v4 + 8) != a2)
      {
        v4 = *(v6 + 40 * v4) & 0x7FFFFFFF;
        if (v4 == 0x7FFFFFFF)
        {
          return this;
        }
      }

      v7 = re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::operator[](this + 296, &v8);
      re::EventBus::unsubscribe(v5, *v7, *(v7 + 8));
      return re::HashTable<re::ecs2::Scene *,RESubscriptionHandle,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::remove(v2 + 296, &v8);
    }
  }

  return this;
}

void anonymous namespace::removeParamsFromSystemParameterBlock(_anonymous_namespace_ *this, re::MaterialManager *a2, int a3)
{
  SystemMaterialParameterBlock = re::MaterialManager::getSystemMaterialParameterBlock(this, a2);
  if (SystemMaterialParameterBlock)
  {
    v7 = SystemMaterialParameterBlock;
    v8 = 0x3578C2CBE23A420;
    re::MaterialParameterBlock::removeTexture(SystemMaterialParameterBlock, &v8);
    v8 = 0;
    if (a3)
    {
      if (re::MaterialParameterBlock::isEmpty(v7))
      {
        re::MaterialManager::removeSystemMaterialParameterBlock(this, a2);
      }
    }
  }
}

uint64_t re::ecs2::PlanarReflectionSystem::update(uint64_t result, uint64_t a2, uint64_t a3)
{
  v3 = result;
  v127 = *MEMORY[0x1E69E9840];
  v4 = *(result + 224);
  if (!v4 || (*(v4 + 432) & 0x10) != 0)
  {
    v5 = *(a3 + 200);
    if (v5)
    {
      v6 = *(a3 + 216);
      v7 = &v6[v5];
      v8 = &unk_1EE1C6000;
      v100 = v7;
      do
      {
        v104 = *v6;
        if (*v6)
        {
          re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v122);
          v10 = *(v3 + 232);
          if (!v10)
          {
            re::internal::assertLog(4, v9, "assertion failure: '%s' (%s:line %i) ", "m_renderManager", "updateSceneInternal", 116);
            _os_crash();
            __break(1u);
LABEL_128:
            std::__throw_bad_variant_access[abi:nn200100]();
          }

          v11 = *(v10 + 112);
          if (v11)
          {
            v103 = re::RenderFrameBox::get((v11 + 328), 0xFFFFFFFFFFFFFFFuLL);
          }

          else
          {
            v103 = 0;
          }

          v12 = (*(*v104[7] + 32))(v104[7]);
          v105 = re::ServiceLocator::service<re::TransformService>(v12);
          v13 = *(*(v3 + 232) + 24);
          if (v8[320] != -1)
          {
            dispatch_once(&re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::onceToken, &__block_literal_global_41);
          }

          if (re::GraphicsFeatureFlags::systemMaterialParametersDirtyTracking(void)::gSystemMaterialParametersDirtyTracking == 1)
          {
            v14 = re::ecs2::SceneComponentTable::get((v104 + 25), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
            if (v14)
            {
              v15 = *(v14 + 384);
              if (v15)
              {
                v16 = *(v14 + 400);
                v17 = 8 * v15;
                do
                {
                  v18 = *v16++;
                  v17 -= 8;
                }

                while (v17);
              }
            }
          }

          v19 = re::ecs2::SceneComponentTable::get((v104 + 25), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
          if (v19)
          {
            v20 = *(v19 + 384);
            if (v20)
            {
              v101 = v13;
              v21 = *(v19 + 400);
              v22 = (*(**(v3 + 256) + 24))(*(v3 + 256));
              v23 = (*(*v22 + 16))(v22);
              if (*(v23 + 31))
              {
                v24 = *(v23 + 31);
              }

              else
              {
                v24 = *(v23 + 4);
              }

              v120 = 0;
              v118 = 0u;
              v119 = 0u;
              v121 = 0x7FFFFFFFLL;
              v116.i32[0] = 0;
              v114 = 0u;
              v115 = 0u;
              *(v116.i64 + 4) = 0x7FFFFFFFLL;
              v26 = 8 * v20;
              v27 = v21;
              v28 = &v21[v20];
              do
              {
                v29 = *v27++;
                (*(*v22 + 8))(v124, v22, *(v29 + 16));
                if (v124[0])
                {
                  v30 = *&v124[8];
                }

                else
                {
                  v30 = 0;
                }

                *v124 = v30;
                v123[0] = 0;
                v31 = re::HashTable<unsigned long long,unsigned long,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::add(&v114, v124, v123);
                ++*v31;
                v26 -= 8;
              }

              while (v26);
              v102 = v6;
              v32 = v116.i32[0];
              if (v116.i32[0])
              {
                v33 = 0;
                v34 = v115.i64[0];
                while (1)
                {
                  v35 = *v34;
                  v34 += 8;
                  if (v35 < 0)
                  {
                    break;
                  }

                  if (v116.u32[0] == ++v33)
                  {
                    LODWORD(v33) = v116.i32[0];
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v33) = 0;
              }

              if (v33 != v116.i32[0])
              {
                v36 = v115.i64[0];
                do
                {
                  v37 = v36 + 32 * v33;
                  v38 = *(v37 + 16);
                  v126 = 0;
                  memset(v124, 0, sizeof(v124));
                  v125 = 0;
                  re::DynamicArray<re::PlanarReflectionData>::setCapacity(v124, v38);
                  v41 = *(v37 + 8);
                  v40 = (v37 + 8);
                  v39 = v41;
                  ++v125;
                  v42 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v41 ^ (v41 >> 30))) >> 27));
                  v43 = v42 ^ (v42 >> 31);
                  if (v118)
                  {
                    v44 = v43 % DWORD2(v119);
                    v45 = *(*(&v118 + 1) + 4 * v44);
                    if (v45 != 0x7FFFFFFF)
                    {
                      while (*(v119 + (v45 << 6) + 8) != v39)
                      {
                        v45 = *(v119 + (v45 << 6)) & 0x7FFFFFFF;
                        if (v45 == 0x7FFFFFFF)
                        {
                          goto LABEL_42;
                        }
                      }

                      goto LABEL_43;
                    }
                  }

                  else
                  {
                    LODWORD(v44) = 0;
                  }

LABEL_42:
                  v46 = re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(&v118, v44, v43);
                  v47 = *v124;
                  *(v46 + 8) = *v40;
                  *(v46 + 16) = v47;
                  *(v46 + 24) = *&v124[8];
                  memset(v124, 0, sizeof(v124));
                  *(v46 + 48) = v126;
                  v126 = 0;
                  ++v125;
                  *(v46 + 40) = 1;
                  ++HIDWORD(v121);
LABEL_43:
                  v31 = re::DynamicArray<re::PlanarReflectionData>::deinit(v124);
                  if (v116.i32[0] <= (v33 + 1))
                  {
                    v48 = v33 + 1;
                  }

                  else
                  {
                    v48 = v116.i32[0];
                  }

                  v36 = v115.i64[0];
                  while (v48 - 1 != v33)
                  {
                    LODWORD(v33) = v33 + 1;
                    if ((*(v115.i64[0] + 32 * v33) & 0x80000000) != 0)
                    {
                      goto LABEL_51;
                    }
                  }

                  LODWORD(v33) = v48;
LABEL_51:
                  ;
                }

                while (v33 != v32);
              }

              re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(&v114);
              do
              {
                v49 = *v21;
                v50 = *(*v21 + 16);
                re::TransformService::worldMatrix(v105, v50, 0, &v114);
                v128.columns[2] = v116;
                v108 = v117;
                v128.columns[0] = v114;
                v128.columns[1] = v115;
                v129 = __invert_f3(v128);
                v51 = vzip2q_s32(v129.columns[0], v129.columns[2]);
                v52 = vzip1q_s32(vzip1q_s32(v129.columns[0], v129.columns[2]), v129.columns[1]);
                v129.columns[0] = vtrn2q_s32(v129.columns[0], v129.columns[1]);
                v129.columns[0].i32[2] = v129.columns[2].i32[1];
                v129.columns[0] = vmlaq_f32(vaddq_f32(v129.columns[0], vmulq_f32(v52, 0)), 0, vzip1q_s32(v51, vdupq_laneq_s32(v129.columns[1], 2)));
                v129.columns[1] = vmulq_f32(v129.columns[0], v129.columns[0]);
                v129.columns[2].f32[0] = v129.columns[1].f32[2] + vaddv_f32(*v129.columns[1].f32);
                *v129.columns[1].f32 = vrsqrte_f32(v129.columns[2].u32[0]);
                *v129.columns[1].f32 = vmul_f32(*v129.columns[1].f32, vrsqrts_f32(v129.columns[2].u32[0], vmul_f32(*v129.columns[1].f32, *v129.columns[1].f32)));
                v53 = vmulq_n_f32(v129.columns[0], vmul_f32(*v129.columns[1].f32, vrsqrts_f32(v129.columns[2].u32[0], vmul_f32(*v129.columns[1].f32, *v129.columns[1].f32))).f32[0]);
                if (v53.f32[0] != 0.0 && (v54 = fabsf(v53.f32[0]), v54 >= ((v54 + 1.0) * 0.00001)) || v53.f32[1] != 0.0 && (v55 = fabsf(v53.f32[1]), v55 >= ((v55 + 1.0) * 0.00001)) || v53.f32[2] != 0.0 && (v56 = fabsf(v53.f32[2]), v56 >= ((v56 + 1.0) * 0.00001)))
                {
                  if (!v49[5])
                  {
                    v106 = v53;
                    v57 = v3;
                    v58 = *(*(v3 + 232) + 208);
                    v123[0] = v58;
                    v113 = 5;
                    v112 = 115;
                    v111 = 2;
                    *v124 = 2;
                    TextureCompressionType = re::mtl::getTextureCompressionType(v123, &v111, &v112, &v113, v124);
                    v60 = [objc_msgSend(MEMORY[0x1E69741C0] alloc)];
                    [v60 setStorageMode_];
                    if (([v60 respondsToSelector_] & 1) != 0 || objc_msgSend(v60, sel_methodSignatureForSelector_, sel_setCompressionType_))
                    {
                      [v60 setCompressionType_];
                    }

                    [v60 setTextureType_];
                    [v60 setWidth_];
                    [v60 setHeight_];
                    [v60 setPixelFormat_];
                    [v60 setMipmapLevelCount_];
                    [v60 setUsage_];
                    [v60 setSampleCount_];
                    [v60 setProtectionOptions_];
                    re::mtl::Device::makeTexture(v60, (*(v3 + 232) + 208), &v110);
                    v61 = *(v3 + 240);
                    v62 = v110;
                    v109 = v62;
                    re::AssetHelper::makeTextureMemoryAsset(v61, &v109, 0);
                    v63 = *(v49 + 2);
                    *(v49 + 2) = *v124;
                    *v124 = v63;
                    v64 = v49[6];
                    v49[6] = *&v124[16];
                    *&v124[16] = v64;
                    re::AssetHandle::~AssetHandle(v124);
                    if (v62)
                    {

                      v109 = 0;
                    }

                    if (v110)
                    {
                    }

                    v3 = v57;
                    if (v60)
                    {
                    }

                    v53 = v106;
                  }

                  v65 = vmulq_f32(v108, v53);
                  v53.f32[3] = -(v65.f32[2] + vaddv_f32(*v65.f32));
                  v107 = v53;
                  v66 = re::AssetHandle::blockUntilLoaded<re::TextureAsset>((v49 + 4));
                  *&v124[16] = 0;
                  *v124 = v107;
                  if (*(v66 + 120))
                  {
                    goto LABEL_128;
                  }

                  NS::SharedPtr<MTL::Buffer>::operator=(&v124[16], (v66 + 112));
                  v67 = (*(*v22 + 8))(v123, v22, v50);
                  if (LOBYTE(v123[0]))
                  {
                    v68 = v123[1];
                  }

                  else
                  {
                    v68 = 0;
                  }

                  if (!v118 || (v69 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * (v68 ^ (v68 >> 30))) ^ ((0xBF58476D1CE4E5B9 * (v68 ^ (v68 >> 30))) >> 27)), v70 = *(*(&v118 + 1) + 4 * ((v69 ^ (v69 >> 31)) % DWORD2(v119))), v70 == 0x7FFFFFFF))
                  {
LABEL_78:
                    v71 = 0;
                  }

                  else
                  {
                    while (*(v119 + (v70 << 6) + 8) != v68)
                    {
                      v70 = *(v119 + (v70 << 6)) & 0x7FFFFFFF;
                      if (v70 == 0x7FFFFFFF)
                      {
                        goto LABEL_78;
                      }
                    }

                    v71 = v119 + (v70 << 6) + 16;
                  }

                  v72 = *(v71 + 8);
                  v73 = *(v71 + 16);
                  if (v73 >= v72)
                  {
                    v74 = v73 + 1;
                    if (v72 < v73 + 1)
                    {
                      if (*v71)
                      {
                        v75 = 2 * v72;
                        v76 = v72 == 0;
                        v77 = 8;
                        if (!v76)
                        {
                          v77 = v75;
                        }

                        if (v77 <= v74)
                        {
                          v78 = v74;
                        }

                        else
                        {
                          v78 = v77;
                        }

                        re::DynamicArray<re::PlanarReflectionData>::setCapacity(v71, v78);
                      }

                      else
                      {
                        re::DynamicArray<re::PlanarReflectionData>::setCapacity(v71, v74);
                        ++*(v71 + 24);
                      }
                    }

                    v73 = *(v71 + 16);
                  }

                  v79 = *(v71 + 32) + 32 * v73;
                  *v79 = *v124;
                  *(v79 + 16) = *&v124[16];
                  ++*(v71 + 16);
                  ++*(v71 + 24);
                }

                ++v21;
              }

              while (v21 != v28);
              v80 = re::ecs2::SceneComponentTable::get((v104 + 25), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionReceiverComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
              v7 = v100;
              v8 = &unk_1EE1C6000;
              if (v80)
              {
                v81 = *(v80 + 384);
                if (v81)
                {
                  v82 = *(v80 + 400);
                  v83 = 8 * v81;
                  do
                  {
                    v84 = *(*(*v82 + 16) + 312);
                    v85 = re::ecs2::EntityHandle::resolve((*v82 + 32), *(v3 + 40));
                    if (v85)
                    {
                      v86 = re::ecs2::EntityComponentCollection::get((v85 + 48), re::ecs2::ComponentImpl<re::ecs2::PlanarReflectionCaptureComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
                      if (v86)
                      {
                        v87 = re::AssetHandle::loadedAsset<re::TextureAsset>((v86 + 32));
                        if (v87)
                        {
                          v88 = v87;
                          v89 = re::MaterialManager::getOrAddSystemMaterialParameterBlock(v101, v84);
                          v123[0] = 0x3578C2CBE23A420;
                          re::MaterialParameterBlock::setTextureHandle(v89, v123, (v88 + 8), &v114);
                          v114.i64[0] = 0;
                          v123[0] = 0;
                        }
                      }
                    }

                    v82 += 8;
                    v83 -= 8;
                  }

                  while (v83);
                }
              }

              v90 = v120;
              if (v120)
              {
                v91 = 0;
                v92 = v119;
                v6 = v102;
                while (1)
                {
                  v93 = *v92;
                  v92 += 16;
                  if (v93 < 0)
                  {
                    break;
                  }

                  if (v120 == ++v91)
                  {
                    LODWORD(v91) = v120;
                    break;
                  }
                }
              }

              else
              {
                LODWORD(v91) = 0;
                v6 = v102;
              }

              if (v91 != v120)
              {
                v94 = v119;
                v95 = v120;
                do
                {
                  v96 = v94 + (v91 << 6);
                  if (*(v96 + 32))
                  {
                    re::ecs2::RenderingSubsystem::nonOwningStreamNameForWorldRoot(v104, *(v96 + 8), v103, v124);
                    v113 = *v124 >> 1;
                    v97 = **(re::RenderFrameData::stream((v103 + 33), &v113) + 48);
                    v98 = (*(v97 + 936))();
                    if (v124[0])
                    {
                      if (v124[0])
                      {
                      }
                    }

                    v95 = v120;
                    v94 = v119;
                  }

                  if (v95 <= v91 + 1)
                  {
                    v99 = v91 + 1;
                  }

                  else
                  {
                    v99 = v95;
                  }

                  while (v99 - 1 != v91)
                  {
                    LODWORD(v91) = v91 + 1;
                    if ((*(v94 + (v91 << 6)) & 0x80000000) != 0)
                    {
                      goto LABEL_122;
                    }
                  }

                  LODWORD(v91) = v99;
LABEL_122:
                  ;
                }

                while (v91 != v90);
              }

              re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(&v118);
            }
          }

          result = re::ProfilerTimeGuard<(re::ProfilerStatistic)122>::end(v122);
        }

        ++v6;
      }

      while (v6 != v7);
    }
  }

  return result;
}

void re::ecs2::PlanarReflectionSystem::~PlanarReflectionSystem(re::ecs2::PlanarReflectionSystem *this)
{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);

  re::ecs2::System::~System(this);
}

{
  re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(this + 37);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::PlanarReflectionSystem,REEventHandlerResult (re::ecs2::PlanarReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::PlanarReflectionSystem,REEventHandlerResult (re::ecs2::PlanarReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1158;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::PlanarReflectionSystem,REEventHandlerResult (re::ecs2::PlanarReflectionSystem::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1158;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

void *re::DynamicArray<re::PlanarReflectionData>::setCapacity(void *result, unint64_t a2)
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
        result = re::DynamicArray<re::PlanarReflectionData>::setCapacity(v5, a2);
        ++*(v5 + 6);
        return result;
      }

      if (a2)
      {
        if (a2 >> 59)
        {
          re::internal::assertLog(6, a2, "assertion failure: '%s' (%s:line %i) Size overflow in DynamicArray<T>::setCapacity(). Element size = %zu, capacity = %zu", "!overflow", "setCapacity", 615, 32, a2);
          _os_crash();
          __break(1u);
        }

        else
        {
          v2 = 32 * a2;
          result = (*(*result + 32))(result, 32 * a2, 16);
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
        v10 = v8 + 32 * v9;
        v11 = v7;
        do
        {
          *v11 = *v8;
          v11[2] = *(v8 + 16);
          *(v8 + 16) = 0;
          v8 += 32;
          v11 += 4;
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

uint64_t re::DynamicArray<re::PlanarReflectionData>::deinit(uint64_t a1)
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
        v5 = 32 * v4;
        v6 = (v3 + 16);
        do
        {
          if (*v6)
          {

            *v6 = 0;
          }

          v6 += 4;
          v5 -= 32;
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

void _ZZN2re8internal15setIntroVersionINS_4ecs232PlanarReflectionCaptureComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs233PlanarReflectionReceiverComponentELNS_17RealityKitReleaseE5EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

uint64_t re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
      a2 = a3 % *(a1 + 24);
      v6 = *(a1 + 32);
    }

    *(a1 + 32) = v6 + 1;
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
  }

  else
  {
    v7 = *(a1 + 16);
    v8 = *(v7 + 40 * v5);
    *(a1 + 36) = v8 & 0x7FFFFFFF;
  }

  v9 = v7 + 40 * v5;
  *v9 = v8 | 0x80000000;
  v10 = *(a1 + 8);
  *v9 = *(v10 + 4 * a2) | 0x80000000;
  *(v10 + 4 * a2) = v5;
  *(v9 + 32) = a3;
  ++*(a1 + 28);
  return v7 + 40 * v5;
}

void re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v9, 0, 36);
      *&v9[36] = 0x7FFFFFFFLL;
      re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v9, v4, a2);
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
      re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::MemoryAttributionTaskAndPeerID,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

uint64_t re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::move(uint64_t result, uint64_t a2)
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
        result = re::HashTable<re::ecs2::Scene const*,RESubscriptionHandle,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,true,false>::allocEntry(v4, *(v7 + v5 + 32) % *(v4 + 24));
        *(result + 8) = *(*(a2 + 16) + v5 + 8);
        *(result + 16) = *(*(a2 + 16) + v5 + 16);
        v2 = *(a2 + 32);
      }

      v5 += 40;
    }
  }

  return result;
}

double re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(uint64_t *a1)
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
          re::DynamicArray<re::PlanarReflectionData>::deinit(v6 + v4 + 16);
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

uint64_t re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
                v18 = re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::allocEntry(a1, *(v17 + 24) % *(a1 + 24));
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

          re::HashTable<unsigned long long,re::PlanarReflectionContext,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v29);
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

BOOL re::ecs2::JiggleSystemComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v30 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v29, a5, 0);
  v17 = a4;
  v18 = *&v29[0];
  v19 = DWORD2(v29[0]);
  if (*&v29[0] != a5 || DWORD2(v29[0]) != 0xFFFFFFFFLL)
  {
    do
    {
      v9 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v17);
      v10 = (a3 + 32);
      if (v9[30])
      {
        v11 = v9[46];
        if (v11 <= 0x10)
        {
          v20 = 0;
          memset(v29, 0, sizeof(v29));
          os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
          v21 = 136315906;
          v22 = "operator[]";
          v23 = 1024;
          v24 = 476;
          v25 = 2048;
          v26 = 16;
          v27 = 2048;
          v28 = v11;
          _os_log_send_and_compose_impl();
          _os_crash_msg();
          __break(1u);
        }

        if (*(v9[47] + 1544))
        {
          v10 = (a3 + 48);
        }

        else
        {
          v10 = (a3 + 32);
        }
      }

      v12 = v17;
      v13 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v18);
      re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v12, v13, *v10);
      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v18);
    }

    while (v18 != a5 || v19 != 0xFFFF || HIWORD(v19) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(re::ecs2::ComponentBucketsBase **a1, unint64_t a2, unint64_t a3, unsigned int a4)
{
  v8 = re::ecs2::ComponentBucketsBase::moveComponent(a1[2], a2, a3, a1[a4 + 3]);
  v10 = v8;
  if (!a4 && (v8 != a2 || v9 != a3 || ((v9 ^ a3) & 0xFFFFFF00000000) != 0))
  {
    (*(**(*a1 + 28) + 16))(*(*a1 + 28), a1, v8, v9);
    v13 = *a1;
    v16 = a1[1];
    v14 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v13 + 56), &v16);
    if (v14 != -1)
    {
      re::DynamicBitset<unsigned long long,64ul>::setBit(v13 + 168, *(*(v13 + 64) + 16 * v14 + 8));
      re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v13);
    }
  }

  return v10;
}

uint64_t re::ecs2::JiggleSystemComponentStateImpl::processUpdatingComponents(uint64_t a1, _DWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = re::RenderManager::perFrameAllocator(*(*(a1 + 8) + 232));
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(&v32, a5, 0);
  v9 = v32;
  v10 = v33;
  v11 = v33;
  v32 = a4;
  v33 = v9;
  v34 = v10;
  if (v9 != a5 || v11 != 0xFFFFFFFFLL)
  {
    do
    {
      v13 = re::ecs2::ComponentBuckets<re::ecs2::BlendShapeWeightsBufferComponent>::ComponentIterator::operator*(&v32);
      v30 = v13 + 232;
      v31 = 16;
      v14 = *(v13 + 392);
      v15 = *(v14 + 88);
      v16 = *(v14 + 96);
      v27 = v13 + 232;
      v28 = 16;
      v29 = 0;
      while (1)
      {
        re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v30, v24);
        if (HIDWORD(v28) == v25 && v29 == v26)
        {
          break;
        }

        v17 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(&v27);
        if (v15 <= v17)
        {
          re::internal::assertLog(6, v18, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v17, v15);
          result = _os_crash();
          __break(1u);
          return result;
        }

        v19 = v16 + 168 * v17;
        v20 = (*(*v8 + 32))(v8, 4, 4);
        *v20 = *a2;
        ++*(v19 + 16);
        *(v19 + 152) = v20;
        re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(&v27);
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v33);
    }

    while (v33 != a5 || v34 != 0xFFFF || HIWORD(v34) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

uint64_t re::ecs2::JiggleSystem::update(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6[0] = a2;
  v6[1] = a3;
  re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v5);
  re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update((a1 + 296), v6, 0);
  return re::ProfilerTimeGuard<(re::ProfilerStatistic)125>::end(v5);
}

void re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  re::StackScratchAllocator::StackScratchAllocator(v35);
  v31 = 1;
  v32 = 0;
  v33 = 0;
  v29 = v35;
  v30 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v29, 0);
  v31 += 2;
  v6 = a1[26];
  if ((v6 & 0x3F) != 0)
  {
    v7 = (v6 >> 6) + 1;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v34 = a1[26];
  v24[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v29, v7, v24);
  v8 = *(a2 + 8);
  v9 = *(v8 + 200);
  if (v9)
  {
    v10 = *(v8 + 216);
    v11 = 8 * v9;
    do
    {
      v12 = *v10++;
      v24[0] = v12;
      v13 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 7, v24);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v29, *(a1[8] + 16 * v13 + 8));
      v11 -= 8;
    }

    while (v11);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v29, (a1 + 21));
  v25 = 1;
  v26 = 0;
  v27 = 0;
  v24[0] = v35;
  v24[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v24, 0);
  v25 += 2;
  v14 = a1[26];
  if ((v14 & 0x3F) != 0)
  {
    v15 = (v14 >> 6) + 1;
  }

  else
  {
    v15 = v14 >> 6;
  }

  v28 = a1[26];
  v36 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v24, v15, &v36);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 21), &v29);
  v16 = v33;
  if (v31)
  {
    v16 = &v32;
  }

  v17 = v30;
  if ((v30 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v18 = 0;
    while (1)
    {
      v20 = *v16++;
      v19 = v20;
      if (v20)
      {
        break;
      }

      v18 -= 64;
      if (!--v17)
      {
        goto LABEL_23;
      }
    }

    v21 = __clz(__rbit64(v19));
    if (v21 + 1 != v18)
    {
      FirstBitSet = v21 - v18;
      do
      {
        v23 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, FirstBitSet);
        if (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::update(v23, a2, a3))
        {
          re::DynamicBitset<unsigned long long,64ul>::setBit(v24, FirstBitSet);
        }

        else
        {
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v24, FirstBitSet);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v29, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_23:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 21), v24);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  if (v24[0] && (v25 & 1) == 0)
  {
    (*(*v24[0] + 40))();
  }

  if (v29 && (v31 & 1) == 0)
  {
    (*(*v29 + 40))();
  }

  re::StackScratchAllocator::~StackScratchAllocator(v35);
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::MeshDeformationComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v43 = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
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
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
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
    *&v35 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v35);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v43, &v35);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v35);
    v13 = v35;
    goto LABEL_43;
  }

LABEL_17:
  v35 = 0u;
  *&v36 = 0;
  v37 = 0u;
  v38 = 0u;
  *(&v36 + 1) = -1;
  v39 = 0;
  v40 = 1;
  v41 = 0uLL;
  v42 = 0uLL;
  v14 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::addUninitialized(a1);
  v15 = v36;
  *(v14 + 48) = 0;
  *(v14 + 16) = v15;
  *(v14 + 32) = 0u;
  *v14 = 0u;
  re::BucketArray<RESubscriptionHandle,8ul>::BucketArray(v14 + 56, &v38 + 8);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStateSceneData(&v35);
  v17 = *(a1 + 40);
  if (!v17)
  {
    re::internal::assertLog(4, v16, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    result = _os_crash();
    __break(1u);
    return result;
  }

  v18 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v17 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::init(v18, a1, v43);
  v34 = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), &v43, &v34);
  v19 = *(a1 + 40);
  v20 = *(a1 + 160);
  if ((v19 & 0x3F) != 0)
  {
    v21 = (v19 >> 6) + 1;
  }

  else
  {
    v21 = v19 >> 6;
  }

  *(a1 + 160) = v19;
  *&v35 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v21, &v35);
  if (v19 && v20 > v19)
  {
    v22 = 63;
    v23 = *(a1 + 160) & 0x3FLL;
    if (v23 && v23 != 63)
    {
      v22 = ~(-1 << v23);
    }

    if (*(a1 + 136))
    {
      v24 = a1 + 144;
    }

    else
    {
      v24 = *(a1 + 152);
    }

    *(v24 + 8 * *(a1 + 128) - 8) &= v22;
  }

  v25 = *(a1 + 40);
  v26 = *(a1 + 208);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 208) = v25;
  *&v35 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v27, &v35);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 208) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 184))
    {
      v30 = a1 + 192;
    }

    else
    {
      v30 = *(a1 + 200);
    }

    *(v30 + 8 * *(a1 + 176) - 8) &= v28;
  }

  v13 = v34;
LABEL_43:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v32 = *(a1 + 216);
    v33 = *(v43 + 376);
    LOWORD(v35) = 257;
    DWORD1(v35) = 1023969417;
    BYTE8(v35) = 0;
    re::ecs2::System::setTaskOptions(v32, v33, &v35);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

uint64_t re::ecs2::JiggleSystem::willRemoveSceneFromECSService(re::ecs2::JiggleSystem *this, re::ecs2::Scene *a2)
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

void *re::ecs2::allocInfo_JiggleSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_268, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_268))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9038, "JiggleSystem");
    __cxa_guard_release(&_MergedGlobals_268);
  }

  return &unk_1EE1A9038;
}

void re::ecs2::initInfo_JiggleSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x36A7507F0523F10ELL;
  v6[1] = "JiggleSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x21800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_JiggleSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::JiggleSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::JiggleSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::JiggleSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::JiggleSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::JiggleSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::JiggleSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::JiggleSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 37);
  a3[32] = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(a3 + 34);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::JiggleSystem>(uint64_t *a1)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 37);
  a1[32] = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(a1 + 34);

  re::ecs2::System::~System(a1);
}

void re::ecs2::BasicComponentStateImpl<re::ecs2::MeshDeformationComponent>::didDependentComponentChange(uint64_t a1, re::ecs2::ComponentBucketsBase **a2, uint64_t a3)
{
  v3 = *(a3 + 200);
  if (v3)
  {
    v5 = 3;
    v6 = 0xFFFFFFFFLL;
    do
    {
      v7 = re::ecs2::ComponentBucketsBase::componentHandle(a2[2], a2[v5], v3);
      if (v7 != -1 && (v8 & 0xFFFFFF00000000) != 0)
      {
        v10 = v7;
        v6 = v8;
        goto LABEL_11;
      }

      ++v5;
    }

    while (v5 != 7);
    v10 = -1;
LABEL_11:

    re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a2, v10, v6, 0);
  }
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::MeshDeformationComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::JiggleSystem::~JiggleSystem(re::ecs2::JiggleSystem *this)
{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);

  re::ecs2::System::~System(this);
}

{
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 37);
  *(this + 32) = &unk_1F5CF11B0;
  re::FixedArray<CoreIKTransform>::deinit(this + 34);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::update(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*a1 + 224);
  v7 = a1[3];
  v8 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v7);
  if (*(v8 + 40))
  {
    v9 = (*(*v6 + 24))(v6, a2, a1, v7, v8, a3);
  }

  else
  {
    v9 = 0;
  }

  v10 = a1[5];
  v11 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v10);
  if (*(v11 + 40))
  {
    v9 = v9 | (*(*v6 + 32))(v6, a2, a1, v10, v11, a3);
  }

  v12 = a1[6];
  v13 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](a1[2] + 8, v12);
  if (*(v13 + 40))
  {
    return v9 | (*(*v6 + 40))(v6, a2, a1, v12, v13, a3);
  }

  return v9;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF12A8;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF1300;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF1358;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF13B0;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::MeshDeformationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)1,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType, 0);
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
        *v37 = &unk_1F5CF12A8;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF1300;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF1358;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF13B0;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v14 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(v4 + 7, &v14);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 8) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = *(a2 + 200);
  if (v6)
  {
    for (i = 24; i != 56; i += 8)
    {
      v8 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v6);
      if (v8 != -1 && (v9 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::setComponentState(a1, v8, v9, 0);
        return 0;
      }
    }

    v11 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v6);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v11, v12);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF12A8;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF12A8;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1300;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1300;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1358;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1358;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF13B0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF13B0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::addUninitialized(uint64_t a1)
{
  v2 = *(a1 + 40);
  v3 = *(a1 + 8);
  if (v2 + 1 > 4 * v3)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::MeshDeformationComponent>,4ul>::setBucketsCapacity(a1, (v2 + 4) >> 2);
    v3 = *(a1 + 8);
  }

  if (v3 <= v2 >> 2)
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

  v5 = *(v4 + 8 * (v2 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
  return v5 + 112 * (v2 & 3);
}

void *re::ecs2::allocInfo_AudioMixGroupsComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_269, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_269))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A90E8, "AudioMixGroupsComponent");
    __cxa_guard_release(&_MergedGlobals_269);
  }

  return &unk_1EE1A90E8;
}

void re::ecs2::initInfo_AudioMixGroupsComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v14[0] = 0xAE6F5221A4A0CBC6;
  v14[1] = "AudioMixGroupsComponent";
  if (v14[0])
  {
    if (v14[0])
    {
    }
  }

  *(this + 2) = v15;
  if ((atomic_load_explicit(&qword_1EE1A90D0, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A90D0);
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
      qword_1EE1A90D8 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::IntrospectionInfo<re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>>::get(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "mixGroups";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x2000000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A90E0 = v12;
      __cxa_guard_release(&qword_1EE1A90D0);
    }
  }

  *(this + 2) = 0x8000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 2;
  *(this + 8) = &qword_1EE1A90D8;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioMixGroupsComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioMixGroupsComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioMixGroupsComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioMixGroupsComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioMixGroupsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v13 = v15;
}

double re::internal::defaultConstruct<re::ecs2::AudioMixGroupsComponent>(int a1, int a2, ArcSharedObject *this)
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
  *v3 = &unk_1F5CF1408;
  *(v3 + 32) = 0u;
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v3 + 68) = 0x7FFFFFFFLL;
  *(v3 + 80) = 0u;
  *(v3 + 96) = 0u;
  *(v3 + 112) = 0;
  *(v3 + 116) = 0x7FFFFFFFLL;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AudioMixGroupsComponent>(ArcSharedObject *a1)
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
  *v1 = &unk_1F5CF1408;
  *(v1 + 32) = 0u;
  *(v1 + 48) = 0u;
  *(v1 + 64) = 0;
  *&result = 0x7FFFFFFFLL;
  *(v1 + 68) = 0x7FFFFFFFLL;
  *(v1 + 80) = 0u;
  *(v1 + 96) = 0u;
  *(v1 + 112) = 0;
  *(v1 + 116) = 0x7FFFFFFFLL;
  return result;
}

uint64_t re::ecs2::AudioMixGroupsComponent::addOrReplaceMixGroup(re::ecs2::AudioMixGroupsComponent *this, uint64_t a2, const char *a3, float a4, float a5, char a6)
{
  v29 = 0;
  *v30 = 0;
  v27 = 0u;
  memset(v28, 0, 28);
  *&v30[4] = xmmword_1E30474D0;
  *&v30[28] = 0;
  *&v30[20] = 0;
  *&v30[36] = 1;
  v12 = strlen(a3);
  v31[0] = a3;
  v31[1] = v12;
  re::DynamicString::operator=(&v24, v31);
  v13 = 15.0;
  if (a4 <= 15.0)
  {
    v13 = a4;
  }

  *&v30[24] = fmaxf(v13, -60.0);
  *&v30[28] = *&v30[24];
  *&v30[20] = 0;
  *&v30[12] = 0;
  ++*&v30[36];
  v30[0] = a6;
  *&v30[16] = a5;
  *&v27 = a2;
  re::DynamicString::DynamicString(v17, &v24);
  v17[2] = v27;
  re::DynamicArray<char const*>::DynamicArray(v18, v28);
  v21 = *v30;
  v22 = *&v30[16];
  v23 = *&v30[32];
  re::ecs2::AudioMixGroupsComponent::updateMixGroupInMixGroupsStructure(this, v17);
  if (v18[0])
  {
    if (v20)
    {
      (*(*v18[0] + 40))();
    }

    v20 = 0;
    memset(v18, 0, sizeof(v18));
    ++v19;
  }

  if (*&v17[0])
  {
    if (BYTE8(v17[0]))
    {
      (*(**&v17[0] + 40))();
    }

    memset(v17, 0, 32);
  }

  if (*&v28[0])
  {
    if (v29)
    {
      (*(**&v28[0] + 40))(*&v28[0], v29, v14, v15);
    }

    v29 = 0;
    memset(v28, 0, 24);
    ++DWORD2(v28[1]);
  }

  result = v24;
  if (v24)
  {
    if (v25)
    {
      return (*(*v24 + 40))(v24, v26, v14, v15);
    }
  }

  return result;
}

void re::ecs2::AudioMixGroupsComponent::updateMixGroupInMixGroupsStructure(re::ecs2::AudioPlayerComponent *a1, uint64_t a2)
{
  v4 = *(a2 + 124);
  v5 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(a1 + 32, (a2 + 32));
  if (v5)
  {
    v6 = *(v5 + 124);
    if (v4 <= v6 + 1)
    {
      v4 = v6 + 1;
    }
  }

  *(a2 + 124) = v4;
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::addOrReplace(a1 + 32, (a2 + 32), a2);

  re::ecs2::AudioPlayerComponent::markDirtyAndMarkDirtyForNetwork(a1);
}

BOOL re::ecs2::AudioMixGroupsComponent::isMixGroupGainDirty(re::ecs2::AudioMixGroupsComponent *this, uint64_t a2)
{
  v6 = a2;
  v3 = re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(this + 32, &v6);
  v4 = re::HashTable<unsigned long,unsigned long,re::Hash<unsigned long>,re::EqualTo<unsigned long>,true,false>::tryGet(this + 80, &v6);
  result = 1;
  if (v3)
  {
    if (v4)
    {
      return *v4 != *(v3 + 124);
    }
  }

  return result;
}

void re::ecs2::AudioMixGroupsComponent::~AudioMixGroupsComponent(re::ecs2::AudioMixGroupsComponent *this)
{
  *this = &unk_1F5CF1408;
  v2 = this + 32;
  re::HashTable<void *,re::internal::AnimationCompositionChainBase *,re::Hash<void *>,re::EqualTo<void *>,true,false>::deinit(this + 10);
  re::HashTable<unsigned long long,re::AudioMixGroup,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioMixGroupsComponent::~AudioMixGroupsComponent(this);

  JUMPOUT(0x1E6906520);
}

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioMixGroupsComponentELNS_17RealityKitReleaseE6EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::ecs2::allocInfo_DrawableQueueSyncComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_270, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_270))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A91A8, "DrawableQueueSyncComponent");
    __cxa_guard_release(&_MergedGlobals_270);
  }

  return &unk_1EE1A91A8;
}

void re::ecs2::initInfo_DrawableQueueSyncComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v18[0] = 0x4E59B8C38DB250DELL;
  v18[1] = "DrawableQueueSyncComponent";
  if (v18[0])
  {
    if (v18[0])
    {
    }
  }

  *(this + 2) = v19;
  if ((atomic_load_explicit(&qword_1EE1A9180, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9180);
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
      qword_1EE1A9190 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_int(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "bestToPresentIndex";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1C00000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A9198 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_AssetHandle(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "textureHandle";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x2000000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A91A0 = v16;
      __cxa_guard_release(&qword_1EE1A9180);
    }
  }

  *(this + 2) = 0x3800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 3;
  *(this + 8) = &qword_1EE1A9190;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs226DrawableQueueSyncComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v17 = v19;
}

void re::internal::defaultConstruct<re::ecs2::DrawableQueueSyncComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 6) = 0;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CBDA20;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = 0;
}

void *re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncComponent>(uint64_t a1, uint64_t a2, void *a3)
{
  re::AssetHandle::~AssetHandle((a3 + 4));
  *a3 = &unk_1F5CCF868;

  return objc_destructInstance(a3 + 1);
}

void re::internal::defaultConstructV2<re::ecs2::DrawableQueueSyncComponent>(uint64_t a1)
{
  *(a1 + 48) = 0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CBDA20;
  *(v1 + 40) = 0;
  *(v1 + 48) = 0;
  *(v1 + 32) = 0;
}

void *re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncComponent>(void *a1)
{
  re::AssetHandle::~AssetHandle((a1 + 4));
  *a1 = &unk_1F5CCF868;

  return objc_destructInstance(a1 + 1);
}

void *re::ecs2::allocInfo_DrawableQueueSyncSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9188, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9188))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9238, "DrawableQueueSyncSystem");
    __cxa_guard_release(&qword_1EE1A9188);
  }

  return &unk_1EE1A9238;
}

void re::ecs2::initInfo_DrawableQueueSyncSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x61AC455877C2D7FALL;
  v6[1] = "DrawableQueueSyncSystem";
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
  *(this + 8) = &re::ecs2::initInfo_DrawableQueueSyncSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::DrawableQueueSyncSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::DrawableQueueSyncSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void re::internal::defaultDestruct<re::ecs2::DrawableQueueSyncSystem>(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a3 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a3 + 40);

  re::ecs2::System::~System(a3);
}

void re::internal::defaultDestructV2<re::ecs2::DrawableQueueSyncSystem>(uint64_t *a1)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(a1 + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(a1 + 40);

  re::ecs2::System::~System(a1);
}

_anonymous_namespace_ *re::ecs2::DrawableQueueSyncSystem::willAddSystemToECSService(re::ecs2::DrawableQueueSyncSystem *this)
{
  re::ecs2::RenderingSubsystem::willAddSystemToECSService(this);
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 37) = re::ServiceLocator::serviceOrNull<re::AssetService>(v2);
  v3 = (*(**(this + 5) + 32))(*(this + 5));
  result = re::ServiceLocator::serviceOrNull<re::DrawableQueueService>(v3);
  *(this + 38) = result;
  return result;
}

double re::ecs2::DrawableQueueSyncSystem::willRemoveSystemFromECSService(re::ecs2::DrawableQueueSyncSystem *this)
{
  *(this + 38) = 0;
  result = 0.0;
  *(this + 17) = 0u;
  *(this + 18) = 0u;
  *(this + 15) = 0u;
  *(this + 16) = 0u;
  *(this + 14) = 0u;
  return result;
}

_BYTE *re::ecs2::DrawableQueueSyncSystem::willAddSceneToECSService(re::ecs2::DrawableQueueSyncSystem *this, re::ecs2::Scene *a2)
{
  v5 = a2;
  result = (*(**(this + 5) + 304))(*(this + 5), *(a2 + 47));
  if (result[8] != 2)
  {
    re::ecs2::BasicComponentStates<re::ecs2::DrawableQueueSyncComponent>::addScene(this + 320, a2);
    result = re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 560, &v5);
    if (v5)
    {
      result = *(this + 38);
      if (result)
      {
        return (*(*result + 24))(result);
      }
    }
  }

  return result;
}

unint64_t re::ecs2::BasicComponentStates<re::ecs2::DrawableQueueSyncComponent>::addScene(unint64_t a1, uint64_t a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v48[0] = a2;
  v4 = *(a1 + 128);
  v5 = *(a1 + 136);
  if (v4 >= 0xB)
  {
    if (v5)
    {
      v6 = (a1 + 144);
    }

    else
    {
      v6 = *(a1 + 152);
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
    v7 = (a1 + 144);
    if (!v4)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v7 = *(a1 + 152);
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
    *&v40 = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(a1 + 120, 0);
    v12 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v40);
    re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::init(v12, a1, a2);
    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), v48, &v40);
    re::DynamicBitset<unsigned long long,64ul>::clearBit(a1 + 120, v40);
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
  v14 = *(a1 + 40);
  *&v47 = 0;
  v15 = *(a1 + 8);
  DWORD2(v47) = 0;
  if (v14 + 1 > 4 * v15)
  {
    re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,4ul>::setBucketsCapacity(a1, (v14 + 4) >> 2);
    v15 = *(a1 + 8);
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

  if (*(a1 + 16))
  {
    v16 = a1 + 24;
  }

  else
  {
    v16 = *(a1 + 32);
  }

  v17 = *(v16 + 8 * (v14 >> 2));
  ++*(a1 + 40);
  ++*(a1 + 48);
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
  v23 = *(a1 + 40);
  if (!v23)
  {
LABEL_53:
    re::internal::assertLog(4, v22, "assertion failure: '%s' (%s:line %i) Array is empty", "m_size > 0", "last", 768);
    _os_crash();
    __break(1u);
  }

  v24 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](a1, v23 - 1);
  re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::init(v24, a1, v48[0]);
  *&v57[0] = *(a1 + 40) - 1;
  re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::addNew((a1 + 56), v48, v57);
  v25 = *(a1 + 40);
  v26 = *(a1 + 160);
  if ((v25 & 0x3F) != 0)
  {
    v27 = (v25 >> 6) + 1;
  }

  else
  {
    v27 = v25 >> 6;
  }

  *(a1 + 160) = v25;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 120), v27, &v40);
  if (v25 && v26 > v25)
  {
    v28 = 63;
    v29 = *(a1 + 160) & 0x3FLL;
    if (v29 && v29 != 63)
    {
      v28 = ~(-1 << v29);
    }

    if (*(a1 + 136))
    {
      v30 = a1 + 144;
    }

    else
    {
      v30 = *(a1 + 152);
    }

    *(v30 + 8 * *(a1 + 128) - 8) &= v28;
  }

  v31 = *(a1 + 40);
  v32 = *(a1 + 208);
  if ((v31 & 0x3F) != 0)
  {
    v33 = (v31 >> 6) + 1;
  }

  else
  {
    v33 = v31 >> 6;
  }

  *(a1 + 208) = v31;
  *&v40 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize((a1 + 168), v33, &v40);
  if (v31 && v32 > v31)
  {
    v34 = 63;
    v35 = *(a1 + 208) & 0x3FLL;
    if (v35 && v35 != 63)
    {
      v34 = ~(-1 << v35);
    }

    if (*(a1 + 184))
    {
      v36 = a1 + 192;
    }

    else
    {
      v36 = *(a1 + 200);
    }

    *(v36 + 8 * *(a1 + 176) - 8) &= v34;
  }

  v13 = *&v57[0];
LABEL_49:
  result = re::DynamicBitset<unsigned long long,64ul>::setBit(a1 + 168, v13);
  if (*(a1 + 232) == 1)
  {
    v38 = *(a1 + 216);
    v39 = *(v48[0] + 376);
    LOWORD(v40) = 257;
    DWORD1(v40) = 1023969417;
    BYTE8(v40) = 0;
    re::ecs2::System::setTaskOptions(v38, v39, &v40);
    return re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(a1);
  }

  return result;
}

uint64_t re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *a2;
  v5 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  v6 = (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31);
  v7 = *(result + 24);
  if (v7)
  {
    v8 = v6 % v7;
    v9 = *(*(result + 8) + 4 * (v6 % v7));
    if (v9 != 0x7FFFFFFF)
    {
      v10 = *(result + 16);
      if (*(v10 + 24 * v9 + 16) == v4)
      {
        return result;
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
          return result;
        }
      }
    }
  }

  else
  {
    LODWORD(v8) = 0;
  }

  result = re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(result, v8, v6, a2, a2);
  ++*(v3 + 40);
  return result;
}

uint64_t re::ecs2::DrawableQueueSyncSystem::willRemoveSceneFromECSService(re::ecs2::DrawableQueueSyncSystem *this, re::ecs2::Scene *a2)
{
  v51 = *MEMORY[0x1E69E9840];
  v41[0] = a2;
  *&v50[0] = a2;
  v3 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(this + 47, v50);
  if (v3 != -1)
  {
    v4 = *(this + 48) + 16 * v3;
    re::DynamicBitset<unsigned long long,64ul>::setBit(this + 440, *(v4 + 8));
    re::DynamicBitset<unsigned long long,64ul>::clearBit(this + 488, *(v4 + 8));
    v5 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[](this + 320, *(v4 + 8));
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

    re::HashBrown<re::ecs2::Scene const*,unsigned long,re::Hash<re::ecs2::Scene const*>,re::EqualTo<re::ecs2::Scene const*>,void,false>::remove(this + 376, v50);
  }

  re::HashSetBase<re::ecs2::Entity const*,re::ecs2::Entity const*,re::internal::ValueAsKey<re::ecs2::Entity const*>,re::Hash<re::ecs2::Entity const*>,re::EqualTo<re::ecs2::Entity const*>,true,false>::remove(this + 560, v41);
  if (v41[0])
  {
    v15 = *(this + 38);
    if (v15)
    {
      (*(*v15 + 32))(v15);
    }
  }

  v16 = *(this + 148);
  if (v16)
  {
    v17 = 0;
    v18 = (*(this + 72) + 8);
    while (1)
    {
      v19 = *v18;
      v18 += 6;
      if (v19 < 0)
      {
        break;
      }

      if (v16 == ++v17)
      {
        LODWORD(v17) = *(this + 148);
        break;
      }
    }
  }

  else
  {
    LODWORD(v17) = 0;
  }

  if (v17 != v16)
  {
    v20 = *(this + 72);
    do
    {
      v21 = *(v20 + 24 * v17 + 16);
      if (v21 && v21 != v41[0])
      {
        v23 = *(this + 38);
        if (v23)
        {
          return (*(*v23 + 24))(v23);
        }
      }

      if (v16 <= v17 + 1)
      {
        v24 = v17 + 1;
      }

      else
      {
        v24 = *(this + 148);
      }

      while (v24 - 1 != v17)
      {
        LODWORD(v17) = v17 + 1;
        if ((*(v20 + 24 * v17 + 8) & 0x80000000) != 0)
        {
          goto LABEL_36;
        }
      }

      LODWORD(v17) = v24;
LABEL_36:
      ;
    }

    while (v17 != v16);
  }

  v25 = (*(**(this + 5) + 288))(*(this + 5)) + 120;
  result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::DataArrayIterator(v50, v25, 0);
  v27 = *&v50[0];
  v39 = *&v50[0];
  v40 = DWORD2(v50[0]);
  v28 = WORD4(v50[0]);
  v29 = HIWORD(DWORD2(v50[0]));
  if (v25 != *&v50[0] || WORD4(v50[0]) != 0xFFFF || v29 != 0xFFFF)
  {
    while (1)
    {
      v32 = v29;
      v33 = *(v27 + 16);
      if (v33 <= v29)
      {
        v41[1] = 0;
        memset(v50, 0, sizeof(v50));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v42 = 136315906;
        v43 = "operator[]";
        v44 = 1024;
        v45 = 797;
        v46 = 2048;
        v47 = v32;
        v48 = 2048;
        v49 = v33;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v34 = *(*(v27 + 32) + 16 * v29) + 240 * v28;
      v35 = *(v34 + 200);
      if (v35)
      {
        break;
      }

LABEL_53:
      result = re::DataArray<re::ecs2::SceneGroup>::DataArrayIterator<re::ecs2::SceneGroup,re::ecs2::SceneGroup&>::increment(&v39);
      v27 = v39;
      v28 = v40;
      v29 = HIWORD(v40);
      if (v39 == v25 && v40 == 0xFFFF && HIWORD(v40) == 0xFFFF)
      {
        return result;
      }
    }

    v36 = *(v34 + 216);
    v37 = 8 * v35;
    while (1)
    {
      if (*v36 != v41[0] && *((*(**(this + 5) + 304))(*(this + 5), *(*v36 + 376)) + 8) != 2)
      {
        v38 = *v36;
        if (*(*v36 + 56))
        {
          *&v50[0] = *v36;
          re::ecs2::BasicComponentStates<re::ecs2::DrawableQueueSyncComponent>::addScene(this + 320, v38);
          re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::add(this + 560, v50);
          if (*&v50[0])
          {
            v23 = *(this + 38);
            if (v23)
            {
              return (*(*v23 + 24))(v23);
            }
          }
        }
      }

      ++v36;
      v37 -= 8;
      if (!v37)
      {
        goto LABEL_53;
      }
    }
  }

  return result;
}

void re::ecs2::DrawableQueueSyncSystem::update(void *a1, uint64_t a2, uint64_t a3)
{
  v30[0] = a2;
  v30[1] = a3;
  re::StackScratchAllocator::StackScratchAllocator(v42);
  v38 = 1;
  v39 = 0;
  v40 = 0;
  v36 = v42;
  v37 = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(&v36, 0);
  v38 += 2;
  v5 = a1[66];
  if ((v5 & 0x3F) != 0)
  {
    v6 = (v5 >> 6) + 1;
  }

  else
  {
    v6 = v5 >> 6;
  }

  v41 = a1[66];
  v31[0] = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(&v36, v6, v31);
  v7 = *(a3 + 200);
  if (v7)
  {
    v8 = *(a3 + 216);
    v9 = 8 * v7;
    do
    {
      v10 = *v8++;
      v31[0] = v10;
      v11 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find(a1 + 47, v31);
      re::DynamicBitset<unsigned long long,64ul>::setBit(&v36, *(a1[48] + 16 * v11 + 8));
      v9 -= 8;
    }

    while (v9);
  }

  re::DynamicBitset<unsigned long long,64ul>::andWithBitSet(&v36, (a1 + 61));
  v32 = 1;
  v33 = 0;
  v34 = 0;
  v31[0] = v42;
  v31[1] = 0;
  re::DynamicOverflowArray<std::unique_ptr<void,std::function<void ()(void *)>> *,2ul>::setCapacity(v31, 0);
  v32 += 2;
  v12 = a1[66];
  if ((v12 & 0x3F) != 0)
  {
    v13 = (v12 >> 6) + 1;
  }

  else
  {
    v13 = v12 >> 6;
  }

  v35 = a1[66];
  v43 = 0;
  re::DynamicOverflowArray<unsigned long long,2ul>::resize(v31, v13, &v43);
  re::DynamicBitset<unsigned long long,64ul>::subtractBitSet((a1 + 61), &v36);
  v14 = v40;
  if (v38)
  {
    v14 = &v39;
  }

  v15 = v37;
  if ((v37 & 0x3FFFFFFFFFFFFFFLL) != 0)
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
        v21 = re::BucketArray<re::ecs2::BasicComponentStateSceneData<re::ecs2::BlendShapeWeightsBufferComponent>,4ul>::operator[]((a1 + 40), FirstBitSet);
        v22 = *(*v21 + 224);
        v23 = v21[3];
        v24 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v23);
        if (*(v24 + 40))
        {
          v25 = (*(*v22 + 24))(v22, v30, v21, v23, v24, 0);
        }

        else
        {
          v25 = 0;
        }

        v26 = v21[5];
        v27 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v26);
        if (*(v27 + 40))
        {
          v25 |= (*(*v22 + 32))(v22, v30, v21, v26, v27, 0);
        }

        v28 = v21[6];
        v29 = re::BucketArray<re::Matrix4x4<float>,8ul>::operator[](v21[2] + 8, v28);
        if (*(v29 + 40))
        {
          if (((v25 | (*(*v22 + 40))(v22, v30, v21, v28, v29, 0)) & 1) == 0)
          {
            goto LABEL_28;
          }
        }

        else if (!v25)
        {
LABEL_28:
          re::DynamicBitset<unsigned long long,64ul>::clearBit(v31, FirstBitSet);
          goto LABEL_29;
        }

        re::DynamicBitset<unsigned long long,64ul>::setBit(v31, FirstBitSet);
LABEL_29:
        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v36, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_30:
  re::DynamicBitset<unsigned long long,64ul>::orWithBitSet((a1 + 61), v31);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate((a1 + 40));
  if (v31[0] && (v32 & 1) == 0)
  {
    (*(*v31[0] + 40))(v31[0], v34);
  }

  if (v36 && (v38 & 1) == 0)
  {
    (*(*v36 + 40))(v36, v40);
  }

  re::StackScratchAllocator::~StackScratchAllocator(v42);
}

BOOL re::ecs2::DrawableQueueSyncComponentStateImpl::processDirtyComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v45 = *MEMORY[0x1E69E9840];
  re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::DataArrayIterator(v44, a5, 0);
  v8 = *&v44[0];
  v32 = a4;
  v33 = *&v44[0];
  v34 = DWORD2(v44[0]);
  v9 = WORD4(v44[0]);
  v10 = HIWORD(DWORD2(v44[0]));
  if (*&v44[0] != a5 || WORD4(v44[0]) != 0xFFFF || v10 != 0xFFFF)
  {
    do
    {
      v13 = v10;
      v14 = *(v8 + 16);
      if (v14 <= v10)
      {
        v35 = 0;
        memset(v44, 0, sizeof(v44));
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        v36 = 136315906;
        v37 = "operator[]";
        v38 = 1024;
        v39 = 797;
        v40 = 2048;
        v41 = v13;
        v42 = 2048;
        v43 = v14;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v15 = *(*(*(v8 + 32) + 16 * v10) + 8 * v9);
      v16 = *(v15 + 40);
      if (v16)
      {
        v17 = atomic_load((v16 + 896));
        if (v17 == 2)
        {
          v18 = re::AssetHandle::loadedAsset<re::TextureAsset>((v15 + 32));
          v19 = *(v18 + 56);
          if (v19 && *(v19 + 295) == 1)
          {
            v20 = 0;
            v21 = 3;
            atomic_compare_exchange_strong((*(*(v19 + 432) + 32) + 16 * *(v15 + 28) + 32), &v21, 2u);
            v22 = atomic_load((*(*(*(v18 + 56) + 432) + 32) + 16 * *(v15 + 28) + 40));
            v23 = *(*(v18 + 56) + 432);
            do
            {
              v24 = atomic_load((*(v23 + 32) + v20 + 32));
              v25 = atomic_load((*(v23 + 32) + v20 + 40));
              if (v24 == 3 && v25 < v22)
              {
                v27 = 3;
                atomic_compare_exchange_strong((*(v23 + 32) + v20 + 32), &v27, 2u);
              }

              v20 += 16;
            }

            while (v20 != 48);
          }

          v28 = re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::handle(&v33);
          re::ecs2::ComponentBucketsBase::moveComponent(*(a3 + 16), v32, v28, *(a3 + 32));
        }
      }

      re::DataArray<re::RigGraphOperatorDefinition>::DataArrayIterator<re::RigGraphOperatorDefinition,re::RigGraphOperatorDefinition&>::increment(&v33);
      v8 = v33;
      v9 = v34;
      v10 = HIWORD(v34);
    }

    while (v33 != a5 || v34 != 0xFFFF || HIWORD(v34) != 0xFFFF);
  }

  return *(a5 + 40) != 0;
}

unint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(unint64_t *a1, unint64_t a2, unint64_t a3)
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

unint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DrawableQueueSyncComponent>::didDependentComponentChange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::EntityComponentCollection::get((a3 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
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

    return re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a2, v11, v7);
  }

  return result;
}

uint64_t re::ecs2::BasicComponentStateImpl<re::ecs2::DrawableQueueSyncComponent>::processPreparingComponents(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
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

void re::ecs2::DrawableQueueSyncSystem::~DrawableQueueSyncSystem(re::ecs2::DrawableQueueSyncSystem *this)
{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 40);

  re::ecs2::System::~System(this);
}

{
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 70);
  re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::~BasicComponentStates(this + 40);
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs226DrawableQueueSyncComponentELNS_17RealityKitReleaseE8EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 8;
  *(a2 + 8) = 0;
  return result;
}

uint64_t *re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::init(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v84 = *MEMORY[0x1E69E9840];
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = re::ecs2::SceneComponentTable::get((a3 + 200), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType) + 480;
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
    *v10 = &unk_1F5CF1588;
    v10[1] = a1;
    v10[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidChangeEvent>;
    v10[3] = 0;
    v83 = v10;
    v11 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidChangeEvent>(v9, v81, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v13 = v12;
    v14 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v14 = v11;
    v14[1] = v13;
    v15 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::destroyCallable(v81);
    v79 = re::globalAllocators(v15)[2];
    v16 = (*(*v79 + 32))(v79, 32, 0);
    *v16 = &unk_1F5CF15E0;
    v16[1] = a1;
    v16[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidActivateEvent>;
    v16[3] = 0;
    v80 = v16;
    v17 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidActivateEvent>(v9, v78, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v19 = v18;
    v20 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v20 = v17;
    v20[1] = v19;
    v21 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::destroyCallable(v78);
    v76 = re::globalAllocators(v21)[2];
    v22 = (*(*v76 + 32))(v76, 32, 0);
    *v22 = &unk_1F5CF1638;
    v22[1] = a1;
    v22[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentWillDeactivateEvent>;
    v22[3] = 0;
    v77 = v22;
    v23 = re::EventBus::subscribe<re::ecs2::Entity,REComponentWillDeactivateEvent>(v9, v75, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
    v25 = v24;
    v26 = re::BucketArray<RESubscriptionHandle,8ul>::addUninitialized(a1 + 56);
    *v26 = v23;
    v26[1] = v25;
    v27 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::destroyCallable(v75);
    v73 = re::globalAllocators(v27)[2];
    v28 = (*(*v73 + 32))(v73, 32, 0);
    *v28 = &unk_1F5CF1690;
    v28[1] = a1;
    v28[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidAddEvent>;
    v28[3] = 0;
    v74 = v28;
    v29 = re::EventBus::subscribe<re::ecs2::Entity,REComponentDidAddEvent>(v9, v72, re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType, 0);
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
        *v37 = &unk_1F5CF1588;
        v37[1] = a1;
        v37[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>;
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
        *v43 = &unk_1F5CF15E0;
        v43[1] = a1;
        v43[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>;
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
        *v49 = &unk_1F5CF1638;
        v49[1] = a1;
        v49[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>;
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
        *v55 = &unk_1F5CF1690;
        v55[1] = a1;
        v55[2] = re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>;
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidChangeEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidActivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentWillDeactivateEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::componentChangedHandler<REComponentDidAddEvent>(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v15 = *(a1 + 8);
  v5 = re::HashBrown<re::WeakStringID,re::IndexAndProtectionOptions,re::Hash<re::WeakStringID>,re::EqualTo<re::WeakStringID>,re::Hash<re::IndexAndProtectionOptions>,false>::find((v4 + 56), &v15);
  if (v5 != -1)
  {
    re::DynamicBitset<unsigned long long,64ul>::setBit(v4 + 168, *(*(v4 + 64) + 16 * v5 + 8));
    re::ecs2::BasicComponentStates<re::ecs2::BlendShapeWeightsBufferComponent>::requestSchedulerUpdate(v4);
  }

  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::DrawableQueueSyncComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v6)
  {
    v7 = v6;
    for (i = 24; i != 56; i += 8)
    {
      v9 = re::ecs2::ComponentBucketsBase::componentHandle(*(a1 + 16), *(a1 + i), v7);
      if (v9 != -1 && (v10 & 0xFFFFFF00000000) != 0)
      {
        re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::setComponentState(a1, v9, v10);
        return 0;
      }
    }

    v12 = re::ecs2::ComponentBucketsBase::addComponent(*(a1 + 16), *(a1 + 24), v7);
    (*(**(*a1 + 224) + 16))(*(*a1 + 224), a1, v12, v13);
  }

  return 0;
}

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidChangeEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidActivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentWillDeactivateEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::dependentComponentChangedHandler<REComponentDidAddEvent>(unint64_t *a1, uint64_t a2, uint64_t a3)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1588;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidChangeEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidChangeEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1588;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF15E0;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidActivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidActivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF15E0;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1638;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentWillDeactivateEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentWillDeactivateEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1638;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1690;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>,REEventHandlerResult (re::ecs2::BasicComponentStateSceneData<re::ecs2::DrawableQueueSyncComponent>::*)(re::ecs2::Entity *,REComponentDidAddEvent const&),REEventHandlerResult ()(re::ecs2::Entity *,REComponentDidAddEvent const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1690;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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
  *(*(a1 + 16) + 24 * v8 + 8) = *(*(a1 + 16) + 24 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 24 * v8) = a3;
  *(*(a1 + 16) + 24 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

void re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::ecs2::Scene *,re::ecs2::Scene *,re::internal::ValueAsKey<re::ecs2::Scene *>,re::Hash<re::ecs2::Scene *>,re::EqualTo<re::ecs2::Scene *>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, *&v13[16] + v10 + 16);
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 24;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

void re::ecs2::introspect_AlchemistAnimationState(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A92D0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A92D8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A92D8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A9338, "AlchemistAnimationState", 1, 1, 1, 1);
      qword_1EE1A9338 = &unk_1F5D0C658;
      qword_1EE1A9378 = &re::ecs2::introspect_AlchemistAnimationState(BOOL)::enumTable;
      dword_1EE1A9348 = 9;
      __cxa_guard_release(&qword_1EE1A92D8);
    }

    if (_MergedGlobals_271)
    {
      break;
    }

    _MergedGlobals_271 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A9338, a2);
    v37 = 0x984AC611EA72F5FELL;
    v38 = "AlchemistAnimationState";
    v41 = 0x31CD534126;
    v42 = "uint8_t";
    v4 = v40[0];
    v5 = v40[1];
    if (v41)
    {
      if (v41)
      {
      }
    }

    if (v4)
    {
      v6 = qword_1EE1A9378;
      v41 = v4;
      v42 = v5;
      re::TypeBuilder::beginEnumType(v40, &v37, 1, 1, &v41);
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
            *&v39.var0 = 2 * v11;
            v39.var1 = v10;
            re::TypeBuilder::addEnumConstant(v40, v15, &v39);
            if (*&v39.var0)
            {
              if (*&v39.var0)
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
              *&v39.var0 = 2 * v20;
              v39.var1 = v19;
              re::TypeBuilder::addEnumConstantRenaming(v40, v24, &v39);
              if (*&v39.var0)
              {
                if (*&v39.var0)
                {
                }
              }

              v7 = *v6;
            }
          }
        }
      }

      re::TypeBuilder::~TypeBuilder(v40, v26);
      xmmword_1EE1A9358 = v39;
      if (v37)
      {
        if (v37)
        {
        }
      }

      return;
    }

    re::internal::assertLog(5, v3, "assertion failure: '%s' (%s:line %i) Failed to determine underlying type of enum %s.", "valueID.isValid()", "registerEnumType", 2930, v38);
    _os_crash();
    __break(1u);
LABEL_43:
    v28 = __cxa_guard_acquire(&qword_1EE1A92D0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Idle";
      qword_1EE1A92F0 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Preparing";
      qword_1EE1A92F8 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 1) = 2;
      *(v34 + 2) = "Animating";
      qword_1EE1A9300 = v34;
      v35 = re::introspectionAllocator(v34);
      v36 = (*(*v35 + 32))(v35, 24, 8);
      *v36 = 1;
      *(v36 + 8) = 3;
      *(v36 + 16) = "Ending";
      qword_1EE1A9308 = v36;
      __cxa_guard_release(&qword_1EE1A92D0);
    }
  }
}

void *re::ecs2::allocInfo_AlchemistAnimationParams(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A92E0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A92E0))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9380, "AlchemistAnimationParams");
    __cxa_guard_release(&qword_1EE1A92E0);
  }

  return &unk_1EE1A9380;
}

void re::ecs2::initInfo_AlchemistAnimationParams(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v26[0] = 0x710DFC2B57A621B0;
  v26[1] = "AlchemistAnimationParams";
  if (v26[0])
  {
    if (v26[0])
    {
    }
  }

  *(this + 2) = v27;
  if ((atomic_load_explicit(&qword_1EE1A92E8, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A92E8);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      re::ecs2::introspect_AlchemistAnimationState(v6, v7);
      v8 = (*(*v6 + 32))(v6, 72, 8);
      *v8 = 1;
      *(v8 + 8) = "state";
      *(v8 + 16) = &qword_1EE1A9338;
      *(v8 + 24) = 0;
      *(v8 + 32) = 1;
      *(v8 + 40) = 0;
      *(v8 + 48) = 0;
      *(v8 + 56) = 0;
      *(v8 + 64) = 0;
      qword_1EE1A9310 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_float(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "effectStrength";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x400000002;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A9318 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_float(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "gradientTintStrength";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x800000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A9320 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_float(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "timeSinceAnimationStarted";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0xC00000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A9328 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_AssetHandle(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "alchemistLoadingTextureHandle";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1000000005;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A9330 = v24;
      __cxa_guard_release(&qword_1EE1A92E8);
    }
  }

  *(this + 2) = 0x2800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 5;
  *(this + 8) = &qword_1EE1A9310;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AlchemistAnimationParams>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AlchemistAnimationParams>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AlchemistAnimationParams>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AlchemistAnimationParams>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v25 = v27;
}

double re::internal::defaultConstruct<re::ecs2::AlchemistAnimationParams>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *a3 = 0;
  result = 0.0;
  *(a3 + 4) = 0u;
  *(a3 + 20) = 0u;
  *(a3 + 36) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::AlchemistAnimationParams>(uint64_t a1)
{
  *a1 = 0;
  result = 0.0;
  *(a1 + 4) = 0u;
  *(a1 + 20) = 0u;
  *(a1 + 36) = 0;
  return result;
}

void re::IntrospectionInfo<re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(uint64_t a1, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A9430, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9430))
  {
    re::IntrospectionHashTableBase::IntrospectionHashTableBase(&qword_1EE1A9478);
    qword_1EE1A9478 = &unk_1F5CF1868;
    __cxa_guard_release(&qword_1EE1A9430);
  }

  if ((_MergedGlobals_272 & 1) == 0)
  {
    v2 = re::IntrospectionInfo<re::StringID>::get(1, a2);
    v4 = re::introspect_AssetHandle(1, v3);
    if ((_MergedGlobals_272 & 1) == 0)
    {
      v5 = v4;
      _MergedGlobals_272 = 1;
      v6 = *(v4 + 6);
      ArcSharedObject::ArcSharedObject(&qword_1EE1A9478, 0);
      qword_1EE1A9488 = 0x3000000007;
      dword_1EE1A9490 = v6;
      word_1EE1A9494 = 0;
      *&xmmword_1EE1A9498 = 0;
      *(&xmmword_1EE1A9498 + 1) = 0xFFFFFFFFLL;
      qword_1EE1A94A8 = v2;
      unk_1EE1A94B0 = 0;
      qword_1EE1A94B8 = v5;
      unk_1EE1A94C0 = 0;
      qword_1EE1A9478 = &unk_1F5CF1868;
      re::IntrospectionRegistry::add(v7, v8);
      re::getPrettyTypeName(&qword_1EE1A9478, &v23);
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
        re::TypeBuilder::setConstructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke);
        re::TypeBuilder::setDestructor(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke);
        re::TypeBuilder::setDictionaryAccessors(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
        re::TypeBuilder::setDictionaryIterator(&v23, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke, re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke);
        re::TypeBuilder::~TypeBuilder(&v23, v16);
        re::StackScratchAllocator::~StackScratchAllocator(v25);
      }

      xmmword_1EE1A9498 = v17;
      if (v20)
      {
        if (v20)
        {
        }
      }
    }
  }
}

void *re::ecs2::allocInfo_AudioAnimationComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9420, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9420))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A94C8, "AudioAnimationComponent");
    __cxa_guard_release(&qword_1EE1A9420);
  }

  return &unk_1EE1A94C8;
}

void re::ecs2::initInfo_AudioAnimationComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v36[0] = 0x2C04ED5A7FFBF85ELL;
  v36[1] = "AudioAnimationComponent";
  if (v36[0])
  {
    if (v36[0])
    {
    }
  }

  *(this + 2) = v37;
  if ((atomic_load_explicit(&qword_1EE1A9418, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9418);
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
      qword_1EE1A9438 = v8;
      v9 = re::introspectionAllocator(v8);
      v10 = re::introspect_AudioAnimationState(1);
      v11 = (*(*v9 + 32))(v9, 72, 8);
      *v11 = 1;
      *(v11 + 8) = "animationState";
      *(v11 + 16) = v10;
      *(v11 + 24) = 0;
      *(v11 + 32) = 0x2000000001;
      *(v11 + 40) = 0;
      *(v11 + 48) = 0;
      *(v11 + 56) = 0;
      *(v11 + 64) = 0;
      qword_1EE1A9440 = v11;
      v12 = re::introspectionAllocator(v11);
      v14 = re::introspect_float(1, v13);
      v15 = (*(*v12 + 32))(v12, 72, 8);
      *v15 = 1;
      *(v15 + 8) = "animationGain";
      *(v15 + 16) = v14;
      *(v15 + 24) = 0;
      *(v15 + 32) = 0x3800000002;
      *(v15 + 40) = 0;
      *(v15 + 48) = 0;
      *(v15 + 56) = 0;
      *(v15 + 64) = 0;
      qword_1EE1A9448 = v15;
      v16 = re::introspectionAllocator(v15);
      v18 = re::introspect_AssetHandle(1, v17);
      v19 = (*(*v16 + 32))(v16, 72, 8);
      *v19 = 1;
      *(v19 + 8) = "audioAsset";
      *(v19 + 16) = v18;
      *(v19 + 24) = 0;
      *(v19 + 32) = 0x4800000003;
      *(v19 + 40) = 0;
      *(v19 + 48) = 0;
      *(v19 + 56) = 0;
      *(v19 + 64) = 0;
      qword_1EE1A9450 = v19;
      v20 = re::introspectionAllocator(v19);
      v22 = re::introspect_float(1, v21);
      v23 = (*(*v20 + 32))(v20, 72, 8);
      *v23 = 1;
      *(v23 + 8) = "mediaOffset";
      *(v23 + 16) = v22;
      *(v23 + 24) = 0;
      *(v23 + 32) = 0x3C00000004;
      *(v23 + 40) = 0;
      *(v23 + 48) = 0;
      *(v23 + 56) = 0;
      *(v23 + 64) = 0;
      qword_1EE1A9458 = v23;
      v24 = re::introspectionAllocator(v23);
      v26 = re::introspect_float(1, v25);
      v27 = (*(*v24 + 32))(v24, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "additionalLinearGain";
      *(v27 + 16) = v26;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x4000000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1A9460 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_BOOL(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "mute";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x4400000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1A9468 = v31;
      v32 = re::introspectionAllocator(v31);
      re::IntrospectionInfo<re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>>::get(v32, v33);
      v34 = (*(*v32 + 32))(v32, 72, 8);
      *v34 = 1;
      *(v34 + 8) = "animationAssets";
      *(v34 + 16) = &qword_1EE1A9478;
      *(v34 + 24) = 0;
      *(v34 + 32) = 0x9800000007;
      *(v34 + 40) = 0;
      *(v34 + 48) = 0;
      *(v34 + 56) = 0;
      *(v34 + 64) = 0;
      qword_1EE1A9470 = v34;
      __cxa_guard_release(&qword_1EE1A9418);
    }
  }

  *(this + 2) = 0xF800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1A9438;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioAnimationComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioAnimationComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioAnimationComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioAnimationComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223AudioAnimationComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v35 = v37;
}

void *re::ecs2::allocInfo_AudioAnimationSystem(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9428, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9428))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9558, "AudioAnimationSystem");
    __cxa_guard_release(&qword_1EE1A9428);
  }

  return &unk_1EE1A9558;
}

void re::ecs2::initInfo_AudioAnimationSystem(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x7DC7B6F774A6607ALL;
  v6[1] = "AudioAnimationSystem";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x12000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_AudioAnimationSystem(re::IntrospectionBase *)::structureAttributes;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::AudioAnimationSystem>;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::AudioAnimationSystem>;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::AudioAnimationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::AudioAnimationSystem>(void)::{lambda(void *)#1}::__invoke;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::AudioAnimationSystem>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::AudioAnimationSystem>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

uint64_t re::internal::defaultConstruct<re::ecs2::AudioAnimationSystem>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = re::ecs2::System::System(a3, 1);
  *result = &unk_1F5CF1740;
  *(result + 224) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  return result;
}

uint64_t re::internal::defaultConstructV2<re::ecs2::AudioAnimationSystem>(uint64_t a1)
{
  result = re::ecs2::System::System(a1, 1);
  *result = &unk_1F5CF1740;
  *(result + 224) = 0;
  *(result + 240) = 0;
  *(result + 264) = 0;
  return result;
}

double re::ecs2::AudioAnimationComponent::AudioAnimationComponent(re::ecs2::AudioAnimationComponent *this)
{
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CF16E8;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0;
  *(v1 + 44) = 0;
  *(v1 + 48) = 0;
  *(v1 + 56) = 1065353216;
  *(v1 + 64) = 1065353216;
  *(v1 + 68) = 0;
  *(v1 + 128) = 0;
  *(v1 + 144) = 0;
  result = 0.0;
  *(v1 + 152) = 0u;
  *(v1 + 168) = 0u;
  *(v1 + 184) = 0;
  *(v1 + 72) = 0u;
  *(v1 + 88) = 0u;
  *(v1 + 104) = 0u;
  *(v1 + 117) = 0;
  *(v1 + 188) = 0x7FFFFFFFLL;
  *(v1 + 200) = 0u;
  *(v1 + 216) = 0u;
  *(v1 + 232) = 0;
  *(v1 + 236) = 0x7FFFFFFFLL;
  return result;
}

void re::ecs2::AudioAnimationComponent::~AudioAnimationComponent(re::ecs2::AudioAnimationComponent *this)
{
  *this = &unk_1F5CF16E8;
  v2 = (this + 72);
  re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 25);
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(this + 19);
  re::AssetHandle::~AssetHandle(v2);
  *this = &unk_1F5CCF868;
  objc_destructInstance(this + 8);
}

{
  re::ecs2::AudioAnimationComponent::~AudioAnimationComponent(this);

  JUMPOUT(0x1E6906520);
}

void re::ecs2::AudioAnimationComponent::setAudioAssetForEvent(re::ecs2::AudioAnimationComponent *this, re::AssetHandle *a2, const re::DynamicString *a3)
{
  if (*(a3 + 1))
  {
    v5 = *(a3 + 2);
  }

  else
  {
    v5 = a3 + 9;
  }

  v7 = 0;
  v8 = &str_67;
  v6 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(this + 152, &v7, a2);
  if (v7)
  {
    if (v7)
    {
    }
  }
}

void *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, uint64_t *a2, const re::AssetHandle *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  v7 = HIDWORD(v10);
  if (HIDWORD(v10) == 0x7FFFFFFF)
  {
    return re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::AssetHandle const&>(a1, &v9, a2, a3);
  }

  ++*(a1 + 40);
  return re::AssetHandle::operator=(*(a1 + 16) + 48 * v7 + 24, a3);
}

void re::ecs2::AudioAnimationComponent::removeAudioAssetForEvent(re::ecs2::AudioAnimationComponent *this, const re::DynamicString *a2)
{
  if (*(a2 + 1))
  {
    v3 = *(a2 + 2);
  }

  else
  {
    v3 = a2 + 9;
  }

  v6 = 0;
  v7 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v6 >> 31) ^ (v6 >> 1))) >> 27));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 152, &v6, v4 ^ (v4 >> 31), v8);
  v5 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(this + 152, v8);
  if (v6)
  {
    if (v6)
    {
    }
  }
}

uint64_t re::ecs2::AudioAnimationComponent::getPlaybackTokenForEvent(re::ecs2::AudioAnimationComponent *this, const re::DynamicString *a2)
{
  if (*(a2 + 1))
  {
    v3 = *(a2 + 2);
  }

  else
  {
    v3 = a2 + 9;
  }

  v8 = 0;
  v9 = &str_67;
  v4 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((v8 >> 31) ^ (v8 >> 1))) >> 27));
  v5 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(this + 200, &v8, v4 ^ (v4 >> 31), v10);
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
    v7 = *(this + 27) + 32 * v11;
    if (v8)
    {
      if (v8)
      {
      }
    }

    return *(v7 + 24);
  }
}

void re::ecs2::AudioAnimationSystem::willAddSystemToECSService(re::ecs2::AudioAnimationSystem *this)
{
  v2 = (*(**(this + 5) + 32))(*(this + 5));
  *(this + 28) = re::ServiceLocator::serviceOrNull<re::AudioSceneService>(v2);
  v3 = [MEMORY[0x1E695E000] standardUserDefaults];
  [v3 doubleForKey:@"com.apple.re.AudioAnimationSyncThreshold"];
  *(this + 29) = v4;

  if (*(this + 29) == 0.0)
  {
    *(this + 29) = 0x3FA5810624DD2F1BLL;
  }
}

uint64_t re::ecs2::AudioAnimationSystem::willRemoveSystemFromECSService(uint64_t this)
{
  *(this + 224) = 0;
  *(this + 232) = 0;
  return this;
}

void re::ecs2::AudioAnimationSystem::willAddSceneToECSService(re::ecs2::AudioAnimationSystem *this, re::ecs2::Scene *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v24 = this;
  v25[0] = re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioAnimationSystem::didAddComponents,re::ecs2::AudioAnimationSystem>;
  v25[1] = 0;
  v25[2] = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::NetworkSystem,re::ecs2::Component *>::addSubscription((v4 + 8), &v24);
  v6 = *(a2 + 36);
  if (v6)
  {
    v7 = re::globalAllocators(v5)[2];
    v19 = v7;
    v8 = (*(*v7 + 32))(v7, 32, 0);
    *v8 = &unk_1F5CF1800;
    v8[1] = this;
    v8[2] = re::ecs2::AudioAnimationSystem::animationTimelineEventDidStart;
    v8[3] = 0;
    v20 = v8;
    v16 = v7;
    v17 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v15, v18);
    v22 = v16;
    v23 = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v21, v15);
    HasTimelineEvent = re::EventBus::getTypeId<REAnimationHasTimelineEventStart>();
    EventInfo = re::EventBus::addOrGetEventInfo(v6, HasTimelineEvent);
    v28 = v22;
    v29 = 0;
    v11 = re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v27, v21);
    v25[5] = re::globalAllocators(v11)[2];
    v26 = 0;
    v24 = &unk_1F5CF1908;
    v25[3] = v28;
    v25[4] = 0;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(v25, v27);
    v26 = &v24;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v27);
    v12 = re::EventBus::EventInfo::addSubscription(EventInfo, &v24, 0, 0xE32FFACEFE22CE5);
    v14 = v13;
    re::FunctionBase<48ul,REEventHandlerResult ()(void *,void const*)>::destroyCallable(&v24);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v21);
    if ((*(this + 240) & 1) == 0)
    {
      *(this + 240) = 1;
    }

    *(this + 31) = v12;
    *(this + 32) = v14;
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v15);
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(v18);
  }
}

uint64_t re::ecs2::AudioAnimationSystem::animationTimelineEventDidStart(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  v5 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  v6 = re::ecs2::EntityComponentCollection::get((a2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
  if (v5)
  {
    v7 = v6 == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    return 0;
  }

  v8 = v6;
  v10 = *(a3 + 32);
  v9 = *(a3 + 40);
  *&buf = 0;
  *(&buf + 1) = &str_67;
  v11 = re::TimelineEventData::parameter<re::StringID>(v9, v10, &buf);
  v12 = v11;
  if (buf)
  {
    if (buf)
    {
    }
  }

  if (v12)
  {
    if (*&v12->var0 > 1uLL || (v13 = v12->var1) == 0 || *v13)
    {
      v14 = *re::audioLogObjects(v11);
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
      {
        v42 = v14;
        var1 = v12->var1;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = var1;
        _os_log_debug_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEBUG, "AudioAnimationSystem: Play audio animation event: %s", &buf, 0xCu);
      }

      v15 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) >> 27));
      v16 = re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 152, v12, v15 ^ (v15 >> 31), &buf);
      if (HIDWORD(buf) != 0x7FFFFFFF)
      {
        re::AssetHandle::AssetHandle(v46, (*(v5 + 168) + 48 * HIDWORD(buf) + 24));
        v21 = re::ecs2::AudioPlayerComponent::prepare(v8, v46);
        re::AssetHandle::~AssetHandle(v46);
        re::ecs2::AudioPlayerComponent::play(v8, v21, 1);
        buf = 0uLL;
        v48 = 0;
        v22 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*&v12->var0 >> 31) ^ (*&v12->var0 >> 1))) >> 27));
        v11 = re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v12, v22 ^ (v22 >> 31), &buf);
        v23 = HIDWORD(buf);
        if (HIDWORD(buf) == 0x7FFFFFFF)
        {
          v24 = re::HashTable<re::StringID,unsigned long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v5 + 200, DWORD2(buf), buf);
          v11 = re::StringID::StringID((v24 + 8), v12);
          *(v24 + 24) = v21;
          ++*(v5 + 240);
        }

        else
        {
          ++*(v5 + 240);
          *(*(v5 + 216) + 32 * v23 + 24) = v21;
        }

        v20 = 1;
        goto LABEL_22;
      }

      v17 = *re::audioLogObjects(v16);
      v11 = os_log_type_enabled(v17, OS_LOG_TYPE_INFO);
      if (v11)
      {
        v18 = v17;
        v19 = v12->var1;
        LODWORD(buf) = 136315138;
        *(&buf + 4) = v19;
        _os_log_impl(&dword_1E1C61000, v18, OS_LOG_TYPE_INFO, "AudioAnimationSystem: no audio asset defined for event: %s", &buf, 0xCu);
      }
    }
  }

  v20 = 0;
LABEL_22:
  v25 = *(a3 + 32);
  *&buf = 0;
  *(&buf + 1) = &str_67;
  v26 = re::TimelineEventData::parameter<re::StringID>(v9, v25, &buf);
  v28 = v26;
  if (buf)
  {
    if (buf)
    {
    }
  }

  if (!v28)
  {
    goto LABEL_32;
  }

  if (*v28 <= 1uLL)
  {
    v29 = *(v28 + 1);
    if (v29)
    {
      if (!*v29)
      {
        goto LABEL_32;
      }
    }
  }

  v30 = *re::audioLogObjects(v26);
  if (os_log_type_enabled(v30, OS_LOG_TYPE_DEBUG))
  {
    v44 = v30;
    v45 = *(v28 + 1);
    LODWORD(buf) = 136315138;
    *(&buf + 4) = v45;
    _os_log_debug_impl(&dword_1E1C61000, v44, OS_LOG_TYPE_DEBUG, "AudioAnimationSystem: Stop audio animation event: %s", &buf, 0xCu);
  }

  v31 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) >> 27));
  re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v28, v31 ^ (v31 >> 31), &buf);
  if (HIDWORD(buf) != 0x7FFFFFFF)
  {
    v32 = *(v5 + 216) + 32 * HIDWORD(buf);
    re::ecs2::AudioPlayerComponent::stop(v8, *(v32 + 24));
    re::ecs2::AudioPlayerComponent::destroy(v8, *(v32 + 24));
    v33 = 0x94D049BB133111EBLL * ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) ^ ((0xBF58476D1CE4E5B9 * ((*v28 >> 31) ^ (*v28 >> 1))) >> 27));
    re::HashTable<re::StringID,re::StateParameterInt *,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(v5 + 200, v28, v33 ^ (v33 >> 31), &buf);
    v34 = HIDWORD(buf);
    if (HIDWORD(buf) != 0x7FFFFFFF)
    {
      v35 = *(v5 + 216);
      v36 = *(v35 + 32 * HIDWORD(buf)) & 0x7FFFFFFF;
      if (v48 == 0x7FFFFFFF)
      {
        *(*(v5 + 208) + 4 * DWORD2(buf)) = v36;
        v34 = HIDWORD(buf);
      }

      else
      {
        *(v35 + 32 * v48) = *(v35 + 32 * v48) & 0x80000000 | v36;
      }

      v37 = (v35 + 32 * v34);
      v38 = *v37;
      if (*v37 < 0)
      {
        *v37 = v38 & 0x7FFFFFFF;
        re::StringID::destroyString((v37 + 2));
        v39 = HIDWORD(buf);
        v35 = *(v5 + 216);
        v38 = *(v35 + 32 * HIDWORD(buf));
        LODWORD(v34) = HIDWORD(buf);
      }

      else
      {
        v39 = v34;
      }

      *(v35 + 32 * v39) = *(v5 + 236) | v38 & 0x80000000;
      --*(v5 + 228);
      v40 = *(v5 + 240) + 1;
      *(v5 + 236) = v34;
      *(v5 + 240) = v40;
    }
  }

  else
  {
LABEL_32:
    if (!v20)
    {
      return 0;
    }
  }

  re::ecs2::AudioAnimationSystem::markAudioPlayerDirty(v5, v27);
  return 0;
}

uint64_t re::ecs2::AudioAnimationSystem::willRemoveSceneFromECSService(re::ecs2::AudioAnimationSystem *this, re::ecs2::Scene *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = re::ecs2::SceneComponentTable::get((a2 + 200), re::ecs2::ComponentImpl<re::ecs2::AudioAnimationComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType);
  *&v6 = this;
  *(&v6 + 1) = re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioAnimationSystem::didAddComponents,re::ecs2::AudioAnimationSystem>;
  v7 = 0;
  v8 = re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke;
  re::Event<re::GeometricObjectBase>::removeSubscription(v4 + 8, &v6);
  result = *(a2 + 36);
  if (result && *(this + 240) == 1)
  {
    result = re::EventBus::unsubscribe(result, *(this + 31), *(this + 32));
    if (*(this + 240) == 1)
    {
      *(this + 240) = 0;
    }
  }

  return result;
}

uint64_t re::TimelineEventData::parameter<re::StringID>(void *a1, uint64_t a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = 0xBF58476D1CE4E5B9 * ((*a3 >> 31) ^ (*a3 >> 1));
  re::HashTable<re::StringID,re::TimelineEventParameterDescription,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>((a1 + 17), a3, (0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) ^ ((0x94D049BB133111EBLL * (v5 ^ (v5 >> 27))) >> 31), v9);
  if (HIDWORD(v9[0]) == 0x7FFFFFFF)
  {
    return 0;
  }

  v6 = a1[19] + 40 * HIDWORD(v9[0]);
  if (*(v6 + 32) != 3)
  {
    return 0;
  }

  v7 = *(v6 + 24) + a1[35] * a2;
  if (a1[38] <= v7)
  {
    memset(v9, 0, sizeof(v9));
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return a1[40] + 16 * v7;
}

void re::ecs2::AudioAnimationSystem::markAudioPlayerDirty(re::ecs2::AudioAnimationSystem *this, re::ecs2::AudioAnimationComponent *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = *(this + 2);
  if (v2)
  {
    v4 = re::ecs2::EntityComponentCollection::get((v2 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    if (v4)
    {
      v5 = v4;
      v6 = *(v2 + 216);
      if (v6)
      {

        re::ecs2::NetworkComponent::markDirty(v6, v5);
      }
    }

    else
    {
      v7 = *re::audioLogObjects(0);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
      {
        v8 = *(this + 12);
        v9 = 134217984;
        v10 = v8;
        _os_log_debug_impl(&dword_1E1C61000, v7, OS_LOG_TYPE_DEBUG, "Expected AudioPlayerComponent on associated Entity for AudioAnimationComponent (token=%llu)", &v9, 0xCu);
      }
    }
  }
}

uint64_t re::ecs2::AudioAnimationSystem::update(uint64_t result, int a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  if (*(result + 224))
  {
    v5 = result;
    re::ProfilerTimeGuard<(re::ProfilerStatistic)20>::ProfilerTimeGuard(v60);
    v6 = *(a3 + 200);
    if (v6)
    {
      v7 = *(a3 + 216);
      v58 = &v7[v6];
      v56 = vdupq_n_s64(1uLL).i64[1];
      v8 = &unk_1EE187000;
      v57 = v5;
      while (1)
      {
        v9 = *v7;
        v10 = (*(**(v5 + 224) + 16))(*(v5 + 224), *v7);
        isStatisticCollectionEnabled = re::ProfilerConfig::isStatisticCollectionEnabled(v10);
        if (isStatisticCollectionEnabled)
        {
          v12 = re::profilerThreadContext(isStatisticCollectionEnabled);
          v13 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[493]);
          v14 = v13 ? *(v13 + 384) : 0;
          v15 = *(v12 + 152);
          if (v15)
          {
            v16 = v15[1144].u64[0];
            if (v16 >= v14)
            {
              v16 = v14;
            }

            v15[1144].i64[0] = v16;
            v17 = v15[1144].u64[1];
            if (v17 <= v14)
            {
              v17 = v14;
            }

            v15[1144].i64[1] = v17;
            v18.i64[1] = v56;
            v18.i64[0] = v14;
            v15[1145] = vaddq_s64(v15[1145], v18);
            *(v12 + 184) = 0;
          }
        }

        re::ecs2::SceneComponentTable::get((v9 + 200), v8[493]);
        re::internal::AriadneSignpostScopeGuard::AriadneSignpostScopeGuard(v59, 3097, v5);
        v19 = v8;
        v20 = re::ecs2::SceneComponentTable::get((v9 + 200), v8[493]);
        if (v20)
        {
          v21 = *(v20 + 384);
          if (v21)
          {
            break;
          }
        }

LABEL_81:
        re::internal::AriadneSignpostScopeGuard::~AriadneSignpostScopeGuard(v59);
        ++v7;
        v8 = v19;
        v5 = v57;
        if (v7 == v58)
        {
          return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v60);
        }
      }

      v22 = *(v20 + 400);
      v23 = 8 * v21;
      while (1)
      {
        v24 = *v22;
        if (!*v22)
        {
          goto LABEL_74;
        }

        v25 = *(v24 + 16);
        if (!v25)
        {
          goto LABEL_74;
        }

        isPlaying = re::ecs2::EntityComponentCollection::get((v25 + 48), re::ecs2::ComponentImpl<re::ecs2::AudioPlayerComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
        if (!isPlaying)
        {
          v33 = *re::audioLogObjects(0);
          if (os_log_type_enabled(v33, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 0;
            _os_log_impl(&dword_1E1C61000, v33, OS_LOG_TYPE_DEFAULT, "Expected AudioPlayerComponent on associated Entity", buf, 2u);
          }

          goto LABEL_74;
        }

        v28 = isPlaying;
        v29 = *(v24 + 96);
        v30 = v29 == 0;
        v31 = v29;
        if (!v29)
        {
          if (*(v24 + 44) != 1)
          {
            goto LABEL_74;
          }

          re::AssetHandle::AssetHandle(buf, (v24 + 72));
          *(v24 + 96) = re::ecs2::AudioPlayerComponent::prepare(v28, buf);
          re::AssetHandle::~AssetHandle(buf);
          v31 = *(v24 + 96);
          if (!v31)
          {
            goto LABEL_73;
          }
        }

        v32 = *(v24 + 48);
        if (*(v24 + 104) == v32)
        {
          *(v24 + 40) = 0;
          *(v24 + 32) = 0;
          goto LABEL_68;
        }

        *(v24 + 104) = v32;
        v34 = *(v24 + 40);
        if (v34 <= 0.0)
        {
          goto LABEL_67;
        }

        v35 = *(v24 + 32) - *(v24 + 60);
        if (v35 >= 0.0)
        {
          v38 = *(v24 + 120);
          v39 = re::ecs2::AudioPlayerComponent::assetDurationFor(v28, v31);
          if (v39 != 0.0)
          {
            v41 = fmod(v35, v39);
            if (v38 == 0.0)
            {
              v42 = *re::audioLogObjects(v40);
              if (os_log_type_enabled(v42, OS_LOG_TYPE_DEBUG))
              {
                *v62 = 134217984;
                *&v62[4] = v41;
                _os_log_debug_impl(&dword_1E1C61000, v42, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent. Seeking on start to %f seconds", v62, 0xCu);
              }

              re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(v28, v31, v41);
              goto LABEL_44;
            }

            v43 = re::ecs2::AudioPlayerComponent::playbackPositionFor(v28, v31);
            if (vabdd_f64(v41, v43) <= *(v24 + 136) + *&a2)
            {
              v46 = 0;
            }

            else
            {
              re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(v28, v31, v41);
              v45 = *re::audioLogObjects(v44);
              if (os_log_type_enabled(v45, OS_LOG_TYPE_DEBUG))
              {
                *v62 = 134218240;
                *&v62[4] = v41;
                v63 = 2048;
                v64 = v41 - v43;
                _os_log_debug_impl(&dword_1E1C61000, v45, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent out of sync. Seeking to %5.4f sec, error = %5.4f sec", v62, 0x16u);
              }

LABEL_44:
              v46 = 1;
              v30 = 1;
            }

            v47 = 0.0;
            v48 = 0.0;
            if ((*(v24 + 68) & 1) == 0)
            {
              v48 = *(v24 + 56) * *(v24 + 64);
            }

            *v62 = v31;
            v49 = re::HashTable<unsigned long long,re::AudioSourceSyncState,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::tryGet(v28 + 32, v62);
            if (v49)
            {
              v47 = *(v49 + 100);
            }

            if (v48 != v47)
            {
              if (v38 == 0.0)
              {
                v50 = 0.0;
              }

              else
              {
                v50 = *&a2;
              }

              re::ecs2::AudioPlayerComponent::fadeToGain(v28, v31, v48, v50);
              v30 = 1;
            }

            isPlaying = re::ecs2::AudioPlayerComponent::isPlaying(v28, *(v24 + 96));
            if (isPlaying)
            {
              v51 = 0;
              goto LABEL_65;
            }

            v55 = v46;
            if (*(v24 + 144) != 1)
            {
              goto LABEL_60;
            }

            v52 = *re::audioLogObjects(isPlaying);
            isPlaying = os_log_type_enabled(v52, OS_LOG_TYPE_DEBUG);
            if (isPlaying)
            {
              *v62 = 0;
              _os_log_debug_impl(&dword_1E1C61000, v52, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent skipping subsequent play command because we already sent a play command.", v62, 2u);
            }

            if ((*(v24 + 144) & 1) == 0)
            {
LABEL_60:
              v53 = *re::audioLogObjects(isPlaying);
              if (os_log_type_enabled(v53, OS_LOG_TYPE_DEBUG))
              {
                *v62 = 134217984;
                *&v62[4] = v31;
                _os_log_debug_impl(&dword_1E1C61000, v53, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent sending play(token=%llu)", v62, 0xCu);
              }

              if ((v55 & 1) == 0)
              {
                re::ecs2::AudioPlayerComponent::setPlaybackPositionFor(v28, v31, v41);
              }

              v51 = 1;
              re::ecs2::AudioPlayerComponent::play(v28, v31, 1);
              v30 = 1;
LABEL_65:
              *(v24 + 144) = v51;
            }

            v34 = *(v24 + 40);
LABEL_67:
            if (v34 == 0.0)
            {
LABEL_68:
              if ((*(v24 + 144) & 1) != 0 || (isPlaying = re::ecs2::AudioPlayerComponent::isPlaying(v28, *(v24 + 96)), isPlaying))
              {
                v54 = *re::audioLogObjects(isPlaying);
                if (os_log_type_enabled(v54, OS_LOG_TYPE_DEBUG))
                {
                  *v62 = 134217984;
                  *&v62[4] = v31;
                  _os_log_debug_impl(&dword_1E1C61000, v54, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent sending pause(token=%llu)", v62, 0xCu);
                }

                re::ecs2::AudioPlayerComponent::pause(v28, v31);
                *(v24 + 144) = 0;
                *(v24 + 112) = *(v24 + 32);
                *(v24 + 128) = *(v24 + 48);
              }

              else
              {
                *(v24 + 144) = 0;
                *(v24 + 112) = *(v24 + 32);
                *(v24 + 128) = *(v24 + 48);
                if (!v30)
                {
                  goto LABEL_74;
                }
              }
            }

            else
            {
              *(v24 + 112) = *(v24 + 32);
              *(v24 + 128) = *(v24 + 48);
              if (!v30)
              {
                goto LABEL_74;
              }
            }

LABEL_73:
            re::ecs2::AudioAnimationSystem::markAudioPlayerDirty(v24, v27);
          }
        }

        else
        {
          v36 = re::ecs2::AudioPlayerComponent::isPlaying(v28, v31);
          if (v36)
          {
            v37 = *re::audioLogObjects(v36);
            if (os_log_type_enabled(v37, OS_LOG_TYPE_DEBUG))
            {
              *v62 = 134217984;
              *&v62[4] = v31;
              _os_log_debug_impl(&dword_1E1C61000, v37, OS_LOG_TYPE_DEBUG, "AudioAnimationComponent sending stop(token=%llu)", v62, 0xCu);
            }

            re::ecs2::AudioPlayerComponent::stop(v28, v31);
            goto LABEL_73;
          }

          if (!v29)
          {
            goto LABEL_73;
          }
        }

LABEL_74:
        ++v22;
        v23 -= 8;
        if (!v23)
        {
          goto LABEL_81;
        }
      }
    }

    return re::ProfilerTimeGuard<(re::ProfilerStatistic)120>::end(v60);
  }

  return result;
}

void re::ecs2::AudioAnimationSystem::~AudioAnimationSystem(re::ecs2::AudioAnimationSystem *this)
{
  re::ecs2::System::~System(this);

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioAnimationSystem,REEventHandlerResult (re::ecs2::AudioAnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator()(void *a1, void *a2)
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

uint64_t re::internal::CallableMemFn<re::ecs2::AudioAnimationSystem,REEventHandlerResult (re::ecs2::AudioAnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::cloneInto(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1F5CF1800;
  v2 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v2;
  return a2;
}

uint64_t re::internal::CallableMemFn<re::ecs2::AudioAnimationSystem,REEventHandlerResult (re::ecs2::AudioAnimationSystem::*)(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&),REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::moveInto(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1F5CF1800;
  *(a2 + 8) = v2;
  *(a2 + 16) = *(a1 + 16);
  return a2;
}

uint64_t re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(a1);
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

uint64_t (***re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable(uint64_t a1))(void)
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

void *re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::~IntrospectionHashTable(void *a1)
{
  *a1 = &unk_1F5CAE2E8;
  v2 = (a1 + 6);
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 8));
  re::SerializedReference<re::IntrospectionBase const*>::reset(v2);
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

double re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::construct(uint64_t a1, uint64_t a2)
{
  result = 0.0;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *a2 = 0u;
  *(a2 + 36) = 0x7FFFFFFF;
  return result;
}

void re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(uint64_t a1, uint64_t *a2, uint64_t a3, unsigned int a4)
{
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a2);
  if (a4 <= 3)
  {
    v7 = 3;
  }

  else
  {
    v7 = a4;
  }

  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a2, a3, v7);
}

uint64_t *re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addElement(uint64_t a1, re *a2, int a3, uint64_t a4, StringID *a5)
{
  memset(v10, 0, sizeof(v10));
  v8 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a4, a5, v10);
  re::AssetHandle::~AssetHandle(v10);
  re::introspectionInitElement(a2, a3, *(a1 + 64), v8);
  return v8;
}

uint64_t re::IntrospectionHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::iterate(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 32);
  if (v5)
  {
    v6 = 0;
    v7 = *(a2 + 16);
    while (1)
    {
      v8 = *v7;
      v7 += 12;
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
    v10 = *(a2 + 16) + 48 * v6;
    result = std::function<BOOL ()(void const*,void *)>::operator()(a3, v10 + 8, v10 + 24);
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
      if ((*(*(a2 + 16) + 48 * v6) & 0x80000000) != 0)
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

double re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(uint64_t *a1)
{
  v2 = *a1;
  if (v2)
  {
    if (*(a1 + 8))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((a1[2] + v3));
        ++v4;
        v3 += 48;
      }

      while (v4 < *(a1 + 8));
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

void re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free(_DWORD *a1)
{
  if ((*a1 & 0x80000000) != 0)
  {
    *a1 &= ~0x80000000;
    v2 = (a1 + 6);
    re::StringID::destroyString((a1 + 2));

    re::AssetHandle::~AssetHandle(v2);
  }
}

void re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(a1, v9);
      re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v9);
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

void *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(v4, ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) ^ ((0x94D049BB133111EBLL * (v8 ^ (v8 >> 27))) >> 31)) % *(v4 + 6));
        v9 = *(a2 + 16) + v5;
        v10 = *(v9 + 8);
        result[1] = result[1] & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[1] = *(v9 + 8) & 0xFFFFFFFFFFFFFFFELL | v10 & 1;
        result[2] = *(v9 + 16);
        *(v9 + 8) = 0;
        *(v9 + 16) = &str_67;
        v11 = (*(a2 + 16) + v5);
        result[3] = 0;
        result[4] = 0;
        result[5] = 0;
        result[4] = v11[4];
        v11[4] = 0;
        v12 = result[3];
        result[3] = 0;
        result[3] = v11[3];
        v11[3] = v12;
        v13 = result[5];
        result[5] = v11[5];
        v11[5] = v13;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

uint64_t re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v4 = *(a1 + 36);
  if (v4 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 32);
    v5 = v4;
    if (v4 == *(a1 + 24))
    {
      re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(uint64_t a1)
{
  if (*(a1 + 28))
  {
    v2 = *(a1 + 24);
    if (v2)
    {
      memset_pattern16(*(a1 + 8), &unk_1E304C660, 4 * v2);
    }

    if (*(a1 + 32))
    {
      v3 = 0;
      v4 = 0;
      do
      {
        re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((*(a1 + 16) + v3));
        ++v4;
        v3 += 48;
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

uint64_t *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(uint64_t a1, StringID *a2, uint64_t *a3)
{
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v6 = 0xBF58476D1CE4E5B9 * ((*&a2->var0 >> 31) ^ (*&a2->var0 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v17);
  v7 = HIDWORD(v18);
  if (HIDWORD(v18) == 0x7FFFFFFF)
  {
    v8 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, v18, v17);
    re::StringID::StringID((v8 + 1), a2);
    v8[3] = 0;
    v8[4] = 0;
    v9 = v8 + 3;
    v9[2] = 0;
    v9[1] = a3[1];
    a3[1] = 0;
    v10 = *v9;
    *v9 = 0;
    *v9 = *a3;
    *a3 = v10;
    v11 = v9[2];
    v9[2] = a3[2];
    a3[2] = v11;
    ++*(a1 + 40);
  }

  else
  {
    ++*(a1 + 40);
    v12 = *(a1 + 16) + 48 * v7;
    v13 = *(v12 + 32);
    *(v12 + 32) = a3[1];
    a3[1] = v13;
    v14 = *(v12 + 24);
    v9 = (v12 + 24);
    *v9 = 0;
    *v9 = *a3;
    *a3 = v14;
    v15 = v9[2];
    v9[2] = a3[2];
    a3[2] = v15;
  }

  return v9;
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#1}::__invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 36) = 0x7FFFFFFF;
  re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
}

double re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#2}::__invoke(uint64_t *a1)
{
  re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

  return re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);
}

void re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *)#1}::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (*a1 == a3)
  {

    re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::clear(a1);
  }

  else
  {
    re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(a1);

    re::HashTable<unsigned long long,re::ecs2::EntityHandle,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::init(a1, a3, 3);
  }
}

uint64_t *re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::TypeInfo const&,re::Allocator *,void *)#3}::__invoke(uint64_t a1, void **a2, re::Allocator *a3, StringID *a4)
{
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  Instance = re::TypeInfo::createInstance(v11, a3, 0);
  v9 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addOrReplace(a1, a4, Instance);
  re::TypeRegistry::typeInfo(*a2, a2[2][11], v12);
  re::TypeInfo::TypeInfo(v11, v13);
  re::TypeInfo::releaseInstance(v11, Instance, a3, 0);
  return v9;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, void *a2)
{
  v3 = 0xBF58476D1CE4E5B9 * ((*a2 >> 31) ^ (*a2 >> 1));
  re::HashTable<re::StringID,re::DeformationAttributeData,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::findEntry<re::StringID>(a1, a2, (0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) ^ ((0x94D049BB133111EBLL * (v3 ^ (v3 >> 27))) >> 31), v5);
  if (v6 == 0x7FFFFFFF)
  {
    return 0;
  }

  else
  {
    return *(a1 + 16) + 48 * v6 + 24;
  }
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#1}::__invoke(uint64_t a1, uint64_t a2)
{
  result = (*(*a2 + 32))(a2, 40, 8);
  *result = a1;
  *(result + 8) = *(a1 + 40);
  *(result + 16) = 0;
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#2}::__invoke(uint64_t *a1, uint64_t a2)
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

          if ((*(*(v7 + 16) + 48 * v4) & 0x80000000) != 0)
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
          v5 += 12;
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

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#3}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 8;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 604, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *)#4}::__invoke(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) == *(*a1 + 40))
  {
    return *(*(a1 + 24) + 16) + 48 * *(a1 + 32) + 24;
  }

  re::internal::assertLog(4, a2, "assertion failure: '%s' (%s:line %i) HashTable entries may not be added or removed during iteration.", "iter->originalVersion == iter->hashTable->version()", "operator()", 613, v2, v3);
  result = _os_crash();
  __break(1u);
  return result;
}

uint64_t re::TypeBuilderHelper::registerHashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>(re::TypeRegistry *,re::StringID const&,re::TypeID const&,re::TypeID const&)::{lambda(void *,re::Allocator *)#2}::__invoke(_DWORD *a1, uint64_t a2)
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

void _ZZN2re8internal15setIntroVersionINS_4ecs223AudioAnimationComponentELNS_17RealityKitReleaseE2EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void *re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::addInternal<re::StringID,re::AssetHandle const&>(uint64_t a1, uint64_t a2, uint64_t *a3, const re::AssetHandle *a4)
{
  v7 = re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, *(a2 + 8), *a2);
  v8 = *a3;
  v7[1] = v7[1] & 0xFFFFFFFFFFFFFFFELL | *a3 & 1;
  v7[1] = *a3 & 0xFFFFFFFFFFFFFFFELL | v8 & 1;
  v7[2] = a3[1];
  *a3 = 0;
  a3[1] = &str_67;
  re::AssetHandle::AssetHandle((v7 + 3), a4);
  ++*(a1 + 40);
  return v7 + 3;
}

BOOL re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::removeInternal(uint64_t a1, unsigned int *a2)
{
  v2 = a2[3];
  if (v2 != 0x7FFFFFFF)
  {
    v5 = a2[4];
    v6 = *(a1 + 16);
    v7 = *(v6 + 48 * v2) & 0x7FFFFFFF;
    if (v5 == 0x7FFFFFFF)
    {
      *(*(a1 + 8) + 4 * a2[2]) = v7;
      v8 = a2[3];
    }

    else
    {
      *(v6 + 48 * v5) = *(v6 + 48 * v5) & 0x80000000 | v7;
      v8 = v2;
    }

    re::HashTable<re::StringID,re::AssetHandle,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::EntryBase::free((v6 + 48 * v8));
    v9 = a2[3];
    v10 = *(a1 + 40);
    *(*(a1 + 16) + 48 * v9) = *(*(a1 + 16) + 48 * v9) & 0x80000000 | *(a1 + 36);
    --*(a1 + 28);
    *(a1 + 36) = v9;
    *(a1 + 40) = v10 + 1;
  }

  return v2 != 0x7FFFFFFF;
}

uint64_t re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::erasedMemberCallback<&re::ecs2::AudioAnimationSystem::didAddComponents,re::ecs2::AudioAnimationSystem>(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a1 + 232);
    v5 = 8 * a4;
    do
    {
      v6 = *a3++;
      *(v6 + 136) = v4;
      v5 -= 8;
    }

    while (v5);
  }

  return 0;
}

uint64_t re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::createSubscription<re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper>(re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper *,REEventHandlerResult (re::ecs2::SceneComponentCollection<re::ecs2::AudioAnimationComponent>::EventWrapper::*)(re::ecs2::SceneComponentCollectionBase*,re::Slice<re::ecs2::Component *>))::{lambda(re::ecs2::SceneComponentCollectionBase*,re::Event<re::ecs2::SceneComponentCollectionBase,re::Slice<re::ecs2::Component *>>::Subscription const&,re::Slice<re::ecs2::Component *>&&)#1}::__invoke(uint64_t a1, void *a2, void *a3)
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

uint64_t re::EventBus::getTypeId<REAnimationHasTimelineEventStart>()
{
  v0 = &unk_1EE186000;
  {
    v0 = &unk_1EE186000;
    if (v2)
    {
      re::EventBus::getTypeId<REAnimationHasTimelineEventStart>(void)const::s_id = re::EventBus::typeStringToId(("32REAnimationHasTimelineEventStart" & 0x7FFFFFFFFFFFFFFFLL), v3);
      v0 = &unk_1EE186000;
    }
  }

  return v0[10];
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF1908;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable((a1 + 1));
  return a1;
}

void re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::~Callable(void *a1)
{
  *a1 = &unk_1F5CF1908;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::destroyCallable((a1 + 1));

  JUMPOUT(0x1E6906520);
}

uint64_t re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::operator()(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *a3;
  v5 = *a2;
  return (*(**(a1 + 40) + 16))(*(a1 + 40), &v5, v3);
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::cloneInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF1908;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

void *re::internal::Callable<re::FixedFunction<48ul,REEventHandlerResult ()(void *,void const*)> re::EventBus::createHandler<re::ecs2::Entity,REAnimationHasTimelineEventStart>(re::ecs2::Entity *,re::Function<REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)> const&,void const*,re::EventBus::HandlerOptions)::{lambda(void *,void const*)#2},REEventHandlerResult ()(void *,void const*)>::moveInto(uint64_t a1, void *a2)
{
  *a2 = &unk_1F5CF1908;
  a2[4] = *(a1 + 32);
  a2[5] = 0;
  re::FunctionBase<24ul,REEventHandlerResult ()(re::ecs2::Entity *,REAnimationHasTimelineEventStart const&)>::operator=<24ul>((a2 + 1), a1 + 8);
  return a2;
}

uint64_t re::HashTable<re::StringID,unsigned long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
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
          memset(v28, 0, 36);
          *&v28[36] = 0x7FFFFFFFLL;
          re::HashTable<re::StringID,unsigned int,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::init(v28, v9, v8);
          v11 = *v28;
          *v28 = *a1;
          *a1 = v11;
          v12 = *&v28[16];
          v13 = *(a1 + 16);
          *&v28[16] = v13;
          *(a1 + 16) = v12;
          v15 = *&v28[24];
          *&v28[24] = *(a1 + 24);
          v14 = *&v28[32];
          *(a1 + 24) = v15;
          ++*&v28[40];
          v16 = v14;
          if (v14)
          {
            v17 = (v13 + 16);
            do
            {
              if ((*(v17 - 2) & 0x80000000) != 0)
              {
                v18 = 0xBF58476D1CE4E5B9 * ((*(v17 - 1) >> 31) ^ (*(v17 - 1) >> 1));
                v19 = re::HashTable<re::StringID,unsigned long long,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::allocEntry(a1, ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) ^ ((0x94D049BB133111EBLL * (v18 ^ (v18 >> 27))) >> 31)) % *(a1 + 24));
                v20 = *(v17 - 1);
                v19[1] = v19[1] & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v19[1] = *(v17 - 1) & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
                v21 = v17[1];
                v19[2] = *v17;
                *(v17 - 1) = 0;
                *v17 = &str_67;
                v19[3] = v21;
              }

              v17 += 4;
              --v16;
            }

            while (v16);
          }

          re::HashTable<re::StringID,re::DataArrayHandle<re::RigGraphOperatorDefinition>,re::Hash<re::StringID>,re::EqualTo<re::StringID>,false,false>::deinit(v28);
        }
      }

      else
      {
        if (v8)
        {
          v24 = 2 * v7;
        }

        else
        {
          v24 = 3;
        }
      }

      a2 = a3 % *(a1 + 24);
      v5 = *(a1 + 32);
    }

    *(a1 + 32) = v5 + 1;
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v4);
  }

  else
  {
    v22 = *(a1 + 16);
    v23 = *(v22 + 32 * v4);
    *(a1 + 36) = v23 & 0x7FFFFFFF;
  }

  v25 = 32 * v4;
  *(v22 + v25) = v23 | 0x80000000;
  v26 = *(a1 + 8);
  *(v22 + v25) = *(v26 + 4 * a2) | 0x80000000;
  *(v26 + 4 * a2) = v4;
  ++*(a1 + 28);
  return v22 + 32 * v4;
}

void *re::ecs2::allocInfo_ThrottleService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_273, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_273))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A95F0, "ThrottleService");
    __cxa_guard_release(&_MergedGlobals_273);
  }

  return &unk_1EE1A95F0;
}

void re::ecs2::initInfo_ThrottleService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x174E2110AB251016;
  v6[1] = "ThrottleService";
  if (v6[0])
  {
    if (v6[0])
    {
    }
  }

  *(this + 2) = v7;
  *(this + 2) = 0x1800000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 11) = re::internal::defaultRetain<re::ecs2::ThrottleService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 12) = re::internal::defaultRelease<re::ecs2::ThrottleService>(void)::{lambda(void *)#1}::__invoke;
  *(this + 14) = 0;
  *(this + 8) = &re::ecs2::initInfo_ThrottleService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

void *re::ecs2::allocInfo_PreviewSupportComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_274, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_274))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9698, "PreviewSupportComponent");
    __cxa_guard_release(&_MergedGlobals_274);
  }

  return &unk_1EE1A9698;
}

void re::ecs2::initInfo_PreviewSupportComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v10[0] = 0x71CA9DDC24F30B6CLL;
  v10[1] = "PreviewSupportComponent";
  if (v10[0])
  {
    if (v10[0])
    {
    }
  }

  *(this + 2) = v11;
  if ((atomic_load_explicit(&qword_1EE1A9690, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9690);
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
      qword_1EE1A9688 = v8;
      __cxa_guard_release(&qword_1EE1A9690);
    }
  }

  *(this + 2) = 0x2000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 1;
  *(this + 8) = &qword_1EE1A9688;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PreviewSupportComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PreviewSupportComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PreviewSupportComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PreviewSupportComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs223PreviewSupportComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v9 = v11;
}

void re::internal::defaultConstruct<re::ecs2::PreviewSupportComponent>(int a1, int a2, ArcSharedObject *this)
{
  *this = 0u;
  *(this + 1) = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *(v3 + 24) = 0;
  *v3 = &unk_1F5CE6E38;
}

void re::internal::defaultConstructV2<re::ecs2::PreviewSupportComponent>(ArcSharedObject *a1)
{
  *a1 = 0u;
  *(a1 + 1) = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0;
  *v1 = &unk_1F5CE6E38;
}

uint64_t _ZZN2re8internal15setIntroVersionINS_4ecs223PreviewSupportComponentELNS_17RealityKitReleaseE12EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  if (result)
  {
    result = (*(*result + 40))(result);
  }

  *a2 = 12;
  *(a2 + 8) = 0;
  return result;
}

uint64_t re::ecs2::PinHandle::PinHandle(uint64_t a1, uint64_t a2, const StringID *a3, _OWORD *a4, unsigned __int8 *a5)
{
  v9 = re::ecs2::EntityHandle::EntityHandle(a1, a2);
  re::StringID::StringID((v9 + 24), a3);
  v10 = a4[1];
  *(a1 + 48) = *a4;
  *(a1 + 64) = v10;
  v11 = *a5;
  *(a1 + 80) = v11;
  if (v11 == 1)
  {
    re::StringID::StringID((a1 + 88), (a5 + 8));
  }

  return a1;
}

void re::ecs2::PinHandle::~PinHandle(re::ecs2::PinHandle *this)
{
  if (*(this + 80) == 1)
  {
    re::StringID::destroyString((this + 88));
  }

  re::StringID::destroyString((this + 24));
  re::ecs2::EntityHandle::reset(this);
  objc_destroyWeak(this);
  *this = 0;
}

void re::ecs2::PinHandle::pin(re::ecs2::PinHandle *this@<X0>, _BYTE *a2@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this);
  if (WeakRetained && (WeakRetained, v5 = objc_loadWeakRetained(this), v5, (v6 = re::ecs2::EntityComponentCollection::get((v5 + 40), re::ecs2::ComponentImpl<re::ecs2::PinComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)4>::s_componentType)) != 0) && (re::ecs2::PinComponent::pinByName(v6, (this + 24), v32), v32[0] == 1))
  {
    v31[0] = v34;
    v31[1] = v35;
    if (v36[0])
    {
      v7 = objc_loadWeakRetained(this);

      v8 = v7[30];
      v9 = objc_loadWeakRetained(this);

      if (v8 && (v10 = v9[23]) != 0 && (v11 = *(v10 + 40)) != 0 && (v12 = atomic_load((v11 + 896)), v12 == 2))
      {
        v13 = re::AssetHandle::blockUntilLoaded<re::MeshAsset>((v10 + 32));
        re::ecs2::PinSkeletalPoseHelper::pinByName(v8, v13, &v37, v25);
        if (v25[0] == 1)
        {
          v29 = v27;
          v30 = v28;
        }

        else
        {
          v29 = 0uLL;
          v30.i64[1] = 0x3F80000000000000;
          v30.i64[0] = 0;
        }

        v16.i64[0] = 0x7F0000007FLL;
        v16.i64[1] = 0x7F0000007FLL;
        v21[0] = vnegq_f32(v16);
        v21[1] = v16;
        v20 = 0;
        v18 = 0;
        v17 = 0uLL;
        LODWORD(v19) = 0;
        re::ecs2::Pin::Pin(v22, (this + 24), &v29, v31, v36, v21, &v17);
        re::Optional<re::ecs2::Pin>::Optional(a2, v22);
        re::ecs2::Pin::~Pin(v22);
        re::DynamicArray<re::ecs2::PinAlignment>::deinit(&v17);
        if (v25[0] == 1)
        {
          (*v26)();
        }
      }

      else
      {
        *a2 = 0;
      }
    }

    else
    {
      v17 = 0uLL;
      v18 = 0;
      v19 = 0x3F80000000000000;
      LOBYTE(v21[0]) = 0;
      v14.i64[0] = 0x7F0000007FLL;
      v14.i64[1] = 0x7F0000007FLL;
      v29 = vnegq_f32(v14);
      v30 = v14;
      v24 = 0;
      memset(v22, 0, sizeof(v22));
      v23 = 0;
      re::ecs2::Pin::Pin(v25, (this + 24), &v17, v31, v21, &v29, v22);
      re::Optional<re::ecs2::Pin>::Optional(a2, v25);
      re::ecs2::Pin::~Pin(v25);
      v15 = re::DynamicArray<re::ecs2::PinAlignment>::deinit(v22);
      if (LOBYTE(v21[0]) == 1 && (BYTE8(v21[0]) & 1) != 0)
      {
        if (BYTE8(v21[0]))
        {
        }
      }
    }

    if (v32[0])
    {
      (*v33)();
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t re::Optional<re::ecs2::Pin>::Optional(uint64_t a1, uint64_t a2)
{
  *a1 = 1;
  *(a1 + 16) = &unk_1F5CF49C0;
  re::StringID::StringID((a1 + 24), (a2 + 8));
  v4 = *(a2 + 32);
  v5 = *(a2 + 48);
  v6 = *(a2 + 80);
  *(a1 + 80) = *(a2 + 64);
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  re::DynamicArray<re::ecs2::PinAlignment>::DynamicArray(a1 + 112, (a2 + 96));
  v7 = *(a2 + 160);
  *(a1 + 160) = *(a2 + 144);
  *(a1 + 176) = v7;
  v8 = *(a2 + 176);
  *(a1 + 192) = v8;
  if (v8 == 1)
  {
    re::StringID::StringID((a1 + 200), (a2 + 184));
  }

  re::DynamicArray<re::ecs2::EntityHandle>::DynamicArray(a1 + 216, (a2 + 200));
  return a1;
}

void re::ecs2::PinHandle::pinPose(id *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  WeakRetained = objc_loadWeakRetained(this);
  if (WeakRetained)
  {

    re::ecs2::PinHandle::pin(this, v25);
    if (v25[0] == 1)
    {
      v7 = v27;
      _Q1 = v28;
      if (a2)
      {
        v9 = vextq_s8(vuzp1q_s32(v28, v28), v28, 0xCuLL);
        v10 = *(this + 3);
        _Q4 = *(this + 4);
        v12 = vnegq_f32(v28);
        v13 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v10, v10), v10, 0xCuLL), v12), v10, v9);
        v14 = vaddq_f32(v13, v13);
        v15 = vextq_s8(vuzp1q_s32(v14, v14), v14, 0xCuLL);
        v16 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(v15, v15), v15, 0xCuLL), v12), v15, v9);
        v7 = vaddq_f32(v27, vaddq_f32(vaddq_f32(v10, vmulq_laneq_f32(v15, v28, 3)), vextq_s8(vuzp1q_s32(v16, v16), v16, 0xCuLL)));
        _Q3 = vmlaq_f32(vmulq_f32(vextq_s8(vuzp1q_s32(_Q4, _Q4), _Q4, 0xCuLL), v12), _Q4, v9);
        v18 = vmlaq_laneq_f32(vextq_s8(vuzp1q_s32(_Q3, _Q3), _Q3, 0xCuLL), _Q4, v28, 3);
        _Q3.i32[0] = _Q4.i32[3];
        v19 = vmlaq_laneq_f32(v18, v28, _Q4, 3);
        __asm { FMLA            S4, S3, V1.S[3] }

        v19.i32[3] = _Q4.i32[0];
        _Q1 = v19;
      }

      *a3 = 1;
      *(a3 + 16) = v7;
      *(a3 + 32) = _Q1;
      (*v26)();
    }

    else
    {
      *a3 = 0;
    }
  }

  else
  {
    *a3 = 1;
    v24 = *(this + 4);
    *(a3 + 16) = *(this + 3);
    *(a3 + 32) = v24;
  }
}

BOOL re::ecs2::PinHandle::operator==(uint64_t a1, uint64_t a2)
{
  WeakRetained = objc_loadWeakRetained(a1);
  if (WeakRetained)
  {
    v5 = WeakRetained - 8;
  }

  else
  {
    v5 = 0;
  }

  v6 = objc_loadWeakRetained(a2);
  if (v6)
  {
    v7 = v6 - 8;
  }

  else
  {
    v7 = 0;
  }

  if (v5 != v7)
  {
    return 0;
  }

  result = re::StringID::operator==((a1 + 24), (a2 + 24));
  if (result)
  {
    v9 = vceqq_f32(*(a1 + 48), *(a2 + 48));
    v9.i32[3] = v9.i32[2];
    if ((vminvq_u32(v9) & 0x80000000) == 0)
    {
      return 0;
    }

    return vminvq_u32(vceqq_f32(*(a1 + 64), *(a2 + 64))) >> 31;
  }

  return result;
}

uint64_t *re::IntrospectionInfo<re::Optional<re::StringID>>::get(int a1, const re::IntrospectionBase *a2)
{
  {
    re::IntrospectionOptional<re::StringID>::IntrospectionOptional(&re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info);
  }

  if (a1)
  {
    if (re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized)
    {
      return &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info;
    }
  }

  else
  {
    re::IntrospectionSharedLock::IntrospectionSharedLock(&v15);
    v3 = re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized;
    re::IntrospectionSharedLock::~IntrospectionSharedLock(&v15);
    if (v3)
    {
      return &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info;
    }

    v5 = re::introspectionSharedMutex(v4);
    std::__shared_mutex_base::lock(v5);
  }

  v6 = re::IntrospectionInfo<re::StringID>::get(1, a2);
  if ((re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized & 1) == 0)
  {
    v7 = v6;
    re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::isInitialized = 1;
    v8 = *(v6 + 6);
    ArcSharedObject::ArcSharedObject(&re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info, 0);
    qword_1EE1865B8 = 0x180000000DLL;
    dword_1EE1865C0 = v8;
    word_1EE1865C4 = 0;
    *&xmmword_1EE1865C8 = 0;
    *(&xmmword_1EE1865C8 + 1) = 0xFFFFFFFFLL;
    qword_1EE1865D8 = v7;
    unk_1EE1865E0 = 0;
    re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info = &unk_1F5CF1960;
    re::IntrospectionRegistry::add(v9, v10);
    re::getPrettyTypeName(&re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info, &v15);
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
    xmmword_1EE1865C8 = v14;
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

  return &re::IntrospectionInfo<re::Optional<re::StringID>>::get(BOOL)::info;
}

void *re::ecs2::allocInfo_PinHandle(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9730, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9730))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9758, "PinHandle");
    __cxa_guard_release(&qword_1EE1A9730);
  }

  return &unk_1EE1A9758;
}

void re::ecs2::initInfo_PinHandle(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v22[0] = 0x818C5825CFFALL;
  v22[1] = "PinHandle";
  if (v22[0])
  {
    if (v22[0])
    {
    }
  }

  *(this + 2) = v23;
  if ((atomic_load_explicit(&_MergedGlobals_275, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&_MergedGlobals_275);
    if (v5)
    {
      v6 = re::introspectionAllocator(v5);
      v8 = re::ecs2::introspect_EntityHandle(1, v7);
      v9 = (*(*v6 + 32))(v6, 72, 8);
      *v9 = 1;
      *(v9 + 8) = "m_entityHandle";
      *(v9 + 16) = v8;
      *(v9 + 24) = 0;
      *(v9 + 32) = 1;
      *(v9 + 40) = 0;
      *(v9 + 48) = 0;
      *(v9 + 56) = 0;
      *(v9 + 64) = 0;
      qword_1EE1A9738 = v9;
      v10 = re::introspectionAllocator(v9);
      v12 = re::IntrospectionInfo<re::StringID>::get(1, v11);
      v13 = (*(*v10 + 32))(v10, 72, 8);
      *v13 = 1;
      *(v13 + 8) = "m_pinName";
      *(v13 + 16) = v12;
      *(v13 + 24) = 0;
      *(v13 + 32) = 0x1800000002;
      *(v13 + 40) = 0;
      *(v13 + 48) = 0;
      *(v13 + 56) = 0;
      *(v13 + 64) = 0;
      qword_1EE1A9740 = v13;
      v14 = re::introspectionAllocator(v13);
      v15 = re::introspect_PoseF(1);
      v16 = (*(*v14 + 32))(v14, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "m_offsetFromPin";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x3000000003;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A9748 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::IntrospectionInfo<re::Optional<re::StringID>>::get(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "m_pinSkeletalJointName";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x5000000004;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A9750 = v20;
      __cxa_guard_release(&_MergedGlobals_275);
    }
  }

  *(this + 2) = 0x7000000008;
  *(this + 6) = 16;
  *(this + 14) = 0;
  *(this + 14) = 4;
  *(this + 8) = &qword_1EE1A9738;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::PinHandle>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::PinHandle>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::PinHandle>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::PinHandle>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = 0;
  re::internal::prepare(this, v4);
  v21 = v23;
}

void re::internal::defaultConstruct<re::ecs2::PinHandle>(int a1, int a2, id *location)
{
  objc_initWeak(location, 0);
  location[1] = 0;
  location[2] = 0;
  re::ecs2::EntityHandle::reset(location);
  location[3] = 0;
  location[4] = &str_67;
  location[6] = 0;
  location[7] = 0;
  location[8] = 0;
  location[9] = 0x3F80000000000000;
  *(location + 80) = 0;
}

void re::internal::defaultConstructV2<re::ecs2::PinHandle>(uint64_t a1)
{
  objc_initWeak(a1, 0);
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  re::ecs2::EntityHandle::reset(a1);
  *(a1 + 24) = 0;
  *(a1 + 32) = &str_67;
  *(a1 + 48) = 0;
  *(a1 + 56) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0x3F80000000000000;
  *(a1 + 80) = 0;
}

void re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *a1@<X0>, const re::StringID *a2@<X1>, __int128 *a3@<X2>, void *a4@<X8>)
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
    re::TypeBuilder::beginOptionalType(v10, a2, 0x18uLL, 8uLL, &v9);
    re::TypeBuilder::setOptionalAccessors(v10, re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke, re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke);
    re::TypeBuilder::commitTo(v10, a1, a4);
    re::TypeBuilder::~TypeBuilder(v10, v8);
    re::StackScratchAllocator::~StackScratchAllocator(v11);
  }
}

ArcSharedObject *re::IntrospectionOptional<re::StringID>::IntrospectionOptional(ArcSharedObject *a1)
{
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v2 + 22) = 0;
  v2[2] = 0;
  v2[4] = 0;
  v2[5] = 0xFFFFFFFFLL;
  *v2 = &unk_1F5CBA310;
  v2[7] = 0;
  re::SerializedReference<re::IntrospectionBase const*>::reset((v2 + 6));
  *a1 = &unk_1F5CF1960;
  return a1;
}

void *re::IntrospectionOptional<re::StringID>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);
  return a1;
}

void re::IntrospectionOptional<re::StringID>::~IntrospectionOptional(void *a1)
{
  *a1 = &unk_1F5CBA310;
  re::SerializedReference<re::IntrospectionBase const*>::reset((a1 + 6));
  *a1 = &unk_1F5CCF868;
  objc_destructInstance(a1 + 1);

  JUMPOUT(0x1E6906520);
}

void re::IntrospectionOptional<re::StringID>::setHasValue(uint64_t a1, uint64_t a2, int a3)
{
  if (a3)
  {
    v4[0] = 1;
    v5 = 0;
    v6 = &str_67;
  }

  else
  {
    v4[0] = 0;
  }

  v3 = re::Optional<re::StringID>::operator=(a2, v4);
  if (v4[0] == 1 && (v5 & 1) != 0)
  {
    if (v5)
    {
    }
  }
}

uint64_t re::IntrospectionOptional<re::StringID>::value(uint64_t a1, uint64_t a2)
{
  return a2 + 8;
}

{
  return a2 + 8;
}

unsigned __int8 *re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *)#1}::__invoke(unsigned __int8 *a1)
{
  v2 = *a1;
  result = a1 + 8;
  if (!v2)
  {
    return 0;
  }

  return result;
}

void re::TypeBuilderHelper::registerOptional<re::StringID>(re::TypeRegistry *,re::StringID const&,re::TypeID const&)::{lambda(void *,void const*)#1}::__invoke(uint64_t a1, const StringID *a2)
{
  if (a2)
  {
    v4[0] = 1;
    re::StringID::StringID(&v5, a2);
  }

  else
  {
    v4[0] = 0;
  }

  v3 = re::Optional<re::StringID>::operator=(a1, v4);
  if (v4[0] == 1 && (v5 & 1) != 0)
  {
    if (v5)
    {
    }
  }
}

void re::ecs2::introspect_GroundingShadowFadeBehaviorNearPhysicalObjects(re::ecs2 *this, const re::IntrospectionBase *a2)
{
  if ((atomic_load_explicit(&qword_1EE1A97F0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_43;
  }

  while (1)
  {
    if ((atomic_load_explicit(&qword_1EE1A97F8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A97F8))
    {
      re::IntrospectionBasic::IntrospectionBasic(&qword_1EE1A9868, "GroundingShadowFadeBehaviorNearPhysicalObjects", 4, 4, 1, 1);
      qword_1EE1A9868 = &unk_1F5D0C658;
      qword_1EE1A98A8 = &re::ecs2::introspect_GroundingShadowFadeBehaviorNearPhysicalObjects(BOOL)::enumTable;
      dword_1EE1A9878 = 9;
      __cxa_guard_release(&qword_1EE1A97F8);
    }

    if (_MergedGlobals_276)
    {
      break;
    }

    _MergedGlobals_276 = 1;
    re::IntrospectionRegistry::add(&qword_1EE1A9868, a2);
    v35 = 0xC6305B05C0246B98;
    v36 = "GroundingShadowFadeBehaviorNearPhysicalObjects";
    v39 = 208862;
    v40 = "int";
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
      v6 = qword_1EE1A98A8;
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
      xmmword_1EE1A9888 = v37;
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
    v28 = __cxa_guard_acquire(&qword_1EE1A97F0);
    if (v28)
    {
      v29 = re::introspectionAllocator(v28);
      v30 = (*(*v29 + 32))(v29, 24, 8);
      *v30 = 1;
      *(v30 + 1) = 0;
      *(v30 + 2) = "Default";
      qword_1EE1A9810 = v30;
      v31 = re::introspectionAllocator(v30);
      v32 = (*(*v31 + 32))(v31, 24, 8);
      *v32 = 1;
      *(v32 + 1) = 1;
      *(v32 + 2) = "Fade";
      qword_1EE1A9818 = v32;
      v33 = re::introspectionAllocator(v32);
      v34 = (*(*v33 + 32))(v33, 24, 8);
      *v34 = 1;
      *(v34 + 8) = 2;
      *(v34 + 16) = "Constant";
      qword_1EE1A9820 = v34;
      __cxa_guard_release(&qword_1EE1A97F0);
    }
  }
}

void *re::ecs2::allocInfo_GroundingShadowComponent(re::ecs2 *this)
{
  if ((atomic_load_explicit(&qword_1EE1A9800, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A9800))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A98B0, "GroundingShadowComponent");
    __cxa_guard_release(&qword_1EE1A9800);
  }

  return &unk_1EE1A98B0;
}

void re::ecs2::initInfo_GroundingShadowComponent(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v37[0] = 0xB9FED500E734E2C4;
  v37[1] = "GroundingShadowComponent";
  if (v37[0])
  {
    if (v37[0])
    {
    }
  }

  *(this + 2) = v38;
  if ((atomic_load_explicit(&qword_1EE1A9808, memory_order_acquire) & 1) == 0)
  {
    v5 = __cxa_guard_acquire(&qword_1EE1A9808);
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
      qword_1EE1A9828 = v8;
      v9 = re::introspectionAllocator(v8);
      v11 = re::introspect_BOOL(1, v10);
      v12 = (*(*v9 + 32))(v9, 72, 8);
      *v12 = 1;
      *(v12 + 8) = "enableIBLShadow";
      *(v12 + 16) = v11;
      *(v12 + 24) = 0;
      *(v12 + 32) = 0x1900000001;
      *(v12 + 40) = 0;
      *(v12 + 48) = 0;
      *(v12 + 56) = 0;
      *(v12 + 64) = 0;
      qword_1EE1A9830 = v12;
      v13 = re::introspectionAllocator(v12);
      v15 = re::introspect_BOOL(1, v14);
      v16 = (*(*v13 + 32))(v13, 72, 8);
      *v16 = 1;
      *(v16 + 8) = "enableMeshShadow";
      *(v16 + 16) = v15;
      *(v16 + 24) = 0;
      *(v16 + 32) = 0x1B00000002;
      *(v16 + 40) = 0;
      *(v16 + 48) = 0;
      *(v16 + 56) = 0;
      *(v16 + 64) = 0;
      qword_1EE1A9838 = v16;
      v17 = re::introspectionAllocator(v16);
      v19 = re::introspect_BOOL(1, v18);
      v20 = (*(*v17 + 32))(v17, 72, 8);
      *v20 = 1;
      *(v20 + 8) = "enableReceiveIBLShadow";
      *(v20 + 16) = v19;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0x1A00000003;
      *(v20 + 40) = 0;
      *(v20 + 48) = 0;
      *(v20 + 56) = 0;
      *(v20 + 64) = 0;
      qword_1EE1A9840 = v20;
      v21 = re::introspectionAllocator(v20);
      v23 = re::introspect_BOOL(1, v22);
      v24 = (*(*v21 + 32))(v21, 72, 8);
      *v24 = 1;
      *(v24 + 8) = "enableReceiveMeshShadow";
      *(v24 + 16) = v23;
      *(v24 + 24) = 0;
      *(v24 + 32) = 0x1C00000004;
      *(v24 + 40) = 0;
      *(v24 + 48) = 0;
      *(v24 + 56) = 0;
      *(v24 + 64) = 0;
      qword_1EE1A9848 = v24;
      v25 = re::introspectionAllocator(v24);
      re::ecs2::introspect_GroundingShadowFadeBehaviorNearPhysicalObjects(v25, v26);
      v27 = (*(*v25 + 32))(v25, 72, 8);
      *v27 = 1;
      *(v27 + 8) = "shadowFadeBehaviorNearPhysicalObjects";
      *(v27 + 16) = &qword_1EE1A9868;
      *(v27 + 24) = 0;
      *(v27 + 32) = 0x2400000005;
      *(v27 + 40) = 0;
      *(v27 + 48) = 0;
      *(v27 + 56) = 0;
      *(v27 + 64) = 0;
      qword_1EE1A9850 = v27;
      v28 = re::introspectionAllocator(v27);
      v30 = re::introspect_float(1, v29);
      v31 = (*(*v28 + 32))(v28, 72, 8);
      *v31 = 1;
      *(v31 + 8) = "meshShadowIntensity";
      *(v31 + 16) = v30;
      *(v31 + 24) = 0;
      *(v31 + 32) = 0x2000000006;
      *(v31 + 40) = 0;
      *(v31 + 48) = 0;
      *(v31 + 56) = 0;
      *(v31 + 64) = 0;
      qword_1EE1A9858 = v31;
      v32 = re::introspectionAllocator(v31);
      v34 = re::introspect_uint32_t(1, v33);
      v35 = (*(*v32 + 32))(v32, 72, 8);
      *v35 = 1;
      *(v35 + 8) = "modeBitFlags";
      *(v35 + 16) = v34;
      *(v35 + 24) = 0;
      *(v35 + 32) = 0x2800000007;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 56) = 0;
      *(v35 + 64) = 0;
      qword_1EE1A9860 = v35;
      __cxa_guard_release(&qword_1EE1A9808);
    }
  }

  *(this + 2) = 0x3000000008;
  *(this + 6) = 8;
  *(this + 14) = 0;
  *(this + 14) = 8;
  *(this + 8) = &qword_1EE1A9828;
  *(this + 9) = re::internal::defaultConstruct<re::ecs2::GroundingShadowComponent>;
  *(this + 11) = 0;
  *(this + 12) = 0;
  *(this + 10) = re::internal::defaultDestruct<re::ecs2::GroundingShadowComponent>;
  *(this + 13) = re::internal::defaultConstructV2<re::ecs2::GroundingShadowComponent>;
  *(this + 14) = re::internal::defaultDestructV2<re::ecs2::GroundingShadowComponent>;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 17) = _ZZN2re8internal15setIntroVersionINS_4ecs224GroundingShadowComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_;
  re::internal::prepare(this, v4);
  v36 = v38;
}

double re::internal::defaultConstruct<re::ecs2::GroundingShadowComponent>(int a1, int a2, ArcSharedObject *this)
{
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *this = 0u;
  ArcSharedObject::ArcSharedObject(this, 0);
  *(v3 + 16) = 0;
  *v3 = &unk_1F5CE6650;
  *&result = 0x1000000010000;
  *(v3 + 24) = 0x10000;
  *(v3 + 28) = 1;
  *(v3 + 32) = 1065353216;
  *(v3 + 36) = 0;
  *(v3 + 44) = 0;
  return result;
}

double re::internal::defaultConstructV2<re::ecs2::GroundingShadowComponent>(ArcSharedObject *a1)
{
  *(a1 + 1) = 0u;
  *(a1 + 2) = 0u;
  *a1 = 0u;
  ArcSharedObject::ArcSharedObject(a1, 0);
  *(v1 + 16) = 0;
  *v1 = &unk_1F5CE6650;
  *&result = 0x1000000010000;
  *(v1 + 24) = 0x10000;
  *(v1 + 28) = 1;
  *(v1 + 32) = 1065353216;
  *(v1 + 36) = 0;
  *(v1 + 44) = 0;
  return result;
}

void _ZZN2re8internal15setIntroVersionINS_4ecs224GroundingShadowComponentELNS_17RealityKitReleaseE10EEEDTcldtclsr3stdE7declvalIT_EE24adjustedIntroReleaseInfoclL_ZNSt3__17declvalB8nn200100INS_19RealityFilePlatformEEEDTclsr3stdE9__declvalIS5_ELi0EEEvEEEERPFNS_21RealityKitReleaseInfoEPKvS8_ENS0_8priorityILi1EEEENUlSD_S8_E_8__invokeESD_S8_(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

void re::ecs2::setEntityAttributes(re::ecs2 *this, re::ecs2::Entity *a2, const re::StringID *a3)
{
  if (this)
  {
    re::StringID::operator=(this + 36, a2);
    *(this + 76) |= 0x1400u;

    re::ecs2::Entity::setSelfEnabled(this, 0);
  }
}

double re::ecs2::buildCollisionShapeAssetHandle(re::ecs2 *this, re::AssetManager *a2, __n128 a3, float a4, float a5)
{
  v5 = this;
  v20 = 0;
  a3.n128_f32[1] = a4;
  a3.n128_f32[2] = a5;
  v22 = a3;
  memset(v19, 0, sizeof(v19));
  v21 = 0x7FFFFFFFLL;
  v17 = 0;
  memset(v16, 0, sizeof(v16));
  v18 = 0x7FFFFFFFLL;
  {
    this = re::initCollision(this);
  }

  v7 = re::globalAllocators(this);
  v8 = (*(*v6 + 32))(v6, v7[2], &v22);
  CollisionShapeAsset = re::AssetHelper::makeCollisionShapeAsset(v5, v8, v19, v16, 0);
  v14[0] = 0;
  v14[2] = 0;
  v14[3] = 0x3F80000000000000;
  v14[1] = 3164854026;
  {
    CollisionShapeAsset = re::initCollision(CollisionShapeAsset);
  }

  v11 = re::globalAllocators(CollisionShapeAsset)[2];
  v23 = v8;
  v12 = (*(*v10 + 160))(v10, v11, &v23, v14, 1, 0, 0);
  v23 = v8;
  re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::add(v19, &v23, v15);
  re::AssetHelper::makeCollisionShapeAsset(v5, v12, v19, v16, 0);
  re::AssetHandle::~AssetHandle(v15);
  re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v16);
  return re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v19);
}

re::AssetHandle *re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::add(uint64_t a1, void *a2, const re::AssetHandle *a3)
{
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v6 = 0xBF58476D1CE4E5B9 * (*a2 ^ (*a2 >> 30));
  re::HashTable<re::Timeline const*,re::AssetHandle,re::Hash<re::Timeline const*>,re::EqualTo<re::Timeline const*>,true,false>::findEntry<re::Timeline const*>(a1, a2, (0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) ^ ((0x94D049BB133111EBLL * (v6 ^ (v6 >> 27))) >> 31), &v9);
  if (HIDWORD(v10) != 0x7FFFFFFF)
  {
    return (*(a1 + 16) + 48 * HIDWORD(v10) + 16);
  }

  v7 = re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::allocEntry(a1, v10, v9);
  *(v7 + 8) = *a2;
  result = re::AssetHandle::AssetHandle((v7 + 16), a3);
  ++*(a1 + 40);
  return result;
}

void **re::ecs2::createPlane(void **result, float *a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (result)
  {
    v3 = result;
    v4 = re::MediaDefaults::logEnabled(result);
    if (v4)
    {
      v16 = *re::mediaLogObjects(v4);
      if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
      {
        v17 = *a2;
        v18 = a2[1];
        v19 = a2[2];
        v20 = a2[3];
        v21 = a2[4];
        v22 = *(a2 + 20);
        v23 = *(a2 + 21);
        v24 = a2[6];
        v25 = *(a2 + 28);
        v26 = 134220032;
        v27 = v17;
        v28 = 2048;
        v29 = v18;
        v30 = 2048;
        v31 = v19;
        v32 = 2048;
        v33 = v20;
        v34 = 2048;
        v35 = v21;
        v36 = 1024;
        v37 = v22;
        v38 = 1024;
        v39 = v23;
        v40 = 2048;
        v41 = v24;
        v42 = 1024;
        v43 = v25;
        _os_log_impl(&dword_1E1C61000, v16, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] createPlane: width: %f, height: %f, flatDepth: %f, cornerRadius: %f,theta: %f, positiveWrap: %d, enableSpecularAndFresnel: %d, bevelFrontDepth: %fcustomUV: %d", &v26, 0x50u);
      }
    }

    v5 = re::ecs2::EntityComponentCollection::getOrAdd((v3 + 6), re::ecs2::ComponentImpl<re::ecs2::UILayerGeometryComponent,(re::ecs2::ComponentTypeBase::ComponentCategory)0,(re::ecs2::ComponentTypeBase::Flags)2>::s_componentType);
    v7 = v5;
    v8 = *a2;
    *(v5 + 48) = *a2;
    *(v5 + 44) = a2[2];
    *(v5 + 40) = 0;
    *&v9 = a2[3];
    if (*&v9 == 0.0 || *&v9 > 0.0 && ((*&v6 = *&v9 + *&v9, *&v8 > (*&v9 + *&v9)) ? (v10 = a2[1] <= *&v6) : (v10 = 1), !v10))
    {
      *(v5 + 56) = LODWORD(v9);
      *(v5 + 32) = 16;
    }

    *(v5 + 26) = 64;
    *(v5 + 64) = a2[4];
    if (*(a2 + 21))
    {
      v11 = 1;
    }

    else
    {
      v11 = 0;
      *(v5 + 36) = 0;
    }

    *(v5 + 60) = v11;
    if ((atomic_load_explicit(&qword_1EE1A9948, memory_order_acquire) & 1) == 0)
    {
      v5 = __cxa_guard_acquire(&qword_1EE1A9948);
      if (v5)
      {
        _MergedGlobals_277 = *(a2 + 6);
        __cxa_guard_release(&qword_1EE1A9948);
      }
    }

    if (*(a2 + 28) == 1)
    {
      if (*(a2 + 21) == 1)
      {
        v7[13].i32[0] = _MergedGlobals_277;
      }

      v7[12] = vdup_lane_s32(*(a2 + 8), 0);
      v7[11] = 1056964608;
      v7[9] = *(a2 + 12);
      v7[10] = *(a2 + 10);
      v12 = re::MediaDefaults::logEnabled(v5);
      if (v12)
      {
        v14 = *re::mediaLogObjects(v12);
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = a2[8];
          v26 = 134217984;
          v27 = v15;
          _os_log_impl(&dword_1E1C61000, v14, OS_LOG_TYPE_DEFAULT, "[ScreenAnimation] createPlane with uvScale: %f", &v26, 0xCu);
        }
      }
    }

    else
    {
      v13 = 1056964608;
      *v7[11].i8 = xmmword_1E30747B0;
      if (*(a2 + 21) == 1)
      {
        LODWORD(v13) = _MergedGlobals_277;
        v7[13].i32[0] = _MergedGlobals_277;
      }

      else
      {
        v7[13].i32[0] = 0;
      }
    }

    re::ecs2::UILayerGeometryComponent::buildGeomMesh(v7, *&v13, v9, v6);
    return re::ecs2::Component::markDirty(v7);
  }

  return result;
}

uint64_t re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::allocEntry(uint64_t a1, unsigned int a2, unint64_t a3)
{
  v5 = *(a1 + 36);
  if (v5 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 32);
    v6 = v5;
    if (v5 == *(a1 + 24))
    {
      re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::setCapacity(a1, 2 * *(a1 + 28));
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

void re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
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
      re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::move(a1, v9);
      re::HashTable<unsigned long long,re::internal::PushLoadManager::PushLoadedAsset,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::deinit(v9);
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

void *re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::move(void *result, uint64_t a2)
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
        result = re::HashTable<re::CollisionShape const*,re::AssetHandle,re::Hash<re::CollisionShape const*>,re::EqualTo<re::CollisionShape const*>,true,false>::allocEntry(v4, *(v7 + v5 + 40) % *(v4 + 6));
        result[1] = *(*(a2 + 16) + v5 + 8);
        v8 = (*(a2 + 16) + v5);
        result[3] = 0;
        result[4] = 0;
        result[2] = 0;
        result[3] = v8[3];
        v8[3] = 0;
        v9 = result[2];
        result[2] = 0;
        result[2] = v8[2];
        v8[2] = v9;
        v10 = result[4];
        result[4] = v8[4];
        v8[4] = v10;
        v2 = *(a2 + 32);
      }

      v5 += 48;
    }
  }

  return result;
}

void *re::ecs2::allocInfo_UILayerGeometryService(re::ecs2 *this)
{
  if ((atomic_load_explicit(&_MergedGlobals_278, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_278))
  {
    re::IntrospectionStructure::IntrospectionStructure(&unk_1EE1A9958, "UILayerGeometryService");
    __cxa_guard_release(&_MergedGlobals_278);
  }

  return &unk_1EE1A9958;
}

void re::ecs2::initInfo_UILayerGeometryService(re::ecs2 *this, re::IntrospectionBase *a2)
{
  v6[0] = 0x2FEC9E4C8A81EA0CLL;
  v6[1] = "UILayerGeometryService";
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
  *(this + 8) = &re::ecs2::initInfo_UILayerGeometryService(re::IntrospectionBase *)::structureAttributes;
  *(this + 16) = 0;
  *(this + 17) = 0;
  *(this + 15) = 0;
  re::internal::prepare(this, v4);
  v5 = v7;
}

double re::ShadowManager::ShadowManager(re::ShadowManager *this)
{
  *this = &unk_1F5CF19E0;
  *(this + 4) = 1065353216;
  *(this + 20) = xmmword_1E3072DE0;
  *(this + 9) = 3;
  *(this + 40) = xmmword_1E3072DF0;
  *(this + 28) = 0;
  *(this + 58) = 1;
  *(this + 4) = xmmword_1E3072E00;
  *(this + 20) = 1061158912;
  *(this + 84) = 1;
  *(this + 88) = xmmword_1E3072E10;
  *(this + 104) = xmmword_1E3072E20;
  *(this + 15) = 0x3DCCCCCD41F00000;
  *(this + 32) = 1097877340;
  *(this + 132) = 1;
  *(this + 9) = xmmword_1E30476B0;
  *(this + 160) = 1;
  *(this + 22) = 0x3F8000003F2D42C4;
  *(this + 23) = 0x193F800000;
  *(this + 12) = xmmword_1E3072E30;
  *(this + 26) = 1056964608;
  *(this + 54) = 0x40000000;
  *(this + 110) = 256;
  *(this + 28) = 0x3F80000000000000;
  *(this + 66) = 0;
  result = 0.0;
  *(this + 248) = 0u;
  *(this + 232) = 0u;
  *(this + 268) = 0x7FFFFFFFLL;
  *(this + 280) = 0u;
  *(this + 296) = 0u;
  *(this + 78) = 0;
  *(this + 316) = 0x7FFFFFFFLL;
  *(this + 41) = 1;
  *(this + 21) = 0u;
  *(this + 22) = 0u;
  *(this + 23) = 0u;
  *(this + 24) = 0u;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 27) = 0u;
  *(this + 28) = 0u;
  *(this + 116) = 0;
  *(this + 468) = 0x7FFFFFFFLL;
  *(this + 60) = 0;
  return result;
}

void re::ShadowManager::~ShadowManager(re::ShadowManager *this)
{
  *this = &unk_1F5CF19E0;

  v2 = *(this + 54);
  if (v2)
  {
    v3 = (this + 432);
    v4 = *(this + 116);
    if (v4)
    {
      v5 = 0;
      for (i = 0; i < v4; ++i)
      {
        v7 = *(this + 56);
        v8 = *(v7 + v5);
        if (v8 < 0)
        {
          v9 = v7 + v5;
          *(v7 + v5) = v8 & 0x7FFFFFFF;
          v10 = *(v7 + v5 + 16);
          if (v10)
          {

            *(v9 + 16) = 0;
            v4 = *(this + 116);
          }
        }

        v5 += 32;
      }

      v2 = *v3;
    }

    (*(*v2 + 40))(v2, *(this + 55));
    *(this + 116) = 0;
    *v3 = 0u;
    *(this + 28) = 0u;
    *(this + 468) = 0x7FFFFFFFLL;
  }

  re::AssetHandle::~AssetHandle((this + 408));
  re::AssetHandle::~AssetHandle((this + 384));
  re::AssetHandle::~AssetHandle((this + 360));
  re::AssetHandle::~AssetHandle((this + 336));
  re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(this + 35);
  re::HashSetBase<re::RigGraphSystem::BuildTask *,re::RigGraphSystem::BuildTask *,re::internal::ValueAsKey<re::RigGraphSystem::BuildTask *>,re::Hash<re::RigGraphSystem::BuildTask *>,re::EqualTo<re::RigGraphSystem::BuildTask *>,true,false>::deinit(this + 29);
}

{
  re::ShadowManager::~ShadowManager(this);

  JUMPOUT(0x1E6906520);
}

void re::ShadowManager::getShadowParams(re::ShadowManager *this@<X0>, const char *a2@<X1>, uint64_t a3@<X8>)
{
  v4 = *(this + 12);
  *(a3 + 160) = *(this + 11);
  *(a3 + 176) = v4;
  *(a3 + 192) = *(this + 13);
  v5 = *(this + 8);
  *(a3 + 96) = *(this + 7);
  *(a3 + 112) = v5;
  v6 = *(this + 10);
  *(a3 + 128) = *(this + 9);
  *(a3 + 144) = v6;
  v7 = *(this + 4);
  *(a3 + 32) = *(this + 3);
  *(a3 + 48) = v7;
  v8 = *(this + 6);
  *(a3 + 64) = *(this + 5);
  *(a3 + 80) = v8;
  v9 = *(this + 2);
  *a3 = *(this + 1);
  *(a3 + 16) = v9;
  if ((atomic_load_explicit(&qword_1EE1A99F0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1EE1A99F0))
  {
    re::Defaults::BOOLValue("MeshShadow.EnableTweaking", a2, &v52);
    if (v52)
    {
      v51 = v53;
    }

    else
    {
      v51 = 0;
    }

    _MergedGlobals_279 = v51;
    __cxa_guard_release(&qword_1EE1A99F0);
  }

  if (_MergedGlobals_279 == 1)
  {
    re::Defaults::BOOLValue("MeshShadow.ForceShadowUpdate", a2, &v52);
    if (v52 == 1)
    {
      *(a3 + 40) = v53;
    }

    re::Defaults::uintValue("MeshShadow.TileResolution", v10, &v52);
    if (v52 == 1)
    {
      *(a3 + 4) = v54;
    }

    re::Defaults::floatValue("MeshShadow.BlurSizeScale", v11, &v52);
    if (v52 == 1)
    {
      *a3 = v54;
    }

    re::Defaults::floatValue("MeshShadow.IntensityScale", v12, &v52);
    if (v52 == 1)
    {
      *(a3 + 60) = v54;
    }

    re::Defaults::floatValue("MeshShadow.OpacityCurveFactor", v13, &v52);
    if (v52 == 1)
    {
      *(a3 + 64) = v54;
    }

    re::Defaults::floatValue("MeshShadow.BoundsDecayRate", v14, &v52);
    if (v52 == 1)
    {
      *(a3 + 48) = v54;
    }

    re::Defaults::floatValue("MeshShadow.BelowReceiverDecayRate", v15, &v52);
    if (v52 == 1)
    {
      *(a3 + 56) = v54;
    }

    re::Defaults::floatValue("MeshShadow.ReceiverDecayRate", v16, &v52);
    if (v52 == 1)
    {
      *(a3 + 52) = v54;
    }

    re::Defaults::BOOLValue("MeshShadow.EnableNearFade", v17, &v52);
    if (v52 == 1)
    {
      *(a3 + 68) = v53;
    }

    re::Defaults::floatValue("MeshShadow.NearFadeStart", v18, &v52);
    if (v52 == 1)
    {
      *(a3 + 72) = v54;
    }

    re::Defaults::floatValue("MeshShadow.NearFadeEnd", v19, &v52);
    if (v52 == 1)
    {
      *(a3 + 76) = v54;
    }

    re::Defaults::floatValue("MeshShadow.NearFadeNormalizationDistance", v20, &v52);
    if (v52 == 1)
    {
      *(a3 + 80) = v54;
    }

    re::Defaults::floatValue("MeshShadow.FalloffBias", v21, &v52);
    if (v52 == 1)
    {
      *(a3 + 84) = v54;
    }

    re::Defaults::floatValue("MeshShadow.DepthErrorMultiplier", v22, &v52);
    if (v52 == 1)
    {
      *(a3 + 88) = v54;
    }

    re::Defaults::floatValue("MeshShadow.OffsetMeshShadow", v23, &v52);
    if (v52 == 1)
    {
      *(a3 + 96) = v54;
    }

    re::Defaults::BOOLValue("MeshShadow.DebugClearShadowTextureArray", v24, &v52);
    if (v52 == 1)
    {
      *(a3 + 41) = v53;
    }

    re::Defaults::floatValue("MeshShadow.NormalThresholdForFlatShadow", v25, &v52);
    if (v52 == 1)
    {
      *(a3 + 104) = v54;
    }

    re::Defaults::floatValue("MeshShadow.FadeRangeMultiplier", v26, &v52);
    if (v52 == 1)
    {
      *(a3 + 108) = v54;
    }

    re::Defaults::floatValue("MeshShadow.MaxMipDistance", v27, &v52);
    if (v52 == 1)
    {
      *(a3 + 92) = v54;
    }

    re::Defaults::uintValue("MeshShadow.NumMips", v28, &v52);
    if (v52 == 1)
    {
      *(a3 + 16) = v54;
    }

    re::Defaults::uintValue("MeshShadow.MinContentWidth", v29, &v52);
    if (v52 == 1)
    {
      *(a3 + 12) = v54;
    }

    re::Defaults::uintValue("MeshShadow.MinContentWidthUI", v30, &v52);
    if (v52 == 1)
    {
      *(a3 + 20) = v54;
    }

    re::Defaults::floatValue("MeshShadow.MinBlurRadiusInWorldSpace", v31, &v52);
    if (v52 == 1)
    {
      *(a3 + 28) = v54;
    }

    re::Defaults::floatValue("MeshShadow.MinZFar", v32, &v52);
    if (v52 == 1)
    {
      *(a3 + 32) = v54;
    }

    re::Defaults::floatValue("MeshShadow.MaxCasterBias", v33, &v52);
    if (v52 == 1)
    {
      *(a3 + 36) = v54;
    }

    re::Defaults::intValue("MeshShadow.PlaneProxy.Steps", v34, &v52);
    if (v52 == 1)
    {
      *(a3 + 172) = v54;
    }

    re::Defaults::BOOLValue("MeshShadow.PlaneProxy.UseCylindricalProxy", v35, &v52);
    if (v52 == 1)
    {
      *(a3 + 205) = v53;
    }

    re::Defaults::BOOLValue("MeshShadow.PlaneProxy.RegenerateMesh", v36, &v52);
    if (v52 == 1)
    {
      *(a3 + 204) = v53;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.DepthRatio", v37, &v52);
    if (v52 == 1)
    {
      *(a3 + 160) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.WidthRatio", v38, &v52);
    if (v52 == 1)
    {
      *(a3 + 164) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.CurveFactor", v39, &v52);
    if (v52 == 1)
    {
      *(a3 + 200) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.zTop", v40, &v52);
    if (v52 == 1)
    {
      *(a3 + 176) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.zBottom", v41, &v52);
    if (v52 == 1)
    {
      *(a3 + 180) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.xTop", v42, &v52);
    if (v52 == 1)
    {
      *(a3 + 184) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.xBottom", v43, &v52);
    if (v52 == 1)
    {
      *(a3 + 188) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.yTop", v44, &v52);
    if (v52 == 1)
    {
      *(a3 + 192) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.yBottom", v45, &v52);
    if (v52 == 1)
    {
      *(a3 + 196) = v54;
    }

    re::Defaults::floatValue("MeshShadow.PlaneProxy.TiltFadeOpacityFalloffExp", v46, &v52);
    if (v52 == 1)
    {
      *(a3 + 112) = v54;
    }

    re::Defaults::BOOLValue("MeshShadow.PlaneProxy.EnablePlaneProxyTiltFade", v47, &v52);
    if (v52 == 1)
    {
      *(a3 + 116) = v53;
    }
  }

  v48 = *(a3 + 4) + (21 << (*(a3 + 16) - 1)) - 1;
  v49 = v48 | (v48 >> 1) | ((v48 | (v48 >> 1)) >> 2);
  v50 = v49 | (v49 >> 4) | ((v49 | (v49 >> 4)) >> 8);
  *(a3 + 8) = (v50 | HIWORD(v50)) + 1;
}

float re::ShadowManager::getClusterData@<S0>(re::ShadowManager *this@<X0>, uint64_t a2@<X8>)
{
  *a2 = *(this + 28);
  re::HashSetBase<unsigned long long,unsigned long long,re::internal::ValueAsKey<unsigned long long>,re::Hash<unsigned long long>,re::EqualTo<unsigned long long>,true,false>::HashSetBase(a2 + 8, this + 232);
  *(a2 + 56) = 0u;
  *(a2 + 88) = 0;
  *(a2 + 72) = 0u;
  result = NAN;
  *(a2 + 92) = 0x7FFFFFFFLL;
  v5 = *(this + 35);
  if (v5)
  {
    if (*(this + 77) <= 3u)
    {
      v6 = 3;
    }

    else
    {
      v6 = *(this + 77);
    }

    re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(a2 + 56, v5, v6);
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::copy(a2 + 56, this + 280);
  }

  *(a2 + 104) = *(this + 41);
  if (re::ShadowManager::getMutableDeprecatedShadowParams(void)::deprecatedShadowParams == 1)
  {
    result = *&dword_1ECF1C4AC;
    *a2 = dword_1ECF1C4AC;
  }

  if (byte_1ECF1C4B0 == 1)
  {
    result = *&dword_1ECF1C4B4;
    *(a2 + 4) = dword_1ECF1C4B4;
  }

  return result;
}

void re::ShadowManager::transformForShadowProxy(re::ShadowManager *a1@<X0>, float32x2_t *a2@<X1>, float32x4_t *a3@<X2>, uint64_t a4@<X8>)
{
  v11 = *MEMORY[0x1E69E9840];
  re::ShadowManager::getShadowParams(a1, a2, v10);
  if (v10[205] == 1)
  {

    re::internal::shadows::calcCylShadowProxyLocalTransform(a2, a3, a4);
  }

  else
  {
    v7 = re::MeshShadowCasterParams::PlaneProxyParams::calcShadowProxyThicknessInLocalCoord(a2, a3);
    v8 = a2->i32[0];
    v9 = a2->i32[1];
    *a4 = 0u;
    *(a4 + 16) = 0u;
    *(a4 + 32) = 0u;
    *(a4 + 48) = 0u;
    *a4 = v8;
    *(a4 + 20) = v9;
    *(a4 + 40) = v7;
    *(a4 + 60) = 1065353216;
  }
}

void re::ShadowManager::setShadowClusterRootUpdateHandler(uint64_t a1, void *aBlock)
{
  v3 = _Block_copy(aBlock);
  v4 = *(a1 + 480);
  *(a1 + 480) = v3;
}

void re::ShadowManager::clearShadowClusterRootUpdateHandler(re::ShadowManager *this)
{
  v1 = *(this + 60);
  *(this + 60) = 0;
}

id re::ShadowManager::getShadowClusterRootUpdateHandler(const void **this)
{
  v1 = _Block_copy(this[60]);

  return v1;
}

void re::ShadowManager::init(uint64_t a1, uint64_t a2)
{
  v4 = (a1 + 360);
  v5 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v5 + 8))(&v19);
  v6 = *v4;
  *v4 = v19;
  v19 = v6;
  v7 = *(a1 + 376);
  *(a1 + 376) = v20;
  v20 = v7;
  re::AssetHandle::~AssetHandle(&v19);
  v8 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v8 + 8))(&v19);
  v9 = *(a1 + 336);
  *(a1 + 336) = v19;
  v19 = v9;
  v10 = *(a1 + 352);
  *(a1 + 352) = v20;
  v20 = v10;
  re::AssetHandle::~AssetHandle(&v19);
  v11 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v11 + 8))(&v19);
  v12 = *(a1 + 384);
  *(a1 + 384) = v19;
  v19 = v12;
  v13 = *(a1 + 400);
  *(a1 + 400) = v20;
  v20 = v13;
  re::AssetHandle::~AssetHandle(&v19);
  v14 = re::ServiceLocator::service<re::AssetService>(a2);
  (*(*v14 + 8))(&v19);
  v15 = v4[3];
  v4[3] = v19;
  v19 = v15;
  v16 = *(a1 + 424);
  *(a1 + 424) = v20;
  v20 = v16;
  re::AssetHandle::~AssetHandle(&v19);
  re::internal::shadows::initializeMeshShadowDefaults(v17, v18);
}

void re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::copy(uint64_t a1, uint64_t a2)
{
  re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::clear(a1);
  v4 = *(a2 + 28);
  if (*(a1 + 24) < v4)
  {
    re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::setCapacity(a1, v4);
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
        re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(a1, *v8 % *(a1 + 24), *v8, v8 + 16, (v8 + 16));
        v5 = *(a2 + 32);
      }

      v6 += 32;
    }
  }
}

void re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::setCapacity(uint64_t a1, unsigned int a2)
{
  v4 = *a1;
  if (*a1)
  {
    if (a2 && *(a1 + 24) != a2 && *(a1 + 28) <= a2)
    {
      memset(v13, 0, 36);
      *&v13[36] = 0x7FFFFFFFLL;
      re::HashSetBase<re::DirectResourceId,re::DirectResourceId,re::internal::ValueAsKey<re::DirectResourceId>,re::Hash<re::DirectResourceId>,re::EqualTo<re::DirectResourceId>,true,false>::init(v13, v4, a2);
      v5 = *v13;
      *v13 = *a1;
      *a1 = v5;
      v6 = *&v13[16];
      *&v13[16] = *(a1 + 16);
      *(a1 + 16) = v6;
      v8 = *&v13[24];
      *&v13[24] = *(a1 + 24);
      v7 = *&v13[32];
      *(a1 + 24) = v8;
      v9 = v7;
      if (v7)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          if ((*(*&v13[16] + v10 + 8) & 0x80000000) != 0)
          {
            re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(a1, *(*&v13[16] + v10) % *(a1 + 24), *(*&v13[16] + v10), *&v13[16] + v10 + 16, (*&v13[16] + v10 + 16));
            v9 = *&v13[32];
          }

          ++v11;
          v10 += 32;
        }

        while (v11 < v9);
      }

      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::deinit(v13);
    }
  }

  else
  {
    if (a2)
    {
      v12 = a2;
    }

    else
    {
      v12 = 3;
    }
  }
}

uint64_t re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::addAsCopy(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = *(a1 + 36);
  if (v8 == 0x7FFFFFFF)
  {
    v8 = *(a1 + 32);
    v9 = v8;
    if (v8 == *(a1 + 24))
    {
      re::HashSetBase<re::SceneShadowClusterID,re::SceneShadowClusterID,re::internal::ValueAsKey<re::SceneShadowClusterID>,re::Hash<re::SceneShadowClusterID>,re::EqualTo<re::SceneShadowClusterID>,true,false>::setCapacity(a1, (2 * *(a1 + 28)));
      a2 = a3 % *(a1 + 24);
      v9 = *(a1 + 32);
    }

    *(a1 + 32) = v9 + 1;
    v10 = *(a1 + 16);
    v11 = *(v10 + 32 * v8 + 8);
  }

  else
  {
    v10 = *(a1 + 16);
    v11 = *(v10 + 32 * v8 + 8);
    *(a1 + 36) = v11 & 0x7FFFFFFF;
  }

  *(v10 + 32 * v8 + 8) = v11 | 0x80000000;
  *(*(a1 + 16) + 32 * v8 + 8) = *(*(a1 + 16) + 32 * v8 + 8) & 0x80000000 | *(*(a1 + 8) + 4 * a2);
  *(*(a1 + 16) + 32 * v8) = a3;
  *(*(a1 + 16) + 32 * v8 + 16) = *a5;
  *(*(a1 + 8) + 4 * a2) = v8;
  ++*(a1 + 28);
  return v8;
}

uint64_t re::ecs2::CustomDeformerComponent::getInputObjectCount(re::ecs2::CustomDeformerComponent *this, unint64_t a2)
{
  if (*(this + 6) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  return *(*(this + 8) + 120 * a2 + 56);
}

uint64_t re::ecs2::CustomDeformerComponent::getInputObject(re::ecs2::CustomDeformerComponent *this, unint64_t a2, unint64_t a3)
{
  if (*(this + 6) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 8) + 120 * a2;
  if (*(v3 + 56) <= a3)
  {
    goto LABEL_5;
  }

  return **(*(v3 + 72) + 96 * a3 + 48);
}

unint64_t re::ecs2::CustomDeformerComponent::getInputObjectMeshID(re::ecs2::CustomDeformerComponent *this, unint64_t a2, unint64_t a3)
{
  if (*(this + 6) <= a2)
  {
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
LABEL_5:
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  v3 = *(this + 8) + 120 * a2;
  if (*(v3 + 56) <= a3)
  {
    goto LABEL_5;
  }

  return *(v3 + 72) + 96 * a3;
}

void re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationModel(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a1[6];
  if (v10 <= a3)
  {
    do
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add((a1 + 4), &v11);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v16);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v13 + 8);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v11);
      ++v10;
    }

    while (v10 <= a3);
    v10 = a1[6];
  }

  if (v10 <= a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::ecs2::CustomDeformerComponent::CustomDeformerData::addMappedDeformationDataToArray(a2, a4, a5, a1[8] + 120 * a3);
}

_anonymous_namespace_ *re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add(_anonymous_namespace_ *result, uint64_t a2)
{
  v3 = result;
  v4 = *(result + 1);
  v5 = *(result + 2);
  if (v5 >= v4)
  {
    v6 = v5 + 1;
    if (v4 < v5 + 1)
    {
      if (*result)
      {
        v7 = 2 * v4;
        v8 = v4 == 0;
        v9 = 8;
        if (!v8)
        {
          v9 = v7;
        }

        if (v9 <= v6)
        {
          v10 = v6;
        }

        else
        {
          v10 = v9;
        }

        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(result, v10);
      }

      else
      {
        result = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::setCapacity(v3, v6);
        ++*(v3 + 6);
      }
    }

    v5 = *(v3 + 2);
  }

  v11 = *(v3 + 4) + 120 * v5;
  *(v11 + 32) = 0;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  *v11 = 0;
  *(v11 + 24) = 0;
  v12 = *(a2 + 8);
  *v11 = *a2;
  *(v11 + 8) = v12;
  *a2 = 0;
  *(a2 + 8) = 0;
  v13 = *(v11 + 16);
  *(v11 + 16) = *(a2 + 16);
  *(a2 + 16) = v13;
  v14 = *(v11 + 32);
  *(v11 + 32) = *(a2 + 32);
  *(a2 + 32) = v14;
  ++*(a2 + 24);
  ++*(v11 + 24);
  *(v11 + 72) = 0;
  *(v11 + 48) = 0;
  *(v11 + 56) = 0;
  *(v11 + 40) = 0;
  *(v11 + 64) = 0;
  v15 = *(a2 + 48);
  *(v11 + 40) = *(a2 + 40);
  *(v11 + 48) = v15;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  v16 = *(v11 + 56);
  *(v11 + 56) = *(a2 + 56);
  *(a2 + 56) = v16;
  v17 = *(v11 + 72);
  *(v11 + 72) = *(a2 + 72);
  *(a2 + 72) = v17;
  ++*(a2 + 64);
  ++*(v11 + 64);
  *(v11 + 112) = 0;
  *(v11 + 88) = 0;
  *(v11 + 96) = 0;
  *(v11 + 80) = 0;
  *(v11 + 104) = 0;
  v18 = *(a2 + 88);
  *(v11 + 80) = *(a2 + 80);
  *(v11 + 88) = v18;
  *(a2 + 80) = 0;
  *(a2 + 88) = 0;
  v19 = *(v11 + 96);
  *(v11 + 96) = *(a2 + 96);
  *(a2 + 96) = v19;
  v20 = *(v11 + 112);
  *(v11 + 112) = *(a2 + 112);
  *(a2 + 112) = v20;
  ++*(a2 + 104);
  ++*(v11 + 104);
  ++*(v3 + 2);
  ++*(v3 + 6);
  return result;
}

void re::ecs2::CustomDeformerComponent::setCustomDeformerDeformationInput(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5)
{
  v26 = *MEMORY[0x1E69E9840];
  v10 = a1[6];
  if (v10 <= a3)
  {
    do
    {
      v17 = 0;
      memset(v16, 0, sizeof(v16));
      v14 = 0u;
      v15 = 0u;
      v12 = 0u;
      v13 = 0u;
      v11 = 0u;
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add((a1 + 4), &v11);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v16);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v13 + 8);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v11);
      ++v10;
    }

    while (v10 <= a3);
    v10 = a1[6];
  }

  if (v10 <= a3)
  {
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v11 = 0u;
    os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
    v18 = 136315906;
    v19 = "operator[]";
    v20 = 1024;
    v21 = 789;
    v22 = 2048;
    v23 = a3;
    v24 = 2048;
    v25 = v10;
    _os_log_send_and_compose_impl();
    _os_crash_msg();
    __break(1u);
  }

  re::ecs2::CustomDeformerComponent::CustomDeformerData::addMappedDeformationDataToArray(a2, a4, a5, a1[8] + 120 * a3 + 40);
}

void re::ecs2::CustomDeformerComponent::setForceContinuousDeformations(void *a1, unint64_t a2, uint64_t a3, int a4)
{
  v7 = a2;
  v43 = *MEMORY[0x1E69E9840];
  v9 = a1[6];
  if (v9 <= a2)
  {
    do
    {
      v34 = 0;
      memset(v33, 0, sizeof(v33));
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData>::add((a1 + 4), &v28);
      re::DynamicArray<re::MeshDeformationIndex>::deinit(v33);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v30 + 8);
      re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::MappedDeformationData>::deinit(&v28);
      ++v9;
    }

    while (v9 <= v7);
    v9 = a1[6];
  }

  if (v9 <= v7)
  {
    goto LABEL_37;
  }

  v10 = a1[8] + 120 * v7;
  v11 = *(v10 + 96);
  if (!v11)
  {
    goto LABEL_18;
  }

  v9 = 0;
  v7 = 0;
  while (1)
  {
    v4 = *(v10 + 96);
    if (v4 <= v7)
    {
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35 = 136315906;
      v36 = "operator[]";
      v37 = 1024;
      v38 = 789;
      v39 = 2048;
      v40 = v7;
      v41 = 2048;
      v42 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_37:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35 = 136315906;
      v36 = "operator[]";
      v37 = 1024;
      v38 = 789;
      v39 = 2048;
      v40 = v7;
      v41 = 2048;
      v42 = v9;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
LABEL_38:
      v31 = 0u;
      v32 = 0u;
      v29 = 0u;
      v30 = 0u;
      v28 = 0u;
      os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
      v35 = 136315906;
      v36 = "removeStableAt";
      v37 = 1024;
      v38 = 969;
      v39 = 2048;
      v40 = v7;
      v41 = 2048;
      v42 = v4;
      _os_log_send_and_compose_impl();
      _os_crash_msg();
      __break(1u);
    }

    if (re::MeshIdentifierAsset::operator==((*(v10 + 112) + v9), a3))
    {
      break;
    }

    ++v7;
    v9 += 48;
    if (v11 == v7)
    {
      goto LABEL_18;
    }
  }

  v4 = *(v10 + 96);
  if (v4 <= v7)
  {
    goto LABEL_38;
  }

  v12 = *(v10 + 112);
  if (v4 - 1 > v7 && 48 * v4 - 48 != v9)
  {
    v13 = 0;
    v14 = 48 * v4 - v9 - 48;
    v15 = v12 + v9;
    do
    {
      *(v15 + v13) = *(v15 + v13 + 48);
      re::StringID::operator=((v15 + v13 + 8), (v15 + v13 + 56));
      re::StringID::operator=((v15 + v13 + 24), (v15 + v13 + 72));
      *(v12 + v13 + v9 + 40) = *(v12 + v13 + v9 + 88);
      v13 += 48;
    }

    while (v14 != v13);
    v4 = *(v10 + 96);
    v12 = *(v10 + 112);
  }

  v16 = v12 + 48 * v4;
  re::StringID::destroyString((v16 - 24));
  re::StringID::destroyString((v16 - 40));
  --*(v10 + 96);
  ++*(v10 + 104);
  if (a4)
  {
LABEL_18:
    LOBYTE(v28) = *a3;
    re::StringID::StringID((&v28 + 8), (a3 + 8));
    v17 = re::StringID::StringID((&v29 + 8), (a3 + 24));
    BYTE8(v30) = a4;
    v18 = *(v10 + 88);
    v19 = *(v10 + 96);
    if (v19 >= v18)
    {
      v20 = v19 + 1;
      if (v18 < v19 + 1)
      {
        if (*(v10 + 80))
        {
          v21 = 2 * v18;
          v22 = v18 == 0;
          v23 = 8;
          if (!v22)
          {
            v23 = v21;
          }

          if (v23 <= v20)
          {
            v24 = v20;
          }

          else
          {
            v24 = v23;
          }

          v17 = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity((v10 + 80), v24);
        }

        else
        {
          v17 = re::DynamicArray<re::ecs2::CustomDeformerComponent::CustomDeformerData::ForcedContinuousDeformations>::setCapacity((v10 + 80), v20);
          ++*(v10 + 104);
        }
      }

      v19 = *(v10 + 96);
    }

    v25 = *(v10 + 112) + 48 * v19;
    *v25 = v28;
    v26 = BYTE8(v28);
    *(v25 + 8) = *(v25 + 8) & 0xFFFFFFFFFFFFFFFELL | BYTE8(v28) & 1;
    *(v25 + 8) = *(&v28 + 1) & 0xFFFFFFFFFFFFFFFELL | v26 & 1;
    *(v25 + 16) = v29;
    *(&v28 + 1) = 0;
    *&v29 = &str_67;
    v27 = BYTE8(v29);
    *(v25 + 24) = *(v25 + 24) & 0xFFFFFFFFFFFFFFFELL | BYTE8(v29) & 1;
    *(v25 + 24) = *(&v29 + 1) & 0xFFFFFFFFFFFFFFFELL | v27 & 1;
    *(v25 + 32) = v30;
    *(&v29 + 1) = 0;
    *&v30 = &str_67;
    *(v25 + 40) = BYTE8(v30);
    ++*(v10 + 96);
    ++*(v10 + 104);
    if (BYTE8(v29))
    {
      if (BYTE8(v29))
      {
      }
    }

    *(&v29 + 1) = 0;
    *&v30 = &str_67;
    if (BYTE8(v28))
    {
      if (BYTE8(v28))
      {
      }
    }
  }
}

unsigned int *re::ecs2::CustomDeformerComponent::updateDeformerInputData(re::ecs2::CustomDeformerComponent *this, const re::RenderManager *a2, const re::MeshAsset *a3, const re::MeshNameMap *a4)
{
  v70 = *MEMORY[0x1E69E9840];
  v8 = *(*(this + 2) + 200);
  v9 = *(v8 + 256);
  v10 = *(a2 + 18);
  if (v10)
  {
    v11 = (v10 + 8);
  }

  else
  {
    v11 = 0;
  }

  inited = objc_initWeak(location, v11);
  v13 = re::globalAllocators(inited);
  v14 = (*(*v13[2] + 32))(v13[2], 24, 8);
  *(v14 + 1) = v9;
  *(v14 + 2) = 0;
  if (v9)
  {
    if (v9 >= 0x666666666666667)
    {
      goto LABEL_54;
    }

    *(v14 + 2) = v16;
    if (!v16)
    {
LABEL_55:
      re::internal::assertLog(4, v17, "assertion failure: '%s' (%s:line %i) Out of memory.", "m_data", "init", 327);
      _os_crash();
      __break(1u);
    }

    v18 = v9 - 1;
    if (v9 != 1)
    {
      do
      {
        v16[4] = 0;
        v16[1] = 0;
        v16[2] = 0;
        *v16 = 0;
        *(v16 + 6) = 0;
        v16 += 5;
        --v18;
      }

      while (v18);
    }

    v16[4] = 0;
    v16[1] = 0;
    v16[2] = 0;
    *v16 = 0;
    *(v16 + 6) = 0;
  }

  v45 = v8;
  v19 = (v8 + 232);
  v65 = 0uLL;
  *&v66 = 0;
  *(&v66 + 1) = re::globalAllocators(v16)[2];
  *&v67 = 0;
  re::FramePersistentPtr<re::ecs2::CustomDeformerComponent::CustomDeformerInputs,re::FrameManager>::reset(this + 9, location, v14, &v65);
  re::FunctionBase<24ul,void ()(void *)>::destroyCallable(&v65);
  objc_destroyWeak(location);
  location[0] = 0;
  v46 = *(this + 6);
  if (v46)
  {
    v5 = 0;
    do
    {
      v20 = *(this + 6);
      if (v20 <= v5)
      {
        goto LABEL_53;
      }

      v47 = (*(this + 8) + 120 * v5);
      v21 = v47[2];
      v51 = v5 + 1;
      if (v21)
      {
        v22 = v47[4];
        v48 = &v22[12 * v21];
        do
        {
          re::MeshNameMap::meshInstancePartsForIdentifier(a4, v22, &v65);
          *v55 = a3;
          *&v55[8] = a4;
          *&v55[16] = v65;
          v58 = v67;
          v59 = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v55[24], &v65 + 8);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v65 + 8);
          v20 = *&v55[16];
          if (*&v55[16])
          {
            for (i = 0; v20 != i; ++i)
            {
              *&v65 = i;
              v24 = (*(*v59 + 16))(v59, &v65);
              started = re::MeshNameMap::meshPartStartIndexForInstance(a4, v24);
              *&v65 = i;
              v25 = (*(*v59 + 16))(v59, &v65);
              v26 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex(v19, started + WORD2(v25));
              if (v9 > v26)
              {
                v27 = v26;
                v28 = *(this + 10);
                started = *(v28 + 8);
                if (started <= v26)
                {
                  v52 = 0;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v65 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v60 = 136315906;
                  *&v60[4] = "operator[]";
                  *&v60[12] = 1024;
                  *&v60[14] = 468;
                  v61 = 2048;
                  v62 = v27;
                  v63 = 2048;
                  v64 = started;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_48:
                  v52 = 0;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v65 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v60 = 136315906;
                  *&v60[4] = "operator[]";
                  *&v60[12] = 1024;
                  *&v60[14] = 789;
                  v61 = 2048;
                  v62 = v5;
                  v63 = 2048;
                  v64 = v27;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_49:
                  v52 = 0;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v65 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v60 = 136315906;
                  *&v60[4] = "operator[]";
                  *&v60[12] = 1024;
                  *&v60[14] = 468;
                  v61 = 2048;
                  v62 = v27;
                  v63 = 2048;
                  v64 = started;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_50:
                  v52 = 0;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v65 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v60 = 136315906;
                  *&v60[4] = "operator[]";
                  *&v60[12] = 1024;
                  *&v60[14] = 789;
                  v61 = 2048;
                  v62 = v5;
                  v63 = 2048;
                  v64 = v27;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_51:
                  re::internal::assertLog(6, v41, "assertion failure: '%s' (%s:line %i) Index out of range. index = %zu, size = %zu", "index < size()", "operator[]", 671, v27, a4);
                  _os_crash();
                  __break(1u);
LABEL_52:
                  location[1] = 0;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v65 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v55 = 136315906;
                  *&v55[4] = "operator[]";
                  *&v55[12] = 1024;
                  *&v55[14] = 468;
                  *&v55[18] = 2048;
                  *&v55[20] = v27;
                  v56 = 2048;
                  v57 = started;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_53:
                  *v60 = 0;
                  v68 = 0u;
                  v69 = 0u;
                  v66 = 0u;
                  v67 = 0u;
                  v65 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  *v55 = 136315906;
                  *&v55[4] = "operator[]";
                  *&v55[12] = 1024;
                  *&v55[14] = 789;
                  *&v55[18] = 2048;
                  *&v55[20] = v5;
                  v56 = 2048;
                  v57 = v20;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_54:
                  re::internal::assertLog(6, v15, "assertion failure: '%s' (%s:line %i) Size overflow in FixedArray<T>::init(). Element size = %zu, count = %zu", "!overflow", "init", 324, 40, v9);
                  _os_crash();
                  __break(1u);
                  goto LABEL_55;
                }

                started = *(v28 + 16) + 40 * v26;
                v27 = *(started + 16);
                if (v5 >= v27)
                {
                  re::DynamicArray<re::CustomDeformerInputData>::resize(started, v51);
                  v27 = *(started + 16);
                }

                if (v27 <= v5)
                {
                  goto LABEL_48;
                }

                v29 = v22[6];
                if (v29)
                {
                  *(*(started + 32) + 16 * v5) = *v29;
                }
              }
            }
          }

          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v55[24]);
          v22 += 12;
        }

        while (v22 != v48);
      }

      v30 = v47[7];
      if (v30)
      {
        v31 = v47[9];
        v49 = &v31[12 * v30];
        do
        {
          re::MeshNameMap::meshInstancePartsForIdentifier(a4, v31, &v65);
          *v55 = a3;
          *&v55[8] = a4;
          *&v55[16] = v65;
          v58 = v67;
          v59 = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v55[24], &v65 + 8);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v65 + 8);
          v20 = *&v55[16];
          if (*&v55[16])
          {
            for (j = 0; v20 != j; ++j)
            {
              *&v65 = j;
              v33 = (*(*v59 + 16))(v59, &v65);
              started = re::MeshNameMap::meshPartStartIndexForInstance(a4, v33);
              *&v65 = j;
              v34 = (*(*v59 + 16))(v59, &v65);
              v35 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex(v19, started + WORD2(v34));
              if (v9 > v35)
              {
                v27 = v35;
                v36 = *(this + 10);
                started = *(v36 + 8);
                if (started <= v35)
                {
                  goto LABEL_49;
                }

                started = *(v36 + 16) + 40 * v35;
                v27 = *(started + 16);
                if (v5 >= v27)
                {
                  re::DynamicArray<re::CustomDeformerInputData>::resize(started, v51);
                  v27 = *(started + 16);
                }

                if (v27 <= v5)
                {
                  goto LABEL_50;
                }

                v37 = v31[6];
                if (v37)
                {
                  *(*(started + 32) + 16 * v5 + 8) = *v37;
                }
              }
            }
          }

          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v55[24]);
          v31 += 12;
        }

        while (v31 != v49);
      }

      ++v5;
    }

    while (v51 != v46);
  }

  v38 = *(v45 + 392);
  a4 = *(v38 + 88);
  v20 = *(v38 + 96);
  v52 = v19;
  v53 = 11;
  *v60 = v19;
  *&v60[8] = 11;
  *&v60[16] = 0;
  while (1)
  {
    result = re::MeshDeformationRuntimeData::MeshDeformationIteration::end(&v52, &v65);
    if (*&v60[12] == HIDWORD(v65) && *&v60[16] == v66)
    {
      return result;
    }

    v40 = re::MeshDeformationRuntimeData::MeshDeformationIterator::absoluteDeformedMeshPartIndex(v60);
    v27 = v40;
    if (a4 <= v40)
    {
      goto LABEL_51;
    }

    v42 = *(this + 10);
    started = *(v42 + 8);
    if (started <= v40)
    {
      goto LABEL_52;
    }

    v43 = v20 + 168 * v40;
    v44 = *(v42 + 16) + 40 * v40;
    ++*(v43 + 11);
    *(v43 + 112) = v44;
    re::MeshDeformationRuntimeData::MeshDeformationIterator::operator++(v60);
  }
}

void re::DynamicArray<re::CustomDeformerInputData>::resize(uint64_t a1, unint64_t a2)
{
  v4 = *(a1 + 16);
  if (v4 >= a2)
  {
    if (v4 <= a2)
    {
      return;
    }
  }

  else
  {
    if (*(a1 + 8) < a2)
    {
      re::DynamicArray<re::CustomDeformerInputData>::setCapacity(a1, a2);
      v4 = *(a1 + 16);
    }

    if (a2 > v4 && a2 > v4)
    {
      bzero((*(a1 + 32) + 16 * v4), 16 * (a2 - v4));
    }
  }

  *(a1 + 16) = a2;
  ++*(a1 + 24);
}

uint64_t re::ecs2::CustomDeformerComponent::processContinuousUpdateMode(re::ecs2::CustomDeformerComponent *this, const re::MeshAsset *a2, const re::MeshNameMap *a3)
{
  v4 = this;
  v98 = *MEMORY[0x1E69E9840];
  v5 = *(this + 2);
  v73 = 0;
  v74 = 0;
  v75 = 1;
  v76 = 0;
  v77 = 0;
  v6 = *(a3 + 42);
  v61 = v5;
  if (v6)
  {
    v6 = *(*(a3 + 43) + 4 * v6 - 4);
  }

  if ((v6 & 0x3F) != 0)
  {
    v7 = (v6 >> 6) + 1;
  }

  else
  {
    v7 = v6 >> 6;
  }

  v78 = v6;
  *&v93 = 0;
  re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v73, v7, &v93);
  v63 = *(v4 + 6);
  if (v63)
  {
    v8 = 0;
    v62 = v4;
    while (1)
    {
      v9 = *(v4 + 6);
      if (v9 <= v8)
      {
        v67 = 0;
        v96 = 0u;
        v97 = 0u;
        v94 = 0u;
        v95 = 0u;
        v93 = 0u;
        os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        *v80 = 136315906;
        *&v80[4] = "operator[]";
        *&v80[12] = 1024;
        *&v80[14] = 789;
        *&v80[18] = 2048;
        *&v80[20] = v8;
        v81 = 2048;
        v82 = v9;
        _os_log_send_and_compose_impl();
        _os_crash_msg();
        __break(1u);
      }

      v10 = *(v4 + 8);
      v67 = 0;
      v68 = 0;
      v69 = 1;
      v70 = 0;
      v71 = 0;
      v11 = *(a3 + 42);
      if (v11)
      {
        v11 = *(*(a3 + 43) + 4 * v11 - 4);
      }

      if ((v11 & 0x3F) != 0)
      {
        v12 = (v11 >> 6) + 1;
      }

      else
      {
        v12 = v11 >> 6;
      }

      v72 = v11;
      *&v93 = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v67, v12, &v93);
      v64 = v8;
      v65 = v10 + 120 * v8;
      v13 = *(v65 + 96);
      if (v13)
      {
        v14 = *(v65 + 112);
        v15 = v14 + 48 * v13;
        do
        {
          re::MeshNameMap::meshInstancePartsForIdentifier(a3, v14, &v93);
          *v80 = a2;
          *&v80[8] = a3;
          *&v80[16] = v93;
          v83 = v95;
          v84 = 0;
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::operator=<24ul>(&v80[24], &v93 + 8);
          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v93 + 8);
          v16 = *&v80[16];
          if (*&v80[16])
          {
            for (i = 0; v16 != i; ++i)
            {
              *&v93 = i;
              v18 = (*(*v84 + 16))(v84, &v93);
              started = re::MeshNameMap::meshPartStartIndexForInstance(a3, v18);
              *&v93 = i;
              v20 = (*(*v84 + 16))(v84, &v93);
              v21 = 1 << (started + BYTE4(v20));
              v22 = (started + WORD2(v20)) >> 6;
              v23 = v68;
              if (*(v14 + 40) == 1)
              {
                if (v68 <= v22)
                {
                  v79 = 0;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v93 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v85 = 136315906;
                  v86 = "operator[]";
                  v87 = 1024;
                  v88 = 858;
                  v89 = 2048;
                  v90 = v22;
                  v91 = 2048;
                  v92 = v23;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_75:
                  v79 = 0;
                  v96 = 0u;
                  v97 = 0u;
                  v94 = 0u;
                  v95 = 0u;
                  v93 = 0u;
                  os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
                  v85 = 136315906;
                  v86 = "operator[]";
                  v87 = 1024;
                  v88 = 858;
                  v89 = 2048;
                  v90 = v22;
                  v91 = 2048;
                  v92 = v23;
                  _os_log_send_and_compose_impl();
                  _os_crash_msg();
                  __break(1u);
LABEL_76:
                  if (v41)
                  {
                    v45 = 0;
                    v46 = 8 * v41;
                    v47 = v42;
                    do
                    {
                      v48 = *v47++;
                      v45 |= v48;
                      v46 -= 8;
                    }

                    while (v46);
                    if (v45)
                    {
                      goto LABEL_80;
                    }
                  }

LABEL_85:
                  v56 = 0;
                  goto LABEL_92;
                }

                if (v69)
                {
                  v24 = &v70;
                }

                else
                {
                  v24 = v71;
                }

                v25 = v24[v22] | v21;
              }

              else
              {
                if (v68 <= v22)
                {
                  goto LABEL_75;
                }

                if (v69)
                {
                  v24 = &v70;
                }

                else
                {
                  v24 = v71;
                }

                v25 = v24[v22] & ~v21;
              }

              v24[v22] = v25;
            }
          }

          re::FunctionBase<24ul,re::MeshInstanceAndPartIndex ()(unsigned long)>::destroyCallable(&v80[24]);
          v14 += 48;
        }

        while (v14 != v15);
      }

      v26 = v68;
      v27 = v71;
      if (v69)
      {
        v27 = &v70;
      }

      if (v68 >= 0xB)
      {
        break;
      }

      v29 = v64;
      if (v68)
      {
        v30 = 0;
        v31 = 8 * v68;
        do
        {
          v32 = *v27++;
          v30 |= v32;
          v31 -= 8;
        }

        while (v31);
        if (v30)
        {
          goto LABEL_42;
        }
      }

LABEL_59:
      v38 = *(v65 + 96);
      *(v65 + 96) = 0;
      if (v38)
      {
        v39 = 48 * v38;
        v40 = (*(v65 + 112) + 24);
        do
        {
          re::StringID::destroyString(v40);
          re::StringID::destroyString((v40 - 16));
          v40 = (v40 + 48);
          v39 -= 48;
        }

        while (v39);
      }

      ++*(v65 + 104);
      v4 = v62;
LABEL_63:
      if (v67 && (v69 & 1) == 0)
      {
        (*(*v67 + 40))();
      }

      v8 = v29 + 1;
      if (v8 == v63)
      {
        goto LABEL_67;
      }
    }

    v28 = 8 * v68;
    v29 = v64;
    while (!*v27)
    {
      ++v27;
      v28 -= 8;
      if (!v28)
      {
        goto LABEL_59;
      }
    }

LABEL_42:
    v4 = v62;
    if (v72 > v78)
    {
      if ((v72 & 0x3F) != 0)
      {
        v33 = (v72 >> 6) + 1;
      }

      else
      {
        v33 = v72 >> 6;
      }

      v78 = v72;
      *&v93 = 0;
      re::DynamicOverflowArray<unsigned long long,3ul>::resize(&v73, v33, &v93);
      v26 = v68;
    }

    if (v26 >= v74)
    {
      v26 = v74;
    }

    if (v26)
    {
      for (j = 0; j != v26; ++j)
      {
        if (v69)
        {
          v35 = &v70;
        }

        else
        {
          v35 = v71;
        }

        v36 = v35[j];
        if (v75)
        {
          v37 = &v76;
        }

        else
        {
          v37 = v77;
        }

        v37[j] |= v36;
      }
    }

    goto LABEL_63;
  }

LABEL_67:
  v41 = v74;
  v42 = v77;
  if (v75)
  {
    v42 = &v76;
  }

  if (v74 < 0xB)
  {
    goto LABEL_76;
  }

  v43 = 8 * v74;
  v44 = v42;
  while (!*v44)
  {
    ++v44;
    v43 -= 8;
    if (!v43)
    {
      goto LABEL_85;
    }
  }

LABEL_80:
  if ((v41 & 0x3FFFFFFFFFFFFFFLL) != 0)
  {
    v49 = 0;
    v50 = *(v61 + 200);
    v51 = *(v50 + 392);
    v53 = *(v51 + 88);
    v52 = *(v51 + 96);
    while (1)
    {
      v55 = *v42++;
      v54 = v55;
      if (v55)
      {
        break;
      }

      v49 -= 64;
      if (!--v41)
      {
        goto LABEL_91;
      }
    }

    v57 = __clz(__rbit64(v54));
    if (v57 + 1 != v49)
    {
      FirstBitSet = v57 - v49;
      do
      {
        v59 = re::MeshDeformationRuntimeData::absoluteDeformedMeshPartIndex((v50 + 232), FirstBitSet);
        if (v53 > v59)
        {
          ++*(v52 + 168 * v59 + 11);
        }

        FirstBitSet = re::DynamicBitset<unsigned long long,64ul>::findFirstBitSet(&v73, FirstBitSet + 1);
      }

      while (FirstBitSet != -1);
    }
  }

LABEL_91:
  v56 = 1;
LABEL_92:
  if (v73 && (v75 & 1) == 0)
  {
    (*(*v73 + 40))(v73, v77);
  }

  return v56;
}